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
; shader hash: ca31171f69d107d76f3b833f18e5ea8d
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
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  %357 = add i32 %32, 472
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
  br i1 %410, label %869, label %411

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
  %515 = add i32 %32, 360
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
  %538 = add i32 %32, 440
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
  %736 = add i32 %32, 376
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
  %820 = add i32 %32, 392
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
  %856 = add i32 %32, 96
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = and i32 %858, 255
  %860 = uitofp i32 %859 to float
  %861 = lshr i32 %858, 8
  %862 = and i32 %861, 255
  %863 = uitofp i32 %862 to float
  %864 = call float @dx.op.dot3.f32(i32 55, float %725, float %726, float %727, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %865 = fmul fast float %863, %864
  %866 = fadd fast float %865, %860
  %867 = fmul fast float %866, 0x3F70101020000000
  %868 = call float @dx.op.unary.f32(i32 7, float %867)  ; Saturate(value)
  br label %869

; <label>:869                                     ; preds = %852, %396
  %870 = phi float [ 0.000000e+00, %396 ], [ %806, %852 ]
  %871 = phi float [ 0.000000e+00, %396 ], [ %807, %852 ]
  %872 = phi float [ 0.000000e+00, %396 ], [ %725, %852 ]
  %873 = phi float [ 0.000000e+00, %396 ], [ %726, %852 ]
  %874 = phi float [ 0.000000e+00, %396 ], [ %727, %852 ]
  %875 = phi float [ 0.000000e+00, %396 ], [ %853, %852 ]
  %876 = phi float [ 0.000000e+00, %396 ], [ %854, %852 ]
  %877 = phi float [ 0.000000e+00, %396 ], [ %855, %852 ]
  %878 = phi float [ 0.000000e+00, %396 ], [ %711, %852 ]
  %879 = phi float [ 0.000000e+00, %396 ], [ 1.000000e+00, %852 ]
  %880 = phi float [ 0.000000e+00, %396 ], [ %805, %852 ]
  %881 = phi float [ 0.000000e+00, %396 ], [ %808, %852 ]
  %882 = phi float [ 0.000000e+00, %396 ], [ %868, %852 ]
  br i1 %347, label %1724, label %883

; <label>:883                                     ; preds = %869
  %884 = icmp ult i32 %402, 2
  %885 = add i32 %32, 40
  %886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %885, i32 undef)  ; BufferLoad(srv,index,wot)
  %887 = extractvalue %dx.types.ResRet.i32 %886, 0
  %888 = add i32 %32, 44
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = or i32 %890, %887
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %1724, label %893

; <label>:893                                     ; preds = %883
  %894 = and i32 %887, 262144
  %895 = icmp ne i32 %894, 0
  %896 = select i1 %895, float %34, float 1.000000e+00
  %897 = select i1 %895, float %35, float 0.000000e+00
  %898 = select i1 %895, float %36, float 0.000000e+00
  %899 = select i1 %895, float %37, float 1.000000e+00
  %900 = select i1 %895, float %38, float %59
  %901 = select i1 %895, float %39, float %60
  %902 = add i32 %32, 300
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = lshr i32 %904, 16
  %906 = call float @dx.op.legacyF16ToF32(i32 131, i32 %905)  ; LegacyF16ToF32(value)
  %907 = fmul fast float %906, 0x3F50624DE0000000
  %908 = add i32 %32, 104
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = lshr i32 %910, 16
  %912 = and i32 %911, 255
  %913 = lshr i32 %910, 24
  %914 = add i32 %32, 308
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = and i32 %916, 65535
  %918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %917)  ; LegacyF16ToF32(value)
  %919 = lshr i32 %916, 16
  %920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %919)  ; LegacyF16ToF32(value)
  %921 = add i32 %32, 48
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %921, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = lshr i32 %923, 22
  %925 = shl nuw nsw i32 %924, 5
  %926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %925)  ; LegacyF16ToF32(value)
  %927 = shl i32 %923, 4
  %928 = and i32 %927, 32752
  %929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %928)  ; LegacyF16ToF32(value)
  %930 = lshr i32 %923, 7
  %931 = and i32 %930, 32752
  %932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %931)  ; LegacyF16ToF32(value)
  %933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.f32 %933, 3
  %935 = fmul fast float %934, 1.000000e+03
  %936 = fmul fast float %257, %935
  %937 = call float @dx.op.unary.f32(i32 22, float %936)  ; Frc(value)
  %938 = fadd fast float %937, %247
  %939 = fmul fast float %258, %935
  %940 = call float @dx.op.unary.f32(i32 22, float %939)  ; Frc(value)
  %941 = fadd fast float %940, %249
  %942 = fmul fast float %907, %935
  %943 = call float @dx.op.unary.f32(i32 22, float %942)  ; Frc(value)
  %944 = fmul fast float %943, 0x401921FB60000000
  %945 = fadd fast float %944, %926
  %946 = call float @dx.op.unary.f32(i32 13, float %945)  ; Sin(value)
  %947 = call float @dx.op.unary.f32(i32 12, float %945)  ; Cos(value)
  %948 = fsub fast float -0.000000e+00, %946
  %949 = fadd fast float %900, -5.000000e-01
  %950 = fadd fast float %901, -5.000000e-01
  %951 = fmul fast float %918, %949
  %952 = fmul fast float %920, %950
  %953 = fadd fast float %951, 5.000000e-01
  %954 = fadd fast float %952, 5.000000e-01
  %955 = fmul fast float %929, %953
  %956 = fmul fast float %932, %954
  %957 = fmul fast float %947, %955
  %958 = call float @dx.op.tertiary.f32(i32 46, float %948, float %956, float %957)  ; FMad(a,b,c)
  %959 = fmul fast float %946, %955
  %960 = call float @dx.op.tertiary.f32(i32 46, float %947, float %956, float %959)  ; FMad(a,b,c)
  %961 = fadd fast float %938, %958
  %962 = fadd fast float %941, %960
  %963 = icmp ugt i32 %912, 1
  %964 = icmp ugt i32 %910, 33554431
  %965 = or i1 %964, %963
  br i1 %965, label %966, label %991

; <label>:966                                     ; preds = %893
  %967 = add i32 %32, 244
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = lshr i32 %969, 16
  %971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %970)  ; LegacyF16ToF32(value)
  %972 = fmul fast float %934, %971
  %973 = call float @dx.op.unary.f32(i32 22, float %972)  ; Frc(value)
  %974 = mul nuw nsw i32 %912, %913
  %975 = uitofp i32 %974 to float
  %976 = fmul fast float %973, %975
  %977 = call float @dx.op.unary.f32(i32 27, float %976)  ; Round_ni(value)
  %978 = fptoui float %977 to i32
  %979 = urem i32 %978, %912
  %980 = udiv i32 %978, %913
  %981 = call float @dx.op.unary.f32(i32 22, float %961)  ; Frc(value)
  %982 = call float @dx.op.unary.f32(i32 22, float %962)  ; Frc(value)
  %983 = uitofp i32 %979 to float
  %984 = uitofp i32 %980 to float
  %985 = fadd fast float %981, %983
  %986 = fadd fast float %982, %984
  %987 = uitofp i32 %912 to float
  %988 = uitofp i32 %913 to float
  %989 = fdiv fast float %985, %987
  %990 = fdiv fast float %986, %988
  br label %991

; <label>:991                                     ; preds = %966, %893
  %992 = phi float [ %989, %966 ], [ %961, %893 ]
  %993 = phi float [ %990, %966 ], [ %962, %893 ]
  %994 = and i32 %887, 16777216
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %1105, label %996

; <label>:996                                     ; preds = %991
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 0
  %999 = extractvalue %dx.types.CBufRet.f32 %997, 1
  %1000 = extractvalue %dx.types.CBufRet.f32 %997, 2
  %1001 = fadd fast float %998, %130
  %1002 = fadd fast float %999, %131
  %1003 = fadd fast float %1000, %132
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 0
  %1006 = call float @dx.op.unary.f32(i32 7, float %1005)  ; Saturate(value)
  %1007 = icmp eq i32 %33, 65535
  br i1 %1007, label %1102, label %1008

; <label>:1008                                    ; preds = %996
  %1009 = lshr i32 %33, 1
  %1010 = shl i32 %1009, 2
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = and i32 %33, 1
  %1014 = icmp ne i32 %1013, 0
  %1015 = lshr i32 %1012, 16
  %1016 = and i32 %1012, 65535
  %1017 = select i1 %1014, i32 %1015, i32 %1016
  %1018 = icmp eq i32 %1017, 65535
  br i1 %1018, label %1098, label %1019

; <label>:1019                                    ; preds = %1008
  %1020 = mul nuw nsw i32 %1017, 40
  %1021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.f32 %1021, 0
  %1023 = extractvalue %dx.types.ResRet.f32 %1021, 1
  %1024 = extractvalue %dx.types.ResRet.f32 %1021, 2
  %1025 = add nuw nsw i32 %1020, 12
  %1026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.f32 %1026, 0
  %1028 = extractvalue %dx.types.ResRet.f32 %1026, 1
  %1029 = extractvalue %dx.types.ResRet.f32 %1026, 2
  %1030 = add nuw nsw i32 %1020, 24
  %1031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1030, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.f32 %1031, 0
  %1033 = extractvalue %dx.types.ResRet.f32 %1031, 1
  %1034 = extractvalue %dx.types.ResRet.f32 %1031, 2
  %1035 = add nuw nsw i32 %1020, 36
  %1036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.f32 %1036, 0
  %1038 = fsub fast float %1001, %1022
  %1039 = fsub fast float %1002, %1023
  %1040 = fsub fast float %1003, %1024
  %1041 = fmul fast float %1037, %1038
  %1042 = fmul fast float %1037, %1039
  %1043 = fmul fast float %1037, %1040
  %1044 = call float @dx.op.unary.f32(i32 27, float %1041)  ; Round_ni(value)
  %1045 = call float @dx.op.unary.f32(i32 27, float %1042)  ; Round_ni(value)
  %1046 = call float @dx.op.unary.f32(i32 27, float %1043)  ; Round_ni(value)
  %1047 = fadd fast float %1044, 5.000000e-01
  %1048 = fadd fast float %1045, 5.000000e-01
  %1049 = fadd fast float %1046, 5.000000e-01
  %1050 = fmul fast float %1047, %1027
  %1051 = fmul fast float %1048, %1028
  %1052 = fmul fast float %1049, %1029
  %1053 = shl i32 %33, 2
  %1054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1053, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.i32 %1054, 0
  %1056 = add i32 %1055, 0
  %1057 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1056, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1058 = call float @dx.op.unary.f32(i32 22, float %1050)  ; Frc(value)
  %1059 = call float @dx.op.unary.f32(i32 22, float %1051)  ; Frc(value)
  %1060 = call float @dx.op.unary.f32(i32 22, float %1052)  ; Frc(value)
  %1061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1057, %dx.types.Handle %27, float %1058, float %1059, float %1060, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1062 = extractvalue %dx.types.ResRet.f32 %1061, 0
  %1063 = extractvalue %dx.types.ResRet.f32 %1061, 1
  %1064 = extractvalue %dx.types.ResRet.f32 %1061, 2
  %1065 = fmul fast float %1062, 1.023000e+03
  %1066 = fmul fast float %1063, 1.023000e+03
  %1067 = fmul fast float %1064, 1.023000e+03
  %1068 = fadd fast float %1065, 5.000000e-01
  %1069 = fadd fast float %1066, 5.000000e-01
  %1070 = fadd fast float %1067, 5.000000e-01
  %1071 = call float @dx.op.unary.f32(i32 27, float %1068)  ; Round_ni(value)
  %1072 = call float @dx.op.unary.f32(i32 27, float %1069)  ; Round_ni(value)
  %1073 = call float @dx.op.unary.f32(i32 27, float %1070)  ; Round_ni(value)
  %1074 = fsub fast float %1041, %1044
  %1075 = fsub fast float %1042, %1045
  %1076 = fsub fast float %1043, %1046
  %1077 = fmul fast float %1074, 7.500000e-01
  %1078 = fmul fast float %1075, 7.500000e-01
  %1079 = fmul fast float %1076, 7.500000e-01
  %1080 = fadd fast float %1044, 1.250000e-01
  %1081 = fadd fast float %1080, %1077
  %1082 = fadd fast float %1081, %1071
  %1083 = fadd fast float %1045, 1.250000e-01
  %1084 = fadd fast float %1083, %1078
  %1085 = fadd fast float %1084, %1072
  %1086 = fadd fast float %1046, 1.250000e-01
  %1087 = fadd fast float %1086, %1079
  %1088 = fadd fast float %1087, %1073
  %1089 = fmul fast float %1082, %1032
  %1090 = fmul fast float %1085, %1033
  %1091 = fmul fast float %1088, %1034
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1053, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = add i32 %1093, 0
  %1095 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1094, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1095, %dx.types.Handle %25, float %1089, float %1090, float %1091, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1097 = extractvalue %dx.types.ResRet.f32 %1096, 0
  br label %1098

; <label>:1098                                    ; preds = %1019, %1008
  %1099 = phi float [ %1097, %1019 ], [ -1.000000e+00, %1008 ]
  %1100 = fadd fast float %1099, %1006
  %1101 = call float @dx.op.unary.f32(i32 7, float %1100)  ; Saturate(value)
  br label %1102

; <label>:1102                                    ; preds = %1098, %996
  %1103 = phi float [ %1101, %1098 ], [ %1006, %996 ]
  %1104 = fmul fast float %1103, %399
  br label %1105

; <label>:1105                                    ; preds = %1102, %991
  %1106 = phi float [ %1104, %1102 ], [ %399, %991 ]
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = and i32 %1108, 256
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1157, label %1111

; <label>:1111                                    ; preds = %1105
  %1112 = add i32 %32, 428
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = add i32 %1114, 0
  %1116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1115, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1117 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1116, %dx.types.Handle %68, float %992, float %993, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1118 = extractvalue %dx.types.ResRet.f32 %1117, 0
  %1119 = add i32 %32, 116
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = shl i32 %1121, 4
  %1123 = and i32 %1122, 32752
  %1124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1123)  ; LegacyF16ToF32(value)
  %1125 = lshr i32 %1121, 7
  %1126 = and i32 %1125, 32752
  %1127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1126)  ; LegacyF16ToF32(value)
  %1128 = fsub fast float 1.000000e+00, %1106
  %1129 = call float @dx.op.binary.f32(i32 35, float %1128, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1130 = bitcast float %1106 to i32
  %1131 = sitofp i32 %1130 to float
  %1132 = fadd fast float %1131, 0xC1CFBF8940000000
  %1133 = fmul fast float %1127, %1132
  %1134 = fadd fast float %1133, 0x41CFBF8940000000
  %1135 = fptosi float %1134 to i32
  %1136 = bitcast i32 %1135 to float
  %1137 = bitcast float %1129 to i32
  %1138 = sitofp i32 %1137 to float
  %1139 = fadd fast float %1138, 0xC1CFBF8940000000
  %1140 = fmul fast float %1139, %1127
  %1141 = fadd fast float %1140, 0x41CFBF8940000000
  %1142 = fptosi float %1141 to i32
  %1143 = bitcast i32 %1142 to float
  %1144 = fmul fast float %1136, %1124
  %1145 = fmul fast float %1143, %1124
  %1146 = fsub fast float %1129, %1144
  %1147 = fadd fast float %1145, %1129
  %1148 = call float @dx.op.unary.f32(i32 7, float %1146)  ; Saturate(value)
  %1149 = call float @dx.op.unary.f32(i32 7, float %1147)  ; Saturate(value)
  %1150 = fsub fast float %1118, %1148
  %1151 = fsub fast float %1149, %1148
  %1152 = bitcast float %1151 to i32
  %1153 = sub nsw i32 2129859010, %1152
  %1154 = bitcast i32 %1153 to float
  %1155 = fmul fast float %1154, %1150
  %1156 = call float @dx.op.unary.f32(i32 7, float %1155)  ; Saturate(value)
  br label %1157

; <label>:1157                                    ; preds = %1111, %1105
  %1158 = phi float [ %1156, %1111 ], [ %1106, %1105 ]
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = and i32 %1160, 128
  %1162 = icmp eq i32 %1161, 0
  br i1 %1162, label %1179, label %1163

; <label>:1163                                    ; preds = %1157
  %1164 = add i32 %32, 412
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = add i32 %1166, 0
  %1168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1167, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1169 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1168, %dx.types.Handle %68, float %992, float %993, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1170 = extractvalue %dx.types.ResRet.f32 %1169, 0
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = and i32 %1172, 524288
  %1174 = icmp ne i32 %1173, 0
  %1175 = fcmp fast ogt float %1170, 0x3FE0101020000000
  %1176 = select i1 %1175, float 1.000000e+00, float 0.000000e+00
  %1177 = select i1 %1174, float %1176, float %1170
  %1178 = fmul fast float %1177, %1158
  br label %1179

; <label>:1179                                    ; preds = %1163, %1157
  %1180 = phi float [ %1178, %1163 ], [ %1158, %1157 ]
  %1181 = fcmp fast ult float %1180, 0x3F70101020000000
  br i1 %1181, label %1724, label %1182

; <label>:1182                                    ; preds = %1179
  %1183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.i32 %1183, 0
  %1185 = and i32 %1184, 16
  %1186 = icmp eq i32 %1185, 0
  br i1 %1186, label %1385, label %1187

; <label>:1187                                    ; preds = %1182
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = add i32 %32, 364
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = add i32 %1192, 0
  %1194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1193, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1195 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1194, %dx.types.Handle %67, float %992, float %993, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.ResRet.f32 %1195, 1
  %1198 = extractvalue %dx.types.ResRet.f32 %1195, 2
  %1199 = extractvalue %dx.types.ResRet.f32 %1195, 3
  %1200 = and i32 %1189, 255
  %1201 = uitofp i32 %1200 to float
  %1202 = lshr i32 %1189, 8
  %1203 = and i32 %1202, 255
  %1204 = uitofp i32 %1203 to float
  %1205 = fmul fast float %1199, %1201
  %1206 = fadd fast float %1205, %1204
  %1207 = fmul fast float %1206, 0x3F70101000000000
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = and i32 %1209, 512
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %1220, label %1212

; <label>:1212                                    ; preds = %1187
  %1213 = add i32 %32, 444
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = add i32 %1215, 0
  %1217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1216, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1218 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1217, %dx.types.Handle %68, float %992, float %993, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  br label %1220

; <label>:1220                                    ; preds = %1212, %1187
  %1221 = phi float [ %1219, %1212 ], [ 1.000000e+00, %1187 ]
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = and i32 %1223, 33554432
  %1225 = icmp eq i32 %1224, 0
  br i1 %1225, label %1332, label %1226

; <label>:1226                                    ; preds = %1220
  %1227 = add i32 %32, 240
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = and i32 %1229, 65535
  %1231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1230)  ; LegacyF16ToF32(value)
  %1232 = lshr i32 %1229, 16
  %1233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1232)  ; LegacyF16ToF32(value)
  %1234 = add i32 %32, 244
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = and i32 %1236, 65535
  %1238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1237)  ; LegacyF16ToF32(value)
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = lshr i32 %1240, 24
  %1242 = uitofp i32 %1241 to float
  %1243 = fmul fast float %1242, 0x3F70101020000000
  %1244 = and i32 %1240, 255
  %1245 = uitofp i32 %1244 to float
  %1246 = fmul fast float %1245, 0x3F70101020000000
  %1247 = lshr i32 %1240, 8
  %1248 = and i32 %1247, 255
  %1249 = uitofp i32 %1248 to float
  %1250 = fmul fast float %1249, 0x3F70101020000000
  %1251 = lshr i32 %1240, 16
  %1252 = and i32 %1251, 255
  %1253 = uitofp i32 %1252 to float
  %1254 = fmul fast float %1253, 0x3F70101020000000
  %1255 = add i32 %32, 236
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = lshr i32 %1257, 24
  %1259 = uitofp i32 %1258 to float
  %1260 = fmul fast float %1259, 0x3F70101020000000
  %1261 = and i32 %1257, 255
  %1262 = uitofp i32 %1261 to float
  %1263 = fmul fast float %1262, 0x3F70101020000000
  %1264 = lshr i32 %1257, 8
  %1265 = and i32 %1264, 255
  %1266 = uitofp i32 %1265 to float
  %1267 = fmul fast float %1266, 0x3F70101020000000
  %1268 = lshr i32 %1257, 16
  %1269 = and i32 %1268, 255
  %1270 = uitofp i32 %1269 to float
  %1271 = fmul fast float %1270, 0x3F70101020000000
  %1272 = bitcast float %1196 to i32
  %1273 = ashr i32 %1272, 1
  %1274 = sub nsw i32 1597463174, %1273
  %1275 = bitcast i32 %1274 to float
  %1276 = fmul fast float %1196, 5.000000e-01
  %1277 = fmul fast float %1275, %1275
  %1278 = fmul fast float %1277, %1276
  %1279 = fsub fast float 1.500000e+00, %1278
  %1280 = fmul fast float %1275, %1196
  %1281 = fmul fast float %1280, %1279
  %1282 = bitcast float %1197 to i32
  %1283 = ashr i32 %1282, 1
  %1284 = sub nsw i32 1597463174, %1283
  %1285 = bitcast i32 %1284 to float
  %1286 = fmul fast float %1197, 5.000000e-01
  %1287 = fmul fast float %1285, %1285
  %1288 = fmul fast float %1287, %1286
  %1289 = fsub fast float 1.500000e+00, %1288
  %1290 = fmul fast float %1285, %1197
  %1291 = fmul fast float %1290, %1289
  %1292 = bitcast float %1198 to i32
  %1293 = ashr i32 %1292, 1
  %1294 = sub nsw i32 1597463174, %1293
  %1295 = bitcast i32 %1294 to float
  %1296 = fmul fast float %1198, 5.000000e-01
  %1297 = fmul fast float %1295, %1295
  %1298 = fmul fast float %1297, %1296
  %1299 = fsub fast float 1.500000e+00, %1298
  %1300 = fmul fast float %1295, %1198
  %1301 = fmul fast float %1300, %1299
  %1302 = fsub fast float %1281, %1263
  %1303 = fsub fast float %1291, %1267
  %1304 = fsub fast float %1301, %1271
  %1305 = fmul fast float %1302, %1231
  %1306 = fmul fast float %1303, %1233
  %1307 = fmul fast float %1304, %1238
  %1308 = fadd fast float %1305, %1246
  %1309 = fadd fast float %1306, %1250
  %1310 = fadd fast float %1307, %1254
  %1311 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1312 = call float @dx.op.unary.f32(i32 7, float %1309)  ; Saturate(value)
  %1313 = call float @dx.op.unary.f32(i32 7, float %1310)  ; Saturate(value)
  %1314 = fmul fast float %1311, %1311
  %1315 = fmul fast float %1312, %1312
  %1316 = fmul fast float %1313, %1313
  %1317 = fsub fast float %1314, %1196
  %1318 = fsub fast float %1315, %1197
  %1319 = fsub fast float %1316, %1198
  %1320 = fmul fast float %1317, %1221
  %1321 = fmul fast float %1318, %1221
  %1322 = fmul fast float %1319, %1221
  %1323 = fadd fast float %1320, %1196
  %1324 = fadd fast float %1321, %1197
  %1325 = fadd fast float %1322, %1198
  %1326 = fadd fast float %1243, %1207
  %1327 = fsub fast float %1326, %1260
  %1328 = call float @dx.op.unary.f32(i32 7, float %1327)  ; Saturate(value)
  %1329 = fsub fast float %1328, %1207
  %1330 = fmul fast float %1329, %1221
  %1331 = fadd fast float %1330, %1207
  br label %1385

; <label>:1332                                    ; preds = %1220
  %1333 = and i32 %1223, 134217728
  %1334 = icmp eq i32 %1333, 0
  br i1 %1334, label %1369, label %1335

; <label>:1335                                    ; preds = %1332
  %1336 = call float @dx.op.unary.f32(i32 24, float %234)  ; Sqrt(value)
  %1337 = call float @dx.op.unary.f32(i32 24, float %238)  ; Sqrt(value)
  %1338 = call float @dx.op.unary.f32(i32 24, float %242)  ; Sqrt(value)
  %1339 = fadd fast float %1336, -5.000000e-01
  %1340 = fadd fast float %1337, -5.000000e-01
  %1341 = fadd fast float %1338, -5.000000e-01
  %1342 = fmul fast float %1339, %1221
  %1343 = fmul fast float %1340, %1221
  %1344 = fmul fast float %1341, %1221
  %1345 = fadd fast float %1342, 5.000000e-01
  %1346 = fadd fast float %1343, 5.000000e-01
  %1347 = fadd fast float %1344, 5.000000e-01
  %1348 = call float @dx.op.unary.f32(i32 24, float %1196)  ; Sqrt(value)
  %1349 = call float @dx.op.unary.f32(i32 24, float %1197)  ; Sqrt(value)
  %1350 = call float @dx.op.unary.f32(i32 24, float %1198)  ; Sqrt(value)
  %1351 = fmul fast float %1345, 2.000000e+00
  %1352 = fsub fast float 1.000000e+00, %1351
  %1353 = fmul fast float %1352, %1348
  %1354 = fadd fast float %1353, %1351
  %1355 = fmul fast float %1354, %1348
  %1356 = fmul fast float %1346, 2.000000e+00
  %1357 = fsub fast float 1.000000e+00, %1356
  %1358 = fmul fast float %1357, %1349
  %1359 = fadd fast float %1358, %1356
  %1360 = fmul fast float %1359, %1349
  %1361 = fmul fast float %1347, 2.000000e+00
  %1362 = fsub fast float 1.000000e+00, %1361
  %1363 = fmul fast float %1362, %1350
  %1364 = fadd fast float %1363, %1361
  %1365 = fmul fast float %1364, %1350
  %1366 = fmul fast float %1355, %1355
  %1367 = fmul fast float %1360, %1360
  %1368 = fmul fast float %1365, %1365
  br label %1385

; <label>:1369                                    ; preds = %1332
  %1370 = fmul fast float %234, %234
  %1371 = fmul fast float %238, %238
  %1372 = fmul fast float %242, %242
  %1373 = fadd fast float %1370, -1.000000e+00
  %1374 = fadd fast float %1371, -1.000000e+00
  %1375 = fadd fast float %1372, -1.000000e+00
  %1376 = fmul fast float %1221, %1373
  %1377 = fmul fast float %1221, %1374
  %1378 = fmul fast float %1221, %1375
  %1379 = fadd fast float %1376, 1.000000e+00
  %1380 = fadd fast float %1377, 1.000000e+00
  %1381 = fadd fast float %1378, 1.000000e+00
  %1382 = fmul fast float %1379, %1196
  %1383 = fmul fast float %1380, %1197
  %1384 = fmul fast float %1381, %1198
  br label %1385

; <label>:1385                                    ; preds = %1369, %1335, %1226, %1182
  %1386 = phi float [ %1331, %1226 ], [ %1207, %1335 ], [ %1207, %1369 ], [ 0x3FA23C0BE0000000, %1182 ]
  %1387 = phi float [ %1323, %1226 ], [ %1366, %1335 ], [ %1382, %1369 ], [ 1.000000e+00, %1182 ]
  %1388 = phi float [ %1324, %1226 ], [ %1367, %1335 ], [ %1383, %1369 ], [ 1.000000e+00, %1182 ]
  %1389 = phi float [ %1325, %1226 ], [ %1368, %1335 ], [ %1384, %1369 ], [ 1.000000e+00, %1182 ]
  %1390 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1391 = extractvalue %dx.types.CBufRet.i32 %1390, 1
  %1392 = and i32 %1391, 1
  %1393 = icmp ne i32 %1392, 0
  %1394 = add i32 %32, 356
  %1395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.i32 %1395, 0
  %1397 = and i32 %1396, 32
  %1398 = icmp ne i32 %1397, 0
  %1399 = and i1 %1393, %1398
  %1400 = select i1 %1399, float 1.000000e+00, float %1387
  %1401 = select i1 %1399, float 0x3FD3333340000000, float %1388
  %1402 = select i1 %1399, float 0x3FD3333340000000, float %1389
  %1403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.i32 %1403, 0
  %1405 = and i32 %1404, 32
  %1406 = icmp eq i32 %1405, 0
  br i1 %1406, label %1479, label %1407

; <label>:1407                                    ; preds = %1385
  %1408 = add i32 %32, 108
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1408, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = add i32 %32, 380
  %1412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1411, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.i32 %1412, 0
  %1414 = add i32 %1413, 0
  %1415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1416 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1415, %dx.types.Handle %67, float %992, float %993, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1417 = extractvalue %dx.types.ResRet.f32 %1416, 0
  %1418 = extractvalue %dx.types.ResRet.f32 %1416, 1
  %1419 = extractvalue %dx.types.ResRet.f32 %1416, 2
  %1420 = extractvalue %dx.types.ResRet.f32 %1416, 3
  %1421 = and i32 %1410, 255
  %1422 = uitofp i32 %1421 to float
  %1423 = lshr i32 %1410, 8
  %1424 = and i32 %1423, 255
  %1425 = uitofp i32 %1424 to float
  %1426 = lshr i32 %1410, 16
  %1427 = and i32 %1426, 255
  %1428 = uitofp i32 %1427 to float
  %1429 = fmul fast float %1428, 0x3F70101000000000
  %1430 = fmul fast float %1417, %1422
  %1431 = fadd fast float %1430, %1425
  %1432 = fmul fast float %1431, 0x3F70101000000000
  %1433 = fadd fast float %1418, -5.000000e-01
  %1434 = fadd fast float %1420, -5.000000e-01
  %1435 = fmul fast float %1433, %1429
  %1436 = fmul fast float %1434, %1429
  %1437 = fadd fast float %1435, 5.000000e-01
  %1438 = fadd fast float %1436, 5.000000e-01
  %1439 = fmul fast float %1437, 2.000000e+00
  %1440 = fadd fast float %1439, -1.000000e+00
  %1441 = fmul fast float %1438, 2.000000e+00
  %1442 = fadd fast float %1441, -1.000000e+00
  %1443 = fadd fast float %1440, %1442
  %1444 = fmul fast float %1443, 5.000000e-01
  %1445 = fsub fast float %1440, %1442
  %1446 = fmul fast float %1445, 5.000000e-01
  %1447 = call float @dx.op.unary.f32(i32 6, float %1444)  ; FAbs(value)
  %1448 = fsub fast float 1.000000e+00, %1447
  %1449 = call float @dx.op.unary.f32(i32 6, float %1446)  ; FAbs(value)
  %1450 = fsub fast float %1448, %1449
  %1451 = call float @dx.op.dot3.f32(i32 55, float %1444, float %1446, float %1450, float %1444, float %1446, float %1450)  ; Dot3(ax,ay,az,bx,by,bz)
  %1452 = call float @dx.op.unary.f32(i32 25, float %1451)  ; Rsqrt(value)
  %1453 = fmul fast float %1444, %1452
  %1454 = fmul fast float %1446, %1452
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = and i32 %1456, 67108864
  %1458 = icmp eq i32 %1457, 0
  br i1 %1458, label %1475, label %1459

; <label>:1459                                    ; preds = %1407
  %1460 = add i32 %32, 296
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = and i32 %1462, 65535
  %1464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1463)  ; LegacyF16ToF32(value)
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = and i32 %1466, 65535
  %1468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1467)  ; LegacyF16ToF32(value)
  %1469 = lshr i32 %1462, 16
  %1470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1469)  ; LegacyF16ToF32(value)
  %1471 = fsub fast float %1432, %1470
  %1472 = fmul fast float %1471, %1464
  %1473 = fadd fast float %1472, %1468
  %1474 = call float @dx.op.unary.f32(i32 7, float %1473)  ; Saturate(value)
  br label %1475

; <label>:1475                                    ; preds = %1459, %1407
  %1476 = phi float [ %1474, %1459 ], [ %1432, %1407 ]
  %1477 = call float @dx.op.dot2.f32(i32 54, float %1453, float %1454, float %896, float %897)  ; Dot2(ax,ay,bx,by)
  %1478 = call float @dx.op.dot2.f32(i32 54, float %1453, float %1454, float %898, float %899)  ; Dot2(ax,ay,bx,by)
  br label %1479

; <label>:1479                                    ; preds = %1475, %1385
  %1480 = phi float [ %1476, %1475 ], [ 0x3FD6666660000000, %1385 ]
  %1481 = phi float [ %1477, %1475 ], [ 0.000000e+00, %1385 ]
  %1482 = phi float [ %1478, %1475 ], [ 0.000000e+00, %1385 ]
  %1483 = phi float [ %1419, %1475 ], [ 1.000000e+00, %1385 ]
  %1484 = add i32 %32, 176
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = lshr i32 %1486, 22
  %1488 = shl nuw nsw i32 %1487, 5
  %1489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1488)  ; LegacyF16ToF32(value)
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = and i32 %1491, 64
  %1493 = icmp eq i32 %1492, 0
  br i1 %1493, label %1527, label %1494

; <label>:1494                                    ; preds = %1479
  %1495 = add i32 %32, 396
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = add i32 %1497, 0
  %1499 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1498, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = and i32 %1501, 131072
  %1503 = icmp eq i32 %1502, 0
  %1504 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1499, %dx.types.Handle %67, float %992, float %993, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1505 = extractvalue %dx.types.ResRet.f32 %1504, 0
  %1506 = extractvalue %dx.types.ResRet.f32 %1504, 1
  %1507 = extractvalue %dx.types.ResRet.f32 %1504, 2
  %1508 = fmul fast float %1505, %222
  %1509 = fmul fast float %1506, %225
  %1510 = fmul fast float %1507, %228
  br i1 %1503, label %1517, label %1511

; <label>:1511                                    ; preds = %1494
  %1512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1513 = extractvalue %dx.types.CBufRet.f32 %1512, 0
  %1514 = fmul fast float %1513, %1508
  %1515 = fmul fast float %1513, %1509
  %1516 = fmul fast float %1513, %1510
  br label %1517

; <label>:1517                                    ; preds = %1511, %1494
  %1518 = phi float [ %1514, %1511 ], [ %1508, %1494 ]
  %1519 = phi float [ %1515, %1511 ], [ %1509, %1494 ]
  %1520 = phi float [ %1516, %1511 ], [ %1510, %1494 ]
  %1521 = fmul fast float %1518, %1489
  %1522 = select i1 %174, float %1521, float %1518
  %1523 = call float @dx.op.dot3.f32(i32 55, float %1522, float %1519, float %1520, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1524 = select i1 %174, float 0.000000e+00, float %1518
  %1525 = select i1 %174, float %1523, float %1519
  %1526 = select i1 %174, float 0.000000e+00, float %1520
  br label %1527

; <label>:1527                                    ; preds = %1517, %1479
  %1528 = phi float [ %1524, %1517 ], [ 0.000000e+00, %1479 ]
  %1529 = phi float [ %1525, %1517 ], [ 0.000000e+00, %1479 ]
  %1530 = phi float [ %1526, %1517 ], [ 0.000000e+00, %1479 ]
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = add i32 %32, 112
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1533, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = and i32 %1535, 255
  %1537 = uitofp i32 %1536 to float
  %1538 = lshr i32 %1535, 8
  %1539 = and i32 %1538, 255
  %1540 = uitofp i32 %1539 to float
  %1541 = call float @dx.op.dot3.f32(i32 55, float %1400, float %1401, float %1402, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1542 = fmul fast float %1540, %1541
  %1543 = fadd fast float %1542, %1537
  %1544 = fmul fast float %1543, 0x3F70101020000000
  %1545 = call float @dx.op.unary.f32(i32 7, float %1544)  ; Saturate(value)
  br i1 %884, label %1546, label %1554

; <label>:1546                                    ; preds = %1527
  %1547 = fsub fast float 1.000000e+00, %1180
  %1548 = fmul fast float %1547, %872
  %1549 = fmul fast float %1547, %873
  %1550 = fmul fast float %1547, %874
  %1551 = fmul fast float %1547, %875
  %1552 = fmul fast float %1547, %876
  %1553 = fmul fast float %1547, %877
  br label %1554

; <label>:1554                                    ; preds = %1546, %1527
  %1555 = phi float [ %1548, %1546 ], [ %872, %1527 ]
  %1556 = phi float [ %1549, %1546 ], [ %873, %1527 ]
  %1557 = phi float [ %1550, %1546 ], [ %874, %1527 ]
  %1558 = phi float [ %1551, %1546 ], [ %875, %1527 ]
  %1559 = phi float [ %1552, %1546 ], [ %876, %1527 ]
  %1560 = phi float [ %1553, %1546 ], [ %877, %1527 ]
  %1561 = and i32 %1532, 3
  %1562 = icmp eq i32 %1561, 3
  br i1 %1562, label %1641, label %1563

; <label>:1563                                    ; preds = %1554
  %1564 = and i32 %1532, 16
  %1565 = icmp ne i32 %1564, 0
  %1566 = select i1 %1565, float %1180, float 0.000000e+00
  %1567 = icmp eq i32 %1561, 0
  br i1 %1567, label %1568, label %1596

; <label>:1568                                    ; preds = %1563
  %1569 = and i32 %1532, 64
  %1570 = icmp ne i32 %1569, 0
  %1571 = select i1 %1570, float %1180, float 0.000000e+00
  %1572 = fsub fast float %1400, %1555
  %1573 = fsub fast float %1401, %1556
  %1574 = fsub fast float %1402, %1557
  %1575 = fmul fast float %1566, %1572
  %1576 = fmul fast float %1566, %1573
  %1577 = fmul fast float %1566, %1574
  %1578 = fadd fast float %1575, %1555
  %1579 = fadd fast float %1576, %1556
  %1580 = fadd fast float %1577, %1557
  %1581 = fsub fast float %1386, %878
  %1582 = fmul fast float %1566, %1581
  %1583 = fadd fast float %1582, %878
  %1584 = fsub fast float %1528, %1558
  %1585 = fsub fast float %1529, %1559
  %1586 = fsub fast float %1530, %1560
  %1587 = fmul fast float %1571, %1584
  %1588 = fmul fast float %1571, %1585
  %1589 = fmul fast float %1571, %1586
  %1590 = fadd fast float %1587, %1558
  %1591 = fadd fast float %1588, %1559
  %1592 = fadd fast float %1589, %1560
  %1593 = fsub fast float %1545, %882
  %1594 = fmul fast float %1566, %1593
  %1595 = fadd fast float %1594, %882
  br label %1641

; <label>:1596                                    ; preds = %1563
  %1597 = icmp eq i32 %1561, 1
  br i1 %1597, label %1598, label %1611

; <label>:1598                                    ; preds = %1596
  %1599 = fadd fast float %1400, -1.000000e+00
  %1600 = fadd fast float %1401, -1.000000e+00
  %1601 = fadd fast float %1402, -1.000000e+00
  %1602 = fmul fast float %1566, %1599
  %1603 = fmul fast float %1566, %1600
  %1604 = fmul fast float %1566, %1601
  %1605 = fadd fast float %1602, 1.000000e+00
  %1606 = fadd fast float %1603, 1.000000e+00
  %1607 = fadd fast float %1604, 1.000000e+00
  %1608 = fmul fast float %1605, %1555
  %1609 = fmul fast float %1606, %1556
  %1610 = fmul fast float %1607, %1557
  br label %1641

; <label>:1611                                    ; preds = %1596
  %1612 = icmp eq i32 %1561, 2
  br i1 %1612, label %1613, label %1641

; <label>:1613                                    ; preds = %1611
  %1614 = call float @dx.op.unary.f32(i32 24, float %1400)  ; Sqrt(value)
  %1615 = call float @dx.op.unary.f32(i32 24, float %1401)  ; Sqrt(value)
  %1616 = call float @dx.op.unary.f32(i32 24, float %1402)  ; Sqrt(value)
  %1617 = fadd fast float %1614, -5.000000e-01
  %1618 = fadd fast float %1615, -5.000000e-01
  %1619 = fadd fast float %1616, -5.000000e-01
  %1620 = fmul fast float %1617, %1566
  %1621 = fmul fast float %1618, %1566
  %1622 = fmul fast float %1619, %1566
  %1623 = fadd fast float %1620, 5.000000e-01
  %1624 = fadd fast float %1621, 5.000000e-01
  %1625 = fadd fast float %1622, 5.000000e-01
  %1626 = fmul fast float %1623, 2.000000e+00
  %1627 = fsub fast float 1.000000e+00, %1626
  %1628 = fmul fast float %1627, %1555
  %1629 = fadd fast float %1628, %1626
  %1630 = fmul fast float %1629, %1555
  %1631 = fmul fast float %1624, 2.000000e+00
  %1632 = fsub fast float 1.000000e+00, %1631
  %1633 = fmul fast float %1632, %1556
  %1634 = fadd fast float %1633, %1631
  %1635 = fmul fast float %1634, %1556
  %1636 = fmul fast float %1625, 2.000000e+00
  %1637 = fsub fast float 1.000000e+00, %1636
  %1638 = fmul fast float %1637, %1557
  %1639 = fadd fast float %1638, %1636
  %1640 = fmul fast float %1639, %1557
  br label %1641

; <label>:1641                                    ; preds = %1613, %1611, %1598, %1568, %1554
  %1642 = phi float [ %1555, %1554 ], [ %1630, %1613 ], [ %1555, %1611 ], [ %1608, %1598 ], [ %1578, %1568 ]
  %1643 = phi float [ %1556, %1554 ], [ %1635, %1613 ], [ %1556, %1611 ], [ %1609, %1598 ], [ %1579, %1568 ]
  %1644 = phi float [ %1557, %1554 ], [ %1640, %1613 ], [ %1557, %1611 ], [ %1610, %1598 ], [ %1580, %1568 ]
  %1645 = phi float [ %1558, %1554 ], [ %1558, %1613 ], [ %1558, %1611 ], [ %1558, %1598 ], [ %1590, %1568 ]
  %1646 = phi float [ %1559, %1554 ], [ %1559, %1613 ], [ %1559, %1611 ], [ %1559, %1598 ], [ %1591, %1568 ]
  %1647 = phi float [ %1560, %1554 ], [ %1560, %1613 ], [ %1560, %1611 ], [ %1560, %1598 ], [ %1592, %1568 ]
  %1648 = phi float [ %878, %1554 ], [ %878, %1613 ], [ %878, %1611 ], [ %878, %1598 ], [ %1583, %1568 ]
  %1649 = phi float [ %882, %1554 ], [ %882, %1613 ], [ %882, %1611 ], [ %882, %1598 ], [ %1595, %1568 ]
  %1650 = and i32 %1532, 12
  %1651 = icmp eq i32 %1650, 12
  br i1 %1651, label %1724, label %1652

; <label>:1652                                    ; preds = %1641
  %1653 = and i32 %1532, 2097184
  %1654 = icmp eq i32 %1653, 2097184
  %1655 = select i1 %1654, float %1180, float 0.000000e+00
  %1656 = and i32 %1532, 4194336
  %1657 = icmp eq i32 %1656, 4194336
  %1658 = select i1 %1657, float %1180, float 0.000000e+00
  %1659 = and i32 %1532, 8388640
  %1660 = icmp eq i32 %1659, 8388640
  %1661 = select i1 %1660, float %1180, float 0.000000e+00
  %1662 = icmp eq i32 %1650, 0
  br i1 %1662, label %1663, label %1676

; <label>:1663                                    ; preds = %1652
  %1664 = fsub fast float %1481, %870
  %1665 = fsub fast float %1482, %871
  %1666 = fmul fast float %1655, %1664
  %1667 = fmul fast float %1655, %1665
  %1668 = fadd fast float %1666, %870
  %1669 = fadd fast float %1667, %871
  %1670 = fsub fast float %1483, %881
  %1671 = fmul fast float %1658, %1670
  %1672 = fadd fast float %1671, %881
  %1673 = fsub fast float %1480, %880
  %1674 = fmul fast float %1661, %1673
  %1675 = fadd fast float %1674, %880
  br label %1724

; <label>:1676                                    ; preds = %1652
  %1677 = icmp eq i32 %1650, 4
  br i1 %1677, label %1678, label %1710

; <label>:1678                                    ; preds = %1676
  %1679 = fmul fast float %1655, %1481
  %1680 = fmul fast float %1655, %1482
  %1681 = fadd fast float %1679, %870
  %1682 = fadd fast float %1680, %871
  %1683 = call float @dx.op.binary.f32(i32 36, float %881, float %1483)  ; FMin(a,b)
  %1684 = fsub fast float %1683, %881
  %1685 = fmul fast float %1684, %1658
  %1686 = fadd fast float %1685, %881
  %1687 = fadd fast float %1480, %880
  %1688 = fmul fast float %1687, 0x3FF337FAE0000000
  %1689 = fmul fast float %880, %880
  %1690 = fmul fast float %1480, %1480
  %1691 = fadd fast float %1690, %1689
  %1692 = fmul fast float %1691, 0x3FE5152B00000000
  %1693 = fmul fast float %880, 0xBFCC1F85E0000000
  %1694 = fmul fast float %1693, %1480
  %1695 = fadd fast float %1694, 0xBFE1363700000000
  %1696 = fadd fast float %1695, %1688
  %1697 = fsub fast float %1696, %1692
  %1698 = fmul fast float %1687, 0x3FBA6F0D00000000
  %1699 = fmul fast float %1691, 0x3FD0432880000000
  %1700 = fmul fast float %880, 0xBFEF110800000000
  %1701 = fmul fast float %1700, %1480
  %1702 = fadd fast float %1701, 1.000000e+00
  %1703 = fsub fast float %1702, %1698
  %1704 = fadd fast float %1703, %1699
  %1705 = fdiv fast float %1697, %1704
  %1706 = call float @dx.op.unary.f32(i32 7, float %1705)  ; Saturate(value)
  %1707 = fsub fast float %1706, %880
  %1708 = fmul fast float %1707, %1661
  %1709 = fadd fast float %1708, %880
  br label %1724

; <label>:1710                                    ; preds = %1676
  %1711 = icmp eq i32 %1650, 8
  br i1 %1711, label %1712, label %1724

; <label>:1712                                    ; preds = %1710
  %1713 = fmul fast float %1655, %1481
  %1714 = fmul fast float %1655, %1482
  %1715 = fadd fast float %1713, %870
  %1716 = fadd fast float %1714, %871
  %1717 = call float @dx.op.binary.f32(i32 36, float %881, float %1483)  ; FMin(a,b)
  %1718 = fsub fast float %1717, %881
  %1719 = fmul fast float %1718, %1658
  %1720 = fadd fast float %1719, %881
  %1721 = fsub fast float %1480, %880
  %1722 = fmul fast float %1661, %1721
  %1723 = fadd fast float %1722, %880
  br label %1724

; <label>:1724                                    ; preds = %1712, %1710, %1678, %1663, %1641, %1179, %883, %869
  %1725 = phi float [ %870, %1641 ], [ %870, %1179 ], [ %870, %869 ], [ %1715, %1712 ], [ %870, %1710 ], [ %1681, %1678 ], [ %1668, %1663 ], [ %870, %883 ]
  %1726 = phi float [ %871, %1641 ], [ %871, %1179 ], [ %871, %869 ], [ %1716, %1712 ], [ %871, %1710 ], [ %1682, %1678 ], [ %1669, %1663 ], [ %871, %883 ]
  %1727 = phi float [ %1642, %1641 ], [ %872, %1179 ], [ %872, %869 ], [ %1642, %1712 ], [ %1642, %1710 ], [ %1642, %1678 ], [ %1642, %1663 ], [ %872, %883 ]
  %1728 = phi float [ %1643, %1641 ], [ %873, %1179 ], [ %873, %869 ], [ %1643, %1712 ], [ %1643, %1710 ], [ %1643, %1678 ], [ %1643, %1663 ], [ %873, %883 ]
  %1729 = phi float [ %1644, %1641 ], [ %874, %1179 ], [ %874, %869 ], [ %1644, %1712 ], [ %1644, %1710 ], [ %1644, %1678 ], [ %1644, %1663 ], [ %874, %883 ]
  %1730 = phi float [ %1645, %1641 ], [ %875, %1179 ], [ %875, %869 ], [ %1645, %1712 ], [ %1645, %1710 ], [ %1645, %1678 ], [ %1645, %1663 ], [ %875, %883 ]
  %1731 = phi float [ %1646, %1641 ], [ %876, %1179 ], [ %876, %869 ], [ %1646, %1712 ], [ %1646, %1710 ], [ %1646, %1678 ], [ %1646, %1663 ], [ %876, %883 ]
  %1732 = phi float [ %1647, %1641 ], [ %877, %1179 ], [ %877, %869 ], [ %1647, %1712 ], [ %1647, %1710 ], [ %1647, %1678 ], [ %1647, %1663 ], [ %877, %883 ]
  %1733 = phi float [ %1648, %1641 ], [ %878, %1179 ], [ %878, %869 ], [ %1648, %1712 ], [ %1648, %1710 ], [ %1648, %1678 ], [ %1648, %1663 ], [ %878, %883 ]
  %1734 = phi float [ %880, %1641 ], [ %880, %1179 ], [ %880, %869 ], [ %1723, %1712 ], [ %880, %1710 ], [ %1709, %1678 ], [ %1675, %1663 ], [ %880, %883 ]
  %1735 = phi float [ %881, %1641 ], [ %881, %1179 ], [ %881, %869 ], [ %1720, %1712 ], [ %881, %1710 ], [ %1686, %1678 ], [ %1672, %1663 ], [ %881, %883 ]
  %1736 = phi float [ %1649, %1641 ], [ %882, %1179 ], [ %882, %869 ], [ %1649, %1712 ], [ %1649, %1710 ], [ %1649, %1678 ], [ %1649, %1663 ], [ %882, %883 ]
  br i1 %349, label %2578, label %1737

; <label>:1737                                    ; preds = %1724
  %1738 = icmp ult i32 %402, 3
  %1739 = add i32 %32, 56
  %1740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.i32 %1740, 0
  %1742 = add i32 %32, 60
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = or i32 %1744, %1741
  %1746 = icmp eq i32 %1745, 0
  br i1 %1746, label %2578, label %1747

; <label>:1747                                    ; preds = %1737
  %1748 = and i32 %1741, 262144
  %1749 = icmp ne i32 %1748, 0
  %1750 = select i1 %1749, float %34, float 1.000000e+00
  %1751 = select i1 %1749, float %35, float 0.000000e+00
  %1752 = select i1 %1749, float %36, float 0.000000e+00
  %1753 = select i1 %1749, float %37, float 1.000000e+00
  %1754 = select i1 %1749, float %38, float %59
  %1755 = select i1 %1749, float %39, float %60
  %1756 = add i32 %32, 316
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = lshr i32 %1758, 16
  %1760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1759)  ; LegacyF16ToF32(value)
  %1761 = fmul fast float %1760, 0x3F50624DE0000000
  %1762 = add i32 %32, 120
  %1763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.i32 %1763, 0
  %1765 = lshr i32 %1764, 16
  %1766 = and i32 %1765, 255
  %1767 = lshr i32 %1764, 24
  %1768 = add i32 %32, 324
  %1769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1768, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.i32 %1769, 0
  %1771 = and i32 %1770, 65535
  %1772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1771)  ; LegacyF16ToF32(value)
  %1773 = lshr i32 %1770, 16
  %1774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1773)  ; LegacyF16ToF32(value)
  %1775 = add i32 %32, 64
  %1776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1775, i32 undef)  ; BufferLoad(srv,index,wot)
  %1777 = extractvalue %dx.types.ResRet.i32 %1776, 0
  %1778 = lshr i32 %1777, 22
  %1779 = shl nuw nsw i32 %1778, 5
  %1780 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1779)  ; LegacyF16ToF32(value)
  %1781 = shl i32 %1777, 4
  %1782 = and i32 %1781, 32752
  %1783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1782)  ; LegacyF16ToF32(value)
  %1784 = lshr i32 %1777, 7
  %1785 = and i32 %1784, 32752
  %1786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1785)  ; LegacyF16ToF32(value)
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 3
  %1789 = fmul fast float %1788, 1.000000e+03
  %1790 = fmul fast float %299, %1789
  %1791 = call float @dx.op.unary.f32(i32 22, float %1790)  ; Frc(value)
  %1792 = fadd fast float %1791, %289
  %1793 = fmul fast float %300, %1789
  %1794 = call float @dx.op.unary.f32(i32 22, float %1793)  ; Frc(value)
  %1795 = fadd fast float %1794, %291
  %1796 = fmul fast float %1761, %1789
  %1797 = call float @dx.op.unary.f32(i32 22, float %1796)  ; Frc(value)
  %1798 = fmul fast float %1797, 0x401921FB60000000
  %1799 = fadd fast float %1798, %1780
  %1800 = call float @dx.op.unary.f32(i32 13, float %1799)  ; Sin(value)
  %1801 = call float @dx.op.unary.f32(i32 12, float %1799)  ; Cos(value)
  %1802 = fsub fast float -0.000000e+00, %1800
  %1803 = fadd fast float %1754, -5.000000e-01
  %1804 = fadd fast float %1755, -5.000000e-01
  %1805 = fmul fast float %1772, %1803
  %1806 = fmul fast float %1774, %1804
  %1807 = fadd fast float %1805, 5.000000e-01
  %1808 = fadd fast float %1806, 5.000000e-01
  %1809 = fmul fast float %1783, %1807
  %1810 = fmul fast float %1786, %1808
  %1811 = fmul fast float %1801, %1809
  %1812 = call float @dx.op.tertiary.f32(i32 46, float %1802, float %1810, float %1811)  ; FMad(a,b,c)
  %1813 = fmul fast float %1800, %1809
  %1814 = call float @dx.op.tertiary.f32(i32 46, float %1801, float %1810, float %1813)  ; FMad(a,b,c)
  %1815 = fadd fast float %1792, %1812
  %1816 = fadd fast float %1795, %1814
  %1817 = icmp ugt i32 %1766, 1
  %1818 = icmp ugt i32 %1764, 33554431
  %1819 = or i1 %1818, %1817
  br i1 %1819, label %1820, label %1845

; <label>:1820                                    ; preds = %1747
  %1821 = add i32 %32, 260
  %1822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.i32 %1822, 0
  %1824 = lshr i32 %1823, 16
  %1825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1824)  ; LegacyF16ToF32(value)
  %1826 = fmul fast float %1788, %1825
  %1827 = call float @dx.op.unary.f32(i32 22, float %1826)  ; Frc(value)
  %1828 = mul nuw nsw i32 %1766, %1767
  %1829 = uitofp i32 %1828 to float
  %1830 = fmul fast float %1827, %1829
  %1831 = call float @dx.op.unary.f32(i32 27, float %1830)  ; Round_ni(value)
  %1832 = fptoui float %1831 to i32
  %1833 = urem i32 %1832, %1766
  %1834 = udiv i32 %1832, %1767
  %1835 = call float @dx.op.unary.f32(i32 22, float %1815)  ; Frc(value)
  %1836 = call float @dx.op.unary.f32(i32 22, float %1816)  ; Frc(value)
  %1837 = uitofp i32 %1833 to float
  %1838 = uitofp i32 %1834 to float
  %1839 = fadd fast float %1835, %1837
  %1840 = fadd fast float %1836, %1838
  %1841 = uitofp i32 %1766 to float
  %1842 = uitofp i32 %1767 to float
  %1843 = fdiv fast float %1839, %1841
  %1844 = fdiv fast float %1840, %1842
  br label %1845

; <label>:1845                                    ; preds = %1820, %1747
  %1846 = phi float [ %1843, %1820 ], [ %1815, %1747 ]
  %1847 = phi float [ %1844, %1820 ], [ %1816, %1747 ]
  %1848 = and i32 %1741, 16777216
  %1849 = icmp eq i32 %1848, 0
  br i1 %1849, label %1959, label %1850

; <label>:1850                                    ; preds = %1845
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1851, 0
  %1853 = extractvalue %dx.types.CBufRet.f32 %1851, 1
  %1854 = extractvalue %dx.types.CBufRet.f32 %1851, 2
  %1855 = fadd fast float %1852, %130
  %1856 = fadd fast float %1853, %131
  %1857 = fadd fast float %1854, %132
  %1858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1859 = extractvalue %dx.types.CBufRet.f32 %1858, 0
  %1860 = call float @dx.op.unary.f32(i32 7, float %1859)  ; Saturate(value)
  %1861 = icmp eq i32 %33, 65535
  br i1 %1861, label %1956, label %1862

; <label>:1862                                    ; preds = %1850
  %1863 = lshr i32 %33, 1
  %1864 = shl i32 %1863, 2
  %1865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.i32 %1865, 0
  %1867 = and i32 %33, 1
  %1868 = icmp ne i32 %1867, 0
  %1869 = lshr i32 %1866, 16
  %1870 = and i32 %1866, 65535
  %1871 = select i1 %1868, i32 %1869, i32 %1870
  %1872 = icmp eq i32 %1871, 65535
  br i1 %1872, label %1952, label %1873

; <label>:1873                                    ; preds = %1862
  %1874 = mul nuw nsw i32 %1871, 40
  %1875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1876 = extractvalue %dx.types.ResRet.f32 %1875, 0
  %1877 = extractvalue %dx.types.ResRet.f32 %1875, 1
  %1878 = extractvalue %dx.types.ResRet.f32 %1875, 2
  %1879 = add nuw nsw i32 %1874, 12
  %1880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1879, i32 undef)  ; BufferLoad(srv,index,wot)
  %1881 = extractvalue %dx.types.ResRet.f32 %1880, 0
  %1882 = extractvalue %dx.types.ResRet.f32 %1880, 1
  %1883 = extractvalue %dx.types.ResRet.f32 %1880, 2
  %1884 = add nuw nsw i32 %1874, 24
  %1885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.f32 %1885, 0
  %1887 = extractvalue %dx.types.ResRet.f32 %1885, 1
  %1888 = extractvalue %dx.types.ResRet.f32 %1885, 2
  %1889 = add nuw nsw i32 %1874, 36
  %1890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %1891 = extractvalue %dx.types.ResRet.f32 %1890, 0
  %1892 = fsub fast float %1855, %1876
  %1893 = fsub fast float %1856, %1877
  %1894 = fsub fast float %1857, %1878
  %1895 = fmul fast float %1891, %1892
  %1896 = fmul fast float %1891, %1893
  %1897 = fmul fast float %1891, %1894
  %1898 = call float @dx.op.unary.f32(i32 27, float %1895)  ; Round_ni(value)
  %1899 = call float @dx.op.unary.f32(i32 27, float %1896)  ; Round_ni(value)
  %1900 = call float @dx.op.unary.f32(i32 27, float %1897)  ; Round_ni(value)
  %1901 = fadd fast float %1898, 5.000000e-01
  %1902 = fadd fast float %1899, 5.000000e-01
  %1903 = fadd fast float %1900, 5.000000e-01
  %1904 = fmul fast float %1901, %1881
  %1905 = fmul fast float %1902, %1882
  %1906 = fmul fast float %1903, %1883
  %1907 = shl i32 %33, 2
  %1908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.i32 %1908, 0
  %1910 = add i32 %1909, 0
  %1911 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1910, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1912 = call float @dx.op.unary.f32(i32 22, float %1904)  ; Frc(value)
  %1913 = call float @dx.op.unary.f32(i32 22, float %1905)  ; Frc(value)
  %1914 = call float @dx.op.unary.f32(i32 22, float %1906)  ; Frc(value)
  %1915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1911, %dx.types.Handle %27, float %1912, float %1913, float %1914, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1916 = extractvalue %dx.types.ResRet.f32 %1915, 0
  %1917 = extractvalue %dx.types.ResRet.f32 %1915, 1
  %1918 = extractvalue %dx.types.ResRet.f32 %1915, 2
  %1919 = fmul fast float %1916, 1.023000e+03
  %1920 = fmul fast float %1917, 1.023000e+03
  %1921 = fmul fast float %1918, 1.023000e+03
  %1922 = fadd fast float %1919, 5.000000e-01
  %1923 = fadd fast float %1920, 5.000000e-01
  %1924 = fadd fast float %1921, 5.000000e-01
  %1925 = call float @dx.op.unary.f32(i32 27, float %1922)  ; Round_ni(value)
  %1926 = call float @dx.op.unary.f32(i32 27, float %1923)  ; Round_ni(value)
  %1927 = call float @dx.op.unary.f32(i32 27, float %1924)  ; Round_ni(value)
  %1928 = fsub fast float %1895, %1898
  %1929 = fsub fast float %1896, %1899
  %1930 = fsub fast float %1897, %1900
  %1931 = fmul fast float %1928, 7.500000e-01
  %1932 = fmul fast float %1929, 7.500000e-01
  %1933 = fmul fast float %1930, 7.500000e-01
  %1934 = fadd fast float %1898, 1.250000e-01
  %1935 = fadd fast float %1934, %1931
  %1936 = fadd fast float %1935, %1925
  %1937 = fadd fast float %1899, 1.250000e-01
  %1938 = fadd fast float %1937, %1932
  %1939 = fadd fast float %1938, %1926
  %1940 = fadd fast float %1900, 1.250000e-01
  %1941 = fadd fast float %1940, %1933
  %1942 = fadd fast float %1941, %1927
  %1943 = fmul fast float %1936, %1886
  %1944 = fmul fast float %1939, %1887
  %1945 = fmul fast float %1942, %1888
  %1946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1947 = extractvalue %dx.types.ResRet.i32 %1946, 0
  %1948 = add i32 %1947, 0
  %1949 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1948, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1949, %dx.types.Handle %25, float %1943, float %1944, float %1945, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1951 = extractvalue %dx.types.ResRet.f32 %1950, 0
  br label %1952

; <label>:1952                                    ; preds = %1873, %1862
  %1953 = phi float [ %1951, %1873 ], [ -1.000000e+00, %1862 ]
  %1954 = fadd fast float %1953, %1860
  %1955 = call float @dx.op.unary.f32(i32 7, float %1954)  ; Saturate(value)
  br label %1956

; <label>:1956                                    ; preds = %1952, %1850
  %1957 = phi float [ %1955, %1952 ], [ %1860, %1850 ]
  %1958 = fmul fast float %1957, %398
  br label %1959

; <label>:1959                                    ; preds = %1956, %1845
  %1960 = phi float [ %1958, %1956 ], [ %398, %1845 ]
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = and i32 %1962, 256
  %1964 = icmp eq i32 %1963, 0
  br i1 %1964, label %2011, label %1965

; <label>:1965                                    ; preds = %1959
  %1966 = add i32 %32, 432
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = add i32 %1968, 0
  %1970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1969, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1971 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1970, %dx.types.Handle %68, float %1846, float %1847, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1972 = extractvalue %dx.types.ResRet.f32 %1971, 0
  %1973 = add i32 %32, 132
  %1974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1973, i32 undef)  ; BufferLoad(srv,index,wot)
  %1975 = extractvalue %dx.types.ResRet.i32 %1974, 0
  %1976 = shl i32 %1975, 4
  %1977 = and i32 %1976, 32752
  %1978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1977)  ; LegacyF16ToF32(value)
  %1979 = lshr i32 %1975, 7
  %1980 = and i32 %1979, 32752
  %1981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1980)  ; LegacyF16ToF32(value)
  %1982 = fsub fast float 1.000000e+00, %1960
  %1983 = call float @dx.op.binary.f32(i32 35, float %1982, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1984 = bitcast float %1960 to i32
  %1985 = sitofp i32 %1984 to float
  %1986 = fadd fast float %1985, 0xC1CFBF8940000000
  %1987 = fmul fast float %1981, %1986
  %1988 = fadd fast float %1987, 0x41CFBF8940000000
  %1989 = fptosi float %1988 to i32
  %1990 = bitcast i32 %1989 to float
  %1991 = bitcast float %1983 to i32
  %1992 = sitofp i32 %1991 to float
  %1993 = fadd fast float %1992, 0xC1CFBF8940000000
  %1994 = fmul fast float %1993, %1981
  %1995 = fadd fast float %1994, 0x41CFBF8940000000
  %1996 = fptosi float %1995 to i32
  %1997 = bitcast i32 %1996 to float
  %1998 = fmul fast float %1990, %1978
  %1999 = fmul fast float %1997, %1978
  %2000 = fsub fast float %1983, %1998
  %2001 = fadd fast float %1999, %1983
  %2002 = call float @dx.op.unary.f32(i32 7, float %2000)  ; Saturate(value)
  %2003 = call float @dx.op.unary.f32(i32 7, float %2001)  ; Saturate(value)
  %2004 = fsub fast float %1972, %2002
  %2005 = fsub fast float %2003, %2002
  %2006 = bitcast float %2005 to i32
  %2007 = sub nsw i32 2129859010, %2006
  %2008 = bitcast i32 %2007 to float
  %2009 = fmul fast float %2008, %2004
  %2010 = call float @dx.op.unary.f32(i32 7, float %2009)  ; Saturate(value)
  br label %2011

; <label>:2011                                    ; preds = %1965, %1959
  %2012 = phi float [ %2010, %1965 ], [ %1960, %1959 ]
  %2013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2014 = extractvalue %dx.types.ResRet.i32 %2013, 0
  %2015 = and i32 %2014, 128
  %2016 = icmp eq i32 %2015, 0
  br i1 %2016, label %2033, label %2017

; <label>:2017                                    ; preds = %2011
  %2018 = add i32 %32, 416
  %2019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2018, i32 undef)  ; BufferLoad(srv,index,wot)
  %2020 = extractvalue %dx.types.ResRet.i32 %2019, 0
  %2021 = add i32 %2020, 0
  %2022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2021, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2023 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2022, %dx.types.Handle %68, float %1846, float %1847, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2024 = extractvalue %dx.types.ResRet.f32 %2023, 0
  %2025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.i32 %2025, 0
  %2027 = and i32 %2026, 524288
  %2028 = icmp ne i32 %2027, 0
  %2029 = fcmp fast ogt float %2024, 0x3FE0101020000000
  %2030 = select i1 %2029, float 1.000000e+00, float 0.000000e+00
  %2031 = select i1 %2028, float %2030, float %2024
  %2032 = fmul fast float %2031, %2012
  br label %2033

; <label>:2033                                    ; preds = %2017, %2011
  %2034 = phi float [ %2032, %2017 ], [ %2012, %2011 ]
  %2035 = fcmp fast ult float %2034, 0x3F70101020000000
  br i1 %2035, label %2578, label %2036

; <label>:2036                                    ; preds = %2033
  %2037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2038 = extractvalue %dx.types.ResRet.i32 %2037, 0
  %2039 = and i32 %2038, 16
  %2040 = icmp eq i32 %2039, 0
  br i1 %2040, label %2239, label %2041

; <label>:2041                                    ; preds = %2036
  %2042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2043 = extractvalue %dx.types.ResRet.i32 %2042, 0
  %2044 = add i32 %32, 368
  %2045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2046 = extractvalue %dx.types.ResRet.i32 %2045, 0
  %2047 = add i32 %2046, 0
  %2048 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2047, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2049 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2048, %dx.types.Handle %67, float %1846, float %1847, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2050 = extractvalue %dx.types.ResRet.f32 %2049, 0
  %2051 = extractvalue %dx.types.ResRet.f32 %2049, 1
  %2052 = extractvalue %dx.types.ResRet.f32 %2049, 2
  %2053 = extractvalue %dx.types.ResRet.f32 %2049, 3
  %2054 = and i32 %2043, 255
  %2055 = uitofp i32 %2054 to float
  %2056 = lshr i32 %2043, 8
  %2057 = and i32 %2056, 255
  %2058 = uitofp i32 %2057 to float
  %2059 = fmul fast float %2053, %2055
  %2060 = fadd fast float %2059, %2058
  %2061 = fmul fast float %2060, 0x3F70101000000000
  %2062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.i32 %2062, 0
  %2064 = and i32 %2063, 512
  %2065 = icmp eq i32 %2064, 0
  br i1 %2065, label %2074, label %2066

; <label>:2066                                    ; preds = %2041
  %2067 = add i32 %32, 448
  %2068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2067, i32 undef)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.i32 %2068, 0
  %2070 = add i32 %2069, 0
  %2071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2070, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2072 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2071, %dx.types.Handle %68, float %1846, float %1847, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2073 = extractvalue %dx.types.ResRet.f32 %2072, 0
  br label %2074

; <label>:2074                                    ; preds = %2066, %2041
  %2075 = phi float [ %2073, %2066 ], [ 1.000000e+00, %2041 ]
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = and i32 %2077, 33554432
  %2079 = icmp eq i32 %2078, 0
  br i1 %2079, label %2186, label %2080

; <label>:2080                                    ; preds = %2074
  %2081 = add i32 %32, 256
  %2082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2081, i32 undef)  ; BufferLoad(srv,index,wot)
  %2083 = extractvalue %dx.types.ResRet.i32 %2082, 0
  %2084 = and i32 %2083, 65535
  %2085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2084)  ; LegacyF16ToF32(value)
  %2086 = lshr i32 %2083, 16
  %2087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2086)  ; LegacyF16ToF32(value)
  %2088 = add i32 %32, 260
  %2089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2090 = extractvalue %dx.types.ResRet.i32 %2089, 0
  %2091 = and i32 %2090, 65535
  %2092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2091)  ; LegacyF16ToF32(value)
  %2093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2094 = extractvalue %dx.types.ResRet.i32 %2093, 0
  %2095 = lshr i32 %2094, 24
  %2096 = uitofp i32 %2095 to float
  %2097 = fmul fast float %2096, 0x3F70101020000000
  %2098 = and i32 %2094, 255
  %2099 = uitofp i32 %2098 to float
  %2100 = fmul fast float %2099, 0x3F70101020000000
  %2101 = lshr i32 %2094, 8
  %2102 = and i32 %2101, 255
  %2103 = uitofp i32 %2102 to float
  %2104 = fmul fast float %2103, 0x3F70101020000000
  %2105 = lshr i32 %2094, 16
  %2106 = and i32 %2105, 255
  %2107 = uitofp i32 %2106 to float
  %2108 = fmul fast float %2107, 0x3F70101020000000
  %2109 = add i32 %32, 252
  %2110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.i32 %2110, 0
  %2112 = lshr i32 %2111, 24
  %2113 = uitofp i32 %2112 to float
  %2114 = fmul fast float %2113, 0x3F70101020000000
  %2115 = and i32 %2111, 255
  %2116 = uitofp i32 %2115 to float
  %2117 = fmul fast float %2116, 0x3F70101020000000
  %2118 = lshr i32 %2111, 8
  %2119 = and i32 %2118, 255
  %2120 = uitofp i32 %2119 to float
  %2121 = fmul fast float %2120, 0x3F70101020000000
  %2122 = lshr i32 %2111, 16
  %2123 = and i32 %2122, 255
  %2124 = uitofp i32 %2123 to float
  %2125 = fmul fast float %2124, 0x3F70101020000000
  %2126 = bitcast float %2050 to i32
  %2127 = ashr i32 %2126, 1
  %2128 = sub nsw i32 1597463174, %2127
  %2129 = bitcast i32 %2128 to float
  %2130 = fmul fast float %2050, 5.000000e-01
  %2131 = fmul fast float %2129, %2129
  %2132 = fmul fast float %2131, %2130
  %2133 = fsub fast float 1.500000e+00, %2132
  %2134 = fmul fast float %2129, %2050
  %2135 = fmul fast float %2134, %2133
  %2136 = bitcast float %2051 to i32
  %2137 = ashr i32 %2136, 1
  %2138 = sub nsw i32 1597463174, %2137
  %2139 = bitcast i32 %2138 to float
  %2140 = fmul fast float %2051, 5.000000e-01
  %2141 = fmul fast float %2139, %2139
  %2142 = fmul fast float %2141, %2140
  %2143 = fsub fast float 1.500000e+00, %2142
  %2144 = fmul fast float %2139, %2051
  %2145 = fmul fast float %2144, %2143
  %2146 = bitcast float %2052 to i32
  %2147 = ashr i32 %2146, 1
  %2148 = sub nsw i32 1597463174, %2147
  %2149 = bitcast i32 %2148 to float
  %2150 = fmul fast float %2052, 5.000000e-01
  %2151 = fmul fast float %2149, %2149
  %2152 = fmul fast float %2151, %2150
  %2153 = fsub fast float 1.500000e+00, %2152
  %2154 = fmul fast float %2149, %2052
  %2155 = fmul fast float %2154, %2153
  %2156 = fsub fast float %2135, %2117
  %2157 = fsub fast float %2145, %2121
  %2158 = fsub fast float %2155, %2125
  %2159 = fmul fast float %2156, %2085
  %2160 = fmul fast float %2157, %2087
  %2161 = fmul fast float %2158, %2092
  %2162 = fadd fast float %2159, %2100
  %2163 = fadd fast float %2160, %2104
  %2164 = fadd fast float %2161, %2108
  %2165 = call float @dx.op.unary.f32(i32 7, float %2162)  ; Saturate(value)
  %2166 = call float @dx.op.unary.f32(i32 7, float %2163)  ; Saturate(value)
  %2167 = call float @dx.op.unary.f32(i32 7, float %2164)  ; Saturate(value)
  %2168 = fmul fast float %2165, %2165
  %2169 = fmul fast float %2166, %2166
  %2170 = fmul fast float %2167, %2167
  %2171 = fsub fast float %2168, %2050
  %2172 = fsub fast float %2169, %2051
  %2173 = fsub fast float %2170, %2052
  %2174 = fmul fast float %2171, %2075
  %2175 = fmul fast float %2172, %2075
  %2176 = fmul fast float %2173, %2075
  %2177 = fadd fast float %2174, %2050
  %2178 = fadd fast float %2175, %2051
  %2179 = fadd fast float %2176, %2052
  %2180 = fadd fast float %2097, %2061
  %2181 = fsub fast float %2180, %2114
  %2182 = call float @dx.op.unary.f32(i32 7, float %2181)  ; Saturate(value)
  %2183 = fsub fast float %2182, %2061
  %2184 = fmul fast float %2183, %2075
  %2185 = fadd fast float %2184, %2061
  br label %2239

; <label>:2186                                    ; preds = %2074
  %2187 = and i32 %2077, 134217728
  %2188 = icmp eq i32 %2187, 0
  br i1 %2188, label %2223, label %2189

; <label>:2189                                    ; preds = %2186
  %2190 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %2191 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %2192 = call float @dx.op.unary.f32(i32 24, float %284)  ; Sqrt(value)
  %2193 = fadd fast float %2190, -5.000000e-01
  %2194 = fadd fast float %2191, -5.000000e-01
  %2195 = fadd fast float %2192, -5.000000e-01
  %2196 = fmul fast float %2193, %2075
  %2197 = fmul fast float %2194, %2075
  %2198 = fmul fast float %2195, %2075
  %2199 = fadd fast float %2196, 5.000000e-01
  %2200 = fadd fast float %2197, 5.000000e-01
  %2201 = fadd fast float %2198, 5.000000e-01
  %2202 = call float @dx.op.unary.f32(i32 24, float %2050)  ; Sqrt(value)
  %2203 = call float @dx.op.unary.f32(i32 24, float %2051)  ; Sqrt(value)
  %2204 = call float @dx.op.unary.f32(i32 24, float %2052)  ; Sqrt(value)
  %2205 = fmul fast float %2199, 2.000000e+00
  %2206 = fsub fast float 1.000000e+00, %2205
  %2207 = fmul fast float %2206, %2202
  %2208 = fadd fast float %2207, %2205
  %2209 = fmul fast float %2208, %2202
  %2210 = fmul fast float %2200, 2.000000e+00
  %2211 = fsub fast float 1.000000e+00, %2210
  %2212 = fmul fast float %2211, %2203
  %2213 = fadd fast float %2212, %2210
  %2214 = fmul fast float %2213, %2203
  %2215 = fmul fast float %2201, 2.000000e+00
  %2216 = fsub fast float 1.000000e+00, %2215
  %2217 = fmul fast float %2216, %2204
  %2218 = fadd fast float %2217, %2215
  %2219 = fmul fast float %2218, %2204
  %2220 = fmul fast float %2209, %2209
  %2221 = fmul fast float %2214, %2214
  %2222 = fmul fast float %2219, %2219
  br label %2239

; <label>:2223                                    ; preds = %2186
  %2224 = fmul fast float %276, %276
  %2225 = fmul fast float %280, %280
  %2226 = fmul fast float %284, %284
  %2227 = fadd fast float %2224, -1.000000e+00
  %2228 = fadd fast float %2225, -1.000000e+00
  %2229 = fadd fast float %2226, -1.000000e+00
  %2230 = fmul fast float %2075, %2227
  %2231 = fmul fast float %2075, %2228
  %2232 = fmul fast float %2075, %2229
  %2233 = fadd fast float %2230, 1.000000e+00
  %2234 = fadd fast float %2231, 1.000000e+00
  %2235 = fadd fast float %2232, 1.000000e+00
  %2236 = fmul fast float %2233, %2050
  %2237 = fmul fast float %2234, %2051
  %2238 = fmul fast float %2235, %2052
  br label %2239

; <label>:2239                                    ; preds = %2223, %2189, %2080, %2036
  %2240 = phi float [ %2185, %2080 ], [ %2061, %2189 ], [ %2061, %2223 ], [ 0x3FA23C0BE0000000, %2036 ]
  %2241 = phi float [ %2177, %2080 ], [ %2220, %2189 ], [ %2236, %2223 ], [ 1.000000e+00, %2036 ]
  %2242 = phi float [ %2178, %2080 ], [ %2221, %2189 ], [ %2237, %2223 ], [ 1.000000e+00, %2036 ]
  %2243 = phi float [ %2179, %2080 ], [ %2222, %2189 ], [ %2238, %2223 ], [ 1.000000e+00, %2036 ]
  %2244 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2245 = extractvalue %dx.types.CBufRet.i32 %2244, 1
  %2246 = and i32 %2245, 1
  %2247 = icmp ne i32 %2246, 0
  %2248 = add i32 %32, 356
  %2249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2248, i32 undef)  ; BufferLoad(srv,index,wot)
  %2250 = extractvalue %dx.types.ResRet.i32 %2249, 0
  %2251 = and i32 %2250, 32
  %2252 = icmp ne i32 %2251, 0
  %2253 = and i1 %2247, %2252
  %2254 = select i1 %2253, float 1.000000e+00, float %2241
  %2255 = select i1 %2253, float 0x3FD3333340000000, float %2242
  %2256 = select i1 %2253, float 0x3FD3333340000000, float %2243
  %2257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2258 = extractvalue %dx.types.ResRet.i32 %2257, 0
  %2259 = and i32 %2258, 32
  %2260 = icmp eq i32 %2259, 0
  br i1 %2260, label %2333, label %2261

; <label>:2261                                    ; preds = %2239
  %2262 = add i32 %32, 124
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2262, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = add i32 %32, 384
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = add i32 %2267, 0
  %2269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2268, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2270 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2269, %dx.types.Handle %67, float %1846, float %1847, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2271 = extractvalue %dx.types.ResRet.f32 %2270, 0
  %2272 = extractvalue %dx.types.ResRet.f32 %2270, 1
  %2273 = extractvalue %dx.types.ResRet.f32 %2270, 2
  %2274 = extractvalue %dx.types.ResRet.f32 %2270, 3
  %2275 = and i32 %2264, 255
  %2276 = uitofp i32 %2275 to float
  %2277 = lshr i32 %2264, 8
  %2278 = and i32 %2277, 255
  %2279 = uitofp i32 %2278 to float
  %2280 = lshr i32 %2264, 16
  %2281 = and i32 %2280, 255
  %2282 = uitofp i32 %2281 to float
  %2283 = fmul fast float %2282, 0x3F70101000000000
  %2284 = fmul fast float %2271, %2276
  %2285 = fadd fast float %2284, %2279
  %2286 = fmul fast float %2285, 0x3F70101000000000
  %2287 = fadd fast float %2272, -5.000000e-01
  %2288 = fadd fast float %2274, -5.000000e-01
  %2289 = fmul fast float %2287, %2283
  %2290 = fmul fast float %2288, %2283
  %2291 = fadd fast float %2289, 5.000000e-01
  %2292 = fadd fast float %2290, 5.000000e-01
  %2293 = fmul fast float %2291, 2.000000e+00
  %2294 = fadd fast float %2293, -1.000000e+00
  %2295 = fmul fast float %2292, 2.000000e+00
  %2296 = fadd fast float %2295, -1.000000e+00
  %2297 = fadd fast float %2294, %2296
  %2298 = fmul fast float %2297, 5.000000e-01
  %2299 = fsub fast float %2294, %2296
  %2300 = fmul fast float %2299, 5.000000e-01
  %2301 = call float @dx.op.unary.f32(i32 6, float %2298)  ; FAbs(value)
  %2302 = fsub fast float 1.000000e+00, %2301
  %2303 = call float @dx.op.unary.f32(i32 6, float %2300)  ; FAbs(value)
  %2304 = fsub fast float %2302, %2303
  %2305 = call float @dx.op.dot3.f32(i32 55, float %2298, float %2300, float %2304, float %2298, float %2300, float %2304)  ; Dot3(ax,ay,az,bx,by,bz)
  %2306 = call float @dx.op.unary.f32(i32 25, float %2305)  ; Rsqrt(value)
  %2307 = fmul fast float %2298, %2306
  %2308 = fmul fast float %2300, %2306
  %2309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.i32 %2309, 0
  %2311 = and i32 %2310, 67108864
  %2312 = icmp eq i32 %2311, 0
  br i1 %2312, label %2329, label %2313

; <label>:2313                                    ; preds = %2261
  %2314 = add i32 %32, 312
  %2315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2316 = extractvalue %dx.types.ResRet.i32 %2315, 0
  %2317 = and i32 %2316, 65535
  %2318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2317)  ; LegacyF16ToF32(value)
  %2319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %2320 = extractvalue %dx.types.ResRet.i32 %2319, 0
  %2321 = and i32 %2320, 65535
  %2322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2321)  ; LegacyF16ToF32(value)
  %2323 = lshr i32 %2316, 16
  %2324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2323)  ; LegacyF16ToF32(value)
  %2325 = fsub fast float %2286, %2324
  %2326 = fmul fast float %2325, %2318
  %2327 = fadd fast float %2326, %2322
  %2328 = call float @dx.op.unary.f32(i32 7, float %2327)  ; Saturate(value)
  br label %2329

; <label>:2329                                    ; preds = %2313, %2261
  %2330 = phi float [ %2328, %2313 ], [ %2286, %2261 ]
  %2331 = call float @dx.op.dot2.f32(i32 54, float %2307, float %2308, float %1750, float %1751)  ; Dot2(ax,ay,bx,by)
  %2332 = call float @dx.op.dot2.f32(i32 54, float %2307, float %2308, float %1752, float %1753)  ; Dot2(ax,ay,bx,by)
  br label %2333

; <label>:2333                                    ; preds = %2329, %2239
  %2334 = phi float [ %2330, %2329 ], [ 0x3FD6666660000000, %2239 ]
  %2335 = phi float [ %2331, %2329 ], [ 0.000000e+00, %2239 ]
  %2336 = phi float [ %2332, %2329 ], [ 0.000000e+00, %2239 ]
  %2337 = phi float [ %2273, %2329 ], [ 1.000000e+00, %2239 ]
  %2338 = add i32 %32, 192
  %2339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2338, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.i32 %2339, 0
  %2341 = lshr i32 %2340, 22
  %2342 = shl nuw nsw i32 %2341, 5
  %2343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2342)  ; LegacyF16ToF32(value)
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = and i32 %2345, 64
  %2347 = icmp eq i32 %2346, 0
  br i1 %2347, label %2381, label %2348

; <label>:2348                                    ; preds = %2333
  %2349 = add i32 %32, 400
  %2350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2351 = extractvalue %dx.types.ResRet.i32 %2350, 0
  %2352 = add i32 %2351, 0
  %2353 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2352, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = and i32 %2355, 131072
  %2357 = icmp eq i32 %2356, 0
  %2358 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2353, %dx.types.Handle %67, float %1846, float %1847, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2359 = extractvalue %dx.types.ResRet.f32 %2358, 0
  %2360 = extractvalue %dx.types.ResRet.f32 %2358, 1
  %2361 = extractvalue %dx.types.ResRet.f32 %2358, 2
  %2362 = fmul fast float %2359, %264
  %2363 = fmul fast float %2360, %267
  %2364 = fmul fast float %2361, %270
  br i1 %2357, label %2371, label %2365

; <label>:2365                                    ; preds = %2348
  %2366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2367 = extractvalue %dx.types.CBufRet.f32 %2366, 0
  %2368 = fmul fast float %2367, %2362
  %2369 = fmul fast float %2367, %2363
  %2370 = fmul fast float %2367, %2364
  br label %2371

; <label>:2371                                    ; preds = %2365, %2348
  %2372 = phi float [ %2368, %2365 ], [ %2362, %2348 ]
  %2373 = phi float [ %2369, %2365 ], [ %2363, %2348 ]
  %2374 = phi float [ %2370, %2365 ], [ %2364, %2348 ]
  %2375 = fmul fast float %2372, %2343
  %2376 = select i1 %174, float %2375, float %2372
  %2377 = call float @dx.op.dot3.f32(i32 55, float %2376, float %2373, float %2374, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2378 = select i1 %174, float 0.000000e+00, float %2372
  %2379 = select i1 %174, float %2377, float %2373
  %2380 = select i1 %174, float 0.000000e+00, float %2374
  br label %2381

; <label>:2381                                    ; preds = %2371, %2333
  %2382 = phi float [ %2378, %2371 ], [ 0.000000e+00, %2333 ]
  %2383 = phi float [ %2379, %2371 ], [ 0.000000e+00, %2333 ]
  %2384 = phi float [ %2380, %2371 ], [ 0.000000e+00, %2333 ]
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = add i32 %32, 128
  %2388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2387, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.i32 %2388, 0
  %2390 = and i32 %2389, 255
  %2391 = uitofp i32 %2390 to float
  %2392 = lshr i32 %2389, 8
  %2393 = and i32 %2392, 255
  %2394 = uitofp i32 %2393 to float
  %2395 = call float @dx.op.dot3.f32(i32 55, float %2254, float %2255, float %2256, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2396 = fmul fast float %2394, %2395
  %2397 = fadd fast float %2396, %2391
  %2398 = fmul fast float %2397, 0x3F70101020000000
  %2399 = call float @dx.op.unary.f32(i32 7, float %2398)  ; Saturate(value)
  br i1 %1738, label %2400, label %2408

; <label>:2400                                    ; preds = %2381
  %2401 = fsub fast float 1.000000e+00, %2034
  %2402 = fmul fast float %2401, %1727
  %2403 = fmul fast float %2401, %1728
  %2404 = fmul fast float %2401, %1729
  %2405 = fmul fast float %2401, %1730
  %2406 = fmul fast float %2401, %1731
  %2407 = fmul fast float %2401, %1732
  br label %2408

; <label>:2408                                    ; preds = %2400, %2381
  %2409 = phi float [ %2402, %2400 ], [ %1727, %2381 ]
  %2410 = phi float [ %2403, %2400 ], [ %1728, %2381 ]
  %2411 = phi float [ %2404, %2400 ], [ %1729, %2381 ]
  %2412 = phi float [ %2405, %2400 ], [ %1730, %2381 ]
  %2413 = phi float [ %2406, %2400 ], [ %1731, %2381 ]
  %2414 = phi float [ %2407, %2400 ], [ %1732, %2381 ]
  %2415 = and i32 %2386, 3
  %2416 = icmp eq i32 %2415, 3
  br i1 %2416, label %2495, label %2417

; <label>:2417                                    ; preds = %2408
  %2418 = and i32 %2386, 16
  %2419 = icmp ne i32 %2418, 0
  %2420 = select i1 %2419, float %2034, float 0.000000e+00
  %2421 = icmp eq i32 %2415, 0
  br i1 %2421, label %2422, label %2450

; <label>:2422                                    ; preds = %2417
  %2423 = and i32 %2386, 64
  %2424 = icmp ne i32 %2423, 0
  %2425 = select i1 %2424, float %2034, float 0.000000e+00
  %2426 = fsub fast float %2254, %2409
  %2427 = fsub fast float %2255, %2410
  %2428 = fsub fast float %2256, %2411
  %2429 = fmul fast float %2420, %2426
  %2430 = fmul fast float %2420, %2427
  %2431 = fmul fast float %2420, %2428
  %2432 = fadd fast float %2429, %2409
  %2433 = fadd fast float %2430, %2410
  %2434 = fadd fast float %2431, %2411
  %2435 = fsub fast float %2240, %1733
  %2436 = fmul fast float %2420, %2435
  %2437 = fadd fast float %2436, %1733
  %2438 = fsub fast float %2382, %2412
  %2439 = fsub fast float %2383, %2413
  %2440 = fsub fast float %2384, %2414
  %2441 = fmul fast float %2425, %2438
  %2442 = fmul fast float %2425, %2439
  %2443 = fmul fast float %2425, %2440
  %2444 = fadd fast float %2441, %2412
  %2445 = fadd fast float %2442, %2413
  %2446 = fadd fast float %2443, %2414
  %2447 = fsub fast float %2399, %1736
  %2448 = fmul fast float %2420, %2447
  %2449 = fadd fast float %2448, %1736
  br label %2495

; <label>:2450                                    ; preds = %2417
  %2451 = icmp eq i32 %2415, 1
  br i1 %2451, label %2452, label %2465

; <label>:2452                                    ; preds = %2450
  %2453 = fadd fast float %2254, -1.000000e+00
  %2454 = fadd fast float %2255, -1.000000e+00
  %2455 = fadd fast float %2256, -1.000000e+00
  %2456 = fmul fast float %2420, %2453
  %2457 = fmul fast float %2420, %2454
  %2458 = fmul fast float %2420, %2455
  %2459 = fadd fast float %2456, 1.000000e+00
  %2460 = fadd fast float %2457, 1.000000e+00
  %2461 = fadd fast float %2458, 1.000000e+00
  %2462 = fmul fast float %2459, %2409
  %2463 = fmul fast float %2460, %2410
  %2464 = fmul fast float %2461, %2411
  br label %2495

; <label>:2465                                    ; preds = %2450
  %2466 = icmp eq i32 %2415, 2
  br i1 %2466, label %2467, label %2495

; <label>:2467                                    ; preds = %2465
  %2468 = call float @dx.op.unary.f32(i32 24, float %2254)  ; Sqrt(value)
  %2469 = call float @dx.op.unary.f32(i32 24, float %2255)  ; Sqrt(value)
  %2470 = call float @dx.op.unary.f32(i32 24, float %2256)  ; Sqrt(value)
  %2471 = fadd fast float %2468, -5.000000e-01
  %2472 = fadd fast float %2469, -5.000000e-01
  %2473 = fadd fast float %2470, -5.000000e-01
  %2474 = fmul fast float %2471, %2420
  %2475 = fmul fast float %2472, %2420
  %2476 = fmul fast float %2473, %2420
  %2477 = fadd fast float %2474, 5.000000e-01
  %2478 = fadd fast float %2475, 5.000000e-01
  %2479 = fadd fast float %2476, 5.000000e-01
  %2480 = fmul fast float %2477, 2.000000e+00
  %2481 = fsub fast float 1.000000e+00, %2480
  %2482 = fmul fast float %2481, %2409
  %2483 = fadd fast float %2482, %2480
  %2484 = fmul fast float %2483, %2409
  %2485 = fmul fast float %2478, 2.000000e+00
  %2486 = fsub fast float 1.000000e+00, %2485
  %2487 = fmul fast float %2486, %2410
  %2488 = fadd fast float %2487, %2485
  %2489 = fmul fast float %2488, %2410
  %2490 = fmul fast float %2479, 2.000000e+00
  %2491 = fsub fast float 1.000000e+00, %2490
  %2492 = fmul fast float %2491, %2411
  %2493 = fadd fast float %2492, %2490
  %2494 = fmul fast float %2493, %2411
  br label %2495

; <label>:2495                                    ; preds = %2467, %2465, %2452, %2422, %2408
  %2496 = phi float [ %2409, %2408 ], [ %2484, %2467 ], [ %2409, %2465 ], [ %2462, %2452 ], [ %2432, %2422 ]
  %2497 = phi float [ %2410, %2408 ], [ %2489, %2467 ], [ %2410, %2465 ], [ %2463, %2452 ], [ %2433, %2422 ]
  %2498 = phi float [ %2411, %2408 ], [ %2494, %2467 ], [ %2411, %2465 ], [ %2464, %2452 ], [ %2434, %2422 ]
  %2499 = phi float [ %2412, %2408 ], [ %2412, %2467 ], [ %2412, %2465 ], [ %2412, %2452 ], [ %2444, %2422 ]
  %2500 = phi float [ %2413, %2408 ], [ %2413, %2467 ], [ %2413, %2465 ], [ %2413, %2452 ], [ %2445, %2422 ]
  %2501 = phi float [ %2414, %2408 ], [ %2414, %2467 ], [ %2414, %2465 ], [ %2414, %2452 ], [ %2446, %2422 ]
  %2502 = phi float [ %1733, %2408 ], [ %1733, %2467 ], [ %1733, %2465 ], [ %1733, %2452 ], [ %2437, %2422 ]
  %2503 = phi float [ %1736, %2408 ], [ %1736, %2467 ], [ %1736, %2465 ], [ %1736, %2452 ], [ %2449, %2422 ]
  %2504 = and i32 %2386, 12
  %2505 = icmp eq i32 %2504, 12
  br i1 %2505, label %2578, label %2506

; <label>:2506                                    ; preds = %2495
  %2507 = and i32 %2386, 2097184
  %2508 = icmp eq i32 %2507, 2097184
  %2509 = select i1 %2508, float %2034, float 0.000000e+00
  %2510 = and i32 %2386, 4194336
  %2511 = icmp eq i32 %2510, 4194336
  %2512 = select i1 %2511, float %2034, float 0.000000e+00
  %2513 = and i32 %2386, 8388640
  %2514 = icmp eq i32 %2513, 8388640
  %2515 = select i1 %2514, float %2034, float 0.000000e+00
  %2516 = icmp eq i32 %2504, 0
  br i1 %2516, label %2517, label %2530

; <label>:2517                                    ; preds = %2506
  %2518 = fsub fast float %2335, %1725
  %2519 = fsub fast float %2336, %1726
  %2520 = fmul fast float %2509, %2518
  %2521 = fmul fast float %2509, %2519
  %2522 = fadd fast float %2520, %1725
  %2523 = fadd fast float %2521, %1726
  %2524 = fsub fast float %2337, %1735
  %2525 = fmul fast float %2512, %2524
  %2526 = fadd fast float %2525, %1735
  %2527 = fsub fast float %2334, %1734
  %2528 = fmul fast float %2515, %2527
  %2529 = fadd fast float %2528, %1734
  br label %2578

; <label>:2530                                    ; preds = %2506
  %2531 = icmp eq i32 %2504, 4
  br i1 %2531, label %2532, label %2564

; <label>:2532                                    ; preds = %2530
  %2533 = fmul fast float %2509, %2335
  %2534 = fmul fast float %2509, %2336
  %2535 = fadd fast float %2533, %1725
  %2536 = fadd fast float %2534, %1726
  %2537 = call float @dx.op.binary.f32(i32 36, float %1735, float %2337)  ; FMin(a,b)
  %2538 = fsub fast float %2537, %1735
  %2539 = fmul fast float %2538, %2512
  %2540 = fadd fast float %2539, %1735
  %2541 = fadd fast float %2334, %1734
  %2542 = fmul fast float %2541, 0x3FF337FAE0000000
  %2543 = fmul fast float %1734, %1734
  %2544 = fmul fast float %2334, %2334
  %2545 = fadd fast float %2544, %2543
  %2546 = fmul fast float %2545, 0x3FE5152B00000000
  %2547 = fmul fast float %1734, 0xBFCC1F85E0000000
  %2548 = fmul fast float %2547, %2334
  %2549 = fadd fast float %2548, 0xBFE1363700000000
  %2550 = fadd fast float %2549, %2542
  %2551 = fsub fast float %2550, %2546
  %2552 = fmul fast float %2541, 0x3FBA6F0D00000000
  %2553 = fmul fast float %2545, 0x3FD0432880000000
  %2554 = fmul fast float %1734, 0xBFEF110800000000
  %2555 = fmul fast float %2554, %2334
  %2556 = fadd fast float %2555, 1.000000e+00
  %2557 = fsub fast float %2556, %2552
  %2558 = fadd fast float %2557, %2553
  %2559 = fdiv fast float %2551, %2558
  %2560 = call float @dx.op.unary.f32(i32 7, float %2559)  ; Saturate(value)
  %2561 = fsub fast float %2560, %1734
  %2562 = fmul fast float %2561, %2515
  %2563 = fadd fast float %2562, %1734
  br label %2578

; <label>:2564                                    ; preds = %2530
  %2565 = icmp eq i32 %2504, 8
  br i1 %2565, label %2566, label %2578

; <label>:2566                                    ; preds = %2564
  %2567 = fmul fast float %2509, %2335
  %2568 = fmul fast float %2509, %2336
  %2569 = fadd fast float %2567, %1725
  %2570 = fadd fast float %2568, %1726
  %2571 = call float @dx.op.binary.f32(i32 36, float %1735, float %2337)  ; FMin(a,b)
  %2572 = fsub fast float %2571, %1735
  %2573 = fmul fast float %2572, %2512
  %2574 = fadd fast float %2573, %1735
  %2575 = fsub fast float %2334, %1734
  %2576 = fmul fast float %2515, %2575
  %2577 = fadd fast float %2576, %1734
  br label %2578

; <label>:2578                                    ; preds = %2566, %2564, %2532, %2517, %2495, %2033, %1737, %1724
  %2579 = phi float [ %1725, %2495 ], [ %1725, %2033 ], [ %1725, %1724 ], [ %2569, %2566 ], [ %1725, %2564 ], [ %2535, %2532 ], [ %2522, %2517 ], [ %1725, %1737 ]
  %2580 = phi float [ %1726, %2495 ], [ %1726, %2033 ], [ %1726, %1724 ], [ %2570, %2566 ], [ %1726, %2564 ], [ %2536, %2532 ], [ %2523, %2517 ], [ %1726, %1737 ]
  %2581 = phi float [ %2496, %2495 ], [ %1727, %2033 ], [ %1727, %1724 ], [ %2496, %2566 ], [ %2496, %2564 ], [ %2496, %2532 ], [ %2496, %2517 ], [ %1727, %1737 ]
  %2582 = phi float [ %2497, %2495 ], [ %1728, %2033 ], [ %1728, %1724 ], [ %2497, %2566 ], [ %2497, %2564 ], [ %2497, %2532 ], [ %2497, %2517 ], [ %1728, %1737 ]
  %2583 = phi float [ %2498, %2495 ], [ %1729, %2033 ], [ %1729, %1724 ], [ %2498, %2566 ], [ %2498, %2564 ], [ %2498, %2532 ], [ %2498, %2517 ], [ %1729, %1737 ]
  %2584 = phi float [ %2499, %2495 ], [ %1730, %2033 ], [ %1730, %1724 ], [ %2499, %2566 ], [ %2499, %2564 ], [ %2499, %2532 ], [ %2499, %2517 ], [ %1730, %1737 ]
  %2585 = phi float [ %2500, %2495 ], [ %1731, %2033 ], [ %1731, %1724 ], [ %2500, %2566 ], [ %2500, %2564 ], [ %2500, %2532 ], [ %2500, %2517 ], [ %1731, %1737 ]
  %2586 = phi float [ %2501, %2495 ], [ %1732, %2033 ], [ %1732, %1724 ], [ %2501, %2566 ], [ %2501, %2564 ], [ %2501, %2532 ], [ %2501, %2517 ], [ %1732, %1737 ]
  %2587 = phi float [ %2502, %2495 ], [ %1733, %2033 ], [ %1733, %1724 ], [ %2502, %2566 ], [ %2502, %2564 ], [ %2502, %2532 ], [ %2502, %2517 ], [ %1733, %1737 ]
  %2588 = phi float [ %1734, %2495 ], [ %1734, %2033 ], [ %1734, %1724 ], [ %2577, %2566 ], [ %1734, %2564 ], [ %2563, %2532 ], [ %2529, %2517 ], [ %1734, %1737 ]
  %2589 = phi float [ %1735, %2495 ], [ %1735, %2033 ], [ %1735, %1724 ], [ %2574, %2566 ], [ %1735, %2564 ], [ %2540, %2532 ], [ %2526, %2517 ], [ %1735, %1737 ]
  %2590 = phi float [ %2503, %2495 ], [ %1736, %2033 ], [ %1736, %1724 ], [ %2503, %2566 ], [ %2503, %2564 ], [ %2503, %2532 ], [ %2503, %2517 ], [ %1736, %1737 ]
  br i1 %351, label %3432, label %2591

; <label>:2591                                    ; preds = %2578
  %2592 = icmp ult i32 %402, 4
  %2593 = add i32 %32, 72
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = add i32 %32, 76
  %2597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2598 = extractvalue %dx.types.ResRet.i32 %2597, 0
  %2599 = or i32 %2598, %2595
  %2600 = icmp eq i32 %2599, 0
  br i1 %2600, label %3432, label %2601

; <label>:2601                                    ; preds = %2591
  %2602 = and i32 %2595, 262144
  %2603 = icmp ne i32 %2602, 0
  %2604 = select i1 %2603, float %34, float 1.000000e+00
  %2605 = select i1 %2603, float %35, float 0.000000e+00
  %2606 = select i1 %2603, float %36, float 0.000000e+00
  %2607 = select i1 %2603, float %37, float 1.000000e+00
  %2608 = select i1 %2603, float %38, float %59
  %2609 = select i1 %2603, float %39, float %60
  %2610 = add i32 %32, 332
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2610, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = lshr i32 %2612, 16
  %2614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2613)  ; LegacyF16ToF32(value)
  %2615 = fmul fast float %2614, 0x3F50624DE0000000
  %2616 = add i32 %32, 136
  %2617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2618 = extractvalue %dx.types.ResRet.i32 %2617, 0
  %2619 = lshr i32 %2618, 16
  %2620 = and i32 %2619, 255
  %2621 = lshr i32 %2618, 24
  %2622 = add i32 %32, 340
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2622, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = and i32 %2624, 65535
  %2626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2625)  ; LegacyF16ToF32(value)
  %2627 = lshr i32 %2624, 16
  %2628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2627)  ; LegacyF16ToF32(value)
  %2629 = add i32 %32, 80
  %2630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2629, i32 undef)  ; BufferLoad(srv,index,wot)
  %2631 = extractvalue %dx.types.ResRet.i32 %2630, 0
  %2632 = lshr i32 %2631, 22
  %2633 = shl nuw nsw i32 %2632, 5
  %2634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2633)  ; LegacyF16ToF32(value)
  %2635 = shl i32 %2631, 4
  %2636 = and i32 %2635, 32752
  %2637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2636)  ; LegacyF16ToF32(value)
  %2638 = lshr i32 %2631, 7
  %2639 = and i32 %2638, 32752
  %2640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2639)  ; LegacyF16ToF32(value)
  %2641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2642 = extractvalue %dx.types.CBufRet.f32 %2641, 3
  %2643 = fmul fast float %2642, 1.000000e+03
  %2644 = fmul fast float %341, %2643
  %2645 = call float @dx.op.unary.f32(i32 22, float %2644)  ; Frc(value)
  %2646 = fadd fast float %2645, %331
  %2647 = fmul fast float %342, %2643
  %2648 = call float @dx.op.unary.f32(i32 22, float %2647)  ; Frc(value)
  %2649 = fadd fast float %2648, %333
  %2650 = fmul fast float %2615, %2643
  %2651 = call float @dx.op.unary.f32(i32 22, float %2650)  ; Frc(value)
  %2652 = fmul fast float %2651, 0x401921FB60000000
  %2653 = fadd fast float %2652, %2634
  %2654 = call float @dx.op.unary.f32(i32 13, float %2653)  ; Sin(value)
  %2655 = call float @dx.op.unary.f32(i32 12, float %2653)  ; Cos(value)
  %2656 = fsub fast float -0.000000e+00, %2654
  %2657 = fadd fast float %2608, -5.000000e-01
  %2658 = fadd fast float %2609, -5.000000e-01
  %2659 = fmul fast float %2626, %2657
  %2660 = fmul fast float %2628, %2658
  %2661 = fadd fast float %2659, 5.000000e-01
  %2662 = fadd fast float %2660, 5.000000e-01
  %2663 = fmul fast float %2637, %2661
  %2664 = fmul fast float %2640, %2662
  %2665 = fmul fast float %2655, %2663
  %2666 = call float @dx.op.tertiary.f32(i32 46, float %2656, float %2664, float %2665)  ; FMad(a,b,c)
  %2667 = fmul fast float %2654, %2663
  %2668 = call float @dx.op.tertiary.f32(i32 46, float %2655, float %2664, float %2667)  ; FMad(a,b,c)
  %2669 = fadd fast float %2646, %2666
  %2670 = fadd fast float %2649, %2668
  %2671 = icmp ugt i32 %2620, 1
  %2672 = icmp ugt i32 %2618, 33554431
  %2673 = or i1 %2672, %2671
  br i1 %2673, label %2674, label %2699

; <label>:2674                                    ; preds = %2601
  %2675 = add i32 %32, 276
  %2676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2675, i32 undef)  ; BufferLoad(srv,index,wot)
  %2677 = extractvalue %dx.types.ResRet.i32 %2676, 0
  %2678 = lshr i32 %2677, 16
  %2679 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2678)  ; LegacyF16ToF32(value)
  %2680 = fmul fast float %2642, %2679
  %2681 = call float @dx.op.unary.f32(i32 22, float %2680)  ; Frc(value)
  %2682 = mul nuw nsw i32 %2620, %2621
  %2683 = uitofp i32 %2682 to float
  %2684 = fmul fast float %2681, %2683
  %2685 = call float @dx.op.unary.f32(i32 27, float %2684)  ; Round_ni(value)
  %2686 = fptoui float %2685 to i32
  %2687 = urem i32 %2686, %2620
  %2688 = udiv i32 %2686, %2621
  %2689 = call float @dx.op.unary.f32(i32 22, float %2669)  ; Frc(value)
  %2690 = call float @dx.op.unary.f32(i32 22, float %2670)  ; Frc(value)
  %2691 = uitofp i32 %2687 to float
  %2692 = uitofp i32 %2688 to float
  %2693 = fadd fast float %2689, %2691
  %2694 = fadd fast float %2690, %2692
  %2695 = uitofp i32 %2620 to float
  %2696 = uitofp i32 %2621 to float
  %2697 = fdiv fast float %2693, %2695
  %2698 = fdiv fast float %2694, %2696
  br label %2699

; <label>:2699                                    ; preds = %2674, %2601
  %2700 = phi float [ %2697, %2674 ], [ %2669, %2601 ]
  %2701 = phi float [ %2698, %2674 ], [ %2670, %2601 ]
  %2702 = and i32 %2595, 16777216
  %2703 = icmp eq i32 %2702, 0
  br i1 %2703, label %2813, label %2704

; <label>:2704                                    ; preds = %2699
  %2705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2706 = extractvalue %dx.types.CBufRet.f32 %2705, 0
  %2707 = extractvalue %dx.types.CBufRet.f32 %2705, 1
  %2708 = extractvalue %dx.types.CBufRet.f32 %2705, 2
  %2709 = fadd fast float %2706, %130
  %2710 = fadd fast float %2707, %131
  %2711 = fadd fast float %2708, %132
  %2712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2713 = extractvalue %dx.types.CBufRet.f32 %2712, 0
  %2714 = call float @dx.op.unary.f32(i32 7, float %2713)  ; Saturate(value)
  %2715 = icmp eq i32 %33, 65535
  br i1 %2715, label %2810, label %2716

; <label>:2716                                    ; preds = %2704
  %2717 = lshr i32 %33, 1
  %2718 = shl i32 %2717, 2
  %2719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2718, i32 undef)  ; BufferLoad(srv,index,wot)
  %2720 = extractvalue %dx.types.ResRet.i32 %2719, 0
  %2721 = and i32 %33, 1
  %2722 = icmp ne i32 %2721, 0
  %2723 = lshr i32 %2720, 16
  %2724 = and i32 %2720, 65535
  %2725 = select i1 %2722, i32 %2723, i32 %2724
  %2726 = icmp eq i32 %2725, 65535
  br i1 %2726, label %2806, label %2727

; <label>:2727                                    ; preds = %2716
  %2728 = mul nuw nsw i32 %2725, 40
  %2729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2730 = extractvalue %dx.types.ResRet.f32 %2729, 0
  %2731 = extractvalue %dx.types.ResRet.f32 %2729, 1
  %2732 = extractvalue %dx.types.ResRet.f32 %2729, 2
  %2733 = add nuw nsw i32 %2728, 12
  %2734 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2735 = extractvalue %dx.types.ResRet.f32 %2734, 0
  %2736 = extractvalue %dx.types.ResRet.f32 %2734, 1
  %2737 = extractvalue %dx.types.ResRet.f32 %2734, 2
  %2738 = add nuw nsw i32 %2728, 24
  %2739 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2740 = extractvalue %dx.types.ResRet.f32 %2739, 0
  %2741 = extractvalue %dx.types.ResRet.f32 %2739, 1
  %2742 = extractvalue %dx.types.ResRet.f32 %2739, 2
  %2743 = add nuw nsw i32 %2728, 36
  %2744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2743, i32 undef)  ; BufferLoad(srv,index,wot)
  %2745 = extractvalue %dx.types.ResRet.f32 %2744, 0
  %2746 = fsub fast float %2709, %2730
  %2747 = fsub fast float %2710, %2731
  %2748 = fsub fast float %2711, %2732
  %2749 = fmul fast float %2745, %2746
  %2750 = fmul fast float %2745, %2747
  %2751 = fmul fast float %2745, %2748
  %2752 = call float @dx.op.unary.f32(i32 27, float %2749)  ; Round_ni(value)
  %2753 = call float @dx.op.unary.f32(i32 27, float %2750)  ; Round_ni(value)
  %2754 = call float @dx.op.unary.f32(i32 27, float %2751)  ; Round_ni(value)
  %2755 = fadd fast float %2752, 5.000000e-01
  %2756 = fadd fast float %2753, 5.000000e-01
  %2757 = fadd fast float %2754, 5.000000e-01
  %2758 = fmul fast float %2755, %2735
  %2759 = fmul fast float %2756, %2736
  %2760 = fmul fast float %2757, %2737
  %2761 = shl i32 %33, 2
  %2762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2763 = extractvalue %dx.types.ResRet.i32 %2762, 0
  %2764 = add i32 %2763, 0
  %2765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2764, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2766 = call float @dx.op.unary.f32(i32 22, float %2758)  ; Frc(value)
  %2767 = call float @dx.op.unary.f32(i32 22, float %2759)  ; Frc(value)
  %2768 = call float @dx.op.unary.f32(i32 22, float %2760)  ; Frc(value)
  %2769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2765, %dx.types.Handle %27, float %2766, float %2767, float %2768, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2770 = extractvalue %dx.types.ResRet.f32 %2769, 0
  %2771 = extractvalue %dx.types.ResRet.f32 %2769, 1
  %2772 = extractvalue %dx.types.ResRet.f32 %2769, 2
  %2773 = fmul fast float %2770, 1.023000e+03
  %2774 = fmul fast float %2771, 1.023000e+03
  %2775 = fmul fast float %2772, 1.023000e+03
  %2776 = fadd fast float %2773, 5.000000e-01
  %2777 = fadd fast float %2774, 5.000000e-01
  %2778 = fadd fast float %2775, 5.000000e-01
  %2779 = call float @dx.op.unary.f32(i32 27, float %2776)  ; Round_ni(value)
  %2780 = call float @dx.op.unary.f32(i32 27, float %2777)  ; Round_ni(value)
  %2781 = call float @dx.op.unary.f32(i32 27, float %2778)  ; Round_ni(value)
  %2782 = fsub fast float %2749, %2752
  %2783 = fsub fast float %2750, %2753
  %2784 = fsub fast float %2751, %2754
  %2785 = fmul fast float %2782, 7.500000e-01
  %2786 = fmul fast float %2783, 7.500000e-01
  %2787 = fmul fast float %2784, 7.500000e-01
  %2788 = fadd fast float %2752, 1.250000e-01
  %2789 = fadd fast float %2788, %2785
  %2790 = fadd fast float %2789, %2779
  %2791 = fadd fast float %2753, 1.250000e-01
  %2792 = fadd fast float %2791, %2786
  %2793 = fadd fast float %2792, %2780
  %2794 = fadd fast float %2754, 1.250000e-01
  %2795 = fadd fast float %2794, %2787
  %2796 = fadd fast float %2795, %2781
  %2797 = fmul fast float %2790, %2740
  %2798 = fmul fast float %2793, %2741
  %2799 = fmul fast float %2796, %2742
  %2800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2801 = extractvalue %dx.types.ResRet.i32 %2800, 0
  %2802 = add i32 %2801, 0
  %2803 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2802, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2803, %dx.types.Handle %25, float %2797, float %2798, float %2799, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2805 = extractvalue %dx.types.ResRet.f32 %2804, 0
  br label %2806

; <label>:2806                                    ; preds = %2727, %2716
  %2807 = phi float [ %2805, %2727 ], [ -1.000000e+00, %2716 ]
  %2808 = fadd fast float %2807, %2714
  %2809 = call float @dx.op.unary.f32(i32 7, float %2808)  ; Saturate(value)
  br label %2810

; <label>:2810                                    ; preds = %2806, %2704
  %2811 = phi float [ %2809, %2806 ], [ %2714, %2704 ]
  %2812 = fmul fast float %2811, %397
  br label %2813

; <label>:2813                                    ; preds = %2810, %2699
  %2814 = phi float [ %2812, %2810 ], [ %397, %2699 ]
  %2815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2816 = extractvalue %dx.types.ResRet.i32 %2815, 0
  %2817 = and i32 %2816, 256
  %2818 = icmp eq i32 %2817, 0
  br i1 %2818, label %2865, label %2819

; <label>:2819                                    ; preds = %2813
  %2820 = add i32 %32, 436
  %2821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2820, i32 undef)  ; BufferLoad(srv,index,wot)
  %2822 = extractvalue %dx.types.ResRet.i32 %2821, 0
  %2823 = add i32 %2822, 0
  %2824 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2823, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2825 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2824, %dx.types.Handle %68, float %2700, float %2701, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2826 = extractvalue %dx.types.ResRet.f32 %2825, 0
  %2827 = add i32 %32, 148
  %2828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %2829 = extractvalue %dx.types.ResRet.i32 %2828, 0
  %2830 = shl i32 %2829, 4
  %2831 = and i32 %2830, 32752
  %2832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2831)  ; LegacyF16ToF32(value)
  %2833 = lshr i32 %2829, 7
  %2834 = and i32 %2833, 32752
  %2835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2834)  ; LegacyF16ToF32(value)
  %2836 = fsub fast float 1.000000e+00, %2814
  %2837 = call float @dx.op.binary.f32(i32 35, float %2836, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2838 = bitcast float %2814 to i32
  %2839 = sitofp i32 %2838 to float
  %2840 = fadd fast float %2839, 0xC1CFBF8940000000
  %2841 = fmul fast float %2835, %2840
  %2842 = fadd fast float %2841, 0x41CFBF8940000000
  %2843 = fptosi float %2842 to i32
  %2844 = bitcast i32 %2843 to float
  %2845 = bitcast float %2837 to i32
  %2846 = sitofp i32 %2845 to float
  %2847 = fadd fast float %2846, 0xC1CFBF8940000000
  %2848 = fmul fast float %2847, %2835
  %2849 = fadd fast float %2848, 0x41CFBF8940000000
  %2850 = fptosi float %2849 to i32
  %2851 = bitcast i32 %2850 to float
  %2852 = fmul fast float %2844, %2832
  %2853 = fmul fast float %2851, %2832
  %2854 = fsub fast float %2837, %2852
  %2855 = fadd fast float %2853, %2837
  %2856 = call float @dx.op.unary.f32(i32 7, float %2854)  ; Saturate(value)
  %2857 = call float @dx.op.unary.f32(i32 7, float %2855)  ; Saturate(value)
  %2858 = fsub fast float %2826, %2856
  %2859 = fsub fast float %2857, %2856
  %2860 = bitcast float %2859 to i32
  %2861 = sub nsw i32 2129859010, %2860
  %2862 = bitcast i32 %2861 to float
  %2863 = fmul fast float %2862, %2858
  %2864 = call float @dx.op.unary.f32(i32 7, float %2863)  ; Saturate(value)
  br label %2865

; <label>:2865                                    ; preds = %2819, %2813
  %2866 = phi float [ %2864, %2819 ], [ %2814, %2813 ]
  %2867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2868 = extractvalue %dx.types.ResRet.i32 %2867, 0
  %2869 = and i32 %2868, 128
  %2870 = icmp eq i32 %2869, 0
  br i1 %2870, label %2887, label %2871

; <label>:2871                                    ; preds = %2865
  %2872 = add i32 %32, 420
  %2873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2872, i32 undef)  ; BufferLoad(srv,index,wot)
  %2874 = extractvalue %dx.types.ResRet.i32 %2873, 0
  %2875 = add i32 %2874, 0
  %2876 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2875, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2877 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2876, %dx.types.Handle %68, float %2700, float %2701, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2878 = extractvalue %dx.types.ResRet.f32 %2877, 0
  %2879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2880 = extractvalue %dx.types.ResRet.i32 %2879, 0
  %2881 = and i32 %2880, 524288
  %2882 = icmp ne i32 %2881, 0
  %2883 = fcmp fast ogt float %2878, 0x3FE0101020000000
  %2884 = select i1 %2883, float 1.000000e+00, float 0.000000e+00
  %2885 = select i1 %2882, float %2884, float %2878
  %2886 = fmul fast float %2885, %2866
  br label %2887

; <label>:2887                                    ; preds = %2871, %2865
  %2888 = phi float [ %2886, %2871 ], [ %2866, %2865 ]
  %2889 = fcmp fast ult float %2888, 0x3F70101020000000
  br i1 %2889, label %3432, label %2890

; <label>:2890                                    ; preds = %2887
  %2891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2892 = extractvalue %dx.types.ResRet.i32 %2891, 0
  %2893 = and i32 %2892, 16
  %2894 = icmp eq i32 %2893, 0
  br i1 %2894, label %3093, label %2895

; <label>:2895                                    ; preds = %2890
  %2896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.i32 %2896, 0
  %2898 = add i32 %32, 372
  %2899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2898, i32 undef)  ; BufferLoad(srv,index,wot)
  %2900 = extractvalue %dx.types.ResRet.i32 %2899, 0
  %2901 = add i32 %2900, 0
  %2902 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2901, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2903 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2902, %dx.types.Handle %67, float %2700, float %2701, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2904 = extractvalue %dx.types.ResRet.f32 %2903, 0
  %2905 = extractvalue %dx.types.ResRet.f32 %2903, 1
  %2906 = extractvalue %dx.types.ResRet.f32 %2903, 2
  %2907 = extractvalue %dx.types.ResRet.f32 %2903, 3
  %2908 = and i32 %2897, 255
  %2909 = uitofp i32 %2908 to float
  %2910 = lshr i32 %2897, 8
  %2911 = and i32 %2910, 255
  %2912 = uitofp i32 %2911 to float
  %2913 = fmul fast float %2907, %2909
  %2914 = fadd fast float %2913, %2912
  %2915 = fmul fast float %2914, 0x3F70101000000000
  %2916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2917 = extractvalue %dx.types.ResRet.i32 %2916, 0
  %2918 = and i32 %2917, 512
  %2919 = icmp eq i32 %2918, 0
  br i1 %2919, label %2928, label %2920

; <label>:2920                                    ; preds = %2895
  %2921 = add i32 %32, 452
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2921, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = add i32 %2923, 0
  %2925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2924, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2926 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2925, %dx.types.Handle %68, float %2700, float %2701, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2927 = extractvalue %dx.types.ResRet.f32 %2926, 0
  br label %2928

; <label>:2928                                    ; preds = %2920, %2895
  %2929 = phi float [ %2927, %2920 ], [ 1.000000e+00, %2895 ]
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = and i32 %2931, 33554432
  %2933 = icmp eq i32 %2932, 0
  br i1 %2933, label %3040, label %2934

; <label>:2934                                    ; preds = %2928
  %2935 = add i32 %32, 272
  %2936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2937 = extractvalue %dx.types.ResRet.i32 %2936, 0
  %2938 = and i32 %2937, 65535
  %2939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2938)  ; LegacyF16ToF32(value)
  %2940 = lshr i32 %2937, 16
  %2941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2940)  ; LegacyF16ToF32(value)
  %2942 = add i32 %32, 276
  %2943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2942, i32 undef)  ; BufferLoad(srv,index,wot)
  %2944 = extractvalue %dx.types.ResRet.i32 %2943, 0
  %2945 = and i32 %2944, 65535
  %2946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2945)  ; LegacyF16ToF32(value)
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = lshr i32 %2948, 24
  %2950 = uitofp i32 %2949 to float
  %2951 = fmul fast float %2950, 0x3F70101020000000
  %2952 = and i32 %2948, 255
  %2953 = uitofp i32 %2952 to float
  %2954 = fmul fast float %2953, 0x3F70101020000000
  %2955 = lshr i32 %2948, 8
  %2956 = and i32 %2955, 255
  %2957 = uitofp i32 %2956 to float
  %2958 = fmul fast float %2957, 0x3F70101020000000
  %2959 = lshr i32 %2948, 16
  %2960 = and i32 %2959, 255
  %2961 = uitofp i32 %2960 to float
  %2962 = fmul fast float %2961, 0x3F70101020000000
  %2963 = add i32 %32, 268
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = lshr i32 %2965, 24
  %2967 = uitofp i32 %2966 to float
  %2968 = fmul fast float %2967, 0x3F70101020000000
  %2969 = and i32 %2965, 255
  %2970 = uitofp i32 %2969 to float
  %2971 = fmul fast float %2970, 0x3F70101020000000
  %2972 = lshr i32 %2965, 8
  %2973 = and i32 %2972, 255
  %2974 = uitofp i32 %2973 to float
  %2975 = fmul fast float %2974, 0x3F70101020000000
  %2976 = lshr i32 %2965, 16
  %2977 = and i32 %2976, 255
  %2978 = uitofp i32 %2977 to float
  %2979 = fmul fast float %2978, 0x3F70101020000000
  %2980 = bitcast float %2904 to i32
  %2981 = ashr i32 %2980, 1
  %2982 = sub nsw i32 1597463174, %2981
  %2983 = bitcast i32 %2982 to float
  %2984 = fmul fast float %2904, 5.000000e-01
  %2985 = fmul fast float %2983, %2983
  %2986 = fmul fast float %2985, %2984
  %2987 = fsub fast float 1.500000e+00, %2986
  %2988 = fmul fast float %2983, %2904
  %2989 = fmul fast float %2988, %2987
  %2990 = bitcast float %2905 to i32
  %2991 = ashr i32 %2990, 1
  %2992 = sub nsw i32 1597463174, %2991
  %2993 = bitcast i32 %2992 to float
  %2994 = fmul fast float %2905, 5.000000e-01
  %2995 = fmul fast float %2993, %2993
  %2996 = fmul fast float %2995, %2994
  %2997 = fsub fast float 1.500000e+00, %2996
  %2998 = fmul fast float %2993, %2905
  %2999 = fmul fast float %2998, %2997
  %3000 = bitcast float %2906 to i32
  %3001 = ashr i32 %3000, 1
  %3002 = sub nsw i32 1597463174, %3001
  %3003 = bitcast i32 %3002 to float
  %3004 = fmul fast float %2906, 5.000000e-01
  %3005 = fmul fast float %3003, %3003
  %3006 = fmul fast float %3005, %3004
  %3007 = fsub fast float 1.500000e+00, %3006
  %3008 = fmul fast float %3003, %2906
  %3009 = fmul fast float %3008, %3007
  %3010 = fsub fast float %2989, %2971
  %3011 = fsub fast float %2999, %2975
  %3012 = fsub fast float %3009, %2979
  %3013 = fmul fast float %3010, %2939
  %3014 = fmul fast float %3011, %2941
  %3015 = fmul fast float %3012, %2946
  %3016 = fadd fast float %3013, %2954
  %3017 = fadd fast float %3014, %2958
  %3018 = fadd fast float %3015, %2962
  %3019 = call float @dx.op.unary.f32(i32 7, float %3016)  ; Saturate(value)
  %3020 = call float @dx.op.unary.f32(i32 7, float %3017)  ; Saturate(value)
  %3021 = call float @dx.op.unary.f32(i32 7, float %3018)  ; Saturate(value)
  %3022 = fmul fast float %3019, %3019
  %3023 = fmul fast float %3020, %3020
  %3024 = fmul fast float %3021, %3021
  %3025 = fsub fast float %3022, %2904
  %3026 = fsub fast float %3023, %2905
  %3027 = fsub fast float %3024, %2906
  %3028 = fmul fast float %3025, %2929
  %3029 = fmul fast float %3026, %2929
  %3030 = fmul fast float %3027, %2929
  %3031 = fadd fast float %3028, %2904
  %3032 = fadd fast float %3029, %2905
  %3033 = fadd fast float %3030, %2906
  %3034 = fadd fast float %2951, %2915
  %3035 = fsub fast float %3034, %2968
  %3036 = call float @dx.op.unary.f32(i32 7, float %3035)  ; Saturate(value)
  %3037 = fsub fast float %3036, %2915
  %3038 = fmul fast float %3037, %2929
  %3039 = fadd fast float %3038, %2915
  br label %3093

; <label>:3040                                    ; preds = %2928
  %3041 = and i32 %2931, 134217728
  %3042 = icmp eq i32 %3041, 0
  br i1 %3042, label %3077, label %3043

; <label>:3043                                    ; preds = %3040
  %3044 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %3045 = call float @dx.op.unary.f32(i32 24, float %322)  ; Sqrt(value)
  %3046 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %3047 = fadd fast float %3044, -5.000000e-01
  %3048 = fadd fast float %3045, -5.000000e-01
  %3049 = fadd fast float %3046, -5.000000e-01
  %3050 = fmul fast float %3047, %2929
  %3051 = fmul fast float %3048, %2929
  %3052 = fmul fast float %3049, %2929
  %3053 = fadd fast float %3050, 5.000000e-01
  %3054 = fadd fast float %3051, 5.000000e-01
  %3055 = fadd fast float %3052, 5.000000e-01
  %3056 = call float @dx.op.unary.f32(i32 24, float %2904)  ; Sqrt(value)
  %3057 = call float @dx.op.unary.f32(i32 24, float %2905)  ; Sqrt(value)
  %3058 = call float @dx.op.unary.f32(i32 24, float %2906)  ; Sqrt(value)
  %3059 = fmul fast float %3053, 2.000000e+00
  %3060 = fsub fast float 1.000000e+00, %3059
  %3061 = fmul fast float %3060, %3056
  %3062 = fadd fast float %3061, %3059
  %3063 = fmul fast float %3062, %3056
  %3064 = fmul fast float %3054, 2.000000e+00
  %3065 = fsub fast float 1.000000e+00, %3064
  %3066 = fmul fast float %3065, %3057
  %3067 = fadd fast float %3066, %3064
  %3068 = fmul fast float %3067, %3057
  %3069 = fmul fast float %3055, 2.000000e+00
  %3070 = fsub fast float 1.000000e+00, %3069
  %3071 = fmul fast float %3070, %3058
  %3072 = fadd fast float %3071, %3069
  %3073 = fmul fast float %3072, %3058
  %3074 = fmul fast float %3063, %3063
  %3075 = fmul fast float %3068, %3068
  %3076 = fmul fast float %3073, %3073
  br label %3093

; <label>:3077                                    ; preds = %3040
  %3078 = fmul fast float %318, %318
  %3079 = fmul fast float %322, %322
  %3080 = fmul fast float %326, %326
  %3081 = fadd fast float %3078, -1.000000e+00
  %3082 = fadd fast float %3079, -1.000000e+00
  %3083 = fadd fast float %3080, -1.000000e+00
  %3084 = fmul fast float %2929, %3081
  %3085 = fmul fast float %2929, %3082
  %3086 = fmul fast float %2929, %3083
  %3087 = fadd fast float %3084, 1.000000e+00
  %3088 = fadd fast float %3085, 1.000000e+00
  %3089 = fadd fast float %3086, 1.000000e+00
  %3090 = fmul fast float %3087, %2904
  %3091 = fmul fast float %3088, %2905
  %3092 = fmul fast float %3089, %2906
  br label %3093

; <label>:3093                                    ; preds = %3077, %3043, %2934, %2890
  %3094 = phi float [ %3039, %2934 ], [ %2915, %3043 ], [ %2915, %3077 ], [ 0x3FA23C0BE0000000, %2890 ]
  %3095 = phi float [ %3031, %2934 ], [ %3074, %3043 ], [ %3090, %3077 ], [ 1.000000e+00, %2890 ]
  %3096 = phi float [ %3032, %2934 ], [ %3075, %3043 ], [ %3091, %3077 ], [ 1.000000e+00, %2890 ]
  %3097 = phi float [ %3033, %2934 ], [ %3076, %3043 ], [ %3092, %3077 ], [ 1.000000e+00, %2890 ]
  %3098 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3099 = extractvalue %dx.types.CBufRet.i32 %3098, 1
  %3100 = and i32 %3099, 1
  %3101 = icmp ne i32 %3100, 0
  %3102 = add i32 %32, 356
  %3103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3104 = extractvalue %dx.types.ResRet.i32 %3103, 0
  %3105 = and i32 %3104, 32
  %3106 = icmp ne i32 %3105, 0
  %3107 = and i1 %3101, %3106
  %3108 = select i1 %3107, float 1.000000e+00, float %3095
  %3109 = select i1 %3107, float 0x3FD3333340000000, float %3096
  %3110 = select i1 %3107, float 0x3FD3333340000000, float %3097
  %3111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3112 = extractvalue %dx.types.ResRet.i32 %3111, 0
  %3113 = and i32 %3112, 32
  %3114 = icmp eq i32 %3113, 0
  br i1 %3114, label %3187, label %3115

; <label>:3115                                    ; preds = %3093
  %3116 = add i32 %32, 140
  %3117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3116, i32 undef)  ; BufferLoad(srv,index,wot)
  %3118 = extractvalue %dx.types.ResRet.i32 %3117, 0
  %3119 = add i32 %32, 388
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = add i32 %3121, 0
  %3123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3122, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3124 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3123, %dx.types.Handle %67, float %2700, float %2701, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3125 = extractvalue %dx.types.ResRet.f32 %3124, 0
  %3126 = extractvalue %dx.types.ResRet.f32 %3124, 1
  %3127 = extractvalue %dx.types.ResRet.f32 %3124, 2
  %3128 = extractvalue %dx.types.ResRet.f32 %3124, 3
  %3129 = and i32 %3118, 255
  %3130 = uitofp i32 %3129 to float
  %3131 = lshr i32 %3118, 8
  %3132 = and i32 %3131, 255
  %3133 = uitofp i32 %3132 to float
  %3134 = lshr i32 %3118, 16
  %3135 = and i32 %3134, 255
  %3136 = uitofp i32 %3135 to float
  %3137 = fmul fast float %3136, 0x3F70101000000000
  %3138 = fmul fast float %3125, %3130
  %3139 = fadd fast float %3138, %3133
  %3140 = fmul fast float %3139, 0x3F70101000000000
  %3141 = fadd fast float %3126, -5.000000e-01
  %3142 = fadd fast float %3128, -5.000000e-01
  %3143 = fmul fast float %3141, %3137
  %3144 = fmul fast float %3142, %3137
  %3145 = fadd fast float %3143, 5.000000e-01
  %3146 = fadd fast float %3144, 5.000000e-01
  %3147 = fmul fast float %3145, 2.000000e+00
  %3148 = fadd fast float %3147, -1.000000e+00
  %3149 = fmul fast float %3146, 2.000000e+00
  %3150 = fadd fast float %3149, -1.000000e+00
  %3151 = fadd fast float %3148, %3150
  %3152 = fmul fast float %3151, 5.000000e-01
  %3153 = fsub fast float %3148, %3150
  %3154 = fmul fast float %3153, 5.000000e-01
  %3155 = call float @dx.op.unary.f32(i32 6, float %3152)  ; FAbs(value)
  %3156 = fsub fast float 1.000000e+00, %3155
  %3157 = call float @dx.op.unary.f32(i32 6, float %3154)  ; FAbs(value)
  %3158 = fsub fast float %3156, %3157
  %3159 = call float @dx.op.dot3.f32(i32 55, float %3152, float %3154, float %3158, float %3152, float %3154, float %3158)  ; Dot3(ax,ay,az,bx,by,bz)
  %3160 = call float @dx.op.unary.f32(i32 25, float %3159)  ; Rsqrt(value)
  %3161 = fmul fast float %3152, %3160
  %3162 = fmul fast float %3154, %3160
  %3163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3164 = extractvalue %dx.types.ResRet.i32 %3163, 0
  %3165 = and i32 %3164, 67108864
  %3166 = icmp eq i32 %3165, 0
  br i1 %3166, label %3183, label %3167

; <label>:3167                                    ; preds = %3115
  %3168 = add i32 %32, 328
  %3169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3168, i32 undef)  ; BufferLoad(srv,index,wot)
  %3170 = extractvalue %dx.types.ResRet.i32 %3169, 0
  %3171 = and i32 %3170, 65535
  %3172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3171)  ; LegacyF16ToF32(value)
  %3173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3174 = extractvalue %dx.types.ResRet.i32 %3173, 0
  %3175 = and i32 %3174, 65535
  %3176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3175)  ; LegacyF16ToF32(value)
  %3177 = lshr i32 %3170, 16
  %3178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3177)  ; LegacyF16ToF32(value)
  %3179 = fsub fast float %3140, %3178
  %3180 = fmul fast float %3179, %3172
  %3181 = fadd fast float %3180, %3176
  %3182 = call float @dx.op.unary.f32(i32 7, float %3181)  ; Saturate(value)
  br label %3183

; <label>:3183                                    ; preds = %3167, %3115
  %3184 = phi float [ %3182, %3167 ], [ %3140, %3115 ]
  %3185 = call float @dx.op.dot2.f32(i32 54, float %3161, float %3162, float %2604, float %2605)  ; Dot2(ax,ay,bx,by)
  %3186 = call float @dx.op.dot2.f32(i32 54, float %3161, float %3162, float %2606, float %2607)  ; Dot2(ax,ay,bx,by)
  br label %3187

; <label>:3187                                    ; preds = %3183, %3093
  %3188 = phi float [ %3184, %3183 ], [ 0x3FD6666660000000, %3093 ]
  %3189 = phi float [ %3185, %3183 ], [ 0.000000e+00, %3093 ]
  %3190 = phi float [ %3186, %3183 ], [ 0.000000e+00, %3093 ]
  %3191 = phi float [ %3127, %3183 ], [ 1.000000e+00, %3093 ]
  %3192 = add i32 %32, 208
  %3193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3192, i32 undef)  ; BufferLoad(srv,index,wot)
  %3194 = extractvalue %dx.types.ResRet.i32 %3193, 0
  %3195 = lshr i32 %3194, 22
  %3196 = shl nuw nsw i32 %3195, 5
  %3197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3196)  ; LegacyF16ToF32(value)
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = and i32 %3199, 64
  %3201 = icmp eq i32 %3200, 0
  br i1 %3201, label %3235, label %3202

; <label>:3202                                    ; preds = %3187
  %3203 = add i32 %32, 404
  %3204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3203, i32 undef)  ; BufferLoad(srv,index,wot)
  %3205 = extractvalue %dx.types.ResRet.i32 %3204, 0
  %3206 = add i32 %3205, 0
  %3207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3206, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3209 = extractvalue %dx.types.ResRet.i32 %3208, 0
  %3210 = and i32 %3209, 131072
  %3211 = icmp eq i32 %3210, 0
  %3212 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3207, %dx.types.Handle %67, float %2700, float %2701, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3213 = extractvalue %dx.types.ResRet.f32 %3212, 0
  %3214 = extractvalue %dx.types.ResRet.f32 %3212, 1
  %3215 = extractvalue %dx.types.ResRet.f32 %3212, 2
  %3216 = fmul fast float %3213, %306
  %3217 = fmul fast float %3214, %309
  %3218 = fmul fast float %3215, %312
  br i1 %3211, label %3225, label %3219

; <label>:3219                                    ; preds = %3202
  %3220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3221 = extractvalue %dx.types.CBufRet.f32 %3220, 0
  %3222 = fmul fast float %3221, %3216
  %3223 = fmul fast float %3221, %3217
  %3224 = fmul fast float %3221, %3218
  br label %3225

; <label>:3225                                    ; preds = %3219, %3202
  %3226 = phi float [ %3222, %3219 ], [ %3216, %3202 ]
  %3227 = phi float [ %3223, %3219 ], [ %3217, %3202 ]
  %3228 = phi float [ %3224, %3219 ], [ %3218, %3202 ]
  %3229 = fmul fast float %3226, %3197
  %3230 = select i1 %174, float %3229, float %3226
  %3231 = call float @dx.op.dot3.f32(i32 55, float %3230, float %3227, float %3228, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3232 = select i1 %174, float 0.000000e+00, float %3226
  %3233 = select i1 %174, float %3231, float %3227
  %3234 = select i1 %174, float 0.000000e+00, float %3228
  br label %3235

; <label>:3235                                    ; preds = %3225, %3187
  %3236 = phi float [ %3232, %3225 ], [ 0.000000e+00, %3187 ]
  %3237 = phi float [ %3233, %3225 ], [ 0.000000e+00, %3187 ]
  %3238 = phi float [ %3234, %3225 ], [ 0.000000e+00, %3187 ]
  %3239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.i32 %3239, 0
  %3241 = add i32 %32, 144
  %3242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3241, i32 undef)  ; BufferLoad(srv,index,wot)
  %3243 = extractvalue %dx.types.ResRet.i32 %3242, 0
  %3244 = and i32 %3243, 255
  %3245 = uitofp i32 %3244 to float
  %3246 = lshr i32 %3243, 8
  %3247 = and i32 %3246, 255
  %3248 = uitofp i32 %3247 to float
  %3249 = call float @dx.op.dot3.f32(i32 55, float %3108, float %3109, float %3110, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3250 = fmul fast float %3248, %3249
  %3251 = fadd fast float %3250, %3245
  %3252 = fmul fast float %3251, 0x3F70101020000000
  %3253 = call float @dx.op.unary.f32(i32 7, float %3252)  ; Saturate(value)
  br i1 %2592, label %3254, label %3262

; <label>:3254                                    ; preds = %3235
  %3255 = fsub fast float 1.000000e+00, %2888
  %3256 = fmul fast float %3255, %2581
  %3257 = fmul fast float %3255, %2582
  %3258 = fmul fast float %3255, %2583
  %3259 = fmul fast float %3255, %2584
  %3260 = fmul fast float %3255, %2585
  %3261 = fmul fast float %3255, %2586
  br label %3262

; <label>:3262                                    ; preds = %3254, %3235
  %3263 = phi float [ %3256, %3254 ], [ %2581, %3235 ]
  %3264 = phi float [ %3257, %3254 ], [ %2582, %3235 ]
  %3265 = phi float [ %3258, %3254 ], [ %2583, %3235 ]
  %3266 = phi float [ %3259, %3254 ], [ %2584, %3235 ]
  %3267 = phi float [ %3260, %3254 ], [ %2585, %3235 ]
  %3268 = phi float [ %3261, %3254 ], [ %2586, %3235 ]
  %3269 = and i32 %3240, 3
  %3270 = icmp eq i32 %3269, 3
  br i1 %3270, label %3349, label %3271

; <label>:3271                                    ; preds = %3262
  %3272 = and i32 %3240, 16
  %3273 = icmp ne i32 %3272, 0
  %3274 = select i1 %3273, float %2888, float 0.000000e+00
  %3275 = icmp eq i32 %3269, 0
  br i1 %3275, label %3276, label %3304

; <label>:3276                                    ; preds = %3271
  %3277 = and i32 %3240, 64
  %3278 = icmp ne i32 %3277, 0
  %3279 = select i1 %3278, float %2888, float 0.000000e+00
  %3280 = fsub fast float %3108, %3263
  %3281 = fsub fast float %3109, %3264
  %3282 = fsub fast float %3110, %3265
  %3283 = fmul fast float %3274, %3280
  %3284 = fmul fast float %3274, %3281
  %3285 = fmul fast float %3274, %3282
  %3286 = fadd fast float %3283, %3263
  %3287 = fadd fast float %3284, %3264
  %3288 = fadd fast float %3285, %3265
  %3289 = fsub fast float %3094, %2587
  %3290 = fmul fast float %3274, %3289
  %3291 = fadd fast float %3290, %2587
  %3292 = fsub fast float %3236, %3266
  %3293 = fsub fast float %3237, %3267
  %3294 = fsub fast float %3238, %3268
  %3295 = fmul fast float %3279, %3292
  %3296 = fmul fast float %3279, %3293
  %3297 = fmul fast float %3279, %3294
  %3298 = fadd fast float %3295, %3266
  %3299 = fadd fast float %3296, %3267
  %3300 = fadd fast float %3297, %3268
  %3301 = fsub fast float %3253, %2590
  %3302 = fmul fast float %3274, %3301
  %3303 = fadd fast float %3302, %2590
  br label %3349

; <label>:3304                                    ; preds = %3271
  %3305 = icmp eq i32 %3269, 1
  br i1 %3305, label %3306, label %3319

; <label>:3306                                    ; preds = %3304
  %3307 = fadd fast float %3108, -1.000000e+00
  %3308 = fadd fast float %3109, -1.000000e+00
  %3309 = fadd fast float %3110, -1.000000e+00
  %3310 = fmul fast float %3274, %3307
  %3311 = fmul fast float %3274, %3308
  %3312 = fmul fast float %3274, %3309
  %3313 = fadd fast float %3310, 1.000000e+00
  %3314 = fadd fast float %3311, 1.000000e+00
  %3315 = fadd fast float %3312, 1.000000e+00
  %3316 = fmul fast float %3313, %3263
  %3317 = fmul fast float %3314, %3264
  %3318 = fmul fast float %3315, %3265
  br label %3349

; <label>:3319                                    ; preds = %3304
  %3320 = icmp eq i32 %3269, 2
  br i1 %3320, label %3321, label %3349

; <label>:3321                                    ; preds = %3319
  %3322 = call float @dx.op.unary.f32(i32 24, float %3108)  ; Sqrt(value)
  %3323 = call float @dx.op.unary.f32(i32 24, float %3109)  ; Sqrt(value)
  %3324 = call float @dx.op.unary.f32(i32 24, float %3110)  ; Sqrt(value)
  %3325 = fadd fast float %3322, -5.000000e-01
  %3326 = fadd fast float %3323, -5.000000e-01
  %3327 = fadd fast float %3324, -5.000000e-01
  %3328 = fmul fast float %3325, %3274
  %3329 = fmul fast float %3326, %3274
  %3330 = fmul fast float %3327, %3274
  %3331 = fadd fast float %3328, 5.000000e-01
  %3332 = fadd fast float %3329, 5.000000e-01
  %3333 = fadd fast float %3330, 5.000000e-01
  %3334 = fmul fast float %3331, 2.000000e+00
  %3335 = fsub fast float 1.000000e+00, %3334
  %3336 = fmul fast float %3335, %3263
  %3337 = fadd fast float %3336, %3334
  %3338 = fmul fast float %3337, %3263
  %3339 = fmul fast float %3332, 2.000000e+00
  %3340 = fsub fast float 1.000000e+00, %3339
  %3341 = fmul fast float %3340, %3264
  %3342 = fadd fast float %3341, %3339
  %3343 = fmul fast float %3342, %3264
  %3344 = fmul fast float %3333, 2.000000e+00
  %3345 = fsub fast float 1.000000e+00, %3344
  %3346 = fmul fast float %3345, %3265
  %3347 = fadd fast float %3346, %3344
  %3348 = fmul fast float %3347, %3265
  br label %3349

; <label>:3349                                    ; preds = %3321, %3319, %3306, %3276, %3262
  %3350 = phi float [ %3263, %3262 ], [ %3338, %3321 ], [ %3263, %3319 ], [ %3316, %3306 ], [ %3286, %3276 ]
  %3351 = phi float [ %3264, %3262 ], [ %3343, %3321 ], [ %3264, %3319 ], [ %3317, %3306 ], [ %3287, %3276 ]
  %3352 = phi float [ %3265, %3262 ], [ %3348, %3321 ], [ %3265, %3319 ], [ %3318, %3306 ], [ %3288, %3276 ]
  %3353 = phi float [ %3266, %3262 ], [ %3266, %3321 ], [ %3266, %3319 ], [ %3266, %3306 ], [ %3298, %3276 ]
  %3354 = phi float [ %3267, %3262 ], [ %3267, %3321 ], [ %3267, %3319 ], [ %3267, %3306 ], [ %3299, %3276 ]
  %3355 = phi float [ %3268, %3262 ], [ %3268, %3321 ], [ %3268, %3319 ], [ %3268, %3306 ], [ %3300, %3276 ]
  %3356 = phi float [ %2587, %3262 ], [ %2587, %3321 ], [ %2587, %3319 ], [ %2587, %3306 ], [ %3291, %3276 ]
  %3357 = phi float [ %2590, %3262 ], [ %2590, %3321 ], [ %2590, %3319 ], [ %2590, %3306 ], [ %3303, %3276 ]
  %3358 = and i32 %3240, 12
  %3359 = icmp eq i32 %3358, 12
  br i1 %3359, label %3432, label %3360

; <label>:3360                                    ; preds = %3349
  %3361 = and i32 %3240, 2097184
  %3362 = icmp eq i32 %3361, 2097184
  %3363 = select i1 %3362, float %2888, float 0.000000e+00
  %3364 = and i32 %3240, 4194336
  %3365 = icmp eq i32 %3364, 4194336
  %3366 = select i1 %3365, float %2888, float 0.000000e+00
  %3367 = and i32 %3240, 8388640
  %3368 = icmp eq i32 %3367, 8388640
  %3369 = select i1 %3368, float %2888, float 0.000000e+00
  %3370 = icmp eq i32 %3358, 0
  br i1 %3370, label %3371, label %3384

; <label>:3371                                    ; preds = %3360
  %3372 = fsub fast float %3189, %2579
  %3373 = fsub fast float %3190, %2580
  %3374 = fmul fast float %3363, %3372
  %3375 = fmul fast float %3363, %3373
  %3376 = fadd fast float %3374, %2579
  %3377 = fadd fast float %3375, %2580
  %3378 = fsub fast float %3191, %2589
  %3379 = fmul fast float %3366, %3378
  %3380 = fadd fast float %3379, %2589
  %3381 = fsub fast float %3188, %2588
  %3382 = fmul fast float %3369, %3381
  %3383 = fadd fast float %3382, %2588
  br label %3432

; <label>:3384                                    ; preds = %3360
  %3385 = icmp eq i32 %3358, 4
  br i1 %3385, label %3386, label %3418

; <label>:3386                                    ; preds = %3384
  %3387 = fmul fast float %3363, %3189
  %3388 = fmul fast float %3363, %3190
  %3389 = fadd fast float %3387, %2579
  %3390 = fadd fast float %3388, %2580
  %3391 = call float @dx.op.binary.f32(i32 36, float %2589, float %3191)  ; FMin(a,b)
  %3392 = fsub fast float %3391, %2589
  %3393 = fmul fast float %3392, %3366
  %3394 = fadd fast float %3393, %2589
  %3395 = fadd fast float %3188, %2588
  %3396 = fmul fast float %3395, 0x3FF337FAE0000000
  %3397 = fmul fast float %2588, %2588
  %3398 = fmul fast float %3188, %3188
  %3399 = fadd fast float %3398, %3397
  %3400 = fmul fast float %3399, 0x3FE5152B00000000
  %3401 = fmul fast float %2588, 0xBFCC1F85E0000000
  %3402 = fmul fast float %3401, %3188
  %3403 = fadd fast float %3402, 0xBFE1363700000000
  %3404 = fadd fast float %3403, %3396
  %3405 = fsub fast float %3404, %3400
  %3406 = fmul fast float %3395, 0x3FBA6F0D00000000
  %3407 = fmul fast float %3399, 0x3FD0432880000000
  %3408 = fmul fast float %2588, 0xBFEF110800000000
  %3409 = fmul fast float %3408, %3188
  %3410 = fadd fast float %3409, 1.000000e+00
  %3411 = fsub fast float %3410, %3406
  %3412 = fadd fast float %3411, %3407
  %3413 = fdiv fast float %3405, %3412
  %3414 = call float @dx.op.unary.f32(i32 7, float %3413)  ; Saturate(value)
  %3415 = fsub fast float %3414, %2588
  %3416 = fmul fast float %3415, %3369
  %3417 = fadd fast float %3416, %2588
  br label %3432

; <label>:3418                                    ; preds = %3384
  %3419 = icmp eq i32 %3358, 8
  br i1 %3419, label %3420, label %3432

; <label>:3420                                    ; preds = %3418
  %3421 = fmul fast float %3363, %3189
  %3422 = fmul fast float %3363, %3190
  %3423 = fadd fast float %3421, %2579
  %3424 = fadd fast float %3422, %2580
  %3425 = call float @dx.op.binary.f32(i32 36, float %2589, float %3191)  ; FMin(a,b)
  %3426 = fsub fast float %3425, %2589
  %3427 = fmul fast float %3426, %3366
  %3428 = fadd fast float %3427, %2589
  %3429 = fsub fast float %3188, %2588
  %3430 = fmul fast float %3369, %3429
  %3431 = fadd fast float %3430, %2588
  br label %3432

; <label>:3432                                    ; preds = %3420, %3418, %3386, %3371, %3349, %2887, %2591, %2578
  %3433 = phi float [ %2579, %3349 ], [ %2579, %2887 ], [ %2579, %2578 ], [ %2579, %2591 ], [ %3376, %3371 ], [ %3389, %3386 ], [ %2579, %3418 ], [ %3423, %3420 ]
  %3434 = phi float [ %2580, %3349 ], [ %2580, %2887 ], [ %2580, %2578 ], [ %2580, %2591 ], [ %3377, %3371 ], [ %3390, %3386 ], [ %2580, %3418 ], [ %3424, %3420 ]
  %3435 = phi float [ %3350, %3349 ], [ %2581, %2887 ], [ %2581, %2578 ], [ %2581, %2591 ], [ %3350, %3371 ], [ %3350, %3386 ], [ %3350, %3418 ], [ %3350, %3420 ]
  %3436 = phi float [ %3351, %3349 ], [ %2582, %2887 ], [ %2582, %2578 ], [ %2582, %2591 ], [ %3351, %3371 ], [ %3351, %3386 ], [ %3351, %3418 ], [ %3351, %3420 ]
  %3437 = phi float [ %3352, %3349 ], [ %2583, %2887 ], [ %2583, %2578 ], [ %2583, %2591 ], [ %3352, %3371 ], [ %3352, %3386 ], [ %3352, %3418 ], [ %3352, %3420 ]
  %3438 = phi float [ %3353, %3349 ], [ %2584, %2887 ], [ %2584, %2578 ], [ %2584, %2591 ], [ %3353, %3371 ], [ %3353, %3386 ], [ %3353, %3418 ], [ %3353, %3420 ]
  %3439 = phi float [ %3354, %3349 ], [ %2585, %2887 ], [ %2585, %2578 ], [ %2585, %2591 ], [ %3354, %3371 ], [ %3354, %3386 ], [ %3354, %3418 ], [ %3354, %3420 ]
  %3440 = phi float [ %3355, %3349 ], [ %2586, %2887 ], [ %2586, %2578 ], [ %2586, %2591 ], [ %3355, %3371 ], [ %3355, %3386 ], [ %3355, %3418 ], [ %3355, %3420 ]
  %3441 = phi float [ %3356, %3349 ], [ %2587, %2887 ], [ %2587, %2578 ], [ %2587, %2591 ], [ %3356, %3371 ], [ %3356, %3386 ], [ %3356, %3418 ], [ %3356, %3420 ]
  %3442 = phi float [ %2588, %3349 ], [ %2588, %2887 ], [ %2588, %2578 ], [ %2588, %2591 ], [ %3383, %3371 ], [ %3417, %3386 ], [ %2588, %3418 ], [ %3431, %3420 ]
  %3443 = phi float [ %2589, %3349 ], [ %2589, %2887 ], [ %2589, %2578 ], [ %2589, %2591 ], [ %3380, %3371 ], [ %3394, %3386 ], [ %2589, %3418 ], [ %3428, %3420 ]
  %3444 = phi float [ %3357, %3349 ], [ %2590, %2887 ], [ %2590, %2578 ], [ %2590, %2591 ], [ %3357, %3371 ], [ %3357, %3386 ], [ %3357, %3418 ], [ %3357, %3420 ]
  %3445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3446 = extractvalue %dx.types.CBufRet.f32 %3445, 0
  %3447 = call float @dx.op.dot2.f32(i32 54, float %3433, float %3434, float %3433, float %3434)  ; Dot2(ax,ay,bx,by)
  %3448 = fmul fast float %3447, 0x3FE3333340000000
  %3449 = fsub fast float 1.000000e+00, %3448
  %3450 = call float @dx.op.dot3.f32(i32 55, float %3433, float %3434, float %3449, float %3433, float %3434, float %3449)  ; Dot3(ax,ay,az,bx,by,bz)
  %3451 = call float @dx.op.unary.f32(i32 25, float %3450)  ; Rsqrt(value)
  %3452 = fmul fast float %3451, %3433
  %3453 = fmul fast float %3451, %3434
  %3454 = fmul fast float %3449, %3451
  %3455 = fmul fast float %3454, %80
  %3456 = fmul fast float %3454, %82
  %3457 = fmul fast float %3454, %84
  %3458 = fmul fast float %3452, %52
  %3459 = fmul fast float %3452, %53
  %3460 = fmul fast float %3452, %54
  %3461 = fadd fast float %3455, %3458
  %3462 = fadd fast float %3456, %3459
  %3463 = fadd fast float %3457, %3460
  %3464 = fmul fast float %94, %3453
  %3465 = fmul fast float %95, %3453
  %3466 = fmul fast float %96, %3453
  %3467 = fadd fast float %3461, %3464
  %3468 = fadd fast float %3462, %3465
  %3469 = fadd fast float %3463, %3466
  %3470 = call float @dx.op.dot3.f32(i32 55, float %3467, float %3468, float %3469, float %3467, float %3468, float %3469)  ; Dot3(ax,ay,az,bx,by,bz)
  %3471 = call float @dx.op.unary.f32(i32 25, float %3470)  ; Rsqrt(value)
  %3472 = fmul fast float %3467, %3471
  %3473 = fmul fast float %3468, %3471
  %3474 = fmul fast float %3469, %3471
  %3475 = fadd fast float %3441, 0xBFB99999A0000000
  %3476 = call float @dx.op.unary.f32(i32 7, float %3475)  ; Saturate(value)
  %3477 = fmul fast float %3476, 0x3FF1C71C80000000
  %3478 = call float @dx.op.binary.f32(i32 36, float %3441, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3479 = fsub fast float 1.000000e+00, %3477
  %3480 = call float @dx.op.unary.f32(i32 7, float %3479)  ; Saturate(value)
  %3481 = fmul fast float %3480, %3435
  %3482 = fmul fast float %3480, %3436
  %3483 = fmul fast float %3480, %3437
  %3484 = call float @dx.op.unary.f32(i32 7, float %3481)  ; Saturate(value)
  %3485 = call float @dx.op.unary.f32(i32 7, float %3482)  ; Saturate(value)
  %3486 = call float @dx.op.unary.f32(i32 7, float %3483)  ; Saturate(value)
  %3487 = fmul fast float %3477, %3435
  %3488 = fmul fast float %3477, %3436
  %3489 = fmul fast float %3477, %3437
  %3490 = fadd fast float %3487, %3478
  %3491 = fadd fast float %3488, %3478
  %3492 = fadd fast float %3489, %3478
  %3493 = call float @dx.op.unary.f32(i32 7, float %3490)  ; Saturate(value)
  %3494 = call float @dx.op.unary.f32(i32 7, float %3491)  ; Saturate(value)
  %3495 = call float @dx.op.unary.f32(i32 7, float %3492)  ; Saturate(value)
  %3496 = call float @dx.op.unary.f32(i32 7, float %3442)  ; Saturate(value)
  %3497 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3498 = extractvalue %dx.types.CBufRet.i32 %3497, 3
  %3499 = and i32 %3498, 8
  %3500 = icmp ne i32 %3499, 0
  %3501 = call float @dx.op.binary.f32(i32 35, float %3484, float %3435)  ; FMax(a,b)
  %3502 = call float @dx.op.binary.f32(i32 35, float %3485, float %3435)  ; FMax(a,b)
  %3503 = call float @dx.op.binary.f32(i32 35, float %3486, float %3435)  ; FMax(a,b)
  %3504 = call float @dx.op.dot3.f32(i32 55, float %3484, float %3485, float %3486, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3505 = select i1 %174, float %3435, float %3484
  %3506 = select i1 %174, float %3504, float %3485
  %3507 = select i1 %174, float 1.000000e+00, float %3486
  %3508 = select i1 %3500, float %3501, float %3505
  %3509 = select i1 %3500, float %3502, float %3506
  %3510 = select i1 %3500, float %3503, float %3507
  %3511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3512 = extractvalue %dx.types.CBufRet.f32 %3511, 0
  %3513 = extractvalue %dx.types.CBufRet.f32 %3511, 1
  %3514 = extractvalue %dx.types.CBufRet.f32 %3511, 2
  %3515 = fadd fast float %3512, %130
  %3516 = fadd fast float %3513, %131
  %3517 = fadd fast float %3514, %132
  %3518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3519 = extractvalue %dx.types.CBufRet.f32 %3518, 0
  %3520 = extractvalue %dx.types.CBufRet.f32 %3518, 1
  %3521 = fsub fast float %3515, %3519
  %3522 = fsub fast float %3516, %3520
  %3523 = fmul fast float %3521, %3521
  %3524 = fmul fast float %3522, %3522
  %3525 = fadd fast float %3523, %3524
  %3526 = call float @dx.op.unary.f32(i32 24, float %3525)  ; Sqrt(value)
  %3527 = extractvalue %dx.types.CBufRet.f32 %3518, 2
  %3528 = fcmp fast olt float %3526, %3527
  br i1 %3528, label %3529, label %3596

; <label>:3529                                    ; preds = %3432
  %3530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3531 = extractvalue %dx.types.CBufRet.f32 %3530, 0
  %3532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3533 = extractvalue %dx.types.CBufRet.f32 %3532, 0
  %3534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3535 = extractvalue %dx.types.CBufRet.f32 %3534, 0
  %3536 = extractvalue %dx.types.CBufRet.f32 %3530, 1
  %3537 = extractvalue %dx.types.CBufRet.f32 %3532, 1
  %3538 = extractvalue %dx.types.CBufRet.f32 %3534, 1
  %3539 = extractvalue %dx.types.CBufRet.f32 %3530, 3
  %3540 = extractvalue %dx.types.CBufRet.f32 %3532, 3
  %3541 = extractvalue %dx.types.CBufRet.f32 %3534, 3
  %3542 = fadd fast float %3539, %3515
  %3543 = fadd fast float %3540, %3516
  %3544 = fadd fast float %3541, %3517
  %3545 = fmul fast float %3542, %3531
  %3546 = call float @dx.op.tertiary.f32(i32 46, float %3543, float %3533, float %3545)  ; FMad(a,b,c)
  %3547 = call float @dx.op.tertiary.f32(i32 46, float %3544, float %3535, float %3546)  ; FMad(a,b,c)
  %3548 = fmul fast float %3542, %3536
  %3549 = call float @dx.op.tertiary.f32(i32 46, float %3543, float %3537, float %3548)  ; FMad(a,b,c)
  %3550 = call float @dx.op.tertiary.f32(i32 46, float %3544, float %3538, float %3549)  ; FMad(a,b,c)
  %3551 = fsub fast float %3547, %3539
  %3552 = fsub fast float %3550, %3540
  %3553 = fsub fast float %3551, %3519
  %3554 = fadd fast float %3553, %3527
  %3555 = fsub fast float %3552, %3520
  %3556 = fadd fast float %3555, %3527
  %3557 = extractvalue %dx.types.CBufRet.f32 %3518, 3
  %3558 = fmul fast float %3554, %3557
  %3559 = fmul fast float %3556, %3557
  %3560 = call float @dx.op.unary.f32(i32 7, float %3558)  ; Saturate(value)
  %3561 = call float @dx.op.unary.f32(i32 7, float %3559)  ; Saturate(value)
  %3562 = fsub fast float 1.000000e+00, %3560
  %3563 = fsub fast float 1.000000e+00, %3561
  %3564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %3562, float %3563, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3565 = extractvalue %dx.types.ResRet.f32 %3564, 0
  %3566 = fcmp fast ugt float %3565, 0.000000e+00
  br i1 %3566, label %3567, label %3870

; <label>:3567                                    ; preds = %3529
  %3568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3569 = extractvalue %dx.types.CBufRet.f32 %3568, 2
  %3570 = fmul fast float %3569, %3565
  %3571 = extractvalue %dx.types.CBufRet.f32 %3568, 3
  %3572 = fadd fast float %3571, %3570
  %3573 = extractvalue %dx.types.CBufRet.f32 %3534, 2
  %3574 = fadd fast float %3572, %3541
  %3575 = fmul fast float %3547, %3535
  %3576 = call float @dx.op.tertiary.f32(i32 46, float %3550, float %3538, float %3575)  ; FMad(a,b,c)
  %3577 = call float @dx.op.tertiary.f32(i32 46, float %3574, float %3573, float %3576)  ; FMad(a,b,c)
  %3578 = fsub fast float %3577, %3541
  %3579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3580 = extractvalue %dx.types.CBufRet.f32 %3579, 2
  %3581 = fsub fast float %3578, %3580
  %3582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %26, float %3562, float %3563, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3583 = extractvalue %dx.types.ResRet.f32 %3582, 0
  %3584 = extractvalue %dx.types.ResRet.f32 %3582, 1
  %3585 = extractvalue %dx.types.ResRet.f32 %3582, 2
  %3586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %26, float %3562, float %3563, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3587 = extractvalue %dx.types.ResRet.f32 %3586, 0
  %3588 = extractvalue %dx.types.ResRet.f32 %3586, 1
  %3589 = extractvalue %dx.types.ResRet.f32 %3586, 2
  %3590 = fadd fast float %3587, %3583
  %3591 = fmul fast float %3590, 0x3F847AE140000000
  %3592 = fadd fast float %3588, %3584
  %3593 = fmul fast float %3592, 0x3F847AE140000000
  %3594 = fadd fast float %3589, %3585
  %3595 = fmul fast float %3594, 0x3F847AE140000000
  br label %3870

; <label>:3596                                    ; preds = %3432
  %3597 = and i32 %148, 1
  %3598 = icmp eq i32 %3597, 0
  br i1 %3598, label %3870, label %3599

; <label>:3599                                    ; preds = %3596
  %3600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3601 = extractvalue %dx.types.CBufRet.f32 %3600, 0
  %3602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3603 = extractvalue %dx.types.CBufRet.f32 %3602, 0
  %3604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3605 = extractvalue %dx.types.CBufRet.f32 %3604, 0
  %3606 = extractvalue %dx.types.CBufRet.f32 %3600, 1
  %3607 = extractvalue %dx.types.CBufRet.f32 %3602, 1
  %3608 = extractvalue %dx.types.CBufRet.f32 %3604, 1
  %3609 = extractvalue %dx.types.CBufRet.f32 %3600, 3
  %3610 = extractvalue %dx.types.CBufRet.f32 %3602, 3
  %3611 = extractvalue %dx.types.CBufRet.f32 %3604, 3
  %3612 = fadd fast float %3609, %3515
  %3613 = fadd fast float %3610, %3516
  %3614 = fadd fast float %3611, %3517
  %3615 = fmul fast float %3612, %3601
  %3616 = call float @dx.op.tertiary.f32(i32 46, float %3613, float %3603, float %3615)  ; FMad(a,b,c)
  %3617 = call float @dx.op.tertiary.f32(i32 46, float %3614, float %3605, float %3616)  ; FMad(a,b,c)
  %3618 = fmul fast float %3612, %3606
  %3619 = call float @dx.op.tertiary.f32(i32 46, float %3613, float %3607, float %3618)  ; FMad(a,b,c)
  %3620 = call float @dx.op.tertiary.f32(i32 46, float %3614, float %3608, float %3619)  ; FMad(a,b,c)
  %3621 = fsub fast float %3617, %3609
  %3622 = fsub fast float %3620, %3610
  %3623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3624 = extractvalue %dx.types.CBufRet.f32 %3623, 0
  %3625 = extractvalue %dx.types.CBufRet.f32 %3623, 1
  %3626 = extractvalue %dx.types.CBufRet.f32 %3623, 2
  %3627 = extractvalue %dx.types.CBufRet.f32 %3623, 3
  %3628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3629 = extractvalue %dx.types.CBufRet.f32 %3628, 3
  %3630 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3631 = extractvalue %dx.types.CBufRet.i32 %3630, 0
  %3632 = extractvalue %dx.types.CBufRet.i32 %3630, 1
  %3633 = udiv i32 %3632, %3631
  %3634 = fsub fast float %3621, %3624
  %3635 = fsub fast float %3622, %3625
  %3636 = call float @dx.op.binary.f32(i32 35, float %3634, float 0.000000e+00)  ; FMax(a,b)
  %3637 = call float @dx.op.binary.f32(i32 35, float %3635, float 0.000000e+00)  ; FMax(a,b)
  %3638 = call float @dx.op.binary.f32(i32 36, float %3636, float %3626)  ; FMin(a,b)
  %3639 = call float @dx.op.binary.f32(i32 36, float %3637, float %3627)  ; FMin(a,b)
  %3640 = add i32 %3631, -1
  %3641 = add i32 %3633, -1
  %3642 = fmul fast float %3638, %3629
  %3643 = fmul fast float %3639, %3629
  %3644 = fptoui float %3642 to i32
  %3645 = fptoui float %3643 to i32
  %3646 = call i32 @dx.op.binary.i32(i32 40, i32 %3644, i32 %3640)  ; UMin(a,b)
  %3647 = call i32 @dx.op.binary.i32(i32 40, i32 %3645, i32 %3641)  ; UMin(a,b)
  %3648 = mul i32 %3647, %3631
  %3649 = add i32 %3648, %3646
  %3650 = shl i32 %3649, 2
  %3651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3650, i32 undef)  ; BufferLoad(srv,index,wot)
  %3652 = extractvalue %dx.types.ResRet.i32 %3651, 0
  %3653 = icmp eq i32 %3652, -1
  br i1 %3653, label %3870, label %3654

; <label>:3654                                    ; preds = %3599
  %3655 = mul i32 %3652, 148
  %3656 = add i32 %3655, 4
  %3657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3656, i32 undef)  ; BufferLoad(srv,index,wot)
  %3658 = extractvalue %dx.types.ResRet.f32 %3657, 0
  %3659 = add i32 %3655, 8
  %3660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3659, i32 undef)  ; BufferLoad(srv,index,wot)
  %3661 = extractvalue %dx.types.ResRet.f32 %3660, 0
  %3662 = add i32 %3655, 36
  %3663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3662, i32 undef)  ; BufferLoad(srv,index,wot)
  %3664 = extractvalue %dx.types.ResRet.f32 %3663, 0
  %3665 = add i32 %3655, 60
  %3666 = add i32 %3655, 92
  %3667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3666, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.i32 %3667, 0
  %3669 = add i32 %3655, 116
  %3670 = fsub fast float %3621, %3658
  %3671 = fsub fast float %3622, %3661
  %3672 = fmul fast float %3629, %3670
  %3673 = fmul fast float %3629, %3671
  %3674 = call float @dx.op.unary.f32(i32 7, float %3672)  ; Saturate(value)
  %3675 = call float @dx.op.unary.f32(i32 7, float %3673)  ; Saturate(value)
  %3676 = fsub fast float 1.000000e+00, %3675
  %3677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3678 = extractvalue %dx.types.CBufRet.f32 %3677, 2
  %3679 = call float @dx.op.unary.f32(i32 83, float %3674)  ; DerivCoarseX(value)
  %3680 = call float @dx.op.unary.f32(i32 83, float %3676)  ; DerivCoarseX(value)
  %3681 = call float @dx.op.unary.f32(i32 84, float %3674)  ; DerivCoarseY(value)
  %3682 = call float @dx.op.unary.f32(i32 84, float %3676)  ; DerivCoarseY(value)
  %3683 = fmul fast float %3679, %3678
  %3684 = fmul fast float %3680, %3678
  %3685 = fmul fast float %3681, %3678
  %3686 = fmul fast float %3682, %3678
  %3687 = call float @dx.op.dot2.f32(i32 54, float %3685, float %3686, float %3685, float %3686)  ; Dot2(ax,ay,bx,by)
  %3688 = call float @dx.op.dot2.f32(i32 54, float %3683, float %3684, float %3683, float %3684)  ; Dot2(ax,ay,bx,by)
  %3689 = call float @dx.op.binary.f32(i32 35, float %3688, float %3687)  ; FMax(a,b)
  %3690 = call float @dx.op.unary.f32(i32 23, float %3689)  ; Log(value)
  %3691 = fmul fast float %3690, 5.000000e-01
  %3692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3693 = extractvalue %dx.types.CBufRet.f32 %3692, 1
  %3694 = fadd fast float %3693, %3691
  %3695 = call float @dx.op.binary.f32(i32 35, float %3694, float 0.000000e+00)  ; FMax(a,b)
  %3696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3697 = extractvalue %dx.types.CBufRet.f32 %3696, 3
  %3698 = fadd fast float %3697, %3695
  %3699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3700 = extractvalue %dx.types.CBufRet.f32 %3699, 3
  %3701 = fadd fast float %3698, %3700
  %3702 = add i32 %3668, 0
  %3703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3702, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3704 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3703, i32 0)  ; GetDimensions(handle,mipLevel)
  %3705 = extractvalue %dx.types.Dimensions %3704, 0
  %3706 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3705)  ; FirstbitLo(value)
  %3707 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3708 = extractvalue %dx.types.CBufRet.i32 %3707, 1
  %3709 = sub nsw i32 %3708, %3706
  %3710 = sitofp i32 %3709 to float
  %3711 = fsub fast float %3701, %3710
  %3712 = call float @dx.op.binary.f32(i32 35, float %3711, float 0.000000e+00)  ; FMax(a,b)
  %3713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3703, %dx.types.Handle %24, float %3674, float %3676, float %3664, float undef, i32 0, i32 0, i32 undef, float %3712)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3714 = extractvalue %dx.types.ResRet.f32 %3713, 0
  %3715 = fcmp ule float %3714, 0x3FE0101020000000
  %3716 = extractvalue %dx.types.CBufRet.i32 %3707, 0
  %3717 = and i32 %3716, 128
  %3718 = icmp ne i32 %3717, 0
  %3719 = and i1 %3715, %3718
  br i1 %3719, label %3870, label %3720

; <label>:3720                                    ; preds = %3654
  %3721 = add i32 %3655, 20
  %3722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3723 = extractvalue %dx.types.ResRet.f32 %3722, 0
  %3724 = add i32 %3655, 24
  %3725 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3724, i32 undef)  ; BufferLoad(srv,index,wot)
  %3726 = extractvalue %dx.types.ResRet.f32 %3725, 0
  %3727 = add i32 %3655, 40
  %3728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3729 = extractvalue %dx.types.ResRet.f32 %3728, 0
  %3730 = add i32 %3655, 96
  %3731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3732 = extractvalue %dx.types.ResRet.i32 %3731, 0
  %3733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3734 = extractvalue %dx.types.CBufRet.f32 %3733, 2
  %3735 = fmul fast float %3734, %3674
  %3736 = fmul fast float %3734, %3676
  %3737 = extractvalue %dx.types.CBufRet.f32 %3733, 3
  %3738 = fadd fast float %3735, %3737
  %3739 = fadd fast float %3736, %3737
  %3740 = add i32 %3732, 0
  %3741 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3740, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3742 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3741, i32 0)  ; GetDimensions(handle,mipLevel)
  %3743 = extractvalue %dx.types.Dimensions %3742, 0
  %3744 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3743)  ; FirstbitLo(value)
  %3745 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3746 = extractvalue %dx.types.CBufRet.i32 %3745, 1
  %3747 = sub nsw i32 %3746, %3744
  %3748 = sitofp i32 %3747 to float
  %3749 = fsub fast float %3698, %3748
  %3750 = call float @dx.op.binary.f32(i32 35, float %3749, float 0.000000e+00)  ; FMax(a,b)
  %3751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3741, %dx.types.Handle %24, float %3738, float %3739, float %3729, float undef, i32 0, i32 0, i32 undef, float %3750)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3752 = extractvalue %dx.types.ResRet.f32 %3751, 0
  %3753 = fmul fast float %3752, %3723
  %3754 = fadd fast float %3753, %3726
  %3755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3756 = extractvalue %dx.types.CBufRet.f32 %3755, 0
  %3757 = extractvalue %dx.types.CBufRet.f32 %3755, 1
  %3758 = extractvalue %dx.types.CBufRet.f32 %3755, 2
  %3759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3760 = extractvalue %dx.types.CBufRet.f32 %3759, 3
  %3761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3762 = extractvalue %dx.types.CBufRet.f32 %3761, 3
  %3763 = extractvalue %dx.types.CBufRet.f32 %3755, 3
  %3764 = fadd fast float %3760, %3621
  %3765 = fadd fast float %3762, %3622
  %3766 = fadd fast float %3754, %3763
  %3767 = fmul fast float %3764, %3756
  %3768 = call float @dx.op.tertiary.f32(i32 46, float %3765, float %3757, float %3767)  ; FMad(a,b,c)
  %3769 = call float @dx.op.tertiary.f32(i32 46, float %3766, float %3758, float %3768)  ; FMad(a,b,c)
  %3770 = fsub fast float %3769, %3763
  %3771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3772 = extractvalue %dx.types.CBufRet.f32 %3771, 2
  %3773 = fsub fast float %3770, %3772
  %3774 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3775 = extractvalue %dx.types.CBufRet.i32 %3774, 0
  %3776 = call i32 @dx.op.binary.i32(i32 40, i32 %3652, i32 %3775)  ; UMin(a,b)
  %3777 = mul i32 %3776, 36
  %3778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3777, i32 undef)  ; BufferLoad(srv,index,wot)
  %3779 = extractvalue %dx.types.ResRet.i32 %3778, 0
  %3780 = add i32 %3777, 4
  %3781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3782 = extractvalue %dx.types.CBufRet.f32 %3781, 0
  %3783 = fmul fast float %3782, %3674
  %3784 = fmul fast float %3782, %3676
  %3785 = extractvalue %dx.types.CBufRet.f32 %3781, 1
  %3786 = fadd fast float %3783, %3785
  %3787 = fadd fast float %3784, %3785
  %3788 = icmp eq i32 %3779, 0
  br i1 %3788, label %3857, label %3789

; <label>:3789                                    ; preds = %3720
  br label %3790

; <label>:3790                                    ; preds = %3847, %3789
  %3791 = phi float [ %3848, %3847 ], [ 0.000000e+00, %3789 ]
  %3792 = phi float [ %3849, %3847 ], [ 0.000000e+00, %3789 ]
  %3793 = phi float [ %3850, %3847 ], [ 0.000000e+00, %3789 ]
  %3794 = phi float [ %3851, %3847 ], [ 0.000000e+00, %3789 ]
  %3795 = phi float [ %3852, %3847 ], [ 0.000000e+00, %3789 ]
  %3796 = phi float [ %3853, %3847 ], [ 0.000000e+00, %3789 ]
  %3797 = phi i32 [ %3854, %3847 ], [ 0, %3789 ]
  %3798 = shl i32 %3797, 2
  %3799 = add i32 %3665, %3798
  %3800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3801 = extractvalue %dx.types.ResRet.f32 %3800, 0
  %3802 = add i32 %3669, %3798
  %3803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3802, i32 undef)  ; BufferLoad(srv,index,wot)
  %3804 = extractvalue %dx.types.ResRet.i32 %3803, 0
  %3805 = add i32 %3804, 0
  %3806 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3805, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3807 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3806, i32 0)  ; GetDimensions(handle,mipLevel)
  %3808 = extractvalue %dx.types.Dimensions %3807, 0
  %3809 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3808)  ; FirstbitLo(value)
  %3810 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3811 = extractvalue %dx.types.CBufRet.i32 %3810, 1
  %3812 = sub nsw i32 %3811, %3809
  %3813 = sitofp i32 %3812 to float
  %3814 = fsub fast float %3698, %3813
  %3815 = call float @dx.op.binary.f32(i32 35, float %3814, float 0.000000e+00)  ; FMax(a,b)
  %3816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3806, %dx.types.Handle %24, float %3786, float %3787, float %3801, float undef, i32 0, i32 0, i32 undef, float %3815)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3817 = extractvalue %dx.types.ResRet.f32 %3816, 0
  %3818 = fcmp fast ogt float %3817, 0.000000e+00
  br i1 %3818, label %3819, label %3847

; <label>:3819                                    ; preds = %3790
  %3820 = add i32 %3780, %3798
  %3821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3820, i32 undef)  ; BufferLoad(srv,index,wot)
  %3822 = extractvalue %dx.types.ResRet.i32 %3821, 0
  %3823 = and i32 %3822, 32767
  %3824 = mul nuw nsw i32 %3823, 928
  %3825 = add nuw nsw i32 %3824, 48
  %3826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3827 = extractvalue %dx.types.ResRet.f32 %3826, 0
  %3828 = extractvalue %dx.types.ResRet.f32 %3826, 1
  %3829 = extractvalue %dx.types.ResRet.f32 %3826, 2
  %3830 = add nuw nsw i32 %3824, 60
  %3831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3830, i32 undef)  ; BufferLoad(srv,index,wot)
  %3832 = extractvalue %dx.types.ResRet.f32 %3831, 0
  %3833 = extractvalue %dx.types.ResRet.f32 %3831, 1
  %3834 = extractvalue %dx.types.ResRet.f32 %3831, 2
  %3835 = fmul fast float %3827, %3817
  %3836 = fmul fast float %3828, %3817
  %3837 = fmul fast float %3829, %3817
  %3838 = fadd fast float %3835, %3791
  %3839 = fadd fast float %3836, %3792
  %3840 = fadd fast float %3837, %3793
  %3841 = fmul fast float %3832, %3817
  %3842 = fmul fast float %3833, %3817
  %3843 = fmul fast float %3834, %3817
  %3844 = fadd fast float %3841, %3794
  %3845 = fadd fast float %3842, %3795
  %3846 = fadd fast float %3843, %3796
  br label %3847

; <label>:3847                                    ; preds = %3819, %3790
  %3848 = phi float [ %3838, %3819 ], [ %3791, %3790 ]
  %3849 = phi float [ %3839, %3819 ], [ %3792, %3790 ]
  %3850 = phi float [ %3840, %3819 ], [ %3793, %3790 ]
  %3851 = phi float [ %3844, %3819 ], [ %3794, %3790 ]
  %3852 = phi float [ %3845, %3819 ], [ %3795, %3790 ]
  %3853 = phi float [ %3846, %3819 ], [ %3796, %3790 ]
  %3854 = add nuw i32 %3797, 1
  %3855 = icmp eq i32 %3854, %3779
  br i1 %3855, label %3856, label %3790

; <label>:3856                                    ; preds = %3847
  br label %3857

; <label>:3857                                    ; preds = %3856, %3720
  %3858 = phi float [ 0.000000e+00, %3720 ], [ %3848, %3856 ]
  %3859 = phi float [ 0.000000e+00, %3720 ], [ %3849, %3856 ]
  %3860 = phi float [ 0.000000e+00, %3720 ], [ %3850, %3856 ]
  %3861 = phi float [ 0.000000e+00, %3720 ], [ %3851, %3856 ]
  %3862 = phi float [ 0.000000e+00, %3720 ], [ %3852, %3856 ]
  %3863 = phi float [ 0.000000e+00, %3720 ], [ %3853, %3856 ]
  %3864 = fadd fast float %3861, %3858
  %3865 = fmul fast float %3864, 0x3F847AE140000000
  %3866 = fadd fast float %3862, %3859
  %3867 = fmul fast float %3866, 0x3F847AE140000000
  %3868 = fadd fast float %3863, %3860
  %3869 = fmul fast float %3868, 0x3F847AE140000000
  br label %3870

; <label>:3870                                    ; preds = %3857, %3654, %3599, %3596, %3567, %3529
  %3871 = phi float [ %3581, %3567 ], [ -1.310720e+05, %3529 ], [ %3773, %3857 ], [ -1.310720e+05, %3599 ], [ -1.310720e+05, %3654 ], [ -1.310720e+05, %3596 ]
  %3872 = phi float [ %3591, %3567 ], [ 0.000000e+00, %3529 ], [ %3865, %3857 ], [ 0.000000e+00, %3599 ], [ 0.000000e+00, %3654 ], [ 0.000000e+00, %3596 ]
  %3873 = phi float [ %3593, %3567 ], [ 0.000000e+00, %3529 ], [ %3867, %3857 ], [ 0.000000e+00, %3599 ], [ 0.000000e+00, %3654 ], [ 0.000000e+00, %3596 ]
  %3874 = phi float [ %3595, %3567 ], [ 0.000000e+00, %3529 ], [ %3869, %3857 ], [ 0.000000e+00, %3599 ], [ 0.000000e+00, %3654 ], [ 0.000000e+00, %3596 ]
  %3875 = phi i1 [ true, %3567 ], [ false, %3529 ], [ true, %3857 ], [ false, %3599 ], [ false, %3654 ], [ false, %3596 ]
  %3876 = and i32 %148, 3
  %3877 = icmp eq i32 %3876, 1
  %3878 = select i1 %3877, float 1.000000e+00, float 0.000000e+00
  %3879 = fsub fast float %3871, %132
  %3880 = call float @dx.op.unary.f32(i32 7, float %3879)  ; Saturate(value)
  %3881 = select i1 %3875, float %3880, float 1.000000e+00
  %3882 = fmul fast float %3881, %3878
  %3883 = icmp eq i32 %3876, 3
  %3884 = select i1 %3883, float 1.000000e+00, float %3882
  %3885 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3884)  ; FMax(a,b)
  %3886 = call float @dx.op.unary.f32(i32 7, float %3885)  ; Saturate(value)
  %3887 = fcmp fast une float %3886, 0.000000e+00
  %3888 = call float @dx.op.dot3.f32(i32 55, float %130, float %131, float %132, float %130, float %131, float %132)  ; Dot3(ax,ay,az,bx,by,bz)
  %3889 = call float @dx.op.unary.f32(i32 25, float %3888)  ; Rsqrt(value)
  br i1 %3887, label %3897, label %3890

; <label>:3890                                    ; preds = %3870
  %3891 = fmul fast float %3889, %130
  %3892 = fmul fast float %3889, %131
  %3893 = fmul fast float %3889, %132
  %3894 = fsub fast float -0.000000e+00, %3891
  %3895 = fsub fast float -0.000000e+00, %3892
  %3896 = fsub fast float -0.000000e+00, %3893
  br label %4065

; <label>:3897                                    ; preds = %3870
  %3898 = fmul fast float %130, %3889
  %3899 = fsub fast float -0.000000e+00, %3898
  %3900 = fmul fast float %131, %3889
  %3901 = fsub fast float -0.000000e+00, %3900
  %3902 = fmul fast float %132, %3889
  %3903 = fsub fast float -0.000000e+00, %3902
  %3904 = call float @dx.op.dot3.f32(i32 55, float %3899, float %3901, float %3903, float %80, float %82, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %3905 = fmul fast float %3886, 2.500000e+00
  %3906 = call float @dx.op.unary.f32(i32 7, float %3905)  ; Saturate(value)
  %3907 = fmul fast float %3886, 0x4013FFFFE0000000
  %3908 = fadd fast float %3907, 0xBFFFFFFFE0000000
  %3909 = call float @dx.op.unary.f32(i32 7, float %3908)  ; Saturate(value)
  %3910 = fmul fast float %3886, 0x4004000020000000
  %3911 = fadd fast float %3910, 0xBFF8000040000000
  %3912 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3913 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  %3914 = fmul fast float %3475, 1.000000e+01
  %3915 = call float @dx.op.unary.f32(i32 7, float %3914)  ; Saturate(value)
  %3916 = fmul fast float %3915, 2.000000e+00
  %3917 = fsub fast float 3.000000e+00, %3916
  %3918 = fmul fast float %3915, %3915
  %3919 = fmul fast float %3918, %3917
  %3920 = fsub fast float 1.000000e+00, %3919
  %3921 = fsub fast float 0x3FE3333340000000, %3496
  %3922 = fmul fast float %3921, 0x400AAAAAA0000000
  %3923 = call float @dx.op.unary.f32(i32 7, float %3922)  ; Saturate(value)
  %3924 = fmul fast float %3920, %3923
  %3925 = fmul fast float %3508, 0x3FEA2B8620000000
  %3926 = fmul fast float %3509, 0x3FEA2B8620000000
  %3927 = fmul fast float %3510, 0x3FEA2B8620000000
  %3928 = fadd fast float %3925, 0x3FC81DFBA0000000
  %3929 = fmul fast float %3928, %3508
  %3930 = fadd fast float %3929, 0x3F910E6020000000
  %3931 = fadd fast float %3926, 0x3FC81DFBA0000000
  %3932 = fmul fast float %3931, %3509
  %3933 = fadd fast float %3932, 0x3F910E6020000000
  %3934 = fadd fast float %3927, 0x3FC81DFBA0000000
  %3935 = fmul fast float %3934, %3510
  %3936 = fadd fast float %3935, 0x3F910E6020000000
  %3937 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  %3938 = call float @dx.op.unary.f32(i32 7, float %3933)  ; Saturate(value)
  %3939 = call float @dx.op.unary.f32(i32 7, float %3936)  ; Saturate(value)
  %3940 = fsub fast float %3937, %3508
  %3941 = fsub fast float %3938, %3509
  %3942 = fsub fast float %3939, %3510
  %3943 = fmul fast float %3940, %3913
  %3944 = fmul fast float %3943, %3924
  %3945 = fmul fast float %3941, %3913
  %3946 = fmul fast float %3945, %3924
  %3947 = fmul fast float %3942, %3913
  %3948 = fmul fast float %3947, %3924
  %3949 = fadd fast float %3944, %3508
  %3950 = fadd fast float %3946, %3509
  %3951 = fadd fast float %3948, %3510
  %3952 = fmul fast float %3443, %3443
  %3953 = fmul fast float %3952, %3952
  %3954 = fadd fast float %3909, 1.000000e+00
  %3955 = fsub fast float %3954, %3924
  %3956 = call float @dx.op.unary.f32(i32 7, float %3955)  ; Saturate(value)
  %3957 = call float @dx.op.dot3.f32(i32 55, float %80, float %82, float %84, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3958 = call float @dx.op.unary.f32(i32 7, float %3957)  ; Saturate(value)
  %3959 = fsub fast float 1.000000e+00, %3953
  %3960 = call float @dx.op.binary.f32(i32 36, float %3956, float %3959)  ; FMin(a,b)
  %3961 = call float @dx.op.unary.f32(i32 7, float %3912)  ; Saturate(value)
  %3962 = call float @dx.op.binary.f32(i32 35, float %3960, float %3961)  ; FMax(a,b)
  %3963 = fadd fast float %3958, 0xBFE4CCCCC0000000
  %3964 = fmul fast float %3963, 0x4006DB6DA0000000
  %3965 = call float @dx.op.unary.f32(i32 7, float %3964)  ; Saturate(value)
  %3966 = fmul fast float %3965, 2.000000e+00
  %3967 = fsub fast float 3.000000e+00, %3966
  %3968 = bitcast float %3493 to i32
  %3969 = ashr i32 %3968, 1
  %3970 = add nsw i32 %3969, 532487669
  %3971 = bitcast i32 %3970 to float
  %3972 = fsub fast float 1.000000e+00, %3971
  %3973 = bitcast float %3972 to i32
  %3974 = sub nsw i32 2129859010, %3973
  %3975 = bitcast i32 %3974 to float
  %3976 = fmul fast float %3975, 2.000000e+00
  %3977 = bitcast float %3494 to i32
  %3978 = ashr i32 %3977, 1
  %3979 = add nsw i32 %3978, 532487669
  %3980 = bitcast i32 %3979 to float
  %3981 = fsub fast float 1.000000e+00, %3980
  %3982 = bitcast float %3981 to i32
  %3983 = sub nsw i32 2129859010, %3982
  %3984 = bitcast i32 %3983 to float
  %3985 = fmul fast float %3984, 2.000000e+00
  %3986 = bitcast float %3495 to i32
  %3987 = ashr i32 %3986, 1
  %3988 = add nsw i32 %3987, 532487669
  %3989 = bitcast i32 %3988 to float
  %3990 = fsub fast float 1.000000e+00, %3989
  %3991 = bitcast float %3990 to i32
  %3992 = sub nsw i32 2129859010, %3991
  %3993 = bitcast i32 %3992 to float
  %3994 = fmul fast float %3993, 2.000000e+00
  %3995 = fsub fast float 0x4002A9FBE0000000, %3976
  %3996 = fadd fast float %3976, 0x3FD54FDF00000000
  %3997 = bitcast float %3996 to i32
  %3998 = sub nsw i32 2129859010, %3997
  %3999 = bitcast i32 %3998 to float
  %4000 = fmul fast float %3999, %3995
  %4001 = fmul fast float %4000, %4000
  %4002 = fsub fast float 0x4002A9FBE0000000, %3985
  %4003 = fadd fast float %3985, 0x3FD54FDF00000000
  %4004 = bitcast float %4003 to i32
  %4005 = sub nsw i32 2129859010, %4004
  %4006 = bitcast i32 %4005 to float
  %4007 = fmul fast float %4006, %4002
  %4008 = fmul fast float %4007, %4007
  %4009 = fsub fast float 0x4002A9FBE0000000, %3994
  %4010 = fadd fast float %3994, 0x3FD54FDF00000000
  %4011 = bitcast float %4010 to i32
  %4012 = sub nsw i32 2129859010, %4011
  %4013 = bitcast i32 %4012 to float
  %4014 = fmul fast float %4013, %4009
  %4015 = fmul fast float %4014, %4014
  %4016 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4001)  ; FMax(a,b)
  %4017 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4008)  ; FMax(a,b)
  %4018 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4015)  ; FMax(a,b)
  %4019 = fsub fast float 1.000000e+00, %3904
  %4020 = fadd fast float %4019, %3920
  %4021 = call float @dx.op.unary.f32(i32 7, float %4020)  ; Saturate(value)
  %4022 = fsub fast float 1.000000e+00, %3884
  %4023 = fmul fast float %3962, %4022
  %4024 = fmul fast float %3965, %3965
  %4025 = fmul fast float %4024, %4023
  %4026 = fmul fast float %4025, %3967
  %4027 = fmul fast float %4022, 0xBFE99999A0000000
  %4028 = fmul fast float %4027, %3913
  %4029 = fmul fast float %4028, %3924
  %4030 = fadd fast float %4029, 1.000000e+00
  %4031 = fadd fast float %3496, -1.000000e+00
  %4032 = fmul fast float %4030, %4031
  %4033 = fadd fast float %4032, 1.000000e+00
  %4034 = fsub fast float %4016, %3493
  %4035 = fsub fast float %4017, %3494
  %4036 = fsub fast float %4018, %3495
  %4037 = fmul fast float %4026, %4034
  %4038 = fmul fast float %4026, %4035
  %4039 = fmul fast float %4026, %4036
  %4040 = fadd fast float %4037, %3493
  %4041 = fadd fast float %4038, %3494
  %4042 = fadd fast float %4039, %3495
  %4043 = fsub fast float %80, %3472
  %4044 = fsub fast float %82, %3473
  %4045 = fsub fast float %84, %3474
  %4046 = fmul fast float %4026, %4043
  %4047 = fmul fast float %4026, %4044
  %4048 = fmul fast float %4026, %4045
  %4049 = fadd fast float %4046, %3472
  %4050 = fadd fast float %4047, %3473
  %4051 = fadd fast float %4048, %3474
  %4052 = fmul fast float %4026, %4021
  %4053 = call float @dx.op.unary.f32(i32 7, float %4033)  ; Saturate(value)
  %4054 = fsub fast float 1.000000e+00, %4053
  %4055 = fmul fast float %4052, %4054
  %4056 = fadd fast float %4055, %4053
  %4057 = fsub fast float 1.000000e+00, %3443
  %4058 = fmul fast float %4026, %4057
  %4059 = fadd fast float %4058, %3443
  %4060 = call float @dx.op.dot3.f32(i32 55, float %4049, float %4050, float %4051, float %4049, float %4050, float %4051)  ; Dot3(ax,ay,az,bx,by,bz)
  %4061 = call float @dx.op.unary.f32(i32 25, float %4060)  ; Rsqrt(value)
  %4062 = fmul fast float %4049, %4061
  %4063 = fmul fast float %4050, %4061
  %4064 = fmul fast float %4051, %4061
  br label %4065

; <label>:4065                                    ; preds = %3897, %3890
  %4066 = phi float [ %3896, %3890 ], [ %3903, %3897 ]
  %4067 = phi float [ %3895, %3890 ], [ %3901, %3897 ]
  %4068 = phi float [ %3894, %3890 ], [ %3899, %3897 ]
  %4069 = phi float [ %3893, %3890 ], [ %3902, %3897 ]
  %4070 = phi float [ %3892, %3890 ], [ %3900, %3897 ]
  %4071 = phi float [ %3891, %3890 ], [ %3898, %3897 ]
  %4072 = phi float [ %3508, %3890 ], [ %3949, %3897 ]
  %4073 = phi float [ %3509, %3890 ], [ %3950, %3897 ]
  %4074 = phi float [ %3510, %3890 ], [ %3951, %3897 ]
  %4075 = phi float [ %3472, %3890 ], [ %4062, %3897 ]
  %4076 = phi float [ %3473, %3890 ], [ %4063, %3897 ]
  %4077 = phi float [ %3474, %3890 ], [ %4064, %3897 ]
  %4078 = phi float [ %3493, %3890 ], [ %4040, %3897 ]
  %4079 = phi float [ %3494, %3890 ], [ %4041, %3897 ]
  %4080 = phi float [ %3495, %3890 ], [ %4042, %3897 ]
  %4081 = phi float [ %3496, %3890 ], [ %4056, %3897 ]
  %4082 = phi float [ %3443, %3890 ], [ %4059, %3897 ]
  %4083 = select i1 %174, float 0.000000e+00, float %4080
  %4084 = call float @dx.op.dot3.f32(i32 55, float %4075, float %4076, float %4077, float %4068, float %4067, float %4066)  ; Dot3(ax,ay,az,bx,by,bz)
  %4085 = call float @dx.op.unary.f32(i32 7, float %4084)  ; Saturate(value)
  %4086 = call float @dx.op.dot3.f32(i32 55, float %4071, float %4070, float %4069, float %4075, float %4076, float %4077)  ; Dot3(ax,ay,az,bx,by,bz)
  %4087 = fmul fast float %4086, 2.000000e+00
  %4088 = fmul fast float %4087, %4075
  %4089 = fmul fast float %4087, %4076
  %4090 = fmul fast float %4087, %4077
  %4091 = fsub fast float %4071, %4088
  %4092 = fsub fast float %4070, %4089
  %4093 = fsub fast float %4069, %4090
  %4094 = call float @dx.op.binary.f32(i32 36, float %4082, float 1.000000e+00)  ; FMin(a,b)
  %4095 = fsub fast float 1.000000e+00, %4082
  %4096 = bitcast float %4095 to i32
  %4097 = sub nsw i32 2129859010, %4096
  %4098 = bitcast i32 %4097 to float
  %4099 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %48)  ; FMax(a,b)
  %4100 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %4101 = fcmp fast oeq float %4100, 0.000000e+00
  %4102 = fcmp fast oeq float %4099, 0.000000e+00
  %4103 = or i1 %4102, %4101
  br i1 %4103, label %4133, label %4104

; <label>:4104                                    ; preds = %4065
  %4105 = fsub fast float -0.000000e+00, %51
  %4106 = fsub fast float -0.000000e+00, %49
  %4107 = call float @dx.op.unary.f32(i32 24, float %4100)  ; Sqrt(value)
  %4108 = fdiv fast float %4107, %4099
  %4109 = fcmp fast ogt float %4108, 0x3FFB6F8900000000
  %4110 = select i1 %4109, float 0x3FFB6F8900000000, float %4108
  %4111 = fmul fast float %4110, 0x3FE8A23460000000
  %4112 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4113 = call float @dx.op.binary.f32(i32 35, float %4110, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4114 = fmul fast float %4112, %4099
  %4115 = fmul fast float %4113, 0x3FF279A740000000
  %4116 = fadd fast float %4115, -1.000000e+00
  %4117 = call float @dx.op.dot3.f32(i32 55, float %4105, float %4106, float %50, float %4105, float %4106, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %4118 = call float @dx.op.unary.f32(i32 25, float %4117)  ; Rsqrt(value)
  %4119 = fmul fast float %4118, %4105
  %4120 = fmul fast float %4118, %4106
  %4121 = fmul fast float %4118, %50
  %4122 = fmul fast float %4116, %4116
  %4123 = fsub fast float 1.000000e+00, %4122
  %4124 = fmul fast float %4113, 0x40005F8BE0000000
  %4125 = fsub fast float 0x400C5BF8A0000000, %4124
  %4126 = fdiv fast float %4114, %4125
  %4127 = fmul fast float %4126, 0x3FEE31C3C0000000
  %4128 = fmul fast float %4127, %4123
  %4129 = fmul fast float %4113, 0x3FDACB7480000000
  %4130 = fadd fast float %4129, 0xBFD7347680000000
  %4131 = fmul fast float %4130, %4126
  %4132 = fmul fast float %4131, %4123
  br label %4133

; <label>:4133                                    ; preds = %4104, %4065
  %4134 = phi float [ %4119, %4104 ], [ 0.000000e+00, %4065 ]
  %4135 = phi float [ %4120, %4104 ], [ 0.000000e+00, %4065 ]
  %4136 = phi float [ %4121, %4104 ], [ 0.000000e+00, %4065 ]
  %4137 = phi float [ %4128, %4104 ], [ 0.000000e+00, %4065 ]
  %4138 = phi float [ %4132, %4104 ], [ 0.000000e+00, %4065 ]
  %4139 = call float @dx.op.dot3.f32(i32 55, float %4134, float %4135, float %4136, float %4075, float %4076, float %4077)  ; Dot3(ax,ay,az,bx,by,bz)
  %4140 = fmul fast float %4139, %4139
  %4141 = fmul fast float %4140, 0x3FEE471020000000
  %4142 = fadd fast float %4141, 0xBFD42F6020000000
  %4143 = fmul fast float %4099, 0x3FD20DD760000000
  %4144 = fmul fast float %4142, %4138
  %4145 = fmul fast float %4137, 0x3FDF454380000000
  %4146 = fmul fast float %4145, %4139
  %4147 = fadd fast float %4146, %4143
  %4148 = fadd fast float %4147, %4144
  %4149 = call float @dx.op.dot3.f32(i32 55, float %4134, float %4135, float %4136, float %4091, float %4092, float %4093)  ; Dot3(ax,ay,az,bx,by,bz)
  %4150 = fmul fast float %4149, 0x3FDF454380000000
  %4151 = fmul fast float %4149, %4149
  %4152 = fmul fast float %4151, 0x3FEE471020000000
  %4153 = fadd fast float %4152, 0xBFD42F6020000000
  %4154 = call float @dx.op.dot3.f32(i32 55, float %4099, float %4137, float %4138, float 0x3FD20DD760000000, float %4150, float %4153)  ; Dot3(ax,ay,az,bx,by,bz)
  %4155 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %44)  ; FMax(a,b)
  %4156 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float %45, float %46, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %4157 = fcmp fast oeq float %4156, 0.000000e+00
  %4158 = fcmp fast oeq float %4155, 0.000000e+00
  %4159 = or i1 %4158, %4157
  br i1 %4159, label %4189, label %4160

; <label>:4160                                    ; preds = %4133
  %4161 = fsub fast float -0.000000e+00, %47
  %4162 = fsub fast float -0.000000e+00, %45
  %4163 = call float @dx.op.unary.f32(i32 24, float %4156)  ; Sqrt(value)
  %4164 = fdiv fast float %4163, %4155
  %4165 = fcmp fast ogt float %4164, 0x3FFB6F8900000000
  %4166 = select i1 %4165, float 0x3FFB6F8900000000, float %4164
  %4167 = fmul fast float %4166, 0x3FE8A23460000000
  %4168 = call float @dx.op.unary.f32(i32 7, float %4167)  ; Saturate(value)
  %4169 = call float @dx.op.binary.f32(i32 35, float %4166, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4170 = fmul fast float %4168, %4155
  %4171 = fmul fast float %4169, 0x3FF279A740000000
  %4172 = fadd fast float %4171, -1.000000e+00
  %4173 = call float @dx.op.dot3.f32(i32 55, float %4161, float %4162, float %46, float %4161, float %4162, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %4174 = call float @dx.op.unary.f32(i32 25, float %4173)  ; Rsqrt(value)
  %4175 = fmul fast float %4174, %4161
  %4176 = fmul fast float %4174, %4162
  %4177 = fmul fast float %4174, %46
  %4178 = fmul fast float %4172, %4172
  %4179 = fsub fast float 1.000000e+00, %4178
  %4180 = fmul fast float %4169, 0x40005F8BE0000000
  %4181 = fsub fast float 0x400C5BF8A0000000, %4180
  %4182 = fdiv fast float %4170, %4181
  %4183 = fmul fast float %4182, 0x3FEE31C3C0000000
  %4184 = fmul fast float %4183, %4179
  %4185 = fmul fast float %4169, 0x3FDACB7480000000
  %4186 = fadd fast float %4185, 0xBFD7347680000000
  %4187 = fmul fast float %4186, %4182
  %4188 = fmul fast float %4187, %4179
  br label %4189

; <label>:4189                                    ; preds = %4160, %4133
  %4190 = phi float [ %4175, %4160 ], [ 0.000000e+00, %4133 ]
  %4191 = phi float [ %4176, %4160 ], [ 0.000000e+00, %4133 ]
  %4192 = phi float [ %4177, %4160 ], [ 0.000000e+00, %4133 ]
  %4193 = phi float [ %4184, %4160 ], [ 0.000000e+00, %4133 ]
  %4194 = phi float [ %4188, %4160 ], [ 0.000000e+00, %4133 ]
  %4195 = call float @dx.op.dot3.f32(i32 55, float %4190, float %4191, float %4192, float %4075, float %4076, float %4077)  ; Dot3(ax,ay,az,bx,by,bz)
  %4196 = fmul fast float %4195, %4195
  %4197 = fmul fast float %4196, 0x3FEE471020000000
  %4198 = fadd fast float %4197, 0xBFD42F6020000000
  %4199 = fmul fast float %4155, 0x3FD20DD760000000
  %4200 = fmul fast float %4198, %4194
  %4201 = fmul fast float %4193, 0x3FDF454380000000
  %4202 = fmul fast float %4201, %4195
  %4203 = fadd fast float %4202, %4199
  %4204 = fadd fast float %4203, %4200
  %4205 = call float @dx.op.dot3.f32(i32 55, float %4190, float %4191, float %4192, float %4091, float %4092, float %4093)  ; Dot3(ax,ay,az,bx,by,bz)
  %4206 = fmul fast float %4205, 0x3FDF454380000000
  %4207 = fmul fast float %4205, %4205
  %4208 = fmul fast float %4207, 0x3FEE471020000000
  %4209 = fadd fast float %4208, 0xBFD42F6020000000
  %4210 = call float @dx.op.dot3.f32(i32 55, float %4155, float %4193, float %4194, float 0x3FD20DD760000000, float %4206, float %4209)  ; Dot3(ax,ay,az,bx,by,bz)
  %4211 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %40)  ; FMax(a,b)
  %4212 = call float @dx.op.dot3.f32(i32 55, float %41, float %42, float %43, float %41, float %42, float %43)  ; Dot3(ax,ay,az,bx,by,bz)
  %4213 = fcmp fast oeq float %4212, 0.000000e+00
  %4214 = fcmp fast oeq float %4211, 0.000000e+00
  %4215 = or i1 %4214, %4213
  br i1 %4215, label %4245, label %4216

; <label>:4216                                    ; preds = %4189
  %4217 = fsub fast float -0.000000e+00, %43
  %4218 = fsub fast float -0.000000e+00, %41
  %4219 = call float @dx.op.unary.f32(i32 24, float %4212)  ; Sqrt(value)
  %4220 = fdiv fast float %4219, %4211
  %4221 = fcmp fast ogt float %4220, 0x3FFB6F8900000000
  %4222 = select i1 %4221, float 0x3FFB6F8900000000, float %4220
  %4223 = fmul fast float %4222, 0x3FE8A23460000000
  %4224 = call float @dx.op.unary.f32(i32 7, float %4223)  ; Saturate(value)
  %4225 = call float @dx.op.binary.f32(i32 35, float %4222, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4226 = fmul fast float %4224, %4211
  %4227 = fmul fast float %4225, 0x3FF279A740000000
  %4228 = fadd fast float %4227, -1.000000e+00
  %4229 = call float @dx.op.dot3.f32(i32 55, float %4217, float %4218, float %42, float %4217, float %4218, float %42)  ; Dot3(ax,ay,az,bx,by,bz)
  %4230 = call float @dx.op.unary.f32(i32 25, float %4229)  ; Rsqrt(value)
  %4231 = fmul fast float %4230, %4217
  %4232 = fmul fast float %4230, %4218
  %4233 = fmul fast float %4230, %42
  %4234 = fmul fast float %4228, %4228
  %4235 = fsub fast float 1.000000e+00, %4234
  %4236 = fmul fast float %4225, 0x40005F8BE0000000
  %4237 = fsub fast float 0x400C5BF8A0000000, %4236
  %4238 = fdiv fast float %4226, %4237
  %4239 = fmul fast float %4238, 0x3FEE31C3C0000000
  %4240 = fmul fast float %4239, %4235
  %4241 = fmul fast float %4225, 0x3FDACB7480000000
  %4242 = fadd fast float %4241, 0xBFD7347680000000
  %4243 = fmul fast float %4242, %4238
  %4244 = fmul fast float %4243, %4235
  br label %4245

; <label>:4245                                    ; preds = %4216, %4189
  %4246 = phi float [ %4231, %4216 ], [ 0.000000e+00, %4189 ]
  %4247 = phi float [ %4232, %4216 ], [ 0.000000e+00, %4189 ]
  %4248 = phi float [ %4233, %4216 ], [ 0.000000e+00, %4189 ]
  %4249 = phi float [ %4240, %4216 ], [ 0.000000e+00, %4189 ]
  %4250 = phi float [ %4244, %4216 ], [ 0.000000e+00, %4189 ]
  %4251 = call float @dx.op.dot3.f32(i32 55, float %4246, float %4247, float %4248, float %4075, float %4076, float %4077)  ; Dot3(ax,ay,az,bx,by,bz)
  %4252 = fmul fast float %4251, %4251
  %4253 = fmul fast float %4252, 0x3FEE471020000000
  %4254 = fadd fast float %4253, 0xBFD42F6020000000
  %4255 = fmul fast float %4211, 0x3FD20DD760000000
  %4256 = fmul fast float %4254, %4250
  %4257 = fmul fast float %4249, 0x3FDF454380000000
  %4258 = fmul fast float %4257, %4251
  %4259 = fadd fast float %4258, %4255
  %4260 = fadd fast float %4259, %4256
  %4261 = call float @dx.op.dot3.f32(i32 55, float %4246, float %4247, float %4248, float %4091, float %4092, float %4093)  ; Dot3(ax,ay,az,bx,by,bz)
  %4262 = fmul fast float %4261, 0x3FDF454380000000
  %4263 = fmul fast float %4261, %4261
  %4264 = fmul fast float %4263, 0x3FEE471020000000
  %4265 = fadd fast float %4264, 0xBFD42F6020000000
  %4266 = call float @dx.op.dot3.f32(i32 55, float %4211, float %4249, float %4250, float 0x3FD20DD760000000, float %4262, float %4265)  ; Dot3(ax,ay,az,bx,by,bz)
  %4267 = call float @dx.op.binary.f32(i32 35, float %4148, float 0.000000e+00)  ; FMax(a,b)
  %4268 = call float @dx.op.binary.f32(i32 35, float %4204, float 0.000000e+00)  ; FMax(a,b)
  %4269 = call float @dx.op.binary.f32(i32 35, float %4260, float 0.000000e+00)  ; FMax(a,b)
  %4270 = call float @dx.op.binary.f32(i32 35, float %4154, float 0.000000e+00)  ; FMax(a,b)
  %4271 = call float @dx.op.binary.f32(i32 35, float %4210, float 0.000000e+00)  ; FMax(a,b)
  %4272 = call float @dx.op.binary.f32(i32 35, float %4266, float 0.000000e+00)  ; FMax(a,b)
  %4273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4274 = extractvalue %dx.types.CBufRet.f32 %4273, 0
  %4275 = call float @dx.op.binary.f32(i32 36, float %4072, float %4274)  ; FMin(a,b)
  %4276 = fsub fast float 1.000000e+00, %4094
  %4277 = fmul fast float %4275, %4276
  %4278 = fsub fast float 1.000000e+00, %4277
  %4279 = bitcast float %4278 to i32
  %4280 = sub nsw i32 2129859010, %4279
  %4281 = bitcast i32 %4280 to float
  %4282 = call float @dx.op.binary.f32(i32 36, float %4073, float %4274)  ; FMin(a,b)
  %4283 = fmul fast float %4282, %4276
  %4284 = fsub fast float 1.000000e+00, %4283
  %4285 = bitcast float %4284 to i32
  %4286 = sub nsw i32 2129859010, %4285
  %4287 = bitcast i32 %4286 to float
  %4288 = call float @dx.op.binary.f32(i32 36, float %4074, float %4274)  ; FMin(a,b)
  %4289 = fmul fast float %4288, %4276
  %4290 = fsub fast float 1.000000e+00, %4289
  %4291 = bitcast float %4290 to i32
  %4292 = sub nsw i32 2129859010, %4291
  %4293 = bitcast i32 %4292 to float
  %4294 = fmul fast float %4267, %4094
  %4295 = fmul fast float %4294, %4281
  %4296 = fmul fast float %4268, %4094
  %4297 = fmul fast float %4296, %4287
  %4298 = fmul fast float %4269, %4094
  %4299 = fmul fast float %4298, %4293
  %4300 = call float @dx.op.binary.f32(i32 36, float %4078, float %4274)  ; FMin(a,b)
  %4301 = fmul fast float %4300, %4276
  %4302 = fsub fast float 1.000000e+00, %4301
  %4303 = bitcast float %4302 to i32
  %4304 = sub nsw i32 2129859010, %4303
  %4305 = bitcast i32 %4304 to float
  %4306 = call float @dx.op.binary.f32(i32 36, float %4079, float %4274)  ; FMin(a,b)
  %4307 = fmul fast float %4306, %4276
  %4308 = fsub fast float 1.000000e+00, %4307
  %4309 = bitcast float %4308 to i32
  %4310 = sub nsw i32 2129859010, %4309
  %4311 = bitcast i32 %4310 to float
  %4312 = call float @dx.op.binary.f32(i32 36, float %4083, float %4274)  ; FMin(a,b)
  %4313 = fmul fast float %4312, %4276
  %4314 = fsub fast float 1.000000e+00, %4313
  %4315 = bitcast float %4314 to i32
  %4316 = sub nsw i32 2129859010, %4315
  %4317 = bitcast i32 %4316 to float
  %4318 = fmul fast float %4270, %4094
  %4319 = fmul fast float %4318, %4305
  %4320 = fmul fast float %4271, %4094
  %4321 = fmul fast float %4320, %4311
  %4322 = fmul fast float %4272, %4094
  %4323 = fmul fast float %4322, %4317
  %4324 = call float @dx.op.dot3.f32(i32 55, float %4295, float %4297, float %4299, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4325 = select i1 %174, float 0.000000e+00, float %4295
  %4326 = select i1 %174, float %4324, float %4297
  %4327 = select i1 %174, float 0.000000e+00, float %4299
  %4328 = call float @dx.op.dot3.f32(i32 55, float %4319, float %4321, float %4323, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4329 = select i1 %174, float 0.000000e+00, float %4319
  %4330 = select i1 %174, float %4328, float %4321
  %4331 = select i1 %174, float 0.000000e+00, float %4323
  %4332 = fmul fast float %4085, 9.843750e-01
  %4333 = fmul fast float %4081, 9.843750e-01
  %4334 = fadd fast float %4332, 7.812500e-03
  %4335 = fadd fast float %4333, 7.812500e-03
  %4336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %4334, float %4335, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4337 = extractvalue %dx.types.ResRet.f32 %4336, 2
  %4338 = extractvalue %dx.types.ResRet.f32 %4336, 3
  %4339 = fmul fast float %4337, %4078
  %4340 = fmul fast float %4337, %4079
  %4341 = fmul fast float %4337, %4083
  %4342 = fadd fast float %4339, %4338
  %4343 = fadd fast float %4340, %4338
  %4344 = fadd fast float %4341, %4338
  %4345 = call float @dx.op.binary.f32(i32 35, float %4343, float %4344)  ; FMax(a,b)
  %4346 = call float @dx.op.binary.f32(i32 35, float %4342, float %4345)  ; FMax(a,b)
  %4347 = fsub fast float 1.000000e+00, %4346
  %4348 = fmul fast float %4347, %4325
  %4349 = fmul fast float %4347, %4326
  %4350 = fmul fast float %4347, %4327
  %4351 = fmul fast float %4342, %4329
  %4352 = fmul fast float %4343, %4330
  %4353 = fmul fast float %4344, %4331
  %4354 = fmul fast float %4348, %879
  %4355 = fmul fast float %4349, %879
  %4356 = fmul fast float %4350, %879
  %4357 = fadd fast float %4351, %3438
  %4358 = fmul fast float %4357, %879
  %4359 = fadd fast float %4352, %3439
  %4360 = fmul fast float %4359, %879
  %4361 = fadd fast float %4353, %3440
  %4362 = fmul fast float %4361, %879
  %4363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4364 = extractvalue %dx.types.CBufRet.f32 %4363, 3
  %4365 = fcmp fast oeq float %4364, 0.000000e+00
  br i1 %4365, label %4524, label %4366

; <label>:4366                                    ; preds = %4245
  %4367 = extractvalue %dx.types.CBufRet.f32 %4363, 0
  %4368 = extractvalue %dx.types.CBufRet.f32 %4363, 1
  %4369 = extractvalue %dx.types.CBufRet.f32 %4363, 2
  %4370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.f32 %4370, 0
  %4372 = extractvalue %dx.types.CBufRet.f32 %4370, 1
  %4373 = extractvalue %dx.types.CBufRet.f32 %4370, 2
  %4374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4375 = extractvalue %dx.types.CBufRet.f32 %4374, 0
  %4376 = extractvalue %dx.types.CBufRet.f32 %4374, 1
  %4377 = call float @dx.op.dot3.f32(i32 55, float %4371, float %4372, float %4373, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4378 = select i1 %174, float %4375, float %4371
  %4379 = select i1 %174, float %4377, float %4372
  %4380 = select i1 %174, float %4376, float %4373
  %4381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4382 = extractvalue %dx.types.CBufRet.f32 %4381, 1
  %4383 = fcmp fast une float %4382, 0.000000e+00
  br i1 %4383, label %4384, label %4401

; <label>:4384                                    ; preds = %4366
  %4385 = fptoui float %71 to i32
  %4386 = fptoui float %72 to i32
  %4387 = lshr i32 %4385, 4
  %4388 = lshr i32 %4386, 4
  %4389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4390 = extractvalue %dx.types.CBufRet.f32 %4389, 0
  %4391 = fptoui float %4390 to i32
  %4392 = add i32 %4391, 15
  %4393 = lshr i32 %4392, 4
  %4394 = mul i32 %4393, %4388
  %4395 = add i32 %4394, %4387
  %4396 = shl i32 %4395, 3
  %4397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4396, i32 undef)  ; BufferLoad(srv,index,wot)
  %4398 = extractvalue %dx.types.ResRet.i32 %4397, 0
  %4399 = and i32 %4398, -268435456
  %4400 = icmp eq i32 %4399, -1342177280
  br i1 %4400, label %4411, label %4401

; <label>:4401                                    ; preds = %4384, %4366
  %4402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4403 = extractvalue %dx.types.CBufRet.f32 %4402, 2
  %4404 = extractvalue %dx.types.CBufRet.f32 %4402, 3
  %4405 = fmul fast float %4403, %71
  %4406 = fmul fast float %4404, %72
  %4407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %27, float %4405, float %4406, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4408 = extractvalue %dx.types.ResRet.f32 %4407, 0
  %4409 = extractvalue %dx.types.ResRet.f32 %4407, 1
  %4410 = extractvalue %dx.types.ResRet.f32 %4407, 2
  br label %4411

; <label>:4411                                    ; preds = %4401, %4384
  %4412 = phi float [ %4408, %4401 ], [ 0.000000e+00, %4384 ]
  %4413 = phi float [ %4409, %4401 ], [ 0.000000e+00, %4384 ]
  %4414 = phi float [ %4410, %4401 ], [ 0.000000e+00, %4384 ]
  %4415 = call float @dx.op.binary.f32(i32 36, float %4413, float %4414)  ; FMin(a,b)
  %4416 = call float @dx.op.binary.f32(i32 36, float %4412, float %4415)  ; FMin(a,b)
  %4417 = fcmp fast ogt float %4416, 0.000000e+00
  br i1 %4417, label %4418, label %4524, !dx.controlflow.hints !71

; <label>:4418                                    ; preds = %4411
  %4419 = fmul fast float %4412, %4378
  %4420 = fmul fast float %4413, %4379
  %4421 = fmul fast float %4414, %4380
  %4422 = fsub fast float %4367, %4071
  %4423 = fsub fast float %4368, %4070
  %4424 = fsub fast float %4369, %4069
  %4425 = call float @dx.op.dot3.f32(i32 55, float %4422, float %4423, float %4424, float %4422, float %4423, float %4424)  ; Dot3(ax,ay,az,bx,by,bz)
  %4426 = call float @dx.op.unary.f32(i32 25, float %4425)  ; Rsqrt(value)
  %4427 = fmul fast float %4426, %4422
  %4428 = fmul fast float %4426, %4423
  %4429 = fmul fast float %4426, %4424
  %4430 = call float @dx.op.dot3.f32(i32 55, float %4367, float %4368, float %4369, float %4075, float %4076, float %4077)  ; Dot3(ax,ay,az,bx,by,bz)
  %4431 = call float @dx.op.dot3.f32(i32 55, float %4068, float %4067, float %4066, float %4427, float %4428, float %4429)  ; Dot3(ax,ay,az,bx,by,bz)
  %4432 = call float @dx.op.unary.f32(i32 7, float %4430)  ; Saturate(value)
  %4433 = fmul fast float %4432, %4432
  %4434 = fmul fast float %4433, %4098
  %4435 = call float @dx.op.unary.f32(i32 7, float %4434)  ; Saturate(value)
  %4436 = fmul fast float %4435, %4432
  %4437 = call float @dx.op.dot3.f32(i32 55, float %4075, float %4076, float %4077, float %4427, float %4428, float %4429)  ; Dot3(ax,ay,az,bx,by,bz)
  %4438 = fmul fast float %4437, %4437
  %4439 = call float @dx.op.unary.f32(i32 6, float %4430)  ; FAbs(value)
  %4440 = fsub fast float 1.000000e+00, %4081
  %4441 = call float @dx.op.binary.f32(i32 35, float %4440, float 0x3F847AE140000000)  ; FMax(a,b)
  %4442 = fmul fast float %4441, %4441
  %4443 = fmul fast float %4442, %4442
  %4444 = fsub fast float 1.000000e+00, %4443
  %4445 = fmul fast float %4085, %4085
  %4446 = fmul fast float %4445, %4444
  %4447 = fadd fast float %4446, %4443
  %4448 = bitcast float %4447 to i32
  %4449 = ashr i32 %4448, 1
  %4450 = add nsw i32 %4449, 532487669
  %4451 = bitcast i32 %4450 to float
  %4452 = fadd fast float %4451, %4085
  %4453 = fmul fast float %4443, %4438
  %4454 = fsub fast float 1.000000e+00, %4438
  %4455 = fadd fast float %4454, %4453
  %4456 = fmul fast float %4439, %4439
  %4457 = fmul fast float %4456, %4444
  %4458 = fadd fast float %4457, %4443
  %4459 = bitcast float %4458 to i32
  %4460 = ashr i32 %4459, 1
  %4461 = add nsw i32 %4460, 532487669
  %4462 = bitcast i32 %4461 to float
  %4463 = fadd fast float %4462, %4439
  %4464 = fmul fast float %4455, %4455
  %4465 = fmul fast float %4464, %4452
  %4466 = fmul fast float %4465, %4463
  %4467 = fdiv fast float 0x3FF0A00000000000, %4466
  %4468 = fmul fast float %4467, %4443
  %4469 = call float @dx.op.unary.f32(i32 6, float %4431)  ; FAbs(value)
  %4470 = fsub fast float 1.000000e+00, %4469
  %4471 = bitcast float %4470 to i32
  %4472 = sitofp i32 %4471 to float
  %4473 = fmul fast float %4472, 5.000000e+00
  %4474 = fadd fast float %4473, 0xC1EFBF8940000000
  %4475 = fptosi float %4474 to i32
  %4476 = bitcast i32 %4475 to float
  %4477 = fsub fast float 1.000000e+00, %4078
  %4478 = fsub fast float 1.000000e+00, %4079
  %4479 = fsub fast float 1.000000e+00, %4083
  %4480 = fmul fast float %4476, %4477
  %4481 = fmul fast float %4476, %4478
  %4482 = fmul fast float %4476, %4479
  %4483 = fadd fast float %4480, %4078
  %4484 = fadd fast float %4481, %4079
  %4485 = fadd fast float %4482, %4083
  %4486 = fmul fast float %4430, 9.843750e-01
  %4487 = fadd fast float %4486, 7.812500e-03
  %4488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %4487, float %4335, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4489 = extractvalue %dx.types.ResRet.f32 %4488, 2
  %4490 = extractvalue %dx.types.ResRet.f32 %4488, 3
  %4491 = fmul fast float %4489, %4078
  %4492 = fmul fast float %4489, %4079
  %4493 = fmul fast float %4489, %4083
  %4494 = fadd fast float %4491, %4490
  %4495 = fadd fast float %4492, %4490
  %4496 = fadd fast float %4493, %4490
  %4497 = call float @dx.op.binary.f32(i32 35, float %4495, float %4496)  ; FMax(a,b)
  %4498 = call float @dx.op.binary.f32(i32 35, float %4494, float %4497)  ; FMax(a,b)
  %4499 = fsub fast float 1.000000e+00, %4498
  %4500 = fmul fast float %4436, %4419
  %4501 = fmul fast float %4500, %4499
  %4502 = fmul fast float %4436, %4420
  %4503 = fmul fast float %4502, %4499
  %4504 = fmul fast float %4436, %4421
  %4505 = fmul fast float %4504, %4499
  %4506 = fmul fast float %4500, %4468
  %4507 = fmul fast float %4506, %4483
  %4508 = fmul fast float %4502, %4468
  %4509 = fmul fast float %4508, %4484
  %4510 = fmul fast float %4504, %4468
  %4511 = fmul fast float %4510, %4485
  %4512 = fadd fast float %4501, %4348
  %4513 = fmul fast float %4512, %879
  %4514 = fadd fast float %4503, %4349
  %4515 = fmul fast float %4514, %879
  %4516 = fadd fast float %4505, %4350
  %4517 = fmul fast float %4516, %879
  %4518 = fadd fast float %4507, %4357
  %4519 = fmul fast float %4518, %879
  %4520 = fadd fast float %4509, %4359
  %4521 = fmul fast float %4520, %879
  %4522 = fadd fast float %4511, %4361
  %4523 = fmul fast float %4522, %879
  br label %4524

; <label>:4524                                    ; preds = %4418, %4411, %4245
  %4525 = phi float [ %4358, %4245 ], [ %4358, %4411 ], [ %4519, %4418 ]
  %4526 = phi float [ %4360, %4245 ], [ %4360, %4411 ], [ %4521, %4418 ]
  %4527 = phi float [ %4362, %4245 ], [ %4362, %4411 ], [ %4523, %4418 ]
  %4528 = phi float [ %4354, %4245 ], [ %4354, %4411 ], [ %4513, %4418 ]
  %4529 = phi float [ %4355, %4245 ], [ %4355, %4411 ], [ %4515, %4418 ]
  %4530 = phi float [ %4356, %4245 ], [ %4356, %4411 ], [ %4517, %4418 ]
  %4531 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4532 = extractvalue %dx.types.CBufRet.i32 %4531, 0
  %4533 = icmp eq i32 %4532, 0
  br i1 %4533, label %4899, label %4534

; <label>:4534                                    ; preds = %4524
  %4535 = fptoui float %71 to i32
  %4536 = fptoui float %72 to i32
  %4537 = lshr i32 %4535, 4
  %4538 = lshr i32 %4536, 4
  %4539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4540 = extractvalue %dx.types.CBufRet.i32 %4539, 0
  %4541 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4538, i32 %4540, i32 %4537)  ; UMad(a,b,c)
  %4542 = add nsw i32 %4532, -1
  %4543 = call i32 @dx.op.binary.i32(i32 37, i32 %4542, i32 0)  ; IMax(a,b)
  %4544 = call float @dx.op.binary.f32(i32 35, float %66, float 0.000000e+00)  ; FMax(a,b)
  %4545 = fptoui float %4544 to i32
  %4546 = lshr i32 %4545, 5
  %4547 = call i32 @dx.op.binary.i32(i32 40, i32 %4546, i32 8191)  ; UMin(a,b)
  %4548 = shl i32 %4547, 2
  %4549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4548, i32 undef)  ; BufferLoad(srv,index,wot)
  %4550 = extractvalue %dx.types.ResRet.i32 %4549, 0
  %4551 = lshr i32 %4550, 16
  %4552 = and i32 %4550, 65535
  %4553 = lshr i32 %4550, 21
  %4554 = lshr i32 %4552, 5
  %4555 = call i32 @dx.op.binary.i32(i32 40, i32 %4554, i32 %4543)  ; UMin(a,b)
  %4556 = icmp ugt i32 %4553, %4555
  br i1 %4556, label %4899, label %4557

; <label>:4557                                    ; preds = %4534
  br label %4558

; <label>:4558                                    ; preds = %4889, %4557
  %4559 = phi i32 [ %4896, %4889 ], [ %4553, %4557 ]
  %4560 = phi float [ %4890, %4889 ], [ %4525, %4557 ]
  %4561 = phi float [ %4891, %4889 ], [ %4526, %4557 ]
  %4562 = phi float [ %4892, %4889 ], [ %4527, %4557 ]
  %4563 = phi float [ %4893, %4889 ], [ %4528, %4557 ]
  %4564 = phi float [ %4894, %4889 ], [ %4529, %4557 ]
  %4565 = phi float [ %4895, %4889 ], [ %4530, %4557 ]
  %4566 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4567 = extractvalue %dx.types.CBufRet.i32 %4566, 0
  %4568 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4541, i32 %4567, i32 %4559)  ; UMad(a,b,c)
  %4569 = shl i32 %4568, 2
  %4570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4569, i32 undef)  ; BufferLoad(srv,index,wot)
  %4571 = extractvalue %dx.types.ResRet.i32 %4570, 0
  %4572 = shl i32 %4559, 5
  %4573 = sub nsw i32 %4551, %4572
  %4574 = call i32 @dx.op.binary.i32(i32 37, i32 %4573, i32 0)  ; IMax(a,b)
  %4575 = call i32 @dx.op.binary.i32(i32 38, i32 %4574, i32 31)  ; IMin(a,b)
  %4576 = sub nsw i32 1, %4551
  %4577 = add nsw i32 %4576, %4552
  %4578 = call i32 @dx.op.binary.i32(i32 37, i32 %4577, i32 0)  ; IMax(a,b)
  %4579 = call i32 @dx.op.binary.i32(i32 38, i32 %4578, i32 32)  ; IMin(a,b)
  %4580 = and i32 %4579, 31
  %4581 = shl i32 -1, %4580
  %4582 = xor i32 %4581, -1
  %4583 = and i32 %4575, 31
  %4584 = shl i32 %4582, %4583
  %4585 = icmp eq i32 %4579, 32
  %4586 = select i1 %4585, i32 -1, i32 %4584
  %4587 = and i32 %4586, %4571
  %4588 = icmp eq i32 %4587, 0
  br i1 %4588, label %4889, label %4589

; <label>:4589                                    ; preds = %4558
  br label %4590

; <label>:4590                                    ; preds = %4670, %4589
  %4591 = phi i32 [ %4602, %4670 ], [ %4587, %4589 ]
  %4592 = phi float [ %4671, %4670 ], [ %4560, %4589 ]
  %4593 = phi float [ %4672, %4670 ], [ %4561, %4589 ]
  %4594 = phi float [ %4673, %4670 ], [ %4562, %4589 ]
  %4595 = phi float [ %4674, %4670 ], [ %4563, %4589 ]
  %4596 = phi float [ %4675, %4670 ], [ %4564, %4589 ]
  %4597 = phi float [ %4676, %4670 ], [ %4565, %4589 ]
  %4598 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4591)  ; FirstbitLo(value)
  %4599 = add i32 %4598, %4572
  %4600 = and i32 %4598, 31
  %4601 = shl i32 1, %4600
  %4602 = xor i32 %4601, %4591
  %4603 = mul i32 %4599, 112
  %4604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4603, i32 undef)  ; BufferLoad(srv,index,wot)
  %4605 = extractvalue %dx.types.ResRet.f32 %4604, 0
  %4606 = extractvalue %dx.types.ResRet.f32 %4604, 1
  %4607 = extractvalue %dx.types.ResRet.f32 %4604, 2
  %4608 = or i32 %4603, 12
  %4609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4608, i32 undef)  ; BufferLoad(srv,index,wot)
  %4610 = extractvalue %dx.types.ResRet.f32 %4609, 0
  %4611 = add i32 %4603, 44
  %4612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4611, i32 undef)  ; BufferLoad(srv,index,wot)
  %4613 = extractvalue %dx.types.ResRet.f32 %4612, 0
  %4614 = add i32 %4603, 48
  %4615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4614, i32 undef)  ; BufferLoad(srv,index,wot)
  %4616 = extractvalue %dx.types.ResRet.f32 %4615, 0
  %4617 = extractvalue %dx.types.ResRet.f32 %4615, 1
  %4618 = extractvalue %dx.types.ResRet.f32 %4615, 2
  %4619 = add i32 %4603, 80
  %4620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4619, i32 undef)  ; BufferLoad(srv,index,wot)
  %4621 = extractvalue %dx.types.ResRet.f32 %4620, 1
  %4622 = extractvalue %dx.types.ResRet.f32 %4620, 2
  %4623 = call float @dx.op.dot3.f32(i32 55, float %4605, float %4606, float %4607, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4624 = select i1 %174, float %4621, float %4605
  %4625 = select i1 %174, float %4623, float %4606
  %4626 = select i1 %174, float %4622, float %4607
  %4627 = fsub fast float %4616, %130
  %4628 = fsub fast float %4617, %131
  %4629 = fsub fast float %4618, %132
  %4630 = call float @dx.op.dot3.f32(i32 55, float %4627, float %4628, float %4629, float %4627, float %4628, float %4629)  ; Dot3(ax,ay,az,bx,by,bz)
  %4631 = call float @dx.op.unary.f32(i32 24, float %4630)  ; Sqrt(value)
  %4632 = fdiv fast float 1.000000e+00, %4631
  %4633 = fmul fast float %4632, %4627
  %4634 = fmul fast float %4632, %4628
  %4635 = fmul fast float %4632, %4629
  %4636 = fadd fast float %4631, %4610
  %4637 = fdiv fast float 1.000000e+00, %4636
  %4638 = fmul float %4613, %4637
  %4639 = fmul float %4638, %4638
  %4640 = call float @dx.op.unary.f32(i32 7, float %4639)  ; Saturate(value)
  %4641 = and i32 %4601, %4587
  %4642 = icmp eq i32 %4641, 0
  br i1 %4642, label %4665, label %4643, !dx.controlflow.hints !72

; <label>:4643                                    ; preds = %4590
  %4644 = lshr i32 %4535, 5
  %4645 = lshr i32 %4536, 5
  %4646 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %4644, i32 %4645, i32 %4599, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4647 = extractvalue %dx.types.ResRet.i32 %4646, 0
  %4648 = and i32 %4647, 3
  %4649 = icmp eq i32 %4648, 0
  %4650 = select i1 %4649, float 1.000000e+00, float 0.000000e+00
  %4651 = icmp eq i32 %4648, 3
  br i1 %4651, label %4652, label %4665

; <label>:4652                                    ; preds = %4643
  %4653 = lshr i32 %4647, 10
  %4654 = and i32 %4653, 8160
  %4655 = and i32 %4536, 31
  %4656 = or i32 %4654, %4655
  %4657 = lshr i32 %4647, 1
  %4658 = and i32 %4657, 16352
  %4659 = and i32 %4535, 31
  %4660 = or i32 %4658, %4659
  %4661 = lshr i32 %4647, 23
  %4662 = and i32 %4661, 255
  %4663 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %4660, i32 %4656, i32 %4662, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4664 = extractvalue %dx.types.ResRet.f32 %4663, 0
  br label %4665

; <label>:4665                                    ; preds = %4652, %4643, %4590
  %4666 = phi float [ %4664, %4652 ], [ %4650, %4643 ], [ 0.000000e+00, %4590 ]
  %4667 = call float @dx.op.binary.f32(i32 36, float %4666, float %4666)  ; FMin(a,b)
  %4668 = call float @dx.op.binary.f32(i32 36, float %4666, float %4667)  ; FMin(a,b)
  %4669 = fcmp fast ogt float %4668, 0.000000e+00
  br i1 %4669, label %4678, label %4670, !dx.controlflow.hints !73

; <label>:4670                                    ; preds = %4739, %4665
  %4671 = phi float [ %4592, %4665 ], [ %4885, %4739 ]
  %4672 = phi float [ %4593, %4665 ], [ %4886, %4739 ]
  %4673 = phi float [ %4594, %4665 ], [ %4887, %4739 ]
  %4674 = phi float [ %4595, %4665 ], [ %4876, %4739 ]
  %4675 = phi float [ %4596, %4665 ], [ %4877, %4739 ]
  %4676 = phi float [ %4597, %4665 ], [ %4878, %4739 ]
  %4677 = icmp eq i32 %4591, %4601
  br i1 %4677, label %4888, label %4590

; <label>:4678                                    ; preds = %4665
  %4679 = fmul fast float %4666, %4624
  %4680 = fmul fast float %4666, %4625
  %4681 = fmul fast float %4666, %4626
  %4682 = fsub fast float %4618, %3871
  %4683 = fcmp fast ogt float %4682, 0.000000e+00
  %4684 = fsub fast float %132, %3871
  %4685 = fcmp fast ogt float %4684, 0.000000e+00
  %4686 = xor i1 %4685, %4683
  %4687 = fsub fast float %3871, %4618
  %4688 = fmul fast float %4687, 2.000000e+00
  %4689 = fadd fast float %4688, %4618
  %4690 = select i1 %4686, float %4618, float %4689
  %4691 = fsub fast float %4690, %132
  %4692 = call float @dx.op.dot3.f32(i32 55, float %4627, float %4628, float %4691, float %4627, float %4628, float %4691)  ; Dot3(ax,ay,az,bx,by,bz)
  %4693 = call float @dx.op.unary.f32(i32 25, float %4692)  ; Rsqrt(value)
  %4694 = fmul fast float %4693, %4627
  %4695 = fmul fast float %4693, %4628
  %4696 = fmul fast float %4693, %4691
  %4697 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3879)  ; Dot3(ax,ay,az,bx,by,bz)
  %4698 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4694, float %4695, float %4696)  ; Dot3(ax,ay,az,bx,by,bz)
  %4699 = fdiv fast float 1.000000e+00, %4698
  %4700 = fmul fast float %4699, %4697
  %4701 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4684, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4702 = fcmp fast ogt float %4701, 0.000000e+00
  %4703 = fcmp fast olt float %4701, 0.000000e+00
  %4704 = zext i1 %4702 to i32
  %4705 = zext i1 %4703 to i32
  %4706 = sub nsw i32 %4704, %4705
  %4707 = sitofp i32 %4706 to float
  %4708 = fsub fast float %4690, %3871
  %4709 = call float @dx.op.dot3.f32(i32 55, float %4627, float %4628, float %4708, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4710 = fcmp fast ogt float %4709, 0.000000e+00
  %4711 = fcmp fast olt float %4709, 0.000000e+00
  %4712 = zext i1 %4710 to i32
  %4713 = zext i1 %4711 to i32
  %4714 = sub nsw i32 %4712, %4713
  %4715 = sitofp i32 %4714 to float
  %4716 = fcmp fast une float %4707, %4715
  br i1 %4716, label %4717, label %4727

; <label>:4717                                    ; preds = %4678
  %4718 = fmul fast float %4700, %4696
  %4719 = fmul fast float %4700, %4695
  %4720 = fmul fast float %4700, %4694
  %4721 = fmul fast float %4720, %4720
  %4722 = fmul fast float %4719, %4719
  %4723 = fadd fast float %4721, %4722
  %4724 = fmul fast float %4718, %4718
  %4725 = fadd fast float %4723, %4724
  %4726 = call float @dx.op.unary.f32(i32 24, float %4725)  ; Sqrt(value)
  br label %4739

; <label>:4727                                    ; preds = %4678
  %4728 = icmp slt i32 %4706, 0
  br i1 %4728, label %4729, label %4739

; <label>:4729                                    ; preds = %4727
  %4730 = fsub fast float %130, %4616
  %4731 = fsub fast float %131, %4617
  %4732 = fsub fast float %132, %4690
  %4733 = fmul fast float %4730, %4730
  %4734 = fmul fast float %4731, %4731
  %4735 = fadd fast float %4733, %4734
  %4736 = fmul fast float %4732, %4732
  %4737 = fadd fast float %4735, %4736
  %4738 = call float @dx.op.unary.f32(i32 24, float %4737)  ; Sqrt(value)
  br label %4739

; <label>:4739                                    ; preds = %4729, %4727, %4717
  %4740 = phi float [ %4726, %4717 ], [ %4738, %4729 ], [ 0.000000e+00, %4727 ]
  %4741 = and i1 %4685, %4683
  %4742 = fsub fast float -0.000000e+00, %4740
  %4743 = select i1 %4741, float -0.000000e+00, float %4742
  %4744 = fmul fast float %3872, 0x3FF7154760000000
  %4745 = fmul fast float %4744, %4743
  %4746 = fmul fast float %3873, 0x3FF7154760000000
  %4747 = fmul fast float %4746, %4743
  %4748 = fmul fast float %3874, 0x3FF7154760000000
  %4749 = fmul fast float %4748, %4743
  %4750 = call float @dx.op.unary.f32(i32 21, float %4745)  ; Exp(value)
  %4751 = call float @dx.op.unary.f32(i32 21, float %4747)  ; Exp(value)
  %4752 = call float @dx.op.unary.f32(i32 21, float %4749)  ; Exp(value)
  %4753 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4754 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4755 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4756 = fmul fast float %4679, %4753
  %4757 = fmul fast float %4680, %4754
  %4758 = fmul fast float %4681, %4755
  %4759 = fsub fast float %4633, %4071
  %4760 = fsub fast float %4634, %4070
  %4761 = fsub fast float %4635, %4069
  %4762 = call float @dx.op.dot3.f32(i32 55, float %4759, float %4760, float %4761, float %4759, float %4760, float %4761)  ; Dot3(ax,ay,az,bx,by,bz)
  %4763 = call float @dx.op.unary.f32(i32 25, float %4762)  ; Rsqrt(value)
  %4764 = fmul fast float %4763, %4759
  %4765 = fmul fast float %4763, %4760
  %4766 = fmul fast float %4763, %4761
  %4767 = call float @dx.op.dot3.f32(i32 55, float %4633, float %4634, float %4635, float %4075, float %4076, float %4077)  ; Dot3(ax,ay,az,bx,by,bz)
  %4768 = call float @dx.op.dot3.f32(i32 55, float %4068, float %4067, float %4066, float %4764, float %4765, float %4766)  ; Dot3(ax,ay,az,bx,by,bz)
  %4769 = call float @dx.op.unary.f32(i32 7, float %4767)  ; Saturate(value)
  %4770 = fmul fast float %4769, %4640
  %4771 = fmul fast float %4769, %4769
  %4772 = fmul fast float %4771, %4098
  %4773 = call float @dx.op.unary.f32(i32 7, float %4772)  ; Saturate(value)
  %4774 = fmul fast float %4770, %4773
  %4775 = bitcast float %4630 to i32
  %4776 = ashr i32 %4775, 1
  %4777 = sub nsw i32 1597463007, %4776
  %4778 = bitcast i32 %4777 to float
  %4779 = fmul fast float %4778, %4627
  %4780 = fmul fast float %4778, %4628
  %4781 = fmul fast float %4778, %4629
  %4782 = fsub fast float %4779, %4071
  %4783 = fsub fast float %4780, %4070
  %4784 = fsub fast float %4781, %4069
  %4785 = call float @dx.op.dot3.f32(i32 55, float %4782, float %4783, float %4784, float %4782, float %4783, float %4784)  ; Dot3(ax,ay,az,bx,by,bz)
  %4786 = call float @dx.op.unary.f32(i32 25, float %4785)  ; Rsqrt(value)
  %4787 = fmul fast float %4782, %4786
  %4788 = fmul fast float %4783, %4786
  %4789 = fmul fast float %4784, %4786
  %4790 = call float @dx.op.dot3.f32(i32 55, float %4075, float %4076, float %4077, float %4787, float %4788, float %4789)  ; Dot3(ax,ay,az,bx,by,bz)
  %4791 = fmul fast float %4790, %4790
  %4792 = call float @dx.op.unary.f32(i32 6, float %4767)  ; FAbs(value)
  %4793 = fsub fast float 1.000000e+00, %4081
  %4794 = call float @dx.op.binary.f32(i32 35, float %4793, float 0x3F847AE140000000)  ; FMax(a,b)
  %4795 = fmul fast float %4794, %4794
  %4796 = fmul fast float %4795, %4795
  %4797 = fsub fast float 1.000000e+00, %4796
  %4798 = fmul fast float %4085, %4085
  %4799 = fmul fast float %4798, %4797
  %4800 = fadd fast float %4799, %4796
  %4801 = bitcast float %4800 to i32
  %4802 = ashr i32 %4801, 1
  %4803 = add nsw i32 %4802, 532487669
  %4804 = bitcast i32 %4803 to float
  %4805 = fadd fast float %4804, %4085
  %4806 = fmul fast float %4796, %4791
  %4807 = fsub fast float 1.000000e+00, %4791
  %4808 = fadd fast float %4807, %4806
  %4809 = fmul fast float %4792, %4792
  %4810 = fmul fast float %4809, %4797
  %4811 = fadd fast float %4810, %4796
  %4812 = bitcast float %4811 to i32
  %4813 = ashr i32 %4812, 1
  %4814 = add nsw i32 %4813, 532487669
  %4815 = bitcast i32 %4814 to float
  %4816 = fadd fast float %4815, %4792
  %4817 = fmul fast float %4808, %4808
  %4818 = fmul fast float %4817, %4805
  %4819 = fmul fast float %4818, %4816
  %4820 = fdiv fast float 1.000000e+00, %4819
  %4821 = bitcast float %4796 to i32
  %4822 = sitofp i32 %4821 to float
  %4823 = fmul fast float %4822, 0x3FE7F73180000000
  %4824 = fadd fast float %4823, 0x41AFE27C40000000
  %4825 = fptosi float %4824 to i32
  %4826 = bitcast i32 %4825 to float
  %4827 = fmul fast float %4613, 0x3FD80E9D60000000
  %4828 = fmul fast float %4827, %4778
  %4829 = fadd fast float %4826, %4828
  %4830 = bitcast float %4829 to i32
  %4831 = sub nsw i32 2129859010, %4830
  %4832 = bitcast i32 %4831 to float
  %4833 = fmul fast float %4796, %4820
  %4834 = fmul fast float %4833, %4826
  %4835 = fmul fast float %4834, %4832
  %4836 = call float @dx.op.unary.f32(i32 6, float %4768)  ; FAbs(value)
  %4837 = fsub fast float 1.000000e+00, %4836
  %4838 = bitcast float %4837 to i32
  %4839 = sitofp i32 %4838 to float
  %4840 = fmul fast float %4839, 5.000000e+00
  %4841 = fadd fast float %4840, 0xC1EFBF8940000000
  %4842 = fptosi float %4841 to i32
  %4843 = bitcast i32 %4842 to float
  %4844 = fsub fast float 1.000000e+00, %4078
  %4845 = fsub fast float 1.000000e+00, %4079
  %4846 = fsub fast float 1.000000e+00, %4083
  %4847 = fmul fast float %4843, %4844
  %4848 = fmul fast float %4843, %4845
  %4849 = fmul fast float %4843, %4846
  %4850 = fadd fast float %4847, %4078
  %4851 = fadd fast float %4848, %4079
  %4852 = fadd fast float %4849, %4083
  %4853 = fmul fast float %4767, 9.843750e-01
  %4854 = fadd fast float %4853, 7.812500e-03
  %4855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %4854, float %4335, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4856 = extractvalue %dx.types.ResRet.f32 %4855, 2
  %4857 = extractvalue %dx.types.ResRet.f32 %4855, 3
  %4858 = fmul fast float %4856, %4078
  %4859 = fmul fast float %4856, %4079
  %4860 = fmul fast float %4856, %4083
  %4861 = fadd fast float %4858, %4857
  %4862 = fadd fast float %4859, %4857
  %4863 = fadd fast float %4860, %4857
  %4864 = call float @dx.op.binary.f32(i32 35, float %4862, float %4863)  ; FMax(a,b)
  %4865 = call float @dx.op.binary.f32(i32 35, float %4861, float %4864)  ; FMax(a,b)
  %4866 = fsub fast float 1.000000e+00, %4865
  %4867 = fmul fast float %4756, %879
  %4868 = fmul fast float %4867, %4774
  %4869 = fmul fast float %4868, %4866
  %4870 = fmul fast float %4757, %879
  %4871 = fmul fast float %4870, %4774
  %4872 = fmul fast float %4871, %4866
  %4873 = fmul fast float %4758, %879
  %4874 = fmul fast float %4873, %4774
  %4875 = fmul fast float %4874, %4866
  %4876 = fadd fast float %4869, %4595
  %4877 = fadd fast float %4872, %4596
  %4878 = fadd fast float %4875, %4597
  %4879 = fmul fast float %4868, %4850
  %4880 = fmul fast float %4879, %4835
  %4881 = fmul fast float %4871, %4851
  %4882 = fmul fast float %4881, %4835
  %4883 = fmul fast float %4874, %4852
  %4884 = fmul fast float %4883, %4835
  %4885 = fadd fast float %4880, %4592
  %4886 = fadd fast float %4882, %4593
  %4887 = fadd fast float %4884, %4594
  br label %4670

; <label>:4888                                    ; preds = %4670
  br label %4889

; <label>:4889                                    ; preds = %4888, %4558
  %4890 = phi float [ %4560, %4558 ], [ %4671, %4888 ]
  %4891 = phi float [ %4561, %4558 ], [ %4672, %4888 ]
  %4892 = phi float [ %4562, %4558 ], [ %4673, %4888 ]
  %4893 = phi float [ %4563, %4558 ], [ %4674, %4888 ]
  %4894 = phi float [ %4564, %4558 ], [ %4675, %4888 ]
  %4895 = phi float [ %4565, %4558 ], [ %4676, %4888 ]
  %4896 = add i32 %4559, 1
  %4897 = icmp ugt i32 %4896, %4555
  br i1 %4897, label %4898, label %4558

; <label>:4898                                    ; preds = %4889
  br label %4899

; <label>:4899                                    ; preds = %4898, %4534, %4524
  %4900 = phi float [ %4525, %4524 ], [ %4525, %4534 ], [ %4890, %4898 ]
  %4901 = phi float [ %4526, %4524 ], [ %4526, %4534 ], [ %4891, %4898 ]
  %4902 = phi float [ %4527, %4524 ], [ %4527, %4534 ], [ %4892, %4898 ]
  %4903 = phi float [ %4528, %4524 ], [ %4528, %4534 ], [ %4893, %4898 ]
  %4904 = phi float [ %4529, %4524 ], [ %4529, %4534 ], [ %4894, %4898 ]
  %4905 = phi float [ %4530, %4524 ], [ %4530, %4534 ], [ %4895, %4898 ]
  %4906 = call float @dx.op.unary.f32(i32 24, float %4072)  ; Sqrt(value)
  %4907 = call float @dx.op.unary.f32(i32 24, float %4073)  ; Sqrt(value)
  %4908 = call float @dx.op.unary.f32(i32 24, float %4074)  ; Sqrt(value)
  %4909 = fmul fast float %4906, %4903
  %4910 = fmul fast float %4907, %4904
  %4911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4912 = extractvalue %dx.types.CBufRet.f32 %4911, 0
  br i1 %174, label %4913, label %4934

; <label>:4913                                    ; preds = %4899
  %4914 = fadd fast float %4905, %3446
  %4915 = fmul fast float %4914, %3444
  %4916 = fsub fast float 1.000000e+00, %3444
  %4917 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4919 = extractvalue %dx.types.CBufRet.f32 %4918, 3
  %4920 = fmul fast float %4919, %4917
  %4921 = fadd fast float %4920, %4915
  %4922 = fsub fast float 1.000000e+00, %4085
  %4923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4924 = extractvalue %dx.types.CBufRet.f32 %4923, 0
  %4925 = fmul fast float %4924, %4922
  %4926 = fsub fast float %4921, %4925
  %4927 = fadd fast float %4910, %4909
  %4928 = fmul fast float %4912, %4927
  %4929 = extractvalue %dx.types.CBufRet.f32 %4918, 1
  %4930 = fsub fast float %4926, %4929
  %4931 = extractvalue %dx.types.CBufRet.f32 %4918, 2
  %4932 = fmul fast float %4930, %4931
  %4933 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  br label %4950

; <label>:4934                                    ; preds = %4899
  %4935 = fmul fast float %4908, %4905
  %4936 = fmul fast float %4912, %4909
  %4937 = fmul fast float %4912, %4910
  %4938 = fmul fast float %4935, %4912
  %4939 = add i32 %32, 356
  %4940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4939, i32 undef)  ; BufferLoad(srv,index,wot)
  %4941 = extractvalue %dx.types.ResRet.i32 %4940, 0
  %4942 = and i32 %4941, 32
  %4943 = icmp eq i32 %4942, 0
  br i1 %4943, label %4950, label %4944

; <label>:4944                                    ; preds = %4934
  %4945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4946 = extractvalue %dx.types.CBufRet.f32 %4945, 0
  %4947 = fmul fast float %4946, 0x3FE99999A0000000
  %4948 = fadd fast float %4946, %4936
  %4949 = fadd fast float %4947, %4938
  br label %4950

; <label>:4950                                    ; preds = %4944, %4934, %4913
  %4951 = phi float [ %4928, %4913 ], [ %4948, %4944 ], [ %4936, %4934 ]
  %4952 = phi float [ %4933, %4913 ], [ %4937, %4944 ], [ %4937, %4934 ]
  %4953 = phi float [ 1.000000e+00, %4913 ], [ %4949, %4944 ], [ %4938, %4934 ]
  %4954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4955 = extractvalue %dx.types.CBufRet.f32 %4954, 0
  %4956 = fmul fast float %4955, %4901
  %4957 = fmul fast float %4955, %4902
  %4958 = fadd fast float %4901, %4900
  %4959 = select i1 %174, float %4958, float %4900
  %4960 = fmul float %4959, %4955
  %4961 = select i1 %174, float 0.000000e+00, float %4956
  %4962 = select i1 %174, float 0.000000e+00, float %4957
  %4963 = fmul fast float %4951, %4906
  %4964 = fmul fast float %4952, %4907
  %4965 = fmul fast float %4953, %4908
  %4966 = fadd fast float %4960, %4963
  %4967 = fadd fast float %4961, %4964
  %4968 = fadd fast float %4962, %4965
  %4969 = select i1 %174, float %4952, float %4967
  %4970 = select i1 %174, float %4953, float %4968
  %4971 = call float @dx.op.binary.f32(i32 36, float %4966, float 3.225500e+04)  ; FMin(a,b)
  %4972 = call float @dx.op.binary.f32(i32 36, float %4969, float 3.225500e+04)  ; FMin(a,b)
  %4973 = call float @dx.op.binary.f32(i32 36, float %4970, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4971)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4972)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4973)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

