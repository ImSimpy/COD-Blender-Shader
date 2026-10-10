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
; shader hash: f790aa46edfa891009e9107b2463681d
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
  %6 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.f32 %25, 0
  %27 = fmul fast float %26, %21
  %28 = fmul fast float %26, %22
  %29 = call float @dx.op.dot3.f32(i32 55, float %15, float %16, float %17, float %15, float %16, float %17)  ; Dot3(ax,ay,az,bx,by,bz)
  %30 = bitcast float %29 to i32
  %31 = ashr i32 %30, 1
  %32 = sub nsw i32 1597250115, %31
  %33 = bitcast i32 %32 to float
  %34 = fmul fast float %33, %15
  %35 = fmul fast float %33, %16
  %36 = fmul fast float %33, %17
  %37 = and i32 %13, 255
  %38 = uitofp i32 %37 to float
  %39 = fmul fast float %38, 0x3F70101020000000
  %40 = lshr i32 %13, 8
  %41 = uitofp i32 %40 to float
  %42 = fmul fast float %41, 0x3F70101020000000
  %43 = icmp eq i32 %13, 0
  br i1 %43, label %75, label %44

; <label>:44                                      ; preds = %0
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 2
  %47 = extractvalue %dx.types.CBufRet.f32 %45, 3
  %48 = fmul fast float %46, %27
  %49 = fmul fast float %47, %28
  %50 = fmul fast float %48, 1.024000e+03
  %51 = fmul fast float %49, 1.024000e+03
  %52 = fadd fast float %50, -5.120000e+02
  %53 = fadd fast float %51, -5.120000e+02
  %54 = fmul fast float %48, 0x4081BEDF00000000
  %55 = fadd fast float %54, 0xC071BEDF00000000
  %56 = call float @dx.op.unary.f32(i32 22, float %55)  ; Frc(value)
  %57 = fmul fast float %52, %56
  %58 = fadd fast float %57, %53
  %59 = fmul fast float %49, 0x4073BEBE20000000
  %60 = fadd fast float %59, 0xC063BEBE20000000
  %61 = call float @dx.op.unary.f32(i32 22, float %60)  ; Frc(value)
  %62 = fmul fast float %53, %61
  %63 = fadd fast float %62, %52
  %64 = fmul fast float %58, %63
  %65 = call float @dx.op.unary.f32(i32 22, float %64)  ; Frc(value)
  %66 = mul i32 %13, 100
  %67 = add i32 %66, 12
  %68 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %67, i32 undef)  ; BufferLoad(srv,index,wot)
  %69 = extractvalue %dx.types.ResRet.i32 %68, 0
  %70 = and i32 %69, 255
  %71 = uitofp i32 %70 to float
  %72 = fmul fast float %71, 0x3F70101020000000
  %73 = fcmp fast olt float %65, %72
  br i1 %73, label %74, label %75

; <label>:74                                      ; preds = %44
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %75

; <label>:75                                      ; preds = %74, %44, %0
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 2
  %78 = fptosi float %23 to i32
  %79 = sitofp i32 %78 to float
  %80 = fadd fast float %77, %79
  %81 = fmul fast float %80, 0x3FE3C6EF40000000
  %82 = frem fast float %27, 2.560000e+02
  %83 = frem fast float %28, 2.560000e+02
  %84 = fptoui float %82 to i32
  %85 = fptoui float %83 to i32
  %86 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %84, i32 %85, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %87 = extractvalue %dx.types.ResRet.f32 %86, 0
  %88 = fadd fast float %87, %81
  %89 = call float @dx.op.unary.f32(i32 22, float %88)  ; Frc(value)
  %90 = add i32 %6, 348
  %91 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %90, i32 undef)  ; BufferLoad(srv,index,wot)
  %92 = extractvalue %dx.types.ResRet.i32 %91, 0
  %93 = and i32 %92, 16384
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %104, label %95

; <label>:95                                      ; preds = %75
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %98 = fsub fast float %23, %97
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = fmul fast float %98, %100
  %102 = call float @dx.op.unary.f32(i32 7, float %101)  ; Saturate(value)
  %103 = fmul fast float %102, %20
  br label %104

; <label>:104                                     ; preds = %95, %75
  %105 = phi float [ %103, %95 ], [ %20, %75 ]
  %106 = add i32 %6, 32
  %107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %106, i32 undef)  ; BufferLoad(srv,index,wot)
  %108 = extractvalue %dx.types.ResRet.i32 %107, 0
  %109 = shl i32 %108, 4
  %110 = and i32 %109, 32752
  %111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %110)  ; LegacyF16ToF32(value)
  %112 = lshr i32 %108, 7
  %113 = and i32 %112, 32752
  %114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %113)  ; LegacyF16ToF32(value)
  %115 = add i32 %6, 36
  %116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %115, i32 undef)  ; BufferLoad(srv,index,wot)
  %117 = extractvalue %dx.types.ResRet.i32 %116, 0
  %118 = and i32 %117, 65535
  %119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %118)  ; LegacyF16ToF32(value)
  %120 = lshr i32 %117, 16
  %121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %120)  ; LegacyF16ToF32(value)
  %122 = lshr i32 %108, 22
  %123 = shl nuw nsw i32 %122, 5
  %124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %123)  ; LegacyF16ToF32(value)
  %125 = call float @dx.op.unary.f32(i32 13, float %124)  ; Sin(value)
  %126 = call float @dx.op.unary.f32(i32 12, float %124)  ; Cos(value)
  %127 = fsub fast float -0.000000e+00, %125
  %128 = fmul fast float %111, %18
  %129 = fmul fast float %114, %19
  %130 = fmul fast float %126, %128
  %131 = call float @dx.op.tertiary.f32(i32 46, float %127, float %129, float %130)  ; FMad(a,b,c)
  %132 = fmul fast float %125, %128
  %133 = call float @dx.op.tertiary.f32(i32 46, float %126, float %129, float %132)  ; FMad(a,b,c)
  %134 = fadd fast float %131, %119
  %135 = fadd fast float %133, %121
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %138 = fcmp fast ogt float %137, 0.000000e+00
  %139 = select i1 %138, float %89, float 0x3FE0101020000000
  %140 = add i32 %6, 456
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %140, i32 undef)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  %143 = add i32 %142, 0
  %144 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %143, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %145 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %144, %dx.types.Handle %24, float %134, float %135, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %146 = extractvalue %dx.types.ResRet.f32 %145, 0
  %147 = fmul fast float %146, %105
  %148 = fcmp fast ogt float %147, %139
  br i1 %148, label %150, label %149

; <label>:149                                     ; preds = %104
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %150

; <label>:150                                     ; preds = %149, %104
  %151 = fdiv fast float %10, %12
  %152 = fdiv fast float %11, %12
  %153 = fdiv fast float %7, %9
  %154 = fdiv fast float %8, %9
  %155 = fsub fast float %151, %153
  %156 = fsub fast float %152, %154
  %157 = fmul fast float %155, 5.000000e-01
  %158 = fmul fast float %156, -5.000000e-01
  %159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 240)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.i32 %159, 0
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %201

; <label>:162                                     ; preds = %150
  %163 = fmul fast float %155, 9.600000e+02
  %164 = fmul fast float %156, -5.400000e+02
  %165 = call float @dx.op.unary.f32(i32 6, float %163)  ; FAbs(value)
  %166 = call float @dx.op.unary.f32(i32 6, float %164)  ; FAbs(value)
  %167 = fadd fast float %165, -3.000000e+00
  %168 = fadd fast float %166, -3.000000e+00
  %169 = fmul fast float %167, 0x3F8A98EF60000000
  %170 = fmul fast float %168, 0x3F8A98EF60000000
  %171 = call float @dx.op.unary.f32(i32 7, float %169)  ; Saturate(value)
  %172 = call float @dx.op.unary.f32(i32 7, float %170)  ; Saturate(value)
  %173 = fmul fast float %165, 0x3FD5555560000000
  %174 = fmul fast float %166, 0x3FD5555560000000
  %175 = call float @dx.op.unary.f32(i32 7, float %173)  ; Saturate(value)
  %176 = call float @dx.op.unary.f32(i32 7, float %174)  ; Saturate(value)
  %177 = call float @dx.op.unary.f32(i32 24, float %171)  ; Sqrt(value)
  %178 = call float @dx.op.unary.f32(i32 24, float %172)  ; Sqrt(value)
  %179 = fsub fast float %175, %177
  %180 = fsub fast float %176, %178
  %181 = fmul fast float %179, 5.000000e-01
  %182 = fmul fast float %180, 5.000000e-01
  %183 = fadd fast float %181, %177
  %184 = fadd fast float %182, %178
  %185 = fsub fast float -0.000000e+00, %183
  %186 = fsub fast float -0.000000e+00, %184
  %187 = fcmp fast olt float %163, 0.000000e+00
  %188 = fcmp fast olt float %164, 0.000000e+00
  %189 = select i1 %187, float 0.000000e+00, float 1.000000e+00
  %190 = select i1 %188, float 0.000000e+00, float 1.000000e+00
  %191 = fcmp fast une float %189, 0.000000e+00
  %192 = fcmp fast une float %190, 0.000000e+00
  %193 = select i1 %191, float %183, float %185
  %194 = select i1 %192, float %184, float %186
  %195 = fmul fast float %193, 5.000000e-01
  %196 = fmul fast float %194, 5.000000e-01
  %197 = fadd fast float %195, 0x3FE0101020000000
  %198 = fadd fast float %196, 0x3FE0101020000000
  %199 = call float @dx.op.unary.f32(i32 7, float %197)  ; Saturate(value)
  %200 = call float @dx.op.unary.f32(i32 7, float %198)  ; Saturate(value)
  br label %201

; <label>:201                                     ; preds = %162, %150
  %202 = phi float [ %199, %162 ], [ %157, %150 ]
  %203 = phi float [ %200, %162 ], [ %158, %150 ]
  %204 = call float @dx.op.unary.f32(i32 6, float %34)  ; FAbs(value)
  %205 = call float @dx.op.unary.f32(i32 6, float %35)  ; FAbs(value)
  %206 = fadd fast float %205, %204
  %207 = call float @dx.op.unary.f32(i32 6, float %36)  ; FAbs(value)
  %208 = fadd fast float %206, %207
  %209 = fdiv fast float %34, %208
  %210 = fdiv fast float %35, %208
  %211 = fdiv fast float %36, %208
  %212 = fcmp fast oge float %211, 0.000000e+00
  %213 = call float @dx.op.unary.f32(i32 6, float %210)  ; FAbs(value)
  %214 = call float @dx.op.unary.f32(i32 6, float %209)  ; FAbs(value)
  %215 = fsub fast float 1.000000e+00, %213
  %216 = fsub fast float 1.000000e+00, %214
  %217 = fcmp fast oge float %209, 0.000000e+00
  %218 = select i1 %217, float 1.000000e+00, float -1.000000e+00
  %219 = fcmp fast oge float %210, 0.000000e+00
  %220 = select i1 %219, float 1.000000e+00, float -1.000000e+00
  %221 = fmul fast float %215, %218
  %222 = fmul fast float %216, %220
  %223 = select i1 %212, float %209, float %221
  %224 = select i1 %212, float %210, float %222
  %225 = fmul fast float %223, 1.275000e+02
  %226 = fmul fast float %224, 1.275000e+02
  %227 = fadd fast float %225, 1.275000e+02
  %228 = fadd fast float %226, 1.275000e+02
  %229 = call float @dx.op.unary.f32(i32 26, float %227)  ; Round_ne(value)
  %230 = call float @dx.op.unary.f32(i32 26, float %228)  ; Round_ne(value)
  %231 = fptoui float %229 to i32
  %232 = fptoui float %230 to i32
  %233 = shl i32 %232, 8
  %234 = or i32 %233, %231
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 %14)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %234)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %39)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %42)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %202)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %203)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!16 = !{[30 x i32] [i32 28, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 1, i32 0, i32 768, i32 0, i32 1024, i32 2048, i32 0, i32 3072, i32 1024, i32 2048, i32 0, i32 3072, i32 0, i32 0, i32 0, i32 0]}
!17 = !{void ()* @ps_main, !"ps_main", !18, !4, !40}
!18 = !{!19, !33, null}
!19 = !{!20, !23, !25, !26, !28, !30, !31, !32}
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
!33 = !{!34, !35, !37}
!34 = !{i32 0, !"SV_Target", i8 5, i8 16, !21, i8 0, i32 1, i8 1, i32 0, i8 0, !27}
!35 = !{i32 1, !"SV_Target", i8 5, i8 16, !36, i8 0, i32 1, i8 1, i32 1, i8 0, !27}
!36 = !{i32 1}
!37 = !{i32 2, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 2, i8 0, !39}
!38 = !{i32 2}
!39 = !{i32 3, i32 15}
!40 = !{i32 0, i64 16}

