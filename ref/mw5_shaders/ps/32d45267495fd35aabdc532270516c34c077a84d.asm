;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 2     zw        2     NONE   float     zw
; TEXCOORD                 3   xy          3     NONE   float       
; TEXCOORD                 4     zw        3     NONE   float       
; TEXCOORD                 5   xy          4     NONE   float       
; TEXCOORD                 6     zw        4     NONE   float       
; TEXCOORD                 7   xy          5     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 3e30f58784628916d28ce70234d0da86
;
; Pipeline Runtime Information: 
;
; Pixel Shader
; DepthOutput=0
; SampleFrequency=0
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; COLOR                    0                 linear       
; TEXCOORD                 0                 linear       
; TEXCOORD                 2                 linear       
; TEXCOORD                 3                 linear       
; TEXCOORD                 4                 linear       
; TEXCOORD                 5                 linear       
; TEXCOORD                 6                 linear       
; TEXCOORD                 7                 linear       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
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
;   [320 x i8] (type annotation not present)
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
;   [64 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB2            cb1     1
;                                   cbuffer      NA          NA     CB3            cb4     1
;                                   sampler      NA          NA      S0             s2     1
;                                   sampler      NA          NA      S1             s3     1
;                                   sampler      NA          NA      S2             s4     1
;                                   texture     f32          3d      T0     t74,space2     1
;                                   texture     f32          2d      T1     t73,space2     1
;                                   texture     f32          2d      T2     t70,space2     1
;                                   texture    byte         r/o      T3     t15,space1     1
;                                   texture     f32          2d      T4     t76,space2     1
;                                   texture     f32          2d      T5             t0     1
;                                   texture     f32          2d      T6             t1     1
;                                   texture     f32          3d      T7     t71,space2     1
;
;
; ViewId state:
;
; Number of inputs: 22, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 20, 21 }
;   output 1 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 20, 21 }
;   output 2 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 20, 21 }
;   output 3 depends on inputs: { 0, 1, 7, 8, 9, 10, 11 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%tonemapping = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 76, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 70, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.f32 %28, 0
  %30 = extractvalue %dx.types.CBufRet.f32 %28, 1
  %31 = fsub fast float %26, %29
  %32 = fsub fast float %27, %30
  %33 = extractvalue %dx.types.CBufRet.f32 %28, 2
  %34 = extractvalue %dx.types.CBufRet.f32 %28, 3
  %35 = fmul fast float %31, %33
  %36 = fmul fast float %32, %34
  %37 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.f32 %37, 0
  %39 = extractvalue %dx.types.CBufRet.f32 %37, 1
  %40 = fmul fast float %35, %38
  %41 = fmul fast float %36, %39
  %42 = fptoui float %40 to i32
  %43 = fptoui float %41 to i32
  %44 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.i32 %44, 1
  %46 = shl i32 %45, 2
  %47 = extractvalue %dx.types.CBufRet.i32 %44, 3
  %48 = add i32 %46, %47
  %49 = lshr i32 %43, 2
  %50 = extractvalue %dx.types.CBufRet.i32 %44, 2
  %51 = mul i32 %49, %50
  %52 = lshr i32 %42, 3
  %53 = add i32 %48, %52
  %54 = add i32 %53, %51
  %55 = shl i32 %54, 2
  %56 = shl i32 %43, 3
  %57 = and i32 %56, 24
  %58 = and i32 %42, 7
  %59 = or i32 %57, %58
  %60 = shl i32 1, %59
  %61 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %55, i32 undef)  ; BufferLoad(srv,index,wot)
  %62 = extractvalue %dx.types.ResRet.i32 %61, 0
  %63 = and i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66, !dx.controlflow.hints !49

; <label>:65                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %66

; <label>:66                                      ; preds = %65, %0
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 3
  %69 = fcmp fast ogt float %68, 0.000000e+00
  br i1 %69, label %70, label %120, !dx.controlflow.hints !50

; <label>:70                                      ; preds = %66
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 3
  %73 = fmul fast float %72, 1.000000e+01
  %74 = call float @dx.op.unary.f32(i32 27, float %73)  ; Round_ni(value)
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = fmul fast float %76, %26
  %79 = fmul fast float %77, %27
  %80 = call float @dx.op.unary.f32(i32 27, float %78)  ; Round_ni(value)
  %81 = call float @dx.op.unary.f32(i32 27, float %79)  ; Round_ni(value)
  %82 = fmul fast float %74, 0x4002B851E0000000
  %83 = call float @dx.op.unary.f32(i32 22, float %82)  ; Frc(value)
  %84 = fadd fast float %83, 0x3FB99999A0000000
  %85 = fadd fast float %84, %80
  %86 = fadd fast float %84, %81
  %87 = fmul fast float %85, 0x3FE1BEDF00000000
  %88 = call float @dx.op.unary.f32(i32 22, float %87)  ; Frc(value)
  %89 = fmul fast float %85, %88
  %90 = fadd fast float %89, %86
  %91 = fmul fast float %86, 0x3FD3BEBE20000000
  %92 = call float @dx.op.unary.f32(i32 22, float %91)  ; Frc(value)
  %93 = fmul fast float %86, %92
  %94 = fadd fast float %93, %85
  %95 = fmul fast float %90, %94
  %96 = call float @dx.op.unary.f32(i32 22, float %95)  ; Frc(value)
  %97 = extractvalue %dx.types.CBufRet.f32 %75, 3
  %98 = bitcast float %97 to i32
  %99 = and i32 %98, 255
  %100 = uitofp i32 %99 to float
  %101 = fmul fast float %96, 0x4085373340000000
  %102 = call float @dx.op.unary.f32(i32 22, float %101)  ; Frc(value)
  %103 = fmul fast float %100, 0x3F6CE9B6A0000000
  %104 = fcmp fast olt float %102, %103
  br i1 %104, label %105, label %120, !dx.controlflow.hints !51

; <label>:105                                     ; preds = %70
  %106 = fdiv fast float %102, %103
  %107 = fmul fast float %106, 2.000000e+00
  %108 = fadd fast float %107, -1.000000e+00
  %109 = lshr i32 %98, 8
  %110 = and i32 %109, 255
  %111 = uitofp i32 %110 to float
  %112 = call float @dx.op.unary.f32(i32 83, float %20)  ; DerivCoarseX(value)
  %113 = call float @dx.op.unary.f32(i32 83, float %21)  ; DerivCoarseX(value)
  %114 = fmul fast float %108, %112
  %115 = fmul fast float %114, %111
  %116 = fmul fast float %113, %108
  %117 = fmul fast float %116, %111
  %118 = fadd fast float %115, %20
  %119 = fadd fast float %117, %21
  br label %120

; <label>:120                                     ; preds = %105, %70, %66
  %121 = phi float [ %118, %105 ], [ %20, %70 ], [ %20, %66 ]
  %122 = phi float [ %119, %105 ], [ %21, %70 ], [ %21, %66 ]
  %123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %11, float %121, float %122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 3
  %125 = fmul fast float %124, 2.000000e+00
  %126 = fadd fast float %125, -1.000000e+00
  %127 = call float @dx.op.unary.f32(i32 83, float %126)  ; DerivCoarseX(value)
  %128 = call float @dx.op.unary.f32(i32 84, float %126)  ; DerivCoarseY(value)
  %129 = fmul fast float %127, %127
  %130 = fmul fast float %128, %128
  %131 = fadd fast float %130, %129
  %132 = call float @dx.op.unary.f32(i32 24, float %131)  ; Sqrt(value)
  %133 = fmul fast float %132, 2.000000e+00
  %134 = fadd fast float %132, %126
  %135 = fdiv fast float %134, %133
  %136 = call float @dx.op.unary.f32(i32 7, float %135)  ; Saturate(value)
  %137 = fmul fast float %136, 2.000000e+00
  %138 = fsub fast float 3.000000e+00, %137
  %139 = fmul fast float %136, %136
  %140 = fmul fast float %139, %25
  %141 = fmul fast float %140, %138
  %142 = fcmp fast ole float %22, 0x3FA4B5DCC0000000
  %143 = fmul fast float %22, 0x3FB3D07220000000
  %144 = fadd fast float %22, 0x3FAC28F5C0000000
  %145 = fmul fast float %144, 0x3FEE54EDE0000000
  %146 = call float @dx.op.unary.f32(i32 23, float %145)  ; Log(value)
  %147 = fmul fast float %146, 0x4003333340000000
  %148 = call float @dx.op.unary.f32(i32 21, float %147)  ; Exp(value)
  %149 = select i1 %142, float %143, float %148
  %150 = fcmp fast ole float %23, 0x3FA4B5DCC0000000
  %151 = fmul fast float %23, 0x3FB3D07220000000
  %152 = fadd fast float %23, 0x3FAC28F5C0000000
  %153 = fmul fast float %152, 0x3FEE54EDE0000000
  %154 = call float @dx.op.unary.f32(i32 23, float %153)  ; Log(value)
  %155 = fmul fast float %154, 0x4003333340000000
  %156 = call float @dx.op.unary.f32(i32 21, float %155)  ; Exp(value)
  %157 = select i1 %150, float %151, float %156
  %158 = fcmp fast ole float %24, 0x3FA4B5DCC0000000
  %159 = fmul fast float %24, 0x3FB3D07220000000
  %160 = fadd fast float %24, 0x3FAC28F5C0000000
  %161 = fmul fast float %160, 0x3FEE54EDE0000000
  %162 = call float @dx.op.unary.f32(i32 23, float %161)  ; Log(value)
  %163 = fmul fast float %162, 0x4003333340000000
  %164 = call float @dx.op.unary.f32(i32 21, float %163)  ; Exp(value)
  %165 = select i1 %158, float %159, float %164
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 3
  %168 = bitcast float %167 to i32
  %169 = and i32 %168, 512
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %265, label %171

; <label>:171                                     ; preds = %120
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 3
  %174 = bitcast float %173 to i32
  %175 = and i32 %174, 65535
  %176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %175)  ; LegacyF16ToF32(value)
  %177 = lshr i32 %174, 16
  %178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %177)  ; LegacyF16ToF32(value)
  %179 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %180 = bitcast float %179 to i32
  %181 = and i32 %180, 65535
  %182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %181)  ; LegacyF16ToF32(value)
  %183 = lshr i32 %180, 16
  %184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %183)  ; LegacyF16ToF32(value)
  %185 = and i32 %168, 16
  %186 = icmp ne i32 %185, 0
  %187 = fcmp fast ogt float %176, 0.000000e+00
  %188 = fcmp fast ogt float %178, 0.000000e+00
  %189 = and i1 %187, %188
  %190 = fcmp fast ogt float %182, 0.000000e+00
  br i1 %189, label %191, label %251

; <label>:191                                     ; preds = %171
  br i1 %190, label %192, label %200

; <label>:192                                     ; preds = %191
  %193 = fmul fast float %178, %19
  %194 = fmul fast float %176, %18
  %195 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %9, float %194, float %193, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = fsub fast float 1.000000e+00, %196
  %198 = select i1 %186, float %197, float %196
  %199 = fmul fast float %198, %182
  br label %200

; <label>:200                                     ; preds = %192, %191
  %201 = phi float [ %199, %192 ], [ 0.000000e+00, %191 ]
  %202 = fadd fast float %201, %184
  %203 = call float @dx.op.unary.f32(i32 7, float %202)  ; Saturate(value)
  br i1 %190, label %204, label %214

; <label>:204                                     ; preds = %200
  %205 = fmul fast float %178, %19
  %206 = fsub fast float 1.000000e+00, %18
  %207 = fmul fast float %176, %206
  %208 = fsub fast float 1.000000e+00, %207
  %209 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %9, float %208, float %205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 1
  %211 = fsub fast float 1.000000e+00, %210
  %212 = select i1 %186, float %211, float %210
  %213 = fmul fast float %212, %182
  br label %214

; <label>:214                                     ; preds = %204, %200
  %215 = phi float [ %213, %204 ], [ 0.000000e+00, %200 ]
  %216 = fadd fast float %215, %184
  %217 = call float @dx.op.unary.f32(i32 7, float %216)  ; Saturate(value)
  %218 = fmul fast float %217, %203
  br i1 %190, label %219, label %231

; <label>:219                                     ; preds = %214
  %220 = fsub fast float 1.000000e+00, %19
  %221 = fmul fast float %178, %220
  %222 = fsub fast float 1.000000e+00, %221
  %223 = fsub fast float 1.000000e+00, %18
  %224 = fmul fast float %176, %223
  %225 = fsub fast float 1.000000e+00, %224
  %226 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %9, float %225, float %222, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %227 = extractvalue %dx.types.ResRet.f32 %226, 2
  %228 = fsub fast float 1.000000e+00, %227
  %229 = select i1 %186, float %228, float %227
  %230 = fmul fast float %229, %182
  br label %231

; <label>:231                                     ; preds = %219, %214
  %232 = phi float [ %230, %219 ], [ 0.000000e+00, %214 ]
  %233 = fadd fast float %232, %184
  %234 = call float @dx.op.unary.f32(i32 7, float %233)  ; Saturate(value)
  %235 = fmul fast float %218, %234
  br i1 %190, label %236, label %246

; <label>:236                                     ; preds = %231
  %237 = fsub fast float 1.000000e+00, %19
  %238 = fmul fast float %178, %237
  %239 = fsub fast float 1.000000e+00, %238
  %240 = fmul fast float %176, %18
  %241 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %9, float %240, float %239, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 3
  %243 = fsub fast float 1.000000e+00, %242
  %244 = select i1 %186, float %243, float %242
  %245 = fmul fast float %244, %182
  br label %246

; <label>:246                                     ; preds = %236, %231
  %247 = phi float [ %245, %236 ], [ 0.000000e+00, %231 ]
  %248 = fadd fast float %247, %184
  %249 = call float @dx.op.unary.f32(i32 7, float %248)  ; Saturate(value)
  %250 = fmul fast float %235, %249
  br label %262

; <label>:251                                     ; preds = %171
  br i1 %190, label %252, label %258

; <label>:252                                     ; preds = %251
  %253 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %9, float %18, float %19, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = fsub fast float 1.000000e+00, %254
  %256 = select i1 %186, float %255, float %254
  %257 = fmul fast float %256, %182
  br label %258

; <label>:258                                     ; preds = %252, %251
  %259 = phi float [ %257, %252 ], [ 0.000000e+00, %251 ]
  %260 = fadd fast float %259, %184
  %261 = call float @dx.op.unary.f32(i32 7, float %260)  ; Saturate(value)
  br label %262

; <label>:262                                     ; preds = %258, %246
  %263 = phi float [ %250, %246 ], [ %261, %258 ]
  %264 = fmul fast float %263, %141
  br label %265

; <label>:265                                     ; preds = %262, %120
  %266 = phi float [ %264, %262 ], [ %141, %120 ]
  %267 = call float @dx.op.binary.f32(i32 35, float %266, float 0.000000e+00)  ; FMax(a,b)
  %268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.f32 %268, 3
  %270 = bitcast float %269 to i32
  %271 = and i32 %270, 1
  %272 = icmp eq i32 %271, 0
  %273 = and i32 %270, 4
  %274 = icmp eq i32 %273, 0
  br i1 %272, label %348, label %275, !dx.controlflow.hints !52

; <label>:275                                     ; preds = %265
  %276 = and i32 %270, 2
  %277 = icmp eq i32 %276, 0
  %278 = extractvalue %dx.types.CBufRet.f32 %268, 0
  %279 = extractvalue %dx.types.CBufRet.f32 %268, 1
  %280 = extractvalue %dx.types.CBufRet.f32 %268, 2
  %281 = fmul fast float %278, %149
  %282 = fmul fast float %279, %157
  %283 = fmul fast float %280, %165
  %284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.f32 %284, 0
  %286 = fmul fast float %285, %281
  %287 = fmul fast float %285, %282
  %288 = fmul fast float %285, %283
  br i1 %277, label %348, label %289, !dx.controlflow.hints !53

; <label>:289                                     ; preds = %275
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 0
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 0
  %294 = extractvalue %dx.types.CBufRet.f32 %292, 1
  %295 = extractvalue %dx.types.CBufRet.f32 %292, 2
  %296 = call float @dx.op.dot3.f32(i32 55, float %286, float %287, float %288, float %293, float %294, float %295)  ; Dot3(ax,ay,az,bx,by,bz)
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %299 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %300 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %301 = call float @dx.op.dot3.f32(i32 55, float %286, float %287, float %288, float %298, float %299, float %300)  ; Dot3(ax,ay,az,bx,by,bz)
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 0
  %304 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %305 = extractvalue %dx.types.CBufRet.f32 %302, 2
  %306 = call float @dx.op.dot3.f32(i32 55, float %286, float %287, float %288, float %303, float %304, float %305)  ; Dot3(ax,ay,az,bx,by,bz)
  %307 = fmul fast float %296, %291
  %308 = fmul fast float %301, %291
  %309 = fmul fast float %306, %291
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %312 = fmul fast float %307, %311
  %313 = fmul fast float %308, %311
  %314 = fmul fast float %309, %311
  %315 = fadd fast float %312, 9.765625e-04
  %316 = fadd fast float %313, 9.765625e-04
  %317 = fadd fast float %314, 9.765625e-04
  %318 = call float @dx.op.unary.f32(i32 23, float %315)  ; Log(value)
  %319 = call float @dx.op.unary.f32(i32 23, float %316)  ; Log(value)
  %320 = call float @dx.op.unary.f32(i32 23, float %317)  ; Log(value)
  %321 = fadd fast float %318, 1.000000e+01
  %322 = fadd fast float %319, 1.000000e+01
  %323 = fadd fast float %320, 1.000000e+01
  %324 = fmul fast float %321, 0x3FA99999A0000000
  %325 = fmul fast float %322, 0x3FA99999A0000000
  %326 = fmul fast float %323, 0x3FA99999A0000000
  %327 = call float @dx.op.unary.f32(i32 7, float %324)  ; Saturate(value)
  %328 = call float @dx.op.unary.f32(i32 7, float %325)  ; Saturate(value)
  %329 = call float @dx.op.unary.f32(i32 7, float %326)  ; Saturate(value)
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 0
  %332 = extractvalue %dx.types.CBufRet.f32 %330, 1
  %333 = extractvalue %dx.types.CBufRet.f32 %330, 2
  %334 = fmul fast float %331, %327
  %335 = fmul fast float %332, %328
  %336 = fmul fast float %333, %329
  %337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.f32 %337, 0
  %339 = extractvalue %dx.types.CBufRet.f32 %337, 1
  %340 = extractvalue %dx.types.CBufRet.f32 %337, 2
  %341 = fadd fast float %334, %338
  %342 = fadd fast float %335, %339
  %343 = fadd fast float %336, %340
  %344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %11, float %341, float %342, float %343, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %345 = extractvalue %dx.types.ResRet.f32 %344, 0
  %346 = extractvalue %dx.types.ResRet.f32 %344, 1
  %347 = extractvalue %dx.types.ResRet.f32 %344, 2
  br label %348

; <label>:348                                     ; preds = %289, %275, %265
  %349 = phi float [ %345, %289 ], [ %149, %265 ], [ %286, %275 ]
  %350 = phi float [ %346, %289 ], [ %157, %265 ], [ %287, %275 ]
  %351 = phi float [ %347, %289 ], [ %165, %265 ], [ %288, %275 ]
  %352 = fcmp fast oeq float %267, 0.000000e+00
  br i1 %352, label %353, label %354, !dx.controlflow.hints !54

; <label>:353                                     ; preds = %348
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %354

; <label>:354                                     ; preds = %353, %348
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %355 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %10, float %16, float %17, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %356 = extractvalue %dx.types.ResRet.f32 %355, 0
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 3
  %359 = bitcast float %358 to i32
  %360 = and i32 %359, 65535
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = fcmp fast une float %361, 0.000000e+00
  %363 = select i1 %362, float 0.000000e+00, float 1.000000e+00
  %364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.f32 %364, 3
  %366 = fmul fast float %365, %356
  %367 = fmul fast float %366, %363
  %368 = fsub fast float 1.000000e+00, %367
  %369 = fmul fast float %368, %349
  %370 = fmul fast float %368, %350
  %371 = fmul fast float %368, %351
  %372 = extractvalue %dx.types.CBufRet.f32 %364, 0
  %373 = extractvalue %dx.types.CBufRet.f32 %364, 1
  %374 = extractvalue %dx.types.CBufRet.f32 %364, 2
  %375 = fmul fast float %372, %366
  %376 = fmul fast float %373, %366
  %377 = fmul fast float %374, %366
  %378 = fadd fast float %369, %375
  %379 = fadd fast float %370, %376
  %380 = fadd fast float %371, %377
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 2
  %383 = fcmp fast ogt float %382, 0.000000e+00
  br i1 %383, label %384, label %450, !dx.controlflow.hints !55

; <label>:384                                     ; preds = %354
  %385 = fcmp fast oeq float %382, 2.000000e+00
  br i1 %385, label %386, label %438, !dx.controlflow.hints !56

; <label>:386                                     ; preds = %384
  %387 = fcmp fast ole float %378, 0x3F69A5C380000000
  %388 = fcmp fast ole float %379, 0x3F69A5C380000000
  %389 = fcmp fast ole float %380, 0x3F69A5C380000000
  %390 = fmul fast float %378, 0x4029D70A40000000
  %391 = fmul fast float %379, 0x4029D70A40000000
  %392 = fmul fast float %380, 0x4029D70A40000000
  %393 = call float @dx.op.unary.f32(i32 23, float %378)  ; Log(value)
  %394 = call float @dx.op.unary.f32(i32 23, float %379)  ; Log(value)
  %395 = call float @dx.op.unary.f32(i32 23, float %380)  ; Log(value)
  %396 = fmul fast float %393, 0x3FDAAAAAA0000000
  %397 = fmul fast float %394, 0x3FDAAAAAA0000000
  %398 = fmul fast float %395, 0x3FDAAAAAA0000000
  %399 = call float @dx.op.unary.f32(i32 21, float %396)  ; Exp(value)
  %400 = call float @dx.op.unary.f32(i32 21, float %397)  ; Exp(value)
  %401 = call float @dx.op.unary.f32(i32 21, float %398)  ; Exp(value)
  %402 = fmul fast float %399, 0x3FF0E147A0000000
  %403 = fmul fast float %400, 0x3FF0E147A0000000
  %404 = fmul fast float %401, 0x3FF0E147A0000000
  %405 = fadd fast float %402, 0xBFAC28F5C0000000
  %406 = fadd fast float %403, 0xBFAC28F5C0000000
  %407 = fadd fast float %404, 0xBFAC28F5C0000000
  %408 = select i1 %387, float %390, float %405
  %409 = select i1 %388, float %391, float %406
  %410 = select i1 %389, float %392, float %407
  %411 = fsub fast float 1.000000e+00, %408
  %412 = fsub fast float 1.000000e+00, %409
  %413 = fsub fast float 1.000000e+00, %410
  %414 = fcmp fast ole float %411, 0x3FA4B5DCC0000000
  %415 = fmul fast float %411, 0x3FB3D07220000000
  %416 = fsub fast float 0x3FF0E147A0000000, %408
  %417 = fmul fast float %416, 0x3FEE54EDE0000000
  %418 = call float @dx.op.unary.f32(i32 23, float %417)  ; Log(value)
  %419 = fmul fast float %418, 0x4003333340000000
  %420 = call float @dx.op.unary.f32(i32 21, float %419)  ; Exp(value)
  %421 = select i1 %414, float %415, float %420
  %422 = fcmp fast ole float %412, 0x3FA4B5DCC0000000
  %423 = fmul fast float %412, 0x3FB3D07220000000
  %424 = fsub fast float 0x3FF0E147A0000000, %409
  %425 = fmul fast float %424, 0x3FEE54EDE0000000
  %426 = call float @dx.op.unary.f32(i32 23, float %425)  ; Log(value)
  %427 = fmul fast float %426, 0x4003333340000000
  %428 = call float @dx.op.unary.f32(i32 21, float %427)  ; Exp(value)
  %429 = select i1 %422, float %423, float %428
  %430 = fcmp fast ole float %413, 0x3FA4B5DCC0000000
  %431 = fmul fast float %413, 0x3FB3D07220000000
  %432 = fsub fast float 0x3FF0E147A0000000, %410
  %433 = fmul fast float %432, 0x3FEE54EDE0000000
  %434 = call float @dx.op.unary.f32(i32 23, float %433)  ; Log(value)
  %435 = fmul fast float %434, 0x4003333340000000
  %436 = call float @dx.op.unary.f32(i32 21, float %435)  ; Exp(value)
  %437 = select i1 %430, float %431, float %436
  br label %450

; <label>:438                                     ; preds = %384
  %439 = call float @dx.op.dot3.f32(i32 55, float %378, float %379, float %380, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %440 = extractvalue %dx.types.CBufRet.f32 %381, 3
  %441 = fsub fast float %378, %439
  %442 = fsub fast float %379, %439
  %443 = fsub fast float %380, %439
  %444 = fmul fast float %440, %441
  %445 = fmul fast float %440, %442
  %446 = fmul fast float %440, %443
  %447 = fadd fast float %444, %439
  %448 = fadd fast float %445, %439
  %449 = fadd fast float %446, %439
  br label %450

; <label>:450                                     ; preds = %438, %386, %354
  %451 = phi float [ %421, %386 ], [ %447, %438 ], [ %378, %354 ]
  %452 = phi float [ %429, %386 ], [ %448, %438 ], [ %379, %354 ]
  %453 = phi float [ %437, %386 ], [ %449, %438 ], [ %380, %354 ]
  %454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.f32 %454, 0
  %456 = fcmp fast une float %455, 0.000000e+00
  br i1 %456, label %457, label %631, !dx.controlflow.hints !57

; <label>:457                                     ; preds = %450
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 0
  %460 = extractvalue %dx.types.CBufRet.f32 %458, 1
  %461 = fsub fast float %26, %459
  %462 = fsub fast float %27, %460
  %463 = extractvalue %dx.types.CBufRet.f32 %458, 2
  %464 = extractvalue %dx.types.CBufRet.f32 %458, 3
  %465 = fmul fast float %461, %463
  %466 = fmul fast float %462, %464
  %467 = call float @dx.op.unary.f32(i32 6, float %455)  ; FAbs(value)
  %468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %11, float %465, float %466, float undef, float undef, i32 0, i32 0, i32 undef, float %467)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 0
  %470 = extractvalue %dx.types.ResRet.f32 %468, 1
  %471 = extractvalue %dx.types.ResRet.f32 %468, 2
  %472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.i32 %472, 3
  %474 = and i32 %473, 3
  %475 = icmp ne i32 %474, 0
  %476 = and i32 %473, 4
  %477 = icmp eq i32 %476, 0
  %478 = and i1 %475, %477
  br i1 %478, label %479, label %523

; <label>:479                                     ; preds = %457
  %480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.f32 %480, 0
  %482 = fcmp fast oge float %470, %481
  %483 = zext i1 %482 to i32
  br i1 %482, label %484, label %523

; <label>:484                                     ; preds = %479
  %485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %486 = extractvalue %dx.types.CBufRet.f32 %485, 3
  %487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %488 = extractvalue %dx.types.CBufRet.f32 %487, 2
  %489 = fcmp fast ogt float %488, 0.000000e+00
  br i1 %489, label %490, label %498, !dx.controlflow.hints !58

; <label>:490                                     ; preds = %484
  %491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %11, float %470, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %492 = extractvalue %dx.types.ResRet.f32 %491, 0
  %493 = extractvalue %dx.types.ResRet.f32 %491, 1
  %494 = extractvalue %dx.types.ResRet.f32 %491, 2
  %495 = fcmp fast ogt float %488, 1.500000e+00
  %496 = select i1 %495, float %492, float %493
  %497 = select i1 %495, float %492, float %494
  br label %516

; <label>:498                                     ; preds = %484
  %499 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %501 = extractvalue %dx.types.CBufRet.f32 %500, 0
  %502 = extractvalue %dx.types.CBufRet.f32 %500, 1
  %503 = extractvalue %dx.types.CBufRet.f32 %500, 2
  %504 = extractvalue %dx.types.CBufRet.f32 %485, 0
  %505 = extractvalue %dx.types.CBufRet.f32 %485, 1
  %506 = extractvalue %dx.types.CBufRet.f32 %485, 2
  %507 = fsub fast float %501, %504
  %508 = fsub fast float %502, %505
  %509 = fsub fast float %503, %506
  %510 = fmul fast float %507, %499
  %511 = fmul fast float %508, %499
  %512 = fmul fast float %509, %499
  %513 = fadd fast float %510, %504
  %514 = fadd fast float %511, %505
  %515 = fadd fast float %512, %506
  br label %516

; <label>:516                                     ; preds = %498, %490
  %517 = phi float [ %492, %490 ], [ %513, %498 ]
  %518 = phi float [ %496, %490 ], [ %514, %498 ]
  %519 = phi float [ %497, %490 ], [ %515, %498 ]
  %520 = fmul fast float %517, %486
  %521 = fmul fast float %518, %486
  %522 = fmul fast float %519, %486
  br label %523

; <label>:523                                     ; preds = %516, %479, %457
  %524 = phi float [ %520, %516 ], [ %469, %457 ], [ %469, %479 ]
  %525 = phi float [ %521, %516 ], [ %470, %457 ], [ %469, %479 ]
  %526 = phi float [ %522, %516 ], [ %471, %457 ], [ %469, %479 ]
  %527 = phi i32 [ %483, %516 ], [ 0, %457 ], [ %483, %479 ]
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %583

; <label>:529                                     ; preds = %523
  %530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %531 = extractvalue %dx.types.CBufRet.f32 %530, 0
  %532 = extractvalue %dx.types.CBufRet.f32 %530, 1
  %533 = extractvalue %dx.types.CBufRet.f32 %530, 2
  %534 = call float @dx.op.dot3.f32(i32 55, float %524, float %525, float %526, float %531, float %532, float %533)  ; Dot3(ax,ay,az,bx,by,bz)
  %535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %536 = extractvalue %dx.types.CBufRet.f32 %535, 0
  %537 = extractvalue %dx.types.CBufRet.f32 %535, 1
  %538 = extractvalue %dx.types.CBufRet.f32 %535, 2
  %539 = call float @dx.op.dot3.f32(i32 55, float %524, float %525, float %526, float %536, float %537, float %538)  ; Dot3(ax,ay,az,bx,by,bz)
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 0
  %542 = extractvalue %dx.types.CBufRet.f32 %540, 1
  %543 = extractvalue %dx.types.CBufRet.f32 %540, 2
  %544 = call float @dx.op.dot3.f32(i32 55, float %524, float %525, float %526, float %541, float %542, float %543)  ; Dot3(ax,ay,az,bx,by,bz)
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 2
  %547 = fmul fast float %546, %534
  %548 = fmul fast float %546, %539
  %549 = fmul fast float %546, %544
  %550 = fadd fast float %547, 9.765625e-04
  %551 = fadd fast float %548, 9.765625e-04
  %552 = fadd fast float %549, 9.765625e-04
  %553 = call float @dx.op.unary.f32(i32 23, float %550)  ; Log(value)
  %554 = call float @dx.op.unary.f32(i32 23, float %551)  ; Log(value)
  %555 = call float @dx.op.unary.f32(i32 23, float %552)  ; Log(value)
  %556 = fadd fast float %553, 1.000000e+01
  %557 = fadd fast float %554, 1.000000e+01
  %558 = fadd fast float %555, 1.000000e+01
  %559 = fmul fast float %556, 0x3FA99999A0000000
  %560 = fmul fast float %557, 0x3FA99999A0000000
  %561 = fmul fast float %558, 0x3FA99999A0000000
  %562 = call float @dx.op.unary.f32(i32 7, float %559)  ; Saturate(value)
  %563 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  %564 = call float @dx.op.unary.f32(i32 7, float %561)  ; Saturate(value)
  %565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %566 = extractvalue %dx.types.CBufRet.f32 %565, 0
  %567 = extractvalue %dx.types.CBufRet.f32 %565, 1
  %568 = extractvalue %dx.types.CBufRet.f32 %565, 2
  %569 = fmul fast float %566, %562
  %570 = fmul fast float %567, %563
  %571 = fmul fast float %568, %564
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 0
  %574 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %575 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %576 = fadd fast float %569, %573
  %577 = fadd fast float %570, %574
  %578 = fadd fast float %571, %575
  %579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %11, float %576, float %577, float %578, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %580 = extractvalue %dx.types.ResRet.f32 %579, 0
  %581 = extractvalue %dx.types.ResRet.f32 %579, 1
  %582 = extractvalue %dx.types.ResRet.f32 %579, 2
  br label %583

; <label>:583                                     ; preds = %529, %523
  %584 = phi float [ %524, %523 ], [ %580, %529 ]
  %585 = phi float [ %525, %523 ], [ %581, %529 ]
  %586 = phi float [ %526, %523 ], [ %582, %529 ]
  %587 = fcmp fast ole float %584, 0x3FA4B5DCC0000000
  %588 = fmul fast float %584, 0x3FB3D07220000000
  %589 = fadd fast float %584, 0x3FAC28F5C0000000
  %590 = fmul fast float %589, 0x3FEE54EDE0000000
  %591 = call float @dx.op.unary.f32(i32 23, float %590)  ; Log(value)
  %592 = fmul fast float %591, 0x4003333340000000
  %593 = call float @dx.op.unary.f32(i32 21, float %592)  ; Exp(value)
  %594 = select i1 %587, float %588, float %593
  %595 = fcmp fast ole float %585, 0x3FA4B5DCC0000000
  %596 = fmul fast float %585, 0x3FB3D07220000000
  %597 = fadd fast float %585, 0x3FAC28F5C0000000
  %598 = fmul fast float %597, 0x3FEE54EDE0000000
  %599 = call float @dx.op.unary.f32(i32 23, float %598)  ; Log(value)
  %600 = fmul fast float %599, 0x4003333340000000
  %601 = call float @dx.op.unary.f32(i32 21, float %600)  ; Exp(value)
  %602 = select i1 %595, float %596, float %601
  %603 = fcmp fast ole float %586, 0x3FA4B5DCC0000000
  %604 = fmul fast float %586, 0x3FB3D07220000000
  %605 = fadd fast float %586, 0x3FAC28F5C0000000
  %606 = fmul fast float %605, 0x3FEE54EDE0000000
  %607 = call float @dx.op.unary.f32(i32 23, float %606)  ; Log(value)
  %608 = fmul fast float %607, 0x4003333340000000
  %609 = call float @dx.op.unary.f32(i32 21, float %608)  ; Exp(value)
  %610 = select i1 %603, float %604, float %609
  %611 = fcmp fast olt float %455, 0.000000e+00
  br i1 %611, label %612, label %624

; <label>:612                                     ; preds = %583
  %613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %614 = extractvalue %dx.types.CBufRet.f32 %613, 0
  %615 = extractvalue %dx.types.CBufRet.f32 %613, 1
  %616 = extractvalue %dx.types.CBufRet.f32 %613, 2
  %617 = call float @dx.op.dot3.f32(i32 55, float %594, float %602, float %610, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %618 = fsub fast float %617, %614
  %619 = fmul fast float %618, %615
  %620 = call float @dx.op.unary.f32(i32 7, float %619)  ; Saturate(value)
  %621 = fsub fast float 1.000000e+00, %616
  %622 = fmul fast float %620, %621
  %623 = fadd fast float %622, %616
  br label %624

; <label>:624                                     ; preds = %612, %583
  %625 = phi float [ %623, %612 ], [ %594, %583 ]
  %626 = phi float [ %623, %612 ], [ %602, %583 ]
  %627 = phi float [ %623, %612 ], [ %610, %583 ]
  %628 = fmul fast float %625, %451
  %629 = fmul fast float %626, %452
  %630 = fmul fast float %627, %453
  br label %631

; <label>:631                                     ; preds = %624, %450
  %632 = phi float [ %628, %624 ], [ %451, %450 ]
  %633 = phi float [ %629, %624 ], [ %452, %450 ]
  %634 = phi float [ %630, %624 ], [ %453, %450 ]
  %635 = extractvalue %dx.types.CBufRet.f32 %454, 1
  %636 = fcmp fast ogt float %635, 0.000000e+00
  br i1 %636, label %637, label %678, !dx.controlflow.hints !59

; <label>:637                                     ; preds = %631
  %638 = extractvalue %dx.types.CBufRet.f32 %454, 2
  %639 = bitcast float %638 to i32
  %640 = and i32 %639, 255
  %641 = uitofp i32 %640 to float
  %642 = lshr i32 %639, 8
  %643 = and i32 %642, 255
  %644 = uitofp i32 %643 to float
  %645 = lshr i32 %639, 16
  %646 = and i32 %645, 255
  %647 = uitofp i32 %646 to float
  %648 = fmul fast float %647, 0x3F70101020000000
  %649 = lshr i32 %639, 24
  %650 = uitofp i32 %649 to float
  %651 = fmul fast float %650, 0x3F70101020000000
  %652 = fadd fast float %647, %641
  %653 = fmul fast float %652, 0x3F70101020000000
  %654 = fadd fast float %644, %650
  %655 = fmul fast float %654, 0x3F70101020000000
  %656 = fdiv fast float %26, %653
  %657 = fdiv fast float %27, %655
  %658 = fsub fast float -0.000000e+00, %656
  %659 = fsub fast float -0.000000e+00, %657
  %660 = fcmp fast oge float %656, %658
  %661 = fcmp fast oge float %657, %659
  %662 = call float @dx.op.unary.f32(i32 6, float %656)  ; FAbs(value)
  %663 = call float @dx.op.unary.f32(i32 6, float %657)  ; FAbs(value)
  %664 = call float @dx.op.unary.f32(i32 22, float %662)  ; Frc(value)
  %665 = call float @dx.op.unary.f32(i32 22, float %663)  ; Frc(value)
  %666 = fsub fast float -0.000000e+00, %664
  %667 = fsub fast float -0.000000e+00, %665
  %668 = select i1 %660, float %664, float %666
  %669 = select i1 %661, float %665, float %667
  %670 = fmul fast float %653, %668
  %671 = fmul fast float %669, %655
  %672 = fcmp fast olt float %670, %648
  %673 = fcmp fast olt float %671, %651
  %674 = or i1 %672, %673
  br i1 %674, label %675, label %678, !dx.controlflow.hints !60

; <label>:675                                     ; preds = %637
  %676 = fsub fast float 1.000000e+00, %635
  %677 = fmul fast float %676, %267
  br label %678

; <label>:678                                     ; preds = %675, %637, %631
  %679 = phi float [ %677, %675 ], [ %267, %637 ], [ %267, %631 ]
  %680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %681 = extractvalue %dx.types.CBufRet.f32 %680, 3
  %682 = fcmp fast ogt float %681, 0.000000e+00
  br i1 %682, label %683, label %766, !dx.controlflow.hints !61

; <label>:683                                     ; preds = %678
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 2
  %686 = extractvalue %dx.types.CBufRet.f32 %684, 3
  %687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %688 = extractvalue %dx.types.CBufRet.f32 %687, 3
  %689 = fmul fast float %688, 1.000000e+01
  %690 = call float @dx.op.unary.f32(i32 27, float %689)  ; Round_ni(value)
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 0
  %693 = extractvalue %dx.types.CBufRet.f32 %691, 1
  %694 = fmul fast float %692, %26
  %695 = fmul fast float %693, %27
  %696 = call float @dx.op.unary.f32(i32 27, float %694)  ; Round_ni(value)
  %697 = call float @dx.op.unary.f32(i32 27, float %695)  ; Round_ni(value)
  %698 = fmul fast float %690, 0x4002B851E0000000
  %699 = call float @dx.op.unary.f32(i32 22, float %698)  ; Frc(value)
  %700 = fadd fast float %699, 0x3FB99999A0000000
  %701 = fadd fast float %700, %696
  %702 = fadd fast float %700, %697
  %703 = fmul fast float %701, 0x3FE1BEDF00000000
  %704 = call float @dx.op.unary.f32(i32 22, float %703)  ; Frc(value)
  %705 = fmul fast float %701, %704
  %706 = fadd fast float %705, %702
  %707 = fmul fast float %702, 0x3FD3BEBE20000000
  %708 = call float @dx.op.unary.f32(i32 22, float %707)  ; Frc(value)
  %709 = fmul fast float %702, %708
  %710 = fadd fast float %709, %701
  %711 = fmul fast float %706, %710
  %712 = call float @dx.op.unary.f32(i32 22, float %711)  ; Frc(value)
  %713 = extractvalue %dx.types.CBufRet.f32 %691, 3
  %714 = bitcast float %713 to i32
  %715 = and i32 %714, 255
  %716 = uitofp i32 %715 to float
  %717 = fmul fast float %716, 0x3F70101020000000
  %718 = fmul fast float %717, %685
  %719 = fcmp fast olt float %712, %718
  br i1 %719, label %720, label %727, !dx.controlflow.hints !62

; <label>:720                                     ; preds = %683
  %721 = fmul fast float %712, 0x4057091680000000
  %722 = call float @dx.op.unary.f32(i32 22, float %721)  ; Frc(value)
  %723 = fmul fast float %722, %632
  %724 = fmul fast float %722, %634
  %725 = fsub fast float 1.000000e+00, %722
  %726 = fmul fast float %725, %633
  br label %727

; <label>:727                                     ; preds = %720, %683
  %728 = phi float [ %723, %720 ], [ %632, %683 ]
  %729 = phi float [ %726, %720 ], [ %633, %683 ]
  %730 = phi float [ %724, %720 ], [ %634, %683 ]
  %731 = fmul fast float %712, 0x4028B0A3E0000000
  %732 = call float @dx.op.unary.f32(i32 22, float %731)  ; Frc(value)
  %733 = fmul fast float %717, %686
  %734 = fcmp fast olt float %732, %733
  br i1 %734, label %735, label %754, !dx.controlflow.hints !63

; <label>:735                                     ; preds = %727
  %736 = extractvalue %dx.types.CBufRet.f32 %691, 2
  %737 = fmul fast float %736, %26
  %738 = call float @dx.op.unary.f32(i32 27, float %737)  ; Round_ni(value)
  %739 = fmul fast float %738, 0x3FD5555560000000
  %740 = call float @dx.op.unary.f32(i32 22, float %739)  ; Frc(value)
  %741 = extractvalue %dx.types.CBufRet.f32 %684, 0
  %742 = extractvalue %dx.types.CBufRet.f32 %684, 1
  %743 = fcmp fast olt float %740, 0x3FD51EB860000000
  br i1 %743, label %747, label %744, !dx.controlflow.hints !64

; <label>:744                                     ; preds = %735
  %745 = fcmp fast olt float %740, 0x3FE51EB860000000
  br i1 %745, label %747, label %746, !dx.controlflow.hints !65

; <label>:746                                     ; preds = %744
  br label %747

; <label>:747                                     ; preds = %746, %744, %735
  %748 = phi float [ %741, %746 ], [ %742, %735 ], [ %741, %744 ]
  %749 = phi float [ %741, %746 ], [ %741, %735 ], [ %742, %744 ]
  %750 = phi float [ %742, %746 ], [ %741, %735 ], [ %741, %744 ]
  %751 = fmul fast float %748, %728
  %752 = fmul fast float %749, %729
  %753 = fmul fast float %750, %730
  br label %754

; <label>:754                                     ; preds = %747, %727
  %755 = phi float [ %751, %747 ], [ %728, %727 ]
  %756 = phi float [ %752, %747 ], [ %729, %727 ]
  %757 = phi float [ %753, %747 ], [ %730, %727 ]
  %758 = fmul fast float %712, 0x40223EF9E0000000
  %759 = call float @dx.op.unary.f32(i32 22, float %758)  ; Frc(value)
  %760 = fmul fast float %717, %681
  %761 = fmul fast float %759, %759
  %762 = fmul fast float %761, %760
  %763 = fsub fast float 1.000000e+00, %762
  %764 = call float @dx.op.unary.f32(i32 7, float %763)  ; Saturate(value)
  %765 = fmul fast float %764, %679
  br label %766

; <label>:766                                     ; preds = %754, %678
  %767 = phi float [ %755, %754 ], [ %632, %678 ]
  %768 = phi float [ %756, %754 ], [ %633, %678 ]
  %769 = phi float [ %757, %754 ], [ %634, %678 ]
  %770 = phi float [ %765, %754 ], [ %679, %678 ]
  %771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %772 = extractvalue %dx.types.CBufRet.f32 %771, 0
  %773 = extractvalue %dx.types.CBufRet.f32 %771, 1
  %774 = extractvalue %dx.types.CBufRet.f32 %771, 2
  %775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %776 = extractvalue %dx.types.CBufRet.f32 %775, 0
  %777 = extractvalue %dx.types.CBufRet.f32 %775, 1
  %778 = extractvalue %dx.types.CBufRet.f32 %775, 2
  %779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %780 = extractvalue %dx.types.CBufRet.f32 %779, 0
  %781 = extractvalue %dx.types.CBufRet.f32 %779, 1
  %782 = extractvalue %dx.types.CBufRet.f32 %779, 2
  %783 = fmul fast float %772, %767
  %784 = call float @dx.op.tertiary.f32(i32 46, float %773, float %768, float %783)  ; FMad(a,b,c)
  %785 = call float @dx.op.tertiary.f32(i32 46, float %774, float %769, float %784)  ; FMad(a,b,c)
  %786 = fmul fast float %776, %767
  %787 = call float @dx.op.tertiary.f32(i32 46, float %777, float %768, float %786)  ; FMad(a,b,c)
  %788 = call float @dx.op.tertiary.f32(i32 46, float %778, float %769, float %787)  ; FMad(a,b,c)
  %789 = fmul fast float %780, %767
  %790 = call float @dx.op.tertiary.f32(i32 46, float %781, float %768, float %789)  ; FMad(a,b,c)
  %791 = call float @dx.op.tertiary.f32(i32 46, float %782, float %769, float %790)  ; FMad(a,b,c)
  br i1 %274, label %792, label %1099, !dx.controlflow.hints !66

; <label>:792                                     ; preds = %766
  %793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %794 = extractvalue %dx.types.CBufRet.f32 %793, 0
  %795 = bitcast float %794 to i32
  %796 = and i32 %795, 128
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %812, label %798

; <label>:798                                     ; preds = %792
  %799 = call float @dx.op.unary.f32(i32 24, float %785)  ; Sqrt(value)
  %800 = call float @dx.op.unary.f32(i32 24, float %788)  ; Sqrt(value)
  %801 = call float @dx.op.unary.f32(i32 24, float %791)  ; Sqrt(value)
  %802 = fmul fast float %799, 9.687500e-01
  %803 = fmul fast float %800, 9.687500e-01
  %804 = fmul fast float %801, 9.687500e-01
  %805 = fadd fast float %802, 1.562500e-02
  %806 = fadd fast float %803, 1.562500e-02
  %807 = fadd fast float %804, 1.562500e-02
  %808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %11, float %805, float %806, float %807, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %809 = extractvalue %dx.types.ResRet.f32 %808, 0
  %810 = extractvalue %dx.types.ResRet.f32 %808, 1
  %811 = extractvalue %dx.types.ResRet.f32 %808, 2
  br label %1099

; <label>:812                                     ; preds = %792
  %813 = and i32 %795, 127
  switch i32 %813, label %1099 [
    i32 1, label %814
    i32 2, label %814
    i32 0, label %814
    i32 3, label %844
    i32 4, label %965
  ]

; <label>:814                                     ; preds = %812, %812, %812
  %815 = call float @dx.op.unary.f32(i32 7, float %785)  ; Saturate(value)
  %816 = call float @dx.op.unary.f32(i32 7, float %788)  ; Saturate(value)
  %817 = call float @dx.op.unary.f32(i32 7, float %791)  ; Saturate(value)
  %818 = call float @dx.op.unary.f32(i32 23, float %815)  ; Log(value)
  %819 = call float @dx.op.unary.f32(i32 23, float %816)  ; Log(value)
  %820 = call float @dx.op.unary.f32(i32 23, float %817)  ; Log(value)
  %821 = fmul fast float %818, 0x3FDAAAAAA0000000
  %822 = fmul fast float %819, 0x3FDAAAAAA0000000
  %823 = fmul fast float %820, 0x3FDAAAAAA0000000
  %824 = call float @dx.op.unary.f32(i32 21, float %821)  ; Exp(value)
  %825 = call float @dx.op.unary.f32(i32 21, float %822)  ; Exp(value)
  %826 = call float @dx.op.unary.f32(i32 21, float %823)  ; Exp(value)
  %827 = fmul fast float %824, 0x3FF0E147A0000000
  %828 = fmul fast float %825, 0x3FF0E147A0000000
  %829 = fmul fast float %826, 0x3FF0E147A0000000
  %830 = fadd fast float %827, 0xBFAC28F5C0000000
  %831 = fadd fast float %828, 0xBFAC28F5C0000000
  %832 = fadd fast float %829, 0xBFAC28F5C0000000
  %833 = call float @dx.op.unary.f32(i32 7, float %830)  ; Saturate(value)
  %834 = call float @dx.op.unary.f32(i32 7, float %831)  ; Saturate(value)
  %835 = call float @dx.op.unary.f32(i32 7, float %832)  ; Saturate(value)
  %836 = extractvalue %dx.types.CBufRet.f32 %793, 2
  %837 = extractvalue %dx.types.CBufRet.f32 %793, 3
  %838 = fmul fast float %836, %833
  %839 = fmul fast float %836, %834
  %840 = fmul fast float %836, %835
  %841 = fadd fast float %838, %837
  %842 = fadd fast float %839, %837
  %843 = fadd fast float %840, %837
  br label %1099

; <label>:844                                     ; preds = %812
  %845 = fmul fast float %785, 0x4163D57C00000000
  %846 = fmul fast float %788, 0x4163D57C00000000
  %847 = fmul fast float %791, 0x4163D57C00000000
  %848 = fadd fast float %845, 9.999980e+05
  %849 = fadd fast float %846, 9.999980e+05
  %850 = fadd fast float %847, 9.999980e+05
  %851 = fmul fast float %848, %785
  %852 = fmul fast float %849, %788
  %853 = fmul fast float %850, %791
  %854 = fadd fast float %851, 0xC0AFE17A60000000
  %855 = fadd fast float %852, 0xC0AFE17A60000000
  %856 = fadd fast float %853, 0xC0AFE17A60000000
  %857 = fmul fast float %854, %785
  %858 = fmul fast float %855, %788
  %859 = fmul fast float %856, %791
  %860 = fmul fast float %785, 0x40F753C340000000
  %861 = fmul fast float %788, 0x40F753C340000000
  %862 = fmul fast float %791, 0x40F753C340000000
  %863 = fsub fast float 9.999990e+06, %860
  %864 = fsub fast float 9.999990e+06, %861
  %865 = fsub fast float 9.999990e+06, %862
  %866 = fmul fast float %863, %785
  %867 = fmul fast float %864, %788
  %868 = fmul fast float %865, %791
  %869 = fadd fast float %866, 0x4136D1DD80000000
  %870 = fadd fast float %867, 0x4136D1DD80000000
  %871 = fadd fast float %868, 0x4136D1DD80000000
  %872 = fmul fast float %869, %785
  %873 = fmul fast float %870, %788
  %874 = fmul fast float %871, %791
  %875 = fadd fast float %872, 1.000000e+00
  %876 = fadd fast float %873, 1.000000e+00
  %877 = fadd fast float %874, 1.000000e+00
  %878 = fdiv fast float %857, %875
  %879 = fdiv fast float %858, %876
  %880 = fdiv fast float %859, %877
  %881 = call float @dx.op.unary.f32(i32 7, float %878)  ; Saturate(value)
  %882 = call float @dx.op.unary.f32(i32 7, float %879)  ; Saturate(value)
  %883 = call float @dx.op.unary.f32(i32 7, float %880)  ; Saturate(value)
  %884 = extractvalue %dx.types.CBufRet.f32 %793, 1
  %885 = fmul fast float %881, 0x3FE413A920000000
  %886 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %882, float %885)  ; FMad(a,b,c)
  %887 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %883, float %886)  ; FMad(a,b,c)
  %888 = fmul fast float %881, 0x3FB1B089A0000000
  %889 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %882, float %888)  ; FMad(a,b,c)
  %890 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %883, float %889)  ; FMad(a,b,c)
  %891 = fmul fast float %881, 0x3F90CB2960000000
  %892 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %882, float %891)  ; FMad(a,b,c)
  %893 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %883, float %892)  ; FMad(a,b,c)
  %894 = fmul fast float %887, %884
  %895 = fmul fast float %890, %884
  %896 = fmul fast float %893, %884
  %897 = fmul fast float %894, 0x3F847AE140000000
  %898 = fmul fast float %895, 0x3F847AE140000000
  %899 = fmul fast float %896, 0x3F847AE140000000
  %900 = fmul fast float %894, 0x40B4D2F520000000
  %901 = fmul fast float %895, 0x40B4D2F520000000
  %902 = fmul fast float %896, 0x40B4D2F520000000
  %903 = fadd fast float %900, 0x41869ECF20000000
  %904 = fadd fast float %901, 0x41869ECF20000000
  %905 = fadd fast float %902, 0x41869ECF20000000
  %906 = fmul fast float %903, %897
  %907 = fmul fast float %904, %898
  %908 = fmul fast float %905, %899
  %909 = fadd fast float %906, 0x417BB79C60000000
  %910 = fadd fast float %907, 0x417BB79C60000000
  %911 = fadd fast float %908, 0x417BB79C60000000
  %912 = fmul fast float %909, %897
  %913 = fmul fast float %910, %898
  %914 = fmul fast float %911, %899
  %915 = fadd fast float %912, 0x41218DE180000000
  %916 = fadd fast float %913, 0x41218DE180000000
  %917 = fadd fast float %914, 0x41218DE180000000
  %918 = fmul fast float %915, %897
  %919 = fmul fast float %916, %898
  %920 = fmul fast float %917, %899
  %921 = fadd fast float %918, 0x4077F174E0000000
  %922 = fadd fast float %919, 0x4077F174E0000000
  %923 = fadd fast float %920, 0x4077F174E0000000
  %924 = fmul fast float %921, %897
  %925 = fmul fast float %922, %898
  %926 = fmul fast float %923, %899
  %927 = fadd fast float %924, 0x3F3FF79B80000000
  %928 = fadd fast float %925, 0x3F3FF79B80000000
  %929 = fadd fast float %926, 0x3F3FF79B80000000
  %930 = fmul fast float %894, 0x412442D320000000
  %931 = fmul fast float %895, 0x412442D320000000
  %932 = fmul fast float %896, 0x412442D320000000
  %933 = fadd fast float %930, 0x419385D5C0000000
  %934 = fadd fast float %931, 0x419385D5C0000000
  %935 = fadd fast float %932, 0x419385D5C0000000
  %936 = fmul fast float %933, %897
  %937 = fmul fast float %934, %898
  %938 = fmul fast float %935, %899
  %939 = fadd fast float %936, 4.182885e+06
  %940 = fadd fast float %937, 4.182885e+06
  %941 = fadd fast float %938, 4.182885e+06
  %942 = fmul fast float %939, %897
  %943 = fmul fast float %940, %898
  %944 = fmul fast float %941, %899
  %945 = fadd fast float %942, 0x40C4D633C0000000
  %946 = fadd fast float %943, 0x40C4D633C0000000
  %947 = fadd fast float %944, 0x40C4D633C0000000
  %948 = fmul fast float %945, %897
  %949 = fmul fast float %946, %898
  %950 = fmul fast float %947, %899
  %951 = fadd fast float %948, 1.000000e+00
  %952 = fadd fast float %949, 1.000000e+00
  %953 = fadd fast float %950, 1.000000e+00
  %954 = fdiv fast float %927, %951
  %955 = fdiv fast float %928, %952
  %956 = fdiv fast float %929, %953
  %957 = extractvalue %dx.types.CBufRet.f32 %793, 2
  %958 = extractvalue %dx.types.CBufRet.f32 %793, 3
  %959 = fmul fast float %957, %954
  %960 = fmul fast float %957, %955
  %961 = fmul fast float %957, %956
  %962 = fadd fast float %959, %958
  %963 = fadd fast float %960, %958
  %964 = fadd fast float %961, %958
  br label %1099

; <label>:965                                     ; preds = %812
  %966 = fmul fast float %785, 0x4163D57C00000000
  %967 = fmul fast float %788, 0x4163D57C00000000
  %968 = fmul fast float %791, 0x4163D57C00000000
  %969 = fadd fast float %966, 9.999980e+05
  %970 = fadd fast float %967, 9.999980e+05
  %971 = fadd fast float %968, 9.999980e+05
  %972 = fmul fast float %969, %785
  %973 = fmul fast float %970, %788
  %974 = fmul fast float %971, %791
  %975 = fadd fast float %972, 0xC0AFE17A60000000
  %976 = fadd fast float %973, 0xC0AFE17A60000000
  %977 = fadd fast float %974, 0xC0AFE17A60000000
  %978 = fmul fast float %975, %785
  %979 = fmul fast float %976, %788
  %980 = fmul fast float %977, %791
  %981 = fmul fast float %785, 0x40F753C340000000
  %982 = fmul fast float %788, 0x40F753C340000000
  %983 = fmul fast float %791, 0x40F753C340000000
  %984 = fsub fast float 9.999990e+06, %981
  %985 = fsub fast float 9.999990e+06, %982
  %986 = fsub fast float 9.999990e+06, %983
  %987 = fmul fast float %984, %785
  %988 = fmul fast float %985, %788
  %989 = fmul fast float %986, %791
  %990 = fadd fast float %987, 0x4136D1DD80000000
  %991 = fadd fast float %988, 0x4136D1DD80000000
  %992 = fadd fast float %989, 0x4136D1DD80000000
  %993 = fmul fast float %990, %785
  %994 = fmul fast float %991, %788
  %995 = fmul fast float %992, %791
  %996 = fadd fast float %993, 1.000000e+00
  %997 = fadd fast float %994, 1.000000e+00
  %998 = fadd fast float %995, 1.000000e+00
  %999 = fdiv fast float %978, %996
  %1000 = fdiv fast float %979, %997
  %1001 = fdiv fast float %980, %998
  %1002 = call float @dx.op.unary.f32(i32 7, float %999)  ; Saturate(value)
  %1003 = call float @dx.op.unary.f32(i32 7, float %1000)  ; Saturate(value)
  %1004 = call float @dx.op.unary.f32(i32 7, float %1001)  ; Saturate(value)
  %1005 = extractvalue %dx.types.CBufRet.f32 %793, 1
  %1006 = fmul fast float %1002, 0x3FEA519BC0000000
  %1007 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %1003, float %1006)  ; FMad(a,b,c)
  %1008 = fmul fast float %1002, 0x3FA0FED480000000
  %1009 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %1003, float %1008)  ; FMad(a,b,c)
  %1010 = fmul fast float %1002, 0x3F917E1C00000000
  %1011 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %1003, float %1010)  ; FMad(a,b,c)
  %1012 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %1004, float %1011)  ; FMad(a,b,c)
  %1013 = call float @dx.op.binary.f32(i32 35, float %1002, float %1003)  ; FMax(a,b)
  %1014 = call float @dx.op.binary.f32(i32 35, float %1013, float %1004)  ; FMax(a,b)
  %1015 = fadd fast float %1014, -1.000000e+00
  %1016 = fmul fast float %1015, 2.500000e-01
  %1017 = call float @dx.op.unary.f32(i32 7, float %1016)  ; Saturate(value)
  %1018 = fsub fast float 1.000000e+00, %1017
  %1019 = fmul fast float %1018, %1007
  %1020 = fmul fast float %1018, %1009
  %1021 = fmul fast float %1018, %1012
  %1022 = fmul fast float %1017, %1002
  %1023 = fmul fast float %1017, %1003
  %1024 = fmul fast float %1017, %1004
  %1025 = fadd fast float %1019, %1022
  %1026 = fadd fast float %1020, %1023
  %1027 = fadd fast float %1021, %1024
  %1028 = fmul fast float %1025, %1005
  %1029 = fmul fast float %1026, %1005
  %1030 = fmul fast float %1027, %1005
  %1031 = fmul fast float %1028, 0x3F847AE140000000
  %1032 = fmul fast float %1029, 0x3F847AE140000000
  %1033 = fmul fast float %1030, 0x3F847AE140000000
  %1034 = fmul fast float %1028, 0x40B4D2F520000000
  %1035 = fmul fast float %1029, 0x40B4D2F520000000
  %1036 = fmul fast float %1030, 0x40B4D2F520000000
  %1037 = fadd fast float %1034, 0x41869ECF20000000
  %1038 = fadd fast float %1035, 0x41869ECF20000000
  %1039 = fadd fast float %1036, 0x41869ECF20000000
  %1040 = fmul fast float %1037, %1031
  %1041 = fmul fast float %1038, %1032
  %1042 = fmul fast float %1039, %1033
  %1043 = fadd fast float %1040, 0x417BB79C60000000
  %1044 = fadd fast float %1041, 0x417BB79C60000000
  %1045 = fadd fast float %1042, 0x417BB79C60000000
  %1046 = fmul fast float %1043, %1031
  %1047 = fmul fast float %1044, %1032
  %1048 = fmul fast float %1045, %1033
  %1049 = fadd fast float %1046, 0x41218DE180000000
  %1050 = fadd fast float %1047, 0x41218DE180000000
  %1051 = fadd fast float %1048, 0x41218DE180000000
  %1052 = fmul fast float %1049, %1031
  %1053 = fmul fast float %1050, %1032
  %1054 = fmul fast float %1051, %1033
  %1055 = fadd fast float %1052, 0x4077F174E0000000
  %1056 = fadd fast float %1053, 0x4077F174E0000000
  %1057 = fadd fast float %1054, 0x4077F174E0000000
  %1058 = fmul fast float %1055, %1031
  %1059 = fmul fast float %1056, %1032
  %1060 = fmul fast float %1057, %1033
  %1061 = fadd fast float %1058, 0x3F3FF79B80000000
  %1062 = fadd fast float %1059, 0x3F3FF79B80000000
  %1063 = fadd fast float %1060, 0x3F3FF79B80000000
  %1064 = fmul fast float %1028, 0x412442D320000000
  %1065 = fmul fast float %1029, 0x412442D320000000
  %1066 = fmul fast float %1030, 0x412442D320000000
  %1067 = fadd fast float %1064, 0x419385D5C0000000
  %1068 = fadd fast float %1065, 0x419385D5C0000000
  %1069 = fadd fast float %1066, 0x419385D5C0000000
  %1070 = fmul fast float %1067, %1031
  %1071 = fmul fast float %1068, %1032
  %1072 = fmul fast float %1069, %1033
  %1073 = fadd fast float %1070, 4.182885e+06
  %1074 = fadd fast float %1071, 4.182885e+06
  %1075 = fadd fast float %1072, 4.182885e+06
  %1076 = fmul fast float %1073, %1031
  %1077 = fmul fast float %1074, %1032
  %1078 = fmul fast float %1075, %1033
  %1079 = fadd fast float %1076, 0x40C4D633C0000000
  %1080 = fadd fast float %1077, 0x40C4D633C0000000
  %1081 = fadd fast float %1078, 0x40C4D633C0000000
  %1082 = fmul fast float %1079, %1031
  %1083 = fmul fast float %1080, %1032
  %1084 = fmul fast float %1081, %1033
  %1085 = fadd fast float %1082, 1.000000e+00
  %1086 = fadd fast float %1083, 1.000000e+00
  %1087 = fadd fast float %1084, 1.000000e+00
  %1088 = fdiv fast float %1061, %1085
  %1089 = fdiv fast float %1062, %1086
  %1090 = fdiv fast float %1063, %1087
  %1091 = extractvalue %dx.types.CBufRet.f32 %793, 2
  %1092 = extractvalue %dx.types.CBufRet.f32 %793, 3
  %1093 = fmul fast float %1091, %1088
  %1094 = fmul fast float %1091, %1089
  %1095 = fmul fast float %1091, %1090
  %1096 = fadd fast float %1093, %1092
  %1097 = fadd fast float %1094, %1092
  %1098 = fadd fast float %1095, %1092
  br label %1099

; <label>:1099                                    ; preds = %965, %844, %814, %812, %798, %766
  %1100 = phi float [ %785, %766 ], [ %809, %798 ], [ %785, %812 ], [ %1096, %965 ], [ %962, %844 ], [ %841, %814 ]
  %1101 = phi float [ %788, %766 ], [ %810, %798 ], [ %788, %812 ], [ %1097, %965 ], [ %963, %844 ], [ %842, %814 ]
  %1102 = phi float [ %791, %766 ], [ %811, %798 ], [ %791, %812 ], [ %1098, %965 ], [ %964, %844 ], [ %843, %814 ]
  %1103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 234)  ; CBufferLoadLegacy(handle,regIndex)
  %1104 = extractvalue %dx.types.CBufRet.f32 %1103, 0
  %1105 = extractvalue %dx.types.CBufRet.f32 %1103, 2
  %1106 = call float @dx.op.unary.f32(i32 23, float %770)  ; Log(value)
  %1107 = fmul fast float %1106, %1105
  %1108 = call float @dx.op.unary.f32(i32 21, float %1107)  ; Exp(value)
  %1109 = fmul fast float %1108, %1104
  %1110 = extractvalue %dx.types.CBufRet.f32 %1103, 1
  %1111 = extractvalue %dx.types.CBufRet.f32 %1103, 3
  %1112 = fmul fast float %1106, %1111
  %1113 = call float @dx.op.unary.f32(i32 21, float %1112)  ; Exp(value)
  %1114 = fmul fast float %1113, %1110
  %1115 = fadd fast float %1114, %1109
  %1116 = fmul fast float %1115, %1100
  %1117 = fmul fast float %1115, %1101
  %1118 = fmul fast float %1115, %1102
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1116)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1117)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1118)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1115)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!dx.viewIdState = !{!24}
!dx.entryPoints = !{!25}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !15, !20}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14}
!6 = !{i32 0, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 73, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 70, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 76, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!15 = !{!16, !17, !18, !19}
!16 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!17 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 320, null}
!18 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 144, null}
!19 = !{i32 3, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!20 = !{!21, !22, !23}
!21 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!22 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!23 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!24 = !{[24 x i32] [i32 22, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7]}
!25 = !{void ()* @ps_main, !"ps_main", !26, !4, !48}
!26 = !{!27, !46, null}
!27 = !{!28, !31, !33, !34, !36, !38, !40, !42, !44}
!28 = !{i32 0, !"SV_Position", i8 9, i8 3, !29, i8 4, i32 1, i8 4, i32 0, i8 0, !30}
!29 = !{i32 0}
!30 = !{i32 3, i32 3}
!31 = !{i32 1, !"COLOR", i8 9, i8 0, !29, i8 2, i32 1, i8 4, i32 1, i8 0, !32}
!32 = !{i32 3, i32 15}
!33 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !29, i8 2, i32 1, i8 2, i32 2, i8 0, !30}
!34 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !35, i8 2, i32 1, i8 2, i32 2, i8 2, !30}
!35 = !{i32 2}
!36 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !37, i8 2, i32 1, i8 2, i32 3, i8 0, null}
!37 = !{i32 3}
!38 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !39, i8 2, i32 1, i8 2, i32 3, i8 2, null}
!39 = !{i32 4}
!40 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !41, i8 2, i32 1, i8 2, i32 4, i8 0, null}
!41 = !{i32 5}
!42 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !43, i8 2, i32 1, i8 2, i32 4, i8 2, null}
!43 = !{i32 6}
!44 = !{i32 8, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 2, i32 5, i8 0, !30}
!45 = !{i32 7}
!46 = !{!47}
!47 = !{i32 0, !"SV_Target", i8 9, i8 16, !29, i8 0, i32 1, i8 4, i32 0, i8 0, !32}
!48 = !{i32 0, i64 16}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}

