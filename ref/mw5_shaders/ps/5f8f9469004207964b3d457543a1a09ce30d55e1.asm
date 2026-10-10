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
; shader hash: eafe8ad1b7df1bbef2d81880d79e9d09
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
;   output 4 depends on inputs: { 8, 9, 10 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.f32 %24, 0
  %26 = fmul fast float %25, %20
  %27 = fmul fast float %25, %21
  %28 = call float @dx.op.dot3.f32(i32 55, float %14, float %15, float %16, float %14, float %15, float %16)  ; Dot3(ax,ay,az,bx,by,bz)
  %29 = bitcast float %28 to i32
  %30 = ashr i32 %29, 1
  %31 = sub nsw i32 1597250115, %30
  %32 = bitcast i32 %31 to float
  %33 = fmul fast float %32, %14
  %34 = fmul fast float %32, %15
  %35 = fmul fast float %32, %16
  %36 = and i32 %12, 255
  %37 = uitofp i32 %36 to float
  %38 = fmul fast float %37, 0x3F70101020000000
  %39 = lshr i32 %12, 8
  %40 = uitofp i32 %39 to float
  %41 = fmul fast float %40, 0x3F70101020000000
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 2
  %44 = fptosi float %22 to i32
  %45 = sitofp i32 %44 to float
  %46 = fadd fast float %43, %45
  %47 = fmul fast float %46, 0x3FE3C6EF40000000
  %48 = frem fast float %26, 2.560000e+02
  %49 = frem fast float %27, 2.560000e+02
  %50 = fptoui float %48 to i32
  %51 = fptoui float %49 to i32
  %52 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %50, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %53 = extractvalue %dx.types.ResRet.f32 %52, 0
  %54 = fadd fast float %53, %47
  %55 = call float @dx.op.unary.f32(i32 22, float %54)  ; Frc(value)
  %56 = add i32 %5, 348
  %57 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %56, i32 undef)  ; BufferLoad(srv,index,wot)
  %58 = extractvalue %dx.types.ResRet.i32 %57, 0
  %59 = and i32 %58, 16384
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %70, label %61

; <label>:61                                      ; preds = %0
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %64 = fsub fast float %22, %63
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = fmul fast float %64, %66
  %68 = call float @dx.op.unary.f32(i32 7, float %67)  ; Saturate(value)
  %69 = fmul fast float %68, %19
  br label %70

; <label>:70                                      ; preds = %61, %0
  %71 = phi float [ %69, %61 ], [ %19, %0 ]
  %72 = add i32 %5, 32
  %73 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %72, i32 undef)  ; BufferLoad(srv,index,wot)
  %74 = extractvalue %dx.types.ResRet.i32 %73, 0
  %75 = shl i32 %74, 4
  %76 = and i32 %75, 32752
  %77 = call float @dx.op.legacyF16ToF32(i32 131, i32 %76)  ; LegacyF16ToF32(value)
  %78 = lshr i32 %74, 7
  %79 = and i32 %78, 32752
  %80 = call float @dx.op.legacyF16ToF32(i32 131, i32 %79)  ; LegacyF16ToF32(value)
  %81 = add i32 %5, 36
  %82 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %81, i32 undef)  ; BufferLoad(srv,index,wot)
  %83 = extractvalue %dx.types.ResRet.i32 %82, 0
  %84 = and i32 %83, 65535
  %85 = call float @dx.op.legacyF16ToF32(i32 131, i32 %84)  ; LegacyF16ToF32(value)
  %86 = lshr i32 %83, 16
  %87 = call float @dx.op.legacyF16ToF32(i32 131, i32 %86)  ; LegacyF16ToF32(value)
  %88 = lshr i32 %74, 22
  %89 = shl nuw nsw i32 %88, 5
  %90 = call float @dx.op.legacyF16ToF32(i32 131, i32 %89)  ; LegacyF16ToF32(value)
  %91 = call float @dx.op.unary.f32(i32 13, float %90)  ; Sin(value)
  %92 = call float @dx.op.unary.f32(i32 12, float %90)  ; Cos(value)
  %93 = fsub fast float -0.000000e+00, %91
  %94 = fmul fast float %77, %17
  %95 = fmul fast float %80, %18
  %96 = fmul fast float %92, %94
  %97 = call float @dx.op.tertiary.f32(i32 46, float %93, float %95, float %96)  ; FMad(a,b,c)
  %98 = fmul fast float %91, %94
  %99 = call float @dx.op.tertiary.f32(i32 46, float %92, float %95, float %98)  ; FMad(a,b,c)
  %100 = fadd fast float %97, %85
  %101 = fadd fast float %99, %87
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 3
  %104 = fcmp fast ogt float %103, 0.000000e+00
  %105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %56, i32 undef)  ; BufferLoad(srv,index,wot)
  %106 = extractvalue %dx.types.ResRet.i32 %105, 0
  %107 = and i32 %106, 49152
  %108 = icmp ne i32 %107, 0
  %109 = and i1 %104, %108
  %110 = select i1 %109, float %55, float 0x3FE0101020000000
  %111 = add i32 %5, 456
  %112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %111, i32 undef)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.i32 %112, 0
  %114 = add i32 %113, 0
  %115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %114, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %116 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %115, %dx.types.Handle %23, float %100, float %101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %117 = extractvalue %dx.types.ResRet.f32 %116, 0
  %118 = fcmp fast olt float %117, 0x3FE0101020000000
  %119 = select i1 %118, float 0.000000e+00, float 1.000000e+00
  %120 = fmul fast float %119, %71
  %121 = fcmp fast ogt float %120, %110
  br i1 %121, label %123, label %122

; <label>:122                                     ; preds = %70
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %123

; <label>:123                                     ; preds = %122, %70
  %124 = fdiv fast float %9, %11
  %125 = fdiv fast float %10, %11
  %126 = fdiv fast float %6, %8
  %127 = fdiv fast float %7, %8
  %128 = fsub fast float %124, %126
  %129 = fsub fast float %125, %127
  %130 = fmul fast float %128, 5.000000e-01
  %131 = fmul fast float %129, -5.000000e-01
  %132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 240)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.i32 %132, 0
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %174

; <label>:135                                     ; preds = %123
  %136 = fmul fast float %128, 9.600000e+02
  %137 = fmul fast float %129, -5.400000e+02
  %138 = call float @dx.op.unary.f32(i32 6, float %136)  ; FAbs(value)
  %139 = call float @dx.op.unary.f32(i32 6, float %137)  ; FAbs(value)
  %140 = fadd fast float %138, -3.000000e+00
  %141 = fadd fast float %139, -3.000000e+00
  %142 = fmul fast float %140, 0x3F8A98EF60000000
  %143 = fmul fast float %141, 0x3F8A98EF60000000
  %144 = call float @dx.op.unary.f32(i32 7, float %142)  ; Saturate(value)
  %145 = call float @dx.op.unary.f32(i32 7, float %143)  ; Saturate(value)
  %146 = fmul fast float %138, 0x3FD5555560000000
  %147 = fmul fast float %139, 0x3FD5555560000000
  %148 = call float @dx.op.unary.f32(i32 7, float %146)  ; Saturate(value)
  %149 = call float @dx.op.unary.f32(i32 7, float %147)  ; Saturate(value)
  %150 = call float @dx.op.unary.f32(i32 24, float %144)  ; Sqrt(value)
  %151 = call float @dx.op.unary.f32(i32 24, float %145)  ; Sqrt(value)
  %152 = fsub fast float %148, %150
  %153 = fsub fast float %149, %151
  %154 = fmul fast float %152, 5.000000e-01
  %155 = fmul fast float %153, 5.000000e-01
  %156 = fadd fast float %154, %150
  %157 = fadd fast float %155, %151
  %158 = fsub fast float -0.000000e+00, %156
  %159 = fsub fast float -0.000000e+00, %157
  %160 = fcmp fast olt float %136, 0.000000e+00
  %161 = fcmp fast olt float %137, 0.000000e+00
  %162 = select i1 %160, float 0.000000e+00, float 1.000000e+00
  %163 = select i1 %161, float 0.000000e+00, float 1.000000e+00
  %164 = fcmp fast une float %162, 0.000000e+00
  %165 = fcmp fast une float %163, 0.000000e+00
  %166 = select i1 %164, float %156, float %158
  %167 = select i1 %165, float %157, float %159
  %168 = fmul fast float %166, 5.000000e-01
  %169 = fmul fast float %167, 5.000000e-01
  %170 = fadd fast float %168, 0x3FE0101020000000
  %171 = fadd fast float %169, 0x3FE0101020000000
  %172 = call float @dx.op.unary.f32(i32 7, float %170)  ; Saturate(value)
  %173 = call float @dx.op.unary.f32(i32 7, float %171)  ; Saturate(value)
  br label %174

; <label>:174                                     ; preds = %135, %123
  %175 = phi float [ %172, %135 ], [ %130, %123 ]
  %176 = phi float [ %173, %135 ], [ %131, %123 ]
  %177 = call float @dx.op.unary.f32(i32 6, float %33)  ; FAbs(value)
  %178 = call float @dx.op.unary.f32(i32 6, float %34)  ; FAbs(value)
  %179 = fadd fast float %178, %177
  %180 = call float @dx.op.unary.f32(i32 6, float %35)  ; FAbs(value)
  %181 = fadd fast float %179, %180
  %182 = fdiv fast float %33, %181
  %183 = fdiv fast float %34, %181
  %184 = fdiv fast float %35, %181
  %185 = fcmp fast oge float %184, 0.000000e+00
  %186 = call float @dx.op.unary.f32(i32 6, float %183)  ; FAbs(value)
  %187 = call float @dx.op.unary.f32(i32 6, float %182)  ; FAbs(value)
  %188 = fsub fast float 1.000000e+00, %186
  %189 = fsub fast float 1.000000e+00, %187
  %190 = fcmp fast oge float %182, 0.000000e+00
  %191 = select i1 %190, float 1.000000e+00, float -1.000000e+00
  %192 = fcmp fast oge float %183, 0.000000e+00
  %193 = select i1 %192, float 1.000000e+00, float -1.000000e+00
  %194 = fmul fast float %188, %191
  %195 = fmul fast float %189, %193
  %196 = select i1 %185, float %182, float %194
  %197 = select i1 %185, float %183, float %195
  %198 = fmul fast float %196, 1.275000e+02
  %199 = fmul fast float %197, 1.275000e+02
  %200 = fadd fast float %198, 1.275000e+02
  %201 = fadd fast float %199, 1.275000e+02
  %202 = call float @dx.op.unary.f32(i32 26, float %200)  ; Round_ne(value)
  %203 = call float @dx.op.unary.f32(i32 26, float %201)  ; Round_ne(value)
  %204 = fptoui float %202 to i32
  %205 = fptoui float %203 to i32
  %206 = shl i32 %205, 8
  %207 = or i32 %206, %204
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 %13)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %207)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %38)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %41)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %175)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %176)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!12 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 224, null}
!13 = !{!14}
!14 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!15 = !{[30 x i32] [i32 28, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 1, i32 0, i32 768, i32 0, i32 1024, i32 2048, i32 0, i32 3072, i32 1024, i32 2048, i32 0, i32 3072, i32 0, i32 0, i32 0, i32 0]}
!16 = !{void ()* @ps_main, !"ps_main", !17, !4, !39}
!17 = !{!18, !32, null}
!18 = !{!19, !22, !24, !25, !27, !29, !30, !31}
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
!32 = !{!33, !34, !36}
!33 = !{i32 0, !"SV_Target", i8 5, i8 16, !20, i8 0, i32 1, i8 1, i32 0, i8 0, !26}
!34 = !{i32 1, !"SV_Target", i8 5, i8 16, !35, i8 0, i32 1, i8 1, i32 1, i8 0, !26}
!35 = !{i32 1}
!36 = !{i32 2, !"SV_Target", i8 9, i8 16, !37, i8 0, i32 1, i8 4, i32 2, i8 0, !38}
!37 = !{i32 2}
!38 = !{i32 3, i32 15}
!39 = !{i32 0, i64 16}

