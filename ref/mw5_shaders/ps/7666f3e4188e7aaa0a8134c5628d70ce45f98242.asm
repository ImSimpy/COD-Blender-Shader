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
; WGV_TEXCOORD             0   xyz         8     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        9     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy         10     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       11     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       12     NONE   float   xyz 
; PACKED_TRI_DATA          0   xyzw       13     NONE    uint   x   
; SV_IsFrontFace           0   x          14    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: a379fee89043abaeb12f049e63f73d06
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
; WGV_TEXCOORD             0                 linear       
; WGV_NORMAL               0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
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
;   [160 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          3d      T4     t52,space2     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     u32     2darray      T6     t11,space2     1
;                                   texture     f32     2darray      T7     t10,space2     1
;                                   texture     f32          2d      T8     t69,space2     1
;                                   texture     f32          2d      T9     t37,space2     1
;                                   texture     f32          2d     T10     t58,space2     1
;                                   texture     f32          2d     T11     t59,space2     1
;                                   texture     f32          2d     T12     t60,space2     1
;                                   texture    byte         r/o     T13     t45,space1     1
;                                   texture    byte         r/o     T14     t46,space1     1
;                                   texture    byte         r/o     T15     t47,space1     1
;                                   texture    byte         r/o     T16     t48,space1     1
;                                   texture     f32          2d     T17     t57,space2     1
;                                   texture    byte         r/o     T18     t69,space1     1
;                                   texture    byte         r/o     T19     t10,space1     1
;                                   texture    byte         r/o     T20     t68,space1     1
;                                   texture     f32          2d     T21      t0,space2     1
;                                   texture    byte         r/o     T22     t11,space1     1
;                                   texture    byte         r/o     T23     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 57, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
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
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = icmp ne i32 %27, 0
  %29 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %74 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = fmul fast float %76, %70
  %78 = fmul fast float %76, %71
  %79 = select i1 %28, float 1.000000e+00, float -1.000000e+00
  %80 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %81 = bitcast float %80 to i32
  %82 = ashr i32 %81, 1
  %83 = sub nsw i32 1597250115, %82
  %84 = bitcast i32 %83 to float
  %85 = fmul fast float %62, %79
  %86 = fmul fast float %85, %84
  %87 = fmul fast float %63, %79
  %88 = fmul fast float %87, %84
  %89 = fmul fast float %64, %79
  %90 = fmul fast float %89, %84
  %91 = fmul fast float %63, %60
  %92 = fmul fast float %64, %59
  %93 = fsub fast float %91, %92
  %94 = fmul fast float %64, %58
  %95 = fmul fast float %62, %60
  %96 = fsub fast float %94, %95
  %97 = fmul fast float %62, %59
  %98 = fmul fast float %63, %58
  %99 = fsub fast float %97, %98
  %100 = fmul fast float %93, %61
  %101 = fmul fast float %96, %61
  %102 = fmul fast float %99, %61
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = fcmp fast une float %104, 0.000000e+00
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 3
  %109 = fmul fast float %77, 2.000000e+00
  %110 = fmul fast float %109, %107
  %111 = fmul fast float %78, 2.000000e+00
  %112 = fmul fast float %111, %108
  %113 = fsub fast float 1.000000e+00, %110
  %114 = fsub fast float 1.000000e+00, %112
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %118 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = select i1 %105, float %116, float %120
  %124 = select i1 %105, float %117, float %121
  %125 = select i1 %105, float %118, float %122
  %126 = fmul fast float %123, %113
  %127 = fmul fast float %124, %113
  %128 = fmul fast float %125, %113
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %132 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = select i1 %105, float %130, float %134
  %138 = select i1 %105, float %131, float %135
  %139 = select i1 %105, float %132, float %136
  %140 = fmul fast float %137, %114
  %141 = fmul fast float %138, %114
  %142 = fmul fast float %139, %114
  %143 = fadd fast float %140, %126
  %144 = fadd fast float %141, %127
  %145 = fadd fast float %142, %128
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = select i1 %105, float %147, float %151
  %155 = select i1 %105, float %148, float %152
  %156 = select i1 %105, float %149, float %153
  %157 = fadd fast float %143, %154
  %158 = fadd fast float %144, %155
  %159 = fadd fast float %145, %156
  %160 = fmul fast float %157, %72
  %161 = fmul fast float %158, %72
  %162 = fmul fast float %159, %72
  %163 = add i32 %29, 360
  %164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %163, i32 undef)  ; BufferLoad(srv,index,wot)
  %165 = extractvalue %dx.types.ResRet.i32 %164, 0
  %166 = extractvalue %dx.types.ResRet.i32 %164, 1
  %167 = extractvalue %dx.types.ResRet.i32 %164, 2
  %168 = extractvalue %dx.types.ResRet.i32 %164, 3
  %169 = bitcast i32 %165 to float
  %170 = bitcast i32 %166 to float
  %171 = bitcast i32 %167 to float
  %172 = bitcast i32 %168 to float
  %173 = call float @dx.op.dot3.f32(i32 55, float %86, float %88, float %90, float %86, float %88, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %174 = call float @dx.op.unary.f32(i32 25, float %173)  ; Rsqrt(value)
  %175 = fmul fast float %174, %86
  %176 = fmul fast float %174, %88
  %177 = fmul fast float %174, %90
  %178 = call float @dx.op.dot3.f32(i32 55, float %160, float %161, float %162, float %160, float %161, float %162)  ; Dot3(ax,ay,az,bx,by,bz)
  %179 = call float @dx.op.unary.f32(i32 25, float %178)  ; Rsqrt(value)
  %180 = fmul fast float %179, %160
  %181 = fmul fast float %179, %161
  %182 = fmul fast float %179, %162
  %183 = call float @dx.op.dot3.f32(i32 55, float %180, float %181, float %182, float %175, float %176, float %177)  ; Dot3(ax,ay,az,bx,by,bz)
  %184 = fmul fast float %183, %183
  %185 = fmul fast float %184, %171
  %186 = fadd fast float %185, %172
  %187 = call float @dx.op.unary.f32(i32 7, float %186)  ; Saturate(value)
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 3
  %190 = fmul fast float %189, %178
  %191 = fsub fast float %169, %190
  %192 = fmul fast float %191, %170
  %193 = call float @dx.op.unary.f32(i32 7, float %192)  ; Saturate(value)
  %194 = fmul fast float %193, %187
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 2
  %197 = extractvalue %dx.types.CBufRet.f32 %195, 3
  %198 = fmul fast float %196, %77
  %199 = fmul fast float %197, %78
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = and i32 %201, 114688
  %203 = icmp ne i32 %202, 0
  %204 = select i1 %203, float %198, float 0.000000e+00
  %205 = select i1 %203, float %199, float 0.000000e+00
  %206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %24, float %204, float %205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = fmul fast float %207, 2.550000e+02
  %209 = fptoui float %208 to i32
  %210 = select i1 %203, i32 %209, i32 0
  %211 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.i32 %211, 3
  %213 = and i32 %212, 3
  %214 = icmp ne i32 %213, 0
  %215 = and i32 %212, 4
  %216 = icmp ne i32 %215, 0
  %217 = and i1 %214, %216
  br i1 %217, label %218, label %227

; <label>:218                                     ; preds = %0
  %219 = fmul fast float %108, %78
  %220 = fmul fast float %107, %77
  %221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %23, float %220, float %219, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %222 = extractvalue %dx.types.ResRet.f32 %221, 0
  %223 = fsub fast float 1.000000e+00, %222
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 0
  %226 = fcmp fast olt float %223, %225
  br label %230

; <label>:227                                     ; preds = %0
  %228 = icmp eq i32 %215, 0
  %229 = and i1 %214, %228
  br label %230

; <label>:230                                     ; preds = %227, %218
  %231 = phi i1 [ %226, %218 ], [ %229, %227 ]
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %234 = fmul fast float %233, 0x3FE3C6EF40000000
  %235 = frem fast float %77, 2.560000e+02
  %236 = frem fast float %78, 2.560000e+02
  %237 = fptoui float %235 to i32
  %238 = fptoui float %236 to i32
  %239 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %237, i32 %238, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = fadd fast float %240, %234
  %242 = call float @dx.op.unary.f32(i32 22, float %241)  ; Frc(value)
  %243 = add i32 %29, 156
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = shl i32 %245, 4
  %247 = and i32 %246, 32752
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %245, 7
  %250 = and i32 %249, 32752
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %245, 22
  %253 = shl nuw nsw i32 %252, 5
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = add i32 %29, 216
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 255
  %259 = uitofp i32 %258 to float
  %260 = fmul fast float %259, 0x3F70101020000000
  %261 = lshr i32 %257, 8
  %262 = and i32 %261, 255
  %263 = uitofp i32 %262 to float
  %264 = fmul fast float %263, 0x3F70101020000000
  %265 = lshr i32 %257, 16
  %266 = and i32 %265, 255
  %267 = uitofp i32 %266 to float
  %268 = fmul fast float %267, 0x3F70101020000000
  %269 = add i32 %29, 36
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, 65535
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %271, 16
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = add i32 %29, 288
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 65535
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %278, 16
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = fmul fast float %280, 0x3F50624DE0000000
  %284 = fmul fast float %282, 0x3F50624DE0000000
  %285 = add i32 %29, 172
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = shl i32 %287, 4
  %289 = and i32 %288, 32752
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %287, 7
  %292 = and i32 %291, 32752
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = lshr i32 %287, 22
  %295 = shl nuw nsw i32 %294, 5
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = add i32 %29, 232
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = lshr i32 %299, 8
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = lshr i32 %299, 16
  %308 = and i32 %307, 255
  %309 = uitofp i32 %308 to float
  %310 = fmul fast float %309, 0x3F70101020000000
  %311 = add i32 %29, 52
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 65535
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %313, 16
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = add i32 %29, 304
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 65535
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %320, 16
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = fmul fast float %322, 0x3F50624DE0000000
  %326 = fmul fast float %324, 0x3F50624DE0000000
  %327 = add i32 %29, 188
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = shl i32 %329, 4
  %331 = and i32 %330, 32752
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %329, 7
  %334 = and i32 %333, 32752
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %329, 22
  %337 = shl nuw nsw i32 %336, 5
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = add i32 %29, 248
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = lshr i32 %341, 8
  %346 = and i32 %345, 255
  %347 = uitofp i32 %346 to float
  %348 = fmul fast float %347, 0x3F70101020000000
  %349 = lshr i32 %341, 16
  %350 = and i32 %349, 255
  %351 = uitofp i32 %350 to float
  %352 = fmul fast float %351, 0x3F70101020000000
  %353 = add i32 %29, 68
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 65535
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %355, 16
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = add i32 %29, 320
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 65535
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %362, 16
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = fmul fast float %364, 0x3F50624DE0000000
  %368 = fmul fast float %366, 0x3F50624DE0000000
  %369 = add i32 %29, 204
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = shl i32 %371, 4
  %373 = and i32 %372, 32752
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %371, 7
  %376 = and i32 %375, 32752
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = lshr i32 %371, 22
  %379 = shl nuw nsw i32 %378, 5
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = add i32 %29, 264
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 255
  %385 = uitofp i32 %384 to float
  %386 = fmul fast float %385, 0x3F70101020000000
  %387 = lshr i32 %383, 8
  %388 = and i32 %387, 255
  %389 = uitofp i32 %388 to float
  %390 = fmul fast float %389, 0x3F70101020000000
  %391 = lshr i32 %383, 16
  %392 = and i32 %391, 255
  %393 = uitofp i32 %392 to float
  %394 = fmul fast float %393, 0x3F70101020000000
  %395 = add i32 %29, 84
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = and i32 %397, 65535
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = lshr i32 %397, 16
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = add i32 %29, 336
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 65535
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = lshr i32 %404, 16
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = fmul fast float %406, 0x3F50624DE0000000
  %410 = fmul fast float %408, 0x3F50624DE0000000
  %411 = add i32 %29, 348
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 32
  %415 = icmp eq i32 %414, 0
  %416 = and i32 %413, 64
  %417 = icmp eq i32 %416, 0
  %418 = and i32 %413, 128
  %419 = icmp eq i32 %418, 0
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = and i32 %421, 2
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %437, label %424

; <label>:424                                     ; preds = %230
  %425 = add i32 %29, 520
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = add i32 %427, 0
  %429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %430 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %429, %dx.types.Handle %74, float %65, float %66, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = extractvalue %dx.types.ResRet.f32 %430, 1
  %433 = extractvalue %dx.types.ResRet.f32 %430, 2
  %434 = fmul fast float %431, %67
  %435 = fmul fast float %432, %68
  %436 = fmul fast float %433, %69
  br label %437

; <label>:437                                     ; preds = %424, %230
  %438 = phi float [ %69, %230 ], [ %436, %424 ]
  %439 = phi float [ %68, %230 ], [ %435, %424 ]
  %440 = phi float [ %67, %230 ], [ %434, %424 ]
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 2
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %464, label %445

; <label>:445                                     ; preds = %437
  %446 = add i32 %29, 44
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 1
  %450 = icmp ne i32 %449, 0
  %451 = select i1 %450, float %440, float 1.000000e+00
  %452 = add i32 %29, 60
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = and i32 %454, 1
  %456 = icmp ne i32 %455, 0
  %457 = select i1 %456, float %439, float 1.000000e+00
  %458 = add i32 %29, 76
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = and i32 %460, 1
  %462 = icmp ne i32 %461, 0
  %463 = select i1 %462, float %438, float 1.000000e+00
  br label %464

; <label>:464                                     ; preds = %445, %437
  %465 = phi float [ %438, %437 ], [ %463, %445 ]
  %466 = phi float [ %439, %437 ], [ %457, %445 ]
  %467 = phi float [ %440, %437 ], [ %451, %445 ]
  %468 = lshr i32 %442, 20
  %469 = and i32 %468, 3
  %470 = add nuw nsw i32 %469, 1
  %471 = add i32 %29, 24
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = add i32 %29, 28
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = or i32 %476, %473
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %990, label %479

; <label>:479                                     ; preds = %464
  %480 = and i32 %473, 262144
  %481 = icmp ne i32 %480, 0
  %482 = select i1 %481, float %33, float 1.000000e+00
  %483 = select i1 %481, float %34, float 0.000000e+00
  %484 = select i1 %481, float %35, float 0.000000e+00
  %485 = select i1 %481, float %36, float 1.000000e+00
  %486 = select i1 %481, float %37, float %65
  %487 = select i1 %481, float %38, float %66
  %488 = add i32 %29, 284
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = lshr i32 %490, 16
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = fmul fast float %492, 0x3F50624DE0000000
  %494 = add i32 %29, 88
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = lshr i32 %496, 16
  %498 = and i32 %497, 255
  %499 = lshr i32 %496, 24
  %500 = add i32 %29, 292
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.i32 %501, 0
  %503 = and i32 %502, 65535
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = lshr i32 %502, 16
  %506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %505)  ; LegacyF16ToF32(value)
  %507 = add i32 %29, 32
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = lshr i32 %509, 22
  %511 = shl nuw nsw i32 %510, 5
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = shl i32 %509, 4
  %514 = and i32 %513, 32752
  %515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %514)  ; LegacyF16ToF32(value)
  %516 = lshr i32 %509, 7
  %517 = and i32 %516, 32752
  %518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %517)  ; LegacyF16ToF32(value)
  %519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %520 = extractvalue %dx.types.CBufRet.f32 %519, 3
  %521 = fmul fast float %520, 1.000000e+03
  %522 = fmul fast float %283, %521
  %523 = call float @dx.op.unary.f32(i32 22, float %522)  ; Frc(value)
  %524 = fadd fast float %523, %273
  %525 = fmul fast float %284, %521
  %526 = call float @dx.op.unary.f32(i32 22, float %525)  ; Frc(value)
  %527 = fadd fast float %526, %275
  %528 = fmul fast float %493, %521
  %529 = call float @dx.op.unary.f32(i32 22, float %528)  ; Frc(value)
  %530 = fmul fast float %529, 0x401921FB60000000
  %531 = fadd fast float %530, %512
  %532 = call float @dx.op.unary.f32(i32 13, float %531)  ; Sin(value)
  %533 = call float @dx.op.unary.f32(i32 12, float %531)  ; Cos(value)
  %534 = fsub fast float -0.000000e+00, %532
  %535 = fadd fast float %486, -5.000000e-01
  %536 = fadd fast float %487, -5.000000e-01
  %537 = fmul fast float %504, %535
  %538 = fmul fast float %506, %536
  %539 = fadd fast float %537, 5.000000e-01
  %540 = fadd fast float %538, 5.000000e-01
  %541 = fmul fast float %515, %539
  %542 = fmul fast float %518, %540
  %543 = fmul fast float %533, %541
  %544 = call float @dx.op.tertiary.f32(i32 46, float %534, float %542, float %543)  ; FMad(a,b,c)
  %545 = fmul fast float %532, %541
  %546 = call float @dx.op.tertiary.f32(i32 46, float %533, float %542, float %545)  ; FMad(a,b,c)
  %547 = fadd fast float %524, %544
  %548 = fadd fast float %527, %546
  %549 = icmp ugt i32 %498, 1
  %550 = icmp ugt i32 %496, 33554431
  %551 = or i1 %550, %549
  br i1 %551, label %552, label %577

; <label>:552                                     ; preds = %479
  %553 = add i32 %29, 228
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = lshr i32 %555, 16
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = fmul fast float %520, %557
  %559 = call float @dx.op.unary.f32(i32 22, float %558)  ; Frc(value)
  %560 = mul nuw nsw i32 %498, %499
  %561 = uitofp i32 %560 to float
  %562 = fmul fast float %559, %561
  %563 = call float @dx.op.unary.f32(i32 27, float %562)  ; Round_ni(value)
  %564 = fptoui float %563 to i32
  %565 = urem i32 %564, %498
  %566 = udiv i32 %564, %499
  %567 = call float @dx.op.unary.f32(i32 22, float %547)  ; Frc(value)
  %568 = call float @dx.op.unary.f32(i32 22, float %548)  ; Frc(value)
  %569 = uitofp i32 %565 to float
  %570 = uitofp i32 %566 to float
  %571 = fadd fast float %567, %569
  %572 = fadd fast float %568, %570
  %573 = uitofp i32 %498 to float
  %574 = uitofp i32 %499 to float
  %575 = fdiv fast float %571, %573
  %576 = fdiv fast float %572, %574
  br label %577

; <label>:577                                     ; preds = %552, %479
  %578 = phi float [ %575, %552 ], [ %547, %479 ]
  %579 = phi float [ %576, %552 ], [ %548, %479 ]
  %580 = and i32 %473, 16
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %778, label %582

; <label>:582                                     ; preds = %577
  %583 = add i32 %29, 408
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = add i32 %585, 0
  %587 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %586, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %588 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %587, %dx.types.Handle %73, float %578, float %579, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 0
  %590 = extractvalue %dx.types.ResRet.f32 %588, 1
  %591 = extractvalue %dx.types.ResRet.f32 %588, 2
  %592 = extractvalue %dx.types.ResRet.f32 %588, 3
  %593 = and i32 %496, 255
  %594 = uitofp i32 %593 to float
  %595 = lshr i32 %496, 8
  %596 = and i32 %595, 255
  %597 = uitofp i32 %596 to float
  %598 = fmul fast float %592, %594
  %599 = fadd fast float %598, %597
  %600 = fmul fast float %599, 0x3F70101000000000
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = and i32 %602, 512
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %613, label %605

; <label>:605                                     ; preds = %582
  %606 = add i32 %29, 488
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = add i32 %608, 0
  %610 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %609, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %611 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %610, %dx.types.Handle %74, float %578, float %579, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  br label %613

; <label>:613                                     ; preds = %605, %582
  %614 = phi float [ %612, %605 ], [ 1.000000e+00, %582 ]
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = and i32 %616, 33554432
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %725, label %619

; <label>:619                                     ; preds = %613
  %620 = add i32 %29, 224
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = and i32 %622, 65535
  %624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %623)  ; LegacyF16ToF32(value)
  %625 = lshr i32 %622, 16
  %626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %625)  ; LegacyF16ToF32(value)
  %627 = add i32 %29, 228
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = and i32 %629, 65535
  %631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %630)  ; LegacyF16ToF32(value)
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = lshr i32 %633, 24
  %635 = uitofp i32 %634 to float
  %636 = fmul fast float %635, 0x3F70101020000000
  %637 = and i32 %633, 255
  %638 = uitofp i32 %637 to float
  %639 = fmul fast float %638, 0x3F70101020000000
  %640 = lshr i32 %633, 8
  %641 = and i32 %640, 255
  %642 = uitofp i32 %641 to float
  %643 = fmul fast float %642, 0x3F70101020000000
  %644 = lshr i32 %633, 16
  %645 = and i32 %644, 255
  %646 = uitofp i32 %645 to float
  %647 = fmul fast float %646, 0x3F70101020000000
  %648 = add i32 %29, 220
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %648, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = lshr i32 %650, 24
  %652 = uitofp i32 %651 to float
  %653 = fmul fast float %652, 0x3F70101020000000
  %654 = and i32 %650, 255
  %655 = uitofp i32 %654 to float
  %656 = fmul fast float %655, 0x3F70101020000000
  %657 = lshr i32 %650, 8
  %658 = and i32 %657, 255
  %659 = uitofp i32 %658 to float
  %660 = fmul fast float %659, 0x3F70101020000000
  %661 = lshr i32 %650, 16
  %662 = and i32 %661, 255
  %663 = uitofp i32 %662 to float
  %664 = fmul fast float %663, 0x3F70101020000000
  %665 = bitcast float %589 to i32
  %666 = ashr i32 %665, 1
  %667 = sub nsw i32 1597463174, %666
  %668 = bitcast i32 %667 to float
  %669 = fmul fast float %589, 5.000000e-01
  %670 = fmul fast float %668, %668
  %671 = fmul fast float %670, %669
  %672 = fsub fast float 1.500000e+00, %671
  %673 = fmul fast float %668, %589
  %674 = fmul fast float %673, %672
  %675 = bitcast float %590 to i32
  %676 = ashr i32 %675, 1
  %677 = sub nsw i32 1597463174, %676
  %678 = bitcast i32 %677 to float
  %679 = fmul fast float %590, 5.000000e-01
  %680 = fmul fast float %678, %678
  %681 = fmul fast float %680, %679
  %682 = fsub fast float 1.500000e+00, %681
  %683 = fmul fast float %678, %590
  %684 = fmul fast float %683, %682
  %685 = bitcast float %591 to i32
  %686 = ashr i32 %685, 1
  %687 = sub nsw i32 1597463174, %686
  %688 = bitcast i32 %687 to float
  %689 = fmul fast float %591, 5.000000e-01
  %690 = fmul fast float %688, %688
  %691 = fmul fast float %690, %689
  %692 = fsub fast float 1.500000e+00, %691
  %693 = fmul fast float %688, %591
  %694 = fmul fast float %693, %692
  %695 = fsub fast float %674, %656
  %696 = fsub fast float %684, %660
  %697 = fsub fast float %694, %664
  %698 = fmul fast float %695, %624
  %699 = fmul fast float %696, %626
  %700 = fmul fast float %697, %631
  %701 = fadd fast float %698, %639
  %702 = fadd fast float %699, %643
  %703 = fadd fast float %700, %647
  %704 = call float @dx.op.unary.f32(i32 7, float %701)  ; Saturate(value)
  %705 = call float @dx.op.unary.f32(i32 7, float %702)  ; Saturate(value)
  %706 = call float @dx.op.unary.f32(i32 7, float %703)  ; Saturate(value)
  %707 = fmul fast float %704, %704
  %708 = fmul fast float %705, %705
  %709 = fmul fast float %706, %706
  %710 = fsub fast float %707, %589
  %711 = fsub fast float %708, %590
  %712 = fsub fast float %709, %591
  %713 = fmul fast float %710, %614
  %714 = fmul fast float %711, %614
  %715 = fmul fast float %712, %614
  %716 = fadd fast float %713, %589
  %717 = fadd fast float %714, %590
  %718 = fadd fast float %715, %591
  %719 = fadd fast float %636, %600
  %720 = fsub fast float %719, %653
  %721 = call float @dx.op.unary.f32(i32 7, float %720)  ; Saturate(value)
  %722 = fsub fast float %721, %600
  %723 = fmul fast float %722, %614
  %724 = fadd fast float %723, %600
  br label %778

; <label>:725                                     ; preds = %613
  %726 = and i32 %616, 134217728
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %762, label %728

; <label>:728                                     ; preds = %725
  %729 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %730 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %731 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %732 = fadd fast float %729, -5.000000e-01
  %733 = fadd fast float %730, -5.000000e-01
  %734 = fadd fast float %731, -5.000000e-01
  %735 = fmul fast float %732, %614
  %736 = fmul fast float %733, %614
  %737 = fmul fast float %734, %614
  %738 = fadd fast float %735, 5.000000e-01
  %739 = fadd fast float %736, 5.000000e-01
  %740 = fadd fast float %737, 5.000000e-01
  %741 = call float @dx.op.unary.f32(i32 24, float %589)  ; Sqrt(value)
  %742 = call float @dx.op.unary.f32(i32 24, float %590)  ; Sqrt(value)
  %743 = call float @dx.op.unary.f32(i32 24, float %591)  ; Sqrt(value)
  %744 = fmul fast float %738, 2.000000e+00
  %745 = fsub fast float 1.000000e+00, %744
  %746 = fmul fast float %745, %741
  %747 = fadd fast float %746, %744
  %748 = fmul fast float %747, %741
  %749 = fmul fast float %739, 2.000000e+00
  %750 = fsub fast float 1.000000e+00, %749
  %751 = fmul fast float %750, %742
  %752 = fadd fast float %751, %749
  %753 = fmul fast float %752, %742
  %754 = fmul fast float %740, 2.000000e+00
  %755 = fsub fast float 1.000000e+00, %754
  %756 = fmul fast float %755, %743
  %757 = fadd fast float %756, %754
  %758 = fmul fast float %757, %743
  %759 = fmul fast float %748, %748
  %760 = fmul fast float %753, %753
  %761 = fmul fast float %758, %758
  br label %778

; <label>:762                                     ; preds = %725
  %763 = fmul fast float %260, %260
  %764 = fmul fast float %264, %264
  %765 = fmul fast float %268, %268
  %766 = fadd fast float %763, -1.000000e+00
  %767 = fadd fast float %764, -1.000000e+00
  %768 = fadd fast float %765, -1.000000e+00
  %769 = fmul fast float %614, %766
  %770 = fmul fast float %614, %767
  %771 = fmul fast float %614, %768
  %772 = fadd fast float %769, 1.000000e+00
  %773 = fadd fast float %770, 1.000000e+00
  %774 = fadd fast float %771, 1.000000e+00
  %775 = fmul fast float %772, %589
  %776 = fmul fast float %773, %590
  %777 = fmul fast float %774, %591
  br label %778

; <label>:778                                     ; preds = %762, %728, %619, %577
  %779 = phi float [ %724, %619 ], [ %600, %728 ], [ %600, %762 ], [ 0x3FA23C0BE0000000, %577 ]
  %780 = phi float [ %716, %619 ], [ %759, %728 ], [ %775, %762 ], [ 1.000000e+00, %577 ]
  %781 = phi float [ %717, %619 ], [ %760, %728 ], [ %776, %762 ], [ 1.000000e+00, %577 ]
  %782 = phi float [ %718, %619 ], [ %761, %728 ], [ %777, %762 ], [ 1.000000e+00, %577 ]
  %783 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %784 = extractvalue %dx.types.CBufRet.i32 %783, 1
  %785 = and i32 %784, 1
  %786 = icmp ne i32 %785, 0
  %787 = add i32 %29, 356
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = and i32 %789, 32
  %791 = icmp ne i32 %790, 0
  %792 = and i1 %786, %791
  %793 = select i1 %792, float 1.000000e+00, float %780
  %794 = select i1 %792, float 0x3FD3333340000000, float %781
  %795 = select i1 %792, float 0x3FD3333340000000, float %782
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = and i32 %797, 32
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %872, label %800

; <label>:800                                     ; preds = %778
  %801 = add i32 %29, 92
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %801, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = add i32 %29, 424
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %804, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = add i32 %806, 0
  %808 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %807, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %809 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %808, %dx.types.Handle %73, float %578, float %579, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %810 = extractvalue %dx.types.ResRet.f32 %809, 0
  %811 = extractvalue %dx.types.ResRet.f32 %809, 1
  %812 = extractvalue %dx.types.ResRet.f32 %809, 2
  %813 = extractvalue %dx.types.ResRet.f32 %809, 3
  %814 = and i32 %803, 255
  %815 = uitofp i32 %814 to float
  %816 = lshr i32 %803, 8
  %817 = and i32 %816, 255
  %818 = uitofp i32 %817 to float
  %819 = lshr i32 %803, 16
  %820 = and i32 %819, 255
  %821 = uitofp i32 %820 to float
  %822 = fmul fast float %821, 0x3F70101000000000
  %823 = fmul fast float %810, %815
  %824 = fadd fast float %823, %818
  %825 = fmul fast float %824, 0x3F70101000000000
  %826 = fadd fast float %811, -5.000000e-01
  %827 = fadd fast float %813, -5.000000e-01
  %828 = fmul fast float %826, %822
  %829 = fmul fast float %827, %822
  %830 = fadd fast float %828, 5.000000e-01
  %831 = fadd fast float %829, 5.000000e-01
  %832 = fmul fast float %830, 2.000000e+00
  %833 = fadd fast float %832, -1.000000e+00
  %834 = fmul fast float %831, 2.000000e+00
  %835 = fadd fast float %834, -1.000000e+00
  %836 = fadd fast float %833, %835
  %837 = fmul fast float %836, 5.000000e-01
  %838 = fsub fast float %833, %835
  %839 = fmul fast float %838, 5.000000e-01
  %840 = call float @dx.op.unary.f32(i32 6, float %837)  ; FAbs(value)
  %841 = fsub fast float 1.000000e+00, %840
  %842 = call float @dx.op.unary.f32(i32 6, float %839)  ; FAbs(value)
  %843 = fsub fast float %841, %842
  %844 = call float @dx.op.dot3.f32(i32 55, float %837, float %839, float %843, float %837, float %839, float %843)  ; Dot3(ax,ay,az,bx,by,bz)
  %845 = call float @dx.op.unary.f32(i32 25, float %844)  ; Rsqrt(value)
  %846 = fmul fast float %837, %845
  %847 = fmul fast float %839, %845
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = and i32 %849, 67108864
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %868, label %852

; <label>:852                                     ; preds = %800
  %853 = add i32 %29, 280
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = and i32 %855, 65535
  %857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %856)  ; LegacyF16ToF32(value)
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = and i32 %859, 65535
  %861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %860)  ; LegacyF16ToF32(value)
  %862 = lshr i32 %855, 16
  %863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %862)  ; LegacyF16ToF32(value)
  %864 = fsub fast float %825, %863
  %865 = fmul fast float %864, %857
  %866 = fadd fast float %865, %861
  %867 = call float @dx.op.unary.f32(i32 7, float %866)  ; Saturate(value)
  br label %868

; <label>:868                                     ; preds = %852, %800
  %869 = phi float [ %867, %852 ], [ %825, %800 ]
  %870 = call float @dx.op.dot2.f32(i32 54, float %846, float %847, float %482, float %483)  ; Dot2(ax,ay,bx,by)
  %871 = call float @dx.op.dot2.f32(i32 54, float %846, float %847, float %484, float %485)  ; Dot2(ax,ay,bx,by)
  br label %872

; <label>:872                                     ; preds = %868, %778
  %873 = phi float [ %869, %868 ], [ 0x3FD6666660000000, %778 ]
  %874 = phi float [ %870, %868 ], [ 0.000000e+00, %778 ]
  %875 = phi float [ %871, %868 ], [ 0.000000e+00, %778 ]
  %876 = phi float [ %812, %868 ], [ 1.000000e+00, %778 ]
  %877 = add i32 %29, 160
  %878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %877, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.i32 %878, 0
  %880 = lshr i32 %879, 22
  %881 = shl nuw nsw i32 %880, 5
  %882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %881)  ; LegacyF16ToF32(value)
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = and i32 %884, 64
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %920, label %887

; <label>:887                                     ; preds = %872
  %888 = add i32 %29, 440
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = add i32 %890, 0
  %892 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %891, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.i32 %893, 0
  %895 = and i32 %894, 131072
  %896 = icmp eq i32 %895, 0
  %897 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %892, %dx.types.Handle %73, float %578, float %579, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %898 = extractvalue %dx.types.ResRet.f32 %897, 0
  %899 = extractvalue %dx.types.ResRet.f32 %897, 1
  %900 = extractvalue %dx.types.ResRet.f32 %897, 2
  %901 = fmul fast float %898, %248
  %902 = fmul fast float %899, %251
  %903 = fmul fast float %900, %254
  br i1 %896, label %910, label %904

; <label>:904                                     ; preds = %887
  %905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.f32 %905, 0
  %907 = fmul fast float %906, %901
  %908 = fmul fast float %906, %902
  %909 = fmul fast float %906, %903
  br label %910

; <label>:910                                     ; preds = %904, %887
  %911 = phi float [ %907, %904 ], [ %901, %887 ]
  %912 = phi float [ %908, %904 ], [ %902, %887 ]
  %913 = phi float [ %909, %904 ], [ %903, %887 ]
  %914 = fmul fast float %911, %882
  %915 = select i1 %231, float %914, float %911
  %916 = call float @dx.op.dot3.f32(i32 55, float %915, float %912, float %913, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %917 = select i1 %231, float 0.000000e+00, float %911
  %918 = select i1 %231, float %916, float %912
  %919 = select i1 %231, float 0.000000e+00, float %913
  br label %920

; <label>:920                                     ; preds = %910, %872
  %921 = phi float [ %917, %910 ], [ 0.000000e+00, %872 ]
  %922 = phi float [ %918, %910 ], [ 0.000000e+00, %872 ]
  %923 = phi float [ %919, %910 ], [ 0.000000e+00, %872 ]
  %924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.i32 %924, 0
  %926 = and i32 %925, 10240
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %972, label %928

; <label>:928                                     ; preds = %920
  %929 = add i32 %29, 504
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = add i32 %931, 0
  %933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %932, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %934 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %933, %dx.types.Handle %74, float %578, float %579, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %935 = extractvalue %dx.types.ResRet.f32 %934, 1
  %936 = extractvalue %dx.types.ResRet.f32 %934, 3
  %937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %938 = extractvalue %dx.types.ResRet.i32 %937, 0
  %939 = and i32 %938, 1048576
  %940 = icmp ne i32 %939, 0
  %941 = and i32 %938, 8192
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %958, label %943

; <label>:943                                     ; preds = %928
  %944 = extractvalue %dx.types.ResRet.f32 %934, 2
  %945 = select i1 %940, float %944, float %935
  %946 = extractvalue %dx.types.ResRet.f32 %934, 0
  %947 = select i1 %940, float %946, float %935
  %948 = add i32 %29, 96
  %949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %948, i32 undef)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.i32 %949, 0
  %951 = lshr i32 %950, 16
  %952 = and i32 %951, 255
  %953 = uitofp i32 %952 to float
  %954 = fmul fast float %953, 0x3F80101020000000
  %955 = fmul fast float %954, %947
  %956 = fmul fast float %954, %935
  %957 = fmul fast float %954, %945
  br label %958

; <label>:958                                     ; preds = %943, %928
  %959 = phi float [ %955, %943 ], [ 0.000000e+00, %928 ]
  %960 = phi float [ %956, %943 ], [ 0.000000e+00, %928 ]
  %961 = phi float [ %957, %943 ], [ 0.000000e+00, %928 ]
  %962 = and i32 %938, 2048
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %972, label %964

; <label>:964                                     ; preds = %958
  %965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %877, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.i32 %965, 0
  %967 = shl i32 %966, 4
  %968 = and i32 %967, 32752
  %969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %968)  ; LegacyF16ToF32(value)
  %970 = fmul fast float %969, %936
  %971 = call float @dx.op.binary.f32(i32 35, float %970, float 0x3F70101020000000)  ; FMax(a,b)
  br label %972

; <label>:972                                     ; preds = %964, %958, %920
  %973 = phi float [ %959, %964 ], [ %959, %958 ], [ 0.000000e+00, %920 ]
  %974 = phi float [ %960, %964 ], [ %960, %958 ], [ 0.000000e+00, %920 ]
  %975 = phi float [ %961, %964 ], [ %961, %958 ], [ 0.000000e+00, %920 ]
  %976 = phi float [ %971, %964 ], [ 0x3F70101020000000, %958 ], [ 0x3F70101020000000, %920 ]
  %977 = add i32 %29, 96
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = and i32 %979, 255
  %981 = uitofp i32 %980 to float
  %982 = lshr i32 %979, 8
  %983 = and i32 %982, 255
  %984 = uitofp i32 %983 to float
  %985 = call float @dx.op.dot3.f32(i32 55, float %793, float %794, float %795, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %986 = fmul fast float %984, %985
  %987 = fadd fast float %986, %981
  %988 = fmul fast float %987, 0x3F70101020000000
  %989 = call float @dx.op.unary.f32(i32 7, float %988)  ; Saturate(value)
  br label %990

; <label>:990                                     ; preds = %972, %464
  %991 = phi float [ 0.000000e+00, %464 ], [ %874, %972 ]
  %992 = phi float [ 0.000000e+00, %464 ], [ %875, %972 ]
  %993 = phi float [ 0.000000e+00, %464 ], [ %793, %972 ]
  %994 = phi float [ 0.000000e+00, %464 ], [ %794, %972 ]
  %995 = phi float [ 0.000000e+00, %464 ], [ %795, %972 ]
  %996 = phi float [ 0.000000e+00, %464 ], [ %973, %972 ]
  %997 = phi float [ 0.000000e+00, %464 ], [ %974, %972 ]
  %998 = phi float [ 0.000000e+00, %464 ], [ %975, %972 ]
  %999 = phi float [ 0.000000e+00, %464 ], [ %921, %972 ]
  %1000 = phi float [ 0.000000e+00, %464 ], [ %922, %972 ]
  %1001 = phi float [ 0.000000e+00, %464 ], [ %923, %972 ]
  %1002 = phi float [ 0.000000e+00, %464 ], [ %779, %972 ]
  %1003 = phi float [ 0.000000e+00, %464 ], [ 1.000000e+00, %972 ]
  %1004 = phi float [ 0.000000e+00, %464 ], [ %873, %972 ]
  %1005 = phi float [ 0.000000e+00, %464 ], [ %876, %972 ]
  %1006 = phi float [ 0.000000e+00, %464 ], [ %976, %972 ]
  %1007 = phi float [ 0.000000e+00, %464 ], [ %989, %972 ]
  br i1 %415, label %1821, label %1008

; <label>:1008                                    ; preds = %990
  %1009 = icmp ult i32 %470, 2
  %1010 = add i32 %29, 40
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = add i32 %29, 44
  %1014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1013, i32 undef)  ; BufferLoad(srv,index,wot)
  %1015 = extractvalue %dx.types.ResRet.i32 %1014, 0
  %1016 = or i32 %1015, %1012
  %1017 = icmp eq i32 %1016, 0
  br i1 %1017, label %1821, label %1018

; <label>:1018                                    ; preds = %1008
  %1019 = and i32 %1012, 262144
  %1020 = icmp ne i32 %1019, 0
  %1021 = select i1 %1020, float %33, float 1.000000e+00
  %1022 = select i1 %1020, float %34, float 0.000000e+00
  %1023 = select i1 %1020, float %35, float 0.000000e+00
  %1024 = select i1 %1020, float %36, float 1.000000e+00
  %1025 = select i1 %1020, float %37, float %65
  %1026 = select i1 %1020, float %38, float %66
  %1027 = add i32 %29, 300
  %1028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.i32 %1028, 0
  %1030 = lshr i32 %1029, 16
  %1031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1030)  ; LegacyF16ToF32(value)
  %1032 = fmul fast float %1031, 0x3F50624DE0000000
  %1033 = add i32 %29, 104
  %1034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.i32 %1034, 0
  %1036 = lshr i32 %1035, 16
  %1037 = and i32 %1036, 255
  %1038 = lshr i32 %1035, 24
  %1039 = add i32 %29, 308
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = and i32 %1041, 65535
  %1043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1042)  ; LegacyF16ToF32(value)
  %1044 = lshr i32 %1041, 16
  %1045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1044)  ; LegacyF16ToF32(value)
  %1046 = add i32 %29, 48
  %1047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.i32 %1047, 0
  %1049 = lshr i32 %1048, 22
  %1050 = shl nuw nsw i32 %1049, 5
  %1051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1050)  ; LegacyF16ToF32(value)
  %1052 = shl i32 %1048, 4
  %1053 = and i32 %1052, 32752
  %1054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1053)  ; LegacyF16ToF32(value)
  %1055 = lshr i32 %1048, 7
  %1056 = and i32 %1055, 32752
  %1057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1056)  ; LegacyF16ToF32(value)
  %1058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.f32 %1058, 3
  %1060 = fmul fast float %1059, 1.000000e+03
  %1061 = fmul fast float %325, %1060
  %1062 = call float @dx.op.unary.f32(i32 22, float %1061)  ; Frc(value)
  %1063 = fadd fast float %1062, %315
  %1064 = fmul fast float %326, %1060
  %1065 = call float @dx.op.unary.f32(i32 22, float %1064)  ; Frc(value)
  %1066 = fadd fast float %1065, %317
  %1067 = fmul fast float %1032, %1060
  %1068 = call float @dx.op.unary.f32(i32 22, float %1067)  ; Frc(value)
  %1069 = fmul fast float %1068, 0x401921FB60000000
  %1070 = fadd fast float %1069, %1051
  %1071 = call float @dx.op.unary.f32(i32 13, float %1070)  ; Sin(value)
  %1072 = call float @dx.op.unary.f32(i32 12, float %1070)  ; Cos(value)
  %1073 = fsub fast float -0.000000e+00, %1071
  %1074 = fadd fast float %1025, -5.000000e-01
  %1075 = fadd fast float %1026, -5.000000e-01
  %1076 = fmul fast float %1043, %1074
  %1077 = fmul fast float %1045, %1075
  %1078 = fadd fast float %1076, 5.000000e-01
  %1079 = fadd fast float %1077, 5.000000e-01
  %1080 = fmul fast float %1054, %1078
  %1081 = fmul fast float %1057, %1079
  %1082 = fmul fast float %1072, %1080
  %1083 = call float @dx.op.tertiary.f32(i32 46, float %1073, float %1081, float %1082)  ; FMad(a,b,c)
  %1084 = fmul fast float %1071, %1080
  %1085 = call float @dx.op.tertiary.f32(i32 46, float %1072, float %1081, float %1084)  ; FMad(a,b,c)
  %1086 = fadd fast float %1063, %1083
  %1087 = fadd fast float %1066, %1085
  %1088 = icmp ugt i32 %1037, 1
  %1089 = icmp ugt i32 %1035, 33554431
  %1090 = or i1 %1089, %1088
  br i1 %1090, label %1091, label %1116

; <label>:1091                                    ; preds = %1018
  %1092 = add i32 %29, 244
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = lshr i32 %1094, 16
  %1096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1095)  ; LegacyF16ToF32(value)
  %1097 = fmul fast float %1059, %1096
  %1098 = call float @dx.op.unary.f32(i32 22, float %1097)  ; Frc(value)
  %1099 = mul nuw nsw i32 %1037, %1038
  %1100 = uitofp i32 %1099 to float
  %1101 = fmul fast float %1098, %1100
  %1102 = call float @dx.op.unary.f32(i32 27, float %1101)  ; Round_ni(value)
  %1103 = fptoui float %1102 to i32
  %1104 = urem i32 %1103, %1037
  %1105 = udiv i32 %1103, %1038
  %1106 = call float @dx.op.unary.f32(i32 22, float %1086)  ; Frc(value)
  %1107 = call float @dx.op.unary.f32(i32 22, float %1087)  ; Frc(value)
  %1108 = uitofp i32 %1104 to float
  %1109 = uitofp i32 %1105 to float
  %1110 = fadd fast float %1106, %1108
  %1111 = fadd fast float %1107, %1109
  %1112 = uitofp i32 %1037 to float
  %1113 = uitofp i32 %1038 to float
  %1114 = fdiv fast float %1110, %1112
  %1115 = fdiv fast float %1111, %1113
  br label %1116

; <label>:1116                                    ; preds = %1091, %1018
  %1117 = phi float [ %1114, %1091 ], [ %1086, %1018 ]
  %1118 = phi float [ %1115, %1091 ], [ %1087, %1018 ]
  %1119 = and i32 %1012, 256
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1167, label %1121

; <label>:1121                                    ; preds = %1116
  %1122 = add i32 %29, 476
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1122, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = add i32 %1124, 0
  %1126 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1125, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1127 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1126, %dx.types.Handle %74, float %1117, float %1118, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1128 = extractvalue %dx.types.ResRet.f32 %1127, 0
  %1129 = add i32 %29, 116
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = shl i32 %1131, 4
  %1133 = and i32 %1132, 32752
  %1134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1133)  ; LegacyF16ToF32(value)
  %1135 = lshr i32 %1131, 7
  %1136 = and i32 %1135, 32752
  %1137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1136)  ; LegacyF16ToF32(value)
  %1138 = fsub fast float 1.000000e+00, %467
  %1139 = call float @dx.op.binary.f32(i32 35, float %1138, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1140 = bitcast float %467 to i32
  %1141 = sitofp i32 %1140 to float
  %1142 = fadd fast float %1141, 0xC1CFBF8940000000
  %1143 = fmul fast float %1137, %1142
  %1144 = fadd fast float %1143, 0x41CFBF8940000000
  %1145 = fptosi float %1144 to i32
  %1146 = bitcast i32 %1145 to float
  %1147 = bitcast float %1139 to i32
  %1148 = sitofp i32 %1147 to float
  %1149 = fadd fast float %1148, 0xC1CFBF8940000000
  %1150 = fmul fast float %1149, %1137
  %1151 = fadd fast float %1150, 0x41CFBF8940000000
  %1152 = fptosi float %1151 to i32
  %1153 = bitcast i32 %1152 to float
  %1154 = fmul fast float %1146, %1134
  %1155 = fmul fast float %1153, %1134
  %1156 = fsub fast float %1139, %1154
  %1157 = fadd fast float %1155, %1139
  %1158 = call float @dx.op.unary.f32(i32 7, float %1156)  ; Saturate(value)
  %1159 = call float @dx.op.unary.f32(i32 7, float %1157)  ; Saturate(value)
  %1160 = fsub fast float %1128, %1158
  %1161 = fsub fast float %1159, %1158
  %1162 = bitcast float %1161 to i32
  %1163 = sub nsw i32 2129859010, %1162
  %1164 = bitcast i32 %1163 to float
  %1165 = fmul fast float %1164, %1160
  %1166 = call float @dx.op.unary.f32(i32 7, float %1165)  ; Saturate(value)
  br label %1167

; <label>:1167                                    ; preds = %1121, %1116
  %1168 = phi float [ %1166, %1121 ], [ %467, %1116 ]
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = and i32 %1170, 128
  %1172 = icmp eq i32 %1171, 0
  br i1 %1172, label %1189, label %1173

; <label>:1173                                    ; preds = %1167
  %1174 = add i32 %29, 460
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = add i32 %1176, 0
  %1178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1177, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1179 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1178, %dx.types.Handle %74, float %1117, float %1118, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1180 = extractvalue %dx.types.ResRet.f32 %1179, 0
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = and i32 %1182, 524288
  %1184 = icmp ne i32 %1183, 0
  %1185 = fcmp fast ogt float %1180, 0x3FE0101020000000
  %1186 = select i1 %1185, float 1.000000e+00, float 0.000000e+00
  %1187 = select i1 %1184, float %1186, float %1180
  %1188 = fmul fast float %1187, %1168
  br label %1189

; <label>:1189                                    ; preds = %1173, %1167
  %1190 = phi float [ %1188, %1173 ], [ %1168, %1167 ]
  %1191 = fcmp fast ult float %1190, 0x3F70101020000000
  br i1 %1191, label %1821, label %1192

; <label>:1192                                    ; preds = %1189
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = and i32 %1194, 16
  %1196 = icmp eq i32 %1195, 0
  br i1 %1196, label %1395, label %1197

; <label>:1197                                    ; preds = %1192
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = add i32 %29, 412
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = add i32 %1202, 0
  %1204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1203, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1205 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1204, %dx.types.Handle %73, float %1117, float %1118, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = extractvalue %dx.types.ResRet.f32 %1205, 1
  %1208 = extractvalue %dx.types.ResRet.f32 %1205, 2
  %1209 = extractvalue %dx.types.ResRet.f32 %1205, 3
  %1210 = and i32 %1199, 255
  %1211 = uitofp i32 %1210 to float
  %1212 = lshr i32 %1199, 8
  %1213 = and i32 %1212, 255
  %1214 = uitofp i32 %1213 to float
  %1215 = fmul fast float %1209, %1211
  %1216 = fadd fast float %1215, %1214
  %1217 = fmul fast float %1216, 0x3F70101000000000
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = and i32 %1219, 512
  %1221 = icmp eq i32 %1220, 0
  br i1 %1221, label %1230, label %1222

; <label>:1222                                    ; preds = %1197
  %1223 = add i32 %29, 492
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = add i32 %1225, 0
  %1227 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1226, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1228 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1227, %dx.types.Handle %74, float %1117, float %1118, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1229 = extractvalue %dx.types.ResRet.f32 %1228, 0
  br label %1230

; <label>:1230                                    ; preds = %1222, %1197
  %1231 = phi float [ %1229, %1222 ], [ 1.000000e+00, %1197 ]
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.i32 %1232, 0
  %1234 = and i32 %1233, 33554432
  %1235 = icmp eq i32 %1234, 0
  br i1 %1235, label %1342, label %1236

; <label>:1236                                    ; preds = %1230
  %1237 = add i32 %29, 240
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = and i32 %1239, 65535
  %1241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1240)  ; LegacyF16ToF32(value)
  %1242 = lshr i32 %1239, 16
  %1243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1242)  ; LegacyF16ToF32(value)
  %1244 = add i32 %29, 244
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = and i32 %1246, 65535
  %1248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1247)  ; LegacyF16ToF32(value)
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = lshr i32 %1250, 24
  %1252 = uitofp i32 %1251 to float
  %1253 = fmul fast float %1252, 0x3F70101020000000
  %1254 = and i32 %1250, 255
  %1255 = uitofp i32 %1254 to float
  %1256 = fmul fast float %1255, 0x3F70101020000000
  %1257 = lshr i32 %1250, 8
  %1258 = and i32 %1257, 255
  %1259 = uitofp i32 %1258 to float
  %1260 = fmul fast float %1259, 0x3F70101020000000
  %1261 = lshr i32 %1250, 16
  %1262 = and i32 %1261, 255
  %1263 = uitofp i32 %1262 to float
  %1264 = fmul fast float %1263, 0x3F70101020000000
  %1265 = add i32 %29, 236
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = lshr i32 %1267, 24
  %1269 = uitofp i32 %1268 to float
  %1270 = fmul fast float %1269, 0x3F70101020000000
  %1271 = and i32 %1267, 255
  %1272 = uitofp i32 %1271 to float
  %1273 = fmul fast float %1272, 0x3F70101020000000
  %1274 = lshr i32 %1267, 8
  %1275 = and i32 %1274, 255
  %1276 = uitofp i32 %1275 to float
  %1277 = fmul fast float %1276, 0x3F70101020000000
  %1278 = lshr i32 %1267, 16
  %1279 = and i32 %1278, 255
  %1280 = uitofp i32 %1279 to float
  %1281 = fmul fast float %1280, 0x3F70101020000000
  %1282 = bitcast float %1206 to i32
  %1283 = ashr i32 %1282, 1
  %1284 = sub nsw i32 1597463174, %1283
  %1285 = bitcast i32 %1284 to float
  %1286 = fmul fast float %1206, 5.000000e-01
  %1287 = fmul fast float %1285, %1285
  %1288 = fmul fast float %1287, %1286
  %1289 = fsub fast float 1.500000e+00, %1288
  %1290 = fmul fast float %1285, %1206
  %1291 = fmul fast float %1290, %1289
  %1292 = bitcast float %1207 to i32
  %1293 = ashr i32 %1292, 1
  %1294 = sub nsw i32 1597463174, %1293
  %1295 = bitcast i32 %1294 to float
  %1296 = fmul fast float %1207, 5.000000e-01
  %1297 = fmul fast float %1295, %1295
  %1298 = fmul fast float %1297, %1296
  %1299 = fsub fast float 1.500000e+00, %1298
  %1300 = fmul fast float %1295, %1207
  %1301 = fmul fast float %1300, %1299
  %1302 = bitcast float %1208 to i32
  %1303 = ashr i32 %1302, 1
  %1304 = sub nsw i32 1597463174, %1303
  %1305 = bitcast i32 %1304 to float
  %1306 = fmul fast float %1208, 5.000000e-01
  %1307 = fmul fast float %1305, %1305
  %1308 = fmul fast float %1307, %1306
  %1309 = fsub fast float 1.500000e+00, %1308
  %1310 = fmul fast float %1305, %1208
  %1311 = fmul fast float %1310, %1309
  %1312 = fsub fast float %1291, %1273
  %1313 = fsub fast float %1301, %1277
  %1314 = fsub fast float %1311, %1281
  %1315 = fmul fast float %1312, %1241
  %1316 = fmul fast float %1313, %1243
  %1317 = fmul fast float %1314, %1248
  %1318 = fadd fast float %1315, %1256
  %1319 = fadd fast float %1316, %1260
  %1320 = fadd fast float %1317, %1264
  %1321 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1322 = call float @dx.op.unary.f32(i32 7, float %1319)  ; Saturate(value)
  %1323 = call float @dx.op.unary.f32(i32 7, float %1320)  ; Saturate(value)
  %1324 = fmul fast float %1321, %1321
  %1325 = fmul fast float %1322, %1322
  %1326 = fmul fast float %1323, %1323
  %1327 = fsub fast float %1324, %1206
  %1328 = fsub fast float %1325, %1207
  %1329 = fsub fast float %1326, %1208
  %1330 = fmul fast float %1327, %1231
  %1331 = fmul fast float %1328, %1231
  %1332 = fmul fast float %1329, %1231
  %1333 = fadd fast float %1330, %1206
  %1334 = fadd fast float %1331, %1207
  %1335 = fadd fast float %1332, %1208
  %1336 = fadd fast float %1253, %1217
  %1337 = fsub fast float %1336, %1270
  %1338 = call float @dx.op.unary.f32(i32 7, float %1337)  ; Saturate(value)
  %1339 = fsub fast float %1338, %1217
  %1340 = fmul fast float %1339, %1231
  %1341 = fadd fast float %1340, %1217
  br label %1395

; <label>:1342                                    ; preds = %1230
  %1343 = and i32 %1233, 134217728
  %1344 = icmp eq i32 %1343, 0
  br i1 %1344, label %1379, label %1345

; <label>:1345                                    ; preds = %1342
  %1346 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %1347 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %1348 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %1349 = fadd fast float %1346, -5.000000e-01
  %1350 = fadd fast float %1347, -5.000000e-01
  %1351 = fadd fast float %1348, -5.000000e-01
  %1352 = fmul fast float %1349, %1231
  %1353 = fmul fast float %1350, %1231
  %1354 = fmul fast float %1351, %1231
  %1355 = fadd fast float %1352, 5.000000e-01
  %1356 = fadd fast float %1353, 5.000000e-01
  %1357 = fadd fast float %1354, 5.000000e-01
  %1358 = call float @dx.op.unary.f32(i32 24, float %1206)  ; Sqrt(value)
  %1359 = call float @dx.op.unary.f32(i32 24, float %1207)  ; Sqrt(value)
  %1360 = call float @dx.op.unary.f32(i32 24, float %1208)  ; Sqrt(value)
  %1361 = fmul fast float %1355, 2.000000e+00
  %1362 = fsub fast float 1.000000e+00, %1361
  %1363 = fmul fast float %1362, %1358
  %1364 = fadd fast float %1363, %1361
  %1365 = fmul fast float %1364, %1358
  %1366 = fmul fast float %1356, 2.000000e+00
  %1367 = fsub fast float 1.000000e+00, %1366
  %1368 = fmul fast float %1367, %1359
  %1369 = fadd fast float %1368, %1366
  %1370 = fmul fast float %1369, %1359
  %1371 = fmul fast float %1357, 2.000000e+00
  %1372 = fsub fast float 1.000000e+00, %1371
  %1373 = fmul fast float %1372, %1360
  %1374 = fadd fast float %1373, %1371
  %1375 = fmul fast float %1374, %1360
  %1376 = fmul fast float %1365, %1365
  %1377 = fmul fast float %1370, %1370
  %1378 = fmul fast float %1375, %1375
  br label %1395

; <label>:1379                                    ; preds = %1342
  %1380 = fmul fast float %302, %302
  %1381 = fmul fast float %306, %306
  %1382 = fmul fast float %310, %310
  %1383 = fadd fast float %1380, -1.000000e+00
  %1384 = fadd fast float %1381, -1.000000e+00
  %1385 = fadd fast float %1382, -1.000000e+00
  %1386 = fmul fast float %1231, %1383
  %1387 = fmul fast float %1231, %1384
  %1388 = fmul fast float %1231, %1385
  %1389 = fadd fast float %1386, 1.000000e+00
  %1390 = fadd fast float %1387, 1.000000e+00
  %1391 = fadd fast float %1388, 1.000000e+00
  %1392 = fmul fast float %1389, %1206
  %1393 = fmul fast float %1390, %1207
  %1394 = fmul fast float %1391, %1208
  br label %1395

; <label>:1395                                    ; preds = %1379, %1345, %1236, %1192
  %1396 = phi float [ %1341, %1236 ], [ %1217, %1345 ], [ %1217, %1379 ], [ 0x3FA23C0BE0000000, %1192 ]
  %1397 = phi float [ %1333, %1236 ], [ %1376, %1345 ], [ %1392, %1379 ], [ 1.000000e+00, %1192 ]
  %1398 = phi float [ %1334, %1236 ], [ %1377, %1345 ], [ %1393, %1379 ], [ 1.000000e+00, %1192 ]
  %1399 = phi float [ %1335, %1236 ], [ %1378, %1345 ], [ %1394, %1379 ], [ 1.000000e+00, %1192 ]
  %1400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1401 = extractvalue %dx.types.CBufRet.i32 %1400, 1
  %1402 = and i32 %1401, 1
  %1403 = icmp ne i32 %1402, 0
  %1404 = add i32 %29, 356
  %1405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1404, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.i32 %1405, 0
  %1407 = and i32 %1406, 32
  %1408 = icmp ne i32 %1407, 0
  %1409 = and i1 %1403, %1408
  %1410 = select i1 %1409, float 1.000000e+00, float %1397
  %1411 = select i1 %1409, float 0x3FD3333340000000, float %1398
  %1412 = select i1 %1409, float 0x3FD3333340000000, float %1399
  %1413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1414 = extractvalue %dx.types.ResRet.i32 %1413, 0
  %1415 = and i32 %1414, 32
  %1416 = icmp eq i32 %1415, 0
  br i1 %1416, label %1489, label %1417

; <label>:1417                                    ; preds = %1395
  %1418 = add i32 %29, 108
  %1419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1418, i32 undef)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.i32 %1419, 0
  %1421 = add i32 %29, 428
  %1422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1421, i32 undef)  ; BufferLoad(srv,index,wot)
  %1423 = extractvalue %dx.types.ResRet.i32 %1422, 0
  %1424 = add i32 %1423, 0
  %1425 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1424, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1426 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1425, %dx.types.Handle %73, float %1117, float %1118, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1427 = extractvalue %dx.types.ResRet.f32 %1426, 0
  %1428 = extractvalue %dx.types.ResRet.f32 %1426, 1
  %1429 = extractvalue %dx.types.ResRet.f32 %1426, 2
  %1430 = extractvalue %dx.types.ResRet.f32 %1426, 3
  %1431 = and i32 %1420, 255
  %1432 = uitofp i32 %1431 to float
  %1433 = lshr i32 %1420, 8
  %1434 = and i32 %1433, 255
  %1435 = uitofp i32 %1434 to float
  %1436 = lshr i32 %1420, 16
  %1437 = and i32 %1436, 255
  %1438 = uitofp i32 %1437 to float
  %1439 = fmul fast float %1438, 0x3F70101000000000
  %1440 = fmul fast float %1427, %1432
  %1441 = fadd fast float %1440, %1435
  %1442 = fmul fast float %1441, 0x3F70101000000000
  %1443 = fadd fast float %1428, -5.000000e-01
  %1444 = fadd fast float %1430, -5.000000e-01
  %1445 = fmul fast float %1443, %1439
  %1446 = fmul fast float %1444, %1439
  %1447 = fadd fast float %1445, 5.000000e-01
  %1448 = fadd fast float %1446, 5.000000e-01
  %1449 = fmul fast float %1447, 2.000000e+00
  %1450 = fadd fast float %1449, -1.000000e+00
  %1451 = fmul fast float %1448, 2.000000e+00
  %1452 = fadd fast float %1451, -1.000000e+00
  %1453 = fadd fast float %1450, %1452
  %1454 = fmul fast float %1453, 5.000000e-01
  %1455 = fsub fast float %1450, %1452
  %1456 = fmul fast float %1455, 5.000000e-01
  %1457 = call float @dx.op.unary.f32(i32 6, float %1454)  ; FAbs(value)
  %1458 = fsub fast float 1.000000e+00, %1457
  %1459 = call float @dx.op.unary.f32(i32 6, float %1456)  ; FAbs(value)
  %1460 = fsub fast float %1458, %1459
  %1461 = call float @dx.op.dot3.f32(i32 55, float %1454, float %1456, float %1460, float %1454, float %1456, float %1460)  ; Dot3(ax,ay,az,bx,by,bz)
  %1462 = call float @dx.op.unary.f32(i32 25, float %1461)  ; Rsqrt(value)
  %1463 = fmul fast float %1454, %1462
  %1464 = fmul fast float %1456, %1462
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = and i32 %1466, 67108864
  %1468 = icmp eq i32 %1467, 0
  br i1 %1468, label %1485, label %1469

; <label>:1469                                    ; preds = %1417
  %1470 = add i32 %29, 296
  %1471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1470, i32 undef)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.i32 %1471, 0
  %1473 = and i32 %1472, 65535
  %1474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1473)  ; LegacyF16ToF32(value)
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = and i32 %1476, 65535
  %1478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1477)  ; LegacyF16ToF32(value)
  %1479 = lshr i32 %1472, 16
  %1480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1479)  ; LegacyF16ToF32(value)
  %1481 = fsub fast float %1442, %1480
  %1482 = fmul fast float %1481, %1474
  %1483 = fadd fast float %1482, %1478
  %1484 = call float @dx.op.unary.f32(i32 7, float %1483)  ; Saturate(value)
  br label %1485

; <label>:1485                                    ; preds = %1469, %1417
  %1486 = phi float [ %1484, %1469 ], [ %1442, %1417 ]
  %1487 = call float @dx.op.dot2.f32(i32 54, float %1463, float %1464, float %1021, float %1022)  ; Dot2(ax,ay,bx,by)
  %1488 = call float @dx.op.dot2.f32(i32 54, float %1463, float %1464, float %1023, float %1024)  ; Dot2(ax,ay,bx,by)
  br label %1489

; <label>:1489                                    ; preds = %1485, %1395
  %1490 = phi float [ %1486, %1485 ], [ 0x3FD6666660000000, %1395 ]
  %1491 = phi float [ %1487, %1485 ], [ 0.000000e+00, %1395 ]
  %1492 = phi float [ %1488, %1485 ], [ 0.000000e+00, %1395 ]
  %1493 = phi float [ %1429, %1485 ], [ 1.000000e+00, %1395 ]
  %1494 = add i32 %29, 176
  %1495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1494, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.i32 %1495, 0
  %1497 = lshr i32 %1496, 22
  %1498 = shl nuw nsw i32 %1497, 5
  %1499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1498)  ; LegacyF16ToF32(value)
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = and i32 %1501, 64
  %1503 = icmp eq i32 %1502, 0
  br i1 %1503, label %1537, label %1504

; <label>:1504                                    ; preds = %1489
  %1505 = add i32 %29, 444
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = add i32 %1507, 0
  %1509 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1508, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = and i32 %1511, 131072
  %1513 = icmp eq i32 %1512, 0
  %1514 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1509, %dx.types.Handle %73, float %1117, float %1118, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1515 = extractvalue %dx.types.ResRet.f32 %1514, 0
  %1516 = extractvalue %dx.types.ResRet.f32 %1514, 1
  %1517 = extractvalue %dx.types.ResRet.f32 %1514, 2
  %1518 = fmul fast float %1515, %290
  %1519 = fmul fast float %1516, %293
  %1520 = fmul fast float %1517, %296
  br i1 %1513, label %1527, label %1521

; <label>:1521                                    ; preds = %1504
  %1522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1523 = extractvalue %dx.types.CBufRet.f32 %1522, 0
  %1524 = fmul fast float %1523, %1518
  %1525 = fmul fast float %1523, %1519
  %1526 = fmul fast float %1523, %1520
  br label %1527

; <label>:1527                                    ; preds = %1521, %1504
  %1528 = phi float [ %1524, %1521 ], [ %1518, %1504 ]
  %1529 = phi float [ %1525, %1521 ], [ %1519, %1504 ]
  %1530 = phi float [ %1526, %1521 ], [ %1520, %1504 ]
  %1531 = fmul fast float %1528, %1499
  %1532 = select i1 %231, float %1531, float %1528
  %1533 = call float @dx.op.dot3.f32(i32 55, float %1532, float %1529, float %1530, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1534 = select i1 %231, float 0.000000e+00, float %1528
  %1535 = select i1 %231, float %1533, float %1529
  %1536 = select i1 %231, float 0.000000e+00, float %1530
  br label %1537

; <label>:1537                                    ; preds = %1527, %1489
  %1538 = phi float [ %1534, %1527 ], [ 0.000000e+00, %1489 ]
  %1539 = phi float [ %1535, %1527 ], [ 0.000000e+00, %1489 ]
  %1540 = phi float [ %1536, %1527 ], [ 0.000000e+00, %1489 ]
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = and i32 %1542, 10240
  %1544 = icmp eq i32 %1543, 0
  br i1 %1544, label %1589, label %1545

; <label>:1545                                    ; preds = %1537
  %1546 = add i32 %29, 508
  %1547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1546, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.i32 %1547, 0
  %1549 = add i32 %1548, 0
  %1550 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1549, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1551 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1550, %dx.types.Handle %74, float %1117, float %1118, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1552 = extractvalue %dx.types.ResRet.f32 %1551, 1
  %1553 = extractvalue %dx.types.ResRet.f32 %1551, 3
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = and i32 %1555, 1048576
  %1557 = icmp ne i32 %1556, 0
  %1558 = and i32 %1555, 8192
  %1559 = icmp eq i32 %1558, 0
  br i1 %1559, label %1575, label %1560

; <label>:1560                                    ; preds = %1545
  %1561 = extractvalue %dx.types.ResRet.f32 %1551, 2
  %1562 = select i1 %1557, float %1561, float %1552
  %1563 = extractvalue %dx.types.ResRet.f32 %1551, 0
  %1564 = select i1 %1557, float %1563, float %1552
  %1565 = add i32 %29, 112
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = lshr i32 %1567, 16
  %1569 = and i32 %1568, 255
  %1570 = uitofp i32 %1569 to float
  %1571 = fmul fast float %1570, 0x3F80101020000000
  %1572 = fmul fast float %1571, %1564
  %1573 = fmul fast float %1571, %1552
  %1574 = fmul fast float %1571, %1562
  br label %1575

; <label>:1575                                    ; preds = %1560, %1545
  %1576 = phi float [ %1572, %1560 ], [ 0.000000e+00, %1545 ]
  %1577 = phi float [ %1573, %1560 ], [ 0.000000e+00, %1545 ]
  %1578 = phi float [ %1574, %1560 ], [ 0.000000e+00, %1545 ]
  %1579 = and i32 %1555, 2048
  %1580 = icmp eq i32 %1579, 0
  br i1 %1580, label %1589, label %1581

; <label>:1581                                    ; preds = %1575
  %1582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1494, i32 undef)  ; BufferLoad(srv,index,wot)
  %1583 = extractvalue %dx.types.ResRet.i32 %1582, 0
  %1584 = shl i32 %1583, 4
  %1585 = and i32 %1584, 32752
  %1586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1585)  ; LegacyF16ToF32(value)
  %1587 = fmul fast float %1586, %1553
  %1588 = call float @dx.op.binary.f32(i32 35, float %1587, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1589

; <label>:1589                                    ; preds = %1581, %1575, %1537
  %1590 = phi float [ %1576, %1581 ], [ %1576, %1575 ], [ 0.000000e+00, %1537 ]
  %1591 = phi float [ %1577, %1581 ], [ %1577, %1575 ], [ 0.000000e+00, %1537 ]
  %1592 = phi float [ %1578, %1581 ], [ %1578, %1575 ], [ 0.000000e+00, %1537 ]
  %1593 = phi float [ %1588, %1581 ], [ 0x3F70101020000000, %1575 ], [ 0x3F70101020000000, %1537 ]
  %1594 = add i32 %29, 112
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1594, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = and i32 %1596, 255
  %1598 = uitofp i32 %1597 to float
  %1599 = lshr i32 %1596, 8
  %1600 = and i32 %1599, 255
  %1601 = uitofp i32 %1600 to float
  %1602 = call float @dx.op.dot3.f32(i32 55, float %1410, float %1411, float %1412, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1603 = fmul fast float %1601, %1602
  %1604 = fadd fast float %1603, %1598
  %1605 = fmul fast float %1604, 0x3F70101020000000
  %1606 = call float @dx.op.unary.f32(i32 7, float %1605)  ; Saturate(value)
  br i1 %1009, label %1607, label %1615

; <label>:1607                                    ; preds = %1589
  %1608 = fsub fast float 1.000000e+00, %1190
  %1609 = fmul fast float %1608, %993
  %1610 = fmul fast float %1608, %994
  %1611 = fmul fast float %1608, %995
  %1612 = fmul fast float %1608, %999
  %1613 = fmul fast float %1608, %1000
  %1614 = fmul fast float %1608, %1001
  br label %1615

; <label>:1615                                    ; preds = %1607, %1589
  %1616 = phi float [ %1609, %1607 ], [ %993, %1589 ]
  %1617 = phi float [ %1610, %1607 ], [ %994, %1589 ]
  %1618 = phi float [ %1611, %1607 ], [ %995, %1589 ]
  %1619 = phi float [ %1612, %1607 ], [ %999, %1589 ]
  %1620 = phi float [ %1613, %1607 ], [ %1000, %1589 ]
  %1621 = phi float [ %1614, %1607 ], [ %1001, %1589 ]
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = and i32 %1623, 3
  %1625 = icmp eq i32 %1624, 3
  br i1 %1625, label %1704, label %1626

; <label>:1626                                    ; preds = %1615
  %1627 = and i32 %1623, 16
  %1628 = icmp ne i32 %1627, 0
  %1629 = select i1 %1628, float %1190, float 0.000000e+00
  %1630 = icmp eq i32 %1624, 0
  br i1 %1630, label %1631, label %1659

; <label>:1631                                    ; preds = %1626
  %1632 = and i32 %1623, 64
  %1633 = icmp ne i32 %1632, 0
  %1634 = select i1 %1633, float %1190, float 0.000000e+00
  %1635 = fsub fast float %1410, %1616
  %1636 = fsub fast float %1411, %1617
  %1637 = fsub fast float %1412, %1618
  %1638 = fmul fast float %1629, %1635
  %1639 = fmul fast float %1629, %1636
  %1640 = fmul fast float %1629, %1637
  %1641 = fadd fast float %1638, %1616
  %1642 = fadd fast float %1639, %1617
  %1643 = fadd fast float %1640, %1618
  %1644 = fsub fast float %1396, %1002
  %1645 = fmul fast float %1629, %1644
  %1646 = fadd fast float %1645, %1002
  %1647 = fsub fast float %1538, %1619
  %1648 = fsub fast float %1539, %1620
  %1649 = fsub fast float %1540, %1621
  %1650 = fmul fast float %1634, %1647
  %1651 = fmul fast float %1634, %1648
  %1652 = fmul fast float %1634, %1649
  %1653 = fadd fast float %1650, %1619
  %1654 = fadd fast float %1651, %1620
  %1655 = fadd fast float %1652, %1621
  %1656 = fsub fast float %1606, %1007
  %1657 = fmul fast float %1629, %1656
  %1658 = fadd fast float %1657, %1007
  br label %1704

; <label>:1659                                    ; preds = %1626
  %1660 = icmp eq i32 %1624, 1
  br i1 %1660, label %1661, label %1674

; <label>:1661                                    ; preds = %1659
  %1662 = fadd fast float %1410, -1.000000e+00
  %1663 = fadd fast float %1411, -1.000000e+00
  %1664 = fadd fast float %1412, -1.000000e+00
  %1665 = fmul fast float %1629, %1662
  %1666 = fmul fast float %1629, %1663
  %1667 = fmul fast float %1629, %1664
  %1668 = fadd fast float %1665, 1.000000e+00
  %1669 = fadd fast float %1666, 1.000000e+00
  %1670 = fadd fast float %1667, 1.000000e+00
  %1671 = fmul fast float %1668, %1616
  %1672 = fmul fast float %1669, %1617
  %1673 = fmul fast float %1670, %1618
  br label %1704

; <label>:1674                                    ; preds = %1659
  %1675 = icmp eq i32 %1624, 2
  br i1 %1675, label %1676, label %1704

; <label>:1676                                    ; preds = %1674
  %1677 = call float @dx.op.unary.f32(i32 24, float %1410)  ; Sqrt(value)
  %1678 = call float @dx.op.unary.f32(i32 24, float %1411)  ; Sqrt(value)
  %1679 = call float @dx.op.unary.f32(i32 24, float %1412)  ; Sqrt(value)
  %1680 = fadd fast float %1677, -5.000000e-01
  %1681 = fadd fast float %1678, -5.000000e-01
  %1682 = fadd fast float %1679, -5.000000e-01
  %1683 = fmul fast float %1680, %1629
  %1684 = fmul fast float %1681, %1629
  %1685 = fmul fast float %1682, %1629
  %1686 = fadd fast float %1683, 5.000000e-01
  %1687 = fadd fast float %1684, 5.000000e-01
  %1688 = fadd fast float %1685, 5.000000e-01
  %1689 = fmul fast float %1686, 2.000000e+00
  %1690 = fsub fast float 1.000000e+00, %1689
  %1691 = fmul fast float %1690, %1616
  %1692 = fadd fast float %1691, %1689
  %1693 = fmul fast float %1692, %1616
  %1694 = fmul fast float %1687, 2.000000e+00
  %1695 = fsub fast float 1.000000e+00, %1694
  %1696 = fmul fast float %1695, %1617
  %1697 = fadd fast float %1696, %1694
  %1698 = fmul fast float %1697, %1617
  %1699 = fmul fast float %1688, 2.000000e+00
  %1700 = fsub fast float 1.000000e+00, %1699
  %1701 = fmul fast float %1700, %1618
  %1702 = fadd fast float %1701, %1699
  %1703 = fmul fast float %1702, %1618
  br label %1704

; <label>:1704                                    ; preds = %1676, %1674, %1661, %1631, %1615
  %1705 = phi float [ %1616, %1615 ], [ %1693, %1676 ], [ %1616, %1674 ], [ %1671, %1661 ], [ %1641, %1631 ]
  %1706 = phi float [ %1617, %1615 ], [ %1698, %1676 ], [ %1617, %1674 ], [ %1672, %1661 ], [ %1642, %1631 ]
  %1707 = phi float [ %1618, %1615 ], [ %1703, %1676 ], [ %1618, %1674 ], [ %1673, %1661 ], [ %1643, %1631 ]
  %1708 = phi float [ %1619, %1615 ], [ %1619, %1676 ], [ %1619, %1674 ], [ %1619, %1661 ], [ %1653, %1631 ]
  %1709 = phi float [ %1620, %1615 ], [ %1620, %1676 ], [ %1620, %1674 ], [ %1620, %1661 ], [ %1654, %1631 ]
  %1710 = phi float [ %1621, %1615 ], [ %1621, %1676 ], [ %1621, %1674 ], [ %1621, %1661 ], [ %1655, %1631 ]
  %1711 = phi float [ %1002, %1615 ], [ %1002, %1676 ], [ %1002, %1674 ], [ %1002, %1661 ], [ %1646, %1631 ]
  %1712 = phi float [ %1007, %1615 ], [ %1007, %1676 ], [ %1007, %1674 ], [ %1007, %1661 ], [ %1658, %1631 ]
  %1713 = and i32 %1623, 12
  %1714 = icmp eq i32 %1713, 12
  br i1 %1714, label %1821, label %1715

; <label>:1715                                    ; preds = %1704
  %1716 = and i32 %1623, 2097184
  %1717 = icmp eq i32 %1716, 2097184
  %1718 = select i1 %1717, float %1190, float 0.000000e+00
  %1719 = and i32 %1623, 4194336
  %1720 = icmp eq i32 %1719, 4194336
  %1721 = select i1 %1720, float %1190, float 0.000000e+00
  %1722 = and i32 %1623, 8388640
  %1723 = icmp eq i32 %1722, 8388640
  %1724 = select i1 %1723, float %1190, float 0.000000e+00
  %1725 = and i32 %1623, 2048
  %1726 = icmp ne i32 %1725, 0
  %1727 = select i1 %1726, float %1190, float 0.000000e+00
  %1728 = and i32 %1623, 8192
  %1729 = icmp ne i32 %1728, 0
  %1730 = select i1 %1729, float %1190, float 0.000000e+00
  %1731 = icmp eq i32 %1713, 0
  br i1 %1731, label %1732, label %1757

; <label>:1732                                    ; preds = %1715
  %1733 = fsub fast float %1491, %991
  %1734 = fsub fast float %1492, %992
  %1735 = fmul fast float %1718, %1733
  %1736 = fmul fast float %1718, %1734
  %1737 = fadd fast float %1735, %991
  %1738 = fadd fast float %1736, %992
  %1739 = fsub fast float %1493, %1005
  %1740 = fmul fast float %1721, %1739
  %1741 = fadd fast float %1740, %1005
  %1742 = fsub fast float %1490, %1004
  %1743 = fmul fast float %1724, %1742
  %1744 = fadd fast float %1743, %1004
  %1745 = fsub fast float %1593, %1006
  %1746 = fmul fast float %1727, %1745
  %1747 = fadd fast float %1746, %1006
  %1748 = fsub fast float %1590, %996
  %1749 = fsub fast float %1591, %997
  %1750 = fsub fast float %1592, %998
  %1751 = fmul fast float %1730, %1748
  %1752 = fmul fast float %1730, %1749
  %1753 = fmul fast float %1730, %1750
  %1754 = fadd fast float %1751, %996
  %1755 = fadd fast float %1752, %997
  %1756 = fadd fast float %1753, %998
  br label %1821

; <label>:1757                                    ; preds = %1715
  %1758 = icmp eq i32 %1713, 4
  br i1 %1758, label %1759, label %1799

; <label>:1759                                    ; preds = %1757
  %1760 = fmul fast float %1718, %1491
  %1761 = fmul fast float %1718, %1492
  %1762 = fadd fast float %1760, %991
  %1763 = fadd fast float %1761, %992
  %1764 = call float @dx.op.binary.f32(i32 36, float %1005, float %1493)  ; FMin(a,b)
  %1765 = fsub fast float %1764, %1005
  %1766 = fmul fast float %1765, %1721
  %1767 = fadd fast float %1766, %1005
  %1768 = fadd fast float %1490, %1004
  %1769 = fmul fast float %1768, 0x3FF337FAE0000000
  %1770 = fmul fast float %1004, %1004
  %1771 = fmul fast float %1490, %1490
  %1772 = fadd fast float %1771, %1770
  %1773 = fmul fast float %1772, 0x3FE5152B00000000
  %1774 = fmul fast float %1004, 0xBFCC1F85E0000000
  %1775 = fmul fast float %1774, %1490
  %1776 = fadd fast float %1775, 0xBFE1363700000000
  %1777 = fadd fast float %1776, %1769
  %1778 = fsub fast float %1777, %1773
  %1779 = fmul fast float %1768, 0x3FBA6F0D00000000
  %1780 = fmul fast float %1772, 0x3FD0432880000000
  %1781 = fmul fast float %1004, 0xBFEF110800000000
  %1782 = fmul fast float %1781, %1490
  %1783 = fadd fast float %1782, 1.000000e+00
  %1784 = fsub fast float %1783, %1779
  %1785 = fadd fast float %1784, %1780
  %1786 = fdiv fast float %1778, %1785
  %1787 = call float @dx.op.unary.f32(i32 7, float %1786)  ; Saturate(value)
  %1788 = fsub fast float %1787, %1004
  %1789 = fmul fast float %1788, %1724
  %1790 = fadd fast float %1789, %1004
  %1791 = fmul fast float %1727, %1593
  %1792 = fadd fast float %1791, %1006
  %1793 = fmul fast float %1730, %1590
  %1794 = fmul fast float %1730, %1591
  %1795 = fmul fast float %1730, %1592
  %1796 = fadd fast float %1793, %996
  %1797 = fadd fast float %1794, %997
  %1798 = fadd fast float %1795, %998
  br label %1821

; <label>:1799                                    ; preds = %1757
  %1800 = icmp eq i32 %1713, 8
  br i1 %1800, label %1801, label %1821

; <label>:1801                                    ; preds = %1799
  %1802 = fmul fast float %1718, %1491
  %1803 = fmul fast float %1718, %1492
  %1804 = fadd fast float %1802, %991
  %1805 = fadd fast float %1803, %992
  %1806 = call float @dx.op.binary.f32(i32 36, float %1005, float %1493)  ; FMin(a,b)
  %1807 = fsub fast float %1806, %1005
  %1808 = fmul fast float %1807, %1721
  %1809 = fadd fast float %1808, %1005
  %1810 = fsub fast float %1490, %1004
  %1811 = fmul fast float %1724, %1810
  %1812 = fadd fast float %1811, %1004
  %1813 = fmul fast float %1727, %1593
  %1814 = fadd fast float %1813, %1006
  %1815 = fmul fast float %1730, %1590
  %1816 = fmul fast float %1730, %1591
  %1817 = fmul fast float %1730, %1592
  %1818 = fadd fast float %1815, %996
  %1819 = fadd fast float %1816, %997
  %1820 = fadd fast float %1817, %998
  br label %1821

; <label>:1821                                    ; preds = %1801, %1799, %1759, %1732, %1704, %1189, %1008, %990
  %1822 = phi float [ %991, %1704 ], [ %991, %1189 ], [ %991, %990 ], [ %1804, %1801 ], [ %991, %1799 ], [ %1762, %1759 ], [ %1737, %1732 ], [ %991, %1008 ]
  %1823 = phi float [ %992, %1704 ], [ %992, %1189 ], [ %992, %990 ], [ %1805, %1801 ], [ %992, %1799 ], [ %1763, %1759 ], [ %1738, %1732 ], [ %992, %1008 ]
  %1824 = phi float [ %1705, %1704 ], [ %993, %1189 ], [ %993, %990 ], [ %1705, %1801 ], [ %1705, %1799 ], [ %1705, %1759 ], [ %1705, %1732 ], [ %993, %1008 ]
  %1825 = phi float [ %1706, %1704 ], [ %994, %1189 ], [ %994, %990 ], [ %1706, %1801 ], [ %1706, %1799 ], [ %1706, %1759 ], [ %1706, %1732 ], [ %994, %1008 ]
  %1826 = phi float [ %1707, %1704 ], [ %995, %1189 ], [ %995, %990 ], [ %1707, %1801 ], [ %1707, %1799 ], [ %1707, %1759 ], [ %1707, %1732 ], [ %995, %1008 ]
  %1827 = phi float [ %996, %1704 ], [ %996, %1189 ], [ %996, %990 ], [ %1818, %1801 ], [ %996, %1799 ], [ %1796, %1759 ], [ %1754, %1732 ], [ %996, %1008 ]
  %1828 = phi float [ %997, %1704 ], [ %997, %1189 ], [ %997, %990 ], [ %1819, %1801 ], [ %997, %1799 ], [ %1797, %1759 ], [ %1755, %1732 ], [ %997, %1008 ]
  %1829 = phi float [ %998, %1704 ], [ %998, %1189 ], [ %998, %990 ], [ %1820, %1801 ], [ %998, %1799 ], [ %1798, %1759 ], [ %1756, %1732 ], [ %998, %1008 ]
  %1830 = phi float [ %1708, %1704 ], [ %999, %1189 ], [ %999, %990 ], [ %1708, %1801 ], [ %1708, %1799 ], [ %1708, %1759 ], [ %1708, %1732 ], [ %999, %1008 ]
  %1831 = phi float [ %1709, %1704 ], [ %1000, %1189 ], [ %1000, %990 ], [ %1709, %1801 ], [ %1709, %1799 ], [ %1709, %1759 ], [ %1709, %1732 ], [ %1000, %1008 ]
  %1832 = phi float [ %1710, %1704 ], [ %1001, %1189 ], [ %1001, %990 ], [ %1710, %1801 ], [ %1710, %1799 ], [ %1710, %1759 ], [ %1710, %1732 ], [ %1001, %1008 ]
  %1833 = phi float [ %1711, %1704 ], [ %1002, %1189 ], [ %1002, %990 ], [ %1711, %1801 ], [ %1711, %1799 ], [ %1711, %1759 ], [ %1711, %1732 ], [ %1002, %1008 ]
  %1834 = phi float [ %1004, %1704 ], [ %1004, %1189 ], [ %1004, %990 ], [ %1812, %1801 ], [ %1004, %1799 ], [ %1790, %1759 ], [ %1744, %1732 ], [ %1004, %1008 ]
  %1835 = phi float [ %1005, %1704 ], [ %1005, %1189 ], [ %1005, %990 ], [ %1809, %1801 ], [ %1005, %1799 ], [ %1767, %1759 ], [ %1741, %1732 ], [ %1005, %1008 ]
  %1836 = phi float [ %1006, %1704 ], [ %1006, %1189 ], [ %1006, %990 ], [ %1814, %1801 ], [ %1006, %1799 ], [ %1792, %1759 ], [ %1747, %1732 ], [ %1006, %1008 ]
  %1837 = phi float [ %1712, %1704 ], [ %1007, %1189 ], [ %1007, %990 ], [ %1712, %1801 ], [ %1712, %1799 ], [ %1712, %1759 ], [ %1712, %1732 ], [ %1007, %1008 ]
  br i1 %417, label %2651, label %1838

; <label>:1838                                    ; preds = %1821
  %1839 = icmp ult i32 %470, 3
  %1840 = add i32 %29, 56
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = add i32 %29, 60
  %1844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1843, i32 undef)  ; BufferLoad(srv,index,wot)
  %1845 = extractvalue %dx.types.ResRet.i32 %1844, 0
  %1846 = or i32 %1845, %1842
  %1847 = icmp eq i32 %1846, 0
  br i1 %1847, label %2651, label %1848

; <label>:1848                                    ; preds = %1838
  %1849 = and i32 %1842, 262144
  %1850 = icmp ne i32 %1849, 0
  %1851 = select i1 %1850, float %33, float 1.000000e+00
  %1852 = select i1 %1850, float %34, float 0.000000e+00
  %1853 = select i1 %1850, float %35, float 0.000000e+00
  %1854 = select i1 %1850, float %36, float 1.000000e+00
  %1855 = select i1 %1850, float %37, float %65
  %1856 = select i1 %1850, float %38, float %66
  %1857 = add i32 %29, 316
  %1858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %1859 = extractvalue %dx.types.ResRet.i32 %1858, 0
  %1860 = lshr i32 %1859, 16
  %1861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1860)  ; LegacyF16ToF32(value)
  %1862 = fmul fast float %1861, 0x3F50624DE0000000
  %1863 = add i32 %29, 120
  %1864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1863, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.i32 %1864, 0
  %1866 = lshr i32 %1865, 16
  %1867 = and i32 %1866, 255
  %1868 = lshr i32 %1865, 24
  %1869 = add i32 %29, 324
  %1870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1871 = extractvalue %dx.types.ResRet.i32 %1870, 0
  %1872 = and i32 %1871, 65535
  %1873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1872)  ; LegacyF16ToF32(value)
  %1874 = lshr i32 %1871, 16
  %1875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1874)  ; LegacyF16ToF32(value)
  %1876 = add i32 %29, 64
  %1877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.i32 %1877, 0
  %1879 = lshr i32 %1878, 22
  %1880 = shl nuw nsw i32 %1879, 5
  %1881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1880)  ; LegacyF16ToF32(value)
  %1882 = shl i32 %1878, 4
  %1883 = and i32 %1882, 32752
  %1884 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1883)  ; LegacyF16ToF32(value)
  %1885 = lshr i32 %1878, 7
  %1886 = and i32 %1885, 32752
  %1887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1886)  ; LegacyF16ToF32(value)
  %1888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1889 = extractvalue %dx.types.CBufRet.f32 %1888, 3
  %1890 = fmul fast float %1889, 1.000000e+03
  %1891 = fmul fast float %367, %1890
  %1892 = call float @dx.op.unary.f32(i32 22, float %1891)  ; Frc(value)
  %1893 = fadd fast float %1892, %357
  %1894 = fmul fast float %368, %1890
  %1895 = call float @dx.op.unary.f32(i32 22, float %1894)  ; Frc(value)
  %1896 = fadd fast float %1895, %359
  %1897 = fmul fast float %1862, %1890
  %1898 = call float @dx.op.unary.f32(i32 22, float %1897)  ; Frc(value)
  %1899 = fmul fast float %1898, 0x401921FB60000000
  %1900 = fadd fast float %1899, %1881
  %1901 = call float @dx.op.unary.f32(i32 13, float %1900)  ; Sin(value)
  %1902 = call float @dx.op.unary.f32(i32 12, float %1900)  ; Cos(value)
  %1903 = fsub fast float -0.000000e+00, %1901
  %1904 = fadd fast float %1855, -5.000000e-01
  %1905 = fadd fast float %1856, -5.000000e-01
  %1906 = fmul fast float %1873, %1904
  %1907 = fmul fast float %1875, %1905
  %1908 = fadd fast float %1906, 5.000000e-01
  %1909 = fadd fast float %1907, 5.000000e-01
  %1910 = fmul fast float %1884, %1908
  %1911 = fmul fast float %1887, %1909
  %1912 = fmul fast float %1902, %1910
  %1913 = call float @dx.op.tertiary.f32(i32 46, float %1903, float %1911, float %1912)  ; FMad(a,b,c)
  %1914 = fmul fast float %1901, %1910
  %1915 = call float @dx.op.tertiary.f32(i32 46, float %1902, float %1911, float %1914)  ; FMad(a,b,c)
  %1916 = fadd fast float %1893, %1913
  %1917 = fadd fast float %1896, %1915
  %1918 = icmp ugt i32 %1867, 1
  %1919 = icmp ugt i32 %1865, 33554431
  %1920 = or i1 %1919, %1918
  br i1 %1920, label %1921, label %1946

; <label>:1921                                    ; preds = %1848
  %1922 = add i32 %29, 260
  %1923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1924 = extractvalue %dx.types.ResRet.i32 %1923, 0
  %1925 = lshr i32 %1924, 16
  %1926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1925)  ; LegacyF16ToF32(value)
  %1927 = fmul fast float %1889, %1926
  %1928 = call float @dx.op.unary.f32(i32 22, float %1927)  ; Frc(value)
  %1929 = mul nuw nsw i32 %1867, %1868
  %1930 = uitofp i32 %1929 to float
  %1931 = fmul fast float %1928, %1930
  %1932 = call float @dx.op.unary.f32(i32 27, float %1931)  ; Round_ni(value)
  %1933 = fptoui float %1932 to i32
  %1934 = urem i32 %1933, %1867
  %1935 = udiv i32 %1933, %1868
  %1936 = call float @dx.op.unary.f32(i32 22, float %1916)  ; Frc(value)
  %1937 = call float @dx.op.unary.f32(i32 22, float %1917)  ; Frc(value)
  %1938 = uitofp i32 %1934 to float
  %1939 = uitofp i32 %1935 to float
  %1940 = fadd fast float %1936, %1938
  %1941 = fadd fast float %1937, %1939
  %1942 = uitofp i32 %1867 to float
  %1943 = uitofp i32 %1868 to float
  %1944 = fdiv fast float %1940, %1942
  %1945 = fdiv fast float %1941, %1943
  br label %1946

; <label>:1946                                    ; preds = %1921, %1848
  %1947 = phi float [ %1944, %1921 ], [ %1916, %1848 ]
  %1948 = phi float [ %1945, %1921 ], [ %1917, %1848 ]
  %1949 = and i32 %1842, 256
  %1950 = icmp eq i32 %1949, 0
  br i1 %1950, label %1997, label %1951

; <label>:1951                                    ; preds = %1946
  %1952 = add i32 %29, 480
  %1953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1954 = extractvalue %dx.types.ResRet.i32 %1953, 0
  %1955 = add i32 %1954, 0
  %1956 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1955, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1957 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1956, %dx.types.Handle %74, float %1947, float %1948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1958 = extractvalue %dx.types.ResRet.f32 %1957, 0
  %1959 = add i32 %29, 132
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = shl i32 %1961, 4
  %1963 = and i32 %1962, 32752
  %1964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1963)  ; LegacyF16ToF32(value)
  %1965 = lshr i32 %1961, 7
  %1966 = and i32 %1965, 32752
  %1967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1966)  ; LegacyF16ToF32(value)
  %1968 = fsub fast float 1.000000e+00, %466
  %1969 = call float @dx.op.binary.f32(i32 35, float %1968, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1970 = bitcast float %466 to i32
  %1971 = sitofp i32 %1970 to float
  %1972 = fadd fast float %1971, 0xC1CFBF8940000000
  %1973 = fmul fast float %1967, %1972
  %1974 = fadd fast float %1973, 0x41CFBF8940000000
  %1975 = fptosi float %1974 to i32
  %1976 = bitcast i32 %1975 to float
  %1977 = bitcast float %1969 to i32
  %1978 = sitofp i32 %1977 to float
  %1979 = fadd fast float %1978, 0xC1CFBF8940000000
  %1980 = fmul fast float %1979, %1967
  %1981 = fadd fast float %1980, 0x41CFBF8940000000
  %1982 = fptosi float %1981 to i32
  %1983 = bitcast i32 %1982 to float
  %1984 = fmul fast float %1976, %1964
  %1985 = fmul fast float %1983, %1964
  %1986 = fsub fast float %1969, %1984
  %1987 = fadd fast float %1985, %1969
  %1988 = call float @dx.op.unary.f32(i32 7, float %1986)  ; Saturate(value)
  %1989 = call float @dx.op.unary.f32(i32 7, float %1987)  ; Saturate(value)
  %1990 = fsub fast float %1958, %1988
  %1991 = fsub fast float %1989, %1988
  %1992 = bitcast float %1991 to i32
  %1993 = sub nsw i32 2129859010, %1992
  %1994 = bitcast i32 %1993 to float
  %1995 = fmul fast float %1994, %1990
  %1996 = call float @dx.op.unary.f32(i32 7, float %1995)  ; Saturate(value)
  br label %1997

; <label>:1997                                    ; preds = %1951, %1946
  %1998 = phi float [ %1996, %1951 ], [ %466, %1946 ]
  %1999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2000 = extractvalue %dx.types.ResRet.i32 %1999, 0
  %2001 = and i32 %2000, 128
  %2002 = icmp eq i32 %2001, 0
  br i1 %2002, label %2019, label %2003

; <label>:2003                                    ; preds = %1997
  %2004 = add i32 %29, 464
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = add i32 %2006, 0
  %2008 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2007, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2009 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2008, %dx.types.Handle %74, float %1947, float %1948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2010 = extractvalue %dx.types.ResRet.f32 %2009, 0
  %2011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2012 = extractvalue %dx.types.ResRet.i32 %2011, 0
  %2013 = and i32 %2012, 524288
  %2014 = icmp ne i32 %2013, 0
  %2015 = fcmp fast ogt float %2010, 0x3FE0101020000000
  %2016 = select i1 %2015, float 1.000000e+00, float 0.000000e+00
  %2017 = select i1 %2014, float %2016, float %2010
  %2018 = fmul fast float %2017, %1998
  br label %2019

; <label>:2019                                    ; preds = %2003, %1997
  %2020 = phi float [ %2018, %2003 ], [ %1998, %1997 ]
  %2021 = fcmp fast ult float %2020, 0x3F70101020000000
  br i1 %2021, label %2651, label %2022

; <label>:2022                                    ; preds = %2019
  %2023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.i32 %2023, 0
  %2025 = and i32 %2024, 16
  %2026 = icmp eq i32 %2025, 0
  br i1 %2026, label %2225, label %2027

; <label>:2027                                    ; preds = %2022
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1863, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = add i32 %29, 416
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = add i32 %2032, 0
  %2034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2033, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2035 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2034, %dx.types.Handle %73, float %1947, float %1948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2036 = extractvalue %dx.types.ResRet.f32 %2035, 0
  %2037 = extractvalue %dx.types.ResRet.f32 %2035, 1
  %2038 = extractvalue %dx.types.ResRet.f32 %2035, 2
  %2039 = extractvalue %dx.types.ResRet.f32 %2035, 3
  %2040 = and i32 %2029, 255
  %2041 = uitofp i32 %2040 to float
  %2042 = lshr i32 %2029, 8
  %2043 = and i32 %2042, 255
  %2044 = uitofp i32 %2043 to float
  %2045 = fmul fast float %2039, %2041
  %2046 = fadd fast float %2045, %2044
  %2047 = fmul fast float %2046, 0x3F70101000000000
  %2048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.i32 %2048, 0
  %2050 = and i32 %2049, 512
  %2051 = icmp eq i32 %2050, 0
  br i1 %2051, label %2060, label %2052

; <label>:2052                                    ; preds = %2027
  %2053 = add i32 %29, 496
  %2054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2053, i32 undef)  ; BufferLoad(srv,index,wot)
  %2055 = extractvalue %dx.types.ResRet.i32 %2054, 0
  %2056 = add i32 %2055, 0
  %2057 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2056, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2058 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2057, %dx.types.Handle %74, float %1947, float %1948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2059 = extractvalue %dx.types.ResRet.f32 %2058, 0
  br label %2060

; <label>:2060                                    ; preds = %2052, %2027
  %2061 = phi float [ %2059, %2052 ], [ 1.000000e+00, %2027 ]
  %2062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.i32 %2062, 0
  %2064 = and i32 %2063, 33554432
  %2065 = icmp eq i32 %2064, 0
  br i1 %2065, label %2172, label %2066

; <label>:2066                                    ; preds = %2060
  %2067 = add i32 %29, 256
  %2068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2067, i32 undef)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.i32 %2068, 0
  %2070 = and i32 %2069, 65535
  %2071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2070)  ; LegacyF16ToF32(value)
  %2072 = lshr i32 %2069, 16
  %2073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2072)  ; LegacyF16ToF32(value)
  %2074 = add i32 %29, 260
  %2075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2074, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.i32 %2075, 0
  %2077 = and i32 %2076, 65535
  %2078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2077)  ; LegacyF16ToF32(value)
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = lshr i32 %2080, 24
  %2082 = uitofp i32 %2081 to float
  %2083 = fmul fast float %2082, 0x3F70101020000000
  %2084 = and i32 %2080, 255
  %2085 = uitofp i32 %2084 to float
  %2086 = fmul fast float %2085, 0x3F70101020000000
  %2087 = lshr i32 %2080, 8
  %2088 = and i32 %2087, 255
  %2089 = uitofp i32 %2088 to float
  %2090 = fmul fast float %2089, 0x3F70101020000000
  %2091 = lshr i32 %2080, 16
  %2092 = and i32 %2091, 255
  %2093 = uitofp i32 %2092 to float
  %2094 = fmul fast float %2093, 0x3F70101020000000
  %2095 = add i32 %29, 252
  %2096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2095, i32 undef)  ; BufferLoad(srv,index,wot)
  %2097 = extractvalue %dx.types.ResRet.i32 %2096, 0
  %2098 = lshr i32 %2097, 24
  %2099 = uitofp i32 %2098 to float
  %2100 = fmul fast float %2099, 0x3F70101020000000
  %2101 = and i32 %2097, 255
  %2102 = uitofp i32 %2101 to float
  %2103 = fmul fast float %2102, 0x3F70101020000000
  %2104 = lshr i32 %2097, 8
  %2105 = and i32 %2104, 255
  %2106 = uitofp i32 %2105 to float
  %2107 = fmul fast float %2106, 0x3F70101020000000
  %2108 = lshr i32 %2097, 16
  %2109 = and i32 %2108, 255
  %2110 = uitofp i32 %2109 to float
  %2111 = fmul fast float %2110, 0x3F70101020000000
  %2112 = bitcast float %2036 to i32
  %2113 = ashr i32 %2112, 1
  %2114 = sub nsw i32 1597463174, %2113
  %2115 = bitcast i32 %2114 to float
  %2116 = fmul fast float %2036, 5.000000e-01
  %2117 = fmul fast float %2115, %2115
  %2118 = fmul fast float %2117, %2116
  %2119 = fsub fast float 1.500000e+00, %2118
  %2120 = fmul fast float %2115, %2036
  %2121 = fmul fast float %2120, %2119
  %2122 = bitcast float %2037 to i32
  %2123 = ashr i32 %2122, 1
  %2124 = sub nsw i32 1597463174, %2123
  %2125 = bitcast i32 %2124 to float
  %2126 = fmul fast float %2037, 5.000000e-01
  %2127 = fmul fast float %2125, %2125
  %2128 = fmul fast float %2127, %2126
  %2129 = fsub fast float 1.500000e+00, %2128
  %2130 = fmul fast float %2125, %2037
  %2131 = fmul fast float %2130, %2129
  %2132 = bitcast float %2038 to i32
  %2133 = ashr i32 %2132, 1
  %2134 = sub nsw i32 1597463174, %2133
  %2135 = bitcast i32 %2134 to float
  %2136 = fmul fast float %2038, 5.000000e-01
  %2137 = fmul fast float %2135, %2135
  %2138 = fmul fast float %2137, %2136
  %2139 = fsub fast float 1.500000e+00, %2138
  %2140 = fmul fast float %2135, %2038
  %2141 = fmul fast float %2140, %2139
  %2142 = fsub fast float %2121, %2103
  %2143 = fsub fast float %2131, %2107
  %2144 = fsub fast float %2141, %2111
  %2145 = fmul fast float %2142, %2071
  %2146 = fmul fast float %2143, %2073
  %2147 = fmul fast float %2144, %2078
  %2148 = fadd fast float %2145, %2086
  %2149 = fadd fast float %2146, %2090
  %2150 = fadd fast float %2147, %2094
  %2151 = call float @dx.op.unary.f32(i32 7, float %2148)  ; Saturate(value)
  %2152 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  %2153 = call float @dx.op.unary.f32(i32 7, float %2150)  ; Saturate(value)
  %2154 = fmul fast float %2151, %2151
  %2155 = fmul fast float %2152, %2152
  %2156 = fmul fast float %2153, %2153
  %2157 = fsub fast float %2154, %2036
  %2158 = fsub fast float %2155, %2037
  %2159 = fsub fast float %2156, %2038
  %2160 = fmul fast float %2157, %2061
  %2161 = fmul fast float %2158, %2061
  %2162 = fmul fast float %2159, %2061
  %2163 = fadd fast float %2160, %2036
  %2164 = fadd fast float %2161, %2037
  %2165 = fadd fast float %2162, %2038
  %2166 = fadd fast float %2083, %2047
  %2167 = fsub fast float %2166, %2100
  %2168 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2169 = fsub fast float %2168, %2047
  %2170 = fmul fast float %2169, %2061
  %2171 = fadd fast float %2170, %2047
  br label %2225

; <label>:2172                                    ; preds = %2060
  %2173 = and i32 %2063, 134217728
  %2174 = icmp eq i32 %2173, 0
  br i1 %2174, label %2209, label %2175

; <label>:2175                                    ; preds = %2172
  %2176 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %2177 = call float @dx.op.unary.f32(i32 24, float %348)  ; Sqrt(value)
  %2178 = call float @dx.op.unary.f32(i32 24, float %352)  ; Sqrt(value)
  %2179 = fadd fast float %2176, -5.000000e-01
  %2180 = fadd fast float %2177, -5.000000e-01
  %2181 = fadd fast float %2178, -5.000000e-01
  %2182 = fmul fast float %2179, %2061
  %2183 = fmul fast float %2180, %2061
  %2184 = fmul fast float %2181, %2061
  %2185 = fadd fast float %2182, 5.000000e-01
  %2186 = fadd fast float %2183, 5.000000e-01
  %2187 = fadd fast float %2184, 5.000000e-01
  %2188 = call float @dx.op.unary.f32(i32 24, float %2036)  ; Sqrt(value)
  %2189 = call float @dx.op.unary.f32(i32 24, float %2037)  ; Sqrt(value)
  %2190 = call float @dx.op.unary.f32(i32 24, float %2038)  ; Sqrt(value)
  %2191 = fmul fast float %2185, 2.000000e+00
  %2192 = fsub fast float 1.000000e+00, %2191
  %2193 = fmul fast float %2192, %2188
  %2194 = fadd fast float %2193, %2191
  %2195 = fmul fast float %2194, %2188
  %2196 = fmul fast float %2186, 2.000000e+00
  %2197 = fsub fast float 1.000000e+00, %2196
  %2198 = fmul fast float %2197, %2189
  %2199 = fadd fast float %2198, %2196
  %2200 = fmul fast float %2199, %2189
  %2201 = fmul fast float %2187, 2.000000e+00
  %2202 = fsub fast float 1.000000e+00, %2201
  %2203 = fmul fast float %2202, %2190
  %2204 = fadd fast float %2203, %2201
  %2205 = fmul fast float %2204, %2190
  %2206 = fmul fast float %2195, %2195
  %2207 = fmul fast float %2200, %2200
  %2208 = fmul fast float %2205, %2205
  br label %2225

; <label>:2209                                    ; preds = %2172
  %2210 = fmul fast float %344, %344
  %2211 = fmul fast float %348, %348
  %2212 = fmul fast float %352, %352
  %2213 = fadd fast float %2210, -1.000000e+00
  %2214 = fadd fast float %2211, -1.000000e+00
  %2215 = fadd fast float %2212, -1.000000e+00
  %2216 = fmul fast float %2061, %2213
  %2217 = fmul fast float %2061, %2214
  %2218 = fmul fast float %2061, %2215
  %2219 = fadd fast float %2216, 1.000000e+00
  %2220 = fadd fast float %2217, 1.000000e+00
  %2221 = fadd fast float %2218, 1.000000e+00
  %2222 = fmul fast float %2219, %2036
  %2223 = fmul fast float %2220, %2037
  %2224 = fmul fast float %2221, %2038
  br label %2225

; <label>:2225                                    ; preds = %2209, %2175, %2066, %2022
  %2226 = phi float [ %2171, %2066 ], [ %2047, %2175 ], [ %2047, %2209 ], [ 0x3FA23C0BE0000000, %2022 ]
  %2227 = phi float [ %2163, %2066 ], [ %2206, %2175 ], [ %2222, %2209 ], [ 1.000000e+00, %2022 ]
  %2228 = phi float [ %2164, %2066 ], [ %2207, %2175 ], [ %2223, %2209 ], [ 1.000000e+00, %2022 ]
  %2229 = phi float [ %2165, %2066 ], [ %2208, %2175 ], [ %2224, %2209 ], [ 1.000000e+00, %2022 ]
  %2230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2231 = extractvalue %dx.types.CBufRet.i32 %2230, 1
  %2232 = and i32 %2231, 1
  %2233 = icmp ne i32 %2232, 0
  %2234 = add i32 %29, 356
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2234, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = and i32 %2236, 32
  %2238 = icmp ne i32 %2237, 0
  %2239 = and i1 %2233, %2238
  %2240 = select i1 %2239, float 1.000000e+00, float %2227
  %2241 = select i1 %2239, float 0x3FD3333340000000, float %2228
  %2242 = select i1 %2239, float 0x3FD3333340000000, float %2229
  %2243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.i32 %2243, 0
  %2245 = and i32 %2244, 32
  %2246 = icmp eq i32 %2245, 0
  br i1 %2246, label %2319, label %2247

; <label>:2247                                    ; preds = %2225
  %2248 = add i32 %29, 124
  %2249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2248, i32 undef)  ; BufferLoad(srv,index,wot)
  %2250 = extractvalue %dx.types.ResRet.i32 %2249, 0
  %2251 = add i32 %29, 432
  %2252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2251, i32 undef)  ; BufferLoad(srv,index,wot)
  %2253 = extractvalue %dx.types.ResRet.i32 %2252, 0
  %2254 = add i32 %2253, 0
  %2255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2254, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2256 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2255, %dx.types.Handle %73, float %1947, float %1948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2257 = extractvalue %dx.types.ResRet.f32 %2256, 0
  %2258 = extractvalue %dx.types.ResRet.f32 %2256, 1
  %2259 = extractvalue %dx.types.ResRet.f32 %2256, 2
  %2260 = extractvalue %dx.types.ResRet.f32 %2256, 3
  %2261 = and i32 %2250, 255
  %2262 = uitofp i32 %2261 to float
  %2263 = lshr i32 %2250, 8
  %2264 = and i32 %2263, 255
  %2265 = uitofp i32 %2264 to float
  %2266 = lshr i32 %2250, 16
  %2267 = and i32 %2266, 255
  %2268 = uitofp i32 %2267 to float
  %2269 = fmul fast float %2268, 0x3F70101000000000
  %2270 = fmul fast float %2257, %2262
  %2271 = fadd fast float %2270, %2265
  %2272 = fmul fast float %2271, 0x3F70101000000000
  %2273 = fadd fast float %2258, -5.000000e-01
  %2274 = fadd fast float %2260, -5.000000e-01
  %2275 = fmul fast float %2273, %2269
  %2276 = fmul fast float %2274, %2269
  %2277 = fadd fast float %2275, 5.000000e-01
  %2278 = fadd fast float %2276, 5.000000e-01
  %2279 = fmul fast float %2277, 2.000000e+00
  %2280 = fadd fast float %2279, -1.000000e+00
  %2281 = fmul fast float %2278, 2.000000e+00
  %2282 = fadd fast float %2281, -1.000000e+00
  %2283 = fadd fast float %2280, %2282
  %2284 = fmul fast float %2283, 5.000000e-01
  %2285 = fsub fast float %2280, %2282
  %2286 = fmul fast float %2285, 5.000000e-01
  %2287 = call float @dx.op.unary.f32(i32 6, float %2284)  ; FAbs(value)
  %2288 = fsub fast float 1.000000e+00, %2287
  %2289 = call float @dx.op.unary.f32(i32 6, float %2286)  ; FAbs(value)
  %2290 = fsub fast float %2288, %2289
  %2291 = call float @dx.op.dot3.f32(i32 55, float %2284, float %2286, float %2290, float %2284, float %2286, float %2290)  ; Dot3(ax,ay,az,bx,by,bz)
  %2292 = call float @dx.op.unary.f32(i32 25, float %2291)  ; Rsqrt(value)
  %2293 = fmul fast float %2284, %2292
  %2294 = fmul fast float %2286, %2292
  %2295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2296 = extractvalue %dx.types.ResRet.i32 %2295, 0
  %2297 = and i32 %2296, 67108864
  %2298 = icmp eq i32 %2297, 0
  br i1 %2298, label %2315, label %2299

; <label>:2299                                    ; preds = %2247
  %2300 = add i32 %29, 312
  %2301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.i32 %2301, 0
  %2303 = and i32 %2302, 65535
  %2304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2303)  ; LegacyF16ToF32(value)
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = and i32 %2306, 65535
  %2308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2307)  ; LegacyF16ToF32(value)
  %2309 = lshr i32 %2302, 16
  %2310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2309)  ; LegacyF16ToF32(value)
  %2311 = fsub fast float %2272, %2310
  %2312 = fmul fast float %2311, %2304
  %2313 = fadd fast float %2312, %2308
  %2314 = call float @dx.op.unary.f32(i32 7, float %2313)  ; Saturate(value)
  br label %2315

; <label>:2315                                    ; preds = %2299, %2247
  %2316 = phi float [ %2314, %2299 ], [ %2272, %2247 ]
  %2317 = call float @dx.op.dot2.f32(i32 54, float %2293, float %2294, float %1851, float %1852)  ; Dot2(ax,ay,bx,by)
  %2318 = call float @dx.op.dot2.f32(i32 54, float %2293, float %2294, float %1853, float %1854)  ; Dot2(ax,ay,bx,by)
  br label %2319

; <label>:2319                                    ; preds = %2315, %2225
  %2320 = phi float [ %2316, %2315 ], [ 0x3FD6666660000000, %2225 ]
  %2321 = phi float [ %2317, %2315 ], [ 0.000000e+00, %2225 ]
  %2322 = phi float [ %2318, %2315 ], [ 0.000000e+00, %2225 ]
  %2323 = phi float [ %2259, %2315 ], [ 1.000000e+00, %2225 ]
  %2324 = add i32 %29, 192
  %2325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2326 = extractvalue %dx.types.ResRet.i32 %2325, 0
  %2327 = lshr i32 %2326, 22
  %2328 = shl nuw nsw i32 %2327, 5
  %2329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2328)  ; LegacyF16ToF32(value)
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = and i32 %2331, 64
  %2333 = icmp eq i32 %2332, 0
  br i1 %2333, label %2367, label %2334

; <label>:2334                                    ; preds = %2319
  %2335 = add i32 %29, 448
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = add i32 %2337, 0
  %2339 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2338, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = and i32 %2341, 131072
  %2343 = icmp eq i32 %2342, 0
  %2344 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2339, %dx.types.Handle %73, float %1947, float %1948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2345 = extractvalue %dx.types.ResRet.f32 %2344, 0
  %2346 = extractvalue %dx.types.ResRet.f32 %2344, 1
  %2347 = extractvalue %dx.types.ResRet.f32 %2344, 2
  %2348 = fmul fast float %2345, %332
  %2349 = fmul fast float %2346, %335
  %2350 = fmul fast float %2347, %338
  br i1 %2343, label %2357, label %2351

; <label>:2351                                    ; preds = %2334
  %2352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2353 = extractvalue %dx.types.CBufRet.f32 %2352, 0
  %2354 = fmul fast float %2353, %2348
  %2355 = fmul fast float %2353, %2349
  %2356 = fmul fast float %2353, %2350
  br label %2357

; <label>:2357                                    ; preds = %2351, %2334
  %2358 = phi float [ %2354, %2351 ], [ %2348, %2334 ]
  %2359 = phi float [ %2355, %2351 ], [ %2349, %2334 ]
  %2360 = phi float [ %2356, %2351 ], [ %2350, %2334 ]
  %2361 = fmul fast float %2358, %2329
  %2362 = select i1 %231, float %2361, float %2358
  %2363 = call float @dx.op.dot3.f32(i32 55, float %2362, float %2359, float %2360, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2364 = select i1 %231, float 0.000000e+00, float %2358
  %2365 = select i1 %231, float %2363, float %2359
  %2366 = select i1 %231, float 0.000000e+00, float %2360
  br label %2367

; <label>:2367                                    ; preds = %2357, %2319
  %2368 = phi float [ %2364, %2357 ], [ 0.000000e+00, %2319 ]
  %2369 = phi float [ %2365, %2357 ], [ 0.000000e+00, %2319 ]
  %2370 = phi float [ %2366, %2357 ], [ 0.000000e+00, %2319 ]
  %2371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2372 = extractvalue %dx.types.ResRet.i32 %2371, 0
  %2373 = and i32 %2372, 10240
  %2374 = icmp eq i32 %2373, 0
  br i1 %2374, label %2419, label %2375

; <label>:2375                                    ; preds = %2367
  %2376 = add i32 %29, 512
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2376, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = add i32 %2378, 0
  %2380 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2379, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2381 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2380, %dx.types.Handle %74, float %1947, float %1948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2382 = extractvalue %dx.types.ResRet.f32 %2381, 1
  %2383 = extractvalue %dx.types.ResRet.f32 %2381, 3
  %2384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2385 = extractvalue %dx.types.ResRet.i32 %2384, 0
  %2386 = and i32 %2385, 1048576
  %2387 = icmp ne i32 %2386, 0
  %2388 = and i32 %2385, 8192
  %2389 = icmp eq i32 %2388, 0
  br i1 %2389, label %2405, label %2390

; <label>:2390                                    ; preds = %2375
  %2391 = extractvalue %dx.types.ResRet.f32 %2381, 2
  %2392 = select i1 %2387, float %2391, float %2382
  %2393 = extractvalue %dx.types.ResRet.f32 %2381, 0
  %2394 = select i1 %2387, float %2393, float %2382
  %2395 = add i32 %29, 128
  %2396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2395, i32 undef)  ; BufferLoad(srv,index,wot)
  %2397 = extractvalue %dx.types.ResRet.i32 %2396, 0
  %2398 = lshr i32 %2397, 16
  %2399 = and i32 %2398, 255
  %2400 = uitofp i32 %2399 to float
  %2401 = fmul fast float %2400, 0x3F80101020000000
  %2402 = fmul fast float %2401, %2394
  %2403 = fmul fast float %2401, %2382
  %2404 = fmul fast float %2401, %2392
  br label %2405

; <label>:2405                                    ; preds = %2390, %2375
  %2406 = phi float [ %2402, %2390 ], [ 0.000000e+00, %2375 ]
  %2407 = phi float [ %2403, %2390 ], [ 0.000000e+00, %2375 ]
  %2408 = phi float [ %2404, %2390 ], [ 0.000000e+00, %2375 ]
  %2409 = and i32 %2385, 2048
  %2410 = icmp eq i32 %2409, 0
  br i1 %2410, label %2419, label %2411

; <label>:2411                                    ; preds = %2405
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = shl i32 %2413, 4
  %2415 = and i32 %2414, 32752
  %2416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2415)  ; LegacyF16ToF32(value)
  %2417 = fmul fast float %2416, %2383
  %2418 = call float @dx.op.binary.f32(i32 35, float %2417, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2419

; <label>:2419                                    ; preds = %2411, %2405, %2367
  %2420 = phi float [ %2406, %2411 ], [ %2406, %2405 ], [ 0.000000e+00, %2367 ]
  %2421 = phi float [ %2407, %2411 ], [ %2407, %2405 ], [ 0.000000e+00, %2367 ]
  %2422 = phi float [ %2408, %2411 ], [ %2408, %2405 ], [ 0.000000e+00, %2367 ]
  %2423 = phi float [ %2418, %2411 ], [ 0x3F70101020000000, %2405 ], [ 0x3F70101020000000, %2367 ]
  %2424 = add i32 %29, 128
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2424, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = and i32 %2426, 255
  %2428 = uitofp i32 %2427 to float
  %2429 = lshr i32 %2426, 8
  %2430 = and i32 %2429, 255
  %2431 = uitofp i32 %2430 to float
  %2432 = call float @dx.op.dot3.f32(i32 55, float %2240, float %2241, float %2242, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2433 = fmul fast float %2431, %2432
  %2434 = fadd fast float %2433, %2428
  %2435 = fmul fast float %2434, 0x3F70101020000000
  %2436 = call float @dx.op.unary.f32(i32 7, float %2435)  ; Saturate(value)
  br i1 %1839, label %2437, label %2445

; <label>:2437                                    ; preds = %2419
  %2438 = fsub fast float 1.000000e+00, %2020
  %2439 = fmul fast float %2438, %1824
  %2440 = fmul fast float %2438, %1825
  %2441 = fmul fast float %2438, %1826
  %2442 = fmul fast float %2438, %1830
  %2443 = fmul fast float %2438, %1831
  %2444 = fmul fast float %2438, %1832
  br label %2445

; <label>:2445                                    ; preds = %2437, %2419
  %2446 = phi float [ %2439, %2437 ], [ %1824, %2419 ]
  %2447 = phi float [ %2440, %2437 ], [ %1825, %2419 ]
  %2448 = phi float [ %2441, %2437 ], [ %1826, %2419 ]
  %2449 = phi float [ %2442, %2437 ], [ %1830, %2419 ]
  %2450 = phi float [ %2443, %2437 ], [ %1831, %2419 ]
  %2451 = phi float [ %2444, %2437 ], [ %1832, %2419 ]
  %2452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2453 = extractvalue %dx.types.ResRet.i32 %2452, 0
  %2454 = and i32 %2453, 3
  %2455 = icmp eq i32 %2454, 3
  br i1 %2455, label %2534, label %2456

; <label>:2456                                    ; preds = %2445
  %2457 = and i32 %2453, 16
  %2458 = icmp ne i32 %2457, 0
  %2459 = select i1 %2458, float %2020, float 0.000000e+00
  %2460 = icmp eq i32 %2454, 0
  br i1 %2460, label %2461, label %2489

; <label>:2461                                    ; preds = %2456
  %2462 = and i32 %2453, 64
  %2463 = icmp ne i32 %2462, 0
  %2464 = select i1 %2463, float %2020, float 0.000000e+00
  %2465 = fsub fast float %2240, %2446
  %2466 = fsub fast float %2241, %2447
  %2467 = fsub fast float %2242, %2448
  %2468 = fmul fast float %2459, %2465
  %2469 = fmul fast float %2459, %2466
  %2470 = fmul fast float %2459, %2467
  %2471 = fadd fast float %2468, %2446
  %2472 = fadd fast float %2469, %2447
  %2473 = fadd fast float %2470, %2448
  %2474 = fsub fast float %2226, %1833
  %2475 = fmul fast float %2459, %2474
  %2476 = fadd fast float %2475, %1833
  %2477 = fsub fast float %2368, %2449
  %2478 = fsub fast float %2369, %2450
  %2479 = fsub fast float %2370, %2451
  %2480 = fmul fast float %2464, %2477
  %2481 = fmul fast float %2464, %2478
  %2482 = fmul fast float %2464, %2479
  %2483 = fadd fast float %2480, %2449
  %2484 = fadd fast float %2481, %2450
  %2485 = fadd fast float %2482, %2451
  %2486 = fsub fast float %2436, %1837
  %2487 = fmul fast float %2459, %2486
  %2488 = fadd fast float %2487, %1837
  br label %2534

; <label>:2489                                    ; preds = %2456
  %2490 = icmp eq i32 %2454, 1
  br i1 %2490, label %2491, label %2504

; <label>:2491                                    ; preds = %2489
  %2492 = fadd fast float %2240, -1.000000e+00
  %2493 = fadd fast float %2241, -1.000000e+00
  %2494 = fadd fast float %2242, -1.000000e+00
  %2495 = fmul fast float %2459, %2492
  %2496 = fmul fast float %2459, %2493
  %2497 = fmul fast float %2459, %2494
  %2498 = fadd fast float %2495, 1.000000e+00
  %2499 = fadd fast float %2496, 1.000000e+00
  %2500 = fadd fast float %2497, 1.000000e+00
  %2501 = fmul fast float %2498, %2446
  %2502 = fmul fast float %2499, %2447
  %2503 = fmul fast float %2500, %2448
  br label %2534

; <label>:2504                                    ; preds = %2489
  %2505 = icmp eq i32 %2454, 2
  br i1 %2505, label %2506, label %2534

; <label>:2506                                    ; preds = %2504
  %2507 = call float @dx.op.unary.f32(i32 24, float %2240)  ; Sqrt(value)
  %2508 = call float @dx.op.unary.f32(i32 24, float %2241)  ; Sqrt(value)
  %2509 = call float @dx.op.unary.f32(i32 24, float %2242)  ; Sqrt(value)
  %2510 = fadd fast float %2507, -5.000000e-01
  %2511 = fadd fast float %2508, -5.000000e-01
  %2512 = fadd fast float %2509, -5.000000e-01
  %2513 = fmul fast float %2510, %2459
  %2514 = fmul fast float %2511, %2459
  %2515 = fmul fast float %2512, %2459
  %2516 = fadd fast float %2513, 5.000000e-01
  %2517 = fadd fast float %2514, 5.000000e-01
  %2518 = fadd fast float %2515, 5.000000e-01
  %2519 = fmul fast float %2516, 2.000000e+00
  %2520 = fsub fast float 1.000000e+00, %2519
  %2521 = fmul fast float %2520, %2446
  %2522 = fadd fast float %2521, %2519
  %2523 = fmul fast float %2522, %2446
  %2524 = fmul fast float %2517, 2.000000e+00
  %2525 = fsub fast float 1.000000e+00, %2524
  %2526 = fmul fast float %2525, %2447
  %2527 = fadd fast float %2526, %2524
  %2528 = fmul fast float %2527, %2447
  %2529 = fmul fast float %2518, 2.000000e+00
  %2530 = fsub fast float 1.000000e+00, %2529
  %2531 = fmul fast float %2530, %2448
  %2532 = fadd fast float %2531, %2529
  %2533 = fmul fast float %2532, %2448
  br label %2534

; <label>:2534                                    ; preds = %2506, %2504, %2491, %2461, %2445
  %2535 = phi float [ %2446, %2445 ], [ %2523, %2506 ], [ %2446, %2504 ], [ %2501, %2491 ], [ %2471, %2461 ]
  %2536 = phi float [ %2447, %2445 ], [ %2528, %2506 ], [ %2447, %2504 ], [ %2502, %2491 ], [ %2472, %2461 ]
  %2537 = phi float [ %2448, %2445 ], [ %2533, %2506 ], [ %2448, %2504 ], [ %2503, %2491 ], [ %2473, %2461 ]
  %2538 = phi float [ %2449, %2445 ], [ %2449, %2506 ], [ %2449, %2504 ], [ %2449, %2491 ], [ %2483, %2461 ]
  %2539 = phi float [ %2450, %2445 ], [ %2450, %2506 ], [ %2450, %2504 ], [ %2450, %2491 ], [ %2484, %2461 ]
  %2540 = phi float [ %2451, %2445 ], [ %2451, %2506 ], [ %2451, %2504 ], [ %2451, %2491 ], [ %2485, %2461 ]
  %2541 = phi float [ %1833, %2445 ], [ %1833, %2506 ], [ %1833, %2504 ], [ %1833, %2491 ], [ %2476, %2461 ]
  %2542 = phi float [ %1837, %2445 ], [ %1837, %2506 ], [ %1837, %2504 ], [ %1837, %2491 ], [ %2488, %2461 ]
  %2543 = and i32 %2453, 12
  %2544 = icmp eq i32 %2543, 12
  br i1 %2544, label %2651, label %2545

; <label>:2545                                    ; preds = %2534
  %2546 = and i32 %2453, 2097184
  %2547 = icmp eq i32 %2546, 2097184
  %2548 = select i1 %2547, float %2020, float 0.000000e+00
  %2549 = and i32 %2453, 4194336
  %2550 = icmp eq i32 %2549, 4194336
  %2551 = select i1 %2550, float %2020, float 0.000000e+00
  %2552 = and i32 %2453, 8388640
  %2553 = icmp eq i32 %2552, 8388640
  %2554 = select i1 %2553, float %2020, float 0.000000e+00
  %2555 = and i32 %2453, 2048
  %2556 = icmp ne i32 %2555, 0
  %2557 = select i1 %2556, float %2020, float 0.000000e+00
  %2558 = and i32 %2453, 8192
  %2559 = icmp ne i32 %2558, 0
  %2560 = select i1 %2559, float %2020, float 0.000000e+00
  %2561 = icmp eq i32 %2543, 0
  br i1 %2561, label %2562, label %2587

; <label>:2562                                    ; preds = %2545
  %2563 = fsub fast float %2321, %1822
  %2564 = fsub fast float %2322, %1823
  %2565 = fmul fast float %2548, %2563
  %2566 = fmul fast float %2548, %2564
  %2567 = fadd fast float %2565, %1822
  %2568 = fadd fast float %2566, %1823
  %2569 = fsub fast float %2323, %1835
  %2570 = fmul fast float %2551, %2569
  %2571 = fadd fast float %2570, %1835
  %2572 = fsub fast float %2320, %1834
  %2573 = fmul fast float %2554, %2572
  %2574 = fadd fast float %2573, %1834
  %2575 = fsub fast float %2423, %1836
  %2576 = fmul fast float %2557, %2575
  %2577 = fadd fast float %2576, %1836
  %2578 = fsub fast float %2420, %1827
  %2579 = fsub fast float %2421, %1828
  %2580 = fsub fast float %2422, %1829
  %2581 = fmul fast float %2560, %2578
  %2582 = fmul fast float %2560, %2579
  %2583 = fmul fast float %2560, %2580
  %2584 = fadd fast float %2581, %1827
  %2585 = fadd fast float %2582, %1828
  %2586 = fadd fast float %2583, %1829
  br label %2651

; <label>:2587                                    ; preds = %2545
  %2588 = icmp eq i32 %2543, 4
  br i1 %2588, label %2589, label %2629

; <label>:2589                                    ; preds = %2587
  %2590 = fmul fast float %2548, %2321
  %2591 = fmul fast float %2548, %2322
  %2592 = fadd fast float %2590, %1822
  %2593 = fadd fast float %2591, %1823
  %2594 = call float @dx.op.binary.f32(i32 36, float %1835, float %2323)  ; FMin(a,b)
  %2595 = fsub fast float %2594, %1835
  %2596 = fmul fast float %2595, %2551
  %2597 = fadd fast float %2596, %1835
  %2598 = fadd fast float %2320, %1834
  %2599 = fmul fast float %2598, 0x3FF337FAE0000000
  %2600 = fmul fast float %1834, %1834
  %2601 = fmul fast float %2320, %2320
  %2602 = fadd fast float %2601, %2600
  %2603 = fmul fast float %2602, 0x3FE5152B00000000
  %2604 = fmul fast float %1834, 0xBFCC1F85E0000000
  %2605 = fmul fast float %2604, %2320
  %2606 = fadd fast float %2605, 0xBFE1363700000000
  %2607 = fadd fast float %2606, %2599
  %2608 = fsub fast float %2607, %2603
  %2609 = fmul fast float %2598, 0x3FBA6F0D00000000
  %2610 = fmul fast float %2602, 0x3FD0432880000000
  %2611 = fmul fast float %1834, 0xBFEF110800000000
  %2612 = fmul fast float %2611, %2320
  %2613 = fadd fast float %2612, 1.000000e+00
  %2614 = fsub fast float %2613, %2609
  %2615 = fadd fast float %2614, %2610
  %2616 = fdiv fast float %2608, %2615
  %2617 = call float @dx.op.unary.f32(i32 7, float %2616)  ; Saturate(value)
  %2618 = fsub fast float %2617, %1834
  %2619 = fmul fast float %2618, %2554
  %2620 = fadd fast float %2619, %1834
  %2621 = fmul fast float %2557, %2423
  %2622 = fadd fast float %2621, %1836
  %2623 = fmul fast float %2560, %2420
  %2624 = fmul fast float %2560, %2421
  %2625 = fmul fast float %2560, %2422
  %2626 = fadd fast float %2623, %1827
  %2627 = fadd fast float %2624, %1828
  %2628 = fadd fast float %2625, %1829
  br label %2651

; <label>:2629                                    ; preds = %2587
  %2630 = icmp eq i32 %2543, 8
  br i1 %2630, label %2631, label %2651

; <label>:2631                                    ; preds = %2629
  %2632 = fmul fast float %2548, %2321
  %2633 = fmul fast float %2548, %2322
  %2634 = fadd fast float %2632, %1822
  %2635 = fadd fast float %2633, %1823
  %2636 = call float @dx.op.binary.f32(i32 36, float %1835, float %2323)  ; FMin(a,b)
  %2637 = fsub fast float %2636, %1835
  %2638 = fmul fast float %2637, %2551
  %2639 = fadd fast float %2638, %1835
  %2640 = fsub fast float %2320, %1834
  %2641 = fmul fast float %2554, %2640
  %2642 = fadd fast float %2641, %1834
  %2643 = fmul fast float %2557, %2423
  %2644 = fadd fast float %2643, %1836
  %2645 = fmul fast float %2560, %2420
  %2646 = fmul fast float %2560, %2421
  %2647 = fmul fast float %2560, %2422
  %2648 = fadd fast float %2645, %1827
  %2649 = fadd fast float %2646, %1828
  %2650 = fadd fast float %2647, %1829
  br label %2651

; <label>:2651                                    ; preds = %2631, %2629, %2589, %2562, %2534, %2019, %1838, %1821
  %2652 = phi float [ %1822, %2534 ], [ %1822, %2019 ], [ %1822, %1821 ], [ %2634, %2631 ], [ %1822, %2629 ], [ %2592, %2589 ], [ %2567, %2562 ], [ %1822, %1838 ]
  %2653 = phi float [ %1823, %2534 ], [ %1823, %2019 ], [ %1823, %1821 ], [ %2635, %2631 ], [ %1823, %2629 ], [ %2593, %2589 ], [ %2568, %2562 ], [ %1823, %1838 ]
  %2654 = phi float [ %2535, %2534 ], [ %1824, %2019 ], [ %1824, %1821 ], [ %2535, %2631 ], [ %2535, %2629 ], [ %2535, %2589 ], [ %2535, %2562 ], [ %1824, %1838 ]
  %2655 = phi float [ %2536, %2534 ], [ %1825, %2019 ], [ %1825, %1821 ], [ %2536, %2631 ], [ %2536, %2629 ], [ %2536, %2589 ], [ %2536, %2562 ], [ %1825, %1838 ]
  %2656 = phi float [ %2537, %2534 ], [ %1826, %2019 ], [ %1826, %1821 ], [ %2537, %2631 ], [ %2537, %2629 ], [ %2537, %2589 ], [ %2537, %2562 ], [ %1826, %1838 ]
  %2657 = phi float [ %1827, %2534 ], [ %1827, %2019 ], [ %1827, %1821 ], [ %2648, %2631 ], [ %1827, %2629 ], [ %2626, %2589 ], [ %2584, %2562 ], [ %1827, %1838 ]
  %2658 = phi float [ %1828, %2534 ], [ %1828, %2019 ], [ %1828, %1821 ], [ %2649, %2631 ], [ %1828, %2629 ], [ %2627, %2589 ], [ %2585, %2562 ], [ %1828, %1838 ]
  %2659 = phi float [ %1829, %2534 ], [ %1829, %2019 ], [ %1829, %1821 ], [ %2650, %2631 ], [ %1829, %2629 ], [ %2628, %2589 ], [ %2586, %2562 ], [ %1829, %1838 ]
  %2660 = phi float [ %2538, %2534 ], [ %1830, %2019 ], [ %1830, %1821 ], [ %2538, %2631 ], [ %2538, %2629 ], [ %2538, %2589 ], [ %2538, %2562 ], [ %1830, %1838 ]
  %2661 = phi float [ %2539, %2534 ], [ %1831, %2019 ], [ %1831, %1821 ], [ %2539, %2631 ], [ %2539, %2629 ], [ %2539, %2589 ], [ %2539, %2562 ], [ %1831, %1838 ]
  %2662 = phi float [ %2540, %2534 ], [ %1832, %2019 ], [ %1832, %1821 ], [ %2540, %2631 ], [ %2540, %2629 ], [ %2540, %2589 ], [ %2540, %2562 ], [ %1832, %1838 ]
  %2663 = phi float [ %2541, %2534 ], [ %1833, %2019 ], [ %1833, %1821 ], [ %2541, %2631 ], [ %2541, %2629 ], [ %2541, %2589 ], [ %2541, %2562 ], [ %1833, %1838 ]
  %2664 = phi float [ %1834, %2534 ], [ %1834, %2019 ], [ %1834, %1821 ], [ %2642, %2631 ], [ %1834, %2629 ], [ %2620, %2589 ], [ %2574, %2562 ], [ %1834, %1838 ]
  %2665 = phi float [ %1835, %2534 ], [ %1835, %2019 ], [ %1835, %1821 ], [ %2639, %2631 ], [ %1835, %2629 ], [ %2597, %2589 ], [ %2571, %2562 ], [ %1835, %1838 ]
  %2666 = phi float [ %1836, %2534 ], [ %1836, %2019 ], [ %1836, %1821 ], [ %2644, %2631 ], [ %1836, %2629 ], [ %2622, %2589 ], [ %2577, %2562 ], [ %1836, %1838 ]
  %2667 = phi float [ %2542, %2534 ], [ %1837, %2019 ], [ %1837, %1821 ], [ %2542, %2631 ], [ %2542, %2629 ], [ %2542, %2589 ], [ %2542, %2562 ], [ %1837, %1838 ]
  br i1 %419, label %3481, label %2668

; <label>:2668                                    ; preds = %2651
  %2669 = icmp ult i32 %470, 4
  %2670 = add i32 %29, 72
  %2671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %2672 = extractvalue %dx.types.ResRet.i32 %2671, 0
  %2673 = add i32 %29, 76
  %2674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2673, i32 undef)  ; BufferLoad(srv,index,wot)
  %2675 = extractvalue %dx.types.ResRet.i32 %2674, 0
  %2676 = or i32 %2675, %2672
  %2677 = icmp eq i32 %2676, 0
  br i1 %2677, label %3481, label %2678

; <label>:2678                                    ; preds = %2668
  %2679 = and i32 %2672, 262144
  %2680 = icmp ne i32 %2679, 0
  %2681 = select i1 %2680, float %33, float 1.000000e+00
  %2682 = select i1 %2680, float %34, float 0.000000e+00
  %2683 = select i1 %2680, float %35, float 0.000000e+00
  %2684 = select i1 %2680, float %36, float 1.000000e+00
  %2685 = select i1 %2680, float %37, float %65
  %2686 = select i1 %2680, float %38, float %66
  %2687 = add i32 %29, 332
  %2688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2687, i32 undef)  ; BufferLoad(srv,index,wot)
  %2689 = extractvalue %dx.types.ResRet.i32 %2688, 0
  %2690 = lshr i32 %2689, 16
  %2691 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2690)  ; LegacyF16ToF32(value)
  %2692 = fmul fast float %2691, 0x3F50624DE0000000
  %2693 = add i32 %29, 136
  %2694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2693, i32 undef)  ; BufferLoad(srv,index,wot)
  %2695 = extractvalue %dx.types.ResRet.i32 %2694, 0
  %2696 = lshr i32 %2695, 16
  %2697 = and i32 %2696, 255
  %2698 = lshr i32 %2695, 24
  %2699 = add i32 %29, 340
  %2700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2699, i32 undef)  ; BufferLoad(srv,index,wot)
  %2701 = extractvalue %dx.types.ResRet.i32 %2700, 0
  %2702 = and i32 %2701, 65535
  %2703 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2702)  ; LegacyF16ToF32(value)
  %2704 = lshr i32 %2701, 16
  %2705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2704)  ; LegacyF16ToF32(value)
  %2706 = add i32 %29, 80
  %2707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2708 = extractvalue %dx.types.ResRet.i32 %2707, 0
  %2709 = lshr i32 %2708, 22
  %2710 = shl nuw nsw i32 %2709, 5
  %2711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2710)  ; LegacyF16ToF32(value)
  %2712 = shl i32 %2708, 4
  %2713 = and i32 %2712, 32752
  %2714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2713)  ; LegacyF16ToF32(value)
  %2715 = lshr i32 %2708, 7
  %2716 = and i32 %2715, 32752
  %2717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2716)  ; LegacyF16ToF32(value)
  %2718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2719 = extractvalue %dx.types.CBufRet.f32 %2718, 3
  %2720 = fmul fast float %2719, 1.000000e+03
  %2721 = fmul fast float %409, %2720
  %2722 = call float @dx.op.unary.f32(i32 22, float %2721)  ; Frc(value)
  %2723 = fadd fast float %2722, %399
  %2724 = fmul fast float %410, %2720
  %2725 = call float @dx.op.unary.f32(i32 22, float %2724)  ; Frc(value)
  %2726 = fadd fast float %2725, %401
  %2727 = fmul fast float %2692, %2720
  %2728 = call float @dx.op.unary.f32(i32 22, float %2727)  ; Frc(value)
  %2729 = fmul fast float %2728, 0x401921FB60000000
  %2730 = fadd fast float %2729, %2711
  %2731 = call float @dx.op.unary.f32(i32 13, float %2730)  ; Sin(value)
  %2732 = call float @dx.op.unary.f32(i32 12, float %2730)  ; Cos(value)
  %2733 = fsub fast float -0.000000e+00, %2731
  %2734 = fadd fast float %2685, -5.000000e-01
  %2735 = fadd fast float %2686, -5.000000e-01
  %2736 = fmul fast float %2703, %2734
  %2737 = fmul fast float %2705, %2735
  %2738 = fadd fast float %2736, 5.000000e-01
  %2739 = fadd fast float %2737, 5.000000e-01
  %2740 = fmul fast float %2714, %2738
  %2741 = fmul fast float %2717, %2739
  %2742 = fmul fast float %2732, %2740
  %2743 = call float @dx.op.tertiary.f32(i32 46, float %2733, float %2741, float %2742)  ; FMad(a,b,c)
  %2744 = fmul fast float %2731, %2740
  %2745 = call float @dx.op.tertiary.f32(i32 46, float %2732, float %2741, float %2744)  ; FMad(a,b,c)
  %2746 = fadd fast float %2723, %2743
  %2747 = fadd fast float %2726, %2745
  %2748 = icmp ugt i32 %2697, 1
  %2749 = icmp ugt i32 %2695, 33554431
  %2750 = or i1 %2749, %2748
  br i1 %2750, label %2751, label %2776

; <label>:2751                                    ; preds = %2678
  %2752 = add i32 %29, 276
  %2753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2754 = extractvalue %dx.types.ResRet.i32 %2753, 0
  %2755 = lshr i32 %2754, 16
  %2756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2755)  ; LegacyF16ToF32(value)
  %2757 = fmul fast float %2719, %2756
  %2758 = call float @dx.op.unary.f32(i32 22, float %2757)  ; Frc(value)
  %2759 = mul nuw nsw i32 %2697, %2698
  %2760 = uitofp i32 %2759 to float
  %2761 = fmul fast float %2758, %2760
  %2762 = call float @dx.op.unary.f32(i32 27, float %2761)  ; Round_ni(value)
  %2763 = fptoui float %2762 to i32
  %2764 = urem i32 %2763, %2697
  %2765 = udiv i32 %2763, %2698
  %2766 = call float @dx.op.unary.f32(i32 22, float %2746)  ; Frc(value)
  %2767 = call float @dx.op.unary.f32(i32 22, float %2747)  ; Frc(value)
  %2768 = uitofp i32 %2764 to float
  %2769 = uitofp i32 %2765 to float
  %2770 = fadd fast float %2766, %2768
  %2771 = fadd fast float %2767, %2769
  %2772 = uitofp i32 %2697 to float
  %2773 = uitofp i32 %2698 to float
  %2774 = fdiv fast float %2770, %2772
  %2775 = fdiv fast float %2771, %2773
  br label %2776

; <label>:2776                                    ; preds = %2751, %2678
  %2777 = phi float [ %2774, %2751 ], [ %2746, %2678 ]
  %2778 = phi float [ %2775, %2751 ], [ %2747, %2678 ]
  %2779 = and i32 %2672, 256
  %2780 = icmp eq i32 %2779, 0
  br i1 %2780, label %2827, label %2781

; <label>:2781                                    ; preds = %2776
  %2782 = add i32 %29, 484
  %2783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2782, i32 undef)  ; BufferLoad(srv,index,wot)
  %2784 = extractvalue %dx.types.ResRet.i32 %2783, 0
  %2785 = add i32 %2784, 0
  %2786 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2785, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2787 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2786, %dx.types.Handle %74, float %2777, float %2778, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2788 = extractvalue %dx.types.ResRet.f32 %2787, 0
  %2789 = add i32 %29, 148
  %2790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2789, i32 undef)  ; BufferLoad(srv,index,wot)
  %2791 = extractvalue %dx.types.ResRet.i32 %2790, 0
  %2792 = shl i32 %2791, 4
  %2793 = and i32 %2792, 32752
  %2794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2793)  ; LegacyF16ToF32(value)
  %2795 = lshr i32 %2791, 7
  %2796 = and i32 %2795, 32752
  %2797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2796)  ; LegacyF16ToF32(value)
  %2798 = fsub fast float 1.000000e+00, %465
  %2799 = call float @dx.op.binary.f32(i32 35, float %2798, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2800 = bitcast float %465 to i32
  %2801 = sitofp i32 %2800 to float
  %2802 = fadd fast float %2801, 0xC1CFBF8940000000
  %2803 = fmul fast float %2797, %2802
  %2804 = fadd fast float %2803, 0x41CFBF8940000000
  %2805 = fptosi float %2804 to i32
  %2806 = bitcast i32 %2805 to float
  %2807 = bitcast float %2799 to i32
  %2808 = sitofp i32 %2807 to float
  %2809 = fadd fast float %2808, 0xC1CFBF8940000000
  %2810 = fmul fast float %2809, %2797
  %2811 = fadd fast float %2810, 0x41CFBF8940000000
  %2812 = fptosi float %2811 to i32
  %2813 = bitcast i32 %2812 to float
  %2814 = fmul fast float %2806, %2794
  %2815 = fmul fast float %2813, %2794
  %2816 = fsub fast float %2799, %2814
  %2817 = fadd fast float %2815, %2799
  %2818 = call float @dx.op.unary.f32(i32 7, float %2816)  ; Saturate(value)
  %2819 = call float @dx.op.unary.f32(i32 7, float %2817)  ; Saturate(value)
  %2820 = fsub fast float %2788, %2818
  %2821 = fsub fast float %2819, %2818
  %2822 = bitcast float %2821 to i32
  %2823 = sub nsw i32 2129859010, %2822
  %2824 = bitcast i32 %2823 to float
  %2825 = fmul fast float %2824, %2820
  %2826 = call float @dx.op.unary.f32(i32 7, float %2825)  ; Saturate(value)
  br label %2827

; <label>:2827                                    ; preds = %2781, %2776
  %2828 = phi float [ %2826, %2781 ], [ %465, %2776 ]
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = and i32 %2830, 128
  %2832 = icmp eq i32 %2831, 0
  br i1 %2832, label %2849, label %2833

; <label>:2833                                    ; preds = %2827
  %2834 = add i32 %29, 468
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = add i32 %2836, 0
  %2838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2837, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2839 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2838, %dx.types.Handle %74, float %2777, float %2778, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2840 = extractvalue %dx.types.ResRet.f32 %2839, 0
  %2841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.i32 %2841, 0
  %2843 = and i32 %2842, 524288
  %2844 = icmp ne i32 %2843, 0
  %2845 = fcmp fast ogt float %2840, 0x3FE0101020000000
  %2846 = select i1 %2845, float 1.000000e+00, float 0.000000e+00
  %2847 = select i1 %2844, float %2846, float %2840
  %2848 = fmul fast float %2847, %2828
  br label %2849

; <label>:2849                                    ; preds = %2833, %2827
  %2850 = phi float [ %2848, %2833 ], [ %2828, %2827 ]
  %2851 = fcmp fast ult float %2850, 0x3F70101020000000
  br i1 %2851, label %3481, label %2852

; <label>:2852                                    ; preds = %2849
  %2853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %2854 = extractvalue %dx.types.ResRet.i32 %2853, 0
  %2855 = and i32 %2854, 16
  %2856 = icmp eq i32 %2855, 0
  br i1 %2856, label %3055, label %2857

; <label>:2857                                    ; preds = %2852
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2693, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = add i32 %29, 420
  %2861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2860, i32 undef)  ; BufferLoad(srv,index,wot)
  %2862 = extractvalue %dx.types.ResRet.i32 %2861, 0
  %2863 = add i32 %2862, 0
  %2864 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2863, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2865 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2864, %dx.types.Handle %73, float %2777, float %2778, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2866 = extractvalue %dx.types.ResRet.f32 %2865, 0
  %2867 = extractvalue %dx.types.ResRet.f32 %2865, 1
  %2868 = extractvalue %dx.types.ResRet.f32 %2865, 2
  %2869 = extractvalue %dx.types.ResRet.f32 %2865, 3
  %2870 = and i32 %2859, 255
  %2871 = uitofp i32 %2870 to float
  %2872 = lshr i32 %2859, 8
  %2873 = and i32 %2872, 255
  %2874 = uitofp i32 %2873 to float
  %2875 = fmul fast float %2869, %2871
  %2876 = fadd fast float %2875, %2874
  %2877 = fmul fast float %2876, 0x3F70101000000000
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = and i32 %2879, 512
  %2881 = icmp eq i32 %2880, 0
  br i1 %2881, label %2890, label %2882

; <label>:2882                                    ; preds = %2857
  %2883 = add i32 %29, 500
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = add i32 %2885, 0
  %2887 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2886, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2888 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2887, %dx.types.Handle %74, float %2777, float %2778, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2889 = extractvalue %dx.types.ResRet.f32 %2888, 0
  br label %2890

; <label>:2890                                    ; preds = %2882, %2857
  %2891 = phi float [ %2889, %2882 ], [ 1.000000e+00, %2857 ]
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = and i32 %2893, 33554432
  %2895 = icmp eq i32 %2894, 0
  br i1 %2895, label %3002, label %2896

; <label>:2896                                    ; preds = %2890
  %2897 = add i32 %29, 272
  %2898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2897, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.i32 %2898, 0
  %2900 = and i32 %2899, 65535
  %2901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2900)  ; LegacyF16ToF32(value)
  %2902 = lshr i32 %2899, 16
  %2903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2902)  ; LegacyF16ToF32(value)
  %2904 = add i32 %29, 276
  %2905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2904, i32 undef)  ; BufferLoad(srv,index,wot)
  %2906 = extractvalue %dx.types.ResRet.i32 %2905, 0
  %2907 = and i32 %2906, 65535
  %2908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2907)  ; LegacyF16ToF32(value)
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = lshr i32 %2910, 24
  %2912 = uitofp i32 %2911 to float
  %2913 = fmul fast float %2912, 0x3F70101020000000
  %2914 = and i32 %2910, 255
  %2915 = uitofp i32 %2914 to float
  %2916 = fmul fast float %2915, 0x3F70101020000000
  %2917 = lshr i32 %2910, 8
  %2918 = and i32 %2917, 255
  %2919 = uitofp i32 %2918 to float
  %2920 = fmul fast float %2919, 0x3F70101020000000
  %2921 = lshr i32 %2910, 16
  %2922 = and i32 %2921, 255
  %2923 = uitofp i32 %2922 to float
  %2924 = fmul fast float %2923, 0x3F70101020000000
  %2925 = add i32 %29, 268
  %2926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %2927 = extractvalue %dx.types.ResRet.i32 %2926, 0
  %2928 = lshr i32 %2927, 24
  %2929 = uitofp i32 %2928 to float
  %2930 = fmul fast float %2929, 0x3F70101020000000
  %2931 = and i32 %2927, 255
  %2932 = uitofp i32 %2931 to float
  %2933 = fmul fast float %2932, 0x3F70101020000000
  %2934 = lshr i32 %2927, 8
  %2935 = and i32 %2934, 255
  %2936 = uitofp i32 %2935 to float
  %2937 = fmul fast float %2936, 0x3F70101020000000
  %2938 = lshr i32 %2927, 16
  %2939 = and i32 %2938, 255
  %2940 = uitofp i32 %2939 to float
  %2941 = fmul fast float %2940, 0x3F70101020000000
  %2942 = bitcast float %2866 to i32
  %2943 = ashr i32 %2942, 1
  %2944 = sub nsw i32 1597463174, %2943
  %2945 = bitcast i32 %2944 to float
  %2946 = fmul fast float %2866, 5.000000e-01
  %2947 = fmul fast float %2945, %2945
  %2948 = fmul fast float %2947, %2946
  %2949 = fsub fast float 1.500000e+00, %2948
  %2950 = fmul fast float %2945, %2866
  %2951 = fmul fast float %2950, %2949
  %2952 = bitcast float %2867 to i32
  %2953 = ashr i32 %2952, 1
  %2954 = sub nsw i32 1597463174, %2953
  %2955 = bitcast i32 %2954 to float
  %2956 = fmul fast float %2867, 5.000000e-01
  %2957 = fmul fast float %2955, %2955
  %2958 = fmul fast float %2957, %2956
  %2959 = fsub fast float 1.500000e+00, %2958
  %2960 = fmul fast float %2955, %2867
  %2961 = fmul fast float %2960, %2959
  %2962 = bitcast float %2868 to i32
  %2963 = ashr i32 %2962, 1
  %2964 = sub nsw i32 1597463174, %2963
  %2965 = bitcast i32 %2964 to float
  %2966 = fmul fast float %2868, 5.000000e-01
  %2967 = fmul fast float %2965, %2965
  %2968 = fmul fast float %2967, %2966
  %2969 = fsub fast float 1.500000e+00, %2968
  %2970 = fmul fast float %2965, %2868
  %2971 = fmul fast float %2970, %2969
  %2972 = fsub fast float %2951, %2933
  %2973 = fsub fast float %2961, %2937
  %2974 = fsub fast float %2971, %2941
  %2975 = fmul fast float %2972, %2901
  %2976 = fmul fast float %2973, %2903
  %2977 = fmul fast float %2974, %2908
  %2978 = fadd fast float %2975, %2916
  %2979 = fadd fast float %2976, %2920
  %2980 = fadd fast float %2977, %2924
  %2981 = call float @dx.op.unary.f32(i32 7, float %2978)  ; Saturate(value)
  %2982 = call float @dx.op.unary.f32(i32 7, float %2979)  ; Saturate(value)
  %2983 = call float @dx.op.unary.f32(i32 7, float %2980)  ; Saturate(value)
  %2984 = fmul fast float %2981, %2981
  %2985 = fmul fast float %2982, %2982
  %2986 = fmul fast float %2983, %2983
  %2987 = fsub fast float %2984, %2866
  %2988 = fsub fast float %2985, %2867
  %2989 = fsub fast float %2986, %2868
  %2990 = fmul fast float %2987, %2891
  %2991 = fmul fast float %2988, %2891
  %2992 = fmul fast float %2989, %2891
  %2993 = fadd fast float %2990, %2866
  %2994 = fadd fast float %2991, %2867
  %2995 = fadd fast float %2992, %2868
  %2996 = fadd fast float %2913, %2877
  %2997 = fsub fast float %2996, %2930
  %2998 = call float @dx.op.unary.f32(i32 7, float %2997)  ; Saturate(value)
  %2999 = fsub fast float %2998, %2877
  %3000 = fmul fast float %2999, %2891
  %3001 = fadd fast float %3000, %2877
  br label %3055

; <label>:3002                                    ; preds = %2890
  %3003 = and i32 %2893, 134217728
  %3004 = icmp eq i32 %3003, 0
  br i1 %3004, label %3039, label %3005

; <label>:3005                                    ; preds = %3002
  %3006 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %3007 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %3008 = call float @dx.op.unary.f32(i32 24, float %394)  ; Sqrt(value)
  %3009 = fadd fast float %3006, -5.000000e-01
  %3010 = fadd fast float %3007, -5.000000e-01
  %3011 = fadd fast float %3008, -5.000000e-01
  %3012 = fmul fast float %3009, %2891
  %3013 = fmul fast float %3010, %2891
  %3014 = fmul fast float %3011, %2891
  %3015 = fadd fast float %3012, 5.000000e-01
  %3016 = fadd fast float %3013, 5.000000e-01
  %3017 = fadd fast float %3014, 5.000000e-01
  %3018 = call float @dx.op.unary.f32(i32 24, float %2866)  ; Sqrt(value)
  %3019 = call float @dx.op.unary.f32(i32 24, float %2867)  ; Sqrt(value)
  %3020 = call float @dx.op.unary.f32(i32 24, float %2868)  ; Sqrt(value)
  %3021 = fmul fast float %3015, 2.000000e+00
  %3022 = fsub fast float 1.000000e+00, %3021
  %3023 = fmul fast float %3022, %3018
  %3024 = fadd fast float %3023, %3021
  %3025 = fmul fast float %3024, %3018
  %3026 = fmul fast float %3016, 2.000000e+00
  %3027 = fsub fast float 1.000000e+00, %3026
  %3028 = fmul fast float %3027, %3019
  %3029 = fadd fast float %3028, %3026
  %3030 = fmul fast float %3029, %3019
  %3031 = fmul fast float %3017, 2.000000e+00
  %3032 = fsub fast float 1.000000e+00, %3031
  %3033 = fmul fast float %3032, %3020
  %3034 = fadd fast float %3033, %3031
  %3035 = fmul fast float %3034, %3020
  %3036 = fmul fast float %3025, %3025
  %3037 = fmul fast float %3030, %3030
  %3038 = fmul fast float %3035, %3035
  br label %3055

; <label>:3039                                    ; preds = %3002
  %3040 = fmul fast float %386, %386
  %3041 = fmul fast float %390, %390
  %3042 = fmul fast float %394, %394
  %3043 = fadd fast float %3040, -1.000000e+00
  %3044 = fadd fast float %3041, -1.000000e+00
  %3045 = fadd fast float %3042, -1.000000e+00
  %3046 = fmul fast float %2891, %3043
  %3047 = fmul fast float %2891, %3044
  %3048 = fmul fast float %2891, %3045
  %3049 = fadd fast float %3046, 1.000000e+00
  %3050 = fadd fast float %3047, 1.000000e+00
  %3051 = fadd fast float %3048, 1.000000e+00
  %3052 = fmul fast float %3049, %2866
  %3053 = fmul fast float %3050, %2867
  %3054 = fmul fast float %3051, %2868
  br label %3055

; <label>:3055                                    ; preds = %3039, %3005, %2896, %2852
  %3056 = phi float [ %3001, %2896 ], [ %2877, %3005 ], [ %2877, %3039 ], [ 0x3FA23C0BE0000000, %2852 ]
  %3057 = phi float [ %2993, %2896 ], [ %3036, %3005 ], [ %3052, %3039 ], [ 1.000000e+00, %2852 ]
  %3058 = phi float [ %2994, %2896 ], [ %3037, %3005 ], [ %3053, %3039 ], [ 1.000000e+00, %2852 ]
  %3059 = phi float [ %2995, %2896 ], [ %3038, %3005 ], [ %3054, %3039 ], [ 1.000000e+00, %2852 ]
  %3060 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3061 = extractvalue %dx.types.CBufRet.i32 %3060, 1
  %3062 = and i32 %3061, 1
  %3063 = icmp ne i32 %3062, 0
  %3064 = add i32 %29, 356
  %3065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3064, i32 undef)  ; BufferLoad(srv,index,wot)
  %3066 = extractvalue %dx.types.ResRet.i32 %3065, 0
  %3067 = and i32 %3066, 32
  %3068 = icmp ne i32 %3067, 0
  %3069 = and i1 %3063, %3068
  %3070 = select i1 %3069, float 1.000000e+00, float %3057
  %3071 = select i1 %3069, float 0x3FD3333340000000, float %3058
  %3072 = select i1 %3069, float 0x3FD3333340000000, float %3059
  %3073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3074 = extractvalue %dx.types.ResRet.i32 %3073, 0
  %3075 = and i32 %3074, 32
  %3076 = icmp eq i32 %3075, 0
  br i1 %3076, label %3149, label %3077

; <label>:3077                                    ; preds = %3055
  %3078 = add i32 %29, 140
  %3079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3078, i32 undef)  ; BufferLoad(srv,index,wot)
  %3080 = extractvalue %dx.types.ResRet.i32 %3079, 0
  %3081 = add i32 %29, 436
  %3082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3083 = extractvalue %dx.types.ResRet.i32 %3082, 0
  %3084 = add i32 %3083, 0
  %3085 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3084, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3086 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3085, %dx.types.Handle %73, float %2777, float %2778, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3087 = extractvalue %dx.types.ResRet.f32 %3086, 0
  %3088 = extractvalue %dx.types.ResRet.f32 %3086, 1
  %3089 = extractvalue %dx.types.ResRet.f32 %3086, 2
  %3090 = extractvalue %dx.types.ResRet.f32 %3086, 3
  %3091 = and i32 %3080, 255
  %3092 = uitofp i32 %3091 to float
  %3093 = lshr i32 %3080, 8
  %3094 = and i32 %3093, 255
  %3095 = uitofp i32 %3094 to float
  %3096 = lshr i32 %3080, 16
  %3097 = and i32 %3096, 255
  %3098 = uitofp i32 %3097 to float
  %3099 = fmul fast float %3098, 0x3F70101000000000
  %3100 = fmul fast float %3087, %3092
  %3101 = fadd fast float %3100, %3095
  %3102 = fmul fast float %3101, 0x3F70101000000000
  %3103 = fadd fast float %3088, -5.000000e-01
  %3104 = fadd fast float %3090, -5.000000e-01
  %3105 = fmul fast float %3103, %3099
  %3106 = fmul fast float %3104, %3099
  %3107 = fadd fast float %3105, 5.000000e-01
  %3108 = fadd fast float %3106, 5.000000e-01
  %3109 = fmul fast float %3107, 2.000000e+00
  %3110 = fadd fast float %3109, -1.000000e+00
  %3111 = fmul fast float %3108, 2.000000e+00
  %3112 = fadd fast float %3111, -1.000000e+00
  %3113 = fadd fast float %3110, %3112
  %3114 = fmul fast float %3113, 5.000000e-01
  %3115 = fsub fast float %3110, %3112
  %3116 = fmul fast float %3115, 5.000000e-01
  %3117 = call float @dx.op.unary.f32(i32 6, float %3114)  ; FAbs(value)
  %3118 = fsub fast float 1.000000e+00, %3117
  %3119 = call float @dx.op.unary.f32(i32 6, float %3116)  ; FAbs(value)
  %3120 = fsub fast float %3118, %3119
  %3121 = call float @dx.op.dot3.f32(i32 55, float %3114, float %3116, float %3120, float %3114, float %3116, float %3120)  ; Dot3(ax,ay,az,bx,by,bz)
  %3122 = call float @dx.op.unary.f32(i32 25, float %3121)  ; Rsqrt(value)
  %3123 = fmul fast float %3114, %3122
  %3124 = fmul fast float %3116, %3122
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = and i32 %3126, 67108864
  %3128 = icmp eq i32 %3127, 0
  br i1 %3128, label %3145, label %3129

; <label>:3129                                    ; preds = %3077
  %3130 = add i32 %29, 328
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = and i32 %3132, 65535
  %3134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3133)  ; LegacyF16ToF32(value)
  %3135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2687, i32 undef)  ; BufferLoad(srv,index,wot)
  %3136 = extractvalue %dx.types.ResRet.i32 %3135, 0
  %3137 = and i32 %3136, 65535
  %3138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3137)  ; LegacyF16ToF32(value)
  %3139 = lshr i32 %3132, 16
  %3140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3139)  ; LegacyF16ToF32(value)
  %3141 = fsub fast float %3102, %3140
  %3142 = fmul fast float %3141, %3134
  %3143 = fadd fast float %3142, %3138
  %3144 = call float @dx.op.unary.f32(i32 7, float %3143)  ; Saturate(value)
  br label %3145

; <label>:3145                                    ; preds = %3129, %3077
  %3146 = phi float [ %3144, %3129 ], [ %3102, %3077 ]
  %3147 = call float @dx.op.dot2.f32(i32 54, float %3123, float %3124, float %2681, float %2682)  ; Dot2(ax,ay,bx,by)
  %3148 = call float @dx.op.dot2.f32(i32 54, float %3123, float %3124, float %2683, float %2684)  ; Dot2(ax,ay,bx,by)
  br label %3149

; <label>:3149                                    ; preds = %3145, %3055
  %3150 = phi float [ %3146, %3145 ], [ 0x3FD6666660000000, %3055 ]
  %3151 = phi float [ %3147, %3145 ], [ 0.000000e+00, %3055 ]
  %3152 = phi float [ %3148, %3145 ], [ 0.000000e+00, %3055 ]
  %3153 = phi float [ %3089, %3145 ], [ 1.000000e+00, %3055 ]
  %3154 = add i32 %29, 208
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3154, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = lshr i32 %3156, 22
  %3158 = shl nuw nsw i32 %3157, 5
  %3159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3158)  ; LegacyF16ToF32(value)
  %3160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.i32 %3160, 0
  %3162 = and i32 %3161, 64
  %3163 = icmp eq i32 %3162, 0
  br i1 %3163, label %3197, label %3164

; <label>:3164                                    ; preds = %3149
  %3165 = add i32 %29, 452
  %3166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3165, i32 undef)  ; BufferLoad(srv,index,wot)
  %3167 = extractvalue %dx.types.ResRet.i32 %3166, 0
  %3168 = add i32 %3167, 0
  %3169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3168, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3171 = extractvalue %dx.types.ResRet.i32 %3170, 0
  %3172 = and i32 %3171, 131072
  %3173 = icmp eq i32 %3172, 0
  %3174 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3169, %dx.types.Handle %73, float %2777, float %2778, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3175 = extractvalue %dx.types.ResRet.f32 %3174, 0
  %3176 = extractvalue %dx.types.ResRet.f32 %3174, 1
  %3177 = extractvalue %dx.types.ResRet.f32 %3174, 2
  %3178 = fmul fast float %3175, %374
  %3179 = fmul fast float %3176, %377
  %3180 = fmul fast float %3177, %380
  br i1 %3173, label %3187, label %3181

; <label>:3181                                    ; preds = %3164
  %3182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3183 = extractvalue %dx.types.CBufRet.f32 %3182, 0
  %3184 = fmul fast float %3183, %3178
  %3185 = fmul fast float %3183, %3179
  %3186 = fmul fast float %3183, %3180
  br label %3187

; <label>:3187                                    ; preds = %3181, %3164
  %3188 = phi float [ %3184, %3181 ], [ %3178, %3164 ]
  %3189 = phi float [ %3185, %3181 ], [ %3179, %3164 ]
  %3190 = phi float [ %3186, %3181 ], [ %3180, %3164 ]
  %3191 = fmul fast float %3188, %3159
  %3192 = select i1 %231, float %3191, float %3188
  %3193 = call float @dx.op.dot3.f32(i32 55, float %3192, float %3189, float %3190, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3194 = select i1 %231, float 0.000000e+00, float %3188
  %3195 = select i1 %231, float %3193, float %3189
  %3196 = select i1 %231, float 0.000000e+00, float %3190
  br label %3197

; <label>:3197                                    ; preds = %3187, %3149
  %3198 = phi float [ %3194, %3187 ], [ 0.000000e+00, %3149 ]
  %3199 = phi float [ %3195, %3187 ], [ 0.000000e+00, %3149 ]
  %3200 = phi float [ %3196, %3187 ], [ 0.000000e+00, %3149 ]
  %3201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3202 = extractvalue %dx.types.ResRet.i32 %3201, 0
  %3203 = and i32 %3202, 10240
  %3204 = icmp eq i32 %3203, 0
  br i1 %3204, label %3249, label %3205

; <label>:3205                                    ; preds = %3197
  %3206 = add i32 %29, 516
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3206, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = add i32 %3208, 0
  %3210 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3209, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3211 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3210, %dx.types.Handle %74, float %2777, float %2778, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3212 = extractvalue %dx.types.ResRet.f32 %3211, 1
  %3213 = extractvalue %dx.types.ResRet.f32 %3211, 3
  %3214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3215 = extractvalue %dx.types.ResRet.i32 %3214, 0
  %3216 = and i32 %3215, 1048576
  %3217 = icmp ne i32 %3216, 0
  %3218 = and i32 %3215, 8192
  %3219 = icmp eq i32 %3218, 0
  br i1 %3219, label %3235, label %3220

; <label>:3220                                    ; preds = %3205
  %3221 = extractvalue %dx.types.ResRet.f32 %3211, 2
  %3222 = select i1 %3217, float %3221, float %3212
  %3223 = extractvalue %dx.types.ResRet.f32 %3211, 0
  %3224 = select i1 %3217, float %3223, float %3212
  %3225 = add i32 %29, 144
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3225, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = lshr i32 %3227, 16
  %3229 = and i32 %3228, 255
  %3230 = uitofp i32 %3229 to float
  %3231 = fmul fast float %3230, 0x3F80101020000000
  %3232 = fmul fast float %3231, %3224
  %3233 = fmul fast float %3231, %3212
  %3234 = fmul fast float %3231, %3222
  br label %3235

; <label>:3235                                    ; preds = %3220, %3205
  %3236 = phi float [ %3232, %3220 ], [ 0.000000e+00, %3205 ]
  %3237 = phi float [ %3233, %3220 ], [ 0.000000e+00, %3205 ]
  %3238 = phi float [ %3234, %3220 ], [ 0.000000e+00, %3205 ]
  %3239 = and i32 %3215, 2048
  %3240 = icmp eq i32 %3239, 0
  br i1 %3240, label %3249, label %3241

; <label>:3241                                    ; preds = %3235
  %3242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3154, i32 undef)  ; BufferLoad(srv,index,wot)
  %3243 = extractvalue %dx.types.ResRet.i32 %3242, 0
  %3244 = shl i32 %3243, 4
  %3245 = and i32 %3244, 32752
  %3246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3245)  ; LegacyF16ToF32(value)
  %3247 = fmul fast float %3246, %3213
  %3248 = call float @dx.op.binary.f32(i32 35, float %3247, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3249

; <label>:3249                                    ; preds = %3241, %3235, %3197
  %3250 = phi float [ %3236, %3241 ], [ %3236, %3235 ], [ 0.000000e+00, %3197 ]
  %3251 = phi float [ %3237, %3241 ], [ %3237, %3235 ], [ 0.000000e+00, %3197 ]
  %3252 = phi float [ %3238, %3241 ], [ %3238, %3235 ], [ 0.000000e+00, %3197 ]
  %3253 = phi float [ %3248, %3241 ], [ 0x3F70101020000000, %3235 ], [ 0x3F70101020000000, %3197 ]
  %3254 = add i32 %29, 144
  %3255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3254, i32 undef)  ; BufferLoad(srv,index,wot)
  %3256 = extractvalue %dx.types.ResRet.i32 %3255, 0
  %3257 = and i32 %3256, 255
  %3258 = uitofp i32 %3257 to float
  %3259 = lshr i32 %3256, 8
  %3260 = and i32 %3259, 255
  %3261 = uitofp i32 %3260 to float
  %3262 = call float @dx.op.dot3.f32(i32 55, float %3070, float %3071, float %3072, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3263 = fmul fast float %3261, %3262
  %3264 = fadd fast float %3263, %3258
  %3265 = fmul fast float %3264, 0x3F70101020000000
  %3266 = call float @dx.op.unary.f32(i32 7, float %3265)  ; Saturate(value)
  br i1 %2669, label %3267, label %3275

; <label>:3267                                    ; preds = %3249
  %3268 = fsub fast float 1.000000e+00, %2850
  %3269 = fmul fast float %3268, %2654
  %3270 = fmul fast float %3268, %2655
  %3271 = fmul fast float %3268, %2656
  %3272 = fmul fast float %3268, %2660
  %3273 = fmul fast float %3268, %2661
  %3274 = fmul fast float %3268, %2662
  br label %3275

; <label>:3275                                    ; preds = %3267, %3249
  %3276 = phi float [ %3269, %3267 ], [ %2654, %3249 ]
  %3277 = phi float [ %3270, %3267 ], [ %2655, %3249 ]
  %3278 = phi float [ %3271, %3267 ], [ %2656, %3249 ]
  %3279 = phi float [ %3272, %3267 ], [ %2660, %3249 ]
  %3280 = phi float [ %3273, %3267 ], [ %2661, %3249 ]
  %3281 = phi float [ %3274, %3267 ], [ %2662, %3249 ]
  %3282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.i32 %3282, 0
  %3284 = and i32 %3283, 3
  %3285 = icmp eq i32 %3284, 3
  br i1 %3285, label %3364, label %3286

; <label>:3286                                    ; preds = %3275
  %3287 = and i32 %3283, 16
  %3288 = icmp ne i32 %3287, 0
  %3289 = select i1 %3288, float %2850, float 0.000000e+00
  %3290 = icmp eq i32 %3284, 0
  br i1 %3290, label %3291, label %3319

; <label>:3291                                    ; preds = %3286
  %3292 = and i32 %3283, 64
  %3293 = icmp ne i32 %3292, 0
  %3294 = select i1 %3293, float %2850, float 0.000000e+00
  %3295 = fsub fast float %3070, %3276
  %3296 = fsub fast float %3071, %3277
  %3297 = fsub fast float %3072, %3278
  %3298 = fmul fast float %3289, %3295
  %3299 = fmul fast float %3289, %3296
  %3300 = fmul fast float %3289, %3297
  %3301 = fadd fast float %3298, %3276
  %3302 = fadd fast float %3299, %3277
  %3303 = fadd fast float %3300, %3278
  %3304 = fsub fast float %3056, %2663
  %3305 = fmul fast float %3289, %3304
  %3306 = fadd fast float %3305, %2663
  %3307 = fsub fast float %3198, %3279
  %3308 = fsub fast float %3199, %3280
  %3309 = fsub fast float %3200, %3281
  %3310 = fmul fast float %3294, %3307
  %3311 = fmul fast float %3294, %3308
  %3312 = fmul fast float %3294, %3309
  %3313 = fadd fast float %3310, %3279
  %3314 = fadd fast float %3311, %3280
  %3315 = fadd fast float %3312, %3281
  %3316 = fsub fast float %3266, %2667
  %3317 = fmul fast float %3289, %3316
  %3318 = fadd fast float %3317, %2667
  br label %3364

; <label>:3319                                    ; preds = %3286
  %3320 = icmp eq i32 %3284, 1
  br i1 %3320, label %3321, label %3334

; <label>:3321                                    ; preds = %3319
  %3322 = fadd fast float %3070, -1.000000e+00
  %3323 = fadd fast float %3071, -1.000000e+00
  %3324 = fadd fast float %3072, -1.000000e+00
  %3325 = fmul fast float %3289, %3322
  %3326 = fmul fast float %3289, %3323
  %3327 = fmul fast float %3289, %3324
  %3328 = fadd fast float %3325, 1.000000e+00
  %3329 = fadd fast float %3326, 1.000000e+00
  %3330 = fadd fast float %3327, 1.000000e+00
  %3331 = fmul fast float %3328, %3276
  %3332 = fmul fast float %3329, %3277
  %3333 = fmul fast float %3330, %3278
  br label %3364

; <label>:3334                                    ; preds = %3319
  %3335 = icmp eq i32 %3284, 2
  br i1 %3335, label %3336, label %3364

; <label>:3336                                    ; preds = %3334
  %3337 = call float @dx.op.unary.f32(i32 24, float %3070)  ; Sqrt(value)
  %3338 = call float @dx.op.unary.f32(i32 24, float %3071)  ; Sqrt(value)
  %3339 = call float @dx.op.unary.f32(i32 24, float %3072)  ; Sqrt(value)
  %3340 = fadd fast float %3337, -5.000000e-01
  %3341 = fadd fast float %3338, -5.000000e-01
  %3342 = fadd fast float %3339, -5.000000e-01
  %3343 = fmul fast float %3340, %3289
  %3344 = fmul fast float %3341, %3289
  %3345 = fmul fast float %3342, %3289
  %3346 = fadd fast float %3343, 5.000000e-01
  %3347 = fadd fast float %3344, 5.000000e-01
  %3348 = fadd fast float %3345, 5.000000e-01
  %3349 = fmul fast float %3346, 2.000000e+00
  %3350 = fsub fast float 1.000000e+00, %3349
  %3351 = fmul fast float %3350, %3276
  %3352 = fadd fast float %3351, %3349
  %3353 = fmul fast float %3352, %3276
  %3354 = fmul fast float %3347, 2.000000e+00
  %3355 = fsub fast float 1.000000e+00, %3354
  %3356 = fmul fast float %3355, %3277
  %3357 = fadd fast float %3356, %3354
  %3358 = fmul fast float %3357, %3277
  %3359 = fmul fast float %3348, 2.000000e+00
  %3360 = fsub fast float 1.000000e+00, %3359
  %3361 = fmul fast float %3360, %3278
  %3362 = fadd fast float %3361, %3359
  %3363 = fmul fast float %3362, %3278
  br label %3364

; <label>:3364                                    ; preds = %3336, %3334, %3321, %3291, %3275
  %3365 = phi float [ %3276, %3275 ], [ %3353, %3336 ], [ %3276, %3334 ], [ %3331, %3321 ], [ %3301, %3291 ]
  %3366 = phi float [ %3277, %3275 ], [ %3358, %3336 ], [ %3277, %3334 ], [ %3332, %3321 ], [ %3302, %3291 ]
  %3367 = phi float [ %3278, %3275 ], [ %3363, %3336 ], [ %3278, %3334 ], [ %3333, %3321 ], [ %3303, %3291 ]
  %3368 = phi float [ %3279, %3275 ], [ %3279, %3336 ], [ %3279, %3334 ], [ %3279, %3321 ], [ %3313, %3291 ]
  %3369 = phi float [ %3280, %3275 ], [ %3280, %3336 ], [ %3280, %3334 ], [ %3280, %3321 ], [ %3314, %3291 ]
  %3370 = phi float [ %3281, %3275 ], [ %3281, %3336 ], [ %3281, %3334 ], [ %3281, %3321 ], [ %3315, %3291 ]
  %3371 = phi float [ %2663, %3275 ], [ %2663, %3336 ], [ %2663, %3334 ], [ %2663, %3321 ], [ %3306, %3291 ]
  %3372 = phi float [ %2667, %3275 ], [ %2667, %3336 ], [ %2667, %3334 ], [ %2667, %3321 ], [ %3318, %3291 ]
  %3373 = and i32 %3283, 12
  %3374 = icmp eq i32 %3373, 12
  br i1 %3374, label %3481, label %3375

; <label>:3375                                    ; preds = %3364
  %3376 = and i32 %3283, 2097184
  %3377 = icmp eq i32 %3376, 2097184
  %3378 = select i1 %3377, float %2850, float 0.000000e+00
  %3379 = and i32 %3283, 4194336
  %3380 = icmp eq i32 %3379, 4194336
  %3381 = select i1 %3380, float %2850, float 0.000000e+00
  %3382 = and i32 %3283, 8388640
  %3383 = icmp eq i32 %3382, 8388640
  %3384 = select i1 %3383, float %2850, float 0.000000e+00
  %3385 = and i32 %3283, 2048
  %3386 = icmp ne i32 %3385, 0
  %3387 = select i1 %3386, float %2850, float 0.000000e+00
  %3388 = and i32 %3283, 8192
  %3389 = icmp ne i32 %3388, 0
  %3390 = select i1 %3389, float %2850, float 0.000000e+00
  %3391 = icmp eq i32 %3373, 0
  br i1 %3391, label %3392, label %3417

; <label>:3392                                    ; preds = %3375
  %3393 = fsub fast float %3151, %2652
  %3394 = fsub fast float %3152, %2653
  %3395 = fmul fast float %3378, %3393
  %3396 = fmul fast float %3378, %3394
  %3397 = fadd fast float %3395, %2652
  %3398 = fadd fast float %3396, %2653
  %3399 = fsub fast float %3153, %2665
  %3400 = fmul fast float %3381, %3399
  %3401 = fadd fast float %3400, %2665
  %3402 = fsub fast float %3150, %2664
  %3403 = fmul fast float %3384, %3402
  %3404 = fadd fast float %3403, %2664
  %3405 = fsub fast float %3253, %2666
  %3406 = fmul fast float %3387, %3405
  %3407 = fadd fast float %3406, %2666
  %3408 = fsub fast float %3250, %2657
  %3409 = fsub fast float %3251, %2658
  %3410 = fsub fast float %3252, %2659
  %3411 = fmul fast float %3390, %3408
  %3412 = fmul fast float %3390, %3409
  %3413 = fmul fast float %3390, %3410
  %3414 = fadd fast float %3411, %2657
  %3415 = fadd fast float %3412, %2658
  %3416 = fadd fast float %3413, %2659
  br label %3481

; <label>:3417                                    ; preds = %3375
  %3418 = icmp eq i32 %3373, 4
  br i1 %3418, label %3419, label %3459

; <label>:3419                                    ; preds = %3417
  %3420 = fmul fast float %3378, %3151
  %3421 = fmul fast float %3378, %3152
  %3422 = fadd fast float %3420, %2652
  %3423 = fadd fast float %3421, %2653
  %3424 = call float @dx.op.binary.f32(i32 36, float %2665, float %3153)  ; FMin(a,b)
  %3425 = fsub fast float %3424, %2665
  %3426 = fmul fast float %3425, %3381
  %3427 = fadd fast float %3426, %2665
  %3428 = fadd fast float %3150, %2664
  %3429 = fmul fast float %3428, 0x3FF337FAE0000000
  %3430 = fmul fast float %2664, %2664
  %3431 = fmul fast float %3150, %3150
  %3432 = fadd fast float %3431, %3430
  %3433 = fmul fast float %3432, 0x3FE5152B00000000
  %3434 = fmul fast float %2664, 0xBFCC1F85E0000000
  %3435 = fmul fast float %3434, %3150
  %3436 = fadd fast float %3435, 0xBFE1363700000000
  %3437 = fadd fast float %3436, %3429
  %3438 = fsub fast float %3437, %3433
  %3439 = fmul fast float %3428, 0x3FBA6F0D00000000
  %3440 = fmul fast float %3432, 0x3FD0432880000000
  %3441 = fmul fast float %2664, 0xBFEF110800000000
  %3442 = fmul fast float %3441, %3150
  %3443 = fadd fast float %3442, 1.000000e+00
  %3444 = fsub fast float %3443, %3439
  %3445 = fadd fast float %3444, %3440
  %3446 = fdiv fast float %3438, %3445
  %3447 = call float @dx.op.unary.f32(i32 7, float %3446)  ; Saturate(value)
  %3448 = fsub fast float %3447, %2664
  %3449 = fmul fast float %3448, %3384
  %3450 = fadd fast float %3449, %2664
  %3451 = fmul fast float %3387, %3253
  %3452 = fadd fast float %3451, %2666
  %3453 = fmul fast float %3390, %3250
  %3454 = fmul fast float %3390, %3251
  %3455 = fmul fast float %3390, %3252
  %3456 = fadd fast float %3453, %2657
  %3457 = fadd fast float %3454, %2658
  %3458 = fadd fast float %3455, %2659
  br label %3481

; <label>:3459                                    ; preds = %3417
  %3460 = icmp eq i32 %3373, 8
  br i1 %3460, label %3461, label %3481

; <label>:3461                                    ; preds = %3459
  %3462 = fmul fast float %3378, %3151
  %3463 = fmul fast float %3378, %3152
  %3464 = fadd fast float %3462, %2652
  %3465 = fadd fast float %3463, %2653
  %3466 = call float @dx.op.binary.f32(i32 36, float %2665, float %3153)  ; FMin(a,b)
  %3467 = fsub fast float %3466, %2665
  %3468 = fmul fast float %3467, %3381
  %3469 = fadd fast float %3468, %2665
  %3470 = fsub fast float %3150, %2664
  %3471 = fmul fast float %3384, %3470
  %3472 = fadd fast float %3471, %2664
  %3473 = fmul fast float %3387, %3253
  %3474 = fadd fast float %3473, %2666
  %3475 = fmul fast float %3390, %3250
  %3476 = fmul fast float %3390, %3251
  %3477 = fmul fast float %3390, %3252
  %3478 = fadd fast float %3475, %2657
  %3479 = fadd fast float %3476, %2658
  %3480 = fadd fast float %3477, %2659
  br label %3481

; <label>:3481                                    ; preds = %3461, %3459, %3419, %3392, %3364, %2849, %2668, %2651
  %3482 = phi float [ %2652, %3364 ], [ %2652, %2849 ], [ %2652, %2651 ], [ %2652, %2668 ], [ %3397, %3392 ], [ %3422, %3419 ], [ %2652, %3459 ], [ %3464, %3461 ]
  %3483 = phi float [ %2653, %3364 ], [ %2653, %2849 ], [ %2653, %2651 ], [ %2653, %2668 ], [ %3398, %3392 ], [ %3423, %3419 ], [ %2653, %3459 ], [ %3465, %3461 ]
  %3484 = phi float [ %3365, %3364 ], [ %2654, %2849 ], [ %2654, %2651 ], [ %2654, %2668 ], [ %3365, %3392 ], [ %3365, %3419 ], [ %3365, %3459 ], [ %3365, %3461 ]
  %3485 = phi float [ %3366, %3364 ], [ %2655, %2849 ], [ %2655, %2651 ], [ %2655, %2668 ], [ %3366, %3392 ], [ %3366, %3419 ], [ %3366, %3459 ], [ %3366, %3461 ]
  %3486 = phi float [ %3367, %3364 ], [ %2656, %2849 ], [ %2656, %2651 ], [ %2656, %2668 ], [ %3367, %3392 ], [ %3367, %3419 ], [ %3367, %3459 ], [ %3367, %3461 ]
  %3487 = phi float [ %2657, %3364 ], [ %2657, %2849 ], [ %2657, %2651 ], [ %2657, %2668 ], [ %3414, %3392 ], [ %3456, %3419 ], [ %2657, %3459 ], [ %3478, %3461 ]
  %3488 = phi float [ %2658, %3364 ], [ %2658, %2849 ], [ %2658, %2651 ], [ %2658, %2668 ], [ %3415, %3392 ], [ %3457, %3419 ], [ %2658, %3459 ], [ %3479, %3461 ]
  %3489 = phi float [ %2659, %3364 ], [ %2659, %2849 ], [ %2659, %2651 ], [ %2659, %2668 ], [ %3416, %3392 ], [ %3458, %3419 ], [ %2659, %3459 ], [ %3480, %3461 ]
  %3490 = phi float [ %3368, %3364 ], [ %2660, %2849 ], [ %2660, %2651 ], [ %2660, %2668 ], [ %3368, %3392 ], [ %3368, %3419 ], [ %3368, %3459 ], [ %3368, %3461 ]
  %3491 = phi float [ %3369, %3364 ], [ %2661, %2849 ], [ %2661, %2651 ], [ %2661, %2668 ], [ %3369, %3392 ], [ %3369, %3419 ], [ %3369, %3459 ], [ %3369, %3461 ]
  %3492 = phi float [ %3370, %3364 ], [ %2662, %2849 ], [ %2662, %2651 ], [ %2662, %2668 ], [ %3370, %3392 ], [ %3370, %3419 ], [ %3370, %3459 ], [ %3370, %3461 ]
  %3493 = phi float [ %3371, %3364 ], [ %2663, %2849 ], [ %2663, %2651 ], [ %2663, %2668 ], [ %3371, %3392 ], [ %3371, %3419 ], [ %3371, %3459 ], [ %3371, %3461 ]
  %3494 = phi float [ %2664, %3364 ], [ %2664, %2849 ], [ %2664, %2651 ], [ %2664, %2668 ], [ %3404, %3392 ], [ %3450, %3419 ], [ %2664, %3459 ], [ %3472, %3461 ]
  %3495 = phi float [ %2665, %3364 ], [ %2665, %2849 ], [ %2665, %2651 ], [ %2665, %2668 ], [ %3401, %3392 ], [ %3427, %3419 ], [ %2665, %3459 ], [ %3469, %3461 ]
  %3496 = phi float [ %2666, %3364 ], [ %2666, %2849 ], [ %2666, %2651 ], [ %2666, %2668 ], [ %3407, %3392 ], [ %3452, %3419 ], [ %2666, %3459 ], [ %3474, %3461 ]
  %3497 = phi float [ %3372, %3364 ], [ %2667, %2849 ], [ %2667, %2651 ], [ %2667, %2668 ], [ %3372, %3392 ], [ %3372, %3419 ], [ %3372, %3459 ], [ %3372, %3461 ]
  %3498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3499 = extractvalue %dx.types.CBufRet.f32 %3498, 0
  %3500 = call float @dx.op.dot2.f32(i32 54, float %3482, float %3483, float %3482, float %3483)  ; Dot2(ax,ay,bx,by)
  %3501 = fmul fast float %3500, 0x3FE3333340000000
  %3502 = fsub fast float 1.000000e+00, %3501
  %3503 = call float @dx.op.dot3.f32(i32 55, float %3482, float %3483, float %3502, float %3482, float %3483, float %3502)  ; Dot3(ax,ay,az,bx,by,bz)
  %3504 = call float @dx.op.unary.f32(i32 25, float %3503)  ; Rsqrt(value)
  %3505 = fmul fast float %3504, %3482
  %3506 = fmul fast float %3504, %3483
  %3507 = fmul fast float %3502, %3504
  %3508 = fmul fast float %3507, %86
  %3509 = fmul fast float %3507, %88
  %3510 = fmul fast float %3507, %90
  %3511 = fmul fast float %3505, %58
  %3512 = fmul fast float %3505, %59
  %3513 = fmul fast float %3505, %60
  %3514 = fadd fast float %3508, %3511
  %3515 = fadd fast float %3509, %3512
  %3516 = fadd fast float %3510, %3513
  %3517 = fmul fast float %100, %3506
  %3518 = fmul fast float %101, %3506
  %3519 = fmul fast float %102, %3506
  %3520 = fadd fast float %3514, %3517
  %3521 = fadd fast float %3515, %3518
  %3522 = fadd fast float %3516, %3519
  %3523 = call float @dx.op.dot3.f32(i32 55, float %3520, float %3521, float %3522, float %3520, float %3521, float %3522)  ; Dot3(ax,ay,az,bx,by,bz)
  %3524 = call float @dx.op.unary.f32(i32 25, float %3523)  ; Rsqrt(value)
  %3525 = fmul fast float %3520, %3524
  %3526 = fmul fast float %3521, %3524
  %3527 = fmul fast float %3522, %3524
  %3528 = add i32 %29, 392
  %3529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3530 = extractvalue %dx.types.ResRet.i32 %3529, 0
  %3531 = extractvalue %dx.types.ResRet.i32 %3529, 1
  %3532 = extractvalue %dx.types.ResRet.i32 %3529, 2
  %3533 = extractvalue %dx.types.ResRet.i32 %3529, 3
  %3534 = bitcast i32 %3530 to float
  %3535 = bitcast i32 %3531 to float
  %3536 = bitcast i32 %3532 to float
  %3537 = bitcast i32 %3533 to float
  %3538 = fsub fast float %3484, %3534
  %3539 = fsub fast float %3485, %3535
  %3540 = fsub fast float %3486, %3536
  %3541 = fmul fast float %3538, %194
  %3542 = fmul fast float %3539, %194
  %3543 = fmul fast float %3540, %194
  %3544 = fadd fast float %3541, %3534
  %3545 = fadd fast float %3542, %3535
  %3546 = fadd fast float %3543, %3536
  %3547 = fsub fast float %1003, %3537
  %3548 = fmul fast float %3547, %194
  %3549 = fadd fast float %3548, %3537
  %3550 = fadd fast float %3493, 0xBFB99999A0000000
  %3551 = call float @dx.op.unary.f32(i32 7, float %3550)  ; Saturate(value)
  %3552 = fmul fast float %3551, 0x3FF1C71C80000000
  %3553 = call float @dx.op.binary.f32(i32 36, float %3493, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3554 = fsub fast float 1.000000e+00, %3552
  %3555 = call float @dx.op.unary.f32(i32 7, float %3554)  ; Saturate(value)
  %3556 = fmul fast float %3544, %3555
  %3557 = fmul fast float %3545, %3555
  %3558 = fmul fast float %3546, %3555
  %3559 = call float @dx.op.unary.f32(i32 7, float %3556)  ; Saturate(value)
  %3560 = call float @dx.op.unary.f32(i32 7, float %3557)  ; Saturate(value)
  %3561 = call float @dx.op.unary.f32(i32 7, float %3558)  ; Saturate(value)
  %3562 = fmul fast float %3544, %3552
  %3563 = fmul fast float %3545, %3552
  %3564 = fmul fast float %3546, %3552
  %3565 = fadd fast float %3562, %3553
  %3566 = fadd fast float %3563, %3553
  %3567 = fadd fast float %3564, %3553
  %3568 = call float @dx.op.unary.f32(i32 7, float %3565)  ; Saturate(value)
  %3569 = call float @dx.op.unary.f32(i32 7, float %3566)  ; Saturate(value)
  %3570 = call float @dx.op.unary.f32(i32 7, float %3567)  ; Saturate(value)
  %3571 = call float @dx.op.unary.f32(i32 7, float %3494)  ; Saturate(value)
  %3572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3573 = extractvalue %dx.types.ResRet.i32 %3572, 0
  %3574 = and i32 %3573, 1
  %3575 = icmp eq i32 %3574, 0
  br i1 %3575, label %3590, label %3576

; <label>:3576                                    ; preds = %3481
  %3577 = call float @dx.op.binary.f32(i32 35, float %3560, float %3561)  ; FMax(a,b)
  %3578 = call float @dx.op.binary.f32(i32 35, float %3559, float %3577)  ; FMax(a,b)
  %3579 = fcmp fast ogt float %3578, 0.000000e+00
  %3580 = bitcast float %3578 to i32
  %3581 = sub nsw i32 2129859010, %3580
  %3582 = bitcast i32 %3581 to float
  %3583 = select i1 %3579, float %3582, float 0.000000e+00
  %3584 = fmul fast float %3559, %3487
  %3585 = fmul fast float %3560, %3488
  %3586 = fmul fast float %3561, %3489
  %3587 = fmul fast float %3584, %3583
  %3588 = fmul fast float %3585, %3583
  %3589 = fmul fast float %3586, %3583
  br label %3590

; <label>:3590                                    ; preds = %3576, %3481
  %3591 = phi float [ %3587, %3576 ], [ %3487, %3481 ]
  %3592 = phi float [ %3588, %3576 ], [ %3488, %3481 ]
  %3593 = phi float [ %3589, %3576 ], [ %3489, %3481 ]
  %3594 = fadd fast float %3559, 0xBFD51EB860000000
  %3595 = fadd fast float %3560, 0xBFD51EB860000000
  %3596 = fadd fast float %3561, 0xBFD51EB860000000
  %3597 = fmul fast float %3594, %3594
  %3598 = fmul fast float %3595, %3595
  %3599 = fmul fast float %3596, %3596
  %3600 = fmul fast float %3597, %3597
  %3601 = fmul fast float %3600, 1.000000e+02
  %3602 = fmul fast float %3598, %3598
  %3603 = fmul fast float %3602, 1.000000e+02
  %3604 = fmul fast float %3599, %3599
  %3605 = fmul fast float %3604, 1.000000e+02
  %3606 = fadd fast float %3601, 3.500000e+00
  %3607 = fadd fast float %3603, 3.500000e+00
  %3608 = fadd fast float %3605, 3.500000e+00
  %3609 = call float @dx.op.binary.f32(i32 35, float %3591, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3610 = call float @dx.op.binary.f32(i32 35, float %3592, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3611 = call float @dx.op.binary.f32(i32 35, float %3593, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3612 = fdiv fast float %3606, %3609
  %3613 = fdiv fast float %3607, %3610
  %3614 = fdiv fast float %3608, %3611
  %3615 = fmul fast float %3496, 0xBFF7154760000000
  %3616 = fmul fast float %3615, %3612
  %3617 = call float @dx.op.unary.f32(i32 21, float %3616)  ; Exp(value)
  %3618 = fmul fast float %3617, 2.500000e-01
  %3619 = fmul fast float %3496, 0xBFDEC709E0000000
  %3620 = fmul fast float %3619, %3612
  %3621 = call float @dx.op.unary.f32(i32 21, float %3620)  ; Exp(value)
  %3622 = fmul fast float %3621, 7.500000e-01
  %3623 = fmul fast float %3615, %3613
  %3624 = call float @dx.op.unary.f32(i32 21, float %3623)  ; Exp(value)
  %3625 = fmul fast float %3624, 2.500000e-01
  %3626 = fmul fast float %3619, %3613
  %3627 = call float @dx.op.unary.f32(i32 21, float %3626)  ; Exp(value)
  %3628 = fmul fast float %3627, 7.500000e-01
  %3629 = fmul fast float %3615, %3614
  %3630 = call float @dx.op.unary.f32(i32 21, float %3629)  ; Exp(value)
  %3631 = fmul fast float %3630, 2.500000e-01
  %3632 = fmul fast float %3619, %3614
  %3633 = call float @dx.op.unary.f32(i32 21, float %3632)  ; Exp(value)
  %3634 = fmul fast float %3633, 7.500000e-01
  %3635 = fadd fast float %3618, %3622
  %3636 = fadd fast float %3625, %3628
  %3637 = fadd fast float %3631, %3634
  %3638 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3639 = extractvalue %dx.types.CBufRet.i32 %3638, 3
  %3640 = and i32 %3639, 8
  %3641 = icmp ne i32 %3640, 0
  %3642 = call float @dx.op.binary.f32(i32 35, float %3559, float %3544)  ; FMax(a,b)
  %3643 = call float @dx.op.binary.f32(i32 35, float %3560, float %3544)  ; FMax(a,b)
  %3644 = call float @dx.op.binary.f32(i32 35, float %3561, float %3544)  ; FMax(a,b)
  %3645 = call float @dx.op.dot3.f32(i32 55, float %3559, float %3560, float %3561, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3646 = select i1 %231, float %3544, float %3559
  %3647 = select i1 %231, float %3645, float %3560
  %3648 = select i1 %231, float 1.000000e+00, float %3561
  %3649 = select i1 %3641, float %3642, float %3646
  %3650 = select i1 %3641, float %3643, float %3647
  %3651 = select i1 %3641, float %3644, float %3648
  %3652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3653 = extractvalue %dx.types.CBufRet.f32 %3652, 0
  %3654 = extractvalue %dx.types.CBufRet.f32 %3652, 1
  %3655 = extractvalue %dx.types.CBufRet.f32 %3652, 2
  %3656 = fadd fast float %3653, %160
  %3657 = fadd fast float %3654, %161
  %3658 = fadd fast float %3655, %162
  %3659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3660 = extractvalue %dx.types.CBufRet.f32 %3659, 0
  %3661 = extractvalue %dx.types.CBufRet.f32 %3659, 1
  %3662 = fsub fast float %3656, %3660
  %3663 = fsub fast float %3657, %3661
  %3664 = fmul fast float %3662, %3662
  %3665 = fmul fast float %3663, %3663
  %3666 = fadd fast float %3664, %3665
  %3667 = call float @dx.op.unary.f32(i32 24, float %3666)  ; Sqrt(value)
  %3668 = extractvalue %dx.types.CBufRet.f32 %3659, 2
  %3669 = fcmp fast olt float %3667, %3668
  br i1 %3669, label %3670, label %3737

; <label>:3670                                    ; preds = %3590
  %3671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3672 = extractvalue %dx.types.CBufRet.f32 %3671, 0
  %3673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3674 = extractvalue %dx.types.CBufRet.f32 %3673, 0
  %3675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3676 = extractvalue %dx.types.CBufRet.f32 %3675, 0
  %3677 = extractvalue %dx.types.CBufRet.f32 %3671, 1
  %3678 = extractvalue %dx.types.CBufRet.f32 %3673, 1
  %3679 = extractvalue %dx.types.CBufRet.f32 %3675, 1
  %3680 = extractvalue %dx.types.CBufRet.f32 %3671, 3
  %3681 = extractvalue %dx.types.CBufRet.f32 %3673, 3
  %3682 = extractvalue %dx.types.CBufRet.f32 %3675, 3
  %3683 = fadd fast float %3680, %3656
  %3684 = fadd fast float %3681, %3657
  %3685 = fadd fast float %3682, %3658
  %3686 = fmul fast float %3683, %3672
  %3687 = call float @dx.op.tertiary.f32(i32 46, float %3684, float %3674, float %3686)  ; FMad(a,b,c)
  %3688 = call float @dx.op.tertiary.f32(i32 46, float %3685, float %3676, float %3687)  ; FMad(a,b,c)
  %3689 = fmul fast float %3683, %3677
  %3690 = call float @dx.op.tertiary.f32(i32 46, float %3684, float %3678, float %3689)  ; FMad(a,b,c)
  %3691 = call float @dx.op.tertiary.f32(i32 46, float %3685, float %3679, float %3690)  ; FMad(a,b,c)
  %3692 = fsub fast float %3688, %3680
  %3693 = fsub fast float %3691, %3681
  %3694 = fsub fast float %3692, %3660
  %3695 = fadd fast float %3694, %3668
  %3696 = fsub fast float %3693, %3661
  %3697 = fadd fast float %3696, %3668
  %3698 = extractvalue %dx.types.CBufRet.f32 %3659, 3
  %3699 = fmul fast float %3695, %3698
  %3700 = fmul fast float %3697, %3698
  %3701 = call float @dx.op.unary.f32(i32 7, float %3699)  ; Saturate(value)
  %3702 = call float @dx.op.unary.f32(i32 7, float %3700)  ; Saturate(value)
  %3703 = fsub fast float 1.000000e+00, %3701
  %3704 = fsub fast float 1.000000e+00, %3702
  %3705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %23, float %3703, float %3704, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3706 = extractvalue %dx.types.ResRet.f32 %3705, 0
  %3707 = fcmp fast ugt float %3706, 0.000000e+00
  br i1 %3707, label %3708, label %4011

; <label>:3708                                    ; preds = %3670
  %3709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3710 = extractvalue %dx.types.CBufRet.f32 %3709, 2
  %3711 = fmul fast float %3710, %3706
  %3712 = extractvalue %dx.types.CBufRet.f32 %3709, 3
  %3713 = fadd fast float %3712, %3711
  %3714 = extractvalue %dx.types.CBufRet.f32 %3675, 2
  %3715 = fadd fast float %3713, %3682
  %3716 = fmul fast float %3688, %3676
  %3717 = call float @dx.op.tertiary.f32(i32 46, float %3691, float %3679, float %3716)  ; FMad(a,b,c)
  %3718 = call float @dx.op.tertiary.f32(i32 46, float %3715, float %3714, float %3717)  ; FMad(a,b,c)
  %3719 = fsub fast float %3718, %3682
  %3720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3721 = extractvalue %dx.types.CBufRet.f32 %3720, 2
  %3722 = fsub fast float %3719, %3721
  %3723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %23, float %3703, float %3704, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3724 = extractvalue %dx.types.ResRet.f32 %3723, 0
  %3725 = extractvalue %dx.types.ResRet.f32 %3723, 1
  %3726 = extractvalue %dx.types.ResRet.f32 %3723, 2
  %3727 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %23, float %3703, float %3704, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3728 = extractvalue %dx.types.ResRet.f32 %3727, 0
  %3729 = extractvalue %dx.types.ResRet.f32 %3727, 1
  %3730 = extractvalue %dx.types.ResRet.f32 %3727, 2
  %3731 = fadd fast float %3728, %3724
  %3732 = fmul fast float %3731, 0x3F847AE140000000
  %3733 = fadd fast float %3729, %3725
  %3734 = fmul fast float %3733, 0x3F847AE140000000
  %3735 = fadd fast float %3730, %3726
  %3736 = fmul fast float %3735, 0x3F847AE140000000
  br label %4011

; <label>:3737                                    ; preds = %3590
  %3738 = and i32 %210, 1
  %3739 = icmp eq i32 %3738, 0
  br i1 %3739, label %4011, label %3740

; <label>:3740                                    ; preds = %3737
  %3741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3742 = extractvalue %dx.types.CBufRet.f32 %3741, 0
  %3743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3744 = extractvalue %dx.types.CBufRet.f32 %3743, 0
  %3745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3746 = extractvalue %dx.types.CBufRet.f32 %3745, 0
  %3747 = extractvalue %dx.types.CBufRet.f32 %3741, 1
  %3748 = extractvalue %dx.types.CBufRet.f32 %3743, 1
  %3749 = extractvalue %dx.types.CBufRet.f32 %3745, 1
  %3750 = extractvalue %dx.types.CBufRet.f32 %3741, 3
  %3751 = extractvalue %dx.types.CBufRet.f32 %3743, 3
  %3752 = extractvalue %dx.types.CBufRet.f32 %3745, 3
  %3753 = fadd fast float %3750, %3656
  %3754 = fadd fast float %3751, %3657
  %3755 = fadd fast float %3752, %3658
  %3756 = fmul fast float %3753, %3742
  %3757 = call float @dx.op.tertiary.f32(i32 46, float %3754, float %3744, float %3756)  ; FMad(a,b,c)
  %3758 = call float @dx.op.tertiary.f32(i32 46, float %3755, float %3746, float %3757)  ; FMad(a,b,c)
  %3759 = fmul fast float %3753, %3747
  %3760 = call float @dx.op.tertiary.f32(i32 46, float %3754, float %3748, float %3759)  ; FMad(a,b,c)
  %3761 = call float @dx.op.tertiary.f32(i32 46, float %3755, float %3749, float %3760)  ; FMad(a,b,c)
  %3762 = fsub fast float %3758, %3750
  %3763 = fsub fast float %3761, %3751
  %3764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3765 = extractvalue %dx.types.CBufRet.f32 %3764, 0
  %3766 = extractvalue %dx.types.CBufRet.f32 %3764, 1
  %3767 = extractvalue %dx.types.CBufRet.f32 %3764, 2
  %3768 = extractvalue %dx.types.CBufRet.f32 %3764, 3
  %3769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3770 = extractvalue %dx.types.CBufRet.f32 %3769, 3
  %3771 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3772 = extractvalue %dx.types.CBufRet.i32 %3771, 0
  %3773 = extractvalue %dx.types.CBufRet.i32 %3771, 1
  %3774 = udiv i32 %3773, %3772
  %3775 = fsub fast float %3762, %3765
  %3776 = fsub fast float %3763, %3766
  %3777 = call float @dx.op.binary.f32(i32 35, float %3775, float 0.000000e+00)  ; FMax(a,b)
  %3778 = call float @dx.op.binary.f32(i32 35, float %3776, float 0.000000e+00)  ; FMax(a,b)
  %3779 = call float @dx.op.binary.f32(i32 36, float %3777, float %3767)  ; FMin(a,b)
  %3780 = call float @dx.op.binary.f32(i32 36, float %3778, float %3768)  ; FMin(a,b)
  %3781 = add i32 %3772, -1
  %3782 = add i32 %3774, -1
  %3783 = fmul fast float %3779, %3770
  %3784 = fmul fast float %3780, %3770
  %3785 = fptoui float %3783 to i32
  %3786 = fptoui float %3784 to i32
  %3787 = call i32 @dx.op.binary.i32(i32 40, i32 %3785, i32 %3781)  ; UMin(a,b)
  %3788 = call i32 @dx.op.binary.i32(i32 40, i32 %3786, i32 %3782)  ; UMin(a,b)
  %3789 = mul i32 %3788, %3772
  %3790 = add i32 %3789, %3787
  %3791 = shl i32 %3790, 2
  %3792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3791, i32 undef)  ; BufferLoad(srv,index,wot)
  %3793 = extractvalue %dx.types.ResRet.i32 %3792, 0
  %3794 = icmp eq i32 %3793, -1
  br i1 %3794, label %4011, label %3795

; <label>:3795                                    ; preds = %3740
  %3796 = mul i32 %3793, 148
  %3797 = add i32 %3796, 4
  %3798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3797, i32 undef)  ; BufferLoad(srv,index,wot)
  %3799 = extractvalue %dx.types.ResRet.f32 %3798, 0
  %3800 = add i32 %3796, 8
  %3801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3800, i32 undef)  ; BufferLoad(srv,index,wot)
  %3802 = extractvalue %dx.types.ResRet.f32 %3801, 0
  %3803 = add i32 %3796, 36
  %3804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3803, i32 undef)  ; BufferLoad(srv,index,wot)
  %3805 = extractvalue %dx.types.ResRet.f32 %3804, 0
  %3806 = add i32 %3796, 60
  %3807 = add i32 %3796, 92
  %3808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3809 = extractvalue %dx.types.ResRet.i32 %3808, 0
  %3810 = add i32 %3796, 116
  %3811 = fsub fast float %3762, %3799
  %3812 = fsub fast float %3763, %3802
  %3813 = fmul fast float %3770, %3811
  %3814 = fmul fast float %3770, %3812
  %3815 = call float @dx.op.unary.f32(i32 7, float %3813)  ; Saturate(value)
  %3816 = call float @dx.op.unary.f32(i32 7, float %3814)  ; Saturate(value)
  %3817 = fsub fast float 1.000000e+00, %3816
  %3818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3819 = extractvalue %dx.types.CBufRet.f32 %3818, 2
  %3820 = call float @dx.op.unary.f32(i32 83, float %3815)  ; DerivCoarseX(value)
  %3821 = call float @dx.op.unary.f32(i32 83, float %3817)  ; DerivCoarseX(value)
  %3822 = call float @dx.op.unary.f32(i32 84, float %3815)  ; DerivCoarseY(value)
  %3823 = call float @dx.op.unary.f32(i32 84, float %3817)  ; DerivCoarseY(value)
  %3824 = fmul fast float %3820, %3819
  %3825 = fmul fast float %3821, %3819
  %3826 = fmul fast float %3822, %3819
  %3827 = fmul fast float %3823, %3819
  %3828 = call float @dx.op.dot2.f32(i32 54, float %3826, float %3827, float %3826, float %3827)  ; Dot2(ax,ay,bx,by)
  %3829 = call float @dx.op.dot2.f32(i32 54, float %3824, float %3825, float %3824, float %3825)  ; Dot2(ax,ay,bx,by)
  %3830 = call float @dx.op.binary.f32(i32 35, float %3829, float %3828)  ; FMax(a,b)
  %3831 = call float @dx.op.unary.f32(i32 23, float %3830)  ; Log(value)
  %3832 = fmul fast float %3831, 5.000000e-01
  %3833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3834 = extractvalue %dx.types.CBufRet.f32 %3833, 1
  %3835 = fadd fast float %3834, %3832
  %3836 = call float @dx.op.binary.f32(i32 35, float %3835, float 0.000000e+00)  ; FMax(a,b)
  %3837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3838 = extractvalue %dx.types.CBufRet.f32 %3837, 3
  %3839 = fadd fast float %3838, %3836
  %3840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3841 = extractvalue %dx.types.CBufRet.f32 %3840, 3
  %3842 = fadd fast float %3839, %3841
  %3843 = add i32 %3809, 0
  %3844 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3843, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3845 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3844, i32 0)  ; GetDimensions(handle,mipLevel)
  %3846 = extractvalue %dx.types.Dimensions %3845, 0
  %3847 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3846)  ; FirstbitLo(value)
  %3848 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3849 = extractvalue %dx.types.CBufRet.i32 %3848, 1
  %3850 = sub nsw i32 %3849, %3847
  %3851 = sitofp i32 %3850 to float
  %3852 = fsub fast float %3842, %3851
  %3853 = call float @dx.op.binary.f32(i32 35, float %3852, float 0.000000e+00)  ; FMax(a,b)
  %3854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3844, %dx.types.Handle %22, float %3815, float %3817, float %3805, float undef, i32 0, i32 0, i32 undef, float %3853)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3855 = extractvalue %dx.types.ResRet.f32 %3854, 0
  %3856 = fcmp ule float %3855, 0x3FE0101020000000
  %3857 = extractvalue %dx.types.CBufRet.i32 %3848, 0
  %3858 = and i32 %3857, 128
  %3859 = icmp ne i32 %3858, 0
  %3860 = and i1 %3856, %3859
  br i1 %3860, label %4011, label %3861

; <label>:3861                                    ; preds = %3795
  %3862 = add i32 %3796, 20
  %3863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3862, i32 undef)  ; BufferLoad(srv,index,wot)
  %3864 = extractvalue %dx.types.ResRet.f32 %3863, 0
  %3865 = add i32 %3796, 24
  %3866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3865, i32 undef)  ; BufferLoad(srv,index,wot)
  %3867 = extractvalue %dx.types.ResRet.f32 %3866, 0
  %3868 = add i32 %3796, 40
  %3869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3868, i32 undef)  ; BufferLoad(srv,index,wot)
  %3870 = extractvalue %dx.types.ResRet.f32 %3869, 0
  %3871 = add i32 %3796, 96
  %3872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3871, i32 undef)  ; BufferLoad(srv,index,wot)
  %3873 = extractvalue %dx.types.ResRet.i32 %3872, 0
  %3874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3875 = extractvalue %dx.types.CBufRet.f32 %3874, 2
  %3876 = fmul fast float %3875, %3815
  %3877 = fmul fast float %3875, %3817
  %3878 = extractvalue %dx.types.CBufRet.f32 %3874, 3
  %3879 = fadd fast float %3876, %3878
  %3880 = fadd fast float %3877, %3878
  %3881 = add i32 %3873, 0
  %3882 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3881, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3883 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3882, i32 0)  ; GetDimensions(handle,mipLevel)
  %3884 = extractvalue %dx.types.Dimensions %3883, 0
  %3885 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3884)  ; FirstbitLo(value)
  %3886 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3887 = extractvalue %dx.types.CBufRet.i32 %3886, 1
  %3888 = sub nsw i32 %3887, %3885
  %3889 = sitofp i32 %3888 to float
  %3890 = fsub fast float %3839, %3889
  %3891 = call float @dx.op.binary.f32(i32 35, float %3890, float 0.000000e+00)  ; FMax(a,b)
  %3892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3882, %dx.types.Handle %22, float %3879, float %3880, float %3870, float undef, i32 0, i32 0, i32 undef, float %3891)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3893 = extractvalue %dx.types.ResRet.f32 %3892, 0
  %3894 = fmul fast float %3893, %3864
  %3895 = fadd fast float %3894, %3867
  %3896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3897 = extractvalue %dx.types.CBufRet.f32 %3896, 0
  %3898 = extractvalue %dx.types.CBufRet.f32 %3896, 1
  %3899 = extractvalue %dx.types.CBufRet.f32 %3896, 2
  %3900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3901 = extractvalue %dx.types.CBufRet.f32 %3900, 3
  %3902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3903 = extractvalue %dx.types.CBufRet.f32 %3902, 3
  %3904 = extractvalue %dx.types.CBufRet.f32 %3896, 3
  %3905 = fadd fast float %3901, %3762
  %3906 = fadd fast float %3903, %3763
  %3907 = fadd fast float %3895, %3904
  %3908 = fmul fast float %3905, %3897
  %3909 = call float @dx.op.tertiary.f32(i32 46, float %3906, float %3898, float %3908)  ; FMad(a,b,c)
  %3910 = call float @dx.op.tertiary.f32(i32 46, float %3907, float %3899, float %3909)  ; FMad(a,b,c)
  %3911 = fsub fast float %3910, %3904
  %3912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3913 = extractvalue %dx.types.CBufRet.f32 %3912, 2
  %3914 = fsub fast float %3911, %3913
  %3915 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3916 = extractvalue %dx.types.CBufRet.i32 %3915, 0
  %3917 = call i32 @dx.op.binary.i32(i32 40, i32 %3793, i32 %3916)  ; UMin(a,b)
  %3918 = mul i32 %3917, 36
  %3919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3918, i32 undef)  ; BufferLoad(srv,index,wot)
  %3920 = extractvalue %dx.types.ResRet.i32 %3919, 0
  %3921 = add i32 %3918, 4
  %3922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3923 = extractvalue %dx.types.CBufRet.f32 %3922, 0
  %3924 = fmul fast float %3923, %3815
  %3925 = fmul fast float %3923, %3817
  %3926 = extractvalue %dx.types.CBufRet.f32 %3922, 1
  %3927 = fadd fast float %3924, %3926
  %3928 = fadd fast float %3925, %3926
  %3929 = icmp eq i32 %3920, 0
  br i1 %3929, label %3998, label %3930

; <label>:3930                                    ; preds = %3861
  br label %3931

; <label>:3931                                    ; preds = %3988, %3930
  %3932 = phi float [ %3989, %3988 ], [ 0.000000e+00, %3930 ]
  %3933 = phi float [ %3990, %3988 ], [ 0.000000e+00, %3930 ]
  %3934 = phi float [ %3991, %3988 ], [ 0.000000e+00, %3930 ]
  %3935 = phi float [ %3992, %3988 ], [ 0.000000e+00, %3930 ]
  %3936 = phi float [ %3993, %3988 ], [ 0.000000e+00, %3930 ]
  %3937 = phi float [ %3994, %3988 ], [ 0.000000e+00, %3930 ]
  %3938 = phi i32 [ %3995, %3988 ], [ 0, %3930 ]
  %3939 = shl i32 %3938, 2
  %3940 = add i32 %3806, %3939
  %3941 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3942 = extractvalue %dx.types.ResRet.f32 %3941, 0
  %3943 = add i32 %3810, %3939
  %3944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3943, i32 undef)  ; BufferLoad(srv,index,wot)
  %3945 = extractvalue %dx.types.ResRet.i32 %3944, 0
  %3946 = add i32 %3945, 0
  %3947 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3946, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3948 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3947, i32 0)  ; GetDimensions(handle,mipLevel)
  %3949 = extractvalue %dx.types.Dimensions %3948, 0
  %3950 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3949)  ; FirstbitLo(value)
  %3951 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3952 = extractvalue %dx.types.CBufRet.i32 %3951, 1
  %3953 = sub nsw i32 %3952, %3950
  %3954 = sitofp i32 %3953 to float
  %3955 = fsub fast float %3839, %3954
  %3956 = call float @dx.op.binary.f32(i32 35, float %3955, float 0.000000e+00)  ; FMax(a,b)
  %3957 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3947, %dx.types.Handle %22, float %3927, float %3928, float %3942, float undef, i32 0, i32 0, i32 undef, float %3956)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3958 = extractvalue %dx.types.ResRet.f32 %3957, 0
  %3959 = fcmp fast ogt float %3958, 0.000000e+00
  br i1 %3959, label %3960, label %3988

; <label>:3960                                    ; preds = %3931
  %3961 = add i32 %3921, %3939
  %3962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3961, i32 undef)  ; BufferLoad(srv,index,wot)
  %3963 = extractvalue %dx.types.ResRet.i32 %3962, 0
  %3964 = and i32 %3963, 32767
  %3965 = mul nuw nsw i32 %3964, 928
  %3966 = add nuw nsw i32 %3965, 48
  %3967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3966, i32 undef)  ; BufferLoad(srv,index,wot)
  %3968 = extractvalue %dx.types.ResRet.f32 %3967, 0
  %3969 = extractvalue %dx.types.ResRet.f32 %3967, 1
  %3970 = extractvalue %dx.types.ResRet.f32 %3967, 2
  %3971 = add nuw nsw i32 %3965, 60
  %3972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3971, i32 undef)  ; BufferLoad(srv,index,wot)
  %3973 = extractvalue %dx.types.ResRet.f32 %3972, 0
  %3974 = extractvalue %dx.types.ResRet.f32 %3972, 1
  %3975 = extractvalue %dx.types.ResRet.f32 %3972, 2
  %3976 = fmul fast float %3968, %3958
  %3977 = fmul fast float %3969, %3958
  %3978 = fmul fast float %3970, %3958
  %3979 = fadd fast float %3976, %3932
  %3980 = fadd fast float %3977, %3933
  %3981 = fadd fast float %3978, %3934
  %3982 = fmul fast float %3973, %3958
  %3983 = fmul fast float %3974, %3958
  %3984 = fmul fast float %3975, %3958
  %3985 = fadd fast float %3982, %3935
  %3986 = fadd fast float %3983, %3936
  %3987 = fadd fast float %3984, %3937
  br label %3988

; <label>:3988                                    ; preds = %3960, %3931
  %3989 = phi float [ %3979, %3960 ], [ %3932, %3931 ]
  %3990 = phi float [ %3980, %3960 ], [ %3933, %3931 ]
  %3991 = phi float [ %3981, %3960 ], [ %3934, %3931 ]
  %3992 = phi float [ %3985, %3960 ], [ %3935, %3931 ]
  %3993 = phi float [ %3986, %3960 ], [ %3936, %3931 ]
  %3994 = phi float [ %3987, %3960 ], [ %3937, %3931 ]
  %3995 = add nuw i32 %3938, 1
  %3996 = icmp eq i32 %3995, %3920
  br i1 %3996, label %3997, label %3931

; <label>:3997                                    ; preds = %3988
  br label %3998

; <label>:3998                                    ; preds = %3997, %3861
  %3999 = phi float [ 0.000000e+00, %3861 ], [ %3989, %3997 ]
  %4000 = phi float [ 0.000000e+00, %3861 ], [ %3990, %3997 ]
  %4001 = phi float [ 0.000000e+00, %3861 ], [ %3991, %3997 ]
  %4002 = phi float [ 0.000000e+00, %3861 ], [ %3992, %3997 ]
  %4003 = phi float [ 0.000000e+00, %3861 ], [ %3993, %3997 ]
  %4004 = phi float [ 0.000000e+00, %3861 ], [ %3994, %3997 ]
  %4005 = fadd fast float %4002, %3999
  %4006 = fmul fast float %4005, 0x3F847AE140000000
  %4007 = fadd fast float %4003, %4000
  %4008 = fmul fast float %4007, 0x3F847AE140000000
  %4009 = fadd fast float %4004, %4001
  %4010 = fmul fast float %4009, 0x3F847AE140000000
  br label %4011

; <label>:4011                                    ; preds = %3998, %3795, %3740, %3737, %3708, %3670
  %4012 = phi float [ %3722, %3708 ], [ -1.310720e+05, %3670 ], [ %3914, %3998 ], [ -1.310720e+05, %3740 ], [ -1.310720e+05, %3795 ], [ -1.310720e+05, %3737 ]
  %4013 = phi float [ %3732, %3708 ], [ 0.000000e+00, %3670 ], [ %4006, %3998 ], [ 0.000000e+00, %3740 ], [ 0.000000e+00, %3795 ], [ 0.000000e+00, %3737 ]
  %4014 = phi float [ %3734, %3708 ], [ 0.000000e+00, %3670 ], [ %4008, %3998 ], [ 0.000000e+00, %3740 ], [ 0.000000e+00, %3795 ], [ 0.000000e+00, %3737 ]
  %4015 = phi float [ %3736, %3708 ], [ 0.000000e+00, %3670 ], [ %4010, %3998 ], [ 0.000000e+00, %3740 ], [ 0.000000e+00, %3795 ], [ 0.000000e+00, %3737 ]
  %4016 = phi i1 [ true, %3708 ], [ false, %3670 ], [ true, %3998 ], [ false, %3740 ], [ false, %3795 ], [ false, %3737 ]
  %4017 = and i32 %210, 3
  %4018 = icmp eq i32 %4017, 1
  %4019 = select i1 %4018, float 1.000000e+00, float 0.000000e+00
  %4020 = fsub fast float %4012, %162
  %4021 = call float @dx.op.unary.f32(i32 7, float %4020)  ; Saturate(value)
  %4022 = select i1 %4016, float %4021, float 1.000000e+00
  %4023 = fmul fast float %4022, %4019
  %4024 = icmp eq i32 %4017, 3
  %4025 = select i1 %4024, float 1.000000e+00, float %4023
  %4026 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4025)  ; FMax(a,b)
  %4027 = fcmp fast olt float %4025, 1.000000e+00
  %4028 = fcmp uge float %43, 0.000000e+00
  %4029 = and i1 %4028, %4027
  br i1 %4029, label %4030, label %4040

; <label>:4030                                    ; preds = %4011
  %4031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %43, float %44, float %45, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4032 = extractvalue %dx.types.ResRet.f32 %4031, 0
  %4033 = extractvalue %dx.types.ResRet.f32 %4031, 1
  %4034 = extractvalue %dx.types.ResRet.f32 %4031, 2
  %4035 = fadd fast float %4032, %4026
  %4036 = fcmp ule float %42, 0.000000e+00
  %4037 = call float @dx.op.dot3.f32(i32 55, float %39, float %40, float %41, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4038 = select i1 %4036, float %4037, float 1.000000e+00
  %4039 = fmul fast float %4038, %4034
  br label %4040

; <label>:4040                                    ; preds = %4030, %4011
  %4041 = phi float [ %4035, %4030 ], [ %4026, %4011 ]
  %4042 = phi float [ %4033, %4030 ], [ 0.000000e+00, %4011 ]
  %4043 = phi float [ %4039, %4030 ], [ 0.000000e+00, %4011 ]
  %4044 = call float @dx.op.unary.f32(i32 7, float %4041)  ; Saturate(value)
  %4045 = call float @dx.op.unary.f32(i32 7, float %4042)  ; Saturate(value)
  %4046 = call float @dx.op.unary.f32(i32 7, float %4043)  ; Saturate(value)
  %4047 = fcmp fast une float %4045, 0.000000e+00
  %4048 = fcmp fast une float %4046, 0.000000e+00
  %4049 = or i1 %4047, %4048
  br i1 %4049, label %4050, label %4609

; <label>:4050                                    ; preds = %4040
  br i1 %4047, label %4051, label %4324

; <label>:4051                                    ; preds = %4050
  %4052 = call float @dx.op.unary.f32(i32 23, float %3495)  ; Log(value)
  %4053 = fmul fast float %4052, 4.000000e+00
  %4054 = call float @dx.op.unary.f32(i32 21, float %4053)  ; Exp(value)
  %4055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4056 = extractvalue %dx.types.CBufRet.f32 %4055, 0
  %4057 = fmul fast float %4056, %30
  %4058 = fmul fast float %4056, %31
  %4059 = fmul fast float %4056, %32
  %4060 = call float @dx.op.unary.f32(i32 6, float %39)  ; FAbs(value)
  %4061 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %4062 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %4063 = call float @dx.op.unary.f32(i32 23, float %4060)  ; Log(value)
  %4064 = call float @dx.op.unary.f32(i32 23, float %4061)  ; Log(value)
  %4065 = call float @dx.op.unary.f32(i32 23, float %4062)  ; Log(value)
  %4066 = fmul fast float %4063, 4.000000e+00
  %4067 = fmul fast float %4064, 4.000000e+00
  %4068 = fmul fast float %4065, 4.000000e+00
  %4069 = call float @dx.op.unary.f32(i32 21, float %4066)  ; Exp(value)
  %4070 = call float @dx.op.unary.f32(i32 21, float %4067)  ; Exp(value)
  %4071 = call float @dx.op.unary.f32(i32 21, float %4068)  ; Exp(value)
  %4072 = fadd fast float %4070, %4069
  %4073 = fadd fast float %4072, %4071
  %4074 = fdiv fast float 1.000000e+00, %4073
  %4075 = fmul fast float %4074, %4069
  %4076 = fcmp fast ogt float %39, 0.000000e+00
  %4077 = fcmp fast ogt float %40, 0.000000e+00
  %4078 = fcmp fast ogt float %41, 0.000000e+00
  %4079 = fcmp fast olt float %39, 0.000000e+00
  %4080 = fcmp fast olt float %40, 0.000000e+00
  %4081 = fcmp fast olt float %41, 0.000000e+00
  %4082 = zext i1 %4076 to i32
  %4083 = zext i1 %4077 to i32
  %4084 = zext i1 %4078 to i32
  %4085 = zext i1 %4079 to i32
  %4086 = zext i1 %4080 to i32
  %4087 = zext i1 %4081 to i32
  %4088 = sub nsw i32 %4082, %4085
  %4089 = sub nsw i32 %4083, %4086
  %4090 = sub nsw i32 %4084, %4087
  %4091 = call float @dx.op.unary.f32(i32 83, float %4057)  ; DerivCoarseX(value)
  %4092 = call float @dx.op.unary.f32(i32 83, float %4058)  ; DerivCoarseX(value)
  %4093 = call float @dx.op.unary.f32(i32 83, float %4059)  ; DerivCoarseX(value)
  %4094 = call float @dx.op.unary.f32(i32 84, float %4057)  ; DerivCoarseY(value)
  %4095 = call float @dx.op.unary.f32(i32 84, float %4058)  ; DerivCoarseY(value)
  %4096 = call float @dx.op.unary.f32(i32 84, float %4059)  ; DerivCoarseY(value)
  %4097 = fcmp fast ole float %242, %4075
  %4098 = fmul fast float %4074, %4072
  %4099 = fcmp fast ole float %242, %4098
  %4100 = select i1 %4099, float %4059, float %4057
  %4101 = select i1 %4099, float %4057, float %4058
  %4102 = select i1 %4097, float %4058, float %4100
  %4103 = select i1 %4097, float %4059, float %4101
  %4104 = select i1 %4099, float %4093, float %4091
  %4105 = select i1 %4099, float %4091, float %4092
  %4106 = select i1 %4097, float %4092, float %4104
  %4107 = select i1 %4097, float %4093, float %4105
  %4108 = select i1 %4099, float %4096, float %4094
  %4109 = select i1 %4099, float %4094, float %4095
  %4110 = select i1 %4097, float %4095, float %4108
  %4111 = select i1 %4097, float %4096, float %4109
  %4112 = call float @dx.op.unary.f32(i32 27, float %4102)  ; Round_ni(value)
  %4113 = call float @dx.op.unary.f32(i32 27, float %4103)  ; Round_ni(value)
  %4114 = fptosi float %4112 to i32
  %4115 = fptosi float %4113 to i32
  %4116 = xor i32 %4115, %4114
  %4117 = sitofp i32 %4116 to float
  %4118 = fptosi float %4117 to i32
  %4119 = sitofp i32 %4118 to float
  %4120 = fmul fast float %4119, 0x3FE3C6EF40000000
  %4121 = frem fast float %4112, 2.560000e+02
  %4122 = frem fast float %4113, 2.560000e+02
  %4123 = fptoui float %4121 to i32
  %4124 = fptoui float %4122 to i32
  %4125 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %4123, i32 %4124, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4126 = extractvalue %dx.types.ResRet.f32 %4125, 0
  %4127 = extractvalue %dx.types.ResRet.f32 %4125, 1
  %4128 = extractvalue %dx.types.ResRet.f32 %4125, 2
  %4129 = fadd fast float %4126, %4120
  %4130 = fadd fast float %4127, %4120
  %4131 = fadd fast float %4128, %4120
  %4132 = call float @dx.op.unary.f32(i32 22, float %4129)  ; Frc(value)
  %4133 = call float @dx.op.unary.f32(i32 22, float %4130)  ; Frc(value)
  %4134 = call float @dx.op.unary.f32(i32 22, float %4131)  ; Frc(value)
  %4135 = fmul fast float %4134, 0x401921FB60000000
  %4136 = call float @dx.op.unary.f32(i32 13, float %4135)  ; Sin(value)
  %4137 = call float @dx.op.unary.f32(i32 12, float %4135)  ; Cos(value)
  %4138 = fsub fast float -0.000000e+00, %4137
  %4139 = fmul fast float %4137, %4102
  %4140 = call float @dx.op.tertiary.f32(i32 46, float %4136, float %4103, float %4139)  ; FMad(a,b,c)
  %4141 = fmul fast float %4136, %4102
  %4142 = call float @dx.op.tertiary.f32(i32 46, float %4138, float %4103, float %4141)  ; FMad(a,b,c)
  %4143 = fadd fast float %4140, %4132
  %4144 = fadd fast float %4142, %4133
  %4145 = extractvalue %dx.types.CBufRet.f32 %4055, 3
  %4146 = bitcast float %4145 to i32
  %4147 = icmp eq i32 %4146, 0
  br i1 %4147, label %4186, label %4148

; <label>:4148                                    ; preds = %4051
  %4149 = add i32 %4146, 0
  %4150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4149, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4151 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4150, %dx.types.Handle %74, float %4143, float %4144, float undef, float undef, i32 0, i32 0, i32 undef, float %4106, float %4107, float undef, float %4110, float %4111, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4152 = extractvalue %dx.types.ResRet.f32 %4151, 0
  %4153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4154 = extractvalue %dx.types.CBufRet.f32 %4153, 1
  %4155 = extractvalue %dx.types.CBufRet.f32 %4153, 2
  %4156 = fsub fast float 1.000000e+00, %4045
  %4157 = call float @dx.op.binary.f32(i32 35, float %4156, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4158 = bitcast float %4045 to i32
  %4159 = sitofp i32 %4158 to float
  %4160 = fadd fast float %4159, 0xC1CFBF8940000000
  %4161 = fmul fast float %4155, %4160
  %4162 = fadd fast float %4161, 0x41CFBF8940000000
  %4163 = fptosi float %4162 to i32
  %4164 = bitcast i32 %4163 to float
  %4165 = bitcast float %4157 to i32
  %4166 = sitofp i32 %4165 to float
  %4167 = fadd fast float %4166, 0xC1CFBF8940000000
  %4168 = fmul fast float %4167, %4155
  %4169 = fadd fast float %4168, 0x41CFBF8940000000
  %4170 = fptosi float %4169 to i32
  %4171 = bitcast i32 %4170 to float
  %4172 = fmul fast float %4164, %4154
  %4173 = fmul fast float %4171, %4154
  %4174 = fsub fast float %4157, %4172
  %4175 = fadd fast float %4173, %4157
  %4176 = call float @dx.op.unary.f32(i32 7, float %4174)  ; Saturate(value)
  %4177 = call float @dx.op.unary.f32(i32 7, float %4175)  ; Saturate(value)
  %4178 = fsub fast float %4152, %4176
  %4179 = fsub fast float %4177, %4176
  %4180 = bitcast float %4179 to i32
  %4181 = sub nsw i32 2129859010, %4180
  %4182 = bitcast i32 %4181 to float
  %4183 = fmul fast float %4182, %4178
  %4184 = call float @dx.op.unary.f32(i32 7, float %4183)  ; Saturate(value)
  %4185 = fcmp fast olt float %4184, 0x3F70101020000000
  br i1 %4185, label %4324, label %4186

; <label>:4186                                    ; preds = %4148, %4051
  %4187 = phi float [ %4184, %4148 ], [ %4045, %4051 ]
  %4188 = fmul fast float %4187, %4054
  %4189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4190 = extractvalue %dx.types.CBufRet.i32 %4189, 1
  %4191 = extractvalue %dx.types.CBufRet.i32 %4189, 0
  %4192 = add i32 %4191, 0
  %4193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4192, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4194 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4193, %dx.types.Handle %73, float %4143, float %4144, float undef, float undef, i32 0, i32 0, i32 undef, float %4106, float %4107, float undef, float %4110, float %4111, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4195 = extractvalue %dx.types.ResRet.f32 %4194, 0
  %4196 = extractvalue %dx.types.ResRet.f32 %4194, 1
  %4197 = extractvalue %dx.types.ResRet.f32 %4194, 2
  %4198 = extractvalue %dx.types.ResRet.f32 %4194, 3
  %4199 = and i32 %4190, 255
  %4200 = uitofp i32 %4199 to float
  %4201 = lshr i32 %4190, 8
  %4202 = and i32 %4201, 255
  %4203 = uitofp i32 %4202 to float
  %4204 = fmul fast float %4198, %4200
  %4205 = fadd fast float %4204, %4203
  %4206 = fmul fast float %4205, 0x3F70101000000000
  %4207 = fadd fast float %4206, 0xBFB99999A0000000
  %4208 = call float @dx.op.unary.f32(i32 7, float %4207)  ; Saturate(value)
  %4209 = fmul fast float %4208, 0x3FF1C71C80000000
  %4210 = call float @dx.op.binary.f32(i32 36, float %4206, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4211 = fsub fast float 1.000000e+00, %4209
  %4212 = call float @dx.op.unary.f32(i32 7, float %4211)  ; Saturate(value)
  %4213 = fmul fast float %4212, %4195
  %4214 = fmul fast float %4212, %4196
  %4215 = fmul fast float %4212, %4197
  %4216 = call float @dx.op.unary.f32(i32 7, float %4213)  ; Saturate(value)
  %4217 = call float @dx.op.unary.f32(i32 7, float %4214)  ; Saturate(value)
  %4218 = call float @dx.op.unary.f32(i32 7, float %4215)  ; Saturate(value)
  %4219 = fmul fast float %4209, %4195
  %4220 = fmul fast float %4209, %4196
  %4221 = fmul fast float %4209, %4197
  %4222 = fadd fast float %4219, %4210
  %4223 = fadd fast float %4220, %4210
  %4224 = fadd fast float %4221, %4210
  %4225 = call float @dx.op.unary.f32(i32 7, float %4222)  ; Saturate(value)
  %4226 = call float @dx.op.unary.f32(i32 7, float %4223)  ; Saturate(value)
  %4227 = call float @dx.op.unary.f32(i32 7, float %4224)  ; Saturate(value)
  %4228 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4229 = extractvalue %dx.types.CBufRet.i32 %4228, 3
  %4230 = extractvalue %dx.types.CBufRet.i32 %4228, 2
  %4231 = add i32 %4230, 0
  %4232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4231, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4233 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4232, %dx.types.Handle %73, float %4143, float %4144, float undef, float undef, i32 0, i32 0, i32 undef, float %4106, float %4107, float undef, float %4110, float %4111, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4234 = extractvalue %dx.types.ResRet.f32 %4233, 0
  %4235 = extractvalue %dx.types.ResRet.f32 %4233, 1
  %4236 = extractvalue %dx.types.ResRet.f32 %4233, 2
  %4237 = extractvalue %dx.types.ResRet.f32 %4233, 3
  %4238 = and i32 %4229, 255
  %4239 = uitofp i32 %4238 to float
  %4240 = lshr i32 %4229, 8
  %4241 = and i32 %4240, 255
  %4242 = uitofp i32 %4241 to float
  %4243 = lshr i32 %4229, 16
  %4244 = and i32 %4243, 255
  %4245 = uitofp i32 %4244 to float
  %4246 = fmul fast float %4245, 0x3F70101000000000
  %4247 = fmul fast float %4234, %4239
  %4248 = fadd fast float %4247, %4242
  %4249 = fmul fast float %4248, 0x3F70101000000000
  %4250 = fadd fast float %4235, -5.000000e-01
  %4251 = fadd fast float %4237, -5.000000e-01
  %4252 = fmul fast float %4250, %4246
  %4253 = fmul fast float %4251, %4246
  %4254 = fadd fast float %4252, 5.000000e-01
  %4255 = fadd fast float %4253, 5.000000e-01
  %4256 = fmul fast float %4254, 2.000000e+00
  %4257 = fadd fast float %4256, -1.000000e+00
  %4258 = fmul fast float %4255, 2.000000e+00
  %4259 = fadd fast float %4258, -1.000000e+00
  %4260 = fadd fast float %4257, %4259
  %4261 = fmul fast float %4260, 5.000000e-01
  %4262 = fsub fast float %4257, %4259
  %4263 = fmul fast float %4262, 5.000000e-01
  %4264 = call float @dx.op.unary.f32(i32 6, float %4261)  ; FAbs(value)
  %4265 = fsub fast float 1.000000e+00, %4264
  %4266 = call float @dx.op.unary.f32(i32 6, float %4263)  ; FAbs(value)
  %4267 = fsub fast float %4265, %4266
  %4268 = call float @dx.op.dot3.f32(i32 55, float %4261, float %4263, float %4267, float %4261, float %4263, float %4267)  ; Dot3(ax,ay,az,bx,by,bz)
  %4269 = call float @dx.op.unary.f32(i32 25, float %4268)  ; Rsqrt(value)
  %4270 = fmul fast float %4261, %4269
  %4271 = fmul fast float %4263, %4269
  %4272 = select i1 %4099, i32 %4089, i32 %4090
  %4273 = select i1 %4097, i32 %4088, i32 %4272
  %4274 = sitofp i32 %4273 to float
  %4275 = fmul fast float %4267, %4274
  %4276 = fmul fast float %4275, %4269
  %4277 = select i1 %4099, float %4276, float %4271
  %4278 = select i1 %4099, float %4271, float %4276
  %4279 = select i1 %4097, float %4276, float %4270
  %4280 = select i1 %4097, float %4271, float %4277
  %4281 = select i1 %4097, float %4270, float %4278
  %4282 = fsub fast float %4216, %3649
  %4283 = fsub fast float %4217, %3650
  %4284 = fsub fast float %4218, %3651
  %4285 = fmul fast float %4282, %4188
  %4286 = fmul fast float %4283, %4188
  %4287 = fmul fast float %4284, %4188
  %4288 = fadd fast float %4285, %3649
  %4289 = fadd fast float %4286, %3650
  %4290 = fadd fast float %4287, %3651
  %4291 = fsub fast float %4225, %3568
  %4292 = fsub fast float %4226, %3569
  %4293 = fsub fast float %4227, %3570
  %4294 = fmul fast float %4291, %4188
  %4295 = fmul fast float %4292, %4188
  %4296 = fmul fast float %4293, %4188
  %4297 = fadd fast float %4294, %3568
  %4298 = fadd fast float %4295, %3569
  %4299 = fadd fast float %4296, %3570
  %4300 = fadd fast float %4279, %3525
  %4301 = fadd fast float %4280, %3526
  %4302 = fadd fast float %4281, %3527
  %4303 = call float @dx.op.dot3.f32(i32 55, float %4300, float %4301, float %4302, float %4300, float %4301, float %4302)  ; Dot3(ax,ay,az,bx,by,bz)
  %4304 = call float @dx.op.unary.f32(i32 25, float %4303)  ; Rsqrt(value)
  %4305 = fmul fast float %4300, %4304
  %4306 = fmul fast float %4301, %4304
  %4307 = fmul fast float %4302, %4304
  %4308 = fsub fast float %4305, %3525
  %4309 = fsub fast float %4306, %3526
  %4310 = fsub fast float %4307, %3527
  %4311 = fmul fast float %4308, %4188
  %4312 = fmul fast float %4309, %4188
  %4313 = fmul fast float %4310, %4188
  %4314 = fadd fast float %4311, %3525
  %4315 = fadd fast float %4312, %3526
  %4316 = fadd fast float %4313, %3527
  %4317 = call float @dx.op.binary.f32(i32 36, float %3495, float %4236)  ; FMin(a,b)
  %4318 = fsub fast float %4317, %3495
  %4319 = fmul fast float %4318, %4188
  %4320 = fadd fast float %4319, %3495
  %4321 = fsub fast float %4249, %3571
  %4322 = fmul fast float %4321, %4188
  %4323 = fadd fast float %4322, %3571
  br label %4324

; <label>:4324                                    ; preds = %4186, %4148, %4050
  %4325 = phi float [ %4297, %4186 ], [ %3568, %4148 ], [ %3568, %4050 ]
  %4326 = phi float [ %4298, %4186 ], [ %3569, %4148 ], [ %3569, %4050 ]
  %4327 = phi float [ %4299, %4186 ], [ %3570, %4148 ], [ %3570, %4050 ]
  %4328 = phi float [ %4314, %4186 ], [ %3525, %4148 ], [ %3525, %4050 ]
  %4329 = phi float [ %4315, %4186 ], [ %3526, %4148 ], [ %3526, %4050 ]
  %4330 = phi float [ %4316, %4186 ], [ %3527, %4148 ], [ %3527, %4050 ]
  %4331 = phi float [ %4288, %4186 ], [ %3649, %4148 ], [ %3649, %4050 ]
  %4332 = phi float [ %4289, %4186 ], [ %3650, %4148 ], [ %3650, %4050 ]
  %4333 = phi float [ %4290, %4186 ], [ %3651, %4148 ], [ %3651, %4050 ]
  %4334 = phi float [ %4323, %4186 ], [ %3571, %4148 ], [ %3571, %4050 ]
  %4335 = phi float [ %4320, %4186 ], [ %3495, %4148 ], [ %3495, %4050 ]
  br i1 %4048, label %4336, label %4609

; <label>:4336                                    ; preds = %4324
  %4337 = call float @dx.op.unary.f32(i32 23, float %4335)  ; Log(value)
  %4338 = fmul fast float %4337, 4.000000e+00
  %4339 = call float @dx.op.unary.f32(i32 21, float %4338)  ; Exp(value)
  %4340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4341 = extractvalue %dx.types.CBufRet.f32 %4340, 0
  %4342 = fmul fast float %4341, %30
  %4343 = fmul fast float %4341, %31
  %4344 = fmul fast float %4341, %32
  %4345 = call float @dx.op.unary.f32(i32 6, float %39)  ; FAbs(value)
  %4346 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %4347 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %4348 = call float @dx.op.unary.f32(i32 23, float %4345)  ; Log(value)
  %4349 = call float @dx.op.unary.f32(i32 23, float %4346)  ; Log(value)
  %4350 = call float @dx.op.unary.f32(i32 23, float %4347)  ; Log(value)
  %4351 = fmul fast float %4348, 4.000000e+00
  %4352 = fmul fast float %4349, 4.000000e+00
  %4353 = fmul fast float %4350, 4.000000e+00
  %4354 = call float @dx.op.unary.f32(i32 21, float %4351)  ; Exp(value)
  %4355 = call float @dx.op.unary.f32(i32 21, float %4352)  ; Exp(value)
  %4356 = call float @dx.op.unary.f32(i32 21, float %4353)  ; Exp(value)
  %4357 = fadd fast float %4355, %4354
  %4358 = fadd fast float %4357, %4356
  %4359 = fdiv fast float 1.000000e+00, %4358
  %4360 = fmul fast float %4359, %4354
  %4361 = fcmp fast ogt float %39, 0.000000e+00
  %4362 = fcmp fast ogt float %40, 0.000000e+00
  %4363 = fcmp fast ogt float %41, 0.000000e+00
  %4364 = fcmp fast olt float %39, 0.000000e+00
  %4365 = fcmp fast olt float %40, 0.000000e+00
  %4366 = fcmp fast olt float %41, 0.000000e+00
  %4367 = zext i1 %4361 to i32
  %4368 = zext i1 %4362 to i32
  %4369 = zext i1 %4363 to i32
  %4370 = zext i1 %4364 to i32
  %4371 = zext i1 %4365 to i32
  %4372 = zext i1 %4366 to i32
  %4373 = sub nsw i32 %4367, %4370
  %4374 = sub nsw i32 %4368, %4371
  %4375 = sub nsw i32 %4369, %4372
  %4376 = call float @dx.op.unary.f32(i32 83, float %4342)  ; DerivCoarseX(value)
  %4377 = call float @dx.op.unary.f32(i32 83, float %4343)  ; DerivCoarseX(value)
  %4378 = call float @dx.op.unary.f32(i32 83, float %4344)  ; DerivCoarseX(value)
  %4379 = call float @dx.op.unary.f32(i32 84, float %4342)  ; DerivCoarseY(value)
  %4380 = call float @dx.op.unary.f32(i32 84, float %4343)  ; DerivCoarseY(value)
  %4381 = call float @dx.op.unary.f32(i32 84, float %4344)  ; DerivCoarseY(value)
  %4382 = fcmp fast ole float %242, %4360
  %4383 = fmul fast float %4359, %4357
  %4384 = fcmp fast ole float %242, %4383
  %4385 = select i1 %4384, float %4344, float %4342
  %4386 = select i1 %4384, float %4342, float %4343
  %4387 = select i1 %4382, float %4343, float %4385
  %4388 = select i1 %4382, float %4344, float %4386
  %4389 = select i1 %4384, float %4378, float %4376
  %4390 = select i1 %4384, float %4376, float %4377
  %4391 = select i1 %4382, float %4377, float %4389
  %4392 = select i1 %4382, float %4378, float %4390
  %4393 = select i1 %4384, float %4381, float %4379
  %4394 = select i1 %4384, float %4379, float %4380
  %4395 = select i1 %4382, float %4380, float %4393
  %4396 = select i1 %4382, float %4381, float %4394
  %4397 = call float @dx.op.unary.f32(i32 27, float %4387)  ; Round_ni(value)
  %4398 = call float @dx.op.unary.f32(i32 27, float %4388)  ; Round_ni(value)
  %4399 = fptosi float %4397 to i32
  %4400 = fptosi float %4398 to i32
  %4401 = xor i32 %4400, %4399
  %4402 = sitofp i32 %4401 to float
  %4403 = fptosi float %4402 to i32
  %4404 = sitofp i32 %4403 to float
  %4405 = fmul fast float %4404, 0x3FE3C6EF40000000
  %4406 = frem fast float %4397, 2.560000e+02
  %4407 = frem fast float %4398, 2.560000e+02
  %4408 = fptoui float %4406 to i32
  %4409 = fptoui float %4407 to i32
  %4410 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %4408, i32 %4409, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4411 = extractvalue %dx.types.ResRet.f32 %4410, 0
  %4412 = extractvalue %dx.types.ResRet.f32 %4410, 1
  %4413 = extractvalue %dx.types.ResRet.f32 %4410, 2
  %4414 = fadd fast float %4411, %4405
  %4415 = fadd fast float %4412, %4405
  %4416 = fadd fast float %4413, %4405
  %4417 = call float @dx.op.unary.f32(i32 22, float %4414)  ; Frc(value)
  %4418 = call float @dx.op.unary.f32(i32 22, float %4415)  ; Frc(value)
  %4419 = call float @dx.op.unary.f32(i32 22, float %4416)  ; Frc(value)
  %4420 = fmul fast float %4419, 0x401921FB60000000
  %4421 = call float @dx.op.unary.f32(i32 13, float %4420)  ; Sin(value)
  %4422 = call float @dx.op.unary.f32(i32 12, float %4420)  ; Cos(value)
  %4423 = fsub fast float -0.000000e+00, %4422
  %4424 = fmul fast float %4422, %4387
  %4425 = call float @dx.op.tertiary.f32(i32 46, float %4421, float %4388, float %4424)  ; FMad(a,b,c)
  %4426 = fmul fast float %4421, %4387
  %4427 = call float @dx.op.tertiary.f32(i32 46, float %4423, float %4388, float %4426)  ; FMad(a,b,c)
  %4428 = fadd fast float %4425, %4417
  %4429 = fadd fast float %4427, %4418
  %4430 = extractvalue %dx.types.CBufRet.f32 %4340, 3
  %4431 = bitcast float %4430 to i32
  %4432 = icmp eq i32 %4431, 0
  br i1 %4432, label %4471, label %4433

; <label>:4433                                    ; preds = %4336
  %4434 = add i32 %4431, 0
  %4435 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4434, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4436 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4435, %dx.types.Handle %74, float %4428, float %4429, float undef, float undef, i32 0, i32 0, i32 undef, float %4391, float %4392, float undef, float %4395, float %4396, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4437 = extractvalue %dx.types.ResRet.f32 %4436, 0
  %4438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4439 = extractvalue %dx.types.CBufRet.f32 %4438, 1
  %4440 = extractvalue %dx.types.CBufRet.f32 %4438, 2
  %4441 = fsub fast float 1.000000e+00, %4046
  %4442 = call float @dx.op.binary.f32(i32 35, float %4441, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4443 = bitcast float %4046 to i32
  %4444 = sitofp i32 %4443 to float
  %4445 = fadd fast float %4444, 0xC1CFBF8940000000
  %4446 = fmul fast float %4440, %4445
  %4447 = fadd fast float %4446, 0x41CFBF8940000000
  %4448 = fptosi float %4447 to i32
  %4449 = bitcast i32 %4448 to float
  %4450 = bitcast float %4442 to i32
  %4451 = sitofp i32 %4450 to float
  %4452 = fadd fast float %4451, 0xC1CFBF8940000000
  %4453 = fmul fast float %4452, %4440
  %4454 = fadd fast float %4453, 0x41CFBF8940000000
  %4455 = fptosi float %4454 to i32
  %4456 = bitcast i32 %4455 to float
  %4457 = fmul fast float %4449, %4439
  %4458 = fmul fast float %4456, %4439
  %4459 = fsub fast float %4442, %4457
  %4460 = fadd fast float %4458, %4442
  %4461 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4462 = call float @dx.op.unary.f32(i32 7, float %4460)  ; Saturate(value)
  %4463 = fsub fast float %4437, %4461
  %4464 = fsub fast float %4462, %4461
  %4465 = bitcast float %4464 to i32
  %4466 = sub nsw i32 2129859010, %4465
  %4467 = bitcast i32 %4466 to float
  %4468 = fmul fast float %4467, %4463
  %4469 = call float @dx.op.unary.f32(i32 7, float %4468)  ; Saturate(value)
  %4470 = fcmp fast olt float %4469, 0x3F70101020000000
  br i1 %4470, label %4609, label %4471

; <label>:4471                                    ; preds = %4433, %4336
  %4472 = phi float [ %4469, %4433 ], [ %4046, %4336 ]
  %4473 = fmul fast float %4472, %4339
  %4474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.i32 %4474, 1
  %4476 = extractvalue %dx.types.CBufRet.i32 %4474, 0
  %4477 = add i32 %4476, 0
  %4478 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4477, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4479 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4478, %dx.types.Handle %73, float %4428, float %4429, float undef, float undef, i32 0, i32 0, i32 undef, float %4391, float %4392, float undef, float %4395, float %4396, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4480 = extractvalue %dx.types.ResRet.f32 %4479, 0
  %4481 = extractvalue %dx.types.ResRet.f32 %4479, 1
  %4482 = extractvalue %dx.types.ResRet.f32 %4479, 2
  %4483 = extractvalue %dx.types.ResRet.f32 %4479, 3
  %4484 = and i32 %4475, 255
  %4485 = uitofp i32 %4484 to float
  %4486 = lshr i32 %4475, 8
  %4487 = and i32 %4486, 255
  %4488 = uitofp i32 %4487 to float
  %4489 = fmul fast float %4483, %4485
  %4490 = fadd fast float %4489, %4488
  %4491 = fmul fast float %4490, 0x3F70101000000000
  %4492 = fadd fast float %4491, 0xBFB99999A0000000
  %4493 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4494 = fmul fast float %4493, 0x3FF1C71C80000000
  %4495 = call float @dx.op.binary.f32(i32 36, float %4491, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4496 = fsub fast float 1.000000e+00, %4494
  %4497 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4498 = fmul fast float %4497, %4480
  %4499 = fmul fast float %4497, %4481
  %4500 = fmul fast float %4497, %4482
  %4501 = call float @dx.op.unary.f32(i32 7, float %4498)  ; Saturate(value)
  %4502 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4503 = call float @dx.op.unary.f32(i32 7, float %4500)  ; Saturate(value)
  %4504 = fmul fast float %4494, %4480
  %4505 = fmul fast float %4494, %4481
  %4506 = fmul fast float %4494, %4482
  %4507 = fadd fast float %4504, %4495
  %4508 = fadd fast float %4505, %4495
  %4509 = fadd fast float %4506, %4495
  %4510 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4511 = call float @dx.op.unary.f32(i32 7, float %4508)  ; Saturate(value)
  %4512 = call float @dx.op.unary.f32(i32 7, float %4509)  ; Saturate(value)
  %4513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4514 = extractvalue %dx.types.CBufRet.i32 %4513, 3
  %4515 = extractvalue %dx.types.CBufRet.i32 %4513, 2
  %4516 = add i32 %4515, 0
  %4517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4516, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4518 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4517, %dx.types.Handle %73, float %4428, float %4429, float undef, float undef, i32 0, i32 0, i32 undef, float %4391, float %4392, float undef, float %4395, float %4396, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4519 = extractvalue %dx.types.ResRet.f32 %4518, 0
  %4520 = extractvalue %dx.types.ResRet.f32 %4518, 1
  %4521 = extractvalue %dx.types.ResRet.f32 %4518, 2
  %4522 = extractvalue %dx.types.ResRet.f32 %4518, 3
  %4523 = and i32 %4514, 255
  %4524 = uitofp i32 %4523 to float
  %4525 = lshr i32 %4514, 8
  %4526 = and i32 %4525, 255
  %4527 = uitofp i32 %4526 to float
  %4528 = lshr i32 %4514, 16
  %4529 = and i32 %4528, 255
  %4530 = uitofp i32 %4529 to float
  %4531 = fmul fast float %4530, 0x3F70101000000000
  %4532 = fmul fast float %4519, %4524
  %4533 = fadd fast float %4532, %4527
  %4534 = fmul fast float %4533, 0x3F70101000000000
  %4535 = fadd fast float %4520, -5.000000e-01
  %4536 = fadd fast float %4522, -5.000000e-01
  %4537 = fmul fast float %4535, %4531
  %4538 = fmul fast float %4536, %4531
  %4539 = fadd fast float %4537, 5.000000e-01
  %4540 = fadd fast float %4538, 5.000000e-01
  %4541 = fmul fast float %4539, 2.000000e+00
  %4542 = fadd fast float %4541, -1.000000e+00
  %4543 = fmul fast float %4540, 2.000000e+00
  %4544 = fadd fast float %4543, -1.000000e+00
  %4545 = fadd fast float %4542, %4544
  %4546 = fmul fast float %4545, 5.000000e-01
  %4547 = fsub fast float %4542, %4544
  %4548 = fmul fast float %4547, 5.000000e-01
  %4549 = call float @dx.op.unary.f32(i32 6, float %4546)  ; FAbs(value)
  %4550 = fsub fast float 1.000000e+00, %4549
  %4551 = call float @dx.op.unary.f32(i32 6, float %4548)  ; FAbs(value)
  %4552 = fsub fast float %4550, %4551
  %4553 = call float @dx.op.dot3.f32(i32 55, float %4546, float %4548, float %4552, float %4546, float %4548, float %4552)  ; Dot3(ax,ay,az,bx,by,bz)
  %4554 = call float @dx.op.unary.f32(i32 25, float %4553)  ; Rsqrt(value)
  %4555 = fmul fast float %4546, %4554
  %4556 = fmul fast float %4548, %4554
  %4557 = select i1 %4384, i32 %4374, i32 %4375
  %4558 = select i1 %4382, i32 %4373, i32 %4557
  %4559 = sitofp i32 %4558 to float
  %4560 = fmul fast float %4552, %4559
  %4561 = fmul fast float %4560, %4554
  %4562 = select i1 %4384, float %4561, float %4556
  %4563 = select i1 %4384, float %4556, float %4561
  %4564 = select i1 %4382, float %4561, float %4555
  %4565 = select i1 %4382, float %4556, float %4562
  %4566 = select i1 %4382, float %4555, float %4563
  %4567 = fsub fast float %4501, %4331
  %4568 = fsub fast float %4502, %4332
  %4569 = fsub fast float %4503, %4333
  %4570 = fmul fast float %4567, %4473
  %4571 = fmul fast float %4568, %4473
  %4572 = fmul fast float %4569, %4473
  %4573 = fadd fast float %4570, %4331
  %4574 = fadd fast float %4571, %4332
  %4575 = fadd fast float %4572, %4333
  %4576 = fsub fast float %4510, %4325
  %4577 = fsub fast float %4511, %4326
  %4578 = fsub fast float %4512, %4327
  %4579 = fmul fast float %4576, %4473
  %4580 = fmul fast float %4577, %4473
  %4581 = fmul fast float %4578, %4473
  %4582 = fadd fast float %4579, %4325
  %4583 = fadd fast float %4580, %4326
  %4584 = fadd fast float %4581, %4327
  %4585 = fadd fast float %4564, %4328
  %4586 = fadd fast float %4565, %4329
  %4587 = fadd fast float %4566, %4330
  %4588 = call float @dx.op.dot3.f32(i32 55, float %4585, float %4586, float %4587, float %4585, float %4586, float %4587)  ; Dot3(ax,ay,az,bx,by,bz)
  %4589 = call float @dx.op.unary.f32(i32 25, float %4588)  ; Rsqrt(value)
  %4590 = fmul fast float %4585, %4589
  %4591 = fmul fast float %4586, %4589
  %4592 = fmul fast float %4587, %4589
  %4593 = fsub fast float %4590, %4328
  %4594 = fsub fast float %4591, %4329
  %4595 = fsub fast float %4592, %4330
  %4596 = fmul fast float %4593, %4473
  %4597 = fmul fast float %4594, %4473
  %4598 = fmul fast float %4595, %4473
  %4599 = fadd fast float %4596, %4328
  %4600 = fadd fast float %4597, %4329
  %4601 = fadd fast float %4598, %4330
  %4602 = call float @dx.op.binary.f32(i32 36, float %4335, float %4521)  ; FMin(a,b)
  %4603 = fsub fast float %4602, %4335
  %4604 = fmul fast float %4603, %4473
  %4605 = fadd fast float %4604, %4335
  %4606 = fsub fast float %4534, %4334
  %4607 = fmul fast float %4606, %4473
  %4608 = fadd fast float %4607, %4334
  br label %4609

; <label>:4609                                    ; preds = %4471, %4433, %4324, %4040
  %4610 = phi float [ %4582, %4471 ], [ %4325, %4433 ], [ %4325, %4324 ], [ %3568, %4040 ]
  %4611 = phi float [ %4583, %4471 ], [ %4326, %4433 ], [ %4326, %4324 ], [ %3569, %4040 ]
  %4612 = phi float [ %4584, %4471 ], [ %4327, %4433 ], [ %4327, %4324 ], [ %3570, %4040 ]
  %4613 = phi float [ %4599, %4471 ], [ %4328, %4433 ], [ %4328, %4324 ], [ %3525, %4040 ]
  %4614 = phi float [ %4600, %4471 ], [ %4329, %4433 ], [ %4329, %4324 ], [ %3526, %4040 ]
  %4615 = phi float [ %4601, %4471 ], [ %4330, %4433 ], [ %4330, %4324 ], [ %3527, %4040 ]
  %4616 = phi float [ %4573, %4471 ], [ %4331, %4433 ], [ %4331, %4324 ], [ %3649, %4040 ]
  %4617 = phi float [ %4574, %4471 ], [ %4332, %4433 ], [ %4332, %4324 ], [ %3650, %4040 ]
  %4618 = phi float [ %4575, %4471 ], [ %4333, %4433 ], [ %4333, %4324 ], [ %3651, %4040 ]
  %4619 = phi float [ %4608, %4471 ], [ %4334, %4433 ], [ %4334, %4324 ], [ %3571, %4040 ]
  %4620 = phi float [ %4605, %4471 ], [ %4335, %4433 ], [ %4335, %4324 ], [ %3495, %4040 ]
  %4621 = fcmp fast une float %4044, 0.000000e+00
  %4622 = fsub fast float -0.000000e+00, %180
  %4623 = fsub fast float -0.000000e+00, %181
  %4624 = fsub fast float -0.000000e+00, %182
  br i1 %4621, label %4625, label %4786

; <label>:4625                                    ; preds = %4609
  %4626 = call float @dx.op.dot3.f32(i32 55, float %4622, float %4623, float %4624, float %86, float %88, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %4627 = fmul fast float %4044, 2.500000e+00
  %4628 = call float @dx.op.unary.f32(i32 7, float %4627)  ; Saturate(value)
  %4629 = fmul fast float %4044, 0x4013FFFFE0000000
  %4630 = fadd fast float %4629, 0xBFFFFFFFE0000000
  %4631 = call float @dx.op.unary.f32(i32 7, float %4630)  ; Saturate(value)
  %4632 = fmul fast float %4044, 0x4004000020000000
  %4633 = fadd fast float %4632, 0xBFF8000040000000
  %4634 = call float @dx.op.unary.f32(i32 7, float %4633)  ; Saturate(value)
  %4635 = fmul fast float %3550, 1.000000e+01
  %4636 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4637 = fmul fast float %4636, 2.000000e+00
  %4638 = fsub fast float 3.000000e+00, %4637
  %4639 = fmul fast float %4636, %4636
  %4640 = fmul fast float %4639, %4638
  %4641 = fsub fast float 1.000000e+00, %4640
  %4642 = fsub fast float 0x3FE3333340000000, %4619
  %4643 = fmul fast float %4642, 0x400AAAAAA0000000
  %4644 = call float @dx.op.unary.f32(i32 7, float %4643)  ; Saturate(value)
  %4645 = fmul fast float %4641, %4644
  %4646 = fmul fast float %4616, 0x3FEA2B8620000000
  %4647 = fmul fast float %4617, 0x3FEA2B8620000000
  %4648 = fmul fast float %4618, 0x3FEA2B8620000000
  %4649 = fadd fast float %4646, 0x3FC81DFBA0000000
  %4650 = fmul fast float %4649, %4616
  %4651 = fadd fast float %4650, 0x3F910E6020000000
  %4652 = fadd fast float %4647, 0x3FC81DFBA0000000
  %4653 = fmul fast float %4652, %4617
  %4654 = fadd fast float %4653, 0x3F910E6020000000
  %4655 = fadd fast float %4648, 0x3FC81DFBA0000000
  %4656 = fmul fast float %4655, %4618
  %4657 = fadd fast float %4656, 0x3F910E6020000000
  %4658 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4659 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4660 = call float @dx.op.unary.f32(i32 7, float %4657)  ; Saturate(value)
  %4661 = fsub fast float %4658, %4616
  %4662 = fsub fast float %4659, %4617
  %4663 = fsub fast float %4660, %4618
  %4664 = fmul fast float %4661, %4628
  %4665 = fmul fast float %4664, %4645
  %4666 = fmul fast float %4662, %4628
  %4667 = fmul fast float %4666, %4645
  %4668 = fmul fast float %4663, %4628
  %4669 = fmul fast float %4668, %4645
  %4670 = fadd fast float %4665, %4616
  %4671 = fadd fast float %4667, %4617
  %4672 = fadd fast float %4669, %4618
  %4673 = fmul fast float %4620, %4620
  %4674 = fmul fast float %4673, %4673
  %4675 = fadd fast float %4631, 1.000000e+00
  %4676 = fsub fast float %4675, %4645
  %4677 = call float @dx.op.unary.f32(i32 7, float %4676)  ; Saturate(value)
  %4678 = call float @dx.op.dot3.f32(i32 55, float %86, float %88, float %90, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4679 = call float @dx.op.unary.f32(i32 7, float %4678)  ; Saturate(value)
  %4680 = fsub fast float 1.000000e+00, %4674
  %4681 = call float @dx.op.binary.f32(i32 36, float %4677, float %4680)  ; FMin(a,b)
  %4682 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4683 = call float @dx.op.binary.f32(i32 35, float %4681, float %4682)  ; FMax(a,b)
  %4684 = fadd fast float %4679, 0xBFE4CCCCC0000000
  %4685 = fmul fast float %4684, 0x4006DB6DA0000000
  %4686 = call float @dx.op.unary.f32(i32 7, float %4685)  ; Saturate(value)
  %4687 = fmul fast float %4686, 2.000000e+00
  %4688 = fsub fast float 3.000000e+00, %4687
  %4689 = bitcast float %4610 to i32
  %4690 = ashr i32 %4689, 1
  %4691 = add nsw i32 %4690, 532487669
  %4692 = bitcast i32 %4691 to float
  %4693 = fsub fast float 1.000000e+00, %4692
  %4694 = bitcast float %4693 to i32
  %4695 = sub nsw i32 2129859010, %4694
  %4696 = bitcast i32 %4695 to float
  %4697 = fmul fast float %4696, 2.000000e+00
  %4698 = bitcast float %4611 to i32
  %4699 = ashr i32 %4698, 1
  %4700 = add nsw i32 %4699, 532487669
  %4701 = bitcast i32 %4700 to float
  %4702 = fsub fast float 1.000000e+00, %4701
  %4703 = bitcast float %4702 to i32
  %4704 = sub nsw i32 2129859010, %4703
  %4705 = bitcast i32 %4704 to float
  %4706 = fmul fast float %4705, 2.000000e+00
  %4707 = bitcast float %4612 to i32
  %4708 = ashr i32 %4707, 1
  %4709 = add nsw i32 %4708, 532487669
  %4710 = bitcast i32 %4709 to float
  %4711 = fsub fast float 1.000000e+00, %4710
  %4712 = bitcast float %4711 to i32
  %4713 = sub nsw i32 2129859010, %4712
  %4714 = bitcast i32 %4713 to float
  %4715 = fmul fast float %4714, 2.000000e+00
  %4716 = fsub fast float 0x4002A9FBE0000000, %4697
  %4717 = fadd fast float %4697, 0x3FD54FDF00000000
  %4718 = bitcast float %4717 to i32
  %4719 = sub nsw i32 2129859010, %4718
  %4720 = bitcast i32 %4719 to float
  %4721 = fmul fast float %4720, %4716
  %4722 = fmul fast float %4721, %4721
  %4723 = fsub fast float 0x4002A9FBE0000000, %4706
  %4724 = fadd fast float %4706, 0x3FD54FDF00000000
  %4725 = bitcast float %4724 to i32
  %4726 = sub nsw i32 2129859010, %4725
  %4727 = bitcast i32 %4726 to float
  %4728 = fmul fast float %4727, %4723
  %4729 = fmul fast float %4728, %4728
  %4730 = fsub fast float 0x4002A9FBE0000000, %4715
  %4731 = fadd fast float %4715, 0x3FD54FDF00000000
  %4732 = bitcast float %4731 to i32
  %4733 = sub nsw i32 2129859010, %4732
  %4734 = bitcast i32 %4733 to float
  %4735 = fmul fast float %4734, %4730
  %4736 = fmul fast float %4735, %4735
  %4737 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4722)  ; FMax(a,b)
  %4738 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4729)  ; FMax(a,b)
  %4739 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4736)  ; FMax(a,b)
  %4740 = fsub fast float 1.000000e+00, %4626
  %4741 = fadd fast float %4740, %4641
  %4742 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  %4743 = fsub fast float 1.000000e+00, %4025
  %4744 = fmul fast float %4683, %4743
  %4745 = fmul fast float %4686, %4686
  %4746 = fmul fast float %4745, %4744
  %4747 = fmul fast float %4746, %4688
  %4748 = fmul fast float %4743, 0xBFE99999A0000000
  %4749 = fmul fast float %4748, %4628
  %4750 = fmul fast float %4749, %4645
  %4751 = fadd fast float %4750, 1.000000e+00
  %4752 = fadd fast float %4619, -1.000000e+00
  %4753 = fmul fast float %4751, %4752
  %4754 = fadd fast float %4753, 1.000000e+00
  %4755 = fsub fast float %4737, %4610
  %4756 = fsub fast float %4738, %4611
  %4757 = fsub fast float %4739, %4612
  %4758 = fmul fast float %4747, %4755
  %4759 = fmul fast float %4747, %4756
  %4760 = fmul fast float %4747, %4757
  %4761 = fadd fast float %4758, %4610
  %4762 = fadd fast float %4759, %4611
  %4763 = fadd fast float %4760, %4612
  %4764 = fsub fast float %86, %4613
  %4765 = fsub fast float %88, %4614
  %4766 = fsub fast float %90, %4615
  %4767 = fmul fast float %4747, %4764
  %4768 = fmul fast float %4747, %4765
  %4769 = fmul fast float %4747, %4766
  %4770 = fadd fast float %4767, %4613
  %4771 = fadd fast float %4768, %4614
  %4772 = fadd fast float %4769, %4615
  %4773 = fmul fast float %4747, %4742
  %4774 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4775 = fsub fast float 1.000000e+00, %4774
  %4776 = fmul fast float %4773, %4775
  %4777 = fadd fast float %4776, %4774
  %4778 = fsub fast float 1.000000e+00, %4620
  %4779 = fmul fast float %4747, %4778
  %4780 = fadd fast float %4779, %4620
  %4781 = call float @dx.op.dot3.f32(i32 55, float %4770, float %4771, float %4772, float %4770, float %4771, float %4772)  ; Dot3(ax,ay,az,bx,by,bz)
  %4782 = call float @dx.op.unary.f32(i32 25, float %4781)  ; Rsqrt(value)
  %4783 = fmul fast float %4770, %4782
  %4784 = fmul fast float %4771, %4782
  %4785 = fmul fast float %4772, %4782
  br label %4786

; <label>:4786                                    ; preds = %4625, %4609
  %4787 = phi float [ %4761, %4625 ], [ %4610, %4609 ]
  %4788 = phi float [ %4762, %4625 ], [ %4611, %4609 ]
  %4789 = phi float [ %4763, %4625 ], [ %4612, %4609 ]
  %4790 = phi float [ %4783, %4625 ], [ %4613, %4609 ]
  %4791 = phi float [ %4784, %4625 ], [ %4614, %4609 ]
  %4792 = phi float [ %4785, %4625 ], [ %4615, %4609 ]
  %4793 = phi float [ %4670, %4625 ], [ %4616, %4609 ]
  %4794 = phi float [ %4671, %4625 ], [ %4617, %4609 ]
  %4795 = phi float [ %4672, %4625 ], [ %4618, %4609 ]
  %4796 = phi float [ %4777, %4625 ], [ %4619, %4609 ]
  %4797 = phi float [ %4780, %4625 ], [ %4620, %4609 ]
  %4798 = select i1 %231, float 0.000000e+00, float %4789
  %4799 = call float @dx.op.dot3.f32(i32 55, float %4790, float %4791, float %4792, float %4622, float %4623, float %4624)  ; Dot3(ax,ay,az,bx,by,bz)
  %4800 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4801 = call float @dx.op.dot3.f32(i32 55, float %180, float %181, float %182, float %4790, float %4791, float %4792)  ; Dot3(ax,ay,az,bx,by,bz)
  %4802 = fmul fast float %4801, 2.000000e+00
  %4803 = fmul fast float %4802, %4790
  %4804 = fmul fast float %4802, %4791
  %4805 = fmul fast float %4802, %4792
  %4806 = fsub fast float %180, %4803
  %4807 = fsub fast float %181, %4804
  %4808 = fsub fast float %182, %4805
  %4809 = call float @dx.op.binary.f32(i32 36, float %4797, float 1.000000e+00)  ; FMin(a,b)
  %4810 = fsub fast float 1.000000e+00, %4797
  %4811 = bitcast float %4810 to i32
  %4812 = sub nsw i32 2129859010, %4811
  %4813 = bitcast i32 %4812 to float
  %4814 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %4815 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %4816 = fcmp fast oeq float %4815, 0.000000e+00
  %4817 = fcmp fast oeq float %4814, 0.000000e+00
  %4818 = or i1 %4817, %4816
  br i1 %4818, label %4848, label %4819

; <label>:4819                                    ; preds = %4786
  %4820 = fsub fast float -0.000000e+00, %57
  %4821 = fsub fast float -0.000000e+00, %55
  %4822 = call float @dx.op.unary.f32(i32 24, float %4815)  ; Sqrt(value)
  %4823 = fdiv fast float %4822, %4814
  %4824 = fcmp fast ogt float %4823, 0x3FFB6F8900000000
  %4825 = select i1 %4824, float 0x3FFB6F8900000000, float %4823
  %4826 = fmul fast float %4825, 0x3FE8A23460000000
  %4827 = call float @dx.op.unary.f32(i32 7, float %4826)  ; Saturate(value)
  %4828 = call float @dx.op.binary.f32(i32 35, float %4825, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4829 = fmul fast float %4827, %4814
  %4830 = fmul fast float %4828, 0x3FF279A740000000
  %4831 = fadd fast float %4830, -1.000000e+00
  %4832 = call float @dx.op.dot3.f32(i32 55, float %4820, float %4821, float %56, float %4820, float %4821, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %4833 = call float @dx.op.unary.f32(i32 25, float %4832)  ; Rsqrt(value)
  %4834 = fmul fast float %4833, %4820
  %4835 = fmul fast float %4833, %4821
  %4836 = fmul fast float %4833, %56
  %4837 = fmul fast float %4831, %4831
  %4838 = fsub fast float 1.000000e+00, %4837
  %4839 = fmul fast float %4828, 0x40005F8BE0000000
  %4840 = fsub fast float 0x400C5BF8A0000000, %4839
  %4841 = fdiv fast float %4829, %4840
  %4842 = fmul fast float %4841, 0x3FEE31C3C0000000
  %4843 = fmul fast float %4842, %4838
  %4844 = fmul fast float %4828, 0x3FDACB7480000000
  %4845 = fadd fast float %4844, 0xBFD7347680000000
  %4846 = fmul fast float %4845, %4841
  %4847 = fmul fast float %4846, %4838
  br label %4848

; <label>:4848                                    ; preds = %4819, %4786
  %4849 = phi float [ %4834, %4819 ], [ 0.000000e+00, %4786 ]
  %4850 = phi float [ %4835, %4819 ], [ 0.000000e+00, %4786 ]
  %4851 = phi float [ %4836, %4819 ], [ 0.000000e+00, %4786 ]
  %4852 = phi float [ %4843, %4819 ], [ 0.000000e+00, %4786 ]
  %4853 = phi float [ %4847, %4819 ], [ 0.000000e+00, %4786 ]
  %4854 = call float @dx.op.dot3.f32(i32 55, float %4849, float %4850, float %4851, float %4790, float %4791, float %4792)  ; Dot3(ax,ay,az,bx,by,bz)
  %4855 = fmul fast float %4854, 0x3FDF454380000000
  %4856 = fmul fast float %4854, %4854
  %4857 = fmul fast float %4856, 0x3FEE471020000000
  %4858 = fadd fast float %4857, 0xBFD42F6020000000
  %4859 = fmul fast float %4814, 0x3FD20DD760000000
  %4860 = fmul fast float %4858, %4853
  %4861 = fadd fast float %4860, %4859
  %4862 = fmul fast float %4855, %4852
  %4863 = fadd fast float %4861, %4862
  %4864 = fsub fast float %4861, %4862
  %4865 = call float @dx.op.dot3.f32(i32 55, float %4849, float %4850, float %4851, float %4806, float %4807, float %4808)  ; Dot3(ax,ay,az,bx,by,bz)
  %4866 = fmul fast float %4865, 0x3FDF454380000000
  %4867 = fmul fast float %4865, %4865
  %4868 = fmul fast float %4867, 0x3FEE471020000000
  %4869 = fadd fast float %4868, 0xBFD42F6020000000
  %4870 = call float @dx.op.dot3.f32(i32 55, float %4814, float %4852, float %4853, float 0x3FD20DD760000000, float %4866, float %4869)  ; Dot3(ax,ay,az,bx,by,bz)
  %4871 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %4872 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %4873 = fcmp fast oeq float %4872, 0.000000e+00
  %4874 = fcmp fast oeq float %4871, 0.000000e+00
  %4875 = or i1 %4874, %4873
  br i1 %4875, label %4905, label %4876

; <label>:4876                                    ; preds = %4848
  %4877 = fsub fast float -0.000000e+00, %53
  %4878 = fsub fast float -0.000000e+00, %51
  %4879 = call float @dx.op.unary.f32(i32 24, float %4872)  ; Sqrt(value)
  %4880 = fdiv fast float %4879, %4871
  %4881 = fcmp fast ogt float %4880, 0x3FFB6F8900000000
  %4882 = select i1 %4881, float 0x3FFB6F8900000000, float %4880
  %4883 = fmul fast float %4882, 0x3FE8A23460000000
  %4884 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4885 = call float @dx.op.binary.f32(i32 35, float %4882, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4886 = fmul fast float %4884, %4871
  %4887 = fmul fast float %4885, 0x3FF279A740000000
  %4888 = fadd fast float %4887, -1.000000e+00
  %4889 = call float @dx.op.dot3.f32(i32 55, float %4877, float %4878, float %52, float %4877, float %4878, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %4890 = call float @dx.op.unary.f32(i32 25, float %4889)  ; Rsqrt(value)
  %4891 = fmul fast float %4890, %4877
  %4892 = fmul fast float %4890, %4878
  %4893 = fmul fast float %4890, %52
  %4894 = fmul fast float %4888, %4888
  %4895 = fsub fast float 1.000000e+00, %4894
  %4896 = fmul fast float %4885, 0x40005F8BE0000000
  %4897 = fsub fast float 0x400C5BF8A0000000, %4896
  %4898 = fdiv fast float %4886, %4897
  %4899 = fmul fast float %4898, 0x3FEE31C3C0000000
  %4900 = fmul fast float %4899, %4895
  %4901 = fmul fast float %4885, 0x3FDACB7480000000
  %4902 = fadd fast float %4901, 0xBFD7347680000000
  %4903 = fmul fast float %4902, %4898
  %4904 = fmul fast float %4903, %4895
  br label %4905

; <label>:4905                                    ; preds = %4876, %4848
  %4906 = phi float [ %4891, %4876 ], [ 0.000000e+00, %4848 ]
  %4907 = phi float [ %4892, %4876 ], [ 0.000000e+00, %4848 ]
  %4908 = phi float [ %4893, %4876 ], [ 0.000000e+00, %4848 ]
  %4909 = phi float [ %4900, %4876 ], [ 0.000000e+00, %4848 ]
  %4910 = phi float [ %4904, %4876 ], [ 0.000000e+00, %4848 ]
  %4911 = call float @dx.op.dot3.f32(i32 55, float %4906, float %4907, float %4908, float %4790, float %4791, float %4792)  ; Dot3(ax,ay,az,bx,by,bz)
  %4912 = fmul fast float %4911, 0x3FDF454380000000
  %4913 = fmul fast float %4911, %4911
  %4914 = fmul fast float %4913, 0x3FEE471020000000
  %4915 = fadd fast float %4914, 0xBFD42F6020000000
  %4916 = fmul fast float %4871, 0x3FD20DD760000000
  %4917 = fmul fast float %4915, %4910
  %4918 = fadd fast float %4917, %4916
  %4919 = fmul fast float %4912, %4909
  %4920 = fadd fast float %4918, %4919
  %4921 = fsub fast float %4918, %4919
  %4922 = call float @dx.op.dot3.f32(i32 55, float %4906, float %4907, float %4908, float %4806, float %4807, float %4808)  ; Dot3(ax,ay,az,bx,by,bz)
  %4923 = fmul fast float %4922, 0x3FDF454380000000
  %4924 = fmul fast float %4922, %4922
  %4925 = fmul fast float %4924, 0x3FEE471020000000
  %4926 = fadd fast float %4925, 0xBFD42F6020000000
  %4927 = call float @dx.op.dot3.f32(i32 55, float %4871, float %4909, float %4910, float 0x3FD20DD760000000, float %4923, float %4926)  ; Dot3(ax,ay,az,bx,by,bz)
  %4928 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %46)  ; FMax(a,b)
  %4929 = call float @dx.op.dot3.f32(i32 55, float %47, float %48, float %49, float %47, float %48, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %4930 = fcmp fast oeq float %4929, 0.000000e+00
  %4931 = fcmp fast oeq float %4928, 0.000000e+00
  %4932 = or i1 %4931, %4930
  br i1 %4932, label %4962, label %4933

; <label>:4933                                    ; preds = %4905
  %4934 = fsub fast float -0.000000e+00, %49
  %4935 = fsub fast float -0.000000e+00, %47
  %4936 = call float @dx.op.unary.f32(i32 24, float %4929)  ; Sqrt(value)
  %4937 = fdiv fast float %4936, %4928
  %4938 = fcmp fast ogt float %4937, 0x3FFB6F8900000000
  %4939 = select i1 %4938, float 0x3FFB6F8900000000, float %4937
  %4940 = fmul fast float %4939, 0x3FE8A23460000000
  %4941 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4942 = call float @dx.op.binary.f32(i32 35, float %4939, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4943 = fmul fast float %4941, %4928
  %4944 = fmul fast float %4942, 0x3FF279A740000000
  %4945 = fadd fast float %4944, -1.000000e+00
  %4946 = call float @dx.op.dot3.f32(i32 55, float %4934, float %4935, float %48, float %4934, float %4935, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %4947 = call float @dx.op.unary.f32(i32 25, float %4946)  ; Rsqrt(value)
  %4948 = fmul fast float %4947, %4934
  %4949 = fmul fast float %4947, %4935
  %4950 = fmul fast float %4947, %48
  %4951 = fmul fast float %4945, %4945
  %4952 = fsub fast float 1.000000e+00, %4951
  %4953 = fmul fast float %4942, 0x40005F8BE0000000
  %4954 = fsub fast float 0x400C5BF8A0000000, %4953
  %4955 = fdiv fast float %4943, %4954
  %4956 = fmul fast float %4955, 0x3FEE31C3C0000000
  %4957 = fmul fast float %4956, %4952
  %4958 = fmul fast float %4942, 0x3FDACB7480000000
  %4959 = fadd fast float %4958, 0xBFD7347680000000
  %4960 = fmul fast float %4959, %4955
  %4961 = fmul fast float %4960, %4952
  br label %4962

; <label>:4962                                    ; preds = %4933, %4905
  %4963 = phi float [ %4948, %4933 ], [ 0.000000e+00, %4905 ]
  %4964 = phi float [ %4949, %4933 ], [ 0.000000e+00, %4905 ]
  %4965 = phi float [ %4950, %4933 ], [ 0.000000e+00, %4905 ]
  %4966 = phi float [ %4957, %4933 ], [ 0.000000e+00, %4905 ]
  %4967 = phi float [ %4961, %4933 ], [ 0.000000e+00, %4905 ]
  %4968 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %4965, float %4790, float %4791, float %4792)  ; Dot3(ax,ay,az,bx,by,bz)
  %4969 = fmul fast float %4968, 0x3FDF454380000000
  %4970 = fmul fast float %4968, %4968
  %4971 = fmul fast float %4970, 0x3FEE471020000000
  %4972 = fadd fast float %4971, 0xBFD42F6020000000
  %4973 = fmul fast float %4928, 0x3FD20DD760000000
  %4974 = fmul fast float %4972, %4967
  %4975 = fadd fast float %4974, %4973
  %4976 = fmul fast float %4969, %4966
  %4977 = fadd fast float %4975, %4976
  %4978 = fsub fast float %4975, %4976
  %4979 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %4965, float %4806, float %4807, float %4808)  ; Dot3(ax,ay,az,bx,by,bz)
  %4980 = fmul fast float %4979, 0x3FDF454380000000
  %4981 = fmul fast float %4979, %4979
  %4982 = fmul fast float %4981, 0x3FEE471020000000
  %4983 = fadd fast float %4982, 0xBFD42F6020000000
  %4984 = call float @dx.op.dot3.f32(i32 55, float %4928, float %4966, float %4967, float 0x3FD20DD760000000, float %4980, float %4983)  ; Dot3(ax,ay,az,bx,by,bz)
  %4985 = call float @dx.op.binary.f32(i32 35, float %4863, float 0.000000e+00)  ; FMax(a,b)
  %4986 = call float @dx.op.binary.f32(i32 35, float %4920, float 0.000000e+00)  ; FMax(a,b)
  %4987 = call float @dx.op.binary.f32(i32 35, float %4977, float 0.000000e+00)  ; FMax(a,b)
  %4988 = call float @dx.op.binary.f32(i32 35, float %4864, float 0.000000e+00)  ; FMax(a,b)
  %4989 = call float @dx.op.binary.f32(i32 35, float %4921, float 0.000000e+00)  ; FMax(a,b)
  %4990 = call float @dx.op.binary.f32(i32 35, float %4978, float 0.000000e+00)  ; FMax(a,b)
  %4991 = call float @dx.op.binary.f32(i32 35, float %4870, float 0.000000e+00)  ; FMax(a,b)
  %4992 = call float @dx.op.binary.f32(i32 35, float %4927, float 0.000000e+00)  ; FMax(a,b)
  %4993 = call float @dx.op.binary.f32(i32 35, float %4984, float 0.000000e+00)  ; FMax(a,b)
  %4994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4995 = extractvalue %dx.types.CBufRet.f32 %4994, 0
  %4996 = call float @dx.op.binary.f32(i32 36, float %4793, float %4995)  ; FMin(a,b)
  %4997 = fsub fast float 1.000000e+00, %4809
  %4998 = fmul fast float %4996, %4997
  %4999 = fsub fast float 1.000000e+00, %4998
  %5000 = bitcast float %4999 to i32
  %5001 = sub nsw i32 2129859010, %5000
  %5002 = bitcast i32 %5001 to float
  %5003 = call float @dx.op.binary.f32(i32 36, float %4794, float %4995)  ; FMin(a,b)
  %5004 = fmul fast float %5003, %4997
  %5005 = fsub fast float 1.000000e+00, %5004
  %5006 = bitcast float %5005 to i32
  %5007 = sub nsw i32 2129859010, %5006
  %5008 = bitcast i32 %5007 to float
  %5009 = call float @dx.op.binary.f32(i32 36, float %4795, float %4995)  ; FMin(a,b)
  %5010 = fmul fast float %5009, %4997
  %5011 = fsub fast float 1.000000e+00, %5010
  %5012 = bitcast float %5011 to i32
  %5013 = sub nsw i32 2129859010, %5012
  %5014 = bitcast i32 %5013 to float
  %5015 = fmul fast float %4985, %4809
  %5016 = fmul fast float %5015, %5002
  %5017 = fmul fast float %4986, %4809
  %5018 = fmul fast float %5017, %5008
  %5019 = fmul fast float %4987, %4809
  %5020 = fmul fast float %5019, %5014
  %5021 = call float @dx.op.binary.f32(i32 36, float %4787, float %4995)  ; FMin(a,b)
  %5022 = fmul fast float %5021, %4997
  %5023 = fsub fast float 1.000000e+00, %5022
  %5024 = bitcast float %5023 to i32
  %5025 = sub nsw i32 2129859010, %5024
  %5026 = bitcast i32 %5025 to float
  %5027 = call float @dx.op.binary.f32(i32 36, float %4788, float %4995)  ; FMin(a,b)
  %5028 = fmul fast float %5027, %4997
  %5029 = fsub fast float 1.000000e+00, %5028
  %5030 = bitcast float %5029 to i32
  %5031 = sub nsw i32 2129859010, %5030
  %5032 = bitcast i32 %5031 to float
  %5033 = call float @dx.op.binary.f32(i32 36, float %4798, float %4995)  ; FMin(a,b)
  %5034 = fmul fast float %5033, %4997
  %5035 = fsub fast float 1.000000e+00, %5034
  %5036 = bitcast float %5035 to i32
  %5037 = sub nsw i32 2129859010, %5036
  %5038 = bitcast i32 %5037 to float
  %5039 = fmul fast float %4991, %4809
  %5040 = fmul fast float %5039, %5026
  %5041 = fmul fast float %4992, %4809
  %5042 = fmul fast float %5041, %5032
  %5043 = fmul fast float %4993, %4809
  %5044 = fmul fast float %5043, %5038
  %5045 = call float @dx.op.dot3.f32(i32 55, float %5016, float %5018, float %5020, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5046 = select i1 %231, float 0.000000e+00, float %5016
  %5047 = select i1 %231, float %5045, float %5018
  %5048 = select i1 %231, float 0.000000e+00, float %5020
  %5049 = call float @dx.op.dot3.f32(i32 55, float %4988, float %4989, float %4990, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5050 = select i1 %231, float 0.000000e+00, float %4988
  %5051 = select i1 %231, float %5049, float %4989
  %5052 = select i1 %231, float 0.000000e+00, float %4990
  %5053 = call float @dx.op.dot3.f32(i32 55, float %5040, float %5042, float %5044, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5054 = select i1 %231, float 0.000000e+00, float %5040
  %5055 = select i1 %231, float %5053, float %5042
  %5056 = select i1 %231, float 0.000000e+00, float %5044
  %5057 = fmul fast float %4800, 9.843750e-01
  %5058 = fmul fast float %4796, 9.843750e-01
  %5059 = fadd fast float %5057, 7.812500e-03
  %5060 = fadd fast float %5058, 7.812500e-03
  %5061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %5059, float %5060, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5062 = extractvalue %dx.types.ResRet.f32 %5061, 2
  %5063 = extractvalue %dx.types.ResRet.f32 %5061, 3
  %5064 = fmul fast float %5062, %4787
  %5065 = fmul fast float %5062, %4788
  %5066 = fmul fast float %5062, %4798
  %5067 = fadd fast float %5064, %5063
  %5068 = fadd fast float %5065, %5063
  %5069 = fadd fast float %5066, %5063
  %5070 = call float @dx.op.binary.f32(i32 35, float %5068, float %5069)  ; FMax(a,b)
  %5071 = call float @dx.op.binary.f32(i32 35, float %5067, float %5070)  ; FMax(a,b)
  %5072 = fsub fast float 1.000000e+00, %5071
  %5073 = fmul fast float %5067, %5054
  %5074 = fmul fast float %5068, %5055
  %5075 = fmul fast float %5069, %5056
  %5076 = fadd fast float %5073, %3490
  %5077 = fmul fast float %5076, %3549
  %5078 = fadd fast float %5074, %3491
  %5079 = fmul fast float %5078, %3549
  %5080 = fadd fast float %5075, %3492
  %5081 = fmul fast float %5080, %3549
  %5082 = fmul fast float %5072, %5048
  %5083 = fmul fast float %5072, %5047
  %5084 = fmul fast float %5072, %5046
  %5085 = fmul fast float %5072, %3637
  %5086 = fadd fast float %5085, -1.000000e+00
  %5087 = fmul fast float %5086, %3549
  %5088 = fadd fast float %5087, 1.000000e+00
  %5089 = fmul fast float %5072, %3636
  %5090 = fadd fast float %5089, -1.000000e+00
  %5091 = fmul fast float %5090, %3549
  %5092 = fadd fast float %5091, 1.000000e+00
  %5093 = fmul fast float %5072, %3635
  %5094 = fadd fast float %5093, -1.000000e+00
  %5095 = fmul fast float %5094, %3549
  %5096 = fadd fast float %5095, 1.000000e+00
  %5097 = fmul fast float %5096, %5050
  %5098 = fmul fast float %5092, %5051
  %5099 = fmul fast float %5088, %5052
  %5100 = fadd fast float %5097, %5084
  %5101 = fmul fast float %5100, %3549
  %5102 = fadd fast float %5098, %5083
  %5103 = fmul fast float %5102, %3549
  %5104 = fadd fast float %5099, %5082
  %5105 = fmul fast float %5104, %3549
  %5106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5107 = extractvalue %dx.types.CBufRet.f32 %5106, 3
  %5108 = fcmp fast oeq float %5107, 0.000000e+00
  br i1 %5108, label %5294, label %5109

; <label>:5109                                    ; preds = %4962
  %5110 = extractvalue %dx.types.CBufRet.f32 %5106, 0
  %5111 = extractvalue %dx.types.CBufRet.f32 %5106, 1
  %5112 = extractvalue %dx.types.CBufRet.f32 %5106, 2
  %5113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5114 = extractvalue %dx.types.CBufRet.f32 %5113, 0
  %5115 = extractvalue %dx.types.CBufRet.f32 %5113, 1
  %5116 = extractvalue %dx.types.CBufRet.f32 %5113, 2
  %5117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5118 = extractvalue %dx.types.CBufRet.f32 %5117, 0
  %5119 = extractvalue %dx.types.CBufRet.f32 %5117, 1
  %5120 = call float @dx.op.dot3.f32(i32 55, float %5114, float %5115, float %5116, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5121 = select i1 %231, float %5118, float %5114
  %5122 = select i1 %231, float %5120, float %5115
  %5123 = select i1 %231, float %5119, float %5116
  %5124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5125 = extractvalue %dx.types.CBufRet.f32 %5124, 1
  %5126 = fcmp fast une float %5125, 0.000000e+00
  br i1 %5126, label %5127, label %5144

; <label>:5127                                    ; preds = %5109
  %5128 = fptoui float %77 to i32
  %5129 = fptoui float %78 to i32
  %5130 = lshr i32 %5128, 4
  %5131 = lshr i32 %5129, 4
  %5132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5133 = extractvalue %dx.types.CBufRet.f32 %5132, 0
  %5134 = fptoui float %5133 to i32
  %5135 = add i32 %5134, 15
  %5136 = lshr i32 %5135, 4
  %5137 = mul i32 %5136, %5131
  %5138 = add i32 %5137, %5130
  %5139 = shl i32 %5138, 3
  %5140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5139, i32 undef)  ; BufferLoad(srv,index,wot)
  %5141 = extractvalue %dx.types.ResRet.i32 %5140, 0
  %5142 = and i32 %5141, -268435456
  %5143 = icmp eq i32 %5142, -1342177280
  br i1 %5143, label %5154, label %5144

; <label>:5144                                    ; preds = %5127, %5109
  %5145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.f32 %5145, 2
  %5147 = extractvalue %dx.types.CBufRet.f32 %5145, 3
  %5148 = fmul fast float %5146, %77
  %5149 = fmul fast float %5147, %78
  %5150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %24, float %5148, float %5149, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5151 = extractvalue %dx.types.ResRet.f32 %5150, 0
  %5152 = extractvalue %dx.types.ResRet.f32 %5150, 1
  %5153 = extractvalue %dx.types.ResRet.f32 %5150, 2
  br label %5154

; <label>:5154                                    ; preds = %5144, %5127
  %5155 = phi float [ %5151, %5144 ], [ 0.000000e+00, %5127 ]
  %5156 = phi float [ %5152, %5144 ], [ 0.000000e+00, %5127 ]
  %5157 = phi float [ %5153, %5144 ], [ 0.000000e+00, %5127 ]
  %5158 = call float @dx.op.binary.f32(i32 36, float %5156, float %5157)  ; FMin(a,b)
  %5159 = call float @dx.op.binary.f32(i32 36, float %5155, float %5158)  ; FMin(a,b)
  %5160 = fcmp fast ogt float %5159, 0.000000e+00
  br i1 %5160, label %5161, label %5294, !dx.controlflow.hints !70

; <label>:5161                                    ; preds = %5154
  %5162 = fmul fast float %5155, %5121
  %5163 = fmul fast float %5156, %5122
  %5164 = fmul fast float %5157, %5123
  %5165 = fsub fast float %5110, %180
  %5166 = fsub fast float %5111, %181
  %5167 = fsub fast float %5112, %182
  %5168 = call float @dx.op.dot3.f32(i32 55, float %5165, float %5166, float %5167, float %5165, float %5166, float %5167)  ; Dot3(ax,ay,az,bx,by,bz)
  %5169 = call float @dx.op.unary.f32(i32 25, float %5168)  ; Rsqrt(value)
  %5170 = fmul fast float %5169, %5165
  %5171 = fmul fast float %5169, %5166
  %5172 = fmul fast float %5169, %5167
  %5173 = call float @dx.op.dot3.f32(i32 55, float %5110, float %5111, float %5112, float %4790, float %4791, float %4792)  ; Dot3(ax,ay,az,bx,by,bz)
  %5174 = call float @dx.op.dot3.f32(i32 55, float %4622, float %4623, float %4624, float %5170, float %5171, float %5172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5175 = call float @dx.op.unary.f32(i32 7, float %5173)  ; Saturate(value)
  %5176 = fmul fast float %5175, %5175
  %5177 = fmul fast float %5176, %4813
  %5178 = call float @dx.op.unary.f32(i32 7, float %5177)  ; Saturate(value)
  %5179 = fmul fast float %5178, %5175
  %5180 = call float @dx.op.dot3.f32(i32 55, float %4790, float %4791, float %4792, float %5170, float %5171, float %5172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5181 = fmul fast float %5180, %5180
  %5182 = call float @dx.op.unary.f32(i32 6, float %5173)  ; FAbs(value)
  %5183 = fsub fast float 1.000000e+00, %4796
  %5184 = call float @dx.op.binary.f32(i32 35, float %5183, float 0x3F847AE140000000)  ; FMax(a,b)
  %5185 = fmul fast float %5184, %5184
  %5186 = fmul fast float %5185, %5185
  %5187 = fsub fast float 1.000000e+00, %5186
  %5188 = fmul fast float %4800, %4800
  %5189 = fmul fast float %5188, %5187
  %5190 = fadd fast float %5189, %5186
  %5191 = bitcast float %5190 to i32
  %5192 = ashr i32 %5191, 1
  %5193 = add nsw i32 %5192, 532487669
  %5194 = bitcast i32 %5193 to float
  %5195 = fadd fast float %5194, %4800
  %5196 = fmul fast float %5186, %5181
  %5197 = fsub fast float 1.000000e+00, %5181
  %5198 = fadd fast float %5197, %5196
  %5199 = fmul fast float %5182, %5182
  %5200 = fmul fast float %5199, %5187
  %5201 = fadd fast float %5200, %5186
  %5202 = bitcast float %5201 to i32
  %5203 = ashr i32 %5202, 1
  %5204 = add nsw i32 %5203, 532487669
  %5205 = bitcast i32 %5204 to float
  %5206 = fadd fast float %5205, %5182
  %5207 = fmul fast float %5198, %5198
  %5208 = fmul fast float %5207, %5195
  %5209 = fmul fast float %5208, %5206
  %5210 = fdiv fast float 0x3FF0A00000000000, %5209
  %5211 = fmul fast float %5210, %5186
  %5212 = call float @dx.op.unary.f32(i32 6, float %5174)  ; FAbs(value)
  %5213 = fsub fast float 1.000000e+00, %5212
  %5214 = bitcast float %5213 to i32
  %5215 = sitofp i32 %5214 to float
  %5216 = fmul fast float %5215, 5.000000e+00
  %5217 = fadd fast float %5216, 0xC1EFBF8940000000
  %5218 = fptosi float %5217 to i32
  %5219 = bitcast i32 %5218 to float
  %5220 = fsub fast float 1.000000e+00, %4787
  %5221 = fsub fast float 1.000000e+00, %4788
  %5222 = fsub fast float 1.000000e+00, %4798
  %5223 = fmul fast float %5219, %5220
  %5224 = fmul fast float %5219, %5221
  %5225 = fmul fast float %5219, %5222
  %5226 = fadd fast float %5223, %4787
  %5227 = fadd fast float %5224, %4788
  %5228 = fadd fast float %5225, %4798
  %5229 = fmul fast float %5173, 9.843750e-01
  %5230 = fadd fast float %5229, 7.812500e-03
  %5231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %5230, float %5060, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5232 = extractvalue %dx.types.ResRet.f32 %5231, 2
  %5233 = extractvalue %dx.types.ResRet.f32 %5231, 3
  %5234 = fmul fast float %5232, %4787
  %5235 = fmul fast float %5232, %4788
  %5236 = fmul fast float %5232, %4798
  %5237 = fadd fast float %5234, %5233
  %5238 = fadd fast float %5235, %5233
  %5239 = fadd fast float %5236, %5233
  %5240 = call float @dx.op.binary.f32(i32 35, float %5238, float %5239)  ; FMax(a,b)
  %5241 = call float @dx.op.binary.f32(i32 35, float %5237, float %5240)  ; FMax(a,b)
  %5242 = fsub fast float 1.000000e+00, %5241
  %5243 = fsub fast float -0.000000e+00, %4790
  %5244 = fsub fast float -0.000000e+00, %4791
  %5245 = fsub fast float -0.000000e+00, %4792
  %5246 = call float @dx.op.dot3.f32(i32 55, float %5110, float %5111, float %5112, float %5243, float %5244, float %5245)  ; Dot3(ax,ay,az,bx,by,bz)
  %5247 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5248 = fmul fast float %5247, 9.843750e-01
  %5249 = fadd fast float %5248, 7.812500e-03
  %5250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %5249, float %5060, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5251 = extractvalue %dx.types.ResRet.f32 %5250, 2
  %5252 = extractvalue %dx.types.ResRet.f32 %5250, 3
  %5253 = fmul fast float %5251, %4787
  %5254 = fmul fast float %5251, %4788
  %5255 = fmul fast float %5251, %4798
  %5256 = fadd fast float %5253, %5252
  %5257 = fadd fast float %5254, %5252
  %5258 = fadd fast float %5255, %5252
  %5259 = call float @dx.op.binary.f32(i32 35, float %5257, float %5258)  ; FMax(a,b)
  %5260 = call float @dx.op.binary.f32(i32 35, float %5256, float %5259)  ; FMax(a,b)
  %5261 = fsub fast float 1.000000e+00, %5260
  %5262 = fmul fast float %5261, %5247
  %5263 = fmul fast float %5262, %3635
  %5264 = fmul fast float %5262, %3636
  %5265 = fmul fast float %5262, %3637
  %5266 = fmul fast float %5242, %5179
  %5267 = fadd fast float %5263, %5266
  %5268 = fadd fast float %5264, %5266
  %5269 = fadd fast float %5265, %5266
  %5270 = fmul fast float %5267, %5162
  %5271 = fmul fast float %5268, %5163
  %5272 = fmul fast float %5269, %5164
  %5273 = fmul fast float %5179, %5162
  %5274 = fmul fast float %5273, %5211
  %5275 = fmul fast float %5274, %5226
  %5276 = fmul fast float %5179, %5163
  %5277 = fmul fast float %5276, %5211
  %5278 = fmul fast float %5277, %5227
  %5279 = fmul fast float %5179, %5164
  %5280 = fmul fast float %5279, %5211
  %5281 = fmul fast float %5280, %5228
  %5282 = fadd fast float %5270, %5100
  %5283 = fmul fast float %5282, %3549
  %5284 = fadd fast float %5271, %5102
  %5285 = fmul fast float %5284, %3549
  %5286 = fadd fast float %5272, %5104
  %5287 = fmul fast float %5286, %3549
  %5288 = fadd fast float %5275, %5076
  %5289 = fmul fast float %5288, %3549
  %5290 = fadd fast float %5278, %5078
  %5291 = fmul fast float %5290, %3549
  %5292 = fadd fast float %5281, %5080
  %5293 = fmul fast float %5292, %3549
  br label %5294

; <label>:5294                                    ; preds = %5161, %5154, %4962
  %5295 = phi float [ %5077, %4962 ], [ %5077, %5154 ], [ %5289, %5161 ]
  %5296 = phi float [ %5079, %4962 ], [ %5079, %5154 ], [ %5291, %5161 ]
  %5297 = phi float [ %5081, %4962 ], [ %5081, %5154 ], [ %5293, %5161 ]
  %5298 = phi float [ %5101, %4962 ], [ %5101, %5154 ], [ %5283, %5161 ]
  %5299 = phi float [ %5103, %4962 ], [ %5103, %5154 ], [ %5285, %5161 ]
  %5300 = phi float [ %5105, %4962 ], [ %5105, %5154 ], [ %5287, %5161 ]
  %5301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5302 = extractvalue %dx.types.CBufRet.i32 %5301, 0
  %5303 = icmp eq i32 %5302, 0
  br i1 %5303, label %5697, label %5304

; <label>:5304                                    ; preds = %5294
  %5305 = fptoui float %77 to i32
  %5306 = fptoui float %78 to i32
  %5307 = lshr i32 %5305, 4
  %5308 = lshr i32 %5306, 4
  %5309 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5310 = extractvalue %dx.types.CBufRet.i32 %5309, 0
  %5311 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5308, i32 %5310, i32 %5307)  ; UMad(a,b,c)
  %5312 = add nsw i32 %5302, -1
  %5313 = call i32 @dx.op.binary.i32(i32 37, i32 %5312, i32 0)  ; IMax(a,b)
  %5314 = call float @dx.op.binary.f32(i32 35, float %72, float 0.000000e+00)  ; FMax(a,b)
  %5315 = fptoui float %5314 to i32
  %5316 = lshr i32 %5315, 5
  %5317 = call i32 @dx.op.binary.i32(i32 40, i32 %5316, i32 8191)  ; UMin(a,b)
  %5318 = shl i32 %5317, 2
  %5319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5318, i32 undef)  ; BufferLoad(srv,index,wot)
  %5320 = extractvalue %dx.types.ResRet.i32 %5319, 0
  %5321 = lshr i32 %5320, 16
  %5322 = and i32 %5320, 65535
  %5323 = lshr i32 %5320, 21
  %5324 = lshr i32 %5322, 5
  %5325 = call i32 @dx.op.binary.i32(i32 40, i32 %5324, i32 %5313)  ; UMin(a,b)
  %5326 = icmp ugt i32 %5323, %5325
  br i1 %5326, label %5697, label %5327

; <label>:5327                                    ; preds = %5304
  br label %5328

; <label>:5328                                    ; preds = %5687, %5327
  %5329 = phi i32 [ %5694, %5687 ], [ %5323, %5327 ]
  %5330 = phi float [ %5688, %5687 ], [ %5295, %5327 ]
  %5331 = phi float [ %5689, %5687 ], [ %5296, %5327 ]
  %5332 = phi float [ %5690, %5687 ], [ %5297, %5327 ]
  %5333 = phi float [ %5691, %5687 ], [ %5298, %5327 ]
  %5334 = phi float [ %5692, %5687 ], [ %5299, %5327 ]
  %5335 = phi float [ %5693, %5687 ], [ %5300, %5327 ]
  %5336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.i32 %5336, 0
  %5338 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5311, i32 %5337, i32 %5329)  ; UMad(a,b,c)
  %5339 = shl i32 %5338, 2
  %5340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5339, i32 undef)  ; BufferLoad(srv,index,wot)
  %5341 = extractvalue %dx.types.ResRet.i32 %5340, 0
  %5342 = shl i32 %5329, 5
  %5343 = sub nsw i32 %5321, %5342
  %5344 = call i32 @dx.op.binary.i32(i32 37, i32 %5343, i32 0)  ; IMax(a,b)
  %5345 = call i32 @dx.op.binary.i32(i32 38, i32 %5344, i32 31)  ; IMin(a,b)
  %5346 = sub nsw i32 1, %5321
  %5347 = add nsw i32 %5346, %5322
  %5348 = call i32 @dx.op.binary.i32(i32 37, i32 %5347, i32 0)  ; IMax(a,b)
  %5349 = call i32 @dx.op.binary.i32(i32 38, i32 %5348, i32 32)  ; IMin(a,b)
  %5350 = and i32 %5349, 31
  %5351 = shl i32 -1, %5350
  %5352 = xor i32 %5351, -1
  %5353 = and i32 %5345, 31
  %5354 = shl i32 %5352, %5353
  %5355 = icmp eq i32 %5349, 32
  %5356 = select i1 %5355, i32 -1, i32 %5354
  %5357 = and i32 %5356, %5341
  %5358 = icmp eq i32 %5357, 0
  br i1 %5358, label %5687, label %5359

; <label>:5359                                    ; preds = %5328
  br label %5360

; <label>:5360                                    ; preds = %5440, %5359
  %5361 = phi i32 [ %5372, %5440 ], [ %5357, %5359 ]
  %5362 = phi float [ %5441, %5440 ], [ %5330, %5359 ]
  %5363 = phi float [ %5442, %5440 ], [ %5331, %5359 ]
  %5364 = phi float [ %5443, %5440 ], [ %5332, %5359 ]
  %5365 = phi float [ %5444, %5440 ], [ %5333, %5359 ]
  %5366 = phi float [ %5445, %5440 ], [ %5334, %5359 ]
  %5367 = phi float [ %5446, %5440 ], [ %5335, %5359 ]
  %5368 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5361)  ; FirstbitLo(value)
  %5369 = add i32 %5368, %5342
  %5370 = and i32 %5368, 31
  %5371 = shl i32 1, %5370
  %5372 = xor i32 %5371, %5361
  %5373 = mul i32 %5369, 112
  %5374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5373, i32 undef)  ; BufferLoad(srv,index,wot)
  %5375 = extractvalue %dx.types.ResRet.f32 %5374, 0
  %5376 = extractvalue %dx.types.ResRet.f32 %5374, 1
  %5377 = extractvalue %dx.types.ResRet.f32 %5374, 2
  %5378 = or i32 %5373, 12
  %5379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5378, i32 undef)  ; BufferLoad(srv,index,wot)
  %5380 = extractvalue %dx.types.ResRet.f32 %5379, 0
  %5381 = add i32 %5373, 44
  %5382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5381, i32 undef)  ; BufferLoad(srv,index,wot)
  %5383 = extractvalue %dx.types.ResRet.f32 %5382, 0
  %5384 = add i32 %5373, 48
  %5385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5384, i32 undef)  ; BufferLoad(srv,index,wot)
  %5386 = extractvalue %dx.types.ResRet.f32 %5385, 0
  %5387 = extractvalue %dx.types.ResRet.f32 %5385, 1
  %5388 = extractvalue %dx.types.ResRet.f32 %5385, 2
  %5389 = add i32 %5373, 80
  %5390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5389, i32 undef)  ; BufferLoad(srv,index,wot)
  %5391 = extractvalue %dx.types.ResRet.f32 %5390, 1
  %5392 = extractvalue %dx.types.ResRet.f32 %5390, 2
  %5393 = call float @dx.op.dot3.f32(i32 55, float %5375, float %5376, float %5377, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = select i1 %231, float %5391, float %5375
  %5395 = select i1 %231, float %5393, float %5376
  %5396 = select i1 %231, float %5392, float %5377
  %5397 = fsub fast float %5386, %160
  %5398 = fsub fast float %5387, %161
  %5399 = fsub fast float %5388, %162
  %5400 = call float @dx.op.dot3.f32(i32 55, float %5397, float %5398, float %5399, float %5397, float %5398, float %5399)  ; Dot3(ax,ay,az,bx,by,bz)
  %5401 = call float @dx.op.unary.f32(i32 24, float %5400)  ; Sqrt(value)
  %5402 = fdiv fast float 1.000000e+00, %5401
  %5403 = fmul fast float %5402, %5397
  %5404 = fmul fast float %5402, %5398
  %5405 = fmul fast float %5402, %5399
  %5406 = fadd fast float %5401, %5380
  %5407 = fdiv fast float 1.000000e+00, %5406
  %5408 = fmul float %5383, %5407
  %5409 = fmul float %5408, %5408
  %5410 = call float @dx.op.unary.f32(i32 7, float %5409)  ; Saturate(value)
  %5411 = and i32 %5371, %5357
  %5412 = icmp eq i32 %5411, 0
  br i1 %5412, label %5435, label %5413, !dx.controlflow.hints !71

; <label>:5413                                    ; preds = %5360
  %5414 = lshr i32 %5305, 5
  %5415 = lshr i32 %5306, 5
  %5416 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %5414, i32 %5415, i32 %5369, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5417 = extractvalue %dx.types.ResRet.i32 %5416, 0
  %5418 = and i32 %5417, 3
  %5419 = icmp eq i32 %5418, 0
  %5420 = select i1 %5419, float 1.000000e+00, float 0.000000e+00
  %5421 = icmp eq i32 %5418, 3
  br i1 %5421, label %5422, label %5435

; <label>:5422                                    ; preds = %5413
  %5423 = lshr i32 %5417, 10
  %5424 = and i32 %5423, 8160
  %5425 = and i32 %5306, 31
  %5426 = or i32 %5424, %5425
  %5427 = lshr i32 %5417, 1
  %5428 = and i32 %5427, 16352
  %5429 = and i32 %5305, 31
  %5430 = or i32 %5428, %5429
  %5431 = lshr i32 %5417, 23
  %5432 = and i32 %5431, 255
  %5433 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %5430, i32 %5426, i32 %5432, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5434 = extractvalue %dx.types.ResRet.f32 %5433, 0
  br label %5435

; <label>:5435                                    ; preds = %5422, %5413, %5360
  %5436 = phi float [ %5434, %5422 ], [ %5420, %5413 ], [ 0.000000e+00, %5360 ]
  %5437 = call float @dx.op.binary.f32(i32 36, float %5436, float %5436)  ; FMin(a,b)
  %5438 = call float @dx.op.binary.f32(i32 36, float %5436, float %5437)  ; FMin(a,b)
  %5439 = fcmp fast ogt float %5438, 0.000000e+00
  br i1 %5439, label %5448, label %5440, !dx.controlflow.hints !72

; <label>:5440                                    ; preds = %5509, %5435
  %5441 = phi float [ %5362, %5435 ], [ %5683, %5509 ]
  %5442 = phi float [ %5363, %5435 ], [ %5684, %5509 ]
  %5443 = phi float [ %5364, %5435 ], [ %5685, %5509 ]
  %5444 = phi float [ %5365, %5435 ], [ %5671, %5509 ]
  %5445 = phi float [ %5366, %5435 ], [ %5672, %5509 ]
  %5446 = phi float [ %5367, %5435 ], [ %5673, %5509 ]
  %5447 = icmp eq i32 %5361, %5371
  br i1 %5447, label %5686, label %5360

; <label>:5448                                    ; preds = %5435
  %5449 = fmul fast float %5436, %5394
  %5450 = fmul fast float %5436, %5395
  %5451 = fmul fast float %5436, %5396
  %5452 = fsub fast float %5388, %4012
  %5453 = fcmp fast ogt float %5452, 0.000000e+00
  %5454 = fsub fast float %162, %4012
  %5455 = fcmp fast ogt float %5454, 0.000000e+00
  %5456 = xor i1 %5455, %5453
  %5457 = fsub fast float %4012, %5388
  %5458 = fmul fast float %5457, 2.000000e+00
  %5459 = fadd fast float %5458, %5388
  %5460 = select i1 %5456, float %5388, float %5459
  %5461 = fsub fast float %5460, %162
  %5462 = call float @dx.op.dot3.f32(i32 55, float %5397, float %5398, float %5461, float %5397, float %5398, float %5461)  ; Dot3(ax,ay,az,bx,by,bz)
  %5463 = call float @dx.op.unary.f32(i32 25, float %5462)  ; Rsqrt(value)
  %5464 = fmul fast float %5463, %5397
  %5465 = fmul fast float %5463, %5398
  %5466 = fmul fast float %5463, %5461
  %5467 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4020)  ; Dot3(ax,ay,az,bx,by,bz)
  %5468 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5464, float %5465, float %5466)  ; Dot3(ax,ay,az,bx,by,bz)
  %5469 = fdiv fast float 1.000000e+00, %5468
  %5470 = fmul fast float %5469, %5467
  %5471 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5454, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5472 = fcmp fast ogt float %5471, 0.000000e+00
  %5473 = fcmp fast olt float %5471, 0.000000e+00
  %5474 = zext i1 %5472 to i32
  %5475 = zext i1 %5473 to i32
  %5476 = sub nsw i32 %5474, %5475
  %5477 = sitofp i32 %5476 to float
  %5478 = fsub fast float %5460, %4012
  %5479 = call float @dx.op.dot3.f32(i32 55, float %5397, float %5398, float %5478, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5480 = fcmp fast ogt float %5479, 0.000000e+00
  %5481 = fcmp fast olt float %5479, 0.000000e+00
  %5482 = zext i1 %5480 to i32
  %5483 = zext i1 %5481 to i32
  %5484 = sub nsw i32 %5482, %5483
  %5485 = sitofp i32 %5484 to float
  %5486 = fcmp fast une float %5477, %5485
  br i1 %5486, label %5487, label %5497

; <label>:5487                                    ; preds = %5448
  %5488 = fmul fast float %5470, %5466
  %5489 = fmul fast float %5470, %5465
  %5490 = fmul fast float %5470, %5464
  %5491 = fmul fast float %5490, %5490
  %5492 = fmul fast float %5489, %5489
  %5493 = fadd fast float %5491, %5492
  %5494 = fmul fast float %5488, %5488
  %5495 = fadd fast float %5493, %5494
  %5496 = call float @dx.op.unary.f32(i32 24, float %5495)  ; Sqrt(value)
  br label %5509

; <label>:5497                                    ; preds = %5448
  %5498 = icmp slt i32 %5476, 0
  br i1 %5498, label %5499, label %5509

; <label>:5499                                    ; preds = %5497
  %5500 = fsub fast float %160, %5386
  %5501 = fsub fast float %161, %5387
  %5502 = fsub fast float %162, %5460
  %5503 = fmul fast float %5500, %5500
  %5504 = fmul fast float %5501, %5501
  %5505 = fadd fast float %5503, %5504
  %5506 = fmul fast float %5502, %5502
  %5507 = fadd fast float %5505, %5506
  %5508 = call float @dx.op.unary.f32(i32 24, float %5507)  ; Sqrt(value)
  br label %5509

; <label>:5509                                    ; preds = %5499, %5497, %5487
  %5510 = phi float [ %5496, %5487 ], [ %5508, %5499 ], [ 0.000000e+00, %5497 ]
  %5511 = and i1 %5455, %5453
  %5512 = fsub fast float -0.000000e+00, %5510
  %5513 = select i1 %5511, float -0.000000e+00, float %5512
  %5514 = fmul fast float %4013, 0x3FF7154760000000
  %5515 = fmul fast float %5514, %5513
  %5516 = fmul fast float %4014, 0x3FF7154760000000
  %5517 = fmul fast float %5516, %5513
  %5518 = fmul fast float %4015, 0x3FF7154760000000
  %5519 = fmul fast float %5518, %5513
  %5520 = call float @dx.op.unary.f32(i32 21, float %5515)  ; Exp(value)
  %5521 = call float @dx.op.unary.f32(i32 21, float %5517)  ; Exp(value)
  %5522 = call float @dx.op.unary.f32(i32 21, float %5519)  ; Exp(value)
  %5523 = call float @dx.op.unary.f32(i32 7, float %5520)  ; Saturate(value)
  %5524 = call float @dx.op.unary.f32(i32 7, float %5521)  ; Saturate(value)
  %5525 = call float @dx.op.unary.f32(i32 7, float %5522)  ; Saturate(value)
  %5526 = fmul fast float %5449, %5523
  %5527 = fmul fast float %5450, %5524
  %5528 = fmul fast float %5451, %5525
  %5529 = fsub fast float %5403, %180
  %5530 = fsub fast float %5404, %181
  %5531 = fsub fast float %5405, %182
  %5532 = call float @dx.op.dot3.f32(i32 55, float %5529, float %5530, float %5531, float %5529, float %5530, float %5531)  ; Dot3(ax,ay,az,bx,by,bz)
  %5533 = call float @dx.op.unary.f32(i32 25, float %5532)  ; Rsqrt(value)
  %5534 = fmul fast float %5533, %5529
  %5535 = fmul fast float %5533, %5530
  %5536 = fmul fast float %5533, %5531
  %5537 = call float @dx.op.dot3.f32(i32 55, float %5403, float %5404, float %5405, float %4790, float %4791, float %4792)  ; Dot3(ax,ay,az,bx,by,bz)
  %5538 = call float @dx.op.dot3.f32(i32 55, float %4622, float %4623, float %4624, float %5534, float %5535, float %5536)  ; Dot3(ax,ay,az,bx,by,bz)
  %5539 = call float @dx.op.unary.f32(i32 7, float %5537)  ; Saturate(value)
  %5540 = fmul fast float %5539, %5410
  %5541 = fmul fast float %5539, %5539
  %5542 = fmul fast float %5541, %4813
  %5543 = call float @dx.op.unary.f32(i32 7, float %5542)  ; Saturate(value)
  %5544 = fmul fast float %5540, %5543
  %5545 = bitcast float %5400 to i32
  %5546 = ashr i32 %5545, 1
  %5547 = sub nsw i32 1597463007, %5546
  %5548 = bitcast i32 %5547 to float
  %5549 = fmul fast float %5548, %5397
  %5550 = fmul fast float %5548, %5398
  %5551 = fmul fast float %5548, %5399
  %5552 = fsub fast float %5549, %180
  %5553 = fsub fast float %5550, %181
  %5554 = fsub fast float %5551, %182
  %5555 = call float @dx.op.dot3.f32(i32 55, float %5552, float %5553, float %5554, float %5552, float %5553, float %5554)  ; Dot3(ax,ay,az,bx,by,bz)
  %5556 = call float @dx.op.unary.f32(i32 25, float %5555)  ; Rsqrt(value)
  %5557 = fmul fast float %5552, %5556
  %5558 = fmul fast float %5553, %5556
  %5559 = fmul fast float %5554, %5556
  %5560 = call float @dx.op.dot3.f32(i32 55, float %4790, float %4791, float %4792, float %5557, float %5558, float %5559)  ; Dot3(ax,ay,az,bx,by,bz)
  %5561 = fmul fast float %5560, %5560
  %5562 = call float @dx.op.unary.f32(i32 6, float %5537)  ; FAbs(value)
  %5563 = fsub fast float 1.000000e+00, %4796
  %5564 = call float @dx.op.binary.f32(i32 35, float %5563, float 0x3F847AE140000000)  ; FMax(a,b)
  %5565 = fmul fast float %5564, %5564
  %5566 = fmul fast float %5565, %5565
  %5567 = fsub fast float 1.000000e+00, %5566
  %5568 = fmul fast float %4800, %4800
  %5569 = fmul fast float %5568, %5567
  %5570 = fadd fast float %5569, %5566
  %5571 = bitcast float %5570 to i32
  %5572 = ashr i32 %5571, 1
  %5573 = add nsw i32 %5572, 532487669
  %5574 = bitcast i32 %5573 to float
  %5575 = fadd fast float %5574, %4800
  %5576 = fmul fast float %5566, %5561
  %5577 = fsub fast float 1.000000e+00, %5561
  %5578 = fadd fast float %5577, %5576
  %5579 = fmul fast float %5562, %5562
  %5580 = fmul fast float %5579, %5567
  %5581 = fadd fast float %5580, %5566
  %5582 = bitcast float %5581 to i32
  %5583 = ashr i32 %5582, 1
  %5584 = add nsw i32 %5583, 532487669
  %5585 = bitcast i32 %5584 to float
  %5586 = fadd fast float %5585, %5562
  %5587 = fmul fast float %5578, %5578
  %5588 = fmul fast float %5587, %5575
  %5589 = fmul fast float %5588, %5586
  %5590 = fdiv fast float 1.000000e+00, %5589
  %5591 = bitcast float %5566 to i32
  %5592 = sitofp i32 %5591 to float
  %5593 = fmul fast float %5592, 0x3FE7F73180000000
  %5594 = fadd fast float %5593, 0x41AFE27C40000000
  %5595 = fptosi float %5594 to i32
  %5596 = bitcast i32 %5595 to float
  %5597 = fmul fast float %5383, 0x3FD80E9D60000000
  %5598 = fmul fast float %5597, %5548
  %5599 = fadd fast float %5596, %5598
  %5600 = bitcast float %5599 to i32
  %5601 = sub nsw i32 2129859010, %5600
  %5602 = bitcast i32 %5601 to float
  %5603 = fmul fast float %5566, %5590
  %5604 = fmul fast float %5603, %5596
  %5605 = fmul fast float %5604, %5602
  %5606 = call float @dx.op.unary.f32(i32 6, float %5538)  ; FAbs(value)
  %5607 = fsub fast float 1.000000e+00, %5606
  %5608 = bitcast float %5607 to i32
  %5609 = sitofp i32 %5608 to float
  %5610 = fmul fast float %5609, 5.000000e+00
  %5611 = fadd fast float %5610, 0xC1EFBF8940000000
  %5612 = fptosi float %5611 to i32
  %5613 = bitcast i32 %5612 to float
  %5614 = fsub fast float 1.000000e+00, %4787
  %5615 = fsub fast float 1.000000e+00, %4788
  %5616 = fsub fast float 1.000000e+00, %4798
  %5617 = fmul fast float %5613, %5614
  %5618 = fmul fast float %5613, %5615
  %5619 = fmul fast float %5613, %5616
  %5620 = fadd fast float %5617, %4787
  %5621 = fadd fast float %5618, %4788
  %5622 = fadd fast float %5619, %4798
  %5623 = fmul fast float %5537, 9.843750e-01
  %5624 = fadd fast float %5623, 7.812500e-03
  %5625 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %5624, float %5060, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5626 = extractvalue %dx.types.ResRet.f32 %5625, 2
  %5627 = extractvalue %dx.types.ResRet.f32 %5625, 3
  %5628 = fmul fast float %5626, %4787
  %5629 = fmul fast float %5626, %4788
  %5630 = fmul fast float %5626, %4798
  %5631 = fadd fast float %5628, %5627
  %5632 = fadd fast float %5629, %5627
  %5633 = fadd fast float %5630, %5627
  %5634 = call float @dx.op.binary.f32(i32 35, float %5632, float %5633)  ; FMax(a,b)
  %5635 = call float @dx.op.binary.f32(i32 35, float %5631, float %5634)  ; FMax(a,b)
  %5636 = fsub fast float 1.000000e+00, %5635
  %5637 = fsub fast float -0.000000e+00, %4790
  %5638 = fsub fast float -0.000000e+00, %4791
  %5639 = fsub fast float -0.000000e+00, %4792
  %5640 = call float @dx.op.dot3.f32(i32 55, float %5403, float %5404, float %5405, float %5637, float %5638, float %5639)  ; Dot3(ax,ay,az,bx,by,bz)
  %5641 = call float @dx.op.unary.f32(i32 7, float %5640)  ; Saturate(value)
  %5642 = fmul fast float %5641, %5410
  %5643 = fmul fast float %5641, 9.843750e-01
  %5644 = fadd fast float %5643, 7.812500e-03
  %5645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %5644, float %5060, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5646 = extractvalue %dx.types.ResRet.f32 %5645, 2
  %5647 = extractvalue %dx.types.ResRet.f32 %5645, 3
  %5648 = fmul fast float %5646, %4787
  %5649 = fmul fast float %5646, %4788
  %5650 = fmul fast float %5646, %4798
  %5651 = fadd fast float %5648, %5647
  %5652 = fadd fast float %5649, %5647
  %5653 = fadd fast float %5650, %5647
  %5654 = call float @dx.op.binary.f32(i32 35, float %5652, float %5653)  ; FMax(a,b)
  %5655 = call float @dx.op.binary.f32(i32 35, float %5651, float %5654)  ; FMax(a,b)
  %5656 = fsub fast float 1.000000e+00, %5655
  %5657 = fmul fast float %5642, %5656
  %5658 = fmul fast float %5657, %3635
  %5659 = fmul fast float %5657, %3636
  %5660 = fmul fast float %5657, %3637
  %5661 = fmul fast float %5636, %5544
  %5662 = fadd fast float %5658, %5661
  %5663 = fadd fast float %5659, %5661
  %5664 = fadd fast float %5660, %5661
  %5665 = fmul fast float %5526, %3549
  %5666 = fmul fast float %5665, %5662
  %5667 = fmul fast float %5527, %3549
  %5668 = fmul fast float %5667, %5663
  %5669 = fmul fast float %5528, %3549
  %5670 = fmul fast float %5669, %5664
  %5671 = fadd fast float %5666, %5365
  %5672 = fadd fast float %5668, %5366
  %5673 = fadd fast float %5670, %5367
  %5674 = fmul fast float %5665, %5544
  %5675 = fmul fast float %5674, %5620
  %5676 = fmul fast float %5675, %5605
  %5677 = fmul fast float %5667, %5544
  %5678 = fmul fast float %5677, %5621
  %5679 = fmul fast float %5678, %5605
  %5680 = fmul fast float %5669, %5544
  %5681 = fmul fast float %5680, %5622
  %5682 = fmul fast float %5681, %5605
  %5683 = fadd fast float %5676, %5362
  %5684 = fadd fast float %5679, %5363
  %5685 = fadd fast float %5682, %5364
  br label %5440

; <label>:5686                                    ; preds = %5440
  br label %5687

; <label>:5687                                    ; preds = %5686, %5328
  %5688 = phi float [ %5330, %5328 ], [ %5441, %5686 ]
  %5689 = phi float [ %5331, %5328 ], [ %5442, %5686 ]
  %5690 = phi float [ %5332, %5328 ], [ %5443, %5686 ]
  %5691 = phi float [ %5333, %5328 ], [ %5444, %5686 ]
  %5692 = phi float [ %5334, %5328 ], [ %5445, %5686 ]
  %5693 = phi float [ %5335, %5328 ], [ %5446, %5686 ]
  %5694 = add i32 %5329, 1
  %5695 = icmp ugt i32 %5694, %5325
  br i1 %5695, label %5696, label %5328

; <label>:5696                                    ; preds = %5687
  br label %5697

; <label>:5697                                    ; preds = %5696, %5304, %5294
  %5698 = phi float [ %5295, %5294 ], [ %5295, %5304 ], [ %5688, %5696 ]
  %5699 = phi float [ %5296, %5294 ], [ %5296, %5304 ], [ %5689, %5696 ]
  %5700 = phi float [ %5297, %5294 ], [ %5297, %5304 ], [ %5690, %5696 ]
  %5701 = phi float [ %5298, %5294 ], [ %5298, %5304 ], [ %5691, %5696 ]
  %5702 = phi float [ %5299, %5294 ], [ %5299, %5304 ], [ %5692, %5696 ]
  %5703 = phi float [ %5300, %5294 ], [ %5300, %5304 ], [ %5693, %5696 ]
  %5704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3528, i32 undef)  ; BufferLoad(srv,index,wot)
  %5705 = extractvalue %dx.types.ResRet.i32 %5704, 3
  %5706 = bitcast i32 %5705 to float
  %5707 = fsub fast float 1.000000e+00, %5706
  %5708 = fmul fast float %5707, %194
  %5709 = fadd fast float %5708, %5706
  %5710 = call float @dx.op.unary.f32(i32 24, float %4793)  ; Sqrt(value)
  %5711 = call float @dx.op.unary.f32(i32 24, float %4794)  ; Sqrt(value)
  %5712 = call float @dx.op.unary.f32(i32 24, float %4795)  ; Sqrt(value)
  %5713 = fmul fast float %5710, %5701
  %5714 = fmul fast float %5711, %5702
  %5715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5716 = extractvalue %dx.types.CBufRet.f32 %5715, 0
  br i1 %231, label %5717, label %5747

; <label>:5717                                    ; preds = %5697
  %5718 = fadd fast float %5703, %3499
  %5719 = fmul fast float %5718, %3497
  %5720 = fsub fast float 1.000000e+00, %3497
  %5721 = call float @dx.op.unary.f32(i32 7, float %5720)  ; Saturate(value)
  %5722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5723 = extractvalue %dx.types.CBufRet.f32 %5722, 3
  %5724 = fmul fast float %5723, %5721
  %5725 = fadd fast float %5724, %5719
  %5726 = fsub fast float 1.000000e+00, %4800
  %5727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5728 = extractvalue %dx.types.CBufRet.f32 %5727, 0
  %5729 = fmul fast float %5728, %5726
  %5730 = fsub fast float %5725, %5729
  %5731 = fadd fast float %5714, %5713
  %5732 = fmul fast float %5716, %5731
  %5733 = extractvalue %dx.types.CBufRet.f32 %5722, 1
  %5734 = fsub fast float %5730, %5733
  %5735 = extractvalue %dx.types.CBufRet.f32 %5722, 2
  %5736 = fmul fast float %5734, %5735
  %5737 = call float @dx.op.unary.f32(i32 7, float %5736)  ; Saturate(value)
  %5738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5739 = extractvalue %dx.types.CBufRet.f32 %5738, 0
  %5740 = fsub fast float %5737, %5739
  %5741 = fmul fast float %5740, 1.000000e+01
  %5742 = call float @dx.op.unary.f32(i32 7, float %5741)  ; Saturate(value)
  %5743 = fsub fast float 1.000000e+00, %5709
  %5744 = fmul fast float %5742, %5743
  %5745 = fadd fast float %5744, %5709
  %5746 = fmul fast float %5745, %5737
  br label %5763

; <label>:5747                                    ; preds = %5697
  %5748 = fmul fast float %5712, %5703
  %5749 = fmul fast float %5716, %5713
  %5750 = fmul fast float %5716, %5714
  %5751 = fmul fast float %5748, %5716
  %5752 = add i32 %29, 356
  %5753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %5752, i32 undef)  ; BufferLoad(srv,index,wot)
  %5754 = extractvalue %dx.types.ResRet.i32 %5753, 0
  %5755 = and i32 %5754, 32
  %5756 = icmp eq i32 %5755, 0
  br i1 %5756, label %5763, label %5757

; <label>:5757                                    ; preds = %5747
  %5758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5759 = extractvalue %dx.types.CBufRet.f32 %5758, 0
  %5760 = fmul fast float %5759, 0x3FE99999A0000000
  %5761 = fadd fast float %5759, %5749
  %5762 = fadd fast float %5760, %5751
  br label %5763

; <label>:5763                                    ; preds = %5757, %5747, %5717
  %5764 = phi float [ %5732, %5717 ], [ %5761, %5757 ], [ %5749, %5747 ]
  %5765 = phi float [ %5746, %5717 ], [ %5750, %5757 ], [ %5750, %5747 ]
  %5766 = phi float [ %5745, %5717 ], [ %5762, %5757 ], [ %5751, %5747 ]
  %5767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5768 = extractvalue %dx.types.CBufRet.f32 %5767, 0
  %5769 = fmul fast float %5768, %5699
  %5770 = fmul fast float %5768, %5700
  %5771 = fadd fast float %5699, %5698
  %5772 = select i1 %231, float %5771, float %5698
  %5773 = fmul float %5772, %5768
  %5774 = select i1 %231, float 0.000000e+00, float %5769
  %5775 = select i1 %231, float 0.000000e+00, float %5770
  %5776 = fmul fast float %5764, %5710
  %5777 = fmul fast float %5765, %5711
  %5778 = fmul fast float %5766, %5712
  %5779 = fadd fast float %5773, %5776
  %5780 = fadd fast float %5774, %5777
  %5781 = fadd fast float %5775, %5778
  %5782 = select i1 %231, float %5765, float %5780
  %5783 = select i1 %231, float %5766, float %5781
  %5784 = call float @dx.op.binary.f32(i32 36, float %5779, float 3.225500e+04)  ; FMin(a,b)
  %5785 = call float @dx.op.binary.f32(i32 36, float %5782, float 3.225500e+04)  ; FMin(a,b)
  %5786 = call float @dx.op.binary.f32(i32 36, float %5783, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5784)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5785)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5786)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.viewIdState = !{!40}
!dx.entryPoints = !{!41}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !32, !35}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !14}
!14 = !{i32 0, i32 5}
!15 = !{i32 7, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!32 = !{!33, !34}
!33 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!34 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!35 = !{!36, !37, !38, !39}
!36 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!37 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!38 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!39 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!40 = !{[59 x i32] [i32 57, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7]}
!41 = !{void ()* @ps_main, !"ps_main", !42, !4, !69}
!42 = !{!43, !67, null}
!43 = !{!44, !47, !49, !51, !53, !55, !56, !57, !58, !59, !60, !61, !62, !63, !65, !66}
!44 = !{i32 0, !"SV_Position", i8 9, i8 3, !45, i8 4, i32 1, i8 4, i32 0, i8 0, !46}
!45 = !{i32 0}
!46 = !{i32 3, i32 11}
!47 = !{i32 1, !"COLOR", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 1, i8 0, !48}
!48 = !{i32 3, i32 14}
!49 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 2, i8 0, !50}
!50 = !{i32 3, i32 3}
!51 = !{i32 3, !"NORMAL", i8 9, i8 0, !45, i8 2, i32 1, i8 3, i32 3, i8 0, !52}
!52 = !{i32 3, i32 7}
!53 = !{i32 4, !"TANGENT", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 4, i8 0, !54}
!54 = !{i32 3, i32 15}
!55 = !{i32 5, !"SH_RED", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 5, i8 0, !54}
!56 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 6, i8 0, !54}
!57 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 7, i8 0, !54}
!58 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 3, i32 8, i8 0, !52}
!59 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 9, i8 0, !54}
!60 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !45, i8 2, i32 1, i8 2, i32 10, i8 0, !50}
!61 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 11, i8 0, !54}
!62 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 12, i8 0, !52}
!63 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !45, i8 1, i32 1, i8 4, i32 13, i8 0, !64}
!64 = !{i32 3, i32 1}
!65 = !{i32 14, !"SV_IsFrontFace", i8 5, i8 13, !45, i8 1, i32 1, i8 1, i32 14, i8 0, !64}
!66 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !45, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!67 = !{!68}
!68 = !{i32 0, !"SV_Target", i8 9, i8 16, !45, i8 0, i32 1, i8 4, i32 0, i8 0, !54}
!69 = !{i32 0, i64 24}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}

