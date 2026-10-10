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
; ENTITY_IDS               0    yz         3     NONE    uint     z 
; SV_IsFrontFace           0      w        3    FFACE    uint      w
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
; shader hash: d5e0519a4e07ef7dca7cb2d9ae1d7322
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
;   output 4 depends on inputs: { 8, 9, 10, 15 }
;   output 8 depends on inputs: { 14 }
;   output 9 depends on inputs: { 14 }
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
  %4 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = icmp ne i32 %4, 0
  %6 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = select i1 %5, float 1.000000e+00, float -1.000000e+00
  %23 = call float @dx.op.dot3.f32(i32 55, float %17, float %18, float %19, float %17, float %18, float %19)  ; Dot3(ax,ay,az,bx,by,bz)
  %24 = bitcast float %23 to i32
  %25 = ashr i32 %24, 1
  %26 = sub nsw i32 1597250115, %25
  %27 = bitcast i32 %26 to float
  %28 = fmul fast float %17, %22
  %29 = fmul fast float %28, %27
  %30 = fmul fast float %18, %22
  %31 = fmul fast float %30, %27
  %32 = fmul fast float %19, %22
  %33 = fmul fast float %32, %27
  %34 = and i32 %13, 255
  %35 = uitofp i32 %34 to float
  %36 = fmul fast float %35, 0x3F70101020000000
  %37 = lshr i32 %13, 8
  %38 = uitofp i32 %37 to float
  %39 = fmul fast float %38, 0x3F70101020000000
  %40 = add i32 %6, 60
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %40, i32 undef)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = add i32 %42, 0
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %43, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %44, i32 0)  ; GetDimensions(handle,mipLevel)
  %46 = extractvalue %dx.types.Dimensions %45, 0
  %47 = sitofp i32 %46 to float
  %48 = extractvalue %dx.types.Dimensions %45, 1
  %49 = sitofp i32 %48 to float
  %50 = fmul fast float %47, %20
  %51 = call float @dx.op.unary.f32(i32 83, float %50)  ; DerivCoarseX(value)
  %52 = call float @dx.op.unary.f32(i32 84, float %50)  ; DerivCoarseY(value)
  %53 = fmul fast float %49, %21
  %54 = call float @dx.op.unary.f32(i32 83, float %53)  ; DerivCoarseX(value)
  %55 = call float @dx.op.unary.f32(i32 84, float %53)  ; DerivCoarseY(value)
  %56 = fmul fast float %54, %54
  %57 = fmul fast float %55, %55
  %58 = fadd fast float %57, %56
  %59 = fmul fast float %54, %51
  %60 = fmul fast float %55, %52
  %61 = fadd fast float %60, %59
  %62 = fmul fast float %51, %51
  %63 = fmul fast float %52, %52
  %64 = fadd fast float %63, %62
  %65 = fmul fast float %58, %64
  %66 = fmul fast float %61, %61
  %67 = fsub fast float %65, %66
  %68 = bitcast float %67 to i32
  %69 = fadd fast float %58, %64
  %70 = bitcast float %69 to i32
  %71 = sub i32 8388608, %70
  %72 = add i32 %71, %68
  %73 = ashr i32 %72, 24
  %74 = sitofp i32 %73 to float
  %75 = add i32 %6, 24
  %76 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %75, i32 undef)  ; BufferLoad(srv,index,wot)
  %77 = extractvalue %dx.types.ResRet.i32 %76, 3
  %78 = bitcast i32 %77 to float
  %79 = fdiv fast float 1.000000e+00, %78
  %80 = fptosi float %74 to i32
  %81 = shl i32 %80, 23
  %82 = add i32 %81, 2130706432
  %83 = bitcast float %47 to i32
  %84 = bitcast float %49 to i32
  %85 = sub i32 %82, %83
  %86 = sub i32 %82, %84
  %87 = bitcast i32 %85 to float
  %88 = bitcast i32 %86 to float
  %89 = fadd fast float %14, 5.000000e-01
  %90 = fadd fast float %15, 5.000000e-01
  %91 = fmul fast float %79, %89
  %92 = fmul fast float %79, %90
  %93 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %40, i32 undef)  ; BufferLoad(srv,index,wot)
  %94 = extractvalue %dx.types.ResRet.i32 %93, 0
  %95 = add i32 %94, 0
  %96 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %95, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %97 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %96, %dx.types.Handle %2, float %20, float %21, float undef, float undef, i32 0, i32 0, i32 undef, float %74)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %98 = extractvalue %dx.types.ResRet.f32 %97, 3
  %99 = fsub fast float %20, %91
  %100 = call float @dx.op.unary.f32(i32 6, float %99)  ; FAbs(value)
  %101 = fmul fast float %79, 5.000000e-01
  %102 = fsub fast float %101, %87
  %103 = fcmp fast ogt float %100, %102
  %104 = fsub fast float %21, %92
  %105 = call float @dx.op.unary.f32(i32 6, float %104)  ; FAbs(value)
  %106 = fsub fast float %101, %88
  %107 = fcmp fast ogt float %105, %106
  %108 = or i1 %103, %107
  %109 = select i1 %108, float 0.000000e+00, float %98
  %110 = fcmp fast olt float %109, 0x3FE0101020000000
  br i1 %110, label %111, label %112

; <label>:111                                     ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %112

; <label>:112                                     ; preds = %111, %0
  %113 = fdiv fast float %10, %12
  %114 = fdiv fast float %11, %12
  %115 = fdiv fast float %7, %9
  %116 = fdiv fast float %8, %9
  %117 = fsub fast float %113, %115
  %118 = fsub fast float %114, %116
  %119 = fmul fast float %117, 5.000000e-01
  %120 = fmul fast float %118, -5.000000e-01
  %121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 240)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.i32 %121, 0
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %163

; <label>:124                                     ; preds = %112
  %125 = fmul fast float %117, 9.600000e+02
  %126 = fmul fast float %118, -5.400000e+02
  %127 = call float @dx.op.unary.f32(i32 6, float %125)  ; FAbs(value)
  %128 = call float @dx.op.unary.f32(i32 6, float %126)  ; FAbs(value)
  %129 = fadd fast float %127, -3.000000e+00
  %130 = fadd fast float %128, -3.000000e+00
  %131 = fmul fast float %129, 0x3F8A98EF60000000
  %132 = fmul fast float %130, 0x3F8A98EF60000000
  %133 = call float @dx.op.unary.f32(i32 7, float %131)  ; Saturate(value)
  %134 = call float @dx.op.unary.f32(i32 7, float %132)  ; Saturate(value)
  %135 = fmul fast float %127, 0x3FD5555560000000
  %136 = fmul fast float %128, 0x3FD5555560000000
  %137 = call float @dx.op.unary.f32(i32 7, float %135)  ; Saturate(value)
  %138 = call float @dx.op.unary.f32(i32 7, float %136)  ; Saturate(value)
  %139 = call float @dx.op.unary.f32(i32 24, float %133)  ; Sqrt(value)
  %140 = call float @dx.op.unary.f32(i32 24, float %134)  ; Sqrt(value)
  %141 = fsub fast float %137, %139
  %142 = fsub fast float %138, %140
  %143 = fmul fast float %141, 5.000000e-01
  %144 = fmul fast float %142, 5.000000e-01
  %145 = fadd fast float %143, %139
  %146 = fadd fast float %144, %140
  %147 = fsub fast float -0.000000e+00, %145
  %148 = fsub fast float -0.000000e+00, %146
  %149 = fcmp fast olt float %125, 0.000000e+00
  %150 = fcmp fast olt float %126, 0.000000e+00
  %151 = select i1 %149, float 0.000000e+00, float 1.000000e+00
  %152 = select i1 %150, float 0.000000e+00, float 1.000000e+00
  %153 = fcmp fast une float %151, 0.000000e+00
  %154 = fcmp fast une float %152, 0.000000e+00
  %155 = select i1 %153, float %145, float %147
  %156 = select i1 %154, float %146, float %148
  %157 = fmul fast float %155, 5.000000e-01
  %158 = fmul fast float %156, 5.000000e-01
  %159 = fadd fast float %157, 0x3FE0101020000000
  %160 = fadd fast float %158, 0x3FE0101020000000
  %161 = call float @dx.op.unary.f32(i32 7, float %159)  ; Saturate(value)
  %162 = call float @dx.op.unary.f32(i32 7, float %160)  ; Saturate(value)
  br label %163

; <label>:163                                     ; preds = %124, %112
  %164 = phi float [ %161, %124 ], [ %119, %112 ]
  %165 = phi float [ %162, %124 ], [ %120, %112 ]
  %166 = call float @dx.op.unary.f32(i32 6, float %29)  ; FAbs(value)
  %167 = call float @dx.op.unary.f32(i32 6, float %31)  ; FAbs(value)
  %168 = fadd fast float %167, %166
  %169 = call float @dx.op.unary.f32(i32 6, float %33)  ; FAbs(value)
  %170 = fadd fast float %168, %169
  %171 = fdiv fast float %29, %170
  %172 = fdiv fast float %31, %170
  %173 = fdiv fast float %33, %170
  %174 = fcmp fast oge float %173, 0.000000e+00
  %175 = call float @dx.op.unary.f32(i32 6, float %172)  ; FAbs(value)
  %176 = call float @dx.op.unary.f32(i32 6, float %171)  ; FAbs(value)
  %177 = fsub fast float 1.000000e+00, %175
  %178 = fsub fast float 1.000000e+00, %176
  %179 = fcmp fast oge float %171, 0.000000e+00
  %180 = select i1 %179, float 1.000000e+00, float -1.000000e+00
  %181 = fcmp fast oge float %172, 0.000000e+00
  %182 = select i1 %181, float 1.000000e+00, float -1.000000e+00
  %183 = fmul fast float %177, %180
  %184 = fmul fast float %178, %182
  %185 = select i1 %174, float %171, float %183
  %186 = select i1 %174, float %172, float %184
  %187 = fmul fast float %185, 1.275000e+02
  %188 = fmul fast float %186, 1.275000e+02
  %189 = fadd fast float %187, 1.275000e+02
  %190 = fadd fast float %188, 1.275000e+02
  %191 = call float @dx.op.unary.f32(i32 26, float %189)  ; Round_ne(value)
  %192 = call float @dx.op.unary.f32(i32 26, float %190)  ; Round_ne(value)
  %193 = fptoui float %191 to i32
  %194 = fptoui float %192 to i32
  %195 = shl i32 %194, 8
  %196 = or i32 %195, %193
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 %16)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %196)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %36)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %39)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %164)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %165)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!13 = !{[34 x i32] [i32 32, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 1, i32 0, i32 768, i32 16, i32 0, i32 0, i32 0, i32 0, i32 1024, i32 2048, i32 0, i32 3072, i32 1024, i32 2048, i32 0, i32 3072, i32 0, i32 0, i32 0, i32 0]}
!14 = !{void ()* @ps_main, !"ps_main", !15, !4, !42}
!15 = !{!16, !36, null}
!16 = !{!17, !19, !21, !23, !25, !26, !29, !31, !33, !34, !35}
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
!29 = !{i32 6, !"ENTITY_IDS", i8 5, i8 0, !18, i8 1, i32 1, i8 2, i32 3, i8 1, !30}
!30 = !{i32 3, i32 2}
!31 = !{i32 7, !"CLIP_POS", i8 9, i8 0, !18, i8 2, i32 1, i8 4, i32 5, i8 0, !32}
!32 = !{i32 3, i32 11}
!33 = !{i32 8, !"PREV_CLIP_POS", i8 9, i8 0, !18, i8 2, i32 1, i8 4, i32 6, i8 0, !32}
!34 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !18, i8 1, i32 1, i8 4, i32 7, i8 0, !24}
!35 = !{i32 10, !"SV_IsFrontFace", i8 5, i8 13, !18, i8 1, i32 1, i8 1, i32 3, i8 3, !24}
!36 = !{!37, !38, !39}
!37 = !{i32 0, !"SV_Target", i8 5, i8 16, !18, i8 0, i32 1, i8 1, i32 0, i8 0, !24}
!38 = !{i32 1, !"SV_Target", i8 5, i8 16, !27, i8 0, i32 1, i8 1, i32 1, i8 0, !24}
!39 = !{i32 2, !"SV_Target", i8 9, i8 16, !40, i8 0, i32 1, i8 4, i32 2, i8 0, !41}
!40 = !{i32 2}
!41 = !{i32 3, i32 15}
!42 = !{i32 0, i64 16}

