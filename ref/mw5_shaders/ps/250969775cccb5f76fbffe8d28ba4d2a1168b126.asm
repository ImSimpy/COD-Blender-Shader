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
; shader hash: 7175e729dd27db20c7b8c544acb0c82b
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
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 3
  %97 = fmul fast float %71, 2.000000e+00
  %98 = fmul fast float %97, %95
  %99 = fmul fast float %72, 2.000000e+00
  %100 = fmul fast float %99, %96
  %101 = fsub fast float 1.000000e+00, %98
  %102 = fsub fast float 1.000000e+00, %100
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %106 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %107 = fmul fast float %101, %104
  %108 = fmul fast float %101, %105
  %109 = fmul fast float %101, %106
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %113 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %114 = fmul fast float %102, %111
  %115 = fmul fast float %102, %112
  %116 = fmul fast float %102, %113
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = fadd fast float %114, %118
  %122 = fadd fast float %121, %107
  %123 = fadd fast float %115, %119
  %124 = fadd fast float %123, %108
  %125 = fadd fast float %116, %120
  %126 = fadd fast float %125, %109
  %127 = fmul fast float %122, %66
  %128 = fmul fast float %124, %66
  %129 = fmul fast float %126, %66
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 3
  %133 = fmul fast float %131, %71
  %134 = fmul fast float %132, %72
  %135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %136 = extractvalue %dx.types.ResRet.i32 %135, 0
  %137 = and i32 %136, 114688
  %138 = icmp ne i32 %137, 0
  %139 = select i1 %138, float %133, float 0.000000e+00
  %140 = select i1 %138, float %134, float 0.000000e+00
  %141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %27, float %139, float %140, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %142 = extractvalue %dx.types.ResRet.f32 %141, 0
  %143 = fmul fast float %142, 2.550000e+02
  %144 = fptoui float %143 to i32
  %145 = select i1 %138, i32 %144, i32 0
  %146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.i32 %146, 3
  %148 = and i32 %147, 3
  %149 = icmp ne i32 %148, 0
  %150 = and i32 %147, 4
  %151 = icmp ne i32 %150, 0
  %152 = and i1 %149, %151
  br i1 %152, label %153, label %162

; <label>:153                                     ; preds = %0
  %154 = fmul fast float %96, %72
  %155 = fmul fast float %95, %71
  %156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %155, float %154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %157 = extractvalue %dx.types.ResRet.f32 %156, 0
  %158 = fsub fast float 1.000000e+00, %157
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = fcmp fast olt float %158, %160
  br label %170

; <label>:162                                     ; preds = %0
  %163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.i32 %163, 3
  %165 = and i32 %164, 3
  %166 = icmp ne i32 %165, 0
  %167 = and i32 %164, 4
  %168 = icmp eq i32 %167, 0
  %169 = and i1 %166, %168
  br label %170

; <label>:170                                     ; preds = %162, %153
  %171 = phi i1 [ %161, %153 ], [ %169, %162 ]
  %172 = add i32 %32, 156
  %173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %172, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = shl i32 %174, 4
  %176 = and i32 %175, 32752
  %177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %176)  ; LegacyF16ToF32(value)
  %178 = lshr i32 %174, 7
  %179 = and i32 %178, 32752
  %180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %179)  ; LegacyF16ToF32(value)
  %181 = lshr i32 %174, 22
  %182 = shl nuw nsw i32 %181, 5
  %183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %182)  ; LegacyF16ToF32(value)
  %184 = add i32 %32, 216
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = and i32 %186, 255
  %188 = uitofp i32 %187 to float
  %189 = fmul fast float %188, 0x3F70101020000000
  %190 = lshr i32 %186, 8
  %191 = and i32 %190, 255
  %192 = uitofp i32 %191 to float
  %193 = fmul fast float %192, 0x3F70101020000000
  %194 = lshr i32 %186, 16
  %195 = and i32 %194, 255
  %196 = uitofp i32 %195 to float
  %197 = fmul fast float %196, 0x3F70101020000000
  %198 = add i32 %32, 36
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = and i32 %200, 65535
  %202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %201)  ; LegacyF16ToF32(value)
  %203 = lshr i32 %200, 16
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = add i32 %32, 288
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = and i32 %207, 65535
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = lshr i32 %207, 16
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = fmul fast float %209, 0x3F50624DE0000000
  %213 = fmul fast float %211, 0x3F50624DE0000000
  %214 = add i32 %32, 172
  %215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %214, i32 undef)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = shl i32 %216, 4
  %218 = and i32 %217, 32752
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218)  ; LegacyF16ToF32(value)
  %220 = lshr i32 %216, 7
  %221 = and i32 %220, 32752
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = lshr i32 %216, 22
  %224 = shl nuw nsw i32 %223, 5
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = add i32 %32, 232
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 255
  %230 = uitofp i32 %229 to float
  %231 = fmul fast float %230, 0x3F70101020000000
  %232 = lshr i32 %228, 8
  %233 = and i32 %232, 255
  %234 = uitofp i32 %233 to float
  %235 = fmul fast float %234, 0x3F70101020000000
  %236 = lshr i32 %228, 16
  %237 = and i32 %236, 255
  %238 = uitofp i32 %237 to float
  %239 = fmul fast float %238, 0x3F70101020000000
  %240 = add i32 %32, 52
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = and i32 %242, 65535
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %242, 16
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = add i32 %32, 304
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = and i32 %249, 65535
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %249, 16
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = fmul fast float %251, 0x3F50624DE0000000
  %255 = fmul fast float %253, 0x3F50624DE0000000
  %256 = add i32 %32, 188
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = shl i32 %258, 4
  %260 = and i32 %259, 32752
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = lshr i32 %258, 7
  %263 = and i32 %262, 32752
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = lshr i32 %258, 22
  %266 = shl nuw nsw i32 %265, 5
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = add i32 %32, 248
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 255
  %272 = uitofp i32 %271 to float
  %273 = fmul fast float %272, 0x3F70101020000000
  %274 = lshr i32 %270, 8
  %275 = and i32 %274, 255
  %276 = uitofp i32 %275 to float
  %277 = fmul fast float %276, 0x3F70101020000000
  %278 = lshr i32 %270, 16
  %279 = and i32 %278, 255
  %280 = uitofp i32 %279 to float
  %281 = fmul fast float %280, 0x3F70101020000000
  %282 = add i32 %32, 68
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 65535
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %284, 16
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = add i32 %32, 320
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = and i32 %291, 65535
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = lshr i32 %291, 16
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = fmul fast float %293, 0x3F50624DE0000000
  %297 = fmul fast float %295, 0x3F50624DE0000000
  %298 = add i32 %32, 204
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = shl i32 %300, 4
  %302 = and i32 %301, 32752
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %300, 7
  %305 = and i32 %304, 32752
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %300, 22
  %308 = shl nuw nsw i32 %307, 5
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = add i32 %32, 264
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 255
  %314 = uitofp i32 %313 to float
  %315 = fmul fast float %314, 0x3F70101020000000
  %316 = lshr i32 %312, 8
  %317 = and i32 %316, 255
  %318 = uitofp i32 %317 to float
  %319 = fmul fast float %318, 0x3F70101020000000
  %320 = lshr i32 %312, 16
  %321 = and i32 %320, 255
  %322 = uitofp i32 %321 to float
  %323 = fmul fast float %322, 0x3F70101020000000
  %324 = add i32 %32, 84
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %326, 65535
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %326, 16
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = add i32 %32, 336
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = and i32 %333, 65535
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %333, 16
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = fmul fast float %335, 0x3F50624DE0000000
  %339 = fmul fast float %337, 0x3F50624DE0000000
  %340 = add i32 %32, 348
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 32
  %344 = icmp eq i32 %343, 0
  %345 = and i32 %342, 64
  %346 = icmp eq i32 %345, 0
  %347 = and i32 %342, 128
  %348 = icmp eq i32 %347, 0
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 2
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %366, label %353

; <label>:353                                     ; preds = %170
  %354 = add i32 %32, 488
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = add i32 %356, 0
  %358 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %357, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %359 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %358, %dx.types.Handle %68, float %59, float %60, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  %361 = extractvalue %dx.types.ResRet.f32 %359, 1
  %362 = extractvalue %dx.types.ResRet.f32 %359, 2
  %363 = fmul fast float %360, %61
  %364 = fmul fast float %361, %62
  %365 = fmul fast float %362, %63
  br label %366

; <label>:366                                     ; preds = %353, %170
  %367 = phi float [ %63, %170 ], [ %365, %353 ]
  %368 = phi float [ %62, %170 ], [ %364, %353 ]
  %369 = phi float [ %61, %170 ], [ %363, %353 ]
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 2
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %393, label %374

; <label>:374                                     ; preds = %366
  %375 = add i32 %32, 44
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = and i32 %377, 1
  %379 = icmp ne i32 %378, 0
  %380 = select i1 %379, float %369, float 1.000000e+00
  %381 = add i32 %32, 60
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 1
  %385 = icmp ne i32 %384, 0
  %386 = select i1 %385, float %368, float 1.000000e+00
  %387 = add i32 %32, 76
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = and i32 %389, 1
  %391 = icmp ne i32 %390, 0
  %392 = select i1 %391, float %367, float 1.000000e+00
  br label %393

; <label>:393                                     ; preds = %374, %366
  %394 = phi float [ %367, %366 ], [ %392, %374 ]
  %395 = phi float [ %368, %366 ], [ %386, %374 ]
  %396 = phi float [ %369, %366 ], [ %380, %374 ]
  %397 = lshr i32 %371, 20
  %398 = and i32 %397, 3
  %399 = add nuw nsw i32 %398, 1
  %400 = add i32 %32, 24
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = add i32 %32, 28
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = or i32 %405, %402
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %919, label %408

; <label>:408                                     ; preds = %393
  %409 = and i32 %402, 262144
  %410 = icmp ne i32 %409, 0
  %411 = select i1 %410, float %34, float 1.000000e+00
  %412 = select i1 %410, float %35, float 0.000000e+00
  %413 = select i1 %410, float %36, float 0.000000e+00
  %414 = select i1 %410, float %37, float 1.000000e+00
  %415 = select i1 %410, float %38, float %59
  %416 = select i1 %410, float %39, float %60
  %417 = add i32 %32, 284
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = lshr i32 %419, 16
  %421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %420)  ; LegacyF16ToF32(value)
  %422 = fmul fast float %421, 0x3F50624DE0000000
  %423 = add i32 %32, 88
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = lshr i32 %425, 16
  %427 = and i32 %426, 255
  %428 = lshr i32 %425, 24
  %429 = add i32 %32, 292
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 65535
  %433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %432)  ; LegacyF16ToF32(value)
  %434 = lshr i32 %431, 16
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = add i32 %32, 32
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = lshr i32 %438, 22
  %440 = shl nuw nsw i32 %439, 5
  %441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %440)  ; LegacyF16ToF32(value)
  %442 = shl i32 %438, 4
  %443 = and i32 %442, 32752
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = lshr i32 %438, 7
  %446 = and i32 %445, 32752
  %447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %446)  ; LegacyF16ToF32(value)
  %448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %449 = extractvalue %dx.types.CBufRet.f32 %448, 3
  %450 = fmul fast float %449, 1.000000e+03
  %451 = fmul fast float %212, %450
  %452 = call float @dx.op.unary.f32(i32 22, float %451)  ; Frc(value)
  %453 = fadd fast float %452, %202
  %454 = fmul fast float %213, %450
  %455 = call float @dx.op.unary.f32(i32 22, float %454)  ; Frc(value)
  %456 = fadd fast float %455, %204
  %457 = fmul fast float %422, %450
  %458 = call float @dx.op.unary.f32(i32 22, float %457)  ; Frc(value)
  %459 = fmul fast float %458, 0x401921FB60000000
  %460 = fadd fast float %459, %441
  %461 = call float @dx.op.unary.f32(i32 13, float %460)  ; Sin(value)
  %462 = call float @dx.op.unary.f32(i32 12, float %460)  ; Cos(value)
  %463 = fsub fast float -0.000000e+00, %461
  %464 = fadd fast float %415, -5.000000e-01
  %465 = fadd fast float %416, -5.000000e-01
  %466 = fmul fast float %433, %464
  %467 = fmul fast float %435, %465
  %468 = fadd fast float %466, 5.000000e-01
  %469 = fadd fast float %467, 5.000000e-01
  %470 = fmul fast float %444, %468
  %471 = fmul fast float %447, %469
  %472 = fmul fast float %462, %470
  %473 = call float @dx.op.tertiary.f32(i32 46, float %463, float %471, float %472)  ; FMad(a,b,c)
  %474 = fmul fast float %461, %470
  %475 = call float @dx.op.tertiary.f32(i32 46, float %462, float %471, float %474)  ; FMad(a,b,c)
  %476 = fadd fast float %453, %473
  %477 = fadd fast float %456, %475
  %478 = icmp ugt i32 %427, 1
  %479 = icmp ugt i32 %425, 33554431
  %480 = or i1 %479, %478
  br i1 %480, label %481, label %506

; <label>:481                                     ; preds = %408
  %482 = add i32 %32, 228
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = lshr i32 %484, 16
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = fmul fast float %449, %486
  %488 = call float @dx.op.unary.f32(i32 22, float %487)  ; Frc(value)
  %489 = mul nuw nsw i32 %427, %428
  %490 = uitofp i32 %489 to float
  %491 = fmul fast float %488, %490
  %492 = call float @dx.op.unary.f32(i32 27, float %491)  ; Round_ni(value)
  %493 = fptoui float %492 to i32
  %494 = urem i32 %493, %427
  %495 = udiv i32 %493, %428
  %496 = call float @dx.op.unary.f32(i32 22, float %476)  ; Frc(value)
  %497 = call float @dx.op.unary.f32(i32 22, float %477)  ; Frc(value)
  %498 = uitofp i32 %494 to float
  %499 = uitofp i32 %495 to float
  %500 = fadd fast float %496, %498
  %501 = fadd fast float %497, %499
  %502 = uitofp i32 %427 to float
  %503 = uitofp i32 %428 to float
  %504 = fdiv fast float %500, %502
  %505 = fdiv fast float %501, %503
  br label %506

; <label>:506                                     ; preds = %481, %408
  %507 = phi float [ %504, %481 ], [ %476, %408 ]
  %508 = phi float [ %505, %481 ], [ %477, %408 ]
  %509 = and i32 %402, 16
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %707, label %511

; <label>:511                                     ; preds = %506
  %512 = add i32 %32, 376
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = add i32 %514, 0
  %516 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %515, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %517 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %516, %dx.types.Handle %67, float %507, float %508, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %518 = extractvalue %dx.types.ResRet.f32 %517, 0
  %519 = extractvalue %dx.types.ResRet.f32 %517, 1
  %520 = extractvalue %dx.types.ResRet.f32 %517, 2
  %521 = extractvalue %dx.types.ResRet.f32 %517, 3
  %522 = and i32 %425, 255
  %523 = uitofp i32 %522 to float
  %524 = lshr i32 %425, 8
  %525 = and i32 %524, 255
  %526 = uitofp i32 %525 to float
  %527 = fmul fast float %521, %523
  %528 = fadd fast float %527, %526
  %529 = fmul fast float %528, 0x3F70101000000000
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = and i32 %531, 512
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %542, label %534

; <label>:534                                     ; preds = %511
  %535 = add i32 %32, 456
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = add i32 %537, 0
  %539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %538, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %540 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %539, %dx.types.Handle %68, float %507, float %508, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  br label %542

; <label>:542                                     ; preds = %534, %511
  %543 = phi float [ %541, %534 ], [ 1.000000e+00, %511 ]
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = and i32 %545, 33554432
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %654, label %548

; <label>:548                                     ; preds = %542
  %549 = add i32 %32, 224
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = and i32 %551, 65535
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = lshr i32 %551, 16
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = add i32 %32, 228
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = and i32 %558, 65535
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = lshr i32 %562, 24
  %564 = uitofp i32 %563 to float
  %565 = fmul fast float %564, 0x3F70101020000000
  %566 = and i32 %562, 255
  %567 = uitofp i32 %566 to float
  %568 = fmul fast float %567, 0x3F70101020000000
  %569 = lshr i32 %562, 8
  %570 = and i32 %569, 255
  %571 = uitofp i32 %570 to float
  %572 = fmul fast float %571, 0x3F70101020000000
  %573 = lshr i32 %562, 16
  %574 = and i32 %573, 255
  %575 = uitofp i32 %574 to float
  %576 = fmul fast float %575, 0x3F70101020000000
  %577 = add i32 %32, 220
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = lshr i32 %579, 24
  %581 = uitofp i32 %580 to float
  %582 = fmul fast float %581, 0x3F70101020000000
  %583 = and i32 %579, 255
  %584 = uitofp i32 %583 to float
  %585 = fmul fast float %584, 0x3F70101020000000
  %586 = lshr i32 %579, 8
  %587 = and i32 %586, 255
  %588 = uitofp i32 %587 to float
  %589 = fmul fast float %588, 0x3F70101020000000
  %590 = lshr i32 %579, 16
  %591 = and i32 %590, 255
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %592, 0x3F70101020000000
  %594 = bitcast float %518 to i32
  %595 = ashr i32 %594, 1
  %596 = sub nsw i32 1597463174, %595
  %597 = bitcast i32 %596 to float
  %598 = fmul fast float %518, 5.000000e-01
  %599 = fmul fast float %597, %597
  %600 = fmul fast float %599, %598
  %601 = fsub fast float 1.500000e+00, %600
  %602 = fmul fast float %597, %518
  %603 = fmul fast float %602, %601
  %604 = bitcast float %519 to i32
  %605 = ashr i32 %604, 1
  %606 = sub nsw i32 1597463174, %605
  %607 = bitcast i32 %606 to float
  %608 = fmul fast float %519, 5.000000e-01
  %609 = fmul fast float %607, %607
  %610 = fmul fast float %609, %608
  %611 = fsub fast float 1.500000e+00, %610
  %612 = fmul fast float %607, %519
  %613 = fmul fast float %612, %611
  %614 = bitcast float %520 to i32
  %615 = ashr i32 %614, 1
  %616 = sub nsw i32 1597463174, %615
  %617 = bitcast i32 %616 to float
  %618 = fmul fast float %520, 5.000000e-01
  %619 = fmul fast float %617, %617
  %620 = fmul fast float %619, %618
  %621 = fsub fast float 1.500000e+00, %620
  %622 = fmul fast float %617, %520
  %623 = fmul fast float %622, %621
  %624 = fsub fast float %603, %585
  %625 = fsub fast float %613, %589
  %626 = fsub fast float %623, %593
  %627 = fmul fast float %624, %553
  %628 = fmul fast float %625, %555
  %629 = fmul fast float %626, %560
  %630 = fadd fast float %627, %568
  %631 = fadd fast float %628, %572
  %632 = fadd fast float %629, %576
  %633 = call float @dx.op.unary.f32(i32 7, float %630)  ; Saturate(value)
  %634 = call float @dx.op.unary.f32(i32 7, float %631)  ; Saturate(value)
  %635 = call float @dx.op.unary.f32(i32 7, float %632)  ; Saturate(value)
  %636 = fmul fast float %633, %633
  %637 = fmul fast float %634, %634
  %638 = fmul fast float %635, %635
  %639 = fsub fast float %636, %518
  %640 = fsub fast float %637, %519
  %641 = fsub fast float %638, %520
  %642 = fmul fast float %639, %543
  %643 = fmul fast float %640, %543
  %644 = fmul fast float %641, %543
  %645 = fadd fast float %642, %518
  %646 = fadd fast float %643, %519
  %647 = fadd fast float %644, %520
  %648 = fadd fast float %565, %529
  %649 = fsub fast float %648, %582
  %650 = call float @dx.op.unary.f32(i32 7, float %649)  ; Saturate(value)
  %651 = fsub fast float %650, %529
  %652 = fmul fast float %651, %543
  %653 = fadd fast float %652, %529
  br label %707

; <label>:654                                     ; preds = %542
  %655 = and i32 %545, 134217728
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %691, label %657

; <label>:657                                     ; preds = %654
  %658 = call float @dx.op.unary.f32(i32 24, float %189)  ; Sqrt(value)
  %659 = call float @dx.op.unary.f32(i32 24, float %193)  ; Sqrt(value)
  %660 = call float @dx.op.unary.f32(i32 24, float %197)  ; Sqrt(value)
  %661 = fadd fast float %658, -5.000000e-01
  %662 = fadd fast float %659, -5.000000e-01
  %663 = fadd fast float %660, -5.000000e-01
  %664 = fmul fast float %661, %543
  %665 = fmul fast float %662, %543
  %666 = fmul fast float %663, %543
  %667 = fadd fast float %664, 5.000000e-01
  %668 = fadd fast float %665, 5.000000e-01
  %669 = fadd fast float %666, 5.000000e-01
  %670 = call float @dx.op.unary.f32(i32 24, float %518)  ; Sqrt(value)
  %671 = call float @dx.op.unary.f32(i32 24, float %519)  ; Sqrt(value)
  %672 = call float @dx.op.unary.f32(i32 24, float %520)  ; Sqrt(value)
  %673 = fmul fast float %667, 2.000000e+00
  %674 = fsub fast float 1.000000e+00, %673
  %675 = fmul fast float %674, %670
  %676 = fadd fast float %675, %673
  %677 = fmul fast float %676, %670
  %678 = fmul fast float %668, 2.000000e+00
  %679 = fsub fast float 1.000000e+00, %678
  %680 = fmul fast float %679, %671
  %681 = fadd fast float %680, %678
  %682 = fmul fast float %681, %671
  %683 = fmul fast float %669, 2.000000e+00
  %684 = fsub fast float 1.000000e+00, %683
  %685 = fmul fast float %684, %672
  %686 = fadd fast float %685, %683
  %687 = fmul fast float %686, %672
  %688 = fmul fast float %677, %677
  %689 = fmul fast float %682, %682
  %690 = fmul fast float %687, %687
  br label %707

; <label>:691                                     ; preds = %654
  %692 = fmul fast float %189, %189
  %693 = fmul fast float %193, %193
  %694 = fmul fast float %197, %197
  %695 = fadd fast float %692, -1.000000e+00
  %696 = fadd fast float %693, -1.000000e+00
  %697 = fadd fast float %694, -1.000000e+00
  %698 = fmul fast float %543, %695
  %699 = fmul fast float %543, %696
  %700 = fmul fast float %543, %697
  %701 = fadd fast float %698, 1.000000e+00
  %702 = fadd fast float %699, 1.000000e+00
  %703 = fadd fast float %700, 1.000000e+00
  %704 = fmul fast float %701, %518
  %705 = fmul fast float %702, %519
  %706 = fmul fast float %703, %520
  br label %707

; <label>:707                                     ; preds = %691, %657, %548, %506
  %708 = phi float [ %653, %548 ], [ %529, %657 ], [ %529, %691 ], [ 0x3FA23C0BE0000000, %506 ]
  %709 = phi float [ %645, %548 ], [ %688, %657 ], [ %704, %691 ], [ 1.000000e+00, %506 ]
  %710 = phi float [ %646, %548 ], [ %689, %657 ], [ %705, %691 ], [ 1.000000e+00, %506 ]
  %711 = phi float [ %647, %548 ], [ %690, %657 ], [ %706, %691 ], [ 1.000000e+00, %506 ]
  %712 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %713 = extractvalue %dx.types.CBufRet.i32 %712, 1
  %714 = and i32 %713, 1
  %715 = icmp ne i32 %714, 0
  %716 = add i32 %32, 356
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = and i32 %718, 32
  %720 = icmp ne i32 %719, 0
  %721 = and i1 %715, %720
  %722 = select i1 %721, float 1.000000e+00, float %709
  %723 = select i1 %721, float 0x3FD3333340000000, float %710
  %724 = select i1 %721, float 0x3FD3333340000000, float %711
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = and i32 %726, 32
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %801, label %729

; <label>:729                                     ; preds = %707
  %730 = add i32 %32, 92
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %730, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = add i32 %32, 392
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = add i32 %735, 0
  %737 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %736, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %738 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %737, %dx.types.Handle %67, float %507, float %508, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  %740 = extractvalue %dx.types.ResRet.f32 %738, 1
  %741 = extractvalue %dx.types.ResRet.f32 %738, 2
  %742 = extractvalue %dx.types.ResRet.f32 %738, 3
  %743 = and i32 %732, 255
  %744 = uitofp i32 %743 to float
  %745 = lshr i32 %732, 8
  %746 = and i32 %745, 255
  %747 = uitofp i32 %746 to float
  %748 = lshr i32 %732, 16
  %749 = and i32 %748, 255
  %750 = uitofp i32 %749 to float
  %751 = fmul fast float %750, 0x3F70101000000000
  %752 = fmul fast float %739, %744
  %753 = fadd fast float %752, %747
  %754 = fmul fast float %753, 0x3F70101000000000
  %755 = fadd fast float %740, -5.000000e-01
  %756 = fadd fast float %742, -5.000000e-01
  %757 = fmul fast float %755, %751
  %758 = fmul fast float %756, %751
  %759 = fadd fast float %757, 5.000000e-01
  %760 = fadd fast float %758, 5.000000e-01
  %761 = fmul fast float %759, 2.000000e+00
  %762 = fadd fast float %761, -1.000000e+00
  %763 = fmul fast float %760, 2.000000e+00
  %764 = fadd fast float %763, -1.000000e+00
  %765 = fadd fast float %762, %764
  %766 = fmul fast float %765, 5.000000e-01
  %767 = fsub fast float %762, %764
  %768 = fmul fast float %767, 5.000000e-01
  %769 = call float @dx.op.unary.f32(i32 6, float %766)  ; FAbs(value)
  %770 = fsub fast float 1.000000e+00, %769
  %771 = call float @dx.op.unary.f32(i32 6, float %768)  ; FAbs(value)
  %772 = fsub fast float %770, %771
  %773 = call float @dx.op.dot3.f32(i32 55, float %766, float %768, float %772, float %766, float %768, float %772)  ; Dot3(ax,ay,az,bx,by,bz)
  %774 = call float @dx.op.unary.f32(i32 25, float %773)  ; Rsqrt(value)
  %775 = fmul fast float %766, %774
  %776 = fmul fast float %768, %774
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = and i32 %778, 67108864
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %797, label %781

; <label>:781                                     ; preds = %729
  %782 = add i32 %32, 280
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = and i32 %784, 65535
  %786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %785)  ; LegacyF16ToF32(value)
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = and i32 %788, 65535
  %790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %789)  ; LegacyF16ToF32(value)
  %791 = lshr i32 %784, 16
  %792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %791)  ; LegacyF16ToF32(value)
  %793 = fsub fast float %754, %792
  %794 = fmul fast float %793, %786
  %795 = fadd fast float %794, %790
  %796 = call float @dx.op.unary.f32(i32 7, float %795)  ; Saturate(value)
  br label %797

; <label>:797                                     ; preds = %781, %729
  %798 = phi float [ %796, %781 ], [ %754, %729 ]
  %799 = call float @dx.op.dot2.f32(i32 54, float %775, float %776, float %411, float %412)  ; Dot2(ax,ay,bx,by)
  %800 = call float @dx.op.dot2.f32(i32 54, float %775, float %776, float %413, float %414)  ; Dot2(ax,ay,bx,by)
  br label %801

; <label>:801                                     ; preds = %797, %707
  %802 = phi float [ %798, %797 ], [ 0x3FD6666660000000, %707 ]
  %803 = phi float [ %799, %797 ], [ 0.000000e+00, %707 ]
  %804 = phi float [ %800, %797 ], [ 0.000000e+00, %707 ]
  %805 = phi float [ %741, %797 ], [ 1.000000e+00, %707 ]
  %806 = add i32 %32, 160
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = lshr i32 %808, 22
  %810 = shl nuw nsw i32 %809, 5
  %811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %810)  ; LegacyF16ToF32(value)
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = and i32 %813, 64
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %849, label %816

; <label>:816                                     ; preds = %801
  %817 = add i32 %32, 408
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = add i32 %819, 0
  %821 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %820, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = and i32 %823, 131072
  %825 = icmp eq i32 %824, 0
  %826 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %821, %dx.types.Handle %67, float %507, float %508, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %827 = extractvalue %dx.types.ResRet.f32 %826, 0
  %828 = extractvalue %dx.types.ResRet.f32 %826, 1
  %829 = extractvalue %dx.types.ResRet.f32 %826, 2
  %830 = fmul fast float %827, %177
  %831 = fmul fast float %828, %180
  %832 = fmul fast float %829, %183
  br i1 %825, label %839, label %833

; <label>:833                                     ; preds = %816
  %834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %835 = extractvalue %dx.types.CBufRet.f32 %834, 0
  %836 = fmul fast float %835, %830
  %837 = fmul fast float %835, %831
  %838 = fmul fast float %835, %832
  br label %839

; <label>:839                                     ; preds = %833, %816
  %840 = phi float [ %836, %833 ], [ %830, %816 ]
  %841 = phi float [ %837, %833 ], [ %831, %816 ]
  %842 = phi float [ %838, %833 ], [ %832, %816 ]
  %843 = fmul fast float %840, %811
  %844 = select i1 %171, float %843, float %840
  %845 = call float @dx.op.dot3.f32(i32 55, float %844, float %841, float %842, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %846 = select i1 %171, float 0.000000e+00, float %840
  %847 = select i1 %171, float %845, float %841
  %848 = select i1 %171, float 0.000000e+00, float %842
  br label %849

; <label>:849                                     ; preds = %839, %801
  %850 = phi float [ %846, %839 ], [ 0.000000e+00, %801 ]
  %851 = phi float [ %847, %839 ], [ 0.000000e+00, %801 ]
  %852 = phi float [ %848, %839 ], [ 0.000000e+00, %801 ]
  %853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.i32 %853, 0
  %855 = and i32 %854, 10240
  %856 = icmp eq i32 %855, 0
  br i1 %856, label %901, label %857

; <label>:857                                     ; preds = %849
  %858 = add i32 %32, 472
  %859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %858, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.i32 %859, 0
  %861 = add i32 %860, 0
  %862 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %861, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %863 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %862, %dx.types.Handle %68, float %507, float %508, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %864 = extractvalue %dx.types.ResRet.f32 %863, 1
  %865 = extractvalue %dx.types.ResRet.f32 %863, 3
  %866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.i32 %866, 0
  %868 = and i32 %867, 1048576
  %869 = icmp ne i32 %868, 0
  %870 = and i32 %867, 8192
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %887, label %872

; <label>:872                                     ; preds = %857
  %873 = extractvalue %dx.types.ResRet.f32 %863, 2
  %874 = select i1 %869, float %873, float %864
  %875 = extractvalue %dx.types.ResRet.f32 %863, 0
  %876 = select i1 %869, float %875, float %864
  %877 = add i32 %32, 96
  %878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %877, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.i32 %878, 0
  %880 = lshr i32 %879, 16
  %881 = and i32 %880, 255
  %882 = uitofp i32 %881 to float
  %883 = fmul fast float %882, 0x3F80101020000000
  %884 = fmul fast float %883, %876
  %885 = fmul fast float %883, %864
  %886 = fmul fast float %883, %874
  br label %887

; <label>:887                                     ; preds = %872, %857
  %888 = phi float [ %884, %872 ], [ 0.000000e+00, %857 ]
  %889 = phi float [ %885, %872 ], [ 0.000000e+00, %857 ]
  %890 = phi float [ %886, %872 ], [ 0.000000e+00, %857 ]
  %891 = and i32 %867, 2048
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %901, label %893

; <label>:893                                     ; preds = %887
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = shl i32 %895, 4
  %897 = and i32 %896, 32752
  %898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %897)  ; LegacyF16ToF32(value)
  %899 = fmul fast float %898, %865
  %900 = call float @dx.op.binary.f32(i32 35, float %899, float 0x3F70101020000000)  ; FMax(a,b)
  br label %901

; <label>:901                                     ; preds = %893, %887, %849
  %902 = phi float [ %888, %893 ], [ %888, %887 ], [ 0.000000e+00, %849 ]
  %903 = phi float [ %889, %893 ], [ %889, %887 ], [ 0.000000e+00, %849 ]
  %904 = phi float [ %890, %893 ], [ %890, %887 ], [ 0.000000e+00, %849 ]
  %905 = phi float [ %900, %893 ], [ 0x3F70101020000000, %887 ], [ 0x3F70101020000000, %849 ]
  %906 = add i32 %32, 96
  %907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %908 = extractvalue %dx.types.ResRet.i32 %907, 0
  %909 = and i32 %908, 255
  %910 = uitofp i32 %909 to float
  %911 = lshr i32 %908, 8
  %912 = and i32 %911, 255
  %913 = uitofp i32 %912 to float
  %914 = call float @dx.op.dot3.f32(i32 55, float %722, float %723, float %724, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %915 = fmul fast float %913, %914
  %916 = fadd fast float %915, %910
  %917 = fmul fast float %916, 0x3F70101020000000
  %918 = call float @dx.op.unary.f32(i32 7, float %917)  ; Saturate(value)
  br label %919

; <label>:919                                     ; preds = %901, %393
  %920 = phi float [ 0.000000e+00, %393 ], [ %803, %901 ]
  %921 = phi float [ 0.000000e+00, %393 ], [ %804, %901 ]
  %922 = phi float [ 0.000000e+00, %393 ], [ %722, %901 ]
  %923 = phi float [ 0.000000e+00, %393 ], [ %723, %901 ]
  %924 = phi float [ 0.000000e+00, %393 ], [ %724, %901 ]
  %925 = phi float [ 0.000000e+00, %393 ], [ %850, %901 ]
  %926 = phi float [ 0.000000e+00, %393 ], [ %851, %901 ]
  %927 = phi float [ 0.000000e+00, %393 ], [ %852, %901 ]
  %928 = phi float [ 0.000000e+00, %393 ], [ %902, %901 ]
  %929 = phi float [ 0.000000e+00, %393 ], [ %903, %901 ]
  %930 = phi float [ 0.000000e+00, %393 ], [ %904, %901 ]
  %931 = phi float [ 0.000000e+00, %393 ], [ %708, %901 ]
  %932 = phi float [ 0.000000e+00, %393 ], [ 1.000000e+00, %901 ]
  %933 = phi float [ 0.000000e+00, %393 ], [ %802, %901 ]
  %934 = phi float [ 0.000000e+00, %393 ], [ %805, %901 ]
  %935 = phi float [ 0.000000e+00, %393 ], [ %905, %901 ]
  %936 = phi float [ 0.000000e+00, %393 ], [ %918, %901 ]
  br i1 %344, label %1865, label %937

; <label>:937                                     ; preds = %919
  %938 = icmp ult i32 %399, 2
  %939 = add i32 %32, 40
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = add i32 %32, 44
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = or i32 %944, %941
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %1865, label %947

; <label>:947                                     ; preds = %937
  %948 = and i32 %941, 262144
  %949 = icmp ne i32 %948, 0
  %950 = select i1 %949, float %34, float 1.000000e+00
  %951 = select i1 %949, float %35, float 0.000000e+00
  %952 = select i1 %949, float %36, float 0.000000e+00
  %953 = select i1 %949, float %37, float 1.000000e+00
  %954 = select i1 %949, float %38, float %59
  %955 = select i1 %949, float %39, float %60
  %956 = add i32 %32, 300
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = lshr i32 %958, 16
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  %961 = fmul fast float %960, 0x3F50624DE0000000
  %962 = add i32 %32, 104
  %963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.i32 %963, 0
  %965 = lshr i32 %964, 16
  %966 = and i32 %965, 255
  %967 = lshr i32 %964, 24
  %968 = add i32 %32, 308
  %969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %968, i32 undef)  ; BufferLoad(srv,index,wot)
  %970 = extractvalue %dx.types.ResRet.i32 %969, 0
  %971 = and i32 %970, 65535
  %972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %971)  ; LegacyF16ToF32(value)
  %973 = lshr i32 %970, 16
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = add i32 %32, 48
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = lshr i32 %977, 22
  %979 = shl nuw nsw i32 %978, 5
  %980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %979)  ; LegacyF16ToF32(value)
  %981 = shl i32 %977, 4
  %982 = and i32 %981, 32752
  %983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %982)  ; LegacyF16ToF32(value)
  %984 = lshr i32 %977, 7
  %985 = and i32 %984, 32752
  %986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %985)  ; LegacyF16ToF32(value)
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 3
  %989 = fmul fast float %988, 1.000000e+03
  %990 = fmul fast float %254, %989
  %991 = call float @dx.op.unary.f32(i32 22, float %990)  ; Frc(value)
  %992 = fadd fast float %991, %244
  %993 = fmul fast float %255, %989
  %994 = call float @dx.op.unary.f32(i32 22, float %993)  ; Frc(value)
  %995 = fadd fast float %994, %246
  %996 = fmul fast float %961, %989
  %997 = call float @dx.op.unary.f32(i32 22, float %996)  ; Frc(value)
  %998 = fmul fast float %997, 0x401921FB60000000
  %999 = fadd fast float %998, %980
  %1000 = call float @dx.op.unary.f32(i32 13, float %999)  ; Sin(value)
  %1001 = call float @dx.op.unary.f32(i32 12, float %999)  ; Cos(value)
  %1002 = fsub fast float -0.000000e+00, %1000
  %1003 = fadd fast float %954, -5.000000e-01
  %1004 = fadd fast float %955, -5.000000e-01
  %1005 = fmul fast float %972, %1003
  %1006 = fmul fast float %974, %1004
  %1007 = fadd fast float %1005, 5.000000e-01
  %1008 = fadd fast float %1006, 5.000000e-01
  %1009 = fmul fast float %983, %1007
  %1010 = fmul fast float %986, %1008
  %1011 = fmul fast float %1001, %1009
  %1012 = call float @dx.op.tertiary.f32(i32 46, float %1002, float %1010, float %1011)  ; FMad(a,b,c)
  %1013 = fmul fast float %1000, %1009
  %1014 = call float @dx.op.tertiary.f32(i32 46, float %1001, float %1010, float %1013)  ; FMad(a,b,c)
  %1015 = fadd fast float %992, %1012
  %1016 = fadd fast float %995, %1014
  %1017 = icmp ugt i32 %966, 1
  %1018 = icmp ugt i32 %964, 33554431
  %1019 = or i1 %1018, %1017
  br i1 %1019, label %1020, label %1045

; <label>:1020                                    ; preds = %947
  %1021 = add i32 %32, 244
  %1022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.i32 %1022, 0
  %1024 = lshr i32 %1023, 16
  %1025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1024)  ; LegacyF16ToF32(value)
  %1026 = fmul fast float %988, %1025
  %1027 = call float @dx.op.unary.f32(i32 22, float %1026)  ; Frc(value)
  %1028 = mul nuw nsw i32 %966, %967
  %1029 = uitofp i32 %1028 to float
  %1030 = fmul fast float %1027, %1029
  %1031 = call float @dx.op.unary.f32(i32 27, float %1030)  ; Round_ni(value)
  %1032 = fptoui float %1031 to i32
  %1033 = urem i32 %1032, %966
  %1034 = udiv i32 %1032, %967
  %1035 = call float @dx.op.unary.f32(i32 22, float %1015)  ; Frc(value)
  %1036 = call float @dx.op.unary.f32(i32 22, float %1016)  ; Frc(value)
  %1037 = uitofp i32 %1033 to float
  %1038 = uitofp i32 %1034 to float
  %1039 = fadd fast float %1035, %1037
  %1040 = fadd fast float %1036, %1038
  %1041 = uitofp i32 %966 to float
  %1042 = uitofp i32 %967 to float
  %1043 = fdiv fast float %1039, %1041
  %1044 = fdiv fast float %1040, %1042
  br label %1045

; <label>:1045                                    ; preds = %1020, %947
  %1046 = phi float [ %1043, %1020 ], [ %1015, %947 ]
  %1047 = phi float [ %1044, %1020 ], [ %1016, %947 ]
  %1048 = and i32 %941, 16777216
  %1049 = icmp eq i32 %1048, 0
  br i1 %1049, label %1159, label %1050

; <label>:1050                                    ; preds = %1045
  %1051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1052 = extractvalue %dx.types.CBufRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.CBufRet.f32 %1051, 1
  %1054 = extractvalue %dx.types.CBufRet.f32 %1051, 2
  %1055 = fadd fast float %1052, %127
  %1056 = fadd fast float %1053, %128
  %1057 = fadd fast float %1054, %129
  %1058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.f32 %1058, 0
  %1060 = call float @dx.op.unary.f32(i32 7, float %1059)  ; Saturate(value)
  %1061 = icmp eq i32 %33, 65535
  br i1 %1061, label %1156, label %1062

; <label>:1062                                    ; preds = %1050
  %1063 = lshr i32 %33, 1
  %1064 = shl i32 %1063, 2
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = and i32 %33, 1
  %1068 = icmp ne i32 %1067, 0
  %1069 = lshr i32 %1066, 16
  %1070 = and i32 %1066, 65535
  %1071 = select i1 %1068, i32 %1069, i32 %1070
  %1072 = icmp eq i32 %1071, 65535
  br i1 %1072, label %1152, label %1073

; <label>:1073                                    ; preds = %1062
  %1074 = mul nuw nsw i32 %1071, 40
  %1075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.ResRet.f32 %1075, 1
  %1078 = extractvalue %dx.types.ResRet.f32 %1075, 2
  %1079 = add nuw nsw i32 %1074, 12
  %1080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  %1082 = extractvalue %dx.types.ResRet.f32 %1080, 1
  %1083 = extractvalue %dx.types.ResRet.f32 %1080, 2
  %1084 = add nuw nsw i32 %1074, 24
  %1085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.f32 %1085, 0
  %1087 = extractvalue %dx.types.ResRet.f32 %1085, 1
  %1088 = extractvalue %dx.types.ResRet.f32 %1085, 2
  %1089 = add nuw nsw i32 %1074, 36
  %1090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1089, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.f32 %1090, 0
  %1092 = fsub fast float %1055, %1076
  %1093 = fsub fast float %1056, %1077
  %1094 = fsub fast float %1057, %1078
  %1095 = fmul fast float %1091, %1092
  %1096 = fmul fast float %1091, %1093
  %1097 = fmul fast float %1091, %1094
  %1098 = call float @dx.op.unary.f32(i32 27, float %1095)  ; Round_ni(value)
  %1099 = call float @dx.op.unary.f32(i32 27, float %1096)  ; Round_ni(value)
  %1100 = call float @dx.op.unary.f32(i32 27, float %1097)  ; Round_ni(value)
  %1101 = fadd fast float %1098, 5.000000e-01
  %1102 = fadd fast float %1099, 5.000000e-01
  %1103 = fadd fast float %1100, 5.000000e-01
  %1104 = fmul fast float %1101, %1081
  %1105 = fmul fast float %1102, %1082
  %1106 = fmul fast float %1103, %1083
  %1107 = shl i32 %33, 2
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1107, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = add i32 %1109, 0
  %1111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1110, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1112 = call float @dx.op.unary.f32(i32 22, float %1104)  ; Frc(value)
  %1113 = call float @dx.op.unary.f32(i32 22, float %1105)  ; Frc(value)
  %1114 = call float @dx.op.unary.f32(i32 22, float %1106)  ; Frc(value)
  %1115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1111, %dx.types.Handle %27, float %1112, float %1113, float %1114, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1116 = extractvalue %dx.types.ResRet.f32 %1115, 0
  %1117 = extractvalue %dx.types.ResRet.f32 %1115, 1
  %1118 = extractvalue %dx.types.ResRet.f32 %1115, 2
  %1119 = fmul fast float %1116, 1.023000e+03
  %1120 = fmul fast float %1117, 1.023000e+03
  %1121 = fmul fast float %1118, 1.023000e+03
  %1122 = fadd fast float %1119, 5.000000e-01
  %1123 = fadd fast float %1120, 5.000000e-01
  %1124 = fadd fast float %1121, 5.000000e-01
  %1125 = call float @dx.op.unary.f32(i32 27, float %1122)  ; Round_ni(value)
  %1126 = call float @dx.op.unary.f32(i32 27, float %1123)  ; Round_ni(value)
  %1127 = call float @dx.op.unary.f32(i32 27, float %1124)  ; Round_ni(value)
  %1128 = fsub fast float %1095, %1098
  %1129 = fsub fast float %1096, %1099
  %1130 = fsub fast float %1097, %1100
  %1131 = fmul fast float %1128, 7.500000e-01
  %1132 = fmul fast float %1129, 7.500000e-01
  %1133 = fmul fast float %1130, 7.500000e-01
  %1134 = fadd fast float %1098, 1.250000e-01
  %1135 = fadd fast float %1134, %1131
  %1136 = fadd fast float %1135, %1125
  %1137 = fadd fast float %1099, 1.250000e-01
  %1138 = fadd fast float %1137, %1132
  %1139 = fadd fast float %1138, %1126
  %1140 = fadd fast float %1100, 1.250000e-01
  %1141 = fadd fast float %1140, %1133
  %1142 = fadd fast float %1141, %1127
  %1143 = fmul fast float %1136, %1086
  %1144 = fmul fast float %1139, %1087
  %1145 = fmul fast float %1142, %1088
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1107, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = add i32 %1147, 0
  %1149 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1148, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1149, %dx.types.Handle %25, float %1143, float %1144, float %1145, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1151 = extractvalue %dx.types.ResRet.f32 %1150, 0
  br label %1152

; <label>:1152                                    ; preds = %1073, %1062
  %1153 = phi float [ %1151, %1073 ], [ -1.000000e+00, %1062 ]
  %1154 = fadd fast float %1153, %1060
  %1155 = call float @dx.op.unary.f32(i32 7, float %1154)  ; Saturate(value)
  br label %1156

; <label>:1156                                    ; preds = %1152, %1050
  %1157 = phi float [ %1155, %1152 ], [ %1060, %1050 ]
  %1158 = fmul fast float %1157, %396
  br label %1159

; <label>:1159                                    ; preds = %1156, %1045
  %1160 = phi float [ %1158, %1156 ], [ %396, %1045 ]
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = and i32 %1162, 256
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1211, label %1165

; <label>:1165                                    ; preds = %1159
  %1166 = add i32 %32, 444
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = add i32 %1168, 0
  %1170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1169, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1171 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1170, %dx.types.Handle %68, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1172 = extractvalue %dx.types.ResRet.f32 %1171, 0
  %1173 = add i32 %32, 116
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = shl i32 %1175, 4
  %1177 = and i32 %1176, 32752
  %1178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1177)  ; LegacyF16ToF32(value)
  %1179 = lshr i32 %1175, 7
  %1180 = and i32 %1179, 32752
  %1181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1180)  ; LegacyF16ToF32(value)
  %1182 = fsub fast float 1.000000e+00, %1160
  %1183 = call float @dx.op.binary.f32(i32 35, float %1182, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1184 = bitcast float %1160 to i32
  %1185 = sitofp i32 %1184 to float
  %1186 = fadd fast float %1185, 0xC1CFBF8940000000
  %1187 = fmul fast float %1181, %1186
  %1188 = fadd fast float %1187, 0x41CFBF8940000000
  %1189 = fptosi float %1188 to i32
  %1190 = bitcast i32 %1189 to float
  %1191 = bitcast float %1183 to i32
  %1192 = sitofp i32 %1191 to float
  %1193 = fadd fast float %1192, 0xC1CFBF8940000000
  %1194 = fmul fast float %1193, %1181
  %1195 = fadd fast float %1194, 0x41CFBF8940000000
  %1196 = fptosi float %1195 to i32
  %1197 = bitcast i32 %1196 to float
  %1198 = fmul fast float %1190, %1178
  %1199 = fmul fast float %1197, %1178
  %1200 = fsub fast float %1183, %1198
  %1201 = fadd fast float %1199, %1183
  %1202 = call float @dx.op.unary.f32(i32 7, float %1200)  ; Saturate(value)
  %1203 = call float @dx.op.unary.f32(i32 7, float %1201)  ; Saturate(value)
  %1204 = fsub fast float %1172, %1202
  %1205 = fsub fast float %1203, %1202
  %1206 = bitcast float %1205 to i32
  %1207 = sub nsw i32 2129859010, %1206
  %1208 = bitcast i32 %1207 to float
  %1209 = fmul fast float %1208, %1204
  %1210 = call float @dx.op.unary.f32(i32 7, float %1209)  ; Saturate(value)
  br label %1211

; <label>:1211                                    ; preds = %1165, %1159
  %1212 = phi float [ %1210, %1165 ], [ %1160, %1159 ]
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = and i32 %1214, 128
  %1216 = icmp eq i32 %1215, 0
  br i1 %1216, label %1233, label %1217

; <label>:1217                                    ; preds = %1211
  %1218 = add i32 %32, 428
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = add i32 %1220, 0
  %1222 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1221, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1223 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1222, %dx.types.Handle %68, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1224 = extractvalue %dx.types.ResRet.f32 %1223, 0
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = and i32 %1226, 524288
  %1228 = icmp ne i32 %1227, 0
  %1229 = fcmp fast ogt float %1224, 0x3FE0101020000000
  %1230 = select i1 %1229, float 1.000000e+00, float 0.000000e+00
  %1231 = select i1 %1228, float %1230, float %1224
  %1232 = fmul fast float %1231, %1212
  br label %1233

; <label>:1233                                    ; preds = %1217, %1211
  %1234 = phi float [ %1232, %1217 ], [ %1212, %1211 ]
  %1235 = fcmp fast ult float %1234, 0x3F70101020000000
  br i1 %1235, label %1865, label %1236

; <label>:1236                                    ; preds = %1233
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = and i32 %1238, 16
  %1240 = icmp eq i32 %1239, 0
  br i1 %1240, label %1439, label %1241

; <label>:1241                                    ; preds = %1236
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = add i32 %32, 380
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = add i32 %1246, 0
  %1248 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1247, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1249 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1248, %dx.types.Handle %67, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1250 = extractvalue %dx.types.ResRet.f32 %1249, 0
  %1251 = extractvalue %dx.types.ResRet.f32 %1249, 1
  %1252 = extractvalue %dx.types.ResRet.f32 %1249, 2
  %1253 = extractvalue %dx.types.ResRet.f32 %1249, 3
  %1254 = and i32 %1243, 255
  %1255 = uitofp i32 %1254 to float
  %1256 = lshr i32 %1243, 8
  %1257 = and i32 %1256, 255
  %1258 = uitofp i32 %1257 to float
  %1259 = fmul fast float %1253, %1255
  %1260 = fadd fast float %1259, %1258
  %1261 = fmul fast float %1260, 0x3F70101000000000
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = and i32 %1263, 512
  %1265 = icmp eq i32 %1264, 0
  br i1 %1265, label %1274, label %1266

; <label>:1266                                    ; preds = %1241
  %1267 = add i32 %32, 460
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 0
  %1270 = add i32 %1269, 0
  %1271 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1270, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1272 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1271, %dx.types.Handle %68, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1273 = extractvalue %dx.types.ResRet.f32 %1272, 0
  br label %1274

; <label>:1274                                    ; preds = %1266, %1241
  %1275 = phi float [ %1273, %1266 ], [ 1.000000e+00, %1241 ]
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = and i32 %1277, 33554432
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %1386, label %1280

; <label>:1280                                    ; preds = %1274
  %1281 = add i32 %32, 240
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = and i32 %1283, 65535
  %1285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1284)  ; LegacyF16ToF32(value)
  %1286 = lshr i32 %1283, 16
  %1287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1286)  ; LegacyF16ToF32(value)
  %1288 = add i32 %32, 244
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = and i32 %1290, 65535
  %1292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1291)  ; LegacyF16ToF32(value)
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = lshr i32 %1294, 24
  %1296 = uitofp i32 %1295 to float
  %1297 = fmul fast float %1296, 0x3F70101020000000
  %1298 = and i32 %1294, 255
  %1299 = uitofp i32 %1298 to float
  %1300 = fmul fast float %1299, 0x3F70101020000000
  %1301 = lshr i32 %1294, 8
  %1302 = and i32 %1301, 255
  %1303 = uitofp i32 %1302 to float
  %1304 = fmul fast float %1303, 0x3F70101020000000
  %1305 = lshr i32 %1294, 16
  %1306 = and i32 %1305, 255
  %1307 = uitofp i32 %1306 to float
  %1308 = fmul fast float %1307, 0x3F70101020000000
  %1309 = add i32 %32, 236
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1309, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = lshr i32 %1311, 24
  %1313 = uitofp i32 %1312 to float
  %1314 = fmul fast float %1313, 0x3F70101020000000
  %1315 = and i32 %1311, 255
  %1316 = uitofp i32 %1315 to float
  %1317 = fmul fast float %1316, 0x3F70101020000000
  %1318 = lshr i32 %1311, 8
  %1319 = and i32 %1318, 255
  %1320 = uitofp i32 %1319 to float
  %1321 = fmul fast float %1320, 0x3F70101020000000
  %1322 = lshr i32 %1311, 16
  %1323 = and i32 %1322, 255
  %1324 = uitofp i32 %1323 to float
  %1325 = fmul fast float %1324, 0x3F70101020000000
  %1326 = bitcast float %1250 to i32
  %1327 = ashr i32 %1326, 1
  %1328 = sub nsw i32 1597463174, %1327
  %1329 = bitcast i32 %1328 to float
  %1330 = fmul fast float %1250, 5.000000e-01
  %1331 = fmul fast float %1329, %1329
  %1332 = fmul fast float %1331, %1330
  %1333 = fsub fast float 1.500000e+00, %1332
  %1334 = fmul fast float %1329, %1250
  %1335 = fmul fast float %1334, %1333
  %1336 = bitcast float %1251 to i32
  %1337 = ashr i32 %1336, 1
  %1338 = sub nsw i32 1597463174, %1337
  %1339 = bitcast i32 %1338 to float
  %1340 = fmul fast float %1251, 5.000000e-01
  %1341 = fmul fast float %1339, %1339
  %1342 = fmul fast float %1341, %1340
  %1343 = fsub fast float 1.500000e+00, %1342
  %1344 = fmul fast float %1339, %1251
  %1345 = fmul fast float %1344, %1343
  %1346 = bitcast float %1252 to i32
  %1347 = ashr i32 %1346, 1
  %1348 = sub nsw i32 1597463174, %1347
  %1349 = bitcast i32 %1348 to float
  %1350 = fmul fast float %1252, 5.000000e-01
  %1351 = fmul fast float %1349, %1349
  %1352 = fmul fast float %1351, %1350
  %1353 = fsub fast float 1.500000e+00, %1352
  %1354 = fmul fast float %1349, %1252
  %1355 = fmul fast float %1354, %1353
  %1356 = fsub fast float %1335, %1317
  %1357 = fsub fast float %1345, %1321
  %1358 = fsub fast float %1355, %1325
  %1359 = fmul fast float %1356, %1285
  %1360 = fmul fast float %1357, %1287
  %1361 = fmul fast float %1358, %1292
  %1362 = fadd fast float %1359, %1300
  %1363 = fadd fast float %1360, %1304
  %1364 = fadd fast float %1361, %1308
  %1365 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1366 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  %1367 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1368 = fmul fast float %1365, %1365
  %1369 = fmul fast float %1366, %1366
  %1370 = fmul fast float %1367, %1367
  %1371 = fsub fast float %1368, %1250
  %1372 = fsub fast float %1369, %1251
  %1373 = fsub fast float %1370, %1252
  %1374 = fmul fast float %1371, %1275
  %1375 = fmul fast float %1372, %1275
  %1376 = fmul fast float %1373, %1275
  %1377 = fadd fast float %1374, %1250
  %1378 = fadd fast float %1375, %1251
  %1379 = fadd fast float %1376, %1252
  %1380 = fadd fast float %1297, %1261
  %1381 = fsub fast float %1380, %1314
  %1382 = call float @dx.op.unary.f32(i32 7, float %1381)  ; Saturate(value)
  %1383 = fsub fast float %1382, %1261
  %1384 = fmul fast float %1383, %1275
  %1385 = fadd fast float %1384, %1261
  br label %1439

; <label>:1386                                    ; preds = %1274
  %1387 = and i32 %1277, 134217728
  %1388 = icmp eq i32 %1387, 0
  br i1 %1388, label %1423, label %1389

; <label>:1389                                    ; preds = %1386
  %1390 = call float @dx.op.unary.f32(i32 24, float %231)  ; Sqrt(value)
  %1391 = call float @dx.op.unary.f32(i32 24, float %235)  ; Sqrt(value)
  %1392 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %1393 = fadd fast float %1390, -5.000000e-01
  %1394 = fadd fast float %1391, -5.000000e-01
  %1395 = fadd fast float %1392, -5.000000e-01
  %1396 = fmul fast float %1393, %1275
  %1397 = fmul fast float %1394, %1275
  %1398 = fmul fast float %1395, %1275
  %1399 = fadd fast float %1396, 5.000000e-01
  %1400 = fadd fast float %1397, 5.000000e-01
  %1401 = fadd fast float %1398, 5.000000e-01
  %1402 = call float @dx.op.unary.f32(i32 24, float %1250)  ; Sqrt(value)
  %1403 = call float @dx.op.unary.f32(i32 24, float %1251)  ; Sqrt(value)
  %1404 = call float @dx.op.unary.f32(i32 24, float %1252)  ; Sqrt(value)
  %1405 = fmul fast float %1399, 2.000000e+00
  %1406 = fsub fast float 1.000000e+00, %1405
  %1407 = fmul fast float %1406, %1402
  %1408 = fadd fast float %1407, %1405
  %1409 = fmul fast float %1408, %1402
  %1410 = fmul fast float %1400, 2.000000e+00
  %1411 = fsub fast float 1.000000e+00, %1410
  %1412 = fmul fast float %1411, %1403
  %1413 = fadd fast float %1412, %1410
  %1414 = fmul fast float %1413, %1403
  %1415 = fmul fast float %1401, 2.000000e+00
  %1416 = fsub fast float 1.000000e+00, %1415
  %1417 = fmul fast float %1416, %1404
  %1418 = fadd fast float %1417, %1415
  %1419 = fmul fast float %1418, %1404
  %1420 = fmul fast float %1409, %1409
  %1421 = fmul fast float %1414, %1414
  %1422 = fmul fast float %1419, %1419
  br label %1439

; <label>:1423                                    ; preds = %1386
  %1424 = fmul fast float %231, %231
  %1425 = fmul fast float %235, %235
  %1426 = fmul fast float %239, %239
  %1427 = fadd fast float %1424, -1.000000e+00
  %1428 = fadd fast float %1425, -1.000000e+00
  %1429 = fadd fast float %1426, -1.000000e+00
  %1430 = fmul fast float %1275, %1427
  %1431 = fmul fast float %1275, %1428
  %1432 = fmul fast float %1275, %1429
  %1433 = fadd fast float %1430, 1.000000e+00
  %1434 = fadd fast float %1431, 1.000000e+00
  %1435 = fadd fast float %1432, 1.000000e+00
  %1436 = fmul fast float %1433, %1250
  %1437 = fmul fast float %1434, %1251
  %1438 = fmul fast float %1435, %1252
  br label %1439

; <label>:1439                                    ; preds = %1423, %1389, %1280, %1236
  %1440 = phi float [ %1385, %1280 ], [ %1261, %1389 ], [ %1261, %1423 ], [ 0x3FA23C0BE0000000, %1236 ]
  %1441 = phi float [ %1377, %1280 ], [ %1420, %1389 ], [ %1436, %1423 ], [ 1.000000e+00, %1236 ]
  %1442 = phi float [ %1378, %1280 ], [ %1421, %1389 ], [ %1437, %1423 ], [ 1.000000e+00, %1236 ]
  %1443 = phi float [ %1379, %1280 ], [ %1422, %1389 ], [ %1438, %1423 ], [ 1.000000e+00, %1236 ]
  %1444 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1445 = extractvalue %dx.types.CBufRet.i32 %1444, 1
  %1446 = and i32 %1445, 1
  %1447 = icmp ne i32 %1446, 0
  %1448 = add i32 %32, 356
  %1449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1448, i32 undef)  ; BufferLoad(srv,index,wot)
  %1450 = extractvalue %dx.types.ResRet.i32 %1449, 0
  %1451 = and i32 %1450, 32
  %1452 = icmp ne i32 %1451, 0
  %1453 = and i1 %1447, %1452
  %1454 = select i1 %1453, float 1.000000e+00, float %1441
  %1455 = select i1 %1453, float 0x3FD3333340000000, float %1442
  %1456 = select i1 %1453, float 0x3FD3333340000000, float %1443
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = and i32 %1458, 32
  %1460 = icmp eq i32 %1459, 0
  br i1 %1460, label %1533, label %1461

; <label>:1461                                    ; preds = %1439
  %1462 = add i32 %32, 108
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = add i32 %32, 396
  %1466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.i32 %1466, 0
  %1468 = add i32 %1467, 0
  %1469 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1468, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1470 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1469, %dx.types.Handle %67, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1471 = extractvalue %dx.types.ResRet.f32 %1470, 0
  %1472 = extractvalue %dx.types.ResRet.f32 %1470, 1
  %1473 = extractvalue %dx.types.ResRet.f32 %1470, 2
  %1474 = extractvalue %dx.types.ResRet.f32 %1470, 3
  %1475 = and i32 %1464, 255
  %1476 = uitofp i32 %1475 to float
  %1477 = lshr i32 %1464, 8
  %1478 = and i32 %1477, 255
  %1479 = uitofp i32 %1478 to float
  %1480 = lshr i32 %1464, 16
  %1481 = and i32 %1480, 255
  %1482 = uitofp i32 %1481 to float
  %1483 = fmul fast float %1482, 0x3F70101000000000
  %1484 = fmul fast float %1471, %1476
  %1485 = fadd fast float %1484, %1479
  %1486 = fmul fast float %1485, 0x3F70101000000000
  %1487 = fadd fast float %1472, -5.000000e-01
  %1488 = fadd fast float %1474, -5.000000e-01
  %1489 = fmul fast float %1487, %1483
  %1490 = fmul fast float %1488, %1483
  %1491 = fadd fast float %1489, 5.000000e-01
  %1492 = fadd fast float %1490, 5.000000e-01
  %1493 = fmul fast float %1491, 2.000000e+00
  %1494 = fadd fast float %1493, -1.000000e+00
  %1495 = fmul fast float %1492, 2.000000e+00
  %1496 = fadd fast float %1495, -1.000000e+00
  %1497 = fadd fast float %1494, %1496
  %1498 = fmul fast float %1497, 5.000000e-01
  %1499 = fsub fast float %1494, %1496
  %1500 = fmul fast float %1499, 5.000000e-01
  %1501 = call float @dx.op.unary.f32(i32 6, float %1498)  ; FAbs(value)
  %1502 = fsub fast float 1.000000e+00, %1501
  %1503 = call float @dx.op.unary.f32(i32 6, float %1500)  ; FAbs(value)
  %1504 = fsub fast float %1502, %1503
  %1505 = call float @dx.op.dot3.f32(i32 55, float %1498, float %1500, float %1504, float %1498, float %1500, float %1504)  ; Dot3(ax,ay,az,bx,by,bz)
  %1506 = call float @dx.op.unary.f32(i32 25, float %1505)  ; Rsqrt(value)
  %1507 = fmul fast float %1498, %1506
  %1508 = fmul fast float %1500, %1506
  %1509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1510 = extractvalue %dx.types.ResRet.i32 %1509, 0
  %1511 = and i32 %1510, 67108864
  %1512 = icmp eq i32 %1511, 0
  br i1 %1512, label %1529, label %1513

; <label>:1513                                    ; preds = %1461
  %1514 = add i32 %32, 296
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1514, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = and i32 %1516, 65535
  %1518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1517)  ; LegacyF16ToF32(value)
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = and i32 %1520, 65535
  %1522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1521)  ; LegacyF16ToF32(value)
  %1523 = lshr i32 %1516, 16
  %1524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1523)  ; LegacyF16ToF32(value)
  %1525 = fsub fast float %1486, %1524
  %1526 = fmul fast float %1525, %1518
  %1527 = fadd fast float %1526, %1522
  %1528 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  br label %1529

; <label>:1529                                    ; preds = %1513, %1461
  %1530 = phi float [ %1528, %1513 ], [ %1486, %1461 ]
  %1531 = call float @dx.op.dot2.f32(i32 54, float %1507, float %1508, float %950, float %951)  ; Dot2(ax,ay,bx,by)
  %1532 = call float @dx.op.dot2.f32(i32 54, float %1507, float %1508, float %952, float %953)  ; Dot2(ax,ay,bx,by)
  br label %1533

; <label>:1533                                    ; preds = %1529, %1439
  %1534 = phi float [ %1530, %1529 ], [ 0x3FD6666660000000, %1439 ]
  %1535 = phi float [ %1531, %1529 ], [ 0.000000e+00, %1439 ]
  %1536 = phi float [ %1532, %1529 ], [ 0.000000e+00, %1439 ]
  %1537 = phi float [ %1473, %1529 ], [ 1.000000e+00, %1439 ]
  %1538 = add i32 %32, 176
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1538, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = lshr i32 %1540, 22
  %1542 = shl nuw nsw i32 %1541, 5
  %1543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1542)  ; LegacyF16ToF32(value)
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = and i32 %1545, 64
  %1547 = icmp eq i32 %1546, 0
  br i1 %1547, label %1581, label %1548

; <label>:1548                                    ; preds = %1533
  %1549 = add i32 %32, 412
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1549, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = add i32 %1551, 0
  %1553 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1552, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = and i32 %1555, 131072
  %1557 = icmp eq i32 %1556, 0
  %1558 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1553, %dx.types.Handle %67, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1559 = extractvalue %dx.types.ResRet.f32 %1558, 0
  %1560 = extractvalue %dx.types.ResRet.f32 %1558, 1
  %1561 = extractvalue %dx.types.ResRet.f32 %1558, 2
  %1562 = fmul fast float %1559, %219
  %1563 = fmul fast float %1560, %222
  %1564 = fmul fast float %1561, %225
  br i1 %1557, label %1571, label %1565

; <label>:1565                                    ; preds = %1548
  %1566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1567 = extractvalue %dx.types.CBufRet.f32 %1566, 0
  %1568 = fmul fast float %1567, %1562
  %1569 = fmul fast float %1567, %1563
  %1570 = fmul fast float %1567, %1564
  br label %1571

; <label>:1571                                    ; preds = %1565, %1548
  %1572 = phi float [ %1568, %1565 ], [ %1562, %1548 ]
  %1573 = phi float [ %1569, %1565 ], [ %1563, %1548 ]
  %1574 = phi float [ %1570, %1565 ], [ %1564, %1548 ]
  %1575 = fmul fast float %1572, %1543
  %1576 = select i1 %171, float %1575, float %1572
  %1577 = call float @dx.op.dot3.f32(i32 55, float %1576, float %1573, float %1574, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1578 = select i1 %171, float 0.000000e+00, float %1572
  %1579 = select i1 %171, float %1577, float %1573
  %1580 = select i1 %171, float 0.000000e+00, float %1574
  br label %1581

; <label>:1581                                    ; preds = %1571, %1533
  %1582 = phi float [ %1578, %1571 ], [ 0.000000e+00, %1533 ]
  %1583 = phi float [ %1579, %1571 ], [ 0.000000e+00, %1533 ]
  %1584 = phi float [ %1580, %1571 ], [ 0.000000e+00, %1533 ]
  %1585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1586 = extractvalue %dx.types.ResRet.i32 %1585, 0
  %1587 = and i32 %1586, 10240
  %1588 = icmp eq i32 %1587, 0
  br i1 %1588, label %1633, label %1589

; <label>:1589                                    ; preds = %1581
  %1590 = add i32 %32, 476
  %1591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1590, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.i32 %1591, 0
  %1593 = add i32 %1592, 0
  %1594 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1593, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1595 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1594, %dx.types.Handle %68, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1596 = extractvalue %dx.types.ResRet.f32 %1595, 1
  %1597 = extractvalue %dx.types.ResRet.f32 %1595, 3
  %1598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.i32 %1598, 0
  %1600 = and i32 %1599, 1048576
  %1601 = icmp ne i32 %1600, 0
  %1602 = and i32 %1599, 8192
  %1603 = icmp eq i32 %1602, 0
  br i1 %1603, label %1619, label %1604

; <label>:1604                                    ; preds = %1589
  %1605 = extractvalue %dx.types.ResRet.f32 %1595, 2
  %1606 = select i1 %1601, float %1605, float %1596
  %1607 = extractvalue %dx.types.ResRet.f32 %1595, 0
  %1608 = select i1 %1601, float %1607, float %1596
  %1609 = add i32 %32, 112
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1609, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = lshr i32 %1611, 16
  %1613 = and i32 %1612, 255
  %1614 = uitofp i32 %1613 to float
  %1615 = fmul fast float %1614, 0x3F80101020000000
  %1616 = fmul fast float %1615, %1608
  %1617 = fmul fast float %1615, %1596
  %1618 = fmul fast float %1615, %1606
  br label %1619

; <label>:1619                                    ; preds = %1604, %1589
  %1620 = phi float [ %1616, %1604 ], [ 0.000000e+00, %1589 ]
  %1621 = phi float [ %1617, %1604 ], [ 0.000000e+00, %1589 ]
  %1622 = phi float [ %1618, %1604 ], [ 0.000000e+00, %1589 ]
  %1623 = and i32 %1599, 2048
  %1624 = icmp eq i32 %1623, 0
  br i1 %1624, label %1633, label %1625

; <label>:1625                                    ; preds = %1619
  %1626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1538, i32 undef)  ; BufferLoad(srv,index,wot)
  %1627 = extractvalue %dx.types.ResRet.i32 %1626, 0
  %1628 = shl i32 %1627, 4
  %1629 = and i32 %1628, 32752
  %1630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1629)  ; LegacyF16ToF32(value)
  %1631 = fmul fast float %1630, %1597
  %1632 = call float @dx.op.binary.f32(i32 35, float %1631, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1633

; <label>:1633                                    ; preds = %1625, %1619, %1581
  %1634 = phi float [ %1620, %1625 ], [ %1620, %1619 ], [ 0.000000e+00, %1581 ]
  %1635 = phi float [ %1621, %1625 ], [ %1621, %1619 ], [ 0.000000e+00, %1581 ]
  %1636 = phi float [ %1622, %1625 ], [ %1622, %1619 ], [ 0.000000e+00, %1581 ]
  %1637 = phi float [ %1632, %1625 ], [ 0x3F70101020000000, %1619 ], [ 0x3F70101020000000, %1581 ]
  %1638 = add i32 %32, 112
  %1639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1638, i32 undef)  ; BufferLoad(srv,index,wot)
  %1640 = extractvalue %dx.types.ResRet.i32 %1639, 0
  %1641 = and i32 %1640, 255
  %1642 = uitofp i32 %1641 to float
  %1643 = lshr i32 %1640, 8
  %1644 = and i32 %1643, 255
  %1645 = uitofp i32 %1644 to float
  %1646 = call float @dx.op.dot3.f32(i32 55, float %1454, float %1455, float %1456, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1647 = fmul fast float %1645, %1646
  %1648 = fadd fast float %1647, %1642
  %1649 = fmul fast float %1648, 0x3F70101020000000
  %1650 = call float @dx.op.unary.f32(i32 7, float %1649)  ; Saturate(value)
  br i1 %938, label %1651, label %1659

; <label>:1651                                    ; preds = %1633
  %1652 = fsub fast float 1.000000e+00, %1234
  %1653 = fmul fast float %1652, %922
  %1654 = fmul fast float %1652, %923
  %1655 = fmul fast float %1652, %924
  %1656 = fmul fast float %1652, %925
  %1657 = fmul fast float %1652, %926
  %1658 = fmul fast float %1652, %927
  br label %1659

; <label>:1659                                    ; preds = %1651, %1633
  %1660 = phi float [ %1653, %1651 ], [ %922, %1633 ]
  %1661 = phi float [ %1654, %1651 ], [ %923, %1633 ]
  %1662 = phi float [ %1655, %1651 ], [ %924, %1633 ]
  %1663 = phi float [ %1656, %1651 ], [ %925, %1633 ]
  %1664 = phi float [ %1657, %1651 ], [ %926, %1633 ]
  %1665 = phi float [ %1658, %1651 ], [ %927, %1633 ]
  %1666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1667 = extractvalue %dx.types.ResRet.i32 %1666, 0
  %1668 = and i32 %1667, 3
  %1669 = icmp eq i32 %1668, 3
  br i1 %1669, label %1748, label %1670

; <label>:1670                                    ; preds = %1659
  %1671 = and i32 %1667, 16
  %1672 = icmp ne i32 %1671, 0
  %1673 = select i1 %1672, float %1234, float 0.000000e+00
  %1674 = icmp eq i32 %1668, 0
  br i1 %1674, label %1675, label %1703

; <label>:1675                                    ; preds = %1670
  %1676 = and i32 %1667, 64
  %1677 = icmp ne i32 %1676, 0
  %1678 = select i1 %1677, float %1234, float 0.000000e+00
  %1679 = fsub fast float %1454, %1660
  %1680 = fsub fast float %1455, %1661
  %1681 = fsub fast float %1456, %1662
  %1682 = fmul fast float %1673, %1679
  %1683 = fmul fast float %1673, %1680
  %1684 = fmul fast float %1673, %1681
  %1685 = fadd fast float %1682, %1660
  %1686 = fadd fast float %1683, %1661
  %1687 = fadd fast float %1684, %1662
  %1688 = fsub fast float %1440, %931
  %1689 = fmul fast float %1673, %1688
  %1690 = fadd fast float %1689, %931
  %1691 = fsub fast float %1582, %1663
  %1692 = fsub fast float %1583, %1664
  %1693 = fsub fast float %1584, %1665
  %1694 = fmul fast float %1678, %1691
  %1695 = fmul fast float %1678, %1692
  %1696 = fmul fast float %1678, %1693
  %1697 = fadd fast float %1694, %1663
  %1698 = fadd fast float %1695, %1664
  %1699 = fadd fast float %1696, %1665
  %1700 = fsub fast float %1650, %936
  %1701 = fmul fast float %1673, %1700
  %1702 = fadd fast float %1701, %936
  br label %1748

; <label>:1703                                    ; preds = %1670
  %1704 = icmp eq i32 %1668, 1
  br i1 %1704, label %1705, label %1718

; <label>:1705                                    ; preds = %1703
  %1706 = fadd fast float %1454, -1.000000e+00
  %1707 = fadd fast float %1455, -1.000000e+00
  %1708 = fadd fast float %1456, -1.000000e+00
  %1709 = fmul fast float %1673, %1706
  %1710 = fmul fast float %1673, %1707
  %1711 = fmul fast float %1673, %1708
  %1712 = fadd fast float %1709, 1.000000e+00
  %1713 = fadd fast float %1710, 1.000000e+00
  %1714 = fadd fast float %1711, 1.000000e+00
  %1715 = fmul fast float %1712, %1660
  %1716 = fmul fast float %1713, %1661
  %1717 = fmul fast float %1714, %1662
  br label %1748

; <label>:1718                                    ; preds = %1703
  %1719 = icmp eq i32 %1668, 2
  br i1 %1719, label %1720, label %1748

; <label>:1720                                    ; preds = %1718
  %1721 = call float @dx.op.unary.f32(i32 24, float %1454)  ; Sqrt(value)
  %1722 = call float @dx.op.unary.f32(i32 24, float %1455)  ; Sqrt(value)
  %1723 = call float @dx.op.unary.f32(i32 24, float %1456)  ; Sqrt(value)
  %1724 = fadd fast float %1721, -5.000000e-01
  %1725 = fadd fast float %1722, -5.000000e-01
  %1726 = fadd fast float %1723, -5.000000e-01
  %1727 = fmul fast float %1724, %1673
  %1728 = fmul fast float %1725, %1673
  %1729 = fmul fast float %1726, %1673
  %1730 = fadd fast float %1727, 5.000000e-01
  %1731 = fadd fast float %1728, 5.000000e-01
  %1732 = fadd fast float %1729, 5.000000e-01
  %1733 = fmul fast float %1730, 2.000000e+00
  %1734 = fsub fast float 1.000000e+00, %1733
  %1735 = fmul fast float %1734, %1660
  %1736 = fadd fast float %1735, %1733
  %1737 = fmul fast float %1736, %1660
  %1738 = fmul fast float %1731, 2.000000e+00
  %1739 = fsub fast float 1.000000e+00, %1738
  %1740 = fmul fast float %1739, %1661
  %1741 = fadd fast float %1740, %1738
  %1742 = fmul fast float %1741, %1661
  %1743 = fmul fast float %1732, 2.000000e+00
  %1744 = fsub fast float 1.000000e+00, %1743
  %1745 = fmul fast float %1744, %1662
  %1746 = fadd fast float %1745, %1743
  %1747 = fmul fast float %1746, %1662
  br label %1748

; <label>:1748                                    ; preds = %1720, %1718, %1705, %1675, %1659
  %1749 = phi float [ %1660, %1659 ], [ %1737, %1720 ], [ %1660, %1718 ], [ %1715, %1705 ], [ %1685, %1675 ]
  %1750 = phi float [ %1661, %1659 ], [ %1742, %1720 ], [ %1661, %1718 ], [ %1716, %1705 ], [ %1686, %1675 ]
  %1751 = phi float [ %1662, %1659 ], [ %1747, %1720 ], [ %1662, %1718 ], [ %1717, %1705 ], [ %1687, %1675 ]
  %1752 = phi float [ %1663, %1659 ], [ %1663, %1720 ], [ %1663, %1718 ], [ %1663, %1705 ], [ %1697, %1675 ]
  %1753 = phi float [ %1664, %1659 ], [ %1664, %1720 ], [ %1664, %1718 ], [ %1664, %1705 ], [ %1698, %1675 ]
  %1754 = phi float [ %1665, %1659 ], [ %1665, %1720 ], [ %1665, %1718 ], [ %1665, %1705 ], [ %1699, %1675 ]
  %1755 = phi float [ %931, %1659 ], [ %931, %1720 ], [ %931, %1718 ], [ %931, %1705 ], [ %1690, %1675 ]
  %1756 = phi float [ %936, %1659 ], [ %936, %1720 ], [ %936, %1718 ], [ %936, %1705 ], [ %1702, %1675 ]
  %1757 = and i32 %1667, 12
  %1758 = icmp eq i32 %1757, 12
  br i1 %1758, label %1865, label %1759

; <label>:1759                                    ; preds = %1748
  %1760 = and i32 %1667, 2097184
  %1761 = icmp eq i32 %1760, 2097184
  %1762 = select i1 %1761, float %1234, float 0.000000e+00
  %1763 = and i32 %1667, 4194336
  %1764 = icmp eq i32 %1763, 4194336
  %1765 = select i1 %1764, float %1234, float 0.000000e+00
  %1766 = and i32 %1667, 8388640
  %1767 = icmp eq i32 %1766, 8388640
  %1768 = select i1 %1767, float %1234, float 0.000000e+00
  %1769 = and i32 %1667, 2048
  %1770 = icmp ne i32 %1769, 0
  %1771 = select i1 %1770, float %1234, float 0.000000e+00
  %1772 = and i32 %1667, 8192
  %1773 = icmp ne i32 %1772, 0
  %1774 = select i1 %1773, float %1234, float 0.000000e+00
  %1775 = icmp eq i32 %1757, 0
  br i1 %1775, label %1776, label %1801

; <label>:1776                                    ; preds = %1759
  %1777 = fsub fast float %1535, %920
  %1778 = fsub fast float %1536, %921
  %1779 = fmul fast float %1762, %1777
  %1780 = fmul fast float %1762, %1778
  %1781 = fadd fast float %1779, %920
  %1782 = fadd fast float %1780, %921
  %1783 = fsub fast float %1537, %934
  %1784 = fmul fast float %1765, %1783
  %1785 = fadd fast float %1784, %934
  %1786 = fsub fast float %1534, %933
  %1787 = fmul fast float %1768, %1786
  %1788 = fadd fast float %1787, %933
  %1789 = fsub fast float %1637, %935
  %1790 = fmul fast float %1771, %1789
  %1791 = fadd fast float %1790, %935
  %1792 = fsub fast float %1634, %928
  %1793 = fsub fast float %1635, %929
  %1794 = fsub fast float %1636, %930
  %1795 = fmul fast float %1774, %1792
  %1796 = fmul fast float %1774, %1793
  %1797 = fmul fast float %1774, %1794
  %1798 = fadd fast float %1795, %928
  %1799 = fadd fast float %1796, %929
  %1800 = fadd fast float %1797, %930
  br label %1865

; <label>:1801                                    ; preds = %1759
  %1802 = icmp eq i32 %1757, 4
  br i1 %1802, label %1803, label %1843

; <label>:1803                                    ; preds = %1801
  %1804 = fmul fast float %1762, %1535
  %1805 = fmul fast float %1762, %1536
  %1806 = fadd fast float %1804, %920
  %1807 = fadd fast float %1805, %921
  %1808 = call float @dx.op.binary.f32(i32 36, float %934, float %1537)  ; FMin(a,b)
  %1809 = fsub fast float %1808, %934
  %1810 = fmul fast float %1809, %1765
  %1811 = fadd fast float %1810, %934
  %1812 = fadd fast float %1534, %933
  %1813 = fmul fast float %1812, 0x3FF337FAE0000000
  %1814 = fmul fast float %933, %933
  %1815 = fmul fast float %1534, %1534
  %1816 = fadd fast float %1815, %1814
  %1817 = fmul fast float %1816, 0x3FE5152B00000000
  %1818 = fmul fast float %933, 0xBFCC1F85E0000000
  %1819 = fmul fast float %1818, %1534
  %1820 = fadd fast float %1819, 0xBFE1363700000000
  %1821 = fadd fast float %1820, %1813
  %1822 = fsub fast float %1821, %1817
  %1823 = fmul fast float %1812, 0x3FBA6F0D00000000
  %1824 = fmul fast float %1816, 0x3FD0432880000000
  %1825 = fmul fast float %933, 0xBFEF110800000000
  %1826 = fmul fast float %1825, %1534
  %1827 = fadd fast float %1826, 1.000000e+00
  %1828 = fsub fast float %1827, %1823
  %1829 = fadd fast float %1828, %1824
  %1830 = fdiv fast float %1822, %1829
  %1831 = call float @dx.op.unary.f32(i32 7, float %1830)  ; Saturate(value)
  %1832 = fsub fast float %1831, %933
  %1833 = fmul fast float %1832, %1768
  %1834 = fadd fast float %1833, %933
  %1835 = fmul fast float %1771, %1637
  %1836 = fadd fast float %1835, %935
  %1837 = fmul fast float %1774, %1634
  %1838 = fmul fast float %1774, %1635
  %1839 = fmul fast float %1774, %1636
  %1840 = fadd fast float %1837, %928
  %1841 = fadd fast float %1838, %929
  %1842 = fadd fast float %1839, %930
  br label %1865

; <label>:1843                                    ; preds = %1801
  %1844 = icmp eq i32 %1757, 8
  br i1 %1844, label %1845, label %1865

; <label>:1845                                    ; preds = %1843
  %1846 = fmul fast float %1762, %1535
  %1847 = fmul fast float %1762, %1536
  %1848 = fadd fast float %1846, %920
  %1849 = fadd fast float %1847, %921
  %1850 = call float @dx.op.binary.f32(i32 36, float %934, float %1537)  ; FMin(a,b)
  %1851 = fsub fast float %1850, %934
  %1852 = fmul fast float %1851, %1765
  %1853 = fadd fast float %1852, %934
  %1854 = fsub fast float %1534, %933
  %1855 = fmul fast float %1768, %1854
  %1856 = fadd fast float %1855, %933
  %1857 = fmul fast float %1771, %1637
  %1858 = fadd fast float %1857, %935
  %1859 = fmul fast float %1774, %1634
  %1860 = fmul fast float %1774, %1635
  %1861 = fmul fast float %1774, %1636
  %1862 = fadd fast float %1859, %928
  %1863 = fadd fast float %1860, %929
  %1864 = fadd fast float %1861, %930
  br label %1865

; <label>:1865                                    ; preds = %1845, %1843, %1803, %1776, %1748, %1233, %937, %919
  %1866 = phi float [ %920, %1748 ], [ %920, %1233 ], [ %920, %919 ], [ %1848, %1845 ], [ %920, %1843 ], [ %1806, %1803 ], [ %1781, %1776 ], [ %920, %937 ]
  %1867 = phi float [ %921, %1748 ], [ %921, %1233 ], [ %921, %919 ], [ %1849, %1845 ], [ %921, %1843 ], [ %1807, %1803 ], [ %1782, %1776 ], [ %921, %937 ]
  %1868 = phi float [ %1749, %1748 ], [ %922, %1233 ], [ %922, %919 ], [ %1749, %1845 ], [ %1749, %1843 ], [ %1749, %1803 ], [ %1749, %1776 ], [ %922, %937 ]
  %1869 = phi float [ %1750, %1748 ], [ %923, %1233 ], [ %923, %919 ], [ %1750, %1845 ], [ %1750, %1843 ], [ %1750, %1803 ], [ %1750, %1776 ], [ %923, %937 ]
  %1870 = phi float [ %1751, %1748 ], [ %924, %1233 ], [ %924, %919 ], [ %1751, %1845 ], [ %1751, %1843 ], [ %1751, %1803 ], [ %1751, %1776 ], [ %924, %937 ]
  %1871 = phi float [ %1752, %1748 ], [ %925, %1233 ], [ %925, %919 ], [ %1752, %1845 ], [ %1752, %1843 ], [ %1752, %1803 ], [ %1752, %1776 ], [ %925, %937 ]
  %1872 = phi float [ %1753, %1748 ], [ %926, %1233 ], [ %926, %919 ], [ %1753, %1845 ], [ %1753, %1843 ], [ %1753, %1803 ], [ %1753, %1776 ], [ %926, %937 ]
  %1873 = phi float [ %1754, %1748 ], [ %927, %1233 ], [ %927, %919 ], [ %1754, %1845 ], [ %1754, %1843 ], [ %1754, %1803 ], [ %1754, %1776 ], [ %927, %937 ]
  %1874 = phi float [ %928, %1748 ], [ %928, %1233 ], [ %928, %919 ], [ %1862, %1845 ], [ %928, %1843 ], [ %1840, %1803 ], [ %1798, %1776 ], [ %928, %937 ]
  %1875 = phi float [ %929, %1748 ], [ %929, %1233 ], [ %929, %919 ], [ %1863, %1845 ], [ %929, %1843 ], [ %1841, %1803 ], [ %1799, %1776 ], [ %929, %937 ]
  %1876 = phi float [ %930, %1748 ], [ %930, %1233 ], [ %930, %919 ], [ %1864, %1845 ], [ %930, %1843 ], [ %1842, %1803 ], [ %1800, %1776 ], [ %930, %937 ]
  %1877 = phi float [ %1755, %1748 ], [ %931, %1233 ], [ %931, %919 ], [ %1755, %1845 ], [ %1755, %1843 ], [ %1755, %1803 ], [ %1755, %1776 ], [ %931, %937 ]
  %1878 = phi float [ %933, %1748 ], [ %933, %1233 ], [ %933, %919 ], [ %1856, %1845 ], [ %933, %1843 ], [ %1834, %1803 ], [ %1788, %1776 ], [ %933, %937 ]
  %1879 = phi float [ %934, %1748 ], [ %934, %1233 ], [ %934, %919 ], [ %1853, %1845 ], [ %934, %1843 ], [ %1811, %1803 ], [ %1785, %1776 ], [ %934, %937 ]
  %1880 = phi float [ %935, %1748 ], [ %935, %1233 ], [ %935, %919 ], [ %1858, %1845 ], [ %935, %1843 ], [ %1836, %1803 ], [ %1791, %1776 ], [ %935, %937 ]
  %1881 = phi float [ %1756, %1748 ], [ %936, %1233 ], [ %936, %919 ], [ %1756, %1845 ], [ %1756, %1843 ], [ %1756, %1803 ], [ %1756, %1776 ], [ %936, %937 ]
  br i1 %346, label %2810, label %1882

; <label>:1882                                    ; preds = %1865
  %1883 = icmp ult i32 %399, 3
  %1884 = add i32 %32, 56
  %1885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.i32 %1885, 0
  %1887 = add i32 %32, 60
  %1888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.i32 %1888, 0
  %1890 = or i32 %1889, %1886
  %1891 = icmp eq i32 %1890, 0
  br i1 %1891, label %2810, label %1892

; <label>:1892                                    ; preds = %1882
  %1893 = and i32 %1886, 262144
  %1894 = icmp ne i32 %1893, 0
  %1895 = select i1 %1894, float %34, float 1.000000e+00
  %1896 = select i1 %1894, float %35, float 0.000000e+00
  %1897 = select i1 %1894, float %36, float 0.000000e+00
  %1898 = select i1 %1894, float %37, float 1.000000e+00
  %1899 = select i1 %1894, float %38, float %59
  %1900 = select i1 %1894, float %39, float %60
  %1901 = add i32 %32, 316
  %1902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1901, i32 undef)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.i32 %1902, 0
  %1904 = lshr i32 %1903, 16
  %1905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1904)  ; LegacyF16ToF32(value)
  %1906 = fmul fast float %1905, 0x3F50624DE0000000
  %1907 = add i32 %32, 120
  %1908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.i32 %1908, 0
  %1910 = lshr i32 %1909, 16
  %1911 = and i32 %1910, 255
  %1912 = lshr i32 %1909, 24
  %1913 = add i32 %32, 324
  %1914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1915 = extractvalue %dx.types.ResRet.i32 %1914, 0
  %1916 = and i32 %1915, 65535
  %1917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1916)  ; LegacyF16ToF32(value)
  %1918 = lshr i32 %1915, 16
  %1919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1918)  ; LegacyF16ToF32(value)
  %1920 = add i32 %32, 64
  %1921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1920, i32 undef)  ; BufferLoad(srv,index,wot)
  %1922 = extractvalue %dx.types.ResRet.i32 %1921, 0
  %1923 = lshr i32 %1922, 22
  %1924 = shl nuw nsw i32 %1923, 5
  %1925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1924)  ; LegacyF16ToF32(value)
  %1926 = shl i32 %1922, 4
  %1927 = and i32 %1926, 32752
  %1928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1927)  ; LegacyF16ToF32(value)
  %1929 = lshr i32 %1922, 7
  %1930 = and i32 %1929, 32752
  %1931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1930)  ; LegacyF16ToF32(value)
  %1932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1933 = extractvalue %dx.types.CBufRet.f32 %1932, 3
  %1934 = fmul fast float %1933, 1.000000e+03
  %1935 = fmul fast float %296, %1934
  %1936 = call float @dx.op.unary.f32(i32 22, float %1935)  ; Frc(value)
  %1937 = fadd fast float %1936, %286
  %1938 = fmul fast float %297, %1934
  %1939 = call float @dx.op.unary.f32(i32 22, float %1938)  ; Frc(value)
  %1940 = fadd fast float %1939, %288
  %1941 = fmul fast float %1906, %1934
  %1942 = call float @dx.op.unary.f32(i32 22, float %1941)  ; Frc(value)
  %1943 = fmul fast float %1942, 0x401921FB60000000
  %1944 = fadd fast float %1943, %1925
  %1945 = call float @dx.op.unary.f32(i32 13, float %1944)  ; Sin(value)
  %1946 = call float @dx.op.unary.f32(i32 12, float %1944)  ; Cos(value)
  %1947 = fsub fast float -0.000000e+00, %1945
  %1948 = fadd fast float %1899, -5.000000e-01
  %1949 = fadd fast float %1900, -5.000000e-01
  %1950 = fmul fast float %1917, %1948
  %1951 = fmul fast float %1919, %1949
  %1952 = fadd fast float %1950, 5.000000e-01
  %1953 = fadd fast float %1951, 5.000000e-01
  %1954 = fmul fast float %1928, %1952
  %1955 = fmul fast float %1931, %1953
  %1956 = fmul fast float %1946, %1954
  %1957 = call float @dx.op.tertiary.f32(i32 46, float %1947, float %1955, float %1956)  ; FMad(a,b,c)
  %1958 = fmul fast float %1945, %1954
  %1959 = call float @dx.op.tertiary.f32(i32 46, float %1946, float %1955, float %1958)  ; FMad(a,b,c)
  %1960 = fadd fast float %1937, %1957
  %1961 = fadd fast float %1940, %1959
  %1962 = icmp ugt i32 %1911, 1
  %1963 = icmp ugt i32 %1909, 33554431
  %1964 = or i1 %1963, %1962
  br i1 %1964, label %1965, label %1990

; <label>:1965                                    ; preds = %1892
  %1966 = add i32 %32, 260
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = lshr i32 %1968, 16
  %1970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1969)  ; LegacyF16ToF32(value)
  %1971 = fmul fast float %1933, %1970
  %1972 = call float @dx.op.unary.f32(i32 22, float %1971)  ; Frc(value)
  %1973 = mul nuw nsw i32 %1911, %1912
  %1974 = uitofp i32 %1973 to float
  %1975 = fmul fast float %1972, %1974
  %1976 = call float @dx.op.unary.f32(i32 27, float %1975)  ; Round_ni(value)
  %1977 = fptoui float %1976 to i32
  %1978 = urem i32 %1977, %1911
  %1979 = udiv i32 %1977, %1912
  %1980 = call float @dx.op.unary.f32(i32 22, float %1960)  ; Frc(value)
  %1981 = call float @dx.op.unary.f32(i32 22, float %1961)  ; Frc(value)
  %1982 = uitofp i32 %1978 to float
  %1983 = uitofp i32 %1979 to float
  %1984 = fadd fast float %1980, %1982
  %1985 = fadd fast float %1981, %1983
  %1986 = uitofp i32 %1911 to float
  %1987 = uitofp i32 %1912 to float
  %1988 = fdiv fast float %1984, %1986
  %1989 = fdiv fast float %1985, %1987
  br label %1990

; <label>:1990                                    ; preds = %1965, %1892
  %1991 = phi float [ %1988, %1965 ], [ %1960, %1892 ]
  %1992 = phi float [ %1989, %1965 ], [ %1961, %1892 ]
  %1993 = and i32 %1886, 16777216
  %1994 = icmp eq i32 %1993, 0
  br i1 %1994, label %2104, label %1995

; <label>:1995                                    ; preds = %1990
  %1996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1997 = extractvalue %dx.types.CBufRet.f32 %1996, 0
  %1998 = extractvalue %dx.types.CBufRet.f32 %1996, 1
  %1999 = extractvalue %dx.types.CBufRet.f32 %1996, 2
  %2000 = fadd fast float %1997, %127
  %2001 = fadd fast float %1998, %128
  %2002 = fadd fast float %1999, %129
  %2003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2004 = extractvalue %dx.types.CBufRet.f32 %2003, 0
  %2005 = call float @dx.op.unary.f32(i32 7, float %2004)  ; Saturate(value)
  %2006 = icmp eq i32 %33, 65535
  br i1 %2006, label %2101, label %2007

; <label>:2007                                    ; preds = %1995
  %2008 = lshr i32 %33, 1
  %2009 = shl i32 %2008, 2
  %2010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = and i32 %33, 1
  %2013 = icmp ne i32 %2012, 0
  %2014 = lshr i32 %2011, 16
  %2015 = and i32 %2011, 65535
  %2016 = select i1 %2013, i32 %2014, i32 %2015
  %2017 = icmp eq i32 %2016, 65535
  br i1 %2017, label %2097, label %2018

; <label>:2018                                    ; preds = %2007
  %2019 = mul nuw nsw i32 %2016, 40
  %2020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2019, i32 undef)  ; BufferLoad(srv,index,wot)
  %2021 = extractvalue %dx.types.ResRet.f32 %2020, 0
  %2022 = extractvalue %dx.types.ResRet.f32 %2020, 1
  %2023 = extractvalue %dx.types.ResRet.f32 %2020, 2
  %2024 = add nuw nsw i32 %2019, 12
  %2025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2024, i32 undef)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.f32 %2025, 0
  %2027 = extractvalue %dx.types.ResRet.f32 %2025, 1
  %2028 = extractvalue %dx.types.ResRet.f32 %2025, 2
  %2029 = add nuw nsw i32 %2019, 24
  %2030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.f32 %2030, 0
  %2032 = extractvalue %dx.types.ResRet.f32 %2030, 1
  %2033 = extractvalue %dx.types.ResRet.f32 %2030, 2
  %2034 = add nuw nsw i32 %2019, 36
  %2035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.f32 %2035, 0
  %2037 = fsub fast float %2000, %2021
  %2038 = fsub fast float %2001, %2022
  %2039 = fsub fast float %2002, %2023
  %2040 = fmul fast float %2036, %2037
  %2041 = fmul fast float %2036, %2038
  %2042 = fmul fast float %2036, %2039
  %2043 = call float @dx.op.unary.f32(i32 27, float %2040)  ; Round_ni(value)
  %2044 = call float @dx.op.unary.f32(i32 27, float %2041)  ; Round_ni(value)
  %2045 = call float @dx.op.unary.f32(i32 27, float %2042)  ; Round_ni(value)
  %2046 = fadd fast float %2043, 5.000000e-01
  %2047 = fadd fast float %2044, 5.000000e-01
  %2048 = fadd fast float %2045, 5.000000e-01
  %2049 = fmul fast float %2046, %2026
  %2050 = fmul fast float %2047, %2027
  %2051 = fmul fast float %2048, %2028
  %2052 = shl i32 %33, 2
  %2053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.i32 %2053, 0
  %2055 = add i32 %2054, 0
  %2056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2055, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2057 = call float @dx.op.unary.f32(i32 22, float %2049)  ; Frc(value)
  %2058 = call float @dx.op.unary.f32(i32 22, float %2050)  ; Frc(value)
  %2059 = call float @dx.op.unary.f32(i32 22, float %2051)  ; Frc(value)
  %2060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2056, %dx.types.Handle %27, float %2057, float %2058, float %2059, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2061 = extractvalue %dx.types.ResRet.f32 %2060, 0
  %2062 = extractvalue %dx.types.ResRet.f32 %2060, 1
  %2063 = extractvalue %dx.types.ResRet.f32 %2060, 2
  %2064 = fmul fast float %2061, 1.023000e+03
  %2065 = fmul fast float %2062, 1.023000e+03
  %2066 = fmul fast float %2063, 1.023000e+03
  %2067 = fadd fast float %2064, 5.000000e-01
  %2068 = fadd fast float %2065, 5.000000e-01
  %2069 = fadd fast float %2066, 5.000000e-01
  %2070 = call float @dx.op.unary.f32(i32 27, float %2067)  ; Round_ni(value)
  %2071 = call float @dx.op.unary.f32(i32 27, float %2068)  ; Round_ni(value)
  %2072 = call float @dx.op.unary.f32(i32 27, float %2069)  ; Round_ni(value)
  %2073 = fsub fast float %2040, %2043
  %2074 = fsub fast float %2041, %2044
  %2075 = fsub fast float %2042, %2045
  %2076 = fmul fast float %2073, 7.500000e-01
  %2077 = fmul fast float %2074, 7.500000e-01
  %2078 = fmul fast float %2075, 7.500000e-01
  %2079 = fadd fast float %2043, 1.250000e-01
  %2080 = fadd fast float %2079, %2076
  %2081 = fadd fast float %2080, %2070
  %2082 = fadd fast float %2044, 1.250000e-01
  %2083 = fadd fast float %2082, %2077
  %2084 = fadd fast float %2083, %2071
  %2085 = fadd fast float %2045, 1.250000e-01
  %2086 = fadd fast float %2085, %2078
  %2087 = fadd fast float %2086, %2072
  %2088 = fmul fast float %2081, %2031
  %2089 = fmul fast float %2084, %2032
  %2090 = fmul fast float %2087, %2033
  %2091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2092 = extractvalue %dx.types.ResRet.i32 %2091, 0
  %2093 = add i32 %2092, 0
  %2094 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2093, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2094, %dx.types.Handle %25, float %2088, float %2089, float %2090, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2096 = extractvalue %dx.types.ResRet.f32 %2095, 0
  br label %2097

; <label>:2097                                    ; preds = %2018, %2007
  %2098 = phi float [ %2096, %2018 ], [ -1.000000e+00, %2007 ]
  %2099 = fadd fast float %2098, %2005
  %2100 = call float @dx.op.unary.f32(i32 7, float %2099)  ; Saturate(value)
  br label %2101

; <label>:2101                                    ; preds = %2097, %1995
  %2102 = phi float [ %2100, %2097 ], [ %2005, %1995 ]
  %2103 = fmul fast float %2102, %395
  br label %2104

; <label>:2104                                    ; preds = %2101, %1990
  %2105 = phi float [ %2103, %2101 ], [ %395, %1990 ]
  %2106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2107 = extractvalue %dx.types.ResRet.i32 %2106, 0
  %2108 = and i32 %2107, 256
  %2109 = icmp eq i32 %2108, 0
  br i1 %2109, label %2156, label %2110

; <label>:2110                                    ; preds = %2104
  %2111 = add i32 %32, 448
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = add i32 %2113, 0
  %2115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2114, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2116 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2115, %dx.types.Handle %68, float %1991, float %1992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2117 = extractvalue %dx.types.ResRet.f32 %2116, 0
  %2118 = add i32 %32, 132
  %2119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2118, i32 undef)  ; BufferLoad(srv,index,wot)
  %2120 = extractvalue %dx.types.ResRet.i32 %2119, 0
  %2121 = shl i32 %2120, 4
  %2122 = and i32 %2121, 32752
  %2123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2122)  ; LegacyF16ToF32(value)
  %2124 = lshr i32 %2120, 7
  %2125 = and i32 %2124, 32752
  %2126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2125)  ; LegacyF16ToF32(value)
  %2127 = fsub fast float 1.000000e+00, %2105
  %2128 = call float @dx.op.binary.f32(i32 35, float %2127, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2129 = bitcast float %2105 to i32
  %2130 = sitofp i32 %2129 to float
  %2131 = fadd fast float %2130, 0xC1CFBF8940000000
  %2132 = fmul fast float %2126, %2131
  %2133 = fadd fast float %2132, 0x41CFBF8940000000
  %2134 = fptosi float %2133 to i32
  %2135 = bitcast i32 %2134 to float
  %2136 = bitcast float %2128 to i32
  %2137 = sitofp i32 %2136 to float
  %2138 = fadd fast float %2137, 0xC1CFBF8940000000
  %2139 = fmul fast float %2138, %2126
  %2140 = fadd fast float %2139, 0x41CFBF8940000000
  %2141 = fptosi float %2140 to i32
  %2142 = bitcast i32 %2141 to float
  %2143 = fmul fast float %2135, %2123
  %2144 = fmul fast float %2142, %2123
  %2145 = fsub fast float %2128, %2143
  %2146 = fadd fast float %2144, %2128
  %2147 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2148 = call float @dx.op.unary.f32(i32 7, float %2146)  ; Saturate(value)
  %2149 = fsub fast float %2117, %2147
  %2150 = fsub fast float %2148, %2147
  %2151 = bitcast float %2150 to i32
  %2152 = sub nsw i32 2129859010, %2151
  %2153 = bitcast i32 %2152 to float
  %2154 = fmul fast float %2153, %2149
  %2155 = call float @dx.op.unary.f32(i32 7, float %2154)  ; Saturate(value)
  br label %2156

; <label>:2156                                    ; preds = %2110, %2104
  %2157 = phi float [ %2155, %2110 ], [ %2105, %2104 ]
  %2158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.i32 %2158, 0
  %2160 = and i32 %2159, 128
  %2161 = icmp eq i32 %2160, 0
  br i1 %2161, label %2178, label %2162

; <label>:2162                                    ; preds = %2156
  %2163 = add i32 %32, 432
  %2164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2163, i32 undef)  ; BufferLoad(srv,index,wot)
  %2165 = extractvalue %dx.types.ResRet.i32 %2164, 0
  %2166 = add i32 %2165, 0
  %2167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2168 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2167, %dx.types.Handle %68, float %1991, float %1992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2169 = extractvalue %dx.types.ResRet.f32 %2168, 0
  %2170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2171 = extractvalue %dx.types.ResRet.i32 %2170, 0
  %2172 = and i32 %2171, 524288
  %2173 = icmp ne i32 %2172, 0
  %2174 = fcmp fast ogt float %2169, 0x3FE0101020000000
  %2175 = select i1 %2174, float 1.000000e+00, float 0.000000e+00
  %2176 = select i1 %2173, float %2175, float %2169
  %2177 = fmul fast float %2176, %2157
  br label %2178

; <label>:2178                                    ; preds = %2162, %2156
  %2179 = phi float [ %2177, %2162 ], [ %2157, %2156 ]
  %2180 = fcmp fast ult float %2179, 0x3F70101020000000
  br i1 %2180, label %2810, label %2181

; <label>:2181                                    ; preds = %2178
  %2182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2183 = extractvalue %dx.types.ResRet.i32 %2182, 0
  %2184 = and i32 %2183, 16
  %2185 = icmp eq i32 %2184, 0
  br i1 %2185, label %2384, label %2186

; <label>:2186                                    ; preds = %2181
  %2187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2188 = extractvalue %dx.types.ResRet.i32 %2187, 0
  %2189 = add i32 %32, 384
  %2190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2189, i32 undef)  ; BufferLoad(srv,index,wot)
  %2191 = extractvalue %dx.types.ResRet.i32 %2190, 0
  %2192 = add i32 %2191, 0
  %2193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2192, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2194 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2193, %dx.types.Handle %67, float %1991, float %1992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2195 = extractvalue %dx.types.ResRet.f32 %2194, 0
  %2196 = extractvalue %dx.types.ResRet.f32 %2194, 1
  %2197 = extractvalue %dx.types.ResRet.f32 %2194, 2
  %2198 = extractvalue %dx.types.ResRet.f32 %2194, 3
  %2199 = and i32 %2188, 255
  %2200 = uitofp i32 %2199 to float
  %2201 = lshr i32 %2188, 8
  %2202 = and i32 %2201, 255
  %2203 = uitofp i32 %2202 to float
  %2204 = fmul fast float %2198, %2200
  %2205 = fadd fast float %2204, %2203
  %2206 = fmul fast float %2205, 0x3F70101000000000
  %2207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = and i32 %2208, 512
  %2210 = icmp eq i32 %2209, 0
  br i1 %2210, label %2219, label %2211

; <label>:2211                                    ; preds = %2186
  %2212 = add i32 %32, 464
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2212, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = add i32 %2214, 0
  %2216 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2215, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2217 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2216, %dx.types.Handle %68, float %1991, float %1992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2218 = extractvalue %dx.types.ResRet.f32 %2217, 0
  br label %2219

; <label>:2219                                    ; preds = %2211, %2186
  %2220 = phi float [ %2218, %2211 ], [ 1.000000e+00, %2186 ]
  %2221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.i32 %2221, 0
  %2223 = and i32 %2222, 33554432
  %2224 = icmp eq i32 %2223, 0
  br i1 %2224, label %2331, label %2225

; <label>:2225                                    ; preds = %2219
  %2226 = add i32 %32, 256
  %2227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2226, i32 undef)  ; BufferLoad(srv,index,wot)
  %2228 = extractvalue %dx.types.ResRet.i32 %2227, 0
  %2229 = and i32 %2228, 65535
  %2230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2229)  ; LegacyF16ToF32(value)
  %2231 = lshr i32 %2228, 16
  %2232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2231)  ; LegacyF16ToF32(value)
  %2233 = add i32 %32, 260
  %2234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2233, i32 undef)  ; BufferLoad(srv,index,wot)
  %2235 = extractvalue %dx.types.ResRet.i32 %2234, 0
  %2236 = and i32 %2235, 65535
  %2237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2236)  ; LegacyF16ToF32(value)
  %2238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.i32 %2238, 0
  %2240 = lshr i32 %2239, 24
  %2241 = uitofp i32 %2240 to float
  %2242 = fmul fast float %2241, 0x3F70101020000000
  %2243 = and i32 %2239, 255
  %2244 = uitofp i32 %2243 to float
  %2245 = fmul fast float %2244, 0x3F70101020000000
  %2246 = lshr i32 %2239, 8
  %2247 = and i32 %2246, 255
  %2248 = uitofp i32 %2247 to float
  %2249 = fmul fast float %2248, 0x3F70101020000000
  %2250 = lshr i32 %2239, 16
  %2251 = and i32 %2250, 255
  %2252 = uitofp i32 %2251 to float
  %2253 = fmul fast float %2252, 0x3F70101020000000
  %2254 = add i32 %32, 252
  %2255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2254, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.i32 %2255, 0
  %2257 = lshr i32 %2256, 24
  %2258 = uitofp i32 %2257 to float
  %2259 = fmul fast float %2258, 0x3F70101020000000
  %2260 = and i32 %2256, 255
  %2261 = uitofp i32 %2260 to float
  %2262 = fmul fast float %2261, 0x3F70101020000000
  %2263 = lshr i32 %2256, 8
  %2264 = and i32 %2263, 255
  %2265 = uitofp i32 %2264 to float
  %2266 = fmul fast float %2265, 0x3F70101020000000
  %2267 = lshr i32 %2256, 16
  %2268 = and i32 %2267, 255
  %2269 = uitofp i32 %2268 to float
  %2270 = fmul fast float %2269, 0x3F70101020000000
  %2271 = bitcast float %2195 to i32
  %2272 = ashr i32 %2271, 1
  %2273 = sub nsw i32 1597463174, %2272
  %2274 = bitcast i32 %2273 to float
  %2275 = fmul fast float %2195, 5.000000e-01
  %2276 = fmul fast float %2274, %2274
  %2277 = fmul fast float %2276, %2275
  %2278 = fsub fast float 1.500000e+00, %2277
  %2279 = fmul fast float %2274, %2195
  %2280 = fmul fast float %2279, %2278
  %2281 = bitcast float %2196 to i32
  %2282 = ashr i32 %2281, 1
  %2283 = sub nsw i32 1597463174, %2282
  %2284 = bitcast i32 %2283 to float
  %2285 = fmul fast float %2196, 5.000000e-01
  %2286 = fmul fast float %2284, %2284
  %2287 = fmul fast float %2286, %2285
  %2288 = fsub fast float 1.500000e+00, %2287
  %2289 = fmul fast float %2284, %2196
  %2290 = fmul fast float %2289, %2288
  %2291 = bitcast float %2197 to i32
  %2292 = ashr i32 %2291, 1
  %2293 = sub nsw i32 1597463174, %2292
  %2294 = bitcast i32 %2293 to float
  %2295 = fmul fast float %2197, 5.000000e-01
  %2296 = fmul fast float %2294, %2294
  %2297 = fmul fast float %2296, %2295
  %2298 = fsub fast float 1.500000e+00, %2297
  %2299 = fmul fast float %2294, %2197
  %2300 = fmul fast float %2299, %2298
  %2301 = fsub fast float %2280, %2262
  %2302 = fsub fast float %2290, %2266
  %2303 = fsub fast float %2300, %2270
  %2304 = fmul fast float %2301, %2230
  %2305 = fmul fast float %2302, %2232
  %2306 = fmul fast float %2303, %2237
  %2307 = fadd fast float %2304, %2245
  %2308 = fadd fast float %2305, %2249
  %2309 = fadd fast float %2306, %2253
  %2310 = call float @dx.op.unary.f32(i32 7, float %2307)  ; Saturate(value)
  %2311 = call float @dx.op.unary.f32(i32 7, float %2308)  ; Saturate(value)
  %2312 = call float @dx.op.unary.f32(i32 7, float %2309)  ; Saturate(value)
  %2313 = fmul fast float %2310, %2310
  %2314 = fmul fast float %2311, %2311
  %2315 = fmul fast float %2312, %2312
  %2316 = fsub fast float %2313, %2195
  %2317 = fsub fast float %2314, %2196
  %2318 = fsub fast float %2315, %2197
  %2319 = fmul fast float %2316, %2220
  %2320 = fmul fast float %2317, %2220
  %2321 = fmul fast float %2318, %2220
  %2322 = fadd fast float %2319, %2195
  %2323 = fadd fast float %2320, %2196
  %2324 = fadd fast float %2321, %2197
  %2325 = fadd fast float %2242, %2206
  %2326 = fsub fast float %2325, %2259
  %2327 = call float @dx.op.unary.f32(i32 7, float %2326)  ; Saturate(value)
  %2328 = fsub fast float %2327, %2206
  %2329 = fmul fast float %2328, %2220
  %2330 = fadd fast float %2329, %2206
  br label %2384

; <label>:2331                                    ; preds = %2219
  %2332 = and i32 %2222, 134217728
  %2333 = icmp eq i32 %2332, 0
  br i1 %2333, label %2368, label %2334

; <label>:2334                                    ; preds = %2331
  %2335 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %2336 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %2337 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %2338 = fadd fast float %2335, -5.000000e-01
  %2339 = fadd fast float %2336, -5.000000e-01
  %2340 = fadd fast float %2337, -5.000000e-01
  %2341 = fmul fast float %2338, %2220
  %2342 = fmul fast float %2339, %2220
  %2343 = fmul fast float %2340, %2220
  %2344 = fadd fast float %2341, 5.000000e-01
  %2345 = fadd fast float %2342, 5.000000e-01
  %2346 = fadd fast float %2343, 5.000000e-01
  %2347 = call float @dx.op.unary.f32(i32 24, float %2195)  ; Sqrt(value)
  %2348 = call float @dx.op.unary.f32(i32 24, float %2196)  ; Sqrt(value)
  %2349 = call float @dx.op.unary.f32(i32 24, float %2197)  ; Sqrt(value)
  %2350 = fmul fast float %2344, 2.000000e+00
  %2351 = fsub fast float 1.000000e+00, %2350
  %2352 = fmul fast float %2351, %2347
  %2353 = fadd fast float %2352, %2350
  %2354 = fmul fast float %2353, %2347
  %2355 = fmul fast float %2345, 2.000000e+00
  %2356 = fsub fast float 1.000000e+00, %2355
  %2357 = fmul fast float %2356, %2348
  %2358 = fadd fast float %2357, %2355
  %2359 = fmul fast float %2358, %2348
  %2360 = fmul fast float %2346, 2.000000e+00
  %2361 = fsub fast float 1.000000e+00, %2360
  %2362 = fmul fast float %2361, %2349
  %2363 = fadd fast float %2362, %2360
  %2364 = fmul fast float %2363, %2349
  %2365 = fmul fast float %2354, %2354
  %2366 = fmul fast float %2359, %2359
  %2367 = fmul fast float %2364, %2364
  br label %2384

; <label>:2368                                    ; preds = %2331
  %2369 = fmul fast float %273, %273
  %2370 = fmul fast float %277, %277
  %2371 = fmul fast float %281, %281
  %2372 = fadd fast float %2369, -1.000000e+00
  %2373 = fadd fast float %2370, -1.000000e+00
  %2374 = fadd fast float %2371, -1.000000e+00
  %2375 = fmul fast float %2220, %2372
  %2376 = fmul fast float %2220, %2373
  %2377 = fmul fast float %2220, %2374
  %2378 = fadd fast float %2375, 1.000000e+00
  %2379 = fadd fast float %2376, 1.000000e+00
  %2380 = fadd fast float %2377, 1.000000e+00
  %2381 = fmul fast float %2378, %2195
  %2382 = fmul fast float %2379, %2196
  %2383 = fmul fast float %2380, %2197
  br label %2384

; <label>:2384                                    ; preds = %2368, %2334, %2225, %2181
  %2385 = phi float [ %2330, %2225 ], [ %2206, %2334 ], [ %2206, %2368 ], [ 0x3FA23C0BE0000000, %2181 ]
  %2386 = phi float [ %2322, %2225 ], [ %2365, %2334 ], [ %2381, %2368 ], [ 1.000000e+00, %2181 ]
  %2387 = phi float [ %2323, %2225 ], [ %2366, %2334 ], [ %2382, %2368 ], [ 1.000000e+00, %2181 ]
  %2388 = phi float [ %2324, %2225 ], [ %2367, %2334 ], [ %2383, %2368 ], [ 1.000000e+00, %2181 ]
  %2389 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2390 = extractvalue %dx.types.CBufRet.i32 %2389, 1
  %2391 = and i32 %2390, 1
  %2392 = icmp ne i32 %2391, 0
  %2393 = add i32 %32, 356
  %2394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2393, i32 undef)  ; BufferLoad(srv,index,wot)
  %2395 = extractvalue %dx.types.ResRet.i32 %2394, 0
  %2396 = and i32 %2395, 32
  %2397 = icmp ne i32 %2396, 0
  %2398 = and i1 %2392, %2397
  %2399 = select i1 %2398, float 1.000000e+00, float %2386
  %2400 = select i1 %2398, float 0x3FD3333340000000, float %2387
  %2401 = select i1 %2398, float 0x3FD3333340000000, float %2388
  %2402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2403 = extractvalue %dx.types.ResRet.i32 %2402, 0
  %2404 = and i32 %2403, 32
  %2405 = icmp eq i32 %2404, 0
  br i1 %2405, label %2478, label %2406

; <label>:2406                                    ; preds = %2384
  %2407 = add i32 %32, 124
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2407, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = add i32 %32, 400
  %2411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2410, i32 undef)  ; BufferLoad(srv,index,wot)
  %2412 = extractvalue %dx.types.ResRet.i32 %2411, 0
  %2413 = add i32 %2412, 0
  %2414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2413, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2415 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2414, %dx.types.Handle %67, float %1991, float %1992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2416 = extractvalue %dx.types.ResRet.f32 %2415, 0
  %2417 = extractvalue %dx.types.ResRet.f32 %2415, 1
  %2418 = extractvalue %dx.types.ResRet.f32 %2415, 2
  %2419 = extractvalue %dx.types.ResRet.f32 %2415, 3
  %2420 = and i32 %2409, 255
  %2421 = uitofp i32 %2420 to float
  %2422 = lshr i32 %2409, 8
  %2423 = and i32 %2422, 255
  %2424 = uitofp i32 %2423 to float
  %2425 = lshr i32 %2409, 16
  %2426 = and i32 %2425, 255
  %2427 = uitofp i32 %2426 to float
  %2428 = fmul fast float %2427, 0x3F70101000000000
  %2429 = fmul fast float %2416, %2421
  %2430 = fadd fast float %2429, %2424
  %2431 = fmul fast float %2430, 0x3F70101000000000
  %2432 = fadd fast float %2417, -5.000000e-01
  %2433 = fadd fast float %2419, -5.000000e-01
  %2434 = fmul fast float %2432, %2428
  %2435 = fmul fast float %2433, %2428
  %2436 = fadd fast float %2434, 5.000000e-01
  %2437 = fadd fast float %2435, 5.000000e-01
  %2438 = fmul fast float %2436, 2.000000e+00
  %2439 = fadd fast float %2438, -1.000000e+00
  %2440 = fmul fast float %2437, 2.000000e+00
  %2441 = fadd fast float %2440, -1.000000e+00
  %2442 = fadd fast float %2439, %2441
  %2443 = fmul fast float %2442, 5.000000e-01
  %2444 = fsub fast float %2439, %2441
  %2445 = fmul fast float %2444, 5.000000e-01
  %2446 = call float @dx.op.unary.f32(i32 6, float %2443)  ; FAbs(value)
  %2447 = fsub fast float 1.000000e+00, %2446
  %2448 = call float @dx.op.unary.f32(i32 6, float %2445)  ; FAbs(value)
  %2449 = fsub fast float %2447, %2448
  %2450 = call float @dx.op.dot3.f32(i32 55, float %2443, float %2445, float %2449, float %2443, float %2445, float %2449)  ; Dot3(ax,ay,az,bx,by,bz)
  %2451 = call float @dx.op.unary.f32(i32 25, float %2450)  ; Rsqrt(value)
  %2452 = fmul fast float %2443, %2451
  %2453 = fmul fast float %2445, %2451
  %2454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.i32 %2454, 0
  %2456 = and i32 %2455, 67108864
  %2457 = icmp eq i32 %2456, 0
  br i1 %2457, label %2474, label %2458

; <label>:2458                                    ; preds = %2406
  %2459 = add i32 %32, 312
  %2460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2459, i32 undef)  ; BufferLoad(srv,index,wot)
  %2461 = extractvalue %dx.types.ResRet.i32 %2460, 0
  %2462 = and i32 %2461, 65535
  %2463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2462)  ; LegacyF16ToF32(value)
  %2464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1901, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.i32 %2464, 0
  %2466 = and i32 %2465, 65535
  %2467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2466)  ; LegacyF16ToF32(value)
  %2468 = lshr i32 %2461, 16
  %2469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2468)  ; LegacyF16ToF32(value)
  %2470 = fsub fast float %2431, %2469
  %2471 = fmul fast float %2470, %2463
  %2472 = fadd fast float %2471, %2467
  %2473 = call float @dx.op.unary.f32(i32 7, float %2472)  ; Saturate(value)
  br label %2474

; <label>:2474                                    ; preds = %2458, %2406
  %2475 = phi float [ %2473, %2458 ], [ %2431, %2406 ]
  %2476 = call float @dx.op.dot2.f32(i32 54, float %2452, float %2453, float %1895, float %1896)  ; Dot2(ax,ay,bx,by)
  %2477 = call float @dx.op.dot2.f32(i32 54, float %2452, float %2453, float %1897, float %1898)  ; Dot2(ax,ay,bx,by)
  br label %2478

; <label>:2478                                    ; preds = %2474, %2384
  %2479 = phi float [ %2475, %2474 ], [ 0x3FD6666660000000, %2384 ]
  %2480 = phi float [ %2476, %2474 ], [ 0.000000e+00, %2384 ]
  %2481 = phi float [ %2477, %2474 ], [ 0.000000e+00, %2384 ]
  %2482 = phi float [ %2418, %2474 ], [ 1.000000e+00, %2384 ]
  %2483 = add i32 %32, 192
  %2484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2483, i32 undef)  ; BufferLoad(srv,index,wot)
  %2485 = extractvalue %dx.types.ResRet.i32 %2484, 0
  %2486 = lshr i32 %2485, 22
  %2487 = shl nuw nsw i32 %2486, 5
  %2488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2487)  ; LegacyF16ToF32(value)
  %2489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2490 = extractvalue %dx.types.ResRet.i32 %2489, 0
  %2491 = and i32 %2490, 64
  %2492 = icmp eq i32 %2491, 0
  br i1 %2492, label %2526, label %2493

; <label>:2493                                    ; preds = %2478
  %2494 = add i32 %32, 416
  %2495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2494, i32 undef)  ; BufferLoad(srv,index,wot)
  %2496 = extractvalue %dx.types.ResRet.i32 %2495, 0
  %2497 = add i32 %2496, 0
  %2498 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2497, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2500 = extractvalue %dx.types.ResRet.i32 %2499, 0
  %2501 = and i32 %2500, 131072
  %2502 = icmp eq i32 %2501, 0
  %2503 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2498, %dx.types.Handle %67, float %1991, float %1992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2504 = extractvalue %dx.types.ResRet.f32 %2503, 0
  %2505 = extractvalue %dx.types.ResRet.f32 %2503, 1
  %2506 = extractvalue %dx.types.ResRet.f32 %2503, 2
  %2507 = fmul fast float %2504, %261
  %2508 = fmul fast float %2505, %264
  %2509 = fmul fast float %2506, %267
  br i1 %2502, label %2516, label %2510

; <label>:2510                                    ; preds = %2493
  %2511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2512 = extractvalue %dx.types.CBufRet.f32 %2511, 0
  %2513 = fmul fast float %2512, %2507
  %2514 = fmul fast float %2512, %2508
  %2515 = fmul fast float %2512, %2509
  br label %2516

; <label>:2516                                    ; preds = %2510, %2493
  %2517 = phi float [ %2513, %2510 ], [ %2507, %2493 ]
  %2518 = phi float [ %2514, %2510 ], [ %2508, %2493 ]
  %2519 = phi float [ %2515, %2510 ], [ %2509, %2493 ]
  %2520 = fmul fast float %2517, %2488
  %2521 = select i1 %171, float %2520, float %2517
  %2522 = call float @dx.op.dot3.f32(i32 55, float %2521, float %2518, float %2519, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2523 = select i1 %171, float 0.000000e+00, float %2517
  %2524 = select i1 %171, float %2522, float %2518
  %2525 = select i1 %171, float 0.000000e+00, float %2519
  br label %2526

; <label>:2526                                    ; preds = %2516, %2478
  %2527 = phi float [ %2523, %2516 ], [ 0.000000e+00, %2478 ]
  %2528 = phi float [ %2524, %2516 ], [ 0.000000e+00, %2478 ]
  %2529 = phi float [ %2525, %2516 ], [ 0.000000e+00, %2478 ]
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = and i32 %2531, 10240
  %2533 = icmp eq i32 %2532, 0
  br i1 %2533, label %2578, label %2534

; <label>:2534                                    ; preds = %2526
  %2535 = add i32 %32, 480
  %2536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2535, i32 undef)  ; BufferLoad(srv,index,wot)
  %2537 = extractvalue %dx.types.ResRet.i32 %2536, 0
  %2538 = add i32 %2537, 0
  %2539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2538, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2540 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2539, %dx.types.Handle %68, float %1991, float %1992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2541 = extractvalue %dx.types.ResRet.f32 %2540, 1
  %2542 = extractvalue %dx.types.ResRet.f32 %2540, 3
  %2543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2544 = extractvalue %dx.types.ResRet.i32 %2543, 0
  %2545 = and i32 %2544, 1048576
  %2546 = icmp ne i32 %2545, 0
  %2547 = and i32 %2544, 8192
  %2548 = icmp eq i32 %2547, 0
  br i1 %2548, label %2564, label %2549

; <label>:2549                                    ; preds = %2534
  %2550 = extractvalue %dx.types.ResRet.f32 %2540, 2
  %2551 = select i1 %2546, float %2550, float %2541
  %2552 = extractvalue %dx.types.ResRet.f32 %2540, 0
  %2553 = select i1 %2546, float %2552, float %2541
  %2554 = add i32 %32, 128
  %2555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2554, i32 undef)  ; BufferLoad(srv,index,wot)
  %2556 = extractvalue %dx.types.ResRet.i32 %2555, 0
  %2557 = lshr i32 %2556, 16
  %2558 = and i32 %2557, 255
  %2559 = uitofp i32 %2558 to float
  %2560 = fmul fast float %2559, 0x3F80101020000000
  %2561 = fmul fast float %2560, %2553
  %2562 = fmul fast float %2560, %2541
  %2563 = fmul fast float %2560, %2551
  br label %2564

; <label>:2564                                    ; preds = %2549, %2534
  %2565 = phi float [ %2561, %2549 ], [ 0.000000e+00, %2534 ]
  %2566 = phi float [ %2562, %2549 ], [ 0.000000e+00, %2534 ]
  %2567 = phi float [ %2563, %2549 ], [ 0.000000e+00, %2534 ]
  %2568 = and i32 %2544, 2048
  %2569 = icmp eq i32 %2568, 0
  br i1 %2569, label %2578, label %2570

; <label>:2570                                    ; preds = %2564
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2483, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = shl i32 %2572, 4
  %2574 = and i32 %2573, 32752
  %2575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2574)  ; LegacyF16ToF32(value)
  %2576 = fmul fast float %2575, %2542
  %2577 = call float @dx.op.binary.f32(i32 35, float %2576, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2578

; <label>:2578                                    ; preds = %2570, %2564, %2526
  %2579 = phi float [ %2565, %2570 ], [ %2565, %2564 ], [ 0.000000e+00, %2526 ]
  %2580 = phi float [ %2566, %2570 ], [ %2566, %2564 ], [ 0.000000e+00, %2526 ]
  %2581 = phi float [ %2567, %2570 ], [ %2567, %2564 ], [ 0.000000e+00, %2526 ]
  %2582 = phi float [ %2577, %2570 ], [ 0x3F70101020000000, %2564 ], [ 0x3F70101020000000, %2526 ]
  %2583 = add i32 %32, 128
  %2584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %2585 = extractvalue %dx.types.ResRet.i32 %2584, 0
  %2586 = and i32 %2585, 255
  %2587 = uitofp i32 %2586 to float
  %2588 = lshr i32 %2585, 8
  %2589 = and i32 %2588, 255
  %2590 = uitofp i32 %2589 to float
  %2591 = call float @dx.op.dot3.f32(i32 55, float %2399, float %2400, float %2401, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2592 = fmul fast float %2590, %2591
  %2593 = fadd fast float %2592, %2587
  %2594 = fmul fast float %2593, 0x3F70101020000000
  %2595 = call float @dx.op.unary.f32(i32 7, float %2594)  ; Saturate(value)
  br i1 %1883, label %2596, label %2604

; <label>:2596                                    ; preds = %2578
  %2597 = fsub fast float 1.000000e+00, %2179
  %2598 = fmul fast float %2597, %1868
  %2599 = fmul fast float %2597, %1869
  %2600 = fmul fast float %2597, %1870
  %2601 = fmul fast float %2597, %1871
  %2602 = fmul fast float %2597, %1872
  %2603 = fmul fast float %2597, %1873
  br label %2604

; <label>:2604                                    ; preds = %2596, %2578
  %2605 = phi float [ %2598, %2596 ], [ %1868, %2578 ]
  %2606 = phi float [ %2599, %2596 ], [ %1869, %2578 ]
  %2607 = phi float [ %2600, %2596 ], [ %1870, %2578 ]
  %2608 = phi float [ %2601, %2596 ], [ %1871, %2578 ]
  %2609 = phi float [ %2602, %2596 ], [ %1872, %2578 ]
  %2610 = phi float [ %2603, %2596 ], [ %1873, %2578 ]
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = and i32 %2612, 3
  %2614 = icmp eq i32 %2613, 3
  br i1 %2614, label %2693, label %2615

; <label>:2615                                    ; preds = %2604
  %2616 = and i32 %2612, 16
  %2617 = icmp ne i32 %2616, 0
  %2618 = select i1 %2617, float %2179, float 0.000000e+00
  %2619 = icmp eq i32 %2613, 0
  br i1 %2619, label %2620, label %2648

; <label>:2620                                    ; preds = %2615
  %2621 = and i32 %2612, 64
  %2622 = icmp ne i32 %2621, 0
  %2623 = select i1 %2622, float %2179, float 0.000000e+00
  %2624 = fsub fast float %2399, %2605
  %2625 = fsub fast float %2400, %2606
  %2626 = fsub fast float %2401, %2607
  %2627 = fmul fast float %2618, %2624
  %2628 = fmul fast float %2618, %2625
  %2629 = fmul fast float %2618, %2626
  %2630 = fadd fast float %2627, %2605
  %2631 = fadd fast float %2628, %2606
  %2632 = fadd fast float %2629, %2607
  %2633 = fsub fast float %2385, %1877
  %2634 = fmul fast float %2618, %2633
  %2635 = fadd fast float %2634, %1877
  %2636 = fsub fast float %2527, %2608
  %2637 = fsub fast float %2528, %2609
  %2638 = fsub fast float %2529, %2610
  %2639 = fmul fast float %2623, %2636
  %2640 = fmul fast float %2623, %2637
  %2641 = fmul fast float %2623, %2638
  %2642 = fadd fast float %2639, %2608
  %2643 = fadd fast float %2640, %2609
  %2644 = fadd fast float %2641, %2610
  %2645 = fsub fast float %2595, %1881
  %2646 = fmul fast float %2618, %2645
  %2647 = fadd fast float %2646, %1881
  br label %2693

; <label>:2648                                    ; preds = %2615
  %2649 = icmp eq i32 %2613, 1
  br i1 %2649, label %2650, label %2663

; <label>:2650                                    ; preds = %2648
  %2651 = fadd fast float %2399, -1.000000e+00
  %2652 = fadd fast float %2400, -1.000000e+00
  %2653 = fadd fast float %2401, -1.000000e+00
  %2654 = fmul fast float %2618, %2651
  %2655 = fmul fast float %2618, %2652
  %2656 = fmul fast float %2618, %2653
  %2657 = fadd fast float %2654, 1.000000e+00
  %2658 = fadd fast float %2655, 1.000000e+00
  %2659 = fadd fast float %2656, 1.000000e+00
  %2660 = fmul fast float %2657, %2605
  %2661 = fmul fast float %2658, %2606
  %2662 = fmul fast float %2659, %2607
  br label %2693

; <label>:2663                                    ; preds = %2648
  %2664 = icmp eq i32 %2613, 2
  br i1 %2664, label %2665, label %2693

; <label>:2665                                    ; preds = %2663
  %2666 = call float @dx.op.unary.f32(i32 24, float %2399)  ; Sqrt(value)
  %2667 = call float @dx.op.unary.f32(i32 24, float %2400)  ; Sqrt(value)
  %2668 = call float @dx.op.unary.f32(i32 24, float %2401)  ; Sqrt(value)
  %2669 = fadd fast float %2666, -5.000000e-01
  %2670 = fadd fast float %2667, -5.000000e-01
  %2671 = fadd fast float %2668, -5.000000e-01
  %2672 = fmul fast float %2669, %2618
  %2673 = fmul fast float %2670, %2618
  %2674 = fmul fast float %2671, %2618
  %2675 = fadd fast float %2672, 5.000000e-01
  %2676 = fadd fast float %2673, 5.000000e-01
  %2677 = fadd fast float %2674, 5.000000e-01
  %2678 = fmul fast float %2675, 2.000000e+00
  %2679 = fsub fast float 1.000000e+00, %2678
  %2680 = fmul fast float %2679, %2605
  %2681 = fadd fast float %2680, %2678
  %2682 = fmul fast float %2681, %2605
  %2683 = fmul fast float %2676, 2.000000e+00
  %2684 = fsub fast float 1.000000e+00, %2683
  %2685 = fmul fast float %2684, %2606
  %2686 = fadd fast float %2685, %2683
  %2687 = fmul fast float %2686, %2606
  %2688 = fmul fast float %2677, 2.000000e+00
  %2689 = fsub fast float 1.000000e+00, %2688
  %2690 = fmul fast float %2689, %2607
  %2691 = fadd fast float %2690, %2688
  %2692 = fmul fast float %2691, %2607
  br label %2693

; <label>:2693                                    ; preds = %2665, %2663, %2650, %2620, %2604
  %2694 = phi float [ %2605, %2604 ], [ %2682, %2665 ], [ %2605, %2663 ], [ %2660, %2650 ], [ %2630, %2620 ]
  %2695 = phi float [ %2606, %2604 ], [ %2687, %2665 ], [ %2606, %2663 ], [ %2661, %2650 ], [ %2631, %2620 ]
  %2696 = phi float [ %2607, %2604 ], [ %2692, %2665 ], [ %2607, %2663 ], [ %2662, %2650 ], [ %2632, %2620 ]
  %2697 = phi float [ %2608, %2604 ], [ %2608, %2665 ], [ %2608, %2663 ], [ %2608, %2650 ], [ %2642, %2620 ]
  %2698 = phi float [ %2609, %2604 ], [ %2609, %2665 ], [ %2609, %2663 ], [ %2609, %2650 ], [ %2643, %2620 ]
  %2699 = phi float [ %2610, %2604 ], [ %2610, %2665 ], [ %2610, %2663 ], [ %2610, %2650 ], [ %2644, %2620 ]
  %2700 = phi float [ %1877, %2604 ], [ %1877, %2665 ], [ %1877, %2663 ], [ %1877, %2650 ], [ %2635, %2620 ]
  %2701 = phi float [ %1881, %2604 ], [ %1881, %2665 ], [ %1881, %2663 ], [ %1881, %2650 ], [ %2647, %2620 ]
  %2702 = and i32 %2612, 12
  %2703 = icmp eq i32 %2702, 12
  br i1 %2703, label %2810, label %2704

; <label>:2704                                    ; preds = %2693
  %2705 = and i32 %2612, 2097184
  %2706 = icmp eq i32 %2705, 2097184
  %2707 = select i1 %2706, float %2179, float 0.000000e+00
  %2708 = and i32 %2612, 4194336
  %2709 = icmp eq i32 %2708, 4194336
  %2710 = select i1 %2709, float %2179, float 0.000000e+00
  %2711 = and i32 %2612, 8388640
  %2712 = icmp eq i32 %2711, 8388640
  %2713 = select i1 %2712, float %2179, float 0.000000e+00
  %2714 = and i32 %2612, 2048
  %2715 = icmp ne i32 %2714, 0
  %2716 = select i1 %2715, float %2179, float 0.000000e+00
  %2717 = and i32 %2612, 8192
  %2718 = icmp ne i32 %2717, 0
  %2719 = select i1 %2718, float %2179, float 0.000000e+00
  %2720 = icmp eq i32 %2702, 0
  br i1 %2720, label %2721, label %2746

; <label>:2721                                    ; preds = %2704
  %2722 = fsub fast float %2480, %1866
  %2723 = fsub fast float %2481, %1867
  %2724 = fmul fast float %2707, %2722
  %2725 = fmul fast float %2707, %2723
  %2726 = fadd fast float %2724, %1866
  %2727 = fadd fast float %2725, %1867
  %2728 = fsub fast float %2482, %1879
  %2729 = fmul fast float %2710, %2728
  %2730 = fadd fast float %2729, %1879
  %2731 = fsub fast float %2479, %1878
  %2732 = fmul fast float %2713, %2731
  %2733 = fadd fast float %2732, %1878
  %2734 = fsub fast float %2582, %1880
  %2735 = fmul fast float %2716, %2734
  %2736 = fadd fast float %2735, %1880
  %2737 = fsub fast float %2579, %1874
  %2738 = fsub fast float %2580, %1875
  %2739 = fsub fast float %2581, %1876
  %2740 = fmul fast float %2719, %2737
  %2741 = fmul fast float %2719, %2738
  %2742 = fmul fast float %2719, %2739
  %2743 = fadd fast float %2740, %1874
  %2744 = fadd fast float %2741, %1875
  %2745 = fadd fast float %2742, %1876
  br label %2810

; <label>:2746                                    ; preds = %2704
  %2747 = icmp eq i32 %2702, 4
  br i1 %2747, label %2748, label %2788

; <label>:2748                                    ; preds = %2746
  %2749 = fmul fast float %2707, %2480
  %2750 = fmul fast float %2707, %2481
  %2751 = fadd fast float %2749, %1866
  %2752 = fadd fast float %2750, %1867
  %2753 = call float @dx.op.binary.f32(i32 36, float %1879, float %2482)  ; FMin(a,b)
  %2754 = fsub fast float %2753, %1879
  %2755 = fmul fast float %2754, %2710
  %2756 = fadd fast float %2755, %1879
  %2757 = fadd fast float %2479, %1878
  %2758 = fmul fast float %2757, 0x3FF337FAE0000000
  %2759 = fmul fast float %1878, %1878
  %2760 = fmul fast float %2479, %2479
  %2761 = fadd fast float %2760, %2759
  %2762 = fmul fast float %2761, 0x3FE5152B00000000
  %2763 = fmul fast float %1878, 0xBFCC1F85E0000000
  %2764 = fmul fast float %2763, %2479
  %2765 = fadd fast float %2764, 0xBFE1363700000000
  %2766 = fadd fast float %2765, %2758
  %2767 = fsub fast float %2766, %2762
  %2768 = fmul fast float %2757, 0x3FBA6F0D00000000
  %2769 = fmul fast float %2761, 0x3FD0432880000000
  %2770 = fmul fast float %1878, 0xBFEF110800000000
  %2771 = fmul fast float %2770, %2479
  %2772 = fadd fast float %2771, 1.000000e+00
  %2773 = fsub fast float %2772, %2768
  %2774 = fadd fast float %2773, %2769
  %2775 = fdiv fast float %2767, %2774
  %2776 = call float @dx.op.unary.f32(i32 7, float %2775)  ; Saturate(value)
  %2777 = fsub fast float %2776, %1878
  %2778 = fmul fast float %2777, %2713
  %2779 = fadd fast float %2778, %1878
  %2780 = fmul fast float %2716, %2582
  %2781 = fadd fast float %2780, %1880
  %2782 = fmul fast float %2719, %2579
  %2783 = fmul fast float %2719, %2580
  %2784 = fmul fast float %2719, %2581
  %2785 = fadd fast float %2782, %1874
  %2786 = fadd fast float %2783, %1875
  %2787 = fadd fast float %2784, %1876
  br label %2810

; <label>:2788                                    ; preds = %2746
  %2789 = icmp eq i32 %2702, 8
  br i1 %2789, label %2790, label %2810

; <label>:2790                                    ; preds = %2788
  %2791 = fmul fast float %2707, %2480
  %2792 = fmul fast float %2707, %2481
  %2793 = fadd fast float %2791, %1866
  %2794 = fadd fast float %2792, %1867
  %2795 = call float @dx.op.binary.f32(i32 36, float %1879, float %2482)  ; FMin(a,b)
  %2796 = fsub fast float %2795, %1879
  %2797 = fmul fast float %2796, %2710
  %2798 = fadd fast float %2797, %1879
  %2799 = fsub fast float %2479, %1878
  %2800 = fmul fast float %2713, %2799
  %2801 = fadd fast float %2800, %1878
  %2802 = fmul fast float %2716, %2582
  %2803 = fadd fast float %2802, %1880
  %2804 = fmul fast float %2719, %2579
  %2805 = fmul fast float %2719, %2580
  %2806 = fmul fast float %2719, %2581
  %2807 = fadd fast float %2804, %1874
  %2808 = fadd fast float %2805, %1875
  %2809 = fadd fast float %2806, %1876
  br label %2810

; <label>:2810                                    ; preds = %2790, %2788, %2748, %2721, %2693, %2178, %1882, %1865
  %2811 = phi float [ %1866, %2693 ], [ %1866, %2178 ], [ %1866, %1865 ], [ %2793, %2790 ], [ %1866, %2788 ], [ %2751, %2748 ], [ %2726, %2721 ], [ %1866, %1882 ]
  %2812 = phi float [ %1867, %2693 ], [ %1867, %2178 ], [ %1867, %1865 ], [ %2794, %2790 ], [ %1867, %2788 ], [ %2752, %2748 ], [ %2727, %2721 ], [ %1867, %1882 ]
  %2813 = phi float [ %2694, %2693 ], [ %1868, %2178 ], [ %1868, %1865 ], [ %2694, %2790 ], [ %2694, %2788 ], [ %2694, %2748 ], [ %2694, %2721 ], [ %1868, %1882 ]
  %2814 = phi float [ %2695, %2693 ], [ %1869, %2178 ], [ %1869, %1865 ], [ %2695, %2790 ], [ %2695, %2788 ], [ %2695, %2748 ], [ %2695, %2721 ], [ %1869, %1882 ]
  %2815 = phi float [ %2696, %2693 ], [ %1870, %2178 ], [ %1870, %1865 ], [ %2696, %2790 ], [ %2696, %2788 ], [ %2696, %2748 ], [ %2696, %2721 ], [ %1870, %1882 ]
  %2816 = phi float [ %2697, %2693 ], [ %1871, %2178 ], [ %1871, %1865 ], [ %2697, %2790 ], [ %2697, %2788 ], [ %2697, %2748 ], [ %2697, %2721 ], [ %1871, %1882 ]
  %2817 = phi float [ %2698, %2693 ], [ %1872, %2178 ], [ %1872, %1865 ], [ %2698, %2790 ], [ %2698, %2788 ], [ %2698, %2748 ], [ %2698, %2721 ], [ %1872, %1882 ]
  %2818 = phi float [ %2699, %2693 ], [ %1873, %2178 ], [ %1873, %1865 ], [ %2699, %2790 ], [ %2699, %2788 ], [ %2699, %2748 ], [ %2699, %2721 ], [ %1873, %1882 ]
  %2819 = phi float [ %1874, %2693 ], [ %1874, %2178 ], [ %1874, %1865 ], [ %2807, %2790 ], [ %1874, %2788 ], [ %2785, %2748 ], [ %2743, %2721 ], [ %1874, %1882 ]
  %2820 = phi float [ %1875, %2693 ], [ %1875, %2178 ], [ %1875, %1865 ], [ %2808, %2790 ], [ %1875, %2788 ], [ %2786, %2748 ], [ %2744, %2721 ], [ %1875, %1882 ]
  %2821 = phi float [ %1876, %2693 ], [ %1876, %2178 ], [ %1876, %1865 ], [ %2809, %2790 ], [ %1876, %2788 ], [ %2787, %2748 ], [ %2745, %2721 ], [ %1876, %1882 ]
  %2822 = phi float [ %2700, %2693 ], [ %1877, %2178 ], [ %1877, %1865 ], [ %2700, %2790 ], [ %2700, %2788 ], [ %2700, %2748 ], [ %2700, %2721 ], [ %1877, %1882 ]
  %2823 = phi float [ %1878, %2693 ], [ %1878, %2178 ], [ %1878, %1865 ], [ %2801, %2790 ], [ %1878, %2788 ], [ %2779, %2748 ], [ %2733, %2721 ], [ %1878, %1882 ]
  %2824 = phi float [ %1879, %2693 ], [ %1879, %2178 ], [ %1879, %1865 ], [ %2798, %2790 ], [ %1879, %2788 ], [ %2756, %2748 ], [ %2730, %2721 ], [ %1879, %1882 ]
  %2825 = phi float [ %1880, %2693 ], [ %1880, %2178 ], [ %1880, %1865 ], [ %2803, %2790 ], [ %1880, %2788 ], [ %2781, %2748 ], [ %2736, %2721 ], [ %1880, %1882 ]
  %2826 = phi float [ %2701, %2693 ], [ %1881, %2178 ], [ %1881, %1865 ], [ %2701, %2790 ], [ %2701, %2788 ], [ %2701, %2748 ], [ %2701, %2721 ], [ %1881, %1882 ]
  br i1 %348, label %3755, label %2827

; <label>:2827                                    ; preds = %2810
  %2828 = icmp ult i32 %399, 4
  %2829 = add i32 %32, 72
  %2830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %2831 = extractvalue %dx.types.ResRet.i32 %2830, 0
  %2832 = add i32 %32, 76
  %2833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2834 = extractvalue %dx.types.ResRet.i32 %2833, 0
  %2835 = or i32 %2834, %2831
  %2836 = icmp eq i32 %2835, 0
  br i1 %2836, label %3755, label %2837

; <label>:2837                                    ; preds = %2827
  %2838 = and i32 %2831, 262144
  %2839 = icmp ne i32 %2838, 0
  %2840 = select i1 %2839, float %34, float 1.000000e+00
  %2841 = select i1 %2839, float %35, float 0.000000e+00
  %2842 = select i1 %2839, float %36, float 0.000000e+00
  %2843 = select i1 %2839, float %37, float 1.000000e+00
  %2844 = select i1 %2839, float %38, float %59
  %2845 = select i1 %2839, float %39, float %60
  %2846 = add i32 %32, 332
  %2847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %2848 = extractvalue %dx.types.ResRet.i32 %2847, 0
  %2849 = lshr i32 %2848, 16
  %2850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2849)  ; LegacyF16ToF32(value)
  %2851 = fmul fast float %2850, 0x3F50624DE0000000
  %2852 = add i32 %32, 136
  %2853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2854 = extractvalue %dx.types.ResRet.i32 %2853, 0
  %2855 = lshr i32 %2854, 16
  %2856 = and i32 %2855, 255
  %2857 = lshr i32 %2854, 24
  %2858 = add i32 %32, 340
  %2859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2860 = extractvalue %dx.types.ResRet.i32 %2859, 0
  %2861 = and i32 %2860, 65535
  %2862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2861)  ; LegacyF16ToF32(value)
  %2863 = lshr i32 %2860, 16
  %2864 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2863)  ; LegacyF16ToF32(value)
  %2865 = add i32 %32, 80
  %2866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2865, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.i32 %2866, 0
  %2868 = lshr i32 %2867, 22
  %2869 = shl nuw nsw i32 %2868, 5
  %2870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2869)  ; LegacyF16ToF32(value)
  %2871 = shl i32 %2867, 4
  %2872 = and i32 %2871, 32752
  %2873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2872)  ; LegacyF16ToF32(value)
  %2874 = lshr i32 %2867, 7
  %2875 = and i32 %2874, 32752
  %2876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2875)  ; LegacyF16ToF32(value)
  %2877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2878 = extractvalue %dx.types.CBufRet.f32 %2877, 3
  %2879 = fmul fast float %2878, 1.000000e+03
  %2880 = fmul fast float %338, %2879
  %2881 = call float @dx.op.unary.f32(i32 22, float %2880)  ; Frc(value)
  %2882 = fadd fast float %2881, %328
  %2883 = fmul fast float %339, %2879
  %2884 = call float @dx.op.unary.f32(i32 22, float %2883)  ; Frc(value)
  %2885 = fadd fast float %2884, %330
  %2886 = fmul fast float %2851, %2879
  %2887 = call float @dx.op.unary.f32(i32 22, float %2886)  ; Frc(value)
  %2888 = fmul fast float %2887, 0x401921FB60000000
  %2889 = fadd fast float %2888, %2870
  %2890 = call float @dx.op.unary.f32(i32 13, float %2889)  ; Sin(value)
  %2891 = call float @dx.op.unary.f32(i32 12, float %2889)  ; Cos(value)
  %2892 = fsub fast float -0.000000e+00, %2890
  %2893 = fadd fast float %2844, -5.000000e-01
  %2894 = fadd fast float %2845, -5.000000e-01
  %2895 = fmul fast float %2862, %2893
  %2896 = fmul fast float %2864, %2894
  %2897 = fadd fast float %2895, 5.000000e-01
  %2898 = fadd fast float %2896, 5.000000e-01
  %2899 = fmul fast float %2873, %2897
  %2900 = fmul fast float %2876, %2898
  %2901 = fmul fast float %2891, %2899
  %2902 = call float @dx.op.tertiary.f32(i32 46, float %2892, float %2900, float %2901)  ; FMad(a,b,c)
  %2903 = fmul fast float %2890, %2899
  %2904 = call float @dx.op.tertiary.f32(i32 46, float %2891, float %2900, float %2903)  ; FMad(a,b,c)
  %2905 = fadd fast float %2882, %2902
  %2906 = fadd fast float %2885, %2904
  %2907 = icmp ugt i32 %2856, 1
  %2908 = icmp ugt i32 %2854, 33554431
  %2909 = or i1 %2908, %2907
  br i1 %2909, label %2910, label %2935

; <label>:2910                                    ; preds = %2837
  %2911 = add i32 %32, 276
  %2912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2913 = extractvalue %dx.types.ResRet.i32 %2912, 0
  %2914 = lshr i32 %2913, 16
  %2915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2914)  ; LegacyF16ToF32(value)
  %2916 = fmul fast float %2878, %2915
  %2917 = call float @dx.op.unary.f32(i32 22, float %2916)  ; Frc(value)
  %2918 = mul nuw nsw i32 %2856, %2857
  %2919 = uitofp i32 %2918 to float
  %2920 = fmul fast float %2917, %2919
  %2921 = call float @dx.op.unary.f32(i32 27, float %2920)  ; Round_ni(value)
  %2922 = fptoui float %2921 to i32
  %2923 = urem i32 %2922, %2856
  %2924 = udiv i32 %2922, %2857
  %2925 = call float @dx.op.unary.f32(i32 22, float %2905)  ; Frc(value)
  %2926 = call float @dx.op.unary.f32(i32 22, float %2906)  ; Frc(value)
  %2927 = uitofp i32 %2923 to float
  %2928 = uitofp i32 %2924 to float
  %2929 = fadd fast float %2925, %2927
  %2930 = fadd fast float %2926, %2928
  %2931 = uitofp i32 %2856 to float
  %2932 = uitofp i32 %2857 to float
  %2933 = fdiv fast float %2929, %2931
  %2934 = fdiv fast float %2930, %2932
  br label %2935

; <label>:2935                                    ; preds = %2910, %2837
  %2936 = phi float [ %2933, %2910 ], [ %2905, %2837 ]
  %2937 = phi float [ %2934, %2910 ], [ %2906, %2837 ]
  %2938 = and i32 %2831, 16777216
  %2939 = icmp eq i32 %2938, 0
  br i1 %2939, label %3049, label %2940

; <label>:2940                                    ; preds = %2935
  %2941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2942 = extractvalue %dx.types.CBufRet.f32 %2941, 0
  %2943 = extractvalue %dx.types.CBufRet.f32 %2941, 1
  %2944 = extractvalue %dx.types.CBufRet.f32 %2941, 2
  %2945 = fadd fast float %2942, %127
  %2946 = fadd fast float %2943, %128
  %2947 = fadd fast float %2944, %129
  %2948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2949 = extractvalue %dx.types.CBufRet.f32 %2948, 0
  %2950 = call float @dx.op.unary.f32(i32 7, float %2949)  ; Saturate(value)
  %2951 = icmp eq i32 %33, 65535
  br i1 %2951, label %3046, label %2952

; <label>:2952                                    ; preds = %2940
  %2953 = lshr i32 %33, 1
  %2954 = shl i32 %2953, 2
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2954, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = and i32 %33, 1
  %2958 = icmp ne i32 %2957, 0
  %2959 = lshr i32 %2956, 16
  %2960 = and i32 %2956, 65535
  %2961 = select i1 %2958, i32 %2959, i32 %2960
  %2962 = icmp eq i32 %2961, 65535
  br i1 %2962, label %3042, label %2963

; <label>:2963                                    ; preds = %2952
  %2964 = mul nuw nsw i32 %2961, 40
  %2965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2964, i32 undef)  ; BufferLoad(srv,index,wot)
  %2966 = extractvalue %dx.types.ResRet.f32 %2965, 0
  %2967 = extractvalue %dx.types.ResRet.f32 %2965, 1
  %2968 = extractvalue %dx.types.ResRet.f32 %2965, 2
  %2969 = add nuw nsw i32 %2964, 12
  %2970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2969, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.f32 %2970, 0
  %2972 = extractvalue %dx.types.ResRet.f32 %2970, 1
  %2973 = extractvalue %dx.types.ResRet.f32 %2970, 2
  %2974 = add nuw nsw i32 %2964, 24
  %2975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2974, i32 undef)  ; BufferLoad(srv,index,wot)
  %2976 = extractvalue %dx.types.ResRet.f32 %2975, 0
  %2977 = extractvalue %dx.types.ResRet.f32 %2975, 1
  %2978 = extractvalue %dx.types.ResRet.f32 %2975, 2
  %2979 = add nuw nsw i32 %2964, 36
  %2980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2979, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.f32 %2980, 0
  %2982 = fsub fast float %2945, %2966
  %2983 = fsub fast float %2946, %2967
  %2984 = fsub fast float %2947, %2968
  %2985 = fmul fast float %2981, %2982
  %2986 = fmul fast float %2981, %2983
  %2987 = fmul fast float %2981, %2984
  %2988 = call float @dx.op.unary.f32(i32 27, float %2985)  ; Round_ni(value)
  %2989 = call float @dx.op.unary.f32(i32 27, float %2986)  ; Round_ni(value)
  %2990 = call float @dx.op.unary.f32(i32 27, float %2987)  ; Round_ni(value)
  %2991 = fadd fast float %2988, 5.000000e-01
  %2992 = fadd fast float %2989, 5.000000e-01
  %2993 = fadd fast float %2990, 5.000000e-01
  %2994 = fmul fast float %2991, %2971
  %2995 = fmul fast float %2992, %2972
  %2996 = fmul fast float %2993, %2973
  %2997 = shl i32 %33, 2
  %2998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.i32 %2998, 0
  %3000 = add i32 %2999, 0
  %3001 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3000, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3002 = call float @dx.op.unary.f32(i32 22, float %2994)  ; Frc(value)
  %3003 = call float @dx.op.unary.f32(i32 22, float %2995)  ; Frc(value)
  %3004 = call float @dx.op.unary.f32(i32 22, float %2996)  ; Frc(value)
  %3005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3001, %dx.types.Handle %27, float %3002, float %3003, float %3004, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3006 = extractvalue %dx.types.ResRet.f32 %3005, 0
  %3007 = extractvalue %dx.types.ResRet.f32 %3005, 1
  %3008 = extractvalue %dx.types.ResRet.f32 %3005, 2
  %3009 = fmul fast float %3006, 1.023000e+03
  %3010 = fmul fast float %3007, 1.023000e+03
  %3011 = fmul fast float %3008, 1.023000e+03
  %3012 = fadd fast float %3009, 5.000000e-01
  %3013 = fadd fast float %3010, 5.000000e-01
  %3014 = fadd fast float %3011, 5.000000e-01
  %3015 = call float @dx.op.unary.f32(i32 27, float %3012)  ; Round_ni(value)
  %3016 = call float @dx.op.unary.f32(i32 27, float %3013)  ; Round_ni(value)
  %3017 = call float @dx.op.unary.f32(i32 27, float %3014)  ; Round_ni(value)
  %3018 = fsub fast float %2985, %2988
  %3019 = fsub fast float %2986, %2989
  %3020 = fsub fast float %2987, %2990
  %3021 = fmul fast float %3018, 7.500000e-01
  %3022 = fmul fast float %3019, 7.500000e-01
  %3023 = fmul fast float %3020, 7.500000e-01
  %3024 = fadd fast float %2988, 1.250000e-01
  %3025 = fadd fast float %3024, %3021
  %3026 = fadd fast float %3025, %3015
  %3027 = fadd fast float %2989, 1.250000e-01
  %3028 = fadd fast float %3027, %3022
  %3029 = fadd fast float %3028, %3016
  %3030 = fadd fast float %2990, 1.250000e-01
  %3031 = fadd fast float %3030, %3023
  %3032 = fadd fast float %3031, %3017
  %3033 = fmul fast float %3026, %2976
  %3034 = fmul fast float %3029, %2977
  %3035 = fmul fast float %3032, %2978
  %3036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %3037 = extractvalue %dx.types.ResRet.i32 %3036, 0
  %3038 = add i32 %3037, 0
  %3039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3038, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3039, %dx.types.Handle %25, float %3033, float %3034, float %3035, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3041 = extractvalue %dx.types.ResRet.f32 %3040, 0
  br label %3042

; <label>:3042                                    ; preds = %2963, %2952
  %3043 = phi float [ %3041, %2963 ], [ -1.000000e+00, %2952 ]
  %3044 = fadd fast float %3043, %2950
  %3045 = call float @dx.op.unary.f32(i32 7, float %3044)  ; Saturate(value)
  br label %3046

; <label>:3046                                    ; preds = %3042, %2940
  %3047 = phi float [ %3045, %3042 ], [ %2950, %2940 ]
  %3048 = fmul fast float %3047, %394
  br label %3049

; <label>:3049                                    ; preds = %3046, %2935
  %3050 = phi float [ %3048, %3046 ], [ %394, %2935 ]
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.i32 %3051, 0
  %3053 = and i32 %3052, 256
  %3054 = icmp eq i32 %3053, 0
  br i1 %3054, label %3101, label %3055

; <label>:3055                                    ; preds = %3049
  %3056 = add i32 %32, 452
  %3057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3056, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.i32 %3057, 0
  %3059 = add i32 %3058, 0
  %3060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3059, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3061 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3060, %dx.types.Handle %68, float %2936, float %2937, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3062 = extractvalue %dx.types.ResRet.f32 %3061, 0
  %3063 = add i32 %32, 148
  %3064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3063, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.i32 %3064, 0
  %3066 = shl i32 %3065, 4
  %3067 = and i32 %3066, 32752
  %3068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3067)  ; LegacyF16ToF32(value)
  %3069 = lshr i32 %3065, 7
  %3070 = and i32 %3069, 32752
  %3071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3070)  ; LegacyF16ToF32(value)
  %3072 = fsub fast float 1.000000e+00, %3050
  %3073 = call float @dx.op.binary.f32(i32 35, float %3072, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3074 = bitcast float %3050 to i32
  %3075 = sitofp i32 %3074 to float
  %3076 = fadd fast float %3075, 0xC1CFBF8940000000
  %3077 = fmul fast float %3071, %3076
  %3078 = fadd fast float %3077, 0x41CFBF8940000000
  %3079 = fptosi float %3078 to i32
  %3080 = bitcast i32 %3079 to float
  %3081 = bitcast float %3073 to i32
  %3082 = sitofp i32 %3081 to float
  %3083 = fadd fast float %3082, 0xC1CFBF8940000000
  %3084 = fmul fast float %3083, %3071
  %3085 = fadd fast float %3084, 0x41CFBF8940000000
  %3086 = fptosi float %3085 to i32
  %3087 = bitcast i32 %3086 to float
  %3088 = fmul fast float %3080, %3068
  %3089 = fmul fast float %3087, %3068
  %3090 = fsub fast float %3073, %3088
  %3091 = fadd fast float %3089, %3073
  %3092 = call float @dx.op.unary.f32(i32 7, float %3090)  ; Saturate(value)
  %3093 = call float @dx.op.unary.f32(i32 7, float %3091)  ; Saturate(value)
  %3094 = fsub fast float %3062, %3092
  %3095 = fsub fast float %3093, %3092
  %3096 = bitcast float %3095 to i32
  %3097 = sub nsw i32 2129859010, %3096
  %3098 = bitcast i32 %3097 to float
  %3099 = fmul fast float %3098, %3094
  %3100 = call float @dx.op.unary.f32(i32 7, float %3099)  ; Saturate(value)
  br label %3101

; <label>:3101                                    ; preds = %3055, %3049
  %3102 = phi float [ %3100, %3055 ], [ %3050, %3049 ]
  %3103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3104 = extractvalue %dx.types.ResRet.i32 %3103, 0
  %3105 = and i32 %3104, 128
  %3106 = icmp eq i32 %3105, 0
  br i1 %3106, label %3123, label %3107

; <label>:3107                                    ; preds = %3101
  %3108 = add i32 %32, 436
  %3109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3108, i32 undef)  ; BufferLoad(srv,index,wot)
  %3110 = extractvalue %dx.types.ResRet.i32 %3109, 0
  %3111 = add i32 %3110, 0
  %3112 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3111, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3113 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3112, %dx.types.Handle %68, float %2936, float %2937, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3114 = extractvalue %dx.types.ResRet.f32 %3113, 0
  %3115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3116 = extractvalue %dx.types.ResRet.i32 %3115, 0
  %3117 = and i32 %3116, 524288
  %3118 = icmp ne i32 %3117, 0
  %3119 = fcmp fast ogt float %3114, 0x3FE0101020000000
  %3120 = select i1 %3119, float 1.000000e+00, float 0.000000e+00
  %3121 = select i1 %3118, float %3120, float %3114
  %3122 = fmul fast float %3121, %3102
  br label %3123

; <label>:3123                                    ; preds = %3107, %3101
  %3124 = phi float [ %3122, %3107 ], [ %3102, %3101 ]
  %3125 = fcmp fast ult float %3124, 0x3F70101020000000
  br i1 %3125, label %3755, label %3126

; <label>:3126                                    ; preds = %3123
  %3127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3128 = extractvalue %dx.types.ResRet.i32 %3127, 0
  %3129 = and i32 %3128, 16
  %3130 = icmp eq i32 %3129, 0
  br i1 %3130, label %3329, label %3131

; <label>:3131                                    ; preds = %3126
  %3132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3133 = extractvalue %dx.types.ResRet.i32 %3132, 0
  %3134 = add i32 %32, 388
  %3135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3134, i32 undef)  ; BufferLoad(srv,index,wot)
  %3136 = extractvalue %dx.types.ResRet.i32 %3135, 0
  %3137 = add i32 %3136, 0
  %3138 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3137, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3139 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3138, %dx.types.Handle %67, float %2936, float %2937, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3140 = extractvalue %dx.types.ResRet.f32 %3139, 0
  %3141 = extractvalue %dx.types.ResRet.f32 %3139, 1
  %3142 = extractvalue %dx.types.ResRet.f32 %3139, 2
  %3143 = extractvalue %dx.types.ResRet.f32 %3139, 3
  %3144 = and i32 %3133, 255
  %3145 = uitofp i32 %3144 to float
  %3146 = lshr i32 %3133, 8
  %3147 = and i32 %3146, 255
  %3148 = uitofp i32 %3147 to float
  %3149 = fmul fast float %3143, %3145
  %3150 = fadd fast float %3149, %3148
  %3151 = fmul fast float %3150, 0x3F70101000000000
  %3152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.i32 %3152, 0
  %3154 = and i32 %3153, 512
  %3155 = icmp eq i32 %3154, 0
  br i1 %3155, label %3164, label %3156

; <label>:3156                                    ; preds = %3131
  %3157 = add i32 %32, 468
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3157, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = add i32 %3159, 0
  %3161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3160, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3162 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3161, %dx.types.Handle %68, float %2936, float %2937, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3163 = extractvalue %dx.types.ResRet.f32 %3162, 0
  br label %3164

; <label>:3164                                    ; preds = %3156, %3131
  %3165 = phi float [ %3163, %3156 ], [ 1.000000e+00, %3131 ]
  %3166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3167 = extractvalue %dx.types.ResRet.i32 %3166, 0
  %3168 = and i32 %3167, 33554432
  %3169 = icmp eq i32 %3168, 0
  br i1 %3169, label %3276, label %3170

; <label>:3170                                    ; preds = %3164
  %3171 = add i32 %32, 272
  %3172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3171, i32 undef)  ; BufferLoad(srv,index,wot)
  %3173 = extractvalue %dx.types.ResRet.i32 %3172, 0
  %3174 = and i32 %3173, 65535
  %3175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3174)  ; LegacyF16ToF32(value)
  %3176 = lshr i32 %3173, 16
  %3177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3176)  ; LegacyF16ToF32(value)
  %3178 = add i32 %32, 276
  %3179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3180 = extractvalue %dx.types.ResRet.i32 %3179, 0
  %3181 = and i32 %3180, 65535
  %3182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3181)  ; LegacyF16ToF32(value)
  %3183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %3184 = extractvalue %dx.types.ResRet.i32 %3183, 0
  %3185 = lshr i32 %3184, 24
  %3186 = uitofp i32 %3185 to float
  %3187 = fmul fast float %3186, 0x3F70101020000000
  %3188 = and i32 %3184, 255
  %3189 = uitofp i32 %3188 to float
  %3190 = fmul fast float %3189, 0x3F70101020000000
  %3191 = lshr i32 %3184, 8
  %3192 = and i32 %3191, 255
  %3193 = uitofp i32 %3192 to float
  %3194 = fmul fast float %3193, 0x3F70101020000000
  %3195 = lshr i32 %3184, 16
  %3196 = and i32 %3195, 255
  %3197 = uitofp i32 %3196 to float
  %3198 = fmul fast float %3197, 0x3F70101020000000
  %3199 = add i32 %32, 268
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3199, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = lshr i32 %3201, 24
  %3203 = uitofp i32 %3202 to float
  %3204 = fmul fast float %3203, 0x3F70101020000000
  %3205 = and i32 %3201, 255
  %3206 = uitofp i32 %3205 to float
  %3207 = fmul fast float %3206, 0x3F70101020000000
  %3208 = lshr i32 %3201, 8
  %3209 = and i32 %3208, 255
  %3210 = uitofp i32 %3209 to float
  %3211 = fmul fast float %3210, 0x3F70101020000000
  %3212 = lshr i32 %3201, 16
  %3213 = and i32 %3212, 255
  %3214 = uitofp i32 %3213 to float
  %3215 = fmul fast float %3214, 0x3F70101020000000
  %3216 = bitcast float %3140 to i32
  %3217 = ashr i32 %3216, 1
  %3218 = sub nsw i32 1597463174, %3217
  %3219 = bitcast i32 %3218 to float
  %3220 = fmul fast float %3140, 5.000000e-01
  %3221 = fmul fast float %3219, %3219
  %3222 = fmul fast float %3221, %3220
  %3223 = fsub fast float 1.500000e+00, %3222
  %3224 = fmul fast float %3219, %3140
  %3225 = fmul fast float %3224, %3223
  %3226 = bitcast float %3141 to i32
  %3227 = ashr i32 %3226, 1
  %3228 = sub nsw i32 1597463174, %3227
  %3229 = bitcast i32 %3228 to float
  %3230 = fmul fast float %3141, 5.000000e-01
  %3231 = fmul fast float %3229, %3229
  %3232 = fmul fast float %3231, %3230
  %3233 = fsub fast float 1.500000e+00, %3232
  %3234 = fmul fast float %3229, %3141
  %3235 = fmul fast float %3234, %3233
  %3236 = bitcast float %3142 to i32
  %3237 = ashr i32 %3236, 1
  %3238 = sub nsw i32 1597463174, %3237
  %3239 = bitcast i32 %3238 to float
  %3240 = fmul fast float %3142, 5.000000e-01
  %3241 = fmul fast float %3239, %3239
  %3242 = fmul fast float %3241, %3240
  %3243 = fsub fast float 1.500000e+00, %3242
  %3244 = fmul fast float %3239, %3142
  %3245 = fmul fast float %3244, %3243
  %3246 = fsub fast float %3225, %3207
  %3247 = fsub fast float %3235, %3211
  %3248 = fsub fast float %3245, %3215
  %3249 = fmul fast float %3246, %3175
  %3250 = fmul fast float %3247, %3177
  %3251 = fmul fast float %3248, %3182
  %3252 = fadd fast float %3249, %3190
  %3253 = fadd fast float %3250, %3194
  %3254 = fadd fast float %3251, %3198
  %3255 = call float @dx.op.unary.f32(i32 7, float %3252)  ; Saturate(value)
  %3256 = call float @dx.op.unary.f32(i32 7, float %3253)  ; Saturate(value)
  %3257 = call float @dx.op.unary.f32(i32 7, float %3254)  ; Saturate(value)
  %3258 = fmul fast float %3255, %3255
  %3259 = fmul fast float %3256, %3256
  %3260 = fmul fast float %3257, %3257
  %3261 = fsub fast float %3258, %3140
  %3262 = fsub fast float %3259, %3141
  %3263 = fsub fast float %3260, %3142
  %3264 = fmul fast float %3261, %3165
  %3265 = fmul fast float %3262, %3165
  %3266 = fmul fast float %3263, %3165
  %3267 = fadd fast float %3264, %3140
  %3268 = fadd fast float %3265, %3141
  %3269 = fadd fast float %3266, %3142
  %3270 = fadd fast float %3187, %3151
  %3271 = fsub fast float %3270, %3204
  %3272 = call float @dx.op.unary.f32(i32 7, float %3271)  ; Saturate(value)
  %3273 = fsub fast float %3272, %3151
  %3274 = fmul fast float %3273, %3165
  %3275 = fadd fast float %3274, %3151
  br label %3329

; <label>:3276                                    ; preds = %3164
  %3277 = and i32 %3167, 134217728
  %3278 = icmp eq i32 %3277, 0
  br i1 %3278, label %3313, label %3279

; <label>:3279                                    ; preds = %3276
  %3280 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %3281 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %3282 = call float @dx.op.unary.f32(i32 24, float %323)  ; Sqrt(value)
  %3283 = fadd fast float %3280, -5.000000e-01
  %3284 = fadd fast float %3281, -5.000000e-01
  %3285 = fadd fast float %3282, -5.000000e-01
  %3286 = fmul fast float %3283, %3165
  %3287 = fmul fast float %3284, %3165
  %3288 = fmul fast float %3285, %3165
  %3289 = fadd fast float %3286, 5.000000e-01
  %3290 = fadd fast float %3287, 5.000000e-01
  %3291 = fadd fast float %3288, 5.000000e-01
  %3292 = call float @dx.op.unary.f32(i32 24, float %3140)  ; Sqrt(value)
  %3293 = call float @dx.op.unary.f32(i32 24, float %3141)  ; Sqrt(value)
  %3294 = call float @dx.op.unary.f32(i32 24, float %3142)  ; Sqrt(value)
  %3295 = fmul fast float %3289, 2.000000e+00
  %3296 = fsub fast float 1.000000e+00, %3295
  %3297 = fmul fast float %3296, %3292
  %3298 = fadd fast float %3297, %3295
  %3299 = fmul fast float %3298, %3292
  %3300 = fmul fast float %3290, 2.000000e+00
  %3301 = fsub fast float 1.000000e+00, %3300
  %3302 = fmul fast float %3301, %3293
  %3303 = fadd fast float %3302, %3300
  %3304 = fmul fast float %3303, %3293
  %3305 = fmul fast float %3291, 2.000000e+00
  %3306 = fsub fast float 1.000000e+00, %3305
  %3307 = fmul fast float %3306, %3294
  %3308 = fadd fast float %3307, %3305
  %3309 = fmul fast float %3308, %3294
  %3310 = fmul fast float %3299, %3299
  %3311 = fmul fast float %3304, %3304
  %3312 = fmul fast float %3309, %3309
  br label %3329

; <label>:3313                                    ; preds = %3276
  %3314 = fmul fast float %315, %315
  %3315 = fmul fast float %319, %319
  %3316 = fmul fast float %323, %323
  %3317 = fadd fast float %3314, -1.000000e+00
  %3318 = fadd fast float %3315, -1.000000e+00
  %3319 = fadd fast float %3316, -1.000000e+00
  %3320 = fmul fast float %3165, %3317
  %3321 = fmul fast float %3165, %3318
  %3322 = fmul fast float %3165, %3319
  %3323 = fadd fast float %3320, 1.000000e+00
  %3324 = fadd fast float %3321, 1.000000e+00
  %3325 = fadd fast float %3322, 1.000000e+00
  %3326 = fmul fast float %3323, %3140
  %3327 = fmul fast float %3324, %3141
  %3328 = fmul fast float %3325, %3142
  br label %3329

; <label>:3329                                    ; preds = %3313, %3279, %3170, %3126
  %3330 = phi float [ %3275, %3170 ], [ %3151, %3279 ], [ %3151, %3313 ], [ 0x3FA23C0BE0000000, %3126 ]
  %3331 = phi float [ %3267, %3170 ], [ %3310, %3279 ], [ %3326, %3313 ], [ 1.000000e+00, %3126 ]
  %3332 = phi float [ %3268, %3170 ], [ %3311, %3279 ], [ %3327, %3313 ], [ 1.000000e+00, %3126 ]
  %3333 = phi float [ %3269, %3170 ], [ %3312, %3279 ], [ %3328, %3313 ], [ 1.000000e+00, %3126 ]
  %3334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3335 = extractvalue %dx.types.CBufRet.i32 %3334, 1
  %3336 = and i32 %3335, 1
  %3337 = icmp ne i32 %3336, 0
  %3338 = add i32 %32, 356
  %3339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3340 = extractvalue %dx.types.ResRet.i32 %3339, 0
  %3341 = and i32 %3340, 32
  %3342 = icmp ne i32 %3341, 0
  %3343 = and i1 %3337, %3342
  %3344 = select i1 %3343, float 1.000000e+00, float %3331
  %3345 = select i1 %3343, float 0x3FD3333340000000, float %3332
  %3346 = select i1 %3343, float 0x3FD3333340000000, float %3333
  %3347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3348 = extractvalue %dx.types.ResRet.i32 %3347, 0
  %3349 = and i32 %3348, 32
  %3350 = icmp eq i32 %3349, 0
  br i1 %3350, label %3423, label %3351

; <label>:3351                                    ; preds = %3329
  %3352 = add i32 %32, 140
  %3353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3352, i32 undef)  ; BufferLoad(srv,index,wot)
  %3354 = extractvalue %dx.types.ResRet.i32 %3353, 0
  %3355 = add i32 %32, 404
  %3356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3355, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.i32 %3356, 0
  %3358 = add i32 %3357, 0
  %3359 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3358, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3360 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3359, %dx.types.Handle %67, float %2936, float %2937, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3361 = extractvalue %dx.types.ResRet.f32 %3360, 0
  %3362 = extractvalue %dx.types.ResRet.f32 %3360, 1
  %3363 = extractvalue %dx.types.ResRet.f32 %3360, 2
  %3364 = extractvalue %dx.types.ResRet.f32 %3360, 3
  %3365 = and i32 %3354, 255
  %3366 = uitofp i32 %3365 to float
  %3367 = lshr i32 %3354, 8
  %3368 = and i32 %3367, 255
  %3369 = uitofp i32 %3368 to float
  %3370 = lshr i32 %3354, 16
  %3371 = and i32 %3370, 255
  %3372 = uitofp i32 %3371 to float
  %3373 = fmul fast float %3372, 0x3F70101000000000
  %3374 = fmul fast float %3361, %3366
  %3375 = fadd fast float %3374, %3369
  %3376 = fmul fast float %3375, 0x3F70101000000000
  %3377 = fadd fast float %3362, -5.000000e-01
  %3378 = fadd fast float %3364, -5.000000e-01
  %3379 = fmul fast float %3377, %3373
  %3380 = fmul fast float %3378, %3373
  %3381 = fadd fast float %3379, 5.000000e-01
  %3382 = fadd fast float %3380, 5.000000e-01
  %3383 = fmul fast float %3381, 2.000000e+00
  %3384 = fadd fast float %3383, -1.000000e+00
  %3385 = fmul fast float %3382, 2.000000e+00
  %3386 = fadd fast float %3385, -1.000000e+00
  %3387 = fadd fast float %3384, %3386
  %3388 = fmul fast float %3387, 5.000000e-01
  %3389 = fsub fast float %3384, %3386
  %3390 = fmul fast float %3389, 5.000000e-01
  %3391 = call float @dx.op.unary.f32(i32 6, float %3388)  ; FAbs(value)
  %3392 = fsub fast float 1.000000e+00, %3391
  %3393 = call float @dx.op.unary.f32(i32 6, float %3390)  ; FAbs(value)
  %3394 = fsub fast float %3392, %3393
  %3395 = call float @dx.op.dot3.f32(i32 55, float %3388, float %3390, float %3394, float %3388, float %3390, float %3394)  ; Dot3(ax,ay,az,bx,by,bz)
  %3396 = call float @dx.op.unary.f32(i32 25, float %3395)  ; Rsqrt(value)
  %3397 = fmul fast float %3388, %3396
  %3398 = fmul fast float %3390, %3396
  %3399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.i32 %3399, 0
  %3401 = and i32 %3400, 67108864
  %3402 = icmp eq i32 %3401, 0
  br i1 %3402, label %3419, label %3403

; <label>:3403                                    ; preds = %3351
  %3404 = add i32 %32, 328
  %3405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3404, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.i32 %3405, 0
  %3407 = and i32 %3406, 65535
  %3408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3407)  ; LegacyF16ToF32(value)
  %3409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.i32 %3409, 0
  %3411 = and i32 %3410, 65535
  %3412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3411)  ; LegacyF16ToF32(value)
  %3413 = lshr i32 %3406, 16
  %3414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3413)  ; LegacyF16ToF32(value)
  %3415 = fsub fast float %3376, %3414
  %3416 = fmul fast float %3415, %3408
  %3417 = fadd fast float %3416, %3412
  %3418 = call float @dx.op.unary.f32(i32 7, float %3417)  ; Saturate(value)
  br label %3419

; <label>:3419                                    ; preds = %3403, %3351
  %3420 = phi float [ %3418, %3403 ], [ %3376, %3351 ]
  %3421 = call float @dx.op.dot2.f32(i32 54, float %3397, float %3398, float %2840, float %2841)  ; Dot2(ax,ay,bx,by)
  %3422 = call float @dx.op.dot2.f32(i32 54, float %3397, float %3398, float %2842, float %2843)  ; Dot2(ax,ay,bx,by)
  br label %3423

; <label>:3423                                    ; preds = %3419, %3329
  %3424 = phi float [ %3420, %3419 ], [ 0x3FD6666660000000, %3329 ]
  %3425 = phi float [ %3421, %3419 ], [ 0.000000e+00, %3329 ]
  %3426 = phi float [ %3422, %3419 ], [ 0.000000e+00, %3329 ]
  %3427 = phi float [ %3363, %3419 ], [ 1.000000e+00, %3329 ]
  %3428 = add i32 %32, 208
  %3429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3428, i32 undef)  ; BufferLoad(srv,index,wot)
  %3430 = extractvalue %dx.types.ResRet.i32 %3429, 0
  %3431 = lshr i32 %3430, 22
  %3432 = shl nuw nsw i32 %3431, 5
  %3433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3432)  ; LegacyF16ToF32(value)
  %3434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3435 = extractvalue %dx.types.ResRet.i32 %3434, 0
  %3436 = and i32 %3435, 64
  %3437 = icmp eq i32 %3436, 0
  br i1 %3437, label %3471, label %3438

; <label>:3438                                    ; preds = %3423
  %3439 = add i32 %32, 420
  %3440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.i32 %3440, 0
  %3442 = add i32 %3441, 0
  %3443 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3442, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.i32 %3444, 0
  %3446 = and i32 %3445, 131072
  %3447 = icmp eq i32 %3446, 0
  %3448 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3443, %dx.types.Handle %67, float %2936, float %2937, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3449 = extractvalue %dx.types.ResRet.f32 %3448, 0
  %3450 = extractvalue %dx.types.ResRet.f32 %3448, 1
  %3451 = extractvalue %dx.types.ResRet.f32 %3448, 2
  %3452 = fmul fast float %3449, %303
  %3453 = fmul fast float %3450, %306
  %3454 = fmul fast float %3451, %309
  br i1 %3447, label %3461, label %3455

; <label>:3455                                    ; preds = %3438
  %3456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3457 = extractvalue %dx.types.CBufRet.f32 %3456, 0
  %3458 = fmul fast float %3457, %3452
  %3459 = fmul fast float %3457, %3453
  %3460 = fmul fast float %3457, %3454
  br label %3461

; <label>:3461                                    ; preds = %3455, %3438
  %3462 = phi float [ %3458, %3455 ], [ %3452, %3438 ]
  %3463 = phi float [ %3459, %3455 ], [ %3453, %3438 ]
  %3464 = phi float [ %3460, %3455 ], [ %3454, %3438 ]
  %3465 = fmul fast float %3462, %3433
  %3466 = select i1 %171, float %3465, float %3462
  %3467 = call float @dx.op.dot3.f32(i32 55, float %3466, float %3463, float %3464, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3468 = select i1 %171, float 0.000000e+00, float %3462
  %3469 = select i1 %171, float %3467, float %3463
  %3470 = select i1 %171, float 0.000000e+00, float %3464
  br label %3471

; <label>:3471                                    ; preds = %3461, %3423
  %3472 = phi float [ %3468, %3461 ], [ 0.000000e+00, %3423 ]
  %3473 = phi float [ %3469, %3461 ], [ 0.000000e+00, %3423 ]
  %3474 = phi float [ %3470, %3461 ], [ 0.000000e+00, %3423 ]
  %3475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3476 = extractvalue %dx.types.ResRet.i32 %3475, 0
  %3477 = and i32 %3476, 10240
  %3478 = icmp eq i32 %3477, 0
  br i1 %3478, label %3523, label %3479

; <label>:3479                                    ; preds = %3471
  %3480 = add i32 %32, 484
  %3481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3480, i32 undef)  ; BufferLoad(srv,index,wot)
  %3482 = extractvalue %dx.types.ResRet.i32 %3481, 0
  %3483 = add i32 %3482, 0
  %3484 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3483, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3485 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3484, %dx.types.Handle %68, float %2936, float %2937, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3486 = extractvalue %dx.types.ResRet.f32 %3485, 1
  %3487 = extractvalue %dx.types.ResRet.f32 %3485, 3
  %3488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3489 = extractvalue %dx.types.ResRet.i32 %3488, 0
  %3490 = and i32 %3489, 1048576
  %3491 = icmp ne i32 %3490, 0
  %3492 = and i32 %3489, 8192
  %3493 = icmp eq i32 %3492, 0
  br i1 %3493, label %3509, label %3494

; <label>:3494                                    ; preds = %3479
  %3495 = extractvalue %dx.types.ResRet.f32 %3485, 2
  %3496 = select i1 %3491, float %3495, float %3486
  %3497 = extractvalue %dx.types.ResRet.f32 %3485, 0
  %3498 = select i1 %3491, float %3497, float %3486
  %3499 = add i32 %32, 144
  %3500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3499, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.i32 %3500, 0
  %3502 = lshr i32 %3501, 16
  %3503 = and i32 %3502, 255
  %3504 = uitofp i32 %3503 to float
  %3505 = fmul fast float %3504, 0x3F80101020000000
  %3506 = fmul fast float %3505, %3498
  %3507 = fmul fast float %3505, %3486
  %3508 = fmul fast float %3505, %3496
  br label %3509

; <label>:3509                                    ; preds = %3494, %3479
  %3510 = phi float [ %3506, %3494 ], [ 0.000000e+00, %3479 ]
  %3511 = phi float [ %3507, %3494 ], [ 0.000000e+00, %3479 ]
  %3512 = phi float [ %3508, %3494 ], [ 0.000000e+00, %3479 ]
  %3513 = and i32 %3489, 2048
  %3514 = icmp eq i32 %3513, 0
  br i1 %3514, label %3523, label %3515

; <label>:3515                                    ; preds = %3509
  %3516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3428, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.i32 %3516, 0
  %3518 = shl i32 %3517, 4
  %3519 = and i32 %3518, 32752
  %3520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3519)  ; LegacyF16ToF32(value)
  %3521 = fmul fast float %3520, %3487
  %3522 = call float @dx.op.binary.f32(i32 35, float %3521, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3523

; <label>:3523                                    ; preds = %3515, %3509, %3471
  %3524 = phi float [ %3510, %3515 ], [ %3510, %3509 ], [ 0.000000e+00, %3471 ]
  %3525 = phi float [ %3511, %3515 ], [ %3511, %3509 ], [ 0.000000e+00, %3471 ]
  %3526 = phi float [ %3512, %3515 ], [ %3512, %3509 ], [ 0.000000e+00, %3471 ]
  %3527 = phi float [ %3522, %3515 ], [ 0x3F70101020000000, %3509 ], [ 0x3F70101020000000, %3471 ]
  %3528 = add i32 %32, 144
  %3529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3530 = extractvalue %dx.types.ResRet.i32 %3529, 0
  %3531 = and i32 %3530, 255
  %3532 = uitofp i32 %3531 to float
  %3533 = lshr i32 %3530, 8
  %3534 = and i32 %3533, 255
  %3535 = uitofp i32 %3534 to float
  %3536 = call float @dx.op.dot3.f32(i32 55, float %3344, float %3345, float %3346, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3537 = fmul fast float %3535, %3536
  %3538 = fadd fast float %3537, %3532
  %3539 = fmul fast float %3538, 0x3F70101020000000
  %3540 = call float @dx.op.unary.f32(i32 7, float %3539)  ; Saturate(value)
  br i1 %2828, label %3541, label %3549

; <label>:3541                                    ; preds = %3523
  %3542 = fsub fast float 1.000000e+00, %3124
  %3543 = fmul fast float %3542, %2813
  %3544 = fmul fast float %3542, %2814
  %3545 = fmul fast float %3542, %2815
  %3546 = fmul fast float %3542, %2816
  %3547 = fmul fast float %3542, %2817
  %3548 = fmul fast float %3542, %2818
  br label %3549

; <label>:3549                                    ; preds = %3541, %3523
  %3550 = phi float [ %3543, %3541 ], [ %2813, %3523 ]
  %3551 = phi float [ %3544, %3541 ], [ %2814, %3523 ]
  %3552 = phi float [ %3545, %3541 ], [ %2815, %3523 ]
  %3553 = phi float [ %3546, %3541 ], [ %2816, %3523 ]
  %3554 = phi float [ %3547, %3541 ], [ %2817, %3523 ]
  %3555 = phi float [ %3548, %3541 ], [ %2818, %3523 ]
  %3556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3557 = extractvalue %dx.types.ResRet.i32 %3556, 0
  %3558 = and i32 %3557, 3
  %3559 = icmp eq i32 %3558, 3
  br i1 %3559, label %3638, label %3560

; <label>:3560                                    ; preds = %3549
  %3561 = and i32 %3557, 16
  %3562 = icmp ne i32 %3561, 0
  %3563 = select i1 %3562, float %3124, float 0.000000e+00
  %3564 = icmp eq i32 %3558, 0
  br i1 %3564, label %3565, label %3593

; <label>:3565                                    ; preds = %3560
  %3566 = and i32 %3557, 64
  %3567 = icmp ne i32 %3566, 0
  %3568 = select i1 %3567, float %3124, float 0.000000e+00
  %3569 = fsub fast float %3344, %3550
  %3570 = fsub fast float %3345, %3551
  %3571 = fsub fast float %3346, %3552
  %3572 = fmul fast float %3563, %3569
  %3573 = fmul fast float %3563, %3570
  %3574 = fmul fast float %3563, %3571
  %3575 = fadd fast float %3572, %3550
  %3576 = fadd fast float %3573, %3551
  %3577 = fadd fast float %3574, %3552
  %3578 = fsub fast float %3330, %2822
  %3579 = fmul fast float %3563, %3578
  %3580 = fadd fast float %3579, %2822
  %3581 = fsub fast float %3472, %3553
  %3582 = fsub fast float %3473, %3554
  %3583 = fsub fast float %3474, %3555
  %3584 = fmul fast float %3568, %3581
  %3585 = fmul fast float %3568, %3582
  %3586 = fmul fast float %3568, %3583
  %3587 = fadd fast float %3584, %3553
  %3588 = fadd fast float %3585, %3554
  %3589 = fadd fast float %3586, %3555
  %3590 = fsub fast float %3540, %2826
  %3591 = fmul fast float %3563, %3590
  %3592 = fadd fast float %3591, %2826
  br label %3638

; <label>:3593                                    ; preds = %3560
  %3594 = icmp eq i32 %3558, 1
  br i1 %3594, label %3595, label %3608

; <label>:3595                                    ; preds = %3593
  %3596 = fadd fast float %3344, -1.000000e+00
  %3597 = fadd fast float %3345, -1.000000e+00
  %3598 = fadd fast float %3346, -1.000000e+00
  %3599 = fmul fast float %3563, %3596
  %3600 = fmul fast float %3563, %3597
  %3601 = fmul fast float %3563, %3598
  %3602 = fadd fast float %3599, 1.000000e+00
  %3603 = fadd fast float %3600, 1.000000e+00
  %3604 = fadd fast float %3601, 1.000000e+00
  %3605 = fmul fast float %3602, %3550
  %3606 = fmul fast float %3603, %3551
  %3607 = fmul fast float %3604, %3552
  br label %3638

; <label>:3608                                    ; preds = %3593
  %3609 = icmp eq i32 %3558, 2
  br i1 %3609, label %3610, label %3638

; <label>:3610                                    ; preds = %3608
  %3611 = call float @dx.op.unary.f32(i32 24, float %3344)  ; Sqrt(value)
  %3612 = call float @dx.op.unary.f32(i32 24, float %3345)  ; Sqrt(value)
  %3613 = call float @dx.op.unary.f32(i32 24, float %3346)  ; Sqrt(value)
  %3614 = fadd fast float %3611, -5.000000e-01
  %3615 = fadd fast float %3612, -5.000000e-01
  %3616 = fadd fast float %3613, -5.000000e-01
  %3617 = fmul fast float %3614, %3563
  %3618 = fmul fast float %3615, %3563
  %3619 = fmul fast float %3616, %3563
  %3620 = fadd fast float %3617, 5.000000e-01
  %3621 = fadd fast float %3618, 5.000000e-01
  %3622 = fadd fast float %3619, 5.000000e-01
  %3623 = fmul fast float %3620, 2.000000e+00
  %3624 = fsub fast float 1.000000e+00, %3623
  %3625 = fmul fast float %3624, %3550
  %3626 = fadd fast float %3625, %3623
  %3627 = fmul fast float %3626, %3550
  %3628 = fmul fast float %3621, 2.000000e+00
  %3629 = fsub fast float 1.000000e+00, %3628
  %3630 = fmul fast float %3629, %3551
  %3631 = fadd fast float %3630, %3628
  %3632 = fmul fast float %3631, %3551
  %3633 = fmul fast float %3622, 2.000000e+00
  %3634 = fsub fast float 1.000000e+00, %3633
  %3635 = fmul fast float %3634, %3552
  %3636 = fadd fast float %3635, %3633
  %3637 = fmul fast float %3636, %3552
  br label %3638

; <label>:3638                                    ; preds = %3610, %3608, %3595, %3565, %3549
  %3639 = phi float [ %3550, %3549 ], [ %3627, %3610 ], [ %3550, %3608 ], [ %3605, %3595 ], [ %3575, %3565 ]
  %3640 = phi float [ %3551, %3549 ], [ %3632, %3610 ], [ %3551, %3608 ], [ %3606, %3595 ], [ %3576, %3565 ]
  %3641 = phi float [ %3552, %3549 ], [ %3637, %3610 ], [ %3552, %3608 ], [ %3607, %3595 ], [ %3577, %3565 ]
  %3642 = phi float [ %3553, %3549 ], [ %3553, %3610 ], [ %3553, %3608 ], [ %3553, %3595 ], [ %3587, %3565 ]
  %3643 = phi float [ %3554, %3549 ], [ %3554, %3610 ], [ %3554, %3608 ], [ %3554, %3595 ], [ %3588, %3565 ]
  %3644 = phi float [ %3555, %3549 ], [ %3555, %3610 ], [ %3555, %3608 ], [ %3555, %3595 ], [ %3589, %3565 ]
  %3645 = phi float [ %2822, %3549 ], [ %2822, %3610 ], [ %2822, %3608 ], [ %2822, %3595 ], [ %3580, %3565 ]
  %3646 = phi float [ %2826, %3549 ], [ %2826, %3610 ], [ %2826, %3608 ], [ %2826, %3595 ], [ %3592, %3565 ]
  %3647 = and i32 %3557, 12
  %3648 = icmp eq i32 %3647, 12
  br i1 %3648, label %3755, label %3649

; <label>:3649                                    ; preds = %3638
  %3650 = and i32 %3557, 2097184
  %3651 = icmp eq i32 %3650, 2097184
  %3652 = select i1 %3651, float %3124, float 0.000000e+00
  %3653 = and i32 %3557, 4194336
  %3654 = icmp eq i32 %3653, 4194336
  %3655 = select i1 %3654, float %3124, float 0.000000e+00
  %3656 = and i32 %3557, 8388640
  %3657 = icmp eq i32 %3656, 8388640
  %3658 = select i1 %3657, float %3124, float 0.000000e+00
  %3659 = and i32 %3557, 2048
  %3660 = icmp ne i32 %3659, 0
  %3661 = select i1 %3660, float %3124, float 0.000000e+00
  %3662 = and i32 %3557, 8192
  %3663 = icmp ne i32 %3662, 0
  %3664 = select i1 %3663, float %3124, float 0.000000e+00
  %3665 = icmp eq i32 %3647, 0
  br i1 %3665, label %3666, label %3691

; <label>:3666                                    ; preds = %3649
  %3667 = fsub fast float %3425, %2811
  %3668 = fsub fast float %3426, %2812
  %3669 = fmul fast float %3652, %3667
  %3670 = fmul fast float %3652, %3668
  %3671 = fadd fast float %3669, %2811
  %3672 = fadd fast float %3670, %2812
  %3673 = fsub fast float %3427, %2824
  %3674 = fmul fast float %3655, %3673
  %3675 = fadd fast float %3674, %2824
  %3676 = fsub fast float %3424, %2823
  %3677 = fmul fast float %3658, %3676
  %3678 = fadd fast float %3677, %2823
  %3679 = fsub fast float %3527, %2825
  %3680 = fmul fast float %3661, %3679
  %3681 = fadd fast float %3680, %2825
  %3682 = fsub fast float %3524, %2819
  %3683 = fsub fast float %3525, %2820
  %3684 = fsub fast float %3526, %2821
  %3685 = fmul fast float %3664, %3682
  %3686 = fmul fast float %3664, %3683
  %3687 = fmul fast float %3664, %3684
  %3688 = fadd fast float %3685, %2819
  %3689 = fadd fast float %3686, %2820
  %3690 = fadd fast float %3687, %2821
  br label %3755

; <label>:3691                                    ; preds = %3649
  %3692 = icmp eq i32 %3647, 4
  br i1 %3692, label %3693, label %3733

; <label>:3693                                    ; preds = %3691
  %3694 = fmul fast float %3652, %3425
  %3695 = fmul fast float %3652, %3426
  %3696 = fadd fast float %3694, %2811
  %3697 = fadd fast float %3695, %2812
  %3698 = call float @dx.op.binary.f32(i32 36, float %2824, float %3427)  ; FMin(a,b)
  %3699 = fsub fast float %3698, %2824
  %3700 = fmul fast float %3699, %3655
  %3701 = fadd fast float %3700, %2824
  %3702 = fadd fast float %3424, %2823
  %3703 = fmul fast float %3702, 0x3FF337FAE0000000
  %3704 = fmul fast float %2823, %2823
  %3705 = fmul fast float %3424, %3424
  %3706 = fadd fast float %3705, %3704
  %3707 = fmul fast float %3706, 0x3FE5152B00000000
  %3708 = fmul fast float %2823, 0xBFCC1F85E0000000
  %3709 = fmul fast float %3708, %3424
  %3710 = fadd fast float %3709, 0xBFE1363700000000
  %3711 = fadd fast float %3710, %3703
  %3712 = fsub fast float %3711, %3707
  %3713 = fmul fast float %3702, 0x3FBA6F0D00000000
  %3714 = fmul fast float %3706, 0x3FD0432880000000
  %3715 = fmul fast float %2823, 0xBFEF110800000000
  %3716 = fmul fast float %3715, %3424
  %3717 = fadd fast float %3716, 1.000000e+00
  %3718 = fsub fast float %3717, %3713
  %3719 = fadd fast float %3718, %3714
  %3720 = fdiv fast float %3712, %3719
  %3721 = call float @dx.op.unary.f32(i32 7, float %3720)  ; Saturate(value)
  %3722 = fsub fast float %3721, %2823
  %3723 = fmul fast float %3722, %3658
  %3724 = fadd fast float %3723, %2823
  %3725 = fmul fast float %3661, %3527
  %3726 = fadd fast float %3725, %2825
  %3727 = fmul fast float %3664, %3524
  %3728 = fmul fast float %3664, %3525
  %3729 = fmul fast float %3664, %3526
  %3730 = fadd fast float %3727, %2819
  %3731 = fadd fast float %3728, %2820
  %3732 = fadd fast float %3729, %2821
  br label %3755

; <label>:3733                                    ; preds = %3691
  %3734 = icmp eq i32 %3647, 8
  br i1 %3734, label %3735, label %3755

; <label>:3735                                    ; preds = %3733
  %3736 = fmul fast float %3652, %3425
  %3737 = fmul fast float %3652, %3426
  %3738 = fadd fast float %3736, %2811
  %3739 = fadd fast float %3737, %2812
  %3740 = call float @dx.op.binary.f32(i32 36, float %2824, float %3427)  ; FMin(a,b)
  %3741 = fsub fast float %3740, %2824
  %3742 = fmul fast float %3741, %3655
  %3743 = fadd fast float %3742, %2824
  %3744 = fsub fast float %3424, %2823
  %3745 = fmul fast float %3658, %3744
  %3746 = fadd fast float %3745, %2823
  %3747 = fmul fast float %3661, %3527
  %3748 = fadd fast float %3747, %2825
  %3749 = fmul fast float %3664, %3524
  %3750 = fmul fast float %3664, %3525
  %3751 = fmul fast float %3664, %3526
  %3752 = fadd fast float %3749, %2819
  %3753 = fadd fast float %3750, %2820
  %3754 = fadd fast float %3751, %2821
  br label %3755

; <label>:3755                                    ; preds = %3735, %3733, %3693, %3666, %3638, %3123, %2827, %2810
  %3756 = phi float [ %2811, %3638 ], [ %2811, %3123 ], [ %2811, %2810 ], [ %2811, %2827 ], [ %3671, %3666 ], [ %3696, %3693 ], [ %2811, %3733 ], [ %3738, %3735 ]
  %3757 = phi float [ %2812, %3638 ], [ %2812, %3123 ], [ %2812, %2810 ], [ %2812, %2827 ], [ %3672, %3666 ], [ %3697, %3693 ], [ %2812, %3733 ], [ %3739, %3735 ]
  %3758 = phi float [ %3639, %3638 ], [ %2813, %3123 ], [ %2813, %2810 ], [ %2813, %2827 ], [ %3639, %3666 ], [ %3639, %3693 ], [ %3639, %3733 ], [ %3639, %3735 ]
  %3759 = phi float [ %3640, %3638 ], [ %2814, %3123 ], [ %2814, %2810 ], [ %2814, %2827 ], [ %3640, %3666 ], [ %3640, %3693 ], [ %3640, %3733 ], [ %3640, %3735 ]
  %3760 = phi float [ %3641, %3638 ], [ %2815, %3123 ], [ %2815, %2810 ], [ %2815, %2827 ], [ %3641, %3666 ], [ %3641, %3693 ], [ %3641, %3733 ], [ %3641, %3735 ]
  %3761 = phi float [ %3642, %3638 ], [ %2816, %3123 ], [ %2816, %2810 ], [ %2816, %2827 ], [ %3642, %3666 ], [ %3642, %3693 ], [ %3642, %3733 ], [ %3642, %3735 ]
  %3762 = phi float [ %3643, %3638 ], [ %2817, %3123 ], [ %2817, %2810 ], [ %2817, %2827 ], [ %3643, %3666 ], [ %3643, %3693 ], [ %3643, %3733 ], [ %3643, %3735 ]
  %3763 = phi float [ %3644, %3638 ], [ %2818, %3123 ], [ %2818, %2810 ], [ %2818, %2827 ], [ %3644, %3666 ], [ %3644, %3693 ], [ %3644, %3733 ], [ %3644, %3735 ]
  %3764 = phi float [ %2819, %3638 ], [ %2819, %3123 ], [ %2819, %2810 ], [ %2819, %2827 ], [ %3688, %3666 ], [ %3730, %3693 ], [ %2819, %3733 ], [ %3752, %3735 ]
  %3765 = phi float [ %2820, %3638 ], [ %2820, %3123 ], [ %2820, %2810 ], [ %2820, %2827 ], [ %3689, %3666 ], [ %3731, %3693 ], [ %2820, %3733 ], [ %3753, %3735 ]
  %3766 = phi float [ %2821, %3638 ], [ %2821, %3123 ], [ %2821, %2810 ], [ %2821, %2827 ], [ %3690, %3666 ], [ %3732, %3693 ], [ %2821, %3733 ], [ %3754, %3735 ]
  %3767 = phi float [ %3645, %3638 ], [ %2822, %3123 ], [ %2822, %2810 ], [ %2822, %2827 ], [ %3645, %3666 ], [ %3645, %3693 ], [ %3645, %3733 ], [ %3645, %3735 ]
  %3768 = phi float [ %2823, %3638 ], [ %2823, %3123 ], [ %2823, %2810 ], [ %2823, %2827 ], [ %3678, %3666 ], [ %3724, %3693 ], [ %2823, %3733 ], [ %3746, %3735 ]
  %3769 = phi float [ %2824, %3638 ], [ %2824, %3123 ], [ %2824, %2810 ], [ %2824, %2827 ], [ %3675, %3666 ], [ %3701, %3693 ], [ %2824, %3733 ], [ %3743, %3735 ]
  %3770 = phi float [ %2825, %3638 ], [ %2825, %3123 ], [ %2825, %2810 ], [ %2825, %2827 ], [ %3681, %3666 ], [ %3726, %3693 ], [ %2825, %3733 ], [ %3748, %3735 ]
  %3771 = phi float [ %3646, %3638 ], [ %2826, %3123 ], [ %2826, %2810 ], [ %2826, %2827 ], [ %3646, %3666 ], [ %3646, %3693 ], [ %3646, %3733 ], [ %3646, %3735 ]
  %3772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3773 = extractvalue %dx.types.CBufRet.f32 %3772, 0
  %3774 = call float @dx.op.dot2.f32(i32 54, float %3756, float %3757, float %3756, float %3757)  ; Dot2(ax,ay,bx,by)
  %3775 = fmul fast float %3774, 0x3FE3333340000000
  %3776 = fsub fast float 1.000000e+00, %3775
  %3777 = call float @dx.op.dot3.f32(i32 55, float %3756, float %3757, float %3776, float %3756, float %3757, float %3776)  ; Dot3(ax,ay,az,bx,by,bz)
  %3778 = call float @dx.op.unary.f32(i32 25, float %3777)  ; Rsqrt(value)
  %3779 = fmul fast float %3778, %3756
  %3780 = fmul fast float %3778, %3757
  %3781 = fmul fast float %3776, %3778
  %3782 = fmul fast float %3781, %80
  %3783 = fmul fast float %3781, %82
  %3784 = fmul fast float %3781, %84
  %3785 = fmul fast float %3779, %52
  %3786 = fmul fast float %3779, %53
  %3787 = fmul fast float %3779, %54
  %3788 = fmul fast float %87, %55
  %3789 = fmul fast float %3788, %3780
  %3790 = fmul fast float %90, %55
  %3791 = fmul fast float %3790, %3780
  %3792 = fmul fast float %93, %55
  %3793 = fmul fast float %3792, %3780
  %3794 = fadd fast float %3789, %3785
  %3795 = fmul fast float %3794, %73
  %3796 = fadd fast float %3795, %3782
  %3797 = fadd fast float %3791, %3786
  %3798 = fmul fast float %3797, %73
  %3799 = fadd fast float %3798, %3783
  %3800 = fadd fast float %3793, %3787
  %3801 = fmul fast float %3800, %73
  %3802 = fadd fast float %3801, %3784
  %3803 = call float @dx.op.dot3.f32(i32 55, float %3796, float %3799, float %3802, float %3796, float %3799, float %3802)  ; Dot3(ax,ay,az,bx,by,bz)
  %3804 = call float @dx.op.unary.f32(i32 25, float %3803)  ; Rsqrt(value)
  %3805 = fmul fast float %3796, %3804
  %3806 = fmul fast float %3799, %3804
  %3807 = fmul fast float %3802, %3804
  %3808 = fadd fast float %3767, 0xBFB99999A0000000
  %3809 = call float @dx.op.unary.f32(i32 7, float %3808)  ; Saturate(value)
  %3810 = fmul fast float %3809, 0x3FF1C71C80000000
  %3811 = call float @dx.op.binary.f32(i32 36, float %3767, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3812 = fsub fast float 1.000000e+00, %3810
  %3813 = call float @dx.op.unary.f32(i32 7, float %3812)  ; Saturate(value)
  %3814 = fmul fast float %3813, %3758
  %3815 = fmul fast float %3813, %3759
  %3816 = fmul fast float %3813, %3760
  %3817 = call float @dx.op.unary.f32(i32 7, float %3814)  ; Saturate(value)
  %3818 = call float @dx.op.unary.f32(i32 7, float %3815)  ; Saturate(value)
  %3819 = call float @dx.op.unary.f32(i32 7, float %3816)  ; Saturate(value)
  %3820 = fmul fast float %3810, %3758
  %3821 = fmul fast float %3810, %3759
  %3822 = fmul fast float %3810, %3760
  %3823 = fadd fast float %3820, %3811
  %3824 = fadd fast float %3821, %3811
  %3825 = fadd fast float %3822, %3811
  %3826 = call float @dx.op.unary.f32(i32 7, float %3823)  ; Saturate(value)
  %3827 = call float @dx.op.unary.f32(i32 7, float %3824)  ; Saturate(value)
  %3828 = call float @dx.op.unary.f32(i32 7, float %3825)  ; Saturate(value)
  %3829 = call float @dx.op.unary.f32(i32 7, float %3768)  ; Saturate(value)
  %3830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3831 = extractvalue %dx.types.ResRet.i32 %3830, 0
  %3832 = and i32 %3831, 1
  %3833 = icmp eq i32 %3832, 0
  br i1 %3833, label %3848, label %3834

; <label>:3834                                    ; preds = %3755
  %3835 = call float @dx.op.binary.f32(i32 35, float %3818, float %3819)  ; FMax(a,b)
  %3836 = call float @dx.op.binary.f32(i32 35, float %3817, float %3835)  ; FMax(a,b)
  %3837 = fcmp fast ogt float %3836, 0.000000e+00
  %3838 = bitcast float %3836 to i32
  %3839 = sub nsw i32 2129859010, %3838
  %3840 = bitcast i32 %3839 to float
  %3841 = select i1 %3837, float %3840, float 0.000000e+00
  %3842 = fmul fast float %3817, %3764
  %3843 = fmul fast float %3818, %3765
  %3844 = fmul fast float %3819, %3766
  %3845 = fmul fast float %3842, %3841
  %3846 = fmul fast float %3843, %3841
  %3847 = fmul fast float %3844, %3841
  br label %3848

; <label>:3848                                    ; preds = %3834, %3755
  %3849 = phi float [ %3845, %3834 ], [ %3764, %3755 ]
  %3850 = phi float [ %3846, %3834 ], [ %3765, %3755 ]
  %3851 = phi float [ %3847, %3834 ], [ %3766, %3755 ]
  %3852 = fadd fast float %3817, 0xBFD51EB860000000
  %3853 = fadd fast float %3818, 0xBFD51EB860000000
  %3854 = fadd fast float %3819, 0xBFD51EB860000000
  %3855 = fmul fast float %3852, %3852
  %3856 = fmul fast float %3853, %3853
  %3857 = fmul fast float %3854, %3854
  %3858 = fmul fast float %3855, %3855
  %3859 = fmul fast float %3858, 1.000000e+02
  %3860 = fmul fast float %3856, %3856
  %3861 = fmul fast float %3860, 1.000000e+02
  %3862 = fmul fast float %3857, %3857
  %3863 = fmul fast float %3862, 1.000000e+02
  %3864 = fadd fast float %3859, 3.500000e+00
  %3865 = fadd fast float %3861, 3.500000e+00
  %3866 = fadd fast float %3863, 3.500000e+00
  %3867 = call float @dx.op.binary.f32(i32 35, float %3849, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3868 = call float @dx.op.binary.f32(i32 35, float %3850, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3869 = call float @dx.op.binary.f32(i32 35, float %3851, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3870 = fdiv fast float %3864, %3867
  %3871 = fdiv fast float %3865, %3868
  %3872 = fdiv fast float %3866, %3869
  %3873 = fmul fast float %3770, 0xBFF7154760000000
  %3874 = fmul fast float %3873, %3870
  %3875 = call float @dx.op.unary.f32(i32 21, float %3874)  ; Exp(value)
  %3876 = fmul fast float %3875, 2.500000e-01
  %3877 = fmul fast float %3770, 0xBFDEC709E0000000
  %3878 = fmul fast float %3877, %3870
  %3879 = call float @dx.op.unary.f32(i32 21, float %3878)  ; Exp(value)
  %3880 = fmul fast float %3879, 7.500000e-01
  %3881 = fmul fast float %3873, %3871
  %3882 = call float @dx.op.unary.f32(i32 21, float %3881)  ; Exp(value)
  %3883 = fmul fast float %3882, 2.500000e-01
  %3884 = fmul fast float %3877, %3871
  %3885 = call float @dx.op.unary.f32(i32 21, float %3884)  ; Exp(value)
  %3886 = fmul fast float %3885, 7.500000e-01
  %3887 = fmul fast float %3873, %3872
  %3888 = call float @dx.op.unary.f32(i32 21, float %3887)  ; Exp(value)
  %3889 = fmul fast float %3888, 2.500000e-01
  %3890 = fmul fast float %3877, %3872
  %3891 = call float @dx.op.unary.f32(i32 21, float %3890)  ; Exp(value)
  %3892 = fmul fast float %3891, 7.500000e-01
  %3893 = fadd fast float %3876, %3880
  %3894 = fadd fast float %3883, %3886
  %3895 = fadd fast float %3889, %3892
  %3896 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3897 = extractvalue %dx.types.CBufRet.i32 %3896, 3
  %3898 = and i32 %3897, 8
  %3899 = icmp ne i32 %3898, 0
  %3900 = call float @dx.op.binary.f32(i32 35, float %3817, float %3758)  ; FMax(a,b)
  %3901 = call float @dx.op.binary.f32(i32 35, float %3818, float %3758)  ; FMax(a,b)
  %3902 = call float @dx.op.binary.f32(i32 35, float %3819, float %3758)  ; FMax(a,b)
  %3903 = call float @dx.op.dot3.f32(i32 55, float %3817, float %3818, float %3819, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3904 = select i1 %171, float %3758, float %3817
  %3905 = select i1 %171, float %3903, float %3818
  %3906 = select i1 %171, float 1.000000e+00, float %3819
  %3907 = select i1 %3899, float %3900, float %3904
  %3908 = select i1 %3899, float %3901, float %3905
  %3909 = select i1 %3899, float %3902, float %3906
  %3910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3911 = extractvalue %dx.types.CBufRet.f32 %3910, 0
  %3912 = extractvalue %dx.types.CBufRet.f32 %3910, 1
  %3913 = extractvalue %dx.types.CBufRet.f32 %3910, 2
  %3914 = fadd fast float %3911, %127
  %3915 = fadd fast float %3912, %128
  %3916 = fadd fast float %3913, %129
  %3917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3918 = extractvalue %dx.types.CBufRet.f32 %3917, 0
  %3919 = extractvalue %dx.types.CBufRet.f32 %3917, 1
  %3920 = fsub fast float %3914, %3918
  %3921 = fsub fast float %3915, %3919
  %3922 = fmul fast float %3920, %3920
  %3923 = fmul fast float %3921, %3921
  %3924 = fadd fast float %3922, %3923
  %3925 = call float @dx.op.unary.f32(i32 24, float %3924)  ; Sqrt(value)
  %3926 = extractvalue %dx.types.CBufRet.f32 %3917, 2
  %3927 = fcmp fast olt float %3925, %3926
  br i1 %3927, label %3928, label %3995

; <label>:3928                                    ; preds = %3848
  %3929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3930 = extractvalue %dx.types.CBufRet.f32 %3929, 0
  %3931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3932 = extractvalue %dx.types.CBufRet.f32 %3931, 0
  %3933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3934 = extractvalue %dx.types.CBufRet.f32 %3933, 0
  %3935 = extractvalue %dx.types.CBufRet.f32 %3929, 1
  %3936 = extractvalue %dx.types.CBufRet.f32 %3931, 1
  %3937 = extractvalue %dx.types.CBufRet.f32 %3933, 1
  %3938 = extractvalue %dx.types.CBufRet.f32 %3929, 3
  %3939 = extractvalue %dx.types.CBufRet.f32 %3931, 3
  %3940 = extractvalue %dx.types.CBufRet.f32 %3933, 3
  %3941 = fadd fast float %3938, %3914
  %3942 = fadd fast float %3939, %3915
  %3943 = fadd fast float %3940, %3916
  %3944 = fmul fast float %3941, %3930
  %3945 = call float @dx.op.tertiary.f32(i32 46, float %3942, float %3932, float %3944)  ; FMad(a,b,c)
  %3946 = call float @dx.op.tertiary.f32(i32 46, float %3943, float %3934, float %3945)  ; FMad(a,b,c)
  %3947 = fmul fast float %3941, %3935
  %3948 = call float @dx.op.tertiary.f32(i32 46, float %3942, float %3936, float %3947)  ; FMad(a,b,c)
  %3949 = call float @dx.op.tertiary.f32(i32 46, float %3943, float %3937, float %3948)  ; FMad(a,b,c)
  %3950 = fsub fast float %3946, %3938
  %3951 = fsub fast float %3949, %3939
  %3952 = fsub fast float %3950, %3918
  %3953 = fadd fast float %3952, %3926
  %3954 = fsub fast float %3951, %3919
  %3955 = fadd fast float %3954, %3926
  %3956 = extractvalue %dx.types.CBufRet.f32 %3917, 3
  %3957 = fmul fast float %3953, %3956
  %3958 = fmul fast float %3955, %3956
  %3959 = call float @dx.op.unary.f32(i32 7, float %3957)  ; Saturate(value)
  %3960 = call float @dx.op.unary.f32(i32 7, float %3958)  ; Saturate(value)
  %3961 = fsub fast float 1.000000e+00, %3959
  %3962 = fsub fast float 1.000000e+00, %3960
  %3963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %3961, float %3962, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3964 = extractvalue %dx.types.ResRet.f32 %3963, 0
  %3965 = fcmp fast ugt float %3964, 0.000000e+00
  br i1 %3965, label %3966, label %4269

; <label>:3966                                    ; preds = %3928
  %3967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3968 = extractvalue %dx.types.CBufRet.f32 %3967, 2
  %3969 = fmul fast float %3968, %3964
  %3970 = extractvalue %dx.types.CBufRet.f32 %3967, 3
  %3971 = fadd fast float %3970, %3969
  %3972 = extractvalue %dx.types.CBufRet.f32 %3933, 2
  %3973 = fadd fast float %3971, %3940
  %3974 = fmul fast float %3946, %3934
  %3975 = call float @dx.op.tertiary.f32(i32 46, float %3949, float %3937, float %3974)  ; FMad(a,b,c)
  %3976 = call float @dx.op.tertiary.f32(i32 46, float %3973, float %3972, float %3975)  ; FMad(a,b,c)
  %3977 = fsub fast float %3976, %3940
  %3978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3979 = extractvalue %dx.types.CBufRet.f32 %3978, 2
  %3980 = fsub fast float %3977, %3979
  %3981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %26, float %3961, float %3962, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3982 = extractvalue %dx.types.ResRet.f32 %3981, 0
  %3983 = extractvalue %dx.types.ResRet.f32 %3981, 1
  %3984 = extractvalue %dx.types.ResRet.f32 %3981, 2
  %3985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %26, float %3961, float %3962, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3986 = extractvalue %dx.types.ResRet.f32 %3985, 0
  %3987 = extractvalue %dx.types.ResRet.f32 %3985, 1
  %3988 = extractvalue %dx.types.ResRet.f32 %3985, 2
  %3989 = fadd fast float %3986, %3982
  %3990 = fmul fast float %3989, 0x3F847AE140000000
  %3991 = fadd fast float %3987, %3983
  %3992 = fmul fast float %3991, 0x3F847AE140000000
  %3993 = fadd fast float %3988, %3984
  %3994 = fmul fast float %3993, 0x3F847AE140000000
  br label %4269

; <label>:3995                                    ; preds = %3848
  %3996 = and i32 %145, 1
  %3997 = icmp eq i32 %3996, 0
  br i1 %3997, label %4269, label %3998

; <label>:3998                                    ; preds = %3995
  %3999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4000 = extractvalue %dx.types.CBufRet.f32 %3999, 0
  %4001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4002 = extractvalue %dx.types.CBufRet.f32 %4001, 0
  %4003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4004 = extractvalue %dx.types.CBufRet.f32 %4003, 0
  %4005 = extractvalue %dx.types.CBufRet.f32 %3999, 1
  %4006 = extractvalue %dx.types.CBufRet.f32 %4001, 1
  %4007 = extractvalue %dx.types.CBufRet.f32 %4003, 1
  %4008 = extractvalue %dx.types.CBufRet.f32 %3999, 3
  %4009 = extractvalue %dx.types.CBufRet.f32 %4001, 3
  %4010 = extractvalue %dx.types.CBufRet.f32 %4003, 3
  %4011 = fadd fast float %4008, %3914
  %4012 = fadd fast float %4009, %3915
  %4013 = fadd fast float %4010, %3916
  %4014 = fmul fast float %4011, %4000
  %4015 = call float @dx.op.tertiary.f32(i32 46, float %4012, float %4002, float %4014)  ; FMad(a,b,c)
  %4016 = call float @dx.op.tertiary.f32(i32 46, float %4013, float %4004, float %4015)  ; FMad(a,b,c)
  %4017 = fmul fast float %4011, %4005
  %4018 = call float @dx.op.tertiary.f32(i32 46, float %4012, float %4006, float %4017)  ; FMad(a,b,c)
  %4019 = call float @dx.op.tertiary.f32(i32 46, float %4013, float %4007, float %4018)  ; FMad(a,b,c)
  %4020 = fsub fast float %4016, %4008
  %4021 = fsub fast float %4019, %4009
  %4022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4023 = extractvalue %dx.types.CBufRet.f32 %4022, 0
  %4024 = extractvalue %dx.types.CBufRet.f32 %4022, 1
  %4025 = extractvalue %dx.types.CBufRet.f32 %4022, 2
  %4026 = extractvalue %dx.types.CBufRet.f32 %4022, 3
  %4027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4028 = extractvalue %dx.types.CBufRet.f32 %4027, 3
  %4029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4030 = extractvalue %dx.types.CBufRet.i32 %4029, 0
  %4031 = extractvalue %dx.types.CBufRet.i32 %4029, 1
  %4032 = udiv i32 %4031, %4030
  %4033 = fsub fast float %4020, %4023
  %4034 = fsub fast float %4021, %4024
  %4035 = call float @dx.op.binary.f32(i32 35, float %4033, float 0.000000e+00)  ; FMax(a,b)
  %4036 = call float @dx.op.binary.f32(i32 35, float %4034, float 0.000000e+00)  ; FMax(a,b)
  %4037 = call float @dx.op.binary.f32(i32 36, float %4035, float %4025)  ; FMin(a,b)
  %4038 = call float @dx.op.binary.f32(i32 36, float %4036, float %4026)  ; FMin(a,b)
  %4039 = add i32 %4030, -1
  %4040 = add i32 %4032, -1
  %4041 = fmul fast float %4037, %4028
  %4042 = fmul fast float %4038, %4028
  %4043 = fptoui float %4041 to i32
  %4044 = fptoui float %4042 to i32
  %4045 = call i32 @dx.op.binary.i32(i32 40, i32 %4043, i32 %4039)  ; UMin(a,b)
  %4046 = call i32 @dx.op.binary.i32(i32 40, i32 %4044, i32 %4040)  ; UMin(a,b)
  %4047 = mul i32 %4046, %4030
  %4048 = add i32 %4047, %4045
  %4049 = shl i32 %4048, 2
  %4050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4049, i32 undef)  ; BufferLoad(srv,index,wot)
  %4051 = extractvalue %dx.types.ResRet.i32 %4050, 0
  %4052 = icmp eq i32 %4051, -1
  br i1 %4052, label %4269, label %4053

; <label>:4053                                    ; preds = %3998
  %4054 = mul i32 %4051, 148
  %4055 = add i32 %4054, 4
  %4056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4055, i32 undef)  ; BufferLoad(srv,index,wot)
  %4057 = extractvalue %dx.types.ResRet.f32 %4056, 0
  %4058 = add i32 %4054, 8
  %4059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4058, i32 undef)  ; BufferLoad(srv,index,wot)
  %4060 = extractvalue %dx.types.ResRet.f32 %4059, 0
  %4061 = add i32 %4054, 36
  %4062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4061, i32 undef)  ; BufferLoad(srv,index,wot)
  %4063 = extractvalue %dx.types.ResRet.f32 %4062, 0
  %4064 = add i32 %4054, 60
  %4065 = add i32 %4054, 92
  %4066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4065, i32 undef)  ; BufferLoad(srv,index,wot)
  %4067 = extractvalue %dx.types.ResRet.i32 %4066, 0
  %4068 = add i32 %4054, 116
  %4069 = fsub fast float %4020, %4057
  %4070 = fsub fast float %4021, %4060
  %4071 = fmul fast float %4028, %4069
  %4072 = fmul fast float %4028, %4070
  %4073 = call float @dx.op.unary.f32(i32 7, float %4071)  ; Saturate(value)
  %4074 = call float @dx.op.unary.f32(i32 7, float %4072)  ; Saturate(value)
  %4075 = fsub fast float 1.000000e+00, %4074
  %4076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4077 = extractvalue %dx.types.CBufRet.f32 %4076, 2
  %4078 = call float @dx.op.unary.f32(i32 83, float %4073)  ; DerivCoarseX(value)
  %4079 = call float @dx.op.unary.f32(i32 83, float %4075)  ; DerivCoarseX(value)
  %4080 = call float @dx.op.unary.f32(i32 84, float %4073)  ; DerivCoarseY(value)
  %4081 = call float @dx.op.unary.f32(i32 84, float %4075)  ; DerivCoarseY(value)
  %4082 = fmul fast float %4078, %4077
  %4083 = fmul fast float %4079, %4077
  %4084 = fmul fast float %4080, %4077
  %4085 = fmul fast float %4081, %4077
  %4086 = call float @dx.op.dot2.f32(i32 54, float %4084, float %4085, float %4084, float %4085)  ; Dot2(ax,ay,bx,by)
  %4087 = call float @dx.op.dot2.f32(i32 54, float %4082, float %4083, float %4082, float %4083)  ; Dot2(ax,ay,bx,by)
  %4088 = call float @dx.op.binary.f32(i32 35, float %4087, float %4086)  ; FMax(a,b)
  %4089 = call float @dx.op.unary.f32(i32 23, float %4088)  ; Log(value)
  %4090 = fmul fast float %4089, 5.000000e-01
  %4091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.f32 %4091, 1
  %4093 = fadd fast float %4092, %4090
  %4094 = call float @dx.op.binary.f32(i32 35, float %4093, float 0.000000e+00)  ; FMax(a,b)
  %4095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4096 = extractvalue %dx.types.CBufRet.f32 %4095, 3
  %4097 = fadd fast float %4096, %4094
  %4098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4098, 3
  %4100 = fadd fast float %4097, %4099
  %4101 = add i32 %4067, 0
  %4102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4101, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4103 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4102, i32 0)  ; GetDimensions(handle,mipLevel)
  %4104 = extractvalue %dx.types.Dimensions %4103, 0
  %4105 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4104)  ; FirstbitLo(value)
  %4106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.i32 %4106, 1
  %4108 = sub nsw i32 %4107, %4105
  %4109 = sitofp i32 %4108 to float
  %4110 = fsub fast float %4100, %4109
  %4111 = call float @dx.op.binary.f32(i32 35, float %4110, float 0.000000e+00)  ; FMax(a,b)
  %4112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4102, %dx.types.Handle %24, float %4073, float %4075, float %4063, float undef, i32 0, i32 0, i32 undef, float %4111)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4113 = extractvalue %dx.types.ResRet.f32 %4112, 0
  %4114 = fcmp ule float %4113, 0x3FE0101020000000
  %4115 = extractvalue %dx.types.CBufRet.i32 %4106, 0
  %4116 = and i32 %4115, 128
  %4117 = icmp ne i32 %4116, 0
  %4118 = and i1 %4114, %4117
  br i1 %4118, label %4269, label %4119

; <label>:4119                                    ; preds = %4053
  %4120 = add i32 %4054, 20
  %4121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4120, i32 undef)  ; BufferLoad(srv,index,wot)
  %4122 = extractvalue %dx.types.ResRet.f32 %4121, 0
  %4123 = add i32 %4054, 24
  %4124 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4123, i32 undef)  ; BufferLoad(srv,index,wot)
  %4125 = extractvalue %dx.types.ResRet.f32 %4124, 0
  %4126 = add i32 %4054, 40
  %4127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4126, i32 undef)  ; BufferLoad(srv,index,wot)
  %4128 = extractvalue %dx.types.ResRet.f32 %4127, 0
  %4129 = add i32 %4054, 96
  %4130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4129, i32 undef)  ; BufferLoad(srv,index,wot)
  %4131 = extractvalue %dx.types.ResRet.i32 %4130, 0
  %4132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4133 = extractvalue %dx.types.CBufRet.f32 %4132, 2
  %4134 = fmul fast float %4133, %4073
  %4135 = fmul fast float %4133, %4075
  %4136 = extractvalue %dx.types.CBufRet.f32 %4132, 3
  %4137 = fadd fast float %4134, %4136
  %4138 = fadd fast float %4135, %4136
  %4139 = add i32 %4131, 0
  %4140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4139, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4141 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4140, i32 0)  ; GetDimensions(handle,mipLevel)
  %4142 = extractvalue %dx.types.Dimensions %4141, 0
  %4143 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4142)  ; FirstbitLo(value)
  %4144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4145 = extractvalue %dx.types.CBufRet.i32 %4144, 1
  %4146 = sub nsw i32 %4145, %4143
  %4147 = sitofp i32 %4146 to float
  %4148 = fsub fast float %4097, %4147
  %4149 = call float @dx.op.binary.f32(i32 35, float %4148, float 0.000000e+00)  ; FMax(a,b)
  %4150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4140, %dx.types.Handle %24, float %4137, float %4138, float %4128, float undef, i32 0, i32 0, i32 undef, float %4149)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4151 = extractvalue %dx.types.ResRet.f32 %4150, 0
  %4152 = fmul fast float %4151, %4122
  %4153 = fadd fast float %4152, %4125
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 0
  %4156 = extractvalue %dx.types.CBufRet.f32 %4154, 1
  %4157 = extractvalue %dx.types.CBufRet.f32 %4154, 2
  %4158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4159 = extractvalue %dx.types.CBufRet.f32 %4158, 3
  %4160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4161 = extractvalue %dx.types.CBufRet.f32 %4160, 3
  %4162 = extractvalue %dx.types.CBufRet.f32 %4154, 3
  %4163 = fadd fast float %4159, %4020
  %4164 = fadd fast float %4161, %4021
  %4165 = fadd fast float %4153, %4162
  %4166 = fmul fast float %4163, %4155
  %4167 = call float @dx.op.tertiary.f32(i32 46, float %4164, float %4156, float %4166)  ; FMad(a,b,c)
  %4168 = call float @dx.op.tertiary.f32(i32 46, float %4165, float %4157, float %4167)  ; FMad(a,b,c)
  %4169 = fsub fast float %4168, %4162
  %4170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4171 = extractvalue %dx.types.CBufRet.f32 %4170, 2
  %4172 = fsub fast float %4169, %4171
  %4173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.i32 %4173, 0
  %4175 = call i32 @dx.op.binary.i32(i32 40, i32 %4051, i32 %4174)  ; UMin(a,b)
  %4176 = mul i32 %4175, 36
  %4177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4176, i32 undef)  ; BufferLoad(srv,index,wot)
  %4178 = extractvalue %dx.types.ResRet.i32 %4177, 0
  %4179 = add i32 %4176, 4
  %4180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4181 = extractvalue %dx.types.CBufRet.f32 %4180, 0
  %4182 = fmul fast float %4181, %4073
  %4183 = fmul fast float %4181, %4075
  %4184 = extractvalue %dx.types.CBufRet.f32 %4180, 1
  %4185 = fadd fast float %4182, %4184
  %4186 = fadd fast float %4183, %4184
  %4187 = icmp eq i32 %4178, 0
  br i1 %4187, label %4256, label %4188

; <label>:4188                                    ; preds = %4119
  br label %4189

; <label>:4189                                    ; preds = %4246, %4188
  %4190 = phi float [ %4247, %4246 ], [ 0.000000e+00, %4188 ]
  %4191 = phi float [ %4248, %4246 ], [ 0.000000e+00, %4188 ]
  %4192 = phi float [ %4249, %4246 ], [ 0.000000e+00, %4188 ]
  %4193 = phi float [ %4250, %4246 ], [ 0.000000e+00, %4188 ]
  %4194 = phi float [ %4251, %4246 ], [ 0.000000e+00, %4188 ]
  %4195 = phi float [ %4252, %4246 ], [ 0.000000e+00, %4188 ]
  %4196 = phi i32 [ %4253, %4246 ], [ 0, %4188 ]
  %4197 = shl i32 %4196, 2
  %4198 = add i32 %4064, %4197
  %4199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4198, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.f32 %4199, 0
  %4201 = add i32 %4068, %4197
  %4202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4201, i32 undef)  ; BufferLoad(srv,index,wot)
  %4203 = extractvalue %dx.types.ResRet.i32 %4202, 0
  %4204 = add i32 %4203, 0
  %4205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4204, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4206 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4205, i32 0)  ; GetDimensions(handle,mipLevel)
  %4207 = extractvalue %dx.types.Dimensions %4206, 0
  %4208 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4207)  ; FirstbitLo(value)
  %4209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4210 = extractvalue %dx.types.CBufRet.i32 %4209, 1
  %4211 = sub nsw i32 %4210, %4208
  %4212 = sitofp i32 %4211 to float
  %4213 = fsub fast float %4097, %4212
  %4214 = call float @dx.op.binary.f32(i32 35, float %4213, float 0.000000e+00)  ; FMax(a,b)
  %4215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4205, %dx.types.Handle %24, float %4185, float %4186, float %4200, float undef, i32 0, i32 0, i32 undef, float %4214)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4216 = extractvalue %dx.types.ResRet.f32 %4215, 0
  %4217 = fcmp fast ogt float %4216, 0.000000e+00
  br i1 %4217, label %4218, label %4246

; <label>:4218                                    ; preds = %4189
  %4219 = add i32 %4179, %4197
  %4220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4219, i32 undef)  ; BufferLoad(srv,index,wot)
  %4221 = extractvalue %dx.types.ResRet.i32 %4220, 0
  %4222 = and i32 %4221, 32767
  %4223 = mul nuw nsw i32 %4222, 928
  %4224 = add nuw nsw i32 %4223, 48
  %4225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4224, i32 undef)  ; BufferLoad(srv,index,wot)
  %4226 = extractvalue %dx.types.ResRet.f32 %4225, 0
  %4227 = extractvalue %dx.types.ResRet.f32 %4225, 1
  %4228 = extractvalue %dx.types.ResRet.f32 %4225, 2
  %4229 = add nuw nsw i32 %4223, 60
  %4230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4229, i32 undef)  ; BufferLoad(srv,index,wot)
  %4231 = extractvalue %dx.types.ResRet.f32 %4230, 0
  %4232 = extractvalue %dx.types.ResRet.f32 %4230, 1
  %4233 = extractvalue %dx.types.ResRet.f32 %4230, 2
  %4234 = fmul fast float %4226, %4216
  %4235 = fmul fast float %4227, %4216
  %4236 = fmul fast float %4228, %4216
  %4237 = fadd fast float %4234, %4190
  %4238 = fadd fast float %4235, %4191
  %4239 = fadd fast float %4236, %4192
  %4240 = fmul fast float %4231, %4216
  %4241 = fmul fast float %4232, %4216
  %4242 = fmul fast float %4233, %4216
  %4243 = fadd fast float %4240, %4193
  %4244 = fadd fast float %4241, %4194
  %4245 = fadd fast float %4242, %4195
  br label %4246

; <label>:4246                                    ; preds = %4218, %4189
  %4247 = phi float [ %4237, %4218 ], [ %4190, %4189 ]
  %4248 = phi float [ %4238, %4218 ], [ %4191, %4189 ]
  %4249 = phi float [ %4239, %4218 ], [ %4192, %4189 ]
  %4250 = phi float [ %4243, %4218 ], [ %4193, %4189 ]
  %4251 = phi float [ %4244, %4218 ], [ %4194, %4189 ]
  %4252 = phi float [ %4245, %4218 ], [ %4195, %4189 ]
  %4253 = add nuw i32 %4196, 1
  %4254 = icmp eq i32 %4253, %4178
  br i1 %4254, label %4255, label %4189

; <label>:4255                                    ; preds = %4246
  br label %4256

; <label>:4256                                    ; preds = %4255, %4119
  %4257 = phi float [ 0.000000e+00, %4119 ], [ %4247, %4255 ]
  %4258 = phi float [ 0.000000e+00, %4119 ], [ %4248, %4255 ]
  %4259 = phi float [ 0.000000e+00, %4119 ], [ %4249, %4255 ]
  %4260 = phi float [ 0.000000e+00, %4119 ], [ %4250, %4255 ]
  %4261 = phi float [ 0.000000e+00, %4119 ], [ %4251, %4255 ]
  %4262 = phi float [ 0.000000e+00, %4119 ], [ %4252, %4255 ]
  %4263 = fadd fast float %4260, %4257
  %4264 = fmul fast float %4263, 0x3F847AE140000000
  %4265 = fadd fast float %4261, %4258
  %4266 = fmul fast float %4265, 0x3F847AE140000000
  %4267 = fadd fast float %4262, %4259
  %4268 = fmul fast float %4267, 0x3F847AE140000000
  br label %4269

; <label>:4269                                    ; preds = %4256, %4053, %3998, %3995, %3966, %3928
  %4270 = phi float [ %3980, %3966 ], [ -1.310720e+05, %3928 ], [ %4172, %4256 ], [ -1.310720e+05, %3998 ], [ -1.310720e+05, %4053 ], [ -1.310720e+05, %3995 ]
  %4271 = phi float [ %3990, %3966 ], [ 0.000000e+00, %3928 ], [ %4264, %4256 ], [ 0.000000e+00, %3998 ], [ 0.000000e+00, %4053 ], [ 0.000000e+00, %3995 ]
  %4272 = phi float [ %3992, %3966 ], [ 0.000000e+00, %3928 ], [ %4266, %4256 ], [ 0.000000e+00, %3998 ], [ 0.000000e+00, %4053 ], [ 0.000000e+00, %3995 ]
  %4273 = phi float [ %3994, %3966 ], [ 0.000000e+00, %3928 ], [ %4268, %4256 ], [ 0.000000e+00, %3998 ], [ 0.000000e+00, %4053 ], [ 0.000000e+00, %3995 ]
  %4274 = phi i1 [ true, %3966 ], [ false, %3928 ], [ true, %4256 ], [ false, %3998 ], [ false, %4053 ], [ false, %3995 ]
  %4275 = and i32 %145, 3
  %4276 = icmp eq i32 %4275, 1
  %4277 = select i1 %4276, float 1.000000e+00, float 0.000000e+00
  %4278 = fsub fast float %4270, %129
  %4279 = call float @dx.op.unary.f32(i32 7, float %4278)  ; Saturate(value)
  %4280 = select i1 %4274, float %4279, float 1.000000e+00
  %4281 = fmul fast float %4280, %4277
  %4282 = icmp eq i32 %4275, 3
  %4283 = select i1 %4282, float 1.000000e+00, float %4281
  %4284 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4283)  ; FMax(a,b)
  %4285 = call float @dx.op.unary.f32(i32 7, float %4284)  ; Saturate(value)
  %4286 = fcmp fast une float %4285, 0.000000e+00
  %4287 = call float @dx.op.dot3.f32(i32 55, float %127, float %128, float %129, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %4288 = call float @dx.op.unary.f32(i32 25, float %4287)  ; Rsqrt(value)
  br i1 %4286, label %4296, label %4289

; <label>:4289                                    ; preds = %4269
  %4290 = fmul fast float %4288, %127
  %4291 = fmul fast float %4288, %128
  %4292 = fmul fast float %4288, %129
  %4293 = fsub fast float -0.000000e+00, %4290
  %4294 = fsub fast float -0.000000e+00, %4291
  %4295 = fsub fast float -0.000000e+00, %4292
  br label %4464

; <label>:4296                                    ; preds = %4269
  %4297 = fmul fast float %127, %4288
  %4298 = fsub fast float -0.000000e+00, %4297
  %4299 = fmul fast float %128, %4288
  %4300 = fsub fast float -0.000000e+00, %4299
  %4301 = fmul fast float %129, %4288
  %4302 = fsub fast float -0.000000e+00, %4301
  %4303 = call float @dx.op.dot3.f32(i32 55, float %4298, float %4300, float %4302, float %80, float %82, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %4304 = fmul fast float %4285, 2.500000e+00
  %4305 = call float @dx.op.unary.f32(i32 7, float %4304)  ; Saturate(value)
  %4306 = fmul fast float %4285, 0x4013FFFFE0000000
  %4307 = fadd fast float %4306, 0xBFFFFFFFE0000000
  %4308 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  %4309 = fmul fast float %4285, 0x4004000020000000
  %4310 = fadd fast float %4309, 0xBFF8000040000000
  %4311 = call float @dx.op.unary.f32(i32 7, float %4310)  ; Saturate(value)
  %4312 = call float @dx.op.unary.f32(i32 7, float %4305)  ; Saturate(value)
  %4313 = fmul fast float %3808, 1.000000e+01
  %4314 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4315 = fmul fast float %4314, 2.000000e+00
  %4316 = fsub fast float 3.000000e+00, %4315
  %4317 = fmul fast float %4314, %4314
  %4318 = fmul fast float %4317, %4316
  %4319 = fsub fast float 1.000000e+00, %4318
  %4320 = fsub fast float 0x3FE3333340000000, %3829
  %4321 = fmul fast float %4320, 0x400AAAAAA0000000
  %4322 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4323 = fmul fast float %4319, %4322
  %4324 = fmul fast float %3907, 0x3FEA2B8620000000
  %4325 = fmul fast float %3908, 0x3FEA2B8620000000
  %4326 = fmul fast float %3909, 0x3FEA2B8620000000
  %4327 = fadd fast float %4324, 0x3FC81DFBA0000000
  %4328 = fmul fast float %4327, %3907
  %4329 = fadd fast float %4328, 0x3F910E6020000000
  %4330 = fadd fast float %4325, 0x3FC81DFBA0000000
  %4331 = fmul fast float %4330, %3908
  %4332 = fadd fast float %4331, 0x3F910E6020000000
  %4333 = fadd fast float %4326, 0x3FC81DFBA0000000
  %4334 = fmul fast float %4333, %3909
  %4335 = fadd fast float %4334, 0x3F910E6020000000
  %4336 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4337 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4338 = call float @dx.op.unary.f32(i32 7, float %4335)  ; Saturate(value)
  %4339 = fsub fast float %4336, %3907
  %4340 = fsub fast float %4337, %3908
  %4341 = fsub fast float %4338, %3909
  %4342 = fmul fast float %4339, %4312
  %4343 = fmul fast float %4342, %4323
  %4344 = fmul fast float %4340, %4312
  %4345 = fmul fast float %4344, %4323
  %4346 = fmul fast float %4341, %4312
  %4347 = fmul fast float %4346, %4323
  %4348 = fadd fast float %4343, %3907
  %4349 = fadd fast float %4345, %3908
  %4350 = fadd fast float %4347, %3909
  %4351 = fmul fast float %3769, %3769
  %4352 = fmul fast float %4351, %4351
  %4353 = fadd fast float %4308, 1.000000e+00
  %4354 = fsub fast float %4353, %4323
  %4355 = call float @dx.op.unary.f32(i32 7, float %4354)  ; Saturate(value)
  %4356 = call float @dx.op.dot3.f32(i32 55, float %80, float %82, float %84, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4357 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4358 = fsub fast float 1.000000e+00, %4352
  %4359 = call float @dx.op.binary.f32(i32 36, float %4355, float %4358)  ; FMin(a,b)
  %4360 = call float @dx.op.unary.f32(i32 7, float %4311)  ; Saturate(value)
  %4361 = call float @dx.op.binary.f32(i32 35, float %4359, float %4360)  ; FMax(a,b)
  %4362 = fadd fast float %4357, 0xBFE4CCCCC0000000
  %4363 = fmul fast float %4362, 0x4006DB6DA0000000
  %4364 = call float @dx.op.unary.f32(i32 7, float %4363)  ; Saturate(value)
  %4365 = fmul fast float %4364, 2.000000e+00
  %4366 = fsub fast float 3.000000e+00, %4365
  %4367 = bitcast float %3826 to i32
  %4368 = ashr i32 %4367, 1
  %4369 = add nsw i32 %4368, 532487669
  %4370 = bitcast i32 %4369 to float
  %4371 = fsub fast float 1.000000e+00, %4370
  %4372 = bitcast float %4371 to i32
  %4373 = sub nsw i32 2129859010, %4372
  %4374 = bitcast i32 %4373 to float
  %4375 = fmul fast float %4374, 2.000000e+00
  %4376 = bitcast float %3827 to i32
  %4377 = ashr i32 %4376, 1
  %4378 = add nsw i32 %4377, 532487669
  %4379 = bitcast i32 %4378 to float
  %4380 = fsub fast float 1.000000e+00, %4379
  %4381 = bitcast float %4380 to i32
  %4382 = sub nsw i32 2129859010, %4381
  %4383 = bitcast i32 %4382 to float
  %4384 = fmul fast float %4383, 2.000000e+00
  %4385 = bitcast float %3828 to i32
  %4386 = ashr i32 %4385, 1
  %4387 = add nsw i32 %4386, 532487669
  %4388 = bitcast i32 %4387 to float
  %4389 = fsub fast float 1.000000e+00, %4388
  %4390 = bitcast float %4389 to i32
  %4391 = sub nsw i32 2129859010, %4390
  %4392 = bitcast i32 %4391 to float
  %4393 = fmul fast float %4392, 2.000000e+00
  %4394 = fsub fast float 0x4002A9FBE0000000, %4375
  %4395 = fadd fast float %4375, 0x3FD54FDF00000000
  %4396 = bitcast float %4395 to i32
  %4397 = sub nsw i32 2129859010, %4396
  %4398 = bitcast i32 %4397 to float
  %4399 = fmul fast float %4398, %4394
  %4400 = fmul fast float %4399, %4399
  %4401 = fsub fast float 0x4002A9FBE0000000, %4384
  %4402 = fadd fast float %4384, 0x3FD54FDF00000000
  %4403 = bitcast float %4402 to i32
  %4404 = sub nsw i32 2129859010, %4403
  %4405 = bitcast i32 %4404 to float
  %4406 = fmul fast float %4405, %4401
  %4407 = fmul fast float %4406, %4406
  %4408 = fsub fast float 0x4002A9FBE0000000, %4393
  %4409 = fadd fast float %4393, 0x3FD54FDF00000000
  %4410 = bitcast float %4409 to i32
  %4411 = sub nsw i32 2129859010, %4410
  %4412 = bitcast i32 %4411 to float
  %4413 = fmul fast float %4412, %4408
  %4414 = fmul fast float %4413, %4413
  %4415 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4400)  ; FMax(a,b)
  %4416 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4407)  ; FMax(a,b)
  %4417 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4414)  ; FMax(a,b)
  %4418 = fsub fast float 1.000000e+00, %4303
  %4419 = fadd fast float %4418, %4319
  %4420 = call float @dx.op.unary.f32(i32 7, float %4419)  ; Saturate(value)
  %4421 = fsub fast float 1.000000e+00, %4283
  %4422 = fmul fast float %4361, %4421
  %4423 = fmul fast float %4364, %4364
  %4424 = fmul fast float %4423, %4422
  %4425 = fmul fast float %4424, %4366
  %4426 = fmul fast float %4421, 0xBFE99999A0000000
  %4427 = fmul fast float %4426, %4312
  %4428 = fmul fast float %4427, %4323
  %4429 = fadd fast float %4428, 1.000000e+00
  %4430 = fadd fast float %3829, -1.000000e+00
  %4431 = fmul fast float %4429, %4430
  %4432 = fadd fast float %4431, 1.000000e+00
  %4433 = fsub fast float %4415, %3826
  %4434 = fsub fast float %4416, %3827
  %4435 = fsub fast float %4417, %3828
  %4436 = fmul fast float %4425, %4433
  %4437 = fmul fast float %4425, %4434
  %4438 = fmul fast float %4425, %4435
  %4439 = fadd fast float %4436, %3826
  %4440 = fadd fast float %4437, %3827
  %4441 = fadd fast float %4438, %3828
  %4442 = fsub fast float %80, %3805
  %4443 = fsub fast float %82, %3806
  %4444 = fsub fast float %84, %3807
  %4445 = fmul fast float %4425, %4442
  %4446 = fmul fast float %4425, %4443
  %4447 = fmul fast float %4425, %4444
  %4448 = fadd fast float %4445, %3805
  %4449 = fadd fast float %4446, %3806
  %4450 = fadd fast float %4447, %3807
  %4451 = fmul fast float %4425, %4420
  %4452 = call float @dx.op.unary.f32(i32 7, float %4432)  ; Saturate(value)
  %4453 = fsub fast float 1.000000e+00, %4452
  %4454 = fmul fast float %4451, %4453
  %4455 = fadd fast float %4454, %4452
  %4456 = fsub fast float 1.000000e+00, %3769
  %4457 = fmul fast float %4425, %4456
  %4458 = fadd fast float %4457, %3769
  %4459 = call float @dx.op.dot3.f32(i32 55, float %4448, float %4449, float %4450, float %4448, float %4449, float %4450)  ; Dot3(ax,ay,az,bx,by,bz)
  %4460 = call float @dx.op.unary.f32(i32 25, float %4459)  ; Rsqrt(value)
  %4461 = fmul fast float %4448, %4460
  %4462 = fmul fast float %4449, %4460
  %4463 = fmul fast float %4450, %4460
  br label %4464

; <label>:4464                                    ; preds = %4296, %4289
  %4465 = phi float [ %4295, %4289 ], [ %4302, %4296 ]
  %4466 = phi float [ %4294, %4289 ], [ %4300, %4296 ]
  %4467 = phi float [ %4293, %4289 ], [ %4298, %4296 ]
  %4468 = phi float [ %4292, %4289 ], [ %4301, %4296 ]
  %4469 = phi float [ %4291, %4289 ], [ %4299, %4296 ]
  %4470 = phi float [ %4290, %4289 ], [ %4297, %4296 ]
  %4471 = phi float [ %3826, %4289 ], [ %4439, %4296 ]
  %4472 = phi float [ %3827, %4289 ], [ %4440, %4296 ]
  %4473 = phi float [ %3828, %4289 ], [ %4441, %4296 ]
  %4474 = phi float [ %3805, %4289 ], [ %4461, %4296 ]
  %4475 = phi float [ %3806, %4289 ], [ %4462, %4296 ]
  %4476 = phi float [ %3807, %4289 ], [ %4463, %4296 ]
  %4477 = phi float [ %3907, %4289 ], [ %4348, %4296 ]
  %4478 = phi float [ %3908, %4289 ], [ %4349, %4296 ]
  %4479 = phi float [ %3909, %4289 ], [ %4350, %4296 ]
  %4480 = phi float [ %3829, %4289 ], [ %4455, %4296 ]
  %4481 = phi float [ %3769, %4289 ], [ %4458, %4296 ]
  %4482 = select i1 %171, float 0.000000e+00, float %4473
  %4483 = call float @dx.op.dot3.f32(i32 55, float %4474, float %4475, float %4476, float %4467, float %4466, float %4465)  ; Dot3(ax,ay,az,bx,by,bz)
  %4484 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4485 = call float @dx.op.dot3.f32(i32 55, float %4470, float %4469, float %4468, float %4474, float %4475, float %4476)  ; Dot3(ax,ay,az,bx,by,bz)
  %4486 = fmul fast float %4485, 2.000000e+00
  %4487 = fmul fast float %4486, %4474
  %4488 = fmul fast float %4486, %4475
  %4489 = fmul fast float %4486, %4476
  %4490 = fsub fast float %4470, %4487
  %4491 = fsub fast float %4469, %4488
  %4492 = fsub fast float %4468, %4489
  %4493 = call float @dx.op.binary.f32(i32 36, float %4481, float 1.000000e+00)  ; FMin(a,b)
  %4494 = fsub fast float 1.000000e+00, %4481
  %4495 = bitcast float %4494 to i32
  %4496 = sub nsw i32 2129859010, %4495
  %4497 = bitcast i32 %4496 to float
  %4498 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %48)  ; FMax(a,b)
  %4499 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %4500 = fcmp fast oeq float %4499, 0.000000e+00
  %4501 = fcmp fast oeq float %4498, 0.000000e+00
  %4502 = or i1 %4501, %4500
  br i1 %4502, label %4532, label %4503

; <label>:4503                                    ; preds = %4464
  %4504 = fsub fast float -0.000000e+00, %51
  %4505 = fsub fast float -0.000000e+00, %49
  %4506 = call float @dx.op.unary.f32(i32 24, float %4499)  ; Sqrt(value)
  %4507 = fdiv fast float %4506, %4498
  %4508 = fcmp fast ogt float %4507, 0x3FFB6F8900000000
  %4509 = select i1 %4508, float 0x3FFB6F8900000000, float %4507
  %4510 = fmul fast float %4509, 0x3FE8A23460000000
  %4511 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4512 = call float @dx.op.binary.f32(i32 35, float %4509, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4513 = fmul fast float %4511, %4498
  %4514 = fmul fast float %4512, 0x3FF279A740000000
  %4515 = fadd fast float %4514, -1.000000e+00
  %4516 = call float @dx.op.dot3.f32(i32 55, float %4504, float %4505, float %50, float %4504, float %4505, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %4517 = call float @dx.op.unary.f32(i32 25, float %4516)  ; Rsqrt(value)
  %4518 = fmul fast float %4517, %4504
  %4519 = fmul fast float %4517, %4505
  %4520 = fmul fast float %4517, %50
  %4521 = fmul fast float %4515, %4515
  %4522 = fsub fast float 1.000000e+00, %4521
  %4523 = fmul fast float %4512, 0x40005F8BE0000000
  %4524 = fsub fast float 0x400C5BF8A0000000, %4523
  %4525 = fdiv fast float %4513, %4524
  %4526 = fmul fast float %4525, 0x3FEE31C3C0000000
  %4527 = fmul fast float %4526, %4522
  %4528 = fmul fast float %4512, 0x3FDACB7480000000
  %4529 = fadd fast float %4528, 0xBFD7347680000000
  %4530 = fmul fast float %4529, %4525
  %4531 = fmul fast float %4530, %4522
  br label %4532

; <label>:4532                                    ; preds = %4503, %4464
  %4533 = phi float [ %4518, %4503 ], [ 0.000000e+00, %4464 ]
  %4534 = phi float [ %4519, %4503 ], [ 0.000000e+00, %4464 ]
  %4535 = phi float [ %4520, %4503 ], [ 0.000000e+00, %4464 ]
  %4536 = phi float [ %4527, %4503 ], [ 0.000000e+00, %4464 ]
  %4537 = phi float [ %4531, %4503 ], [ 0.000000e+00, %4464 ]
  %4538 = call float @dx.op.dot3.f32(i32 55, float %4533, float %4534, float %4535, float %4474, float %4475, float %4476)  ; Dot3(ax,ay,az,bx,by,bz)
  %4539 = fmul fast float %4538, 0x3FDF454380000000
  %4540 = fmul fast float %4538, %4538
  %4541 = fmul fast float %4540, 0x3FEE471020000000
  %4542 = fadd fast float %4541, 0xBFD42F6020000000
  %4543 = fmul fast float %4498, 0x3FD20DD760000000
  %4544 = fmul fast float %4542, %4537
  %4545 = fadd fast float %4544, %4543
  %4546 = fmul fast float %4539, %4536
  %4547 = fadd fast float %4545, %4546
  %4548 = fsub fast float %4545, %4546
  %4549 = call float @dx.op.dot3.f32(i32 55, float %4533, float %4534, float %4535, float %4490, float %4491, float %4492)  ; Dot3(ax,ay,az,bx,by,bz)
  %4550 = fmul fast float %4549, 0x3FDF454380000000
  %4551 = fmul fast float %4549, %4549
  %4552 = fmul fast float %4551, 0x3FEE471020000000
  %4553 = fadd fast float %4552, 0xBFD42F6020000000
  %4554 = call float @dx.op.dot3.f32(i32 55, float %4498, float %4536, float %4537, float 0x3FD20DD760000000, float %4550, float %4553)  ; Dot3(ax,ay,az,bx,by,bz)
  %4555 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %44)  ; FMax(a,b)
  %4556 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float %45, float %46, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %4557 = fcmp fast oeq float %4556, 0.000000e+00
  %4558 = fcmp fast oeq float %4555, 0.000000e+00
  %4559 = or i1 %4558, %4557
  br i1 %4559, label %4589, label %4560

; <label>:4560                                    ; preds = %4532
  %4561 = fsub fast float -0.000000e+00, %47
  %4562 = fsub fast float -0.000000e+00, %45
  %4563 = call float @dx.op.unary.f32(i32 24, float %4556)  ; Sqrt(value)
  %4564 = fdiv fast float %4563, %4555
  %4565 = fcmp fast ogt float %4564, 0x3FFB6F8900000000
  %4566 = select i1 %4565, float 0x3FFB6F8900000000, float %4564
  %4567 = fmul fast float %4566, 0x3FE8A23460000000
  %4568 = call float @dx.op.unary.f32(i32 7, float %4567)  ; Saturate(value)
  %4569 = call float @dx.op.binary.f32(i32 35, float %4566, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4570 = fmul fast float %4568, %4555
  %4571 = fmul fast float %4569, 0x3FF279A740000000
  %4572 = fadd fast float %4571, -1.000000e+00
  %4573 = call float @dx.op.dot3.f32(i32 55, float %4561, float %4562, float %46, float %4561, float %4562, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %4574 = call float @dx.op.unary.f32(i32 25, float %4573)  ; Rsqrt(value)
  %4575 = fmul fast float %4574, %4561
  %4576 = fmul fast float %4574, %4562
  %4577 = fmul fast float %4574, %46
  %4578 = fmul fast float %4572, %4572
  %4579 = fsub fast float 1.000000e+00, %4578
  %4580 = fmul fast float %4569, 0x40005F8BE0000000
  %4581 = fsub fast float 0x400C5BF8A0000000, %4580
  %4582 = fdiv fast float %4570, %4581
  %4583 = fmul fast float %4582, 0x3FEE31C3C0000000
  %4584 = fmul fast float %4583, %4579
  %4585 = fmul fast float %4569, 0x3FDACB7480000000
  %4586 = fadd fast float %4585, 0xBFD7347680000000
  %4587 = fmul fast float %4586, %4582
  %4588 = fmul fast float %4587, %4579
  br label %4589

; <label>:4589                                    ; preds = %4560, %4532
  %4590 = phi float [ %4575, %4560 ], [ 0.000000e+00, %4532 ]
  %4591 = phi float [ %4576, %4560 ], [ 0.000000e+00, %4532 ]
  %4592 = phi float [ %4577, %4560 ], [ 0.000000e+00, %4532 ]
  %4593 = phi float [ %4584, %4560 ], [ 0.000000e+00, %4532 ]
  %4594 = phi float [ %4588, %4560 ], [ 0.000000e+00, %4532 ]
  %4595 = call float @dx.op.dot3.f32(i32 55, float %4590, float %4591, float %4592, float %4474, float %4475, float %4476)  ; Dot3(ax,ay,az,bx,by,bz)
  %4596 = fmul fast float %4595, 0x3FDF454380000000
  %4597 = fmul fast float %4595, %4595
  %4598 = fmul fast float %4597, 0x3FEE471020000000
  %4599 = fadd fast float %4598, 0xBFD42F6020000000
  %4600 = fmul fast float %4555, 0x3FD20DD760000000
  %4601 = fmul fast float %4599, %4594
  %4602 = fadd fast float %4601, %4600
  %4603 = fmul fast float %4596, %4593
  %4604 = fadd fast float %4602, %4603
  %4605 = fsub fast float %4602, %4603
  %4606 = call float @dx.op.dot3.f32(i32 55, float %4590, float %4591, float %4592, float %4490, float %4491, float %4492)  ; Dot3(ax,ay,az,bx,by,bz)
  %4607 = fmul fast float %4606, 0x3FDF454380000000
  %4608 = fmul fast float %4606, %4606
  %4609 = fmul fast float %4608, 0x3FEE471020000000
  %4610 = fadd fast float %4609, 0xBFD42F6020000000
  %4611 = call float @dx.op.dot3.f32(i32 55, float %4555, float %4593, float %4594, float 0x3FD20DD760000000, float %4607, float %4610)  ; Dot3(ax,ay,az,bx,by,bz)
  %4612 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %40)  ; FMax(a,b)
  %4613 = call float @dx.op.dot3.f32(i32 55, float %41, float %42, float %43, float %41, float %42, float %43)  ; Dot3(ax,ay,az,bx,by,bz)
  %4614 = fcmp fast oeq float %4613, 0.000000e+00
  %4615 = fcmp fast oeq float %4612, 0.000000e+00
  %4616 = or i1 %4615, %4614
  br i1 %4616, label %4646, label %4617

; <label>:4617                                    ; preds = %4589
  %4618 = fsub fast float -0.000000e+00, %43
  %4619 = fsub fast float -0.000000e+00, %41
  %4620 = call float @dx.op.unary.f32(i32 24, float %4613)  ; Sqrt(value)
  %4621 = fdiv fast float %4620, %4612
  %4622 = fcmp fast ogt float %4621, 0x3FFB6F8900000000
  %4623 = select i1 %4622, float 0x3FFB6F8900000000, float %4621
  %4624 = fmul fast float %4623, 0x3FE8A23460000000
  %4625 = call float @dx.op.unary.f32(i32 7, float %4624)  ; Saturate(value)
  %4626 = call float @dx.op.binary.f32(i32 35, float %4623, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4627 = fmul fast float %4625, %4612
  %4628 = fmul fast float %4626, 0x3FF279A740000000
  %4629 = fadd fast float %4628, -1.000000e+00
  %4630 = call float @dx.op.dot3.f32(i32 55, float %4618, float %4619, float %42, float %4618, float %4619, float %42)  ; Dot3(ax,ay,az,bx,by,bz)
  %4631 = call float @dx.op.unary.f32(i32 25, float %4630)  ; Rsqrt(value)
  %4632 = fmul fast float %4631, %4618
  %4633 = fmul fast float %4631, %4619
  %4634 = fmul fast float %4631, %42
  %4635 = fmul fast float %4629, %4629
  %4636 = fsub fast float 1.000000e+00, %4635
  %4637 = fmul fast float %4626, 0x40005F8BE0000000
  %4638 = fsub fast float 0x400C5BF8A0000000, %4637
  %4639 = fdiv fast float %4627, %4638
  %4640 = fmul fast float %4639, 0x3FEE31C3C0000000
  %4641 = fmul fast float %4640, %4636
  %4642 = fmul fast float %4626, 0x3FDACB7480000000
  %4643 = fadd fast float %4642, 0xBFD7347680000000
  %4644 = fmul fast float %4643, %4639
  %4645 = fmul fast float %4644, %4636
  br label %4646

; <label>:4646                                    ; preds = %4617, %4589
  %4647 = phi float [ %4632, %4617 ], [ 0.000000e+00, %4589 ]
  %4648 = phi float [ %4633, %4617 ], [ 0.000000e+00, %4589 ]
  %4649 = phi float [ %4634, %4617 ], [ 0.000000e+00, %4589 ]
  %4650 = phi float [ %4641, %4617 ], [ 0.000000e+00, %4589 ]
  %4651 = phi float [ %4645, %4617 ], [ 0.000000e+00, %4589 ]
  %4652 = call float @dx.op.dot3.f32(i32 55, float %4647, float %4648, float %4649, float %4474, float %4475, float %4476)  ; Dot3(ax,ay,az,bx,by,bz)
  %4653 = fmul fast float %4652, 0x3FDF454380000000
  %4654 = fmul fast float %4652, %4652
  %4655 = fmul fast float %4654, 0x3FEE471020000000
  %4656 = fadd fast float %4655, 0xBFD42F6020000000
  %4657 = fmul fast float %4612, 0x3FD20DD760000000
  %4658 = fmul fast float %4656, %4651
  %4659 = fadd fast float %4658, %4657
  %4660 = fmul fast float %4653, %4650
  %4661 = fadd fast float %4659, %4660
  %4662 = fsub fast float %4659, %4660
  %4663 = call float @dx.op.dot3.f32(i32 55, float %4647, float %4648, float %4649, float %4490, float %4491, float %4492)  ; Dot3(ax,ay,az,bx,by,bz)
  %4664 = fmul fast float %4663, 0x3FDF454380000000
  %4665 = fmul fast float %4663, %4663
  %4666 = fmul fast float %4665, 0x3FEE471020000000
  %4667 = fadd fast float %4666, 0xBFD42F6020000000
  %4668 = call float @dx.op.dot3.f32(i32 55, float %4612, float %4650, float %4651, float 0x3FD20DD760000000, float %4664, float %4667)  ; Dot3(ax,ay,az,bx,by,bz)
  %4669 = call float @dx.op.binary.f32(i32 35, float %4547, float 0.000000e+00)  ; FMax(a,b)
  %4670 = call float @dx.op.binary.f32(i32 35, float %4604, float 0.000000e+00)  ; FMax(a,b)
  %4671 = call float @dx.op.binary.f32(i32 35, float %4661, float 0.000000e+00)  ; FMax(a,b)
  %4672 = call float @dx.op.binary.f32(i32 35, float %4548, float 0.000000e+00)  ; FMax(a,b)
  %4673 = call float @dx.op.binary.f32(i32 35, float %4605, float 0.000000e+00)  ; FMax(a,b)
  %4674 = call float @dx.op.binary.f32(i32 35, float %4662, float 0.000000e+00)  ; FMax(a,b)
  %4675 = call float @dx.op.binary.f32(i32 35, float %4554, float 0.000000e+00)  ; FMax(a,b)
  %4676 = call float @dx.op.binary.f32(i32 35, float %4611, float 0.000000e+00)  ; FMax(a,b)
  %4677 = call float @dx.op.binary.f32(i32 35, float %4668, float 0.000000e+00)  ; FMax(a,b)
  %4678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4679 = extractvalue %dx.types.CBufRet.f32 %4678, 0
  %4680 = call float @dx.op.binary.f32(i32 36, float %4477, float %4679)  ; FMin(a,b)
  %4681 = fsub fast float 1.000000e+00, %4493
  %4682 = fmul fast float %4680, %4681
  %4683 = fsub fast float 1.000000e+00, %4682
  %4684 = bitcast float %4683 to i32
  %4685 = sub nsw i32 2129859010, %4684
  %4686 = bitcast i32 %4685 to float
  %4687 = call float @dx.op.binary.f32(i32 36, float %4478, float %4679)  ; FMin(a,b)
  %4688 = fmul fast float %4687, %4681
  %4689 = fsub fast float 1.000000e+00, %4688
  %4690 = bitcast float %4689 to i32
  %4691 = sub nsw i32 2129859010, %4690
  %4692 = bitcast i32 %4691 to float
  %4693 = call float @dx.op.binary.f32(i32 36, float %4479, float %4679)  ; FMin(a,b)
  %4694 = fmul fast float %4693, %4681
  %4695 = fsub fast float 1.000000e+00, %4694
  %4696 = bitcast float %4695 to i32
  %4697 = sub nsw i32 2129859010, %4696
  %4698 = bitcast i32 %4697 to float
  %4699 = fmul fast float %4669, %4493
  %4700 = fmul fast float %4699, %4686
  %4701 = fmul fast float %4670, %4493
  %4702 = fmul fast float %4701, %4692
  %4703 = fmul fast float %4671, %4493
  %4704 = fmul fast float %4703, %4698
  %4705 = call float @dx.op.binary.f32(i32 36, float %4471, float %4679)  ; FMin(a,b)
  %4706 = fmul fast float %4705, %4681
  %4707 = fsub fast float 1.000000e+00, %4706
  %4708 = bitcast float %4707 to i32
  %4709 = sub nsw i32 2129859010, %4708
  %4710 = bitcast i32 %4709 to float
  %4711 = call float @dx.op.binary.f32(i32 36, float %4472, float %4679)  ; FMin(a,b)
  %4712 = fmul fast float %4711, %4681
  %4713 = fsub fast float 1.000000e+00, %4712
  %4714 = bitcast float %4713 to i32
  %4715 = sub nsw i32 2129859010, %4714
  %4716 = bitcast i32 %4715 to float
  %4717 = call float @dx.op.binary.f32(i32 36, float %4482, float %4679)  ; FMin(a,b)
  %4718 = fmul fast float %4717, %4681
  %4719 = fsub fast float 1.000000e+00, %4718
  %4720 = bitcast float %4719 to i32
  %4721 = sub nsw i32 2129859010, %4720
  %4722 = bitcast i32 %4721 to float
  %4723 = fmul fast float %4675, %4493
  %4724 = fmul fast float %4723, %4710
  %4725 = fmul fast float %4676, %4493
  %4726 = fmul fast float %4725, %4716
  %4727 = fmul fast float %4677, %4493
  %4728 = fmul fast float %4727, %4722
  %4729 = call float @dx.op.dot3.f32(i32 55, float %4700, float %4702, float %4704, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4730 = select i1 %171, float 0.000000e+00, float %4700
  %4731 = select i1 %171, float %4729, float %4702
  %4732 = select i1 %171, float 0.000000e+00, float %4704
  %4733 = call float @dx.op.dot3.f32(i32 55, float %4672, float %4673, float %4674, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4734 = select i1 %171, float 0.000000e+00, float %4672
  %4735 = select i1 %171, float %4733, float %4673
  %4736 = select i1 %171, float 0.000000e+00, float %4674
  %4737 = call float @dx.op.dot3.f32(i32 55, float %4724, float %4726, float %4728, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4738 = select i1 %171, float 0.000000e+00, float %4724
  %4739 = select i1 %171, float %4737, float %4726
  %4740 = select i1 %171, float 0.000000e+00, float %4728
  %4741 = fmul fast float %4484, 9.843750e-01
  %4742 = fmul fast float %4480, 9.843750e-01
  %4743 = fadd fast float %4741, 7.812500e-03
  %4744 = fadd fast float %4742, 7.812500e-03
  %4745 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %4743, float %4744, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4746 = extractvalue %dx.types.ResRet.f32 %4745, 2
  %4747 = extractvalue %dx.types.ResRet.f32 %4745, 3
  %4748 = fmul fast float %4746, %4471
  %4749 = fmul fast float %4746, %4472
  %4750 = fmul fast float %4746, %4482
  %4751 = fadd fast float %4748, %4747
  %4752 = fadd fast float %4749, %4747
  %4753 = fadd fast float %4750, %4747
  %4754 = call float @dx.op.binary.f32(i32 35, float %4752, float %4753)  ; FMax(a,b)
  %4755 = call float @dx.op.binary.f32(i32 35, float %4751, float %4754)  ; FMax(a,b)
  %4756 = fsub fast float 1.000000e+00, %4755
  %4757 = fmul fast float %4751, %4738
  %4758 = fmul fast float %4752, %4739
  %4759 = fmul fast float %4753, %4740
  %4760 = fadd fast float %4757, %3761
  %4761 = fmul fast float %4760, %932
  %4762 = fadd fast float %4758, %3762
  %4763 = fmul fast float %4762, %932
  %4764 = fadd fast float %4759, %3763
  %4765 = fmul fast float %4764, %932
  %4766 = fmul fast float %4756, %4732
  %4767 = fmul fast float %4756, %4731
  %4768 = fmul fast float %4756, %4730
  %4769 = fmul fast float %4756, %3895
  %4770 = fadd fast float %4769, -1.000000e+00
  %4771 = fmul fast float %4770, %932
  %4772 = fadd fast float %4771, 1.000000e+00
  %4773 = fmul fast float %4756, %3894
  %4774 = fadd fast float %4773, -1.000000e+00
  %4775 = fmul fast float %4774, %932
  %4776 = fadd fast float %4775, 1.000000e+00
  %4777 = fmul fast float %4756, %3893
  %4778 = fadd fast float %4777, -1.000000e+00
  %4779 = fmul fast float %4778, %932
  %4780 = fadd fast float %4779, 1.000000e+00
  %4781 = fmul fast float %4780, %4734
  %4782 = fmul fast float %4776, %4735
  %4783 = fmul fast float %4772, %4736
  %4784 = fadd fast float %4781, %4768
  %4785 = fmul fast float %4784, %932
  %4786 = fadd fast float %4782, %4767
  %4787 = fmul fast float %4786, %932
  %4788 = fadd fast float %4783, %4766
  %4789 = fmul fast float %4788, %932
  %4790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4791 = extractvalue %dx.types.CBufRet.f32 %4790, 3
  %4792 = fcmp fast oeq float %4791, 0.000000e+00
  br i1 %4792, label %4978, label %4793

; <label>:4793                                    ; preds = %4646
  %4794 = extractvalue %dx.types.CBufRet.f32 %4790, 0
  %4795 = extractvalue %dx.types.CBufRet.f32 %4790, 1
  %4796 = extractvalue %dx.types.CBufRet.f32 %4790, 2
  %4797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4798 = extractvalue %dx.types.CBufRet.f32 %4797, 0
  %4799 = extractvalue %dx.types.CBufRet.f32 %4797, 1
  %4800 = extractvalue %dx.types.CBufRet.f32 %4797, 2
  %4801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4802 = extractvalue %dx.types.CBufRet.f32 %4801, 0
  %4803 = extractvalue %dx.types.CBufRet.f32 %4801, 1
  %4804 = call float @dx.op.dot3.f32(i32 55, float %4798, float %4799, float %4800, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4805 = select i1 %171, float %4802, float %4798
  %4806 = select i1 %171, float %4804, float %4799
  %4807 = select i1 %171, float %4803, float %4800
  %4808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4809 = extractvalue %dx.types.CBufRet.f32 %4808, 1
  %4810 = fcmp fast une float %4809, 0.000000e+00
  br i1 %4810, label %4811, label %4828

; <label>:4811                                    ; preds = %4793
  %4812 = fptoui float %71 to i32
  %4813 = fptoui float %72 to i32
  %4814 = lshr i32 %4812, 4
  %4815 = lshr i32 %4813, 4
  %4816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4817 = extractvalue %dx.types.CBufRet.f32 %4816, 0
  %4818 = fptoui float %4817 to i32
  %4819 = add i32 %4818, 15
  %4820 = lshr i32 %4819, 4
  %4821 = mul i32 %4820, %4815
  %4822 = add i32 %4821, %4814
  %4823 = shl i32 %4822, 3
  %4824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4823, i32 undef)  ; BufferLoad(srv,index,wot)
  %4825 = extractvalue %dx.types.ResRet.i32 %4824, 0
  %4826 = and i32 %4825, -268435456
  %4827 = icmp eq i32 %4826, -1342177280
  br i1 %4827, label %4838, label %4828

; <label>:4828                                    ; preds = %4811, %4793
  %4829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4830 = extractvalue %dx.types.CBufRet.f32 %4829, 2
  %4831 = extractvalue %dx.types.CBufRet.f32 %4829, 3
  %4832 = fmul fast float %4830, %71
  %4833 = fmul fast float %4831, %72
  %4834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %27, float %4832, float %4833, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4835 = extractvalue %dx.types.ResRet.f32 %4834, 0
  %4836 = extractvalue %dx.types.ResRet.f32 %4834, 1
  %4837 = extractvalue %dx.types.ResRet.f32 %4834, 2
  br label %4838

; <label>:4838                                    ; preds = %4828, %4811
  %4839 = phi float [ %4835, %4828 ], [ 0.000000e+00, %4811 ]
  %4840 = phi float [ %4836, %4828 ], [ 0.000000e+00, %4811 ]
  %4841 = phi float [ %4837, %4828 ], [ 0.000000e+00, %4811 ]
  %4842 = call float @dx.op.binary.f32(i32 36, float %4840, float %4841)  ; FMin(a,b)
  %4843 = call float @dx.op.binary.f32(i32 36, float %4839, float %4842)  ; FMin(a,b)
  %4844 = fcmp fast ogt float %4843, 0.000000e+00
  br i1 %4844, label %4845, label %4978, !dx.controlflow.hints !71

; <label>:4845                                    ; preds = %4838
  %4846 = fmul fast float %4839, %4805
  %4847 = fmul fast float %4840, %4806
  %4848 = fmul fast float %4841, %4807
  %4849 = fsub fast float %4794, %4470
  %4850 = fsub fast float %4795, %4469
  %4851 = fsub fast float %4796, %4468
  %4852 = call float @dx.op.dot3.f32(i32 55, float %4849, float %4850, float %4851, float %4849, float %4850, float %4851)  ; Dot3(ax,ay,az,bx,by,bz)
  %4853 = call float @dx.op.unary.f32(i32 25, float %4852)  ; Rsqrt(value)
  %4854 = fmul fast float %4853, %4849
  %4855 = fmul fast float %4853, %4850
  %4856 = fmul fast float %4853, %4851
  %4857 = call float @dx.op.dot3.f32(i32 55, float %4794, float %4795, float %4796, float %4474, float %4475, float %4476)  ; Dot3(ax,ay,az,bx,by,bz)
  %4858 = call float @dx.op.dot3.f32(i32 55, float %4467, float %4466, float %4465, float %4854, float %4855, float %4856)  ; Dot3(ax,ay,az,bx,by,bz)
  %4859 = call float @dx.op.unary.f32(i32 7, float %4857)  ; Saturate(value)
  %4860 = fmul fast float %4859, %4859
  %4861 = fmul fast float %4860, %4497
  %4862 = call float @dx.op.unary.f32(i32 7, float %4861)  ; Saturate(value)
  %4863 = fmul fast float %4862, %4859
  %4864 = call float @dx.op.dot3.f32(i32 55, float %4474, float %4475, float %4476, float %4854, float %4855, float %4856)  ; Dot3(ax,ay,az,bx,by,bz)
  %4865 = fmul fast float %4864, %4864
  %4866 = call float @dx.op.unary.f32(i32 6, float %4857)  ; FAbs(value)
  %4867 = fsub fast float 1.000000e+00, %4480
  %4868 = call float @dx.op.binary.f32(i32 35, float %4867, float 0x3F847AE140000000)  ; FMax(a,b)
  %4869 = fmul fast float %4868, %4868
  %4870 = fmul fast float %4869, %4869
  %4871 = fsub fast float 1.000000e+00, %4870
  %4872 = fmul fast float %4484, %4484
  %4873 = fmul fast float %4872, %4871
  %4874 = fadd fast float %4873, %4870
  %4875 = bitcast float %4874 to i32
  %4876 = ashr i32 %4875, 1
  %4877 = add nsw i32 %4876, 532487669
  %4878 = bitcast i32 %4877 to float
  %4879 = fadd fast float %4878, %4484
  %4880 = fmul fast float %4870, %4865
  %4881 = fsub fast float 1.000000e+00, %4865
  %4882 = fadd fast float %4881, %4880
  %4883 = fmul fast float %4866, %4866
  %4884 = fmul fast float %4883, %4871
  %4885 = fadd fast float %4884, %4870
  %4886 = bitcast float %4885 to i32
  %4887 = ashr i32 %4886, 1
  %4888 = add nsw i32 %4887, 532487669
  %4889 = bitcast i32 %4888 to float
  %4890 = fadd fast float %4889, %4866
  %4891 = fmul fast float %4882, %4882
  %4892 = fmul fast float %4891, %4879
  %4893 = fmul fast float %4892, %4890
  %4894 = fdiv fast float 0x3FF0A00000000000, %4893
  %4895 = fmul fast float %4894, %4870
  %4896 = call float @dx.op.unary.f32(i32 6, float %4858)  ; FAbs(value)
  %4897 = fsub fast float 1.000000e+00, %4896
  %4898 = bitcast float %4897 to i32
  %4899 = sitofp i32 %4898 to float
  %4900 = fmul fast float %4899, 5.000000e+00
  %4901 = fadd fast float %4900, 0xC1EFBF8940000000
  %4902 = fptosi float %4901 to i32
  %4903 = bitcast i32 %4902 to float
  %4904 = fsub fast float 1.000000e+00, %4471
  %4905 = fsub fast float 1.000000e+00, %4472
  %4906 = fsub fast float 1.000000e+00, %4482
  %4907 = fmul fast float %4903, %4904
  %4908 = fmul fast float %4903, %4905
  %4909 = fmul fast float %4903, %4906
  %4910 = fadd fast float %4907, %4471
  %4911 = fadd fast float %4908, %4472
  %4912 = fadd fast float %4909, %4482
  %4913 = fmul fast float %4857, 9.843750e-01
  %4914 = fadd fast float %4913, 7.812500e-03
  %4915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %4914, float %4744, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4916 = extractvalue %dx.types.ResRet.f32 %4915, 2
  %4917 = extractvalue %dx.types.ResRet.f32 %4915, 3
  %4918 = fmul fast float %4916, %4471
  %4919 = fmul fast float %4916, %4472
  %4920 = fmul fast float %4916, %4482
  %4921 = fadd fast float %4918, %4917
  %4922 = fadd fast float %4919, %4917
  %4923 = fadd fast float %4920, %4917
  %4924 = call float @dx.op.binary.f32(i32 35, float %4922, float %4923)  ; FMax(a,b)
  %4925 = call float @dx.op.binary.f32(i32 35, float %4921, float %4924)  ; FMax(a,b)
  %4926 = fsub fast float 1.000000e+00, %4925
  %4927 = fsub fast float -0.000000e+00, %4474
  %4928 = fsub fast float -0.000000e+00, %4475
  %4929 = fsub fast float -0.000000e+00, %4476
  %4930 = call float @dx.op.dot3.f32(i32 55, float %4794, float %4795, float %4796, float %4927, float %4928, float %4929)  ; Dot3(ax,ay,az,bx,by,bz)
  %4931 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4932 = fmul fast float %4931, 9.843750e-01
  %4933 = fadd fast float %4932, 7.812500e-03
  %4934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %4933, float %4744, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4935 = extractvalue %dx.types.ResRet.f32 %4934, 2
  %4936 = extractvalue %dx.types.ResRet.f32 %4934, 3
  %4937 = fmul fast float %4935, %4471
  %4938 = fmul fast float %4935, %4472
  %4939 = fmul fast float %4935, %4482
  %4940 = fadd fast float %4937, %4936
  %4941 = fadd fast float %4938, %4936
  %4942 = fadd fast float %4939, %4936
  %4943 = call float @dx.op.binary.f32(i32 35, float %4941, float %4942)  ; FMax(a,b)
  %4944 = call float @dx.op.binary.f32(i32 35, float %4940, float %4943)  ; FMax(a,b)
  %4945 = fsub fast float 1.000000e+00, %4944
  %4946 = fmul fast float %4945, %4931
  %4947 = fmul fast float %4946, %3893
  %4948 = fmul fast float %4946, %3894
  %4949 = fmul fast float %4946, %3895
  %4950 = fmul fast float %4926, %4863
  %4951 = fadd fast float %4947, %4950
  %4952 = fadd fast float %4948, %4950
  %4953 = fadd fast float %4949, %4950
  %4954 = fmul fast float %4951, %4846
  %4955 = fmul fast float %4952, %4847
  %4956 = fmul fast float %4953, %4848
  %4957 = fmul fast float %4863, %4846
  %4958 = fmul fast float %4957, %4895
  %4959 = fmul fast float %4958, %4910
  %4960 = fmul fast float %4863, %4847
  %4961 = fmul fast float %4960, %4895
  %4962 = fmul fast float %4961, %4911
  %4963 = fmul fast float %4863, %4848
  %4964 = fmul fast float %4963, %4895
  %4965 = fmul fast float %4964, %4912
  %4966 = fadd fast float %4954, %4784
  %4967 = fmul fast float %4966, %932
  %4968 = fadd fast float %4955, %4786
  %4969 = fmul fast float %4968, %932
  %4970 = fadd fast float %4956, %4788
  %4971 = fmul fast float %4970, %932
  %4972 = fadd fast float %4959, %4760
  %4973 = fmul fast float %4972, %932
  %4974 = fadd fast float %4962, %4762
  %4975 = fmul fast float %4974, %932
  %4976 = fadd fast float %4965, %4764
  %4977 = fmul fast float %4976, %932
  br label %4978

; <label>:4978                                    ; preds = %4845, %4838, %4646
  %4979 = phi float [ %4761, %4646 ], [ %4761, %4838 ], [ %4973, %4845 ]
  %4980 = phi float [ %4763, %4646 ], [ %4763, %4838 ], [ %4975, %4845 ]
  %4981 = phi float [ %4765, %4646 ], [ %4765, %4838 ], [ %4977, %4845 ]
  %4982 = phi float [ %4785, %4646 ], [ %4785, %4838 ], [ %4967, %4845 ]
  %4983 = phi float [ %4787, %4646 ], [ %4787, %4838 ], [ %4969, %4845 ]
  %4984 = phi float [ %4789, %4646 ], [ %4789, %4838 ], [ %4971, %4845 ]
  %4985 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4986 = extractvalue %dx.types.CBufRet.i32 %4985, 0
  %4987 = icmp eq i32 %4986, 0
  br i1 %4987, label %5381, label %4988

; <label>:4988                                    ; preds = %4978
  %4989 = fptoui float %71 to i32
  %4990 = fptoui float %72 to i32
  %4991 = lshr i32 %4989, 4
  %4992 = lshr i32 %4990, 4
  %4993 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4994 = extractvalue %dx.types.CBufRet.i32 %4993, 0
  %4995 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4992, i32 %4994, i32 %4991)  ; UMad(a,b,c)
  %4996 = add nsw i32 %4986, -1
  %4997 = call i32 @dx.op.binary.i32(i32 37, i32 %4996, i32 0)  ; IMax(a,b)
  %4998 = call float @dx.op.binary.f32(i32 35, float %66, float 0.000000e+00)  ; FMax(a,b)
  %4999 = fptoui float %4998 to i32
  %5000 = lshr i32 %4999, 5
  %5001 = call i32 @dx.op.binary.i32(i32 40, i32 %5000, i32 8191)  ; UMin(a,b)
  %5002 = shl i32 %5001, 2
  %5003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5002, i32 undef)  ; BufferLoad(srv,index,wot)
  %5004 = extractvalue %dx.types.ResRet.i32 %5003, 0
  %5005 = lshr i32 %5004, 16
  %5006 = and i32 %5004, 65535
  %5007 = lshr i32 %5004, 21
  %5008 = lshr i32 %5006, 5
  %5009 = call i32 @dx.op.binary.i32(i32 40, i32 %5008, i32 %4997)  ; UMin(a,b)
  %5010 = icmp ugt i32 %5007, %5009
  br i1 %5010, label %5381, label %5011

; <label>:5011                                    ; preds = %4988
  br label %5012

; <label>:5012                                    ; preds = %5371, %5011
  %5013 = phi i32 [ %5378, %5371 ], [ %5007, %5011 ]
  %5014 = phi float [ %5372, %5371 ], [ %4979, %5011 ]
  %5015 = phi float [ %5373, %5371 ], [ %4980, %5011 ]
  %5016 = phi float [ %5374, %5371 ], [ %4981, %5011 ]
  %5017 = phi float [ %5375, %5371 ], [ %4982, %5011 ]
  %5018 = phi float [ %5376, %5371 ], [ %4983, %5011 ]
  %5019 = phi float [ %5377, %5371 ], [ %4984, %5011 ]
  %5020 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5021 = extractvalue %dx.types.CBufRet.i32 %5020, 0
  %5022 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4995, i32 %5021, i32 %5013)  ; UMad(a,b,c)
  %5023 = shl i32 %5022, 2
  %5024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5023, i32 undef)  ; BufferLoad(srv,index,wot)
  %5025 = extractvalue %dx.types.ResRet.i32 %5024, 0
  %5026 = shl i32 %5013, 5
  %5027 = sub nsw i32 %5005, %5026
  %5028 = call i32 @dx.op.binary.i32(i32 37, i32 %5027, i32 0)  ; IMax(a,b)
  %5029 = call i32 @dx.op.binary.i32(i32 38, i32 %5028, i32 31)  ; IMin(a,b)
  %5030 = sub nsw i32 1, %5005
  %5031 = add nsw i32 %5030, %5006
  %5032 = call i32 @dx.op.binary.i32(i32 37, i32 %5031, i32 0)  ; IMax(a,b)
  %5033 = call i32 @dx.op.binary.i32(i32 38, i32 %5032, i32 32)  ; IMin(a,b)
  %5034 = and i32 %5033, 31
  %5035 = shl i32 -1, %5034
  %5036 = xor i32 %5035, -1
  %5037 = and i32 %5029, 31
  %5038 = shl i32 %5036, %5037
  %5039 = icmp eq i32 %5033, 32
  %5040 = select i1 %5039, i32 -1, i32 %5038
  %5041 = and i32 %5040, %5025
  %5042 = icmp eq i32 %5041, 0
  br i1 %5042, label %5371, label %5043

; <label>:5043                                    ; preds = %5012
  br label %5044

; <label>:5044                                    ; preds = %5124, %5043
  %5045 = phi i32 [ %5056, %5124 ], [ %5041, %5043 ]
  %5046 = phi float [ %5125, %5124 ], [ %5014, %5043 ]
  %5047 = phi float [ %5126, %5124 ], [ %5015, %5043 ]
  %5048 = phi float [ %5127, %5124 ], [ %5016, %5043 ]
  %5049 = phi float [ %5128, %5124 ], [ %5017, %5043 ]
  %5050 = phi float [ %5129, %5124 ], [ %5018, %5043 ]
  %5051 = phi float [ %5130, %5124 ], [ %5019, %5043 ]
  %5052 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5045)  ; FirstbitLo(value)
  %5053 = add i32 %5052, %5026
  %5054 = and i32 %5052, 31
  %5055 = shl i32 1, %5054
  %5056 = xor i32 %5055, %5045
  %5057 = mul i32 %5053, 112
  %5058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5057, i32 undef)  ; BufferLoad(srv,index,wot)
  %5059 = extractvalue %dx.types.ResRet.f32 %5058, 0
  %5060 = extractvalue %dx.types.ResRet.f32 %5058, 1
  %5061 = extractvalue %dx.types.ResRet.f32 %5058, 2
  %5062 = or i32 %5057, 12
  %5063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5062, i32 undef)  ; BufferLoad(srv,index,wot)
  %5064 = extractvalue %dx.types.ResRet.f32 %5063, 0
  %5065 = add i32 %5057, 44
  %5066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5065, i32 undef)  ; BufferLoad(srv,index,wot)
  %5067 = extractvalue %dx.types.ResRet.f32 %5066, 0
  %5068 = add i32 %5057, 48
  %5069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5068, i32 undef)  ; BufferLoad(srv,index,wot)
  %5070 = extractvalue %dx.types.ResRet.f32 %5069, 0
  %5071 = extractvalue %dx.types.ResRet.f32 %5069, 1
  %5072 = extractvalue %dx.types.ResRet.f32 %5069, 2
  %5073 = add i32 %5057, 80
  %5074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5073, i32 undef)  ; BufferLoad(srv,index,wot)
  %5075 = extractvalue %dx.types.ResRet.f32 %5074, 1
  %5076 = extractvalue %dx.types.ResRet.f32 %5074, 2
  %5077 = call float @dx.op.dot3.f32(i32 55, float %5059, float %5060, float %5061, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5078 = select i1 %171, float %5075, float %5059
  %5079 = select i1 %171, float %5077, float %5060
  %5080 = select i1 %171, float %5076, float %5061
  %5081 = fsub fast float %5070, %127
  %5082 = fsub fast float %5071, %128
  %5083 = fsub fast float %5072, %129
  %5084 = call float @dx.op.dot3.f32(i32 55, float %5081, float %5082, float %5083, float %5081, float %5082, float %5083)  ; Dot3(ax,ay,az,bx,by,bz)
  %5085 = call float @dx.op.unary.f32(i32 24, float %5084)  ; Sqrt(value)
  %5086 = fdiv fast float 1.000000e+00, %5085
  %5087 = fmul fast float %5086, %5081
  %5088 = fmul fast float %5086, %5082
  %5089 = fmul fast float %5086, %5083
  %5090 = fadd fast float %5085, %5064
  %5091 = fdiv fast float 1.000000e+00, %5090
  %5092 = fmul float %5067, %5091
  %5093 = fmul float %5092, %5092
  %5094 = call float @dx.op.unary.f32(i32 7, float %5093)  ; Saturate(value)
  %5095 = and i32 %5055, %5041
  %5096 = icmp eq i32 %5095, 0
  br i1 %5096, label %5119, label %5097, !dx.controlflow.hints !72

; <label>:5097                                    ; preds = %5044
  %5098 = lshr i32 %4989, 5
  %5099 = lshr i32 %4990, 5
  %5100 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %5098, i32 %5099, i32 %5053, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5101 = extractvalue %dx.types.ResRet.i32 %5100, 0
  %5102 = and i32 %5101, 3
  %5103 = icmp eq i32 %5102, 0
  %5104 = select i1 %5103, float 1.000000e+00, float 0.000000e+00
  %5105 = icmp eq i32 %5102, 3
  br i1 %5105, label %5106, label %5119

; <label>:5106                                    ; preds = %5097
  %5107 = lshr i32 %5101, 10
  %5108 = and i32 %5107, 8160
  %5109 = and i32 %4990, 31
  %5110 = or i32 %5108, %5109
  %5111 = lshr i32 %5101, 1
  %5112 = and i32 %5111, 16352
  %5113 = and i32 %4989, 31
  %5114 = or i32 %5112, %5113
  %5115 = lshr i32 %5101, 23
  %5116 = and i32 %5115, 255
  %5117 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %5114, i32 %5110, i32 %5116, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5118 = extractvalue %dx.types.ResRet.f32 %5117, 0
  br label %5119

; <label>:5119                                    ; preds = %5106, %5097, %5044
  %5120 = phi float [ %5118, %5106 ], [ %5104, %5097 ], [ 0.000000e+00, %5044 ]
  %5121 = call float @dx.op.binary.f32(i32 36, float %5120, float %5120)  ; FMin(a,b)
  %5122 = call float @dx.op.binary.f32(i32 36, float %5120, float %5121)  ; FMin(a,b)
  %5123 = fcmp fast ogt float %5122, 0.000000e+00
  br i1 %5123, label %5132, label %5124, !dx.controlflow.hints !73

; <label>:5124                                    ; preds = %5193, %5119
  %5125 = phi float [ %5046, %5119 ], [ %5367, %5193 ]
  %5126 = phi float [ %5047, %5119 ], [ %5368, %5193 ]
  %5127 = phi float [ %5048, %5119 ], [ %5369, %5193 ]
  %5128 = phi float [ %5049, %5119 ], [ %5355, %5193 ]
  %5129 = phi float [ %5050, %5119 ], [ %5356, %5193 ]
  %5130 = phi float [ %5051, %5119 ], [ %5357, %5193 ]
  %5131 = icmp eq i32 %5045, %5055
  br i1 %5131, label %5370, label %5044

; <label>:5132                                    ; preds = %5119
  %5133 = fmul fast float %5120, %5078
  %5134 = fmul fast float %5120, %5079
  %5135 = fmul fast float %5120, %5080
  %5136 = fsub fast float %5072, %4270
  %5137 = fcmp fast ogt float %5136, 0.000000e+00
  %5138 = fsub fast float %129, %4270
  %5139 = fcmp fast ogt float %5138, 0.000000e+00
  %5140 = xor i1 %5139, %5137
  %5141 = fsub fast float %4270, %5072
  %5142 = fmul fast float %5141, 2.000000e+00
  %5143 = fadd fast float %5142, %5072
  %5144 = select i1 %5140, float %5072, float %5143
  %5145 = fsub fast float %5144, %129
  %5146 = call float @dx.op.dot3.f32(i32 55, float %5081, float %5082, float %5145, float %5081, float %5082, float %5145)  ; Dot3(ax,ay,az,bx,by,bz)
  %5147 = call float @dx.op.unary.f32(i32 25, float %5146)  ; Rsqrt(value)
  %5148 = fmul fast float %5147, %5081
  %5149 = fmul fast float %5147, %5082
  %5150 = fmul fast float %5147, %5145
  %5151 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4278)  ; Dot3(ax,ay,az,bx,by,bz)
  %5152 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5148, float %5149, float %5150)  ; Dot3(ax,ay,az,bx,by,bz)
  %5153 = fdiv fast float 1.000000e+00, %5152
  %5154 = fmul fast float %5153, %5151
  %5155 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5138, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5156 = fcmp fast ogt float %5155, 0.000000e+00
  %5157 = fcmp fast olt float %5155, 0.000000e+00
  %5158 = zext i1 %5156 to i32
  %5159 = zext i1 %5157 to i32
  %5160 = sub nsw i32 %5158, %5159
  %5161 = sitofp i32 %5160 to float
  %5162 = fsub fast float %5144, %4270
  %5163 = call float @dx.op.dot3.f32(i32 55, float %5081, float %5082, float %5162, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5164 = fcmp fast ogt float %5163, 0.000000e+00
  %5165 = fcmp fast olt float %5163, 0.000000e+00
  %5166 = zext i1 %5164 to i32
  %5167 = zext i1 %5165 to i32
  %5168 = sub nsw i32 %5166, %5167
  %5169 = sitofp i32 %5168 to float
  %5170 = fcmp fast une float %5161, %5169
  br i1 %5170, label %5171, label %5181

; <label>:5171                                    ; preds = %5132
  %5172 = fmul fast float %5154, %5150
  %5173 = fmul fast float %5154, %5149
  %5174 = fmul fast float %5154, %5148
  %5175 = fmul fast float %5174, %5174
  %5176 = fmul fast float %5173, %5173
  %5177 = fadd fast float %5175, %5176
  %5178 = fmul fast float %5172, %5172
  %5179 = fadd fast float %5177, %5178
  %5180 = call float @dx.op.unary.f32(i32 24, float %5179)  ; Sqrt(value)
  br label %5193

; <label>:5181                                    ; preds = %5132
  %5182 = icmp slt i32 %5160, 0
  br i1 %5182, label %5183, label %5193

; <label>:5183                                    ; preds = %5181
  %5184 = fsub fast float %127, %5070
  %5185 = fsub fast float %128, %5071
  %5186 = fsub fast float %129, %5144
  %5187 = fmul fast float %5184, %5184
  %5188 = fmul fast float %5185, %5185
  %5189 = fadd fast float %5187, %5188
  %5190 = fmul fast float %5186, %5186
  %5191 = fadd fast float %5189, %5190
  %5192 = call float @dx.op.unary.f32(i32 24, float %5191)  ; Sqrt(value)
  br label %5193

; <label>:5193                                    ; preds = %5183, %5181, %5171
  %5194 = phi float [ %5180, %5171 ], [ %5192, %5183 ], [ 0.000000e+00, %5181 ]
  %5195 = and i1 %5139, %5137
  %5196 = fsub fast float -0.000000e+00, %5194
  %5197 = select i1 %5195, float -0.000000e+00, float %5196
  %5198 = fmul fast float %4271, 0x3FF7154760000000
  %5199 = fmul fast float %5198, %5197
  %5200 = fmul fast float %4272, 0x3FF7154760000000
  %5201 = fmul fast float %5200, %5197
  %5202 = fmul fast float %4273, 0x3FF7154760000000
  %5203 = fmul fast float %5202, %5197
  %5204 = call float @dx.op.unary.f32(i32 21, float %5199)  ; Exp(value)
  %5205 = call float @dx.op.unary.f32(i32 21, float %5201)  ; Exp(value)
  %5206 = call float @dx.op.unary.f32(i32 21, float %5203)  ; Exp(value)
  %5207 = call float @dx.op.unary.f32(i32 7, float %5204)  ; Saturate(value)
  %5208 = call float @dx.op.unary.f32(i32 7, float %5205)  ; Saturate(value)
  %5209 = call float @dx.op.unary.f32(i32 7, float %5206)  ; Saturate(value)
  %5210 = fmul fast float %5133, %5207
  %5211 = fmul fast float %5134, %5208
  %5212 = fmul fast float %5135, %5209
  %5213 = fsub fast float %5087, %4470
  %5214 = fsub fast float %5088, %4469
  %5215 = fsub fast float %5089, %4468
  %5216 = call float @dx.op.dot3.f32(i32 55, float %5213, float %5214, float %5215, float %5213, float %5214, float %5215)  ; Dot3(ax,ay,az,bx,by,bz)
  %5217 = call float @dx.op.unary.f32(i32 25, float %5216)  ; Rsqrt(value)
  %5218 = fmul fast float %5217, %5213
  %5219 = fmul fast float %5217, %5214
  %5220 = fmul fast float %5217, %5215
  %5221 = call float @dx.op.dot3.f32(i32 55, float %5087, float %5088, float %5089, float %4474, float %4475, float %4476)  ; Dot3(ax,ay,az,bx,by,bz)
  %5222 = call float @dx.op.dot3.f32(i32 55, float %4467, float %4466, float %4465, float %5218, float %5219, float %5220)  ; Dot3(ax,ay,az,bx,by,bz)
  %5223 = call float @dx.op.unary.f32(i32 7, float %5221)  ; Saturate(value)
  %5224 = fmul fast float %5223, %5094
  %5225 = fmul fast float %5223, %5223
  %5226 = fmul fast float %5225, %4497
  %5227 = call float @dx.op.unary.f32(i32 7, float %5226)  ; Saturate(value)
  %5228 = fmul fast float %5224, %5227
  %5229 = bitcast float %5084 to i32
  %5230 = ashr i32 %5229, 1
  %5231 = sub nsw i32 1597463007, %5230
  %5232 = bitcast i32 %5231 to float
  %5233 = fmul fast float %5232, %5081
  %5234 = fmul fast float %5232, %5082
  %5235 = fmul fast float %5232, %5083
  %5236 = fsub fast float %5233, %4470
  %5237 = fsub fast float %5234, %4469
  %5238 = fsub fast float %5235, %4468
  %5239 = call float @dx.op.dot3.f32(i32 55, float %5236, float %5237, float %5238, float %5236, float %5237, float %5238)  ; Dot3(ax,ay,az,bx,by,bz)
  %5240 = call float @dx.op.unary.f32(i32 25, float %5239)  ; Rsqrt(value)
  %5241 = fmul fast float %5236, %5240
  %5242 = fmul fast float %5237, %5240
  %5243 = fmul fast float %5238, %5240
  %5244 = call float @dx.op.dot3.f32(i32 55, float %4474, float %4475, float %4476, float %5241, float %5242, float %5243)  ; Dot3(ax,ay,az,bx,by,bz)
  %5245 = fmul fast float %5244, %5244
  %5246 = call float @dx.op.unary.f32(i32 6, float %5221)  ; FAbs(value)
  %5247 = fsub fast float 1.000000e+00, %4480
  %5248 = call float @dx.op.binary.f32(i32 35, float %5247, float 0x3F847AE140000000)  ; FMax(a,b)
  %5249 = fmul fast float %5248, %5248
  %5250 = fmul fast float %5249, %5249
  %5251 = fsub fast float 1.000000e+00, %5250
  %5252 = fmul fast float %4484, %4484
  %5253 = fmul fast float %5252, %5251
  %5254 = fadd fast float %5253, %5250
  %5255 = bitcast float %5254 to i32
  %5256 = ashr i32 %5255, 1
  %5257 = add nsw i32 %5256, 532487669
  %5258 = bitcast i32 %5257 to float
  %5259 = fadd fast float %5258, %4484
  %5260 = fmul fast float %5250, %5245
  %5261 = fsub fast float 1.000000e+00, %5245
  %5262 = fadd fast float %5261, %5260
  %5263 = fmul fast float %5246, %5246
  %5264 = fmul fast float %5263, %5251
  %5265 = fadd fast float %5264, %5250
  %5266 = bitcast float %5265 to i32
  %5267 = ashr i32 %5266, 1
  %5268 = add nsw i32 %5267, 532487669
  %5269 = bitcast i32 %5268 to float
  %5270 = fadd fast float %5269, %5246
  %5271 = fmul fast float %5262, %5262
  %5272 = fmul fast float %5271, %5259
  %5273 = fmul fast float %5272, %5270
  %5274 = fdiv fast float 1.000000e+00, %5273
  %5275 = bitcast float %5250 to i32
  %5276 = sitofp i32 %5275 to float
  %5277 = fmul fast float %5276, 0x3FE7F73180000000
  %5278 = fadd fast float %5277, 0x41AFE27C40000000
  %5279 = fptosi float %5278 to i32
  %5280 = bitcast i32 %5279 to float
  %5281 = fmul fast float %5067, 0x3FD80E9D60000000
  %5282 = fmul fast float %5281, %5232
  %5283 = fadd fast float %5280, %5282
  %5284 = bitcast float %5283 to i32
  %5285 = sub nsw i32 2129859010, %5284
  %5286 = bitcast i32 %5285 to float
  %5287 = fmul fast float %5250, %5274
  %5288 = fmul fast float %5287, %5280
  %5289 = fmul fast float %5288, %5286
  %5290 = call float @dx.op.unary.f32(i32 6, float %5222)  ; FAbs(value)
  %5291 = fsub fast float 1.000000e+00, %5290
  %5292 = bitcast float %5291 to i32
  %5293 = sitofp i32 %5292 to float
  %5294 = fmul fast float %5293, 5.000000e+00
  %5295 = fadd fast float %5294, 0xC1EFBF8940000000
  %5296 = fptosi float %5295 to i32
  %5297 = bitcast i32 %5296 to float
  %5298 = fsub fast float 1.000000e+00, %4471
  %5299 = fsub fast float 1.000000e+00, %4472
  %5300 = fsub fast float 1.000000e+00, %4482
  %5301 = fmul fast float %5297, %5298
  %5302 = fmul fast float %5297, %5299
  %5303 = fmul fast float %5297, %5300
  %5304 = fadd fast float %5301, %4471
  %5305 = fadd fast float %5302, %4472
  %5306 = fadd fast float %5303, %4482
  %5307 = fmul fast float %5221, 9.843750e-01
  %5308 = fadd fast float %5307, 7.812500e-03
  %5309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %5308, float %4744, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5310 = extractvalue %dx.types.ResRet.f32 %5309, 2
  %5311 = extractvalue %dx.types.ResRet.f32 %5309, 3
  %5312 = fmul fast float %5310, %4471
  %5313 = fmul fast float %5310, %4472
  %5314 = fmul fast float %5310, %4482
  %5315 = fadd fast float %5312, %5311
  %5316 = fadd fast float %5313, %5311
  %5317 = fadd fast float %5314, %5311
  %5318 = call float @dx.op.binary.f32(i32 35, float %5316, float %5317)  ; FMax(a,b)
  %5319 = call float @dx.op.binary.f32(i32 35, float %5315, float %5318)  ; FMax(a,b)
  %5320 = fsub fast float 1.000000e+00, %5319
  %5321 = fsub fast float -0.000000e+00, %4474
  %5322 = fsub fast float -0.000000e+00, %4475
  %5323 = fsub fast float -0.000000e+00, %4476
  %5324 = call float @dx.op.dot3.f32(i32 55, float %5087, float %5088, float %5089, float %5321, float %5322, float %5323)  ; Dot3(ax,ay,az,bx,by,bz)
  %5325 = call float @dx.op.unary.f32(i32 7, float %5324)  ; Saturate(value)
  %5326 = fmul fast float %5325, %5094
  %5327 = fmul fast float %5325, 9.843750e-01
  %5328 = fadd fast float %5327, 7.812500e-03
  %5329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %5328, float %4744, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5330 = extractvalue %dx.types.ResRet.f32 %5329, 2
  %5331 = extractvalue %dx.types.ResRet.f32 %5329, 3
  %5332 = fmul fast float %5330, %4471
  %5333 = fmul fast float %5330, %4472
  %5334 = fmul fast float %5330, %4482
  %5335 = fadd fast float %5332, %5331
  %5336 = fadd fast float %5333, %5331
  %5337 = fadd fast float %5334, %5331
  %5338 = call float @dx.op.binary.f32(i32 35, float %5336, float %5337)  ; FMax(a,b)
  %5339 = call float @dx.op.binary.f32(i32 35, float %5335, float %5338)  ; FMax(a,b)
  %5340 = fsub fast float 1.000000e+00, %5339
  %5341 = fmul fast float %5326, %5340
  %5342 = fmul fast float %5341, %3893
  %5343 = fmul fast float %5341, %3894
  %5344 = fmul fast float %5341, %3895
  %5345 = fmul fast float %5320, %5228
  %5346 = fadd fast float %5342, %5345
  %5347 = fadd fast float %5343, %5345
  %5348 = fadd fast float %5344, %5345
  %5349 = fmul fast float %5210, %932
  %5350 = fmul fast float %5349, %5346
  %5351 = fmul fast float %5211, %932
  %5352 = fmul fast float %5351, %5347
  %5353 = fmul fast float %5212, %932
  %5354 = fmul fast float %5353, %5348
  %5355 = fadd fast float %5350, %5049
  %5356 = fadd fast float %5352, %5050
  %5357 = fadd fast float %5354, %5051
  %5358 = fmul fast float %5349, %5228
  %5359 = fmul fast float %5358, %5304
  %5360 = fmul fast float %5359, %5289
  %5361 = fmul fast float %5351, %5228
  %5362 = fmul fast float %5361, %5305
  %5363 = fmul fast float %5362, %5289
  %5364 = fmul fast float %5353, %5228
  %5365 = fmul fast float %5364, %5306
  %5366 = fmul fast float %5365, %5289
  %5367 = fadd fast float %5360, %5046
  %5368 = fadd fast float %5363, %5047
  %5369 = fadd fast float %5366, %5048
  br label %5124

; <label>:5370                                    ; preds = %5124
  br label %5371

; <label>:5371                                    ; preds = %5370, %5012
  %5372 = phi float [ %5014, %5012 ], [ %5125, %5370 ]
  %5373 = phi float [ %5015, %5012 ], [ %5126, %5370 ]
  %5374 = phi float [ %5016, %5012 ], [ %5127, %5370 ]
  %5375 = phi float [ %5017, %5012 ], [ %5128, %5370 ]
  %5376 = phi float [ %5018, %5012 ], [ %5129, %5370 ]
  %5377 = phi float [ %5019, %5012 ], [ %5130, %5370 ]
  %5378 = add i32 %5013, 1
  %5379 = icmp ugt i32 %5378, %5009
  br i1 %5379, label %5380, label %5012

; <label>:5380                                    ; preds = %5371
  br label %5381

; <label>:5381                                    ; preds = %5380, %4988, %4978
  %5382 = phi float [ %4979, %4978 ], [ %4979, %4988 ], [ %5372, %5380 ]
  %5383 = phi float [ %4980, %4978 ], [ %4980, %4988 ], [ %5373, %5380 ]
  %5384 = phi float [ %4981, %4978 ], [ %4981, %4988 ], [ %5374, %5380 ]
  %5385 = phi float [ %4982, %4978 ], [ %4982, %4988 ], [ %5375, %5380 ]
  %5386 = phi float [ %4983, %4978 ], [ %4983, %4988 ], [ %5376, %5380 ]
  %5387 = phi float [ %4984, %4978 ], [ %4984, %4988 ], [ %5377, %5380 ]
  %5388 = call float @dx.op.unary.f32(i32 24, float %4477)  ; Sqrt(value)
  %5389 = call float @dx.op.unary.f32(i32 24, float %4478)  ; Sqrt(value)
  %5390 = call float @dx.op.unary.f32(i32 24, float %4479)  ; Sqrt(value)
  %5391 = fmul fast float %5388, %5385
  %5392 = fmul fast float %5389, %5386
  %5393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5394 = extractvalue %dx.types.CBufRet.f32 %5393, 0
  br i1 %171, label %5395, label %5416

; <label>:5395                                    ; preds = %5381
  %5396 = fadd fast float %5387, %3773
  %5397 = fmul fast float %5396, %3771
  %5398 = fsub fast float 1.000000e+00, %3771
  %5399 = call float @dx.op.unary.f32(i32 7, float %5398)  ; Saturate(value)
  %5400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.f32 %5400, 3
  %5402 = fmul fast float %5401, %5399
  %5403 = fadd fast float %5402, %5397
  %5404 = fsub fast float 1.000000e+00, %4484
  %5405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5406 = extractvalue %dx.types.CBufRet.f32 %5405, 0
  %5407 = fmul fast float %5406, %5404
  %5408 = fsub fast float %5403, %5407
  %5409 = fadd fast float %5392, %5391
  %5410 = fmul fast float %5394, %5409
  %5411 = extractvalue %dx.types.CBufRet.f32 %5400, 1
  %5412 = fsub fast float %5408, %5411
  %5413 = extractvalue %dx.types.CBufRet.f32 %5400, 2
  %5414 = fmul fast float %5412, %5413
  %5415 = call float @dx.op.unary.f32(i32 7, float %5414)  ; Saturate(value)
  br label %5432

; <label>:5416                                    ; preds = %5381
  %5417 = fmul fast float %5390, %5387
  %5418 = fmul fast float %5394, %5391
  %5419 = fmul fast float %5394, %5392
  %5420 = fmul fast float %5417, %5394
  %5421 = add i32 %32, 356
  %5422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %5421, i32 undef)  ; BufferLoad(srv,index,wot)
  %5423 = extractvalue %dx.types.ResRet.i32 %5422, 0
  %5424 = and i32 %5423, 32
  %5425 = icmp eq i32 %5424, 0
  br i1 %5425, label %5432, label %5426

; <label>:5426                                    ; preds = %5416
  %5427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5428 = extractvalue %dx.types.CBufRet.f32 %5427, 0
  %5429 = fmul fast float %5428, 0x3FE99999A0000000
  %5430 = fadd fast float %5428, %5418
  %5431 = fadd fast float %5429, %5420
  br label %5432

; <label>:5432                                    ; preds = %5426, %5416, %5395
  %5433 = phi float [ %5410, %5395 ], [ %5430, %5426 ], [ %5418, %5416 ]
  %5434 = phi float [ %5415, %5395 ], [ %5419, %5426 ], [ %5419, %5416 ]
  %5435 = phi float [ 1.000000e+00, %5395 ], [ %5431, %5426 ], [ %5420, %5416 ]
  %5436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5437 = extractvalue %dx.types.CBufRet.f32 %5436, 0
  %5438 = fmul fast float %5437, %5383
  %5439 = fmul fast float %5437, %5384
  %5440 = fadd fast float %5383, %5382
  %5441 = select i1 %171, float %5440, float %5382
  %5442 = fmul float %5441, %5437
  %5443 = select i1 %171, float 0.000000e+00, float %5438
  %5444 = select i1 %171, float 0.000000e+00, float %5439
  %5445 = fmul fast float %5433, %5388
  %5446 = fmul fast float %5434, %5389
  %5447 = fmul fast float %5435, %5390
  %5448 = fadd fast float %5442, %5445
  %5449 = fadd fast float %5443, %5446
  %5450 = fadd fast float %5444, %5447
  %5451 = select i1 %171, float %5434, float %5449
  %5452 = select i1 %171, float %5435, float %5450
  %5453 = call float @dx.op.binary.f32(i32 36, float %5448, float 3.225500e+04)  ; FMin(a,b)
  %5454 = call float @dx.op.binary.f32(i32 36, float %5451, float 3.225500e+04)  ; FMin(a,b)
  %5455 = call float @dx.op.binary.f32(i32 36, float %5452, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5453)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5454)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5455)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

