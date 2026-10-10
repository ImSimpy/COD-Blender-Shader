;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   x   
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; ENTITY_IDS               0   xy          4     NONE    uint   x   
; SV_IsFrontFace           0     z         4    FFACE    uint     z 
; PACKED_TRI_DATA          0   xyzw        5     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 2a1ef63f25ef7c34db2406e89dc9ca35
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
; ENTITY_IDS               0        nointerpolation       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
; SV_SampleIndex           0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
; SV_Target                1                              
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
;   [128 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1     t37,space2     1
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture    byte         r/o      T3     t22,space1     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture     f32          2d      T5             t0     1
;                                   texture     f32          2d      T6     t57,space2     1
;                                   texture    byte         r/o      T7     t69,space1     1
;                                   texture     u32          2d      T8     t56,space2     1
;                                   texture     f32          1d      T9     t30,space2     1
;                                   texture     f32          3d     T10     t45,space2     1
;                                   texture     f32     2darray     T11     t47,space2     1
;                                   textureunorm_f32     2darray     T12     t85,space2     1
;                                   texture     f32          2d     T13     t83,space2     1
;                                   texture    byte         r/o     T14             t1     1
;
;
; ViewId state:
;
; Number of inputs: 24, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 18, 20 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 18, 20 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 18, 20 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = icmp ne i32 %20, 0
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = alloca [3 x float], align 4
  %35 = alloca [3 x float], align 4
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.f32 %37, 0
  %39 = fmul fast float %38, %30
  %40 = fmul fast float %38, %31
  %41 = select i1 %21, float 1.000000e+00, float -1.000000e+00
  %42 = call float @dx.op.dot3.f32(i32 55, float %24, float %25, float %26, float %24, float %25, float %26)  ; Dot3(ax,ay,az,bx,by,bz)
  %43 = bitcast float %42 to i32
  %44 = ashr i32 %43, 1
  %45 = sub nsw i32 1597250115, %44
  %46 = bitcast i32 %45 to float
  %47 = fmul fast float %24, %41
  %48 = fmul fast float %47, %46
  %49 = fmul fast float %25, %41
  %50 = fmul fast float %49, %46
  %51 = fmul fast float %26, %41
  %52 = fmul fast float %51, %46
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 3
  %56 = fmul fast float %39, 2.000000e+00
  %57 = fmul fast float %56, %54
  %58 = fmul fast float %40, 2.000000e+00
  %59 = fmul fast float %58, %55
  %60 = fsub fast float 1.000000e+00, %57
  %61 = fsub fast float 1.000000e+00, %59
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %65 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %66 = fmul fast float %60, %63
  %67 = fmul fast float %60, %64
  %68 = fmul fast float %60, %65
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %72 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %73 = fmul fast float %61, %70
  %74 = fmul fast float %61, %71
  %75 = fmul fast float %61, %72
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = extractvalue %dx.types.CBufRet.f32 %76, 1
  %79 = extractvalue %dx.types.CBufRet.f32 %76, 2
  %80 = fadd fast float %73, %77
  %81 = fadd fast float %80, %66
  %82 = fadd fast float %74, %78
  %83 = fadd fast float %82, %67
  %84 = fadd fast float %75, %79
  %85 = fadd fast float %84, %68
  %86 = fmul fast float %81, %33
  %87 = fmul fast float %83, %33
  %88 = fmul fast float %85, %33
  %89 = shl i32 %23, 5
  %90 = add i32 %89, 4194304
  %91 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %90, i32 undef)  ; BufferLoad(srv,index,wot)
  %92 = extractvalue %dx.types.ResRet.i32 %91, 1
  %93 = extractvalue %dx.types.ResRet.i32 %91, 2
  %94 = extractvalue %dx.types.ResRet.i32 %91, 3
  %95 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.i32 %95, 3
  %97 = and i32 %96, 3
  %98 = icmp ne i32 %97, 0
  %99 = and i32 %96, 4
  %100 = icmp ne i32 %99, 0
  %101 = and i1 %98, %100
  br i1 %101, label %102, label %111

; <label>:102                                     ; preds = %0
  %103 = fmul fast float %55, %40
  %104 = fmul fast float %54, %39
  %105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %104, float %103, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %106 = extractvalue %dx.types.ResRet.f32 %105, 0
  %107 = fsub fast float 1.000000e+00, %106
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = fcmp fast olt float %107, %109
  br label %119

; <label>:111                                     ; preds = %0
  %112 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.i32 %112, 3
  %114 = and i32 %113, 3
  %115 = icmp ne i32 %114, 0
  %116 = and i32 %113, 4
  %117 = icmp eq i32 %116, 0
  %118 = and i1 %115, %117
  br label %119

; <label>:119                                     ; preds = %111, %102
  %120 = phi i1 [ %110, %102 ], [ %118, %111 ]
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 3
  %124 = fmul fast float %122, %39
  %125 = fmul fast float %123, %40
  %126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.i32 %126, 0
  %128 = and i32 %127, 114688
  %129 = icmp ne i32 %128, 0
  %130 = select i1 %129, float %124, float 0.000000e+00
  %131 = select i1 %129, float %125, float 0.000000e+00
  %132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %130, float %131, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %133 = extractvalue %dx.types.ResRet.f32 %132, 0
  %134 = fmul fast float %133, 2.550000e+02
  %135 = fptoui float %134 to i32
  %136 = select i1 %129, i32 %135, i32 0
  %137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %138 = extractvalue %dx.types.ResRet.i32 %137, 0
  %139 = lshr i32 %92, 16
  %140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %139)  ; LegacyF16ToF32(value)
  %141 = fmul fast float %140, %29
  %142 = and i32 %94, 65535
  %143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %142)  ; LegacyF16ToF32(value)
  %144 = shl i32 %93, 4
  %145 = and i32 %144, 32752
  %146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %145)  ; LegacyF16ToF32(value)
  %147 = lshr i32 %93, 7
  %148 = and i32 %147, 32752
  %149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %148)  ; LegacyF16ToF32(value)
  %150 = lshr i32 %93, 22
  %151 = shl nuw nsw i32 %150, 5
  %152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %151)  ; LegacyF16ToF32(value)
  %153 = fmul fast float %146, %143
  %154 = and i32 %138, 16
  %155 = icmp ne i32 %154, 0
  %156 = select i1 %155, float 1.000000e+00, float %141
  %157 = fcmp fast ogt float %156, 0.000000e+00
  br i1 %157, label %159, label %158

; <label>:158                                     ; preds = %119
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %159

; <label>:159                                     ; preds = %158, %119
  %160 = call float @dx.op.unary.f32(i32 7, float %156)  ; Saturate(value)
  %161 = fmul fast float %39, 5.000000e-01
  %162 = fmul fast float %40, 5.000000e-01
  %163 = fptosi float %161 to i32
  %164 = fptosi float %162 to i32
  %165 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 0, i32 %163, i32 %164, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = lshr i32 %166, 18
  %168 = uitofp i32 %167 to float
  %169 = fmul fast float %168, 0x3F4C00EBA0000000
  %170 = call float @dx.op.unary.f32(i32 21, float %169)  ; Exp(value)
  %171 = fadd fast float %170, -1.000000e+00
  %172 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %7, i32 0)  ; GetDimensions(handle,mipLevel)
  %173 = extractvalue %dx.types.Dimensions %172, 0
  %174 = sitofp i32 %173 to float
  %175 = extractvalue %dx.types.Dimensions %172, 1
  %176 = sitofp i32 %175 to float
  %177 = fcmp fast oge float %161, %174
  %178 = fcmp fast oge float %162, %176
  %179 = or i1 %177, %178
  %180 = select i1 %179, float 0x4197782600000000, float %171
  %181 = fsub fast float %180, %33
  %182 = fcmp fast ogt float %181, 0.000000e+00
  %183 = and i32 %136, -2
  %184 = icmp eq i32 %183, 2
  %185 = and i1 %184, %182
  %186 = xor i1 %182, true
  %187 = icmp eq i32 %136, 1
  %188 = and i1 %187, %186
  %189 = or i1 %185, %188
  %190 = and i32 %138, 262144
  %191 = icmp ne i32 %190, 0
  %192 = and i1 %191, %189
  %193 = xor i1 %189, true
  %194 = and i32 %138, 131072
  %195 = icmp ne i32 %194, 0
  %196 = and i1 %195, %193
  %197 = or i1 %192, %196
  br i1 %197, label %198, label %199

; <label>:198                                     ; preds = %159
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %199

; <label>:199                                     ; preds = %198, %159
  %200 = add i32 %22, 136
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = extractvalue %dx.types.ResRet.i32 %201, 1
  %204 = extractvalue %dx.types.ResRet.i32 %201, 2
  %205 = extractvalue %dx.types.ResRet.i32 %201, 3
  %206 = bitcast i32 %202 to float
  %207 = bitcast i32 %203 to float
  %208 = bitcast i32 %204 to float
  %209 = bitcast i32 %205 to float
  %210 = add i32 %22, 152
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 2
  %213 = bitcast i32 %212 to float
  %214 = add i32 %22, 168
  %215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %214, i32 undef)  ; BufferLoad(srv,index,wot)
  %216 = add i32 %22, 184
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 3
  %219 = bitcast i32 %218 to float
  %220 = add i32 %22, 76
  %221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %220, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = and i32 %222, 2
  %224 = icmp ne i32 %223, 0
  %225 = and i32 %222, 1
  %226 = icmp eq i32 %225, 0
  %227 = and i32 %222, 8
  %228 = icmp eq i32 %227, 0
  %229 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %230 = extractvalue %dx.types.Dimensions %229, 0
  %231 = sitofp i32 %230 to float
  %232 = extractvalue %dx.types.Dimensions %229, 1
  %233 = sitofp i32 %232 to float
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 2
  %236 = extractvalue %dx.types.CBufRet.f32 %234, 3
  %237 = fmul fast float %235, %39
  %238 = fmul fast float %236, %40
  %239 = fmul fast float %237, %231
  %240 = fmul fast float %238, %233
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 1
  %243 = fsub fast float -0.000000e+00, %242
  %244 = fptoui float %243 to i32
  %245 = fptoui float %239 to i32
  %246 = fptoui float %240 to i32
  %247 = and i32 %244, 31
  %248 = lshr i32 %245, %247
  %249 = lshr i32 %246, %247
  %250 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 %244, i32 %248, i32 %249, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = fcmp fast ogt float %251, -1.000000e+00
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 1
  %255 = select i1 %252, float %254, float 1.000000e+00
  %256 = fadd fast float %251, 1.000000e+00
  %257 = fmul fast float %255, %256
  %258 = call float @dx.op.unary.f32(i32 6, float %257)  ; FAbs(value)
  %259 = extractvalue %dx.types.CBufRet.f32 %253, 3
  %260 = fcmp fast oge float %258, %259
  %261 = select i1 %260, float 0x4197782600000000, float %258
  %262 = fsub fast float %261, %33
  br i1 %228, label %306, label %263

; <label>:263                                     ; preds = %199
  %264 = extractvalue %dx.types.ResRet.i32 %211, 1
  %265 = bitcast i32 %264 to float
  %266 = extractvalue %dx.types.ResRet.i32 %215, 3
  %267 = bitcast i32 %266 to float
  %268 = extractvalue %dx.types.ResRet.i32 %211, 0
  %269 = bitcast i32 %268 to float
  %270 = fadd fast float %269, %33
  %271 = fcmp fast olt float %261, %33
  %272 = fcmp fast ogt float %261, %270
  %273 = or i1 %271, %272
  %274 = select i1 %273, float 0.000000e+00, float %262
  %275 = call float @dx.op.unary.f32(i32 83, float %261)  ; DerivCoarseX(value)
  %276 = call float @dx.op.unary.f32(i32 84, float %261)  ; DerivCoarseY(value)
  %277 = fmul fast float %275, %275
  %278 = fmul fast float %276, %276
  %279 = fadd fast float %278, %277
  %280 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 2
  %283 = fmul fast float %282, %280
  %284 = call float @dx.op.unary.f32(i32 7, float %283)  ; Saturate(value)
  %285 = fmul fast float %284, %265
  %286 = fdiv fast float %262, %285
  %287 = call float @dx.op.unary.f32(i32 7, float %286)  ; Saturate(value)
  %288 = fmul fast float %287, 2.000000e+00
  %289 = fsub fast float 3.000000e+00, %288
  %290 = fmul fast float %287, %287
  %291 = fmul fast float %290, %289
  %292 = fsub fast float %261, %270
  %293 = fadd fast float %292, %285
  %294 = fdiv fast float %293, %285
  %295 = call float @dx.op.unary.f32(i32 7, float %294)  ; Saturate(value)
  %296 = fmul fast float %295, 2.000000e+00
  %297 = fsub fast float 3.000000e+00, %296
  %298 = fmul fast float %295, %295
  %299 = fmul fast float %298, %297
  %300 = fsub fast float %291, %299
  %301 = fsub fast float %267, %219
  %302 = fmul fast float %300, %301
  %303 = fadd fast float %302, %219
  %304 = fmul fast float %274, %206
  %305 = call float @dx.op.unary.f32(i32 6, float %304)  ; FAbs(value)
  br label %345

; <label>:306                                     ; preds = %199
  %307 = and i32 %222, 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %320, label %309

; <label>:309                                     ; preds = %306
  %310 = select i1 %224, float 5.000000e+01, float 1.000000e+00
  %311 = fmul fast float %310, %206
  %312 = fmul fast float %27, 2.000000e+00
  %313 = fmul fast float %28, 2.000000e+00
  %314 = fadd fast float %312, -1.000000e+00
  %315 = fadd fast float %313, -1.000000e+00
  %316 = call float @dx.op.dot2.f32(i32 54, float %314, float %315, float %314, float %315)  ; Dot2(ax,ay,bx,by)
  %317 = fmul fast float %316, %213
  %318 = fsub fast float %262, %317
  %319 = fmul fast float %311, %318
  br label %345

; <label>:320                                     ; preds = %306
  br i1 %226, label %340, label %321

; <label>:321                                     ; preds = %320
  %322 = select i1 %224, float 0x3F947AE140000000, float 1.000000e+00
  %323 = fdiv fast float 1.000000e+00, %322
  %324 = fmul fast float %322, %207
  %325 = fmul fast float %322, %208
  %326 = fmul fast float %323, %209
  %327 = call float @dx.op.unary.f32(i32 6, float %262)  ; FAbs(value)
  %328 = fcmp fast olt float %327, %324
  br i1 %328, label %329, label %333, !dx.controlflow.hints !54

; <label>:329                                     ; preds = %321
  %330 = fmul fast float %323, %206
  %331 = fmul fast float %330, %327
  %332 = call float @dx.op.unary.f32(i32 6, float %331)  ; FAbs(value)
  br label %345

; <label>:333                                     ; preds = %321
  %334 = fcmp fast ogt float %327, %325
  br i1 %334, label %335, label %345

; <label>:335                                     ; preds = %333
  %336 = fsub fast float %327, %325
  %337 = fmul fast float %326, %336
  %338 = call float @dx.op.unary.f32(i32 6, float %337)  ; FAbs(value)
  %339 = fsub fast float 1.000000e+00, %338
  br label %345

; <label>:340                                     ; preds = %320
  %341 = select i1 %224, float 5.000000e+01, float 1.000000e+00
  %342 = fmul fast float %341, %206
  %343 = call float @dx.op.binary.f32(i32 36, float %262, float 0x47EFFFFFE0000000)  ; FMin(a,b)
  %344 = fmul fast float %342, %343
  br label %345

; <label>:345                                     ; preds = %340, %335, %333, %329, %309, %263
  %346 = phi float [ %305, %263 ], [ %319, %309 ], [ %344, %340 ], [ %332, %329 ], [ %339, %335 ], [ %327, %333 ]
  %347 = phi float [ %303, %263 ], [ 1.000000e+00, %309 ], [ 1.000000e+00, %340 ], [ 1.000000e+00, %329 ], [ 1.000000e+00, %335 ], [ 1.000000e+00, %333 ]
  %348 = call float @dx.op.unary.f32(i32 7, float %346)  ; Saturate(value)
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 2
  %351 = fptosi float %33 to i32
  %352 = sitofp i32 %351 to float
  %353 = fadd fast float %350, %352
  %354 = fmul fast float %353, 0x3FE3C6EF40000000
  %355 = frem fast float %39, 2.560000e+02
  %356 = frem fast float %40, 2.560000e+02
  %357 = fptoui float %355 to i32
  %358 = fptoui float %356 to i32
  %359 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %357, i32 %358, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  %361 = fadd fast float %360, %354
  %362 = call float @dx.op.unary.f32(i32 22, float %361)  ; Frc(value)
  %363 = add i32 %22, 88
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = extractvalue %dx.types.ResRet.i32 %364, 1
  %367 = extractvalue %dx.types.ResRet.i32 %364, 2
  %368 = extractvalue %dx.types.ResRet.i32 %364, 3
  %369 = bitcast i32 %365 to float
  %370 = bitcast i32 %366 to float
  %371 = bitcast i32 %367 to float
  %372 = bitcast i32 %368 to float
  %373 = add i32 %22, 104
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = extractvalue %dx.types.ResRet.i32 %374, 1
  %377 = extractvalue %dx.types.ResRet.i32 %374, 2
  %378 = bitcast i32 %375 to float
  %379 = bitcast i32 %376 to float
  %380 = bitcast i32 %377 to float
  %381 = add i32 %22, 120
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = extractvalue %dx.types.ResRet.i32 %382, 1
  %385 = extractvalue %dx.types.ResRet.i32 %382, 2
  %386 = bitcast i32 %383 to float
  %387 = bitcast i32 %384 to float
  %388 = bitcast i32 %385 to float
  %389 = call float @dx.op.dot3.f32(i32 55, float %48, float %50, float %52, float %48, float %50, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %390 = call float @dx.op.unary.f32(i32 25, float %389)  ; Rsqrt(value)
  %391 = fmul fast float %390, %48
  %392 = fmul fast float %390, %50
  %393 = fmul fast float %390, %52
  %394 = call float @dx.op.dot3.f32(i32 55, float %86, float %87, float %88, float %86, float %87, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %395 = call float @dx.op.unary.f32(i32 25, float %394)  ; Rsqrt(value)
  %396 = fmul fast float %395, %86
  %397 = fmul fast float %395, %87
  %398 = fmul fast float %395, %88
  %399 = call float @dx.op.dot3.f32(i32 55, float %396, float %397, float %398, float %391, float %392, float %393)  ; Dot3(ax,ay,az,bx,by,bz)
  %400 = fmul fast float %399, %399
  %401 = fmul fast float %400, %371
  %402 = fadd fast float %401, %372
  %403 = call float @dx.op.unary.f32(i32 7, float %402)  ; Saturate(value)
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 3
  %406 = fmul fast float %405, %394
  %407 = fsub fast float %369, %406
  %408 = fmul fast float %407, %370
  %409 = call float @dx.op.unary.f32(i32 7, float %408)  ; Saturate(value)
  %410 = fmul fast float %409, %403
  %411 = fsub fast float %378, %386
  %412 = fsub fast float %379, %387
  %413 = fsub fast float %380, %388
  %414 = fmul fast float %410, %411
  %415 = fmul fast float %410, %412
  %416 = fmul fast float %410, %413
  %417 = fadd fast float %414, %386
  %418 = fadd fast float %415, %387
  %419 = fadd fast float %416, %388
  %420 = fmul fast float %153, %417
  %421 = fmul fast float %347, %160
  %422 = fmul fast float %421, %348
  %423 = fmul fast float %422, %410
  %424 = add i32 %22, 200
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = add i32 %426, 0
  %428 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %427, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %429 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %428, %dx.types.Handle %36, float %27, float %28, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %430 = extractvalue %dx.types.ResRet.f32 %429, 0
  %431 = extractvalue %dx.types.ResRet.f32 %429, 1
  %432 = extractvalue %dx.types.ResRet.f32 %429, 2
  %433 = add i32 %22, 44
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = shl i32 %435, 4
  %437 = and i32 %436, 32752
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = lshr i32 %435, 7
  %440 = and i32 %439, 32752
  %441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %440)  ; LegacyF16ToF32(value)
  %442 = lshr i32 %435, 22
  %443 = shl nuw nsw i32 %442, 5
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = fmul fast float %438, %430
  %446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %447 = extractvalue %dx.types.CBufRet.f32 %446, 0
  %448 = fmul fast float %445, %447
  %449 = add i32 %22, 48
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = lshr i32 %451, 22
  %453 = shl nuw nsw i32 %452, 5
  %454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %453)  ; LegacyF16ToF32(value)
  %455 = fmul fast float %454, %448
  %456 = select i1 %120, float %455, float %448
  %457 = fmul fast float %420, %456
  %458 = fmul fast float %149, %143
  %459 = fmul fast float %458, %418
  %460 = fmul fast float %459, %431
  %461 = fmul fast float %460, %441
  %462 = fmul fast float %461, %447
  %463 = fmul fast float %152, %143
  %464 = fmul fast float %463, %419
  %465 = fmul fast float %464, %432
  %466 = fmul fast float %465, %444
  %467 = fmul fast float %466, %447
  %468 = call float @dx.op.dot3.f32(i32 55, float %457, float %462, float %467, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %469 = select i1 %120, float 0.000000e+00, float %457
  %470 = select i1 %120, float %468, float %462
  %471 = select i1 %120, float 0.000000e+00, float %467
  %472 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 0, i32 %163, i32 %164, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = lshr i32 %473, 18
  %475 = uitofp i32 %474 to float
  %476 = fmul fast float %475, 0x3F4C00EBA0000000
  %477 = call float @dx.op.unary.f32(i32 21, float %476)  ; Exp(value)
  %478 = fadd fast float %477, -1.000000e+00
  %479 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %7, i32 0)  ; GetDimensions(handle,mipLevel)
  %480 = extractvalue %dx.types.Dimensions %479, 0
  %481 = sitofp i32 %480 to float
  %482 = extractvalue %dx.types.Dimensions %479, 1
  %483 = sitofp i32 %482 to float
  %484 = fcmp fast oge float %161, %481
  %485 = fcmp fast oge float %162, %483
  %486 = or i1 %484, %485
  %487 = select i1 %486, float 0x4197782600000000, float %478
  %488 = fmul fast float %469, %423
  %489 = fmul fast float %470, %423
  %490 = fmul fast float %471, %423
  %491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.f32 %491, 3
  %493 = icmp eq i32 %136, 3
  %494 = fcmp fast ogt float %33, %487
  %495 = and i1 %187, %494
  %496 = or i1 %493, %495
  %497 = icmp eq i32 %136, 2
  %498 = fcmp fast ole float %33, %487
  %499 = and i1 %497, %498
  %500 = or i1 %499, %496
  br i1 %495, label %501, label %616

; <label>:501                                     ; preds = %345
  %502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %503 = extractvalue %dx.types.CBufRet.f32 %502, 2
  %504 = extractvalue %dx.types.CBufRet.f32 %502, 3
  %505 = fmul fast float %503, %39
  %506 = fmul fast float %504, %40
  %507 = call float @dx.op.unary.f32(i32 7, float %505)  ; Saturate(value)
  %508 = call float @dx.op.unary.f32(i32 7, float %506)  ; Saturate(value)
  %509 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %507, float %508, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = extractvalue %dx.types.ResRet.f32 %509, 1
  %512 = extractvalue %dx.types.ResRet.f32 %509, 2
  %513 = extractvalue %dx.types.ResRet.f32 %509, 3
  %514 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %507, float %508, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = extractvalue %dx.types.ResRet.f32 %514, 1
  %517 = extractvalue %dx.types.ResRet.f32 %514, 2
  %518 = extractvalue %dx.types.ResRet.f32 %514, 3
  %519 = call float @dx.op.binary.f32(i32 35, float %511, float %512)  ; FMax(a,b)
  %520 = call float @dx.op.binary.f32(i32 35, float %510, float %519)  ; FMax(a,b)
  %521 = call float @dx.op.binary.f32(i32 35, float %520, float %513)  ; FMax(a,b)
  %522 = call float @dx.op.binary.f32(i32 36, float %516, float %517)  ; FMin(a,b)
  %523 = call float @dx.op.binary.f32(i32 36, float %515, float %522)  ; FMin(a,b)
  %524 = call float @dx.op.binary.f32(i32 36, float %523, float %518)  ; FMin(a,b)
  %525 = fmul fast float %521, 2.550000e+02
  %526 = fadd fast float %525, 0x3F70101020000000
  %527 = fptoui float %526 to i32
  %528 = fmul fast float %524, 2.550000e+02
  %529 = fadd fast float %528, 0x3F70101020000000
  %530 = fptoui float %529 to i32
  %531 = icmp ult i32 %527, %530
  br i1 %531, label %532, label %574

; <label>:532                                     ; preds = %501
  %533 = fcmp fast ogt float %32, 9.843750e-01
  %534 = fadd fast float %33, -4.000000e+00
  %535 = select i1 %533, float -4.000000e+00, float %534
  %536 = call float @dx.op.binary.f32(i32 35, float %535, float 0.000000e+00)  ; FMax(a,b)
  %537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %538 = extractvalue %dx.types.CBufRet.f32 %537, 0
  %539 = fadd fast float %538, %536
  %540 = extractvalue %dx.types.CBufRet.f32 %537, 2
  %541 = fmul fast float %539, %540
  %542 = call float @dx.op.unary.f32(i32 23, float %541)  ; Log(value)
  %543 = extractvalue %dx.types.CBufRet.f32 %537, 3
  %544 = fmul fast float %543, %542
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 2
  %547 = fmul fast float %544, %546
  %548 = call float @dx.op.unary.f32(i32 7, float %547)  ; Saturate(value)
  %549 = uitofp i32 %527 to float
  %550 = uitofp i32 %530 to float
  %551 = fadd fast float %549, 5.000000e-01
  %552 = fadd fast float %550, 5.000000e-01
  %553 = fmul fast float %546, %551
  %554 = fmul fast float %546, %552
  %555 = fadd fast float %553, 0x3F0FFB4800000000
  %556 = fadd fast float %554, 0xBF0FFB4800000000
  %557 = call float @dx.op.binary.f32(i32 35, float %548, float %555)  ; FMax(a,b)
  %558 = call float @dx.op.binary.f32(i32 36, float %557, float %556)  ; FMin(a,b)
  %559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %560 = extractvalue %dx.types.CBufRet.f32 %559, 1
  %561 = extractvalue %dx.types.CBufRet.f32 %559, 2
  %562 = extractvalue %dx.types.CBufRet.f32 %559, 0
  %563 = fmul fast float %560, %558
  %564 = fadd fast float %562, %563
  %565 = fadd fast float %562, %561
  %566 = fsub fast float %560, %561
  %567 = fadd fast float %566, %562
  %568 = call float @dx.op.binary.f32(i32 35, float %564, float %565)  ; FMax(a,b)
  %569 = call float @dx.op.binary.f32(i32 36, float %568, float %567)  ; FMin(a,b)
  %570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %507, float %508, float %569, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %571 = extractvalue %dx.types.ResRet.f32 %570, 0
  %572 = extractvalue %dx.types.ResRet.f32 %570, 1
  %573 = extractvalue %dx.types.ResRet.f32 %570, 2
  br label %574

; <label>:574                                     ; preds = %532, %501
  %575 = phi float [ %571, %532 ], [ 1.000000e+00, %501 ]
  %576 = phi float [ %572, %532 ], [ 1.000000e+00, %501 ]
  %577 = phi float [ %573, %532 ], [ 1.000000e+00, %501 ]
  %578 = call float @dx.op.dot3.f32(i32 55, float %575, float %576, float %577, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %579 = select i1 %120, float %578, float %575
  %580 = select i1 %120, float %578, float %576
  %581 = select i1 %120, float 1.000000e+00, float %577
  %582 = fmul fast float %579, %488
  %583 = fmul fast float %580, %489
  %584 = fmul fast float %581, %490
  %585 = fmul fast float %56, %503
  %586 = fmul fast float %58, %504
  %587 = fsub fast float 1.000000e+00, %585
  %588 = fsub fast float 1.000000e+00, %586
  %589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %590 = extractvalue %dx.types.CBufRet.f32 %589, 0
  %591 = extractvalue %dx.types.CBufRet.f32 %589, 1
  %592 = extractvalue %dx.types.CBufRet.f32 %589, 2
  %593 = fmul fast float %587, %590
  %594 = fmul fast float %587, %591
  %595 = fmul fast float %587, %592
  %596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %597 = extractvalue %dx.types.CBufRet.f32 %596, 0
  %598 = extractvalue %dx.types.CBufRet.f32 %596, 1
  %599 = extractvalue %dx.types.CBufRet.f32 %596, 2
  %600 = fmul fast float %588, %597
  %601 = fmul fast float %588, %598
  %602 = fmul fast float %588, %599
  %603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.f32 %603, 0
  %605 = extractvalue %dx.types.CBufRet.f32 %603, 1
  %606 = extractvalue %dx.types.CBufRet.f32 %603, 2
  %607 = fadd fast float %600, %604
  %608 = fadd fast float %607, %593
  %609 = fadd fast float %601, %605
  %610 = fadd fast float %609, %594
  %611 = fadd fast float %602, %606
  %612 = fadd fast float %611, %595
  %613 = fmul fast float %608, %487
  %614 = fmul fast float %610, %487
  %615 = fmul fast float %612, %487
  br label %616

; <label>:616                                     ; preds = %574, %345
  %617 = phi float [ %613, %574 ], [ %86, %345 ]
  %618 = phi float [ %614, %574 ], [ %87, %345 ]
  %619 = phi float [ %615, %574 ], [ %88, %345 ]
  %620 = phi float [ %487, %574 ], [ %33, %345 ]
  %621 = phi float [ %582, %574 ], [ %488, %345 ]
  %622 = phi float [ %583, %574 ], [ %489, %345 ]
  %623 = phi float [ %584, %574 ], [ %490, %345 ]
  br i1 %500, label %1498, label %624

; <label>:624                                     ; preds = %616
  %625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %626 = extractvalue %dx.types.CBufRet.f32 %625, 0
  %627 = extractvalue %dx.types.CBufRet.f32 %625, 1
  %628 = extractvalue %dx.types.CBufRet.f32 %625, 2
  %629 = extractvalue %dx.types.CBufRet.f32 %625, 3
  %630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %631 = extractvalue %dx.types.CBufRet.f32 %630, 0
  %632 = extractvalue %dx.types.CBufRet.f32 %630, 1
  %633 = extractvalue %dx.types.CBufRet.f32 %630, 2
  %634 = extractvalue %dx.types.CBufRet.f32 %630, 3
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 3
  %637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %638 = extractvalue %dx.types.CBufRet.f32 %637, 3
  %639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.f32 %639, 3
  %641 = extractvalue %dx.types.CBufRet.f32 %639, 0
  %642 = extractvalue %dx.types.CBufRet.f32 %639, 1
  %643 = extractvalue %dx.types.CBufRet.f32 %639, 2
  %644 = fcmp fast olt float %643, -5.000000e-01
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 3
  %647 = call float @dx.op.dot3.f32(i32 55, float %617, float %618, float %619, float %617, float %618, float %619)  ; Dot3(ax,ay,az,bx,by,bz)
  %648 = call float @dx.op.unary.f32(i32 25, float %647)  ; Rsqrt(value)
  %649 = fmul fast float %648, %647
  %650 = fmul fast float %648, %617
  %651 = fmul fast float %648, %618
  %652 = fmul fast float %648, %619
  %653 = fadd fast float %649, %629
  %654 = call float @dx.op.dot3.f32(i32 55, float %650, float %651, float %652, float %626, float %627, float %628)  ; Dot3(ax,ay,az,bx,by,bz)
  %655 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %656 = extractvalue %dx.types.CBufRet.i32 %655, 1
  %657 = and i32 %656, 1
  %658 = icmp ne i32 %657, 0
  %659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %660 = extractvalue %dx.types.CBufRet.f32 %659, 2
  %661 = fcmp fast ogt float %660, 0.000000e+00
  %662 = and i1 %658, %661
  br i1 %662, label %663, label %1002, !dx.controlflow.hints !55

; <label>:663                                     ; preds = %624
  %664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %665 = extractvalue %dx.types.CBufRet.f32 %664, 3
  %666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %667 = extractvalue %dx.types.CBufRet.f32 %666, 2
  %668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.f32 %668, 2
  %670 = fsub fast float %667, %669
  %671 = and i32 %656, 2
  %672 = extractvalue %dx.types.CBufRet.i32 %655, 0
  %673 = call i32 @dx.op.binary.i32(i32 40, i32 %672, i32 3)  ; UMin(a,b)
  %674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %675 = extractvalue %dx.types.CBufRet.f32 %674, 0
  %676 = extractvalue %dx.types.CBufRet.f32 %674, 1
  %677 = extractvalue %dx.types.CBufRet.f32 %668, 0
  %678 = extractvalue %dx.types.CBufRet.f32 %668, 1
  %679 = fsub fast float %675, %677
  %680 = fsub fast float %676, %678
  %681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %682 = extractvalue %dx.types.CBufRet.f32 %681, 0
  %683 = fcmp fast ogt float %682, 0.000000e+00
  %684 = fsub fast float -0.000000e+00, %679
  %685 = fsub fast float -0.000000e+00, %680
  %686 = call float @dx.op.dot2.f32(i32 54, float %650, float %651, float %650, float %651)  ; Dot2(ax,ay,bx,by)
  %687 = call float @dx.op.dot2.f32(i32 54, float %650, float %651, float %684, float %685)  ; Dot2(ax,ay,bx,by)
  %688 = fmul fast float %687, 2.000000e+00
  %689 = call float @dx.op.dot2.f32(i32 54, float %684, float %685, float %684, float %685)  ; Dot2(ax,ay,bx,by)
  %690 = fmul fast float %682, %682
  %691 = fsub fast float %689, %690
  %692 = fmul fast float %688, %688
  %693 = fmul fast float %686, 4.000000e+00
  %694 = fmul fast float %693, %691
  %695 = fsub fast float %692, %694
  %696 = fcmp fast ogt float %695, 0.000000e+00
  br i1 %696, label %697, label %712

; <label>:697                                     ; preds = %663
  %698 = fcmp fast ogt float %688, 0.000000e+00
  %699 = call float @dx.op.unary.f32(i32 24, float %695)  ; Sqrt(value)
  %700 = fsub fast float -0.000000e+00, %699
  %701 = select i1 %698, float %699, float %700
  %702 = fadd fast float %701, %688
  %703 = fmul float %702, -5.000000e-01
  %704 = fdiv fast float %703, %686
  %705 = call float @dx.op.binary.f32(i32 35, float %704, float 0.000000e+00)  ; FMax(a,b)
  %706 = call float @dx.op.binary.f32(i32 36, float %649, float %705)  ; FMin(a,b)
  %707 = fdiv fast float %691, %703
  %708 = call float @dx.op.binary.f32(i32 35, float %707, float 0.000000e+00)  ; FMax(a,b)
  %709 = call float @dx.op.binary.f32(i32 36, float %649, float %708)  ; FMin(a,b)
  %710 = call float @dx.op.binary.f32(i32 36, float %706, float %709)  ; FMin(a,b)
  %711 = call float @dx.op.binary.f32(i32 35, float %706, float %709)  ; FMax(a,b)
  br label %712

; <label>:712                                     ; preds = %697, %663
  %713 = phi float [ %711, %697 ], [ -1.000000e+00, %663 ]
  %714 = phi float [ %710, %697 ], [ -1.000000e+00, %663 ]
  %715 = phi i1 [ true, %697 ], [ false, %663 ]
  %716 = and i1 %683, %715
  br i1 %716, label %717, label %719

; <label>:717                                     ; preds = %712
  %718 = fcmp fast oeq float %714, %713
  br i1 %718, label %962, label %720

; <label>:719                                     ; preds = %712
  br i1 %683, label %962, label %720

; <label>:720                                     ; preds = %719, %717
  %721 = phi float [ %649, %719 ], [ %713, %717 ]
  %722 = phi float [ 0.000000e+00, %719 ], [ %714, %717 ]
  %723 = icmp ne i32 %671, 0
  %724 = fmul fast float %721, %652
  %725 = fadd fast float %724, %665
  %726 = fmul fast float %725, %721
  %727 = select i1 %723, float 0.000000e+00, float %726
  %728 = fcmp fast oeq float %652, 0.000000e+00
  %729 = fdiv fast float %670, %652
  %730 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %729)  ; FMax(a,b)
  %731 = select i1 %728, float %721, float %730
  %732 = call float @dx.op.binary.f32(i32 36, float %721, float %731)  ; FMin(a,b)
  %733 = fcmp fast ogt float %652, 0.000000e+00
  %734 = fcmp fast olt float %670, 0.000000e+00
  br i1 %733, label %735, label %772

; <label>:735                                     ; preds = %720
  %736 = icmp eq i32 %671, 0
  br i1 %734, label %737, label %761

; <label>:737                                     ; preds = %735
  %738 = select i1 %736, float %721, float 0.000000e+00
  %739 = fsub fast float -0.000000e+00, %738
  %740 = call float @dx.op.unary.f32(i32 6, float %739)  ; FAbs(value)
  %741 = fmul fast float %738, %652
  %742 = fadd fast float %741, %665
  %743 = fmul fast float %740, %742
  %744 = fsub fast float %727, %743
  %745 = fsub fast float %721, %740
  %746 = select i1 %736, float %745, float 0.000000e+00
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 3
  %749 = call float @dx.op.binary.f32(i32 36, float %744, float %748)  ; FMin(a,b)
  %750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %751 = extractvalue %dx.types.CBufRet.f32 %750, 0
  %752 = extractvalue %dx.types.CBufRet.f32 %750, 1
  %753 = fadd fast float %752, %751
  %754 = call float @dx.op.unary.f32(i32 7, float %753)  ; Saturate(value)
  %755 = extractvalue %dx.types.CBufRet.f32 %750, 2
  %756 = extractvalue %dx.types.CBufRet.f32 %750, 3
  %757 = fadd fast float %756, %755
  %758 = call float @dx.op.unary.f32(i32 7, float %757)  ; Saturate(value)
  %759 = fmul fast float %754, %749
  %760 = fmul fast float %759, %758
  br label %962

; <label>:761                                     ; preds = %735
  br i1 %736, label %762, label %783

; <label>:762                                     ; preds = %761
  %763 = call float @dx.op.binary.f32(i32 36, float %732, float %722)  ; FMin(a,b)
  %764 = fsub fast float %732, %763
  %765 = fsub fast float %764, %721
  %766 = call float @dx.op.unary.f32(i32 6, float %765)  ; FAbs(value)
  %767 = fadd fast float %764, %721
  %768 = fmul fast float %767, %652
  %769 = fadd fast float %768, %665
  %770 = fmul fast float %769, %766
  %771 = fsub fast float %727, %770
  br label %783

; <label>:772                                     ; preds = %720
  br i1 %734, label %773, label %783

; <label>:773                                     ; preds = %772
  %774 = call float @dx.op.binary.f32(i32 35, float %722, float %732)  ; FMax(a,b)
  %775 = icmp eq i32 %671, 0
  %776 = select i1 %775, float %732, float 0.000000e+00
  %777 = fsub fast float -0.000000e+00, %776
  %778 = call float @dx.op.unary.f32(i32 6, float %777)  ; FAbs(value)
  %779 = fmul fast float %776, %652
  %780 = fadd fast float %779, %665
  %781 = fmul fast float %778, %780
  %782 = fsub fast float %727, %781
  br label %783

; <label>:783                                     ; preds = %773, %772, %762, %761
  %784 = phi float [ %722, %761 ], [ %722, %762 ], [ %774, %773 ], [ %722, %772 ]
  %785 = phi float [ 0.000000e+00, %761 ], [ %766, %762 ], [ %778, %773 ], [ 0.000000e+00, %772 ]
  %786 = phi float [ %727, %761 ], [ %771, %762 ], [ %782, %773 ], [ %727, %772 ]
  %787 = phi float [ %732, %761 ], [ %732, %762 ], [ %721, %773 ], [ %721, %772 ]
  %788 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 0
  store float -1.000000e+00, float* %788, align 4, !tbaa !56, !noalias !60
  %789 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 1
  store float -1.000000e+00, float* %789, align 4, !tbaa !56, !noalias !60
  %790 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 2
  store float -1.000000e+00, float* %790, align 4, !tbaa !56, !noalias !60
  %791 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 0
  store float -1.000000e+00, float* %791, align 4, !tbaa !56, !noalias !60
  %792 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 1
  store float -1.000000e+00, float* %792, align 4, !tbaa !56, !noalias !60
  %793 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 2
  store float -1.000000e+00, float* %793, align 4, !tbaa !56, !noalias !60
  %794 = icmp sgt i32 %673, 0
  br i1 %794, label %795, label %856

; <label>:795                                     ; preds = %783
  br label %796

; <label>:796                                     ; preds = %845, %795
  %797 = phi i32 [ %846, %845 ], [ 0, %795 ]
  %798 = phi i32 [ %847, %845 ], [ 0, %795 ]
  %799 = add nuw i32 %798, 171
  %800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %799)  ; CBufferLoadLegacy(handle,regIndex)
  %801 = extractvalue %dx.types.CBufRet.f32 %800, 0
  %802 = extractvalue %dx.types.CBufRet.f32 %800, 1
  %803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.f32 %803, 0
  %805 = extractvalue %dx.types.CBufRet.f32 %803, 1
  %806 = fsub fast float %801, %804
  %807 = fsub fast float %802, %805
  %808 = extractvalue %dx.types.CBufRet.f32 %800, 2
  %809 = fsub fast float -0.000000e+00, %806
  %810 = fsub fast float -0.000000e+00, %807
  %811 = call float @dx.op.dot2.f32(i32 54, float %650, float %651, float %809, float %810)  ; Dot2(ax,ay,bx,by)
  %812 = fmul fast float %811, 2.000000e+00
  %813 = call float @dx.op.dot2.f32(i32 54, float %809, float %810, float %809, float %810)  ; Dot2(ax,ay,bx,by)
  %814 = fmul fast float %808, %808
  %815 = fsub fast float %813, %814
  %816 = fmul fast float %812, %812
  %817 = fmul fast float %693, %815
  %818 = fsub fast float %816, %817
  %819 = fcmp fast ogt float %818, 0.000000e+00
  br i1 %819, label %820, label %835

; <label>:820                                     ; preds = %796
  %821 = fcmp fast ogt float %812, 0.000000e+00
  %822 = call float @dx.op.unary.f32(i32 24, float %818)  ; Sqrt(value)
  %823 = fsub fast float -0.000000e+00, %822
  %824 = select i1 %821, float %822, float %823
  %825 = fadd fast float %824, %812
  %826 = fmul float %825, -5.000000e-01
  %827 = fdiv fast float %826, %686
  %828 = call float @dx.op.binary.f32(i32 35, float %827, float 0.000000e+00)  ; FMax(a,b)
  %829 = call float @dx.op.binary.f32(i32 36, float %721, float %828)  ; FMin(a,b)
  %830 = fdiv fast float %815, %826
  %831 = call float @dx.op.binary.f32(i32 35, float %830, float 0.000000e+00)  ; FMax(a,b)
  %832 = call float @dx.op.binary.f32(i32 36, float %721, float %831)  ; FMin(a,b)
  %833 = call float @dx.op.binary.f32(i32 36, float %829, float %832)  ; FMin(a,b)
  %834 = call float @dx.op.binary.f32(i32 35, float %829, float %832)  ; FMax(a,b)
  br label %835

; <label>:835                                     ; preds = %820, %796
  %836 = phi float [ %834, %820 ], [ -1.000000e+00, %796 ]
  %837 = phi float [ %833, %820 ], [ -1.000000e+00, %796 ]
  %838 = phi i1 [ true, %820 ], [ false, %796 ]
  br i1 %838, label %839, label %845

; <label>:839                                     ; preds = %835
  %840 = call float @dx.op.binary.f32(i32 35, float %784, float %837)  ; FMax(a,b)
  %841 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 %798
  store float %840, float* %841, align 4, !tbaa !56, !noalias !60
  %842 = call float @dx.op.binary.f32(i32 35, float %784, float %836)  ; FMax(a,b)
  %843 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 %798
  store float %842, float* %843, align 4, !tbaa !56, !noalias !60
  %844 = add nsw i32 %797, 1
  br label %845

; <label>:845                                     ; preds = %839, %835
  %846 = phi i32 [ %844, %839 ], [ %797, %835 ]
  %847 = add nuw nsw i32 %798, 1
  %848 = icmp eq i32 %847, %673
  br i1 %848, label %849, label %796

; <label>:849                                     ; preds = %845
  %850 = load float, float* %790, align 4, !tbaa !56, !alias.scope !76, !noalias !79
  %851 = load float, float* %789, align 4, !tbaa !56, !alias.scope !82, !noalias !83
  %852 = load float, float* %788, align 4, !tbaa !56, !alias.scope !84, !noalias !85
  %853 = load float, float* %793, align 4, !tbaa !56, !alias.scope !86, !noalias !89
  %854 = load float, float* %792, align 4, !tbaa !56, !alias.scope !92, !noalias !93
  %855 = load float, float* %791, align 4, !tbaa !56, !alias.scope !94, !noalias !95
  br label %856

; <label>:856                                     ; preds = %849, %783
  %857 = phi float [ -1.000000e+00, %783 ], [ %855, %849 ]
  %858 = phi float [ -1.000000e+00, %783 ], [ %854, %849 ]
  %859 = phi float [ -1.000000e+00, %783 ], [ %853, %849 ]
  %860 = phi float [ -1.000000e+00, %783 ], [ %852, %849 ]
  %861 = phi float [ -1.000000e+00, %783 ], [ %851, %849 ]
  %862 = phi float [ -1.000000e+00, %783 ], [ %850, %849 ]
  %863 = phi i32 [ 0, %783 ], [ %846, %849 ]
  %864 = call float @dx.op.binary.f32(i32 36, float %861, float %862)  ; FMin(a,b)
  %865 = call float @dx.op.binary.f32(i32 36, float %860, float %864)  ; FMin(a,b)
  %866 = call float @dx.op.binary.f32(i32 35, float %860, float %861)  ; FMax(a,b)
  %867 = call float @dx.op.binary.f32(i32 36, float %866, float %862)  ; FMin(a,b)
  %868 = call float @dx.op.binary.f32(i32 36, float %860, float %861)  ; FMin(a,b)
  %869 = call float @dx.op.binary.f32(i32 35, float %868, float %867)  ; FMax(a,b)
  %870 = call float @dx.op.binary.f32(i32 35, float %861, float %862)  ; FMax(a,b)
  %871 = call float @dx.op.binary.f32(i32 35, float %860, float %870)  ; FMax(a,b)
  store float %865, float* %788, align 4, !tbaa !56, !alias.scope !84, !noalias !85
  store float %869, float* %789, align 4, !tbaa !56, !alias.scope !82, !noalias !83
  store float %871, float* %790, align 4, !tbaa !56, !alias.scope !76, !noalias !79
  %872 = call float @dx.op.binary.f32(i32 36, float %858, float %859)  ; FMin(a,b)
  %873 = call float @dx.op.binary.f32(i32 36, float %857, float %872)  ; FMin(a,b)
  %874 = call float @dx.op.binary.f32(i32 35, float %857, float %858)  ; FMax(a,b)
  %875 = call float @dx.op.binary.f32(i32 36, float %874, float %859)  ; FMin(a,b)
  %876 = call float @dx.op.binary.f32(i32 36, float %857, float %858)  ; FMin(a,b)
  %877 = call float @dx.op.binary.f32(i32 35, float %876, float %875)  ; FMax(a,b)
  %878 = call float @dx.op.binary.f32(i32 35, float %858, float %859)  ; FMax(a,b)
  %879 = call float @dx.op.binary.f32(i32 35, float %857, float %878)  ; FMax(a,b)
  store float %873, float* %791, align 4, !tbaa !56, !alias.scope !94, !noalias !95
  store float %877, float* %792, align 4, !tbaa !56, !alias.scope !92, !noalias !93
  store float %879, float* %793, align 4, !tbaa !56, !alias.scope !86, !noalias !89
  %880 = sub nsw i32 3, %863
  %881 = icmp sgt i32 %880, 2
  br i1 %881, label %882, label %900

; <label>:882                                     ; preds = %856
  %883 = icmp eq i32 %671, 0
  %884 = fsub fast float %721, %785
  %885 = select i1 %883, float %884, float %785
  %886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %887 = extractvalue %dx.types.CBufRet.f32 %886, 3
  %888 = call float @dx.op.binary.f32(i32 36, float %786, float %887)  ; FMin(a,b)
  %889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.f32 %889, 0
  %891 = extractvalue %dx.types.CBufRet.f32 %889, 1
  %892 = fadd fast float %891, %890
  %893 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  %894 = extractvalue %dx.types.CBufRet.f32 %889, 2
  %895 = extractvalue %dx.types.CBufRet.f32 %889, 3
  %896 = fadd fast float %895, %894
  %897 = call float @dx.op.unary.f32(i32 7, float %896)  ; Saturate(value)
  %898 = fmul fast float %893, %888
  %899 = fmul fast float %898, %897
  br label %962

; <label>:900                                     ; preds = %856
  %901 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 %880
  %902 = load float, float* %901, align 4, !tbaa !56, !noalias !60
  %903 = fcmp fast olt float %902, %787
  %904 = icmp sgt i32 %863, 0
  %905 = and i1 %904, %903
  br i1 %905, label %906, label %943

; <label>:906                                     ; preds = %900
  br label %907

; <label>:907                                     ; preds = %936, %906
  %908 = phi float [ %937, %936 ], [ %785, %906 ]
  %909 = phi float [ %938, %936 ], [ %786, %906 ]
  %910 = phi float [ %918, %936 ], [ %902, %906 ]
  %911 = phi i32 [ %915, %936 ], [ %880, %906 ]
  %912 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 %911
  %913 = load float, float* %912, align 4, !tbaa !56, !noalias !60
  %914 = icmp slt i32 %911, 2
  %915 = add nsw i32 %911, 1
  %916 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 %915
  %917 = load float, float* %916, align 4, !tbaa !56, !noalias !60
  %918 = select i1 %914, float %917, float %721
  %919 = call float @dx.op.binary.f32(i32 36, float %918, float %913)  ; FMin(a,b)
  %920 = call float @dx.op.binary.f32(i32 36, float %787, float %919)  ; FMin(a,b)
  %921 = icmp eq i32 %671, 0
  %922 = fadd fast float %920, %910
  %923 = fmul fast float %922, %652
  %924 = fadd fast float %923, %665
  br i1 %921, label %930, label %925

; <label>:925                                     ; preds = %907
  %926 = fsub fast float %920, %910
  %927 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %926)  ; FMax(a,b)
  %928 = fmul fast float %927, %924
  %929 = fadd fast float %928, %909
  br label %936

; <label>:930                                     ; preds = %907
  %931 = fsub fast float %910, %920
  %932 = call float @dx.op.unary.f32(i32 6, float %931)  ; FAbs(value)
  %933 = fadd fast float %932, %908
  %934 = fmul fast float %932, %924
  %935 = fsub fast float %909, %934
  br label %936

; <label>:936                                     ; preds = %930, %925
  %937 = phi float [ %927, %925 ], [ %933, %930 ]
  %938 = phi float [ %929, %925 ], [ %935, %930 ]
  %939 = fcmp fast olt float %918, %787
  %940 = icmp slt i32 %915, 3
  %941 = and i1 %940, %939
  br i1 %941, label %907, label %942

; <label>:942                                     ; preds = %936
  br label %943

; <label>:943                                     ; preds = %942, %900
  %944 = phi float [ %785, %900 ], [ %937, %942 ]
  %945 = phi float [ %786, %900 ], [ %938, %942 ]
  %946 = fsub fast float %721, %944
  %947 = select i1 %723, float %944, float %946
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 3
  %950 = call float @dx.op.binary.f32(i32 36, float %945, float %949)  ; FMin(a,b)
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 0
  %953 = extractvalue %dx.types.CBufRet.f32 %951, 1
  %954 = fadd fast float %953, %952
  %955 = call float @dx.op.unary.f32(i32 7, float %954)  ; Saturate(value)
  %956 = extractvalue %dx.types.CBufRet.f32 %951, 2
  %957 = extractvalue %dx.types.CBufRet.f32 %951, 3
  %958 = fadd fast float %957, %956
  %959 = call float @dx.op.unary.f32(i32 7, float %958)  ; Saturate(value)
  %960 = fmul fast float %955, %950
  %961 = fmul fast float %960, %959
  br label %962

; <label>:962                                     ; preds = %943, %882, %737, %719, %717
  %963 = phi float [ %746, %737 ], [ %885, %882 ], [ %947, %943 ], [ 0.000000e+00, %717 ], [ 0.000000e+00, %719 ]
  %964 = phi float [ %760, %737 ], [ %899, %882 ], [ %961, %943 ], [ 0.000000e+00, %717 ], [ 0.000000e+00, %719 ]
  %965 = fmul fast float %660, %964
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 2
  %968 = fsub fast float %667, %967
  %969 = fcmp fast olt float %965, -2.000000e+01
  %970 = call float @dx.op.unary.f32(i32 21, float %965)  ; Exp(value)
  %971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.f32 %971, 2
  %973 = extractvalue %dx.types.CBufRet.f32 %971, 3
  %974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %975 = extractvalue %dx.types.CBufRet.f32 %974, 2
  %976 = fmul fast float %973, %968
  %977 = call float @dx.op.unary.f32(i32 7, float %976)  ; Saturate(value)
  %978 = fsub fast float 1.000000e+00, %977
  %979 = fmul fast float %652, 5.000000e-01
  %980 = fadd fast float %979, 5.000000e-01
  %981 = call float @dx.op.unary.f32(i32 7, float %980)  ; Saturate(value)
  %982 = fsub fast float 1.000000e+00, %981
  %983 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %978)  ; FMax(a,b)
  %984 = fdiv fast float %982, %983
  %985 = fsub fast float %968, %619
  %986 = call float @dx.op.unary.f32(i32 6, float %985)  ; FAbs(value)
  %987 = fmul fast float %986, %972
  %988 = call float @dx.op.unary.f32(i32 7, float %984)  ; Saturate(value)
  %989 = fsub fast float 1.000000e+00, %987
  %990 = fmul fast float %989, %988
  %991 = fadd fast float %990, %987
  %992 = fmul fast float %975, %968
  %993 = call float @dx.op.unary.f32(i32 7, float %992)  ; Saturate(value)
  %994 = fsub fast float 1.000000e+00, %991
  %995 = fmul fast float %994, %993
  %996 = fadd fast float %995, %991
  %997 = call float @dx.op.unary.f32(i32 7, float %996)  ; Saturate(value)
  %998 = fadd fast float %970, -1.000000e+00
  %999 = select i1 %969, float -1.000000e+00, float %998
  %1000 = fmul fast float %997, %999
  %1001 = fadd fast float %1000, 1.000000e+00
  br label %1002

; <label>:1002                                    ; preds = %962, %624
  %1003 = phi float [ %963, %962 ], [ 0.000000e+00, %624 ]
  %1004 = phi float [ %1001, %962 ], [ 1.000000e+00, %624 ]
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 1
  %1007 = fsub fast float 1.000000e+00, %1004
  %1008 = fmul fast float %1007, %653
  %1009 = fmul fast float %1008, %1006
  %1010 = fsub fast float %653, %1009
  br i1 %644, label %1011, label %1027, !dx.controlflow.hints !96

; <label>:1011                                    ; preds = %1002
  %1012 = fmul fast float %654, %641
  %1013 = fadd fast float %1012, %642
  %1014 = call float @dx.op.unary.f32(i32 7, float %1013)  ; Saturate(value)
  %1015 = fmul fast float %631, %1010
  %1016 = fsub fast float -0.000000e+00, %1015
  %1017 = fmul fast float %632, %1010
  %1018 = fsub fast float -0.000000e+00, %1017
  %1019 = call float @dx.op.unary.f32(i32 21, float %1016)  ; Exp(value)
  %1020 = call float @dx.op.unary.f32(i32 21, float %1018)  ; Exp(value)
  %1021 = call float @dx.op.binary.f32(i32 35, float %646, float %1019)  ; FMax(a,b)
  %1022 = call float @dx.op.binary.f32(i32 35, float %646, float %1020)  ; FMax(a,b)
  %1023 = fsub fast float %1022, %1021
  %1024 = fmul fast float %1023, %1014
  %1025 = fadd fast float %1024, %1021
  %1026 = call float @dx.op.unary.f32(i32 7, float %1025)  ; Saturate(value)
  br label %1060

; <label>:1027                                    ; preds = %1002
  %1028 = fmul fast float %1010, %640
  %1029 = call float @dx.op.unary.f32(i32 7, float %1028)  ; Saturate(value)
  %1030 = fsub fast float 2.000000e+00, %1029
  %1031 = fmul fast float %1029, 9.921875e-01
  %1032 = fmul fast float %1031, %1030
  %1033 = fadd fast float %1032, 3.906250e-03
  %1034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %1033, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 0
  %1036 = fsub fast float %1029, %1035
  %1037 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1036)  ; FMax(a,b)
  %1038 = fmul fast float %634, %619
  %1039 = call float @dx.op.unary.f32(i32 6, float %1038)  ; FAbs(value)
  %1040 = fcmp fast ogt float %1039, 0x3EB0C6F7A0000000
  br i1 %1040, label %1041, label %1047, !dx.controlflow.hints !97

; <label>:1041                                    ; preds = %1027
  %1042 = fmul fast float %1038, 0xBFF7154760000000
  %1043 = call float @dx.op.unary.f32(i32 21, float %1042)  ; Exp(value)
  %1044 = fsub fast float 1.000000e+00, %1043
  %1045 = fdiv fast float %1044, %1038
  %1046 = fmul fast float %1045, %636
  br label %1047

; <label>:1047                                    ; preds = %1041, %1027
  %1048 = phi float [ %1046, %1041 ], [ %636, %1027 ]
  %1049 = fadd fast float %1048, %638
  %1050 = fmul fast float %1049, %1037
  %1051 = fmul fast float %631, %1050
  %1052 = fsub fast float -0.000000e+00, %1051
  %1053 = fmul fast float %632, %1050
  %1054 = fsub fast float -0.000000e+00, %1053
  %1055 = fmul fast float %633, %1050
  %1056 = fsub fast float -0.000000e+00, %1055
  %1057 = call float @dx.op.unary.f32(i32 21, float %1052)  ; Exp(value)
  %1058 = call float @dx.op.unary.f32(i32 21, float %1054)  ; Exp(value)
  %1059 = call float @dx.op.unary.f32(i32 21, float %1056)  ; Exp(value)
  br label %1060

; <label>:1060                                    ; preds = %1047, %1011
  %1061 = phi float [ %1026, %1011 ], [ %1057, %1047 ]
  %1062 = phi float [ %1026, %1011 ], [ %1058, %1047 ]
  %1063 = phi float [ %1026, %1011 ], [ %1059, %1047 ]
  br i1 %662, label %1064, label %1160, !dx.controlflow.hints !98

; <label>:1064                                    ; preds = %1060
  %1065 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1061)  ; FMax(a,b)
  %1066 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1062)  ; FMax(a,b)
  %1067 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1063)  ; FMax(a,b)
  %1068 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1004)  ; FMax(a,b)
  %1069 = call float @dx.op.binary.f32(i32 35, float %1003, float %1010)  ; FMax(a,b)
  %1070 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1069)  ; FMax(a,b)
  %1071 = fdiv fast float %1003, %1070
  %1072 = call float @dx.op.unary.f32(i32 7, float %1071)  ; Saturate(value)
  %1073 = fdiv fast float %1010, %1070
  %1074 = call float @dx.op.unary.f32(i32 7, float %1073)  ; Saturate(value)
  %1075 = fcmp fast une float %1068, 1.000000e+00
  br i1 %1075, label %1076, label %1079, !dx.controlflow.hints !99

; <label>:1076                                    ; preds = %1064
  %1077 = call float @dx.op.unary.f32(i32 23, float %1068)  ; Log(value)
  %1078 = fmul fast float %1077, 0x3FE62E4300000000
  br label %1079

; <label>:1079                                    ; preds = %1076, %1064
  %1080 = phi float [ %1078, %1076 ], [ 0.000000e+00, %1064 ]
  %1081 = fcmp fast une float %1065, 1.000000e+00
  br i1 %1081, label %1082, label %1085, !dx.controlflow.hints !100

; <label>:1082                                    ; preds = %1079
  %1083 = call float @dx.op.unary.f32(i32 23, float %1065)  ; Log(value)
  %1084 = fmul fast float %1083, 0x3FE62E4300000000
  br label %1085

; <label>:1085                                    ; preds = %1082, %1079
  %1086 = phi float [ %1084, %1082 ], [ 0.000000e+00, %1079 ]
  %1087 = fcmp fast une float %1066, 1.000000e+00
  br i1 %1087, label %1088, label %1091, !dx.controlflow.hints !100

; <label>:1088                                    ; preds = %1085
  %1089 = call float @dx.op.unary.f32(i32 23, float %1066)  ; Log(value)
  %1090 = fmul fast float %1089, 0x3FE62E4300000000
  br label %1091

; <label>:1091                                    ; preds = %1088, %1085
  %1092 = phi float [ %1090, %1088 ], [ 0.000000e+00, %1085 ]
  %1093 = fcmp fast une float %1067, 1.000000e+00
  br i1 %1093, label %1094, label %1097, !dx.controlflow.hints !100

; <label>:1094                                    ; preds = %1091
  %1095 = call float @dx.op.unary.f32(i32 23, float %1067)  ; Log(value)
  %1096 = fmul fast float %1095, 0x3FE62E4300000000
  br label %1097

; <label>:1097                                    ; preds = %1094, %1091
  %1098 = phi float [ %1096, %1094 ], [ 0.000000e+00, %1091 ]
  %1099 = fmul fast float %1080, %1074
  %1100 = fmul fast float %1086, %1072
  %1101 = fmul fast float %1092, %1072
  %1102 = fmul fast float %1098, %1072
  %1103 = fadd fast float %1100, %1099
  %1104 = fadd fast float %1101, %1099
  %1105 = fadd fast float %1102, %1099
  %1106 = fcmp fast une float %1103, 0.000000e+00
  br i1 %1106, label %1107, label %1110, !dx.controlflow.hints !101

; <label>:1107                                    ; preds = %1097
  %1108 = fmul fast float %1103, 0x3FF7154760000000
  %1109 = call float @dx.op.unary.f32(i32 21, float %1108)  ; Exp(value)
  br label %1110

; <label>:1110                                    ; preds = %1107, %1097
  %1111 = phi float [ %1109, %1107 ], [ 1.000000e+00, %1097 ]
  %1112 = fcmp fast une float %1104, 0.000000e+00
  br i1 %1112, label %1113, label %1116, !dx.controlflow.hints !101

; <label>:1113                                    ; preds = %1110
  %1114 = fmul fast float %1104, 0x3FF7154760000000
  %1115 = call float @dx.op.unary.f32(i32 21, float %1114)  ; Exp(value)
  br label %1116

; <label>:1116                                    ; preds = %1113, %1110
  %1117 = phi float [ %1115, %1113 ], [ 1.000000e+00, %1110 ]
  %1118 = fcmp fast une float %1105, 0.000000e+00
  br i1 %1118, label %1119, label %1122, !dx.controlflow.hints !101

; <label>:1119                                    ; preds = %1116
  %1120 = fmul fast float %1105, 0x3FF7154760000000
  %1121 = call float @dx.op.unary.f32(i32 21, float %1120)  ; Exp(value)
  br label %1122

; <label>:1122                                    ; preds = %1119, %1116
  %1123 = phi float [ %1121, %1119 ], [ 1.000000e+00, %1116 ]
  %1124 = fcmp fast ogt float %1072, %1074
  br i1 %1124, label %1125, label %1132

; <label>:1125                                    ; preds = %1122
  %1126 = fsub fast float 1.000000e+00, %1074
  %1127 = fmul fast float %1080, %1126
  %1128 = fcmp fast une float %1127, 0.000000e+00
  br i1 %1128, label %1129, label %1153, !dx.controlflow.hints !102

; <label>:1129                                    ; preds = %1125
  %1130 = fmul fast float %1127, 0x3FF7154760000000
  %1131 = call float @dx.op.unary.f32(i32 21, float %1130)  ; Exp(value)
  br label %1153

; <label>:1132                                    ; preds = %1122
  %1133 = fsub fast float 1.000000e+00, %1072
  %1134 = fmul fast float %1086, %1133
  %1135 = fmul fast float %1092, %1133
  %1136 = fmul fast float %1098, %1133
  %1137 = fcmp fast une float %1134, 0.000000e+00
  br i1 %1137, label %1138, label %1141, !dx.controlflow.hints !101

; <label>:1138                                    ; preds = %1132
  %1139 = fmul fast float %1134, 0x3FF7154760000000
  %1140 = call float @dx.op.unary.f32(i32 21, float %1139)  ; Exp(value)
  br label %1141

; <label>:1141                                    ; preds = %1138, %1132
  %1142 = phi float [ %1140, %1138 ], [ 1.000000e+00, %1132 ]
  %1143 = fcmp fast une float %1135, 0.000000e+00
  br i1 %1143, label %1144, label %1147, !dx.controlflow.hints !101

; <label>:1144                                    ; preds = %1141
  %1145 = fmul fast float %1135, 0x3FF7154760000000
  %1146 = call float @dx.op.unary.f32(i32 21, float %1145)  ; Exp(value)
  br label %1147

; <label>:1147                                    ; preds = %1144, %1141
  %1148 = phi float [ %1146, %1144 ], [ 1.000000e+00, %1141 ]
  %1149 = fcmp fast une float %1136, 0.000000e+00
  br i1 %1149, label %1150, label %1153, !dx.controlflow.hints !101

; <label>:1150                                    ; preds = %1147
  %1151 = fmul fast float %1136, 0x3FF7154760000000
  %1152 = call float @dx.op.unary.f32(i32 21, float %1151)  ; Exp(value)
  br label %1153

; <label>:1153                                    ; preds = %1150, %1147, %1129, %1125
  %1154 = phi float [ %1152, %1150 ], [ %1131, %1129 ], [ 1.000000e+00, %1125 ], [ 1.000000e+00, %1147 ]
  %1155 = phi float [ %1148, %1150 ], [ %1131, %1129 ], [ 1.000000e+00, %1125 ], [ %1148, %1147 ]
  %1156 = phi float [ %1142, %1150 ], [ %1131, %1129 ], [ 1.000000e+00, %1125 ], [ %1142, %1147 ]
  %1157 = fmul fast float %1156, %1111
  %1158 = fmul fast float %1155, %1117
  %1159 = fmul fast float %1154, %1123
  br label %1160

; <label>:1160                                    ; preds = %1153, %1060
  %1161 = phi float [ %1159, %1153 ], [ %1063, %1060 ]
  %1162 = phi float [ %1158, %1153 ], [ %1062, %1060 ]
  %1163 = phi float [ %1157, %1153 ], [ %1061, %1060 ]
  %1164 = call float @dx.op.dot3.f32(i32 55, float %1163, float %1162, float %1161, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1165 = select i1 %120, float %1164, float %1163
  %1166 = select i1 %120, float %1164, float %1162
  %1167 = select i1 %120, float 1.000000e+00, float %1161
  %1168 = fmul fast float %1165, %621
  %1169 = fmul fast float %1166, %622
  %1170 = fmul fast float %1167, %623
  %1171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1172 = extractvalue %dx.types.CBufRet.i32 %1171, 0
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %1498, label %1174, !dx.controlflow.hints !103

; <label>:1174                                    ; preds = %1160
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 2
  %1177 = extractvalue %dx.types.CBufRet.f32 %1175, 3
  %1178 = fmul fast float %1176, %39
  %1179 = fmul fast float %1177, %40
  %1180 = fmul fast float %1178, 2.000000e+00
  %1181 = fmul fast float %1179, 2.000000e+00
  %1182 = fsub fast float 1.000000e+00, %1180
  %1183 = fsub fast float 1.000000e+00, %1181
  %1184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.f32 %1184, 0
  %1186 = extractvalue %dx.types.CBufRet.f32 %1184, 1
  %1187 = extractvalue %dx.types.CBufRet.f32 %1184, 2
  %1188 = fmul fast float %1182, %1185
  %1189 = fmul fast float %1182, %1186
  %1190 = fmul fast float %1182, %1187
  %1191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1192 = extractvalue %dx.types.CBufRet.f32 %1191, 0
  %1193 = extractvalue %dx.types.CBufRet.f32 %1191, 1
  %1194 = extractvalue %dx.types.CBufRet.f32 %1191, 2
  %1195 = fmul fast float %1183, %1192
  %1196 = fmul fast float %1183, %1193
  %1197 = fmul fast float %1183, %1194
  %1198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1199 = extractvalue %dx.types.CBufRet.f32 %1198, 0
  %1200 = extractvalue %dx.types.CBufRet.f32 %1198, 1
  %1201 = extractvalue %dx.types.CBufRet.f32 %1198, 2
  %1202 = fadd fast float %1195, %1199
  %1203 = fadd fast float %1202, %1188
  %1204 = fadd fast float %1196, %1200
  %1205 = fadd fast float %1204, %1189
  %1206 = fadd fast float %1197, %1201
  %1207 = fadd fast float %1206, %1190
  %1208 = fmul fast float %1203, %620
  %1209 = fmul fast float %1205, %620
  %1210 = fmul fast float %1207, %620
  %1211 = fmul fast float %1208, %1208
  %1212 = fmul fast float %1209, %1209
  %1213 = fadd fast float %1211, %1212
  %1214 = fmul fast float %1210, %1210
  %1215 = fadd fast float %1213, %1214
  %1216 = call float @dx.op.unary.f32(i32 24, float %1215)  ; Sqrt(value)
  %1217 = extractvalue %dx.types.CBufRet.f32 %491, 0
  %1218 = fsub fast float %1216, %1217
  %1219 = extractvalue %dx.types.CBufRet.f32 %491, 2
  %1220 = fmul fast float %1218, %1219
  %1221 = call float @dx.op.unary.f32(i32 7, float %1220)  ; Saturate(value)
  %1222 = fadd fast float %1221, -5.000000e-01
  %1223 = fmul fast float %1222, 2.000000e+00
  %1224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1225 = extractvalue %dx.types.CBufRet.f32 %1224, 2
  %1226 = call float @dx.op.binary.f32(i32 36, float %1225, float %1223)  ; FMin(a,b)
  %1227 = fsub fast float -0.000000e+00, %1225
  %1228 = fcmp fast ogt float %1226, %1227
  br i1 %1228, label %1229, label %1498, !dx.controlflow.hints !104

; <label>:1229                                    ; preds = %1174
  %1230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1230, 3
  %1232 = fcmp fast ogt float %1231, 0.000000e+00
  br i1 %1232, label %1233, label %1308, !dx.controlflow.hints !105

; <label>:1233                                    ; preds = %1229
  %1234 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %1235 = extractvalue %dx.types.Dimensions %1234, 0
  %1236 = sitofp i32 %1235 to float
  %1237 = extractvalue %dx.types.Dimensions %1234, 1
  %1238 = sitofp i32 %1237 to float
  %1239 = fmul fast float %1178, %1236
  %1240 = fmul fast float %1179, %1238
  %1241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1241, 1
  %1243 = fsub fast float -0.000000e+00, %1242
  %1244 = fptoui float %1243 to i32
  %1245 = fptoui float %1239 to i32
  %1246 = fptoui float %1240 to i32
  %1247 = and i32 %1244, 31
  %1248 = lshr i32 %1245, %1247
  %1249 = lshr i32 %1246, %1247
  %1250 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 %1244, i32 %1248, i32 %1249, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1251 = extractvalue %dx.types.ResRet.f32 %1250, 0
  %1252 = fcmp fast olt float %1251, -1.000000e+00
  %1253 = fcmp fast ogt float %1251, -1.000000e+00
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 1
  %1256 = select i1 %1253, float %1255, float 1.000000e+00
  %1257 = fadd fast float %1251, 1.000000e+00
  %1258 = fmul fast float %1256, %1257
  %1259 = call float @dx.op.unary.f32(i32 6, float %1258)  ; FAbs(value)
  %1260 = extractvalue %dx.types.CBufRet.f32 %1254, 3
  %1261 = fcmp fast oge float %1259, %1260
  %1262 = select i1 %1261, float 0x4197782600000000, float %1259
  %1263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1264 = extractvalue %dx.types.CBufRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.CBufRet.f32 %1263, 1
  %1266 = extractvalue %dx.types.CBufRet.f32 %1263, 2
  %1267 = select i1 %1252, float %1264, float %1185
  %1268 = select i1 %1252, float %1265, float %1186
  %1269 = select i1 %1252, float %1266, float %1187
  %1270 = fmul fast float %1267, %1182
  %1271 = fmul fast float %1268, %1182
  %1272 = fmul fast float %1269, %1182
  %1273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1274 = extractvalue %dx.types.CBufRet.f32 %1273, 0
  %1275 = extractvalue %dx.types.CBufRet.f32 %1273, 1
  %1276 = extractvalue %dx.types.CBufRet.f32 %1273, 2
  %1277 = select i1 %1252, float %1274, float %1192
  %1278 = select i1 %1252, float %1275, float %1193
  %1279 = select i1 %1252, float %1276, float %1194
  %1280 = fmul fast float %1277, %1183
  %1281 = fmul fast float %1278, %1183
  %1282 = fmul fast float %1279, %1183
  %1283 = fadd fast float %1280, %1270
  %1284 = fadd fast float %1281, %1271
  %1285 = fadd fast float %1282, %1272
  %1286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1287 = extractvalue %dx.types.CBufRet.f32 %1286, 0
  %1288 = extractvalue %dx.types.CBufRet.f32 %1286, 1
  %1289 = extractvalue %dx.types.CBufRet.f32 %1286, 2
  %1290 = select i1 %1252, float %1287, float %1199
  %1291 = select i1 %1252, float %1288, float %1200
  %1292 = select i1 %1252, float %1289, float %1201
  %1293 = fadd fast float %1283, %1290
  %1294 = fadd fast float %1284, %1291
  %1295 = fadd fast float %1285, %1292
  %1296 = fmul fast float %1293, %1262
  %1297 = fmul fast float %1294, %1262
  %1298 = fmul fast float %1295, %1262
  %1299 = fmul fast float %1296, %1296
  %1300 = fmul fast float %1297, %1297
  %1301 = fadd fast float %1299, %1300
  %1302 = fmul fast float %1298, %1298
  %1303 = fadd fast float %1301, %1302
  %1304 = call float @dx.op.unary.f32(i32 24, float %1303)  ; Sqrt(value)
  %1305 = fsub fast float %1304, %1217
  %1306 = fmul fast float %1305, %1219
  %1307 = call float @dx.op.unary.f32(i32 7, float %1306)  ; Saturate(value)
  br label %1308

; <label>:1308                                    ; preds = %1233, %1229
  %1309 = phi float [ %1307, %1233 ], [ 1.000000e+00, %1229 ]
  %1310 = fmul fast float %1226, 5.000000e-01
  %1311 = fadd fast float %1310, 5.000000e-01
  %1312 = call float @dx.op.unary.f32(i32 22, float %1311)  ; Frc(value)
  %1313 = call float @dx.op.unary.f32(i32 27, float %1312)  ; Round_ni(value)
  %1314 = call float @dx.op.unary.f32(i32 22, float %1312)  ; Frc(value)
  %1315 = fmul fast float %1314, 2.000000e+00
  %1316 = fadd fast float %1315, -1.000000e+00
  %1317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %16, float %1178, float %1179, float %1313, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1318 = extractvalue %dx.types.ResRet.f32 %1317, 0
  %1319 = extractvalue %dx.types.ResRet.f32 %1317, 1
  %1320 = extractvalue %dx.types.ResRet.f32 %1317, 2
  %1321 = extractvalue %dx.types.ResRet.f32 %1317, 3
  %1322 = fadd fast float %1318, -5.000000e-01
  %1323 = fadd fast float %1320, -5.000000e-01
  %1324 = fmul fast float %1322, 0xBFD5555560000000
  %1325 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1323, float %1324)  ; FMad(a,b,c)
  %1326 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1319, float 0.000000e+00)  ; FMad(a,b,c)
  %1327 = fadd fast float %1326, %1321
  %1328 = fmul fast float %1322, -7.500000e-01
  %1329 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1323, float %1328)  ; FMad(a,b,c)
  %1330 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1319, float 0.000000e+00)  ; FMad(a,b,c)
  %1331 = fadd fast float %1330, %1321
  %1332 = call float @dx.op.binary.f32(i32 35, float %1325, float -1.000000e+00)  ; FMax(a,b)
  %1333 = call float @dx.op.binary.f32(i32 35, float %1327, float -1.000000e+00)  ; FMax(a,b)
  %1334 = call float @dx.op.binary.f32(i32 35, float %1329, float -1.000000e+00)  ; FMax(a,b)
  %1335 = call float @dx.op.binary.f32(i32 35, float %1331, float -1.000000e+00)  ; FMax(a,b)
  %1336 = call float @dx.op.binary.f32(i32 36, float %1332, float 1.000000e+00)  ; FMin(a,b)
  %1337 = call float @dx.op.binary.f32(i32 36, float %1333, float 1.000000e+00)  ; FMin(a,b)
  %1338 = call float @dx.op.binary.f32(i32 36, float %1334, float 1.000000e+00)  ; FMin(a,b)
  %1339 = call float @dx.op.binary.f32(i32 36, float %1335, float 1.000000e+00)  ; FMin(a,b)
  %1340 = fcmp fast olt float %1336, 0x3FEFFF8020000000
  br i1 %1340, label %1341, label %1456, !dx.controlflow.hints !106

; <label>:1341                                    ; preds = %1308
  %1342 = extractvalue %dx.types.CBufRet.f32 %1224, 3
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 0
  %1345 = extractvalue %dx.types.CBufRet.f32 %1343, 1
  %1346 = extractvalue %dx.types.CBufRet.f32 %1343, 2
  %1347 = extractvalue %dx.types.CBufRet.f32 %1343, 3
  %1348 = fsub fast float %1344, %1336
  %1349 = fsub fast float %1345, %1337
  %1350 = fsub fast float %1346, %1338
  %1351 = fsub fast float %1347, %1339
  %1352 = fmul fast float %1348, %1342
  %1353 = fmul fast float %1349, %1342
  %1354 = fmul fast float %1350, %1342
  %1355 = fmul fast float %1351, %1342
  %1356 = fadd fast float %1352, %1336
  %1357 = fadd fast float %1353, %1337
  %1358 = fsub fast float -0.000000e+00, %1357
  %1359 = fadd fast float %1354, %1338
  %1360 = fadd fast float %1355, %1339
  %1361 = fmul fast float %1356, %1356
  %1362 = fsub fast float %1357, %1361
  %1363 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1362)  ; FMax(a,b)
  %1364 = fdiv fast float 1.000000e+00, %1363
  %1365 = fmul fast float %1357, %1356
  %1366 = fsub fast float %1359, %1365
  %1367 = fsub fast float %1316, %1356
  %1368 = fmul fast float %1316, %1316
  %1369 = fsub fast float %1368, %1357
  %1370 = fmul fast float %1367, %1364
  %1371 = fmul fast float %1370, %1366
  %1372 = fsub fast float %1369, %1371
  %1373 = fmul fast float %1357, %1357
  %1374 = fsub fast float %1360, %1373
  %1375 = fmul fast float %1366, %1366
  %1376 = fmul fast float %1375, %1364
  %1377 = fsub fast float %1374, %1376
  %1378 = fdiv fast float %1372, %1377
  %1379 = fmul fast float %1366, %1378
  %1380 = fsub fast float %1367, %1379
  %1381 = fmul fast float %1380, %1364
  %1382 = fmul fast float %1381, %1356
  %1383 = fsub fast float 1.000000e+00, %1382
  %1384 = fmul fast float %1357, %1378
  %1385 = fsub fast float %1383, %1384
  %1386 = fmul fast float %1381, %1381
  %1387 = fmul fast float %1378, 4.000000e+00
  %1388 = fmul fast float %1387, %1385
  %1389 = fsub fast float %1386, %1388
  %1390 = call float @dx.op.unary.f32(i32 24, float %1389)  ; Sqrt(value)
  %1391 = fcmp fast oge float %1381, 0.000000e+00
  %1392 = fsub fast float -0.000000e+00, %1390
  %1393 = select i1 %1391, float %1392, float %1390
  %1394 = fsub fast float %1393, %1381
  %1395 = fdiv fast float %1394, %1378
  %1396 = fdiv fast float %1385, %1394
  %1397 = fmul fast float %1395, 5.000000e-01
  %1398 = fmul fast float %1396, 2.000000e+00
  %1399 = select i1 %1391, float %1397, float %1398
  %1400 = select i1 %1391, float %1398, float %1397
  %1401 = call float @dx.op.binary.f32(i32 35, float %1399, float %1400)  ; FMax(a,b)
  %1402 = call float @dx.op.binary.f32(i32 36, float %1399, float %1400)  ; FMin(a,b)
  %1403 = fcmp fast ogt float %1316, %1402
  br i1 %1403, label %1404, label %1414

; <label>:1404                                    ; preds = %1341
  %1405 = fsub fast float %1316, %1402
  %1406 = fsub fast float %1401, %1402
  %1407 = fmul fast float %1405, %1406
  %1408 = fmul fast float %1401, %1316
  %1409 = fadd fast float %1401, %1316
  %1410 = fmul fast float %1409, %1356
  %1411 = fadd fast float %1408, %1357
  %1412 = fsub fast float %1411, %1410
  %1413 = fdiv fast float %1412, %1407
  br label %1414

; <label>:1414                                    ; preds = %1404, %1341
  %1415 = phi float [ %1413, %1404 ], [ 0.000000e+00, %1341 ]
  %1416 = fcmp fast ogt float %1316, %1401
  %1417 = fsub fast float %1316, %1401
  br i1 %1416, label %1418, label %1428

; <label>:1418                                    ; preds = %1414
  %1419 = fsub fast float %1401, %1402
  %1420 = fmul fast float %1419, %1417
  %1421 = fmul fast float %1402, %1316
  %1422 = fadd fast float %1402, %1316
  %1423 = fmul fast float %1422, %1356
  %1424 = fsub fast float %1358, %1421
  %1425 = fadd fast float %1424, %1423
  %1426 = fdiv fast float %1425, %1420
  %1427 = fadd fast float %1426, %1415
  br label %1428

; <label>:1428                                    ; preds = %1418, %1414
  %1429 = phi float [ %1427, %1418 ], [ %1415, %1414 ]
  %1430 = fsub fast float %1316, %1402
  %1431 = fmul fast float %1430, %1417
  %1432 = fmul fast float %1402, %1401
  %1433 = fadd fast float %1402, %1401
  %1434 = fmul fast float %1433, %1356
  %1435 = fadd fast float %1432, %1357
  %1436 = fsub fast float %1435, %1434
  %1437 = fdiv fast float %1436, %1431
  %1438 = call float @dx.op.unary.f32(i32 7, float %1429)  ; Saturate(value)
  %1439 = fcmp fast oeq float %492, 0.000000e+00
  %1440 = extractvalue %dx.types.CBufRet.f32 %1224, 0
  %1441 = fcmp fast oeq float %1440, 0.000000e+00
  %1442 = or i1 %1439, %1441
  %1443 = fmul fast float %1440, 2.000000e+00
  %1444 = fadd fast float %1225, %1226
  %1445 = fdiv fast float %1444, %1443
  %1446 = call float @dx.op.unary.f32(i32 7, float %1445)  ; Saturate(value)
  %1447 = fmul fast float %1446, 2.000000e+00
  %1448 = fsub fast float 3.000000e+00, %1447
  %1449 = fmul fast float %1446, %1446
  %1450 = fmul fast float %1449, %1448
  %1451 = select i1 %1442, float 1.000000e+00, float %1450
  %1452 = fmul fast float %1437, %492
  %1453 = fadd fast float %1438, %1452
  %1454 = call float @dx.op.unary.f32(i32 7, float %1453)  ; Saturate(value)
  %1455 = fmul fast float %1451, %1454
  br label %1456

; <label>:1456                                    ; preds = %1428, %1308
  %1457 = phi float [ %1455, %1428 ], [ 0.000000e+00, %1308 ]
  %1458 = fsub fast float 1.000000e+00, %1457
  %1459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %16, float %1178, float %1179, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1460 = extractvalue %dx.types.ResRet.f32 %1459, 0
  %1461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.i32 %1461, 2
  %1463 = icmp eq i32 %1462, 0
  br i1 %1463, label %1469, label %1464

; <label>:1464                                    ; preds = %1456
  %1465 = call float @dx.op.unary.f32(i32 7, float %1457)  ; Saturate(value)
  %1466 = fadd fast float %1460, -1.000000e+00
  %1467 = fmul fast float %1465, %1466
  %1468 = fadd fast float %1467, 1.000000e+00
  br label %1469

; <label>:1469                                    ; preds = %1464, %1456
  %1470 = phi float [ %1468, %1464 ], [ %1458, %1456 ]
  br i1 %1232, label %1471, label %1489

; <label>:1471                                    ; preds = %1469
  %1472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.f32 %1472, 1
  %1474 = fsub fast float %1309, %1473
  %1475 = call float @dx.op.unary.f32(i32 7, float %1474)  ; Saturate(value)
  %1476 = fsub fast float %1309, %1231
  %1477 = call float @dx.op.unary.f32(i32 7, float %1476)  ; Saturate(value)
  %1478 = fsub fast float %1475, %1477
  %1479 = fsub fast float %1311, %1477
  %1480 = fdiv fast float %1479, %1478
  %1481 = call float @dx.op.unary.f32(i32 7, float %1480)  ; Saturate(value)
  %1482 = fmul fast float %1481, 2.000000e+00
  %1483 = fsub fast float 3.000000e+00, %1482
  %1484 = fsub fast float %1460, %1470
  %1485 = fmul fast float %1481, %1481
  %1486 = fmul fast float %1485, %1484
  %1487 = fmul fast float %1486, %1483
  %1488 = fadd fast float %1487, %1470
  br label %1489

; <label>:1489                                    ; preds = %1471, %1469
  %1490 = phi float [ %1488, %1471 ], [ %1470, %1469 ]
  %1491 = call float @dx.op.binary.f32(i32 35, float %1460, float %1490)  ; FMax(a,b)
  %1492 = call float @dx.op.dot3.f32(i32 55, float %1491, float %1491, float %1491, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1493 = select i1 %120, float %1492, float %1491
  %1494 = select i1 %120, float 1.000000e+00, float %1491
  %1495 = fmul fast float %1493, %1168
  %1496 = fmul fast float %1493, %1169
  %1497 = fmul fast float %1494, %1170
  br label %1498

; <label>:1498                                    ; preds = %1489, %1174, %1160, %616
  %1499 = phi float [ %621, %616 ], [ %1168, %1160 ], [ %1495, %1489 ], [ %1168, %1174 ]
  %1500 = phi float [ %622, %616 ], [ %1169, %1160 ], [ %1496, %1489 ], [ %1169, %1174 ]
  %1501 = phi float [ %623, %616 ], [ %1170, %1160 ], [ %1497, %1489 ], [ %1170, %1174 ]
  %1502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1503 = extractvalue %dx.types.CBufRet.f32 %1502, 2
  %1504 = extractvalue %dx.types.CBufRet.f32 %1502, 3
  %1505 = fmul fast float %1503, %39
  %1506 = fmul fast float %1504, %40
  %1507 = call float @dx.op.unary.f32(i32 7, float %1505)  ; Saturate(value)
  %1508 = call float @dx.op.unary.f32(i32 7, float %1506)  ; Saturate(value)
  %1509 = select i1 %500, i32 2, i32 0
  %1510 = or i32 %1509, 1
  %1511 = uitofp i32 %1510 to float
  %1512 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %1507, float %1508, float %1511, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1513 = extractvalue %dx.types.ResRet.f32 %1512, 0
  %1514 = extractvalue %dx.types.ResRet.f32 %1512, 1
  %1515 = extractvalue %dx.types.ResRet.f32 %1512, 2
  %1516 = extractvalue %dx.types.ResRet.f32 %1512, 3
  %1517 = add nuw nsw i32 %1509, 2
  %1518 = uitofp i32 %1517 to float
  %1519 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %1507, float %1508, float %1518, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1520 = extractvalue %dx.types.ResRet.f32 %1519, 0
  %1521 = extractvalue %dx.types.ResRet.f32 %1519, 1
  %1522 = extractvalue %dx.types.ResRet.f32 %1519, 2
  %1523 = extractvalue %dx.types.ResRet.f32 %1519, 3
  %1524 = call float @dx.op.binary.f32(i32 35, float %1514, float %1515)  ; FMax(a,b)
  %1525 = call float @dx.op.binary.f32(i32 35, float %1513, float %1524)  ; FMax(a,b)
  %1526 = call float @dx.op.binary.f32(i32 35, float %1525, float %1516)  ; FMax(a,b)
  %1527 = call float @dx.op.binary.f32(i32 36, float %1521, float %1522)  ; FMin(a,b)
  %1528 = call float @dx.op.binary.f32(i32 36, float %1520, float %1527)  ; FMin(a,b)
  %1529 = call float @dx.op.binary.f32(i32 36, float %1528, float %1523)  ; FMin(a,b)
  %1530 = fmul fast float %1526, 2.550000e+02
  %1531 = fadd fast float %1530, 0x3F70101020000000
  %1532 = fptoui float %1531 to i32
  %1533 = fmul fast float %1529, 2.550000e+02
  %1534 = fadd fast float %1533, 0x3F70101020000000
  %1535 = fptoui float %1534 to i32
  %1536 = icmp ult i32 %1532, %1535
  br i1 %1536, label %1537, label %1580

; <label>:1537                                    ; preds = %1498
  %1538 = fcmp fast ogt float %32, 9.843750e-01
  %1539 = fadd fast float %620, -4.000000e+00
  %1540 = select i1 %1538, float -4.000000e+00, float %1539
  %1541 = call float @dx.op.binary.f32(i32 35, float %1540, float 0.000000e+00)  ; FMax(a,b)
  %1542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.f32 %1542, 0
  %1544 = fadd fast float %1543, %1541
  %1545 = extractvalue %dx.types.CBufRet.f32 %1542, 2
  %1546 = fmul fast float %1544, %1545
  %1547 = call float @dx.op.unary.f32(i32 23, float %1546)  ; Log(value)
  %1548 = extractvalue %dx.types.CBufRet.f32 %1542, 3
  %1549 = fmul fast float %1548, %1547
  %1550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1551 = extractvalue %dx.types.CBufRet.f32 %1550, 2
  %1552 = fmul fast float %1549, %1551
  %1553 = call float @dx.op.unary.f32(i32 7, float %1552)  ; Saturate(value)
  %1554 = uitofp i32 %1532 to float
  %1555 = uitofp i32 %1535 to float
  %1556 = fadd fast float %1554, 5.000000e-01
  %1557 = fadd fast float %1555, 5.000000e-01
  %1558 = fmul fast float %1551, %1556
  %1559 = fmul fast float %1551, %1557
  %1560 = fadd fast float %1558, 0x3F0FFB4800000000
  %1561 = fadd fast float %1559, 0xBF0FFB4800000000
  %1562 = call float @dx.op.binary.f32(i32 35, float %1553, float %1560)  ; FMax(a,b)
  %1563 = call float @dx.op.binary.f32(i32 36, float %1562, float %1561)  ; FMin(a,b)
  %1564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1565 = extractvalue %dx.types.CBufRet.f32 %1564, 1
  %1566 = extractvalue %dx.types.CBufRet.f32 %1564, 2
  %1567 = extractvalue %dx.types.CBufRet.f32 %1564, 0
  %1568 = select i1 %500, float %1567, float 0.000000e+00
  %1569 = fmul fast float %1565, %1563
  %1570 = fadd fast float %1568, %1569
  %1571 = fadd fast float %1568, %1566
  %1572 = fsub fast float %1565, %1566
  %1573 = fadd fast float %1572, %1568
  %1574 = call float @dx.op.binary.f32(i32 35, float %1570, float %1571)  ; FMax(a,b)
  %1575 = call float @dx.op.binary.f32(i32 36, float %1574, float %1573)  ; FMin(a,b)
  %1576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %1507, float %1508, float %1575, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1577 = extractvalue %dx.types.ResRet.f32 %1576, 0
  %1578 = extractvalue %dx.types.ResRet.f32 %1576, 1
  %1579 = extractvalue %dx.types.ResRet.f32 %1576, 2
  br label %1580

; <label>:1580                                    ; preds = %1537, %1498
  %1581 = phi float [ %1577, %1537 ], [ 1.000000e+00, %1498 ]
  %1582 = phi float [ %1578, %1537 ], [ 1.000000e+00, %1498 ]
  %1583 = phi float [ %1579, %1537 ], [ 1.000000e+00, %1498 ]
  %1584 = call float @dx.op.dot3.f32(i32 55, float %1581, float %1582, float %1583, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1585 = select i1 %120, float %1584, float %1581
  %1586 = select i1 %120, float %1584, float %1582
  %1587 = fmul fast float %1585, %1499
  %1588 = fmul fast float %1586, %1500
  %1589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1590 = extractvalue %dx.types.CBufRet.f32 %1589, 0
  br i1 %120, label %1591, label %1594

; <label>:1591                                    ; preds = %1580
  %1592 = fadd fast float %1587, %1588
  %1593 = fmul fast float %1590, %1592
  br label %1604

; <label>:1594                                    ; preds = %1580
  %1595 = fmul fast float %1583, %1501
  %1596 = fmul fast float %1590, %1587
  %1597 = fmul fast float %1590, %1588
  %1598 = fmul fast float %1595, %1590
  %1599 = call float @dx.op.binary.f32(i32 35, float %1597, float %1598)  ; FMax(a,b)
  %1600 = call float @dx.op.binary.f32(i32 35, float %1596, float %1599)  ; FMax(a,b)
  %1601 = call float @dx.op.binary.f32(i32 35, float %1600, float 0.000000e+00)  ; FMax(a,b)
  %1602 = fcmp fast ugt float %1601, 0x3F10000000000000
  br i1 %1602, label %1604, label %1603

; <label>:1603                                    ; preds = %1594
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1604

; <label>:1604                                    ; preds = %1603, %1594, %1591
  %1605 = phi float [ %1593, %1591 ], [ %1596, %1603 ], [ %1596, %1594 ]
  %1606 = phi float [ 0.000000e+00, %1591 ], [ %1597, %1603 ], [ %1597, %1594 ]
  %1607 = phi float [ 0.000000e+00, %1591 ], [ %1598, %1603 ], [ %1598, %1594 ]
  %1608 = fadd fast float %362, 0x3FE3C6EF40000000
  %1609 = call float @dx.op.unary.f32(i32 22, float %1608)  ; Frc(value)
  %1610 = call float @dx.op.unary.f32(i32 23, float %1605)  ; Log(value)
  %1611 = fadd fast float %1610, -7.000000e+00
  %1612 = call float @dx.op.unary.f32(i32 21, float %1611)  ; Exp(value)
  %1613 = fmul fast float %1609, 2.000000e+00
  %1614 = fadd fast float %1613, -1.000000e+00
  %1615 = fmul fast float %1612, %1614
  %1616 = fcmp fast ogt float %1605, 0.000000e+00
  %1617 = select i1 %1616, float %1615, float 0.000000e+00
  %1618 = fadd fast float %1617, %1605
  %1619 = fadd fast float %362, 0x3FF3C6EF40000000
  %1620 = call float @dx.op.unary.f32(i32 22, float %1619)  ; Frc(value)
  %1621 = call float @dx.op.unary.f32(i32 23, float %1606)  ; Log(value)
  %1622 = fadd fast float %1621, -7.000000e+00
  %1623 = call float @dx.op.unary.f32(i32 21, float %1622)  ; Exp(value)
  %1624 = fmul fast float %1620, 2.000000e+00
  %1625 = fadd fast float %1624, -1.000000e+00
  %1626 = fmul fast float %1623, %1625
  %1627 = fcmp fast ogt float %1606, 0.000000e+00
  %1628 = select i1 %1627, float %1626, float 0.000000e+00
  %1629 = fadd fast float %1628, %1606
  %1630 = fadd fast float %362, 0x3FFDAA66E0000000
  %1631 = call float @dx.op.unary.f32(i32 22, float %1630)  ; Frc(value)
  %1632 = call float @dx.op.unary.f32(i32 23, float %1607)  ; Log(value)
  %1633 = fadd fast float %1632, -6.000000e+00
  %1634 = call float @dx.op.unary.f32(i32 21, float %1633)  ; Exp(value)
  %1635 = fmul fast float %1631, 2.000000e+00
  %1636 = fadd fast float %1635, -1.000000e+00
  %1637 = fmul fast float %1634, %1636
  %1638 = fcmp fast ogt float %1607, 0.000000e+00
  %1639 = select i1 %1638, float %1637, float 0.000000e+00
  %1640 = fadd fast float %1639, %1607
  %1641 = select i1 %120, float %1606, float %1629
  %1642 = select i1 %120, float %1607, float %1640
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1643 = call float @dx.op.binary.f32(i32 36, float %1618, float 3.225500e+04)  ; FMin(a,b)
  %1644 = call float @dx.op.binary.f32(i32 36, float %1641, float 3.225500e+04)  ; FMin(a,b)
  %1645 = call float @dx.op.binary.f32(i32 36, float %1642, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1643)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1644)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1645)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

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
!dx.viewIdState = !{!32}
!dx.entryPoints = !{!33}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !24, !27}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 9, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!18 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !21}
!21 = !{i32 0, i32 14}
!22 = !{i32 13, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!23 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!24 = !{!25, !26}
!25 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!26 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!27 = !{!28, !29, !30, !31}
!28 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!29 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!30 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!31 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!32 = !{[26 x i32] [i32 24, i32 8, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0]}
!33 = !{void ()* @ps_main, !"ps_main", !34, !4, !53}
!34 = !{!35, !49, null}
!35 = !{!36, !39, !41, !43, !45, !46, !47, !48}
!36 = !{i32 0, !"SV_Position", i8 9, i8 3, !37, i8 4, i32 1, i8 4, i32 0, i8 0, !38}
!37 = !{i32 0}
!38 = !{i32 3, i32 15}
!39 = !{i32 1, !"COLOR", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 1, i8 0, !40}
!40 = !{i32 3, i32 1}
!41 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 2, i8 0, !42}
!42 = !{i32 3, i32 3}
!43 = !{i32 3, !"NORMAL", i8 9, i8 0, !37, i8 2, i32 1, i8 3, i32 3, i8 0, !44}
!44 = !{i32 3, i32 7}
!45 = !{i32 4, !"ENTITY_IDS", i8 5, i8 0, !37, i8 1, i32 1, i8 2, i32 4, i8 0, !40}
!46 = !{i32 5, !"PACKED_TRI_DATA", i8 5, i8 0, !37, i8 1, i32 1, i8 4, i32 5, i8 0, !40}
!47 = !{i32 6, !"SV_IsFrontFace", i8 5, i8 13, !37, i8 1, i32 1, i8 1, i32 4, i8 2, !40}
!48 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !37, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!49 = !{!50, !51}
!50 = !{i32 0, !"SV_Target", i8 9, i8 16, !37, i8 0, i32 1, i8 4, i32 0, i8 0, !38}
!51 = !{i32 1, !"SV_Target", i8 9, i8 16, !52, i8 0, i32 1, i8 4, i32 1, i8 0, !38}
!52 = !{i32 1}
!53 = !{i32 0, i64 24}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = !{!57, !57, i64 0}
!57 = !{!"float", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !{!61, !63, !65, !66, !68, !69, !70, !72, !73, !74}
!61 = distinct !{!61, !62, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!62 = distinct !{!62, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!63 = distinct !{!63, !64, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!64 = distinct !{!64, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!65 = distinct !{!65, !64, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!66 = distinct !{!66, !67, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!67 = distinct !{!67, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!68 = distinct !{!68, !67, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!69 = distinct !{!69, !67, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!70 = distinct !{!70, !71, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!71 = distinct !{!71, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!72 = distinct !{!72, !71, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!73 = distinct !{!73, !71, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!74 = distinct !{!74, !75, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!75 = distinct !{!75, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"\01?sort@@YAXAIAM00@Z: %c"}
!78 = distinct !{!78, !"\01?sort@@YAXAIAM00@Z"}
!79 = !{!80, !81, !61, !63, !65, !66, !68, !69, !70, !72, !73, !74}
!80 = distinct !{!80, !78, !"\01?sort@@YAXAIAM00@Z: %a"}
!81 = distinct !{!81, !78, !"\01?sort@@YAXAIAM00@Z: %b"}
!82 = !{!81}
!83 = !{!80, !77, !61, !63, !65, !66, !68, !69, !70, !72, !73, !74}
!84 = !{!80}
!85 = !{!81, !77, !61, !63, !65, !66, !68, !69, !70, !72, !73, !74}
!86 = !{!87}
!87 = distinct !{!87, !88, !"\01?sort@@YAXAIAM00@Z: %c"}
!88 = distinct !{!88, !"\01?sort@@YAXAIAM00@Z"}
!89 = !{!90, !91, !61, !63, !65, !66, !68, !69, !70, !72, !73, !74}
!90 = distinct !{!90, !88, !"\01?sort@@YAXAIAM00@Z: %a"}
!91 = distinct !{!91, !88, !"\01?sort@@YAXAIAM00@Z: %b"}
!92 = !{!91}
!93 = !{!90, !87, !61, !63, !65, !66, !68, !69, !70, !72, !73, !74}
!94 = !{!90}
!95 = !{!91, !87, !61, !63, !65, !66, !68, !69, !70, !72, !73, !74}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}

