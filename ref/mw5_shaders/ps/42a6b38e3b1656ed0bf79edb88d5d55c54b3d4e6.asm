;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float    yzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; SH_RED                   0   xyzw        5     NONE   float   xyzw
; SH_GREEN                 0   xyzw        6     NONE   float   xyzw
; SH_BLUE                  0   xyzw        7     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          8     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        9     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x z 
; SV_IsFrontFace           0   x          11    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 8719b6c61b684eb2d7d40175f54f2bf7
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
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
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
;   [208 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S3             s3     1
;                                   sampler      NA          NA      S4             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32     2darray      T1      t0,space6unbounded
;                                   texture     f32          3d      T2      t0,space7unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture     u32     2darray      T5     t11,space2     1
;                                   texture     f32     2darray      T6     t10,space2     1
;                                   texture     f32          2d      T7     t69,space2     1
;                                   texture    byte         r/o      T8     t49,space1     1
;                                   texture    byte         r/o      T9     t50,space1     1
;                                   texture    byte         r/o     T10     t51,space1     1
;                                   texture    byte         r/o     T11     t52,space1     1
;                                   texture     f32          2d     T12     t58,space2     1
;                                   texture     f32          2d     T13     t59,space2     1
;                                   texture     f32          2d     T14     t60,space2     1
;                                   texture    byte         r/o     T15     t45,space1     1
;                                   texture    byte         r/o     T16     t46,space1     1
;                                   texture    byte         r/o     T17     t47,space1     1
;                                   texture    byte         r/o     T18     t48,space1     1
;                                   texture     f32          2d     T19     t57,space2     1
;                                   texture    byte         r/o     T20     t69,space1     1
;                                   texture    byte         r/o     T21     t10,space1     1
;                                   texture    byte         r/o     T22     t68,space1     1
;                                   texture     f32          2d     T23      t0,space2     1
;                                   texture    byte         r/o     T24     t11,space1     1
;                                   texture    byte         r/o     T25     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 45, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2DArray<unsigned int>" = type { i32, %"class.Texture2DArray<unsigned int>::mips_type" }
%"class.Texture2DArray<unsigned int>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = icmp ne i32 %30, 0
  %32 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %68 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = fmul fast float %70, %64
  %72 = fmul fast float %70, %65
  %73 = select i1 %31, float 1.000000e+00, float -1.000000e+00
  %74 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %75 = bitcast float %74 to i32
  %76 = ashr i32 %75, 1
  %77 = sub nsw i32 1597250115, %76
  %78 = bitcast i32 %77 to float
  %79 = fmul fast float %56, %73
  %80 = fmul fast float %79, %78
  %81 = fmul fast float %57, %73
  %82 = fmul fast float %81, %78
  %83 = fmul fast float %58, %73
  %84 = fmul fast float %83, %78
  %85 = fmul fast float %57, %54
  %86 = fmul fast float %58, %53
  %87 = fsub fast float %85, %86
  %88 = fmul fast float %58, %52
  %89 = fmul fast float %56, %54
  %90 = fsub fast float %88, %89
  %91 = fmul fast float %56, %53
  %92 = fmul fast float %57, %52
  %93 = fsub fast float %91, %92
  %94 = fmul fast float %87, %55
  %95 = fmul fast float %90, %55
  %96 = fmul fast float %93, %55
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %99 = extractvalue %dx.types.CBufRet.f32 %97, 3
  %100 = fmul fast float %71, 2.000000e+00
  %101 = fmul fast float %100, %98
  %102 = fmul fast float %72, 2.000000e+00
  %103 = fmul fast float %102, %99
  %104 = fsub fast float 1.000000e+00, %101
  %105 = fsub fast float 1.000000e+00, %103
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = fmul fast float %104, %107
  %111 = fmul fast float %104, %108
  %112 = fmul fast float %104, %109
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %117 = fmul fast float %105, %114
  %118 = fmul fast float %105, %115
  %119 = fmul fast float %105, %116
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = fadd fast float %117, %121
  %125 = fadd fast float %124, %110
  %126 = fadd fast float %118, %122
  %127 = fadd fast float %126, %111
  %128 = fadd fast float %119, %123
  %129 = fadd fast float %128, %112
  %130 = fmul fast float %125, %66
  %131 = fmul fast float %127, %66
  %132 = fmul fast float %129, %66
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 3
  %136 = fmul fast float %134, %71
  %137 = fmul fast float %135, %72
  %138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %139 = extractvalue %dx.types.ResRet.i32 %138, 0
  %140 = and i32 %139, 114688
  %141 = icmp ne i32 %140, 0
  %142 = select i1 %141, float %136, float 0.000000e+00
  %143 = select i1 %141, float %137, float 0.000000e+00
  %144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %27, float %142, float %143, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %145 = extractvalue %dx.types.ResRet.f32 %144, 0
  %146 = fmul fast float %145, 2.550000e+02
  %147 = fptoui float %146 to i32
  %148 = select i1 %141, i32 %147, i32 0
  %149 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.i32 %149, 3
  %151 = and i32 %150, 3
  %152 = icmp ne i32 %151, 0
  %153 = and i32 %150, 4
  %154 = icmp ne i32 %153, 0
  %155 = and i1 %152, %154
  br i1 %155, label %156, label %165

; <label>:156                                     ; preds = %0
  %157 = fmul fast float %99, %72
  %158 = fmul fast float %98, %71
  %159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %158, float %157, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %160 = extractvalue %dx.types.ResRet.f32 %159, 0
  %161 = fsub fast float 1.000000e+00, %160
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = fcmp fast olt float %161, %163
  br label %173

; <label>:165                                     ; preds = %0
  %166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.i32 %166, 3
  %168 = and i32 %167, 3
  %169 = icmp ne i32 %168, 0
  %170 = and i32 %167, 4
  %171 = icmp eq i32 %170, 0
  %172 = and i1 %169, %171
  br label %173

; <label>:173                                     ; preds = %165, %156
  %174 = phi i1 [ %164, %156 ], [ %172, %165 ]
  %175 = add i32 %32, 156
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = shl i32 %177, 4
  %179 = and i32 %178, 32752
  %180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %179)  ; LegacyF16ToF32(value)
  %181 = lshr i32 %177, 7
  %182 = and i32 %181, 32752
  %183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %182)  ; LegacyF16ToF32(value)
  %184 = lshr i32 %177, 22
  %185 = shl nuw nsw i32 %184, 5
  %186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %185)  ; LegacyF16ToF32(value)
  %187 = add i32 %32, 216
  %188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %187, i32 undef)  ; BufferLoad(srv,index,wot)
  %189 = extractvalue %dx.types.ResRet.i32 %188, 0
  %190 = and i32 %189, 255
  %191 = uitofp i32 %190 to float
  %192 = fmul fast float %191, 0x3F70101020000000
  %193 = lshr i32 %189, 8
  %194 = and i32 %193, 255
  %195 = uitofp i32 %194 to float
  %196 = fmul fast float %195, 0x3F70101020000000
  %197 = lshr i32 %189, 16
  %198 = and i32 %197, 255
  %199 = uitofp i32 %198 to float
  %200 = fmul fast float %199, 0x3F70101020000000
  %201 = add i32 %32, 36
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = and i32 %203, 65535
  %205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %204)  ; LegacyF16ToF32(value)
  %206 = lshr i32 %203, 16
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = add i32 %32, 288
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = and i32 %210, 65535
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = lshr i32 %210, 16
  %214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %213)  ; LegacyF16ToF32(value)
  %215 = fmul fast float %212, 0x3F50624DE0000000
  %216 = fmul fast float %214, 0x3F50624DE0000000
  %217 = add i32 %32, 172
  %218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = shl i32 %219, 4
  %221 = and i32 %220, 32752
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = lshr i32 %219, 7
  %224 = and i32 %223, 32752
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = lshr i32 %219, 22
  %227 = shl nuw nsw i32 %226, 5
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227)  ; LegacyF16ToF32(value)
  %229 = add i32 %32, 232
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = and i32 %231, 255
  %233 = uitofp i32 %232 to float
  %234 = fmul fast float %233, 0x3F70101020000000
  %235 = lshr i32 %231, 8
  %236 = and i32 %235, 255
  %237 = uitofp i32 %236 to float
  %238 = fmul fast float %237, 0x3F70101020000000
  %239 = lshr i32 %231, 16
  %240 = and i32 %239, 255
  %241 = uitofp i32 %240 to float
  %242 = fmul fast float %241, 0x3F70101020000000
  %243 = add i32 %32, 52
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = and i32 %245, 65535
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = lshr i32 %245, 16
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = add i32 %32, 304
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = and i32 %252, 65535
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = lshr i32 %252, 16
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = fmul fast float %254, 0x3F50624DE0000000
  %258 = fmul fast float %256, 0x3F50624DE0000000
  %259 = add i32 %32, 188
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = shl i32 %261, 4
  %263 = and i32 %262, 32752
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = lshr i32 %261, 7
  %266 = and i32 %265, 32752
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %261, 22
  %269 = shl nuw nsw i32 %268, 5
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = add i32 %32, 248
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = and i32 %273, 255
  %275 = uitofp i32 %274 to float
  %276 = fmul fast float %275, 0x3F70101020000000
  %277 = lshr i32 %273, 8
  %278 = and i32 %277, 255
  %279 = uitofp i32 %278 to float
  %280 = fmul fast float %279, 0x3F70101020000000
  %281 = lshr i32 %273, 16
  %282 = and i32 %281, 255
  %283 = uitofp i32 %282 to float
  %284 = fmul fast float %283, 0x3F70101020000000
  %285 = add i32 %32, 68
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 65535
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %287, 16
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = add i32 %32, 320
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 65535
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = lshr i32 %294, 16
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = fmul fast float %296, 0x3F50624DE0000000
  %300 = fmul fast float %298, 0x3F50624DE0000000
  %301 = add i32 %32, 204
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = shl i32 %303, 4
  %305 = and i32 %304, 32752
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %303, 7
  %308 = and i32 %307, 32752
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %303, 22
  %311 = shl nuw nsw i32 %310, 5
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = add i32 %32, 264
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 255
  %317 = uitofp i32 %316 to float
  %318 = fmul fast float %317, 0x3F70101020000000
  %319 = lshr i32 %315, 8
  %320 = and i32 %319, 255
  %321 = uitofp i32 %320 to float
  %322 = fmul fast float %321, 0x3F70101020000000
  %323 = lshr i32 %315, 16
  %324 = and i32 %323, 255
  %325 = uitofp i32 %324 to float
  %326 = fmul fast float %325, 0x3F70101020000000
  %327 = add i32 %32, 84
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 65535
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %329, 16
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = add i32 %32, 336
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = and i32 %336, 65535
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = lshr i32 %336, 16
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = fmul fast float %338, 0x3F50624DE0000000
  %342 = fmul fast float %340, 0x3F50624DE0000000
  %343 = add i32 %32, 348
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = and i32 %345, 32
  %347 = icmp eq i32 %346, 0
  %348 = and i32 %345, 64
  %349 = icmp eq i32 %348, 0
  %350 = and i32 %345, 128
  %351 = icmp eq i32 %350, 0
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = and i32 %353, 2
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %369, label %356

; <label>:356                                     ; preds = %173
  %357 = add i32 %32, 488
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = add i32 %359, 0
  %361 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %360, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %362 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %361, %dx.types.Handle %68, float %59, float %60, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %363 = extractvalue %dx.types.ResRet.f32 %362, 0
  %364 = extractvalue %dx.types.ResRet.f32 %362, 1
  %365 = extractvalue %dx.types.ResRet.f32 %362, 2
  %366 = fmul fast float %363, %61
  %367 = fmul fast float %364, %62
  %368 = fmul fast float %365, %63
  br label %369

; <label>:369                                     ; preds = %356, %173
  %370 = phi float [ %63, %173 ], [ %368, %356 ]
  %371 = phi float [ %62, %173 ], [ %367, %356 ]
  %372 = phi float [ %61, %173 ], [ %366, %356 ]
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = and i32 %374, 2
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %396, label %377

; <label>:377                                     ; preds = %369
  %378 = add i32 %32, 44
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = and i32 %380, 1
  %382 = icmp ne i32 %381, 0
  %383 = select i1 %382, float %372, float 1.000000e+00
  %384 = add i32 %32, 60
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = and i32 %386, 1
  %388 = icmp ne i32 %387, 0
  %389 = select i1 %388, float %371, float 1.000000e+00
  %390 = add i32 %32, 76
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = and i32 %392, 1
  %394 = icmp ne i32 %393, 0
  %395 = select i1 %394, float %370, float 1.000000e+00
  br label %396

; <label>:396                                     ; preds = %377, %369
  %397 = phi float [ %370, %369 ], [ %395, %377 ]
  %398 = phi float [ %371, %369 ], [ %389, %377 ]
  %399 = phi float [ %372, %369 ], [ %383, %377 ]
  %400 = lshr i32 %374, 20
  %401 = and i32 %400, 3
  %402 = add nuw nsw i32 %401, 1
  %403 = add i32 %32, 24
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = add i32 %32, 28
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = or i32 %408, %405
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %922, label %411

; <label>:411                                     ; preds = %396
  %412 = and i32 %405, 262144
  %413 = icmp ne i32 %412, 0
  %414 = select i1 %413, float %34, float 1.000000e+00
  %415 = select i1 %413, float %35, float 0.000000e+00
  %416 = select i1 %413, float %36, float 0.000000e+00
  %417 = select i1 %413, float %37, float 1.000000e+00
  %418 = select i1 %413, float %38, float %59
  %419 = select i1 %413, float %39, float %60
  %420 = add i32 %32, 284
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = lshr i32 %422, 16
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = fmul fast float %424, 0x3F50624DE0000000
  %426 = add i32 %32, 88
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = lshr i32 %428, 16
  %430 = and i32 %429, 255
  %431 = lshr i32 %428, 24
  %432 = add i32 %32, 292
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 65535
  %436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %435)  ; LegacyF16ToF32(value)
  %437 = lshr i32 %434, 16
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = add i32 %32, 32
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = lshr i32 %441, 22
  %443 = shl nuw nsw i32 %442, 5
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = shl i32 %441, 4
  %446 = and i32 %445, 32752
  %447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %446)  ; LegacyF16ToF32(value)
  %448 = lshr i32 %441, 7
  %449 = and i32 %448, 32752
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.f32 %451, 3
  %453 = fmul fast float %452, 1.000000e+03
  %454 = fmul fast float %215, %453
  %455 = call float @dx.op.unary.f32(i32 22, float %454)  ; Frc(value)
  %456 = fadd fast float %455, %205
  %457 = fmul fast float %216, %453
  %458 = call float @dx.op.unary.f32(i32 22, float %457)  ; Frc(value)
  %459 = fadd fast float %458, %207
  %460 = fmul fast float %425, %453
  %461 = call float @dx.op.unary.f32(i32 22, float %460)  ; Frc(value)
  %462 = fmul fast float %461, 0x401921FB60000000
  %463 = fadd fast float %462, %444
  %464 = call float @dx.op.unary.f32(i32 13, float %463)  ; Sin(value)
  %465 = call float @dx.op.unary.f32(i32 12, float %463)  ; Cos(value)
  %466 = fsub fast float -0.000000e+00, %464
  %467 = fadd fast float %418, -5.000000e-01
  %468 = fadd fast float %419, -5.000000e-01
  %469 = fmul fast float %436, %467
  %470 = fmul fast float %438, %468
  %471 = fadd fast float %469, 5.000000e-01
  %472 = fadd fast float %470, 5.000000e-01
  %473 = fmul fast float %447, %471
  %474 = fmul fast float %450, %472
  %475 = fmul fast float %465, %473
  %476 = call float @dx.op.tertiary.f32(i32 46, float %466, float %474, float %475)  ; FMad(a,b,c)
  %477 = fmul fast float %464, %473
  %478 = call float @dx.op.tertiary.f32(i32 46, float %465, float %474, float %477)  ; FMad(a,b,c)
  %479 = fadd fast float %456, %476
  %480 = fadd fast float %459, %478
  %481 = icmp ugt i32 %430, 1
  %482 = icmp ugt i32 %428, 33554431
  %483 = or i1 %482, %481
  br i1 %483, label %484, label %509

; <label>:484                                     ; preds = %411
  %485 = add i32 %32, 228
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = lshr i32 %487, 16
  %489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %488)  ; LegacyF16ToF32(value)
  %490 = fmul fast float %452, %489
  %491 = call float @dx.op.unary.f32(i32 22, float %490)  ; Frc(value)
  %492 = mul nuw nsw i32 %430, %431
  %493 = uitofp i32 %492 to float
  %494 = fmul fast float %491, %493
  %495 = call float @dx.op.unary.f32(i32 27, float %494)  ; Round_ni(value)
  %496 = fptoui float %495 to i32
  %497 = urem i32 %496, %430
  %498 = udiv i32 %496, %431
  %499 = call float @dx.op.unary.f32(i32 22, float %479)  ; Frc(value)
  %500 = call float @dx.op.unary.f32(i32 22, float %480)  ; Frc(value)
  %501 = uitofp i32 %497 to float
  %502 = uitofp i32 %498 to float
  %503 = fadd fast float %499, %501
  %504 = fadd fast float %500, %502
  %505 = uitofp i32 %430 to float
  %506 = uitofp i32 %431 to float
  %507 = fdiv fast float %503, %505
  %508 = fdiv fast float %504, %506
  br label %509

; <label>:509                                     ; preds = %484, %411
  %510 = phi float [ %507, %484 ], [ %479, %411 ]
  %511 = phi float [ %508, %484 ], [ %480, %411 ]
  %512 = and i32 %405, 16
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %710, label %514

; <label>:514                                     ; preds = %509
  %515 = add i32 %32, 376
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = add i32 %517, 0
  %519 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %518, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %520 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %519, %dx.types.Handle %67, float %510, float %511, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %521 = extractvalue %dx.types.ResRet.f32 %520, 0
  %522 = extractvalue %dx.types.ResRet.f32 %520, 1
  %523 = extractvalue %dx.types.ResRet.f32 %520, 2
  %524 = extractvalue %dx.types.ResRet.f32 %520, 3
  %525 = and i32 %428, 255
  %526 = uitofp i32 %525 to float
  %527 = lshr i32 %428, 8
  %528 = and i32 %527, 255
  %529 = uitofp i32 %528 to float
  %530 = fmul fast float %524, %526
  %531 = fadd fast float %530, %529
  %532 = fmul fast float %531, 0x3F70101000000000
  %533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.i32 %533, 0
  %535 = and i32 %534, 512
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %545, label %537

; <label>:537                                     ; preds = %514
  %538 = add i32 %32, 456
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = add i32 %540, 0
  %542 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %541, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %543 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %542, %dx.types.Handle %68, float %510, float %511, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %544 = extractvalue %dx.types.ResRet.f32 %543, 0
  br label %545

; <label>:545                                     ; preds = %537, %514
  %546 = phi float [ %544, %537 ], [ 1.000000e+00, %514 ]
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = and i32 %548, 33554432
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %657, label %551

; <label>:551                                     ; preds = %545
  %552 = add i32 %32, 224
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = and i32 %554, 65535
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = lshr i32 %554, 16
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = add i32 %32, 228
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = and i32 %561, 65535
  %563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %562)  ; LegacyF16ToF32(value)
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %187, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = lshr i32 %565, 24
  %567 = uitofp i32 %566 to float
  %568 = fmul fast float %567, 0x3F70101020000000
  %569 = and i32 %565, 255
  %570 = uitofp i32 %569 to float
  %571 = fmul fast float %570, 0x3F70101020000000
  %572 = lshr i32 %565, 8
  %573 = and i32 %572, 255
  %574 = uitofp i32 %573 to float
  %575 = fmul fast float %574, 0x3F70101020000000
  %576 = lshr i32 %565, 16
  %577 = and i32 %576, 255
  %578 = uitofp i32 %577 to float
  %579 = fmul fast float %578, 0x3F70101020000000
  %580 = add i32 %32, 220
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = lshr i32 %582, 24
  %584 = uitofp i32 %583 to float
  %585 = fmul fast float %584, 0x3F70101020000000
  %586 = and i32 %582, 255
  %587 = uitofp i32 %586 to float
  %588 = fmul fast float %587, 0x3F70101020000000
  %589 = lshr i32 %582, 8
  %590 = and i32 %589, 255
  %591 = uitofp i32 %590 to float
  %592 = fmul fast float %591, 0x3F70101020000000
  %593 = lshr i32 %582, 16
  %594 = and i32 %593, 255
  %595 = uitofp i32 %594 to float
  %596 = fmul fast float %595, 0x3F70101020000000
  %597 = bitcast float %521 to i32
  %598 = ashr i32 %597, 1
  %599 = sub nsw i32 1597463174, %598
  %600 = bitcast i32 %599 to float
  %601 = fmul fast float %521, 5.000000e-01
  %602 = fmul fast float %600, %600
  %603 = fmul fast float %602, %601
  %604 = fsub fast float 1.500000e+00, %603
  %605 = fmul fast float %600, %521
  %606 = fmul fast float %605, %604
  %607 = bitcast float %522 to i32
  %608 = ashr i32 %607, 1
  %609 = sub nsw i32 1597463174, %608
  %610 = bitcast i32 %609 to float
  %611 = fmul fast float %522, 5.000000e-01
  %612 = fmul fast float %610, %610
  %613 = fmul fast float %612, %611
  %614 = fsub fast float 1.500000e+00, %613
  %615 = fmul fast float %610, %522
  %616 = fmul fast float %615, %614
  %617 = bitcast float %523 to i32
  %618 = ashr i32 %617, 1
  %619 = sub nsw i32 1597463174, %618
  %620 = bitcast i32 %619 to float
  %621 = fmul fast float %523, 5.000000e-01
  %622 = fmul fast float %620, %620
  %623 = fmul fast float %622, %621
  %624 = fsub fast float 1.500000e+00, %623
  %625 = fmul fast float %620, %523
  %626 = fmul fast float %625, %624
  %627 = fsub fast float %606, %588
  %628 = fsub fast float %616, %592
  %629 = fsub fast float %626, %596
  %630 = fmul fast float %627, %556
  %631 = fmul fast float %628, %558
  %632 = fmul fast float %629, %563
  %633 = fadd fast float %630, %571
  %634 = fadd fast float %631, %575
  %635 = fadd fast float %632, %579
  %636 = call float @dx.op.unary.f32(i32 7, float %633)  ; Saturate(value)
  %637 = call float @dx.op.unary.f32(i32 7, float %634)  ; Saturate(value)
  %638 = call float @dx.op.unary.f32(i32 7, float %635)  ; Saturate(value)
  %639 = fmul fast float %636, %636
  %640 = fmul fast float %637, %637
  %641 = fmul fast float %638, %638
  %642 = fsub fast float %639, %521
  %643 = fsub fast float %640, %522
  %644 = fsub fast float %641, %523
  %645 = fmul fast float %642, %546
  %646 = fmul fast float %643, %546
  %647 = fmul fast float %644, %546
  %648 = fadd fast float %645, %521
  %649 = fadd fast float %646, %522
  %650 = fadd fast float %647, %523
  %651 = fadd fast float %568, %532
  %652 = fsub fast float %651, %585
  %653 = call float @dx.op.unary.f32(i32 7, float %652)  ; Saturate(value)
  %654 = fsub fast float %653, %532
  %655 = fmul fast float %654, %546
  %656 = fadd fast float %655, %532
  br label %710

; <label>:657                                     ; preds = %545
  %658 = and i32 %548, 134217728
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %694, label %660

; <label>:660                                     ; preds = %657
  %661 = call float @dx.op.unary.f32(i32 24, float %192)  ; Sqrt(value)
  %662 = call float @dx.op.unary.f32(i32 24, float %196)  ; Sqrt(value)
  %663 = call float @dx.op.unary.f32(i32 24, float %200)  ; Sqrt(value)
  %664 = fadd fast float %661, -5.000000e-01
  %665 = fadd fast float %662, -5.000000e-01
  %666 = fadd fast float %663, -5.000000e-01
  %667 = fmul fast float %664, %546
  %668 = fmul fast float %665, %546
  %669 = fmul fast float %666, %546
  %670 = fadd fast float %667, 5.000000e-01
  %671 = fadd fast float %668, 5.000000e-01
  %672 = fadd fast float %669, 5.000000e-01
  %673 = call float @dx.op.unary.f32(i32 24, float %521)  ; Sqrt(value)
  %674 = call float @dx.op.unary.f32(i32 24, float %522)  ; Sqrt(value)
  %675 = call float @dx.op.unary.f32(i32 24, float %523)  ; Sqrt(value)
  %676 = fmul fast float %670, 2.000000e+00
  %677 = fsub fast float 1.000000e+00, %676
  %678 = fmul fast float %677, %673
  %679 = fadd fast float %678, %676
  %680 = fmul fast float %679, %673
  %681 = fmul fast float %671, 2.000000e+00
  %682 = fsub fast float 1.000000e+00, %681
  %683 = fmul fast float %682, %674
  %684 = fadd fast float %683, %681
  %685 = fmul fast float %684, %674
  %686 = fmul fast float %672, 2.000000e+00
  %687 = fsub fast float 1.000000e+00, %686
  %688 = fmul fast float %687, %675
  %689 = fadd fast float %688, %686
  %690 = fmul fast float %689, %675
  %691 = fmul fast float %680, %680
  %692 = fmul fast float %685, %685
  %693 = fmul fast float %690, %690
  br label %710

; <label>:694                                     ; preds = %657
  %695 = fmul fast float %192, %192
  %696 = fmul fast float %196, %196
  %697 = fmul fast float %200, %200
  %698 = fadd fast float %695, -1.000000e+00
  %699 = fadd fast float %696, -1.000000e+00
  %700 = fadd fast float %697, -1.000000e+00
  %701 = fmul fast float %546, %698
  %702 = fmul fast float %546, %699
  %703 = fmul fast float %546, %700
  %704 = fadd fast float %701, 1.000000e+00
  %705 = fadd fast float %702, 1.000000e+00
  %706 = fadd fast float %703, 1.000000e+00
  %707 = fmul fast float %704, %521
  %708 = fmul fast float %705, %522
  %709 = fmul fast float %706, %523
  br label %710

; <label>:710                                     ; preds = %694, %660, %551, %509
  %711 = phi float [ %656, %551 ], [ %532, %660 ], [ %532, %694 ], [ 0x3FA23C0BE0000000, %509 ]
  %712 = phi float [ %648, %551 ], [ %691, %660 ], [ %707, %694 ], [ 1.000000e+00, %509 ]
  %713 = phi float [ %649, %551 ], [ %692, %660 ], [ %708, %694 ], [ 1.000000e+00, %509 ]
  %714 = phi float [ %650, %551 ], [ %693, %660 ], [ %709, %694 ], [ 1.000000e+00, %509 ]
  %715 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %716 = extractvalue %dx.types.CBufRet.i32 %715, 1
  %717 = and i32 %716, 1
  %718 = icmp ne i32 %717, 0
  %719 = add i32 %32, 356
  %720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %721 = extractvalue %dx.types.ResRet.i32 %720, 0
  %722 = and i32 %721, 32
  %723 = icmp ne i32 %722, 0
  %724 = and i1 %718, %723
  %725 = select i1 %724, float 1.000000e+00, float %712
  %726 = select i1 %724, float 0x3FD3333340000000, float %713
  %727 = select i1 %724, float 0x3FD3333340000000, float %714
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = and i32 %729, 32
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %804, label %732

; <label>:732                                     ; preds = %710
  %733 = add i32 %32, 92
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = add i32 %32, 392
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %736, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = add i32 %738, 0
  %740 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %739, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %741 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %740, %dx.types.Handle %67, float %510, float %511, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %742 = extractvalue %dx.types.ResRet.f32 %741, 0
  %743 = extractvalue %dx.types.ResRet.f32 %741, 1
  %744 = extractvalue %dx.types.ResRet.f32 %741, 2
  %745 = extractvalue %dx.types.ResRet.f32 %741, 3
  %746 = and i32 %735, 255
  %747 = uitofp i32 %746 to float
  %748 = lshr i32 %735, 8
  %749 = and i32 %748, 255
  %750 = uitofp i32 %749 to float
  %751 = lshr i32 %735, 16
  %752 = and i32 %751, 255
  %753 = uitofp i32 %752 to float
  %754 = fmul fast float %753, 0x3F70101000000000
  %755 = fmul fast float %742, %747
  %756 = fadd fast float %755, %750
  %757 = fmul fast float %756, 0x3F70101000000000
  %758 = fadd fast float %743, -5.000000e-01
  %759 = fadd fast float %745, -5.000000e-01
  %760 = fmul fast float %758, %754
  %761 = fmul fast float %759, %754
  %762 = fadd fast float %760, 5.000000e-01
  %763 = fadd fast float %761, 5.000000e-01
  %764 = fmul fast float %762, 2.000000e+00
  %765 = fadd fast float %764, -1.000000e+00
  %766 = fmul fast float %763, 2.000000e+00
  %767 = fadd fast float %766, -1.000000e+00
  %768 = fadd fast float %765, %767
  %769 = fmul fast float %768, 5.000000e-01
  %770 = fsub fast float %765, %767
  %771 = fmul fast float %770, 5.000000e-01
  %772 = call float @dx.op.unary.f32(i32 6, float %769)  ; FAbs(value)
  %773 = fsub fast float 1.000000e+00, %772
  %774 = call float @dx.op.unary.f32(i32 6, float %771)  ; FAbs(value)
  %775 = fsub fast float %773, %774
  %776 = call float @dx.op.dot3.f32(i32 55, float %769, float %771, float %775, float %769, float %771, float %775)  ; Dot3(ax,ay,az,bx,by,bz)
  %777 = call float @dx.op.unary.f32(i32 25, float %776)  ; Rsqrt(value)
  %778 = fmul fast float %769, %777
  %779 = fmul fast float %771, %777
  %780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.i32 %780, 0
  %782 = and i32 %781, 67108864
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %800, label %784

; <label>:784                                     ; preds = %732
  %785 = add i32 %32, 280
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = and i32 %787, 65535
  %789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %788)  ; LegacyF16ToF32(value)
  %790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %791 = extractvalue %dx.types.ResRet.i32 %790, 0
  %792 = and i32 %791, 65535
  %793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %792)  ; LegacyF16ToF32(value)
  %794 = lshr i32 %787, 16
  %795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %794)  ; LegacyF16ToF32(value)
  %796 = fsub fast float %757, %795
  %797 = fmul fast float %796, %789
  %798 = fadd fast float %797, %793
  %799 = call float @dx.op.unary.f32(i32 7, float %798)  ; Saturate(value)
  br label %800

; <label>:800                                     ; preds = %784, %732
  %801 = phi float [ %799, %784 ], [ %757, %732 ]
  %802 = call float @dx.op.dot2.f32(i32 54, float %778, float %779, float %414, float %415)  ; Dot2(ax,ay,bx,by)
  %803 = call float @dx.op.dot2.f32(i32 54, float %778, float %779, float %416, float %417)  ; Dot2(ax,ay,bx,by)
  br label %804

; <label>:804                                     ; preds = %800, %710
  %805 = phi float [ %801, %800 ], [ 0x3FD6666660000000, %710 ]
  %806 = phi float [ %802, %800 ], [ 0.000000e+00, %710 ]
  %807 = phi float [ %803, %800 ], [ 0.000000e+00, %710 ]
  %808 = phi float [ %744, %800 ], [ 1.000000e+00, %710 ]
  %809 = add i32 %32, 160
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = lshr i32 %811, 22
  %813 = shl nuw nsw i32 %812, 5
  %814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %813)  ; LegacyF16ToF32(value)
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = and i32 %816, 64
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %852, label %819

; <label>:819                                     ; preds = %804
  %820 = add i32 %32, 408
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = add i32 %822, 0
  %824 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %823, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = and i32 %826, 131072
  %828 = icmp eq i32 %827, 0
  %829 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %824, %dx.types.Handle %67, float %510, float %511, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 0
  %831 = extractvalue %dx.types.ResRet.f32 %829, 1
  %832 = extractvalue %dx.types.ResRet.f32 %829, 2
  %833 = fmul fast float %830, %180
  %834 = fmul fast float %831, %183
  %835 = fmul fast float %832, %186
  br i1 %828, label %842, label %836

; <label>:836                                     ; preds = %819
  %837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %838 = extractvalue %dx.types.CBufRet.f32 %837, 0
  %839 = fmul fast float %838, %833
  %840 = fmul fast float %838, %834
  %841 = fmul fast float %838, %835
  br label %842

; <label>:842                                     ; preds = %836, %819
  %843 = phi float [ %839, %836 ], [ %833, %819 ]
  %844 = phi float [ %840, %836 ], [ %834, %819 ]
  %845 = phi float [ %841, %836 ], [ %835, %819 ]
  %846 = fmul fast float %843, %814
  %847 = select i1 %174, float %846, float %843
  %848 = call float @dx.op.dot3.f32(i32 55, float %847, float %844, float %845, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %849 = select i1 %174, float 0.000000e+00, float %843
  %850 = select i1 %174, float %848, float %844
  %851 = select i1 %174, float 0.000000e+00, float %845
  br label %852

; <label>:852                                     ; preds = %842, %804
  %853 = phi float [ %849, %842 ], [ 0.000000e+00, %804 ]
  %854 = phi float [ %850, %842 ], [ 0.000000e+00, %804 ]
  %855 = phi float [ %851, %842 ], [ 0.000000e+00, %804 ]
  %856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %857 = extractvalue %dx.types.ResRet.i32 %856, 0
  %858 = and i32 %857, 10240
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %904, label %860

; <label>:860                                     ; preds = %852
  %861 = add i32 %32, 472
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %861, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = add i32 %863, 0
  %865 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %864, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %866 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %865, %dx.types.Handle %68, float %510, float %511, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %867 = extractvalue %dx.types.ResRet.f32 %866, 1
  %868 = extractvalue %dx.types.ResRet.f32 %866, 3
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = and i32 %870, 1048576
  %872 = icmp ne i32 %871, 0
  %873 = and i32 %870, 8192
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %890, label %875

; <label>:875                                     ; preds = %860
  %876 = extractvalue %dx.types.ResRet.f32 %866, 2
  %877 = select i1 %872, float %876, float %867
  %878 = extractvalue %dx.types.ResRet.f32 %866, 0
  %879 = select i1 %872, float %878, float %867
  %880 = add i32 %32, 96
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %880, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = lshr i32 %882, 16
  %884 = and i32 %883, 255
  %885 = uitofp i32 %884 to float
  %886 = fmul fast float %885, 0x3F80101020000000
  %887 = fmul fast float %886, %879
  %888 = fmul fast float %886, %867
  %889 = fmul fast float %886, %877
  br label %890

; <label>:890                                     ; preds = %875, %860
  %891 = phi float [ %887, %875 ], [ 0.000000e+00, %860 ]
  %892 = phi float [ %888, %875 ], [ 0.000000e+00, %860 ]
  %893 = phi float [ %889, %875 ], [ 0.000000e+00, %860 ]
  %894 = and i32 %870, 2048
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %904, label %896

; <label>:896                                     ; preds = %890
  %897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.i32 %897, 0
  %899 = shl i32 %898, 4
  %900 = and i32 %899, 32752
  %901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %900)  ; LegacyF16ToF32(value)
  %902 = fmul fast float %901, %868
  %903 = call float @dx.op.binary.f32(i32 35, float %902, float 0x3F70101020000000)  ; FMax(a,b)
  br label %904

; <label>:904                                     ; preds = %896, %890, %852
  %905 = phi float [ %891, %896 ], [ %891, %890 ], [ 0.000000e+00, %852 ]
  %906 = phi float [ %892, %896 ], [ %892, %890 ], [ 0.000000e+00, %852 ]
  %907 = phi float [ %893, %896 ], [ %893, %890 ], [ 0.000000e+00, %852 ]
  %908 = phi float [ %903, %896 ], [ 0x3F70101020000000, %890 ], [ 0x3F70101020000000, %852 ]
  %909 = add i32 %32, 96
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = and i32 %911, 255
  %913 = uitofp i32 %912 to float
  %914 = lshr i32 %911, 8
  %915 = and i32 %914, 255
  %916 = uitofp i32 %915 to float
  %917 = call float @dx.op.dot3.f32(i32 55, float %725, float %726, float %727, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %918 = fmul fast float %916, %917
  %919 = fadd fast float %918, %913
  %920 = fmul fast float %919, 0x3F70101020000000
  %921 = call float @dx.op.unary.f32(i32 7, float %920)  ; Saturate(value)
  br label %922

; <label>:922                                     ; preds = %904, %396
  %923 = phi float [ 0.000000e+00, %396 ], [ %806, %904 ]
  %924 = phi float [ 0.000000e+00, %396 ], [ %807, %904 ]
  %925 = phi float [ 0.000000e+00, %396 ], [ %725, %904 ]
  %926 = phi float [ 0.000000e+00, %396 ], [ %726, %904 ]
  %927 = phi float [ 0.000000e+00, %396 ], [ %727, %904 ]
  %928 = phi float [ 0.000000e+00, %396 ], [ %853, %904 ]
  %929 = phi float [ 0.000000e+00, %396 ], [ %854, %904 ]
  %930 = phi float [ 0.000000e+00, %396 ], [ %855, %904 ]
  %931 = phi float [ 0.000000e+00, %396 ], [ %905, %904 ]
  %932 = phi float [ 0.000000e+00, %396 ], [ %906, %904 ]
  %933 = phi float [ 0.000000e+00, %396 ], [ %907, %904 ]
  %934 = phi float [ 0.000000e+00, %396 ], [ %711, %904 ]
  %935 = phi float [ 0.000000e+00, %396 ], [ 1.000000e+00, %904 ]
  %936 = phi float [ 0.000000e+00, %396 ], [ %805, %904 ]
  %937 = phi float [ 0.000000e+00, %396 ], [ %808, %904 ]
  %938 = phi float [ 0.000000e+00, %396 ], [ %908, %904 ]
  %939 = phi float [ 0.000000e+00, %396 ], [ %921, %904 ]
  br i1 %347, label %1868, label %940

; <label>:940                                     ; preds = %922
  %941 = icmp ult i32 %402, 2
  %942 = add i32 %32, 40
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = add i32 %32, 44
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = or i32 %947, %944
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %1868, label %950

; <label>:950                                     ; preds = %940
  %951 = and i32 %944, 262144
  %952 = icmp ne i32 %951, 0
  %953 = select i1 %952, float %34, float 1.000000e+00
  %954 = select i1 %952, float %35, float 0.000000e+00
  %955 = select i1 %952, float %36, float 0.000000e+00
  %956 = select i1 %952, float %37, float 1.000000e+00
  %957 = select i1 %952, float %38, float %59
  %958 = select i1 %952, float %39, float %60
  %959 = add i32 %32, 300
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = lshr i32 %961, 16
  %963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %962)  ; LegacyF16ToF32(value)
  %964 = fmul fast float %963, 0x3F50624DE0000000
  %965 = add i32 %32, 104
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = lshr i32 %967, 16
  %969 = and i32 %968, 255
  %970 = lshr i32 %967, 24
  %971 = add i32 %32, 308
  %972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %973 = extractvalue %dx.types.ResRet.i32 %972, 0
  %974 = and i32 %973, 65535
  %975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %974)  ; LegacyF16ToF32(value)
  %976 = lshr i32 %973, 16
  %977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %976)  ; LegacyF16ToF32(value)
  %978 = add i32 %32, 48
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = lshr i32 %980, 22
  %982 = shl nuw nsw i32 %981, 5
  %983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %982)  ; LegacyF16ToF32(value)
  %984 = shl i32 %980, 4
  %985 = and i32 %984, 32752
  %986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %985)  ; LegacyF16ToF32(value)
  %987 = lshr i32 %980, 7
  %988 = and i32 %987, 32752
  %989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %988)  ; LegacyF16ToF32(value)
  %990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %991 = extractvalue %dx.types.CBufRet.f32 %990, 3
  %992 = fmul fast float %991, 1.000000e+03
  %993 = fmul fast float %257, %992
  %994 = call float @dx.op.unary.f32(i32 22, float %993)  ; Frc(value)
  %995 = fadd fast float %994, %247
  %996 = fmul fast float %258, %992
  %997 = call float @dx.op.unary.f32(i32 22, float %996)  ; Frc(value)
  %998 = fadd fast float %997, %249
  %999 = fmul fast float %964, %992
  %1000 = call float @dx.op.unary.f32(i32 22, float %999)  ; Frc(value)
  %1001 = fmul fast float %1000, 0x401921FB60000000
  %1002 = fadd fast float %1001, %983
  %1003 = call float @dx.op.unary.f32(i32 13, float %1002)  ; Sin(value)
  %1004 = call float @dx.op.unary.f32(i32 12, float %1002)  ; Cos(value)
  %1005 = fsub fast float -0.000000e+00, %1003
  %1006 = fadd fast float %957, -5.000000e-01
  %1007 = fadd fast float %958, -5.000000e-01
  %1008 = fmul fast float %975, %1006
  %1009 = fmul fast float %977, %1007
  %1010 = fadd fast float %1008, 5.000000e-01
  %1011 = fadd fast float %1009, 5.000000e-01
  %1012 = fmul fast float %986, %1010
  %1013 = fmul fast float %989, %1011
  %1014 = fmul fast float %1004, %1012
  %1015 = call float @dx.op.tertiary.f32(i32 46, float %1005, float %1013, float %1014)  ; FMad(a,b,c)
  %1016 = fmul fast float %1003, %1012
  %1017 = call float @dx.op.tertiary.f32(i32 46, float %1004, float %1013, float %1016)  ; FMad(a,b,c)
  %1018 = fadd fast float %995, %1015
  %1019 = fadd fast float %998, %1017
  %1020 = icmp ugt i32 %969, 1
  %1021 = icmp ugt i32 %967, 33554431
  %1022 = or i1 %1021, %1020
  br i1 %1022, label %1023, label %1048

; <label>:1023                                    ; preds = %950
  %1024 = add i32 %32, 244
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = lshr i32 %1026, 16
  %1028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1027)  ; LegacyF16ToF32(value)
  %1029 = fmul fast float %991, %1028
  %1030 = call float @dx.op.unary.f32(i32 22, float %1029)  ; Frc(value)
  %1031 = mul nuw nsw i32 %969, %970
  %1032 = uitofp i32 %1031 to float
  %1033 = fmul fast float %1030, %1032
  %1034 = call float @dx.op.unary.f32(i32 27, float %1033)  ; Round_ni(value)
  %1035 = fptoui float %1034 to i32
  %1036 = urem i32 %1035, %969
  %1037 = udiv i32 %1035, %970
  %1038 = call float @dx.op.unary.f32(i32 22, float %1018)  ; Frc(value)
  %1039 = call float @dx.op.unary.f32(i32 22, float %1019)  ; Frc(value)
  %1040 = uitofp i32 %1036 to float
  %1041 = uitofp i32 %1037 to float
  %1042 = fadd fast float %1038, %1040
  %1043 = fadd fast float %1039, %1041
  %1044 = uitofp i32 %969 to float
  %1045 = uitofp i32 %970 to float
  %1046 = fdiv fast float %1042, %1044
  %1047 = fdiv fast float %1043, %1045
  br label %1048

; <label>:1048                                    ; preds = %1023, %950
  %1049 = phi float [ %1046, %1023 ], [ %1018, %950 ]
  %1050 = phi float [ %1047, %1023 ], [ %1019, %950 ]
  %1051 = and i32 %944, 16777216
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1162, label %1053

; <label>:1053                                    ; preds = %1048
  %1054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.f32 %1054, 0
  %1056 = extractvalue %dx.types.CBufRet.f32 %1054, 1
  %1057 = extractvalue %dx.types.CBufRet.f32 %1054, 2
  %1058 = fadd fast float %1055, %130
  %1059 = fadd fast float %1056, %131
  %1060 = fadd fast float %1057, %132
  %1061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.f32 %1061, 0
  %1063 = call float @dx.op.unary.f32(i32 7, float %1062)  ; Saturate(value)
  %1064 = icmp eq i32 %33, 65535
  br i1 %1064, label %1159, label %1065

; <label>:1065                                    ; preds = %1053
  %1066 = lshr i32 %33, 1
  %1067 = shl i32 %1066, 2
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = and i32 %33, 1
  %1071 = icmp ne i32 %1070, 0
  %1072 = lshr i32 %1069, 16
  %1073 = and i32 %1069, 65535
  %1074 = select i1 %1071, i32 %1072, i32 %1073
  %1075 = icmp eq i32 %1074, 65535
  br i1 %1075, label %1155, label %1076

; <label>:1076                                    ; preds = %1065
  %1077 = mul nuw nsw i32 %1074, 40
  %1078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.f32 %1078, 0
  %1080 = extractvalue %dx.types.ResRet.f32 %1078, 1
  %1081 = extractvalue %dx.types.ResRet.f32 %1078, 2
  %1082 = add nuw nsw i32 %1077, 12
  %1083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.ResRet.f32 %1083, 2
  %1087 = add nuw nsw i32 %1077, 24
  %1088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1090 = extractvalue %dx.types.ResRet.f32 %1088, 1
  %1091 = extractvalue %dx.types.ResRet.f32 %1088, 2
  %1092 = add nuw nsw i32 %1077, 36
  %1093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 0
  %1095 = fsub fast float %1058, %1079
  %1096 = fsub fast float %1059, %1080
  %1097 = fsub fast float %1060, %1081
  %1098 = fmul fast float %1094, %1095
  %1099 = fmul fast float %1094, %1096
  %1100 = fmul fast float %1094, %1097
  %1101 = call float @dx.op.unary.f32(i32 27, float %1098)  ; Round_ni(value)
  %1102 = call float @dx.op.unary.f32(i32 27, float %1099)  ; Round_ni(value)
  %1103 = call float @dx.op.unary.f32(i32 27, float %1100)  ; Round_ni(value)
  %1104 = fadd fast float %1101, 5.000000e-01
  %1105 = fadd fast float %1102, 5.000000e-01
  %1106 = fadd fast float %1103, 5.000000e-01
  %1107 = fmul fast float %1104, %1084
  %1108 = fmul fast float %1105, %1085
  %1109 = fmul fast float %1106, %1086
  %1110 = shl i32 %33, 2
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = add i32 %1112, 0
  %1114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1113, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1115 = call float @dx.op.unary.f32(i32 22, float %1107)  ; Frc(value)
  %1116 = call float @dx.op.unary.f32(i32 22, float %1108)  ; Frc(value)
  %1117 = call float @dx.op.unary.f32(i32 22, float %1109)  ; Frc(value)
  %1118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1114, %dx.types.Handle %27, float %1115, float %1116, float %1117, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1119 = extractvalue %dx.types.ResRet.f32 %1118, 0
  %1120 = extractvalue %dx.types.ResRet.f32 %1118, 1
  %1121 = extractvalue %dx.types.ResRet.f32 %1118, 2
  %1122 = fmul fast float %1119, 1.023000e+03
  %1123 = fmul fast float %1120, 1.023000e+03
  %1124 = fmul fast float %1121, 1.023000e+03
  %1125 = fadd fast float %1122, 5.000000e-01
  %1126 = fadd fast float %1123, 5.000000e-01
  %1127 = fadd fast float %1124, 5.000000e-01
  %1128 = call float @dx.op.unary.f32(i32 27, float %1125)  ; Round_ni(value)
  %1129 = call float @dx.op.unary.f32(i32 27, float %1126)  ; Round_ni(value)
  %1130 = call float @dx.op.unary.f32(i32 27, float %1127)  ; Round_ni(value)
  %1131 = fsub fast float %1098, %1101
  %1132 = fsub fast float %1099, %1102
  %1133 = fsub fast float %1100, %1103
  %1134 = fmul fast float %1131, 7.500000e-01
  %1135 = fmul fast float %1132, 7.500000e-01
  %1136 = fmul fast float %1133, 7.500000e-01
  %1137 = fadd fast float %1101, 1.250000e-01
  %1138 = fadd fast float %1137, %1134
  %1139 = fadd fast float %1138, %1128
  %1140 = fadd fast float %1102, 1.250000e-01
  %1141 = fadd fast float %1140, %1135
  %1142 = fadd fast float %1141, %1129
  %1143 = fadd fast float %1103, 1.250000e-01
  %1144 = fadd fast float %1143, %1136
  %1145 = fadd fast float %1144, %1130
  %1146 = fmul fast float %1139, %1089
  %1147 = fmul fast float %1142, %1090
  %1148 = fmul fast float %1145, %1091
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = add i32 %1150, 0
  %1152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1151, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1152, %dx.types.Handle %25, float %1146, float %1147, float %1148, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1154 = extractvalue %dx.types.ResRet.f32 %1153, 0
  br label %1155

; <label>:1155                                    ; preds = %1076, %1065
  %1156 = phi float [ %1154, %1076 ], [ -1.000000e+00, %1065 ]
  %1157 = fadd fast float %1156, %1063
  %1158 = call float @dx.op.unary.f32(i32 7, float %1157)  ; Saturate(value)
  br label %1159

; <label>:1159                                    ; preds = %1155, %1053
  %1160 = phi float [ %1158, %1155 ], [ %1063, %1053 ]
  %1161 = fmul fast float %1160, %399
  br label %1162

; <label>:1162                                    ; preds = %1159, %1048
  %1163 = phi float [ %1161, %1159 ], [ %399, %1048 ]
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = and i32 %1165, 256
  %1167 = icmp eq i32 %1166, 0
  br i1 %1167, label %1214, label %1168

; <label>:1168                                    ; preds = %1162
  %1169 = add i32 %32, 444
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = add i32 %1171, 0
  %1173 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1172, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1174 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1173, %dx.types.Handle %68, float %1049, float %1050, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1175 = extractvalue %dx.types.ResRet.f32 %1174, 0
  %1176 = add i32 %32, 116
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = shl i32 %1178, 4
  %1180 = and i32 %1179, 32752
  %1181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1180)  ; LegacyF16ToF32(value)
  %1182 = lshr i32 %1178, 7
  %1183 = and i32 %1182, 32752
  %1184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1183)  ; LegacyF16ToF32(value)
  %1185 = fsub fast float 1.000000e+00, %1163
  %1186 = call float @dx.op.binary.f32(i32 35, float %1185, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1187 = bitcast float %1163 to i32
  %1188 = sitofp i32 %1187 to float
  %1189 = fadd fast float %1188, 0xC1CFBF8940000000
  %1190 = fmul fast float %1184, %1189
  %1191 = fadd fast float %1190, 0x41CFBF8940000000
  %1192 = fptosi float %1191 to i32
  %1193 = bitcast i32 %1192 to float
  %1194 = bitcast float %1186 to i32
  %1195 = sitofp i32 %1194 to float
  %1196 = fadd fast float %1195, 0xC1CFBF8940000000
  %1197 = fmul fast float %1196, %1184
  %1198 = fadd fast float %1197, 0x41CFBF8940000000
  %1199 = fptosi float %1198 to i32
  %1200 = bitcast i32 %1199 to float
  %1201 = fmul fast float %1193, %1181
  %1202 = fmul fast float %1200, %1181
  %1203 = fsub fast float %1186, %1201
  %1204 = fadd fast float %1202, %1186
  %1205 = call float @dx.op.unary.f32(i32 7, float %1203)  ; Saturate(value)
  %1206 = call float @dx.op.unary.f32(i32 7, float %1204)  ; Saturate(value)
  %1207 = fsub fast float %1175, %1205
  %1208 = fsub fast float %1206, %1205
  %1209 = bitcast float %1208 to i32
  %1210 = sub nsw i32 2129859010, %1209
  %1211 = bitcast i32 %1210 to float
  %1212 = fmul fast float %1211, %1207
  %1213 = call float @dx.op.unary.f32(i32 7, float %1212)  ; Saturate(value)
  br label %1214

; <label>:1214                                    ; preds = %1168, %1162
  %1215 = phi float [ %1213, %1168 ], [ %1163, %1162 ]
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = and i32 %1217, 128
  %1219 = icmp eq i32 %1218, 0
  br i1 %1219, label %1236, label %1220

; <label>:1220                                    ; preds = %1214
  %1221 = add i32 %32, 428
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = add i32 %1223, 0
  %1225 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1224, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1226 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1225, %dx.types.Handle %68, float %1049, float %1050, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1227 = extractvalue %dx.types.ResRet.f32 %1226, 0
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = and i32 %1229, 524288
  %1231 = icmp ne i32 %1230, 0
  %1232 = fcmp fast ogt float %1227, 0x3FE0101020000000
  %1233 = select i1 %1232, float 1.000000e+00, float 0.000000e+00
  %1234 = select i1 %1231, float %1233, float %1227
  %1235 = fmul fast float %1234, %1215
  br label %1236

; <label>:1236                                    ; preds = %1220, %1214
  %1237 = phi float [ %1235, %1220 ], [ %1215, %1214 ]
  %1238 = fcmp fast ult float %1237, 0x3F70101020000000
  br i1 %1238, label %1868, label %1239

; <label>:1239                                    ; preds = %1236
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = and i32 %1241, 16
  %1243 = icmp eq i32 %1242, 0
  br i1 %1243, label %1442, label %1244

; <label>:1244                                    ; preds = %1239
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = add i32 %32, 380
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = add i32 %1249, 0
  %1251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1250, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1252 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1251, %dx.types.Handle %67, float %1049, float %1050, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1253 = extractvalue %dx.types.ResRet.f32 %1252, 0
  %1254 = extractvalue %dx.types.ResRet.f32 %1252, 1
  %1255 = extractvalue %dx.types.ResRet.f32 %1252, 2
  %1256 = extractvalue %dx.types.ResRet.f32 %1252, 3
  %1257 = and i32 %1246, 255
  %1258 = uitofp i32 %1257 to float
  %1259 = lshr i32 %1246, 8
  %1260 = and i32 %1259, 255
  %1261 = uitofp i32 %1260 to float
  %1262 = fmul fast float %1256, %1258
  %1263 = fadd fast float %1262, %1261
  %1264 = fmul fast float %1263, 0x3F70101000000000
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = and i32 %1266, 512
  %1268 = icmp eq i32 %1267, 0
  br i1 %1268, label %1277, label %1269

; <label>:1269                                    ; preds = %1244
  %1270 = add i32 %32, 460
  %1271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.i32 %1271, 0
  %1273 = add i32 %1272, 0
  %1274 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1273, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1275 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1274, %dx.types.Handle %68, float %1049, float %1050, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1276 = extractvalue %dx.types.ResRet.f32 %1275, 0
  br label %1277

; <label>:1277                                    ; preds = %1269, %1244
  %1278 = phi float [ %1276, %1269 ], [ 1.000000e+00, %1244 ]
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = and i32 %1280, 33554432
  %1282 = icmp eq i32 %1281, 0
  br i1 %1282, label %1389, label %1283

; <label>:1283                                    ; preds = %1277
  %1284 = add i32 %32, 240
  %1285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.i32 %1285, 0
  %1287 = and i32 %1286, 65535
  %1288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1287)  ; LegacyF16ToF32(value)
  %1289 = lshr i32 %1286, 16
  %1290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1289)  ; LegacyF16ToF32(value)
  %1291 = add i32 %32, 244
  %1292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.i32 %1292, 0
  %1294 = and i32 %1293, 65535
  %1295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1294)  ; LegacyF16ToF32(value)
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = lshr i32 %1297, 24
  %1299 = uitofp i32 %1298 to float
  %1300 = fmul fast float %1299, 0x3F70101020000000
  %1301 = and i32 %1297, 255
  %1302 = uitofp i32 %1301 to float
  %1303 = fmul fast float %1302, 0x3F70101020000000
  %1304 = lshr i32 %1297, 8
  %1305 = and i32 %1304, 255
  %1306 = uitofp i32 %1305 to float
  %1307 = fmul fast float %1306, 0x3F70101020000000
  %1308 = lshr i32 %1297, 16
  %1309 = and i32 %1308, 255
  %1310 = uitofp i32 %1309 to float
  %1311 = fmul fast float %1310, 0x3F70101020000000
  %1312 = add i32 %32, 236
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = lshr i32 %1314, 24
  %1316 = uitofp i32 %1315 to float
  %1317 = fmul fast float %1316, 0x3F70101020000000
  %1318 = and i32 %1314, 255
  %1319 = uitofp i32 %1318 to float
  %1320 = fmul fast float %1319, 0x3F70101020000000
  %1321 = lshr i32 %1314, 8
  %1322 = and i32 %1321, 255
  %1323 = uitofp i32 %1322 to float
  %1324 = fmul fast float %1323, 0x3F70101020000000
  %1325 = lshr i32 %1314, 16
  %1326 = and i32 %1325, 255
  %1327 = uitofp i32 %1326 to float
  %1328 = fmul fast float %1327, 0x3F70101020000000
  %1329 = bitcast float %1253 to i32
  %1330 = ashr i32 %1329, 1
  %1331 = sub nsw i32 1597463174, %1330
  %1332 = bitcast i32 %1331 to float
  %1333 = fmul fast float %1253, 5.000000e-01
  %1334 = fmul fast float %1332, %1332
  %1335 = fmul fast float %1334, %1333
  %1336 = fsub fast float 1.500000e+00, %1335
  %1337 = fmul fast float %1332, %1253
  %1338 = fmul fast float %1337, %1336
  %1339 = bitcast float %1254 to i32
  %1340 = ashr i32 %1339, 1
  %1341 = sub nsw i32 1597463174, %1340
  %1342 = bitcast i32 %1341 to float
  %1343 = fmul fast float %1254, 5.000000e-01
  %1344 = fmul fast float %1342, %1342
  %1345 = fmul fast float %1344, %1343
  %1346 = fsub fast float 1.500000e+00, %1345
  %1347 = fmul fast float %1342, %1254
  %1348 = fmul fast float %1347, %1346
  %1349 = bitcast float %1255 to i32
  %1350 = ashr i32 %1349, 1
  %1351 = sub nsw i32 1597463174, %1350
  %1352 = bitcast i32 %1351 to float
  %1353 = fmul fast float %1255, 5.000000e-01
  %1354 = fmul fast float %1352, %1352
  %1355 = fmul fast float %1354, %1353
  %1356 = fsub fast float 1.500000e+00, %1355
  %1357 = fmul fast float %1352, %1255
  %1358 = fmul fast float %1357, %1356
  %1359 = fsub fast float %1338, %1320
  %1360 = fsub fast float %1348, %1324
  %1361 = fsub fast float %1358, %1328
  %1362 = fmul fast float %1359, %1288
  %1363 = fmul fast float %1360, %1290
  %1364 = fmul fast float %1361, %1295
  %1365 = fadd fast float %1362, %1303
  %1366 = fadd fast float %1363, %1307
  %1367 = fadd fast float %1364, %1311
  %1368 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1369 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  %1370 = call float @dx.op.unary.f32(i32 7, float %1367)  ; Saturate(value)
  %1371 = fmul fast float %1368, %1368
  %1372 = fmul fast float %1369, %1369
  %1373 = fmul fast float %1370, %1370
  %1374 = fsub fast float %1371, %1253
  %1375 = fsub fast float %1372, %1254
  %1376 = fsub fast float %1373, %1255
  %1377 = fmul fast float %1374, %1278
  %1378 = fmul fast float %1375, %1278
  %1379 = fmul fast float %1376, %1278
  %1380 = fadd fast float %1377, %1253
  %1381 = fadd fast float %1378, %1254
  %1382 = fadd fast float %1379, %1255
  %1383 = fadd fast float %1300, %1264
  %1384 = fsub fast float %1383, %1317
  %1385 = call float @dx.op.unary.f32(i32 7, float %1384)  ; Saturate(value)
  %1386 = fsub fast float %1385, %1264
  %1387 = fmul fast float %1386, %1278
  %1388 = fadd fast float %1387, %1264
  br label %1442

; <label>:1389                                    ; preds = %1277
  %1390 = and i32 %1280, 134217728
  %1391 = icmp eq i32 %1390, 0
  br i1 %1391, label %1426, label %1392

; <label>:1392                                    ; preds = %1389
  %1393 = call float @dx.op.unary.f32(i32 24, float %234)  ; Sqrt(value)
  %1394 = call float @dx.op.unary.f32(i32 24, float %238)  ; Sqrt(value)
  %1395 = call float @dx.op.unary.f32(i32 24, float %242)  ; Sqrt(value)
  %1396 = fadd fast float %1393, -5.000000e-01
  %1397 = fadd fast float %1394, -5.000000e-01
  %1398 = fadd fast float %1395, -5.000000e-01
  %1399 = fmul fast float %1396, %1278
  %1400 = fmul fast float %1397, %1278
  %1401 = fmul fast float %1398, %1278
  %1402 = fadd fast float %1399, 5.000000e-01
  %1403 = fadd fast float %1400, 5.000000e-01
  %1404 = fadd fast float %1401, 5.000000e-01
  %1405 = call float @dx.op.unary.f32(i32 24, float %1253)  ; Sqrt(value)
  %1406 = call float @dx.op.unary.f32(i32 24, float %1254)  ; Sqrt(value)
  %1407 = call float @dx.op.unary.f32(i32 24, float %1255)  ; Sqrt(value)
  %1408 = fmul fast float %1402, 2.000000e+00
  %1409 = fsub fast float 1.000000e+00, %1408
  %1410 = fmul fast float %1409, %1405
  %1411 = fadd fast float %1410, %1408
  %1412 = fmul fast float %1411, %1405
  %1413 = fmul fast float %1403, 2.000000e+00
  %1414 = fsub fast float 1.000000e+00, %1413
  %1415 = fmul fast float %1414, %1406
  %1416 = fadd fast float %1415, %1413
  %1417 = fmul fast float %1416, %1406
  %1418 = fmul fast float %1404, 2.000000e+00
  %1419 = fsub fast float 1.000000e+00, %1418
  %1420 = fmul fast float %1419, %1407
  %1421 = fadd fast float %1420, %1418
  %1422 = fmul fast float %1421, %1407
  %1423 = fmul fast float %1412, %1412
  %1424 = fmul fast float %1417, %1417
  %1425 = fmul fast float %1422, %1422
  br label %1442

; <label>:1426                                    ; preds = %1389
  %1427 = fmul fast float %234, %234
  %1428 = fmul fast float %238, %238
  %1429 = fmul fast float %242, %242
  %1430 = fadd fast float %1427, -1.000000e+00
  %1431 = fadd fast float %1428, -1.000000e+00
  %1432 = fadd fast float %1429, -1.000000e+00
  %1433 = fmul fast float %1278, %1430
  %1434 = fmul fast float %1278, %1431
  %1435 = fmul fast float %1278, %1432
  %1436 = fadd fast float %1433, 1.000000e+00
  %1437 = fadd fast float %1434, 1.000000e+00
  %1438 = fadd fast float %1435, 1.000000e+00
  %1439 = fmul fast float %1436, %1253
  %1440 = fmul fast float %1437, %1254
  %1441 = fmul fast float %1438, %1255
  br label %1442

; <label>:1442                                    ; preds = %1426, %1392, %1283, %1239
  %1443 = phi float [ %1388, %1283 ], [ %1264, %1392 ], [ %1264, %1426 ], [ 0x3FA23C0BE0000000, %1239 ]
  %1444 = phi float [ %1380, %1283 ], [ %1423, %1392 ], [ %1439, %1426 ], [ 1.000000e+00, %1239 ]
  %1445 = phi float [ %1381, %1283 ], [ %1424, %1392 ], [ %1440, %1426 ], [ 1.000000e+00, %1239 ]
  %1446 = phi float [ %1382, %1283 ], [ %1425, %1392 ], [ %1441, %1426 ], [ 1.000000e+00, %1239 ]
  %1447 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1448 = extractvalue %dx.types.CBufRet.i32 %1447, 1
  %1449 = and i32 %1448, 1
  %1450 = icmp ne i32 %1449, 0
  %1451 = add i32 %32, 356
  %1452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1451, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.i32 %1452, 0
  %1454 = and i32 %1453, 32
  %1455 = icmp ne i32 %1454, 0
  %1456 = and i1 %1450, %1455
  %1457 = select i1 %1456, float 1.000000e+00, float %1444
  %1458 = select i1 %1456, float 0x3FD3333340000000, float %1445
  %1459 = select i1 %1456, float 0x3FD3333340000000, float %1446
  %1460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.i32 %1460, 0
  %1462 = and i32 %1461, 32
  %1463 = icmp eq i32 %1462, 0
  br i1 %1463, label %1536, label %1464

; <label>:1464                                    ; preds = %1442
  %1465 = add i32 %32, 108
  %1466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.i32 %1466, 0
  %1468 = add i32 %32, 396
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = add i32 %1470, 0
  %1472 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1471, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1473 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1472, %dx.types.Handle %67, float %1049, float %1050, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1474 = extractvalue %dx.types.ResRet.f32 %1473, 0
  %1475 = extractvalue %dx.types.ResRet.f32 %1473, 1
  %1476 = extractvalue %dx.types.ResRet.f32 %1473, 2
  %1477 = extractvalue %dx.types.ResRet.f32 %1473, 3
  %1478 = and i32 %1467, 255
  %1479 = uitofp i32 %1478 to float
  %1480 = lshr i32 %1467, 8
  %1481 = and i32 %1480, 255
  %1482 = uitofp i32 %1481 to float
  %1483 = lshr i32 %1467, 16
  %1484 = and i32 %1483, 255
  %1485 = uitofp i32 %1484 to float
  %1486 = fmul fast float %1485, 0x3F70101000000000
  %1487 = fmul fast float %1474, %1479
  %1488 = fadd fast float %1487, %1482
  %1489 = fmul fast float %1488, 0x3F70101000000000
  %1490 = fadd fast float %1475, -5.000000e-01
  %1491 = fadd fast float %1477, -5.000000e-01
  %1492 = fmul fast float %1490, %1486
  %1493 = fmul fast float %1491, %1486
  %1494 = fadd fast float %1492, 5.000000e-01
  %1495 = fadd fast float %1493, 5.000000e-01
  %1496 = fmul fast float %1494, 2.000000e+00
  %1497 = fadd fast float %1496, -1.000000e+00
  %1498 = fmul fast float %1495, 2.000000e+00
  %1499 = fadd fast float %1498, -1.000000e+00
  %1500 = fadd fast float %1497, %1499
  %1501 = fmul fast float %1500, 5.000000e-01
  %1502 = fsub fast float %1497, %1499
  %1503 = fmul fast float %1502, 5.000000e-01
  %1504 = call float @dx.op.unary.f32(i32 6, float %1501)  ; FAbs(value)
  %1505 = fsub fast float 1.000000e+00, %1504
  %1506 = call float @dx.op.unary.f32(i32 6, float %1503)  ; FAbs(value)
  %1507 = fsub fast float %1505, %1506
  %1508 = call float @dx.op.dot3.f32(i32 55, float %1501, float %1503, float %1507, float %1501, float %1503, float %1507)  ; Dot3(ax,ay,az,bx,by,bz)
  %1509 = call float @dx.op.unary.f32(i32 25, float %1508)  ; Rsqrt(value)
  %1510 = fmul fast float %1501, %1509
  %1511 = fmul fast float %1503, %1509
  %1512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1513 = extractvalue %dx.types.ResRet.i32 %1512, 0
  %1514 = and i32 %1513, 67108864
  %1515 = icmp eq i32 %1514, 0
  br i1 %1515, label %1532, label %1516

; <label>:1516                                    ; preds = %1464
  %1517 = add i32 %32, 296
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1517, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = and i32 %1519, 65535
  %1521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1520)  ; LegacyF16ToF32(value)
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = and i32 %1523, 65535
  %1525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1524)  ; LegacyF16ToF32(value)
  %1526 = lshr i32 %1519, 16
  %1527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1526)  ; LegacyF16ToF32(value)
  %1528 = fsub fast float %1489, %1527
  %1529 = fmul fast float %1528, %1521
  %1530 = fadd fast float %1529, %1525
  %1531 = call float @dx.op.unary.f32(i32 7, float %1530)  ; Saturate(value)
  br label %1532

; <label>:1532                                    ; preds = %1516, %1464
  %1533 = phi float [ %1531, %1516 ], [ %1489, %1464 ]
  %1534 = call float @dx.op.dot2.f32(i32 54, float %1510, float %1511, float %953, float %954)  ; Dot2(ax,ay,bx,by)
  %1535 = call float @dx.op.dot2.f32(i32 54, float %1510, float %1511, float %955, float %956)  ; Dot2(ax,ay,bx,by)
  br label %1536

; <label>:1536                                    ; preds = %1532, %1442
  %1537 = phi float [ %1533, %1532 ], [ 0x3FD6666660000000, %1442 ]
  %1538 = phi float [ %1534, %1532 ], [ 0.000000e+00, %1442 ]
  %1539 = phi float [ %1535, %1532 ], [ 0.000000e+00, %1442 ]
  %1540 = phi float [ %1476, %1532 ], [ 1.000000e+00, %1442 ]
  %1541 = add i32 %32, 176
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = lshr i32 %1543, 22
  %1545 = shl nuw nsw i32 %1544, 5
  %1546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1545)  ; LegacyF16ToF32(value)
  %1547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.i32 %1547, 0
  %1549 = and i32 %1548, 64
  %1550 = icmp eq i32 %1549, 0
  br i1 %1550, label %1584, label %1551

; <label>:1551                                    ; preds = %1536
  %1552 = add i32 %32, 412
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = add i32 %1554, 0
  %1556 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1555, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = and i32 %1558, 131072
  %1560 = icmp eq i32 %1559, 0
  %1561 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1556, %dx.types.Handle %67, float %1049, float %1050, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1562 = extractvalue %dx.types.ResRet.f32 %1561, 0
  %1563 = extractvalue %dx.types.ResRet.f32 %1561, 1
  %1564 = extractvalue %dx.types.ResRet.f32 %1561, 2
  %1565 = fmul fast float %1562, %222
  %1566 = fmul fast float %1563, %225
  %1567 = fmul fast float %1564, %228
  br i1 %1560, label %1574, label %1568

; <label>:1568                                    ; preds = %1551
  %1569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1570 = extractvalue %dx.types.CBufRet.f32 %1569, 0
  %1571 = fmul fast float %1570, %1565
  %1572 = fmul fast float %1570, %1566
  %1573 = fmul fast float %1570, %1567
  br label %1574

; <label>:1574                                    ; preds = %1568, %1551
  %1575 = phi float [ %1571, %1568 ], [ %1565, %1551 ]
  %1576 = phi float [ %1572, %1568 ], [ %1566, %1551 ]
  %1577 = phi float [ %1573, %1568 ], [ %1567, %1551 ]
  %1578 = fmul fast float %1575, %1546
  %1579 = select i1 %174, float %1578, float %1575
  %1580 = call float @dx.op.dot3.f32(i32 55, float %1579, float %1576, float %1577, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1581 = select i1 %174, float 0.000000e+00, float %1575
  %1582 = select i1 %174, float %1580, float %1576
  %1583 = select i1 %174, float 0.000000e+00, float %1577
  br label %1584

; <label>:1584                                    ; preds = %1574, %1536
  %1585 = phi float [ %1581, %1574 ], [ 0.000000e+00, %1536 ]
  %1586 = phi float [ %1582, %1574 ], [ 0.000000e+00, %1536 ]
  %1587 = phi float [ %1583, %1574 ], [ 0.000000e+00, %1536 ]
  %1588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.i32 %1588, 0
  %1590 = and i32 %1589, 10240
  %1591 = icmp eq i32 %1590, 0
  br i1 %1591, label %1636, label %1592

; <label>:1592                                    ; preds = %1584
  %1593 = add i32 %32, 476
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1593, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = add i32 %1595, 0
  %1597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1596, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1598 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1597, %dx.types.Handle %68, float %1049, float %1050, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1599 = extractvalue %dx.types.ResRet.f32 %1598, 1
  %1600 = extractvalue %dx.types.ResRet.f32 %1598, 3
  %1601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.i32 %1601, 0
  %1603 = and i32 %1602, 1048576
  %1604 = icmp ne i32 %1603, 0
  %1605 = and i32 %1602, 8192
  %1606 = icmp eq i32 %1605, 0
  br i1 %1606, label %1622, label %1607

; <label>:1607                                    ; preds = %1592
  %1608 = extractvalue %dx.types.ResRet.f32 %1598, 2
  %1609 = select i1 %1604, float %1608, float %1599
  %1610 = extractvalue %dx.types.ResRet.f32 %1598, 0
  %1611 = select i1 %1604, float %1610, float %1599
  %1612 = add i32 %32, 112
  %1613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1612, i32 undef)  ; BufferLoad(srv,index,wot)
  %1614 = extractvalue %dx.types.ResRet.i32 %1613, 0
  %1615 = lshr i32 %1614, 16
  %1616 = and i32 %1615, 255
  %1617 = uitofp i32 %1616 to float
  %1618 = fmul fast float %1617, 0x3F80101020000000
  %1619 = fmul fast float %1618, %1611
  %1620 = fmul fast float %1618, %1599
  %1621 = fmul fast float %1618, %1609
  br label %1622

; <label>:1622                                    ; preds = %1607, %1592
  %1623 = phi float [ %1619, %1607 ], [ 0.000000e+00, %1592 ]
  %1624 = phi float [ %1620, %1607 ], [ 0.000000e+00, %1592 ]
  %1625 = phi float [ %1621, %1607 ], [ 0.000000e+00, %1592 ]
  %1626 = and i32 %1602, 2048
  %1627 = icmp eq i32 %1626, 0
  br i1 %1627, label %1636, label %1628

; <label>:1628                                    ; preds = %1622
  %1629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.i32 %1629, 0
  %1631 = shl i32 %1630, 4
  %1632 = and i32 %1631, 32752
  %1633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1632)  ; LegacyF16ToF32(value)
  %1634 = fmul fast float %1633, %1600
  %1635 = call float @dx.op.binary.f32(i32 35, float %1634, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1636

; <label>:1636                                    ; preds = %1628, %1622, %1584
  %1637 = phi float [ %1623, %1628 ], [ %1623, %1622 ], [ 0.000000e+00, %1584 ]
  %1638 = phi float [ %1624, %1628 ], [ %1624, %1622 ], [ 0.000000e+00, %1584 ]
  %1639 = phi float [ %1625, %1628 ], [ %1625, %1622 ], [ 0.000000e+00, %1584 ]
  %1640 = phi float [ %1635, %1628 ], [ 0x3F70101020000000, %1622 ], [ 0x3F70101020000000, %1584 ]
  %1641 = add i32 %32, 112
  %1642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1641, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.i32 %1642, 0
  %1644 = and i32 %1643, 255
  %1645 = uitofp i32 %1644 to float
  %1646 = lshr i32 %1643, 8
  %1647 = and i32 %1646, 255
  %1648 = uitofp i32 %1647 to float
  %1649 = call float @dx.op.dot3.f32(i32 55, float %1457, float %1458, float %1459, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1650 = fmul fast float %1648, %1649
  %1651 = fadd fast float %1650, %1645
  %1652 = fmul fast float %1651, 0x3F70101020000000
  %1653 = call float @dx.op.unary.f32(i32 7, float %1652)  ; Saturate(value)
  br i1 %941, label %1654, label %1662

; <label>:1654                                    ; preds = %1636
  %1655 = fsub fast float 1.000000e+00, %1237
  %1656 = fmul fast float %1655, %925
  %1657 = fmul fast float %1655, %926
  %1658 = fmul fast float %1655, %927
  %1659 = fmul fast float %1655, %928
  %1660 = fmul fast float %1655, %929
  %1661 = fmul fast float %1655, %930
  br label %1662

; <label>:1662                                    ; preds = %1654, %1636
  %1663 = phi float [ %1656, %1654 ], [ %925, %1636 ]
  %1664 = phi float [ %1657, %1654 ], [ %926, %1636 ]
  %1665 = phi float [ %1658, %1654 ], [ %927, %1636 ]
  %1666 = phi float [ %1659, %1654 ], [ %928, %1636 ]
  %1667 = phi float [ %1660, %1654 ], [ %929, %1636 ]
  %1668 = phi float [ %1661, %1654 ], [ %930, %1636 ]
  %1669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1670 = extractvalue %dx.types.ResRet.i32 %1669, 0
  %1671 = and i32 %1670, 3
  %1672 = icmp eq i32 %1671, 3
  br i1 %1672, label %1751, label %1673

; <label>:1673                                    ; preds = %1662
  %1674 = and i32 %1670, 16
  %1675 = icmp ne i32 %1674, 0
  %1676 = select i1 %1675, float %1237, float 0.000000e+00
  %1677 = icmp eq i32 %1671, 0
  br i1 %1677, label %1678, label %1706

; <label>:1678                                    ; preds = %1673
  %1679 = and i32 %1670, 64
  %1680 = icmp ne i32 %1679, 0
  %1681 = select i1 %1680, float %1237, float 0.000000e+00
  %1682 = fsub fast float %1457, %1663
  %1683 = fsub fast float %1458, %1664
  %1684 = fsub fast float %1459, %1665
  %1685 = fmul fast float %1676, %1682
  %1686 = fmul fast float %1676, %1683
  %1687 = fmul fast float %1676, %1684
  %1688 = fadd fast float %1685, %1663
  %1689 = fadd fast float %1686, %1664
  %1690 = fadd fast float %1687, %1665
  %1691 = fsub fast float %1443, %934
  %1692 = fmul fast float %1676, %1691
  %1693 = fadd fast float %1692, %934
  %1694 = fsub fast float %1585, %1666
  %1695 = fsub fast float %1586, %1667
  %1696 = fsub fast float %1587, %1668
  %1697 = fmul fast float %1681, %1694
  %1698 = fmul fast float %1681, %1695
  %1699 = fmul fast float %1681, %1696
  %1700 = fadd fast float %1697, %1666
  %1701 = fadd fast float %1698, %1667
  %1702 = fadd fast float %1699, %1668
  %1703 = fsub fast float %1653, %939
  %1704 = fmul fast float %1676, %1703
  %1705 = fadd fast float %1704, %939
  br label %1751

; <label>:1706                                    ; preds = %1673
  %1707 = icmp eq i32 %1671, 1
  br i1 %1707, label %1708, label %1721

; <label>:1708                                    ; preds = %1706
  %1709 = fadd fast float %1457, -1.000000e+00
  %1710 = fadd fast float %1458, -1.000000e+00
  %1711 = fadd fast float %1459, -1.000000e+00
  %1712 = fmul fast float %1676, %1709
  %1713 = fmul fast float %1676, %1710
  %1714 = fmul fast float %1676, %1711
  %1715 = fadd fast float %1712, 1.000000e+00
  %1716 = fadd fast float %1713, 1.000000e+00
  %1717 = fadd fast float %1714, 1.000000e+00
  %1718 = fmul fast float %1715, %1663
  %1719 = fmul fast float %1716, %1664
  %1720 = fmul fast float %1717, %1665
  br label %1751

; <label>:1721                                    ; preds = %1706
  %1722 = icmp eq i32 %1671, 2
  br i1 %1722, label %1723, label %1751

; <label>:1723                                    ; preds = %1721
  %1724 = call float @dx.op.unary.f32(i32 24, float %1457)  ; Sqrt(value)
  %1725 = call float @dx.op.unary.f32(i32 24, float %1458)  ; Sqrt(value)
  %1726 = call float @dx.op.unary.f32(i32 24, float %1459)  ; Sqrt(value)
  %1727 = fadd fast float %1724, -5.000000e-01
  %1728 = fadd fast float %1725, -5.000000e-01
  %1729 = fadd fast float %1726, -5.000000e-01
  %1730 = fmul fast float %1727, %1676
  %1731 = fmul fast float %1728, %1676
  %1732 = fmul fast float %1729, %1676
  %1733 = fadd fast float %1730, 5.000000e-01
  %1734 = fadd fast float %1731, 5.000000e-01
  %1735 = fadd fast float %1732, 5.000000e-01
  %1736 = fmul fast float %1733, 2.000000e+00
  %1737 = fsub fast float 1.000000e+00, %1736
  %1738 = fmul fast float %1737, %1663
  %1739 = fadd fast float %1738, %1736
  %1740 = fmul fast float %1739, %1663
  %1741 = fmul fast float %1734, 2.000000e+00
  %1742 = fsub fast float 1.000000e+00, %1741
  %1743 = fmul fast float %1742, %1664
  %1744 = fadd fast float %1743, %1741
  %1745 = fmul fast float %1744, %1664
  %1746 = fmul fast float %1735, 2.000000e+00
  %1747 = fsub fast float 1.000000e+00, %1746
  %1748 = fmul fast float %1747, %1665
  %1749 = fadd fast float %1748, %1746
  %1750 = fmul fast float %1749, %1665
  br label %1751

; <label>:1751                                    ; preds = %1723, %1721, %1708, %1678, %1662
  %1752 = phi float [ %1663, %1662 ], [ %1740, %1723 ], [ %1663, %1721 ], [ %1718, %1708 ], [ %1688, %1678 ]
  %1753 = phi float [ %1664, %1662 ], [ %1745, %1723 ], [ %1664, %1721 ], [ %1719, %1708 ], [ %1689, %1678 ]
  %1754 = phi float [ %1665, %1662 ], [ %1750, %1723 ], [ %1665, %1721 ], [ %1720, %1708 ], [ %1690, %1678 ]
  %1755 = phi float [ %1666, %1662 ], [ %1666, %1723 ], [ %1666, %1721 ], [ %1666, %1708 ], [ %1700, %1678 ]
  %1756 = phi float [ %1667, %1662 ], [ %1667, %1723 ], [ %1667, %1721 ], [ %1667, %1708 ], [ %1701, %1678 ]
  %1757 = phi float [ %1668, %1662 ], [ %1668, %1723 ], [ %1668, %1721 ], [ %1668, %1708 ], [ %1702, %1678 ]
  %1758 = phi float [ %934, %1662 ], [ %934, %1723 ], [ %934, %1721 ], [ %934, %1708 ], [ %1693, %1678 ]
  %1759 = phi float [ %939, %1662 ], [ %939, %1723 ], [ %939, %1721 ], [ %939, %1708 ], [ %1705, %1678 ]
  %1760 = and i32 %1670, 12
  %1761 = icmp eq i32 %1760, 12
  br i1 %1761, label %1868, label %1762

; <label>:1762                                    ; preds = %1751
  %1763 = and i32 %1670, 2097184
  %1764 = icmp eq i32 %1763, 2097184
  %1765 = select i1 %1764, float %1237, float 0.000000e+00
  %1766 = and i32 %1670, 4194336
  %1767 = icmp eq i32 %1766, 4194336
  %1768 = select i1 %1767, float %1237, float 0.000000e+00
  %1769 = and i32 %1670, 8388640
  %1770 = icmp eq i32 %1769, 8388640
  %1771 = select i1 %1770, float %1237, float 0.000000e+00
  %1772 = and i32 %1670, 2048
  %1773 = icmp ne i32 %1772, 0
  %1774 = select i1 %1773, float %1237, float 0.000000e+00
  %1775 = and i32 %1670, 8192
  %1776 = icmp ne i32 %1775, 0
  %1777 = select i1 %1776, float %1237, float 0.000000e+00
  %1778 = icmp eq i32 %1760, 0
  br i1 %1778, label %1779, label %1804

; <label>:1779                                    ; preds = %1762
  %1780 = fsub fast float %1538, %923
  %1781 = fsub fast float %1539, %924
  %1782 = fmul fast float %1765, %1780
  %1783 = fmul fast float %1765, %1781
  %1784 = fadd fast float %1782, %923
  %1785 = fadd fast float %1783, %924
  %1786 = fsub fast float %1540, %937
  %1787 = fmul fast float %1768, %1786
  %1788 = fadd fast float %1787, %937
  %1789 = fsub fast float %1537, %936
  %1790 = fmul fast float %1771, %1789
  %1791 = fadd fast float %1790, %936
  %1792 = fsub fast float %1640, %938
  %1793 = fmul fast float %1774, %1792
  %1794 = fadd fast float %1793, %938
  %1795 = fsub fast float %1637, %931
  %1796 = fsub fast float %1638, %932
  %1797 = fsub fast float %1639, %933
  %1798 = fmul fast float %1777, %1795
  %1799 = fmul fast float %1777, %1796
  %1800 = fmul fast float %1777, %1797
  %1801 = fadd fast float %1798, %931
  %1802 = fadd fast float %1799, %932
  %1803 = fadd fast float %1800, %933
  br label %1868

; <label>:1804                                    ; preds = %1762
  %1805 = icmp eq i32 %1760, 4
  br i1 %1805, label %1806, label %1846

; <label>:1806                                    ; preds = %1804
  %1807 = fmul fast float %1765, %1538
  %1808 = fmul fast float %1765, %1539
  %1809 = fadd fast float %1807, %923
  %1810 = fadd fast float %1808, %924
  %1811 = call float @dx.op.binary.f32(i32 36, float %937, float %1540)  ; FMin(a,b)
  %1812 = fsub fast float %1811, %937
  %1813 = fmul fast float %1812, %1768
  %1814 = fadd fast float %1813, %937
  %1815 = fadd fast float %1537, %936
  %1816 = fmul fast float %1815, 0x3FF337FAE0000000
  %1817 = fmul fast float %936, %936
  %1818 = fmul fast float %1537, %1537
  %1819 = fadd fast float %1818, %1817
  %1820 = fmul fast float %1819, 0x3FE5152B00000000
  %1821 = fmul fast float %936, 0xBFCC1F85E0000000
  %1822 = fmul fast float %1821, %1537
  %1823 = fadd fast float %1822, 0xBFE1363700000000
  %1824 = fadd fast float %1823, %1816
  %1825 = fsub fast float %1824, %1820
  %1826 = fmul fast float %1815, 0x3FBA6F0D00000000
  %1827 = fmul fast float %1819, 0x3FD0432880000000
  %1828 = fmul fast float %936, 0xBFEF110800000000
  %1829 = fmul fast float %1828, %1537
  %1830 = fadd fast float %1829, 1.000000e+00
  %1831 = fsub fast float %1830, %1826
  %1832 = fadd fast float %1831, %1827
  %1833 = fdiv fast float %1825, %1832
  %1834 = call float @dx.op.unary.f32(i32 7, float %1833)  ; Saturate(value)
  %1835 = fsub fast float %1834, %936
  %1836 = fmul fast float %1835, %1771
  %1837 = fadd fast float %1836, %936
  %1838 = fmul fast float %1774, %1640
  %1839 = fadd fast float %1838, %938
  %1840 = fmul fast float %1777, %1637
  %1841 = fmul fast float %1777, %1638
  %1842 = fmul fast float %1777, %1639
  %1843 = fadd fast float %1840, %931
  %1844 = fadd fast float %1841, %932
  %1845 = fadd fast float %1842, %933
  br label %1868

; <label>:1846                                    ; preds = %1804
  %1847 = icmp eq i32 %1760, 8
  br i1 %1847, label %1848, label %1868

; <label>:1848                                    ; preds = %1846
  %1849 = fmul fast float %1765, %1538
  %1850 = fmul fast float %1765, %1539
  %1851 = fadd fast float %1849, %923
  %1852 = fadd fast float %1850, %924
  %1853 = call float @dx.op.binary.f32(i32 36, float %937, float %1540)  ; FMin(a,b)
  %1854 = fsub fast float %1853, %937
  %1855 = fmul fast float %1854, %1768
  %1856 = fadd fast float %1855, %937
  %1857 = fsub fast float %1537, %936
  %1858 = fmul fast float %1771, %1857
  %1859 = fadd fast float %1858, %936
  %1860 = fmul fast float %1774, %1640
  %1861 = fadd fast float %1860, %938
  %1862 = fmul fast float %1777, %1637
  %1863 = fmul fast float %1777, %1638
  %1864 = fmul fast float %1777, %1639
  %1865 = fadd fast float %1862, %931
  %1866 = fadd fast float %1863, %932
  %1867 = fadd fast float %1864, %933
  br label %1868

; <label>:1868                                    ; preds = %1848, %1846, %1806, %1779, %1751, %1236, %940, %922
  %1869 = phi float [ %923, %1751 ], [ %923, %1236 ], [ %923, %922 ], [ %1851, %1848 ], [ %923, %1846 ], [ %1809, %1806 ], [ %1784, %1779 ], [ %923, %940 ]
  %1870 = phi float [ %924, %1751 ], [ %924, %1236 ], [ %924, %922 ], [ %1852, %1848 ], [ %924, %1846 ], [ %1810, %1806 ], [ %1785, %1779 ], [ %924, %940 ]
  %1871 = phi float [ %1752, %1751 ], [ %925, %1236 ], [ %925, %922 ], [ %1752, %1848 ], [ %1752, %1846 ], [ %1752, %1806 ], [ %1752, %1779 ], [ %925, %940 ]
  %1872 = phi float [ %1753, %1751 ], [ %926, %1236 ], [ %926, %922 ], [ %1753, %1848 ], [ %1753, %1846 ], [ %1753, %1806 ], [ %1753, %1779 ], [ %926, %940 ]
  %1873 = phi float [ %1754, %1751 ], [ %927, %1236 ], [ %927, %922 ], [ %1754, %1848 ], [ %1754, %1846 ], [ %1754, %1806 ], [ %1754, %1779 ], [ %927, %940 ]
  %1874 = phi float [ %1755, %1751 ], [ %928, %1236 ], [ %928, %922 ], [ %1755, %1848 ], [ %1755, %1846 ], [ %1755, %1806 ], [ %1755, %1779 ], [ %928, %940 ]
  %1875 = phi float [ %1756, %1751 ], [ %929, %1236 ], [ %929, %922 ], [ %1756, %1848 ], [ %1756, %1846 ], [ %1756, %1806 ], [ %1756, %1779 ], [ %929, %940 ]
  %1876 = phi float [ %1757, %1751 ], [ %930, %1236 ], [ %930, %922 ], [ %1757, %1848 ], [ %1757, %1846 ], [ %1757, %1806 ], [ %1757, %1779 ], [ %930, %940 ]
  %1877 = phi float [ %931, %1751 ], [ %931, %1236 ], [ %931, %922 ], [ %1865, %1848 ], [ %931, %1846 ], [ %1843, %1806 ], [ %1801, %1779 ], [ %931, %940 ]
  %1878 = phi float [ %932, %1751 ], [ %932, %1236 ], [ %932, %922 ], [ %1866, %1848 ], [ %932, %1846 ], [ %1844, %1806 ], [ %1802, %1779 ], [ %932, %940 ]
  %1879 = phi float [ %933, %1751 ], [ %933, %1236 ], [ %933, %922 ], [ %1867, %1848 ], [ %933, %1846 ], [ %1845, %1806 ], [ %1803, %1779 ], [ %933, %940 ]
  %1880 = phi float [ %1758, %1751 ], [ %934, %1236 ], [ %934, %922 ], [ %1758, %1848 ], [ %1758, %1846 ], [ %1758, %1806 ], [ %1758, %1779 ], [ %934, %940 ]
  %1881 = phi float [ %936, %1751 ], [ %936, %1236 ], [ %936, %922 ], [ %1859, %1848 ], [ %936, %1846 ], [ %1837, %1806 ], [ %1791, %1779 ], [ %936, %940 ]
  %1882 = phi float [ %937, %1751 ], [ %937, %1236 ], [ %937, %922 ], [ %1856, %1848 ], [ %937, %1846 ], [ %1814, %1806 ], [ %1788, %1779 ], [ %937, %940 ]
  %1883 = phi float [ %938, %1751 ], [ %938, %1236 ], [ %938, %922 ], [ %1861, %1848 ], [ %938, %1846 ], [ %1839, %1806 ], [ %1794, %1779 ], [ %938, %940 ]
  %1884 = phi float [ %1759, %1751 ], [ %939, %1236 ], [ %939, %922 ], [ %1759, %1848 ], [ %1759, %1846 ], [ %1759, %1806 ], [ %1759, %1779 ], [ %939, %940 ]
  br i1 %349, label %2813, label %1885

; <label>:1885                                    ; preds = %1868
  %1886 = icmp ult i32 %402, 3
  %1887 = add i32 %32, 56
  %1888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.i32 %1888, 0
  %1890 = add i32 %32, 60
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = or i32 %1892, %1889
  %1894 = icmp eq i32 %1893, 0
  br i1 %1894, label %2813, label %1895

; <label>:1895                                    ; preds = %1885
  %1896 = and i32 %1889, 262144
  %1897 = icmp ne i32 %1896, 0
  %1898 = select i1 %1897, float %34, float 1.000000e+00
  %1899 = select i1 %1897, float %35, float 0.000000e+00
  %1900 = select i1 %1897, float %36, float 0.000000e+00
  %1901 = select i1 %1897, float %37, float 1.000000e+00
  %1902 = select i1 %1897, float %38, float %59
  %1903 = select i1 %1897, float %39, float %60
  %1904 = add i32 %32, 316
  %1905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.i32 %1905, 0
  %1907 = lshr i32 %1906, 16
  %1908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1907)  ; LegacyF16ToF32(value)
  %1909 = fmul fast float %1908, 0x3F50624DE0000000
  %1910 = add i32 %32, 120
  %1911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.i32 %1911, 0
  %1913 = lshr i32 %1912, 16
  %1914 = and i32 %1913, 255
  %1915 = lshr i32 %1912, 24
  %1916 = add i32 %32, 324
  %1917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1918 = extractvalue %dx.types.ResRet.i32 %1917, 0
  %1919 = and i32 %1918, 65535
  %1920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1919)  ; LegacyF16ToF32(value)
  %1921 = lshr i32 %1918, 16
  %1922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1921)  ; LegacyF16ToF32(value)
  %1923 = add i32 %32, 64
  %1924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %1925 = extractvalue %dx.types.ResRet.i32 %1924, 0
  %1926 = lshr i32 %1925, 22
  %1927 = shl nuw nsw i32 %1926, 5
  %1928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1927)  ; LegacyF16ToF32(value)
  %1929 = shl i32 %1925, 4
  %1930 = and i32 %1929, 32752
  %1931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1930)  ; LegacyF16ToF32(value)
  %1932 = lshr i32 %1925, 7
  %1933 = and i32 %1932, 32752
  %1934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1933)  ; LegacyF16ToF32(value)
  %1935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1936 = extractvalue %dx.types.CBufRet.f32 %1935, 3
  %1937 = fmul fast float %1936, 1.000000e+03
  %1938 = fmul fast float %299, %1937
  %1939 = call float @dx.op.unary.f32(i32 22, float %1938)  ; Frc(value)
  %1940 = fadd fast float %1939, %289
  %1941 = fmul fast float %300, %1937
  %1942 = call float @dx.op.unary.f32(i32 22, float %1941)  ; Frc(value)
  %1943 = fadd fast float %1942, %291
  %1944 = fmul fast float %1909, %1937
  %1945 = call float @dx.op.unary.f32(i32 22, float %1944)  ; Frc(value)
  %1946 = fmul fast float %1945, 0x401921FB60000000
  %1947 = fadd fast float %1946, %1928
  %1948 = call float @dx.op.unary.f32(i32 13, float %1947)  ; Sin(value)
  %1949 = call float @dx.op.unary.f32(i32 12, float %1947)  ; Cos(value)
  %1950 = fsub fast float -0.000000e+00, %1948
  %1951 = fadd fast float %1902, -5.000000e-01
  %1952 = fadd fast float %1903, -5.000000e-01
  %1953 = fmul fast float %1920, %1951
  %1954 = fmul fast float %1922, %1952
  %1955 = fadd fast float %1953, 5.000000e-01
  %1956 = fadd fast float %1954, 5.000000e-01
  %1957 = fmul fast float %1931, %1955
  %1958 = fmul fast float %1934, %1956
  %1959 = fmul fast float %1949, %1957
  %1960 = call float @dx.op.tertiary.f32(i32 46, float %1950, float %1958, float %1959)  ; FMad(a,b,c)
  %1961 = fmul fast float %1948, %1957
  %1962 = call float @dx.op.tertiary.f32(i32 46, float %1949, float %1958, float %1961)  ; FMad(a,b,c)
  %1963 = fadd fast float %1940, %1960
  %1964 = fadd fast float %1943, %1962
  %1965 = icmp ugt i32 %1914, 1
  %1966 = icmp ugt i32 %1912, 33554431
  %1967 = or i1 %1966, %1965
  br i1 %1967, label %1968, label %1993

; <label>:1968                                    ; preds = %1895
  %1969 = add i32 %32, 260
  %1970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.i32 %1970, 0
  %1972 = lshr i32 %1971, 16
  %1973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1972)  ; LegacyF16ToF32(value)
  %1974 = fmul fast float %1936, %1973
  %1975 = call float @dx.op.unary.f32(i32 22, float %1974)  ; Frc(value)
  %1976 = mul nuw nsw i32 %1914, %1915
  %1977 = uitofp i32 %1976 to float
  %1978 = fmul fast float %1975, %1977
  %1979 = call float @dx.op.unary.f32(i32 27, float %1978)  ; Round_ni(value)
  %1980 = fptoui float %1979 to i32
  %1981 = urem i32 %1980, %1914
  %1982 = udiv i32 %1980, %1915
  %1983 = call float @dx.op.unary.f32(i32 22, float %1963)  ; Frc(value)
  %1984 = call float @dx.op.unary.f32(i32 22, float %1964)  ; Frc(value)
  %1985 = uitofp i32 %1981 to float
  %1986 = uitofp i32 %1982 to float
  %1987 = fadd fast float %1983, %1985
  %1988 = fadd fast float %1984, %1986
  %1989 = uitofp i32 %1914 to float
  %1990 = uitofp i32 %1915 to float
  %1991 = fdiv fast float %1987, %1989
  %1992 = fdiv fast float %1988, %1990
  br label %1993

; <label>:1993                                    ; preds = %1968, %1895
  %1994 = phi float [ %1991, %1968 ], [ %1963, %1895 ]
  %1995 = phi float [ %1992, %1968 ], [ %1964, %1895 ]
  %1996 = and i32 %1889, 16777216
  %1997 = icmp eq i32 %1996, 0
  br i1 %1997, label %2107, label %1998

; <label>:1998                                    ; preds = %1993
  %1999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2000 = extractvalue %dx.types.CBufRet.f32 %1999, 0
  %2001 = extractvalue %dx.types.CBufRet.f32 %1999, 1
  %2002 = extractvalue %dx.types.CBufRet.f32 %1999, 2
  %2003 = fadd fast float %2000, %130
  %2004 = fadd fast float %2001, %131
  %2005 = fadd fast float %2002, %132
  %2006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2007 = extractvalue %dx.types.CBufRet.f32 %2006, 0
  %2008 = call float @dx.op.unary.f32(i32 7, float %2007)  ; Saturate(value)
  %2009 = icmp eq i32 %33, 65535
  br i1 %2009, label %2104, label %2010

; <label>:2010                                    ; preds = %1998
  %2011 = lshr i32 %33, 1
  %2012 = shl i32 %2011, 2
  %2013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2012, i32 undef)  ; BufferLoad(srv,index,wot)
  %2014 = extractvalue %dx.types.ResRet.i32 %2013, 0
  %2015 = and i32 %33, 1
  %2016 = icmp ne i32 %2015, 0
  %2017 = lshr i32 %2014, 16
  %2018 = and i32 %2014, 65535
  %2019 = select i1 %2016, i32 %2017, i32 %2018
  %2020 = icmp eq i32 %2019, 65535
  br i1 %2020, label %2100, label %2021

; <label>:2021                                    ; preds = %2010
  %2022 = mul nuw nsw i32 %2019, 40
  %2023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.f32 %2023, 0
  %2025 = extractvalue %dx.types.ResRet.f32 %2023, 1
  %2026 = extractvalue %dx.types.ResRet.f32 %2023, 2
  %2027 = add nuw nsw i32 %2022, 12
  %2028 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.f32 %2028, 0
  %2030 = extractvalue %dx.types.ResRet.f32 %2028, 1
  %2031 = extractvalue %dx.types.ResRet.f32 %2028, 2
  %2032 = add nuw nsw i32 %2022, 24
  %2033 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.f32 %2033, 0
  %2035 = extractvalue %dx.types.ResRet.f32 %2033, 1
  %2036 = extractvalue %dx.types.ResRet.f32 %2033, 2
  %2037 = add nuw nsw i32 %2022, 36
  %2038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.f32 %2038, 0
  %2040 = fsub fast float %2003, %2024
  %2041 = fsub fast float %2004, %2025
  %2042 = fsub fast float %2005, %2026
  %2043 = fmul fast float %2039, %2040
  %2044 = fmul fast float %2039, %2041
  %2045 = fmul fast float %2039, %2042
  %2046 = call float @dx.op.unary.f32(i32 27, float %2043)  ; Round_ni(value)
  %2047 = call float @dx.op.unary.f32(i32 27, float %2044)  ; Round_ni(value)
  %2048 = call float @dx.op.unary.f32(i32 27, float %2045)  ; Round_ni(value)
  %2049 = fadd fast float %2046, 5.000000e-01
  %2050 = fadd fast float %2047, 5.000000e-01
  %2051 = fadd fast float %2048, 5.000000e-01
  %2052 = fmul fast float %2049, %2029
  %2053 = fmul fast float %2050, %2030
  %2054 = fmul fast float %2051, %2031
  %2055 = shl i32 %33, 2
  %2056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2055, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = add i32 %2057, 0
  %2059 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2058, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2060 = call float @dx.op.unary.f32(i32 22, float %2052)  ; Frc(value)
  %2061 = call float @dx.op.unary.f32(i32 22, float %2053)  ; Frc(value)
  %2062 = call float @dx.op.unary.f32(i32 22, float %2054)  ; Frc(value)
  %2063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2059, %dx.types.Handle %27, float %2060, float %2061, float %2062, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2064 = extractvalue %dx.types.ResRet.f32 %2063, 0
  %2065 = extractvalue %dx.types.ResRet.f32 %2063, 1
  %2066 = extractvalue %dx.types.ResRet.f32 %2063, 2
  %2067 = fmul fast float %2064, 1.023000e+03
  %2068 = fmul fast float %2065, 1.023000e+03
  %2069 = fmul fast float %2066, 1.023000e+03
  %2070 = fadd fast float %2067, 5.000000e-01
  %2071 = fadd fast float %2068, 5.000000e-01
  %2072 = fadd fast float %2069, 5.000000e-01
  %2073 = call float @dx.op.unary.f32(i32 27, float %2070)  ; Round_ni(value)
  %2074 = call float @dx.op.unary.f32(i32 27, float %2071)  ; Round_ni(value)
  %2075 = call float @dx.op.unary.f32(i32 27, float %2072)  ; Round_ni(value)
  %2076 = fsub fast float %2043, %2046
  %2077 = fsub fast float %2044, %2047
  %2078 = fsub fast float %2045, %2048
  %2079 = fmul fast float %2076, 7.500000e-01
  %2080 = fmul fast float %2077, 7.500000e-01
  %2081 = fmul fast float %2078, 7.500000e-01
  %2082 = fadd fast float %2046, 1.250000e-01
  %2083 = fadd fast float %2082, %2079
  %2084 = fadd fast float %2083, %2073
  %2085 = fadd fast float %2047, 1.250000e-01
  %2086 = fadd fast float %2085, %2080
  %2087 = fadd fast float %2086, %2074
  %2088 = fadd fast float %2048, 1.250000e-01
  %2089 = fadd fast float %2088, %2081
  %2090 = fadd fast float %2089, %2075
  %2091 = fmul fast float %2084, %2034
  %2092 = fmul fast float %2087, %2035
  %2093 = fmul fast float %2090, %2036
  %2094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2055, i32 undef)  ; BufferLoad(srv,index,wot)
  %2095 = extractvalue %dx.types.ResRet.i32 %2094, 0
  %2096 = add i32 %2095, 0
  %2097 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2096, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2097, %dx.types.Handle %25, float %2091, float %2092, float %2093, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2099 = extractvalue %dx.types.ResRet.f32 %2098, 0
  br label %2100

; <label>:2100                                    ; preds = %2021, %2010
  %2101 = phi float [ %2099, %2021 ], [ -1.000000e+00, %2010 ]
  %2102 = fadd fast float %2101, %2008
  %2103 = call float @dx.op.unary.f32(i32 7, float %2102)  ; Saturate(value)
  br label %2104

; <label>:2104                                    ; preds = %2100, %1998
  %2105 = phi float [ %2103, %2100 ], [ %2008, %1998 ]
  %2106 = fmul fast float %2105, %398
  br label %2107

; <label>:2107                                    ; preds = %2104, %1993
  %2108 = phi float [ %2106, %2104 ], [ %398, %1993 ]
  %2109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2110 = extractvalue %dx.types.ResRet.i32 %2109, 0
  %2111 = and i32 %2110, 256
  %2112 = icmp eq i32 %2111, 0
  br i1 %2112, label %2159, label %2113

; <label>:2113                                    ; preds = %2107
  %2114 = add i32 %32, 448
  %2115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2116 = extractvalue %dx.types.ResRet.i32 %2115, 0
  %2117 = add i32 %2116, 0
  %2118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2117, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2119 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2118, %dx.types.Handle %68, float %1994, float %1995, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2120 = extractvalue %dx.types.ResRet.f32 %2119, 0
  %2121 = add i32 %32, 132
  %2122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2121, i32 undef)  ; BufferLoad(srv,index,wot)
  %2123 = extractvalue %dx.types.ResRet.i32 %2122, 0
  %2124 = shl i32 %2123, 4
  %2125 = and i32 %2124, 32752
  %2126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2125)  ; LegacyF16ToF32(value)
  %2127 = lshr i32 %2123, 7
  %2128 = and i32 %2127, 32752
  %2129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2128)  ; LegacyF16ToF32(value)
  %2130 = fsub fast float 1.000000e+00, %2108
  %2131 = call float @dx.op.binary.f32(i32 35, float %2130, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2132 = bitcast float %2108 to i32
  %2133 = sitofp i32 %2132 to float
  %2134 = fadd fast float %2133, 0xC1CFBF8940000000
  %2135 = fmul fast float %2129, %2134
  %2136 = fadd fast float %2135, 0x41CFBF8940000000
  %2137 = fptosi float %2136 to i32
  %2138 = bitcast i32 %2137 to float
  %2139 = bitcast float %2131 to i32
  %2140 = sitofp i32 %2139 to float
  %2141 = fadd fast float %2140, 0xC1CFBF8940000000
  %2142 = fmul fast float %2141, %2129
  %2143 = fadd fast float %2142, 0x41CFBF8940000000
  %2144 = fptosi float %2143 to i32
  %2145 = bitcast i32 %2144 to float
  %2146 = fmul fast float %2138, %2126
  %2147 = fmul fast float %2145, %2126
  %2148 = fsub fast float %2131, %2146
  %2149 = fadd fast float %2147, %2131
  %2150 = call float @dx.op.unary.f32(i32 7, float %2148)  ; Saturate(value)
  %2151 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  %2152 = fsub fast float %2120, %2150
  %2153 = fsub fast float %2151, %2150
  %2154 = bitcast float %2153 to i32
  %2155 = sub nsw i32 2129859010, %2154
  %2156 = bitcast i32 %2155 to float
  %2157 = fmul fast float %2156, %2152
  %2158 = call float @dx.op.unary.f32(i32 7, float %2157)  ; Saturate(value)
  br label %2159

; <label>:2159                                    ; preds = %2113, %2107
  %2160 = phi float [ %2158, %2113 ], [ %2108, %2107 ]
  %2161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2162 = extractvalue %dx.types.ResRet.i32 %2161, 0
  %2163 = and i32 %2162, 128
  %2164 = icmp eq i32 %2163, 0
  br i1 %2164, label %2181, label %2165

; <label>:2165                                    ; preds = %2159
  %2166 = add i32 %32, 432
  %2167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2166, i32 undef)  ; BufferLoad(srv,index,wot)
  %2168 = extractvalue %dx.types.ResRet.i32 %2167, 0
  %2169 = add i32 %2168, 0
  %2170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2169, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2171 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2170, %dx.types.Handle %68, float %1994, float %1995, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2172 = extractvalue %dx.types.ResRet.f32 %2171, 0
  %2173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2174 = extractvalue %dx.types.ResRet.i32 %2173, 0
  %2175 = and i32 %2174, 524288
  %2176 = icmp ne i32 %2175, 0
  %2177 = fcmp fast ogt float %2172, 0x3FE0101020000000
  %2178 = select i1 %2177, float 1.000000e+00, float 0.000000e+00
  %2179 = select i1 %2176, float %2178, float %2172
  %2180 = fmul fast float %2179, %2160
  br label %2181

; <label>:2181                                    ; preds = %2165, %2159
  %2182 = phi float [ %2180, %2165 ], [ %2160, %2159 ]
  %2183 = fcmp fast ult float %2182, 0x3F70101020000000
  br i1 %2183, label %2813, label %2184

; <label>:2184                                    ; preds = %2181
  %2185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2186 = extractvalue %dx.types.ResRet.i32 %2185, 0
  %2187 = and i32 %2186, 16
  %2188 = icmp eq i32 %2187, 0
  br i1 %2188, label %2387, label %2189

; <label>:2189                                    ; preds = %2184
  %2190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2191 = extractvalue %dx.types.ResRet.i32 %2190, 0
  %2192 = add i32 %32, 384
  %2193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2192, i32 undef)  ; BufferLoad(srv,index,wot)
  %2194 = extractvalue %dx.types.ResRet.i32 %2193, 0
  %2195 = add i32 %2194, 0
  %2196 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2195, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2197 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2196, %dx.types.Handle %67, float %1994, float %1995, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2198 = extractvalue %dx.types.ResRet.f32 %2197, 0
  %2199 = extractvalue %dx.types.ResRet.f32 %2197, 1
  %2200 = extractvalue %dx.types.ResRet.f32 %2197, 2
  %2201 = extractvalue %dx.types.ResRet.f32 %2197, 3
  %2202 = and i32 %2191, 255
  %2203 = uitofp i32 %2202 to float
  %2204 = lshr i32 %2191, 8
  %2205 = and i32 %2204, 255
  %2206 = uitofp i32 %2205 to float
  %2207 = fmul fast float %2201, %2203
  %2208 = fadd fast float %2207, %2206
  %2209 = fmul fast float %2208, 0x3F70101000000000
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = and i32 %2211, 512
  %2213 = icmp eq i32 %2212, 0
  br i1 %2213, label %2222, label %2214

; <label>:2214                                    ; preds = %2189
  %2215 = add i32 %32, 464
  %2216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2215, i32 undef)  ; BufferLoad(srv,index,wot)
  %2217 = extractvalue %dx.types.ResRet.i32 %2216, 0
  %2218 = add i32 %2217, 0
  %2219 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2218, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2220 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2219, %dx.types.Handle %68, float %1994, float %1995, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2221 = extractvalue %dx.types.ResRet.f32 %2220, 0
  br label %2222

; <label>:2222                                    ; preds = %2214, %2189
  %2223 = phi float [ %2221, %2214 ], [ 1.000000e+00, %2189 ]
  %2224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2225 = extractvalue %dx.types.ResRet.i32 %2224, 0
  %2226 = and i32 %2225, 33554432
  %2227 = icmp eq i32 %2226, 0
  br i1 %2227, label %2334, label %2228

; <label>:2228                                    ; preds = %2222
  %2229 = add i32 %32, 256
  %2230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2229, i32 undef)  ; BufferLoad(srv,index,wot)
  %2231 = extractvalue %dx.types.ResRet.i32 %2230, 0
  %2232 = and i32 %2231, 65535
  %2233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2232)  ; LegacyF16ToF32(value)
  %2234 = lshr i32 %2231, 16
  %2235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2234)  ; LegacyF16ToF32(value)
  %2236 = add i32 %32, 260
  %2237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2238 = extractvalue %dx.types.ResRet.i32 %2237, 0
  %2239 = and i32 %2238, 65535
  %2240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2239)  ; LegacyF16ToF32(value)
  %2241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2242 = extractvalue %dx.types.ResRet.i32 %2241, 0
  %2243 = lshr i32 %2242, 24
  %2244 = uitofp i32 %2243 to float
  %2245 = fmul fast float %2244, 0x3F70101020000000
  %2246 = and i32 %2242, 255
  %2247 = uitofp i32 %2246 to float
  %2248 = fmul fast float %2247, 0x3F70101020000000
  %2249 = lshr i32 %2242, 8
  %2250 = and i32 %2249, 255
  %2251 = uitofp i32 %2250 to float
  %2252 = fmul fast float %2251, 0x3F70101020000000
  %2253 = lshr i32 %2242, 16
  %2254 = and i32 %2253, 255
  %2255 = uitofp i32 %2254 to float
  %2256 = fmul fast float %2255, 0x3F70101020000000
  %2257 = add i32 %32, 252
  %2258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2257, i32 undef)  ; BufferLoad(srv,index,wot)
  %2259 = extractvalue %dx.types.ResRet.i32 %2258, 0
  %2260 = lshr i32 %2259, 24
  %2261 = uitofp i32 %2260 to float
  %2262 = fmul fast float %2261, 0x3F70101020000000
  %2263 = and i32 %2259, 255
  %2264 = uitofp i32 %2263 to float
  %2265 = fmul fast float %2264, 0x3F70101020000000
  %2266 = lshr i32 %2259, 8
  %2267 = and i32 %2266, 255
  %2268 = uitofp i32 %2267 to float
  %2269 = fmul fast float %2268, 0x3F70101020000000
  %2270 = lshr i32 %2259, 16
  %2271 = and i32 %2270, 255
  %2272 = uitofp i32 %2271 to float
  %2273 = fmul fast float %2272, 0x3F70101020000000
  %2274 = bitcast float %2198 to i32
  %2275 = ashr i32 %2274, 1
  %2276 = sub nsw i32 1597463174, %2275
  %2277 = bitcast i32 %2276 to float
  %2278 = fmul fast float %2198, 5.000000e-01
  %2279 = fmul fast float %2277, %2277
  %2280 = fmul fast float %2279, %2278
  %2281 = fsub fast float 1.500000e+00, %2280
  %2282 = fmul fast float %2277, %2198
  %2283 = fmul fast float %2282, %2281
  %2284 = bitcast float %2199 to i32
  %2285 = ashr i32 %2284, 1
  %2286 = sub nsw i32 1597463174, %2285
  %2287 = bitcast i32 %2286 to float
  %2288 = fmul fast float %2199, 5.000000e-01
  %2289 = fmul fast float %2287, %2287
  %2290 = fmul fast float %2289, %2288
  %2291 = fsub fast float 1.500000e+00, %2290
  %2292 = fmul fast float %2287, %2199
  %2293 = fmul fast float %2292, %2291
  %2294 = bitcast float %2200 to i32
  %2295 = ashr i32 %2294, 1
  %2296 = sub nsw i32 1597463174, %2295
  %2297 = bitcast i32 %2296 to float
  %2298 = fmul fast float %2200, 5.000000e-01
  %2299 = fmul fast float %2297, %2297
  %2300 = fmul fast float %2299, %2298
  %2301 = fsub fast float 1.500000e+00, %2300
  %2302 = fmul fast float %2297, %2200
  %2303 = fmul fast float %2302, %2301
  %2304 = fsub fast float %2283, %2265
  %2305 = fsub fast float %2293, %2269
  %2306 = fsub fast float %2303, %2273
  %2307 = fmul fast float %2304, %2233
  %2308 = fmul fast float %2305, %2235
  %2309 = fmul fast float %2306, %2240
  %2310 = fadd fast float %2307, %2248
  %2311 = fadd fast float %2308, %2252
  %2312 = fadd fast float %2309, %2256
  %2313 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  %2314 = call float @dx.op.unary.f32(i32 7, float %2311)  ; Saturate(value)
  %2315 = call float @dx.op.unary.f32(i32 7, float %2312)  ; Saturate(value)
  %2316 = fmul fast float %2313, %2313
  %2317 = fmul fast float %2314, %2314
  %2318 = fmul fast float %2315, %2315
  %2319 = fsub fast float %2316, %2198
  %2320 = fsub fast float %2317, %2199
  %2321 = fsub fast float %2318, %2200
  %2322 = fmul fast float %2319, %2223
  %2323 = fmul fast float %2320, %2223
  %2324 = fmul fast float %2321, %2223
  %2325 = fadd fast float %2322, %2198
  %2326 = fadd fast float %2323, %2199
  %2327 = fadd fast float %2324, %2200
  %2328 = fadd fast float %2245, %2209
  %2329 = fsub fast float %2328, %2262
  %2330 = call float @dx.op.unary.f32(i32 7, float %2329)  ; Saturate(value)
  %2331 = fsub fast float %2330, %2209
  %2332 = fmul fast float %2331, %2223
  %2333 = fadd fast float %2332, %2209
  br label %2387

; <label>:2334                                    ; preds = %2222
  %2335 = and i32 %2225, 134217728
  %2336 = icmp eq i32 %2335, 0
  br i1 %2336, label %2371, label %2337

; <label>:2337                                    ; preds = %2334
  %2338 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %2339 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %2340 = call float @dx.op.unary.f32(i32 24, float %284)  ; Sqrt(value)
  %2341 = fadd fast float %2338, -5.000000e-01
  %2342 = fadd fast float %2339, -5.000000e-01
  %2343 = fadd fast float %2340, -5.000000e-01
  %2344 = fmul fast float %2341, %2223
  %2345 = fmul fast float %2342, %2223
  %2346 = fmul fast float %2343, %2223
  %2347 = fadd fast float %2344, 5.000000e-01
  %2348 = fadd fast float %2345, 5.000000e-01
  %2349 = fadd fast float %2346, 5.000000e-01
  %2350 = call float @dx.op.unary.f32(i32 24, float %2198)  ; Sqrt(value)
  %2351 = call float @dx.op.unary.f32(i32 24, float %2199)  ; Sqrt(value)
  %2352 = call float @dx.op.unary.f32(i32 24, float %2200)  ; Sqrt(value)
  %2353 = fmul fast float %2347, 2.000000e+00
  %2354 = fsub fast float 1.000000e+00, %2353
  %2355 = fmul fast float %2354, %2350
  %2356 = fadd fast float %2355, %2353
  %2357 = fmul fast float %2356, %2350
  %2358 = fmul fast float %2348, 2.000000e+00
  %2359 = fsub fast float 1.000000e+00, %2358
  %2360 = fmul fast float %2359, %2351
  %2361 = fadd fast float %2360, %2358
  %2362 = fmul fast float %2361, %2351
  %2363 = fmul fast float %2349, 2.000000e+00
  %2364 = fsub fast float 1.000000e+00, %2363
  %2365 = fmul fast float %2364, %2352
  %2366 = fadd fast float %2365, %2363
  %2367 = fmul fast float %2366, %2352
  %2368 = fmul fast float %2357, %2357
  %2369 = fmul fast float %2362, %2362
  %2370 = fmul fast float %2367, %2367
  br label %2387

; <label>:2371                                    ; preds = %2334
  %2372 = fmul fast float %276, %276
  %2373 = fmul fast float %280, %280
  %2374 = fmul fast float %284, %284
  %2375 = fadd fast float %2372, -1.000000e+00
  %2376 = fadd fast float %2373, -1.000000e+00
  %2377 = fadd fast float %2374, -1.000000e+00
  %2378 = fmul fast float %2223, %2375
  %2379 = fmul fast float %2223, %2376
  %2380 = fmul fast float %2223, %2377
  %2381 = fadd fast float %2378, 1.000000e+00
  %2382 = fadd fast float %2379, 1.000000e+00
  %2383 = fadd fast float %2380, 1.000000e+00
  %2384 = fmul fast float %2381, %2198
  %2385 = fmul fast float %2382, %2199
  %2386 = fmul fast float %2383, %2200
  br label %2387

; <label>:2387                                    ; preds = %2371, %2337, %2228, %2184
  %2388 = phi float [ %2333, %2228 ], [ %2209, %2337 ], [ %2209, %2371 ], [ 0x3FA23C0BE0000000, %2184 ]
  %2389 = phi float [ %2325, %2228 ], [ %2368, %2337 ], [ %2384, %2371 ], [ 1.000000e+00, %2184 ]
  %2390 = phi float [ %2326, %2228 ], [ %2369, %2337 ], [ %2385, %2371 ], [ 1.000000e+00, %2184 ]
  %2391 = phi float [ %2327, %2228 ], [ %2370, %2337 ], [ %2386, %2371 ], [ 1.000000e+00, %2184 ]
  %2392 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2393 = extractvalue %dx.types.CBufRet.i32 %2392, 1
  %2394 = and i32 %2393, 1
  %2395 = icmp ne i32 %2394, 0
  %2396 = add i32 %32, 356
  %2397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2398 = extractvalue %dx.types.ResRet.i32 %2397, 0
  %2399 = and i32 %2398, 32
  %2400 = icmp ne i32 %2399, 0
  %2401 = and i1 %2395, %2400
  %2402 = select i1 %2401, float 1.000000e+00, float %2389
  %2403 = select i1 %2401, float 0x3FD3333340000000, float %2390
  %2404 = select i1 %2401, float 0x3FD3333340000000, float %2391
  %2405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.i32 %2405, 0
  %2407 = and i32 %2406, 32
  %2408 = icmp eq i32 %2407, 0
  br i1 %2408, label %2481, label %2409

; <label>:2409                                    ; preds = %2387
  %2410 = add i32 %32, 124
  %2411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2410, i32 undef)  ; BufferLoad(srv,index,wot)
  %2412 = extractvalue %dx.types.ResRet.i32 %2411, 0
  %2413 = add i32 %32, 400
  %2414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2413, i32 undef)  ; BufferLoad(srv,index,wot)
  %2415 = extractvalue %dx.types.ResRet.i32 %2414, 0
  %2416 = add i32 %2415, 0
  %2417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2416, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2418 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2417, %dx.types.Handle %67, float %1994, float %1995, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2419 = extractvalue %dx.types.ResRet.f32 %2418, 0
  %2420 = extractvalue %dx.types.ResRet.f32 %2418, 1
  %2421 = extractvalue %dx.types.ResRet.f32 %2418, 2
  %2422 = extractvalue %dx.types.ResRet.f32 %2418, 3
  %2423 = and i32 %2412, 255
  %2424 = uitofp i32 %2423 to float
  %2425 = lshr i32 %2412, 8
  %2426 = and i32 %2425, 255
  %2427 = uitofp i32 %2426 to float
  %2428 = lshr i32 %2412, 16
  %2429 = and i32 %2428, 255
  %2430 = uitofp i32 %2429 to float
  %2431 = fmul fast float %2430, 0x3F70101000000000
  %2432 = fmul fast float %2419, %2424
  %2433 = fadd fast float %2432, %2427
  %2434 = fmul fast float %2433, 0x3F70101000000000
  %2435 = fadd fast float %2420, -5.000000e-01
  %2436 = fadd fast float %2422, -5.000000e-01
  %2437 = fmul fast float %2435, %2431
  %2438 = fmul fast float %2436, %2431
  %2439 = fadd fast float %2437, 5.000000e-01
  %2440 = fadd fast float %2438, 5.000000e-01
  %2441 = fmul fast float %2439, 2.000000e+00
  %2442 = fadd fast float %2441, -1.000000e+00
  %2443 = fmul fast float %2440, 2.000000e+00
  %2444 = fadd fast float %2443, -1.000000e+00
  %2445 = fadd fast float %2442, %2444
  %2446 = fmul fast float %2445, 5.000000e-01
  %2447 = fsub fast float %2442, %2444
  %2448 = fmul fast float %2447, 5.000000e-01
  %2449 = call float @dx.op.unary.f32(i32 6, float %2446)  ; FAbs(value)
  %2450 = fsub fast float 1.000000e+00, %2449
  %2451 = call float @dx.op.unary.f32(i32 6, float %2448)  ; FAbs(value)
  %2452 = fsub fast float %2450, %2451
  %2453 = call float @dx.op.dot3.f32(i32 55, float %2446, float %2448, float %2452, float %2446, float %2448, float %2452)  ; Dot3(ax,ay,az,bx,by,bz)
  %2454 = call float @dx.op.unary.f32(i32 25, float %2453)  ; Rsqrt(value)
  %2455 = fmul fast float %2446, %2454
  %2456 = fmul fast float %2448, %2454
  %2457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2458 = extractvalue %dx.types.ResRet.i32 %2457, 0
  %2459 = and i32 %2458, 67108864
  %2460 = icmp eq i32 %2459, 0
  br i1 %2460, label %2477, label %2461

; <label>:2461                                    ; preds = %2409
  %2462 = add i32 %32, 312
  %2463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2462, i32 undef)  ; BufferLoad(srv,index,wot)
  %2464 = extractvalue %dx.types.ResRet.i32 %2463, 0
  %2465 = and i32 %2464, 65535
  %2466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2465)  ; LegacyF16ToF32(value)
  %2467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %2468 = extractvalue %dx.types.ResRet.i32 %2467, 0
  %2469 = and i32 %2468, 65535
  %2470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2469)  ; LegacyF16ToF32(value)
  %2471 = lshr i32 %2464, 16
  %2472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2471)  ; LegacyF16ToF32(value)
  %2473 = fsub fast float %2434, %2472
  %2474 = fmul fast float %2473, %2466
  %2475 = fadd fast float %2474, %2470
  %2476 = call float @dx.op.unary.f32(i32 7, float %2475)  ; Saturate(value)
  br label %2477

; <label>:2477                                    ; preds = %2461, %2409
  %2478 = phi float [ %2476, %2461 ], [ %2434, %2409 ]
  %2479 = call float @dx.op.dot2.f32(i32 54, float %2455, float %2456, float %1898, float %1899)  ; Dot2(ax,ay,bx,by)
  %2480 = call float @dx.op.dot2.f32(i32 54, float %2455, float %2456, float %1900, float %1901)  ; Dot2(ax,ay,bx,by)
  br label %2481

; <label>:2481                                    ; preds = %2477, %2387
  %2482 = phi float [ %2478, %2477 ], [ 0x3FD6666660000000, %2387 ]
  %2483 = phi float [ %2479, %2477 ], [ 0.000000e+00, %2387 ]
  %2484 = phi float [ %2480, %2477 ], [ 0.000000e+00, %2387 ]
  %2485 = phi float [ %2421, %2477 ], [ 1.000000e+00, %2387 ]
  %2486 = add i32 %32, 192
  %2487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2486, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.i32 %2487, 0
  %2489 = lshr i32 %2488, 22
  %2490 = shl nuw nsw i32 %2489, 5
  %2491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2490)  ; LegacyF16ToF32(value)
  %2492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2493 = extractvalue %dx.types.ResRet.i32 %2492, 0
  %2494 = and i32 %2493, 64
  %2495 = icmp eq i32 %2494, 0
  br i1 %2495, label %2529, label %2496

; <label>:2496                                    ; preds = %2481
  %2497 = add i32 %32, 416
  %2498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2497, i32 undef)  ; BufferLoad(srv,index,wot)
  %2499 = extractvalue %dx.types.ResRet.i32 %2498, 0
  %2500 = add i32 %2499, 0
  %2501 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2500, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2503 = extractvalue %dx.types.ResRet.i32 %2502, 0
  %2504 = and i32 %2503, 131072
  %2505 = icmp eq i32 %2504, 0
  %2506 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2501, %dx.types.Handle %67, float %1994, float %1995, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2507 = extractvalue %dx.types.ResRet.f32 %2506, 0
  %2508 = extractvalue %dx.types.ResRet.f32 %2506, 1
  %2509 = extractvalue %dx.types.ResRet.f32 %2506, 2
  %2510 = fmul fast float %2507, %264
  %2511 = fmul fast float %2508, %267
  %2512 = fmul fast float %2509, %270
  br i1 %2505, label %2519, label %2513

; <label>:2513                                    ; preds = %2496
  %2514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2515 = extractvalue %dx.types.CBufRet.f32 %2514, 0
  %2516 = fmul fast float %2515, %2510
  %2517 = fmul fast float %2515, %2511
  %2518 = fmul fast float %2515, %2512
  br label %2519

; <label>:2519                                    ; preds = %2513, %2496
  %2520 = phi float [ %2516, %2513 ], [ %2510, %2496 ]
  %2521 = phi float [ %2517, %2513 ], [ %2511, %2496 ]
  %2522 = phi float [ %2518, %2513 ], [ %2512, %2496 ]
  %2523 = fmul fast float %2520, %2491
  %2524 = select i1 %174, float %2523, float %2520
  %2525 = call float @dx.op.dot3.f32(i32 55, float %2524, float %2521, float %2522, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2526 = select i1 %174, float 0.000000e+00, float %2520
  %2527 = select i1 %174, float %2525, float %2521
  %2528 = select i1 %174, float 0.000000e+00, float %2522
  br label %2529

; <label>:2529                                    ; preds = %2519, %2481
  %2530 = phi float [ %2526, %2519 ], [ 0.000000e+00, %2481 ]
  %2531 = phi float [ %2527, %2519 ], [ 0.000000e+00, %2481 ]
  %2532 = phi float [ %2528, %2519 ], [ 0.000000e+00, %2481 ]
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = and i32 %2534, 10240
  %2536 = icmp eq i32 %2535, 0
  br i1 %2536, label %2581, label %2537

; <label>:2537                                    ; preds = %2529
  %2538 = add i32 %32, 480
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = add i32 %2540, 0
  %2542 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2541, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2543 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2542, %dx.types.Handle %68, float %1994, float %1995, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2544 = extractvalue %dx.types.ResRet.f32 %2543, 1
  %2545 = extractvalue %dx.types.ResRet.f32 %2543, 3
  %2546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2547 = extractvalue %dx.types.ResRet.i32 %2546, 0
  %2548 = and i32 %2547, 1048576
  %2549 = icmp ne i32 %2548, 0
  %2550 = and i32 %2547, 8192
  %2551 = icmp eq i32 %2550, 0
  br i1 %2551, label %2567, label %2552

; <label>:2552                                    ; preds = %2537
  %2553 = extractvalue %dx.types.ResRet.f32 %2543, 2
  %2554 = select i1 %2549, float %2553, float %2544
  %2555 = extractvalue %dx.types.ResRet.f32 %2543, 0
  %2556 = select i1 %2549, float %2555, float %2544
  %2557 = add i32 %32, 128
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = lshr i32 %2559, 16
  %2561 = and i32 %2560, 255
  %2562 = uitofp i32 %2561 to float
  %2563 = fmul fast float %2562, 0x3F80101020000000
  %2564 = fmul fast float %2563, %2556
  %2565 = fmul fast float %2563, %2544
  %2566 = fmul fast float %2563, %2554
  br label %2567

; <label>:2567                                    ; preds = %2552, %2537
  %2568 = phi float [ %2564, %2552 ], [ 0.000000e+00, %2537 ]
  %2569 = phi float [ %2565, %2552 ], [ 0.000000e+00, %2537 ]
  %2570 = phi float [ %2566, %2552 ], [ 0.000000e+00, %2537 ]
  %2571 = and i32 %2547, 2048
  %2572 = icmp eq i32 %2571, 0
  br i1 %2572, label %2581, label %2573

; <label>:2573                                    ; preds = %2567
  %2574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2486, i32 undef)  ; BufferLoad(srv,index,wot)
  %2575 = extractvalue %dx.types.ResRet.i32 %2574, 0
  %2576 = shl i32 %2575, 4
  %2577 = and i32 %2576, 32752
  %2578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2577)  ; LegacyF16ToF32(value)
  %2579 = fmul fast float %2578, %2545
  %2580 = call float @dx.op.binary.f32(i32 35, float %2579, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2581

; <label>:2581                                    ; preds = %2573, %2567, %2529
  %2582 = phi float [ %2568, %2573 ], [ %2568, %2567 ], [ 0.000000e+00, %2529 ]
  %2583 = phi float [ %2569, %2573 ], [ %2569, %2567 ], [ 0.000000e+00, %2529 ]
  %2584 = phi float [ %2570, %2573 ], [ %2570, %2567 ], [ 0.000000e+00, %2529 ]
  %2585 = phi float [ %2580, %2573 ], [ 0x3F70101020000000, %2567 ], [ 0x3F70101020000000, %2529 ]
  %2586 = add i32 %32, 128
  %2587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2588 = extractvalue %dx.types.ResRet.i32 %2587, 0
  %2589 = and i32 %2588, 255
  %2590 = uitofp i32 %2589 to float
  %2591 = lshr i32 %2588, 8
  %2592 = and i32 %2591, 255
  %2593 = uitofp i32 %2592 to float
  %2594 = call float @dx.op.dot3.f32(i32 55, float %2402, float %2403, float %2404, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2595 = fmul fast float %2593, %2594
  %2596 = fadd fast float %2595, %2590
  %2597 = fmul fast float %2596, 0x3F70101020000000
  %2598 = call float @dx.op.unary.f32(i32 7, float %2597)  ; Saturate(value)
  br i1 %1886, label %2599, label %2607

; <label>:2599                                    ; preds = %2581
  %2600 = fsub fast float 1.000000e+00, %2182
  %2601 = fmul fast float %2600, %1871
  %2602 = fmul fast float %2600, %1872
  %2603 = fmul fast float %2600, %1873
  %2604 = fmul fast float %2600, %1874
  %2605 = fmul fast float %2600, %1875
  %2606 = fmul fast float %2600, %1876
  br label %2607

; <label>:2607                                    ; preds = %2599, %2581
  %2608 = phi float [ %2601, %2599 ], [ %1871, %2581 ]
  %2609 = phi float [ %2602, %2599 ], [ %1872, %2581 ]
  %2610 = phi float [ %2603, %2599 ], [ %1873, %2581 ]
  %2611 = phi float [ %2604, %2599 ], [ %1874, %2581 ]
  %2612 = phi float [ %2605, %2599 ], [ %1875, %2581 ]
  %2613 = phi float [ %2606, %2599 ], [ %1876, %2581 ]
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = and i32 %2615, 3
  %2617 = icmp eq i32 %2616, 3
  br i1 %2617, label %2696, label %2618

; <label>:2618                                    ; preds = %2607
  %2619 = and i32 %2615, 16
  %2620 = icmp ne i32 %2619, 0
  %2621 = select i1 %2620, float %2182, float 0.000000e+00
  %2622 = icmp eq i32 %2616, 0
  br i1 %2622, label %2623, label %2651

; <label>:2623                                    ; preds = %2618
  %2624 = and i32 %2615, 64
  %2625 = icmp ne i32 %2624, 0
  %2626 = select i1 %2625, float %2182, float 0.000000e+00
  %2627 = fsub fast float %2402, %2608
  %2628 = fsub fast float %2403, %2609
  %2629 = fsub fast float %2404, %2610
  %2630 = fmul fast float %2621, %2627
  %2631 = fmul fast float %2621, %2628
  %2632 = fmul fast float %2621, %2629
  %2633 = fadd fast float %2630, %2608
  %2634 = fadd fast float %2631, %2609
  %2635 = fadd fast float %2632, %2610
  %2636 = fsub fast float %2388, %1880
  %2637 = fmul fast float %2621, %2636
  %2638 = fadd fast float %2637, %1880
  %2639 = fsub fast float %2530, %2611
  %2640 = fsub fast float %2531, %2612
  %2641 = fsub fast float %2532, %2613
  %2642 = fmul fast float %2626, %2639
  %2643 = fmul fast float %2626, %2640
  %2644 = fmul fast float %2626, %2641
  %2645 = fadd fast float %2642, %2611
  %2646 = fadd fast float %2643, %2612
  %2647 = fadd fast float %2644, %2613
  %2648 = fsub fast float %2598, %1884
  %2649 = fmul fast float %2621, %2648
  %2650 = fadd fast float %2649, %1884
  br label %2696

; <label>:2651                                    ; preds = %2618
  %2652 = icmp eq i32 %2616, 1
  br i1 %2652, label %2653, label %2666

; <label>:2653                                    ; preds = %2651
  %2654 = fadd fast float %2402, -1.000000e+00
  %2655 = fadd fast float %2403, -1.000000e+00
  %2656 = fadd fast float %2404, -1.000000e+00
  %2657 = fmul fast float %2621, %2654
  %2658 = fmul fast float %2621, %2655
  %2659 = fmul fast float %2621, %2656
  %2660 = fadd fast float %2657, 1.000000e+00
  %2661 = fadd fast float %2658, 1.000000e+00
  %2662 = fadd fast float %2659, 1.000000e+00
  %2663 = fmul fast float %2660, %2608
  %2664 = fmul fast float %2661, %2609
  %2665 = fmul fast float %2662, %2610
  br label %2696

; <label>:2666                                    ; preds = %2651
  %2667 = icmp eq i32 %2616, 2
  br i1 %2667, label %2668, label %2696

; <label>:2668                                    ; preds = %2666
  %2669 = call float @dx.op.unary.f32(i32 24, float %2402)  ; Sqrt(value)
  %2670 = call float @dx.op.unary.f32(i32 24, float %2403)  ; Sqrt(value)
  %2671 = call float @dx.op.unary.f32(i32 24, float %2404)  ; Sqrt(value)
  %2672 = fadd fast float %2669, -5.000000e-01
  %2673 = fadd fast float %2670, -5.000000e-01
  %2674 = fadd fast float %2671, -5.000000e-01
  %2675 = fmul fast float %2672, %2621
  %2676 = fmul fast float %2673, %2621
  %2677 = fmul fast float %2674, %2621
  %2678 = fadd fast float %2675, 5.000000e-01
  %2679 = fadd fast float %2676, 5.000000e-01
  %2680 = fadd fast float %2677, 5.000000e-01
  %2681 = fmul fast float %2678, 2.000000e+00
  %2682 = fsub fast float 1.000000e+00, %2681
  %2683 = fmul fast float %2682, %2608
  %2684 = fadd fast float %2683, %2681
  %2685 = fmul fast float %2684, %2608
  %2686 = fmul fast float %2679, 2.000000e+00
  %2687 = fsub fast float 1.000000e+00, %2686
  %2688 = fmul fast float %2687, %2609
  %2689 = fadd fast float %2688, %2686
  %2690 = fmul fast float %2689, %2609
  %2691 = fmul fast float %2680, 2.000000e+00
  %2692 = fsub fast float 1.000000e+00, %2691
  %2693 = fmul fast float %2692, %2610
  %2694 = fadd fast float %2693, %2691
  %2695 = fmul fast float %2694, %2610
  br label %2696

; <label>:2696                                    ; preds = %2668, %2666, %2653, %2623, %2607
  %2697 = phi float [ %2608, %2607 ], [ %2685, %2668 ], [ %2608, %2666 ], [ %2663, %2653 ], [ %2633, %2623 ]
  %2698 = phi float [ %2609, %2607 ], [ %2690, %2668 ], [ %2609, %2666 ], [ %2664, %2653 ], [ %2634, %2623 ]
  %2699 = phi float [ %2610, %2607 ], [ %2695, %2668 ], [ %2610, %2666 ], [ %2665, %2653 ], [ %2635, %2623 ]
  %2700 = phi float [ %2611, %2607 ], [ %2611, %2668 ], [ %2611, %2666 ], [ %2611, %2653 ], [ %2645, %2623 ]
  %2701 = phi float [ %2612, %2607 ], [ %2612, %2668 ], [ %2612, %2666 ], [ %2612, %2653 ], [ %2646, %2623 ]
  %2702 = phi float [ %2613, %2607 ], [ %2613, %2668 ], [ %2613, %2666 ], [ %2613, %2653 ], [ %2647, %2623 ]
  %2703 = phi float [ %1880, %2607 ], [ %1880, %2668 ], [ %1880, %2666 ], [ %1880, %2653 ], [ %2638, %2623 ]
  %2704 = phi float [ %1884, %2607 ], [ %1884, %2668 ], [ %1884, %2666 ], [ %1884, %2653 ], [ %2650, %2623 ]
  %2705 = and i32 %2615, 12
  %2706 = icmp eq i32 %2705, 12
  br i1 %2706, label %2813, label %2707

; <label>:2707                                    ; preds = %2696
  %2708 = and i32 %2615, 2097184
  %2709 = icmp eq i32 %2708, 2097184
  %2710 = select i1 %2709, float %2182, float 0.000000e+00
  %2711 = and i32 %2615, 4194336
  %2712 = icmp eq i32 %2711, 4194336
  %2713 = select i1 %2712, float %2182, float 0.000000e+00
  %2714 = and i32 %2615, 8388640
  %2715 = icmp eq i32 %2714, 8388640
  %2716 = select i1 %2715, float %2182, float 0.000000e+00
  %2717 = and i32 %2615, 2048
  %2718 = icmp ne i32 %2717, 0
  %2719 = select i1 %2718, float %2182, float 0.000000e+00
  %2720 = and i32 %2615, 8192
  %2721 = icmp ne i32 %2720, 0
  %2722 = select i1 %2721, float %2182, float 0.000000e+00
  %2723 = icmp eq i32 %2705, 0
  br i1 %2723, label %2724, label %2749

; <label>:2724                                    ; preds = %2707
  %2725 = fsub fast float %2483, %1869
  %2726 = fsub fast float %2484, %1870
  %2727 = fmul fast float %2710, %2725
  %2728 = fmul fast float %2710, %2726
  %2729 = fadd fast float %2727, %1869
  %2730 = fadd fast float %2728, %1870
  %2731 = fsub fast float %2485, %1882
  %2732 = fmul fast float %2713, %2731
  %2733 = fadd fast float %2732, %1882
  %2734 = fsub fast float %2482, %1881
  %2735 = fmul fast float %2716, %2734
  %2736 = fadd fast float %2735, %1881
  %2737 = fsub fast float %2585, %1883
  %2738 = fmul fast float %2719, %2737
  %2739 = fadd fast float %2738, %1883
  %2740 = fsub fast float %2582, %1877
  %2741 = fsub fast float %2583, %1878
  %2742 = fsub fast float %2584, %1879
  %2743 = fmul fast float %2722, %2740
  %2744 = fmul fast float %2722, %2741
  %2745 = fmul fast float %2722, %2742
  %2746 = fadd fast float %2743, %1877
  %2747 = fadd fast float %2744, %1878
  %2748 = fadd fast float %2745, %1879
  br label %2813

; <label>:2749                                    ; preds = %2707
  %2750 = icmp eq i32 %2705, 4
  br i1 %2750, label %2751, label %2791

; <label>:2751                                    ; preds = %2749
  %2752 = fmul fast float %2710, %2483
  %2753 = fmul fast float %2710, %2484
  %2754 = fadd fast float %2752, %1869
  %2755 = fadd fast float %2753, %1870
  %2756 = call float @dx.op.binary.f32(i32 36, float %1882, float %2485)  ; FMin(a,b)
  %2757 = fsub fast float %2756, %1882
  %2758 = fmul fast float %2757, %2713
  %2759 = fadd fast float %2758, %1882
  %2760 = fadd fast float %2482, %1881
  %2761 = fmul fast float %2760, 0x3FF337FAE0000000
  %2762 = fmul fast float %1881, %1881
  %2763 = fmul fast float %2482, %2482
  %2764 = fadd fast float %2763, %2762
  %2765 = fmul fast float %2764, 0x3FE5152B00000000
  %2766 = fmul fast float %1881, 0xBFCC1F85E0000000
  %2767 = fmul fast float %2766, %2482
  %2768 = fadd fast float %2767, 0xBFE1363700000000
  %2769 = fadd fast float %2768, %2761
  %2770 = fsub fast float %2769, %2765
  %2771 = fmul fast float %2760, 0x3FBA6F0D00000000
  %2772 = fmul fast float %2764, 0x3FD0432880000000
  %2773 = fmul fast float %1881, 0xBFEF110800000000
  %2774 = fmul fast float %2773, %2482
  %2775 = fadd fast float %2774, 1.000000e+00
  %2776 = fsub fast float %2775, %2771
  %2777 = fadd fast float %2776, %2772
  %2778 = fdiv fast float %2770, %2777
  %2779 = call float @dx.op.unary.f32(i32 7, float %2778)  ; Saturate(value)
  %2780 = fsub fast float %2779, %1881
  %2781 = fmul fast float %2780, %2716
  %2782 = fadd fast float %2781, %1881
  %2783 = fmul fast float %2719, %2585
  %2784 = fadd fast float %2783, %1883
  %2785 = fmul fast float %2722, %2582
  %2786 = fmul fast float %2722, %2583
  %2787 = fmul fast float %2722, %2584
  %2788 = fadd fast float %2785, %1877
  %2789 = fadd fast float %2786, %1878
  %2790 = fadd fast float %2787, %1879
  br label %2813

; <label>:2791                                    ; preds = %2749
  %2792 = icmp eq i32 %2705, 8
  br i1 %2792, label %2793, label %2813

; <label>:2793                                    ; preds = %2791
  %2794 = fmul fast float %2710, %2483
  %2795 = fmul fast float %2710, %2484
  %2796 = fadd fast float %2794, %1869
  %2797 = fadd fast float %2795, %1870
  %2798 = call float @dx.op.binary.f32(i32 36, float %1882, float %2485)  ; FMin(a,b)
  %2799 = fsub fast float %2798, %1882
  %2800 = fmul fast float %2799, %2713
  %2801 = fadd fast float %2800, %1882
  %2802 = fsub fast float %2482, %1881
  %2803 = fmul fast float %2716, %2802
  %2804 = fadd fast float %2803, %1881
  %2805 = fmul fast float %2719, %2585
  %2806 = fadd fast float %2805, %1883
  %2807 = fmul fast float %2722, %2582
  %2808 = fmul fast float %2722, %2583
  %2809 = fmul fast float %2722, %2584
  %2810 = fadd fast float %2807, %1877
  %2811 = fadd fast float %2808, %1878
  %2812 = fadd fast float %2809, %1879
  br label %2813

; <label>:2813                                    ; preds = %2793, %2791, %2751, %2724, %2696, %2181, %1885, %1868
  %2814 = phi float [ %1869, %2696 ], [ %1869, %2181 ], [ %1869, %1868 ], [ %2796, %2793 ], [ %1869, %2791 ], [ %2754, %2751 ], [ %2729, %2724 ], [ %1869, %1885 ]
  %2815 = phi float [ %1870, %2696 ], [ %1870, %2181 ], [ %1870, %1868 ], [ %2797, %2793 ], [ %1870, %2791 ], [ %2755, %2751 ], [ %2730, %2724 ], [ %1870, %1885 ]
  %2816 = phi float [ %2697, %2696 ], [ %1871, %2181 ], [ %1871, %1868 ], [ %2697, %2793 ], [ %2697, %2791 ], [ %2697, %2751 ], [ %2697, %2724 ], [ %1871, %1885 ]
  %2817 = phi float [ %2698, %2696 ], [ %1872, %2181 ], [ %1872, %1868 ], [ %2698, %2793 ], [ %2698, %2791 ], [ %2698, %2751 ], [ %2698, %2724 ], [ %1872, %1885 ]
  %2818 = phi float [ %2699, %2696 ], [ %1873, %2181 ], [ %1873, %1868 ], [ %2699, %2793 ], [ %2699, %2791 ], [ %2699, %2751 ], [ %2699, %2724 ], [ %1873, %1885 ]
  %2819 = phi float [ %2700, %2696 ], [ %1874, %2181 ], [ %1874, %1868 ], [ %2700, %2793 ], [ %2700, %2791 ], [ %2700, %2751 ], [ %2700, %2724 ], [ %1874, %1885 ]
  %2820 = phi float [ %2701, %2696 ], [ %1875, %2181 ], [ %1875, %1868 ], [ %2701, %2793 ], [ %2701, %2791 ], [ %2701, %2751 ], [ %2701, %2724 ], [ %1875, %1885 ]
  %2821 = phi float [ %2702, %2696 ], [ %1876, %2181 ], [ %1876, %1868 ], [ %2702, %2793 ], [ %2702, %2791 ], [ %2702, %2751 ], [ %2702, %2724 ], [ %1876, %1885 ]
  %2822 = phi float [ %1877, %2696 ], [ %1877, %2181 ], [ %1877, %1868 ], [ %2810, %2793 ], [ %1877, %2791 ], [ %2788, %2751 ], [ %2746, %2724 ], [ %1877, %1885 ]
  %2823 = phi float [ %1878, %2696 ], [ %1878, %2181 ], [ %1878, %1868 ], [ %2811, %2793 ], [ %1878, %2791 ], [ %2789, %2751 ], [ %2747, %2724 ], [ %1878, %1885 ]
  %2824 = phi float [ %1879, %2696 ], [ %1879, %2181 ], [ %1879, %1868 ], [ %2812, %2793 ], [ %1879, %2791 ], [ %2790, %2751 ], [ %2748, %2724 ], [ %1879, %1885 ]
  %2825 = phi float [ %2703, %2696 ], [ %1880, %2181 ], [ %1880, %1868 ], [ %2703, %2793 ], [ %2703, %2791 ], [ %2703, %2751 ], [ %2703, %2724 ], [ %1880, %1885 ]
  %2826 = phi float [ %1881, %2696 ], [ %1881, %2181 ], [ %1881, %1868 ], [ %2804, %2793 ], [ %1881, %2791 ], [ %2782, %2751 ], [ %2736, %2724 ], [ %1881, %1885 ]
  %2827 = phi float [ %1882, %2696 ], [ %1882, %2181 ], [ %1882, %1868 ], [ %2801, %2793 ], [ %1882, %2791 ], [ %2759, %2751 ], [ %2733, %2724 ], [ %1882, %1885 ]
  %2828 = phi float [ %1883, %2696 ], [ %1883, %2181 ], [ %1883, %1868 ], [ %2806, %2793 ], [ %1883, %2791 ], [ %2784, %2751 ], [ %2739, %2724 ], [ %1883, %1885 ]
  %2829 = phi float [ %2704, %2696 ], [ %1884, %2181 ], [ %1884, %1868 ], [ %2704, %2793 ], [ %2704, %2791 ], [ %2704, %2751 ], [ %2704, %2724 ], [ %1884, %1885 ]
  br i1 %351, label %3758, label %2830

; <label>:2830                                    ; preds = %2813
  %2831 = icmp ult i32 %402, 4
  %2832 = add i32 %32, 72
  %2833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2834 = extractvalue %dx.types.ResRet.i32 %2833, 0
  %2835 = add i32 %32, 76
  %2836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.i32 %2836, 0
  %2838 = or i32 %2837, %2834
  %2839 = icmp eq i32 %2838, 0
  br i1 %2839, label %3758, label %2840

; <label>:2840                                    ; preds = %2830
  %2841 = and i32 %2834, 262144
  %2842 = icmp ne i32 %2841, 0
  %2843 = select i1 %2842, float %34, float 1.000000e+00
  %2844 = select i1 %2842, float %35, float 0.000000e+00
  %2845 = select i1 %2842, float %36, float 0.000000e+00
  %2846 = select i1 %2842, float %37, float 1.000000e+00
  %2847 = select i1 %2842, float %38, float %59
  %2848 = select i1 %2842, float %39, float %60
  %2849 = add i32 %32, 332
  %2850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2851 = extractvalue %dx.types.ResRet.i32 %2850, 0
  %2852 = lshr i32 %2851, 16
  %2853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2852)  ; LegacyF16ToF32(value)
  %2854 = fmul fast float %2853, 0x3F50624DE0000000
  %2855 = add i32 %32, 136
  %2856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2857 = extractvalue %dx.types.ResRet.i32 %2856, 0
  %2858 = lshr i32 %2857, 16
  %2859 = and i32 %2858, 255
  %2860 = lshr i32 %2857, 24
  %2861 = add i32 %32, 340
  %2862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2863 = extractvalue %dx.types.ResRet.i32 %2862, 0
  %2864 = and i32 %2863, 65535
  %2865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2864)  ; LegacyF16ToF32(value)
  %2866 = lshr i32 %2863, 16
  %2867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2866)  ; LegacyF16ToF32(value)
  %2868 = add i32 %32, 80
  %2869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2868, i32 undef)  ; BufferLoad(srv,index,wot)
  %2870 = extractvalue %dx.types.ResRet.i32 %2869, 0
  %2871 = lshr i32 %2870, 22
  %2872 = shl nuw nsw i32 %2871, 5
  %2873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2872)  ; LegacyF16ToF32(value)
  %2874 = shl i32 %2870, 4
  %2875 = and i32 %2874, 32752
  %2876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2875)  ; LegacyF16ToF32(value)
  %2877 = lshr i32 %2870, 7
  %2878 = and i32 %2877, 32752
  %2879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2878)  ; LegacyF16ToF32(value)
  %2880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2881 = extractvalue %dx.types.CBufRet.f32 %2880, 3
  %2882 = fmul fast float %2881, 1.000000e+03
  %2883 = fmul fast float %341, %2882
  %2884 = call float @dx.op.unary.f32(i32 22, float %2883)  ; Frc(value)
  %2885 = fadd fast float %2884, %331
  %2886 = fmul fast float %342, %2882
  %2887 = call float @dx.op.unary.f32(i32 22, float %2886)  ; Frc(value)
  %2888 = fadd fast float %2887, %333
  %2889 = fmul fast float %2854, %2882
  %2890 = call float @dx.op.unary.f32(i32 22, float %2889)  ; Frc(value)
  %2891 = fmul fast float %2890, 0x401921FB60000000
  %2892 = fadd fast float %2891, %2873
  %2893 = call float @dx.op.unary.f32(i32 13, float %2892)  ; Sin(value)
  %2894 = call float @dx.op.unary.f32(i32 12, float %2892)  ; Cos(value)
  %2895 = fsub fast float -0.000000e+00, %2893
  %2896 = fadd fast float %2847, -5.000000e-01
  %2897 = fadd fast float %2848, -5.000000e-01
  %2898 = fmul fast float %2865, %2896
  %2899 = fmul fast float %2867, %2897
  %2900 = fadd fast float %2898, 5.000000e-01
  %2901 = fadd fast float %2899, 5.000000e-01
  %2902 = fmul fast float %2876, %2900
  %2903 = fmul fast float %2879, %2901
  %2904 = fmul fast float %2894, %2902
  %2905 = call float @dx.op.tertiary.f32(i32 46, float %2895, float %2903, float %2904)  ; FMad(a,b,c)
  %2906 = fmul fast float %2893, %2902
  %2907 = call float @dx.op.tertiary.f32(i32 46, float %2894, float %2903, float %2906)  ; FMad(a,b,c)
  %2908 = fadd fast float %2885, %2905
  %2909 = fadd fast float %2888, %2907
  %2910 = icmp ugt i32 %2859, 1
  %2911 = icmp ugt i32 %2857, 33554431
  %2912 = or i1 %2911, %2910
  br i1 %2912, label %2913, label %2938

; <label>:2913                                    ; preds = %2840
  %2914 = add i32 %32, 276
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2914, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = lshr i32 %2916, 16
  %2918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2917)  ; LegacyF16ToF32(value)
  %2919 = fmul fast float %2881, %2918
  %2920 = call float @dx.op.unary.f32(i32 22, float %2919)  ; Frc(value)
  %2921 = mul nuw nsw i32 %2859, %2860
  %2922 = uitofp i32 %2921 to float
  %2923 = fmul fast float %2920, %2922
  %2924 = call float @dx.op.unary.f32(i32 27, float %2923)  ; Round_ni(value)
  %2925 = fptoui float %2924 to i32
  %2926 = urem i32 %2925, %2859
  %2927 = udiv i32 %2925, %2860
  %2928 = call float @dx.op.unary.f32(i32 22, float %2908)  ; Frc(value)
  %2929 = call float @dx.op.unary.f32(i32 22, float %2909)  ; Frc(value)
  %2930 = uitofp i32 %2926 to float
  %2931 = uitofp i32 %2927 to float
  %2932 = fadd fast float %2928, %2930
  %2933 = fadd fast float %2929, %2931
  %2934 = uitofp i32 %2859 to float
  %2935 = uitofp i32 %2860 to float
  %2936 = fdiv fast float %2932, %2934
  %2937 = fdiv fast float %2933, %2935
  br label %2938

; <label>:2938                                    ; preds = %2913, %2840
  %2939 = phi float [ %2936, %2913 ], [ %2908, %2840 ]
  %2940 = phi float [ %2937, %2913 ], [ %2909, %2840 ]
  %2941 = and i32 %2834, 16777216
  %2942 = icmp eq i32 %2941, 0
  br i1 %2942, label %3052, label %2943

; <label>:2943                                    ; preds = %2938
  %2944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2945 = extractvalue %dx.types.CBufRet.f32 %2944, 0
  %2946 = extractvalue %dx.types.CBufRet.f32 %2944, 1
  %2947 = extractvalue %dx.types.CBufRet.f32 %2944, 2
  %2948 = fadd fast float %2945, %130
  %2949 = fadd fast float %2946, %131
  %2950 = fadd fast float %2947, %132
  %2951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2952 = extractvalue %dx.types.CBufRet.f32 %2951, 0
  %2953 = call float @dx.op.unary.f32(i32 7, float %2952)  ; Saturate(value)
  %2954 = icmp eq i32 %33, 65535
  br i1 %2954, label %3049, label %2955

; <label>:2955                                    ; preds = %2943
  %2956 = lshr i32 %33, 1
  %2957 = shl i32 %2956, 2
  %2958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.i32 %2958, 0
  %2960 = and i32 %33, 1
  %2961 = icmp ne i32 %2960, 0
  %2962 = lshr i32 %2959, 16
  %2963 = and i32 %2959, 65535
  %2964 = select i1 %2961, i32 %2962, i32 %2963
  %2965 = icmp eq i32 %2964, 65535
  br i1 %2965, label %3045, label %2966

; <label>:2966                                    ; preds = %2955
  %2967 = mul nuw nsw i32 %2964, 40
  %2968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2967, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.f32 %2968, 0
  %2970 = extractvalue %dx.types.ResRet.f32 %2968, 1
  %2971 = extractvalue %dx.types.ResRet.f32 %2968, 2
  %2972 = add nuw nsw i32 %2967, 12
  %2973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.f32 %2973, 0
  %2975 = extractvalue %dx.types.ResRet.f32 %2973, 1
  %2976 = extractvalue %dx.types.ResRet.f32 %2973, 2
  %2977 = add nuw nsw i32 %2967, 24
  %2978 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.f32 %2978, 0
  %2980 = extractvalue %dx.types.ResRet.f32 %2978, 1
  %2981 = extractvalue %dx.types.ResRet.f32 %2978, 2
  %2982 = add nuw nsw i32 %2967, 36
  %2983 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.f32 %2983, 0
  %2985 = fsub fast float %2948, %2969
  %2986 = fsub fast float %2949, %2970
  %2987 = fsub fast float %2950, %2971
  %2988 = fmul fast float %2984, %2985
  %2989 = fmul fast float %2984, %2986
  %2990 = fmul fast float %2984, %2987
  %2991 = call float @dx.op.unary.f32(i32 27, float %2988)  ; Round_ni(value)
  %2992 = call float @dx.op.unary.f32(i32 27, float %2989)  ; Round_ni(value)
  %2993 = call float @dx.op.unary.f32(i32 27, float %2990)  ; Round_ni(value)
  %2994 = fadd fast float %2991, 5.000000e-01
  %2995 = fadd fast float %2992, 5.000000e-01
  %2996 = fadd fast float %2993, 5.000000e-01
  %2997 = fmul fast float %2994, %2974
  %2998 = fmul fast float %2995, %2975
  %2999 = fmul fast float %2996, %2976
  %3000 = shl i32 %33, 2
  %3001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3000, i32 undef)  ; BufferLoad(srv,index,wot)
  %3002 = extractvalue %dx.types.ResRet.i32 %3001, 0
  %3003 = add i32 %3002, 0
  %3004 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3003, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3005 = call float @dx.op.unary.f32(i32 22, float %2997)  ; Frc(value)
  %3006 = call float @dx.op.unary.f32(i32 22, float %2998)  ; Frc(value)
  %3007 = call float @dx.op.unary.f32(i32 22, float %2999)  ; Frc(value)
  %3008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3004, %dx.types.Handle %27, float %3005, float %3006, float %3007, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3009 = extractvalue %dx.types.ResRet.f32 %3008, 0
  %3010 = extractvalue %dx.types.ResRet.f32 %3008, 1
  %3011 = extractvalue %dx.types.ResRet.f32 %3008, 2
  %3012 = fmul fast float %3009, 1.023000e+03
  %3013 = fmul fast float %3010, 1.023000e+03
  %3014 = fmul fast float %3011, 1.023000e+03
  %3015 = fadd fast float %3012, 5.000000e-01
  %3016 = fadd fast float %3013, 5.000000e-01
  %3017 = fadd fast float %3014, 5.000000e-01
  %3018 = call float @dx.op.unary.f32(i32 27, float %3015)  ; Round_ni(value)
  %3019 = call float @dx.op.unary.f32(i32 27, float %3016)  ; Round_ni(value)
  %3020 = call float @dx.op.unary.f32(i32 27, float %3017)  ; Round_ni(value)
  %3021 = fsub fast float %2988, %2991
  %3022 = fsub fast float %2989, %2992
  %3023 = fsub fast float %2990, %2993
  %3024 = fmul fast float %3021, 7.500000e-01
  %3025 = fmul fast float %3022, 7.500000e-01
  %3026 = fmul fast float %3023, 7.500000e-01
  %3027 = fadd fast float %2991, 1.250000e-01
  %3028 = fadd fast float %3027, %3024
  %3029 = fadd fast float %3028, %3018
  %3030 = fadd fast float %2992, 1.250000e-01
  %3031 = fadd fast float %3030, %3025
  %3032 = fadd fast float %3031, %3019
  %3033 = fadd fast float %2993, 1.250000e-01
  %3034 = fadd fast float %3033, %3026
  %3035 = fadd fast float %3034, %3020
  %3036 = fmul fast float %3029, %2979
  %3037 = fmul fast float %3032, %2980
  %3038 = fmul fast float %3035, %2981
  %3039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3000, i32 undef)  ; BufferLoad(srv,index,wot)
  %3040 = extractvalue %dx.types.ResRet.i32 %3039, 0
  %3041 = add i32 %3040, 0
  %3042 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3041, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3043 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3042, %dx.types.Handle %25, float %3036, float %3037, float %3038, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3044 = extractvalue %dx.types.ResRet.f32 %3043, 0
  br label %3045

; <label>:3045                                    ; preds = %2966, %2955
  %3046 = phi float [ %3044, %2966 ], [ -1.000000e+00, %2955 ]
  %3047 = fadd fast float %3046, %2953
  %3048 = call float @dx.op.unary.f32(i32 7, float %3047)  ; Saturate(value)
  br label %3049

; <label>:3049                                    ; preds = %3045, %2943
  %3050 = phi float [ %3048, %3045 ], [ %2953, %2943 ]
  %3051 = fmul fast float %3050, %397
  br label %3052

; <label>:3052                                    ; preds = %3049, %2938
  %3053 = phi float [ %3051, %3049 ], [ %397, %2938 ]
  %3054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.i32 %3054, 0
  %3056 = and i32 %3055, 256
  %3057 = icmp eq i32 %3056, 0
  br i1 %3057, label %3104, label %3058

; <label>:3058                                    ; preds = %3052
  %3059 = add i32 %32, 452
  %3060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3061 = extractvalue %dx.types.ResRet.i32 %3060, 0
  %3062 = add i32 %3061, 0
  %3063 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3062, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3064 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3063, %dx.types.Handle %68, float %2939, float %2940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3065 = extractvalue %dx.types.ResRet.f32 %3064, 0
  %3066 = add i32 %32, 148
  %3067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3066, i32 undef)  ; BufferLoad(srv,index,wot)
  %3068 = extractvalue %dx.types.ResRet.i32 %3067, 0
  %3069 = shl i32 %3068, 4
  %3070 = and i32 %3069, 32752
  %3071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3070)  ; LegacyF16ToF32(value)
  %3072 = lshr i32 %3068, 7
  %3073 = and i32 %3072, 32752
  %3074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3073)  ; LegacyF16ToF32(value)
  %3075 = fsub fast float 1.000000e+00, %3053
  %3076 = call float @dx.op.binary.f32(i32 35, float %3075, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3077 = bitcast float %3053 to i32
  %3078 = sitofp i32 %3077 to float
  %3079 = fadd fast float %3078, 0xC1CFBF8940000000
  %3080 = fmul fast float %3074, %3079
  %3081 = fadd fast float %3080, 0x41CFBF8940000000
  %3082 = fptosi float %3081 to i32
  %3083 = bitcast i32 %3082 to float
  %3084 = bitcast float %3076 to i32
  %3085 = sitofp i32 %3084 to float
  %3086 = fadd fast float %3085, 0xC1CFBF8940000000
  %3087 = fmul fast float %3086, %3074
  %3088 = fadd fast float %3087, 0x41CFBF8940000000
  %3089 = fptosi float %3088 to i32
  %3090 = bitcast i32 %3089 to float
  %3091 = fmul fast float %3083, %3071
  %3092 = fmul fast float %3090, %3071
  %3093 = fsub fast float %3076, %3091
  %3094 = fadd fast float %3092, %3076
  %3095 = call float @dx.op.unary.f32(i32 7, float %3093)  ; Saturate(value)
  %3096 = call float @dx.op.unary.f32(i32 7, float %3094)  ; Saturate(value)
  %3097 = fsub fast float %3065, %3095
  %3098 = fsub fast float %3096, %3095
  %3099 = bitcast float %3098 to i32
  %3100 = sub nsw i32 2129859010, %3099
  %3101 = bitcast i32 %3100 to float
  %3102 = fmul fast float %3101, %3097
  %3103 = call float @dx.op.unary.f32(i32 7, float %3102)  ; Saturate(value)
  br label %3104

; <label>:3104                                    ; preds = %3058, %3052
  %3105 = phi float [ %3103, %3058 ], [ %3053, %3052 ]
  %3106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3107 = extractvalue %dx.types.ResRet.i32 %3106, 0
  %3108 = and i32 %3107, 128
  %3109 = icmp eq i32 %3108, 0
  br i1 %3109, label %3126, label %3110

; <label>:3110                                    ; preds = %3104
  %3111 = add i32 %32, 436
  %3112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3111, i32 undef)  ; BufferLoad(srv,index,wot)
  %3113 = extractvalue %dx.types.ResRet.i32 %3112, 0
  %3114 = add i32 %3113, 0
  %3115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3114, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3116 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3115, %dx.types.Handle %68, float %2939, float %2940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3117 = extractvalue %dx.types.ResRet.f32 %3116, 0
  %3118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3119 = extractvalue %dx.types.ResRet.i32 %3118, 0
  %3120 = and i32 %3119, 524288
  %3121 = icmp ne i32 %3120, 0
  %3122 = fcmp fast ogt float %3117, 0x3FE0101020000000
  %3123 = select i1 %3122, float 1.000000e+00, float 0.000000e+00
  %3124 = select i1 %3121, float %3123, float %3117
  %3125 = fmul fast float %3124, %3105
  br label %3126

; <label>:3126                                    ; preds = %3110, %3104
  %3127 = phi float [ %3125, %3110 ], [ %3105, %3104 ]
  %3128 = fcmp fast ult float %3127, 0x3F70101020000000
  br i1 %3128, label %3758, label %3129

; <label>:3129                                    ; preds = %3126
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = and i32 %3131, 16
  %3133 = icmp eq i32 %3132, 0
  br i1 %3133, label %3332, label %3134

; <label>:3134                                    ; preds = %3129
  %3135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3136 = extractvalue %dx.types.ResRet.i32 %3135, 0
  %3137 = add i32 %32, 388
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3137, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = add i32 %3139, 0
  %3141 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3140, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3142 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3141, %dx.types.Handle %67, float %2939, float %2940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3143 = extractvalue %dx.types.ResRet.f32 %3142, 0
  %3144 = extractvalue %dx.types.ResRet.f32 %3142, 1
  %3145 = extractvalue %dx.types.ResRet.f32 %3142, 2
  %3146 = extractvalue %dx.types.ResRet.f32 %3142, 3
  %3147 = and i32 %3136, 255
  %3148 = uitofp i32 %3147 to float
  %3149 = lshr i32 %3136, 8
  %3150 = and i32 %3149, 255
  %3151 = uitofp i32 %3150 to float
  %3152 = fmul fast float %3146, %3148
  %3153 = fadd fast float %3152, %3151
  %3154 = fmul fast float %3153, 0x3F70101000000000
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = and i32 %3156, 512
  %3158 = icmp eq i32 %3157, 0
  br i1 %3158, label %3167, label %3159

; <label>:3159                                    ; preds = %3134
  %3160 = add i32 %32, 468
  %3161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3162 = extractvalue %dx.types.ResRet.i32 %3161, 0
  %3163 = add i32 %3162, 0
  %3164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3163, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3165 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3164, %dx.types.Handle %68, float %2939, float %2940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3166 = extractvalue %dx.types.ResRet.f32 %3165, 0
  br label %3167

; <label>:3167                                    ; preds = %3159, %3134
  %3168 = phi float [ %3166, %3159 ], [ 1.000000e+00, %3134 ]
  %3169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3170 = extractvalue %dx.types.ResRet.i32 %3169, 0
  %3171 = and i32 %3170, 33554432
  %3172 = icmp eq i32 %3171, 0
  br i1 %3172, label %3279, label %3173

; <label>:3173                                    ; preds = %3167
  %3174 = add i32 %32, 272
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3174, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = and i32 %3176, 65535
  %3178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3177)  ; LegacyF16ToF32(value)
  %3179 = lshr i32 %3176, 16
  %3180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3179)  ; LegacyF16ToF32(value)
  %3181 = add i32 %32, 276
  %3182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3181, i32 undef)  ; BufferLoad(srv,index,wot)
  %3183 = extractvalue %dx.types.ResRet.i32 %3182, 0
  %3184 = and i32 %3183, 65535
  %3185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3184)  ; LegacyF16ToF32(value)
  %3186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %3187 = extractvalue %dx.types.ResRet.i32 %3186, 0
  %3188 = lshr i32 %3187, 24
  %3189 = uitofp i32 %3188 to float
  %3190 = fmul fast float %3189, 0x3F70101020000000
  %3191 = and i32 %3187, 255
  %3192 = uitofp i32 %3191 to float
  %3193 = fmul fast float %3192, 0x3F70101020000000
  %3194 = lshr i32 %3187, 8
  %3195 = and i32 %3194, 255
  %3196 = uitofp i32 %3195 to float
  %3197 = fmul fast float %3196, 0x3F70101020000000
  %3198 = lshr i32 %3187, 16
  %3199 = and i32 %3198, 255
  %3200 = uitofp i32 %3199 to float
  %3201 = fmul fast float %3200, 0x3F70101020000000
  %3202 = add i32 %32, 268
  %3203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3202, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.i32 %3203, 0
  %3205 = lshr i32 %3204, 24
  %3206 = uitofp i32 %3205 to float
  %3207 = fmul fast float %3206, 0x3F70101020000000
  %3208 = and i32 %3204, 255
  %3209 = uitofp i32 %3208 to float
  %3210 = fmul fast float %3209, 0x3F70101020000000
  %3211 = lshr i32 %3204, 8
  %3212 = and i32 %3211, 255
  %3213 = uitofp i32 %3212 to float
  %3214 = fmul fast float %3213, 0x3F70101020000000
  %3215 = lshr i32 %3204, 16
  %3216 = and i32 %3215, 255
  %3217 = uitofp i32 %3216 to float
  %3218 = fmul fast float %3217, 0x3F70101020000000
  %3219 = bitcast float %3143 to i32
  %3220 = ashr i32 %3219, 1
  %3221 = sub nsw i32 1597463174, %3220
  %3222 = bitcast i32 %3221 to float
  %3223 = fmul fast float %3143, 5.000000e-01
  %3224 = fmul fast float %3222, %3222
  %3225 = fmul fast float %3224, %3223
  %3226 = fsub fast float 1.500000e+00, %3225
  %3227 = fmul fast float %3222, %3143
  %3228 = fmul fast float %3227, %3226
  %3229 = bitcast float %3144 to i32
  %3230 = ashr i32 %3229, 1
  %3231 = sub nsw i32 1597463174, %3230
  %3232 = bitcast i32 %3231 to float
  %3233 = fmul fast float %3144, 5.000000e-01
  %3234 = fmul fast float %3232, %3232
  %3235 = fmul fast float %3234, %3233
  %3236 = fsub fast float 1.500000e+00, %3235
  %3237 = fmul fast float %3232, %3144
  %3238 = fmul fast float %3237, %3236
  %3239 = bitcast float %3145 to i32
  %3240 = ashr i32 %3239, 1
  %3241 = sub nsw i32 1597463174, %3240
  %3242 = bitcast i32 %3241 to float
  %3243 = fmul fast float %3145, 5.000000e-01
  %3244 = fmul fast float %3242, %3242
  %3245 = fmul fast float %3244, %3243
  %3246 = fsub fast float 1.500000e+00, %3245
  %3247 = fmul fast float %3242, %3145
  %3248 = fmul fast float %3247, %3246
  %3249 = fsub fast float %3228, %3210
  %3250 = fsub fast float %3238, %3214
  %3251 = fsub fast float %3248, %3218
  %3252 = fmul fast float %3249, %3178
  %3253 = fmul fast float %3250, %3180
  %3254 = fmul fast float %3251, %3185
  %3255 = fadd fast float %3252, %3193
  %3256 = fadd fast float %3253, %3197
  %3257 = fadd fast float %3254, %3201
  %3258 = call float @dx.op.unary.f32(i32 7, float %3255)  ; Saturate(value)
  %3259 = call float @dx.op.unary.f32(i32 7, float %3256)  ; Saturate(value)
  %3260 = call float @dx.op.unary.f32(i32 7, float %3257)  ; Saturate(value)
  %3261 = fmul fast float %3258, %3258
  %3262 = fmul fast float %3259, %3259
  %3263 = fmul fast float %3260, %3260
  %3264 = fsub fast float %3261, %3143
  %3265 = fsub fast float %3262, %3144
  %3266 = fsub fast float %3263, %3145
  %3267 = fmul fast float %3264, %3168
  %3268 = fmul fast float %3265, %3168
  %3269 = fmul fast float %3266, %3168
  %3270 = fadd fast float %3267, %3143
  %3271 = fadd fast float %3268, %3144
  %3272 = fadd fast float %3269, %3145
  %3273 = fadd fast float %3190, %3154
  %3274 = fsub fast float %3273, %3207
  %3275 = call float @dx.op.unary.f32(i32 7, float %3274)  ; Saturate(value)
  %3276 = fsub fast float %3275, %3154
  %3277 = fmul fast float %3276, %3168
  %3278 = fadd fast float %3277, %3154
  br label %3332

; <label>:3279                                    ; preds = %3167
  %3280 = and i32 %3170, 134217728
  %3281 = icmp eq i32 %3280, 0
  br i1 %3281, label %3316, label %3282

; <label>:3282                                    ; preds = %3279
  %3283 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %3284 = call float @dx.op.unary.f32(i32 24, float %322)  ; Sqrt(value)
  %3285 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %3286 = fadd fast float %3283, -5.000000e-01
  %3287 = fadd fast float %3284, -5.000000e-01
  %3288 = fadd fast float %3285, -5.000000e-01
  %3289 = fmul fast float %3286, %3168
  %3290 = fmul fast float %3287, %3168
  %3291 = fmul fast float %3288, %3168
  %3292 = fadd fast float %3289, 5.000000e-01
  %3293 = fadd fast float %3290, 5.000000e-01
  %3294 = fadd fast float %3291, 5.000000e-01
  %3295 = call float @dx.op.unary.f32(i32 24, float %3143)  ; Sqrt(value)
  %3296 = call float @dx.op.unary.f32(i32 24, float %3144)  ; Sqrt(value)
  %3297 = call float @dx.op.unary.f32(i32 24, float %3145)  ; Sqrt(value)
  %3298 = fmul fast float %3292, 2.000000e+00
  %3299 = fsub fast float 1.000000e+00, %3298
  %3300 = fmul fast float %3299, %3295
  %3301 = fadd fast float %3300, %3298
  %3302 = fmul fast float %3301, %3295
  %3303 = fmul fast float %3293, 2.000000e+00
  %3304 = fsub fast float 1.000000e+00, %3303
  %3305 = fmul fast float %3304, %3296
  %3306 = fadd fast float %3305, %3303
  %3307 = fmul fast float %3306, %3296
  %3308 = fmul fast float %3294, 2.000000e+00
  %3309 = fsub fast float 1.000000e+00, %3308
  %3310 = fmul fast float %3309, %3297
  %3311 = fadd fast float %3310, %3308
  %3312 = fmul fast float %3311, %3297
  %3313 = fmul fast float %3302, %3302
  %3314 = fmul fast float %3307, %3307
  %3315 = fmul fast float %3312, %3312
  br label %3332

; <label>:3316                                    ; preds = %3279
  %3317 = fmul fast float %318, %318
  %3318 = fmul fast float %322, %322
  %3319 = fmul fast float %326, %326
  %3320 = fadd fast float %3317, -1.000000e+00
  %3321 = fadd fast float %3318, -1.000000e+00
  %3322 = fadd fast float %3319, -1.000000e+00
  %3323 = fmul fast float %3168, %3320
  %3324 = fmul fast float %3168, %3321
  %3325 = fmul fast float %3168, %3322
  %3326 = fadd fast float %3323, 1.000000e+00
  %3327 = fadd fast float %3324, 1.000000e+00
  %3328 = fadd fast float %3325, 1.000000e+00
  %3329 = fmul fast float %3326, %3143
  %3330 = fmul fast float %3327, %3144
  %3331 = fmul fast float %3328, %3145
  br label %3332

; <label>:3332                                    ; preds = %3316, %3282, %3173, %3129
  %3333 = phi float [ %3278, %3173 ], [ %3154, %3282 ], [ %3154, %3316 ], [ 0x3FA23C0BE0000000, %3129 ]
  %3334 = phi float [ %3270, %3173 ], [ %3313, %3282 ], [ %3329, %3316 ], [ 1.000000e+00, %3129 ]
  %3335 = phi float [ %3271, %3173 ], [ %3314, %3282 ], [ %3330, %3316 ], [ 1.000000e+00, %3129 ]
  %3336 = phi float [ %3272, %3173 ], [ %3315, %3282 ], [ %3331, %3316 ], [ 1.000000e+00, %3129 ]
  %3337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3338 = extractvalue %dx.types.CBufRet.i32 %3337, 1
  %3339 = and i32 %3338, 1
  %3340 = icmp ne i32 %3339, 0
  %3341 = add i32 %32, 356
  %3342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3341, i32 undef)  ; BufferLoad(srv,index,wot)
  %3343 = extractvalue %dx.types.ResRet.i32 %3342, 0
  %3344 = and i32 %3343, 32
  %3345 = icmp ne i32 %3344, 0
  %3346 = and i1 %3340, %3345
  %3347 = select i1 %3346, float 1.000000e+00, float %3334
  %3348 = select i1 %3346, float 0x3FD3333340000000, float %3335
  %3349 = select i1 %3346, float 0x3FD3333340000000, float %3336
  %3350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3351 = extractvalue %dx.types.ResRet.i32 %3350, 0
  %3352 = and i32 %3351, 32
  %3353 = icmp eq i32 %3352, 0
  br i1 %3353, label %3426, label %3354

; <label>:3354                                    ; preds = %3332
  %3355 = add i32 %32, 140
  %3356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3355, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.i32 %3356, 0
  %3358 = add i32 %32, 404
  %3359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3358, i32 undef)  ; BufferLoad(srv,index,wot)
  %3360 = extractvalue %dx.types.ResRet.i32 %3359, 0
  %3361 = add i32 %3360, 0
  %3362 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3361, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3363 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3362, %dx.types.Handle %67, float %2939, float %2940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3364 = extractvalue %dx.types.ResRet.f32 %3363, 0
  %3365 = extractvalue %dx.types.ResRet.f32 %3363, 1
  %3366 = extractvalue %dx.types.ResRet.f32 %3363, 2
  %3367 = extractvalue %dx.types.ResRet.f32 %3363, 3
  %3368 = and i32 %3357, 255
  %3369 = uitofp i32 %3368 to float
  %3370 = lshr i32 %3357, 8
  %3371 = and i32 %3370, 255
  %3372 = uitofp i32 %3371 to float
  %3373 = lshr i32 %3357, 16
  %3374 = and i32 %3373, 255
  %3375 = uitofp i32 %3374 to float
  %3376 = fmul fast float %3375, 0x3F70101000000000
  %3377 = fmul fast float %3364, %3369
  %3378 = fadd fast float %3377, %3372
  %3379 = fmul fast float %3378, 0x3F70101000000000
  %3380 = fadd fast float %3365, -5.000000e-01
  %3381 = fadd fast float %3367, -5.000000e-01
  %3382 = fmul fast float %3380, %3376
  %3383 = fmul fast float %3381, %3376
  %3384 = fadd fast float %3382, 5.000000e-01
  %3385 = fadd fast float %3383, 5.000000e-01
  %3386 = fmul fast float %3384, 2.000000e+00
  %3387 = fadd fast float %3386, -1.000000e+00
  %3388 = fmul fast float %3385, 2.000000e+00
  %3389 = fadd fast float %3388, -1.000000e+00
  %3390 = fadd fast float %3387, %3389
  %3391 = fmul fast float %3390, 5.000000e-01
  %3392 = fsub fast float %3387, %3389
  %3393 = fmul fast float %3392, 5.000000e-01
  %3394 = call float @dx.op.unary.f32(i32 6, float %3391)  ; FAbs(value)
  %3395 = fsub fast float 1.000000e+00, %3394
  %3396 = call float @dx.op.unary.f32(i32 6, float %3393)  ; FAbs(value)
  %3397 = fsub fast float %3395, %3396
  %3398 = call float @dx.op.dot3.f32(i32 55, float %3391, float %3393, float %3397, float %3391, float %3393, float %3397)  ; Dot3(ax,ay,az,bx,by,bz)
  %3399 = call float @dx.op.unary.f32(i32 25, float %3398)  ; Rsqrt(value)
  %3400 = fmul fast float %3391, %3399
  %3401 = fmul fast float %3393, %3399
  %3402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3403 = extractvalue %dx.types.ResRet.i32 %3402, 0
  %3404 = and i32 %3403, 67108864
  %3405 = icmp eq i32 %3404, 0
  br i1 %3405, label %3422, label %3406

; <label>:3406                                    ; preds = %3354
  %3407 = add i32 %32, 328
  %3408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %3409 = extractvalue %dx.types.ResRet.i32 %3408, 0
  %3410 = and i32 %3409, 65535
  %3411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3410)  ; LegacyF16ToF32(value)
  %3412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2849, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.i32 %3412, 0
  %3414 = and i32 %3413, 65535
  %3415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3414)  ; LegacyF16ToF32(value)
  %3416 = lshr i32 %3409, 16
  %3417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3416)  ; LegacyF16ToF32(value)
  %3418 = fsub fast float %3379, %3417
  %3419 = fmul fast float %3418, %3411
  %3420 = fadd fast float %3419, %3415
  %3421 = call float @dx.op.unary.f32(i32 7, float %3420)  ; Saturate(value)
  br label %3422

; <label>:3422                                    ; preds = %3406, %3354
  %3423 = phi float [ %3421, %3406 ], [ %3379, %3354 ]
  %3424 = call float @dx.op.dot2.f32(i32 54, float %3400, float %3401, float %2843, float %2844)  ; Dot2(ax,ay,bx,by)
  %3425 = call float @dx.op.dot2.f32(i32 54, float %3400, float %3401, float %2845, float %2846)  ; Dot2(ax,ay,bx,by)
  br label %3426

; <label>:3426                                    ; preds = %3422, %3332
  %3427 = phi float [ %3423, %3422 ], [ 0x3FD6666660000000, %3332 ]
  %3428 = phi float [ %3424, %3422 ], [ 0.000000e+00, %3332 ]
  %3429 = phi float [ %3425, %3422 ], [ 0.000000e+00, %3332 ]
  %3430 = phi float [ %3366, %3422 ], [ 1.000000e+00, %3332 ]
  %3431 = add i32 %32, 208
  %3432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3431, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.i32 %3432, 0
  %3434 = lshr i32 %3433, 22
  %3435 = shl nuw nsw i32 %3434, 5
  %3436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3435)  ; LegacyF16ToF32(value)
  %3437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3438 = extractvalue %dx.types.ResRet.i32 %3437, 0
  %3439 = and i32 %3438, 64
  %3440 = icmp eq i32 %3439, 0
  br i1 %3440, label %3474, label %3441

; <label>:3441                                    ; preds = %3426
  %3442 = add i32 %32, 420
  %3443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3442, i32 undef)  ; BufferLoad(srv,index,wot)
  %3444 = extractvalue %dx.types.ResRet.i32 %3443, 0
  %3445 = add i32 %3444, 0
  %3446 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3445, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.i32 %3447, 0
  %3449 = and i32 %3448, 131072
  %3450 = icmp eq i32 %3449, 0
  %3451 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3446, %dx.types.Handle %67, float %2939, float %2940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3452 = extractvalue %dx.types.ResRet.f32 %3451, 0
  %3453 = extractvalue %dx.types.ResRet.f32 %3451, 1
  %3454 = extractvalue %dx.types.ResRet.f32 %3451, 2
  %3455 = fmul fast float %3452, %306
  %3456 = fmul fast float %3453, %309
  %3457 = fmul fast float %3454, %312
  br i1 %3450, label %3464, label %3458

; <label>:3458                                    ; preds = %3441
  %3459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3460 = extractvalue %dx.types.CBufRet.f32 %3459, 0
  %3461 = fmul fast float %3460, %3455
  %3462 = fmul fast float %3460, %3456
  %3463 = fmul fast float %3460, %3457
  br label %3464

; <label>:3464                                    ; preds = %3458, %3441
  %3465 = phi float [ %3461, %3458 ], [ %3455, %3441 ]
  %3466 = phi float [ %3462, %3458 ], [ %3456, %3441 ]
  %3467 = phi float [ %3463, %3458 ], [ %3457, %3441 ]
  %3468 = fmul fast float %3465, %3436
  %3469 = select i1 %174, float %3468, float %3465
  %3470 = call float @dx.op.dot3.f32(i32 55, float %3469, float %3466, float %3467, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3471 = select i1 %174, float 0.000000e+00, float %3465
  %3472 = select i1 %174, float %3470, float %3466
  %3473 = select i1 %174, float 0.000000e+00, float %3467
  br label %3474

; <label>:3474                                    ; preds = %3464, %3426
  %3475 = phi float [ %3471, %3464 ], [ 0.000000e+00, %3426 ]
  %3476 = phi float [ %3472, %3464 ], [ 0.000000e+00, %3426 ]
  %3477 = phi float [ %3473, %3464 ], [ 0.000000e+00, %3426 ]
  %3478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3479 = extractvalue %dx.types.ResRet.i32 %3478, 0
  %3480 = and i32 %3479, 10240
  %3481 = icmp eq i32 %3480, 0
  br i1 %3481, label %3526, label %3482

; <label>:3482                                    ; preds = %3474
  %3483 = add i32 %32, 484
  %3484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3483, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.i32 %3484, 0
  %3486 = add i32 %3485, 0
  %3487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3486, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3488 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3487, %dx.types.Handle %68, float %2939, float %2940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3489 = extractvalue %dx.types.ResRet.f32 %3488, 1
  %3490 = extractvalue %dx.types.ResRet.f32 %3488, 3
  %3491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.i32 %3491, 0
  %3493 = and i32 %3492, 1048576
  %3494 = icmp ne i32 %3493, 0
  %3495 = and i32 %3492, 8192
  %3496 = icmp eq i32 %3495, 0
  br i1 %3496, label %3512, label %3497

; <label>:3497                                    ; preds = %3482
  %3498 = extractvalue %dx.types.ResRet.f32 %3488, 2
  %3499 = select i1 %3494, float %3498, float %3489
  %3500 = extractvalue %dx.types.ResRet.f32 %3488, 0
  %3501 = select i1 %3494, float %3500, float %3489
  %3502 = add i32 %32, 144
  %3503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3502, i32 undef)  ; BufferLoad(srv,index,wot)
  %3504 = extractvalue %dx.types.ResRet.i32 %3503, 0
  %3505 = lshr i32 %3504, 16
  %3506 = and i32 %3505, 255
  %3507 = uitofp i32 %3506 to float
  %3508 = fmul fast float %3507, 0x3F80101020000000
  %3509 = fmul fast float %3508, %3501
  %3510 = fmul fast float %3508, %3489
  %3511 = fmul fast float %3508, %3499
  br label %3512

; <label>:3512                                    ; preds = %3497, %3482
  %3513 = phi float [ %3509, %3497 ], [ 0.000000e+00, %3482 ]
  %3514 = phi float [ %3510, %3497 ], [ 0.000000e+00, %3482 ]
  %3515 = phi float [ %3511, %3497 ], [ 0.000000e+00, %3482 ]
  %3516 = and i32 %3492, 2048
  %3517 = icmp eq i32 %3516, 0
  br i1 %3517, label %3526, label %3518

; <label>:3518                                    ; preds = %3512
  %3519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3431, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.i32 %3519, 0
  %3521 = shl i32 %3520, 4
  %3522 = and i32 %3521, 32752
  %3523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3522)  ; LegacyF16ToF32(value)
  %3524 = fmul fast float %3523, %3490
  %3525 = call float @dx.op.binary.f32(i32 35, float %3524, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3526

; <label>:3526                                    ; preds = %3518, %3512, %3474
  %3527 = phi float [ %3513, %3518 ], [ %3513, %3512 ], [ 0.000000e+00, %3474 ]
  %3528 = phi float [ %3514, %3518 ], [ %3514, %3512 ], [ 0.000000e+00, %3474 ]
  %3529 = phi float [ %3515, %3518 ], [ %3515, %3512 ], [ 0.000000e+00, %3474 ]
  %3530 = phi float [ %3525, %3518 ], [ 0x3F70101020000000, %3512 ], [ 0x3F70101020000000, %3474 ]
  %3531 = add i32 %32, 144
  %3532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3531, i32 undef)  ; BufferLoad(srv,index,wot)
  %3533 = extractvalue %dx.types.ResRet.i32 %3532, 0
  %3534 = and i32 %3533, 255
  %3535 = uitofp i32 %3534 to float
  %3536 = lshr i32 %3533, 8
  %3537 = and i32 %3536, 255
  %3538 = uitofp i32 %3537 to float
  %3539 = call float @dx.op.dot3.f32(i32 55, float %3347, float %3348, float %3349, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3540 = fmul fast float %3538, %3539
  %3541 = fadd fast float %3540, %3535
  %3542 = fmul fast float %3541, 0x3F70101020000000
  %3543 = call float @dx.op.unary.f32(i32 7, float %3542)  ; Saturate(value)
  br i1 %2831, label %3544, label %3552

; <label>:3544                                    ; preds = %3526
  %3545 = fsub fast float 1.000000e+00, %3127
  %3546 = fmul fast float %3545, %2816
  %3547 = fmul fast float %3545, %2817
  %3548 = fmul fast float %3545, %2818
  %3549 = fmul fast float %3545, %2819
  %3550 = fmul fast float %3545, %2820
  %3551 = fmul fast float %3545, %2821
  br label %3552

; <label>:3552                                    ; preds = %3544, %3526
  %3553 = phi float [ %3546, %3544 ], [ %2816, %3526 ]
  %3554 = phi float [ %3547, %3544 ], [ %2817, %3526 ]
  %3555 = phi float [ %3548, %3544 ], [ %2818, %3526 ]
  %3556 = phi float [ %3549, %3544 ], [ %2819, %3526 ]
  %3557 = phi float [ %3550, %3544 ], [ %2820, %3526 ]
  %3558 = phi float [ %3551, %3544 ], [ %2821, %3526 ]
  %3559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3560 = extractvalue %dx.types.ResRet.i32 %3559, 0
  %3561 = and i32 %3560, 3
  %3562 = icmp eq i32 %3561, 3
  br i1 %3562, label %3641, label %3563

; <label>:3563                                    ; preds = %3552
  %3564 = and i32 %3560, 16
  %3565 = icmp ne i32 %3564, 0
  %3566 = select i1 %3565, float %3127, float 0.000000e+00
  %3567 = icmp eq i32 %3561, 0
  br i1 %3567, label %3568, label %3596

; <label>:3568                                    ; preds = %3563
  %3569 = and i32 %3560, 64
  %3570 = icmp ne i32 %3569, 0
  %3571 = select i1 %3570, float %3127, float 0.000000e+00
  %3572 = fsub fast float %3347, %3553
  %3573 = fsub fast float %3348, %3554
  %3574 = fsub fast float %3349, %3555
  %3575 = fmul fast float %3566, %3572
  %3576 = fmul fast float %3566, %3573
  %3577 = fmul fast float %3566, %3574
  %3578 = fadd fast float %3575, %3553
  %3579 = fadd fast float %3576, %3554
  %3580 = fadd fast float %3577, %3555
  %3581 = fsub fast float %3333, %2825
  %3582 = fmul fast float %3566, %3581
  %3583 = fadd fast float %3582, %2825
  %3584 = fsub fast float %3475, %3556
  %3585 = fsub fast float %3476, %3557
  %3586 = fsub fast float %3477, %3558
  %3587 = fmul fast float %3571, %3584
  %3588 = fmul fast float %3571, %3585
  %3589 = fmul fast float %3571, %3586
  %3590 = fadd fast float %3587, %3556
  %3591 = fadd fast float %3588, %3557
  %3592 = fadd fast float %3589, %3558
  %3593 = fsub fast float %3543, %2829
  %3594 = fmul fast float %3566, %3593
  %3595 = fadd fast float %3594, %2829
  br label %3641

; <label>:3596                                    ; preds = %3563
  %3597 = icmp eq i32 %3561, 1
  br i1 %3597, label %3598, label %3611

; <label>:3598                                    ; preds = %3596
  %3599 = fadd fast float %3347, -1.000000e+00
  %3600 = fadd fast float %3348, -1.000000e+00
  %3601 = fadd fast float %3349, -1.000000e+00
  %3602 = fmul fast float %3566, %3599
  %3603 = fmul fast float %3566, %3600
  %3604 = fmul fast float %3566, %3601
  %3605 = fadd fast float %3602, 1.000000e+00
  %3606 = fadd fast float %3603, 1.000000e+00
  %3607 = fadd fast float %3604, 1.000000e+00
  %3608 = fmul fast float %3605, %3553
  %3609 = fmul fast float %3606, %3554
  %3610 = fmul fast float %3607, %3555
  br label %3641

; <label>:3611                                    ; preds = %3596
  %3612 = icmp eq i32 %3561, 2
  br i1 %3612, label %3613, label %3641

; <label>:3613                                    ; preds = %3611
  %3614 = call float @dx.op.unary.f32(i32 24, float %3347)  ; Sqrt(value)
  %3615 = call float @dx.op.unary.f32(i32 24, float %3348)  ; Sqrt(value)
  %3616 = call float @dx.op.unary.f32(i32 24, float %3349)  ; Sqrt(value)
  %3617 = fadd fast float %3614, -5.000000e-01
  %3618 = fadd fast float %3615, -5.000000e-01
  %3619 = fadd fast float %3616, -5.000000e-01
  %3620 = fmul fast float %3617, %3566
  %3621 = fmul fast float %3618, %3566
  %3622 = fmul fast float %3619, %3566
  %3623 = fadd fast float %3620, 5.000000e-01
  %3624 = fadd fast float %3621, 5.000000e-01
  %3625 = fadd fast float %3622, 5.000000e-01
  %3626 = fmul fast float %3623, 2.000000e+00
  %3627 = fsub fast float 1.000000e+00, %3626
  %3628 = fmul fast float %3627, %3553
  %3629 = fadd fast float %3628, %3626
  %3630 = fmul fast float %3629, %3553
  %3631 = fmul fast float %3624, 2.000000e+00
  %3632 = fsub fast float 1.000000e+00, %3631
  %3633 = fmul fast float %3632, %3554
  %3634 = fadd fast float %3633, %3631
  %3635 = fmul fast float %3634, %3554
  %3636 = fmul fast float %3625, 2.000000e+00
  %3637 = fsub fast float 1.000000e+00, %3636
  %3638 = fmul fast float %3637, %3555
  %3639 = fadd fast float %3638, %3636
  %3640 = fmul fast float %3639, %3555
  br label %3641

; <label>:3641                                    ; preds = %3613, %3611, %3598, %3568, %3552
  %3642 = phi float [ %3553, %3552 ], [ %3630, %3613 ], [ %3553, %3611 ], [ %3608, %3598 ], [ %3578, %3568 ]
  %3643 = phi float [ %3554, %3552 ], [ %3635, %3613 ], [ %3554, %3611 ], [ %3609, %3598 ], [ %3579, %3568 ]
  %3644 = phi float [ %3555, %3552 ], [ %3640, %3613 ], [ %3555, %3611 ], [ %3610, %3598 ], [ %3580, %3568 ]
  %3645 = phi float [ %3556, %3552 ], [ %3556, %3613 ], [ %3556, %3611 ], [ %3556, %3598 ], [ %3590, %3568 ]
  %3646 = phi float [ %3557, %3552 ], [ %3557, %3613 ], [ %3557, %3611 ], [ %3557, %3598 ], [ %3591, %3568 ]
  %3647 = phi float [ %3558, %3552 ], [ %3558, %3613 ], [ %3558, %3611 ], [ %3558, %3598 ], [ %3592, %3568 ]
  %3648 = phi float [ %2825, %3552 ], [ %2825, %3613 ], [ %2825, %3611 ], [ %2825, %3598 ], [ %3583, %3568 ]
  %3649 = phi float [ %2829, %3552 ], [ %2829, %3613 ], [ %2829, %3611 ], [ %2829, %3598 ], [ %3595, %3568 ]
  %3650 = and i32 %3560, 12
  %3651 = icmp eq i32 %3650, 12
  br i1 %3651, label %3758, label %3652

; <label>:3652                                    ; preds = %3641
  %3653 = and i32 %3560, 2097184
  %3654 = icmp eq i32 %3653, 2097184
  %3655 = select i1 %3654, float %3127, float 0.000000e+00
  %3656 = and i32 %3560, 4194336
  %3657 = icmp eq i32 %3656, 4194336
  %3658 = select i1 %3657, float %3127, float 0.000000e+00
  %3659 = and i32 %3560, 8388640
  %3660 = icmp eq i32 %3659, 8388640
  %3661 = select i1 %3660, float %3127, float 0.000000e+00
  %3662 = and i32 %3560, 2048
  %3663 = icmp ne i32 %3662, 0
  %3664 = select i1 %3663, float %3127, float 0.000000e+00
  %3665 = and i32 %3560, 8192
  %3666 = icmp ne i32 %3665, 0
  %3667 = select i1 %3666, float %3127, float 0.000000e+00
  %3668 = icmp eq i32 %3650, 0
  br i1 %3668, label %3669, label %3694

; <label>:3669                                    ; preds = %3652
  %3670 = fsub fast float %3428, %2814
  %3671 = fsub fast float %3429, %2815
  %3672 = fmul fast float %3655, %3670
  %3673 = fmul fast float %3655, %3671
  %3674 = fadd fast float %3672, %2814
  %3675 = fadd fast float %3673, %2815
  %3676 = fsub fast float %3430, %2827
  %3677 = fmul fast float %3658, %3676
  %3678 = fadd fast float %3677, %2827
  %3679 = fsub fast float %3427, %2826
  %3680 = fmul fast float %3661, %3679
  %3681 = fadd fast float %3680, %2826
  %3682 = fsub fast float %3530, %2828
  %3683 = fmul fast float %3664, %3682
  %3684 = fadd fast float %3683, %2828
  %3685 = fsub fast float %3527, %2822
  %3686 = fsub fast float %3528, %2823
  %3687 = fsub fast float %3529, %2824
  %3688 = fmul fast float %3667, %3685
  %3689 = fmul fast float %3667, %3686
  %3690 = fmul fast float %3667, %3687
  %3691 = fadd fast float %3688, %2822
  %3692 = fadd fast float %3689, %2823
  %3693 = fadd fast float %3690, %2824
  br label %3758

; <label>:3694                                    ; preds = %3652
  %3695 = icmp eq i32 %3650, 4
  br i1 %3695, label %3696, label %3736

; <label>:3696                                    ; preds = %3694
  %3697 = fmul fast float %3655, %3428
  %3698 = fmul fast float %3655, %3429
  %3699 = fadd fast float %3697, %2814
  %3700 = fadd fast float %3698, %2815
  %3701 = call float @dx.op.binary.f32(i32 36, float %2827, float %3430)  ; FMin(a,b)
  %3702 = fsub fast float %3701, %2827
  %3703 = fmul fast float %3702, %3658
  %3704 = fadd fast float %3703, %2827
  %3705 = fadd fast float %3427, %2826
  %3706 = fmul fast float %3705, 0x3FF337FAE0000000
  %3707 = fmul fast float %2826, %2826
  %3708 = fmul fast float %3427, %3427
  %3709 = fadd fast float %3708, %3707
  %3710 = fmul fast float %3709, 0x3FE5152B00000000
  %3711 = fmul fast float %2826, 0xBFCC1F85E0000000
  %3712 = fmul fast float %3711, %3427
  %3713 = fadd fast float %3712, 0xBFE1363700000000
  %3714 = fadd fast float %3713, %3706
  %3715 = fsub fast float %3714, %3710
  %3716 = fmul fast float %3705, 0x3FBA6F0D00000000
  %3717 = fmul fast float %3709, 0x3FD0432880000000
  %3718 = fmul fast float %2826, 0xBFEF110800000000
  %3719 = fmul fast float %3718, %3427
  %3720 = fadd fast float %3719, 1.000000e+00
  %3721 = fsub fast float %3720, %3716
  %3722 = fadd fast float %3721, %3717
  %3723 = fdiv fast float %3715, %3722
  %3724 = call float @dx.op.unary.f32(i32 7, float %3723)  ; Saturate(value)
  %3725 = fsub fast float %3724, %2826
  %3726 = fmul fast float %3725, %3661
  %3727 = fadd fast float %3726, %2826
  %3728 = fmul fast float %3664, %3530
  %3729 = fadd fast float %3728, %2828
  %3730 = fmul fast float %3667, %3527
  %3731 = fmul fast float %3667, %3528
  %3732 = fmul fast float %3667, %3529
  %3733 = fadd fast float %3730, %2822
  %3734 = fadd fast float %3731, %2823
  %3735 = fadd fast float %3732, %2824
  br label %3758

; <label>:3736                                    ; preds = %3694
  %3737 = icmp eq i32 %3650, 8
  br i1 %3737, label %3738, label %3758

; <label>:3738                                    ; preds = %3736
  %3739 = fmul fast float %3655, %3428
  %3740 = fmul fast float %3655, %3429
  %3741 = fadd fast float %3739, %2814
  %3742 = fadd fast float %3740, %2815
  %3743 = call float @dx.op.binary.f32(i32 36, float %2827, float %3430)  ; FMin(a,b)
  %3744 = fsub fast float %3743, %2827
  %3745 = fmul fast float %3744, %3658
  %3746 = fadd fast float %3745, %2827
  %3747 = fsub fast float %3427, %2826
  %3748 = fmul fast float %3661, %3747
  %3749 = fadd fast float %3748, %2826
  %3750 = fmul fast float %3664, %3530
  %3751 = fadd fast float %3750, %2828
  %3752 = fmul fast float %3667, %3527
  %3753 = fmul fast float %3667, %3528
  %3754 = fmul fast float %3667, %3529
  %3755 = fadd fast float %3752, %2822
  %3756 = fadd fast float %3753, %2823
  %3757 = fadd fast float %3754, %2824
  br label %3758

; <label>:3758                                    ; preds = %3738, %3736, %3696, %3669, %3641, %3126, %2830, %2813
  %3759 = phi float [ %2814, %3641 ], [ %2814, %3126 ], [ %2814, %2813 ], [ %2814, %2830 ], [ %3674, %3669 ], [ %3699, %3696 ], [ %2814, %3736 ], [ %3741, %3738 ]
  %3760 = phi float [ %2815, %3641 ], [ %2815, %3126 ], [ %2815, %2813 ], [ %2815, %2830 ], [ %3675, %3669 ], [ %3700, %3696 ], [ %2815, %3736 ], [ %3742, %3738 ]
  %3761 = phi float [ %3642, %3641 ], [ %2816, %3126 ], [ %2816, %2813 ], [ %2816, %2830 ], [ %3642, %3669 ], [ %3642, %3696 ], [ %3642, %3736 ], [ %3642, %3738 ]
  %3762 = phi float [ %3643, %3641 ], [ %2817, %3126 ], [ %2817, %2813 ], [ %2817, %2830 ], [ %3643, %3669 ], [ %3643, %3696 ], [ %3643, %3736 ], [ %3643, %3738 ]
  %3763 = phi float [ %3644, %3641 ], [ %2818, %3126 ], [ %2818, %2813 ], [ %2818, %2830 ], [ %3644, %3669 ], [ %3644, %3696 ], [ %3644, %3736 ], [ %3644, %3738 ]
  %3764 = phi float [ %3645, %3641 ], [ %2819, %3126 ], [ %2819, %2813 ], [ %2819, %2830 ], [ %3645, %3669 ], [ %3645, %3696 ], [ %3645, %3736 ], [ %3645, %3738 ]
  %3765 = phi float [ %3646, %3641 ], [ %2820, %3126 ], [ %2820, %2813 ], [ %2820, %2830 ], [ %3646, %3669 ], [ %3646, %3696 ], [ %3646, %3736 ], [ %3646, %3738 ]
  %3766 = phi float [ %3647, %3641 ], [ %2821, %3126 ], [ %2821, %2813 ], [ %2821, %2830 ], [ %3647, %3669 ], [ %3647, %3696 ], [ %3647, %3736 ], [ %3647, %3738 ]
  %3767 = phi float [ %2822, %3641 ], [ %2822, %3126 ], [ %2822, %2813 ], [ %2822, %2830 ], [ %3691, %3669 ], [ %3733, %3696 ], [ %2822, %3736 ], [ %3755, %3738 ]
  %3768 = phi float [ %2823, %3641 ], [ %2823, %3126 ], [ %2823, %2813 ], [ %2823, %2830 ], [ %3692, %3669 ], [ %3734, %3696 ], [ %2823, %3736 ], [ %3756, %3738 ]
  %3769 = phi float [ %2824, %3641 ], [ %2824, %3126 ], [ %2824, %2813 ], [ %2824, %2830 ], [ %3693, %3669 ], [ %3735, %3696 ], [ %2824, %3736 ], [ %3757, %3738 ]
  %3770 = phi float [ %3648, %3641 ], [ %2825, %3126 ], [ %2825, %2813 ], [ %2825, %2830 ], [ %3648, %3669 ], [ %3648, %3696 ], [ %3648, %3736 ], [ %3648, %3738 ]
  %3771 = phi float [ %2826, %3641 ], [ %2826, %3126 ], [ %2826, %2813 ], [ %2826, %2830 ], [ %3681, %3669 ], [ %3727, %3696 ], [ %2826, %3736 ], [ %3749, %3738 ]
  %3772 = phi float [ %2827, %3641 ], [ %2827, %3126 ], [ %2827, %2813 ], [ %2827, %2830 ], [ %3678, %3669 ], [ %3704, %3696 ], [ %2827, %3736 ], [ %3746, %3738 ]
  %3773 = phi float [ %2828, %3641 ], [ %2828, %3126 ], [ %2828, %2813 ], [ %2828, %2830 ], [ %3684, %3669 ], [ %3729, %3696 ], [ %2828, %3736 ], [ %3751, %3738 ]
  %3774 = phi float [ %3649, %3641 ], [ %2829, %3126 ], [ %2829, %2813 ], [ %2829, %2830 ], [ %3649, %3669 ], [ %3649, %3696 ], [ %3649, %3736 ], [ %3649, %3738 ]
  %3775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3776 = extractvalue %dx.types.CBufRet.f32 %3775, 0
  %3777 = call float @dx.op.dot2.f32(i32 54, float %3759, float %3760, float %3759, float %3760)  ; Dot2(ax,ay,bx,by)
  %3778 = fmul fast float %3777, 0x3FE3333340000000
  %3779 = fsub fast float 1.000000e+00, %3778
  %3780 = call float @dx.op.dot3.f32(i32 55, float %3759, float %3760, float %3779, float %3759, float %3760, float %3779)  ; Dot3(ax,ay,az,bx,by,bz)
  %3781 = call float @dx.op.unary.f32(i32 25, float %3780)  ; Rsqrt(value)
  %3782 = fmul fast float %3781, %3759
  %3783 = fmul fast float %3781, %3760
  %3784 = fmul fast float %3779, %3781
  %3785 = fmul fast float %3784, %80
  %3786 = fmul fast float %3784, %82
  %3787 = fmul fast float %3784, %84
  %3788 = fmul fast float %3782, %52
  %3789 = fmul fast float %3782, %53
  %3790 = fmul fast float %3782, %54
  %3791 = fadd fast float %3785, %3788
  %3792 = fadd fast float %3786, %3789
  %3793 = fadd fast float %3787, %3790
  %3794 = fmul fast float %94, %3783
  %3795 = fmul fast float %95, %3783
  %3796 = fmul fast float %96, %3783
  %3797 = fadd fast float %3791, %3794
  %3798 = fadd fast float %3792, %3795
  %3799 = fadd fast float %3793, %3796
  %3800 = call float @dx.op.dot3.f32(i32 55, float %3797, float %3798, float %3799, float %3797, float %3798, float %3799)  ; Dot3(ax,ay,az,bx,by,bz)
  %3801 = call float @dx.op.unary.f32(i32 25, float %3800)  ; Rsqrt(value)
  %3802 = fmul fast float %3797, %3801
  %3803 = fmul fast float %3798, %3801
  %3804 = fmul fast float %3799, %3801
  %3805 = fadd fast float %3770, 0xBFB99999A0000000
  %3806 = call float @dx.op.unary.f32(i32 7, float %3805)  ; Saturate(value)
  %3807 = fmul fast float %3806, 0x3FF1C71C80000000
  %3808 = call float @dx.op.binary.f32(i32 36, float %3770, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3809 = fsub fast float 1.000000e+00, %3807
  %3810 = call float @dx.op.unary.f32(i32 7, float %3809)  ; Saturate(value)
  %3811 = fmul fast float %3810, %3761
  %3812 = fmul fast float %3810, %3762
  %3813 = fmul fast float %3810, %3763
  %3814 = call float @dx.op.unary.f32(i32 7, float %3811)  ; Saturate(value)
  %3815 = call float @dx.op.unary.f32(i32 7, float %3812)  ; Saturate(value)
  %3816 = call float @dx.op.unary.f32(i32 7, float %3813)  ; Saturate(value)
  %3817 = fmul fast float %3807, %3761
  %3818 = fmul fast float %3807, %3762
  %3819 = fmul fast float %3807, %3763
  %3820 = fadd fast float %3817, %3808
  %3821 = fadd fast float %3818, %3808
  %3822 = fadd fast float %3819, %3808
  %3823 = call float @dx.op.unary.f32(i32 7, float %3820)  ; Saturate(value)
  %3824 = call float @dx.op.unary.f32(i32 7, float %3821)  ; Saturate(value)
  %3825 = call float @dx.op.unary.f32(i32 7, float %3822)  ; Saturate(value)
  %3826 = call float @dx.op.unary.f32(i32 7, float %3771)  ; Saturate(value)
  %3827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %3828 = extractvalue %dx.types.ResRet.i32 %3827, 0
  %3829 = and i32 %3828, 1
  %3830 = icmp eq i32 %3829, 0
  br i1 %3830, label %3845, label %3831

; <label>:3831                                    ; preds = %3758
  %3832 = call float @dx.op.binary.f32(i32 35, float %3815, float %3816)  ; FMax(a,b)
  %3833 = call float @dx.op.binary.f32(i32 35, float %3814, float %3832)  ; FMax(a,b)
  %3834 = fcmp fast ogt float %3833, 0.000000e+00
  %3835 = bitcast float %3833 to i32
  %3836 = sub nsw i32 2129859010, %3835
  %3837 = bitcast i32 %3836 to float
  %3838 = select i1 %3834, float %3837, float 0.000000e+00
  %3839 = fmul fast float %3814, %3767
  %3840 = fmul fast float %3815, %3768
  %3841 = fmul fast float %3816, %3769
  %3842 = fmul fast float %3839, %3838
  %3843 = fmul fast float %3840, %3838
  %3844 = fmul fast float %3841, %3838
  br label %3845

; <label>:3845                                    ; preds = %3831, %3758
  %3846 = phi float [ %3842, %3831 ], [ %3767, %3758 ]
  %3847 = phi float [ %3843, %3831 ], [ %3768, %3758 ]
  %3848 = phi float [ %3844, %3831 ], [ %3769, %3758 ]
  %3849 = fadd fast float %3814, 0xBFD51EB860000000
  %3850 = fadd fast float %3815, 0xBFD51EB860000000
  %3851 = fadd fast float %3816, 0xBFD51EB860000000
  %3852 = fmul fast float %3849, %3849
  %3853 = fmul fast float %3850, %3850
  %3854 = fmul fast float %3851, %3851
  %3855 = fmul fast float %3852, %3852
  %3856 = fmul fast float %3855, 1.000000e+02
  %3857 = fmul fast float %3853, %3853
  %3858 = fmul fast float %3857, 1.000000e+02
  %3859 = fmul fast float %3854, %3854
  %3860 = fmul fast float %3859, 1.000000e+02
  %3861 = fadd fast float %3856, 3.500000e+00
  %3862 = fadd fast float %3858, 3.500000e+00
  %3863 = fadd fast float %3860, 3.500000e+00
  %3864 = call float @dx.op.binary.f32(i32 35, float %3846, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3865 = call float @dx.op.binary.f32(i32 35, float %3847, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3866 = call float @dx.op.binary.f32(i32 35, float %3848, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3867 = fdiv fast float %3861, %3864
  %3868 = fdiv fast float %3862, %3865
  %3869 = fdiv fast float %3863, %3866
  %3870 = fmul fast float %3773, 0xBFF7154760000000
  %3871 = fmul fast float %3870, %3867
  %3872 = call float @dx.op.unary.f32(i32 21, float %3871)  ; Exp(value)
  %3873 = fmul fast float %3872, 2.500000e-01
  %3874 = fmul fast float %3773, 0xBFDEC709E0000000
  %3875 = fmul fast float %3874, %3867
  %3876 = call float @dx.op.unary.f32(i32 21, float %3875)  ; Exp(value)
  %3877 = fmul fast float %3876, 7.500000e-01
  %3878 = fmul fast float %3870, %3868
  %3879 = call float @dx.op.unary.f32(i32 21, float %3878)  ; Exp(value)
  %3880 = fmul fast float %3879, 2.500000e-01
  %3881 = fmul fast float %3874, %3868
  %3882 = call float @dx.op.unary.f32(i32 21, float %3881)  ; Exp(value)
  %3883 = fmul fast float %3882, 7.500000e-01
  %3884 = fmul fast float %3870, %3869
  %3885 = call float @dx.op.unary.f32(i32 21, float %3884)  ; Exp(value)
  %3886 = fmul fast float %3885, 2.500000e-01
  %3887 = fmul fast float %3874, %3869
  %3888 = call float @dx.op.unary.f32(i32 21, float %3887)  ; Exp(value)
  %3889 = fmul fast float %3888, 7.500000e-01
  %3890 = fadd fast float %3873, %3877
  %3891 = fadd fast float %3880, %3883
  %3892 = fadd fast float %3886, %3889
  %3893 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3894 = extractvalue %dx.types.CBufRet.i32 %3893, 3
  %3895 = and i32 %3894, 8
  %3896 = icmp ne i32 %3895, 0
  %3897 = call float @dx.op.binary.f32(i32 35, float %3814, float %3761)  ; FMax(a,b)
  %3898 = call float @dx.op.binary.f32(i32 35, float %3815, float %3761)  ; FMax(a,b)
  %3899 = call float @dx.op.binary.f32(i32 35, float %3816, float %3761)  ; FMax(a,b)
  %3900 = call float @dx.op.dot3.f32(i32 55, float %3814, float %3815, float %3816, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3901 = select i1 %174, float %3761, float %3814
  %3902 = select i1 %174, float %3900, float %3815
  %3903 = select i1 %174, float 1.000000e+00, float %3816
  %3904 = select i1 %3896, float %3897, float %3901
  %3905 = select i1 %3896, float %3898, float %3902
  %3906 = select i1 %3896, float %3899, float %3903
  %3907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3908 = extractvalue %dx.types.CBufRet.f32 %3907, 0
  %3909 = extractvalue %dx.types.CBufRet.f32 %3907, 1
  %3910 = extractvalue %dx.types.CBufRet.f32 %3907, 2
  %3911 = fadd fast float %3908, %130
  %3912 = fadd fast float %3909, %131
  %3913 = fadd fast float %3910, %132
  %3914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3915 = extractvalue %dx.types.CBufRet.f32 %3914, 0
  %3916 = extractvalue %dx.types.CBufRet.f32 %3914, 1
  %3917 = fsub fast float %3911, %3915
  %3918 = fsub fast float %3912, %3916
  %3919 = fmul fast float %3917, %3917
  %3920 = fmul fast float %3918, %3918
  %3921 = fadd fast float %3919, %3920
  %3922 = call float @dx.op.unary.f32(i32 24, float %3921)  ; Sqrt(value)
  %3923 = extractvalue %dx.types.CBufRet.f32 %3914, 2
  %3924 = fcmp fast olt float %3922, %3923
  br i1 %3924, label %3925, label %3992

; <label>:3925                                    ; preds = %3845
  %3926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3927 = extractvalue %dx.types.CBufRet.f32 %3926, 0
  %3928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3929 = extractvalue %dx.types.CBufRet.f32 %3928, 0
  %3930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3931 = extractvalue %dx.types.CBufRet.f32 %3930, 0
  %3932 = extractvalue %dx.types.CBufRet.f32 %3926, 1
  %3933 = extractvalue %dx.types.CBufRet.f32 %3928, 1
  %3934 = extractvalue %dx.types.CBufRet.f32 %3930, 1
  %3935 = extractvalue %dx.types.CBufRet.f32 %3926, 3
  %3936 = extractvalue %dx.types.CBufRet.f32 %3928, 3
  %3937 = extractvalue %dx.types.CBufRet.f32 %3930, 3
  %3938 = fadd fast float %3935, %3911
  %3939 = fadd fast float %3936, %3912
  %3940 = fadd fast float %3937, %3913
  %3941 = fmul fast float %3938, %3927
  %3942 = call float @dx.op.tertiary.f32(i32 46, float %3939, float %3929, float %3941)  ; FMad(a,b,c)
  %3943 = call float @dx.op.tertiary.f32(i32 46, float %3940, float %3931, float %3942)  ; FMad(a,b,c)
  %3944 = fmul fast float %3938, %3932
  %3945 = call float @dx.op.tertiary.f32(i32 46, float %3939, float %3933, float %3944)  ; FMad(a,b,c)
  %3946 = call float @dx.op.tertiary.f32(i32 46, float %3940, float %3934, float %3945)  ; FMad(a,b,c)
  %3947 = fsub fast float %3943, %3935
  %3948 = fsub fast float %3946, %3936
  %3949 = fsub fast float %3947, %3915
  %3950 = fadd fast float %3949, %3923
  %3951 = fsub fast float %3948, %3916
  %3952 = fadd fast float %3951, %3923
  %3953 = extractvalue %dx.types.CBufRet.f32 %3914, 3
  %3954 = fmul fast float %3950, %3953
  %3955 = fmul fast float %3952, %3953
  %3956 = call float @dx.op.unary.f32(i32 7, float %3954)  ; Saturate(value)
  %3957 = call float @dx.op.unary.f32(i32 7, float %3955)  ; Saturate(value)
  %3958 = fsub fast float 1.000000e+00, %3956
  %3959 = fsub fast float 1.000000e+00, %3957
  %3960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %3958, float %3959, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3961 = extractvalue %dx.types.ResRet.f32 %3960, 0
  %3962 = fcmp fast ugt float %3961, 0.000000e+00
  br i1 %3962, label %3963, label %4266

; <label>:3963                                    ; preds = %3925
  %3964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3965 = extractvalue %dx.types.CBufRet.f32 %3964, 2
  %3966 = fmul fast float %3965, %3961
  %3967 = extractvalue %dx.types.CBufRet.f32 %3964, 3
  %3968 = fadd fast float %3967, %3966
  %3969 = extractvalue %dx.types.CBufRet.f32 %3930, 2
  %3970 = fadd fast float %3968, %3937
  %3971 = fmul fast float %3943, %3931
  %3972 = call float @dx.op.tertiary.f32(i32 46, float %3946, float %3934, float %3971)  ; FMad(a,b,c)
  %3973 = call float @dx.op.tertiary.f32(i32 46, float %3970, float %3969, float %3972)  ; FMad(a,b,c)
  %3974 = fsub fast float %3973, %3937
  %3975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3976 = extractvalue %dx.types.CBufRet.f32 %3975, 2
  %3977 = fsub fast float %3974, %3976
  %3978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %26, float %3958, float %3959, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3979 = extractvalue %dx.types.ResRet.f32 %3978, 0
  %3980 = extractvalue %dx.types.ResRet.f32 %3978, 1
  %3981 = extractvalue %dx.types.ResRet.f32 %3978, 2
  %3982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %26, float %3958, float %3959, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3983 = extractvalue %dx.types.ResRet.f32 %3982, 0
  %3984 = extractvalue %dx.types.ResRet.f32 %3982, 1
  %3985 = extractvalue %dx.types.ResRet.f32 %3982, 2
  %3986 = fadd fast float %3983, %3979
  %3987 = fmul fast float %3986, 0x3F847AE140000000
  %3988 = fadd fast float %3984, %3980
  %3989 = fmul fast float %3988, 0x3F847AE140000000
  %3990 = fadd fast float %3985, %3981
  %3991 = fmul fast float %3990, 0x3F847AE140000000
  br label %4266

; <label>:3992                                    ; preds = %3845
  %3993 = and i32 %148, 1
  %3994 = icmp eq i32 %3993, 0
  br i1 %3994, label %4266, label %3995

; <label>:3995                                    ; preds = %3992
  %3996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3997 = extractvalue %dx.types.CBufRet.f32 %3996, 0
  %3998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3999 = extractvalue %dx.types.CBufRet.f32 %3998, 0
  %4000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4001 = extractvalue %dx.types.CBufRet.f32 %4000, 0
  %4002 = extractvalue %dx.types.CBufRet.f32 %3996, 1
  %4003 = extractvalue %dx.types.CBufRet.f32 %3998, 1
  %4004 = extractvalue %dx.types.CBufRet.f32 %4000, 1
  %4005 = extractvalue %dx.types.CBufRet.f32 %3996, 3
  %4006 = extractvalue %dx.types.CBufRet.f32 %3998, 3
  %4007 = extractvalue %dx.types.CBufRet.f32 %4000, 3
  %4008 = fadd fast float %4005, %3911
  %4009 = fadd fast float %4006, %3912
  %4010 = fadd fast float %4007, %3913
  %4011 = fmul fast float %4008, %3997
  %4012 = call float @dx.op.tertiary.f32(i32 46, float %4009, float %3999, float %4011)  ; FMad(a,b,c)
  %4013 = call float @dx.op.tertiary.f32(i32 46, float %4010, float %4001, float %4012)  ; FMad(a,b,c)
  %4014 = fmul fast float %4008, %4002
  %4015 = call float @dx.op.tertiary.f32(i32 46, float %4009, float %4003, float %4014)  ; FMad(a,b,c)
  %4016 = call float @dx.op.tertiary.f32(i32 46, float %4010, float %4004, float %4015)  ; FMad(a,b,c)
  %4017 = fsub fast float %4013, %4005
  %4018 = fsub fast float %4016, %4006
  %4019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4020 = extractvalue %dx.types.CBufRet.f32 %4019, 0
  %4021 = extractvalue %dx.types.CBufRet.f32 %4019, 1
  %4022 = extractvalue %dx.types.CBufRet.f32 %4019, 2
  %4023 = extractvalue %dx.types.CBufRet.f32 %4019, 3
  %4024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4025 = extractvalue %dx.types.CBufRet.f32 %4024, 3
  %4026 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4027 = extractvalue %dx.types.CBufRet.i32 %4026, 0
  %4028 = extractvalue %dx.types.CBufRet.i32 %4026, 1
  %4029 = udiv i32 %4028, %4027
  %4030 = fsub fast float %4017, %4020
  %4031 = fsub fast float %4018, %4021
  %4032 = call float @dx.op.binary.f32(i32 35, float %4030, float 0.000000e+00)  ; FMax(a,b)
  %4033 = call float @dx.op.binary.f32(i32 35, float %4031, float 0.000000e+00)  ; FMax(a,b)
  %4034 = call float @dx.op.binary.f32(i32 36, float %4032, float %4022)  ; FMin(a,b)
  %4035 = call float @dx.op.binary.f32(i32 36, float %4033, float %4023)  ; FMin(a,b)
  %4036 = add i32 %4027, -1
  %4037 = add i32 %4029, -1
  %4038 = fmul fast float %4034, %4025
  %4039 = fmul fast float %4035, %4025
  %4040 = fptoui float %4038 to i32
  %4041 = fptoui float %4039 to i32
  %4042 = call i32 @dx.op.binary.i32(i32 40, i32 %4040, i32 %4036)  ; UMin(a,b)
  %4043 = call i32 @dx.op.binary.i32(i32 40, i32 %4041, i32 %4037)  ; UMin(a,b)
  %4044 = mul i32 %4043, %4027
  %4045 = add i32 %4044, %4042
  %4046 = shl i32 %4045, 2
  %4047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4046, i32 undef)  ; BufferLoad(srv,index,wot)
  %4048 = extractvalue %dx.types.ResRet.i32 %4047, 0
  %4049 = icmp eq i32 %4048, -1
  br i1 %4049, label %4266, label %4050

; <label>:4050                                    ; preds = %3995
  %4051 = mul i32 %4048, 148
  %4052 = add i32 %4051, 4
  %4053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4052, i32 undef)  ; BufferLoad(srv,index,wot)
  %4054 = extractvalue %dx.types.ResRet.f32 %4053, 0
  %4055 = add i32 %4051, 8
  %4056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4055, i32 undef)  ; BufferLoad(srv,index,wot)
  %4057 = extractvalue %dx.types.ResRet.f32 %4056, 0
  %4058 = add i32 %4051, 36
  %4059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4058, i32 undef)  ; BufferLoad(srv,index,wot)
  %4060 = extractvalue %dx.types.ResRet.f32 %4059, 0
  %4061 = add i32 %4051, 60
  %4062 = add i32 %4051, 92
  %4063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4062, i32 undef)  ; BufferLoad(srv,index,wot)
  %4064 = extractvalue %dx.types.ResRet.i32 %4063, 0
  %4065 = add i32 %4051, 116
  %4066 = fsub fast float %4017, %4054
  %4067 = fsub fast float %4018, %4057
  %4068 = fmul fast float %4025, %4066
  %4069 = fmul fast float %4025, %4067
  %4070 = call float @dx.op.unary.f32(i32 7, float %4068)  ; Saturate(value)
  %4071 = call float @dx.op.unary.f32(i32 7, float %4069)  ; Saturate(value)
  %4072 = fsub fast float 1.000000e+00, %4071
  %4073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4074 = extractvalue %dx.types.CBufRet.f32 %4073, 2
  %4075 = call float @dx.op.unary.f32(i32 83, float %4070)  ; DerivCoarseX(value)
  %4076 = call float @dx.op.unary.f32(i32 83, float %4072)  ; DerivCoarseX(value)
  %4077 = call float @dx.op.unary.f32(i32 84, float %4070)  ; DerivCoarseY(value)
  %4078 = call float @dx.op.unary.f32(i32 84, float %4072)  ; DerivCoarseY(value)
  %4079 = fmul fast float %4075, %4074
  %4080 = fmul fast float %4076, %4074
  %4081 = fmul fast float %4077, %4074
  %4082 = fmul fast float %4078, %4074
  %4083 = call float @dx.op.dot2.f32(i32 54, float %4081, float %4082, float %4081, float %4082)  ; Dot2(ax,ay,bx,by)
  %4084 = call float @dx.op.dot2.f32(i32 54, float %4079, float %4080, float %4079, float %4080)  ; Dot2(ax,ay,bx,by)
  %4085 = call float @dx.op.binary.f32(i32 35, float %4084, float %4083)  ; FMax(a,b)
  %4086 = call float @dx.op.unary.f32(i32 23, float %4085)  ; Log(value)
  %4087 = fmul fast float %4086, 5.000000e-01
  %4088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4089 = extractvalue %dx.types.CBufRet.f32 %4088, 1
  %4090 = fadd fast float %4089, %4087
  %4091 = call float @dx.op.binary.f32(i32 35, float %4090, float 0.000000e+00)  ; FMax(a,b)
  %4092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4093 = extractvalue %dx.types.CBufRet.f32 %4092, 3
  %4094 = fadd fast float %4093, %4091
  %4095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4096 = extractvalue %dx.types.CBufRet.f32 %4095, 3
  %4097 = fadd fast float %4094, %4096
  %4098 = add i32 %4064, 0
  %4099 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4098, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4100 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4099, i32 0)  ; GetDimensions(handle,mipLevel)
  %4101 = extractvalue %dx.types.Dimensions %4100, 0
  %4102 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4101)  ; FirstbitLo(value)
  %4103 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4104 = extractvalue %dx.types.CBufRet.i32 %4103, 1
  %4105 = sub nsw i32 %4104, %4102
  %4106 = sitofp i32 %4105 to float
  %4107 = fsub fast float %4097, %4106
  %4108 = call float @dx.op.binary.f32(i32 35, float %4107, float 0.000000e+00)  ; FMax(a,b)
  %4109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4099, %dx.types.Handle %24, float %4070, float %4072, float %4060, float undef, i32 0, i32 0, i32 undef, float %4108)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4110 = extractvalue %dx.types.ResRet.f32 %4109, 0
  %4111 = fcmp ule float %4110, 0x3FE0101020000000
  %4112 = extractvalue %dx.types.CBufRet.i32 %4103, 0
  %4113 = and i32 %4112, 128
  %4114 = icmp ne i32 %4113, 0
  %4115 = and i1 %4111, %4114
  br i1 %4115, label %4266, label %4116

; <label>:4116                                    ; preds = %4050
  %4117 = add i32 %4051, 20
  %4118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4117, i32 undef)  ; BufferLoad(srv,index,wot)
  %4119 = extractvalue %dx.types.ResRet.f32 %4118, 0
  %4120 = add i32 %4051, 24
  %4121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4120, i32 undef)  ; BufferLoad(srv,index,wot)
  %4122 = extractvalue %dx.types.ResRet.f32 %4121, 0
  %4123 = add i32 %4051, 40
  %4124 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4123, i32 undef)  ; BufferLoad(srv,index,wot)
  %4125 = extractvalue %dx.types.ResRet.f32 %4124, 0
  %4126 = add i32 %4051, 96
  %4127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4126, i32 undef)  ; BufferLoad(srv,index,wot)
  %4128 = extractvalue %dx.types.ResRet.i32 %4127, 0
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 2
  %4131 = fmul fast float %4130, %4070
  %4132 = fmul fast float %4130, %4072
  %4133 = extractvalue %dx.types.CBufRet.f32 %4129, 3
  %4134 = fadd fast float %4131, %4133
  %4135 = fadd fast float %4132, %4133
  %4136 = add i32 %4128, 0
  %4137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4136, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4138 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4137, i32 0)  ; GetDimensions(handle,mipLevel)
  %4139 = extractvalue %dx.types.Dimensions %4138, 0
  %4140 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4139)  ; FirstbitLo(value)
  %4141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4142 = extractvalue %dx.types.CBufRet.i32 %4141, 1
  %4143 = sub nsw i32 %4142, %4140
  %4144 = sitofp i32 %4143 to float
  %4145 = fsub fast float %4094, %4144
  %4146 = call float @dx.op.binary.f32(i32 35, float %4145, float 0.000000e+00)  ; FMax(a,b)
  %4147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4137, %dx.types.Handle %24, float %4134, float %4135, float %4125, float undef, i32 0, i32 0, i32 undef, float %4146)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4148 = extractvalue %dx.types.ResRet.f32 %4147, 0
  %4149 = fmul fast float %4148, %4119
  %4150 = fadd fast float %4149, %4122
  %4151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4152 = extractvalue %dx.types.CBufRet.f32 %4151, 0
  %4153 = extractvalue %dx.types.CBufRet.f32 %4151, 1
  %4154 = extractvalue %dx.types.CBufRet.f32 %4151, 2
  %4155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.f32 %4155, 3
  %4157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.f32 %4157, 3
  %4159 = extractvalue %dx.types.CBufRet.f32 %4151, 3
  %4160 = fadd fast float %4156, %4017
  %4161 = fadd fast float %4158, %4018
  %4162 = fadd fast float %4150, %4159
  %4163 = fmul fast float %4160, %4152
  %4164 = call float @dx.op.tertiary.f32(i32 46, float %4161, float %4153, float %4163)  ; FMad(a,b,c)
  %4165 = call float @dx.op.tertiary.f32(i32 46, float %4162, float %4154, float %4164)  ; FMad(a,b,c)
  %4166 = fsub fast float %4165, %4159
  %4167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4168 = extractvalue %dx.types.CBufRet.f32 %4167, 2
  %4169 = fsub fast float %4166, %4168
  %4170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4171 = extractvalue %dx.types.CBufRet.i32 %4170, 0
  %4172 = call i32 @dx.op.binary.i32(i32 40, i32 %4048, i32 %4171)  ; UMin(a,b)
  %4173 = mul i32 %4172, 36
  %4174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4173, i32 undef)  ; BufferLoad(srv,index,wot)
  %4175 = extractvalue %dx.types.ResRet.i32 %4174, 0
  %4176 = add i32 %4173, 4
  %4177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4178 = extractvalue %dx.types.CBufRet.f32 %4177, 0
  %4179 = fmul fast float %4178, %4070
  %4180 = fmul fast float %4178, %4072
  %4181 = extractvalue %dx.types.CBufRet.f32 %4177, 1
  %4182 = fadd fast float %4179, %4181
  %4183 = fadd fast float %4180, %4181
  %4184 = icmp eq i32 %4175, 0
  br i1 %4184, label %4253, label %4185

; <label>:4185                                    ; preds = %4116
  br label %4186

; <label>:4186                                    ; preds = %4243, %4185
  %4187 = phi float [ %4244, %4243 ], [ 0.000000e+00, %4185 ]
  %4188 = phi float [ %4245, %4243 ], [ 0.000000e+00, %4185 ]
  %4189 = phi float [ %4246, %4243 ], [ 0.000000e+00, %4185 ]
  %4190 = phi float [ %4247, %4243 ], [ 0.000000e+00, %4185 ]
  %4191 = phi float [ %4248, %4243 ], [ 0.000000e+00, %4185 ]
  %4192 = phi float [ %4249, %4243 ], [ 0.000000e+00, %4185 ]
  %4193 = phi i32 [ %4250, %4243 ], [ 0, %4185 ]
  %4194 = shl i32 %4193, 2
  %4195 = add i32 %4061, %4194
  %4196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4195, i32 undef)  ; BufferLoad(srv,index,wot)
  %4197 = extractvalue %dx.types.ResRet.f32 %4196, 0
  %4198 = add i32 %4065, %4194
  %4199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4198, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.i32 %4199, 0
  %4201 = add i32 %4200, 0
  %4202 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4201, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4203 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4202, i32 0)  ; GetDimensions(handle,mipLevel)
  %4204 = extractvalue %dx.types.Dimensions %4203, 0
  %4205 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4204)  ; FirstbitLo(value)
  %4206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4207 = extractvalue %dx.types.CBufRet.i32 %4206, 1
  %4208 = sub nsw i32 %4207, %4205
  %4209 = sitofp i32 %4208 to float
  %4210 = fsub fast float %4094, %4209
  %4211 = call float @dx.op.binary.f32(i32 35, float %4210, float 0.000000e+00)  ; FMax(a,b)
  %4212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4202, %dx.types.Handle %24, float %4182, float %4183, float %4197, float undef, i32 0, i32 0, i32 undef, float %4211)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4213 = extractvalue %dx.types.ResRet.f32 %4212, 0
  %4214 = fcmp fast ogt float %4213, 0.000000e+00
  br i1 %4214, label %4215, label %4243

; <label>:4215                                    ; preds = %4186
  %4216 = add i32 %4176, %4194
  %4217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4216, i32 undef)  ; BufferLoad(srv,index,wot)
  %4218 = extractvalue %dx.types.ResRet.i32 %4217, 0
  %4219 = and i32 %4218, 32767
  %4220 = mul nuw nsw i32 %4219, 928
  %4221 = add nuw nsw i32 %4220, 48
  %4222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4221, i32 undef)  ; BufferLoad(srv,index,wot)
  %4223 = extractvalue %dx.types.ResRet.f32 %4222, 0
  %4224 = extractvalue %dx.types.ResRet.f32 %4222, 1
  %4225 = extractvalue %dx.types.ResRet.f32 %4222, 2
  %4226 = add nuw nsw i32 %4220, 60
  %4227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4226, i32 undef)  ; BufferLoad(srv,index,wot)
  %4228 = extractvalue %dx.types.ResRet.f32 %4227, 0
  %4229 = extractvalue %dx.types.ResRet.f32 %4227, 1
  %4230 = extractvalue %dx.types.ResRet.f32 %4227, 2
  %4231 = fmul fast float %4223, %4213
  %4232 = fmul fast float %4224, %4213
  %4233 = fmul fast float %4225, %4213
  %4234 = fadd fast float %4231, %4187
  %4235 = fadd fast float %4232, %4188
  %4236 = fadd fast float %4233, %4189
  %4237 = fmul fast float %4228, %4213
  %4238 = fmul fast float %4229, %4213
  %4239 = fmul fast float %4230, %4213
  %4240 = fadd fast float %4237, %4190
  %4241 = fadd fast float %4238, %4191
  %4242 = fadd fast float %4239, %4192
  br label %4243

; <label>:4243                                    ; preds = %4215, %4186
  %4244 = phi float [ %4234, %4215 ], [ %4187, %4186 ]
  %4245 = phi float [ %4235, %4215 ], [ %4188, %4186 ]
  %4246 = phi float [ %4236, %4215 ], [ %4189, %4186 ]
  %4247 = phi float [ %4240, %4215 ], [ %4190, %4186 ]
  %4248 = phi float [ %4241, %4215 ], [ %4191, %4186 ]
  %4249 = phi float [ %4242, %4215 ], [ %4192, %4186 ]
  %4250 = add nuw i32 %4193, 1
  %4251 = icmp eq i32 %4250, %4175
  br i1 %4251, label %4252, label %4186

; <label>:4252                                    ; preds = %4243
  br label %4253

; <label>:4253                                    ; preds = %4252, %4116
  %4254 = phi float [ 0.000000e+00, %4116 ], [ %4244, %4252 ]
  %4255 = phi float [ 0.000000e+00, %4116 ], [ %4245, %4252 ]
  %4256 = phi float [ 0.000000e+00, %4116 ], [ %4246, %4252 ]
  %4257 = phi float [ 0.000000e+00, %4116 ], [ %4247, %4252 ]
  %4258 = phi float [ 0.000000e+00, %4116 ], [ %4248, %4252 ]
  %4259 = phi float [ 0.000000e+00, %4116 ], [ %4249, %4252 ]
  %4260 = fadd fast float %4257, %4254
  %4261 = fmul fast float %4260, 0x3F847AE140000000
  %4262 = fadd fast float %4258, %4255
  %4263 = fmul fast float %4262, 0x3F847AE140000000
  %4264 = fadd fast float %4259, %4256
  %4265 = fmul fast float %4264, 0x3F847AE140000000
  br label %4266

; <label>:4266                                    ; preds = %4253, %4050, %3995, %3992, %3963, %3925
  %4267 = phi float [ %3977, %3963 ], [ -1.310720e+05, %3925 ], [ %4169, %4253 ], [ -1.310720e+05, %3995 ], [ -1.310720e+05, %4050 ], [ -1.310720e+05, %3992 ]
  %4268 = phi float [ %3987, %3963 ], [ 0.000000e+00, %3925 ], [ %4261, %4253 ], [ 0.000000e+00, %3995 ], [ 0.000000e+00, %4050 ], [ 0.000000e+00, %3992 ]
  %4269 = phi float [ %3989, %3963 ], [ 0.000000e+00, %3925 ], [ %4263, %4253 ], [ 0.000000e+00, %3995 ], [ 0.000000e+00, %4050 ], [ 0.000000e+00, %3992 ]
  %4270 = phi float [ %3991, %3963 ], [ 0.000000e+00, %3925 ], [ %4265, %4253 ], [ 0.000000e+00, %3995 ], [ 0.000000e+00, %4050 ], [ 0.000000e+00, %3992 ]
  %4271 = phi i1 [ true, %3963 ], [ false, %3925 ], [ true, %4253 ], [ false, %3995 ], [ false, %4050 ], [ false, %3992 ]
  %4272 = and i32 %148, 3
  %4273 = icmp eq i32 %4272, 1
  %4274 = select i1 %4273, float 1.000000e+00, float 0.000000e+00
  %4275 = fsub fast float %4267, %132
  %4276 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4277 = select i1 %4271, float %4276, float 1.000000e+00
  %4278 = fmul fast float %4277, %4274
  %4279 = icmp eq i32 %4272, 3
  %4280 = select i1 %4279, float 1.000000e+00, float %4278
  %4281 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4280)  ; FMax(a,b)
  %4282 = call float @dx.op.unary.f32(i32 7, float %4281)  ; Saturate(value)
  %4283 = fcmp fast une float %4282, 0.000000e+00
  %4284 = call float @dx.op.dot3.f32(i32 55, float %130, float %131, float %132, float %130, float %131, float %132)  ; Dot3(ax,ay,az,bx,by,bz)
  %4285 = call float @dx.op.unary.f32(i32 25, float %4284)  ; Rsqrt(value)
  br i1 %4283, label %4293, label %4286

; <label>:4286                                    ; preds = %4266
  %4287 = fmul fast float %4285, %130
  %4288 = fmul fast float %4285, %131
  %4289 = fmul fast float %4285, %132
  %4290 = fsub fast float -0.000000e+00, %4287
  %4291 = fsub fast float -0.000000e+00, %4288
  %4292 = fsub fast float -0.000000e+00, %4289
  br label %4461

; <label>:4293                                    ; preds = %4266
  %4294 = fmul fast float %130, %4285
  %4295 = fsub fast float -0.000000e+00, %4294
  %4296 = fmul fast float %131, %4285
  %4297 = fsub fast float -0.000000e+00, %4296
  %4298 = fmul fast float %132, %4285
  %4299 = fsub fast float -0.000000e+00, %4298
  %4300 = call float @dx.op.dot3.f32(i32 55, float %4295, float %4297, float %4299, float %80, float %82, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %4301 = fmul fast float %4282, 2.500000e+00
  %4302 = call float @dx.op.unary.f32(i32 7, float %4301)  ; Saturate(value)
  %4303 = fmul fast float %4282, 0x4013FFFFE0000000
  %4304 = fadd fast float %4303, 0xBFFFFFFFE0000000
  %4305 = call float @dx.op.unary.f32(i32 7, float %4304)  ; Saturate(value)
  %4306 = fmul fast float %4282, 0x4004000020000000
  %4307 = fadd fast float %4306, 0xBFF8000040000000
  %4308 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  %4309 = call float @dx.op.unary.f32(i32 7, float %4302)  ; Saturate(value)
  %4310 = fmul fast float %3805, 1.000000e+01
  %4311 = call float @dx.op.unary.f32(i32 7, float %4310)  ; Saturate(value)
  %4312 = fmul fast float %4311, 2.000000e+00
  %4313 = fsub fast float 3.000000e+00, %4312
  %4314 = fmul fast float %4311, %4311
  %4315 = fmul fast float %4314, %4313
  %4316 = fsub fast float 1.000000e+00, %4315
  %4317 = fsub fast float 0x3FE3333340000000, %3826
  %4318 = fmul fast float %4317, 0x400AAAAAA0000000
  %4319 = call float @dx.op.unary.f32(i32 7, float %4318)  ; Saturate(value)
  %4320 = fmul fast float %4316, %4319
  %4321 = fmul fast float %3904, 0x3FEA2B8620000000
  %4322 = fmul fast float %3905, 0x3FEA2B8620000000
  %4323 = fmul fast float %3906, 0x3FEA2B8620000000
  %4324 = fadd fast float %4321, 0x3FC81DFBA0000000
  %4325 = fmul fast float %4324, %3904
  %4326 = fadd fast float %4325, 0x3F910E6020000000
  %4327 = fadd fast float %4322, 0x3FC81DFBA0000000
  %4328 = fmul fast float %4327, %3905
  %4329 = fadd fast float %4328, 0x3F910E6020000000
  %4330 = fadd fast float %4323, 0x3FC81DFBA0000000
  %4331 = fmul fast float %4330, %3906
  %4332 = fadd fast float %4331, 0x3F910E6020000000
  %4333 = call float @dx.op.unary.f32(i32 7, float %4326)  ; Saturate(value)
  %4334 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4335 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4336 = fsub fast float %4333, %3904
  %4337 = fsub fast float %4334, %3905
  %4338 = fsub fast float %4335, %3906
  %4339 = fmul fast float %4336, %4309
  %4340 = fmul fast float %4339, %4320
  %4341 = fmul fast float %4337, %4309
  %4342 = fmul fast float %4341, %4320
  %4343 = fmul fast float %4338, %4309
  %4344 = fmul fast float %4343, %4320
  %4345 = fadd fast float %4340, %3904
  %4346 = fadd fast float %4342, %3905
  %4347 = fadd fast float %4344, %3906
  %4348 = fmul fast float %3772, %3772
  %4349 = fmul fast float %4348, %4348
  %4350 = fadd fast float %4305, 1.000000e+00
  %4351 = fsub fast float %4350, %4320
  %4352 = call float @dx.op.unary.f32(i32 7, float %4351)  ; Saturate(value)
  %4353 = call float @dx.op.dot3.f32(i32 55, float %80, float %82, float %84, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4354 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4355 = fsub fast float 1.000000e+00, %4349
  %4356 = call float @dx.op.binary.f32(i32 36, float %4352, float %4355)  ; FMin(a,b)
  %4357 = call float @dx.op.unary.f32(i32 7, float %4308)  ; Saturate(value)
  %4358 = call float @dx.op.binary.f32(i32 35, float %4356, float %4357)  ; FMax(a,b)
  %4359 = fadd fast float %4354, 0xBFE4CCCCC0000000
  %4360 = fmul fast float %4359, 0x4006DB6DA0000000
  %4361 = call float @dx.op.unary.f32(i32 7, float %4360)  ; Saturate(value)
  %4362 = fmul fast float %4361, 2.000000e+00
  %4363 = fsub fast float 3.000000e+00, %4362
  %4364 = bitcast float %3823 to i32
  %4365 = ashr i32 %4364, 1
  %4366 = add nsw i32 %4365, 532487669
  %4367 = bitcast i32 %4366 to float
  %4368 = fsub fast float 1.000000e+00, %4367
  %4369 = bitcast float %4368 to i32
  %4370 = sub nsw i32 2129859010, %4369
  %4371 = bitcast i32 %4370 to float
  %4372 = fmul fast float %4371, 2.000000e+00
  %4373 = bitcast float %3824 to i32
  %4374 = ashr i32 %4373, 1
  %4375 = add nsw i32 %4374, 532487669
  %4376 = bitcast i32 %4375 to float
  %4377 = fsub fast float 1.000000e+00, %4376
  %4378 = bitcast float %4377 to i32
  %4379 = sub nsw i32 2129859010, %4378
  %4380 = bitcast i32 %4379 to float
  %4381 = fmul fast float %4380, 2.000000e+00
  %4382 = bitcast float %3825 to i32
  %4383 = ashr i32 %4382, 1
  %4384 = add nsw i32 %4383, 532487669
  %4385 = bitcast i32 %4384 to float
  %4386 = fsub fast float 1.000000e+00, %4385
  %4387 = bitcast float %4386 to i32
  %4388 = sub nsw i32 2129859010, %4387
  %4389 = bitcast i32 %4388 to float
  %4390 = fmul fast float %4389, 2.000000e+00
  %4391 = fsub fast float 0x4002A9FBE0000000, %4372
  %4392 = fadd fast float %4372, 0x3FD54FDF00000000
  %4393 = bitcast float %4392 to i32
  %4394 = sub nsw i32 2129859010, %4393
  %4395 = bitcast i32 %4394 to float
  %4396 = fmul fast float %4395, %4391
  %4397 = fmul fast float %4396, %4396
  %4398 = fsub fast float 0x4002A9FBE0000000, %4381
  %4399 = fadd fast float %4381, 0x3FD54FDF00000000
  %4400 = bitcast float %4399 to i32
  %4401 = sub nsw i32 2129859010, %4400
  %4402 = bitcast i32 %4401 to float
  %4403 = fmul fast float %4402, %4398
  %4404 = fmul fast float %4403, %4403
  %4405 = fsub fast float 0x4002A9FBE0000000, %4390
  %4406 = fadd fast float %4390, 0x3FD54FDF00000000
  %4407 = bitcast float %4406 to i32
  %4408 = sub nsw i32 2129859010, %4407
  %4409 = bitcast i32 %4408 to float
  %4410 = fmul fast float %4409, %4405
  %4411 = fmul fast float %4410, %4410
  %4412 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4397)  ; FMax(a,b)
  %4413 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4404)  ; FMax(a,b)
  %4414 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4411)  ; FMax(a,b)
  %4415 = fsub fast float 1.000000e+00, %4300
  %4416 = fadd fast float %4415, %4316
  %4417 = call float @dx.op.unary.f32(i32 7, float %4416)  ; Saturate(value)
  %4418 = fsub fast float 1.000000e+00, %4280
  %4419 = fmul fast float %4358, %4418
  %4420 = fmul fast float %4361, %4361
  %4421 = fmul fast float %4420, %4419
  %4422 = fmul fast float %4421, %4363
  %4423 = fmul fast float %4418, 0xBFE99999A0000000
  %4424 = fmul fast float %4423, %4309
  %4425 = fmul fast float %4424, %4320
  %4426 = fadd fast float %4425, 1.000000e+00
  %4427 = fadd fast float %3826, -1.000000e+00
  %4428 = fmul fast float %4426, %4427
  %4429 = fadd fast float %4428, 1.000000e+00
  %4430 = fsub fast float %4412, %3823
  %4431 = fsub fast float %4413, %3824
  %4432 = fsub fast float %4414, %3825
  %4433 = fmul fast float %4422, %4430
  %4434 = fmul fast float %4422, %4431
  %4435 = fmul fast float %4422, %4432
  %4436 = fadd fast float %4433, %3823
  %4437 = fadd fast float %4434, %3824
  %4438 = fadd fast float %4435, %3825
  %4439 = fsub fast float %80, %3802
  %4440 = fsub fast float %82, %3803
  %4441 = fsub fast float %84, %3804
  %4442 = fmul fast float %4422, %4439
  %4443 = fmul fast float %4422, %4440
  %4444 = fmul fast float %4422, %4441
  %4445 = fadd fast float %4442, %3802
  %4446 = fadd fast float %4443, %3803
  %4447 = fadd fast float %4444, %3804
  %4448 = fmul fast float %4422, %4417
  %4449 = call float @dx.op.unary.f32(i32 7, float %4429)  ; Saturate(value)
  %4450 = fsub fast float 1.000000e+00, %4449
  %4451 = fmul fast float %4448, %4450
  %4452 = fadd fast float %4451, %4449
  %4453 = fsub fast float 1.000000e+00, %3772
  %4454 = fmul fast float %4422, %4453
  %4455 = fadd fast float %4454, %3772
  %4456 = call float @dx.op.dot3.f32(i32 55, float %4445, float %4446, float %4447, float %4445, float %4446, float %4447)  ; Dot3(ax,ay,az,bx,by,bz)
  %4457 = call float @dx.op.unary.f32(i32 25, float %4456)  ; Rsqrt(value)
  %4458 = fmul fast float %4445, %4457
  %4459 = fmul fast float %4446, %4457
  %4460 = fmul fast float %4447, %4457
  br label %4461

; <label>:4461                                    ; preds = %4293, %4286
  %4462 = phi float [ %4292, %4286 ], [ %4299, %4293 ]
  %4463 = phi float [ %4291, %4286 ], [ %4297, %4293 ]
  %4464 = phi float [ %4290, %4286 ], [ %4295, %4293 ]
  %4465 = phi float [ %4289, %4286 ], [ %4298, %4293 ]
  %4466 = phi float [ %4288, %4286 ], [ %4296, %4293 ]
  %4467 = phi float [ %4287, %4286 ], [ %4294, %4293 ]
  %4468 = phi float [ %3823, %4286 ], [ %4436, %4293 ]
  %4469 = phi float [ %3824, %4286 ], [ %4437, %4293 ]
  %4470 = phi float [ %3825, %4286 ], [ %4438, %4293 ]
  %4471 = phi float [ %3802, %4286 ], [ %4458, %4293 ]
  %4472 = phi float [ %3803, %4286 ], [ %4459, %4293 ]
  %4473 = phi float [ %3804, %4286 ], [ %4460, %4293 ]
  %4474 = phi float [ %3904, %4286 ], [ %4345, %4293 ]
  %4475 = phi float [ %3905, %4286 ], [ %4346, %4293 ]
  %4476 = phi float [ %3906, %4286 ], [ %4347, %4293 ]
  %4477 = phi float [ %3826, %4286 ], [ %4452, %4293 ]
  %4478 = phi float [ %3772, %4286 ], [ %4455, %4293 ]
  %4479 = select i1 %174, float 0.000000e+00, float %4470
  %4480 = call float @dx.op.dot3.f32(i32 55, float %4471, float %4472, float %4473, float %4464, float %4463, float %4462)  ; Dot3(ax,ay,az,bx,by,bz)
  %4481 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4482 = call float @dx.op.dot3.f32(i32 55, float %4467, float %4466, float %4465, float %4471, float %4472, float %4473)  ; Dot3(ax,ay,az,bx,by,bz)
  %4483 = fmul fast float %4482, 2.000000e+00
  %4484 = fmul fast float %4483, %4471
  %4485 = fmul fast float %4483, %4472
  %4486 = fmul fast float %4483, %4473
  %4487 = fsub fast float %4467, %4484
  %4488 = fsub fast float %4466, %4485
  %4489 = fsub fast float %4465, %4486
  %4490 = call float @dx.op.binary.f32(i32 36, float %4478, float 1.000000e+00)  ; FMin(a,b)
  %4491 = fsub fast float 1.000000e+00, %4478
  %4492 = bitcast float %4491 to i32
  %4493 = sub nsw i32 2129859010, %4492
  %4494 = bitcast i32 %4493 to float
  %4495 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %48)  ; FMax(a,b)
  %4496 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %4497 = fcmp fast oeq float %4496, 0.000000e+00
  %4498 = fcmp fast oeq float %4495, 0.000000e+00
  %4499 = or i1 %4498, %4497
  br i1 %4499, label %4529, label %4500

; <label>:4500                                    ; preds = %4461
  %4501 = fsub fast float -0.000000e+00, %51
  %4502 = fsub fast float -0.000000e+00, %49
  %4503 = call float @dx.op.unary.f32(i32 24, float %4496)  ; Sqrt(value)
  %4504 = fdiv fast float %4503, %4495
  %4505 = fcmp fast ogt float %4504, 0x3FFB6F8900000000
  %4506 = select i1 %4505, float 0x3FFB6F8900000000, float %4504
  %4507 = fmul fast float %4506, 0x3FE8A23460000000
  %4508 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4509 = call float @dx.op.binary.f32(i32 35, float %4506, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4510 = fmul fast float %4508, %4495
  %4511 = fmul fast float %4509, 0x3FF279A740000000
  %4512 = fadd fast float %4511, -1.000000e+00
  %4513 = call float @dx.op.dot3.f32(i32 55, float %4501, float %4502, float %50, float %4501, float %4502, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %4514 = call float @dx.op.unary.f32(i32 25, float %4513)  ; Rsqrt(value)
  %4515 = fmul fast float %4514, %4501
  %4516 = fmul fast float %4514, %4502
  %4517 = fmul fast float %4514, %50
  %4518 = fmul fast float %4512, %4512
  %4519 = fsub fast float 1.000000e+00, %4518
  %4520 = fmul fast float %4509, 0x40005F8BE0000000
  %4521 = fsub fast float 0x400C5BF8A0000000, %4520
  %4522 = fdiv fast float %4510, %4521
  %4523 = fmul fast float %4522, 0x3FEE31C3C0000000
  %4524 = fmul fast float %4523, %4519
  %4525 = fmul fast float %4509, 0x3FDACB7480000000
  %4526 = fadd fast float %4525, 0xBFD7347680000000
  %4527 = fmul fast float %4526, %4522
  %4528 = fmul fast float %4527, %4519
  br label %4529

; <label>:4529                                    ; preds = %4500, %4461
  %4530 = phi float [ %4515, %4500 ], [ 0.000000e+00, %4461 ]
  %4531 = phi float [ %4516, %4500 ], [ 0.000000e+00, %4461 ]
  %4532 = phi float [ %4517, %4500 ], [ 0.000000e+00, %4461 ]
  %4533 = phi float [ %4524, %4500 ], [ 0.000000e+00, %4461 ]
  %4534 = phi float [ %4528, %4500 ], [ 0.000000e+00, %4461 ]
  %4535 = call float @dx.op.dot3.f32(i32 55, float %4530, float %4531, float %4532, float %4471, float %4472, float %4473)  ; Dot3(ax,ay,az,bx,by,bz)
  %4536 = fmul fast float %4535, 0x3FDF454380000000
  %4537 = fmul fast float %4535, %4535
  %4538 = fmul fast float %4537, 0x3FEE471020000000
  %4539 = fadd fast float %4538, 0xBFD42F6020000000
  %4540 = fmul fast float %4495, 0x3FD20DD760000000
  %4541 = fmul fast float %4539, %4534
  %4542 = fadd fast float %4541, %4540
  %4543 = fmul fast float %4536, %4533
  %4544 = fadd fast float %4542, %4543
  %4545 = fsub fast float %4542, %4543
  %4546 = call float @dx.op.dot3.f32(i32 55, float %4530, float %4531, float %4532, float %4487, float %4488, float %4489)  ; Dot3(ax,ay,az,bx,by,bz)
  %4547 = fmul fast float %4546, 0x3FDF454380000000
  %4548 = fmul fast float %4546, %4546
  %4549 = fmul fast float %4548, 0x3FEE471020000000
  %4550 = fadd fast float %4549, 0xBFD42F6020000000
  %4551 = call float @dx.op.dot3.f32(i32 55, float %4495, float %4533, float %4534, float 0x3FD20DD760000000, float %4547, float %4550)  ; Dot3(ax,ay,az,bx,by,bz)
  %4552 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %44)  ; FMax(a,b)
  %4553 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float %45, float %46, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %4554 = fcmp fast oeq float %4553, 0.000000e+00
  %4555 = fcmp fast oeq float %4552, 0.000000e+00
  %4556 = or i1 %4555, %4554
  br i1 %4556, label %4586, label %4557

; <label>:4557                                    ; preds = %4529
  %4558 = fsub fast float -0.000000e+00, %47
  %4559 = fsub fast float -0.000000e+00, %45
  %4560 = call float @dx.op.unary.f32(i32 24, float %4553)  ; Sqrt(value)
  %4561 = fdiv fast float %4560, %4552
  %4562 = fcmp fast ogt float %4561, 0x3FFB6F8900000000
  %4563 = select i1 %4562, float 0x3FFB6F8900000000, float %4561
  %4564 = fmul fast float %4563, 0x3FE8A23460000000
  %4565 = call float @dx.op.unary.f32(i32 7, float %4564)  ; Saturate(value)
  %4566 = call float @dx.op.binary.f32(i32 35, float %4563, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4567 = fmul fast float %4565, %4552
  %4568 = fmul fast float %4566, 0x3FF279A740000000
  %4569 = fadd fast float %4568, -1.000000e+00
  %4570 = call float @dx.op.dot3.f32(i32 55, float %4558, float %4559, float %46, float %4558, float %4559, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %4571 = call float @dx.op.unary.f32(i32 25, float %4570)  ; Rsqrt(value)
  %4572 = fmul fast float %4571, %4558
  %4573 = fmul fast float %4571, %4559
  %4574 = fmul fast float %4571, %46
  %4575 = fmul fast float %4569, %4569
  %4576 = fsub fast float 1.000000e+00, %4575
  %4577 = fmul fast float %4566, 0x40005F8BE0000000
  %4578 = fsub fast float 0x400C5BF8A0000000, %4577
  %4579 = fdiv fast float %4567, %4578
  %4580 = fmul fast float %4579, 0x3FEE31C3C0000000
  %4581 = fmul fast float %4580, %4576
  %4582 = fmul fast float %4566, 0x3FDACB7480000000
  %4583 = fadd fast float %4582, 0xBFD7347680000000
  %4584 = fmul fast float %4583, %4579
  %4585 = fmul fast float %4584, %4576
  br label %4586

; <label>:4586                                    ; preds = %4557, %4529
  %4587 = phi float [ %4572, %4557 ], [ 0.000000e+00, %4529 ]
  %4588 = phi float [ %4573, %4557 ], [ 0.000000e+00, %4529 ]
  %4589 = phi float [ %4574, %4557 ], [ 0.000000e+00, %4529 ]
  %4590 = phi float [ %4581, %4557 ], [ 0.000000e+00, %4529 ]
  %4591 = phi float [ %4585, %4557 ], [ 0.000000e+00, %4529 ]
  %4592 = call float @dx.op.dot3.f32(i32 55, float %4587, float %4588, float %4589, float %4471, float %4472, float %4473)  ; Dot3(ax,ay,az,bx,by,bz)
  %4593 = fmul fast float %4592, 0x3FDF454380000000
  %4594 = fmul fast float %4592, %4592
  %4595 = fmul fast float %4594, 0x3FEE471020000000
  %4596 = fadd fast float %4595, 0xBFD42F6020000000
  %4597 = fmul fast float %4552, 0x3FD20DD760000000
  %4598 = fmul fast float %4596, %4591
  %4599 = fadd fast float %4598, %4597
  %4600 = fmul fast float %4593, %4590
  %4601 = fadd fast float %4599, %4600
  %4602 = fsub fast float %4599, %4600
  %4603 = call float @dx.op.dot3.f32(i32 55, float %4587, float %4588, float %4589, float %4487, float %4488, float %4489)  ; Dot3(ax,ay,az,bx,by,bz)
  %4604 = fmul fast float %4603, 0x3FDF454380000000
  %4605 = fmul fast float %4603, %4603
  %4606 = fmul fast float %4605, 0x3FEE471020000000
  %4607 = fadd fast float %4606, 0xBFD42F6020000000
  %4608 = call float @dx.op.dot3.f32(i32 55, float %4552, float %4590, float %4591, float 0x3FD20DD760000000, float %4604, float %4607)  ; Dot3(ax,ay,az,bx,by,bz)
  %4609 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %40)  ; FMax(a,b)
  %4610 = call float @dx.op.dot3.f32(i32 55, float %41, float %42, float %43, float %41, float %42, float %43)  ; Dot3(ax,ay,az,bx,by,bz)
  %4611 = fcmp fast oeq float %4610, 0.000000e+00
  %4612 = fcmp fast oeq float %4609, 0.000000e+00
  %4613 = or i1 %4612, %4611
  br i1 %4613, label %4643, label %4614

; <label>:4614                                    ; preds = %4586
  %4615 = fsub fast float -0.000000e+00, %43
  %4616 = fsub fast float -0.000000e+00, %41
  %4617 = call float @dx.op.unary.f32(i32 24, float %4610)  ; Sqrt(value)
  %4618 = fdiv fast float %4617, %4609
  %4619 = fcmp fast ogt float %4618, 0x3FFB6F8900000000
  %4620 = select i1 %4619, float 0x3FFB6F8900000000, float %4618
  %4621 = fmul fast float %4620, 0x3FE8A23460000000
  %4622 = call float @dx.op.unary.f32(i32 7, float %4621)  ; Saturate(value)
  %4623 = call float @dx.op.binary.f32(i32 35, float %4620, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4624 = fmul fast float %4622, %4609
  %4625 = fmul fast float %4623, 0x3FF279A740000000
  %4626 = fadd fast float %4625, -1.000000e+00
  %4627 = call float @dx.op.dot3.f32(i32 55, float %4615, float %4616, float %42, float %4615, float %4616, float %42)  ; Dot3(ax,ay,az,bx,by,bz)
  %4628 = call float @dx.op.unary.f32(i32 25, float %4627)  ; Rsqrt(value)
  %4629 = fmul fast float %4628, %4615
  %4630 = fmul fast float %4628, %4616
  %4631 = fmul fast float %4628, %42
  %4632 = fmul fast float %4626, %4626
  %4633 = fsub fast float 1.000000e+00, %4632
  %4634 = fmul fast float %4623, 0x40005F8BE0000000
  %4635 = fsub fast float 0x400C5BF8A0000000, %4634
  %4636 = fdiv fast float %4624, %4635
  %4637 = fmul fast float %4636, 0x3FEE31C3C0000000
  %4638 = fmul fast float %4637, %4633
  %4639 = fmul fast float %4623, 0x3FDACB7480000000
  %4640 = fadd fast float %4639, 0xBFD7347680000000
  %4641 = fmul fast float %4640, %4636
  %4642 = fmul fast float %4641, %4633
  br label %4643

; <label>:4643                                    ; preds = %4614, %4586
  %4644 = phi float [ %4629, %4614 ], [ 0.000000e+00, %4586 ]
  %4645 = phi float [ %4630, %4614 ], [ 0.000000e+00, %4586 ]
  %4646 = phi float [ %4631, %4614 ], [ 0.000000e+00, %4586 ]
  %4647 = phi float [ %4638, %4614 ], [ 0.000000e+00, %4586 ]
  %4648 = phi float [ %4642, %4614 ], [ 0.000000e+00, %4586 ]
  %4649 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float %4471, float %4472, float %4473)  ; Dot3(ax,ay,az,bx,by,bz)
  %4650 = fmul fast float %4649, 0x3FDF454380000000
  %4651 = fmul fast float %4649, %4649
  %4652 = fmul fast float %4651, 0x3FEE471020000000
  %4653 = fadd fast float %4652, 0xBFD42F6020000000
  %4654 = fmul fast float %4609, 0x3FD20DD760000000
  %4655 = fmul fast float %4653, %4648
  %4656 = fadd fast float %4655, %4654
  %4657 = fmul fast float %4650, %4647
  %4658 = fadd fast float %4656, %4657
  %4659 = fsub fast float %4656, %4657
  %4660 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float %4487, float %4488, float %4489)  ; Dot3(ax,ay,az,bx,by,bz)
  %4661 = fmul fast float %4660, 0x3FDF454380000000
  %4662 = fmul fast float %4660, %4660
  %4663 = fmul fast float %4662, 0x3FEE471020000000
  %4664 = fadd fast float %4663, 0xBFD42F6020000000
  %4665 = call float @dx.op.dot3.f32(i32 55, float %4609, float %4647, float %4648, float 0x3FD20DD760000000, float %4661, float %4664)  ; Dot3(ax,ay,az,bx,by,bz)
  %4666 = call float @dx.op.binary.f32(i32 35, float %4544, float 0.000000e+00)  ; FMax(a,b)
  %4667 = call float @dx.op.binary.f32(i32 35, float %4601, float 0.000000e+00)  ; FMax(a,b)
  %4668 = call float @dx.op.binary.f32(i32 35, float %4658, float 0.000000e+00)  ; FMax(a,b)
  %4669 = call float @dx.op.binary.f32(i32 35, float %4545, float 0.000000e+00)  ; FMax(a,b)
  %4670 = call float @dx.op.binary.f32(i32 35, float %4602, float 0.000000e+00)  ; FMax(a,b)
  %4671 = call float @dx.op.binary.f32(i32 35, float %4659, float 0.000000e+00)  ; FMax(a,b)
  %4672 = call float @dx.op.binary.f32(i32 35, float %4551, float 0.000000e+00)  ; FMax(a,b)
  %4673 = call float @dx.op.binary.f32(i32 35, float %4608, float 0.000000e+00)  ; FMax(a,b)
  %4674 = call float @dx.op.binary.f32(i32 35, float %4665, float 0.000000e+00)  ; FMax(a,b)
  %4675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4676 = extractvalue %dx.types.CBufRet.f32 %4675, 0
  %4677 = call float @dx.op.binary.f32(i32 36, float %4474, float %4676)  ; FMin(a,b)
  %4678 = fsub fast float 1.000000e+00, %4490
  %4679 = fmul fast float %4677, %4678
  %4680 = fsub fast float 1.000000e+00, %4679
  %4681 = bitcast float %4680 to i32
  %4682 = sub nsw i32 2129859010, %4681
  %4683 = bitcast i32 %4682 to float
  %4684 = call float @dx.op.binary.f32(i32 36, float %4475, float %4676)  ; FMin(a,b)
  %4685 = fmul fast float %4684, %4678
  %4686 = fsub fast float 1.000000e+00, %4685
  %4687 = bitcast float %4686 to i32
  %4688 = sub nsw i32 2129859010, %4687
  %4689 = bitcast i32 %4688 to float
  %4690 = call float @dx.op.binary.f32(i32 36, float %4476, float %4676)  ; FMin(a,b)
  %4691 = fmul fast float %4690, %4678
  %4692 = fsub fast float 1.000000e+00, %4691
  %4693 = bitcast float %4692 to i32
  %4694 = sub nsw i32 2129859010, %4693
  %4695 = bitcast i32 %4694 to float
  %4696 = fmul fast float %4666, %4490
  %4697 = fmul fast float %4696, %4683
  %4698 = fmul fast float %4667, %4490
  %4699 = fmul fast float %4698, %4689
  %4700 = fmul fast float %4668, %4490
  %4701 = fmul fast float %4700, %4695
  %4702 = call float @dx.op.binary.f32(i32 36, float %4468, float %4676)  ; FMin(a,b)
  %4703 = fmul fast float %4702, %4678
  %4704 = fsub fast float 1.000000e+00, %4703
  %4705 = bitcast float %4704 to i32
  %4706 = sub nsw i32 2129859010, %4705
  %4707 = bitcast i32 %4706 to float
  %4708 = call float @dx.op.binary.f32(i32 36, float %4469, float %4676)  ; FMin(a,b)
  %4709 = fmul fast float %4708, %4678
  %4710 = fsub fast float 1.000000e+00, %4709
  %4711 = bitcast float %4710 to i32
  %4712 = sub nsw i32 2129859010, %4711
  %4713 = bitcast i32 %4712 to float
  %4714 = call float @dx.op.binary.f32(i32 36, float %4479, float %4676)  ; FMin(a,b)
  %4715 = fmul fast float %4714, %4678
  %4716 = fsub fast float 1.000000e+00, %4715
  %4717 = bitcast float %4716 to i32
  %4718 = sub nsw i32 2129859010, %4717
  %4719 = bitcast i32 %4718 to float
  %4720 = fmul fast float %4672, %4490
  %4721 = fmul fast float %4720, %4707
  %4722 = fmul fast float %4673, %4490
  %4723 = fmul fast float %4722, %4713
  %4724 = fmul fast float %4674, %4490
  %4725 = fmul fast float %4724, %4719
  %4726 = call float @dx.op.dot3.f32(i32 55, float %4697, float %4699, float %4701, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4727 = select i1 %174, float 0.000000e+00, float %4697
  %4728 = select i1 %174, float %4726, float %4699
  %4729 = select i1 %174, float 0.000000e+00, float %4701
  %4730 = call float @dx.op.dot3.f32(i32 55, float %4669, float %4670, float %4671, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4731 = select i1 %174, float 0.000000e+00, float %4669
  %4732 = select i1 %174, float %4730, float %4670
  %4733 = select i1 %174, float 0.000000e+00, float %4671
  %4734 = call float @dx.op.dot3.f32(i32 55, float %4721, float %4723, float %4725, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4735 = select i1 %174, float 0.000000e+00, float %4721
  %4736 = select i1 %174, float %4734, float %4723
  %4737 = select i1 %174, float 0.000000e+00, float %4725
  %4738 = fmul fast float %4481, 9.843750e-01
  %4739 = fmul fast float %4477, 9.843750e-01
  %4740 = fadd fast float %4738, 7.812500e-03
  %4741 = fadd fast float %4739, 7.812500e-03
  %4742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %4740, float %4741, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4743 = extractvalue %dx.types.ResRet.f32 %4742, 2
  %4744 = extractvalue %dx.types.ResRet.f32 %4742, 3
  %4745 = fmul fast float %4743, %4468
  %4746 = fmul fast float %4743, %4469
  %4747 = fmul fast float %4743, %4479
  %4748 = fadd fast float %4745, %4744
  %4749 = fadd fast float %4746, %4744
  %4750 = fadd fast float %4747, %4744
  %4751 = call float @dx.op.binary.f32(i32 35, float %4749, float %4750)  ; FMax(a,b)
  %4752 = call float @dx.op.binary.f32(i32 35, float %4748, float %4751)  ; FMax(a,b)
  %4753 = fsub fast float 1.000000e+00, %4752
  %4754 = fmul fast float %4748, %4735
  %4755 = fmul fast float %4749, %4736
  %4756 = fmul fast float %4750, %4737
  %4757 = fadd fast float %4754, %3764
  %4758 = fmul fast float %4757, %935
  %4759 = fadd fast float %4755, %3765
  %4760 = fmul fast float %4759, %935
  %4761 = fadd fast float %4756, %3766
  %4762 = fmul fast float %4761, %935
  %4763 = fmul fast float %4753, %4729
  %4764 = fmul fast float %4753, %4728
  %4765 = fmul fast float %4753, %4727
  %4766 = fmul fast float %4753, %3892
  %4767 = fadd fast float %4766, -1.000000e+00
  %4768 = fmul fast float %4767, %935
  %4769 = fadd fast float %4768, 1.000000e+00
  %4770 = fmul fast float %4753, %3891
  %4771 = fadd fast float %4770, -1.000000e+00
  %4772 = fmul fast float %4771, %935
  %4773 = fadd fast float %4772, 1.000000e+00
  %4774 = fmul fast float %4753, %3890
  %4775 = fadd fast float %4774, -1.000000e+00
  %4776 = fmul fast float %4775, %935
  %4777 = fadd fast float %4776, 1.000000e+00
  %4778 = fmul fast float %4777, %4731
  %4779 = fmul fast float %4773, %4732
  %4780 = fmul fast float %4769, %4733
  %4781 = fadd fast float %4778, %4765
  %4782 = fmul fast float %4781, %935
  %4783 = fadd fast float %4779, %4764
  %4784 = fmul fast float %4783, %935
  %4785 = fadd fast float %4780, %4763
  %4786 = fmul fast float %4785, %935
  %4787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4788 = extractvalue %dx.types.CBufRet.f32 %4787, 3
  %4789 = fcmp fast oeq float %4788, 0.000000e+00
  br i1 %4789, label %4975, label %4790

; <label>:4790                                    ; preds = %4643
  %4791 = extractvalue %dx.types.CBufRet.f32 %4787, 0
  %4792 = extractvalue %dx.types.CBufRet.f32 %4787, 1
  %4793 = extractvalue %dx.types.CBufRet.f32 %4787, 2
  %4794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4795 = extractvalue %dx.types.CBufRet.f32 %4794, 0
  %4796 = extractvalue %dx.types.CBufRet.f32 %4794, 1
  %4797 = extractvalue %dx.types.CBufRet.f32 %4794, 2
  %4798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4799 = extractvalue %dx.types.CBufRet.f32 %4798, 0
  %4800 = extractvalue %dx.types.CBufRet.f32 %4798, 1
  %4801 = call float @dx.op.dot3.f32(i32 55, float %4795, float %4796, float %4797, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4802 = select i1 %174, float %4799, float %4795
  %4803 = select i1 %174, float %4801, float %4796
  %4804 = select i1 %174, float %4800, float %4797
  %4805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4806 = extractvalue %dx.types.CBufRet.f32 %4805, 1
  %4807 = fcmp fast une float %4806, 0.000000e+00
  br i1 %4807, label %4808, label %4825

; <label>:4808                                    ; preds = %4790
  %4809 = fptoui float %71 to i32
  %4810 = fptoui float %72 to i32
  %4811 = lshr i32 %4809, 4
  %4812 = lshr i32 %4810, 4
  %4813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4814 = extractvalue %dx.types.CBufRet.f32 %4813, 0
  %4815 = fptoui float %4814 to i32
  %4816 = add i32 %4815, 15
  %4817 = lshr i32 %4816, 4
  %4818 = mul i32 %4817, %4812
  %4819 = add i32 %4818, %4811
  %4820 = shl i32 %4819, 3
  %4821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4820, i32 undef)  ; BufferLoad(srv,index,wot)
  %4822 = extractvalue %dx.types.ResRet.i32 %4821, 0
  %4823 = and i32 %4822, -268435456
  %4824 = icmp eq i32 %4823, -1342177280
  br i1 %4824, label %4835, label %4825

; <label>:4825                                    ; preds = %4808, %4790
  %4826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4827 = extractvalue %dx.types.CBufRet.f32 %4826, 2
  %4828 = extractvalue %dx.types.CBufRet.f32 %4826, 3
  %4829 = fmul fast float %4827, %71
  %4830 = fmul fast float %4828, %72
  %4831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %27, float %4829, float %4830, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4832 = extractvalue %dx.types.ResRet.f32 %4831, 0
  %4833 = extractvalue %dx.types.ResRet.f32 %4831, 1
  %4834 = extractvalue %dx.types.ResRet.f32 %4831, 2
  br label %4835

; <label>:4835                                    ; preds = %4825, %4808
  %4836 = phi float [ %4832, %4825 ], [ 0.000000e+00, %4808 ]
  %4837 = phi float [ %4833, %4825 ], [ 0.000000e+00, %4808 ]
  %4838 = phi float [ %4834, %4825 ], [ 0.000000e+00, %4808 ]
  %4839 = call float @dx.op.binary.f32(i32 36, float %4837, float %4838)  ; FMin(a,b)
  %4840 = call float @dx.op.binary.f32(i32 36, float %4836, float %4839)  ; FMin(a,b)
  %4841 = fcmp fast ogt float %4840, 0.000000e+00
  br i1 %4841, label %4842, label %4975, !dx.controlflow.hints !71

; <label>:4842                                    ; preds = %4835
  %4843 = fmul fast float %4836, %4802
  %4844 = fmul fast float %4837, %4803
  %4845 = fmul fast float %4838, %4804
  %4846 = fsub fast float %4791, %4467
  %4847 = fsub fast float %4792, %4466
  %4848 = fsub fast float %4793, %4465
  %4849 = call float @dx.op.dot3.f32(i32 55, float %4846, float %4847, float %4848, float %4846, float %4847, float %4848)  ; Dot3(ax,ay,az,bx,by,bz)
  %4850 = call float @dx.op.unary.f32(i32 25, float %4849)  ; Rsqrt(value)
  %4851 = fmul fast float %4850, %4846
  %4852 = fmul fast float %4850, %4847
  %4853 = fmul fast float %4850, %4848
  %4854 = call float @dx.op.dot3.f32(i32 55, float %4791, float %4792, float %4793, float %4471, float %4472, float %4473)  ; Dot3(ax,ay,az,bx,by,bz)
  %4855 = call float @dx.op.dot3.f32(i32 55, float %4464, float %4463, float %4462, float %4851, float %4852, float %4853)  ; Dot3(ax,ay,az,bx,by,bz)
  %4856 = call float @dx.op.unary.f32(i32 7, float %4854)  ; Saturate(value)
  %4857 = fmul fast float %4856, %4856
  %4858 = fmul fast float %4857, %4494
  %4859 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  %4860 = fmul fast float %4859, %4856
  %4861 = call float @dx.op.dot3.f32(i32 55, float %4471, float %4472, float %4473, float %4851, float %4852, float %4853)  ; Dot3(ax,ay,az,bx,by,bz)
  %4862 = fmul fast float %4861, %4861
  %4863 = call float @dx.op.unary.f32(i32 6, float %4854)  ; FAbs(value)
  %4864 = fsub fast float 1.000000e+00, %4477
  %4865 = call float @dx.op.binary.f32(i32 35, float %4864, float 0x3F847AE140000000)  ; FMax(a,b)
  %4866 = fmul fast float %4865, %4865
  %4867 = fmul fast float %4866, %4866
  %4868 = fsub fast float 1.000000e+00, %4867
  %4869 = fmul fast float %4481, %4481
  %4870 = fmul fast float %4869, %4868
  %4871 = fadd fast float %4870, %4867
  %4872 = bitcast float %4871 to i32
  %4873 = ashr i32 %4872, 1
  %4874 = add nsw i32 %4873, 532487669
  %4875 = bitcast i32 %4874 to float
  %4876 = fadd fast float %4875, %4481
  %4877 = fmul fast float %4867, %4862
  %4878 = fsub fast float 1.000000e+00, %4862
  %4879 = fadd fast float %4878, %4877
  %4880 = fmul fast float %4863, %4863
  %4881 = fmul fast float %4880, %4868
  %4882 = fadd fast float %4881, %4867
  %4883 = bitcast float %4882 to i32
  %4884 = ashr i32 %4883, 1
  %4885 = add nsw i32 %4884, 532487669
  %4886 = bitcast i32 %4885 to float
  %4887 = fadd fast float %4886, %4863
  %4888 = fmul fast float %4879, %4879
  %4889 = fmul fast float %4888, %4876
  %4890 = fmul fast float %4889, %4887
  %4891 = fdiv fast float 0x3FF0A00000000000, %4890
  %4892 = fmul fast float %4891, %4867
  %4893 = call float @dx.op.unary.f32(i32 6, float %4855)  ; FAbs(value)
  %4894 = fsub fast float 1.000000e+00, %4893
  %4895 = bitcast float %4894 to i32
  %4896 = sitofp i32 %4895 to float
  %4897 = fmul fast float %4896, 5.000000e+00
  %4898 = fadd fast float %4897, 0xC1EFBF8940000000
  %4899 = fptosi float %4898 to i32
  %4900 = bitcast i32 %4899 to float
  %4901 = fsub fast float 1.000000e+00, %4468
  %4902 = fsub fast float 1.000000e+00, %4469
  %4903 = fsub fast float 1.000000e+00, %4479
  %4904 = fmul fast float %4900, %4901
  %4905 = fmul fast float %4900, %4902
  %4906 = fmul fast float %4900, %4903
  %4907 = fadd fast float %4904, %4468
  %4908 = fadd fast float %4905, %4469
  %4909 = fadd fast float %4906, %4479
  %4910 = fmul fast float %4854, 9.843750e-01
  %4911 = fadd fast float %4910, 7.812500e-03
  %4912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %4911, float %4741, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4913 = extractvalue %dx.types.ResRet.f32 %4912, 2
  %4914 = extractvalue %dx.types.ResRet.f32 %4912, 3
  %4915 = fmul fast float %4913, %4468
  %4916 = fmul fast float %4913, %4469
  %4917 = fmul fast float %4913, %4479
  %4918 = fadd fast float %4915, %4914
  %4919 = fadd fast float %4916, %4914
  %4920 = fadd fast float %4917, %4914
  %4921 = call float @dx.op.binary.f32(i32 35, float %4919, float %4920)  ; FMax(a,b)
  %4922 = call float @dx.op.binary.f32(i32 35, float %4918, float %4921)  ; FMax(a,b)
  %4923 = fsub fast float 1.000000e+00, %4922
  %4924 = fsub fast float -0.000000e+00, %4471
  %4925 = fsub fast float -0.000000e+00, %4472
  %4926 = fsub fast float -0.000000e+00, %4473
  %4927 = call float @dx.op.dot3.f32(i32 55, float %4791, float %4792, float %4793, float %4924, float %4925, float %4926)  ; Dot3(ax,ay,az,bx,by,bz)
  %4928 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4929 = fmul fast float %4928, 9.843750e-01
  %4930 = fadd fast float %4929, 7.812500e-03
  %4931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %4930, float %4741, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4932 = extractvalue %dx.types.ResRet.f32 %4931, 2
  %4933 = extractvalue %dx.types.ResRet.f32 %4931, 3
  %4934 = fmul fast float %4932, %4468
  %4935 = fmul fast float %4932, %4469
  %4936 = fmul fast float %4932, %4479
  %4937 = fadd fast float %4934, %4933
  %4938 = fadd fast float %4935, %4933
  %4939 = fadd fast float %4936, %4933
  %4940 = call float @dx.op.binary.f32(i32 35, float %4938, float %4939)  ; FMax(a,b)
  %4941 = call float @dx.op.binary.f32(i32 35, float %4937, float %4940)  ; FMax(a,b)
  %4942 = fsub fast float 1.000000e+00, %4941
  %4943 = fmul fast float %4942, %4928
  %4944 = fmul fast float %4943, %3890
  %4945 = fmul fast float %4943, %3891
  %4946 = fmul fast float %4943, %3892
  %4947 = fmul fast float %4923, %4860
  %4948 = fadd fast float %4944, %4947
  %4949 = fadd fast float %4945, %4947
  %4950 = fadd fast float %4946, %4947
  %4951 = fmul fast float %4948, %4843
  %4952 = fmul fast float %4949, %4844
  %4953 = fmul fast float %4950, %4845
  %4954 = fmul fast float %4860, %4843
  %4955 = fmul fast float %4954, %4892
  %4956 = fmul fast float %4955, %4907
  %4957 = fmul fast float %4860, %4844
  %4958 = fmul fast float %4957, %4892
  %4959 = fmul fast float %4958, %4908
  %4960 = fmul fast float %4860, %4845
  %4961 = fmul fast float %4960, %4892
  %4962 = fmul fast float %4961, %4909
  %4963 = fadd fast float %4951, %4781
  %4964 = fmul fast float %4963, %935
  %4965 = fadd fast float %4952, %4783
  %4966 = fmul fast float %4965, %935
  %4967 = fadd fast float %4953, %4785
  %4968 = fmul fast float %4967, %935
  %4969 = fadd fast float %4956, %4757
  %4970 = fmul fast float %4969, %935
  %4971 = fadd fast float %4959, %4759
  %4972 = fmul fast float %4971, %935
  %4973 = fadd fast float %4962, %4761
  %4974 = fmul fast float %4973, %935
  br label %4975

; <label>:4975                                    ; preds = %4842, %4835, %4643
  %4976 = phi float [ %4758, %4643 ], [ %4758, %4835 ], [ %4970, %4842 ]
  %4977 = phi float [ %4760, %4643 ], [ %4760, %4835 ], [ %4972, %4842 ]
  %4978 = phi float [ %4762, %4643 ], [ %4762, %4835 ], [ %4974, %4842 ]
  %4979 = phi float [ %4782, %4643 ], [ %4782, %4835 ], [ %4964, %4842 ]
  %4980 = phi float [ %4784, %4643 ], [ %4784, %4835 ], [ %4966, %4842 ]
  %4981 = phi float [ %4786, %4643 ], [ %4786, %4835 ], [ %4968, %4842 ]
  %4982 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4983 = extractvalue %dx.types.CBufRet.i32 %4982, 0
  %4984 = icmp eq i32 %4983, 0
  br i1 %4984, label %5378, label %4985

; <label>:4985                                    ; preds = %4975
  %4986 = fptoui float %71 to i32
  %4987 = fptoui float %72 to i32
  %4988 = lshr i32 %4986, 4
  %4989 = lshr i32 %4987, 4
  %4990 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4991 = extractvalue %dx.types.CBufRet.i32 %4990, 0
  %4992 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4989, i32 %4991, i32 %4988)  ; UMad(a,b,c)
  %4993 = add nsw i32 %4983, -1
  %4994 = call i32 @dx.op.binary.i32(i32 37, i32 %4993, i32 0)  ; IMax(a,b)
  %4995 = call float @dx.op.binary.f32(i32 35, float %66, float 0.000000e+00)  ; FMax(a,b)
  %4996 = fptoui float %4995 to i32
  %4997 = lshr i32 %4996, 5
  %4998 = call i32 @dx.op.binary.i32(i32 40, i32 %4997, i32 8191)  ; UMin(a,b)
  %4999 = shl i32 %4998, 2
  %5000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4999, i32 undef)  ; BufferLoad(srv,index,wot)
  %5001 = extractvalue %dx.types.ResRet.i32 %5000, 0
  %5002 = lshr i32 %5001, 16
  %5003 = and i32 %5001, 65535
  %5004 = lshr i32 %5001, 21
  %5005 = lshr i32 %5003, 5
  %5006 = call i32 @dx.op.binary.i32(i32 40, i32 %5005, i32 %4994)  ; UMin(a,b)
  %5007 = icmp ugt i32 %5004, %5006
  br i1 %5007, label %5378, label %5008

; <label>:5008                                    ; preds = %4985
  br label %5009

; <label>:5009                                    ; preds = %5368, %5008
  %5010 = phi i32 [ %5375, %5368 ], [ %5004, %5008 ]
  %5011 = phi float [ %5369, %5368 ], [ %4976, %5008 ]
  %5012 = phi float [ %5370, %5368 ], [ %4977, %5008 ]
  %5013 = phi float [ %5371, %5368 ], [ %4978, %5008 ]
  %5014 = phi float [ %5372, %5368 ], [ %4979, %5008 ]
  %5015 = phi float [ %5373, %5368 ], [ %4980, %5008 ]
  %5016 = phi float [ %5374, %5368 ], [ %4981, %5008 ]
  %5017 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5018 = extractvalue %dx.types.CBufRet.i32 %5017, 0
  %5019 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4992, i32 %5018, i32 %5010)  ; UMad(a,b,c)
  %5020 = shl i32 %5019, 2
  %5021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5020, i32 undef)  ; BufferLoad(srv,index,wot)
  %5022 = extractvalue %dx.types.ResRet.i32 %5021, 0
  %5023 = shl i32 %5010, 5
  %5024 = sub nsw i32 %5002, %5023
  %5025 = call i32 @dx.op.binary.i32(i32 37, i32 %5024, i32 0)  ; IMax(a,b)
  %5026 = call i32 @dx.op.binary.i32(i32 38, i32 %5025, i32 31)  ; IMin(a,b)
  %5027 = sub nsw i32 1, %5002
  %5028 = add nsw i32 %5027, %5003
  %5029 = call i32 @dx.op.binary.i32(i32 37, i32 %5028, i32 0)  ; IMax(a,b)
  %5030 = call i32 @dx.op.binary.i32(i32 38, i32 %5029, i32 32)  ; IMin(a,b)
  %5031 = and i32 %5030, 31
  %5032 = shl i32 -1, %5031
  %5033 = xor i32 %5032, -1
  %5034 = and i32 %5026, 31
  %5035 = shl i32 %5033, %5034
  %5036 = icmp eq i32 %5030, 32
  %5037 = select i1 %5036, i32 -1, i32 %5035
  %5038 = and i32 %5037, %5022
  %5039 = icmp eq i32 %5038, 0
  br i1 %5039, label %5368, label %5040

; <label>:5040                                    ; preds = %5009
  br label %5041

; <label>:5041                                    ; preds = %5121, %5040
  %5042 = phi i32 [ %5053, %5121 ], [ %5038, %5040 ]
  %5043 = phi float [ %5122, %5121 ], [ %5011, %5040 ]
  %5044 = phi float [ %5123, %5121 ], [ %5012, %5040 ]
  %5045 = phi float [ %5124, %5121 ], [ %5013, %5040 ]
  %5046 = phi float [ %5125, %5121 ], [ %5014, %5040 ]
  %5047 = phi float [ %5126, %5121 ], [ %5015, %5040 ]
  %5048 = phi float [ %5127, %5121 ], [ %5016, %5040 ]
  %5049 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5042)  ; FirstbitLo(value)
  %5050 = add i32 %5049, %5023
  %5051 = and i32 %5049, 31
  %5052 = shl i32 1, %5051
  %5053 = xor i32 %5052, %5042
  %5054 = mul i32 %5050, 112
  %5055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5054, i32 undef)  ; BufferLoad(srv,index,wot)
  %5056 = extractvalue %dx.types.ResRet.f32 %5055, 0
  %5057 = extractvalue %dx.types.ResRet.f32 %5055, 1
  %5058 = extractvalue %dx.types.ResRet.f32 %5055, 2
  %5059 = or i32 %5054, 12
  %5060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5059, i32 undef)  ; BufferLoad(srv,index,wot)
  %5061 = extractvalue %dx.types.ResRet.f32 %5060, 0
  %5062 = add i32 %5054, 44
  %5063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5062, i32 undef)  ; BufferLoad(srv,index,wot)
  %5064 = extractvalue %dx.types.ResRet.f32 %5063, 0
  %5065 = add i32 %5054, 48
  %5066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5065, i32 undef)  ; BufferLoad(srv,index,wot)
  %5067 = extractvalue %dx.types.ResRet.f32 %5066, 0
  %5068 = extractvalue %dx.types.ResRet.f32 %5066, 1
  %5069 = extractvalue %dx.types.ResRet.f32 %5066, 2
  %5070 = add i32 %5054, 80
  %5071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5070, i32 undef)  ; BufferLoad(srv,index,wot)
  %5072 = extractvalue %dx.types.ResRet.f32 %5071, 1
  %5073 = extractvalue %dx.types.ResRet.f32 %5071, 2
  %5074 = call float @dx.op.dot3.f32(i32 55, float %5056, float %5057, float %5058, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5075 = select i1 %174, float %5072, float %5056
  %5076 = select i1 %174, float %5074, float %5057
  %5077 = select i1 %174, float %5073, float %5058
  %5078 = fsub fast float %5067, %130
  %5079 = fsub fast float %5068, %131
  %5080 = fsub fast float %5069, %132
  %5081 = call float @dx.op.dot3.f32(i32 55, float %5078, float %5079, float %5080, float %5078, float %5079, float %5080)  ; Dot3(ax,ay,az,bx,by,bz)
  %5082 = call float @dx.op.unary.f32(i32 24, float %5081)  ; Sqrt(value)
  %5083 = fdiv fast float 1.000000e+00, %5082
  %5084 = fmul fast float %5083, %5078
  %5085 = fmul fast float %5083, %5079
  %5086 = fmul fast float %5083, %5080
  %5087 = fadd fast float %5082, %5061
  %5088 = fdiv fast float 1.000000e+00, %5087
  %5089 = fmul float %5064, %5088
  %5090 = fmul float %5089, %5089
  %5091 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5092 = and i32 %5052, %5038
  %5093 = icmp eq i32 %5092, 0
  br i1 %5093, label %5116, label %5094, !dx.controlflow.hints !72

; <label>:5094                                    ; preds = %5041
  %5095 = lshr i32 %4986, 5
  %5096 = lshr i32 %4987, 5
  %5097 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %5095, i32 %5096, i32 %5050, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5098 = extractvalue %dx.types.ResRet.i32 %5097, 0
  %5099 = and i32 %5098, 3
  %5100 = icmp eq i32 %5099, 0
  %5101 = select i1 %5100, float 1.000000e+00, float 0.000000e+00
  %5102 = icmp eq i32 %5099, 3
  br i1 %5102, label %5103, label %5116

; <label>:5103                                    ; preds = %5094
  %5104 = lshr i32 %5098, 10
  %5105 = and i32 %5104, 8160
  %5106 = and i32 %4987, 31
  %5107 = or i32 %5105, %5106
  %5108 = lshr i32 %5098, 1
  %5109 = and i32 %5108, 16352
  %5110 = and i32 %4986, 31
  %5111 = or i32 %5109, %5110
  %5112 = lshr i32 %5098, 23
  %5113 = and i32 %5112, 255
  %5114 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %5111, i32 %5107, i32 %5113, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5115 = extractvalue %dx.types.ResRet.f32 %5114, 0
  br label %5116

; <label>:5116                                    ; preds = %5103, %5094, %5041
  %5117 = phi float [ %5115, %5103 ], [ %5101, %5094 ], [ 0.000000e+00, %5041 ]
  %5118 = call float @dx.op.binary.f32(i32 36, float %5117, float %5117)  ; FMin(a,b)
  %5119 = call float @dx.op.binary.f32(i32 36, float %5117, float %5118)  ; FMin(a,b)
  %5120 = fcmp fast ogt float %5119, 0.000000e+00
  br i1 %5120, label %5129, label %5121, !dx.controlflow.hints !73

; <label>:5121                                    ; preds = %5190, %5116
  %5122 = phi float [ %5043, %5116 ], [ %5364, %5190 ]
  %5123 = phi float [ %5044, %5116 ], [ %5365, %5190 ]
  %5124 = phi float [ %5045, %5116 ], [ %5366, %5190 ]
  %5125 = phi float [ %5046, %5116 ], [ %5352, %5190 ]
  %5126 = phi float [ %5047, %5116 ], [ %5353, %5190 ]
  %5127 = phi float [ %5048, %5116 ], [ %5354, %5190 ]
  %5128 = icmp eq i32 %5042, %5052
  br i1 %5128, label %5367, label %5041

; <label>:5129                                    ; preds = %5116
  %5130 = fmul fast float %5117, %5075
  %5131 = fmul fast float %5117, %5076
  %5132 = fmul fast float %5117, %5077
  %5133 = fsub fast float %5069, %4267
  %5134 = fcmp fast ogt float %5133, 0.000000e+00
  %5135 = fsub fast float %132, %4267
  %5136 = fcmp fast ogt float %5135, 0.000000e+00
  %5137 = xor i1 %5136, %5134
  %5138 = fsub fast float %4267, %5069
  %5139 = fmul fast float %5138, 2.000000e+00
  %5140 = fadd fast float %5139, %5069
  %5141 = select i1 %5137, float %5069, float %5140
  %5142 = fsub fast float %5141, %132
  %5143 = call float @dx.op.dot3.f32(i32 55, float %5078, float %5079, float %5142, float %5078, float %5079, float %5142)  ; Dot3(ax,ay,az,bx,by,bz)
  %5144 = call float @dx.op.unary.f32(i32 25, float %5143)  ; Rsqrt(value)
  %5145 = fmul fast float %5144, %5078
  %5146 = fmul fast float %5144, %5079
  %5147 = fmul fast float %5144, %5142
  %5148 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4275)  ; Dot3(ax,ay,az,bx,by,bz)
  %5149 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5145, float %5146, float %5147)  ; Dot3(ax,ay,az,bx,by,bz)
  %5150 = fdiv fast float 1.000000e+00, %5149
  %5151 = fmul fast float %5150, %5148
  %5152 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5135, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5153 = fcmp fast ogt float %5152, 0.000000e+00
  %5154 = fcmp fast olt float %5152, 0.000000e+00
  %5155 = zext i1 %5153 to i32
  %5156 = zext i1 %5154 to i32
  %5157 = sub nsw i32 %5155, %5156
  %5158 = sitofp i32 %5157 to float
  %5159 = fsub fast float %5141, %4267
  %5160 = call float @dx.op.dot3.f32(i32 55, float %5078, float %5079, float %5159, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5161 = fcmp fast ogt float %5160, 0.000000e+00
  %5162 = fcmp fast olt float %5160, 0.000000e+00
  %5163 = zext i1 %5161 to i32
  %5164 = zext i1 %5162 to i32
  %5165 = sub nsw i32 %5163, %5164
  %5166 = sitofp i32 %5165 to float
  %5167 = fcmp fast une float %5158, %5166
  br i1 %5167, label %5168, label %5178

; <label>:5168                                    ; preds = %5129
  %5169 = fmul fast float %5151, %5147
  %5170 = fmul fast float %5151, %5146
  %5171 = fmul fast float %5151, %5145
  %5172 = fmul fast float %5171, %5171
  %5173 = fmul fast float %5170, %5170
  %5174 = fadd fast float %5172, %5173
  %5175 = fmul fast float %5169, %5169
  %5176 = fadd fast float %5174, %5175
  %5177 = call float @dx.op.unary.f32(i32 24, float %5176)  ; Sqrt(value)
  br label %5190

; <label>:5178                                    ; preds = %5129
  %5179 = icmp slt i32 %5157, 0
  br i1 %5179, label %5180, label %5190

; <label>:5180                                    ; preds = %5178
  %5181 = fsub fast float %130, %5067
  %5182 = fsub fast float %131, %5068
  %5183 = fsub fast float %132, %5141
  %5184 = fmul fast float %5181, %5181
  %5185 = fmul fast float %5182, %5182
  %5186 = fadd fast float %5184, %5185
  %5187 = fmul fast float %5183, %5183
  %5188 = fadd fast float %5186, %5187
  %5189 = call float @dx.op.unary.f32(i32 24, float %5188)  ; Sqrt(value)
  br label %5190

; <label>:5190                                    ; preds = %5180, %5178, %5168
  %5191 = phi float [ %5177, %5168 ], [ %5189, %5180 ], [ 0.000000e+00, %5178 ]
  %5192 = and i1 %5136, %5134
  %5193 = fsub fast float -0.000000e+00, %5191
  %5194 = select i1 %5192, float -0.000000e+00, float %5193
  %5195 = fmul fast float %4268, 0x3FF7154760000000
  %5196 = fmul fast float %5195, %5194
  %5197 = fmul fast float %4269, 0x3FF7154760000000
  %5198 = fmul fast float %5197, %5194
  %5199 = fmul fast float %4270, 0x3FF7154760000000
  %5200 = fmul fast float %5199, %5194
  %5201 = call float @dx.op.unary.f32(i32 21, float %5196)  ; Exp(value)
  %5202 = call float @dx.op.unary.f32(i32 21, float %5198)  ; Exp(value)
  %5203 = call float @dx.op.unary.f32(i32 21, float %5200)  ; Exp(value)
  %5204 = call float @dx.op.unary.f32(i32 7, float %5201)  ; Saturate(value)
  %5205 = call float @dx.op.unary.f32(i32 7, float %5202)  ; Saturate(value)
  %5206 = call float @dx.op.unary.f32(i32 7, float %5203)  ; Saturate(value)
  %5207 = fmul fast float %5130, %5204
  %5208 = fmul fast float %5131, %5205
  %5209 = fmul fast float %5132, %5206
  %5210 = fsub fast float %5084, %4467
  %5211 = fsub fast float %5085, %4466
  %5212 = fsub fast float %5086, %4465
  %5213 = call float @dx.op.dot3.f32(i32 55, float %5210, float %5211, float %5212, float %5210, float %5211, float %5212)  ; Dot3(ax,ay,az,bx,by,bz)
  %5214 = call float @dx.op.unary.f32(i32 25, float %5213)  ; Rsqrt(value)
  %5215 = fmul fast float %5214, %5210
  %5216 = fmul fast float %5214, %5211
  %5217 = fmul fast float %5214, %5212
  %5218 = call float @dx.op.dot3.f32(i32 55, float %5084, float %5085, float %5086, float %4471, float %4472, float %4473)  ; Dot3(ax,ay,az,bx,by,bz)
  %5219 = call float @dx.op.dot3.f32(i32 55, float %4464, float %4463, float %4462, float %5215, float %5216, float %5217)  ; Dot3(ax,ay,az,bx,by,bz)
  %5220 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5221 = fmul fast float %5220, %5091
  %5222 = fmul fast float %5220, %5220
  %5223 = fmul fast float %5222, %4494
  %5224 = call float @dx.op.unary.f32(i32 7, float %5223)  ; Saturate(value)
  %5225 = fmul fast float %5221, %5224
  %5226 = bitcast float %5081 to i32
  %5227 = ashr i32 %5226, 1
  %5228 = sub nsw i32 1597463007, %5227
  %5229 = bitcast i32 %5228 to float
  %5230 = fmul fast float %5229, %5078
  %5231 = fmul fast float %5229, %5079
  %5232 = fmul fast float %5229, %5080
  %5233 = fsub fast float %5230, %4467
  %5234 = fsub fast float %5231, %4466
  %5235 = fsub fast float %5232, %4465
  %5236 = call float @dx.op.dot3.f32(i32 55, float %5233, float %5234, float %5235, float %5233, float %5234, float %5235)  ; Dot3(ax,ay,az,bx,by,bz)
  %5237 = call float @dx.op.unary.f32(i32 25, float %5236)  ; Rsqrt(value)
  %5238 = fmul fast float %5233, %5237
  %5239 = fmul fast float %5234, %5237
  %5240 = fmul fast float %5235, %5237
  %5241 = call float @dx.op.dot3.f32(i32 55, float %4471, float %4472, float %4473, float %5238, float %5239, float %5240)  ; Dot3(ax,ay,az,bx,by,bz)
  %5242 = fmul fast float %5241, %5241
  %5243 = call float @dx.op.unary.f32(i32 6, float %5218)  ; FAbs(value)
  %5244 = fsub fast float 1.000000e+00, %4477
  %5245 = call float @dx.op.binary.f32(i32 35, float %5244, float 0x3F847AE140000000)  ; FMax(a,b)
  %5246 = fmul fast float %5245, %5245
  %5247 = fmul fast float %5246, %5246
  %5248 = fsub fast float 1.000000e+00, %5247
  %5249 = fmul fast float %4481, %4481
  %5250 = fmul fast float %5249, %5248
  %5251 = fadd fast float %5250, %5247
  %5252 = bitcast float %5251 to i32
  %5253 = ashr i32 %5252, 1
  %5254 = add nsw i32 %5253, 532487669
  %5255 = bitcast i32 %5254 to float
  %5256 = fadd fast float %5255, %4481
  %5257 = fmul fast float %5247, %5242
  %5258 = fsub fast float 1.000000e+00, %5242
  %5259 = fadd fast float %5258, %5257
  %5260 = fmul fast float %5243, %5243
  %5261 = fmul fast float %5260, %5248
  %5262 = fadd fast float %5261, %5247
  %5263 = bitcast float %5262 to i32
  %5264 = ashr i32 %5263, 1
  %5265 = add nsw i32 %5264, 532487669
  %5266 = bitcast i32 %5265 to float
  %5267 = fadd fast float %5266, %5243
  %5268 = fmul fast float %5259, %5259
  %5269 = fmul fast float %5268, %5256
  %5270 = fmul fast float %5269, %5267
  %5271 = fdiv fast float 1.000000e+00, %5270
  %5272 = bitcast float %5247 to i32
  %5273 = sitofp i32 %5272 to float
  %5274 = fmul fast float %5273, 0x3FE7F73180000000
  %5275 = fadd fast float %5274, 0x41AFE27C40000000
  %5276 = fptosi float %5275 to i32
  %5277 = bitcast i32 %5276 to float
  %5278 = fmul fast float %5064, 0x3FD80E9D60000000
  %5279 = fmul fast float %5278, %5229
  %5280 = fadd fast float %5277, %5279
  %5281 = bitcast float %5280 to i32
  %5282 = sub nsw i32 2129859010, %5281
  %5283 = bitcast i32 %5282 to float
  %5284 = fmul fast float %5247, %5271
  %5285 = fmul fast float %5284, %5277
  %5286 = fmul fast float %5285, %5283
  %5287 = call float @dx.op.unary.f32(i32 6, float %5219)  ; FAbs(value)
  %5288 = fsub fast float 1.000000e+00, %5287
  %5289 = bitcast float %5288 to i32
  %5290 = sitofp i32 %5289 to float
  %5291 = fmul fast float %5290, 5.000000e+00
  %5292 = fadd fast float %5291, 0xC1EFBF8940000000
  %5293 = fptosi float %5292 to i32
  %5294 = bitcast i32 %5293 to float
  %5295 = fsub fast float 1.000000e+00, %4468
  %5296 = fsub fast float 1.000000e+00, %4469
  %5297 = fsub fast float 1.000000e+00, %4479
  %5298 = fmul fast float %5294, %5295
  %5299 = fmul fast float %5294, %5296
  %5300 = fmul fast float %5294, %5297
  %5301 = fadd fast float %5298, %4468
  %5302 = fadd fast float %5299, %4469
  %5303 = fadd fast float %5300, %4479
  %5304 = fmul fast float %5218, 9.843750e-01
  %5305 = fadd fast float %5304, 7.812500e-03
  %5306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %5305, float %4741, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5307 = extractvalue %dx.types.ResRet.f32 %5306, 2
  %5308 = extractvalue %dx.types.ResRet.f32 %5306, 3
  %5309 = fmul fast float %5307, %4468
  %5310 = fmul fast float %5307, %4469
  %5311 = fmul fast float %5307, %4479
  %5312 = fadd fast float %5309, %5308
  %5313 = fadd fast float %5310, %5308
  %5314 = fadd fast float %5311, %5308
  %5315 = call float @dx.op.binary.f32(i32 35, float %5313, float %5314)  ; FMax(a,b)
  %5316 = call float @dx.op.binary.f32(i32 35, float %5312, float %5315)  ; FMax(a,b)
  %5317 = fsub fast float 1.000000e+00, %5316
  %5318 = fsub fast float -0.000000e+00, %4471
  %5319 = fsub fast float -0.000000e+00, %4472
  %5320 = fsub fast float -0.000000e+00, %4473
  %5321 = call float @dx.op.dot3.f32(i32 55, float %5084, float %5085, float %5086, float %5318, float %5319, float %5320)  ; Dot3(ax,ay,az,bx,by,bz)
  %5322 = call float @dx.op.unary.f32(i32 7, float %5321)  ; Saturate(value)
  %5323 = fmul fast float %5322, %5091
  %5324 = fmul fast float %5322, 9.843750e-01
  %5325 = fadd fast float %5324, 7.812500e-03
  %5326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %5325, float %4741, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5327 = extractvalue %dx.types.ResRet.f32 %5326, 2
  %5328 = extractvalue %dx.types.ResRet.f32 %5326, 3
  %5329 = fmul fast float %5327, %4468
  %5330 = fmul fast float %5327, %4469
  %5331 = fmul fast float %5327, %4479
  %5332 = fadd fast float %5329, %5328
  %5333 = fadd fast float %5330, %5328
  %5334 = fadd fast float %5331, %5328
  %5335 = call float @dx.op.binary.f32(i32 35, float %5333, float %5334)  ; FMax(a,b)
  %5336 = call float @dx.op.binary.f32(i32 35, float %5332, float %5335)  ; FMax(a,b)
  %5337 = fsub fast float 1.000000e+00, %5336
  %5338 = fmul fast float %5323, %5337
  %5339 = fmul fast float %5338, %3890
  %5340 = fmul fast float %5338, %3891
  %5341 = fmul fast float %5338, %3892
  %5342 = fmul fast float %5317, %5225
  %5343 = fadd fast float %5339, %5342
  %5344 = fadd fast float %5340, %5342
  %5345 = fadd fast float %5341, %5342
  %5346 = fmul fast float %5207, %935
  %5347 = fmul fast float %5346, %5343
  %5348 = fmul fast float %5208, %935
  %5349 = fmul fast float %5348, %5344
  %5350 = fmul fast float %5209, %935
  %5351 = fmul fast float %5350, %5345
  %5352 = fadd fast float %5347, %5046
  %5353 = fadd fast float %5349, %5047
  %5354 = fadd fast float %5351, %5048
  %5355 = fmul fast float %5346, %5225
  %5356 = fmul fast float %5355, %5301
  %5357 = fmul fast float %5356, %5286
  %5358 = fmul fast float %5348, %5225
  %5359 = fmul fast float %5358, %5302
  %5360 = fmul fast float %5359, %5286
  %5361 = fmul fast float %5350, %5225
  %5362 = fmul fast float %5361, %5303
  %5363 = fmul fast float %5362, %5286
  %5364 = fadd fast float %5357, %5043
  %5365 = fadd fast float %5360, %5044
  %5366 = fadd fast float %5363, %5045
  br label %5121

; <label>:5367                                    ; preds = %5121
  br label %5368

; <label>:5368                                    ; preds = %5367, %5009
  %5369 = phi float [ %5011, %5009 ], [ %5122, %5367 ]
  %5370 = phi float [ %5012, %5009 ], [ %5123, %5367 ]
  %5371 = phi float [ %5013, %5009 ], [ %5124, %5367 ]
  %5372 = phi float [ %5014, %5009 ], [ %5125, %5367 ]
  %5373 = phi float [ %5015, %5009 ], [ %5126, %5367 ]
  %5374 = phi float [ %5016, %5009 ], [ %5127, %5367 ]
  %5375 = add i32 %5010, 1
  %5376 = icmp ugt i32 %5375, %5006
  br i1 %5376, label %5377, label %5009

; <label>:5377                                    ; preds = %5368
  br label %5378

; <label>:5378                                    ; preds = %5377, %4985, %4975
  %5379 = phi float [ %4976, %4975 ], [ %4976, %4985 ], [ %5369, %5377 ]
  %5380 = phi float [ %4977, %4975 ], [ %4977, %4985 ], [ %5370, %5377 ]
  %5381 = phi float [ %4978, %4975 ], [ %4978, %4985 ], [ %5371, %5377 ]
  %5382 = phi float [ %4979, %4975 ], [ %4979, %4985 ], [ %5372, %5377 ]
  %5383 = phi float [ %4980, %4975 ], [ %4980, %4985 ], [ %5373, %5377 ]
  %5384 = phi float [ %4981, %4975 ], [ %4981, %4985 ], [ %5374, %5377 ]
  %5385 = call float @dx.op.unary.f32(i32 24, float %4474)  ; Sqrt(value)
  %5386 = call float @dx.op.unary.f32(i32 24, float %4475)  ; Sqrt(value)
  %5387 = call float @dx.op.unary.f32(i32 24, float %4476)  ; Sqrt(value)
  %5388 = fmul fast float %5385, %5382
  %5389 = fmul fast float %5386, %5383
  %5390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5391 = extractvalue %dx.types.CBufRet.f32 %5390, 0
  br i1 %174, label %5392, label %5413

; <label>:5392                                    ; preds = %5378
  %5393 = fadd fast float %5384, %3776
  %5394 = fmul fast float %5393, %3774
  %5395 = fsub fast float 1.000000e+00, %3774
  %5396 = call float @dx.op.unary.f32(i32 7, float %5395)  ; Saturate(value)
  %5397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5398 = extractvalue %dx.types.CBufRet.f32 %5397, 3
  %5399 = fmul fast float %5398, %5396
  %5400 = fadd fast float %5399, %5394
  %5401 = fsub fast float 1.000000e+00, %4481
  %5402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5403 = extractvalue %dx.types.CBufRet.f32 %5402, 0
  %5404 = fmul fast float %5403, %5401
  %5405 = fsub fast float %5400, %5404
  %5406 = fadd fast float %5389, %5388
  %5407 = fmul fast float %5391, %5406
  %5408 = extractvalue %dx.types.CBufRet.f32 %5397, 1
  %5409 = fsub fast float %5405, %5408
  %5410 = extractvalue %dx.types.CBufRet.f32 %5397, 2
  %5411 = fmul fast float %5409, %5410
  %5412 = call float @dx.op.unary.f32(i32 7, float %5411)  ; Saturate(value)
  br label %5429

; <label>:5413                                    ; preds = %5378
  %5414 = fmul fast float %5387, %5384
  %5415 = fmul fast float %5391, %5388
  %5416 = fmul fast float %5391, %5389
  %5417 = fmul fast float %5414, %5391
  %5418 = add i32 %32, 356
  %5419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %5418, i32 undef)  ; BufferLoad(srv,index,wot)
  %5420 = extractvalue %dx.types.ResRet.i32 %5419, 0
  %5421 = and i32 %5420, 32
  %5422 = icmp eq i32 %5421, 0
  br i1 %5422, label %5429, label %5423

; <label>:5423                                    ; preds = %5413
  %5424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5425 = extractvalue %dx.types.CBufRet.f32 %5424, 0
  %5426 = fmul fast float %5425, 0x3FE99999A0000000
  %5427 = fadd fast float %5425, %5415
  %5428 = fadd fast float %5426, %5417
  br label %5429

; <label>:5429                                    ; preds = %5423, %5413, %5392
  %5430 = phi float [ %5407, %5392 ], [ %5427, %5423 ], [ %5415, %5413 ]
  %5431 = phi float [ %5412, %5392 ], [ %5416, %5423 ], [ %5416, %5413 ]
  %5432 = phi float [ 1.000000e+00, %5392 ], [ %5428, %5423 ], [ %5417, %5413 ]
  %5433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5434 = extractvalue %dx.types.CBufRet.f32 %5433, 0
  %5435 = fmul fast float %5434, %5380
  %5436 = fmul fast float %5434, %5381
  %5437 = fadd fast float %5380, %5379
  %5438 = select i1 %174, float %5437, float %5379
  %5439 = fmul float %5438, %5434
  %5440 = select i1 %174, float 0.000000e+00, float %5435
  %5441 = select i1 %174, float 0.000000e+00, float %5436
  %5442 = fmul fast float %5430, %5385
  %5443 = fmul fast float %5431, %5386
  %5444 = fmul fast float %5432, %5387
  %5445 = fadd fast float %5439, %5442
  %5446 = fadd fast float %5440, %5443
  %5447 = fadd fast float %5441, %5444
  %5448 = select i1 %174, float %5431, float %5446
  %5449 = select i1 %174, float %5432, float %5447
  %5450 = call float @dx.op.binary.f32(i32 36, float %5445, float 3.225500e+04)  ; FMin(a,b)
  %5451 = call float @dx.op.binary.f32(i32 36, float %5448, float 3.225500e+04)  ; FMin(a,b)
  %5452 = call float @dx.op.binary.f32(i32 36, float %5449, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5450)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5451)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5452)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.viewIdState = !{!43}
!dx.entryPoints = !{!44}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !34, !37}
!5 = !{!6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !13}
!13 = !{i32 0, i32 5}
!14 = !{i32 6, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!15 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!16 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!34 = !{!35, !36}
!35 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!36 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!37 = !{!38, !39, !40, !41, !42}
!38 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!39 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!40 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!41 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!42 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!43 = !{[47 x i32] [i32 45, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7]}
!44 = !{void ()* @ps_main, !"ps_main", !45, !4, !70}
!45 = !{!46, !68, null}
!46 = !{!47, !50, !52, !54, !56, !58, !59, !60, !61, !62, !63, !65, !67}
!47 = !{i32 0, !"SV_Position", i8 9, i8 3, !48, i8 4, i32 1, i8 4, i32 0, i8 0, !49}
!48 = !{i32 0}
!49 = !{i32 3, i32 11}
!50 = !{i32 1, !"COLOR", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 1, i8 0, !51}
!51 = !{i32 3, i32 14}
!52 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 2, i8 0, !53}
!53 = !{i32 3, i32 3}
!54 = !{i32 3, !"NORMAL", i8 9, i8 0, !48, i8 2, i32 1, i8 3, i32 3, i8 0, !55}
!55 = !{i32 3, i32 7}
!56 = !{i32 4, !"TANGENT", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 4, i8 0, !57}
!57 = !{i32 3, i32 15}
!58 = !{i32 5, !"SH_RED", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 5, i8 0, !57}
!59 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 6, i8 0, !57}
!60 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 7, i8 0, !57}
!61 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !48, i8 2, i32 1, i8 2, i32 8, i8 0, !53}
!62 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 9, i8 0, !57}
!63 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !48, i8 1, i32 1, i8 4, i32 10, i8 0, !64}
!64 = !{i32 3, i32 5}
!65 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !48, i8 1, i32 1, i8 1, i32 11, i8 0, !66}
!66 = !{i32 3, i32 1}
!67 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !48, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!68 = !{!69}
!69 = !{i32 0, !"SV_Target", i8 9, i8 16, !48, i8 0, i32 1, i8 4, i32 0, i8 0, !57}
!70 = !{i32 0, i64 24}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}

