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
; TRANSIENT_INDEX          0    y          5     NONE    uint       
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
; shader hash: 05998dd18e89713367c174382c62c1cf
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
; TRANSIENT_INDEX          0        nointerpolation       
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
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
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
  %34 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 0
  %51 = fmul fast float %50, %44
  %52 = fmul fast float %50, %45
  %53 = fmul fast float %40, %37
  %54 = fmul fast float %41, %36
  %55 = fsub fast float %53, %54
  %56 = fmul fast float %41, %35
  %57 = fmul fast float %39, %37
  %58 = fsub fast float %56, %57
  %59 = fmul fast float %39, %36
  %60 = fmul fast float %40, %35
  %61 = fsub fast float %59, %60
  %62 = fmul fast float %55, %38
  %63 = fmul fast float %58, %38
  %64 = fmul fast float %61, %38
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 2
  %67 = extractvalue %dx.types.CBufRet.f32 %65, 3
  %68 = fmul fast float %66, 2.000000e+00
  %69 = fmul fast float %68, %51
  %70 = fmul fast float %67, 2.000000e+00
  %71 = fmul fast float %70, %52
  %72 = fsub fast float 1.000000e+00, %69
  %73 = fsub fast float 1.000000e+00, %71
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %77 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %78 = fmul fast float %72, %75
  %79 = fmul fast float %72, %76
  %80 = fmul fast float %72, %77
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %85 = fmul fast float %73, %82
  %86 = fmul fast float %73, %83
  %87 = fmul fast float %73, %84
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %91 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %92 = fadd fast float %85, %89
  %93 = fadd fast float %92, %78
  %94 = fadd fast float %86, %90
  %95 = fadd fast float %94, %79
  %96 = fadd fast float %87, %91
  %97 = fadd fast float %96, %80
  %98 = fmul fast float %93, %46
  %99 = fmul fast float %95, %46
  %100 = fmul fast float %97, %46
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 3
  %104 = fmul fast float %102, %51
  %105 = fmul fast float %103, %52
  %106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %107 = extractvalue %dx.types.ResRet.i32 %106, 0
  %108 = and i32 %107, 114688
  %109 = icmp ne i32 %108, 0
  %110 = select i1 %109, float %104, float 0.000000e+00
  %111 = select i1 %109, float %105, float 0.000000e+00
  %112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %22, float %110, float %111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = fmul fast float %113, 2.550000e+02
  %115 = fptoui float %114 to i32
  %116 = select i1 %109, i32 %115, i32 0
  %117 = shl i32 %116, 4
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.i32 %119, 3
  %121 = and i32 %120, 3
  %122 = icmp ne i32 %121, 0
  %123 = and i32 %120, 4
  %124 = icmp ne i32 %123, 0
  %125 = and i1 %122, %124
  br i1 %125, label %126, label %137

; <label>:126                                     ; preds = %0
  %127 = extractvalue %dx.types.CBufRet.f32 %118, 3
  %128 = fmul fast float %127, %52
  %129 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %130 = fmul fast float %129, %51
  %131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %21, float %130, float %128, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %132 = extractvalue %dx.types.ResRet.f32 %131, 0
  %133 = fsub fast float 1.000000e+00, %132
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = fcmp fast olt float %133, %135
  br label %140

; <label>:137                                     ; preds = %0
  %138 = icmp eq i32 %123, 0
  %139 = and i1 %122, %138
  br label %140

; <label>:140                                     ; preds = %137, %126
  %141 = phi i1 [ %136, %126 ], [ %139, %137 ]
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %144 = fmul fast float %143, 0x3FE3C6EF40000000
  %145 = frem fast float %51, 2.560000e+02
  %146 = frem fast float %52, 2.560000e+02
  %147 = fptoui float %145 to i32
  %148 = fptoui float %146 to i32
  %149 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %147, i32 %148, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %150 = extractvalue %dx.types.ResRet.f32 %149, 0
  %151 = fadd fast float %150, %144
  %152 = call float @dx.op.unary.f32(i32 22, float %151)  ; Frc(value)
  %153 = add i32 %34, 60
  %154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %153, i32 undef)  ; BufferLoad(srv,index,wot)
  %155 = extractvalue %dx.types.ResRet.i32 %154, 0
  %156 = shl i32 %155, 4
  %157 = and i32 %156, 32752
  %158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %157)  ; LegacyF16ToF32(value)
  %159 = lshr i32 %155, 7
  %160 = and i32 %159, 32752
  %161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %160)  ; LegacyF16ToF32(value)
  %162 = lshr i32 %155, 22
  %163 = shl nuw nsw i32 %162, 5
  %164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %163)  ; LegacyF16ToF32(value)
  %165 = add i32 %34, 72
  %166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.i32 %166, 0
  %168 = and i32 %167, 255
  %169 = uitofp i32 %168 to float
  %170 = fmul fast float %169, 0x3F70101020000000
  %171 = lshr i32 %167, 8
  %172 = and i32 %171, 255
  %173 = uitofp i32 %172 to float
  %174 = fmul fast float %173, 0x3F70101020000000
  %175 = lshr i32 %167, 16
  %176 = and i32 %175, 255
  %177 = uitofp i32 %176 to float
  %178 = fmul fast float %177, 0x3F70101020000000
  %179 = add i32 %34, 36
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = add i32 %34, 96
  %183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = add i32 %34, 24
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = add i32 %34, 28
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = or i32 %190, %187
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %690, label %193

; <label>:193                                     ; preds = %140
  %194 = lshr i32 %184, 16
  %195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %194)  ; LegacyF16ToF32(value)
  %196 = fmul fast float %195, 0x3F50624DE0000000
  %197 = and i32 %184, 65535
  %198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %197)  ; LegacyF16ToF32(value)
  %199 = fmul fast float %198, 0x3F50624DE0000000
  %200 = lshr i32 %181, 16
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = and i32 %181, 65535
  %203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %202)  ; LegacyF16ToF32(value)
  %204 = add i32 %34, 92
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = lshr i32 %206, 16
  %208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %207)  ; LegacyF16ToF32(value)
  %209 = fmul fast float %208, 0x3F50624DE0000000
  %210 = add i32 %34, 40
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = lshr i32 %212, 16
  %214 = and i32 %213, 255
  %215 = lshr i32 %212, 24
  %216 = add i32 %34, 100
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = and i32 %218, 65535
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = lshr i32 %218, 16
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = add i32 %34, 32
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = lshr i32 %225, 22
  %227 = shl nuw nsw i32 %226, 5
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227)  ; LegacyF16ToF32(value)
  %229 = shl i32 %225, 4
  %230 = and i32 %229, 32752
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = lshr i32 %225, 7
  %233 = and i32 %232, 32752
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.f32 %235, 3
  %237 = fmul fast float %236, 1.000000e+03
  %238 = fmul fast float %199, %237
  %239 = call float @dx.op.unary.f32(i32 22, float %238)  ; Frc(value)
  %240 = fadd fast float %239, %203
  %241 = fmul fast float %196, %237
  %242 = call float @dx.op.unary.f32(i32 22, float %241)  ; Frc(value)
  %243 = fadd fast float %242, %201
  %244 = fmul fast float %209, %237
  %245 = call float @dx.op.unary.f32(i32 22, float %244)  ; Frc(value)
  %246 = fmul fast float %245, 0x401921FB60000000
  %247 = fadd fast float %246, %228
  %248 = call float @dx.op.unary.f32(i32 13, float %247)  ; Sin(value)
  %249 = call float @dx.op.unary.f32(i32 12, float %247)  ; Cos(value)
  %250 = fsub fast float -0.000000e+00, %248
  %251 = fadd fast float %42, -5.000000e-01
  %252 = fadd fast float %43, -5.000000e-01
  %253 = fmul fast float %220, %251
  %254 = fmul fast float %222, %252
  %255 = fadd fast float %253, 5.000000e-01
  %256 = fadd fast float %254, 5.000000e-01
  %257 = fmul fast float %231, %255
  %258 = fmul fast float %234, %256
  %259 = fmul fast float %249, %257
  %260 = call float @dx.op.tertiary.f32(i32 46, float %250, float %258, float %259)  ; FMad(a,b,c)
  %261 = fmul fast float %248, %257
  %262 = call float @dx.op.tertiary.f32(i32 46, float %249, float %258, float %261)  ; FMad(a,b,c)
  %263 = fadd fast float %240, %260
  %264 = fadd fast float %243, %262
  %265 = icmp ugt i32 %214, 1
  %266 = icmp ugt i32 %212, 33554431
  %267 = or i1 %266, %265
  br i1 %267, label %268, label %293

; <label>:268                                     ; preds = %193
  %269 = add i32 %34, 84
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = lshr i32 %271, 16
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = fmul fast float %236, %273
  %275 = call float @dx.op.unary.f32(i32 22, float %274)  ; Frc(value)
  %276 = mul nuw nsw i32 %214, %215
  %277 = uitofp i32 %276 to float
  %278 = fmul fast float %275, %277
  %279 = call float @dx.op.unary.f32(i32 27, float %278)  ; Round_ni(value)
  %280 = fptoui float %279 to i32
  %281 = urem i32 %280, %214
  %282 = udiv i32 %280, %215
  %283 = call float @dx.op.unary.f32(i32 22, float %263)  ; Frc(value)
  %284 = call float @dx.op.unary.f32(i32 22, float %264)  ; Frc(value)
  %285 = uitofp i32 %281 to float
  %286 = uitofp i32 %282 to float
  %287 = fadd fast float %283, %285
  %288 = fadd fast float %284, %286
  %289 = uitofp i32 %214 to float
  %290 = uitofp i32 %215 to float
  %291 = fdiv fast float %287, %289
  %292 = fdiv fast float %288, %290
  br label %293

; <label>:293                                     ; preds = %268, %193
  %294 = phi float [ %291, %268 ], [ %263, %193 ]
  %295 = phi float [ %292, %268 ], [ %264, %193 ]
  %296 = and i32 %187, 16
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %494, label %298

; <label>:298                                     ; preds = %293
  %299 = add i32 %34, 120
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = add i32 %301, 0
  %303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %302, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %304 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %303, %dx.types.Handle %47, float %294, float %295, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 0
  %306 = extractvalue %dx.types.ResRet.f32 %304, 1
  %307 = extractvalue %dx.types.ResRet.f32 %304, 2
  %308 = extractvalue %dx.types.ResRet.f32 %304, 3
  %309 = and i32 %212, 255
  %310 = uitofp i32 %309 to float
  %311 = lshr i32 %212, 8
  %312 = and i32 %311, 255
  %313 = uitofp i32 %312 to float
  %314 = fmul fast float %308, %310
  %315 = fadd fast float %314, %313
  %316 = fmul fast float %315, 0x3F70101000000000
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 512
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %329, label %321

; <label>:321                                     ; preds = %298
  %322 = add i32 %34, 140
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = add i32 %324, 0
  %326 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %325, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %327 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %326, %dx.types.Handle %48, float %294, float %295, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 0
  br label %329

; <label>:329                                     ; preds = %321, %298
  %330 = phi float [ %328, %321 ], [ 1.000000e+00, %298 ]
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 33554432
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %441, label %335

; <label>:335                                     ; preds = %329
  %336 = add i32 %34, 80
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = and i32 %338, 65535
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = lshr i32 %338, 16
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = add i32 %34, 84
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = and i32 %345, 65535
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = lshr i32 %349, 24
  %351 = uitofp i32 %350 to float
  %352 = fmul fast float %351, 0x3F70101020000000
  %353 = and i32 %349, 255
  %354 = uitofp i32 %353 to float
  %355 = fmul fast float %354, 0x3F70101020000000
  %356 = lshr i32 %349, 8
  %357 = and i32 %356, 255
  %358 = uitofp i32 %357 to float
  %359 = fmul fast float %358, 0x3F70101020000000
  %360 = lshr i32 %349, 16
  %361 = and i32 %360, 255
  %362 = uitofp i32 %361 to float
  %363 = fmul fast float %362, 0x3F70101020000000
  %364 = add i32 %34, 76
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = lshr i32 %366, 24
  %368 = uitofp i32 %367 to float
  %369 = fmul fast float %368, 0x3F70101020000000
  %370 = and i32 %366, 255
  %371 = uitofp i32 %370 to float
  %372 = fmul fast float %371, 0x3F70101020000000
  %373 = lshr i32 %366, 8
  %374 = and i32 %373, 255
  %375 = uitofp i32 %374 to float
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = lshr i32 %366, 16
  %378 = and i32 %377, 255
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %379, 0x3F70101020000000
  %381 = bitcast float %305 to i32
  %382 = ashr i32 %381, 1
  %383 = sub nsw i32 1597463174, %382
  %384 = bitcast i32 %383 to float
  %385 = fmul fast float %305, 5.000000e-01
  %386 = fmul fast float %384, %384
  %387 = fmul fast float %386, %385
  %388 = fsub fast float 1.500000e+00, %387
  %389 = fmul fast float %384, %305
  %390 = fmul fast float %389, %388
  %391 = bitcast float %306 to i32
  %392 = ashr i32 %391, 1
  %393 = sub nsw i32 1597463174, %392
  %394 = bitcast i32 %393 to float
  %395 = fmul fast float %306, 5.000000e-01
  %396 = fmul fast float %394, %394
  %397 = fmul fast float %396, %395
  %398 = fsub fast float 1.500000e+00, %397
  %399 = fmul fast float %394, %306
  %400 = fmul fast float %399, %398
  %401 = bitcast float %307 to i32
  %402 = ashr i32 %401, 1
  %403 = sub nsw i32 1597463174, %402
  %404 = bitcast i32 %403 to float
  %405 = fmul fast float %307, 5.000000e-01
  %406 = fmul fast float %404, %404
  %407 = fmul fast float %406, %405
  %408 = fsub fast float 1.500000e+00, %407
  %409 = fmul fast float %404, %307
  %410 = fmul fast float %409, %408
  %411 = fsub fast float %390, %372
  %412 = fsub fast float %400, %376
  %413 = fsub fast float %410, %380
  %414 = fmul fast float %411, %340
  %415 = fmul fast float %412, %342
  %416 = fmul fast float %413, %347
  %417 = fadd fast float %414, %355
  %418 = fadd fast float %415, %359
  %419 = fadd fast float %416, %363
  %420 = call float @dx.op.unary.f32(i32 7, float %417)  ; Saturate(value)
  %421 = call float @dx.op.unary.f32(i32 7, float %418)  ; Saturate(value)
  %422 = call float @dx.op.unary.f32(i32 7, float %419)  ; Saturate(value)
  %423 = fmul fast float %420, %420
  %424 = fmul fast float %421, %421
  %425 = fmul fast float %422, %422
  %426 = fsub fast float %423, %305
  %427 = fsub fast float %424, %306
  %428 = fsub fast float %425, %307
  %429 = fmul fast float %426, %330
  %430 = fmul fast float %427, %330
  %431 = fmul fast float %428, %330
  %432 = fadd fast float %429, %305
  %433 = fadd fast float %430, %306
  %434 = fadd fast float %431, %307
  %435 = fadd fast float %352, %316
  %436 = fsub fast float %435, %369
  %437 = call float @dx.op.unary.f32(i32 7, float %436)  ; Saturate(value)
  %438 = fsub fast float %437, %316
  %439 = fmul fast float %438, %330
  %440 = fadd fast float %439, %316
  br label %494

; <label>:441                                     ; preds = %329
  %442 = and i32 %332, 134217728
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %478, label %444

; <label>:444                                     ; preds = %441
  %445 = call float @dx.op.unary.f32(i32 24, float %170)  ; Sqrt(value)
  %446 = call float @dx.op.unary.f32(i32 24, float %174)  ; Sqrt(value)
  %447 = call float @dx.op.unary.f32(i32 24, float %178)  ; Sqrt(value)
  %448 = fadd fast float %445, -5.000000e-01
  %449 = fadd fast float %446, -5.000000e-01
  %450 = fadd fast float %447, -5.000000e-01
  %451 = fmul fast float %448, %330
  %452 = fmul fast float %449, %330
  %453 = fmul fast float %450, %330
  %454 = fadd fast float %451, 5.000000e-01
  %455 = fadd fast float %452, 5.000000e-01
  %456 = fadd fast float %453, 5.000000e-01
  %457 = call float @dx.op.unary.f32(i32 24, float %305)  ; Sqrt(value)
  %458 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %459 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %460 = fmul fast float %454, 2.000000e+00
  %461 = fsub fast float 1.000000e+00, %460
  %462 = fmul fast float %461, %457
  %463 = fadd fast float %462, %460
  %464 = fmul fast float %463, %457
  %465 = fmul fast float %455, 2.000000e+00
  %466 = fsub fast float 1.000000e+00, %465
  %467 = fmul fast float %466, %458
  %468 = fadd fast float %467, %465
  %469 = fmul fast float %468, %458
  %470 = fmul fast float %456, 2.000000e+00
  %471 = fsub fast float 1.000000e+00, %470
  %472 = fmul fast float %471, %459
  %473 = fadd fast float %472, %470
  %474 = fmul fast float %473, %459
  %475 = fmul fast float %464, %464
  %476 = fmul fast float %469, %469
  %477 = fmul fast float %474, %474
  br label %494

; <label>:478                                     ; preds = %441
  %479 = fmul fast float %170, %170
  %480 = fmul fast float %174, %174
  %481 = fmul fast float %178, %178
  %482 = fadd fast float %479, -1.000000e+00
  %483 = fadd fast float %480, -1.000000e+00
  %484 = fadd fast float %481, -1.000000e+00
  %485 = fmul fast float %330, %482
  %486 = fmul fast float %330, %483
  %487 = fmul fast float %330, %484
  %488 = fadd fast float %485, 1.000000e+00
  %489 = fadd fast float %486, 1.000000e+00
  %490 = fadd fast float %487, 1.000000e+00
  %491 = fmul fast float %488, %305
  %492 = fmul fast float %489, %306
  %493 = fmul fast float %490, %307
  br label %494

; <label>:494                                     ; preds = %478, %444, %335, %293
  %495 = phi float [ %440, %335 ], [ %316, %444 ], [ %316, %478 ], [ 0x3FA23C0BE0000000, %293 ]
  %496 = phi float [ %432, %335 ], [ %475, %444 ], [ %491, %478 ], [ 1.000000e+00, %293 ]
  %497 = phi float [ %433, %335 ], [ %476, %444 ], [ %492, %478 ], [ 1.000000e+00, %293 ]
  %498 = phi float [ %434, %335 ], [ %477, %444 ], [ %493, %478 ], [ 1.000000e+00, %293 ]
  %499 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %500 = extractvalue %dx.types.CBufRet.i32 %499, 1
  %501 = and i32 %500, 1
  %502 = icmp ne i32 %501, 0
  %503 = add i32 %34, 116
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = and i32 %505, 32
  %507 = icmp ne i32 %506, 0
  %508 = and i1 %502, %507
  %509 = select i1 %508, float 1.000000e+00, float %496
  %510 = select i1 %508, float 0x3FD3333340000000, float %497
  %511 = select i1 %508, float 0x3FD3333340000000, float %498
  %512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.i32 %512, 0
  %514 = and i32 %513, 32
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %588, label %516

; <label>:516                                     ; preds = %494
  %517 = add i32 %34, 44
  %518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.i32 %518, 0
  %520 = add i32 %34, 124
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = add i32 %522, 0
  %524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %523, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %525 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %524, %dx.types.Handle %47, float %294, float %295, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  %527 = extractvalue %dx.types.ResRet.f32 %525, 1
  %528 = extractvalue %dx.types.ResRet.f32 %525, 2
  %529 = extractvalue %dx.types.ResRet.f32 %525, 3
  %530 = and i32 %519, 255
  %531 = uitofp i32 %530 to float
  %532 = lshr i32 %519, 8
  %533 = and i32 %532, 255
  %534 = uitofp i32 %533 to float
  %535 = lshr i32 %519, 16
  %536 = and i32 %535, 255
  %537 = uitofp i32 %536 to float
  %538 = fmul fast float %537, 0x3F70101000000000
  %539 = fmul fast float %526, %531
  %540 = fadd fast float %539, %534
  %541 = fmul fast float %540, 0x3F70101000000000
  %542 = fadd fast float %527, -5.000000e-01
  %543 = fadd fast float %529, -5.000000e-01
  %544 = fmul fast float %542, %538
  %545 = fmul fast float %543, %538
  %546 = fadd fast float %544, 5.000000e-01
  %547 = fadd fast float %545, 5.000000e-01
  %548 = fmul fast float %546, 2.000000e+00
  %549 = fadd fast float %548, -1.000000e+00
  %550 = fmul fast float %547, 2.000000e+00
  %551 = fadd fast float %550, -1.000000e+00
  %552 = fadd fast float %549, %551
  %553 = fmul fast float %552, 5.000000e-01
  %554 = fsub fast float %549, %551
  %555 = fmul fast float %554, 5.000000e-01
  %556 = call float @dx.op.unary.f32(i32 6, float %553)  ; FAbs(value)
  %557 = fsub fast float 1.000000e+00, %556
  %558 = call float @dx.op.unary.f32(i32 6, float %555)  ; FAbs(value)
  %559 = fsub fast float %557, %558
  %560 = call float @dx.op.dot3.f32(i32 55, float %553, float %555, float %559, float %553, float %555, float %559)  ; Dot3(ax,ay,az,bx,by,bz)
  %561 = call float @dx.op.unary.f32(i32 25, float %560)  ; Rsqrt(value)
  %562 = fmul fast float %553, %561
  %563 = fmul fast float %555, %561
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = and i32 %565, 67108864
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %584, label %568

; <label>:568                                     ; preds = %516
  %569 = add i32 %34, 88
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = and i32 %571, 65535
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = and i32 %575, 65535
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576)  ; LegacyF16ToF32(value)
  %578 = lshr i32 %571, 16
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = fsub fast float %541, %579
  %581 = fmul fast float %580, %573
  %582 = fadd fast float %581, %577
  %583 = call float @dx.op.unary.f32(i32 7, float %582)  ; Saturate(value)
  br label %584

; <label>:584                                     ; preds = %568, %516
  %585 = phi float [ %583, %568 ], [ %541, %516 ]
  %586 = call float @dx.op.dot2.f32(i32 54, float %562, float %563, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %587 = call float @dx.op.dot2.f32(i32 54, float %562, float %563, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %588

; <label>:588                                     ; preds = %584, %494
  %589 = phi float [ %585, %584 ], [ 0x3FD6666660000000, %494 ]
  %590 = phi float [ %586, %584 ], [ 0.000000e+00, %494 ]
  %591 = phi float [ %587, %584 ], [ 0.000000e+00, %494 ]
  %592 = phi float [ %528, %584 ], [ 1.000000e+00, %494 ]
  %593 = add i32 %34, 64
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %593, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = lshr i32 %595, 22
  %597 = shl nuw nsw i32 %596, 5
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  %601 = and i32 %600, 64
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %636, label %603

; <label>:603                                     ; preds = %588
  %604 = add i32 %34, 128
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = add i32 %606, 0
  %608 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %607, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.i32 %609, 0
  %611 = and i32 %610, 131072
  %612 = icmp eq i32 %611, 0
  %613 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %608, %dx.types.Handle %47, float %294, float %295, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = extractvalue %dx.types.ResRet.f32 %613, 1
  %616 = extractvalue %dx.types.ResRet.f32 %613, 2
  %617 = fmul fast float %614, %158
  %618 = fmul fast float %615, %161
  %619 = fmul fast float %616, %164
  br i1 %612, label %626, label %620

; <label>:620                                     ; preds = %603
  %621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.f32 %621, 0
  %623 = fmul fast float %622, %617
  %624 = fmul fast float %622, %618
  %625 = fmul fast float %622, %619
  br label %626

; <label>:626                                     ; preds = %620, %603
  %627 = phi float [ %623, %620 ], [ %617, %603 ]
  %628 = phi float [ %624, %620 ], [ %618, %603 ]
  %629 = phi float [ %625, %620 ], [ %619, %603 ]
  %630 = fmul fast float %627, %598
  %631 = select i1 %141, float %630, float %627
  %632 = call float @dx.op.dot3.f32(i32 55, float %631, float %628, float %629, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %633 = select i1 %141, float 0.000000e+00, float %627
  %634 = select i1 %141, float %632, float %628
  %635 = select i1 %141, float 0.000000e+00, float %629
  br label %636

; <label>:636                                     ; preds = %626, %588
  %637 = phi float [ %633, %626 ], [ 0.000000e+00, %588 ]
  %638 = phi float [ %634, %626 ], [ 0.000000e+00, %588 ]
  %639 = phi float [ %635, %626 ], [ 0.000000e+00, %588 ]
  %640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.i32 %640, 0
  %642 = and i32 %641, 10240
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %673, label %644

; <label>:644                                     ; preds = %636
  %645 = add i32 %34, 144
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = add i32 %647, 0
  %649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %648, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %650 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %649, %dx.types.Handle %48, float %294, float %295, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %651 = extractvalue %dx.types.ResRet.f32 %650, 1
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = and i32 %653, 1048576
  %655 = icmp ne i32 %654, 0
  %656 = and i32 %653, 8192
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %673, label %658

; <label>:658                                     ; preds = %644
  %659 = extractvalue %dx.types.ResRet.f32 %650, 2
  %660 = select i1 %655, float %659, float %651
  %661 = extractvalue %dx.types.ResRet.f32 %650, 0
  %662 = select i1 %655, float %661, float %651
  %663 = add i32 %34, 48
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %663, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = lshr i32 %665, 16
  %667 = and i32 %666, 255
  %668 = uitofp i32 %667 to float
  %669 = fmul fast float %668, 0x3F80101020000000
  %670 = fmul fast float %669, %662
  %671 = fmul fast float %669, %651
  %672 = fmul fast float %669, %660
  br label %673

; <label>:673                                     ; preds = %658, %644, %636
  %674 = phi float [ 0.000000e+00, %636 ], [ %670, %658 ], [ 0.000000e+00, %644 ]
  %675 = phi float [ 0.000000e+00, %636 ], [ %671, %658 ], [ 0.000000e+00, %644 ]
  %676 = phi float [ 0.000000e+00, %636 ], [ %672, %658 ], [ 0.000000e+00, %644 ]
  %677 = add i32 %34, 48
  %678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %677, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.i32 %678, 0
  %680 = and i32 %679, 255
  %681 = uitofp i32 %680 to float
  %682 = lshr i32 %679, 8
  %683 = and i32 %682, 255
  %684 = uitofp i32 %683 to float
  %685 = call float @dx.op.dot3.f32(i32 55, float %509, float %510, float %511, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %686 = fmul fast float %684, %685
  %687 = fadd fast float %686, %681
  %688 = fmul fast float %687, 0x3F70101020000000
  %689 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  br label %690

; <label>:690                                     ; preds = %673, %140
  %691 = phi float [ 0.000000e+00, %140 ], [ %590, %673 ]
  %692 = phi float [ 0.000000e+00, %140 ], [ %591, %673 ]
  %693 = phi float [ 0.000000e+00, %140 ], [ %509, %673 ]
  %694 = phi float [ 0.000000e+00, %140 ], [ %510, %673 ]
  %695 = phi float [ 0.000000e+00, %140 ], [ %511, %673 ]
  %696 = phi float [ 0.000000e+00, %140 ], [ %637, %673 ]
  %697 = phi float [ 0.000000e+00, %140 ], [ %638, %673 ]
  %698 = phi float [ 0.000000e+00, %140 ], [ %639, %673 ]
  %699 = phi float [ 0.000000e+00, %140 ], [ %674, %673 ]
  %700 = phi float [ 0.000000e+00, %140 ], [ %675, %673 ]
  %701 = phi float [ 0.000000e+00, %140 ], [ %676, %673 ]
  %702 = phi float [ 0.000000e+00, %140 ], [ %495, %673 ]
  %703 = phi float [ 0.000000e+00, %140 ], [ 1.000000e+00, %673 ]
  %704 = phi float [ 0.000000e+00, %140 ], [ %589, %673 ]
  %705 = phi float [ 0.000000e+00, %140 ], [ %592, %673 ]
  %706 = phi float [ 0.000000e+00, %140 ], [ %689, %673 ]
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 0
  %709 = call float @dx.op.dot2.f32(i32 54, float %691, float %692, float %691, float %692)  ; Dot2(ax,ay,bx,by)
  %710 = fmul fast float %709, 0x3FE3333340000000
  %711 = fsub fast float 1.000000e+00, %710
  %712 = call float @dx.op.dot3.f32(i32 55, float %691, float %692, float %711, float %691, float %692, float %711)  ; Dot3(ax,ay,az,bx,by,bz)
  %713 = call float @dx.op.unary.f32(i32 25, float %712)  ; Rsqrt(value)
  %714 = fmul fast float %713, %691
  %715 = fmul fast float %713, %692
  %716 = fmul fast float %711, %713
  %717 = fmul fast float %716, %39
  %718 = fmul fast float %716, %40
  %719 = fmul fast float %716, %41
  %720 = fmul fast float %714, %35
  %721 = fmul fast float %714, %36
  %722 = fmul fast float %714, %37
  %723 = fadd fast float %717, %720
  %724 = fadd fast float %718, %721
  %725 = fadd fast float %719, %722
  %726 = fmul fast float %62, %715
  %727 = fmul fast float %63, %715
  %728 = fmul fast float %64, %715
  %729 = fadd fast float %723, %726
  %730 = fadd fast float %724, %727
  %731 = fadd fast float %725, %728
  %732 = call float @dx.op.dot3.f32(i32 55, float %729, float %730, float %731, float %729, float %730, float %731)  ; Dot3(ax,ay,az,bx,by,bz)
  %733 = call float @dx.op.unary.f32(i32 25, float %732)  ; Rsqrt(value)
  %734 = fmul fast float %729, %733
  %735 = fmul fast float %730, %733
  %736 = fmul fast float %731, %733
  %737 = call float @dx.op.unary.f32(i32 83, float %98)  ; DerivCoarseX(value)
  %738 = call float @dx.op.unary.f32(i32 83, float %99)  ; DerivCoarseX(value)
  %739 = call float @dx.op.unary.f32(i32 83, float %100)  ; DerivCoarseX(value)
  %740 = call float @dx.op.unary.f32(i32 84, float %98)  ; DerivCoarseY(value)
  %741 = call float @dx.op.unary.f32(i32 84, float %99)  ; DerivCoarseY(value)
  %742 = call float @dx.op.unary.f32(i32 84, float %100)  ; DerivCoarseY(value)
  %743 = fadd fast float %737, %98
  %744 = fadd fast float %738, %99
  %745 = fadd fast float %739, %100
  %746 = fadd fast float %740, %98
  %747 = fadd fast float %741, %99
  %748 = fadd fast float %742, %100
  %749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.f32 %749, 0
  %751 = extractvalue %dx.types.CBufRet.f32 %749, 1
  %752 = extractvalue %dx.types.CBufRet.f32 %749, 2
  %753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %754 = extractvalue %dx.types.CBufRet.f32 %753, 2
  %755 = extractvalue %dx.types.CBufRet.f32 %753, 3
  %756 = fmul fast float %750, %51
  %757 = fmul fast float %756, %754
  %758 = fmul fast float %751, %52
  %759 = fmul fast float %758, %755
  %760 = fptoui float %757 to i32
  %761 = fptoui float %759 to i32
  %762 = fadd fast float %750, -1.000000e+00
  %763 = fadd fast float %751, -1.000000e+00
  %764 = fptoui float %762 to i32
  %765 = fptoui float %763 to i32
  %766 = call i32 @dx.op.binary.i32(i32 40, i32 %760, i32 %764)  ; UMin(a,b)
  %767 = call i32 @dx.op.binary.i32(i32 40, i32 %761, i32 %765)  ; UMin(a,b)
  %768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.f32 %768, 2
  %770 = extractvalue %dx.types.CBufRet.f32 %768, 3
  %771 = fmul fast float %769, %46
  %772 = fsub fast float %771, %770
  %773 = fadd fast float %752, -1.000000e+00
  %774 = call float @dx.op.binary.f32(i32 36, float %772, float %773)  ; FMin(a,b)
  %775 = fptoui float %774 to i32
  %776 = fptoui float %750 to i32
  %777 = fptoui float %751 to i32
  %778 = mul i32 %775, %777
  %779 = add i32 %778, %767
  %780 = mul i32 %779, %776
  %781 = add i32 %780, %766
  %782 = shl i32 %781, 2
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = and i32 %784, 1023
  %786 = lshr i32 %784, 10
  %787 = icmp eq i32 %785, 0
  br i1 %787, label %1264, label %788

; <label>:788                                     ; preds = %690
  %789 = and i32 %784, 1023
  br label %790

; <label>:790                                     ; preds = %919, %788
  %791 = phi float [ %920, %919 ], [ 0.000000e+00, %788 ]
  %792 = phi float [ %921, %919 ], [ %708, %788 ]
  %793 = phi float [ %922, %919 ], [ %706, %788 ]
  %794 = phi float [ %923, %919 ], [ 0.000000e+00, %788 ]
  %795 = phi float [ %924, %919 ], [ 0.000000e+00, %788 ]
  %796 = phi float [ %925, %919 ], [ %699, %788 ]
  %797 = phi float [ %926, %919 ], [ %700, %788 ]
  %798 = phi float [ %927, %919 ], [ %701, %788 ]
  %799 = phi float [ %928, %919 ], [ %696, %788 ]
  %800 = phi float [ %929, %919 ], [ %697, %788 ]
  %801 = phi float [ %930, %919 ], [ %698, %788 ]
  %802 = phi float [ %931, %919 ], [ %734, %788 ]
  %803 = phi float [ %932, %919 ], [ %735, %788 ]
  %804 = phi float [ %933, %919 ], [ %736, %788 ]
  %805 = phi float [ %934, %919 ], [ %705, %788 ]
  %806 = phi float [ %935, %919 ], [ %704, %788 ]
  %807 = phi float [ %936, %919 ], [ 0.000000e+00, %788 ]
  %808 = phi float [ %937, %919 ], [ %702, %788 ]
  %809 = phi float [ %938, %919 ], [ %693, %788 ]
  %810 = phi float [ %939, %919 ], [ %694, %788 ]
  %811 = phi float [ %940, %919 ], [ %695, %788 ]
  %812 = phi i32 [ %869, %919 ], [ 0, %788 ]
  %813 = add nuw nsw i32 %812, %786
  %814 = shl i32 %813, 2
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = shl i32 %816, 8
  %818 = or i32 %817, 48
  %819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.f32 %819, 0
  %821 = extractvalue %dx.types.ResRet.f32 %819, 1
  %822 = extractvalue %dx.types.ResRet.f32 %819, 2
  %823 = extractvalue %dx.types.ResRet.f32 %819, 3
  %824 = or i32 %817, 64
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %824, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = extractvalue %dx.types.ResRet.i32 %825, 1
  %828 = or i32 %817, 80
  %829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 2
  %831 = extractvalue %dx.types.ResRet.f32 %829, 3
  %832 = or i32 %817, 96
  %833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.f32 %833, 0
  %835 = extractvalue %dx.types.ResRet.f32 %833, 1
  %836 = extractvalue %dx.types.ResRet.f32 %833, 2
  %837 = extractvalue %dx.types.ResRet.f32 %833, 3
  %838 = or i32 %817, 112
  %839 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %838, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.f32 %839, 2
  %841 = or i32 %817, 128
  %842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.f32 %842, 0
  %844 = extractvalue %dx.types.ResRet.f32 %842, 1
  %845 = extractvalue %dx.types.ResRet.f32 %842, 2
  %846 = extractvalue %dx.types.ResRet.f32 %842, 3
  %847 = or i32 %817, 144
  %848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %847, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.f32 %848, 0
  %850 = extractvalue %dx.types.ResRet.f32 %848, 1
  %851 = extractvalue %dx.types.ResRet.f32 %848, 2
  %852 = extractvalue %dx.types.ResRet.f32 %848, 3
  %853 = or i32 %817, 160
  %854 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = extractvalue %dx.types.ResRet.f32 %854, 1
  %857 = extractvalue %dx.types.ResRet.f32 %854, 2
  %858 = extractvalue %dx.types.ResRet.f32 %854, 3
  %859 = or i32 %817, 192
  %860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %859, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = or i32 %817, 208
  %863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %862, i32 undef)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.f32 %863, 0
  %865 = or i32 %817, 248
  %866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.f32 %866, 0
  %868 = extractvalue %dx.types.ResRet.f32 %866, 1
  %869 = add nuw nsw i32 %812, 1
  %870 = bitcast float %823 to i32
  %871 = and i32 %870, 2560
  %872 = icmp eq i32 %871, 0
  %873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.f32 %873, 0
  %875 = extractvalue %dx.types.ResRet.f32 %873, 1
  %876 = extractvalue %dx.types.ResRet.f32 %873, 2
  %877 = extractvalue %dx.types.ResRet.f32 %873, 3
  %878 = call float @dx.op.dot4.f32(i32 56, float %874, float %875, float %876, float %877, float %98, float %99, float %100, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %879 = or i32 %817, 16
  %880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %879, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.f32 %880, 0
  %882 = extractvalue %dx.types.ResRet.f32 %880, 1
  %883 = extractvalue %dx.types.ResRet.f32 %880, 2
  %884 = extractvalue %dx.types.ResRet.f32 %880, 3
  %885 = call float @dx.op.dot4.f32(i32 56, float %881, float %882, float %883, float %884, float %98, float %99, float %100, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %886 = or i32 %817, 32
  %887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.f32 %887, 0
  %889 = extractvalue %dx.types.ResRet.f32 %887, 1
  %890 = extractvalue %dx.types.ResRet.f32 %887, 2
  %891 = extractvalue %dx.types.ResRet.f32 %887, 3
  %892 = call float @dx.op.dot4.f32(i32 56, float %888, float %889, float %890, float %891, float %98, float %99, float %100, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %893 = call float @dx.op.unary.f32(i32 27, float %878)  ; Round_ni(value)
  %894 = call float @dx.op.unary.f32(i32 6, float %893)  ; FAbs(value)
  %895 = call float @dx.op.unary.f32(i32 27, float %885)  ; Round_ni(value)
  %896 = call float @dx.op.unary.f32(i32 6, float %895)  ; FAbs(value)
  %897 = call float @dx.op.unary.f32(i32 6, float %892)  ; FAbs(value)
  %898 = call float @dx.op.unary.f32(i32 27, float %897)  ; Round_ni(value)
  %899 = fadd fast float %896, %894
  %900 = fadd fast float %899, %898
  %901 = fcmp fast oeq float %900, 0.000000e+00
  %902 = call float @dx.op.dot4.f32(i32 56, float %874, float %875, float %876, float %877, float %743, float %744, float %745, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %903 = call float @dx.op.dot4.f32(i32 56, float %881, float %882, float %883, float %884, float %743, float %744, float %745, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %904 = call float @dx.op.dot4.f32(i32 56, float %874, float %875, float %876, float %877, float %746, float %747, float %748, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %905 = call float @dx.op.dot4.f32(i32 56, float %881, float %882, float %883, float %884, float %746, float %747, float %748, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %906 = fsub fast float %902, %878
  %907 = fsub fast float %904, %878
  %908 = fsub fast float %903, %885
  %909 = fsub fast float %905, %885
  %910 = call float @dx.op.dot3.f32(i32 55, float %820, float %821, float %822, float %39, float %40, float %41)  ; Dot3(ax,ay,az,bx,by,bz)
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 2
  %913 = fadd fast float %912, %910
  %914 = call float @dx.op.unary.f32(i32 7, float %913)  ; Saturate(value)
  %915 = extractvalue %dx.types.CBufRet.f32 %911, 0
  %916 = fcmp fast ogt float %914, %915
  %917 = and i1 %901, %916
  %918 = and i1 %872, %917
  br i1 %918, label %942, label %919

; <label>:919                                     ; preds = %1250, %1023, %942, %790
  %920 = phi float [ %791, %942 ], [ %1026, %1023 ], [ %1026, %1250 ], [ %791, %790 ]
  %921 = phi float [ %792, %942 ], [ %792, %1023 ], [ %1226, %1250 ], [ %792, %790 ]
  %922 = phi float [ %793, %942 ], [ %793, %1023 ], [ %1224, %1250 ], [ %793, %790 ]
  %923 = phi float [ %794, %942 ], [ %794, %1023 ], [ %1150, %1250 ], [ %794, %790 ]
  %924 = phi float [ %795, %942 ], [ %795, %1023 ], [ %1148, %1250 ], [ %795, %790 ]
  %925 = phi float [ %796, %942 ], [ %796, %1023 ], [ %1194, %1250 ], [ %796, %790 ]
  %926 = phi float [ %797, %942 ], [ %797, %1023 ], [ %1195, %1250 ], [ %797, %790 ]
  %927 = phi float [ %798, %942 ], [ %798, %1023 ], [ %1196, %1250 ], [ %798, %790 ]
  %928 = phi float [ %799, %942 ], [ %799, %1023 ], [ %1260, %1250 ], [ %799, %790 ]
  %929 = phi float [ %800, %942 ], [ %800, %1023 ], [ %1261, %1250 ], [ %800, %790 ]
  %930 = phi float [ %801, %942 ], [ %801, %1023 ], [ %1262, %1250 ], [ %801, %790 ]
  %931 = phi float [ %802, %942 ], [ %802, %1023 ], [ %1129, %1250 ], [ %802, %790 ]
  %932 = phi float [ %803, %942 ], [ %803, %1023 ], [ %1130, %1250 ], [ %803, %790 ]
  %933 = phi float [ %804, %942 ], [ %804, %1023 ], [ %1131, %1250 ], [ %804, %790 ]
  %934 = phi float [ %805, %942 ], [ %805, %1023 ], [ %1204, %1250 ], [ %805, %790 ]
  %935 = phi float [ %806, %942 ], [ %806, %1023 ], [ %1201, %1250 ], [ %806, %790 ]
  %936 = phi float [ %807, %942 ], [ %807, %1023 ], [ %1198, %1250 ], [ %807, %790 ]
  %937 = phi float [ %808, %942 ], [ %808, %1023 ], [ %1146, %1250 ], [ %808, %790 ]
  %938 = phi float [ %809, %942 ], [ %809, %1023 ], [ %1141, %1250 ], [ %809, %790 ]
  %939 = phi float [ %810, %942 ], [ %810, %1023 ], [ %1142, %1250 ], [ %810, %790 ]
  %940 = phi float [ %811, %942 ], [ %811, %1023 ], [ %1143, %1250 ], [ %811, %790 ]
  %941 = icmp eq i32 %869, %789
  br i1 %941, label %1263, label %790

; <label>:942                                     ; preds = %790
  %943 = extractvalue %dx.types.ResRet.f32 %839, 3
  %944 = extractvalue %dx.types.ResRet.f32 %839, 1
  %945 = extractvalue %dx.types.ResRet.f32 %839, 0
  %946 = extractvalue %dx.types.ResRet.f32 %829, 1
  %947 = extractvalue %dx.types.ResRet.f32 %829, 0
  %948 = extractvalue %dx.types.ResRet.i32 %825, 3
  %949 = extractvalue %dx.types.ResRet.i32 %825, 2
  %950 = add i32 %948, 0
  %951 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %950, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %953 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %951, %dx.types.Handle %952, float %878, float %885, float undef, float undef, i32 0, i32 0, i32 undef, float %906, float %908, float undef, float %907, float %909, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %954 = extractvalue %dx.types.ResRet.f32 %953, 0
  %955 = fmul fast float %954, %947
  %956 = fadd fast float %955, %946
  %957 = call float @dx.op.unary.f32(i32 7, float %956)  ; Saturate(value)
  %958 = fmul fast float %878, %834
  %959 = call float @dx.op.tertiary.f32(i32 46, float %835, float %885, float %958)  ; FMad(a,b,c)
  %960 = fadd fast float %959, %945
  %961 = fmul fast float %878, %836
  %962 = call float @dx.op.tertiary.f32(i32 46, float %837, float %885, float %961)  ; FMad(a,b,c)
  %963 = fadd fast float %962, %944
  %964 = fmul fast float %906, %834
  %965 = call float @dx.op.tertiary.f32(i32 46, float %835, float %908, float %964)  ; FMad(a,b,c)
  %966 = fmul fast float %906, %836
  %967 = call float @dx.op.tertiary.f32(i32 46, float %837, float %908, float %966)  ; FMad(a,b,c)
  %968 = fmul fast float %907, %834
  %969 = call float @dx.op.tertiary.f32(i32 46, float %835, float %909, float %968)  ; FMad(a,b,c)
  %970 = fmul fast float %907, %836
  %971 = call float @dx.op.tertiary.f32(i32 46, float %837, float %909, float %970)  ; FMad(a,b,c)
  %972 = add i32 %949, 0
  %973 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %972, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %974 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %973, %dx.types.Handle %952, float %960, float %963, float undef, float undef, i32 0, i32 0, i32 undef, float %965, float %967, float undef, float %969, float %971, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %975 = extractvalue %dx.types.ResRet.f32 %974, 0
  %976 = and i32 %870, 1024
  %977 = icmp ne i32 %976, 0
  %978 = fcmp fast ogt float %975, 0x3FE0101020000000
  %979 = uitofp i1 %978 to float
  %980 = select i1 %977, float %979, float %975
  %981 = and i32 %870, 8192
  %982 = icmp ne i32 %981, 0
  %983 = select i1 %982, float %943, float 1.000000e+00
  %984 = fmul fast float %878, 2.000000e+00
  %985 = fadd fast float %984, -1.000000e+00
  %986 = call float @dx.op.unary.f32(i32 6, float %985)  ; FAbs(value)
  %987 = fmul fast float %986, %867
  %988 = fsub fast float %987, %867
  %989 = call float @dx.op.unary.f32(i32 7, float %988)  ; Saturate(value)
  %990 = fmul fast float %885, 2.000000e+00
  %991 = fadd fast float %990, -1.000000e+00
  %992 = call float @dx.op.unary.f32(i32 6, float %991)  ; FAbs(value)
  %993 = fmul fast float %992, %868
  %994 = fsub fast float %993, %868
  %995 = call float @dx.op.unary.f32(i32 7, float %994)  ; Saturate(value)
  %996 = fmul fast float %897, %830
  %997 = fsub fast float %996, %830
  %998 = call float @dx.op.unary.f32(i32 7, float %997)  ; Saturate(value)
  %999 = fmul fast float %957, %983
  %1000 = fmul fast float %999, %954
  %1001 = fmul fast float %1000, %989
  %1002 = fmul fast float %1001, %980
  %1003 = fmul fast float %1002, %995
  %1004 = fmul fast float %1003, %998
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 1
  %1007 = extractvalue %dx.types.CBufRet.f32 %1005, 0
  %1008 = fsub fast float %914, %1007
  %1009 = fmul fast float %1008, %1006
  %1010 = call float @dx.op.unary.f32(i32 7, float %1009)  ; Saturate(value)
  %1011 = fmul fast float %1004, %831
  %1012 = fadd fast float %1004, %831
  %1013 = fmul fast float %1012, %840
  %1014 = fsub fast float %1013, %840
  %1015 = call float @dx.op.unary.f32(i32 7, float %1014)  ; Saturate(value)
  %1016 = and i32 %870, 128
  %1017 = icmp ne i32 %1016, 0
  %1018 = select i1 %1017, float %1015, float %1011
  %1019 = fmul fast float %1018, %1010
  %1020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.f32 %1020, 0
  %1022 = fcmp fast ugt float %1019, %1021
  br i1 %1022, label %1023, label %919

; <label>:1023                                    ; preds = %942
  %1024 = select i1 %982, float %1019, float 0.000000e+00
  %1025 = fadd fast float %1024, %791
  %1026 = call float @dx.op.unary.f32(i32 7, float %1025)  ; Saturate(value)
  br i1 %982, label %919, label %1027

; <label>:1027                                    ; preds = %1023
  %1028 = and i32 %870, 4
  %1029 = and i32 %870, 8
  %1030 = add i32 %826, 0
  %1031 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1030, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1033 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1031, %dx.types.Handle %1032, float %960, float %963, float undef, float undef, i32 0, i32 0, i32 undef, float %965, float %967, float undef, float %969, float %971, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.ResRet.f32 %1033, 1
  %1036 = extractvalue %dx.types.ResRet.f32 %1033, 2
  %1037 = extractvalue %dx.types.ResRet.f32 %1033, 3
  %1038 = bitcast float %852 to i32
  %1039 = and i32 %1038, 255
  %1040 = uitofp i32 %1039 to float
  %1041 = lshr i32 %1038, 8
  %1042 = and i32 %1041, 255
  %1043 = uitofp i32 %1042 to float
  %1044 = fmul fast float %1037, %1040
  %1045 = fadd fast float %1044, %1043
  %1046 = fmul fast float %1045, 0x3F70101000000000
  %1047 = add i32 %827, 0
  %1048 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1047, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1049 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1048, %dx.types.Handle %1032, float %960, float %963, float undef, float undef, i32 0, i32 0, i32 undef, float %965, float %967, float undef, float %969, float %971, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.ResRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.ResRet.f32 %1049, 2
  %1053 = extractvalue %dx.types.ResRet.f32 %1049, 3
  %1054 = bitcast float %846 to i32
  %1055 = and i32 %1054, 255
  %1056 = uitofp i32 %1055 to float
  %1057 = lshr i32 %1054, 8
  %1058 = and i32 %1057, 255
  %1059 = uitofp i32 %1058 to float
  %1060 = lshr i32 %1054, 16
  %1061 = and i32 %1060, 255
  %1062 = uitofp i32 %1061 to float
  %1063 = fmul fast float %1062, 0x3F70101000000000
  %1064 = fmul fast float %1050, %1056
  %1065 = fadd fast float %1064, %1059
  %1066 = fmul fast float %1065, 0x3F70101000000000
  %1067 = fadd fast float %1051, -5.000000e-01
  %1068 = fadd fast float %1053, -5.000000e-01
  %1069 = fmul fast float %1067, %1063
  %1070 = fmul fast float %1068, %1063
  %1071 = fadd fast float %1069, 5.000000e-01
  %1072 = fadd fast float %1070, 5.000000e-01
  %1073 = fmul fast float %1034, %855
  %1074 = fmul fast float %1035, %856
  %1075 = fmul fast float %1036, %857
  %1076 = fmul fast float %1071, 2.000000e+00
  %1077 = fadd fast float %1076, -1.000000e+00
  %1078 = fmul fast float %1072, 2.000000e+00
  %1079 = fadd fast float %1078, -1.000000e+00
  %1080 = fadd fast float %1077, %1079
  %1081 = fmul fast float %1080, 5.000000e-01
  %1082 = fsub fast float %1077, %1079
  %1083 = fmul fast float %1082, 5.000000e-01
  %1084 = call float @dx.op.unary.f32(i32 6, float %1081)  ; FAbs(value)
  %1085 = fsub fast float 1.000000e+00, %1084
  %1086 = call float @dx.op.unary.f32(i32 6, float %1083)  ; FAbs(value)
  %1087 = fsub fast float %1085, %1086
  %1088 = call float @dx.op.dot3.f32(i32 55, float %1081, float %1083, float %1087, float %1081, float %1083, float %1087)  ; Dot3(ax,ay,az,bx,by,bz)
  %1089 = call float @dx.op.unary.f32(i32 25, float %1088)  ; Rsqrt(value)
  %1090 = fmul fast float %1081, %1089
  %1091 = fmul fast float %1083, %1089
  %1092 = fmul fast float %1089, %1087
  %1093 = fmul fast float %1092, %820
  %1094 = fmul fast float %1092, %821
  %1095 = fmul fast float %1092, %822
  %1096 = fmul fast float %1090, %843
  %1097 = fmul fast float %1090, %844
  %1098 = fmul fast float %1090, %845
  %1099 = fadd fast float %1096, %1093
  %1100 = fadd fast float %1097, %1094
  %1101 = fadd fast float %1098, %1095
  %1102 = fmul fast float %1091, %849
  %1103 = fmul fast float %1091, %850
  %1104 = fmul fast float %1091, %851
  %1105 = fadd fast float %1099, %1102
  %1106 = fadd fast float %1100, %1103
  %1107 = fadd fast float %1101, %1104
  %1108 = call float @dx.op.dot3.f32(i32 55, float %1105, float %1106, float %1107, float %1105, float %1106, float %1107)  ; Dot3(ax,ay,az,bx,by,bz)
  %1109 = call float @dx.op.unary.f32(i32 25, float %1108)  ; Rsqrt(value)
  %1110 = fmul fast float %1105, %1109
  %1111 = fmul fast float %1106, %1109
  %1112 = fmul fast float %1107, %1109
  %1113 = icmp ne i32 %1029, 0
  %1114 = select i1 %1113, float 1.000000e+00, float 0.000000e+00
  %1115 = fmul fast float %1019, %1114
  %1116 = and i32 %870, 1
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1118, label %1122

; <label>:1118                                    ; preds = %1027
  %1119 = fsub fast float %1110, %802
  %1120 = fsub fast float %1111, %803
  %1121 = fsub fast float %1112, %804
  br label %1122

; <label>:1122                                    ; preds = %1118, %1027
  %1123 = phi float [ %1119, %1118 ], [ %1110, %1027 ]
  %1124 = phi float [ %1120, %1118 ], [ %1111, %1027 ]
  %1125 = phi float [ %1121, %1118 ], [ %1112, %1027 ]
  %1126 = fmul float %1125, %1115
  %1127 = fmul float %1124, %1115
  %1128 = fmul float %1123, %1115
  %1129 = fadd fast float %1128, %802
  %1130 = fadd fast float %1127, %803
  %1131 = fadd fast float %1126, %804
  %1132 = icmp ne i32 %1028, 0
  %1133 = select i1 %1132, float 1.000000e+00, float 0.000000e+00
  %1134 = fmul fast float %1019, %1133
  %1135 = fsub fast float %1073, %809
  %1136 = fsub fast float %1074, %810
  %1137 = fsub fast float %1075, %811
  %1138 = fmul fast float %1135, %1134
  %1139 = fmul fast float %1136, %1134
  %1140 = fmul fast float %1137, %1134
  %1141 = fadd fast float %1138, %809
  %1142 = fadd fast float %1139, %810
  %1143 = fadd fast float %1140, %811
  %1144 = fsub fast float %1046, %808
  %1145 = fmul fast float %1144, %1134
  %1146 = fadd fast float %1145, %808
  %1147 = fmul fast float %1134, %795
  %1148 = fsub fast float %795, %1147
  %1149 = fmul fast float %1134, %794
  %1150 = fsub fast float %794, %1149
  %1151 = bitcast float %864 to i32
  %1152 = lshr i32 %1151, 16
  %1153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1152)  ; LegacyF16ToF32(value)
  %1154 = add i32 %34, 108
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = and i32 %1156, 1
  %1158 = icmp eq i32 %1157, 0
  br i1 %1158, label %1159, label %1184

; <label>:1159                                    ; preds = %1122
  %1160 = fadd fast float %1046, 0xBFB99999A0000000
  %1161 = call float @dx.op.unary.f32(i32 7, float %1160)  ; Saturate(value)
  %1162 = fmul fast float %1161, 0x3FF1C71C80000000
  %1163 = fsub fast float 1.000000e+00, %1162
  %1164 = call float @dx.op.unary.f32(i32 7, float %1163)  ; Saturate(value)
  %1165 = fmul fast float %1164, %1073
  %1166 = fmul fast float %1164, %1074
  %1167 = fmul fast float %1164, %1075
  %1168 = call float @dx.op.unary.f32(i32 7, float %1165)  ; Saturate(value)
  %1169 = call float @dx.op.unary.f32(i32 7, float %1166)  ; Saturate(value)
  %1170 = call float @dx.op.unary.f32(i32 7, float %1167)  ; Saturate(value)
  %1171 = call float @dx.op.binary.f32(i32 35, float %1169, float %1170)  ; FMax(a,b)
  %1172 = call float @dx.op.binary.f32(i32 35, float %1168, float %1171)  ; FMax(a,b)
  %1173 = fcmp fast ogt float %1172, 0.000000e+00
  %1174 = bitcast float %1172 to i32
  %1175 = sub nsw i32 2129859010, %1174
  %1176 = bitcast i32 %1175 to float
  %1177 = select i1 %1173, float %1176, float 0.000000e+00
  %1178 = fmul fast float %1168, %1153
  %1179 = fmul fast float %1169, %1153
  %1180 = fmul fast float %1170, %1153
  %1181 = fmul fast float %1178, %1177
  %1182 = fmul fast float %1179, %1177
  %1183 = fmul fast float %1180, %1177
  br label %1184

; <label>:1184                                    ; preds = %1159, %1122
  %1185 = phi float [ %1153, %1122 ], [ %1181, %1159 ]
  %1186 = phi float [ %1153, %1122 ], [ %1182, %1159 ]
  %1187 = phi float [ %1153, %1122 ], [ %1183, %1159 ]
  %1188 = fsub fast float %1185, %796
  %1189 = fsub fast float %1186, %797
  %1190 = fsub fast float %1187, %798
  %1191 = fmul fast float %1188, %1134
  %1192 = fmul fast float %1189, %1134
  %1193 = fmul fast float %1190, %1134
  %1194 = fadd fast float %1191, %796
  %1195 = fadd fast float %1192, %797
  %1196 = fadd fast float %1193, %798
  %1197 = fadd fast float %1019, %807
  %1198 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1199 = fsub fast float %1066, %806
  %1200 = fmul fast float %1199, %1115
  %1201 = fadd fast float %1200, %806
  %1202 = fsub fast float %1052, %805
  %1203 = fmul fast float %1202, %1115
  %1204 = fadd fast float %1203, %805
  %1205 = call float @dx.op.dot3.f32(i32 55, float %1073, float %1074, float %1075, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.f32 %1206, 0
  %1208 = extractvalue %dx.types.CBufRet.f32 %1206, 1
  %1209 = fmul fast float %1208, %1205
  %1210 = fadd fast float %1209, %1207
  %1211 = call float @dx.op.unary.f32(i32 7, float %1210)  ; Saturate(value)
  %1212 = bitcast float %858 to i32
  %1213 = and i32 %1212, 65535
  %1214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1213)  ; LegacyF16ToF32(value)
  %1215 = lshr i32 %1212, 16
  %1216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1215)  ; LegacyF16ToF32(value)
  %1217 = fcmp fast oge float %1214, 0.000000e+00
  %1218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.f32 %1218, 0
  %1220 = select i1 %1217, float %1214, float %1219
  %1221 = fadd fast float %1220, %1216
  %1222 = fsub fast float %1211, %793
  %1223 = fmul fast float %1222, %1019
  %1224 = fadd fast float %1223, %793
  %1225 = fmul fast float %1221, %1019
  %1226 = call float @dx.op.binary.f32(i32 35, float %792, float %1225)  ; FMax(a,b)
  %1227 = and i32 %870, 16
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1250, label %1229

; <label>:1229                                    ; preds = %1184
  %1230 = add i32 %861, 0
  %1231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1230, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1232 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1231, %dx.types.Handle %1032, float %960, float %963, float undef, float undef, i32 0, i32 0, i32 undef, float %965, float %967, float undef, float %969, float %971, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  %1234 = extractvalue %dx.types.ResRet.f32 %1232, 1
  %1235 = extractvalue %dx.types.ResRet.f32 %1232, 2
  %1236 = and i32 %1151, 65535
  %1237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1236)  ; LegacyF16ToF32(value)
  %1238 = fmul fast float %1233, %855
  %1239 = fmul fast float %1234, %856
  %1240 = fmul fast float %1235, %857
  %1241 = and i32 %870, 16384
  %1242 = icmp ne i32 %1241, 0
  %1243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1244 = extractvalue %dx.types.CBufRet.f32 %1243, 0
  %1245 = select i1 %1242, float %1244, float 1.000000e+00
  %1246 = fmul fast float %1245, %1237
  %1247 = fmul fast float %1238, %1246
  %1248 = fmul fast float %1239, %1246
  %1249 = fmul fast float %1240, %1246
  br label %1250

; <label>:1250                                    ; preds = %1229, %1184
  %1251 = phi float [ %1247, %1229 ], [ 0.000000e+00, %1184 ]
  %1252 = phi float [ %1248, %1229 ], [ 0.000000e+00, %1184 ]
  %1253 = phi float [ %1249, %1229 ], [ 0.000000e+00, %1184 ]
  %1254 = fsub fast float %1251, %799
  %1255 = fsub fast float %1252, %800
  %1256 = fsub fast float %1253, %801
  %1257 = fmul fast float %1254, %1019
  %1258 = fmul fast float %1255, %1019
  %1259 = fmul fast float %1256, %1019
  %1260 = fadd fast float %1257, %799
  %1261 = fadd fast float %1258, %800
  %1262 = fadd fast float %1259, %801
  br label %919

; <label>:1263                                    ; preds = %919
  br label %1264

; <label>:1264                                    ; preds = %1263, %690
  %1265 = phi float [ 0.000000e+00, %690 ], [ %920, %1263 ]
  %1266 = phi float [ %708, %690 ], [ %921, %1263 ]
  %1267 = phi float [ %706, %690 ], [ %922, %1263 ]
  %1268 = phi float [ 0.000000e+00, %690 ], [ %923, %1263 ]
  %1269 = phi float [ 0.000000e+00, %690 ], [ %924, %1263 ]
  %1270 = phi float [ %699, %690 ], [ %925, %1263 ]
  %1271 = phi float [ %700, %690 ], [ %926, %1263 ]
  %1272 = phi float [ %701, %690 ], [ %927, %1263 ]
  %1273 = phi float [ %696, %690 ], [ %928, %1263 ]
  %1274 = phi float [ %697, %690 ], [ %929, %1263 ]
  %1275 = phi float [ %698, %690 ], [ %930, %1263 ]
  %1276 = phi float [ %734, %690 ], [ %931, %1263 ]
  %1277 = phi float [ %735, %690 ], [ %932, %1263 ]
  %1278 = phi float [ %736, %690 ], [ %933, %1263 ]
  %1279 = phi float [ %705, %690 ], [ %934, %1263 ]
  %1280 = phi float [ %704, %690 ], [ %935, %1263 ]
  %1281 = phi float [ 0.000000e+00, %690 ], [ %936, %1263 ]
  %1282 = phi float [ %702, %690 ], [ %937, %1263 ]
  %1283 = phi float [ %693, %690 ], [ %938, %1263 ]
  %1284 = phi float [ %694, %690 ], [ %939, %1263 ]
  %1285 = phi float [ %695, %690 ], [ %940, %1263 ]
  %1286 = call float @dx.op.dot3.f32(i32 55, float %1276, float %1277, float %1278, float %1276, float %1277, float %1278)  ; Dot3(ax,ay,az,bx,by,bz)
  %1287 = call float @dx.op.unary.f32(i32 25, float %1286)  ; Rsqrt(value)
  %1288 = fmul fast float %1287, %1276
  %1289 = fmul fast float %1287, %1277
  %1290 = fmul fast float %1287, %1278
  %1291 = fadd fast float %1281, %703
  %1292 = call float @dx.op.unary.f32(i32 7, float %1291)  ; Saturate(value)
  %1293 = call float @dx.op.dot3.f32(i32 55, float %1288, float %1289, float %1290, float %1288, float %1289, float %1290)  ; Dot3(ax,ay,az,bx,by,bz)
  %1294 = call float @dx.op.unary.f32(i32 25, float %1293)  ; Rsqrt(value)
  %1295 = fmul fast float %1294, %1288
  %1296 = fmul fast float %1294, %1289
  %1297 = fmul fast float %1294, %1290
  %1298 = fadd fast float %1282, 0xBFB99999A0000000
  %1299 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1300 = fmul fast float %1299, 0x3FF1C71C80000000
  %1301 = call float @dx.op.binary.f32(i32 36, float %1282, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1302 = fsub fast float 1.000000e+00, %1300
  %1303 = call float @dx.op.unary.f32(i32 7, float %1302)  ; Saturate(value)
  %1304 = fmul fast float %1303, %1283
  %1305 = fmul fast float %1303, %1284
  %1306 = fmul fast float %1303, %1285
  %1307 = call float @dx.op.unary.f32(i32 7, float %1304)  ; Saturate(value)
  %1308 = call float @dx.op.unary.f32(i32 7, float %1305)  ; Saturate(value)
  %1309 = call float @dx.op.unary.f32(i32 7, float %1306)  ; Saturate(value)
  %1310 = fmul fast float %1300, %1283
  %1311 = fmul fast float %1300, %1284
  %1312 = fmul fast float %1300, %1285
  %1313 = fadd fast float %1310, %1301
  %1314 = fadd fast float %1311, %1301
  %1315 = fadd fast float %1312, %1301
  %1316 = call float @dx.op.unary.f32(i32 7, float %1313)  ; Saturate(value)
  %1317 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  %1318 = call float @dx.op.unary.f32(i32 7, float %1315)  ; Saturate(value)
  %1319 = call float @dx.op.unary.f32(i32 7, float %1280)  ; Saturate(value)
  %1320 = add i32 %34, 108
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = and i32 %1322, 1
  %1324 = icmp eq i32 %1323, 0
  br i1 %1324, label %1339, label %1325

; <label>:1325                                    ; preds = %1264
  %1326 = call float @dx.op.binary.f32(i32 35, float %1308, float %1309)  ; FMax(a,b)
  %1327 = call float @dx.op.binary.f32(i32 35, float %1307, float %1326)  ; FMax(a,b)
  %1328 = fcmp fast ogt float %1327, 0.000000e+00
  %1329 = bitcast float %1327 to i32
  %1330 = sub nsw i32 2129859010, %1329
  %1331 = bitcast i32 %1330 to float
  %1332 = select i1 %1328, float %1331, float 0.000000e+00
  %1333 = fmul fast float %1307, %1270
  %1334 = fmul fast float %1308, %1271
  %1335 = fmul fast float %1309, %1272
  %1336 = fmul fast float %1333, %1332
  %1337 = fmul fast float %1334, %1332
  %1338 = fmul fast float %1335, %1332
  br label %1339

; <label>:1339                                    ; preds = %1325, %1264
  %1340 = phi float [ %1336, %1325 ], [ %1270, %1264 ]
  %1341 = phi float [ %1337, %1325 ], [ %1271, %1264 ]
  %1342 = phi float [ %1338, %1325 ], [ %1272, %1264 ]
  %1343 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.i32 %1343, 3
  %1345 = and i32 %1344, 8
  %1346 = icmp ne i32 %1345, 0
  %1347 = call float @dx.op.binary.f32(i32 35, float %1307, float %1283)  ; FMax(a,b)
  %1348 = call float @dx.op.binary.f32(i32 35, float %1308, float %1283)  ; FMax(a,b)
  %1349 = call float @dx.op.binary.f32(i32 35, float %1309, float %1283)  ; FMax(a,b)
  %1350 = call float @dx.op.dot3.f32(i32 55, float %1307, float %1308, float %1309, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1351 = select i1 %141, float %1283, float %1307
  %1352 = select i1 %141, float %1350, float %1308
  %1353 = select i1 %141, float 1.000000e+00, float %1309
  %1354 = select i1 %1346, float %1347, float %1351
  %1355 = select i1 %1346, float %1348, float %1352
  %1356 = select i1 %1346, float %1349, float %1353
  %1357 = call float @dx.op.dot3.f32(i32 55, float %1340, float %1341, float %1342, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1358 = select i1 %141, float %1357, float %1340
  %1359 = select i1 %141, float %1357, float %1341
  %1360 = select i1 %141, float %1357, float %1342
  %1361 = fmul fast float %1358, %1292
  %1362 = fmul fast float %1359, %1292
  %1363 = fmul fast float %1360, %1292
  %1364 = and i32 %116, 3
  %1365 = icmp eq i32 %1364, 1
  br i1 %1365, label %1366, label %1442

; <label>:1366                                    ; preds = %1339
  %1367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1368 = extractvalue %dx.types.CBufRet.f32 %1367, 0
  %1369 = extractvalue %dx.types.CBufRet.f32 %1367, 1
  %1370 = fadd fast float %1368, %98
  %1371 = fadd fast float %1369, %99
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 0
  %1374 = extractvalue %dx.types.CBufRet.f32 %1372, 1
  %1375 = fsub fast float %1370, %1373
  %1376 = fsub fast float %1371, %1374
  %1377 = fmul fast float %1375, %1375
  %1378 = fmul fast float %1376, %1376
  %1379 = fadd fast float %1377, %1378
  %1380 = call float @dx.op.unary.f32(i32 24, float %1379)  ; Sqrt(value)
  %1381 = extractvalue %dx.types.CBufRet.f32 %1372, 2
  %1382 = fcmp fast olt float %1380, %1381
  br i1 %1382, label %1383, label %1436

; <label>:1383                                    ; preds = %1366
  %1384 = extractvalue %dx.types.CBufRet.f32 %1367, 2
  %1385 = fadd fast float %1384, %100
  %1386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1387 = extractvalue %dx.types.CBufRet.f32 %1386, 0
  %1388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1389 = extractvalue %dx.types.CBufRet.f32 %1388, 0
  %1390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1391 = extractvalue %dx.types.CBufRet.f32 %1390, 0
  %1392 = extractvalue %dx.types.CBufRet.f32 %1386, 1
  %1393 = extractvalue %dx.types.CBufRet.f32 %1388, 1
  %1394 = extractvalue %dx.types.CBufRet.f32 %1390, 1
  %1395 = extractvalue %dx.types.CBufRet.f32 %1386, 3
  %1396 = extractvalue %dx.types.CBufRet.f32 %1388, 3
  %1397 = extractvalue %dx.types.CBufRet.f32 %1390, 3
  %1398 = fadd fast float %1395, %1370
  %1399 = fadd fast float %1396, %1371
  %1400 = fadd fast float %1385, %1397
  %1401 = fmul fast float %1398, %1387
  %1402 = call float @dx.op.tertiary.f32(i32 46, float %1399, float %1389, float %1401)  ; FMad(a,b,c)
  %1403 = call float @dx.op.tertiary.f32(i32 46, float %1400, float %1391, float %1402)  ; FMad(a,b,c)
  %1404 = fmul fast float %1398, %1392
  %1405 = call float @dx.op.tertiary.f32(i32 46, float %1399, float %1393, float %1404)  ; FMad(a,b,c)
  %1406 = call float @dx.op.tertiary.f32(i32 46, float %1400, float %1394, float %1405)  ; FMad(a,b,c)
  %1407 = fsub fast float %1403, %1395
  %1408 = fsub fast float %1406, %1396
  %1409 = fsub fast float %1407, %1373
  %1410 = fadd fast float %1409, %1381
  %1411 = fsub fast float %1408, %1374
  %1412 = fadd fast float %1411, %1381
  %1413 = extractvalue %dx.types.CBufRet.f32 %1372, 3
  %1414 = fmul fast float %1410, %1413
  %1415 = fmul fast float %1412, %1413
  %1416 = call float @dx.op.unary.f32(i32 7, float %1414)  ; Saturate(value)
  %1417 = call float @dx.op.unary.f32(i32 7, float %1415)  ; Saturate(value)
  %1418 = fsub fast float 1.000000e+00, %1416
  %1419 = fsub fast float 1.000000e+00, %1417
  %1420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %21, float %1418, float %1419, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1421 = extractvalue %dx.types.ResRet.f32 %1420, 0
  %1422 = fcmp fast ugt float %1421, 0.000000e+00
  br i1 %1422, label %1423, label %1436

; <label>:1423                                    ; preds = %1383
  %1424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1425 = extractvalue %dx.types.CBufRet.f32 %1424, 2
  %1426 = fmul fast float %1425, %1421
  %1427 = extractvalue %dx.types.CBufRet.f32 %1424, 3
  %1428 = fadd fast float %1427, %1426
  %1429 = extractvalue %dx.types.CBufRet.f32 %1390, 2
  %1430 = fadd fast float %1428, %1397
  %1431 = fmul fast float %1403, %1391
  %1432 = call float @dx.op.tertiary.f32(i32 46, float %1406, float %1394, float %1431)  ; FMad(a,b,c)
  %1433 = call float @dx.op.tertiary.f32(i32 46, float %1430, float %1429, float %1432)  ; FMad(a,b,c)
  %1434 = fsub fast float %1433, %1397
  %1435 = fsub fast float %1434, %1384
  br label %1436

; <label>:1436                                    ; preds = %1423, %1383, %1366
  %1437 = phi i1 [ true, %1423 ], [ false, %1383 ], [ false, %1366 ]
  %1438 = phi float [ %1435, %1423 ], [ -1.310720e+05, %1383 ], [ -1.310720e+05, %1366 ]
  %1439 = fsub fast float %1438, %100
  %1440 = call float @dx.op.unary.f32(i32 7, float %1439)  ; Saturate(value)
  %1441 = select i1 %1437, float %1440, float 1.000000e+00
  br label %1442

; <label>:1442                                    ; preds = %1436, %1339
  %1443 = phi float [ %1441, %1436 ], [ 0.000000e+00, %1339 ]
  %1444 = icmp eq i32 %1364, 3
  %1445 = select i1 %1444, float 1.000000e+00, float %1443
  %1446 = call float @dx.op.binary.f32(i32 35, float %1265, float %1445)  ; FMax(a,b)
  %1447 = fcmp fast olt float %1445, 1.000000e+00
  br i1 %1447, label %1448, label %2572

; <label>:1448                                    ; preds = %1442
  %1449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1450 = extractvalue %dx.types.CBufRet.f32 %1449, 0
  %1451 = extractvalue %dx.types.CBufRet.f32 %1449, 1
  %1452 = extractvalue %dx.types.CBufRet.f32 %1449, 2
  %1453 = fadd fast float %1450, %98
  %1454 = fadd fast float %1451, %99
  %1455 = fadd fast float %1452, %100
  %1456 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.i32 %1456, 2
  %1458 = icmp ult i32 %1457, 4
  br i1 %1458, label %1459, label %1510

; <label>:1459                                    ; preds = %1448
  br label %1460

; <label>:1460                                    ; preds = %1505, %1459
  %1461 = phi i32 [ %1506, %1505 ], [ %1457, %1459 ]
  %1462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 342)  ; CBufferLoadLegacy(handle,regIndex)
  %1463 = extractvalue %dx.types.CBufRet.f32 %1462, 0
  %1464 = extractvalue %dx.types.CBufRet.f32 %1462, 1
  %1465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.f32 %1465, 0
  %1467 = fmul fast float %1466, 5.000000e-01
  %1468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 340)  ; CBufferLoadLegacy(handle,regIndex)
  %1469 = extractvalue %dx.types.CBufRet.f32 %1468, 0
  %1470 = extractvalue %dx.types.CBufRet.f32 %1468, 1
  %1471 = extractvalue %dx.types.CBufRet.f32 %1468, 2
  %1472 = extractvalue %dx.types.CBufRet.f32 %1468, 3
  %1473 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 0
  store float %1469, float* %1473, align 4
  %1474 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 1
  store float %1470, float* %1474, align 4
  %1475 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 2
  store float %1471, float* %1475, align 4
  %1476 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 3
  store float %1472, float* %1476, align 4
  %1477 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 %1461
  %1478 = load float, float* %1477, align 4, !tbaa !62
  %1479 = fmul fast float %1467, %1478
  %1480 = fsub fast float %1453, %1463
  %1481 = fadd fast float %1480, %1479
  %1482 = fsub fast float %1454, %1464
  %1483 = fadd fast float %1482, %1479
  %1484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 341)  ; CBufferLoadLegacy(handle,regIndex)
  %1485 = extractvalue %dx.types.CBufRet.f32 %1484, 0
  %1486 = extractvalue %dx.types.CBufRet.f32 %1484, 1
  %1487 = extractvalue %dx.types.CBufRet.f32 %1484, 2
  %1488 = extractvalue %dx.types.CBufRet.f32 %1484, 3
  %1489 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 0
  store float %1485, float* %1489, align 4
  %1490 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 1
  store float %1486, float* %1490, align 4
  %1491 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 2
  store float %1487, float* %1491, align 4
  %1492 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 3
  store float %1488, float* %1492, align 4
  %1493 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 %1461
  %1494 = load float, float* %1493, align 4, !tbaa !62
  %1495 = fmul fast float %1481, %1494
  %1496 = fmul fast float %1483, %1494
  %1497 = extractvalue %dx.types.CBufRet.f32 %1465, 1
  %1498 = fmul fast float %1495, %1497
  %1499 = fmul fast float %1496, %1497
  %1500 = call float @dx.op.unary.f32(i32 7, float %1498)  ; Saturate(value)
  %1501 = call float @dx.op.unary.f32(i32 7, float %1499)  ; Saturate(value)
  %1502 = fcmp fast oeq float %1500, %1498
  %1503 = fcmp fast oeq float %1501, %1499
  %1504 = and i1 %1502, %1503
  br i1 %1504, label %1508, label %1505

; <label>:1505                                    ; preds = %1460
  %1506 = add nuw nsw i32 %1461, 1
  %1507 = icmp ult i32 %1506, 4
  br i1 %1507, label %1460, label %1508

; <label>:1508                                    ; preds = %1505, %1460
  %1509 = phi i32 [ %1506, %1505 ], [ %1461, %1460 ]
  br label %1510

; <label>:1510                                    ; preds = %1508, %1448
  %1511 = phi float [ 0.000000e+00, %1448 ], [ %1498, %1508 ]
  %1512 = phi float [ 0.000000e+00, %1448 ], [ %1499, %1508 ]
  %1513 = phi i32 [ %1457, %1448 ], [ %1509, %1508 ]
  %1514 = extractvalue %dx.types.CBufRet.i32 %1456, 1
  %1515 = uitofp i32 %1513 to float
  %1516 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %21, float %1511, float %1512, float %1515, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1517 = extractvalue %dx.types.ResRet.f32 %1516, 0
  %1518 = extractvalue %dx.types.ResRet.f32 %1516, 1
  %1519 = extractvalue %dx.types.ResRet.f32 %1516, 2
  %1520 = extractvalue %dx.types.ResRet.f32 %1516, 3
  %1521 = call float @dx.op.binary.f32(i32 35, float %1518, float %1519)  ; FMax(a,b)
  %1522 = call float @dx.op.binary.f32(i32 35, float %1517, float %1521)  ; FMax(a,b)
  %1523 = call float @dx.op.binary.f32(i32 35, float %1522, float %1520)  ; FMax(a,b)
  %1524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %1525 = extractvalue %dx.types.CBufRet.f32 %1524, 0
  %1526 = fadd fast float %1525, %1523
  %1527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %1528 = extractvalue %dx.types.CBufRet.f32 %1527, 3
  %1529 = fadd fast float %1526, %1528
  %1530 = fcmp fast ogt float %1455, %1529
  %1531 = icmp uge i32 %1513, %1514
  %1532 = or i1 %1531, %1530
  %1533 = zext i1 %1532 to i32
  %1534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1535 = extractvalue %dx.types.CBufRet.i32 %1534, 0
  %1536 = lshr i32 %1535, 21
  %1537 = and i32 %1536, 1
  %1538 = xor i32 %1537, 1
  %1539 = or i32 %1533, %1538
  %1540 = and i32 %1535, 1
  %1541 = xor i32 %1540, 1
  %1542 = or i32 %1539, %1541
  %1543 = icmp eq i32 %1542, 0
  br i1 %1543, label %1544, label %2388, !dx.controlflow.hints !66

; <label>:1544                                    ; preds = %1510
  %1545 = fmul fast float %1511, 2.000000e+00
  %1546 = fmul fast float %1512, 2.000000e+00
  %1547 = fadd fast float %1545, -1.000000e+00
  %1548 = fadd fast float %1546, -1.000000e+00
  %1549 = call float @dx.op.unary.f32(i32 6, float %1547)  ; FAbs(value)
  %1550 = call float @dx.op.unary.f32(i32 6, float %1548)  ; FAbs(value)
  %1551 = extractvalue %dx.types.CBufRet.f32 %1527, 1
  %1552 = fmul fast float %1551, 2.000000e+00
  %1553 = fsub fast float 1.000000e+00, %1552
  %1554 = fcmp fast oge float %1549, %1553
  %1555 = fcmp fast oge float %1550, %1553
  %1556 = or i1 %1554, %1555
  %1557 = add i32 %1513, 1
  %1558 = icmp ult i32 %1557, %1514
  %1559 = and i1 %1558, %1556
  %1560 = extractvalue %dx.types.CBufRet.f32 %1527, 0
  %1561 = fptosi float %1560 to i32
  %1562 = sitofp i32 %1561 to float
  %1563 = fmul fast float %1562, %1511
  %1564 = fmul fast float %1562, %1512
  %1565 = fadd fast float %1563, -5.000000e-01
  %1566 = fadd fast float %1564, -5.000000e-01
  %1567 = fptosi float %1565 to i32
  %1568 = fptosi float %1566 to i32
  %1569 = fadd fast float %1563, 5.000000e-01
  %1570 = fadd fast float %1564, 5.000000e-01
  %1571 = call float @dx.op.unary.f32(i32 22, float %1569)  ; Frc(value)
  %1572 = call float @dx.op.unary.f32(i32 22, float %1570)  ; Frc(value)
  %1573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 340)  ; CBufferLoadLegacy(handle,regIndex)
  %1574 = extractvalue %dx.types.CBufRet.f32 %1573, 0
  %1575 = extractvalue %dx.types.CBufRet.f32 %1573, 1
  %1576 = extractvalue %dx.types.CBufRet.f32 %1573, 2
  %1577 = extractvalue %dx.types.CBufRet.f32 %1573, 3
  %1578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %1579 = extractvalue %dx.types.CBufRet.f32 %1578, 2
  %1580 = fadd fast float %1571, -5.000000e-01
  %1581 = fadd fast float %1572, -5.000000e-01
  %1582 = add i32 %1561, -1
  %1583 = call i32 @dx.op.binary.i32(i32 37, i32 %1567, i32 0)  ; IMax(a,b)
  %1584 = call i32 @dx.op.binary.i32(i32 37, i32 %1568, i32 0)  ; IMax(a,b)
  %1585 = call i32 @dx.op.binary.i32(i32 38, i32 %1583, i32 %1582)  ; IMin(a,b)
  %1586 = call i32 @dx.op.binary.i32(i32 38, i32 %1584, i32 %1582)  ; IMin(a,b)
  %1587 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 337)  ; CBufferLoadLegacy(handle,regIndex)
  %1588 = extractvalue %dx.types.CBufRet.i32 %1587, 0
  %1589 = extractvalue %dx.types.CBufRet.i32 %1587, 1
  %1590 = sub nsw i32 3, %1513
  %1591 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 338)  ; CBufferLoadLegacy(handle,regIndex)
  %1592 = extractvalue %dx.types.CBufRet.i32 %1591, 0
  %1593 = extractvalue %dx.types.CBufRet.i32 %1591, 1
  %1594 = extractvalue %dx.types.CBufRet.i32 %1591, 2
  %1595 = extractvalue %dx.types.CBufRet.i32 %1591, 3
  %1596 = add i32 %1585, 536870912
  %1597 = add i32 %1586, 536870912
  %1598 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %1599 = extractvalue %dx.types.CBufRet.i32 %1598, 3
  %1600 = add i32 %1567, 1
  %1601 = call i32 @dx.op.binary.i32(i32 37, i32 %1600, i32 0)  ; IMax(a,b)
  %1602 = call i32 @dx.op.binary.i32(i32 38, i32 %1601, i32 %1582)  ; IMin(a,b)
  %1603 = add i32 %1602, 536870912
  %1604 = add i32 %1568, 1
  %1605 = call i32 @dx.op.binary.i32(i32 37, i32 %1604, i32 0)  ; IMax(a,b)
  %1606 = call i32 @dx.op.binary.i32(i32 38, i32 %1605, i32 %1582)  ; IMin(a,b)
  %1607 = add i32 %1606, 536870912
  br i1 %1559, label %1852, label %1608, !dx.controlflow.hints !67

; <label>:1608                                    ; preds = %1544
  %1609 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 0
  store float %1574, float* %1609, align 4
  %1610 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 1
  store float %1575, float* %1610, align 4
  %1611 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 2
  store float %1576, float* %1611, align 4
  %1612 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 3
  store float %1577, float* %1612, align 4
  %1613 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 %1513
  %1614 = load float, float* %1613, align 4, !tbaa !62
  %1615 = fmul fast float %1579, %1614
  %1616 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %1615)  ; FMax(a,b)
  %1617 = fmul fast float %1616, %1580
  %1618 = fmul fast float %1616, %1581
  %1619 = call float @dx.op.binary.f32(i32 35, float %1617, float -5.000000e-01)  ; FMax(a,b)
  %1620 = call float @dx.op.binary.f32(i32 35, float %1618, float -5.000000e-01)  ; FMax(a,b)
  %1621 = call float @dx.op.binary.f32(i32 36, float %1619, float 5.000000e-01)  ; FMin(a,b)
  %1622 = call float @dx.op.binary.f32(i32 36, float %1620, float 5.000000e-01)  ; FMin(a,b)
  %1623 = fadd fast float %1621, 5.000000e-01
  %1624 = fadd fast float %1622, 5.000000e-01
  %1625 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 0
  store i32 %1592, i32* %1625, align 4
  %1626 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 1
  store i32 %1593, i32* %1626, align 4
  %1627 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 2
  store i32 %1594, i32* %1627, align 4
  %1628 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 3
  store i32 %1595, i32* %1628, align 4
  %1629 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 %1590
  %1630 = load i32, i32* %1629, align 4, !tbaa !68
  %1631 = mul i32 %1630, %1588
  %1632 = mul i32 %1630, %1589
  %1633 = add i32 %1596, %1631
  %1634 = add i32 %1597, %1632
  %1635 = and i32 %1633, %1599
  %1636 = and i32 %1634, %1599
  %1637 = fsub fast float %1455, %1525
  %1638 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1635, i32 %1636, i32 %1513, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1639 = extractvalue %dx.types.ResRet.i32 %1638, 0
  %1640 = extractvalue %dx.types.ResRet.i32 %1638, 1
  %1641 = extractvalue %dx.types.ResRet.i32 %1638, 2
  %1642 = extractvalue %dx.types.ResRet.i32 %1638, 3
  %1643 = and i32 %1639, 65535
  %1644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1643)  ; LegacyF16ToF32(value)
  %1645 = lshr i32 %1639, 16
  %1646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1645)  ; LegacyF16ToF32(value)
  %1647 = and i32 %1640, 65535
  %1648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1647)  ; LegacyF16ToF32(value)
  %1649 = lshr i32 %1640, 16
  %1650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1649)  ; LegacyF16ToF32(value)
  %1651 = and i32 %1641, 65535
  %1652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1651)  ; LegacyF16ToF32(value)
  %1653 = lshr i32 %1641, 16
  %1654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1653)  ; LegacyF16ToF32(value)
  %1655 = and i32 %1642, 65535
  %1656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1655)  ; LegacyF16ToF32(value)
  %1657 = lshr i32 %1642, 16
  %1658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1657)  ; LegacyF16ToF32(value)
  %1659 = fsub fast float %1637, %1646
  %1660 = call float @dx.op.binary.f32(i32 35, float %1659, float 0.000000e+00)  ; FMax(a,b)
  %1661 = extractvalue %dx.types.CBufRet.f32 %1527, 2
  %1662 = fmul fast float %1661, %1660
  %1663 = fsub fast float %1644, %1662
  %1664 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1663)  ; FMax(a,b)
  %1665 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1664)  ; FMax(a,b)
  %1666 = fsub fast float %1637, %1650
  %1667 = call float @dx.op.binary.f32(i32 35, float %1666, float 0.000000e+00)  ; FMax(a,b)
  %1668 = fmul fast float %1661, %1667
  %1669 = fsub fast float %1648, %1668
  %1670 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1669)  ; FMax(a,b)
  %1671 = call float @dx.op.binary.f32(i32 35, float %1665, float %1670)  ; FMax(a,b)
  %1672 = fsub fast float %1637, %1654
  %1673 = call float @dx.op.binary.f32(i32 35, float %1672, float 0.000000e+00)  ; FMax(a,b)
  %1674 = fmul fast float %1661, %1673
  %1675 = fsub fast float %1652, %1674
  %1676 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1675)  ; FMax(a,b)
  %1677 = call float @dx.op.binary.f32(i32 35, float %1671, float %1676)  ; FMax(a,b)
  %1678 = fsub fast float %1637, %1658
  %1679 = call float @dx.op.binary.f32(i32 35, float %1678, float 0.000000e+00)  ; FMax(a,b)
  %1680 = fmul fast float %1661, %1679
  %1681 = fsub fast float %1656, %1680
  %1682 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1681)  ; FMax(a,b)
  %1683 = call float @dx.op.binary.f32(i32 35, float %1677, float %1682)  ; FMax(a,b)
  %1684 = fsub fast float 5.000000e-01, %1621
  %1685 = fsub fast float 5.000000e-01, %1622
  %1686 = fmul fast float %1685, %1684
  %1687 = fmul fast float %1686, %1683
  store i32 %1592, i32* %1625, align 4
  store i32 %1593, i32* %1626, align 4
  store i32 %1594, i32* %1627, align 4
  store i32 %1595, i32* %1628, align 4
  %1688 = load i32, i32* %1629, align 4, !tbaa !68
  %1689 = mul i32 %1688, %1588
  %1690 = mul i32 %1688, %1589
  %1691 = add i32 %1603, %1689
  %1692 = add i32 %1597, %1690
  %1693 = and i32 %1691, %1599
  %1694 = and i32 %1692, %1599
  %1695 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1693, i32 %1694, i32 %1513, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1696 = extractvalue %dx.types.ResRet.i32 %1695, 0
  %1697 = extractvalue %dx.types.ResRet.i32 %1695, 1
  %1698 = extractvalue %dx.types.ResRet.i32 %1695, 2
  %1699 = extractvalue %dx.types.ResRet.i32 %1695, 3
  %1700 = and i32 %1696, 65535
  %1701 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1700)  ; LegacyF16ToF32(value)
  %1702 = lshr i32 %1696, 16
  %1703 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1702)  ; LegacyF16ToF32(value)
  %1704 = and i32 %1697, 65535
  %1705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1704)  ; LegacyF16ToF32(value)
  %1706 = lshr i32 %1697, 16
  %1707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1706)  ; LegacyF16ToF32(value)
  %1708 = and i32 %1698, 65535
  %1709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1708)  ; LegacyF16ToF32(value)
  %1710 = lshr i32 %1698, 16
  %1711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1710)  ; LegacyF16ToF32(value)
  %1712 = and i32 %1699, 65535
  %1713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1712)  ; LegacyF16ToF32(value)
  %1714 = lshr i32 %1699, 16
  %1715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1714)  ; LegacyF16ToF32(value)
  %1716 = fsub fast float %1637, %1703
  %1717 = call float @dx.op.binary.f32(i32 35, float %1716, float 0.000000e+00)  ; FMax(a,b)
  %1718 = fmul fast float %1661, %1717
  %1719 = fsub fast float %1701, %1718
  %1720 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1719)  ; FMax(a,b)
  %1721 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1720)  ; FMax(a,b)
  %1722 = fsub fast float %1637, %1707
  %1723 = call float @dx.op.binary.f32(i32 35, float %1722, float 0.000000e+00)  ; FMax(a,b)
  %1724 = fmul fast float %1661, %1723
  %1725 = fsub fast float %1705, %1724
  %1726 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1725)  ; FMax(a,b)
  %1727 = call float @dx.op.binary.f32(i32 35, float %1721, float %1726)  ; FMax(a,b)
  %1728 = fsub fast float %1637, %1711
  %1729 = call float @dx.op.binary.f32(i32 35, float %1728, float 0.000000e+00)  ; FMax(a,b)
  %1730 = fmul fast float %1661, %1729
  %1731 = fsub fast float %1709, %1730
  %1732 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1731)  ; FMax(a,b)
  %1733 = call float @dx.op.binary.f32(i32 35, float %1727, float %1732)  ; FMax(a,b)
  %1734 = fsub fast float %1637, %1715
  %1735 = call float @dx.op.binary.f32(i32 35, float %1734, float 0.000000e+00)  ; FMax(a,b)
  %1736 = fmul fast float %1661, %1735
  %1737 = fsub fast float %1713, %1736
  %1738 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1737)  ; FMax(a,b)
  %1739 = call float @dx.op.binary.f32(i32 35, float %1733, float %1738)  ; FMax(a,b)
  %1740 = fmul fast float %1685, %1623
  %1741 = fmul fast float %1740, %1739
  store i32 %1592, i32* %1625, align 4
  store i32 %1593, i32* %1626, align 4
  store i32 %1594, i32* %1627, align 4
  store i32 %1595, i32* %1628, align 4
  %1742 = load i32, i32* %1629, align 4, !tbaa !68
  %1743 = mul i32 %1742, %1588
  %1744 = mul i32 %1742, %1589
  %1745 = add i32 %1596, %1743
  %1746 = add i32 %1607, %1744
  %1747 = and i32 %1745, %1599
  %1748 = and i32 %1746, %1599
  %1749 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1747, i32 %1748, i32 %1513, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = extractvalue %dx.types.ResRet.i32 %1749, 1
  %1752 = extractvalue %dx.types.ResRet.i32 %1749, 2
  %1753 = extractvalue %dx.types.ResRet.i32 %1749, 3
  %1754 = and i32 %1750, 65535
  %1755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1754)  ; LegacyF16ToF32(value)
  %1756 = lshr i32 %1750, 16
  %1757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1756)  ; LegacyF16ToF32(value)
  %1758 = and i32 %1751, 65535
  %1759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1758)  ; LegacyF16ToF32(value)
  %1760 = lshr i32 %1751, 16
  %1761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1760)  ; LegacyF16ToF32(value)
  %1762 = and i32 %1752, 65535
  %1763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1762)  ; LegacyF16ToF32(value)
  %1764 = lshr i32 %1752, 16
  %1765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1764)  ; LegacyF16ToF32(value)
  %1766 = and i32 %1753, 65535
  %1767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1766)  ; LegacyF16ToF32(value)
  %1768 = lshr i32 %1753, 16
  %1769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1768)  ; LegacyF16ToF32(value)
  %1770 = fsub fast float %1637, %1757
  %1771 = call float @dx.op.binary.f32(i32 35, float %1770, float 0.000000e+00)  ; FMax(a,b)
  %1772 = fmul fast float %1661, %1771
  %1773 = fsub fast float %1755, %1772
  %1774 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1773)  ; FMax(a,b)
  %1775 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1774)  ; FMax(a,b)
  %1776 = fsub fast float %1637, %1761
  %1777 = call float @dx.op.binary.f32(i32 35, float %1776, float 0.000000e+00)  ; FMax(a,b)
  %1778 = fmul fast float %1661, %1777
  %1779 = fsub fast float %1759, %1778
  %1780 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1779)  ; FMax(a,b)
  %1781 = call float @dx.op.binary.f32(i32 35, float %1775, float %1780)  ; FMax(a,b)
  %1782 = fsub fast float %1637, %1765
  %1783 = call float @dx.op.binary.f32(i32 35, float %1782, float 0.000000e+00)  ; FMax(a,b)
  %1784 = fmul fast float %1661, %1783
  %1785 = fsub fast float %1763, %1784
  %1786 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1785)  ; FMax(a,b)
  %1787 = call float @dx.op.binary.f32(i32 35, float %1781, float %1786)  ; FMax(a,b)
  %1788 = fsub fast float %1637, %1769
  %1789 = call float @dx.op.binary.f32(i32 35, float %1788, float 0.000000e+00)  ; FMax(a,b)
  %1790 = fmul fast float %1661, %1789
  %1791 = fsub fast float %1767, %1790
  %1792 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1791)  ; FMax(a,b)
  %1793 = call float @dx.op.binary.f32(i32 35, float %1787, float %1792)  ; FMax(a,b)
  %1794 = fmul fast float %1793, %1684
  store i32 %1592, i32* %1625, align 4
  store i32 %1593, i32* %1626, align 4
  store i32 %1594, i32* %1627, align 4
  store i32 %1595, i32* %1628, align 4
  %1795 = load i32, i32* %1629, align 4, !tbaa !68
  %1796 = mul i32 %1795, %1588
  %1797 = mul i32 %1795, %1589
  %1798 = add i32 %1603, %1796
  %1799 = add i32 %1607, %1797
  %1800 = and i32 %1798, %1599
  %1801 = and i32 %1799, %1599
  %1802 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1800, i32 %1801, i32 %1513, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = extractvalue %dx.types.ResRet.i32 %1802, 1
  %1805 = extractvalue %dx.types.ResRet.i32 %1802, 2
  %1806 = extractvalue %dx.types.ResRet.i32 %1802, 3
  %1807 = and i32 %1803, 65535
  %1808 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1807)  ; LegacyF16ToF32(value)
  %1809 = lshr i32 %1803, 16
  %1810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1809)  ; LegacyF16ToF32(value)
  %1811 = and i32 %1804, 65535
  %1812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1811)  ; LegacyF16ToF32(value)
  %1813 = lshr i32 %1804, 16
  %1814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1813)  ; LegacyF16ToF32(value)
  %1815 = and i32 %1805, 65535
  %1816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1815)  ; LegacyF16ToF32(value)
  %1817 = lshr i32 %1805, 16
  %1818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1817)  ; LegacyF16ToF32(value)
  %1819 = and i32 %1806, 65535
  %1820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1819)  ; LegacyF16ToF32(value)
  %1821 = lshr i32 %1806, 16
  %1822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1821)  ; LegacyF16ToF32(value)
  %1823 = fsub fast float %1637, %1810
  %1824 = call float @dx.op.binary.f32(i32 35, float %1823, float 0.000000e+00)  ; FMax(a,b)
  %1825 = fmul fast float %1661, %1824
  %1826 = fsub fast float %1808, %1825
  %1827 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1826)  ; FMax(a,b)
  %1828 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1827)  ; FMax(a,b)
  %1829 = fsub fast float %1637, %1814
  %1830 = call float @dx.op.binary.f32(i32 35, float %1829, float 0.000000e+00)  ; FMax(a,b)
  %1831 = fmul fast float %1661, %1830
  %1832 = fsub fast float %1812, %1831
  %1833 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1832)  ; FMax(a,b)
  %1834 = call float @dx.op.binary.f32(i32 35, float %1828, float %1833)  ; FMax(a,b)
  %1835 = fsub fast float %1637, %1818
  %1836 = call float @dx.op.binary.f32(i32 35, float %1835, float 0.000000e+00)  ; FMax(a,b)
  %1837 = fmul fast float %1661, %1836
  %1838 = fsub fast float %1816, %1837
  %1839 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1838)  ; FMax(a,b)
  %1840 = call float @dx.op.binary.f32(i32 35, float %1834, float %1839)  ; FMax(a,b)
  %1841 = fsub fast float %1637, %1822
  %1842 = call float @dx.op.binary.f32(i32 35, float %1841, float 0.000000e+00)  ; FMax(a,b)
  %1843 = fmul fast float %1661, %1842
  %1844 = fsub fast float %1820, %1843
  %1845 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1844)  ; FMax(a,b)
  %1846 = call float @dx.op.binary.f32(i32 35, float %1840, float %1845)  ; FMax(a,b)
  %1847 = fmul fast float %1846, %1623
  %1848 = fadd fast float %1847, %1794
  %1849 = fmul fast float %1848, %1624
  %1850 = fadd fast float %1741, %1687
  %1851 = fadd fast float %1850, %1849
  br label %2388

; <label>:1852                                    ; preds = %1544
  %1853 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 0
  store float %1574, float* %1853, align 4
  %1854 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 1
  store float %1575, float* %1854, align 4
  %1855 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 2
  store float %1576, float* %1855, align 4
  %1856 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 3
  store float %1577, float* %1856, align 4
  %1857 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 %1513
  %1858 = load float, float* %1857, align 4, !tbaa !62
  %1859 = fmul fast float %1579, %1858
  %1860 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %1859)  ; FMax(a,b)
  %1861 = fmul fast float %1860, %1580
  %1862 = fmul fast float %1860, %1581
  %1863 = call float @dx.op.binary.f32(i32 35, float %1861, float -5.000000e-01)  ; FMax(a,b)
  %1864 = call float @dx.op.binary.f32(i32 35, float %1862, float -5.000000e-01)  ; FMax(a,b)
  %1865 = call float @dx.op.binary.f32(i32 36, float %1863, float 5.000000e-01)  ; FMin(a,b)
  %1866 = call float @dx.op.binary.f32(i32 36, float %1864, float 5.000000e-01)  ; FMin(a,b)
  %1867 = fadd fast float %1865, 5.000000e-01
  %1868 = fadd fast float %1866, 5.000000e-01
  %1869 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %1592, i32* %1869, align 4
  %1870 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %1593, i32* %1870, align 4
  %1871 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %1594, i32* %1871, align 4
  %1872 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %1595, i32* %1872, align 4
  %1873 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 %1590
  %1874 = load i32, i32* %1873, align 4, !tbaa !68
  %1875 = mul i32 %1874, %1588
  %1876 = mul i32 %1874, %1589
  %1877 = add i32 %1596, %1875
  %1878 = add i32 %1597, %1876
  %1879 = and i32 %1877, %1599
  %1880 = and i32 %1878, %1599
  %1881 = fsub fast float %1455, %1525
  %1882 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1879, i32 %1880, i32 %1513, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1883 = extractvalue %dx.types.ResRet.i32 %1882, 0
  %1884 = extractvalue %dx.types.ResRet.i32 %1882, 1
  %1885 = extractvalue %dx.types.ResRet.i32 %1882, 2
  %1886 = extractvalue %dx.types.ResRet.i32 %1882, 3
  %1887 = and i32 %1883, 65535
  %1888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1887)  ; LegacyF16ToF32(value)
  %1889 = lshr i32 %1883, 16
  %1890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1889)  ; LegacyF16ToF32(value)
  %1891 = and i32 %1884, 65535
  %1892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1891)  ; LegacyF16ToF32(value)
  %1893 = lshr i32 %1884, 16
  %1894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1893)  ; LegacyF16ToF32(value)
  %1895 = and i32 %1885, 65535
  %1896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1895)  ; LegacyF16ToF32(value)
  %1897 = lshr i32 %1885, 16
  %1898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1897)  ; LegacyF16ToF32(value)
  %1899 = and i32 %1886, 65535
  %1900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1899)  ; LegacyF16ToF32(value)
  %1901 = lshr i32 %1886, 16
  %1902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1901)  ; LegacyF16ToF32(value)
  %1903 = fsub fast float %1881, %1890
  %1904 = call float @dx.op.binary.f32(i32 35, float %1903, float 0.000000e+00)  ; FMax(a,b)
  %1905 = extractvalue %dx.types.CBufRet.f32 %1527, 2
  %1906 = fmul fast float %1905, %1904
  %1907 = fsub fast float %1888, %1906
  %1908 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1907)  ; FMax(a,b)
  %1909 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1908)  ; FMax(a,b)
  %1910 = fsub fast float %1881, %1894
  %1911 = call float @dx.op.binary.f32(i32 35, float %1910, float 0.000000e+00)  ; FMax(a,b)
  %1912 = fmul fast float %1905, %1911
  %1913 = fsub fast float %1892, %1912
  %1914 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1913)  ; FMax(a,b)
  %1915 = call float @dx.op.binary.f32(i32 35, float %1909, float %1914)  ; FMax(a,b)
  %1916 = fsub fast float %1881, %1898
  %1917 = call float @dx.op.binary.f32(i32 35, float %1916, float 0.000000e+00)  ; FMax(a,b)
  %1918 = fmul fast float %1905, %1917
  %1919 = fsub fast float %1896, %1918
  %1920 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1919)  ; FMax(a,b)
  %1921 = call float @dx.op.binary.f32(i32 35, float %1915, float %1920)  ; FMax(a,b)
  %1922 = fsub fast float %1881, %1902
  %1923 = call float @dx.op.binary.f32(i32 35, float %1922, float 0.000000e+00)  ; FMax(a,b)
  %1924 = fmul fast float %1905, %1923
  %1925 = fsub fast float %1900, %1924
  %1926 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1925)  ; FMax(a,b)
  %1927 = call float @dx.op.binary.f32(i32 35, float %1921, float %1926)  ; FMax(a,b)
  %1928 = fsub fast float 5.000000e-01, %1865
  %1929 = fsub fast float 5.000000e-01, %1866
  %1930 = fmul fast float %1929, %1928
  %1931 = fmul fast float %1930, %1927
  store i32 %1592, i32* %1869, align 4
  store i32 %1593, i32* %1870, align 4
  store i32 %1594, i32* %1871, align 4
  store i32 %1595, i32* %1872, align 4
  %1932 = load i32, i32* %1873, align 4, !tbaa !68
  %1933 = mul i32 %1932, %1588
  %1934 = mul i32 %1932, %1589
  %1935 = add i32 %1603, %1933
  %1936 = add i32 %1597, %1934
  %1937 = and i32 %1935, %1599
  %1938 = and i32 %1936, %1599
  %1939 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1937, i32 %1938, i32 %1513, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1940 = extractvalue %dx.types.ResRet.i32 %1939, 0
  %1941 = extractvalue %dx.types.ResRet.i32 %1939, 1
  %1942 = extractvalue %dx.types.ResRet.i32 %1939, 2
  %1943 = extractvalue %dx.types.ResRet.i32 %1939, 3
  %1944 = and i32 %1940, 65535
  %1945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1944)  ; LegacyF16ToF32(value)
  %1946 = lshr i32 %1940, 16
  %1947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1946)  ; LegacyF16ToF32(value)
  %1948 = and i32 %1941, 65535
  %1949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1948)  ; LegacyF16ToF32(value)
  %1950 = lshr i32 %1941, 16
  %1951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1950)  ; LegacyF16ToF32(value)
  %1952 = and i32 %1942, 65535
  %1953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1952)  ; LegacyF16ToF32(value)
  %1954 = lshr i32 %1942, 16
  %1955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1954)  ; LegacyF16ToF32(value)
  %1956 = and i32 %1943, 65535
  %1957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1956)  ; LegacyF16ToF32(value)
  %1958 = lshr i32 %1943, 16
  %1959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1958)  ; LegacyF16ToF32(value)
  %1960 = fsub fast float %1881, %1947
  %1961 = call float @dx.op.binary.f32(i32 35, float %1960, float 0.000000e+00)  ; FMax(a,b)
  %1962 = fmul fast float %1905, %1961
  %1963 = fsub fast float %1945, %1962
  %1964 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1963)  ; FMax(a,b)
  %1965 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1964)  ; FMax(a,b)
  %1966 = fsub fast float %1881, %1951
  %1967 = call float @dx.op.binary.f32(i32 35, float %1966, float 0.000000e+00)  ; FMax(a,b)
  %1968 = fmul fast float %1905, %1967
  %1969 = fsub fast float %1949, %1968
  %1970 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1969)  ; FMax(a,b)
  %1971 = call float @dx.op.binary.f32(i32 35, float %1965, float %1970)  ; FMax(a,b)
  %1972 = fsub fast float %1881, %1955
  %1973 = call float @dx.op.binary.f32(i32 35, float %1972, float 0.000000e+00)  ; FMax(a,b)
  %1974 = fmul fast float %1905, %1973
  %1975 = fsub fast float %1953, %1974
  %1976 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1975)  ; FMax(a,b)
  %1977 = call float @dx.op.binary.f32(i32 35, float %1971, float %1976)  ; FMax(a,b)
  %1978 = fsub fast float %1881, %1959
  %1979 = call float @dx.op.binary.f32(i32 35, float %1978, float 0.000000e+00)  ; FMax(a,b)
  %1980 = fmul fast float %1905, %1979
  %1981 = fsub fast float %1957, %1980
  %1982 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1981)  ; FMax(a,b)
  %1983 = call float @dx.op.binary.f32(i32 35, float %1977, float %1982)  ; FMax(a,b)
  %1984 = fmul fast float %1929, %1867
  %1985 = fmul fast float %1984, %1983
  store i32 %1592, i32* %1869, align 4
  store i32 %1593, i32* %1870, align 4
  store i32 %1594, i32* %1871, align 4
  store i32 %1595, i32* %1872, align 4
  %1986 = load i32, i32* %1873, align 4, !tbaa !68
  %1987 = mul i32 %1986, %1588
  %1988 = mul i32 %1986, %1589
  %1989 = add i32 %1596, %1987
  %1990 = add i32 %1607, %1988
  %1991 = and i32 %1989, %1599
  %1992 = and i32 %1990, %1599
  %1993 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1991, i32 %1992, i32 %1513, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = extractvalue %dx.types.ResRet.i32 %1993, 1
  %1996 = extractvalue %dx.types.ResRet.i32 %1993, 2
  %1997 = extractvalue %dx.types.ResRet.i32 %1993, 3
  %1998 = and i32 %1994, 65535
  %1999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1998)  ; LegacyF16ToF32(value)
  %2000 = lshr i32 %1994, 16
  %2001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2000)  ; LegacyF16ToF32(value)
  %2002 = and i32 %1995, 65535
  %2003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2002)  ; LegacyF16ToF32(value)
  %2004 = lshr i32 %1995, 16
  %2005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2004)  ; LegacyF16ToF32(value)
  %2006 = and i32 %1996, 65535
  %2007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2006)  ; LegacyF16ToF32(value)
  %2008 = lshr i32 %1996, 16
  %2009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2008)  ; LegacyF16ToF32(value)
  %2010 = and i32 %1997, 65535
  %2011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2010)  ; LegacyF16ToF32(value)
  %2012 = lshr i32 %1997, 16
  %2013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2012)  ; LegacyF16ToF32(value)
  %2014 = fsub fast float %1881, %2001
  %2015 = call float @dx.op.binary.f32(i32 35, float %2014, float 0.000000e+00)  ; FMax(a,b)
  %2016 = fmul fast float %1905, %2015
  %2017 = fsub fast float %1999, %2016
  %2018 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2017)  ; FMax(a,b)
  %2019 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2018)  ; FMax(a,b)
  %2020 = fsub fast float %1881, %2005
  %2021 = call float @dx.op.binary.f32(i32 35, float %2020, float 0.000000e+00)  ; FMax(a,b)
  %2022 = fmul fast float %1905, %2021
  %2023 = fsub fast float %2003, %2022
  %2024 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2023)  ; FMax(a,b)
  %2025 = call float @dx.op.binary.f32(i32 35, float %2019, float %2024)  ; FMax(a,b)
  %2026 = fsub fast float %1881, %2009
  %2027 = call float @dx.op.binary.f32(i32 35, float %2026, float 0.000000e+00)  ; FMax(a,b)
  %2028 = fmul fast float %1905, %2027
  %2029 = fsub fast float %2007, %2028
  %2030 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2029)  ; FMax(a,b)
  %2031 = call float @dx.op.binary.f32(i32 35, float %2025, float %2030)  ; FMax(a,b)
  %2032 = fsub fast float %1881, %2013
  %2033 = call float @dx.op.binary.f32(i32 35, float %2032, float 0.000000e+00)  ; FMax(a,b)
  %2034 = fmul fast float %1905, %2033
  %2035 = fsub fast float %2011, %2034
  %2036 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2035)  ; FMax(a,b)
  %2037 = call float @dx.op.binary.f32(i32 35, float %2031, float %2036)  ; FMax(a,b)
  %2038 = fmul fast float %2037, %1928
  store i32 %1592, i32* %1869, align 4
  store i32 %1593, i32* %1870, align 4
  store i32 %1594, i32* %1871, align 4
  store i32 %1595, i32* %1872, align 4
  %2039 = load i32, i32* %1873, align 4, !tbaa !68
  %2040 = mul i32 %2039, %1588
  %2041 = mul i32 %2039, %1589
  %2042 = add i32 %1603, %2040
  %2043 = add i32 %1607, %2041
  %2044 = and i32 %2042, %1599
  %2045 = and i32 %2043, %1599
  %2046 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %2044, i32 %2045, i32 %1513, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = extractvalue %dx.types.ResRet.i32 %2046, 1
  %2049 = extractvalue %dx.types.ResRet.i32 %2046, 2
  %2050 = extractvalue %dx.types.ResRet.i32 %2046, 3
  %2051 = and i32 %2047, 65535
  %2052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2051)  ; LegacyF16ToF32(value)
  %2053 = lshr i32 %2047, 16
  %2054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2053)  ; LegacyF16ToF32(value)
  %2055 = and i32 %2048, 65535
  %2056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2055)  ; LegacyF16ToF32(value)
  %2057 = lshr i32 %2048, 16
  %2058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2057)  ; LegacyF16ToF32(value)
  %2059 = and i32 %2049, 65535
  %2060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2059)  ; LegacyF16ToF32(value)
  %2061 = lshr i32 %2049, 16
  %2062 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2061)  ; LegacyF16ToF32(value)
  %2063 = and i32 %2050, 65535
  %2064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2063)  ; LegacyF16ToF32(value)
  %2065 = lshr i32 %2050, 16
  %2066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2065)  ; LegacyF16ToF32(value)
  %2067 = fsub fast float %1881, %2054
  %2068 = call float @dx.op.binary.f32(i32 35, float %2067, float 0.000000e+00)  ; FMax(a,b)
  %2069 = fmul fast float %1905, %2068
  %2070 = fsub fast float %2052, %2069
  %2071 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2070)  ; FMax(a,b)
  %2072 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2071)  ; FMax(a,b)
  %2073 = fsub fast float %1881, %2058
  %2074 = call float @dx.op.binary.f32(i32 35, float %2073, float 0.000000e+00)  ; FMax(a,b)
  %2075 = fmul fast float %1905, %2074
  %2076 = fsub fast float %2056, %2075
  %2077 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2076)  ; FMax(a,b)
  %2078 = call float @dx.op.binary.f32(i32 35, float %2072, float %2077)  ; FMax(a,b)
  %2079 = fsub fast float %1881, %2062
  %2080 = call float @dx.op.binary.f32(i32 35, float %2079, float 0.000000e+00)  ; FMax(a,b)
  %2081 = fmul fast float %1905, %2080
  %2082 = fsub fast float %2060, %2081
  %2083 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2082)  ; FMax(a,b)
  %2084 = call float @dx.op.binary.f32(i32 35, float %2078, float %2083)  ; FMax(a,b)
  %2085 = fsub fast float %1881, %2066
  %2086 = call float @dx.op.binary.f32(i32 35, float %2085, float 0.000000e+00)  ; FMax(a,b)
  %2087 = fmul fast float %1905, %2086
  %2088 = fsub fast float %2064, %2087
  %2089 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2088)  ; FMax(a,b)
  %2090 = call float @dx.op.binary.f32(i32 35, float %2084, float %2089)  ; FMax(a,b)
  %2091 = fmul fast float %2090, %1867
  %2092 = fadd fast float %2091, %2038
  %2093 = fmul fast float %2092, %1868
  %2094 = fadd fast float %1985, %1931
  %2095 = fadd fast float %2094, %2093
  %2096 = fmul fast float %1511, 5.000000e-01
  %2097 = fmul fast float %1512, 5.000000e-01
  %2098 = fadd fast float %2096, 2.500000e-01
  %2099 = fadd fast float %2097, 2.500000e-01
  %2100 = fmul fast float %1562, %2098
  %2101 = fmul fast float %1562, %2099
  %2102 = fadd fast float %2100, -5.000000e-01
  %2103 = fadd fast float %2101, -5.000000e-01
  %2104 = fptosi float %2102 to i32
  %2105 = fptosi float %2103 to i32
  %2106 = fadd fast float %2100, 5.000000e-01
  %2107 = fadd fast float %2101, 5.000000e-01
  %2108 = call float @dx.op.unary.f32(i32 22, float %2106)  ; Frc(value)
  %2109 = call float @dx.op.unary.f32(i32 22, float %2107)  ; Frc(value)
  %2110 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  store float %1574, float* %2110, align 4
  %2111 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  store float %1575, float* %2111, align 4
  %2112 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  store float %1576, float* %2112, align 4
  %2113 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  store float %1577, float* %2113, align 4
  %2114 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 %1557
  %2115 = load float, float* %2114, align 4, !tbaa !62
  %2116 = fmul fast float %1579, %2115
  %2117 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %2116)  ; FMax(a,b)
  %2118 = fadd fast float %2108, -5.000000e-01
  %2119 = fadd fast float %2109, -5.000000e-01
  %2120 = fmul fast float %2117, %2118
  %2121 = fmul fast float %2117, %2119
  %2122 = call float @dx.op.binary.f32(i32 35, float %2120, float -5.000000e-01)  ; FMax(a,b)
  %2123 = call float @dx.op.binary.f32(i32 35, float %2121, float -5.000000e-01)  ; FMax(a,b)
  %2124 = call float @dx.op.binary.f32(i32 36, float %2122, float 5.000000e-01)  ; FMin(a,b)
  %2125 = call float @dx.op.binary.f32(i32 36, float %2123, float 5.000000e-01)  ; FMin(a,b)
  %2126 = fadd fast float %2124, 5.000000e-01
  %2127 = fadd fast float %2125, 5.000000e-01
  %2128 = call i32 @dx.op.binary.i32(i32 37, i32 %2104, i32 0)  ; IMax(a,b)
  %2129 = call i32 @dx.op.binary.i32(i32 37, i32 %2105, i32 0)  ; IMax(a,b)
  %2130 = call i32 @dx.op.binary.i32(i32 38, i32 %2128, i32 %1582)  ; IMin(a,b)
  %2131 = call i32 @dx.op.binary.i32(i32 38, i32 %2129, i32 %1582)  ; IMin(a,b)
  %2132 = sub i32 2, %1513
  %2133 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %1592, i32* %2133, align 4
  %2134 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %1593, i32* %2134, align 4
  %2135 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %1594, i32* %2135, align 4
  %2136 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %1595, i32* %2136, align 4
  %2137 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 %2132
  %2138 = load i32, i32* %2137, align 4, !tbaa !68
  %2139 = mul i32 %2138, %1588
  %2140 = mul i32 %2138, %1589
  %2141 = add i32 %2130, 536870912
  %2142 = add i32 %2141, %2139
  %2143 = add i32 %2131, 536870912
  %2144 = add i32 %2143, %2140
  %2145 = and i32 %2142, %1599
  %2146 = and i32 %2144, %1599
  %2147 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %2145, i32 %2146, i32 %1557, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = extractvalue %dx.types.ResRet.i32 %2147, 1
  %2150 = extractvalue %dx.types.ResRet.i32 %2147, 2
  %2151 = extractvalue %dx.types.ResRet.i32 %2147, 3
  %2152 = and i32 %2148, 65535
  %2153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2152)  ; LegacyF16ToF32(value)
  %2154 = lshr i32 %2148, 16
  %2155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2154)  ; LegacyF16ToF32(value)
  %2156 = and i32 %2149, 65535
  %2157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2156)  ; LegacyF16ToF32(value)
  %2158 = lshr i32 %2149, 16
  %2159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2158)  ; LegacyF16ToF32(value)
  %2160 = and i32 %2150, 65535
  %2161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2160)  ; LegacyF16ToF32(value)
  %2162 = lshr i32 %2150, 16
  %2163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2162)  ; LegacyF16ToF32(value)
  %2164 = and i32 %2151, 65535
  %2165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2164)  ; LegacyF16ToF32(value)
  %2166 = lshr i32 %2151, 16
  %2167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2166)  ; LegacyF16ToF32(value)
  %2168 = fsub fast float %1881, %2155
  %2169 = call float @dx.op.binary.f32(i32 35, float %2168, float 0.000000e+00)  ; FMax(a,b)
  %2170 = fmul fast float %1905, %2169
  %2171 = fsub fast float %2153, %2170
  %2172 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2171)  ; FMax(a,b)
  %2173 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2172)  ; FMax(a,b)
  %2174 = fsub fast float %1881, %2159
  %2175 = call float @dx.op.binary.f32(i32 35, float %2174, float 0.000000e+00)  ; FMax(a,b)
  %2176 = fmul fast float %1905, %2175
  %2177 = fsub fast float %2157, %2176
  %2178 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2177)  ; FMax(a,b)
  %2179 = call float @dx.op.binary.f32(i32 35, float %2173, float %2178)  ; FMax(a,b)
  %2180 = fsub fast float %1881, %2163
  %2181 = call float @dx.op.binary.f32(i32 35, float %2180, float 0.000000e+00)  ; FMax(a,b)
  %2182 = fmul fast float %1905, %2181
  %2183 = fsub fast float %2161, %2182
  %2184 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2183)  ; FMax(a,b)
  %2185 = call float @dx.op.binary.f32(i32 35, float %2179, float %2184)  ; FMax(a,b)
  %2186 = fsub fast float %1881, %2167
  %2187 = call float @dx.op.binary.f32(i32 35, float %2186, float 0.000000e+00)  ; FMax(a,b)
  %2188 = fmul fast float %1905, %2187
  %2189 = fsub fast float %2165, %2188
  %2190 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2189)  ; FMax(a,b)
  %2191 = call float @dx.op.binary.f32(i32 35, float %2185, float %2190)  ; FMax(a,b)
  %2192 = fsub fast float 5.000000e-01, %2124
  %2193 = fsub fast float 5.000000e-01, %2125
  %2194 = fmul fast float %2193, %2192
  %2195 = fmul fast float %2194, %2191
  %2196 = add i32 %2104, 1
  %2197 = call i32 @dx.op.binary.i32(i32 37, i32 %2196, i32 0)  ; IMax(a,b)
  %2198 = call i32 @dx.op.binary.i32(i32 38, i32 %2197, i32 %1582)  ; IMin(a,b)
  store i32 %1592, i32* %2133, align 4
  store i32 %1593, i32* %2134, align 4
  store i32 %1594, i32* %2135, align 4
  store i32 %1595, i32* %2136, align 4
  %2199 = load i32, i32* %2137, align 4, !tbaa !68
  %2200 = mul i32 %2199, %1588
  %2201 = mul i32 %2199, %1589
  %2202 = add i32 %2198, 536870912
  %2203 = add i32 %2202, %2200
  %2204 = add i32 %2143, %2201
  %2205 = and i32 %2203, %1599
  %2206 = and i32 %2204, %1599
  %2207 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %2205, i32 %2206, i32 %1557, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = extractvalue %dx.types.ResRet.i32 %2207, 1
  %2210 = extractvalue %dx.types.ResRet.i32 %2207, 2
  %2211 = extractvalue %dx.types.ResRet.i32 %2207, 3
  %2212 = and i32 %2208, 65535
  %2213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2212)  ; LegacyF16ToF32(value)
  %2214 = lshr i32 %2208, 16
  %2215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2214)  ; LegacyF16ToF32(value)
  %2216 = and i32 %2209, 65535
  %2217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2216)  ; LegacyF16ToF32(value)
  %2218 = lshr i32 %2209, 16
  %2219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2218)  ; LegacyF16ToF32(value)
  %2220 = and i32 %2210, 65535
  %2221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2220)  ; LegacyF16ToF32(value)
  %2222 = lshr i32 %2210, 16
  %2223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2222)  ; LegacyF16ToF32(value)
  %2224 = and i32 %2211, 65535
  %2225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2224)  ; LegacyF16ToF32(value)
  %2226 = lshr i32 %2211, 16
  %2227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2226)  ; LegacyF16ToF32(value)
  %2228 = fsub fast float %1881, %2215
  %2229 = call float @dx.op.binary.f32(i32 35, float %2228, float 0.000000e+00)  ; FMax(a,b)
  %2230 = fmul fast float %1905, %2229
  %2231 = fsub fast float %2213, %2230
  %2232 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2231)  ; FMax(a,b)
  %2233 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2232)  ; FMax(a,b)
  %2234 = fsub fast float %1881, %2219
  %2235 = call float @dx.op.binary.f32(i32 35, float %2234, float 0.000000e+00)  ; FMax(a,b)
  %2236 = fmul fast float %1905, %2235
  %2237 = fsub fast float %2217, %2236
  %2238 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2237)  ; FMax(a,b)
  %2239 = call float @dx.op.binary.f32(i32 35, float %2233, float %2238)  ; FMax(a,b)
  %2240 = fsub fast float %1881, %2223
  %2241 = call float @dx.op.binary.f32(i32 35, float %2240, float 0.000000e+00)  ; FMax(a,b)
  %2242 = fmul fast float %1905, %2241
  %2243 = fsub fast float %2221, %2242
  %2244 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2243)  ; FMax(a,b)
  %2245 = call float @dx.op.binary.f32(i32 35, float %2239, float %2244)  ; FMax(a,b)
  %2246 = fsub fast float %1881, %2227
  %2247 = call float @dx.op.binary.f32(i32 35, float %2246, float 0.000000e+00)  ; FMax(a,b)
  %2248 = fmul fast float %1905, %2247
  %2249 = fsub fast float %2225, %2248
  %2250 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2249)  ; FMax(a,b)
  %2251 = call float @dx.op.binary.f32(i32 35, float %2245, float %2250)  ; FMax(a,b)
  %2252 = fmul fast float %2193, %2126
  %2253 = fmul fast float %2252, %2251
  %2254 = add i32 %2105, 1
  %2255 = call i32 @dx.op.binary.i32(i32 37, i32 %2254, i32 0)  ; IMax(a,b)
  %2256 = call i32 @dx.op.binary.i32(i32 38, i32 %2255, i32 %1582)  ; IMin(a,b)
  store i32 %1592, i32* %2133, align 4
  store i32 %1593, i32* %2134, align 4
  store i32 %1594, i32* %2135, align 4
  store i32 %1595, i32* %2136, align 4
  %2257 = load i32, i32* %2137, align 4, !tbaa !68
  %2258 = mul i32 %2257, %1588
  %2259 = mul i32 %2257, %1589
  %2260 = add i32 %2141, %2258
  %2261 = add i32 %2256, 536870912
  %2262 = add i32 %2261, %2259
  %2263 = and i32 %2260, %1599
  %2264 = and i32 %2262, %1599
  %2265 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %2263, i32 %2264, i32 %1557, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = extractvalue %dx.types.ResRet.i32 %2265, 1
  %2268 = extractvalue %dx.types.ResRet.i32 %2265, 2
  %2269 = extractvalue %dx.types.ResRet.i32 %2265, 3
  %2270 = and i32 %2266, 65535
  %2271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2270)  ; LegacyF16ToF32(value)
  %2272 = lshr i32 %2266, 16
  %2273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2272)  ; LegacyF16ToF32(value)
  %2274 = and i32 %2267, 65535
  %2275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2274)  ; LegacyF16ToF32(value)
  %2276 = lshr i32 %2267, 16
  %2277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2276)  ; LegacyF16ToF32(value)
  %2278 = and i32 %2268, 65535
  %2279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2278)  ; LegacyF16ToF32(value)
  %2280 = lshr i32 %2268, 16
  %2281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2280)  ; LegacyF16ToF32(value)
  %2282 = and i32 %2269, 65535
  %2283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2282)  ; LegacyF16ToF32(value)
  %2284 = lshr i32 %2269, 16
  %2285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2284)  ; LegacyF16ToF32(value)
  %2286 = fsub fast float %1881, %2273
  %2287 = call float @dx.op.binary.f32(i32 35, float %2286, float 0.000000e+00)  ; FMax(a,b)
  %2288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %2289 = extractvalue %dx.types.CBufRet.f32 %2288, 2
  %2290 = fmul fast float %2289, %2287
  %2291 = fsub fast float %2271, %2290
  %2292 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2291)  ; FMax(a,b)
  %2293 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2292)  ; FMax(a,b)
  %2294 = fsub fast float %1881, %2277
  %2295 = call float @dx.op.binary.f32(i32 35, float %2294, float 0.000000e+00)  ; FMax(a,b)
  %2296 = fmul fast float %2289, %2295
  %2297 = fsub fast float %2275, %2296
  %2298 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2297)  ; FMax(a,b)
  %2299 = call float @dx.op.binary.f32(i32 35, float %2293, float %2298)  ; FMax(a,b)
  %2300 = fsub fast float %1881, %2281
  %2301 = call float @dx.op.binary.f32(i32 35, float %2300, float 0.000000e+00)  ; FMax(a,b)
  %2302 = fmul fast float %2289, %2301
  %2303 = fsub fast float %2279, %2302
  %2304 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2303)  ; FMax(a,b)
  %2305 = call float @dx.op.binary.f32(i32 35, float %2299, float %2304)  ; FMax(a,b)
  %2306 = fsub fast float %1881, %2285
  %2307 = call float @dx.op.binary.f32(i32 35, float %2306, float 0.000000e+00)  ; FMax(a,b)
  %2308 = fmul fast float %2289, %2307
  %2309 = fsub fast float %2283, %2308
  %2310 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2309)  ; FMax(a,b)
  %2311 = call float @dx.op.binary.f32(i32 35, float %2305, float %2310)  ; FMax(a,b)
  %2312 = fmul fast float %2311, %2192
  store i32 %1592, i32* %2133, align 4
  store i32 %1593, i32* %2134, align 4
  store i32 %1594, i32* %2135, align 4
  store i32 %1595, i32* %2136, align 4
  %2313 = load i32, i32* %2137, align 4, !tbaa !68
  %2314 = mul i32 %2313, %1588
  %2315 = mul i32 %2313, %1589
  %2316 = add i32 %2202, %2314
  %2317 = add i32 %2261, %2315
  %2318 = and i32 %2316, %1599
  %2319 = and i32 %2317, %1599
  %2320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %2321 = extractvalue %dx.types.CBufRet.f32 %2320, 0
  %2322 = fsub fast float %1455, %2321
  %2323 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %2318, i32 %2319, i32 %1557, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2324 = extractvalue %dx.types.ResRet.i32 %2323, 0
  %2325 = extractvalue %dx.types.ResRet.i32 %2323, 1
  %2326 = extractvalue %dx.types.ResRet.i32 %2323, 2
  %2327 = extractvalue %dx.types.ResRet.i32 %2323, 3
  %2328 = and i32 %2324, 65535
  %2329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2328)  ; LegacyF16ToF32(value)
  %2330 = lshr i32 %2324, 16
  %2331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2330)  ; LegacyF16ToF32(value)
  %2332 = and i32 %2325, 65535
  %2333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2332)  ; LegacyF16ToF32(value)
  %2334 = lshr i32 %2325, 16
  %2335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2334)  ; LegacyF16ToF32(value)
  %2336 = and i32 %2326, 65535
  %2337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2336)  ; LegacyF16ToF32(value)
  %2338 = lshr i32 %2326, 16
  %2339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2338)  ; LegacyF16ToF32(value)
  %2340 = and i32 %2327, 65535
  %2341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2340)  ; LegacyF16ToF32(value)
  %2342 = lshr i32 %2327, 16
  %2343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2342)  ; LegacyF16ToF32(value)
  %2344 = fsub fast float %2322, %2331
  %2345 = call float @dx.op.binary.f32(i32 35, float %2344, float 0.000000e+00)  ; FMax(a,b)
  %2346 = fmul fast float %2289, %2345
  %2347 = fsub fast float %2329, %2346
  %2348 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2347)  ; FMax(a,b)
  %2349 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2348)  ; FMax(a,b)
  %2350 = fsub fast float %2322, %2335
  %2351 = call float @dx.op.binary.f32(i32 35, float %2350, float 0.000000e+00)  ; FMax(a,b)
  %2352 = fmul fast float %2289, %2351
  %2353 = fsub fast float %2333, %2352
  %2354 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2353)  ; FMax(a,b)
  %2355 = call float @dx.op.binary.f32(i32 35, float %2349, float %2354)  ; FMax(a,b)
  %2356 = fsub fast float %2322, %2339
  %2357 = call float @dx.op.binary.f32(i32 35, float %2356, float 0.000000e+00)  ; FMax(a,b)
  %2358 = fmul fast float %2289, %2357
  %2359 = fsub fast float %2337, %2358
  %2360 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2359)  ; FMax(a,b)
  %2361 = call float @dx.op.binary.f32(i32 35, float %2355, float %2360)  ; FMax(a,b)
  %2362 = fsub fast float %2322, %2343
  %2363 = call float @dx.op.binary.f32(i32 35, float %2362, float 0.000000e+00)  ; FMax(a,b)
  %2364 = fmul fast float %2289, %2363
  %2365 = fsub fast float %2341, %2364
  %2366 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2365)  ; FMax(a,b)
  %2367 = call float @dx.op.binary.f32(i32 35, float %2361, float %2366)  ; FMax(a,b)
  %2368 = fmul fast float %2367, %2126
  %2369 = fadd fast float %2368, %2312
  %2370 = fmul fast float %2369, %2127
  %2371 = fadd fast float %2253, %2195
  %2372 = fadd fast float %2371, %2370
  %2373 = call float @dx.op.binary.f32(i32 35, float %1549, float %1550)  ; FMax(a,b)
  %2374 = extractvalue %dx.types.CBufRet.f32 %2288, 1
  %2375 = fmul fast float %2374, 2.000000e+00
  %2376 = fadd fast float %2373, -1.000000e+00
  %2377 = fadd fast float %2376, %2375
  %2378 = fdiv fast float %2377, %2375
  %2379 = call float @dx.op.unary.f32(i32 7, float %2378)  ; Saturate(value)
  %2380 = fmul fast float %2379, 2.000000e+00
  %2381 = fsub fast float 3.000000e+00, %2380
  %2382 = fmul fast float %2379, %2379
  %2383 = fmul fast float %2382, %2381
  %2384 = fmul fast float %2383, %2372
  %2385 = fsub fast float 1.000000e+00, %2383
  %2386 = fmul fast float %2385, %2095
  %2387 = fadd fast float %2386, %2384
  br label %2388

; <label>:2388                                    ; preds = %1852, %1608, %1510
  %2389 = phi float [ 0.000000e+00, %1510 ], [ %2387, %1852 ], [ %1851, %1608 ]
  %2390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2391 = extractvalue %dx.types.CBufRet.f32 %2390, 0
  %2392 = extractvalue %dx.types.CBufRet.f32 %2390, 1
  %2393 = fsub fast float %1453, %2391
  %2394 = fsub fast float %1454, %2392
  %2395 = fmul fast float %2393, %2393
  %2396 = fmul fast float %2394, %2394
  %2397 = fadd fast float %2395, %2396
  %2398 = call float @dx.op.unary.f32(i32 24, float %2397)  ; Sqrt(value)
  %2399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %2400 = extractvalue %dx.types.CBufRet.f32 %2399, 0
  %2401 = extractvalue %dx.types.CBufRet.f32 %2399, 1
  %2402 = fsub fast float %2401, %2400
  %2403 = fsub fast float %2398, %2400
  %2404 = fdiv fast float %2403, %2402
  %2405 = call float @dx.op.unary.f32(i32 7, float %2404)  ; Saturate(value)
  %2406 = fmul fast float %2405, 2.000000e+00
  %2407 = fsub fast float 3.000000e+00, %2406
  %2408 = fmul fast float %2405, %2405
  %2409 = fmul fast float %2408, %2407
  %2410 = fsub fast float 1.000000e+00, %2409
  %2411 = fmul fast float %2410, %2389
  %2412 = fadd fast float %2411, %1446
  %2413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %2414 = extractvalue %dx.types.CBufRet.i32 %2413, 0
  %2415 = and i32 %2414, 7
  %2416 = icmp eq i32 %2415, 0
  br i1 %2416, label %2488, label %2417

; <label>:2417                                    ; preds = %2388
  %2418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2419 = extractvalue %dx.types.CBufRet.f32 %2418, 0
  %2420 = extractvalue %dx.types.CBufRet.f32 %2418, 1
  %2421 = extractvalue %dx.types.CBufRet.f32 %2418, 2
  %2422 = fadd fast float %2419, %98
  %2423 = fadd fast float %2420, %99
  %2424 = fadd fast float %2421, %100
  %2425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %2426 = extractvalue %dx.types.CBufRet.f32 %2425, 0
  %2427 = extractvalue %dx.types.CBufRet.f32 %2425, 1
  %2428 = extractvalue %dx.types.CBufRet.f32 %2425, 2
  %2429 = extractvalue %dx.types.CBufRet.f32 %2425, 3
  %2430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %2431 = extractvalue %dx.types.CBufRet.f32 %2430, 0
  %2432 = extractvalue %dx.types.CBufRet.f32 %2430, 1
  %2433 = extractvalue %dx.types.CBufRet.f32 %2430, 2
  %2434 = extractvalue %dx.types.CBufRet.f32 %2430, 3
  %2435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %2436 = extractvalue %dx.types.CBufRet.f32 %2435, 0
  %2437 = extractvalue %dx.types.CBufRet.f32 %2435, 1
  %2438 = extractvalue %dx.types.CBufRet.f32 %2435, 2
  %2439 = extractvalue %dx.types.CBufRet.f32 %2435, 3
  %2440 = fmul fast float %2422, %2426
  %2441 = call float @dx.op.tertiary.f32(i32 46, float %2423, float %2427, float %2440)  ; FMad(a,b,c)
  %2442 = call float @dx.op.tertiary.f32(i32 46, float %2424, float %2428, float %2441)  ; FMad(a,b,c)
  %2443 = fadd fast float %2442, %2429
  %2444 = fmul fast float %2431, %2422
  %2445 = call float @dx.op.tertiary.f32(i32 46, float %2423, float %2432, float %2444)  ; FMad(a,b,c)
  %2446 = call float @dx.op.tertiary.f32(i32 46, float %2424, float %2433, float %2445)  ; FMad(a,b,c)
  %2447 = fadd fast float %2446, %2434
  %2448 = fmul fast float %2436, %2422
  %2449 = call float @dx.op.tertiary.f32(i32 46, float %2423, float %2437, float %2448)  ; FMad(a,b,c)
  %2450 = call float @dx.op.tertiary.f32(i32 46, float %2424, float %2438, float %2449)  ; FMad(a,b,c)
  %2451 = fadd fast float %2450, %2439
  %2452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %2453 = extractvalue %dx.types.CBufRet.f32 %2452, 1
  %2454 = extractvalue %dx.types.CBufRet.f32 %2452, 0
  %2455 = fmul fast float %2454, %152
  %2456 = fadd fast float %2451, %2455
  %2457 = fmul fast float %152, 0x401921FB60000000
  %2458 = call float @dx.op.unary.f32(i32 13, float %2457)  ; Sin(value)
  %2459 = call float @dx.op.unary.f32(i32 12, float %2457)  ; Cos(value)
  %2460 = fmul fast float %2459, %2453
  %2461 = call float @dx.op.tertiary.f32(i32 46, float %2458, float %2453, float 0.000000e+00)  ; FMad(a,b,c)
  %2462 = fmul fast float %2453, %2458
  %2463 = fsub fast float -0.000000e+00, %2462
  %2464 = call float @dx.op.tertiary.f32(i32 46, float %2459, float %2453, float 0.000000e+00)  ; FMad(a,b,c)
  br label %2465

; <label>:2465                                    ; preds = %2465, %2417
  %2466 = phi float [ 0.000000e+00, %2417 ], [ %2480, %2465 ]
  %2467 = phi i32 [ 0, %2417 ], [ %2481, %2465 ]
  %2468 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %2467
  %2469 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %2467
  %2470 = load float, float* %2468, align 4
  %2471 = load float, float* %2469, align 4
  %2472 = fmul fast float %2460, %2470
  %2473 = call float @dx.op.tertiary.f32(i32 46, float %2471, float %2463, float %2472)  ; FMad(a,b,c)
  %2474 = fmul fast float %2470, %2461
  %2475 = call float @dx.op.tertiary.f32(i32 46, float %2471, float %2464, float %2474)  ; FMad(a,b,c)
  %2476 = fadd fast float %2443, %2473
  %2477 = fadd fast float %2447, %2475
  %2478 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %23, float %2476, float %2477, float undef, float undef, i32 0, i32 0, i32 undef, float %2456)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2479 = extractvalue %dx.types.ResRet.f32 %2478, 0
  %2480 = fadd fast float %2479, %2466
  %2481 = add nuw nsw i32 %2467, 1
  %2482 = icmp eq i32 %2481, 4
  br i1 %2482, label %2483, label %2465

; <label>:2483                                    ; preds = %2465
  %2484 = fmul fast float %2480, 2.500000e-01
  %2485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %2486 = extractvalue %dx.types.CBufRet.f32 %2485, 1
  %2487 = fmul fast float %2486, %2484
  br label %2488

; <label>:2488                                    ; preds = %2483, %2388
  %2489 = phi float [ %2484, %2483 ], [ 0.000000e+00, %2388 ]
  %2490 = phi float [ %2487, %2483 ], [ 0.000000e+00, %2388 ]
  %2491 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %2492 = extractvalue %dx.types.CBufRet.i32 %2491, 0
  %2493 = and i32 %2492, 7
  %2494 = icmp eq i32 %2493, 0
  br i1 %2494, label %2572, label %2495

; <label>:2495                                    ; preds = %2488
  %2496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %2497 = extractvalue %dx.types.CBufRet.f32 %2496, 0
  %2498 = fmul fast float %2497, %2489
  %2499 = fadd fast float %2498, %2412
  %2500 = extractvalue %dx.types.CBufRet.f32 %2496, 2
  %2501 = fmul fast float %2500, %2489
  %2502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %2503 = extractvalue %dx.types.CBufRet.f32 %2502, 0
  %2504 = fmul fast float %2503, %2489
  %2505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2506 = and i32 %2492, 8
  %2507 = icmp eq i32 %2506, 0
  br i1 %2507, label %2572, label %2508

; <label>:2508                                    ; preds = %2495
  %2509 = extractvalue %dx.types.CBufRet.f32 %2505, 2
  %2510 = fadd fast float %2509, %100
  %2511 = extractvalue %dx.types.CBufRet.f32 %2505, 1
  %2512 = fadd fast float %2511, %99
  %2513 = extractvalue %dx.types.CBufRet.f32 %2505, 0
  %2514 = fadd fast float %2513, %98
  %2515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %2516 = extractvalue %dx.types.CBufRet.f32 %2515, 0
  %2517 = extractvalue %dx.types.CBufRet.f32 %2515, 1
  %2518 = extractvalue %dx.types.CBufRet.f32 %2515, 2
  %2519 = fsub fast float %2514, %2516
  %2520 = fsub fast float %2512, %2517
  %2521 = fsub fast float %2510, %2518
  %2522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %2523 = extractvalue %dx.types.CBufRet.f32 %2522, 0
  %2524 = extractvalue %dx.types.CBufRet.f32 %2522, 1
  %2525 = extractvalue %dx.types.CBufRet.f32 %2522, 2
  %2526 = fmul fast float %2519, %2523
  %2527 = fmul fast float %2520, %2524
  %2528 = fmul fast float %2521, %2525
  %2529 = fcmp fast oge float %2526, 0.000000e+00
  %2530 = fcmp fast oge float %2527, 0.000000e+00
  %2531 = fcmp fast oge float %2528, 0.000000e+00
  %2532 = and i1 %2529, %2530
  %2533 = and i1 %2531, %2532
  %2534 = fcmp fast ole float %2526, 1.000000e+00
  %2535 = fcmp fast ole float %2527, 1.000000e+00
  %2536 = fcmp fast ole float %2528, 1.000000e+00
  %2537 = and i1 %2534, %2535
  %2538 = and i1 %2536, %2537
  %2539 = and i1 %2533, %2538
  br i1 %2539, label %2540, label %2572

; <label>:2540                                    ; preds = %2508
  %2541 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %2542 = extractvalue %dx.types.CBufRet.i32 %2541, 0
  %2543 = icmp eq i32 %2542, 0
  br i1 %2543, label %2550, label %2544

; <label>:2544                                    ; preds = %2540
  %2545 = add i32 %2542, 0
  %2546 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2545, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2547 = fsub fast float -0.000000e+00, %2527
  %2548 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2546, %dx.types.Handle %48, float %2526, float %2547, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2549 = extractvalue %dx.types.ResRet.f32 %2548, 0
  br label %2550

; <label>:2550                                    ; preds = %2544, %2540
  %2551 = phi float [ %2549, %2544 ], [ 1.000000e+00, %2540 ]
  %2552 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %2553 = extractvalue %dx.types.CBufRet.i32 %2552, 0
  %2554 = and i32 %2553, 32
  %2555 = icmp ne i32 %2554, 0
  %2556 = fmul fast float %2551, %2489
  %2557 = select i1 %2555, float %2551, float %2556
  %2558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %2559 = extractvalue %dx.types.CBufRet.f32 %2558, 1
  %2560 = fmul fast float %2557, %2559
  %2561 = fadd fast float %2560, %2499
  %2562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %2563 = extractvalue %dx.types.CBufRet.f32 %2562, 0
  %2564 = fmul fast float %2557, %2563
  %2565 = fadd fast float %2564, %2490
  %2566 = extractvalue %dx.types.CBufRet.f32 %2562, 1
  %2567 = fmul fast float %2557, %2566
  %2568 = fadd fast float %2567, %2501
  %2569 = extractvalue %dx.types.CBufRet.f32 %2562, 2
  %2570 = fmul fast float %2569, %2557
  %2571 = fadd fast float %2570, %2504
  br label %2572

; <label>:2572                                    ; preds = %2550, %2508, %2495, %2488, %1442
  %2573 = phi float [ %2412, %2488 ], [ %1446, %1442 ], [ %2561, %2550 ], [ %2499, %2508 ], [ %2499, %2495 ]
  %2574 = phi float [ %2490, %2488 ], [ 0.000000e+00, %1442 ], [ %2565, %2550 ], [ %2490, %2508 ], [ %2490, %2495 ]
  %2575 = phi float [ 0.000000e+00, %2488 ], [ 0.000000e+00, %1442 ], [ %2568, %2550 ], [ %2501, %2508 ], [ %2501, %2495 ]
  %2576 = phi float [ 0.000000e+00, %2488 ], [ 0.000000e+00, %1442 ], [ %2571, %2550 ], [ %2504, %2508 ], [ %2504, %2495 ]
  %2577 = call float @dx.op.unary.f32(i32 7, float %2573)  ; Saturate(value)
  %2578 = call float @dx.op.unary.f32(i32 7, float %2574)  ; Saturate(value)
  %2579 = call float @dx.op.unary.f32(i32 7, float %2575)  ; Saturate(value)
  %2580 = call float @dx.op.unary.f32(i32 7, float %2576)  ; Saturate(value)
  %2581 = fcmp fast une float %2579, 0.000000e+00
  %2582 = fcmp fast une float %2580, 0.000000e+00
  %2583 = or i1 %2581, %2582
  br i1 %2583, label %2584, label %3150

; <label>:2584                                    ; preds = %2572
  %2585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2586 = extractvalue %dx.types.CBufRet.f32 %2585, 0
  %2587 = extractvalue %dx.types.CBufRet.f32 %2585, 1
  %2588 = extractvalue %dx.types.CBufRet.f32 %2585, 2
  %2589 = fadd fast float %2586, %98
  %2590 = fadd fast float %2587, %99
  %2591 = fadd fast float %2588, %100
  br i1 %2581, label %2592, label %2865

; <label>:2592                                    ; preds = %2584
  %2593 = call float @dx.op.unary.f32(i32 23, float %1279)  ; Log(value)
  %2594 = fmul fast float %2593, 4.000000e+00
  %2595 = call float @dx.op.unary.f32(i32 21, float %2594)  ; Exp(value)
  %2596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %2597 = extractvalue %dx.types.CBufRet.f32 %2596, 0
  %2598 = fmul fast float %2597, %2589
  %2599 = fmul fast float %2597, %2590
  %2600 = fmul fast float %2597, %2591
  %2601 = call float @dx.op.unary.f32(i32 6, float %39)  ; FAbs(value)
  %2602 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %2603 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %2604 = call float @dx.op.unary.f32(i32 23, float %2601)  ; Log(value)
  %2605 = call float @dx.op.unary.f32(i32 23, float %2602)  ; Log(value)
  %2606 = call float @dx.op.unary.f32(i32 23, float %2603)  ; Log(value)
  %2607 = fmul fast float %2604, 4.000000e+00
  %2608 = fmul fast float %2605, 4.000000e+00
  %2609 = fmul fast float %2606, 4.000000e+00
  %2610 = call float @dx.op.unary.f32(i32 21, float %2607)  ; Exp(value)
  %2611 = call float @dx.op.unary.f32(i32 21, float %2608)  ; Exp(value)
  %2612 = call float @dx.op.unary.f32(i32 21, float %2609)  ; Exp(value)
  %2613 = fadd fast float %2611, %2610
  %2614 = fadd fast float %2613, %2612
  %2615 = fdiv fast float 1.000000e+00, %2614
  %2616 = fmul fast float %2615, %2610
  %2617 = fcmp fast ogt float %39, 0.000000e+00
  %2618 = fcmp fast ogt float %40, 0.000000e+00
  %2619 = fcmp fast ogt float %41, 0.000000e+00
  %2620 = fcmp fast olt float %39, 0.000000e+00
  %2621 = fcmp fast olt float %40, 0.000000e+00
  %2622 = fcmp fast olt float %41, 0.000000e+00
  %2623 = zext i1 %2617 to i32
  %2624 = zext i1 %2618 to i32
  %2625 = zext i1 %2619 to i32
  %2626 = zext i1 %2620 to i32
  %2627 = zext i1 %2621 to i32
  %2628 = zext i1 %2622 to i32
  %2629 = sub nsw i32 %2623, %2626
  %2630 = sub nsw i32 %2624, %2627
  %2631 = sub nsw i32 %2625, %2628
  %2632 = call float @dx.op.unary.f32(i32 83, float %2598)  ; DerivCoarseX(value)
  %2633 = call float @dx.op.unary.f32(i32 83, float %2599)  ; DerivCoarseX(value)
  %2634 = call float @dx.op.unary.f32(i32 83, float %2600)  ; DerivCoarseX(value)
  %2635 = call float @dx.op.unary.f32(i32 84, float %2598)  ; DerivCoarseY(value)
  %2636 = call float @dx.op.unary.f32(i32 84, float %2599)  ; DerivCoarseY(value)
  %2637 = call float @dx.op.unary.f32(i32 84, float %2600)  ; DerivCoarseY(value)
  %2638 = fcmp fast ole float %152, %2616
  %2639 = fmul fast float %2615, %2613
  %2640 = fcmp fast ole float %152, %2639
  %2641 = select i1 %2640, float %2600, float %2598
  %2642 = select i1 %2640, float %2598, float %2599
  %2643 = select i1 %2638, float %2599, float %2641
  %2644 = select i1 %2638, float %2600, float %2642
  %2645 = select i1 %2640, float %2634, float %2632
  %2646 = select i1 %2640, float %2632, float %2633
  %2647 = select i1 %2638, float %2633, float %2645
  %2648 = select i1 %2638, float %2634, float %2646
  %2649 = select i1 %2640, float %2637, float %2635
  %2650 = select i1 %2640, float %2635, float %2636
  %2651 = select i1 %2638, float %2636, float %2649
  %2652 = select i1 %2638, float %2637, float %2650
  %2653 = call float @dx.op.unary.f32(i32 27, float %2643)  ; Round_ni(value)
  %2654 = call float @dx.op.unary.f32(i32 27, float %2644)  ; Round_ni(value)
  %2655 = fptosi float %2653 to i32
  %2656 = fptosi float %2654 to i32
  %2657 = xor i32 %2656, %2655
  %2658 = sitofp i32 %2657 to float
  %2659 = fptosi float %2658 to i32
  %2660 = sitofp i32 %2659 to float
  %2661 = fmul fast float %2660, 0x3FE3C6EF40000000
  %2662 = frem fast float %2653, 2.560000e+02
  %2663 = frem fast float %2654, 2.560000e+02
  %2664 = fptoui float %2662 to i32
  %2665 = fptoui float %2663 to i32
  %2666 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %2664, i32 %2665, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2667 = extractvalue %dx.types.ResRet.f32 %2666, 0
  %2668 = extractvalue %dx.types.ResRet.f32 %2666, 1
  %2669 = extractvalue %dx.types.ResRet.f32 %2666, 2
  %2670 = fadd fast float %2667, %2661
  %2671 = fadd fast float %2668, %2661
  %2672 = fadd fast float %2669, %2661
  %2673 = call float @dx.op.unary.f32(i32 22, float %2670)  ; Frc(value)
  %2674 = call float @dx.op.unary.f32(i32 22, float %2671)  ; Frc(value)
  %2675 = call float @dx.op.unary.f32(i32 22, float %2672)  ; Frc(value)
  %2676 = fmul fast float %2675, 0x401921FB60000000
  %2677 = call float @dx.op.unary.f32(i32 13, float %2676)  ; Sin(value)
  %2678 = call float @dx.op.unary.f32(i32 12, float %2676)  ; Cos(value)
  %2679 = fsub fast float -0.000000e+00, %2678
  %2680 = fmul fast float %2678, %2643
  %2681 = call float @dx.op.tertiary.f32(i32 46, float %2677, float %2644, float %2680)  ; FMad(a,b,c)
  %2682 = fmul fast float %2677, %2643
  %2683 = call float @dx.op.tertiary.f32(i32 46, float %2679, float %2644, float %2682)  ; FMad(a,b,c)
  %2684 = fadd fast float %2681, %2673
  %2685 = fadd fast float %2683, %2674
  %2686 = extractvalue %dx.types.CBufRet.f32 %2596, 3
  %2687 = bitcast float %2686 to i32
  %2688 = icmp eq i32 %2687, 0
  br i1 %2688, label %2727, label %2689

; <label>:2689                                    ; preds = %2592
  %2690 = add i32 %2687, 0
  %2691 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2690, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2692 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2691, %dx.types.Handle %48, float %2684, float %2685, float undef, float undef, i32 0, i32 0, i32 undef, float %2647, float %2648, float undef, float %2651, float %2652, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2693 = extractvalue %dx.types.ResRet.f32 %2692, 0
  %2694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %2695 = extractvalue %dx.types.CBufRet.f32 %2694, 1
  %2696 = extractvalue %dx.types.CBufRet.f32 %2694, 2
  %2697 = fsub fast float 1.000000e+00, %2579
  %2698 = call float @dx.op.binary.f32(i32 35, float %2697, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2699 = bitcast float %2579 to i32
  %2700 = sitofp i32 %2699 to float
  %2701 = fadd fast float %2700, 0xC1CFBF8940000000
  %2702 = fmul fast float %2696, %2701
  %2703 = fadd fast float %2702, 0x41CFBF8940000000
  %2704 = fptosi float %2703 to i32
  %2705 = bitcast i32 %2704 to float
  %2706 = bitcast float %2698 to i32
  %2707 = sitofp i32 %2706 to float
  %2708 = fadd fast float %2707, 0xC1CFBF8940000000
  %2709 = fmul fast float %2708, %2696
  %2710 = fadd fast float %2709, 0x41CFBF8940000000
  %2711 = fptosi float %2710 to i32
  %2712 = bitcast i32 %2711 to float
  %2713 = fmul fast float %2705, %2695
  %2714 = fmul fast float %2712, %2695
  %2715 = fsub fast float %2698, %2713
  %2716 = fadd fast float %2714, %2698
  %2717 = call float @dx.op.unary.f32(i32 7, float %2715)  ; Saturate(value)
  %2718 = call float @dx.op.unary.f32(i32 7, float %2716)  ; Saturate(value)
  %2719 = fsub fast float %2693, %2717
  %2720 = fsub fast float %2718, %2717
  %2721 = bitcast float %2720 to i32
  %2722 = sub nsw i32 2129859010, %2721
  %2723 = bitcast i32 %2722 to float
  %2724 = fmul fast float %2723, %2719
  %2725 = call float @dx.op.unary.f32(i32 7, float %2724)  ; Saturate(value)
  %2726 = fcmp fast olt float %2725, 0x3F70101020000000
  br i1 %2726, label %2865, label %2727

; <label>:2727                                    ; preds = %2689, %2592
  %2728 = phi float [ %2725, %2689 ], [ %2579, %2592 ]
  %2729 = fmul fast float %2728, %2595
  %2730 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %2731 = extractvalue %dx.types.CBufRet.i32 %2730, 1
  %2732 = extractvalue %dx.types.CBufRet.i32 %2730, 0
  %2733 = add i32 %2732, 0
  %2734 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2733, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2735 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2734, %dx.types.Handle %47, float %2684, float %2685, float undef, float undef, i32 0, i32 0, i32 undef, float %2647, float %2648, float undef, float %2651, float %2652, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2736 = extractvalue %dx.types.ResRet.f32 %2735, 0
  %2737 = extractvalue %dx.types.ResRet.f32 %2735, 1
  %2738 = extractvalue %dx.types.ResRet.f32 %2735, 2
  %2739 = extractvalue %dx.types.ResRet.f32 %2735, 3
  %2740 = and i32 %2731, 255
  %2741 = uitofp i32 %2740 to float
  %2742 = lshr i32 %2731, 8
  %2743 = and i32 %2742, 255
  %2744 = uitofp i32 %2743 to float
  %2745 = fmul fast float %2739, %2741
  %2746 = fadd fast float %2745, %2744
  %2747 = fmul fast float %2746, 0x3F70101000000000
  %2748 = fadd fast float %2747, 0xBFB99999A0000000
  %2749 = call float @dx.op.unary.f32(i32 7, float %2748)  ; Saturate(value)
  %2750 = fmul fast float %2749, 0x3FF1C71C80000000
  %2751 = call float @dx.op.binary.f32(i32 36, float %2747, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2752 = fsub fast float 1.000000e+00, %2750
  %2753 = call float @dx.op.unary.f32(i32 7, float %2752)  ; Saturate(value)
  %2754 = fmul fast float %2753, %2736
  %2755 = fmul fast float %2753, %2737
  %2756 = fmul fast float %2753, %2738
  %2757 = call float @dx.op.unary.f32(i32 7, float %2754)  ; Saturate(value)
  %2758 = call float @dx.op.unary.f32(i32 7, float %2755)  ; Saturate(value)
  %2759 = call float @dx.op.unary.f32(i32 7, float %2756)  ; Saturate(value)
  %2760 = fmul fast float %2750, %2736
  %2761 = fmul fast float %2750, %2737
  %2762 = fmul fast float %2750, %2738
  %2763 = fadd fast float %2760, %2751
  %2764 = fadd fast float %2761, %2751
  %2765 = fadd fast float %2762, %2751
  %2766 = call float @dx.op.unary.f32(i32 7, float %2763)  ; Saturate(value)
  %2767 = call float @dx.op.unary.f32(i32 7, float %2764)  ; Saturate(value)
  %2768 = call float @dx.op.unary.f32(i32 7, float %2765)  ; Saturate(value)
  %2769 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %2770 = extractvalue %dx.types.CBufRet.i32 %2769, 3
  %2771 = extractvalue %dx.types.CBufRet.i32 %2769, 2
  %2772 = add i32 %2771, 0
  %2773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2772, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2774 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2773, %dx.types.Handle %47, float %2684, float %2685, float undef, float undef, i32 0, i32 0, i32 undef, float %2647, float %2648, float undef, float %2651, float %2652, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2775 = extractvalue %dx.types.ResRet.f32 %2774, 0
  %2776 = extractvalue %dx.types.ResRet.f32 %2774, 1
  %2777 = extractvalue %dx.types.ResRet.f32 %2774, 2
  %2778 = extractvalue %dx.types.ResRet.f32 %2774, 3
  %2779 = and i32 %2770, 255
  %2780 = uitofp i32 %2779 to float
  %2781 = lshr i32 %2770, 8
  %2782 = and i32 %2781, 255
  %2783 = uitofp i32 %2782 to float
  %2784 = lshr i32 %2770, 16
  %2785 = and i32 %2784, 255
  %2786 = uitofp i32 %2785 to float
  %2787 = fmul fast float %2786, 0x3F70101000000000
  %2788 = fmul fast float %2775, %2780
  %2789 = fadd fast float %2788, %2783
  %2790 = fmul fast float %2789, 0x3F70101000000000
  %2791 = fadd fast float %2776, -5.000000e-01
  %2792 = fadd fast float %2778, -5.000000e-01
  %2793 = fmul fast float %2791, %2787
  %2794 = fmul fast float %2792, %2787
  %2795 = fadd fast float %2793, 5.000000e-01
  %2796 = fadd fast float %2794, 5.000000e-01
  %2797 = fmul fast float %2795, 2.000000e+00
  %2798 = fadd fast float %2797, -1.000000e+00
  %2799 = fmul fast float %2796, 2.000000e+00
  %2800 = fadd fast float %2799, -1.000000e+00
  %2801 = fadd fast float %2798, %2800
  %2802 = fmul fast float %2801, 5.000000e-01
  %2803 = fsub fast float %2798, %2800
  %2804 = fmul fast float %2803, 5.000000e-01
  %2805 = call float @dx.op.unary.f32(i32 6, float %2802)  ; FAbs(value)
  %2806 = fsub fast float 1.000000e+00, %2805
  %2807 = call float @dx.op.unary.f32(i32 6, float %2804)  ; FAbs(value)
  %2808 = fsub fast float %2806, %2807
  %2809 = call float @dx.op.dot3.f32(i32 55, float %2802, float %2804, float %2808, float %2802, float %2804, float %2808)  ; Dot3(ax,ay,az,bx,by,bz)
  %2810 = call float @dx.op.unary.f32(i32 25, float %2809)  ; Rsqrt(value)
  %2811 = fmul fast float %2802, %2810
  %2812 = fmul fast float %2804, %2810
  %2813 = select i1 %2640, i32 %2630, i32 %2631
  %2814 = select i1 %2638, i32 %2629, i32 %2813
  %2815 = sitofp i32 %2814 to float
  %2816 = fmul fast float %2808, %2815
  %2817 = fmul fast float %2816, %2810
  %2818 = select i1 %2640, float %2817, float %2812
  %2819 = select i1 %2640, float %2812, float %2817
  %2820 = select i1 %2638, float %2817, float %2811
  %2821 = select i1 %2638, float %2812, float %2818
  %2822 = select i1 %2638, float %2811, float %2819
  %2823 = fsub fast float %2757, %1354
  %2824 = fsub fast float %2758, %1355
  %2825 = fsub fast float %2759, %1356
  %2826 = fmul fast float %2823, %2729
  %2827 = fmul fast float %2824, %2729
  %2828 = fmul fast float %2825, %2729
  %2829 = fadd fast float %2826, %1354
  %2830 = fadd fast float %2827, %1355
  %2831 = fadd fast float %2828, %1356
  %2832 = fsub fast float %2766, %1316
  %2833 = fsub fast float %2767, %1317
  %2834 = fsub fast float %2768, %1318
  %2835 = fmul fast float %2832, %2729
  %2836 = fmul fast float %2833, %2729
  %2837 = fmul fast float %2834, %2729
  %2838 = fadd fast float %2835, %1316
  %2839 = fadd fast float %2836, %1317
  %2840 = fadd fast float %2837, %1318
  %2841 = fadd fast float %2820, %1295
  %2842 = fadd fast float %2821, %1296
  %2843 = fadd fast float %2822, %1297
  %2844 = call float @dx.op.dot3.f32(i32 55, float %2841, float %2842, float %2843, float %2841, float %2842, float %2843)  ; Dot3(ax,ay,az,bx,by,bz)
  %2845 = call float @dx.op.unary.f32(i32 25, float %2844)  ; Rsqrt(value)
  %2846 = fmul fast float %2841, %2845
  %2847 = fmul fast float %2842, %2845
  %2848 = fmul fast float %2843, %2845
  %2849 = fsub fast float %2846, %1295
  %2850 = fsub fast float %2847, %1296
  %2851 = fsub fast float %2848, %1297
  %2852 = fmul fast float %2849, %2729
  %2853 = fmul fast float %2850, %2729
  %2854 = fmul fast float %2851, %2729
  %2855 = fadd fast float %2852, %1295
  %2856 = fadd fast float %2853, %1296
  %2857 = fadd fast float %2854, %1297
  %2858 = call float @dx.op.binary.f32(i32 36, float %1279, float %2777)  ; FMin(a,b)
  %2859 = fsub fast float %2858, %1279
  %2860 = fmul fast float %2859, %2729
  %2861 = fadd fast float %2860, %1279
  %2862 = fsub fast float %2790, %1319
  %2863 = fmul fast float %2862, %2729
  %2864 = fadd fast float %2863, %1319
  br label %2865

; <label>:2865                                    ; preds = %2727, %2689, %2584
  %2866 = phi float [ %2829, %2727 ], [ %1354, %2689 ], [ %1354, %2584 ]
  %2867 = phi float [ %2830, %2727 ], [ %1355, %2689 ], [ %1355, %2584 ]
  %2868 = phi float [ %2831, %2727 ], [ %1356, %2689 ], [ %1356, %2584 ]
  %2869 = phi float [ %2838, %2727 ], [ %1316, %2689 ], [ %1316, %2584 ]
  %2870 = phi float [ %2839, %2727 ], [ %1317, %2689 ], [ %1317, %2584 ]
  %2871 = phi float [ %2840, %2727 ], [ %1318, %2689 ], [ %1318, %2584 ]
  %2872 = phi float [ %2855, %2727 ], [ %1295, %2689 ], [ %1295, %2584 ]
  %2873 = phi float [ %2856, %2727 ], [ %1296, %2689 ], [ %1296, %2584 ]
  %2874 = phi float [ %2857, %2727 ], [ %1297, %2689 ], [ %1297, %2584 ]
  %2875 = phi float [ %2864, %2727 ], [ %1319, %2689 ], [ %1319, %2584 ]
  %2876 = phi float [ %2861, %2727 ], [ %1279, %2689 ], [ %1279, %2584 ]
  br i1 %2582, label %2877, label %3150

; <label>:2877                                    ; preds = %2865
  %2878 = call float @dx.op.unary.f32(i32 23, float %2876)  ; Log(value)
  %2879 = fmul fast float %2878, 4.000000e+00
  %2880 = call float @dx.op.unary.f32(i32 21, float %2879)  ; Exp(value)
  %2881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %2882 = extractvalue %dx.types.CBufRet.f32 %2881, 0
  %2883 = fmul fast float %2882, %2589
  %2884 = fmul fast float %2882, %2590
  %2885 = fmul fast float %2882, %2591
  %2886 = call float @dx.op.unary.f32(i32 6, float %39)  ; FAbs(value)
  %2887 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %2888 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %2889 = call float @dx.op.unary.f32(i32 23, float %2886)  ; Log(value)
  %2890 = call float @dx.op.unary.f32(i32 23, float %2887)  ; Log(value)
  %2891 = call float @dx.op.unary.f32(i32 23, float %2888)  ; Log(value)
  %2892 = fmul fast float %2889, 4.000000e+00
  %2893 = fmul fast float %2890, 4.000000e+00
  %2894 = fmul fast float %2891, 4.000000e+00
  %2895 = call float @dx.op.unary.f32(i32 21, float %2892)  ; Exp(value)
  %2896 = call float @dx.op.unary.f32(i32 21, float %2893)  ; Exp(value)
  %2897 = call float @dx.op.unary.f32(i32 21, float %2894)  ; Exp(value)
  %2898 = fadd fast float %2896, %2895
  %2899 = fadd fast float %2898, %2897
  %2900 = fdiv fast float 1.000000e+00, %2899
  %2901 = fmul fast float %2900, %2895
  %2902 = fcmp fast ogt float %39, 0.000000e+00
  %2903 = fcmp fast ogt float %40, 0.000000e+00
  %2904 = fcmp fast ogt float %41, 0.000000e+00
  %2905 = fcmp fast olt float %39, 0.000000e+00
  %2906 = fcmp fast olt float %40, 0.000000e+00
  %2907 = fcmp fast olt float %41, 0.000000e+00
  %2908 = zext i1 %2902 to i32
  %2909 = zext i1 %2903 to i32
  %2910 = zext i1 %2904 to i32
  %2911 = zext i1 %2905 to i32
  %2912 = zext i1 %2906 to i32
  %2913 = zext i1 %2907 to i32
  %2914 = sub nsw i32 %2908, %2911
  %2915 = sub nsw i32 %2909, %2912
  %2916 = sub nsw i32 %2910, %2913
  %2917 = call float @dx.op.unary.f32(i32 83, float %2883)  ; DerivCoarseX(value)
  %2918 = call float @dx.op.unary.f32(i32 83, float %2884)  ; DerivCoarseX(value)
  %2919 = call float @dx.op.unary.f32(i32 83, float %2885)  ; DerivCoarseX(value)
  %2920 = call float @dx.op.unary.f32(i32 84, float %2883)  ; DerivCoarseY(value)
  %2921 = call float @dx.op.unary.f32(i32 84, float %2884)  ; DerivCoarseY(value)
  %2922 = call float @dx.op.unary.f32(i32 84, float %2885)  ; DerivCoarseY(value)
  %2923 = fcmp fast ole float %152, %2901
  %2924 = fmul fast float %2900, %2898
  %2925 = fcmp fast ole float %152, %2924
  %2926 = select i1 %2925, float %2885, float %2883
  %2927 = select i1 %2925, float %2883, float %2884
  %2928 = select i1 %2923, float %2884, float %2926
  %2929 = select i1 %2923, float %2885, float %2927
  %2930 = select i1 %2925, float %2919, float %2917
  %2931 = select i1 %2925, float %2917, float %2918
  %2932 = select i1 %2923, float %2918, float %2930
  %2933 = select i1 %2923, float %2919, float %2931
  %2934 = select i1 %2925, float %2922, float %2920
  %2935 = select i1 %2925, float %2920, float %2921
  %2936 = select i1 %2923, float %2921, float %2934
  %2937 = select i1 %2923, float %2922, float %2935
  %2938 = call float @dx.op.unary.f32(i32 27, float %2928)  ; Round_ni(value)
  %2939 = call float @dx.op.unary.f32(i32 27, float %2929)  ; Round_ni(value)
  %2940 = fptosi float %2938 to i32
  %2941 = fptosi float %2939 to i32
  %2942 = xor i32 %2941, %2940
  %2943 = sitofp i32 %2942 to float
  %2944 = fptosi float %2943 to i32
  %2945 = sitofp i32 %2944 to float
  %2946 = fmul fast float %2945, 0x3FE3C6EF40000000
  %2947 = frem fast float %2938, 2.560000e+02
  %2948 = frem fast float %2939, 2.560000e+02
  %2949 = fptoui float %2947 to i32
  %2950 = fptoui float %2948 to i32
  %2951 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %2949, i32 %2950, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2952 = extractvalue %dx.types.ResRet.f32 %2951, 0
  %2953 = extractvalue %dx.types.ResRet.f32 %2951, 1
  %2954 = extractvalue %dx.types.ResRet.f32 %2951, 2
  %2955 = fadd fast float %2952, %2946
  %2956 = fadd fast float %2953, %2946
  %2957 = fadd fast float %2954, %2946
  %2958 = call float @dx.op.unary.f32(i32 22, float %2955)  ; Frc(value)
  %2959 = call float @dx.op.unary.f32(i32 22, float %2956)  ; Frc(value)
  %2960 = call float @dx.op.unary.f32(i32 22, float %2957)  ; Frc(value)
  %2961 = fmul fast float %2960, 0x401921FB60000000
  %2962 = call float @dx.op.unary.f32(i32 13, float %2961)  ; Sin(value)
  %2963 = call float @dx.op.unary.f32(i32 12, float %2961)  ; Cos(value)
  %2964 = fsub fast float -0.000000e+00, %2963
  %2965 = fmul fast float %2963, %2928
  %2966 = call float @dx.op.tertiary.f32(i32 46, float %2962, float %2929, float %2965)  ; FMad(a,b,c)
  %2967 = fmul fast float %2962, %2928
  %2968 = call float @dx.op.tertiary.f32(i32 46, float %2964, float %2929, float %2967)  ; FMad(a,b,c)
  %2969 = fadd fast float %2966, %2958
  %2970 = fadd fast float %2968, %2959
  %2971 = extractvalue %dx.types.CBufRet.f32 %2881, 3
  %2972 = bitcast float %2971 to i32
  %2973 = icmp eq i32 %2972, 0
  br i1 %2973, label %3012, label %2974

; <label>:2974                                    ; preds = %2877
  %2975 = add i32 %2972, 0
  %2976 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2975, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2977 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2976, %dx.types.Handle %48, float %2969, float %2970, float undef, float undef, i32 0, i32 0, i32 undef, float %2932, float %2933, float undef, float %2936, float %2937, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2978 = extractvalue %dx.types.ResRet.f32 %2977, 0
  %2979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %2980 = extractvalue %dx.types.CBufRet.f32 %2979, 1
  %2981 = extractvalue %dx.types.CBufRet.f32 %2979, 2
  %2982 = fsub fast float 1.000000e+00, %2580
  %2983 = call float @dx.op.binary.f32(i32 35, float %2982, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2984 = bitcast float %2580 to i32
  %2985 = sitofp i32 %2984 to float
  %2986 = fadd fast float %2985, 0xC1CFBF8940000000
  %2987 = fmul fast float %2981, %2986
  %2988 = fadd fast float %2987, 0x41CFBF8940000000
  %2989 = fptosi float %2988 to i32
  %2990 = bitcast i32 %2989 to float
  %2991 = bitcast float %2983 to i32
  %2992 = sitofp i32 %2991 to float
  %2993 = fadd fast float %2992, 0xC1CFBF8940000000
  %2994 = fmul fast float %2993, %2981
  %2995 = fadd fast float %2994, 0x41CFBF8940000000
  %2996 = fptosi float %2995 to i32
  %2997 = bitcast i32 %2996 to float
  %2998 = fmul fast float %2990, %2980
  %2999 = fmul fast float %2997, %2980
  %3000 = fsub fast float %2983, %2998
  %3001 = fadd fast float %2999, %2983
  %3002 = call float @dx.op.unary.f32(i32 7, float %3000)  ; Saturate(value)
  %3003 = call float @dx.op.unary.f32(i32 7, float %3001)  ; Saturate(value)
  %3004 = fsub fast float %2978, %3002
  %3005 = fsub fast float %3003, %3002
  %3006 = bitcast float %3005 to i32
  %3007 = sub nsw i32 2129859010, %3006
  %3008 = bitcast i32 %3007 to float
  %3009 = fmul fast float %3008, %3004
  %3010 = call float @dx.op.unary.f32(i32 7, float %3009)  ; Saturate(value)
  %3011 = fcmp fast olt float %3010, 0x3F70101020000000
  br i1 %3011, label %3150, label %3012

; <label>:3012                                    ; preds = %2974, %2877
  %3013 = phi float [ %3010, %2974 ], [ %2580, %2877 ]
  %3014 = fmul fast float %3013, %2880
  %3015 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %3016 = extractvalue %dx.types.CBufRet.i32 %3015, 1
  %3017 = extractvalue %dx.types.CBufRet.i32 %3015, 0
  %3018 = add i32 %3017, 0
  %3019 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3018, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3020 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3019, %dx.types.Handle %47, float %2969, float %2970, float undef, float undef, i32 0, i32 0, i32 undef, float %2932, float %2933, float undef, float %2936, float %2937, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3021 = extractvalue %dx.types.ResRet.f32 %3020, 0
  %3022 = extractvalue %dx.types.ResRet.f32 %3020, 1
  %3023 = extractvalue %dx.types.ResRet.f32 %3020, 2
  %3024 = extractvalue %dx.types.ResRet.f32 %3020, 3
  %3025 = and i32 %3016, 255
  %3026 = uitofp i32 %3025 to float
  %3027 = lshr i32 %3016, 8
  %3028 = and i32 %3027, 255
  %3029 = uitofp i32 %3028 to float
  %3030 = fmul fast float %3024, %3026
  %3031 = fadd fast float %3030, %3029
  %3032 = fmul fast float %3031, 0x3F70101000000000
  %3033 = fadd fast float %3032, 0xBFB99999A0000000
  %3034 = call float @dx.op.unary.f32(i32 7, float %3033)  ; Saturate(value)
  %3035 = fmul fast float %3034, 0x3FF1C71C80000000
  %3036 = call float @dx.op.binary.f32(i32 36, float %3032, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3037 = fsub fast float 1.000000e+00, %3035
  %3038 = call float @dx.op.unary.f32(i32 7, float %3037)  ; Saturate(value)
  %3039 = fmul fast float %3038, %3021
  %3040 = fmul fast float %3038, %3022
  %3041 = fmul fast float %3038, %3023
  %3042 = call float @dx.op.unary.f32(i32 7, float %3039)  ; Saturate(value)
  %3043 = call float @dx.op.unary.f32(i32 7, float %3040)  ; Saturate(value)
  %3044 = call float @dx.op.unary.f32(i32 7, float %3041)  ; Saturate(value)
  %3045 = fmul fast float %3035, %3021
  %3046 = fmul fast float %3035, %3022
  %3047 = fmul fast float %3035, %3023
  %3048 = fadd fast float %3045, %3036
  %3049 = fadd fast float %3046, %3036
  %3050 = fadd fast float %3047, %3036
  %3051 = call float @dx.op.unary.f32(i32 7, float %3048)  ; Saturate(value)
  %3052 = call float @dx.op.unary.f32(i32 7, float %3049)  ; Saturate(value)
  %3053 = call float @dx.op.unary.f32(i32 7, float %3050)  ; Saturate(value)
  %3054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %3055 = extractvalue %dx.types.CBufRet.i32 %3054, 3
  %3056 = extractvalue %dx.types.CBufRet.i32 %3054, 2
  %3057 = add i32 %3056, 0
  %3058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3057, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3059 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3058, %dx.types.Handle %47, float %2969, float %2970, float undef, float undef, i32 0, i32 0, i32 undef, float %2932, float %2933, float undef, float %2936, float %2937, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3060 = extractvalue %dx.types.ResRet.f32 %3059, 0
  %3061 = extractvalue %dx.types.ResRet.f32 %3059, 1
  %3062 = extractvalue %dx.types.ResRet.f32 %3059, 2
  %3063 = extractvalue %dx.types.ResRet.f32 %3059, 3
  %3064 = and i32 %3055, 255
  %3065 = uitofp i32 %3064 to float
  %3066 = lshr i32 %3055, 8
  %3067 = and i32 %3066, 255
  %3068 = uitofp i32 %3067 to float
  %3069 = lshr i32 %3055, 16
  %3070 = and i32 %3069, 255
  %3071 = uitofp i32 %3070 to float
  %3072 = fmul fast float %3071, 0x3F70101000000000
  %3073 = fmul fast float %3060, %3065
  %3074 = fadd fast float %3073, %3068
  %3075 = fmul fast float %3074, 0x3F70101000000000
  %3076 = fadd fast float %3061, -5.000000e-01
  %3077 = fadd fast float %3063, -5.000000e-01
  %3078 = fmul fast float %3076, %3072
  %3079 = fmul fast float %3077, %3072
  %3080 = fadd fast float %3078, 5.000000e-01
  %3081 = fadd fast float %3079, 5.000000e-01
  %3082 = fmul fast float %3080, 2.000000e+00
  %3083 = fadd fast float %3082, -1.000000e+00
  %3084 = fmul fast float %3081, 2.000000e+00
  %3085 = fadd fast float %3084, -1.000000e+00
  %3086 = fadd fast float %3083, %3085
  %3087 = fmul fast float %3086, 5.000000e-01
  %3088 = fsub fast float %3083, %3085
  %3089 = fmul fast float %3088, 5.000000e-01
  %3090 = call float @dx.op.unary.f32(i32 6, float %3087)  ; FAbs(value)
  %3091 = fsub fast float 1.000000e+00, %3090
  %3092 = call float @dx.op.unary.f32(i32 6, float %3089)  ; FAbs(value)
  %3093 = fsub fast float %3091, %3092
  %3094 = call float @dx.op.dot3.f32(i32 55, float %3087, float %3089, float %3093, float %3087, float %3089, float %3093)  ; Dot3(ax,ay,az,bx,by,bz)
  %3095 = call float @dx.op.unary.f32(i32 25, float %3094)  ; Rsqrt(value)
  %3096 = fmul fast float %3087, %3095
  %3097 = fmul fast float %3089, %3095
  %3098 = select i1 %2925, i32 %2915, i32 %2916
  %3099 = select i1 %2923, i32 %2914, i32 %3098
  %3100 = sitofp i32 %3099 to float
  %3101 = fmul fast float %3093, %3100
  %3102 = fmul fast float %3101, %3095
  %3103 = select i1 %2925, float %3102, float %3097
  %3104 = select i1 %2925, float %3097, float %3102
  %3105 = select i1 %2923, float %3102, float %3096
  %3106 = select i1 %2923, float %3097, float %3103
  %3107 = select i1 %2923, float %3096, float %3104
  %3108 = fsub fast float %3042, %2866
  %3109 = fsub fast float %3043, %2867
  %3110 = fsub fast float %3044, %2868
  %3111 = fmul fast float %3108, %3014
  %3112 = fmul fast float %3109, %3014
  %3113 = fmul fast float %3110, %3014
  %3114 = fadd fast float %3111, %2866
  %3115 = fadd fast float %3112, %2867
  %3116 = fadd fast float %3113, %2868
  %3117 = fsub fast float %3051, %2869
  %3118 = fsub fast float %3052, %2870
  %3119 = fsub fast float %3053, %2871
  %3120 = fmul fast float %3117, %3014
  %3121 = fmul fast float %3118, %3014
  %3122 = fmul fast float %3119, %3014
  %3123 = fadd fast float %3120, %2869
  %3124 = fadd fast float %3121, %2870
  %3125 = fadd fast float %3122, %2871
  %3126 = fadd fast float %3105, %2872
  %3127 = fadd fast float %3106, %2873
  %3128 = fadd fast float %3107, %2874
  %3129 = call float @dx.op.dot3.f32(i32 55, float %3126, float %3127, float %3128, float %3126, float %3127, float %3128)  ; Dot3(ax,ay,az,bx,by,bz)
  %3130 = call float @dx.op.unary.f32(i32 25, float %3129)  ; Rsqrt(value)
  %3131 = fmul fast float %3126, %3130
  %3132 = fmul fast float %3127, %3130
  %3133 = fmul fast float %3128, %3130
  %3134 = fsub fast float %3131, %2872
  %3135 = fsub fast float %3132, %2873
  %3136 = fsub fast float %3133, %2874
  %3137 = fmul fast float %3134, %3014
  %3138 = fmul fast float %3135, %3014
  %3139 = fmul fast float %3136, %3014
  %3140 = fadd fast float %3137, %2872
  %3141 = fadd fast float %3138, %2873
  %3142 = fadd fast float %3139, %2874
  %3143 = call float @dx.op.binary.f32(i32 36, float %2876, float %3062)  ; FMin(a,b)
  %3144 = fsub fast float %3143, %2876
  %3145 = fmul fast float %3144, %3014
  %3146 = fadd fast float %3145, %2876
  %3147 = fsub fast float %3075, %2875
  %3148 = fmul fast float %3147, %3014
  %3149 = fadd fast float %3148, %2875
  br label %3150

; <label>:3150                                    ; preds = %3012, %2974, %2865, %2572
  %3151 = phi float [ %3114, %3012 ], [ %2866, %2974 ], [ %2866, %2865 ], [ %1354, %2572 ]
  %3152 = phi float [ %3115, %3012 ], [ %2867, %2974 ], [ %2867, %2865 ], [ %1355, %2572 ]
  %3153 = phi float [ %3116, %3012 ], [ %2868, %2974 ], [ %2868, %2865 ], [ %1356, %2572 ]
  %3154 = phi float [ %3123, %3012 ], [ %2869, %2974 ], [ %2869, %2865 ], [ %1316, %2572 ]
  %3155 = phi float [ %3124, %3012 ], [ %2870, %2974 ], [ %2870, %2865 ], [ %1317, %2572 ]
  %3156 = phi float [ %3125, %3012 ], [ %2871, %2974 ], [ %2871, %2865 ], [ %1318, %2572 ]
  %3157 = phi float [ %3140, %3012 ], [ %2872, %2974 ], [ %2872, %2865 ], [ %1295, %2572 ]
  %3158 = phi float [ %3141, %3012 ], [ %2873, %2974 ], [ %2873, %2865 ], [ %1296, %2572 ]
  %3159 = phi float [ %3142, %3012 ], [ %2874, %2974 ], [ %2874, %2865 ], [ %1297, %2572 ]
  %3160 = phi float [ %3149, %3012 ], [ %2875, %2974 ], [ %2875, %2865 ], [ %1319, %2572 ]
  %3161 = phi float [ %3146, %3012 ], [ %2876, %2974 ], [ %2876, %2865 ], [ %1279, %2572 ]
  %3162 = fcmp fast une float %2577, 0.000000e+00
  br i1 %3162, label %3163, label %3526

; <label>:3163                                    ; preds = %3150
  %3164 = call float @dx.op.dot3.f32(i32 55, float %98, float %99, float %100, float %98, float %99, float %100)  ; Dot3(ax,ay,az,bx,by,bz)
  %3165 = call float @dx.op.unary.f32(i32 25, float %3164)  ; Rsqrt(value)
  %3166 = fmul fast float %98, %3165
  %3167 = fsub fast float -0.000000e+00, %3166
  %3168 = fmul fast float %99, %3165
  %3169 = fsub fast float -0.000000e+00, %3168
  %3170 = fmul fast float %100, %3165
  %3171 = fsub fast float -0.000000e+00, %3170
  %3172 = call float @dx.op.dot3.f32(i32 55, float %3167, float %3169, float %3171, float %39, float %40, float %41)  ; Dot3(ax,ay,az,bx,by,bz)
  %3173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3174 = fmul fast float %2577, 2.500000e+00
  %3175 = call float @dx.op.unary.f32(i32 7, float %3174)  ; Saturate(value)
  %3176 = fmul fast float %2577, 0x4013FFFFE0000000
  %3177 = fadd fast float %3176, 0xBFFFFFFFE0000000
  %3178 = call float @dx.op.unary.f32(i32 7, float %3177)  ; Saturate(value)
  %3179 = fmul fast float %2577, 0x4004000020000000
  %3180 = fadd fast float %3179, 0xBFF8000040000000
  %3181 = call float @dx.op.unary.f32(i32 7, float %3180)  ; Saturate(value)
  %3182 = call float @dx.op.unary.f32(i32 7, float %3175)  ; Saturate(value)
  %3183 = fmul fast float %1298, 1.000000e+01
  %3184 = call float @dx.op.unary.f32(i32 7, float %3183)  ; Saturate(value)
  %3185 = fmul fast float %3184, 2.000000e+00
  %3186 = fsub fast float 3.000000e+00, %3185
  %3187 = fmul fast float %3184, %3184
  %3188 = fmul fast float %3187, %3186
  %3189 = fsub fast float 1.000000e+00, %3188
  %3190 = fsub fast float 0x3FE3333340000000, %3160
  %3191 = fmul fast float %3190, 0x400AAAAAA0000000
  %3192 = call float @dx.op.unary.f32(i32 7, float %3191)  ; Saturate(value)
  %3193 = fmul fast float %3189, %3192
  %3194 = fmul fast float %3151, 0x3FEA2B8620000000
  %3195 = fmul fast float %3152, 0x3FEA2B8620000000
  %3196 = fmul fast float %3153, 0x3FEA2B8620000000
  %3197 = fadd fast float %3194, 0x3FC81DFBA0000000
  %3198 = fmul fast float %3197, %3151
  %3199 = fadd fast float %3198, 0x3F910E6020000000
  %3200 = fadd fast float %3195, 0x3FC81DFBA0000000
  %3201 = fmul fast float %3200, %3152
  %3202 = fadd fast float %3201, 0x3F910E6020000000
  %3203 = fadd fast float %3196, 0x3FC81DFBA0000000
  %3204 = fmul fast float %3203, %3153
  %3205 = fadd fast float %3204, 0x3F910E6020000000
  %3206 = call float @dx.op.unary.f32(i32 7, float %3199)  ; Saturate(value)
  %3207 = call float @dx.op.unary.f32(i32 7, float %3202)  ; Saturate(value)
  %3208 = call float @dx.op.unary.f32(i32 7, float %3205)  ; Saturate(value)
  %3209 = fsub fast float %3206, %3151
  %3210 = fsub fast float %3207, %3152
  %3211 = fsub fast float %3208, %3153
  %3212 = fmul fast float %3209, %3182
  %3213 = fmul fast float %3212, %3193
  %3214 = fmul fast float %3210, %3182
  %3215 = fmul fast float %3214, %3193
  %3216 = fmul fast float %3211, %3182
  %3217 = fmul fast float %3216, %3193
  %3218 = fadd fast float %3213, %3151
  %3219 = fadd fast float %3215, %3152
  %3220 = fadd fast float %3217, %3153
  %3221 = fmul fast float %3161, %3161
  %3222 = fmul fast float %3221, %3221
  %3223 = fadd fast float %3178, 1.000000e+00
  %3224 = fsub fast float %3223, %3193
  %3225 = call float @dx.op.unary.f32(i32 7, float %3224)  ; Saturate(value)
  %3226 = call float @dx.op.dot3.f32(i32 55, float %39, float %40, float %41, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3227 = call float @dx.op.unary.f32(i32 7, float %3226)  ; Saturate(value)
  %3228 = fsub fast float 1.000000e+00, %3222
  %3229 = call float @dx.op.binary.f32(i32 36, float %3225, float %3228)  ; FMin(a,b)
  %3230 = call float @dx.op.unary.f32(i32 7, float %3181)  ; Saturate(value)
  %3231 = call float @dx.op.binary.f32(i32 35, float %3229, float %3230)  ; FMax(a,b)
  %3232 = fadd fast float %3227, 0xBFE4CCCCC0000000
  %3233 = fmul fast float %3232, 0x4006DB6DA0000000
  %3234 = call float @dx.op.unary.f32(i32 7, float %3233)  ; Saturate(value)
  %3235 = fmul fast float %3234, 2.000000e+00
  %3236 = fsub fast float 3.000000e+00, %3235
  %3237 = bitcast float %3154 to i32
  %3238 = ashr i32 %3237, 1
  %3239 = add nsw i32 %3238, 532487669
  %3240 = bitcast i32 %3239 to float
  %3241 = fsub fast float 1.000000e+00, %3240
  %3242 = bitcast float %3241 to i32
  %3243 = sub nsw i32 2129859010, %3242
  %3244 = bitcast i32 %3243 to float
  %3245 = fmul fast float %3244, 2.000000e+00
  %3246 = bitcast float %3155 to i32
  %3247 = ashr i32 %3246, 1
  %3248 = add nsw i32 %3247, 532487669
  %3249 = bitcast i32 %3248 to float
  %3250 = fsub fast float 1.000000e+00, %3249
  %3251 = bitcast float %3250 to i32
  %3252 = sub nsw i32 2129859010, %3251
  %3253 = bitcast i32 %3252 to float
  %3254 = fmul fast float %3253, 2.000000e+00
  %3255 = bitcast float %3156 to i32
  %3256 = ashr i32 %3255, 1
  %3257 = add nsw i32 %3256, 532487669
  %3258 = bitcast i32 %3257 to float
  %3259 = fsub fast float 1.000000e+00, %3258
  %3260 = bitcast float %3259 to i32
  %3261 = sub nsw i32 2129859010, %3260
  %3262 = bitcast i32 %3261 to float
  %3263 = fmul fast float %3262, 2.000000e+00
  %3264 = fsub fast float 0x4002A9FBE0000000, %3245
  %3265 = fadd fast float %3245, 0x3FD54FDF00000000
  %3266 = bitcast float %3265 to i32
  %3267 = sub nsw i32 2129859010, %3266
  %3268 = bitcast i32 %3267 to float
  %3269 = fmul fast float %3268, %3264
  %3270 = fmul fast float %3269, %3269
  %3271 = fsub fast float 0x4002A9FBE0000000, %3254
  %3272 = fadd fast float %3254, 0x3FD54FDF00000000
  %3273 = bitcast float %3272 to i32
  %3274 = sub nsw i32 2129859010, %3273
  %3275 = bitcast i32 %3274 to float
  %3276 = fmul fast float %3275, %3271
  %3277 = fmul fast float %3276, %3276
  %3278 = fsub fast float 0x4002A9FBE0000000, %3263
  %3279 = fadd fast float %3263, 0x3FD54FDF00000000
  %3280 = bitcast float %3279 to i32
  %3281 = sub nsw i32 2129859010, %3280
  %3282 = bitcast i32 %3281 to float
  %3283 = fmul fast float %3282, %3278
  %3284 = fmul fast float %3283, %3283
  %3285 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3270)  ; FMax(a,b)
  %3286 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3277)  ; FMax(a,b)
  %3287 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3284)  ; FMax(a,b)
  %3288 = fsub fast float 1.000000e+00, %3172
  %3289 = fadd fast float %3288, %3189
  %3290 = call float @dx.op.unary.f32(i32 7, float %3289)  ; Saturate(value)
  %3291 = fsub fast float 1.000000e+00, %1445
  %3292 = fmul fast float %3231, %3291
  %3293 = fmul fast float %3234, %3234
  %3294 = fmul fast float %3293, %3292
  %3295 = fmul fast float %3294, %3236
  %3296 = fmul fast float %3291, 0xBFE99999A0000000
  %3297 = fmul fast float %3296, %3182
  %3298 = fmul fast float %3297, %3193
  %3299 = fadd fast float %3298, 1.000000e+00
  %3300 = fadd fast float %3160, -1.000000e+00
  %3301 = fmul fast float %3299, %3300
  %3302 = fadd fast float %3301, 1.000000e+00
  %3303 = fsub fast float %3285, %3154
  %3304 = fsub fast float %3286, %3155
  %3305 = fsub fast float %3287, %3156
  %3306 = fmul fast float %3295, %3303
  %3307 = fmul fast float %3295, %3304
  %3308 = fmul fast float %3295, %3305
  %3309 = fadd fast float %3306, %3154
  %3310 = fadd fast float %3307, %3155
  %3311 = fadd fast float %3308, %3156
  %3312 = fsub fast float %39, %3157
  %3313 = fsub fast float %40, %3158
  %3314 = fsub fast float %41, %3159
  %3315 = fmul fast float %3295, %3312
  %3316 = fmul fast float %3295, %3313
  %3317 = fmul fast float %3295, %3314
  %3318 = fadd fast float %3315, %3157
  %3319 = fadd fast float %3316, %3158
  %3320 = fadd fast float %3317, %3159
  %3321 = fmul fast float %3295, %3290
  %3322 = call float @dx.op.unary.f32(i32 7, float %3302)  ; Saturate(value)
  %3323 = fsub fast float 1.000000e+00, %3322
  %3324 = fmul fast float %3321, %3323
  %3325 = fadd fast float %3324, %3322
  %3326 = fsub fast float 1.000000e+00, %3161
  %3327 = fmul fast float %3295, %3326
  %3328 = fadd fast float %3327, %3161
  %3329 = fcmp fast une float %2578, 0.000000e+00
  %3330 = fcmp fast ogt float %3227, 0x3FE4CCCCC0000000
  %3331 = and i1 %3329, %3330
  br i1 %3331, label %3332, label %3518

; <label>:3332                                    ; preds = %3163
  %3333 = extractvalue %dx.types.CBufRet.f32 %3173, 1
  %3334 = fadd fast float %3333, %99
  %3335 = extractvalue %dx.types.CBufRet.f32 %3173, 0
  %3336 = fadd fast float %3335, %98
  %3337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3338 = extractvalue %dx.types.CBufRet.f32 %3337, 3
  %3339 = fadd fast float %3338, 0x3FC0A3D700000000
  %3340 = fmul fast float %3339, 0x3FF6666660000000
  %3341 = fmul fast float %3338, 0x3FF2978D40000000
  %3342 = fmul fast float %3338, 0x3FF5BA5E40000000
  %3343 = fmul fast float %3338, 0x3FF94FDF40000000
  %3344 = call float @dx.op.unary.f32(i32 6, float %3336)  ; FAbs(value)
  %3345 = call float @dx.op.unary.f32(i32 6, float %3334)  ; FAbs(value)
  %3346 = fmul fast float %3344, 0x3F8EB851E0000000
  %3347 = fmul fast float %3345, 0x3F8EB851E0000000
  %3348 = fmul fast float %2578, 4.000000e+00
  %3349 = call float @dx.op.unary.f32(i32 7, float %3348)  ; Saturate(value)
  %3350 = fadd fast float %3346, 2.500000e-01
  %3351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %20, float %3350, float %3347, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3352 = extractvalue %dx.types.ResRet.f32 %3351, 0
  %3353 = extractvalue %dx.types.ResRet.f32 %3351, 1
  %3354 = extractvalue %dx.types.ResRet.f32 %3351, 2
  %3355 = extractvalue %dx.types.ResRet.f32 %3351, 3
  %3356 = fmul fast float %3353, 2.000000e+00
  %3357 = fmul fast float %3354, 2.000000e+00
  %3358 = fadd fast float %3356, -1.000000e+00
  %3359 = fadd fast float %3357, -1.000000e+00
  %3360 = fsub fast float 1.000000e+00, %3349
  %3361 = fmul fast float %3360, 8.000000e+00
  %3362 = call float @dx.op.unary.f32(i32 21, float %3361)  ; Exp(value)
  %3363 = fmul fast float %3355, %3362
  %3364 = fadd fast float %3340, -1.000000e+00
  %3365 = fadd fast float %3364, %3355
  %3366 = fadd fast float %3365, %3363
  %3367 = frem fast float %3366, %3362
  %3368 = fcmp fast ole float %3367, 1.000000e+00
  %3369 = call float @dx.op.unary.f32(i32 22, float %3367)  ; Frc(value)
  %3370 = select i1 %3368, float %3369, float 0.000000e+00
  %3371 = fadd fast float %3352, -1.000000e+00
  %3372 = fadd fast float %3371, %3370
  %3373 = fsub fast float 1.000000e+00, %3370
  %3374 = call float @dx.op.unary.f32(i32 7, float %3373)  ; Saturate(value)
  %3375 = fmul fast float %3374, %3352
  %3376 = fmul fast float %3372, 8.000000e+00
  %3377 = call float @dx.op.binary.f32(i32 35, float %3376, float 0.000000e+00)  ; FMax(a,b)
  %3378 = call float @dx.op.binary.f32(i32 36, float %3377, float 4.000000e+00)  ; FMin(a,b)
  %3379 = fmul fast float %3378, 0x400921FB60000000
  %3380 = call float @dx.op.unary.f32(i32 13, float %3379)  ; Sin(value)
  %3381 = fadd fast float %3370, -1.000000e+00
  %3382 = fmul fast float %3375, %3381
  %3383 = fmul fast float %3382, %3380
  %3384 = fmul fast float %3383, %3358
  %3385 = fmul fast float %3383, %3359
  %3386 = fadd fast float %3348, -1.000000e+00
  %3387 = call float @dx.op.unary.f32(i32 7, float %3386)  ; Saturate(value)
  %3388 = fadd fast float %3346, 0xBFE19999A0000000
  %3389 = fadd fast float %3347, 0x3FD3D70A40000000
  %3390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %20, float %3388, float %3389, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3391 = extractvalue %dx.types.ResRet.f32 %3390, 0
  %3392 = extractvalue %dx.types.ResRet.f32 %3390, 1
  %3393 = extractvalue %dx.types.ResRet.f32 %3390, 2
  %3394 = extractvalue %dx.types.ResRet.f32 %3390, 3
  %3395 = fmul fast float %3392, 2.000000e+00
  %3396 = fmul fast float %3393, 2.000000e+00
  %3397 = fadd fast float %3395, -1.000000e+00
  %3398 = fadd fast float %3396, -1.000000e+00
  %3399 = fsub fast float 1.000000e+00, %3387
  %3400 = fmul fast float %3399, 8.000000e+00
  %3401 = call float @dx.op.unary.f32(i32 21, float %3400)  ; Exp(value)
  %3402 = fmul fast float %3394, %3401
  %3403 = fadd fast float %3341, 0xBFE5B22D00000000
  %3404 = fadd fast float %3403, %3394
  %3405 = fadd fast float %3404, %3402
  %3406 = frem fast float %3405, %3401
  %3407 = fcmp fast ole float %3406, 1.000000e+00
  %3408 = call float @dx.op.unary.f32(i32 22, float %3406)  ; Frc(value)
  %3409 = select i1 %3407, float %3408, float 0.000000e+00
  %3410 = fadd fast float %3391, -1.000000e+00
  %3411 = fadd fast float %3410, %3409
  %3412 = fsub fast float 1.000000e+00, %3409
  %3413 = call float @dx.op.unary.f32(i32 7, float %3412)  ; Saturate(value)
  %3414 = fmul fast float %3413, %3391
  %3415 = fmul fast float %3411, 8.000000e+00
  %3416 = call float @dx.op.binary.f32(i32 35, float %3415, float 0.000000e+00)  ; FMax(a,b)
  %3417 = call float @dx.op.binary.f32(i32 36, float %3416, float 4.000000e+00)  ; FMin(a,b)
  %3418 = fmul fast float %3417, 0x400921FB60000000
  %3419 = call float @dx.op.unary.f32(i32 13, float %3418)  ; Sin(value)
  %3420 = fadd fast float %3409, -1.000000e+00
  %3421 = fmul fast float %3414, %3420
  %3422 = fmul fast float %3421, %3419
  %3423 = fmul fast float %3422, %3397
  %3424 = fmul fast float %3422, %3398
  %3425 = fadd fast float %3348, -2.000000e+00
  %3426 = call float @dx.op.unary.f32(i32 7, float %3425)  ; Saturate(value)
  %3427 = fadd fast float %3346, 0x3FE3333340000000
  %3428 = fadd fast float %3347, 0x3FEB333340000000
  %3429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %20, float %3427, float %3428, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3430 = extractvalue %dx.types.ResRet.f32 %3429, 0
  %3431 = extractvalue %dx.types.ResRet.f32 %3429, 1
  %3432 = extractvalue %dx.types.ResRet.f32 %3429, 2
  %3433 = extractvalue %dx.types.ResRet.f32 %3429, 3
  %3434 = fmul fast float %3431, 2.000000e+00
  %3435 = fmul fast float %3432, 2.000000e+00
  %3436 = fadd fast float %3434, -1.000000e+00
  %3437 = fadd fast float %3435, -1.000000e+00
  %3438 = fsub fast float 1.000000e+00, %3426
  %3439 = fmul fast float %3438, 8.000000e+00
  %3440 = call float @dx.op.unary.f32(i32 21, float %3439)  ; Exp(value)
  %3441 = fmul fast float %3433, %3440
  %3442 = fadd fast float %3342, 0xBFD5E35400000000
  %3443 = fadd fast float %3442, %3433
  %3444 = fadd fast float %3443, %3441
  %3445 = frem fast float %3444, %3440
  %3446 = fcmp fast ole float %3445, 1.000000e+00
  %3447 = call float @dx.op.unary.f32(i32 22, float %3445)  ; Frc(value)
  %3448 = select i1 %3446, float %3447, float 0.000000e+00
  %3449 = fadd fast float %3430, -1.000000e+00
  %3450 = fadd fast float %3449, %3448
  %3451 = fsub fast float 1.000000e+00, %3448
  %3452 = call float @dx.op.unary.f32(i32 7, float %3451)  ; Saturate(value)
  %3453 = fmul fast float %3452, %3430
  %3454 = fmul fast float %3450, 8.000000e+00
  %3455 = call float @dx.op.binary.f32(i32 35, float %3454, float 0.000000e+00)  ; FMax(a,b)
  %3456 = call float @dx.op.binary.f32(i32 36, float %3455, float 4.000000e+00)  ; FMin(a,b)
  %3457 = fmul fast float %3456, 0x400921FB60000000
  %3458 = call float @dx.op.unary.f32(i32 13, float %3457)  ; Sin(value)
  %3459 = fadd fast float %3448, -1.000000e+00
  %3460 = fmul fast float %3453, %3459
  %3461 = fmul fast float %3460, %3458
  %3462 = fmul fast float %3461, %3436
  %3463 = fmul fast float %3461, %3437
  %3464 = fadd fast float %3348, -3.000000e+00
  %3465 = call float @dx.op.unary.f32(i32 7, float %3464)  ; Saturate(value)
  %3466 = fadd fast float %3346, 5.000000e-01
  %3467 = fadd fast float %3347, -7.500000e-01
  %3468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %20, float %3466, float %3467, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3469 = extractvalue %dx.types.ResRet.f32 %3468, 0
  %3470 = extractvalue %dx.types.ResRet.f32 %3468, 1
  %3471 = extractvalue %dx.types.ResRet.f32 %3468, 2
  %3472 = extractvalue %dx.types.ResRet.f32 %3468, 3
  %3473 = fmul fast float %3470, 2.000000e+00
  %3474 = fmul fast float %3471, 2.000000e+00
  %3475 = fadd fast float %3473, -1.000000e+00
  %3476 = fadd fast float %3474, -1.000000e+00
  %3477 = fsub fast float 1.000000e+00, %3465
  %3478 = fmul fast float %3477, 8.000000e+00
  %3479 = call float @dx.op.unary.f32(i32 21, float %3478)  ; Exp(value)
  %3480 = fmul fast float %3472, %3479
  %3481 = fadd fast float %3343, 0xBF78938000000000
  %3482 = fadd fast float %3481, %3472
  %3483 = fadd fast float %3482, %3480
  %3484 = frem fast float %3483, %3479
  %3485 = fcmp fast ole float %3484, 1.000000e+00
  %3486 = call float @dx.op.unary.f32(i32 22, float %3484)  ; Frc(value)
  %3487 = select i1 %3485, float %3486, float 0.000000e+00
  %3488 = fadd fast float %3469, -1.000000e+00
  %3489 = fadd fast float %3488, %3487
  %3490 = fsub fast float 1.000000e+00, %3487
  %3491 = call float @dx.op.unary.f32(i32 7, float %3490)  ; Saturate(value)
  %3492 = fmul fast float %3491, %3469
  %3493 = fmul fast float %3489, 8.000000e+00
  %3494 = call float @dx.op.binary.f32(i32 35, float %3493, float 0.000000e+00)  ; FMax(a,b)
  %3495 = call float @dx.op.binary.f32(i32 36, float %3494, float 4.000000e+00)  ; FMin(a,b)
  %3496 = fmul fast float %3495, 0x400921FB60000000
  %3497 = call float @dx.op.unary.f32(i32 13, float %3496)  ; Sin(value)
  %3498 = fadd fast float %3487, -1.000000e+00
  %3499 = fmul fast float %3492, %3498
  %3500 = fmul fast float %3499, %3497
  %3501 = fmul fast float %3500, %3475
  %3502 = fmul fast float %3500, %3476
  %3503 = fadd fast float %3423, %3384
  %3504 = fadd fast float %3424, %3385
  %3505 = fadd fast float %3503, %3462
  %3506 = fadd fast float %3504, %3463
  %3507 = fadd fast float %3505, %3501
  %3508 = fadd fast float %3506, %3502
  %3509 = fmul fast float %3227, 0x4006DB6DA0000000
  %3510 = fadd fast float %3509, 0xBFFDB6DB40000000
  %3511 = call float @dx.op.unary.f32(i32 7, float %3510)  ; Saturate(value)
  %3512 = fmul fast float %3511, %3182
  %3513 = fmul fast float %3512, %3291
  %3514 = fmul fast float %3513, %3507
  %3515 = fmul fast float %3513, %3508
  %3516 = fadd fast float %3514, %3318
  %3517 = fadd fast float %3515, %3319
  br label %3518

; <label>:3518                                    ; preds = %3332, %3163
  %3519 = phi float [ %3318, %3163 ], [ %3516, %3332 ]
  %3520 = phi float [ %3319, %3163 ], [ %3517, %3332 ]
  %3521 = call float @dx.op.dot3.f32(i32 55, float %3519, float %3520, float %3320, float %3519, float %3520, float %3320)  ; Dot3(ax,ay,az,bx,by,bz)
  %3522 = call float @dx.op.unary.f32(i32 25, float %3521)  ; Rsqrt(value)
  %3523 = fmul fast float %3522, %3519
  %3524 = fmul fast float %3522, %3520
  %3525 = fmul fast float %3522, %3320
  br label %3526

; <label>:3526                                    ; preds = %3518, %3150
  %3527 = phi float [ %3218, %3518 ], [ %3151, %3150 ]
  %3528 = phi float [ %3219, %3518 ], [ %3152, %3150 ]
  %3529 = phi float [ %3220, %3518 ], [ %3153, %3150 ]
  %3530 = phi float [ %3309, %3518 ], [ %3154, %3150 ]
  %3531 = phi float [ %3310, %3518 ], [ %3155, %3150 ]
  %3532 = phi float [ %3311, %3518 ], [ %3156, %3150 ]
  %3533 = phi float [ %3523, %3518 ], [ %3157, %3150 ]
  %3534 = phi float [ %3524, %3518 ], [ %3158, %3150 ]
  %3535 = phi float [ %3525, %3518 ], [ %3159, %3150 ]
  %3536 = phi float [ %3325, %3518 ], [ %3160, %3150 ]
  %3537 = phi float [ %3328, %3518 ], [ %3161, %3150 ]
  %3538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3539 = extractvalue %dx.types.CBufRet.f32 %3538, 2
  %3540 = extractvalue %dx.types.CBufRet.f32 %3538, 3
  %3541 = fmul fast float %3539, %51
  %3542 = fmul fast float %3540, %52
  %3543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %3544 = extractvalue %dx.types.CBufRet.f32 %3543, 0
  %3545 = extractvalue %dx.types.CBufRet.f32 %3543, 1
  %3546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %21, float %3541, float %3542, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3547 = extractvalue %dx.types.ResRet.f32 %3546, 0
  %3548 = fmul fast float %3547, %3545
  %3549 = call float @dx.op.unary.f32(i32 7, float %3548)  ; Saturate(value)
  %3550 = fadd fast float %3549, -1.000000e+00
  %3551 = fmul fast float %3550, %3544
  %3552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %3553 = extractvalue %dx.types.CBufRet.f32 %3552, 2
  %3554 = call float @dx.op.binary.f32(i32 35, float %1362, float %1363)  ; FMax(a,b)
  %3555 = call float @dx.op.binary.f32(i32 35, float %1361, float %3554)  ; FMax(a,b)
  %3556 = bitcast float %3555 to i32
  %3557 = sub nsw i32 2129859010, %3556
  %3558 = bitcast i32 %3557 to float
  %3559 = fmul fast float %3558, 0x400C04EAE0000000
  %3560 = fmul fast float %46, 5.000000e-01
  %3561 = fmul fast float %3560, %3539
  %3562 = fmul fast float %3561, %3553
  %3563 = fmul fast float %3562, 0xBFF7154760000000
  %3564 = fmul fast float %3563, %3559
  %3565 = call float @dx.op.unary.f32(i32 21, float %3564)  ; Exp(value)
  %3566 = fmul fast float %3565, 2.500000e-01
  %3567 = fmul fast float %3562, 0xBFDEC709E0000000
  %3568 = fmul fast float %3567, %3559
  %3569 = call float @dx.op.unary.f32(i32 21, float %3568)  ; Exp(value)
  %3570 = fmul fast float %3569, 7.500000e-01
  %3571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 162)  ; CBufferLoadLegacy(handle,regIndex)
  %3572 = extractvalue %dx.types.CBufRet.f32 %3571, 3
  %3573 = fadd fast float %3566, -1.000000e+00
  %3574 = fadd fast float %3573, %3570
  %3575 = fadd fast float %3574, %3572
  %3576 = call float @dx.op.unary.f32(i32 7, float %3575)  ; Saturate(value)
  %3577 = extractvalue %dx.types.CBufRet.f32 %3571, 0
  %3578 = fmul fast float %3577, %3576
  %3579 = fadd fast float %3578, 1.000000e+00
  %3580 = extractvalue %dx.types.CBufRet.f32 %3571, 1
  %3581 = fsub fast float %3579, %3580
  %3582 = call float @dx.op.unary.f32(i32 7, float %3581)  ; Saturate(value)
  %3583 = fmul fast float %3582, %1361
  %3584 = fmul fast float %3582, %1362
  %3585 = fmul fast float %3582, %1363
  %3586 = call float @dx.op.binary.f32(i32 35, float %3584, float %3585)  ; FMax(a,b)
  %3587 = call float @dx.op.binary.f32(i32 35, float %3583, float %3586)  ; FMax(a,b)
  %3588 = fcmp fast ogt float %3587, 0.000000e+00
  %3589 = fmul fast float %3584, 5.000000e-01
  %3590 = fmul fast float %3585, 5.000000e-01
  %3591 = call float @dx.op.binary.f32(i32 35, float %3589, float 0x3F70101020000000)  ; FMax(a,b)
  %3592 = call float @dx.op.binary.f32(i32 35, float %3590, float 0x3F70101020000000)  ; FMax(a,b)
  %3593 = select i1 %3588, float %3591, float 0.000000e+00
  %3594 = select i1 %3588, float %3592, float 0.000000e+00
  %3595 = select i1 %3588, i32 64, i32 0
  %3596 = fptoui float %51 to i32
  %3597 = fptoui float %52 to i32
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %3596, i32 %3597, i32 undef, float %3593, float %3594, float %3593, float %3593, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br i1 %3588, label %3598, label %3604

; <label>:3598                                    ; preds = %3526
  %3599 = fmul fast float %3583, 5.000000e-01
  %3600 = call float @dx.op.binary.f32(i32 35, float %3599, float 0x3F70101020000000)  ; FMax(a,b)
  %3601 = call float @dx.op.unary.f32(i32 24, float %1354)  ; Sqrt(value)
  %3602 = call float @dx.op.unary.f32(i32 24, float %1355)  ; Sqrt(value)
  %3603 = call float @dx.op.unary.f32(i32 24, float %1356)  ; Sqrt(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %3596, i32 %3597, i32 undef, float %3601, float %3602, float %3603, float %3600, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3604

; <label>:3604                                    ; preds = %3598, %3526
  %3605 = call float @dx.op.dot3.f32(i32 55, float %98, float %99, float %100, float %98, float %99, float %100)  ; Dot3(ax,ay,az,bx,by,bz)
  %3606 = call float @dx.op.unary.f32(i32 25, float %3605)  ; Rsqrt(value)
  %3607 = fmul fast float %3606, %98
  %3608 = fmul fast float %3606, %99
  %3609 = fmul fast float %3606, %100
  %3610 = fsub fast float -0.000000e+00, %3607
  %3611 = fsub fast float -0.000000e+00, %3608
  %3612 = fsub fast float -0.000000e+00, %3609
  %3613 = select i1 %141, float 0.000000e+00, float %3532
  %3614 = call float @dx.op.dot3.f32(i32 55, float %3533, float %3534, float %3535, float %3610, float %3611, float %3612)  ; Dot3(ax,ay,az,bx,by,bz)
  %3615 = call float @dx.op.unary.f32(i32 7, float %3614)  ; Saturate(value)
  %3616 = fsub fast float 1.000000e+00, %3537
  %3617 = bitcast float %3616 to i32
  %3618 = sub nsw i32 2129859010, %3617
  %3619 = bitcast i32 %3618 to float
  %3620 = fmul fast float %1292, %1273
  %3621 = fmul fast float %1292, %1274
  %3622 = fmul fast float %1292, %1275
  %3623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3624 = extractvalue %dx.types.CBufRet.f32 %3623, 3
  %3625 = fcmp fast oeq float %3624, 0.000000e+00
  br i1 %3625, label %3870, label %3626

; <label>:3626                                    ; preds = %3604
  %3627 = extractvalue %dx.types.CBufRet.f32 %3623, 0
  %3628 = extractvalue %dx.types.CBufRet.f32 %3623, 1
  %3629 = extractvalue %dx.types.CBufRet.f32 %3623, 2
  %3630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3631 = extractvalue %dx.types.CBufRet.f32 %3630, 0
  %3632 = extractvalue %dx.types.CBufRet.f32 %3630, 1
  %3633 = extractvalue %dx.types.CBufRet.f32 %3630, 2
  %3634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3635 = extractvalue %dx.types.CBufRet.f32 %3634, 0
  %3636 = extractvalue %dx.types.CBufRet.f32 %3634, 1
  %3637 = call float @dx.op.dot3.f32(i32 55, float %3631, float %3632, float %3633, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3638 = select i1 %141, float %3635, float %3631
  %3639 = select i1 %141, float %3637, float %3632
  %3640 = select i1 %141, float %3636, float %3633
  %3641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3642 = extractvalue %dx.types.CBufRet.f32 %3641, 1
  %3643 = fcmp fast une float %3642, 0.000000e+00
  br i1 %3643, label %3644, label %3659

; <label>:3644                                    ; preds = %3626
  %3645 = lshr i32 %3596, 4
  %3646 = lshr i32 %3597, 4
  %3647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3648 = extractvalue %dx.types.CBufRet.f32 %3647, 0
  %3649 = fptoui float %3648 to i32
  %3650 = add i32 %3649, 15
  %3651 = lshr i32 %3650, 4
  %3652 = mul i32 %3651, %3646
  %3653 = add i32 %3652, %3645
  %3654 = shl i32 %3653, 3
  %3655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %3654, i32 undef)  ; BufferLoad(srv,index,wot)
  %3656 = extractvalue %dx.types.ResRet.i32 %3655, 0
  %3657 = and i32 %3656, -268435456
  %3658 = icmp eq i32 %3657, -1342177280
  br i1 %3658, label %3669, label %3659

; <label>:3659                                    ; preds = %3644, %3626
  %3660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3661 = extractvalue %dx.types.CBufRet.f32 %3660, 2
  %3662 = extractvalue %dx.types.CBufRet.f32 %3660, 3
  %3663 = fmul fast float %3661, %51
  %3664 = fmul fast float %3662, %52
  %3665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %22, float %3663, float %3664, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3666 = extractvalue %dx.types.ResRet.f32 %3665, 0
  %3667 = extractvalue %dx.types.ResRet.f32 %3665, 1
  %3668 = extractvalue %dx.types.ResRet.f32 %3665, 2
  br label %3669

; <label>:3669                                    ; preds = %3659, %3644
  %3670 = phi float [ %3666, %3659 ], [ 0.000000e+00, %3644 ]
  %3671 = phi float [ %3667, %3659 ], [ 0.000000e+00, %3644 ]
  %3672 = phi float [ %3668, %3659 ], [ 0.000000e+00, %3644 ]
  %3673 = call float @dx.op.binary.f32(i32 36, float %3671, float %3672)  ; FMin(a,b)
  %3674 = call float @dx.op.binary.f32(i32 36, float %3670, float %3673)  ; FMin(a,b)
  %3675 = fcmp fast ogt float %3674, 0.000000e+00
  br i1 %3675, label %3676, label %3870, !dx.controlflow.hints !70

; <label>:3676                                    ; preds = %3669
  %3677 = fmul fast float %3670, %3638
  %3678 = fmul fast float %3671, %3639
  %3679 = fmul fast float %3672, %3640
  %3680 = fsub fast float %3627, %3607
  %3681 = fsub fast float %3628, %3608
  %3682 = fsub fast float %3629, %3609
  %3683 = call float @dx.op.dot3.f32(i32 55, float %3680, float %3681, float %3682, float %3680, float %3681, float %3682)  ; Dot3(ax,ay,az,bx,by,bz)
  %3684 = call float @dx.op.unary.f32(i32 25, float %3683)  ; Rsqrt(value)
  %3685 = fmul fast float %3684, %3680
  %3686 = fmul fast float %3684, %3681
  %3687 = fmul fast float %3684, %3682
  %3688 = call float @dx.op.dot3.f32(i32 55, float %3627, float %3628, float %3629, float %3533, float %3534, float %3535)  ; Dot3(ax,ay,az,bx,by,bz)
  %3689 = call float @dx.op.dot3.f32(i32 55, float %3610, float %3611, float %3612, float %3685, float %3686, float %3687)  ; Dot3(ax,ay,az,bx,by,bz)
  %3690 = call float @dx.op.unary.f32(i32 7, float %3688)  ; Saturate(value)
  %3691 = fmul fast float %3690, %3690
  %3692 = fmul fast float %3691, %3619
  %3693 = call float @dx.op.unary.f32(i32 7, float %3692)  ; Saturate(value)
  %3694 = fmul fast float %3693, %3690
  %3695 = call float @dx.op.dot3.f32(i32 55, float %3533, float %3534, float %3535, float %3685, float %3686, float %3687)  ; Dot3(ax,ay,az,bx,by,bz)
  %3696 = fmul fast float %3695, %3695
  %3697 = call float @dx.op.unary.f32(i32 6, float %3688)  ; FAbs(value)
  %3698 = fsub fast float 1.000000e+00, %3536
  %3699 = call float @dx.op.binary.f32(i32 35, float %3698, float 0x3F847AE140000000)  ; FMax(a,b)
  %3700 = fmul fast float %3699, %3699
  %3701 = fmul fast float %3700, %3700
  %3702 = fsub fast float 1.000000e+00, %3701
  %3703 = fmul fast float %3615, %3615
  %3704 = fmul fast float %3703, %3702
  %3705 = fadd fast float %3704, %3701
  %3706 = bitcast float %3705 to i32
  %3707 = ashr i32 %3706, 1
  %3708 = add nsw i32 %3707, 532487669
  %3709 = bitcast i32 %3708 to float
  %3710 = fadd fast float %3709, %3615
  %3711 = fmul fast float %3701, %3696
  %3712 = fsub fast float 1.000000e+00, %3696
  %3713 = fadd fast float %3712, %3711
  %3714 = fmul fast float %3697, %3697
  %3715 = fmul fast float %3714, %3702
  %3716 = fadd fast float %3715, %3701
  %3717 = bitcast float %3716 to i32
  %3718 = ashr i32 %3717, 1
  %3719 = add nsw i32 %3718, 532487669
  %3720 = bitcast i32 %3719 to float
  %3721 = fadd fast float %3720, %3697
  %3722 = fmul fast float %3713, %3713
  %3723 = fmul fast float %3722, %3710
  %3724 = fmul fast float %3723, %3721
  %3725 = fdiv fast float 0x3FF0A00000000000, %3724
  %3726 = fmul fast float %3725, %3701
  %3727 = call float @dx.op.unary.f32(i32 6, float %3689)  ; FAbs(value)
  %3728 = fsub fast float 1.000000e+00, %3727
  %3729 = bitcast float %3728 to i32
  %3730 = sitofp i32 %3729 to float
  %3731 = fmul fast float %3730, 5.000000e+00
  %3732 = fadd fast float %3731, 0xC1EFBF8940000000
  %3733 = fptosi float %3732 to i32
  %3734 = bitcast i32 %3733 to float
  %3735 = fsub fast float 1.000000e+00, %3530
  %3736 = fsub fast float 1.000000e+00, %3531
  %3737 = fsub fast float 1.000000e+00, %3613
  %3738 = fmul fast float %3734, %3735
  %3739 = fmul fast float %3734, %3736
  %3740 = fmul fast float %3734, %3737
  %3741 = fadd fast float %3738, %3530
  %3742 = fadd fast float %3739, %3531
  %3743 = fadd fast float %3740, %3613
  %3744 = fcmp fast ogt float %1269, 0.000000e+00
  br i1 %3744, label %3745, label %3768

; <label>:3745                                    ; preds = %3676
  %3746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %21, float %1269, float %3727, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3747 = extractvalue %dx.types.ResRet.f32 %3746, 0
  %3748 = extractvalue %dx.types.ResRet.f32 %3746, 1
  %3749 = extractvalue %dx.types.ResRet.f32 %3746, 2
  %3750 = fadd fast float %3747, -5.000000e-01
  %3751 = fadd fast float %3748, -5.000000e-01
  %3752 = fadd fast float %3749, -5.000000e-01
  %3753 = fmul fast float %3530, 4.000000e+00
  %3754 = fmul fast float %3753, %3735
  %3755 = fmul fast float %3754, %3750
  %3756 = fmul fast float %3531, 4.000000e+00
  %3757 = fmul fast float %3756, %3736
  %3758 = fmul fast float %3757, %3751
  %3759 = fmul fast float %3613, 4.000000e+00
  %3760 = fmul fast float %3759, %3737
  %3761 = fmul fast float %3760, %3752
  %3762 = fadd fast float %3755, %3741
  %3763 = fadd fast float %3758, %3742
  %3764 = fadd fast float %3761, %3743
  %3765 = call float @dx.op.unary.f32(i32 7, float %3762)  ; Saturate(value)
  %3766 = call float @dx.op.unary.f32(i32 7, float %3763)  ; Saturate(value)
  %3767 = call float @dx.op.unary.f32(i32 7, float %3764)  ; Saturate(value)
  br label %3768

; <label>:3768                                    ; preds = %3745, %3676
  %3769 = phi float [ %3765, %3745 ], [ %3741, %3676 ]
  %3770 = phi float [ %3766, %3745 ], [ %3742, %3676 ]
  %3771 = phi float [ %3767, %3745 ], [ %3743, %3676 ]
  %3772 = fmul fast float %3688, 9.843750e-01
  %3773 = fmul fast float %3536, 9.843750e-01
  %3774 = fadd fast float %3772, 7.812500e-03
  %3775 = fadd fast float %3773, 7.812500e-03
  %3776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %21, float %3774, float %3775, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3777 = extractvalue %dx.types.ResRet.f32 %3776, 2
  %3778 = extractvalue %dx.types.ResRet.f32 %3776, 3
  %3779 = fmul fast float %3777, %3530
  %3780 = fmul fast float %3777, %3531
  %3781 = fmul fast float %3777, %3613
  %3782 = fadd fast float %3779, %3778
  %3783 = fadd fast float %3780, %3778
  %3784 = fadd fast float %3781, %3778
  br i1 %3744, label %3785, label %3808

; <label>:3785                                    ; preds = %3768
  %3786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %21, float %1269, float %3688, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3787 = extractvalue %dx.types.ResRet.f32 %3786, 0
  %3788 = extractvalue %dx.types.ResRet.f32 %3786, 1
  %3789 = extractvalue %dx.types.ResRet.f32 %3786, 2
  %3790 = fadd fast float %3787, -5.000000e-01
  %3791 = fadd fast float %3788, -5.000000e-01
  %3792 = fadd fast float %3789, -5.000000e-01
  %3793 = fmul fast float %3530, 4.000000e+00
  %3794 = fmul fast float %3793, %3735
  %3795 = fmul fast float %3794, %3790
  %3796 = fmul fast float %3531, 4.000000e+00
  %3797 = fmul fast float %3796, %3736
  %3798 = fmul fast float %3797, %3791
  %3799 = fmul fast float %3613, 4.000000e+00
  %3800 = fmul fast float %3799, %3737
  %3801 = fmul fast float %3800, %3792
  %3802 = fadd fast float %3795, %3782
  %3803 = fadd fast float %3798, %3783
  %3804 = fadd fast float %3801, %3784
  %3805 = call float @dx.op.unary.f32(i32 7, float %3802)  ; Saturate(value)
  %3806 = call float @dx.op.unary.f32(i32 7, float %3803)  ; Saturate(value)
  %3807 = call float @dx.op.unary.f32(i32 7, float %3804)  ; Saturate(value)
  br label %3808

; <label>:3808                                    ; preds = %3785, %3768
  %3809 = phi float [ %3805, %3785 ], [ %3782, %3768 ]
  %3810 = phi float [ %3806, %3785 ], [ %3783, %3768 ]
  %3811 = phi float [ %3807, %3785 ], [ %3784, %3768 ]
  %3812 = call float @dx.op.binary.f32(i32 35, float %3810, float %3811)  ; FMax(a,b)
  %3813 = call float @dx.op.binary.f32(i32 35, float %3809, float %3812)  ; FMax(a,b)
  %3814 = fsub fast float 1.000000e+00, %3813
  %3815 = fmul fast float %3769, %3726
  %3816 = fmul fast float %3770, %3726
  %3817 = fmul fast float %3771, %3726
  %3818 = call float @dx.op.dot3.f32(i32 55, float %3527, float %3528, float %3529, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3819 = fcmp fast ogt float %3818, 0x3E7FF19E20000000
  %3820 = fdiv fast float 1.000000e+00, %3818
  %3821 = select i1 %3819, float %3820, float 0.000000e+00
  %3822 = fmul fast float %3821, %3527
  %3823 = fmul fast float %3821, %3528
  %3824 = fmul fast float %3821, %3529
  %3825 = fadd fast float %3822, -1.000000e+00
  %3826 = fadd fast float %3823, -1.000000e+00
  %3827 = fadd fast float %3824, -1.000000e+00
  %3828 = fmul fast float %3825, 5.000000e-01
  %3829 = fmul fast float %3826, 5.000000e-01
  %3830 = fmul fast float %3827, 5.000000e-01
  %3831 = fadd fast float %3828, 1.000000e+00
  %3832 = fadd fast float %3829, 1.000000e+00
  %3833 = fadd fast float %3830, 1.000000e+00
  %3834 = fsub fast float 1.000000e+00, %3689
  %3835 = bitcast float %3834 to i32
  %3836 = sitofp i32 %3835 to float
  %3837 = fmul fast float %3836, 5.000000e+00
  %3838 = fadd fast float %3837, 0xC1EFBF8940000000
  %3839 = fptosi float %3838 to i32
  %3840 = bitcast i32 %3839 to float
  %3841 = fmul fast float %3840, %1268
  %3842 = fmul fast float %3814, %3841
  %3843 = fmul fast float %3842, %3831
  %3844 = fmul fast float %3842, %3832
  %3845 = fmul fast float %3842, %3833
  %3846 = fadd fast float %3843, %3815
  %3847 = fadd fast float %3844, %3816
  %3848 = fadd fast float %3845, %3817
  %3849 = fmul fast float %3694, %3677
  %3850 = fmul fast float %3849, %3846
  %3851 = fmul fast float %3694, %3678
  %3852 = fmul fast float %3851, %3847
  %3853 = fmul fast float %3694, %3679
  %3854 = fmul fast float %3853, %3848
  %3855 = fmul fast float %3677, %1292
  %3856 = fmul fast float %3855, %3694
  %3857 = fmul fast float %3856, %3814
  %3858 = fmul fast float %3678, %1292
  %3859 = fmul fast float %3858, %3694
  %3860 = fmul fast float %3859, %3814
  %3861 = fmul fast float %3679, %1292
  %3862 = fmul fast float %3861, %3694
  %3863 = fmul fast float %3862, %3814
  %3864 = fadd fast float %3850, %1273
  %3865 = fmul fast float %3864, %1292
  %3866 = fadd fast float %3852, %1274
  %3867 = fmul fast float %3866, %1292
  %3868 = fadd fast float %3854, %1275
  %3869 = fmul fast float %3868, %1292
  br label %3870

; <label>:3870                                    ; preds = %3808, %3669, %3604
  %3871 = phi float [ %3620, %3604 ], [ %3620, %3669 ], [ %3865, %3808 ]
  %3872 = phi float [ %3621, %3604 ], [ %3621, %3669 ], [ %3867, %3808 ]
  %3873 = phi float [ %3622, %3604 ], [ %3622, %3669 ], [ %3869, %3808 ]
  %3874 = phi float [ 0.000000e+00, %3604 ], [ 0.000000e+00, %3669 ], [ %3857, %3808 ]
  %3875 = phi float [ 0.000000e+00, %3604 ], [ 0.000000e+00, %3669 ], [ %3860, %3808 ]
  %3876 = phi float [ 0.000000e+00, %3604 ], [ 0.000000e+00, %3669 ], [ %3863, %3808 ]
  %3877 = call float @dx.op.unary.f32(i32 24, float %3527)  ; Sqrt(value)
  %3878 = call float @dx.op.unary.f32(i32 24, float %3528)  ; Sqrt(value)
  %3879 = call float @dx.op.unary.f32(i32 24, float %3529)  ; Sqrt(value)
  %3880 = fmul fast float %3877, %3874
  %3881 = fmul fast float %3878, %3875
  %3882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3883 = extractvalue %dx.types.CBufRet.f32 %3882, 0
  br i1 %141, label %3884, label %3908

; <label>:3884                                    ; preds = %3870
  %3885 = fadd fast float %3876, %1266
  %3886 = fmul fast float %3885, %1267
  %3887 = fsub fast float 1.000000e+00, %1267
  %3888 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  %3889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3890 = extractvalue %dx.types.CBufRet.f32 %3889, 3
  %3891 = fmul fast float %3890, %3888
  %3892 = fsub fast float 1.000000e+00, %3615
  %3893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3894 = extractvalue %dx.types.CBufRet.f32 %3893, 0
  %3895 = fmul fast float %3894, %3892
  %3896 = extractvalue %dx.types.CBufRet.f32 %3893, 2
  %3897 = fmul fast float %3551, %3896
  %3898 = fadd fast float %3881, %3880
  %3899 = fmul fast float %3883, %3898
  %3900 = extractvalue %dx.types.CBufRet.f32 %3889, 1
  %3901 = fadd fast float %3891, %3886
  %3902 = fsub fast float %3901, %3895
  %3903 = fadd fast float %3902, %3897
  %3904 = fsub fast float %3903, %3900
  %3905 = extractvalue %dx.types.CBufRet.f32 %3889, 2
  %3906 = fmul fast float %3904, %3905
  %3907 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  br label %3924

; <label>:3908                                    ; preds = %3870
  %3909 = fmul fast float %3879, %3876
  %3910 = fmul fast float %3883, %3880
  %3911 = fmul fast float %3883, %3881
  %3912 = fmul fast float %3909, %3883
  %3913 = add i32 %34, 116
  %3914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3913, i32 undef)  ; BufferLoad(srv,index,wot)
  %3915 = extractvalue %dx.types.ResRet.i32 %3914, 0
  %3916 = and i32 %3915, 32
  %3917 = icmp eq i32 %3916, 0
  br i1 %3917, label %3924, label %3918

; <label>:3918                                    ; preds = %3908
  %3919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3920 = extractvalue %dx.types.CBufRet.f32 %3919, 0
  %3921 = fmul fast float %3920, 0x3FE99999A0000000
  %3922 = fadd fast float %3920, %3910
  %3923 = fadd fast float %3921, %3912
  br label %3924

; <label>:3924                                    ; preds = %3918, %3908, %3884
  %3925 = phi float [ %3899, %3884 ], [ %3922, %3918 ], [ %3910, %3908 ]
  %3926 = phi float [ %3907, %3884 ], [ %3911, %3918 ], [ %3911, %3908 ]
  %3927 = phi float [ 1.000000e+00, %3884 ], [ %3923, %3918 ], [ %3912, %3908 ]
  %3928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3929 = extractvalue %dx.types.CBufRet.f32 %3928, 0
  %3930 = fmul fast float %3929, %3872
  %3931 = fmul fast float %3929, %3873
  %3932 = fadd fast float %3872, %3871
  %3933 = select i1 %141, float %3932, float %3871
  %3934 = fmul float %3933, %3929
  %3935 = select i1 %141, float 0.000000e+00, float %3930
  %3936 = select i1 %141, float 0.000000e+00, float %3931
  %3937 = call float @dx.op.binary.f32(i32 36, float %3925, float 3.225500e+04)  ; FMin(a,b)
  %3938 = call float @dx.op.binary.f32(i32 36, float %3926, float 3.225500e+04)  ; FMin(a,b)
  %3939 = call float @dx.op.binary.f32(i32 36, float %3927, float 3.225500e+04)  ; FMin(a,b)
  %3940 = call float @dx.op.binary.f32(i32 36, float %3934, float 3.225500e+04)  ; FMin(a,b)
  %3941 = call float @dx.op.binary.f32(i32 36, float %3935, float 3.225500e+04)  ; FMin(a,b)
  %3942 = call float @dx.op.binary.f32(i32 36, float %3936, float 3.225500e+04)  ; FMin(a,b)
  %3943 = and i32 %117, 64
  %3944 = or i32 %3595, %3943
  %3945 = icmp eq i32 %3944, 0
  br i1 %3945, label %3946, label %3953

; <label>:3946                                    ; preds = %3924
  %3947 = fmul fast float %3937, %3877
  %3948 = fmul fast float %3938, %3878
  %3949 = fmul fast float %3939, %3879
  %3950 = fadd fast float %3940, %3947
  %3951 = fadd fast float %3941, %3948
  %3952 = fadd fast float %3942, %3949
  br label %3953

; <label>:3953                                    ; preds = %3946, %3924
  %3954 = phi float [ %3950, %3946 ], [ %3940, %3924 ]
  %3955 = phi float [ %3951, %3946 ], [ %3941, %3924 ]
  %3956 = phi float [ %3952, %3946 ], [ %3942, %3924 ]
  %3957 = select i1 %141, float %3938, float %3955
  %3958 = select i1 %141, float %3939, float %3956
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3954)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3957)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3958)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %3937)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %3938)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %3939)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!39 = !{[24 x i32] [i32 22, i32 8, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0]}
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
!55 = !{i32 6, !"TRANSIENT_INDEX", i8 5, i8 0, !44, i8 1, i32 1, i8 1, i32 5, i8 1, null}
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

