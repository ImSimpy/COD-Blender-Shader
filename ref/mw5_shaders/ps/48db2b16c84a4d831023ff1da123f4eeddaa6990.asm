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
; shader hash: 8db70488f30616da89d7bfbdafd095f1
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
;   [288 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T1     t37,space1     1
;                                   texture     f32          2d      T2     t37,space2     1
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
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = icmp ne i32 %5, 0
  %7 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.f32 %26, 0
  %28 = fmul fast float %27, %22
  %29 = fmul fast float %27, %23
  %30 = select i1 %6, float 1.000000e+00, float -1.000000e+00
  %31 = call float @dx.op.dot3.f32(i32 55, float %16, float %17, float %18, float %16, float %17, float %18)  ; Dot3(ax,ay,az,bx,by,bz)
  %32 = bitcast float %31 to i32
  %33 = ashr i32 %32, 1
  %34 = sub nsw i32 1597250115, %33
  %35 = bitcast i32 %34 to float
  %36 = fmul fast float %16, %30
  %37 = fmul fast float %36, %35
  %38 = fmul fast float %17, %30
  %39 = fmul fast float %38, %35
  %40 = fmul fast float %18, %30
  %41 = fmul fast float %40, %35
  %42 = and i32 %14, 255
  %43 = uitofp i32 %42 to float
  %44 = fmul fast float %43, 0x3F70101020000000
  %45 = lshr i32 %14, 8
  %46 = uitofp i32 %45 to float
  %47 = fmul fast float %46, 0x3F70101020000000
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 2
  %50 = fptosi float %24 to i32
  %51 = sitofp i32 %50 to float
  %52 = fadd fast float %49, %51
  %53 = fmul fast float %52, 0x3FE3C6EF40000000
  %54 = frem fast float %28, 2.560000e+02
  %55 = frem fast float %29, 2.560000e+02
  %56 = fptoui float %54 to i32
  %57 = fptoui float %55 to i32
  %58 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %56, i32 %57, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %59 = extractvalue %dx.types.ResRet.f32 %58, 0
  %60 = fadd fast float %59, %53
  %61 = call float @dx.op.unary.f32(i32 22, float %60)  ; Frc(value)
  %62 = add i32 %7, 348
  %63 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %62, i32 undef)  ; BufferLoad(srv,index,wot)
  %64 = extractvalue %dx.types.ResRet.i32 %63, 0
  %65 = and i32 %64, 16384
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %76, label %67

; <label>:67                                      ; preds = %0
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %70 = fsub fast float %24, %69
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = fmul fast float %70, %72
  %74 = call float @dx.op.unary.f32(i32 7, float %73)  ; Saturate(value)
  %75 = fmul fast float %74, %21
  br label %76

; <label>:76                                      ; preds = %67, %0
  %77 = phi float [ %75, %67 ], [ %21, %0 ]
  %78 = add i32 %7, 32
  %79 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %78, i32 undef)  ; BufferLoad(srv,index,wot)
  %80 = extractvalue %dx.types.ResRet.i32 %79, 0
  %81 = shl i32 %80, 4
  %82 = and i32 %81, 32752
  %83 = call float @dx.op.legacyF16ToF32(i32 131, i32 %82)  ; LegacyF16ToF32(value)
  %84 = lshr i32 %80, 7
  %85 = and i32 %84, 32752
  %86 = call float @dx.op.legacyF16ToF32(i32 131, i32 %85)  ; LegacyF16ToF32(value)
  %87 = add i32 %7, 36
  %88 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %87, i32 undef)  ; BufferLoad(srv,index,wot)
  %89 = extractvalue %dx.types.ResRet.i32 %88, 0
  %90 = and i32 %89, 65535
  %91 = call float @dx.op.legacyF16ToF32(i32 131, i32 %90)  ; LegacyF16ToF32(value)
  %92 = lshr i32 %89, 16
  %93 = call float @dx.op.legacyF16ToF32(i32 131, i32 %92)  ; LegacyF16ToF32(value)
  %94 = lshr i32 %80, 22
  %95 = shl nuw nsw i32 %94, 5
  %96 = call float @dx.op.legacyF16ToF32(i32 131, i32 %95)  ; LegacyF16ToF32(value)
  %97 = call float @dx.op.unary.f32(i32 13, float %96)  ; Sin(value)
  %98 = call float @dx.op.unary.f32(i32 12, float %96)  ; Cos(value)
  %99 = fsub fast float -0.000000e+00, %97
  %100 = fmul fast float %83, %19
  %101 = fmul fast float %86, %20
  %102 = fmul fast float %98, %100
  %103 = call float @dx.op.tertiary.f32(i32 46, float %99, float %101, float %102)  ; FMad(a,b,c)
  %104 = fmul fast float %97, %100
  %105 = call float @dx.op.tertiary.f32(i32 46, float %98, float %101, float %104)  ; FMad(a,b,c)
  %106 = fadd fast float %103, %91
  %107 = fadd fast float %105, %93
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 3
  %110 = fcmp fast ogt float %109, 0.000000e+00
  %111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %62, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.i32 %111, 0
  %113 = and i32 %112, 49152
  %114 = icmp ne i32 %113, 0
  %115 = and i1 %110, %114
  %116 = select i1 %115, float %61, float 0x3FE0101020000000
  %117 = add i32 %7, 424
  %118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %117, i32 undef)  ; BufferLoad(srv,index,wot)
  %119 = extractvalue %dx.types.ResRet.i32 %118, 0
  %120 = add i32 %119, 0
  %121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %120, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %122 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %121, %dx.types.Handle %25, float %106, float %107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %123 = extractvalue %dx.types.ResRet.f32 %122, 0
  %124 = fcmp fast olt float %123, 0x3FE0101020000000
  %125 = select i1 %124, float 0.000000e+00, float 1.000000e+00
  %126 = fmul fast float %125, %77
  %127 = fcmp fast ogt float %126, %116
  br i1 %127, label %129, label %128

; <label>:128                                     ; preds = %76
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %129

; <label>:129                                     ; preds = %128, %76
  %130 = fdiv fast float %11, %13
  %131 = fdiv fast float %12, %13
  %132 = fdiv fast float %8, %10
  %133 = fdiv fast float %9, %10
  %134 = fsub fast float %130, %132
  %135 = fsub fast float %131, %133
  %136 = fmul fast float %134, 5.000000e-01
  %137 = fmul fast float %135, -5.000000e-01
  %138 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 240)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.i32 %138, 0
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %180

; <label>:141                                     ; preds = %129
  %142 = fmul fast float %134, 9.600000e+02
  %143 = fmul fast float %135, -5.400000e+02
  %144 = call float @dx.op.unary.f32(i32 6, float %142)  ; FAbs(value)
  %145 = call float @dx.op.unary.f32(i32 6, float %143)  ; FAbs(value)
  %146 = fadd fast float %144, -3.000000e+00
  %147 = fadd fast float %145, -3.000000e+00
  %148 = fmul fast float %146, 0x3F8A98EF60000000
  %149 = fmul fast float %147, 0x3F8A98EF60000000
  %150 = call float @dx.op.unary.f32(i32 7, float %148)  ; Saturate(value)
  %151 = call float @dx.op.unary.f32(i32 7, float %149)  ; Saturate(value)
  %152 = fmul fast float %144, 0x3FD5555560000000
  %153 = fmul fast float %145, 0x3FD5555560000000
  %154 = call float @dx.op.unary.f32(i32 7, float %152)  ; Saturate(value)
  %155 = call float @dx.op.unary.f32(i32 7, float %153)  ; Saturate(value)
  %156 = call float @dx.op.unary.f32(i32 24, float %150)  ; Sqrt(value)
  %157 = call float @dx.op.unary.f32(i32 24, float %151)  ; Sqrt(value)
  %158 = fsub fast float %154, %156
  %159 = fsub fast float %155, %157
  %160 = fmul fast float %158, 5.000000e-01
  %161 = fmul fast float %159, 5.000000e-01
  %162 = fadd fast float %160, %156
  %163 = fadd fast float %161, %157
  %164 = fsub fast float -0.000000e+00, %162
  %165 = fsub fast float -0.000000e+00, %163
  %166 = fcmp fast olt float %142, 0.000000e+00
  %167 = fcmp fast olt float %143, 0.000000e+00
  %168 = select i1 %166, float 0.000000e+00, float 1.000000e+00
  %169 = select i1 %167, float 0.000000e+00, float 1.000000e+00
  %170 = fcmp fast une float %168, 0.000000e+00
  %171 = fcmp fast une float %169, 0.000000e+00
  %172 = select i1 %170, float %162, float %164
  %173 = select i1 %171, float %163, float %165
  %174 = fmul fast float %172, 5.000000e-01
  %175 = fmul fast float %173, 5.000000e-01
  %176 = fadd fast float %174, 0x3FE0101020000000
  %177 = fadd fast float %175, 0x3FE0101020000000
  %178 = call float @dx.op.unary.f32(i32 7, float %176)  ; Saturate(value)
  %179 = call float @dx.op.unary.f32(i32 7, float %177)  ; Saturate(value)
  br label %180

; <label>:180                                     ; preds = %141, %129
  %181 = phi float [ %178, %141 ], [ %136, %129 ]
  %182 = phi float [ %179, %141 ], [ %137, %129 ]
  %183 = call float @dx.op.unary.f32(i32 6, float %37)  ; FAbs(value)
  %184 = call float @dx.op.unary.f32(i32 6, float %39)  ; FAbs(value)
  %185 = fadd fast float %184, %183
  %186 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %187 = fadd fast float %185, %186
  %188 = fdiv fast float %37, %187
  %189 = fdiv fast float %39, %187
  %190 = fdiv fast float %41, %187
  %191 = fcmp fast oge float %190, 0.000000e+00
  %192 = call float @dx.op.unary.f32(i32 6, float %189)  ; FAbs(value)
  %193 = call float @dx.op.unary.f32(i32 6, float %188)  ; FAbs(value)
  %194 = fsub fast float 1.000000e+00, %192
  %195 = fsub fast float 1.000000e+00, %193
  %196 = fcmp fast oge float %188, 0.000000e+00
  %197 = select i1 %196, float 1.000000e+00, float -1.000000e+00
  %198 = fcmp fast oge float %189, 0.000000e+00
  %199 = select i1 %198, float 1.000000e+00, float -1.000000e+00
  %200 = fmul fast float %194, %197
  %201 = fmul fast float %195, %199
  %202 = select i1 %191, float %188, float %200
  %203 = select i1 %191, float %189, float %201
  %204 = fmul fast float %202, 1.275000e+02
  %205 = fmul fast float %203, 1.275000e+02
  %206 = fadd fast float %204, 1.275000e+02
  %207 = fadd fast float %205, 1.275000e+02
  %208 = call float @dx.op.unary.f32(i32 26, float %206)  ; Round_ne(value)
  %209 = call float @dx.op.unary.f32(i32 26, float %207)  ; Round_ne(value)
  %210 = fptoui float %208 to i32
  %211 = fptoui float %209 to i32
  %212 = shl i32 %211, 8
  %213 = or i32 %212, %210
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 %15)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %213)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %44)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %47)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %181)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %182)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!15}
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !10, !13}
!5 = !{!6, !8, !9}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!10 = !{!11, !12}
!11 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!12 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 288, null}
!13 = !{!14}
!14 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!15 = !{[30 x i32] [i32 28, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 1, i32 0, i32 768, i32 16, i32 1024, i32 2048, i32 0, i32 3072, i32 1024, i32 2048, i32 0, i32 3072, i32 0, i32 0, i32 0, i32 0]}
!16 = !{void ()* @ps_main, !"ps_main", !17, !4, !40}
!17 = !{!18, !33, null}
!18 = !{!19, !22, !24, !25, !27, !29, !30, !31, !32}
!19 = !{i32 0, !"SV_Position", i8 9, i8 3, !20, i8 4, i32 1, i8 4, i32 0, i8 0, !21}
!20 = !{i32 0}
!21 = !{i32 3, i32 11}
!22 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !20, i8 2, i32 1, i8 4, i32 1, i8 0, !23}
!23 = !{i32 3, i32 7}
!24 = !{i32 2, !"NORMAL", i8 9, i8 0, !20, i8 2, i32 1, i8 3, i32 2, i8 0, !23}
!25 = !{i32 3, !"TRIID", i8 5, i8 0, !20, i8 1, i32 1, i8 1, i32 3, i8 0, !26}
!26 = !{i32 3, i32 1}
!27 = !{i32 4, !"ENTITY_IDS", i8 5, i8 0, !20, i8 1, i32 1, i8 2, i32 3, i8 1, !28}
!28 = !{i32 3, i32 2}
!29 = !{i32 5, !"CLIP_POS", i8 9, i8 0, !20, i8 2, i32 1, i8 4, i32 4, i8 0, !21}
!30 = !{i32 6, !"PREV_CLIP_POS", i8 9, i8 0, !20, i8 2, i32 1, i8 4, i32 5, i8 0, !21}
!31 = !{i32 7, !"PACKED_TRI_DATA", i8 5, i8 0, !20, i8 1, i32 1, i8 4, i32 6, i8 0, !26}
!32 = !{i32 8, !"SV_IsFrontFace", i8 5, i8 13, !20, i8 1, i32 1, i8 1, i32 3, i8 3, !26}
!33 = !{!34, !35, !37}
!34 = !{i32 0, !"SV_Target", i8 5, i8 16, !20, i8 0, i32 1, i8 1, i32 0, i8 0, !26}
!35 = !{i32 1, !"SV_Target", i8 5, i8 16, !36, i8 0, i32 1, i8 1, i32 1, i8 0, !26}
!36 = !{i32 1}
!37 = !{i32 2, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 2, i8 0, !39}
!38 = !{i32 2}
!39 = !{i32 3, i32 15}
!40 = !{i32 0, i64 16}

