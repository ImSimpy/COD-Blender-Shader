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
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: d1a1329aaad31b49f06831b530f7f0cf
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
; Number of inputs: 44, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %30 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %66 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = fmul fast float %68, %62
  %70 = fmul fast float %68, %63
  %71 = call float @dx.op.dot3.f32(i32 55, float %54, float %55, float %56, float %54, float %55, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %72 = bitcast float %71 to i32
  %73 = ashr i32 %72, 1
  %74 = sub nsw i32 1597250115, %73
  %75 = bitcast i32 %74 to float
  %76 = fmul fast float %75, %54
  %77 = fmul fast float %75, %55
  %78 = fmul fast float %75, %56
  %79 = fmul fast float %55, %52
  %80 = fmul fast float %56, %51
  %81 = fsub fast float %79, %80
  %82 = fmul fast float %56, %50
  %83 = fmul fast float %54, %52
  %84 = fsub fast float %82, %83
  %85 = fmul fast float %54, %51
  %86 = fmul fast float %55, %50
  %87 = fsub fast float %85, %86
  %88 = fmul fast float %81, %53
  %89 = fmul fast float %84, %53
  %90 = fmul fast float %87, %53
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 2
  %93 = extractvalue %dx.types.CBufRet.f32 %91, 3
  %94 = fmul fast float %69, 2.000000e+00
  %95 = fmul fast float %94, %92
  %96 = fmul fast float %70, 2.000000e+00
  %97 = fmul fast float %96, %93
  %98 = fsub fast float 1.000000e+00, %95
  %99 = fsub fast float 1.000000e+00, %97
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %103 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %104 = fmul fast float %98, %101
  %105 = fmul fast float %98, %102
  %106 = fmul fast float %98, %103
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 1
  %110 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %111 = fmul fast float %99, %108
  %112 = fmul fast float %99, %109
  %113 = fmul fast float %99, %110
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 1
  %117 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %118 = fadd fast float %111, %115
  %119 = fadd fast float %118, %104
  %120 = fadd fast float %112, %116
  %121 = fadd fast float %120, %105
  %122 = fadd fast float %113, %117
  %123 = fadd fast float %122, %106
  %124 = fmul fast float %119, %64
  %125 = fmul fast float %121, %64
  %126 = fmul fast float %123, %64
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 3
  %130 = fmul fast float %128, %69
  %131 = fmul fast float %129, %70
  %132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %133 = extractvalue %dx.types.ResRet.i32 %132, 0
  %134 = and i32 %133, 114688
  %135 = icmp ne i32 %134, 0
  %136 = select i1 %135, float %130, float 0.000000e+00
  %137 = select i1 %135, float %131, float 0.000000e+00
  %138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %27, float %136, float %137, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %139 = extractvalue %dx.types.ResRet.f32 %138, 0
  %140 = fmul fast float %139, 2.550000e+02
  %141 = fptoui float %140 to i32
  %142 = select i1 %135, i32 %141, i32 0
  %143 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.i32 %143, 3
  %145 = and i32 %144, 3
  %146 = icmp ne i32 %145, 0
  %147 = and i32 %144, 4
  %148 = icmp ne i32 %147, 0
  %149 = and i1 %146, %148
  br i1 %149, label %150, label %159

; <label>:150                                     ; preds = %0
  %151 = fmul fast float %93, %70
  %152 = fmul fast float %92, %69
  %153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %152, float %151, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %154 = extractvalue %dx.types.ResRet.f32 %153, 0
  %155 = fsub fast float 1.000000e+00, %154
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = fcmp fast olt float %155, %157
  br label %167

; <label>:159                                     ; preds = %0
  %160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.i32 %160, 3
  %162 = and i32 %161, 3
  %163 = icmp ne i32 %162, 0
  %164 = and i32 %161, 4
  %165 = icmp eq i32 %164, 0
  %166 = and i1 %163, %165
  br label %167

; <label>:167                                     ; preds = %159, %150
  %168 = phi i1 [ %158, %150 ], [ %166, %159 ]
  %169 = add i32 %30, 156
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = shl i32 %171, 4
  %173 = and i32 %172, 32752
  %174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %173)  ; LegacyF16ToF32(value)
  %175 = lshr i32 %171, 7
  %176 = and i32 %175, 32752
  %177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %176)  ; LegacyF16ToF32(value)
  %178 = lshr i32 %171, 22
  %179 = shl nuw nsw i32 %178, 5
  %180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %179)  ; LegacyF16ToF32(value)
  %181 = add i32 %30, 216
  %182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %181, i32 undef)  ; BufferLoad(srv,index,wot)
  %183 = extractvalue %dx.types.ResRet.i32 %182, 0
  %184 = and i32 %183, 255
  %185 = uitofp i32 %184 to float
  %186 = fmul fast float %185, 0x3F70101020000000
  %187 = lshr i32 %183, 8
  %188 = and i32 %187, 255
  %189 = uitofp i32 %188 to float
  %190 = fmul fast float %189, 0x3F70101020000000
  %191 = lshr i32 %183, 16
  %192 = and i32 %191, 255
  %193 = uitofp i32 %192 to float
  %194 = fmul fast float %193, 0x3F70101020000000
  %195 = add i32 %30, 36
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = and i32 %197, 65535
  %199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %198)  ; LegacyF16ToF32(value)
  %200 = lshr i32 %197, 16
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = add i32 %30, 288
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = and i32 %204, 65535
  %206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %205)  ; LegacyF16ToF32(value)
  %207 = lshr i32 %204, 16
  %208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %207)  ; LegacyF16ToF32(value)
  %209 = fmul fast float %206, 0x3F50624DE0000000
  %210 = fmul fast float %208, 0x3F50624DE0000000
  %211 = add i32 %30, 172
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = shl i32 %213, 4
  %215 = and i32 %214, 32752
  %216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %215)  ; LegacyF16ToF32(value)
  %217 = lshr i32 %213, 7
  %218 = and i32 %217, 32752
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218)  ; LegacyF16ToF32(value)
  %220 = lshr i32 %213, 22
  %221 = shl nuw nsw i32 %220, 5
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = add i32 %30, 232
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = and i32 %225, 255
  %227 = uitofp i32 %226 to float
  %228 = fmul fast float %227, 0x3F70101020000000
  %229 = lshr i32 %225, 8
  %230 = and i32 %229, 255
  %231 = uitofp i32 %230 to float
  %232 = fmul fast float %231, 0x3F70101020000000
  %233 = lshr i32 %225, 16
  %234 = and i32 %233, 255
  %235 = uitofp i32 %234 to float
  %236 = fmul fast float %235, 0x3F70101020000000
  %237 = add i32 %30, 52
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = and i32 %239, 65535
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = lshr i32 %239, 16
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = add i32 %30, 304
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = and i32 %246, 65535
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %246, 16
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = fmul fast float %248, 0x3F50624DE0000000
  %252 = fmul fast float %250, 0x3F50624DE0000000
  %253 = add i32 %30, 188
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = shl i32 %255, 4
  %257 = and i32 %256, 32752
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = lshr i32 %255, 7
  %260 = and i32 %259, 32752
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = lshr i32 %255, 22
  %263 = shl nuw nsw i32 %262, 5
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = add i32 %30, 248
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = and i32 %267, 255
  %269 = uitofp i32 %268 to float
  %270 = fmul fast float %269, 0x3F70101020000000
  %271 = lshr i32 %267, 8
  %272 = and i32 %271, 255
  %273 = uitofp i32 %272 to float
  %274 = fmul fast float %273, 0x3F70101020000000
  %275 = lshr i32 %267, 16
  %276 = and i32 %275, 255
  %277 = uitofp i32 %276 to float
  %278 = fmul fast float %277, 0x3F70101020000000
  %279 = add i32 %30, 68
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = and i32 %281, 65535
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = lshr i32 %281, 16
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = add i32 %30, 320
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 65535
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %288, 16
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = fmul fast float %290, 0x3F50624DE0000000
  %294 = fmul fast float %292, 0x3F50624DE0000000
  %295 = add i32 %30, 204
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = shl i32 %297, 4
  %299 = and i32 %298, 32752
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = lshr i32 %297, 7
  %302 = and i32 %301, 32752
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %297, 22
  %305 = shl nuw nsw i32 %304, 5
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = add i32 %30, 264
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 255
  %311 = uitofp i32 %310 to float
  %312 = fmul fast float %311, 0x3F70101020000000
  %313 = lshr i32 %309, 8
  %314 = and i32 %313, 255
  %315 = uitofp i32 %314 to float
  %316 = fmul fast float %315, 0x3F70101020000000
  %317 = lshr i32 %309, 16
  %318 = and i32 %317, 255
  %319 = uitofp i32 %318 to float
  %320 = fmul fast float %319, 0x3F70101020000000
  %321 = add i32 %30, 84
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = and i32 %323, 65535
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = lshr i32 %323, 16
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = add i32 %30, 336
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = and i32 %330, 65535
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %330, 16
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = fmul fast float %332, 0x3F50624DE0000000
  %336 = fmul fast float %334, 0x3F50624DE0000000
  %337 = add i32 %30, 348
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 32
  %341 = icmp eq i32 %340, 0
  %342 = and i32 %339, 64
  %343 = icmp eq i32 %342, 0
  %344 = and i32 %339, 128
  %345 = icmp eq i32 %344, 0
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 2
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %363, label %350

; <label>:350                                     ; preds = %167
  %351 = add i32 %30, 472
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = add i32 %353, 0
  %355 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %354, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %356 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %355, %dx.types.Handle %66, float %57, float %58, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %357 = extractvalue %dx.types.ResRet.f32 %356, 0
  %358 = extractvalue %dx.types.ResRet.f32 %356, 1
  %359 = extractvalue %dx.types.ResRet.f32 %356, 2
  %360 = fmul fast float %357, %59
  %361 = fmul fast float %358, %60
  %362 = fmul fast float %359, %61
  br label %363

; <label>:363                                     ; preds = %350, %167
  %364 = phi float [ %61, %167 ], [ %362, %350 ]
  %365 = phi float [ %60, %167 ], [ %361, %350 ]
  %366 = phi float [ %59, %167 ], [ %360, %350 ]
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = and i32 %368, 2
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %390, label %371

; <label>:371                                     ; preds = %363
  %372 = add i32 %30, 44
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = and i32 %374, 1
  %376 = icmp ne i32 %375, 0
  %377 = select i1 %376, float %366, float 1.000000e+00
  %378 = add i32 %30, 60
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = and i32 %380, 1
  %382 = icmp ne i32 %381, 0
  %383 = select i1 %382, float %365, float 1.000000e+00
  %384 = add i32 %30, 76
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = and i32 %386, 1
  %388 = icmp ne i32 %387, 0
  %389 = select i1 %388, float %364, float 1.000000e+00
  br label %390

; <label>:390                                     ; preds = %371, %363
  %391 = phi float [ %364, %363 ], [ %389, %371 ]
  %392 = phi float [ %365, %363 ], [ %383, %371 ]
  %393 = phi float [ %366, %363 ], [ %377, %371 ]
  %394 = lshr i32 %368, 20
  %395 = and i32 %394, 3
  %396 = add nuw nsw i32 %395, 1
  %397 = add i32 %30, 24
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = add i32 %30, 28
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = or i32 %402, %399
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %916, label %405

; <label>:405                                     ; preds = %390
  %406 = and i32 %399, 262144
  %407 = icmp ne i32 %406, 0
  %408 = select i1 %407, float %32, float 1.000000e+00
  %409 = select i1 %407, float %33, float 0.000000e+00
  %410 = select i1 %407, float %34, float 0.000000e+00
  %411 = select i1 %407, float %35, float 1.000000e+00
  %412 = select i1 %407, float %36, float %57
  %413 = select i1 %407, float %37, float %58
  %414 = add i32 %30, 284
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = lshr i32 %416, 16
  %418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %417)  ; LegacyF16ToF32(value)
  %419 = fmul fast float %418, 0x3F50624DE0000000
  %420 = add i32 %30, 88
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = lshr i32 %422, 16
  %424 = and i32 %423, 255
  %425 = lshr i32 %422, 24
  %426 = add i32 %30, 292
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 65535
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = lshr i32 %428, 16
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = add i32 %30, 32
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = lshr i32 %435, 22
  %437 = shl nuw nsw i32 %436, 5
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = shl i32 %435, 4
  %440 = and i32 %439, 32752
  %441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %440)  ; LegacyF16ToF32(value)
  %442 = lshr i32 %435, 7
  %443 = and i32 %442, 32752
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.f32 %445, 3
  %447 = fmul fast float %446, 1.000000e+03
  %448 = fmul fast float %209, %447
  %449 = call float @dx.op.unary.f32(i32 22, float %448)  ; Frc(value)
  %450 = fadd fast float %449, %199
  %451 = fmul fast float %210, %447
  %452 = call float @dx.op.unary.f32(i32 22, float %451)  ; Frc(value)
  %453 = fadd fast float %452, %201
  %454 = fmul fast float %419, %447
  %455 = call float @dx.op.unary.f32(i32 22, float %454)  ; Frc(value)
  %456 = fmul fast float %455, 0x401921FB60000000
  %457 = fadd fast float %456, %438
  %458 = call float @dx.op.unary.f32(i32 13, float %457)  ; Sin(value)
  %459 = call float @dx.op.unary.f32(i32 12, float %457)  ; Cos(value)
  %460 = fsub fast float -0.000000e+00, %458
  %461 = fadd fast float %412, -5.000000e-01
  %462 = fadd fast float %413, -5.000000e-01
  %463 = fmul fast float %430, %461
  %464 = fmul fast float %432, %462
  %465 = fadd fast float %463, 5.000000e-01
  %466 = fadd fast float %464, 5.000000e-01
  %467 = fmul fast float %441, %465
  %468 = fmul fast float %444, %466
  %469 = fmul fast float %459, %467
  %470 = call float @dx.op.tertiary.f32(i32 46, float %460, float %468, float %469)  ; FMad(a,b,c)
  %471 = fmul fast float %458, %467
  %472 = call float @dx.op.tertiary.f32(i32 46, float %459, float %468, float %471)  ; FMad(a,b,c)
  %473 = fadd fast float %450, %470
  %474 = fadd fast float %453, %472
  %475 = icmp ugt i32 %424, 1
  %476 = icmp ugt i32 %422, 33554431
  %477 = or i1 %476, %475
  br i1 %477, label %478, label %503

; <label>:478                                     ; preds = %405
  %479 = add i32 %30, 228
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = lshr i32 %481, 16
  %483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %482)  ; LegacyF16ToF32(value)
  %484 = fmul fast float %446, %483
  %485 = call float @dx.op.unary.f32(i32 22, float %484)  ; Frc(value)
  %486 = mul nuw nsw i32 %424, %425
  %487 = uitofp i32 %486 to float
  %488 = fmul fast float %485, %487
  %489 = call float @dx.op.unary.f32(i32 27, float %488)  ; Round_ni(value)
  %490 = fptoui float %489 to i32
  %491 = urem i32 %490, %424
  %492 = udiv i32 %490, %425
  %493 = call float @dx.op.unary.f32(i32 22, float %473)  ; Frc(value)
  %494 = call float @dx.op.unary.f32(i32 22, float %474)  ; Frc(value)
  %495 = uitofp i32 %491 to float
  %496 = uitofp i32 %492 to float
  %497 = fadd fast float %493, %495
  %498 = fadd fast float %494, %496
  %499 = uitofp i32 %424 to float
  %500 = uitofp i32 %425 to float
  %501 = fdiv fast float %497, %499
  %502 = fdiv fast float %498, %500
  br label %503

; <label>:503                                     ; preds = %478, %405
  %504 = phi float [ %501, %478 ], [ %473, %405 ]
  %505 = phi float [ %502, %478 ], [ %474, %405 ]
  %506 = and i32 %399, 16
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %704, label %508

; <label>:508                                     ; preds = %503
  %509 = add i32 %30, 360
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = add i32 %511, 0
  %513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %512, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %514 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %513, %dx.types.Handle %65, float %504, float %505, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = extractvalue %dx.types.ResRet.f32 %514, 1
  %517 = extractvalue %dx.types.ResRet.f32 %514, 2
  %518 = extractvalue %dx.types.ResRet.f32 %514, 3
  %519 = and i32 %422, 255
  %520 = uitofp i32 %519 to float
  %521 = lshr i32 %422, 8
  %522 = and i32 %521, 255
  %523 = uitofp i32 %522 to float
  %524 = fmul fast float %518, %520
  %525 = fadd fast float %524, %523
  %526 = fmul fast float %525, 0x3F70101000000000
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = and i32 %528, 512
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %539, label %531

; <label>:531                                     ; preds = %508
  %532 = add i32 %30, 440
  %533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.i32 %533, 0
  %535 = add i32 %534, 0
  %536 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %535, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %537 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %536, %dx.types.Handle %66, float %504, float %505, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %538 = extractvalue %dx.types.ResRet.f32 %537, 0
  br label %539

; <label>:539                                     ; preds = %531, %508
  %540 = phi float [ %538, %531 ], [ 1.000000e+00, %508 ]
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = and i32 %542, 33554432
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %651, label %545

; <label>:545                                     ; preds = %539
  %546 = add i32 %30, 224
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = and i32 %548, 65535
  %550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %549)  ; LegacyF16ToF32(value)
  %551 = lshr i32 %548, 16
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = add i32 %30, 228
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = and i32 %555, 65535
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %181, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = lshr i32 %559, 24
  %561 = uitofp i32 %560 to float
  %562 = fmul fast float %561, 0x3F70101020000000
  %563 = and i32 %559, 255
  %564 = uitofp i32 %563 to float
  %565 = fmul fast float %564, 0x3F70101020000000
  %566 = lshr i32 %559, 8
  %567 = and i32 %566, 255
  %568 = uitofp i32 %567 to float
  %569 = fmul fast float %568, 0x3F70101020000000
  %570 = lshr i32 %559, 16
  %571 = and i32 %570, 255
  %572 = uitofp i32 %571 to float
  %573 = fmul fast float %572, 0x3F70101020000000
  %574 = add i32 %30, 220
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = lshr i32 %576, 24
  %578 = uitofp i32 %577 to float
  %579 = fmul fast float %578, 0x3F70101020000000
  %580 = and i32 %576, 255
  %581 = uitofp i32 %580 to float
  %582 = fmul fast float %581, 0x3F70101020000000
  %583 = lshr i32 %576, 8
  %584 = and i32 %583, 255
  %585 = uitofp i32 %584 to float
  %586 = fmul fast float %585, 0x3F70101020000000
  %587 = lshr i32 %576, 16
  %588 = and i32 %587, 255
  %589 = uitofp i32 %588 to float
  %590 = fmul fast float %589, 0x3F70101020000000
  %591 = bitcast float %515 to i32
  %592 = ashr i32 %591, 1
  %593 = sub nsw i32 1597463174, %592
  %594 = bitcast i32 %593 to float
  %595 = fmul fast float %515, 5.000000e-01
  %596 = fmul fast float %594, %594
  %597 = fmul fast float %596, %595
  %598 = fsub fast float 1.500000e+00, %597
  %599 = fmul fast float %594, %515
  %600 = fmul fast float %599, %598
  %601 = bitcast float %516 to i32
  %602 = ashr i32 %601, 1
  %603 = sub nsw i32 1597463174, %602
  %604 = bitcast i32 %603 to float
  %605 = fmul fast float %516, 5.000000e-01
  %606 = fmul fast float %604, %604
  %607 = fmul fast float %606, %605
  %608 = fsub fast float 1.500000e+00, %607
  %609 = fmul fast float %604, %516
  %610 = fmul fast float %609, %608
  %611 = bitcast float %517 to i32
  %612 = ashr i32 %611, 1
  %613 = sub nsw i32 1597463174, %612
  %614 = bitcast i32 %613 to float
  %615 = fmul fast float %517, 5.000000e-01
  %616 = fmul fast float %614, %614
  %617 = fmul fast float %616, %615
  %618 = fsub fast float 1.500000e+00, %617
  %619 = fmul fast float %614, %517
  %620 = fmul fast float %619, %618
  %621 = fsub fast float %600, %582
  %622 = fsub fast float %610, %586
  %623 = fsub fast float %620, %590
  %624 = fmul fast float %621, %550
  %625 = fmul fast float %622, %552
  %626 = fmul fast float %623, %557
  %627 = fadd fast float %624, %565
  %628 = fadd fast float %625, %569
  %629 = fadd fast float %626, %573
  %630 = call float @dx.op.unary.f32(i32 7, float %627)  ; Saturate(value)
  %631 = call float @dx.op.unary.f32(i32 7, float %628)  ; Saturate(value)
  %632 = call float @dx.op.unary.f32(i32 7, float %629)  ; Saturate(value)
  %633 = fmul fast float %630, %630
  %634 = fmul fast float %631, %631
  %635 = fmul fast float %632, %632
  %636 = fsub fast float %633, %515
  %637 = fsub fast float %634, %516
  %638 = fsub fast float %635, %517
  %639 = fmul fast float %636, %540
  %640 = fmul fast float %637, %540
  %641 = fmul fast float %638, %540
  %642 = fadd fast float %639, %515
  %643 = fadd fast float %640, %516
  %644 = fadd fast float %641, %517
  %645 = fadd fast float %562, %526
  %646 = fsub fast float %645, %579
  %647 = call float @dx.op.unary.f32(i32 7, float %646)  ; Saturate(value)
  %648 = fsub fast float %647, %526
  %649 = fmul fast float %648, %540
  %650 = fadd fast float %649, %526
  br label %704

; <label>:651                                     ; preds = %539
  %652 = and i32 %542, 134217728
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %688, label %654

; <label>:654                                     ; preds = %651
  %655 = call float @dx.op.unary.f32(i32 24, float %186)  ; Sqrt(value)
  %656 = call float @dx.op.unary.f32(i32 24, float %190)  ; Sqrt(value)
  %657 = call float @dx.op.unary.f32(i32 24, float %194)  ; Sqrt(value)
  %658 = fadd fast float %655, -5.000000e-01
  %659 = fadd fast float %656, -5.000000e-01
  %660 = fadd fast float %657, -5.000000e-01
  %661 = fmul fast float %658, %540
  %662 = fmul fast float %659, %540
  %663 = fmul fast float %660, %540
  %664 = fadd fast float %661, 5.000000e-01
  %665 = fadd fast float %662, 5.000000e-01
  %666 = fadd fast float %663, 5.000000e-01
  %667 = call float @dx.op.unary.f32(i32 24, float %515)  ; Sqrt(value)
  %668 = call float @dx.op.unary.f32(i32 24, float %516)  ; Sqrt(value)
  %669 = call float @dx.op.unary.f32(i32 24, float %517)  ; Sqrt(value)
  %670 = fmul fast float %664, 2.000000e+00
  %671 = fsub fast float 1.000000e+00, %670
  %672 = fmul fast float %671, %667
  %673 = fadd fast float %672, %670
  %674 = fmul fast float %673, %667
  %675 = fmul fast float %665, 2.000000e+00
  %676 = fsub fast float 1.000000e+00, %675
  %677 = fmul fast float %676, %668
  %678 = fadd fast float %677, %675
  %679 = fmul fast float %678, %668
  %680 = fmul fast float %666, 2.000000e+00
  %681 = fsub fast float 1.000000e+00, %680
  %682 = fmul fast float %681, %669
  %683 = fadd fast float %682, %680
  %684 = fmul fast float %683, %669
  %685 = fmul fast float %674, %674
  %686 = fmul fast float %679, %679
  %687 = fmul fast float %684, %684
  br label %704

; <label>:688                                     ; preds = %651
  %689 = fmul fast float %186, %186
  %690 = fmul fast float %190, %190
  %691 = fmul fast float %194, %194
  %692 = fadd fast float %689, -1.000000e+00
  %693 = fadd fast float %690, -1.000000e+00
  %694 = fadd fast float %691, -1.000000e+00
  %695 = fmul fast float %540, %692
  %696 = fmul fast float %540, %693
  %697 = fmul fast float %540, %694
  %698 = fadd fast float %695, 1.000000e+00
  %699 = fadd fast float %696, 1.000000e+00
  %700 = fadd fast float %697, 1.000000e+00
  %701 = fmul fast float %698, %515
  %702 = fmul fast float %699, %516
  %703 = fmul fast float %700, %517
  br label %704

; <label>:704                                     ; preds = %688, %654, %545, %503
  %705 = phi float [ %650, %545 ], [ %526, %654 ], [ %526, %688 ], [ 0x3FA23C0BE0000000, %503 ]
  %706 = phi float [ %642, %545 ], [ %685, %654 ], [ %701, %688 ], [ 1.000000e+00, %503 ]
  %707 = phi float [ %643, %545 ], [ %686, %654 ], [ %702, %688 ], [ 1.000000e+00, %503 ]
  %708 = phi float [ %644, %545 ], [ %687, %654 ], [ %703, %688 ], [ 1.000000e+00, %503 ]
  %709 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %710 = extractvalue %dx.types.CBufRet.i32 %709, 1
  %711 = and i32 %710, 1
  %712 = icmp ne i32 %711, 0
  %713 = add i32 %30, 356
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %713, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = and i32 %715, 32
  %717 = icmp ne i32 %716, 0
  %718 = and i1 %712, %717
  %719 = select i1 %718, float 1.000000e+00, float %706
  %720 = select i1 %718, float 0x3FD3333340000000, float %707
  %721 = select i1 %718, float 0x3FD3333340000000, float %708
  %722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = and i32 %723, 32
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %798, label %726

; <label>:726                                     ; preds = %704
  %727 = add i32 %30, 92
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = add i32 %30, 376
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %730, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = add i32 %732, 0
  %734 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %733, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %735 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %734, %dx.types.Handle %65, float %504, float %505, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %736 = extractvalue %dx.types.ResRet.f32 %735, 0
  %737 = extractvalue %dx.types.ResRet.f32 %735, 1
  %738 = extractvalue %dx.types.ResRet.f32 %735, 2
  %739 = extractvalue %dx.types.ResRet.f32 %735, 3
  %740 = and i32 %729, 255
  %741 = uitofp i32 %740 to float
  %742 = lshr i32 %729, 8
  %743 = and i32 %742, 255
  %744 = uitofp i32 %743 to float
  %745 = lshr i32 %729, 16
  %746 = and i32 %745, 255
  %747 = uitofp i32 %746 to float
  %748 = fmul fast float %747, 0x3F70101000000000
  %749 = fmul fast float %736, %741
  %750 = fadd fast float %749, %744
  %751 = fmul fast float %750, 0x3F70101000000000
  %752 = fadd fast float %737, -5.000000e-01
  %753 = fadd fast float %739, -5.000000e-01
  %754 = fmul fast float %752, %748
  %755 = fmul fast float %753, %748
  %756 = fadd fast float %754, 5.000000e-01
  %757 = fadd fast float %755, 5.000000e-01
  %758 = fmul fast float %756, 2.000000e+00
  %759 = fadd fast float %758, -1.000000e+00
  %760 = fmul fast float %757, 2.000000e+00
  %761 = fadd fast float %760, -1.000000e+00
  %762 = fadd fast float %759, %761
  %763 = fmul fast float %762, 5.000000e-01
  %764 = fsub fast float %759, %761
  %765 = fmul fast float %764, 5.000000e-01
  %766 = call float @dx.op.unary.f32(i32 6, float %763)  ; FAbs(value)
  %767 = fsub fast float 1.000000e+00, %766
  %768 = call float @dx.op.unary.f32(i32 6, float %765)  ; FAbs(value)
  %769 = fsub fast float %767, %768
  %770 = call float @dx.op.dot3.f32(i32 55, float %763, float %765, float %769, float %763, float %765, float %769)  ; Dot3(ax,ay,az,bx,by,bz)
  %771 = call float @dx.op.unary.f32(i32 25, float %770)  ; Rsqrt(value)
  %772 = fmul fast float %763, %771
  %773 = fmul fast float %765, %771
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = and i32 %775, 67108864
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %794, label %778

; <label>:778                                     ; preds = %726
  %779 = add i32 %30, 280
  %780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %779, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.i32 %780, 0
  %782 = and i32 %781, 65535
  %783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %782)  ; LegacyF16ToF32(value)
  %784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.i32 %784, 0
  %786 = and i32 %785, 65535
  %787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %786)  ; LegacyF16ToF32(value)
  %788 = lshr i32 %781, 16
  %789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %788)  ; LegacyF16ToF32(value)
  %790 = fsub fast float %751, %789
  %791 = fmul fast float %790, %783
  %792 = fadd fast float %791, %787
  %793 = call float @dx.op.unary.f32(i32 7, float %792)  ; Saturate(value)
  br label %794

; <label>:794                                     ; preds = %778, %726
  %795 = phi float [ %793, %778 ], [ %751, %726 ]
  %796 = call float @dx.op.dot2.f32(i32 54, float %772, float %773, float %408, float %409)  ; Dot2(ax,ay,bx,by)
  %797 = call float @dx.op.dot2.f32(i32 54, float %772, float %773, float %410, float %411)  ; Dot2(ax,ay,bx,by)
  br label %798

; <label>:798                                     ; preds = %794, %704
  %799 = phi float [ %795, %794 ], [ 0x3FD6666660000000, %704 ]
  %800 = phi float [ %796, %794 ], [ 0.000000e+00, %704 ]
  %801 = phi float [ %797, %794 ], [ 0.000000e+00, %704 ]
  %802 = phi float [ %738, %794 ], [ 1.000000e+00, %704 ]
  %803 = add i32 %30, 160
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = lshr i32 %805, 22
  %807 = shl nuw nsw i32 %806, 5
  %808 = call float @dx.op.legacyF16ToF32(i32 131, i32 %807)  ; LegacyF16ToF32(value)
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 64
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %846, label %813

; <label>:813                                     ; preds = %798
  %814 = add i32 %30, 392
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = add i32 %816, 0
  %818 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %817, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = and i32 %820, 131072
  %822 = icmp eq i32 %821, 0
  %823 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %818, %dx.types.Handle %65, float %504, float %505, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %824 = extractvalue %dx.types.ResRet.f32 %823, 0
  %825 = extractvalue %dx.types.ResRet.f32 %823, 1
  %826 = extractvalue %dx.types.ResRet.f32 %823, 2
  %827 = fmul fast float %824, %174
  %828 = fmul fast float %825, %177
  %829 = fmul fast float %826, %180
  br i1 %822, label %836, label %830

; <label>:830                                     ; preds = %813
  %831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %832 = extractvalue %dx.types.CBufRet.f32 %831, 0
  %833 = fmul fast float %832, %827
  %834 = fmul fast float %832, %828
  %835 = fmul fast float %832, %829
  br label %836

; <label>:836                                     ; preds = %830, %813
  %837 = phi float [ %833, %830 ], [ %827, %813 ]
  %838 = phi float [ %834, %830 ], [ %828, %813 ]
  %839 = phi float [ %835, %830 ], [ %829, %813 ]
  %840 = fmul fast float %837, %808
  %841 = select i1 %168, float %840, float %837
  %842 = call float @dx.op.dot3.f32(i32 55, float %841, float %838, float %839, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %843 = select i1 %168, float 0.000000e+00, float %837
  %844 = select i1 %168, float %842, float %838
  %845 = select i1 %168, float 0.000000e+00, float %839
  br label %846

; <label>:846                                     ; preds = %836, %798
  %847 = phi float [ %843, %836 ], [ 0.000000e+00, %798 ]
  %848 = phi float [ %844, %836 ], [ 0.000000e+00, %798 ]
  %849 = phi float [ %845, %836 ], [ 0.000000e+00, %798 ]
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = and i32 %851, 10240
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %898, label %854

; <label>:854                                     ; preds = %846
  %855 = add i32 %30, 456
  %856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %855, i32 undef)  ; BufferLoad(srv,index,wot)
  %857 = extractvalue %dx.types.ResRet.i32 %856, 0
  %858 = add i32 %857, 0
  %859 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %858, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %860 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %859, %dx.types.Handle %66, float %504, float %505, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %861 = extractvalue %dx.types.ResRet.f32 %860, 1
  %862 = extractvalue %dx.types.ResRet.f32 %860, 3
  %863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.i32 %863, 0
  %865 = and i32 %864, 1048576
  %866 = icmp ne i32 %865, 0
  %867 = and i32 %864, 8192
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %884, label %869

; <label>:869                                     ; preds = %854
  %870 = extractvalue %dx.types.ResRet.f32 %860, 2
  %871 = select i1 %866, float %870, float %861
  %872 = extractvalue %dx.types.ResRet.f32 %860, 0
  %873 = select i1 %866, float %872, float %861
  %874 = add i32 %30, 96
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = lshr i32 %876, 16
  %878 = and i32 %877, 255
  %879 = uitofp i32 %878 to float
  %880 = fmul fast float %879, 0x3F80101020000000
  %881 = fmul fast float %880, %873
  %882 = fmul fast float %880, %861
  %883 = fmul fast float %880, %871
  br label %884

; <label>:884                                     ; preds = %869, %854
  %885 = phi float [ %881, %869 ], [ 0.000000e+00, %854 ]
  %886 = phi float [ %882, %869 ], [ 0.000000e+00, %854 ]
  %887 = phi float [ %883, %869 ], [ 0.000000e+00, %854 ]
  %888 = and i32 %864, 2048
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %898, label %890

; <label>:890                                     ; preds = %884
  %891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.i32 %891, 0
  %893 = shl i32 %892, 4
  %894 = and i32 %893, 32752
  %895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %894)  ; LegacyF16ToF32(value)
  %896 = fmul fast float %895, %862
  %897 = call float @dx.op.binary.f32(i32 35, float %896, float 0x3F70101020000000)  ; FMax(a,b)
  br label %898

; <label>:898                                     ; preds = %890, %884, %846
  %899 = phi float [ %885, %890 ], [ %885, %884 ], [ 0.000000e+00, %846 ]
  %900 = phi float [ %886, %890 ], [ %886, %884 ], [ 0.000000e+00, %846 ]
  %901 = phi float [ %887, %890 ], [ %887, %884 ], [ 0.000000e+00, %846 ]
  %902 = phi float [ %897, %890 ], [ 0x3F70101020000000, %884 ], [ 0x3F70101020000000, %846 ]
  %903 = add i32 %30, 96
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %903, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = and i32 %905, 255
  %907 = uitofp i32 %906 to float
  %908 = lshr i32 %905, 8
  %909 = and i32 %908, 255
  %910 = uitofp i32 %909 to float
  %911 = call float @dx.op.dot3.f32(i32 55, float %719, float %720, float %721, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %912 = fmul fast float %910, %911
  %913 = fadd fast float %912, %907
  %914 = fmul fast float %913, 0x3F70101020000000
  %915 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  br label %916

; <label>:916                                     ; preds = %898, %390
  %917 = phi float [ 0.000000e+00, %390 ], [ %800, %898 ]
  %918 = phi float [ 0.000000e+00, %390 ], [ %801, %898 ]
  %919 = phi float [ 0.000000e+00, %390 ], [ %719, %898 ]
  %920 = phi float [ 0.000000e+00, %390 ], [ %720, %898 ]
  %921 = phi float [ 0.000000e+00, %390 ], [ %721, %898 ]
  %922 = phi float [ 0.000000e+00, %390 ], [ %847, %898 ]
  %923 = phi float [ 0.000000e+00, %390 ], [ %848, %898 ]
  %924 = phi float [ 0.000000e+00, %390 ], [ %849, %898 ]
  %925 = phi float [ 0.000000e+00, %390 ], [ %899, %898 ]
  %926 = phi float [ 0.000000e+00, %390 ], [ %900, %898 ]
  %927 = phi float [ 0.000000e+00, %390 ], [ %901, %898 ]
  %928 = phi float [ 0.000000e+00, %390 ], [ %705, %898 ]
  %929 = phi float [ 0.000000e+00, %390 ], [ 1.000000e+00, %898 ]
  %930 = phi float [ 0.000000e+00, %390 ], [ %799, %898 ]
  %931 = phi float [ 0.000000e+00, %390 ], [ %802, %898 ]
  %932 = phi float [ 0.000000e+00, %390 ], [ %902, %898 ]
  %933 = phi float [ 0.000000e+00, %390 ], [ %915, %898 ]
  br i1 %341, label %1862, label %934

; <label>:934                                     ; preds = %916
  %935 = icmp ult i32 %396, 2
  %936 = add i32 %30, 40
  %937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %938 = extractvalue %dx.types.ResRet.i32 %937, 0
  %939 = add i32 %30, 44
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = or i32 %941, %938
  %943 = icmp eq i32 %942, 0
  br i1 %943, label %1862, label %944

; <label>:944                                     ; preds = %934
  %945 = and i32 %938, 262144
  %946 = icmp ne i32 %945, 0
  %947 = select i1 %946, float %32, float 1.000000e+00
  %948 = select i1 %946, float %33, float 0.000000e+00
  %949 = select i1 %946, float %34, float 0.000000e+00
  %950 = select i1 %946, float %35, float 1.000000e+00
  %951 = select i1 %946, float %36, float %57
  %952 = select i1 %946, float %37, float %58
  %953 = add i32 %30, 300
  %954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %955 = extractvalue %dx.types.ResRet.i32 %954, 0
  %956 = lshr i32 %955, 16
  %957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %956)  ; LegacyF16ToF32(value)
  %958 = fmul fast float %957, 0x3F50624DE0000000
  %959 = add i32 %30, 104
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = lshr i32 %961, 16
  %963 = and i32 %962, 255
  %964 = lshr i32 %961, 24
  %965 = add i32 %30, 308
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = and i32 %967, 65535
  %969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %968)  ; LegacyF16ToF32(value)
  %970 = lshr i32 %967, 16
  %971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %970)  ; LegacyF16ToF32(value)
  %972 = add i32 %30, 48
  %973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %972, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.i32 %973, 0
  %975 = lshr i32 %974, 22
  %976 = shl nuw nsw i32 %975, 5
  %977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %976)  ; LegacyF16ToF32(value)
  %978 = shl i32 %974, 4
  %979 = and i32 %978, 32752
  %980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %979)  ; LegacyF16ToF32(value)
  %981 = lshr i32 %974, 7
  %982 = and i32 %981, 32752
  %983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %982)  ; LegacyF16ToF32(value)
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 3
  %986 = fmul fast float %985, 1.000000e+03
  %987 = fmul fast float %251, %986
  %988 = call float @dx.op.unary.f32(i32 22, float %987)  ; Frc(value)
  %989 = fadd fast float %988, %241
  %990 = fmul fast float %252, %986
  %991 = call float @dx.op.unary.f32(i32 22, float %990)  ; Frc(value)
  %992 = fadd fast float %991, %243
  %993 = fmul fast float %958, %986
  %994 = call float @dx.op.unary.f32(i32 22, float %993)  ; Frc(value)
  %995 = fmul fast float %994, 0x401921FB60000000
  %996 = fadd fast float %995, %977
  %997 = call float @dx.op.unary.f32(i32 13, float %996)  ; Sin(value)
  %998 = call float @dx.op.unary.f32(i32 12, float %996)  ; Cos(value)
  %999 = fsub fast float -0.000000e+00, %997
  %1000 = fadd fast float %951, -5.000000e-01
  %1001 = fadd fast float %952, -5.000000e-01
  %1002 = fmul fast float %969, %1000
  %1003 = fmul fast float %971, %1001
  %1004 = fadd fast float %1002, 5.000000e-01
  %1005 = fadd fast float %1003, 5.000000e-01
  %1006 = fmul fast float %980, %1004
  %1007 = fmul fast float %983, %1005
  %1008 = fmul fast float %998, %1006
  %1009 = call float @dx.op.tertiary.f32(i32 46, float %999, float %1007, float %1008)  ; FMad(a,b,c)
  %1010 = fmul fast float %997, %1006
  %1011 = call float @dx.op.tertiary.f32(i32 46, float %998, float %1007, float %1010)  ; FMad(a,b,c)
  %1012 = fadd fast float %989, %1009
  %1013 = fadd fast float %992, %1011
  %1014 = icmp ugt i32 %963, 1
  %1015 = icmp ugt i32 %961, 33554431
  %1016 = or i1 %1015, %1014
  br i1 %1016, label %1017, label %1042

; <label>:1017                                    ; preds = %944
  %1018 = add i32 %30, 244
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1018, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = lshr i32 %1020, 16
  %1022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1021)  ; LegacyF16ToF32(value)
  %1023 = fmul fast float %985, %1022
  %1024 = call float @dx.op.unary.f32(i32 22, float %1023)  ; Frc(value)
  %1025 = mul nuw nsw i32 %963, %964
  %1026 = uitofp i32 %1025 to float
  %1027 = fmul fast float %1024, %1026
  %1028 = call float @dx.op.unary.f32(i32 27, float %1027)  ; Round_ni(value)
  %1029 = fptoui float %1028 to i32
  %1030 = urem i32 %1029, %963
  %1031 = udiv i32 %1029, %964
  %1032 = call float @dx.op.unary.f32(i32 22, float %1012)  ; Frc(value)
  %1033 = call float @dx.op.unary.f32(i32 22, float %1013)  ; Frc(value)
  %1034 = uitofp i32 %1030 to float
  %1035 = uitofp i32 %1031 to float
  %1036 = fadd fast float %1032, %1034
  %1037 = fadd fast float %1033, %1035
  %1038 = uitofp i32 %963 to float
  %1039 = uitofp i32 %964 to float
  %1040 = fdiv fast float %1036, %1038
  %1041 = fdiv fast float %1037, %1039
  br label %1042

; <label>:1042                                    ; preds = %1017, %944
  %1043 = phi float [ %1040, %1017 ], [ %1012, %944 ]
  %1044 = phi float [ %1041, %1017 ], [ %1013, %944 ]
  %1045 = and i32 %938, 16777216
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %1156, label %1047

; <label>:1047                                    ; preds = %1042
  %1048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1049 = extractvalue %dx.types.CBufRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.CBufRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.CBufRet.f32 %1048, 2
  %1052 = fadd fast float %1049, %124
  %1053 = fadd fast float %1050, %125
  %1054 = fadd fast float %1051, %126
  %1055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1056 = extractvalue %dx.types.CBufRet.f32 %1055, 0
  %1057 = call float @dx.op.unary.f32(i32 7, float %1056)  ; Saturate(value)
  %1058 = icmp eq i32 %31, 65535
  br i1 %1058, label %1153, label %1059

; <label>:1059                                    ; preds = %1047
  %1060 = lshr i32 %31, 1
  %1061 = shl i32 %1060, 2
  %1062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.i32 %1062, 0
  %1064 = and i32 %31, 1
  %1065 = icmp ne i32 %1064, 0
  %1066 = lshr i32 %1063, 16
  %1067 = and i32 %1063, 65535
  %1068 = select i1 %1065, i32 %1066, i32 %1067
  %1069 = icmp eq i32 %1068, 65535
  br i1 %1069, label %1149, label %1070

; <label>:1070                                    ; preds = %1059
  %1071 = mul nuw nsw i32 %1068, 40
  %1072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.f32 %1072, 0
  %1074 = extractvalue %dx.types.ResRet.f32 %1072, 1
  %1075 = extractvalue %dx.types.ResRet.f32 %1072, 2
  %1076 = add nuw nsw i32 %1071, 12
  %1077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.f32 %1077, 0
  %1079 = extractvalue %dx.types.ResRet.f32 %1077, 1
  %1080 = extractvalue %dx.types.ResRet.f32 %1077, 2
  %1081 = add nuw nsw i32 %1071, 24
  %1082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.f32 %1082, 0
  %1084 = extractvalue %dx.types.ResRet.f32 %1082, 1
  %1085 = extractvalue %dx.types.ResRet.f32 %1082, 2
  %1086 = add nuw nsw i32 %1071, 36
  %1087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1086, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.f32 %1087, 0
  %1089 = fsub fast float %1052, %1073
  %1090 = fsub fast float %1053, %1074
  %1091 = fsub fast float %1054, %1075
  %1092 = fmul fast float %1088, %1089
  %1093 = fmul fast float %1088, %1090
  %1094 = fmul fast float %1088, %1091
  %1095 = call float @dx.op.unary.f32(i32 27, float %1092)  ; Round_ni(value)
  %1096 = call float @dx.op.unary.f32(i32 27, float %1093)  ; Round_ni(value)
  %1097 = call float @dx.op.unary.f32(i32 27, float %1094)  ; Round_ni(value)
  %1098 = fadd fast float %1095, 5.000000e-01
  %1099 = fadd fast float %1096, 5.000000e-01
  %1100 = fadd fast float %1097, 5.000000e-01
  %1101 = fmul fast float %1098, %1078
  %1102 = fmul fast float %1099, %1079
  %1103 = fmul fast float %1100, %1080
  %1104 = shl i32 %31, 2
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = add i32 %1106, 0
  %1108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1107, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1109 = call float @dx.op.unary.f32(i32 22, float %1101)  ; Frc(value)
  %1110 = call float @dx.op.unary.f32(i32 22, float %1102)  ; Frc(value)
  %1111 = call float @dx.op.unary.f32(i32 22, float %1103)  ; Frc(value)
  %1112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1108, %dx.types.Handle %27, float %1109, float %1110, float %1111, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1113 = extractvalue %dx.types.ResRet.f32 %1112, 0
  %1114 = extractvalue %dx.types.ResRet.f32 %1112, 1
  %1115 = extractvalue %dx.types.ResRet.f32 %1112, 2
  %1116 = fmul fast float %1113, 1.023000e+03
  %1117 = fmul fast float %1114, 1.023000e+03
  %1118 = fmul fast float %1115, 1.023000e+03
  %1119 = fadd fast float %1116, 5.000000e-01
  %1120 = fadd fast float %1117, 5.000000e-01
  %1121 = fadd fast float %1118, 5.000000e-01
  %1122 = call float @dx.op.unary.f32(i32 27, float %1119)  ; Round_ni(value)
  %1123 = call float @dx.op.unary.f32(i32 27, float %1120)  ; Round_ni(value)
  %1124 = call float @dx.op.unary.f32(i32 27, float %1121)  ; Round_ni(value)
  %1125 = fsub fast float %1092, %1095
  %1126 = fsub fast float %1093, %1096
  %1127 = fsub fast float %1094, %1097
  %1128 = fmul fast float %1125, 7.500000e-01
  %1129 = fmul fast float %1126, 7.500000e-01
  %1130 = fmul fast float %1127, 7.500000e-01
  %1131 = fadd fast float %1095, 1.250000e-01
  %1132 = fadd fast float %1131, %1128
  %1133 = fadd fast float %1132, %1122
  %1134 = fadd fast float %1096, 1.250000e-01
  %1135 = fadd fast float %1134, %1129
  %1136 = fadd fast float %1135, %1123
  %1137 = fadd fast float %1097, 1.250000e-01
  %1138 = fadd fast float %1137, %1130
  %1139 = fadd fast float %1138, %1124
  %1140 = fmul fast float %1133, %1083
  %1141 = fmul fast float %1136, %1084
  %1142 = fmul fast float %1139, %1085
  %1143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = add i32 %1144, 0
  %1146 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1145, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1146, %dx.types.Handle %25, float %1140, float %1141, float %1142, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1148 = extractvalue %dx.types.ResRet.f32 %1147, 0
  br label %1149

; <label>:1149                                    ; preds = %1070, %1059
  %1150 = phi float [ %1148, %1070 ], [ -1.000000e+00, %1059 ]
  %1151 = fadd fast float %1150, %1057
  %1152 = call float @dx.op.unary.f32(i32 7, float %1151)  ; Saturate(value)
  br label %1153

; <label>:1153                                    ; preds = %1149, %1047
  %1154 = phi float [ %1152, %1149 ], [ %1057, %1047 ]
  %1155 = fmul fast float %1154, %393
  br label %1156

; <label>:1156                                    ; preds = %1153, %1042
  %1157 = phi float [ %1155, %1153 ], [ %393, %1042 ]
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = and i32 %1159, 256
  %1161 = icmp eq i32 %1160, 0
  br i1 %1161, label %1208, label %1162

; <label>:1162                                    ; preds = %1156
  %1163 = add i32 %30, 428
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = add i32 %1165, 0
  %1167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1168 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1167, %dx.types.Handle %66, float %1043, float %1044, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1169 = extractvalue %dx.types.ResRet.f32 %1168, 0
  %1170 = add i32 %30, 116
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = shl i32 %1172, 4
  %1174 = and i32 %1173, 32752
  %1175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1174)  ; LegacyF16ToF32(value)
  %1176 = lshr i32 %1172, 7
  %1177 = and i32 %1176, 32752
  %1178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1177)  ; LegacyF16ToF32(value)
  %1179 = fsub fast float 1.000000e+00, %1157
  %1180 = call float @dx.op.binary.f32(i32 35, float %1179, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1181 = bitcast float %1157 to i32
  %1182 = sitofp i32 %1181 to float
  %1183 = fadd fast float %1182, 0xC1CFBF8940000000
  %1184 = fmul fast float %1178, %1183
  %1185 = fadd fast float %1184, 0x41CFBF8940000000
  %1186 = fptosi float %1185 to i32
  %1187 = bitcast i32 %1186 to float
  %1188 = bitcast float %1180 to i32
  %1189 = sitofp i32 %1188 to float
  %1190 = fadd fast float %1189, 0xC1CFBF8940000000
  %1191 = fmul fast float %1190, %1178
  %1192 = fadd fast float %1191, 0x41CFBF8940000000
  %1193 = fptosi float %1192 to i32
  %1194 = bitcast i32 %1193 to float
  %1195 = fmul fast float %1187, %1175
  %1196 = fmul fast float %1194, %1175
  %1197 = fsub fast float %1180, %1195
  %1198 = fadd fast float %1196, %1180
  %1199 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1200 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1201 = fsub fast float %1169, %1199
  %1202 = fsub fast float %1200, %1199
  %1203 = bitcast float %1202 to i32
  %1204 = sub nsw i32 2129859010, %1203
  %1205 = bitcast i32 %1204 to float
  %1206 = fmul fast float %1205, %1201
  %1207 = call float @dx.op.unary.f32(i32 7, float %1206)  ; Saturate(value)
  br label %1208

; <label>:1208                                    ; preds = %1162, %1156
  %1209 = phi float [ %1207, %1162 ], [ %1157, %1156 ]
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = and i32 %1211, 128
  %1213 = icmp eq i32 %1212, 0
  br i1 %1213, label %1230, label %1214

; <label>:1214                                    ; preds = %1208
  %1215 = add i32 %30, 412
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = add i32 %1217, 0
  %1219 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1218, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1220 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1219, %dx.types.Handle %66, float %1043, float %1044, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1221 = extractvalue %dx.types.ResRet.f32 %1220, 0
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = and i32 %1223, 524288
  %1225 = icmp ne i32 %1224, 0
  %1226 = fcmp fast ogt float %1221, 0x3FE0101020000000
  %1227 = select i1 %1226, float 1.000000e+00, float 0.000000e+00
  %1228 = select i1 %1225, float %1227, float %1221
  %1229 = fmul fast float %1228, %1209
  br label %1230

; <label>:1230                                    ; preds = %1214, %1208
  %1231 = phi float [ %1229, %1214 ], [ %1209, %1208 ]
  %1232 = fcmp fast ult float %1231, 0x3F70101020000000
  br i1 %1232, label %1862, label %1233

; <label>:1233                                    ; preds = %1230
  %1234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.i32 %1234, 0
  %1236 = and i32 %1235, 16
  %1237 = icmp eq i32 %1236, 0
  br i1 %1237, label %1436, label %1238

; <label>:1238                                    ; preds = %1233
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = add i32 %30, 364
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = add i32 %1243, 0
  %1245 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1244, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1246 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1245, %dx.types.Handle %65, float %1043, float %1044, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1247 = extractvalue %dx.types.ResRet.f32 %1246, 0
  %1248 = extractvalue %dx.types.ResRet.f32 %1246, 1
  %1249 = extractvalue %dx.types.ResRet.f32 %1246, 2
  %1250 = extractvalue %dx.types.ResRet.f32 %1246, 3
  %1251 = and i32 %1240, 255
  %1252 = uitofp i32 %1251 to float
  %1253 = lshr i32 %1240, 8
  %1254 = and i32 %1253, 255
  %1255 = uitofp i32 %1254 to float
  %1256 = fmul fast float %1250, %1252
  %1257 = fadd fast float %1256, %1255
  %1258 = fmul fast float %1257, 0x3F70101000000000
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = and i32 %1260, 512
  %1262 = icmp eq i32 %1261, 0
  br i1 %1262, label %1271, label %1263

; <label>:1263                                    ; preds = %1238
  %1264 = add i32 %30, 444
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = add i32 %1266, 0
  %1268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1267, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1269 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1268, %dx.types.Handle %66, float %1043, float %1044, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1270 = extractvalue %dx.types.ResRet.f32 %1269, 0
  br label %1271

; <label>:1271                                    ; preds = %1263, %1238
  %1272 = phi float [ %1270, %1263 ], [ 1.000000e+00, %1238 ]
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = and i32 %1274, 33554432
  %1276 = icmp eq i32 %1275, 0
  br i1 %1276, label %1383, label %1277

; <label>:1277                                    ; preds = %1271
  %1278 = add i32 %30, 240
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = and i32 %1280, 65535
  %1282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1281)  ; LegacyF16ToF32(value)
  %1283 = lshr i32 %1280, 16
  %1284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1283)  ; LegacyF16ToF32(value)
  %1285 = add i32 %30, 244
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = and i32 %1287, 65535
  %1289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1288)  ; LegacyF16ToF32(value)
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = lshr i32 %1291, 24
  %1293 = uitofp i32 %1292 to float
  %1294 = fmul fast float %1293, 0x3F70101020000000
  %1295 = and i32 %1291, 255
  %1296 = uitofp i32 %1295 to float
  %1297 = fmul fast float %1296, 0x3F70101020000000
  %1298 = lshr i32 %1291, 8
  %1299 = and i32 %1298, 255
  %1300 = uitofp i32 %1299 to float
  %1301 = fmul fast float %1300, 0x3F70101020000000
  %1302 = lshr i32 %1291, 16
  %1303 = and i32 %1302, 255
  %1304 = uitofp i32 %1303 to float
  %1305 = fmul fast float %1304, 0x3F70101020000000
  %1306 = add i32 %30, 236
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = lshr i32 %1308, 24
  %1310 = uitofp i32 %1309 to float
  %1311 = fmul fast float %1310, 0x3F70101020000000
  %1312 = and i32 %1308, 255
  %1313 = uitofp i32 %1312 to float
  %1314 = fmul fast float %1313, 0x3F70101020000000
  %1315 = lshr i32 %1308, 8
  %1316 = and i32 %1315, 255
  %1317 = uitofp i32 %1316 to float
  %1318 = fmul fast float %1317, 0x3F70101020000000
  %1319 = lshr i32 %1308, 16
  %1320 = and i32 %1319, 255
  %1321 = uitofp i32 %1320 to float
  %1322 = fmul fast float %1321, 0x3F70101020000000
  %1323 = bitcast float %1247 to i32
  %1324 = ashr i32 %1323, 1
  %1325 = sub nsw i32 1597463174, %1324
  %1326 = bitcast i32 %1325 to float
  %1327 = fmul fast float %1247, 5.000000e-01
  %1328 = fmul fast float %1326, %1326
  %1329 = fmul fast float %1328, %1327
  %1330 = fsub fast float 1.500000e+00, %1329
  %1331 = fmul fast float %1326, %1247
  %1332 = fmul fast float %1331, %1330
  %1333 = bitcast float %1248 to i32
  %1334 = ashr i32 %1333, 1
  %1335 = sub nsw i32 1597463174, %1334
  %1336 = bitcast i32 %1335 to float
  %1337 = fmul fast float %1248, 5.000000e-01
  %1338 = fmul fast float %1336, %1336
  %1339 = fmul fast float %1338, %1337
  %1340 = fsub fast float 1.500000e+00, %1339
  %1341 = fmul fast float %1336, %1248
  %1342 = fmul fast float %1341, %1340
  %1343 = bitcast float %1249 to i32
  %1344 = ashr i32 %1343, 1
  %1345 = sub nsw i32 1597463174, %1344
  %1346 = bitcast i32 %1345 to float
  %1347 = fmul fast float %1249, 5.000000e-01
  %1348 = fmul fast float %1346, %1346
  %1349 = fmul fast float %1348, %1347
  %1350 = fsub fast float 1.500000e+00, %1349
  %1351 = fmul fast float %1346, %1249
  %1352 = fmul fast float %1351, %1350
  %1353 = fsub fast float %1332, %1314
  %1354 = fsub fast float %1342, %1318
  %1355 = fsub fast float %1352, %1322
  %1356 = fmul fast float %1353, %1282
  %1357 = fmul fast float %1354, %1284
  %1358 = fmul fast float %1355, %1289
  %1359 = fadd fast float %1356, %1297
  %1360 = fadd fast float %1357, %1301
  %1361 = fadd fast float %1358, %1305
  %1362 = call float @dx.op.unary.f32(i32 7, float %1359)  ; Saturate(value)
  %1363 = call float @dx.op.unary.f32(i32 7, float %1360)  ; Saturate(value)
  %1364 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  %1365 = fmul fast float %1362, %1362
  %1366 = fmul fast float %1363, %1363
  %1367 = fmul fast float %1364, %1364
  %1368 = fsub fast float %1365, %1247
  %1369 = fsub fast float %1366, %1248
  %1370 = fsub fast float %1367, %1249
  %1371 = fmul fast float %1368, %1272
  %1372 = fmul fast float %1369, %1272
  %1373 = fmul fast float %1370, %1272
  %1374 = fadd fast float %1371, %1247
  %1375 = fadd fast float %1372, %1248
  %1376 = fadd fast float %1373, %1249
  %1377 = fadd fast float %1294, %1258
  %1378 = fsub fast float %1377, %1311
  %1379 = call float @dx.op.unary.f32(i32 7, float %1378)  ; Saturate(value)
  %1380 = fsub fast float %1379, %1258
  %1381 = fmul fast float %1380, %1272
  %1382 = fadd fast float %1381, %1258
  br label %1436

; <label>:1383                                    ; preds = %1271
  %1384 = and i32 %1274, 134217728
  %1385 = icmp eq i32 %1384, 0
  br i1 %1385, label %1420, label %1386

; <label>:1386                                    ; preds = %1383
  %1387 = call float @dx.op.unary.f32(i32 24, float %228)  ; Sqrt(value)
  %1388 = call float @dx.op.unary.f32(i32 24, float %232)  ; Sqrt(value)
  %1389 = call float @dx.op.unary.f32(i32 24, float %236)  ; Sqrt(value)
  %1390 = fadd fast float %1387, -5.000000e-01
  %1391 = fadd fast float %1388, -5.000000e-01
  %1392 = fadd fast float %1389, -5.000000e-01
  %1393 = fmul fast float %1390, %1272
  %1394 = fmul fast float %1391, %1272
  %1395 = fmul fast float %1392, %1272
  %1396 = fadd fast float %1393, 5.000000e-01
  %1397 = fadd fast float %1394, 5.000000e-01
  %1398 = fadd fast float %1395, 5.000000e-01
  %1399 = call float @dx.op.unary.f32(i32 24, float %1247)  ; Sqrt(value)
  %1400 = call float @dx.op.unary.f32(i32 24, float %1248)  ; Sqrt(value)
  %1401 = call float @dx.op.unary.f32(i32 24, float %1249)  ; Sqrt(value)
  %1402 = fmul fast float %1396, 2.000000e+00
  %1403 = fsub fast float 1.000000e+00, %1402
  %1404 = fmul fast float %1403, %1399
  %1405 = fadd fast float %1404, %1402
  %1406 = fmul fast float %1405, %1399
  %1407 = fmul fast float %1397, 2.000000e+00
  %1408 = fsub fast float 1.000000e+00, %1407
  %1409 = fmul fast float %1408, %1400
  %1410 = fadd fast float %1409, %1407
  %1411 = fmul fast float %1410, %1400
  %1412 = fmul fast float %1398, 2.000000e+00
  %1413 = fsub fast float 1.000000e+00, %1412
  %1414 = fmul fast float %1413, %1401
  %1415 = fadd fast float %1414, %1412
  %1416 = fmul fast float %1415, %1401
  %1417 = fmul fast float %1406, %1406
  %1418 = fmul fast float %1411, %1411
  %1419 = fmul fast float %1416, %1416
  br label %1436

; <label>:1420                                    ; preds = %1383
  %1421 = fmul fast float %228, %228
  %1422 = fmul fast float %232, %232
  %1423 = fmul fast float %236, %236
  %1424 = fadd fast float %1421, -1.000000e+00
  %1425 = fadd fast float %1422, -1.000000e+00
  %1426 = fadd fast float %1423, -1.000000e+00
  %1427 = fmul fast float %1272, %1424
  %1428 = fmul fast float %1272, %1425
  %1429 = fmul fast float %1272, %1426
  %1430 = fadd fast float %1427, 1.000000e+00
  %1431 = fadd fast float %1428, 1.000000e+00
  %1432 = fadd fast float %1429, 1.000000e+00
  %1433 = fmul fast float %1430, %1247
  %1434 = fmul fast float %1431, %1248
  %1435 = fmul fast float %1432, %1249
  br label %1436

; <label>:1436                                    ; preds = %1420, %1386, %1277, %1233
  %1437 = phi float [ %1382, %1277 ], [ %1258, %1386 ], [ %1258, %1420 ], [ 0x3FA23C0BE0000000, %1233 ]
  %1438 = phi float [ %1374, %1277 ], [ %1417, %1386 ], [ %1433, %1420 ], [ 1.000000e+00, %1233 ]
  %1439 = phi float [ %1375, %1277 ], [ %1418, %1386 ], [ %1434, %1420 ], [ 1.000000e+00, %1233 ]
  %1440 = phi float [ %1376, %1277 ], [ %1419, %1386 ], [ %1435, %1420 ], [ 1.000000e+00, %1233 ]
  %1441 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1442 = extractvalue %dx.types.CBufRet.i32 %1441, 1
  %1443 = and i32 %1442, 1
  %1444 = icmp ne i32 %1443, 0
  %1445 = add i32 %30, 356
  %1446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1445, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.i32 %1446, 0
  %1448 = and i32 %1447, 32
  %1449 = icmp ne i32 %1448, 0
  %1450 = and i1 %1444, %1449
  %1451 = select i1 %1450, float 1.000000e+00, float %1438
  %1452 = select i1 %1450, float 0x3FD3333340000000, float %1439
  %1453 = select i1 %1450, float 0x3FD3333340000000, float %1440
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = and i32 %1455, 32
  %1457 = icmp eq i32 %1456, 0
  br i1 %1457, label %1530, label %1458

; <label>:1458                                    ; preds = %1436
  %1459 = add i32 %30, 108
  %1460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.i32 %1460, 0
  %1462 = add i32 %30, 380
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = add i32 %1464, 0
  %1466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1467 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1466, %dx.types.Handle %65, float %1043, float %1044, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1468 = extractvalue %dx.types.ResRet.f32 %1467, 0
  %1469 = extractvalue %dx.types.ResRet.f32 %1467, 1
  %1470 = extractvalue %dx.types.ResRet.f32 %1467, 2
  %1471 = extractvalue %dx.types.ResRet.f32 %1467, 3
  %1472 = and i32 %1461, 255
  %1473 = uitofp i32 %1472 to float
  %1474 = lshr i32 %1461, 8
  %1475 = and i32 %1474, 255
  %1476 = uitofp i32 %1475 to float
  %1477 = lshr i32 %1461, 16
  %1478 = and i32 %1477, 255
  %1479 = uitofp i32 %1478 to float
  %1480 = fmul fast float %1479, 0x3F70101000000000
  %1481 = fmul fast float %1468, %1473
  %1482 = fadd fast float %1481, %1476
  %1483 = fmul fast float %1482, 0x3F70101000000000
  %1484 = fadd fast float %1469, -5.000000e-01
  %1485 = fadd fast float %1471, -5.000000e-01
  %1486 = fmul fast float %1484, %1480
  %1487 = fmul fast float %1485, %1480
  %1488 = fadd fast float %1486, 5.000000e-01
  %1489 = fadd fast float %1487, 5.000000e-01
  %1490 = fmul fast float %1488, 2.000000e+00
  %1491 = fadd fast float %1490, -1.000000e+00
  %1492 = fmul fast float %1489, 2.000000e+00
  %1493 = fadd fast float %1492, -1.000000e+00
  %1494 = fadd fast float %1491, %1493
  %1495 = fmul fast float %1494, 5.000000e-01
  %1496 = fsub fast float %1491, %1493
  %1497 = fmul fast float %1496, 5.000000e-01
  %1498 = call float @dx.op.unary.f32(i32 6, float %1495)  ; FAbs(value)
  %1499 = fsub fast float 1.000000e+00, %1498
  %1500 = call float @dx.op.unary.f32(i32 6, float %1497)  ; FAbs(value)
  %1501 = fsub fast float %1499, %1500
  %1502 = call float @dx.op.dot3.f32(i32 55, float %1495, float %1497, float %1501, float %1495, float %1497, float %1501)  ; Dot3(ax,ay,az,bx,by,bz)
  %1503 = call float @dx.op.unary.f32(i32 25, float %1502)  ; Rsqrt(value)
  %1504 = fmul fast float %1495, %1503
  %1505 = fmul fast float %1497, %1503
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = and i32 %1507, 67108864
  %1509 = icmp eq i32 %1508, 0
  br i1 %1509, label %1526, label %1510

; <label>:1510                                    ; preds = %1458
  %1511 = add i32 %30, 296
  %1512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1511, i32 undef)  ; BufferLoad(srv,index,wot)
  %1513 = extractvalue %dx.types.ResRet.i32 %1512, 0
  %1514 = and i32 %1513, 65535
  %1515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1514)  ; LegacyF16ToF32(value)
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = and i32 %1517, 65535
  %1519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1518)  ; LegacyF16ToF32(value)
  %1520 = lshr i32 %1513, 16
  %1521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1520)  ; LegacyF16ToF32(value)
  %1522 = fsub fast float %1483, %1521
  %1523 = fmul fast float %1522, %1515
  %1524 = fadd fast float %1523, %1519
  %1525 = call float @dx.op.unary.f32(i32 7, float %1524)  ; Saturate(value)
  br label %1526

; <label>:1526                                    ; preds = %1510, %1458
  %1527 = phi float [ %1525, %1510 ], [ %1483, %1458 ]
  %1528 = call float @dx.op.dot2.f32(i32 54, float %1504, float %1505, float %947, float %948)  ; Dot2(ax,ay,bx,by)
  %1529 = call float @dx.op.dot2.f32(i32 54, float %1504, float %1505, float %949, float %950)  ; Dot2(ax,ay,bx,by)
  br label %1530

; <label>:1530                                    ; preds = %1526, %1436
  %1531 = phi float [ %1527, %1526 ], [ 0x3FD6666660000000, %1436 ]
  %1532 = phi float [ %1528, %1526 ], [ 0.000000e+00, %1436 ]
  %1533 = phi float [ %1529, %1526 ], [ 0.000000e+00, %1436 ]
  %1534 = phi float [ %1470, %1526 ], [ 1.000000e+00, %1436 ]
  %1535 = add i32 %30, 176
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = lshr i32 %1537, 22
  %1539 = shl nuw nsw i32 %1538, 5
  %1540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1539)  ; LegacyF16ToF32(value)
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = and i32 %1542, 64
  %1544 = icmp eq i32 %1543, 0
  br i1 %1544, label %1578, label %1545

; <label>:1545                                    ; preds = %1530
  %1546 = add i32 %30, 396
  %1547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1546, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.i32 %1547, 0
  %1549 = add i32 %1548, 0
  %1550 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1549, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = and i32 %1552, 131072
  %1554 = icmp eq i32 %1553, 0
  %1555 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1550, %dx.types.Handle %65, float %1043, float %1044, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1556 = extractvalue %dx.types.ResRet.f32 %1555, 0
  %1557 = extractvalue %dx.types.ResRet.f32 %1555, 1
  %1558 = extractvalue %dx.types.ResRet.f32 %1555, 2
  %1559 = fmul fast float %1556, %216
  %1560 = fmul fast float %1557, %219
  %1561 = fmul fast float %1558, %222
  br i1 %1554, label %1568, label %1562

; <label>:1562                                    ; preds = %1545
  %1563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1564 = extractvalue %dx.types.CBufRet.f32 %1563, 0
  %1565 = fmul fast float %1564, %1559
  %1566 = fmul fast float %1564, %1560
  %1567 = fmul fast float %1564, %1561
  br label %1568

; <label>:1568                                    ; preds = %1562, %1545
  %1569 = phi float [ %1565, %1562 ], [ %1559, %1545 ]
  %1570 = phi float [ %1566, %1562 ], [ %1560, %1545 ]
  %1571 = phi float [ %1567, %1562 ], [ %1561, %1545 ]
  %1572 = fmul fast float %1569, %1540
  %1573 = select i1 %168, float %1572, float %1569
  %1574 = call float @dx.op.dot3.f32(i32 55, float %1573, float %1570, float %1571, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1575 = select i1 %168, float 0.000000e+00, float %1569
  %1576 = select i1 %168, float %1574, float %1570
  %1577 = select i1 %168, float 0.000000e+00, float %1571
  br label %1578

; <label>:1578                                    ; preds = %1568, %1530
  %1579 = phi float [ %1575, %1568 ], [ 0.000000e+00, %1530 ]
  %1580 = phi float [ %1576, %1568 ], [ 0.000000e+00, %1530 ]
  %1581 = phi float [ %1577, %1568 ], [ 0.000000e+00, %1530 ]
  %1582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1583 = extractvalue %dx.types.ResRet.i32 %1582, 0
  %1584 = and i32 %1583, 10240
  %1585 = icmp eq i32 %1584, 0
  br i1 %1585, label %1630, label %1586

; <label>:1586                                    ; preds = %1578
  %1587 = add i32 %30, 460
  %1588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1587, i32 undef)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.i32 %1588, 0
  %1590 = add i32 %1589, 0
  %1591 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1590, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1592 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1591, %dx.types.Handle %66, float %1043, float %1044, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1593 = extractvalue %dx.types.ResRet.f32 %1592, 1
  %1594 = extractvalue %dx.types.ResRet.f32 %1592, 3
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = and i32 %1596, 1048576
  %1598 = icmp ne i32 %1597, 0
  %1599 = and i32 %1596, 8192
  %1600 = icmp eq i32 %1599, 0
  br i1 %1600, label %1616, label %1601

; <label>:1601                                    ; preds = %1586
  %1602 = extractvalue %dx.types.ResRet.f32 %1592, 2
  %1603 = select i1 %1598, float %1602, float %1593
  %1604 = extractvalue %dx.types.ResRet.f32 %1592, 0
  %1605 = select i1 %1598, float %1604, float %1593
  %1606 = add i32 %30, 112
  %1607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1606, i32 undef)  ; BufferLoad(srv,index,wot)
  %1608 = extractvalue %dx.types.ResRet.i32 %1607, 0
  %1609 = lshr i32 %1608, 16
  %1610 = and i32 %1609, 255
  %1611 = uitofp i32 %1610 to float
  %1612 = fmul fast float %1611, 0x3F80101020000000
  %1613 = fmul fast float %1612, %1605
  %1614 = fmul fast float %1612, %1593
  %1615 = fmul fast float %1612, %1603
  br label %1616

; <label>:1616                                    ; preds = %1601, %1586
  %1617 = phi float [ %1613, %1601 ], [ 0.000000e+00, %1586 ]
  %1618 = phi float [ %1614, %1601 ], [ 0.000000e+00, %1586 ]
  %1619 = phi float [ %1615, %1601 ], [ 0.000000e+00, %1586 ]
  %1620 = and i32 %1596, 2048
  %1621 = icmp eq i32 %1620, 0
  br i1 %1621, label %1630, label %1622

; <label>:1622                                    ; preds = %1616
  %1623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1624 = extractvalue %dx.types.ResRet.i32 %1623, 0
  %1625 = shl i32 %1624, 4
  %1626 = and i32 %1625, 32752
  %1627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1626)  ; LegacyF16ToF32(value)
  %1628 = fmul fast float %1627, %1594
  %1629 = call float @dx.op.binary.f32(i32 35, float %1628, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1630

; <label>:1630                                    ; preds = %1622, %1616, %1578
  %1631 = phi float [ %1617, %1622 ], [ %1617, %1616 ], [ 0.000000e+00, %1578 ]
  %1632 = phi float [ %1618, %1622 ], [ %1618, %1616 ], [ 0.000000e+00, %1578 ]
  %1633 = phi float [ %1619, %1622 ], [ %1619, %1616 ], [ 0.000000e+00, %1578 ]
  %1634 = phi float [ %1629, %1622 ], [ 0x3F70101020000000, %1616 ], [ 0x3F70101020000000, %1578 ]
  %1635 = add i32 %30, 112
  %1636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1635, i32 undef)  ; BufferLoad(srv,index,wot)
  %1637 = extractvalue %dx.types.ResRet.i32 %1636, 0
  %1638 = and i32 %1637, 255
  %1639 = uitofp i32 %1638 to float
  %1640 = lshr i32 %1637, 8
  %1641 = and i32 %1640, 255
  %1642 = uitofp i32 %1641 to float
  %1643 = call float @dx.op.dot3.f32(i32 55, float %1451, float %1452, float %1453, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1644 = fmul fast float %1642, %1643
  %1645 = fadd fast float %1644, %1639
  %1646 = fmul fast float %1645, 0x3F70101020000000
  %1647 = call float @dx.op.unary.f32(i32 7, float %1646)  ; Saturate(value)
  br i1 %935, label %1648, label %1656

; <label>:1648                                    ; preds = %1630
  %1649 = fsub fast float 1.000000e+00, %1231
  %1650 = fmul fast float %1649, %919
  %1651 = fmul fast float %1649, %920
  %1652 = fmul fast float %1649, %921
  %1653 = fmul fast float %1649, %922
  %1654 = fmul fast float %1649, %923
  %1655 = fmul fast float %1649, %924
  br label %1656

; <label>:1656                                    ; preds = %1648, %1630
  %1657 = phi float [ %1650, %1648 ], [ %919, %1630 ]
  %1658 = phi float [ %1651, %1648 ], [ %920, %1630 ]
  %1659 = phi float [ %1652, %1648 ], [ %921, %1630 ]
  %1660 = phi float [ %1653, %1648 ], [ %922, %1630 ]
  %1661 = phi float [ %1654, %1648 ], [ %923, %1630 ]
  %1662 = phi float [ %1655, %1648 ], [ %924, %1630 ]
  %1663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1664 = extractvalue %dx.types.ResRet.i32 %1663, 0
  %1665 = and i32 %1664, 3
  %1666 = icmp eq i32 %1665, 3
  br i1 %1666, label %1745, label %1667

; <label>:1667                                    ; preds = %1656
  %1668 = and i32 %1664, 16
  %1669 = icmp ne i32 %1668, 0
  %1670 = select i1 %1669, float %1231, float 0.000000e+00
  %1671 = icmp eq i32 %1665, 0
  br i1 %1671, label %1672, label %1700

; <label>:1672                                    ; preds = %1667
  %1673 = and i32 %1664, 64
  %1674 = icmp ne i32 %1673, 0
  %1675 = select i1 %1674, float %1231, float 0.000000e+00
  %1676 = fsub fast float %1451, %1657
  %1677 = fsub fast float %1452, %1658
  %1678 = fsub fast float %1453, %1659
  %1679 = fmul fast float %1670, %1676
  %1680 = fmul fast float %1670, %1677
  %1681 = fmul fast float %1670, %1678
  %1682 = fadd fast float %1679, %1657
  %1683 = fadd fast float %1680, %1658
  %1684 = fadd fast float %1681, %1659
  %1685 = fsub fast float %1437, %928
  %1686 = fmul fast float %1670, %1685
  %1687 = fadd fast float %1686, %928
  %1688 = fsub fast float %1579, %1660
  %1689 = fsub fast float %1580, %1661
  %1690 = fsub fast float %1581, %1662
  %1691 = fmul fast float %1675, %1688
  %1692 = fmul fast float %1675, %1689
  %1693 = fmul fast float %1675, %1690
  %1694 = fadd fast float %1691, %1660
  %1695 = fadd fast float %1692, %1661
  %1696 = fadd fast float %1693, %1662
  %1697 = fsub fast float %1647, %933
  %1698 = fmul fast float %1670, %1697
  %1699 = fadd fast float %1698, %933
  br label %1745

; <label>:1700                                    ; preds = %1667
  %1701 = icmp eq i32 %1665, 1
  br i1 %1701, label %1702, label %1715

; <label>:1702                                    ; preds = %1700
  %1703 = fadd fast float %1451, -1.000000e+00
  %1704 = fadd fast float %1452, -1.000000e+00
  %1705 = fadd fast float %1453, -1.000000e+00
  %1706 = fmul fast float %1670, %1703
  %1707 = fmul fast float %1670, %1704
  %1708 = fmul fast float %1670, %1705
  %1709 = fadd fast float %1706, 1.000000e+00
  %1710 = fadd fast float %1707, 1.000000e+00
  %1711 = fadd fast float %1708, 1.000000e+00
  %1712 = fmul fast float %1709, %1657
  %1713 = fmul fast float %1710, %1658
  %1714 = fmul fast float %1711, %1659
  br label %1745

; <label>:1715                                    ; preds = %1700
  %1716 = icmp eq i32 %1665, 2
  br i1 %1716, label %1717, label %1745

; <label>:1717                                    ; preds = %1715
  %1718 = call float @dx.op.unary.f32(i32 24, float %1451)  ; Sqrt(value)
  %1719 = call float @dx.op.unary.f32(i32 24, float %1452)  ; Sqrt(value)
  %1720 = call float @dx.op.unary.f32(i32 24, float %1453)  ; Sqrt(value)
  %1721 = fadd fast float %1718, -5.000000e-01
  %1722 = fadd fast float %1719, -5.000000e-01
  %1723 = fadd fast float %1720, -5.000000e-01
  %1724 = fmul fast float %1721, %1670
  %1725 = fmul fast float %1722, %1670
  %1726 = fmul fast float %1723, %1670
  %1727 = fadd fast float %1724, 5.000000e-01
  %1728 = fadd fast float %1725, 5.000000e-01
  %1729 = fadd fast float %1726, 5.000000e-01
  %1730 = fmul fast float %1727, 2.000000e+00
  %1731 = fsub fast float 1.000000e+00, %1730
  %1732 = fmul fast float %1731, %1657
  %1733 = fadd fast float %1732, %1730
  %1734 = fmul fast float %1733, %1657
  %1735 = fmul fast float %1728, 2.000000e+00
  %1736 = fsub fast float 1.000000e+00, %1735
  %1737 = fmul fast float %1736, %1658
  %1738 = fadd fast float %1737, %1735
  %1739 = fmul fast float %1738, %1658
  %1740 = fmul fast float %1729, 2.000000e+00
  %1741 = fsub fast float 1.000000e+00, %1740
  %1742 = fmul fast float %1741, %1659
  %1743 = fadd fast float %1742, %1740
  %1744 = fmul fast float %1743, %1659
  br label %1745

; <label>:1745                                    ; preds = %1717, %1715, %1702, %1672, %1656
  %1746 = phi float [ %1657, %1656 ], [ %1734, %1717 ], [ %1657, %1715 ], [ %1712, %1702 ], [ %1682, %1672 ]
  %1747 = phi float [ %1658, %1656 ], [ %1739, %1717 ], [ %1658, %1715 ], [ %1713, %1702 ], [ %1683, %1672 ]
  %1748 = phi float [ %1659, %1656 ], [ %1744, %1717 ], [ %1659, %1715 ], [ %1714, %1702 ], [ %1684, %1672 ]
  %1749 = phi float [ %1660, %1656 ], [ %1660, %1717 ], [ %1660, %1715 ], [ %1660, %1702 ], [ %1694, %1672 ]
  %1750 = phi float [ %1661, %1656 ], [ %1661, %1717 ], [ %1661, %1715 ], [ %1661, %1702 ], [ %1695, %1672 ]
  %1751 = phi float [ %1662, %1656 ], [ %1662, %1717 ], [ %1662, %1715 ], [ %1662, %1702 ], [ %1696, %1672 ]
  %1752 = phi float [ %928, %1656 ], [ %928, %1717 ], [ %928, %1715 ], [ %928, %1702 ], [ %1687, %1672 ]
  %1753 = phi float [ %933, %1656 ], [ %933, %1717 ], [ %933, %1715 ], [ %933, %1702 ], [ %1699, %1672 ]
  %1754 = and i32 %1664, 12
  %1755 = icmp eq i32 %1754, 12
  br i1 %1755, label %1862, label %1756

; <label>:1756                                    ; preds = %1745
  %1757 = and i32 %1664, 2097184
  %1758 = icmp eq i32 %1757, 2097184
  %1759 = select i1 %1758, float %1231, float 0.000000e+00
  %1760 = and i32 %1664, 4194336
  %1761 = icmp eq i32 %1760, 4194336
  %1762 = select i1 %1761, float %1231, float 0.000000e+00
  %1763 = and i32 %1664, 8388640
  %1764 = icmp eq i32 %1763, 8388640
  %1765 = select i1 %1764, float %1231, float 0.000000e+00
  %1766 = and i32 %1664, 2048
  %1767 = icmp ne i32 %1766, 0
  %1768 = select i1 %1767, float %1231, float 0.000000e+00
  %1769 = and i32 %1664, 8192
  %1770 = icmp ne i32 %1769, 0
  %1771 = select i1 %1770, float %1231, float 0.000000e+00
  %1772 = icmp eq i32 %1754, 0
  br i1 %1772, label %1773, label %1798

; <label>:1773                                    ; preds = %1756
  %1774 = fsub fast float %1532, %917
  %1775 = fsub fast float %1533, %918
  %1776 = fmul fast float %1759, %1774
  %1777 = fmul fast float %1759, %1775
  %1778 = fadd fast float %1776, %917
  %1779 = fadd fast float %1777, %918
  %1780 = fsub fast float %1534, %931
  %1781 = fmul fast float %1762, %1780
  %1782 = fadd fast float %1781, %931
  %1783 = fsub fast float %1531, %930
  %1784 = fmul fast float %1765, %1783
  %1785 = fadd fast float %1784, %930
  %1786 = fsub fast float %1634, %932
  %1787 = fmul fast float %1768, %1786
  %1788 = fadd fast float %1787, %932
  %1789 = fsub fast float %1631, %925
  %1790 = fsub fast float %1632, %926
  %1791 = fsub fast float %1633, %927
  %1792 = fmul fast float %1771, %1789
  %1793 = fmul fast float %1771, %1790
  %1794 = fmul fast float %1771, %1791
  %1795 = fadd fast float %1792, %925
  %1796 = fadd fast float %1793, %926
  %1797 = fadd fast float %1794, %927
  br label %1862

; <label>:1798                                    ; preds = %1756
  %1799 = icmp eq i32 %1754, 4
  br i1 %1799, label %1800, label %1840

; <label>:1800                                    ; preds = %1798
  %1801 = fmul fast float %1759, %1532
  %1802 = fmul fast float %1759, %1533
  %1803 = fadd fast float %1801, %917
  %1804 = fadd fast float %1802, %918
  %1805 = call float @dx.op.binary.f32(i32 36, float %931, float %1534)  ; FMin(a,b)
  %1806 = fsub fast float %1805, %931
  %1807 = fmul fast float %1806, %1762
  %1808 = fadd fast float %1807, %931
  %1809 = fadd fast float %1531, %930
  %1810 = fmul fast float %1809, 0x3FF337FAE0000000
  %1811 = fmul fast float %930, %930
  %1812 = fmul fast float %1531, %1531
  %1813 = fadd fast float %1812, %1811
  %1814 = fmul fast float %1813, 0x3FE5152B00000000
  %1815 = fmul fast float %930, 0xBFCC1F85E0000000
  %1816 = fmul fast float %1815, %1531
  %1817 = fadd fast float %1816, 0xBFE1363700000000
  %1818 = fadd fast float %1817, %1810
  %1819 = fsub fast float %1818, %1814
  %1820 = fmul fast float %1809, 0x3FBA6F0D00000000
  %1821 = fmul fast float %1813, 0x3FD0432880000000
  %1822 = fmul fast float %930, 0xBFEF110800000000
  %1823 = fmul fast float %1822, %1531
  %1824 = fadd fast float %1823, 1.000000e+00
  %1825 = fsub fast float %1824, %1820
  %1826 = fadd fast float %1825, %1821
  %1827 = fdiv fast float %1819, %1826
  %1828 = call float @dx.op.unary.f32(i32 7, float %1827)  ; Saturate(value)
  %1829 = fsub fast float %1828, %930
  %1830 = fmul fast float %1829, %1765
  %1831 = fadd fast float %1830, %930
  %1832 = fmul fast float %1768, %1634
  %1833 = fadd fast float %1832, %932
  %1834 = fmul fast float %1771, %1631
  %1835 = fmul fast float %1771, %1632
  %1836 = fmul fast float %1771, %1633
  %1837 = fadd fast float %1834, %925
  %1838 = fadd fast float %1835, %926
  %1839 = fadd fast float %1836, %927
  br label %1862

; <label>:1840                                    ; preds = %1798
  %1841 = icmp eq i32 %1754, 8
  br i1 %1841, label %1842, label %1862

; <label>:1842                                    ; preds = %1840
  %1843 = fmul fast float %1759, %1532
  %1844 = fmul fast float %1759, %1533
  %1845 = fadd fast float %1843, %917
  %1846 = fadd fast float %1844, %918
  %1847 = call float @dx.op.binary.f32(i32 36, float %931, float %1534)  ; FMin(a,b)
  %1848 = fsub fast float %1847, %931
  %1849 = fmul fast float %1848, %1762
  %1850 = fadd fast float %1849, %931
  %1851 = fsub fast float %1531, %930
  %1852 = fmul fast float %1765, %1851
  %1853 = fadd fast float %1852, %930
  %1854 = fmul fast float %1768, %1634
  %1855 = fadd fast float %1854, %932
  %1856 = fmul fast float %1771, %1631
  %1857 = fmul fast float %1771, %1632
  %1858 = fmul fast float %1771, %1633
  %1859 = fadd fast float %1856, %925
  %1860 = fadd fast float %1857, %926
  %1861 = fadd fast float %1858, %927
  br label %1862

; <label>:1862                                    ; preds = %1842, %1840, %1800, %1773, %1745, %1230, %934, %916
  %1863 = phi float [ %917, %1745 ], [ %917, %1230 ], [ %917, %916 ], [ %1845, %1842 ], [ %917, %1840 ], [ %1803, %1800 ], [ %1778, %1773 ], [ %917, %934 ]
  %1864 = phi float [ %918, %1745 ], [ %918, %1230 ], [ %918, %916 ], [ %1846, %1842 ], [ %918, %1840 ], [ %1804, %1800 ], [ %1779, %1773 ], [ %918, %934 ]
  %1865 = phi float [ %1746, %1745 ], [ %919, %1230 ], [ %919, %916 ], [ %1746, %1842 ], [ %1746, %1840 ], [ %1746, %1800 ], [ %1746, %1773 ], [ %919, %934 ]
  %1866 = phi float [ %1747, %1745 ], [ %920, %1230 ], [ %920, %916 ], [ %1747, %1842 ], [ %1747, %1840 ], [ %1747, %1800 ], [ %1747, %1773 ], [ %920, %934 ]
  %1867 = phi float [ %1748, %1745 ], [ %921, %1230 ], [ %921, %916 ], [ %1748, %1842 ], [ %1748, %1840 ], [ %1748, %1800 ], [ %1748, %1773 ], [ %921, %934 ]
  %1868 = phi float [ %1749, %1745 ], [ %922, %1230 ], [ %922, %916 ], [ %1749, %1842 ], [ %1749, %1840 ], [ %1749, %1800 ], [ %1749, %1773 ], [ %922, %934 ]
  %1869 = phi float [ %1750, %1745 ], [ %923, %1230 ], [ %923, %916 ], [ %1750, %1842 ], [ %1750, %1840 ], [ %1750, %1800 ], [ %1750, %1773 ], [ %923, %934 ]
  %1870 = phi float [ %1751, %1745 ], [ %924, %1230 ], [ %924, %916 ], [ %1751, %1842 ], [ %1751, %1840 ], [ %1751, %1800 ], [ %1751, %1773 ], [ %924, %934 ]
  %1871 = phi float [ %925, %1745 ], [ %925, %1230 ], [ %925, %916 ], [ %1859, %1842 ], [ %925, %1840 ], [ %1837, %1800 ], [ %1795, %1773 ], [ %925, %934 ]
  %1872 = phi float [ %926, %1745 ], [ %926, %1230 ], [ %926, %916 ], [ %1860, %1842 ], [ %926, %1840 ], [ %1838, %1800 ], [ %1796, %1773 ], [ %926, %934 ]
  %1873 = phi float [ %927, %1745 ], [ %927, %1230 ], [ %927, %916 ], [ %1861, %1842 ], [ %927, %1840 ], [ %1839, %1800 ], [ %1797, %1773 ], [ %927, %934 ]
  %1874 = phi float [ %1752, %1745 ], [ %928, %1230 ], [ %928, %916 ], [ %1752, %1842 ], [ %1752, %1840 ], [ %1752, %1800 ], [ %1752, %1773 ], [ %928, %934 ]
  %1875 = phi float [ %930, %1745 ], [ %930, %1230 ], [ %930, %916 ], [ %1853, %1842 ], [ %930, %1840 ], [ %1831, %1800 ], [ %1785, %1773 ], [ %930, %934 ]
  %1876 = phi float [ %931, %1745 ], [ %931, %1230 ], [ %931, %916 ], [ %1850, %1842 ], [ %931, %1840 ], [ %1808, %1800 ], [ %1782, %1773 ], [ %931, %934 ]
  %1877 = phi float [ %932, %1745 ], [ %932, %1230 ], [ %932, %916 ], [ %1855, %1842 ], [ %932, %1840 ], [ %1833, %1800 ], [ %1788, %1773 ], [ %932, %934 ]
  %1878 = phi float [ %1753, %1745 ], [ %933, %1230 ], [ %933, %916 ], [ %1753, %1842 ], [ %1753, %1840 ], [ %1753, %1800 ], [ %1753, %1773 ], [ %933, %934 ]
  br i1 %343, label %2807, label %1879

; <label>:1879                                    ; preds = %1862
  %1880 = icmp ult i32 %396, 3
  %1881 = add i32 %30, 56
  %1882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1883 = extractvalue %dx.types.ResRet.i32 %1882, 0
  %1884 = add i32 %30, 60
  %1885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.i32 %1885, 0
  %1887 = or i32 %1886, %1883
  %1888 = icmp eq i32 %1887, 0
  br i1 %1888, label %2807, label %1889

; <label>:1889                                    ; preds = %1879
  %1890 = and i32 %1883, 262144
  %1891 = icmp ne i32 %1890, 0
  %1892 = select i1 %1891, float %32, float 1.000000e+00
  %1893 = select i1 %1891, float %33, float 0.000000e+00
  %1894 = select i1 %1891, float %34, float 0.000000e+00
  %1895 = select i1 %1891, float %35, float 1.000000e+00
  %1896 = select i1 %1891, float %36, float %57
  %1897 = select i1 %1891, float %37, float %58
  %1898 = add i32 %30, 316
  %1899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1898, i32 undef)  ; BufferLoad(srv,index,wot)
  %1900 = extractvalue %dx.types.ResRet.i32 %1899, 0
  %1901 = lshr i32 %1900, 16
  %1902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1901)  ; LegacyF16ToF32(value)
  %1903 = fmul fast float %1902, 0x3F50624DE0000000
  %1904 = add i32 %30, 120
  %1905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.i32 %1905, 0
  %1907 = lshr i32 %1906, 16
  %1908 = and i32 %1907, 255
  %1909 = lshr i32 %1906, 24
  %1910 = add i32 %30, 324
  %1911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.i32 %1911, 0
  %1913 = and i32 %1912, 65535
  %1914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1913)  ; LegacyF16ToF32(value)
  %1915 = lshr i32 %1912, 16
  %1916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1915)  ; LegacyF16ToF32(value)
  %1917 = add i32 %30, 64
  %1918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.i32 %1918, 0
  %1920 = lshr i32 %1919, 22
  %1921 = shl nuw nsw i32 %1920, 5
  %1922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1921)  ; LegacyF16ToF32(value)
  %1923 = shl i32 %1919, 4
  %1924 = and i32 %1923, 32752
  %1925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1924)  ; LegacyF16ToF32(value)
  %1926 = lshr i32 %1919, 7
  %1927 = and i32 %1926, 32752
  %1928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1927)  ; LegacyF16ToF32(value)
  %1929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1930 = extractvalue %dx.types.CBufRet.f32 %1929, 3
  %1931 = fmul fast float %1930, 1.000000e+03
  %1932 = fmul fast float %293, %1931
  %1933 = call float @dx.op.unary.f32(i32 22, float %1932)  ; Frc(value)
  %1934 = fadd fast float %1933, %283
  %1935 = fmul fast float %294, %1931
  %1936 = call float @dx.op.unary.f32(i32 22, float %1935)  ; Frc(value)
  %1937 = fadd fast float %1936, %285
  %1938 = fmul fast float %1903, %1931
  %1939 = call float @dx.op.unary.f32(i32 22, float %1938)  ; Frc(value)
  %1940 = fmul fast float %1939, 0x401921FB60000000
  %1941 = fadd fast float %1940, %1922
  %1942 = call float @dx.op.unary.f32(i32 13, float %1941)  ; Sin(value)
  %1943 = call float @dx.op.unary.f32(i32 12, float %1941)  ; Cos(value)
  %1944 = fsub fast float -0.000000e+00, %1942
  %1945 = fadd fast float %1896, -5.000000e-01
  %1946 = fadd fast float %1897, -5.000000e-01
  %1947 = fmul fast float %1914, %1945
  %1948 = fmul fast float %1916, %1946
  %1949 = fadd fast float %1947, 5.000000e-01
  %1950 = fadd fast float %1948, 5.000000e-01
  %1951 = fmul fast float %1925, %1949
  %1952 = fmul fast float %1928, %1950
  %1953 = fmul fast float %1943, %1951
  %1954 = call float @dx.op.tertiary.f32(i32 46, float %1944, float %1952, float %1953)  ; FMad(a,b,c)
  %1955 = fmul fast float %1942, %1951
  %1956 = call float @dx.op.tertiary.f32(i32 46, float %1943, float %1952, float %1955)  ; FMad(a,b,c)
  %1957 = fadd fast float %1934, %1954
  %1958 = fadd fast float %1937, %1956
  %1959 = icmp ugt i32 %1908, 1
  %1960 = icmp ugt i32 %1906, 33554431
  %1961 = or i1 %1960, %1959
  br i1 %1961, label %1962, label %1987

; <label>:1962                                    ; preds = %1889
  %1963 = add i32 %30, 260
  %1964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.i32 %1964, 0
  %1966 = lshr i32 %1965, 16
  %1967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1966)  ; LegacyF16ToF32(value)
  %1968 = fmul fast float %1930, %1967
  %1969 = call float @dx.op.unary.f32(i32 22, float %1968)  ; Frc(value)
  %1970 = mul nuw nsw i32 %1908, %1909
  %1971 = uitofp i32 %1970 to float
  %1972 = fmul fast float %1969, %1971
  %1973 = call float @dx.op.unary.f32(i32 27, float %1972)  ; Round_ni(value)
  %1974 = fptoui float %1973 to i32
  %1975 = urem i32 %1974, %1908
  %1976 = udiv i32 %1974, %1909
  %1977 = call float @dx.op.unary.f32(i32 22, float %1957)  ; Frc(value)
  %1978 = call float @dx.op.unary.f32(i32 22, float %1958)  ; Frc(value)
  %1979 = uitofp i32 %1975 to float
  %1980 = uitofp i32 %1976 to float
  %1981 = fadd fast float %1977, %1979
  %1982 = fadd fast float %1978, %1980
  %1983 = uitofp i32 %1908 to float
  %1984 = uitofp i32 %1909 to float
  %1985 = fdiv fast float %1981, %1983
  %1986 = fdiv fast float %1982, %1984
  br label %1987

; <label>:1987                                    ; preds = %1962, %1889
  %1988 = phi float [ %1985, %1962 ], [ %1957, %1889 ]
  %1989 = phi float [ %1986, %1962 ], [ %1958, %1889 ]
  %1990 = and i32 %1883, 16777216
  %1991 = icmp eq i32 %1990, 0
  br i1 %1991, label %2101, label %1992

; <label>:1992                                    ; preds = %1987
  %1993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1994 = extractvalue %dx.types.CBufRet.f32 %1993, 0
  %1995 = extractvalue %dx.types.CBufRet.f32 %1993, 1
  %1996 = extractvalue %dx.types.CBufRet.f32 %1993, 2
  %1997 = fadd fast float %1994, %124
  %1998 = fadd fast float %1995, %125
  %1999 = fadd fast float %1996, %126
  %2000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2001 = extractvalue %dx.types.CBufRet.f32 %2000, 0
  %2002 = call float @dx.op.unary.f32(i32 7, float %2001)  ; Saturate(value)
  %2003 = icmp eq i32 %31, 65535
  br i1 %2003, label %2098, label %2004

; <label>:2004                                    ; preds = %1992
  %2005 = lshr i32 %31, 1
  %2006 = shl i32 %2005, 2
  %2007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2008 = extractvalue %dx.types.ResRet.i32 %2007, 0
  %2009 = and i32 %31, 1
  %2010 = icmp ne i32 %2009, 0
  %2011 = lshr i32 %2008, 16
  %2012 = and i32 %2008, 65535
  %2013 = select i1 %2010, i32 %2011, i32 %2012
  %2014 = icmp eq i32 %2013, 65535
  br i1 %2014, label %2094, label %2015

; <label>:2015                                    ; preds = %2004
  %2016 = mul nuw nsw i32 %2013, 40
  %2017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.f32 %2017, 0
  %2019 = extractvalue %dx.types.ResRet.f32 %2017, 1
  %2020 = extractvalue %dx.types.ResRet.f32 %2017, 2
  %2021 = add nuw nsw i32 %2016, 12
  %2022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2021, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.f32 %2022, 0
  %2024 = extractvalue %dx.types.ResRet.f32 %2022, 1
  %2025 = extractvalue %dx.types.ResRet.f32 %2022, 2
  %2026 = add nuw nsw i32 %2016, 24
  %2027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2026, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.f32 %2027, 0
  %2029 = extractvalue %dx.types.ResRet.f32 %2027, 1
  %2030 = extractvalue %dx.types.ResRet.f32 %2027, 2
  %2031 = add nuw nsw i32 %2016, 36
  %2032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.f32 %2032, 0
  %2034 = fsub fast float %1997, %2018
  %2035 = fsub fast float %1998, %2019
  %2036 = fsub fast float %1999, %2020
  %2037 = fmul fast float %2033, %2034
  %2038 = fmul fast float %2033, %2035
  %2039 = fmul fast float %2033, %2036
  %2040 = call float @dx.op.unary.f32(i32 27, float %2037)  ; Round_ni(value)
  %2041 = call float @dx.op.unary.f32(i32 27, float %2038)  ; Round_ni(value)
  %2042 = call float @dx.op.unary.f32(i32 27, float %2039)  ; Round_ni(value)
  %2043 = fadd fast float %2040, 5.000000e-01
  %2044 = fadd fast float %2041, 5.000000e-01
  %2045 = fadd fast float %2042, 5.000000e-01
  %2046 = fmul fast float %2043, %2023
  %2047 = fmul fast float %2044, %2024
  %2048 = fmul fast float %2045, %2025
  %2049 = shl i32 %31, 2
  %2050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2049, i32 undef)  ; BufferLoad(srv,index,wot)
  %2051 = extractvalue %dx.types.ResRet.i32 %2050, 0
  %2052 = add i32 %2051, 0
  %2053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2052, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2054 = call float @dx.op.unary.f32(i32 22, float %2046)  ; Frc(value)
  %2055 = call float @dx.op.unary.f32(i32 22, float %2047)  ; Frc(value)
  %2056 = call float @dx.op.unary.f32(i32 22, float %2048)  ; Frc(value)
  %2057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2053, %dx.types.Handle %27, float %2054, float %2055, float %2056, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2058 = extractvalue %dx.types.ResRet.f32 %2057, 0
  %2059 = extractvalue %dx.types.ResRet.f32 %2057, 1
  %2060 = extractvalue %dx.types.ResRet.f32 %2057, 2
  %2061 = fmul fast float %2058, 1.023000e+03
  %2062 = fmul fast float %2059, 1.023000e+03
  %2063 = fmul fast float %2060, 1.023000e+03
  %2064 = fadd fast float %2061, 5.000000e-01
  %2065 = fadd fast float %2062, 5.000000e-01
  %2066 = fadd fast float %2063, 5.000000e-01
  %2067 = call float @dx.op.unary.f32(i32 27, float %2064)  ; Round_ni(value)
  %2068 = call float @dx.op.unary.f32(i32 27, float %2065)  ; Round_ni(value)
  %2069 = call float @dx.op.unary.f32(i32 27, float %2066)  ; Round_ni(value)
  %2070 = fsub fast float %2037, %2040
  %2071 = fsub fast float %2038, %2041
  %2072 = fsub fast float %2039, %2042
  %2073 = fmul fast float %2070, 7.500000e-01
  %2074 = fmul fast float %2071, 7.500000e-01
  %2075 = fmul fast float %2072, 7.500000e-01
  %2076 = fadd fast float %2040, 1.250000e-01
  %2077 = fadd fast float %2076, %2073
  %2078 = fadd fast float %2077, %2067
  %2079 = fadd fast float %2041, 1.250000e-01
  %2080 = fadd fast float %2079, %2074
  %2081 = fadd fast float %2080, %2068
  %2082 = fadd fast float %2042, 1.250000e-01
  %2083 = fadd fast float %2082, %2075
  %2084 = fadd fast float %2083, %2069
  %2085 = fmul fast float %2078, %2028
  %2086 = fmul fast float %2081, %2029
  %2087 = fmul fast float %2084, %2030
  %2088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2049, i32 undef)  ; BufferLoad(srv,index,wot)
  %2089 = extractvalue %dx.types.ResRet.i32 %2088, 0
  %2090 = add i32 %2089, 0
  %2091 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2090, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2091, %dx.types.Handle %25, float %2085, float %2086, float %2087, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2093 = extractvalue %dx.types.ResRet.f32 %2092, 0
  br label %2094

; <label>:2094                                    ; preds = %2015, %2004
  %2095 = phi float [ %2093, %2015 ], [ -1.000000e+00, %2004 ]
  %2096 = fadd fast float %2095, %2002
  %2097 = call float @dx.op.unary.f32(i32 7, float %2096)  ; Saturate(value)
  br label %2098

; <label>:2098                                    ; preds = %2094, %1992
  %2099 = phi float [ %2097, %2094 ], [ %2002, %1992 ]
  %2100 = fmul fast float %2099, %392
  br label %2101

; <label>:2101                                    ; preds = %2098, %1987
  %2102 = phi float [ %2100, %2098 ], [ %392, %1987 ]
  %2103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.i32 %2103, 0
  %2105 = and i32 %2104, 256
  %2106 = icmp eq i32 %2105, 0
  br i1 %2106, label %2153, label %2107

; <label>:2107                                    ; preds = %2101
  %2108 = add i32 %30, 432
  %2109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2110 = extractvalue %dx.types.ResRet.i32 %2109, 0
  %2111 = add i32 %2110, 0
  %2112 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2111, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2113 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2112, %dx.types.Handle %66, float %1988, float %1989, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2114 = extractvalue %dx.types.ResRet.f32 %2113, 0
  %2115 = add i32 %30, 132
  %2116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2115, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.i32 %2116, 0
  %2118 = shl i32 %2117, 4
  %2119 = and i32 %2118, 32752
  %2120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2119)  ; LegacyF16ToF32(value)
  %2121 = lshr i32 %2117, 7
  %2122 = and i32 %2121, 32752
  %2123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2122)  ; LegacyF16ToF32(value)
  %2124 = fsub fast float 1.000000e+00, %2102
  %2125 = call float @dx.op.binary.f32(i32 35, float %2124, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2126 = bitcast float %2102 to i32
  %2127 = sitofp i32 %2126 to float
  %2128 = fadd fast float %2127, 0xC1CFBF8940000000
  %2129 = fmul fast float %2123, %2128
  %2130 = fadd fast float %2129, 0x41CFBF8940000000
  %2131 = fptosi float %2130 to i32
  %2132 = bitcast i32 %2131 to float
  %2133 = bitcast float %2125 to i32
  %2134 = sitofp i32 %2133 to float
  %2135 = fadd fast float %2134, 0xC1CFBF8940000000
  %2136 = fmul fast float %2135, %2123
  %2137 = fadd fast float %2136, 0x41CFBF8940000000
  %2138 = fptosi float %2137 to i32
  %2139 = bitcast i32 %2138 to float
  %2140 = fmul fast float %2132, %2120
  %2141 = fmul fast float %2139, %2120
  %2142 = fsub fast float %2125, %2140
  %2143 = fadd fast float %2141, %2125
  %2144 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2145 = call float @dx.op.unary.f32(i32 7, float %2143)  ; Saturate(value)
  %2146 = fsub fast float %2114, %2144
  %2147 = fsub fast float %2145, %2144
  %2148 = bitcast float %2147 to i32
  %2149 = sub nsw i32 2129859010, %2148
  %2150 = bitcast i32 %2149 to float
  %2151 = fmul fast float %2150, %2146
  %2152 = call float @dx.op.unary.f32(i32 7, float %2151)  ; Saturate(value)
  br label %2153

; <label>:2153                                    ; preds = %2107, %2101
  %2154 = phi float [ %2152, %2107 ], [ %2102, %2101 ]
  %2155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.i32 %2155, 0
  %2157 = and i32 %2156, 128
  %2158 = icmp eq i32 %2157, 0
  br i1 %2158, label %2175, label %2159

; <label>:2159                                    ; preds = %2153
  %2160 = add i32 %30, 416
  %2161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2162 = extractvalue %dx.types.ResRet.i32 %2161, 0
  %2163 = add i32 %2162, 0
  %2164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2163, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2165 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2164, %dx.types.Handle %66, float %1988, float %1989, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2166 = extractvalue %dx.types.ResRet.f32 %2165, 0
  %2167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2168 = extractvalue %dx.types.ResRet.i32 %2167, 0
  %2169 = and i32 %2168, 524288
  %2170 = icmp ne i32 %2169, 0
  %2171 = fcmp fast ogt float %2166, 0x3FE0101020000000
  %2172 = select i1 %2171, float 1.000000e+00, float 0.000000e+00
  %2173 = select i1 %2170, float %2172, float %2166
  %2174 = fmul fast float %2173, %2154
  br label %2175

; <label>:2175                                    ; preds = %2159, %2153
  %2176 = phi float [ %2174, %2159 ], [ %2154, %2153 ]
  %2177 = fcmp fast ult float %2176, 0x3F70101020000000
  br i1 %2177, label %2807, label %2178

; <label>:2178                                    ; preds = %2175
  %2179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.i32 %2179, 0
  %2181 = and i32 %2180, 16
  %2182 = icmp eq i32 %2181, 0
  br i1 %2182, label %2381, label %2183

; <label>:2183                                    ; preds = %2178
  %2184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %2185 = extractvalue %dx.types.ResRet.i32 %2184, 0
  %2186 = add i32 %30, 368
  %2187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2186, i32 undef)  ; BufferLoad(srv,index,wot)
  %2188 = extractvalue %dx.types.ResRet.i32 %2187, 0
  %2189 = add i32 %2188, 0
  %2190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2189, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2191 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2190, %dx.types.Handle %65, float %1988, float %1989, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2192 = extractvalue %dx.types.ResRet.f32 %2191, 0
  %2193 = extractvalue %dx.types.ResRet.f32 %2191, 1
  %2194 = extractvalue %dx.types.ResRet.f32 %2191, 2
  %2195 = extractvalue %dx.types.ResRet.f32 %2191, 3
  %2196 = and i32 %2185, 255
  %2197 = uitofp i32 %2196 to float
  %2198 = lshr i32 %2185, 8
  %2199 = and i32 %2198, 255
  %2200 = uitofp i32 %2199 to float
  %2201 = fmul fast float %2195, %2197
  %2202 = fadd fast float %2201, %2200
  %2203 = fmul fast float %2202, 0x3F70101000000000
  %2204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2205 = extractvalue %dx.types.ResRet.i32 %2204, 0
  %2206 = and i32 %2205, 512
  %2207 = icmp eq i32 %2206, 0
  br i1 %2207, label %2216, label %2208

; <label>:2208                                    ; preds = %2183
  %2209 = add i32 %30, 448
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2209, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = add i32 %2211, 0
  %2213 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2212, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2214 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2213, %dx.types.Handle %66, float %1988, float %1989, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2215 = extractvalue %dx.types.ResRet.f32 %2214, 0
  br label %2216

; <label>:2216                                    ; preds = %2208, %2183
  %2217 = phi float [ %2215, %2208 ], [ 1.000000e+00, %2183 ]
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = and i32 %2219, 33554432
  %2221 = icmp eq i32 %2220, 0
  br i1 %2221, label %2328, label %2222

; <label>:2222                                    ; preds = %2216
  %2223 = add i32 %30, 256
  %2224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2225 = extractvalue %dx.types.ResRet.i32 %2224, 0
  %2226 = and i32 %2225, 65535
  %2227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2226)  ; LegacyF16ToF32(value)
  %2228 = lshr i32 %2225, 16
  %2229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2228)  ; LegacyF16ToF32(value)
  %2230 = add i32 %30, 260
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = and i32 %2232, 65535
  %2234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2233)  ; LegacyF16ToF32(value)
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = lshr i32 %2236, 24
  %2238 = uitofp i32 %2237 to float
  %2239 = fmul fast float %2238, 0x3F70101020000000
  %2240 = and i32 %2236, 255
  %2241 = uitofp i32 %2240 to float
  %2242 = fmul fast float %2241, 0x3F70101020000000
  %2243 = lshr i32 %2236, 8
  %2244 = and i32 %2243, 255
  %2245 = uitofp i32 %2244 to float
  %2246 = fmul fast float %2245, 0x3F70101020000000
  %2247 = lshr i32 %2236, 16
  %2248 = and i32 %2247, 255
  %2249 = uitofp i32 %2248 to float
  %2250 = fmul fast float %2249, 0x3F70101020000000
  %2251 = add i32 %30, 252
  %2252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2251, i32 undef)  ; BufferLoad(srv,index,wot)
  %2253 = extractvalue %dx.types.ResRet.i32 %2252, 0
  %2254 = lshr i32 %2253, 24
  %2255 = uitofp i32 %2254 to float
  %2256 = fmul fast float %2255, 0x3F70101020000000
  %2257 = and i32 %2253, 255
  %2258 = uitofp i32 %2257 to float
  %2259 = fmul fast float %2258, 0x3F70101020000000
  %2260 = lshr i32 %2253, 8
  %2261 = and i32 %2260, 255
  %2262 = uitofp i32 %2261 to float
  %2263 = fmul fast float %2262, 0x3F70101020000000
  %2264 = lshr i32 %2253, 16
  %2265 = and i32 %2264, 255
  %2266 = uitofp i32 %2265 to float
  %2267 = fmul fast float %2266, 0x3F70101020000000
  %2268 = bitcast float %2192 to i32
  %2269 = ashr i32 %2268, 1
  %2270 = sub nsw i32 1597463174, %2269
  %2271 = bitcast i32 %2270 to float
  %2272 = fmul fast float %2192, 5.000000e-01
  %2273 = fmul fast float %2271, %2271
  %2274 = fmul fast float %2273, %2272
  %2275 = fsub fast float 1.500000e+00, %2274
  %2276 = fmul fast float %2271, %2192
  %2277 = fmul fast float %2276, %2275
  %2278 = bitcast float %2193 to i32
  %2279 = ashr i32 %2278, 1
  %2280 = sub nsw i32 1597463174, %2279
  %2281 = bitcast i32 %2280 to float
  %2282 = fmul fast float %2193, 5.000000e-01
  %2283 = fmul fast float %2281, %2281
  %2284 = fmul fast float %2283, %2282
  %2285 = fsub fast float 1.500000e+00, %2284
  %2286 = fmul fast float %2281, %2193
  %2287 = fmul fast float %2286, %2285
  %2288 = bitcast float %2194 to i32
  %2289 = ashr i32 %2288, 1
  %2290 = sub nsw i32 1597463174, %2289
  %2291 = bitcast i32 %2290 to float
  %2292 = fmul fast float %2194, 5.000000e-01
  %2293 = fmul fast float %2291, %2291
  %2294 = fmul fast float %2293, %2292
  %2295 = fsub fast float 1.500000e+00, %2294
  %2296 = fmul fast float %2291, %2194
  %2297 = fmul fast float %2296, %2295
  %2298 = fsub fast float %2277, %2259
  %2299 = fsub fast float %2287, %2263
  %2300 = fsub fast float %2297, %2267
  %2301 = fmul fast float %2298, %2227
  %2302 = fmul fast float %2299, %2229
  %2303 = fmul fast float %2300, %2234
  %2304 = fadd fast float %2301, %2242
  %2305 = fadd fast float %2302, %2246
  %2306 = fadd fast float %2303, %2250
  %2307 = call float @dx.op.unary.f32(i32 7, float %2304)  ; Saturate(value)
  %2308 = call float @dx.op.unary.f32(i32 7, float %2305)  ; Saturate(value)
  %2309 = call float @dx.op.unary.f32(i32 7, float %2306)  ; Saturate(value)
  %2310 = fmul fast float %2307, %2307
  %2311 = fmul fast float %2308, %2308
  %2312 = fmul fast float %2309, %2309
  %2313 = fsub fast float %2310, %2192
  %2314 = fsub fast float %2311, %2193
  %2315 = fsub fast float %2312, %2194
  %2316 = fmul fast float %2313, %2217
  %2317 = fmul fast float %2314, %2217
  %2318 = fmul fast float %2315, %2217
  %2319 = fadd fast float %2316, %2192
  %2320 = fadd fast float %2317, %2193
  %2321 = fadd fast float %2318, %2194
  %2322 = fadd fast float %2239, %2203
  %2323 = fsub fast float %2322, %2256
  %2324 = call float @dx.op.unary.f32(i32 7, float %2323)  ; Saturate(value)
  %2325 = fsub fast float %2324, %2203
  %2326 = fmul fast float %2325, %2217
  %2327 = fadd fast float %2326, %2203
  br label %2381

; <label>:2328                                    ; preds = %2216
  %2329 = and i32 %2219, 134217728
  %2330 = icmp eq i32 %2329, 0
  br i1 %2330, label %2365, label %2331

; <label>:2331                                    ; preds = %2328
  %2332 = call float @dx.op.unary.f32(i32 24, float %270)  ; Sqrt(value)
  %2333 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %2334 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %2335 = fadd fast float %2332, -5.000000e-01
  %2336 = fadd fast float %2333, -5.000000e-01
  %2337 = fadd fast float %2334, -5.000000e-01
  %2338 = fmul fast float %2335, %2217
  %2339 = fmul fast float %2336, %2217
  %2340 = fmul fast float %2337, %2217
  %2341 = fadd fast float %2338, 5.000000e-01
  %2342 = fadd fast float %2339, 5.000000e-01
  %2343 = fadd fast float %2340, 5.000000e-01
  %2344 = call float @dx.op.unary.f32(i32 24, float %2192)  ; Sqrt(value)
  %2345 = call float @dx.op.unary.f32(i32 24, float %2193)  ; Sqrt(value)
  %2346 = call float @dx.op.unary.f32(i32 24, float %2194)  ; Sqrt(value)
  %2347 = fmul fast float %2341, 2.000000e+00
  %2348 = fsub fast float 1.000000e+00, %2347
  %2349 = fmul fast float %2348, %2344
  %2350 = fadd fast float %2349, %2347
  %2351 = fmul fast float %2350, %2344
  %2352 = fmul fast float %2342, 2.000000e+00
  %2353 = fsub fast float 1.000000e+00, %2352
  %2354 = fmul fast float %2353, %2345
  %2355 = fadd fast float %2354, %2352
  %2356 = fmul fast float %2355, %2345
  %2357 = fmul fast float %2343, 2.000000e+00
  %2358 = fsub fast float 1.000000e+00, %2357
  %2359 = fmul fast float %2358, %2346
  %2360 = fadd fast float %2359, %2357
  %2361 = fmul fast float %2360, %2346
  %2362 = fmul fast float %2351, %2351
  %2363 = fmul fast float %2356, %2356
  %2364 = fmul fast float %2361, %2361
  br label %2381

; <label>:2365                                    ; preds = %2328
  %2366 = fmul fast float %270, %270
  %2367 = fmul fast float %274, %274
  %2368 = fmul fast float %278, %278
  %2369 = fadd fast float %2366, -1.000000e+00
  %2370 = fadd fast float %2367, -1.000000e+00
  %2371 = fadd fast float %2368, -1.000000e+00
  %2372 = fmul fast float %2217, %2369
  %2373 = fmul fast float %2217, %2370
  %2374 = fmul fast float %2217, %2371
  %2375 = fadd fast float %2372, 1.000000e+00
  %2376 = fadd fast float %2373, 1.000000e+00
  %2377 = fadd fast float %2374, 1.000000e+00
  %2378 = fmul fast float %2375, %2192
  %2379 = fmul fast float %2376, %2193
  %2380 = fmul fast float %2377, %2194
  br label %2381

; <label>:2381                                    ; preds = %2365, %2331, %2222, %2178
  %2382 = phi float [ %2327, %2222 ], [ %2203, %2331 ], [ %2203, %2365 ], [ 0x3FA23C0BE0000000, %2178 ]
  %2383 = phi float [ %2319, %2222 ], [ %2362, %2331 ], [ %2378, %2365 ], [ 1.000000e+00, %2178 ]
  %2384 = phi float [ %2320, %2222 ], [ %2363, %2331 ], [ %2379, %2365 ], [ 1.000000e+00, %2178 ]
  %2385 = phi float [ %2321, %2222 ], [ %2364, %2331 ], [ %2380, %2365 ], [ 1.000000e+00, %2178 ]
  %2386 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2387 = extractvalue %dx.types.CBufRet.i32 %2386, 1
  %2388 = and i32 %2387, 1
  %2389 = icmp ne i32 %2388, 0
  %2390 = add i32 %30, 356
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = and i32 %2392, 32
  %2394 = icmp ne i32 %2393, 0
  %2395 = and i1 %2389, %2394
  %2396 = select i1 %2395, float 1.000000e+00, float %2383
  %2397 = select i1 %2395, float 0x3FD3333340000000, float %2384
  %2398 = select i1 %2395, float 0x3FD3333340000000, float %2385
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = and i32 %2400, 32
  %2402 = icmp eq i32 %2401, 0
  br i1 %2402, label %2475, label %2403

; <label>:2403                                    ; preds = %2381
  %2404 = add i32 %30, 124
  %2405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2404, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.i32 %2405, 0
  %2407 = add i32 %30, 384
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2407, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = add i32 %2409, 0
  %2411 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2410, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2412 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2411, %dx.types.Handle %65, float %1988, float %1989, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2413 = extractvalue %dx.types.ResRet.f32 %2412, 0
  %2414 = extractvalue %dx.types.ResRet.f32 %2412, 1
  %2415 = extractvalue %dx.types.ResRet.f32 %2412, 2
  %2416 = extractvalue %dx.types.ResRet.f32 %2412, 3
  %2417 = and i32 %2406, 255
  %2418 = uitofp i32 %2417 to float
  %2419 = lshr i32 %2406, 8
  %2420 = and i32 %2419, 255
  %2421 = uitofp i32 %2420 to float
  %2422 = lshr i32 %2406, 16
  %2423 = and i32 %2422, 255
  %2424 = uitofp i32 %2423 to float
  %2425 = fmul fast float %2424, 0x3F70101000000000
  %2426 = fmul fast float %2413, %2418
  %2427 = fadd fast float %2426, %2421
  %2428 = fmul fast float %2427, 0x3F70101000000000
  %2429 = fadd fast float %2414, -5.000000e-01
  %2430 = fadd fast float %2416, -5.000000e-01
  %2431 = fmul fast float %2429, %2425
  %2432 = fmul fast float %2430, %2425
  %2433 = fadd fast float %2431, 5.000000e-01
  %2434 = fadd fast float %2432, 5.000000e-01
  %2435 = fmul fast float %2433, 2.000000e+00
  %2436 = fadd fast float %2435, -1.000000e+00
  %2437 = fmul fast float %2434, 2.000000e+00
  %2438 = fadd fast float %2437, -1.000000e+00
  %2439 = fadd fast float %2436, %2438
  %2440 = fmul fast float %2439, 5.000000e-01
  %2441 = fsub fast float %2436, %2438
  %2442 = fmul fast float %2441, 5.000000e-01
  %2443 = call float @dx.op.unary.f32(i32 6, float %2440)  ; FAbs(value)
  %2444 = fsub fast float 1.000000e+00, %2443
  %2445 = call float @dx.op.unary.f32(i32 6, float %2442)  ; FAbs(value)
  %2446 = fsub fast float %2444, %2445
  %2447 = call float @dx.op.dot3.f32(i32 55, float %2440, float %2442, float %2446, float %2440, float %2442, float %2446)  ; Dot3(ax,ay,az,bx,by,bz)
  %2448 = call float @dx.op.unary.f32(i32 25, float %2447)  ; Rsqrt(value)
  %2449 = fmul fast float %2440, %2448
  %2450 = fmul fast float %2442, %2448
  %2451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2452 = extractvalue %dx.types.ResRet.i32 %2451, 0
  %2453 = and i32 %2452, 67108864
  %2454 = icmp eq i32 %2453, 0
  br i1 %2454, label %2471, label %2455

; <label>:2455                                    ; preds = %2403
  %2456 = add i32 %30, 312
  %2457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2456, i32 undef)  ; BufferLoad(srv,index,wot)
  %2458 = extractvalue %dx.types.ResRet.i32 %2457, 0
  %2459 = and i32 %2458, 65535
  %2460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2459)  ; LegacyF16ToF32(value)
  %2461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1898, i32 undef)  ; BufferLoad(srv,index,wot)
  %2462 = extractvalue %dx.types.ResRet.i32 %2461, 0
  %2463 = and i32 %2462, 65535
  %2464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2463)  ; LegacyF16ToF32(value)
  %2465 = lshr i32 %2458, 16
  %2466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2465)  ; LegacyF16ToF32(value)
  %2467 = fsub fast float %2428, %2466
  %2468 = fmul fast float %2467, %2460
  %2469 = fadd fast float %2468, %2464
  %2470 = call float @dx.op.unary.f32(i32 7, float %2469)  ; Saturate(value)
  br label %2471

; <label>:2471                                    ; preds = %2455, %2403
  %2472 = phi float [ %2470, %2455 ], [ %2428, %2403 ]
  %2473 = call float @dx.op.dot2.f32(i32 54, float %2449, float %2450, float %1892, float %1893)  ; Dot2(ax,ay,bx,by)
  %2474 = call float @dx.op.dot2.f32(i32 54, float %2449, float %2450, float %1894, float %1895)  ; Dot2(ax,ay,bx,by)
  br label %2475

; <label>:2475                                    ; preds = %2471, %2381
  %2476 = phi float [ %2472, %2471 ], [ 0x3FD6666660000000, %2381 ]
  %2477 = phi float [ %2473, %2471 ], [ 0.000000e+00, %2381 ]
  %2478 = phi float [ %2474, %2471 ], [ 0.000000e+00, %2381 ]
  %2479 = phi float [ %2415, %2471 ], [ 1.000000e+00, %2381 ]
  %2480 = add i32 %30, 192
  %2481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2480, i32 undef)  ; BufferLoad(srv,index,wot)
  %2482 = extractvalue %dx.types.ResRet.i32 %2481, 0
  %2483 = lshr i32 %2482, 22
  %2484 = shl nuw nsw i32 %2483, 5
  %2485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2484)  ; LegacyF16ToF32(value)
  %2486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.i32 %2486, 0
  %2488 = and i32 %2487, 64
  %2489 = icmp eq i32 %2488, 0
  br i1 %2489, label %2523, label %2490

; <label>:2490                                    ; preds = %2475
  %2491 = add i32 %30, 400
  %2492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2491, i32 undef)  ; BufferLoad(srv,index,wot)
  %2493 = extractvalue %dx.types.ResRet.i32 %2492, 0
  %2494 = add i32 %2493, 0
  %2495 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2494, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2497 = extractvalue %dx.types.ResRet.i32 %2496, 0
  %2498 = and i32 %2497, 131072
  %2499 = icmp eq i32 %2498, 0
  %2500 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2495, %dx.types.Handle %65, float %1988, float %1989, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2501 = extractvalue %dx.types.ResRet.f32 %2500, 0
  %2502 = extractvalue %dx.types.ResRet.f32 %2500, 1
  %2503 = extractvalue %dx.types.ResRet.f32 %2500, 2
  %2504 = fmul fast float %2501, %258
  %2505 = fmul fast float %2502, %261
  %2506 = fmul fast float %2503, %264
  br i1 %2499, label %2513, label %2507

; <label>:2507                                    ; preds = %2490
  %2508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2509 = extractvalue %dx.types.CBufRet.f32 %2508, 0
  %2510 = fmul fast float %2509, %2504
  %2511 = fmul fast float %2509, %2505
  %2512 = fmul fast float %2509, %2506
  br label %2513

; <label>:2513                                    ; preds = %2507, %2490
  %2514 = phi float [ %2510, %2507 ], [ %2504, %2490 ]
  %2515 = phi float [ %2511, %2507 ], [ %2505, %2490 ]
  %2516 = phi float [ %2512, %2507 ], [ %2506, %2490 ]
  %2517 = fmul fast float %2514, %2485
  %2518 = select i1 %168, float %2517, float %2514
  %2519 = call float @dx.op.dot3.f32(i32 55, float %2518, float %2515, float %2516, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2520 = select i1 %168, float 0.000000e+00, float %2514
  %2521 = select i1 %168, float %2519, float %2515
  %2522 = select i1 %168, float 0.000000e+00, float %2516
  br label %2523

; <label>:2523                                    ; preds = %2513, %2475
  %2524 = phi float [ %2520, %2513 ], [ 0.000000e+00, %2475 ]
  %2525 = phi float [ %2521, %2513 ], [ 0.000000e+00, %2475 ]
  %2526 = phi float [ %2522, %2513 ], [ 0.000000e+00, %2475 ]
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = and i32 %2528, 10240
  %2530 = icmp eq i32 %2529, 0
  br i1 %2530, label %2575, label %2531

; <label>:2531                                    ; preds = %2523
  %2532 = add i32 %30, 464
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = add i32 %2534, 0
  %2536 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2535, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2537 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2536, %dx.types.Handle %66, float %1988, float %1989, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2538 = extractvalue %dx.types.ResRet.f32 %2537, 1
  %2539 = extractvalue %dx.types.ResRet.f32 %2537, 3
  %2540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2541 = extractvalue %dx.types.ResRet.i32 %2540, 0
  %2542 = and i32 %2541, 1048576
  %2543 = icmp ne i32 %2542, 0
  %2544 = and i32 %2541, 8192
  %2545 = icmp eq i32 %2544, 0
  br i1 %2545, label %2561, label %2546

; <label>:2546                                    ; preds = %2531
  %2547 = extractvalue %dx.types.ResRet.f32 %2537, 2
  %2548 = select i1 %2543, float %2547, float %2538
  %2549 = extractvalue %dx.types.ResRet.f32 %2537, 0
  %2550 = select i1 %2543, float %2549, float %2538
  %2551 = add i32 %30, 128
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2551, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = lshr i32 %2553, 16
  %2555 = and i32 %2554, 255
  %2556 = uitofp i32 %2555 to float
  %2557 = fmul fast float %2556, 0x3F80101020000000
  %2558 = fmul fast float %2557, %2550
  %2559 = fmul fast float %2557, %2538
  %2560 = fmul fast float %2557, %2548
  br label %2561

; <label>:2561                                    ; preds = %2546, %2531
  %2562 = phi float [ %2558, %2546 ], [ 0.000000e+00, %2531 ]
  %2563 = phi float [ %2559, %2546 ], [ 0.000000e+00, %2531 ]
  %2564 = phi float [ %2560, %2546 ], [ 0.000000e+00, %2531 ]
  %2565 = and i32 %2541, 2048
  %2566 = icmp eq i32 %2565, 0
  br i1 %2566, label %2575, label %2567

; <label>:2567                                    ; preds = %2561
  %2568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2480, i32 undef)  ; BufferLoad(srv,index,wot)
  %2569 = extractvalue %dx.types.ResRet.i32 %2568, 0
  %2570 = shl i32 %2569, 4
  %2571 = and i32 %2570, 32752
  %2572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2571)  ; LegacyF16ToF32(value)
  %2573 = fmul fast float %2572, %2539
  %2574 = call float @dx.op.binary.f32(i32 35, float %2573, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2575

; <label>:2575                                    ; preds = %2567, %2561, %2523
  %2576 = phi float [ %2562, %2567 ], [ %2562, %2561 ], [ 0.000000e+00, %2523 ]
  %2577 = phi float [ %2563, %2567 ], [ %2563, %2561 ], [ 0.000000e+00, %2523 ]
  %2578 = phi float [ %2564, %2567 ], [ %2564, %2561 ], [ 0.000000e+00, %2523 ]
  %2579 = phi float [ %2574, %2567 ], [ 0x3F70101020000000, %2561 ], [ 0x3F70101020000000, %2523 ]
  %2580 = add i32 %30, 128
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = and i32 %2582, 255
  %2584 = uitofp i32 %2583 to float
  %2585 = lshr i32 %2582, 8
  %2586 = and i32 %2585, 255
  %2587 = uitofp i32 %2586 to float
  %2588 = call float @dx.op.dot3.f32(i32 55, float %2396, float %2397, float %2398, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2589 = fmul fast float %2587, %2588
  %2590 = fadd fast float %2589, %2584
  %2591 = fmul fast float %2590, 0x3F70101020000000
  %2592 = call float @dx.op.unary.f32(i32 7, float %2591)  ; Saturate(value)
  br i1 %1880, label %2593, label %2601

; <label>:2593                                    ; preds = %2575
  %2594 = fsub fast float 1.000000e+00, %2176
  %2595 = fmul fast float %2594, %1865
  %2596 = fmul fast float %2594, %1866
  %2597 = fmul fast float %2594, %1867
  %2598 = fmul fast float %2594, %1868
  %2599 = fmul fast float %2594, %1869
  %2600 = fmul fast float %2594, %1870
  br label %2601

; <label>:2601                                    ; preds = %2593, %2575
  %2602 = phi float [ %2595, %2593 ], [ %1865, %2575 ]
  %2603 = phi float [ %2596, %2593 ], [ %1866, %2575 ]
  %2604 = phi float [ %2597, %2593 ], [ %1867, %2575 ]
  %2605 = phi float [ %2598, %2593 ], [ %1868, %2575 ]
  %2606 = phi float [ %2599, %2593 ], [ %1869, %2575 ]
  %2607 = phi float [ %2600, %2593 ], [ %1870, %2575 ]
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = and i32 %2609, 3
  %2611 = icmp eq i32 %2610, 3
  br i1 %2611, label %2690, label %2612

; <label>:2612                                    ; preds = %2601
  %2613 = and i32 %2609, 16
  %2614 = icmp ne i32 %2613, 0
  %2615 = select i1 %2614, float %2176, float 0.000000e+00
  %2616 = icmp eq i32 %2610, 0
  br i1 %2616, label %2617, label %2645

; <label>:2617                                    ; preds = %2612
  %2618 = and i32 %2609, 64
  %2619 = icmp ne i32 %2618, 0
  %2620 = select i1 %2619, float %2176, float 0.000000e+00
  %2621 = fsub fast float %2396, %2602
  %2622 = fsub fast float %2397, %2603
  %2623 = fsub fast float %2398, %2604
  %2624 = fmul fast float %2615, %2621
  %2625 = fmul fast float %2615, %2622
  %2626 = fmul fast float %2615, %2623
  %2627 = fadd fast float %2624, %2602
  %2628 = fadd fast float %2625, %2603
  %2629 = fadd fast float %2626, %2604
  %2630 = fsub fast float %2382, %1874
  %2631 = fmul fast float %2615, %2630
  %2632 = fadd fast float %2631, %1874
  %2633 = fsub fast float %2524, %2605
  %2634 = fsub fast float %2525, %2606
  %2635 = fsub fast float %2526, %2607
  %2636 = fmul fast float %2620, %2633
  %2637 = fmul fast float %2620, %2634
  %2638 = fmul fast float %2620, %2635
  %2639 = fadd fast float %2636, %2605
  %2640 = fadd fast float %2637, %2606
  %2641 = fadd fast float %2638, %2607
  %2642 = fsub fast float %2592, %1878
  %2643 = fmul fast float %2615, %2642
  %2644 = fadd fast float %2643, %1878
  br label %2690

; <label>:2645                                    ; preds = %2612
  %2646 = icmp eq i32 %2610, 1
  br i1 %2646, label %2647, label %2660

; <label>:2647                                    ; preds = %2645
  %2648 = fadd fast float %2396, -1.000000e+00
  %2649 = fadd fast float %2397, -1.000000e+00
  %2650 = fadd fast float %2398, -1.000000e+00
  %2651 = fmul fast float %2615, %2648
  %2652 = fmul fast float %2615, %2649
  %2653 = fmul fast float %2615, %2650
  %2654 = fadd fast float %2651, 1.000000e+00
  %2655 = fadd fast float %2652, 1.000000e+00
  %2656 = fadd fast float %2653, 1.000000e+00
  %2657 = fmul fast float %2654, %2602
  %2658 = fmul fast float %2655, %2603
  %2659 = fmul fast float %2656, %2604
  br label %2690

; <label>:2660                                    ; preds = %2645
  %2661 = icmp eq i32 %2610, 2
  br i1 %2661, label %2662, label %2690

; <label>:2662                                    ; preds = %2660
  %2663 = call float @dx.op.unary.f32(i32 24, float %2396)  ; Sqrt(value)
  %2664 = call float @dx.op.unary.f32(i32 24, float %2397)  ; Sqrt(value)
  %2665 = call float @dx.op.unary.f32(i32 24, float %2398)  ; Sqrt(value)
  %2666 = fadd fast float %2663, -5.000000e-01
  %2667 = fadd fast float %2664, -5.000000e-01
  %2668 = fadd fast float %2665, -5.000000e-01
  %2669 = fmul fast float %2666, %2615
  %2670 = fmul fast float %2667, %2615
  %2671 = fmul fast float %2668, %2615
  %2672 = fadd fast float %2669, 5.000000e-01
  %2673 = fadd fast float %2670, 5.000000e-01
  %2674 = fadd fast float %2671, 5.000000e-01
  %2675 = fmul fast float %2672, 2.000000e+00
  %2676 = fsub fast float 1.000000e+00, %2675
  %2677 = fmul fast float %2676, %2602
  %2678 = fadd fast float %2677, %2675
  %2679 = fmul fast float %2678, %2602
  %2680 = fmul fast float %2673, 2.000000e+00
  %2681 = fsub fast float 1.000000e+00, %2680
  %2682 = fmul fast float %2681, %2603
  %2683 = fadd fast float %2682, %2680
  %2684 = fmul fast float %2683, %2603
  %2685 = fmul fast float %2674, 2.000000e+00
  %2686 = fsub fast float 1.000000e+00, %2685
  %2687 = fmul fast float %2686, %2604
  %2688 = fadd fast float %2687, %2685
  %2689 = fmul fast float %2688, %2604
  br label %2690

; <label>:2690                                    ; preds = %2662, %2660, %2647, %2617, %2601
  %2691 = phi float [ %2602, %2601 ], [ %2679, %2662 ], [ %2602, %2660 ], [ %2657, %2647 ], [ %2627, %2617 ]
  %2692 = phi float [ %2603, %2601 ], [ %2684, %2662 ], [ %2603, %2660 ], [ %2658, %2647 ], [ %2628, %2617 ]
  %2693 = phi float [ %2604, %2601 ], [ %2689, %2662 ], [ %2604, %2660 ], [ %2659, %2647 ], [ %2629, %2617 ]
  %2694 = phi float [ %2605, %2601 ], [ %2605, %2662 ], [ %2605, %2660 ], [ %2605, %2647 ], [ %2639, %2617 ]
  %2695 = phi float [ %2606, %2601 ], [ %2606, %2662 ], [ %2606, %2660 ], [ %2606, %2647 ], [ %2640, %2617 ]
  %2696 = phi float [ %2607, %2601 ], [ %2607, %2662 ], [ %2607, %2660 ], [ %2607, %2647 ], [ %2641, %2617 ]
  %2697 = phi float [ %1874, %2601 ], [ %1874, %2662 ], [ %1874, %2660 ], [ %1874, %2647 ], [ %2632, %2617 ]
  %2698 = phi float [ %1878, %2601 ], [ %1878, %2662 ], [ %1878, %2660 ], [ %1878, %2647 ], [ %2644, %2617 ]
  %2699 = and i32 %2609, 12
  %2700 = icmp eq i32 %2699, 12
  br i1 %2700, label %2807, label %2701

; <label>:2701                                    ; preds = %2690
  %2702 = and i32 %2609, 2097184
  %2703 = icmp eq i32 %2702, 2097184
  %2704 = select i1 %2703, float %2176, float 0.000000e+00
  %2705 = and i32 %2609, 4194336
  %2706 = icmp eq i32 %2705, 4194336
  %2707 = select i1 %2706, float %2176, float 0.000000e+00
  %2708 = and i32 %2609, 8388640
  %2709 = icmp eq i32 %2708, 8388640
  %2710 = select i1 %2709, float %2176, float 0.000000e+00
  %2711 = and i32 %2609, 2048
  %2712 = icmp ne i32 %2711, 0
  %2713 = select i1 %2712, float %2176, float 0.000000e+00
  %2714 = and i32 %2609, 8192
  %2715 = icmp ne i32 %2714, 0
  %2716 = select i1 %2715, float %2176, float 0.000000e+00
  %2717 = icmp eq i32 %2699, 0
  br i1 %2717, label %2718, label %2743

; <label>:2718                                    ; preds = %2701
  %2719 = fsub fast float %2477, %1863
  %2720 = fsub fast float %2478, %1864
  %2721 = fmul fast float %2704, %2719
  %2722 = fmul fast float %2704, %2720
  %2723 = fadd fast float %2721, %1863
  %2724 = fadd fast float %2722, %1864
  %2725 = fsub fast float %2479, %1876
  %2726 = fmul fast float %2707, %2725
  %2727 = fadd fast float %2726, %1876
  %2728 = fsub fast float %2476, %1875
  %2729 = fmul fast float %2710, %2728
  %2730 = fadd fast float %2729, %1875
  %2731 = fsub fast float %2579, %1877
  %2732 = fmul fast float %2713, %2731
  %2733 = fadd fast float %2732, %1877
  %2734 = fsub fast float %2576, %1871
  %2735 = fsub fast float %2577, %1872
  %2736 = fsub fast float %2578, %1873
  %2737 = fmul fast float %2716, %2734
  %2738 = fmul fast float %2716, %2735
  %2739 = fmul fast float %2716, %2736
  %2740 = fadd fast float %2737, %1871
  %2741 = fadd fast float %2738, %1872
  %2742 = fadd fast float %2739, %1873
  br label %2807

; <label>:2743                                    ; preds = %2701
  %2744 = icmp eq i32 %2699, 4
  br i1 %2744, label %2745, label %2785

; <label>:2745                                    ; preds = %2743
  %2746 = fmul fast float %2704, %2477
  %2747 = fmul fast float %2704, %2478
  %2748 = fadd fast float %2746, %1863
  %2749 = fadd fast float %2747, %1864
  %2750 = call float @dx.op.binary.f32(i32 36, float %1876, float %2479)  ; FMin(a,b)
  %2751 = fsub fast float %2750, %1876
  %2752 = fmul fast float %2751, %2707
  %2753 = fadd fast float %2752, %1876
  %2754 = fadd fast float %2476, %1875
  %2755 = fmul fast float %2754, 0x3FF337FAE0000000
  %2756 = fmul fast float %1875, %1875
  %2757 = fmul fast float %2476, %2476
  %2758 = fadd fast float %2757, %2756
  %2759 = fmul fast float %2758, 0x3FE5152B00000000
  %2760 = fmul fast float %1875, 0xBFCC1F85E0000000
  %2761 = fmul fast float %2760, %2476
  %2762 = fadd fast float %2761, 0xBFE1363700000000
  %2763 = fadd fast float %2762, %2755
  %2764 = fsub fast float %2763, %2759
  %2765 = fmul fast float %2754, 0x3FBA6F0D00000000
  %2766 = fmul fast float %2758, 0x3FD0432880000000
  %2767 = fmul fast float %1875, 0xBFEF110800000000
  %2768 = fmul fast float %2767, %2476
  %2769 = fadd fast float %2768, 1.000000e+00
  %2770 = fsub fast float %2769, %2765
  %2771 = fadd fast float %2770, %2766
  %2772 = fdiv fast float %2764, %2771
  %2773 = call float @dx.op.unary.f32(i32 7, float %2772)  ; Saturate(value)
  %2774 = fsub fast float %2773, %1875
  %2775 = fmul fast float %2774, %2710
  %2776 = fadd fast float %2775, %1875
  %2777 = fmul fast float %2713, %2579
  %2778 = fadd fast float %2777, %1877
  %2779 = fmul fast float %2716, %2576
  %2780 = fmul fast float %2716, %2577
  %2781 = fmul fast float %2716, %2578
  %2782 = fadd fast float %2779, %1871
  %2783 = fadd fast float %2780, %1872
  %2784 = fadd fast float %2781, %1873
  br label %2807

; <label>:2785                                    ; preds = %2743
  %2786 = icmp eq i32 %2699, 8
  br i1 %2786, label %2787, label %2807

; <label>:2787                                    ; preds = %2785
  %2788 = fmul fast float %2704, %2477
  %2789 = fmul fast float %2704, %2478
  %2790 = fadd fast float %2788, %1863
  %2791 = fadd fast float %2789, %1864
  %2792 = call float @dx.op.binary.f32(i32 36, float %1876, float %2479)  ; FMin(a,b)
  %2793 = fsub fast float %2792, %1876
  %2794 = fmul fast float %2793, %2707
  %2795 = fadd fast float %2794, %1876
  %2796 = fsub fast float %2476, %1875
  %2797 = fmul fast float %2710, %2796
  %2798 = fadd fast float %2797, %1875
  %2799 = fmul fast float %2713, %2579
  %2800 = fadd fast float %2799, %1877
  %2801 = fmul fast float %2716, %2576
  %2802 = fmul fast float %2716, %2577
  %2803 = fmul fast float %2716, %2578
  %2804 = fadd fast float %2801, %1871
  %2805 = fadd fast float %2802, %1872
  %2806 = fadd fast float %2803, %1873
  br label %2807

; <label>:2807                                    ; preds = %2787, %2785, %2745, %2718, %2690, %2175, %1879, %1862
  %2808 = phi float [ %1863, %2690 ], [ %1863, %2175 ], [ %1863, %1862 ], [ %2790, %2787 ], [ %1863, %2785 ], [ %2748, %2745 ], [ %2723, %2718 ], [ %1863, %1879 ]
  %2809 = phi float [ %1864, %2690 ], [ %1864, %2175 ], [ %1864, %1862 ], [ %2791, %2787 ], [ %1864, %2785 ], [ %2749, %2745 ], [ %2724, %2718 ], [ %1864, %1879 ]
  %2810 = phi float [ %2691, %2690 ], [ %1865, %2175 ], [ %1865, %1862 ], [ %2691, %2787 ], [ %2691, %2785 ], [ %2691, %2745 ], [ %2691, %2718 ], [ %1865, %1879 ]
  %2811 = phi float [ %2692, %2690 ], [ %1866, %2175 ], [ %1866, %1862 ], [ %2692, %2787 ], [ %2692, %2785 ], [ %2692, %2745 ], [ %2692, %2718 ], [ %1866, %1879 ]
  %2812 = phi float [ %2693, %2690 ], [ %1867, %2175 ], [ %1867, %1862 ], [ %2693, %2787 ], [ %2693, %2785 ], [ %2693, %2745 ], [ %2693, %2718 ], [ %1867, %1879 ]
  %2813 = phi float [ %2694, %2690 ], [ %1868, %2175 ], [ %1868, %1862 ], [ %2694, %2787 ], [ %2694, %2785 ], [ %2694, %2745 ], [ %2694, %2718 ], [ %1868, %1879 ]
  %2814 = phi float [ %2695, %2690 ], [ %1869, %2175 ], [ %1869, %1862 ], [ %2695, %2787 ], [ %2695, %2785 ], [ %2695, %2745 ], [ %2695, %2718 ], [ %1869, %1879 ]
  %2815 = phi float [ %2696, %2690 ], [ %1870, %2175 ], [ %1870, %1862 ], [ %2696, %2787 ], [ %2696, %2785 ], [ %2696, %2745 ], [ %2696, %2718 ], [ %1870, %1879 ]
  %2816 = phi float [ %1871, %2690 ], [ %1871, %2175 ], [ %1871, %1862 ], [ %2804, %2787 ], [ %1871, %2785 ], [ %2782, %2745 ], [ %2740, %2718 ], [ %1871, %1879 ]
  %2817 = phi float [ %1872, %2690 ], [ %1872, %2175 ], [ %1872, %1862 ], [ %2805, %2787 ], [ %1872, %2785 ], [ %2783, %2745 ], [ %2741, %2718 ], [ %1872, %1879 ]
  %2818 = phi float [ %1873, %2690 ], [ %1873, %2175 ], [ %1873, %1862 ], [ %2806, %2787 ], [ %1873, %2785 ], [ %2784, %2745 ], [ %2742, %2718 ], [ %1873, %1879 ]
  %2819 = phi float [ %2697, %2690 ], [ %1874, %2175 ], [ %1874, %1862 ], [ %2697, %2787 ], [ %2697, %2785 ], [ %2697, %2745 ], [ %2697, %2718 ], [ %1874, %1879 ]
  %2820 = phi float [ %1875, %2690 ], [ %1875, %2175 ], [ %1875, %1862 ], [ %2798, %2787 ], [ %1875, %2785 ], [ %2776, %2745 ], [ %2730, %2718 ], [ %1875, %1879 ]
  %2821 = phi float [ %1876, %2690 ], [ %1876, %2175 ], [ %1876, %1862 ], [ %2795, %2787 ], [ %1876, %2785 ], [ %2753, %2745 ], [ %2727, %2718 ], [ %1876, %1879 ]
  %2822 = phi float [ %1877, %2690 ], [ %1877, %2175 ], [ %1877, %1862 ], [ %2800, %2787 ], [ %1877, %2785 ], [ %2778, %2745 ], [ %2733, %2718 ], [ %1877, %1879 ]
  %2823 = phi float [ %2698, %2690 ], [ %1878, %2175 ], [ %1878, %1862 ], [ %2698, %2787 ], [ %2698, %2785 ], [ %2698, %2745 ], [ %2698, %2718 ], [ %1878, %1879 ]
  br i1 %345, label %3752, label %2824

; <label>:2824                                    ; preds = %2807
  %2825 = icmp ult i32 %396, 4
  %2826 = add i32 %30, 72
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = add i32 %30, 76
  %2830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %2831 = extractvalue %dx.types.ResRet.i32 %2830, 0
  %2832 = or i32 %2831, %2828
  %2833 = icmp eq i32 %2832, 0
  br i1 %2833, label %3752, label %2834

; <label>:2834                                    ; preds = %2824
  %2835 = and i32 %2828, 262144
  %2836 = icmp ne i32 %2835, 0
  %2837 = select i1 %2836, float %32, float 1.000000e+00
  %2838 = select i1 %2836, float %33, float 0.000000e+00
  %2839 = select i1 %2836, float %34, float 0.000000e+00
  %2840 = select i1 %2836, float %35, float 1.000000e+00
  %2841 = select i1 %2836, float %36, float %57
  %2842 = select i1 %2836, float %37, float %58
  %2843 = add i32 %30, 332
  %2844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2843, i32 undef)  ; BufferLoad(srv,index,wot)
  %2845 = extractvalue %dx.types.ResRet.i32 %2844, 0
  %2846 = lshr i32 %2845, 16
  %2847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2846)  ; LegacyF16ToF32(value)
  %2848 = fmul fast float %2847, 0x3F50624DE0000000
  %2849 = add i32 %30, 136
  %2850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2851 = extractvalue %dx.types.ResRet.i32 %2850, 0
  %2852 = lshr i32 %2851, 16
  %2853 = and i32 %2852, 255
  %2854 = lshr i32 %2851, 24
  %2855 = add i32 %30, 340
  %2856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2857 = extractvalue %dx.types.ResRet.i32 %2856, 0
  %2858 = and i32 %2857, 65535
  %2859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2858)  ; LegacyF16ToF32(value)
  %2860 = lshr i32 %2857, 16
  %2861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2860)  ; LegacyF16ToF32(value)
  %2862 = add i32 %30, 80
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2862, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = lshr i32 %2864, 22
  %2866 = shl nuw nsw i32 %2865, 5
  %2867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2866)  ; LegacyF16ToF32(value)
  %2868 = shl i32 %2864, 4
  %2869 = and i32 %2868, 32752
  %2870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2869)  ; LegacyF16ToF32(value)
  %2871 = lshr i32 %2864, 7
  %2872 = and i32 %2871, 32752
  %2873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2872)  ; LegacyF16ToF32(value)
  %2874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2875 = extractvalue %dx.types.CBufRet.f32 %2874, 3
  %2876 = fmul fast float %2875, 1.000000e+03
  %2877 = fmul fast float %335, %2876
  %2878 = call float @dx.op.unary.f32(i32 22, float %2877)  ; Frc(value)
  %2879 = fadd fast float %2878, %325
  %2880 = fmul fast float %336, %2876
  %2881 = call float @dx.op.unary.f32(i32 22, float %2880)  ; Frc(value)
  %2882 = fadd fast float %2881, %327
  %2883 = fmul fast float %2848, %2876
  %2884 = call float @dx.op.unary.f32(i32 22, float %2883)  ; Frc(value)
  %2885 = fmul fast float %2884, 0x401921FB60000000
  %2886 = fadd fast float %2885, %2867
  %2887 = call float @dx.op.unary.f32(i32 13, float %2886)  ; Sin(value)
  %2888 = call float @dx.op.unary.f32(i32 12, float %2886)  ; Cos(value)
  %2889 = fsub fast float -0.000000e+00, %2887
  %2890 = fadd fast float %2841, -5.000000e-01
  %2891 = fadd fast float %2842, -5.000000e-01
  %2892 = fmul fast float %2859, %2890
  %2893 = fmul fast float %2861, %2891
  %2894 = fadd fast float %2892, 5.000000e-01
  %2895 = fadd fast float %2893, 5.000000e-01
  %2896 = fmul fast float %2870, %2894
  %2897 = fmul fast float %2873, %2895
  %2898 = fmul fast float %2888, %2896
  %2899 = call float @dx.op.tertiary.f32(i32 46, float %2889, float %2897, float %2898)  ; FMad(a,b,c)
  %2900 = fmul fast float %2887, %2896
  %2901 = call float @dx.op.tertiary.f32(i32 46, float %2888, float %2897, float %2900)  ; FMad(a,b,c)
  %2902 = fadd fast float %2879, %2899
  %2903 = fadd fast float %2882, %2901
  %2904 = icmp ugt i32 %2853, 1
  %2905 = icmp ugt i32 %2851, 33554431
  %2906 = or i1 %2905, %2904
  br i1 %2906, label %2907, label %2932

; <label>:2907                                    ; preds = %2834
  %2908 = add i32 %30, 276
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = lshr i32 %2910, 16
  %2912 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2911)  ; LegacyF16ToF32(value)
  %2913 = fmul fast float %2875, %2912
  %2914 = call float @dx.op.unary.f32(i32 22, float %2913)  ; Frc(value)
  %2915 = mul nuw nsw i32 %2853, %2854
  %2916 = uitofp i32 %2915 to float
  %2917 = fmul fast float %2914, %2916
  %2918 = call float @dx.op.unary.f32(i32 27, float %2917)  ; Round_ni(value)
  %2919 = fptoui float %2918 to i32
  %2920 = urem i32 %2919, %2853
  %2921 = udiv i32 %2919, %2854
  %2922 = call float @dx.op.unary.f32(i32 22, float %2902)  ; Frc(value)
  %2923 = call float @dx.op.unary.f32(i32 22, float %2903)  ; Frc(value)
  %2924 = uitofp i32 %2920 to float
  %2925 = uitofp i32 %2921 to float
  %2926 = fadd fast float %2922, %2924
  %2927 = fadd fast float %2923, %2925
  %2928 = uitofp i32 %2853 to float
  %2929 = uitofp i32 %2854 to float
  %2930 = fdiv fast float %2926, %2928
  %2931 = fdiv fast float %2927, %2929
  br label %2932

; <label>:2932                                    ; preds = %2907, %2834
  %2933 = phi float [ %2930, %2907 ], [ %2902, %2834 ]
  %2934 = phi float [ %2931, %2907 ], [ %2903, %2834 ]
  %2935 = and i32 %2828, 16777216
  %2936 = icmp eq i32 %2935, 0
  br i1 %2936, label %3046, label %2937

; <label>:2937                                    ; preds = %2932
  %2938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2939 = extractvalue %dx.types.CBufRet.f32 %2938, 0
  %2940 = extractvalue %dx.types.CBufRet.f32 %2938, 1
  %2941 = extractvalue %dx.types.CBufRet.f32 %2938, 2
  %2942 = fadd fast float %2939, %124
  %2943 = fadd fast float %2940, %125
  %2944 = fadd fast float %2941, %126
  %2945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2946 = extractvalue %dx.types.CBufRet.f32 %2945, 0
  %2947 = call float @dx.op.unary.f32(i32 7, float %2946)  ; Saturate(value)
  %2948 = icmp eq i32 %31, 65535
  br i1 %2948, label %3043, label %2949

; <label>:2949                                    ; preds = %2937
  %2950 = lshr i32 %31, 1
  %2951 = shl i32 %2950, 2
  %2952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.i32 %2952, 0
  %2954 = and i32 %31, 1
  %2955 = icmp ne i32 %2954, 0
  %2956 = lshr i32 %2953, 16
  %2957 = and i32 %2953, 65535
  %2958 = select i1 %2955, i32 %2956, i32 %2957
  %2959 = icmp eq i32 %2958, 65535
  br i1 %2959, label %3039, label %2960

; <label>:2960                                    ; preds = %2949
  %2961 = mul nuw nsw i32 %2958, 40
  %2962 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2961, i32 undef)  ; BufferLoad(srv,index,wot)
  %2963 = extractvalue %dx.types.ResRet.f32 %2962, 0
  %2964 = extractvalue %dx.types.ResRet.f32 %2962, 1
  %2965 = extractvalue %dx.types.ResRet.f32 %2962, 2
  %2966 = add nuw nsw i32 %2961, 12
  %2967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2966, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.f32 %2967, 0
  %2969 = extractvalue %dx.types.ResRet.f32 %2967, 1
  %2970 = extractvalue %dx.types.ResRet.f32 %2967, 2
  %2971 = add nuw nsw i32 %2961, 24
  %2972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2971, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.f32 %2972, 0
  %2974 = extractvalue %dx.types.ResRet.f32 %2972, 1
  %2975 = extractvalue %dx.types.ResRet.f32 %2972, 2
  %2976 = add nuw nsw i32 %2961, 36
  %2977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2976, i32 undef)  ; BufferLoad(srv,index,wot)
  %2978 = extractvalue %dx.types.ResRet.f32 %2977, 0
  %2979 = fsub fast float %2942, %2963
  %2980 = fsub fast float %2943, %2964
  %2981 = fsub fast float %2944, %2965
  %2982 = fmul fast float %2978, %2979
  %2983 = fmul fast float %2978, %2980
  %2984 = fmul fast float %2978, %2981
  %2985 = call float @dx.op.unary.f32(i32 27, float %2982)  ; Round_ni(value)
  %2986 = call float @dx.op.unary.f32(i32 27, float %2983)  ; Round_ni(value)
  %2987 = call float @dx.op.unary.f32(i32 27, float %2984)  ; Round_ni(value)
  %2988 = fadd fast float %2985, 5.000000e-01
  %2989 = fadd fast float %2986, 5.000000e-01
  %2990 = fadd fast float %2987, 5.000000e-01
  %2991 = fmul fast float %2988, %2968
  %2992 = fmul fast float %2989, %2969
  %2993 = fmul fast float %2990, %2970
  %2994 = shl i32 %31, 2
  %2995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.i32 %2995, 0
  %2997 = add i32 %2996, 0
  %2998 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2997, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2999 = call float @dx.op.unary.f32(i32 22, float %2991)  ; Frc(value)
  %3000 = call float @dx.op.unary.f32(i32 22, float %2992)  ; Frc(value)
  %3001 = call float @dx.op.unary.f32(i32 22, float %2993)  ; Frc(value)
  %3002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2998, %dx.types.Handle %27, float %2999, float %3000, float %3001, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3003 = extractvalue %dx.types.ResRet.f32 %3002, 0
  %3004 = extractvalue %dx.types.ResRet.f32 %3002, 1
  %3005 = extractvalue %dx.types.ResRet.f32 %3002, 2
  %3006 = fmul fast float %3003, 1.023000e+03
  %3007 = fmul fast float %3004, 1.023000e+03
  %3008 = fmul fast float %3005, 1.023000e+03
  %3009 = fadd fast float %3006, 5.000000e-01
  %3010 = fadd fast float %3007, 5.000000e-01
  %3011 = fadd fast float %3008, 5.000000e-01
  %3012 = call float @dx.op.unary.f32(i32 27, float %3009)  ; Round_ni(value)
  %3013 = call float @dx.op.unary.f32(i32 27, float %3010)  ; Round_ni(value)
  %3014 = call float @dx.op.unary.f32(i32 27, float %3011)  ; Round_ni(value)
  %3015 = fsub fast float %2982, %2985
  %3016 = fsub fast float %2983, %2986
  %3017 = fsub fast float %2984, %2987
  %3018 = fmul fast float %3015, 7.500000e-01
  %3019 = fmul fast float %3016, 7.500000e-01
  %3020 = fmul fast float %3017, 7.500000e-01
  %3021 = fadd fast float %2985, 1.250000e-01
  %3022 = fadd fast float %3021, %3018
  %3023 = fadd fast float %3022, %3012
  %3024 = fadd fast float %2986, 1.250000e-01
  %3025 = fadd fast float %3024, %3019
  %3026 = fadd fast float %3025, %3013
  %3027 = fadd fast float %2987, 1.250000e-01
  %3028 = fadd fast float %3027, %3020
  %3029 = fadd fast float %3028, %3014
  %3030 = fmul fast float %3023, %2973
  %3031 = fmul fast float %3026, %2974
  %3032 = fmul fast float %3029, %2975
  %3033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2994, i32 undef)  ; BufferLoad(srv,index,wot)
  %3034 = extractvalue %dx.types.ResRet.i32 %3033, 0
  %3035 = add i32 %3034, 0
  %3036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3035, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3037 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3036, %dx.types.Handle %25, float %3030, float %3031, float %3032, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3038 = extractvalue %dx.types.ResRet.f32 %3037, 0
  br label %3039

; <label>:3039                                    ; preds = %2960, %2949
  %3040 = phi float [ %3038, %2960 ], [ -1.000000e+00, %2949 ]
  %3041 = fadd fast float %3040, %2947
  %3042 = call float @dx.op.unary.f32(i32 7, float %3041)  ; Saturate(value)
  br label %3043

; <label>:3043                                    ; preds = %3039, %2937
  %3044 = phi float [ %3042, %3039 ], [ %2947, %2937 ]
  %3045 = fmul fast float %3044, %391
  br label %3046

; <label>:3046                                    ; preds = %3043, %2932
  %3047 = phi float [ %3045, %3043 ], [ %391, %2932 ]
  %3048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3049 = extractvalue %dx.types.ResRet.i32 %3048, 0
  %3050 = and i32 %3049, 256
  %3051 = icmp eq i32 %3050, 0
  br i1 %3051, label %3098, label %3052

; <label>:3052                                    ; preds = %3046
  %3053 = add i32 %30, 436
  %3054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3053, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.i32 %3054, 0
  %3056 = add i32 %3055, 0
  %3057 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3056, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3058 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3057, %dx.types.Handle %66, float %2933, float %2934, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3059 = extractvalue %dx.types.ResRet.f32 %3058, 0
  %3060 = add i32 %30, 148
  %3061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.i32 %3061, 0
  %3063 = shl i32 %3062, 4
  %3064 = and i32 %3063, 32752
  %3065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3064)  ; LegacyF16ToF32(value)
  %3066 = lshr i32 %3062, 7
  %3067 = and i32 %3066, 32752
  %3068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3067)  ; LegacyF16ToF32(value)
  %3069 = fsub fast float 1.000000e+00, %3047
  %3070 = call float @dx.op.binary.f32(i32 35, float %3069, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3071 = bitcast float %3047 to i32
  %3072 = sitofp i32 %3071 to float
  %3073 = fadd fast float %3072, 0xC1CFBF8940000000
  %3074 = fmul fast float %3068, %3073
  %3075 = fadd fast float %3074, 0x41CFBF8940000000
  %3076 = fptosi float %3075 to i32
  %3077 = bitcast i32 %3076 to float
  %3078 = bitcast float %3070 to i32
  %3079 = sitofp i32 %3078 to float
  %3080 = fadd fast float %3079, 0xC1CFBF8940000000
  %3081 = fmul fast float %3080, %3068
  %3082 = fadd fast float %3081, 0x41CFBF8940000000
  %3083 = fptosi float %3082 to i32
  %3084 = bitcast i32 %3083 to float
  %3085 = fmul fast float %3077, %3065
  %3086 = fmul fast float %3084, %3065
  %3087 = fsub fast float %3070, %3085
  %3088 = fadd fast float %3086, %3070
  %3089 = call float @dx.op.unary.f32(i32 7, float %3087)  ; Saturate(value)
  %3090 = call float @dx.op.unary.f32(i32 7, float %3088)  ; Saturate(value)
  %3091 = fsub fast float %3059, %3089
  %3092 = fsub fast float %3090, %3089
  %3093 = bitcast float %3092 to i32
  %3094 = sub nsw i32 2129859010, %3093
  %3095 = bitcast i32 %3094 to float
  %3096 = fmul fast float %3095, %3091
  %3097 = call float @dx.op.unary.f32(i32 7, float %3096)  ; Saturate(value)
  br label %3098

; <label>:3098                                    ; preds = %3052, %3046
  %3099 = phi float [ %3097, %3052 ], [ %3047, %3046 ]
  %3100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3101 = extractvalue %dx.types.ResRet.i32 %3100, 0
  %3102 = and i32 %3101, 128
  %3103 = icmp eq i32 %3102, 0
  br i1 %3103, label %3120, label %3104

; <label>:3104                                    ; preds = %3098
  %3105 = add i32 %30, 420
  %3106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3105, i32 undef)  ; BufferLoad(srv,index,wot)
  %3107 = extractvalue %dx.types.ResRet.i32 %3106, 0
  %3108 = add i32 %3107, 0
  %3109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3110 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3109, %dx.types.Handle %66, float %2933, float %2934, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3111 = extractvalue %dx.types.ResRet.f32 %3110, 0
  %3112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3113 = extractvalue %dx.types.ResRet.i32 %3112, 0
  %3114 = and i32 %3113, 524288
  %3115 = icmp ne i32 %3114, 0
  %3116 = fcmp fast ogt float %3111, 0x3FE0101020000000
  %3117 = select i1 %3116, float 1.000000e+00, float 0.000000e+00
  %3118 = select i1 %3115, float %3117, float %3111
  %3119 = fmul fast float %3118, %3099
  br label %3120

; <label>:3120                                    ; preds = %3104, %3098
  %3121 = phi float [ %3119, %3104 ], [ %3099, %3098 ]
  %3122 = fcmp fast ult float %3121, 0x3F70101020000000
  br i1 %3122, label %3752, label %3123

; <label>:3123                                    ; preds = %3120
  %3124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3125 = extractvalue %dx.types.ResRet.i32 %3124, 0
  %3126 = and i32 %3125, 16
  %3127 = icmp eq i32 %3126, 0
  br i1 %3127, label %3326, label %3128

; <label>:3128                                    ; preds = %3123
  %3129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2849, i32 undef)  ; BufferLoad(srv,index,wot)
  %3130 = extractvalue %dx.types.ResRet.i32 %3129, 0
  %3131 = add i32 %30, 372
  %3132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3131, i32 undef)  ; BufferLoad(srv,index,wot)
  %3133 = extractvalue %dx.types.ResRet.i32 %3132, 0
  %3134 = add i32 %3133, 0
  %3135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3134, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3136 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3135, %dx.types.Handle %65, float %2933, float %2934, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3137 = extractvalue %dx.types.ResRet.f32 %3136, 0
  %3138 = extractvalue %dx.types.ResRet.f32 %3136, 1
  %3139 = extractvalue %dx.types.ResRet.f32 %3136, 2
  %3140 = extractvalue %dx.types.ResRet.f32 %3136, 3
  %3141 = and i32 %3130, 255
  %3142 = uitofp i32 %3141 to float
  %3143 = lshr i32 %3130, 8
  %3144 = and i32 %3143, 255
  %3145 = uitofp i32 %3144 to float
  %3146 = fmul fast float %3140, %3142
  %3147 = fadd fast float %3146, %3145
  %3148 = fmul fast float %3147, 0x3F70101000000000
  %3149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3150 = extractvalue %dx.types.ResRet.i32 %3149, 0
  %3151 = and i32 %3150, 512
  %3152 = icmp eq i32 %3151, 0
  br i1 %3152, label %3161, label %3153

; <label>:3153                                    ; preds = %3128
  %3154 = add i32 %30, 452
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3154, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = add i32 %3156, 0
  %3158 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3157, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3159 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3158, %dx.types.Handle %66, float %2933, float %2934, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3160 = extractvalue %dx.types.ResRet.f32 %3159, 0
  br label %3161

; <label>:3161                                    ; preds = %3153, %3128
  %3162 = phi float [ %3160, %3153 ], [ 1.000000e+00, %3128 ]
  %3163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3164 = extractvalue %dx.types.ResRet.i32 %3163, 0
  %3165 = and i32 %3164, 33554432
  %3166 = icmp eq i32 %3165, 0
  br i1 %3166, label %3273, label %3167

; <label>:3167                                    ; preds = %3161
  %3168 = add i32 %30, 272
  %3169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3168, i32 undef)  ; BufferLoad(srv,index,wot)
  %3170 = extractvalue %dx.types.ResRet.i32 %3169, 0
  %3171 = and i32 %3170, 65535
  %3172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3171)  ; LegacyF16ToF32(value)
  %3173 = lshr i32 %3170, 16
  %3174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3173)  ; LegacyF16ToF32(value)
  %3175 = add i32 %30, 276
  %3176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3175, i32 undef)  ; BufferLoad(srv,index,wot)
  %3177 = extractvalue %dx.types.ResRet.i32 %3176, 0
  %3178 = and i32 %3177, 65535
  %3179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3178)  ; LegacyF16ToF32(value)
  %3180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %3181 = extractvalue %dx.types.ResRet.i32 %3180, 0
  %3182 = lshr i32 %3181, 24
  %3183 = uitofp i32 %3182 to float
  %3184 = fmul fast float %3183, 0x3F70101020000000
  %3185 = and i32 %3181, 255
  %3186 = uitofp i32 %3185 to float
  %3187 = fmul fast float %3186, 0x3F70101020000000
  %3188 = lshr i32 %3181, 8
  %3189 = and i32 %3188, 255
  %3190 = uitofp i32 %3189 to float
  %3191 = fmul fast float %3190, 0x3F70101020000000
  %3192 = lshr i32 %3181, 16
  %3193 = and i32 %3192, 255
  %3194 = uitofp i32 %3193 to float
  %3195 = fmul fast float %3194, 0x3F70101020000000
  %3196 = add i32 %30, 268
  %3197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.i32 %3197, 0
  %3199 = lshr i32 %3198, 24
  %3200 = uitofp i32 %3199 to float
  %3201 = fmul fast float %3200, 0x3F70101020000000
  %3202 = and i32 %3198, 255
  %3203 = uitofp i32 %3202 to float
  %3204 = fmul fast float %3203, 0x3F70101020000000
  %3205 = lshr i32 %3198, 8
  %3206 = and i32 %3205, 255
  %3207 = uitofp i32 %3206 to float
  %3208 = fmul fast float %3207, 0x3F70101020000000
  %3209 = lshr i32 %3198, 16
  %3210 = and i32 %3209, 255
  %3211 = uitofp i32 %3210 to float
  %3212 = fmul fast float %3211, 0x3F70101020000000
  %3213 = bitcast float %3137 to i32
  %3214 = ashr i32 %3213, 1
  %3215 = sub nsw i32 1597463174, %3214
  %3216 = bitcast i32 %3215 to float
  %3217 = fmul fast float %3137, 5.000000e-01
  %3218 = fmul fast float %3216, %3216
  %3219 = fmul fast float %3218, %3217
  %3220 = fsub fast float 1.500000e+00, %3219
  %3221 = fmul fast float %3216, %3137
  %3222 = fmul fast float %3221, %3220
  %3223 = bitcast float %3138 to i32
  %3224 = ashr i32 %3223, 1
  %3225 = sub nsw i32 1597463174, %3224
  %3226 = bitcast i32 %3225 to float
  %3227 = fmul fast float %3138, 5.000000e-01
  %3228 = fmul fast float %3226, %3226
  %3229 = fmul fast float %3228, %3227
  %3230 = fsub fast float 1.500000e+00, %3229
  %3231 = fmul fast float %3226, %3138
  %3232 = fmul fast float %3231, %3230
  %3233 = bitcast float %3139 to i32
  %3234 = ashr i32 %3233, 1
  %3235 = sub nsw i32 1597463174, %3234
  %3236 = bitcast i32 %3235 to float
  %3237 = fmul fast float %3139, 5.000000e-01
  %3238 = fmul fast float %3236, %3236
  %3239 = fmul fast float %3238, %3237
  %3240 = fsub fast float 1.500000e+00, %3239
  %3241 = fmul fast float %3236, %3139
  %3242 = fmul fast float %3241, %3240
  %3243 = fsub fast float %3222, %3204
  %3244 = fsub fast float %3232, %3208
  %3245 = fsub fast float %3242, %3212
  %3246 = fmul fast float %3243, %3172
  %3247 = fmul fast float %3244, %3174
  %3248 = fmul fast float %3245, %3179
  %3249 = fadd fast float %3246, %3187
  %3250 = fadd fast float %3247, %3191
  %3251 = fadd fast float %3248, %3195
  %3252 = call float @dx.op.unary.f32(i32 7, float %3249)  ; Saturate(value)
  %3253 = call float @dx.op.unary.f32(i32 7, float %3250)  ; Saturate(value)
  %3254 = call float @dx.op.unary.f32(i32 7, float %3251)  ; Saturate(value)
  %3255 = fmul fast float %3252, %3252
  %3256 = fmul fast float %3253, %3253
  %3257 = fmul fast float %3254, %3254
  %3258 = fsub fast float %3255, %3137
  %3259 = fsub fast float %3256, %3138
  %3260 = fsub fast float %3257, %3139
  %3261 = fmul fast float %3258, %3162
  %3262 = fmul fast float %3259, %3162
  %3263 = fmul fast float %3260, %3162
  %3264 = fadd fast float %3261, %3137
  %3265 = fadd fast float %3262, %3138
  %3266 = fadd fast float %3263, %3139
  %3267 = fadd fast float %3184, %3148
  %3268 = fsub fast float %3267, %3201
  %3269 = call float @dx.op.unary.f32(i32 7, float %3268)  ; Saturate(value)
  %3270 = fsub fast float %3269, %3148
  %3271 = fmul fast float %3270, %3162
  %3272 = fadd fast float %3271, %3148
  br label %3326

; <label>:3273                                    ; preds = %3161
  %3274 = and i32 %3164, 134217728
  %3275 = icmp eq i32 %3274, 0
  br i1 %3275, label %3310, label %3276

; <label>:3276                                    ; preds = %3273
  %3277 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %3278 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %3279 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %3280 = fadd fast float %3277, -5.000000e-01
  %3281 = fadd fast float %3278, -5.000000e-01
  %3282 = fadd fast float %3279, -5.000000e-01
  %3283 = fmul fast float %3280, %3162
  %3284 = fmul fast float %3281, %3162
  %3285 = fmul fast float %3282, %3162
  %3286 = fadd fast float %3283, 5.000000e-01
  %3287 = fadd fast float %3284, 5.000000e-01
  %3288 = fadd fast float %3285, 5.000000e-01
  %3289 = call float @dx.op.unary.f32(i32 24, float %3137)  ; Sqrt(value)
  %3290 = call float @dx.op.unary.f32(i32 24, float %3138)  ; Sqrt(value)
  %3291 = call float @dx.op.unary.f32(i32 24, float %3139)  ; Sqrt(value)
  %3292 = fmul fast float %3286, 2.000000e+00
  %3293 = fsub fast float 1.000000e+00, %3292
  %3294 = fmul fast float %3293, %3289
  %3295 = fadd fast float %3294, %3292
  %3296 = fmul fast float %3295, %3289
  %3297 = fmul fast float %3287, 2.000000e+00
  %3298 = fsub fast float 1.000000e+00, %3297
  %3299 = fmul fast float %3298, %3290
  %3300 = fadd fast float %3299, %3297
  %3301 = fmul fast float %3300, %3290
  %3302 = fmul fast float %3288, 2.000000e+00
  %3303 = fsub fast float 1.000000e+00, %3302
  %3304 = fmul fast float %3303, %3291
  %3305 = fadd fast float %3304, %3302
  %3306 = fmul fast float %3305, %3291
  %3307 = fmul fast float %3296, %3296
  %3308 = fmul fast float %3301, %3301
  %3309 = fmul fast float %3306, %3306
  br label %3326

; <label>:3310                                    ; preds = %3273
  %3311 = fmul fast float %312, %312
  %3312 = fmul fast float %316, %316
  %3313 = fmul fast float %320, %320
  %3314 = fadd fast float %3311, -1.000000e+00
  %3315 = fadd fast float %3312, -1.000000e+00
  %3316 = fadd fast float %3313, -1.000000e+00
  %3317 = fmul fast float %3162, %3314
  %3318 = fmul fast float %3162, %3315
  %3319 = fmul fast float %3162, %3316
  %3320 = fadd fast float %3317, 1.000000e+00
  %3321 = fadd fast float %3318, 1.000000e+00
  %3322 = fadd fast float %3319, 1.000000e+00
  %3323 = fmul fast float %3320, %3137
  %3324 = fmul fast float %3321, %3138
  %3325 = fmul fast float %3322, %3139
  br label %3326

; <label>:3326                                    ; preds = %3310, %3276, %3167, %3123
  %3327 = phi float [ %3272, %3167 ], [ %3148, %3276 ], [ %3148, %3310 ], [ 0x3FA23C0BE0000000, %3123 ]
  %3328 = phi float [ %3264, %3167 ], [ %3307, %3276 ], [ %3323, %3310 ], [ 1.000000e+00, %3123 ]
  %3329 = phi float [ %3265, %3167 ], [ %3308, %3276 ], [ %3324, %3310 ], [ 1.000000e+00, %3123 ]
  %3330 = phi float [ %3266, %3167 ], [ %3309, %3276 ], [ %3325, %3310 ], [ 1.000000e+00, %3123 ]
  %3331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3332 = extractvalue %dx.types.CBufRet.i32 %3331, 1
  %3333 = and i32 %3332, 1
  %3334 = icmp ne i32 %3333, 0
  %3335 = add i32 %30, 356
  %3336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3335, i32 undef)  ; BufferLoad(srv,index,wot)
  %3337 = extractvalue %dx.types.ResRet.i32 %3336, 0
  %3338 = and i32 %3337, 32
  %3339 = icmp ne i32 %3338, 0
  %3340 = and i1 %3334, %3339
  %3341 = select i1 %3340, float 1.000000e+00, float %3328
  %3342 = select i1 %3340, float 0x3FD3333340000000, float %3329
  %3343 = select i1 %3340, float 0x3FD3333340000000, float %3330
  %3344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3345 = extractvalue %dx.types.ResRet.i32 %3344, 0
  %3346 = and i32 %3345, 32
  %3347 = icmp eq i32 %3346, 0
  br i1 %3347, label %3420, label %3348

; <label>:3348                                    ; preds = %3326
  %3349 = add i32 %30, 140
  %3350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3349, i32 undef)  ; BufferLoad(srv,index,wot)
  %3351 = extractvalue %dx.types.ResRet.i32 %3350, 0
  %3352 = add i32 %30, 388
  %3353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3352, i32 undef)  ; BufferLoad(srv,index,wot)
  %3354 = extractvalue %dx.types.ResRet.i32 %3353, 0
  %3355 = add i32 %3354, 0
  %3356 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3355, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3357 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3356, %dx.types.Handle %65, float %2933, float %2934, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3358 = extractvalue %dx.types.ResRet.f32 %3357, 0
  %3359 = extractvalue %dx.types.ResRet.f32 %3357, 1
  %3360 = extractvalue %dx.types.ResRet.f32 %3357, 2
  %3361 = extractvalue %dx.types.ResRet.f32 %3357, 3
  %3362 = and i32 %3351, 255
  %3363 = uitofp i32 %3362 to float
  %3364 = lshr i32 %3351, 8
  %3365 = and i32 %3364, 255
  %3366 = uitofp i32 %3365 to float
  %3367 = lshr i32 %3351, 16
  %3368 = and i32 %3367, 255
  %3369 = uitofp i32 %3368 to float
  %3370 = fmul fast float %3369, 0x3F70101000000000
  %3371 = fmul fast float %3358, %3363
  %3372 = fadd fast float %3371, %3366
  %3373 = fmul fast float %3372, 0x3F70101000000000
  %3374 = fadd fast float %3359, -5.000000e-01
  %3375 = fadd fast float %3361, -5.000000e-01
  %3376 = fmul fast float %3374, %3370
  %3377 = fmul fast float %3375, %3370
  %3378 = fadd fast float %3376, 5.000000e-01
  %3379 = fadd fast float %3377, 5.000000e-01
  %3380 = fmul fast float %3378, 2.000000e+00
  %3381 = fadd fast float %3380, -1.000000e+00
  %3382 = fmul fast float %3379, 2.000000e+00
  %3383 = fadd fast float %3382, -1.000000e+00
  %3384 = fadd fast float %3381, %3383
  %3385 = fmul fast float %3384, 5.000000e-01
  %3386 = fsub fast float %3381, %3383
  %3387 = fmul fast float %3386, 5.000000e-01
  %3388 = call float @dx.op.unary.f32(i32 6, float %3385)  ; FAbs(value)
  %3389 = fsub fast float 1.000000e+00, %3388
  %3390 = call float @dx.op.unary.f32(i32 6, float %3387)  ; FAbs(value)
  %3391 = fsub fast float %3389, %3390
  %3392 = call float @dx.op.dot3.f32(i32 55, float %3385, float %3387, float %3391, float %3385, float %3387, float %3391)  ; Dot3(ax,ay,az,bx,by,bz)
  %3393 = call float @dx.op.unary.f32(i32 25, float %3392)  ; Rsqrt(value)
  %3394 = fmul fast float %3385, %3393
  %3395 = fmul fast float %3387, %3393
  %3396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3397 = extractvalue %dx.types.ResRet.i32 %3396, 0
  %3398 = and i32 %3397, 67108864
  %3399 = icmp eq i32 %3398, 0
  br i1 %3399, label %3416, label %3400

; <label>:3400                                    ; preds = %3348
  %3401 = add i32 %30, 328
  %3402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3401, i32 undef)  ; BufferLoad(srv,index,wot)
  %3403 = extractvalue %dx.types.ResRet.i32 %3402, 0
  %3404 = and i32 %3403, 65535
  %3405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3404)  ; LegacyF16ToF32(value)
  %3406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2843, i32 undef)  ; BufferLoad(srv,index,wot)
  %3407 = extractvalue %dx.types.ResRet.i32 %3406, 0
  %3408 = and i32 %3407, 65535
  %3409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3408)  ; LegacyF16ToF32(value)
  %3410 = lshr i32 %3403, 16
  %3411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3410)  ; LegacyF16ToF32(value)
  %3412 = fsub fast float %3373, %3411
  %3413 = fmul fast float %3412, %3405
  %3414 = fadd fast float %3413, %3409
  %3415 = call float @dx.op.unary.f32(i32 7, float %3414)  ; Saturate(value)
  br label %3416

; <label>:3416                                    ; preds = %3400, %3348
  %3417 = phi float [ %3415, %3400 ], [ %3373, %3348 ]
  %3418 = call float @dx.op.dot2.f32(i32 54, float %3394, float %3395, float %2837, float %2838)  ; Dot2(ax,ay,bx,by)
  %3419 = call float @dx.op.dot2.f32(i32 54, float %3394, float %3395, float %2839, float %2840)  ; Dot2(ax,ay,bx,by)
  br label %3420

; <label>:3420                                    ; preds = %3416, %3326
  %3421 = phi float [ %3417, %3416 ], [ 0x3FD6666660000000, %3326 ]
  %3422 = phi float [ %3418, %3416 ], [ 0.000000e+00, %3326 ]
  %3423 = phi float [ %3419, %3416 ], [ 0.000000e+00, %3326 ]
  %3424 = phi float [ %3360, %3416 ], [ 1.000000e+00, %3326 ]
  %3425 = add i32 %30, 208
  %3426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.i32 %3426, 0
  %3428 = lshr i32 %3427, 22
  %3429 = shl nuw nsw i32 %3428, 5
  %3430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3429)  ; LegacyF16ToF32(value)
  %3431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3432 = extractvalue %dx.types.ResRet.i32 %3431, 0
  %3433 = and i32 %3432, 64
  %3434 = icmp eq i32 %3433, 0
  br i1 %3434, label %3468, label %3435

; <label>:3435                                    ; preds = %3420
  %3436 = add i32 %30, 404
  %3437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3438 = extractvalue %dx.types.ResRet.i32 %3437, 0
  %3439 = add i32 %3438, 0
  %3440 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3439, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3442 = extractvalue %dx.types.ResRet.i32 %3441, 0
  %3443 = and i32 %3442, 131072
  %3444 = icmp eq i32 %3443, 0
  %3445 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3440, %dx.types.Handle %65, float %2933, float %2934, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3446 = extractvalue %dx.types.ResRet.f32 %3445, 0
  %3447 = extractvalue %dx.types.ResRet.f32 %3445, 1
  %3448 = extractvalue %dx.types.ResRet.f32 %3445, 2
  %3449 = fmul fast float %3446, %300
  %3450 = fmul fast float %3447, %303
  %3451 = fmul fast float %3448, %306
  br i1 %3444, label %3458, label %3452

; <label>:3452                                    ; preds = %3435
  %3453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3454 = extractvalue %dx.types.CBufRet.f32 %3453, 0
  %3455 = fmul fast float %3454, %3449
  %3456 = fmul fast float %3454, %3450
  %3457 = fmul fast float %3454, %3451
  br label %3458

; <label>:3458                                    ; preds = %3452, %3435
  %3459 = phi float [ %3455, %3452 ], [ %3449, %3435 ]
  %3460 = phi float [ %3456, %3452 ], [ %3450, %3435 ]
  %3461 = phi float [ %3457, %3452 ], [ %3451, %3435 ]
  %3462 = fmul fast float %3459, %3430
  %3463 = select i1 %168, float %3462, float %3459
  %3464 = call float @dx.op.dot3.f32(i32 55, float %3463, float %3460, float %3461, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3465 = select i1 %168, float 0.000000e+00, float %3459
  %3466 = select i1 %168, float %3464, float %3460
  %3467 = select i1 %168, float 0.000000e+00, float %3461
  br label %3468

; <label>:3468                                    ; preds = %3458, %3420
  %3469 = phi float [ %3465, %3458 ], [ 0.000000e+00, %3420 ]
  %3470 = phi float [ %3466, %3458 ], [ 0.000000e+00, %3420 ]
  %3471 = phi float [ %3467, %3458 ], [ 0.000000e+00, %3420 ]
  %3472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3473 = extractvalue %dx.types.ResRet.i32 %3472, 0
  %3474 = and i32 %3473, 10240
  %3475 = icmp eq i32 %3474, 0
  br i1 %3475, label %3520, label %3476

; <label>:3476                                    ; preds = %3468
  %3477 = add i32 %30, 468
  %3478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3477, i32 undef)  ; BufferLoad(srv,index,wot)
  %3479 = extractvalue %dx.types.ResRet.i32 %3478, 0
  %3480 = add i32 %3479, 0
  %3481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3482 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3481, %dx.types.Handle %66, float %2933, float %2934, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3483 = extractvalue %dx.types.ResRet.f32 %3482, 1
  %3484 = extractvalue %dx.types.ResRet.f32 %3482, 3
  %3485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.i32 %3485, 0
  %3487 = and i32 %3486, 1048576
  %3488 = icmp ne i32 %3487, 0
  %3489 = and i32 %3486, 8192
  %3490 = icmp eq i32 %3489, 0
  br i1 %3490, label %3506, label %3491

; <label>:3491                                    ; preds = %3476
  %3492 = extractvalue %dx.types.ResRet.f32 %3482, 2
  %3493 = select i1 %3488, float %3492, float %3483
  %3494 = extractvalue %dx.types.ResRet.f32 %3482, 0
  %3495 = select i1 %3488, float %3494, float %3483
  %3496 = add i32 %30, 144
  %3497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3496, i32 undef)  ; BufferLoad(srv,index,wot)
  %3498 = extractvalue %dx.types.ResRet.i32 %3497, 0
  %3499 = lshr i32 %3498, 16
  %3500 = and i32 %3499, 255
  %3501 = uitofp i32 %3500 to float
  %3502 = fmul fast float %3501, 0x3F80101020000000
  %3503 = fmul fast float %3502, %3495
  %3504 = fmul fast float %3502, %3483
  %3505 = fmul fast float %3502, %3493
  br label %3506

; <label>:3506                                    ; preds = %3491, %3476
  %3507 = phi float [ %3503, %3491 ], [ 0.000000e+00, %3476 ]
  %3508 = phi float [ %3504, %3491 ], [ 0.000000e+00, %3476 ]
  %3509 = phi float [ %3505, %3491 ], [ 0.000000e+00, %3476 ]
  %3510 = and i32 %3486, 2048
  %3511 = icmp eq i32 %3510, 0
  br i1 %3511, label %3520, label %3512

; <label>:3512                                    ; preds = %3506
  %3513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3514 = extractvalue %dx.types.ResRet.i32 %3513, 0
  %3515 = shl i32 %3514, 4
  %3516 = and i32 %3515, 32752
  %3517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3516)  ; LegacyF16ToF32(value)
  %3518 = fmul fast float %3517, %3484
  %3519 = call float @dx.op.binary.f32(i32 35, float %3518, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3520

; <label>:3520                                    ; preds = %3512, %3506, %3468
  %3521 = phi float [ %3507, %3512 ], [ %3507, %3506 ], [ 0.000000e+00, %3468 ]
  %3522 = phi float [ %3508, %3512 ], [ %3508, %3506 ], [ 0.000000e+00, %3468 ]
  %3523 = phi float [ %3509, %3512 ], [ %3509, %3506 ], [ 0.000000e+00, %3468 ]
  %3524 = phi float [ %3519, %3512 ], [ 0x3F70101020000000, %3506 ], [ 0x3F70101020000000, %3468 ]
  %3525 = add i32 %30, 144
  %3526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3525, i32 undef)  ; BufferLoad(srv,index,wot)
  %3527 = extractvalue %dx.types.ResRet.i32 %3526, 0
  %3528 = and i32 %3527, 255
  %3529 = uitofp i32 %3528 to float
  %3530 = lshr i32 %3527, 8
  %3531 = and i32 %3530, 255
  %3532 = uitofp i32 %3531 to float
  %3533 = call float @dx.op.dot3.f32(i32 55, float %3341, float %3342, float %3343, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3534 = fmul fast float %3532, %3533
  %3535 = fadd fast float %3534, %3529
  %3536 = fmul fast float %3535, 0x3F70101020000000
  %3537 = call float @dx.op.unary.f32(i32 7, float %3536)  ; Saturate(value)
  br i1 %2825, label %3538, label %3546

; <label>:3538                                    ; preds = %3520
  %3539 = fsub fast float 1.000000e+00, %3121
  %3540 = fmul fast float %3539, %2810
  %3541 = fmul fast float %3539, %2811
  %3542 = fmul fast float %3539, %2812
  %3543 = fmul fast float %3539, %2813
  %3544 = fmul fast float %3539, %2814
  %3545 = fmul fast float %3539, %2815
  br label %3546

; <label>:3546                                    ; preds = %3538, %3520
  %3547 = phi float [ %3540, %3538 ], [ %2810, %3520 ]
  %3548 = phi float [ %3541, %3538 ], [ %2811, %3520 ]
  %3549 = phi float [ %3542, %3538 ], [ %2812, %3520 ]
  %3550 = phi float [ %3543, %3538 ], [ %2813, %3520 ]
  %3551 = phi float [ %3544, %3538 ], [ %2814, %3520 ]
  %3552 = phi float [ %3545, %3538 ], [ %2815, %3520 ]
  %3553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3554 = extractvalue %dx.types.ResRet.i32 %3553, 0
  %3555 = and i32 %3554, 3
  %3556 = icmp eq i32 %3555, 3
  br i1 %3556, label %3635, label %3557

; <label>:3557                                    ; preds = %3546
  %3558 = and i32 %3554, 16
  %3559 = icmp ne i32 %3558, 0
  %3560 = select i1 %3559, float %3121, float 0.000000e+00
  %3561 = icmp eq i32 %3555, 0
  br i1 %3561, label %3562, label %3590

; <label>:3562                                    ; preds = %3557
  %3563 = and i32 %3554, 64
  %3564 = icmp ne i32 %3563, 0
  %3565 = select i1 %3564, float %3121, float 0.000000e+00
  %3566 = fsub fast float %3341, %3547
  %3567 = fsub fast float %3342, %3548
  %3568 = fsub fast float %3343, %3549
  %3569 = fmul fast float %3560, %3566
  %3570 = fmul fast float %3560, %3567
  %3571 = fmul fast float %3560, %3568
  %3572 = fadd fast float %3569, %3547
  %3573 = fadd fast float %3570, %3548
  %3574 = fadd fast float %3571, %3549
  %3575 = fsub fast float %3327, %2819
  %3576 = fmul fast float %3560, %3575
  %3577 = fadd fast float %3576, %2819
  %3578 = fsub fast float %3469, %3550
  %3579 = fsub fast float %3470, %3551
  %3580 = fsub fast float %3471, %3552
  %3581 = fmul fast float %3565, %3578
  %3582 = fmul fast float %3565, %3579
  %3583 = fmul fast float %3565, %3580
  %3584 = fadd fast float %3581, %3550
  %3585 = fadd fast float %3582, %3551
  %3586 = fadd fast float %3583, %3552
  %3587 = fsub fast float %3537, %2823
  %3588 = fmul fast float %3560, %3587
  %3589 = fadd fast float %3588, %2823
  br label %3635

; <label>:3590                                    ; preds = %3557
  %3591 = icmp eq i32 %3555, 1
  br i1 %3591, label %3592, label %3605

; <label>:3592                                    ; preds = %3590
  %3593 = fadd fast float %3341, -1.000000e+00
  %3594 = fadd fast float %3342, -1.000000e+00
  %3595 = fadd fast float %3343, -1.000000e+00
  %3596 = fmul fast float %3560, %3593
  %3597 = fmul fast float %3560, %3594
  %3598 = fmul fast float %3560, %3595
  %3599 = fadd fast float %3596, 1.000000e+00
  %3600 = fadd fast float %3597, 1.000000e+00
  %3601 = fadd fast float %3598, 1.000000e+00
  %3602 = fmul fast float %3599, %3547
  %3603 = fmul fast float %3600, %3548
  %3604 = fmul fast float %3601, %3549
  br label %3635

; <label>:3605                                    ; preds = %3590
  %3606 = icmp eq i32 %3555, 2
  br i1 %3606, label %3607, label %3635

; <label>:3607                                    ; preds = %3605
  %3608 = call float @dx.op.unary.f32(i32 24, float %3341)  ; Sqrt(value)
  %3609 = call float @dx.op.unary.f32(i32 24, float %3342)  ; Sqrt(value)
  %3610 = call float @dx.op.unary.f32(i32 24, float %3343)  ; Sqrt(value)
  %3611 = fadd fast float %3608, -5.000000e-01
  %3612 = fadd fast float %3609, -5.000000e-01
  %3613 = fadd fast float %3610, -5.000000e-01
  %3614 = fmul fast float %3611, %3560
  %3615 = fmul fast float %3612, %3560
  %3616 = fmul fast float %3613, %3560
  %3617 = fadd fast float %3614, 5.000000e-01
  %3618 = fadd fast float %3615, 5.000000e-01
  %3619 = fadd fast float %3616, 5.000000e-01
  %3620 = fmul fast float %3617, 2.000000e+00
  %3621 = fsub fast float 1.000000e+00, %3620
  %3622 = fmul fast float %3621, %3547
  %3623 = fadd fast float %3622, %3620
  %3624 = fmul fast float %3623, %3547
  %3625 = fmul fast float %3618, 2.000000e+00
  %3626 = fsub fast float 1.000000e+00, %3625
  %3627 = fmul fast float %3626, %3548
  %3628 = fadd fast float %3627, %3625
  %3629 = fmul fast float %3628, %3548
  %3630 = fmul fast float %3619, 2.000000e+00
  %3631 = fsub fast float 1.000000e+00, %3630
  %3632 = fmul fast float %3631, %3549
  %3633 = fadd fast float %3632, %3630
  %3634 = fmul fast float %3633, %3549
  br label %3635

; <label>:3635                                    ; preds = %3607, %3605, %3592, %3562, %3546
  %3636 = phi float [ %3547, %3546 ], [ %3624, %3607 ], [ %3547, %3605 ], [ %3602, %3592 ], [ %3572, %3562 ]
  %3637 = phi float [ %3548, %3546 ], [ %3629, %3607 ], [ %3548, %3605 ], [ %3603, %3592 ], [ %3573, %3562 ]
  %3638 = phi float [ %3549, %3546 ], [ %3634, %3607 ], [ %3549, %3605 ], [ %3604, %3592 ], [ %3574, %3562 ]
  %3639 = phi float [ %3550, %3546 ], [ %3550, %3607 ], [ %3550, %3605 ], [ %3550, %3592 ], [ %3584, %3562 ]
  %3640 = phi float [ %3551, %3546 ], [ %3551, %3607 ], [ %3551, %3605 ], [ %3551, %3592 ], [ %3585, %3562 ]
  %3641 = phi float [ %3552, %3546 ], [ %3552, %3607 ], [ %3552, %3605 ], [ %3552, %3592 ], [ %3586, %3562 ]
  %3642 = phi float [ %2819, %3546 ], [ %2819, %3607 ], [ %2819, %3605 ], [ %2819, %3592 ], [ %3577, %3562 ]
  %3643 = phi float [ %2823, %3546 ], [ %2823, %3607 ], [ %2823, %3605 ], [ %2823, %3592 ], [ %3589, %3562 ]
  %3644 = and i32 %3554, 12
  %3645 = icmp eq i32 %3644, 12
  br i1 %3645, label %3752, label %3646

; <label>:3646                                    ; preds = %3635
  %3647 = and i32 %3554, 2097184
  %3648 = icmp eq i32 %3647, 2097184
  %3649 = select i1 %3648, float %3121, float 0.000000e+00
  %3650 = and i32 %3554, 4194336
  %3651 = icmp eq i32 %3650, 4194336
  %3652 = select i1 %3651, float %3121, float 0.000000e+00
  %3653 = and i32 %3554, 8388640
  %3654 = icmp eq i32 %3653, 8388640
  %3655 = select i1 %3654, float %3121, float 0.000000e+00
  %3656 = and i32 %3554, 2048
  %3657 = icmp ne i32 %3656, 0
  %3658 = select i1 %3657, float %3121, float 0.000000e+00
  %3659 = and i32 %3554, 8192
  %3660 = icmp ne i32 %3659, 0
  %3661 = select i1 %3660, float %3121, float 0.000000e+00
  %3662 = icmp eq i32 %3644, 0
  br i1 %3662, label %3663, label %3688

; <label>:3663                                    ; preds = %3646
  %3664 = fsub fast float %3422, %2808
  %3665 = fsub fast float %3423, %2809
  %3666 = fmul fast float %3649, %3664
  %3667 = fmul fast float %3649, %3665
  %3668 = fadd fast float %3666, %2808
  %3669 = fadd fast float %3667, %2809
  %3670 = fsub fast float %3424, %2821
  %3671 = fmul fast float %3652, %3670
  %3672 = fadd fast float %3671, %2821
  %3673 = fsub fast float %3421, %2820
  %3674 = fmul fast float %3655, %3673
  %3675 = fadd fast float %3674, %2820
  %3676 = fsub fast float %3524, %2822
  %3677 = fmul fast float %3658, %3676
  %3678 = fadd fast float %3677, %2822
  %3679 = fsub fast float %3521, %2816
  %3680 = fsub fast float %3522, %2817
  %3681 = fsub fast float %3523, %2818
  %3682 = fmul fast float %3661, %3679
  %3683 = fmul fast float %3661, %3680
  %3684 = fmul fast float %3661, %3681
  %3685 = fadd fast float %3682, %2816
  %3686 = fadd fast float %3683, %2817
  %3687 = fadd fast float %3684, %2818
  br label %3752

; <label>:3688                                    ; preds = %3646
  %3689 = icmp eq i32 %3644, 4
  br i1 %3689, label %3690, label %3730

; <label>:3690                                    ; preds = %3688
  %3691 = fmul fast float %3649, %3422
  %3692 = fmul fast float %3649, %3423
  %3693 = fadd fast float %3691, %2808
  %3694 = fadd fast float %3692, %2809
  %3695 = call float @dx.op.binary.f32(i32 36, float %2821, float %3424)  ; FMin(a,b)
  %3696 = fsub fast float %3695, %2821
  %3697 = fmul fast float %3696, %3652
  %3698 = fadd fast float %3697, %2821
  %3699 = fadd fast float %3421, %2820
  %3700 = fmul fast float %3699, 0x3FF337FAE0000000
  %3701 = fmul fast float %2820, %2820
  %3702 = fmul fast float %3421, %3421
  %3703 = fadd fast float %3702, %3701
  %3704 = fmul fast float %3703, 0x3FE5152B00000000
  %3705 = fmul fast float %2820, 0xBFCC1F85E0000000
  %3706 = fmul fast float %3705, %3421
  %3707 = fadd fast float %3706, 0xBFE1363700000000
  %3708 = fadd fast float %3707, %3700
  %3709 = fsub fast float %3708, %3704
  %3710 = fmul fast float %3699, 0x3FBA6F0D00000000
  %3711 = fmul fast float %3703, 0x3FD0432880000000
  %3712 = fmul fast float %2820, 0xBFEF110800000000
  %3713 = fmul fast float %3712, %3421
  %3714 = fadd fast float %3713, 1.000000e+00
  %3715 = fsub fast float %3714, %3710
  %3716 = fadd fast float %3715, %3711
  %3717 = fdiv fast float %3709, %3716
  %3718 = call float @dx.op.unary.f32(i32 7, float %3717)  ; Saturate(value)
  %3719 = fsub fast float %3718, %2820
  %3720 = fmul fast float %3719, %3655
  %3721 = fadd fast float %3720, %2820
  %3722 = fmul fast float %3658, %3524
  %3723 = fadd fast float %3722, %2822
  %3724 = fmul fast float %3661, %3521
  %3725 = fmul fast float %3661, %3522
  %3726 = fmul fast float %3661, %3523
  %3727 = fadd fast float %3724, %2816
  %3728 = fadd fast float %3725, %2817
  %3729 = fadd fast float %3726, %2818
  br label %3752

; <label>:3730                                    ; preds = %3688
  %3731 = icmp eq i32 %3644, 8
  br i1 %3731, label %3732, label %3752

; <label>:3732                                    ; preds = %3730
  %3733 = fmul fast float %3649, %3422
  %3734 = fmul fast float %3649, %3423
  %3735 = fadd fast float %3733, %2808
  %3736 = fadd fast float %3734, %2809
  %3737 = call float @dx.op.binary.f32(i32 36, float %2821, float %3424)  ; FMin(a,b)
  %3738 = fsub fast float %3737, %2821
  %3739 = fmul fast float %3738, %3652
  %3740 = fadd fast float %3739, %2821
  %3741 = fsub fast float %3421, %2820
  %3742 = fmul fast float %3655, %3741
  %3743 = fadd fast float %3742, %2820
  %3744 = fmul fast float %3658, %3524
  %3745 = fadd fast float %3744, %2822
  %3746 = fmul fast float %3661, %3521
  %3747 = fmul fast float %3661, %3522
  %3748 = fmul fast float %3661, %3523
  %3749 = fadd fast float %3746, %2816
  %3750 = fadd fast float %3747, %2817
  %3751 = fadd fast float %3748, %2818
  br label %3752

; <label>:3752                                    ; preds = %3732, %3730, %3690, %3663, %3635, %3120, %2824, %2807
  %3753 = phi float [ %2808, %3635 ], [ %2808, %3120 ], [ %2808, %2807 ], [ %2808, %2824 ], [ %3668, %3663 ], [ %3693, %3690 ], [ %2808, %3730 ], [ %3735, %3732 ]
  %3754 = phi float [ %2809, %3635 ], [ %2809, %3120 ], [ %2809, %2807 ], [ %2809, %2824 ], [ %3669, %3663 ], [ %3694, %3690 ], [ %2809, %3730 ], [ %3736, %3732 ]
  %3755 = phi float [ %3636, %3635 ], [ %2810, %3120 ], [ %2810, %2807 ], [ %2810, %2824 ], [ %3636, %3663 ], [ %3636, %3690 ], [ %3636, %3730 ], [ %3636, %3732 ]
  %3756 = phi float [ %3637, %3635 ], [ %2811, %3120 ], [ %2811, %2807 ], [ %2811, %2824 ], [ %3637, %3663 ], [ %3637, %3690 ], [ %3637, %3730 ], [ %3637, %3732 ]
  %3757 = phi float [ %3638, %3635 ], [ %2812, %3120 ], [ %2812, %2807 ], [ %2812, %2824 ], [ %3638, %3663 ], [ %3638, %3690 ], [ %3638, %3730 ], [ %3638, %3732 ]
  %3758 = phi float [ %3639, %3635 ], [ %2813, %3120 ], [ %2813, %2807 ], [ %2813, %2824 ], [ %3639, %3663 ], [ %3639, %3690 ], [ %3639, %3730 ], [ %3639, %3732 ]
  %3759 = phi float [ %3640, %3635 ], [ %2814, %3120 ], [ %2814, %2807 ], [ %2814, %2824 ], [ %3640, %3663 ], [ %3640, %3690 ], [ %3640, %3730 ], [ %3640, %3732 ]
  %3760 = phi float [ %3641, %3635 ], [ %2815, %3120 ], [ %2815, %2807 ], [ %2815, %2824 ], [ %3641, %3663 ], [ %3641, %3690 ], [ %3641, %3730 ], [ %3641, %3732 ]
  %3761 = phi float [ %2816, %3635 ], [ %2816, %3120 ], [ %2816, %2807 ], [ %2816, %2824 ], [ %3685, %3663 ], [ %3727, %3690 ], [ %2816, %3730 ], [ %3749, %3732 ]
  %3762 = phi float [ %2817, %3635 ], [ %2817, %3120 ], [ %2817, %2807 ], [ %2817, %2824 ], [ %3686, %3663 ], [ %3728, %3690 ], [ %2817, %3730 ], [ %3750, %3732 ]
  %3763 = phi float [ %2818, %3635 ], [ %2818, %3120 ], [ %2818, %2807 ], [ %2818, %2824 ], [ %3687, %3663 ], [ %3729, %3690 ], [ %2818, %3730 ], [ %3751, %3732 ]
  %3764 = phi float [ %3642, %3635 ], [ %2819, %3120 ], [ %2819, %2807 ], [ %2819, %2824 ], [ %3642, %3663 ], [ %3642, %3690 ], [ %3642, %3730 ], [ %3642, %3732 ]
  %3765 = phi float [ %2820, %3635 ], [ %2820, %3120 ], [ %2820, %2807 ], [ %2820, %2824 ], [ %3675, %3663 ], [ %3721, %3690 ], [ %2820, %3730 ], [ %3743, %3732 ]
  %3766 = phi float [ %2821, %3635 ], [ %2821, %3120 ], [ %2821, %2807 ], [ %2821, %2824 ], [ %3672, %3663 ], [ %3698, %3690 ], [ %2821, %3730 ], [ %3740, %3732 ]
  %3767 = phi float [ %2822, %3635 ], [ %2822, %3120 ], [ %2822, %2807 ], [ %2822, %2824 ], [ %3678, %3663 ], [ %3723, %3690 ], [ %2822, %3730 ], [ %3745, %3732 ]
  %3768 = phi float [ %3643, %3635 ], [ %2823, %3120 ], [ %2823, %2807 ], [ %2823, %2824 ], [ %3643, %3663 ], [ %3643, %3690 ], [ %3643, %3730 ], [ %3643, %3732 ]
  %3769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3770 = extractvalue %dx.types.CBufRet.f32 %3769, 0
  %3771 = call float @dx.op.dot2.f32(i32 54, float %3753, float %3754, float %3753, float %3754)  ; Dot2(ax,ay,bx,by)
  %3772 = fmul fast float %3771, 0x3FE3333340000000
  %3773 = fsub fast float 1.000000e+00, %3772
  %3774 = call float @dx.op.dot3.f32(i32 55, float %3753, float %3754, float %3773, float %3753, float %3754, float %3773)  ; Dot3(ax,ay,az,bx,by,bz)
  %3775 = call float @dx.op.unary.f32(i32 25, float %3774)  ; Rsqrt(value)
  %3776 = fmul fast float %3775, %3753
  %3777 = fmul fast float %3775, %3754
  %3778 = fmul fast float %3773, %3775
  %3779 = fmul fast float %3778, %76
  %3780 = fmul fast float %3778, %77
  %3781 = fmul fast float %3778, %78
  %3782 = fmul fast float %3776, %50
  %3783 = fmul fast float %3776, %51
  %3784 = fmul fast float %3776, %52
  %3785 = fadd fast float %3779, %3782
  %3786 = fadd fast float %3780, %3783
  %3787 = fadd fast float %3781, %3784
  %3788 = fmul fast float %88, %3777
  %3789 = fmul fast float %89, %3777
  %3790 = fmul fast float %90, %3777
  %3791 = fadd fast float %3785, %3788
  %3792 = fadd fast float %3786, %3789
  %3793 = fadd fast float %3787, %3790
  %3794 = call float @dx.op.dot3.f32(i32 55, float %3791, float %3792, float %3793, float %3791, float %3792, float %3793)  ; Dot3(ax,ay,az,bx,by,bz)
  %3795 = call float @dx.op.unary.f32(i32 25, float %3794)  ; Rsqrt(value)
  %3796 = fmul fast float %3791, %3795
  %3797 = fmul fast float %3792, %3795
  %3798 = fmul fast float %3793, %3795
  %3799 = fadd fast float %3764, 0xBFB99999A0000000
  %3800 = call float @dx.op.unary.f32(i32 7, float %3799)  ; Saturate(value)
  %3801 = fmul fast float %3800, 0x3FF1C71C80000000
  %3802 = call float @dx.op.binary.f32(i32 36, float %3764, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3803 = fsub fast float 1.000000e+00, %3801
  %3804 = call float @dx.op.unary.f32(i32 7, float %3803)  ; Saturate(value)
  %3805 = fmul fast float %3804, %3755
  %3806 = fmul fast float %3804, %3756
  %3807 = fmul fast float %3804, %3757
  %3808 = call float @dx.op.unary.f32(i32 7, float %3805)  ; Saturate(value)
  %3809 = call float @dx.op.unary.f32(i32 7, float %3806)  ; Saturate(value)
  %3810 = call float @dx.op.unary.f32(i32 7, float %3807)  ; Saturate(value)
  %3811 = fmul fast float %3801, %3755
  %3812 = fmul fast float %3801, %3756
  %3813 = fmul fast float %3801, %3757
  %3814 = fadd fast float %3811, %3802
  %3815 = fadd fast float %3812, %3802
  %3816 = fadd fast float %3813, %3802
  %3817 = call float @dx.op.unary.f32(i32 7, float %3814)  ; Saturate(value)
  %3818 = call float @dx.op.unary.f32(i32 7, float %3815)  ; Saturate(value)
  %3819 = call float @dx.op.unary.f32(i32 7, float %3816)  ; Saturate(value)
  %3820 = call float @dx.op.unary.f32(i32 7, float %3765)  ; Saturate(value)
  %3821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %3822 = extractvalue %dx.types.ResRet.i32 %3821, 0
  %3823 = and i32 %3822, 1
  %3824 = icmp eq i32 %3823, 0
  br i1 %3824, label %3839, label %3825

; <label>:3825                                    ; preds = %3752
  %3826 = call float @dx.op.binary.f32(i32 35, float %3809, float %3810)  ; FMax(a,b)
  %3827 = call float @dx.op.binary.f32(i32 35, float %3808, float %3826)  ; FMax(a,b)
  %3828 = fcmp fast ogt float %3827, 0.000000e+00
  %3829 = bitcast float %3827 to i32
  %3830 = sub nsw i32 2129859010, %3829
  %3831 = bitcast i32 %3830 to float
  %3832 = select i1 %3828, float %3831, float 0.000000e+00
  %3833 = fmul fast float %3808, %3761
  %3834 = fmul fast float %3809, %3762
  %3835 = fmul fast float %3810, %3763
  %3836 = fmul fast float %3833, %3832
  %3837 = fmul fast float %3834, %3832
  %3838 = fmul fast float %3835, %3832
  br label %3839

; <label>:3839                                    ; preds = %3825, %3752
  %3840 = phi float [ %3836, %3825 ], [ %3761, %3752 ]
  %3841 = phi float [ %3837, %3825 ], [ %3762, %3752 ]
  %3842 = phi float [ %3838, %3825 ], [ %3763, %3752 ]
  %3843 = fadd fast float %3808, 0xBFD51EB860000000
  %3844 = fadd fast float %3809, 0xBFD51EB860000000
  %3845 = fadd fast float %3810, 0xBFD51EB860000000
  %3846 = fmul fast float %3843, %3843
  %3847 = fmul fast float %3844, %3844
  %3848 = fmul fast float %3845, %3845
  %3849 = fmul fast float %3846, %3846
  %3850 = fmul fast float %3849, 1.000000e+02
  %3851 = fmul fast float %3847, %3847
  %3852 = fmul fast float %3851, 1.000000e+02
  %3853 = fmul fast float %3848, %3848
  %3854 = fmul fast float %3853, 1.000000e+02
  %3855 = fadd fast float %3850, 3.500000e+00
  %3856 = fadd fast float %3852, 3.500000e+00
  %3857 = fadd fast float %3854, 3.500000e+00
  %3858 = call float @dx.op.binary.f32(i32 35, float %3840, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3859 = call float @dx.op.binary.f32(i32 35, float %3841, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3860 = call float @dx.op.binary.f32(i32 35, float %3842, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3861 = fdiv fast float %3855, %3858
  %3862 = fdiv fast float %3856, %3859
  %3863 = fdiv fast float %3857, %3860
  %3864 = fmul fast float %3767, 0xBFF7154760000000
  %3865 = fmul fast float %3864, %3861
  %3866 = call float @dx.op.unary.f32(i32 21, float %3865)  ; Exp(value)
  %3867 = fmul fast float %3866, 2.500000e-01
  %3868 = fmul fast float %3767, 0xBFDEC709E0000000
  %3869 = fmul fast float %3868, %3861
  %3870 = call float @dx.op.unary.f32(i32 21, float %3869)  ; Exp(value)
  %3871 = fmul fast float %3870, 7.500000e-01
  %3872 = fmul fast float %3864, %3862
  %3873 = call float @dx.op.unary.f32(i32 21, float %3872)  ; Exp(value)
  %3874 = fmul fast float %3873, 2.500000e-01
  %3875 = fmul fast float %3868, %3862
  %3876 = call float @dx.op.unary.f32(i32 21, float %3875)  ; Exp(value)
  %3877 = fmul fast float %3876, 7.500000e-01
  %3878 = fmul fast float %3864, %3863
  %3879 = call float @dx.op.unary.f32(i32 21, float %3878)  ; Exp(value)
  %3880 = fmul fast float %3879, 2.500000e-01
  %3881 = fmul fast float %3868, %3863
  %3882 = call float @dx.op.unary.f32(i32 21, float %3881)  ; Exp(value)
  %3883 = fmul fast float %3882, 7.500000e-01
  %3884 = fadd fast float %3867, %3871
  %3885 = fadd fast float %3874, %3877
  %3886 = fadd fast float %3880, %3883
  %3887 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3888 = extractvalue %dx.types.CBufRet.i32 %3887, 3
  %3889 = and i32 %3888, 8
  %3890 = icmp ne i32 %3889, 0
  %3891 = call float @dx.op.binary.f32(i32 35, float %3808, float %3755)  ; FMax(a,b)
  %3892 = call float @dx.op.binary.f32(i32 35, float %3809, float %3755)  ; FMax(a,b)
  %3893 = call float @dx.op.binary.f32(i32 35, float %3810, float %3755)  ; FMax(a,b)
  %3894 = call float @dx.op.dot3.f32(i32 55, float %3808, float %3809, float %3810, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3895 = select i1 %168, float %3755, float %3808
  %3896 = select i1 %168, float %3894, float %3809
  %3897 = select i1 %168, float 1.000000e+00, float %3810
  %3898 = select i1 %3890, float %3891, float %3895
  %3899 = select i1 %3890, float %3892, float %3896
  %3900 = select i1 %3890, float %3893, float %3897
  %3901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3902 = extractvalue %dx.types.CBufRet.f32 %3901, 0
  %3903 = extractvalue %dx.types.CBufRet.f32 %3901, 1
  %3904 = extractvalue %dx.types.CBufRet.f32 %3901, 2
  %3905 = fadd fast float %3902, %124
  %3906 = fadd fast float %3903, %125
  %3907 = fadd fast float %3904, %126
  %3908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3909 = extractvalue %dx.types.CBufRet.f32 %3908, 0
  %3910 = extractvalue %dx.types.CBufRet.f32 %3908, 1
  %3911 = fsub fast float %3905, %3909
  %3912 = fsub fast float %3906, %3910
  %3913 = fmul fast float %3911, %3911
  %3914 = fmul fast float %3912, %3912
  %3915 = fadd fast float %3913, %3914
  %3916 = call float @dx.op.unary.f32(i32 24, float %3915)  ; Sqrt(value)
  %3917 = extractvalue %dx.types.CBufRet.f32 %3908, 2
  %3918 = fcmp fast olt float %3916, %3917
  br i1 %3918, label %3919, label %3986

; <label>:3919                                    ; preds = %3839
  %3920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3921 = extractvalue %dx.types.CBufRet.f32 %3920, 0
  %3922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3923 = extractvalue %dx.types.CBufRet.f32 %3922, 0
  %3924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3925 = extractvalue %dx.types.CBufRet.f32 %3924, 0
  %3926 = extractvalue %dx.types.CBufRet.f32 %3920, 1
  %3927 = extractvalue %dx.types.CBufRet.f32 %3922, 1
  %3928 = extractvalue %dx.types.CBufRet.f32 %3924, 1
  %3929 = extractvalue %dx.types.CBufRet.f32 %3920, 3
  %3930 = extractvalue %dx.types.CBufRet.f32 %3922, 3
  %3931 = extractvalue %dx.types.CBufRet.f32 %3924, 3
  %3932 = fadd fast float %3929, %3905
  %3933 = fadd fast float %3930, %3906
  %3934 = fadd fast float %3931, %3907
  %3935 = fmul fast float %3932, %3921
  %3936 = call float @dx.op.tertiary.f32(i32 46, float %3933, float %3923, float %3935)  ; FMad(a,b,c)
  %3937 = call float @dx.op.tertiary.f32(i32 46, float %3934, float %3925, float %3936)  ; FMad(a,b,c)
  %3938 = fmul fast float %3932, %3926
  %3939 = call float @dx.op.tertiary.f32(i32 46, float %3933, float %3927, float %3938)  ; FMad(a,b,c)
  %3940 = call float @dx.op.tertiary.f32(i32 46, float %3934, float %3928, float %3939)  ; FMad(a,b,c)
  %3941 = fsub fast float %3937, %3929
  %3942 = fsub fast float %3940, %3930
  %3943 = fsub fast float %3941, %3909
  %3944 = fadd fast float %3943, %3917
  %3945 = fsub fast float %3942, %3910
  %3946 = fadd fast float %3945, %3917
  %3947 = extractvalue %dx.types.CBufRet.f32 %3908, 3
  %3948 = fmul fast float %3944, %3947
  %3949 = fmul fast float %3946, %3947
  %3950 = call float @dx.op.unary.f32(i32 7, float %3948)  ; Saturate(value)
  %3951 = call float @dx.op.unary.f32(i32 7, float %3949)  ; Saturate(value)
  %3952 = fsub fast float 1.000000e+00, %3950
  %3953 = fsub fast float 1.000000e+00, %3951
  %3954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %3952, float %3953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3955 = extractvalue %dx.types.ResRet.f32 %3954, 0
  %3956 = fcmp fast ugt float %3955, 0.000000e+00
  br i1 %3956, label %3957, label %4260

; <label>:3957                                    ; preds = %3919
  %3958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3959 = extractvalue %dx.types.CBufRet.f32 %3958, 2
  %3960 = fmul fast float %3959, %3955
  %3961 = extractvalue %dx.types.CBufRet.f32 %3958, 3
  %3962 = fadd fast float %3961, %3960
  %3963 = extractvalue %dx.types.CBufRet.f32 %3924, 2
  %3964 = fadd fast float %3962, %3931
  %3965 = fmul fast float %3937, %3925
  %3966 = call float @dx.op.tertiary.f32(i32 46, float %3940, float %3928, float %3965)  ; FMad(a,b,c)
  %3967 = call float @dx.op.tertiary.f32(i32 46, float %3964, float %3963, float %3966)  ; FMad(a,b,c)
  %3968 = fsub fast float %3967, %3931
  %3969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3970 = extractvalue %dx.types.CBufRet.f32 %3969, 2
  %3971 = fsub fast float %3968, %3970
  %3972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %26, float %3952, float %3953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3973 = extractvalue %dx.types.ResRet.f32 %3972, 0
  %3974 = extractvalue %dx.types.ResRet.f32 %3972, 1
  %3975 = extractvalue %dx.types.ResRet.f32 %3972, 2
  %3976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %26, float %3952, float %3953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3977 = extractvalue %dx.types.ResRet.f32 %3976, 0
  %3978 = extractvalue %dx.types.ResRet.f32 %3976, 1
  %3979 = extractvalue %dx.types.ResRet.f32 %3976, 2
  %3980 = fadd fast float %3977, %3973
  %3981 = fmul fast float %3980, 0x3F847AE140000000
  %3982 = fadd fast float %3978, %3974
  %3983 = fmul fast float %3982, 0x3F847AE140000000
  %3984 = fadd fast float %3979, %3975
  %3985 = fmul fast float %3984, 0x3F847AE140000000
  br label %4260

; <label>:3986                                    ; preds = %3839
  %3987 = and i32 %142, 1
  %3988 = icmp eq i32 %3987, 0
  br i1 %3988, label %4260, label %3989

; <label>:3989                                    ; preds = %3986
  %3990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3991 = extractvalue %dx.types.CBufRet.f32 %3990, 0
  %3992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3993 = extractvalue %dx.types.CBufRet.f32 %3992, 0
  %3994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3995 = extractvalue %dx.types.CBufRet.f32 %3994, 0
  %3996 = extractvalue %dx.types.CBufRet.f32 %3990, 1
  %3997 = extractvalue %dx.types.CBufRet.f32 %3992, 1
  %3998 = extractvalue %dx.types.CBufRet.f32 %3994, 1
  %3999 = extractvalue %dx.types.CBufRet.f32 %3990, 3
  %4000 = extractvalue %dx.types.CBufRet.f32 %3992, 3
  %4001 = extractvalue %dx.types.CBufRet.f32 %3994, 3
  %4002 = fadd fast float %3999, %3905
  %4003 = fadd fast float %4000, %3906
  %4004 = fadd fast float %4001, %3907
  %4005 = fmul fast float %4002, %3991
  %4006 = call float @dx.op.tertiary.f32(i32 46, float %4003, float %3993, float %4005)  ; FMad(a,b,c)
  %4007 = call float @dx.op.tertiary.f32(i32 46, float %4004, float %3995, float %4006)  ; FMad(a,b,c)
  %4008 = fmul fast float %4002, %3996
  %4009 = call float @dx.op.tertiary.f32(i32 46, float %4003, float %3997, float %4008)  ; FMad(a,b,c)
  %4010 = call float @dx.op.tertiary.f32(i32 46, float %4004, float %3998, float %4009)  ; FMad(a,b,c)
  %4011 = fsub fast float %4007, %3999
  %4012 = fsub fast float %4010, %4000
  %4013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4014 = extractvalue %dx.types.CBufRet.f32 %4013, 0
  %4015 = extractvalue %dx.types.CBufRet.f32 %4013, 1
  %4016 = extractvalue %dx.types.CBufRet.f32 %4013, 2
  %4017 = extractvalue %dx.types.CBufRet.f32 %4013, 3
  %4018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4019 = extractvalue %dx.types.CBufRet.f32 %4018, 3
  %4020 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4021 = extractvalue %dx.types.CBufRet.i32 %4020, 0
  %4022 = extractvalue %dx.types.CBufRet.i32 %4020, 1
  %4023 = udiv i32 %4022, %4021
  %4024 = fsub fast float %4011, %4014
  %4025 = fsub fast float %4012, %4015
  %4026 = call float @dx.op.binary.f32(i32 35, float %4024, float 0.000000e+00)  ; FMax(a,b)
  %4027 = call float @dx.op.binary.f32(i32 35, float %4025, float 0.000000e+00)  ; FMax(a,b)
  %4028 = call float @dx.op.binary.f32(i32 36, float %4026, float %4016)  ; FMin(a,b)
  %4029 = call float @dx.op.binary.f32(i32 36, float %4027, float %4017)  ; FMin(a,b)
  %4030 = add i32 %4021, -1
  %4031 = add i32 %4023, -1
  %4032 = fmul fast float %4028, %4019
  %4033 = fmul fast float %4029, %4019
  %4034 = fptoui float %4032 to i32
  %4035 = fptoui float %4033 to i32
  %4036 = call i32 @dx.op.binary.i32(i32 40, i32 %4034, i32 %4030)  ; UMin(a,b)
  %4037 = call i32 @dx.op.binary.i32(i32 40, i32 %4035, i32 %4031)  ; UMin(a,b)
  %4038 = mul i32 %4037, %4021
  %4039 = add i32 %4038, %4036
  %4040 = shl i32 %4039, 2
  %4041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4040, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.i32 %4041, 0
  %4043 = icmp eq i32 %4042, -1
  br i1 %4043, label %4260, label %4044

; <label>:4044                                    ; preds = %3989
  %4045 = mul i32 %4042, 148
  %4046 = add i32 %4045, 4
  %4047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4046, i32 undef)  ; BufferLoad(srv,index,wot)
  %4048 = extractvalue %dx.types.ResRet.f32 %4047, 0
  %4049 = add i32 %4045, 8
  %4050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4049, i32 undef)  ; BufferLoad(srv,index,wot)
  %4051 = extractvalue %dx.types.ResRet.f32 %4050, 0
  %4052 = add i32 %4045, 36
  %4053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4052, i32 undef)  ; BufferLoad(srv,index,wot)
  %4054 = extractvalue %dx.types.ResRet.f32 %4053, 0
  %4055 = add i32 %4045, 60
  %4056 = add i32 %4045, 92
  %4057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4056, i32 undef)  ; BufferLoad(srv,index,wot)
  %4058 = extractvalue %dx.types.ResRet.i32 %4057, 0
  %4059 = add i32 %4045, 116
  %4060 = fsub fast float %4011, %4048
  %4061 = fsub fast float %4012, %4051
  %4062 = fmul fast float %4019, %4060
  %4063 = fmul fast float %4019, %4061
  %4064 = call float @dx.op.unary.f32(i32 7, float %4062)  ; Saturate(value)
  %4065 = call float @dx.op.unary.f32(i32 7, float %4063)  ; Saturate(value)
  %4066 = fsub fast float 1.000000e+00, %4065
  %4067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4068 = extractvalue %dx.types.CBufRet.f32 %4067, 2
  %4069 = call float @dx.op.unary.f32(i32 83, float %4064)  ; DerivCoarseX(value)
  %4070 = call float @dx.op.unary.f32(i32 83, float %4066)  ; DerivCoarseX(value)
  %4071 = call float @dx.op.unary.f32(i32 84, float %4064)  ; DerivCoarseY(value)
  %4072 = call float @dx.op.unary.f32(i32 84, float %4066)  ; DerivCoarseY(value)
  %4073 = fmul fast float %4069, %4068
  %4074 = fmul fast float %4070, %4068
  %4075 = fmul fast float %4071, %4068
  %4076 = fmul fast float %4072, %4068
  %4077 = call float @dx.op.dot2.f32(i32 54, float %4075, float %4076, float %4075, float %4076)  ; Dot2(ax,ay,bx,by)
  %4078 = call float @dx.op.dot2.f32(i32 54, float %4073, float %4074, float %4073, float %4074)  ; Dot2(ax,ay,bx,by)
  %4079 = call float @dx.op.binary.f32(i32 35, float %4078, float %4077)  ; FMax(a,b)
  %4080 = call float @dx.op.unary.f32(i32 23, float %4079)  ; Log(value)
  %4081 = fmul fast float %4080, 5.000000e-01
  %4082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4082, 1
  %4084 = fadd fast float %4083, %4081
  %4085 = call float @dx.op.binary.f32(i32 35, float %4084, float 0.000000e+00)  ; FMax(a,b)
  %4086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4086, 3
  %4088 = fadd fast float %4087, %4085
  %4089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4089, 3
  %4091 = fadd fast float %4088, %4090
  %4092 = add i32 %4058, 0
  %4093 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4092, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4094 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4093, i32 0)  ; GetDimensions(handle,mipLevel)
  %4095 = extractvalue %dx.types.Dimensions %4094, 0
  %4096 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4095)  ; FirstbitLo(value)
  %4097 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4098 = extractvalue %dx.types.CBufRet.i32 %4097, 1
  %4099 = sub nsw i32 %4098, %4096
  %4100 = sitofp i32 %4099 to float
  %4101 = fsub fast float %4091, %4100
  %4102 = call float @dx.op.binary.f32(i32 35, float %4101, float 0.000000e+00)  ; FMax(a,b)
  %4103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4093, %dx.types.Handle %24, float %4064, float %4066, float %4054, float undef, i32 0, i32 0, i32 undef, float %4102)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4104 = extractvalue %dx.types.ResRet.f32 %4103, 0
  %4105 = fcmp ule float %4104, 0x3FE0101020000000
  %4106 = extractvalue %dx.types.CBufRet.i32 %4097, 0
  %4107 = and i32 %4106, 128
  %4108 = icmp ne i32 %4107, 0
  %4109 = and i1 %4105, %4108
  br i1 %4109, label %4260, label %4110

; <label>:4110                                    ; preds = %4044
  %4111 = add i32 %4045, 20
  %4112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4111, i32 undef)  ; BufferLoad(srv,index,wot)
  %4113 = extractvalue %dx.types.ResRet.f32 %4112, 0
  %4114 = add i32 %4045, 24
  %4115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4114, i32 undef)  ; BufferLoad(srv,index,wot)
  %4116 = extractvalue %dx.types.ResRet.f32 %4115, 0
  %4117 = add i32 %4045, 40
  %4118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4117, i32 undef)  ; BufferLoad(srv,index,wot)
  %4119 = extractvalue %dx.types.ResRet.f32 %4118, 0
  %4120 = add i32 %4045, 96
  %4121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4120, i32 undef)  ; BufferLoad(srv,index,wot)
  %4122 = extractvalue %dx.types.ResRet.i32 %4121, 0
  %4123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4124 = extractvalue %dx.types.CBufRet.f32 %4123, 2
  %4125 = fmul fast float %4124, %4064
  %4126 = fmul fast float %4124, %4066
  %4127 = extractvalue %dx.types.CBufRet.f32 %4123, 3
  %4128 = fadd fast float %4125, %4127
  %4129 = fadd fast float %4126, %4127
  %4130 = add i32 %4122, 0
  %4131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4130, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4132 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4131, i32 0)  ; GetDimensions(handle,mipLevel)
  %4133 = extractvalue %dx.types.Dimensions %4132, 0
  %4134 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4133)  ; FirstbitLo(value)
  %4135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.i32 %4135, 1
  %4137 = sub nsw i32 %4136, %4134
  %4138 = sitofp i32 %4137 to float
  %4139 = fsub fast float %4088, %4138
  %4140 = call float @dx.op.binary.f32(i32 35, float %4139, float 0.000000e+00)  ; FMax(a,b)
  %4141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4131, %dx.types.Handle %24, float %4128, float %4129, float %4119, float undef, i32 0, i32 0, i32 undef, float %4140)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4142 = extractvalue %dx.types.ResRet.f32 %4141, 0
  %4143 = fmul fast float %4142, %4113
  %4144 = fadd fast float %4143, %4116
  %4145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.f32 %4145, 0
  %4147 = extractvalue %dx.types.CBufRet.f32 %4145, 1
  %4148 = extractvalue %dx.types.CBufRet.f32 %4145, 2
  %4149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4150 = extractvalue %dx.types.CBufRet.f32 %4149, 3
  %4151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4152 = extractvalue %dx.types.CBufRet.f32 %4151, 3
  %4153 = extractvalue %dx.types.CBufRet.f32 %4145, 3
  %4154 = fadd fast float %4150, %4011
  %4155 = fadd fast float %4152, %4012
  %4156 = fadd fast float %4144, %4153
  %4157 = fmul fast float %4154, %4146
  %4158 = call float @dx.op.tertiary.f32(i32 46, float %4155, float %4147, float %4157)  ; FMad(a,b,c)
  %4159 = call float @dx.op.tertiary.f32(i32 46, float %4156, float %4148, float %4158)  ; FMad(a,b,c)
  %4160 = fsub fast float %4159, %4153
  %4161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4162 = extractvalue %dx.types.CBufRet.f32 %4161, 2
  %4163 = fsub fast float %4160, %4162
  %4164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4165 = extractvalue %dx.types.CBufRet.i32 %4164, 0
  %4166 = call i32 @dx.op.binary.i32(i32 40, i32 %4042, i32 %4165)  ; UMin(a,b)
  %4167 = mul i32 %4166, 36
  %4168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4167, i32 undef)  ; BufferLoad(srv,index,wot)
  %4169 = extractvalue %dx.types.ResRet.i32 %4168, 0
  %4170 = add i32 %4167, 4
  %4171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4171, 0
  %4173 = fmul fast float %4172, %4064
  %4174 = fmul fast float %4172, %4066
  %4175 = extractvalue %dx.types.CBufRet.f32 %4171, 1
  %4176 = fadd fast float %4173, %4175
  %4177 = fadd fast float %4174, %4175
  %4178 = icmp eq i32 %4169, 0
  br i1 %4178, label %4247, label %4179

; <label>:4179                                    ; preds = %4110
  br label %4180

; <label>:4180                                    ; preds = %4237, %4179
  %4181 = phi float [ %4238, %4237 ], [ 0.000000e+00, %4179 ]
  %4182 = phi float [ %4239, %4237 ], [ 0.000000e+00, %4179 ]
  %4183 = phi float [ %4240, %4237 ], [ 0.000000e+00, %4179 ]
  %4184 = phi float [ %4241, %4237 ], [ 0.000000e+00, %4179 ]
  %4185 = phi float [ %4242, %4237 ], [ 0.000000e+00, %4179 ]
  %4186 = phi float [ %4243, %4237 ], [ 0.000000e+00, %4179 ]
  %4187 = phi i32 [ %4244, %4237 ], [ 0, %4179 ]
  %4188 = shl i32 %4187, 2
  %4189 = add i32 %4055, %4188
  %4190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4189, i32 undef)  ; BufferLoad(srv,index,wot)
  %4191 = extractvalue %dx.types.ResRet.f32 %4190, 0
  %4192 = add i32 %4059, %4188
  %4193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4192, i32 undef)  ; BufferLoad(srv,index,wot)
  %4194 = extractvalue %dx.types.ResRet.i32 %4193, 0
  %4195 = add i32 %4194, 0
  %4196 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4195, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4197 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4196, i32 0)  ; GetDimensions(handle,mipLevel)
  %4198 = extractvalue %dx.types.Dimensions %4197, 0
  %4199 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4198)  ; FirstbitLo(value)
  %4200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4201 = extractvalue %dx.types.CBufRet.i32 %4200, 1
  %4202 = sub nsw i32 %4201, %4199
  %4203 = sitofp i32 %4202 to float
  %4204 = fsub fast float %4088, %4203
  %4205 = call float @dx.op.binary.f32(i32 35, float %4204, float 0.000000e+00)  ; FMax(a,b)
  %4206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4196, %dx.types.Handle %24, float %4176, float %4177, float %4191, float undef, i32 0, i32 0, i32 undef, float %4205)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4207 = extractvalue %dx.types.ResRet.f32 %4206, 0
  %4208 = fcmp fast ogt float %4207, 0.000000e+00
  br i1 %4208, label %4209, label %4237

; <label>:4209                                    ; preds = %4180
  %4210 = add i32 %4170, %4188
  %4211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4210, i32 undef)  ; BufferLoad(srv,index,wot)
  %4212 = extractvalue %dx.types.ResRet.i32 %4211, 0
  %4213 = and i32 %4212, 32767
  %4214 = mul nuw nsw i32 %4213, 928
  %4215 = add nuw nsw i32 %4214, 48
  %4216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4215, i32 undef)  ; BufferLoad(srv,index,wot)
  %4217 = extractvalue %dx.types.ResRet.f32 %4216, 0
  %4218 = extractvalue %dx.types.ResRet.f32 %4216, 1
  %4219 = extractvalue %dx.types.ResRet.f32 %4216, 2
  %4220 = add nuw nsw i32 %4214, 60
  %4221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4220, i32 undef)  ; BufferLoad(srv,index,wot)
  %4222 = extractvalue %dx.types.ResRet.f32 %4221, 0
  %4223 = extractvalue %dx.types.ResRet.f32 %4221, 1
  %4224 = extractvalue %dx.types.ResRet.f32 %4221, 2
  %4225 = fmul fast float %4217, %4207
  %4226 = fmul fast float %4218, %4207
  %4227 = fmul fast float %4219, %4207
  %4228 = fadd fast float %4225, %4181
  %4229 = fadd fast float %4226, %4182
  %4230 = fadd fast float %4227, %4183
  %4231 = fmul fast float %4222, %4207
  %4232 = fmul fast float %4223, %4207
  %4233 = fmul fast float %4224, %4207
  %4234 = fadd fast float %4231, %4184
  %4235 = fadd fast float %4232, %4185
  %4236 = fadd fast float %4233, %4186
  br label %4237

; <label>:4237                                    ; preds = %4209, %4180
  %4238 = phi float [ %4228, %4209 ], [ %4181, %4180 ]
  %4239 = phi float [ %4229, %4209 ], [ %4182, %4180 ]
  %4240 = phi float [ %4230, %4209 ], [ %4183, %4180 ]
  %4241 = phi float [ %4234, %4209 ], [ %4184, %4180 ]
  %4242 = phi float [ %4235, %4209 ], [ %4185, %4180 ]
  %4243 = phi float [ %4236, %4209 ], [ %4186, %4180 ]
  %4244 = add nuw i32 %4187, 1
  %4245 = icmp eq i32 %4244, %4169
  br i1 %4245, label %4246, label %4180

; <label>:4246                                    ; preds = %4237
  br label %4247

; <label>:4247                                    ; preds = %4246, %4110
  %4248 = phi float [ 0.000000e+00, %4110 ], [ %4238, %4246 ]
  %4249 = phi float [ 0.000000e+00, %4110 ], [ %4239, %4246 ]
  %4250 = phi float [ 0.000000e+00, %4110 ], [ %4240, %4246 ]
  %4251 = phi float [ 0.000000e+00, %4110 ], [ %4241, %4246 ]
  %4252 = phi float [ 0.000000e+00, %4110 ], [ %4242, %4246 ]
  %4253 = phi float [ 0.000000e+00, %4110 ], [ %4243, %4246 ]
  %4254 = fadd fast float %4251, %4248
  %4255 = fmul fast float %4254, 0x3F847AE140000000
  %4256 = fadd fast float %4252, %4249
  %4257 = fmul fast float %4256, 0x3F847AE140000000
  %4258 = fadd fast float %4253, %4250
  %4259 = fmul fast float %4258, 0x3F847AE140000000
  br label %4260

; <label>:4260                                    ; preds = %4247, %4044, %3989, %3986, %3957, %3919
  %4261 = phi float [ %3971, %3957 ], [ -1.310720e+05, %3919 ], [ %4163, %4247 ], [ -1.310720e+05, %3989 ], [ -1.310720e+05, %4044 ], [ -1.310720e+05, %3986 ]
  %4262 = phi float [ %3981, %3957 ], [ 0.000000e+00, %3919 ], [ %4255, %4247 ], [ 0.000000e+00, %3989 ], [ 0.000000e+00, %4044 ], [ 0.000000e+00, %3986 ]
  %4263 = phi float [ %3983, %3957 ], [ 0.000000e+00, %3919 ], [ %4257, %4247 ], [ 0.000000e+00, %3989 ], [ 0.000000e+00, %4044 ], [ 0.000000e+00, %3986 ]
  %4264 = phi float [ %3985, %3957 ], [ 0.000000e+00, %3919 ], [ %4259, %4247 ], [ 0.000000e+00, %3989 ], [ 0.000000e+00, %4044 ], [ 0.000000e+00, %3986 ]
  %4265 = phi i1 [ true, %3957 ], [ false, %3919 ], [ true, %4247 ], [ false, %3989 ], [ false, %4044 ], [ false, %3986 ]
  %4266 = and i32 %142, 3
  %4267 = icmp eq i32 %4266, 1
  %4268 = select i1 %4267, float 1.000000e+00, float 0.000000e+00
  %4269 = fsub fast float %4261, %126
  %4270 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  %4271 = select i1 %4265, float %4270, float 1.000000e+00
  %4272 = fmul fast float %4271, %4268
  %4273 = icmp eq i32 %4266, 3
  %4274 = select i1 %4273, float 1.000000e+00, float %4272
  %4275 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4274)  ; FMax(a,b)
  %4276 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4277 = fcmp fast une float %4276, 0.000000e+00
  %4278 = call float @dx.op.dot3.f32(i32 55, float %124, float %125, float %126, float %124, float %125, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %4279 = call float @dx.op.unary.f32(i32 25, float %4278)  ; Rsqrt(value)
  br i1 %4277, label %4287, label %4280

; <label>:4280                                    ; preds = %4260
  %4281 = fmul fast float %4279, %124
  %4282 = fmul fast float %4279, %125
  %4283 = fmul fast float %4279, %126
  %4284 = fsub fast float -0.000000e+00, %4281
  %4285 = fsub fast float -0.000000e+00, %4282
  %4286 = fsub fast float -0.000000e+00, %4283
  br label %4455

; <label>:4287                                    ; preds = %4260
  %4288 = fmul fast float %124, %4279
  %4289 = fsub fast float -0.000000e+00, %4288
  %4290 = fmul fast float %125, %4279
  %4291 = fsub fast float -0.000000e+00, %4290
  %4292 = fmul fast float %126, %4279
  %4293 = fsub fast float -0.000000e+00, %4292
  %4294 = call float @dx.op.dot3.f32(i32 55, float %4289, float %4291, float %4293, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %4295 = fmul fast float %4276, 2.500000e+00
  %4296 = call float @dx.op.unary.f32(i32 7, float %4295)  ; Saturate(value)
  %4297 = fmul fast float %4276, 0x4013FFFFE0000000
  %4298 = fadd fast float %4297, 0xBFFFFFFFE0000000
  %4299 = call float @dx.op.unary.f32(i32 7, float %4298)  ; Saturate(value)
  %4300 = fmul fast float %4276, 0x4004000020000000
  %4301 = fadd fast float %4300, 0xBFF8000040000000
  %4302 = call float @dx.op.unary.f32(i32 7, float %4301)  ; Saturate(value)
  %4303 = call float @dx.op.unary.f32(i32 7, float %4296)  ; Saturate(value)
  %4304 = fmul fast float %3799, 1.000000e+01
  %4305 = call float @dx.op.unary.f32(i32 7, float %4304)  ; Saturate(value)
  %4306 = fmul fast float %4305, 2.000000e+00
  %4307 = fsub fast float 3.000000e+00, %4306
  %4308 = fmul fast float %4305, %4305
  %4309 = fmul fast float %4308, %4307
  %4310 = fsub fast float 1.000000e+00, %4309
  %4311 = fsub fast float 0x3FE3333340000000, %3820
  %4312 = fmul fast float %4311, 0x400AAAAAA0000000
  %4313 = call float @dx.op.unary.f32(i32 7, float %4312)  ; Saturate(value)
  %4314 = fmul fast float %4310, %4313
  %4315 = fmul fast float %3898, 0x3FEA2B8620000000
  %4316 = fmul fast float %3899, 0x3FEA2B8620000000
  %4317 = fmul fast float %3900, 0x3FEA2B8620000000
  %4318 = fadd fast float %4315, 0x3FC81DFBA0000000
  %4319 = fmul fast float %4318, %3898
  %4320 = fadd fast float %4319, 0x3F910E6020000000
  %4321 = fadd fast float %4316, 0x3FC81DFBA0000000
  %4322 = fmul fast float %4321, %3899
  %4323 = fadd fast float %4322, 0x3F910E6020000000
  %4324 = fadd fast float %4317, 0x3FC81DFBA0000000
  %4325 = fmul fast float %4324, %3900
  %4326 = fadd fast float %4325, 0x3F910E6020000000
  %4327 = call float @dx.op.unary.f32(i32 7, float %4320)  ; Saturate(value)
  %4328 = call float @dx.op.unary.f32(i32 7, float %4323)  ; Saturate(value)
  %4329 = call float @dx.op.unary.f32(i32 7, float %4326)  ; Saturate(value)
  %4330 = fsub fast float %4327, %3898
  %4331 = fsub fast float %4328, %3899
  %4332 = fsub fast float %4329, %3900
  %4333 = fmul fast float %4330, %4303
  %4334 = fmul fast float %4333, %4314
  %4335 = fmul fast float %4331, %4303
  %4336 = fmul fast float %4335, %4314
  %4337 = fmul fast float %4332, %4303
  %4338 = fmul fast float %4337, %4314
  %4339 = fadd fast float %4334, %3898
  %4340 = fadd fast float %4336, %3899
  %4341 = fadd fast float %4338, %3900
  %4342 = fmul fast float %3766, %3766
  %4343 = fmul fast float %4342, %4342
  %4344 = fadd fast float %4299, 1.000000e+00
  %4345 = fsub fast float %4344, %4314
  %4346 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4347 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4348 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  %4349 = fsub fast float 1.000000e+00, %4343
  %4350 = call float @dx.op.binary.f32(i32 36, float %4346, float %4349)  ; FMin(a,b)
  %4351 = call float @dx.op.unary.f32(i32 7, float %4302)  ; Saturate(value)
  %4352 = call float @dx.op.binary.f32(i32 35, float %4350, float %4351)  ; FMax(a,b)
  %4353 = fadd fast float %4348, 0xBFE4CCCCC0000000
  %4354 = fmul fast float %4353, 0x4006DB6DA0000000
  %4355 = call float @dx.op.unary.f32(i32 7, float %4354)  ; Saturate(value)
  %4356 = fmul fast float %4355, 2.000000e+00
  %4357 = fsub fast float 3.000000e+00, %4356
  %4358 = bitcast float %3817 to i32
  %4359 = ashr i32 %4358, 1
  %4360 = add nsw i32 %4359, 532487669
  %4361 = bitcast i32 %4360 to float
  %4362 = fsub fast float 1.000000e+00, %4361
  %4363 = bitcast float %4362 to i32
  %4364 = sub nsw i32 2129859010, %4363
  %4365 = bitcast i32 %4364 to float
  %4366 = fmul fast float %4365, 2.000000e+00
  %4367 = bitcast float %3818 to i32
  %4368 = ashr i32 %4367, 1
  %4369 = add nsw i32 %4368, 532487669
  %4370 = bitcast i32 %4369 to float
  %4371 = fsub fast float 1.000000e+00, %4370
  %4372 = bitcast float %4371 to i32
  %4373 = sub nsw i32 2129859010, %4372
  %4374 = bitcast i32 %4373 to float
  %4375 = fmul fast float %4374, 2.000000e+00
  %4376 = bitcast float %3819 to i32
  %4377 = ashr i32 %4376, 1
  %4378 = add nsw i32 %4377, 532487669
  %4379 = bitcast i32 %4378 to float
  %4380 = fsub fast float 1.000000e+00, %4379
  %4381 = bitcast float %4380 to i32
  %4382 = sub nsw i32 2129859010, %4381
  %4383 = bitcast i32 %4382 to float
  %4384 = fmul fast float %4383, 2.000000e+00
  %4385 = fsub fast float 0x4002A9FBE0000000, %4366
  %4386 = fadd fast float %4366, 0x3FD54FDF00000000
  %4387 = bitcast float %4386 to i32
  %4388 = sub nsw i32 2129859010, %4387
  %4389 = bitcast i32 %4388 to float
  %4390 = fmul fast float %4389, %4385
  %4391 = fmul fast float %4390, %4390
  %4392 = fsub fast float 0x4002A9FBE0000000, %4375
  %4393 = fadd fast float %4375, 0x3FD54FDF00000000
  %4394 = bitcast float %4393 to i32
  %4395 = sub nsw i32 2129859010, %4394
  %4396 = bitcast i32 %4395 to float
  %4397 = fmul fast float %4396, %4392
  %4398 = fmul fast float %4397, %4397
  %4399 = fsub fast float 0x4002A9FBE0000000, %4384
  %4400 = fadd fast float %4384, 0x3FD54FDF00000000
  %4401 = bitcast float %4400 to i32
  %4402 = sub nsw i32 2129859010, %4401
  %4403 = bitcast i32 %4402 to float
  %4404 = fmul fast float %4403, %4399
  %4405 = fmul fast float %4404, %4404
  %4406 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4391)  ; FMax(a,b)
  %4407 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4398)  ; FMax(a,b)
  %4408 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4405)  ; FMax(a,b)
  %4409 = fsub fast float 1.000000e+00, %4294
  %4410 = fadd fast float %4409, %4310
  %4411 = call float @dx.op.unary.f32(i32 7, float %4410)  ; Saturate(value)
  %4412 = fsub fast float 1.000000e+00, %4274
  %4413 = fmul fast float %4352, %4412
  %4414 = fmul fast float %4355, %4355
  %4415 = fmul fast float %4414, %4413
  %4416 = fmul fast float %4415, %4357
  %4417 = fmul fast float %4412, 0xBFE99999A0000000
  %4418 = fmul fast float %4417, %4303
  %4419 = fmul fast float %4418, %4314
  %4420 = fadd fast float %4419, 1.000000e+00
  %4421 = fadd fast float %3820, -1.000000e+00
  %4422 = fmul fast float %4420, %4421
  %4423 = fadd fast float %4422, 1.000000e+00
  %4424 = fsub fast float %4406, %3817
  %4425 = fsub fast float %4407, %3818
  %4426 = fsub fast float %4408, %3819
  %4427 = fmul fast float %4416, %4424
  %4428 = fmul fast float %4416, %4425
  %4429 = fmul fast float %4416, %4426
  %4430 = fadd fast float %4427, %3817
  %4431 = fadd fast float %4428, %3818
  %4432 = fadd fast float %4429, %3819
  %4433 = fsub fast float %76, %3796
  %4434 = fsub fast float %77, %3797
  %4435 = fsub fast float %78, %3798
  %4436 = fmul fast float %4416, %4433
  %4437 = fmul fast float %4416, %4434
  %4438 = fmul fast float %4416, %4435
  %4439 = fadd fast float %4436, %3796
  %4440 = fadd fast float %4437, %3797
  %4441 = fadd fast float %4438, %3798
  %4442 = fmul fast float %4416, %4411
  %4443 = call float @dx.op.unary.f32(i32 7, float %4423)  ; Saturate(value)
  %4444 = fsub fast float 1.000000e+00, %4443
  %4445 = fmul fast float %4442, %4444
  %4446 = fadd fast float %4445, %4443
  %4447 = fsub fast float 1.000000e+00, %3766
  %4448 = fmul fast float %4416, %4447
  %4449 = fadd fast float %4448, %3766
  %4450 = call float @dx.op.dot3.f32(i32 55, float %4439, float %4440, float %4441, float %4439, float %4440, float %4441)  ; Dot3(ax,ay,az,bx,by,bz)
  %4451 = call float @dx.op.unary.f32(i32 25, float %4450)  ; Rsqrt(value)
  %4452 = fmul fast float %4439, %4451
  %4453 = fmul fast float %4440, %4451
  %4454 = fmul fast float %4441, %4451
  br label %4455

; <label>:4455                                    ; preds = %4287, %4280
  %4456 = phi float [ %4286, %4280 ], [ %4293, %4287 ]
  %4457 = phi float [ %4285, %4280 ], [ %4291, %4287 ]
  %4458 = phi float [ %4284, %4280 ], [ %4289, %4287 ]
  %4459 = phi float [ %4283, %4280 ], [ %4292, %4287 ]
  %4460 = phi float [ %4282, %4280 ], [ %4290, %4287 ]
  %4461 = phi float [ %4281, %4280 ], [ %4288, %4287 ]
  %4462 = phi float [ %3898, %4280 ], [ %4339, %4287 ]
  %4463 = phi float [ %3899, %4280 ], [ %4340, %4287 ]
  %4464 = phi float [ %3900, %4280 ], [ %4341, %4287 ]
  %4465 = phi float [ %3796, %4280 ], [ %4452, %4287 ]
  %4466 = phi float [ %3797, %4280 ], [ %4453, %4287 ]
  %4467 = phi float [ %3798, %4280 ], [ %4454, %4287 ]
  %4468 = phi float [ %3817, %4280 ], [ %4430, %4287 ]
  %4469 = phi float [ %3818, %4280 ], [ %4431, %4287 ]
  %4470 = phi float [ %3819, %4280 ], [ %4432, %4287 ]
  %4471 = phi float [ %3820, %4280 ], [ %4446, %4287 ]
  %4472 = phi float [ %3766, %4280 ], [ %4449, %4287 ]
  %4473 = select i1 %168, float 0.000000e+00, float %4470
  %4474 = call float @dx.op.dot3.f32(i32 55, float %4465, float %4466, float %4467, float %4458, float %4457, float %4456)  ; Dot3(ax,ay,az,bx,by,bz)
  %4475 = call float @dx.op.unary.f32(i32 7, float %4474)  ; Saturate(value)
  %4476 = call float @dx.op.dot3.f32(i32 55, float %4461, float %4460, float %4459, float %4465, float %4466, float %4467)  ; Dot3(ax,ay,az,bx,by,bz)
  %4477 = fmul fast float %4476, 2.000000e+00
  %4478 = fmul fast float %4477, %4465
  %4479 = fmul fast float %4477, %4466
  %4480 = fmul fast float %4477, %4467
  %4481 = fsub fast float %4461, %4478
  %4482 = fsub fast float %4460, %4479
  %4483 = fsub fast float %4459, %4480
  %4484 = call float @dx.op.binary.f32(i32 36, float %4472, float 1.000000e+00)  ; FMin(a,b)
  %4485 = fsub fast float 1.000000e+00, %4472
  %4486 = bitcast float %4485 to i32
  %4487 = sub nsw i32 2129859010, %4486
  %4488 = bitcast i32 %4487 to float
  %4489 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %46)  ; FMax(a,b)
  %4490 = call float @dx.op.dot3.f32(i32 55, float %47, float %48, float %49, float %47, float %48, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %4491 = fcmp fast oeq float %4490, 0.000000e+00
  %4492 = fcmp fast oeq float %4489, 0.000000e+00
  %4493 = or i1 %4492, %4491
  br i1 %4493, label %4523, label %4494

; <label>:4494                                    ; preds = %4455
  %4495 = fsub fast float -0.000000e+00, %49
  %4496 = fsub fast float -0.000000e+00, %47
  %4497 = call float @dx.op.unary.f32(i32 24, float %4490)  ; Sqrt(value)
  %4498 = fdiv fast float %4497, %4489
  %4499 = fcmp fast ogt float %4498, 0x3FFB6F8900000000
  %4500 = select i1 %4499, float 0x3FFB6F8900000000, float %4498
  %4501 = fmul fast float %4500, 0x3FE8A23460000000
  %4502 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4503 = call float @dx.op.binary.f32(i32 35, float %4500, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4504 = fmul fast float %4502, %4489
  %4505 = fmul fast float %4503, 0x3FF279A740000000
  %4506 = fadd fast float %4505, -1.000000e+00
  %4507 = call float @dx.op.dot3.f32(i32 55, float %4495, float %4496, float %48, float %4495, float %4496, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %4508 = call float @dx.op.unary.f32(i32 25, float %4507)  ; Rsqrt(value)
  %4509 = fmul fast float %4508, %4495
  %4510 = fmul fast float %4508, %4496
  %4511 = fmul fast float %4508, %48
  %4512 = fmul fast float %4506, %4506
  %4513 = fsub fast float 1.000000e+00, %4512
  %4514 = fmul fast float %4503, 0x40005F8BE0000000
  %4515 = fsub fast float 0x400C5BF8A0000000, %4514
  %4516 = fdiv fast float %4504, %4515
  %4517 = fmul fast float %4516, 0x3FEE31C3C0000000
  %4518 = fmul fast float %4517, %4513
  %4519 = fmul fast float %4503, 0x3FDACB7480000000
  %4520 = fadd fast float %4519, 0xBFD7347680000000
  %4521 = fmul fast float %4520, %4516
  %4522 = fmul fast float %4521, %4513
  br label %4523

; <label>:4523                                    ; preds = %4494, %4455
  %4524 = phi float [ %4509, %4494 ], [ 0.000000e+00, %4455 ]
  %4525 = phi float [ %4510, %4494 ], [ 0.000000e+00, %4455 ]
  %4526 = phi float [ %4511, %4494 ], [ 0.000000e+00, %4455 ]
  %4527 = phi float [ %4518, %4494 ], [ 0.000000e+00, %4455 ]
  %4528 = phi float [ %4522, %4494 ], [ 0.000000e+00, %4455 ]
  %4529 = call float @dx.op.dot3.f32(i32 55, float %4524, float %4525, float %4526, float %4465, float %4466, float %4467)  ; Dot3(ax,ay,az,bx,by,bz)
  %4530 = fmul fast float %4529, 0x3FDF454380000000
  %4531 = fmul fast float %4529, %4529
  %4532 = fmul fast float %4531, 0x3FEE471020000000
  %4533 = fadd fast float %4532, 0xBFD42F6020000000
  %4534 = fmul fast float %4489, 0x3FD20DD760000000
  %4535 = fmul fast float %4533, %4528
  %4536 = fadd fast float %4535, %4534
  %4537 = fmul fast float %4530, %4527
  %4538 = fadd fast float %4536, %4537
  %4539 = fsub fast float %4536, %4537
  %4540 = call float @dx.op.dot3.f32(i32 55, float %4524, float %4525, float %4526, float %4481, float %4482, float %4483)  ; Dot3(ax,ay,az,bx,by,bz)
  %4541 = fmul fast float %4540, 0x3FDF454380000000
  %4542 = fmul fast float %4540, %4540
  %4543 = fmul fast float %4542, 0x3FEE471020000000
  %4544 = fadd fast float %4543, 0xBFD42F6020000000
  %4545 = call float @dx.op.dot3.f32(i32 55, float %4489, float %4527, float %4528, float 0x3FD20DD760000000, float %4541, float %4544)  ; Dot3(ax,ay,az,bx,by,bz)
  %4546 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %42)  ; FMax(a,b)
  %4547 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %4548 = fcmp fast oeq float %4547, 0.000000e+00
  %4549 = fcmp fast oeq float %4546, 0.000000e+00
  %4550 = or i1 %4549, %4548
  br i1 %4550, label %4580, label %4551

; <label>:4551                                    ; preds = %4523
  %4552 = fsub fast float -0.000000e+00, %45
  %4553 = fsub fast float -0.000000e+00, %43
  %4554 = call float @dx.op.unary.f32(i32 24, float %4547)  ; Sqrt(value)
  %4555 = fdiv fast float %4554, %4546
  %4556 = fcmp fast ogt float %4555, 0x3FFB6F8900000000
  %4557 = select i1 %4556, float 0x3FFB6F8900000000, float %4555
  %4558 = fmul fast float %4557, 0x3FE8A23460000000
  %4559 = call float @dx.op.unary.f32(i32 7, float %4558)  ; Saturate(value)
  %4560 = call float @dx.op.binary.f32(i32 35, float %4557, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4561 = fmul fast float %4559, %4546
  %4562 = fmul fast float %4560, 0x3FF279A740000000
  %4563 = fadd fast float %4562, -1.000000e+00
  %4564 = call float @dx.op.dot3.f32(i32 55, float %4552, float %4553, float %44, float %4552, float %4553, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %4565 = call float @dx.op.unary.f32(i32 25, float %4564)  ; Rsqrt(value)
  %4566 = fmul fast float %4565, %4552
  %4567 = fmul fast float %4565, %4553
  %4568 = fmul fast float %4565, %44
  %4569 = fmul fast float %4563, %4563
  %4570 = fsub fast float 1.000000e+00, %4569
  %4571 = fmul fast float %4560, 0x40005F8BE0000000
  %4572 = fsub fast float 0x400C5BF8A0000000, %4571
  %4573 = fdiv fast float %4561, %4572
  %4574 = fmul fast float %4573, 0x3FEE31C3C0000000
  %4575 = fmul fast float %4574, %4570
  %4576 = fmul fast float %4560, 0x3FDACB7480000000
  %4577 = fadd fast float %4576, 0xBFD7347680000000
  %4578 = fmul fast float %4577, %4573
  %4579 = fmul fast float %4578, %4570
  br label %4580

; <label>:4580                                    ; preds = %4551, %4523
  %4581 = phi float [ %4566, %4551 ], [ 0.000000e+00, %4523 ]
  %4582 = phi float [ %4567, %4551 ], [ 0.000000e+00, %4523 ]
  %4583 = phi float [ %4568, %4551 ], [ 0.000000e+00, %4523 ]
  %4584 = phi float [ %4575, %4551 ], [ 0.000000e+00, %4523 ]
  %4585 = phi float [ %4579, %4551 ], [ 0.000000e+00, %4523 ]
  %4586 = call float @dx.op.dot3.f32(i32 55, float %4581, float %4582, float %4583, float %4465, float %4466, float %4467)  ; Dot3(ax,ay,az,bx,by,bz)
  %4587 = fmul fast float %4586, 0x3FDF454380000000
  %4588 = fmul fast float %4586, %4586
  %4589 = fmul fast float %4588, 0x3FEE471020000000
  %4590 = fadd fast float %4589, 0xBFD42F6020000000
  %4591 = fmul fast float %4546, 0x3FD20DD760000000
  %4592 = fmul fast float %4590, %4585
  %4593 = fadd fast float %4592, %4591
  %4594 = fmul fast float %4587, %4584
  %4595 = fadd fast float %4593, %4594
  %4596 = fsub fast float %4593, %4594
  %4597 = call float @dx.op.dot3.f32(i32 55, float %4581, float %4582, float %4583, float %4481, float %4482, float %4483)  ; Dot3(ax,ay,az,bx,by,bz)
  %4598 = fmul fast float %4597, 0x3FDF454380000000
  %4599 = fmul fast float %4597, %4597
  %4600 = fmul fast float %4599, 0x3FEE471020000000
  %4601 = fadd fast float %4600, 0xBFD42F6020000000
  %4602 = call float @dx.op.dot3.f32(i32 55, float %4546, float %4584, float %4585, float 0x3FD20DD760000000, float %4598, float %4601)  ; Dot3(ax,ay,az,bx,by,bz)
  %4603 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %38)  ; FMax(a,b)
  %4604 = call float @dx.op.dot3.f32(i32 55, float %39, float %40, float %41, float %39, float %40, float %41)  ; Dot3(ax,ay,az,bx,by,bz)
  %4605 = fcmp fast oeq float %4604, 0.000000e+00
  %4606 = fcmp fast oeq float %4603, 0.000000e+00
  %4607 = or i1 %4606, %4605
  br i1 %4607, label %4637, label %4608

; <label>:4608                                    ; preds = %4580
  %4609 = fsub fast float -0.000000e+00, %41
  %4610 = fsub fast float -0.000000e+00, %39
  %4611 = call float @dx.op.unary.f32(i32 24, float %4604)  ; Sqrt(value)
  %4612 = fdiv fast float %4611, %4603
  %4613 = fcmp fast ogt float %4612, 0x3FFB6F8900000000
  %4614 = select i1 %4613, float 0x3FFB6F8900000000, float %4612
  %4615 = fmul fast float %4614, 0x3FE8A23460000000
  %4616 = call float @dx.op.unary.f32(i32 7, float %4615)  ; Saturate(value)
  %4617 = call float @dx.op.binary.f32(i32 35, float %4614, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4618 = fmul fast float %4616, %4603
  %4619 = fmul fast float %4617, 0x3FF279A740000000
  %4620 = fadd fast float %4619, -1.000000e+00
  %4621 = call float @dx.op.dot3.f32(i32 55, float %4609, float %4610, float %40, float %4609, float %4610, float %40)  ; Dot3(ax,ay,az,bx,by,bz)
  %4622 = call float @dx.op.unary.f32(i32 25, float %4621)  ; Rsqrt(value)
  %4623 = fmul fast float %4622, %4609
  %4624 = fmul fast float %4622, %4610
  %4625 = fmul fast float %4622, %40
  %4626 = fmul fast float %4620, %4620
  %4627 = fsub fast float 1.000000e+00, %4626
  %4628 = fmul fast float %4617, 0x40005F8BE0000000
  %4629 = fsub fast float 0x400C5BF8A0000000, %4628
  %4630 = fdiv fast float %4618, %4629
  %4631 = fmul fast float %4630, 0x3FEE31C3C0000000
  %4632 = fmul fast float %4631, %4627
  %4633 = fmul fast float %4617, 0x3FDACB7480000000
  %4634 = fadd fast float %4633, 0xBFD7347680000000
  %4635 = fmul fast float %4634, %4630
  %4636 = fmul fast float %4635, %4627
  br label %4637

; <label>:4637                                    ; preds = %4608, %4580
  %4638 = phi float [ %4623, %4608 ], [ 0.000000e+00, %4580 ]
  %4639 = phi float [ %4624, %4608 ], [ 0.000000e+00, %4580 ]
  %4640 = phi float [ %4625, %4608 ], [ 0.000000e+00, %4580 ]
  %4641 = phi float [ %4632, %4608 ], [ 0.000000e+00, %4580 ]
  %4642 = phi float [ %4636, %4608 ], [ 0.000000e+00, %4580 ]
  %4643 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %4465, float %4466, float %4467)  ; Dot3(ax,ay,az,bx,by,bz)
  %4644 = fmul fast float %4643, 0x3FDF454380000000
  %4645 = fmul fast float %4643, %4643
  %4646 = fmul fast float %4645, 0x3FEE471020000000
  %4647 = fadd fast float %4646, 0xBFD42F6020000000
  %4648 = fmul fast float %4603, 0x3FD20DD760000000
  %4649 = fmul fast float %4647, %4642
  %4650 = fadd fast float %4649, %4648
  %4651 = fmul fast float %4644, %4641
  %4652 = fadd fast float %4650, %4651
  %4653 = fsub fast float %4650, %4651
  %4654 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %4481, float %4482, float %4483)  ; Dot3(ax,ay,az,bx,by,bz)
  %4655 = fmul fast float %4654, 0x3FDF454380000000
  %4656 = fmul fast float %4654, %4654
  %4657 = fmul fast float %4656, 0x3FEE471020000000
  %4658 = fadd fast float %4657, 0xBFD42F6020000000
  %4659 = call float @dx.op.dot3.f32(i32 55, float %4603, float %4641, float %4642, float 0x3FD20DD760000000, float %4655, float %4658)  ; Dot3(ax,ay,az,bx,by,bz)
  %4660 = call float @dx.op.binary.f32(i32 35, float %4538, float 0.000000e+00)  ; FMax(a,b)
  %4661 = call float @dx.op.binary.f32(i32 35, float %4595, float 0.000000e+00)  ; FMax(a,b)
  %4662 = call float @dx.op.binary.f32(i32 35, float %4652, float 0.000000e+00)  ; FMax(a,b)
  %4663 = call float @dx.op.binary.f32(i32 35, float %4539, float 0.000000e+00)  ; FMax(a,b)
  %4664 = call float @dx.op.binary.f32(i32 35, float %4596, float 0.000000e+00)  ; FMax(a,b)
  %4665 = call float @dx.op.binary.f32(i32 35, float %4653, float 0.000000e+00)  ; FMax(a,b)
  %4666 = call float @dx.op.binary.f32(i32 35, float %4545, float 0.000000e+00)  ; FMax(a,b)
  %4667 = call float @dx.op.binary.f32(i32 35, float %4602, float 0.000000e+00)  ; FMax(a,b)
  %4668 = call float @dx.op.binary.f32(i32 35, float %4659, float 0.000000e+00)  ; FMax(a,b)
  %4669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4670 = extractvalue %dx.types.CBufRet.f32 %4669, 0
  %4671 = call float @dx.op.binary.f32(i32 36, float %4462, float %4670)  ; FMin(a,b)
  %4672 = fsub fast float 1.000000e+00, %4484
  %4673 = fmul fast float %4671, %4672
  %4674 = fsub fast float 1.000000e+00, %4673
  %4675 = bitcast float %4674 to i32
  %4676 = sub nsw i32 2129859010, %4675
  %4677 = bitcast i32 %4676 to float
  %4678 = call float @dx.op.binary.f32(i32 36, float %4463, float %4670)  ; FMin(a,b)
  %4679 = fmul fast float %4678, %4672
  %4680 = fsub fast float 1.000000e+00, %4679
  %4681 = bitcast float %4680 to i32
  %4682 = sub nsw i32 2129859010, %4681
  %4683 = bitcast i32 %4682 to float
  %4684 = call float @dx.op.binary.f32(i32 36, float %4464, float %4670)  ; FMin(a,b)
  %4685 = fmul fast float %4684, %4672
  %4686 = fsub fast float 1.000000e+00, %4685
  %4687 = bitcast float %4686 to i32
  %4688 = sub nsw i32 2129859010, %4687
  %4689 = bitcast i32 %4688 to float
  %4690 = fmul fast float %4660, %4484
  %4691 = fmul fast float %4690, %4677
  %4692 = fmul fast float %4661, %4484
  %4693 = fmul fast float %4692, %4683
  %4694 = fmul fast float %4662, %4484
  %4695 = fmul fast float %4694, %4689
  %4696 = call float @dx.op.binary.f32(i32 36, float %4468, float %4670)  ; FMin(a,b)
  %4697 = fmul fast float %4696, %4672
  %4698 = fsub fast float 1.000000e+00, %4697
  %4699 = bitcast float %4698 to i32
  %4700 = sub nsw i32 2129859010, %4699
  %4701 = bitcast i32 %4700 to float
  %4702 = call float @dx.op.binary.f32(i32 36, float %4469, float %4670)  ; FMin(a,b)
  %4703 = fmul fast float %4702, %4672
  %4704 = fsub fast float 1.000000e+00, %4703
  %4705 = bitcast float %4704 to i32
  %4706 = sub nsw i32 2129859010, %4705
  %4707 = bitcast i32 %4706 to float
  %4708 = call float @dx.op.binary.f32(i32 36, float %4473, float %4670)  ; FMin(a,b)
  %4709 = fmul fast float %4708, %4672
  %4710 = fsub fast float 1.000000e+00, %4709
  %4711 = bitcast float %4710 to i32
  %4712 = sub nsw i32 2129859010, %4711
  %4713 = bitcast i32 %4712 to float
  %4714 = fmul fast float %4666, %4484
  %4715 = fmul fast float %4714, %4701
  %4716 = fmul fast float %4667, %4484
  %4717 = fmul fast float %4716, %4707
  %4718 = fmul fast float %4668, %4484
  %4719 = fmul fast float %4718, %4713
  %4720 = call float @dx.op.dot3.f32(i32 55, float %4691, float %4693, float %4695, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4721 = select i1 %168, float 0.000000e+00, float %4691
  %4722 = select i1 %168, float %4720, float %4693
  %4723 = select i1 %168, float 0.000000e+00, float %4695
  %4724 = call float @dx.op.dot3.f32(i32 55, float %4663, float %4664, float %4665, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4725 = select i1 %168, float 0.000000e+00, float %4663
  %4726 = select i1 %168, float %4724, float %4664
  %4727 = select i1 %168, float 0.000000e+00, float %4665
  %4728 = call float @dx.op.dot3.f32(i32 55, float %4715, float %4717, float %4719, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4729 = select i1 %168, float 0.000000e+00, float %4715
  %4730 = select i1 %168, float %4728, float %4717
  %4731 = select i1 %168, float 0.000000e+00, float %4719
  %4732 = fmul fast float %4475, 9.843750e-01
  %4733 = fmul fast float %4471, 9.843750e-01
  %4734 = fadd fast float %4732, 7.812500e-03
  %4735 = fadd fast float %4733, 7.812500e-03
  %4736 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %4734, float %4735, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4737 = extractvalue %dx.types.ResRet.f32 %4736, 2
  %4738 = extractvalue %dx.types.ResRet.f32 %4736, 3
  %4739 = fmul fast float %4737, %4468
  %4740 = fmul fast float %4737, %4469
  %4741 = fmul fast float %4737, %4473
  %4742 = fadd fast float %4739, %4738
  %4743 = fadd fast float %4740, %4738
  %4744 = fadd fast float %4741, %4738
  %4745 = call float @dx.op.binary.f32(i32 35, float %4743, float %4744)  ; FMax(a,b)
  %4746 = call float @dx.op.binary.f32(i32 35, float %4742, float %4745)  ; FMax(a,b)
  %4747 = fsub fast float 1.000000e+00, %4746
  %4748 = fmul fast float %4742, %4729
  %4749 = fmul fast float %4743, %4730
  %4750 = fmul fast float %4744, %4731
  %4751 = fadd fast float %4748, %3758
  %4752 = fmul fast float %4751, %929
  %4753 = fadd fast float %4749, %3759
  %4754 = fmul fast float %4753, %929
  %4755 = fadd fast float %4750, %3760
  %4756 = fmul fast float %4755, %929
  %4757 = fmul fast float %4747, %4723
  %4758 = fmul fast float %4747, %4722
  %4759 = fmul fast float %4747, %4721
  %4760 = fmul fast float %4747, %3886
  %4761 = fadd fast float %4760, -1.000000e+00
  %4762 = fmul fast float %4761, %929
  %4763 = fadd fast float %4762, 1.000000e+00
  %4764 = fmul fast float %4747, %3885
  %4765 = fadd fast float %4764, -1.000000e+00
  %4766 = fmul fast float %4765, %929
  %4767 = fadd fast float %4766, 1.000000e+00
  %4768 = fmul fast float %4747, %3884
  %4769 = fadd fast float %4768, -1.000000e+00
  %4770 = fmul fast float %4769, %929
  %4771 = fadd fast float %4770, 1.000000e+00
  %4772 = fmul fast float %4771, %4725
  %4773 = fmul fast float %4767, %4726
  %4774 = fmul fast float %4763, %4727
  %4775 = fadd fast float %4772, %4759
  %4776 = fmul fast float %4775, %929
  %4777 = fadd fast float %4773, %4758
  %4778 = fmul fast float %4777, %929
  %4779 = fadd fast float %4774, %4757
  %4780 = fmul fast float %4779, %929
  %4781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4782 = extractvalue %dx.types.CBufRet.f32 %4781, 3
  %4783 = fcmp fast oeq float %4782, 0.000000e+00
  br i1 %4783, label %4969, label %4784

; <label>:4784                                    ; preds = %4637
  %4785 = extractvalue %dx.types.CBufRet.f32 %4781, 0
  %4786 = extractvalue %dx.types.CBufRet.f32 %4781, 1
  %4787 = extractvalue %dx.types.CBufRet.f32 %4781, 2
  %4788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4789 = extractvalue %dx.types.CBufRet.f32 %4788, 0
  %4790 = extractvalue %dx.types.CBufRet.f32 %4788, 1
  %4791 = extractvalue %dx.types.CBufRet.f32 %4788, 2
  %4792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4793 = extractvalue %dx.types.CBufRet.f32 %4792, 0
  %4794 = extractvalue %dx.types.CBufRet.f32 %4792, 1
  %4795 = call float @dx.op.dot3.f32(i32 55, float %4789, float %4790, float %4791, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4796 = select i1 %168, float %4793, float %4789
  %4797 = select i1 %168, float %4795, float %4790
  %4798 = select i1 %168, float %4794, float %4791
  %4799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4800 = extractvalue %dx.types.CBufRet.f32 %4799, 1
  %4801 = fcmp fast une float %4800, 0.000000e+00
  br i1 %4801, label %4802, label %4819

; <label>:4802                                    ; preds = %4784
  %4803 = fptoui float %69 to i32
  %4804 = fptoui float %70 to i32
  %4805 = lshr i32 %4803, 4
  %4806 = lshr i32 %4804, 4
  %4807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4808 = extractvalue %dx.types.CBufRet.f32 %4807, 0
  %4809 = fptoui float %4808 to i32
  %4810 = add i32 %4809, 15
  %4811 = lshr i32 %4810, 4
  %4812 = mul i32 %4811, %4806
  %4813 = add i32 %4812, %4805
  %4814 = shl i32 %4813, 3
  %4815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4814, i32 undef)  ; BufferLoad(srv,index,wot)
  %4816 = extractvalue %dx.types.ResRet.i32 %4815, 0
  %4817 = and i32 %4816, -268435456
  %4818 = icmp eq i32 %4817, -1342177280
  br i1 %4818, label %4829, label %4819

; <label>:4819                                    ; preds = %4802, %4784
  %4820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4821 = extractvalue %dx.types.CBufRet.f32 %4820, 2
  %4822 = extractvalue %dx.types.CBufRet.f32 %4820, 3
  %4823 = fmul fast float %4821, %69
  %4824 = fmul fast float %4822, %70
  %4825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %27, float %4823, float %4824, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4826 = extractvalue %dx.types.ResRet.f32 %4825, 0
  %4827 = extractvalue %dx.types.ResRet.f32 %4825, 1
  %4828 = extractvalue %dx.types.ResRet.f32 %4825, 2
  br label %4829

; <label>:4829                                    ; preds = %4819, %4802
  %4830 = phi float [ %4826, %4819 ], [ 0.000000e+00, %4802 ]
  %4831 = phi float [ %4827, %4819 ], [ 0.000000e+00, %4802 ]
  %4832 = phi float [ %4828, %4819 ], [ 0.000000e+00, %4802 ]
  %4833 = call float @dx.op.binary.f32(i32 36, float %4831, float %4832)  ; FMin(a,b)
  %4834 = call float @dx.op.binary.f32(i32 36, float %4830, float %4833)  ; FMin(a,b)
  %4835 = fcmp fast ogt float %4834, 0.000000e+00
  br i1 %4835, label %4836, label %4969, !dx.controlflow.hints !69

; <label>:4836                                    ; preds = %4829
  %4837 = fmul fast float %4830, %4796
  %4838 = fmul fast float %4831, %4797
  %4839 = fmul fast float %4832, %4798
  %4840 = fsub fast float %4785, %4461
  %4841 = fsub fast float %4786, %4460
  %4842 = fsub fast float %4787, %4459
  %4843 = call float @dx.op.dot3.f32(i32 55, float %4840, float %4841, float %4842, float %4840, float %4841, float %4842)  ; Dot3(ax,ay,az,bx,by,bz)
  %4844 = call float @dx.op.unary.f32(i32 25, float %4843)  ; Rsqrt(value)
  %4845 = fmul fast float %4844, %4840
  %4846 = fmul fast float %4844, %4841
  %4847 = fmul fast float %4844, %4842
  %4848 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4786, float %4787, float %4465, float %4466, float %4467)  ; Dot3(ax,ay,az,bx,by,bz)
  %4849 = call float @dx.op.dot3.f32(i32 55, float %4458, float %4457, float %4456, float %4845, float %4846, float %4847)  ; Dot3(ax,ay,az,bx,by,bz)
  %4850 = call float @dx.op.unary.f32(i32 7, float %4848)  ; Saturate(value)
  %4851 = fmul fast float %4850, %4850
  %4852 = fmul fast float %4851, %4488
  %4853 = call float @dx.op.unary.f32(i32 7, float %4852)  ; Saturate(value)
  %4854 = fmul fast float %4853, %4850
  %4855 = call float @dx.op.dot3.f32(i32 55, float %4465, float %4466, float %4467, float %4845, float %4846, float %4847)  ; Dot3(ax,ay,az,bx,by,bz)
  %4856 = fmul fast float %4855, %4855
  %4857 = call float @dx.op.unary.f32(i32 6, float %4848)  ; FAbs(value)
  %4858 = fsub fast float 1.000000e+00, %4471
  %4859 = call float @dx.op.binary.f32(i32 35, float %4858, float 0x3F847AE140000000)  ; FMax(a,b)
  %4860 = fmul fast float %4859, %4859
  %4861 = fmul fast float %4860, %4860
  %4862 = fsub fast float 1.000000e+00, %4861
  %4863 = fmul fast float %4475, %4475
  %4864 = fmul fast float %4863, %4862
  %4865 = fadd fast float %4864, %4861
  %4866 = bitcast float %4865 to i32
  %4867 = ashr i32 %4866, 1
  %4868 = add nsw i32 %4867, 532487669
  %4869 = bitcast i32 %4868 to float
  %4870 = fadd fast float %4869, %4475
  %4871 = fmul fast float %4861, %4856
  %4872 = fsub fast float 1.000000e+00, %4856
  %4873 = fadd fast float %4872, %4871
  %4874 = fmul fast float %4857, %4857
  %4875 = fmul fast float %4874, %4862
  %4876 = fadd fast float %4875, %4861
  %4877 = bitcast float %4876 to i32
  %4878 = ashr i32 %4877, 1
  %4879 = add nsw i32 %4878, 532487669
  %4880 = bitcast i32 %4879 to float
  %4881 = fadd fast float %4880, %4857
  %4882 = fmul fast float %4873, %4873
  %4883 = fmul fast float %4882, %4870
  %4884 = fmul fast float %4883, %4881
  %4885 = fdiv fast float 0x3FF0A00000000000, %4884
  %4886 = fmul fast float %4885, %4861
  %4887 = call float @dx.op.unary.f32(i32 6, float %4849)  ; FAbs(value)
  %4888 = fsub fast float 1.000000e+00, %4887
  %4889 = bitcast float %4888 to i32
  %4890 = sitofp i32 %4889 to float
  %4891 = fmul fast float %4890, 5.000000e+00
  %4892 = fadd fast float %4891, 0xC1EFBF8940000000
  %4893 = fptosi float %4892 to i32
  %4894 = bitcast i32 %4893 to float
  %4895 = fsub fast float 1.000000e+00, %4468
  %4896 = fsub fast float 1.000000e+00, %4469
  %4897 = fsub fast float 1.000000e+00, %4473
  %4898 = fmul fast float %4894, %4895
  %4899 = fmul fast float %4894, %4896
  %4900 = fmul fast float %4894, %4897
  %4901 = fadd fast float %4898, %4468
  %4902 = fadd fast float %4899, %4469
  %4903 = fadd fast float %4900, %4473
  %4904 = fmul fast float %4848, 9.843750e-01
  %4905 = fadd fast float %4904, 7.812500e-03
  %4906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %4905, float %4735, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4907 = extractvalue %dx.types.ResRet.f32 %4906, 2
  %4908 = extractvalue %dx.types.ResRet.f32 %4906, 3
  %4909 = fmul fast float %4907, %4468
  %4910 = fmul fast float %4907, %4469
  %4911 = fmul fast float %4907, %4473
  %4912 = fadd fast float %4909, %4908
  %4913 = fadd fast float %4910, %4908
  %4914 = fadd fast float %4911, %4908
  %4915 = call float @dx.op.binary.f32(i32 35, float %4913, float %4914)  ; FMax(a,b)
  %4916 = call float @dx.op.binary.f32(i32 35, float %4912, float %4915)  ; FMax(a,b)
  %4917 = fsub fast float 1.000000e+00, %4916
  %4918 = fsub fast float -0.000000e+00, %4465
  %4919 = fsub fast float -0.000000e+00, %4466
  %4920 = fsub fast float -0.000000e+00, %4467
  %4921 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4786, float %4787, float %4918, float %4919, float %4920)  ; Dot3(ax,ay,az,bx,by,bz)
  %4922 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4923 = fmul fast float %4922, 9.843750e-01
  %4924 = fadd fast float %4923, 7.812500e-03
  %4925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %4924, float %4735, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4926 = extractvalue %dx.types.ResRet.f32 %4925, 2
  %4927 = extractvalue %dx.types.ResRet.f32 %4925, 3
  %4928 = fmul fast float %4926, %4468
  %4929 = fmul fast float %4926, %4469
  %4930 = fmul fast float %4926, %4473
  %4931 = fadd fast float %4928, %4927
  %4932 = fadd fast float %4929, %4927
  %4933 = fadd fast float %4930, %4927
  %4934 = call float @dx.op.binary.f32(i32 35, float %4932, float %4933)  ; FMax(a,b)
  %4935 = call float @dx.op.binary.f32(i32 35, float %4931, float %4934)  ; FMax(a,b)
  %4936 = fsub fast float 1.000000e+00, %4935
  %4937 = fmul fast float %4936, %4922
  %4938 = fmul fast float %4937, %3884
  %4939 = fmul fast float %4937, %3885
  %4940 = fmul fast float %4937, %3886
  %4941 = fmul fast float %4917, %4854
  %4942 = fadd fast float %4938, %4941
  %4943 = fadd fast float %4939, %4941
  %4944 = fadd fast float %4940, %4941
  %4945 = fmul fast float %4942, %4837
  %4946 = fmul fast float %4943, %4838
  %4947 = fmul fast float %4944, %4839
  %4948 = fmul fast float %4854, %4837
  %4949 = fmul fast float %4948, %4886
  %4950 = fmul fast float %4949, %4901
  %4951 = fmul fast float %4854, %4838
  %4952 = fmul fast float %4951, %4886
  %4953 = fmul fast float %4952, %4902
  %4954 = fmul fast float %4854, %4839
  %4955 = fmul fast float %4954, %4886
  %4956 = fmul fast float %4955, %4903
  %4957 = fadd fast float %4945, %4775
  %4958 = fmul fast float %4957, %929
  %4959 = fadd fast float %4946, %4777
  %4960 = fmul fast float %4959, %929
  %4961 = fadd fast float %4947, %4779
  %4962 = fmul fast float %4961, %929
  %4963 = fadd fast float %4950, %4751
  %4964 = fmul fast float %4963, %929
  %4965 = fadd fast float %4953, %4753
  %4966 = fmul fast float %4965, %929
  %4967 = fadd fast float %4956, %4755
  %4968 = fmul fast float %4967, %929
  br label %4969

; <label>:4969                                    ; preds = %4836, %4829, %4637
  %4970 = phi float [ %4752, %4637 ], [ %4752, %4829 ], [ %4964, %4836 ]
  %4971 = phi float [ %4754, %4637 ], [ %4754, %4829 ], [ %4966, %4836 ]
  %4972 = phi float [ %4756, %4637 ], [ %4756, %4829 ], [ %4968, %4836 ]
  %4973 = phi float [ %4776, %4637 ], [ %4776, %4829 ], [ %4958, %4836 ]
  %4974 = phi float [ %4778, %4637 ], [ %4778, %4829 ], [ %4960, %4836 ]
  %4975 = phi float [ %4780, %4637 ], [ %4780, %4829 ], [ %4962, %4836 ]
  %4976 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4977 = extractvalue %dx.types.CBufRet.i32 %4976, 0
  %4978 = icmp eq i32 %4977, 0
  br i1 %4978, label %5372, label %4979

; <label>:4979                                    ; preds = %4969
  %4980 = fptoui float %69 to i32
  %4981 = fptoui float %70 to i32
  %4982 = lshr i32 %4980, 4
  %4983 = lshr i32 %4981, 4
  %4984 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4985 = extractvalue %dx.types.CBufRet.i32 %4984, 0
  %4986 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4983, i32 %4985, i32 %4982)  ; UMad(a,b,c)
  %4987 = add nsw i32 %4977, -1
  %4988 = call i32 @dx.op.binary.i32(i32 37, i32 %4987, i32 0)  ; IMax(a,b)
  %4989 = call float @dx.op.binary.f32(i32 35, float %64, float 0.000000e+00)  ; FMax(a,b)
  %4990 = fptoui float %4989 to i32
  %4991 = lshr i32 %4990, 5
  %4992 = call i32 @dx.op.binary.i32(i32 40, i32 %4991, i32 8191)  ; UMin(a,b)
  %4993 = shl i32 %4992, 2
  %4994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4993, i32 undef)  ; BufferLoad(srv,index,wot)
  %4995 = extractvalue %dx.types.ResRet.i32 %4994, 0
  %4996 = lshr i32 %4995, 16
  %4997 = and i32 %4995, 65535
  %4998 = lshr i32 %4995, 21
  %4999 = lshr i32 %4997, 5
  %5000 = call i32 @dx.op.binary.i32(i32 40, i32 %4999, i32 %4988)  ; UMin(a,b)
  %5001 = icmp ugt i32 %4998, %5000
  br i1 %5001, label %5372, label %5002

; <label>:5002                                    ; preds = %4979
  br label %5003

; <label>:5003                                    ; preds = %5362, %5002
  %5004 = phi i32 [ %5369, %5362 ], [ %4998, %5002 ]
  %5005 = phi float [ %5363, %5362 ], [ %4970, %5002 ]
  %5006 = phi float [ %5364, %5362 ], [ %4971, %5002 ]
  %5007 = phi float [ %5365, %5362 ], [ %4972, %5002 ]
  %5008 = phi float [ %5366, %5362 ], [ %4973, %5002 ]
  %5009 = phi float [ %5367, %5362 ], [ %4974, %5002 ]
  %5010 = phi float [ %5368, %5362 ], [ %4975, %5002 ]
  %5011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5012 = extractvalue %dx.types.CBufRet.i32 %5011, 0
  %5013 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4986, i32 %5012, i32 %5004)  ; UMad(a,b,c)
  %5014 = shl i32 %5013, 2
  %5015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5014, i32 undef)  ; BufferLoad(srv,index,wot)
  %5016 = extractvalue %dx.types.ResRet.i32 %5015, 0
  %5017 = shl i32 %5004, 5
  %5018 = sub nsw i32 %4996, %5017
  %5019 = call i32 @dx.op.binary.i32(i32 37, i32 %5018, i32 0)  ; IMax(a,b)
  %5020 = call i32 @dx.op.binary.i32(i32 38, i32 %5019, i32 31)  ; IMin(a,b)
  %5021 = sub nsw i32 1, %4996
  %5022 = add nsw i32 %5021, %4997
  %5023 = call i32 @dx.op.binary.i32(i32 37, i32 %5022, i32 0)  ; IMax(a,b)
  %5024 = call i32 @dx.op.binary.i32(i32 38, i32 %5023, i32 32)  ; IMin(a,b)
  %5025 = and i32 %5024, 31
  %5026 = shl i32 -1, %5025
  %5027 = xor i32 %5026, -1
  %5028 = and i32 %5020, 31
  %5029 = shl i32 %5027, %5028
  %5030 = icmp eq i32 %5024, 32
  %5031 = select i1 %5030, i32 -1, i32 %5029
  %5032 = and i32 %5031, %5016
  %5033 = icmp eq i32 %5032, 0
  br i1 %5033, label %5362, label %5034

; <label>:5034                                    ; preds = %5003
  br label %5035

; <label>:5035                                    ; preds = %5115, %5034
  %5036 = phi i32 [ %5047, %5115 ], [ %5032, %5034 ]
  %5037 = phi float [ %5116, %5115 ], [ %5005, %5034 ]
  %5038 = phi float [ %5117, %5115 ], [ %5006, %5034 ]
  %5039 = phi float [ %5118, %5115 ], [ %5007, %5034 ]
  %5040 = phi float [ %5119, %5115 ], [ %5008, %5034 ]
  %5041 = phi float [ %5120, %5115 ], [ %5009, %5034 ]
  %5042 = phi float [ %5121, %5115 ], [ %5010, %5034 ]
  %5043 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5036)  ; FirstbitLo(value)
  %5044 = add i32 %5043, %5017
  %5045 = and i32 %5043, 31
  %5046 = shl i32 1, %5045
  %5047 = xor i32 %5046, %5036
  %5048 = mul i32 %5044, 112
  %5049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5048, i32 undef)  ; BufferLoad(srv,index,wot)
  %5050 = extractvalue %dx.types.ResRet.f32 %5049, 0
  %5051 = extractvalue %dx.types.ResRet.f32 %5049, 1
  %5052 = extractvalue %dx.types.ResRet.f32 %5049, 2
  %5053 = or i32 %5048, 12
  %5054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5053, i32 undef)  ; BufferLoad(srv,index,wot)
  %5055 = extractvalue %dx.types.ResRet.f32 %5054, 0
  %5056 = add i32 %5048, 44
  %5057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5056, i32 undef)  ; BufferLoad(srv,index,wot)
  %5058 = extractvalue %dx.types.ResRet.f32 %5057, 0
  %5059 = add i32 %5048, 48
  %5060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5059, i32 undef)  ; BufferLoad(srv,index,wot)
  %5061 = extractvalue %dx.types.ResRet.f32 %5060, 0
  %5062 = extractvalue %dx.types.ResRet.f32 %5060, 1
  %5063 = extractvalue %dx.types.ResRet.f32 %5060, 2
  %5064 = add i32 %5048, 80
  %5065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5064, i32 undef)  ; BufferLoad(srv,index,wot)
  %5066 = extractvalue %dx.types.ResRet.f32 %5065, 1
  %5067 = extractvalue %dx.types.ResRet.f32 %5065, 2
  %5068 = call float @dx.op.dot3.f32(i32 55, float %5050, float %5051, float %5052, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5069 = select i1 %168, float %5066, float %5050
  %5070 = select i1 %168, float %5068, float %5051
  %5071 = select i1 %168, float %5067, float %5052
  %5072 = fsub fast float %5061, %124
  %5073 = fsub fast float %5062, %125
  %5074 = fsub fast float %5063, %126
  %5075 = call float @dx.op.dot3.f32(i32 55, float %5072, float %5073, float %5074, float %5072, float %5073, float %5074)  ; Dot3(ax,ay,az,bx,by,bz)
  %5076 = call float @dx.op.unary.f32(i32 24, float %5075)  ; Sqrt(value)
  %5077 = fdiv fast float 1.000000e+00, %5076
  %5078 = fmul fast float %5077, %5072
  %5079 = fmul fast float %5077, %5073
  %5080 = fmul fast float %5077, %5074
  %5081 = fadd fast float %5076, %5055
  %5082 = fdiv fast float 1.000000e+00, %5081
  %5083 = fmul float %5058, %5082
  %5084 = fmul float %5083, %5083
  %5085 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5086 = and i32 %5046, %5032
  %5087 = icmp eq i32 %5086, 0
  br i1 %5087, label %5110, label %5088, !dx.controlflow.hints !70

; <label>:5088                                    ; preds = %5035
  %5089 = lshr i32 %4980, 5
  %5090 = lshr i32 %4981, 5
  %5091 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %5089, i32 %5090, i32 %5044, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5092 = extractvalue %dx.types.ResRet.i32 %5091, 0
  %5093 = and i32 %5092, 3
  %5094 = icmp eq i32 %5093, 0
  %5095 = select i1 %5094, float 1.000000e+00, float 0.000000e+00
  %5096 = icmp eq i32 %5093, 3
  br i1 %5096, label %5097, label %5110

; <label>:5097                                    ; preds = %5088
  %5098 = lshr i32 %5092, 10
  %5099 = and i32 %5098, 8160
  %5100 = and i32 %4981, 31
  %5101 = or i32 %5099, %5100
  %5102 = lshr i32 %5092, 1
  %5103 = and i32 %5102, 16352
  %5104 = and i32 %4980, 31
  %5105 = or i32 %5103, %5104
  %5106 = lshr i32 %5092, 23
  %5107 = and i32 %5106, 255
  %5108 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %5105, i32 %5101, i32 %5107, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5109 = extractvalue %dx.types.ResRet.f32 %5108, 0
  br label %5110

; <label>:5110                                    ; preds = %5097, %5088, %5035
  %5111 = phi float [ %5109, %5097 ], [ %5095, %5088 ], [ 0.000000e+00, %5035 ]
  %5112 = call float @dx.op.binary.f32(i32 36, float %5111, float %5111)  ; FMin(a,b)
  %5113 = call float @dx.op.binary.f32(i32 36, float %5111, float %5112)  ; FMin(a,b)
  %5114 = fcmp fast ogt float %5113, 0.000000e+00
  br i1 %5114, label %5123, label %5115, !dx.controlflow.hints !71

; <label>:5115                                    ; preds = %5184, %5110
  %5116 = phi float [ %5037, %5110 ], [ %5358, %5184 ]
  %5117 = phi float [ %5038, %5110 ], [ %5359, %5184 ]
  %5118 = phi float [ %5039, %5110 ], [ %5360, %5184 ]
  %5119 = phi float [ %5040, %5110 ], [ %5346, %5184 ]
  %5120 = phi float [ %5041, %5110 ], [ %5347, %5184 ]
  %5121 = phi float [ %5042, %5110 ], [ %5348, %5184 ]
  %5122 = icmp eq i32 %5036, %5046
  br i1 %5122, label %5361, label %5035

; <label>:5123                                    ; preds = %5110
  %5124 = fmul fast float %5111, %5069
  %5125 = fmul fast float %5111, %5070
  %5126 = fmul fast float %5111, %5071
  %5127 = fsub fast float %5063, %4261
  %5128 = fcmp fast ogt float %5127, 0.000000e+00
  %5129 = fsub fast float %126, %4261
  %5130 = fcmp fast ogt float %5129, 0.000000e+00
  %5131 = xor i1 %5130, %5128
  %5132 = fsub fast float %4261, %5063
  %5133 = fmul fast float %5132, 2.000000e+00
  %5134 = fadd fast float %5133, %5063
  %5135 = select i1 %5131, float %5063, float %5134
  %5136 = fsub fast float %5135, %126
  %5137 = call float @dx.op.dot3.f32(i32 55, float %5072, float %5073, float %5136, float %5072, float %5073, float %5136)  ; Dot3(ax,ay,az,bx,by,bz)
  %5138 = call float @dx.op.unary.f32(i32 25, float %5137)  ; Rsqrt(value)
  %5139 = fmul fast float %5138, %5072
  %5140 = fmul fast float %5138, %5073
  %5141 = fmul fast float %5138, %5136
  %5142 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4269)  ; Dot3(ax,ay,az,bx,by,bz)
  %5143 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5139, float %5140, float %5141)  ; Dot3(ax,ay,az,bx,by,bz)
  %5144 = fdiv fast float 1.000000e+00, %5143
  %5145 = fmul fast float %5144, %5142
  %5146 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5129, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5147 = fcmp fast ogt float %5146, 0.000000e+00
  %5148 = fcmp fast olt float %5146, 0.000000e+00
  %5149 = zext i1 %5147 to i32
  %5150 = zext i1 %5148 to i32
  %5151 = sub nsw i32 %5149, %5150
  %5152 = sitofp i32 %5151 to float
  %5153 = fsub fast float %5135, %4261
  %5154 = call float @dx.op.dot3.f32(i32 55, float %5072, float %5073, float %5153, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5155 = fcmp fast ogt float %5154, 0.000000e+00
  %5156 = fcmp fast olt float %5154, 0.000000e+00
  %5157 = zext i1 %5155 to i32
  %5158 = zext i1 %5156 to i32
  %5159 = sub nsw i32 %5157, %5158
  %5160 = sitofp i32 %5159 to float
  %5161 = fcmp fast une float %5152, %5160
  br i1 %5161, label %5162, label %5172

; <label>:5162                                    ; preds = %5123
  %5163 = fmul fast float %5145, %5141
  %5164 = fmul fast float %5145, %5140
  %5165 = fmul fast float %5145, %5139
  %5166 = fmul fast float %5165, %5165
  %5167 = fmul fast float %5164, %5164
  %5168 = fadd fast float %5166, %5167
  %5169 = fmul fast float %5163, %5163
  %5170 = fadd fast float %5168, %5169
  %5171 = call float @dx.op.unary.f32(i32 24, float %5170)  ; Sqrt(value)
  br label %5184

; <label>:5172                                    ; preds = %5123
  %5173 = icmp slt i32 %5151, 0
  br i1 %5173, label %5174, label %5184

; <label>:5174                                    ; preds = %5172
  %5175 = fsub fast float %124, %5061
  %5176 = fsub fast float %125, %5062
  %5177 = fsub fast float %126, %5135
  %5178 = fmul fast float %5175, %5175
  %5179 = fmul fast float %5176, %5176
  %5180 = fadd fast float %5178, %5179
  %5181 = fmul fast float %5177, %5177
  %5182 = fadd fast float %5180, %5181
  %5183 = call float @dx.op.unary.f32(i32 24, float %5182)  ; Sqrt(value)
  br label %5184

; <label>:5184                                    ; preds = %5174, %5172, %5162
  %5185 = phi float [ %5171, %5162 ], [ %5183, %5174 ], [ 0.000000e+00, %5172 ]
  %5186 = and i1 %5130, %5128
  %5187 = fsub fast float -0.000000e+00, %5185
  %5188 = select i1 %5186, float -0.000000e+00, float %5187
  %5189 = fmul fast float %4262, 0x3FF7154760000000
  %5190 = fmul fast float %5189, %5188
  %5191 = fmul fast float %4263, 0x3FF7154760000000
  %5192 = fmul fast float %5191, %5188
  %5193 = fmul fast float %4264, 0x3FF7154760000000
  %5194 = fmul fast float %5193, %5188
  %5195 = call float @dx.op.unary.f32(i32 21, float %5190)  ; Exp(value)
  %5196 = call float @dx.op.unary.f32(i32 21, float %5192)  ; Exp(value)
  %5197 = call float @dx.op.unary.f32(i32 21, float %5194)  ; Exp(value)
  %5198 = call float @dx.op.unary.f32(i32 7, float %5195)  ; Saturate(value)
  %5199 = call float @dx.op.unary.f32(i32 7, float %5196)  ; Saturate(value)
  %5200 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5201 = fmul fast float %5124, %5198
  %5202 = fmul fast float %5125, %5199
  %5203 = fmul fast float %5126, %5200
  %5204 = fsub fast float %5078, %4461
  %5205 = fsub fast float %5079, %4460
  %5206 = fsub fast float %5080, %4459
  %5207 = call float @dx.op.dot3.f32(i32 55, float %5204, float %5205, float %5206, float %5204, float %5205, float %5206)  ; Dot3(ax,ay,az,bx,by,bz)
  %5208 = call float @dx.op.unary.f32(i32 25, float %5207)  ; Rsqrt(value)
  %5209 = fmul fast float %5208, %5204
  %5210 = fmul fast float %5208, %5205
  %5211 = fmul fast float %5208, %5206
  %5212 = call float @dx.op.dot3.f32(i32 55, float %5078, float %5079, float %5080, float %4465, float %4466, float %4467)  ; Dot3(ax,ay,az,bx,by,bz)
  %5213 = call float @dx.op.dot3.f32(i32 55, float %4458, float %4457, float %4456, float %5209, float %5210, float %5211)  ; Dot3(ax,ay,az,bx,by,bz)
  %5214 = call float @dx.op.unary.f32(i32 7, float %5212)  ; Saturate(value)
  %5215 = fmul fast float %5214, %5085
  %5216 = fmul fast float %5214, %5214
  %5217 = fmul fast float %5216, %4488
  %5218 = call float @dx.op.unary.f32(i32 7, float %5217)  ; Saturate(value)
  %5219 = fmul fast float %5215, %5218
  %5220 = bitcast float %5075 to i32
  %5221 = ashr i32 %5220, 1
  %5222 = sub nsw i32 1597463007, %5221
  %5223 = bitcast i32 %5222 to float
  %5224 = fmul fast float %5223, %5072
  %5225 = fmul fast float %5223, %5073
  %5226 = fmul fast float %5223, %5074
  %5227 = fsub fast float %5224, %4461
  %5228 = fsub fast float %5225, %4460
  %5229 = fsub fast float %5226, %4459
  %5230 = call float @dx.op.dot3.f32(i32 55, float %5227, float %5228, float %5229, float %5227, float %5228, float %5229)  ; Dot3(ax,ay,az,bx,by,bz)
  %5231 = call float @dx.op.unary.f32(i32 25, float %5230)  ; Rsqrt(value)
  %5232 = fmul fast float %5227, %5231
  %5233 = fmul fast float %5228, %5231
  %5234 = fmul fast float %5229, %5231
  %5235 = call float @dx.op.dot3.f32(i32 55, float %4465, float %4466, float %4467, float %5232, float %5233, float %5234)  ; Dot3(ax,ay,az,bx,by,bz)
  %5236 = fmul fast float %5235, %5235
  %5237 = call float @dx.op.unary.f32(i32 6, float %5212)  ; FAbs(value)
  %5238 = fsub fast float 1.000000e+00, %4471
  %5239 = call float @dx.op.binary.f32(i32 35, float %5238, float 0x3F847AE140000000)  ; FMax(a,b)
  %5240 = fmul fast float %5239, %5239
  %5241 = fmul fast float %5240, %5240
  %5242 = fsub fast float 1.000000e+00, %5241
  %5243 = fmul fast float %4475, %4475
  %5244 = fmul fast float %5243, %5242
  %5245 = fadd fast float %5244, %5241
  %5246 = bitcast float %5245 to i32
  %5247 = ashr i32 %5246, 1
  %5248 = add nsw i32 %5247, 532487669
  %5249 = bitcast i32 %5248 to float
  %5250 = fadd fast float %5249, %4475
  %5251 = fmul fast float %5241, %5236
  %5252 = fsub fast float 1.000000e+00, %5236
  %5253 = fadd fast float %5252, %5251
  %5254 = fmul fast float %5237, %5237
  %5255 = fmul fast float %5254, %5242
  %5256 = fadd fast float %5255, %5241
  %5257 = bitcast float %5256 to i32
  %5258 = ashr i32 %5257, 1
  %5259 = add nsw i32 %5258, 532487669
  %5260 = bitcast i32 %5259 to float
  %5261 = fadd fast float %5260, %5237
  %5262 = fmul fast float %5253, %5253
  %5263 = fmul fast float %5262, %5250
  %5264 = fmul fast float %5263, %5261
  %5265 = fdiv fast float 1.000000e+00, %5264
  %5266 = bitcast float %5241 to i32
  %5267 = sitofp i32 %5266 to float
  %5268 = fmul fast float %5267, 0x3FE7F73180000000
  %5269 = fadd fast float %5268, 0x41AFE27C40000000
  %5270 = fptosi float %5269 to i32
  %5271 = bitcast i32 %5270 to float
  %5272 = fmul fast float %5058, 0x3FD80E9D60000000
  %5273 = fmul fast float %5272, %5223
  %5274 = fadd fast float %5271, %5273
  %5275 = bitcast float %5274 to i32
  %5276 = sub nsw i32 2129859010, %5275
  %5277 = bitcast i32 %5276 to float
  %5278 = fmul fast float %5241, %5265
  %5279 = fmul fast float %5278, %5271
  %5280 = fmul fast float %5279, %5277
  %5281 = call float @dx.op.unary.f32(i32 6, float %5213)  ; FAbs(value)
  %5282 = fsub fast float 1.000000e+00, %5281
  %5283 = bitcast float %5282 to i32
  %5284 = sitofp i32 %5283 to float
  %5285 = fmul fast float %5284, 5.000000e+00
  %5286 = fadd fast float %5285, 0xC1EFBF8940000000
  %5287 = fptosi float %5286 to i32
  %5288 = bitcast i32 %5287 to float
  %5289 = fsub fast float 1.000000e+00, %4468
  %5290 = fsub fast float 1.000000e+00, %4469
  %5291 = fsub fast float 1.000000e+00, %4473
  %5292 = fmul fast float %5288, %5289
  %5293 = fmul fast float %5288, %5290
  %5294 = fmul fast float %5288, %5291
  %5295 = fadd fast float %5292, %4468
  %5296 = fadd fast float %5293, %4469
  %5297 = fadd fast float %5294, %4473
  %5298 = fmul fast float %5212, 9.843750e-01
  %5299 = fadd fast float %5298, 7.812500e-03
  %5300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %5299, float %4735, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5301 = extractvalue %dx.types.ResRet.f32 %5300, 2
  %5302 = extractvalue %dx.types.ResRet.f32 %5300, 3
  %5303 = fmul fast float %5301, %4468
  %5304 = fmul fast float %5301, %4469
  %5305 = fmul fast float %5301, %4473
  %5306 = fadd fast float %5303, %5302
  %5307 = fadd fast float %5304, %5302
  %5308 = fadd fast float %5305, %5302
  %5309 = call float @dx.op.binary.f32(i32 35, float %5307, float %5308)  ; FMax(a,b)
  %5310 = call float @dx.op.binary.f32(i32 35, float %5306, float %5309)  ; FMax(a,b)
  %5311 = fsub fast float 1.000000e+00, %5310
  %5312 = fsub fast float -0.000000e+00, %4465
  %5313 = fsub fast float -0.000000e+00, %4466
  %5314 = fsub fast float -0.000000e+00, %4467
  %5315 = call float @dx.op.dot3.f32(i32 55, float %5078, float %5079, float %5080, float %5312, float %5313, float %5314)  ; Dot3(ax,ay,az,bx,by,bz)
  %5316 = call float @dx.op.unary.f32(i32 7, float %5315)  ; Saturate(value)
  %5317 = fmul fast float %5316, %5085
  %5318 = fmul fast float %5316, 9.843750e-01
  %5319 = fadd fast float %5318, 7.812500e-03
  %5320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %5319, float %4735, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5321 = extractvalue %dx.types.ResRet.f32 %5320, 2
  %5322 = extractvalue %dx.types.ResRet.f32 %5320, 3
  %5323 = fmul fast float %5321, %4468
  %5324 = fmul fast float %5321, %4469
  %5325 = fmul fast float %5321, %4473
  %5326 = fadd fast float %5323, %5322
  %5327 = fadd fast float %5324, %5322
  %5328 = fadd fast float %5325, %5322
  %5329 = call float @dx.op.binary.f32(i32 35, float %5327, float %5328)  ; FMax(a,b)
  %5330 = call float @dx.op.binary.f32(i32 35, float %5326, float %5329)  ; FMax(a,b)
  %5331 = fsub fast float 1.000000e+00, %5330
  %5332 = fmul fast float %5317, %5331
  %5333 = fmul fast float %5332, %3884
  %5334 = fmul fast float %5332, %3885
  %5335 = fmul fast float %5332, %3886
  %5336 = fmul fast float %5311, %5219
  %5337 = fadd fast float %5333, %5336
  %5338 = fadd fast float %5334, %5336
  %5339 = fadd fast float %5335, %5336
  %5340 = fmul fast float %5201, %929
  %5341 = fmul fast float %5340, %5337
  %5342 = fmul fast float %5202, %929
  %5343 = fmul fast float %5342, %5338
  %5344 = fmul fast float %5203, %929
  %5345 = fmul fast float %5344, %5339
  %5346 = fadd fast float %5341, %5040
  %5347 = fadd fast float %5343, %5041
  %5348 = fadd fast float %5345, %5042
  %5349 = fmul fast float %5340, %5219
  %5350 = fmul fast float %5349, %5295
  %5351 = fmul fast float %5350, %5280
  %5352 = fmul fast float %5342, %5219
  %5353 = fmul fast float %5352, %5296
  %5354 = fmul fast float %5353, %5280
  %5355 = fmul fast float %5344, %5219
  %5356 = fmul fast float %5355, %5297
  %5357 = fmul fast float %5356, %5280
  %5358 = fadd fast float %5351, %5037
  %5359 = fadd fast float %5354, %5038
  %5360 = fadd fast float %5357, %5039
  br label %5115

; <label>:5361                                    ; preds = %5115
  br label %5362

; <label>:5362                                    ; preds = %5361, %5003
  %5363 = phi float [ %5005, %5003 ], [ %5116, %5361 ]
  %5364 = phi float [ %5006, %5003 ], [ %5117, %5361 ]
  %5365 = phi float [ %5007, %5003 ], [ %5118, %5361 ]
  %5366 = phi float [ %5008, %5003 ], [ %5119, %5361 ]
  %5367 = phi float [ %5009, %5003 ], [ %5120, %5361 ]
  %5368 = phi float [ %5010, %5003 ], [ %5121, %5361 ]
  %5369 = add i32 %5004, 1
  %5370 = icmp ugt i32 %5369, %5000
  br i1 %5370, label %5371, label %5003

; <label>:5371                                    ; preds = %5362
  br label %5372

; <label>:5372                                    ; preds = %5371, %4979, %4969
  %5373 = phi float [ %4970, %4969 ], [ %4970, %4979 ], [ %5363, %5371 ]
  %5374 = phi float [ %4971, %4969 ], [ %4971, %4979 ], [ %5364, %5371 ]
  %5375 = phi float [ %4972, %4969 ], [ %4972, %4979 ], [ %5365, %5371 ]
  %5376 = phi float [ %4973, %4969 ], [ %4973, %4979 ], [ %5366, %5371 ]
  %5377 = phi float [ %4974, %4969 ], [ %4974, %4979 ], [ %5367, %5371 ]
  %5378 = phi float [ %4975, %4969 ], [ %4975, %4979 ], [ %5368, %5371 ]
  %5379 = call float @dx.op.unary.f32(i32 24, float %4462)  ; Sqrt(value)
  %5380 = call float @dx.op.unary.f32(i32 24, float %4463)  ; Sqrt(value)
  %5381 = call float @dx.op.unary.f32(i32 24, float %4464)  ; Sqrt(value)
  %5382 = fmul fast float %5379, %5376
  %5383 = fmul fast float %5380, %5377
  %5384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5385 = extractvalue %dx.types.CBufRet.f32 %5384, 0
  br i1 %168, label %5386, label %5407

; <label>:5386                                    ; preds = %5372
  %5387 = fadd fast float %5378, %3770
  %5388 = fmul fast float %5387, %3768
  %5389 = fsub fast float 1.000000e+00, %3768
  %5390 = call float @dx.op.unary.f32(i32 7, float %5389)  ; Saturate(value)
  %5391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5392 = extractvalue %dx.types.CBufRet.f32 %5391, 3
  %5393 = fmul fast float %5392, %5390
  %5394 = fadd fast float %5393, %5388
  %5395 = fsub fast float 1.000000e+00, %4475
  %5396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5397 = extractvalue %dx.types.CBufRet.f32 %5396, 0
  %5398 = fmul fast float %5397, %5395
  %5399 = fsub fast float %5394, %5398
  %5400 = fadd fast float %5383, %5382
  %5401 = fmul fast float %5385, %5400
  %5402 = extractvalue %dx.types.CBufRet.f32 %5391, 1
  %5403 = fsub fast float %5399, %5402
  %5404 = extractvalue %dx.types.CBufRet.f32 %5391, 2
  %5405 = fmul fast float %5403, %5404
  %5406 = call float @dx.op.unary.f32(i32 7, float %5405)  ; Saturate(value)
  br label %5423

; <label>:5407                                    ; preds = %5372
  %5408 = fmul fast float %5381, %5378
  %5409 = fmul fast float %5385, %5382
  %5410 = fmul fast float %5385, %5383
  %5411 = fmul fast float %5408, %5385
  %5412 = add i32 %30, 356
  %5413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %5412, i32 undef)  ; BufferLoad(srv,index,wot)
  %5414 = extractvalue %dx.types.ResRet.i32 %5413, 0
  %5415 = and i32 %5414, 32
  %5416 = icmp eq i32 %5415, 0
  br i1 %5416, label %5423, label %5417

; <label>:5417                                    ; preds = %5407
  %5418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5419 = extractvalue %dx.types.CBufRet.f32 %5418, 0
  %5420 = fmul fast float %5419, 0x3FE99999A0000000
  %5421 = fadd fast float %5419, %5409
  %5422 = fadd fast float %5420, %5411
  br label %5423

; <label>:5423                                    ; preds = %5417, %5407, %5386
  %5424 = phi float [ %5401, %5386 ], [ %5421, %5417 ], [ %5409, %5407 ]
  %5425 = phi float [ %5406, %5386 ], [ %5410, %5417 ], [ %5410, %5407 ]
  %5426 = phi float [ 1.000000e+00, %5386 ], [ %5422, %5417 ], [ %5411, %5407 ]
  %5427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5428 = extractvalue %dx.types.CBufRet.f32 %5427, 0
  %5429 = fmul fast float %5428, %5374
  %5430 = fmul fast float %5428, %5375
  %5431 = fadd fast float %5374, %5373
  %5432 = select i1 %168, float %5431, float %5373
  %5433 = fmul float %5432, %5428
  %5434 = select i1 %168, float 0.000000e+00, float %5429
  %5435 = select i1 %168, float 0.000000e+00, float %5430
  %5436 = fmul fast float %5424, %5379
  %5437 = fmul fast float %5425, %5380
  %5438 = fmul fast float %5426, %5381
  %5439 = fadd fast float %5433, %5436
  %5440 = fadd fast float %5434, %5437
  %5441 = fadd fast float %5435, %5438
  %5442 = select i1 %168, float %5425, float %5440
  %5443 = select i1 %168, float %5426, float %5441
  %5444 = call float @dx.op.binary.f32(i32 36, float %5439, float 3.225500e+04)  ; FMin(a,b)
  %5445 = call float @dx.op.binary.f32(i32 36, float %5442, float 3.225500e+04)  ; FMin(a,b)
  %5446 = call float @dx.op.binary.f32(i32 36, float %5443, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5444)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5445)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5446)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!36 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!37 = !{!38, !39, !40, !41, !42}
!38 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!39 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!40 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!41 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!42 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!43 = !{[46 x i32] [i32 44, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0]}
!44 = !{void ()* @ps_main, !"ps_main", !45, !4, !68}
!45 = !{!46, !66, null}
!46 = !{!47, !50, !52, !54, !56, !58, !59, !60, !61, !62, !63, !65}
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
!65 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !48, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!66 = !{!67}
!67 = !{i32 0, !"SV_Target", i8 9, i8 16, !48, i8 0, i32 1, i8 4, i32 0, i8 0, !57}
!68 = !{i32 0, i64 24}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}

