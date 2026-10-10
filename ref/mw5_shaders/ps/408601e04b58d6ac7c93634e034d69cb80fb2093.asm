;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float       
; TEXCOORDS                0   xy          2     NONE   float   xy  
; LMAPCOORDS               0   xyz         3     NONE   float       
; NORMAL                   0   xyz         4     NONE   float   xyz 
; TANGENT                  0   xyzw        5     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           6     NONE    uint   x   
; TRANSIENT_INDEX          0    y          6     NONE    uint       
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
; shader hash: 275070b49ddcd8b7aaa903efd33265ee
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
; Number of inputs: 26, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 8, 9, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 1 depends on inputs: { 0, 1, 3, 8, 9, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 2 depends on inputs: { 0, 1, 3, 8, 9, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 4 depends on inputs: { 0, 1, 3, 8, 9, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 5 depends on inputs: { 0, 1, 3, 8, 9, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 6 depends on inputs: { 0, 1, 3, 8, 9, 16, 17, 18, 20, 21, 22, 23, 24 }
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
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  br i1 %787, label %1267, label %788

; <label>:788                                     ; preds = %690
  %789 = and i32 %784, 1023
  br label %790

; <label>:790                                     ; preds = %920, %788
  %791 = phi float [ %921, %920 ], [ 0.000000e+00, %788 ]
  %792 = phi float [ %922, %920 ], [ %703, %788 ]
  %793 = phi float [ %923, %920 ], [ %708, %788 ]
  %794 = phi float [ %924, %920 ], [ %706, %788 ]
  %795 = phi float [ %925, %920 ], [ 0.000000e+00, %788 ]
  %796 = phi float [ %926, %920 ], [ 0.000000e+00, %788 ]
  %797 = phi float [ %927, %920 ], [ %699, %788 ]
  %798 = phi float [ %928, %920 ], [ %700, %788 ]
  %799 = phi float [ %929, %920 ], [ %701, %788 ]
  %800 = phi float [ %930, %920 ], [ %696, %788 ]
  %801 = phi float [ %931, %920 ], [ %697, %788 ]
  %802 = phi float [ %932, %920 ], [ %698, %788 ]
  %803 = phi float [ %933, %920 ], [ %734, %788 ]
  %804 = phi float [ %934, %920 ], [ %735, %788 ]
  %805 = phi float [ %935, %920 ], [ %736, %788 ]
  %806 = phi float [ %936, %920 ], [ %705, %788 ]
  %807 = phi float [ %937, %920 ], [ %704, %788 ]
  %808 = phi float [ %938, %920 ], [ 0.000000e+00, %788 ]
  %809 = phi float [ %939, %920 ], [ %702, %788 ]
  %810 = phi float [ %940, %920 ], [ %693, %788 ]
  %811 = phi float [ %941, %920 ], [ %694, %788 ]
  %812 = phi float [ %942, %920 ], [ %695, %788 ]
  %813 = phi i32 [ %870, %920 ], [ 0, %788 ]
  %814 = add nuw nsw i32 %813, %786
  %815 = shl i32 %814, 2
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = shl i32 %817, 8
  %819 = or i32 %818, 48
  %820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 0
  %822 = extractvalue %dx.types.ResRet.f32 %820, 1
  %823 = extractvalue %dx.types.ResRet.f32 %820, 2
  %824 = extractvalue %dx.types.ResRet.f32 %820, 3
  %825 = or i32 %818, 64
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %825, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = extractvalue %dx.types.ResRet.i32 %826, 1
  %829 = or i32 %818, 80
  %830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.f32 %830, 2
  %832 = extractvalue %dx.types.ResRet.f32 %830, 3
  %833 = or i32 %818, 96
  %834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.f32 %834, 0
  %836 = extractvalue %dx.types.ResRet.f32 %834, 1
  %837 = extractvalue %dx.types.ResRet.f32 %834, 2
  %838 = extractvalue %dx.types.ResRet.f32 %834, 3
  %839 = or i32 %818, 112
  %840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.f32 %840, 2
  %842 = or i32 %818, 128
  %843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.f32 %843, 0
  %845 = extractvalue %dx.types.ResRet.f32 %843, 1
  %846 = extractvalue %dx.types.ResRet.f32 %843, 2
  %847 = extractvalue %dx.types.ResRet.f32 %843, 3
  %848 = or i32 %818, 144
  %849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %848, i32 undef)  ; BufferLoad(srv,index,wot)
  %850 = extractvalue %dx.types.ResRet.f32 %849, 0
  %851 = extractvalue %dx.types.ResRet.f32 %849, 1
  %852 = extractvalue %dx.types.ResRet.f32 %849, 2
  %853 = extractvalue %dx.types.ResRet.f32 %849, 3
  %854 = or i32 %818, 160
  %855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %854, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.f32 %855, 0
  %857 = extractvalue %dx.types.ResRet.f32 %855, 1
  %858 = extractvalue %dx.types.ResRet.f32 %855, 2
  %859 = extractvalue %dx.types.ResRet.f32 %855, 3
  %860 = or i32 %818, 192
  %861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %860, i32 undef)  ; BufferLoad(srv,index,wot)
  %862 = extractvalue %dx.types.ResRet.i32 %861, 0
  %863 = or i32 %818, 208
  %864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %863, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.f32 %864, 0
  %866 = or i32 %818, 248
  %867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %866, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.f32 %867, 0
  %869 = extractvalue %dx.types.ResRet.f32 %867, 1
  %870 = add nuw nsw i32 %813, 1
  %871 = bitcast float %824 to i32
  %872 = and i32 %871, 2560
  %873 = icmp eq i32 %872, 0
  %874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.f32 %874, 0
  %876 = extractvalue %dx.types.ResRet.f32 %874, 1
  %877 = extractvalue %dx.types.ResRet.f32 %874, 2
  %878 = extractvalue %dx.types.ResRet.f32 %874, 3
  %879 = call float @dx.op.dot4.f32(i32 56, float %875, float %876, float %877, float %878, float %98, float %99, float %100, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %880 = or i32 %818, 16
  %881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %880, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.f32 %881, 0
  %883 = extractvalue %dx.types.ResRet.f32 %881, 1
  %884 = extractvalue %dx.types.ResRet.f32 %881, 2
  %885 = extractvalue %dx.types.ResRet.f32 %881, 3
  %886 = call float @dx.op.dot4.f32(i32 56, float %882, float %883, float %884, float %885, float %98, float %99, float %100, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %887 = or i32 %818, 32
  %888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.f32 %888, 0
  %890 = extractvalue %dx.types.ResRet.f32 %888, 1
  %891 = extractvalue %dx.types.ResRet.f32 %888, 2
  %892 = extractvalue %dx.types.ResRet.f32 %888, 3
  %893 = call float @dx.op.dot4.f32(i32 56, float %889, float %890, float %891, float %892, float %98, float %99, float %100, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %894 = call float @dx.op.unary.f32(i32 27, float %879)  ; Round_ni(value)
  %895 = call float @dx.op.unary.f32(i32 6, float %894)  ; FAbs(value)
  %896 = call float @dx.op.unary.f32(i32 27, float %886)  ; Round_ni(value)
  %897 = call float @dx.op.unary.f32(i32 6, float %896)  ; FAbs(value)
  %898 = call float @dx.op.unary.f32(i32 6, float %893)  ; FAbs(value)
  %899 = call float @dx.op.unary.f32(i32 27, float %898)  ; Round_ni(value)
  %900 = fadd fast float %897, %895
  %901 = fadd fast float %900, %899
  %902 = fcmp fast oeq float %901, 0.000000e+00
  %903 = call float @dx.op.dot4.f32(i32 56, float %875, float %876, float %877, float %878, float %743, float %744, float %745, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %904 = call float @dx.op.dot4.f32(i32 56, float %882, float %883, float %884, float %885, float %743, float %744, float %745, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %905 = call float @dx.op.dot4.f32(i32 56, float %875, float %876, float %877, float %878, float %746, float %747, float %748, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %906 = call float @dx.op.dot4.f32(i32 56, float %882, float %883, float %884, float %885, float %746, float %747, float %748, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %907 = fsub fast float %903, %879
  %908 = fsub fast float %905, %879
  %909 = fsub fast float %904, %886
  %910 = fsub fast float %906, %886
  %911 = call float @dx.op.dot3.f32(i32 55, float %821, float %822, float %823, float %39, float %40, float %41)  ; Dot3(ax,ay,az,bx,by,bz)
  %912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %913 = extractvalue %dx.types.CBufRet.f32 %912, 2
  %914 = fadd fast float %913, %911
  %915 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %916 = extractvalue %dx.types.CBufRet.f32 %912, 0
  %917 = fcmp fast ogt float %915, %916
  %918 = and i1 %902, %917
  %919 = and i1 %873, %918
  br i1 %919, label %944, label %920

; <label>:920                                     ; preds = %1253, %1025, %944, %790
  %921 = phi float [ %791, %944 ], [ %1028, %1025 ], [ %1028, %1253 ], [ %791, %790 ]
  %922 = phi float [ %792, %944 ], [ %792, %1025 ], [ %1229, %1253 ], [ %792, %790 ]
  %923 = phi float [ %793, %944 ], [ %793, %1025 ], [ %1228, %1253 ], [ %793, %790 ]
  %924 = phi float [ %794, %944 ], [ %794, %1025 ], [ %1226, %1253 ], [ %794, %790 ]
  %925 = phi float [ %795, %944 ], [ %795, %1025 ], [ %1152, %1253 ], [ %795, %790 ]
  %926 = phi float [ %796, %944 ], [ %796, %1025 ], [ %1150, %1253 ], [ %796, %790 ]
  %927 = phi float [ %797, %944 ], [ %797, %1025 ], [ %1196, %1253 ], [ %797, %790 ]
  %928 = phi float [ %798, %944 ], [ %798, %1025 ], [ %1197, %1253 ], [ %798, %790 ]
  %929 = phi float [ %799, %944 ], [ %799, %1025 ], [ %1198, %1253 ], [ %799, %790 ]
  %930 = phi float [ %800, %944 ], [ %800, %1025 ], [ %1263, %1253 ], [ %800, %790 ]
  %931 = phi float [ %801, %944 ], [ %801, %1025 ], [ %1264, %1253 ], [ %801, %790 ]
  %932 = phi float [ %802, %944 ], [ %802, %1025 ], [ %1265, %1253 ], [ %802, %790 ]
  %933 = phi float [ %803, %944 ], [ %803, %1025 ], [ %1131, %1253 ], [ %803, %790 ]
  %934 = phi float [ %804, %944 ], [ %804, %1025 ], [ %1132, %1253 ], [ %804, %790 ]
  %935 = phi float [ %805, %944 ], [ %805, %1025 ], [ %1133, %1253 ], [ %805, %790 ]
  %936 = phi float [ %806, %944 ], [ %806, %1025 ], [ %1206, %1253 ], [ %806, %790 ]
  %937 = phi float [ %807, %944 ], [ %807, %1025 ], [ %1203, %1253 ], [ %807, %790 ]
  %938 = phi float [ %808, %944 ], [ %808, %1025 ], [ %1200, %1253 ], [ %808, %790 ]
  %939 = phi float [ %809, %944 ], [ %809, %1025 ], [ %1148, %1253 ], [ %809, %790 ]
  %940 = phi float [ %810, %944 ], [ %810, %1025 ], [ %1143, %1253 ], [ %810, %790 ]
  %941 = phi float [ %811, %944 ], [ %811, %1025 ], [ %1144, %1253 ], [ %811, %790 ]
  %942 = phi float [ %812, %944 ], [ %812, %1025 ], [ %1145, %1253 ], [ %812, %790 ]
  %943 = icmp eq i32 %870, %789
  br i1 %943, label %1266, label %790

; <label>:944                                     ; preds = %790
  %945 = extractvalue %dx.types.ResRet.f32 %840, 3
  %946 = extractvalue %dx.types.ResRet.f32 %840, 1
  %947 = extractvalue %dx.types.ResRet.f32 %840, 0
  %948 = extractvalue %dx.types.ResRet.f32 %830, 1
  %949 = extractvalue %dx.types.ResRet.f32 %830, 0
  %950 = extractvalue %dx.types.ResRet.i32 %826, 3
  %951 = extractvalue %dx.types.ResRet.i32 %826, 2
  %952 = add i32 %950, 0
  %953 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %952, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %954 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %955 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %953, %dx.types.Handle %954, float %879, float %886, float undef, float undef, i32 0, i32 0, i32 undef, float %907, float %909, float undef, float %908, float %910, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %956 = extractvalue %dx.types.ResRet.f32 %955, 0
  %957 = fmul fast float %956, %949
  %958 = fadd fast float %957, %948
  %959 = call float @dx.op.unary.f32(i32 7, float %958)  ; Saturate(value)
  %960 = fmul fast float %879, %835
  %961 = call float @dx.op.tertiary.f32(i32 46, float %836, float %886, float %960)  ; FMad(a,b,c)
  %962 = fadd fast float %961, %947
  %963 = fmul fast float %879, %837
  %964 = call float @dx.op.tertiary.f32(i32 46, float %838, float %886, float %963)  ; FMad(a,b,c)
  %965 = fadd fast float %964, %946
  %966 = fmul fast float %907, %835
  %967 = call float @dx.op.tertiary.f32(i32 46, float %836, float %909, float %966)  ; FMad(a,b,c)
  %968 = fmul fast float %907, %837
  %969 = call float @dx.op.tertiary.f32(i32 46, float %838, float %909, float %968)  ; FMad(a,b,c)
  %970 = fmul fast float %908, %835
  %971 = call float @dx.op.tertiary.f32(i32 46, float %836, float %910, float %970)  ; FMad(a,b,c)
  %972 = fmul fast float %908, %837
  %973 = call float @dx.op.tertiary.f32(i32 46, float %838, float %910, float %972)  ; FMad(a,b,c)
  %974 = add i32 %951, 0
  %975 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %974, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %976 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %975, %dx.types.Handle %954, float %962, float %965, float undef, float undef, i32 0, i32 0, i32 undef, float %967, float %969, float undef, float %971, float %973, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %977 = extractvalue %dx.types.ResRet.f32 %976, 0
  %978 = and i32 %871, 1024
  %979 = icmp ne i32 %978, 0
  %980 = fcmp fast ogt float %977, 0x3FE0101020000000
  %981 = uitofp i1 %980 to float
  %982 = select i1 %979, float %981, float %977
  %983 = and i32 %871, 8192
  %984 = icmp ne i32 %983, 0
  %985 = select i1 %984, float %945, float 1.000000e+00
  %986 = fmul fast float %879, 2.000000e+00
  %987 = fadd fast float %986, -1.000000e+00
  %988 = call float @dx.op.unary.f32(i32 6, float %987)  ; FAbs(value)
  %989 = fmul fast float %988, %868
  %990 = fsub fast float %989, %868
  %991 = call float @dx.op.unary.f32(i32 7, float %990)  ; Saturate(value)
  %992 = fmul fast float %886, 2.000000e+00
  %993 = fadd fast float %992, -1.000000e+00
  %994 = call float @dx.op.unary.f32(i32 6, float %993)  ; FAbs(value)
  %995 = fmul fast float %994, %869
  %996 = fsub fast float %995, %869
  %997 = call float @dx.op.unary.f32(i32 7, float %996)  ; Saturate(value)
  %998 = fmul fast float %898, %831
  %999 = fsub fast float %998, %831
  %1000 = call float @dx.op.unary.f32(i32 7, float %999)  ; Saturate(value)
  %1001 = fmul fast float %959, %985
  %1002 = fmul fast float %1001, %956
  %1003 = fmul fast float %1002, %991
  %1004 = fmul fast float %1003, %982
  %1005 = fmul fast float %1004, %997
  %1006 = fmul fast float %1005, %1000
  %1007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1008 = extractvalue %dx.types.CBufRet.f32 %1007, 1
  %1009 = extractvalue %dx.types.CBufRet.f32 %1007, 0
  %1010 = fsub fast float %915, %1009
  %1011 = fmul fast float %1010, %1008
  %1012 = call float @dx.op.unary.f32(i32 7, float %1011)  ; Saturate(value)
  %1013 = fmul fast float %1006, %832
  %1014 = fadd fast float %1006, %832
  %1015 = fmul fast float %1014, %841
  %1016 = fsub fast float %1015, %841
  %1017 = call float @dx.op.unary.f32(i32 7, float %1016)  ; Saturate(value)
  %1018 = and i32 %871, 128
  %1019 = icmp ne i32 %1018, 0
  %1020 = select i1 %1019, float %1017, float %1013
  %1021 = fmul fast float %1020, %1012
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 0
  %1024 = fcmp fast ugt float %1021, %1023
  br i1 %1024, label %1025, label %920

; <label>:1025                                    ; preds = %944
  %1026 = select i1 %984, float %1021, float 0.000000e+00
  %1027 = fadd fast float %1026, %791
  %1028 = call float @dx.op.unary.f32(i32 7, float %1027)  ; Saturate(value)
  br i1 %984, label %920, label %1029

; <label>:1029                                    ; preds = %1025
  %1030 = and i32 %871, 4
  %1031 = and i32 %871, 8
  %1032 = add i32 %827, 0
  %1033 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1032, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1035 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1033, %dx.types.Handle %1034, float %962, float %965, float undef, float undef, i32 0, i32 0, i32 undef, float %967, float %969, float undef, float %971, float %973, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = extractvalue %dx.types.ResRet.f32 %1035, 1
  %1038 = extractvalue %dx.types.ResRet.f32 %1035, 2
  %1039 = extractvalue %dx.types.ResRet.f32 %1035, 3
  %1040 = bitcast float %853 to i32
  %1041 = and i32 %1040, 255
  %1042 = uitofp i32 %1041 to float
  %1043 = lshr i32 %1040, 8
  %1044 = and i32 %1043, 255
  %1045 = uitofp i32 %1044 to float
  %1046 = fmul fast float %1039, %1042
  %1047 = fadd fast float %1046, %1045
  %1048 = fmul fast float %1047, 0x3F70101000000000
  %1049 = add i32 %828, 0
  %1050 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1049, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1051 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1050, %dx.types.Handle %1034, float %962, float %965, float undef, float undef, i32 0, i32 0, i32 undef, float %967, float %969, float undef, float %971, float %973, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.ResRet.f32 %1051, 1
  %1054 = extractvalue %dx.types.ResRet.f32 %1051, 2
  %1055 = extractvalue %dx.types.ResRet.f32 %1051, 3
  %1056 = bitcast float %847 to i32
  %1057 = and i32 %1056, 255
  %1058 = uitofp i32 %1057 to float
  %1059 = lshr i32 %1056, 8
  %1060 = and i32 %1059, 255
  %1061 = uitofp i32 %1060 to float
  %1062 = lshr i32 %1056, 16
  %1063 = and i32 %1062, 255
  %1064 = uitofp i32 %1063 to float
  %1065 = fmul fast float %1064, 0x3F70101000000000
  %1066 = fmul fast float %1052, %1058
  %1067 = fadd fast float %1066, %1061
  %1068 = fmul fast float %1067, 0x3F70101000000000
  %1069 = fadd fast float %1053, -5.000000e-01
  %1070 = fadd fast float %1055, -5.000000e-01
  %1071 = fmul fast float %1069, %1065
  %1072 = fmul fast float %1070, %1065
  %1073 = fadd fast float %1071, 5.000000e-01
  %1074 = fadd fast float %1072, 5.000000e-01
  %1075 = fmul fast float %1036, %856
  %1076 = fmul fast float %1037, %857
  %1077 = fmul fast float %1038, %858
  %1078 = fmul fast float %1073, 2.000000e+00
  %1079 = fadd fast float %1078, -1.000000e+00
  %1080 = fmul fast float %1074, 2.000000e+00
  %1081 = fadd fast float %1080, -1.000000e+00
  %1082 = fadd fast float %1079, %1081
  %1083 = fmul fast float %1082, 5.000000e-01
  %1084 = fsub fast float %1079, %1081
  %1085 = fmul fast float %1084, 5.000000e-01
  %1086 = call float @dx.op.unary.f32(i32 6, float %1083)  ; FAbs(value)
  %1087 = fsub fast float 1.000000e+00, %1086
  %1088 = call float @dx.op.unary.f32(i32 6, float %1085)  ; FAbs(value)
  %1089 = fsub fast float %1087, %1088
  %1090 = call float @dx.op.dot3.f32(i32 55, float %1083, float %1085, float %1089, float %1083, float %1085, float %1089)  ; Dot3(ax,ay,az,bx,by,bz)
  %1091 = call float @dx.op.unary.f32(i32 25, float %1090)  ; Rsqrt(value)
  %1092 = fmul fast float %1083, %1091
  %1093 = fmul fast float %1085, %1091
  %1094 = fmul fast float %1091, %1089
  %1095 = fmul fast float %1094, %821
  %1096 = fmul fast float %1094, %822
  %1097 = fmul fast float %1094, %823
  %1098 = fmul fast float %1092, %844
  %1099 = fmul fast float %1092, %845
  %1100 = fmul fast float %1092, %846
  %1101 = fadd fast float %1098, %1095
  %1102 = fadd fast float %1099, %1096
  %1103 = fadd fast float %1100, %1097
  %1104 = fmul fast float %1093, %850
  %1105 = fmul fast float %1093, %851
  %1106 = fmul fast float %1093, %852
  %1107 = fadd fast float %1101, %1104
  %1108 = fadd fast float %1102, %1105
  %1109 = fadd fast float %1103, %1106
  %1110 = call float @dx.op.dot3.f32(i32 55, float %1107, float %1108, float %1109, float %1107, float %1108, float %1109)  ; Dot3(ax,ay,az,bx,by,bz)
  %1111 = call float @dx.op.unary.f32(i32 25, float %1110)  ; Rsqrt(value)
  %1112 = fmul fast float %1107, %1111
  %1113 = fmul fast float %1108, %1111
  %1114 = fmul fast float %1109, %1111
  %1115 = icmp ne i32 %1031, 0
  %1116 = select i1 %1115, float 1.000000e+00, float 0.000000e+00
  %1117 = fmul fast float %1021, %1116
  %1118 = and i32 %871, 1
  %1119 = icmp eq i32 %1118, 0
  br i1 %1119, label %1120, label %1124

; <label>:1120                                    ; preds = %1029
  %1121 = fsub fast float %1112, %803
  %1122 = fsub fast float %1113, %804
  %1123 = fsub fast float %1114, %805
  br label %1124

; <label>:1124                                    ; preds = %1120, %1029
  %1125 = phi float [ %1121, %1120 ], [ %1112, %1029 ]
  %1126 = phi float [ %1122, %1120 ], [ %1113, %1029 ]
  %1127 = phi float [ %1123, %1120 ], [ %1114, %1029 ]
  %1128 = fmul float %1127, %1117
  %1129 = fmul float %1126, %1117
  %1130 = fmul float %1125, %1117
  %1131 = fadd fast float %1130, %803
  %1132 = fadd fast float %1129, %804
  %1133 = fadd fast float %1128, %805
  %1134 = icmp ne i32 %1030, 0
  %1135 = select i1 %1134, float 1.000000e+00, float 0.000000e+00
  %1136 = fmul fast float %1021, %1135
  %1137 = fsub fast float %1075, %810
  %1138 = fsub fast float %1076, %811
  %1139 = fsub fast float %1077, %812
  %1140 = fmul fast float %1137, %1136
  %1141 = fmul fast float %1138, %1136
  %1142 = fmul fast float %1139, %1136
  %1143 = fadd fast float %1140, %810
  %1144 = fadd fast float %1141, %811
  %1145 = fadd fast float %1142, %812
  %1146 = fsub fast float %1048, %809
  %1147 = fmul fast float %1146, %1136
  %1148 = fadd fast float %1147, %809
  %1149 = fmul fast float %1136, %796
  %1150 = fsub fast float %796, %1149
  %1151 = fmul fast float %1136, %795
  %1152 = fsub fast float %795, %1151
  %1153 = bitcast float %865 to i32
  %1154 = lshr i32 %1153, 16
  %1155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1154)  ; LegacyF16ToF32(value)
  %1156 = add i32 %34, 108
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = and i32 %1158, 1
  %1160 = icmp eq i32 %1159, 0
  br i1 %1160, label %1161, label %1186

; <label>:1161                                    ; preds = %1124
  %1162 = fadd fast float %1048, 0xBFB99999A0000000
  %1163 = call float @dx.op.unary.f32(i32 7, float %1162)  ; Saturate(value)
  %1164 = fmul fast float %1163, 0x3FF1C71C80000000
  %1165 = fsub fast float 1.000000e+00, %1164
  %1166 = call float @dx.op.unary.f32(i32 7, float %1165)  ; Saturate(value)
  %1167 = fmul fast float %1166, %1075
  %1168 = fmul fast float %1166, %1076
  %1169 = fmul fast float %1166, %1077
  %1170 = call float @dx.op.unary.f32(i32 7, float %1167)  ; Saturate(value)
  %1171 = call float @dx.op.unary.f32(i32 7, float %1168)  ; Saturate(value)
  %1172 = call float @dx.op.unary.f32(i32 7, float %1169)  ; Saturate(value)
  %1173 = call float @dx.op.binary.f32(i32 35, float %1171, float %1172)  ; FMax(a,b)
  %1174 = call float @dx.op.binary.f32(i32 35, float %1170, float %1173)  ; FMax(a,b)
  %1175 = fcmp fast ogt float %1174, 0.000000e+00
  %1176 = bitcast float %1174 to i32
  %1177 = sub nsw i32 2129859010, %1176
  %1178 = bitcast i32 %1177 to float
  %1179 = select i1 %1175, float %1178, float 0.000000e+00
  %1180 = fmul fast float %1170, %1155
  %1181 = fmul fast float %1171, %1155
  %1182 = fmul fast float %1172, %1155
  %1183 = fmul fast float %1180, %1179
  %1184 = fmul fast float %1181, %1179
  %1185 = fmul fast float %1182, %1179
  br label %1186

; <label>:1186                                    ; preds = %1161, %1124
  %1187 = phi float [ %1155, %1124 ], [ %1183, %1161 ]
  %1188 = phi float [ %1155, %1124 ], [ %1184, %1161 ]
  %1189 = phi float [ %1155, %1124 ], [ %1185, %1161 ]
  %1190 = fsub fast float %1187, %797
  %1191 = fsub fast float %1188, %798
  %1192 = fsub fast float %1189, %799
  %1193 = fmul fast float %1190, %1136
  %1194 = fmul fast float %1191, %1136
  %1195 = fmul fast float %1192, %1136
  %1196 = fadd fast float %1193, %797
  %1197 = fadd fast float %1194, %798
  %1198 = fadd fast float %1195, %799
  %1199 = fadd fast float %1021, %808
  %1200 = call float @dx.op.unary.f32(i32 7, float %1199)  ; Saturate(value)
  %1201 = fsub fast float %1068, %807
  %1202 = fmul fast float %1201, %1117
  %1203 = fadd fast float %1202, %807
  %1204 = fsub fast float %1054, %806
  %1205 = fmul fast float %1204, %1117
  %1206 = fadd fast float %1205, %806
  %1207 = call float @dx.op.dot3.f32(i32 55, float %1075, float %1076, float %1077, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1208, 0
  %1210 = extractvalue %dx.types.CBufRet.f32 %1208, 1
  %1211 = fmul fast float %1210, %1207
  %1212 = fadd fast float %1211, %1209
  %1213 = call float @dx.op.unary.f32(i32 7, float %1212)  ; Saturate(value)
  %1214 = bitcast float %859 to i32
  %1215 = and i32 %1214, 65535
  %1216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1215)  ; LegacyF16ToF32(value)
  %1217 = lshr i32 %1214, 16
  %1218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1217)  ; LegacyF16ToF32(value)
  %1219 = fcmp fast oge float %1216, 0.000000e+00
  %1220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1221 = extractvalue %dx.types.CBufRet.f32 %1220, 0
  %1222 = select i1 %1219, float %1216, float %1221
  %1223 = fadd fast float %1222, %1218
  %1224 = fsub fast float %1213, %794
  %1225 = fmul fast float %1224, %1021
  %1226 = fadd fast float %1225, %794
  %1227 = fmul fast float %1223, %1021
  %1228 = call float @dx.op.binary.f32(i32 35, float %793, float %1227)  ; FMax(a,b)
  %1229 = call float @dx.op.binary.f32(i32 35, float %792, float %1021)  ; FMax(a,b)
  %1230 = and i32 %871, 16
  %1231 = icmp eq i32 %1230, 0
  br i1 %1231, label %1253, label %1232

; <label>:1232                                    ; preds = %1186
  %1233 = add i32 %862, 0
  %1234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1233, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1235 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1234, %dx.types.Handle %1034, float %962, float %965, float undef, float undef, i32 0, i32 0, i32 undef, float %967, float %969, float undef, float %971, float %973, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = extractvalue %dx.types.ResRet.f32 %1235, 1
  %1238 = extractvalue %dx.types.ResRet.f32 %1235, 2
  %1239 = and i32 %1153, 65535
  %1240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1239)  ; LegacyF16ToF32(value)
  %1241 = fmul fast float %1236, %856
  %1242 = fmul fast float %1237, %857
  %1243 = fmul fast float %1238, %858
  %1244 = and i32 %871, 16384
  %1245 = icmp ne i32 %1244, 0
  %1246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1247 = extractvalue %dx.types.CBufRet.f32 %1246, 0
  %1248 = select i1 %1245, float %1247, float 1.000000e+00
  %1249 = fmul fast float %1248, %1240
  %1250 = fmul fast float %1241, %1249
  %1251 = fmul fast float %1242, %1249
  %1252 = fmul fast float %1243, %1249
  br label %1253

; <label>:1253                                    ; preds = %1232, %1186
  %1254 = phi float [ %1250, %1232 ], [ 0.000000e+00, %1186 ]
  %1255 = phi float [ %1251, %1232 ], [ 0.000000e+00, %1186 ]
  %1256 = phi float [ %1252, %1232 ], [ 0.000000e+00, %1186 ]
  %1257 = fsub fast float %1254, %800
  %1258 = fsub fast float %1255, %801
  %1259 = fsub fast float %1256, %802
  %1260 = fmul fast float %1257, %1021
  %1261 = fmul fast float %1258, %1021
  %1262 = fmul fast float %1259, %1021
  %1263 = fadd fast float %1260, %800
  %1264 = fadd fast float %1261, %801
  %1265 = fadd fast float %1262, %802
  br label %920

; <label>:1266                                    ; preds = %920
  br label %1267

; <label>:1267                                    ; preds = %1266, %690
  %1268 = phi float [ 0.000000e+00, %690 ], [ %921, %1266 ]
  %1269 = phi float [ %703, %690 ], [ %922, %1266 ]
  %1270 = phi float [ %708, %690 ], [ %923, %1266 ]
  %1271 = phi float [ %706, %690 ], [ %924, %1266 ]
  %1272 = phi float [ 0.000000e+00, %690 ], [ %925, %1266 ]
  %1273 = phi float [ 0.000000e+00, %690 ], [ %926, %1266 ]
  %1274 = phi float [ %699, %690 ], [ %927, %1266 ]
  %1275 = phi float [ %700, %690 ], [ %928, %1266 ]
  %1276 = phi float [ %701, %690 ], [ %929, %1266 ]
  %1277 = phi float [ %696, %690 ], [ %930, %1266 ]
  %1278 = phi float [ %697, %690 ], [ %931, %1266 ]
  %1279 = phi float [ %698, %690 ], [ %932, %1266 ]
  %1280 = phi float [ %734, %690 ], [ %933, %1266 ]
  %1281 = phi float [ %735, %690 ], [ %934, %1266 ]
  %1282 = phi float [ %736, %690 ], [ %935, %1266 ]
  %1283 = phi float [ %705, %690 ], [ %936, %1266 ]
  %1284 = phi float [ %704, %690 ], [ %937, %1266 ]
  %1285 = phi float [ 0.000000e+00, %690 ], [ %938, %1266 ]
  %1286 = phi float [ %702, %690 ], [ %939, %1266 ]
  %1287 = phi float [ %693, %690 ], [ %940, %1266 ]
  %1288 = phi float [ %694, %690 ], [ %941, %1266 ]
  %1289 = phi float [ %695, %690 ], [ %942, %1266 ]
  %1290 = call float @dx.op.dot3.f32(i32 55, float %1280, float %1281, float %1282, float %1280, float %1281, float %1282)  ; Dot3(ax,ay,az,bx,by,bz)
  %1291 = call float @dx.op.unary.f32(i32 25, float %1290)  ; Rsqrt(value)
  %1292 = fmul fast float %1291, %1280
  %1293 = fmul fast float %1291, %1281
  %1294 = fmul fast float %1291, %1282
  %1295 = fadd fast float %1285, %703
  %1296 = call float @dx.op.unary.f32(i32 7, float %1295)  ; Saturate(value)
  %1297 = call float @dx.op.dot3.f32(i32 55, float %1292, float %1293, float %1294, float %1292, float %1293, float %1294)  ; Dot3(ax,ay,az,bx,by,bz)
  %1298 = call float @dx.op.unary.f32(i32 25, float %1297)  ; Rsqrt(value)
  %1299 = fmul fast float %1298, %1292
  %1300 = fmul fast float %1298, %1293
  %1301 = fmul fast float %1298, %1294
  %1302 = fadd fast float %1286, 0xBFB99999A0000000
  %1303 = call float @dx.op.unary.f32(i32 7, float %1302)  ; Saturate(value)
  %1304 = fmul fast float %1303, 0x3FF1C71C80000000
  %1305 = call float @dx.op.binary.f32(i32 36, float %1286, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1306 = fsub fast float 1.000000e+00, %1304
  %1307 = call float @dx.op.unary.f32(i32 7, float %1306)  ; Saturate(value)
  %1308 = fmul fast float %1307, %1287
  %1309 = fmul fast float %1307, %1288
  %1310 = fmul fast float %1307, %1289
  %1311 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1312 = call float @dx.op.unary.f32(i32 7, float %1309)  ; Saturate(value)
  %1313 = call float @dx.op.unary.f32(i32 7, float %1310)  ; Saturate(value)
  %1314 = fmul fast float %1304, %1287
  %1315 = fmul fast float %1304, %1288
  %1316 = fmul fast float %1304, %1289
  %1317 = fadd fast float %1314, %1305
  %1318 = fadd fast float %1315, %1305
  %1319 = fadd fast float %1316, %1305
  %1320 = call float @dx.op.unary.f32(i32 7, float %1317)  ; Saturate(value)
  %1321 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1322 = call float @dx.op.unary.f32(i32 7, float %1319)  ; Saturate(value)
  %1323 = call float @dx.op.unary.f32(i32 7, float %1284)  ; Saturate(value)
  %1324 = add i32 %34, 108
  %1325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1324, i32 undef)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.i32 %1325, 0
  %1327 = and i32 %1326, 1
  %1328 = icmp eq i32 %1327, 0
  br i1 %1328, label %1343, label %1329

; <label>:1329                                    ; preds = %1267
  %1330 = call float @dx.op.binary.f32(i32 35, float %1312, float %1313)  ; FMax(a,b)
  %1331 = call float @dx.op.binary.f32(i32 35, float %1311, float %1330)  ; FMax(a,b)
  %1332 = fcmp fast ogt float %1331, 0.000000e+00
  %1333 = bitcast float %1331 to i32
  %1334 = sub nsw i32 2129859010, %1333
  %1335 = bitcast i32 %1334 to float
  %1336 = select i1 %1332, float %1335, float 0.000000e+00
  %1337 = fmul fast float %1311, %1274
  %1338 = fmul fast float %1312, %1275
  %1339 = fmul fast float %1313, %1276
  %1340 = fmul fast float %1337, %1336
  %1341 = fmul fast float %1338, %1336
  %1342 = fmul fast float %1339, %1336
  br label %1343

; <label>:1343                                    ; preds = %1329, %1267
  %1344 = phi float [ %1340, %1329 ], [ %1274, %1267 ]
  %1345 = phi float [ %1341, %1329 ], [ %1275, %1267 ]
  %1346 = phi float [ %1342, %1329 ], [ %1276, %1267 ]
  %1347 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1348 = extractvalue %dx.types.CBufRet.i32 %1347, 3
  %1349 = and i32 %1348, 8
  %1350 = icmp ne i32 %1349, 0
  %1351 = call float @dx.op.binary.f32(i32 35, float %1311, float %1287)  ; FMax(a,b)
  %1352 = call float @dx.op.binary.f32(i32 35, float %1312, float %1287)  ; FMax(a,b)
  %1353 = call float @dx.op.binary.f32(i32 35, float %1313, float %1287)  ; FMax(a,b)
  %1354 = call float @dx.op.dot3.f32(i32 55, float %1311, float %1312, float %1313, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1355 = select i1 %141, float %1287, float %1311
  %1356 = select i1 %141, float %1354, float %1312
  %1357 = select i1 %141, float 1.000000e+00, float %1313
  %1358 = select i1 %1350, float %1351, float %1355
  %1359 = select i1 %1350, float %1352, float %1356
  %1360 = select i1 %1350, float %1353, float %1357
  %1361 = call float @dx.op.dot3.f32(i32 55, float %1344, float %1345, float %1346, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1362 = select i1 %141, float %1361, float %1344
  %1363 = select i1 %141, float %1361, float %1345
  %1364 = select i1 %141, float %1361, float %1346
  %1365 = fmul fast float %1362, %1296
  %1366 = fmul fast float %1363, %1296
  %1367 = fmul fast float %1364, %1296
  %1368 = and i32 %116, 3
  %1369 = icmp eq i32 %1368, 1
  br i1 %1369, label %1370, label %1446

; <label>:1370                                    ; preds = %1343
  %1371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1372 = extractvalue %dx.types.CBufRet.f32 %1371, 0
  %1373 = extractvalue %dx.types.CBufRet.f32 %1371, 1
  %1374 = fadd fast float %1372, %98
  %1375 = fadd fast float %1373, %99
  %1376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.f32 %1376, 0
  %1378 = extractvalue %dx.types.CBufRet.f32 %1376, 1
  %1379 = fsub fast float %1374, %1377
  %1380 = fsub fast float %1375, %1378
  %1381 = fmul fast float %1379, %1379
  %1382 = fmul fast float %1380, %1380
  %1383 = fadd fast float %1381, %1382
  %1384 = call float @dx.op.unary.f32(i32 24, float %1383)  ; Sqrt(value)
  %1385 = extractvalue %dx.types.CBufRet.f32 %1376, 2
  %1386 = fcmp fast olt float %1384, %1385
  br i1 %1386, label %1387, label %1440

; <label>:1387                                    ; preds = %1370
  %1388 = extractvalue %dx.types.CBufRet.f32 %1371, 2
  %1389 = fadd fast float %1388, %100
  %1390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1391 = extractvalue %dx.types.CBufRet.f32 %1390, 0
  %1392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1393 = extractvalue %dx.types.CBufRet.f32 %1392, 0
  %1394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1395 = extractvalue %dx.types.CBufRet.f32 %1394, 0
  %1396 = extractvalue %dx.types.CBufRet.f32 %1390, 1
  %1397 = extractvalue %dx.types.CBufRet.f32 %1392, 1
  %1398 = extractvalue %dx.types.CBufRet.f32 %1394, 1
  %1399 = extractvalue %dx.types.CBufRet.f32 %1390, 3
  %1400 = extractvalue %dx.types.CBufRet.f32 %1392, 3
  %1401 = extractvalue %dx.types.CBufRet.f32 %1394, 3
  %1402 = fadd fast float %1399, %1374
  %1403 = fadd fast float %1400, %1375
  %1404 = fadd fast float %1389, %1401
  %1405 = fmul fast float %1402, %1391
  %1406 = call float @dx.op.tertiary.f32(i32 46, float %1403, float %1393, float %1405)  ; FMad(a,b,c)
  %1407 = call float @dx.op.tertiary.f32(i32 46, float %1404, float %1395, float %1406)  ; FMad(a,b,c)
  %1408 = fmul fast float %1402, %1396
  %1409 = call float @dx.op.tertiary.f32(i32 46, float %1403, float %1397, float %1408)  ; FMad(a,b,c)
  %1410 = call float @dx.op.tertiary.f32(i32 46, float %1404, float %1398, float %1409)  ; FMad(a,b,c)
  %1411 = fsub fast float %1407, %1399
  %1412 = fsub fast float %1410, %1400
  %1413 = fsub fast float %1411, %1377
  %1414 = fadd fast float %1413, %1385
  %1415 = fsub fast float %1412, %1378
  %1416 = fadd fast float %1415, %1385
  %1417 = extractvalue %dx.types.CBufRet.f32 %1376, 3
  %1418 = fmul fast float %1414, %1417
  %1419 = fmul fast float %1416, %1417
  %1420 = call float @dx.op.unary.f32(i32 7, float %1418)  ; Saturate(value)
  %1421 = call float @dx.op.unary.f32(i32 7, float %1419)  ; Saturate(value)
  %1422 = fsub fast float 1.000000e+00, %1420
  %1423 = fsub fast float 1.000000e+00, %1421
  %1424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %21, float %1422, float %1423, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = fcmp fast ugt float %1425, 0.000000e+00
  br i1 %1426, label %1427, label %1440

; <label>:1427                                    ; preds = %1387
  %1428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.f32 %1428, 2
  %1430 = fmul fast float %1429, %1425
  %1431 = extractvalue %dx.types.CBufRet.f32 %1428, 3
  %1432 = fadd fast float %1431, %1430
  %1433 = extractvalue %dx.types.CBufRet.f32 %1394, 2
  %1434 = fadd fast float %1432, %1401
  %1435 = fmul fast float %1407, %1395
  %1436 = call float @dx.op.tertiary.f32(i32 46, float %1410, float %1398, float %1435)  ; FMad(a,b,c)
  %1437 = call float @dx.op.tertiary.f32(i32 46, float %1434, float %1433, float %1436)  ; FMad(a,b,c)
  %1438 = fsub fast float %1437, %1401
  %1439 = fsub fast float %1438, %1388
  br label %1440

; <label>:1440                                    ; preds = %1427, %1387, %1370
  %1441 = phi i1 [ true, %1427 ], [ false, %1387 ], [ false, %1370 ]
  %1442 = phi float [ %1439, %1427 ], [ -1.310720e+05, %1387 ], [ -1.310720e+05, %1370 ]
  %1443 = fsub fast float %1442, %100
  %1444 = call float @dx.op.unary.f32(i32 7, float %1443)  ; Saturate(value)
  %1445 = select i1 %1441, float %1444, float 1.000000e+00
  br label %1446

; <label>:1446                                    ; preds = %1440, %1343
  %1447 = phi float [ %1445, %1440 ], [ 0.000000e+00, %1343 ]
  %1448 = icmp eq i32 %1368, 3
  %1449 = select i1 %1448, float 1.000000e+00, float %1447
  %1450 = call float @dx.op.binary.f32(i32 35, float %1268, float %1449)  ; FMax(a,b)
  %1451 = fcmp fast olt float %1449, 1.000000e+00
  br i1 %1451, label %1452, label %2576

; <label>:1452                                    ; preds = %1446
  %1453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1454 = extractvalue %dx.types.CBufRet.f32 %1453, 0
  %1455 = extractvalue %dx.types.CBufRet.f32 %1453, 1
  %1456 = extractvalue %dx.types.CBufRet.f32 %1453, 2
  %1457 = fadd fast float %1454, %98
  %1458 = fadd fast float %1455, %99
  %1459 = fadd fast float %1456, %100
  %1460 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %1461 = extractvalue %dx.types.CBufRet.i32 %1460, 2
  %1462 = icmp ult i32 %1461, 4
  br i1 %1462, label %1463, label %1514

; <label>:1463                                    ; preds = %1452
  br label %1464

; <label>:1464                                    ; preds = %1509, %1463
  %1465 = phi i32 [ %1510, %1509 ], [ %1461, %1463 ]
  %1466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 342)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1466, 0
  %1468 = extractvalue %dx.types.CBufRet.f32 %1466, 1
  %1469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %1470 = extractvalue %dx.types.CBufRet.f32 %1469, 0
  %1471 = fmul fast float %1470, 5.000000e-01
  %1472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 340)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.f32 %1472, 0
  %1474 = extractvalue %dx.types.CBufRet.f32 %1472, 1
  %1475 = extractvalue %dx.types.CBufRet.f32 %1472, 2
  %1476 = extractvalue %dx.types.CBufRet.f32 %1472, 3
  %1477 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 0
  store float %1473, float* %1477, align 4
  %1478 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 1
  store float %1474, float* %1478, align 4
  %1479 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 2
  store float %1475, float* %1479, align 4
  %1480 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 3
  store float %1476, float* %1480, align 4
  %1481 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 %1465
  %1482 = load float, float* %1481, align 4, !tbaa !63
  %1483 = fmul fast float %1471, %1482
  %1484 = fsub fast float %1457, %1467
  %1485 = fadd fast float %1484, %1483
  %1486 = fsub fast float %1458, %1468
  %1487 = fadd fast float %1486, %1483
  %1488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 341)  ; CBufferLoadLegacy(handle,regIndex)
  %1489 = extractvalue %dx.types.CBufRet.f32 %1488, 0
  %1490 = extractvalue %dx.types.CBufRet.f32 %1488, 1
  %1491 = extractvalue %dx.types.CBufRet.f32 %1488, 2
  %1492 = extractvalue %dx.types.CBufRet.f32 %1488, 3
  %1493 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 0
  store float %1489, float* %1493, align 4
  %1494 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 1
  store float %1490, float* %1494, align 4
  %1495 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 2
  store float %1491, float* %1495, align 4
  %1496 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 3
  store float %1492, float* %1496, align 4
  %1497 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 %1465
  %1498 = load float, float* %1497, align 4, !tbaa !63
  %1499 = fmul fast float %1485, %1498
  %1500 = fmul fast float %1487, %1498
  %1501 = extractvalue %dx.types.CBufRet.f32 %1469, 1
  %1502 = fmul fast float %1499, %1501
  %1503 = fmul fast float %1500, %1501
  %1504 = call float @dx.op.unary.f32(i32 7, float %1502)  ; Saturate(value)
  %1505 = call float @dx.op.unary.f32(i32 7, float %1503)  ; Saturate(value)
  %1506 = fcmp fast oeq float %1504, %1502
  %1507 = fcmp fast oeq float %1505, %1503
  %1508 = and i1 %1506, %1507
  br i1 %1508, label %1512, label %1509

; <label>:1509                                    ; preds = %1464
  %1510 = add nuw nsw i32 %1465, 1
  %1511 = icmp ult i32 %1510, 4
  br i1 %1511, label %1464, label %1512

; <label>:1512                                    ; preds = %1509, %1464
  %1513 = phi i32 [ %1510, %1509 ], [ %1465, %1464 ]
  br label %1514

; <label>:1514                                    ; preds = %1512, %1452
  %1515 = phi float [ 0.000000e+00, %1452 ], [ %1502, %1512 ]
  %1516 = phi float [ 0.000000e+00, %1452 ], [ %1503, %1512 ]
  %1517 = phi i32 [ %1461, %1452 ], [ %1513, %1512 ]
  %1518 = extractvalue %dx.types.CBufRet.i32 %1460, 1
  %1519 = uitofp i32 %1517 to float
  %1520 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %21, float %1515, float %1516, float %1519, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1521 = extractvalue %dx.types.ResRet.f32 %1520, 0
  %1522 = extractvalue %dx.types.ResRet.f32 %1520, 1
  %1523 = extractvalue %dx.types.ResRet.f32 %1520, 2
  %1524 = extractvalue %dx.types.ResRet.f32 %1520, 3
  %1525 = call float @dx.op.binary.f32(i32 35, float %1522, float %1523)  ; FMax(a,b)
  %1526 = call float @dx.op.binary.f32(i32 35, float %1521, float %1525)  ; FMax(a,b)
  %1527 = call float @dx.op.binary.f32(i32 35, float %1526, float %1524)  ; FMax(a,b)
  %1528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %1529 = extractvalue %dx.types.CBufRet.f32 %1528, 0
  %1530 = fadd fast float %1529, %1527
  %1531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %1532 = extractvalue %dx.types.CBufRet.f32 %1531, 3
  %1533 = fadd fast float %1530, %1532
  %1534 = fcmp fast ogt float %1459, %1533
  %1535 = icmp uge i32 %1517, %1518
  %1536 = or i1 %1535, %1534
  %1537 = zext i1 %1536 to i32
  %1538 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1539 = extractvalue %dx.types.CBufRet.i32 %1538, 0
  %1540 = lshr i32 %1539, 21
  %1541 = and i32 %1540, 1
  %1542 = xor i32 %1541, 1
  %1543 = or i32 %1537, %1542
  %1544 = and i32 %1539, 1
  %1545 = xor i32 %1544, 1
  %1546 = or i32 %1543, %1545
  %1547 = icmp eq i32 %1546, 0
  br i1 %1547, label %1548, label %2392, !dx.controlflow.hints !67

; <label>:1548                                    ; preds = %1514
  %1549 = fmul fast float %1515, 2.000000e+00
  %1550 = fmul fast float %1516, 2.000000e+00
  %1551 = fadd fast float %1549, -1.000000e+00
  %1552 = fadd fast float %1550, -1.000000e+00
  %1553 = call float @dx.op.unary.f32(i32 6, float %1551)  ; FAbs(value)
  %1554 = call float @dx.op.unary.f32(i32 6, float %1552)  ; FAbs(value)
  %1555 = extractvalue %dx.types.CBufRet.f32 %1531, 1
  %1556 = fmul fast float %1555, 2.000000e+00
  %1557 = fsub fast float 1.000000e+00, %1556
  %1558 = fcmp fast oge float %1553, %1557
  %1559 = fcmp fast oge float %1554, %1557
  %1560 = or i1 %1558, %1559
  %1561 = add i32 %1517, 1
  %1562 = icmp ult i32 %1561, %1518
  %1563 = and i1 %1562, %1560
  %1564 = extractvalue %dx.types.CBufRet.f32 %1531, 0
  %1565 = fptosi float %1564 to i32
  %1566 = sitofp i32 %1565 to float
  %1567 = fmul fast float %1566, %1515
  %1568 = fmul fast float %1566, %1516
  %1569 = fadd fast float %1567, -5.000000e-01
  %1570 = fadd fast float %1568, -5.000000e-01
  %1571 = fptosi float %1569 to i32
  %1572 = fptosi float %1570 to i32
  %1573 = fadd fast float %1567, 5.000000e-01
  %1574 = fadd fast float %1568, 5.000000e-01
  %1575 = call float @dx.op.unary.f32(i32 22, float %1573)  ; Frc(value)
  %1576 = call float @dx.op.unary.f32(i32 22, float %1574)  ; Frc(value)
  %1577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 340)  ; CBufferLoadLegacy(handle,regIndex)
  %1578 = extractvalue %dx.types.CBufRet.f32 %1577, 0
  %1579 = extractvalue %dx.types.CBufRet.f32 %1577, 1
  %1580 = extractvalue %dx.types.CBufRet.f32 %1577, 2
  %1581 = extractvalue %dx.types.CBufRet.f32 %1577, 3
  %1582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %1583 = extractvalue %dx.types.CBufRet.f32 %1582, 2
  %1584 = fadd fast float %1575, -5.000000e-01
  %1585 = fadd fast float %1576, -5.000000e-01
  %1586 = add i32 %1565, -1
  %1587 = call i32 @dx.op.binary.i32(i32 37, i32 %1571, i32 0)  ; IMax(a,b)
  %1588 = call i32 @dx.op.binary.i32(i32 37, i32 %1572, i32 0)  ; IMax(a,b)
  %1589 = call i32 @dx.op.binary.i32(i32 38, i32 %1587, i32 %1586)  ; IMin(a,b)
  %1590 = call i32 @dx.op.binary.i32(i32 38, i32 %1588, i32 %1586)  ; IMin(a,b)
  %1591 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 337)  ; CBufferLoadLegacy(handle,regIndex)
  %1592 = extractvalue %dx.types.CBufRet.i32 %1591, 0
  %1593 = extractvalue %dx.types.CBufRet.i32 %1591, 1
  %1594 = sub nsw i32 3, %1517
  %1595 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 338)  ; CBufferLoadLegacy(handle,regIndex)
  %1596 = extractvalue %dx.types.CBufRet.i32 %1595, 0
  %1597 = extractvalue %dx.types.CBufRet.i32 %1595, 1
  %1598 = extractvalue %dx.types.CBufRet.i32 %1595, 2
  %1599 = extractvalue %dx.types.CBufRet.i32 %1595, 3
  %1600 = add i32 %1589, 536870912
  %1601 = add i32 %1590, 536870912
  %1602 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %1603 = extractvalue %dx.types.CBufRet.i32 %1602, 3
  %1604 = add i32 %1571, 1
  %1605 = call i32 @dx.op.binary.i32(i32 37, i32 %1604, i32 0)  ; IMax(a,b)
  %1606 = call i32 @dx.op.binary.i32(i32 38, i32 %1605, i32 %1586)  ; IMin(a,b)
  %1607 = add i32 %1606, 536870912
  %1608 = add i32 %1572, 1
  %1609 = call i32 @dx.op.binary.i32(i32 37, i32 %1608, i32 0)  ; IMax(a,b)
  %1610 = call i32 @dx.op.binary.i32(i32 38, i32 %1609, i32 %1586)  ; IMin(a,b)
  %1611 = add i32 %1610, 536870912
  br i1 %1563, label %1856, label %1612, !dx.controlflow.hints !68

; <label>:1612                                    ; preds = %1548
  %1613 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 0
  store float %1578, float* %1613, align 4
  %1614 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 1
  store float %1579, float* %1614, align 4
  %1615 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 2
  store float %1580, float* %1615, align 4
  %1616 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 3
  store float %1581, float* %1616, align 4
  %1617 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 %1517
  %1618 = load float, float* %1617, align 4, !tbaa !63
  %1619 = fmul fast float %1583, %1618
  %1620 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %1619)  ; FMax(a,b)
  %1621 = fmul fast float %1620, %1584
  %1622 = fmul fast float %1620, %1585
  %1623 = call float @dx.op.binary.f32(i32 35, float %1621, float -5.000000e-01)  ; FMax(a,b)
  %1624 = call float @dx.op.binary.f32(i32 35, float %1622, float -5.000000e-01)  ; FMax(a,b)
  %1625 = call float @dx.op.binary.f32(i32 36, float %1623, float 5.000000e-01)  ; FMin(a,b)
  %1626 = call float @dx.op.binary.f32(i32 36, float %1624, float 5.000000e-01)  ; FMin(a,b)
  %1627 = fadd fast float %1625, 5.000000e-01
  %1628 = fadd fast float %1626, 5.000000e-01
  %1629 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 0
  store i32 %1596, i32* %1629, align 4
  %1630 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 1
  store i32 %1597, i32* %1630, align 4
  %1631 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 2
  store i32 %1598, i32* %1631, align 4
  %1632 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 3
  store i32 %1599, i32* %1632, align 4
  %1633 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 %1594
  %1634 = load i32, i32* %1633, align 4, !tbaa !69
  %1635 = mul i32 %1634, %1592
  %1636 = mul i32 %1634, %1593
  %1637 = add i32 %1600, %1635
  %1638 = add i32 %1601, %1636
  %1639 = and i32 %1637, %1603
  %1640 = and i32 %1638, %1603
  %1641 = fsub fast float %1459, %1529
  %1642 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1639, i32 %1640, i32 %1517, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1643 = extractvalue %dx.types.ResRet.i32 %1642, 0
  %1644 = extractvalue %dx.types.ResRet.i32 %1642, 1
  %1645 = extractvalue %dx.types.ResRet.i32 %1642, 2
  %1646 = extractvalue %dx.types.ResRet.i32 %1642, 3
  %1647 = and i32 %1643, 65535
  %1648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1647)  ; LegacyF16ToF32(value)
  %1649 = lshr i32 %1643, 16
  %1650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1649)  ; LegacyF16ToF32(value)
  %1651 = and i32 %1644, 65535
  %1652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1651)  ; LegacyF16ToF32(value)
  %1653 = lshr i32 %1644, 16
  %1654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1653)  ; LegacyF16ToF32(value)
  %1655 = and i32 %1645, 65535
  %1656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1655)  ; LegacyF16ToF32(value)
  %1657 = lshr i32 %1645, 16
  %1658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1657)  ; LegacyF16ToF32(value)
  %1659 = and i32 %1646, 65535
  %1660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1659)  ; LegacyF16ToF32(value)
  %1661 = lshr i32 %1646, 16
  %1662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1661)  ; LegacyF16ToF32(value)
  %1663 = fsub fast float %1641, %1650
  %1664 = call float @dx.op.binary.f32(i32 35, float %1663, float 0.000000e+00)  ; FMax(a,b)
  %1665 = extractvalue %dx.types.CBufRet.f32 %1531, 2
  %1666 = fmul fast float %1665, %1664
  %1667 = fsub fast float %1648, %1666
  %1668 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1667)  ; FMax(a,b)
  %1669 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1668)  ; FMax(a,b)
  %1670 = fsub fast float %1641, %1654
  %1671 = call float @dx.op.binary.f32(i32 35, float %1670, float 0.000000e+00)  ; FMax(a,b)
  %1672 = fmul fast float %1665, %1671
  %1673 = fsub fast float %1652, %1672
  %1674 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1673)  ; FMax(a,b)
  %1675 = call float @dx.op.binary.f32(i32 35, float %1669, float %1674)  ; FMax(a,b)
  %1676 = fsub fast float %1641, %1658
  %1677 = call float @dx.op.binary.f32(i32 35, float %1676, float 0.000000e+00)  ; FMax(a,b)
  %1678 = fmul fast float %1665, %1677
  %1679 = fsub fast float %1656, %1678
  %1680 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1679)  ; FMax(a,b)
  %1681 = call float @dx.op.binary.f32(i32 35, float %1675, float %1680)  ; FMax(a,b)
  %1682 = fsub fast float %1641, %1662
  %1683 = call float @dx.op.binary.f32(i32 35, float %1682, float 0.000000e+00)  ; FMax(a,b)
  %1684 = fmul fast float %1665, %1683
  %1685 = fsub fast float %1660, %1684
  %1686 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1685)  ; FMax(a,b)
  %1687 = call float @dx.op.binary.f32(i32 35, float %1681, float %1686)  ; FMax(a,b)
  %1688 = fsub fast float 5.000000e-01, %1625
  %1689 = fsub fast float 5.000000e-01, %1626
  %1690 = fmul fast float %1689, %1688
  %1691 = fmul fast float %1690, %1687
  store i32 %1596, i32* %1629, align 4
  store i32 %1597, i32* %1630, align 4
  store i32 %1598, i32* %1631, align 4
  store i32 %1599, i32* %1632, align 4
  %1692 = load i32, i32* %1633, align 4, !tbaa !69
  %1693 = mul i32 %1692, %1592
  %1694 = mul i32 %1692, %1593
  %1695 = add i32 %1607, %1693
  %1696 = add i32 %1601, %1694
  %1697 = and i32 %1695, %1603
  %1698 = and i32 %1696, %1603
  %1699 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1697, i32 %1698, i32 %1517, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1700 = extractvalue %dx.types.ResRet.i32 %1699, 0
  %1701 = extractvalue %dx.types.ResRet.i32 %1699, 1
  %1702 = extractvalue %dx.types.ResRet.i32 %1699, 2
  %1703 = extractvalue %dx.types.ResRet.i32 %1699, 3
  %1704 = and i32 %1700, 65535
  %1705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1704)  ; LegacyF16ToF32(value)
  %1706 = lshr i32 %1700, 16
  %1707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1706)  ; LegacyF16ToF32(value)
  %1708 = and i32 %1701, 65535
  %1709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1708)  ; LegacyF16ToF32(value)
  %1710 = lshr i32 %1701, 16
  %1711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1710)  ; LegacyF16ToF32(value)
  %1712 = and i32 %1702, 65535
  %1713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1712)  ; LegacyF16ToF32(value)
  %1714 = lshr i32 %1702, 16
  %1715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1714)  ; LegacyF16ToF32(value)
  %1716 = and i32 %1703, 65535
  %1717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1716)  ; LegacyF16ToF32(value)
  %1718 = lshr i32 %1703, 16
  %1719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1718)  ; LegacyF16ToF32(value)
  %1720 = fsub fast float %1641, %1707
  %1721 = call float @dx.op.binary.f32(i32 35, float %1720, float 0.000000e+00)  ; FMax(a,b)
  %1722 = fmul fast float %1665, %1721
  %1723 = fsub fast float %1705, %1722
  %1724 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1723)  ; FMax(a,b)
  %1725 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1724)  ; FMax(a,b)
  %1726 = fsub fast float %1641, %1711
  %1727 = call float @dx.op.binary.f32(i32 35, float %1726, float 0.000000e+00)  ; FMax(a,b)
  %1728 = fmul fast float %1665, %1727
  %1729 = fsub fast float %1709, %1728
  %1730 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1729)  ; FMax(a,b)
  %1731 = call float @dx.op.binary.f32(i32 35, float %1725, float %1730)  ; FMax(a,b)
  %1732 = fsub fast float %1641, %1715
  %1733 = call float @dx.op.binary.f32(i32 35, float %1732, float 0.000000e+00)  ; FMax(a,b)
  %1734 = fmul fast float %1665, %1733
  %1735 = fsub fast float %1713, %1734
  %1736 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1735)  ; FMax(a,b)
  %1737 = call float @dx.op.binary.f32(i32 35, float %1731, float %1736)  ; FMax(a,b)
  %1738 = fsub fast float %1641, %1719
  %1739 = call float @dx.op.binary.f32(i32 35, float %1738, float 0.000000e+00)  ; FMax(a,b)
  %1740 = fmul fast float %1665, %1739
  %1741 = fsub fast float %1717, %1740
  %1742 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1741)  ; FMax(a,b)
  %1743 = call float @dx.op.binary.f32(i32 35, float %1737, float %1742)  ; FMax(a,b)
  %1744 = fmul fast float %1689, %1627
  %1745 = fmul fast float %1744, %1743
  store i32 %1596, i32* %1629, align 4
  store i32 %1597, i32* %1630, align 4
  store i32 %1598, i32* %1631, align 4
  store i32 %1599, i32* %1632, align 4
  %1746 = load i32, i32* %1633, align 4, !tbaa !69
  %1747 = mul i32 %1746, %1592
  %1748 = mul i32 %1746, %1593
  %1749 = add i32 %1600, %1747
  %1750 = add i32 %1611, %1748
  %1751 = and i32 %1749, %1603
  %1752 = and i32 %1750, %1603
  %1753 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1751, i32 %1752, i32 %1517, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = extractvalue %dx.types.ResRet.i32 %1753, 1
  %1756 = extractvalue %dx.types.ResRet.i32 %1753, 2
  %1757 = extractvalue %dx.types.ResRet.i32 %1753, 3
  %1758 = and i32 %1754, 65535
  %1759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1758)  ; LegacyF16ToF32(value)
  %1760 = lshr i32 %1754, 16
  %1761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1760)  ; LegacyF16ToF32(value)
  %1762 = and i32 %1755, 65535
  %1763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1762)  ; LegacyF16ToF32(value)
  %1764 = lshr i32 %1755, 16
  %1765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1764)  ; LegacyF16ToF32(value)
  %1766 = and i32 %1756, 65535
  %1767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1766)  ; LegacyF16ToF32(value)
  %1768 = lshr i32 %1756, 16
  %1769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1768)  ; LegacyF16ToF32(value)
  %1770 = and i32 %1757, 65535
  %1771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1770)  ; LegacyF16ToF32(value)
  %1772 = lshr i32 %1757, 16
  %1773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1772)  ; LegacyF16ToF32(value)
  %1774 = fsub fast float %1641, %1761
  %1775 = call float @dx.op.binary.f32(i32 35, float %1774, float 0.000000e+00)  ; FMax(a,b)
  %1776 = fmul fast float %1665, %1775
  %1777 = fsub fast float %1759, %1776
  %1778 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1777)  ; FMax(a,b)
  %1779 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1778)  ; FMax(a,b)
  %1780 = fsub fast float %1641, %1765
  %1781 = call float @dx.op.binary.f32(i32 35, float %1780, float 0.000000e+00)  ; FMax(a,b)
  %1782 = fmul fast float %1665, %1781
  %1783 = fsub fast float %1763, %1782
  %1784 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1783)  ; FMax(a,b)
  %1785 = call float @dx.op.binary.f32(i32 35, float %1779, float %1784)  ; FMax(a,b)
  %1786 = fsub fast float %1641, %1769
  %1787 = call float @dx.op.binary.f32(i32 35, float %1786, float 0.000000e+00)  ; FMax(a,b)
  %1788 = fmul fast float %1665, %1787
  %1789 = fsub fast float %1767, %1788
  %1790 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1789)  ; FMax(a,b)
  %1791 = call float @dx.op.binary.f32(i32 35, float %1785, float %1790)  ; FMax(a,b)
  %1792 = fsub fast float %1641, %1773
  %1793 = call float @dx.op.binary.f32(i32 35, float %1792, float 0.000000e+00)  ; FMax(a,b)
  %1794 = fmul fast float %1665, %1793
  %1795 = fsub fast float %1771, %1794
  %1796 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1795)  ; FMax(a,b)
  %1797 = call float @dx.op.binary.f32(i32 35, float %1791, float %1796)  ; FMax(a,b)
  %1798 = fmul fast float %1797, %1688
  store i32 %1596, i32* %1629, align 4
  store i32 %1597, i32* %1630, align 4
  store i32 %1598, i32* %1631, align 4
  store i32 %1599, i32* %1632, align 4
  %1799 = load i32, i32* %1633, align 4, !tbaa !69
  %1800 = mul i32 %1799, %1592
  %1801 = mul i32 %1799, %1593
  %1802 = add i32 %1607, %1800
  %1803 = add i32 %1611, %1801
  %1804 = and i32 %1802, %1603
  %1805 = and i32 %1803, %1603
  %1806 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1804, i32 %1805, i32 %1517, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1807 = extractvalue %dx.types.ResRet.i32 %1806, 0
  %1808 = extractvalue %dx.types.ResRet.i32 %1806, 1
  %1809 = extractvalue %dx.types.ResRet.i32 %1806, 2
  %1810 = extractvalue %dx.types.ResRet.i32 %1806, 3
  %1811 = and i32 %1807, 65535
  %1812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1811)  ; LegacyF16ToF32(value)
  %1813 = lshr i32 %1807, 16
  %1814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1813)  ; LegacyF16ToF32(value)
  %1815 = and i32 %1808, 65535
  %1816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1815)  ; LegacyF16ToF32(value)
  %1817 = lshr i32 %1808, 16
  %1818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1817)  ; LegacyF16ToF32(value)
  %1819 = and i32 %1809, 65535
  %1820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1819)  ; LegacyF16ToF32(value)
  %1821 = lshr i32 %1809, 16
  %1822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1821)  ; LegacyF16ToF32(value)
  %1823 = and i32 %1810, 65535
  %1824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1823)  ; LegacyF16ToF32(value)
  %1825 = lshr i32 %1810, 16
  %1826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1825)  ; LegacyF16ToF32(value)
  %1827 = fsub fast float %1641, %1814
  %1828 = call float @dx.op.binary.f32(i32 35, float %1827, float 0.000000e+00)  ; FMax(a,b)
  %1829 = fmul fast float %1665, %1828
  %1830 = fsub fast float %1812, %1829
  %1831 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1830)  ; FMax(a,b)
  %1832 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1831)  ; FMax(a,b)
  %1833 = fsub fast float %1641, %1818
  %1834 = call float @dx.op.binary.f32(i32 35, float %1833, float 0.000000e+00)  ; FMax(a,b)
  %1835 = fmul fast float %1665, %1834
  %1836 = fsub fast float %1816, %1835
  %1837 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1836)  ; FMax(a,b)
  %1838 = call float @dx.op.binary.f32(i32 35, float %1832, float %1837)  ; FMax(a,b)
  %1839 = fsub fast float %1641, %1822
  %1840 = call float @dx.op.binary.f32(i32 35, float %1839, float 0.000000e+00)  ; FMax(a,b)
  %1841 = fmul fast float %1665, %1840
  %1842 = fsub fast float %1820, %1841
  %1843 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1842)  ; FMax(a,b)
  %1844 = call float @dx.op.binary.f32(i32 35, float %1838, float %1843)  ; FMax(a,b)
  %1845 = fsub fast float %1641, %1826
  %1846 = call float @dx.op.binary.f32(i32 35, float %1845, float 0.000000e+00)  ; FMax(a,b)
  %1847 = fmul fast float %1665, %1846
  %1848 = fsub fast float %1824, %1847
  %1849 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1848)  ; FMax(a,b)
  %1850 = call float @dx.op.binary.f32(i32 35, float %1844, float %1849)  ; FMax(a,b)
  %1851 = fmul fast float %1850, %1627
  %1852 = fadd fast float %1851, %1798
  %1853 = fmul fast float %1852, %1628
  %1854 = fadd fast float %1745, %1691
  %1855 = fadd fast float %1854, %1853
  br label %2392

; <label>:1856                                    ; preds = %1548
  %1857 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 0
  store float %1578, float* %1857, align 4
  %1858 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 1
  store float %1579, float* %1858, align 4
  %1859 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 2
  store float %1580, float* %1859, align 4
  %1860 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 3
  store float %1581, float* %1860, align 4
  %1861 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 %1517
  %1862 = load float, float* %1861, align 4, !tbaa !63
  %1863 = fmul fast float %1583, %1862
  %1864 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %1863)  ; FMax(a,b)
  %1865 = fmul fast float %1864, %1584
  %1866 = fmul fast float %1864, %1585
  %1867 = call float @dx.op.binary.f32(i32 35, float %1865, float -5.000000e-01)  ; FMax(a,b)
  %1868 = call float @dx.op.binary.f32(i32 35, float %1866, float -5.000000e-01)  ; FMax(a,b)
  %1869 = call float @dx.op.binary.f32(i32 36, float %1867, float 5.000000e-01)  ; FMin(a,b)
  %1870 = call float @dx.op.binary.f32(i32 36, float %1868, float 5.000000e-01)  ; FMin(a,b)
  %1871 = fadd fast float %1869, 5.000000e-01
  %1872 = fadd fast float %1870, 5.000000e-01
  %1873 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %1596, i32* %1873, align 4
  %1874 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %1597, i32* %1874, align 4
  %1875 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %1598, i32* %1875, align 4
  %1876 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %1599, i32* %1876, align 4
  %1877 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 %1594
  %1878 = load i32, i32* %1877, align 4, !tbaa !69
  %1879 = mul i32 %1878, %1592
  %1880 = mul i32 %1878, %1593
  %1881 = add i32 %1600, %1879
  %1882 = add i32 %1601, %1880
  %1883 = and i32 %1881, %1603
  %1884 = and i32 %1882, %1603
  %1885 = fsub fast float %1459, %1529
  %1886 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1883, i32 %1884, i32 %1517, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1887 = extractvalue %dx.types.ResRet.i32 %1886, 0
  %1888 = extractvalue %dx.types.ResRet.i32 %1886, 1
  %1889 = extractvalue %dx.types.ResRet.i32 %1886, 2
  %1890 = extractvalue %dx.types.ResRet.i32 %1886, 3
  %1891 = and i32 %1887, 65535
  %1892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1891)  ; LegacyF16ToF32(value)
  %1893 = lshr i32 %1887, 16
  %1894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1893)  ; LegacyF16ToF32(value)
  %1895 = and i32 %1888, 65535
  %1896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1895)  ; LegacyF16ToF32(value)
  %1897 = lshr i32 %1888, 16
  %1898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1897)  ; LegacyF16ToF32(value)
  %1899 = and i32 %1889, 65535
  %1900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1899)  ; LegacyF16ToF32(value)
  %1901 = lshr i32 %1889, 16
  %1902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1901)  ; LegacyF16ToF32(value)
  %1903 = and i32 %1890, 65535
  %1904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1903)  ; LegacyF16ToF32(value)
  %1905 = lshr i32 %1890, 16
  %1906 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1905)  ; LegacyF16ToF32(value)
  %1907 = fsub fast float %1885, %1894
  %1908 = call float @dx.op.binary.f32(i32 35, float %1907, float 0.000000e+00)  ; FMax(a,b)
  %1909 = extractvalue %dx.types.CBufRet.f32 %1531, 2
  %1910 = fmul fast float %1909, %1908
  %1911 = fsub fast float %1892, %1910
  %1912 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1911)  ; FMax(a,b)
  %1913 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1912)  ; FMax(a,b)
  %1914 = fsub fast float %1885, %1898
  %1915 = call float @dx.op.binary.f32(i32 35, float %1914, float 0.000000e+00)  ; FMax(a,b)
  %1916 = fmul fast float %1909, %1915
  %1917 = fsub fast float %1896, %1916
  %1918 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1917)  ; FMax(a,b)
  %1919 = call float @dx.op.binary.f32(i32 35, float %1913, float %1918)  ; FMax(a,b)
  %1920 = fsub fast float %1885, %1902
  %1921 = call float @dx.op.binary.f32(i32 35, float %1920, float 0.000000e+00)  ; FMax(a,b)
  %1922 = fmul fast float %1909, %1921
  %1923 = fsub fast float %1900, %1922
  %1924 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1923)  ; FMax(a,b)
  %1925 = call float @dx.op.binary.f32(i32 35, float %1919, float %1924)  ; FMax(a,b)
  %1926 = fsub fast float %1885, %1906
  %1927 = call float @dx.op.binary.f32(i32 35, float %1926, float 0.000000e+00)  ; FMax(a,b)
  %1928 = fmul fast float %1909, %1927
  %1929 = fsub fast float %1904, %1928
  %1930 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1929)  ; FMax(a,b)
  %1931 = call float @dx.op.binary.f32(i32 35, float %1925, float %1930)  ; FMax(a,b)
  %1932 = fsub fast float 5.000000e-01, %1869
  %1933 = fsub fast float 5.000000e-01, %1870
  %1934 = fmul fast float %1933, %1932
  %1935 = fmul fast float %1934, %1931
  store i32 %1596, i32* %1873, align 4
  store i32 %1597, i32* %1874, align 4
  store i32 %1598, i32* %1875, align 4
  store i32 %1599, i32* %1876, align 4
  %1936 = load i32, i32* %1877, align 4, !tbaa !69
  %1937 = mul i32 %1936, %1592
  %1938 = mul i32 %1936, %1593
  %1939 = add i32 %1607, %1937
  %1940 = add i32 %1601, %1938
  %1941 = and i32 %1939, %1603
  %1942 = and i32 %1940, %1603
  %1943 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1941, i32 %1942, i32 %1517, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1944 = extractvalue %dx.types.ResRet.i32 %1943, 0
  %1945 = extractvalue %dx.types.ResRet.i32 %1943, 1
  %1946 = extractvalue %dx.types.ResRet.i32 %1943, 2
  %1947 = extractvalue %dx.types.ResRet.i32 %1943, 3
  %1948 = and i32 %1944, 65535
  %1949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1948)  ; LegacyF16ToF32(value)
  %1950 = lshr i32 %1944, 16
  %1951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1950)  ; LegacyF16ToF32(value)
  %1952 = and i32 %1945, 65535
  %1953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1952)  ; LegacyF16ToF32(value)
  %1954 = lshr i32 %1945, 16
  %1955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1954)  ; LegacyF16ToF32(value)
  %1956 = and i32 %1946, 65535
  %1957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1956)  ; LegacyF16ToF32(value)
  %1958 = lshr i32 %1946, 16
  %1959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1958)  ; LegacyF16ToF32(value)
  %1960 = and i32 %1947, 65535
  %1961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1960)  ; LegacyF16ToF32(value)
  %1962 = lshr i32 %1947, 16
  %1963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1962)  ; LegacyF16ToF32(value)
  %1964 = fsub fast float %1885, %1951
  %1965 = call float @dx.op.binary.f32(i32 35, float %1964, float 0.000000e+00)  ; FMax(a,b)
  %1966 = fmul fast float %1909, %1965
  %1967 = fsub fast float %1949, %1966
  %1968 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1967)  ; FMax(a,b)
  %1969 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1968)  ; FMax(a,b)
  %1970 = fsub fast float %1885, %1955
  %1971 = call float @dx.op.binary.f32(i32 35, float %1970, float 0.000000e+00)  ; FMax(a,b)
  %1972 = fmul fast float %1909, %1971
  %1973 = fsub fast float %1953, %1972
  %1974 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1973)  ; FMax(a,b)
  %1975 = call float @dx.op.binary.f32(i32 35, float %1969, float %1974)  ; FMax(a,b)
  %1976 = fsub fast float %1885, %1959
  %1977 = call float @dx.op.binary.f32(i32 35, float %1976, float 0.000000e+00)  ; FMax(a,b)
  %1978 = fmul fast float %1909, %1977
  %1979 = fsub fast float %1957, %1978
  %1980 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1979)  ; FMax(a,b)
  %1981 = call float @dx.op.binary.f32(i32 35, float %1975, float %1980)  ; FMax(a,b)
  %1982 = fsub fast float %1885, %1963
  %1983 = call float @dx.op.binary.f32(i32 35, float %1982, float 0.000000e+00)  ; FMax(a,b)
  %1984 = fmul fast float %1909, %1983
  %1985 = fsub fast float %1961, %1984
  %1986 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1985)  ; FMax(a,b)
  %1987 = call float @dx.op.binary.f32(i32 35, float %1981, float %1986)  ; FMax(a,b)
  %1988 = fmul fast float %1933, %1871
  %1989 = fmul fast float %1988, %1987
  store i32 %1596, i32* %1873, align 4
  store i32 %1597, i32* %1874, align 4
  store i32 %1598, i32* %1875, align 4
  store i32 %1599, i32* %1876, align 4
  %1990 = load i32, i32* %1877, align 4, !tbaa !69
  %1991 = mul i32 %1990, %1592
  %1992 = mul i32 %1990, %1593
  %1993 = add i32 %1600, %1991
  %1994 = add i32 %1611, %1992
  %1995 = and i32 %1993, %1603
  %1996 = and i32 %1994, %1603
  %1997 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1995, i32 %1996, i32 %1517, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1998 = extractvalue %dx.types.ResRet.i32 %1997, 0
  %1999 = extractvalue %dx.types.ResRet.i32 %1997, 1
  %2000 = extractvalue %dx.types.ResRet.i32 %1997, 2
  %2001 = extractvalue %dx.types.ResRet.i32 %1997, 3
  %2002 = and i32 %1998, 65535
  %2003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2002)  ; LegacyF16ToF32(value)
  %2004 = lshr i32 %1998, 16
  %2005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2004)  ; LegacyF16ToF32(value)
  %2006 = and i32 %1999, 65535
  %2007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2006)  ; LegacyF16ToF32(value)
  %2008 = lshr i32 %1999, 16
  %2009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2008)  ; LegacyF16ToF32(value)
  %2010 = and i32 %2000, 65535
  %2011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2010)  ; LegacyF16ToF32(value)
  %2012 = lshr i32 %2000, 16
  %2013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2012)  ; LegacyF16ToF32(value)
  %2014 = and i32 %2001, 65535
  %2015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2014)  ; LegacyF16ToF32(value)
  %2016 = lshr i32 %2001, 16
  %2017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2016)  ; LegacyF16ToF32(value)
  %2018 = fsub fast float %1885, %2005
  %2019 = call float @dx.op.binary.f32(i32 35, float %2018, float 0.000000e+00)  ; FMax(a,b)
  %2020 = fmul fast float %1909, %2019
  %2021 = fsub fast float %2003, %2020
  %2022 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2021)  ; FMax(a,b)
  %2023 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2022)  ; FMax(a,b)
  %2024 = fsub fast float %1885, %2009
  %2025 = call float @dx.op.binary.f32(i32 35, float %2024, float 0.000000e+00)  ; FMax(a,b)
  %2026 = fmul fast float %1909, %2025
  %2027 = fsub fast float %2007, %2026
  %2028 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2027)  ; FMax(a,b)
  %2029 = call float @dx.op.binary.f32(i32 35, float %2023, float %2028)  ; FMax(a,b)
  %2030 = fsub fast float %1885, %2013
  %2031 = call float @dx.op.binary.f32(i32 35, float %2030, float 0.000000e+00)  ; FMax(a,b)
  %2032 = fmul fast float %1909, %2031
  %2033 = fsub fast float %2011, %2032
  %2034 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2033)  ; FMax(a,b)
  %2035 = call float @dx.op.binary.f32(i32 35, float %2029, float %2034)  ; FMax(a,b)
  %2036 = fsub fast float %1885, %2017
  %2037 = call float @dx.op.binary.f32(i32 35, float %2036, float 0.000000e+00)  ; FMax(a,b)
  %2038 = fmul fast float %1909, %2037
  %2039 = fsub fast float %2015, %2038
  %2040 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2039)  ; FMax(a,b)
  %2041 = call float @dx.op.binary.f32(i32 35, float %2035, float %2040)  ; FMax(a,b)
  %2042 = fmul fast float %2041, %1932
  store i32 %1596, i32* %1873, align 4
  store i32 %1597, i32* %1874, align 4
  store i32 %1598, i32* %1875, align 4
  store i32 %1599, i32* %1876, align 4
  %2043 = load i32, i32* %1877, align 4, !tbaa !69
  %2044 = mul i32 %2043, %1592
  %2045 = mul i32 %2043, %1593
  %2046 = add i32 %1607, %2044
  %2047 = add i32 %1611, %2045
  %2048 = and i32 %2046, %1603
  %2049 = and i32 %2047, %1603
  %2050 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %2048, i32 %2049, i32 %1517, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2051 = extractvalue %dx.types.ResRet.i32 %2050, 0
  %2052 = extractvalue %dx.types.ResRet.i32 %2050, 1
  %2053 = extractvalue %dx.types.ResRet.i32 %2050, 2
  %2054 = extractvalue %dx.types.ResRet.i32 %2050, 3
  %2055 = and i32 %2051, 65535
  %2056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2055)  ; LegacyF16ToF32(value)
  %2057 = lshr i32 %2051, 16
  %2058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2057)  ; LegacyF16ToF32(value)
  %2059 = and i32 %2052, 65535
  %2060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2059)  ; LegacyF16ToF32(value)
  %2061 = lshr i32 %2052, 16
  %2062 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2061)  ; LegacyF16ToF32(value)
  %2063 = and i32 %2053, 65535
  %2064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2063)  ; LegacyF16ToF32(value)
  %2065 = lshr i32 %2053, 16
  %2066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2065)  ; LegacyF16ToF32(value)
  %2067 = and i32 %2054, 65535
  %2068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2067)  ; LegacyF16ToF32(value)
  %2069 = lshr i32 %2054, 16
  %2070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2069)  ; LegacyF16ToF32(value)
  %2071 = fsub fast float %1885, %2058
  %2072 = call float @dx.op.binary.f32(i32 35, float %2071, float 0.000000e+00)  ; FMax(a,b)
  %2073 = fmul fast float %1909, %2072
  %2074 = fsub fast float %2056, %2073
  %2075 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2074)  ; FMax(a,b)
  %2076 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2075)  ; FMax(a,b)
  %2077 = fsub fast float %1885, %2062
  %2078 = call float @dx.op.binary.f32(i32 35, float %2077, float 0.000000e+00)  ; FMax(a,b)
  %2079 = fmul fast float %1909, %2078
  %2080 = fsub fast float %2060, %2079
  %2081 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2080)  ; FMax(a,b)
  %2082 = call float @dx.op.binary.f32(i32 35, float %2076, float %2081)  ; FMax(a,b)
  %2083 = fsub fast float %1885, %2066
  %2084 = call float @dx.op.binary.f32(i32 35, float %2083, float 0.000000e+00)  ; FMax(a,b)
  %2085 = fmul fast float %1909, %2084
  %2086 = fsub fast float %2064, %2085
  %2087 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2086)  ; FMax(a,b)
  %2088 = call float @dx.op.binary.f32(i32 35, float %2082, float %2087)  ; FMax(a,b)
  %2089 = fsub fast float %1885, %2070
  %2090 = call float @dx.op.binary.f32(i32 35, float %2089, float 0.000000e+00)  ; FMax(a,b)
  %2091 = fmul fast float %1909, %2090
  %2092 = fsub fast float %2068, %2091
  %2093 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2092)  ; FMax(a,b)
  %2094 = call float @dx.op.binary.f32(i32 35, float %2088, float %2093)  ; FMax(a,b)
  %2095 = fmul fast float %2094, %1871
  %2096 = fadd fast float %2095, %2042
  %2097 = fmul fast float %2096, %1872
  %2098 = fadd fast float %1989, %1935
  %2099 = fadd fast float %2098, %2097
  %2100 = fmul fast float %1515, 5.000000e-01
  %2101 = fmul fast float %1516, 5.000000e-01
  %2102 = fadd fast float %2100, 2.500000e-01
  %2103 = fadd fast float %2101, 2.500000e-01
  %2104 = fmul fast float %1566, %2102
  %2105 = fmul fast float %1566, %2103
  %2106 = fadd fast float %2104, -5.000000e-01
  %2107 = fadd fast float %2105, -5.000000e-01
  %2108 = fptosi float %2106 to i32
  %2109 = fptosi float %2107 to i32
  %2110 = fadd fast float %2104, 5.000000e-01
  %2111 = fadd fast float %2105, 5.000000e-01
  %2112 = call float @dx.op.unary.f32(i32 22, float %2110)  ; Frc(value)
  %2113 = call float @dx.op.unary.f32(i32 22, float %2111)  ; Frc(value)
  %2114 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  store float %1578, float* %2114, align 4
  %2115 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  store float %1579, float* %2115, align 4
  %2116 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  store float %1580, float* %2116, align 4
  %2117 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  store float %1581, float* %2117, align 4
  %2118 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 %1561
  %2119 = load float, float* %2118, align 4, !tbaa !63
  %2120 = fmul fast float %1583, %2119
  %2121 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %2120)  ; FMax(a,b)
  %2122 = fadd fast float %2112, -5.000000e-01
  %2123 = fadd fast float %2113, -5.000000e-01
  %2124 = fmul fast float %2121, %2122
  %2125 = fmul fast float %2121, %2123
  %2126 = call float @dx.op.binary.f32(i32 35, float %2124, float -5.000000e-01)  ; FMax(a,b)
  %2127 = call float @dx.op.binary.f32(i32 35, float %2125, float -5.000000e-01)  ; FMax(a,b)
  %2128 = call float @dx.op.binary.f32(i32 36, float %2126, float 5.000000e-01)  ; FMin(a,b)
  %2129 = call float @dx.op.binary.f32(i32 36, float %2127, float 5.000000e-01)  ; FMin(a,b)
  %2130 = fadd fast float %2128, 5.000000e-01
  %2131 = fadd fast float %2129, 5.000000e-01
  %2132 = call i32 @dx.op.binary.i32(i32 37, i32 %2108, i32 0)  ; IMax(a,b)
  %2133 = call i32 @dx.op.binary.i32(i32 37, i32 %2109, i32 0)  ; IMax(a,b)
  %2134 = call i32 @dx.op.binary.i32(i32 38, i32 %2132, i32 %1586)  ; IMin(a,b)
  %2135 = call i32 @dx.op.binary.i32(i32 38, i32 %2133, i32 %1586)  ; IMin(a,b)
  %2136 = sub i32 2, %1517
  %2137 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %1596, i32* %2137, align 4
  %2138 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %1597, i32* %2138, align 4
  %2139 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %1598, i32* %2139, align 4
  %2140 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %1599, i32* %2140, align 4
  %2141 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 %2136
  %2142 = load i32, i32* %2141, align 4, !tbaa !69
  %2143 = mul i32 %2142, %1592
  %2144 = mul i32 %2142, %1593
  %2145 = add i32 %2134, 536870912
  %2146 = add i32 %2145, %2143
  %2147 = add i32 %2135, 536870912
  %2148 = add i32 %2147, %2144
  %2149 = and i32 %2146, %1603
  %2150 = and i32 %2148, %1603
  %2151 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %2149, i32 %2150, i32 %1561, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2152 = extractvalue %dx.types.ResRet.i32 %2151, 0
  %2153 = extractvalue %dx.types.ResRet.i32 %2151, 1
  %2154 = extractvalue %dx.types.ResRet.i32 %2151, 2
  %2155 = extractvalue %dx.types.ResRet.i32 %2151, 3
  %2156 = and i32 %2152, 65535
  %2157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2156)  ; LegacyF16ToF32(value)
  %2158 = lshr i32 %2152, 16
  %2159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2158)  ; LegacyF16ToF32(value)
  %2160 = and i32 %2153, 65535
  %2161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2160)  ; LegacyF16ToF32(value)
  %2162 = lshr i32 %2153, 16
  %2163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2162)  ; LegacyF16ToF32(value)
  %2164 = and i32 %2154, 65535
  %2165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2164)  ; LegacyF16ToF32(value)
  %2166 = lshr i32 %2154, 16
  %2167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2166)  ; LegacyF16ToF32(value)
  %2168 = and i32 %2155, 65535
  %2169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2168)  ; LegacyF16ToF32(value)
  %2170 = lshr i32 %2155, 16
  %2171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2170)  ; LegacyF16ToF32(value)
  %2172 = fsub fast float %1885, %2159
  %2173 = call float @dx.op.binary.f32(i32 35, float %2172, float 0.000000e+00)  ; FMax(a,b)
  %2174 = fmul fast float %1909, %2173
  %2175 = fsub fast float %2157, %2174
  %2176 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2175)  ; FMax(a,b)
  %2177 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2176)  ; FMax(a,b)
  %2178 = fsub fast float %1885, %2163
  %2179 = call float @dx.op.binary.f32(i32 35, float %2178, float 0.000000e+00)  ; FMax(a,b)
  %2180 = fmul fast float %1909, %2179
  %2181 = fsub fast float %2161, %2180
  %2182 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2181)  ; FMax(a,b)
  %2183 = call float @dx.op.binary.f32(i32 35, float %2177, float %2182)  ; FMax(a,b)
  %2184 = fsub fast float %1885, %2167
  %2185 = call float @dx.op.binary.f32(i32 35, float %2184, float 0.000000e+00)  ; FMax(a,b)
  %2186 = fmul fast float %1909, %2185
  %2187 = fsub fast float %2165, %2186
  %2188 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2187)  ; FMax(a,b)
  %2189 = call float @dx.op.binary.f32(i32 35, float %2183, float %2188)  ; FMax(a,b)
  %2190 = fsub fast float %1885, %2171
  %2191 = call float @dx.op.binary.f32(i32 35, float %2190, float 0.000000e+00)  ; FMax(a,b)
  %2192 = fmul fast float %1909, %2191
  %2193 = fsub fast float %2169, %2192
  %2194 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2193)  ; FMax(a,b)
  %2195 = call float @dx.op.binary.f32(i32 35, float %2189, float %2194)  ; FMax(a,b)
  %2196 = fsub fast float 5.000000e-01, %2128
  %2197 = fsub fast float 5.000000e-01, %2129
  %2198 = fmul fast float %2197, %2196
  %2199 = fmul fast float %2198, %2195
  %2200 = add i32 %2108, 1
  %2201 = call i32 @dx.op.binary.i32(i32 37, i32 %2200, i32 0)  ; IMax(a,b)
  %2202 = call i32 @dx.op.binary.i32(i32 38, i32 %2201, i32 %1586)  ; IMin(a,b)
  store i32 %1596, i32* %2137, align 4
  store i32 %1597, i32* %2138, align 4
  store i32 %1598, i32* %2139, align 4
  store i32 %1599, i32* %2140, align 4
  %2203 = load i32, i32* %2141, align 4, !tbaa !69
  %2204 = mul i32 %2203, %1592
  %2205 = mul i32 %2203, %1593
  %2206 = add i32 %2202, 536870912
  %2207 = add i32 %2206, %2204
  %2208 = add i32 %2147, %2205
  %2209 = and i32 %2207, %1603
  %2210 = and i32 %2208, %1603
  %2211 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %2209, i32 %2210, i32 %1561, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2212 = extractvalue %dx.types.ResRet.i32 %2211, 0
  %2213 = extractvalue %dx.types.ResRet.i32 %2211, 1
  %2214 = extractvalue %dx.types.ResRet.i32 %2211, 2
  %2215 = extractvalue %dx.types.ResRet.i32 %2211, 3
  %2216 = and i32 %2212, 65535
  %2217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2216)  ; LegacyF16ToF32(value)
  %2218 = lshr i32 %2212, 16
  %2219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2218)  ; LegacyF16ToF32(value)
  %2220 = and i32 %2213, 65535
  %2221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2220)  ; LegacyF16ToF32(value)
  %2222 = lshr i32 %2213, 16
  %2223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2222)  ; LegacyF16ToF32(value)
  %2224 = and i32 %2214, 65535
  %2225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2224)  ; LegacyF16ToF32(value)
  %2226 = lshr i32 %2214, 16
  %2227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2226)  ; LegacyF16ToF32(value)
  %2228 = and i32 %2215, 65535
  %2229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2228)  ; LegacyF16ToF32(value)
  %2230 = lshr i32 %2215, 16
  %2231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2230)  ; LegacyF16ToF32(value)
  %2232 = fsub fast float %1885, %2219
  %2233 = call float @dx.op.binary.f32(i32 35, float %2232, float 0.000000e+00)  ; FMax(a,b)
  %2234 = fmul fast float %1909, %2233
  %2235 = fsub fast float %2217, %2234
  %2236 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2235)  ; FMax(a,b)
  %2237 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2236)  ; FMax(a,b)
  %2238 = fsub fast float %1885, %2223
  %2239 = call float @dx.op.binary.f32(i32 35, float %2238, float 0.000000e+00)  ; FMax(a,b)
  %2240 = fmul fast float %1909, %2239
  %2241 = fsub fast float %2221, %2240
  %2242 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2241)  ; FMax(a,b)
  %2243 = call float @dx.op.binary.f32(i32 35, float %2237, float %2242)  ; FMax(a,b)
  %2244 = fsub fast float %1885, %2227
  %2245 = call float @dx.op.binary.f32(i32 35, float %2244, float 0.000000e+00)  ; FMax(a,b)
  %2246 = fmul fast float %1909, %2245
  %2247 = fsub fast float %2225, %2246
  %2248 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2247)  ; FMax(a,b)
  %2249 = call float @dx.op.binary.f32(i32 35, float %2243, float %2248)  ; FMax(a,b)
  %2250 = fsub fast float %1885, %2231
  %2251 = call float @dx.op.binary.f32(i32 35, float %2250, float 0.000000e+00)  ; FMax(a,b)
  %2252 = fmul fast float %1909, %2251
  %2253 = fsub fast float %2229, %2252
  %2254 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2253)  ; FMax(a,b)
  %2255 = call float @dx.op.binary.f32(i32 35, float %2249, float %2254)  ; FMax(a,b)
  %2256 = fmul fast float %2197, %2130
  %2257 = fmul fast float %2256, %2255
  %2258 = add i32 %2109, 1
  %2259 = call i32 @dx.op.binary.i32(i32 37, i32 %2258, i32 0)  ; IMax(a,b)
  %2260 = call i32 @dx.op.binary.i32(i32 38, i32 %2259, i32 %1586)  ; IMin(a,b)
  store i32 %1596, i32* %2137, align 4
  store i32 %1597, i32* %2138, align 4
  store i32 %1598, i32* %2139, align 4
  store i32 %1599, i32* %2140, align 4
  %2261 = load i32, i32* %2141, align 4, !tbaa !69
  %2262 = mul i32 %2261, %1592
  %2263 = mul i32 %2261, %1593
  %2264 = add i32 %2145, %2262
  %2265 = add i32 %2260, 536870912
  %2266 = add i32 %2265, %2263
  %2267 = and i32 %2264, %1603
  %2268 = and i32 %2266, %1603
  %2269 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %2267, i32 %2268, i32 %1561, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = extractvalue %dx.types.ResRet.i32 %2269, 1
  %2272 = extractvalue %dx.types.ResRet.i32 %2269, 2
  %2273 = extractvalue %dx.types.ResRet.i32 %2269, 3
  %2274 = and i32 %2270, 65535
  %2275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2274)  ; LegacyF16ToF32(value)
  %2276 = lshr i32 %2270, 16
  %2277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2276)  ; LegacyF16ToF32(value)
  %2278 = and i32 %2271, 65535
  %2279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2278)  ; LegacyF16ToF32(value)
  %2280 = lshr i32 %2271, 16
  %2281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2280)  ; LegacyF16ToF32(value)
  %2282 = and i32 %2272, 65535
  %2283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2282)  ; LegacyF16ToF32(value)
  %2284 = lshr i32 %2272, 16
  %2285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2284)  ; LegacyF16ToF32(value)
  %2286 = and i32 %2273, 65535
  %2287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2286)  ; LegacyF16ToF32(value)
  %2288 = lshr i32 %2273, 16
  %2289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2288)  ; LegacyF16ToF32(value)
  %2290 = fsub fast float %1885, %2277
  %2291 = call float @dx.op.binary.f32(i32 35, float %2290, float 0.000000e+00)  ; FMax(a,b)
  %2292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %2293 = extractvalue %dx.types.CBufRet.f32 %2292, 2
  %2294 = fmul fast float %2293, %2291
  %2295 = fsub fast float %2275, %2294
  %2296 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2295)  ; FMax(a,b)
  %2297 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2296)  ; FMax(a,b)
  %2298 = fsub fast float %1885, %2281
  %2299 = call float @dx.op.binary.f32(i32 35, float %2298, float 0.000000e+00)  ; FMax(a,b)
  %2300 = fmul fast float %2293, %2299
  %2301 = fsub fast float %2279, %2300
  %2302 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2301)  ; FMax(a,b)
  %2303 = call float @dx.op.binary.f32(i32 35, float %2297, float %2302)  ; FMax(a,b)
  %2304 = fsub fast float %1885, %2285
  %2305 = call float @dx.op.binary.f32(i32 35, float %2304, float 0.000000e+00)  ; FMax(a,b)
  %2306 = fmul fast float %2293, %2305
  %2307 = fsub fast float %2283, %2306
  %2308 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2307)  ; FMax(a,b)
  %2309 = call float @dx.op.binary.f32(i32 35, float %2303, float %2308)  ; FMax(a,b)
  %2310 = fsub fast float %1885, %2289
  %2311 = call float @dx.op.binary.f32(i32 35, float %2310, float 0.000000e+00)  ; FMax(a,b)
  %2312 = fmul fast float %2293, %2311
  %2313 = fsub fast float %2287, %2312
  %2314 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2313)  ; FMax(a,b)
  %2315 = call float @dx.op.binary.f32(i32 35, float %2309, float %2314)  ; FMax(a,b)
  %2316 = fmul fast float %2315, %2196
  store i32 %1596, i32* %2137, align 4
  store i32 %1597, i32* %2138, align 4
  store i32 %1598, i32* %2139, align 4
  store i32 %1599, i32* %2140, align 4
  %2317 = load i32, i32* %2141, align 4, !tbaa !69
  %2318 = mul i32 %2317, %1592
  %2319 = mul i32 %2317, %1593
  %2320 = add i32 %2206, %2318
  %2321 = add i32 %2265, %2319
  %2322 = and i32 %2320, %1603
  %2323 = and i32 %2321, %1603
  %2324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %2325 = extractvalue %dx.types.CBufRet.f32 %2324, 0
  %2326 = fsub fast float %1459, %2325
  %2327 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %2322, i32 %2323, i32 %1561, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2328 = extractvalue %dx.types.ResRet.i32 %2327, 0
  %2329 = extractvalue %dx.types.ResRet.i32 %2327, 1
  %2330 = extractvalue %dx.types.ResRet.i32 %2327, 2
  %2331 = extractvalue %dx.types.ResRet.i32 %2327, 3
  %2332 = and i32 %2328, 65535
  %2333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2332)  ; LegacyF16ToF32(value)
  %2334 = lshr i32 %2328, 16
  %2335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2334)  ; LegacyF16ToF32(value)
  %2336 = and i32 %2329, 65535
  %2337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2336)  ; LegacyF16ToF32(value)
  %2338 = lshr i32 %2329, 16
  %2339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2338)  ; LegacyF16ToF32(value)
  %2340 = and i32 %2330, 65535
  %2341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2340)  ; LegacyF16ToF32(value)
  %2342 = lshr i32 %2330, 16
  %2343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2342)  ; LegacyF16ToF32(value)
  %2344 = and i32 %2331, 65535
  %2345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2344)  ; LegacyF16ToF32(value)
  %2346 = lshr i32 %2331, 16
  %2347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2346)  ; LegacyF16ToF32(value)
  %2348 = fsub fast float %2326, %2335
  %2349 = call float @dx.op.binary.f32(i32 35, float %2348, float 0.000000e+00)  ; FMax(a,b)
  %2350 = fmul fast float %2293, %2349
  %2351 = fsub fast float %2333, %2350
  %2352 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2351)  ; FMax(a,b)
  %2353 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2352)  ; FMax(a,b)
  %2354 = fsub fast float %2326, %2339
  %2355 = call float @dx.op.binary.f32(i32 35, float %2354, float 0.000000e+00)  ; FMax(a,b)
  %2356 = fmul fast float %2293, %2355
  %2357 = fsub fast float %2337, %2356
  %2358 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2357)  ; FMax(a,b)
  %2359 = call float @dx.op.binary.f32(i32 35, float %2353, float %2358)  ; FMax(a,b)
  %2360 = fsub fast float %2326, %2343
  %2361 = call float @dx.op.binary.f32(i32 35, float %2360, float 0.000000e+00)  ; FMax(a,b)
  %2362 = fmul fast float %2293, %2361
  %2363 = fsub fast float %2341, %2362
  %2364 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2363)  ; FMax(a,b)
  %2365 = call float @dx.op.binary.f32(i32 35, float %2359, float %2364)  ; FMax(a,b)
  %2366 = fsub fast float %2326, %2347
  %2367 = call float @dx.op.binary.f32(i32 35, float %2366, float 0.000000e+00)  ; FMax(a,b)
  %2368 = fmul fast float %2293, %2367
  %2369 = fsub fast float %2345, %2368
  %2370 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2369)  ; FMax(a,b)
  %2371 = call float @dx.op.binary.f32(i32 35, float %2365, float %2370)  ; FMax(a,b)
  %2372 = fmul fast float %2371, %2130
  %2373 = fadd fast float %2372, %2316
  %2374 = fmul fast float %2373, %2131
  %2375 = fadd fast float %2257, %2199
  %2376 = fadd fast float %2375, %2374
  %2377 = call float @dx.op.binary.f32(i32 35, float %1553, float %1554)  ; FMax(a,b)
  %2378 = extractvalue %dx.types.CBufRet.f32 %2292, 1
  %2379 = fmul fast float %2378, 2.000000e+00
  %2380 = fadd fast float %2377, -1.000000e+00
  %2381 = fadd fast float %2380, %2379
  %2382 = fdiv fast float %2381, %2379
  %2383 = call float @dx.op.unary.f32(i32 7, float %2382)  ; Saturate(value)
  %2384 = fmul fast float %2383, 2.000000e+00
  %2385 = fsub fast float 3.000000e+00, %2384
  %2386 = fmul fast float %2383, %2383
  %2387 = fmul fast float %2386, %2385
  %2388 = fmul fast float %2387, %2376
  %2389 = fsub fast float 1.000000e+00, %2387
  %2390 = fmul fast float %2389, %2099
  %2391 = fadd fast float %2390, %2388
  br label %2392

; <label>:2392                                    ; preds = %1856, %1612, %1514
  %2393 = phi float [ 0.000000e+00, %1514 ], [ %2391, %1856 ], [ %1855, %1612 ]
  %2394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2395 = extractvalue %dx.types.CBufRet.f32 %2394, 0
  %2396 = extractvalue %dx.types.CBufRet.f32 %2394, 1
  %2397 = fsub fast float %1457, %2395
  %2398 = fsub fast float %1458, %2396
  %2399 = fmul fast float %2397, %2397
  %2400 = fmul fast float %2398, %2398
  %2401 = fadd fast float %2399, %2400
  %2402 = call float @dx.op.unary.f32(i32 24, float %2401)  ; Sqrt(value)
  %2403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %2404 = extractvalue %dx.types.CBufRet.f32 %2403, 0
  %2405 = extractvalue %dx.types.CBufRet.f32 %2403, 1
  %2406 = fsub fast float %2405, %2404
  %2407 = fsub fast float %2402, %2404
  %2408 = fdiv fast float %2407, %2406
  %2409 = call float @dx.op.unary.f32(i32 7, float %2408)  ; Saturate(value)
  %2410 = fmul fast float %2409, 2.000000e+00
  %2411 = fsub fast float 3.000000e+00, %2410
  %2412 = fmul fast float %2409, %2409
  %2413 = fmul fast float %2412, %2411
  %2414 = fsub fast float 1.000000e+00, %2413
  %2415 = fmul fast float %2414, %2393
  %2416 = fadd fast float %2415, %1450
  %2417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %2418 = extractvalue %dx.types.CBufRet.i32 %2417, 0
  %2419 = and i32 %2418, 7
  %2420 = icmp eq i32 %2419, 0
  br i1 %2420, label %2492, label %2421

; <label>:2421                                    ; preds = %2392
  %2422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2423 = extractvalue %dx.types.CBufRet.f32 %2422, 0
  %2424 = extractvalue %dx.types.CBufRet.f32 %2422, 1
  %2425 = extractvalue %dx.types.CBufRet.f32 %2422, 2
  %2426 = fadd fast float %2423, %98
  %2427 = fadd fast float %2424, %99
  %2428 = fadd fast float %2425, %100
  %2429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %2430 = extractvalue %dx.types.CBufRet.f32 %2429, 0
  %2431 = extractvalue %dx.types.CBufRet.f32 %2429, 1
  %2432 = extractvalue %dx.types.CBufRet.f32 %2429, 2
  %2433 = extractvalue %dx.types.CBufRet.f32 %2429, 3
  %2434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %2435 = extractvalue %dx.types.CBufRet.f32 %2434, 0
  %2436 = extractvalue %dx.types.CBufRet.f32 %2434, 1
  %2437 = extractvalue %dx.types.CBufRet.f32 %2434, 2
  %2438 = extractvalue %dx.types.CBufRet.f32 %2434, 3
  %2439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %2440 = extractvalue %dx.types.CBufRet.f32 %2439, 0
  %2441 = extractvalue %dx.types.CBufRet.f32 %2439, 1
  %2442 = extractvalue %dx.types.CBufRet.f32 %2439, 2
  %2443 = extractvalue %dx.types.CBufRet.f32 %2439, 3
  %2444 = fmul fast float %2426, %2430
  %2445 = call float @dx.op.tertiary.f32(i32 46, float %2427, float %2431, float %2444)  ; FMad(a,b,c)
  %2446 = call float @dx.op.tertiary.f32(i32 46, float %2428, float %2432, float %2445)  ; FMad(a,b,c)
  %2447 = fadd fast float %2446, %2433
  %2448 = fmul fast float %2435, %2426
  %2449 = call float @dx.op.tertiary.f32(i32 46, float %2427, float %2436, float %2448)  ; FMad(a,b,c)
  %2450 = call float @dx.op.tertiary.f32(i32 46, float %2428, float %2437, float %2449)  ; FMad(a,b,c)
  %2451 = fadd fast float %2450, %2438
  %2452 = fmul fast float %2440, %2426
  %2453 = call float @dx.op.tertiary.f32(i32 46, float %2427, float %2441, float %2452)  ; FMad(a,b,c)
  %2454 = call float @dx.op.tertiary.f32(i32 46, float %2428, float %2442, float %2453)  ; FMad(a,b,c)
  %2455 = fadd fast float %2454, %2443
  %2456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %2457 = extractvalue %dx.types.CBufRet.f32 %2456, 1
  %2458 = extractvalue %dx.types.CBufRet.f32 %2456, 0
  %2459 = fmul fast float %2458, %152
  %2460 = fadd fast float %2455, %2459
  %2461 = fmul fast float %152, 0x401921FB60000000
  %2462 = call float @dx.op.unary.f32(i32 13, float %2461)  ; Sin(value)
  %2463 = call float @dx.op.unary.f32(i32 12, float %2461)  ; Cos(value)
  %2464 = fmul fast float %2463, %2457
  %2465 = call float @dx.op.tertiary.f32(i32 46, float %2462, float %2457, float 0.000000e+00)  ; FMad(a,b,c)
  %2466 = fmul fast float %2457, %2462
  %2467 = fsub fast float -0.000000e+00, %2466
  %2468 = call float @dx.op.tertiary.f32(i32 46, float %2463, float %2457, float 0.000000e+00)  ; FMad(a,b,c)
  br label %2469

; <label>:2469                                    ; preds = %2469, %2421
  %2470 = phi float [ 0.000000e+00, %2421 ], [ %2484, %2469 ]
  %2471 = phi i32 [ 0, %2421 ], [ %2485, %2469 ]
  %2472 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %2471
  %2473 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %2471
  %2474 = load float, float* %2472, align 4
  %2475 = load float, float* %2473, align 4
  %2476 = fmul fast float %2464, %2474
  %2477 = call float @dx.op.tertiary.f32(i32 46, float %2475, float %2467, float %2476)  ; FMad(a,b,c)
  %2478 = fmul fast float %2474, %2465
  %2479 = call float @dx.op.tertiary.f32(i32 46, float %2475, float %2468, float %2478)  ; FMad(a,b,c)
  %2480 = fadd fast float %2447, %2477
  %2481 = fadd fast float %2451, %2479
  %2482 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %23, float %2480, float %2481, float undef, float undef, i32 0, i32 0, i32 undef, float %2460)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2483 = extractvalue %dx.types.ResRet.f32 %2482, 0
  %2484 = fadd fast float %2483, %2470
  %2485 = add nuw nsw i32 %2471, 1
  %2486 = icmp eq i32 %2485, 4
  br i1 %2486, label %2487, label %2469

; <label>:2487                                    ; preds = %2469
  %2488 = fmul fast float %2484, 2.500000e-01
  %2489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %2490 = extractvalue %dx.types.CBufRet.f32 %2489, 1
  %2491 = fmul fast float %2490, %2488
  br label %2492

; <label>:2492                                    ; preds = %2487, %2392
  %2493 = phi float [ %2488, %2487 ], [ 0.000000e+00, %2392 ]
  %2494 = phi float [ %2491, %2487 ], [ 0.000000e+00, %2392 ]
  %2495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %2496 = extractvalue %dx.types.CBufRet.i32 %2495, 0
  %2497 = and i32 %2496, 7
  %2498 = icmp eq i32 %2497, 0
  br i1 %2498, label %2576, label %2499

; <label>:2499                                    ; preds = %2492
  %2500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.f32 %2500, 0
  %2502 = fmul fast float %2501, %2493
  %2503 = fadd fast float %2502, %2416
  %2504 = extractvalue %dx.types.CBufRet.f32 %2500, 2
  %2505 = fmul fast float %2504, %2493
  %2506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %2507 = extractvalue %dx.types.CBufRet.f32 %2506, 0
  %2508 = fmul fast float %2507, %2493
  %2509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2510 = and i32 %2496, 8
  %2511 = icmp eq i32 %2510, 0
  br i1 %2511, label %2576, label %2512

; <label>:2512                                    ; preds = %2499
  %2513 = extractvalue %dx.types.CBufRet.f32 %2509, 2
  %2514 = fadd fast float %2513, %100
  %2515 = extractvalue %dx.types.CBufRet.f32 %2509, 1
  %2516 = fadd fast float %2515, %99
  %2517 = extractvalue %dx.types.CBufRet.f32 %2509, 0
  %2518 = fadd fast float %2517, %98
  %2519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %2520 = extractvalue %dx.types.CBufRet.f32 %2519, 0
  %2521 = extractvalue %dx.types.CBufRet.f32 %2519, 1
  %2522 = extractvalue %dx.types.CBufRet.f32 %2519, 2
  %2523 = fsub fast float %2518, %2520
  %2524 = fsub fast float %2516, %2521
  %2525 = fsub fast float %2514, %2522
  %2526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %2527 = extractvalue %dx.types.CBufRet.f32 %2526, 0
  %2528 = extractvalue %dx.types.CBufRet.f32 %2526, 1
  %2529 = extractvalue %dx.types.CBufRet.f32 %2526, 2
  %2530 = fmul fast float %2523, %2527
  %2531 = fmul fast float %2524, %2528
  %2532 = fmul fast float %2525, %2529
  %2533 = fcmp fast oge float %2530, 0.000000e+00
  %2534 = fcmp fast oge float %2531, 0.000000e+00
  %2535 = fcmp fast oge float %2532, 0.000000e+00
  %2536 = and i1 %2533, %2534
  %2537 = and i1 %2535, %2536
  %2538 = fcmp fast ole float %2530, 1.000000e+00
  %2539 = fcmp fast ole float %2531, 1.000000e+00
  %2540 = fcmp fast ole float %2532, 1.000000e+00
  %2541 = and i1 %2538, %2539
  %2542 = and i1 %2540, %2541
  %2543 = and i1 %2537, %2542
  br i1 %2543, label %2544, label %2576

; <label>:2544                                    ; preds = %2512
  %2545 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %2546 = extractvalue %dx.types.CBufRet.i32 %2545, 0
  %2547 = icmp eq i32 %2546, 0
  br i1 %2547, label %2554, label %2548

; <label>:2548                                    ; preds = %2544
  %2549 = add i32 %2546, 0
  %2550 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2549, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2551 = fsub fast float -0.000000e+00, %2531
  %2552 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2550, %dx.types.Handle %48, float %2530, float %2551, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2553 = extractvalue %dx.types.ResRet.f32 %2552, 0
  br label %2554

; <label>:2554                                    ; preds = %2548, %2544
  %2555 = phi float [ %2553, %2548 ], [ 1.000000e+00, %2544 ]
  %2556 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %2557 = extractvalue %dx.types.CBufRet.i32 %2556, 0
  %2558 = and i32 %2557, 32
  %2559 = icmp ne i32 %2558, 0
  %2560 = fmul fast float %2555, %2493
  %2561 = select i1 %2559, float %2555, float %2560
  %2562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %2563 = extractvalue %dx.types.CBufRet.f32 %2562, 1
  %2564 = fmul fast float %2561, %2563
  %2565 = fadd fast float %2564, %2503
  %2566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %2567 = extractvalue %dx.types.CBufRet.f32 %2566, 0
  %2568 = fmul fast float %2561, %2567
  %2569 = fadd fast float %2568, %2494
  %2570 = extractvalue %dx.types.CBufRet.f32 %2566, 1
  %2571 = fmul fast float %2561, %2570
  %2572 = fadd fast float %2571, %2505
  %2573 = extractvalue %dx.types.CBufRet.f32 %2566, 2
  %2574 = fmul fast float %2573, %2561
  %2575 = fadd fast float %2574, %2508
  br label %2576

; <label>:2576                                    ; preds = %2554, %2512, %2499, %2492, %1446
  %2577 = phi float [ %2416, %2492 ], [ %1450, %1446 ], [ %2565, %2554 ], [ %2503, %2512 ], [ %2503, %2499 ]
  %2578 = phi float [ %2494, %2492 ], [ 0.000000e+00, %1446 ], [ %2569, %2554 ], [ %2494, %2512 ], [ %2494, %2499 ]
  %2579 = phi float [ 0.000000e+00, %2492 ], [ 0.000000e+00, %1446 ], [ %2572, %2554 ], [ %2505, %2512 ], [ %2505, %2499 ]
  %2580 = phi float [ 0.000000e+00, %2492 ], [ 0.000000e+00, %1446 ], [ %2575, %2554 ], [ %2508, %2512 ], [ %2508, %2499 ]
  %2581 = call float @dx.op.unary.f32(i32 7, float %2577)  ; Saturate(value)
  %2582 = call float @dx.op.unary.f32(i32 7, float %2578)  ; Saturate(value)
  %2583 = call float @dx.op.unary.f32(i32 7, float %2579)  ; Saturate(value)
  %2584 = call float @dx.op.unary.f32(i32 7, float %2580)  ; Saturate(value)
  %2585 = fcmp fast une float %2583, 0.000000e+00
  %2586 = fcmp fast une float %2584, 0.000000e+00
  %2587 = or i1 %2585, %2586
  br i1 %2587, label %2588, label %3154

; <label>:2588                                    ; preds = %2576
  %2589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2590 = extractvalue %dx.types.CBufRet.f32 %2589, 0
  %2591 = extractvalue %dx.types.CBufRet.f32 %2589, 1
  %2592 = extractvalue %dx.types.CBufRet.f32 %2589, 2
  %2593 = fadd fast float %2590, %98
  %2594 = fadd fast float %2591, %99
  %2595 = fadd fast float %2592, %100
  br i1 %2585, label %2596, label %2869

; <label>:2596                                    ; preds = %2588
  %2597 = call float @dx.op.unary.f32(i32 23, float %1283)  ; Log(value)
  %2598 = fmul fast float %2597, 4.000000e+00
  %2599 = call float @dx.op.unary.f32(i32 21, float %2598)  ; Exp(value)
  %2600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %2601 = extractvalue %dx.types.CBufRet.f32 %2600, 0
  %2602 = fmul fast float %2601, %2593
  %2603 = fmul fast float %2601, %2594
  %2604 = fmul fast float %2601, %2595
  %2605 = call float @dx.op.unary.f32(i32 6, float %39)  ; FAbs(value)
  %2606 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %2607 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %2608 = call float @dx.op.unary.f32(i32 23, float %2605)  ; Log(value)
  %2609 = call float @dx.op.unary.f32(i32 23, float %2606)  ; Log(value)
  %2610 = call float @dx.op.unary.f32(i32 23, float %2607)  ; Log(value)
  %2611 = fmul fast float %2608, 4.000000e+00
  %2612 = fmul fast float %2609, 4.000000e+00
  %2613 = fmul fast float %2610, 4.000000e+00
  %2614 = call float @dx.op.unary.f32(i32 21, float %2611)  ; Exp(value)
  %2615 = call float @dx.op.unary.f32(i32 21, float %2612)  ; Exp(value)
  %2616 = call float @dx.op.unary.f32(i32 21, float %2613)  ; Exp(value)
  %2617 = fadd fast float %2615, %2614
  %2618 = fadd fast float %2617, %2616
  %2619 = fdiv fast float 1.000000e+00, %2618
  %2620 = fmul fast float %2619, %2614
  %2621 = fcmp fast ogt float %39, 0.000000e+00
  %2622 = fcmp fast ogt float %40, 0.000000e+00
  %2623 = fcmp fast ogt float %41, 0.000000e+00
  %2624 = fcmp fast olt float %39, 0.000000e+00
  %2625 = fcmp fast olt float %40, 0.000000e+00
  %2626 = fcmp fast olt float %41, 0.000000e+00
  %2627 = zext i1 %2621 to i32
  %2628 = zext i1 %2622 to i32
  %2629 = zext i1 %2623 to i32
  %2630 = zext i1 %2624 to i32
  %2631 = zext i1 %2625 to i32
  %2632 = zext i1 %2626 to i32
  %2633 = sub nsw i32 %2627, %2630
  %2634 = sub nsw i32 %2628, %2631
  %2635 = sub nsw i32 %2629, %2632
  %2636 = call float @dx.op.unary.f32(i32 83, float %2602)  ; DerivCoarseX(value)
  %2637 = call float @dx.op.unary.f32(i32 83, float %2603)  ; DerivCoarseX(value)
  %2638 = call float @dx.op.unary.f32(i32 83, float %2604)  ; DerivCoarseX(value)
  %2639 = call float @dx.op.unary.f32(i32 84, float %2602)  ; DerivCoarseY(value)
  %2640 = call float @dx.op.unary.f32(i32 84, float %2603)  ; DerivCoarseY(value)
  %2641 = call float @dx.op.unary.f32(i32 84, float %2604)  ; DerivCoarseY(value)
  %2642 = fcmp fast ole float %152, %2620
  %2643 = fmul fast float %2619, %2617
  %2644 = fcmp fast ole float %152, %2643
  %2645 = select i1 %2644, float %2604, float %2602
  %2646 = select i1 %2644, float %2602, float %2603
  %2647 = select i1 %2642, float %2603, float %2645
  %2648 = select i1 %2642, float %2604, float %2646
  %2649 = select i1 %2644, float %2638, float %2636
  %2650 = select i1 %2644, float %2636, float %2637
  %2651 = select i1 %2642, float %2637, float %2649
  %2652 = select i1 %2642, float %2638, float %2650
  %2653 = select i1 %2644, float %2641, float %2639
  %2654 = select i1 %2644, float %2639, float %2640
  %2655 = select i1 %2642, float %2640, float %2653
  %2656 = select i1 %2642, float %2641, float %2654
  %2657 = call float @dx.op.unary.f32(i32 27, float %2647)  ; Round_ni(value)
  %2658 = call float @dx.op.unary.f32(i32 27, float %2648)  ; Round_ni(value)
  %2659 = fptosi float %2657 to i32
  %2660 = fptosi float %2658 to i32
  %2661 = xor i32 %2660, %2659
  %2662 = sitofp i32 %2661 to float
  %2663 = fptosi float %2662 to i32
  %2664 = sitofp i32 %2663 to float
  %2665 = fmul fast float %2664, 0x3FE3C6EF40000000
  %2666 = frem fast float %2657, 2.560000e+02
  %2667 = frem fast float %2658, 2.560000e+02
  %2668 = fptoui float %2666 to i32
  %2669 = fptoui float %2667 to i32
  %2670 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %2668, i32 %2669, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2671 = extractvalue %dx.types.ResRet.f32 %2670, 0
  %2672 = extractvalue %dx.types.ResRet.f32 %2670, 1
  %2673 = extractvalue %dx.types.ResRet.f32 %2670, 2
  %2674 = fadd fast float %2671, %2665
  %2675 = fadd fast float %2672, %2665
  %2676 = fadd fast float %2673, %2665
  %2677 = call float @dx.op.unary.f32(i32 22, float %2674)  ; Frc(value)
  %2678 = call float @dx.op.unary.f32(i32 22, float %2675)  ; Frc(value)
  %2679 = call float @dx.op.unary.f32(i32 22, float %2676)  ; Frc(value)
  %2680 = fmul fast float %2679, 0x401921FB60000000
  %2681 = call float @dx.op.unary.f32(i32 13, float %2680)  ; Sin(value)
  %2682 = call float @dx.op.unary.f32(i32 12, float %2680)  ; Cos(value)
  %2683 = fsub fast float -0.000000e+00, %2682
  %2684 = fmul fast float %2682, %2647
  %2685 = call float @dx.op.tertiary.f32(i32 46, float %2681, float %2648, float %2684)  ; FMad(a,b,c)
  %2686 = fmul fast float %2681, %2647
  %2687 = call float @dx.op.tertiary.f32(i32 46, float %2683, float %2648, float %2686)  ; FMad(a,b,c)
  %2688 = fadd fast float %2685, %2677
  %2689 = fadd fast float %2687, %2678
  %2690 = extractvalue %dx.types.CBufRet.f32 %2600, 3
  %2691 = bitcast float %2690 to i32
  %2692 = icmp eq i32 %2691, 0
  br i1 %2692, label %2731, label %2693

; <label>:2693                                    ; preds = %2596
  %2694 = add i32 %2691, 0
  %2695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2694, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2696 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2695, %dx.types.Handle %48, float %2688, float %2689, float undef, float undef, i32 0, i32 0, i32 undef, float %2651, float %2652, float undef, float %2655, float %2656, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2697 = extractvalue %dx.types.ResRet.f32 %2696, 0
  %2698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %2699 = extractvalue %dx.types.CBufRet.f32 %2698, 1
  %2700 = extractvalue %dx.types.CBufRet.f32 %2698, 2
  %2701 = fsub fast float 1.000000e+00, %2583
  %2702 = call float @dx.op.binary.f32(i32 35, float %2701, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2703 = bitcast float %2583 to i32
  %2704 = sitofp i32 %2703 to float
  %2705 = fadd fast float %2704, 0xC1CFBF8940000000
  %2706 = fmul fast float %2700, %2705
  %2707 = fadd fast float %2706, 0x41CFBF8940000000
  %2708 = fptosi float %2707 to i32
  %2709 = bitcast i32 %2708 to float
  %2710 = bitcast float %2702 to i32
  %2711 = sitofp i32 %2710 to float
  %2712 = fadd fast float %2711, 0xC1CFBF8940000000
  %2713 = fmul fast float %2712, %2700
  %2714 = fadd fast float %2713, 0x41CFBF8940000000
  %2715 = fptosi float %2714 to i32
  %2716 = bitcast i32 %2715 to float
  %2717 = fmul fast float %2709, %2699
  %2718 = fmul fast float %2716, %2699
  %2719 = fsub fast float %2702, %2717
  %2720 = fadd fast float %2718, %2702
  %2721 = call float @dx.op.unary.f32(i32 7, float %2719)  ; Saturate(value)
  %2722 = call float @dx.op.unary.f32(i32 7, float %2720)  ; Saturate(value)
  %2723 = fsub fast float %2697, %2721
  %2724 = fsub fast float %2722, %2721
  %2725 = bitcast float %2724 to i32
  %2726 = sub nsw i32 2129859010, %2725
  %2727 = bitcast i32 %2726 to float
  %2728 = fmul fast float %2727, %2723
  %2729 = call float @dx.op.unary.f32(i32 7, float %2728)  ; Saturate(value)
  %2730 = fcmp fast olt float %2729, 0x3F70101020000000
  br i1 %2730, label %2869, label %2731

; <label>:2731                                    ; preds = %2693, %2596
  %2732 = phi float [ %2729, %2693 ], [ %2583, %2596 ]
  %2733 = fmul fast float %2732, %2599
  %2734 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %2735 = extractvalue %dx.types.CBufRet.i32 %2734, 1
  %2736 = extractvalue %dx.types.CBufRet.i32 %2734, 0
  %2737 = add i32 %2736, 0
  %2738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2737, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2739 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2738, %dx.types.Handle %47, float %2688, float %2689, float undef, float undef, i32 0, i32 0, i32 undef, float %2651, float %2652, float undef, float %2655, float %2656, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2740 = extractvalue %dx.types.ResRet.f32 %2739, 0
  %2741 = extractvalue %dx.types.ResRet.f32 %2739, 1
  %2742 = extractvalue %dx.types.ResRet.f32 %2739, 2
  %2743 = extractvalue %dx.types.ResRet.f32 %2739, 3
  %2744 = and i32 %2735, 255
  %2745 = uitofp i32 %2744 to float
  %2746 = lshr i32 %2735, 8
  %2747 = and i32 %2746, 255
  %2748 = uitofp i32 %2747 to float
  %2749 = fmul fast float %2743, %2745
  %2750 = fadd fast float %2749, %2748
  %2751 = fmul fast float %2750, 0x3F70101000000000
  %2752 = fadd fast float %2751, 0xBFB99999A0000000
  %2753 = call float @dx.op.unary.f32(i32 7, float %2752)  ; Saturate(value)
  %2754 = fmul fast float %2753, 0x3FF1C71C80000000
  %2755 = call float @dx.op.binary.f32(i32 36, float %2751, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2756 = fsub fast float 1.000000e+00, %2754
  %2757 = call float @dx.op.unary.f32(i32 7, float %2756)  ; Saturate(value)
  %2758 = fmul fast float %2757, %2740
  %2759 = fmul fast float %2757, %2741
  %2760 = fmul fast float %2757, %2742
  %2761 = call float @dx.op.unary.f32(i32 7, float %2758)  ; Saturate(value)
  %2762 = call float @dx.op.unary.f32(i32 7, float %2759)  ; Saturate(value)
  %2763 = call float @dx.op.unary.f32(i32 7, float %2760)  ; Saturate(value)
  %2764 = fmul fast float %2754, %2740
  %2765 = fmul fast float %2754, %2741
  %2766 = fmul fast float %2754, %2742
  %2767 = fadd fast float %2764, %2755
  %2768 = fadd fast float %2765, %2755
  %2769 = fadd fast float %2766, %2755
  %2770 = call float @dx.op.unary.f32(i32 7, float %2767)  ; Saturate(value)
  %2771 = call float @dx.op.unary.f32(i32 7, float %2768)  ; Saturate(value)
  %2772 = call float @dx.op.unary.f32(i32 7, float %2769)  ; Saturate(value)
  %2773 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %2774 = extractvalue %dx.types.CBufRet.i32 %2773, 3
  %2775 = extractvalue %dx.types.CBufRet.i32 %2773, 2
  %2776 = add i32 %2775, 0
  %2777 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2776, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2778 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2777, %dx.types.Handle %47, float %2688, float %2689, float undef, float undef, i32 0, i32 0, i32 undef, float %2651, float %2652, float undef, float %2655, float %2656, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2779 = extractvalue %dx.types.ResRet.f32 %2778, 0
  %2780 = extractvalue %dx.types.ResRet.f32 %2778, 1
  %2781 = extractvalue %dx.types.ResRet.f32 %2778, 2
  %2782 = extractvalue %dx.types.ResRet.f32 %2778, 3
  %2783 = and i32 %2774, 255
  %2784 = uitofp i32 %2783 to float
  %2785 = lshr i32 %2774, 8
  %2786 = and i32 %2785, 255
  %2787 = uitofp i32 %2786 to float
  %2788 = lshr i32 %2774, 16
  %2789 = and i32 %2788, 255
  %2790 = uitofp i32 %2789 to float
  %2791 = fmul fast float %2790, 0x3F70101000000000
  %2792 = fmul fast float %2779, %2784
  %2793 = fadd fast float %2792, %2787
  %2794 = fmul fast float %2793, 0x3F70101000000000
  %2795 = fadd fast float %2780, -5.000000e-01
  %2796 = fadd fast float %2782, -5.000000e-01
  %2797 = fmul fast float %2795, %2791
  %2798 = fmul fast float %2796, %2791
  %2799 = fadd fast float %2797, 5.000000e-01
  %2800 = fadd fast float %2798, 5.000000e-01
  %2801 = fmul fast float %2799, 2.000000e+00
  %2802 = fadd fast float %2801, -1.000000e+00
  %2803 = fmul fast float %2800, 2.000000e+00
  %2804 = fadd fast float %2803, -1.000000e+00
  %2805 = fadd fast float %2802, %2804
  %2806 = fmul fast float %2805, 5.000000e-01
  %2807 = fsub fast float %2802, %2804
  %2808 = fmul fast float %2807, 5.000000e-01
  %2809 = call float @dx.op.unary.f32(i32 6, float %2806)  ; FAbs(value)
  %2810 = fsub fast float 1.000000e+00, %2809
  %2811 = call float @dx.op.unary.f32(i32 6, float %2808)  ; FAbs(value)
  %2812 = fsub fast float %2810, %2811
  %2813 = call float @dx.op.dot3.f32(i32 55, float %2806, float %2808, float %2812, float %2806, float %2808, float %2812)  ; Dot3(ax,ay,az,bx,by,bz)
  %2814 = call float @dx.op.unary.f32(i32 25, float %2813)  ; Rsqrt(value)
  %2815 = fmul fast float %2806, %2814
  %2816 = fmul fast float %2808, %2814
  %2817 = select i1 %2644, i32 %2634, i32 %2635
  %2818 = select i1 %2642, i32 %2633, i32 %2817
  %2819 = sitofp i32 %2818 to float
  %2820 = fmul fast float %2812, %2819
  %2821 = fmul fast float %2820, %2814
  %2822 = select i1 %2644, float %2821, float %2816
  %2823 = select i1 %2644, float %2816, float %2821
  %2824 = select i1 %2642, float %2821, float %2815
  %2825 = select i1 %2642, float %2816, float %2822
  %2826 = select i1 %2642, float %2815, float %2823
  %2827 = fsub fast float %2761, %1358
  %2828 = fsub fast float %2762, %1359
  %2829 = fsub fast float %2763, %1360
  %2830 = fmul fast float %2827, %2733
  %2831 = fmul fast float %2828, %2733
  %2832 = fmul fast float %2829, %2733
  %2833 = fadd fast float %2830, %1358
  %2834 = fadd fast float %2831, %1359
  %2835 = fadd fast float %2832, %1360
  %2836 = fsub fast float %2770, %1320
  %2837 = fsub fast float %2771, %1321
  %2838 = fsub fast float %2772, %1322
  %2839 = fmul fast float %2836, %2733
  %2840 = fmul fast float %2837, %2733
  %2841 = fmul fast float %2838, %2733
  %2842 = fadd fast float %2839, %1320
  %2843 = fadd fast float %2840, %1321
  %2844 = fadd fast float %2841, %1322
  %2845 = fadd fast float %2824, %1299
  %2846 = fadd fast float %2825, %1300
  %2847 = fadd fast float %2826, %1301
  %2848 = call float @dx.op.dot3.f32(i32 55, float %2845, float %2846, float %2847, float %2845, float %2846, float %2847)  ; Dot3(ax,ay,az,bx,by,bz)
  %2849 = call float @dx.op.unary.f32(i32 25, float %2848)  ; Rsqrt(value)
  %2850 = fmul fast float %2845, %2849
  %2851 = fmul fast float %2846, %2849
  %2852 = fmul fast float %2847, %2849
  %2853 = fsub fast float %2850, %1299
  %2854 = fsub fast float %2851, %1300
  %2855 = fsub fast float %2852, %1301
  %2856 = fmul fast float %2853, %2733
  %2857 = fmul fast float %2854, %2733
  %2858 = fmul fast float %2855, %2733
  %2859 = fadd fast float %2856, %1299
  %2860 = fadd fast float %2857, %1300
  %2861 = fadd fast float %2858, %1301
  %2862 = call float @dx.op.binary.f32(i32 36, float %1283, float %2781)  ; FMin(a,b)
  %2863 = fsub fast float %2862, %1283
  %2864 = fmul fast float %2863, %2733
  %2865 = fadd fast float %2864, %1283
  %2866 = fsub fast float %2794, %1323
  %2867 = fmul fast float %2866, %2733
  %2868 = fadd fast float %2867, %1323
  br label %2869

; <label>:2869                                    ; preds = %2731, %2693, %2588
  %2870 = phi float [ %2833, %2731 ], [ %1358, %2693 ], [ %1358, %2588 ]
  %2871 = phi float [ %2834, %2731 ], [ %1359, %2693 ], [ %1359, %2588 ]
  %2872 = phi float [ %2835, %2731 ], [ %1360, %2693 ], [ %1360, %2588 ]
  %2873 = phi float [ %2842, %2731 ], [ %1320, %2693 ], [ %1320, %2588 ]
  %2874 = phi float [ %2843, %2731 ], [ %1321, %2693 ], [ %1321, %2588 ]
  %2875 = phi float [ %2844, %2731 ], [ %1322, %2693 ], [ %1322, %2588 ]
  %2876 = phi float [ %2859, %2731 ], [ %1299, %2693 ], [ %1299, %2588 ]
  %2877 = phi float [ %2860, %2731 ], [ %1300, %2693 ], [ %1300, %2588 ]
  %2878 = phi float [ %2861, %2731 ], [ %1301, %2693 ], [ %1301, %2588 ]
  %2879 = phi float [ %2868, %2731 ], [ %1323, %2693 ], [ %1323, %2588 ]
  %2880 = phi float [ %2865, %2731 ], [ %1283, %2693 ], [ %1283, %2588 ]
  br i1 %2586, label %2881, label %3154

; <label>:2881                                    ; preds = %2869
  %2882 = call float @dx.op.unary.f32(i32 23, float %2880)  ; Log(value)
  %2883 = fmul fast float %2882, 4.000000e+00
  %2884 = call float @dx.op.unary.f32(i32 21, float %2883)  ; Exp(value)
  %2885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %2886 = extractvalue %dx.types.CBufRet.f32 %2885, 0
  %2887 = fmul fast float %2886, %2593
  %2888 = fmul fast float %2886, %2594
  %2889 = fmul fast float %2886, %2595
  %2890 = call float @dx.op.unary.f32(i32 6, float %39)  ; FAbs(value)
  %2891 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %2892 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %2893 = call float @dx.op.unary.f32(i32 23, float %2890)  ; Log(value)
  %2894 = call float @dx.op.unary.f32(i32 23, float %2891)  ; Log(value)
  %2895 = call float @dx.op.unary.f32(i32 23, float %2892)  ; Log(value)
  %2896 = fmul fast float %2893, 4.000000e+00
  %2897 = fmul fast float %2894, 4.000000e+00
  %2898 = fmul fast float %2895, 4.000000e+00
  %2899 = call float @dx.op.unary.f32(i32 21, float %2896)  ; Exp(value)
  %2900 = call float @dx.op.unary.f32(i32 21, float %2897)  ; Exp(value)
  %2901 = call float @dx.op.unary.f32(i32 21, float %2898)  ; Exp(value)
  %2902 = fadd fast float %2900, %2899
  %2903 = fadd fast float %2902, %2901
  %2904 = fdiv fast float 1.000000e+00, %2903
  %2905 = fmul fast float %2904, %2899
  %2906 = fcmp fast ogt float %39, 0.000000e+00
  %2907 = fcmp fast ogt float %40, 0.000000e+00
  %2908 = fcmp fast ogt float %41, 0.000000e+00
  %2909 = fcmp fast olt float %39, 0.000000e+00
  %2910 = fcmp fast olt float %40, 0.000000e+00
  %2911 = fcmp fast olt float %41, 0.000000e+00
  %2912 = zext i1 %2906 to i32
  %2913 = zext i1 %2907 to i32
  %2914 = zext i1 %2908 to i32
  %2915 = zext i1 %2909 to i32
  %2916 = zext i1 %2910 to i32
  %2917 = zext i1 %2911 to i32
  %2918 = sub nsw i32 %2912, %2915
  %2919 = sub nsw i32 %2913, %2916
  %2920 = sub nsw i32 %2914, %2917
  %2921 = call float @dx.op.unary.f32(i32 83, float %2887)  ; DerivCoarseX(value)
  %2922 = call float @dx.op.unary.f32(i32 83, float %2888)  ; DerivCoarseX(value)
  %2923 = call float @dx.op.unary.f32(i32 83, float %2889)  ; DerivCoarseX(value)
  %2924 = call float @dx.op.unary.f32(i32 84, float %2887)  ; DerivCoarseY(value)
  %2925 = call float @dx.op.unary.f32(i32 84, float %2888)  ; DerivCoarseY(value)
  %2926 = call float @dx.op.unary.f32(i32 84, float %2889)  ; DerivCoarseY(value)
  %2927 = fcmp fast ole float %152, %2905
  %2928 = fmul fast float %2904, %2902
  %2929 = fcmp fast ole float %152, %2928
  %2930 = select i1 %2929, float %2889, float %2887
  %2931 = select i1 %2929, float %2887, float %2888
  %2932 = select i1 %2927, float %2888, float %2930
  %2933 = select i1 %2927, float %2889, float %2931
  %2934 = select i1 %2929, float %2923, float %2921
  %2935 = select i1 %2929, float %2921, float %2922
  %2936 = select i1 %2927, float %2922, float %2934
  %2937 = select i1 %2927, float %2923, float %2935
  %2938 = select i1 %2929, float %2926, float %2924
  %2939 = select i1 %2929, float %2924, float %2925
  %2940 = select i1 %2927, float %2925, float %2938
  %2941 = select i1 %2927, float %2926, float %2939
  %2942 = call float @dx.op.unary.f32(i32 27, float %2932)  ; Round_ni(value)
  %2943 = call float @dx.op.unary.f32(i32 27, float %2933)  ; Round_ni(value)
  %2944 = fptosi float %2942 to i32
  %2945 = fptosi float %2943 to i32
  %2946 = xor i32 %2945, %2944
  %2947 = sitofp i32 %2946 to float
  %2948 = fptosi float %2947 to i32
  %2949 = sitofp i32 %2948 to float
  %2950 = fmul fast float %2949, 0x3FE3C6EF40000000
  %2951 = frem fast float %2942, 2.560000e+02
  %2952 = frem fast float %2943, 2.560000e+02
  %2953 = fptoui float %2951 to i32
  %2954 = fptoui float %2952 to i32
  %2955 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %2953, i32 %2954, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2956 = extractvalue %dx.types.ResRet.f32 %2955, 0
  %2957 = extractvalue %dx.types.ResRet.f32 %2955, 1
  %2958 = extractvalue %dx.types.ResRet.f32 %2955, 2
  %2959 = fadd fast float %2956, %2950
  %2960 = fadd fast float %2957, %2950
  %2961 = fadd fast float %2958, %2950
  %2962 = call float @dx.op.unary.f32(i32 22, float %2959)  ; Frc(value)
  %2963 = call float @dx.op.unary.f32(i32 22, float %2960)  ; Frc(value)
  %2964 = call float @dx.op.unary.f32(i32 22, float %2961)  ; Frc(value)
  %2965 = fmul fast float %2964, 0x401921FB60000000
  %2966 = call float @dx.op.unary.f32(i32 13, float %2965)  ; Sin(value)
  %2967 = call float @dx.op.unary.f32(i32 12, float %2965)  ; Cos(value)
  %2968 = fsub fast float -0.000000e+00, %2967
  %2969 = fmul fast float %2967, %2932
  %2970 = call float @dx.op.tertiary.f32(i32 46, float %2966, float %2933, float %2969)  ; FMad(a,b,c)
  %2971 = fmul fast float %2966, %2932
  %2972 = call float @dx.op.tertiary.f32(i32 46, float %2968, float %2933, float %2971)  ; FMad(a,b,c)
  %2973 = fadd fast float %2970, %2962
  %2974 = fadd fast float %2972, %2963
  %2975 = extractvalue %dx.types.CBufRet.f32 %2885, 3
  %2976 = bitcast float %2975 to i32
  %2977 = icmp eq i32 %2976, 0
  br i1 %2977, label %3016, label %2978

; <label>:2978                                    ; preds = %2881
  %2979 = add i32 %2976, 0
  %2980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2981 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2980, %dx.types.Handle %48, float %2973, float %2974, float undef, float undef, i32 0, i32 0, i32 undef, float %2936, float %2937, float undef, float %2940, float %2941, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2982 = extractvalue %dx.types.ResRet.f32 %2981, 0
  %2983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %2984 = extractvalue %dx.types.CBufRet.f32 %2983, 1
  %2985 = extractvalue %dx.types.CBufRet.f32 %2983, 2
  %2986 = fsub fast float 1.000000e+00, %2584
  %2987 = call float @dx.op.binary.f32(i32 35, float %2986, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2988 = bitcast float %2584 to i32
  %2989 = sitofp i32 %2988 to float
  %2990 = fadd fast float %2989, 0xC1CFBF8940000000
  %2991 = fmul fast float %2985, %2990
  %2992 = fadd fast float %2991, 0x41CFBF8940000000
  %2993 = fptosi float %2992 to i32
  %2994 = bitcast i32 %2993 to float
  %2995 = bitcast float %2987 to i32
  %2996 = sitofp i32 %2995 to float
  %2997 = fadd fast float %2996, 0xC1CFBF8940000000
  %2998 = fmul fast float %2997, %2985
  %2999 = fadd fast float %2998, 0x41CFBF8940000000
  %3000 = fptosi float %2999 to i32
  %3001 = bitcast i32 %3000 to float
  %3002 = fmul fast float %2994, %2984
  %3003 = fmul fast float %3001, %2984
  %3004 = fsub fast float %2987, %3002
  %3005 = fadd fast float %3003, %2987
  %3006 = call float @dx.op.unary.f32(i32 7, float %3004)  ; Saturate(value)
  %3007 = call float @dx.op.unary.f32(i32 7, float %3005)  ; Saturate(value)
  %3008 = fsub fast float %2982, %3006
  %3009 = fsub fast float %3007, %3006
  %3010 = bitcast float %3009 to i32
  %3011 = sub nsw i32 2129859010, %3010
  %3012 = bitcast i32 %3011 to float
  %3013 = fmul fast float %3012, %3008
  %3014 = call float @dx.op.unary.f32(i32 7, float %3013)  ; Saturate(value)
  %3015 = fcmp fast olt float %3014, 0x3F70101020000000
  br i1 %3015, label %3154, label %3016

; <label>:3016                                    ; preds = %2978, %2881
  %3017 = phi float [ %3014, %2978 ], [ %2584, %2881 ]
  %3018 = fmul fast float %3017, %2884
  %3019 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %3020 = extractvalue %dx.types.CBufRet.i32 %3019, 1
  %3021 = extractvalue %dx.types.CBufRet.i32 %3019, 0
  %3022 = add i32 %3021, 0
  %3023 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3022, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3024 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3023, %dx.types.Handle %47, float %2973, float %2974, float undef, float undef, i32 0, i32 0, i32 undef, float %2936, float %2937, float undef, float %2940, float %2941, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3025 = extractvalue %dx.types.ResRet.f32 %3024, 0
  %3026 = extractvalue %dx.types.ResRet.f32 %3024, 1
  %3027 = extractvalue %dx.types.ResRet.f32 %3024, 2
  %3028 = extractvalue %dx.types.ResRet.f32 %3024, 3
  %3029 = and i32 %3020, 255
  %3030 = uitofp i32 %3029 to float
  %3031 = lshr i32 %3020, 8
  %3032 = and i32 %3031, 255
  %3033 = uitofp i32 %3032 to float
  %3034 = fmul fast float %3028, %3030
  %3035 = fadd fast float %3034, %3033
  %3036 = fmul fast float %3035, 0x3F70101000000000
  %3037 = fadd fast float %3036, 0xBFB99999A0000000
  %3038 = call float @dx.op.unary.f32(i32 7, float %3037)  ; Saturate(value)
  %3039 = fmul fast float %3038, 0x3FF1C71C80000000
  %3040 = call float @dx.op.binary.f32(i32 36, float %3036, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3041 = fsub fast float 1.000000e+00, %3039
  %3042 = call float @dx.op.unary.f32(i32 7, float %3041)  ; Saturate(value)
  %3043 = fmul fast float %3042, %3025
  %3044 = fmul fast float %3042, %3026
  %3045 = fmul fast float %3042, %3027
  %3046 = call float @dx.op.unary.f32(i32 7, float %3043)  ; Saturate(value)
  %3047 = call float @dx.op.unary.f32(i32 7, float %3044)  ; Saturate(value)
  %3048 = call float @dx.op.unary.f32(i32 7, float %3045)  ; Saturate(value)
  %3049 = fmul fast float %3039, %3025
  %3050 = fmul fast float %3039, %3026
  %3051 = fmul fast float %3039, %3027
  %3052 = fadd fast float %3049, %3040
  %3053 = fadd fast float %3050, %3040
  %3054 = fadd fast float %3051, %3040
  %3055 = call float @dx.op.unary.f32(i32 7, float %3052)  ; Saturate(value)
  %3056 = call float @dx.op.unary.f32(i32 7, float %3053)  ; Saturate(value)
  %3057 = call float @dx.op.unary.f32(i32 7, float %3054)  ; Saturate(value)
  %3058 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %3059 = extractvalue %dx.types.CBufRet.i32 %3058, 3
  %3060 = extractvalue %dx.types.CBufRet.i32 %3058, 2
  %3061 = add i32 %3060, 0
  %3062 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3061, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3063 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3062, %dx.types.Handle %47, float %2973, float %2974, float undef, float undef, i32 0, i32 0, i32 undef, float %2936, float %2937, float undef, float %2940, float %2941, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3064 = extractvalue %dx.types.ResRet.f32 %3063, 0
  %3065 = extractvalue %dx.types.ResRet.f32 %3063, 1
  %3066 = extractvalue %dx.types.ResRet.f32 %3063, 2
  %3067 = extractvalue %dx.types.ResRet.f32 %3063, 3
  %3068 = and i32 %3059, 255
  %3069 = uitofp i32 %3068 to float
  %3070 = lshr i32 %3059, 8
  %3071 = and i32 %3070, 255
  %3072 = uitofp i32 %3071 to float
  %3073 = lshr i32 %3059, 16
  %3074 = and i32 %3073, 255
  %3075 = uitofp i32 %3074 to float
  %3076 = fmul fast float %3075, 0x3F70101000000000
  %3077 = fmul fast float %3064, %3069
  %3078 = fadd fast float %3077, %3072
  %3079 = fmul fast float %3078, 0x3F70101000000000
  %3080 = fadd fast float %3065, -5.000000e-01
  %3081 = fadd fast float %3067, -5.000000e-01
  %3082 = fmul fast float %3080, %3076
  %3083 = fmul fast float %3081, %3076
  %3084 = fadd fast float %3082, 5.000000e-01
  %3085 = fadd fast float %3083, 5.000000e-01
  %3086 = fmul fast float %3084, 2.000000e+00
  %3087 = fadd fast float %3086, -1.000000e+00
  %3088 = fmul fast float %3085, 2.000000e+00
  %3089 = fadd fast float %3088, -1.000000e+00
  %3090 = fadd fast float %3087, %3089
  %3091 = fmul fast float %3090, 5.000000e-01
  %3092 = fsub fast float %3087, %3089
  %3093 = fmul fast float %3092, 5.000000e-01
  %3094 = call float @dx.op.unary.f32(i32 6, float %3091)  ; FAbs(value)
  %3095 = fsub fast float 1.000000e+00, %3094
  %3096 = call float @dx.op.unary.f32(i32 6, float %3093)  ; FAbs(value)
  %3097 = fsub fast float %3095, %3096
  %3098 = call float @dx.op.dot3.f32(i32 55, float %3091, float %3093, float %3097, float %3091, float %3093, float %3097)  ; Dot3(ax,ay,az,bx,by,bz)
  %3099 = call float @dx.op.unary.f32(i32 25, float %3098)  ; Rsqrt(value)
  %3100 = fmul fast float %3091, %3099
  %3101 = fmul fast float %3093, %3099
  %3102 = select i1 %2929, i32 %2919, i32 %2920
  %3103 = select i1 %2927, i32 %2918, i32 %3102
  %3104 = sitofp i32 %3103 to float
  %3105 = fmul fast float %3097, %3104
  %3106 = fmul fast float %3105, %3099
  %3107 = select i1 %2929, float %3106, float %3101
  %3108 = select i1 %2929, float %3101, float %3106
  %3109 = select i1 %2927, float %3106, float %3100
  %3110 = select i1 %2927, float %3101, float %3107
  %3111 = select i1 %2927, float %3100, float %3108
  %3112 = fsub fast float %3046, %2870
  %3113 = fsub fast float %3047, %2871
  %3114 = fsub fast float %3048, %2872
  %3115 = fmul fast float %3112, %3018
  %3116 = fmul fast float %3113, %3018
  %3117 = fmul fast float %3114, %3018
  %3118 = fadd fast float %3115, %2870
  %3119 = fadd fast float %3116, %2871
  %3120 = fadd fast float %3117, %2872
  %3121 = fsub fast float %3055, %2873
  %3122 = fsub fast float %3056, %2874
  %3123 = fsub fast float %3057, %2875
  %3124 = fmul fast float %3121, %3018
  %3125 = fmul fast float %3122, %3018
  %3126 = fmul fast float %3123, %3018
  %3127 = fadd fast float %3124, %2873
  %3128 = fadd fast float %3125, %2874
  %3129 = fadd fast float %3126, %2875
  %3130 = fadd fast float %3109, %2876
  %3131 = fadd fast float %3110, %2877
  %3132 = fadd fast float %3111, %2878
  %3133 = call float @dx.op.dot3.f32(i32 55, float %3130, float %3131, float %3132, float %3130, float %3131, float %3132)  ; Dot3(ax,ay,az,bx,by,bz)
  %3134 = call float @dx.op.unary.f32(i32 25, float %3133)  ; Rsqrt(value)
  %3135 = fmul fast float %3130, %3134
  %3136 = fmul fast float %3131, %3134
  %3137 = fmul fast float %3132, %3134
  %3138 = fsub fast float %3135, %2876
  %3139 = fsub fast float %3136, %2877
  %3140 = fsub fast float %3137, %2878
  %3141 = fmul fast float %3138, %3018
  %3142 = fmul fast float %3139, %3018
  %3143 = fmul fast float %3140, %3018
  %3144 = fadd fast float %3141, %2876
  %3145 = fadd fast float %3142, %2877
  %3146 = fadd fast float %3143, %2878
  %3147 = call float @dx.op.binary.f32(i32 36, float %2880, float %3066)  ; FMin(a,b)
  %3148 = fsub fast float %3147, %2880
  %3149 = fmul fast float %3148, %3018
  %3150 = fadd fast float %3149, %2880
  %3151 = fsub fast float %3079, %2879
  %3152 = fmul fast float %3151, %3018
  %3153 = fadd fast float %3152, %2879
  br label %3154

; <label>:3154                                    ; preds = %3016, %2978, %2869, %2576
  %3155 = phi float [ %3118, %3016 ], [ %2870, %2978 ], [ %2870, %2869 ], [ %1358, %2576 ]
  %3156 = phi float [ %3119, %3016 ], [ %2871, %2978 ], [ %2871, %2869 ], [ %1359, %2576 ]
  %3157 = phi float [ %3120, %3016 ], [ %2872, %2978 ], [ %2872, %2869 ], [ %1360, %2576 ]
  %3158 = phi float [ %3127, %3016 ], [ %2873, %2978 ], [ %2873, %2869 ], [ %1320, %2576 ]
  %3159 = phi float [ %3128, %3016 ], [ %2874, %2978 ], [ %2874, %2869 ], [ %1321, %2576 ]
  %3160 = phi float [ %3129, %3016 ], [ %2875, %2978 ], [ %2875, %2869 ], [ %1322, %2576 ]
  %3161 = phi float [ %3144, %3016 ], [ %2876, %2978 ], [ %2876, %2869 ], [ %1299, %2576 ]
  %3162 = phi float [ %3145, %3016 ], [ %2877, %2978 ], [ %2877, %2869 ], [ %1300, %2576 ]
  %3163 = phi float [ %3146, %3016 ], [ %2878, %2978 ], [ %2878, %2869 ], [ %1301, %2576 ]
  %3164 = phi float [ %3153, %3016 ], [ %2879, %2978 ], [ %2879, %2869 ], [ %1323, %2576 ]
  %3165 = phi float [ %3150, %3016 ], [ %2880, %2978 ], [ %2880, %2869 ], [ %1283, %2576 ]
  %3166 = fcmp fast une float %2581, 0.000000e+00
  br i1 %3166, label %3167, label %3530

; <label>:3167                                    ; preds = %3154
  %3168 = call float @dx.op.dot3.f32(i32 55, float %98, float %99, float %100, float %98, float %99, float %100)  ; Dot3(ax,ay,az,bx,by,bz)
  %3169 = call float @dx.op.unary.f32(i32 25, float %3168)  ; Rsqrt(value)
  %3170 = fmul fast float %98, %3169
  %3171 = fsub fast float -0.000000e+00, %3170
  %3172 = fmul fast float %99, %3169
  %3173 = fsub fast float -0.000000e+00, %3172
  %3174 = fmul fast float %100, %3169
  %3175 = fsub fast float -0.000000e+00, %3174
  %3176 = call float @dx.op.dot3.f32(i32 55, float %3171, float %3173, float %3175, float %39, float %40, float %41)  ; Dot3(ax,ay,az,bx,by,bz)
  %3177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3178 = fmul fast float %2581, 2.500000e+00
  %3179 = call float @dx.op.unary.f32(i32 7, float %3178)  ; Saturate(value)
  %3180 = fmul fast float %2581, 0x4013FFFFE0000000
  %3181 = fadd fast float %3180, 0xBFFFFFFFE0000000
  %3182 = call float @dx.op.unary.f32(i32 7, float %3181)  ; Saturate(value)
  %3183 = fmul fast float %2581, 0x4004000020000000
  %3184 = fadd fast float %3183, 0xBFF8000040000000
  %3185 = call float @dx.op.unary.f32(i32 7, float %3184)  ; Saturate(value)
  %3186 = call float @dx.op.unary.f32(i32 7, float %3179)  ; Saturate(value)
  %3187 = fmul fast float %1302, 1.000000e+01
  %3188 = call float @dx.op.unary.f32(i32 7, float %3187)  ; Saturate(value)
  %3189 = fmul fast float %3188, 2.000000e+00
  %3190 = fsub fast float 3.000000e+00, %3189
  %3191 = fmul fast float %3188, %3188
  %3192 = fmul fast float %3191, %3190
  %3193 = fsub fast float 1.000000e+00, %3192
  %3194 = fsub fast float 0x3FE3333340000000, %3164
  %3195 = fmul fast float %3194, 0x400AAAAAA0000000
  %3196 = call float @dx.op.unary.f32(i32 7, float %3195)  ; Saturate(value)
  %3197 = fmul fast float %3193, %3196
  %3198 = fmul fast float %3155, 0x3FEA2B8620000000
  %3199 = fmul fast float %3156, 0x3FEA2B8620000000
  %3200 = fmul fast float %3157, 0x3FEA2B8620000000
  %3201 = fadd fast float %3198, 0x3FC81DFBA0000000
  %3202 = fmul fast float %3201, %3155
  %3203 = fadd fast float %3202, 0x3F910E6020000000
  %3204 = fadd fast float %3199, 0x3FC81DFBA0000000
  %3205 = fmul fast float %3204, %3156
  %3206 = fadd fast float %3205, 0x3F910E6020000000
  %3207 = fadd fast float %3200, 0x3FC81DFBA0000000
  %3208 = fmul fast float %3207, %3157
  %3209 = fadd fast float %3208, 0x3F910E6020000000
  %3210 = call float @dx.op.unary.f32(i32 7, float %3203)  ; Saturate(value)
  %3211 = call float @dx.op.unary.f32(i32 7, float %3206)  ; Saturate(value)
  %3212 = call float @dx.op.unary.f32(i32 7, float %3209)  ; Saturate(value)
  %3213 = fsub fast float %3210, %3155
  %3214 = fsub fast float %3211, %3156
  %3215 = fsub fast float %3212, %3157
  %3216 = fmul fast float %3213, %3186
  %3217 = fmul fast float %3216, %3197
  %3218 = fmul fast float %3214, %3186
  %3219 = fmul fast float %3218, %3197
  %3220 = fmul fast float %3215, %3186
  %3221 = fmul fast float %3220, %3197
  %3222 = fadd fast float %3217, %3155
  %3223 = fadd fast float %3219, %3156
  %3224 = fadd fast float %3221, %3157
  %3225 = fmul fast float %3165, %3165
  %3226 = fmul fast float %3225, %3225
  %3227 = fadd fast float %3182, 1.000000e+00
  %3228 = fsub fast float %3227, %3197
  %3229 = call float @dx.op.unary.f32(i32 7, float %3228)  ; Saturate(value)
  %3230 = call float @dx.op.dot3.f32(i32 55, float %39, float %40, float %41, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3231 = call float @dx.op.unary.f32(i32 7, float %3230)  ; Saturate(value)
  %3232 = fsub fast float 1.000000e+00, %3226
  %3233 = call float @dx.op.binary.f32(i32 36, float %3229, float %3232)  ; FMin(a,b)
  %3234 = call float @dx.op.unary.f32(i32 7, float %3185)  ; Saturate(value)
  %3235 = call float @dx.op.binary.f32(i32 35, float %3233, float %3234)  ; FMax(a,b)
  %3236 = fadd fast float %3231, 0xBFE4CCCCC0000000
  %3237 = fmul fast float %3236, 0x4006DB6DA0000000
  %3238 = call float @dx.op.unary.f32(i32 7, float %3237)  ; Saturate(value)
  %3239 = fmul fast float %3238, 2.000000e+00
  %3240 = fsub fast float 3.000000e+00, %3239
  %3241 = bitcast float %3158 to i32
  %3242 = ashr i32 %3241, 1
  %3243 = add nsw i32 %3242, 532487669
  %3244 = bitcast i32 %3243 to float
  %3245 = fsub fast float 1.000000e+00, %3244
  %3246 = bitcast float %3245 to i32
  %3247 = sub nsw i32 2129859010, %3246
  %3248 = bitcast i32 %3247 to float
  %3249 = fmul fast float %3248, 2.000000e+00
  %3250 = bitcast float %3159 to i32
  %3251 = ashr i32 %3250, 1
  %3252 = add nsw i32 %3251, 532487669
  %3253 = bitcast i32 %3252 to float
  %3254 = fsub fast float 1.000000e+00, %3253
  %3255 = bitcast float %3254 to i32
  %3256 = sub nsw i32 2129859010, %3255
  %3257 = bitcast i32 %3256 to float
  %3258 = fmul fast float %3257, 2.000000e+00
  %3259 = bitcast float %3160 to i32
  %3260 = ashr i32 %3259, 1
  %3261 = add nsw i32 %3260, 532487669
  %3262 = bitcast i32 %3261 to float
  %3263 = fsub fast float 1.000000e+00, %3262
  %3264 = bitcast float %3263 to i32
  %3265 = sub nsw i32 2129859010, %3264
  %3266 = bitcast i32 %3265 to float
  %3267 = fmul fast float %3266, 2.000000e+00
  %3268 = fsub fast float 0x4002A9FBE0000000, %3249
  %3269 = fadd fast float %3249, 0x3FD54FDF00000000
  %3270 = bitcast float %3269 to i32
  %3271 = sub nsw i32 2129859010, %3270
  %3272 = bitcast i32 %3271 to float
  %3273 = fmul fast float %3272, %3268
  %3274 = fmul fast float %3273, %3273
  %3275 = fsub fast float 0x4002A9FBE0000000, %3258
  %3276 = fadd fast float %3258, 0x3FD54FDF00000000
  %3277 = bitcast float %3276 to i32
  %3278 = sub nsw i32 2129859010, %3277
  %3279 = bitcast i32 %3278 to float
  %3280 = fmul fast float %3279, %3275
  %3281 = fmul fast float %3280, %3280
  %3282 = fsub fast float 0x4002A9FBE0000000, %3267
  %3283 = fadd fast float %3267, 0x3FD54FDF00000000
  %3284 = bitcast float %3283 to i32
  %3285 = sub nsw i32 2129859010, %3284
  %3286 = bitcast i32 %3285 to float
  %3287 = fmul fast float %3286, %3282
  %3288 = fmul fast float %3287, %3287
  %3289 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3274)  ; FMax(a,b)
  %3290 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3281)  ; FMax(a,b)
  %3291 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3288)  ; FMax(a,b)
  %3292 = fsub fast float 1.000000e+00, %3176
  %3293 = fadd fast float %3292, %3193
  %3294 = call float @dx.op.unary.f32(i32 7, float %3293)  ; Saturate(value)
  %3295 = fsub fast float 1.000000e+00, %1449
  %3296 = fmul fast float %3235, %3295
  %3297 = fmul fast float %3238, %3238
  %3298 = fmul fast float %3297, %3296
  %3299 = fmul fast float %3298, %3240
  %3300 = fmul fast float %3295, 0xBFE99999A0000000
  %3301 = fmul fast float %3300, %3186
  %3302 = fmul fast float %3301, %3197
  %3303 = fadd fast float %3302, 1.000000e+00
  %3304 = fadd fast float %3164, -1.000000e+00
  %3305 = fmul fast float %3303, %3304
  %3306 = fadd fast float %3305, 1.000000e+00
  %3307 = fsub fast float %3289, %3158
  %3308 = fsub fast float %3290, %3159
  %3309 = fsub fast float %3291, %3160
  %3310 = fmul fast float %3299, %3307
  %3311 = fmul fast float %3299, %3308
  %3312 = fmul fast float %3299, %3309
  %3313 = fadd fast float %3310, %3158
  %3314 = fadd fast float %3311, %3159
  %3315 = fadd fast float %3312, %3160
  %3316 = fsub fast float %39, %3161
  %3317 = fsub fast float %40, %3162
  %3318 = fsub fast float %41, %3163
  %3319 = fmul fast float %3299, %3316
  %3320 = fmul fast float %3299, %3317
  %3321 = fmul fast float %3299, %3318
  %3322 = fadd fast float %3319, %3161
  %3323 = fadd fast float %3320, %3162
  %3324 = fadd fast float %3321, %3163
  %3325 = fmul fast float %3299, %3294
  %3326 = call float @dx.op.unary.f32(i32 7, float %3306)  ; Saturate(value)
  %3327 = fsub fast float 1.000000e+00, %3326
  %3328 = fmul fast float %3325, %3327
  %3329 = fadd fast float %3328, %3326
  %3330 = fsub fast float 1.000000e+00, %3165
  %3331 = fmul fast float %3299, %3330
  %3332 = fadd fast float %3331, %3165
  %3333 = fcmp fast une float %2582, 0.000000e+00
  %3334 = fcmp fast ogt float %3231, 0x3FE4CCCCC0000000
  %3335 = and i1 %3333, %3334
  br i1 %3335, label %3336, label %3522

; <label>:3336                                    ; preds = %3167
  %3337 = extractvalue %dx.types.CBufRet.f32 %3177, 1
  %3338 = fadd fast float %3337, %99
  %3339 = extractvalue %dx.types.CBufRet.f32 %3177, 0
  %3340 = fadd fast float %3339, %98
  %3341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3342 = extractvalue %dx.types.CBufRet.f32 %3341, 3
  %3343 = fadd fast float %3342, 0x3FC0A3D700000000
  %3344 = fmul fast float %3343, 0x3FF6666660000000
  %3345 = fmul fast float %3342, 0x3FF2978D40000000
  %3346 = fmul fast float %3342, 0x3FF5BA5E40000000
  %3347 = fmul fast float %3342, 0x3FF94FDF40000000
  %3348 = call float @dx.op.unary.f32(i32 6, float %3340)  ; FAbs(value)
  %3349 = call float @dx.op.unary.f32(i32 6, float %3338)  ; FAbs(value)
  %3350 = fmul fast float %3348, 0x3F8EB851E0000000
  %3351 = fmul fast float %3349, 0x3F8EB851E0000000
  %3352 = fmul fast float %2582, 4.000000e+00
  %3353 = call float @dx.op.unary.f32(i32 7, float %3352)  ; Saturate(value)
  %3354 = fadd fast float %3350, 2.500000e-01
  %3355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %20, float %3354, float %3351, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3356 = extractvalue %dx.types.ResRet.f32 %3355, 0
  %3357 = extractvalue %dx.types.ResRet.f32 %3355, 1
  %3358 = extractvalue %dx.types.ResRet.f32 %3355, 2
  %3359 = extractvalue %dx.types.ResRet.f32 %3355, 3
  %3360 = fmul fast float %3357, 2.000000e+00
  %3361 = fmul fast float %3358, 2.000000e+00
  %3362 = fadd fast float %3360, -1.000000e+00
  %3363 = fadd fast float %3361, -1.000000e+00
  %3364 = fsub fast float 1.000000e+00, %3353
  %3365 = fmul fast float %3364, 8.000000e+00
  %3366 = call float @dx.op.unary.f32(i32 21, float %3365)  ; Exp(value)
  %3367 = fmul fast float %3359, %3366
  %3368 = fadd fast float %3344, -1.000000e+00
  %3369 = fadd fast float %3368, %3359
  %3370 = fadd fast float %3369, %3367
  %3371 = frem fast float %3370, %3366
  %3372 = fcmp fast ole float %3371, 1.000000e+00
  %3373 = call float @dx.op.unary.f32(i32 22, float %3371)  ; Frc(value)
  %3374 = select i1 %3372, float %3373, float 0.000000e+00
  %3375 = fadd fast float %3356, -1.000000e+00
  %3376 = fadd fast float %3375, %3374
  %3377 = fsub fast float 1.000000e+00, %3374
  %3378 = call float @dx.op.unary.f32(i32 7, float %3377)  ; Saturate(value)
  %3379 = fmul fast float %3378, %3356
  %3380 = fmul fast float %3376, 8.000000e+00
  %3381 = call float @dx.op.binary.f32(i32 35, float %3380, float 0.000000e+00)  ; FMax(a,b)
  %3382 = call float @dx.op.binary.f32(i32 36, float %3381, float 4.000000e+00)  ; FMin(a,b)
  %3383 = fmul fast float %3382, 0x400921FB60000000
  %3384 = call float @dx.op.unary.f32(i32 13, float %3383)  ; Sin(value)
  %3385 = fadd fast float %3374, -1.000000e+00
  %3386 = fmul fast float %3379, %3385
  %3387 = fmul fast float %3386, %3384
  %3388 = fmul fast float %3387, %3362
  %3389 = fmul fast float %3387, %3363
  %3390 = fadd fast float %3352, -1.000000e+00
  %3391 = call float @dx.op.unary.f32(i32 7, float %3390)  ; Saturate(value)
  %3392 = fadd fast float %3350, 0xBFE19999A0000000
  %3393 = fadd fast float %3351, 0x3FD3D70A40000000
  %3394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %20, float %3392, float %3393, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3395 = extractvalue %dx.types.ResRet.f32 %3394, 0
  %3396 = extractvalue %dx.types.ResRet.f32 %3394, 1
  %3397 = extractvalue %dx.types.ResRet.f32 %3394, 2
  %3398 = extractvalue %dx.types.ResRet.f32 %3394, 3
  %3399 = fmul fast float %3396, 2.000000e+00
  %3400 = fmul fast float %3397, 2.000000e+00
  %3401 = fadd fast float %3399, -1.000000e+00
  %3402 = fadd fast float %3400, -1.000000e+00
  %3403 = fsub fast float 1.000000e+00, %3391
  %3404 = fmul fast float %3403, 8.000000e+00
  %3405 = call float @dx.op.unary.f32(i32 21, float %3404)  ; Exp(value)
  %3406 = fmul fast float %3398, %3405
  %3407 = fadd fast float %3345, 0xBFE5B22D00000000
  %3408 = fadd fast float %3407, %3398
  %3409 = fadd fast float %3408, %3406
  %3410 = frem fast float %3409, %3405
  %3411 = fcmp fast ole float %3410, 1.000000e+00
  %3412 = call float @dx.op.unary.f32(i32 22, float %3410)  ; Frc(value)
  %3413 = select i1 %3411, float %3412, float 0.000000e+00
  %3414 = fadd fast float %3395, -1.000000e+00
  %3415 = fadd fast float %3414, %3413
  %3416 = fsub fast float 1.000000e+00, %3413
  %3417 = call float @dx.op.unary.f32(i32 7, float %3416)  ; Saturate(value)
  %3418 = fmul fast float %3417, %3395
  %3419 = fmul fast float %3415, 8.000000e+00
  %3420 = call float @dx.op.binary.f32(i32 35, float %3419, float 0.000000e+00)  ; FMax(a,b)
  %3421 = call float @dx.op.binary.f32(i32 36, float %3420, float 4.000000e+00)  ; FMin(a,b)
  %3422 = fmul fast float %3421, 0x400921FB60000000
  %3423 = call float @dx.op.unary.f32(i32 13, float %3422)  ; Sin(value)
  %3424 = fadd fast float %3413, -1.000000e+00
  %3425 = fmul fast float %3418, %3424
  %3426 = fmul fast float %3425, %3423
  %3427 = fmul fast float %3426, %3401
  %3428 = fmul fast float %3426, %3402
  %3429 = fadd fast float %3352, -2.000000e+00
  %3430 = call float @dx.op.unary.f32(i32 7, float %3429)  ; Saturate(value)
  %3431 = fadd fast float %3350, 0x3FE3333340000000
  %3432 = fadd fast float %3351, 0x3FEB333340000000
  %3433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %20, float %3431, float %3432, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3434 = extractvalue %dx.types.ResRet.f32 %3433, 0
  %3435 = extractvalue %dx.types.ResRet.f32 %3433, 1
  %3436 = extractvalue %dx.types.ResRet.f32 %3433, 2
  %3437 = extractvalue %dx.types.ResRet.f32 %3433, 3
  %3438 = fmul fast float %3435, 2.000000e+00
  %3439 = fmul fast float %3436, 2.000000e+00
  %3440 = fadd fast float %3438, -1.000000e+00
  %3441 = fadd fast float %3439, -1.000000e+00
  %3442 = fsub fast float 1.000000e+00, %3430
  %3443 = fmul fast float %3442, 8.000000e+00
  %3444 = call float @dx.op.unary.f32(i32 21, float %3443)  ; Exp(value)
  %3445 = fmul fast float %3437, %3444
  %3446 = fadd fast float %3346, 0xBFD5E35400000000
  %3447 = fadd fast float %3446, %3437
  %3448 = fadd fast float %3447, %3445
  %3449 = frem fast float %3448, %3444
  %3450 = fcmp fast ole float %3449, 1.000000e+00
  %3451 = call float @dx.op.unary.f32(i32 22, float %3449)  ; Frc(value)
  %3452 = select i1 %3450, float %3451, float 0.000000e+00
  %3453 = fadd fast float %3434, -1.000000e+00
  %3454 = fadd fast float %3453, %3452
  %3455 = fsub fast float 1.000000e+00, %3452
  %3456 = call float @dx.op.unary.f32(i32 7, float %3455)  ; Saturate(value)
  %3457 = fmul fast float %3456, %3434
  %3458 = fmul fast float %3454, 8.000000e+00
  %3459 = call float @dx.op.binary.f32(i32 35, float %3458, float 0.000000e+00)  ; FMax(a,b)
  %3460 = call float @dx.op.binary.f32(i32 36, float %3459, float 4.000000e+00)  ; FMin(a,b)
  %3461 = fmul fast float %3460, 0x400921FB60000000
  %3462 = call float @dx.op.unary.f32(i32 13, float %3461)  ; Sin(value)
  %3463 = fadd fast float %3452, -1.000000e+00
  %3464 = fmul fast float %3457, %3463
  %3465 = fmul fast float %3464, %3462
  %3466 = fmul fast float %3465, %3440
  %3467 = fmul fast float %3465, %3441
  %3468 = fadd fast float %3352, -3.000000e+00
  %3469 = call float @dx.op.unary.f32(i32 7, float %3468)  ; Saturate(value)
  %3470 = fadd fast float %3350, 5.000000e-01
  %3471 = fadd fast float %3351, -7.500000e-01
  %3472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %20, float %3470, float %3471, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3473 = extractvalue %dx.types.ResRet.f32 %3472, 0
  %3474 = extractvalue %dx.types.ResRet.f32 %3472, 1
  %3475 = extractvalue %dx.types.ResRet.f32 %3472, 2
  %3476 = extractvalue %dx.types.ResRet.f32 %3472, 3
  %3477 = fmul fast float %3474, 2.000000e+00
  %3478 = fmul fast float %3475, 2.000000e+00
  %3479 = fadd fast float %3477, -1.000000e+00
  %3480 = fadd fast float %3478, -1.000000e+00
  %3481 = fsub fast float 1.000000e+00, %3469
  %3482 = fmul fast float %3481, 8.000000e+00
  %3483 = call float @dx.op.unary.f32(i32 21, float %3482)  ; Exp(value)
  %3484 = fmul fast float %3476, %3483
  %3485 = fadd fast float %3347, 0xBF78938000000000
  %3486 = fadd fast float %3485, %3476
  %3487 = fadd fast float %3486, %3484
  %3488 = frem fast float %3487, %3483
  %3489 = fcmp fast ole float %3488, 1.000000e+00
  %3490 = call float @dx.op.unary.f32(i32 22, float %3488)  ; Frc(value)
  %3491 = select i1 %3489, float %3490, float 0.000000e+00
  %3492 = fadd fast float %3473, -1.000000e+00
  %3493 = fadd fast float %3492, %3491
  %3494 = fsub fast float 1.000000e+00, %3491
  %3495 = call float @dx.op.unary.f32(i32 7, float %3494)  ; Saturate(value)
  %3496 = fmul fast float %3495, %3473
  %3497 = fmul fast float %3493, 8.000000e+00
  %3498 = call float @dx.op.binary.f32(i32 35, float %3497, float 0.000000e+00)  ; FMax(a,b)
  %3499 = call float @dx.op.binary.f32(i32 36, float %3498, float 4.000000e+00)  ; FMin(a,b)
  %3500 = fmul fast float %3499, 0x400921FB60000000
  %3501 = call float @dx.op.unary.f32(i32 13, float %3500)  ; Sin(value)
  %3502 = fadd fast float %3491, -1.000000e+00
  %3503 = fmul fast float %3496, %3502
  %3504 = fmul fast float %3503, %3501
  %3505 = fmul fast float %3504, %3479
  %3506 = fmul fast float %3504, %3480
  %3507 = fadd fast float %3427, %3388
  %3508 = fadd fast float %3428, %3389
  %3509 = fadd fast float %3507, %3466
  %3510 = fadd fast float %3508, %3467
  %3511 = fadd fast float %3509, %3505
  %3512 = fadd fast float %3510, %3506
  %3513 = fmul fast float %3231, 0x4006DB6DA0000000
  %3514 = fadd fast float %3513, 0xBFFDB6DB40000000
  %3515 = call float @dx.op.unary.f32(i32 7, float %3514)  ; Saturate(value)
  %3516 = fmul fast float %3515, %3186
  %3517 = fmul fast float %3516, %3295
  %3518 = fmul fast float %3517, %3511
  %3519 = fmul fast float %3517, %3512
  %3520 = fadd fast float %3518, %3322
  %3521 = fadd fast float %3519, %3323
  br label %3522

; <label>:3522                                    ; preds = %3336, %3167
  %3523 = phi float [ %3322, %3167 ], [ %3520, %3336 ]
  %3524 = phi float [ %3323, %3167 ], [ %3521, %3336 ]
  %3525 = call float @dx.op.dot3.f32(i32 55, float %3523, float %3524, float %3324, float %3523, float %3524, float %3324)  ; Dot3(ax,ay,az,bx,by,bz)
  %3526 = call float @dx.op.unary.f32(i32 25, float %3525)  ; Rsqrt(value)
  %3527 = fmul fast float %3526, %3523
  %3528 = fmul fast float %3526, %3524
  %3529 = fmul fast float %3526, %3324
  br label %3530

; <label>:3530                                    ; preds = %3522, %3154
  %3531 = phi float [ %3222, %3522 ], [ %3155, %3154 ]
  %3532 = phi float [ %3223, %3522 ], [ %3156, %3154 ]
  %3533 = phi float [ %3224, %3522 ], [ %3157, %3154 ]
  %3534 = phi float [ %3313, %3522 ], [ %3158, %3154 ]
  %3535 = phi float [ %3314, %3522 ], [ %3159, %3154 ]
  %3536 = phi float [ %3315, %3522 ], [ %3160, %3154 ]
  %3537 = phi float [ %3527, %3522 ], [ %3161, %3154 ]
  %3538 = phi float [ %3528, %3522 ], [ %3162, %3154 ]
  %3539 = phi float [ %3529, %3522 ], [ %3163, %3154 ]
  %3540 = phi float [ %3329, %3522 ], [ %3164, %3154 ]
  %3541 = phi float [ %3332, %3522 ], [ %3165, %3154 ]
  %3542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3543 = extractvalue %dx.types.CBufRet.f32 %3542, 2
  %3544 = extractvalue %dx.types.CBufRet.f32 %3542, 3
  %3545 = fmul fast float %3543, %51
  %3546 = fmul fast float %3544, %52
  %3547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %3548 = extractvalue %dx.types.CBufRet.f32 %3547, 0
  %3549 = extractvalue %dx.types.CBufRet.f32 %3547, 1
  %3550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %21, float %3545, float %3546, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3551 = extractvalue %dx.types.ResRet.f32 %3550, 0
  %3552 = fmul fast float %3551, %3549
  %3553 = call float @dx.op.unary.f32(i32 7, float %3552)  ; Saturate(value)
  %3554 = fadd fast float %3553, -1.000000e+00
  %3555 = fmul fast float %3554, %3548
  %3556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %3557 = extractvalue %dx.types.CBufRet.f32 %3556, 2
  %3558 = call float @dx.op.binary.f32(i32 35, float %1366, float %1367)  ; FMax(a,b)
  %3559 = call float @dx.op.binary.f32(i32 35, float %1365, float %3558)  ; FMax(a,b)
  %3560 = bitcast float %3559 to i32
  %3561 = sub nsw i32 2129859010, %3560
  %3562 = bitcast i32 %3561 to float
  %3563 = fmul fast float %3562, 0x400C04EAE0000000
  %3564 = fmul fast float %46, 5.000000e-01
  %3565 = fmul fast float %3564, %3543
  %3566 = fmul fast float %3565, %3557
  %3567 = fmul fast float %3566, 0xBFF7154760000000
  %3568 = fmul fast float %3567, %3563
  %3569 = call float @dx.op.unary.f32(i32 21, float %3568)  ; Exp(value)
  %3570 = fmul fast float %3569, 2.500000e-01
  %3571 = fmul fast float %3566, 0xBFDEC709E0000000
  %3572 = fmul fast float %3571, %3563
  %3573 = call float @dx.op.unary.f32(i32 21, float %3572)  ; Exp(value)
  %3574 = fmul fast float %3573, 7.500000e-01
  %3575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 162)  ; CBufferLoadLegacy(handle,regIndex)
  %3576 = extractvalue %dx.types.CBufRet.f32 %3575, 3
  %3577 = fadd fast float %3570, -1.000000e+00
  %3578 = fadd fast float %3577, %3574
  %3579 = fadd fast float %3578, %3576
  %3580 = call float @dx.op.unary.f32(i32 7, float %3579)  ; Saturate(value)
  %3581 = extractvalue %dx.types.CBufRet.f32 %3575, 0
  %3582 = fmul fast float %3581, %3580
  %3583 = fadd fast float %3582, 1.000000e+00
  %3584 = extractvalue %dx.types.CBufRet.f32 %3575, 1
  %3585 = fsub fast float %3583, %3584
  %3586 = call float @dx.op.unary.f32(i32 7, float %3585)  ; Saturate(value)
  %3587 = fmul fast float %3586, %1365
  %3588 = fmul fast float %3586, %1366
  %3589 = fmul fast float %3586, %1367
  %3590 = call float @dx.op.binary.f32(i32 35, float %3588, float %3589)  ; FMax(a,b)
  %3591 = call float @dx.op.binary.f32(i32 35, float %3587, float %3590)  ; FMax(a,b)
  %3592 = fcmp fast ogt float %3591, 0.000000e+00
  %3593 = fmul fast float %3588, 5.000000e-01
  %3594 = fmul fast float %3589, 5.000000e-01
  %3595 = call float @dx.op.binary.f32(i32 35, float %3593, float 0x3F70101020000000)  ; FMax(a,b)
  %3596 = call float @dx.op.binary.f32(i32 35, float %3594, float 0x3F70101020000000)  ; FMax(a,b)
  %3597 = select i1 %3592, float %3595, float 0.000000e+00
  %3598 = select i1 %3592, float %3596, float 0.000000e+00
  %3599 = select i1 %3592, i32 64, i32 0
  %3600 = fptoui float %51 to i32
  %3601 = fptoui float %52 to i32
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %3600, i32 %3601, i32 undef, float %3597, float %3598, float %3597, float %3597, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br i1 %3592, label %3602, label %3608

; <label>:3602                                    ; preds = %3530
  %3603 = fmul fast float %3587, 5.000000e-01
  %3604 = call float @dx.op.binary.f32(i32 35, float %3603, float 0x3F70101020000000)  ; FMax(a,b)
  %3605 = call float @dx.op.unary.f32(i32 24, float %1358)  ; Sqrt(value)
  %3606 = call float @dx.op.unary.f32(i32 24, float %1359)  ; Sqrt(value)
  %3607 = call float @dx.op.unary.f32(i32 24, float %1360)  ; Sqrt(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %3600, i32 %3601, i32 undef, float %3605, float %3606, float %3607, float %3604, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3608

; <label>:3608                                    ; preds = %3602, %3530
  %3609 = call float @dx.op.dot3.f32(i32 55, float %98, float %99, float %100, float %98, float %99, float %100)  ; Dot3(ax,ay,az,bx,by,bz)
  %3610 = call float @dx.op.unary.f32(i32 25, float %3609)  ; Rsqrt(value)
  %3611 = fmul fast float %3610, %98
  %3612 = fmul fast float %3610, %99
  %3613 = fmul fast float %3610, %100
  %3614 = fsub fast float -0.000000e+00, %3611
  %3615 = fsub fast float -0.000000e+00, %3612
  %3616 = fsub fast float -0.000000e+00, %3613
  %3617 = select i1 %141, float 0.000000e+00, float %3536
  %3618 = call float @dx.op.dot3.f32(i32 55, float %3537, float %3538, float %3539, float %3614, float %3615, float %3616)  ; Dot3(ax,ay,az,bx,by,bz)
  %3619 = call float @dx.op.unary.f32(i32 7, float %3618)  ; Saturate(value)
  %3620 = fsub fast float 1.000000e+00, %3541
  %3621 = bitcast float %3620 to i32
  %3622 = sub nsw i32 2129859010, %3621
  %3623 = bitcast i32 %3622 to float
  %3624 = fmul fast float %1296, %1277
  %3625 = fmul fast float %1296, %1278
  %3626 = fmul fast float %1296, %1279
  %3627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3628 = extractvalue %dx.types.CBufRet.f32 %3627, 3
  %3629 = fcmp fast oeq float %3628, 0.000000e+00
  br i1 %3629, label %3874, label %3630

; <label>:3630                                    ; preds = %3608
  %3631 = extractvalue %dx.types.CBufRet.f32 %3627, 0
  %3632 = extractvalue %dx.types.CBufRet.f32 %3627, 1
  %3633 = extractvalue %dx.types.CBufRet.f32 %3627, 2
  %3634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3635 = extractvalue %dx.types.CBufRet.f32 %3634, 0
  %3636 = extractvalue %dx.types.CBufRet.f32 %3634, 1
  %3637 = extractvalue %dx.types.CBufRet.f32 %3634, 2
  %3638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3639 = extractvalue %dx.types.CBufRet.f32 %3638, 0
  %3640 = extractvalue %dx.types.CBufRet.f32 %3638, 1
  %3641 = call float @dx.op.dot3.f32(i32 55, float %3635, float %3636, float %3637, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3642 = select i1 %141, float %3639, float %3635
  %3643 = select i1 %141, float %3641, float %3636
  %3644 = select i1 %141, float %3640, float %3637
  %3645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3646 = extractvalue %dx.types.CBufRet.f32 %3645, 1
  %3647 = fcmp fast une float %3646, 0.000000e+00
  br i1 %3647, label %3648, label %3663

; <label>:3648                                    ; preds = %3630
  %3649 = lshr i32 %3600, 4
  %3650 = lshr i32 %3601, 4
  %3651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3652 = extractvalue %dx.types.CBufRet.f32 %3651, 0
  %3653 = fptoui float %3652 to i32
  %3654 = add i32 %3653, 15
  %3655 = lshr i32 %3654, 4
  %3656 = mul i32 %3655, %3650
  %3657 = add i32 %3656, %3649
  %3658 = shl i32 %3657, 3
  %3659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %3658, i32 undef)  ; BufferLoad(srv,index,wot)
  %3660 = extractvalue %dx.types.ResRet.i32 %3659, 0
  %3661 = and i32 %3660, -268435456
  %3662 = icmp eq i32 %3661, -1342177280
  br i1 %3662, label %3673, label %3663

; <label>:3663                                    ; preds = %3648, %3630
  %3664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3665 = extractvalue %dx.types.CBufRet.f32 %3664, 2
  %3666 = extractvalue %dx.types.CBufRet.f32 %3664, 3
  %3667 = fmul fast float %3665, %51
  %3668 = fmul fast float %3666, %52
  %3669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %22, float %3667, float %3668, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3670 = extractvalue %dx.types.ResRet.f32 %3669, 0
  %3671 = extractvalue %dx.types.ResRet.f32 %3669, 1
  %3672 = extractvalue %dx.types.ResRet.f32 %3669, 2
  br label %3673

; <label>:3673                                    ; preds = %3663, %3648
  %3674 = phi float [ %3670, %3663 ], [ 0.000000e+00, %3648 ]
  %3675 = phi float [ %3671, %3663 ], [ 0.000000e+00, %3648 ]
  %3676 = phi float [ %3672, %3663 ], [ 0.000000e+00, %3648 ]
  %3677 = call float @dx.op.binary.f32(i32 36, float %3675, float %3676)  ; FMin(a,b)
  %3678 = call float @dx.op.binary.f32(i32 36, float %3674, float %3677)  ; FMin(a,b)
  %3679 = fcmp fast ogt float %3678, 0.000000e+00
  br i1 %3679, label %3680, label %3874, !dx.controlflow.hints !71

; <label>:3680                                    ; preds = %3673
  %3681 = fmul fast float %3674, %3642
  %3682 = fmul fast float %3675, %3643
  %3683 = fmul fast float %3676, %3644
  %3684 = fsub fast float %3631, %3611
  %3685 = fsub fast float %3632, %3612
  %3686 = fsub fast float %3633, %3613
  %3687 = call float @dx.op.dot3.f32(i32 55, float %3684, float %3685, float %3686, float %3684, float %3685, float %3686)  ; Dot3(ax,ay,az,bx,by,bz)
  %3688 = call float @dx.op.unary.f32(i32 25, float %3687)  ; Rsqrt(value)
  %3689 = fmul fast float %3688, %3684
  %3690 = fmul fast float %3688, %3685
  %3691 = fmul fast float %3688, %3686
  %3692 = call float @dx.op.dot3.f32(i32 55, float %3631, float %3632, float %3633, float %3537, float %3538, float %3539)  ; Dot3(ax,ay,az,bx,by,bz)
  %3693 = call float @dx.op.dot3.f32(i32 55, float %3614, float %3615, float %3616, float %3689, float %3690, float %3691)  ; Dot3(ax,ay,az,bx,by,bz)
  %3694 = call float @dx.op.unary.f32(i32 7, float %3692)  ; Saturate(value)
  %3695 = fmul fast float %3694, %3694
  %3696 = fmul fast float %3695, %3623
  %3697 = call float @dx.op.unary.f32(i32 7, float %3696)  ; Saturate(value)
  %3698 = fmul fast float %3697, %3694
  %3699 = call float @dx.op.dot3.f32(i32 55, float %3537, float %3538, float %3539, float %3689, float %3690, float %3691)  ; Dot3(ax,ay,az,bx,by,bz)
  %3700 = fmul fast float %3699, %3699
  %3701 = call float @dx.op.unary.f32(i32 6, float %3692)  ; FAbs(value)
  %3702 = fsub fast float 1.000000e+00, %3540
  %3703 = call float @dx.op.binary.f32(i32 35, float %3702, float 0x3F847AE140000000)  ; FMax(a,b)
  %3704 = fmul fast float %3703, %3703
  %3705 = fmul fast float %3704, %3704
  %3706 = fsub fast float 1.000000e+00, %3705
  %3707 = fmul fast float %3619, %3619
  %3708 = fmul fast float %3707, %3706
  %3709 = fadd fast float %3708, %3705
  %3710 = bitcast float %3709 to i32
  %3711 = ashr i32 %3710, 1
  %3712 = add nsw i32 %3711, 532487669
  %3713 = bitcast i32 %3712 to float
  %3714 = fadd fast float %3713, %3619
  %3715 = fmul fast float %3705, %3700
  %3716 = fsub fast float 1.000000e+00, %3700
  %3717 = fadd fast float %3716, %3715
  %3718 = fmul fast float %3701, %3701
  %3719 = fmul fast float %3718, %3706
  %3720 = fadd fast float %3719, %3705
  %3721 = bitcast float %3720 to i32
  %3722 = ashr i32 %3721, 1
  %3723 = add nsw i32 %3722, 532487669
  %3724 = bitcast i32 %3723 to float
  %3725 = fadd fast float %3724, %3701
  %3726 = fmul fast float %3717, %3717
  %3727 = fmul fast float %3726, %3714
  %3728 = fmul fast float %3727, %3725
  %3729 = fdiv fast float 0x3FF0A00000000000, %3728
  %3730 = fmul fast float %3729, %3705
  %3731 = call float @dx.op.unary.f32(i32 6, float %3693)  ; FAbs(value)
  %3732 = fsub fast float 1.000000e+00, %3731
  %3733 = bitcast float %3732 to i32
  %3734 = sitofp i32 %3733 to float
  %3735 = fmul fast float %3734, 5.000000e+00
  %3736 = fadd fast float %3735, 0xC1EFBF8940000000
  %3737 = fptosi float %3736 to i32
  %3738 = bitcast i32 %3737 to float
  %3739 = fsub fast float 1.000000e+00, %3534
  %3740 = fsub fast float 1.000000e+00, %3535
  %3741 = fsub fast float 1.000000e+00, %3617
  %3742 = fmul fast float %3738, %3739
  %3743 = fmul fast float %3738, %3740
  %3744 = fmul fast float %3738, %3741
  %3745 = fadd fast float %3742, %3534
  %3746 = fadd fast float %3743, %3535
  %3747 = fadd fast float %3744, %3617
  %3748 = fcmp fast ogt float %1273, 0.000000e+00
  br i1 %3748, label %3749, label %3772

; <label>:3749                                    ; preds = %3680
  %3750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %21, float %1273, float %3731, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3751 = extractvalue %dx.types.ResRet.f32 %3750, 0
  %3752 = extractvalue %dx.types.ResRet.f32 %3750, 1
  %3753 = extractvalue %dx.types.ResRet.f32 %3750, 2
  %3754 = fadd fast float %3751, -5.000000e-01
  %3755 = fadd fast float %3752, -5.000000e-01
  %3756 = fadd fast float %3753, -5.000000e-01
  %3757 = fmul fast float %3534, 4.000000e+00
  %3758 = fmul fast float %3757, %3739
  %3759 = fmul fast float %3758, %3754
  %3760 = fmul fast float %3535, 4.000000e+00
  %3761 = fmul fast float %3760, %3740
  %3762 = fmul fast float %3761, %3755
  %3763 = fmul fast float %3617, 4.000000e+00
  %3764 = fmul fast float %3763, %3741
  %3765 = fmul fast float %3764, %3756
  %3766 = fadd fast float %3759, %3745
  %3767 = fadd fast float %3762, %3746
  %3768 = fadd fast float %3765, %3747
  %3769 = call float @dx.op.unary.f32(i32 7, float %3766)  ; Saturate(value)
  %3770 = call float @dx.op.unary.f32(i32 7, float %3767)  ; Saturate(value)
  %3771 = call float @dx.op.unary.f32(i32 7, float %3768)  ; Saturate(value)
  br label %3772

; <label>:3772                                    ; preds = %3749, %3680
  %3773 = phi float [ %3769, %3749 ], [ %3745, %3680 ]
  %3774 = phi float [ %3770, %3749 ], [ %3746, %3680 ]
  %3775 = phi float [ %3771, %3749 ], [ %3747, %3680 ]
  %3776 = fmul fast float %3692, 9.843750e-01
  %3777 = fmul fast float %3540, 9.843750e-01
  %3778 = fadd fast float %3776, 7.812500e-03
  %3779 = fadd fast float %3777, 7.812500e-03
  %3780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %21, float %3778, float %3779, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3781 = extractvalue %dx.types.ResRet.f32 %3780, 2
  %3782 = extractvalue %dx.types.ResRet.f32 %3780, 3
  %3783 = fmul fast float %3781, %3534
  %3784 = fmul fast float %3781, %3535
  %3785 = fmul fast float %3781, %3617
  %3786 = fadd fast float %3783, %3782
  %3787 = fadd fast float %3784, %3782
  %3788 = fadd fast float %3785, %3782
  br i1 %3748, label %3789, label %3812

; <label>:3789                                    ; preds = %3772
  %3790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %21, float %1273, float %3692, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3791 = extractvalue %dx.types.ResRet.f32 %3790, 0
  %3792 = extractvalue %dx.types.ResRet.f32 %3790, 1
  %3793 = extractvalue %dx.types.ResRet.f32 %3790, 2
  %3794 = fadd fast float %3791, -5.000000e-01
  %3795 = fadd fast float %3792, -5.000000e-01
  %3796 = fadd fast float %3793, -5.000000e-01
  %3797 = fmul fast float %3534, 4.000000e+00
  %3798 = fmul fast float %3797, %3739
  %3799 = fmul fast float %3798, %3794
  %3800 = fmul fast float %3535, 4.000000e+00
  %3801 = fmul fast float %3800, %3740
  %3802 = fmul fast float %3801, %3795
  %3803 = fmul fast float %3617, 4.000000e+00
  %3804 = fmul fast float %3803, %3741
  %3805 = fmul fast float %3804, %3796
  %3806 = fadd fast float %3799, %3786
  %3807 = fadd fast float %3802, %3787
  %3808 = fadd fast float %3805, %3788
  %3809 = call float @dx.op.unary.f32(i32 7, float %3806)  ; Saturate(value)
  %3810 = call float @dx.op.unary.f32(i32 7, float %3807)  ; Saturate(value)
  %3811 = call float @dx.op.unary.f32(i32 7, float %3808)  ; Saturate(value)
  br label %3812

; <label>:3812                                    ; preds = %3789, %3772
  %3813 = phi float [ %3809, %3789 ], [ %3786, %3772 ]
  %3814 = phi float [ %3810, %3789 ], [ %3787, %3772 ]
  %3815 = phi float [ %3811, %3789 ], [ %3788, %3772 ]
  %3816 = call float @dx.op.binary.f32(i32 35, float %3814, float %3815)  ; FMax(a,b)
  %3817 = call float @dx.op.binary.f32(i32 35, float %3813, float %3816)  ; FMax(a,b)
  %3818 = fsub fast float 1.000000e+00, %3817
  %3819 = fmul fast float %3773, %3730
  %3820 = fmul fast float %3774, %3730
  %3821 = fmul fast float %3775, %3730
  %3822 = call float @dx.op.dot3.f32(i32 55, float %3531, float %3532, float %3533, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3823 = fcmp fast ogt float %3822, 0x3E7FF19E20000000
  %3824 = fdiv fast float 1.000000e+00, %3822
  %3825 = select i1 %3823, float %3824, float 0.000000e+00
  %3826 = fmul fast float %3825, %3531
  %3827 = fmul fast float %3825, %3532
  %3828 = fmul fast float %3825, %3533
  %3829 = fadd fast float %3826, -1.000000e+00
  %3830 = fadd fast float %3827, -1.000000e+00
  %3831 = fadd fast float %3828, -1.000000e+00
  %3832 = fmul fast float %3829, 5.000000e-01
  %3833 = fmul fast float %3830, 5.000000e-01
  %3834 = fmul fast float %3831, 5.000000e-01
  %3835 = fadd fast float %3832, 1.000000e+00
  %3836 = fadd fast float %3833, 1.000000e+00
  %3837 = fadd fast float %3834, 1.000000e+00
  %3838 = fsub fast float 1.000000e+00, %3693
  %3839 = bitcast float %3838 to i32
  %3840 = sitofp i32 %3839 to float
  %3841 = fmul fast float %3840, 5.000000e+00
  %3842 = fadd fast float %3841, 0xC1EFBF8940000000
  %3843 = fptosi float %3842 to i32
  %3844 = bitcast i32 %3843 to float
  %3845 = fmul fast float %3844, %1272
  %3846 = fmul fast float %3818, %3845
  %3847 = fmul fast float %3846, %3835
  %3848 = fmul fast float %3846, %3836
  %3849 = fmul fast float %3846, %3837
  %3850 = fadd fast float %3847, %3819
  %3851 = fadd fast float %3848, %3820
  %3852 = fadd fast float %3849, %3821
  %3853 = fmul fast float %3698, %3681
  %3854 = fmul fast float %3853, %3850
  %3855 = fmul fast float %3698, %3682
  %3856 = fmul fast float %3855, %3851
  %3857 = fmul fast float %3698, %3683
  %3858 = fmul fast float %3857, %3852
  %3859 = fmul fast float %3681, %1296
  %3860 = fmul fast float %3859, %3698
  %3861 = fmul fast float %3860, %3818
  %3862 = fmul fast float %3682, %1296
  %3863 = fmul fast float %3862, %3698
  %3864 = fmul fast float %3863, %3818
  %3865 = fmul fast float %3683, %1296
  %3866 = fmul fast float %3865, %3698
  %3867 = fmul fast float %3866, %3818
  %3868 = fadd fast float %3854, %1277
  %3869 = fmul fast float %3868, %1296
  %3870 = fadd fast float %3856, %1278
  %3871 = fmul fast float %3870, %1296
  %3872 = fadd fast float %3858, %1279
  %3873 = fmul fast float %3872, %1296
  br label %3874

; <label>:3874                                    ; preds = %3812, %3673, %3608
  %3875 = phi float [ %3624, %3608 ], [ %3624, %3673 ], [ %3869, %3812 ]
  %3876 = phi float [ %3625, %3608 ], [ %3625, %3673 ], [ %3871, %3812 ]
  %3877 = phi float [ %3626, %3608 ], [ %3626, %3673 ], [ %3873, %3812 ]
  %3878 = phi float [ 0.000000e+00, %3608 ], [ 0.000000e+00, %3673 ], [ %3861, %3812 ]
  %3879 = phi float [ 0.000000e+00, %3608 ], [ 0.000000e+00, %3673 ], [ %3864, %3812 ]
  %3880 = phi float [ 0.000000e+00, %3608 ], [ 0.000000e+00, %3673 ], [ %3867, %3812 ]
  %3881 = call float @dx.op.unary.f32(i32 24, float %3531)  ; Sqrt(value)
  %3882 = call float @dx.op.unary.f32(i32 24, float %3532)  ; Sqrt(value)
  %3883 = call float @dx.op.unary.f32(i32 24, float %3533)  ; Sqrt(value)
  %3884 = fmul fast float %3881, %3878
  %3885 = fmul fast float %3882, %3879
  %3886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3887 = extractvalue %dx.types.CBufRet.f32 %3886, 0
  br i1 %141, label %3888, label %3921

; <label>:3888                                    ; preds = %3874
  %3889 = fadd fast float %3880, %1270
  %3890 = fmul fast float %3889, %1271
  %3891 = fsub fast float 1.000000e+00, %1271
  %3892 = call float @dx.op.unary.f32(i32 7, float %3891)  ; Saturate(value)
  %3893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3894 = extractvalue %dx.types.CBufRet.f32 %3893, 3
  %3895 = fmul fast float %3894, %3892
  %3896 = fsub fast float 1.000000e+00, %3619
  %3897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3898 = extractvalue %dx.types.CBufRet.f32 %3897, 0
  %3899 = fmul fast float %3898, %3896
  %3900 = extractvalue %dx.types.CBufRet.f32 %3897, 2
  %3901 = fmul fast float %3555, %3900
  %3902 = fadd fast float %3885, %3884
  %3903 = fmul fast float %3887, %3902
  %3904 = extractvalue %dx.types.CBufRet.f32 %3893, 1
  %3905 = fadd fast float %3895, %3890
  %3906 = fsub fast float %3905, %3899
  %3907 = fadd fast float %3906, %3901
  %3908 = fsub fast float %3907, %3904
  %3909 = extractvalue %dx.types.CBufRet.f32 %3893, 2
  %3910 = fmul fast float %3908, %3909
  %3911 = call float @dx.op.unary.f32(i32 7, float %3910)  ; Saturate(value)
  %3912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3913 = extractvalue %dx.types.CBufRet.f32 %3912, 0
  %3914 = fsub fast float %3911, %3913
  %3915 = fmul fast float %3914, 1.000000e+01
  %3916 = call float @dx.op.unary.f32(i32 7, float %3915)  ; Saturate(value)
  %3917 = fadd fast float %1269, -1.000000e+00
  %3918 = fmul fast float %3916, %3917
  %3919 = fadd fast float %3918, 1.000000e+00
  %3920 = fmul fast float %3919, %3911
  br label %3937

; <label>:3921                                    ; preds = %3874
  %3922 = fmul fast float %3883, %3880
  %3923 = fmul fast float %3887, %3884
  %3924 = fmul fast float %3887, %3885
  %3925 = fmul fast float %3922, %3887
  %3926 = add i32 %34, 116
  %3927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3928 = extractvalue %dx.types.ResRet.i32 %3927, 0
  %3929 = and i32 %3928, 32
  %3930 = icmp eq i32 %3929, 0
  br i1 %3930, label %3937, label %3931

; <label>:3931                                    ; preds = %3921
  %3932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3933 = extractvalue %dx.types.CBufRet.f32 %3932, 0
  %3934 = fmul fast float %3933, 0x3FE99999A0000000
  %3935 = fadd fast float %3933, %3923
  %3936 = fadd fast float %3934, %3925
  br label %3937

; <label>:3937                                    ; preds = %3931, %3921, %3888
  %3938 = phi float [ %3903, %3888 ], [ %3935, %3931 ], [ %3923, %3921 ]
  %3939 = phi float [ %3920, %3888 ], [ %3924, %3931 ], [ %3924, %3921 ]
  %3940 = phi float [ %3919, %3888 ], [ %3936, %3931 ], [ %3925, %3921 ]
  %3941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.f32 %3941, 0
  %3943 = fmul fast float %3942, %3876
  %3944 = fmul fast float %3942, %3877
  %3945 = fadd fast float %3876, %3875
  %3946 = select i1 %141, float %3945, float %3875
  %3947 = fmul float %3946, %3942
  %3948 = select i1 %141, float 0.000000e+00, float %3943
  %3949 = select i1 %141, float 0.000000e+00, float %3944
  %3950 = call float @dx.op.binary.f32(i32 36, float %3938, float 3.225500e+04)  ; FMin(a,b)
  %3951 = call float @dx.op.binary.f32(i32 36, float %3939, float 3.225500e+04)  ; FMin(a,b)
  %3952 = call float @dx.op.binary.f32(i32 36, float %3940, float 3.225500e+04)  ; FMin(a,b)
  %3953 = call float @dx.op.binary.f32(i32 36, float %3947, float 3.225500e+04)  ; FMin(a,b)
  %3954 = call float @dx.op.binary.f32(i32 36, float %3948, float 3.225500e+04)  ; FMin(a,b)
  %3955 = call float @dx.op.binary.f32(i32 36, float %3949, float 3.225500e+04)  ; FMin(a,b)
  %3956 = and i32 %117, 64
  %3957 = or i32 %3599, %3956
  %3958 = icmp eq i32 %3957, 0
  br i1 %3958, label %3959, label %3966

; <label>:3959                                    ; preds = %3937
  %3960 = fmul fast float %3950, %3881
  %3961 = fmul fast float %3951, %3882
  %3962 = fmul fast float %3952, %3883
  %3963 = fadd fast float %3953, %3960
  %3964 = fadd fast float %3954, %3961
  %3965 = fadd fast float %3955, %3962
  br label %3966

; <label>:3966                                    ; preds = %3959, %3937
  %3967 = phi float [ %3963, %3959 ], [ %3953, %3937 ]
  %3968 = phi float [ %3964, %3959 ], [ %3954, %3937 ]
  %3969 = phi float [ %3965, %3959 ], [ %3955, %3937 ]
  %3970 = select i1 %141, float %3951, float %3968
  %3971 = select i1 %141, float %3952, float %3969
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3967)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3970)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3971)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %3950)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %3951)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %3952)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!39 = !{[28 x i32] [i32 26, i32 8, i32 119, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0, i32 0, i32 119, i32 119, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0]}
!40 = !{void ()* @ps_main, !"ps_main", !41, !4, !62}
!41 = !{!42, !58, null}
!42 = !{!43, !46, !47, !49, !50, !52, !54, !56, !57}
!43 = !{i32 0, !"SV_Position", i8 9, i8 3, !44, i8 4, i32 1, i8 4, i32 0, i8 0, !45}
!44 = !{i32 0}
!45 = !{i32 3, i32 11}
!46 = !{i32 1, !"COLOR", i8 9, i8 0, !44, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!47 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !44, i8 2, i32 1, i8 2, i32 2, i8 0, !48}
!48 = !{i32 3, i32 3}
!49 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !44, i8 2, i32 1, i8 3, i32 3, i8 0, null}
!50 = !{i32 4, !"NORMAL", i8 9, i8 0, !44, i8 2, i32 1, i8 3, i32 4, i8 0, !51}
!51 = !{i32 3, i32 7}
!52 = !{i32 5, !"TANGENT", i8 9, i8 0, !44, i8 2, i32 1, i8 4, i32 5, i8 0, !53}
!53 = !{i32 3, i32 15}
!54 = !{i32 6, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !44, i8 1, i32 1, i8 1, i32 6, i8 0, !55}
!55 = !{i32 3, i32 1}
!56 = !{i32 7, !"TRANSIENT_INDEX", i8 5, i8 0, !44, i8 1, i32 1, i8 1, i32 6, i8 1, null}
!57 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !44, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!58 = !{!59, !60}
!59 = !{i32 0, !"SV_Target", i8 9, i8 16, !44, i8 0, i32 1, i8 4, i32 0, i8 0, !53}
!60 = !{i32 1, !"SV_Target", i8 9, i8 16, !61, i8 0, i32 1, i8 4, i32 1, i8 0, !53}
!61 = !{i32 1}
!62 = !{i32 0, i64 24}
!63 = !{!64, !64, i64 0}
!64 = !{!"float", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C/C++ TBAA"}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = !{!70, !70, i64 0}
!70 = !{!"int", !65, i64 0}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}

