;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; TEXCOORDS                0   xy          1     NONE   float   xy  
; LMAPCOORDS               0   xyz         2     NONE   float       
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           5     NONE    uint   x   
; SV_IsFrontFace           0    y          5    FFACE    uint    y  
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
; shader hash: 77fb5659b3d7cbca453f32102150e318
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
; TEXCOORDS                0                 linear       
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; MATERIAL_DATA_OFFSET     0        nointerpolation       
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
;                                   sampler      NA          NA      S1             s0     1
;                                   sampler      NA          NA      S2             s1     1
;                                   sampler      NA          NA      S3             s2     1
;                                   sampler      NA          NA      S4             s3     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32          2d      T3     t33,space2     1
;                                   texture    byte         r/o      T4     t16,space1     1
;                                   texture    byte         r/o      T5     t17,space1     1
;                                   texture     f32          2d      T6     t69,space2     1
;                                   texture     f32          2d      T7     t37,space2     1
;                                   texture     f32          2d      T8     t58,space2     1
;                                   texture     u32     2darray      T9     t62,space2     1
;                                   texture     f32     2darray     T10     t63,space2     1
;                                   texture     f32          2d     T11     t57,space2     1
;                                   texture    byte         r/o     T12     t69,space1     1
;                                   texture     f32          2d     T13     t34,space2     1
;                                   texture    byte         r/o     T14     t68,space1     1
;                                   texture     f32          2d     T15      t0,space2     1
;                                   texture     f32          2d     T16     t48,space2     1
;                                   texture     f32          2d     T17     t12,space2     1
;                                   texture     f32          2d     T18     t55,space2     1
;                                       UAV     f32          2d      U0             u6     1
;                                       UAV     f32          2d      U1             u7     1
;
;
; ViewId state:
;
; Number of inputs: 22, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
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
%"class.Texture2DArray<vector<unsigned int, 4> >" = type { <4 x i32>, %"class.Texture2DArray<vector<unsigned int, 4> >::mips_type" }
%"class.Texture2DArray<vector<unsigned int, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%"class.RWTexture2D<vector<float, 2> >" = type { <2 x float> }
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
%struct.SamplerComparisonState = type { i32 }

@PCF_OFFSETS_4.0 = internal unnamed_addr constant [4 x float] [float 0x3FE6A161E0000000, float 0.000000e+00, float 0xBFD6A161E0000000, float 2.500000e-01], align 4
@PCF_OFFSETS_4.1 = internal unnamed_addr constant [4 x float] [float 0xBFE6A161E0000000, float 7.500000e-01, float 0xBFD6A161E0000000, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 55, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 63, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 62, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = alloca [4 x float], align 4
  %27 = alloca [4 x i32], align 4
  %28 = alloca [4 x float], align 4
  %29 = alloca [4 x float], align 4
  %30 = alloca [4 x i32], align 4
  %31 = alloca [4 x i32], align 4
  %32 = alloca [4 x float], align 4
  %33 = alloca [4 x float], align 4
  %34 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = icmp ne i32 %34, 0
  %36 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %53 = fmul fast float %52, %46
  %54 = fmul fast float %52, %47
  %55 = select i1 %35, float 1.000000e+00, float -1.000000e+00
  %56 = fmul fast float %41, %55
  %57 = fmul fast float %42, %55
  %58 = fmul fast float %43, %55
  %59 = fmul fast float %42, %39
  %60 = fmul fast float %43, %38
  %61 = fsub fast float %59, %60
  %62 = fmul fast float %43, %37
  %63 = fmul fast float %41, %39
  %64 = fsub fast float %62, %63
  %65 = fmul fast float %41, %38
  %66 = fmul fast float %42, %37
  %67 = fsub fast float %65, %66
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 3
  %71 = fmul fast float %69, 2.000000e+00
  %72 = fmul fast float %71, %53
  %73 = fmul fast float %70, 2.000000e+00
  %74 = fmul fast float %73, %54
  %75 = fsub fast float 1.000000e+00, %72
  %76 = fsub fast float 1.000000e+00, %74
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 0
  %79 = extractvalue %dx.types.CBufRet.f32 %77, 1
  %80 = extractvalue %dx.types.CBufRet.f32 %77, 2
  %81 = fmul fast float %75, %78
  %82 = fmul fast float %75, %79
  %83 = fmul fast float %75, %80
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 0
  %86 = extractvalue %dx.types.CBufRet.f32 %84, 1
  %87 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %88 = fmul fast float %76, %85
  %89 = fmul fast float %76, %86
  %90 = fmul fast float %76, %87
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 0
  %93 = extractvalue %dx.types.CBufRet.f32 %91, 1
  %94 = extractvalue %dx.types.CBufRet.f32 %91, 2
  %95 = fadd fast float %88, %92
  %96 = fadd fast float %95, %81
  %97 = fadd fast float %89, %93
  %98 = fadd fast float %97, %82
  %99 = fadd fast float %90, %94
  %100 = fadd fast float %99, %83
  %101 = fmul fast float %96, %48
  %102 = fmul fast float %98, %48
  %103 = fmul fast float %100, %48
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 3
  %107 = fmul fast float %105, %53
  %108 = fmul fast float %106, %54
  %109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %110 = extractvalue %dx.types.ResRet.i32 %109, 0
  %111 = and i32 %110, 114688
  %112 = icmp ne i32 %111, 0
  %113 = select i1 %112, float %107, float 0.000000e+00
  %114 = select i1 %112, float %108, float 0.000000e+00
  %115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %22, float %113, float %114, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  %117 = fmul fast float %116, 2.550000e+02
  %118 = fptoui float %117 to i32
  %119 = select i1 %112, i32 %118, i32 0
  %120 = shl i32 %119, 4
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.i32 %122, 3
  %124 = and i32 %123, 3
  %125 = icmp ne i32 %124, 0
  %126 = and i32 %123, 4
  %127 = icmp ne i32 %126, 0
  %128 = and i1 %125, %127
  br i1 %128, label %129, label %140

; <label>:129                                     ; preds = %0
  %130 = extractvalue %dx.types.CBufRet.f32 %121, 3
  %131 = fmul fast float %130, %54
  %132 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %133 = fmul fast float %132, %53
  %134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %21, float %133, float %131, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %135 = extractvalue %dx.types.ResRet.f32 %134, 0
  %136 = fsub fast float 1.000000e+00, %135
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = fcmp fast olt float %136, %138
  br label %143

; <label>:140                                     ; preds = %0
  %141 = icmp eq i32 %126, 0
  %142 = and i1 %125, %141
  br label %143

; <label>:143                                     ; preds = %140, %129
  %144 = phi i1 [ %139, %129 ], [ %142, %140 ]
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %147 = fmul fast float %146, 0x3FE3C6EF40000000
  %148 = frem fast float %53, 2.560000e+02
  %149 = frem fast float %54, 2.560000e+02
  %150 = fptoui float %148 to i32
  %151 = fptoui float %149 to i32
  %152 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %150, i32 %151, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %153 = extractvalue %dx.types.ResRet.f32 %152, 0
  %154 = fadd fast float %153, %147
  %155 = call float @dx.op.unary.f32(i32 22, float %154)  ; Frc(value)
  %156 = add i32 %36, 60
  %157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %156, i32 undef)  ; BufferLoad(srv,index,wot)
  %158 = extractvalue %dx.types.ResRet.i32 %157, 0
  %159 = shl i32 %158, 4
  %160 = and i32 %159, 32752
  %161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %160)  ; LegacyF16ToF32(value)
  %162 = lshr i32 %158, 7
  %163 = and i32 %162, 32752
  %164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %163)  ; LegacyF16ToF32(value)
  %165 = lshr i32 %158, 22
  %166 = shl nuw nsw i32 %165, 5
  %167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %166)  ; LegacyF16ToF32(value)
  %168 = add i32 %36, 72
  %169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %170 = extractvalue %dx.types.ResRet.i32 %169, 0
  %171 = and i32 %170, 255
  %172 = uitofp i32 %171 to float
  %173 = fmul fast float %172, 0x3F70101020000000
  %174 = lshr i32 %170, 8
  %175 = and i32 %174, 255
  %176 = uitofp i32 %175 to float
  %177 = fmul fast float %176, 0x3F70101020000000
  %178 = lshr i32 %170, 16
  %179 = and i32 %178, 255
  %180 = uitofp i32 %179 to float
  %181 = fmul fast float %180, 0x3F70101020000000
  %182 = add i32 %36, 36
  %183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = add i32 %36, 96
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = add i32 %36, 24
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = add i32 %36, 28
  %192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %191, i32 undef)  ; BufferLoad(srv,index,wot)
  %193 = extractvalue %dx.types.ResRet.i32 %192, 0
  %194 = or i32 %193, %190
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %693, label %196

; <label>:196                                     ; preds = %143
  %197 = lshr i32 %187, 16
  %198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %197)  ; LegacyF16ToF32(value)
  %199 = fmul fast float %198, 0x3F50624DE0000000
  %200 = and i32 %187, 65535
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = fmul fast float %201, 0x3F50624DE0000000
  %203 = lshr i32 %184, 16
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = and i32 %184, 65535
  %206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %205)  ; LegacyF16ToF32(value)
  %207 = add i32 %36, 92
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = lshr i32 %209, 16
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = fmul fast float %211, 0x3F50624DE0000000
  %213 = add i32 %36, 40
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = lshr i32 %215, 16
  %217 = and i32 %216, 255
  %218 = lshr i32 %215, 24
  %219 = add i32 %36, 100
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = and i32 %221, 65535
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %221, 16
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = add i32 %36, 32
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = lshr i32 %228, 22
  %230 = shl nuw nsw i32 %229, 5
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = shl i32 %228, 4
  %233 = and i32 %232, 32752
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = lshr i32 %228, 7
  %236 = and i32 %235, 32752
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 3
  %240 = fmul fast float %239, 1.000000e+03
  %241 = fmul fast float %202, %240
  %242 = call float @dx.op.unary.f32(i32 22, float %241)  ; Frc(value)
  %243 = fadd fast float %242, %206
  %244 = fmul fast float %199, %240
  %245 = call float @dx.op.unary.f32(i32 22, float %244)  ; Frc(value)
  %246 = fadd fast float %245, %204
  %247 = fmul fast float %212, %240
  %248 = call float @dx.op.unary.f32(i32 22, float %247)  ; Frc(value)
  %249 = fmul fast float %248, 0x401921FB60000000
  %250 = fadd fast float %249, %231
  %251 = call float @dx.op.unary.f32(i32 13, float %250)  ; Sin(value)
  %252 = call float @dx.op.unary.f32(i32 12, float %250)  ; Cos(value)
  %253 = fsub fast float -0.000000e+00, %251
  %254 = fadd fast float %44, -5.000000e-01
  %255 = fadd fast float %45, -5.000000e-01
  %256 = fmul fast float %223, %254
  %257 = fmul fast float %225, %255
  %258 = fadd fast float %256, 5.000000e-01
  %259 = fadd fast float %257, 5.000000e-01
  %260 = fmul fast float %234, %258
  %261 = fmul fast float %237, %259
  %262 = fmul fast float %252, %260
  %263 = call float @dx.op.tertiary.f32(i32 46, float %253, float %261, float %262)  ; FMad(a,b,c)
  %264 = fmul fast float %251, %260
  %265 = call float @dx.op.tertiary.f32(i32 46, float %252, float %261, float %264)  ; FMad(a,b,c)
  %266 = fadd fast float %243, %263
  %267 = fadd fast float %246, %265
  %268 = icmp ugt i32 %217, 1
  %269 = icmp ugt i32 %215, 33554431
  %270 = or i1 %269, %268
  br i1 %270, label %271, label %296

; <label>:271                                     ; preds = %196
  %272 = add i32 %36, 84
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = lshr i32 %274, 16
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = fmul fast float %239, %276
  %278 = call float @dx.op.unary.f32(i32 22, float %277)  ; Frc(value)
  %279 = mul nuw nsw i32 %217, %218
  %280 = uitofp i32 %279 to float
  %281 = fmul fast float %278, %280
  %282 = call float @dx.op.unary.f32(i32 27, float %281)  ; Round_ni(value)
  %283 = fptoui float %282 to i32
  %284 = urem i32 %283, %217
  %285 = udiv i32 %283, %218
  %286 = call float @dx.op.unary.f32(i32 22, float %266)  ; Frc(value)
  %287 = call float @dx.op.unary.f32(i32 22, float %267)  ; Frc(value)
  %288 = uitofp i32 %284 to float
  %289 = uitofp i32 %285 to float
  %290 = fadd fast float %286, %288
  %291 = fadd fast float %287, %289
  %292 = uitofp i32 %217 to float
  %293 = uitofp i32 %218 to float
  %294 = fdiv fast float %290, %292
  %295 = fdiv fast float %291, %293
  br label %296

; <label>:296                                     ; preds = %271, %196
  %297 = phi float [ %294, %271 ], [ %266, %196 ]
  %298 = phi float [ %295, %271 ], [ %267, %196 ]
  %299 = and i32 %190, 16
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %497, label %301

; <label>:301                                     ; preds = %296
  %302 = add i32 %36, 120
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = add i32 %304, 0
  %306 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %305, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %307 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %306, %dx.types.Handle %49, float %297, float %298, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 0
  %309 = extractvalue %dx.types.ResRet.f32 %307, 1
  %310 = extractvalue %dx.types.ResRet.f32 %307, 2
  %311 = extractvalue %dx.types.ResRet.f32 %307, 3
  %312 = and i32 %215, 255
  %313 = uitofp i32 %312 to float
  %314 = lshr i32 %215, 8
  %315 = and i32 %314, 255
  %316 = uitofp i32 %315 to float
  %317 = fmul fast float %311, %313
  %318 = fadd fast float %317, %316
  %319 = fmul fast float %318, 0x3F70101000000000
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = and i32 %321, 512
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %332, label %324

; <label>:324                                     ; preds = %301
  %325 = add i32 %36, 140
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = add i32 %327, 0
  %329 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %328, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %330 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %329, %dx.types.Handle %50, float %297, float %298, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %331 = extractvalue %dx.types.ResRet.f32 %330, 0
  br label %332

; <label>:332                                     ; preds = %324, %301
  %333 = phi float [ %331, %324 ], [ 1.000000e+00, %301 ]
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = and i32 %335, 33554432
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %444, label %338

; <label>:338                                     ; preds = %332
  %339 = add i32 %36, 80
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = add i32 %36, 84
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = lshr i32 %352, 24
  %354 = uitofp i32 %353 to float
  %355 = fmul fast float %354, 0x3F70101020000000
  %356 = and i32 %352, 255
  %357 = uitofp i32 %356 to float
  %358 = fmul fast float %357, 0x3F70101020000000
  %359 = lshr i32 %352, 8
  %360 = and i32 %359, 255
  %361 = uitofp i32 %360 to float
  %362 = fmul fast float %361, 0x3F70101020000000
  %363 = lshr i32 %352, 16
  %364 = and i32 %363, 255
  %365 = uitofp i32 %364 to float
  %366 = fmul fast float %365, 0x3F70101020000000
  %367 = add i32 %36, 76
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = lshr i32 %369, 24
  %371 = uitofp i32 %370 to float
  %372 = fmul fast float %371, 0x3F70101020000000
  %373 = and i32 %369, 255
  %374 = uitofp i32 %373 to float
  %375 = fmul fast float %374, 0x3F70101020000000
  %376 = lshr i32 %369, 8
  %377 = and i32 %376, 255
  %378 = uitofp i32 %377 to float
  %379 = fmul fast float %378, 0x3F70101020000000
  %380 = lshr i32 %369, 16
  %381 = and i32 %380, 255
  %382 = uitofp i32 %381 to float
  %383 = fmul fast float %382, 0x3F70101020000000
  %384 = bitcast float %308 to i32
  %385 = ashr i32 %384, 1
  %386 = sub nsw i32 1597463174, %385
  %387 = bitcast i32 %386 to float
  %388 = fmul fast float %308, 5.000000e-01
  %389 = fmul fast float %387, %387
  %390 = fmul fast float %389, %388
  %391 = fsub fast float 1.500000e+00, %390
  %392 = fmul fast float %387, %308
  %393 = fmul fast float %392, %391
  %394 = bitcast float %309 to i32
  %395 = ashr i32 %394, 1
  %396 = sub nsw i32 1597463174, %395
  %397 = bitcast i32 %396 to float
  %398 = fmul fast float %309, 5.000000e-01
  %399 = fmul fast float %397, %397
  %400 = fmul fast float %399, %398
  %401 = fsub fast float 1.500000e+00, %400
  %402 = fmul fast float %397, %309
  %403 = fmul fast float %402, %401
  %404 = bitcast float %310 to i32
  %405 = ashr i32 %404, 1
  %406 = sub nsw i32 1597463174, %405
  %407 = bitcast i32 %406 to float
  %408 = fmul fast float %310, 5.000000e-01
  %409 = fmul fast float %407, %407
  %410 = fmul fast float %409, %408
  %411 = fsub fast float 1.500000e+00, %410
  %412 = fmul fast float %407, %310
  %413 = fmul fast float %412, %411
  %414 = fsub fast float %393, %375
  %415 = fsub fast float %403, %379
  %416 = fsub fast float %413, %383
  %417 = fmul fast float %414, %343
  %418 = fmul fast float %415, %345
  %419 = fmul fast float %416, %350
  %420 = fadd fast float %417, %358
  %421 = fadd fast float %418, %362
  %422 = fadd fast float %419, %366
  %423 = call float @dx.op.unary.f32(i32 7, float %420)  ; Saturate(value)
  %424 = call float @dx.op.unary.f32(i32 7, float %421)  ; Saturate(value)
  %425 = call float @dx.op.unary.f32(i32 7, float %422)  ; Saturate(value)
  %426 = fmul fast float %423, %423
  %427 = fmul fast float %424, %424
  %428 = fmul fast float %425, %425
  %429 = fsub fast float %426, %308
  %430 = fsub fast float %427, %309
  %431 = fsub fast float %428, %310
  %432 = fmul fast float %429, %333
  %433 = fmul fast float %430, %333
  %434 = fmul fast float %431, %333
  %435 = fadd fast float %432, %308
  %436 = fadd fast float %433, %309
  %437 = fadd fast float %434, %310
  %438 = fadd fast float %355, %319
  %439 = fsub fast float %438, %372
  %440 = call float @dx.op.unary.f32(i32 7, float %439)  ; Saturate(value)
  %441 = fsub fast float %440, %319
  %442 = fmul fast float %441, %333
  %443 = fadd fast float %442, %319
  br label %497

; <label>:444                                     ; preds = %332
  %445 = and i32 %335, 134217728
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %481, label %447

; <label>:447                                     ; preds = %444
  %448 = call float @dx.op.unary.f32(i32 24, float %173)  ; Sqrt(value)
  %449 = call float @dx.op.unary.f32(i32 24, float %177)  ; Sqrt(value)
  %450 = call float @dx.op.unary.f32(i32 24, float %181)  ; Sqrt(value)
  %451 = fadd fast float %448, -5.000000e-01
  %452 = fadd fast float %449, -5.000000e-01
  %453 = fadd fast float %450, -5.000000e-01
  %454 = fmul fast float %451, %333
  %455 = fmul fast float %452, %333
  %456 = fmul fast float %453, %333
  %457 = fadd fast float %454, 5.000000e-01
  %458 = fadd fast float %455, 5.000000e-01
  %459 = fadd fast float %456, 5.000000e-01
  %460 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %461 = call float @dx.op.unary.f32(i32 24, float %309)  ; Sqrt(value)
  %462 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %463 = fmul fast float %457, 2.000000e+00
  %464 = fsub fast float 1.000000e+00, %463
  %465 = fmul fast float %464, %460
  %466 = fadd fast float %465, %463
  %467 = fmul fast float %466, %460
  %468 = fmul fast float %458, 2.000000e+00
  %469 = fsub fast float 1.000000e+00, %468
  %470 = fmul fast float %469, %461
  %471 = fadd fast float %470, %468
  %472 = fmul fast float %471, %461
  %473 = fmul fast float %459, 2.000000e+00
  %474 = fsub fast float 1.000000e+00, %473
  %475 = fmul fast float %474, %462
  %476 = fadd fast float %475, %473
  %477 = fmul fast float %476, %462
  %478 = fmul fast float %467, %467
  %479 = fmul fast float %472, %472
  %480 = fmul fast float %477, %477
  br label %497

; <label>:481                                     ; preds = %444
  %482 = fmul fast float %173, %173
  %483 = fmul fast float %177, %177
  %484 = fmul fast float %181, %181
  %485 = fadd fast float %482, -1.000000e+00
  %486 = fadd fast float %483, -1.000000e+00
  %487 = fadd fast float %484, -1.000000e+00
  %488 = fmul fast float %333, %485
  %489 = fmul fast float %333, %486
  %490 = fmul fast float %333, %487
  %491 = fadd fast float %488, 1.000000e+00
  %492 = fadd fast float %489, 1.000000e+00
  %493 = fadd fast float %490, 1.000000e+00
  %494 = fmul fast float %491, %308
  %495 = fmul fast float %492, %309
  %496 = fmul fast float %493, %310
  br label %497

; <label>:497                                     ; preds = %481, %447, %338, %296
  %498 = phi float [ %443, %338 ], [ %319, %447 ], [ %319, %481 ], [ 0x3FA23C0BE0000000, %296 ]
  %499 = phi float [ %435, %338 ], [ %478, %447 ], [ %494, %481 ], [ 1.000000e+00, %296 ]
  %500 = phi float [ %436, %338 ], [ %479, %447 ], [ %495, %481 ], [ 1.000000e+00, %296 ]
  %501 = phi float [ %437, %338 ], [ %480, %447 ], [ %496, %481 ], [ 1.000000e+00, %296 ]
  %502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %503 = extractvalue %dx.types.CBufRet.i32 %502, 1
  %504 = and i32 %503, 1
  %505 = icmp ne i32 %504, 0
  %506 = add i32 %36, 116
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = and i32 %508, 32
  %510 = icmp ne i32 %509, 0
  %511 = and i1 %505, %510
  %512 = select i1 %511, float 1.000000e+00, float %499
  %513 = select i1 %511, float 0x3FD3333340000000, float %500
  %514 = select i1 %511, float 0x3FD3333340000000, float %501
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = and i32 %516, 32
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %591, label %519

; <label>:519                                     ; preds = %497
  %520 = add i32 %36, 44
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = add i32 %36, 124
  %524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.i32 %524, 0
  %526 = add i32 %525, 0
  %527 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %526, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %528 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %527, %dx.types.Handle %49, float %297, float %298, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %529 = extractvalue %dx.types.ResRet.f32 %528, 0
  %530 = extractvalue %dx.types.ResRet.f32 %528, 1
  %531 = extractvalue %dx.types.ResRet.f32 %528, 2
  %532 = extractvalue %dx.types.ResRet.f32 %528, 3
  %533 = and i32 %522, 255
  %534 = uitofp i32 %533 to float
  %535 = lshr i32 %522, 8
  %536 = and i32 %535, 255
  %537 = uitofp i32 %536 to float
  %538 = lshr i32 %522, 16
  %539 = and i32 %538, 255
  %540 = uitofp i32 %539 to float
  %541 = fmul fast float %540, 0x3F70101000000000
  %542 = fmul fast float %529, %534
  %543 = fadd fast float %542, %537
  %544 = fmul fast float %543, 0x3F70101000000000
  %545 = fadd fast float %530, -5.000000e-01
  %546 = fadd fast float %532, -5.000000e-01
  %547 = fmul fast float %545, %541
  %548 = fmul fast float %546, %541
  %549 = fadd fast float %547, 5.000000e-01
  %550 = fadd fast float %548, 5.000000e-01
  %551 = fmul fast float %549, 2.000000e+00
  %552 = fadd fast float %551, -1.000000e+00
  %553 = fmul fast float %550, 2.000000e+00
  %554 = fadd fast float %553, -1.000000e+00
  %555 = fadd fast float %552, %554
  %556 = fmul fast float %555, 5.000000e-01
  %557 = fsub fast float %552, %554
  %558 = fmul fast float %557, 5.000000e-01
  %559 = call float @dx.op.unary.f32(i32 6, float %556)  ; FAbs(value)
  %560 = fsub fast float 1.000000e+00, %559
  %561 = call float @dx.op.unary.f32(i32 6, float %558)  ; FAbs(value)
  %562 = fsub fast float %560, %561
  %563 = call float @dx.op.dot3.f32(i32 55, float %556, float %558, float %562, float %556, float %558, float %562)  ; Dot3(ax,ay,az,bx,by,bz)
  %564 = call float @dx.op.unary.f32(i32 25, float %563)  ; Rsqrt(value)
  %565 = fmul fast float %556, %564
  %566 = fmul fast float %558, %564
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = and i32 %568, 67108864
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %587, label %571

; <label>:571                                     ; preds = %519
  %572 = add i32 %36, 88
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = and i32 %574, 65535
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = and i32 %578, 65535
  %580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %579)  ; LegacyF16ToF32(value)
  %581 = lshr i32 %574, 16
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = fsub fast float %544, %582
  %584 = fmul fast float %583, %576
  %585 = fadd fast float %584, %580
  %586 = call float @dx.op.unary.f32(i32 7, float %585)  ; Saturate(value)
  br label %587

; <label>:587                                     ; preds = %571, %519
  %588 = phi float [ %586, %571 ], [ %544, %519 ]
  %589 = call float @dx.op.dot2.f32(i32 54, float %565, float %566, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %590 = call float @dx.op.dot2.f32(i32 54, float %565, float %566, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %591

; <label>:591                                     ; preds = %587, %497
  %592 = phi float [ %588, %587 ], [ 0x3FD6666660000000, %497 ]
  %593 = phi float [ %589, %587 ], [ 0.000000e+00, %497 ]
  %594 = phi float [ %590, %587 ], [ 0.000000e+00, %497 ]
  %595 = phi float [ %531, %587 ], [ 1.000000e+00, %497 ]
  %596 = add i32 %36, 64
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = lshr i32 %598, 22
  %600 = shl nuw nsw i32 %599, 5
  %601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %600)  ; LegacyF16ToF32(value)
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = and i32 %603, 64
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %639, label %606

; <label>:606                                     ; preds = %591
  %607 = add i32 %36, 128
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = add i32 %609, 0
  %611 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %610, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = and i32 %613, 131072
  %615 = icmp eq i32 %614, 0
  %616 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %611, %dx.types.Handle %49, float %297, float %298, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %617 = extractvalue %dx.types.ResRet.f32 %616, 0
  %618 = extractvalue %dx.types.ResRet.f32 %616, 1
  %619 = extractvalue %dx.types.ResRet.f32 %616, 2
  %620 = fmul fast float %617, %161
  %621 = fmul fast float %618, %164
  %622 = fmul fast float %619, %167
  br i1 %615, label %629, label %623

; <label>:623                                     ; preds = %606
  %624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.f32 %624, 0
  %626 = fmul fast float %625, %620
  %627 = fmul fast float %625, %621
  %628 = fmul fast float %625, %622
  br label %629

; <label>:629                                     ; preds = %623, %606
  %630 = phi float [ %626, %623 ], [ %620, %606 ]
  %631 = phi float [ %627, %623 ], [ %621, %606 ]
  %632 = phi float [ %628, %623 ], [ %622, %606 ]
  %633 = fmul fast float %630, %601
  %634 = select i1 %144, float %633, float %630
  %635 = call float @dx.op.dot3.f32(i32 55, float %634, float %631, float %632, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %636 = select i1 %144, float 0.000000e+00, float %630
  %637 = select i1 %144, float %635, float %631
  %638 = select i1 %144, float 0.000000e+00, float %632
  br label %639

; <label>:639                                     ; preds = %629, %591
  %640 = phi float [ %636, %629 ], [ 0.000000e+00, %591 ]
  %641 = phi float [ %637, %629 ], [ 0.000000e+00, %591 ]
  %642 = phi float [ %638, %629 ], [ 0.000000e+00, %591 ]
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = and i32 %644, 10240
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %676, label %647

; <label>:647                                     ; preds = %639
  %648 = add i32 %36, 144
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %648, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = add i32 %650, 0
  %652 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %651, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %653 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %652, %dx.types.Handle %50, float %297, float %298, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %654 = extractvalue %dx.types.ResRet.f32 %653, 1
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = and i32 %656, 1048576
  %658 = icmp ne i32 %657, 0
  %659 = and i32 %656, 8192
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %676, label %661

; <label>:661                                     ; preds = %647
  %662 = extractvalue %dx.types.ResRet.f32 %653, 2
  %663 = select i1 %658, float %662, float %654
  %664 = extractvalue %dx.types.ResRet.f32 %653, 0
  %665 = select i1 %658, float %664, float %654
  %666 = add i32 %36, 48
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %666, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = lshr i32 %668, 16
  %670 = and i32 %669, 255
  %671 = uitofp i32 %670 to float
  %672 = fmul fast float %671, 0x3F80101020000000
  %673 = fmul fast float %672, %665
  %674 = fmul fast float %672, %654
  %675 = fmul fast float %672, %663
  br label %676

; <label>:676                                     ; preds = %661, %647, %639
  %677 = phi float [ 0.000000e+00, %639 ], [ %673, %661 ], [ 0.000000e+00, %647 ]
  %678 = phi float [ 0.000000e+00, %639 ], [ %674, %661 ], [ 0.000000e+00, %647 ]
  %679 = phi float [ 0.000000e+00, %639 ], [ %675, %661 ], [ 0.000000e+00, %647 ]
  %680 = add i32 %36, 48
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %680, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = and i32 %682, 255
  %684 = uitofp i32 %683 to float
  %685 = lshr i32 %682, 8
  %686 = and i32 %685, 255
  %687 = uitofp i32 %686 to float
  %688 = call float @dx.op.dot3.f32(i32 55, float %512, float %513, float %514, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %689 = fmul fast float %687, %688
  %690 = fadd fast float %689, %684
  %691 = fmul fast float %690, 0x3F70101020000000
  %692 = call float @dx.op.unary.f32(i32 7, float %691)  ; Saturate(value)
  br label %693

; <label>:693                                     ; preds = %676, %143
  %694 = phi float [ 0.000000e+00, %143 ], [ %593, %676 ]
  %695 = phi float [ 0.000000e+00, %143 ], [ %594, %676 ]
  %696 = phi float [ 0.000000e+00, %143 ], [ %512, %676 ]
  %697 = phi float [ 0.000000e+00, %143 ], [ %513, %676 ]
  %698 = phi float [ 0.000000e+00, %143 ], [ %514, %676 ]
  %699 = phi float [ 0.000000e+00, %143 ], [ %640, %676 ]
  %700 = phi float [ 0.000000e+00, %143 ], [ %641, %676 ]
  %701 = phi float [ 0.000000e+00, %143 ], [ %642, %676 ]
  %702 = phi float [ 0.000000e+00, %143 ], [ %677, %676 ]
  %703 = phi float [ 0.000000e+00, %143 ], [ %678, %676 ]
  %704 = phi float [ 0.000000e+00, %143 ], [ %679, %676 ]
  %705 = phi float [ 0.000000e+00, %143 ], [ %498, %676 ]
  %706 = phi float [ 0.000000e+00, %143 ], [ 1.000000e+00, %676 ]
  %707 = phi float [ 0.000000e+00, %143 ], [ %592, %676 ]
  %708 = phi float [ 0.000000e+00, %143 ], [ %595, %676 ]
  %709 = phi float [ 0.000000e+00, %143 ], [ %692, %676 ]
  %710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.f32 %710, 0
  %712 = call float @dx.op.dot2.f32(i32 54, float %694, float %695, float %694, float %695)  ; Dot2(ax,ay,bx,by)
  %713 = fmul fast float %712, 0x3FE3333340000000
  %714 = fsub fast float 1.000000e+00, %713
  %715 = call float @dx.op.dot3.f32(i32 55, float %694, float %695, float %714, float %694, float %695, float %714)  ; Dot3(ax,ay,az,bx,by,bz)
  %716 = call float @dx.op.unary.f32(i32 25, float %715)  ; Rsqrt(value)
  %717 = fmul fast float %716, %694
  %718 = fmul fast float %716, %695
  %719 = fmul fast float %714, %716
  %720 = fmul fast float %719, %56
  %721 = fmul fast float %719, %57
  %722 = fmul fast float %719, %58
  %723 = fmul fast float %717, %37
  %724 = fmul fast float %717, %38
  %725 = fmul fast float %717, %39
  %726 = fmul fast float %61, %40
  %727 = fmul fast float %726, %718
  %728 = fmul fast float %64, %40
  %729 = fmul fast float %728, %718
  %730 = fmul fast float %67, %40
  %731 = fmul fast float %730, %718
  %732 = fadd fast float %727, %723
  %733 = fmul fast float %732, %55
  %734 = fadd fast float %733, %720
  %735 = fadd fast float %729, %724
  %736 = fmul fast float %735, %55
  %737 = fadd fast float %736, %721
  %738 = fadd fast float %731, %725
  %739 = fmul fast float %738, %55
  %740 = fadd fast float %739, %722
  %741 = call float @dx.op.dot3.f32(i32 55, float %734, float %737, float %740, float %734, float %737, float %740)  ; Dot3(ax,ay,az,bx,by,bz)
  %742 = call float @dx.op.unary.f32(i32 25, float %741)  ; Rsqrt(value)
  %743 = fmul fast float %734, %742
  %744 = fmul fast float %737, %742
  %745 = fmul fast float %740, %742
  %746 = call float @dx.op.unary.f32(i32 83, float %101)  ; DerivCoarseX(value)
  %747 = call float @dx.op.unary.f32(i32 83, float %102)  ; DerivCoarseX(value)
  %748 = call float @dx.op.unary.f32(i32 83, float %103)  ; DerivCoarseX(value)
  %749 = call float @dx.op.unary.f32(i32 84, float %101)  ; DerivCoarseY(value)
  %750 = call float @dx.op.unary.f32(i32 84, float %102)  ; DerivCoarseY(value)
  %751 = call float @dx.op.unary.f32(i32 84, float %103)  ; DerivCoarseY(value)
  %752 = fadd fast float %746, %101
  %753 = fadd fast float %747, %102
  %754 = fadd fast float %748, %103
  %755 = fadd fast float %749, %101
  %756 = fadd fast float %750, %102
  %757 = fadd fast float %751, %103
  %758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %759 = extractvalue %dx.types.CBufRet.f32 %758, 0
  %760 = extractvalue %dx.types.CBufRet.f32 %758, 1
  %761 = extractvalue %dx.types.CBufRet.f32 %758, 2
  %762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.f32 %762, 2
  %764 = extractvalue %dx.types.CBufRet.f32 %762, 3
  %765 = fmul fast float %759, %53
  %766 = fmul fast float %765, %763
  %767 = fmul fast float %760, %54
  %768 = fmul fast float %767, %764
  %769 = fptoui float %766 to i32
  %770 = fptoui float %768 to i32
  %771 = fadd fast float %759, -1.000000e+00
  %772 = fadd fast float %760, -1.000000e+00
  %773 = fptoui float %771 to i32
  %774 = fptoui float %772 to i32
  %775 = call i32 @dx.op.binary.i32(i32 40, i32 %769, i32 %773)  ; UMin(a,b)
  %776 = call i32 @dx.op.binary.i32(i32 40, i32 %770, i32 %774)  ; UMin(a,b)
  %777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %778 = extractvalue %dx.types.CBufRet.f32 %777, 2
  %779 = extractvalue %dx.types.CBufRet.f32 %777, 3
  %780 = fmul fast float %778, %48
  %781 = fsub fast float %780, %779
  %782 = fadd fast float %761, -1.000000e+00
  %783 = call float @dx.op.binary.f32(i32 36, float %781, float %782)  ; FMin(a,b)
  %784 = fptoui float %783 to i32
  %785 = fptoui float %759 to i32
  %786 = fptoui float %760 to i32
  %787 = mul i32 %784, %786
  %788 = add i32 %787, %776
  %789 = mul i32 %788, %785
  %790 = add i32 %789, %775
  %791 = shl i32 %790, 2
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = and i32 %793, 1023
  %795 = lshr i32 %793, 10
  %796 = icmp eq i32 %794, 0
  br i1 %796, label %1273, label %797

; <label>:797                                     ; preds = %693
  %798 = and i32 %793, 1023
  br label %799

; <label>:799                                     ; preds = %928, %797
  %800 = phi float [ %929, %928 ], [ 0.000000e+00, %797 ]
  %801 = phi float [ %930, %928 ], [ %711, %797 ]
  %802 = phi float [ %931, %928 ], [ %709, %797 ]
  %803 = phi float [ %932, %928 ], [ 0.000000e+00, %797 ]
  %804 = phi float [ %933, %928 ], [ 0.000000e+00, %797 ]
  %805 = phi float [ %934, %928 ], [ %702, %797 ]
  %806 = phi float [ %935, %928 ], [ %703, %797 ]
  %807 = phi float [ %936, %928 ], [ %704, %797 ]
  %808 = phi float [ %937, %928 ], [ %699, %797 ]
  %809 = phi float [ %938, %928 ], [ %700, %797 ]
  %810 = phi float [ %939, %928 ], [ %701, %797 ]
  %811 = phi float [ %940, %928 ], [ %743, %797 ]
  %812 = phi float [ %941, %928 ], [ %744, %797 ]
  %813 = phi float [ %942, %928 ], [ %745, %797 ]
  %814 = phi float [ %943, %928 ], [ %708, %797 ]
  %815 = phi float [ %944, %928 ], [ %707, %797 ]
  %816 = phi float [ %945, %928 ], [ 0.000000e+00, %797 ]
  %817 = phi float [ %946, %928 ], [ %705, %797 ]
  %818 = phi float [ %947, %928 ], [ %696, %797 ]
  %819 = phi float [ %948, %928 ], [ %697, %797 ]
  %820 = phi float [ %949, %928 ], [ %698, %797 ]
  %821 = phi i32 [ %878, %928 ], [ 0, %797 ]
  %822 = add nuw nsw i32 %821, %795
  %823 = shl i32 %822, 2
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = shl i32 %825, 8
  %827 = or i32 %826, 48
  %828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.f32 %828, 0
  %830 = extractvalue %dx.types.ResRet.f32 %828, 1
  %831 = extractvalue %dx.types.ResRet.f32 %828, 2
  %832 = extractvalue %dx.types.ResRet.f32 %828, 3
  %833 = or i32 %826, 64
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = extractvalue %dx.types.ResRet.i32 %834, 1
  %837 = or i32 %826, 80
  %838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %837, i32 undef)  ; BufferLoad(srv,index,wot)
  %839 = extractvalue %dx.types.ResRet.f32 %838, 2
  %840 = extractvalue %dx.types.ResRet.f32 %838, 3
  %841 = or i32 %826, 96
  %842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.f32 %842, 0
  %844 = extractvalue %dx.types.ResRet.f32 %842, 1
  %845 = extractvalue %dx.types.ResRet.f32 %842, 2
  %846 = extractvalue %dx.types.ResRet.f32 %842, 3
  %847 = or i32 %826, 112
  %848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %847, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.f32 %848, 2
  %850 = or i32 %826, 128
  %851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %850, i32 undef)  ; BufferLoad(srv,index,wot)
  %852 = extractvalue %dx.types.ResRet.f32 %851, 0
  %853 = extractvalue %dx.types.ResRet.f32 %851, 1
  %854 = extractvalue %dx.types.ResRet.f32 %851, 2
  %855 = extractvalue %dx.types.ResRet.f32 %851, 3
  %856 = or i32 %826, 144
  %857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.f32 %857, 0
  %859 = extractvalue %dx.types.ResRet.f32 %857, 1
  %860 = extractvalue %dx.types.ResRet.f32 %857, 2
  %861 = extractvalue %dx.types.ResRet.f32 %857, 3
  %862 = or i32 %826, 160
  %863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %862, i32 undef)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.f32 %863, 0
  %865 = extractvalue %dx.types.ResRet.f32 %863, 1
  %866 = extractvalue %dx.types.ResRet.f32 %863, 2
  %867 = extractvalue %dx.types.ResRet.f32 %863, 3
  %868 = or i32 %826, 192
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %868, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = or i32 %826, 208
  %872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.f32 %872, 0
  %874 = or i32 %826, 248
  %875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.f32 %875, 0
  %877 = extractvalue %dx.types.ResRet.f32 %875, 1
  %878 = add nuw nsw i32 %821, 1
  %879 = bitcast float %832 to i32
  %880 = and i32 %879, 2560
  %881 = icmp eq i32 %880, 2048
  %882 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %826, i32 undef)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.f32 %882, 0
  %884 = extractvalue %dx.types.ResRet.f32 %882, 1
  %885 = extractvalue %dx.types.ResRet.f32 %882, 2
  %886 = extractvalue %dx.types.ResRet.f32 %882, 3
  %887 = call float @dx.op.dot4.f32(i32 56, float %883, float %884, float %885, float %886, float %101, float %102, float %103, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %888 = or i32 %826, 16
  %889 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.f32 %889, 0
  %891 = extractvalue %dx.types.ResRet.f32 %889, 1
  %892 = extractvalue %dx.types.ResRet.f32 %889, 2
  %893 = extractvalue %dx.types.ResRet.f32 %889, 3
  %894 = call float @dx.op.dot4.f32(i32 56, float %890, float %891, float %892, float %893, float %101, float %102, float %103, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %895 = or i32 %826, 32
  %896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.f32 %896, 0
  %898 = extractvalue %dx.types.ResRet.f32 %896, 1
  %899 = extractvalue %dx.types.ResRet.f32 %896, 2
  %900 = extractvalue %dx.types.ResRet.f32 %896, 3
  %901 = call float @dx.op.dot4.f32(i32 56, float %897, float %898, float %899, float %900, float %101, float %102, float %103, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %902 = call float @dx.op.unary.f32(i32 27, float %887)  ; Round_ni(value)
  %903 = call float @dx.op.unary.f32(i32 6, float %902)  ; FAbs(value)
  %904 = call float @dx.op.unary.f32(i32 27, float %894)  ; Round_ni(value)
  %905 = call float @dx.op.unary.f32(i32 6, float %904)  ; FAbs(value)
  %906 = call float @dx.op.unary.f32(i32 6, float %901)  ; FAbs(value)
  %907 = call float @dx.op.unary.f32(i32 27, float %906)  ; Round_ni(value)
  %908 = fadd fast float %905, %903
  %909 = fadd fast float %908, %907
  %910 = fcmp fast oeq float %909, 0.000000e+00
  %911 = call float @dx.op.dot4.f32(i32 56, float %883, float %884, float %885, float %886, float %752, float %753, float %754, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %912 = call float @dx.op.dot4.f32(i32 56, float %890, float %891, float %892, float %893, float %752, float %753, float %754, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %913 = call float @dx.op.dot4.f32(i32 56, float %883, float %884, float %885, float %886, float %755, float %756, float %757, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %914 = call float @dx.op.dot4.f32(i32 56, float %890, float %891, float %892, float %893, float %755, float %756, float %757, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %915 = fsub fast float %911, %887
  %916 = fsub fast float %913, %887
  %917 = fsub fast float %912, %894
  %918 = fsub fast float %914, %894
  %919 = call float @dx.op.dot3.f32(i32 55, float %829, float %830, float %831, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %921 = extractvalue %dx.types.CBufRet.f32 %920, 2
  %922 = fadd fast float %921, %919
  %923 = call float @dx.op.unary.f32(i32 7, float %922)  ; Saturate(value)
  %924 = extractvalue %dx.types.CBufRet.f32 %920, 0
  %925 = fcmp fast ogt float %923, %924
  %926 = and i1 %910, %925
  %927 = and i1 %881, %926
  br i1 %927, label %951, label %928

; <label>:928                                     ; preds = %1259, %1032, %951, %799
  %929 = phi float [ %800, %951 ], [ %1035, %1032 ], [ %1035, %1259 ], [ %800, %799 ]
  %930 = phi float [ %801, %951 ], [ %801, %1032 ], [ %1235, %1259 ], [ %801, %799 ]
  %931 = phi float [ %802, %951 ], [ %802, %1032 ], [ %1233, %1259 ], [ %802, %799 ]
  %932 = phi float [ %803, %951 ], [ %803, %1032 ], [ %1159, %1259 ], [ %803, %799 ]
  %933 = phi float [ %804, %951 ], [ %804, %1032 ], [ %1157, %1259 ], [ %804, %799 ]
  %934 = phi float [ %805, %951 ], [ %805, %1032 ], [ %1203, %1259 ], [ %805, %799 ]
  %935 = phi float [ %806, %951 ], [ %806, %1032 ], [ %1204, %1259 ], [ %806, %799 ]
  %936 = phi float [ %807, %951 ], [ %807, %1032 ], [ %1205, %1259 ], [ %807, %799 ]
  %937 = phi float [ %808, %951 ], [ %808, %1032 ], [ %1269, %1259 ], [ %808, %799 ]
  %938 = phi float [ %809, %951 ], [ %809, %1032 ], [ %1270, %1259 ], [ %809, %799 ]
  %939 = phi float [ %810, %951 ], [ %810, %1032 ], [ %1271, %1259 ], [ %810, %799 ]
  %940 = phi float [ %811, %951 ], [ %811, %1032 ], [ %1138, %1259 ], [ %811, %799 ]
  %941 = phi float [ %812, %951 ], [ %812, %1032 ], [ %1139, %1259 ], [ %812, %799 ]
  %942 = phi float [ %813, %951 ], [ %813, %1032 ], [ %1140, %1259 ], [ %813, %799 ]
  %943 = phi float [ %814, %951 ], [ %814, %1032 ], [ %1213, %1259 ], [ %814, %799 ]
  %944 = phi float [ %815, %951 ], [ %815, %1032 ], [ %1210, %1259 ], [ %815, %799 ]
  %945 = phi float [ %816, %951 ], [ %816, %1032 ], [ %1207, %1259 ], [ %816, %799 ]
  %946 = phi float [ %817, %951 ], [ %817, %1032 ], [ %1155, %1259 ], [ %817, %799 ]
  %947 = phi float [ %818, %951 ], [ %818, %1032 ], [ %1150, %1259 ], [ %818, %799 ]
  %948 = phi float [ %819, %951 ], [ %819, %1032 ], [ %1151, %1259 ], [ %819, %799 ]
  %949 = phi float [ %820, %951 ], [ %820, %1032 ], [ %1152, %1259 ], [ %820, %799 ]
  %950 = icmp eq i32 %878, %798
  br i1 %950, label %1272, label %799

; <label>:951                                     ; preds = %799
  %952 = extractvalue %dx.types.ResRet.f32 %848, 3
  %953 = extractvalue %dx.types.ResRet.f32 %848, 1
  %954 = extractvalue %dx.types.ResRet.f32 %848, 0
  %955 = extractvalue %dx.types.ResRet.f32 %838, 1
  %956 = extractvalue %dx.types.ResRet.f32 %838, 0
  %957 = extractvalue %dx.types.ResRet.i32 %834, 3
  %958 = extractvalue %dx.types.ResRet.i32 %834, 2
  %959 = add i32 %957, 0
  %960 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %959, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %961 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %962 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %960, %dx.types.Handle %961, float %887, float %894, float undef, float undef, i32 0, i32 0, i32 undef, float %915, float %917, float undef, float %916, float %918, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %963 = extractvalue %dx.types.ResRet.f32 %962, 0
  %964 = fmul fast float %963, %956
  %965 = fadd fast float %964, %955
  %966 = call float @dx.op.unary.f32(i32 7, float %965)  ; Saturate(value)
  %967 = fmul fast float %887, %843
  %968 = call float @dx.op.tertiary.f32(i32 46, float %844, float %894, float %967)  ; FMad(a,b,c)
  %969 = fadd fast float %968, %954
  %970 = fmul fast float %887, %845
  %971 = call float @dx.op.tertiary.f32(i32 46, float %846, float %894, float %970)  ; FMad(a,b,c)
  %972 = fadd fast float %971, %953
  %973 = fmul fast float %915, %843
  %974 = call float @dx.op.tertiary.f32(i32 46, float %844, float %917, float %973)  ; FMad(a,b,c)
  %975 = fmul fast float %915, %845
  %976 = call float @dx.op.tertiary.f32(i32 46, float %846, float %917, float %975)  ; FMad(a,b,c)
  %977 = fmul fast float %916, %843
  %978 = call float @dx.op.tertiary.f32(i32 46, float %844, float %918, float %977)  ; FMad(a,b,c)
  %979 = fmul fast float %916, %845
  %980 = call float @dx.op.tertiary.f32(i32 46, float %846, float %918, float %979)  ; FMad(a,b,c)
  %981 = add i32 %958, 0
  %982 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %981, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %983 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %982, %dx.types.Handle %961, float %969, float %972, float undef, float undef, i32 0, i32 0, i32 undef, float %974, float %976, float undef, float %978, float %980, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %984 = extractvalue %dx.types.ResRet.f32 %983, 0
  %985 = and i32 %879, 1024
  %986 = icmp ne i32 %985, 0
  %987 = fcmp fast ogt float %984, 0x3FE0101020000000
  %988 = uitofp i1 %987 to float
  %989 = select i1 %986, float %988, float %984
  %990 = and i32 %879, 8192
  %991 = icmp ne i32 %990, 0
  %992 = select i1 %991, float %952, float 1.000000e+00
  %993 = fmul fast float %887, 2.000000e+00
  %994 = fadd fast float %993, -1.000000e+00
  %995 = call float @dx.op.unary.f32(i32 6, float %994)  ; FAbs(value)
  %996 = fmul fast float %995, %876
  %997 = fsub fast float %996, %876
  %998 = call float @dx.op.unary.f32(i32 7, float %997)  ; Saturate(value)
  %999 = fmul fast float %894, 2.000000e+00
  %1000 = fadd fast float %999, -1.000000e+00
  %1001 = call float @dx.op.unary.f32(i32 6, float %1000)  ; FAbs(value)
  %1002 = fmul fast float %1001, %877
  %1003 = fsub fast float %1002, %877
  %1004 = call float @dx.op.unary.f32(i32 7, float %1003)  ; Saturate(value)
  %1005 = fmul fast float %906, %839
  %1006 = fsub fast float %1005, %839
  %1007 = call float @dx.op.unary.f32(i32 7, float %1006)  ; Saturate(value)
  %1008 = fmul fast float %966, %992
  %1009 = fmul fast float %1008, %963
  %1010 = fmul fast float %1009, %998
  %1011 = fmul fast float %1010, %989
  %1012 = fmul fast float %1011, %1004
  %1013 = fmul fast float %1012, %1007
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 1
  %1016 = extractvalue %dx.types.CBufRet.f32 %1014, 0
  %1017 = fsub fast float %923, %1016
  %1018 = fmul fast float %1017, %1015
  %1019 = call float @dx.op.unary.f32(i32 7, float %1018)  ; Saturate(value)
  %1020 = fmul fast float %1013, %840
  %1021 = fadd fast float %1013, %840
  %1022 = fmul fast float %1021, %849
  %1023 = fsub fast float %1022, %849
  %1024 = call float @dx.op.unary.f32(i32 7, float %1023)  ; Saturate(value)
  %1025 = and i32 %879, 128
  %1026 = icmp ne i32 %1025, 0
  %1027 = select i1 %1026, float %1024, float %1020
  %1028 = fmul fast float %1027, %1019
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1031 = fcmp fast ugt float %1028, %1030
  br i1 %1031, label %1032, label %928

; <label>:1032                                    ; preds = %951
  %1033 = select i1 %991, float %1028, float 0.000000e+00
  %1034 = fadd fast float %1033, %800
  %1035 = call float @dx.op.unary.f32(i32 7, float %1034)  ; Saturate(value)
  br i1 %991, label %928, label %1036

; <label>:1036                                    ; preds = %1032
  %1037 = and i32 %879, 4
  %1038 = and i32 %879, 8
  %1039 = add i32 %835, 0
  %1040 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1039, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1041 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1042 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1040, %dx.types.Handle %1041, float %969, float %972, float undef, float undef, i32 0, i32 0, i32 undef, float %974, float %976, float undef, float %978, float %980, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1043 = extractvalue %dx.types.ResRet.f32 %1042, 0
  %1044 = extractvalue %dx.types.ResRet.f32 %1042, 1
  %1045 = extractvalue %dx.types.ResRet.f32 %1042, 2
  %1046 = extractvalue %dx.types.ResRet.f32 %1042, 3
  %1047 = bitcast float %861 to i32
  %1048 = and i32 %1047, 255
  %1049 = uitofp i32 %1048 to float
  %1050 = lshr i32 %1047, 8
  %1051 = and i32 %1050, 255
  %1052 = uitofp i32 %1051 to float
  %1053 = fmul fast float %1046, %1049
  %1054 = fadd fast float %1053, %1052
  %1055 = fmul fast float %1054, 0x3F70101000000000
  %1056 = add i32 %836, 0
  %1057 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1056, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1058 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1057, %dx.types.Handle %1041, float %969, float %972, float undef, float undef, i32 0, i32 0, i32 undef, float %974, float %976, float undef, float %978, float %980, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1059 = extractvalue %dx.types.ResRet.f32 %1058, 0
  %1060 = extractvalue %dx.types.ResRet.f32 %1058, 1
  %1061 = extractvalue %dx.types.ResRet.f32 %1058, 2
  %1062 = extractvalue %dx.types.ResRet.f32 %1058, 3
  %1063 = bitcast float %855 to i32
  %1064 = and i32 %1063, 255
  %1065 = uitofp i32 %1064 to float
  %1066 = lshr i32 %1063, 8
  %1067 = and i32 %1066, 255
  %1068 = uitofp i32 %1067 to float
  %1069 = lshr i32 %1063, 16
  %1070 = and i32 %1069, 255
  %1071 = uitofp i32 %1070 to float
  %1072 = fmul fast float %1071, 0x3F70101000000000
  %1073 = fmul fast float %1059, %1065
  %1074 = fadd fast float %1073, %1068
  %1075 = fmul fast float %1074, 0x3F70101000000000
  %1076 = fadd fast float %1060, -5.000000e-01
  %1077 = fadd fast float %1062, -5.000000e-01
  %1078 = fmul fast float %1076, %1072
  %1079 = fmul fast float %1077, %1072
  %1080 = fadd fast float %1078, 5.000000e-01
  %1081 = fadd fast float %1079, 5.000000e-01
  %1082 = fmul fast float %1043, %864
  %1083 = fmul fast float %1044, %865
  %1084 = fmul fast float %1045, %866
  %1085 = fmul fast float %1080, 2.000000e+00
  %1086 = fadd fast float %1085, -1.000000e+00
  %1087 = fmul fast float %1081, 2.000000e+00
  %1088 = fadd fast float %1087, -1.000000e+00
  %1089 = fadd fast float %1086, %1088
  %1090 = fmul fast float %1089, 5.000000e-01
  %1091 = fsub fast float %1086, %1088
  %1092 = fmul fast float %1091, 5.000000e-01
  %1093 = call float @dx.op.unary.f32(i32 6, float %1090)  ; FAbs(value)
  %1094 = fsub fast float 1.000000e+00, %1093
  %1095 = call float @dx.op.unary.f32(i32 6, float %1092)  ; FAbs(value)
  %1096 = fsub fast float %1094, %1095
  %1097 = call float @dx.op.dot3.f32(i32 55, float %1090, float %1092, float %1096, float %1090, float %1092, float %1096)  ; Dot3(ax,ay,az,bx,by,bz)
  %1098 = call float @dx.op.unary.f32(i32 25, float %1097)  ; Rsqrt(value)
  %1099 = fmul fast float %1090, %1098
  %1100 = fmul fast float %1092, %1098
  %1101 = fmul fast float %1098, %1096
  %1102 = fmul fast float %1101, %829
  %1103 = fmul fast float %1101, %830
  %1104 = fmul fast float %1101, %831
  %1105 = fmul fast float %1099, %852
  %1106 = fmul fast float %1099, %853
  %1107 = fmul fast float %1099, %854
  %1108 = fadd fast float %1105, %1102
  %1109 = fadd fast float %1106, %1103
  %1110 = fadd fast float %1107, %1104
  %1111 = fmul fast float %1100, %858
  %1112 = fmul fast float %1100, %859
  %1113 = fmul fast float %1100, %860
  %1114 = fadd fast float %1108, %1111
  %1115 = fadd fast float %1109, %1112
  %1116 = fadd fast float %1110, %1113
  %1117 = call float @dx.op.dot3.f32(i32 55, float %1114, float %1115, float %1116, float %1114, float %1115, float %1116)  ; Dot3(ax,ay,az,bx,by,bz)
  %1118 = call float @dx.op.unary.f32(i32 25, float %1117)  ; Rsqrt(value)
  %1119 = fmul fast float %1114, %1118
  %1120 = fmul fast float %1115, %1118
  %1121 = fmul fast float %1116, %1118
  %1122 = icmp ne i32 %1038, 0
  %1123 = select i1 %1122, float 1.000000e+00, float 0.000000e+00
  %1124 = fmul fast float %1028, %1123
  %1125 = and i32 %879, 1
  %1126 = icmp eq i32 %1125, 0
  br i1 %1126, label %1127, label %1131

; <label>:1127                                    ; preds = %1036
  %1128 = fsub fast float %1119, %811
  %1129 = fsub fast float %1120, %812
  %1130 = fsub fast float %1121, %813
  br label %1131

; <label>:1131                                    ; preds = %1127, %1036
  %1132 = phi float [ %1128, %1127 ], [ %1119, %1036 ]
  %1133 = phi float [ %1129, %1127 ], [ %1120, %1036 ]
  %1134 = phi float [ %1130, %1127 ], [ %1121, %1036 ]
  %1135 = fmul float %1134, %1124
  %1136 = fmul float %1133, %1124
  %1137 = fmul float %1132, %1124
  %1138 = fadd fast float %1137, %811
  %1139 = fadd fast float %1136, %812
  %1140 = fadd fast float %1135, %813
  %1141 = icmp ne i32 %1037, 0
  %1142 = select i1 %1141, float 1.000000e+00, float 0.000000e+00
  %1143 = fmul fast float %1028, %1142
  %1144 = fsub fast float %1082, %818
  %1145 = fsub fast float %1083, %819
  %1146 = fsub fast float %1084, %820
  %1147 = fmul fast float %1144, %1143
  %1148 = fmul fast float %1145, %1143
  %1149 = fmul fast float %1146, %1143
  %1150 = fadd fast float %1147, %818
  %1151 = fadd fast float %1148, %819
  %1152 = fadd fast float %1149, %820
  %1153 = fsub fast float %1055, %817
  %1154 = fmul fast float %1153, %1143
  %1155 = fadd fast float %1154, %817
  %1156 = fmul fast float %1143, %804
  %1157 = fsub fast float %804, %1156
  %1158 = fmul fast float %1143, %803
  %1159 = fsub fast float %803, %1158
  %1160 = bitcast float %873 to i32
  %1161 = lshr i32 %1160, 16
  %1162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1161)  ; LegacyF16ToF32(value)
  %1163 = add i32 %36, 108
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = and i32 %1165, 1
  %1167 = icmp eq i32 %1166, 0
  br i1 %1167, label %1168, label %1193

; <label>:1168                                    ; preds = %1131
  %1169 = fadd fast float %1055, 0xBFB99999A0000000
  %1170 = call float @dx.op.unary.f32(i32 7, float %1169)  ; Saturate(value)
  %1171 = fmul fast float %1170, 0x3FF1C71C80000000
  %1172 = fsub fast float 1.000000e+00, %1171
  %1173 = call float @dx.op.unary.f32(i32 7, float %1172)  ; Saturate(value)
  %1174 = fmul fast float %1173, %1082
  %1175 = fmul fast float %1173, %1083
  %1176 = fmul fast float %1173, %1084
  %1177 = call float @dx.op.unary.f32(i32 7, float %1174)  ; Saturate(value)
  %1178 = call float @dx.op.unary.f32(i32 7, float %1175)  ; Saturate(value)
  %1179 = call float @dx.op.unary.f32(i32 7, float %1176)  ; Saturate(value)
  %1180 = call float @dx.op.binary.f32(i32 35, float %1178, float %1179)  ; FMax(a,b)
  %1181 = call float @dx.op.binary.f32(i32 35, float %1177, float %1180)  ; FMax(a,b)
  %1182 = fcmp fast ogt float %1181, 0.000000e+00
  %1183 = bitcast float %1181 to i32
  %1184 = sub nsw i32 2129859010, %1183
  %1185 = bitcast i32 %1184 to float
  %1186 = select i1 %1182, float %1185, float 0.000000e+00
  %1187 = fmul fast float %1177, %1162
  %1188 = fmul fast float %1178, %1162
  %1189 = fmul fast float %1179, %1162
  %1190 = fmul fast float %1187, %1186
  %1191 = fmul fast float %1188, %1186
  %1192 = fmul fast float %1189, %1186
  br label %1193

; <label>:1193                                    ; preds = %1168, %1131
  %1194 = phi float [ %1162, %1131 ], [ %1190, %1168 ]
  %1195 = phi float [ %1162, %1131 ], [ %1191, %1168 ]
  %1196 = phi float [ %1162, %1131 ], [ %1192, %1168 ]
  %1197 = fsub fast float %1194, %805
  %1198 = fsub fast float %1195, %806
  %1199 = fsub fast float %1196, %807
  %1200 = fmul fast float %1197, %1143
  %1201 = fmul fast float %1198, %1143
  %1202 = fmul fast float %1199, %1143
  %1203 = fadd fast float %1200, %805
  %1204 = fadd fast float %1201, %806
  %1205 = fadd fast float %1202, %807
  %1206 = fadd fast float %1028, %816
  %1207 = call float @dx.op.unary.f32(i32 7, float %1206)  ; Saturate(value)
  %1208 = fsub fast float %1075, %815
  %1209 = fmul fast float %1208, %1124
  %1210 = fadd fast float %1209, %815
  %1211 = fsub fast float %1061, %814
  %1212 = fmul fast float %1211, %1124
  %1213 = fadd fast float %1212, %814
  %1214 = call float @dx.op.dot3.f32(i32 55, float %1082, float %1083, float %1084, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 0
  %1217 = extractvalue %dx.types.CBufRet.f32 %1215, 1
  %1218 = fmul fast float %1217, %1214
  %1219 = fadd fast float %1218, %1216
  %1220 = call float @dx.op.unary.f32(i32 7, float %1219)  ; Saturate(value)
  %1221 = bitcast float %867 to i32
  %1222 = and i32 %1221, 65535
  %1223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1222)  ; LegacyF16ToF32(value)
  %1224 = lshr i32 %1221, 16
  %1225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1224)  ; LegacyF16ToF32(value)
  %1226 = fcmp fast oge float %1223, 0.000000e+00
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 0
  %1229 = select i1 %1226, float %1223, float %1228
  %1230 = fadd fast float %1229, %1225
  %1231 = fsub fast float %1220, %802
  %1232 = fmul fast float %1231, %1028
  %1233 = fadd fast float %1232, %802
  %1234 = fmul fast float %1230, %1028
  %1235 = call float @dx.op.binary.f32(i32 35, float %801, float %1234)  ; FMax(a,b)
  %1236 = and i32 %879, 16
  %1237 = icmp eq i32 %1236, 0
  br i1 %1237, label %1259, label %1238

; <label>:1238                                    ; preds = %1193
  %1239 = add i32 %870, 0
  %1240 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1239, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1241 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1240, %dx.types.Handle %1041, float %969, float %972, float undef, float undef, i32 0, i32 0, i32 undef, float %974, float %976, float undef, float %978, float %980, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1242 = extractvalue %dx.types.ResRet.f32 %1241, 0
  %1243 = extractvalue %dx.types.ResRet.f32 %1241, 1
  %1244 = extractvalue %dx.types.ResRet.f32 %1241, 2
  %1245 = and i32 %1160, 65535
  %1246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1245)  ; LegacyF16ToF32(value)
  %1247 = fmul fast float %1242, %864
  %1248 = fmul fast float %1243, %865
  %1249 = fmul fast float %1244, %866
  %1250 = and i32 %879, 16384
  %1251 = icmp ne i32 %1250, 0
  %1252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1253 = extractvalue %dx.types.CBufRet.f32 %1252, 0
  %1254 = select i1 %1251, float %1253, float 1.000000e+00
  %1255 = fmul fast float %1254, %1246
  %1256 = fmul fast float %1247, %1255
  %1257 = fmul fast float %1248, %1255
  %1258 = fmul fast float %1249, %1255
  br label %1259

; <label>:1259                                    ; preds = %1238, %1193
  %1260 = phi float [ %1256, %1238 ], [ 0.000000e+00, %1193 ]
  %1261 = phi float [ %1257, %1238 ], [ 0.000000e+00, %1193 ]
  %1262 = phi float [ %1258, %1238 ], [ 0.000000e+00, %1193 ]
  %1263 = fsub fast float %1260, %808
  %1264 = fsub fast float %1261, %809
  %1265 = fsub fast float %1262, %810
  %1266 = fmul fast float %1263, %1028
  %1267 = fmul fast float %1264, %1028
  %1268 = fmul fast float %1265, %1028
  %1269 = fadd fast float %1266, %808
  %1270 = fadd fast float %1267, %809
  %1271 = fadd fast float %1268, %810
  br label %928

; <label>:1272                                    ; preds = %928
  br label %1273

; <label>:1273                                    ; preds = %1272, %693
  %1274 = phi float [ 0.000000e+00, %693 ], [ %929, %1272 ]
  %1275 = phi float [ %711, %693 ], [ %930, %1272 ]
  %1276 = phi float [ %709, %693 ], [ %931, %1272 ]
  %1277 = phi float [ 0.000000e+00, %693 ], [ %932, %1272 ]
  %1278 = phi float [ 0.000000e+00, %693 ], [ %933, %1272 ]
  %1279 = phi float [ %702, %693 ], [ %934, %1272 ]
  %1280 = phi float [ %703, %693 ], [ %935, %1272 ]
  %1281 = phi float [ %704, %693 ], [ %936, %1272 ]
  %1282 = phi float [ %699, %693 ], [ %937, %1272 ]
  %1283 = phi float [ %700, %693 ], [ %938, %1272 ]
  %1284 = phi float [ %701, %693 ], [ %939, %1272 ]
  %1285 = phi float [ %743, %693 ], [ %940, %1272 ]
  %1286 = phi float [ %744, %693 ], [ %941, %1272 ]
  %1287 = phi float [ %745, %693 ], [ %942, %1272 ]
  %1288 = phi float [ %708, %693 ], [ %943, %1272 ]
  %1289 = phi float [ %707, %693 ], [ %944, %1272 ]
  %1290 = phi float [ 0.000000e+00, %693 ], [ %945, %1272 ]
  %1291 = phi float [ %705, %693 ], [ %946, %1272 ]
  %1292 = phi float [ %696, %693 ], [ %947, %1272 ]
  %1293 = phi float [ %697, %693 ], [ %948, %1272 ]
  %1294 = phi float [ %698, %693 ], [ %949, %1272 ]
  %1295 = call float @dx.op.dot3.f32(i32 55, float %1285, float %1286, float %1287, float %1285, float %1286, float %1287)  ; Dot3(ax,ay,az,bx,by,bz)
  %1296 = call float @dx.op.unary.f32(i32 25, float %1295)  ; Rsqrt(value)
  %1297 = fmul fast float %1296, %1285
  %1298 = fmul fast float %1296, %1286
  %1299 = fmul fast float %1296, %1287
  %1300 = fadd fast float %1290, %706
  %1301 = call float @dx.op.unary.f32(i32 7, float %1300)  ; Saturate(value)
  %1302 = call float @dx.op.dot3.f32(i32 55, float %1297, float %1298, float %1299, float %1297, float %1298, float %1299)  ; Dot3(ax,ay,az,bx,by,bz)
  %1303 = call float @dx.op.unary.f32(i32 25, float %1302)  ; Rsqrt(value)
  %1304 = fmul fast float %1303, %1297
  %1305 = fmul fast float %1303, %1298
  %1306 = fmul fast float %1303, %1299
  %1307 = fadd fast float %1291, 0xBFB99999A0000000
  %1308 = call float @dx.op.unary.f32(i32 7, float %1307)  ; Saturate(value)
  %1309 = fmul fast float %1308, 0x3FF1C71C80000000
  %1310 = call float @dx.op.binary.f32(i32 36, float %1291, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1311 = fsub fast float 1.000000e+00, %1309
  %1312 = call float @dx.op.unary.f32(i32 7, float %1311)  ; Saturate(value)
  %1313 = fmul fast float %1312, %1292
  %1314 = fmul fast float %1312, %1293
  %1315 = fmul fast float %1312, %1294
  %1316 = call float @dx.op.unary.f32(i32 7, float %1313)  ; Saturate(value)
  %1317 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  %1318 = call float @dx.op.unary.f32(i32 7, float %1315)  ; Saturate(value)
  %1319 = fmul fast float %1309, %1292
  %1320 = fmul fast float %1309, %1293
  %1321 = fmul fast float %1309, %1294
  %1322 = fadd fast float %1319, %1310
  %1323 = fadd fast float %1320, %1310
  %1324 = fadd fast float %1321, %1310
  %1325 = call float @dx.op.unary.f32(i32 7, float %1322)  ; Saturate(value)
  %1326 = call float @dx.op.unary.f32(i32 7, float %1323)  ; Saturate(value)
  %1327 = call float @dx.op.unary.f32(i32 7, float %1324)  ; Saturate(value)
  %1328 = call float @dx.op.unary.f32(i32 7, float %1289)  ; Saturate(value)
  %1329 = add i32 %36, 108
  %1330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.i32 %1330, 0
  %1332 = and i32 %1331, 1
  %1333 = icmp eq i32 %1332, 0
  br i1 %1333, label %1348, label %1334

; <label>:1334                                    ; preds = %1273
  %1335 = call float @dx.op.binary.f32(i32 35, float %1317, float %1318)  ; FMax(a,b)
  %1336 = call float @dx.op.binary.f32(i32 35, float %1316, float %1335)  ; FMax(a,b)
  %1337 = fcmp fast ogt float %1336, 0.000000e+00
  %1338 = bitcast float %1336 to i32
  %1339 = sub nsw i32 2129859010, %1338
  %1340 = bitcast i32 %1339 to float
  %1341 = select i1 %1337, float %1340, float 0.000000e+00
  %1342 = fmul fast float %1316, %1279
  %1343 = fmul fast float %1317, %1280
  %1344 = fmul fast float %1318, %1281
  %1345 = fmul fast float %1342, %1341
  %1346 = fmul fast float %1343, %1341
  %1347 = fmul fast float %1344, %1341
  br label %1348

; <label>:1348                                    ; preds = %1334, %1273
  %1349 = phi float [ %1345, %1334 ], [ %1279, %1273 ]
  %1350 = phi float [ %1346, %1334 ], [ %1280, %1273 ]
  %1351 = phi float [ %1347, %1334 ], [ %1281, %1273 ]
  %1352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1353 = extractvalue %dx.types.CBufRet.i32 %1352, 3
  %1354 = and i32 %1353, 8
  %1355 = icmp ne i32 %1354, 0
  %1356 = call float @dx.op.binary.f32(i32 35, float %1316, float %1292)  ; FMax(a,b)
  %1357 = call float @dx.op.binary.f32(i32 35, float %1317, float %1292)  ; FMax(a,b)
  %1358 = call float @dx.op.binary.f32(i32 35, float %1318, float %1292)  ; FMax(a,b)
  %1359 = call float @dx.op.dot3.f32(i32 55, float %1316, float %1317, float %1318, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1360 = select i1 %144, float %1292, float %1316
  %1361 = select i1 %144, float %1359, float %1317
  %1362 = select i1 %144, float 1.000000e+00, float %1318
  %1363 = select i1 %1355, float %1356, float %1360
  %1364 = select i1 %1355, float %1357, float %1361
  %1365 = select i1 %1355, float %1358, float %1362
  %1366 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1367 = select i1 %144, float %1366, float %1349
  %1368 = select i1 %144, float %1366, float %1350
  %1369 = select i1 %144, float %1366, float %1351
  %1370 = fmul fast float %1367, %1301
  %1371 = fmul fast float %1368, %1301
  %1372 = fmul fast float %1369, %1301
  %1373 = and i32 %119, 3
  %1374 = icmp eq i32 %1373, 1
  br i1 %1374, label %1375, label %1451

; <label>:1375                                    ; preds = %1348
  %1376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.f32 %1376, 0
  %1378 = extractvalue %dx.types.CBufRet.f32 %1376, 1
  %1379 = fadd fast float %1377, %101
  %1380 = fadd fast float %1378, %102
  %1381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1382 = extractvalue %dx.types.CBufRet.f32 %1381, 0
  %1383 = extractvalue %dx.types.CBufRet.f32 %1381, 1
  %1384 = fsub fast float %1379, %1382
  %1385 = fsub fast float %1380, %1383
  %1386 = fmul fast float %1384, %1384
  %1387 = fmul fast float %1385, %1385
  %1388 = fadd fast float %1386, %1387
  %1389 = call float @dx.op.unary.f32(i32 24, float %1388)  ; Sqrt(value)
  %1390 = extractvalue %dx.types.CBufRet.f32 %1381, 2
  %1391 = fcmp fast olt float %1389, %1390
  br i1 %1391, label %1392, label %1445

; <label>:1392                                    ; preds = %1375
  %1393 = extractvalue %dx.types.CBufRet.f32 %1376, 2
  %1394 = fadd fast float %1393, %103
  %1395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1396 = extractvalue %dx.types.CBufRet.f32 %1395, 0
  %1397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1398 = extractvalue %dx.types.CBufRet.f32 %1397, 0
  %1399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1400 = extractvalue %dx.types.CBufRet.f32 %1399, 0
  %1401 = extractvalue %dx.types.CBufRet.f32 %1395, 1
  %1402 = extractvalue %dx.types.CBufRet.f32 %1397, 1
  %1403 = extractvalue %dx.types.CBufRet.f32 %1399, 1
  %1404 = extractvalue %dx.types.CBufRet.f32 %1395, 3
  %1405 = extractvalue %dx.types.CBufRet.f32 %1397, 3
  %1406 = extractvalue %dx.types.CBufRet.f32 %1399, 3
  %1407 = fadd fast float %1404, %1379
  %1408 = fadd fast float %1405, %1380
  %1409 = fadd fast float %1394, %1406
  %1410 = fmul fast float %1407, %1396
  %1411 = call float @dx.op.tertiary.f32(i32 46, float %1408, float %1398, float %1410)  ; FMad(a,b,c)
  %1412 = call float @dx.op.tertiary.f32(i32 46, float %1409, float %1400, float %1411)  ; FMad(a,b,c)
  %1413 = fmul fast float %1407, %1401
  %1414 = call float @dx.op.tertiary.f32(i32 46, float %1408, float %1402, float %1413)  ; FMad(a,b,c)
  %1415 = call float @dx.op.tertiary.f32(i32 46, float %1409, float %1403, float %1414)  ; FMad(a,b,c)
  %1416 = fsub fast float %1412, %1404
  %1417 = fsub fast float %1415, %1405
  %1418 = fsub fast float %1416, %1382
  %1419 = fadd fast float %1418, %1390
  %1420 = fsub fast float %1417, %1383
  %1421 = fadd fast float %1420, %1390
  %1422 = extractvalue %dx.types.CBufRet.f32 %1381, 3
  %1423 = fmul fast float %1419, %1422
  %1424 = fmul fast float %1421, %1422
  %1425 = call float @dx.op.unary.f32(i32 7, float %1423)  ; Saturate(value)
  %1426 = call float @dx.op.unary.f32(i32 7, float %1424)  ; Saturate(value)
  %1427 = fsub fast float 1.000000e+00, %1425
  %1428 = fsub fast float 1.000000e+00, %1426
  %1429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %21, float %1427, float %1428, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1430 = extractvalue %dx.types.ResRet.f32 %1429, 0
  %1431 = fcmp fast ugt float %1430, 0.000000e+00
  br i1 %1431, label %1432, label %1445

; <label>:1432                                    ; preds = %1392
  %1433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1434 = extractvalue %dx.types.CBufRet.f32 %1433, 2
  %1435 = fmul fast float %1434, %1430
  %1436 = extractvalue %dx.types.CBufRet.f32 %1433, 3
  %1437 = fadd fast float %1436, %1435
  %1438 = extractvalue %dx.types.CBufRet.f32 %1399, 2
  %1439 = fadd fast float %1437, %1406
  %1440 = fmul fast float %1412, %1400
  %1441 = call float @dx.op.tertiary.f32(i32 46, float %1415, float %1403, float %1440)  ; FMad(a,b,c)
  %1442 = call float @dx.op.tertiary.f32(i32 46, float %1439, float %1438, float %1441)  ; FMad(a,b,c)
  %1443 = fsub fast float %1442, %1406
  %1444 = fsub fast float %1443, %1393
  br label %1445

; <label>:1445                                    ; preds = %1432, %1392, %1375
  %1446 = phi i1 [ true, %1432 ], [ false, %1392 ], [ false, %1375 ]
  %1447 = phi float [ %1444, %1432 ], [ -1.310720e+05, %1392 ], [ -1.310720e+05, %1375 ]
  %1448 = fsub fast float %1447, %103
  %1449 = call float @dx.op.unary.f32(i32 7, float %1448)  ; Saturate(value)
  %1450 = select i1 %1446, float %1449, float 1.000000e+00
  br label %1451

; <label>:1451                                    ; preds = %1445, %1348
  %1452 = phi float [ %1450, %1445 ], [ 0.000000e+00, %1348 ]
  %1453 = icmp eq i32 %1373, 3
  %1454 = select i1 %1453, float 1.000000e+00, float %1452
  %1455 = call float @dx.op.binary.f32(i32 35, float %1274, float %1454)  ; FMax(a,b)
  %1456 = fcmp fast olt float %1454, 1.000000e+00
  br i1 %1456, label %1457, label %2581

; <label>:1457                                    ; preds = %1451
  %1458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1459 = extractvalue %dx.types.CBufRet.f32 %1458, 0
  %1460 = extractvalue %dx.types.CBufRet.f32 %1458, 1
  %1461 = extractvalue %dx.types.CBufRet.f32 %1458, 2
  %1462 = fadd fast float %1459, %101
  %1463 = fadd fast float %1460, %102
  %1464 = fadd fast float %1461, %103
  %1465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.i32 %1465, 2
  %1467 = icmp ult i32 %1466, 4
  br i1 %1467, label %1468, label %1519

; <label>:1468                                    ; preds = %1457
  br label %1469

; <label>:1469                                    ; preds = %1514, %1468
  %1470 = phi i32 [ %1515, %1514 ], [ %1466, %1468 ]
  %1471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 342)  ; CBufferLoadLegacy(handle,regIndex)
  %1472 = extractvalue %dx.types.CBufRet.f32 %1471, 0
  %1473 = extractvalue %dx.types.CBufRet.f32 %1471, 1
  %1474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %1475 = extractvalue %dx.types.CBufRet.f32 %1474, 0
  %1476 = fmul fast float %1475, 5.000000e-01
  %1477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 340)  ; CBufferLoadLegacy(handle,regIndex)
  %1478 = extractvalue %dx.types.CBufRet.f32 %1477, 0
  %1479 = extractvalue %dx.types.CBufRet.f32 %1477, 1
  %1480 = extractvalue %dx.types.CBufRet.f32 %1477, 2
  %1481 = extractvalue %dx.types.CBufRet.f32 %1477, 3
  %1482 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 0
  store float %1478, float* %1482, align 4
  %1483 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 1
  store float %1479, float* %1483, align 4
  %1484 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 2
  store float %1480, float* %1484, align 4
  %1485 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 3
  store float %1481, float* %1485, align 4
  %1486 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 %1470
  %1487 = load float, float* %1486, align 4, !tbaa !62
  %1488 = fmul fast float %1476, %1487
  %1489 = fsub fast float %1462, %1472
  %1490 = fadd fast float %1489, %1488
  %1491 = fsub fast float %1463, %1473
  %1492 = fadd fast float %1491, %1488
  %1493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 341)  ; CBufferLoadLegacy(handle,regIndex)
  %1494 = extractvalue %dx.types.CBufRet.f32 %1493, 0
  %1495 = extractvalue %dx.types.CBufRet.f32 %1493, 1
  %1496 = extractvalue %dx.types.CBufRet.f32 %1493, 2
  %1497 = extractvalue %dx.types.CBufRet.f32 %1493, 3
  %1498 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 0
  store float %1494, float* %1498, align 4
  %1499 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 1
  store float %1495, float* %1499, align 4
  %1500 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 2
  store float %1496, float* %1500, align 4
  %1501 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 3
  store float %1497, float* %1501, align 4
  %1502 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 %1470
  %1503 = load float, float* %1502, align 4, !tbaa !62
  %1504 = fmul fast float %1490, %1503
  %1505 = fmul fast float %1492, %1503
  %1506 = extractvalue %dx.types.CBufRet.f32 %1474, 1
  %1507 = fmul fast float %1504, %1506
  %1508 = fmul fast float %1505, %1506
  %1509 = call float @dx.op.unary.f32(i32 7, float %1507)  ; Saturate(value)
  %1510 = call float @dx.op.unary.f32(i32 7, float %1508)  ; Saturate(value)
  %1511 = fcmp fast oeq float %1509, %1507
  %1512 = fcmp fast oeq float %1510, %1508
  %1513 = and i1 %1511, %1512
  br i1 %1513, label %1517, label %1514

; <label>:1514                                    ; preds = %1469
  %1515 = add nuw nsw i32 %1470, 1
  %1516 = icmp ult i32 %1515, 4
  br i1 %1516, label %1469, label %1517

; <label>:1517                                    ; preds = %1514, %1469
  %1518 = phi i32 [ %1515, %1514 ], [ %1470, %1469 ]
  br label %1519

; <label>:1519                                    ; preds = %1517, %1457
  %1520 = phi float [ 0.000000e+00, %1457 ], [ %1507, %1517 ]
  %1521 = phi float [ 0.000000e+00, %1457 ], [ %1508, %1517 ]
  %1522 = phi i32 [ %1466, %1457 ], [ %1518, %1517 ]
  %1523 = extractvalue %dx.types.CBufRet.i32 %1465, 1
  %1524 = uitofp i32 %1522 to float
  %1525 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %21, float %1520, float %1521, float %1524, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1526 = extractvalue %dx.types.ResRet.f32 %1525, 0
  %1527 = extractvalue %dx.types.ResRet.f32 %1525, 1
  %1528 = extractvalue %dx.types.ResRet.f32 %1525, 2
  %1529 = extractvalue %dx.types.ResRet.f32 %1525, 3
  %1530 = call float @dx.op.binary.f32(i32 35, float %1527, float %1528)  ; FMax(a,b)
  %1531 = call float @dx.op.binary.f32(i32 35, float %1526, float %1530)  ; FMax(a,b)
  %1532 = call float @dx.op.binary.f32(i32 35, float %1531, float %1529)  ; FMax(a,b)
  %1533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %1534 = extractvalue %dx.types.CBufRet.f32 %1533, 0
  %1535 = fadd fast float %1534, %1532
  %1536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %1537 = extractvalue %dx.types.CBufRet.f32 %1536, 3
  %1538 = fadd fast float %1535, %1537
  %1539 = fcmp fast ogt float %1464, %1538
  %1540 = icmp uge i32 %1522, %1523
  %1541 = or i1 %1540, %1539
  %1542 = zext i1 %1541 to i32
  %1543 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1544 = extractvalue %dx.types.CBufRet.i32 %1543, 0
  %1545 = lshr i32 %1544, 21
  %1546 = and i32 %1545, 1
  %1547 = xor i32 %1546, 1
  %1548 = or i32 %1542, %1547
  %1549 = and i32 %1544, 1
  %1550 = xor i32 %1549, 1
  %1551 = or i32 %1548, %1550
  %1552 = icmp eq i32 %1551, 0
  br i1 %1552, label %1553, label %2397, !dx.controlflow.hints !66

; <label>:1553                                    ; preds = %1519
  %1554 = fmul fast float %1520, 2.000000e+00
  %1555 = fmul fast float %1521, 2.000000e+00
  %1556 = fadd fast float %1554, -1.000000e+00
  %1557 = fadd fast float %1555, -1.000000e+00
  %1558 = call float @dx.op.unary.f32(i32 6, float %1556)  ; FAbs(value)
  %1559 = call float @dx.op.unary.f32(i32 6, float %1557)  ; FAbs(value)
  %1560 = extractvalue %dx.types.CBufRet.f32 %1536, 1
  %1561 = fmul fast float %1560, 2.000000e+00
  %1562 = fsub fast float 1.000000e+00, %1561
  %1563 = fcmp fast oge float %1558, %1562
  %1564 = fcmp fast oge float %1559, %1562
  %1565 = or i1 %1563, %1564
  %1566 = add i32 %1522, 1
  %1567 = icmp ult i32 %1566, %1523
  %1568 = and i1 %1567, %1565
  %1569 = extractvalue %dx.types.CBufRet.f32 %1536, 0
  %1570 = fptosi float %1569 to i32
  %1571 = sitofp i32 %1570 to float
  %1572 = fmul fast float %1571, %1520
  %1573 = fmul fast float %1571, %1521
  %1574 = fadd fast float %1572, -5.000000e-01
  %1575 = fadd fast float %1573, -5.000000e-01
  %1576 = fptosi float %1574 to i32
  %1577 = fptosi float %1575 to i32
  %1578 = fadd fast float %1572, 5.000000e-01
  %1579 = fadd fast float %1573, 5.000000e-01
  %1580 = call float @dx.op.unary.f32(i32 22, float %1578)  ; Frc(value)
  %1581 = call float @dx.op.unary.f32(i32 22, float %1579)  ; Frc(value)
  %1582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 340)  ; CBufferLoadLegacy(handle,regIndex)
  %1583 = extractvalue %dx.types.CBufRet.f32 %1582, 0
  %1584 = extractvalue %dx.types.CBufRet.f32 %1582, 1
  %1585 = extractvalue %dx.types.CBufRet.f32 %1582, 2
  %1586 = extractvalue %dx.types.CBufRet.f32 %1582, 3
  %1587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %1588 = extractvalue %dx.types.CBufRet.f32 %1587, 2
  %1589 = fadd fast float %1580, -5.000000e-01
  %1590 = fadd fast float %1581, -5.000000e-01
  %1591 = add i32 %1570, -1
  %1592 = call i32 @dx.op.binary.i32(i32 37, i32 %1576, i32 0)  ; IMax(a,b)
  %1593 = call i32 @dx.op.binary.i32(i32 37, i32 %1577, i32 0)  ; IMax(a,b)
  %1594 = call i32 @dx.op.binary.i32(i32 38, i32 %1592, i32 %1591)  ; IMin(a,b)
  %1595 = call i32 @dx.op.binary.i32(i32 38, i32 %1593, i32 %1591)  ; IMin(a,b)
  %1596 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 337)  ; CBufferLoadLegacy(handle,regIndex)
  %1597 = extractvalue %dx.types.CBufRet.i32 %1596, 0
  %1598 = extractvalue %dx.types.CBufRet.i32 %1596, 1
  %1599 = sub nsw i32 3, %1522
  %1600 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 338)  ; CBufferLoadLegacy(handle,regIndex)
  %1601 = extractvalue %dx.types.CBufRet.i32 %1600, 0
  %1602 = extractvalue %dx.types.CBufRet.i32 %1600, 1
  %1603 = extractvalue %dx.types.CBufRet.i32 %1600, 2
  %1604 = extractvalue %dx.types.CBufRet.i32 %1600, 3
  %1605 = add i32 %1594, 536870912
  %1606 = add i32 %1595, 536870912
  %1607 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %1608 = extractvalue %dx.types.CBufRet.i32 %1607, 3
  %1609 = add i32 %1576, 1
  %1610 = call i32 @dx.op.binary.i32(i32 37, i32 %1609, i32 0)  ; IMax(a,b)
  %1611 = call i32 @dx.op.binary.i32(i32 38, i32 %1610, i32 %1591)  ; IMin(a,b)
  %1612 = add i32 %1611, 536870912
  %1613 = add i32 %1577, 1
  %1614 = call i32 @dx.op.binary.i32(i32 37, i32 %1613, i32 0)  ; IMax(a,b)
  %1615 = call i32 @dx.op.binary.i32(i32 38, i32 %1614, i32 %1591)  ; IMin(a,b)
  %1616 = add i32 %1615, 536870912
  br i1 %1568, label %1861, label %1617, !dx.controlflow.hints !67

; <label>:1617                                    ; preds = %1553
  %1618 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 0
  store float %1583, float* %1618, align 4
  %1619 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 1
  store float %1584, float* %1619, align 4
  %1620 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 2
  store float %1585, float* %1620, align 4
  %1621 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 3
  store float %1586, float* %1621, align 4
  %1622 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 %1522
  %1623 = load float, float* %1622, align 4, !tbaa !62
  %1624 = fmul fast float %1588, %1623
  %1625 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %1624)  ; FMax(a,b)
  %1626 = fmul fast float %1625, %1589
  %1627 = fmul fast float %1625, %1590
  %1628 = call float @dx.op.binary.f32(i32 35, float %1626, float -5.000000e-01)  ; FMax(a,b)
  %1629 = call float @dx.op.binary.f32(i32 35, float %1627, float -5.000000e-01)  ; FMax(a,b)
  %1630 = call float @dx.op.binary.f32(i32 36, float %1628, float 5.000000e-01)  ; FMin(a,b)
  %1631 = call float @dx.op.binary.f32(i32 36, float %1629, float 5.000000e-01)  ; FMin(a,b)
  %1632 = fadd fast float %1630, 5.000000e-01
  %1633 = fadd fast float %1631, 5.000000e-01
  %1634 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 0
  store i32 %1601, i32* %1634, align 4
  %1635 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 1
  store i32 %1602, i32* %1635, align 4
  %1636 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 2
  store i32 %1603, i32* %1636, align 4
  %1637 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 3
  store i32 %1604, i32* %1637, align 4
  %1638 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 %1599
  %1639 = load i32, i32* %1638, align 4, !tbaa !68
  %1640 = mul i32 %1639, %1597
  %1641 = mul i32 %1639, %1598
  %1642 = add i32 %1605, %1640
  %1643 = add i32 %1606, %1641
  %1644 = and i32 %1642, %1608
  %1645 = and i32 %1643, %1608
  %1646 = fsub fast float %1464, %1534
  %1647 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1644, i32 %1645, i32 %1522, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1648 = extractvalue %dx.types.ResRet.i32 %1647, 0
  %1649 = extractvalue %dx.types.ResRet.i32 %1647, 1
  %1650 = extractvalue %dx.types.ResRet.i32 %1647, 2
  %1651 = extractvalue %dx.types.ResRet.i32 %1647, 3
  %1652 = and i32 %1648, 65535
  %1653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1652)  ; LegacyF16ToF32(value)
  %1654 = lshr i32 %1648, 16
  %1655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1654)  ; LegacyF16ToF32(value)
  %1656 = and i32 %1649, 65535
  %1657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1656)  ; LegacyF16ToF32(value)
  %1658 = lshr i32 %1649, 16
  %1659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1658)  ; LegacyF16ToF32(value)
  %1660 = and i32 %1650, 65535
  %1661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1660)  ; LegacyF16ToF32(value)
  %1662 = lshr i32 %1650, 16
  %1663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1662)  ; LegacyF16ToF32(value)
  %1664 = and i32 %1651, 65535
  %1665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1664)  ; LegacyF16ToF32(value)
  %1666 = lshr i32 %1651, 16
  %1667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1666)  ; LegacyF16ToF32(value)
  %1668 = fsub fast float %1646, %1655
  %1669 = call float @dx.op.binary.f32(i32 35, float %1668, float 0.000000e+00)  ; FMax(a,b)
  %1670 = extractvalue %dx.types.CBufRet.f32 %1536, 2
  %1671 = fmul fast float %1670, %1669
  %1672 = fsub fast float %1653, %1671
  %1673 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1672)  ; FMax(a,b)
  %1674 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1673)  ; FMax(a,b)
  %1675 = fsub fast float %1646, %1659
  %1676 = call float @dx.op.binary.f32(i32 35, float %1675, float 0.000000e+00)  ; FMax(a,b)
  %1677 = fmul fast float %1670, %1676
  %1678 = fsub fast float %1657, %1677
  %1679 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1678)  ; FMax(a,b)
  %1680 = call float @dx.op.binary.f32(i32 35, float %1674, float %1679)  ; FMax(a,b)
  %1681 = fsub fast float %1646, %1663
  %1682 = call float @dx.op.binary.f32(i32 35, float %1681, float 0.000000e+00)  ; FMax(a,b)
  %1683 = fmul fast float %1670, %1682
  %1684 = fsub fast float %1661, %1683
  %1685 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1684)  ; FMax(a,b)
  %1686 = call float @dx.op.binary.f32(i32 35, float %1680, float %1685)  ; FMax(a,b)
  %1687 = fsub fast float %1646, %1667
  %1688 = call float @dx.op.binary.f32(i32 35, float %1687, float 0.000000e+00)  ; FMax(a,b)
  %1689 = fmul fast float %1670, %1688
  %1690 = fsub fast float %1665, %1689
  %1691 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1690)  ; FMax(a,b)
  %1692 = call float @dx.op.binary.f32(i32 35, float %1686, float %1691)  ; FMax(a,b)
  %1693 = fsub fast float 5.000000e-01, %1630
  %1694 = fsub fast float 5.000000e-01, %1631
  %1695 = fmul fast float %1694, %1693
  %1696 = fmul fast float %1695, %1692
  store i32 %1601, i32* %1634, align 4
  store i32 %1602, i32* %1635, align 4
  store i32 %1603, i32* %1636, align 4
  store i32 %1604, i32* %1637, align 4
  %1697 = load i32, i32* %1638, align 4, !tbaa !68
  %1698 = mul i32 %1697, %1597
  %1699 = mul i32 %1697, %1598
  %1700 = add i32 %1612, %1698
  %1701 = add i32 %1606, %1699
  %1702 = and i32 %1700, %1608
  %1703 = and i32 %1701, %1608
  %1704 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1702, i32 %1703, i32 %1522, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1705 = extractvalue %dx.types.ResRet.i32 %1704, 0
  %1706 = extractvalue %dx.types.ResRet.i32 %1704, 1
  %1707 = extractvalue %dx.types.ResRet.i32 %1704, 2
  %1708 = extractvalue %dx.types.ResRet.i32 %1704, 3
  %1709 = and i32 %1705, 65535
  %1710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1709)  ; LegacyF16ToF32(value)
  %1711 = lshr i32 %1705, 16
  %1712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1711)  ; LegacyF16ToF32(value)
  %1713 = and i32 %1706, 65535
  %1714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1713)  ; LegacyF16ToF32(value)
  %1715 = lshr i32 %1706, 16
  %1716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1715)  ; LegacyF16ToF32(value)
  %1717 = and i32 %1707, 65535
  %1718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1717)  ; LegacyF16ToF32(value)
  %1719 = lshr i32 %1707, 16
  %1720 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1719)  ; LegacyF16ToF32(value)
  %1721 = and i32 %1708, 65535
  %1722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1721)  ; LegacyF16ToF32(value)
  %1723 = lshr i32 %1708, 16
  %1724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1723)  ; LegacyF16ToF32(value)
  %1725 = fsub fast float %1646, %1712
  %1726 = call float @dx.op.binary.f32(i32 35, float %1725, float 0.000000e+00)  ; FMax(a,b)
  %1727 = fmul fast float %1670, %1726
  %1728 = fsub fast float %1710, %1727
  %1729 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1728)  ; FMax(a,b)
  %1730 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1729)  ; FMax(a,b)
  %1731 = fsub fast float %1646, %1716
  %1732 = call float @dx.op.binary.f32(i32 35, float %1731, float 0.000000e+00)  ; FMax(a,b)
  %1733 = fmul fast float %1670, %1732
  %1734 = fsub fast float %1714, %1733
  %1735 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1734)  ; FMax(a,b)
  %1736 = call float @dx.op.binary.f32(i32 35, float %1730, float %1735)  ; FMax(a,b)
  %1737 = fsub fast float %1646, %1720
  %1738 = call float @dx.op.binary.f32(i32 35, float %1737, float 0.000000e+00)  ; FMax(a,b)
  %1739 = fmul fast float %1670, %1738
  %1740 = fsub fast float %1718, %1739
  %1741 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1740)  ; FMax(a,b)
  %1742 = call float @dx.op.binary.f32(i32 35, float %1736, float %1741)  ; FMax(a,b)
  %1743 = fsub fast float %1646, %1724
  %1744 = call float @dx.op.binary.f32(i32 35, float %1743, float 0.000000e+00)  ; FMax(a,b)
  %1745 = fmul fast float %1670, %1744
  %1746 = fsub fast float %1722, %1745
  %1747 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1746)  ; FMax(a,b)
  %1748 = call float @dx.op.binary.f32(i32 35, float %1742, float %1747)  ; FMax(a,b)
  %1749 = fmul fast float %1694, %1632
  %1750 = fmul fast float %1749, %1748
  store i32 %1601, i32* %1634, align 4
  store i32 %1602, i32* %1635, align 4
  store i32 %1603, i32* %1636, align 4
  store i32 %1604, i32* %1637, align 4
  %1751 = load i32, i32* %1638, align 4, !tbaa !68
  %1752 = mul i32 %1751, %1597
  %1753 = mul i32 %1751, %1598
  %1754 = add i32 %1605, %1752
  %1755 = add i32 %1616, %1753
  %1756 = and i32 %1754, %1608
  %1757 = and i32 %1755, %1608
  %1758 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1756, i32 %1757, i32 %1522, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1759 = extractvalue %dx.types.ResRet.i32 %1758, 0
  %1760 = extractvalue %dx.types.ResRet.i32 %1758, 1
  %1761 = extractvalue %dx.types.ResRet.i32 %1758, 2
  %1762 = extractvalue %dx.types.ResRet.i32 %1758, 3
  %1763 = and i32 %1759, 65535
  %1764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1763)  ; LegacyF16ToF32(value)
  %1765 = lshr i32 %1759, 16
  %1766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1765)  ; LegacyF16ToF32(value)
  %1767 = and i32 %1760, 65535
  %1768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1767)  ; LegacyF16ToF32(value)
  %1769 = lshr i32 %1760, 16
  %1770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1769)  ; LegacyF16ToF32(value)
  %1771 = and i32 %1761, 65535
  %1772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1771)  ; LegacyF16ToF32(value)
  %1773 = lshr i32 %1761, 16
  %1774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1773)  ; LegacyF16ToF32(value)
  %1775 = and i32 %1762, 65535
  %1776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1775)  ; LegacyF16ToF32(value)
  %1777 = lshr i32 %1762, 16
  %1778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1777)  ; LegacyF16ToF32(value)
  %1779 = fsub fast float %1646, %1766
  %1780 = call float @dx.op.binary.f32(i32 35, float %1779, float 0.000000e+00)  ; FMax(a,b)
  %1781 = fmul fast float %1670, %1780
  %1782 = fsub fast float %1764, %1781
  %1783 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1782)  ; FMax(a,b)
  %1784 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1783)  ; FMax(a,b)
  %1785 = fsub fast float %1646, %1770
  %1786 = call float @dx.op.binary.f32(i32 35, float %1785, float 0.000000e+00)  ; FMax(a,b)
  %1787 = fmul fast float %1670, %1786
  %1788 = fsub fast float %1768, %1787
  %1789 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1788)  ; FMax(a,b)
  %1790 = call float @dx.op.binary.f32(i32 35, float %1784, float %1789)  ; FMax(a,b)
  %1791 = fsub fast float %1646, %1774
  %1792 = call float @dx.op.binary.f32(i32 35, float %1791, float 0.000000e+00)  ; FMax(a,b)
  %1793 = fmul fast float %1670, %1792
  %1794 = fsub fast float %1772, %1793
  %1795 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1794)  ; FMax(a,b)
  %1796 = call float @dx.op.binary.f32(i32 35, float %1790, float %1795)  ; FMax(a,b)
  %1797 = fsub fast float %1646, %1778
  %1798 = call float @dx.op.binary.f32(i32 35, float %1797, float 0.000000e+00)  ; FMax(a,b)
  %1799 = fmul fast float %1670, %1798
  %1800 = fsub fast float %1776, %1799
  %1801 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1800)  ; FMax(a,b)
  %1802 = call float @dx.op.binary.f32(i32 35, float %1796, float %1801)  ; FMax(a,b)
  %1803 = fmul fast float %1802, %1693
  store i32 %1601, i32* %1634, align 4
  store i32 %1602, i32* %1635, align 4
  store i32 %1603, i32* %1636, align 4
  store i32 %1604, i32* %1637, align 4
  %1804 = load i32, i32* %1638, align 4, !tbaa !68
  %1805 = mul i32 %1804, %1597
  %1806 = mul i32 %1804, %1598
  %1807 = add i32 %1612, %1805
  %1808 = add i32 %1616, %1806
  %1809 = and i32 %1807, %1608
  %1810 = and i32 %1808, %1608
  %1811 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1809, i32 %1810, i32 %1522, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1812 = extractvalue %dx.types.ResRet.i32 %1811, 0
  %1813 = extractvalue %dx.types.ResRet.i32 %1811, 1
  %1814 = extractvalue %dx.types.ResRet.i32 %1811, 2
  %1815 = extractvalue %dx.types.ResRet.i32 %1811, 3
  %1816 = and i32 %1812, 65535
  %1817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1816)  ; LegacyF16ToF32(value)
  %1818 = lshr i32 %1812, 16
  %1819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1818)  ; LegacyF16ToF32(value)
  %1820 = and i32 %1813, 65535
  %1821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1820)  ; LegacyF16ToF32(value)
  %1822 = lshr i32 %1813, 16
  %1823 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1822)  ; LegacyF16ToF32(value)
  %1824 = and i32 %1814, 65535
  %1825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1824)  ; LegacyF16ToF32(value)
  %1826 = lshr i32 %1814, 16
  %1827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1826)  ; LegacyF16ToF32(value)
  %1828 = and i32 %1815, 65535
  %1829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1828)  ; LegacyF16ToF32(value)
  %1830 = lshr i32 %1815, 16
  %1831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1830)  ; LegacyF16ToF32(value)
  %1832 = fsub fast float %1646, %1819
  %1833 = call float @dx.op.binary.f32(i32 35, float %1832, float 0.000000e+00)  ; FMax(a,b)
  %1834 = fmul fast float %1670, %1833
  %1835 = fsub fast float %1817, %1834
  %1836 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1835)  ; FMax(a,b)
  %1837 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1836)  ; FMax(a,b)
  %1838 = fsub fast float %1646, %1823
  %1839 = call float @dx.op.binary.f32(i32 35, float %1838, float 0.000000e+00)  ; FMax(a,b)
  %1840 = fmul fast float %1670, %1839
  %1841 = fsub fast float %1821, %1840
  %1842 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1841)  ; FMax(a,b)
  %1843 = call float @dx.op.binary.f32(i32 35, float %1837, float %1842)  ; FMax(a,b)
  %1844 = fsub fast float %1646, %1827
  %1845 = call float @dx.op.binary.f32(i32 35, float %1844, float 0.000000e+00)  ; FMax(a,b)
  %1846 = fmul fast float %1670, %1845
  %1847 = fsub fast float %1825, %1846
  %1848 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1847)  ; FMax(a,b)
  %1849 = call float @dx.op.binary.f32(i32 35, float %1843, float %1848)  ; FMax(a,b)
  %1850 = fsub fast float %1646, %1831
  %1851 = call float @dx.op.binary.f32(i32 35, float %1850, float 0.000000e+00)  ; FMax(a,b)
  %1852 = fmul fast float %1670, %1851
  %1853 = fsub fast float %1829, %1852
  %1854 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1853)  ; FMax(a,b)
  %1855 = call float @dx.op.binary.f32(i32 35, float %1849, float %1854)  ; FMax(a,b)
  %1856 = fmul fast float %1855, %1632
  %1857 = fadd fast float %1856, %1803
  %1858 = fmul fast float %1857, %1633
  %1859 = fadd fast float %1750, %1696
  %1860 = fadd fast float %1859, %1858
  br label %2397

; <label>:1861                                    ; preds = %1553
  %1862 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 0
  store float %1583, float* %1862, align 4
  %1863 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 1
  store float %1584, float* %1863, align 4
  %1864 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 2
  store float %1585, float* %1864, align 4
  %1865 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 3
  store float %1586, float* %1865, align 4
  %1866 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 %1522
  %1867 = load float, float* %1866, align 4, !tbaa !62
  %1868 = fmul fast float %1588, %1867
  %1869 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %1868)  ; FMax(a,b)
  %1870 = fmul fast float %1869, %1589
  %1871 = fmul fast float %1869, %1590
  %1872 = call float @dx.op.binary.f32(i32 35, float %1870, float -5.000000e-01)  ; FMax(a,b)
  %1873 = call float @dx.op.binary.f32(i32 35, float %1871, float -5.000000e-01)  ; FMax(a,b)
  %1874 = call float @dx.op.binary.f32(i32 36, float %1872, float 5.000000e-01)  ; FMin(a,b)
  %1875 = call float @dx.op.binary.f32(i32 36, float %1873, float 5.000000e-01)  ; FMin(a,b)
  %1876 = fadd fast float %1874, 5.000000e-01
  %1877 = fadd fast float %1875, 5.000000e-01
  %1878 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %1601, i32* %1878, align 4
  %1879 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %1602, i32* %1879, align 4
  %1880 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %1603, i32* %1880, align 4
  %1881 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %1604, i32* %1881, align 4
  %1882 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 %1599
  %1883 = load i32, i32* %1882, align 4, !tbaa !68
  %1884 = mul i32 %1883, %1597
  %1885 = mul i32 %1883, %1598
  %1886 = add i32 %1605, %1884
  %1887 = add i32 %1606, %1885
  %1888 = and i32 %1886, %1608
  %1889 = and i32 %1887, %1608
  %1890 = fsub fast float %1464, %1534
  %1891 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1888, i32 %1889, i32 %1522, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = extractvalue %dx.types.ResRet.i32 %1891, 1
  %1894 = extractvalue %dx.types.ResRet.i32 %1891, 2
  %1895 = extractvalue %dx.types.ResRet.i32 %1891, 3
  %1896 = and i32 %1892, 65535
  %1897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1896)  ; LegacyF16ToF32(value)
  %1898 = lshr i32 %1892, 16
  %1899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1898)  ; LegacyF16ToF32(value)
  %1900 = and i32 %1893, 65535
  %1901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1900)  ; LegacyF16ToF32(value)
  %1902 = lshr i32 %1893, 16
  %1903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1902)  ; LegacyF16ToF32(value)
  %1904 = and i32 %1894, 65535
  %1905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1904)  ; LegacyF16ToF32(value)
  %1906 = lshr i32 %1894, 16
  %1907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1906)  ; LegacyF16ToF32(value)
  %1908 = and i32 %1895, 65535
  %1909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1908)  ; LegacyF16ToF32(value)
  %1910 = lshr i32 %1895, 16
  %1911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1910)  ; LegacyF16ToF32(value)
  %1912 = fsub fast float %1890, %1899
  %1913 = call float @dx.op.binary.f32(i32 35, float %1912, float 0.000000e+00)  ; FMax(a,b)
  %1914 = extractvalue %dx.types.CBufRet.f32 %1536, 2
  %1915 = fmul fast float %1914, %1913
  %1916 = fsub fast float %1897, %1915
  %1917 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1916)  ; FMax(a,b)
  %1918 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1917)  ; FMax(a,b)
  %1919 = fsub fast float %1890, %1903
  %1920 = call float @dx.op.binary.f32(i32 35, float %1919, float 0.000000e+00)  ; FMax(a,b)
  %1921 = fmul fast float %1914, %1920
  %1922 = fsub fast float %1901, %1921
  %1923 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1922)  ; FMax(a,b)
  %1924 = call float @dx.op.binary.f32(i32 35, float %1918, float %1923)  ; FMax(a,b)
  %1925 = fsub fast float %1890, %1907
  %1926 = call float @dx.op.binary.f32(i32 35, float %1925, float 0.000000e+00)  ; FMax(a,b)
  %1927 = fmul fast float %1914, %1926
  %1928 = fsub fast float %1905, %1927
  %1929 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1928)  ; FMax(a,b)
  %1930 = call float @dx.op.binary.f32(i32 35, float %1924, float %1929)  ; FMax(a,b)
  %1931 = fsub fast float %1890, %1911
  %1932 = call float @dx.op.binary.f32(i32 35, float %1931, float 0.000000e+00)  ; FMax(a,b)
  %1933 = fmul fast float %1914, %1932
  %1934 = fsub fast float %1909, %1933
  %1935 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1934)  ; FMax(a,b)
  %1936 = call float @dx.op.binary.f32(i32 35, float %1930, float %1935)  ; FMax(a,b)
  %1937 = fsub fast float 5.000000e-01, %1874
  %1938 = fsub fast float 5.000000e-01, %1875
  %1939 = fmul fast float %1938, %1937
  %1940 = fmul fast float %1939, %1936
  store i32 %1601, i32* %1878, align 4
  store i32 %1602, i32* %1879, align 4
  store i32 %1603, i32* %1880, align 4
  store i32 %1604, i32* %1881, align 4
  %1941 = load i32, i32* %1882, align 4, !tbaa !68
  %1942 = mul i32 %1941, %1597
  %1943 = mul i32 %1941, %1598
  %1944 = add i32 %1612, %1942
  %1945 = add i32 %1606, %1943
  %1946 = and i32 %1944, %1608
  %1947 = and i32 %1945, %1608
  %1948 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1946, i32 %1947, i32 %1522, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1949 = extractvalue %dx.types.ResRet.i32 %1948, 0
  %1950 = extractvalue %dx.types.ResRet.i32 %1948, 1
  %1951 = extractvalue %dx.types.ResRet.i32 %1948, 2
  %1952 = extractvalue %dx.types.ResRet.i32 %1948, 3
  %1953 = and i32 %1949, 65535
  %1954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1953)  ; LegacyF16ToF32(value)
  %1955 = lshr i32 %1949, 16
  %1956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1955)  ; LegacyF16ToF32(value)
  %1957 = and i32 %1950, 65535
  %1958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1957)  ; LegacyF16ToF32(value)
  %1959 = lshr i32 %1950, 16
  %1960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1959)  ; LegacyF16ToF32(value)
  %1961 = and i32 %1951, 65535
  %1962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1961)  ; LegacyF16ToF32(value)
  %1963 = lshr i32 %1951, 16
  %1964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1963)  ; LegacyF16ToF32(value)
  %1965 = and i32 %1952, 65535
  %1966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1965)  ; LegacyF16ToF32(value)
  %1967 = lshr i32 %1952, 16
  %1968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1967)  ; LegacyF16ToF32(value)
  %1969 = fsub fast float %1890, %1956
  %1970 = call float @dx.op.binary.f32(i32 35, float %1969, float 0.000000e+00)  ; FMax(a,b)
  %1971 = fmul fast float %1914, %1970
  %1972 = fsub fast float %1954, %1971
  %1973 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1972)  ; FMax(a,b)
  %1974 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1973)  ; FMax(a,b)
  %1975 = fsub fast float %1890, %1960
  %1976 = call float @dx.op.binary.f32(i32 35, float %1975, float 0.000000e+00)  ; FMax(a,b)
  %1977 = fmul fast float %1914, %1976
  %1978 = fsub fast float %1958, %1977
  %1979 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1978)  ; FMax(a,b)
  %1980 = call float @dx.op.binary.f32(i32 35, float %1974, float %1979)  ; FMax(a,b)
  %1981 = fsub fast float %1890, %1964
  %1982 = call float @dx.op.binary.f32(i32 35, float %1981, float 0.000000e+00)  ; FMax(a,b)
  %1983 = fmul fast float %1914, %1982
  %1984 = fsub fast float %1962, %1983
  %1985 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1984)  ; FMax(a,b)
  %1986 = call float @dx.op.binary.f32(i32 35, float %1980, float %1985)  ; FMax(a,b)
  %1987 = fsub fast float %1890, %1968
  %1988 = call float @dx.op.binary.f32(i32 35, float %1987, float 0.000000e+00)  ; FMax(a,b)
  %1989 = fmul fast float %1914, %1988
  %1990 = fsub fast float %1966, %1989
  %1991 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1990)  ; FMax(a,b)
  %1992 = call float @dx.op.binary.f32(i32 35, float %1986, float %1991)  ; FMax(a,b)
  %1993 = fmul fast float %1938, %1876
  %1994 = fmul fast float %1993, %1992
  store i32 %1601, i32* %1878, align 4
  store i32 %1602, i32* %1879, align 4
  store i32 %1603, i32* %1880, align 4
  store i32 %1604, i32* %1881, align 4
  %1995 = load i32, i32* %1882, align 4, !tbaa !68
  %1996 = mul i32 %1995, %1597
  %1997 = mul i32 %1995, %1598
  %1998 = add i32 %1605, %1996
  %1999 = add i32 %1616, %1997
  %2000 = and i32 %1998, %1608
  %2001 = and i32 %1999, %1608
  %2002 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %2000, i32 %2001, i32 %1522, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = extractvalue %dx.types.ResRet.i32 %2002, 1
  %2005 = extractvalue %dx.types.ResRet.i32 %2002, 2
  %2006 = extractvalue %dx.types.ResRet.i32 %2002, 3
  %2007 = and i32 %2003, 65535
  %2008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2007)  ; LegacyF16ToF32(value)
  %2009 = lshr i32 %2003, 16
  %2010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2009)  ; LegacyF16ToF32(value)
  %2011 = and i32 %2004, 65535
  %2012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2011)  ; LegacyF16ToF32(value)
  %2013 = lshr i32 %2004, 16
  %2014 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2013)  ; LegacyF16ToF32(value)
  %2015 = and i32 %2005, 65535
  %2016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2015)  ; LegacyF16ToF32(value)
  %2017 = lshr i32 %2005, 16
  %2018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2017)  ; LegacyF16ToF32(value)
  %2019 = and i32 %2006, 65535
  %2020 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2019)  ; LegacyF16ToF32(value)
  %2021 = lshr i32 %2006, 16
  %2022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2021)  ; LegacyF16ToF32(value)
  %2023 = fsub fast float %1890, %2010
  %2024 = call float @dx.op.binary.f32(i32 35, float %2023, float 0.000000e+00)  ; FMax(a,b)
  %2025 = fmul fast float %1914, %2024
  %2026 = fsub fast float %2008, %2025
  %2027 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2026)  ; FMax(a,b)
  %2028 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2027)  ; FMax(a,b)
  %2029 = fsub fast float %1890, %2014
  %2030 = call float @dx.op.binary.f32(i32 35, float %2029, float 0.000000e+00)  ; FMax(a,b)
  %2031 = fmul fast float %1914, %2030
  %2032 = fsub fast float %2012, %2031
  %2033 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2032)  ; FMax(a,b)
  %2034 = call float @dx.op.binary.f32(i32 35, float %2028, float %2033)  ; FMax(a,b)
  %2035 = fsub fast float %1890, %2018
  %2036 = call float @dx.op.binary.f32(i32 35, float %2035, float 0.000000e+00)  ; FMax(a,b)
  %2037 = fmul fast float %1914, %2036
  %2038 = fsub fast float %2016, %2037
  %2039 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2038)  ; FMax(a,b)
  %2040 = call float @dx.op.binary.f32(i32 35, float %2034, float %2039)  ; FMax(a,b)
  %2041 = fsub fast float %1890, %2022
  %2042 = call float @dx.op.binary.f32(i32 35, float %2041, float 0.000000e+00)  ; FMax(a,b)
  %2043 = fmul fast float %1914, %2042
  %2044 = fsub fast float %2020, %2043
  %2045 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2044)  ; FMax(a,b)
  %2046 = call float @dx.op.binary.f32(i32 35, float %2040, float %2045)  ; FMax(a,b)
  %2047 = fmul fast float %2046, %1937
  store i32 %1601, i32* %1878, align 4
  store i32 %1602, i32* %1879, align 4
  store i32 %1603, i32* %1880, align 4
  store i32 %1604, i32* %1881, align 4
  %2048 = load i32, i32* %1882, align 4, !tbaa !68
  %2049 = mul i32 %2048, %1597
  %2050 = mul i32 %2048, %1598
  %2051 = add i32 %1612, %2049
  %2052 = add i32 %1616, %2050
  %2053 = and i32 %2051, %1608
  %2054 = and i32 %2052, %1608
  %2055 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %2053, i32 %2054, i32 %1522, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = extractvalue %dx.types.ResRet.i32 %2055, 1
  %2058 = extractvalue %dx.types.ResRet.i32 %2055, 2
  %2059 = extractvalue %dx.types.ResRet.i32 %2055, 3
  %2060 = and i32 %2056, 65535
  %2061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2060)  ; LegacyF16ToF32(value)
  %2062 = lshr i32 %2056, 16
  %2063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2062)  ; LegacyF16ToF32(value)
  %2064 = and i32 %2057, 65535
  %2065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2064)  ; LegacyF16ToF32(value)
  %2066 = lshr i32 %2057, 16
  %2067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2066)  ; LegacyF16ToF32(value)
  %2068 = and i32 %2058, 65535
  %2069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2068)  ; LegacyF16ToF32(value)
  %2070 = lshr i32 %2058, 16
  %2071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2070)  ; LegacyF16ToF32(value)
  %2072 = and i32 %2059, 65535
  %2073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2072)  ; LegacyF16ToF32(value)
  %2074 = lshr i32 %2059, 16
  %2075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2074)  ; LegacyF16ToF32(value)
  %2076 = fsub fast float %1890, %2063
  %2077 = call float @dx.op.binary.f32(i32 35, float %2076, float 0.000000e+00)  ; FMax(a,b)
  %2078 = fmul fast float %1914, %2077
  %2079 = fsub fast float %2061, %2078
  %2080 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2079)  ; FMax(a,b)
  %2081 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2080)  ; FMax(a,b)
  %2082 = fsub fast float %1890, %2067
  %2083 = call float @dx.op.binary.f32(i32 35, float %2082, float 0.000000e+00)  ; FMax(a,b)
  %2084 = fmul fast float %1914, %2083
  %2085 = fsub fast float %2065, %2084
  %2086 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2085)  ; FMax(a,b)
  %2087 = call float @dx.op.binary.f32(i32 35, float %2081, float %2086)  ; FMax(a,b)
  %2088 = fsub fast float %1890, %2071
  %2089 = call float @dx.op.binary.f32(i32 35, float %2088, float 0.000000e+00)  ; FMax(a,b)
  %2090 = fmul fast float %1914, %2089
  %2091 = fsub fast float %2069, %2090
  %2092 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2091)  ; FMax(a,b)
  %2093 = call float @dx.op.binary.f32(i32 35, float %2087, float %2092)  ; FMax(a,b)
  %2094 = fsub fast float %1890, %2075
  %2095 = call float @dx.op.binary.f32(i32 35, float %2094, float 0.000000e+00)  ; FMax(a,b)
  %2096 = fmul fast float %1914, %2095
  %2097 = fsub fast float %2073, %2096
  %2098 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2097)  ; FMax(a,b)
  %2099 = call float @dx.op.binary.f32(i32 35, float %2093, float %2098)  ; FMax(a,b)
  %2100 = fmul fast float %2099, %1876
  %2101 = fadd fast float %2100, %2047
  %2102 = fmul fast float %2101, %1877
  %2103 = fadd fast float %1994, %1940
  %2104 = fadd fast float %2103, %2102
  %2105 = fmul fast float %1520, 5.000000e-01
  %2106 = fmul fast float %1521, 5.000000e-01
  %2107 = fadd fast float %2105, 2.500000e-01
  %2108 = fadd fast float %2106, 2.500000e-01
  %2109 = fmul fast float %1571, %2107
  %2110 = fmul fast float %1571, %2108
  %2111 = fadd fast float %2109, -5.000000e-01
  %2112 = fadd fast float %2110, -5.000000e-01
  %2113 = fptosi float %2111 to i32
  %2114 = fptosi float %2112 to i32
  %2115 = fadd fast float %2109, 5.000000e-01
  %2116 = fadd fast float %2110, 5.000000e-01
  %2117 = call float @dx.op.unary.f32(i32 22, float %2115)  ; Frc(value)
  %2118 = call float @dx.op.unary.f32(i32 22, float %2116)  ; Frc(value)
  %2119 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  store float %1583, float* %2119, align 4
  %2120 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  store float %1584, float* %2120, align 4
  %2121 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  store float %1585, float* %2121, align 4
  %2122 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  store float %1586, float* %2122, align 4
  %2123 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 %1566
  %2124 = load float, float* %2123, align 4, !tbaa !62
  %2125 = fmul fast float %1588, %2124
  %2126 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %2125)  ; FMax(a,b)
  %2127 = fadd fast float %2117, -5.000000e-01
  %2128 = fadd fast float %2118, -5.000000e-01
  %2129 = fmul fast float %2126, %2127
  %2130 = fmul fast float %2126, %2128
  %2131 = call float @dx.op.binary.f32(i32 35, float %2129, float -5.000000e-01)  ; FMax(a,b)
  %2132 = call float @dx.op.binary.f32(i32 35, float %2130, float -5.000000e-01)  ; FMax(a,b)
  %2133 = call float @dx.op.binary.f32(i32 36, float %2131, float 5.000000e-01)  ; FMin(a,b)
  %2134 = call float @dx.op.binary.f32(i32 36, float %2132, float 5.000000e-01)  ; FMin(a,b)
  %2135 = fadd fast float %2133, 5.000000e-01
  %2136 = fadd fast float %2134, 5.000000e-01
  %2137 = call i32 @dx.op.binary.i32(i32 37, i32 %2113, i32 0)  ; IMax(a,b)
  %2138 = call i32 @dx.op.binary.i32(i32 37, i32 %2114, i32 0)  ; IMax(a,b)
  %2139 = call i32 @dx.op.binary.i32(i32 38, i32 %2137, i32 %1591)  ; IMin(a,b)
  %2140 = call i32 @dx.op.binary.i32(i32 38, i32 %2138, i32 %1591)  ; IMin(a,b)
  %2141 = sub i32 2, %1522
  %2142 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %1601, i32* %2142, align 4
  %2143 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %1602, i32* %2143, align 4
  %2144 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %1603, i32* %2144, align 4
  %2145 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %1604, i32* %2145, align 4
  %2146 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 %2141
  %2147 = load i32, i32* %2146, align 4, !tbaa !68
  %2148 = mul i32 %2147, %1597
  %2149 = mul i32 %2147, %1598
  %2150 = add i32 %2139, 536870912
  %2151 = add i32 %2150, %2148
  %2152 = add i32 %2140, 536870912
  %2153 = add i32 %2152, %2149
  %2154 = and i32 %2151, %1608
  %2155 = and i32 %2153, %1608
  %2156 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %2154, i32 %2155, i32 %1566, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2157 = extractvalue %dx.types.ResRet.i32 %2156, 0
  %2158 = extractvalue %dx.types.ResRet.i32 %2156, 1
  %2159 = extractvalue %dx.types.ResRet.i32 %2156, 2
  %2160 = extractvalue %dx.types.ResRet.i32 %2156, 3
  %2161 = and i32 %2157, 65535
  %2162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2161)  ; LegacyF16ToF32(value)
  %2163 = lshr i32 %2157, 16
  %2164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2163)  ; LegacyF16ToF32(value)
  %2165 = and i32 %2158, 65535
  %2166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2165)  ; LegacyF16ToF32(value)
  %2167 = lshr i32 %2158, 16
  %2168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2167)  ; LegacyF16ToF32(value)
  %2169 = and i32 %2159, 65535
  %2170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2169)  ; LegacyF16ToF32(value)
  %2171 = lshr i32 %2159, 16
  %2172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2171)  ; LegacyF16ToF32(value)
  %2173 = and i32 %2160, 65535
  %2174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2173)  ; LegacyF16ToF32(value)
  %2175 = lshr i32 %2160, 16
  %2176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2175)  ; LegacyF16ToF32(value)
  %2177 = fsub fast float %1890, %2164
  %2178 = call float @dx.op.binary.f32(i32 35, float %2177, float 0.000000e+00)  ; FMax(a,b)
  %2179 = fmul fast float %1914, %2178
  %2180 = fsub fast float %2162, %2179
  %2181 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2180)  ; FMax(a,b)
  %2182 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2181)  ; FMax(a,b)
  %2183 = fsub fast float %1890, %2168
  %2184 = call float @dx.op.binary.f32(i32 35, float %2183, float 0.000000e+00)  ; FMax(a,b)
  %2185 = fmul fast float %1914, %2184
  %2186 = fsub fast float %2166, %2185
  %2187 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2186)  ; FMax(a,b)
  %2188 = call float @dx.op.binary.f32(i32 35, float %2182, float %2187)  ; FMax(a,b)
  %2189 = fsub fast float %1890, %2172
  %2190 = call float @dx.op.binary.f32(i32 35, float %2189, float 0.000000e+00)  ; FMax(a,b)
  %2191 = fmul fast float %1914, %2190
  %2192 = fsub fast float %2170, %2191
  %2193 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2192)  ; FMax(a,b)
  %2194 = call float @dx.op.binary.f32(i32 35, float %2188, float %2193)  ; FMax(a,b)
  %2195 = fsub fast float %1890, %2176
  %2196 = call float @dx.op.binary.f32(i32 35, float %2195, float 0.000000e+00)  ; FMax(a,b)
  %2197 = fmul fast float %1914, %2196
  %2198 = fsub fast float %2174, %2197
  %2199 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2198)  ; FMax(a,b)
  %2200 = call float @dx.op.binary.f32(i32 35, float %2194, float %2199)  ; FMax(a,b)
  %2201 = fsub fast float 5.000000e-01, %2133
  %2202 = fsub fast float 5.000000e-01, %2134
  %2203 = fmul fast float %2202, %2201
  %2204 = fmul fast float %2203, %2200
  %2205 = add i32 %2113, 1
  %2206 = call i32 @dx.op.binary.i32(i32 37, i32 %2205, i32 0)  ; IMax(a,b)
  %2207 = call i32 @dx.op.binary.i32(i32 38, i32 %2206, i32 %1591)  ; IMin(a,b)
  store i32 %1601, i32* %2142, align 4
  store i32 %1602, i32* %2143, align 4
  store i32 %1603, i32* %2144, align 4
  store i32 %1604, i32* %2145, align 4
  %2208 = load i32, i32* %2146, align 4, !tbaa !68
  %2209 = mul i32 %2208, %1597
  %2210 = mul i32 %2208, %1598
  %2211 = add i32 %2207, 536870912
  %2212 = add i32 %2211, %2209
  %2213 = add i32 %2152, %2210
  %2214 = and i32 %2212, %1608
  %2215 = and i32 %2213, %1608
  %2216 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %2214, i32 %2215, i32 %1566, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2217 = extractvalue %dx.types.ResRet.i32 %2216, 0
  %2218 = extractvalue %dx.types.ResRet.i32 %2216, 1
  %2219 = extractvalue %dx.types.ResRet.i32 %2216, 2
  %2220 = extractvalue %dx.types.ResRet.i32 %2216, 3
  %2221 = and i32 %2217, 65535
  %2222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2221)  ; LegacyF16ToF32(value)
  %2223 = lshr i32 %2217, 16
  %2224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2223)  ; LegacyF16ToF32(value)
  %2225 = and i32 %2218, 65535
  %2226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2225)  ; LegacyF16ToF32(value)
  %2227 = lshr i32 %2218, 16
  %2228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2227)  ; LegacyF16ToF32(value)
  %2229 = and i32 %2219, 65535
  %2230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2229)  ; LegacyF16ToF32(value)
  %2231 = lshr i32 %2219, 16
  %2232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2231)  ; LegacyF16ToF32(value)
  %2233 = and i32 %2220, 65535
  %2234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2233)  ; LegacyF16ToF32(value)
  %2235 = lshr i32 %2220, 16
  %2236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2235)  ; LegacyF16ToF32(value)
  %2237 = fsub fast float %1890, %2224
  %2238 = call float @dx.op.binary.f32(i32 35, float %2237, float 0.000000e+00)  ; FMax(a,b)
  %2239 = fmul fast float %1914, %2238
  %2240 = fsub fast float %2222, %2239
  %2241 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2240)  ; FMax(a,b)
  %2242 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2241)  ; FMax(a,b)
  %2243 = fsub fast float %1890, %2228
  %2244 = call float @dx.op.binary.f32(i32 35, float %2243, float 0.000000e+00)  ; FMax(a,b)
  %2245 = fmul fast float %1914, %2244
  %2246 = fsub fast float %2226, %2245
  %2247 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2246)  ; FMax(a,b)
  %2248 = call float @dx.op.binary.f32(i32 35, float %2242, float %2247)  ; FMax(a,b)
  %2249 = fsub fast float %1890, %2232
  %2250 = call float @dx.op.binary.f32(i32 35, float %2249, float 0.000000e+00)  ; FMax(a,b)
  %2251 = fmul fast float %1914, %2250
  %2252 = fsub fast float %2230, %2251
  %2253 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2252)  ; FMax(a,b)
  %2254 = call float @dx.op.binary.f32(i32 35, float %2248, float %2253)  ; FMax(a,b)
  %2255 = fsub fast float %1890, %2236
  %2256 = call float @dx.op.binary.f32(i32 35, float %2255, float 0.000000e+00)  ; FMax(a,b)
  %2257 = fmul fast float %1914, %2256
  %2258 = fsub fast float %2234, %2257
  %2259 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2258)  ; FMax(a,b)
  %2260 = call float @dx.op.binary.f32(i32 35, float %2254, float %2259)  ; FMax(a,b)
  %2261 = fmul fast float %2202, %2135
  %2262 = fmul fast float %2261, %2260
  %2263 = add i32 %2114, 1
  %2264 = call i32 @dx.op.binary.i32(i32 37, i32 %2263, i32 0)  ; IMax(a,b)
  %2265 = call i32 @dx.op.binary.i32(i32 38, i32 %2264, i32 %1591)  ; IMin(a,b)
  store i32 %1601, i32* %2142, align 4
  store i32 %1602, i32* %2143, align 4
  store i32 %1603, i32* %2144, align 4
  store i32 %1604, i32* %2145, align 4
  %2266 = load i32, i32* %2146, align 4, !tbaa !68
  %2267 = mul i32 %2266, %1597
  %2268 = mul i32 %2266, %1598
  %2269 = add i32 %2150, %2267
  %2270 = add i32 %2265, 536870912
  %2271 = add i32 %2270, %2268
  %2272 = and i32 %2269, %1608
  %2273 = and i32 %2271, %1608
  %2274 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %2272, i32 %2273, i32 %1566, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2275 = extractvalue %dx.types.ResRet.i32 %2274, 0
  %2276 = extractvalue %dx.types.ResRet.i32 %2274, 1
  %2277 = extractvalue %dx.types.ResRet.i32 %2274, 2
  %2278 = extractvalue %dx.types.ResRet.i32 %2274, 3
  %2279 = and i32 %2275, 65535
  %2280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2279)  ; LegacyF16ToF32(value)
  %2281 = lshr i32 %2275, 16
  %2282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2281)  ; LegacyF16ToF32(value)
  %2283 = and i32 %2276, 65535
  %2284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2283)  ; LegacyF16ToF32(value)
  %2285 = lshr i32 %2276, 16
  %2286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2285)  ; LegacyF16ToF32(value)
  %2287 = and i32 %2277, 65535
  %2288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2287)  ; LegacyF16ToF32(value)
  %2289 = lshr i32 %2277, 16
  %2290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2289)  ; LegacyF16ToF32(value)
  %2291 = and i32 %2278, 65535
  %2292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2291)  ; LegacyF16ToF32(value)
  %2293 = lshr i32 %2278, 16
  %2294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2293)  ; LegacyF16ToF32(value)
  %2295 = fsub fast float %1890, %2282
  %2296 = call float @dx.op.binary.f32(i32 35, float %2295, float 0.000000e+00)  ; FMax(a,b)
  %2297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %2298 = extractvalue %dx.types.CBufRet.f32 %2297, 2
  %2299 = fmul fast float %2298, %2296
  %2300 = fsub fast float %2280, %2299
  %2301 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2300)  ; FMax(a,b)
  %2302 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2301)  ; FMax(a,b)
  %2303 = fsub fast float %1890, %2286
  %2304 = call float @dx.op.binary.f32(i32 35, float %2303, float 0.000000e+00)  ; FMax(a,b)
  %2305 = fmul fast float %2298, %2304
  %2306 = fsub fast float %2284, %2305
  %2307 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2306)  ; FMax(a,b)
  %2308 = call float @dx.op.binary.f32(i32 35, float %2302, float %2307)  ; FMax(a,b)
  %2309 = fsub fast float %1890, %2290
  %2310 = call float @dx.op.binary.f32(i32 35, float %2309, float 0.000000e+00)  ; FMax(a,b)
  %2311 = fmul fast float %2298, %2310
  %2312 = fsub fast float %2288, %2311
  %2313 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2312)  ; FMax(a,b)
  %2314 = call float @dx.op.binary.f32(i32 35, float %2308, float %2313)  ; FMax(a,b)
  %2315 = fsub fast float %1890, %2294
  %2316 = call float @dx.op.binary.f32(i32 35, float %2315, float 0.000000e+00)  ; FMax(a,b)
  %2317 = fmul fast float %2298, %2316
  %2318 = fsub fast float %2292, %2317
  %2319 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2318)  ; FMax(a,b)
  %2320 = call float @dx.op.binary.f32(i32 35, float %2314, float %2319)  ; FMax(a,b)
  %2321 = fmul fast float %2320, %2201
  store i32 %1601, i32* %2142, align 4
  store i32 %1602, i32* %2143, align 4
  store i32 %1603, i32* %2144, align 4
  store i32 %1604, i32* %2145, align 4
  %2322 = load i32, i32* %2146, align 4, !tbaa !68
  %2323 = mul i32 %2322, %1597
  %2324 = mul i32 %2322, %1598
  %2325 = add i32 %2211, %2323
  %2326 = add i32 %2270, %2324
  %2327 = and i32 %2325, %1608
  %2328 = and i32 %2326, %1608
  %2329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %2330 = extractvalue %dx.types.CBufRet.f32 %2329, 0
  %2331 = fsub fast float %1464, %2330
  %2332 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %2327, i32 %2328, i32 %1566, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = extractvalue %dx.types.ResRet.i32 %2332, 1
  %2335 = extractvalue %dx.types.ResRet.i32 %2332, 2
  %2336 = extractvalue %dx.types.ResRet.i32 %2332, 3
  %2337 = and i32 %2333, 65535
  %2338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2337)  ; LegacyF16ToF32(value)
  %2339 = lshr i32 %2333, 16
  %2340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2339)  ; LegacyF16ToF32(value)
  %2341 = and i32 %2334, 65535
  %2342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2341)  ; LegacyF16ToF32(value)
  %2343 = lshr i32 %2334, 16
  %2344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2343)  ; LegacyF16ToF32(value)
  %2345 = and i32 %2335, 65535
  %2346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2345)  ; LegacyF16ToF32(value)
  %2347 = lshr i32 %2335, 16
  %2348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2347)  ; LegacyF16ToF32(value)
  %2349 = and i32 %2336, 65535
  %2350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2349)  ; LegacyF16ToF32(value)
  %2351 = lshr i32 %2336, 16
  %2352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2351)  ; LegacyF16ToF32(value)
  %2353 = fsub fast float %2331, %2340
  %2354 = call float @dx.op.binary.f32(i32 35, float %2353, float 0.000000e+00)  ; FMax(a,b)
  %2355 = fmul fast float %2298, %2354
  %2356 = fsub fast float %2338, %2355
  %2357 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2356)  ; FMax(a,b)
  %2358 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2357)  ; FMax(a,b)
  %2359 = fsub fast float %2331, %2344
  %2360 = call float @dx.op.binary.f32(i32 35, float %2359, float 0.000000e+00)  ; FMax(a,b)
  %2361 = fmul fast float %2298, %2360
  %2362 = fsub fast float %2342, %2361
  %2363 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2362)  ; FMax(a,b)
  %2364 = call float @dx.op.binary.f32(i32 35, float %2358, float %2363)  ; FMax(a,b)
  %2365 = fsub fast float %2331, %2348
  %2366 = call float @dx.op.binary.f32(i32 35, float %2365, float 0.000000e+00)  ; FMax(a,b)
  %2367 = fmul fast float %2298, %2366
  %2368 = fsub fast float %2346, %2367
  %2369 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2368)  ; FMax(a,b)
  %2370 = call float @dx.op.binary.f32(i32 35, float %2364, float %2369)  ; FMax(a,b)
  %2371 = fsub fast float %2331, %2352
  %2372 = call float @dx.op.binary.f32(i32 35, float %2371, float 0.000000e+00)  ; FMax(a,b)
  %2373 = fmul fast float %2298, %2372
  %2374 = fsub fast float %2350, %2373
  %2375 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2374)  ; FMax(a,b)
  %2376 = call float @dx.op.binary.f32(i32 35, float %2370, float %2375)  ; FMax(a,b)
  %2377 = fmul fast float %2376, %2135
  %2378 = fadd fast float %2377, %2321
  %2379 = fmul fast float %2378, %2136
  %2380 = fadd fast float %2262, %2204
  %2381 = fadd fast float %2380, %2379
  %2382 = call float @dx.op.binary.f32(i32 35, float %1558, float %1559)  ; FMax(a,b)
  %2383 = extractvalue %dx.types.CBufRet.f32 %2297, 1
  %2384 = fmul fast float %2383, 2.000000e+00
  %2385 = fadd fast float %2382, -1.000000e+00
  %2386 = fadd fast float %2385, %2384
  %2387 = fdiv fast float %2386, %2384
  %2388 = call float @dx.op.unary.f32(i32 7, float %2387)  ; Saturate(value)
  %2389 = fmul fast float %2388, 2.000000e+00
  %2390 = fsub fast float 3.000000e+00, %2389
  %2391 = fmul fast float %2388, %2388
  %2392 = fmul fast float %2391, %2390
  %2393 = fmul fast float %2392, %2381
  %2394 = fsub fast float 1.000000e+00, %2392
  %2395 = fmul fast float %2394, %2104
  %2396 = fadd fast float %2395, %2393
  br label %2397

; <label>:2397                                    ; preds = %1861, %1617, %1519
  %2398 = phi float [ 0.000000e+00, %1519 ], [ %2396, %1861 ], [ %1860, %1617 ]
  %2399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2400 = extractvalue %dx.types.CBufRet.f32 %2399, 0
  %2401 = extractvalue %dx.types.CBufRet.f32 %2399, 1
  %2402 = fsub fast float %1462, %2400
  %2403 = fsub fast float %1463, %2401
  %2404 = fmul fast float %2402, %2402
  %2405 = fmul fast float %2403, %2403
  %2406 = fadd fast float %2404, %2405
  %2407 = call float @dx.op.unary.f32(i32 24, float %2406)  ; Sqrt(value)
  %2408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %2409 = extractvalue %dx.types.CBufRet.f32 %2408, 0
  %2410 = extractvalue %dx.types.CBufRet.f32 %2408, 1
  %2411 = fsub fast float %2410, %2409
  %2412 = fsub fast float %2407, %2409
  %2413 = fdiv fast float %2412, %2411
  %2414 = call float @dx.op.unary.f32(i32 7, float %2413)  ; Saturate(value)
  %2415 = fmul fast float %2414, 2.000000e+00
  %2416 = fsub fast float 3.000000e+00, %2415
  %2417 = fmul fast float %2414, %2414
  %2418 = fmul fast float %2417, %2416
  %2419 = fsub fast float 1.000000e+00, %2418
  %2420 = fmul fast float %2419, %2398
  %2421 = fadd fast float %2420, %1455
  %2422 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %2423 = extractvalue %dx.types.CBufRet.i32 %2422, 0
  %2424 = and i32 %2423, 7
  %2425 = icmp eq i32 %2424, 0
  br i1 %2425, label %2497, label %2426

; <label>:2426                                    ; preds = %2397
  %2427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2428 = extractvalue %dx.types.CBufRet.f32 %2427, 0
  %2429 = extractvalue %dx.types.CBufRet.f32 %2427, 1
  %2430 = extractvalue %dx.types.CBufRet.f32 %2427, 2
  %2431 = fadd fast float %2428, %101
  %2432 = fadd fast float %2429, %102
  %2433 = fadd fast float %2430, %103
  %2434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %2435 = extractvalue %dx.types.CBufRet.f32 %2434, 0
  %2436 = extractvalue %dx.types.CBufRet.f32 %2434, 1
  %2437 = extractvalue %dx.types.CBufRet.f32 %2434, 2
  %2438 = extractvalue %dx.types.CBufRet.f32 %2434, 3
  %2439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %2440 = extractvalue %dx.types.CBufRet.f32 %2439, 0
  %2441 = extractvalue %dx.types.CBufRet.f32 %2439, 1
  %2442 = extractvalue %dx.types.CBufRet.f32 %2439, 2
  %2443 = extractvalue %dx.types.CBufRet.f32 %2439, 3
  %2444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %2445 = extractvalue %dx.types.CBufRet.f32 %2444, 0
  %2446 = extractvalue %dx.types.CBufRet.f32 %2444, 1
  %2447 = extractvalue %dx.types.CBufRet.f32 %2444, 2
  %2448 = extractvalue %dx.types.CBufRet.f32 %2444, 3
  %2449 = fmul fast float %2431, %2435
  %2450 = call float @dx.op.tertiary.f32(i32 46, float %2432, float %2436, float %2449)  ; FMad(a,b,c)
  %2451 = call float @dx.op.tertiary.f32(i32 46, float %2433, float %2437, float %2450)  ; FMad(a,b,c)
  %2452 = fadd fast float %2451, %2438
  %2453 = fmul fast float %2440, %2431
  %2454 = call float @dx.op.tertiary.f32(i32 46, float %2432, float %2441, float %2453)  ; FMad(a,b,c)
  %2455 = call float @dx.op.tertiary.f32(i32 46, float %2433, float %2442, float %2454)  ; FMad(a,b,c)
  %2456 = fadd fast float %2455, %2443
  %2457 = fmul fast float %2445, %2431
  %2458 = call float @dx.op.tertiary.f32(i32 46, float %2432, float %2446, float %2457)  ; FMad(a,b,c)
  %2459 = call float @dx.op.tertiary.f32(i32 46, float %2433, float %2447, float %2458)  ; FMad(a,b,c)
  %2460 = fadd fast float %2459, %2448
  %2461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %2462 = extractvalue %dx.types.CBufRet.f32 %2461, 1
  %2463 = extractvalue %dx.types.CBufRet.f32 %2461, 0
  %2464 = fmul fast float %2463, %155
  %2465 = fadd fast float %2460, %2464
  %2466 = fmul fast float %155, 0x401921FB60000000
  %2467 = call float @dx.op.unary.f32(i32 13, float %2466)  ; Sin(value)
  %2468 = call float @dx.op.unary.f32(i32 12, float %2466)  ; Cos(value)
  %2469 = fmul fast float %2468, %2462
  %2470 = call float @dx.op.tertiary.f32(i32 46, float %2467, float %2462, float 0.000000e+00)  ; FMad(a,b,c)
  %2471 = fmul fast float %2462, %2467
  %2472 = fsub fast float -0.000000e+00, %2471
  %2473 = call float @dx.op.tertiary.f32(i32 46, float %2468, float %2462, float 0.000000e+00)  ; FMad(a,b,c)
  br label %2474

; <label>:2474                                    ; preds = %2474, %2426
  %2475 = phi float [ 0.000000e+00, %2426 ], [ %2489, %2474 ]
  %2476 = phi i32 [ 0, %2426 ], [ %2490, %2474 ]
  %2477 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %2476
  %2478 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %2476
  %2479 = load float, float* %2477, align 4
  %2480 = load float, float* %2478, align 4
  %2481 = fmul fast float %2469, %2479
  %2482 = call float @dx.op.tertiary.f32(i32 46, float %2480, float %2472, float %2481)  ; FMad(a,b,c)
  %2483 = fmul fast float %2479, %2470
  %2484 = call float @dx.op.tertiary.f32(i32 46, float %2480, float %2473, float %2483)  ; FMad(a,b,c)
  %2485 = fadd fast float %2452, %2482
  %2486 = fadd fast float %2456, %2484
  %2487 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %23, float %2485, float %2486, float undef, float undef, i32 0, i32 0, i32 undef, float %2465)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2488 = extractvalue %dx.types.ResRet.f32 %2487, 0
  %2489 = fadd fast float %2488, %2475
  %2490 = add nuw nsw i32 %2476, 1
  %2491 = icmp eq i32 %2490, 4
  br i1 %2491, label %2492, label %2474

; <label>:2492                                    ; preds = %2474
  %2493 = fmul fast float %2489, 2.500000e-01
  %2494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %2495 = extractvalue %dx.types.CBufRet.f32 %2494, 1
  %2496 = fmul fast float %2495, %2493
  br label %2497

; <label>:2497                                    ; preds = %2492, %2397
  %2498 = phi float [ %2493, %2492 ], [ 0.000000e+00, %2397 ]
  %2499 = phi float [ %2496, %2492 ], [ 0.000000e+00, %2397 ]
  %2500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.i32 %2500, 0
  %2502 = and i32 %2501, 7
  %2503 = icmp eq i32 %2502, 0
  br i1 %2503, label %2581, label %2504

; <label>:2504                                    ; preds = %2497
  %2505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %2506 = extractvalue %dx.types.CBufRet.f32 %2505, 0
  %2507 = fmul fast float %2506, %2498
  %2508 = fadd fast float %2507, %2421
  %2509 = extractvalue %dx.types.CBufRet.f32 %2505, 2
  %2510 = fmul fast float %2509, %2498
  %2511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %2512 = extractvalue %dx.types.CBufRet.f32 %2511, 0
  %2513 = fmul fast float %2512, %2498
  %2514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2515 = and i32 %2501, 8
  %2516 = icmp eq i32 %2515, 0
  br i1 %2516, label %2581, label %2517

; <label>:2517                                    ; preds = %2504
  %2518 = extractvalue %dx.types.CBufRet.f32 %2514, 2
  %2519 = fadd fast float %2518, %103
  %2520 = extractvalue %dx.types.CBufRet.f32 %2514, 1
  %2521 = fadd fast float %2520, %102
  %2522 = extractvalue %dx.types.CBufRet.f32 %2514, 0
  %2523 = fadd fast float %2522, %101
  %2524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %2525 = extractvalue %dx.types.CBufRet.f32 %2524, 0
  %2526 = extractvalue %dx.types.CBufRet.f32 %2524, 1
  %2527 = extractvalue %dx.types.CBufRet.f32 %2524, 2
  %2528 = fsub fast float %2523, %2525
  %2529 = fsub fast float %2521, %2526
  %2530 = fsub fast float %2519, %2527
  %2531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %2532 = extractvalue %dx.types.CBufRet.f32 %2531, 0
  %2533 = extractvalue %dx.types.CBufRet.f32 %2531, 1
  %2534 = extractvalue %dx.types.CBufRet.f32 %2531, 2
  %2535 = fmul fast float %2528, %2532
  %2536 = fmul fast float %2529, %2533
  %2537 = fmul fast float %2530, %2534
  %2538 = fcmp fast oge float %2535, 0.000000e+00
  %2539 = fcmp fast oge float %2536, 0.000000e+00
  %2540 = fcmp fast oge float %2537, 0.000000e+00
  %2541 = and i1 %2538, %2539
  %2542 = and i1 %2540, %2541
  %2543 = fcmp fast ole float %2535, 1.000000e+00
  %2544 = fcmp fast ole float %2536, 1.000000e+00
  %2545 = fcmp fast ole float %2537, 1.000000e+00
  %2546 = and i1 %2543, %2544
  %2547 = and i1 %2545, %2546
  %2548 = and i1 %2542, %2547
  br i1 %2548, label %2549, label %2581

; <label>:2549                                    ; preds = %2517
  %2550 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %2551 = extractvalue %dx.types.CBufRet.i32 %2550, 0
  %2552 = icmp eq i32 %2551, 0
  br i1 %2552, label %2559, label %2553

; <label>:2553                                    ; preds = %2549
  %2554 = add i32 %2551, 0
  %2555 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2554, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2556 = fsub fast float -0.000000e+00, %2536
  %2557 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2555, %dx.types.Handle %50, float %2535, float %2556, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2558 = extractvalue %dx.types.ResRet.f32 %2557, 0
  br label %2559

; <label>:2559                                    ; preds = %2553, %2549
  %2560 = phi float [ %2558, %2553 ], [ 1.000000e+00, %2549 ]
  %2561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %2562 = extractvalue %dx.types.CBufRet.i32 %2561, 0
  %2563 = and i32 %2562, 32
  %2564 = icmp ne i32 %2563, 0
  %2565 = fmul fast float %2560, %2498
  %2566 = select i1 %2564, float %2560, float %2565
  %2567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %2568 = extractvalue %dx.types.CBufRet.f32 %2567, 1
  %2569 = fmul fast float %2566, %2568
  %2570 = fadd fast float %2569, %2508
  %2571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %2572 = extractvalue %dx.types.CBufRet.f32 %2571, 0
  %2573 = fmul fast float %2566, %2572
  %2574 = fadd fast float %2573, %2499
  %2575 = extractvalue %dx.types.CBufRet.f32 %2571, 1
  %2576 = fmul fast float %2566, %2575
  %2577 = fadd fast float %2576, %2510
  %2578 = extractvalue %dx.types.CBufRet.f32 %2571, 2
  %2579 = fmul fast float %2578, %2566
  %2580 = fadd fast float %2579, %2513
  br label %2581

; <label>:2581                                    ; preds = %2559, %2517, %2504, %2497, %1451
  %2582 = phi float [ %2421, %2497 ], [ %1455, %1451 ], [ %2570, %2559 ], [ %2508, %2517 ], [ %2508, %2504 ]
  %2583 = phi float [ %2499, %2497 ], [ 0.000000e+00, %1451 ], [ %2574, %2559 ], [ %2499, %2517 ], [ %2499, %2504 ]
  %2584 = phi float [ 0.000000e+00, %2497 ], [ 0.000000e+00, %1451 ], [ %2577, %2559 ], [ %2510, %2517 ], [ %2510, %2504 ]
  %2585 = phi float [ 0.000000e+00, %2497 ], [ 0.000000e+00, %1451 ], [ %2580, %2559 ], [ %2513, %2517 ], [ %2513, %2504 ]
  %2586 = call float @dx.op.unary.f32(i32 7, float %2582)  ; Saturate(value)
  %2587 = call float @dx.op.unary.f32(i32 7, float %2583)  ; Saturate(value)
  %2588 = call float @dx.op.unary.f32(i32 7, float %2584)  ; Saturate(value)
  %2589 = call float @dx.op.unary.f32(i32 7, float %2585)  ; Saturate(value)
  %2590 = fcmp fast une float %2588, 0.000000e+00
  %2591 = fcmp fast une float %2589, 0.000000e+00
  %2592 = or i1 %2590, %2591
  br i1 %2592, label %2593, label %3159

; <label>:2593                                    ; preds = %2581
  %2594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2595 = extractvalue %dx.types.CBufRet.f32 %2594, 0
  %2596 = extractvalue %dx.types.CBufRet.f32 %2594, 1
  %2597 = extractvalue %dx.types.CBufRet.f32 %2594, 2
  %2598 = fadd fast float %2595, %101
  %2599 = fadd fast float %2596, %102
  %2600 = fadd fast float %2597, %103
  br i1 %2590, label %2601, label %2874

; <label>:2601                                    ; preds = %2593
  %2602 = call float @dx.op.unary.f32(i32 23, float %1288)  ; Log(value)
  %2603 = fmul fast float %2602, 4.000000e+00
  %2604 = call float @dx.op.unary.f32(i32 21, float %2603)  ; Exp(value)
  %2605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %2606 = extractvalue %dx.types.CBufRet.f32 %2605, 0
  %2607 = fmul fast float %2606, %2598
  %2608 = fmul fast float %2606, %2599
  %2609 = fmul fast float %2606, %2600
  %2610 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %2611 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %2612 = call float @dx.op.unary.f32(i32 6, float %58)  ; FAbs(value)
  %2613 = call float @dx.op.unary.f32(i32 23, float %2610)  ; Log(value)
  %2614 = call float @dx.op.unary.f32(i32 23, float %2611)  ; Log(value)
  %2615 = call float @dx.op.unary.f32(i32 23, float %2612)  ; Log(value)
  %2616 = fmul fast float %2613, 4.000000e+00
  %2617 = fmul fast float %2614, 4.000000e+00
  %2618 = fmul fast float %2615, 4.000000e+00
  %2619 = call float @dx.op.unary.f32(i32 21, float %2616)  ; Exp(value)
  %2620 = call float @dx.op.unary.f32(i32 21, float %2617)  ; Exp(value)
  %2621 = call float @dx.op.unary.f32(i32 21, float %2618)  ; Exp(value)
  %2622 = fadd fast float %2620, %2619
  %2623 = fadd fast float %2622, %2621
  %2624 = fdiv fast float 1.000000e+00, %2623
  %2625 = fmul fast float %2624, %2619
  %2626 = fcmp fast ogt float %56, 0.000000e+00
  %2627 = fcmp fast ogt float %57, 0.000000e+00
  %2628 = fcmp fast ogt float %58, 0.000000e+00
  %2629 = fcmp fast olt float %56, 0.000000e+00
  %2630 = fcmp fast olt float %57, 0.000000e+00
  %2631 = fcmp fast olt float %58, 0.000000e+00
  %2632 = zext i1 %2626 to i32
  %2633 = zext i1 %2627 to i32
  %2634 = zext i1 %2628 to i32
  %2635 = zext i1 %2629 to i32
  %2636 = zext i1 %2630 to i32
  %2637 = zext i1 %2631 to i32
  %2638 = sub nsw i32 %2632, %2635
  %2639 = sub nsw i32 %2633, %2636
  %2640 = sub nsw i32 %2634, %2637
  %2641 = call float @dx.op.unary.f32(i32 83, float %2607)  ; DerivCoarseX(value)
  %2642 = call float @dx.op.unary.f32(i32 83, float %2608)  ; DerivCoarseX(value)
  %2643 = call float @dx.op.unary.f32(i32 83, float %2609)  ; DerivCoarseX(value)
  %2644 = call float @dx.op.unary.f32(i32 84, float %2607)  ; DerivCoarseY(value)
  %2645 = call float @dx.op.unary.f32(i32 84, float %2608)  ; DerivCoarseY(value)
  %2646 = call float @dx.op.unary.f32(i32 84, float %2609)  ; DerivCoarseY(value)
  %2647 = fcmp fast ole float %155, %2625
  %2648 = fmul fast float %2624, %2622
  %2649 = fcmp fast ole float %155, %2648
  %2650 = select i1 %2649, float %2609, float %2607
  %2651 = select i1 %2649, float %2607, float %2608
  %2652 = select i1 %2647, float %2608, float %2650
  %2653 = select i1 %2647, float %2609, float %2651
  %2654 = select i1 %2649, float %2643, float %2641
  %2655 = select i1 %2649, float %2641, float %2642
  %2656 = select i1 %2647, float %2642, float %2654
  %2657 = select i1 %2647, float %2643, float %2655
  %2658 = select i1 %2649, float %2646, float %2644
  %2659 = select i1 %2649, float %2644, float %2645
  %2660 = select i1 %2647, float %2645, float %2658
  %2661 = select i1 %2647, float %2646, float %2659
  %2662 = call float @dx.op.unary.f32(i32 27, float %2652)  ; Round_ni(value)
  %2663 = call float @dx.op.unary.f32(i32 27, float %2653)  ; Round_ni(value)
  %2664 = fptosi float %2662 to i32
  %2665 = fptosi float %2663 to i32
  %2666 = xor i32 %2665, %2664
  %2667 = sitofp i32 %2666 to float
  %2668 = fptosi float %2667 to i32
  %2669 = sitofp i32 %2668 to float
  %2670 = fmul fast float %2669, 0x3FE3C6EF40000000
  %2671 = frem fast float %2662, 2.560000e+02
  %2672 = frem fast float %2663, 2.560000e+02
  %2673 = fptoui float %2671 to i32
  %2674 = fptoui float %2672 to i32
  %2675 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %2673, i32 %2674, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2676 = extractvalue %dx.types.ResRet.f32 %2675, 0
  %2677 = extractvalue %dx.types.ResRet.f32 %2675, 1
  %2678 = extractvalue %dx.types.ResRet.f32 %2675, 2
  %2679 = fadd fast float %2676, %2670
  %2680 = fadd fast float %2677, %2670
  %2681 = fadd fast float %2678, %2670
  %2682 = call float @dx.op.unary.f32(i32 22, float %2679)  ; Frc(value)
  %2683 = call float @dx.op.unary.f32(i32 22, float %2680)  ; Frc(value)
  %2684 = call float @dx.op.unary.f32(i32 22, float %2681)  ; Frc(value)
  %2685 = fmul fast float %2684, 0x401921FB60000000
  %2686 = call float @dx.op.unary.f32(i32 13, float %2685)  ; Sin(value)
  %2687 = call float @dx.op.unary.f32(i32 12, float %2685)  ; Cos(value)
  %2688 = fsub fast float -0.000000e+00, %2687
  %2689 = fmul fast float %2687, %2652
  %2690 = call float @dx.op.tertiary.f32(i32 46, float %2686, float %2653, float %2689)  ; FMad(a,b,c)
  %2691 = fmul fast float %2686, %2652
  %2692 = call float @dx.op.tertiary.f32(i32 46, float %2688, float %2653, float %2691)  ; FMad(a,b,c)
  %2693 = fadd fast float %2690, %2682
  %2694 = fadd fast float %2692, %2683
  %2695 = extractvalue %dx.types.CBufRet.f32 %2605, 3
  %2696 = bitcast float %2695 to i32
  %2697 = icmp eq i32 %2696, 0
  br i1 %2697, label %2736, label %2698

; <label>:2698                                    ; preds = %2601
  %2699 = add i32 %2696, 0
  %2700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2699, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2701 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2700, %dx.types.Handle %50, float %2693, float %2694, float undef, float undef, i32 0, i32 0, i32 undef, float %2656, float %2657, float undef, float %2660, float %2661, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2702 = extractvalue %dx.types.ResRet.f32 %2701, 0
  %2703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %2704 = extractvalue %dx.types.CBufRet.f32 %2703, 1
  %2705 = extractvalue %dx.types.CBufRet.f32 %2703, 2
  %2706 = fsub fast float 1.000000e+00, %2588
  %2707 = call float @dx.op.binary.f32(i32 35, float %2706, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2708 = bitcast float %2588 to i32
  %2709 = sitofp i32 %2708 to float
  %2710 = fadd fast float %2709, 0xC1CFBF8940000000
  %2711 = fmul fast float %2705, %2710
  %2712 = fadd fast float %2711, 0x41CFBF8940000000
  %2713 = fptosi float %2712 to i32
  %2714 = bitcast i32 %2713 to float
  %2715 = bitcast float %2707 to i32
  %2716 = sitofp i32 %2715 to float
  %2717 = fadd fast float %2716, 0xC1CFBF8940000000
  %2718 = fmul fast float %2717, %2705
  %2719 = fadd fast float %2718, 0x41CFBF8940000000
  %2720 = fptosi float %2719 to i32
  %2721 = bitcast i32 %2720 to float
  %2722 = fmul fast float %2714, %2704
  %2723 = fmul fast float %2721, %2704
  %2724 = fsub fast float %2707, %2722
  %2725 = fadd fast float %2723, %2707
  %2726 = call float @dx.op.unary.f32(i32 7, float %2724)  ; Saturate(value)
  %2727 = call float @dx.op.unary.f32(i32 7, float %2725)  ; Saturate(value)
  %2728 = fsub fast float %2702, %2726
  %2729 = fsub fast float %2727, %2726
  %2730 = bitcast float %2729 to i32
  %2731 = sub nsw i32 2129859010, %2730
  %2732 = bitcast i32 %2731 to float
  %2733 = fmul fast float %2732, %2728
  %2734 = call float @dx.op.unary.f32(i32 7, float %2733)  ; Saturate(value)
  %2735 = fcmp fast olt float %2734, 0x3F70101020000000
  br i1 %2735, label %2874, label %2736

; <label>:2736                                    ; preds = %2698, %2601
  %2737 = phi float [ %2734, %2698 ], [ %2588, %2601 ]
  %2738 = fmul fast float %2737, %2604
  %2739 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %2740 = extractvalue %dx.types.CBufRet.i32 %2739, 1
  %2741 = extractvalue %dx.types.CBufRet.i32 %2739, 0
  %2742 = add i32 %2741, 0
  %2743 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2742, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2744 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2743, %dx.types.Handle %49, float %2693, float %2694, float undef, float undef, i32 0, i32 0, i32 undef, float %2656, float %2657, float undef, float %2660, float %2661, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2745 = extractvalue %dx.types.ResRet.f32 %2744, 0
  %2746 = extractvalue %dx.types.ResRet.f32 %2744, 1
  %2747 = extractvalue %dx.types.ResRet.f32 %2744, 2
  %2748 = extractvalue %dx.types.ResRet.f32 %2744, 3
  %2749 = and i32 %2740, 255
  %2750 = uitofp i32 %2749 to float
  %2751 = lshr i32 %2740, 8
  %2752 = and i32 %2751, 255
  %2753 = uitofp i32 %2752 to float
  %2754 = fmul fast float %2748, %2750
  %2755 = fadd fast float %2754, %2753
  %2756 = fmul fast float %2755, 0x3F70101000000000
  %2757 = fadd fast float %2756, 0xBFB99999A0000000
  %2758 = call float @dx.op.unary.f32(i32 7, float %2757)  ; Saturate(value)
  %2759 = fmul fast float %2758, 0x3FF1C71C80000000
  %2760 = call float @dx.op.binary.f32(i32 36, float %2756, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2761 = fsub fast float 1.000000e+00, %2759
  %2762 = call float @dx.op.unary.f32(i32 7, float %2761)  ; Saturate(value)
  %2763 = fmul fast float %2762, %2745
  %2764 = fmul fast float %2762, %2746
  %2765 = fmul fast float %2762, %2747
  %2766 = call float @dx.op.unary.f32(i32 7, float %2763)  ; Saturate(value)
  %2767 = call float @dx.op.unary.f32(i32 7, float %2764)  ; Saturate(value)
  %2768 = call float @dx.op.unary.f32(i32 7, float %2765)  ; Saturate(value)
  %2769 = fmul fast float %2759, %2745
  %2770 = fmul fast float %2759, %2746
  %2771 = fmul fast float %2759, %2747
  %2772 = fadd fast float %2769, %2760
  %2773 = fadd fast float %2770, %2760
  %2774 = fadd fast float %2771, %2760
  %2775 = call float @dx.op.unary.f32(i32 7, float %2772)  ; Saturate(value)
  %2776 = call float @dx.op.unary.f32(i32 7, float %2773)  ; Saturate(value)
  %2777 = call float @dx.op.unary.f32(i32 7, float %2774)  ; Saturate(value)
  %2778 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %2779 = extractvalue %dx.types.CBufRet.i32 %2778, 3
  %2780 = extractvalue %dx.types.CBufRet.i32 %2778, 2
  %2781 = add i32 %2780, 0
  %2782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2781, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2783 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2782, %dx.types.Handle %49, float %2693, float %2694, float undef, float undef, i32 0, i32 0, i32 undef, float %2656, float %2657, float undef, float %2660, float %2661, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2784 = extractvalue %dx.types.ResRet.f32 %2783, 0
  %2785 = extractvalue %dx.types.ResRet.f32 %2783, 1
  %2786 = extractvalue %dx.types.ResRet.f32 %2783, 2
  %2787 = extractvalue %dx.types.ResRet.f32 %2783, 3
  %2788 = and i32 %2779, 255
  %2789 = uitofp i32 %2788 to float
  %2790 = lshr i32 %2779, 8
  %2791 = and i32 %2790, 255
  %2792 = uitofp i32 %2791 to float
  %2793 = lshr i32 %2779, 16
  %2794 = and i32 %2793, 255
  %2795 = uitofp i32 %2794 to float
  %2796 = fmul fast float %2795, 0x3F70101000000000
  %2797 = fmul fast float %2784, %2789
  %2798 = fadd fast float %2797, %2792
  %2799 = fmul fast float %2798, 0x3F70101000000000
  %2800 = fadd fast float %2785, -5.000000e-01
  %2801 = fadd fast float %2787, -5.000000e-01
  %2802 = fmul fast float %2800, %2796
  %2803 = fmul fast float %2801, %2796
  %2804 = fadd fast float %2802, 5.000000e-01
  %2805 = fadd fast float %2803, 5.000000e-01
  %2806 = fmul fast float %2804, 2.000000e+00
  %2807 = fadd fast float %2806, -1.000000e+00
  %2808 = fmul fast float %2805, 2.000000e+00
  %2809 = fadd fast float %2808, -1.000000e+00
  %2810 = fadd fast float %2807, %2809
  %2811 = fmul fast float %2810, 5.000000e-01
  %2812 = fsub fast float %2807, %2809
  %2813 = fmul fast float %2812, 5.000000e-01
  %2814 = call float @dx.op.unary.f32(i32 6, float %2811)  ; FAbs(value)
  %2815 = fsub fast float 1.000000e+00, %2814
  %2816 = call float @dx.op.unary.f32(i32 6, float %2813)  ; FAbs(value)
  %2817 = fsub fast float %2815, %2816
  %2818 = call float @dx.op.dot3.f32(i32 55, float %2811, float %2813, float %2817, float %2811, float %2813, float %2817)  ; Dot3(ax,ay,az,bx,by,bz)
  %2819 = call float @dx.op.unary.f32(i32 25, float %2818)  ; Rsqrt(value)
  %2820 = fmul fast float %2811, %2819
  %2821 = fmul fast float %2813, %2819
  %2822 = select i1 %2649, i32 %2639, i32 %2640
  %2823 = select i1 %2647, i32 %2638, i32 %2822
  %2824 = sitofp i32 %2823 to float
  %2825 = fmul fast float %2817, %2824
  %2826 = fmul fast float %2825, %2819
  %2827 = select i1 %2649, float %2826, float %2821
  %2828 = select i1 %2649, float %2821, float %2826
  %2829 = select i1 %2647, float %2826, float %2820
  %2830 = select i1 %2647, float %2821, float %2827
  %2831 = select i1 %2647, float %2820, float %2828
  %2832 = fsub fast float %2766, %1363
  %2833 = fsub fast float %2767, %1364
  %2834 = fsub fast float %2768, %1365
  %2835 = fmul fast float %2832, %2738
  %2836 = fmul fast float %2833, %2738
  %2837 = fmul fast float %2834, %2738
  %2838 = fadd fast float %2835, %1363
  %2839 = fadd fast float %2836, %1364
  %2840 = fadd fast float %2837, %1365
  %2841 = fsub fast float %2775, %1325
  %2842 = fsub fast float %2776, %1326
  %2843 = fsub fast float %2777, %1327
  %2844 = fmul fast float %2841, %2738
  %2845 = fmul fast float %2842, %2738
  %2846 = fmul fast float %2843, %2738
  %2847 = fadd fast float %2844, %1325
  %2848 = fadd fast float %2845, %1326
  %2849 = fadd fast float %2846, %1327
  %2850 = fadd fast float %2829, %1304
  %2851 = fadd fast float %2830, %1305
  %2852 = fadd fast float %2831, %1306
  %2853 = call float @dx.op.dot3.f32(i32 55, float %2850, float %2851, float %2852, float %2850, float %2851, float %2852)  ; Dot3(ax,ay,az,bx,by,bz)
  %2854 = call float @dx.op.unary.f32(i32 25, float %2853)  ; Rsqrt(value)
  %2855 = fmul fast float %2850, %2854
  %2856 = fmul fast float %2851, %2854
  %2857 = fmul fast float %2852, %2854
  %2858 = fsub fast float %2855, %1304
  %2859 = fsub fast float %2856, %1305
  %2860 = fsub fast float %2857, %1306
  %2861 = fmul fast float %2858, %2738
  %2862 = fmul fast float %2859, %2738
  %2863 = fmul fast float %2860, %2738
  %2864 = fadd fast float %2861, %1304
  %2865 = fadd fast float %2862, %1305
  %2866 = fadd fast float %2863, %1306
  %2867 = call float @dx.op.binary.f32(i32 36, float %1288, float %2786)  ; FMin(a,b)
  %2868 = fsub fast float %2867, %1288
  %2869 = fmul fast float %2868, %2738
  %2870 = fadd fast float %2869, %1288
  %2871 = fsub fast float %2799, %1328
  %2872 = fmul fast float %2871, %2738
  %2873 = fadd fast float %2872, %1328
  br label %2874

; <label>:2874                                    ; preds = %2736, %2698, %2593
  %2875 = phi float [ %2838, %2736 ], [ %1363, %2698 ], [ %1363, %2593 ]
  %2876 = phi float [ %2839, %2736 ], [ %1364, %2698 ], [ %1364, %2593 ]
  %2877 = phi float [ %2840, %2736 ], [ %1365, %2698 ], [ %1365, %2593 ]
  %2878 = phi float [ %2847, %2736 ], [ %1325, %2698 ], [ %1325, %2593 ]
  %2879 = phi float [ %2848, %2736 ], [ %1326, %2698 ], [ %1326, %2593 ]
  %2880 = phi float [ %2849, %2736 ], [ %1327, %2698 ], [ %1327, %2593 ]
  %2881 = phi float [ %2864, %2736 ], [ %1304, %2698 ], [ %1304, %2593 ]
  %2882 = phi float [ %2865, %2736 ], [ %1305, %2698 ], [ %1305, %2593 ]
  %2883 = phi float [ %2866, %2736 ], [ %1306, %2698 ], [ %1306, %2593 ]
  %2884 = phi float [ %2873, %2736 ], [ %1328, %2698 ], [ %1328, %2593 ]
  %2885 = phi float [ %2870, %2736 ], [ %1288, %2698 ], [ %1288, %2593 ]
  br i1 %2591, label %2886, label %3159

; <label>:2886                                    ; preds = %2874
  %2887 = call float @dx.op.unary.f32(i32 23, float %2885)  ; Log(value)
  %2888 = fmul fast float %2887, 4.000000e+00
  %2889 = call float @dx.op.unary.f32(i32 21, float %2888)  ; Exp(value)
  %2890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %2891 = extractvalue %dx.types.CBufRet.f32 %2890, 0
  %2892 = fmul fast float %2891, %2598
  %2893 = fmul fast float %2891, %2599
  %2894 = fmul fast float %2891, %2600
  %2895 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %2896 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %2897 = call float @dx.op.unary.f32(i32 6, float %58)  ; FAbs(value)
  %2898 = call float @dx.op.unary.f32(i32 23, float %2895)  ; Log(value)
  %2899 = call float @dx.op.unary.f32(i32 23, float %2896)  ; Log(value)
  %2900 = call float @dx.op.unary.f32(i32 23, float %2897)  ; Log(value)
  %2901 = fmul fast float %2898, 4.000000e+00
  %2902 = fmul fast float %2899, 4.000000e+00
  %2903 = fmul fast float %2900, 4.000000e+00
  %2904 = call float @dx.op.unary.f32(i32 21, float %2901)  ; Exp(value)
  %2905 = call float @dx.op.unary.f32(i32 21, float %2902)  ; Exp(value)
  %2906 = call float @dx.op.unary.f32(i32 21, float %2903)  ; Exp(value)
  %2907 = fadd fast float %2905, %2904
  %2908 = fadd fast float %2907, %2906
  %2909 = fdiv fast float 1.000000e+00, %2908
  %2910 = fmul fast float %2909, %2904
  %2911 = fcmp fast ogt float %56, 0.000000e+00
  %2912 = fcmp fast ogt float %57, 0.000000e+00
  %2913 = fcmp fast ogt float %58, 0.000000e+00
  %2914 = fcmp fast olt float %56, 0.000000e+00
  %2915 = fcmp fast olt float %57, 0.000000e+00
  %2916 = fcmp fast olt float %58, 0.000000e+00
  %2917 = zext i1 %2911 to i32
  %2918 = zext i1 %2912 to i32
  %2919 = zext i1 %2913 to i32
  %2920 = zext i1 %2914 to i32
  %2921 = zext i1 %2915 to i32
  %2922 = zext i1 %2916 to i32
  %2923 = sub nsw i32 %2917, %2920
  %2924 = sub nsw i32 %2918, %2921
  %2925 = sub nsw i32 %2919, %2922
  %2926 = call float @dx.op.unary.f32(i32 83, float %2892)  ; DerivCoarseX(value)
  %2927 = call float @dx.op.unary.f32(i32 83, float %2893)  ; DerivCoarseX(value)
  %2928 = call float @dx.op.unary.f32(i32 83, float %2894)  ; DerivCoarseX(value)
  %2929 = call float @dx.op.unary.f32(i32 84, float %2892)  ; DerivCoarseY(value)
  %2930 = call float @dx.op.unary.f32(i32 84, float %2893)  ; DerivCoarseY(value)
  %2931 = call float @dx.op.unary.f32(i32 84, float %2894)  ; DerivCoarseY(value)
  %2932 = fcmp fast ole float %155, %2910
  %2933 = fmul fast float %2909, %2907
  %2934 = fcmp fast ole float %155, %2933
  %2935 = select i1 %2934, float %2894, float %2892
  %2936 = select i1 %2934, float %2892, float %2893
  %2937 = select i1 %2932, float %2893, float %2935
  %2938 = select i1 %2932, float %2894, float %2936
  %2939 = select i1 %2934, float %2928, float %2926
  %2940 = select i1 %2934, float %2926, float %2927
  %2941 = select i1 %2932, float %2927, float %2939
  %2942 = select i1 %2932, float %2928, float %2940
  %2943 = select i1 %2934, float %2931, float %2929
  %2944 = select i1 %2934, float %2929, float %2930
  %2945 = select i1 %2932, float %2930, float %2943
  %2946 = select i1 %2932, float %2931, float %2944
  %2947 = call float @dx.op.unary.f32(i32 27, float %2937)  ; Round_ni(value)
  %2948 = call float @dx.op.unary.f32(i32 27, float %2938)  ; Round_ni(value)
  %2949 = fptosi float %2947 to i32
  %2950 = fptosi float %2948 to i32
  %2951 = xor i32 %2950, %2949
  %2952 = sitofp i32 %2951 to float
  %2953 = fptosi float %2952 to i32
  %2954 = sitofp i32 %2953 to float
  %2955 = fmul fast float %2954, 0x3FE3C6EF40000000
  %2956 = frem fast float %2947, 2.560000e+02
  %2957 = frem fast float %2948, 2.560000e+02
  %2958 = fptoui float %2956 to i32
  %2959 = fptoui float %2957 to i32
  %2960 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %2958, i32 %2959, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2961 = extractvalue %dx.types.ResRet.f32 %2960, 0
  %2962 = extractvalue %dx.types.ResRet.f32 %2960, 1
  %2963 = extractvalue %dx.types.ResRet.f32 %2960, 2
  %2964 = fadd fast float %2961, %2955
  %2965 = fadd fast float %2962, %2955
  %2966 = fadd fast float %2963, %2955
  %2967 = call float @dx.op.unary.f32(i32 22, float %2964)  ; Frc(value)
  %2968 = call float @dx.op.unary.f32(i32 22, float %2965)  ; Frc(value)
  %2969 = call float @dx.op.unary.f32(i32 22, float %2966)  ; Frc(value)
  %2970 = fmul fast float %2969, 0x401921FB60000000
  %2971 = call float @dx.op.unary.f32(i32 13, float %2970)  ; Sin(value)
  %2972 = call float @dx.op.unary.f32(i32 12, float %2970)  ; Cos(value)
  %2973 = fsub fast float -0.000000e+00, %2972
  %2974 = fmul fast float %2972, %2937
  %2975 = call float @dx.op.tertiary.f32(i32 46, float %2971, float %2938, float %2974)  ; FMad(a,b,c)
  %2976 = fmul fast float %2971, %2937
  %2977 = call float @dx.op.tertiary.f32(i32 46, float %2973, float %2938, float %2976)  ; FMad(a,b,c)
  %2978 = fadd fast float %2975, %2967
  %2979 = fadd fast float %2977, %2968
  %2980 = extractvalue %dx.types.CBufRet.f32 %2890, 3
  %2981 = bitcast float %2980 to i32
  %2982 = icmp eq i32 %2981, 0
  br i1 %2982, label %3021, label %2983

; <label>:2983                                    ; preds = %2886
  %2984 = add i32 %2981, 0
  %2985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2984, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2986 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2985, %dx.types.Handle %50, float %2978, float %2979, float undef, float undef, i32 0, i32 0, i32 undef, float %2941, float %2942, float undef, float %2945, float %2946, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2987 = extractvalue %dx.types.ResRet.f32 %2986, 0
  %2988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %2989 = extractvalue %dx.types.CBufRet.f32 %2988, 1
  %2990 = extractvalue %dx.types.CBufRet.f32 %2988, 2
  %2991 = fsub fast float 1.000000e+00, %2589
  %2992 = call float @dx.op.binary.f32(i32 35, float %2991, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2993 = bitcast float %2589 to i32
  %2994 = sitofp i32 %2993 to float
  %2995 = fadd fast float %2994, 0xC1CFBF8940000000
  %2996 = fmul fast float %2990, %2995
  %2997 = fadd fast float %2996, 0x41CFBF8940000000
  %2998 = fptosi float %2997 to i32
  %2999 = bitcast i32 %2998 to float
  %3000 = bitcast float %2992 to i32
  %3001 = sitofp i32 %3000 to float
  %3002 = fadd fast float %3001, 0xC1CFBF8940000000
  %3003 = fmul fast float %3002, %2990
  %3004 = fadd fast float %3003, 0x41CFBF8940000000
  %3005 = fptosi float %3004 to i32
  %3006 = bitcast i32 %3005 to float
  %3007 = fmul fast float %2999, %2989
  %3008 = fmul fast float %3006, %2989
  %3009 = fsub fast float %2992, %3007
  %3010 = fadd fast float %3008, %2992
  %3011 = call float @dx.op.unary.f32(i32 7, float %3009)  ; Saturate(value)
  %3012 = call float @dx.op.unary.f32(i32 7, float %3010)  ; Saturate(value)
  %3013 = fsub fast float %2987, %3011
  %3014 = fsub fast float %3012, %3011
  %3015 = bitcast float %3014 to i32
  %3016 = sub nsw i32 2129859010, %3015
  %3017 = bitcast i32 %3016 to float
  %3018 = fmul fast float %3017, %3013
  %3019 = call float @dx.op.unary.f32(i32 7, float %3018)  ; Saturate(value)
  %3020 = fcmp fast olt float %3019, 0x3F70101020000000
  br i1 %3020, label %3159, label %3021

; <label>:3021                                    ; preds = %2983, %2886
  %3022 = phi float [ %3019, %2983 ], [ %2589, %2886 ]
  %3023 = fmul fast float %3022, %2889
  %3024 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %3025 = extractvalue %dx.types.CBufRet.i32 %3024, 1
  %3026 = extractvalue %dx.types.CBufRet.i32 %3024, 0
  %3027 = add i32 %3026, 0
  %3028 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3027, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3029 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3028, %dx.types.Handle %49, float %2978, float %2979, float undef, float undef, i32 0, i32 0, i32 undef, float %2941, float %2942, float undef, float %2945, float %2946, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3030 = extractvalue %dx.types.ResRet.f32 %3029, 0
  %3031 = extractvalue %dx.types.ResRet.f32 %3029, 1
  %3032 = extractvalue %dx.types.ResRet.f32 %3029, 2
  %3033 = extractvalue %dx.types.ResRet.f32 %3029, 3
  %3034 = and i32 %3025, 255
  %3035 = uitofp i32 %3034 to float
  %3036 = lshr i32 %3025, 8
  %3037 = and i32 %3036, 255
  %3038 = uitofp i32 %3037 to float
  %3039 = fmul fast float %3033, %3035
  %3040 = fadd fast float %3039, %3038
  %3041 = fmul fast float %3040, 0x3F70101000000000
  %3042 = fadd fast float %3041, 0xBFB99999A0000000
  %3043 = call float @dx.op.unary.f32(i32 7, float %3042)  ; Saturate(value)
  %3044 = fmul fast float %3043, 0x3FF1C71C80000000
  %3045 = call float @dx.op.binary.f32(i32 36, float %3041, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3046 = fsub fast float 1.000000e+00, %3044
  %3047 = call float @dx.op.unary.f32(i32 7, float %3046)  ; Saturate(value)
  %3048 = fmul fast float %3047, %3030
  %3049 = fmul fast float %3047, %3031
  %3050 = fmul fast float %3047, %3032
  %3051 = call float @dx.op.unary.f32(i32 7, float %3048)  ; Saturate(value)
  %3052 = call float @dx.op.unary.f32(i32 7, float %3049)  ; Saturate(value)
  %3053 = call float @dx.op.unary.f32(i32 7, float %3050)  ; Saturate(value)
  %3054 = fmul fast float %3044, %3030
  %3055 = fmul fast float %3044, %3031
  %3056 = fmul fast float %3044, %3032
  %3057 = fadd fast float %3054, %3045
  %3058 = fadd fast float %3055, %3045
  %3059 = fadd fast float %3056, %3045
  %3060 = call float @dx.op.unary.f32(i32 7, float %3057)  ; Saturate(value)
  %3061 = call float @dx.op.unary.f32(i32 7, float %3058)  ; Saturate(value)
  %3062 = call float @dx.op.unary.f32(i32 7, float %3059)  ; Saturate(value)
  %3063 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %3064 = extractvalue %dx.types.CBufRet.i32 %3063, 3
  %3065 = extractvalue %dx.types.CBufRet.i32 %3063, 2
  %3066 = add i32 %3065, 0
  %3067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3066, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3068 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3067, %dx.types.Handle %49, float %2978, float %2979, float undef, float undef, i32 0, i32 0, i32 undef, float %2941, float %2942, float undef, float %2945, float %2946, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3069 = extractvalue %dx.types.ResRet.f32 %3068, 0
  %3070 = extractvalue %dx.types.ResRet.f32 %3068, 1
  %3071 = extractvalue %dx.types.ResRet.f32 %3068, 2
  %3072 = extractvalue %dx.types.ResRet.f32 %3068, 3
  %3073 = and i32 %3064, 255
  %3074 = uitofp i32 %3073 to float
  %3075 = lshr i32 %3064, 8
  %3076 = and i32 %3075, 255
  %3077 = uitofp i32 %3076 to float
  %3078 = lshr i32 %3064, 16
  %3079 = and i32 %3078, 255
  %3080 = uitofp i32 %3079 to float
  %3081 = fmul fast float %3080, 0x3F70101000000000
  %3082 = fmul fast float %3069, %3074
  %3083 = fadd fast float %3082, %3077
  %3084 = fmul fast float %3083, 0x3F70101000000000
  %3085 = fadd fast float %3070, -5.000000e-01
  %3086 = fadd fast float %3072, -5.000000e-01
  %3087 = fmul fast float %3085, %3081
  %3088 = fmul fast float %3086, %3081
  %3089 = fadd fast float %3087, 5.000000e-01
  %3090 = fadd fast float %3088, 5.000000e-01
  %3091 = fmul fast float %3089, 2.000000e+00
  %3092 = fadd fast float %3091, -1.000000e+00
  %3093 = fmul fast float %3090, 2.000000e+00
  %3094 = fadd fast float %3093, -1.000000e+00
  %3095 = fadd fast float %3092, %3094
  %3096 = fmul fast float %3095, 5.000000e-01
  %3097 = fsub fast float %3092, %3094
  %3098 = fmul fast float %3097, 5.000000e-01
  %3099 = call float @dx.op.unary.f32(i32 6, float %3096)  ; FAbs(value)
  %3100 = fsub fast float 1.000000e+00, %3099
  %3101 = call float @dx.op.unary.f32(i32 6, float %3098)  ; FAbs(value)
  %3102 = fsub fast float %3100, %3101
  %3103 = call float @dx.op.dot3.f32(i32 55, float %3096, float %3098, float %3102, float %3096, float %3098, float %3102)  ; Dot3(ax,ay,az,bx,by,bz)
  %3104 = call float @dx.op.unary.f32(i32 25, float %3103)  ; Rsqrt(value)
  %3105 = fmul fast float %3096, %3104
  %3106 = fmul fast float %3098, %3104
  %3107 = select i1 %2934, i32 %2924, i32 %2925
  %3108 = select i1 %2932, i32 %2923, i32 %3107
  %3109 = sitofp i32 %3108 to float
  %3110 = fmul fast float %3102, %3109
  %3111 = fmul fast float %3110, %3104
  %3112 = select i1 %2934, float %3111, float %3106
  %3113 = select i1 %2934, float %3106, float %3111
  %3114 = select i1 %2932, float %3111, float %3105
  %3115 = select i1 %2932, float %3106, float %3112
  %3116 = select i1 %2932, float %3105, float %3113
  %3117 = fsub fast float %3051, %2875
  %3118 = fsub fast float %3052, %2876
  %3119 = fsub fast float %3053, %2877
  %3120 = fmul fast float %3117, %3023
  %3121 = fmul fast float %3118, %3023
  %3122 = fmul fast float %3119, %3023
  %3123 = fadd fast float %3120, %2875
  %3124 = fadd fast float %3121, %2876
  %3125 = fadd fast float %3122, %2877
  %3126 = fsub fast float %3060, %2878
  %3127 = fsub fast float %3061, %2879
  %3128 = fsub fast float %3062, %2880
  %3129 = fmul fast float %3126, %3023
  %3130 = fmul fast float %3127, %3023
  %3131 = fmul fast float %3128, %3023
  %3132 = fadd fast float %3129, %2878
  %3133 = fadd fast float %3130, %2879
  %3134 = fadd fast float %3131, %2880
  %3135 = fadd fast float %3114, %2881
  %3136 = fadd fast float %3115, %2882
  %3137 = fadd fast float %3116, %2883
  %3138 = call float @dx.op.dot3.f32(i32 55, float %3135, float %3136, float %3137, float %3135, float %3136, float %3137)  ; Dot3(ax,ay,az,bx,by,bz)
  %3139 = call float @dx.op.unary.f32(i32 25, float %3138)  ; Rsqrt(value)
  %3140 = fmul fast float %3135, %3139
  %3141 = fmul fast float %3136, %3139
  %3142 = fmul fast float %3137, %3139
  %3143 = fsub fast float %3140, %2881
  %3144 = fsub fast float %3141, %2882
  %3145 = fsub fast float %3142, %2883
  %3146 = fmul fast float %3143, %3023
  %3147 = fmul fast float %3144, %3023
  %3148 = fmul fast float %3145, %3023
  %3149 = fadd fast float %3146, %2881
  %3150 = fadd fast float %3147, %2882
  %3151 = fadd fast float %3148, %2883
  %3152 = call float @dx.op.binary.f32(i32 36, float %2885, float %3071)  ; FMin(a,b)
  %3153 = fsub fast float %3152, %2885
  %3154 = fmul fast float %3153, %3023
  %3155 = fadd fast float %3154, %2885
  %3156 = fsub fast float %3084, %2884
  %3157 = fmul fast float %3156, %3023
  %3158 = fadd fast float %3157, %2884
  br label %3159

; <label>:3159                                    ; preds = %3021, %2983, %2874, %2581
  %3160 = phi float [ %3123, %3021 ], [ %2875, %2983 ], [ %2875, %2874 ], [ %1363, %2581 ]
  %3161 = phi float [ %3124, %3021 ], [ %2876, %2983 ], [ %2876, %2874 ], [ %1364, %2581 ]
  %3162 = phi float [ %3125, %3021 ], [ %2877, %2983 ], [ %2877, %2874 ], [ %1365, %2581 ]
  %3163 = phi float [ %3132, %3021 ], [ %2878, %2983 ], [ %2878, %2874 ], [ %1325, %2581 ]
  %3164 = phi float [ %3133, %3021 ], [ %2879, %2983 ], [ %2879, %2874 ], [ %1326, %2581 ]
  %3165 = phi float [ %3134, %3021 ], [ %2880, %2983 ], [ %2880, %2874 ], [ %1327, %2581 ]
  %3166 = phi float [ %3149, %3021 ], [ %2881, %2983 ], [ %2881, %2874 ], [ %1304, %2581 ]
  %3167 = phi float [ %3150, %3021 ], [ %2882, %2983 ], [ %2882, %2874 ], [ %1305, %2581 ]
  %3168 = phi float [ %3151, %3021 ], [ %2883, %2983 ], [ %2883, %2874 ], [ %1306, %2581 ]
  %3169 = phi float [ %3158, %3021 ], [ %2884, %2983 ], [ %2884, %2874 ], [ %1328, %2581 ]
  %3170 = phi float [ %3155, %3021 ], [ %2885, %2983 ], [ %2885, %2874 ], [ %1288, %2581 ]
  %3171 = fcmp fast une float %2586, 0.000000e+00
  br i1 %3171, label %3172, label %3535

; <label>:3172                                    ; preds = %3159
  %3173 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %3174 = call float @dx.op.unary.f32(i32 25, float %3173)  ; Rsqrt(value)
  %3175 = fmul fast float %101, %3174
  %3176 = fsub fast float -0.000000e+00, %3175
  %3177 = fmul fast float %102, %3174
  %3178 = fsub fast float -0.000000e+00, %3177
  %3179 = fmul fast float %103, %3174
  %3180 = fsub fast float -0.000000e+00, %3179
  %3181 = call float @dx.op.dot3.f32(i32 55, float %3176, float %3178, float %3180, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %3182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3183 = fmul fast float %2586, 2.500000e+00
  %3184 = call float @dx.op.unary.f32(i32 7, float %3183)  ; Saturate(value)
  %3185 = fmul fast float %2586, 0x4013FFFFE0000000
  %3186 = fadd fast float %3185, 0xBFFFFFFFE0000000
  %3187 = call float @dx.op.unary.f32(i32 7, float %3186)  ; Saturate(value)
  %3188 = fmul fast float %2586, 0x4004000020000000
  %3189 = fadd fast float %3188, 0xBFF8000040000000
  %3190 = call float @dx.op.unary.f32(i32 7, float %3189)  ; Saturate(value)
  %3191 = call float @dx.op.unary.f32(i32 7, float %3184)  ; Saturate(value)
  %3192 = fmul fast float %1307, 1.000000e+01
  %3193 = call float @dx.op.unary.f32(i32 7, float %3192)  ; Saturate(value)
  %3194 = fmul fast float %3193, 2.000000e+00
  %3195 = fsub fast float 3.000000e+00, %3194
  %3196 = fmul fast float %3193, %3193
  %3197 = fmul fast float %3196, %3195
  %3198 = fsub fast float 1.000000e+00, %3197
  %3199 = fsub fast float 0x3FE3333340000000, %3169
  %3200 = fmul fast float %3199, 0x400AAAAAA0000000
  %3201 = call float @dx.op.unary.f32(i32 7, float %3200)  ; Saturate(value)
  %3202 = fmul fast float %3198, %3201
  %3203 = fmul fast float %3160, 0x3FEA2B8620000000
  %3204 = fmul fast float %3161, 0x3FEA2B8620000000
  %3205 = fmul fast float %3162, 0x3FEA2B8620000000
  %3206 = fadd fast float %3203, 0x3FC81DFBA0000000
  %3207 = fmul fast float %3206, %3160
  %3208 = fadd fast float %3207, 0x3F910E6020000000
  %3209 = fadd fast float %3204, 0x3FC81DFBA0000000
  %3210 = fmul fast float %3209, %3161
  %3211 = fadd fast float %3210, 0x3F910E6020000000
  %3212 = fadd fast float %3205, 0x3FC81DFBA0000000
  %3213 = fmul fast float %3212, %3162
  %3214 = fadd fast float %3213, 0x3F910E6020000000
  %3215 = call float @dx.op.unary.f32(i32 7, float %3208)  ; Saturate(value)
  %3216 = call float @dx.op.unary.f32(i32 7, float %3211)  ; Saturate(value)
  %3217 = call float @dx.op.unary.f32(i32 7, float %3214)  ; Saturate(value)
  %3218 = fsub fast float %3215, %3160
  %3219 = fsub fast float %3216, %3161
  %3220 = fsub fast float %3217, %3162
  %3221 = fmul fast float %3218, %3191
  %3222 = fmul fast float %3221, %3202
  %3223 = fmul fast float %3219, %3191
  %3224 = fmul fast float %3223, %3202
  %3225 = fmul fast float %3220, %3191
  %3226 = fmul fast float %3225, %3202
  %3227 = fadd fast float %3222, %3160
  %3228 = fadd fast float %3224, %3161
  %3229 = fadd fast float %3226, %3162
  %3230 = fmul fast float %3170, %3170
  %3231 = fmul fast float %3230, %3230
  %3232 = fadd fast float %3187, 1.000000e+00
  %3233 = fsub fast float %3232, %3202
  %3234 = call float @dx.op.unary.f32(i32 7, float %3233)  ; Saturate(value)
  %3235 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3236 = call float @dx.op.unary.f32(i32 7, float %3235)  ; Saturate(value)
  %3237 = fsub fast float 1.000000e+00, %3231
  %3238 = call float @dx.op.binary.f32(i32 36, float %3234, float %3237)  ; FMin(a,b)
  %3239 = call float @dx.op.unary.f32(i32 7, float %3190)  ; Saturate(value)
  %3240 = call float @dx.op.binary.f32(i32 35, float %3238, float %3239)  ; FMax(a,b)
  %3241 = fadd fast float %3236, 0xBFE4CCCCC0000000
  %3242 = fmul fast float %3241, 0x4006DB6DA0000000
  %3243 = call float @dx.op.unary.f32(i32 7, float %3242)  ; Saturate(value)
  %3244 = fmul fast float %3243, 2.000000e+00
  %3245 = fsub fast float 3.000000e+00, %3244
  %3246 = bitcast float %3163 to i32
  %3247 = ashr i32 %3246, 1
  %3248 = add nsw i32 %3247, 532487669
  %3249 = bitcast i32 %3248 to float
  %3250 = fsub fast float 1.000000e+00, %3249
  %3251 = bitcast float %3250 to i32
  %3252 = sub nsw i32 2129859010, %3251
  %3253 = bitcast i32 %3252 to float
  %3254 = fmul fast float %3253, 2.000000e+00
  %3255 = bitcast float %3164 to i32
  %3256 = ashr i32 %3255, 1
  %3257 = add nsw i32 %3256, 532487669
  %3258 = bitcast i32 %3257 to float
  %3259 = fsub fast float 1.000000e+00, %3258
  %3260 = bitcast float %3259 to i32
  %3261 = sub nsw i32 2129859010, %3260
  %3262 = bitcast i32 %3261 to float
  %3263 = fmul fast float %3262, 2.000000e+00
  %3264 = bitcast float %3165 to i32
  %3265 = ashr i32 %3264, 1
  %3266 = add nsw i32 %3265, 532487669
  %3267 = bitcast i32 %3266 to float
  %3268 = fsub fast float 1.000000e+00, %3267
  %3269 = bitcast float %3268 to i32
  %3270 = sub nsw i32 2129859010, %3269
  %3271 = bitcast i32 %3270 to float
  %3272 = fmul fast float %3271, 2.000000e+00
  %3273 = fsub fast float 0x4002A9FBE0000000, %3254
  %3274 = fadd fast float %3254, 0x3FD54FDF00000000
  %3275 = bitcast float %3274 to i32
  %3276 = sub nsw i32 2129859010, %3275
  %3277 = bitcast i32 %3276 to float
  %3278 = fmul fast float %3277, %3273
  %3279 = fmul fast float %3278, %3278
  %3280 = fsub fast float 0x4002A9FBE0000000, %3263
  %3281 = fadd fast float %3263, 0x3FD54FDF00000000
  %3282 = bitcast float %3281 to i32
  %3283 = sub nsw i32 2129859010, %3282
  %3284 = bitcast i32 %3283 to float
  %3285 = fmul fast float %3284, %3280
  %3286 = fmul fast float %3285, %3285
  %3287 = fsub fast float 0x4002A9FBE0000000, %3272
  %3288 = fadd fast float %3272, 0x3FD54FDF00000000
  %3289 = bitcast float %3288 to i32
  %3290 = sub nsw i32 2129859010, %3289
  %3291 = bitcast i32 %3290 to float
  %3292 = fmul fast float %3291, %3287
  %3293 = fmul fast float %3292, %3292
  %3294 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3279)  ; FMax(a,b)
  %3295 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3286)  ; FMax(a,b)
  %3296 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3293)  ; FMax(a,b)
  %3297 = fsub fast float 1.000000e+00, %3181
  %3298 = fadd fast float %3297, %3198
  %3299 = call float @dx.op.unary.f32(i32 7, float %3298)  ; Saturate(value)
  %3300 = fsub fast float 1.000000e+00, %1454
  %3301 = fmul fast float %3240, %3300
  %3302 = fmul fast float %3243, %3243
  %3303 = fmul fast float %3302, %3301
  %3304 = fmul fast float %3303, %3245
  %3305 = fmul fast float %3300, 0xBFE99999A0000000
  %3306 = fmul fast float %3305, %3191
  %3307 = fmul fast float %3306, %3202
  %3308 = fadd fast float %3307, 1.000000e+00
  %3309 = fadd fast float %3169, -1.000000e+00
  %3310 = fmul fast float %3308, %3309
  %3311 = fadd fast float %3310, 1.000000e+00
  %3312 = fsub fast float %3294, %3163
  %3313 = fsub fast float %3295, %3164
  %3314 = fsub fast float %3296, %3165
  %3315 = fmul fast float %3304, %3312
  %3316 = fmul fast float %3304, %3313
  %3317 = fmul fast float %3304, %3314
  %3318 = fadd fast float %3315, %3163
  %3319 = fadd fast float %3316, %3164
  %3320 = fadd fast float %3317, %3165
  %3321 = fsub fast float %56, %3166
  %3322 = fsub fast float %57, %3167
  %3323 = fsub fast float %58, %3168
  %3324 = fmul fast float %3304, %3321
  %3325 = fmul fast float %3304, %3322
  %3326 = fmul fast float %3304, %3323
  %3327 = fadd fast float %3324, %3166
  %3328 = fadd fast float %3325, %3167
  %3329 = fadd fast float %3326, %3168
  %3330 = fmul fast float %3304, %3299
  %3331 = call float @dx.op.unary.f32(i32 7, float %3311)  ; Saturate(value)
  %3332 = fsub fast float 1.000000e+00, %3331
  %3333 = fmul fast float %3330, %3332
  %3334 = fadd fast float %3333, %3331
  %3335 = fsub fast float 1.000000e+00, %3170
  %3336 = fmul fast float %3304, %3335
  %3337 = fadd fast float %3336, %3170
  %3338 = fcmp fast une float %2587, 0.000000e+00
  %3339 = fcmp fast ogt float %3236, 0x3FE4CCCCC0000000
  %3340 = and i1 %3338, %3339
  br i1 %3340, label %3341, label %3527

; <label>:3341                                    ; preds = %3172
  %3342 = extractvalue %dx.types.CBufRet.f32 %3182, 1
  %3343 = fadd fast float %3342, %102
  %3344 = extractvalue %dx.types.CBufRet.f32 %3182, 0
  %3345 = fadd fast float %3344, %101
  %3346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3347 = extractvalue %dx.types.CBufRet.f32 %3346, 3
  %3348 = fadd fast float %3347, 0x3FC0A3D700000000
  %3349 = fmul fast float %3348, 0x3FF6666660000000
  %3350 = fmul fast float %3347, 0x3FF2978D40000000
  %3351 = fmul fast float %3347, 0x3FF5BA5E40000000
  %3352 = fmul fast float %3347, 0x3FF94FDF40000000
  %3353 = call float @dx.op.unary.f32(i32 6, float %3345)  ; FAbs(value)
  %3354 = call float @dx.op.unary.f32(i32 6, float %3343)  ; FAbs(value)
  %3355 = fmul fast float %3353, 0x3F8EB851E0000000
  %3356 = fmul fast float %3354, 0x3F8EB851E0000000
  %3357 = fmul fast float %2587, 4.000000e+00
  %3358 = call float @dx.op.unary.f32(i32 7, float %3357)  ; Saturate(value)
  %3359 = fadd fast float %3355, 2.500000e-01
  %3360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %20, float %3359, float %3356, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3361 = extractvalue %dx.types.ResRet.f32 %3360, 0
  %3362 = extractvalue %dx.types.ResRet.f32 %3360, 1
  %3363 = extractvalue %dx.types.ResRet.f32 %3360, 2
  %3364 = extractvalue %dx.types.ResRet.f32 %3360, 3
  %3365 = fmul fast float %3362, 2.000000e+00
  %3366 = fmul fast float %3363, 2.000000e+00
  %3367 = fadd fast float %3365, -1.000000e+00
  %3368 = fadd fast float %3366, -1.000000e+00
  %3369 = fsub fast float 1.000000e+00, %3358
  %3370 = fmul fast float %3369, 8.000000e+00
  %3371 = call float @dx.op.unary.f32(i32 21, float %3370)  ; Exp(value)
  %3372 = fmul fast float %3364, %3371
  %3373 = fadd fast float %3349, -1.000000e+00
  %3374 = fadd fast float %3373, %3364
  %3375 = fadd fast float %3374, %3372
  %3376 = frem fast float %3375, %3371
  %3377 = fcmp fast ole float %3376, 1.000000e+00
  %3378 = call float @dx.op.unary.f32(i32 22, float %3376)  ; Frc(value)
  %3379 = select i1 %3377, float %3378, float 0.000000e+00
  %3380 = fadd fast float %3361, -1.000000e+00
  %3381 = fadd fast float %3380, %3379
  %3382 = fsub fast float 1.000000e+00, %3379
  %3383 = call float @dx.op.unary.f32(i32 7, float %3382)  ; Saturate(value)
  %3384 = fmul fast float %3383, %3361
  %3385 = fmul fast float %3381, 8.000000e+00
  %3386 = call float @dx.op.binary.f32(i32 35, float %3385, float 0.000000e+00)  ; FMax(a,b)
  %3387 = call float @dx.op.binary.f32(i32 36, float %3386, float 4.000000e+00)  ; FMin(a,b)
  %3388 = fmul fast float %3387, 0x400921FB60000000
  %3389 = call float @dx.op.unary.f32(i32 13, float %3388)  ; Sin(value)
  %3390 = fadd fast float %3379, -1.000000e+00
  %3391 = fmul fast float %3384, %3390
  %3392 = fmul fast float %3391, %3389
  %3393 = fmul fast float %3392, %3367
  %3394 = fmul fast float %3392, %3368
  %3395 = fadd fast float %3357, -1.000000e+00
  %3396 = call float @dx.op.unary.f32(i32 7, float %3395)  ; Saturate(value)
  %3397 = fadd fast float %3355, 0xBFE19999A0000000
  %3398 = fadd fast float %3356, 0x3FD3D70A40000000
  %3399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %20, float %3397, float %3398, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3400 = extractvalue %dx.types.ResRet.f32 %3399, 0
  %3401 = extractvalue %dx.types.ResRet.f32 %3399, 1
  %3402 = extractvalue %dx.types.ResRet.f32 %3399, 2
  %3403 = extractvalue %dx.types.ResRet.f32 %3399, 3
  %3404 = fmul fast float %3401, 2.000000e+00
  %3405 = fmul fast float %3402, 2.000000e+00
  %3406 = fadd fast float %3404, -1.000000e+00
  %3407 = fadd fast float %3405, -1.000000e+00
  %3408 = fsub fast float 1.000000e+00, %3396
  %3409 = fmul fast float %3408, 8.000000e+00
  %3410 = call float @dx.op.unary.f32(i32 21, float %3409)  ; Exp(value)
  %3411 = fmul fast float %3403, %3410
  %3412 = fadd fast float %3350, 0xBFE5B22D00000000
  %3413 = fadd fast float %3412, %3403
  %3414 = fadd fast float %3413, %3411
  %3415 = frem fast float %3414, %3410
  %3416 = fcmp fast ole float %3415, 1.000000e+00
  %3417 = call float @dx.op.unary.f32(i32 22, float %3415)  ; Frc(value)
  %3418 = select i1 %3416, float %3417, float 0.000000e+00
  %3419 = fadd fast float %3400, -1.000000e+00
  %3420 = fadd fast float %3419, %3418
  %3421 = fsub fast float 1.000000e+00, %3418
  %3422 = call float @dx.op.unary.f32(i32 7, float %3421)  ; Saturate(value)
  %3423 = fmul fast float %3422, %3400
  %3424 = fmul fast float %3420, 8.000000e+00
  %3425 = call float @dx.op.binary.f32(i32 35, float %3424, float 0.000000e+00)  ; FMax(a,b)
  %3426 = call float @dx.op.binary.f32(i32 36, float %3425, float 4.000000e+00)  ; FMin(a,b)
  %3427 = fmul fast float %3426, 0x400921FB60000000
  %3428 = call float @dx.op.unary.f32(i32 13, float %3427)  ; Sin(value)
  %3429 = fadd fast float %3418, -1.000000e+00
  %3430 = fmul fast float %3423, %3429
  %3431 = fmul fast float %3430, %3428
  %3432 = fmul fast float %3431, %3406
  %3433 = fmul fast float %3431, %3407
  %3434 = fadd fast float %3357, -2.000000e+00
  %3435 = call float @dx.op.unary.f32(i32 7, float %3434)  ; Saturate(value)
  %3436 = fadd fast float %3355, 0x3FE3333340000000
  %3437 = fadd fast float %3356, 0x3FEB333340000000
  %3438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %20, float %3436, float %3437, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3439 = extractvalue %dx.types.ResRet.f32 %3438, 0
  %3440 = extractvalue %dx.types.ResRet.f32 %3438, 1
  %3441 = extractvalue %dx.types.ResRet.f32 %3438, 2
  %3442 = extractvalue %dx.types.ResRet.f32 %3438, 3
  %3443 = fmul fast float %3440, 2.000000e+00
  %3444 = fmul fast float %3441, 2.000000e+00
  %3445 = fadd fast float %3443, -1.000000e+00
  %3446 = fadd fast float %3444, -1.000000e+00
  %3447 = fsub fast float 1.000000e+00, %3435
  %3448 = fmul fast float %3447, 8.000000e+00
  %3449 = call float @dx.op.unary.f32(i32 21, float %3448)  ; Exp(value)
  %3450 = fmul fast float %3442, %3449
  %3451 = fadd fast float %3351, 0xBFD5E35400000000
  %3452 = fadd fast float %3451, %3442
  %3453 = fadd fast float %3452, %3450
  %3454 = frem fast float %3453, %3449
  %3455 = fcmp fast ole float %3454, 1.000000e+00
  %3456 = call float @dx.op.unary.f32(i32 22, float %3454)  ; Frc(value)
  %3457 = select i1 %3455, float %3456, float 0.000000e+00
  %3458 = fadd fast float %3439, -1.000000e+00
  %3459 = fadd fast float %3458, %3457
  %3460 = fsub fast float 1.000000e+00, %3457
  %3461 = call float @dx.op.unary.f32(i32 7, float %3460)  ; Saturate(value)
  %3462 = fmul fast float %3461, %3439
  %3463 = fmul fast float %3459, 8.000000e+00
  %3464 = call float @dx.op.binary.f32(i32 35, float %3463, float 0.000000e+00)  ; FMax(a,b)
  %3465 = call float @dx.op.binary.f32(i32 36, float %3464, float 4.000000e+00)  ; FMin(a,b)
  %3466 = fmul fast float %3465, 0x400921FB60000000
  %3467 = call float @dx.op.unary.f32(i32 13, float %3466)  ; Sin(value)
  %3468 = fadd fast float %3457, -1.000000e+00
  %3469 = fmul fast float %3462, %3468
  %3470 = fmul fast float %3469, %3467
  %3471 = fmul fast float %3470, %3445
  %3472 = fmul fast float %3470, %3446
  %3473 = fadd fast float %3357, -3.000000e+00
  %3474 = call float @dx.op.unary.f32(i32 7, float %3473)  ; Saturate(value)
  %3475 = fadd fast float %3355, 5.000000e-01
  %3476 = fadd fast float %3356, -7.500000e-01
  %3477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %20, float %3475, float %3476, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3478 = extractvalue %dx.types.ResRet.f32 %3477, 0
  %3479 = extractvalue %dx.types.ResRet.f32 %3477, 1
  %3480 = extractvalue %dx.types.ResRet.f32 %3477, 2
  %3481 = extractvalue %dx.types.ResRet.f32 %3477, 3
  %3482 = fmul fast float %3479, 2.000000e+00
  %3483 = fmul fast float %3480, 2.000000e+00
  %3484 = fadd fast float %3482, -1.000000e+00
  %3485 = fadd fast float %3483, -1.000000e+00
  %3486 = fsub fast float 1.000000e+00, %3474
  %3487 = fmul fast float %3486, 8.000000e+00
  %3488 = call float @dx.op.unary.f32(i32 21, float %3487)  ; Exp(value)
  %3489 = fmul fast float %3481, %3488
  %3490 = fadd fast float %3352, 0xBF78938000000000
  %3491 = fadd fast float %3490, %3481
  %3492 = fadd fast float %3491, %3489
  %3493 = frem fast float %3492, %3488
  %3494 = fcmp fast ole float %3493, 1.000000e+00
  %3495 = call float @dx.op.unary.f32(i32 22, float %3493)  ; Frc(value)
  %3496 = select i1 %3494, float %3495, float 0.000000e+00
  %3497 = fadd fast float %3478, -1.000000e+00
  %3498 = fadd fast float %3497, %3496
  %3499 = fsub fast float 1.000000e+00, %3496
  %3500 = call float @dx.op.unary.f32(i32 7, float %3499)  ; Saturate(value)
  %3501 = fmul fast float %3500, %3478
  %3502 = fmul fast float %3498, 8.000000e+00
  %3503 = call float @dx.op.binary.f32(i32 35, float %3502, float 0.000000e+00)  ; FMax(a,b)
  %3504 = call float @dx.op.binary.f32(i32 36, float %3503, float 4.000000e+00)  ; FMin(a,b)
  %3505 = fmul fast float %3504, 0x400921FB60000000
  %3506 = call float @dx.op.unary.f32(i32 13, float %3505)  ; Sin(value)
  %3507 = fadd fast float %3496, -1.000000e+00
  %3508 = fmul fast float %3501, %3507
  %3509 = fmul fast float %3508, %3506
  %3510 = fmul fast float %3509, %3484
  %3511 = fmul fast float %3509, %3485
  %3512 = fadd fast float %3432, %3393
  %3513 = fadd fast float %3433, %3394
  %3514 = fadd fast float %3512, %3471
  %3515 = fadd fast float %3513, %3472
  %3516 = fadd fast float %3514, %3510
  %3517 = fadd fast float %3515, %3511
  %3518 = fmul fast float %3236, 0x4006DB6DA0000000
  %3519 = fadd fast float %3518, 0xBFFDB6DB40000000
  %3520 = call float @dx.op.unary.f32(i32 7, float %3519)  ; Saturate(value)
  %3521 = fmul fast float %3520, %3191
  %3522 = fmul fast float %3521, %3300
  %3523 = fmul fast float %3522, %3516
  %3524 = fmul fast float %3522, %3517
  %3525 = fadd fast float %3523, %3327
  %3526 = fadd fast float %3524, %3328
  br label %3527

; <label>:3527                                    ; preds = %3341, %3172
  %3528 = phi float [ %3327, %3172 ], [ %3525, %3341 ]
  %3529 = phi float [ %3328, %3172 ], [ %3526, %3341 ]
  %3530 = call float @dx.op.dot3.f32(i32 55, float %3528, float %3529, float %3329, float %3528, float %3529, float %3329)  ; Dot3(ax,ay,az,bx,by,bz)
  %3531 = call float @dx.op.unary.f32(i32 25, float %3530)  ; Rsqrt(value)
  %3532 = fmul fast float %3531, %3528
  %3533 = fmul fast float %3531, %3529
  %3534 = fmul fast float %3531, %3329
  br label %3535

; <label>:3535                                    ; preds = %3527, %3159
  %3536 = phi float [ %3227, %3527 ], [ %3160, %3159 ]
  %3537 = phi float [ %3228, %3527 ], [ %3161, %3159 ]
  %3538 = phi float [ %3229, %3527 ], [ %3162, %3159 ]
  %3539 = phi float [ %3318, %3527 ], [ %3163, %3159 ]
  %3540 = phi float [ %3319, %3527 ], [ %3164, %3159 ]
  %3541 = phi float [ %3320, %3527 ], [ %3165, %3159 ]
  %3542 = phi float [ %3532, %3527 ], [ %3166, %3159 ]
  %3543 = phi float [ %3533, %3527 ], [ %3167, %3159 ]
  %3544 = phi float [ %3534, %3527 ], [ %3168, %3159 ]
  %3545 = phi float [ %3334, %3527 ], [ %3169, %3159 ]
  %3546 = phi float [ %3337, %3527 ], [ %3170, %3159 ]
  %3547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3548 = extractvalue %dx.types.CBufRet.f32 %3547, 2
  %3549 = extractvalue %dx.types.CBufRet.f32 %3547, 3
  %3550 = fmul fast float %3548, %53
  %3551 = fmul fast float %3549, %54
  %3552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %3553 = extractvalue %dx.types.CBufRet.f32 %3552, 0
  %3554 = extractvalue %dx.types.CBufRet.f32 %3552, 1
  %3555 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %21, float %3550, float %3551, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3556 = extractvalue %dx.types.ResRet.f32 %3555, 0
  %3557 = fmul fast float %3556, %3554
  %3558 = call float @dx.op.unary.f32(i32 7, float %3557)  ; Saturate(value)
  %3559 = fadd fast float %3558, -1.000000e+00
  %3560 = fmul fast float %3559, %3553
  %3561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %3562 = extractvalue %dx.types.CBufRet.f32 %3561, 2
  %3563 = call float @dx.op.binary.f32(i32 35, float %1371, float %1372)  ; FMax(a,b)
  %3564 = call float @dx.op.binary.f32(i32 35, float %1370, float %3563)  ; FMax(a,b)
  %3565 = bitcast float %3564 to i32
  %3566 = sub nsw i32 2129859010, %3565
  %3567 = bitcast i32 %3566 to float
  %3568 = fmul fast float %3567, 0x400C04EAE0000000
  %3569 = fmul fast float %48, 5.000000e-01
  %3570 = fmul fast float %3569, %3548
  %3571 = fmul fast float %3570, %3562
  %3572 = fmul fast float %3571, 0xBFF7154760000000
  %3573 = fmul fast float %3572, %3568
  %3574 = call float @dx.op.unary.f32(i32 21, float %3573)  ; Exp(value)
  %3575 = fmul fast float %3574, 2.500000e-01
  %3576 = fmul fast float %3571, 0xBFDEC709E0000000
  %3577 = fmul fast float %3576, %3568
  %3578 = call float @dx.op.unary.f32(i32 21, float %3577)  ; Exp(value)
  %3579 = fmul fast float %3578, 7.500000e-01
  %3580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 162)  ; CBufferLoadLegacy(handle,regIndex)
  %3581 = extractvalue %dx.types.CBufRet.f32 %3580, 3
  %3582 = fadd fast float %3575, -1.000000e+00
  %3583 = fadd fast float %3582, %3579
  %3584 = fadd fast float %3583, %3581
  %3585 = call float @dx.op.unary.f32(i32 7, float %3584)  ; Saturate(value)
  %3586 = extractvalue %dx.types.CBufRet.f32 %3580, 0
  %3587 = fmul fast float %3586, %3585
  %3588 = fadd fast float %3587, 1.000000e+00
  %3589 = extractvalue %dx.types.CBufRet.f32 %3580, 1
  %3590 = fsub fast float %3588, %3589
  %3591 = call float @dx.op.unary.f32(i32 7, float %3590)  ; Saturate(value)
  %3592 = fmul fast float %3591, %1370
  %3593 = fmul fast float %3591, %1371
  %3594 = fmul fast float %3591, %1372
  %3595 = call float @dx.op.binary.f32(i32 35, float %3593, float %3594)  ; FMax(a,b)
  %3596 = call float @dx.op.binary.f32(i32 35, float %3592, float %3595)  ; FMax(a,b)
  %3597 = fcmp fast ogt float %3596, 0.000000e+00
  %3598 = fmul fast float %3593, 5.000000e-01
  %3599 = fmul fast float %3594, 5.000000e-01
  %3600 = call float @dx.op.binary.f32(i32 35, float %3598, float 0x3F70101020000000)  ; FMax(a,b)
  %3601 = call float @dx.op.binary.f32(i32 35, float %3599, float 0x3F70101020000000)  ; FMax(a,b)
  %3602 = select i1 %3597, float %3600, float 0.000000e+00
  %3603 = select i1 %3597, float %3601, float 0.000000e+00
  %3604 = select i1 %3597, i32 64, i32 0
  %3605 = fptoui float %53 to i32
  %3606 = fptoui float %54 to i32
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %3605, i32 %3606, i32 undef, float %3602, float %3603, float %3602, float %3602, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br i1 %3597, label %3607, label %3613

; <label>:3607                                    ; preds = %3535
  %3608 = fmul fast float %3592, 5.000000e-01
  %3609 = call float @dx.op.binary.f32(i32 35, float %3608, float 0x3F70101020000000)  ; FMax(a,b)
  %3610 = call float @dx.op.unary.f32(i32 24, float %1363)  ; Sqrt(value)
  %3611 = call float @dx.op.unary.f32(i32 24, float %1364)  ; Sqrt(value)
  %3612 = call float @dx.op.unary.f32(i32 24, float %1365)  ; Sqrt(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %3605, i32 %3606, i32 undef, float %3610, float %3611, float %3612, float %3609, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3613

; <label>:3613                                    ; preds = %3607, %3535
  %3614 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %3615 = call float @dx.op.unary.f32(i32 25, float %3614)  ; Rsqrt(value)
  %3616 = fmul fast float %3615, %101
  %3617 = fmul fast float %3615, %102
  %3618 = fmul fast float %3615, %103
  %3619 = fsub fast float -0.000000e+00, %3616
  %3620 = fsub fast float -0.000000e+00, %3617
  %3621 = fsub fast float -0.000000e+00, %3618
  %3622 = select i1 %144, float 0.000000e+00, float %3541
  %3623 = call float @dx.op.dot3.f32(i32 55, float %3542, float %3543, float %3544, float %3619, float %3620, float %3621)  ; Dot3(ax,ay,az,bx,by,bz)
  %3624 = call float @dx.op.unary.f32(i32 7, float %3623)  ; Saturate(value)
  %3625 = fsub fast float 1.000000e+00, %3546
  %3626 = bitcast float %3625 to i32
  %3627 = sub nsw i32 2129859010, %3626
  %3628 = bitcast i32 %3627 to float
  %3629 = fmul fast float %1301, %1282
  %3630 = fmul fast float %1301, %1283
  %3631 = fmul fast float %1301, %1284
  %3632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3633 = extractvalue %dx.types.CBufRet.f32 %3632, 3
  %3634 = fcmp fast oeq float %3633, 0.000000e+00
  br i1 %3634, label %3879, label %3635

; <label>:3635                                    ; preds = %3613
  %3636 = extractvalue %dx.types.CBufRet.f32 %3632, 0
  %3637 = extractvalue %dx.types.CBufRet.f32 %3632, 1
  %3638 = extractvalue %dx.types.CBufRet.f32 %3632, 2
  %3639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3640 = extractvalue %dx.types.CBufRet.f32 %3639, 0
  %3641 = extractvalue %dx.types.CBufRet.f32 %3639, 1
  %3642 = extractvalue %dx.types.CBufRet.f32 %3639, 2
  %3643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3644 = extractvalue %dx.types.CBufRet.f32 %3643, 0
  %3645 = extractvalue %dx.types.CBufRet.f32 %3643, 1
  %3646 = call float @dx.op.dot3.f32(i32 55, float %3640, float %3641, float %3642, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3647 = select i1 %144, float %3644, float %3640
  %3648 = select i1 %144, float %3646, float %3641
  %3649 = select i1 %144, float %3645, float %3642
  %3650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3651 = extractvalue %dx.types.CBufRet.f32 %3650, 1
  %3652 = fcmp fast une float %3651, 0.000000e+00
  br i1 %3652, label %3653, label %3668

; <label>:3653                                    ; preds = %3635
  %3654 = lshr i32 %3605, 4
  %3655 = lshr i32 %3606, 4
  %3656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3657 = extractvalue %dx.types.CBufRet.f32 %3656, 0
  %3658 = fptoui float %3657 to i32
  %3659 = add i32 %3658, 15
  %3660 = lshr i32 %3659, 4
  %3661 = mul i32 %3660, %3655
  %3662 = add i32 %3661, %3654
  %3663 = shl i32 %3662, 3
  %3664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %3663, i32 undef)  ; BufferLoad(srv,index,wot)
  %3665 = extractvalue %dx.types.ResRet.i32 %3664, 0
  %3666 = and i32 %3665, -268435456
  %3667 = icmp eq i32 %3666, -1342177280
  br i1 %3667, label %3678, label %3668

; <label>:3668                                    ; preds = %3653, %3635
  %3669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3670 = extractvalue %dx.types.CBufRet.f32 %3669, 2
  %3671 = extractvalue %dx.types.CBufRet.f32 %3669, 3
  %3672 = fmul fast float %3670, %53
  %3673 = fmul fast float %3671, %54
  %3674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %22, float %3672, float %3673, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3675 = extractvalue %dx.types.ResRet.f32 %3674, 0
  %3676 = extractvalue %dx.types.ResRet.f32 %3674, 1
  %3677 = extractvalue %dx.types.ResRet.f32 %3674, 2
  br label %3678

; <label>:3678                                    ; preds = %3668, %3653
  %3679 = phi float [ %3675, %3668 ], [ 0.000000e+00, %3653 ]
  %3680 = phi float [ %3676, %3668 ], [ 0.000000e+00, %3653 ]
  %3681 = phi float [ %3677, %3668 ], [ 0.000000e+00, %3653 ]
  %3682 = call float @dx.op.binary.f32(i32 36, float %3680, float %3681)  ; FMin(a,b)
  %3683 = call float @dx.op.binary.f32(i32 36, float %3679, float %3682)  ; FMin(a,b)
  %3684 = fcmp fast ogt float %3683, 0.000000e+00
  br i1 %3684, label %3685, label %3879, !dx.controlflow.hints !70

; <label>:3685                                    ; preds = %3678
  %3686 = fmul fast float %3679, %3647
  %3687 = fmul fast float %3680, %3648
  %3688 = fmul fast float %3681, %3649
  %3689 = fsub fast float %3636, %3616
  %3690 = fsub fast float %3637, %3617
  %3691 = fsub fast float %3638, %3618
  %3692 = call float @dx.op.dot3.f32(i32 55, float %3689, float %3690, float %3691, float %3689, float %3690, float %3691)  ; Dot3(ax,ay,az,bx,by,bz)
  %3693 = call float @dx.op.unary.f32(i32 25, float %3692)  ; Rsqrt(value)
  %3694 = fmul fast float %3693, %3689
  %3695 = fmul fast float %3693, %3690
  %3696 = fmul fast float %3693, %3691
  %3697 = call float @dx.op.dot3.f32(i32 55, float %3636, float %3637, float %3638, float %3542, float %3543, float %3544)  ; Dot3(ax,ay,az,bx,by,bz)
  %3698 = call float @dx.op.dot3.f32(i32 55, float %3619, float %3620, float %3621, float %3694, float %3695, float %3696)  ; Dot3(ax,ay,az,bx,by,bz)
  %3699 = call float @dx.op.unary.f32(i32 7, float %3697)  ; Saturate(value)
  %3700 = fmul fast float %3699, %3699
  %3701 = fmul fast float %3700, %3628
  %3702 = call float @dx.op.unary.f32(i32 7, float %3701)  ; Saturate(value)
  %3703 = fmul fast float %3702, %3699
  %3704 = call float @dx.op.dot3.f32(i32 55, float %3542, float %3543, float %3544, float %3694, float %3695, float %3696)  ; Dot3(ax,ay,az,bx,by,bz)
  %3705 = fmul fast float %3704, %3704
  %3706 = call float @dx.op.unary.f32(i32 6, float %3697)  ; FAbs(value)
  %3707 = fsub fast float 1.000000e+00, %3545
  %3708 = call float @dx.op.binary.f32(i32 35, float %3707, float 0x3F847AE140000000)  ; FMax(a,b)
  %3709 = fmul fast float %3708, %3708
  %3710 = fmul fast float %3709, %3709
  %3711 = fsub fast float 1.000000e+00, %3710
  %3712 = fmul fast float %3624, %3624
  %3713 = fmul fast float %3712, %3711
  %3714 = fadd fast float %3713, %3710
  %3715 = bitcast float %3714 to i32
  %3716 = ashr i32 %3715, 1
  %3717 = add nsw i32 %3716, 532487669
  %3718 = bitcast i32 %3717 to float
  %3719 = fadd fast float %3718, %3624
  %3720 = fmul fast float %3710, %3705
  %3721 = fsub fast float 1.000000e+00, %3705
  %3722 = fadd fast float %3721, %3720
  %3723 = fmul fast float %3706, %3706
  %3724 = fmul fast float %3723, %3711
  %3725 = fadd fast float %3724, %3710
  %3726 = bitcast float %3725 to i32
  %3727 = ashr i32 %3726, 1
  %3728 = add nsw i32 %3727, 532487669
  %3729 = bitcast i32 %3728 to float
  %3730 = fadd fast float %3729, %3706
  %3731 = fmul fast float %3722, %3722
  %3732 = fmul fast float %3731, %3719
  %3733 = fmul fast float %3732, %3730
  %3734 = fdiv fast float 0x3FF0A00000000000, %3733
  %3735 = fmul fast float %3734, %3710
  %3736 = call float @dx.op.unary.f32(i32 6, float %3698)  ; FAbs(value)
  %3737 = fsub fast float 1.000000e+00, %3736
  %3738 = bitcast float %3737 to i32
  %3739 = sitofp i32 %3738 to float
  %3740 = fmul fast float %3739, 5.000000e+00
  %3741 = fadd fast float %3740, 0xC1EFBF8940000000
  %3742 = fptosi float %3741 to i32
  %3743 = bitcast i32 %3742 to float
  %3744 = fsub fast float 1.000000e+00, %3539
  %3745 = fsub fast float 1.000000e+00, %3540
  %3746 = fsub fast float 1.000000e+00, %3622
  %3747 = fmul fast float %3743, %3744
  %3748 = fmul fast float %3743, %3745
  %3749 = fmul fast float %3743, %3746
  %3750 = fadd fast float %3747, %3539
  %3751 = fadd fast float %3748, %3540
  %3752 = fadd fast float %3749, %3622
  %3753 = fcmp fast ogt float %1278, 0.000000e+00
  br i1 %3753, label %3754, label %3777

; <label>:3754                                    ; preds = %3685
  %3755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %21, float %1278, float %3736, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3756 = extractvalue %dx.types.ResRet.f32 %3755, 0
  %3757 = extractvalue %dx.types.ResRet.f32 %3755, 1
  %3758 = extractvalue %dx.types.ResRet.f32 %3755, 2
  %3759 = fadd fast float %3756, -5.000000e-01
  %3760 = fadd fast float %3757, -5.000000e-01
  %3761 = fadd fast float %3758, -5.000000e-01
  %3762 = fmul fast float %3539, 4.000000e+00
  %3763 = fmul fast float %3762, %3744
  %3764 = fmul fast float %3763, %3759
  %3765 = fmul fast float %3540, 4.000000e+00
  %3766 = fmul fast float %3765, %3745
  %3767 = fmul fast float %3766, %3760
  %3768 = fmul fast float %3622, 4.000000e+00
  %3769 = fmul fast float %3768, %3746
  %3770 = fmul fast float %3769, %3761
  %3771 = fadd fast float %3764, %3750
  %3772 = fadd fast float %3767, %3751
  %3773 = fadd fast float %3770, %3752
  %3774 = call float @dx.op.unary.f32(i32 7, float %3771)  ; Saturate(value)
  %3775 = call float @dx.op.unary.f32(i32 7, float %3772)  ; Saturate(value)
  %3776 = call float @dx.op.unary.f32(i32 7, float %3773)  ; Saturate(value)
  br label %3777

; <label>:3777                                    ; preds = %3754, %3685
  %3778 = phi float [ %3774, %3754 ], [ %3750, %3685 ]
  %3779 = phi float [ %3775, %3754 ], [ %3751, %3685 ]
  %3780 = phi float [ %3776, %3754 ], [ %3752, %3685 ]
  %3781 = fmul fast float %3697, 9.843750e-01
  %3782 = fmul fast float %3545, 9.843750e-01
  %3783 = fadd fast float %3781, 7.812500e-03
  %3784 = fadd fast float %3782, 7.812500e-03
  %3785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %21, float %3783, float %3784, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3786 = extractvalue %dx.types.ResRet.f32 %3785, 2
  %3787 = extractvalue %dx.types.ResRet.f32 %3785, 3
  %3788 = fmul fast float %3786, %3539
  %3789 = fmul fast float %3786, %3540
  %3790 = fmul fast float %3786, %3622
  %3791 = fadd fast float %3788, %3787
  %3792 = fadd fast float %3789, %3787
  %3793 = fadd fast float %3790, %3787
  br i1 %3753, label %3794, label %3817

; <label>:3794                                    ; preds = %3777
  %3795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %21, float %1278, float %3697, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3796 = extractvalue %dx.types.ResRet.f32 %3795, 0
  %3797 = extractvalue %dx.types.ResRet.f32 %3795, 1
  %3798 = extractvalue %dx.types.ResRet.f32 %3795, 2
  %3799 = fadd fast float %3796, -5.000000e-01
  %3800 = fadd fast float %3797, -5.000000e-01
  %3801 = fadd fast float %3798, -5.000000e-01
  %3802 = fmul fast float %3539, 4.000000e+00
  %3803 = fmul fast float %3802, %3744
  %3804 = fmul fast float %3803, %3799
  %3805 = fmul fast float %3540, 4.000000e+00
  %3806 = fmul fast float %3805, %3745
  %3807 = fmul fast float %3806, %3800
  %3808 = fmul fast float %3622, 4.000000e+00
  %3809 = fmul fast float %3808, %3746
  %3810 = fmul fast float %3809, %3801
  %3811 = fadd fast float %3804, %3791
  %3812 = fadd fast float %3807, %3792
  %3813 = fadd fast float %3810, %3793
  %3814 = call float @dx.op.unary.f32(i32 7, float %3811)  ; Saturate(value)
  %3815 = call float @dx.op.unary.f32(i32 7, float %3812)  ; Saturate(value)
  %3816 = call float @dx.op.unary.f32(i32 7, float %3813)  ; Saturate(value)
  br label %3817

; <label>:3817                                    ; preds = %3794, %3777
  %3818 = phi float [ %3814, %3794 ], [ %3791, %3777 ]
  %3819 = phi float [ %3815, %3794 ], [ %3792, %3777 ]
  %3820 = phi float [ %3816, %3794 ], [ %3793, %3777 ]
  %3821 = call float @dx.op.binary.f32(i32 35, float %3819, float %3820)  ; FMax(a,b)
  %3822 = call float @dx.op.binary.f32(i32 35, float %3818, float %3821)  ; FMax(a,b)
  %3823 = fsub fast float 1.000000e+00, %3822
  %3824 = fmul fast float %3778, %3735
  %3825 = fmul fast float %3779, %3735
  %3826 = fmul fast float %3780, %3735
  %3827 = call float @dx.op.dot3.f32(i32 55, float %3536, float %3537, float %3538, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3828 = fcmp fast ogt float %3827, 0x3E7FF19E20000000
  %3829 = fdiv fast float 1.000000e+00, %3827
  %3830 = select i1 %3828, float %3829, float 0.000000e+00
  %3831 = fmul fast float %3830, %3536
  %3832 = fmul fast float %3830, %3537
  %3833 = fmul fast float %3830, %3538
  %3834 = fadd fast float %3831, -1.000000e+00
  %3835 = fadd fast float %3832, -1.000000e+00
  %3836 = fadd fast float %3833, -1.000000e+00
  %3837 = fmul fast float %3834, 5.000000e-01
  %3838 = fmul fast float %3835, 5.000000e-01
  %3839 = fmul fast float %3836, 5.000000e-01
  %3840 = fadd fast float %3837, 1.000000e+00
  %3841 = fadd fast float %3838, 1.000000e+00
  %3842 = fadd fast float %3839, 1.000000e+00
  %3843 = fsub fast float 1.000000e+00, %3698
  %3844 = bitcast float %3843 to i32
  %3845 = sitofp i32 %3844 to float
  %3846 = fmul fast float %3845, 5.000000e+00
  %3847 = fadd fast float %3846, 0xC1EFBF8940000000
  %3848 = fptosi float %3847 to i32
  %3849 = bitcast i32 %3848 to float
  %3850 = fmul fast float %3849, %1277
  %3851 = fmul fast float %3823, %3850
  %3852 = fmul fast float %3851, %3840
  %3853 = fmul fast float %3851, %3841
  %3854 = fmul fast float %3851, %3842
  %3855 = fadd fast float %3852, %3824
  %3856 = fadd fast float %3853, %3825
  %3857 = fadd fast float %3854, %3826
  %3858 = fmul fast float %3703, %3686
  %3859 = fmul fast float %3858, %3855
  %3860 = fmul fast float %3703, %3687
  %3861 = fmul fast float %3860, %3856
  %3862 = fmul fast float %3703, %3688
  %3863 = fmul fast float %3862, %3857
  %3864 = fmul fast float %3686, %1301
  %3865 = fmul fast float %3864, %3703
  %3866 = fmul fast float %3865, %3823
  %3867 = fmul fast float %3687, %1301
  %3868 = fmul fast float %3867, %3703
  %3869 = fmul fast float %3868, %3823
  %3870 = fmul fast float %3688, %1301
  %3871 = fmul fast float %3870, %3703
  %3872 = fmul fast float %3871, %3823
  %3873 = fadd fast float %3859, %1282
  %3874 = fmul fast float %3873, %1301
  %3875 = fadd fast float %3861, %1283
  %3876 = fmul fast float %3875, %1301
  %3877 = fadd fast float %3863, %1284
  %3878 = fmul fast float %3877, %1301
  br label %3879

; <label>:3879                                    ; preds = %3817, %3678, %3613
  %3880 = phi float [ %3629, %3613 ], [ %3629, %3678 ], [ %3874, %3817 ]
  %3881 = phi float [ %3630, %3613 ], [ %3630, %3678 ], [ %3876, %3817 ]
  %3882 = phi float [ %3631, %3613 ], [ %3631, %3678 ], [ %3878, %3817 ]
  %3883 = phi float [ 0.000000e+00, %3613 ], [ 0.000000e+00, %3678 ], [ %3866, %3817 ]
  %3884 = phi float [ 0.000000e+00, %3613 ], [ 0.000000e+00, %3678 ], [ %3869, %3817 ]
  %3885 = phi float [ 0.000000e+00, %3613 ], [ 0.000000e+00, %3678 ], [ %3872, %3817 ]
  %3886 = call float @dx.op.unary.f32(i32 24, float %3536)  ; Sqrt(value)
  %3887 = call float @dx.op.unary.f32(i32 24, float %3537)  ; Sqrt(value)
  %3888 = call float @dx.op.unary.f32(i32 24, float %3538)  ; Sqrt(value)
  %3889 = fmul fast float %3886, %3883
  %3890 = fmul fast float %3887, %3884
  %3891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3892 = extractvalue %dx.types.CBufRet.f32 %3891, 0
  br i1 %144, label %3893, label %3917

; <label>:3893                                    ; preds = %3879
  %3894 = fadd fast float %3885, %1275
  %3895 = fmul fast float %3894, %1276
  %3896 = fsub fast float 1.000000e+00, %1276
  %3897 = call float @dx.op.unary.f32(i32 7, float %3896)  ; Saturate(value)
  %3898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3899 = extractvalue %dx.types.CBufRet.f32 %3898, 3
  %3900 = fmul fast float %3899, %3897
  %3901 = fsub fast float 1.000000e+00, %3624
  %3902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3903 = extractvalue %dx.types.CBufRet.f32 %3902, 0
  %3904 = fmul fast float %3903, %3901
  %3905 = extractvalue %dx.types.CBufRet.f32 %3902, 2
  %3906 = fmul fast float %3560, %3905
  %3907 = fadd fast float %3890, %3889
  %3908 = fmul fast float %3892, %3907
  %3909 = extractvalue %dx.types.CBufRet.f32 %3898, 1
  %3910 = fadd fast float %3900, %3895
  %3911 = fsub fast float %3910, %3904
  %3912 = fadd fast float %3911, %3906
  %3913 = fsub fast float %3912, %3909
  %3914 = extractvalue %dx.types.CBufRet.f32 %3898, 2
  %3915 = fmul fast float %3913, %3914
  %3916 = call float @dx.op.unary.f32(i32 7, float %3915)  ; Saturate(value)
  br label %3933

; <label>:3917                                    ; preds = %3879
  %3918 = fmul fast float %3888, %3885
  %3919 = fmul fast float %3892, %3889
  %3920 = fmul fast float %3892, %3890
  %3921 = fmul fast float %3918, %3892
  %3922 = add i32 %36, 116
  %3923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3922, i32 undef)  ; BufferLoad(srv,index,wot)
  %3924 = extractvalue %dx.types.ResRet.i32 %3923, 0
  %3925 = and i32 %3924, 32
  %3926 = icmp eq i32 %3925, 0
  br i1 %3926, label %3933, label %3927

; <label>:3927                                    ; preds = %3917
  %3928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3929 = extractvalue %dx.types.CBufRet.f32 %3928, 0
  %3930 = fmul fast float %3929, 0x3FE99999A0000000
  %3931 = fadd fast float %3929, %3919
  %3932 = fadd fast float %3930, %3921
  br label %3933

; <label>:3933                                    ; preds = %3927, %3917, %3893
  %3934 = phi float [ %3908, %3893 ], [ %3931, %3927 ], [ %3919, %3917 ]
  %3935 = phi float [ %3916, %3893 ], [ %3920, %3927 ], [ %3920, %3917 ]
  %3936 = phi float [ 1.000000e+00, %3893 ], [ %3932, %3927 ], [ %3921, %3917 ]
  %3937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3938 = extractvalue %dx.types.CBufRet.f32 %3937, 0
  %3939 = fmul fast float %3938, %3881
  %3940 = fmul fast float %3938, %3882
  %3941 = fadd fast float %3881, %3880
  %3942 = select i1 %144, float %3941, float %3880
  %3943 = fmul float %3942, %3938
  %3944 = select i1 %144, float 0.000000e+00, float %3939
  %3945 = select i1 %144, float 0.000000e+00, float %3940
  %3946 = call float @dx.op.binary.f32(i32 36, float %3934, float 3.225500e+04)  ; FMin(a,b)
  %3947 = call float @dx.op.binary.f32(i32 36, float %3935, float 3.225500e+04)  ; FMin(a,b)
  %3948 = call float @dx.op.binary.f32(i32 36, float %3936, float 3.225500e+04)  ; FMin(a,b)
  %3949 = call float @dx.op.binary.f32(i32 36, float %3943, float 3.225500e+04)  ; FMin(a,b)
  %3950 = call float @dx.op.binary.f32(i32 36, float %3944, float 3.225500e+04)  ; FMin(a,b)
  %3951 = call float @dx.op.binary.f32(i32 36, float %3945, float 3.225500e+04)  ; FMin(a,b)
  %3952 = and i32 %120, 64
  %3953 = or i32 %3604, %3952
  %3954 = icmp eq i32 %3953, 0
  br i1 %3954, label %3955, label %3962

; <label>:3955                                    ; preds = %3933
  %3956 = fmul fast float %3946, %3886
  %3957 = fmul fast float %3947, %3887
  %3958 = fmul fast float %3948, %3888
  %3959 = fadd fast float %3949, %3956
  %3960 = fadd fast float %3950, %3957
  %3961 = fadd fast float %3951, %3958
  br label %3962

; <label>:3962                                    ; preds = %3955, %3933
  %3963 = phi float [ %3959, %3955 ], [ %3949, %3933 ]
  %3964 = phi float [ %3960, %3955 ], [ %3950, %3933 ]
  %3965 = phi float [ %3961, %3955 ], [ %3951, %3933 ]
  %3966 = select i1 %144, float %3947, float %3964
  %3967 = select i1 %144, float %3948, float %3965
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3963)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3966)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3967)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %3946)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %3947)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %3948)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!39}
!dx.entryPoints = !{!40}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !27, !30, !33}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2DArray<vector<unsigned int, 4> >"* undef, !"", i32 2, i32 62, i32 1, i32 7, i32 0, !17}
!17 = !{i32 0, i32 5}
!18 = !{i32 10, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 63, i32 1, i32 7, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 48, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 12, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 55, i32 1, i32 2, i32 0, !7}
!27 = !{!28, !29}
!28 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!29 = !{i32 1, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!30 = !{!31, !32}
!31 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!32 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!33 = !{!34, !35, !36, !37, !38}
!34 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!35 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!36 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!37 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!38 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!39 = !{[24 x i32] [i32 22, i32 8, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119]}
!40 = !{void ()* @ps_main, !"ps_main", !41, !4, !61}
!41 = !{!42, !57, null}
!42 = !{!43, !46, !48, !49, !51, !53, !55, !56}
!43 = !{i32 0, !"SV_Position", i8 9, i8 3, !44, i8 4, i32 1, i8 4, i32 0, i8 0, !45}
!44 = !{i32 0}
!45 = !{i32 3, i32 11}
!46 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !44, i8 2, i32 1, i8 2, i32 1, i8 0, !47}
!47 = !{i32 3, i32 3}
!48 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !44, i8 2, i32 1, i8 3, i32 2, i8 0, null}
!49 = !{i32 3, !"NORMAL", i8 9, i8 0, !44, i8 2, i32 1, i8 3, i32 3, i8 0, !50}
!50 = !{i32 3, i32 7}
!51 = !{i32 4, !"TANGENT", i8 9, i8 0, !44, i8 2, i32 1, i8 4, i32 4, i8 0, !52}
!52 = !{i32 3, i32 15}
!53 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !44, i8 1, i32 1, i8 1, i32 5, i8 0, !54}
!54 = !{i32 3, i32 1}
!55 = !{i32 6, !"SV_IsFrontFace", i8 5, i8 13, !44, i8 1, i32 1, i8 1, i32 5, i8 1, !54}
!56 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !44, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!57 = !{!58, !59}
!58 = !{i32 0, !"SV_Target", i8 9, i8 16, !44, i8 0, i32 1, i8 4, i32 0, i8 0, !52}
!59 = !{i32 1, !"SV_Target", i8 9, i8 16, !60, i8 0, i32 1, i8 4, i32 1, i8 0, !52}
!60 = !{i32 1}
!61 = !{i32 0, i64 24}
!62 = !{!63, !63, i64 0}
!63 = !{!"float", !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C/C++ TBAA"}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = !{!69, !69, i64 0}
!69 = !{!"int", !64, i64 0}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}

