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
; shader hash: 85bc7008cce9c1b9e4531750d81aacca
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
  br i1 %410, label %980, label %411

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
  %856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %857 = extractvalue %dx.types.ResRet.i32 %856, 0
  %858 = and i32 %857, 1024
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %890, label %860

; <label>:860                                     ; preds = %852
  %861 = add i32 %32, 152
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %861, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = and i32 %863, 255
  %865 = uitofp i32 %864 to float
  %866 = fmul fast float %865, 0x3F70101020000000
  %867 = lshr i32 %863, 8
  %868 = and i32 %867, 255
  %869 = uitofp i32 %868 to float
  %870 = fmul fast float %869, 0x3F70101020000000
  %871 = lshr i32 %863, 16
  %872 = and i32 %871, 255
  %873 = uitofp i32 %872 to float
  %874 = fmul fast float %873, 0x3F70101020000000
  %875 = fmul fast float %866, %866
  %876 = fmul fast float %870, %870
  %877 = fmul fast float %874, %874
  %878 = add i32 %32, 456
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = add i32 %880, 0
  %882 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %881, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %883 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %882, %dx.types.Handle %68, float %510, float %511, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %884 = extractvalue %dx.types.ResRet.f32 %883, 0
  %885 = extractvalue %dx.types.ResRet.f32 %883, 1
  %886 = extractvalue %dx.types.ResRet.f32 %883, 2
  %887 = fmul fast float %875, %884
  %888 = fmul fast float %876, %885
  %889 = fmul fast float %877, %886
  br label %890

; <label>:890                                     ; preds = %860, %852
  %891 = phi float [ %887, %860 ], [ 0.000000e+00, %852 ]
  %892 = phi float [ %888, %860 ], [ 0.000000e+00, %852 ]
  %893 = phi float [ %889, %860 ], [ 0.000000e+00, %852 ]
  %894 = fcmp fast ogt float %891, 0.000000e+00
  %895 = fcmp fast ogt float %892, 0.000000e+00
  %896 = fcmp fast ogt float %893, 0.000000e+00
  %897 = call float @dx.op.unary.f32(i32 23, float %891)  ; Log(value)
  %898 = call float @dx.op.unary.f32(i32 23, float %892)  ; Log(value)
  %899 = call float @dx.op.unary.f32(i32 23, float %893)  ; Log(value)
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = lshr i32 %901, 7
  %903 = and i32 %902, 32752
  %904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %903)  ; LegacyF16ToF32(value)
  %905 = fmul fast float %897, 0xBFE62E4300000000
  %906 = fmul fast float %905, %904
  %907 = fmul fast float %898, 0xBFE62E4300000000
  %908 = fmul fast float %907, %904
  %909 = fmul fast float %899, 0xBFE62E4300000000
  %910 = fmul fast float %909, %904
  %911 = select i1 %894, float %906, float 1.270000e+02
  %912 = select i1 %895, float %908, float 1.270000e+02
  %913 = select i1 %896, float %910, float 1.270000e+02
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = and i32 %915, 10240
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %962, label %918

; <label>:918                                     ; preds = %890
  %919 = add i32 %32, 472
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = add i32 %921, 0
  %923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %923, %dx.types.Handle %68, float %510, float %511, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %925 = extractvalue %dx.types.ResRet.f32 %924, 1
  %926 = extractvalue %dx.types.ResRet.f32 %924, 3
  %927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %928 = extractvalue %dx.types.ResRet.i32 %927, 0
  %929 = and i32 %928, 1048576
  %930 = icmp ne i32 %929, 0
  %931 = and i32 %928, 8192
  %932 = icmp eq i32 %931, 0
  br i1 %932, label %948, label %933

; <label>:933                                     ; preds = %918
  %934 = extractvalue %dx.types.ResRet.f32 %924, 2
  %935 = select i1 %930, float %934, float %925
  %936 = extractvalue %dx.types.ResRet.f32 %924, 0
  %937 = select i1 %930, float %936, float %925
  %938 = add i32 %32, 96
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = lshr i32 %940, 16
  %942 = and i32 %941, 255
  %943 = uitofp i32 %942 to float
  %944 = fmul fast float %943, 0x3F80101020000000
  %945 = fmul fast float %944, %937
  %946 = fmul fast float %944, %925
  %947 = fmul fast float %944, %935
  br label %948

; <label>:948                                     ; preds = %933, %918
  %949 = phi float [ %945, %933 ], [ 0.000000e+00, %918 ]
  %950 = phi float [ %946, %933 ], [ 0.000000e+00, %918 ]
  %951 = phi float [ %947, %933 ], [ 0.000000e+00, %918 ]
  %952 = and i32 %928, 2048
  %953 = icmp eq i32 %952, 0
  br i1 %953, label %962, label %954

; <label>:954                                     ; preds = %948
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = shl i32 %956, 4
  %958 = and i32 %957, 32752
  %959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %958)  ; LegacyF16ToF32(value)
  %960 = fmul fast float %959, %926
  %961 = call float @dx.op.binary.f32(i32 35, float %960, float 0x3F70101020000000)  ; FMax(a,b)
  br label %962

; <label>:962                                     ; preds = %954, %948, %890
  %963 = phi float [ %949, %954 ], [ %949, %948 ], [ 0.000000e+00, %890 ]
  %964 = phi float [ %950, %954 ], [ %950, %948 ], [ 0.000000e+00, %890 ]
  %965 = phi float [ %951, %954 ], [ %951, %948 ], [ 0.000000e+00, %890 ]
  %966 = phi float [ %961, %954 ], [ 0x3F70101020000000, %948 ], [ 0x3F70101020000000, %890 ]
  %967 = add i32 %32, 96
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = and i32 %969, 255
  %971 = uitofp i32 %970 to float
  %972 = lshr i32 %969, 8
  %973 = and i32 %972, 255
  %974 = uitofp i32 %973 to float
  %975 = call float @dx.op.dot3.f32(i32 55, float %725, float %726, float %727, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %976 = fmul fast float %974, %975
  %977 = fadd fast float %976, %971
  %978 = fmul fast float %977, 0x3F70101020000000
  %979 = call float @dx.op.unary.f32(i32 7, float %978)  ; Saturate(value)
  br label %980

; <label>:980                                     ; preds = %962, %396
  %981 = phi float [ 0.000000e+00, %396 ], [ %806, %962 ]
  %982 = phi float [ 0.000000e+00, %396 ], [ %807, %962 ]
  %983 = phi float [ 0.000000e+00, %396 ], [ %963, %962 ]
  %984 = phi float [ 0.000000e+00, %396 ], [ %964, %962 ]
  %985 = phi float [ 0.000000e+00, %396 ], [ %965, %962 ]
  %986 = phi float [ 0.000000e+00, %396 ], [ %853, %962 ]
  %987 = phi float [ 0.000000e+00, %396 ], [ %854, %962 ]
  %988 = phi float [ 0.000000e+00, %396 ], [ %855, %962 ]
  %989 = phi float [ 0.000000e+00, %396 ], [ %911, %962 ]
  %990 = phi float [ 0.000000e+00, %396 ], [ %912, %962 ]
  %991 = phi float [ 0.000000e+00, %396 ], [ %913, %962 ]
  %992 = phi float [ 0.000000e+00, %396 ], [ %725, %962 ]
  %993 = phi float [ 0.000000e+00, %396 ], [ %726, %962 ]
  %994 = phi float [ 0.000000e+00, %396 ], [ %727, %962 ]
  %995 = phi float [ 0.000000e+00, %396 ], [ %711, %962 ]
  %996 = phi float [ 0.000000e+00, %396 ], [ 1.000000e+00, %962 ]
  %997 = phi float [ 0.000000e+00, %396 ], [ %805, %962 ]
  %998 = phi float [ 0.000000e+00, %396 ], [ %808, %962 ]
  %999 = phi float [ 0.000000e+00, %396 ], [ %966, %962 ]
  %1000 = phi float [ 0.000000e+00, %396 ], [ %979, %962 ]
  br i1 %347, label %2038, label %1001

; <label>:1001                                    ; preds = %980
  %1002 = icmp ult i32 %402, 2
  %1003 = add i32 %32, 40
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = add i32 %32, 44
  %1007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.i32 %1007, 0
  %1009 = or i32 %1008, %1005
  %1010 = icmp eq i32 %1009, 0
  br i1 %1010, label %2038, label %1011

; <label>:1011                                    ; preds = %1001
  %1012 = and i32 %1005, 262144
  %1013 = icmp ne i32 %1012, 0
  %1014 = select i1 %1013, float %34, float 1.000000e+00
  %1015 = select i1 %1013, float %35, float 0.000000e+00
  %1016 = select i1 %1013, float %36, float 0.000000e+00
  %1017 = select i1 %1013, float %37, float 1.000000e+00
  %1018 = select i1 %1013, float %38, float %59
  %1019 = select i1 %1013, float %39, float %60
  %1020 = add i32 %32, 300
  %1021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.i32 %1021, 0
  %1023 = lshr i32 %1022, 16
  %1024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1023)  ; LegacyF16ToF32(value)
  %1025 = fmul fast float %1024, 0x3F50624DE0000000
  %1026 = add i32 %32, 104
  %1027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1026, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.i32 %1027, 0
  %1029 = lshr i32 %1028, 16
  %1030 = and i32 %1029, 255
  %1031 = lshr i32 %1028, 24
  %1032 = add i32 %32, 308
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = and i32 %1034, 65535
  %1036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1035)  ; LegacyF16ToF32(value)
  %1037 = lshr i32 %1034, 16
  %1038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1037)  ; LegacyF16ToF32(value)
  %1039 = add i32 %32, 48
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = lshr i32 %1041, 22
  %1043 = shl nuw nsw i32 %1042, 5
  %1044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1043)  ; LegacyF16ToF32(value)
  %1045 = shl i32 %1041, 4
  %1046 = and i32 %1045, 32752
  %1047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1046)  ; LegacyF16ToF32(value)
  %1048 = lshr i32 %1041, 7
  %1049 = and i32 %1048, 32752
  %1050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1049)  ; LegacyF16ToF32(value)
  %1051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1052 = extractvalue %dx.types.CBufRet.f32 %1051, 3
  %1053 = fmul fast float %1052, 1.000000e+03
  %1054 = fmul fast float %257, %1053
  %1055 = call float @dx.op.unary.f32(i32 22, float %1054)  ; Frc(value)
  %1056 = fadd fast float %1055, %247
  %1057 = fmul fast float %258, %1053
  %1058 = call float @dx.op.unary.f32(i32 22, float %1057)  ; Frc(value)
  %1059 = fadd fast float %1058, %249
  %1060 = fmul fast float %1025, %1053
  %1061 = call float @dx.op.unary.f32(i32 22, float %1060)  ; Frc(value)
  %1062 = fmul fast float %1061, 0x401921FB60000000
  %1063 = fadd fast float %1062, %1044
  %1064 = call float @dx.op.unary.f32(i32 13, float %1063)  ; Sin(value)
  %1065 = call float @dx.op.unary.f32(i32 12, float %1063)  ; Cos(value)
  %1066 = fsub fast float -0.000000e+00, %1064
  %1067 = fadd fast float %1018, -5.000000e-01
  %1068 = fadd fast float %1019, -5.000000e-01
  %1069 = fmul fast float %1036, %1067
  %1070 = fmul fast float %1038, %1068
  %1071 = fadd fast float %1069, 5.000000e-01
  %1072 = fadd fast float %1070, 5.000000e-01
  %1073 = fmul fast float %1047, %1071
  %1074 = fmul fast float %1050, %1072
  %1075 = fmul fast float %1065, %1073
  %1076 = call float @dx.op.tertiary.f32(i32 46, float %1066, float %1074, float %1075)  ; FMad(a,b,c)
  %1077 = fmul fast float %1064, %1073
  %1078 = call float @dx.op.tertiary.f32(i32 46, float %1065, float %1074, float %1077)  ; FMad(a,b,c)
  %1079 = fadd fast float %1056, %1076
  %1080 = fadd fast float %1059, %1078
  %1081 = icmp ugt i32 %1030, 1
  %1082 = icmp ugt i32 %1028, 33554431
  %1083 = or i1 %1082, %1081
  br i1 %1083, label %1084, label %1109

; <label>:1084                                    ; preds = %1011
  %1085 = add i32 %32, 244
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = lshr i32 %1087, 16
  %1089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1088)  ; LegacyF16ToF32(value)
  %1090 = fmul fast float %1052, %1089
  %1091 = call float @dx.op.unary.f32(i32 22, float %1090)  ; Frc(value)
  %1092 = mul nuw nsw i32 %1030, %1031
  %1093 = uitofp i32 %1092 to float
  %1094 = fmul fast float %1091, %1093
  %1095 = call float @dx.op.unary.f32(i32 27, float %1094)  ; Round_ni(value)
  %1096 = fptoui float %1095 to i32
  %1097 = urem i32 %1096, %1030
  %1098 = udiv i32 %1096, %1031
  %1099 = call float @dx.op.unary.f32(i32 22, float %1079)  ; Frc(value)
  %1100 = call float @dx.op.unary.f32(i32 22, float %1080)  ; Frc(value)
  %1101 = uitofp i32 %1097 to float
  %1102 = uitofp i32 %1098 to float
  %1103 = fadd fast float %1099, %1101
  %1104 = fadd fast float %1100, %1102
  %1105 = uitofp i32 %1030 to float
  %1106 = uitofp i32 %1031 to float
  %1107 = fdiv fast float %1103, %1105
  %1108 = fdiv fast float %1104, %1106
  br label %1109

; <label>:1109                                    ; preds = %1084, %1011
  %1110 = phi float [ %1107, %1084 ], [ %1079, %1011 ]
  %1111 = phi float [ %1108, %1084 ], [ %1080, %1011 ]
  %1112 = and i32 %1005, 16777216
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1223, label %1114

; <label>:1114                                    ; preds = %1109
  %1115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1115, 0
  %1117 = extractvalue %dx.types.CBufRet.f32 %1115, 1
  %1118 = extractvalue %dx.types.CBufRet.f32 %1115, 2
  %1119 = fadd fast float %1116, %130
  %1120 = fadd fast float %1117, %131
  %1121 = fadd fast float %1118, %132
  %1122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1123 = extractvalue %dx.types.CBufRet.f32 %1122, 0
  %1124 = call float @dx.op.unary.f32(i32 7, float %1123)  ; Saturate(value)
  %1125 = icmp eq i32 %33, 65535
  br i1 %1125, label %1220, label %1126

; <label>:1126                                    ; preds = %1114
  %1127 = lshr i32 %33, 1
  %1128 = shl i32 %1127, 2
  %1129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1128, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.i32 %1129, 0
  %1131 = and i32 %33, 1
  %1132 = icmp ne i32 %1131, 0
  %1133 = lshr i32 %1130, 16
  %1134 = and i32 %1130, 65535
  %1135 = select i1 %1132, i32 %1133, i32 %1134
  %1136 = icmp eq i32 %1135, 65535
  br i1 %1136, label %1216, label %1137

; <label>:1137                                    ; preds = %1126
  %1138 = mul nuw nsw i32 %1135, 40
  %1139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.ResRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.ResRet.f32 %1139, 2
  %1143 = add nuw nsw i32 %1138, 12
  %1144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.f32 %1144, 0
  %1146 = extractvalue %dx.types.ResRet.f32 %1144, 1
  %1147 = extractvalue %dx.types.ResRet.f32 %1144, 2
  %1148 = add nuw nsw i32 %1138, 24
  %1149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.ResRet.f32 %1149, 1
  %1152 = extractvalue %dx.types.ResRet.f32 %1149, 2
  %1153 = add nuw nsw i32 %1138, 36
  %1154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1153, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.f32 %1154, 0
  %1156 = fsub fast float %1119, %1140
  %1157 = fsub fast float %1120, %1141
  %1158 = fsub fast float %1121, %1142
  %1159 = fmul fast float %1155, %1156
  %1160 = fmul fast float %1155, %1157
  %1161 = fmul fast float %1155, %1158
  %1162 = call float @dx.op.unary.f32(i32 27, float %1159)  ; Round_ni(value)
  %1163 = call float @dx.op.unary.f32(i32 27, float %1160)  ; Round_ni(value)
  %1164 = call float @dx.op.unary.f32(i32 27, float %1161)  ; Round_ni(value)
  %1165 = fadd fast float %1162, 5.000000e-01
  %1166 = fadd fast float %1163, 5.000000e-01
  %1167 = fadd fast float %1164, 5.000000e-01
  %1168 = fmul fast float %1165, %1145
  %1169 = fmul fast float %1166, %1146
  %1170 = fmul fast float %1167, %1147
  %1171 = shl i32 %33, 2
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = add i32 %1173, 0
  %1175 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1174, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1176 = call float @dx.op.unary.f32(i32 22, float %1168)  ; Frc(value)
  %1177 = call float @dx.op.unary.f32(i32 22, float %1169)  ; Frc(value)
  %1178 = call float @dx.op.unary.f32(i32 22, float %1170)  ; Frc(value)
  %1179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1175, %dx.types.Handle %27, float %1176, float %1177, float %1178, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1180 = extractvalue %dx.types.ResRet.f32 %1179, 0
  %1181 = extractvalue %dx.types.ResRet.f32 %1179, 1
  %1182 = extractvalue %dx.types.ResRet.f32 %1179, 2
  %1183 = fmul fast float %1180, 1.023000e+03
  %1184 = fmul fast float %1181, 1.023000e+03
  %1185 = fmul fast float %1182, 1.023000e+03
  %1186 = fadd fast float %1183, 5.000000e-01
  %1187 = fadd fast float %1184, 5.000000e-01
  %1188 = fadd fast float %1185, 5.000000e-01
  %1189 = call float @dx.op.unary.f32(i32 27, float %1186)  ; Round_ni(value)
  %1190 = call float @dx.op.unary.f32(i32 27, float %1187)  ; Round_ni(value)
  %1191 = call float @dx.op.unary.f32(i32 27, float %1188)  ; Round_ni(value)
  %1192 = fsub fast float %1159, %1162
  %1193 = fsub fast float %1160, %1163
  %1194 = fsub fast float %1161, %1164
  %1195 = fmul fast float %1192, 7.500000e-01
  %1196 = fmul fast float %1193, 7.500000e-01
  %1197 = fmul fast float %1194, 7.500000e-01
  %1198 = fadd fast float %1162, 1.250000e-01
  %1199 = fadd fast float %1198, %1195
  %1200 = fadd fast float %1199, %1189
  %1201 = fadd fast float %1163, 1.250000e-01
  %1202 = fadd fast float %1201, %1196
  %1203 = fadd fast float %1202, %1190
  %1204 = fadd fast float %1164, 1.250000e-01
  %1205 = fadd fast float %1204, %1197
  %1206 = fadd fast float %1205, %1191
  %1207 = fmul fast float %1200, %1150
  %1208 = fmul fast float %1203, %1151
  %1209 = fmul fast float %1206, %1152
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = add i32 %1211, 0
  %1213 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1212, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1213, %dx.types.Handle %25, float %1207, float %1208, float %1209, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1215 = extractvalue %dx.types.ResRet.f32 %1214, 0
  br label %1216

; <label>:1216                                    ; preds = %1137, %1126
  %1217 = phi float [ %1215, %1137 ], [ -1.000000e+00, %1126 ]
  %1218 = fadd fast float %1217, %1124
  %1219 = call float @dx.op.unary.f32(i32 7, float %1218)  ; Saturate(value)
  br label %1220

; <label>:1220                                    ; preds = %1216, %1114
  %1221 = phi float [ %1219, %1216 ], [ %1124, %1114 ]
  %1222 = fmul fast float %1221, %399
  br label %1223

; <label>:1223                                    ; preds = %1220, %1109
  %1224 = phi float [ %1222, %1220 ], [ %399, %1109 ]
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = and i32 %1226, 256
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1275, label %1229

; <label>:1229                                    ; preds = %1223
  %1230 = add i32 %32, 428
  %1231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.i32 %1231, 0
  %1233 = add i32 %1232, 0
  %1234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1233, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1235 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1234, %dx.types.Handle %68, float %1110, float %1111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = add i32 %32, 116
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = shl i32 %1239, 4
  %1241 = and i32 %1240, 32752
  %1242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1241)  ; LegacyF16ToF32(value)
  %1243 = lshr i32 %1239, 7
  %1244 = and i32 %1243, 32752
  %1245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1244)  ; LegacyF16ToF32(value)
  %1246 = fsub fast float 1.000000e+00, %1224
  %1247 = call float @dx.op.binary.f32(i32 35, float %1246, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1248 = bitcast float %1224 to i32
  %1249 = sitofp i32 %1248 to float
  %1250 = fadd fast float %1249, 0xC1CFBF8940000000
  %1251 = fmul fast float %1245, %1250
  %1252 = fadd fast float %1251, 0x41CFBF8940000000
  %1253 = fptosi float %1252 to i32
  %1254 = bitcast i32 %1253 to float
  %1255 = bitcast float %1247 to i32
  %1256 = sitofp i32 %1255 to float
  %1257 = fadd fast float %1256, 0xC1CFBF8940000000
  %1258 = fmul fast float %1257, %1245
  %1259 = fadd fast float %1258, 0x41CFBF8940000000
  %1260 = fptosi float %1259 to i32
  %1261 = bitcast i32 %1260 to float
  %1262 = fmul fast float %1254, %1242
  %1263 = fmul fast float %1261, %1242
  %1264 = fsub fast float %1247, %1262
  %1265 = fadd fast float %1263, %1247
  %1266 = call float @dx.op.unary.f32(i32 7, float %1264)  ; Saturate(value)
  %1267 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1268 = fsub fast float %1236, %1266
  %1269 = fsub fast float %1267, %1266
  %1270 = bitcast float %1269 to i32
  %1271 = sub nsw i32 2129859010, %1270
  %1272 = bitcast i32 %1271 to float
  %1273 = fmul fast float %1272, %1268
  %1274 = call float @dx.op.unary.f32(i32 7, float %1273)  ; Saturate(value)
  br label %1275

; <label>:1275                                    ; preds = %1229, %1223
  %1276 = phi float [ %1274, %1229 ], [ %1224, %1223 ]
  %1277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = and i32 %1278, 128
  %1280 = icmp eq i32 %1279, 0
  br i1 %1280, label %1297, label %1281

; <label>:1281                                    ; preds = %1275
  %1282 = add i32 %32, 412
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = add i32 %1284, 0
  %1286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1285, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1287 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1286, %dx.types.Handle %68, float %1110, float %1111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1288 = extractvalue %dx.types.ResRet.f32 %1287, 0
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = and i32 %1290, 524288
  %1292 = icmp ne i32 %1291, 0
  %1293 = fcmp fast ogt float %1288, 0x3FE0101020000000
  %1294 = select i1 %1293, float 1.000000e+00, float 0.000000e+00
  %1295 = select i1 %1292, float %1294, float %1288
  %1296 = fmul fast float %1295, %1276
  br label %1297

; <label>:1297                                    ; preds = %1281, %1275
  %1298 = phi float [ %1296, %1281 ], [ %1276, %1275 ]
  %1299 = fcmp fast ult float %1298, 0x3F70101020000000
  br i1 %1299, label %2038, label %1300

; <label>:1300                                    ; preds = %1297
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = and i32 %1302, 16
  %1304 = icmp eq i32 %1303, 0
  br i1 %1304, label %1503, label %1305

; <label>:1305                                    ; preds = %1300
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1026, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = add i32 %32, 364
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = add i32 %1310, 0
  %1312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1311, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1313 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1312, %dx.types.Handle %67, float %1110, float %1111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1314 = extractvalue %dx.types.ResRet.f32 %1313, 0
  %1315 = extractvalue %dx.types.ResRet.f32 %1313, 1
  %1316 = extractvalue %dx.types.ResRet.f32 %1313, 2
  %1317 = extractvalue %dx.types.ResRet.f32 %1313, 3
  %1318 = and i32 %1307, 255
  %1319 = uitofp i32 %1318 to float
  %1320 = lshr i32 %1307, 8
  %1321 = and i32 %1320, 255
  %1322 = uitofp i32 %1321 to float
  %1323 = fmul fast float %1317, %1319
  %1324 = fadd fast float %1323, %1322
  %1325 = fmul fast float %1324, 0x3F70101000000000
  %1326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.i32 %1326, 0
  %1328 = and i32 %1327, 512
  %1329 = icmp eq i32 %1328, 0
  br i1 %1329, label %1338, label %1330

; <label>:1330                                    ; preds = %1305
  %1331 = add i32 %32, 444
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = add i32 %1333, 0
  %1335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1334, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1336 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1335, %dx.types.Handle %68, float %1110, float %1111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1337 = extractvalue %dx.types.ResRet.f32 %1336, 0
  br label %1338

; <label>:1338                                    ; preds = %1330, %1305
  %1339 = phi float [ %1337, %1330 ], [ 1.000000e+00, %1305 ]
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = and i32 %1341, 33554432
  %1343 = icmp eq i32 %1342, 0
  br i1 %1343, label %1450, label %1344

; <label>:1344                                    ; preds = %1338
  %1345 = add i32 %32, 240
  %1346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1345, i32 undef)  ; BufferLoad(srv,index,wot)
  %1347 = extractvalue %dx.types.ResRet.i32 %1346, 0
  %1348 = and i32 %1347, 65535
  %1349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1348)  ; LegacyF16ToF32(value)
  %1350 = lshr i32 %1347, 16
  %1351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1350)  ; LegacyF16ToF32(value)
  %1352 = add i32 %32, 244
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = and i32 %1354, 65535
  %1356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1355)  ; LegacyF16ToF32(value)
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.i32 %1357, 0
  %1359 = lshr i32 %1358, 24
  %1360 = uitofp i32 %1359 to float
  %1361 = fmul fast float %1360, 0x3F70101020000000
  %1362 = and i32 %1358, 255
  %1363 = uitofp i32 %1362 to float
  %1364 = fmul fast float %1363, 0x3F70101020000000
  %1365 = lshr i32 %1358, 8
  %1366 = and i32 %1365, 255
  %1367 = uitofp i32 %1366 to float
  %1368 = fmul fast float %1367, 0x3F70101020000000
  %1369 = lshr i32 %1358, 16
  %1370 = and i32 %1369, 255
  %1371 = uitofp i32 %1370 to float
  %1372 = fmul fast float %1371, 0x3F70101020000000
  %1373 = add i32 %32, 236
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = lshr i32 %1375, 24
  %1377 = uitofp i32 %1376 to float
  %1378 = fmul fast float %1377, 0x3F70101020000000
  %1379 = and i32 %1375, 255
  %1380 = uitofp i32 %1379 to float
  %1381 = fmul fast float %1380, 0x3F70101020000000
  %1382 = lshr i32 %1375, 8
  %1383 = and i32 %1382, 255
  %1384 = uitofp i32 %1383 to float
  %1385 = fmul fast float %1384, 0x3F70101020000000
  %1386 = lshr i32 %1375, 16
  %1387 = and i32 %1386, 255
  %1388 = uitofp i32 %1387 to float
  %1389 = fmul fast float %1388, 0x3F70101020000000
  %1390 = bitcast float %1314 to i32
  %1391 = ashr i32 %1390, 1
  %1392 = sub nsw i32 1597463174, %1391
  %1393 = bitcast i32 %1392 to float
  %1394 = fmul fast float %1314, 5.000000e-01
  %1395 = fmul fast float %1393, %1393
  %1396 = fmul fast float %1395, %1394
  %1397 = fsub fast float 1.500000e+00, %1396
  %1398 = fmul fast float %1393, %1314
  %1399 = fmul fast float %1398, %1397
  %1400 = bitcast float %1315 to i32
  %1401 = ashr i32 %1400, 1
  %1402 = sub nsw i32 1597463174, %1401
  %1403 = bitcast i32 %1402 to float
  %1404 = fmul fast float %1315, 5.000000e-01
  %1405 = fmul fast float %1403, %1403
  %1406 = fmul fast float %1405, %1404
  %1407 = fsub fast float 1.500000e+00, %1406
  %1408 = fmul fast float %1403, %1315
  %1409 = fmul fast float %1408, %1407
  %1410 = bitcast float %1316 to i32
  %1411 = ashr i32 %1410, 1
  %1412 = sub nsw i32 1597463174, %1411
  %1413 = bitcast i32 %1412 to float
  %1414 = fmul fast float %1316, 5.000000e-01
  %1415 = fmul fast float %1413, %1413
  %1416 = fmul fast float %1415, %1414
  %1417 = fsub fast float 1.500000e+00, %1416
  %1418 = fmul fast float %1413, %1316
  %1419 = fmul fast float %1418, %1417
  %1420 = fsub fast float %1399, %1381
  %1421 = fsub fast float %1409, %1385
  %1422 = fsub fast float %1419, %1389
  %1423 = fmul fast float %1420, %1349
  %1424 = fmul fast float %1421, %1351
  %1425 = fmul fast float %1422, %1356
  %1426 = fadd fast float %1423, %1364
  %1427 = fadd fast float %1424, %1368
  %1428 = fadd fast float %1425, %1372
  %1429 = call float @dx.op.unary.f32(i32 7, float %1426)  ; Saturate(value)
  %1430 = call float @dx.op.unary.f32(i32 7, float %1427)  ; Saturate(value)
  %1431 = call float @dx.op.unary.f32(i32 7, float %1428)  ; Saturate(value)
  %1432 = fmul fast float %1429, %1429
  %1433 = fmul fast float %1430, %1430
  %1434 = fmul fast float %1431, %1431
  %1435 = fsub fast float %1432, %1314
  %1436 = fsub fast float %1433, %1315
  %1437 = fsub fast float %1434, %1316
  %1438 = fmul fast float %1435, %1339
  %1439 = fmul fast float %1436, %1339
  %1440 = fmul fast float %1437, %1339
  %1441 = fadd fast float %1438, %1314
  %1442 = fadd fast float %1439, %1315
  %1443 = fadd fast float %1440, %1316
  %1444 = fadd fast float %1361, %1325
  %1445 = fsub fast float %1444, %1378
  %1446 = call float @dx.op.unary.f32(i32 7, float %1445)  ; Saturate(value)
  %1447 = fsub fast float %1446, %1325
  %1448 = fmul fast float %1447, %1339
  %1449 = fadd fast float %1448, %1325
  br label %1503

; <label>:1450                                    ; preds = %1338
  %1451 = and i32 %1341, 134217728
  %1452 = icmp eq i32 %1451, 0
  br i1 %1452, label %1487, label %1453

; <label>:1453                                    ; preds = %1450
  %1454 = call float @dx.op.unary.f32(i32 24, float %234)  ; Sqrt(value)
  %1455 = call float @dx.op.unary.f32(i32 24, float %238)  ; Sqrt(value)
  %1456 = call float @dx.op.unary.f32(i32 24, float %242)  ; Sqrt(value)
  %1457 = fadd fast float %1454, -5.000000e-01
  %1458 = fadd fast float %1455, -5.000000e-01
  %1459 = fadd fast float %1456, -5.000000e-01
  %1460 = fmul fast float %1457, %1339
  %1461 = fmul fast float %1458, %1339
  %1462 = fmul fast float %1459, %1339
  %1463 = fadd fast float %1460, 5.000000e-01
  %1464 = fadd fast float %1461, 5.000000e-01
  %1465 = fadd fast float %1462, 5.000000e-01
  %1466 = call float @dx.op.unary.f32(i32 24, float %1314)  ; Sqrt(value)
  %1467 = call float @dx.op.unary.f32(i32 24, float %1315)  ; Sqrt(value)
  %1468 = call float @dx.op.unary.f32(i32 24, float %1316)  ; Sqrt(value)
  %1469 = fmul fast float %1463, 2.000000e+00
  %1470 = fsub fast float 1.000000e+00, %1469
  %1471 = fmul fast float %1470, %1466
  %1472 = fadd fast float %1471, %1469
  %1473 = fmul fast float %1472, %1466
  %1474 = fmul fast float %1464, 2.000000e+00
  %1475 = fsub fast float 1.000000e+00, %1474
  %1476 = fmul fast float %1475, %1467
  %1477 = fadd fast float %1476, %1474
  %1478 = fmul fast float %1477, %1467
  %1479 = fmul fast float %1465, 2.000000e+00
  %1480 = fsub fast float 1.000000e+00, %1479
  %1481 = fmul fast float %1480, %1468
  %1482 = fadd fast float %1481, %1479
  %1483 = fmul fast float %1482, %1468
  %1484 = fmul fast float %1473, %1473
  %1485 = fmul fast float %1478, %1478
  %1486 = fmul fast float %1483, %1483
  br label %1503

; <label>:1487                                    ; preds = %1450
  %1488 = fmul fast float %234, %234
  %1489 = fmul fast float %238, %238
  %1490 = fmul fast float %242, %242
  %1491 = fadd fast float %1488, -1.000000e+00
  %1492 = fadd fast float %1489, -1.000000e+00
  %1493 = fadd fast float %1490, -1.000000e+00
  %1494 = fmul fast float %1339, %1491
  %1495 = fmul fast float %1339, %1492
  %1496 = fmul fast float %1339, %1493
  %1497 = fadd fast float %1494, 1.000000e+00
  %1498 = fadd fast float %1495, 1.000000e+00
  %1499 = fadd fast float %1496, 1.000000e+00
  %1500 = fmul fast float %1497, %1314
  %1501 = fmul fast float %1498, %1315
  %1502 = fmul fast float %1499, %1316
  br label %1503

; <label>:1503                                    ; preds = %1487, %1453, %1344, %1300
  %1504 = phi float [ %1449, %1344 ], [ %1325, %1453 ], [ %1325, %1487 ], [ 0x3FA23C0BE0000000, %1300 ]
  %1505 = phi float [ %1441, %1344 ], [ %1484, %1453 ], [ %1500, %1487 ], [ 1.000000e+00, %1300 ]
  %1506 = phi float [ %1442, %1344 ], [ %1485, %1453 ], [ %1501, %1487 ], [ 1.000000e+00, %1300 ]
  %1507 = phi float [ %1443, %1344 ], [ %1486, %1453 ], [ %1502, %1487 ], [ 1.000000e+00, %1300 ]
  %1508 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1509 = extractvalue %dx.types.CBufRet.i32 %1508, 1
  %1510 = and i32 %1509, 1
  %1511 = icmp ne i32 %1510, 0
  %1512 = add i32 %32, 356
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = and i32 %1514, 32
  %1516 = icmp ne i32 %1515, 0
  %1517 = and i1 %1511, %1516
  %1518 = select i1 %1517, float 1.000000e+00, float %1505
  %1519 = select i1 %1517, float 0x3FD3333340000000, float %1506
  %1520 = select i1 %1517, float 0x3FD3333340000000, float %1507
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = and i32 %1522, 32
  %1524 = icmp eq i32 %1523, 0
  br i1 %1524, label %1597, label %1525

; <label>:1525                                    ; preds = %1503
  %1526 = add i32 %32, 108
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1526, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = add i32 %32, 380
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1529, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = add i32 %1531, 0
  %1533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1533, %dx.types.Handle %67, float %1110, float %1111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1535 = extractvalue %dx.types.ResRet.f32 %1534, 0
  %1536 = extractvalue %dx.types.ResRet.f32 %1534, 1
  %1537 = extractvalue %dx.types.ResRet.f32 %1534, 2
  %1538 = extractvalue %dx.types.ResRet.f32 %1534, 3
  %1539 = and i32 %1528, 255
  %1540 = uitofp i32 %1539 to float
  %1541 = lshr i32 %1528, 8
  %1542 = and i32 %1541, 255
  %1543 = uitofp i32 %1542 to float
  %1544 = lshr i32 %1528, 16
  %1545 = and i32 %1544, 255
  %1546 = uitofp i32 %1545 to float
  %1547 = fmul fast float %1546, 0x3F70101000000000
  %1548 = fmul fast float %1535, %1540
  %1549 = fadd fast float %1548, %1543
  %1550 = fmul fast float %1549, 0x3F70101000000000
  %1551 = fadd fast float %1536, -5.000000e-01
  %1552 = fadd fast float %1538, -5.000000e-01
  %1553 = fmul fast float %1551, %1547
  %1554 = fmul fast float %1552, %1547
  %1555 = fadd fast float %1553, 5.000000e-01
  %1556 = fadd fast float %1554, 5.000000e-01
  %1557 = fmul fast float %1555, 2.000000e+00
  %1558 = fadd fast float %1557, -1.000000e+00
  %1559 = fmul fast float %1556, 2.000000e+00
  %1560 = fadd fast float %1559, -1.000000e+00
  %1561 = fadd fast float %1558, %1560
  %1562 = fmul fast float %1561, 5.000000e-01
  %1563 = fsub fast float %1558, %1560
  %1564 = fmul fast float %1563, 5.000000e-01
  %1565 = call float @dx.op.unary.f32(i32 6, float %1562)  ; FAbs(value)
  %1566 = fsub fast float 1.000000e+00, %1565
  %1567 = call float @dx.op.unary.f32(i32 6, float %1564)  ; FAbs(value)
  %1568 = fsub fast float %1566, %1567
  %1569 = call float @dx.op.dot3.f32(i32 55, float %1562, float %1564, float %1568, float %1562, float %1564, float %1568)  ; Dot3(ax,ay,az,bx,by,bz)
  %1570 = call float @dx.op.unary.f32(i32 25, float %1569)  ; Rsqrt(value)
  %1571 = fmul fast float %1562, %1570
  %1572 = fmul fast float %1564, %1570
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = and i32 %1574, 67108864
  %1576 = icmp eq i32 %1575, 0
  br i1 %1576, label %1593, label %1577

; <label>:1577                                    ; preds = %1525
  %1578 = add i32 %32, 296
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = and i32 %1580, 65535
  %1582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1581)  ; LegacyF16ToF32(value)
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = and i32 %1584, 65535
  %1586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1585)  ; LegacyF16ToF32(value)
  %1587 = lshr i32 %1580, 16
  %1588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1587)  ; LegacyF16ToF32(value)
  %1589 = fsub fast float %1550, %1588
  %1590 = fmul fast float %1589, %1582
  %1591 = fadd fast float %1590, %1586
  %1592 = call float @dx.op.unary.f32(i32 7, float %1591)  ; Saturate(value)
  br label %1593

; <label>:1593                                    ; preds = %1577, %1525
  %1594 = phi float [ %1592, %1577 ], [ %1550, %1525 ]
  %1595 = call float @dx.op.dot2.f32(i32 54, float %1571, float %1572, float %1014, float %1015)  ; Dot2(ax,ay,bx,by)
  %1596 = call float @dx.op.dot2.f32(i32 54, float %1571, float %1572, float %1016, float %1017)  ; Dot2(ax,ay,bx,by)
  br label %1597

; <label>:1597                                    ; preds = %1593, %1503
  %1598 = phi float [ %1594, %1593 ], [ 0x3FD6666660000000, %1503 ]
  %1599 = phi float [ %1595, %1593 ], [ 0.000000e+00, %1503 ]
  %1600 = phi float [ %1596, %1593 ], [ 0.000000e+00, %1503 ]
  %1601 = phi float [ %1537, %1593 ], [ 1.000000e+00, %1503 ]
  %1602 = add i32 %32, 176
  %1603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1602, i32 undef)  ; BufferLoad(srv,index,wot)
  %1604 = extractvalue %dx.types.ResRet.i32 %1603, 0
  %1605 = lshr i32 %1604, 22
  %1606 = shl nuw nsw i32 %1605, 5
  %1607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1606)  ; LegacyF16ToF32(value)
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = and i32 %1609, 64
  %1611 = icmp eq i32 %1610, 0
  br i1 %1611, label %1645, label %1612

; <label>:1612                                    ; preds = %1597
  %1613 = add i32 %32, 396
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1613, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = add i32 %1615, 0
  %1617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1616, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = and i32 %1619, 131072
  %1621 = icmp eq i32 %1620, 0
  %1622 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1617, %dx.types.Handle %67, float %1110, float %1111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1623 = extractvalue %dx.types.ResRet.f32 %1622, 0
  %1624 = extractvalue %dx.types.ResRet.f32 %1622, 1
  %1625 = extractvalue %dx.types.ResRet.f32 %1622, 2
  %1626 = fmul fast float %1623, %222
  %1627 = fmul fast float %1624, %225
  %1628 = fmul fast float %1625, %228
  br i1 %1621, label %1635, label %1629

; <label>:1629                                    ; preds = %1612
  %1630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1631 = extractvalue %dx.types.CBufRet.f32 %1630, 0
  %1632 = fmul fast float %1631, %1626
  %1633 = fmul fast float %1631, %1627
  %1634 = fmul fast float %1631, %1628
  br label %1635

; <label>:1635                                    ; preds = %1629, %1612
  %1636 = phi float [ %1632, %1629 ], [ %1626, %1612 ]
  %1637 = phi float [ %1633, %1629 ], [ %1627, %1612 ]
  %1638 = phi float [ %1634, %1629 ], [ %1628, %1612 ]
  %1639 = fmul fast float %1636, %1607
  %1640 = select i1 %174, float %1639, float %1636
  %1641 = call float @dx.op.dot3.f32(i32 55, float %1640, float %1637, float %1638, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1642 = select i1 %174, float 0.000000e+00, float %1636
  %1643 = select i1 %174, float %1641, float %1637
  %1644 = select i1 %174, float 0.000000e+00, float %1638
  br label %1645

; <label>:1645                                    ; preds = %1635, %1597
  %1646 = phi float [ %1642, %1635 ], [ 0.000000e+00, %1597 ]
  %1647 = phi float [ %1643, %1635 ], [ 0.000000e+00, %1597 ]
  %1648 = phi float [ %1644, %1635 ], [ 0.000000e+00, %1597 ]
  %1649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1650 = extractvalue %dx.types.ResRet.i32 %1649, 0
  %1651 = and i32 %1650, 1024
  %1652 = icmp eq i32 %1651, 0
  br i1 %1652, label %1683, label %1653

; <label>:1653                                    ; preds = %1645
  %1654 = add i32 %32, 168
  %1655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1654, i32 undef)  ; BufferLoad(srv,index,wot)
  %1656 = extractvalue %dx.types.ResRet.i32 %1655, 0
  %1657 = and i32 %1656, 255
  %1658 = uitofp i32 %1657 to float
  %1659 = fmul fast float %1658, 0x3F70101020000000
  %1660 = lshr i32 %1656, 8
  %1661 = and i32 %1660, 255
  %1662 = uitofp i32 %1661 to float
  %1663 = fmul fast float %1662, 0x3F70101020000000
  %1664 = lshr i32 %1656, 16
  %1665 = and i32 %1664, 255
  %1666 = uitofp i32 %1665 to float
  %1667 = fmul fast float %1666, 0x3F70101020000000
  %1668 = fmul fast float %1659, %1659
  %1669 = fmul fast float %1663, %1663
  %1670 = fmul fast float %1667, %1667
  %1671 = add i32 %32, 460
  %1672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1671, i32 undef)  ; BufferLoad(srv,index,wot)
  %1673 = extractvalue %dx.types.ResRet.i32 %1672, 0
  %1674 = add i32 %1673, 0
  %1675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1674, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1676 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1675, %dx.types.Handle %68, float %1110, float %1111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1677 = extractvalue %dx.types.ResRet.f32 %1676, 0
  %1678 = extractvalue %dx.types.ResRet.f32 %1676, 1
  %1679 = extractvalue %dx.types.ResRet.f32 %1676, 2
  %1680 = fmul fast float %1668, %1677
  %1681 = fmul fast float %1669, %1678
  %1682 = fmul fast float %1670, %1679
  br label %1683

; <label>:1683                                    ; preds = %1653, %1645
  %1684 = phi float [ %1680, %1653 ], [ 0.000000e+00, %1645 ]
  %1685 = phi float [ %1681, %1653 ], [ 0.000000e+00, %1645 ]
  %1686 = phi float [ %1682, %1653 ], [ 0.000000e+00, %1645 ]
  %1687 = fcmp fast ogt float %1684, 0.000000e+00
  %1688 = fcmp fast ogt float %1685, 0.000000e+00
  %1689 = fcmp fast ogt float %1686, 0.000000e+00
  %1690 = call float @dx.op.unary.f32(i32 23, float %1684)  ; Log(value)
  %1691 = call float @dx.op.unary.f32(i32 23, float %1685)  ; Log(value)
  %1692 = call float @dx.op.unary.f32(i32 23, float %1686)  ; Log(value)
  %1693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1602, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.i32 %1693, 0
  %1695 = lshr i32 %1694, 7
  %1696 = and i32 %1695, 32752
  %1697 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1696)  ; LegacyF16ToF32(value)
  %1698 = fmul fast float %1690, 0xBFE62E4300000000
  %1699 = fmul fast float %1698, %1697
  %1700 = fmul fast float %1691, 0xBFE62E4300000000
  %1701 = fmul fast float %1700, %1697
  %1702 = fmul fast float %1692, 0xBFE62E4300000000
  %1703 = fmul fast float %1702, %1697
  %1704 = select i1 %1687, float %1699, float 1.270000e+02
  %1705 = select i1 %1688, float %1701, float 1.270000e+02
  %1706 = select i1 %1689, float %1703, float 1.270000e+02
  %1707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1708 = extractvalue %dx.types.ResRet.i32 %1707, 0
  %1709 = and i32 %1708, 10240
  %1710 = icmp eq i32 %1709, 0
  br i1 %1710, label %1755, label %1711

; <label>:1711                                    ; preds = %1683
  %1712 = add i32 %32, 476
  %1713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1712, i32 undef)  ; BufferLoad(srv,index,wot)
  %1714 = extractvalue %dx.types.ResRet.i32 %1713, 0
  %1715 = add i32 %1714, 0
  %1716 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1715, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1717 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1716, %dx.types.Handle %68, float %1110, float %1111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1718 = extractvalue %dx.types.ResRet.f32 %1717, 1
  %1719 = extractvalue %dx.types.ResRet.f32 %1717, 3
  %1720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1721 = extractvalue %dx.types.ResRet.i32 %1720, 0
  %1722 = and i32 %1721, 1048576
  %1723 = icmp ne i32 %1722, 0
  %1724 = and i32 %1721, 8192
  %1725 = icmp eq i32 %1724, 0
  br i1 %1725, label %1741, label %1726

; <label>:1726                                    ; preds = %1711
  %1727 = extractvalue %dx.types.ResRet.f32 %1717, 2
  %1728 = select i1 %1723, float %1727, float %1718
  %1729 = extractvalue %dx.types.ResRet.f32 %1717, 0
  %1730 = select i1 %1723, float %1729, float %1718
  %1731 = add i32 %32, 112
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = lshr i32 %1733, 16
  %1735 = and i32 %1734, 255
  %1736 = uitofp i32 %1735 to float
  %1737 = fmul fast float %1736, 0x3F80101020000000
  %1738 = fmul fast float %1737, %1730
  %1739 = fmul fast float %1737, %1718
  %1740 = fmul fast float %1737, %1728
  br label %1741

; <label>:1741                                    ; preds = %1726, %1711
  %1742 = phi float [ %1738, %1726 ], [ 0.000000e+00, %1711 ]
  %1743 = phi float [ %1739, %1726 ], [ 0.000000e+00, %1711 ]
  %1744 = phi float [ %1740, %1726 ], [ 0.000000e+00, %1711 ]
  %1745 = and i32 %1721, 2048
  %1746 = icmp eq i32 %1745, 0
  br i1 %1746, label %1755, label %1747

; <label>:1747                                    ; preds = %1741
  %1748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1602, i32 undef)  ; BufferLoad(srv,index,wot)
  %1749 = extractvalue %dx.types.ResRet.i32 %1748, 0
  %1750 = shl i32 %1749, 4
  %1751 = and i32 %1750, 32752
  %1752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1751)  ; LegacyF16ToF32(value)
  %1753 = fmul fast float %1752, %1719
  %1754 = call float @dx.op.binary.f32(i32 35, float %1753, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1755

; <label>:1755                                    ; preds = %1747, %1741, %1683
  %1756 = phi float [ %1742, %1747 ], [ %1742, %1741 ], [ 0.000000e+00, %1683 ]
  %1757 = phi float [ %1743, %1747 ], [ %1743, %1741 ], [ 0.000000e+00, %1683 ]
  %1758 = phi float [ %1744, %1747 ], [ %1744, %1741 ], [ 0.000000e+00, %1683 ]
  %1759 = phi float [ %1754, %1747 ], [ 0x3F70101020000000, %1741 ], [ 0x3F70101020000000, %1683 ]
  %1760 = add i32 %32, 112
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = and i32 %1762, 255
  %1764 = uitofp i32 %1763 to float
  %1765 = lshr i32 %1762, 8
  %1766 = and i32 %1765, 255
  %1767 = uitofp i32 %1766 to float
  %1768 = call float @dx.op.dot3.f32(i32 55, float %1518, float %1519, float %1520, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1769 = fmul fast float %1767, %1768
  %1770 = fadd fast float %1769, %1764
  %1771 = fmul fast float %1770, 0x3F70101020000000
  %1772 = call float @dx.op.unary.f32(i32 7, float %1771)  ; Saturate(value)
  br i1 %1002, label %1773, label %1808

; <label>:1773                                    ; preds = %1755
  %1774 = fmul fast float %1759, 2.000000e+00
  %1775 = fcmp fast olt float %1704, 1.270000e+02
  %1776 = fcmp fast olt float %1705, 1.270000e+02
  %1777 = fcmp fast olt float %1706, 1.270000e+02
  %1778 = fmul fast float %1704, 0xBFF7154760000000
  %1779 = fmul fast float %1778, %1774
  %1780 = fmul fast float %1705, 0xBFF7154760000000
  %1781 = fmul fast float %1780, %1774
  %1782 = fmul fast float %1706, 0xBFF7154760000000
  %1783 = fmul fast float %1782, %1774
  %1784 = call float @dx.op.unary.f32(i32 21, float %1779)  ; Exp(value)
  %1785 = call float @dx.op.unary.f32(i32 21, float %1781)  ; Exp(value)
  %1786 = call float @dx.op.unary.f32(i32 21, float %1783)  ; Exp(value)
  %1787 = call float @dx.op.unary.f32(i32 7, float %1784)  ; Saturate(value)
  %1788 = call float @dx.op.unary.f32(i32 7, float %1785)  ; Saturate(value)
  %1789 = call float @dx.op.unary.f32(i32 7, float %1786)  ; Saturate(value)
  %1790 = fadd fast float %1787, -1.000000e+00
  %1791 = select i1 %1775, float %1790, float -1.000000e+00
  %1792 = fadd fast float %1788, -1.000000e+00
  %1793 = select i1 %1776, float %1792, float -1.000000e+00
  %1794 = fadd fast float %1789, -1.000000e+00
  %1795 = select i1 %1777, float %1794, float -1.000000e+00
  %1796 = fmul fast float %1791, %1298
  %1797 = fmul fast float %1793, %1298
  %1798 = fmul fast float %1795, %1298
  %1799 = fadd fast float %1796, 1.000000e+00
  %1800 = fadd fast float %1797, 1.000000e+00
  %1801 = fadd fast float %1798, 1.000000e+00
  %1802 = fmul fast float %1799, %992
  %1803 = fmul fast float %1800, %993
  %1804 = fmul fast float %1801, %994
  %1805 = fmul fast float %1799, %986
  %1806 = fmul fast float %1800, %987
  %1807 = fmul fast float %1801, %988
  br label %1808

; <label>:1808                                    ; preds = %1773, %1755
  %1809 = phi float [ %1805, %1773 ], [ %986, %1755 ]
  %1810 = phi float [ %1806, %1773 ], [ %987, %1755 ]
  %1811 = phi float [ %1807, %1773 ], [ %988, %1755 ]
  %1812 = phi float [ %1802, %1773 ], [ %992, %1755 ]
  %1813 = phi float [ %1803, %1773 ], [ %993, %1755 ]
  %1814 = phi float [ %1804, %1773 ], [ %994, %1755 ]
  %1815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.i32 %1815, 0
  %1817 = and i32 %1816, 3
  %1818 = icmp eq i32 %1817, 3
  br i1 %1818, label %1897, label %1819

; <label>:1819                                    ; preds = %1808
  %1820 = and i32 %1816, 16
  %1821 = icmp ne i32 %1820, 0
  %1822 = select i1 %1821, float %1298, float 0.000000e+00
  %1823 = icmp eq i32 %1817, 0
  br i1 %1823, label %1824, label %1852

; <label>:1824                                    ; preds = %1819
  %1825 = and i32 %1816, 64
  %1826 = icmp ne i32 %1825, 0
  %1827 = select i1 %1826, float %1298, float 0.000000e+00
  %1828 = fsub fast float %1518, %1812
  %1829 = fsub fast float %1519, %1813
  %1830 = fsub fast float %1520, %1814
  %1831 = fmul fast float %1822, %1828
  %1832 = fmul fast float %1822, %1829
  %1833 = fmul fast float %1822, %1830
  %1834 = fadd fast float %1831, %1812
  %1835 = fadd fast float %1832, %1813
  %1836 = fadd fast float %1833, %1814
  %1837 = fsub fast float %1504, %995
  %1838 = fmul fast float %1822, %1837
  %1839 = fadd fast float %1838, %995
  %1840 = fsub fast float %1646, %1809
  %1841 = fsub fast float %1647, %1810
  %1842 = fsub fast float %1648, %1811
  %1843 = fmul fast float %1827, %1840
  %1844 = fmul fast float %1827, %1841
  %1845 = fmul fast float %1827, %1842
  %1846 = fadd fast float %1843, %1809
  %1847 = fadd fast float %1844, %1810
  %1848 = fadd fast float %1845, %1811
  %1849 = fsub fast float %1772, %1000
  %1850 = fmul fast float %1822, %1849
  %1851 = fadd fast float %1850, %1000
  br label %1897

; <label>:1852                                    ; preds = %1819
  %1853 = icmp eq i32 %1817, 1
  br i1 %1853, label %1854, label %1867

; <label>:1854                                    ; preds = %1852
  %1855 = fadd fast float %1518, -1.000000e+00
  %1856 = fadd fast float %1519, -1.000000e+00
  %1857 = fadd fast float %1520, -1.000000e+00
  %1858 = fmul fast float %1822, %1855
  %1859 = fmul fast float %1822, %1856
  %1860 = fmul fast float %1822, %1857
  %1861 = fadd fast float %1858, 1.000000e+00
  %1862 = fadd fast float %1859, 1.000000e+00
  %1863 = fadd fast float %1860, 1.000000e+00
  %1864 = fmul fast float %1861, %1812
  %1865 = fmul fast float %1862, %1813
  %1866 = fmul fast float %1863, %1814
  br label %1897

; <label>:1867                                    ; preds = %1852
  %1868 = icmp eq i32 %1817, 2
  br i1 %1868, label %1869, label %1897

; <label>:1869                                    ; preds = %1867
  %1870 = call float @dx.op.unary.f32(i32 24, float %1518)  ; Sqrt(value)
  %1871 = call float @dx.op.unary.f32(i32 24, float %1519)  ; Sqrt(value)
  %1872 = call float @dx.op.unary.f32(i32 24, float %1520)  ; Sqrt(value)
  %1873 = fadd fast float %1870, -5.000000e-01
  %1874 = fadd fast float %1871, -5.000000e-01
  %1875 = fadd fast float %1872, -5.000000e-01
  %1876 = fmul fast float %1873, %1822
  %1877 = fmul fast float %1874, %1822
  %1878 = fmul fast float %1875, %1822
  %1879 = fadd fast float %1876, 5.000000e-01
  %1880 = fadd fast float %1877, 5.000000e-01
  %1881 = fadd fast float %1878, 5.000000e-01
  %1882 = fmul fast float %1879, 2.000000e+00
  %1883 = fsub fast float 1.000000e+00, %1882
  %1884 = fmul fast float %1883, %1812
  %1885 = fadd fast float %1884, %1882
  %1886 = fmul fast float %1885, %1812
  %1887 = fmul fast float %1880, 2.000000e+00
  %1888 = fsub fast float 1.000000e+00, %1887
  %1889 = fmul fast float %1888, %1813
  %1890 = fadd fast float %1889, %1887
  %1891 = fmul fast float %1890, %1813
  %1892 = fmul fast float %1881, 2.000000e+00
  %1893 = fsub fast float 1.000000e+00, %1892
  %1894 = fmul fast float %1893, %1814
  %1895 = fadd fast float %1894, %1892
  %1896 = fmul fast float %1895, %1814
  br label %1897

; <label>:1897                                    ; preds = %1869, %1867, %1854, %1824, %1808
  %1898 = phi float [ %1809, %1808 ], [ %1809, %1869 ], [ %1809, %1867 ], [ %1809, %1854 ], [ %1846, %1824 ]
  %1899 = phi float [ %1810, %1808 ], [ %1810, %1869 ], [ %1810, %1867 ], [ %1810, %1854 ], [ %1847, %1824 ]
  %1900 = phi float [ %1811, %1808 ], [ %1811, %1869 ], [ %1811, %1867 ], [ %1811, %1854 ], [ %1848, %1824 ]
  %1901 = phi float [ %1812, %1808 ], [ %1886, %1869 ], [ %1812, %1867 ], [ %1864, %1854 ], [ %1834, %1824 ]
  %1902 = phi float [ %1813, %1808 ], [ %1891, %1869 ], [ %1813, %1867 ], [ %1865, %1854 ], [ %1835, %1824 ]
  %1903 = phi float [ %1814, %1808 ], [ %1896, %1869 ], [ %1814, %1867 ], [ %1866, %1854 ], [ %1836, %1824 ]
  %1904 = phi float [ %995, %1808 ], [ %995, %1869 ], [ %995, %1867 ], [ %995, %1854 ], [ %1839, %1824 ]
  %1905 = phi float [ %1000, %1808 ], [ %1000, %1869 ], [ %1000, %1867 ], [ %1000, %1854 ], [ %1851, %1824 ]
  %1906 = and i32 %1816, 12
  %1907 = icmp eq i32 %1906, 12
  br i1 %1907, label %2038, label %1908

; <label>:1908                                    ; preds = %1897
  %1909 = and i32 %1816, 2097184
  %1910 = icmp eq i32 %1909, 2097184
  %1911 = select i1 %1910, float %1298, float 0.000000e+00
  %1912 = and i32 %1816, 4194336
  %1913 = icmp eq i32 %1912, 4194336
  %1914 = select i1 %1913, float %1298, float 0.000000e+00
  %1915 = and i32 %1816, 8388640
  %1916 = icmp eq i32 %1915, 8388640
  %1917 = select i1 %1916, float %1298, float 0.000000e+00
  %1918 = and i32 %1816, 1024
  %1919 = icmp ne i32 %1918, 0
  %1920 = select i1 %1919, float %1298, float 0.000000e+00
  %1921 = and i32 %1816, 2048
  %1922 = icmp ne i32 %1921, 0
  %1923 = select i1 %1922, float %1298, float 0.000000e+00
  %1924 = and i32 %1816, 8192
  %1925 = icmp ne i32 %1924, 0
  %1926 = select i1 %1925, float %1298, float 0.000000e+00
  %1927 = icmp eq i32 %1906, 0
  br i1 %1927, label %1928, label %1962

; <label>:1928                                    ; preds = %1908
  %1929 = fsub fast float %1599, %981
  %1930 = fsub fast float %1600, %982
  %1931 = fmul fast float %1911, %1929
  %1932 = fmul fast float %1911, %1930
  %1933 = fadd fast float %1931, %981
  %1934 = fadd fast float %1932, %982
  %1935 = fsub fast float %1601, %998
  %1936 = fmul fast float %1914, %1935
  %1937 = fadd fast float %1936, %998
  %1938 = fsub fast float %1598, %997
  %1939 = fmul fast float %1917, %1938
  %1940 = fadd fast float %1939, %997
  %1941 = fsub fast float %1704, %989
  %1942 = fsub fast float %1705, %990
  %1943 = fsub fast float %1706, %991
  %1944 = fmul fast float %1920, %1941
  %1945 = fmul fast float %1920, %1942
  %1946 = fmul fast float %1920, %1943
  %1947 = fadd fast float %1944, %989
  %1948 = fadd fast float %1945, %990
  %1949 = fadd fast float %1946, %991
  %1950 = fsub fast float %1759, %999
  %1951 = fmul fast float %1923, %1950
  %1952 = fadd fast float %1951, %999
  %1953 = fsub fast float %1756, %983
  %1954 = fsub fast float %1757, %984
  %1955 = fsub fast float %1758, %985
  %1956 = fmul fast float %1926, %1953
  %1957 = fmul fast float %1926, %1954
  %1958 = fmul fast float %1926, %1955
  %1959 = fadd fast float %1956, %983
  %1960 = fadd fast float %1957, %984
  %1961 = fadd fast float %1958, %985
  br label %2038

; <label>:1962                                    ; preds = %1908
  %1963 = icmp eq i32 %1906, 4
  br i1 %1963, label %1964, label %2010

; <label>:1964                                    ; preds = %1962
  %1965 = fmul fast float %1911, %1599
  %1966 = fmul fast float %1911, %1600
  %1967 = fadd fast float %1965, %981
  %1968 = fadd fast float %1966, %982
  %1969 = call float @dx.op.binary.f32(i32 36, float %998, float %1601)  ; FMin(a,b)
  %1970 = fsub fast float %1969, %998
  %1971 = fmul fast float %1970, %1914
  %1972 = fadd fast float %1971, %998
  %1973 = fadd fast float %1598, %997
  %1974 = fmul fast float %1973, 0x3FF337FAE0000000
  %1975 = fmul fast float %997, %997
  %1976 = fmul fast float %1598, %1598
  %1977 = fadd fast float %1976, %1975
  %1978 = fmul fast float %1977, 0x3FE5152B00000000
  %1979 = fmul fast float %997, 0xBFCC1F85E0000000
  %1980 = fmul fast float %1979, %1598
  %1981 = fadd fast float %1980, 0xBFE1363700000000
  %1982 = fadd fast float %1981, %1974
  %1983 = fsub fast float %1982, %1978
  %1984 = fmul fast float %1973, 0x3FBA6F0D00000000
  %1985 = fmul fast float %1977, 0x3FD0432880000000
  %1986 = fmul fast float %997, 0xBFEF110800000000
  %1987 = fmul fast float %1986, %1598
  %1988 = fadd fast float %1987, 1.000000e+00
  %1989 = fsub fast float %1988, %1984
  %1990 = fadd fast float %1989, %1985
  %1991 = fdiv fast float %1983, %1990
  %1992 = call float @dx.op.unary.f32(i32 7, float %1991)  ; Saturate(value)
  %1993 = fsub fast float %1992, %997
  %1994 = fmul fast float %1993, %1917
  %1995 = fadd fast float %1994, %997
  %1996 = fmul fast float %1920, %1704
  %1997 = fmul fast float %1920, %1705
  %1998 = fmul fast float %1920, %1706
  %1999 = fadd fast float %1996, %989
  %2000 = fadd fast float %1997, %990
  %2001 = fadd fast float %1998, %991
  %2002 = fmul fast float %1923, %1759
  %2003 = fadd fast float %2002, %999
  %2004 = fmul fast float %1926, %1756
  %2005 = fmul fast float %1926, %1757
  %2006 = fmul fast float %1926, %1758
  %2007 = fadd fast float %2004, %983
  %2008 = fadd fast float %2005, %984
  %2009 = fadd fast float %2006, %985
  br label %2038

; <label>:2010                                    ; preds = %1962
  %2011 = icmp eq i32 %1906, 8
  br i1 %2011, label %2012, label %2038

; <label>:2012                                    ; preds = %2010
  %2013 = fmul fast float %1911, %1599
  %2014 = fmul fast float %1911, %1600
  %2015 = fadd fast float %2013, %981
  %2016 = fadd fast float %2014, %982
  %2017 = call float @dx.op.binary.f32(i32 36, float %998, float %1601)  ; FMin(a,b)
  %2018 = fsub fast float %2017, %998
  %2019 = fmul fast float %2018, %1914
  %2020 = fadd fast float %2019, %998
  %2021 = fsub fast float %1598, %997
  %2022 = fmul fast float %1917, %2021
  %2023 = fadd fast float %2022, %997
  %2024 = fmul fast float %1920, %1704
  %2025 = fmul fast float %1920, %1705
  %2026 = fmul fast float %1920, %1706
  %2027 = fadd fast float %2024, %989
  %2028 = fadd fast float %2025, %990
  %2029 = fadd fast float %2026, %991
  %2030 = fmul fast float %1923, %1759
  %2031 = fadd fast float %2030, %999
  %2032 = fmul fast float %1926, %1756
  %2033 = fmul fast float %1926, %1757
  %2034 = fmul fast float %1926, %1758
  %2035 = fadd fast float %2032, %983
  %2036 = fadd fast float %2033, %984
  %2037 = fadd fast float %2034, %985
  br label %2038

; <label>:2038                                    ; preds = %2012, %2010, %1964, %1928, %1897, %1297, %1001, %980
  %2039 = phi float [ %981, %1897 ], [ %981, %1297 ], [ %981, %980 ], [ %2015, %2012 ], [ %981, %2010 ], [ %1967, %1964 ], [ %1933, %1928 ], [ %981, %1001 ]
  %2040 = phi float [ %982, %1897 ], [ %982, %1297 ], [ %982, %980 ], [ %2016, %2012 ], [ %982, %2010 ], [ %1968, %1964 ], [ %1934, %1928 ], [ %982, %1001 ]
  %2041 = phi float [ %983, %1897 ], [ %983, %1297 ], [ %983, %980 ], [ %2035, %2012 ], [ %983, %2010 ], [ %2007, %1964 ], [ %1959, %1928 ], [ %983, %1001 ]
  %2042 = phi float [ %984, %1897 ], [ %984, %1297 ], [ %984, %980 ], [ %2036, %2012 ], [ %984, %2010 ], [ %2008, %1964 ], [ %1960, %1928 ], [ %984, %1001 ]
  %2043 = phi float [ %985, %1897 ], [ %985, %1297 ], [ %985, %980 ], [ %2037, %2012 ], [ %985, %2010 ], [ %2009, %1964 ], [ %1961, %1928 ], [ %985, %1001 ]
  %2044 = phi float [ %1898, %1897 ], [ %986, %1297 ], [ %986, %980 ], [ %1898, %2012 ], [ %1898, %2010 ], [ %1898, %1964 ], [ %1898, %1928 ], [ %986, %1001 ]
  %2045 = phi float [ %1899, %1897 ], [ %987, %1297 ], [ %987, %980 ], [ %1899, %2012 ], [ %1899, %2010 ], [ %1899, %1964 ], [ %1899, %1928 ], [ %987, %1001 ]
  %2046 = phi float [ %1900, %1897 ], [ %988, %1297 ], [ %988, %980 ], [ %1900, %2012 ], [ %1900, %2010 ], [ %1900, %1964 ], [ %1900, %1928 ], [ %988, %1001 ]
  %2047 = phi float [ %989, %1897 ], [ %989, %1297 ], [ %989, %980 ], [ %2027, %2012 ], [ %989, %2010 ], [ %1999, %1964 ], [ %1947, %1928 ], [ %989, %1001 ]
  %2048 = phi float [ %990, %1897 ], [ %990, %1297 ], [ %990, %980 ], [ %2028, %2012 ], [ %990, %2010 ], [ %2000, %1964 ], [ %1948, %1928 ], [ %990, %1001 ]
  %2049 = phi float [ %991, %1897 ], [ %991, %1297 ], [ %991, %980 ], [ %2029, %2012 ], [ %991, %2010 ], [ %2001, %1964 ], [ %1949, %1928 ], [ %991, %1001 ]
  %2050 = phi float [ %1901, %1897 ], [ %992, %1297 ], [ %992, %980 ], [ %1901, %2012 ], [ %1901, %2010 ], [ %1901, %1964 ], [ %1901, %1928 ], [ %992, %1001 ]
  %2051 = phi float [ %1902, %1897 ], [ %993, %1297 ], [ %993, %980 ], [ %1902, %2012 ], [ %1902, %2010 ], [ %1902, %1964 ], [ %1902, %1928 ], [ %993, %1001 ]
  %2052 = phi float [ %1903, %1897 ], [ %994, %1297 ], [ %994, %980 ], [ %1903, %2012 ], [ %1903, %2010 ], [ %1903, %1964 ], [ %1903, %1928 ], [ %994, %1001 ]
  %2053 = phi float [ %1904, %1897 ], [ %995, %1297 ], [ %995, %980 ], [ %1904, %2012 ], [ %1904, %2010 ], [ %1904, %1964 ], [ %1904, %1928 ], [ %995, %1001 ]
  %2054 = phi float [ %997, %1897 ], [ %997, %1297 ], [ %997, %980 ], [ %2023, %2012 ], [ %997, %2010 ], [ %1995, %1964 ], [ %1940, %1928 ], [ %997, %1001 ]
  %2055 = phi float [ %998, %1897 ], [ %998, %1297 ], [ %998, %980 ], [ %2020, %2012 ], [ %998, %2010 ], [ %1972, %1964 ], [ %1937, %1928 ], [ %998, %1001 ]
  %2056 = phi float [ %999, %1897 ], [ %999, %1297 ], [ %999, %980 ], [ %2031, %2012 ], [ %999, %2010 ], [ %2003, %1964 ], [ %1952, %1928 ], [ %999, %1001 ]
  %2057 = phi float [ %1905, %1897 ], [ %1000, %1297 ], [ %1000, %980 ], [ %1905, %2012 ], [ %1905, %2010 ], [ %1905, %1964 ], [ %1905, %1928 ], [ %1000, %1001 ]
  br i1 %349, label %3095, label %2058

; <label>:2058                                    ; preds = %2038
  %2059 = icmp ult i32 %402, 3
  %2060 = add i32 %32, 56
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = add i32 %32, 60
  %2064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2063, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.i32 %2064, 0
  %2066 = or i32 %2065, %2062
  %2067 = icmp eq i32 %2066, 0
  br i1 %2067, label %3095, label %2068

; <label>:2068                                    ; preds = %2058
  %2069 = and i32 %2062, 262144
  %2070 = icmp ne i32 %2069, 0
  %2071 = select i1 %2070, float %34, float 1.000000e+00
  %2072 = select i1 %2070, float %35, float 0.000000e+00
  %2073 = select i1 %2070, float %36, float 0.000000e+00
  %2074 = select i1 %2070, float %37, float 1.000000e+00
  %2075 = select i1 %2070, float %38, float %59
  %2076 = select i1 %2070, float %39, float %60
  %2077 = add i32 %32, 316
  %2078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.i32 %2078, 0
  %2080 = lshr i32 %2079, 16
  %2081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2080)  ; LegacyF16ToF32(value)
  %2082 = fmul fast float %2081, 0x3F50624DE0000000
  %2083 = add i32 %32, 120
  %2084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.i32 %2084, 0
  %2086 = lshr i32 %2085, 16
  %2087 = and i32 %2086, 255
  %2088 = lshr i32 %2085, 24
  %2089 = add i32 %32, 324
  %2090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2089, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.i32 %2090, 0
  %2092 = and i32 %2091, 65535
  %2093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2092)  ; LegacyF16ToF32(value)
  %2094 = lshr i32 %2091, 16
  %2095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2094)  ; LegacyF16ToF32(value)
  %2096 = add i32 %32, 64
  %2097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2098 = extractvalue %dx.types.ResRet.i32 %2097, 0
  %2099 = lshr i32 %2098, 22
  %2100 = shl nuw nsw i32 %2099, 5
  %2101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2100)  ; LegacyF16ToF32(value)
  %2102 = shl i32 %2098, 4
  %2103 = and i32 %2102, 32752
  %2104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2103)  ; LegacyF16ToF32(value)
  %2105 = lshr i32 %2098, 7
  %2106 = and i32 %2105, 32752
  %2107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2106)  ; LegacyF16ToF32(value)
  %2108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2109 = extractvalue %dx.types.CBufRet.f32 %2108, 3
  %2110 = fmul fast float %2109, 1.000000e+03
  %2111 = fmul fast float %299, %2110
  %2112 = call float @dx.op.unary.f32(i32 22, float %2111)  ; Frc(value)
  %2113 = fadd fast float %2112, %289
  %2114 = fmul fast float %300, %2110
  %2115 = call float @dx.op.unary.f32(i32 22, float %2114)  ; Frc(value)
  %2116 = fadd fast float %2115, %291
  %2117 = fmul fast float %2082, %2110
  %2118 = call float @dx.op.unary.f32(i32 22, float %2117)  ; Frc(value)
  %2119 = fmul fast float %2118, 0x401921FB60000000
  %2120 = fadd fast float %2119, %2101
  %2121 = call float @dx.op.unary.f32(i32 13, float %2120)  ; Sin(value)
  %2122 = call float @dx.op.unary.f32(i32 12, float %2120)  ; Cos(value)
  %2123 = fsub fast float -0.000000e+00, %2121
  %2124 = fadd fast float %2075, -5.000000e-01
  %2125 = fadd fast float %2076, -5.000000e-01
  %2126 = fmul fast float %2093, %2124
  %2127 = fmul fast float %2095, %2125
  %2128 = fadd fast float %2126, 5.000000e-01
  %2129 = fadd fast float %2127, 5.000000e-01
  %2130 = fmul fast float %2104, %2128
  %2131 = fmul fast float %2107, %2129
  %2132 = fmul fast float %2122, %2130
  %2133 = call float @dx.op.tertiary.f32(i32 46, float %2123, float %2131, float %2132)  ; FMad(a,b,c)
  %2134 = fmul fast float %2121, %2130
  %2135 = call float @dx.op.tertiary.f32(i32 46, float %2122, float %2131, float %2134)  ; FMad(a,b,c)
  %2136 = fadd fast float %2113, %2133
  %2137 = fadd fast float %2116, %2135
  %2138 = icmp ugt i32 %2087, 1
  %2139 = icmp ugt i32 %2085, 33554431
  %2140 = or i1 %2139, %2138
  br i1 %2140, label %2141, label %2166

; <label>:2141                                    ; preds = %2068
  %2142 = add i32 %32, 260
  %2143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2142, i32 undef)  ; BufferLoad(srv,index,wot)
  %2144 = extractvalue %dx.types.ResRet.i32 %2143, 0
  %2145 = lshr i32 %2144, 16
  %2146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2145)  ; LegacyF16ToF32(value)
  %2147 = fmul fast float %2109, %2146
  %2148 = call float @dx.op.unary.f32(i32 22, float %2147)  ; Frc(value)
  %2149 = mul nuw nsw i32 %2087, %2088
  %2150 = uitofp i32 %2149 to float
  %2151 = fmul fast float %2148, %2150
  %2152 = call float @dx.op.unary.f32(i32 27, float %2151)  ; Round_ni(value)
  %2153 = fptoui float %2152 to i32
  %2154 = urem i32 %2153, %2087
  %2155 = udiv i32 %2153, %2088
  %2156 = call float @dx.op.unary.f32(i32 22, float %2136)  ; Frc(value)
  %2157 = call float @dx.op.unary.f32(i32 22, float %2137)  ; Frc(value)
  %2158 = uitofp i32 %2154 to float
  %2159 = uitofp i32 %2155 to float
  %2160 = fadd fast float %2156, %2158
  %2161 = fadd fast float %2157, %2159
  %2162 = uitofp i32 %2087 to float
  %2163 = uitofp i32 %2088 to float
  %2164 = fdiv fast float %2160, %2162
  %2165 = fdiv fast float %2161, %2163
  br label %2166

; <label>:2166                                    ; preds = %2141, %2068
  %2167 = phi float [ %2164, %2141 ], [ %2136, %2068 ]
  %2168 = phi float [ %2165, %2141 ], [ %2137, %2068 ]
  %2169 = and i32 %2062, 16777216
  %2170 = icmp eq i32 %2169, 0
  br i1 %2170, label %2280, label %2171

; <label>:2171                                    ; preds = %2166
  %2172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2173 = extractvalue %dx.types.CBufRet.f32 %2172, 0
  %2174 = extractvalue %dx.types.CBufRet.f32 %2172, 1
  %2175 = extractvalue %dx.types.CBufRet.f32 %2172, 2
  %2176 = fadd fast float %2173, %130
  %2177 = fadd fast float %2174, %131
  %2178 = fadd fast float %2175, %132
  %2179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2180 = extractvalue %dx.types.CBufRet.f32 %2179, 0
  %2181 = call float @dx.op.unary.f32(i32 7, float %2180)  ; Saturate(value)
  %2182 = icmp eq i32 %33, 65535
  br i1 %2182, label %2277, label %2183

; <label>:2183                                    ; preds = %2171
  %2184 = lshr i32 %33, 1
  %2185 = shl i32 %2184, 2
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2185, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = and i32 %33, 1
  %2189 = icmp ne i32 %2188, 0
  %2190 = lshr i32 %2187, 16
  %2191 = and i32 %2187, 65535
  %2192 = select i1 %2189, i32 %2190, i32 %2191
  %2193 = icmp eq i32 %2192, 65535
  br i1 %2193, label %2273, label %2194

; <label>:2194                                    ; preds = %2183
  %2195 = mul nuw nsw i32 %2192, 40
  %2196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2195, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.f32 %2196, 0
  %2198 = extractvalue %dx.types.ResRet.f32 %2196, 1
  %2199 = extractvalue %dx.types.ResRet.f32 %2196, 2
  %2200 = add nuw nsw i32 %2195, 12
  %2201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.f32 %2201, 0
  %2203 = extractvalue %dx.types.ResRet.f32 %2201, 1
  %2204 = extractvalue %dx.types.ResRet.f32 %2201, 2
  %2205 = add nuw nsw i32 %2195, 24
  %2206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2205, i32 undef)  ; BufferLoad(srv,index,wot)
  %2207 = extractvalue %dx.types.ResRet.f32 %2206, 0
  %2208 = extractvalue %dx.types.ResRet.f32 %2206, 1
  %2209 = extractvalue %dx.types.ResRet.f32 %2206, 2
  %2210 = add nuw nsw i32 %2195, 36
  %2211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2210, i32 undef)  ; BufferLoad(srv,index,wot)
  %2212 = extractvalue %dx.types.ResRet.f32 %2211, 0
  %2213 = fsub fast float %2176, %2197
  %2214 = fsub fast float %2177, %2198
  %2215 = fsub fast float %2178, %2199
  %2216 = fmul fast float %2212, %2213
  %2217 = fmul fast float %2212, %2214
  %2218 = fmul fast float %2212, %2215
  %2219 = call float @dx.op.unary.f32(i32 27, float %2216)  ; Round_ni(value)
  %2220 = call float @dx.op.unary.f32(i32 27, float %2217)  ; Round_ni(value)
  %2221 = call float @dx.op.unary.f32(i32 27, float %2218)  ; Round_ni(value)
  %2222 = fadd fast float %2219, 5.000000e-01
  %2223 = fadd fast float %2220, 5.000000e-01
  %2224 = fadd fast float %2221, 5.000000e-01
  %2225 = fmul fast float %2222, %2202
  %2226 = fmul fast float %2223, %2203
  %2227 = fmul fast float %2224, %2204
  %2228 = shl i32 %33, 2
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2228, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = add i32 %2230, 0
  %2232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2231, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2233 = call float @dx.op.unary.f32(i32 22, float %2225)  ; Frc(value)
  %2234 = call float @dx.op.unary.f32(i32 22, float %2226)  ; Frc(value)
  %2235 = call float @dx.op.unary.f32(i32 22, float %2227)  ; Frc(value)
  %2236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2232, %dx.types.Handle %27, float %2233, float %2234, float %2235, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2237 = extractvalue %dx.types.ResRet.f32 %2236, 0
  %2238 = extractvalue %dx.types.ResRet.f32 %2236, 1
  %2239 = extractvalue %dx.types.ResRet.f32 %2236, 2
  %2240 = fmul fast float %2237, 1.023000e+03
  %2241 = fmul fast float %2238, 1.023000e+03
  %2242 = fmul fast float %2239, 1.023000e+03
  %2243 = fadd fast float %2240, 5.000000e-01
  %2244 = fadd fast float %2241, 5.000000e-01
  %2245 = fadd fast float %2242, 5.000000e-01
  %2246 = call float @dx.op.unary.f32(i32 27, float %2243)  ; Round_ni(value)
  %2247 = call float @dx.op.unary.f32(i32 27, float %2244)  ; Round_ni(value)
  %2248 = call float @dx.op.unary.f32(i32 27, float %2245)  ; Round_ni(value)
  %2249 = fsub fast float %2216, %2219
  %2250 = fsub fast float %2217, %2220
  %2251 = fsub fast float %2218, %2221
  %2252 = fmul fast float %2249, 7.500000e-01
  %2253 = fmul fast float %2250, 7.500000e-01
  %2254 = fmul fast float %2251, 7.500000e-01
  %2255 = fadd fast float %2219, 1.250000e-01
  %2256 = fadd fast float %2255, %2252
  %2257 = fadd fast float %2256, %2246
  %2258 = fadd fast float %2220, 1.250000e-01
  %2259 = fadd fast float %2258, %2253
  %2260 = fadd fast float %2259, %2247
  %2261 = fadd fast float %2221, 1.250000e-01
  %2262 = fadd fast float %2261, %2254
  %2263 = fadd fast float %2262, %2248
  %2264 = fmul fast float %2257, %2207
  %2265 = fmul fast float %2260, %2208
  %2266 = fmul fast float %2263, %2209
  %2267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2228, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.i32 %2267, 0
  %2269 = add i32 %2268, 0
  %2270 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2269, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2270, %dx.types.Handle %25, float %2264, float %2265, float %2266, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2272 = extractvalue %dx.types.ResRet.f32 %2271, 0
  br label %2273

; <label>:2273                                    ; preds = %2194, %2183
  %2274 = phi float [ %2272, %2194 ], [ -1.000000e+00, %2183 ]
  %2275 = fadd fast float %2274, %2181
  %2276 = call float @dx.op.unary.f32(i32 7, float %2275)  ; Saturate(value)
  br label %2277

; <label>:2277                                    ; preds = %2273, %2171
  %2278 = phi float [ %2276, %2273 ], [ %2181, %2171 ]
  %2279 = fmul fast float %2278, %398
  br label %2280

; <label>:2280                                    ; preds = %2277, %2166
  %2281 = phi float [ %2279, %2277 ], [ %398, %2166 ]
  %2282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2283 = extractvalue %dx.types.ResRet.i32 %2282, 0
  %2284 = and i32 %2283, 256
  %2285 = icmp eq i32 %2284, 0
  br i1 %2285, label %2332, label %2286

; <label>:2286                                    ; preds = %2280
  %2287 = add i32 %32, 432
  %2288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2287, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.i32 %2288, 0
  %2290 = add i32 %2289, 0
  %2291 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2290, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2292 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2291, %dx.types.Handle %68, float %2167, float %2168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2293 = extractvalue %dx.types.ResRet.f32 %2292, 0
  %2294 = add i32 %32, 132
  %2295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2294, i32 undef)  ; BufferLoad(srv,index,wot)
  %2296 = extractvalue %dx.types.ResRet.i32 %2295, 0
  %2297 = shl i32 %2296, 4
  %2298 = and i32 %2297, 32752
  %2299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2298)  ; LegacyF16ToF32(value)
  %2300 = lshr i32 %2296, 7
  %2301 = and i32 %2300, 32752
  %2302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2301)  ; LegacyF16ToF32(value)
  %2303 = fsub fast float 1.000000e+00, %2281
  %2304 = call float @dx.op.binary.f32(i32 35, float %2303, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2305 = bitcast float %2281 to i32
  %2306 = sitofp i32 %2305 to float
  %2307 = fadd fast float %2306, 0xC1CFBF8940000000
  %2308 = fmul fast float %2302, %2307
  %2309 = fadd fast float %2308, 0x41CFBF8940000000
  %2310 = fptosi float %2309 to i32
  %2311 = bitcast i32 %2310 to float
  %2312 = bitcast float %2304 to i32
  %2313 = sitofp i32 %2312 to float
  %2314 = fadd fast float %2313, 0xC1CFBF8940000000
  %2315 = fmul fast float %2314, %2302
  %2316 = fadd fast float %2315, 0x41CFBF8940000000
  %2317 = fptosi float %2316 to i32
  %2318 = bitcast i32 %2317 to float
  %2319 = fmul fast float %2311, %2299
  %2320 = fmul fast float %2318, %2299
  %2321 = fsub fast float %2304, %2319
  %2322 = fadd fast float %2320, %2304
  %2323 = call float @dx.op.unary.f32(i32 7, float %2321)  ; Saturate(value)
  %2324 = call float @dx.op.unary.f32(i32 7, float %2322)  ; Saturate(value)
  %2325 = fsub fast float %2293, %2323
  %2326 = fsub fast float %2324, %2323
  %2327 = bitcast float %2326 to i32
  %2328 = sub nsw i32 2129859010, %2327
  %2329 = bitcast i32 %2328 to float
  %2330 = fmul fast float %2329, %2325
  %2331 = call float @dx.op.unary.f32(i32 7, float %2330)  ; Saturate(value)
  br label %2332

; <label>:2332                                    ; preds = %2286, %2280
  %2333 = phi float [ %2331, %2286 ], [ %2281, %2280 ]
  %2334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.i32 %2334, 0
  %2336 = and i32 %2335, 128
  %2337 = icmp eq i32 %2336, 0
  br i1 %2337, label %2354, label %2338

; <label>:2338                                    ; preds = %2332
  %2339 = add i32 %32, 416
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = add i32 %2341, 0
  %2343 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2342, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2344 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2343, %dx.types.Handle %68, float %2167, float %2168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2345 = extractvalue %dx.types.ResRet.f32 %2344, 0
  %2346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2347 = extractvalue %dx.types.ResRet.i32 %2346, 0
  %2348 = and i32 %2347, 524288
  %2349 = icmp ne i32 %2348, 0
  %2350 = fcmp fast ogt float %2345, 0x3FE0101020000000
  %2351 = select i1 %2350, float 1.000000e+00, float 0.000000e+00
  %2352 = select i1 %2349, float %2351, float %2345
  %2353 = fmul fast float %2352, %2333
  br label %2354

; <label>:2354                                    ; preds = %2338, %2332
  %2355 = phi float [ %2353, %2338 ], [ %2333, %2332 ]
  %2356 = fcmp fast ult float %2355, 0x3F70101020000000
  br i1 %2356, label %3095, label %2357

; <label>:2357                                    ; preds = %2354
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = and i32 %2359, 16
  %2361 = icmp eq i32 %2360, 0
  br i1 %2361, label %2560, label %2362

; <label>:2362                                    ; preds = %2357
  %2363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2364 = extractvalue %dx.types.ResRet.i32 %2363, 0
  %2365 = add i32 %32, 368
  %2366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2365, i32 undef)  ; BufferLoad(srv,index,wot)
  %2367 = extractvalue %dx.types.ResRet.i32 %2366, 0
  %2368 = add i32 %2367, 0
  %2369 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2368, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2370 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2369, %dx.types.Handle %67, float %2167, float %2168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2371 = extractvalue %dx.types.ResRet.f32 %2370, 0
  %2372 = extractvalue %dx.types.ResRet.f32 %2370, 1
  %2373 = extractvalue %dx.types.ResRet.f32 %2370, 2
  %2374 = extractvalue %dx.types.ResRet.f32 %2370, 3
  %2375 = and i32 %2364, 255
  %2376 = uitofp i32 %2375 to float
  %2377 = lshr i32 %2364, 8
  %2378 = and i32 %2377, 255
  %2379 = uitofp i32 %2378 to float
  %2380 = fmul fast float %2374, %2376
  %2381 = fadd fast float %2380, %2379
  %2382 = fmul fast float %2381, 0x3F70101000000000
  %2383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2384 = extractvalue %dx.types.ResRet.i32 %2383, 0
  %2385 = and i32 %2384, 512
  %2386 = icmp eq i32 %2385, 0
  br i1 %2386, label %2395, label %2387

; <label>:2387                                    ; preds = %2362
  %2388 = add i32 %32, 448
  %2389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2388, i32 undef)  ; BufferLoad(srv,index,wot)
  %2390 = extractvalue %dx.types.ResRet.i32 %2389, 0
  %2391 = add i32 %2390, 0
  %2392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2391, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2393 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2392, %dx.types.Handle %68, float %2167, float %2168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2394 = extractvalue %dx.types.ResRet.f32 %2393, 0
  br label %2395

; <label>:2395                                    ; preds = %2387, %2362
  %2396 = phi float [ %2394, %2387 ], [ 1.000000e+00, %2362 ]
  %2397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2398 = extractvalue %dx.types.ResRet.i32 %2397, 0
  %2399 = and i32 %2398, 33554432
  %2400 = icmp eq i32 %2399, 0
  br i1 %2400, label %2507, label %2401

; <label>:2401                                    ; preds = %2395
  %2402 = add i32 %32, 256
  %2403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2404 = extractvalue %dx.types.ResRet.i32 %2403, 0
  %2405 = and i32 %2404, 65535
  %2406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2405)  ; LegacyF16ToF32(value)
  %2407 = lshr i32 %2404, 16
  %2408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2407)  ; LegacyF16ToF32(value)
  %2409 = add i32 %32, 260
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2409, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = and i32 %2411, 65535
  %2413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2412)  ; LegacyF16ToF32(value)
  %2414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2415 = extractvalue %dx.types.ResRet.i32 %2414, 0
  %2416 = lshr i32 %2415, 24
  %2417 = uitofp i32 %2416 to float
  %2418 = fmul fast float %2417, 0x3F70101020000000
  %2419 = and i32 %2415, 255
  %2420 = uitofp i32 %2419 to float
  %2421 = fmul fast float %2420, 0x3F70101020000000
  %2422 = lshr i32 %2415, 8
  %2423 = and i32 %2422, 255
  %2424 = uitofp i32 %2423 to float
  %2425 = fmul fast float %2424, 0x3F70101020000000
  %2426 = lshr i32 %2415, 16
  %2427 = and i32 %2426, 255
  %2428 = uitofp i32 %2427 to float
  %2429 = fmul fast float %2428, 0x3F70101020000000
  %2430 = add i32 %32, 252
  %2431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2430, i32 undef)  ; BufferLoad(srv,index,wot)
  %2432 = extractvalue %dx.types.ResRet.i32 %2431, 0
  %2433 = lshr i32 %2432, 24
  %2434 = uitofp i32 %2433 to float
  %2435 = fmul fast float %2434, 0x3F70101020000000
  %2436 = and i32 %2432, 255
  %2437 = uitofp i32 %2436 to float
  %2438 = fmul fast float %2437, 0x3F70101020000000
  %2439 = lshr i32 %2432, 8
  %2440 = and i32 %2439, 255
  %2441 = uitofp i32 %2440 to float
  %2442 = fmul fast float %2441, 0x3F70101020000000
  %2443 = lshr i32 %2432, 16
  %2444 = and i32 %2443, 255
  %2445 = uitofp i32 %2444 to float
  %2446 = fmul fast float %2445, 0x3F70101020000000
  %2447 = bitcast float %2371 to i32
  %2448 = ashr i32 %2447, 1
  %2449 = sub nsw i32 1597463174, %2448
  %2450 = bitcast i32 %2449 to float
  %2451 = fmul fast float %2371, 5.000000e-01
  %2452 = fmul fast float %2450, %2450
  %2453 = fmul fast float %2452, %2451
  %2454 = fsub fast float 1.500000e+00, %2453
  %2455 = fmul fast float %2450, %2371
  %2456 = fmul fast float %2455, %2454
  %2457 = bitcast float %2372 to i32
  %2458 = ashr i32 %2457, 1
  %2459 = sub nsw i32 1597463174, %2458
  %2460 = bitcast i32 %2459 to float
  %2461 = fmul fast float %2372, 5.000000e-01
  %2462 = fmul fast float %2460, %2460
  %2463 = fmul fast float %2462, %2461
  %2464 = fsub fast float 1.500000e+00, %2463
  %2465 = fmul fast float %2460, %2372
  %2466 = fmul fast float %2465, %2464
  %2467 = bitcast float %2373 to i32
  %2468 = ashr i32 %2467, 1
  %2469 = sub nsw i32 1597463174, %2468
  %2470 = bitcast i32 %2469 to float
  %2471 = fmul fast float %2373, 5.000000e-01
  %2472 = fmul fast float %2470, %2470
  %2473 = fmul fast float %2472, %2471
  %2474 = fsub fast float 1.500000e+00, %2473
  %2475 = fmul fast float %2470, %2373
  %2476 = fmul fast float %2475, %2474
  %2477 = fsub fast float %2456, %2438
  %2478 = fsub fast float %2466, %2442
  %2479 = fsub fast float %2476, %2446
  %2480 = fmul fast float %2477, %2406
  %2481 = fmul fast float %2478, %2408
  %2482 = fmul fast float %2479, %2413
  %2483 = fadd fast float %2480, %2421
  %2484 = fadd fast float %2481, %2425
  %2485 = fadd fast float %2482, %2429
  %2486 = call float @dx.op.unary.f32(i32 7, float %2483)  ; Saturate(value)
  %2487 = call float @dx.op.unary.f32(i32 7, float %2484)  ; Saturate(value)
  %2488 = call float @dx.op.unary.f32(i32 7, float %2485)  ; Saturate(value)
  %2489 = fmul fast float %2486, %2486
  %2490 = fmul fast float %2487, %2487
  %2491 = fmul fast float %2488, %2488
  %2492 = fsub fast float %2489, %2371
  %2493 = fsub fast float %2490, %2372
  %2494 = fsub fast float %2491, %2373
  %2495 = fmul fast float %2492, %2396
  %2496 = fmul fast float %2493, %2396
  %2497 = fmul fast float %2494, %2396
  %2498 = fadd fast float %2495, %2371
  %2499 = fadd fast float %2496, %2372
  %2500 = fadd fast float %2497, %2373
  %2501 = fadd fast float %2418, %2382
  %2502 = fsub fast float %2501, %2435
  %2503 = call float @dx.op.unary.f32(i32 7, float %2502)  ; Saturate(value)
  %2504 = fsub fast float %2503, %2382
  %2505 = fmul fast float %2504, %2396
  %2506 = fadd fast float %2505, %2382
  br label %2560

; <label>:2507                                    ; preds = %2395
  %2508 = and i32 %2398, 134217728
  %2509 = icmp eq i32 %2508, 0
  br i1 %2509, label %2544, label %2510

; <label>:2510                                    ; preds = %2507
  %2511 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %2512 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %2513 = call float @dx.op.unary.f32(i32 24, float %284)  ; Sqrt(value)
  %2514 = fadd fast float %2511, -5.000000e-01
  %2515 = fadd fast float %2512, -5.000000e-01
  %2516 = fadd fast float %2513, -5.000000e-01
  %2517 = fmul fast float %2514, %2396
  %2518 = fmul fast float %2515, %2396
  %2519 = fmul fast float %2516, %2396
  %2520 = fadd fast float %2517, 5.000000e-01
  %2521 = fadd fast float %2518, 5.000000e-01
  %2522 = fadd fast float %2519, 5.000000e-01
  %2523 = call float @dx.op.unary.f32(i32 24, float %2371)  ; Sqrt(value)
  %2524 = call float @dx.op.unary.f32(i32 24, float %2372)  ; Sqrt(value)
  %2525 = call float @dx.op.unary.f32(i32 24, float %2373)  ; Sqrt(value)
  %2526 = fmul fast float %2520, 2.000000e+00
  %2527 = fsub fast float 1.000000e+00, %2526
  %2528 = fmul fast float %2527, %2523
  %2529 = fadd fast float %2528, %2526
  %2530 = fmul fast float %2529, %2523
  %2531 = fmul fast float %2521, 2.000000e+00
  %2532 = fsub fast float 1.000000e+00, %2531
  %2533 = fmul fast float %2532, %2524
  %2534 = fadd fast float %2533, %2531
  %2535 = fmul fast float %2534, %2524
  %2536 = fmul fast float %2522, 2.000000e+00
  %2537 = fsub fast float 1.000000e+00, %2536
  %2538 = fmul fast float %2537, %2525
  %2539 = fadd fast float %2538, %2536
  %2540 = fmul fast float %2539, %2525
  %2541 = fmul fast float %2530, %2530
  %2542 = fmul fast float %2535, %2535
  %2543 = fmul fast float %2540, %2540
  br label %2560

; <label>:2544                                    ; preds = %2507
  %2545 = fmul fast float %276, %276
  %2546 = fmul fast float %280, %280
  %2547 = fmul fast float %284, %284
  %2548 = fadd fast float %2545, -1.000000e+00
  %2549 = fadd fast float %2546, -1.000000e+00
  %2550 = fadd fast float %2547, -1.000000e+00
  %2551 = fmul fast float %2396, %2548
  %2552 = fmul fast float %2396, %2549
  %2553 = fmul fast float %2396, %2550
  %2554 = fadd fast float %2551, 1.000000e+00
  %2555 = fadd fast float %2552, 1.000000e+00
  %2556 = fadd fast float %2553, 1.000000e+00
  %2557 = fmul fast float %2554, %2371
  %2558 = fmul fast float %2555, %2372
  %2559 = fmul fast float %2556, %2373
  br label %2560

; <label>:2560                                    ; preds = %2544, %2510, %2401, %2357
  %2561 = phi float [ %2506, %2401 ], [ %2382, %2510 ], [ %2382, %2544 ], [ 0x3FA23C0BE0000000, %2357 ]
  %2562 = phi float [ %2498, %2401 ], [ %2541, %2510 ], [ %2557, %2544 ], [ 1.000000e+00, %2357 ]
  %2563 = phi float [ %2499, %2401 ], [ %2542, %2510 ], [ %2558, %2544 ], [ 1.000000e+00, %2357 ]
  %2564 = phi float [ %2500, %2401 ], [ %2543, %2510 ], [ %2559, %2544 ], [ 1.000000e+00, %2357 ]
  %2565 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2566 = extractvalue %dx.types.CBufRet.i32 %2565, 1
  %2567 = and i32 %2566, 1
  %2568 = icmp ne i32 %2567, 0
  %2569 = add i32 %32, 356
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2569, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = and i32 %2571, 32
  %2573 = icmp ne i32 %2572, 0
  %2574 = and i1 %2568, %2573
  %2575 = select i1 %2574, float 1.000000e+00, float %2562
  %2576 = select i1 %2574, float 0x3FD3333340000000, float %2563
  %2577 = select i1 %2574, float 0x3FD3333340000000, float %2564
  %2578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2579 = extractvalue %dx.types.ResRet.i32 %2578, 0
  %2580 = and i32 %2579, 32
  %2581 = icmp eq i32 %2580, 0
  br i1 %2581, label %2654, label %2582

; <label>:2582                                    ; preds = %2560
  %2583 = add i32 %32, 124
  %2584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %2585 = extractvalue %dx.types.ResRet.i32 %2584, 0
  %2586 = add i32 %32, 384
  %2587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2588 = extractvalue %dx.types.ResRet.i32 %2587, 0
  %2589 = add i32 %2588, 0
  %2590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2589, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2591 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2590, %dx.types.Handle %67, float %2167, float %2168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2592 = extractvalue %dx.types.ResRet.f32 %2591, 0
  %2593 = extractvalue %dx.types.ResRet.f32 %2591, 1
  %2594 = extractvalue %dx.types.ResRet.f32 %2591, 2
  %2595 = extractvalue %dx.types.ResRet.f32 %2591, 3
  %2596 = and i32 %2585, 255
  %2597 = uitofp i32 %2596 to float
  %2598 = lshr i32 %2585, 8
  %2599 = and i32 %2598, 255
  %2600 = uitofp i32 %2599 to float
  %2601 = lshr i32 %2585, 16
  %2602 = and i32 %2601, 255
  %2603 = uitofp i32 %2602 to float
  %2604 = fmul fast float %2603, 0x3F70101000000000
  %2605 = fmul fast float %2592, %2597
  %2606 = fadd fast float %2605, %2600
  %2607 = fmul fast float %2606, 0x3F70101000000000
  %2608 = fadd fast float %2593, -5.000000e-01
  %2609 = fadd fast float %2595, -5.000000e-01
  %2610 = fmul fast float %2608, %2604
  %2611 = fmul fast float %2609, %2604
  %2612 = fadd fast float %2610, 5.000000e-01
  %2613 = fadd fast float %2611, 5.000000e-01
  %2614 = fmul fast float %2612, 2.000000e+00
  %2615 = fadd fast float %2614, -1.000000e+00
  %2616 = fmul fast float %2613, 2.000000e+00
  %2617 = fadd fast float %2616, -1.000000e+00
  %2618 = fadd fast float %2615, %2617
  %2619 = fmul fast float %2618, 5.000000e-01
  %2620 = fsub fast float %2615, %2617
  %2621 = fmul fast float %2620, 5.000000e-01
  %2622 = call float @dx.op.unary.f32(i32 6, float %2619)  ; FAbs(value)
  %2623 = fsub fast float 1.000000e+00, %2622
  %2624 = call float @dx.op.unary.f32(i32 6, float %2621)  ; FAbs(value)
  %2625 = fsub fast float %2623, %2624
  %2626 = call float @dx.op.dot3.f32(i32 55, float %2619, float %2621, float %2625, float %2619, float %2621, float %2625)  ; Dot3(ax,ay,az,bx,by,bz)
  %2627 = call float @dx.op.unary.f32(i32 25, float %2626)  ; Rsqrt(value)
  %2628 = fmul fast float %2619, %2627
  %2629 = fmul fast float %2621, %2627
  %2630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2631 = extractvalue %dx.types.ResRet.i32 %2630, 0
  %2632 = and i32 %2631, 67108864
  %2633 = icmp eq i32 %2632, 0
  br i1 %2633, label %2650, label %2634

; <label>:2634                                    ; preds = %2582
  %2635 = add i32 %32, 312
  %2636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2635, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.i32 %2636, 0
  %2638 = and i32 %2637, 65535
  %2639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2638)  ; LegacyF16ToF32(value)
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = and i32 %2641, 65535
  %2643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2642)  ; LegacyF16ToF32(value)
  %2644 = lshr i32 %2637, 16
  %2645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2644)  ; LegacyF16ToF32(value)
  %2646 = fsub fast float %2607, %2645
  %2647 = fmul fast float %2646, %2639
  %2648 = fadd fast float %2647, %2643
  %2649 = call float @dx.op.unary.f32(i32 7, float %2648)  ; Saturate(value)
  br label %2650

; <label>:2650                                    ; preds = %2634, %2582
  %2651 = phi float [ %2649, %2634 ], [ %2607, %2582 ]
  %2652 = call float @dx.op.dot2.f32(i32 54, float %2628, float %2629, float %2071, float %2072)  ; Dot2(ax,ay,bx,by)
  %2653 = call float @dx.op.dot2.f32(i32 54, float %2628, float %2629, float %2073, float %2074)  ; Dot2(ax,ay,bx,by)
  br label %2654

; <label>:2654                                    ; preds = %2650, %2560
  %2655 = phi float [ %2651, %2650 ], [ 0x3FD6666660000000, %2560 ]
  %2656 = phi float [ %2652, %2650 ], [ 0.000000e+00, %2560 ]
  %2657 = phi float [ %2653, %2650 ], [ 0.000000e+00, %2560 ]
  %2658 = phi float [ %2594, %2650 ], [ 1.000000e+00, %2560 ]
  %2659 = add i32 %32, 192
  %2660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2659, i32 undef)  ; BufferLoad(srv,index,wot)
  %2661 = extractvalue %dx.types.ResRet.i32 %2660, 0
  %2662 = lshr i32 %2661, 22
  %2663 = shl nuw nsw i32 %2662, 5
  %2664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2663)  ; LegacyF16ToF32(value)
  %2665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2666 = extractvalue %dx.types.ResRet.i32 %2665, 0
  %2667 = and i32 %2666, 64
  %2668 = icmp eq i32 %2667, 0
  br i1 %2668, label %2702, label %2669

; <label>:2669                                    ; preds = %2654
  %2670 = add i32 %32, 400
  %2671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %2672 = extractvalue %dx.types.ResRet.i32 %2671, 0
  %2673 = add i32 %2672, 0
  %2674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2673, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2676 = extractvalue %dx.types.ResRet.i32 %2675, 0
  %2677 = and i32 %2676, 131072
  %2678 = icmp eq i32 %2677, 0
  %2679 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2674, %dx.types.Handle %67, float %2167, float %2168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2680 = extractvalue %dx.types.ResRet.f32 %2679, 0
  %2681 = extractvalue %dx.types.ResRet.f32 %2679, 1
  %2682 = extractvalue %dx.types.ResRet.f32 %2679, 2
  %2683 = fmul fast float %2680, %264
  %2684 = fmul fast float %2681, %267
  %2685 = fmul fast float %2682, %270
  br i1 %2678, label %2692, label %2686

; <label>:2686                                    ; preds = %2669
  %2687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2688 = extractvalue %dx.types.CBufRet.f32 %2687, 0
  %2689 = fmul fast float %2688, %2683
  %2690 = fmul fast float %2688, %2684
  %2691 = fmul fast float %2688, %2685
  br label %2692

; <label>:2692                                    ; preds = %2686, %2669
  %2693 = phi float [ %2689, %2686 ], [ %2683, %2669 ]
  %2694 = phi float [ %2690, %2686 ], [ %2684, %2669 ]
  %2695 = phi float [ %2691, %2686 ], [ %2685, %2669 ]
  %2696 = fmul fast float %2693, %2664
  %2697 = select i1 %174, float %2696, float %2693
  %2698 = call float @dx.op.dot3.f32(i32 55, float %2697, float %2694, float %2695, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2699 = select i1 %174, float 0.000000e+00, float %2693
  %2700 = select i1 %174, float %2698, float %2694
  %2701 = select i1 %174, float 0.000000e+00, float %2695
  br label %2702

; <label>:2702                                    ; preds = %2692, %2654
  %2703 = phi float [ %2699, %2692 ], [ 0.000000e+00, %2654 ]
  %2704 = phi float [ %2700, %2692 ], [ 0.000000e+00, %2654 ]
  %2705 = phi float [ %2701, %2692 ], [ 0.000000e+00, %2654 ]
  %2706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2707 = extractvalue %dx.types.ResRet.i32 %2706, 0
  %2708 = and i32 %2707, 1024
  %2709 = icmp eq i32 %2708, 0
  br i1 %2709, label %2740, label %2710

; <label>:2710                                    ; preds = %2702
  %2711 = add i32 %32, 184
  %2712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.i32 %2712, 0
  %2714 = and i32 %2713, 255
  %2715 = uitofp i32 %2714 to float
  %2716 = fmul fast float %2715, 0x3F70101020000000
  %2717 = lshr i32 %2713, 8
  %2718 = and i32 %2717, 255
  %2719 = uitofp i32 %2718 to float
  %2720 = fmul fast float %2719, 0x3F70101020000000
  %2721 = lshr i32 %2713, 16
  %2722 = and i32 %2721, 255
  %2723 = uitofp i32 %2722 to float
  %2724 = fmul fast float %2723, 0x3F70101020000000
  %2725 = fmul fast float %2716, %2716
  %2726 = fmul fast float %2720, %2720
  %2727 = fmul fast float %2724, %2724
  %2728 = add i32 %32, 464
  %2729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2730 = extractvalue %dx.types.ResRet.i32 %2729, 0
  %2731 = add i32 %2730, 0
  %2732 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2731, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2733 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2732, %dx.types.Handle %68, float %2167, float %2168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2734 = extractvalue %dx.types.ResRet.f32 %2733, 0
  %2735 = extractvalue %dx.types.ResRet.f32 %2733, 1
  %2736 = extractvalue %dx.types.ResRet.f32 %2733, 2
  %2737 = fmul fast float %2725, %2734
  %2738 = fmul fast float %2726, %2735
  %2739 = fmul fast float %2727, %2736
  br label %2740

; <label>:2740                                    ; preds = %2710, %2702
  %2741 = phi float [ %2737, %2710 ], [ 0.000000e+00, %2702 ]
  %2742 = phi float [ %2738, %2710 ], [ 0.000000e+00, %2702 ]
  %2743 = phi float [ %2739, %2710 ], [ 0.000000e+00, %2702 ]
  %2744 = fcmp fast ogt float %2741, 0.000000e+00
  %2745 = fcmp fast ogt float %2742, 0.000000e+00
  %2746 = fcmp fast ogt float %2743, 0.000000e+00
  %2747 = call float @dx.op.unary.f32(i32 23, float %2741)  ; Log(value)
  %2748 = call float @dx.op.unary.f32(i32 23, float %2742)  ; Log(value)
  %2749 = call float @dx.op.unary.f32(i32 23, float %2743)  ; Log(value)
  %2750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2659, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.i32 %2750, 0
  %2752 = lshr i32 %2751, 7
  %2753 = and i32 %2752, 32752
  %2754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2753)  ; LegacyF16ToF32(value)
  %2755 = fmul fast float %2747, 0xBFE62E4300000000
  %2756 = fmul fast float %2755, %2754
  %2757 = fmul fast float %2748, 0xBFE62E4300000000
  %2758 = fmul fast float %2757, %2754
  %2759 = fmul fast float %2749, 0xBFE62E4300000000
  %2760 = fmul fast float %2759, %2754
  %2761 = select i1 %2744, float %2756, float 1.270000e+02
  %2762 = select i1 %2745, float %2758, float 1.270000e+02
  %2763 = select i1 %2746, float %2760, float 1.270000e+02
  %2764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2765 = extractvalue %dx.types.ResRet.i32 %2764, 0
  %2766 = and i32 %2765, 10240
  %2767 = icmp eq i32 %2766, 0
  br i1 %2767, label %2812, label %2768

; <label>:2768                                    ; preds = %2740
  %2769 = add i32 %32, 480
  %2770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2771 = extractvalue %dx.types.ResRet.i32 %2770, 0
  %2772 = add i32 %2771, 0
  %2773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2772, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2774 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2773, %dx.types.Handle %68, float %2167, float %2168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2775 = extractvalue %dx.types.ResRet.f32 %2774, 1
  %2776 = extractvalue %dx.types.ResRet.f32 %2774, 3
  %2777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2778 = extractvalue %dx.types.ResRet.i32 %2777, 0
  %2779 = and i32 %2778, 1048576
  %2780 = icmp ne i32 %2779, 0
  %2781 = and i32 %2778, 8192
  %2782 = icmp eq i32 %2781, 0
  br i1 %2782, label %2798, label %2783

; <label>:2783                                    ; preds = %2768
  %2784 = extractvalue %dx.types.ResRet.f32 %2774, 2
  %2785 = select i1 %2780, float %2784, float %2775
  %2786 = extractvalue %dx.types.ResRet.f32 %2774, 0
  %2787 = select i1 %2780, float %2786, float %2775
  %2788 = add i32 %32, 128
  %2789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2788, i32 undef)  ; BufferLoad(srv,index,wot)
  %2790 = extractvalue %dx.types.ResRet.i32 %2789, 0
  %2791 = lshr i32 %2790, 16
  %2792 = and i32 %2791, 255
  %2793 = uitofp i32 %2792 to float
  %2794 = fmul fast float %2793, 0x3F80101020000000
  %2795 = fmul fast float %2794, %2787
  %2796 = fmul fast float %2794, %2775
  %2797 = fmul fast float %2794, %2785
  br label %2798

; <label>:2798                                    ; preds = %2783, %2768
  %2799 = phi float [ %2795, %2783 ], [ 0.000000e+00, %2768 ]
  %2800 = phi float [ %2796, %2783 ], [ 0.000000e+00, %2768 ]
  %2801 = phi float [ %2797, %2783 ], [ 0.000000e+00, %2768 ]
  %2802 = and i32 %2778, 2048
  %2803 = icmp eq i32 %2802, 0
  br i1 %2803, label %2812, label %2804

; <label>:2804                                    ; preds = %2798
  %2805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2659, i32 undef)  ; BufferLoad(srv,index,wot)
  %2806 = extractvalue %dx.types.ResRet.i32 %2805, 0
  %2807 = shl i32 %2806, 4
  %2808 = and i32 %2807, 32752
  %2809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2808)  ; LegacyF16ToF32(value)
  %2810 = fmul fast float %2809, %2776
  %2811 = call float @dx.op.binary.f32(i32 35, float %2810, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2812

; <label>:2812                                    ; preds = %2804, %2798, %2740
  %2813 = phi float [ %2799, %2804 ], [ %2799, %2798 ], [ 0.000000e+00, %2740 ]
  %2814 = phi float [ %2800, %2804 ], [ %2800, %2798 ], [ 0.000000e+00, %2740 ]
  %2815 = phi float [ %2801, %2804 ], [ %2801, %2798 ], [ 0.000000e+00, %2740 ]
  %2816 = phi float [ %2811, %2804 ], [ 0x3F70101020000000, %2798 ], [ 0x3F70101020000000, %2740 ]
  %2817 = add i32 %32, 128
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = and i32 %2819, 255
  %2821 = uitofp i32 %2820 to float
  %2822 = lshr i32 %2819, 8
  %2823 = and i32 %2822, 255
  %2824 = uitofp i32 %2823 to float
  %2825 = call float @dx.op.dot3.f32(i32 55, float %2575, float %2576, float %2577, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2826 = fmul fast float %2824, %2825
  %2827 = fadd fast float %2826, %2821
  %2828 = fmul fast float %2827, 0x3F70101020000000
  %2829 = call float @dx.op.unary.f32(i32 7, float %2828)  ; Saturate(value)
  br i1 %2059, label %2830, label %2865

; <label>:2830                                    ; preds = %2812
  %2831 = fmul fast float %2816, 2.000000e+00
  %2832 = fcmp fast olt float %2761, 1.270000e+02
  %2833 = fcmp fast olt float %2762, 1.270000e+02
  %2834 = fcmp fast olt float %2763, 1.270000e+02
  %2835 = fmul fast float %2761, 0xBFF7154760000000
  %2836 = fmul fast float %2835, %2831
  %2837 = fmul fast float %2762, 0xBFF7154760000000
  %2838 = fmul fast float %2837, %2831
  %2839 = fmul fast float %2763, 0xBFF7154760000000
  %2840 = fmul fast float %2839, %2831
  %2841 = call float @dx.op.unary.f32(i32 21, float %2836)  ; Exp(value)
  %2842 = call float @dx.op.unary.f32(i32 21, float %2838)  ; Exp(value)
  %2843 = call float @dx.op.unary.f32(i32 21, float %2840)  ; Exp(value)
  %2844 = call float @dx.op.unary.f32(i32 7, float %2841)  ; Saturate(value)
  %2845 = call float @dx.op.unary.f32(i32 7, float %2842)  ; Saturate(value)
  %2846 = call float @dx.op.unary.f32(i32 7, float %2843)  ; Saturate(value)
  %2847 = fadd fast float %2844, -1.000000e+00
  %2848 = select i1 %2832, float %2847, float -1.000000e+00
  %2849 = fadd fast float %2845, -1.000000e+00
  %2850 = select i1 %2833, float %2849, float -1.000000e+00
  %2851 = fadd fast float %2846, -1.000000e+00
  %2852 = select i1 %2834, float %2851, float -1.000000e+00
  %2853 = fmul fast float %2848, %2355
  %2854 = fmul fast float %2850, %2355
  %2855 = fmul fast float %2852, %2355
  %2856 = fadd fast float %2853, 1.000000e+00
  %2857 = fadd fast float %2854, 1.000000e+00
  %2858 = fadd fast float %2855, 1.000000e+00
  %2859 = fmul fast float %2856, %2050
  %2860 = fmul fast float %2857, %2051
  %2861 = fmul fast float %2858, %2052
  %2862 = fmul fast float %2856, %2044
  %2863 = fmul fast float %2857, %2045
  %2864 = fmul fast float %2858, %2046
  br label %2865

; <label>:2865                                    ; preds = %2830, %2812
  %2866 = phi float [ %2862, %2830 ], [ %2044, %2812 ]
  %2867 = phi float [ %2863, %2830 ], [ %2045, %2812 ]
  %2868 = phi float [ %2864, %2830 ], [ %2046, %2812 ]
  %2869 = phi float [ %2859, %2830 ], [ %2050, %2812 ]
  %2870 = phi float [ %2860, %2830 ], [ %2051, %2812 ]
  %2871 = phi float [ %2861, %2830 ], [ %2052, %2812 ]
  %2872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2873 = extractvalue %dx.types.ResRet.i32 %2872, 0
  %2874 = and i32 %2873, 3
  %2875 = icmp eq i32 %2874, 3
  br i1 %2875, label %2954, label %2876

; <label>:2876                                    ; preds = %2865
  %2877 = and i32 %2873, 16
  %2878 = icmp ne i32 %2877, 0
  %2879 = select i1 %2878, float %2355, float 0.000000e+00
  %2880 = icmp eq i32 %2874, 0
  br i1 %2880, label %2881, label %2909

; <label>:2881                                    ; preds = %2876
  %2882 = and i32 %2873, 64
  %2883 = icmp ne i32 %2882, 0
  %2884 = select i1 %2883, float %2355, float 0.000000e+00
  %2885 = fsub fast float %2575, %2869
  %2886 = fsub fast float %2576, %2870
  %2887 = fsub fast float %2577, %2871
  %2888 = fmul fast float %2879, %2885
  %2889 = fmul fast float %2879, %2886
  %2890 = fmul fast float %2879, %2887
  %2891 = fadd fast float %2888, %2869
  %2892 = fadd fast float %2889, %2870
  %2893 = fadd fast float %2890, %2871
  %2894 = fsub fast float %2561, %2053
  %2895 = fmul fast float %2879, %2894
  %2896 = fadd fast float %2895, %2053
  %2897 = fsub fast float %2703, %2866
  %2898 = fsub fast float %2704, %2867
  %2899 = fsub fast float %2705, %2868
  %2900 = fmul fast float %2884, %2897
  %2901 = fmul fast float %2884, %2898
  %2902 = fmul fast float %2884, %2899
  %2903 = fadd fast float %2900, %2866
  %2904 = fadd fast float %2901, %2867
  %2905 = fadd fast float %2902, %2868
  %2906 = fsub fast float %2829, %2057
  %2907 = fmul fast float %2879, %2906
  %2908 = fadd fast float %2907, %2057
  br label %2954

; <label>:2909                                    ; preds = %2876
  %2910 = icmp eq i32 %2874, 1
  br i1 %2910, label %2911, label %2924

; <label>:2911                                    ; preds = %2909
  %2912 = fadd fast float %2575, -1.000000e+00
  %2913 = fadd fast float %2576, -1.000000e+00
  %2914 = fadd fast float %2577, -1.000000e+00
  %2915 = fmul fast float %2879, %2912
  %2916 = fmul fast float %2879, %2913
  %2917 = fmul fast float %2879, %2914
  %2918 = fadd fast float %2915, 1.000000e+00
  %2919 = fadd fast float %2916, 1.000000e+00
  %2920 = fadd fast float %2917, 1.000000e+00
  %2921 = fmul fast float %2918, %2869
  %2922 = fmul fast float %2919, %2870
  %2923 = fmul fast float %2920, %2871
  br label %2954

; <label>:2924                                    ; preds = %2909
  %2925 = icmp eq i32 %2874, 2
  br i1 %2925, label %2926, label %2954

; <label>:2926                                    ; preds = %2924
  %2927 = call float @dx.op.unary.f32(i32 24, float %2575)  ; Sqrt(value)
  %2928 = call float @dx.op.unary.f32(i32 24, float %2576)  ; Sqrt(value)
  %2929 = call float @dx.op.unary.f32(i32 24, float %2577)  ; Sqrt(value)
  %2930 = fadd fast float %2927, -5.000000e-01
  %2931 = fadd fast float %2928, -5.000000e-01
  %2932 = fadd fast float %2929, -5.000000e-01
  %2933 = fmul fast float %2930, %2879
  %2934 = fmul fast float %2931, %2879
  %2935 = fmul fast float %2932, %2879
  %2936 = fadd fast float %2933, 5.000000e-01
  %2937 = fadd fast float %2934, 5.000000e-01
  %2938 = fadd fast float %2935, 5.000000e-01
  %2939 = fmul fast float %2936, 2.000000e+00
  %2940 = fsub fast float 1.000000e+00, %2939
  %2941 = fmul fast float %2940, %2869
  %2942 = fadd fast float %2941, %2939
  %2943 = fmul fast float %2942, %2869
  %2944 = fmul fast float %2937, 2.000000e+00
  %2945 = fsub fast float 1.000000e+00, %2944
  %2946 = fmul fast float %2945, %2870
  %2947 = fadd fast float %2946, %2944
  %2948 = fmul fast float %2947, %2870
  %2949 = fmul fast float %2938, 2.000000e+00
  %2950 = fsub fast float 1.000000e+00, %2949
  %2951 = fmul fast float %2950, %2871
  %2952 = fadd fast float %2951, %2949
  %2953 = fmul fast float %2952, %2871
  br label %2954

; <label>:2954                                    ; preds = %2926, %2924, %2911, %2881, %2865
  %2955 = phi float [ %2866, %2865 ], [ %2866, %2926 ], [ %2866, %2924 ], [ %2866, %2911 ], [ %2903, %2881 ]
  %2956 = phi float [ %2867, %2865 ], [ %2867, %2926 ], [ %2867, %2924 ], [ %2867, %2911 ], [ %2904, %2881 ]
  %2957 = phi float [ %2868, %2865 ], [ %2868, %2926 ], [ %2868, %2924 ], [ %2868, %2911 ], [ %2905, %2881 ]
  %2958 = phi float [ %2869, %2865 ], [ %2943, %2926 ], [ %2869, %2924 ], [ %2921, %2911 ], [ %2891, %2881 ]
  %2959 = phi float [ %2870, %2865 ], [ %2948, %2926 ], [ %2870, %2924 ], [ %2922, %2911 ], [ %2892, %2881 ]
  %2960 = phi float [ %2871, %2865 ], [ %2953, %2926 ], [ %2871, %2924 ], [ %2923, %2911 ], [ %2893, %2881 ]
  %2961 = phi float [ %2053, %2865 ], [ %2053, %2926 ], [ %2053, %2924 ], [ %2053, %2911 ], [ %2896, %2881 ]
  %2962 = phi float [ %2057, %2865 ], [ %2057, %2926 ], [ %2057, %2924 ], [ %2057, %2911 ], [ %2908, %2881 ]
  %2963 = and i32 %2873, 12
  %2964 = icmp eq i32 %2963, 12
  br i1 %2964, label %3095, label %2965

; <label>:2965                                    ; preds = %2954
  %2966 = and i32 %2873, 2097184
  %2967 = icmp eq i32 %2966, 2097184
  %2968 = select i1 %2967, float %2355, float 0.000000e+00
  %2969 = and i32 %2873, 4194336
  %2970 = icmp eq i32 %2969, 4194336
  %2971 = select i1 %2970, float %2355, float 0.000000e+00
  %2972 = and i32 %2873, 8388640
  %2973 = icmp eq i32 %2972, 8388640
  %2974 = select i1 %2973, float %2355, float 0.000000e+00
  %2975 = and i32 %2873, 1024
  %2976 = icmp ne i32 %2975, 0
  %2977 = select i1 %2976, float %2355, float 0.000000e+00
  %2978 = and i32 %2873, 2048
  %2979 = icmp ne i32 %2978, 0
  %2980 = select i1 %2979, float %2355, float 0.000000e+00
  %2981 = and i32 %2873, 8192
  %2982 = icmp ne i32 %2981, 0
  %2983 = select i1 %2982, float %2355, float 0.000000e+00
  %2984 = icmp eq i32 %2963, 0
  br i1 %2984, label %2985, label %3019

; <label>:2985                                    ; preds = %2965
  %2986 = fsub fast float %2656, %2039
  %2987 = fsub fast float %2657, %2040
  %2988 = fmul fast float %2968, %2986
  %2989 = fmul fast float %2968, %2987
  %2990 = fadd fast float %2988, %2039
  %2991 = fadd fast float %2989, %2040
  %2992 = fsub fast float %2658, %2055
  %2993 = fmul fast float %2971, %2992
  %2994 = fadd fast float %2993, %2055
  %2995 = fsub fast float %2655, %2054
  %2996 = fmul fast float %2974, %2995
  %2997 = fadd fast float %2996, %2054
  %2998 = fsub fast float %2761, %2047
  %2999 = fsub fast float %2762, %2048
  %3000 = fsub fast float %2763, %2049
  %3001 = fmul fast float %2977, %2998
  %3002 = fmul fast float %2977, %2999
  %3003 = fmul fast float %2977, %3000
  %3004 = fadd fast float %3001, %2047
  %3005 = fadd fast float %3002, %2048
  %3006 = fadd fast float %3003, %2049
  %3007 = fsub fast float %2816, %2056
  %3008 = fmul fast float %2980, %3007
  %3009 = fadd fast float %3008, %2056
  %3010 = fsub fast float %2813, %2041
  %3011 = fsub fast float %2814, %2042
  %3012 = fsub fast float %2815, %2043
  %3013 = fmul fast float %2983, %3010
  %3014 = fmul fast float %2983, %3011
  %3015 = fmul fast float %2983, %3012
  %3016 = fadd fast float %3013, %2041
  %3017 = fadd fast float %3014, %2042
  %3018 = fadd fast float %3015, %2043
  br label %3095

; <label>:3019                                    ; preds = %2965
  %3020 = icmp eq i32 %2963, 4
  br i1 %3020, label %3021, label %3067

; <label>:3021                                    ; preds = %3019
  %3022 = fmul fast float %2968, %2656
  %3023 = fmul fast float %2968, %2657
  %3024 = fadd fast float %3022, %2039
  %3025 = fadd fast float %3023, %2040
  %3026 = call float @dx.op.binary.f32(i32 36, float %2055, float %2658)  ; FMin(a,b)
  %3027 = fsub fast float %3026, %2055
  %3028 = fmul fast float %3027, %2971
  %3029 = fadd fast float %3028, %2055
  %3030 = fadd fast float %2655, %2054
  %3031 = fmul fast float %3030, 0x3FF337FAE0000000
  %3032 = fmul fast float %2054, %2054
  %3033 = fmul fast float %2655, %2655
  %3034 = fadd fast float %3033, %3032
  %3035 = fmul fast float %3034, 0x3FE5152B00000000
  %3036 = fmul fast float %2054, 0xBFCC1F85E0000000
  %3037 = fmul fast float %3036, %2655
  %3038 = fadd fast float %3037, 0xBFE1363700000000
  %3039 = fadd fast float %3038, %3031
  %3040 = fsub fast float %3039, %3035
  %3041 = fmul fast float %3030, 0x3FBA6F0D00000000
  %3042 = fmul fast float %3034, 0x3FD0432880000000
  %3043 = fmul fast float %2054, 0xBFEF110800000000
  %3044 = fmul fast float %3043, %2655
  %3045 = fadd fast float %3044, 1.000000e+00
  %3046 = fsub fast float %3045, %3041
  %3047 = fadd fast float %3046, %3042
  %3048 = fdiv fast float %3040, %3047
  %3049 = call float @dx.op.unary.f32(i32 7, float %3048)  ; Saturate(value)
  %3050 = fsub fast float %3049, %2054
  %3051 = fmul fast float %3050, %2974
  %3052 = fadd fast float %3051, %2054
  %3053 = fmul fast float %2977, %2761
  %3054 = fmul fast float %2977, %2762
  %3055 = fmul fast float %2977, %2763
  %3056 = fadd fast float %3053, %2047
  %3057 = fadd fast float %3054, %2048
  %3058 = fadd fast float %3055, %2049
  %3059 = fmul fast float %2980, %2816
  %3060 = fadd fast float %3059, %2056
  %3061 = fmul fast float %2983, %2813
  %3062 = fmul fast float %2983, %2814
  %3063 = fmul fast float %2983, %2815
  %3064 = fadd fast float %3061, %2041
  %3065 = fadd fast float %3062, %2042
  %3066 = fadd fast float %3063, %2043
  br label %3095

; <label>:3067                                    ; preds = %3019
  %3068 = icmp eq i32 %2963, 8
  br i1 %3068, label %3069, label %3095

; <label>:3069                                    ; preds = %3067
  %3070 = fmul fast float %2968, %2656
  %3071 = fmul fast float %2968, %2657
  %3072 = fadd fast float %3070, %2039
  %3073 = fadd fast float %3071, %2040
  %3074 = call float @dx.op.binary.f32(i32 36, float %2055, float %2658)  ; FMin(a,b)
  %3075 = fsub fast float %3074, %2055
  %3076 = fmul fast float %3075, %2971
  %3077 = fadd fast float %3076, %2055
  %3078 = fsub fast float %2655, %2054
  %3079 = fmul fast float %2974, %3078
  %3080 = fadd fast float %3079, %2054
  %3081 = fmul fast float %2977, %2761
  %3082 = fmul fast float %2977, %2762
  %3083 = fmul fast float %2977, %2763
  %3084 = fadd fast float %3081, %2047
  %3085 = fadd fast float %3082, %2048
  %3086 = fadd fast float %3083, %2049
  %3087 = fmul fast float %2980, %2816
  %3088 = fadd fast float %3087, %2056
  %3089 = fmul fast float %2983, %2813
  %3090 = fmul fast float %2983, %2814
  %3091 = fmul fast float %2983, %2815
  %3092 = fadd fast float %3089, %2041
  %3093 = fadd fast float %3090, %2042
  %3094 = fadd fast float %3091, %2043
  br label %3095

; <label>:3095                                    ; preds = %3069, %3067, %3021, %2985, %2954, %2354, %2058, %2038
  %3096 = phi float [ %2039, %2954 ], [ %2039, %2354 ], [ %2039, %2038 ], [ %3072, %3069 ], [ %2039, %3067 ], [ %3024, %3021 ], [ %2990, %2985 ], [ %2039, %2058 ]
  %3097 = phi float [ %2040, %2954 ], [ %2040, %2354 ], [ %2040, %2038 ], [ %3073, %3069 ], [ %2040, %3067 ], [ %3025, %3021 ], [ %2991, %2985 ], [ %2040, %2058 ]
  %3098 = phi float [ %2041, %2954 ], [ %2041, %2354 ], [ %2041, %2038 ], [ %3092, %3069 ], [ %2041, %3067 ], [ %3064, %3021 ], [ %3016, %2985 ], [ %2041, %2058 ]
  %3099 = phi float [ %2042, %2954 ], [ %2042, %2354 ], [ %2042, %2038 ], [ %3093, %3069 ], [ %2042, %3067 ], [ %3065, %3021 ], [ %3017, %2985 ], [ %2042, %2058 ]
  %3100 = phi float [ %2043, %2954 ], [ %2043, %2354 ], [ %2043, %2038 ], [ %3094, %3069 ], [ %2043, %3067 ], [ %3066, %3021 ], [ %3018, %2985 ], [ %2043, %2058 ]
  %3101 = phi float [ %2955, %2954 ], [ %2044, %2354 ], [ %2044, %2038 ], [ %2955, %3069 ], [ %2955, %3067 ], [ %2955, %3021 ], [ %2955, %2985 ], [ %2044, %2058 ]
  %3102 = phi float [ %2956, %2954 ], [ %2045, %2354 ], [ %2045, %2038 ], [ %2956, %3069 ], [ %2956, %3067 ], [ %2956, %3021 ], [ %2956, %2985 ], [ %2045, %2058 ]
  %3103 = phi float [ %2957, %2954 ], [ %2046, %2354 ], [ %2046, %2038 ], [ %2957, %3069 ], [ %2957, %3067 ], [ %2957, %3021 ], [ %2957, %2985 ], [ %2046, %2058 ]
  %3104 = phi float [ %2047, %2954 ], [ %2047, %2354 ], [ %2047, %2038 ], [ %3084, %3069 ], [ %2047, %3067 ], [ %3056, %3021 ], [ %3004, %2985 ], [ %2047, %2058 ]
  %3105 = phi float [ %2048, %2954 ], [ %2048, %2354 ], [ %2048, %2038 ], [ %3085, %3069 ], [ %2048, %3067 ], [ %3057, %3021 ], [ %3005, %2985 ], [ %2048, %2058 ]
  %3106 = phi float [ %2049, %2954 ], [ %2049, %2354 ], [ %2049, %2038 ], [ %3086, %3069 ], [ %2049, %3067 ], [ %3058, %3021 ], [ %3006, %2985 ], [ %2049, %2058 ]
  %3107 = phi float [ %2958, %2954 ], [ %2050, %2354 ], [ %2050, %2038 ], [ %2958, %3069 ], [ %2958, %3067 ], [ %2958, %3021 ], [ %2958, %2985 ], [ %2050, %2058 ]
  %3108 = phi float [ %2959, %2954 ], [ %2051, %2354 ], [ %2051, %2038 ], [ %2959, %3069 ], [ %2959, %3067 ], [ %2959, %3021 ], [ %2959, %2985 ], [ %2051, %2058 ]
  %3109 = phi float [ %2960, %2954 ], [ %2052, %2354 ], [ %2052, %2038 ], [ %2960, %3069 ], [ %2960, %3067 ], [ %2960, %3021 ], [ %2960, %2985 ], [ %2052, %2058 ]
  %3110 = phi float [ %2961, %2954 ], [ %2053, %2354 ], [ %2053, %2038 ], [ %2961, %3069 ], [ %2961, %3067 ], [ %2961, %3021 ], [ %2961, %2985 ], [ %2053, %2058 ]
  %3111 = phi float [ %2054, %2954 ], [ %2054, %2354 ], [ %2054, %2038 ], [ %3080, %3069 ], [ %2054, %3067 ], [ %3052, %3021 ], [ %2997, %2985 ], [ %2054, %2058 ]
  %3112 = phi float [ %2055, %2954 ], [ %2055, %2354 ], [ %2055, %2038 ], [ %3077, %3069 ], [ %2055, %3067 ], [ %3029, %3021 ], [ %2994, %2985 ], [ %2055, %2058 ]
  %3113 = phi float [ %2056, %2954 ], [ %2056, %2354 ], [ %2056, %2038 ], [ %3088, %3069 ], [ %2056, %3067 ], [ %3060, %3021 ], [ %3009, %2985 ], [ %2056, %2058 ]
  %3114 = phi float [ %2962, %2954 ], [ %2057, %2354 ], [ %2057, %2038 ], [ %2962, %3069 ], [ %2962, %3067 ], [ %2962, %3021 ], [ %2962, %2985 ], [ %2057, %2058 ]
  br i1 %351, label %4152, label %3115

; <label>:3115                                    ; preds = %3095
  %3116 = icmp ult i32 %402, 4
  %3117 = add i32 %32, 72
  %3118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3119 = extractvalue %dx.types.ResRet.i32 %3118, 0
  %3120 = add i32 %32, 76
  %3121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3120, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = or i32 %3122, %3119
  %3124 = icmp eq i32 %3123, 0
  br i1 %3124, label %4152, label %3125

; <label>:3125                                    ; preds = %3115
  %3126 = and i32 %3119, 262144
  %3127 = icmp ne i32 %3126, 0
  %3128 = select i1 %3127, float %34, float 1.000000e+00
  %3129 = select i1 %3127, float %35, float 0.000000e+00
  %3130 = select i1 %3127, float %36, float 0.000000e+00
  %3131 = select i1 %3127, float %37, float 1.000000e+00
  %3132 = select i1 %3127, float %38, float %59
  %3133 = select i1 %3127, float %39, float %60
  %3134 = add i32 %32, 332
  %3135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3134, i32 undef)  ; BufferLoad(srv,index,wot)
  %3136 = extractvalue %dx.types.ResRet.i32 %3135, 0
  %3137 = lshr i32 %3136, 16
  %3138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3137)  ; LegacyF16ToF32(value)
  %3139 = fmul fast float %3138, 0x3F50624DE0000000
  %3140 = add i32 %32, 136
  %3141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3140, i32 undef)  ; BufferLoad(srv,index,wot)
  %3142 = extractvalue %dx.types.ResRet.i32 %3141, 0
  %3143 = lshr i32 %3142, 16
  %3144 = and i32 %3143, 255
  %3145 = lshr i32 %3142, 24
  %3146 = add i32 %32, 340
  %3147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3146, i32 undef)  ; BufferLoad(srv,index,wot)
  %3148 = extractvalue %dx.types.ResRet.i32 %3147, 0
  %3149 = and i32 %3148, 65535
  %3150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3149)  ; LegacyF16ToF32(value)
  %3151 = lshr i32 %3148, 16
  %3152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3151)  ; LegacyF16ToF32(value)
  %3153 = add i32 %32, 80
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3153, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = lshr i32 %3155, 22
  %3157 = shl nuw nsw i32 %3156, 5
  %3158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3157)  ; LegacyF16ToF32(value)
  %3159 = shl i32 %3155, 4
  %3160 = and i32 %3159, 32752
  %3161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3160)  ; LegacyF16ToF32(value)
  %3162 = lshr i32 %3155, 7
  %3163 = and i32 %3162, 32752
  %3164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3163)  ; LegacyF16ToF32(value)
  %3165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3166 = extractvalue %dx.types.CBufRet.f32 %3165, 3
  %3167 = fmul fast float %3166, 1.000000e+03
  %3168 = fmul fast float %341, %3167
  %3169 = call float @dx.op.unary.f32(i32 22, float %3168)  ; Frc(value)
  %3170 = fadd fast float %3169, %331
  %3171 = fmul fast float %342, %3167
  %3172 = call float @dx.op.unary.f32(i32 22, float %3171)  ; Frc(value)
  %3173 = fadd fast float %3172, %333
  %3174 = fmul fast float %3139, %3167
  %3175 = call float @dx.op.unary.f32(i32 22, float %3174)  ; Frc(value)
  %3176 = fmul fast float %3175, 0x401921FB60000000
  %3177 = fadd fast float %3176, %3158
  %3178 = call float @dx.op.unary.f32(i32 13, float %3177)  ; Sin(value)
  %3179 = call float @dx.op.unary.f32(i32 12, float %3177)  ; Cos(value)
  %3180 = fsub fast float -0.000000e+00, %3178
  %3181 = fadd fast float %3132, -5.000000e-01
  %3182 = fadd fast float %3133, -5.000000e-01
  %3183 = fmul fast float %3150, %3181
  %3184 = fmul fast float %3152, %3182
  %3185 = fadd fast float %3183, 5.000000e-01
  %3186 = fadd fast float %3184, 5.000000e-01
  %3187 = fmul fast float %3161, %3185
  %3188 = fmul fast float %3164, %3186
  %3189 = fmul fast float %3179, %3187
  %3190 = call float @dx.op.tertiary.f32(i32 46, float %3180, float %3188, float %3189)  ; FMad(a,b,c)
  %3191 = fmul fast float %3178, %3187
  %3192 = call float @dx.op.tertiary.f32(i32 46, float %3179, float %3188, float %3191)  ; FMad(a,b,c)
  %3193 = fadd fast float %3170, %3190
  %3194 = fadd fast float %3173, %3192
  %3195 = icmp ugt i32 %3144, 1
  %3196 = icmp ugt i32 %3142, 33554431
  %3197 = or i1 %3196, %3195
  br i1 %3197, label %3198, label %3223

; <label>:3198                                    ; preds = %3125
  %3199 = add i32 %32, 276
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3199, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = lshr i32 %3201, 16
  %3203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3202)  ; LegacyF16ToF32(value)
  %3204 = fmul fast float %3166, %3203
  %3205 = call float @dx.op.unary.f32(i32 22, float %3204)  ; Frc(value)
  %3206 = mul nuw nsw i32 %3144, %3145
  %3207 = uitofp i32 %3206 to float
  %3208 = fmul fast float %3205, %3207
  %3209 = call float @dx.op.unary.f32(i32 27, float %3208)  ; Round_ni(value)
  %3210 = fptoui float %3209 to i32
  %3211 = urem i32 %3210, %3144
  %3212 = udiv i32 %3210, %3145
  %3213 = call float @dx.op.unary.f32(i32 22, float %3193)  ; Frc(value)
  %3214 = call float @dx.op.unary.f32(i32 22, float %3194)  ; Frc(value)
  %3215 = uitofp i32 %3211 to float
  %3216 = uitofp i32 %3212 to float
  %3217 = fadd fast float %3213, %3215
  %3218 = fadd fast float %3214, %3216
  %3219 = uitofp i32 %3144 to float
  %3220 = uitofp i32 %3145 to float
  %3221 = fdiv fast float %3217, %3219
  %3222 = fdiv fast float %3218, %3220
  br label %3223

; <label>:3223                                    ; preds = %3198, %3125
  %3224 = phi float [ %3221, %3198 ], [ %3193, %3125 ]
  %3225 = phi float [ %3222, %3198 ], [ %3194, %3125 ]
  %3226 = and i32 %3119, 16777216
  %3227 = icmp eq i32 %3226, 0
  br i1 %3227, label %3337, label %3228

; <label>:3228                                    ; preds = %3223
  %3229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3230 = extractvalue %dx.types.CBufRet.f32 %3229, 0
  %3231 = extractvalue %dx.types.CBufRet.f32 %3229, 1
  %3232 = extractvalue %dx.types.CBufRet.f32 %3229, 2
  %3233 = fadd fast float %3230, %130
  %3234 = fadd fast float %3231, %131
  %3235 = fadd fast float %3232, %132
  %3236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3237 = extractvalue %dx.types.CBufRet.f32 %3236, 0
  %3238 = call float @dx.op.unary.f32(i32 7, float %3237)  ; Saturate(value)
  %3239 = icmp eq i32 %33, 65535
  br i1 %3239, label %3334, label %3240

; <label>:3240                                    ; preds = %3228
  %3241 = lshr i32 %33, 1
  %3242 = shl i32 %3241, 2
  %3243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3244 = extractvalue %dx.types.ResRet.i32 %3243, 0
  %3245 = and i32 %33, 1
  %3246 = icmp ne i32 %3245, 0
  %3247 = lshr i32 %3244, 16
  %3248 = and i32 %3244, 65535
  %3249 = select i1 %3246, i32 %3247, i32 %3248
  %3250 = icmp eq i32 %3249, 65535
  br i1 %3250, label %3330, label %3251

; <label>:3251                                    ; preds = %3240
  %3252 = mul nuw nsw i32 %3249, 40
  %3253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %3252, i32 undef)  ; BufferLoad(srv,index,wot)
  %3254 = extractvalue %dx.types.ResRet.f32 %3253, 0
  %3255 = extractvalue %dx.types.ResRet.f32 %3253, 1
  %3256 = extractvalue %dx.types.ResRet.f32 %3253, 2
  %3257 = add nuw nsw i32 %3252, 12
  %3258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %3257, i32 undef)  ; BufferLoad(srv,index,wot)
  %3259 = extractvalue %dx.types.ResRet.f32 %3258, 0
  %3260 = extractvalue %dx.types.ResRet.f32 %3258, 1
  %3261 = extractvalue %dx.types.ResRet.f32 %3258, 2
  %3262 = add nuw nsw i32 %3252, 24
  %3263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.f32 %3263, 0
  %3265 = extractvalue %dx.types.ResRet.f32 %3263, 1
  %3266 = extractvalue %dx.types.ResRet.f32 %3263, 2
  %3267 = add nuw nsw i32 %3252, 36
  %3268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %3267, i32 undef)  ; BufferLoad(srv,index,wot)
  %3269 = extractvalue %dx.types.ResRet.f32 %3268, 0
  %3270 = fsub fast float %3233, %3254
  %3271 = fsub fast float %3234, %3255
  %3272 = fsub fast float %3235, %3256
  %3273 = fmul fast float %3269, %3270
  %3274 = fmul fast float %3269, %3271
  %3275 = fmul fast float %3269, %3272
  %3276 = call float @dx.op.unary.f32(i32 27, float %3273)  ; Round_ni(value)
  %3277 = call float @dx.op.unary.f32(i32 27, float %3274)  ; Round_ni(value)
  %3278 = call float @dx.op.unary.f32(i32 27, float %3275)  ; Round_ni(value)
  %3279 = fadd fast float %3276, 5.000000e-01
  %3280 = fadd fast float %3277, 5.000000e-01
  %3281 = fadd fast float %3278, 5.000000e-01
  %3282 = fmul fast float %3279, %3259
  %3283 = fmul fast float %3280, %3260
  %3284 = fmul fast float %3281, %3261
  %3285 = shl i32 %33, 2
  %3286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3285, i32 undef)  ; BufferLoad(srv,index,wot)
  %3287 = extractvalue %dx.types.ResRet.i32 %3286, 0
  %3288 = add i32 %3287, 0
  %3289 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3288, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3290 = call float @dx.op.unary.f32(i32 22, float %3282)  ; Frc(value)
  %3291 = call float @dx.op.unary.f32(i32 22, float %3283)  ; Frc(value)
  %3292 = call float @dx.op.unary.f32(i32 22, float %3284)  ; Frc(value)
  %3293 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3289, %dx.types.Handle %27, float %3290, float %3291, float %3292, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3294 = extractvalue %dx.types.ResRet.f32 %3293, 0
  %3295 = extractvalue %dx.types.ResRet.f32 %3293, 1
  %3296 = extractvalue %dx.types.ResRet.f32 %3293, 2
  %3297 = fmul fast float %3294, 1.023000e+03
  %3298 = fmul fast float %3295, 1.023000e+03
  %3299 = fmul fast float %3296, 1.023000e+03
  %3300 = fadd fast float %3297, 5.000000e-01
  %3301 = fadd fast float %3298, 5.000000e-01
  %3302 = fadd fast float %3299, 5.000000e-01
  %3303 = call float @dx.op.unary.f32(i32 27, float %3300)  ; Round_ni(value)
  %3304 = call float @dx.op.unary.f32(i32 27, float %3301)  ; Round_ni(value)
  %3305 = call float @dx.op.unary.f32(i32 27, float %3302)  ; Round_ni(value)
  %3306 = fsub fast float %3273, %3276
  %3307 = fsub fast float %3274, %3277
  %3308 = fsub fast float %3275, %3278
  %3309 = fmul fast float %3306, 7.500000e-01
  %3310 = fmul fast float %3307, 7.500000e-01
  %3311 = fmul fast float %3308, 7.500000e-01
  %3312 = fadd fast float %3276, 1.250000e-01
  %3313 = fadd fast float %3312, %3309
  %3314 = fadd fast float %3313, %3303
  %3315 = fadd fast float %3277, 1.250000e-01
  %3316 = fadd fast float %3315, %3310
  %3317 = fadd fast float %3316, %3304
  %3318 = fadd fast float %3278, 1.250000e-01
  %3319 = fadd fast float %3318, %3311
  %3320 = fadd fast float %3319, %3305
  %3321 = fmul fast float %3314, %3264
  %3322 = fmul fast float %3317, %3265
  %3323 = fmul fast float %3320, %3266
  %3324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3285, i32 undef)  ; BufferLoad(srv,index,wot)
  %3325 = extractvalue %dx.types.ResRet.i32 %3324, 0
  %3326 = add i32 %3325, 0
  %3327 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3326, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3327, %dx.types.Handle %25, float %3321, float %3322, float %3323, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3329 = extractvalue %dx.types.ResRet.f32 %3328, 0
  br label %3330

; <label>:3330                                    ; preds = %3251, %3240
  %3331 = phi float [ %3329, %3251 ], [ -1.000000e+00, %3240 ]
  %3332 = fadd fast float %3331, %3238
  %3333 = call float @dx.op.unary.f32(i32 7, float %3332)  ; Saturate(value)
  br label %3334

; <label>:3334                                    ; preds = %3330, %3228
  %3335 = phi float [ %3333, %3330 ], [ %3238, %3228 ]
  %3336 = fmul fast float %3335, %397
  br label %3337

; <label>:3337                                    ; preds = %3334, %3223
  %3338 = phi float [ %3336, %3334 ], [ %397, %3223 ]
  %3339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3340 = extractvalue %dx.types.ResRet.i32 %3339, 0
  %3341 = and i32 %3340, 256
  %3342 = icmp eq i32 %3341, 0
  br i1 %3342, label %3389, label %3343

; <label>:3343                                    ; preds = %3337
  %3344 = add i32 %32, 436
  %3345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3344, i32 undef)  ; BufferLoad(srv,index,wot)
  %3346 = extractvalue %dx.types.ResRet.i32 %3345, 0
  %3347 = add i32 %3346, 0
  %3348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3347, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3349 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3348, %dx.types.Handle %68, float %3224, float %3225, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3350 = extractvalue %dx.types.ResRet.f32 %3349, 0
  %3351 = add i32 %32, 148
  %3352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3351, i32 undef)  ; BufferLoad(srv,index,wot)
  %3353 = extractvalue %dx.types.ResRet.i32 %3352, 0
  %3354 = shl i32 %3353, 4
  %3355 = and i32 %3354, 32752
  %3356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3355)  ; LegacyF16ToF32(value)
  %3357 = lshr i32 %3353, 7
  %3358 = and i32 %3357, 32752
  %3359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3358)  ; LegacyF16ToF32(value)
  %3360 = fsub fast float 1.000000e+00, %3338
  %3361 = call float @dx.op.binary.f32(i32 35, float %3360, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3362 = bitcast float %3338 to i32
  %3363 = sitofp i32 %3362 to float
  %3364 = fadd fast float %3363, 0xC1CFBF8940000000
  %3365 = fmul fast float %3359, %3364
  %3366 = fadd fast float %3365, 0x41CFBF8940000000
  %3367 = fptosi float %3366 to i32
  %3368 = bitcast i32 %3367 to float
  %3369 = bitcast float %3361 to i32
  %3370 = sitofp i32 %3369 to float
  %3371 = fadd fast float %3370, 0xC1CFBF8940000000
  %3372 = fmul fast float %3371, %3359
  %3373 = fadd fast float %3372, 0x41CFBF8940000000
  %3374 = fptosi float %3373 to i32
  %3375 = bitcast i32 %3374 to float
  %3376 = fmul fast float %3368, %3356
  %3377 = fmul fast float %3375, %3356
  %3378 = fsub fast float %3361, %3376
  %3379 = fadd fast float %3377, %3361
  %3380 = call float @dx.op.unary.f32(i32 7, float %3378)  ; Saturate(value)
  %3381 = call float @dx.op.unary.f32(i32 7, float %3379)  ; Saturate(value)
  %3382 = fsub fast float %3350, %3380
  %3383 = fsub fast float %3381, %3380
  %3384 = bitcast float %3383 to i32
  %3385 = sub nsw i32 2129859010, %3384
  %3386 = bitcast i32 %3385 to float
  %3387 = fmul fast float %3386, %3382
  %3388 = call float @dx.op.unary.f32(i32 7, float %3387)  ; Saturate(value)
  br label %3389

; <label>:3389                                    ; preds = %3343, %3337
  %3390 = phi float [ %3388, %3343 ], [ %3338, %3337 ]
  %3391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.i32 %3391, 0
  %3393 = and i32 %3392, 128
  %3394 = icmp eq i32 %3393, 0
  br i1 %3394, label %3411, label %3395

; <label>:3395                                    ; preds = %3389
  %3396 = add i32 %32, 420
  %3397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3396, i32 undef)  ; BufferLoad(srv,index,wot)
  %3398 = extractvalue %dx.types.ResRet.i32 %3397, 0
  %3399 = add i32 %3398, 0
  %3400 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3399, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3401 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3400, %dx.types.Handle %68, float %3224, float %3225, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3402 = extractvalue %dx.types.ResRet.f32 %3401, 0
  %3403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3404 = extractvalue %dx.types.ResRet.i32 %3403, 0
  %3405 = and i32 %3404, 524288
  %3406 = icmp ne i32 %3405, 0
  %3407 = fcmp fast ogt float %3402, 0x3FE0101020000000
  %3408 = select i1 %3407, float 1.000000e+00, float 0.000000e+00
  %3409 = select i1 %3406, float %3408, float %3402
  %3410 = fmul fast float %3409, %3390
  br label %3411

; <label>:3411                                    ; preds = %3395, %3389
  %3412 = phi float [ %3410, %3395 ], [ %3390, %3389 ]
  %3413 = fcmp fast ult float %3412, 0x3F70101020000000
  br i1 %3413, label %4152, label %3414

; <label>:3414                                    ; preds = %3411
  %3415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.i32 %3415, 0
  %3417 = and i32 %3416, 16
  %3418 = icmp eq i32 %3417, 0
  br i1 %3418, label %3617, label %3419

; <label>:3419                                    ; preds = %3414
  %3420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3140, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.i32 %3420, 0
  %3422 = add i32 %32, 372
  %3423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3422, i32 undef)  ; BufferLoad(srv,index,wot)
  %3424 = extractvalue %dx.types.ResRet.i32 %3423, 0
  %3425 = add i32 %3424, 0
  %3426 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3425, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3427 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3426, %dx.types.Handle %67, float %3224, float %3225, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3428 = extractvalue %dx.types.ResRet.f32 %3427, 0
  %3429 = extractvalue %dx.types.ResRet.f32 %3427, 1
  %3430 = extractvalue %dx.types.ResRet.f32 %3427, 2
  %3431 = extractvalue %dx.types.ResRet.f32 %3427, 3
  %3432 = and i32 %3421, 255
  %3433 = uitofp i32 %3432 to float
  %3434 = lshr i32 %3421, 8
  %3435 = and i32 %3434, 255
  %3436 = uitofp i32 %3435 to float
  %3437 = fmul fast float %3431, %3433
  %3438 = fadd fast float %3437, %3436
  %3439 = fmul fast float %3438, 0x3F70101000000000
  %3440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.i32 %3440, 0
  %3442 = and i32 %3441, 512
  %3443 = icmp eq i32 %3442, 0
  br i1 %3443, label %3452, label %3444

; <label>:3444                                    ; preds = %3419
  %3445 = add i32 %32, 452
  %3446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %3447 = extractvalue %dx.types.ResRet.i32 %3446, 0
  %3448 = add i32 %3447, 0
  %3449 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3448, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3450 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3449, %dx.types.Handle %68, float %3224, float %3225, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3451 = extractvalue %dx.types.ResRet.f32 %3450, 0
  br label %3452

; <label>:3452                                    ; preds = %3444, %3419
  %3453 = phi float [ %3451, %3444 ], [ 1.000000e+00, %3419 ]
  %3454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3455 = extractvalue %dx.types.ResRet.i32 %3454, 0
  %3456 = and i32 %3455, 33554432
  %3457 = icmp eq i32 %3456, 0
  br i1 %3457, label %3564, label %3458

; <label>:3458                                    ; preds = %3452
  %3459 = add i32 %32, 272
  %3460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3459, i32 undef)  ; BufferLoad(srv,index,wot)
  %3461 = extractvalue %dx.types.ResRet.i32 %3460, 0
  %3462 = and i32 %3461, 65535
  %3463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3462)  ; LegacyF16ToF32(value)
  %3464 = lshr i32 %3461, 16
  %3465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3464)  ; LegacyF16ToF32(value)
  %3466 = add i32 %32, 276
  %3467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3466, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.i32 %3467, 0
  %3469 = and i32 %3468, 65535
  %3470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3469)  ; LegacyF16ToF32(value)
  %3471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %3472 = extractvalue %dx.types.ResRet.i32 %3471, 0
  %3473 = lshr i32 %3472, 24
  %3474 = uitofp i32 %3473 to float
  %3475 = fmul fast float %3474, 0x3F70101020000000
  %3476 = and i32 %3472, 255
  %3477 = uitofp i32 %3476 to float
  %3478 = fmul fast float %3477, 0x3F70101020000000
  %3479 = lshr i32 %3472, 8
  %3480 = and i32 %3479, 255
  %3481 = uitofp i32 %3480 to float
  %3482 = fmul fast float %3481, 0x3F70101020000000
  %3483 = lshr i32 %3472, 16
  %3484 = and i32 %3483, 255
  %3485 = uitofp i32 %3484 to float
  %3486 = fmul fast float %3485, 0x3F70101020000000
  %3487 = add i32 %32, 268
  %3488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3487, i32 undef)  ; BufferLoad(srv,index,wot)
  %3489 = extractvalue %dx.types.ResRet.i32 %3488, 0
  %3490 = lshr i32 %3489, 24
  %3491 = uitofp i32 %3490 to float
  %3492 = fmul fast float %3491, 0x3F70101020000000
  %3493 = and i32 %3489, 255
  %3494 = uitofp i32 %3493 to float
  %3495 = fmul fast float %3494, 0x3F70101020000000
  %3496 = lshr i32 %3489, 8
  %3497 = and i32 %3496, 255
  %3498 = uitofp i32 %3497 to float
  %3499 = fmul fast float %3498, 0x3F70101020000000
  %3500 = lshr i32 %3489, 16
  %3501 = and i32 %3500, 255
  %3502 = uitofp i32 %3501 to float
  %3503 = fmul fast float %3502, 0x3F70101020000000
  %3504 = bitcast float %3428 to i32
  %3505 = ashr i32 %3504, 1
  %3506 = sub nsw i32 1597463174, %3505
  %3507 = bitcast i32 %3506 to float
  %3508 = fmul fast float %3428, 5.000000e-01
  %3509 = fmul fast float %3507, %3507
  %3510 = fmul fast float %3509, %3508
  %3511 = fsub fast float 1.500000e+00, %3510
  %3512 = fmul fast float %3507, %3428
  %3513 = fmul fast float %3512, %3511
  %3514 = bitcast float %3429 to i32
  %3515 = ashr i32 %3514, 1
  %3516 = sub nsw i32 1597463174, %3515
  %3517 = bitcast i32 %3516 to float
  %3518 = fmul fast float %3429, 5.000000e-01
  %3519 = fmul fast float %3517, %3517
  %3520 = fmul fast float %3519, %3518
  %3521 = fsub fast float 1.500000e+00, %3520
  %3522 = fmul fast float %3517, %3429
  %3523 = fmul fast float %3522, %3521
  %3524 = bitcast float %3430 to i32
  %3525 = ashr i32 %3524, 1
  %3526 = sub nsw i32 1597463174, %3525
  %3527 = bitcast i32 %3526 to float
  %3528 = fmul fast float %3430, 5.000000e-01
  %3529 = fmul fast float %3527, %3527
  %3530 = fmul fast float %3529, %3528
  %3531 = fsub fast float 1.500000e+00, %3530
  %3532 = fmul fast float %3527, %3430
  %3533 = fmul fast float %3532, %3531
  %3534 = fsub fast float %3513, %3495
  %3535 = fsub fast float %3523, %3499
  %3536 = fsub fast float %3533, %3503
  %3537 = fmul fast float %3534, %3463
  %3538 = fmul fast float %3535, %3465
  %3539 = fmul fast float %3536, %3470
  %3540 = fadd fast float %3537, %3478
  %3541 = fadd fast float %3538, %3482
  %3542 = fadd fast float %3539, %3486
  %3543 = call float @dx.op.unary.f32(i32 7, float %3540)  ; Saturate(value)
  %3544 = call float @dx.op.unary.f32(i32 7, float %3541)  ; Saturate(value)
  %3545 = call float @dx.op.unary.f32(i32 7, float %3542)  ; Saturate(value)
  %3546 = fmul fast float %3543, %3543
  %3547 = fmul fast float %3544, %3544
  %3548 = fmul fast float %3545, %3545
  %3549 = fsub fast float %3546, %3428
  %3550 = fsub fast float %3547, %3429
  %3551 = fsub fast float %3548, %3430
  %3552 = fmul fast float %3549, %3453
  %3553 = fmul fast float %3550, %3453
  %3554 = fmul fast float %3551, %3453
  %3555 = fadd fast float %3552, %3428
  %3556 = fadd fast float %3553, %3429
  %3557 = fadd fast float %3554, %3430
  %3558 = fadd fast float %3475, %3439
  %3559 = fsub fast float %3558, %3492
  %3560 = call float @dx.op.unary.f32(i32 7, float %3559)  ; Saturate(value)
  %3561 = fsub fast float %3560, %3439
  %3562 = fmul fast float %3561, %3453
  %3563 = fadd fast float %3562, %3439
  br label %3617

; <label>:3564                                    ; preds = %3452
  %3565 = and i32 %3455, 134217728
  %3566 = icmp eq i32 %3565, 0
  br i1 %3566, label %3601, label %3567

; <label>:3567                                    ; preds = %3564
  %3568 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %3569 = call float @dx.op.unary.f32(i32 24, float %322)  ; Sqrt(value)
  %3570 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %3571 = fadd fast float %3568, -5.000000e-01
  %3572 = fadd fast float %3569, -5.000000e-01
  %3573 = fadd fast float %3570, -5.000000e-01
  %3574 = fmul fast float %3571, %3453
  %3575 = fmul fast float %3572, %3453
  %3576 = fmul fast float %3573, %3453
  %3577 = fadd fast float %3574, 5.000000e-01
  %3578 = fadd fast float %3575, 5.000000e-01
  %3579 = fadd fast float %3576, 5.000000e-01
  %3580 = call float @dx.op.unary.f32(i32 24, float %3428)  ; Sqrt(value)
  %3581 = call float @dx.op.unary.f32(i32 24, float %3429)  ; Sqrt(value)
  %3582 = call float @dx.op.unary.f32(i32 24, float %3430)  ; Sqrt(value)
  %3583 = fmul fast float %3577, 2.000000e+00
  %3584 = fsub fast float 1.000000e+00, %3583
  %3585 = fmul fast float %3584, %3580
  %3586 = fadd fast float %3585, %3583
  %3587 = fmul fast float %3586, %3580
  %3588 = fmul fast float %3578, 2.000000e+00
  %3589 = fsub fast float 1.000000e+00, %3588
  %3590 = fmul fast float %3589, %3581
  %3591 = fadd fast float %3590, %3588
  %3592 = fmul fast float %3591, %3581
  %3593 = fmul fast float %3579, 2.000000e+00
  %3594 = fsub fast float 1.000000e+00, %3593
  %3595 = fmul fast float %3594, %3582
  %3596 = fadd fast float %3595, %3593
  %3597 = fmul fast float %3596, %3582
  %3598 = fmul fast float %3587, %3587
  %3599 = fmul fast float %3592, %3592
  %3600 = fmul fast float %3597, %3597
  br label %3617

; <label>:3601                                    ; preds = %3564
  %3602 = fmul fast float %318, %318
  %3603 = fmul fast float %322, %322
  %3604 = fmul fast float %326, %326
  %3605 = fadd fast float %3602, -1.000000e+00
  %3606 = fadd fast float %3603, -1.000000e+00
  %3607 = fadd fast float %3604, -1.000000e+00
  %3608 = fmul fast float %3453, %3605
  %3609 = fmul fast float %3453, %3606
  %3610 = fmul fast float %3453, %3607
  %3611 = fadd fast float %3608, 1.000000e+00
  %3612 = fadd fast float %3609, 1.000000e+00
  %3613 = fadd fast float %3610, 1.000000e+00
  %3614 = fmul fast float %3611, %3428
  %3615 = fmul fast float %3612, %3429
  %3616 = fmul fast float %3613, %3430
  br label %3617

; <label>:3617                                    ; preds = %3601, %3567, %3458, %3414
  %3618 = phi float [ %3563, %3458 ], [ %3439, %3567 ], [ %3439, %3601 ], [ 0x3FA23C0BE0000000, %3414 ]
  %3619 = phi float [ %3555, %3458 ], [ %3598, %3567 ], [ %3614, %3601 ], [ 1.000000e+00, %3414 ]
  %3620 = phi float [ %3556, %3458 ], [ %3599, %3567 ], [ %3615, %3601 ], [ 1.000000e+00, %3414 ]
  %3621 = phi float [ %3557, %3458 ], [ %3600, %3567 ], [ %3616, %3601 ], [ 1.000000e+00, %3414 ]
  %3622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3623 = extractvalue %dx.types.CBufRet.i32 %3622, 1
  %3624 = and i32 %3623, 1
  %3625 = icmp ne i32 %3624, 0
  %3626 = add i32 %32, 356
  %3627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3626, i32 undef)  ; BufferLoad(srv,index,wot)
  %3628 = extractvalue %dx.types.ResRet.i32 %3627, 0
  %3629 = and i32 %3628, 32
  %3630 = icmp ne i32 %3629, 0
  %3631 = and i1 %3625, %3630
  %3632 = select i1 %3631, float 1.000000e+00, float %3619
  %3633 = select i1 %3631, float 0x3FD3333340000000, float %3620
  %3634 = select i1 %3631, float 0x3FD3333340000000, float %3621
  %3635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3636 = extractvalue %dx.types.ResRet.i32 %3635, 0
  %3637 = and i32 %3636, 32
  %3638 = icmp eq i32 %3637, 0
  br i1 %3638, label %3711, label %3639

; <label>:3639                                    ; preds = %3617
  %3640 = add i32 %32, 140
  %3641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3640, i32 undef)  ; BufferLoad(srv,index,wot)
  %3642 = extractvalue %dx.types.ResRet.i32 %3641, 0
  %3643 = add i32 %32, 388
  %3644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.i32 %3644, 0
  %3646 = add i32 %3645, 0
  %3647 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3646, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3648 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3647, %dx.types.Handle %67, float %3224, float %3225, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3649 = extractvalue %dx.types.ResRet.f32 %3648, 0
  %3650 = extractvalue %dx.types.ResRet.f32 %3648, 1
  %3651 = extractvalue %dx.types.ResRet.f32 %3648, 2
  %3652 = extractvalue %dx.types.ResRet.f32 %3648, 3
  %3653 = and i32 %3642, 255
  %3654 = uitofp i32 %3653 to float
  %3655 = lshr i32 %3642, 8
  %3656 = and i32 %3655, 255
  %3657 = uitofp i32 %3656 to float
  %3658 = lshr i32 %3642, 16
  %3659 = and i32 %3658, 255
  %3660 = uitofp i32 %3659 to float
  %3661 = fmul fast float %3660, 0x3F70101000000000
  %3662 = fmul fast float %3649, %3654
  %3663 = fadd fast float %3662, %3657
  %3664 = fmul fast float %3663, 0x3F70101000000000
  %3665 = fadd fast float %3650, -5.000000e-01
  %3666 = fadd fast float %3652, -5.000000e-01
  %3667 = fmul fast float %3665, %3661
  %3668 = fmul fast float %3666, %3661
  %3669 = fadd fast float %3667, 5.000000e-01
  %3670 = fadd fast float %3668, 5.000000e-01
  %3671 = fmul fast float %3669, 2.000000e+00
  %3672 = fadd fast float %3671, -1.000000e+00
  %3673 = fmul fast float %3670, 2.000000e+00
  %3674 = fadd fast float %3673, -1.000000e+00
  %3675 = fadd fast float %3672, %3674
  %3676 = fmul fast float %3675, 5.000000e-01
  %3677 = fsub fast float %3672, %3674
  %3678 = fmul fast float %3677, 5.000000e-01
  %3679 = call float @dx.op.unary.f32(i32 6, float %3676)  ; FAbs(value)
  %3680 = fsub fast float 1.000000e+00, %3679
  %3681 = call float @dx.op.unary.f32(i32 6, float %3678)  ; FAbs(value)
  %3682 = fsub fast float %3680, %3681
  %3683 = call float @dx.op.dot3.f32(i32 55, float %3676, float %3678, float %3682, float %3676, float %3678, float %3682)  ; Dot3(ax,ay,az,bx,by,bz)
  %3684 = call float @dx.op.unary.f32(i32 25, float %3683)  ; Rsqrt(value)
  %3685 = fmul fast float %3676, %3684
  %3686 = fmul fast float %3678, %3684
  %3687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3688 = extractvalue %dx.types.ResRet.i32 %3687, 0
  %3689 = and i32 %3688, 67108864
  %3690 = icmp eq i32 %3689, 0
  br i1 %3690, label %3707, label %3691

; <label>:3691                                    ; preds = %3639
  %3692 = add i32 %32, 328
  %3693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3692, i32 undef)  ; BufferLoad(srv,index,wot)
  %3694 = extractvalue %dx.types.ResRet.i32 %3693, 0
  %3695 = and i32 %3694, 65535
  %3696 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3695)  ; LegacyF16ToF32(value)
  %3697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3134, i32 undef)  ; BufferLoad(srv,index,wot)
  %3698 = extractvalue %dx.types.ResRet.i32 %3697, 0
  %3699 = and i32 %3698, 65535
  %3700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3699)  ; LegacyF16ToF32(value)
  %3701 = lshr i32 %3694, 16
  %3702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3701)  ; LegacyF16ToF32(value)
  %3703 = fsub fast float %3664, %3702
  %3704 = fmul fast float %3703, %3696
  %3705 = fadd fast float %3704, %3700
  %3706 = call float @dx.op.unary.f32(i32 7, float %3705)  ; Saturate(value)
  br label %3707

; <label>:3707                                    ; preds = %3691, %3639
  %3708 = phi float [ %3706, %3691 ], [ %3664, %3639 ]
  %3709 = call float @dx.op.dot2.f32(i32 54, float %3685, float %3686, float %3128, float %3129)  ; Dot2(ax,ay,bx,by)
  %3710 = call float @dx.op.dot2.f32(i32 54, float %3685, float %3686, float %3130, float %3131)  ; Dot2(ax,ay,bx,by)
  br label %3711

; <label>:3711                                    ; preds = %3707, %3617
  %3712 = phi float [ %3708, %3707 ], [ 0x3FD6666660000000, %3617 ]
  %3713 = phi float [ %3709, %3707 ], [ 0.000000e+00, %3617 ]
  %3714 = phi float [ %3710, %3707 ], [ 0.000000e+00, %3617 ]
  %3715 = phi float [ %3651, %3707 ], [ 1.000000e+00, %3617 ]
  %3716 = add i32 %32, 208
  %3717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3716, i32 undef)  ; BufferLoad(srv,index,wot)
  %3718 = extractvalue %dx.types.ResRet.i32 %3717, 0
  %3719 = lshr i32 %3718, 22
  %3720 = shl nuw nsw i32 %3719, 5
  %3721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3720)  ; LegacyF16ToF32(value)
  %3722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3723 = extractvalue %dx.types.ResRet.i32 %3722, 0
  %3724 = and i32 %3723, 64
  %3725 = icmp eq i32 %3724, 0
  br i1 %3725, label %3759, label %3726

; <label>:3726                                    ; preds = %3711
  %3727 = add i32 %32, 404
  %3728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3729 = extractvalue %dx.types.ResRet.i32 %3728, 0
  %3730 = add i32 %3729, 0
  %3731 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3730, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3733 = extractvalue %dx.types.ResRet.i32 %3732, 0
  %3734 = and i32 %3733, 131072
  %3735 = icmp eq i32 %3734, 0
  %3736 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3731, %dx.types.Handle %67, float %3224, float %3225, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3737 = extractvalue %dx.types.ResRet.f32 %3736, 0
  %3738 = extractvalue %dx.types.ResRet.f32 %3736, 1
  %3739 = extractvalue %dx.types.ResRet.f32 %3736, 2
  %3740 = fmul fast float %3737, %306
  %3741 = fmul fast float %3738, %309
  %3742 = fmul fast float %3739, %312
  br i1 %3735, label %3749, label %3743

; <label>:3743                                    ; preds = %3726
  %3744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3745 = extractvalue %dx.types.CBufRet.f32 %3744, 0
  %3746 = fmul fast float %3745, %3740
  %3747 = fmul fast float %3745, %3741
  %3748 = fmul fast float %3745, %3742
  br label %3749

; <label>:3749                                    ; preds = %3743, %3726
  %3750 = phi float [ %3746, %3743 ], [ %3740, %3726 ]
  %3751 = phi float [ %3747, %3743 ], [ %3741, %3726 ]
  %3752 = phi float [ %3748, %3743 ], [ %3742, %3726 ]
  %3753 = fmul fast float %3750, %3721
  %3754 = select i1 %174, float %3753, float %3750
  %3755 = call float @dx.op.dot3.f32(i32 55, float %3754, float %3751, float %3752, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3756 = select i1 %174, float 0.000000e+00, float %3750
  %3757 = select i1 %174, float %3755, float %3751
  %3758 = select i1 %174, float 0.000000e+00, float %3752
  br label %3759

; <label>:3759                                    ; preds = %3749, %3711
  %3760 = phi float [ %3756, %3749 ], [ 0.000000e+00, %3711 ]
  %3761 = phi float [ %3757, %3749 ], [ 0.000000e+00, %3711 ]
  %3762 = phi float [ %3758, %3749 ], [ 0.000000e+00, %3711 ]
  %3763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3764 = extractvalue %dx.types.ResRet.i32 %3763, 0
  %3765 = and i32 %3764, 1024
  %3766 = icmp eq i32 %3765, 0
  br i1 %3766, label %3797, label %3767

; <label>:3767                                    ; preds = %3759
  %3768 = add i32 %32, 200
  %3769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3768, i32 undef)  ; BufferLoad(srv,index,wot)
  %3770 = extractvalue %dx.types.ResRet.i32 %3769, 0
  %3771 = and i32 %3770, 255
  %3772 = uitofp i32 %3771 to float
  %3773 = fmul fast float %3772, 0x3F70101020000000
  %3774 = lshr i32 %3770, 8
  %3775 = and i32 %3774, 255
  %3776 = uitofp i32 %3775 to float
  %3777 = fmul fast float %3776, 0x3F70101020000000
  %3778 = lshr i32 %3770, 16
  %3779 = and i32 %3778, 255
  %3780 = uitofp i32 %3779 to float
  %3781 = fmul fast float %3780, 0x3F70101020000000
  %3782 = fmul fast float %3773, %3773
  %3783 = fmul fast float %3777, %3777
  %3784 = fmul fast float %3781, %3781
  %3785 = add i32 %32, 468
  %3786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3785, i32 undef)  ; BufferLoad(srv,index,wot)
  %3787 = extractvalue %dx.types.ResRet.i32 %3786, 0
  %3788 = add i32 %3787, 0
  %3789 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3788, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3790 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3789, %dx.types.Handle %68, float %3224, float %3225, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3791 = extractvalue %dx.types.ResRet.f32 %3790, 0
  %3792 = extractvalue %dx.types.ResRet.f32 %3790, 1
  %3793 = extractvalue %dx.types.ResRet.f32 %3790, 2
  %3794 = fmul fast float %3782, %3791
  %3795 = fmul fast float %3783, %3792
  %3796 = fmul fast float %3784, %3793
  br label %3797

; <label>:3797                                    ; preds = %3767, %3759
  %3798 = phi float [ %3794, %3767 ], [ 0.000000e+00, %3759 ]
  %3799 = phi float [ %3795, %3767 ], [ 0.000000e+00, %3759 ]
  %3800 = phi float [ %3796, %3767 ], [ 0.000000e+00, %3759 ]
  %3801 = fcmp fast ogt float %3798, 0.000000e+00
  %3802 = fcmp fast ogt float %3799, 0.000000e+00
  %3803 = fcmp fast ogt float %3800, 0.000000e+00
  %3804 = call float @dx.op.unary.f32(i32 23, float %3798)  ; Log(value)
  %3805 = call float @dx.op.unary.f32(i32 23, float %3799)  ; Log(value)
  %3806 = call float @dx.op.unary.f32(i32 23, float %3800)  ; Log(value)
  %3807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3716, i32 undef)  ; BufferLoad(srv,index,wot)
  %3808 = extractvalue %dx.types.ResRet.i32 %3807, 0
  %3809 = lshr i32 %3808, 7
  %3810 = and i32 %3809, 32752
  %3811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3810)  ; LegacyF16ToF32(value)
  %3812 = fmul fast float %3804, 0xBFE62E4300000000
  %3813 = fmul fast float %3812, %3811
  %3814 = fmul fast float %3805, 0xBFE62E4300000000
  %3815 = fmul fast float %3814, %3811
  %3816 = fmul fast float %3806, 0xBFE62E4300000000
  %3817 = fmul fast float %3816, %3811
  %3818 = select i1 %3801, float %3813, float 1.270000e+02
  %3819 = select i1 %3802, float %3815, float 1.270000e+02
  %3820 = select i1 %3803, float %3817, float 1.270000e+02
  %3821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3822 = extractvalue %dx.types.ResRet.i32 %3821, 0
  %3823 = and i32 %3822, 10240
  %3824 = icmp eq i32 %3823, 0
  br i1 %3824, label %3869, label %3825

; <label>:3825                                    ; preds = %3797
  %3826 = add i32 %32, 484
  %3827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3828 = extractvalue %dx.types.ResRet.i32 %3827, 0
  %3829 = add i32 %3828, 0
  %3830 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3829, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3831 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3830, %dx.types.Handle %68, float %3224, float %3225, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3832 = extractvalue %dx.types.ResRet.f32 %3831, 1
  %3833 = extractvalue %dx.types.ResRet.f32 %3831, 3
  %3834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3835 = extractvalue %dx.types.ResRet.i32 %3834, 0
  %3836 = and i32 %3835, 1048576
  %3837 = icmp ne i32 %3836, 0
  %3838 = and i32 %3835, 8192
  %3839 = icmp eq i32 %3838, 0
  br i1 %3839, label %3855, label %3840

; <label>:3840                                    ; preds = %3825
  %3841 = extractvalue %dx.types.ResRet.f32 %3831, 2
  %3842 = select i1 %3837, float %3841, float %3832
  %3843 = extractvalue %dx.types.ResRet.f32 %3831, 0
  %3844 = select i1 %3837, float %3843, float %3832
  %3845 = add i32 %32, 144
  %3846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3845, i32 undef)  ; BufferLoad(srv,index,wot)
  %3847 = extractvalue %dx.types.ResRet.i32 %3846, 0
  %3848 = lshr i32 %3847, 16
  %3849 = and i32 %3848, 255
  %3850 = uitofp i32 %3849 to float
  %3851 = fmul fast float %3850, 0x3F80101020000000
  %3852 = fmul fast float %3851, %3844
  %3853 = fmul fast float %3851, %3832
  %3854 = fmul fast float %3851, %3842
  br label %3855

; <label>:3855                                    ; preds = %3840, %3825
  %3856 = phi float [ %3852, %3840 ], [ 0.000000e+00, %3825 ]
  %3857 = phi float [ %3853, %3840 ], [ 0.000000e+00, %3825 ]
  %3858 = phi float [ %3854, %3840 ], [ 0.000000e+00, %3825 ]
  %3859 = and i32 %3835, 2048
  %3860 = icmp eq i32 %3859, 0
  br i1 %3860, label %3869, label %3861

; <label>:3861                                    ; preds = %3855
  %3862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3716, i32 undef)  ; BufferLoad(srv,index,wot)
  %3863 = extractvalue %dx.types.ResRet.i32 %3862, 0
  %3864 = shl i32 %3863, 4
  %3865 = and i32 %3864, 32752
  %3866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3865)  ; LegacyF16ToF32(value)
  %3867 = fmul fast float %3866, %3833
  %3868 = call float @dx.op.binary.f32(i32 35, float %3867, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3869

; <label>:3869                                    ; preds = %3861, %3855, %3797
  %3870 = phi float [ %3856, %3861 ], [ %3856, %3855 ], [ 0.000000e+00, %3797 ]
  %3871 = phi float [ %3857, %3861 ], [ %3857, %3855 ], [ 0.000000e+00, %3797 ]
  %3872 = phi float [ %3858, %3861 ], [ %3858, %3855 ], [ 0.000000e+00, %3797 ]
  %3873 = phi float [ %3868, %3861 ], [ 0x3F70101020000000, %3855 ], [ 0x3F70101020000000, %3797 ]
  %3874 = add i32 %32, 144
  %3875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3874, i32 undef)  ; BufferLoad(srv,index,wot)
  %3876 = extractvalue %dx.types.ResRet.i32 %3875, 0
  %3877 = and i32 %3876, 255
  %3878 = uitofp i32 %3877 to float
  %3879 = lshr i32 %3876, 8
  %3880 = and i32 %3879, 255
  %3881 = uitofp i32 %3880 to float
  %3882 = call float @dx.op.dot3.f32(i32 55, float %3632, float %3633, float %3634, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3883 = fmul fast float %3881, %3882
  %3884 = fadd fast float %3883, %3878
  %3885 = fmul fast float %3884, 0x3F70101020000000
  %3886 = call float @dx.op.unary.f32(i32 7, float %3885)  ; Saturate(value)
  br i1 %3116, label %3887, label %3922

; <label>:3887                                    ; preds = %3869
  %3888 = fmul fast float %3873, 2.000000e+00
  %3889 = fcmp fast olt float %3818, 1.270000e+02
  %3890 = fcmp fast olt float %3819, 1.270000e+02
  %3891 = fcmp fast olt float %3820, 1.270000e+02
  %3892 = fmul fast float %3818, 0xBFF7154760000000
  %3893 = fmul fast float %3892, %3888
  %3894 = fmul fast float %3819, 0xBFF7154760000000
  %3895 = fmul fast float %3894, %3888
  %3896 = fmul fast float %3820, 0xBFF7154760000000
  %3897 = fmul fast float %3896, %3888
  %3898 = call float @dx.op.unary.f32(i32 21, float %3893)  ; Exp(value)
  %3899 = call float @dx.op.unary.f32(i32 21, float %3895)  ; Exp(value)
  %3900 = call float @dx.op.unary.f32(i32 21, float %3897)  ; Exp(value)
  %3901 = call float @dx.op.unary.f32(i32 7, float %3898)  ; Saturate(value)
  %3902 = call float @dx.op.unary.f32(i32 7, float %3899)  ; Saturate(value)
  %3903 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3904 = fadd fast float %3901, -1.000000e+00
  %3905 = select i1 %3889, float %3904, float -1.000000e+00
  %3906 = fadd fast float %3902, -1.000000e+00
  %3907 = select i1 %3890, float %3906, float -1.000000e+00
  %3908 = fadd fast float %3903, -1.000000e+00
  %3909 = select i1 %3891, float %3908, float -1.000000e+00
  %3910 = fmul fast float %3905, %3412
  %3911 = fmul fast float %3907, %3412
  %3912 = fmul fast float %3909, %3412
  %3913 = fadd fast float %3910, 1.000000e+00
  %3914 = fadd fast float %3911, 1.000000e+00
  %3915 = fadd fast float %3912, 1.000000e+00
  %3916 = fmul fast float %3913, %3107
  %3917 = fmul fast float %3914, %3108
  %3918 = fmul fast float %3915, %3109
  %3919 = fmul fast float %3913, %3101
  %3920 = fmul fast float %3914, %3102
  %3921 = fmul fast float %3915, %3103
  br label %3922

; <label>:3922                                    ; preds = %3887, %3869
  %3923 = phi float [ %3919, %3887 ], [ %3101, %3869 ]
  %3924 = phi float [ %3920, %3887 ], [ %3102, %3869 ]
  %3925 = phi float [ %3921, %3887 ], [ %3103, %3869 ]
  %3926 = phi float [ %3916, %3887 ], [ %3107, %3869 ]
  %3927 = phi float [ %3917, %3887 ], [ %3108, %3869 ]
  %3928 = phi float [ %3918, %3887 ], [ %3109, %3869 ]
  %3929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3930 = extractvalue %dx.types.ResRet.i32 %3929, 0
  %3931 = and i32 %3930, 3
  %3932 = icmp eq i32 %3931, 3
  br i1 %3932, label %4011, label %3933

; <label>:3933                                    ; preds = %3922
  %3934 = and i32 %3930, 16
  %3935 = icmp ne i32 %3934, 0
  %3936 = select i1 %3935, float %3412, float 0.000000e+00
  %3937 = icmp eq i32 %3931, 0
  br i1 %3937, label %3938, label %3966

; <label>:3938                                    ; preds = %3933
  %3939 = and i32 %3930, 64
  %3940 = icmp ne i32 %3939, 0
  %3941 = select i1 %3940, float %3412, float 0.000000e+00
  %3942 = fsub fast float %3632, %3926
  %3943 = fsub fast float %3633, %3927
  %3944 = fsub fast float %3634, %3928
  %3945 = fmul fast float %3936, %3942
  %3946 = fmul fast float %3936, %3943
  %3947 = fmul fast float %3936, %3944
  %3948 = fadd fast float %3945, %3926
  %3949 = fadd fast float %3946, %3927
  %3950 = fadd fast float %3947, %3928
  %3951 = fsub fast float %3618, %3110
  %3952 = fmul fast float %3936, %3951
  %3953 = fadd fast float %3952, %3110
  %3954 = fsub fast float %3760, %3923
  %3955 = fsub fast float %3761, %3924
  %3956 = fsub fast float %3762, %3925
  %3957 = fmul fast float %3941, %3954
  %3958 = fmul fast float %3941, %3955
  %3959 = fmul fast float %3941, %3956
  %3960 = fadd fast float %3957, %3923
  %3961 = fadd fast float %3958, %3924
  %3962 = fadd fast float %3959, %3925
  %3963 = fsub fast float %3886, %3114
  %3964 = fmul fast float %3936, %3963
  %3965 = fadd fast float %3964, %3114
  br label %4011

; <label>:3966                                    ; preds = %3933
  %3967 = icmp eq i32 %3931, 1
  br i1 %3967, label %3968, label %3981

; <label>:3968                                    ; preds = %3966
  %3969 = fadd fast float %3632, -1.000000e+00
  %3970 = fadd fast float %3633, -1.000000e+00
  %3971 = fadd fast float %3634, -1.000000e+00
  %3972 = fmul fast float %3936, %3969
  %3973 = fmul fast float %3936, %3970
  %3974 = fmul fast float %3936, %3971
  %3975 = fadd fast float %3972, 1.000000e+00
  %3976 = fadd fast float %3973, 1.000000e+00
  %3977 = fadd fast float %3974, 1.000000e+00
  %3978 = fmul fast float %3975, %3926
  %3979 = fmul fast float %3976, %3927
  %3980 = fmul fast float %3977, %3928
  br label %4011

; <label>:3981                                    ; preds = %3966
  %3982 = icmp eq i32 %3931, 2
  br i1 %3982, label %3983, label %4011

; <label>:3983                                    ; preds = %3981
  %3984 = call float @dx.op.unary.f32(i32 24, float %3632)  ; Sqrt(value)
  %3985 = call float @dx.op.unary.f32(i32 24, float %3633)  ; Sqrt(value)
  %3986 = call float @dx.op.unary.f32(i32 24, float %3634)  ; Sqrt(value)
  %3987 = fadd fast float %3984, -5.000000e-01
  %3988 = fadd fast float %3985, -5.000000e-01
  %3989 = fadd fast float %3986, -5.000000e-01
  %3990 = fmul fast float %3987, %3936
  %3991 = fmul fast float %3988, %3936
  %3992 = fmul fast float %3989, %3936
  %3993 = fadd fast float %3990, 5.000000e-01
  %3994 = fadd fast float %3991, 5.000000e-01
  %3995 = fadd fast float %3992, 5.000000e-01
  %3996 = fmul fast float %3993, 2.000000e+00
  %3997 = fsub fast float 1.000000e+00, %3996
  %3998 = fmul fast float %3997, %3926
  %3999 = fadd fast float %3998, %3996
  %4000 = fmul fast float %3999, %3926
  %4001 = fmul fast float %3994, 2.000000e+00
  %4002 = fsub fast float 1.000000e+00, %4001
  %4003 = fmul fast float %4002, %3927
  %4004 = fadd fast float %4003, %4001
  %4005 = fmul fast float %4004, %3927
  %4006 = fmul fast float %3995, 2.000000e+00
  %4007 = fsub fast float 1.000000e+00, %4006
  %4008 = fmul fast float %4007, %3928
  %4009 = fadd fast float %4008, %4006
  %4010 = fmul fast float %4009, %3928
  br label %4011

; <label>:4011                                    ; preds = %3983, %3981, %3968, %3938, %3922
  %4012 = phi float [ %3923, %3922 ], [ %3923, %3983 ], [ %3923, %3981 ], [ %3923, %3968 ], [ %3960, %3938 ]
  %4013 = phi float [ %3924, %3922 ], [ %3924, %3983 ], [ %3924, %3981 ], [ %3924, %3968 ], [ %3961, %3938 ]
  %4014 = phi float [ %3925, %3922 ], [ %3925, %3983 ], [ %3925, %3981 ], [ %3925, %3968 ], [ %3962, %3938 ]
  %4015 = phi float [ %3926, %3922 ], [ %4000, %3983 ], [ %3926, %3981 ], [ %3978, %3968 ], [ %3948, %3938 ]
  %4016 = phi float [ %3927, %3922 ], [ %4005, %3983 ], [ %3927, %3981 ], [ %3979, %3968 ], [ %3949, %3938 ]
  %4017 = phi float [ %3928, %3922 ], [ %4010, %3983 ], [ %3928, %3981 ], [ %3980, %3968 ], [ %3950, %3938 ]
  %4018 = phi float [ %3110, %3922 ], [ %3110, %3983 ], [ %3110, %3981 ], [ %3110, %3968 ], [ %3953, %3938 ]
  %4019 = phi float [ %3114, %3922 ], [ %3114, %3983 ], [ %3114, %3981 ], [ %3114, %3968 ], [ %3965, %3938 ]
  %4020 = and i32 %3930, 12
  %4021 = icmp eq i32 %4020, 12
  br i1 %4021, label %4152, label %4022

; <label>:4022                                    ; preds = %4011
  %4023 = and i32 %3930, 2097184
  %4024 = icmp eq i32 %4023, 2097184
  %4025 = select i1 %4024, float %3412, float 0.000000e+00
  %4026 = and i32 %3930, 4194336
  %4027 = icmp eq i32 %4026, 4194336
  %4028 = select i1 %4027, float %3412, float 0.000000e+00
  %4029 = and i32 %3930, 8388640
  %4030 = icmp eq i32 %4029, 8388640
  %4031 = select i1 %4030, float %3412, float 0.000000e+00
  %4032 = and i32 %3930, 1024
  %4033 = icmp ne i32 %4032, 0
  %4034 = select i1 %4033, float %3412, float 0.000000e+00
  %4035 = and i32 %3930, 2048
  %4036 = icmp ne i32 %4035, 0
  %4037 = select i1 %4036, float %3412, float 0.000000e+00
  %4038 = and i32 %3930, 8192
  %4039 = icmp ne i32 %4038, 0
  %4040 = select i1 %4039, float %3412, float 0.000000e+00
  %4041 = icmp eq i32 %4020, 0
  br i1 %4041, label %4042, label %4076

; <label>:4042                                    ; preds = %4022
  %4043 = fsub fast float %3713, %3096
  %4044 = fsub fast float %3714, %3097
  %4045 = fmul fast float %4025, %4043
  %4046 = fmul fast float %4025, %4044
  %4047 = fadd fast float %4045, %3096
  %4048 = fadd fast float %4046, %3097
  %4049 = fsub fast float %3715, %3112
  %4050 = fmul fast float %4028, %4049
  %4051 = fadd fast float %4050, %3112
  %4052 = fsub fast float %3712, %3111
  %4053 = fmul fast float %4031, %4052
  %4054 = fadd fast float %4053, %3111
  %4055 = fsub fast float %3818, %3104
  %4056 = fsub fast float %3819, %3105
  %4057 = fsub fast float %3820, %3106
  %4058 = fmul fast float %4034, %4055
  %4059 = fmul fast float %4034, %4056
  %4060 = fmul fast float %4034, %4057
  %4061 = fadd fast float %4058, %3104
  %4062 = fadd fast float %4059, %3105
  %4063 = fadd fast float %4060, %3106
  %4064 = fsub fast float %3873, %3113
  %4065 = fmul fast float %4037, %4064
  %4066 = fadd fast float %4065, %3113
  %4067 = fsub fast float %3870, %3098
  %4068 = fsub fast float %3871, %3099
  %4069 = fsub fast float %3872, %3100
  %4070 = fmul fast float %4040, %4067
  %4071 = fmul fast float %4040, %4068
  %4072 = fmul fast float %4040, %4069
  %4073 = fadd fast float %4070, %3098
  %4074 = fadd fast float %4071, %3099
  %4075 = fadd fast float %4072, %3100
  br label %4152

; <label>:4076                                    ; preds = %4022
  %4077 = icmp eq i32 %4020, 4
  br i1 %4077, label %4078, label %4124

; <label>:4078                                    ; preds = %4076
  %4079 = fmul fast float %4025, %3713
  %4080 = fmul fast float %4025, %3714
  %4081 = fadd fast float %4079, %3096
  %4082 = fadd fast float %4080, %3097
  %4083 = call float @dx.op.binary.f32(i32 36, float %3112, float %3715)  ; FMin(a,b)
  %4084 = fsub fast float %4083, %3112
  %4085 = fmul fast float %4084, %4028
  %4086 = fadd fast float %4085, %3112
  %4087 = fadd fast float %3712, %3111
  %4088 = fmul fast float %4087, 0x3FF337FAE0000000
  %4089 = fmul fast float %3111, %3111
  %4090 = fmul fast float %3712, %3712
  %4091 = fadd fast float %4090, %4089
  %4092 = fmul fast float %4091, 0x3FE5152B00000000
  %4093 = fmul fast float %3111, 0xBFCC1F85E0000000
  %4094 = fmul fast float %4093, %3712
  %4095 = fadd fast float %4094, 0xBFE1363700000000
  %4096 = fadd fast float %4095, %4088
  %4097 = fsub fast float %4096, %4092
  %4098 = fmul fast float %4087, 0x3FBA6F0D00000000
  %4099 = fmul fast float %4091, 0x3FD0432880000000
  %4100 = fmul fast float %3111, 0xBFEF110800000000
  %4101 = fmul fast float %4100, %3712
  %4102 = fadd fast float %4101, 1.000000e+00
  %4103 = fsub fast float %4102, %4098
  %4104 = fadd fast float %4103, %4099
  %4105 = fdiv fast float %4097, %4104
  %4106 = call float @dx.op.unary.f32(i32 7, float %4105)  ; Saturate(value)
  %4107 = fsub fast float %4106, %3111
  %4108 = fmul fast float %4107, %4031
  %4109 = fadd fast float %4108, %3111
  %4110 = fmul fast float %4034, %3818
  %4111 = fmul fast float %4034, %3819
  %4112 = fmul fast float %4034, %3820
  %4113 = fadd fast float %4110, %3104
  %4114 = fadd fast float %4111, %3105
  %4115 = fadd fast float %4112, %3106
  %4116 = fmul fast float %4037, %3873
  %4117 = fadd fast float %4116, %3113
  %4118 = fmul fast float %4040, %3870
  %4119 = fmul fast float %4040, %3871
  %4120 = fmul fast float %4040, %3872
  %4121 = fadd fast float %4118, %3098
  %4122 = fadd fast float %4119, %3099
  %4123 = fadd fast float %4120, %3100
  br label %4152

; <label>:4124                                    ; preds = %4076
  %4125 = icmp eq i32 %4020, 8
  br i1 %4125, label %4126, label %4152

; <label>:4126                                    ; preds = %4124
  %4127 = fmul fast float %4025, %3713
  %4128 = fmul fast float %4025, %3714
  %4129 = fadd fast float %4127, %3096
  %4130 = fadd fast float %4128, %3097
  %4131 = call float @dx.op.binary.f32(i32 36, float %3112, float %3715)  ; FMin(a,b)
  %4132 = fsub fast float %4131, %3112
  %4133 = fmul fast float %4132, %4028
  %4134 = fadd fast float %4133, %3112
  %4135 = fsub fast float %3712, %3111
  %4136 = fmul fast float %4031, %4135
  %4137 = fadd fast float %4136, %3111
  %4138 = fmul fast float %4034, %3818
  %4139 = fmul fast float %4034, %3819
  %4140 = fmul fast float %4034, %3820
  %4141 = fadd fast float %4138, %3104
  %4142 = fadd fast float %4139, %3105
  %4143 = fadd fast float %4140, %3106
  %4144 = fmul fast float %4037, %3873
  %4145 = fadd fast float %4144, %3113
  %4146 = fmul fast float %4040, %3870
  %4147 = fmul fast float %4040, %3871
  %4148 = fmul fast float %4040, %3872
  %4149 = fadd fast float %4146, %3098
  %4150 = fadd fast float %4147, %3099
  %4151 = fadd fast float %4148, %3100
  br label %4152

; <label>:4152                                    ; preds = %4126, %4124, %4078, %4042, %4011, %3411, %3115, %3095
  %4153 = phi float [ %3096, %4011 ], [ %3096, %3411 ], [ %3096, %3095 ], [ %3096, %3115 ], [ %4047, %4042 ], [ %4081, %4078 ], [ %3096, %4124 ], [ %4129, %4126 ]
  %4154 = phi float [ %3097, %4011 ], [ %3097, %3411 ], [ %3097, %3095 ], [ %3097, %3115 ], [ %4048, %4042 ], [ %4082, %4078 ], [ %3097, %4124 ], [ %4130, %4126 ]
  %4155 = phi float [ %3098, %4011 ], [ %3098, %3411 ], [ %3098, %3095 ], [ %3098, %3115 ], [ %4073, %4042 ], [ %4121, %4078 ], [ %3098, %4124 ], [ %4149, %4126 ]
  %4156 = phi float [ %3099, %4011 ], [ %3099, %3411 ], [ %3099, %3095 ], [ %3099, %3115 ], [ %4074, %4042 ], [ %4122, %4078 ], [ %3099, %4124 ], [ %4150, %4126 ]
  %4157 = phi float [ %3100, %4011 ], [ %3100, %3411 ], [ %3100, %3095 ], [ %3100, %3115 ], [ %4075, %4042 ], [ %4123, %4078 ], [ %3100, %4124 ], [ %4151, %4126 ]
  %4158 = phi float [ %4012, %4011 ], [ %3101, %3411 ], [ %3101, %3095 ], [ %3101, %3115 ], [ %4012, %4042 ], [ %4012, %4078 ], [ %4012, %4124 ], [ %4012, %4126 ]
  %4159 = phi float [ %4013, %4011 ], [ %3102, %3411 ], [ %3102, %3095 ], [ %3102, %3115 ], [ %4013, %4042 ], [ %4013, %4078 ], [ %4013, %4124 ], [ %4013, %4126 ]
  %4160 = phi float [ %4014, %4011 ], [ %3103, %3411 ], [ %3103, %3095 ], [ %3103, %3115 ], [ %4014, %4042 ], [ %4014, %4078 ], [ %4014, %4124 ], [ %4014, %4126 ]
  %4161 = phi float [ %3104, %4011 ], [ %3104, %3411 ], [ %3104, %3095 ], [ %3104, %3115 ], [ %4061, %4042 ], [ %4113, %4078 ], [ %3104, %4124 ], [ %4141, %4126 ]
  %4162 = phi float [ %3105, %4011 ], [ %3105, %3411 ], [ %3105, %3095 ], [ %3105, %3115 ], [ %4062, %4042 ], [ %4114, %4078 ], [ %3105, %4124 ], [ %4142, %4126 ]
  %4163 = phi float [ %3106, %4011 ], [ %3106, %3411 ], [ %3106, %3095 ], [ %3106, %3115 ], [ %4063, %4042 ], [ %4115, %4078 ], [ %3106, %4124 ], [ %4143, %4126 ]
  %4164 = phi float [ %4015, %4011 ], [ %3107, %3411 ], [ %3107, %3095 ], [ %3107, %3115 ], [ %4015, %4042 ], [ %4015, %4078 ], [ %4015, %4124 ], [ %4015, %4126 ]
  %4165 = phi float [ %4016, %4011 ], [ %3108, %3411 ], [ %3108, %3095 ], [ %3108, %3115 ], [ %4016, %4042 ], [ %4016, %4078 ], [ %4016, %4124 ], [ %4016, %4126 ]
  %4166 = phi float [ %4017, %4011 ], [ %3109, %3411 ], [ %3109, %3095 ], [ %3109, %3115 ], [ %4017, %4042 ], [ %4017, %4078 ], [ %4017, %4124 ], [ %4017, %4126 ]
  %4167 = phi float [ %4018, %4011 ], [ %3110, %3411 ], [ %3110, %3095 ], [ %3110, %3115 ], [ %4018, %4042 ], [ %4018, %4078 ], [ %4018, %4124 ], [ %4018, %4126 ]
  %4168 = phi float [ %3111, %4011 ], [ %3111, %3411 ], [ %3111, %3095 ], [ %3111, %3115 ], [ %4054, %4042 ], [ %4109, %4078 ], [ %3111, %4124 ], [ %4137, %4126 ]
  %4169 = phi float [ %3112, %4011 ], [ %3112, %3411 ], [ %3112, %3095 ], [ %3112, %3115 ], [ %4051, %4042 ], [ %4086, %4078 ], [ %3112, %4124 ], [ %4134, %4126 ]
  %4170 = phi float [ %3113, %4011 ], [ %3113, %3411 ], [ %3113, %3095 ], [ %3113, %3115 ], [ %4066, %4042 ], [ %4117, %4078 ], [ %3113, %4124 ], [ %4145, %4126 ]
  %4171 = phi float [ %4019, %4011 ], [ %3114, %3411 ], [ %3114, %3095 ], [ %3114, %3115 ], [ %4019, %4042 ], [ %4019, %4078 ], [ %4019, %4124 ], [ %4019, %4126 ]
  %4172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4173 = extractvalue %dx.types.CBufRet.f32 %4172, 0
  %4174 = call float @dx.op.dot2.f32(i32 54, float %4153, float %4154, float %4153, float %4154)  ; Dot2(ax,ay,bx,by)
  %4175 = fmul fast float %4174, 0x3FE3333340000000
  %4176 = fsub fast float 1.000000e+00, %4175
  %4177 = call float @dx.op.dot3.f32(i32 55, float %4153, float %4154, float %4176, float %4153, float %4154, float %4176)  ; Dot3(ax,ay,az,bx,by,bz)
  %4178 = call float @dx.op.unary.f32(i32 25, float %4177)  ; Rsqrt(value)
  %4179 = fmul fast float %4178, %4153
  %4180 = fmul fast float %4178, %4154
  %4181 = fmul fast float %4176, %4178
  %4182 = fmul fast float %4181, %80
  %4183 = fmul fast float %4181, %82
  %4184 = fmul fast float %4181, %84
  %4185 = fmul fast float %4179, %52
  %4186 = fmul fast float %4179, %53
  %4187 = fmul fast float %4179, %54
  %4188 = fadd fast float %4182, %4185
  %4189 = fadd fast float %4183, %4186
  %4190 = fadd fast float %4184, %4187
  %4191 = fmul fast float %94, %4180
  %4192 = fmul fast float %95, %4180
  %4193 = fmul fast float %96, %4180
  %4194 = fadd fast float %4188, %4191
  %4195 = fadd fast float %4189, %4192
  %4196 = fadd fast float %4190, %4193
  %4197 = call float @dx.op.dot3.f32(i32 55, float %4194, float %4195, float %4196, float %4194, float %4195, float %4196)  ; Dot3(ax,ay,az,bx,by,bz)
  %4198 = call float @dx.op.unary.f32(i32 25, float %4197)  ; Rsqrt(value)
  %4199 = fmul fast float %4194, %4198
  %4200 = fmul fast float %4195, %4198
  %4201 = fmul fast float %4196, %4198
  %4202 = fadd fast float %4167, 0xBFB99999A0000000
  %4203 = call float @dx.op.unary.f32(i32 7, float %4202)  ; Saturate(value)
  %4204 = fmul fast float %4203, 0x3FF1C71C80000000
  %4205 = call float @dx.op.binary.f32(i32 36, float %4167, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4206 = fsub fast float 1.000000e+00, %4204
  %4207 = call float @dx.op.unary.f32(i32 7, float %4206)  ; Saturate(value)
  %4208 = fmul fast float %4207, %4164
  %4209 = fmul fast float %4207, %4165
  %4210 = fmul fast float %4207, %4166
  %4211 = call float @dx.op.unary.f32(i32 7, float %4208)  ; Saturate(value)
  %4212 = call float @dx.op.unary.f32(i32 7, float %4209)  ; Saturate(value)
  %4213 = call float @dx.op.unary.f32(i32 7, float %4210)  ; Saturate(value)
  %4214 = fmul fast float %4204, %4164
  %4215 = fmul fast float %4204, %4165
  %4216 = fmul fast float %4204, %4166
  %4217 = fadd fast float %4214, %4205
  %4218 = fadd fast float %4215, %4205
  %4219 = fadd fast float %4216, %4205
  %4220 = call float @dx.op.unary.f32(i32 7, float %4217)  ; Saturate(value)
  %4221 = call float @dx.op.unary.f32(i32 7, float %4218)  ; Saturate(value)
  %4222 = call float @dx.op.unary.f32(i32 7, float %4219)  ; Saturate(value)
  %4223 = call float @dx.op.unary.f32(i32 7, float %4168)  ; Saturate(value)
  %4224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %4225 = extractvalue %dx.types.ResRet.i32 %4224, 0
  %4226 = and i32 %4225, 1
  %4227 = icmp eq i32 %4226, 0
  br i1 %4227, label %4242, label %4228

; <label>:4228                                    ; preds = %4152
  %4229 = call float @dx.op.binary.f32(i32 35, float %4212, float %4213)  ; FMax(a,b)
  %4230 = call float @dx.op.binary.f32(i32 35, float %4211, float %4229)  ; FMax(a,b)
  %4231 = fcmp fast ogt float %4230, 0.000000e+00
  %4232 = bitcast float %4230 to i32
  %4233 = sub nsw i32 2129859010, %4232
  %4234 = bitcast i32 %4233 to float
  %4235 = select i1 %4231, float %4234, float 0.000000e+00
  %4236 = fmul fast float %4211, %4155
  %4237 = fmul fast float %4212, %4156
  %4238 = fmul fast float %4213, %4157
  %4239 = fmul fast float %4236, %4235
  %4240 = fmul fast float %4237, %4235
  %4241 = fmul fast float %4238, %4235
  br label %4242

; <label>:4242                                    ; preds = %4228, %4152
  %4243 = phi float [ %4239, %4228 ], [ %4155, %4152 ]
  %4244 = phi float [ %4240, %4228 ], [ %4156, %4152 ]
  %4245 = phi float [ %4241, %4228 ], [ %4157, %4152 ]
  %4246 = call float @dx.op.binary.f32(i32 36, float %4161, float 1.270000e+02)  ; FMin(a,b)
  %4247 = call float @dx.op.binary.f32(i32 36, float %4162, float 1.270000e+02)  ; FMin(a,b)
  %4248 = call float @dx.op.binary.f32(i32 36, float %4163, float 1.270000e+02)  ; FMin(a,b)
  %4249 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4250 = extractvalue %dx.types.CBufRet.i32 %4249, 3
  %4251 = and i32 %4250, 8
  %4252 = icmp ne i32 %4251, 0
  %4253 = call float @dx.op.binary.f32(i32 35, float %4211, float %4164)  ; FMax(a,b)
  %4254 = call float @dx.op.binary.f32(i32 35, float %4212, float %4164)  ; FMax(a,b)
  %4255 = call float @dx.op.binary.f32(i32 35, float %4213, float %4164)  ; FMax(a,b)
  %4256 = call float @dx.op.dot3.f32(i32 55, float %4211, float %4212, float %4213, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4257 = select i1 %174, float %4164, float %4211
  %4258 = select i1 %174, float %4256, float %4212
  %4259 = select i1 %174, float 1.000000e+00, float %4213
  %4260 = select i1 %4252, float %4253, float %4257
  %4261 = select i1 %4252, float %4254, float %4258
  %4262 = select i1 %4252, float %4255, float %4259
  %4263 = call float @dx.op.dot3.f32(i32 55, float %4243, float %4244, float %4245, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4264 = select i1 %174, float %4263, float %4243
  %4265 = select i1 %174, float %4263, float %4244
  %4266 = select i1 %174, float %4263, float %4245
  %4267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4268 = extractvalue %dx.types.CBufRet.f32 %4267, 0
  %4269 = extractvalue %dx.types.CBufRet.f32 %4267, 1
  %4270 = extractvalue %dx.types.CBufRet.f32 %4267, 2
  %4271 = fadd fast float %4268, %130
  %4272 = fadd fast float %4269, %131
  %4273 = fadd fast float %4270, %132
  %4274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4275 = extractvalue %dx.types.CBufRet.f32 %4274, 0
  %4276 = extractvalue %dx.types.CBufRet.f32 %4274, 1
  %4277 = fsub fast float %4271, %4275
  %4278 = fsub fast float %4272, %4276
  %4279 = fmul fast float %4277, %4277
  %4280 = fmul fast float %4278, %4278
  %4281 = fadd fast float %4279, %4280
  %4282 = call float @dx.op.unary.f32(i32 24, float %4281)  ; Sqrt(value)
  %4283 = extractvalue %dx.types.CBufRet.f32 %4274, 2
  %4284 = fcmp fast olt float %4282, %4283
  br i1 %4284, label %4285, label %4352

; <label>:4285                                    ; preds = %4242
  %4286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4287 = extractvalue %dx.types.CBufRet.f32 %4286, 0
  %4288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4289 = extractvalue %dx.types.CBufRet.f32 %4288, 0
  %4290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4291 = extractvalue %dx.types.CBufRet.f32 %4290, 0
  %4292 = extractvalue %dx.types.CBufRet.f32 %4286, 1
  %4293 = extractvalue %dx.types.CBufRet.f32 %4288, 1
  %4294 = extractvalue %dx.types.CBufRet.f32 %4290, 1
  %4295 = extractvalue %dx.types.CBufRet.f32 %4286, 3
  %4296 = extractvalue %dx.types.CBufRet.f32 %4288, 3
  %4297 = extractvalue %dx.types.CBufRet.f32 %4290, 3
  %4298 = fadd fast float %4295, %4271
  %4299 = fadd fast float %4296, %4272
  %4300 = fadd fast float %4297, %4273
  %4301 = fmul fast float %4298, %4287
  %4302 = call float @dx.op.tertiary.f32(i32 46, float %4299, float %4289, float %4301)  ; FMad(a,b,c)
  %4303 = call float @dx.op.tertiary.f32(i32 46, float %4300, float %4291, float %4302)  ; FMad(a,b,c)
  %4304 = fmul fast float %4298, %4292
  %4305 = call float @dx.op.tertiary.f32(i32 46, float %4299, float %4293, float %4304)  ; FMad(a,b,c)
  %4306 = call float @dx.op.tertiary.f32(i32 46, float %4300, float %4294, float %4305)  ; FMad(a,b,c)
  %4307 = fsub fast float %4303, %4295
  %4308 = fsub fast float %4306, %4296
  %4309 = fsub fast float %4307, %4275
  %4310 = fadd fast float %4309, %4283
  %4311 = fsub fast float %4308, %4276
  %4312 = fadd fast float %4311, %4283
  %4313 = extractvalue %dx.types.CBufRet.f32 %4274, 3
  %4314 = fmul fast float %4310, %4313
  %4315 = fmul fast float %4312, %4313
  %4316 = call float @dx.op.unary.f32(i32 7, float %4314)  ; Saturate(value)
  %4317 = call float @dx.op.unary.f32(i32 7, float %4315)  ; Saturate(value)
  %4318 = fsub fast float 1.000000e+00, %4316
  %4319 = fsub fast float 1.000000e+00, %4317
  %4320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %4318, float %4319, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4321 = extractvalue %dx.types.ResRet.f32 %4320, 0
  %4322 = fcmp fast ugt float %4321, 0.000000e+00
  br i1 %4322, label %4323, label %4626

; <label>:4323                                    ; preds = %4285
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 2
  %4326 = fmul fast float %4325, %4321
  %4327 = extractvalue %dx.types.CBufRet.f32 %4324, 3
  %4328 = fadd fast float %4327, %4326
  %4329 = extractvalue %dx.types.CBufRet.f32 %4290, 2
  %4330 = fadd fast float %4328, %4297
  %4331 = fmul fast float %4303, %4291
  %4332 = call float @dx.op.tertiary.f32(i32 46, float %4306, float %4294, float %4331)  ; FMad(a,b,c)
  %4333 = call float @dx.op.tertiary.f32(i32 46, float %4330, float %4329, float %4332)  ; FMad(a,b,c)
  %4334 = fsub fast float %4333, %4297
  %4335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.f32 %4335, 2
  %4337 = fsub fast float %4334, %4336
  %4338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %26, float %4318, float %4319, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4339 = extractvalue %dx.types.ResRet.f32 %4338, 0
  %4340 = extractvalue %dx.types.ResRet.f32 %4338, 1
  %4341 = extractvalue %dx.types.ResRet.f32 %4338, 2
  %4342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %26, float %4318, float %4319, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4343 = extractvalue %dx.types.ResRet.f32 %4342, 0
  %4344 = extractvalue %dx.types.ResRet.f32 %4342, 1
  %4345 = extractvalue %dx.types.ResRet.f32 %4342, 2
  %4346 = fadd fast float %4343, %4339
  %4347 = fmul fast float %4346, 0x3F847AE140000000
  %4348 = fadd fast float %4344, %4340
  %4349 = fmul fast float %4348, 0x3F847AE140000000
  %4350 = fadd fast float %4345, %4341
  %4351 = fmul fast float %4350, 0x3F847AE140000000
  br label %4626

; <label>:4352                                    ; preds = %4242
  %4353 = and i32 %148, 1
  %4354 = icmp eq i32 %4353, 0
  br i1 %4354, label %4626, label %4355

; <label>:4355                                    ; preds = %4352
  %4356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4357 = extractvalue %dx.types.CBufRet.f32 %4356, 0
  %4358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4359 = extractvalue %dx.types.CBufRet.f32 %4358, 0
  %4360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4361 = extractvalue %dx.types.CBufRet.f32 %4360, 0
  %4362 = extractvalue %dx.types.CBufRet.f32 %4356, 1
  %4363 = extractvalue %dx.types.CBufRet.f32 %4358, 1
  %4364 = extractvalue %dx.types.CBufRet.f32 %4360, 1
  %4365 = extractvalue %dx.types.CBufRet.f32 %4356, 3
  %4366 = extractvalue %dx.types.CBufRet.f32 %4358, 3
  %4367 = extractvalue %dx.types.CBufRet.f32 %4360, 3
  %4368 = fadd fast float %4365, %4271
  %4369 = fadd fast float %4366, %4272
  %4370 = fadd fast float %4367, %4273
  %4371 = fmul fast float %4368, %4357
  %4372 = call float @dx.op.tertiary.f32(i32 46, float %4369, float %4359, float %4371)  ; FMad(a,b,c)
  %4373 = call float @dx.op.tertiary.f32(i32 46, float %4370, float %4361, float %4372)  ; FMad(a,b,c)
  %4374 = fmul fast float %4368, %4362
  %4375 = call float @dx.op.tertiary.f32(i32 46, float %4369, float %4363, float %4374)  ; FMad(a,b,c)
  %4376 = call float @dx.op.tertiary.f32(i32 46, float %4370, float %4364, float %4375)  ; FMad(a,b,c)
  %4377 = fsub fast float %4373, %4365
  %4378 = fsub fast float %4376, %4366
  %4379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4380 = extractvalue %dx.types.CBufRet.f32 %4379, 0
  %4381 = extractvalue %dx.types.CBufRet.f32 %4379, 1
  %4382 = extractvalue %dx.types.CBufRet.f32 %4379, 2
  %4383 = extractvalue %dx.types.CBufRet.f32 %4379, 3
  %4384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.f32 %4384, 3
  %4386 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4387 = extractvalue %dx.types.CBufRet.i32 %4386, 0
  %4388 = extractvalue %dx.types.CBufRet.i32 %4386, 1
  %4389 = udiv i32 %4388, %4387
  %4390 = fsub fast float %4377, %4380
  %4391 = fsub fast float %4378, %4381
  %4392 = call float @dx.op.binary.f32(i32 35, float %4390, float 0.000000e+00)  ; FMax(a,b)
  %4393 = call float @dx.op.binary.f32(i32 35, float %4391, float 0.000000e+00)  ; FMax(a,b)
  %4394 = call float @dx.op.binary.f32(i32 36, float %4392, float %4382)  ; FMin(a,b)
  %4395 = call float @dx.op.binary.f32(i32 36, float %4393, float %4383)  ; FMin(a,b)
  %4396 = add i32 %4387, -1
  %4397 = add i32 %4389, -1
  %4398 = fmul fast float %4394, %4385
  %4399 = fmul fast float %4395, %4385
  %4400 = fptoui float %4398 to i32
  %4401 = fptoui float %4399 to i32
  %4402 = call i32 @dx.op.binary.i32(i32 40, i32 %4400, i32 %4396)  ; UMin(a,b)
  %4403 = call i32 @dx.op.binary.i32(i32 40, i32 %4401, i32 %4397)  ; UMin(a,b)
  %4404 = mul i32 %4403, %4387
  %4405 = add i32 %4404, %4402
  %4406 = shl i32 %4405, 2
  %4407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4406, i32 undef)  ; BufferLoad(srv,index,wot)
  %4408 = extractvalue %dx.types.ResRet.i32 %4407, 0
  %4409 = icmp eq i32 %4408, -1
  br i1 %4409, label %4626, label %4410

; <label>:4410                                    ; preds = %4355
  %4411 = mul i32 %4408, 148
  %4412 = add i32 %4411, 4
  %4413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4412, i32 undef)  ; BufferLoad(srv,index,wot)
  %4414 = extractvalue %dx.types.ResRet.f32 %4413, 0
  %4415 = add i32 %4411, 8
  %4416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4415, i32 undef)  ; BufferLoad(srv,index,wot)
  %4417 = extractvalue %dx.types.ResRet.f32 %4416, 0
  %4418 = add i32 %4411, 36
  %4419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4418, i32 undef)  ; BufferLoad(srv,index,wot)
  %4420 = extractvalue %dx.types.ResRet.f32 %4419, 0
  %4421 = add i32 %4411, 60
  %4422 = add i32 %4411, 92
  %4423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4422, i32 undef)  ; BufferLoad(srv,index,wot)
  %4424 = extractvalue %dx.types.ResRet.i32 %4423, 0
  %4425 = add i32 %4411, 116
  %4426 = fsub fast float %4377, %4414
  %4427 = fsub fast float %4378, %4417
  %4428 = fmul fast float %4385, %4426
  %4429 = fmul fast float %4385, %4427
  %4430 = call float @dx.op.unary.f32(i32 7, float %4428)  ; Saturate(value)
  %4431 = call float @dx.op.unary.f32(i32 7, float %4429)  ; Saturate(value)
  %4432 = fsub fast float 1.000000e+00, %4431
  %4433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4434 = extractvalue %dx.types.CBufRet.f32 %4433, 2
  %4435 = call float @dx.op.unary.f32(i32 83, float %4430)  ; DerivCoarseX(value)
  %4436 = call float @dx.op.unary.f32(i32 83, float %4432)  ; DerivCoarseX(value)
  %4437 = call float @dx.op.unary.f32(i32 84, float %4430)  ; DerivCoarseY(value)
  %4438 = call float @dx.op.unary.f32(i32 84, float %4432)  ; DerivCoarseY(value)
  %4439 = fmul fast float %4435, %4434
  %4440 = fmul fast float %4436, %4434
  %4441 = fmul fast float %4437, %4434
  %4442 = fmul fast float %4438, %4434
  %4443 = call float @dx.op.dot2.f32(i32 54, float %4441, float %4442, float %4441, float %4442)  ; Dot2(ax,ay,bx,by)
  %4444 = call float @dx.op.dot2.f32(i32 54, float %4439, float %4440, float %4439, float %4440)  ; Dot2(ax,ay,bx,by)
  %4445 = call float @dx.op.binary.f32(i32 35, float %4444, float %4443)  ; FMax(a,b)
  %4446 = call float @dx.op.unary.f32(i32 23, float %4445)  ; Log(value)
  %4447 = fmul fast float %4446, 5.000000e-01
  %4448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4449 = extractvalue %dx.types.CBufRet.f32 %4448, 1
  %4450 = fadd fast float %4449, %4447
  %4451 = call float @dx.op.binary.f32(i32 35, float %4450, float 0.000000e+00)  ; FMax(a,b)
  %4452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.f32 %4452, 3
  %4454 = fadd fast float %4453, %4451
  %4455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4456 = extractvalue %dx.types.CBufRet.f32 %4455, 3
  %4457 = fadd fast float %4454, %4456
  %4458 = add i32 %4424, 0
  %4459 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4458, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4460 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4459, i32 0)  ; GetDimensions(handle,mipLevel)
  %4461 = extractvalue %dx.types.Dimensions %4460, 0
  %4462 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4461)  ; FirstbitLo(value)
  %4463 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4464 = extractvalue %dx.types.CBufRet.i32 %4463, 1
  %4465 = sub nsw i32 %4464, %4462
  %4466 = sitofp i32 %4465 to float
  %4467 = fsub fast float %4457, %4466
  %4468 = call float @dx.op.binary.f32(i32 35, float %4467, float 0.000000e+00)  ; FMax(a,b)
  %4469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4459, %dx.types.Handle %24, float %4430, float %4432, float %4420, float undef, i32 0, i32 0, i32 undef, float %4468)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4470 = extractvalue %dx.types.ResRet.f32 %4469, 0
  %4471 = fcmp ule float %4470, 0x3FE0101020000000
  %4472 = extractvalue %dx.types.CBufRet.i32 %4463, 0
  %4473 = and i32 %4472, 128
  %4474 = icmp ne i32 %4473, 0
  %4475 = and i1 %4471, %4474
  br i1 %4475, label %4626, label %4476

; <label>:4476                                    ; preds = %4410
  %4477 = add i32 %4411, 20
  %4478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4477, i32 undef)  ; BufferLoad(srv,index,wot)
  %4479 = extractvalue %dx.types.ResRet.f32 %4478, 0
  %4480 = add i32 %4411, 24
  %4481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4480, i32 undef)  ; BufferLoad(srv,index,wot)
  %4482 = extractvalue %dx.types.ResRet.f32 %4481, 0
  %4483 = add i32 %4411, 40
  %4484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4483, i32 undef)  ; BufferLoad(srv,index,wot)
  %4485 = extractvalue %dx.types.ResRet.f32 %4484, 0
  %4486 = add i32 %4411, 96
  %4487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4486, i32 undef)  ; BufferLoad(srv,index,wot)
  %4488 = extractvalue %dx.types.ResRet.i32 %4487, 0
  %4489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4490 = extractvalue %dx.types.CBufRet.f32 %4489, 2
  %4491 = fmul fast float %4490, %4430
  %4492 = fmul fast float %4490, %4432
  %4493 = extractvalue %dx.types.CBufRet.f32 %4489, 3
  %4494 = fadd fast float %4491, %4493
  %4495 = fadd fast float %4492, %4493
  %4496 = add i32 %4488, 0
  %4497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4496, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4498 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4497, i32 0)  ; GetDimensions(handle,mipLevel)
  %4499 = extractvalue %dx.types.Dimensions %4498, 0
  %4500 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4499)  ; FirstbitLo(value)
  %4501 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4502 = extractvalue %dx.types.CBufRet.i32 %4501, 1
  %4503 = sub nsw i32 %4502, %4500
  %4504 = sitofp i32 %4503 to float
  %4505 = fsub fast float %4454, %4504
  %4506 = call float @dx.op.binary.f32(i32 35, float %4505, float 0.000000e+00)  ; FMax(a,b)
  %4507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4497, %dx.types.Handle %24, float %4494, float %4495, float %4485, float undef, i32 0, i32 0, i32 undef, float %4506)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4508 = extractvalue %dx.types.ResRet.f32 %4507, 0
  %4509 = fmul fast float %4508, %4479
  %4510 = fadd fast float %4509, %4482
  %4511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4512 = extractvalue %dx.types.CBufRet.f32 %4511, 0
  %4513 = extractvalue %dx.types.CBufRet.f32 %4511, 1
  %4514 = extractvalue %dx.types.CBufRet.f32 %4511, 2
  %4515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4516 = extractvalue %dx.types.CBufRet.f32 %4515, 3
  %4517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4518 = extractvalue %dx.types.CBufRet.f32 %4517, 3
  %4519 = extractvalue %dx.types.CBufRet.f32 %4511, 3
  %4520 = fadd fast float %4516, %4377
  %4521 = fadd fast float %4518, %4378
  %4522 = fadd fast float %4510, %4519
  %4523 = fmul fast float %4520, %4512
  %4524 = call float @dx.op.tertiary.f32(i32 46, float %4521, float %4513, float %4523)  ; FMad(a,b,c)
  %4525 = call float @dx.op.tertiary.f32(i32 46, float %4522, float %4514, float %4524)  ; FMad(a,b,c)
  %4526 = fsub fast float %4525, %4519
  %4527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4528 = extractvalue %dx.types.CBufRet.f32 %4527, 2
  %4529 = fsub fast float %4526, %4528
  %4530 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4531 = extractvalue %dx.types.CBufRet.i32 %4530, 0
  %4532 = call i32 @dx.op.binary.i32(i32 40, i32 %4408, i32 %4531)  ; UMin(a,b)
  %4533 = mul i32 %4532, 36
  %4534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4533, i32 undef)  ; BufferLoad(srv,index,wot)
  %4535 = extractvalue %dx.types.ResRet.i32 %4534, 0
  %4536 = add i32 %4533, 4
  %4537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4538 = extractvalue %dx.types.CBufRet.f32 %4537, 0
  %4539 = fmul fast float %4538, %4430
  %4540 = fmul fast float %4538, %4432
  %4541 = extractvalue %dx.types.CBufRet.f32 %4537, 1
  %4542 = fadd fast float %4539, %4541
  %4543 = fadd fast float %4540, %4541
  %4544 = icmp eq i32 %4535, 0
  br i1 %4544, label %4613, label %4545

; <label>:4545                                    ; preds = %4476
  br label %4546

; <label>:4546                                    ; preds = %4603, %4545
  %4547 = phi float [ %4604, %4603 ], [ 0.000000e+00, %4545 ]
  %4548 = phi float [ %4605, %4603 ], [ 0.000000e+00, %4545 ]
  %4549 = phi float [ %4606, %4603 ], [ 0.000000e+00, %4545 ]
  %4550 = phi float [ %4607, %4603 ], [ 0.000000e+00, %4545 ]
  %4551 = phi float [ %4608, %4603 ], [ 0.000000e+00, %4545 ]
  %4552 = phi float [ %4609, %4603 ], [ 0.000000e+00, %4545 ]
  %4553 = phi i32 [ %4610, %4603 ], [ 0, %4545 ]
  %4554 = shl i32 %4553, 2
  %4555 = add i32 %4421, %4554
  %4556 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4555, i32 undef)  ; BufferLoad(srv,index,wot)
  %4557 = extractvalue %dx.types.ResRet.f32 %4556, 0
  %4558 = add i32 %4425, %4554
  %4559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4558, i32 undef)  ; BufferLoad(srv,index,wot)
  %4560 = extractvalue %dx.types.ResRet.i32 %4559, 0
  %4561 = add i32 %4560, 0
  %4562 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4561, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4563 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4562, i32 0)  ; GetDimensions(handle,mipLevel)
  %4564 = extractvalue %dx.types.Dimensions %4563, 0
  %4565 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4564)  ; FirstbitLo(value)
  %4566 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4567 = extractvalue %dx.types.CBufRet.i32 %4566, 1
  %4568 = sub nsw i32 %4567, %4565
  %4569 = sitofp i32 %4568 to float
  %4570 = fsub fast float %4454, %4569
  %4571 = call float @dx.op.binary.f32(i32 35, float %4570, float 0.000000e+00)  ; FMax(a,b)
  %4572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4562, %dx.types.Handle %24, float %4542, float %4543, float %4557, float undef, i32 0, i32 0, i32 undef, float %4571)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4573 = extractvalue %dx.types.ResRet.f32 %4572, 0
  %4574 = fcmp fast ogt float %4573, 0.000000e+00
  br i1 %4574, label %4575, label %4603

; <label>:4575                                    ; preds = %4546
  %4576 = add i32 %4536, %4554
  %4577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4576, i32 undef)  ; BufferLoad(srv,index,wot)
  %4578 = extractvalue %dx.types.ResRet.i32 %4577, 0
  %4579 = and i32 %4578, 32767
  %4580 = mul nuw nsw i32 %4579, 928
  %4581 = add nuw nsw i32 %4580, 48
  %4582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4581, i32 undef)  ; BufferLoad(srv,index,wot)
  %4583 = extractvalue %dx.types.ResRet.f32 %4582, 0
  %4584 = extractvalue %dx.types.ResRet.f32 %4582, 1
  %4585 = extractvalue %dx.types.ResRet.f32 %4582, 2
  %4586 = add nuw nsw i32 %4580, 60
  %4587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4586, i32 undef)  ; BufferLoad(srv,index,wot)
  %4588 = extractvalue %dx.types.ResRet.f32 %4587, 0
  %4589 = extractvalue %dx.types.ResRet.f32 %4587, 1
  %4590 = extractvalue %dx.types.ResRet.f32 %4587, 2
  %4591 = fmul fast float %4583, %4573
  %4592 = fmul fast float %4584, %4573
  %4593 = fmul fast float %4585, %4573
  %4594 = fadd fast float %4591, %4547
  %4595 = fadd fast float %4592, %4548
  %4596 = fadd fast float %4593, %4549
  %4597 = fmul fast float %4588, %4573
  %4598 = fmul fast float %4589, %4573
  %4599 = fmul fast float %4590, %4573
  %4600 = fadd fast float %4597, %4550
  %4601 = fadd fast float %4598, %4551
  %4602 = fadd fast float %4599, %4552
  br label %4603

; <label>:4603                                    ; preds = %4575, %4546
  %4604 = phi float [ %4594, %4575 ], [ %4547, %4546 ]
  %4605 = phi float [ %4595, %4575 ], [ %4548, %4546 ]
  %4606 = phi float [ %4596, %4575 ], [ %4549, %4546 ]
  %4607 = phi float [ %4600, %4575 ], [ %4550, %4546 ]
  %4608 = phi float [ %4601, %4575 ], [ %4551, %4546 ]
  %4609 = phi float [ %4602, %4575 ], [ %4552, %4546 ]
  %4610 = add nuw i32 %4553, 1
  %4611 = icmp eq i32 %4610, %4535
  br i1 %4611, label %4612, label %4546

; <label>:4612                                    ; preds = %4603
  br label %4613

; <label>:4613                                    ; preds = %4612, %4476
  %4614 = phi float [ 0.000000e+00, %4476 ], [ %4604, %4612 ]
  %4615 = phi float [ 0.000000e+00, %4476 ], [ %4605, %4612 ]
  %4616 = phi float [ 0.000000e+00, %4476 ], [ %4606, %4612 ]
  %4617 = phi float [ 0.000000e+00, %4476 ], [ %4607, %4612 ]
  %4618 = phi float [ 0.000000e+00, %4476 ], [ %4608, %4612 ]
  %4619 = phi float [ 0.000000e+00, %4476 ], [ %4609, %4612 ]
  %4620 = fadd fast float %4617, %4614
  %4621 = fmul fast float %4620, 0x3F847AE140000000
  %4622 = fadd fast float %4618, %4615
  %4623 = fmul fast float %4622, 0x3F847AE140000000
  %4624 = fadd fast float %4619, %4616
  %4625 = fmul fast float %4624, 0x3F847AE140000000
  br label %4626

; <label>:4626                                    ; preds = %4613, %4410, %4355, %4352, %4323, %4285
  %4627 = phi float [ %4337, %4323 ], [ -1.310720e+05, %4285 ], [ %4529, %4613 ], [ -1.310720e+05, %4355 ], [ -1.310720e+05, %4410 ], [ -1.310720e+05, %4352 ]
  %4628 = phi float [ %4347, %4323 ], [ 0.000000e+00, %4285 ], [ %4621, %4613 ], [ 0.000000e+00, %4355 ], [ 0.000000e+00, %4410 ], [ 0.000000e+00, %4352 ]
  %4629 = phi float [ %4349, %4323 ], [ 0.000000e+00, %4285 ], [ %4623, %4613 ], [ 0.000000e+00, %4355 ], [ 0.000000e+00, %4410 ], [ 0.000000e+00, %4352 ]
  %4630 = phi float [ %4351, %4323 ], [ 0.000000e+00, %4285 ], [ %4625, %4613 ], [ 0.000000e+00, %4355 ], [ 0.000000e+00, %4410 ], [ 0.000000e+00, %4352 ]
  %4631 = phi i1 [ true, %4323 ], [ false, %4285 ], [ true, %4613 ], [ false, %4355 ], [ false, %4410 ], [ false, %4352 ]
  %4632 = and i32 %148, 3
  %4633 = icmp eq i32 %4632, 1
  %4634 = select i1 %4633, float 1.000000e+00, float 0.000000e+00
  %4635 = fsub fast float %4627, %132
  %4636 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4637 = select i1 %4631, float %4636, float 1.000000e+00
  %4638 = fmul fast float %4637, %4634
  %4639 = icmp eq i32 %4632, 3
  %4640 = select i1 %4639, float 1.000000e+00, float %4638
  %4641 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4640)  ; FMax(a,b)
  %4642 = call float @dx.op.unary.f32(i32 7, float %4641)  ; Saturate(value)
  %4643 = fcmp fast une float %4642, 0.000000e+00
  %4644 = call float @dx.op.dot3.f32(i32 55, float %130, float %131, float %132, float %130, float %131, float %132)  ; Dot3(ax,ay,az,bx,by,bz)
  %4645 = call float @dx.op.unary.f32(i32 25, float %4644)  ; Rsqrt(value)
  br i1 %4643, label %4653, label %4646

; <label>:4646                                    ; preds = %4626
  %4647 = fmul fast float %4645, %130
  %4648 = fmul fast float %4645, %131
  %4649 = fmul fast float %4645, %132
  %4650 = fsub fast float -0.000000e+00, %4647
  %4651 = fsub fast float -0.000000e+00, %4648
  %4652 = fsub fast float -0.000000e+00, %4649
  br label %4821

; <label>:4653                                    ; preds = %4626
  %4654 = fmul fast float %130, %4645
  %4655 = fsub fast float -0.000000e+00, %4654
  %4656 = fmul fast float %131, %4645
  %4657 = fsub fast float -0.000000e+00, %4656
  %4658 = fmul fast float %132, %4645
  %4659 = fsub fast float -0.000000e+00, %4658
  %4660 = call float @dx.op.dot3.f32(i32 55, float %4655, float %4657, float %4659, float %80, float %82, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %4661 = fmul fast float %4642, 2.500000e+00
  %4662 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4663 = fmul fast float %4642, 0x4013FFFFE0000000
  %4664 = fadd fast float %4663, 0xBFFFFFFFE0000000
  %4665 = call float @dx.op.unary.f32(i32 7, float %4664)  ; Saturate(value)
  %4666 = fmul fast float %4642, 0x4004000020000000
  %4667 = fadd fast float %4666, 0xBFF8000040000000
  %4668 = call float @dx.op.unary.f32(i32 7, float %4667)  ; Saturate(value)
  %4669 = call float @dx.op.unary.f32(i32 7, float %4662)  ; Saturate(value)
  %4670 = fmul fast float %4202, 1.000000e+01
  %4671 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4672 = fmul fast float %4671, 2.000000e+00
  %4673 = fsub fast float 3.000000e+00, %4672
  %4674 = fmul fast float %4671, %4671
  %4675 = fmul fast float %4674, %4673
  %4676 = fsub fast float 1.000000e+00, %4675
  %4677 = fsub fast float 0x3FE3333340000000, %4223
  %4678 = fmul fast float %4677, 0x400AAAAAA0000000
  %4679 = call float @dx.op.unary.f32(i32 7, float %4678)  ; Saturate(value)
  %4680 = fmul fast float %4676, %4679
  %4681 = fmul fast float %4260, 0x3FEA2B8620000000
  %4682 = fmul fast float %4261, 0x3FEA2B8620000000
  %4683 = fmul fast float %4262, 0x3FEA2B8620000000
  %4684 = fadd fast float %4681, 0x3FC81DFBA0000000
  %4685 = fmul fast float %4684, %4260
  %4686 = fadd fast float %4685, 0x3F910E6020000000
  %4687 = fadd fast float %4682, 0x3FC81DFBA0000000
  %4688 = fmul fast float %4687, %4261
  %4689 = fadd fast float %4688, 0x3F910E6020000000
  %4690 = fadd fast float %4683, 0x3FC81DFBA0000000
  %4691 = fmul fast float %4690, %4262
  %4692 = fadd fast float %4691, 0x3F910E6020000000
  %4693 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4694 = call float @dx.op.unary.f32(i32 7, float %4689)  ; Saturate(value)
  %4695 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4696 = fsub fast float %4693, %4260
  %4697 = fsub fast float %4694, %4261
  %4698 = fsub fast float %4695, %4262
  %4699 = fmul fast float %4696, %4669
  %4700 = fmul fast float %4699, %4680
  %4701 = fmul fast float %4697, %4669
  %4702 = fmul fast float %4701, %4680
  %4703 = fmul fast float %4698, %4669
  %4704 = fmul fast float %4703, %4680
  %4705 = fadd fast float %4700, %4260
  %4706 = fadd fast float %4702, %4261
  %4707 = fadd fast float %4704, %4262
  %4708 = fmul fast float %4169, %4169
  %4709 = fmul fast float %4708, %4708
  %4710 = fadd fast float %4665, 1.000000e+00
  %4711 = fsub fast float %4710, %4680
  %4712 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4713 = call float @dx.op.dot3.f32(i32 55, float %80, float %82, float %84, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4714 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4715 = fsub fast float 1.000000e+00, %4709
  %4716 = call float @dx.op.binary.f32(i32 36, float %4712, float %4715)  ; FMin(a,b)
  %4717 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4718 = call float @dx.op.binary.f32(i32 35, float %4716, float %4717)  ; FMax(a,b)
  %4719 = fadd fast float %4714, 0xBFE4CCCCC0000000
  %4720 = fmul fast float %4719, 0x4006DB6DA0000000
  %4721 = call float @dx.op.unary.f32(i32 7, float %4720)  ; Saturate(value)
  %4722 = fmul fast float %4721, 2.000000e+00
  %4723 = fsub fast float 3.000000e+00, %4722
  %4724 = bitcast float %4220 to i32
  %4725 = ashr i32 %4724, 1
  %4726 = add nsw i32 %4725, 532487669
  %4727 = bitcast i32 %4726 to float
  %4728 = fsub fast float 1.000000e+00, %4727
  %4729 = bitcast float %4728 to i32
  %4730 = sub nsw i32 2129859010, %4729
  %4731 = bitcast i32 %4730 to float
  %4732 = fmul fast float %4731, 2.000000e+00
  %4733 = bitcast float %4221 to i32
  %4734 = ashr i32 %4733, 1
  %4735 = add nsw i32 %4734, 532487669
  %4736 = bitcast i32 %4735 to float
  %4737 = fsub fast float 1.000000e+00, %4736
  %4738 = bitcast float %4737 to i32
  %4739 = sub nsw i32 2129859010, %4738
  %4740 = bitcast i32 %4739 to float
  %4741 = fmul fast float %4740, 2.000000e+00
  %4742 = bitcast float %4222 to i32
  %4743 = ashr i32 %4742, 1
  %4744 = add nsw i32 %4743, 532487669
  %4745 = bitcast i32 %4744 to float
  %4746 = fsub fast float 1.000000e+00, %4745
  %4747 = bitcast float %4746 to i32
  %4748 = sub nsw i32 2129859010, %4747
  %4749 = bitcast i32 %4748 to float
  %4750 = fmul fast float %4749, 2.000000e+00
  %4751 = fsub fast float 0x4002A9FBE0000000, %4732
  %4752 = fadd fast float %4732, 0x3FD54FDF00000000
  %4753 = bitcast float %4752 to i32
  %4754 = sub nsw i32 2129859010, %4753
  %4755 = bitcast i32 %4754 to float
  %4756 = fmul fast float %4755, %4751
  %4757 = fmul fast float %4756, %4756
  %4758 = fsub fast float 0x4002A9FBE0000000, %4741
  %4759 = fadd fast float %4741, 0x3FD54FDF00000000
  %4760 = bitcast float %4759 to i32
  %4761 = sub nsw i32 2129859010, %4760
  %4762 = bitcast i32 %4761 to float
  %4763 = fmul fast float %4762, %4758
  %4764 = fmul fast float %4763, %4763
  %4765 = fsub fast float 0x4002A9FBE0000000, %4750
  %4766 = fadd fast float %4750, 0x3FD54FDF00000000
  %4767 = bitcast float %4766 to i32
  %4768 = sub nsw i32 2129859010, %4767
  %4769 = bitcast i32 %4768 to float
  %4770 = fmul fast float %4769, %4765
  %4771 = fmul fast float %4770, %4770
  %4772 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4757)  ; FMax(a,b)
  %4773 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4764)  ; FMax(a,b)
  %4774 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4771)  ; FMax(a,b)
  %4775 = fsub fast float 1.000000e+00, %4660
  %4776 = fadd fast float %4775, %4676
  %4777 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4778 = fsub fast float 1.000000e+00, %4640
  %4779 = fmul fast float %4718, %4778
  %4780 = fmul fast float %4721, %4721
  %4781 = fmul fast float %4780, %4779
  %4782 = fmul fast float %4781, %4723
  %4783 = fmul fast float %4778, 0xBFE99999A0000000
  %4784 = fmul fast float %4783, %4669
  %4785 = fmul fast float %4784, %4680
  %4786 = fadd fast float %4785, 1.000000e+00
  %4787 = fadd fast float %4223, -1.000000e+00
  %4788 = fmul fast float %4786, %4787
  %4789 = fadd fast float %4788, 1.000000e+00
  %4790 = fsub fast float %4772, %4220
  %4791 = fsub fast float %4773, %4221
  %4792 = fsub fast float %4774, %4222
  %4793 = fmul fast float %4782, %4790
  %4794 = fmul fast float %4782, %4791
  %4795 = fmul fast float %4782, %4792
  %4796 = fadd fast float %4793, %4220
  %4797 = fadd fast float %4794, %4221
  %4798 = fadd fast float %4795, %4222
  %4799 = fsub fast float %80, %4199
  %4800 = fsub fast float %82, %4200
  %4801 = fsub fast float %84, %4201
  %4802 = fmul fast float %4782, %4799
  %4803 = fmul fast float %4782, %4800
  %4804 = fmul fast float %4782, %4801
  %4805 = fadd fast float %4802, %4199
  %4806 = fadd fast float %4803, %4200
  %4807 = fadd fast float %4804, %4201
  %4808 = fmul fast float %4782, %4777
  %4809 = call float @dx.op.unary.f32(i32 7, float %4789)  ; Saturate(value)
  %4810 = fsub fast float 1.000000e+00, %4809
  %4811 = fmul fast float %4808, %4810
  %4812 = fadd fast float %4811, %4809
  %4813 = fsub fast float 1.000000e+00, %4169
  %4814 = fmul fast float %4782, %4813
  %4815 = fadd fast float %4814, %4169
  %4816 = call float @dx.op.dot3.f32(i32 55, float %4805, float %4806, float %4807, float %4805, float %4806, float %4807)  ; Dot3(ax,ay,az,bx,by,bz)
  %4817 = call float @dx.op.unary.f32(i32 25, float %4816)  ; Rsqrt(value)
  %4818 = fmul fast float %4805, %4817
  %4819 = fmul fast float %4806, %4817
  %4820 = fmul fast float %4807, %4817
  br label %4821

; <label>:4821                                    ; preds = %4653, %4646
  %4822 = phi float [ %4652, %4646 ], [ %4659, %4653 ]
  %4823 = phi float [ %4651, %4646 ], [ %4657, %4653 ]
  %4824 = phi float [ %4650, %4646 ], [ %4655, %4653 ]
  %4825 = phi float [ %4649, %4646 ], [ %4658, %4653 ]
  %4826 = phi float [ %4648, %4646 ], [ %4656, %4653 ]
  %4827 = phi float [ %4647, %4646 ], [ %4654, %4653 ]
  %4828 = phi float [ %4260, %4646 ], [ %4705, %4653 ]
  %4829 = phi float [ %4261, %4646 ], [ %4706, %4653 ]
  %4830 = phi float [ %4262, %4646 ], [ %4707, %4653 ]
  %4831 = phi float [ %4220, %4646 ], [ %4796, %4653 ]
  %4832 = phi float [ %4221, %4646 ], [ %4797, %4653 ]
  %4833 = phi float [ %4222, %4646 ], [ %4798, %4653 ]
  %4834 = phi float [ %4199, %4646 ], [ %4818, %4653 ]
  %4835 = phi float [ %4200, %4646 ], [ %4819, %4653 ]
  %4836 = phi float [ %4201, %4646 ], [ %4820, %4653 ]
  %4837 = phi float [ %4223, %4646 ], [ %4812, %4653 ]
  %4838 = phi float [ %4169, %4646 ], [ %4815, %4653 ]
  %4839 = select i1 %174, float 0.000000e+00, float %4833
  %4840 = call float @dx.op.dot3.f32(i32 55, float %4834, float %4835, float %4836, float %4824, float %4823, float %4822)  ; Dot3(ax,ay,az,bx,by,bz)
  %4841 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4842 = call float @dx.op.dot3.f32(i32 55, float %4827, float %4826, float %4825, float %4834, float %4835, float %4836)  ; Dot3(ax,ay,az,bx,by,bz)
  %4843 = fmul fast float %4842, 2.000000e+00
  %4844 = fmul fast float %4843, %4834
  %4845 = fmul fast float %4843, %4835
  %4846 = fmul fast float %4843, %4836
  %4847 = fsub fast float %4827, %4844
  %4848 = fsub fast float %4826, %4845
  %4849 = fsub fast float %4825, %4846
  %4850 = call float @dx.op.binary.f32(i32 36, float %4838, float 1.000000e+00)  ; FMin(a,b)
  %4851 = fsub fast float 1.000000e+00, %4838
  %4852 = bitcast float %4851 to i32
  %4853 = sub nsw i32 2129859010, %4852
  %4854 = bitcast i32 %4853 to float
  %4855 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %48)  ; FMax(a,b)
  %4856 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %4857 = fcmp fast oeq float %4856, 0.000000e+00
  %4858 = fcmp fast oeq float %4855, 0.000000e+00
  %4859 = or i1 %4858, %4857
  br i1 %4859, label %4889, label %4860

; <label>:4860                                    ; preds = %4821
  %4861 = fsub fast float -0.000000e+00, %51
  %4862 = fsub fast float -0.000000e+00, %49
  %4863 = call float @dx.op.unary.f32(i32 24, float %4856)  ; Sqrt(value)
  %4864 = fdiv fast float %4863, %4855
  %4865 = fcmp fast ogt float %4864, 0x3FFB6F8900000000
  %4866 = select i1 %4865, float 0x3FFB6F8900000000, float %4864
  %4867 = fmul fast float %4866, 0x3FE8A23460000000
  %4868 = call float @dx.op.unary.f32(i32 7, float %4867)  ; Saturate(value)
  %4869 = call float @dx.op.binary.f32(i32 35, float %4866, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4870 = fmul fast float %4868, %4855
  %4871 = fmul fast float %4869, 0x3FF279A740000000
  %4872 = fadd fast float %4871, -1.000000e+00
  %4873 = call float @dx.op.dot3.f32(i32 55, float %4861, float %4862, float %50, float %4861, float %4862, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %4874 = call float @dx.op.unary.f32(i32 25, float %4873)  ; Rsqrt(value)
  %4875 = fmul fast float %4874, %4861
  %4876 = fmul fast float %4874, %4862
  %4877 = fmul fast float %4874, %50
  %4878 = fmul fast float %4872, %4872
  %4879 = fsub fast float 1.000000e+00, %4878
  %4880 = fmul fast float %4869, 0x40005F8BE0000000
  %4881 = fsub fast float 0x400C5BF8A0000000, %4880
  %4882 = fdiv fast float %4870, %4881
  %4883 = fmul fast float %4882, 0x3FEE31C3C0000000
  %4884 = fmul fast float %4883, %4879
  %4885 = fmul fast float %4869, 0x3FDACB7480000000
  %4886 = fadd fast float %4885, 0xBFD7347680000000
  %4887 = fmul fast float %4886, %4882
  %4888 = fmul fast float %4887, %4879
  br label %4889

; <label>:4889                                    ; preds = %4860, %4821
  %4890 = phi float [ %4875, %4860 ], [ 0.000000e+00, %4821 ]
  %4891 = phi float [ %4876, %4860 ], [ 0.000000e+00, %4821 ]
  %4892 = phi float [ %4877, %4860 ], [ 0.000000e+00, %4821 ]
  %4893 = phi float [ %4884, %4860 ], [ 0.000000e+00, %4821 ]
  %4894 = phi float [ %4888, %4860 ], [ 0.000000e+00, %4821 ]
  %4895 = call float @dx.op.dot3.f32(i32 55, float %4890, float %4891, float %4892, float %4834, float %4835, float %4836)  ; Dot3(ax,ay,az,bx,by,bz)
  %4896 = fmul fast float %4895, 0x3FDF454380000000
  %4897 = fmul fast float %4895, %4895
  %4898 = fmul fast float %4897, 0x3FEE471020000000
  %4899 = fadd fast float %4898, 0xBFD42F6020000000
  %4900 = fmul fast float %4855, 0x3FD20DD760000000
  %4901 = fmul fast float %4899, %4894
  %4902 = fadd fast float %4901, %4900
  %4903 = fmul fast float %4896, %4893
  %4904 = fadd fast float %4902, %4903
  %4905 = fsub fast float %4902, %4903
  %4906 = call float @dx.op.dot3.f32(i32 55, float %4890, float %4891, float %4892, float %4847, float %4848, float %4849)  ; Dot3(ax,ay,az,bx,by,bz)
  %4907 = fmul fast float %4906, 0x3FDF454380000000
  %4908 = fmul fast float %4906, %4906
  %4909 = fmul fast float %4908, 0x3FEE471020000000
  %4910 = fadd fast float %4909, 0xBFD42F6020000000
  %4911 = call float @dx.op.dot3.f32(i32 55, float %4855, float %4893, float %4894, float 0x3FD20DD760000000, float %4907, float %4910)  ; Dot3(ax,ay,az,bx,by,bz)
  %4912 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %44)  ; FMax(a,b)
  %4913 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float %45, float %46, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %4914 = fcmp fast oeq float %4913, 0.000000e+00
  %4915 = fcmp fast oeq float %4912, 0.000000e+00
  %4916 = or i1 %4915, %4914
  br i1 %4916, label %4946, label %4917

; <label>:4917                                    ; preds = %4889
  %4918 = fsub fast float -0.000000e+00, %47
  %4919 = fsub fast float -0.000000e+00, %45
  %4920 = call float @dx.op.unary.f32(i32 24, float %4913)  ; Sqrt(value)
  %4921 = fdiv fast float %4920, %4912
  %4922 = fcmp fast ogt float %4921, 0x3FFB6F8900000000
  %4923 = select i1 %4922, float 0x3FFB6F8900000000, float %4921
  %4924 = fmul fast float %4923, 0x3FE8A23460000000
  %4925 = call float @dx.op.unary.f32(i32 7, float %4924)  ; Saturate(value)
  %4926 = call float @dx.op.binary.f32(i32 35, float %4923, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4927 = fmul fast float %4925, %4912
  %4928 = fmul fast float %4926, 0x3FF279A740000000
  %4929 = fadd fast float %4928, -1.000000e+00
  %4930 = call float @dx.op.dot3.f32(i32 55, float %4918, float %4919, float %46, float %4918, float %4919, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %4931 = call float @dx.op.unary.f32(i32 25, float %4930)  ; Rsqrt(value)
  %4932 = fmul fast float %4931, %4918
  %4933 = fmul fast float %4931, %4919
  %4934 = fmul fast float %4931, %46
  %4935 = fmul fast float %4929, %4929
  %4936 = fsub fast float 1.000000e+00, %4935
  %4937 = fmul fast float %4926, 0x40005F8BE0000000
  %4938 = fsub fast float 0x400C5BF8A0000000, %4937
  %4939 = fdiv fast float %4927, %4938
  %4940 = fmul fast float %4939, 0x3FEE31C3C0000000
  %4941 = fmul fast float %4940, %4936
  %4942 = fmul fast float %4926, 0x3FDACB7480000000
  %4943 = fadd fast float %4942, 0xBFD7347680000000
  %4944 = fmul fast float %4943, %4939
  %4945 = fmul fast float %4944, %4936
  br label %4946

; <label>:4946                                    ; preds = %4917, %4889
  %4947 = phi float [ %4932, %4917 ], [ 0.000000e+00, %4889 ]
  %4948 = phi float [ %4933, %4917 ], [ 0.000000e+00, %4889 ]
  %4949 = phi float [ %4934, %4917 ], [ 0.000000e+00, %4889 ]
  %4950 = phi float [ %4941, %4917 ], [ 0.000000e+00, %4889 ]
  %4951 = phi float [ %4945, %4917 ], [ 0.000000e+00, %4889 ]
  %4952 = call float @dx.op.dot3.f32(i32 55, float %4947, float %4948, float %4949, float %4834, float %4835, float %4836)  ; Dot3(ax,ay,az,bx,by,bz)
  %4953 = fmul fast float %4952, 0x3FDF454380000000
  %4954 = fmul fast float %4952, %4952
  %4955 = fmul fast float %4954, 0x3FEE471020000000
  %4956 = fadd fast float %4955, 0xBFD42F6020000000
  %4957 = fmul fast float %4912, 0x3FD20DD760000000
  %4958 = fmul fast float %4956, %4951
  %4959 = fadd fast float %4958, %4957
  %4960 = fmul fast float %4953, %4950
  %4961 = fadd fast float %4959, %4960
  %4962 = fsub fast float %4959, %4960
  %4963 = call float @dx.op.dot3.f32(i32 55, float %4947, float %4948, float %4949, float %4847, float %4848, float %4849)  ; Dot3(ax,ay,az,bx,by,bz)
  %4964 = fmul fast float %4963, 0x3FDF454380000000
  %4965 = fmul fast float %4963, %4963
  %4966 = fmul fast float %4965, 0x3FEE471020000000
  %4967 = fadd fast float %4966, 0xBFD42F6020000000
  %4968 = call float @dx.op.dot3.f32(i32 55, float %4912, float %4950, float %4951, float 0x3FD20DD760000000, float %4964, float %4967)  ; Dot3(ax,ay,az,bx,by,bz)
  %4969 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %40)  ; FMax(a,b)
  %4970 = call float @dx.op.dot3.f32(i32 55, float %41, float %42, float %43, float %41, float %42, float %43)  ; Dot3(ax,ay,az,bx,by,bz)
  %4971 = fcmp fast oeq float %4970, 0.000000e+00
  %4972 = fcmp fast oeq float %4969, 0.000000e+00
  %4973 = or i1 %4972, %4971
  br i1 %4973, label %5003, label %4974

; <label>:4974                                    ; preds = %4946
  %4975 = fsub fast float -0.000000e+00, %43
  %4976 = fsub fast float -0.000000e+00, %41
  %4977 = call float @dx.op.unary.f32(i32 24, float %4970)  ; Sqrt(value)
  %4978 = fdiv fast float %4977, %4969
  %4979 = fcmp fast ogt float %4978, 0x3FFB6F8900000000
  %4980 = select i1 %4979, float 0x3FFB6F8900000000, float %4978
  %4981 = fmul fast float %4980, 0x3FE8A23460000000
  %4982 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4983 = call float @dx.op.binary.f32(i32 35, float %4980, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4984 = fmul fast float %4982, %4969
  %4985 = fmul fast float %4983, 0x3FF279A740000000
  %4986 = fadd fast float %4985, -1.000000e+00
  %4987 = call float @dx.op.dot3.f32(i32 55, float %4975, float %4976, float %42, float %4975, float %4976, float %42)  ; Dot3(ax,ay,az,bx,by,bz)
  %4988 = call float @dx.op.unary.f32(i32 25, float %4987)  ; Rsqrt(value)
  %4989 = fmul fast float %4988, %4975
  %4990 = fmul fast float %4988, %4976
  %4991 = fmul fast float %4988, %42
  %4992 = fmul fast float %4986, %4986
  %4993 = fsub fast float 1.000000e+00, %4992
  %4994 = fmul fast float %4983, 0x40005F8BE0000000
  %4995 = fsub fast float 0x400C5BF8A0000000, %4994
  %4996 = fdiv fast float %4984, %4995
  %4997 = fmul fast float %4996, 0x3FEE31C3C0000000
  %4998 = fmul fast float %4997, %4993
  %4999 = fmul fast float %4983, 0x3FDACB7480000000
  %5000 = fadd fast float %4999, 0xBFD7347680000000
  %5001 = fmul fast float %5000, %4996
  %5002 = fmul fast float %5001, %4993
  br label %5003

; <label>:5003                                    ; preds = %4974, %4946
  %5004 = phi float [ %4989, %4974 ], [ 0.000000e+00, %4946 ]
  %5005 = phi float [ %4990, %4974 ], [ 0.000000e+00, %4946 ]
  %5006 = phi float [ %4991, %4974 ], [ 0.000000e+00, %4946 ]
  %5007 = phi float [ %4998, %4974 ], [ 0.000000e+00, %4946 ]
  %5008 = phi float [ %5002, %4974 ], [ 0.000000e+00, %4946 ]
  %5009 = call float @dx.op.dot3.f32(i32 55, float %5004, float %5005, float %5006, float %4834, float %4835, float %4836)  ; Dot3(ax,ay,az,bx,by,bz)
  %5010 = fmul fast float %5009, 0x3FDF454380000000
  %5011 = fmul fast float %5009, %5009
  %5012 = fmul fast float %5011, 0x3FEE471020000000
  %5013 = fadd fast float %5012, 0xBFD42F6020000000
  %5014 = fmul fast float %4969, 0x3FD20DD760000000
  %5015 = fmul fast float %5013, %5008
  %5016 = fadd fast float %5015, %5014
  %5017 = fmul fast float %5010, %5007
  %5018 = fadd fast float %5016, %5017
  %5019 = fsub fast float %5016, %5017
  %5020 = call float @dx.op.dot3.f32(i32 55, float %5004, float %5005, float %5006, float %4847, float %4848, float %4849)  ; Dot3(ax,ay,az,bx,by,bz)
  %5021 = fmul fast float %5020, 0x3FDF454380000000
  %5022 = fmul fast float %5020, %5020
  %5023 = fmul fast float %5022, 0x3FEE471020000000
  %5024 = fadd fast float %5023, 0xBFD42F6020000000
  %5025 = call float @dx.op.dot3.f32(i32 55, float %4969, float %5007, float %5008, float 0x3FD20DD760000000, float %5021, float %5024)  ; Dot3(ax,ay,az,bx,by,bz)
  %5026 = call float @dx.op.binary.f32(i32 35, float %4904, float 0.000000e+00)  ; FMax(a,b)
  %5027 = call float @dx.op.binary.f32(i32 35, float %4961, float 0.000000e+00)  ; FMax(a,b)
  %5028 = call float @dx.op.binary.f32(i32 35, float %5018, float 0.000000e+00)  ; FMax(a,b)
  %5029 = call float @dx.op.binary.f32(i32 35, float %4905, float 0.000000e+00)  ; FMax(a,b)
  %5030 = call float @dx.op.binary.f32(i32 35, float %4962, float 0.000000e+00)  ; FMax(a,b)
  %5031 = call float @dx.op.binary.f32(i32 35, float %5019, float 0.000000e+00)  ; FMax(a,b)
  %5032 = call float @dx.op.binary.f32(i32 35, float %4911, float 0.000000e+00)  ; FMax(a,b)
  %5033 = call float @dx.op.binary.f32(i32 35, float %4968, float 0.000000e+00)  ; FMax(a,b)
  %5034 = call float @dx.op.binary.f32(i32 35, float %5025, float 0.000000e+00)  ; FMax(a,b)
  %5035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5036 = extractvalue %dx.types.CBufRet.f32 %5035, 0
  %5037 = call float @dx.op.binary.f32(i32 36, float %4828, float %5036)  ; FMin(a,b)
  %5038 = fsub fast float 1.000000e+00, %4850
  %5039 = fmul fast float %5037, %5038
  %5040 = fsub fast float 1.000000e+00, %5039
  %5041 = bitcast float %5040 to i32
  %5042 = sub nsw i32 2129859010, %5041
  %5043 = bitcast i32 %5042 to float
  %5044 = call float @dx.op.binary.f32(i32 36, float %4829, float %5036)  ; FMin(a,b)
  %5045 = fmul fast float %5044, %5038
  %5046 = fsub fast float 1.000000e+00, %5045
  %5047 = bitcast float %5046 to i32
  %5048 = sub nsw i32 2129859010, %5047
  %5049 = bitcast i32 %5048 to float
  %5050 = call float @dx.op.binary.f32(i32 36, float %4830, float %5036)  ; FMin(a,b)
  %5051 = fmul fast float %5050, %5038
  %5052 = fsub fast float 1.000000e+00, %5051
  %5053 = bitcast float %5052 to i32
  %5054 = sub nsw i32 2129859010, %5053
  %5055 = bitcast i32 %5054 to float
  %5056 = fmul fast float %5026, %4850
  %5057 = fmul fast float %5056, %5043
  %5058 = fmul fast float %5027, %4850
  %5059 = fmul fast float %5058, %5049
  %5060 = fmul fast float %5028, %4850
  %5061 = fmul fast float %5060, %5055
  %5062 = call float @dx.op.binary.f32(i32 36, float %4831, float %5036)  ; FMin(a,b)
  %5063 = fmul fast float %5062, %5038
  %5064 = fsub fast float 1.000000e+00, %5063
  %5065 = bitcast float %5064 to i32
  %5066 = sub nsw i32 2129859010, %5065
  %5067 = bitcast i32 %5066 to float
  %5068 = call float @dx.op.binary.f32(i32 36, float %4832, float %5036)  ; FMin(a,b)
  %5069 = fmul fast float %5068, %5038
  %5070 = fsub fast float 1.000000e+00, %5069
  %5071 = bitcast float %5070 to i32
  %5072 = sub nsw i32 2129859010, %5071
  %5073 = bitcast i32 %5072 to float
  %5074 = call float @dx.op.binary.f32(i32 36, float %4839, float %5036)  ; FMin(a,b)
  %5075 = fmul fast float %5074, %5038
  %5076 = fsub fast float 1.000000e+00, %5075
  %5077 = bitcast float %5076 to i32
  %5078 = sub nsw i32 2129859010, %5077
  %5079 = bitcast i32 %5078 to float
  %5080 = fmul fast float %5032, %4850
  %5081 = fmul fast float %5080, %5067
  %5082 = fmul fast float %5033, %4850
  %5083 = fmul fast float %5082, %5073
  %5084 = fmul fast float %5034, %4850
  %5085 = fmul fast float %5084, %5079
  %5086 = call float @dx.op.dot3.f32(i32 55, float %5057, float %5059, float %5061, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5087 = select i1 %174, float 0.000000e+00, float %5057
  %5088 = select i1 %174, float %5086, float %5059
  %5089 = select i1 %174, float 0.000000e+00, float %5061
  %5090 = call float @dx.op.dot3.f32(i32 55, float %5029, float %5030, float %5031, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5091 = select i1 %174, float 0.000000e+00, float %5029
  %5092 = select i1 %174, float %5090, float %5030
  %5093 = select i1 %174, float 0.000000e+00, float %5031
  %5094 = call float @dx.op.dot3.f32(i32 55, float %5081, float %5083, float %5085, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5095 = select i1 %174, float 0.000000e+00, float %5081
  %5096 = select i1 %174, float %5094, float %5083
  %5097 = select i1 %174, float 0.000000e+00, float %5085
  %5098 = fmul fast float %4841, 9.843750e-01
  %5099 = fmul fast float %4837, 9.843750e-01
  %5100 = fadd fast float %5098, 7.812500e-03
  %5101 = fadd fast float %5099, 7.812500e-03
  %5102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %5100, float %5101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5103 = extractvalue %dx.types.ResRet.f32 %5102, 2
  %5104 = extractvalue %dx.types.ResRet.f32 %5102, 3
  %5105 = fmul fast float %5103, %4831
  %5106 = fmul fast float %5103, %4832
  %5107 = fmul fast float %5103, %4839
  %5108 = fadd fast float %5105, %5104
  %5109 = fadd fast float %5106, %5104
  %5110 = fadd fast float %5107, %5104
  %5111 = call float @dx.op.binary.f32(i32 35, float %5109, float %5110)  ; FMax(a,b)
  %5112 = call float @dx.op.binary.f32(i32 35, float %5108, float %5111)  ; FMax(a,b)
  %5113 = fsub fast float 1.000000e+00, %5112
  %5114 = call float @dx.op.binary.f32(i32 35, float %4841, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5115 = fdiv fast float %4170, %5114
  %5116 = fmul fast float %5108, %5095
  %5117 = fmul fast float %5109, %5096
  %5118 = fmul fast float %5110, %5097
  %5119 = fadd fast float %5116, %4158
  %5120 = fmul fast float %5119, %996
  %5121 = fadd fast float %5117, %4159
  %5122 = fmul fast float %5121, %996
  %5123 = fadd fast float %5118, %4160
  %5124 = fmul fast float %5123, %996
  %5125 = fmul fast float %4832, 0x4012D0A400000000
  %5126 = fmul fast float %5113, %5089
  %5127 = fmul fast float %5113, %5088
  %5128 = fmul fast float %5113, %5087
  %5129 = fsub fast float 1.000000e+00, %4837
  %5130 = fmul fast float %5129, %996
  %5131 = fsub fast float 1.000000e+00, %5130
  %5132 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5133 = fsub fast float 1.000000e+00, %5132
  %5134 = fadd fast float %5125, 0x3FDB6377A0000000
  %5135 = fmul fast float %5133, %5134
  %5136 = call float @dx.op.dot3.f32(i32 55, float %4264, float %4265, float %4266, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5137 = fadd fast float %5135, %5136
  %5138 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  %5139 = fcmp fast olt float %4248, 1.270000e+02
  %5140 = fmul fast float %4248, 0xBFF7154760000000
  %5141 = fmul fast float %5140, %5115
  %5142 = call float @dx.op.unary.f32(i32 21, float %5141)  ; Exp(value)
  %5143 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5144 = select i1 %5139, float %5143, float 0.000000e+00
  %5145 = fmul fast float %5144, %5113
  %5146 = fadd fast float %5145, -1.000000e+00
  %5147 = fmul fast float %5146, %996
  %5148 = fadd fast float %5147, 1.000000e+00
  %5149 = fcmp fast olt float %4247, 1.270000e+02
  %5150 = fmul fast float %4247, 0xBFF7154760000000
  %5151 = fmul fast float %5150, %5115
  %5152 = call float @dx.op.unary.f32(i32 21, float %5151)  ; Exp(value)
  %5153 = call float @dx.op.unary.f32(i32 7, float %5152)  ; Saturate(value)
  %5154 = select i1 %5149, float %5153, float 0.000000e+00
  %5155 = fmul fast float %5154, %5113
  %5156 = fadd fast float %5155, -1.000000e+00
  %5157 = fmul fast float %5156, %996
  %5158 = fadd fast float %5157, 1.000000e+00
  %5159 = fcmp fast olt float %4246, 1.270000e+02
  %5160 = fmul fast float %4246, 0xBFF7154760000000
  %5161 = fmul fast float %5160, %5115
  %5162 = call float @dx.op.unary.f32(i32 21, float %5161)  ; Exp(value)
  %5163 = call float @dx.op.unary.f32(i32 7, float %5162)  ; Saturate(value)
  %5164 = select i1 %5159, float %5163, float 0.000000e+00
  %5165 = fmul fast float %5164, %5113
  %5166 = fadd fast float %5165, -1.000000e+00
  %5167 = fmul fast float %5166, %996
  %5168 = fadd fast float %5167, 1.000000e+00
  %5169 = call float @dx.op.binary.f32(i32 35, float %5138, float 0x3F847AE140000000)  ; FMax(a,b)
  %5170 = fmul fast float %5169, %5169
  %5171 = fmul fast float %5170, %5170
  %5172 = fmul fast float %5171, 0xC00A935000000000
  %5173 = call float @dx.op.unary.f32(i32 21, float %5172)  ; Exp(value)
  %5174 = fsub fast float 1.000000e+00, %5173
  %5175 = fmul fast float %5174, %5091
  %5176 = fmul fast float %5175, %5168
  %5177 = fmul fast float %5158, %5092
  %5178 = fmul fast float %5177, %5174
  %5179 = fmul fast float %5148, %5093
  %5180 = fmul fast float %5179, %5174
  %5181 = fadd fast float %5176, %5128
  %5182 = fmul fast float %5181, %996
  %5183 = fadd fast float %5178, %5127
  %5184 = fmul fast float %5183, %996
  %5185 = fadd fast float %5180, %5126
  %5186 = fmul fast float %5185, %996
  %5187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5188 = extractvalue %dx.types.CBufRet.f32 %5187, 3
  %5189 = fcmp fast oeq float %5188, 0.000000e+00
  br i1 %5189, label %5434, label %5190

; <label>:5190                                    ; preds = %5003
  %5191 = extractvalue %dx.types.CBufRet.f32 %5187, 0
  %5192 = extractvalue %dx.types.CBufRet.f32 %5187, 1
  %5193 = extractvalue %dx.types.CBufRet.f32 %5187, 2
  %5194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5195 = extractvalue %dx.types.CBufRet.f32 %5194, 0
  %5196 = extractvalue %dx.types.CBufRet.f32 %5194, 1
  %5197 = extractvalue %dx.types.CBufRet.f32 %5194, 2
  %5198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5199 = extractvalue %dx.types.CBufRet.f32 %5198, 0
  %5200 = extractvalue %dx.types.CBufRet.f32 %5198, 1
  %5201 = call float @dx.op.dot3.f32(i32 55, float %5195, float %5196, float %5197, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5202 = select i1 %174, float %5199, float %5195
  %5203 = select i1 %174, float %5201, float %5196
  %5204 = select i1 %174, float %5200, float %5197
  %5205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5206 = extractvalue %dx.types.CBufRet.f32 %5205, 1
  %5207 = fcmp fast une float %5206, 0.000000e+00
  br i1 %5207, label %5208, label %5225

; <label>:5208                                    ; preds = %5190
  %5209 = fptoui float %71 to i32
  %5210 = fptoui float %72 to i32
  %5211 = lshr i32 %5209, 4
  %5212 = lshr i32 %5210, 4
  %5213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5214 = extractvalue %dx.types.CBufRet.f32 %5213, 0
  %5215 = fptoui float %5214 to i32
  %5216 = add i32 %5215, 15
  %5217 = lshr i32 %5216, 4
  %5218 = mul i32 %5217, %5212
  %5219 = add i32 %5218, %5211
  %5220 = shl i32 %5219, 3
  %5221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5220, i32 undef)  ; BufferLoad(srv,index,wot)
  %5222 = extractvalue %dx.types.ResRet.i32 %5221, 0
  %5223 = and i32 %5222, -268435456
  %5224 = icmp eq i32 %5223, -1342177280
  br i1 %5224, label %5235, label %5225

; <label>:5225                                    ; preds = %5208, %5190
  %5226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5227 = extractvalue %dx.types.CBufRet.f32 %5226, 2
  %5228 = extractvalue %dx.types.CBufRet.f32 %5226, 3
  %5229 = fmul fast float %5227, %71
  %5230 = fmul fast float %5228, %72
  %5231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %27, float %5229, float %5230, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5232 = extractvalue %dx.types.ResRet.f32 %5231, 0
  %5233 = extractvalue %dx.types.ResRet.f32 %5231, 1
  %5234 = extractvalue %dx.types.ResRet.f32 %5231, 2
  br label %5235

; <label>:5235                                    ; preds = %5225, %5208
  %5236 = phi float [ %5232, %5225 ], [ 0.000000e+00, %5208 ]
  %5237 = phi float [ %5233, %5225 ], [ 0.000000e+00, %5208 ]
  %5238 = phi float [ %5234, %5225 ], [ 0.000000e+00, %5208 ]
  %5239 = call float @dx.op.binary.f32(i32 36, float %5237, float %5238)  ; FMin(a,b)
  %5240 = call float @dx.op.binary.f32(i32 36, float %5236, float %5239)  ; FMin(a,b)
  %5241 = fcmp fast ogt float %5240, 0.000000e+00
  br i1 %5241, label %5242, label %5434, !dx.controlflow.hints !71

; <label>:5242                                    ; preds = %5235
  %5243 = fmul fast float %5236, %5202
  %5244 = fmul fast float %5237, %5203
  %5245 = fmul fast float %5238, %5204
  %5246 = fsub fast float %5191, %4827
  %5247 = fsub fast float %5192, %4826
  %5248 = fsub fast float %5193, %4825
  %5249 = call float @dx.op.dot3.f32(i32 55, float %5246, float %5247, float %5248, float %5246, float %5247, float %5248)  ; Dot3(ax,ay,az,bx,by,bz)
  %5250 = call float @dx.op.unary.f32(i32 25, float %5249)  ; Rsqrt(value)
  %5251 = fmul fast float %5250, %5246
  %5252 = fmul fast float %5250, %5247
  %5253 = fmul fast float %5250, %5248
  %5254 = call float @dx.op.dot3.f32(i32 55, float %5191, float %5192, float %5193, float %4834, float %4835, float %4836)  ; Dot3(ax,ay,az,bx,by,bz)
  %5255 = call float @dx.op.dot3.f32(i32 55, float %4824, float %4823, float %4822, float %5251, float %5252, float %5253)  ; Dot3(ax,ay,az,bx,by,bz)
  %5256 = call float @dx.op.unary.f32(i32 7, float %5254)  ; Saturate(value)
  %5257 = fmul fast float %5256, %5256
  %5258 = fmul fast float %5257, %4854
  %5259 = call float @dx.op.unary.f32(i32 7, float %5258)  ; Saturate(value)
  %5260 = fmul fast float %5259, %5256
  %5261 = call float @dx.op.dot3.f32(i32 55, float %4834, float %4835, float %4836, float %5251, float %5252, float %5253)  ; Dot3(ax,ay,az,bx,by,bz)
  %5262 = fmul fast float %5261, %5261
  %5263 = call float @dx.op.unary.f32(i32 6, float %5254)  ; FAbs(value)
  %5264 = call float @dx.op.binary.f32(i32 35, float %5129, float 0x3F847AE140000000)  ; FMax(a,b)
  %5265 = fmul fast float %5264, %5264
  %5266 = fmul fast float %5265, %5265
  %5267 = fsub fast float 1.000000e+00, %5266
  %5268 = fmul fast float %4841, %4841
  %5269 = fmul fast float %5268, %5267
  %5270 = fadd fast float %5269, %5266
  %5271 = bitcast float %5270 to i32
  %5272 = ashr i32 %5271, 1
  %5273 = add nsw i32 %5272, 532487669
  %5274 = bitcast i32 %5273 to float
  %5275 = fadd fast float %5274, %4841
  %5276 = fmul fast float %5266, %5262
  %5277 = fsub fast float 1.000000e+00, %5262
  %5278 = fadd fast float %5277, %5276
  %5279 = fmul fast float %5263, %5263
  %5280 = fmul fast float %5279, %5267
  %5281 = fadd fast float %5280, %5266
  %5282 = bitcast float %5281 to i32
  %5283 = ashr i32 %5282, 1
  %5284 = add nsw i32 %5283, 532487669
  %5285 = bitcast i32 %5284 to float
  %5286 = fadd fast float %5285, %5263
  %5287 = fmul fast float %5278, %5278
  %5288 = fmul fast float %5287, %5275
  %5289 = fmul fast float %5288, %5286
  %5290 = fdiv fast float 0x3FF0A00000000000, %5289
  %5291 = fmul fast float %5290, %5266
  %5292 = call float @dx.op.unary.f32(i32 6, float %5255)  ; FAbs(value)
  %5293 = fsub fast float 1.000000e+00, %5292
  %5294 = bitcast float %5293 to i32
  %5295 = sitofp i32 %5294 to float
  %5296 = fmul fast float %5295, 5.000000e+00
  %5297 = fadd fast float %5296, 0xC1EFBF8940000000
  %5298 = fptosi float %5297 to i32
  %5299 = bitcast i32 %5298 to float
  %5300 = fsub fast float 1.000000e+00, %4831
  %5301 = fsub fast float 1.000000e+00, %4832
  %5302 = fsub fast float 1.000000e+00, %4839
  %5303 = fmul fast float %5299, %5300
  %5304 = fmul fast float %5299, %5301
  %5305 = fmul fast float %5299, %5302
  %5306 = fadd fast float %5303, %4831
  %5307 = fadd fast float %5304, %4832
  %5308 = fadd fast float %5305, %4839
  %5309 = fmul fast float %5254, 9.843750e-01
  %5310 = fadd fast float %5309, 7.812500e-03
  %5311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %5310, float %5101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5312 = extractvalue %dx.types.ResRet.f32 %5311, 2
  %5313 = extractvalue %dx.types.ResRet.f32 %5311, 3
  %5314 = fmul fast float %5312, %4831
  %5315 = fmul fast float %5312, %4832
  %5316 = fmul fast float %5312, %4839
  %5317 = fadd fast float %5314, %5313
  %5318 = fadd fast float %5315, %5313
  %5319 = fadd fast float %5316, %5313
  %5320 = call float @dx.op.binary.f32(i32 35, float %5318, float %5319)  ; FMax(a,b)
  %5321 = call float @dx.op.binary.f32(i32 35, float %5317, float %5320)  ; FMax(a,b)
  %5322 = fsub fast float 1.000000e+00, %5321
  %5323 = call float @dx.op.binary.f32(i32 35, float %5263, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5324 = fdiv fast float %4170, %5323
  %5325 = fmul fast float %5160, %5324
  %5326 = fmul fast float %5150, %5324
  %5327 = fmul fast float %5140, %5324
  %5328 = call float @dx.op.unary.f32(i32 21, float %5325)  ; Exp(value)
  %5329 = call float @dx.op.unary.f32(i32 21, float %5326)  ; Exp(value)
  %5330 = call float @dx.op.unary.f32(i32 21, float %5327)  ; Exp(value)
  %5331 = call float @dx.op.unary.f32(i32 7, float %5328)  ; Saturate(value)
  %5332 = call float @dx.op.unary.f32(i32 7, float %5329)  ; Saturate(value)
  %5333 = call float @dx.op.unary.f32(i32 7, float %5330)  ; Saturate(value)
  %5334 = select i1 %5159, float %5331, float 0.000000e+00
  %5335 = select i1 %5149, float %5332, float 0.000000e+00
  %5336 = select i1 %5139, float %5333, float 0.000000e+00
  %5337 = fsub fast float -0.000000e+00, %4834
  %5338 = fsub fast float -0.000000e+00, %4835
  %5339 = fsub fast float -0.000000e+00, %4836
  %5340 = call float @dx.op.dot3.f32(i32 55, float %5191, float %5192, float %5193, float %5337, float %5338, float %5339)  ; Dot3(ax,ay,az,bx,by,bz)
  %5341 = call float @dx.op.unary.f32(i32 7, float %5340)  ; Saturate(value)
  %5342 = fmul fast float %5341, 9.843750e-01
  %5343 = fadd fast float %5342, 7.812500e-03
  %5344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %5343, float %5101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5345 = extractvalue %dx.types.ResRet.f32 %5344, 2
  %5346 = extractvalue %dx.types.ResRet.f32 %5344, 3
  %5347 = fmul fast float %5345, %4831
  %5348 = fmul fast float %5345, %4832
  %5349 = fmul fast float %5345, %4839
  %5350 = fadd fast float %5347, %5346
  %5351 = fadd fast float %5348, %5346
  %5352 = fadd fast float %5349, %5346
  %5353 = call float @dx.op.binary.f32(i32 35, float %5351, float %5352)  ; FMax(a,b)
  %5354 = call float @dx.op.binary.f32(i32 35, float %5350, float %5353)  ; FMax(a,b)
  %5355 = fsub fast float 1.000000e+00, %5354
  %5356 = fmul fast float %5129, %5134
  %5357 = fadd fast float %5136, %5356
  %5358 = call float @dx.op.unary.f32(i32 7, float %5357)  ; Saturate(value)
  %5359 = fsub fast float %5191, %4847
  %5360 = fsub fast float %5192, %4848
  %5361 = fsub fast float %5193, %4849
  %5362 = call float @dx.op.dot3.f32(i32 55, float %5359, float %5360, float %5361, float %5359, float %5360, float %5361)  ; Dot3(ax,ay,az,bx,by,bz)
  %5363 = call float @dx.op.unary.f32(i32 25, float %5362)  ; Rsqrt(value)
  %5364 = fmul fast float %5363, %5359
  %5365 = fmul fast float %5363, %5360
  %5366 = fmul fast float %5363, %5361
  %5367 = call float @dx.op.dot3.f32(i32 55, float %5337, float %5338, float %5339, float %5364, float %5365, float %5366)  ; Dot3(ax,ay,az,bx,by,bz)
  %5368 = fmul fast float %5367, %5367
  %5369 = call float @dx.op.unary.f32(i32 6, float %5341)  ; FAbs(value)
  %5370 = call float @dx.op.binary.f32(i32 35, float %5358, float 0x3F847AE140000000)  ; FMax(a,b)
  %5371 = fmul fast float %5370, %5370
  %5372 = fmul fast float %5371, %5371
  %5373 = fsub fast float 1.000000e+00, %5372
  %5374 = fmul fast float %5268, %5373
  %5375 = fadd fast float %5374, %5372
  %5376 = bitcast float %5375 to i32
  %5377 = ashr i32 %5376, 1
  %5378 = add nsw i32 %5377, 532487669
  %5379 = bitcast i32 %5378 to float
  %5380 = fadd fast float %5379, %4841
  %5381 = fmul fast float %5372, %5368
  %5382 = fsub fast float 1.000000e+00, %5368
  %5383 = fadd fast float %5382, %5381
  %5384 = fmul fast float %5369, %5369
  %5385 = fmul fast float %5384, %5373
  %5386 = fadd fast float %5385, %5372
  %5387 = bitcast float %5386 to i32
  %5388 = ashr i32 %5387, 1
  %5389 = add nsw i32 %5388, 532487669
  %5390 = bitcast i32 %5389 to float
  %5391 = fadd fast float %5390, %5369
  %5392 = fmul fast float %5383, %5383
  %5393 = fmul fast float %5392, %5380
  %5394 = fmul fast float %5393, %5391
  %5395 = fdiv fast float 0x3FF0A00000000000, %5394
  %5396 = fmul fast float %5395, %5372
  %5397 = fmul fast float %5341, %5334
  %5398 = fmul fast float %5341, %5335
  %5399 = fmul fast float %5341, %5336
  %5400 = fmul fast float %5397, %5355
  %5401 = fmul fast float %5400, %5396
  %5402 = fmul fast float %5398, %5355
  %5403 = fmul fast float %5402, %5396
  %5404 = fmul fast float %5399, %5355
  %5405 = fmul fast float %5404, %5396
  %5406 = fmul fast float %5291, %5260
  %5407 = fmul fast float %5406, %5306
  %5408 = fmul fast float %5406, %5307
  %5409 = fmul fast float %5406, %5308
  %5410 = fmul fast float %5260, %5243
  %5411 = fmul fast float %5410, %5322
  %5412 = fmul fast float %5260, %5244
  %5413 = fmul fast float %5412, %5322
  %5414 = fmul fast float %5260, %5245
  %5415 = fmul fast float %5414, %5322
  %5416 = fadd fast float %5401, %5407
  %5417 = fadd fast float %5403, %5408
  %5418 = fadd fast float %5405, %5409
  %5419 = fmul fast float %5416, %5243
  %5420 = fmul fast float %5417, %5244
  %5421 = fmul fast float %5418, %5245
  %5422 = fadd fast float %5411, %5181
  %5423 = fmul fast float %5422, %996
  %5424 = fadd fast float %5413, %5183
  %5425 = fmul fast float %5424, %996
  %5426 = fadd fast float %5415, %5185
  %5427 = fmul fast float %5426, %996
  %5428 = fadd fast float %5419, %5119
  %5429 = fmul fast float %5428, %996
  %5430 = fadd fast float %5420, %5121
  %5431 = fmul fast float %5430, %996
  %5432 = fadd fast float %5421, %5123
  %5433 = fmul fast float %5432, %996
  br label %5434

; <label>:5434                                    ; preds = %5242, %5235, %5003
  %5435 = phi float [ %5120, %5003 ], [ %5120, %5235 ], [ %5429, %5242 ]
  %5436 = phi float [ %5122, %5003 ], [ %5122, %5235 ], [ %5431, %5242 ]
  %5437 = phi float [ %5124, %5003 ], [ %5124, %5235 ], [ %5433, %5242 ]
  %5438 = phi float [ %5182, %5003 ], [ %5182, %5235 ], [ %5423, %5242 ]
  %5439 = phi float [ %5184, %5003 ], [ %5184, %5235 ], [ %5425, %5242 ]
  %5440 = phi float [ %5186, %5003 ], [ %5186, %5235 ], [ %5427, %5242 ]
  %5441 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5442 = extractvalue %dx.types.CBufRet.i32 %5441, 0
  %5443 = icmp eq i32 %5442, 0
  br i1 %5443, label %5915, label %5444

; <label>:5444                                    ; preds = %5434
  %5445 = fptoui float %71 to i32
  %5446 = fptoui float %72 to i32
  %5447 = lshr i32 %5445, 4
  %5448 = lshr i32 %5446, 4
  %5449 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5450 = extractvalue %dx.types.CBufRet.i32 %5449, 0
  %5451 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5448, i32 %5450, i32 %5447)  ; UMad(a,b,c)
  %5452 = add nsw i32 %5442, -1
  %5453 = call i32 @dx.op.binary.i32(i32 37, i32 %5452, i32 0)  ; IMax(a,b)
  %5454 = call float @dx.op.binary.f32(i32 35, float %66, float 0.000000e+00)  ; FMax(a,b)
  %5455 = fptoui float %5454 to i32
  %5456 = lshr i32 %5455, 5
  %5457 = call i32 @dx.op.binary.i32(i32 40, i32 %5456, i32 8191)  ; UMin(a,b)
  %5458 = shl i32 %5457, 2
  %5459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5458, i32 undef)  ; BufferLoad(srv,index,wot)
  %5460 = extractvalue %dx.types.ResRet.i32 %5459, 0
  %5461 = lshr i32 %5460, 16
  %5462 = and i32 %5460, 65535
  %5463 = lshr i32 %5460, 21
  %5464 = lshr i32 %5462, 5
  %5465 = call i32 @dx.op.binary.i32(i32 40, i32 %5464, i32 %5453)  ; UMin(a,b)
  %5466 = icmp ugt i32 %5463, %5465
  br i1 %5466, label %5915, label %5467

; <label>:5467                                    ; preds = %5444
  br label %5468

; <label>:5468                                    ; preds = %5905, %5467
  %5469 = phi i32 [ %5912, %5905 ], [ %5463, %5467 ]
  %5470 = phi float [ %5906, %5905 ], [ %5435, %5467 ]
  %5471 = phi float [ %5907, %5905 ], [ %5436, %5467 ]
  %5472 = phi float [ %5908, %5905 ], [ %5437, %5467 ]
  %5473 = phi float [ %5909, %5905 ], [ %5438, %5467 ]
  %5474 = phi float [ %5910, %5905 ], [ %5439, %5467 ]
  %5475 = phi float [ %5911, %5905 ], [ %5440, %5467 ]
  %5476 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5477 = extractvalue %dx.types.CBufRet.i32 %5476, 0
  %5478 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5451, i32 %5477, i32 %5469)  ; UMad(a,b,c)
  %5479 = shl i32 %5478, 2
  %5480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5479, i32 undef)  ; BufferLoad(srv,index,wot)
  %5481 = extractvalue %dx.types.ResRet.i32 %5480, 0
  %5482 = shl i32 %5469, 5
  %5483 = sub nsw i32 %5461, %5482
  %5484 = call i32 @dx.op.binary.i32(i32 37, i32 %5483, i32 0)  ; IMax(a,b)
  %5485 = call i32 @dx.op.binary.i32(i32 38, i32 %5484, i32 31)  ; IMin(a,b)
  %5486 = sub nsw i32 1, %5461
  %5487 = add nsw i32 %5486, %5462
  %5488 = call i32 @dx.op.binary.i32(i32 37, i32 %5487, i32 0)  ; IMax(a,b)
  %5489 = call i32 @dx.op.binary.i32(i32 38, i32 %5488, i32 32)  ; IMin(a,b)
  %5490 = and i32 %5489, 31
  %5491 = shl i32 -1, %5490
  %5492 = xor i32 %5491, -1
  %5493 = and i32 %5485, 31
  %5494 = shl i32 %5492, %5493
  %5495 = icmp eq i32 %5489, 32
  %5496 = select i1 %5495, i32 -1, i32 %5494
  %5497 = and i32 %5496, %5481
  %5498 = icmp eq i32 %5497, 0
  br i1 %5498, label %5905, label %5499

; <label>:5499                                    ; preds = %5468
  br label %5500

; <label>:5500                                    ; preds = %5584, %5499
  %5501 = phi i32 [ %5512, %5584 ], [ %5497, %5499 ]
  %5502 = phi float [ %5585, %5584 ], [ %5470, %5499 ]
  %5503 = phi float [ %5586, %5584 ], [ %5471, %5499 ]
  %5504 = phi float [ %5587, %5584 ], [ %5472, %5499 ]
  %5505 = phi float [ %5588, %5584 ], [ %5473, %5499 ]
  %5506 = phi float [ %5589, %5584 ], [ %5474, %5499 ]
  %5507 = phi float [ %5590, %5584 ], [ %5475, %5499 ]
  %5508 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5501)  ; FirstbitLo(value)
  %5509 = add i32 %5508, %5482
  %5510 = and i32 %5508, 31
  %5511 = shl i32 1, %5510
  %5512 = xor i32 %5511, %5501
  %5513 = mul i32 %5509, 112
  %5514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5513, i32 undef)  ; BufferLoad(srv,index,wot)
  %5515 = extractvalue %dx.types.ResRet.f32 %5514, 0
  %5516 = extractvalue %dx.types.ResRet.f32 %5514, 1
  %5517 = extractvalue %dx.types.ResRet.f32 %5514, 2
  %5518 = or i32 %5513, 12
  %5519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5518, i32 undef)  ; BufferLoad(srv,index,wot)
  %5520 = extractvalue %dx.types.ResRet.f32 %5519, 0
  %5521 = add i32 %5513, 28
  %5522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5521, i32 undef)  ; BufferLoad(srv,index,wot)
  %5523 = extractvalue %dx.types.ResRet.i32 %5522, 0
  %5524 = add i32 %5513, 44
  %5525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5524, i32 undef)  ; BufferLoad(srv,index,wot)
  %5526 = extractvalue %dx.types.ResRet.f32 %5525, 0
  %5527 = add i32 %5513, 48
  %5528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5527, i32 undef)  ; BufferLoad(srv,index,wot)
  %5529 = extractvalue %dx.types.ResRet.f32 %5528, 0
  %5530 = extractvalue %dx.types.ResRet.f32 %5528, 1
  %5531 = extractvalue %dx.types.ResRet.f32 %5528, 2
  %5532 = add i32 %5513, 80
  %5533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5532, i32 undef)  ; BufferLoad(srv,index,wot)
  %5534 = extractvalue %dx.types.ResRet.f32 %5533, 1
  %5535 = extractvalue %dx.types.ResRet.f32 %5533, 2
  %5536 = call float @dx.op.dot3.f32(i32 55, float %5515, float %5516, float %5517, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5537 = select i1 %174, float %5534, float %5515
  %5538 = select i1 %174, float %5536, float %5516
  %5539 = select i1 %174, float %5535, float %5517
  %5540 = icmp slt i32 %5523, 0
  %5541 = fsub fast float %5529, %130
  %5542 = fsub fast float %5530, %131
  %5543 = fsub fast float %5531, %132
  %5544 = call float @dx.op.dot3.f32(i32 55, float %5541, float %5542, float %5543, float %5541, float %5542, float %5543)  ; Dot3(ax,ay,az,bx,by,bz)
  %5545 = call float @dx.op.unary.f32(i32 24, float %5544)  ; Sqrt(value)
  %5546 = fdiv fast float 1.000000e+00, %5545
  %5547 = fmul fast float %5546, %5541
  %5548 = fmul fast float %5546, %5542
  %5549 = fmul fast float %5546, %5543
  %5550 = fadd fast float %5545, %5520
  %5551 = fdiv fast float 1.000000e+00, %5550
  %5552 = fmul float %5526, %5551
  %5553 = fmul float %5552, %5552
  %5554 = call float @dx.op.unary.f32(i32 7, float %5553)  ; Saturate(value)
  %5555 = and i32 %5511, %5497
  %5556 = icmp eq i32 %5555, 0
  br i1 %5556, label %5579, label %5557, !dx.controlflow.hints !72

; <label>:5557                                    ; preds = %5500
  %5558 = lshr i32 %5445, 5
  %5559 = lshr i32 %5446, 5
  %5560 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %5558, i32 %5559, i32 %5509, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5561 = extractvalue %dx.types.ResRet.i32 %5560, 0
  %5562 = and i32 %5561, 3
  %5563 = icmp eq i32 %5562, 0
  %5564 = select i1 %5563, float 1.000000e+00, float 0.000000e+00
  %5565 = icmp eq i32 %5562, 3
  br i1 %5565, label %5566, label %5579

; <label>:5566                                    ; preds = %5557
  %5567 = lshr i32 %5561, 10
  %5568 = and i32 %5567, 8160
  %5569 = and i32 %5446, 31
  %5570 = or i32 %5568, %5569
  %5571 = lshr i32 %5561, 1
  %5572 = and i32 %5571, 16352
  %5573 = and i32 %5445, 31
  %5574 = or i32 %5572, %5573
  %5575 = lshr i32 %5561, 23
  %5576 = and i32 %5575, 255
  %5577 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %5574, i32 %5570, i32 %5576, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5578 = extractvalue %dx.types.ResRet.f32 %5577, 0
  br label %5579

; <label>:5579                                    ; preds = %5566, %5557, %5500
  %5580 = phi float [ %5578, %5566 ], [ %5564, %5557 ], [ 0.000000e+00, %5500 ]
  %5581 = call float @dx.op.binary.f32(i32 36, float %5580, float %5580)  ; FMin(a,b)
  %5582 = call float @dx.op.binary.f32(i32 36, float %5580, float %5581)  ; FMin(a,b)
  %5583 = fcmp fast ogt float %5582, 0.000000e+00
  br i1 %5583, label %5592, label %5584, !dx.controlflow.hints !73

; <label>:5584                                    ; preds = %5873, %5579
  %5585 = phi float [ %5502, %5579 ], [ %5901, %5873 ]
  %5586 = phi float [ %5503, %5579 ], [ %5902, %5873 ]
  %5587 = phi float [ %5504, %5579 ], [ %5903, %5873 ]
  %5588 = phi float [ %5505, %5579 ], [ %5895, %5873 ]
  %5589 = phi float [ %5506, %5579 ], [ %5896, %5873 ]
  %5590 = phi float [ %5507, %5579 ], [ %5897, %5873 ]
  %5591 = icmp eq i32 %5501, %5511
  br i1 %5591, label %5904, label %5500

; <label>:5592                                    ; preds = %5579
  %5593 = fmul fast float %5580, %5537
  %5594 = fmul fast float %5580, %5538
  %5595 = fmul fast float %5580, %5539
  %5596 = fsub fast float %5531, %4627
  %5597 = fcmp fast ogt float %5596, 0.000000e+00
  %5598 = fsub fast float %132, %4627
  %5599 = fcmp fast ogt float %5598, 0.000000e+00
  %5600 = xor i1 %5599, %5597
  %5601 = fsub fast float %4627, %5531
  %5602 = fmul fast float %5601, 2.000000e+00
  %5603 = fadd fast float %5602, %5531
  %5604 = select i1 %5600, float %5531, float %5603
  %5605 = fsub fast float %5604, %132
  %5606 = call float @dx.op.dot3.f32(i32 55, float %5541, float %5542, float %5605, float %5541, float %5542, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = call float @dx.op.unary.f32(i32 25, float %5606)  ; Rsqrt(value)
  %5608 = fmul fast float %5607, %5541
  %5609 = fmul fast float %5607, %5542
  %5610 = fmul fast float %5607, %5605
  %5611 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4635)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5608, float %5609, float %5610)  ; Dot3(ax,ay,az,bx,by,bz)
  %5613 = fdiv fast float 1.000000e+00, %5612
  %5614 = fmul fast float %5613, %5611
  %5615 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5598, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5616 = fcmp fast ogt float %5615, 0.000000e+00
  %5617 = fcmp fast olt float %5615, 0.000000e+00
  %5618 = zext i1 %5616 to i32
  %5619 = zext i1 %5617 to i32
  %5620 = sub nsw i32 %5618, %5619
  %5621 = sitofp i32 %5620 to float
  %5622 = fsub fast float %5604, %4627
  %5623 = call float @dx.op.dot3.f32(i32 55, float %5541, float %5542, float %5622, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5624 = fcmp fast ogt float %5623, 0.000000e+00
  %5625 = fcmp fast olt float %5623, 0.000000e+00
  %5626 = zext i1 %5624 to i32
  %5627 = zext i1 %5625 to i32
  %5628 = sub nsw i32 %5626, %5627
  %5629 = sitofp i32 %5628 to float
  %5630 = fcmp fast une float %5621, %5629
  br i1 %5630, label %5631, label %5641

; <label>:5631                                    ; preds = %5592
  %5632 = fmul fast float %5614, %5610
  %5633 = fmul fast float %5614, %5609
  %5634 = fmul fast float %5614, %5608
  %5635 = fmul fast float %5634, %5634
  %5636 = fmul fast float %5633, %5633
  %5637 = fadd fast float %5635, %5636
  %5638 = fmul fast float %5632, %5632
  %5639 = fadd fast float %5637, %5638
  %5640 = call float @dx.op.unary.f32(i32 24, float %5639)  ; Sqrt(value)
  br label %5653

; <label>:5641                                    ; preds = %5592
  %5642 = icmp slt i32 %5620, 0
  br i1 %5642, label %5643, label %5653

; <label>:5643                                    ; preds = %5641
  %5644 = fsub fast float %130, %5529
  %5645 = fsub fast float %131, %5530
  %5646 = fsub fast float %132, %5604
  %5647 = fmul fast float %5644, %5644
  %5648 = fmul fast float %5645, %5645
  %5649 = fadd fast float %5647, %5648
  %5650 = fmul fast float %5646, %5646
  %5651 = fadd fast float %5649, %5650
  %5652 = call float @dx.op.unary.f32(i32 24, float %5651)  ; Sqrt(value)
  br label %5653

; <label>:5653                                    ; preds = %5643, %5641, %5631
  %5654 = phi float [ %5640, %5631 ], [ %5652, %5643 ], [ 0.000000e+00, %5641 ]
  %5655 = and i1 %5599, %5597
  %5656 = fsub fast float -0.000000e+00, %5654
  %5657 = select i1 %5655, float -0.000000e+00, float %5656
  %5658 = fmul fast float %4628, 0x3FF7154760000000
  %5659 = fmul fast float %5658, %5657
  %5660 = fmul fast float %4629, 0x3FF7154760000000
  %5661 = fmul fast float %5660, %5657
  %5662 = fmul fast float %4630, 0x3FF7154760000000
  %5663 = fmul fast float %5662, %5657
  %5664 = call float @dx.op.unary.f32(i32 21, float %5659)  ; Exp(value)
  %5665 = call float @dx.op.unary.f32(i32 21, float %5661)  ; Exp(value)
  %5666 = call float @dx.op.unary.f32(i32 21, float %5663)  ; Exp(value)
  %5667 = call float @dx.op.unary.f32(i32 7, float %5664)  ; Saturate(value)
  %5668 = call float @dx.op.unary.f32(i32 7, float %5665)  ; Saturate(value)
  %5669 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5670 = fmul fast float %5593, %5667
  %5671 = fmul fast float %5594, %5668
  %5672 = fmul fast float %5595, %5669
  %5673 = fsub fast float %5547, %4827
  %5674 = fsub fast float %5548, %4826
  %5675 = fsub fast float %5549, %4825
  %5676 = call float @dx.op.dot3.f32(i32 55, float %5673, float %5674, float %5675, float %5673, float %5674, float %5675)  ; Dot3(ax,ay,az,bx,by,bz)
  %5677 = call float @dx.op.unary.f32(i32 25, float %5676)  ; Rsqrt(value)
  %5678 = fmul fast float %5677, %5673
  %5679 = fmul fast float %5677, %5674
  %5680 = fmul fast float %5677, %5675
  %5681 = call float @dx.op.dot3.f32(i32 55, float %5547, float %5548, float %5549, float %4834, float %4835, float %4836)  ; Dot3(ax,ay,az,bx,by,bz)
  %5682 = call float @dx.op.dot3.f32(i32 55, float %4824, float %4823, float %4822, float %5678, float %5679, float %5680)  ; Dot3(ax,ay,az,bx,by,bz)
  %5683 = call float @dx.op.unary.f32(i32 7, float %5681)  ; Saturate(value)
  %5684 = fmul fast float %5683, %5554
  %5685 = fmul fast float %5683, %5683
  %5686 = fmul fast float %5685, %4854
  %5687 = call float @dx.op.unary.f32(i32 7, float %5686)  ; Saturate(value)
  %5688 = fmul fast float %5684, %5687
  %5689 = bitcast float %5544 to i32
  %5690 = ashr i32 %5689, 1
  %5691 = sub nsw i32 1597463007, %5690
  %5692 = bitcast i32 %5691 to float
  %5693 = fmul fast float %5692, %5541
  %5694 = fmul fast float %5692, %5542
  %5695 = fmul fast float %5692, %5543
  %5696 = fsub fast float %5693, %4827
  %5697 = fsub fast float %5694, %4826
  %5698 = fsub fast float %5695, %4825
  %5699 = call float @dx.op.dot3.f32(i32 55, float %5696, float %5697, float %5698, float %5696, float %5697, float %5698)  ; Dot3(ax,ay,az,bx,by,bz)
  %5700 = call float @dx.op.unary.f32(i32 25, float %5699)  ; Rsqrt(value)
  %5701 = fmul fast float %5696, %5700
  %5702 = fmul fast float %5697, %5700
  %5703 = fmul fast float %5698, %5700
  %5704 = call float @dx.op.dot3.f32(i32 55, float %4834, float %4835, float %4836, float %5701, float %5702, float %5703)  ; Dot3(ax,ay,az,bx,by,bz)
  %5705 = fmul fast float %5704, %5704
  %5706 = call float @dx.op.unary.f32(i32 6, float %5681)  ; FAbs(value)
  %5707 = call float @dx.op.binary.f32(i32 35, float %5129, float 0x3F847AE140000000)  ; FMax(a,b)
  %5708 = fmul fast float %5707, %5707
  %5709 = fmul fast float %5708, %5708
  %5710 = fsub fast float 1.000000e+00, %5709
  %5711 = fmul fast float %4841, %4841
  %5712 = fmul fast float %5711, %5710
  %5713 = fadd fast float %5712, %5709
  %5714 = bitcast float %5713 to i32
  %5715 = ashr i32 %5714, 1
  %5716 = add nsw i32 %5715, 532487669
  %5717 = bitcast i32 %5716 to float
  %5718 = fadd fast float %5717, %4841
  %5719 = fmul fast float %5709, %5705
  %5720 = fsub fast float 1.000000e+00, %5705
  %5721 = fadd fast float %5720, %5719
  %5722 = fmul fast float %5706, %5706
  %5723 = fmul fast float %5722, %5710
  %5724 = fadd fast float %5723, %5709
  %5725 = bitcast float %5724 to i32
  %5726 = ashr i32 %5725, 1
  %5727 = add nsw i32 %5726, 532487669
  %5728 = bitcast i32 %5727 to float
  %5729 = fadd fast float %5728, %5706
  %5730 = fmul fast float %5721, %5721
  %5731 = fmul fast float %5730, %5718
  %5732 = fmul fast float %5731, %5729
  %5733 = fdiv fast float 1.000000e+00, %5732
  %5734 = bitcast float %5709 to i32
  %5735 = sitofp i32 %5734 to float
  %5736 = fmul fast float %5735, 0x3FE7F73180000000
  %5737 = fadd fast float %5736, 0x41AFE27C40000000
  %5738 = fptosi float %5737 to i32
  %5739 = bitcast i32 %5738 to float
  %5740 = fmul fast float %5526, 0x3FD80E9D60000000
  %5741 = fmul fast float %5740, %5692
  %5742 = fadd fast float %5739, %5741
  %5743 = bitcast float %5742 to i32
  %5744 = sub nsw i32 2129859010, %5743
  %5745 = bitcast i32 %5744 to float
  %5746 = fmul fast float %5709, %5733
  %5747 = fmul fast float %5746, %5739
  %5748 = fmul fast float %5747, %5745
  %5749 = call float @dx.op.unary.f32(i32 6, float %5682)  ; FAbs(value)
  %5750 = fsub fast float 1.000000e+00, %5749
  %5751 = bitcast float %5750 to i32
  %5752 = sitofp i32 %5751 to float
  %5753 = fmul fast float %5752, 5.000000e+00
  %5754 = fadd fast float %5753, 0xC1EFBF8940000000
  %5755 = fptosi float %5754 to i32
  %5756 = bitcast i32 %5755 to float
  %5757 = fsub fast float 1.000000e+00, %4831
  %5758 = fsub fast float 1.000000e+00, %4832
  %5759 = fsub fast float 1.000000e+00, %4839
  %5760 = fmul fast float %5756, %5757
  %5761 = fmul fast float %5756, %5758
  %5762 = fmul fast float %5756, %5759
  %5763 = fadd fast float %5760, %4831
  %5764 = fadd fast float %5761, %4832
  %5765 = fadd fast float %5762, %4839
  %5766 = fmul fast float %5681, 9.843750e-01
  %5767 = fadd fast float %5766, 7.812500e-03
  %5768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %5767, float %5101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5769 = extractvalue %dx.types.ResRet.f32 %5768, 2
  %5770 = extractvalue %dx.types.ResRet.f32 %5768, 3
  %5771 = fmul fast float %5769, %4831
  %5772 = fmul fast float %5769, %4832
  %5773 = fmul fast float %5769, %4839
  %5774 = fadd fast float %5771, %5770
  %5775 = fadd fast float %5772, %5770
  %5776 = fadd fast float %5773, %5770
  %5777 = call float @dx.op.binary.f32(i32 35, float %5775, float %5776)  ; FMax(a,b)
  %5778 = call float @dx.op.binary.f32(i32 35, float %5774, float %5777)  ; FMax(a,b)
  %5779 = fsub fast float 1.000000e+00, %5778
  %5780 = call float @dx.op.binary.f32(i32 35, float %5706, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5781 = fdiv fast float %4170, %5780
  %5782 = fsub fast float -0.000000e+00, %4834
  %5783 = fsub fast float -0.000000e+00, %4835
  %5784 = fsub fast float -0.000000e+00, %4836
  %5785 = call float @dx.op.dot3.f32(i32 55, float %5547, float %5548, float %5549, float %5782, float %5783, float %5784)  ; Dot3(ax,ay,az,bx,by,bz)
  %5786 = call float @dx.op.unary.f32(i32 7, float %5785)  ; Saturate(value)
  %5787 = fmul fast float %5786, 9.843750e-01
  %5788 = fadd fast float %5787, 7.812500e-03
  %5789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %5788, float %5101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5790 = extractvalue %dx.types.ResRet.f32 %5789, 2
  %5791 = extractvalue %dx.types.ResRet.f32 %5789, 3
  %5792 = fmul fast float %5129, %5134
  %5793 = fadd fast float %5136, %5792
  %5794 = call float @dx.op.unary.f32(i32 7, float %5793)  ; Saturate(value)
  %5795 = fsub fast float %5693, %4847
  %5796 = fsub fast float %5694, %4848
  %5797 = fsub fast float %5695, %4849
  %5798 = call float @dx.op.dot3.f32(i32 55, float %5795, float %5796, float %5797, float %5795, float %5796, float %5797)  ; Dot3(ax,ay,az,bx,by,bz)
  %5799 = call float @dx.op.unary.f32(i32 25, float %5798)  ; Rsqrt(value)
  %5800 = fmul fast float %5795, %5799
  %5801 = fmul fast float %5796, %5799
  %5802 = fmul fast float %5797, %5799
  %5803 = call float @dx.op.dot3.f32(i32 55, float %5782, float %5783, float %5784, float %5800, float %5801, float %5802)  ; Dot3(ax,ay,az,bx,by,bz)
  %5804 = fmul fast float %5803, %5803
  %5805 = call float @dx.op.unary.f32(i32 6, float %5786)  ; FAbs(value)
  %5806 = call float @dx.op.binary.f32(i32 35, float %5794, float 0x3F847AE140000000)  ; FMax(a,b)
  %5807 = fmul fast float %5806, %5806
  %5808 = fmul fast float %5807, %5807
  %5809 = fsub fast float 1.000000e+00, %5808
  %5810 = fmul fast float %5808, %5804
  %5811 = fsub fast float 1.000000e+00, %5804
  %5812 = fadd fast float %5811, %5810
  %5813 = bitcast float %5808 to i32
  %5814 = sitofp i32 %5813 to float
  %5815 = fmul fast float %5814, 0x3FE7F73180000000
  %5816 = fadd fast float %5815, 0x41AFE27C40000000
  %5817 = fptosi float %5816 to i32
  %5818 = bitcast i32 %5817 to float
  br i1 %5540, label %5819, label %5873

; <label>:5819                                    ; preds = %5653
  %5820 = fmul fast float %5812, %5812
  %5821 = fmul fast float %5711, %5809
  %5822 = fadd fast float %5821, %5808
  %5823 = bitcast float %5822 to i32
  %5824 = ashr i32 %5823, 1
  %5825 = add nsw i32 %5824, 532487669
  %5826 = bitcast i32 %5825 to float
  %5827 = fadd fast float %5826, %4841
  %5828 = fmul fast float %5820, %5827
  %5829 = fmul fast float %5805, %5805
  %5830 = fmul fast float %5829, %5809
  %5831 = fadd fast float %5830, %5808
  %5832 = bitcast float %5831 to i32
  %5833 = ashr i32 %5832, 1
  %5834 = add nsw i32 %5833, 532487669
  %5835 = bitcast i32 %5834 to float
  %5836 = fadd fast float %5835, %5805
  %5837 = fmul fast float %5828, %5836
  %5838 = fdiv fast float 1.000000e+00, %5837
  %5839 = fmul fast float %5808, %5838
  %5840 = fmul fast float %5839, %5818
  %5841 = fadd fast float %5818, %5741
  %5842 = bitcast float %5841 to i32
  %5843 = sub nsw i32 2129859010, %5842
  %5844 = bitcast i32 %5843 to float
  %5845 = fmul fast float %5840, %5844
  %5846 = fmul fast float %5790, %4831
  %5847 = fadd fast float %5846, %5791
  %5848 = fmul fast float %5790, %4832
  %5849 = fadd fast float %5848, %5791
  %5850 = fmul fast float %5790, %4839
  %5851 = fadd fast float %5850, %5791
  %5852 = call float @dx.op.binary.f32(i32 35, float %5849, float %5851)  ; FMax(a,b)
  %5853 = call float @dx.op.binary.f32(i32 35, float %5847, float %5852)  ; FMax(a,b)
  %5854 = fsub fast float 1.000000e+00, %5853
  %5855 = fmul fast float %5786, %5554
  %5856 = fmul fast float %5140, %5781
  %5857 = call float @dx.op.unary.f32(i32 21, float %5856)  ; Exp(value)
  %5858 = call float @dx.op.unary.f32(i32 7, float %5857)  ; Saturate(value)
  %5859 = select i1 %5139, float %5858, float 0.000000e+00
  %5860 = fmul fast float %5150, %5781
  %5861 = call float @dx.op.unary.f32(i32 21, float %5860)  ; Exp(value)
  %5862 = call float @dx.op.unary.f32(i32 7, float %5861)  ; Saturate(value)
  %5863 = select i1 %5149, float %5862, float 0.000000e+00
  %5864 = fmul fast float %5160, %5781
  %5865 = call float @dx.op.unary.f32(i32 21, float %5864)  ; Exp(value)
  %5866 = call float @dx.op.unary.f32(i32 7, float %5865)  ; Saturate(value)
  %5867 = select i1 %5159, float %5866, float 0.000000e+00
  %5868 = fmul fast float %5854, %5855
  %5869 = fmul fast float %5868, %5845
  %5870 = fmul fast float %5869, %5867
  %5871 = fmul fast float %5869, %5863
  %5872 = fmul fast float %5869, %5859
  br label %5873

; <label>:5873                                    ; preds = %5819, %5653
  %5874 = phi float [ %5870, %5819 ], [ 0.000000e+00, %5653 ]
  %5875 = phi float [ %5871, %5819 ], [ 0.000000e+00, %5653 ]
  %5876 = phi float [ %5872, %5819 ], [ 0.000000e+00, %5653 ]
  %5877 = fmul fast float %5763, %5688
  %5878 = fmul fast float %5877, %5748
  %5879 = fmul fast float %5764, %5688
  %5880 = fmul fast float %5879, %5748
  %5881 = fmul fast float %5765, %5688
  %5882 = fmul fast float %5881, %5748
  %5883 = fadd fast float %5874, %5878
  %5884 = fadd fast float %5875, %5880
  %5885 = fadd fast float %5876, %5882
  %5886 = fmul fast float %5670, %996
  %5887 = fmul fast float %5886, %5688
  %5888 = fmul fast float %5887, %5779
  %5889 = fmul fast float %5671, %996
  %5890 = fmul fast float %5889, %5688
  %5891 = fmul fast float %5890, %5779
  %5892 = fmul fast float %5672, %996
  %5893 = fmul fast float %5892, %5688
  %5894 = fmul fast float %5893, %5779
  %5895 = fadd fast float %5888, %5505
  %5896 = fadd fast float %5891, %5506
  %5897 = fadd fast float %5894, %5507
  %5898 = fmul fast float %5886, %5883
  %5899 = fmul fast float %5889, %5884
  %5900 = fmul fast float %5892, %5885
  %5901 = fadd fast float %5898, %5502
  %5902 = fadd fast float %5899, %5503
  %5903 = fadd fast float %5900, %5504
  br label %5584

; <label>:5904                                    ; preds = %5584
  br label %5905

; <label>:5905                                    ; preds = %5904, %5468
  %5906 = phi float [ %5470, %5468 ], [ %5585, %5904 ]
  %5907 = phi float [ %5471, %5468 ], [ %5586, %5904 ]
  %5908 = phi float [ %5472, %5468 ], [ %5587, %5904 ]
  %5909 = phi float [ %5473, %5468 ], [ %5588, %5904 ]
  %5910 = phi float [ %5474, %5468 ], [ %5589, %5904 ]
  %5911 = phi float [ %5475, %5468 ], [ %5590, %5904 ]
  %5912 = add i32 %5469, 1
  %5913 = icmp ugt i32 %5912, %5465
  br i1 %5913, label %5914, label %5468

; <label>:5914                                    ; preds = %5905
  br label %5915

; <label>:5915                                    ; preds = %5914, %5444, %5434
  %5916 = phi float [ %5435, %5434 ], [ %5435, %5444 ], [ %5906, %5914 ]
  %5917 = phi float [ %5436, %5434 ], [ %5436, %5444 ], [ %5907, %5914 ]
  %5918 = phi float [ %5437, %5434 ], [ %5437, %5444 ], [ %5908, %5914 ]
  %5919 = phi float [ %5438, %5434 ], [ %5438, %5444 ], [ %5909, %5914 ]
  %5920 = phi float [ %5439, %5434 ], [ %5439, %5444 ], [ %5910, %5914 ]
  %5921 = phi float [ %5440, %5434 ], [ %5440, %5444 ], [ %5911, %5914 ]
  %5922 = call float @dx.op.unary.f32(i32 24, float %4828)  ; Sqrt(value)
  %5923 = call float @dx.op.unary.f32(i32 24, float %4829)  ; Sqrt(value)
  %5924 = call float @dx.op.unary.f32(i32 24, float %4830)  ; Sqrt(value)
  %5925 = fmul fast float %5922, %5919
  %5926 = fmul fast float %5923, %5920
  %5927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5928 = extractvalue %dx.types.CBufRet.f32 %5927, 0
  br i1 %174, label %5929, label %5950

; <label>:5929                                    ; preds = %5915
  %5930 = fadd fast float %5921, %4173
  %5931 = fmul fast float %5930, %4171
  %5932 = fsub fast float 1.000000e+00, %4171
  %5933 = call float @dx.op.unary.f32(i32 7, float %5932)  ; Saturate(value)
  %5934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5935 = extractvalue %dx.types.CBufRet.f32 %5934, 3
  %5936 = fmul fast float %5935, %5933
  %5937 = fadd fast float %5936, %5931
  %5938 = fsub fast float 1.000000e+00, %4841
  %5939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5940 = extractvalue %dx.types.CBufRet.f32 %5939, 0
  %5941 = fmul fast float %5940, %5938
  %5942 = fsub fast float %5937, %5941
  %5943 = fadd fast float %5926, %5925
  %5944 = fmul fast float %5928, %5943
  %5945 = extractvalue %dx.types.CBufRet.f32 %5934, 1
  %5946 = fsub fast float %5942, %5945
  %5947 = extractvalue %dx.types.CBufRet.f32 %5934, 2
  %5948 = fmul fast float %5946, %5947
  %5949 = call float @dx.op.unary.f32(i32 7, float %5948)  ; Saturate(value)
  br label %5966

; <label>:5950                                    ; preds = %5915
  %5951 = fmul fast float %5924, %5921
  %5952 = fmul fast float %5928, %5925
  %5953 = fmul fast float %5928, %5926
  %5954 = fmul fast float %5951, %5928
  %5955 = add i32 %32, 356
  %5956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %5955, i32 undef)  ; BufferLoad(srv,index,wot)
  %5957 = extractvalue %dx.types.ResRet.i32 %5956, 0
  %5958 = and i32 %5957, 32
  %5959 = icmp eq i32 %5958, 0
  br i1 %5959, label %5966, label %5960

; <label>:5960                                    ; preds = %5950
  %5961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5962 = extractvalue %dx.types.CBufRet.f32 %5961, 0
  %5963 = fmul fast float %5962, 0x3FE99999A0000000
  %5964 = fadd fast float %5962, %5952
  %5965 = fadd fast float %5963, %5954
  br label %5966

; <label>:5966                                    ; preds = %5960, %5950, %5929
  %5967 = phi float [ %5944, %5929 ], [ %5964, %5960 ], [ %5952, %5950 ]
  %5968 = phi float [ %5949, %5929 ], [ %5953, %5960 ], [ %5953, %5950 ]
  %5969 = phi float [ 1.000000e+00, %5929 ], [ %5965, %5960 ], [ %5954, %5950 ]
  %5970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5971 = extractvalue %dx.types.CBufRet.f32 %5970, 0
  %5972 = fmul fast float %5971, %5917
  %5973 = fmul fast float %5971, %5918
  %5974 = fadd fast float %5917, %5916
  %5975 = select i1 %174, float %5974, float %5916
  %5976 = fmul float %5975, %5971
  %5977 = select i1 %174, float 0.000000e+00, float %5972
  %5978 = select i1 %174, float 0.000000e+00, float %5973
  %5979 = fmul fast float %5967, %5922
  %5980 = fmul fast float %5968, %5923
  %5981 = fmul fast float %5969, %5924
  %5982 = fadd fast float %5976, %5979
  %5983 = fadd fast float %5977, %5980
  %5984 = fadd fast float %5978, %5981
  %5985 = select i1 %174, float %5968, float %5983
  %5986 = select i1 %174, float %5969, float %5984
  %5987 = call float @dx.op.binary.f32(i32 36, float %5982, float 3.225500e+04)  ; FMin(a,b)
  %5988 = call float @dx.op.binary.f32(i32 36, float %5985, float 3.225500e+04)  ; FMin(a,b)
  %5989 = call float @dx.op.binary.f32(i32 36, float %5986, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5987)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5988)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5989)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

