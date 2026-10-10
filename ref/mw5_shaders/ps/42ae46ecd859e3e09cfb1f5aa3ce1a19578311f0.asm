;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; TEXCOORDS                0   xyzw        1     NONE   float   xy  
; NORMAL                   0   xyz         2     NONE   float   xyz 
; CARD_DEPTH_OFFSET        0      w        2     NONE   float       
; TRIID                    0   x           3     NONE    uint   x   
; SV_IsFrontFace           0    y          3    FFACE    uint    y  
; CARD_BARY_AND_TILE       1   xyzw        4     NONE   float     zw
; CLIP_POS                 0   xyzw        5     NONE   float   xy w
; PREV_CLIP_POS            0   xyzw        6     NONE   float   xy w
; PACKED_TRI_DATA          0   xyzw        7     NONE    uint   x   
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
; shader hash: 00ea098cad24c86ad22c97735d6b68ed
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
; CARD_DEPTH_OFFSET        0                 linear       
; CARD_BARY_AND_TILE       1        nointerpolation       
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture    byte         r/o      T1     t37,space1     1
;
;
; ViewId state:
;
; Number of inputs: 32, outputs: 12
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 12 }
;   output 4 depends on inputs: { 8, 9, 10, 13 }
;   output 10 depends on inputs: { 20, 23, 24, 27 }
;   output 11 depends on inputs: { 21, 23, 25, 27 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
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
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = icmp ne i32 %4, 0
  %6 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = select i1 %5, float 1.000000e+00, float -1.000000e+00
  %22 = call float @dx.op.dot3.f32(i32 55, float %16, float %17, float %18, float %16, float %17, float %18)  ; Dot3(ax,ay,az,bx,by,bz)
  %23 = bitcast float %22 to i32
  %24 = ashr i32 %23, 1
  %25 = sub nsw i32 1597250115, %24
  %26 = bitcast i32 %25 to float
  %27 = fmul fast float %16, %21
  %28 = fmul fast float %27, %26
  %29 = fmul fast float %17, %21
  %30 = fmul fast float %29, %26
  %31 = fmul fast float %18, %21
  %32 = fmul fast float %31, %26
  %33 = add i32 %6, 60
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %33, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = add i32 %35, 0
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %39 = extractvalue %dx.types.Dimensions %38, 0
  %40 = sitofp i32 %39 to float
  %41 = extractvalue %dx.types.Dimensions %38, 1
  %42 = sitofp i32 %41 to float
  %43 = fmul fast float %40, %19
  %44 = call float @dx.op.unary.f32(i32 83, float %43)  ; DerivCoarseX(value)
  %45 = call float @dx.op.unary.f32(i32 84, float %43)  ; DerivCoarseY(value)
  %46 = fmul fast float %42, %20
  %47 = call float @dx.op.unary.f32(i32 83, float %46)  ; DerivCoarseX(value)
  %48 = call float @dx.op.unary.f32(i32 84, float %46)  ; DerivCoarseY(value)
  %49 = fmul fast float %47, %47
  %50 = fmul fast float %48, %48
  %51 = fadd fast float %50, %49
  %52 = fmul fast float %47, %44
  %53 = fmul fast float %48, %45
  %54 = fadd fast float %53, %52
  %55 = fmul fast float %44, %44
  %56 = fmul fast float %45, %45
  %57 = fadd fast float %56, %55
  %58 = fmul fast float %51, %57
  %59 = fmul fast float %54, %54
  %60 = fsub fast float %58, %59
  %61 = bitcast float %60 to i32
  %62 = fadd fast float %51, %57
  %63 = bitcast float %62 to i32
  %64 = sub i32 8388608, %63
  %65 = add i32 %64, %61
  %66 = ashr i32 %65, 24
  %67 = sitofp i32 %66 to float
  %68 = add i32 %6, 24
  %69 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %68, i32 undef)  ; BufferLoad(srv,index,wot)
  %70 = extractvalue %dx.types.ResRet.i32 %69, 3
  %71 = bitcast i32 %70 to float
  %72 = fdiv fast float 1.000000e+00, %71
  %73 = fptosi float %67 to i32
  %74 = shl i32 %73, 23
  %75 = add i32 %74, 2130706432
  %76 = bitcast float %40 to i32
  %77 = bitcast float %42 to i32
  %78 = sub i32 %75, %76
  %79 = sub i32 %75, %77
  %80 = bitcast i32 %78 to float
  %81 = bitcast i32 %79 to float
  %82 = fadd fast float %13, 5.000000e-01
  %83 = fadd fast float %14, 5.000000e-01
  %84 = fmul fast float %72, %82
  %85 = fmul fast float %72, %83
  %86 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %33, i32 undef)  ; BufferLoad(srv,index,wot)
  %87 = extractvalue %dx.types.ResRet.i32 %86, 0
  %88 = add i32 %87, 0
  %89 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %88, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %90 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %89, %dx.types.Handle %2, float %19, float %20, float undef, float undef, i32 0, i32 0, i32 undef, float %67)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %91 = extractvalue %dx.types.ResRet.f32 %90, 3
  %92 = fsub fast float %19, %84
  %93 = call float @dx.op.unary.f32(i32 6, float %92)  ; FAbs(value)
  %94 = fmul fast float %72, 5.000000e-01
  %95 = fsub fast float %94, %80
  %96 = fcmp fast ogt float %93, %95
  %97 = fsub fast float %20, %85
  %98 = call float @dx.op.unary.f32(i32 6, float %97)  ; FAbs(value)
  %99 = fsub fast float %94, %81
  %100 = fcmp fast ogt float %98, %99
  %101 = or i1 %96, %100
  %102 = select i1 %101, float 0.000000e+00, float %91
  %103 = fcmp fast olt float %102, 0x3FE0101020000000
  br i1 %103, label %104, label %105

; <label>:104                                     ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %105

; <label>:105                                     ; preds = %104, %0
  %106 = fdiv fast float %10, %12
  %107 = fdiv fast float %11, %12
  %108 = fdiv fast float %7, %9
  %109 = fdiv fast float %8, %9
  %110 = fsub fast float %106, %108
  %111 = fsub fast float %107, %109
  %112 = fmul fast float %110, 5.000000e-01
  %113 = fmul fast float %111, -5.000000e-01
  %114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 240)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.i32 %114, 0
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %156

; <label>:117                                     ; preds = %105
  %118 = fmul fast float %110, 9.600000e+02
  %119 = fmul fast float %111, -5.400000e+02
  %120 = call float @dx.op.unary.f32(i32 6, float %118)  ; FAbs(value)
  %121 = call float @dx.op.unary.f32(i32 6, float %119)  ; FAbs(value)
  %122 = fadd fast float %120, -3.000000e+00
  %123 = fadd fast float %121, -3.000000e+00
  %124 = fmul fast float %122, 0x3F8A98EF60000000
  %125 = fmul fast float %123, 0x3F8A98EF60000000
  %126 = call float @dx.op.unary.f32(i32 7, float %124)  ; Saturate(value)
  %127 = call float @dx.op.unary.f32(i32 7, float %125)  ; Saturate(value)
  %128 = fmul fast float %120, 0x3FD5555560000000
  %129 = fmul fast float %121, 0x3FD5555560000000
  %130 = call float @dx.op.unary.f32(i32 7, float %128)  ; Saturate(value)
  %131 = call float @dx.op.unary.f32(i32 7, float %129)  ; Saturate(value)
  %132 = call float @dx.op.unary.f32(i32 24, float %126)  ; Sqrt(value)
  %133 = call float @dx.op.unary.f32(i32 24, float %127)  ; Sqrt(value)
  %134 = fsub fast float %130, %132
  %135 = fsub fast float %131, %133
  %136 = fmul fast float %134, 5.000000e-01
  %137 = fmul fast float %135, 5.000000e-01
  %138 = fadd fast float %136, %132
  %139 = fadd fast float %137, %133
  %140 = fsub fast float -0.000000e+00, %138
  %141 = fsub fast float -0.000000e+00, %139
  %142 = fcmp fast olt float %118, 0.000000e+00
  %143 = fcmp fast olt float %119, 0.000000e+00
  %144 = select i1 %142, float 0.000000e+00, float 1.000000e+00
  %145 = select i1 %143, float 0.000000e+00, float 1.000000e+00
  %146 = fcmp fast une float %144, 0.000000e+00
  %147 = fcmp fast une float %145, 0.000000e+00
  %148 = select i1 %146, float %138, float %140
  %149 = select i1 %147, float %139, float %141
  %150 = fmul fast float %148, 5.000000e-01
  %151 = fmul fast float %149, 5.000000e-01
  %152 = fadd fast float %150, 0x3FE0101020000000
  %153 = fadd fast float %151, 0x3FE0101020000000
  %154 = call float @dx.op.unary.f32(i32 7, float %152)  ; Saturate(value)
  %155 = call float @dx.op.unary.f32(i32 7, float %153)  ; Saturate(value)
  br label %156

; <label>:156                                     ; preds = %117, %105
  %157 = phi float [ %154, %117 ], [ %112, %105 ]
  %158 = phi float [ %155, %117 ], [ %113, %105 ]
  %159 = call float @dx.op.unary.f32(i32 6, float %28)  ; FAbs(value)
  %160 = call float @dx.op.unary.f32(i32 6, float %30)  ; FAbs(value)
  %161 = fadd fast float %160, %159
  %162 = call float @dx.op.unary.f32(i32 6, float %32)  ; FAbs(value)
  %163 = fadd fast float %161, %162
  %164 = fdiv fast float %28, %163
  %165 = fdiv fast float %30, %163
  %166 = fdiv fast float %32, %163
  %167 = fcmp fast oge float %166, 0.000000e+00
  %168 = call float @dx.op.unary.f32(i32 6, float %165)  ; FAbs(value)
  %169 = call float @dx.op.unary.f32(i32 6, float %164)  ; FAbs(value)
  %170 = fsub fast float 1.000000e+00, %168
  %171 = fsub fast float 1.000000e+00, %169
  %172 = fcmp fast oge float %164, 0.000000e+00
  %173 = select i1 %172, float 1.000000e+00, float -1.000000e+00
  %174 = fcmp fast oge float %165, 0.000000e+00
  %175 = select i1 %174, float 1.000000e+00, float -1.000000e+00
  %176 = fmul fast float %170, %173
  %177 = fmul fast float %171, %175
  %178 = select i1 %167, float %164, float %176
  %179 = select i1 %167, float %165, float %177
  %180 = fmul fast float %178, 1.275000e+02
  %181 = fmul fast float %179, 1.275000e+02
  %182 = fadd fast float %180, 1.275000e+02
  %183 = fadd fast float %181, 1.275000e+02
  %184 = call float @dx.op.unary.f32(i32 26, float %182)  ; Round_ne(value)
  %185 = call float @dx.op.unary.f32(i32 26, float %183)  ; Round_ne(value)
  %186 = fptoui float %184 to i32
  %187 = fptoui float %185 to i32
  %188 = shl i32 %187, 8
  %189 = or i32 %188, %186
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 %15)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %189)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %157)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %158)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!13}
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !9, !11}
!5 = !{!6, !8}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!9 = !{!10}
!10 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!11 = !{!12}
!12 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!13 = !{[34 x i32] [i32 32, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 1, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1024, i32 2048, i32 0, i32 3072, i32 1024, i32 2048, i32 0, i32 3072, i32 0, i32 0, i32 0, i32 0]}
!14 = !{void ()* @ps_main, !"ps_main", !15, !4, !40}
!15 = !{!16, !34, null}
!16 = !{!17, !19, !21, !23, !25, !26, !29, !31, !32, !33}
!17 = !{i32 0, !"SV_Position", i8 9, i8 3, !18, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!18 = !{i32 0}
!19 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !18, i8 2, i32 1, i8 4, i32 1, i8 0, !20}
!20 = !{i32 3, i32 3}
!21 = !{i32 2, !"NORMAL", i8 9, i8 0, !18, i8 2, i32 1, i8 3, i32 2, i8 0, !22}
!22 = !{i32 3, i32 7}
!23 = !{i32 3, !"TRIID", i8 5, i8 0, !18, i8 1, i32 1, i8 1, i32 3, i8 0, !24}
!24 = !{i32 3, i32 1}
!25 = !{i32 4, !"CARD_DEPTH_OFFSET", i8 9, i8 0, !18, i8 2, i32 1, i8 1, i32 2, i8 3, null}
!26 = !{i32 5, !"CARD_BARY_AND_TILE", i8 9, i8 0, !27, i8 1, i32 1, i8 4, i32 4, i8 0, !28}
!27 = !{i32 1}
!28 = !{i32 3, i32 12}
!29 = !{i32 6, !"CLIP_POS", i8 9, i8 0, !18, i8 2, i32 1, i8 4, i32 5, i8 0, !30}
!30 = !{i32 3, i32 11}
!31 = !{i32 7, !"PREV_CLIP_POS", i8 9, i8 0, !18, i8 2, i32 1, i8 4, i32 6, i8 0, !30}
!32 = !{i32 8, !"PACKED_TRI_DATA", i8 5, i8 0, !18, i8 1, i32 1, i8 4, i32 7, i8 0, !24}
!33 = !{i32 9, !"SV_IsFrontFace", i8 5, i8 13, !18, i8 1, i32 1, i8 1, i32 3, i8 1, !24}
!34 = !{!35, !36, !37}
!35 = !{i32 0, !"SV_Target", i8 5, i8 16, !18, i8 0, i32 1, i8 1, i32 0, i8 0, !24}
!36 = !{i32 1, !"SV_Target", i8 5, i8 16, !27, i8 0, i32 1, i8 1, i32 1, i8 0, !24}
!37 = !{i32 2, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 2, i8 0, !39}
!38 = !{i32 2}
!39 = !{i32 3, i32 15}
!40 = !{i32 0, i64 16}

