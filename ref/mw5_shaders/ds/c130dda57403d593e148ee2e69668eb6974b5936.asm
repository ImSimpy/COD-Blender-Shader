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
; shader hash: 1898c82df305f037efd73039ce9e6c53
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
;                                   texture     f32          2d      T0      t0,space4unbounded
;                                   texture     f32          2d      T1     t68,space2     1
;                                   texture     u32          2d      T2     t64,space2     1
;                                   texture    byte         r/o      T3     t38,space1     1
;                                   texture    byte         r/o      T4     t39,space1     1
;                                   texture    byte         r/o      T5     t40,space1     1
;                                   texture    byte         r/o      T6     t41,space1     1
;                                   texture    byte         r/o      T7     t42,space1     1
;                                   texture    byte         r/o      T8     t36,space1     1
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
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 64, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call float @dx.op.domainLocation.f32(i32 105, i8 0)  ; DomainLocation(component)
  %14 = call float @dx.op.domainLocation.f32(i32 105, i8 1)  ; DomainLocation(component)
  %15 = call float @dx.op.domainLocation.f32(i32 105, i8 2)  ; DomainLocation(component)
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
  %28 = alloca [4 x float], align 4
  %29 = alloca [4 x float], align 4
  %30 = alloca [4 x float], align 4
  %31 = alloca [4 x float], align 4
  %32 = alloca [4 x float], align 4
  %33 = alloca [4 x float], align 4
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = fmul fast float %34, %13
  %37 = fmul fast float %35, %13
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = fmul fast float %38, %14
  %41 = fmul fast float %39, %14
  %42 = fadd fast float %40, %36
  %43 = fadd fast float %41, %37
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = fmul fast float %44, %15
  %47 = fmul fast float %45, %15
  %48 = fadd fast float %42, %46
  %49 = fadd fast float %43, %47
  %50 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.i32 %50, 0
  %52 = mul i32 %51, 204
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %56 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.i32 %56, 0
  %58 = extractvalue %dx.types.CBufRet.i32 %56, 1
  %59 = bitcast float %54 to i32
  %60 = bitcast float %55 to i32
  %61 = sub i32 %57, %59
  %62 = sub i32 %58, %60
  %63 = sitofp i32 %61 to float
  %64 = sitofp i32 %62 to float
  %65 = fmul fast float %63, 0x3F30000000000000
  %66 = fmul fast float %64, 0x3F30000000000000
  %67 = fadd fast float %65, %48
  %68 = fadd fast float %66, %49
  %69 = add i32 %52, 64
  %70 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %69, i32 undef)  ; BufferLoad(srv,index,wot)
  %71 = extractvalue %dx.types.ResRet.i32 %70, 0
  %72 = bitcast i32 %71 to float
  %73 = extractvalue %dx.types.ResRet.i32 %70, 1
  %74 = bitcast i32 %73 to float
  %75 = extractvalue %dx.types.ResRet.i32 %70, 2
  %76 = bitcast i32 %75 to float
  %77 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float 1.000000e+00, float %72, float %74, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %78 = add i32 %52, 80
  %79 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %78, i32 undef)  ; BufferLoad(srv,index,wot)
  %80 = extractvalue %dx.types.ResRet.i32 %79, 3
  %81 = bitcast i32 %80 to float
  %82 = add i32 %52, 96
  %83 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %82, i32 undef)  ; BufferLoad(srv,index,wot)
  %84 = extractvalue %dx.types.ResRet.i32 %83, 0
  %85 = bitcast i32 %84 to float
  %86 = extractvalue %dx.types.ResRet.i32 %83, 1
  %87 = bitcast i32 %86 to float
  %88 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float 1.000000e+00, float %81, float %85, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %89 = add i32 %52, 176
  %90 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %89, i32 undef)  ; BufferLoad(srv,index,wot)
  %91 = extractvalue %dx.types.ResRet.i32 %90, 2
  %92 = lshr i32 %91, 24
  %93 = and i32 %92, 7
  %94 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.i32 %94, 3
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %111, !dx.controlflow.hints !47

; <label>:97                                      ; preds = %0
  %98 = add nuw nsw i32 %93, 282
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %98)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %102 = fdiv fast float 5.000000e-01, %100
  %103 = fmul fast float %102, 2.000000e+00
  %104 = fsub fast float 1.000000e+00, %103
  %105 = fmul fast float %104, %77
  %106 = fmul fast float %104, %88
  %107 = fadd fast float %105, %102
  %108 = fadd fast float %106, %102
  %109 = fmul fast float %107, %101
  %110 = fmul fast float %108, %101
  br label %111

; <label>:111                                     ; preds = %97, %0
  %112 = phi float [ %109, %97 ], [ %77, %0 ]
  %113 = phi float [ %110, %97 ], [ %88, %0 ]
  %114 = add i32 %52, 160
  %115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %114, i32 undef)  ; BufferLoad(srv,index,wot)
  %116 = extractvalue %dx.types.ResRet.i32 %115, 1
  %117 = bitcast i32 %116 to float
  %118 = extractvalue %dx.types.ResRet.i32 %115, 2
  %119 = bitcast i32 %118 to float
  %120 = extractvalue %dx.types.ResRet.i32 %115, 3
  %121 = bitcast i32 %120 to float
  %122 = extractvalue %dx.types.ResRet.i32 %90, 0
  %123 = bitcast i32 %122 to float
  br i1 %96, label %448, label %124, !dx.controlflow.hints !48

; <label>:124                                     ; preds = %111
  %125 = add i32 %52, 128
  %126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.i32 %126, 1
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = fadd fast float %129, %67
  %132 = fadd fast float %130, %68
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 3
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.i32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.i32 %141, 1
  %144 = extractvalue %dx.types.CBufRet.i32 %141, 2
  %145 = extractvalue %dx.types.CBufRet.i32 %141, 3
  %146 = mul i32 %144, %144
  %147 = fadd fast float %134, 0xBF847AE140000000
  %148 = fadd fast float %135, 0xBF847AE140000000
  %149 = fsub fast float %131, %137
  %150 = fsub fast float %132, %138
  %151 = call float @dx.op.binary.f32(i32 35, float %149, float 0.000000e+00)  ; FMax(a,b)
  %152 = call float @dx.op.binary.f32(i32 35, float %150, float 0.000000e+00)  ; FMax(a,b)
  %153 = call float @dx.op.binary.f32(i32 36, float %151, float %147)  ; FMin(a,b)
  %154 = call float @dx.op.binary.f32(i32 36, float %152, float %148)  ; FMin(a,b)
  %155 = fdiv fast float %153, %139
  %156 = fdiv fast float %154, %140
  %157 = fptoui float %155 to i32
  %158 = fptoui float %156 to i32
  %159 = mul i32 %158, %142
  %160 = add i32 %159, %157
  %161 = lshr i32 %160, 1
  %162 = shl i32 %161, 2
  %163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %162, i32 undef)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.i32 %163, 0
  %165 = shl i32 %160, 4
  %166 = and i32 %165, 16
  %167 = lshr i32 %164, %166
  %168 = and i32 %167, 255
  %169 = lshr i32 %167, 8
  %170 = and i32 %169, 31
  %171 = shl i32 1, %170
  %172 = uitofp i32 %171 to float
  %173 = fmul fast float %172, %153
  %174 = fdiv fast float %173, %134
  %175 = fmul fast float %172, %154
  %176 = fdiv fast float %175, %135
  %177 = call float @dx.op.unary.f32(i32 22, float %174)  ; Frc(value)
  %178 = call float @dx.op.unary.f32(i32 22, float %176)  ; Frc(value)
  %179 = uitofp i32 %143 to float
  %180 = fmul fast float %177, %179
  %181 = fmul fast float %178, %179
  %182 = uitofp i32 %145 to float
  %183 = fadd fast float %180, %182
  %184 = fadd fast float %181, %182
  %185 = mul i32 %146, %168
  %186 = fadd fast float %183, -1.000000e+00
  %187 = fadd fast float %184, -1.000000e+00
  %188 = call float @dx.op.unary.f32(i32 22, float %186)  ; Frc(value)
  %189 = fptoui float %186 to i32
  %190 = fptoui float %184 to i32
  %191 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 0
  %192 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 0
  store i32 %189, i32* %191, align 4
  store i32 %190, i32* %192, align 4
  %193 = add i32 %189, 1
  %194 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 1
  %195 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 1
  store i32 %193, i32* %194, align 4
  store i32 %190, i32* %195, align 4
  %196 = add i32 %190, 1
  %197 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 2
  %198 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 2
  store i32 %189, i32* %197, align 4
  store i32 %196, i32* %198, align 4
  %199 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 3
  %200 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 3
  store i32 %193, i32* %199, align 4
  store i32 %196, i32* %200, align 4
  %201 = add i32 %144, -1
  br label %202

; <label>:202                                     ; preds = %225, %124
  %203 = phi i32 [ %190, %124 ], [ %229, %225 ]
  %204 = phi i32 [ %189, %124 ], [ %227, %225 ]
  %205 = phi i32 [ 0, %124 ], [ %223, %225 ]
  %206 = call i32 @dx.op.binary.i32(i32 40, i32 %204, i32 %201)  ; UMin(a,b)
  %207 = call i32 @dx.op.binary.i32(i32 40, i32 %203, i32 %201)  ; UMin(a,b)
  %208 = mul i32 %207, %144
  %209 = add i32 %206, %185
  %210 = add i32 %209, %208
  %211 = lshr i32 %210, 1
  %212 = shl i32 %211, 2
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = shl i32 %210, 4
  %216 = and i32 %215, 16
  %217 = lshr i32 %214, %216
  %218 = and i32 %217, 65535
  %219 = uitofp i32 %218 to float
  %220 = fmul fast float %219, 0x3EF0002000000000
  %221 = call float @dx.op.unary.f32(i32 7, float %220)  ; Saturate(value)
  %222 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 %205
  store float %221, float* %222, align 4, !tbaa !49, !noalias !53
  %223 = add nuw nsw i32 %205, 1
  %224 = icmp eq i32 %223, 4
  br i1 %224, label %230, label %225

; <label>:225                                     ; preds = %202
  %226 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 %223
  %227 = load i32, i32* %226, align 4
  %228 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 %223
  %229 = load i32, i32* %228, align 4
  br label %202

; <label>:230                                     ; preds = %202
  %231 = bitcast i32 %127 to float
  %232 = fadd fast float %183, 1.000000e+00
  %233 = fadd fast float %184, 1.000000e+00
  %234 = call float @dx.op.unary.f32(i32 22, float %184)  ; Frc(value)
  %235 = fsub fast float 1.000000e+00, %188
  %236 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 0
  %237 = load float, float* %236, align 4, !tbaa !49, !noalias !53
  %238 = fmul fast float %237, %235
  %239 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 1
  %240 = load float, float* %239, align 4, !tbaa !49, !noalias !53
  %241 = fmul fast float %240, %188
  %242 = fadd fast float %241, %238
  %243 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 2
  %244 = load float, float* %243, align 4, !tbaa !49, !noalias !53
  %245 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 3
  %246 = load float, float* %245, align 4, !tbaa !49, !noalias !53
  %247 = fmul fast float %246, %188
  %248 = fsub fast float 1.000000e+00, %234
  %249 = fmul fast float %242, %248
  %250 = call float @dx.op.unary.f32(i32 22, float %232)  ; Frc(value)
  %251 = fptoui float %232 to i32
  %252 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 0
  %253 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 0
  store i32 %251, i32* %252, align 4
  store i32 %190, i32* %253, align 4
  %254 = add i32 %251, 1
  %255 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 1
  %256 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 1
  store i32 %254, i32* %255, align 4
  store i32 %190, i32* %256, align 4
  %257 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 2
  %258 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 2
  store i32 %251, i32* %257, align 4
  store i32 %196, i32* %258, align 4
  %259 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 3
  %260 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 3
  store i32 %254, i32* %259, align 4
  store i32 %196, i32* %260, align 4
  br label %261

; <label>:261                                     ; preds = %284, %230
  %262 = phi i32 [ %190, %230 ], [ %288, %284 ]
  %263 = phi i32 [ %251, %230 ], [ %286, %284 ]
  %264 = phi i32 [ 0, %230 ], [ %282, %284 ]
  %265 = call i32 @dx.op.binary.i32(i32 40, i32 %263, i32 %201)  ; UMin(a,b)
  %266 = call i32 @dx.op.binary.i32(i32 40, i32 %262, i32 %201)  ; UMin(a,b)
  %267 = mul i32 %266, %144
  %268 = add i32 %265, %185
  %269 = add i32 %268, %267
  %270 = lshr i32 %269, 1
  %271 = shl i32 %270, 2
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = shl i32 %269, 4
  %275 = and i32 %274, 16
  %276 = lshr i32 %273, %275
  %277 = and i32 %276, 65535
  %278 = uitofp i32 %277 to float
  %279 = fmul fast float %278, 0x3EF0002000000000
  %280 = call float @dx.op.unary.f32(i32 7, float %279)  ; Saturate(value)
  %281 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 %264
  store float %280, float* %281, align 4, !tbaa !49, !noalias !53
  %282 = add nuw nsw i32 %264, 1
  %283 = icmp eq i32 %282, 4
  br i1 %283, label %289, label %284

; <label>:284                                     ; preds = %261
  %285 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %282
  %286 = load i32, i32* %285, align 4
  %287 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %282
  %288 = load i32, i32* %287, align 4
  br label %261

; <label>:289                                     ; preds = %261
  %290 = fmul fast float %244, %235
  %291 = fadd fast float %247, %290
  %292 = fmul fast float %291, %234
  %293 = fsub fast float 1.000000e+00, %250
  %294 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 0
  %295 = load float, float* %294, align 4, !tbaa !49, !noalias !53
  %296 = fmul fast float %295, %293
  %297 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 1
  %298 = load float, float* %297, align 4, !tbaa !49, !noalias !53
  %299 = fmul fast float %298, %250
  %300 = fadd fast float %299, %296
  %301 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 2
  %302 = load float, float* %301, align 4, !tbaa !49, !noalias !53
  %303 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 3
  %304 = load float, float* %303, align 4, !tbaa !49, !noalias !53
  %305 = fmul fast float %304, %250
  %306 = fmul fast float %300, %248
  %307 = call float @dx.op.unary.f32(i32 22, float %183)  ; Frc(value)
  %308 = fptoui float %183 to i32
  %309 = fptoui float %187 to i32
  %310 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 0
  %311 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 0
  store i32 %308, i32* %310, align 4
  store i32 %309, i32* %311, align 4
  %312 = add i32 %308, 1
  %313 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 1
  %314 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 1
  store i32 %312, i32* %313, align 4
  store i32 %309, i32* %314, align 4
  %315 = add i32 %309, 1
  %316 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 2
  %317 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 2
  store i32 %308, i32* %316, align 4
  store i32 %315, i32* %317, align 4
  %318 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 3
  %319 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 3
  store i32 %312, i32* %318, align 4
  store i32 %315, i32* %319, align 4
  br label %320

; <label>:320                                     ; preds = %343, %289
  %321 = phi i32 [ %309, %289 ], [ %347, %343 ]
  %322 = phi i32 [ %308, %289 ], [ %345, %343 ]
  %323 = phi i32 [ 0, %289 ], [ %341, %343 ]
  %324 = call i32 @dx.op.binary.i32(i32 40, i32 %322, i32 %201)  ; UMin(a,b)
  %325 = call i32 @dx.op.binary.i32(i32 40, i32 %321, i32 %201)  ; UMin(a,b)
  %326 = mul i32 %325, %144
  %327 = add i32 %324, %185
  %328 = add i32 %327, %326
  %329 = lshr i32 %328, 1
  %330 = shl i32 %329, 2
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = shl i32 %328, 4
  %334 = and i32 %333, 16
  %335 = lshr i32 %332, %334
  %336 = and i32 %335, 65535
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3EF0002000000000
  %339 = call float @dx.op.unary.f32(i32 7, float %338)  ; Saturate(value)
  %340 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 %323
  store float %339, float* %340, align 4, !tbaa !49, !noalias !53
  %341 = add nuw nsw i32 %323, 1
  %342 = icmp eq i32 %341, 4
  br i1 %342, label %348, label %343

; <label>:343                                     ; preds = %320
  %344 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 %341
  %345 = load i32, i32* %344, align 4
  %346 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 %341
  %347 = load i32, i32* %346, align 4
  br label %320

; <label>:348                                     ; preds = %320
  %349 = fmul fast float %302, %293
  %350 = fadd fast float %305, %349
  %351 = fmul fast float %350, %234
  %352 = call float @dx.op.unary.f32(i32 22, float %187)  ; Frc(value)
  %353 = fsub fast float 1.000000e+00, %307
  %354 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 0
  %355 = load float, float* %354, align 4, !tbaa !49, !noalias !53
  %356 = fmul fast float %355, %353
  %357 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 1
  %358 = load float, float* %357, align 4, !tbaa !49, !noalias !53
  %359 = fmul fast float %358, %307
  %360 = fadd fast float %359, %356
  %361 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 2
  %362 = load float, float* %361, align 4, !tbaa !49, !noalias !53
  %363 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 3
  %364 = load float, float* %363, align 4, !tbaa !49, !noalias !53
  %365 = fmul fast float %364, %307
  %366 = fsub fast float 1.000000e+00, %352
  %367 = fmul fast float %360, %366
  %368 = fptoui float %233 to i32
  %369 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 0
  %370 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 0
  store i32 %308, i32* %369, align 4
  store i32 %368, i32* %370, align 4
  %371 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 1
  %372 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 1
  store i32 %312, i32* %371, align 4
  store i32 %368, i32* %372, align 4
  %373 = add i32 %368, 1
  %374 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 2
  %375 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 2
  store i32 %308, i32* %374, align 4
  store i32 %373, i32* %375, align 4
  %376 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 3
  %377 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 3
  store i32 %312, i32* %376, align 4
  store i32 %373, i32* %377, align 4
  br label %378

; <label>:378                                     ; preds = %401, %348
  %379 = phi i32 [ %368, %348 ], [ %405, %401 ]
  %380 = phi i32 [ %308, %348 ], [ %403, %401 ]
  %381 = phi i32 [ 0, %348 ], [ %399, %401 ]
  %382 = call i32 @dx.op.binary.i32(i32 40, i32 %380, i32 %201)  ; UMin(a,b)
  %383 = call i32 @dx.op.binary.i32(i32 40, i32 %379, i32 %201)  ; UMin(a,b)
  %384 = mul i32 %383, %144
  %385 = add i32 %382, %185
  %386 = add i32 %385, %384
  %387 = lshr i32 %386, 1
  %388 = shl i32 %387, 2
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = shl i32 %386, 4
  %392 = and i32 %391, 16
  %393 = lshr i32 %390, %392
  %394 = and i32 %393, 65535
  %395 = uitofp i32 %394 to float
  %396 = fmul fast float %395, 0x3EF0002000000000
  %397 = call float @dx.op.unary.f32(i32 7, float %396)  ; Saturate(value)
  %398 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 %381
  store float %397, float* %398, align 4, !tbaa !49, !noalias !53
  %399 = add nuw nsw i32 %381, 1
  %400 = icmp eq i32 %399, 4
  br i1 %400, label %406, label %401

; <label>:401                                     ; preds = %378
  %402 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 %399
  %403 = load i32, i32* %402, align 4
  %404 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 %399
  %405 = load i32, i32* %404, align 4
  br label %378

; <label>:406                                     ; preds = %378
  %407 = fmul fast float %362, %353
  %408 = fadd fast float %365, %407
  %409 = fmul fast float %408, %352
  %410 = call float @dx.op.unary.f32(i32 22, float %233)  ; Frc(value)
  %411 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 0
  %412 = load float, float* %411, align 4, !tbaa !49, !noalias !53
  %413 = fmul fast float %412, %353
  %414 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 1
  %415 = load float, float* %414, align 4, !tbaa !49, !noalias !53
  %416 = fmul fast float %415, %307
  %417 = fadd fast float %416, %413
  %418 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 2
  %419 = load float, float* %418, align 4, !tbaa !49, !noalias !53
  %420 = fmul fast float %419, %353
  %421 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 3
  %422 = load float, float* %421, align 4, !tbaa !49, !noalias !53
  %423 = fmul fast float %422, %307
  %424 = fadd fast float %423, %420
  %425 = fsub fast float 1.000000e+00, %410
  %426 = fmul fast float %417, %425
  %427 = fmul fast float %424, %410
  %428 = fmul fast float %134, 2.000000e+00
  %429 = fmul fast float %172, %179
  %430 = fdiv fast float %428, %429
  %431 = fsub fast float -0.000000e+00, %249
  %432 = fsub fast float %431, %292
  %433 = fadd fast float %432, %306
  %434 = fadd fast float %433, %351
  %435 = fmul fast float %135, 2.000000e+00
  %436 = fdiv fast float %435, %429
  %437 = fsub fast float -0.000000e+00, %367
  %438 = fsub fast float %437, %409
  %439 = fadd fast float %438, %426
  %440 = fadd fast float %439, %427
  %441 = fmul fast float %231, %434
  %442 = fmul fast float %441, %436
  %443 = fsub fast float -0.000000e+00, %442
  %444 = fmul fast float %231, %430
  %445 = fmul fast float %444, %440
  %446 = fsub fast float -0.000000e+00, %445
  %447 = fmul fast float %436, %430
  br label %1013

; <label>:448                                     ; preds = %111
  %449 = fsub fast float %67, %117
  %450 = fsub fast float %68, %119
  %451 = fadd fast float %117, %67
  %452 = fadd fast float %119, %68
  %453 = fsub fast float %67, %121
  %454 = fsub fast float %68, %123
  %455 = fadd fast float %121, %67
  %456 = fadd fast float %123, %68
  %457 = call float @dx.op.dot3.f32(i32 55, float %449, float %450, float 1.000000e+00, float %81, float %85, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %458 = call float @dx.op.dot3.f32(i32 55, float %449, float %450, float 1.000000e+00, float %72, float %74, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %459 = add nuw nsw i32 %93, 282
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %459)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 0
  %462 = extractvalue %dx.types.CBufRet.f32 %460, 2
  %463 = fdiv fast float 5.000000e-01, %461
  %464 = fmul fast float %463, 2.000000e+00
  %465 = fsub fast float 1.000000e+00, %464
  %466 = fmul fast float %465, %458
  %467 = fmul fast float %465, %457
  %468 = fadd fast float %466, %463
  %469 = fadd fast float %467, %463
  %470 = fmul fast float %468, %462
  %471 = fmul fast float %469, %462
  %472 = extractvalue %dx.types.ResRet.i32 %90, 1
  %473 = and i32 %472, 16777215
  %474 = add i32 %473, 0
  %475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %474, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %475, %dx.types.Handle %9, float %470, float %471, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %477 = extractvalue %dx.types.ResRet.f32 %476, 0
  %478 = add i32 %52, 128
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = bitcast i32 %480 to float
  %482 = extractvalue %dx.types.ResRet.i32 %479, 1
  %483 = bitcast i32 %482 to float
  %484 = fmul fast float %483, %477
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %69, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = bitcast i32 %486 to float
  %488 = extractvalue %dx.types.ResRet.i32 %485, 1
  %489 = bitcast i32 %488 to float
  %490 = extractvalue %dx.types.ResRet.i32 %485, 2
  %491 = bitcast i32 %490 to float
  %492 = call float @dx.op.dot3.f32(i32 55, float %451, float %452, float 1.000000e+00, float %487, float %489, float %491)  ; Dot3(ax,ay,az,bx,by,bz)
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %78, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 3
  %495 = bitcast i32 %494 to float
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %82, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = bitcast i32 %497 to float
  %499 = extractvalue %dx.types.ResRet.i32 %496, 1
  %500 = bitcast i32 %499 to float
  %501 = call float @dx.op.dot3.f32(i32 55, float %451, float %452, float 1.000000e+00, float %495, float %498, float %500)  ; Dot3(ax,ay,az,bx,by,bz)
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %89, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %504 = extractvalue %dx.types.CBufRet.i32 %503, 3
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %523, !dx.controlflow.hints !47

; <label>:506                                     ; preds = %448
  %507 = extractvalue %dx.types.ResRet.i32 %502, 2
  %508 = lshr i32 %507, 24
  %509 = and i32 %508, 7
  %510 = add nuw nsw i32 %509, 282
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %510)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 0
  %513 = extractvalue %dx.types.CBufRet.f32 %511, 2
  %514 = fdiv fast float 5.000000e-01, %512
  %515 = fmul fast float %514, 2.000000e+00
  %516 = fsub fast float 1.000000e+00, %515
  %517 = fmul fast float %516, %492
  %518 = fmul fast float %516, %501
  %519 = fadd fast float %517, %514
  %520 = fadd fast float %518, %514
  %521 = fmul fast float %519, %513
  %522 = fmul fast float %520, %513
  br label %523

; <label>:523                                     ; preds = %506, %448
  %524 = phi float [ %521, %506 ], [ %492, %448 ]
  %525 = phi float [ %522, %506 ], [ %501, %448 ]
  br i1 %505, label %526, label %533, !dx.controlflow.hints !60

; <label>:526                                     ; preds = %523
  %527 = extractvalue %dx.types.ResRet.i32 %502, 1
  %528 = and i32 %527, 16777215
  %529 = add i32 %528, 0
  %530 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %529, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %530, %dx.types.Handle %9, float %524, float %525, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %532 = extractvalue %dx.types.ResRet.f32 %531, 0
  br label %646

; <label>:533                                     ; preds = %523
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 2
  %536 = extractvalue %dx.types.CBufRet.f32 %534, 3
  %537 = fmul fast float %535, %524
  %538 = fmul fast float %536, %525
  %539 = extractvalue %dx.types.CBufRet.f32 %534, 0
  %540 = extractvalue %dx.types.CBufRet.f32 %534, 1
  %541 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.i32 %541, 0
  %543 = extractvalue %dx.types.CBufRet.i32 %541, 1
  %544 = extractvalue %dx.types.CBufRet.i32 %541, 2
  %545 = extractvalue %dx.types.CBufRet.i32 %541, 3
  %546 = fadd fast float %535, 0xBF847AE140000000
  %547 = fadd fast float %536, 0xBF847AE140000000
  %548 = call float @dx.op.binary.f32(i32 35, float %537, float 0.000000e+00)  ; FMax(a,b)
  %549 = call float @dx.op.binary.f32(i32 35, float %538, float 0.000000e+00)  ; FMax(a,b)
  %550 = call float @dx.op.binary.f32(i32 36, float %548, float %546)  ; FMin(a,b)
  %551 = call float @dx.op.binary.f32(i32 36, float %549, float %547)  ; FMin(a,b)
  %552 = fdiv fast float %550, %539
  %553 = fdiv fast float %551, %540
  %554 = fptoui float %552 to i32
  %555 = fptoui float %553 to i32
  %556 = mul i32 %555, %542
  %557 = add i32 %556, %554
  %558 = lshr i32 %557, 1
  %559 = shl i32 %558, 2
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = shl i32 %557, 4
  %563 = and i32 %562, 16
  %564 = lshr i32 %561, %563
  %565 = and i32 %564, 255
  %566 = lshr i32 %564, 8
  %567 = and i32 %566, 31
  %568 = shl i32 1, %567
  %569 = uitofp i32 %568 to float
  %570 = fmul fast float %569, %550
  %571 = fdiv fast float %570, %535
  %572 = fmul fast float %569, %551
  %573 = fdiv fast float %572, %536
  %574 = call float @dx.op.unary.f32(i32 22, float %571)  ; Frc(value)
  %575 = call float @dx.op.unary.f32(i32 22, float %573)  ; Frc(value)
  %576 = uitofp i32 %543 to float
  %577 = fmul fast float %574, %576
  %578 = fmul fast float %575, %576
  %579 = uitofp i32 %545 to float
  %580 = fadd fast float %577, %579
  %581 = fadd fast float %578, %579
  %582 = mul i32 %565, %544
  %583 = call float @dx.op.unary.f32(i32 22, float %580)  ; Frc(value)
  %584 = fptoui float %580 to i32
  %585 = fptoui float %581 to i32
  %586 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 0
  %587 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 0
  store i32 %584, i32* %586, align 4
  store i32 %585, i32* %587, align 4
  %588 = add i32 %584, 1
  %589 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 1
  %590 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 1
  store i32 %588, i32* %589, align 4
  store i32 %585, i32* %590, align 4
  %591 = add i32 %585, 1
  %592 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 2
  %593 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 2
  store i32 %584, i32* %592, align 4
  store i32 %591, i32* %593, align 4
  %594 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 3
  %595 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 3
  store i32 %588, i32* %594, align 4
  store i32 %591, i32* %595, align 4
  br label %596

; <label>:596                                     ; preds = %620, %533
  %597 = phi i32 [ %585, %533 ], [ %624, %620 ]
  %598 = phi i32 [ %584, %533 ], [ %622, %620 ]
  %599 = phi i32 [ 0, %533 ], [ %618, %620 ]
  %600 = add i32 %544, -1
  %601 = call i32 @dx.op.binary.i32(i32 40, i32 %598, i32 %600)  ; UMin(a,b)
  %602 = call i32 @dx.op.binary.i32(i32 40, i32 %597, i32 %600)  ; UMin(a,b)
  %603 = add i32 %602, %582
  %604 = mul i32 %603, %544
  %605 = add i32 %604, %601
  %606 = lshr i32 %605, 1
  %607 = shl i32 %606, 2
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = shl i32 %605, 4
  %611 = and i32 %610, 16
  %612 = lshr i32 %609, %611
  %613 = and i32 %612, 65535
  %614 = uitofp i32 %613 to float
  %615 = fmul fast float %614, 0x3EF0002000000000
  %616 = call float @dx.op.unary.f32(i32 7, float %615)  ; Saturate(value)
  %617 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 %599
  store float %616, float* %617, align 4, !tbaa !49, !noalias !61
  %618 = add nuw nsw i32 %599, 1
  %619 = icmp eq i32 %618, 4
  br i1 %619, label %625, label %620

; <label>:620                                     ; preds = %596
  %621 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 %618
  %622 = load i32, i32* %621, align 4
  %623 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %618
  %624 = load i32, i32* %623, align 4
  br label %596

; <label>:625                                     ; preds = %596
  %626 = call float @dx.op.unary.f32(i32 22, float %581)  ; Frc(value)
  %627 = fsub fast float 1.000000e+00, %583
  %628 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  %629 = load float, float* %628, align 4, !tbaa !49, !noalias !61
  %630 = fmul fast float %629, %627
  %631 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  %632 = load float, float* %631, align 4, !tbaa !49, !noalias !61
  %633 = fmul fast float %632, %583
  %634 = fadd fast float %633, %630
  %635 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  %636 = load float, float* %635, align 4, !tbaa !49, !noalias !61
  %637 = fmul fast float %636, %627
  %638 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  %639 = load float, float* %638, align 4, !tbaa !49, !noalias !61
  %640 = fmul fast float %639, %583
  %641 = fadd fast float %640, %637
  %642 = fsub fast float 1.000000e+00, %626
  %643 = fmul fast float %634, %642
  %644 = fmul fast float %641, %626
  %645 = fadd fast float %644, %643
  br label %646

; <label>:646                                     ; preds = %625, %526
  %647 = phi float [ %645, %625 ], [ %532, %526 ]
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = bitcast i32 %649 to float
  %651 = extractvalue %dx.types.ResRet.i32 %648, 1
  %652 = bitcast i32 %651 to float
  %653 = fmul fast float %652, %647
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %69, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = bitcast i32 %655 to float
  %657 = extractvalue %dx.types.ResRet.i32 %654, 1
  %658 = bitcast i32 %657 to float
  %659 = extractvalue %dx.types.ResRet.i32 %654, 2
  %660 = bitcast i32 %659 to float
  %661 = call float @dx.op.dot3.f32(i32 55, float %453, float %454, float 1.000000e+00, float %656, float %658, float %660)  ; Dot3(ax,ay,az,bx,by,bz)
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %78, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 3
  %664 = bitcast i32 %663 to float
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %82, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = bitcast i32 %666 to float
  %668 = extractvalue %dx.types.ResRet.i32 %665, 1
  %669 = bitcast i32 %668 to float
  %670 = call float @dx.op.dot3.f32(i32 55, float %453, float %454, float 1.000000e+00, float %664, float %667, float %669)  ; Dot3(ax,ay,az,bx,by,bz)
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %89, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %673 = extractvalue %dx.types.CBufRet.i32 %672, 3
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %675, label %692, !dx.controlflow.hints !47

; <label>:675                                     ; preds = %646
  %676 = extractvalue %dx.types.ResRet.i32 %671, 2
  %677 = lshr i32 %676, 24
  %678 = and i32 %677, 7
  %679 = add nuw nsw i32 %678, 282
  %680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %679)  ; CBufferLoadLegacy(handle,regIndex)
  %681 = extractvalue %dx.types.CBufRet.f32 %680, 0
  %682 = extractvalue %dx.types.CBufRet.f32 %680, 2
  %683 = fdiv fast float 5.000000e-01, %681
  %684 = fmul fast float %683, 2.000000e+00
  %685 = fsub fast float 1.000000e+00, %684
  %686 = fmul fast float %685, %661
  %687 = fmul fast float %685, %670
  %688 = fadd fast float %686, %683
  %689 = fadd fast float %687, %683
  %690 = fmul fast float %688, %682
  %691 = fmul fast float %689, %682
  br label %692

; <label>:692                                     ; preds = %675, %646
  %693 = phi float [ %690, %675 ], [ %661, %646 ]
  %694 = phi float [ %691, %675 ], [ %670, %646 ]
  br i1 %674, label %695, label %702, !dx.controlflow.hints !60

; <label>:695                                     ; preds = %692
  %696 = extractvalue %dx.types.ResRet.i32 %671, 1
  %697 = and i32 %696, 16777215
  %698 = add i32 %697, 0
  %699 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %698, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %699, %dx.types.Handle %9, float %693, float %694, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %701 = extractvalue %dx.types.ResRet.f32 %700, 0
  br label %815

; <label>:702                                     ; preds = %692
  %703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %704 = extractvalue %dx.types.CBufRet.f32 %703, 2
  %705 = extractvalue %dx.types.CBufRet.f32 %703, 3
  %706 = fmul fast float %704, %693
  %707 = fmul fast float %705, %694
  %708 = extractvalue %dx.types.CBufRet.f32 %703, 0
  %709 = extractvalue %dx.types.CBufRet.f32 %703, 1
  %710 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.i32 %710, 0
  %712 = extractvalue %dx.types.CBufRet.i32 %710, 1
  %713 = extractvalue %dx.types.CBufRet.i32 %710, 2
  %714 = extractvalue %dx.types.CBufRet.i32 %710, 3
  %715 = fadd fast float %704, 0xBF847AE140000000
  %716 = fadd fast float %705, 0xBF847AE140000000
  %717 = call float @dx.op.binary.f32(i32 35, float %706, float 0.000000e+00)  ; FMax(a,b)
  %718 = call float @dx.op.binary.f32(i32 35, float %707, float 0.000000e+00)  ; FMax(a,b)
  %719 = call float @dx.op.binary.f32(i32 36, float %717, float %715)  ; FMin(a,b)
  %720 = call float @dx.op.binary.f32(i32 36, float %718, float %716)  ; FMin(a,b)
  %721 = fdiv fast float %719, %708
  %722 = fdiv fast float %720, %709
  %723 = fptoui float %721 to i32
  %724 = fptoui float %722 to i32
  %725 = mul i32 %724, %711
  %726 = add i32 %725, %723
  %727 = lshr i32 %726, 1
  %728 = shl i32 %727, 2
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %728, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = shl i32 %726, 4
  %732 = and i32 %731, 16
  %733 = lshr i32 %730, %732
  %734 = and i32 %733, 255
  %735 = lshr i32 %733, 8
  %736 = and i32 %735, 31
  %737 = shl i32 1, %736
  %738 = uitofp i32 %737 to float
  %739 = fmul fast float %738, %719
  %740 = fdiv fast float %739, %704
  %741 = fmul fast float %738, %720
  %742 = fdiv fast float %741, %705
  %743 = call float @dx.op.unary.f32(i32 22, float %740)  ; Frc(value)
  %744 = call float @dx.op.unary.f32(i32 22, float %742)  ; Frc(value)
  %745 = uitofp i32 %712 to float
  %746 = fmul fast float %743, %745
  %747 = fmul fast float %744, %745
  %748 = uitofp i32 %714 to float
  %749 = fadd fast float %746, %748
  %750 = fadd fast float %747, %748
  %751 = mul i32 %734, %713
  %752 = call float @dx.op.unary.f32(i32 22, float %749)  ; Frc(value)
  %753 = fptoui float %749 to i32
  %754 = fptoui float %750 to i32
  %755 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 0
  %756 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 0
  store i32 %753, i32* %755, align 4
  store i32 %754, i32* %756, align 4
  %757 = add i32 %753, 1
  %758 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 1
  %759 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 1
  store i32 %757, i32* %758, align 4
  store i32 %754, i32* %759, align 4
  %760 = add i32 %754, 1
  %761 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 2
  %762 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 2
  store i32 %753, i32* %761, align 4
  store i32 %760, i32* %762, align 4
  %763 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 3
  %764 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 3
  store i32 %757, i32* %763, align 4
  store i32 %760, i32* %764, align 4
  br label %765

; <label>:765                                     ; preds = %789, %702
  %766 = phi i32 [ %754, %702 ], [ %793, %789 ]
  %767 = phi i32 [ %753, %702 ], [ %791, %789 ]
  %768 = phi i32 [ 0, %702 ], [ %787, %789 ]
  %769 = add i32 %713, -1
  %770 = call i32 @dx.op.binary.i32(i32 40, i32 %767, i32 %769)  ; UMin(a,b)
  %771 = call i32 @dx.op.binary.i32(i32 40, i32 %766, i32 %769)  ; UMin(a,b)
  %772 = add i32 %771, %751
  %773 = mul i32 %772, %713
  %774 = add i32 %773, %770
  %775 = lshr i32 %774, 1
  %776 = shl i32 %775, 2
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = shl i32 %774, 4
  %780 = and i32 %779, 16
  %781 = lshr i32 %778, %780
  %782 = and i32 %781, 65535
  %783 = uitofp i32 %782 to float
  %784 = fmul fast float %783, 0x3EF0002000000000
  %785 = call float @dx.op.unary.f32(i32 7, float %784)  ; Saturate(value)
  %786 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 %768
  store float %785, float* %786, align 4, !tbaa !49, !noalias !61
  %787 = add nuw nsw i32 %768, 1
  %788 = icmp eq i32 %787, 4
  br i1 %788, label %794, label %789

; <label>:789                                     ; preds = %765
  %790 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 %787
  %791 = load i32, i32* %790, align 4
  %792 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %787
  %793 = load i32, i32* %792, align 4
  br label %765

; <label>:794                                     ; preds = %765
  %795 = call float @dx.op.unary.f32(i32 22, float %750)  ; Frc(value)
  %796 = fsub fast float 1.000000e+00, %752
  %797 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  %798 = load float, float* %797, align 4, !tbaa !49, !noalias !61
  %799 = fmul fast float %798, %796
  %800 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  %801 = load float, float* %800, align 4, !tbaa !49, !noalias !61
  %802 = fmul fast float %801, %752
  %803 = fadd fast float %802, %799
  %804 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  %805 = load float, float* %804, align 4, !tbaa !49, !noalias !61
  %806 = fmul fast float %805, %796
  %807 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  %808 = load float, float* %807, align 4, !tbaa !49, !noalias !61
  %809 = fmul fast float %808, %752
  %810 = fadd fast float %809, %806
  %811 = fsub fast float 1.000000e+00, %795
  %812 = fmul fast float %803, %811
  %813 = fmul fast float %810, %795
  %814 = fadd fast float %813, %812
  br label %815

; <label>:815                                     ; preds = %794, %695
  %816 = phi float [ %814, %794 ], [ %701, %695 ]
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = bitcast i32 %818 to float
  %820 = extractvalue %dx.types.ResRet.i32 %817, 1
  %821 = bitcast i32 %820 to float
  %822 = fmul fast float %821, %816
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %69, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = bitcast i32 %824 to float
  %826 = extractvalue %dx.types.ResRet.i32 %823, 1
  %827 = bitcast i32 %826 to float
  %828 = extractvalue %dx.types.ResRet.i32 %823, 2
  %829 = bitcast i32 %828 to float
  %830 = call float @dx.op.dot3.f32(i32 55, float %455, float %456, float 1.000000e+00, float %825, float %827, float %829)  ; Dot3(ax,ay,az,bx,by,bz)
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %78, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 3
  %833 = bitcast i32 %832 to float
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %82, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = bitcast i32 %835 to float
  %837 = extractvalue %dx.types.ResRet.i32 %834, 1
  %838 = bitcast i32 %837 to float
  %839 = call float @dx.op.dot3.f32(i32 55, float %455, float %456, float 1.000000e+00, float %833, float %836, float %838)  ; Dot3(ax,ay,az,bx,by,bz)
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %89, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %842 = extractvalue %dx.types.CBufRet.i32 %841, 3
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %844, label %861, !dx.controlflow.hints !47

; <label>:844                                     ; preds = %815
  %845 = extractvalue %dx.types.ResRet.i32 %840, 2
  %846 = lshr i32 %845, 24
  %847 = and i32 %846, 7
  %848 = add nuw nsw i32 %847, 282
  %849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %848)  ; CBufferLoadLegacy(handle,regIndex)
  %850 = extractvalue %dx.types.CBufRet.f32 %849, 0
  %851 = extractvalue %dx.types.CBufRet.f32 %849, 2
  %852 = fdiv fast float 5.000000e-01, %850
  %853 = fmul fast float %852, 2.000000e+00
  %854 = fsub fast float 1.000000e+00, %853
  %855 = fmul fast float %854, %830
  %856 = fmul fast float %854, %839
  %857 = fadd fast float %855, %852
  %858 = fadd fast float %856, %852
  %859 = fmul fast float %857, %851
  %860 = fmul fast float %858, %851
  br label %861

; <label>:861                                     ; preds = %844, %815
  %862 = phi float [ %859, %844 ], [ %830, %815 ]
  %863 = phi float [ %860, %844 ], [ %839, %815 ]
  br i1 %843, label %864, label %871, !dx.controlflow.hints !60

; <label>:864                                     ; preds = %861
  %865 = extractvalue %dx.types.ResRet.i32 %840, 1
  %866 = and i32 %865, 16777215
  %867 = add i32 %866, 0
  %868 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %867, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %869 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %868, %dx.types.Handle %9, float %862, float %863, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %870 = extractvalue %dx.types.ResRet.f32 %869, 0
  br label %984

; <label>:871                                     ; preds = %861
  %872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %873 = extractvalue %dx.types.CBufRet.f32 %872, 2
  %874 = extractvalue %dx.types.CBufRet.f32 %872, 3
  %875 = fmul fast float %873, %862
  %876 = fmul fast float %874, %863
  %877 = extractvalue %dx.types.CBufRet.f32 %872, 0
  %878 = extractvalue %dx.types.CBufRet.f32 %872, 1
  %879 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %880 = extractvalue %dx.types.CBufRet.i32 %879, 0
  %881 = extractvalue %dx.types.CBufRet.i32 %879, 1
  %882 = extractvalue %dx.types.CBufRet.i32 %879, 2
  %883 = extractvalue %dx.types.CBufRet.i32 %879, 3
  %884 = fadd fast float %873, 0xBF847AE140000000
  %885 = fadd fast float %874, 0xBF847AE140000000
  %886 = call float @dx.op.binary.f32(i32 35, float %875, float 0.000000e+00)  ; FMax(a,b)
  %887 = call float @dx.op.binary.f32(i32 35, float %876, float 0.000000e+00)  ; FMax(a,b)
  %888 = call float @dx.op.binary.f32(i32 36, float %886, float %884)  ; FMin(a,b)
  %889 = call float @dx.op.binary.f32(i32 36, float %887, float %885)  ; FMin(a,b)
  %890 = fdiv fast float %888, %877
  %891 = fdiv fast float %889, %878
  %892 = fptoui float %890 to i32
  %893 = fptoui float %891 to i32
  %894 = mul i32 %893, %880
  %895 = add i32 %894, %892
  %896 = lshr i32 %895, 1
  %897 = shl i32 %896, 2
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = shl i32 %895, 4
  %901 = and i32 %900, 16
  %902 = lshr i32 %899, %901
  %903 = and i32 %902, 255
  %904 = lshr i32 %902, 8
  %905 = and i32 %904, 31
  %906 = shl i32 1, %905
  %907 = uitofp i32 %906 to float
  %908 = fmul fast float %907, %888
  %909 = fdiv fast float %908, %873
  %910 = fmul fast float %907, %889
  %911 = fdiv fast float %910, %874
  %912 = call float @dx.op.unary.f32(i32 22, float %909)  ; Frc(value)
  %913 = call float @dx.op.unary.f32(i32 22, float %911)  ; Frc(value)
  %914 = uitofp i32 %881 to float
  %915 = fmul fast float %912, %914
  %916 = fmul fast float %913, %914
  %917 = uitofp i32 %883 to float
  %918 = fadd fast float %915, %917
  %919 = fadd fast float %916, %917
  %920 = mul i32 %903, %882
  %921 = call float @dx.op.unary.f32(i32 22, float %918)  ; Frc(value)
  %922 = fptoui float %918 to i32
  %923 = fptoui float %919 to i32
  %924 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 0
  %925 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 0
  store i32 %922, i32* %924, align 4
  store i32 %923, i32* %925, align 4
  %926 = add i32 %922, 1
  %927 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 1
  %928 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 1
  store i32 %926, i32* %927, align 4
  store i32 %923, i32* %928, align 4
  %929 = add i32 %923, 1
  %930 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 2
  %931 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 2
  store i32 %922, i32* %930, align 4
  store i32 %929, i32* %931, align 4
  %932 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 3
  %933 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 3
  store i32 %926, i32* %932, align 4
  store i32 %929, i32* %933, align 4
  br label %934

; <label>:934                                     ; preds = %958, %871
  %935 = phi i32 [ %923, %871 ], [ %962, %958 ]
  %936 = phi i32 [ %922, %871 ], [ %960, %958 ]
  %937 = phi i32 [ 0, %871 ], [ %956, %958 ]
  %938 = add i32 %882, -1
  %939 = call i32 @dx.op.binary.i32(i32 40, i32 %936, i32 %938)  ; UMin(a,b)
  %940 = call i32 @dx.op.binary.i32(i32 40, i32 %935, i32 %938)  ; UMin(a,b)
  %941 = add i32 %940, %920
  %942 = mul i32 %941, %882
  %943 = add i32 %942, %939
  %944 = lshr i32 %943, 1
  %945 = shl i32 %944, 2
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = shl i32 %943, 4
  %949 = and i32 %948, 16
  %950 = lshr i32 %947, %949
  %951 = and i32 %950, 65535
  %952 = uitofp i32 %951 to float
  %953 = fmul fast float %952, 0x3EF0002000000000
  %954 = call float @dx.op.unary.f32(i32 7, float %953)  ; Saturate(value)
  %955 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 %937
  store float %954, float* %955, align 4, !tbaa !49, !noalias !61
  %956 = add nuw nsw i32 %937, 1
  %957 = icmp eq i32 %956, 4
  br i1 %957, label %963, label %958

; <label>:958                                     ; preds = %934
  %959 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 %956
  %960 = load i32, i32* %959, align 4
  %961 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %956
  %962 = load i32, i32* %961, align 4
  br label %934

; <label>:963                                     ; preds = %934
  %964 = call float @dx.op.unary.f32(i32 22, float %919)  ; Frc(value)
  %965 = fsub fast float 1.000000e+00, %921
  %966 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  %967 = load float, float* %966, align 4, !tbaa !49, !noalias !61
  %968 = fmul fast float %967, %965
  %969 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  %970 = load float, float* %969, align 4, !tbaa !49, !noalias !61
  %971 = fmul fast float %970, %921
  %972 = fadd fast float %971, %968
  %973 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  %974 = load float, float* %973, align 4, !tbaa !49, !noalias !61
  %975 = fmul fast float %974, %965
  %976 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  %977 = load float, float* %976, align 4, !tbaa !49, !noalias !61
  %978 = fmul fast float %977, %921
  %979 = fadd fast float %978, %975
  %980 = fsub fast float 1.000000e+00, %964
  %981 = fmul fast float %972, %980
  %982 = fmul fast float %979, %964
  %983 = fadd fast float %982, %981
  br label %984

; <label>:984                                     ; preds = %963, %864
  %985 = phi float [ %983, %963 ], [ %870, %864 ]
  %986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.i32 %986, 0
  %988 = bitcast i32 %987 to float
  %989 = extractvalue %dx.types.ResRet.i32 %986, 1
  %990 = bitcast i32 %989 to float
  %991 = fmul fast float %990, %985
  %992 = fmul fast float %121, 2.000000e+00
  %993 = fmul fast float %123, 2.000000e+00
  %994 = fsub fast float -0.000000e+00, %819
  %995 = fsub fast float %994, %822
  %996 = fadd fast float %995, %988
  %997 = fadd fast float %996, %991
  %998 = fmul fast float %117, 2.000000e+00
  %999 = fmul fast float %119, 2.000000e+00
  %1000 = fsub fast float -0.000000e+00, %481
  %1001 = fsub fast float %1000, %484
  %1002 = fadd fast float %1001, %650
  %1003 = fadd fast float %1002, %653
  %1004 = fmul fast float %997, %999
  %1005 = fmul fast float %1003, %993
  %1006 = fsub fast float %1004, %1005
  %1007 = fmul fast float %1003, %992
  %1008 = fmul fast float %997, %998
  %1009 = fsub fast float %1007, %1008
  %1010 = fmul fast float %993, %998
  %1011 = fmul fast float %992, %999
  %1012 = fsub fast float %1010, %1011
  br label %1013

; <label>:1013                                    ; preds = %984, %406
  %1014 = phi float [ %443, %406 ], [ %1006, %984 ]
  %1015 = phi float [ %446, %406 ], [ %1009, %984 ]
  %1016 = phi float [ %447, %406 ], [ %1012, %984 ]
  %1017 = call float @dx.op.dot3.f32(i32 55, float %1014, float %1015, float %1016, float %1014, float %1015, float %1016)  ; Dot3(ax,ay,az,bx,by,bz)
  %1018 = call float @dx.op.unary.f32(i32 25, float %1017)  ; Rsqrt(value)
  %1019 = fmul fast float %1018, %1014
  %1020 = fmul fast float %1018, %1015
  %1021 = fmul fast float %1018, %1016
  %1022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.i32 %1022, 3
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1138, label %1025, !dx.controlflow.hints !62

; <label>:1025                                    ; preds = %1013
  %1026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %1027 = extractvalue %dx.types.CBufRet.f32 %1026, 2
  %1028 = extractvalue %dx.types.CBufRet.f32 %1026, 3
  %1029 = fmul fast float %1027, %112
  %1030 = fmul fast float %1028, %113
  %1031 = extractvalue %dx.types.CBufRet.f32 %1026, 0
  %1032 = extractvalue %dx.types.CBufRet.f32 %1026, 1
  %1033 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.i32 %1033, 0
  %1035 = extractvalue %dx.types.CBufRet.i32 %1033, 1
  %1036 = extractvalue %dx.types.CBufRet.i32 %1033, 2
  %1037 = extractvalue %dx.types.CBufRet.i32 %1033, 3
  %1038 = fadd fast float %1027, 0xBF847AE140000000
  %1039 = fadd fast float %1028, 0xBF847AE140000000
  %1040 = call float @dx.op.binary.f32(i32 35, float %1029, float 0.000000e+00)  ; FMax(a,b)
  %1041 = call float @dx.op.binary.f32(i32 35, float %1030, float 0.000000e+00)  ; FMax(a,b)
  %1042 = call float @dx.op.binary.f32(i32 36, float %1040, float %1038)  ; FMin(a,b)
  %1043 = call float @dx.op.binary.f32(i32 36, float %1041, float %1039)  ; FMin(a,b)
  %1044 = fdiv fast float %1042, %1031
  %1045 = fdiv fast float %1043, %1032
  %1046 = fptoui float %1044 to i32
  %1047 = fptoui float %1045 to i32
  %1048 = mul i32 %1047, %1034
  %1049 = add i32 %1048, %1046
  %1050 = lshr i32 %1049, 1
  %1051 = shl i32 %1050, 2
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = shl i32 %1049, 4
  %1055 = and i32 %1054, 16
  %1056 = lshr i32 %1053, %1055
  %1057 = and i32 %1056, 255
  %1058 = lshr i32 %1056, 8
  %1059 = and i32 %1058, 31
  %1060 = shl i32 1, %1059
  %1061 = uitofp i32 %1060 to float
  %1062 = fmul fast float %1061, %1042
  %1063 = fdiv fast float %1062, %1027
  %1064 = fmul fast float %1061, %1043
  %1065 = fdiv fast float %1064, %1028
  %1066 = call float @dx.op.unary.f32(i32 22, float %1063)  ; Frc(value)
  %1067 = call float @dx.op.unary.f32(i32 22, float %1065)  ; Frc(value)
  %1068 = uitofp i32 %1035 to float
  %1069 = fmul fast float %1066, %1068
  %1070 = fmul fast float %1067, %1068
  %1071 = uitofp i32 %1037 to float
  %1072 = fadd fast float %1069, %1071
  %1073 = fadd fast float %1070, %1071
  %1074 = mul i32 %1057, %1036
  %1075 = call float @dx.op.unary.f32(i32 22, float %1072)  ; Frc(value)
  %1076 = fptoui float %1072 to i32
  %1077 = fptoui float %1073 to i32
  %1078 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 0
  %1079 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 0
  store i32 %1076, i32* %1078, align 4
  store i32 %1077, i32* %1079, align 4
  %1080 = add i32 %1076, 1
  %1081 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 1
  %1082 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 1
  store i32 %1080, i32* %1081, align 4
  store i32 %1077, i32* %1082, align 4
  %1083 = add i32 %1077, 1
  %1084 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 2
  %1085 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 2
  store i32 %1076, i32* %1084, align 4
  store i32 %1083, i32* %1085, align 4
  %1086 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 3
  %1087 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 3
  store i32 %1080, i32* %1086, align 4
  store i32 %1083, i32* %1087, align 4
  br label %1088

; <label>:1088                                    ; preds = %1112, %1025
  %1089 = phi i32 [ %1077, %1025 ], [ %1116, %1112 ]
  %1090 = phi i32 [ %1076, %1025 ], [ %1114, %1112 ]
  %1091 = phi i32 [ 0, %1025 ], [ %1110, %1112 ]
  %1092 = add i32 %1036, -1
  %1093 = call i32 @dx.op.binary.i32(i32 40, i32 %1090, i32 %1092)  ; UMin(a,b)
  %1094 = call i32 @dx.op.binary.i32(i32 40, i32 %1089, i32 %1092)  ; UMin(a,b)
  %1095 = add i32 %1094, %1074
  %1096 = mul i32 %1095, %1036
  %1097 = add i32 %1096, %1093
  %1098 = lshr i32 %1097, 1
  %1099 = shl i32 %1098, 2
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = shl i32 %1097, 4
  %1103 = and i32 %1102, 16
  %1104 = lshr i32 %1101, %1103
  %1105 = and i32 %1104, 65535
  %1106 = uitofp i32 %1105 to float
  %1107 = fmul fast float %1106, 0x3EF0002000000000
  %1108 = call float @dx.op.unary.f32(i32 7, float %1107)  ; Saturate(value)
  %1109 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 %1091
  store float %1108, float* %1109, align 4, !tbaa !49, !noalias !61
  %1110 = add nuw nsw i32 %1091, 1
  %1111 = icmp eq i32 %1110, 4
  br i1 %1111, label %1117, label %1112

; <label>:1112                                    ; preds = %1088
  %1113 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %1110
  %1114 = load i32, i32* %1113, align 4
  %1115 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 %1110
  %1116 = load i32, i32* %1115, align 4
  br label %1088

; <label>:1117                                    ; preds = %1088
  %1118 = call float @dx.op.unary.f32(i32 22, float %1073)  ; Frc(value)
  %1119 = fsub fast float 1.000000e+00, %1075
  %1120 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 0
  %1121 = load float, float* %1120, align 4, !tbaa !49, !noalias !61
  %1122 = fmul fast float %1121, %1119
  %1123 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 1
  %1124 = load float, float* %1123, align 4, !tbaa !49, !noalias !61
  %1125 = fmul fast float %1124, %1075
  %1126 = fadd fast float %1125, %1122
  %1127 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 2
  %1128 = load float, float* %1127, align 4, !tbaa !49, !noalias !61
  %1129 = fmul fast float %1128, %1119
  %1130 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 3
  %1131 = load float, float* %1130, align 4, !tbaa !49, !noalias !61
  %1132 = fmul fast float %1131, %1075
  %1133 = fadd fast float %1132, %1129
  %1134 = fsub fast float 1.000000e+00, %1118
  %1135 = fmul fast float %1126, %1134
  %1136 = fmul fast float %1133, %1118
  %1137 = fadd fast float %1136, %1135
  br label %1146

; <label>:1138                                    ; preds = %1013
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %89, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 1
  %1141 = and i32 %1140, 16777215
  %1142 = add i32 %1141, 0
  %1143 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1142, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1143, %dx.types.Handle %9, float %112, float %113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1145 = extractvalue %dx.types.ResRet.f32 %1144, 0
  br label %1146

; <label>:1146                                    ; preds = %1138, %1117
  %1147 = phi float [ %1137, %1117 ], [ %1145, %1138 ]
  %1148 = add i32 %52, 128
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = bitcast i32 %1150 to float
  %1152 = extractvalue %dx.types.ResRet.i32 %1149, 1
  %1153 = bitcast i32 %1152 to float
  %1154 = fmul fast float %1153, %1147
  %1155 = fadd fast float %1154, %1151
  %1156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1156, 0
  %1158 = extractvalue %dx.types.CBufRet.f32 %1156, 1
  %1159 = extractvalue %dx.types.CBufRet.f32 %1156, 2
  %1160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1161 = extractvalue %dx.types.CBufRet.i32 %1160, 0
  %1162 = extractvalue %dx.types.CBufRet.i32 %1160, 1
  %1163 = extractvalue %dx.types.CBufRet.i32 %1160, 2
  %1164 = bitcast float %1157 to i32
  %1165 = bitcast float %1158 to i32
  %1166 = bitcast float %1159 to i32
  %1167 = sub i32 %1161, %1164
  %1168 = sub i32 %1162, %1165
  %1169 = sub i32 %1163, %1166
  %1170 = sitofp i32 %1167 to float
  %1171 = sitofp i32 %1168 to float
  %1172 = sitofp i32 %1169 to float
  %1173 = fmul fast float %1170, 0x3F30000000000000
  %1174 = fmul fast float %1171, 0x3F30000000000000
  %1175 = fmul fast float %1172, 0x3F30000000000000
  %1176 = fadd fast float %1173, %48
  %1177 = fadd fast float %1174, %49
  %1178 = fadd fast float %1155, %1175
  %1179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1180 = extractvalue %dx.types.CBufRet.f32 %1179, 0
  %1181 = extractvalue %dx.types.CBufRet.f32 %1179, 1
  %1182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 129)  ; CBufferLoadLegacy(handle,regIndex)
  %1183 = extractvalue %dx.types.CBufRet.f32 %1182, 0
  %1184 = extractvalue %dx.types.CBufRet.f32 %1182, 1
  %1185 = fsub fast float %1180, %1183
  %1186 = fadd fast float %1185, %1176
  %1187 = fsub fast float %1181, %1184
  %1188 = fadd fast float %1187, %1177
  %1189 = call float @dx.op.dot3.f32(i32 55, float %1019, float %1020, float %1021, float %1019, float %1020, float %1021)  ; Dot3(ax,ay,az,bx,by,bz)
  %1190 = call float @dx.op.unary.f32(i32 25, float %1189)  ; Rsqrt(value)
  %1191 = fmul fast float %1190, %1019
  %1192 = fmul fast float %1190, %1020
  %1193 = fmul fast float %1190, %1021
  %1194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 128)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.i32 %1195, 0
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 130)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 3
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 129)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 3
  %1201 = uitofp i32 %1196 to float
  %1202 = fptosi float %1201 to i32
  %1203 = fmul fast float %1186, 0x3F3A027520000000
  %1204 = fmul fast float %1188, 0x3F3A027520000000
  %1205 = add nsw i32 %1202, -1
  %1206 = fptosi float %1204 to i32
  %1207 = call i32 @dx.op.binary.i32(i32 37, i32 %1206, i32 0)  ; IMax(a,b)
  %1208 = call i32 @dx.op.binary.i32(i32 38, i32 %1207, i32 %1205)  ; IMin(a,b)
  %1209 = fptosi float %1203 to i32
  %1210 = call i32 @dx.op.binary.i32(i32 37, i32 %1209, i32 0)  ; IMax(a,b)
  %1211 = call i32 @dx.op.binary.i32(i32 38, i32 %1210, i32 %1205)  ; IMin(a,b)
  %1212 = mul nsw i32 %1208, %1202
  %1213 = add nsw i32 %1211, %1212
  %1214 = sdiv i32 %1213, 4
  %1215 = shl nsw i32 %1214, 2
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = srem i32 %1213, 4
  %1219 = shl nsw i32 %1218, 3
  %1220 = and i32 %1219, 24
  %1221 = lshr i32 %1217, %1220
  %1222 = and i32 %1221, 255
  %1223 = mul nuw nsw i32 %1222, 12
  %1224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.f32 %1224, 0
  %1226 = extractvalue %dx.types.ResRet.f32 %1224, 1
  %1227 = extractvalue %dx.types.ResRet.f32 %1224, 2
  %1228 = fsub fast float %1186, %1225
  %1229 = fsub fast float %1188, %1226
  %1230 = fdiv fast float %1228, %1227
  %1231 = fdiv fast float %1229, %1227
  %1232 = extractvalue %dx.types.CBufRet.i32 %1195, 1
  %1233 = shl i32 %1232, 5
  %1234 = uitofp i32 %1233 to float
  %1235 = shl nuw nsw i32 %1222, 3
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = extractvalue %dx.types.ResRet.i32 %1236, 1
  %1239 = lshr i32 %1238, 16
  %1240 = and i32 %1239, 1
  %1241 = icmp eq i32 %1240, 0
  br i1 %1241, label %1242, label %1247

; <label>:1242                                    ; preds = %1146
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = extractvalue %dx.types.ResRet.i32 %1243, 1
  %1246 = lshr i32 %1245, 16
  br label %1247

; <label>:1247                                    ; preds = %1242, %1146
  %1248 = phi i32 [ 0, %1242 ], [ %1222, %1146 ]
  %1249 = phi i32 [ %1244, %1242 ], [ %1237, %1146 ]
  %1250 = phi i32 [ %1245, %1242 ], [ %1238, %1146 ]
  %1251 = phi i32 [ %1246, %1242 ], [ %1239, %1146 ]
  %1252 = and i32 %1250, 65535
  %1253 = lshr i32 %1249, 16
  %1254 = and i32 %1249, 65535
  %1255 = lshr i32 %1251, 1
  %1256 = uitofp i32 %1255 to float
  %1257 = icmp eq i32 %1248, 0
  %1258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 127)  ; CBufferLoadLegacy(handle,regIndex)
  %1259 = extractvalue %dx.types.CBufRet.f32 %1258, 2
  %1260 = bitcast float %1259 to i32
  %1261 = fdiv fast float %1186, %1200
  %1262 = fdiv fast float %1188, %1200
  %1263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 301)  ; CBufferLoadLegacy(handle,regIndex)
  %1264 = extractvalue %dx.types.CBufRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.CBufRet.f32 %1263, 1
  %1266 = extractvalue %dx.types.CBufRet.f32 %1263, 2
  %1267 = extractvalue %dx.types.CBufRet.f32 %1263, 3
  %1268 = fmul fast float %1176, %1176
  %1269 = fmul fast float %1177, %1177
  %1270 = fadd fast float %1268, %1269
  %1271 = fmul fast float %1178, %1178
  %1272 = fadd fast float %1270, %1271
  %1273 = call float @dx.op.unary.f32(i32 24, float %1272)  ; Sqrt(value)
  %1274 = fadd fast float %1273, %1266
  %1275 = fcmp fast ogt float %1178, 0.000000e+00
  %1276 = fcmp fast olt float %1178, 0.000000e+00
  %1277 = zext i1 %1275 to i32
  %1278 = zext i1 %1276 to i32
  %1279 = sub nsw i32 %1277, %1278
  %1280 = sitofp i32 %1279 to float
  %1281 = fmul fast float %1267, %1280
  %1282 = fadd fast float %1281, %1178
  %1283 = call float @dx.op.dot3.f32(i32 55, float %1176, float %1177, float %1282, float %1176, float %1177, float %1282)  ; Dot3(ax,ay,az,bx,by,bz)
  %1284 = call float @dx.op.unary.f32(i32 25, float %1283)  ; Rsqrt(value)
  %1285 = fmul fast float %1176, %1284
  %1286 = fsub fast float -0.000000e+00, %1285
  %1287 = fmul fast float %1177, %1284
  %1288 = fsub fast float -0.000000e+00, %1287
  %1289 = fmul fast float %1284, %1282
  %1290 = fsub fast float -0.000000e+00, %1289
  %1291 = call float @dx.op.dot3.f32(i32 55, float %1286, float %1288, float %1290, float %1191, float %1192, float %1193)  ; Dot3(ax,ay,az,bx,by,bz)
  %1292 = call float @dx.op.unary.f32(i32 7, float %1291)  ; Saturate(value)
  %1293 = call float @dx.op.unary.f32(i32 7, float %1292)  ; Saturate(value)
  %1294 = fsub fast float 1.000000e+00, %1265
  %1295 = fmul fast float %1293, %1294
  %1296 = fadd fast float %1295, %1265
  %1297 = fmul fast float %1296, %1264
  %1298 = fdiv fast float %1274, %1297
  %1299 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %1298)  ; FMax(a,b)
  %1300 = call float @dx.op.unary.f32(i32 23, float %1299)  ; Log(value)
  %1301 = fadd fast float %1300, %1198
  %1302 = select i1 %1257, float %1261, float %1230
  %1303 = select i1 %1257, float %1262, float %1231
  %1304 = call float @dx.op.unary.f32(i32 27, float %1301)  ; Round_ni(value)
  %1305 = fptosi float %1304 to i32
  %1306 = sub nsw i32 8, %1252
  %1307 = select i1 %1257, i32 %1260, i32 %1306
  %1308 = sub nsw i32 %1305, %1307
  %1309 = call i32 @dx.op.binary.i32(i32 37, i32 %1308, i32 0)  ; IMax(a,b)
  %1310 = call i32 @dx.op.binary.i32(i32 38, i32 %1309, i32 %1252)  ; IMin(a,b)
  %1311 = fptoui float %1256 to i32
  %1312 = and i32 %1310, 31
  %1313 = lshr i32 %1311, %1312
  %1314 = add i32 %1313, -1
  %1315 = uitofp i32 %1314 to float
  %1316 = uitofp i32 %1313 to float
  %1317 = fmul fast float %1316, %1302
  %1318 = fmul fast float %1316, %1303
  %1319 = call float @dx.op.unary.f32(i32 27, float %1317)  ; Round_ni(value)
  %1320 = call float @dx.op.unary.f32(i32 27, float %1318)  ; Round_ni(value)
  %1321 = call float @dx.op.binary.f32(i32 35, float %1319, float 0.000000e+00)  ; FMax(a,b)
  %1322 = call float @dx.op.binary.f32(i32 35, float %1320, float 0.000000e+00)  ; FMax(a,b)
  %1323 = call float @dx.op.binary.f32(i32 36, float %1321, float %1315)  ; FMin(a,b)
  %1324 = call float @dx.op.binary.f32(i32 36, float %1322, float %1315)  ; FMin(a,b)
  %1325 = fptoui float %1323 to i32
  %1326 = fptoui float %1324 to i32
  %1327 = lshr i32 %1254, %1312
  %1328 = lshr i32 %1253, %1312
  %1329 = add i32 %1325, %1327
  %1330 = add i32 %1326, %1328
  %1331 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 %1310, i32 %1329, i32 %1330, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1332 = extractvalue %dx.types.ResRet.i32 %1331, 0
  %1333 = and i32 %1332, 255
  %1334 = uitofp i32 %1333 to float
  %1335 = lshr i32 %1332, 8
  %1336 = and i32 %1335, 255
  %1337 = uitofp i32 %1336 to float
  %1338 = lshr i32 %1332, 16
  %1339 = and i32 %1338, 255
  %1340 = uitofp i32 %1339 to float
  %1341 = fptoui float %1340 to i32
  %1342 = lshr i32 %1332, 24
  %1343 = uitofp i32 %1342 to float
  %1344 = fadd fast float %1343, 1.000000e+00
  %1345 = fptoui float %1344 to i32
  %1346 = uitofp i32 %1345 to float
  %1347 = fmul fast float %1346, %1302
  %1348 = fmul fast float %1346, %1303
  %1349 = add i32 %1345, -1
  %1350 = uitofp i32 %1349 to float
  %1351 = call float @dx.op.unary.f32(i32 27, float %1347)  ; Round_ni(value)
  %1352 = call float @dx.op.unary.f32(i32 27, float %1348)  ; Round_ni(value)
  %1353 = call float @dx.op.binary.f32(i32 35, float %1351, float 0.000000e+00)  ; FMax(a,b)
  %1354 = call float @dx.op.binary.f32(i32 35, float %1352, float 0.000000e+00)  ; FMax(a,b)
  %1355 = call float @dx.op.binary.f32(i32 36, float %1353, float %1350)  ; FMin(a,b)
  %1356 = call float @dx.op.binary.f32(i32 36, float %1354, float %1350)  ; FMin(a,b)
  %1357 = fsub fast float %1347, %1355
  %1358 = fsub fast float %1348, %1356
  %1359 = fmul fast float %1334, 3.200000e+01
  %1360 = fmul fast float %1337, 3.200000e+01
  %1361 = fmul fast float %1357, 3.000000e+01
  %1362 = fmul fast float %1358, 3.000000e+01
  %1363 = fadd fast float %1359, 1.500000e+00
  %1364 = fadd fast float %1363, %1361
  %1365 = fadd fast float %1360, 1.500000e+00
  %1366 = fadd fast float %1365, %1362
  %1367 = fdiv fast float %1364, %1234
  %1368 = fdiv fast float %1366, %1234
  %1369 = uitofp i32 %1341 to float
  %1370 = fsub fast float %1301, %1369
  %1371 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1372 = sub i32 1, %1307
  %1373 = add i32 %1372, %1305
  %1374 = call i32 @dx.op.binary.i32(i32 37, i32 %1373, i32 0)  ; IMax(a,b)
  %1375 = call i32 @dx.op.binary.i32(i32 38, i32 %1374, i32 %1252)  ; IMin(a,b)
  %1376 = and i32 %1375, 31
  %1377 = lshr i32 %1311, %1376
  %1378 = add i32 %1377, -1
  %1379 = uitofp i32 %1378 to float
  %1380 = uitofp i32 %1377 to float
  %1381 = fmul fast float %1380, %1302
  %1382 = fmul fast float %1380, %1303
  %1383 = call float @dx.op.unary.f32(i32 27, float %1381)  ; Round_ni(value)
  %1384 = call float @dx.op.unary.f32(i32 27, float %1382)  ; Round_ni(value)
  %1385 = call float @dx.op.binary.f32(i32 35, float %1383, float 0.000000e+00)  ; FMax(a,b)
  %1386 = call float @dx.op.binary.f32(i32 35, float %1384, float 0.000000e+00)  ; FMax(a,b)
  %1387 = call float @dx.op.binary.f32(i32 36, float %1385, float %1379)  ; FMin(a,b)
  %1388 = call float @dx.op.binary.f32(i32 36, float %1386, float %1379)  ; FMin(a,b)
  %1389 = fptoui float %1387 to i32
  %1390 = fptoui float %1388 to i32
  %1391 = lshr i32 %1254, %1376
  %1392 = lshr i32 %1253, %1376
  %1393 = add i32 %1389, %1391
  %1394 = add i32 %1390, %1392
  %1395 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 %1375, i32 %1393, i32 %1394, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1396 = extractvalue %dx.types.ResRet.i32 %1395, 0
  %1397 = and i32 %1396, 255
  %1398 = uitofp i32 %1397 to float
  %1399 = lshr i32 %1396, 8
  %1400 = and i32 %1399, 255
  %1401 = uitofp i32 %1400 to float
  %1402 = lshr i32 %1396, 24
  %1403 = uitofp i32 %1402 to float
  %1404 = fadd fast float %1403, 1.000000e+00
  %1405 = fptoui float %1404 to i32
  %1406 = uitofp i32 %1405 to float
  %1407 = fmul fast float %1406, %1302
  %1408 = fmul fast float %1406, %1303
  %1409 = add i32 %1405, -1
  %1410 = uitofp i32 %1409 to float
  %1411 = call float @dx.op.unary.f32(i32 27, float %1407)  ; Round_ni(value)
  %1412 = call float @dx.op.unary.f32(i32 27, float %1408)  ; Round_ni(value)
  %1413 = call float @dx.op.binary.f32(i32 35, float %1411, float 0.000000e+00)  ; FMax(a,b)
  %1414 = call float @dx.op.binary.f32(i32 35, float %1412, float 0.000000e+00)  ; FMax(a,b)
  %1415 = call float @dx.op.binary.f32(i32 36, float %1413, float %1410)  ; FMin(a,b)
  %1416 = call float @dx.op.binary.f32(i32 36, float %1414, float %1410)  ; FMin(a,b)
  %1417 = fsub fast float %1407, %1415
  %1418 = fsub fast float %1408, %1416
  %1419 = fmul fast float %1398, 3.200000e+01
  %1420 = fmul fast float %1401, 3.200000e+01
  %1421 = fmul fast float %1417, 3.000000e+01
  %1422 = fmul fast float %1418, 3.000000e+01
  %1423 = fadd fast float %1419, 1.500000e+00
  %1424 = fadd fast float %1423, %1421
  %1425 = fadd fast float %1420, 1.500000e+00
  %1426 = fadd fast float %1425, %1422
  %1427 = fdiv fast float %1424, %1234
  %1428 = fdiv fast float %1426, %1234
  %1429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %1194, float %1367, float %1368, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1430 = extractvalue %dx.types.ResRet.f32 %1429, 0
  %1431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %1194, float %1427, float %1428, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1432 = extractvalue %dx.types.ResRet.f32 %1431, 0
  %1433 = fsub fast float %1432, %1430
  %1434 = fmul fast float %1433, %1371
  %1435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 300)  ; CBufferLoadLegacy(handle,regIndex)
  %1436 = extractvalue %dx.types.CBufRet.f32 %1435, 3
  %1437 = fsub fast float %1430, %1436
  %1438 = fadd fast float %1437, %1434
  %1439 = extractvalue %dx.types.CBufRet.f32 %1435, 2
  %1440 = fmul fast float %1438, %1439
  %1441 = fmul fast float %1440, %1191
  %1442 = fmul fast float %1440, %1192
  %1443 = fmul fast float %1440, %1193
  %1444 = fadd fast float %1441, %1176
  %1445 = fadd fast float %1442, %1177
  %1446 = fadd fast float %1443, %1178
  %1447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1448 = extractvalue %dx.types.CBufRet.f32 %1447, 0
  %1449 = extractvalue %dx.types.CBufRet.f32 %1447, 1
  %1450 = extractvalue %dx.types.CBufRet.f32 %1447, 2
  %1451 = extractvalue %dx.types.CBufRet.f32 %1447, 3
  %1452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1453 = extractvalue %dx.types.CBufRet.f32 %1452, 0
  %1454 = extractvalue %dx.types.CBufRet.f32 %1452, 1
  %1455 = extractvalue %dx.types.CBufRet.f32 %1452, 2
  %1456 = extractvalue %dx.types.CBufRet.f32 %1452, 3
  %1457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.f32 %1457, 0
  %1459 = extractvalue %dx.types.CBufRet.f32 %1457, 1
  %1460 = extractvalue %dx.types.CBufRet.f32 %1457, 2
  %1461 = extractvalue %dx.types.CBufRet.f32 %1457, 3
  %1462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1463 = extractvalue %dx.types.CBufRet.f32 %1462, 0
  %1464 = extractvalue %dx.types.CBufRet.f32 %1462, 1
  %1465 = extractvalue %dx.types.CBufRet.f32 %1462, 2
  %1466 = extractvalue %dx.types.CBufRet.f32 %1462, 3
  %1467 = fmul fast float %1444, %1448
  %1468 = call float @dx.op.tertiary.f32(i32 46, float %1445, float %1449, float %1467)  ; FMad(a,b,c)
  %1469 = call float @dx.op.tertiary.f32(i32 46, float %1446, float %1450, float %1468)  ; FMad(a,b,c)
  %1470 = fadd fast float %1469, %1451
  %1471 = fmul fast float %1444, %1453
  %1472 = call float @dx.op.tertiary.f32(i32 46, float %1445, float %1454, float %1471)  ; FMad(a,b,c)
  %1473 = call float @dx.op.tertiary.f32(i32 46, float %1446, float %1455, float %1472)  ; FMad(a,b,c)
  %1474 = fadd fast float %1473, %1456
  %1475 = fmul fast float %1444, %1458
  %1476 = call float @dx.op.tertiary.f32(i32 46, float %1445, float %1459, float %1475)  ; FMad(a,b,c)
  %1477 = call float @dx.op.tertiary.f32(i32 46, float %1446, float %1460, float %1476)  ; FMad(a,b,c)
  %1478 = fadd fast float %1477, %1461
  %1479 = fmul fast float %1444, %1463
  %1480 = call float @dx.op.tertiary.f32(i32 46, float %1445, float %1464, float %1479)  ; FMad(a,b,c)
  %1481 = call float @dx.op.tertiary.f32(i32 46, float %1446, float %1465, float %1480)  ; FMad(a,b,c)
  %1482 = fadd fast float %1481, %1466
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1470)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1474)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1478)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1482)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1176)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1177)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1178)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %77)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %88)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 0, float %1186)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 1, float %1188)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!24}
!dx.entryPoints = !{!25}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"ds", i32 6, i32 0}
!4 = !{!5, null, !17, !21}
!5 = !{!6, !8, !9, !11, !12, !13, !14, !15, !16}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 2, i32 68, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 64, i32 1, i32 2, i32 0, !10}
!10 = !{i32 0, i32 5}
!11 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 38, i32 1, i32 11, i32 0, null}
!12 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 39, i32 1, i32 11, i32 0, null}
!13 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 40, i32 1, i32 11, i32 0, null}
!14 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 41, i32 1, i32 11, i32 0, null}
!15 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 42, i32 1, i32 11, i32 0, null}
!16 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 36, i32 1, i32 11, i32 0, null}
!17 = !{!18, !19, !20}
!18 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!19 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!20 = !{i32 2, %superterrainConstantBuffer* undef, !"", i32 0, i32 0, i32 1, i32 36, null}
!21 = !{!22, !23}
!22 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!23 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!24 = !{[21 x i32] [i32 5, i32 14, i32 7263, i32 11375, i32 0, i32 0, i32 0, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!25 = !{void ()* @ds_main, !"ds_main", !26, !4, !45}
!26 = !{!27, !33, !41}
!27 = !{!28, !31}
!28 = !{i32 0, !"TEXCOORD", i8 9, i8 0, !29, i8 2, i32 1, i8 3, i32 0, i8 0, !30}
!29 = !{i32 0}
!30 = !{i32 3, i32 3}
!31 = !{i32 1, !"TEXCOORD", i8 5, i8 0, !32, i8 1, i32 1, i8 1, i32 1, i8 0, null}
!32 = !{i32 2}
!33 = !{!34, !36, !38, !39}
!34 = !{i32 0, !"SV_Position", i8 9, i8 3, !29, i8 4, i32 1, i8 4, i32 0, i8 0, !35}
!35 = !{i32 3, i32 15}
!36 = !{i32 1, !"POS", i8 9, i8 0, !29, i8 2, i32 1, i8 3, i32 1, i8 0, !37}
!37 = !{i32 3, i32 7}
!38 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !29, i8 2, i32 1, i8 4, i32 2, i8 0, !35}
!39 = !{i32 3, !"TEXCOORDS", i8 9, i8 0, !40, i8 2, i32 1, i8 2, i32 3, i8 0, !30}
!40 = !{i32 6}
!41 = !{!42, !44}
!42 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !43, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!43 = !{i32 0, i32 1, i32 2}
!44 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !29, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!45 = !{i32 0, i64 16, i32 2, !46}
!46 = !{i32 2, i32 3}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = !{!50, !50, i64 0}
!50 = !{!"float", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !{!54, !56, !57, !59}
!54 = distinct !{!54, !55, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z: %tangentX"}
!55 = distinct !{!55, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z"}
!56 = distinct !{!56, !55, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z: %tangentY"}
!57 = distinct !{!57, !58, !"\01?TerrainVertexShader@@YAXUTerrainVertexInput@@UInvocationIDs@@UTerrainPixelInput@@AIAV?$vector@M$02@@@Z: %pixel"}
!58 = distinct !{!58, !"\01?TerrainVertexShader@@YAXUTerrainVertexInput@@UInvocationIDs@@UTerrainPixelInput@@AIAV?$vector@M$02@@@Z"}
!59 = distinct !{!59, !58, !"\01?TerrainVertexShader@@YAXUTerrainVertexInput@@UInvocationIDs@@UTerrainPixelInput@@AIAV?$vector@M$02@@@Z: %objPos"}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = !{!57, !59}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}

