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
; shader hash: 35f57a443c3a5e140e003b8032b7c87c
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
  %92 = extractvalue %dx.types.ResRet.i32 %91, 0
  %93 = extractvalue %dx.types.ResRet.i32 %91, 1
  %94 = extractvalue %dx.types.ResRet.i32 %91, 2
  %95 = extractvalue %dx.types.ResRet.i32 %91, 3
  %96 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.i32 %96, 3
  %98 = and i32 %97, 3
  %99 = icmp ne i32 %98, 0
  %100 = and i32 %97, 4
  %101 = icmp ne i32 %100, 0
  %102 = and i1 %99, %101
  br i1 %102, label %103, label %112

; <label>:103                                     ; preds = %0
  %104 = fmul fast float %55, %40
  %105 = fmul fast float %54, %39
  %106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %105, float %104, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %107 = extractvalue %dx.types.ResRet.f32 %106, 0
  %108 = fsub fast float 1.000000e+00, %107
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = fcmp fast olt float %108, %110
  br label %120

; <label>:112                                     ; preds = %0
  %113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.i32 %113, 3
  %115 = and i32 %114, 3
  %116 = icmp ne i32 %115, 0
  %117 = and i32 %114, 4
  %118 = icmp eq i32 %117, 0
  %119 = and i1 %116, %118
  br label %120

; <label>:120                                     ; preds = %112, %103
  %121 = phi i1 [ %111, %103 ], [ %119, %112 ]
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 3
  %125 = fmul fast float %123, %39
  %126 = fmul fast float %124, %40
  %127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %128 = extractvalue %dx.types.ResRet.i32 %127, 0
  %129 = and i32 %128, 114688
  %130 = icmp ne i32 %129, 0
  %131 = select i1 %130, float %125, float 0.000000e+00
  %132 = select i1 %130, float %126, float 0.000000e+00
  %133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %131, float %132, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %134 = extractvalue %dx.types.ResRet.f32 %133, 0
  %135 = fmul fast float %134, 2.550000e+02
  %136 = fptoui float %135 to i32
  %137 = select i1 %130, i32 %136, i32 0
  %138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %139 = extractvalue %dx.types.ResRet.i32 %138, 0
  %140 = and i32 %92, 65535
  %141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %140)  ; LegacyF16ToF32(value)
  %142 = lshr i32 %92, 16
  %143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %142)  ; LegacyF16ToF32(value)
  %144 = and i32 %93, 65535
  %145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %144)  ; LegacyF16ToF32(value)
  %146 = lshr i32 %93, 16
  %147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %146)  ; LegacyF16ToF32(value)
  %148 = fmul fast float %147, %29
  %149 = and i32 %95, 65535
  %150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %149)  ; LegacyF16ToF32(value)
  %151 = shl i32 %94, 4
  %152 = and i32 %151, 32752
  %153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %152)  ; LegacyF16ToF32(value)
  %154 = lshr i32 %94, 7
  %155 = and i32 %154, 32752
  %156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %155)  ; LegacyF16ToF32(value)
  %157 = lshr i32 %94, 22
  %158 = shl nuw nsw i32 %157, 5
  %159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %158)  ; LegacyF16ToF32(value)
  %160 = fmul fast float %153, %150
  %161 = and i32 %139, 16
  %162 = icmp ne i32 %161, 0
  %163 = select i1 %162, float 1.000000e+00, float %148
  %164 = fcmp fast ogt float %163, 0.000000e+00
  br i1 %164, label %166, label %165

; <label>:165                                     ; preds = %120
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %166

; <label>:166                                     ; preds = %165, %120
  %167 = call float @dx.op.unary.f32(i32 7, float %163)  ; Saturate(value)
  %168 = fmul fast float %39, 5.000000e-01
  %169 = fmul fast float %40, 5.000000e-01
  %170 = fptosi float %168 to i32
  %171 = fptosi float %169 to i32
  %172 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 0, i32 %170, i32 %171, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = lshr i32 %173, 18
  %175 = uitofp i32 %174 to float
  %176 = fmul fast float %175, 0x3F4C00EBA0000000
  %177 = call float @dx.op.unary.f32(i32 21, float %176)  ; Exp(value)
  %178 = fadd fast float %177, -1.000000e+00
  %179 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %7, i32 0)  ; GetDimensions(handle,mipLevel)
  %180 = extractvalue %dx.types.Dimensions %179, 0
  %181 = sitofp i32 %180 to float
  %182 = extractvalue %dx.types.Dimensions %179, 1
  %183 = sitofp i32 %182 to float
  %184 = fcmp fast oge float %168, %181
  %185 = fcmp fast oge float %169, %183
  %186 = or i1 %184, %185
  %187 = select i1 %186, float 0x4197782600000000, float %178
  %188 = fsub fast float %187, %33
  %189 = fcmp fast ogt float %188, 0.000000e+00
  %190 = and i32 %137, -2
  %191 = icmp eq i32 %190, 2
  %192 = and i1 %191, %189
  %193 = xor i1 %189, true
  %194 = icmp eq i32 %137, 1
  %195 = and i1 %194, %193
  %196 = or i1 %192, %195
  %197 = and i32 %139, 262144
  %198 = icmp ne i32 %197, 0
  %199 = and i1 %198, %196
  %200 = xor i1 %196, true
  %201 = and i32 %139, 131072
  %202 = icmp ne i32 %201, 0
  %203 = and i1 %202, %200
  %204 = or i1 %199, %203
  br i1 %204, label %205, label %206

; <label>:205                                     ; preds = %166
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %206

; <label>:206                                     ; preds = %205, %166
  %207 = add i32 %22, 136
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = extractvalue %dx.types.ResRet.i32 %208, 1
  %211 = extractvalue %dx.types.ResRet.i32 %208, 2
  %212 = extractvalue %dx.types.ResRet.i32 %208, 3
  %213 = bitcast i32 %209 to float
  %214 = bitcast i32 %210 to float
  %215 = bitcast i32 %211 to float
  %216 = bitcast i32 %212 to float
  %217 = add i32 %22, 152
  %218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 2
  %220 = bitcast i32 %219 to float
  %221 = add i32 %22, 168
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = add i32 %22, 184
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = extractvalue %dx.types.ResRet.i32 %224, 1
  %227 = extractvalue %dx.types.ResRet.i32 %224, 2
  %228 = extractvalue %dx.types.ResRet.i32 %224, 3
  %229 = bitcast i32 %225 to float
  %230 = bitcast i32 %226 to float
  %231 = bitcast i32 %227 to float
  %232 = bitcast i32 %228 to float
  %233 = add i32 %22, 76
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %235, 2
  %237 = icmp ne i32 %236, 0
  %238 = and i32 %235, 1
  %239 = icmp eq i32 %238, 0
  %240 = and i32 %235, 8
  %241 = icmp eq i32 %240, 0
  %242 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %243 = extractvalue %dx.types.Dimensions %242, 0
  %244 = sitofp i32 %243 to float
  %245 = extractvalue %dx.types.Dimensions %242, 1
  %246 = sitofp i32 %245 to float
  %247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.f32 %247, 2
  %249 = extractvalue %dx.types.CBufRet.f32 %247, 3
  %250 = fmul fast float %248, %39
  %251 = fmul fast float %249, %40
  %252 = fmul fast float %250, %244
  %253 = fmul fast float %251, %246
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 1
  %256 = fsub fast float -0.000000e+00, %255
  %257 = fptoui float %256 to i32
  %258 = fptoui float %252 to i32
  %259 = fptoui float %253 to i32
  %260 = and i32 %257, 31
  %261 = lshr i32 %258, %260
  %262 = lshr i32 %259, %260
  %263 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 %257, i32 %261, i32 %262, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = fcmp fast ogt float %264, -1.000000e+00
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.f32 %266, 1
  %268 = select i1 %265, float %267, float 1.000000e+00
  %269 = fadd fast float %264, 1.000000e+00
  %270 = fmul fast float %268, %269
  %271 = call float @dx.op.unary.f32(i32 6, float %270)  ; FAbs(value)
  %272 = extractvalue %dx.types.CBufRet.f32 %266, 3
  %273 = fcmp fast oge float %271, %272
  %274 = select i1 %273, float 0x4197782600000000, float %271
  %275 = fsub fast float %274, %33
  br i1 %241, label %337, label %276

; <label>:276                                     ; preds = %206
  %277 = extractvalue %dx.types.ResRet.i32 %218, 1
  %278 = bitcast i32 %277 to float
  %279 = extractvalue %dx.types.ResRet.i32 %222, 3
  %280 = bitcast i32 %279 to float
  %281 = extractvalue %dx.types.ResRet.i32 %222, 2
  %282 = bitcast i32 %281 to float
  %283 = extractvalue %dx.types.ResRet.i32 %222, 1
  %284 = bitcast i32 %283 to float
  %285 = extractvalue %dx.types.ResRet.i32 %222, 0
  %286 = bitcast i32 %285 to float
  %287 = extractvalue %dx.types.ResRet.i32 %218, 0
  %288 = bitcast i32 %287 to float
  %289 = fadd fast float %288, %33
  %290 = fcmp fast olt float %274, %33
  %291 = fcmp fast ogt float %274, %289
  %292 = or i1 %290, %291
  %293 = select i1 %292, float 0.000000e+00, float %275
  %294 = call float @dx.op.unary.f32(i32 83, float %274)  ; DerivCoarseX(value)
  %295 = call float @dx.op.unary.f32(i32 84, float %274)  ; DerivCoarseY(value)
  %296 = fmul fast float %294, %294
  %297 = fmul fast float %295, %295
  %298 = fadd fast float %297, %296
  %299 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 2
  %302 = fmul fast float %301, %299
  %303 = call float @dx.op.unary.f32(i32 7, float %302)  ; Saturate(value)
  %304 = fmul fast float %303, %278
  %305 = fdiv fast float %275, %304
  %306 = call float @dx.op.unary.f32(i32 7, float %305)  ; Saturate(value)
  %307 = fmul fast float %306, 2.000000e+00
  %308 = fsub fast float 3.000000e+00, %307
  %309 = fmul fast float %306, %306
  %310 = fmul fast float %309, %308
  %311 = fsub fast float %274, %289
  %312 = fadd fast float %311, %304
  %313 = fdiv fast float %312, %304
  %314 = call float @dx.op.unary.f32(i32 7, float %313)  ; Saturate(value)
  %315 = fmul fast float %314, 2.000000e+00
  %316 = fsub fast float 3.000000e+00, %315
  %317 = fmul fast float %314, %314
  %318 = fmul fast float %317, %316
  %319 = fsub fast float %310, %318
  %320 = fmul fast float %286, %141
  %321 = fmul fast float %284, %143
  %322 = fmul fast float %282, %145
  %323 = fsub fast float %320, %229
  %324 = fsub fast float %321, %230
  %325 = fsub fast float %322, %231
  %326 = fsub fast float %280, %232
  %327 = fmul fast float %319, %323
  %328 = fmul fast float %319, %324
  %329 = fmul fast float %319, %325
  %330 = fmul fast float %319, %326
  %331 = fadd fast float %327, %229
  %332 = fadd fast float %328, %230
  %333 = fadd fast float %329, %231
  %334 = fadd fast float %330, %232
  %335 = fmul fast float %293, %213
  %336 = call float @dx.op.unary.f32(i32 6, float %335)  ; FAbs(value)
  br label %376

; <label>:337                                     ; preds = %206
  %338 = and i32 %235, 4
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %351, label %340

; <label>:340                                     ; preds = %337
  %341 = select i1 %237, float 5.000000e+01, float 1.000000e+00
  %342 = fmul fast float %341, %213
  %343 = fmul fast float %27, 2.000000e+00
  %344 = fmul fast float %28, 2.000000e+00
  %345 = fadd fast float %343, -1.000000e+00
  %346 = fadd fast float %344, -1.000000e+00
  %347 = call float @dx.op.dot2.f32(i32 54, float %345, float %346, float %345, float %346)  ; Dot2(ax,ay,bx,by)
  %348 = fmul fast float %347, %220
  %349 = fsub fast float %275, %348
  %350 = fmul fast float %342, %349
  br label %376

; <label>:351                                     ; preds = %337
  br i1 %239, label %371, label %352

; <label>:352                                     ; preds = %351
  %353 = select i1 %237, float 0x3F947AE140000000, float 1.000000e+00
  %354 = fdiv fast float 1.000000e+00, %353
  %355 = fmul fast float %353, %214
  %356 = fmul fast float %353, %215
  %357 = fmul fast float %354, %216
  %358 = call float @dx.op.unary.f32(i32 6, float %275)  ; FAbs(value)
  %359 = fcmp fast olt float %358, %355
  br i1 %359, label %360, label %364, !dx.controlflow.hints !54

; <label>:360                                     ; preds = %352
  %361 = fmul fast float %354, %213
  %362 = fmul fast float %361, %358
  %363 = call float @dx.op.unary.f32(i32 6, float %362)  ; FAbs(value)
  br label %376

; <label>:364                                     ; preds = %352
  %365 = fcmp fast ogt float %358, %356
  br i1 %365, label %366, label %376

; <label>:366                                     ; preds = %364
  %367 = fsub fast float %358, %356
  %368 = fmul fast float %357, %367
  %369 = call float @dx.op.unary.f32(i32 6, float %368)  ; FAbs(value)
  %370 = fsub fast float 1.000000e+00, %369
  br label %376

; <label>:371                                     ; preds = %351
  %372 = select i1 %237, float 5.000000e+01, float 1.000000e+00
  %373 = fmul fast float %372, %213
  %374 = call float @dx.op.binary.f32(i32 36, float %275, float 0x47EFFFFFE0000000)  ; FMin(a,b)
  %375 = fmul fast float %373, %374
  br label %376

; <label>:376                                     ; preds = %371, %366, %364, %360, %340, %276
  %377 = phi float [ %336, %276 ], [ %350, %340 ], [ %375, %371 ], [ %363, %360 ], [ %370, %366 ], [ %358, %364 ]
  %378 = phi float [ %331, %276 ], [ %141, %340 ], [ %141, %371 ], [ %141, %360 ], [ %141, %366 ], [ %141, %364 ]
  %379 = phi float [ %332, %276 ], [ %143, %340 ], [ %143, %371 ], [ %143, %360 ], [ %143, %366 ], [ %143, %364 ]
  %380 = phi float [ %333, %276 ], [ %145, %340 ], [ %145, %371 ], [ %145, %360 ], [ %145, %366 ], [ %145, %364 ]
  %381 = phi float [ %334, %276 ], [ 1.000000e+00, %340 ], [ 1.000000e+00, %371 ], [ 1.000000e+00, %360 ], [ 1.000000e+00, %366 ], [ 1.000000e+00, %364 ]
  %382 = call float @dx.op.unary.f32(i32 7, float %377)  ; Saturate(value)
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 2
  %385 = fptosi float %33 to i32
  %386 = sitofp i32 %385 to float
  %387 = fadd fast float %384, %386
  %388 = fmul fast float %387, 0x3FE3C6EF40000000
  %389 = frem fast float %39, 2.560000e+02
  %390 = frem fast float %40, 2.560000e+02
  %391 = fptoui float %389 to i32
  %392 = fptoui float %390 to i32
  %393 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %391, i32 %392, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %394 = extractvalue %dx.types.ResRet.f32 %393, 0
  %395 = fadd fast float %394, %388
  %396 = call float @dx.op.unary.f32(i32 22, float %395)  ; Frc(value)
  %397 = add i32 %22, 88
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = extractvalue %dx.types.ResRet.i32 %398, 1
  %401 = extractvalue %dx.types.ResRet.i32 %398, 2
  %402 = extractvalue %dx.types.ResRet.i32 %398, 3
  %403 = bitcast i32 %399 to float
  %404 = bitcast i32 %400 to float
  %405 = bitcast i32 %401 to float
  %406 = bitcast i32 %402 to float
  %407 = add i32 %22, 104
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = extractvalue %dx.types.ResRet.i32 %408, 1
  %411 = extractvalue %dx.types.ResRet.i32 %408, 2
  %412 = bitcast i32 %409 to float
  %413 = bitcast i32 %410 to float
  %414 = bitcast i32 %411 to float
  %415 = add i32 %22, 120
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = extractvalue %dx.types.ResRet.i32 %416, 1
  %419 = extractvalue %dx.types.ResRet.i32 %416, 2
  %420 = bitcast i32 %417 to float
  %421 = bitcast i32 %418 to float
  %422 = bitcast i32 %419 to float
  %423 = call float @dx.op.dot3.f32(i32 55, float %48, float %50, float %52, float %48, float %50, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %424 = call float @dx.op.unary.f32(i32 25, float %423)  ; Rsqrt(value)
  %425 = fmul fast float %424, %48
  %426 = fmul fast float %424, %50
  %427 = fmul fast float %424, %52
  %428 = call float @dx.op.dot3.f32(i32 55, float %86, float %87, float %88, float %86, float %87, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %429 = call float @dx.op.unary.f32(i32 25, float %428)  ; Rsqrt(value)
  %430 = fmul fast float %429, %86
  %431 = fmul fast float %429, %87
  %432 = fmul fast float %429, %88
  %433 = call float @dx.op.dot3.f32(i32 55, float %430, float %431, float %432, float %425, float %426, float %427)  ; Dot3(ax,ay,az,bx,by,bz)
  %434 = fmul fast float %433, %433
  %435 = fmul fast float %434, %405
  %436 = fadd fast float %435, %406
  %437 = call float @dx.op.unary.f32(i32 7, float %436)  ; Saturate(value)
  %438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %439 = extractvalue %dx.types.CBufRet.f32 %438, 3
  %440 = fmul fast float %439, %428
  %441 = fsub fast float %403, %440
  %442 = fmul fast float %441, %404
  %443 = call float @dx.op.unary.f32(i32 7, float %442)  ; Saturate(value)
  %444 = fmul fast float %443, %437
  %445 = fsub fast float %412, %420
  %446 = fsub fast float %413, %421
  %447 = fsub fast float %414, %422
  %448 = fmul fast float %444, %445
  %449 = fmul fast float %444, %446
  %450 = fmul fast float %444, %447
  %451 = fadd fast float %448, %420
  %452 = fadd fast float %449, %421
  %453 = fadd fast float %450, %422
  %454 = fmul fast float %160, %451
  %455 = fmul fast float %381, %167
  %456 = fmul fast float %455, %382
  %457 = fmul fast float %456, %444
  %458 = add i32 %22, 200
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = add i32 %460, 0
  %462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %463 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %462, %dx.types.Handle %36, float %27, float %28, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = extractvalue %dx.types.ResRet.f32 %463, 1
  %466 = extractvalue %dx.types.ResRet.f32 %463, 2
  %467 = add i32 %22, 56
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = and i32 %469, 255
  %471 = uitofp i32 %470 to float
  %472 = fmul fast float %471, 0x3F70101020000000
  %473 = lshr i32 %469, 8
  %474 = and i32 %473, 255
  %475 = uitofp i32 %474 to float
  %476 = fmul fast float %475, 0x3F70101020000000
  %477 = lshr i32 %469, 16
  %478 = and i32 %477, 255
  %479 = uitofp i32 %478 to float
  %480 = fmul fast float %479, 0x3F70101020000000
  %481 = add i32 %22, 204
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = add i32 %483, 0
  %485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %486 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %485, %dx.types.Handle %36, float %27, float %28, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %487 = extractvalue %dx.types.ResRet.f32 %486, 0
  %488 = extractvalue %dx.types.ResRet.f32 %486, 1
  %489 = extractvalue %dx.types.ResRet.f32 %486, 2
  %490 = add i32 %22, 44
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = shl i32 %492, 4
  %494 = and i32 %493, 32752
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = lshr i32 %492, 7
  %497 = and i32 %496, 32752
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = lshr i32 %492, 22
  %500 = shl nuw nsw i32 %499, 5
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = fmul fast float %495, %487
  %503 = add i32 %22, 48
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = lshr i32 %505, 22
  %507 = shl nuw nsw i32 %506, 5
  %508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %507)  ; LegacyF16ToF32(value)
  %509 = fmul fast float %508, %502
  %510 = select i1 %121, float %509, float %502
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 0
  %513 = fmul fast float %454, %510
  %514 = fmul fast float %156, %150
  %515 = fmul fast float %514, %452
  %516 = fmul fast float %515, %488
  %517 = fmul fast float %516, %498
  %518 = fmul fast float %159, %150
  %519 = fmul fast float %518, %453
  %520 = fmul fast float %519, %489
  %521 = fmul fast float %520, %501
  %522 = call float @dx.op.dot3.f32(i32 55, float %513, float %517, float %521, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %523 = select i1 %121, float 0.000000e+00, float %513
  %524 = select i1 %121, float %522, float %517
  %525 = select i1 %121, float 0.000000e+00, float %521
  %526 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 0, i32 %170, i32 %171, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = lshr i32 %527, 18
  %529 = uitofp i32 %528 to float
  %530 = fmul fast float %529, 0x3F4C00EBA0000000
  %531 = call float @dx.op.unary.f32(i32 21, float %530)  ; Exp(value)
  %532 = fadd fast float %531, -1.000000e+00
  %533 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %7, i32 0)  ; GetDimensions(handle,mipLevel)
  %534 = extractvalue %dx.types.Dimensions %533, 0
  %535 = sitofp i32 %534 to float
  %536 = extractvalue %dx.types.Dimensions %533, 1
  %537 = sitofp i32 %536 to float
  %538 = fcmp fast oge float %168, %535
  %539 = fcmp fast oge float %169, %537
  %540 = or i1 %538, %539
  %541 = select i1 %540, float 0x4197782600000000, float %532
  %542 = fmul fast float %523, %457
  %543 = fmul fast float %524, %457
  %544 = fmul fast float %525, %457
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 3
  %547 = fmul fast float %457, %378
  %548 = fmul fast float %547, %451
  %549 = fmul fast float %548, %464
  %550 = fmul fast float %472, %472
  %551 = fmul fast float %550, %549
  %552 = fmul fast float %551, %512
  %553 = fmul fast float %457, %379
  %554 = fmul fast float %553, %452
  %555 = fmul fast float %554, %465
  %556 = fmul fast float %476, %476
  %557 = fmul fast float %556, %555
  %558 = fmul fast float %557, %512
  %559 = fmul fast float %457, %380
  %560 = fmul fast float %559, %453
  %561 = fmul fast float %560, %466
  %562 = fmul fast float %480, %480
  %563 = fmul fast float %562, %561
  %564 = fmul fast float %563, %512
  %565 = icmp eq i32 %137, 3
  %566 = fcmp fast ogt float %33, %541
  %567 = and i1 %194, %566
  %568 = or i1 %565, %567
  %569 = icmp eq i32 %137, 2
  %570 = fcmp fast ole float %33, %541
  %571 = and i1 %569, %570
  %572 = or i1 %571, %568
  br i1 %567, label %573, label %691

; <label>:573                                     ; preds = %376
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 2
  %576 = extractvalue %dx.types.CBufRet.f32 %574, 3
  %577 = fmul fast float %575, %39
  %578 = fmul fast float %576, %40
  %579 = call float @dx.op.unary.f32(i32 7, float %577)  ; Saturate(value)
  %580 = call float @dx.op.unary.f32(i32 7, float %578)  ; Saturate(value)
  %581 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %579, float %580, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %582 = extractvalue %dx.types.ResRet.f32 %581, 0
  %583 = extractvalue %dx.types.ResRet.f32 %581, 1
  %584 = extractvalue %dx.types.ResRet.f32 %581, 2
  %585 = extractvalue %dx.types.ResRet.f32 %581, 3
  %586 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %579, float %580, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %587 = extractvalue %dx.types.ResRet.f32 %586, 0
  %588 = extractvalue %dx.types.ResRet.f32 %586, 1
  %589 = extractvalue %dx.types.ResRet.f32 %586, 2
  %590 = extractvalue %dx.types.ResRet.f32 %586, 3
  %591 = call float @dx.op.binary.f32(i32 35, float %583, float %584)  ; FMax(a,b)
  %592 = call float @dx.op.binary.f32(i32 35, float %582, float %591)  ; FMax(a,b)
  %593 = call float @dx.op.binary.f32(i32 35, float %592, float %585)  ; FMax(a,b)
  %594 = call float @dx.op.binary.f32(i32 36, float %588, float %589)  ; FMin(a,b)
  %595 = call float @dx.op.binary.f32(i32 36, float %587, float %594)  ; FMin(a,b)
  %596 = call float @dx.op.binary.f32(i32 36, float %595, float %590)  ; FMin(a,b)
  %597 = fmul fast float %593, 2.550000e+02
  %598 = fadd fast float %597, 0x3F70101020000000
  %599 = fptoui float %598 to i32
  %600 = fmul fast float %596, 2.550000e+02
  %601 = fadd fast float %600, 0x3F70101020000000
  %602 = fptoui float %601 to i32
  %603 = icmp ult i32 %599, %602
  br i1 %603, label %604, label %646

; <label>:604                                     ; preds = %573
  %605 = fcmp fast ogt float %32, 9.843750e-01
  %606 = fadd fast float %33, -4.000000e+00
  %607 = select i1 %605, float -4.000000e+00, float %606
  %608 = call float @dx.op.binary.f32(i32 35, float %607, float 0.000000e+00)  ; FMax(a,b)
  %609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %610 = extractvalue %dx.types.CBufRet.f32 %609, 0
  %611 = fadd fast float %610, %608
  %612 = extractvalue %dx.types.CBufRet.f32 %609, 2
  %613 = fmul fast float %611, %612
  %614 = call float @dx.op.unary.f32(i32 23, float %613)  ; Log(value)
  %615 = extractvalue %dx.types.CBufRet.f32 %609, 3
  %616 = fmul fast float %615, %614
  %617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %618 = extractvalue %dx.types.CBufRet.f32 %617, 2
  %619 = fmul fast float %616, %618
  %620 = call float @dx.op.unary.f32(i32 7, float %619)  ; Saturate(value)
  %621 = uitofp i32 %599 to float
  %622 = uitofp i32 %602 to float
  %623 = fadd fast float %621, 5.000000e-01
  %624 = fadd fast float %622, 5.000000e-01
  %625 = fmul fast float %618, %623
  %626 = fmul fast float %618, %624
  %627 = fadd fast float %625, 0x3F0FFB4800000000
  %628 = fadd fast float %626, 0xBF0FFB4800000000
  %629 = call float @dx.op.binary.f32(i32 35, float %620, float %627)  ; FMax(a,b)
  %630 = call float @dx.op.binary.f32(i32 36, float %629, float %628)  ; FMin(a,b)
  %631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %632 = extractvalue %dx.types.CBufRet.f32 %631, 1
  %633 = extractvalue %dx.types.CBufRet.f32 %631, 2
  %634 = extractvalue %dx.types.CBufRet.f32 %631, 0
  %635 = fmul fast float %632, %630
  %636 = fadd fast float %634, %635
  %637 = fadd fast float %634, %633
  %638 = fsub fast float %632, %633
  %639 = fadd fast float %638, %634
  %640 = call float @dx.op.binary.f32(i32 35, float %636, float %637)  ; FMax(a,b)
  %641 = call float @dx.op.binary.f32(i32 36, float %640, float %639)  ; FMin(a,b)
  %642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %579, float %580, float %641, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = extractvalue %dx.types.ResRet.f32 %642, 1
  %645 = extractvalue %dx.types.ResRet.f32 %642, 2
  br label %646

; <label>:646                                     ; preds = %604, %573
  %647 = phi float [ %643, %604 ], [ 1.000000e+00, %573 ]
  %648 = phi float [ %644, %604 ], [ 1.000000e+00, %573 ]
  %649 = phi float [ %645, %604 ], [ 1.000000e+00, %573 ]
  %650 = call float @dx.op.dot3.f32(i32 55, float %647, float %648, float %649, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %651 = select i1 %121, float %650, float %647
  %652 = select i1 %121, float %650, float %648
  %653 = select i1 %121, float 1.000000e+00, float %649
  %654 = fmul fast float %651, %552
  %655 = fmul fast float %652, %558
  %656 = fmul fast float %653, %564
  %657 = fmul fast float %651, %542
  %658 = fmul fast float %652, %543
  %659 = fmul fast float %653, %544
  %660 = fmul fast float %56, %575
  %661 = fmul fast float %58, %576
  %662 = fsub fast float 1.000000e+00, %660
  %663 = fsub fast float 1.000000e+00, %661
  %664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %665 = extractvalue %dx.types.CBufRet.f32 %664, 0
  %666 = extractvalue %dx.types.CBufRet.f32 %664, 1
  %667 = extractvalue %dx.types.CBufRet.f32 %664, 2
  %668 = fmul fast float %662, %665
  %669 = fmul fast float %662, %666
  %670 = fmul fast float %662, %667
  %671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %672 = extractvalue %dx.types.CBufRet.f32 %671, 0
  %673 = extractvalue %dx.types.CBufRet.f32 %671, 1
  %674 = extractvalue %dx.types.CBufRet.f32 %671, 2
  %675 = fmul fast float %663, %672
  %676 = fmul fast float %663, %673
  %677 = fmul fast float %663, %674
  %678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.f32 %678, 0
  %680 = extractvalue %dx.types.CBufRet.f32 %678, 1
  %681 = extractvalue %dx.types.CBufRet.f32 %678, 2
  %682 = fadd fast float %675, %679
  %683 = fadd fast float %682, %668
  %684 = fadd fast float %676, %680
  %685 = fadd fast float %684, %669
  %686 = fadd fast float %677, %681
  %687 = fadd fast float %686, %670
  %688 = fmul fast float %683, %541
  %689 = fmul fast float %685, %541
  %690 = fmul fast float %687, %541
  br label %691

; <label>:691                                     ; preds = %646, %376
  %692 = phi float [ %688, %646 ], [ %86, %376 ]
  %693 = phi float [ %689, %646 ], [ %87, %376 ]
  %694 = phi float [ %690, %646 ], [ %88, %376 ]
  %695 = phi float [ %541, %646 ], [ %33, %376 ]
  %696 = phi float [ %654, %646 ], [ %552, %376 ]
  %697 = phi float [ %655, %646 ], [ %558, %376 ]
  %698 = phi float [ %656, %646 ], [ %564, %376 ]
  %699 = phi float [ %657, %646 ], [ %542, %376 ]
  %700 = phi float [ %658, %646 ], [ %543, %376 ]
  %701 = phi float [ %659, %646 ], [ %544, %376 ]
  br i1 %572, label %1582, label %702

; <label>:702                                     ; preds = %691
  %703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %704 = extractvalue %dx.types.CBufRet.f32 %703, 0
  %705 = extractvalue %dx.types.CBufRet.f32 %703, 1
  %706 = extractvalue %dx.types.CBufRet.f32 %703, 2
  %707 = extractvalue %dx.types.CBufRet.f32 %703, 3
  %708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %709 = extractvalue %dx.types.CBufRet.f32 %708, 0
  %710 = extractvalue %dx.types.CBufRet.f32 %708, 1
  %711 = extractvalue %dx.types.CBufRet.f32 %708, 2
  %712 = extractvalue %dx.types.CBufRet.f32 %708, 3
  %713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %714 = extractvalue %dx.types.CBufRet.f32 %713, 3
  %715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %716 = extractvalue %dx.types.CBufRet.f32 %715, 3
  %717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %718 = extractvalue %dx.types.CBufRet.f32 %717, 3
  %719 = extractvalue %dx.types.CBufRet.f32 %717, 0
  %720 = extractvalue %dx.types.CBufRet.f32 %717, 1
  %721 = extractvalue %dx.types.CBufRet.f32 %717, 2
  %722 = fcmp fast olt float %721, -5.000000e-01
  %723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %724 = extractvalue %dx.types.CBufRet.f32 %723, 3
  %725 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float %692, float %693, float %694)  ; Dot3(ax,ay,az,bx,by,bz)
  %726 = call float @dx.op.unary.f32(i32 25, float %725)  ; Rsqrt(value)
  %727 = fmul fast float %726, %725
  %728 = fmul fast float %726, %692
  %729 = fmul fast float %726, %693
  %730 = fmul fast float %726, %694
  %731 = fadd fast float %727, %707
  %732 = call float @dx.op.dot3.f32(i32 55, float %728, float %729, float %730, float %704, float %705, float %706)  ; Dot3(ax,ay,az,bx,by,bz)
  %733 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.i32 %733, 1
  %735 = and i32 %734, 1
  %736 = icmp ne i32 %735, 0
  %737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %738 = extractvalue %dx.types.CBufRet.f32 %737, 2
  %739 = fcmp fast ogt float %738, 0.000000e+00
  %740 = and i1 %736, %739
  br i1 %740, label %741, label %1080, !dx.controlflow.hints !55

; <label>:741                                     ; preds = %702
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 3
  %744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %745 = extractvalue %dx.types.CBufRet.f32 %744, 2
  %746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.f32 %746, 2
  %748 = fsub fast float %745, %747
  %749 = and i32 %734, 2
  %750 = extractvalue %dx.types.CBufRet.i32 %733, 0
  %751 = call i32 @dx.op.binary.i32(i32 40, i32 %750, i32 3)  ; UMin(a,b)
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 0
  %754 = extractvalue %dx.types.CBufRet.f32 %752, 1
  %755 = extractvalue %dx.types.CBufRet.f32 %746, 0
  %756 = extractvalue %dx.types.CBufRet.f32 %746, 1
  %757 = fsub fast float %753, %755
  %758 = fsub fast float %754, %756
  %759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %760 = extractvalue %dx.types.CBufRet.f32 %759, 0
  %761 = fcmp fast ogt float %760, 0.000000e+00
  %762 = fsub fast float -0.000000e+00, %757
  %763 = fsub fast float -0.000000e+00, %758
  %764 = call float @dx.op.dot2.f32(i32 54, float %728, float %729, float %728, float %729)  ; Dot2(ax,ay,bx,by)
  %765 = call float @dx.op.dot2.f32(i32 54, float %728, float %729, float %762, float %763)  ; Dot2(ax,ay,bx,by)
  %766 = fmul fast float %765, 2.000000e+00
  %767 = call float @dx.op.dot2.f32(i32 54, float %762, float %763, float %762, float %763)  ; Dot2(ax,ay,bx,by)
  %768 = fmul fast float %760, %760
  %769 = fsub fast float %767, %768
  %770 = fmul fast float %766, %766
  %771 = fmul fast float %764, 4.000000e+00
  %772 = fmul fast float %771, %769
  %773 = fsub fast float %770, %772
  %774 = fcmp fast ogt float %773, 0.000000e+00
  br i1 %774, label %775, label %790

; <label>:775                                     ; preds = %741
  %776 = fcmp fast ogt float %766, 0.000000e+00
  %777 = call float @dx.op.unary.f32(i32 24, float %773)  ; Sqrt(value)
  %778 = fsub fast float -0.000000e+00, %777
  %779 = select i1 %776, float %777, float %778
  %780 = fadd fast float %779, %766
  %781 = fmul float %780, -5.000000e-01
  %782 = fdiv fast float %781, %764
  %783 = call float @dx.op.binary.f32(i32 35, float %782, float 0.000000e+00)  ; FMax(a,b)
  %784 = call float @dx.op.binary.f32(i32 36, float %727, float %783)  ; FMin(a,b)
  %785 = fdiv fast float %769, %781
  %786 = call float @dx.op.binary.f32(i32 35, float %785, float 0.000000e+00)  ; FMax(a,b)
  %787 = call float @dx.op.binary.f32(i32 36, float %727, float %786)  ; FMin(a,b)
  %788 = call float @dx.op.binary.f32(i32 36, float %784, float %787)  ; FMin(a,b)
  %789 = call float @dx.op.binary.f32(i32 35, float %784, float %787)  ; FMax(a,b)
  br label %790

; <label>:790                                     ; preds = %775, %741
  %791 = phi float [ %789, %775 ], [ -1.000000e+00, %741 ]
  %792 = phi float [ %788, %775 ], [ -1.000000e+00, %741 ]
  %793 = phi i1 [ true, %775 ], [ false, %741 ]
  %794 = and i1 %761, %793
  br i1 %794, label %795, label %797

; <label>:795                                     ; preds = %790
  %796 = fcmp fast oeq float %792, %791
  br i1 %796, label %1040, label %798

; <label>:797                                     ; preds = %790
  br i1 %761, label %1040, label %798

; <label>:798                                     ; preds = %797, %795
  %799 = phi float [ %727, %797 ], [ %791, %795 ]
  %800 = phi float [ 0.000000e+00, %797 ], [ %792, %795 ]
  %801 = icmp ne i32 %749, 0
  %802 = fmul fast float %799, %730
  %803 = fadd fast float %802, %743
  %804 = fmul fast float %803, %799
  %805 = select i1 %801, float 0.000000e+00, float %804
  %806 = fcmp fast oeq float %730, 0.000000e+00
  %807 = fdiv fast float %748, %730
  %808 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %807)  ; FMax(a,b)
  %809 = select i1 %806, float %799, float %808
  %810 = call float @dx.op.binary.f32(i32 36, float %799, float %809)  ; FMin(a,b)
  %811 = fcmp fast ogt float %730, 0.000000e+00
  %812 = fcmp fast olt float %748, 0.000000e+00
  br i1 %811, label %813, label %850

; <label>:813                                     ; preds = %798
  %814 = icmp eq i32 %749, 0
  br i1 %812, label %815, label %839

; <label>:815                                     ; preds = %813
  %816 = select i1 %814, float %799, float 0.000000e+00
  %817 = fsub fast float -0.000000e+00, %816
  %818 = call float @dx.op.unary.f32(i32 6, float %817)  ; FAbs(value)
  %819 = fmul fast float %816, %730
  %820 = fadd fast float %819, %743
  %821 = fmul fast float %818, %820
  %822 = fsub fast float %805, %821
  %823 = fsub fast float %799, %818
  %824 = select i1 %814, float %823, float 0.000000e+00
  %825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %826 = extractvalue %dx.types.CBufRet.f32 %825, 3
  %827 = call float @dx.op.binary.f32(i32 36, float %822, float %826)  ; FMin(a,b)
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 0
  %830 = extractvalue %dx.types.CBufRet.f32 %828, 1
  %831 = fadd fast float %830, %829
  %832 = call float @dx.op.unary.f32(i32 7, float %831)  ; Saturate(value)
  %833 = extractvalue %dx.types.CBufRet.f32 %828, 2
  %834 = extractvalue %dx.types.CBufRet.f32 %828, 3
  %835 = fadd fast float %834, %833
  %836 = call float @dx.op.unary.f32(i32 7, float %835)  ; Saturate(value)
  %837 = fmul fast float %832, %827
  %838 = fmul fast float %837, %836
  br label %1040

; <label>:839                                     ; preds = %813
  br i1 %814, label %840, label %861

; <label>:840                                     ; preds = %839
  %841 = call float @dx.op.binary.f32(i32 36, float %810, float %800)  ; FMin(a,b)
  %842 = fsub fast float %810, %841
  %843 = fsub fast float %842, %799
  %844 = call float @dx.op.unary.f32(i32 6, float %843)  ; FAbs(value)
  %845 = fadd fast float %842, %799
  %846 = fmul fast float %845, %730
  %847 = fadd fast float %846, %743
  %848 = fmul fast float %847, %844
  %849 = fsub fast float %805, %848
  br label %861

; <label>:850                                     ; preds = %798
  br i1 %812, label %851, label %861

; <label>:851                                     ; preds = %850
  %852 = call float @dx.op.binary.f32(i32 35, float %800, float %810)  ; FMax(a,b)
  %853 = icmp eq i32 %749, 0
  %854 = select i1 %853, float %810, float 0.000000e+00
  %855 = fsub fast float -0.000000e+00, %854
  %856 = call float @dx.op.unary.f32(i32 6, float %855)  ; FAbs(value)
  %857 = fmul fast float %854, %730
  %858 = fadd fast float %857, %743
  %859 = fmul fast float %856, %858
  %860 = fsub fast float %805, %859
  br label %861

; <label>:861                                     ; preds = %851, %850, %840, %839
  %862 = phi float [ %800, %839 ], [ %800, %840 ], [ %852, %851 ], [ %800, %850 ]
  %863 = phi float [ 0.000000e+00, %839 ], [ %844, %840 ], [ %856, %851 ], [ 0.000000e+00, %850 ]
  %864 = phi float [ %805, %839 ], [ %849, %840 ], [ %860, %851 ], [ %805, %850 ]
  %865 = phi float [ %810, %839 ], [ %810, %840 ], [ %799, %851 ], [ %799, %850 ]
  %866 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 0
  store float -1.000000e+00, float* %866, align 4, !tbaa !56, !noalias !60
  %867 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 1
  store float -1.000000e+00, float* %867, align 4, !tbaa !56, !noalias !60
  %868 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 2
  store float -1.000000e+00, float* %868, align 4, !tbaa !56, !noalias !60
  %869 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 0
  store float -1.000000e+00, float* %869, align 4, !tbaa !56, !noalias !60
  %870 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 1
  store float -1.000000e+00, float* %870, align 4, !tbaa !56, !noalias !60
  %871 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 2
  store float -1.000000e+00, float* %871, align 4, !tbaa !56, !noalias !60
  %872 = icmp sgt i32 %751, 0
  br i1 %872, label %873, label %934

; <label>:873                                     ; preds = %861
  br label %874

; <label>:874                                     ; preds = %923, %873
  %875 = phi i32 [ %924, %923 ], [ 0, %873 ]
  %876 = phi i32 [ %925, %923 ], [ 0, %873 ]
  %877 = add nuw i32 %876, 171
  %878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %877)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.f32 %878, 0
  %880 = extractvalue %dx.types.CBufRet.f32 %878, 1
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 0
  %883 = extractvalue %dx.types.CBufRet.f32 %881, 1
  %884 = fsub fast float %879, %882
  %885 = fsub fast float %880, %883
  %886 = extractvalue %dx.types.CBufRet.f32 %878, 2
  %887 = fsub fast float -0.000000e+00, %884
  %888 = fsub fast float -0.000000e+00, %885
  %889 = call float @dx.op.dot2.f32(i32 54, float %728, float %729, float %887, float %888)  ; Dot2(ax,ay,bx,by)
  %890 = fmul fast float %889, 2.000000e+00
  %891 = call float @dx.op.dot2.f32(i32 54, float %887, float %888, float %887, float %888)  ; Dot2(ax,ay,bx,by)
  %892 = fmul fast float %886, %886
  %893 = fsub fast float %891, %892
  %894 = fmul fast float %890, %890
  %895 = fmul fast float %771, %893
  %896 = fsub fast float %894, %895
  %897 = fcmp fast ogt float %896, 0.000000e+00
  br i1 %897, label %898, label %913

; <label>:898                                     ; preds = %874
  %899 = fcmp fast ogt float %890, 0.000000e+00
  %900 = call float @dx.op.unary.f32(i32 24, float %896)  ; Sqrt(value)
  %901 = fsub fast float -0.000000e+00, %900
  %902 = select i1 %899, float %900, float %901
  %903 = fadd fast float %902, %890
  %904 = fmul float %903, -5.000000e-01
  %905 = fdiv fast float %904, %764
  %906 = call float @dx.op.binary.f32(i32 35, float %905, float 0.000000e+00)  ; FMax(a,b)
  %907 = call float @dx.op.binary.f32(i32 36, float %799, float %906)  ; FMin(a,b)
  %908 = fdiv fast float %893, %904
  %909 = call float @dx.op.binary.f32(i32 35, float %908, float 0.000000e+00)  ; FMax(a,b)
  %910 = call float @dx.op.binary.f32(i32 36, float %799, float %909)  ; FMin(a,b)
  %911 = call float @dx.op.binary.f32(i32 36, float %907, float %910)  ; FMin(a,b)
  %912 = call float @dx.op.binary.f32(i32 35, float %907, float %910)  ; FMax(a,b)
  br label %913

; <label>:913                                     ; preds = %898, %874
  %914 = phi float [ %912, %898 ], [ -1.000000e+00, %874 ]
  %915 = phi float [ %911, %898 ], [ -1.000000e+00, %874 ]
  %916 = phi i1 [ true, %898 ], [ false, %874 ]
  br i1 %916, label %917, label %923

; <label>:917                                     ; preds = %913
  %918 = call float @dx.op.binary.f32(i32 35, float %862, float %915)  ; FMax(a,b)
  %919 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 %876
  store float %918, float* %919, align 4, !tbaa !56, !noalias !60
  %920 = call float @dx.op.binary.f32(i32 35, float %862, float %914)  ; FMax(a,b)
  %921 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 %876
  store float %920, float* %921, align 4, !tbaa !56, !noalias !60
  %922 = add nsw i32 %875, 1
  br label %923

; <label>:923                                     ; preds = %917, %913
  %924 = phi i32 [ %922, %917 ], [ %875, %913 ]
  %925 = add nuw nsw i32 %876, 1
  %926 = icmp eq i32 %925, %751
  br i1 %926, label %927, label %874

; <label>:927                                     ; preds = %923
  %928 = load float, float* %868, align 4, !tbaa !56, !alias.scope !76, !noalias !79
  %929 = load float, float* %867, align 4, !tbaa !56, !alias.scope !82, !noalias !83
  %930 = load float, float* %866, align 4, !tbaa !56, !alias.scope !84, !noalias !85
  %931 = load float, float* %871, align 4, !tbaa !56, !alias.scope !86, !noalias !89
  %932 = load float, float* %870, align 4, !tbaa !56, !alias.scope !92, !noalias !93
  %933 = load float, float* %869, align 4, !tbaa !56, !alias.scope !94, !noalias !95
  br label %934

; <label>:934                                     ; preds = %927, %861
  %935 = phi float [ -1.000000e+00, %861 ], [ %933, %927 ]
  %936 = phi float [ -1.000000e+00, %861 ], [ %932, %927 ]
  %937 = phi float [ -1.000000e+00, %861 ], [ %931, %927 ]
  %938 = phi float [ -1.000000e+00, %861 ], [ %930, %927 ]
  %939 = phi float [ -1.000000e+00, %861 ], [ %929, %927 ]
  %940 = phi float [ -1.000000e+00, %861 ], [ %928, %927 ]
  %941 = phi i32 [ 0, %861 ], [ %924, %927 ]
  %942 = call float @dx.op.binary.f32(i32 36, float %939, float %940)  ; FMin(a,b)
  %943 = call float @dx.op.binary.f32(i32 36, float %938, float %942)  ; FMin(a,b)
  %944 = call float @dx.op.binary.f32(i32 35, float %938, float %939)  ; FMax(a,b)
  %945 = call float @dx.op.binary.f32(i32 36, float %944, float %940)  ; FMin(a,b)
  %946 = call float @dx.op.binary.f32(i32 36, float %938, float %939)  ; FMin(a,b)
  %947 = call float @dx.op.binary.f32(i32 35, float %946, float %945)  ; FMax(a,b)
  %948 = call float @dx.op.binary.f32(i32 35, float %939, float %940)  ; FMax(a,b)
  %949 = call float @dx.op.binary.f32(i32 35, float %938, float %948)  ; FMax(a,b)
  store float %943, float* %866, align 4, !tbaa !56, !alias.scope !84, !noalias !85
  store float %947, float* %867, align 4, !tbaa !56, !alias.scope !82, !noalias !83
  store float %949, float* %868, align 4, !tbaa !56, !alias.scope !76, !noalias !79
  %950 = call float @dx.op.binary.f32(i32 36, float %936, float %937)  ; FMin(a,b)
  %951 = call float @dx.op.binary.f32(i32 36, float %935, float %950)  ; FMin(a,b)
  %952 = call float @dx.op.binary.f32(i32 35, float %935, float %936)  ; FMax(a,b)
  %953 = call float @dx.op.binary.f32(i32 36, float %952, float %937)  ; FMin(a,b)
  %954 = call float @dx.op.binary.f32(i32 36, float %935, float %936)  ; FMin(a,b)
  %955 = call float @dx.op.binary.f32(i32 35, float %954, float %953)  ; FMax(a,b)
  %956 = call float @dx.op.binary.f32(i32 35, float %936, float %937)  ; FMax(a,b)
  %957 = call float @dx.op.binary.f32(i32 35, float %935, float %956)  ; FMax(a,b)
  store float %951, float* %869, align 4, !tbaa !56, !alias.scope !94, !noalias !95
  store float %955, float* %870, align 4, !tbaa !56, !alias.scope !92, !noalias !93
  store float %957, float* %871, align 4, !tbaa !56, !alias.scope !86, !noalias !89
  %958 = sub nsw i32 3, %941
  %959 = icmp sgt i32 %958, 2
  br i1 %959, label %960, label %978

; <label>:960                                     ; preds = %934
  %961 = icmp eq i32 %749, 0
  %962 = fsub fast float %799, %863
  %963 = select i1 %961, float %962, float %863
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 3
  %966 = call float @dx.op.binary.f32(i32 36, float %864, float %965)  ; FMin(a,b)
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 0
  %969 = extractvalue %dx.types.CBufRet.f32 %967, 1
  %970 = fadd fast float %969, %968
  %971 = call float @dx.op.unary.f32(i32 7, float %970)  ; Saturate(value)
  %972 = extractvalue %dx.types.CBufRet.f32 %967, 2
  %973 = extractvalue %dx.types.CBufRet.f32 %967, 3
  %974 = fadd fast float %973, %972
  %975 = call float @dx.op.unary.f32(i32 7, float %974)  ; Saturate(value)
  %976 = fmul fast float %971, %966
  %977 = fmul fast float %976, %975
  br label %1040

; <label>:978                                     ; preds = %934
  %979 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 %958
  %980 = load float, float* %979, align 4, !tbaa !56, !noalias !60
  %981 = fcmp fast olt float %980, %865
  %982 = icmp sgt i32 %941, 0
  %983 = and i1 %982, %981
  br i1 %983, label %984, label %1021

; <label>:984                                     ; preds = %978
  br label %985

; <label>:985                                     ; preds = %1014, %984
  %986 = phi float [ %1015, %1014 ], [ %863, %984 ]
  %987 = phi float [ %1016, %1014 ], [ %864, %984 ]
  %988 = phi float [ %996, %1014 ], [ %980, %984 ]
  %989 = phi i32 [ %993, %1014 ], [ %958, %984 ]
  %990 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 %989
  %991 = load float, float* %990, align 4, !tbaa !56, !noalias !60
  %992 = icmp slt i32 %989, 2
  %993 = add nsw i32 %989, 1
  %994 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 %993
  %995 = load float, float* %994, align 4, !tbaa !56, !noalias !60
  %996 = select i1 %992, float %995, float %799
  %997 = call float @dx.op.binary.f32(i32 36, float %996, float %991)  ; FMin(a,b)
  %998 = call float @dx.op.binary.f32(i32 36, float %865, float %997)  ; FMin(a,b)
  %999 = icmp eq i32 %749, 0
  %1000 = fadd fast float %998, %988
  %1001 = fmul fast float %1000, %730
  %1002 = fadd fast float %1001, %743
  br i1 %999, label %1008, label %1003

; <label>:1003                                    ; preds = %985
  %1004 = fsub fast float %998, %988
  %1005 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1004)  ; FMax(a,b)
  %1006 = fmul fast float %1005, %1002
  %1007 = fadd fast float %1006, %987
  br label %1014

; <label>:1008                                    ; preds = %985
  %1009 = fsub fast float %988, %998
  %1010 = call float @dx.op.unary.f32(i32 6, float %1009)  ; FAbs(value)
  %1011 = fadd fast float %1010, %986
  %1012 = fmul fast float %1010, %1002
  %1013 = fsub fast float %987, %1012
  br label %1014

; <label>:1014                                    ; preds = %1008, %1003
  %1015 = phi float [ %1005, %1003 ], [ %1011, %1008 ]
  %1016 = phi float [ %1007, %1003 ], [ %1013, %1008 ]
  %1017 = fcmp fast olt float %996, %865
  %1018 = icmp slt i32 %993, 3
  %1019 = and i1 %1018, %1017
  br i1 %1019, label %985, label %1020

; <label>:1020                                    ; preds = %1014
  br label %1021

; <label>:1021                                    ; preds = %1020, %978
  %1022 = phi float [ %863, %978 ], [ %1015, %1020 ]
  %1023 = phi float [ %864, %978 ], [ %1016, %1020 ]
  %1024 = fsub fast float %799, %1022
  %1025 = select i1 %801, float %1022, float %1024
  %1026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1027 = extractvalue %dx.types.CBufRet.f32 %1026, 3
  %1028 = call float @dx.op.binary.f32(i32 36, float %1023, float %1027)  ; FMin(a,b)
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.CBufRet.f32 %1029, 1
  %1032 = fadd fast float %1031, %1030
  %1033 = call float @dx.op.unary.f32(i32 7, float %1032)  ; Saturate(value)
  %1034 = extractvalue %dx.types.CBufRet.f32 %1029, 2
  %1035 = extractvalue %dx.types.CBufRet.f32 %1029, 3
  %1036 = fadd fast float %1035, %1034
  %1037 = call float @dx.op.unary.f32(i32 7, float %1036)  ; Saturate(value)
  %1038 = fmul fast float %1033, %1028
  %1039 = fmul fast float %1038, %1037
  br label %1040

; <label>:1040                                    ; preds = %1021, %960, %815, %797, %795
  %1041 = phi float [ %824, %815 ], [ %963, %960 ], [ %1025, %1021 ], [ 0.000000e+00, %795 ], [ 0.000000e+00, %797 ]
  %1042 = phi float [ %838, %815 ], [ %977, %960 ], [ %1039, %1021 ], [ 0.000000e+00, %795 ], [ 0.000000e+00, %797 ]
  %1043 = fmul fast float %738, %1042
  %1044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1045 = extractvalue %dx.types.CBufRet.f32 %1044, 2
  %1046 = fsub fast float %745, %1045
  %1047 = fcmp fast olt float %1043, -2.000000e+01
  %1048 = call float @dx.op.unary.f32(i32 21, float %1043)  ; Exp(value)
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 2
  %1051 = extractvalue %dx.types.CBufRet.f32 %1049, 3
  %1052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.f32 %1052, 2
  %1054 = fmul fast float %1051, %1046
  %1055 = call float @dx.op.unary.f32(i32 7, float %1054)  ; Saturate(value)
  %1056 = fsub fast float 1.000000e+00, %1055
  %1057 = fmul fast float %730, 5.000000e-01
  %1058 = fadd fast float %1057, 5.000000e-01
  %1059 = call float @dx.op.unary.f32(i32 7, float %1058)  ; Saturate(value)
  %1060 = fsub fast float 1.000000e+00, %1059
  %1061 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1056)  ; FMax(a,b)
  %1062 = fdiv fast float %1060, %1061
  %1063 = fsub fast float %1046, %694
  %1064 = call float @dx.op.unary.f32(i32 6, float %1063)  ; FAbs(value)
  %1065 = fmul fast float %1064, %1050
  %1066 = call float @dx.op.unary.f32(i32 7, float %1062)  ; Saturate(value)
  %1067 = fsub fast float 1.000000e+00, %1065
  %1068 = fmul fast float %1067, %1066
  %1069 = fadd fast float %1068, %1065
  %1070 = fmul fast float %1053, %1046
  %1071 = call float @dx.op.unary.f32(i32 7, float %1070)  ; Saturate(value)
  %1072 = fsub fast float 1.000000e+00, %1069
  %1073 = fmul fast float %1072, %1071
  %1074 = fadd fast float %1073, %1069
  %1075 = call float @dx.op.unary.f32(i32 7, float %1074)  ; Saturate(value)
  %1076 = fadd fast float %1048, -1.000000e+00
  %1077 = select i1 %1047, float -1.000000e+00, float %1076
  %1078 = fmul fast float %1075, %1077
  %1079 = fadd fast float %1078, 1.000000e+00
  br label %1080

; <label>:1080                                    ; preds = %1040, %702
  %1081 = phi float [ %1041, %1040 ], [ 0.000000e+00, %702 ]
  %1082 = phi float [ %1079, %1040 ], [ 1.000000e+00, %702 ]
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 1
  %1085 = fsub fast float 1.000000e+00, %1082
  %1086 = fmul fast float %1085, %731
  %1087 = fmul fast float %1086, %1084
  %1088 = fsub fast float %731, %1087
  br i1 %722, label %1089, label %1105, !dx.controlflow.hints !96

; <label>:1089                                    ; preds = %1080
  %1090 = fmul fast float %732, %719
  %1091 = fadd fast float %1090, %720
  %1092 = call float @dx.op.unary.f32(i32 7, float %1091)  ; Saturate(value)
  %1093 = fmul fast float %709, %1088
  %1094 = fsub fast float -0.000000e+00, %1093
  %1095 = fmul fast float %710, %1088
  %1096 = fsub fast float -0.000000e+00, %1095
  %1097 = call float @dx.op.unary.f32(i32 21, float %1094)  ; Exp(value)
  %1098 = call float @dx.op.unary.f32(i32 21, float %1096)  ; Exp(value)
  %1099 = call float @dx.op.binary.f32(i32 35, float %724, float %1097)  ; FMax(a,b)
  %1100 = call float @dx.op.binary.f32(i32 35, float %724, float %1098)  ; FMax(a,b)
  %1101 = fsub fast float %1100, %1099
  %1102 = fmul fast float %1101, %1092
  %1103 = fadd fast float %1102, %1099
  %1104 = call float @dx.op.unary.f32(i32 7, float %1103)  ; Saturate(value)
  br label %1138

; <label>:1105                                    ; preds = %1080
  %1106 = fmul fast float %1088, %718
  %1107 = call float @dx.op.unary.f32(i32 7, float %1106)  ; Saturate(value)
  %1108 = fsub fast float 2.000000e+00, %1107
  %1109 = fmul fast float %1107, 9.921875e-01
  %1110 = fmul fast float %1109, %1108
  %1111 = fadd fast float %1110, 3.906250e-03
  %1112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %1111, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1113 = extractvalue %dx.types.ResRet.f32 %1112, 0
  %1114 = fsub fast float %1107, %1113
  %1115 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1114)  ; FMax(a,b)
  %1116 = fmul fast float %712, %694
  %1117 = call float @dx.op.unary.f32(i32 6, float %1116)  ; FAbs(value)
  %1118 = fcmp fast ogt float %1117, 0x3EB0C6F7A0000000
  br i1 %1118, label %1119, label %1125, !dx.controlflow.hints !97

; <label>:1119                                    ; preds = %1105
  %1120 = fmul fast float %1116, 0xBFF7154760000000
  %1121 = call float @dx.op.unary.f32(i32 21, float %1120)  ; Exp(value)
  %1122 = fsub fast float 1.000000e+00, %1121
  %1123 = fdiv fast float %1122, %1116
  %1124 = fmul fast float %1123, %714
  br label %1125

; <label>:1125                                    ; preds = %1119, %1105
  %1126 = phi float [ %1124, %1119 ], [ %714, %1105 ]
  %1127 = fadd fast float %1126, %716
  %1128 = fmul fast float %1127, %1115
  %1129 = fmul fast float %709, %1128
  %1130 = fsub fast float -0.000000e+00, %1129
  %1131 = fmul fast float %710, %1128
  %1132 = fsub fast float -0.000000e+00, %1131
  %1133 = fmul fast float %711, %1128
  %1134 = fsub fast float -0.000000e+00, %1133
  %1135 = call float @dx.op.unary.f32(i32 21, float %1130)  ; Exp(value)
  %1136 = call float @dx.op.unary.f32(i32 21, float %1132)  ; Exp(value)
  %1137 = call float @dx.op.unary.f32(i32 21, float %1134)  ; Exp(value)
  br label %1138

; <label>:1138                                    ; preds = %1125, %1089
  %1139 = phi float [ %1104, %1089 ], [ %1135, %1125 ]
  %1140 = phi float [ %1104, %1089 ], [ %1136, %1125 ]
  %1141 = phi float [ %1104, %1089 ], [ %1137, %1125 ]
  br i1 %740, label %1142, label %1238, !dx.controlflow.hints !98

; <label>:1142                                    ; preds = %1138
  %1143 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1139)  ; FMax(a,b)
  %1144 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1140)  ; FMax(a,b)
  %1145 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1141)  ; FMax(a,b)
  %1146 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1082)  ; FMax(a,b)
  %1147 = call float @dx.op.binary.f32(i32 35, float %1081, float %1088)  ; FMax(a,b)
  %1148 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1147)  ; FMax(a,b)
  %1149 = fdiv fast float %1081, %1148
  %1150 = call float @dx.op.unary.f32(i32 7, float %1149)  ; Saturate(value)
  %1151 = fdiv fast float %1088, %1148
  %1152 = call float @dx.op.unary.f32(i32 7, float %1151)  ; Saturate(value)
  %1153 = fcmp fast une float %1146, 1.000000e+00
  br i1 %1153, label %1154, label %1157, !dx.controlflow.hints !99

; <label>:1154                                    ; preds = %1142
  %1155 = call float @dx.op.unary.f32(i32 23, float %1146)  ; Log(value)
  %1156 = fmul fast float %1155, 0x3FE62E4300000000
  br label %1157

; <label>:1157                                    ; preds = %1154, %1142
  %1158 = phi float [ %1156, %1154 ], [ 0.000000e+00, %1142 ]
  %1159 = fcmp fast une float %1143, 1.000000e+00
  br i1 %1159, label %1160, label %1163, !dx.controlflow.hints !100

; <label>:1160                                    ; preds = %1157
  %1161 = call float @dx.op.unary.f32(i32 23, float %1143)  ; Log(value)
  %1162 = fmul fast float %1161, 0x3FE62E4300000000
  br label %1163

; <label>:1163                                    ; preds = %1160, %1157
  %1164 = phi float [ %1162, %1160 ], [ 0.000000e+00, %1157 ]
  %1165 = fcmp fast une float %1144, 1.000000e+00
  br i1 %1165, label %1166, label %1169, !dx.controlflow.hints !100

; <label>:1166                                    ; preds = %1163
  %1167 = call float @dx.op.unary.f32(i32 23, float %1144)  ; Log(value)
  %1168 = fmul fast float %1167, 0x3FE62E4300000000
  br label %1169

; <label>:1169                                    ; preds = %1166, %1163
  %1170 = phi float [ %1168, %1166 ], [ 0.000000e+00, %1163 ]
  %1171 = fcmp fast une float %1145, 1.000000e+00
  br i1 %1171, label %1172, label %1175, !dx.controlflow.hints !100

; <label>:1172                                    ; preds = %1169
  %1173 = call float @dx.op.unary.f32(i32 23, float %1145)  ; Log(value)
  %1174 = fmul fast float %1173, 0x3FE62E4300000000
  br label %1175

; <label>:1175                                    ; preds = %1172, %1169
  %1176 = phi float [ %1174, %1172 ], [ 0.000000e+00, %1169 ]
  %1177 = fmul fast float %1158, %1152
  %1178 = fmul fast float %1164, %1150
  %1179 = fmul fast float %1170, %1150
  %1180 = fmul fast float %1176, %1150
  %1181 = fadd fast float %1178, %1177
  %1182 = fadd fast float %1179, %1177
  %1183 = fadd fast float %1180, %1177
  %1184 = fcmp fast une float %1181, 0.000000e+00
  br i1 %1184, label %1185, label %1188, !dx.controlflow.hints !101

; <label>:1185                                    ; preds = %1175
  %1186 = fmul fast float %1181, 0x3FF7154760000000
  %1187 = call float @dx.op.unary.f32(i32 21, float %1186)  ; Exp(value)
  br label %1188

; <label>:1188                                    ; preds = %1185, %1175
  %1189 = phi float [ %1187, %1185 ], [ 1.000000e+00, %1175 ]
  %1190 = fcmp fast une float %1182, 0.000000e+00
  br i1 %1190, label %1191, label %1194, !dx.controlflow.hints !101

; <label>:1191                                    ; preds = %1188
  %1192 = fmul fast float %1182, 0x3FF7154760000000
  %1193 = call float @dx.op.unary.f32(i32 21, float %1192)  ; Exp(value)
  br label %1194

; <label>:1194                                    ; preds = %1191, %1188
  %1195 = phi float [ %1193, %1191 ], [ 1.000000e+00, %1188 ]
  %1196 = fcmp fast une float %1183, 0.000000e+00
  br i1 %1196, label %1197, label %1200, !dx.controlflow.hints !101

; <label>:1197                                    ; preds = %1194
  %1198 = fmul fast float %1183, 0x3FF7154760000000
  %1199 = call float @dx.op.unary.f32(i32 21, float %1198)  ; Exp(value)
  br label %1200

; <label>:1200                                    ; preds = %1197, %1194
  %1201 = phi float [ %1199, %1197 ], [ 1.000000e+00, %1194 ]
  %1202 = fcmp fast ogt float %1150, %1152
  br i1 %1202, label %1203, label %1210

; <label>:1203                                    ; preds = %1200
  %1204 = fsub fast float 1.000000e+00, %1152
  %1205 = fmul fast float %1158, %1204
  %1206 = fcmp fast une float %1205, 0.000000e+00
  br i1 %1206, label %1207, label %1231, !dx.controlflow.hints !102

; <label>:1207                                    ; preds = %1203
  %1208 = fmul fast float %1205, 0x3FF7154760000000
  %1209 = call float @dx.op.unary.f32(i32 21, float %1208)  ; Exp(value)
  br label %1231

; <label>:1210                                    ; preds = %1200
  %1211 = fsub fast float 1.000000e+00, %1150
  %1212 = fmul fast float %1164, %1211
  %1213 = fmul fast float %1170, %1211
  %1214 = fmul fast float %1176, %1211
  %1215 = fcmp fast une float %1212, 0.000000e+00
  br i1 %1215, label %1216, label %1219, !dx.controlflow.hints !101

; <label>:1216                                    ; preds = %1210
  %1217 = fmul fast float %1212, 0x3FF7154760000000
  %1218 = call float @dx.op.unary.f32(i32 21, float %1217)  ; Exp(value)
  br label %1219

; <label>:1219                                    ; preds = %1216, %1210
  %1220 = phi float [ %1218, %1216 ], [ 1.000000e+00, %1210 ]
  %1221 = fcmp fast une float %1213, 0.000000e+00
  br i1 %1221, label %1222, label %1225, !dx.controlflow.hints !101

; <label>:1222                                    ; preds = %1219
  %1223 = fmul fast float %1213, 0x3FF7154760000000
  %1224 = call float @dx.op.unary.f32(i32 21, float %1223)  ; Exp(value)
  br label %1225

; <label>:1225                                    ; preds = %1222, %1219
  %1226 = phi float [ %1224, %1222 ], [ 1.000000e+00, %1219 ]
  %1227 = fcmp fast une float %1214, 0.000000e+00
  br i1 %1227, label %1228, label %1231, !dx.controlflow.hints !101

; <label>:1228                                    ; preds = %1225
  %1229 = fmul fast float %1214, 0x3FF7154760000000
  %1230 = call float @dx.op.unary.f32(i32 21, float %1229)  ; Exp(value)
  br label %1231

; <label>:1231                                    ; preds = %1228, %1225, %1207, %1203
  %1232 = phi float [ %1230, %1228 ], [ %1209, %1207 ], [ 1.000000e+00, %1203 ], [ 1.000000e+00, %1225 ]
  %1233 = phi float [ %1226, %1228 ], [ %1209, %1207 ], [ 1.000000e+00, %1203 ], [ %1226, %1225 ]
  %1234 = phi float [ %1220, %1228 ], [ %1209, %1207 ], [ 1.000000e+00, %1203 ], [ %1220, %1225 ]
  %1235 = fmul fast float %1234, %1189
  %1236 = fmul fast float %1233, %1195
  %1237 = fmul fast float %1232, %1201
  br label %1238

; <label>:1238                                    ; preds = %1231, %1138
  %1239 = phi float [ %1237, %1231 ], [ %1141, %1138 ]
  %1240 = phi float [ %1236, %1231 ], [ %1140, %1138 ]
  %1241 = phi float [ %1235, %1231 ], [ %1139, %1138 ]
  %1242 = call float @dx.op.dot3.f32(i32 55, float %1241, float %1240, float %1239, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1243 = select i1 %121, float %1242, float %1241
  %1244 = select i1 %121, float %1242, float %1240
  %1245 = select i1 %121, float 1.000000e+00, float %1239
  %1246 = fmul fast float %1243, %696
  %1247 = fmul fast float %1244, %697
  %1248 = fmul fast float %1245, %698
  %1249 = fmul fast float %1243, %699
  %1250 = fmul fast float %1244, %700
  %1251 = fmul fast float %1245, %701
  %1252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1253 = extractvalue %dx.types.CBufRet.i32 %1252, 0
  %1254 = icmp eq i32 %1253, 0
  br i1 %1254, label %1582, label %1255, !dx.controlflow.hints !103

; <label>:1255                                    ; preds = %1238
  %1256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1257 = extractvalue %dx.types.CBufRet.f32 %1256, 2
  %1258 = extractvalue %dx.types.CBufRet.f32 %1256, 3
  %1259 = fmul fast float %1257, %39
  %1260 = fmul fast float %1258, %40
  %1261 = fmul fast float %1259, 2.000000e+00
  %1262 = fmul fast float %1260, 2.000000e+00
  %1263 = fsub fast float 1.000000e+00, %1261
  %1264 = fsub fast float 1.000000e+00, %1262
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 0
  %1267 = extractvalue %dx.types.CBufRet.f32 %1265, 1
  %1268 = extractvalue %dx.types.CBufRet.f32 %1265, 2
  %1269 = fmul fast float %1263, %1266
  %1270 = fmul fast float %1263, %1267
  %1271 = fmul fast float %1263, %1268
  %1272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1273 = extractvalue %dx.types.CBufRet.f32 %1272, 0
  %1274 = extractvalue %dx.types.CBufRet.f32 %1272, 1
  %1275 = extractvalue %dx.types.CBufRet.f32 %1272, 2
  %1276 = fmul fast float %1264, %1273
  %1277 = fmul fast float %1264, %1274
  %1278 = fmul fast float %1264, %1275
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 0
  %1281 = extractvalue %dx.types.CBufRet.f32 %1279, 1
  %1282 = extractvalue %dx.types.CBufRet.f32 %1279, 2
  %1283 = fadd fast float %1276, %1280
  %1284 = fadd fast float %1283, %1269
  %1285 = fadd fast float %1277, %1281
  %1286 = fadd fast float %1285, %1270
  %1287 = fadd fast float %1278, %1282
  %1288 = fadd fast float %1287, %1271
  %1289 = fmul fast float %1284, %695
  %1290 = fmul fast float %1286, %695
  %1291 = fmul fast float %1288, %695
  %1292 = fmul fast float %1289, %1289
  %1293 = fmul fast float %1290, %1290
  %1294 = fadd fast float %1292, %1293
  %1295 = fmul fast float %1291, %1291
  %1296 = fadd fast float %1294, %1295
  %1297 = call float @dx.op.unary.f32(i32 24, float %1296)  ; Sqrt(value)
  %1298 = extractvalue %dx.types.CBufRet.f32 %545, 0
  %1299 = fsub fast float %1297, %1298
  %1300 = extractvalue %dx.types.CBufRet.f32 %545, 2
  %1301 = fmul fast float %1299, %1300
  %1302 = call float @dx.op.unary.f32(i32 7, float %1301)  ; Saturate(value)
  %1303 = fadd fast float %1302, -5.000000e-01
  %1304 = fmul fast float %1303, 2.000000e+00
  %1305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1306 = extractvalue %dx.types.CBufRet.f32 %1305, 2
  %1307 = call float @dx.op.binary.f32(i32 36, float %1306, float %1304)  ; FMin(a,b)
  %1308 = fsub fast float -0.000000e+00, %1306
  %1309 = fcmp fast ogt float %1307, %1308
  br i1 %1309, label %1310, label %1582, !dx.controlflow.hints !104

; <label>:1310                                    ; preds = %1255
  %1311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1312 = extractvalue %dx.types.CBufRet.f32 %1311, 3
  %1313 = fcmp fast ogt float %1312, 0.000000e+00
  br i1 %1313, label %1314, label %1389, !dx.controlflow.hints !105

; <label>:1314                                    ; preds = %1310
  %1315 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %1316 = extractvalue %dx.types.Dimensions %1315, 0
  %1317 = sitofp i32 %1316 to float
  %1318 = extractvalue %dx.types.Dimensions %1315, 1
  %1319 = sitofp i32 %1318 to float
  %1320 = fmul fast float %1259, %1317
  %1321 = fmul fast float %1260, %1319
  %1322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1323 = extractvalue %dx.types.CBufRet.f32 %1322, 1
  %1324 = fsub fast float -0.000000e+00, %1323
  %1325 = fptoui float %1324 to i32
  %1326 = fptoui float %1320 to i32
  %1327 = fptoui float %1321 to i32
  %1328 = and i32 %1325, 31
  %1329 = lshr i32 %1326, %1328
  %1330 = lshr i32 %1327, %1328
  %1331 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 %1325, i32 %1329, i32 %1330, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1332 = extractvalue %dx.types.ResRet.f32 %1331, 0
  %1333 = fcmp fast olt float %1332, -1.000000e+00
  %1334 = fcmp fast ogt float %1332, -1.000000e+00
  %1335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1336 = extractvalue %dx.types.CBufRet.f32 %1335, 1
  %1337 = select i1 %1334, float %1336, float 1.000000e+00
  %1338 = fadd fast float %1332, 1.000000e+00
  %1339 = fmul fast float %1337, %1338
  %1340 = call float @dx.op.unary.f32(i32 6, float %1339)  ; FAbs(value)
  %1341 = extractvalue %dx.types.CBufRet.f32 %1335, 3
  %1342 = fcmp fast oge float %1340, %1341
  %1343 = select i1 %1342, float 0x4197782600000000, float %1340
  %1344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1345 = extractvalue %dx.types.CBufRet.f32 %1344, 0
  %1346 = extractvalue %dx.types.CBufRet.f32 %1344, 1
  %1347 = extractvalue %dx.types.CBufRet.f32 %1344, 2
  %1348 = select i1 %1333, float %1345, float %1266
  %1349 = select i1 %1333, float %1346, float %1267
  %1350 = select i1 %1333, float %1347, float %1268
  %1351 = fmul fast float %1348, %1263
  %1352 = fmul fast float %1349, %1263
  %1353 = fmul fast float %1350, %1263
  %1354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1355 = extractvalue %dx.types.CBufRet.f32 %1354, 0
  %1356 = extractvalue %dx.types.CBufRet.f32 %1354, 1
  %1357 = extractvalue %dx.types.CBufRet.f32 %1354, 2
  %1358 = select i1 %1333, float %1355, float %1273
  %1359 = select i1 %1333, float %1356, float %1274
  %1360 = select i1 %1333, float %1357, float %1275
  %1361 = fmul fast float %1358, %1264
  %1362 = fmul fast float %1359, %1264
  %1363 = fmul fast float %1360, %1264
  %1364 = fadd fast float %1361, %1351
  %1365 = fadd fast float %1362, %1352
  %1366 = fadd fast float %1363, %1353
  %1367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1368 = extractvalue %dx.types.CBufRet.f32 %1367, 0
  %1369 = extractvalue %dx.types.CBufRet.f32 %1367, 1
  %1370 = extractvalue %dx.types.CBufRet.f32 %1367, 2
  %1371 = select i1 %1333, float %1368, float %1280
  %1372 = select i1 %1333, float %1369, float %1281
  %1373 = select i1 %1333, float %1370, float %1282
  %1374 = fadd fast float %1364, %1371
  %1375 = fadd fast float %1365, %1372
  %1376 = fadd fast float %1366, %1373
  %1377 = fmul fast float %1374, %1343
  %1378 = fmul fast float %1375, %1343
  %1379 = fmul fast float %1376, %1343
  %1380 = fmul fast float %1377, %1377
  %1381 = fmul fast float %1378, %1378
  %1382 = fadd fast float %1380, %1381
  %1383 = fmul fast float %1379, %1379
  %1384 = fadd fast float %1382, %1383
  %1385 = call float @dx.op.unary.f32(i32 24, float %1384)  ; Sqrt(value)
  %1386 = fsub fast float %1385, %1298
  %1387 = fmul fast float %1386, %1300
  %1388 = call float @dx.op.unary.f32(i32 7, float %1387)  ; Saturate(value)
  br label %1389

; <label>:1389                                    ; preds = %1314, %1310
  %1390 = phi float [ %1388, %1314 ], [ 1.000000e+00, %1310 ]
  %1391 = fmul fast float %1307, 5.000000e-01
  %1392 = fadd fast float %1391, 5.000000e-01
  %1393 = call float @dx.op.unary.f32(i32 22, float %1392)  ; Frc(value)
  %1394 = call float @dx.op.unary.f32(i32 27, float %1393)  ; Round_ni(value)
  %1395 = call float @dx.op.unary.f32(i32 22, float %1393)  ; Frc(value)
  %1396 = fmul fast float %1395, 2.000000e+00
  %1397 = fadd fast float %1396, -1.000000e+00
  %1398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %16, float %1259, float %1260, float %1394, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.ResRet.f32 %1398, 1
  %1401 = extractvalue %dx.types.ResRet.f32 %1398, 2
  %1402 = extractvalue %dx.types.ResRet.f32 %1398, 3
  %1403 = fadd fast float %1399, -5.000000e-01
  %1404 = fadd fast float %1401, -5.000000e-01
  %1405 = fmul fast float %1403, 0xBFD5555560000000
  %1406 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1404, float %1405)  ; FMad(a,b,c)
  %1407 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1400, float 0.000000e+00)  ; FMad(a,b,c)
  %1408 = fadd fast float %1407, %1402
  %1409 = fmul fast float %1403, -7.500000e-01
  %1410 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1404, float %1409)  ; FMad(a,b,c)
  %1411 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1400, float 0.000000e+00)  ; FMad(a,b,c)
  %1412 = fadd fast float %1411, %1402
  %1413 = call float @dx.op.binary.f32(i32 35, float %1406, float -1.000000e+00)  ; FMax(a,b)
  %1414 = call float @dx.op.binary.f32(i32 35, float %1408, float -1.000000e+00)  ; FMax(a,b)
  %1415 = call float @dx.op.binary.f32(i32 35, float %1410, float -1.000000e+00)  ; FMax(a,b)
  %1416 = call float @dx.op.binary.f32(i32 35, float %1412, float -1.000000e+00)  ; FMax(a,b)
  %1417 = call float @dx.op.binary.f32(i32 36, float %1413, float 1.000000e+00)  ; FMin(a,b)
  %1418 = call float @dx.op.binary.f32(i32 36, float %1414, float 1.000000e+00)  ; FMin(a,b)
  %1419 = call float @dx.op.binary.f32(i32 36, float %1415, float 1.000000e+00)  ; FMin(a,b)
  %1420 = call float @dx.op.binary.f32(i32 36, float %1416, float 1.000000e+00)  ; FMin(a,b)
  %1421 = fcmp fast olt float %1417, 0x3FEFFF8020000000
  br i1 %1421, label %1422, label %1537, !dx.controlflow.hints !106

; <label>:1422                                    ; preds = %1389
  %1423 = extractvalue %dx.types.CBufRet.f32 %1305, 3
  %1424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1425 = extractvalue %dx.types.CBufRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.CBufRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.CBufRet.f32 %1424, 2
  %1428 = extractvalue %dx.types.CBufRet.f32 %1424, 3
  %1429 = fsub fast float %1425, %1417
  %1430 = fsub fast float %1426, %1418
  %1431 = fsub fast float %1427, %1419
  %1432 = fsub fast float %1428, %1420
  %1433 = fmul fast float %1429, %1423
  %1434 = fmul fast float %1430, %1423
  %1435 = fmul fast float %1431, %1423
  %1436 = fmul fast float %1432, %1423
  %1437 = fadd fast float %1433, %1417
  %1438 = fadd fast float %1434, %1418
  %1439 = fsub fast float -0.000000e+00, %1438
  %1440 = fadd fast float %1435, %1419
  %1441 = fadd fast float %1436, %1420
  %1442 = fmul fast float %1437, %1437
  %1443 = fsub fast float %1438, %1442
  %1444 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1443)  ; FMax(a,b)
  %1445 = fdiv fast float 1.000000e+00, %1444
  %1446 = fmul fast float %1438, %1437
  %1447 = fsub fast float %1440, %1446
  %1448 = fsub fast float %1397, %1437
  %1449 = fmul fast float %1397, %1397
  %1450 = fsub fast float %1449, %1438
  %1451 = fmul fast float %1448, %1445
  %1452 = fmul fast float %1451, %1447
  %1453 = fsub fast float %1450, %1452
  %1454 = fmul fast float %1438, %1438
  %1455 = fsub fast float %1441, %1454
  %1456 = fmul fast float %1447, %1447
  %1457 = fmul fast float %1456, %1445
  %1458 = fsub fast float %1455, %1457
  %1459 = fdiv fast float %1453, %1458
  %1460 = fmul fast float %1447, %1459
  %1461 = fsub fast float %1448, %1460
  %1462 = fmul fast float %1461, %1445
  %1463 = fmul fast float %1462, %1437
  %1464 = fsub fast float 1.000000e+00, %1463
  %1465 = fmul fast float %1438, %1459
  %1466 = fsub fast float %1464, %1465
  %1467 = fmul fast float %1462, %1462
  %1468 = fmul fast float %1459, 4.000000e+00
  %1469 = fmul fast float %1468, %1466
  %1470 = fsub fast float %1467, %1469
  %1471 = call float @dx.op.unary.f32(i32 24, float %1470)  ; Sqrt(value)
  %1472 = fcmp fast oge float %1462, 0.000000e+00
  %1473 = fsub fast float -0.000000e+00, %1471
  %1474 = select i1 %1472, float %1473, float %1471
  %1475 = fsub fast float %1474, %1462
  %1476 = fdiv fast float %1475, %1459
  %1477 = fdiv fast float %1466, %1475
  %1478 = fmul fast float %1476, 5.000000e-01
  %1479 = fmul fast float %1477, 2.000000e+00
  %1480 = select i1 %1472, float %1478, float %1479
  %1481 = select i1 %1472, float %1479, float %1478
  %1482 = call float @dx.op.binary.f32(i32 35, float %1480, float %1481)  ; FMax(a,b)
  %1483 = call float @dx.op.binary.f32(i32 36, float %1480, float %1481)  ; FMin(a,b)
  %1484 = fcmp fast ogt float %1397, %1483
  br i1 %1484, label %1485, label %1495

; <label>:1485                                    ; preds = %1422
  %1486 = fsub fast float %1397, %1483
  %1487 = fsub fast float %1482, %1483
  %1488 = fmul fast float %1486, %1487
  %1489 = fmul fast float %1482, %1397
  %1490 = fadd fast float %1482, %1397
  %1491 = fmul fast float %1490, %1437
  %1492 = fadd fast float %1489, %1438
  %1493 = fsub fast float %1492, %1491
  %1494 = fdiv fast float %1493, %1488
  br label %1495

; <label>:1495                                    ; preds = %1485, %1422
  %1496 = phi float [ %1494, %1485 ], [ 0.000000e+00, %1422 ]
  %1497 = fcmp fast ogt float %1397, %1482
  %1498 = fsub fast float %1397, %1482
  br i1 %1497, label %1499, label %1509

; <label>:1499                                    ; preds = %1495
  %1500 = fsub fast float %1482, %1483
  %1501 = fmul fast float %1500, %1498
  %1502 = fmul fast float %1483, %1397
  %1503 = fadd fast float %1483, %1397
  %1504 = fmul fast float %1503, %1437
  %1505 = fsub fast float %1439, %1502
  %1506 = fadd fast float %1505, %1504
  %1507 = fdiv fast float %1506, %1501
  %1508 = fadd fast float %1507, %1496
  br label %1509

; <label>:1509                                    ; preds = %1499, %1495
  %1510 = phi float [ %1508, %1499 ], [ %1496, %1495 ]
  %1511 = fsub fast float %1397, %1483
  %1512 = fmul fast float %1511, %1498
  %1513 = fmul fast float %1483, %1482
  %1514 = fadd fast float %1483, %1482
  %1515 = fmul fast float %1514, %1437
  %1516 = fadd fast float %1513, %1438
  %1517 = fsub fast float %1516, %1515
  %1518 = fdiv fast float %1517, %1512
  %1519 = call float @dx.op.unary.f32(i32 7, float %1510)  ; Saturate(value)
  %1520 = fcmp fast oeq float %546, 0.000000e+00
  %1521 = extractvalue %dx.types.CBufRet.f32 %1305, 0
  %1522 = fcmp fast oeq float %1521, 0.000000e+00
  %1523 = or i1 %1520, %1522
  %1524 = fmul fast float %1521, 2.000000e+00
  %1525 = fadd fast float %1306, %1307
  %1526 = fdiv fast float %1525, %1524
  %1527 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  %1528 = fmul fast float %1527, 2.000000e+00
  %1529 = fsub fast float 3.000000e+00, %1528
  %1530 = fmul fast float %1527, %1527
  %1531 = fmul fast float %1530, %1529
  %1532 = select i1 %1523, float 1.000000e+00, float %1531
  %1533 = fmul fast float %1518, %546
  %1534 = fadd fast float %1519, %1533
  %1535 = call float @dx.op.unary.f32(i32 7, float %1534)  ; Saturate(value)
  %1536 = fmul fast float %1532, %1535
  br label %1537

; <label>:1537                                    ; preds = %1509, %1389
  %1538 = phi float [ %1536, %1509 ], [ 0.000000e+00, %1389 ]
  %1539 = fsub fast float 1.000000e+00, %1538
  %1540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %16, float %1259, float %1260, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1541 = extractvalue %dx.types.ResRet.f32 %1540, 0
  %1542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.i32 %1542, 2
  %1544 = icmp eq i32 %1543, 0
  br i1 %1544, label %1550, label %1545

; <label>:1545                                    ; preds = %1537
  %1546 = call float @dx.op.unary.f32(i32 7, float %1538)  ; Saturate(value)
  %1547 = fadd fast float %1541, -1.000000e+00
  %1548 = fmul fast float %1546, %1547
  %1549 = fadd fast float %1548, 1.000000e+00
  br label %1550

; <label>:1550                                    ; preds = %1545, %1537
  %1551 = phi float [ %1549, %1545 ], [ %1539, %1537 ]
  br i1 %1313, label %1552, label %1570

; <label>:1552                                    ; preds = %1550
  %1553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1554 = extractvalue %dx.types.CBufRet.f32 %1553, 1
  %1555 = fsub fast float %1390, %1554
  %1556 = call float @dx.op.unary.f32(i32 7, float %1555)  ; Saturate(value)
  %1557 = fsub fast float %1390, %1312
  %1558 = call float @dx.op.unary.f32(i32 7, float %1557)  ; Saturate(value)
  %1559 = fsub fast float %1556, %1558
  %1560 = fsub fast float %1392, %1558
  %1561 = fdiv fast float %1560, %1559
  %1562 = call float @dx.op.unary.f32(i32 7, float %1561)  ; Saturate(value)
  %1563 = fmul fast float %1562, 2.000000e+00
  %1564 = fsub fast float 3.000000e+00, %1563
  %1565 = fsub fast float %1541, %1551
  %1566 = fmul fast float %1562, %1562
  %1567 = fmul fast float %1566, %1565
  %1568 = fmul fast float %1567, %1564
  %1569 = fadd fast float %1568, %1551
  br label %1570

; <label>:1570                                    ; preds = %1552, %1550
  %1571 = phi float [ %1569, %1552 ], [ %1551, %1550 ]
  %1572 = call float @dx.op.binary.f32(i32 35, float %1541, float %1571)  ; FMax(a,b)
  %1573 = call float @dx.op.dot3.f32(i32 55, float %1572, float %1572, float %1572, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1574 = select i1 %121, float %1573, float %1572
  %1575 = select i1 %121, float 1.000000e+00, float %1572
  %1576 = fmul fast float %1574, %1246
  %1577 = fmul fast float %1574, %1247
  %1578 = fmul fast float %1575, %1248
  %1579 = fmul fast float %1574, %1249
  %1580 = fmul fast float %1574, %1250
  %1581 = fmul fast float %1575, %1251
  br label %1582

; <label>:1582                                    ; preds = %1570, %1255, %1238, %691
  %1583 = phi float [ %696, %691 ], [ %1246, %1238 ], [ %1576, %1570 ], [ %1246, %1255 ]
  %1584 = phi float [ %697, %691 ], [ %1247, %1238 ], [ %1577, %1570 ], [ %1247, %1255 ]
  %1585 = phi float [ %698, %691 ], [ %1248, %1238 ], [ %1578, %1570 ], [ %1248, %1255 ]
  %1586 = phi float [ %699, %691 ], [ %1249, %1238 ], [ %1579, %1570 ], [ %1249, %1255 ]
  %1587 = phi float [ %700, %691 ], [ %1250, %1238 ], [ %1580, %1570 ], [ %1250, %1255 ]
  %1588 = phi float [ %701, %691 ], [ %1251, %1238 ], [ %1581, %1570 ], [ %1251, %1255 ]
  %1589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1590 = extractvalue %dx.types.CBufRet.f32 %1589, 2
  %1591 = extractvalue %dx.types.CBufRet.f32 %1589, 3
  %1592 = fmul fast float %1590, %39
  %1593 = fmul fast float %1591, %40
  %1594 = call float @dx.op.unary.f32(i32 7, float %1592)  ; Saturate(value)
  %1595 = call float @dx.op.unary.f32(i32 7, float %1593)  ; Saturate(value)
  %1596 = select i1 %572, i32 2, i32 0
  %1597 = or i32 %1596, 1
  %1598 = uitofp i32 %1597 to float
  %1599 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %1594, float %1595, float %1598, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1600 = extractvalue %dx.types.ResRet.f32 %1599, 0
  %1601 = extractvalue %dx.types.ResRet.f32 %1599, 1
  %1602 = extractvalue %dx.types.ResRet.f32 %1599, 2
  %1603 = extractvalue %dx.types.ResRet.f32 %1599, 3
  %1604 = add nuw nsw i32 %1596, 2
  %1605 = uitofp i32 %1604 to float
  %1606 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %1594, float %1595, float %1605, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1607 = extractvalue %dx.types.ResRet.f32 %1606, 0
  %1608 = extractvalue %dx.types.ResRet.f32 %1606, 1
  %1609 = extractvalue %dx.types.ResRet.f32 %1606, 2
  %1610 = extractvalue %dx.types.ResRet.f32 %1606, 3
  %1611 = call float @dx.op.binary.f32(i32 35, float %1601, float %1602)  ; FMax(a,b)
  %1612 = call float @dx.op.binary.f32(i32 35, float %1600, float %1611)  ; FMax(a,b)
  %1613 = call float @dx.op.binary.f32(i32 35, float %1612, float %1603)  ; FMax(a,b)
  %1614 = call float @dx.op.binary.f32(i32 36, float %1608, float %1609)  ; FMin(a,b)
  %1615 = call float @dx.op.binary.f32(i32 36, float %1607, float %1614)  ; FMin(a,b)
  %1616 = call float @dx.op.binary.f32(i32 36, float %1615, float %1610)  ; FMin(a,b)
  %1617 = fmul fast float %1613, 2.550000e+02
  %1618 = fadd fast float %1617, 0x3F70101020000000
  %1619 = fptoui float %1618 to i32
  %1620 = fmul fast float %1616, 2.550000e+02
  %1621 = fadd fast float %1620, 0x3F70101020000000
  %1622 = fptoui float %1621 to i32
  %1623 = icmp ult i32 %1619, %1622
  br i1 %1623, label %1624, label %1667

; <label>:1624                                    ; preds = %1582
  %1625 = fcmp fast ogt float %32, 9.843750e-01
  %1626 = fadd fast float %695, -4.000000e+00
  %1627 = select i1 %1625, float -4.000000e+00, float %1626
  %1628 = call float @dx.op.binary.f32(i32 35, float %1627, float 0.000000e+00)  ; FMax(a,b)
  %1629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1630 = extractvalue %dx.types.CBufRet.f32 %1629, 0
  %1631 = fadd fast float %1630, %1628
  %1632 = extractvalue %dx.types.CBufRet.f32 %1629, 2
  %1633 = fmul fast float %1631, %1632
  %1634 = call float @dx.op.unary.f32(i32 23, float %1633)  ; Log(value)
  %1635 = extractvalue %dx.types.CBufRet.f32 %1629, 3
  %1636 = fmul fast float %1635, %1634
  %1637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1638 = extractvalue %dx.types.CBufRet.f32 %1637, 2
  %1639 = fmul fast float %1636, %1638
  %1640 = call float @dx.op.unary.f32(i32 7, float %1639)  ; Saturate(value)
  %1641 = uitofp i32 %1619 to float
  %1642 = uitofp i32 %1622 to float
  %1643 = fadd fast float %1641, 5.000000e-01
  %1644 = fadd fast float %1642, 5.000000e-01
  %1645 = fmul fast float %1638, %1643
  %1646 = fmul fast float %1638, %1644
  %1647 = fadd fast float %1645, 0x3F0FFB4800000000
  %1648 = fadd fast float %1646, 0xBF0FFB4800000000
  %1649 = call float @dx.op.binary.f32(i32 35, float %1640, float %1647)  ; FMax(a,b)
  %1650 = call float @dx.op.binary.f32(i32 36, float %1649, float %1648)  ; FMin(a,b)
  %1651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1652 = extractvalue %dx.types.CBufRet.f32 %1651, 1
  %1653 = extractvalue %dx.types.CBufRet.f32 %1651, 2
  %1654 = extractvalue %dx.types.CBufRet.f32 %1651, 0
  %1655 = select i1 %572, float %1654, float 0.000000e+00
  %1656 = fmul fast float %1652, %1650
  %1657 = fadd fast float %1655, %1656
  %1658 = fadd fast float %1655, %1653
  %1659 = fsub fast float %1652, %1653
  %1660 = fadd fast float %1659, %1655
  %1661 = call float @dx.op.binary.f32(i32 35, float %1657, float %1658)  ; FMax(a,b)
  %1662 = call float @dx.op.binary.f32(i32 36, float %1661, float %1660)  ; FMin(a,b)
  %1663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %1594, float %1595, float %1662, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1664 = extractvalue %dx.types.ResRet.f32 %1663, 0
  %1665 = extractvalue %dx.types.ResRet.f32 %1663, 1
  %1666 = extractvalue %dx.types.ResRet.f32 %1663, 2
  br label %1667

; <label>:1667                                    ; preds = %1624, %1582
  %1668 = phi float [ %1664, %1624 ], [ 1.000000e+00, %1582 ]
  %1669 = phi float [ %1665, %1624 ], [ 1.000000e+00, %1582 ]
  %1670 = phi float [ %1666, %1624 ], [ 1.000000e+00, %1582 ]
  %1671 = call float @dx.op.dot3.f32(i32 55, float %1668, float %1669, float %1670, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1672 = select i1 %121, float %1671, float %1668
  %1673 = select i1 %121, float %1671, float %1669
  %1674 = fadd fast float %1586, %1583
  %1675 = fmul fast float %1672, %1674
  %1676 = fadd fast float %1587, %1584
  %1677 = fmul fast float %1673, %1676
  %1678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1679 = extractvalue %dx.types.CBufRet.f32 %1678, 0
  br i1 %121, label %1680, label %1683

; <label>:1680                                    ; preds = %1667
  %1681 = fadd fast float %1675, %1677
  %1682 = fmul fast float %1679, %1681
  br label %1694

; <label>:1683                                    ; preds = %1667
  %1684 = fadd fast float %1588, %1585
  %1685 = fmul fast float %1670, %1684
  %1686 = fmul fast float %1679, %1675
  %1687 = fmul fast float %1679, %1677
  %1688 = fmul fast float %1685, %1679
  %1689 = call float @dx.op.binary.f32(i32 35, float %1687, float %1688)  ; FMax(a,b)
  %1690 = call float @dx.op.binary.f32(i32 35, float %1686, float %1689)  ; FMax(a,b)
  %1691 = call float @dx.op.binary.f32(i32 35, float %1690, float 0.000000e+00)  ; FMax(a,b)
  %1692 = fcmp fast ugt float %1691, 0x3F10000000000000
  br i1 %1692, label %1694, label %1693

; <label>:1693                                    ; preds = %1683
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1694

; <label>:1694                                    ; preds = %1693, %1683, %1680
  %1695 = phi float [ %1682, %1680 ], [ %1686, %1693 ], [ %1686, %1683 ]
  %1696 = phi float [ 0.000000e+00, %1680 ], [ %1687, %1693 ], [ %1687, %1683 ]
  %1697 = phi float [ 0.000000e+00, %1680 ], [ %1688, %1693 ], [ %1688, %1683 ]
  %1698 = fadd fast float %396, 0x3FE3C6EF40000000
  %1699 = call float @dx.op.unary.f32(i32 22, float %1698)  ; Frc(value)
  %1700 = call float @dx.op.unary.f32(i32 23, float %1695)  ; Log(value)
  %1701 = fadd fast float %1700, -7.000000e+00
  %1702 = call float @dx.op.unary.f32(i32 21, float %1701)  ; Exp(value)
  %1703 = fmul fast float %1699, 2.000000e+00
  %1704 = fadd fast float %1703, -1.000000e+00
  %1705 = fmul fast float %1702, %1704
  %1706 = fcmp fast ogt float %1695, 0.000000e+00
  %1707 = select i1 %1706, float %1705, float 0.000000e+00
  %1708 = fadd fast float %1707, %1695
  %1709 = fadd fast float %396, 0x3FF3C6EF40000000
  %1710 = call float @dx.op.unary.f32(i32 22, float %1709)  ; Frc(value)
  %1711 = call float @dx.op.unary.f32(i32 23, float %1696)  ; Log(value)
  %1712 = fadd fast float %1711, -7.000000e+00
  %1713 = call float @dx.op.unary.f32(i32 21, float %1712)  ; Exp(value)
  %1714 = fmul fast float %1710, 2.000000e+00
  %1715 = fadd fast float %1714, -1.000000e+00
  %1716 = fmul fast float %1713, %1715
  %1717 = fcmp fast ogt float %1696, 0.000000e+00
  %1718 = select i1 %1717, float %1716, float 0.000000e+00
  %1719 = fadd fast float %1718, %1696
  %1720 = fadd fast float %396, 0x3FFDAA66E0000000
  %1721 = call float @dx.op.unary.f32(i32 22, float %1720)  ; Frc(value)
  %1722 = call float @dx.op.unary.f32(i32 23, float %1697)  ; Log(value)
  %1723 = fadd fast float %1722, -6.000000e+00
  %1724 = call float @dx.op.unary.f32(i32 21, float %1723)  ; Exp(value)
  %1725 = fmul fast float %1721, 2.000000e+00
  %1726 = fadd fast float %1725, -1.000000e+00
  %1727 = fmul fast float %1724, %1726
  %1728 = fcmp fast ogt float %1697, 0.000000e+00
  %1729 = select i1 %1728, float %1727, float 0.000000e+00
  %1730 = fadd fast float %1729, %1697
  %1731 = select i1 %121, float %1696, float %1719
  %1732 = select i1 %121, float %1697, float %1730
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1733 = call float @dx.op.binary.f32(i32 36, float %1708, float 3.225500e+04)  ; FMin(a,b)
  %1734 = call float @dx.op.binary.f32(i32 36, float %1731, float 3.225500e+04)  ; FMin(a,b)
  %1735 = call float @dx.op.binary.f32(i32 36, float %1732, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1733)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1734)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1735)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

