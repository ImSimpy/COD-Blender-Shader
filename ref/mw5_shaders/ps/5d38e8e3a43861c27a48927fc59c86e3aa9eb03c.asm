;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float   x   
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw        5     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 29a072347642c97e056ae446f43db57d
;
; Pipeline Runtime Information: 
;
; Pixel Shader
; DepthOutput=0
; SampleFrequency=1
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; COLOR                    0                 linear       
; TEXCOORDS                0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_SampleIndex           0        nointerpolation       
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
;   [144 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1             t0     1
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32          2d      T3             t1     1
;                                   texture    byte         r/o      T4             t2     1
;                                   texture     f32          2d      T5     t57,space2     1
;                                   texture    byte         r/o      T6     t69,space1     1
;                                   texture     u32          2d      T7     t56,space2     1
;
;
; ViewId state:
;
; Number of inputs: 24, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 3 depends on inputs: { 0, 1, 3, 4, 8, 9, 20 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
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
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.f32 %26, 0
  %28 = fmul fast float %27, %23
  %29 = fmul fast float %27, %24
  %30 = call float @dx.op.dot3.f32(i32 55, float %17, float %18, float %19, float %17, float %18, float %19)  ; Dot3(ax,ay,az,bx,by,bz)
  %31 = bitcast float %30 to i32
  %32 = ashr i32 %31, 1
  %33 = sub nsw i32 1597250115, %32
  %34 = bitcast i32 %33 to float
  %35 = fmul fast float %34, %17
  %36 = fmul fast float %34, %18
  %37 = fmul fast float %34, %19
  %38 = fcmp fast ogt float %16, 0.000000e+00
  %39 = select i1 %38, float 1.000000e+00, float -1.000000e+00
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = fmul fast float %28, 5.000000e-01
  %43 = fmul fast float %29, 5.000000e-01
  %44 = fptosi float %42 to i32
  %45 = fptosi float %43 to i32
  %46 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %1, i32 0, i32 %44, i32 %45, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %47 = extractvalue %dx.types.ResRet.i32 %46, 0
  %48 = lshr i32 %47, 18
  %49 = uitofp i32 %48 to float
  %50 = fmul fast float %49, 0x3F4C00EBA0000000
  %51 = call float @dx.op.unary.f32(i32 21, float %50)  ; Exp(value)
  %52 = fadd fast float %51, -1.000000e+00
  %53 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %54 = extractvalue %dx.types.Dimensions %53, 0
  %55 = sitofp i32 %54 to float
  %56 = extractvalue %dx.types.Dimensions %53, 1
  %57 = sitofp i32 %56 to float
  %58 = fcmp fast oge float %42, %55
  %59 = fcmp fast oge float %43, %57
  %60 = or i1 %58, %59
  %61 = select i1 %60, float 0x4197782600000000, float %52
  %62 = fsub fast float %61, %25
  %63 = fcmp fast ogt float %62, 0.000000e+00
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 3
  %67 = fmul fast float %65, %28
  %68 = fmul fast float %66, %29
  %69 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %70 = extractvalue %dx.types.ResRet.i32 %69, 0
  %71 = and i32 %70, 114688
  %72 = icmp ne i32 %71, 0
  %73 = select i1 %72, float %67, float 0.000000e+00
  %74 = select i1 %72, float %68, float 0.000000e+00
  %75 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %9, float %73, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %76 = extractvalue %dx.types.ResRet.f32 %75, 0
  %77 = fmul fast float %76, 2.550000e+02
  %78 = fptoui float %77 to i32
  %79 = select i1 %72, i32 %78, i32 0
  %80 = and i32 %79, -2
  %81 = icmp eq i32 %80, 2
  %82 = and i1 %63, %81
  %83 = xor i1 %63, true
  %84 = icmp eq i32 %79, 1
  %85 = and i1 %84, %83
  %86 = or i1 %85, %82
  %87 = and i32 %41, 262144
  %88 = icmp ne i32 %87, 0
  %89 = and i1 %88, %86
  %90 = xor i1 %86, true
  %91 = and i32 %41, 131072
  %92 = icmp ne i32 %91, 0
  %93 = and i1 %92, %90
  %94 = or i1 %89, %93
  br i1 %94, label %95, label %96

; <label>:95                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %96

; <label>:96                                      ; preds = %95, %0
  %97 = add i32 %12, 24
  %98 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %97, i32 undef)  ; BufferLoad(srv,index,wot)
  %99 = extractvalue %dx.types.ResRet.i32 %98, 0
  %100 = bitcast i32 %99 to float
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %103 = fsub fast float -0.000000e+00, %102
  %104 = fptoui float %103 to i32
  %105 = fptoui float %28 to i32
  %106 = fptoui float %29 to i32
  %107 = and i32 %104, 31
  %108 = lshr i32 %105, %107
  %109 = lshr i32 %106, %107
  %110 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 %104, i32 %108, i32 %109, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = fcmp fast ogt float %111, -1.000000e+00
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %115 = select i1 %112, float %114, float 1.000000e+00
  %116 = fadd fast float %111, 1.000000e+00
  %117 = fmul fast float %115, %116
  %118 = call float @dx.op.unary.f32(i32 6, float %117)  ; FAbs(value)
  %119 = extractvalue %dx.types.CBufRet.f32 %113, 3
  %120 = fcmp fast oge float %118, %119
  %121 = select i1 %120, float 0x4197782600000000, float %118
  %122 = fsub fast float %121, %25
  %123 = call float @dx.op.unary.f32(i32 6, float %122)  ; FAbs(value)
  %124 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %125 = call float @dx.op.binary.f32(i32 36, float %123, float %124)  ; FMin(a,b)
  %126 = fmul fast float %125, %100
  %127 = call float @dx.op.unary.f32(i32 7, float %126)  ; Saturate(value)
  %128 = fmul fast float %127, %22
  %129 = fcmp fast ugt float %128, 0.000000e+00
  br i1 %129, label %131, label %130

; <label>:130                                     ; preds = %96
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %131

; <label>:131                                     ; preds = %130, %96
  %132 = add i32 %12, 56
  %133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %132, i32 undef)  ; BufferLoad(srv,index,wot)
  %134 = extractvalue %dx.types.ResRet.i32 %133, 0
  %135 = extractvalue %dx.types.ResRet.i32 %133, 1
  %136 = extractvalue %dx.types.ResRet.i32 %133, 2
  %137 = extractvalue %dx.types.ResRet.i32 %133, 3
  %138 = bitcast i32 %134 to float
  %139 = bitcast i32 %135 to float
  %140 = bitcast i32 %136 to float
  %141 = bitcast i32 %137 to float
  %142 = add i32 %12, 88
  %143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %142, i32 undef)  ; BufferLoad(srv,index,wot)
  %144 = extractvalue %dx.types.ResRet.i32 %143, 0
  %145 = add i32 %144, 0
  %146 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %145, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %147 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %148 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %146, %dx.types.Handle %147, float %20, float %21, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = extractvalue %dx.types.ResRet.f32 %148, 1
  %151 = extractvalue %dx.types.ResRet.f32 %148, 3
  %152 = add i32 %12, 72
  %153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %154 = extractvalue %dx.types.ResRet.i32 %153, 0
  %155 = extractvalue %dx.types.ResRet.i32 %153, 1
  %156 = extractvalue %dx.types.ResRet.i32 %153, 2
  %157 = extractvalue %dx.types.ResRet.i32 %153, 3
  %158 = bitcast i32 %154 to float
  %159 = bitcast i32 %155 to float
  %160 = bitcast i32 %156 to float
  %161 = bitcast i32 %157 to float
  %162 = fadd fast float %151, -1.000000e+00
  %163 = fmul fast float %159, %162
  %164 = fadd fast float %163, 1.000000e+00
  %165 = fsub fast float 1.000000e+00, %160
  %166 = fadd fast float %127, -1.000000e+00
  %167 = fmul fast float %161, %166
  %168 = fadd fast float %167, 1.000000e+00
  %169 = fadd fast float %128, -1.000000e+00
  %170 = fmul fast float %140, %169
  %171 = fadd fast float %170, 1.000000e+00
  %172 = fmul fast float %151, %171
  %173 = fadd fast float %172, -2.500000e-01
  %174 = call float @dx.op.unary.f32(i32 7, float %173)  ; Saturate(value)
  %175 = fmul fast float %172, 4.000000e+00
  %176 = call float @dx.op.unary.f32(i32 7, float %175)  ; Saturate(value)
  %177 = fmul fast float %141, %169
  %178 = fadd fast float %177, 1.000000e+00
  %179 = fmul fast float %178, 0x3FF5555560000000
  %180 = fmul fast float %179, %174
  %181 = fmul fast float %149, 2.000000e+00
  %182 = fmul fast float %150, 2.000000e+00
  %183 = fadd fast float %181, -1.000000e+00
  %184 = fadd fast float %182, -1.000000e+00
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %190 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %191 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 0
  %194 = extractvalue %dx.types.CBufRet.f32 %192, 1
  %195 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %196 = fmul fast float %189, %13
  %197 = call float @dx.op.tertiary.f32(i32 46, float %14, float %190, float %196)  ; FMad(a,b,c)
  %198 = call float @dx.op.tertiary.f32(i32 46, float %15, float %191, float %197)  ; FMad(a,b,c)
  %199 = fmul fast float %193, %13
  %200 = call float @dx.op.tertiary.f32(i32 46, float %14, float %194, float %199)  ; FMad(a,b,c)
  %201 = call float @dx.op.tertiary.f32(i32 46, float %15, float %195, float %200)  ; FMad(a,b,c)
  %202 = fmul fast float %198, %186
  %203 = fmul fast float %36, %15
  %204 = fmul fast float %37, %14
  %205 = fsub fast float %203, %204
  %206 = fmul fast float %37, %13
  %207 = fmul fast float %35, %15
  %208 = fsub fast float %206, %207
  %209 = fmul fast float %35, %14
  %210 = fmul fast float %36, %13
  %211 = fsub fast float %209, %210
  %212 = fmul fast float %205, %39
  %213 = fmul fast float %208, %39
  %214 = fmul fast float %211, %39
  %215 = fmul fast float %189, %212
  %216 = call float @dx.op.tertiary.f32(i32 46, float %213, float %190, float %215)  ; FMad(a,b,c)
  %217 = call float @dx.op.tertiary.f32(i32 46, float %214, float %191, float %216)  ; FMad(a,b,c)
  %218 = fmul fast float %193, %212
  %219 = call float @dx.op.tertiary.f32(i32 46, float %213, float %194, float %218)  ; FMad(a,b,c)
  %220 = call float @dx.op.tertiary.f32(i32 46, float %214, float %195, float %219)  ; FMad(a,b,c)
  %221 = fmul fast float %217, %186
  %222 = fmul fast float %220, %187
  %223 = fcmp fast olt float %39, 0.000000e+00
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %226 = extractvalue %dx.types.CBufRet.f32 %224, 3
  %227 = fsub fast float -0.000000e+00, %202
  %228 = select i1 %223, float %227, float %222
  %229 = select i1 %223, float %222, float %227
  %230 = fsub float -0.000000e+00, %221
  %231 = fmul fast float %28, %25
  %232 = fmul fast float %231, %225
  %233 = fmul fast float %29, %25
  %234 = fmul fast float %233, %226
  %235 = fmul fast float %183, %138
  %236 = fmul fast float %235, %180
  %237 = fmul fast float %184, %139
  %238 = fmul fast float %237, %180
  %239 = fmul fast float %236, %187
  %240 = fmul fast float %239, %201
  %241 = call float @dx.op.tertiary.f32(i32 46, float %228, float %238, float %240)  ; FMad(a,b,c)
  %242 = fmul fast float %229, %236
  %243 = call float @dx.op.tertiary.f32(i32 46, float %230, float %238, float %242)  ; FMad(a,b,c)
  %244 = fadd fast float %232, %241
  %245 = fsub fast float %234, %243
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 213)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 0
  %248 = extractvalue %dx.types.CBufRet.f32 %246, 1
  %249 = extractvalue %dx.types.CBufRet.f32 %246, 2
  %250 = extractvalue %dx.types.CBufRet.f32 %246, 3
  %251 = fmul fast float %247, %25
  %252 = fmul fast float %248, %25
  %253 = fmul fast float %249, %25
  %254 = fmul fast float %250, %25
  %255 = call float @dx.op.binary.f32(i32 35, float %244, float %251)  ; FMax(a,b)
  %256 = call float @dx.op.binary.f32(i32 35, float %245, float %252)  ; FMax(a,b)
  %257 = call float @dx.op.binary.f32(i32 36, float %255, float %253)  ; FMin(a,b)
  %258 = call float @dx.op.binary.f32(i32 36, float %256, float %254)  ; FMin(a,b)
  %259 = fdiv fast float %257, %25
  %260 = fdiv fast float %258, %25
  %261 = fmul fast float %158, 5.000000e+00
  %262 = fmul fast float %261, %165
  %263 = fmul fast float %262, %164
  %264 = fmul fast float %263, %168
  %265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %259, float %260, float undef, float undef, i32 0, i32 0, i32 undef, float %264)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %266 = extractvalue %dx.types.ResRet.f32 %265, 0
  %267 = extractvalue %dx.types.ResRet.f32 %265, 1
  %268 = extractvalue %dx.types.ResRet.f32 %265, 2
  %269 = fmul fast float %176, %178
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %266)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %267)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %268)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %269)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

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
!dx.viewIdState = !{!23}
!dx.entryPoints = !{!24}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !16, !19}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !15}
!15 = !{i32 0, i32 5}
!16 = !{!17, !18}
!17 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!18 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!19 = !{!20, !21, !22}
!20 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!21 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!22 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!23 = !{[26 x i32] [i32 24, i32 4, i32 15, i32 15, i32 0, i32 15, i32 15, i32 0, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 15, i32 0, i32 0, i32 0]}
!24 = !{void ()* @ps_main, !"ps_main", !25, !4, !42}
!25 = !{!26, !40, null}
!26 = !{!27, !30, !32, !34, !36, !38, !39}
!27 = !{i32 0, !"SV_Position", i8 9, i8 3, !28, i8 4, i32 1, i8 4, i32 0, i8 0, !29}
!28 = !{i32 0}
!29 = !{i32 3, i32 11}
!30 = !{i32 1, !"COLOR", i8 9, i8 0, !28, i8 2, i32 1, i8 4, i32 1, i8 0, !31}
!31 = !{i32 3, i32 1}
!32 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !28, i8 2, i32 1, i8 4, i32 2, i8 0, !33}
!33 = !{i32 3, i32 3}
!34 = !{i32 3, !"NORMAL", i8 9, i8 0, !28, i8 2, i32 1, i8 3, i32 3, i8 0, !35}
!35 = !{i32 3, i32 7}
!36 = !{i32 4, !"TANGENT", i8 9, i8 0, !28, i8 2, i32 1, i8 4, i32 4, i8 0, !37}
!37 = !{i32 3, i32 15}
!38 = !{i32 5, !"PACKED_TRI_DATA", i8 5, i8 0, !28, i8 1, i32 1, i8 4, i32 5, i8 0, !31}
!39 = !{i32 6, !"SV_SampleIndex", i8 5, i8 12, !28, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!40 = !{!41}
!41 = !{i32 0, !"SV_Target", i8 9, i8 16, !28, i8 0, i32 1, i8 4, i32 0, i8 0, !37}
!42 = !{i32 0, i64 24}

