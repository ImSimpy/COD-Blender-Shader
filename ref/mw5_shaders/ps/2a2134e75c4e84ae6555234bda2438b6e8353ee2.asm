;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; TEXCOORDS                0   xyzw        1     NONE   float   xyz 
; NORMAL                   0   xyz         2     NONE   float   xyz 
; TRIID                    0   x           3     NONE    uint   x   
; ENTITY_IDS               0    yz         3     NONE    uint     z 
; SV_IsFrontFace           0      w        3    FFACE    uint      w
; CLIP_POS                 0   xyzw        4     NONE   float   xy w
; PREV_CLIP_POS            0   xyzw        5     NONE   float   xy w
; PACKED_TRI_DATA          0   xyzw        6     NONE    uint   x   
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   x           0   TARGET    uint   x   
; SV_Target                1   x           1   TARGET    uint   x   
; SV_Target                2   xyzw        2   TARGET   float   xyzw
;
; shader hash: fe94450e53dfe81233d1e75765ea10cd
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
; TEXCOORDS                0                 linear       
; NORMAL                   0                 linear       
; TRIID                    0        nointerpolation       
; ENTITY_IDS               0        nointerpolation       
; CLIP_POS                 0                 linear       
; PREV_CLIP_POS            0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
; SV_Target                1                              
; SV_Target                2                              
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
;   [224 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s7     4
;                                   texture     f32          2d      T0      t0,space4unbounded
;                                   texture    byte         r/o      T1      t9,space1     1
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32          2d      T3     t37,space2     1
;
;
; ViewId state:
;
; Number of inputs: 28, outputs: 12
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 12 }
;   output 4 depends on inputs: { 8, 9, 10, 15 }
;   output 8 depends on inputs: { 14 }
;   output 9 depends on inputs: { 14 }
;   output 10 depends on inputs: { 16, 19, 20, 23 }
;   output 11 depends on inputs: { 17, 19, 21, 23 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = icmp ne i32 %6, 0
  %8 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 0
  %29 = fmul fast float %28, %23
  %30 = fmul fast float %28, %24
  %31 = select i1 %7, float 1.000000e+00, float -1.000000e+00
  %32 = call float @dx.op.dot3.f32(i32 55, float %17, float %18, float %19, float %17, float %18, float %19)  ; Dot3(ax,ay,az,bx,by,bz)
  %33 = bitcast float %32 to i32
  %34 = ashr i32 %33, 1
  %35 = sub nsw i32 1597250115, %34
  %36 = bitcast i32 %35 to float
  %37 = fmul fast float %17, %31
  %38 = fmul fast float %37, %36
  %39 = fmul fast float %18, %31
  %40 = fmul fast float %39, %36
  %41 = fmul fast float %19, %31
  %42 = fmul fast float %41, %36
  %43 = and i32 %15, 255
  %44 = uitofp i32 %43 to float
  %45 = fmul fast float %44, 0x3F70101020000000
  %46 = lshr i32 %15, 8
  %47 = uitofp i32 %46 to float
  %48 = fmul fast float %47, 0x3F70101020000000
  %49 = icmp eq i32 %15, 0
  br i1 %49, label %81, label %50

; <label>:50                                      ; preds = %0
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %53 = extractvalue %dx.types.CBufRet.f32 %51, 3
  %54 = fmul fast float %52, %29
  %55 = fmul fast float %53, %30
  %56 = fmul fast float %54, 1.024000e+03
  %57 = fmul fast float %55, 1.024000e+03
  %58 = fadd fast float %56, -5.120000e+02
  %59 = fadd fast float %57, -5.120000e+02
  %60 = fmul fast float %54, 0x4081BEDF00000000
  %61 = fadd fast float %60, 0xC071BEDF00000000
  %62 = call float @dx.op.unary.f32(i32 22, float %61)  ; Frc(value)
  %63 = fmul fast float %58, %62
  %64 = fadd fast float %63, %59
  %65 = fmul fast float %55, 0x4073BEBE20000000
  %66 = fadd fast float %65, 0xC063BEBE20000000
  %67 = call float @dx.op.unary.f32(i32 22, float %66)  ; Frc(value)
  %68 = fmul fast float %59, %67
  %69 = fadd fast float %68, %58
  %70 = fmul fast float %64, %69
  %71 = call float @dx.op.unary.f32(i32 22, float %70)  ; Frc(value)
  %72 = mul i32 %15, 100
  %73 = add i32 %72, 12
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %73, i32 undef)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = and i32 %75, 255
  %77 = uitofp i32 %76 to float
  %78 = fmul fast float %77, 0x3F70101020000000
  %79 = fcmp fast olt float %71, %78
  br i1 %79, label %80, label %81

; <label>:80                                      ; preds = %50
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %81

; <label>:81                                      ; preds = %80, %50, %0
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %84 = fptosi float %25 to i32
  %85 = sitofp i32 %84 to float
  %86 = fadd fast float %83, %85
  %87 = fmul fast float %86, 0x3FE3C6EF40000000
  %88 = frem fast float %29, 2.560000e+02
  %89 = frem fast float %30, 2.560000e+02
  %90 = fptoui float %88 to i32
  %91 = fptoui float %89 to i32
  %92 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %90, i32 %91, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %93 = extractvalue %dx.types.ResRet.f32 %92, 0
  %94 = fadd fast float %93, %87
  %95 = call float @dx.op.unary.f32(i32 22, float %94)  ; Frc(value)
  %96 = add i32 %8, 348
  %97 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %96, i32 undef)  ; BufferLoad(srv,index,wot)
  %98 = extractvalue %dx.types.ResRet.i32 %97, 0
  %99 = and i32 %98, 16384
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %110, label %101

; <label>:101                                     ; preds = %81
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %104 = fsub fast float %25, %103
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = fmul fast float %104, %106
  %108 = call float @dx.op.unary.f32(i32 7, float %107)  ; Saturate(value)
  %109 = fmul fast float %108, %22
  br label %110

; <label>:110                                     ; preds = %101, %81
  %111 = phi float [ %109, %101 ], [ %22, %81 ]
  %112 = add i32 %8, 32
  %113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %112, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = shl i32 %114, 4
  %116 = and i32 %115, 32752
  %117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %116)  ; LegacyF16ToF32(value)
  %118 = lshr i32 %114, 7
  %119 = and i32 %118, 32752
  %120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %119)  ; LegacyF16ToF32(value)
  %121 = add i32 %8, 36
  %122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %121, i32 undef)  ; BufferLoad(srv,index,wot)
  %123 = extractvalue %dx.types.ResRet.i32 %122, 0
  %124 = and i32 %123, 65535
  %125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %124)  ; LegacyF16ToF32(value)
  %126 = lshr i32 %123, 16
  %127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %126)  ; LegacyF16ToF32(value)
  %128 = lshr i32 %114, 22
  %129 = shl nuw nsw i32 %128, 5
  %130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %129)  ; LegacyF16ToF32(value)
  %131 = call float @dx.op.unary.f32(i32 13, float %130)  ; Sin(value)
  %132 = call float @dx.op.unary.f32(i32 12, float %130)  ; Cos(value)
  %133 = fsub fast float -0.000000e+00, %131
  %134 = fmul fast float %117, %20
  %135 = fmul fast float %120, %21
  %136 = fmul fast float %132, %134
  %137 = call float @dx.op.tertiary.f32(i32 46, float %133, float %135, float %136)  ; FMad(a,b,c)
  %138 = fmul fast float %131, %134
  %139 = call float @dx.op.tertiary.f32(i32 46, float %132, float %135, float %138)  ; FMad(a,b,c)
  %140 = fadd fast float %137, %125
  %141 = fadd fast float %139, %127
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 3
  %144 = fcmp fast ogt float %143, 0.000000e+00
  %145 = select i1 %144, float %95, float 0x3FE0101020000000
  %146 = add i32 %8, 504
  %147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %146, i32 undef)  ; BufferLoad(srv,index,wot)
  %148 = extractvalue %dx.types.ResRet.i32 %147, 0
  %149 = add i32 %148, 0
  %150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %149, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %151 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %150, %dx.types.Handle %26, float %140, float %141, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = fmul fast float %152, %111
  %154 = fcmp fast ogt float %153, %145
  br i1 %154, label %156, label %155

; <label>:155                                     ; preds = %110
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %156

; <label>:156                                     ; preds = %155, %110
  %157 = fdiv fast float %12, %14
  %158 = fdiv fast float %13, %14
  %159 = fdiv fast float %9, %11
  %160 = fdiv fast float %10, %11
  %161 = fsub fast float %157, %159
  %162 = fsub fast float %158, %160
  %163 = fmul fast float %161, 5.000000e-01
  %164 = fmul fast float %162, -5.000000e-01
  %165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 240)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.i32 %165, 0
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %207

; <label>:168                                     ; preds = %156
  %169 = fmul fast float %161, 9.600000e+02
  %170 = fmul fast float %162, -5.400000e+02
  %171 = call float @dx.op.unary.f32(i32 6, float %169)  ; FAbs(value)
  %172 = call float @dx.op.unary.f32(i32 6, float %170)  ; FAbs(value)
  %173 = fadd fast float %171, -3.000000e+00
  %174 = fadd fast float %172, -3.000000e+00
  %175 = fmul fast float %173, 0x3F8A98EF60000000
  %176 = fmul fast float %174, 0x3F8A98EF60000000
  %177 = call float @dx.op.unary.f32(i32 7, float %175)  ; Saturate(value)
  %178 = call float @dx.op.unary.f32(i32 7, float %176)  ; Saturate(value)
  %179 = fmul fast float %171, 0x3FD5555560000000
  %180 = fmul fast float %172, 0x3FD5555560000000
  %181 = call float @dx.op.unary.f32(i32 7, float %179)  ; Saturate(value)
  %182 = call float @dx.op.unary.f32(i32 7, float %180)  ; Saturate(value)
  %183 = call float @dx.op.unary.f32(i32 24, float %177)  ; Sqrt(value)
  %184 = call float @dx.op.unary.f32(i32 24, float %178)  ; Sqrt(value)
  %185 = fsub fast float %181, %183
  %186 = fsub fast float %182, %184
  %187 = fmul fast float %185, 5.000000e-01
  %188 = fmul fast float %186, 5.000000e-01
  %189 = fadd fast float %187, %183
  %190 = fadd fast float %188, %184
  %191 = fsub fast float -0.000000e+00, %189
  %192 = fsub fast float -0.000000e+00, %190
  %193 = fcmp fast olt float %169, 0.000000e+00
  %194 = fcmp fast olt float %170, 0.000000e+00
  %195 = select i1 %193, float 0.000000e+00, float 1.000000e+00
  %196 = select i1 %194, float 0.000000e+00, float 1.000000e+00
  %197 = fcmp fast une float %195, 0.000000e+00
  %198 = fcmp fast une float %196, 0.000000e+00
  %199 = select i1 %197, float %189, float %191
  %200 = select i1 %198, float %190, float %192
  %201 = fmul fast float %199, 5.000000e-01
  %202 = fmul fast float %200, 5.000000e-01
  %203 = fadd fast float %201, 0x3FE0101020000000
  %204 = fadd fast float %202, 0x3FE0101020000000
  %205 = call float @dx.op.unary.f32(i32 7, float %203)  ; Saturate(value)
  %206 = call float @dx.op.unary.f32(i32 7, float %204)  ; Saturate(value)
  br label %207

; <label>:207                                     ; preds = %168, %156
  %208 = phi float [ %205, %168 ], [ %163, %156 ]
  %209 = phi float [ %206, %168 ], [ %164, %156 ]
  %210 = call float @dx.op.unary.f32(i32 6, float %38)  ; FAbs(value)
  %211 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %212 = fadd fast float %211, %210
  %213 = call float @dx.op.unary.f32(i32 6, float %42)  ; FAbs(value)
  %214 = fadd fast float %212, %213
  %215 = fdiv fast float %38, %214
  %216 = fdiv fast float %40, %214
  %217 = fdiv fast float %42, %214
  %218 = fcmp fast oge float %217, 0.000000e+00
  %219 = call float @dx.op.unary.f32(i32 6, float %216)  ; FAbs(value)
  %220 = call float @dx.op.unary.f32(i32 6, float %215)  ; FAbs(value)
  %221 = fsub fast float 1.000000e+00, %219
  %222 = fsub fast float 1.000000e+00, %220
  %223 = fcmp fast oge float %215, 0.000000e+00
  %224 = select i1 %223, float 1.000000e+00, float -1.000000e+00
  %225 = fcmp fast oge float %216, 0.000000e+00
  %226 = select i1 %225, float 1.000000e+00, float -1.000000e+00
  %227 = fmul fast float %221, %224
  %228 = fmul fast float %222, %226
  %229 = select i1 %218, float %215, float %227
  %230 = select i1 %218, float %216, float %228
  %231 = fmul fast float %229, 1.275000e+02
  %232 = fmul fast float %230, 1.275000e+02
  %233 = fadd fast float %231, 1.275000e+02
  %234 = fadd fast float %232, 1.275000e+02
  %235 = call float @dx.op.unary.f32(i32 26, float %233)  ; Round_ne(value)
  %236 = call float @dx.op.unary.f32(i32 26, float %234)  ; Round_ne(value)
  %237 = fptoui float %235 to i32
  %238 = fptoui float %236 to i32
  %239 = shl i32 %238, 8
  %240 = or i32 %239, %237
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 %16)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %240)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %45)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %48)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %208)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %209)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.i32(i32, i32, i32, i8, i32) #1

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!16}
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !11, !14}
!5 = !{!6, !8, !9, !10}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!11 = !{!12, !13}
!12 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!13 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 224, null}
!14 = !{!15}
!15 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!16 = !{[30 x i32] [i32 28, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 1, i32 0, i32 768, i32 16, i32 1024, i32 2048, i32 0, i32 3072, i32 1024, i32 2048, i32 0, i32 3072, i32 0, i32 0, i32 0, i32 0]}
!17 = !{void ()* @ps_main, !"ps_main", !18, !4, !41}
!18 = !{!19, !34, null}
!19 = !{!20, !23, !25, !26, !28, !30, !31, !32, !33}
!20 = !{i32 0, !"SV_Position", i8 9, i8 3, !21, i8 4, i32 1, i8 4, i32 0, i8 0, !22}
!21 = !{i32 0}
!22 = !{i32 3, i32 11}
!23 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !21, i8 2, i32 1, i8 4, i32 1, i8 0, !24}
!24 = !{i32 3, i32 7}
!25 = !{i32 2, !"NORMAL", i8 9, i8 0, !21, i8 2, i32 1, i8 3, i32 2, i8 0, !24}
!26 = !{i32 3, !"TRIID", i8 5, i8 0, !21, i8 1, i32 1, i8 1, i32 3, i8 0, !27}
!27 = !{i32 3, i32 1}
!28 = !{i32 4, !"ENTITY_IDS", i8 5, i8 0, !21, i8 1, i32 1, i8 2, i32 3, i8 1, !29}
!29 = !{i32 3, i32 2}
!30 = !{i32 5, !"CLIP_POS", i8 9, i8 0, !21, i8 2, i32 1, i8 4, i32 4, i8 0, !22}
!31 = !{i32 6, !"PREV_CLIP_POS", i8 9, i8 0, !21, i8 2, i32 1, i8 4, i32 5, i8 0, !22}
!32 = !{i32 7, !"PACKED_TRI_DATA", i8 5, i8 0, !21, i8 1, i32 1, i8 4, i32 6, i8 0, !27}
!33 = !{i32 8, !"SV_IsFrontFace", i8 5, i8 13, !21, i8 1, i32 1, i8 1, i32 3, i8 3, !27}
!34 = !{!35, !36, !38}
!35 = !{i32 0, !"SV_Target", i8 5, i8 16, !21, i8 0, i32 1, i8 1, i32 0, i8 0, !27}
!36 = !{i32 1, !"SV_Target", i8 5, i8 16, !37, i8 0, i32 1, i8 1, i32 1, i8 0, !27}
!37 = !{i32 1}
!38 = !{i32 2, !"SV_Target", i8 9, i8 16, !39, i8 0, i32 1, i8 4, i32 2, i8 0, !40}
!39 = !{i32 2}
!40 = !{i32 3, i32 15}
!41 = !{i32 0, i64 16}

