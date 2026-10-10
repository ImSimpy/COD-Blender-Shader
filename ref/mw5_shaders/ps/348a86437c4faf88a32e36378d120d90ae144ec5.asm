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
; shader hash: 45c2f9f75531afdef59a988c057549e9
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
  %446 = add i32 %22, 48
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = lshr i32 %448, 22
  %450 = shl nuw nsw i32 %449, 5
  %451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %450)  ; LegacyF16ToF32(value)
  %452 = fmul fast float %451, %445
  %453 = select i1 %120, float %452, float %445
  %454 = fmul fast float %420, %453
  %455 = fmul fast float %149, %143
  %456 = fmul fast float %455, %418
  %457 = fmul fast float %456, %431
  %458 = fmul fast float %457, %441
  %459 = fmul fast float %152, %143
  %460 = fmul fast float %459, %419
  %461 = fmul fast float %460, %432
  %462 = fmul fast float %461, %444
  %463 = call float @dx.op.dot3.f32(i32 55, float %454, float %458, float %462, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %464 = select i1 %120, float 0.000000e+00, float %454
  %465 = select i1 %120, float %463, float %458
  %466 = select i1 %120, float 0.000000e+00, float %462
  %467 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 0, i32 %163, i32 %164, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = lshr i32 %468, 18
  %470 = uitofp i32 %469 to float
  %471 = fmul fast float %470, 0x3F4C00EBA0000000
  %472 = call float @dx.op.unary.f32(i32 21, float %471)  ; Exp(value)
  %473 = fadd fast float %472, -1.000000e+00
  %474 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %7, i32 0)  ; GetDimensions(handle,mipLevel)
  %475 = extractvalue %dx.types.Dimensions %474, 0
  %476 = sitofp i32 %475 to float
  %477 = extractvalue %dx.types.Dimensions %474, 1
  %478 = sitofp i32 %477 to float
  %479 = fcmp fast oge float %161, %476
  %480 = fcmp fast oge float %162, %478
  %481 = or i1 %479, %480
  %482 = select i1 %481, float 0x4197782600000000, float %473
  %483 = fmul fast float %464, %423
  %484 = fmul fast float %465, %423
  %485 = fmul fast float %466, %423
  %486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.f32 %486, 3
  %488 = icmp eq i32 %136, 3
  %489 = fcmp fast ogt float %33, %482
  %490 = and i1 %187, %489
  %491 = or i1 %488, %490
  %492 = icmp eq i32 %136, 2
  %493 = fcmp fast ole float %33, %482
  %494 = and i1 %492, %493
  %495 = or i1 %494, %491
  br i1 %490, label %496, label %611

; <label>:496                                     ; preds = %345
  %497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %498 = extractvalue %dx.types.CBufRet.f32 %497, 2
  %499 = extractvalue %dx.types.CBufRet.f32 %497, 3
  %500 = fmul fast float %498, %39
  %501 = fmul fast float %499, %40
  %502 = call float @dx.op.unary.f32(i32 7, float %500)  ; Saturate(value)
  %503 = call float @dx.op.unary.f32(i32 7, float %501)  ; Saturate(value)
  %504 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %502, float %503, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = extractvalue %dx.types.ResRet.f32 %504, 1
  %507 = extractvalue %dx.types.ResRet.f32 %504, 2
  %508 = extractvalue %dx.types.ResRet.f32 %504, 3
  %509 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %502, float %503, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = extractvalue %dx.types.ResRet.f32 %509, 1
  %512 = extractvalue %dx.types.ResRet.f32 %509, 2
  %513 = extractvalue %dx.types.ResRet.f32 %509, 3
  %514 = call float @dx.op.binary.f32(i32 35, float %506, float %507)  ; FMax(a,b)
  %515 = call float @dx.op.binary.f32(i32 35, float %505, float %514)  ; FMax(a,b)
  %516 = call float @dx.op.binary.f32(i32 35, float %515, float %508)  ; FMax(a,b)
  %517 = call float @dx.op.binary.f32(i32 36, float %511, float %512)  ; FMin(a,b)
  %518 = call float @dx.op.binary.f32(i32 36, float %510, float %517)  ; FMin(a,b)
  %519 = call float @dx.op.binary.f32(i32 36, float %518, float %513)  ; FMin(a,b)
  %520 = fmul fast float %516, 2.550000e+02
  %521 = fadd fast float %520, 0x3F70101020000000
  %522 = fptoui float %521 to i32
  %523 = fmul fast float %519, 2.550000e+02
  %524 = fadd fast float %523, 0x3F70101020000000
  %525 = fptoui float %524 to i32
  %526 = icmp ult i32 %522, %525
  br i1 %526, label %527, label %569

; <label>:527                                     ; preds = %496
  %528 = fcmp fast ogt float %32, 9.843750e-01
  %529 = fadd fast float %33, -4.000000e+00
  %530 = select i1 %528, float -4.000000e+00, float %529
  %531 = call float @dx.op.binary.f32(i32 35, float %530, float 0.000000e+00)  ; FMax(a,b)
  %532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.f32 %532, 0
  %534 = fadd fast float %533, %531
  %535 = extractvalue %dx.types.CBufRet.f32 %532, 2
  %536 = fmul fast float %534, %535
  %537 = call float @dx.op.unary.f32(i32 23, float %536)  ; Log(value)
  %538 = extractvalue %dx.types.CBufRet.f32 %532, 3
  %539 = fmul fast float %538, %537
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 2
  %542 = fmul fast float %539, %541
  %543 = call float @dx.op.unary.f32(i32 7, float %542)  ; Saturate(value)
  %544 = uitofp i32 %522 to float
  %545 = uitofp i32 %525 to float
  %546 = fadd fast float %544, 5.000000e-01
  %547 = fadd fast float %545, 5.000000e-01
  %548 = fmul fast float %541, %546
  %549 = fmul fast float %541, %547
  %550 = fadd fast float %548, 0x3F0FFB4800000000
  %551 = fadd fast float %549, 0xBF0FFB4800000000
  %552 = call float @dx.op.binary.f32(i32 35, float %543, float %550)  ; FMax(a,b)
  %553 = call float @dx.op.binary.f32(i32 36, float %552, float %551)  ; FMin(a,b)
  %554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %555 = extractvalue %dx.types.CBufRet.f32 %554, 1
  %556 = extractvalue %dx.types.CBufRet.f32 %554, 2
  %557 = extractvalue %dx.types.CBufRet.f32 %554, 0
  %558 = fmul fast float %555, %553
  %559 = fadd fast float %557, %558
  %560 = fadd fast float %557, %556
  %561 = fsub fast float %555, %556
  %562 = fadd fast float %561, %557
  %563 = call float @dx.op.binary.f32(i32 35, float %559, float %560)  ; FMax(a,b)
  %564 = call float @dx.op.binary.f32(i32 36, float %563, float %562)  ; FMin(a,b)
  %565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %502, float %503, float %564, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %566 = extractvalue %dx.types.ResRet.f32 %565, 0
  %567 = extractvalue %dx.types.ResRet.f32 %565, 1
  %568 = extractvalue %dx.types.ResRet.f32 %565, 2
  br label %569

; <label>:569                                     ; preds = %527, %496
  %570 = phi float [ %566, %527 ], [ 1.000000e+00, %496 ]
  %571 = phi float [ %567, %527 ], [ 1.000000e+00, %496 ]
  %572 = phi float [ %568, %527 ], [ 1.000000e+00, %496 ]
  %573 = call float @dx.op.dot3.f32(i32 55, float %570, float %571, float %572, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %574 = select i1 %120, float %573, float %570
  %575 = select i1 %120, float %573, float %571
  %576 = select i1 %120, float 1.000000e+00, float %572
  %577 = fmul fast float %574, %483
  %578 = fmul fast float %575, %484
  %579 = fmul fast float %576, %485
  %580 = fmul fast float %56, %498
  %581 = fmul fast float %58, %499
  %582 = fsub fast float 1.000000e+00, %580
  %583 = fsub fast float 1.000000e+00, %581
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = extractvalue %dx.types.CBufRet.f32 %584, 1
  %587 = extractvalue %dx.types.CBufRet.f32 %584, 2
  %588 = fmul fast float %582, %585
  %589 = fmul fast float %582, %586
  %590 = fmul fast float %582, %587
  %591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %592 = extractvalue %dx.types.CBufRet.f32 %591, 0
  %593 = extractvalue %dx.types.CBufRet.f32 %591, 1
  %594 = extractvalue %dx.types.CBufRet.f32 %591, 2
  %595 = fmul fast float %583, %592
  %596 = fmul fast float %583, %593
  %597 = fmul fast float %583, %594
  %598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.f32 %598, 0
  %600 = extractvalue %dx.types.CBufRet.f32 %598, 1
  %601 = extractvalue %dx.types.CBufRet.f32 %598, 2
  %602 = fadd fast float %595, %599
  %603 = fadd fast float %602, %588
  %604 = fadd fast float %596, %600
  %605 = fadd fast float %604, %589
  %606 = fadd fast float %597, %601
  %607 = fadd fast float %606, %590
  %608 = fmul fast float %603, %482
  %609 = fmul fast float %605, %482
  %610 = fmul fast float %607, %482
  br label %611

; <label>:611                                     ; preds = %569, %345
  %612 = phi float [ %608, %569 ], [ %86, %345 ]
  %613 = phi float [ %609, %569 ], [ %87, %345 ]
  %614 = phi float [ %610, %569 ], [ %88, %345 ]
  %615 = phi float [ %482, %569 ], [ %33, %345 ]
  %616 = phi float [ %577, %569 ], [ %483, %345 ]
  %617 = phi float [ %578, %569 ], [ %484, %345 ]
  %618 = phi float [ %579, %569 ], [ %485, %345 ]
  br i1 %495, label %1493, label %619

; <label>:619                                     ; preds = %611
  %620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.f32 %620, 0
  %622 = extractvalue %dx.types.CBufRet.f32 %620, 1
  %623 = extractvalue %dx.types.CBufRet.f32 %620, 2
  %624 = extractvalue %dx.types.CBufRet.f32 %620, 3
  %625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %626 = extractvalue %dx.types.CBufRet.f32 %625, 0
  %627 = extractvalue %dx.types.CBufRet.f32 %625, 1
  %628 = extractvalue %dx.types.CBufRet.f32 %625, 2
  %629 = extractvalue %dx.types.CBufRet.f32 %625, 3
  %630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %631 = extractvalue %dx.types.CBufRet.f32 %630, 3
  %632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.f32 %632, 3
  %634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %635 = extractvalue %dx.types.CBufRet.f32 %634, 3
  %636 = extractvalue %dx.types.CBufRet.f32 %634, 0
  %637 = extractvalue %dx.types.CBufRet.f32 %634, 1
  %638 = extractvalue %dx.types.CBufRet.f32 %634, 2
  %639 = fcmp fast olt float %638, -5.000000e-01
  %640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.f32 %640, 3
  %642 = call float @dx.op.dot3.f32(i32 55, float %612, float %613, float %614, float %612, float %613, float %614)  ; Dot3(ax,ay,az,bx,by,bz)
  %643 = call float @dx.op.unary.f32(i32 25, float %642)  ; Rsqrt(value)
  %644 = fmul fast float %643, %642
  %645 = fmul fast float %643, %612
  %646 = fmul fast float %643, %613
  %647 = fmul fast float %643, %614
  %648 = fadd fast float %644, %624
  %649 = call float @dx.op.dot3.f32(i32 55, float %645, float %646, float %647, float %621, float %622, float %623)  ; Dot3(ax,ay,az,bx,by,bz)
  %650 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %651 = extractvalue %dx.types.CBufRet.i32 %650, 1
  %652 = and i32 %651, 1
  %653 = icmp ne i32 %652, 0
  %654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %655 = extractvalue %dx.types.CBufRet.f32 %654, 2
  %656 = fcmp fast ogt float %655, 0.000000e+00
  %657 = and i1 %653, %656
  br i1 %657, label %658, label %997, !dx.controlflow.hints !55

; <label>:658                                     ; preds = %619
  %659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %660 = extractvalue %dx.types.CBufRet.f32 %659, 3
  %661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %662 = extractvalue %dx.types.CBufRet.f32 %661, 2
  %663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %664 = extractvalue %dx.types.CBufRet.f32 %663, 2
  %665 = fsub fast float %662, %664
  %666 = and i32 %651, 2
  %667 = extractvalue %dx.types.CBufRet.i32 %650, 0
  %668 = call i32 @dx.op.binary.i32(i32 40, i32 %667, i32 3)  ; UMin(a,b)
  %669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.f32 %669, 0
  %671 = extractvalue %dx.types.CBufRet.f32 %669, 1
  %672 = extractvalue %dx.types.CBufRet.f32 %663, 0
  %673 = extractvalue %dx.types.CBufRet.f32 %663, 1
  %674 = fsub fast float %670, %672
  %675 = fsub fast float %671, %673
  %676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.f32 %676, 0
  %678 = fcmp fast ogt float %677, 0.000000e+00
  %679 = fsub fast float -0.000000e+00, %674
  %680 = fsub fast float -0.000000e+00, %675
  %681 = call float @dx.op.dot2.f32(i32 54, float %645, float %646, float %645, float %646)  ; Dot2(ax,ay,bx,by)
  %682 = call float @dx.op.dot2.f32(i32 54, float %645, float %646, float %679, float %680)  ; Dot2(ax,ay,bx,by)
  %683 = fmul fast float %682, 2.000000e+00
  %684 = call float @dx.op.dot2.f32(i32 54, float %679, float %680, float %679, float %680)  ; Dot2(ax,ay,bx,by)
  %685 = fmul fast float %677, %677
  %686 = fsub fast float %684, %685
  %687 = fmul fast float %683, %683
  %688 = fmul fast float %681, 4.000000e+00
  %689 = fmul fast float %688, %686
  %690 = fsub fast float %687, %689
  %691 = fcmp fast ogt float %690, 0.000000e+00
  br i1 %691, label %692, label %707

; <label>:692                                     ; preds = %658
  %693 = fcmp fast ogt float %683, 0.000000e+00
  %694 = call float @dx.op.unary.f32(i32 24, float %690)  ; Sqrt(value)
  %695 = fsub fast float -0.000000e+00, %694
  %696 = select i1 %693, float %694, float %695
  %697 = fadd fast float %696, %683
  %698 = fmul float %697, -5.000000e-01
  %699 = fdiv fast float %698, %681
  %700 = call float @dx.op.binary.f32(i32 35, float %699, float 0.000000e+00)  ; FMax(a,b)
  %701 = call float @dx.op.binary.f32(i32 36, float %644, float %700)  ; FMin(a,b)
  %702 = fdiv fast float %686, %698
  %703 = call float @dx.op.binary.f32(i32 35, float %702, float 0.000000e+00)  ; FMax(a,b)
  %704 = call float @dx.op.binary.f32(i32 36, float %644, float %703)  ; FMin(a,b)
  %705 = call float @dx.op.binary.f32(i32 36, float %701, float %704)  ; FMin(a,b)
  %706 = call float @dx.op.binary.f32(i32 35, float %701, float %704)  ; FMax(a,b)
  br label %707

; <label>:707                                     ; preds = %692, %658
  %708 = phi float [ %706, %692 ], [ -1.000000e+00, %658 ]
  %709 = phi float [ %705, %692 ], [ -1.000000e+00, %658 ]
  %710 = phi i1 [ true, %692 ], [ false, %658 ]
  %711 = and i1 %678, %710
  br i1 %711, label %712, label %714

; <label>:712                                     ; preds = %707
  %713 = fcmp fast oeq float %709, %708
  br i1 %713, label %957, label %715

; <label>:714                                     ; preds = %707
  br i1 %678, label %957, label %715

; <label>:715                                     ; preds = %714, %712
  %716 = phi float [ %644, %714 ], [ %708, %712 ]
  %717 = phi float [ 0.000000e+00, %714 ], [ %709, %712 ]
  %718 = icmp ne i32 %666, 0
  %719 = fmul fast float %716, %647
  %720 = fadd fast float %719, %660
  %721 = fmul fast float %720, %716
  %722 = select i1 %718, float 0.000000e+00, float %721
  %723 = fcmp fast oeq float %647, 0.000000e+00
  %724 = fdiv fast float %665, %647
  %725 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %724)  ; FMax(a,b)
  %726 = select i1 %723, float %716, float %725
  %727 = call float @dx.op.binary.f32(i32 36, float %716, float %726)  ; FMin(a,b)
  %728 = fcmp fast ogt float %647, 0.000000e+00
  %729 = fcmp fast olt float %665, 0.000000e+00
  br i1 %728, label %730, label %767

; <label>:730                                     ; preds = %715
  %731 = icmp eq i32 %666, 0
  br i1 %729, label %732, label %756

; <label>:732                                     ; preds = %730
  %733 = select i1 %731, float %716, float 0.000000e+00
  %734 = fsub fast float -0.000000e+00, %733
  %735 = call float @dx.op.unary.f32(i32 6, float %734)  ; FAbs(value)
  %736 = fmul fast float %733, %647
  %737 = fadd fast float %736, %660
  %738 = fmul fast float %735, %737
  %739 = fsub fast float %722, %738
  %740 = fsub fast float %716, %735
  %741 = select i1 %731, float %740, float 0.000000e+00
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 3
  %744 = call float @dx.op.binary.f32(i32 36, float %739, float %743)  ; FMin(a,b)
  %745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %746 = extractvalue %dx.types.CBufRet.f32 %745, 0
  %747 = extractvalue %dx.types.CBufRet.f32 %745, 1
  %748 = fadd fast float %747, %746
  %749 = call float @dx.op.unary.f32(i32 7, float %748)  ; Saturate(value)
  %750 = extractvalue %dx.types.CBufRet.f32 %745, 2
  %751 = extractvalue %dx.types.CBufRet.f32 %745, 3
  %752 = fadd fast float %751, %750
  %753 = call float @dx.op.unary.f32(i32 7, float %752)  ; Saturate(value)
  %754 = fmul fast float %749, %744
  %755 = fmul fast float %754, %753
  br label %957

; <label>:756                                     ; preds = %730
  br i1 %731, label %757, label %778

; <label>:757                                     ; preds = %756
  %758 = call float @dx.op.binary.f32(i32 36, float %727, float %717)  ; FMin(a,b)
  %759 = fsub fast float %727, %758
  %760 = fsub fast float %759, %716
  %761 = call float @dx.op.unary.f32(i32 6, float %760)  ; FAbs(value)
  %762 = fadd fast float %759, %716
  %763 = fmul fast float %762, %647
  %764 = fadd fast float %763, %660
  %765 = fmul fast float %764, %761
  %766 = fsub fast float %722, %765
  br label %778

; <label>:767                                     ; preds = %715
  br i1 %729, label %768, label %778

; <label>:768                                     ; preds = %767
  %769 = call float @dx.op.binary.f32(i32 35, float %717, float %727)  ; FMax(a,b)
  %770 = icmp eq i32 %666, 0
  %771 = select i1 %770, float %727, float 0.000000e+00
  %772 = fsub fast float -0.000000e+00, %771
  %773 = call float @dx.op.unary.f32(i32 6, float %772)  ; FAbs(value)
  %774 = fmul fast float %771, %647
  %775 = fadd fast float %774, %660
  %776 = fmul fast float %773, %775
  %777 = fsub fast float %722, %776
  br label %778

; <label>:778                                     ; preds = %768, %767, %757, %756
  %779 = phi float [ %717, %756 ], [ %717, %757 ], [ %769, %768 ], [ %717, %767 ]
  %780 = phi float [ 0.000000e+00, %756 ], [ %761, %757 ], [ %773, %768 ], [ 0.000000e+00, %767 ]
  %781 = phi float [ %722, %756 ], [ %766, %757 ], [ %777, %768 ], [ %722, %767 ]
  %782 = phi float [ %727, %756 ], [ %727, %757 ], [ %716, %768 ], [ %716, %767 ]
  %783 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 0
  store float -1.000000e+00, float* %783, align 4, !tbaa !56, !noalias !60
  %784 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 1
  store float -1.000000e+00, float* %784, align 4, !tbaa !56, !noalias !60
  %785 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 2
  store float -1.000000e+00, float* %785, align 4, !tbaa !56, !noalias !60
  %786 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 0
  store float -1.000000e+00, float* %786, align 4, !tbaa !56, !noalias !60
  %787 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 1
  store float -1.000000e+00, float* %787, align 4, !tbaa !56, !noalias !60
  %788 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 2
  store float -1.000000e+00, float* %788, align 4, !tbaa !56, !noalias !60
  %789 = icmp sgt i32 %668, 0
  br i1 %789, label %790, label %851

; <label>:790                                     ; preds = %778
  br label %791

; <label>:791                                     ; preds = %840, %790
  %792 = phi i32 [ %841, %840 ], [ 0, %790 ]
  %793 = phi i32 [ %842, %840 ], [ 0, %790 ]
  %794 = add nuw i32 %793, 171
  %795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %794)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.f32 %795, 0
  %797 = extractvalue %dx.types.CBufRet.f32 %795, 1
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 0
  %800 = extractvalue %dx.types.CBufRet.f32 %798, 1
  %801 = fsub fast float %796, %799
  %802 = fsub fast float %797, %800
  %803 = extractvalue %dx.types.CBufRet.f32 %795, 2
  %804 = fsub fast float -0.000000e+00, %801
  %805 = fsub fast float -0.000000e+00, %802
  %806 = call float @dx.op.dot2.f32(i32 54, float %645, float %646, float %804, float %805)  ; Dot2(ax,ay,bx,by)
  %807 = fmul fast float %806, 2.000000e+00
  %808 = call float @dx.op.dot2.f32(i32 54, float %804, float %805, float %804, float %805)  ; Dot2(ax,ay,bx,by)
  %809 = fmul fast float %803, %803
  %810 = fsub fast float %808, %809
  %811 = fmul fast float %807, %807
  %812 = fmul fast float %688, %810
  %813 = fsub fast float %811, %812
  %814 = fcmp fast ogt float %813, 0.000000e+00
  br i1 %814, label %815, label %830

; <label>:815                                     ; preds = %791
  %816 = fcmp fast ogt float %807, 0.000000e+00
  %817 = call float @dx.op.unary.f32(i32 24, float %813)  ; Sqrt(value)
  %818 = fsub fast float -0.000000e+00, %817
  %819 = select i1 %816, float %817, float %818
  %820 = fadd fast float %819, %807
  %821 = fmul float %820, -5.000000e-01
  %822 = fdiv fast float %821, %681
  %823 = call float @dx.op.binary.f32(i32 35, float %822, float 0.000000e+00)  ; FMax(a,b)
  %824 = call float @dx.op.binary.f32(i32 36, float %716, float %823)  ; FMin(a,b)
  %825 = fdiv fast float %810, %821
  %826 = call float @dx.op.binary.f32(i32 35, float %825, float 0.000000e+00)  ; FMax(a,b)
  %827 = call float @dx.op.binary.f32(i32 36, float %716, float %826)  ; FMin(a,b)
  %828 = call float @dx.op.binary.f32(i32 36, float %824, float %827)  ; FMin(a,b)
  %829 = call float @dx.op.binary.f32(i32 35, float %824, float %827)  ; FMax(a,b)
  br label %830

; <label>:830                                     ; preds = %815, %791
  %831 = phi float [ %829, %815 ], [ -1.000000e+00, %791 ]
  %832 = phi float [ %828, %815 ], [ -1.000000e+00, %791 ]
  %833 = phi i1 [ true, %815 ], [ false, %791 ]
  br i1 %833, label %834, label %840

; <label>:834                                     ; preds = %830
  %835 = call float @dx.op.binary.f32(i32 35, float %779, float %832)  ; FMax(a,b)
  %836 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 %793
  store float %835, float* %836, align 4, !tbaa !56, !noalias !60
  %837 = call float @dx.op.binary.f32(i32 35, float %779, float %831)  ; FMax(a,b)
  %838 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 %793
  store float %837, float* %838, align 4, !tbaa !56, !noalias !60
  %839 = add nsw i32 %792, 1
  br label %840

; <label>:840                                     ; preds = %834, %830
  %841 = phi i32 [ %839, %834 ], [ %792, %830 ]
  %842 = add nuw nsw i32 %793, 1
  %843 = icmp eq i32 %842, %668
  br i1 %843, label %844, label %791

; <label>:844                                     ; preds = %840
  %845 = load float, float* %785, align 4, !tbaa !56, !alias.scope !76, !noalias !79
  %846 = load float, float* %784, align 4, !tbaa !56, !alias.scope !82, !noalias !83
  %847 = load float, float* %783, align 4, !tbaa !56, !alias.scope !84, !noalias !85
  %848 = load float, float* %788, align 4, !tbaa !56, !alias.scope !86, !noalias !89
  %849 = load float, float* %787, align 4, !tbaa !56, !alias.scope !92, !noalias !93
  %850 = load float, float* %786, align 4, !tbaa !56, !alias.scope !94, !noalias !95
  br label %851

; <label>:851                                     ; preds = %844, %778
  %852 = phi float [ -1.000000e+00, %778 ], [ %850, %844 ]
  %853 = phi float [ -1.000000e+00, %778 ], [ %849, %844 ]
  %854 = phi float [ -1.000000e+00, %778 ], [ %848, %844 ]
  %855 = phi float [ -1.000000e+00, %778 ], [ %847, %844 ]
  %856 = phi float [ -1.000000e+00, %778 ], [ %846, %844 ]
  %857 = phi float [ -1.000000e+00, %778 ], [ %845, %844 ]
  %858 = phi i32 [ 0, %778 ], [ %841, %844 ]
  %859 = call float @dx.op.binary.f32(i32 36, float %856, float %857)  ; FMin(a,b)
  %860 = call float @dx.op.binary.f32(i32 36, float %855, float %859)  ; FMin(a,b)
  %861 = call float @dx.op.binary.f32(i32 35, float %855, float %856)  ; FMax(a,b)
  %862 = call float @dx.op.binary.f32(i32 36, float %861, float %857)  ; FMin(a,b)
  %863 = call float @dx.op.binary.f32(i32 36, float %855, float %856)  ; FMin(a,b)
  %864 = call float @dx.op.binary.f32(i32 35, float %863, float %862)  ; FMax(a,b)
  %865 = call float @dx.op.binary.f32(i32 35, float %856, float %857)  ; FMax(a,b)
  %866 = call float @dx.op.binary.f32(i32 35, float %855, float %865)  ; FMax(a,b)
  store float %860, float* %783, align 4, !tbaa !56, !alias.scope !84, !noalias !85
  store float %864, float* %784, align 4, !tbaa !56, !alias.scope !82, !noalias !83
  store float %866, float* %785, align 4, !tbaa !56, !alias.scope !76, !noalias !79
  %867 = call float @dx.op.binary.f32(i32 36, float %853, float %854)  ; FMin(a,b)
  %868 = call float @dx.op.binary.f32(i32 36, float %852, float %867)  ; FMin(a,b)
  %869 = call float @dx.op.binary.f32(i32 35, float %852, float %853)  ; FMax(a,b)
  %870 = call float @dx.op.binary.f32(i32 36, float %869, float %854)  ; FMin(a,b)
  %871 = call float @dx.op.binary.f32(i32 36, float %852, float %853)  ; FMin(a,b)
  %872 = call float @dx.op.binary.f32(i32 35, float %871, float %870)  ; FMax(a,b)
  %873 = call float @dx.op.binary.f32(i32 35, float %853, float %854)  ; FMax(a,b)
  %874 = call float @dx.op.binary.f32(i32 35, float %852, float %873)  ; FMax(a,b)
  store float %868, float* %786, align 4, !tbaa !56, !alias.scope !94, !noalias !95
  store float %872, float* %787, align 4, !tbaa !56, !alias.scope !92, !noalias !93
  store float %874, float* %788, align 4, !tbaa !56, !alias.scope !86, !noalias !89
  %875 = sub nsw i32 3, %858
  %876 = icmp sgt i32 %875, 2
  br i1 %876, label %877, label %895

; <label>:877                                     ; preds = %851
  %878 = icmp eq i32 %666, 0
  %879 = fsub fast float %716, %780
  %880 = select i1 %878, float %879, float %780
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 3
  %883 = call float @dx.op.binary.f32(i32 36, float %781, float %882)  ; FMin(a,b)
  %884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.f32 %884, 0
  %886 = extractvalue %dx.types.CBufRet.f32 %884, 1
  %887 = fadd fast float %886, %885
  %888 = call float @dx.op.unary.f32(i32 7, float %887)  ; Saturate(value)
  %889 = extractvalue %dx.types.CBufRet.f32 %884, 2
  %890 = extractvalue %dx.types.CBufRet.f32 %884, 3
  %891 = fadd fast float %890, %889
  %892 = call float @dx.op.unary.f32(i32 7, float %891)  ; Saturate(value)
  %893 = fmul fast float %888, %883
  %894 = fmul fast float %893, %892
  br label %957

; <label>:895                                     ; preds = %851
  %896 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 %875
  %897 = load float, float* %896, align 4, !tbaa !56, !noalias !60
  %898 = fcmp fast olt float %897, %782
  %899 = icmp sgt i32 %858, 0
  %900 = and i1 %899, %898
  br i1 %900, label %901, label %938

; <label>:901                                     ; preds = %895
  br label %902

; <label>:902                                     ; preds = %931, %901
  %903 = phi float [ %932, %931 ], [ %780, %901 ]
  %904 = phi float [ %933, %931 ], [ %781, %901 ]
  %905 = phi float [ %913, %931 ], [ %897, %901 ]
  %906 = phi i32 [ %910, %931 ], [ %875, %901 ]
  %907 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 %906
  %908 = load float, float* %907, align 4, !tbaa !56, !noalias !60
  %909 = icmp slt i32 %906, 2
  %910 = add nsw i32 %906, 1
  %911 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 %910
  %912 = load float, float* %911, align 4, !tbaa !56, !noalias !60
  %913 = select i1 %909, float %912, float %716
  %914 = call float @dx.op.binary.f32(i32 36, float %913, float %908)  ; FMin(a,b)
  %915 = call float @dx.op.binary.f32(i32 36, float %782, float %914)  ; FMin(a,b)
  %916 = icmp eq i32 %666, 0
  %917 = fadd fast float %915, %905
  %918 = fmul fast float %917, %647
  %919 = fadd fast float %918, %660
  br i1 %916, label %925, label %920

; <label>:920                                     ; preds = %902
  %921 = fsub fast float %915, %905
  %922 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %921)  ; FMax(a,b)
  %923 = fmul fast float %922, %919
  %924 = fadd fast float %923, %904
  br label %931

; <label>:925                                     ; preds = %902
  %926 = fsub fast float %905, %915
  %927 = call float @dx.op.unary.f32(i32 6, float %926)  ; FAbs(value)
  %928 = fadd fast float %927, %903
  %929 = fmul fast float %927, %919
  %930 = fsub fast float %904, %929
  br label %931

; <label>:931                                     ; preds = %925, %920
  %932 = phi float [ %922, %920 ], [ %928, %925 ]
  %933 = phi float [ %924, %920 ], [ %930, %925 ]
  %934 = fcmp fast olt float %913, %782
  %935 = icmp slt i32 %910, 3
  %936 = and i1 %935, %934
  br i1 %936, label %902, label %937

; <label>:937                                     ; preds = %931
  br label %938

; <label>:938                                     ; preds = %937, %895
  %939 = phi float [ %780, %895 ], [ %932, %937 ]
  %940 = phi float [ %781, %895 ], [ %933, %937 ]
  %941 = fsub fast float %716, %939
  %942 = select i1 %718, float %939, float %941
  %943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %944 = extractvalue %dx.types.CBufRet.f32 %943, 3
  %945 = call float @dx.op.binary.f32(i32 36, float %940, float %944)  ; FMin(a,b)
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 0
  %948 = extractvalue %dx.types.CBufRet.f32 %946, 1
  %949 = fadd fast float %948, %947
  %950 = call float @dx.op.unary.f32(i32 7, float %949)  ; Saturate(value)
  %951 = extractvalue %dx.types.CBufRet.f32 %946, 2
  %952 = extractvalue %dx.types.CBufRet.f32 %946, 3
  %953 = fadd fast float %952, %951
  %954 = call float @dx.op.unary.f32(i32 7, float %953)  ; Saturate(value)
  %955 = fmul fast float %950, %945
  %956 = fmul fast float %955, %954
  br label %957

; <label>:957                                     ; preds = %938, %877, %732, %714, %712
  %958 = phi float [ %741, %732 ], [ %880, %877 ], [ %942, %938 ], [ 0.000000e+00, %712 ], [ 0.000000e+00, %714 ]
  %959 = phi float [ %755, %732 ], [ %894, %877 ], [ %956, %938 ], [ 0.000000e+00, %712 ], [ 0.000000e+00, %714 ]
  %960 = fmul fast float %655, %959
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 2
  %963 = fsub fast float %662, %962
  %964 = fcmp fast olt float %960, -2.000000e+01
  %965 = call float @dx.op.unary.f32(i32 21, float %960)  ; Exp(value)
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 2
  %968 = extractvalue %dx.types.CBufRet.f32 %966, 3
  %969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.f32 %969, 2
  %971 = fmul fast float %968, %963
  %972 = call float @dx.op.unary.f32(i32 7, float %971)  ; Saturate(value)
  %973 = fsub fast float 1.000000e+00, %972
  %974 = fmul fast float %647, 5.000000e-01
  %975 = fadd fast float %974, 5.000000e-01
  %976 = call float @dx.op.unary.f32(i32 7, float %975)  ; Saturate(value)
  %977 = fsub fast float 1.000000e+00, %976
  %978 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %973)  ; FMax(a,b)
  %979 = fdiv fast float %977, %978
  %980 = fsub fast float %963, %614
  %981 = call float @dx.op.unary.f32(i32 6, float %980)  ; FAbs(value)
  %982 = fmul fast float %981, %967
  %983 = call float @dx.op.unary.f32(i32 7, float %979)  ; Saturate(value)
  %984 = fsub fast float 1.000000e+00, %982
  %985 = fmul fast float %984, %983
  %986 = fadd fast float %985, %982
  %987 = fmul fast float %970, %963
  %988 = call float @dx.op.unary.f32(i32 7, float %987)  ; Saturate(value)
  %989 = fsub fast float 1.000000e+00, %986
  %990 = fmul fast float %989, %988
  %991 = fadd fast float %990, %986
  %992 = call float @dx.op.unary.f32(i32 7, float %991)  ; Saturate(value)
  %993 = fadd fast float %965, -1.000000e+00
  %994 = select i1 %964, float -1.000000e+00, float %993
  %995 = fmul fast float %992, %994
  %996 = fadd fast float %995, 1.000000e+00
  br label %997

; <label>:997                                     ; preds = %957, %619
  %998 = phi float [ %958, %957 ], [ 0.000000e+00, %619 ]
  %999 = phi float [ %996, %957 ], [ 1.000000e+00, %619 ]
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 1
  %1002 = fsub fast float 1.000000e+00, %999
  %1003 = fmul fast float %1002, %648
  %1004 = fmul fast float %1003, %1001
  %1005 = fsub fast float %648, %1004
  br i1 %639, label %1006, label %1022, !dx.controlflow.hints !96

; <label>:1006                                    ; preds = %997
  %1007 = fmul fast float %649, %636
  %1008 = fadd fast float %1007, %637
  %1009 = call float @dx.op.unary.f32(i32 7, float %1008)  ; Saturate(value)
  %1010 = fmul fast float %626, %1005
  %1011 = fsub fast float -0.000000e+00, %1010
  %1012 = fmul fast float %627, %1005
  %1013 = fsub fast float -0.000000e+00, %1012
  %1014 = call float @dx.op.unary.f32(i32 21, float %1011)  ; Exp(value)
  %1015 = call float @dx.op.unary.f32(i32 21, float %1013)  ; Exp(value)
  %1016 = call float @dx.op.binary.f32(i32 35, float %641, float %1014)  ; FMax(a,b)
  %1017 = call float @dx.op.binary.f32(i32 35, float %641, float %1015)  ; FMax(a,b)
  %1018 = fsub fast float %1017, %1016
  %1019 = fmul fast float %1018, %1009
  %1020 = fadd fast float %1019, %1016
  %1021 = call float @dx.op.unary.f32(i32 7, float %1020)  ; Saturate(value)
  br label %1055

; <label>:1022                                    ; preds = %997
  %1023 = fmul fast float %1005, %635
  %1024 = call float @dx.op.unary.f32(i32 7, float %1023)  ; Saturate(value)
  %1025 = fsub fast float 2.000000e+00, %1024
  %1026 = fmul fast float %1024, 9.921875e-01
  %1027 = fmul fast float %1026, %1025
  %1028 = fadd fast float %1027, 3.906250e-03
  %1029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %1028, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1031 = fsub fast float %1024, %1030
  %1032 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1031)  ; FMax(a,b)
  %1033 = fmul fast float %629, %614
  %1034 = call float @dx.op.unary.f32(i32 6, float %1033)  ; FAbs(value)
  %1035 = fcmp fast ogt float %1034, 0x3EB0C6F7A0000000
  br i1 %1035, label %1036, label %1042, !dx.controlflow.hints !97

; <label>:1036                                    ; preds = %1022
  %1037 = fmul fast float %1033, 0xBFF7154760000000
  %1038 = call float @dx.op.unary.f32(i32 21, float %1037)  ; Exp(value)
  %1039 = fsub fast float 1.000000e+00, %1038
  %1040 = fdiv fast float %1039, %1033
  %1041 = fmul fast float %1040, %631
  br label %1042

; <label>:1042                                    ; preds = %1036, %1022
  %1043 = phi float [ %1041, %1036 ], [ %631, %1022 ]
  %1044 = fadd fast float %1043, %633
  %1045 = fmul fast float %1044, %1032
  %1046 = fmul fast float %626, %1045
  %1047 = fsub fast float -0.000000e+00, %1046
  %1048 = fmul fast float %627, %1045
  %1049 = fsub fast float -0.000000e+00, %1048
  %1050 = fmul fast float %628, %1045
  %1051 = fsub fast float -0.000000e+00, %1050
  %1052 = call float @dx.op.unary.f32(i32 21, float %1047)  ; Exp(value)
  %1053 = call float @dx.op.unary.f32(i32 21, float %1049)  ; Exp(value)
  %1054 = call float @dx.op.unary.f32(i32 21, float %1051)  ; Exp(value)
  br label %1055

; <label>:1055                                    ; preds = %1042, %1006
  %1056 = phi float [ %1021, %1006 ], [ %1052, %1042 ]
  %1057 = phi float [ %1021, %1006 ], [ %1053, %1042 ]
  %1058 = phi float [ %1021, %1006 ], [ %1054, %1042 ]
  br i1 %657, label %1059, label %1155, !dx.controlflow.hints !98

; <label>:1059                                    ; preds = %1055
  %1060 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1056)  ; FMax(a,b)
  %1061 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1057)  ; FMax(a,b)
  %1062 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1058)  ; FMax(a,b)
  %1063 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %999)  ; FMax(a,b)
  %1064 = call float @dx.op.binary.f32(i32 35, float %998, float %1005)  ; FMax(a,b)
  %1065 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1064)  ; FMax(a,b)
  %1066 = fdiv fast float %998, %1065
  %1067 = call float @dx.op.unary.f32(i32 7, float %1066)  ; Saturate(value)
  %1068 = fdiv fast float %1005, %1065
  %1069 = call float @dx.op.unary.f32(i32 7, float %1068)  ; Saturate(value)
  %1070 = fcmp fast une float %1063, 1.000000e+00
  br i1 %1070, label %1071, label %1074, !dx.controlflow.hints !99

; <label>:1071                                    ; preds = %1059
  %1072 = call float @dx.op.unary.f32(i32 23, float %1063)  ; Log(value)
  %1073 = fmul fast float %1072, 0x3FE62E4300000000
  br label %1074

; <label>:1074                                    ; preds = %1071, %1059
  %1075 = phi float [ %1073, %1071 ], [ 0.000000e+00, %1059 ]
  %1076 = fcmp fast une float %1060, 1.000000e+00
  br i1 %1076, label %1077, label %1080, !dx.controlflow.hints !100

; <label>:1077                                    ; preds = %1074
  %1078 = call float @dx.op.unary.f32(i32 23, float %1060)  ; Log(value)
  %1079 = fmul fast float %1078, 0x3FE62E4300000000
  br label %1080

; <label>:1080                                    ; preds = %1077, %1074
  %1081 = phi float [ %1079, %1077 ], [ 0.000000e+00, %1074 ]
  %1082 = fcmp fast une float %1061, 1.000000e+00
  br i1 %1082, label %1083, label %1086, !dx.controlflow.hints !100

; <label>:1083                                    ; preds = %1080
  %1084 = call float @dx.op.unary.f32(i32 23, float %1061)  ; Log(value)
  %1085 = fmul fast float %1084, 0x3FE62E4300000000
  br label %1086

; <label>:1086                                    ; preds = %1083, %1080
  %1087 = phi float [ %1085, %1083 ], [ 0.000000e+00, %1080 ]
  %1088 = fcmp fast une float %1062, 1.000000e+00
  br i1 %1088, label %1089, label %1092, !dx.controlflow.hints !100

; <label>:1089                                    ; preds = %1086
  %1090 = call float @dx.op.unary.f32(i32 23, float %1062)  ; Log(value)
  %1091 = fmul fast float %1090, 0x3FE62E4300000000
  br label %1092

; <label>:1092                                    ; preds = %1089, %1086
  %1093 = phi float [ %1091, %1089 ], [ 0.000000e+00, %1086 ]
  %1094 = fmul fast float %1075, %1069
  %1095 = fmul fast float %1081, %1067
  %1096 = fmul fast float %1087, %1067
  %1097 = fmul fast float %1093, %1067
  %1098 = fadd fast float %1095, %1094
  %1099 = fadd fast float %1096, %1094
  %1100 = fadd fast float %1097, %1094
  %1101 = fcmp fast une float %1098, 0.000000e+00
  br i1 %1101, label %1102, label %1105, !dx.controlflow.hints !101

; <label>:1102                                    ; preds = %1092
  %1103 = fmul fast float %1098, 0x3FF7154760000000
  %1104 = call float @dx.op.unary.f32(i32 21, float %1103)  ; Exp(value)
  br label %1105

; <label>:1105                                    ; preds = %1102, %1092
  %1106 = phi float [ %1104, %1102 ], [ 1.000000e+00, %1092 ]
  %1107 = fcmp fast une float %1099, 0.000000e+00
  br i1 %1107, label %1108, label %1111, !dx.controlflow.hints !101

; <label>:1108                                    ; preds = %1105
  %1109 = fmul fast float %1099, 0x3FF7154760000000
  %1110 = call float @dx.op.unary.f32(i32 21, float %1109)  ; Exp(value)
  br label %1111

; <label>:1111                                    ; preds = %1108, %1105
  %1112 = phi float [ %1110, %1108 ], [ 1.000000e+00, %1105 ]
  %1113 = fcmp fast une float %1100, 0.000000e+00
  br i1 %1113, label %1114, label %1117, !dx.controlflow.hints !101

; <label>:1114                                    ; preds = %1111
  %1115 = fmul fast float %1100, 0x3FF7154760000000
  %1116 = call float @dx.op.unary.f32(i32 21, float %1115)  ; Exp(value)
  br label %1117

; <label>:1117                                    ; preds = %1114, %1111
  %1118 = phi float [ %1116, %1114 ], [ 1.000000e+00, %1111 ]
  %1119 = fcmp fast ogt float %1067, %1069
  br i1 %1119, label %1120, label %1127

; <label>:1120                                    ; preds = %1117
  %1121 = fsub fast float 1.000000e+00, %1069
  %1122 = fmul fast float %1075, %1121
  %1123 = fcmp fast une float %1122, 0.000000e+00
  br i1 %1123, label %1124, label %1148, !dx.controlflow.hints !102

; <label>:1124                                    ; preds = %1120
  %1125 = fmul fast float %1122, 0x3FF7154760000000
  %1126 = call float @dx.op.unary.f32(i32 21, float %1125)  ; Exp(value)
  br label %1148

; <label>:1127                                    ; preds = %1117
  %1128 = fsub fast float 1.000000e+00, %1067
  %1129 = fmul fast float %1081, %1128
  %1130 = fmul fast float %1087, %1128
  %1131 = fmul fast float %1093, %1128
  %1132 = fcmp fast une float %1129, 0.000000e+00
  br i1 %1132, label %1133, label %1136, !dx.controlflow.hints !101

; <label>:1133                                    ; preds = %1127
  %1134 = fmul fast float %1129, 0x3FF7154760000000
  %1135 = call float @dx.op.unary.f32(i32 21, float %1134)  ; Exp(value)
  br label %1136

; <label>:1136                                    ; preds = %1133, %1127
  %1137 = phi float [ %1135, %1133 ], [ 1.000000e+00, %1127 ]
  %1138 = fcmp fast une float %1130, 0.000000e+00
  br i1 %1138, label %1139, label %1142, !dx.controlflow.hints !101

; <label>:1139                                    ; preds = %1136
  %1140 = fmul fast float %1130, 0x3FF7154760000000
  %1141 = call float @dx.op.unary.f32(i32 21, float %1140)  ; Exp(value)
  br label %1142

; <label>:1142                                    ; preds = %1139, %1136
  %1143 = phi float [ %1141, %1139 ], [ 1.000000e+00, %1136 ]
  %1144 = fcmp fast une float %1131, 0.000000e+00
  br i1 %1144, label %1145, label %1148, !dx.controlflow.hints !101

; <label>:1145                                    ; preds = %1142
  %1146 = fmul fast float %1131, 0x3FF7154760000000
  %1147 = call float @dx.op.unary.f32(i32 21, float %1146)  ; Exp(value)
  br label %1148

; <label>:1148                                    ; preds = %1145, %1142, %1124, %1120
  %1149 = phi float [ %1147, %1145 ], [ %1126, %1124 ], [ 1.000000e+00, %1120 ], [ 1.000000e+00, %1142 ]
  %1150 = phi float [ %1143, %1145 ], [ %1126, %1124 ], [ 1.000000e+00, %1120 ], [ %1143, %1142 ]
  %1151 = phi float [ %1137, %1145 ], [ %1126, %1124 ], [ 1.000000e+00, %1120 ], [ %1137, %1142 ]
  %1152 = fmul fast float %1151, %1106
  %1153 = fmul fast float %1150, %1112
  %1154 = fmul fast float %1149, %1118
  br label %1155

; <label>:1155                                    ; preds = %1148, %1055
  %1156 = phi float [ %1154, %1148 ], [ %1058, %1055 ]
  %1157 = phi float [ %1153, %1148 ], [ %1057, %1055 ]
  %1158 = phi float [ %1152, %1148 ], [ %1056, %1055 ]
  %1159 = call float @dx.op.dot3.f32(i32 55, float %1158, float %1157, float %1156, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1160 = select i1 %120, float %1159, float %1158
  %1161 = select i1 %120, float %1159, float %1157
  %1162 = select i1 %120, float 1.000000e+00, float %1156
  %1163 = fmul fast float %1160, %616
  %1164 = fmul fast float %1161, %617
  %1165 = fmul fast float %1162, %618
  %1166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1167 = extractvalue %dx.types.CBufRet.i32 %1166, 0
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1493, label %1169, !dx.controlflow.hints !103

; <label>:1169                                    ; preds = %1155
  %1170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1171 = extractvalue %dx.types.CBufRet.f32 %1170, 2
  %1172 = extractvalue %dx.types.CBufRet.f32 %1170, 3
  %1173 = fmul fast float %1171, %39
  %1174 = fmul fast float %1172, %40
  %1175 = fmul fast float %1173, 2.000000e+00
  %1176 = fmul fast float %1174, 2.000000e+00
  %1177 = fsub fast float 1.000000e+00, %1175
  %1178 = fsub fast float 1.000000e+00, %1176
  %1179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1180 = extractvalue %dx.types.CBufRet.f32 %1179, 0
  %1181 = extractvalue %dx.types.CBufRet.f32 %1179, 1
  %1182 = extractvalue %dx.types.CBufRet.f32 %1179, 2
  %1183 = fmul fast float %1177, %1180
  %1184 = fmul fast float %1177, %1181
  %1185 = fmul fast float %1177, %1182
  %1186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.f32 %1186, 0
  %1188 = extractvalue %dx.types.CBufRet.f32 %1186, 1
  %1189 = extractvalue %dx.types.CBufRet.f32 %1186, 2
  %1190 = fmul fast float %1178, %1187
  %1191 = fmul fast float %1178, %1188
  %1192 = fmul fast float %1178, %1189
  %1193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.f32 %1193, 0
  %1195 = extractvalue %dx.types.CBufRet.f32 %1193, 1
  %1196 = extractvalue %dx.types.CBufRet.f32 %1193, 2
  %1197 = fadd fast float %1190, %1194
  %1198 = fadd fast float %1197, %1183
  %1199 = fadd fast float %1191, %1195
  %1200 = fadd fast float %1199, %1184
  %1201 = fadd fast float %1192, %1196
  %1202 = fadd fast float %1201, %1185
  %1203 = fmul fast float %1198, %615
  %1204 = fmul fast float %1200, %615
  %1205 = fmul fast float %1202, %615
  %1206 = fmul fast float %1203, %1203
  %1207 = fmul fast float %1204, %1204
  %1208 = fadd fast float %1206, %1207
  %1209 = fmul fast float %1205, %1205
  %1210 = fadd fast float %1208, %1209
  %1211 = call float @dx.op.unary.f32(i32 24, float %1210)  ; Sqrt(value)
  %1212 = extractvalue %dx.types.CBufRet.f32 %486, 0
  %1213 = fsub fast float %1211, %1212
  %1214 = extractvalue %dx.types.CBufRet.f32 %486, 2
  %1215 = fmul fast float %1213, %1214
  %1216 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  %1217 = fadd fast float %1216, -5.000000e-01
  %1218 = fmul fast float %1217, 2.000000e+00
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 2
  %1221 = call float @dx.op.binary.f32(i32 36, float %1220, float %1218)  ; FMin(a,b)
  %1222 = fsub fast float -0.000000e+00, %1220
  %1223 = fcmp fast ogt float %1221, %1222
  br i1 %1223, label %1224, label %1493, !dx.controlflow.hints !104

; <label>:1224                                    ; preds = %1169
  %1225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1226 = extractvalue %dx.types.CBufRet.f32 %1225, 3
  %1227 = fcmp fast ogt float %1226, 0.000000e+00
  br i1 %1227, label %1228, label %1303, !dx.controlflow.hints !105

; <label>:1228                                    ; preds = %1224
  %1229 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %1230 = extractvalue %dx.types.Dimensions %1229, 0
  %1231 = sitofp i32 %1230 to float
  %1232 = extractvalue %dx.types.Dimensions %1229, 1
  %1233 = sitofp i32 %1232 to float
  %1234 = fmul fast float %1173, %1231
  %1235 = fmul fast float %1174, %1233
  %1236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1236, 1
  %1238 = fsub fast float -0.000000e+00, %1237
  %1239 = fptoui float %1238 to i32
  %1240 = fptoui float %1234 to i32
  %1241 = fptoui float %1235 to i32
  %1242 = and i32 %1239, 31
  %1243 = lshr i32 %1240, %1242
  %1244 = lshr i32 %1241, %1242
  %1245 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 %1239, i32 %1243, i32 %1244, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1246 = extractvalue %dx.types.ResRet.f32 %1245, 0
  %1247 = fcmp fast olt float %1246, -1.000000e+00
  %1248 = fcmp fast ogt float %1246, -1.000000e+00
  %1249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1250 = extractvalue %dx.types.CBufRet.f32 %1249, 1
  %1251 = select i1 %1248, float %1250, float 1.000000e+00
  %1252 = fadd fast float %1246, 1.000000e+00
  %1253 = fmul fast float %1251, %1252
  %1254 = call float @dx.op.unary.f32(i32 6, float %1253)  ; FAbs(value)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1249, 3
  %1256 = fcmp fast oge float %1254, %1255
  %1257 = select i1 %1256, float 0x4197782600000000, float %1254
  %1258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1259 = extractvalue %dx.types.CBufRet.f32 %1258, 0
  %1260 = extractvalue %dx.types.CBufRet.f32 %1258, 1
  %1261 = extractvalue %dx.types.CBufRet.f32 %1258, 2
  %1262 = select i1 %1247, float %1259, float %1180
  %1263 = select i1 %1247, float %1260, float %1181
  %1264 = select i1 %1247, float %1261, float %1182
  %1265 = fmul fast float %1262, %1177
  %1266 = fmul fast float %1263, %1177
  %1267 = fmul fast float %1264, %1177
  %1268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1268, 0
  %1270 = extractvalue %dx.types.CBufRet.f32 %1268, 1
  %1271 = extractvalue %dx.types.CBufRet.f32 %1268, 2
  %1272 = select i1 %1247, float %1269, float %1187
  %1273 = select i1 %1247, float %1270, float %1188
  %1274 = select i1 %1247, float %1271, float %1189
  %1275 = fmul fast float %1272, %1178
  %1276 = fmul fast float %1273, %1178
  %1277 = fmul fast float %1274, %1178
  %1278 = fadd fast float %1275, %1265
  %1279 = fadd fast float %1276, %1266
  %1280 = fadd fast float %1277, %1267
  %1281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1281, 0
  %1283 = extractvalue %dx.types.CBufRet.f32 %1281, 1
  %1284 = extractvalue %dx.types.CBufRet.f32 %1281, 2
  %1285 = select i1 %1247, float %1282, float %1194
  %1286 = select i1 %1247, float %1283, float %1195
  %1287 = select i1 %1247, float %1284, float %1196
  %1288 = fadd fast float %1278, %1285
  %1289 = fadd fast float %1279, %1286
  %1290 = fadd fast float %1280, %1287
  %1291 = fmul fast float %1288, %1257
  %1292 = fmul fast float %1289, %1257
  %1293 = fmul fast float %1290, %1257
  %1294 = fmul fast float %1291, %1291
  %1295 = fmul fast float %1292, %1292
  %1296 = fadd fast float %1294, %1295
  %1297 = fmul fast float %1293, %1293
  %1298 = fadd fast float %1296, %1297
  %1299 = call float @dx.op.unary.f32(i32 24, float %1298)  ; Sqrt(value)
  %1300 = fsub fast float %1299, %1212
  %1301 = fmul fast float %1300, %1214
  %1302 = call float @dx.op.unary.f32(i32 7, float %1301)  ; Saturate(value)
  br label %1303

; <label>:1303                                    ; preds = %1228, %1224
  %1304 = phi float [ %1302, %1228 ], [ 1.000000e+00, %1224 ]
  %1305 = fmul fast float %1221, 5.000000e-01
  %1306 = fadd fast float %1305, 5.000000e-01
  %1307 = call float @dx.op.unary.f32(i32 22, float %1306)  ; Frc(value)
  %1308 = call float @dx.op.unary.f32(i32 27, float %1307)  ; Round_ni(value)
  %1309 = call float @dx.op.unary.f32(i32 22, float %1307)  ; Frc(value)
  %1310 = fmul fast float %1309, 2.000000e+00
  %1311 = fadd fast float %1310, -1.000000e+00
  %1312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %16, float %1173, float %1174, float %1308, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1313 = extractvalue %dx.types.ResRet.f32 %1312, 0
  %1314 = extractvalue %dx.types.ResRet.f32 %1312, 1
  %1315 = extractvalue %dx.types.ResRet.f32 %1312, 2
  %1316 = extractvalue %dx.types.ResRet.f32 %1312, 3
  %1317 = fadd fast float %1313, -5.000000e-01
  %1318 = fadd fast float %1315, -5.000000e-01
  %1319 = fmul fast float %1317, 0xBFD5555560000000
  %1320 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1318, float %1319)  ; FMad(a,b,c)
  %1321 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1314, float 0.000000e+00)  ; FMad(a,b,c)
  %1322 = fadd fast float %1321, %1316
  %1323 = fmul fast float %1317, -7.500000e-01
  %1324 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1318, float %1323)  ; FMad(a,b,c)
  %1325 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1314, float 0.000000e+00)  ; FMad(a,b,c)
  %1326 = fadd fast float %1325, %1316
  %1327 = call float @dx.op.binary.f32(i32 35, float %1320, float -1.000000e+00)  ; FMax(a,b)
  %1328 = call float @dx.op.binary.f32(i32 35, float %1322, float -1.000000e+00)  ; FMax(a,b)
  %1329 = call float @dx.op.binary.f32(i32 35, float %1324, float -1.000000e+00)  ; FMax(a,b)
  %1330 = call float @dx.op.binary.f32(i32 35, float %1326, float -1.000000e+00)  ; FMax(a,b)
  %1331 = call float @dx.op.binary.f32(i32 36, float %1327, float 1.000000e+00)  ; FMin(a,b)
  %1332 = call float @dx.op.binary.f32(i32 36, float %1328, float 1.000000e+00)  ; FMin(a,b)
  %1333 = call float @dx.op.binary.f32(i32 36, float %1329, float 1.000000e+00)  ; FMin(a,b)
  %1334 = call float @dx.op.binary.f32(i32 36, float %1330, float 1.000000e+00)  ; FMin(a,b)
  %1335 = fcmp fast olt float %1331, 0x3FEFFF8020000000
  br i1 %1335, label %1336, label %1451, !dx.controlflow.hints !106

; <label>:1336                                    ; preds = %1303
  %1337 = extractvalue %dx.types.CBufRet.f32 %1219, 3
  %1338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1339 = extractvalue %dx.types.CBufRet.f32 %1338, 0
  %1340 = extractvalue %dx.types.CBufRet.f32 %1338, 1
  %1341 = extractvalue %dx.types.CBufRet.f32 %1338, 2
  %1342 = extractvalue %dx.types.CBufRet.f32 %1338, 3
  %1343 = fsub fast float %1339, %1331
  %1344 = fsub fast float %1340, %1332
  %1345 = fsub fast float %1341, %1333
  %1346 = fsub fast float %1342, %1334
  %1347 = fmul fast float %1343, %1337
  %1348 = fmul fast float %1344, %1337
  %1349 = fmul fast float %1345, %1337
  %1350 = fmul fast float %1346, %1337
  %1351 = fadd fast float %1347, %1331
  %1352 = fadd fast float %1348, %1332
  %1353 = fsub fast float -0.000000e+00, %1352
  %1354 = fadd fast float %1349, %1333
  %1355 = fadd fast float %1350, %1334
  %1356 = fmul fast float %1351, %1351
  %1357 = fsub fast float %1352, %1356
  %1358 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1357)  ; FMax(a,b)
  %1359 = fdiv fast float 1.000000e+00, %1358
  %1360 = fmul fast float %1352, %1351
  %1361 = fsub fast float %1354, %1360
  %1362 = fsub fast float %1311, %1351
  %1363 = fmul fast float %1311, %1311
  %1364 = fsub fast float %1363, %1352
  %1365 = fmul fast float %1362, %1359
  %1366 = fmul fast float %1365, %1361
  %1367 = fsub fast float %1364, %1366
  %1368 = fmul fast float %1352, %1352
  %1369 = fsub fast float %1355, %1368
  %1370 = fmul fast float %1361, %1361
  %1371 = fmul fast float %1370, %1359
  %1372 = fsub fast float %1369, %1371
  %1373 = fdiv fast float %1367, %1372
  %1374 = fmul fast float %1361, %1373
  %1375 = fsub fast float %1362, %1374
  %1376 = fmul fast float %1375, %1359
  %1377 = fmul fast float %1376, %1351
  %1378 = fsub fast float 1.000000e+00, %1377
  %1379 = fmul fast float %1352, %1373
  %1380 = fsub fast float %1378, %1379
  %1381 = fmul fast float %1376, %1376
  %1382 = fmul fast float %1373, 4.000000e+00
  %1383 = fmul fast float %1382, %1380
  %1384 = fsub fast float %1381, %1383
  %1385 = call float @dx.op.unary.f32(i32 24, float %1384)  ; Sqrt(value)
  %1386 = fcmp fast oge float %1376, 0.000000e+00
  %1387 = fsub fast float -0.000000e+00, %1385
  %1388 = select i1 %1386, float %1387, float %1385
  %1389 = fsub fast float %1388, %1376
  %1390 = fdiv fast float %1389, %1373
  %1391 = fdiv fast float %1380, %1389
  %1392 = fmul fast float %1390, 5.000000e-01
  %1393 = fmul fast float %1391, 2.000000e+00
  %1394 = select i1 %1386, float %1392, float %1393
  %1395 = select i1 %1386, float %1393, float %1392
  %1396 = call float @dx.op.binary.f32(i32 35, float %1394, float %1395)  ; FMax(a,b)
  %1397 = call float @dx.op.binary.f32(i32 36, float %1394, float %1395)  ; FMin(a,b)
  %1398 = fcmp fast ogt float %1311, %1397
  br i1 %1398, label %1399, label %1409

; <label>:1399                                    ; preds = %1336
  %1400 = fsub fast float %1311, %1397
  %1401 = fsub fast float %1396, %1397
  %1402 = fmul fast float %1400, %1401
  %1403 = fmul fast float %1396, %1311
  %1404 = fadd fast float %1396, %1311
  %1405 = fmul fast float %1404, %1351
  %1406 = fadd fast float %1403, %1352
  %1407 = fsub fast float %1406, %1405
  %1408 = fdiv fast float %1407, %1402
  br label %1409

; <label>:1409                                    ; preds = %1399, %1336
  %1410 = phi float [ %1408, %1399 ], [ 0.000000e+00, %1336 ]
  %1411 = fcmp fast ogt float %1311, %1396
  %1412 = fsub fast float %1311, %1396
  br i1 %1411, label %1413, label %1423

; <label>:1413                                    ; preds = %1409
  %1414 = fsub fast float %1396, %1397
  %1415 = fmul fast float %1414, %1412
  %1416 = fmul fast float %1397, %1311
  %1417 = fadd fast float %1397, %1311
  %1418 = fmul fast float %1417, %1351
  %1419 = fsub fast float %1353, %1416
  %1420 = fadd fast float %1419, %1418
  %1421 = fdiv fast float %1420, %1415
  %1422 = fadd fast float %1421, %1410
  br label %1423

; <label>:1423                                    ; preds = %1413, %1409
  %1424 = phi float [ %1422, %1413 ], [ %1410, %1409 ]
  %1425 = fsub fast float %1311, %1397
  %1426 = fmul fast float %1425, %1412
  %1427 = fmul fast float %1397, %1396
  %1428 = fadd fast float %1397, %1396
  %1429 = fmul fast float %1428, %1351
  %1430 = fadd fast float %1427, %1352
  %1431 = fsub fast float %1430, %1429
  %1432 = fdiv fast float %1431, %1426
  %1433 = call float @dx.op.unary.f32(i32 7, float %1424)  ; Saturate(value)
  %1434 = fcmp fast oeq float %487, 0.000000e+00
  %1435 = extractvalue %dx.types.CBufRet.f32 %1219, 0
  %1436 = fcmp fast oeq float %1435, 0.000000e+00
  %1437 = or i1 %1434, %1436
  %1438 = fmul fast float %1435, 2.000000e+00
  %1439 = fadd fast float %1220, %1221
  %1440 = fdiv fast float %1439, %1438
  %1441 = call float @dx.op.unary.f32(i32 7, float %1440)  ; Saturate(value)
  %1442 = fmul fast float %1441, 2.000000e+00
  %1443 = fsub fast float 3.000000e+00, %1442
  %1444 = fmul fast float %1441, %1441
  %1445 = fmul fast float %1444, %1443
  %1446 = select i1 %1437, float 1.000000e+00, float %1445
  %1447 = fmul fast float %1432, %487
  %1448 = fadd fast float %1433, %1447
  %1449 = call float @dx.op.unary.f32(i32 7, float %1448)  ; Saturate(value)
  %1450 = fmul fast float %1446, %1449
  br label %1451

; <label>:1451                                    ; preds = %1423, %1303
  %1452 = phi float [ %1450, %1423 ], [ 0.000000e+00, %1303 ]
  %1453 = fsub fast float 1.000000e+00, %1452
  %1454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %16, float %1173, float %1174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1455 = extractvalue %dx.types.ResRet.f32 %1454, 0
  %1456 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.i32 %1456, 2
  %1458 = icmp eq i32 %1457, 0
  br i1 %1458, label %1464, label %1459

; <label>:1459                                    ; preds = %1451
  %1460 = call float @dx.op.unary.f32(i32 7, float %1452)  ; Saturate(value)
  %1461 = fadd fast float %1455, -1.000000e+00
  %1462 = fmul fast float %1460, %1461
  %1463 = fadd fast float %1462, 1.000000e+00
  br label %1464

; <label>:1464                                    ; preds = %1459, %1451
  %1465 = phi float [ %1463, %1459 ], [ %1453, %1451 ]
  br i1 %1227, label %1466, label %1484

; <label>:1466                                    ; preds = %1464
  %1467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1468 = extractvalue %dx.types.CBufRet.f32 %1467, 1
  %1469 = fsub fast float %1304, %1468
  %1470 = call float @dx.op.unary.f32(i32 7, float %1469)  ; Saturate(value)
  %1471 = fsub fast float %1304, %1226
  %1472 = call float @dx.op.unary.f32(i32 7, float %1471)  ; Saturate(value)
  %1473 = fsub fast float %1470, %1472
  %1474 = fsub fast float %1306, %1472
  %1475 = fdiv fast float %1474, %1473
  %1476 = call float @dx.op.unary.f32(i32 7, float %1475)  ; Saturate(value)
  %1477 = fmul fast float %1476, 2.000000e+00
  %1478 = fsub fast float 3.000000e+00, %1477
  %1479 = fsub fast float %1455, %1465
  %1480 = fmul fast float %1476, %1476
  %1481 = fmul fast float %1480, %1479
  %1482 = fmul fast float %1481, %1478
  %1483 = fadd fast float %1482, %1465
  br label %1484

; <label>:1484                                    ; preds = %1466, %1464
  %1485 = phi float [ %1483, %1466 ], [ %1465, %1464 ]
  %1486 = call float @dx.op.binary.f32(i32 35, float %1455, float %1485)  ; FMax(a,b)
  %1487 = call float @dx.op.dot3.f32(i32 55, float %1486, float %1486, float %1486, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1488 = select i1 %120, float %1487, float %1486
  %1489 = select i1 %120, float 1.000000e+00, float %1486
  %1490 = fmul fast float %1488, %1163
  %1491 = fmul fast float %1488, %1164
  %1492 = fmul fast float %1489, %1165
  br label %1493

; <label>:1493                                    ; preds = %1484, %1169, %1155, %611
  %1494 = phi float [ %616, %611 ], [ %1163, %1155 ], [ %1490, %1484 ], [ %1163, %1169 ]
  %1495 = phi float [ %617, %611 ], [ %1164, %1155 ], [ %1491, %1484 ], [ %1164, %1169 ]
  %1496 = phi float [ %618, %611 ], [ %1165, %1155 ], [ %1492, %1484 ], [ %1165, %1169 ]
  %1497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1498 = extractvalue %dx.types.CBufRet.f32 %1497, 2
  %1499 = extractvalue %dx.types.CBufRet.f32 %1497, 3
  %1500 = fmul fast float %1498, %39
  %1501 = fmul fast float %1499, %40
  %1502 = call float @dx.op.unary.f32(i32 7, float %1500)  ; Saturate(value)
  %1503 = call float @dx.op.unary.f32(i32 7, float %1501)  ; Saturate(value)
  %1504 = select i1 %495, i32 2, i32 0
  %1505 = or i32 %1504, 1
  %1506 = uitofp i32 %1505 to float
  %1507 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %1502, float %1503, float %1506, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1508 = extractvalue %dx.types.ResRet.f32 %1507, 0
  %1509 = extractvalue %dx.types.ResRet.f32 %1507, 1
  %1510 = extractvalue %dx.types.ResRet.f32 %1507, 2
  %1511 = extractvalue %dx.types.ResRet.f32 %1507, 3
  %1512 = add nuw nsw i32 %1504, 2
  %1513 = uitofp i32 %1512 to float
  %1514 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %1502, float %1503, float %1513, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1515 = extractvalue %dx.types.ResRet.f32 %1514, 0
  %1516 = extractvalue %dx.types.ResRet.f32 %1514, 1
  %1517 = extractvalue %dx.types.ResRet.f32 %1514, 2
  %1518 = extractvalue %dx.types.ResRet.f32 %1514, 3
  %1519 = call float @dx.op.binary.f32(i32 35, float %1509, float %1510)  ; FMax(a,b)
  %1520 = call float @dx.op.binary.f32(i32 35, float %1508, float %1519)  ; FMax(a,b)
  %1521 = call float @dx.op.binary.f32(i32 35, float %1520, float %1511)  ; FMax(a,b)
  %1522 = call float @dx.op.binary.f32(i32 36, float %1516, float %1517)  ; FMin(a,b)
  %1523 = call float @dx.op.binary.f32(i32 36, float %1515, float %1522)  ; FMin(a,b)
  %1524 = call float @dx.op.binary.f32(i32 36, float %1523, float %1518)  ; FMin(a,b)
  %1525 = fmul fast float %1521, 2.550000e+02
  %1526 = fadd fast float %1525, 0x3F70101020000000
  %1527 = fptoui float %1526 to i32
  %1528 = fmul fast float %1524, 2.550000e+02
  %1529 = fadd fast float %1528, 0x3F70101020000000
  %1530 = fptoui float %1529 to i32
  %1531 = icmp ult i32 %1527, %1530
  br i1 %1531, label %1532, label %1575

; <label>:1532                                    ; preds = %1493
  %1533 = fcmp fast ogt float %32, 9.843750e-01
  %1534 = fadd fast float %615, -4.000000e+00
  %1535 = select i1 %1533, float -4.000000e+00, float %1534
  %1536 = call float @dx.op.binary.f32(i32 35, float %1535, float 0.000000e+00)  ; FMax(a,b)
  %1537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.f32 %1537, 0
  %1539 = fadd fast float %1538, %1536
  %1540 = extractvalue %dx.types.CBufRet.f32 %1537, 2
  %1541 = fmul fast float %1539, %1540
  %1542 = call float @dx.op.unary.f32(i32 23, float %1541)  ; Log(value)
  %1543 = extractvalue %dx.types.CBufRet.f32 %1537, 3
  %1544 = fmul fast float %1543, %1542
  %1545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1546 = extractvalue %dx.types.CBufRet.f32 %1545, 2
  %1547 = fmul fast float %1544, %1546
  %1548 = call float @dx.op.unary.f32(i32 7, float %1547)  ; Saturate(value)
  %1549 = uitofp i32 %1527 to float
  %1550 = uitofp i32 %1530 to float
  %1551 = fadd fast float %1549, 5.000000e-01
  %1552 = fadd fast float %1550, 5.000000e-01
  %1553 = fmul fast float %1546, %1551
  %1554 = fmul fast float %1546, %1552
  %1555 = fadd fast float %1553, 0x3F0FFB4800000000
  %1556 = fadd fast float %1554, 0xBF0FFB4800000000
  %1557 = call float @dx.op.binary.f32(i32 35, float %1548, float %1555)  ; FMax(a,b)
  %1558 = call float @dx.op.binary.f32(i32 36, float %1557, float %1556)  ; FMin(a,b)
  %1559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1560 = extractvalue %dx.types.CBufRet.f32 %1559, 1
  %1561 = extractvalue %dx.types.CBufRet.f32 %1559, 2
  %1562 = extractvalue %dx.types.CBufRet.f32 %1559, 0
  %1563 = select i1 %495, float %1562, float 0.000000e+00
  %1564 = fmul fast float %1560, %1558
  %1565 = fadd fast float %1563, %1564
  %1566 = fadd fast float %1563, %1561
  %1567 = fsub fast float %1560, %1561
  %1568 = fadd fast float %1567, %1563
  %1569 = call float @dx.op.binary.f32(i32 35, float %1565, float %1566)  ; FMax(a,b)
  %1570 = call float @dx.op.binary.f32(i32 36, float %1569, float %1568)  ; FMin(a,b)
  %1571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %1502, float %1503, float %1570, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1572 = extractvalue %dx.types.ResRet.f32 %1571, 0
  %1573 = extractvalue %dx.types.ResRet.f32 %1571, 1
  %1574 = extractvalue %dx.types.ResRet.f32 %1571, 2
  br label %1575

; <label>:1575                                    ; preds = %1532, %1493
  %1576 = phi float [ %1572, %1532 ], [ 1.000000e+00, %1493 ]
  %1577 = phi float [ %1573, %1532 ], [ 1.000000e+00, %1493 ]
  %1578 = phi float [ %1574, %1532 ], [ 1.000000e+00, %1493 ]
  %1579 = call float @dx.op.dot3.f32(i32 55, float %1576, float %1577, float %1578, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1580 = select i1 %120, float %1579, float %1576
  %1581 = select i1 %120, float %1579, float %1577
  %1582 = fmul fast float %1580, %1494
  %1583 = fmul fast float %1581, %1495
  %1584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1585 = extractvalue %dx.types.CBufRet.f32 %1584, 0
  br i1 %120, label %1586, label %1589

; <label>:1586                                    ; preds = %1575
  %1587 = fadd fast float %1582, %1583
  %1588 = fmul fast float %1585, %1587
  br label %1599

; <label>:1589                                    ; preds = %1575
  %1590 = fmul fast float %1578, %1496
  %1591 = fmul fast float %1585, %1582
  %1592 = fmul fast float %1585, %1583
  %1593 = fmul fast float %1590, %1585
  %1594 = call float @dx.op.binary.f32(i32 35, float %1592, float %1593)  ; FMax(a,b)
  %1595 = call float @dx.op.binary.f32(i32 35, float %1591, float %1594)  ; FMax(a,b)
  %1596 = call float @dx.op.binary.f32(i32 35, float %1595, float 0.000000e+00)  ; FMax(a,b)
  %1597 = fcmp fast ugt float %1596, 0x3F10000000000000
  br i1 %1597, label %1599, label %1598

; <label>:1598                                    ; preds = %1589
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1599

; <label>:1599                                    ; preds = %1598, %1589, %1586
  %1600 = phi float [ %1588, %1586 ], [ %1591, %1598 ], [ %1591, %1589 ]
  %1601 = phi float [ 0.000000e+00, %1586 ], [ %1592, %1598 ], [ %1592, %1589 ]
  %1602 = phi float [ 0.000000e+00, %1586 ], [ %1593, %1598 ], [ %1593, %1589 ]
  %1603 = fadd fast float %362, 0x3FE3C6EF40000000
  %1604 = call float @dx.op.unary.f32(i32 22, float %1603)  ; Frc(value)
  %1605 = call float @dx.op.unary.f32(i32 23, float %1600)  ; Log(value)
  %1606 = fadd fast float %1605, -7.000000e+00
  %1607 = call float @dx.op.unary.f32(i32 21, float %1606)  ; Exp(value)
  %1608 = fmul fast float %1604, 2.000000e+00
  %1609 = fadd fast float %1608, -1.000000e+00
  %1610 = fmul fast float %1607, %1609
  %1611 = fcmp fast ogt float %1600, 0.000000e+00
  %1612 = select i1 %1611, float %1610, float 0.000000e+00
  %1613 = fadd fast float %1612, %1600
  %1614 = fadd fast float %362, 0x3FF3C6EF40000000
  %1615 = call float @dx.op.unary.f32(i32 22, float %1614)  ; Frc(value)
  %1616 = call float @dx.op.unary.f32(i32 23, float %1601)  ; Log(value)
  %1617 = fadd fast float %1616, -7.000000e+00
  %1618 = call float @dx.op.unary.f32(i32 21, float %1617)  ; Exp(value)
  %1619 = fmul fast float %1615, 2.000000e+00
  %1620 = fadd fast float %1619, -1.000000e+00
  %1621 = fmul fast float %1618, %1620
  %1622 = fcmp fast ogt float %1601, 0.000000e+00
  %1623 = select i1 %1622, float %1621, float 0.000000e+00
  %1624 = fadd fast float %1623, %1601
  %1625 = fadd fast float %362, 0x3FFDAA66E0000000
  %1626 = call float @dx.op.unary.f32(i32 22, float %1625)  ; Frc(value)
  %1627 = call float @dx.op.unary.f32(i32 23, float %1602)  ; Log(value)
  %1628 = fadd fast float %1627, -6.000000e+00
  %1629 = call float @dx.op.unary.f32(i32 21, float %1628)  ; Exp(value)
  %1630 = fmul fast float %1626, 2.000000e+00
  %1631 = fadd fast float %1630, -1.000000e+00
  %1632 = fmul fast float %1629, %1631
  %1633 = fcmp fast ogt float %1602, 0.000000e+00
  %1634 = select i1 %1633, float %1632, float 0.000000e+00
  %1635 = fadd fast float %1634, %1602
  %1636 = select i1 %120, float %1601, float %1624
  %1637 = select i1 %120, float %1602, float %1635
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1638 = call float @dx.op.binary.f32(i32 36, float %1613, float 3.225500e+04)  ; FMin(a,b)
  %1639 = call float @dx.op.binary.f32(i32 36, float %1636, float 3.225500e+04)  ; FMin(a,b)
  %1640 = call float @dx.op.binary.f32(i32 36, float %1637, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1638)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1639)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1640)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

