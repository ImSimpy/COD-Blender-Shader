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
; shader hash: 5e5a92c175fee8f38fd420667910334e
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
;   [224 x i8] (type annotation not present)
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
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
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = fcmp fast une float %104, 0.000000e+00
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
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
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 3
  %166 = fmul fast float %164, %77
  %167 = fmul fast float %165, %78
  %168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %169 = extractvalue %dx.types.ResRet.i32 %168, 0
  %170 = and i32 %169, 114688
  %171 = icmp ne i32 %170, 0
  %172 = select i1 %171, float %166, float 0.000000e+00
  %173 = select i1 %171, float %167, float 0.000000e+00
  %174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %24, float %172, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = fmul fast float %175, 2.550000e+02
  %177 = fptoui float %176 to i32
  %178 = select i1 %171, i32 %177, i32 0
  %179 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.i32 %179, 3
  %181 = and i32 %180, 3
  %182 = icmp ne i32 %181, 0
  %183 = and i32 %180, 4
  %184 = icmp ne i32 %183, 0
  %185 = and i1 %182, %184
  br i1 %185, label %186, label %195

; <label>:186                                     ; preds = %0
  %187 = fmul fast float %108, %78
  %188 = fmul fast float %107, %77
  %189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %23, float %188, float %187, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = fsub fast float 1.000000e+00, %190
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 0
  %194 = fcmp fast olt float %191, %193
  br label %198

; <label>:195                                     ; preds = %0
  %196 = icmp eq i32 %183, 0
  %197 = and i1 %182, %196
  br label %198

; <label>:198                                     ; preds = %195, %186
  %199 = phi i1 [ %194, %186 ], [ %197, %195 ]
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 2
  %202 = fmul fast float %201, 0x3FE3C6EF40000000
  %203 = frem fast float %77, 2.560000e+02
  %204 = frem fast float %78, 2.560000e+02
  %205 = fptoui float %203 to i32
  %206 = fptoui float %204 to i32
  %207 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %205, i32 %206, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = fadd fast float %208, %202
  %210 = call float @dx.op.unary.f32(i32 22, float %209)  ; Frc(value)
  %211 = add i32 %29, 156
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %223 = add i32 %29, 216
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %237 = add i32 %29, 36
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = and i32 %239, 65535
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = lshr i32 %239, 16
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = add i32 %29, 288
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = and i32 %246, 65535
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %246, 16
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = fmul fast float %248, 0x3F50624DE0000000
  %252 = fmul fast float %250, 0x3F50624DE0000000
  %253 = add i32 %29, 172
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %265 = add i32 %29, 232
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %279 = add i32 %29, 52
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = and i32 %281, 65535
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = lshr i32 %281, 16
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = add i32 %29, 304
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 65535
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %288, 16
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = fmul fast float %290, 0x3F50624DE0000000
  %294 = fmul fast float %292, 0x3F50624DE0000000
  %295 = add i32 %29, 188
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %307 = add i32 %29, 248
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %321 = add i32 %29, 68
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = and i32 %323, 65535
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = lshr i32 %323, 16
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = add i32 %29, 320
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = and i32 %330, 65535
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %330, 16
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = fmul fast float %332, 0x3F50624DE0000000
  %336 = fmul fast float %334, 0x3F50624DE0000000
  %337 = add i32 %29, 204
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = shl i32 %339, 4
  %341 = and i32 %340, 32752
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = lshr i32 %339, 7
  %344 = and i32 %343, 32752
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = lshr i32 %339, 22
  %347 = shl nuw nsw i32 %346, 5
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = add i32 %29, 264
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 255
  %353 = uitofp i32 %352 to float
  %354 = fmul fast float %353, 0x3F70101020000000
  %355 = lshr i32 %351, 8
  %356 = and i32 %355, 255
  %357 = uitofp i32 %356 to float
  %358 = fmul fast float %357, 0x3F70101020000000
  %359 = lshr i32 %351, 16
  %360 = and i32 %359, 255
  %361 = uitofp i32 %360 to float
  %362 = fmul fast float %361, 0x3F70101020000000
  %363 = add i32 %29, 84
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = and i32 %365, 65535
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = lshr i32 %365, 16
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = add i32 %29, 336
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = and i32 %372, 65535
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %372, 16
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = fmul fast float %374, 0x3F50624DE0000000
  %378 = fmul fast float %376, 0x3F50624DE0000000
  %379 = add i32 %29, 348
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 32
  %383 = icmp eq i32 %382, 0
  %384 = and i32 %381, 64
  %385 = icmp eq i32 %384, 0
  %386 = and i32 %381, 128
  %387 = icmp eq i32 %386, 0
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = and i32 %389, 2
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %405, label %392

; <label>:392                                     ; preds = %198
  %393 = add i32 %29, 568
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = add i32 %395, 0
  %397 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %396, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %398 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %397, %dx.types.Handle %74, float %65, float %66, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %399 = extractvalue %dx.types.ResRet.f32 %398, 0
  %400 = extractvalue %dx.types.ResRet.f32 %398, 1
  %401 = extractvalue %dx.types.ResRet.f32 %398, 2
  %402 = fmul fast float %399, %67
  %403 = fmul fast float %400, %68
  %404 = fmul fast float %401, %69
  br label %405

; <label>:405                                     ; preds = %392, %198
  %406 = phi float [ %69, %198 ], [ %404, %392 ]
  %407 = phi float [ %68, %198 ], [ %403, %392 ]
  %408 = phi float [ %67, %198 ], [ %402, %392 ]
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 2
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %432, label %413

; <label>:413                                     ; preds = %405
  %414 = add i32 %29, 44
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 1
  %418 = icmp ne i32 %417, 0
  %419 = select i1 %418, float %408, float 1.000000e+00
  %420 = add i32 %29, 60
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = and i32 %422, 1
  %424 = icmp ne i32 %423, 0
  %425 = select i1 %424, float %407, float 1.000000e+00
  %426 = add i32 %29, 76
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 1
  %430 = icmp ne i32 %429, 0
  %431 = select i1 %430, float %406, float 1.000000e+00
  br label %432

; <label>:432                                     ; preds = %413, %405
  %433 = phi float [ %406, %405 ], [ %431, %413 ]
  %434 = phi float [ %407, %405 ], [ %425, %413 ]
  %435 = phi float [ %408, %405 ], [ %419, %413 ]
  %436 = lshr i32 %410, 20
  %437 = and i32 %436, 3
  %438 = add nuw nsw i32 %437, 1
  %439 = add i32 %29, 24
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = add i32 %29, 28
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = or i32 %444, %441
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %958, label %447

; <label>:447                                     ; preds = %432
  %448 = and i32 %441, 262144
  %449 = icmp ne i32 %448, 0
  %450 = select i1 %449, float %33, float 1.000000e+00
  %451 = select i1 %449, float %34, float 0.000000e+00
  %452 = select i1 %449, float %35, float 0.000000e+00
  %453 = select i1 %449, float %36, float 1.000000e+00
  %454 = select i1 %449, float %37, float %65
  %455 = select i1 %449, float %38, float %66
  %456 = add i32 %29, 284
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = lshr i32 %458, 16
  %460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %459)  ; LegacyF16ToF32(value)
  %461 = fmul fast float %460, 0x3F50624DE0000000
  %462 = add i32 %29, 88
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = lshr i32 %464, 16
  %466 = and i32 %465, 255
  %467 = lshr i32 %464, 24
  %468 = add i32 %29, 292
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = and i32 %470, 65535
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = lshr i32 %470, 16
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = add i32 %29, 32
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = lshr i32 %477, 22
  %479 = shl nuw nsw i32 %478, 5
  %480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %479)  ; LegacyF16ToF32(value)
  %481 = shl i32 %477, 4
  %482 = and i32 %481, 32752
  %483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %482)  ; LegacyF16ToF32(value)
  %484 = lshr i32 %477, 7
  %485 = and i32 %484, 32752
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %488 = extractvalue %dx.types.CBufRet.f32 %487, 3
  %489 = fmul fast float %488, 1.000000e+03
  %490 = fmul fast float %251, %489
  %491 = call float @dx.op.unary.f32(i32 22, float %490)  ; Frc(value)
  %492 = fadd fast float %491, %241
  %493 = fmul fast float %252, %489
  %494 = call float @dx.op.unary.f32(i32 22, float %493)  ; Frc(value)
  %495 = fadd fast float %494, %243
  %496 = fmul fast float %461, %489
  %497 = call float @dx.op.unary.f32(i32 22, float %496)  ; Frc(value)
  %498 = fmul fast float %497, 0x401921FB60000000
  %499 = fadd fast float %498, %480
  %500 = call float @dx.op.unary.f32(i32 13, float %499)  ; Sin(value)
  %501 = call float @dx.op.unary.f32(i32 12, float %499)  ; Cos(value)
  %502 = fsub fast float -0.000000e+00, %500
  %503 = fadd fast float %454, -5.000000e-01
  %504 = fadd fast float %455, -5.000000e-01
  %505 = fmul fast float %472, %503
  %506 = fmul fast float %474, %504
  %507 = fadd fast float %505, 5.000000e-01
  %508 = fadd fast float %506, 5.000000e-01
  %509 = fmul fast float %483, %507
  %510 = fmul fast float %486, %508
  %511 = fmul fast float %501, %509
  %512 = call float @dx.op.tertiary.f32(i32 46, float %502, float %510, float %511)  ; FMad(a,b,c)
  %513 = fmul fast float %500, %509
  %514 = call float @dx.op.tertiary.f32(i32 46, float %501, float %510, float %513)  ; FMad(a,b,c)
  %515 = fadd fast float %492, %512
  %516 = fadd fast float %495, %514
  %517 = icmp ugt i32 %466, 1
  %518 = icmp ugt i32 %464, 33554431
  %519 = or i1 %518, %517
  br i1 %519, label %520, label %545

; <label>:520                                     ; preds = %447
  %521 = add i32 %29, 228
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = lshr i32 %523, 16
  %525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %524)  ; LegacyF16ToF32(value)
  %526 = fmul fast float %488, %525
  %527 = call float @dx.op.unary.f32(i32 22, float %526)  ; Frc(value)
  %528 = mul nuw nsw i32 %466, %467
  %529 = uitofp i32 %528 to float
  %530 = fmul fast float %527, %529
  %531 = call float @dx.op.unary.f32(i32 27, float %530)  ; Round_ni(value)
  %532 = fptoui float %531 to i32
  %533 = urem i32 %532, %466
  %534 = udiv i32 %532, %467
  %535 = call float @dx.op.unary.f32(i32 22, float %515)  ; Frc(value)
  %536 = call float @dx.op.unary.f32(i32 22, float %516)  ; Frc(value)
  %537 = uitofp i32 %533 to float
  %538 = uitofp i32 %534 to float
  %539 = fadd fast float %535, %537
  %540 = fadd fast float %536, %538
  %541 = uitofp i32 %466 to float
  %542 = uitofp i32 %467 to float
  %543 = fdiv fast float %539, %541
  %544 = fdiv fast float %540, %542
  br label %545

; <label>:545                                     ; preds = %520, %447
  %546 = phi float [ %543, %520 ], [ %515, %447 ]
  %547 = phi float [ %544, %520 ], [ %516, %447 ]
  %548 = and i32 %441, 16
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %746, label %550

; <label>:550                                     ; preds = %545
  %551 = add i32 %29, 456
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = add i32 %553, 0
  %555 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %554, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %556 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %555, %dx.types.Handle %73, float %546, float %547, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %557 = extractvalue %dx.types.ResRet.f32 %556, 0
  %558 = extractvalue %dx.types.ResRet.f32 %556, 1
  %559 = extractvalue %dx.types.ResRet.f32 %556, 2
  %560 = extractvalue %dx.types.ResRet.f32 %556, 3
  %561 = and i32 %464, 255
  %562 = uitofp i32 %561 to float
  %563 = lshr i32 %464, 8
  %564 = and i32 %563, 255
  %565 = uitofp i32 %564 to float
  %566 = fmul fast float %560, %562
  %567 = fadd fast float %566, %565
  %568 = fmul fast float %567, 0x3F70101000000000
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = and i32 %570, 512
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %581, label %573

; <label>:573                                     ; preds = %550
  %574 = add i32 %29, 536
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = add i32 %576, 0
  %578 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %577, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %579 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %578, %dx.types.Handle %74, float %546, float %547, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %580 = extractvalue %dx.types.ResRet.f32 %579, 0
  br label %581

; <label>:581                                     ; preds = %573, %550
  %582 = phi float [ %580, %573 ], [ 1.000000e+00, %550 ]
  %583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.i32 %583, 0
  %585 = and i32 %584, 33554432
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %693, label %587

; <label>:587                                     ; preds = %581
  %588 = add i32 %29, 224
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = and i32 %590, 65535
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = lshr i32 %590, 16
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = add i32 %29, 228
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = and i32 %597, 65535
  %599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %598)  ; LegacyF16ToF32(value)
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = lshr i32 %601, 24
  %603 = uitofp i32 %602 to float
  %604 = fmul fast float %603, 0x3F70101020000000
  %605 = and i32 %601, 255
  %606 = uitofp i32 %605 to float
  %607 = fmul fast float %606, 0x3F70101020000000
  %608 = lshr i32 %601, 8
  %609 = and i32 %608, 255
  %610 = uitofp i32 %609 to float
  %611 = fmul fast float %610, 0x3F70101020000000
  %612 = lshr i32 %601, 16
  %613 = and i32 %612, 255
  %614 = uitofp i32 %613 to float
  %615 = fmul fast float %614, 0x3F70101020000000
  %616 = add i32 %29, 220
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = lshr i32 %618, 24
  %620 = uitofp i32 %619 to float
  %621 = fmul fast float %620, 0x3F70101020000000
  %622 = and i32 %618, 255
  %623 = uitofp i32 %622 to float
  %624 = fmul fast float %623, 0x3F70101020000000
  %625 = lshr i32 %618, 8
  %626 = and i32 %625, 255
  %627 = uitofp i32 %626 to float
  %628 = fmul fast float %627, 0x3F70101020000000
  %629 = lshr i32 %618, 16
  %630 = and i32 %629, 255
  %631 = uitofp i32 %630 to float
  %632 = fmul fast float %631, 0x3F70101020000000
  %633 = bitcast float %557 to i32
  %634 = ashr i32 %633, 1
  %635 = sub nsw i32 1597463174, %634
  %636 = bitcast i32 %635 to float
  %637 = fmul fast float %557, 5.000000e-01
  %638 = fmul fast float %636, %636
  %639 = fmul fast float %638, %637
  %640 = fsub fast float 1.500000e+00, %639
  %641 = fmul fast float %636, %557
  %642 = fmul fast float %641, %640
  %643 = bitcast float %558 to i32
  %644 = ashr i32 %643, 1
  %645 = sub nsw i32 1597463174, %644
  %646 = bitcast i32 %645 to float
  %647 = fmul fast float %558, 5.000000e-01
  %648 = fmul fast float %646, %646
  %649 = fmul fast float %648, %647
  %650 = fsub fast float 1.500000e+00, %649
  %651 = fmul fast float %646, %558
  %652 = fmul fast float %651, %650
  %653 = bitcast float %559 to i32
  %654 = ashr i32 %653, 1
  %655 = sub nsw i32 1597463174, %654
  %656 = bitcast i32 %655 to float
  %657 = fmul fast float %559, 5.000000e-01
  %658 = fmul fast float %656, %656
  %659 = fmul fast float %658, %657
  %660 = fsub fast float 1.500000e+00, %659
  %661 = fmul fast float %656, %559
  %662 = fmul fast float %661, %660
  %663 = fsub fast float %642, %624
  %664 = fsub fast float %652, %628
  %665 = fsub fast float %662, %632
  %666 = fmul fast float %663, %592
  %667 = fmul fast float %664, %594
  %668 = fmul fast float %665, %599
  %669 = fadd fast float %666, %607
  %670 = fadd fast float %667, %611
  %671 = fadd fast float %668, %615
  %672 = call float @dx.op.unary.f32(i32 7, float %669)  ; Saturate(value)
  %673 = call float @dx.op.unary.f32(i32 7, float %670)  ; Saturate(value)
  %674 = call float @dx.op.unary.f32(i32 7, float %671)  ; Saturate(value)
  %675 = fmul fast float %672, %672
  %676 = fmul fast float %673, %673
  %677 = fmul fast float %674, %674
  %678 = fsub fast float %675, %557
  %679 = fsub fast float %676, %558
  %680 = fsub fast float %677, %559
  %681 = fmul fast float %678, %582
  %682 = fmul fast float %679, %582
  %683 = fmul fast float %680, %582
  %684 = fadd fast float %681, %557
  %685 = fadd fast float %682, %558
  %686 = fadd fast float %683, %559
  %687 = fadd fast float %604, %568
  %688 = fsub fast float %687, %621
  %689 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  %690 = fsub fast float %689, %568
  %691 = fmul fast float %690, %582
  %692 = fadd fast float %691, %568
  br label %746

; <label>:693                                     ; preds = %581
  %694 = and i32 %584, 134217728
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %730, label %696

; <label>:696                                     ; preds = %693
  %697 = call float @dx.op.unary.f32(i32 24, float %228)  ; Sqrt(value)
  %698 = call float @dx.op.unary.f32(i32 24, float %232)  ; Sqrt(value)
  %699 = call float @dx.op.unary.f32(i32 24, float %236)  ; Sqrt(value)
  %700 = fadd fast float %697, -5.000000e-01
  %701 = fadd fast float %698, -5.000000e-01
  %702 = fadd fast float %699, -5.000000e-01
  %703 = fmul fast float %700, %582
  %704 = fmul fast float %701, %582
  %705 = fmul fast float %702, %582
  %706 = fadd fast float %703, 5.000000e-01
  %707 = fadd fast float %704, 5.000000e-01
  %708 = fadd fast float %705, 5.000000e-01
  %709 = call float @dx.op.unary.f32(i32 24, float %557)  ; Sqrt(value)
  %710 = call float @dx.op.unary.f32(i32 24, float %558)  ; Sqrt(value)
  %711 = call float @dx.op.unary.f32(i32 24, float %559)  ; Sqrt(value)
  %712 = fmul fast float %706, 2.000000e+00
  %713 = fsub fast float 1.000000e+00, %712
  %714 = fmul fast float %713, %709
  %715 = fadd fast float %714, %712
  %716 = fmul fast float %715, %709
  %717 = fmul fast float %707, 2.000000e+00
  %718 = fsub fast float 1.000000e+00, %717
  %719 = fmul fast float %718, %710
  %720 = fadd fast float %719, %717
  %721 = fmul fast float %720, %710
  %722 = fmul fast float %708, 2.000000e+00
  %723 = fsub fast float 1.000000e+00, %722
  %724 = fmul fast float %723, %711
  %725 = fadd fast float %724, %722
  %726 = fmul fast float %725, %711
  %727 = fmul fast float %716, %716
  %728 = fmul fast float %721, %721
  %729 = fmul fast float %726, %726
  br label %746

; <label>:730                                     ; preds = %693
  %731 = fmul fast float %228, %228
  %732 = fmul fast float %232, %232
  %733 = fmul fast float %236, %236
  %734 = fadd fast float %731, -1.000000e+00
  %735 = fadd fast float %732, -1.000000e+00
  %736 = fadd fast float %733, -1.000000e+00
  %737 = fmul fast float %582, %734
  %738 = fmul fast float %582, %735
  %739 = fmul fast float %582, %736
  %740 = fadd fast float %737, 1.000000e+00
  %741 = fadd fast float %738, 1.000000e+00
  %742 = fadd fast float %739, 1.000000e+00
  %743 = fmul fast float %740, %557
  %744 = fmul fast float %741, %558
  %745 = fmul fast float %742, %559
  br label %746

; <label>:746                                     ; preds = %730, %696, %587, %545
  %747 = phi float [ %692, %587 ], [ %568, %696 ], [ %568, %730 ], [ 0x3FA23C0BE0000000, %545 ]
  %748 = phi float [ %684, %587 ], [ %727, %696 ], [ %743, %730 ], [ 1.000000e+00, %545 ]
  %749 = phi float [ %685, %587 ], [ %728, %696 ], [ %744, %730 ], [ 1.000000e+00, %545 ]
  %750 = phi float [ %686, %587 ], [ %729, %696 ], [ %745, %730 ], [ 1.000000e+00, %545 ]
  %751 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %752 = extractvalue %dx.types.CBufRet.i32 %751, 1
  %753 = and i32 %752, 1
  %754 = icmp ne i32 %753, 0
  %755 = add i32 %29, 356
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %755, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = and i32 %757, 32
  %759 = icmp ne i32 %758, 0
  %760 = and i1 %754, %759
  %761 = select i1 %760, float 1.000000e+00, float %748
  %762 = select i1 %760, float 0x3FD3333340000000, float %749
  %763 = select i1 %760, float 0x3FD3333340000000, float %750
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = and i32 %765, 32
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %840, label %768

; <label>:768                                     ; preds = %746
  %769 = add i32 %29, 92
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %769, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = add i32 %29, 472
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %772, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = add i32 %774, 0
  %776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %775, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %777 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %776, %dx.types.Handle %73, float %546, float %547, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %778 = extractvalue %dx.types.ResRet.f32 %777, 0
  %779 = extractvalue %dx.types.ResRet.f32 %777, 1
  %780 = extractvalue %dx.types.ResRet.f32 %777, 2
  %781 = extractvalue %dx.types.ResRet.f32 %777, 3
  %782 = and i32 %771, 255
  %783 = uitofp i32 %782 to float
  %784 = lshr i32 %771, 8
  %785 = and i32 %784, 255
  %786 = uitofp i32 %785 to float
  %787 = lshr i32 %771, 16
  %788 = and i32 %787, 255
  %789 = uitofp i32 %788 to float
  %790 = fmul fast float %789, 0x3F70101000000000
  %791 = fmul fast float %778, %783
  %792 = fadd fast float %791, %786
  %793 = fmul fast float %792, 0x3F70101000000000
  %794 = fadd fast float %779, -5.000000e-01
  %795 = fadd fast float %781, -5.000000e-01
  %796 = fmul fast float %794, %790
  %797 = fmul fast float %795, %790
  %798 = fadd fast float %796, 5.000000e-01
  %799 = fadd fast float %797, 5.000000e-01
  %800 = fmul fast float %798, 2.000000e+00
  %801 = fadd fast float %800, -1.000000e+00
  %802 = fmul fast float %799, 2.000000e+00
  %803 = fadd fast float %802, -1.000000e+00
  %804 = fadd fast float %801, %803
  %805 = fmul fast float %804, 5.000000e-01
  %806 = fsub fast float %801, %803
  %807 = fmul fast float %806, 5.000000e-01
  %808 = call float @dx.op.unary.f32(i32 6, float %805)  ; FAbs(value)
  %809 = fsub fast float 1.000000e+00, %808
  %810 = call float @dx.op.unary.f32(i32 6, float %807)  ; FAbs(value)
  %811 = fsub fast float %809, %810
  %812 = call float @dx.op.dot3.f32(i32 55, float %805, float %807, float %811, float %805, float %807, float %811)  ; Dot3(ax,ay,az,bx,by,bz)
  %813 = call float @dx.op.unary.f32(i32 25, float %812)  ; Rsqrt(value)
  %814 = fmul fast float %805, %813
  %815 = fmul fast float %807, %813
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = and i32 %817, 67108864
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %836, label %820

; <label>:820                                     ; preds = %768
  %821 = add i32 %29, 280
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = and i32 %823, 65535
  %825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %824)  ; LegacyF16ToF32(value)
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = and i32 %827, 65535
  %829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %828)  ; LegacyF16ToF32(value)
  %830 = lshr i32 %823, 16
  %831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %830)  ; LegacyF16ToF32(value)
  %832 = fsub fast float %793, %831
  %833 = fmul fast float %832, %825
  %834 = fadd fast float %833, %829
  %835 = call float @dx.op.unary.f32(i32 7, float %834)  ; Saturate(value)
  br label %836

; <label>:836                                     ; preds = %820, %768
  %837 = phi float [ %835, %820 ], [ %793, %768 ]
  %838 = call float @dx.op.dot2.f32(i32 54, float %814, float %815, float %450, float %451)  ; Dot2(ax,ay,bx,by)
  %839 = call float @dx.op.dot2.f32(i32 54, float %814, float %815, float %452, float %453)  ; Dot2(ax,ay,bx,by)
  br label %840

; <label>:840                                     ; preds = %836, %746
  %841 = phi float [ %837, %836 ], [ 0x3FD6666660000000, %746 ]
  %842 = phi float [ %838, %836 ], [ 0.000000e+00, %746 ]
  %843 = phi float [ %839, %836 ], [ 0.000000e+00, %746 ]
  %844 = phi float [ %780, %836 ], [ 1.000000e+00, %746 ]
  %845 = add i32 %29, 160
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %845, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = lshr i32 %847, 22
  %849 = shl nuw nsw i32 %848, 5
  %850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %849)  ; LegacyF16ToF32(value)
  %851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %852 = extractvalue %dx.types.ResRet.i32 %851, 0
  %853 = and i32 %852, 64
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %888, label %855

; <label>:855                                     ; preds = %840
  %856 = add i32 %29, 488
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = add i32 %858, 0
  %860 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %859, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %862 = extractvalue %dx.types.ResRet.i32 %861, 0
  %863 = and i32 %862, 131072
  %864 = icmp eq i32 %863, 0
  %865 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %860, %dx.types.Handle %73, float %546, float %547, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %866 = extractvalue %dx.types.ResRet.f32 %865, 0
  %867 = extractvalue %dx.types.ResRet.f32 %865, 1
  %868 = extractvalue %dx.types.ResRet.f32 %865, 2
  %869 = fmul fast float %866, %216
  %870 = fmul fast float %867, %219
  %871 = fmul fast float %868, %222
  br i1 %864, label %878, label %872

; <label>:872                                     ; preds = %855
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 0
  %875 = fmul fast float %874, %869
  %876 = fmul fast float %874, %870
  %877 = fmul fast float %874, %871
  br label %878

; <label>:878                                     ; preds = %872, %855
  %879 = phi float [ %875, %872 ], [ %869, %855 ]
  %880 = phi float [ %876, %872 ], [ %870, %855 ]
  %881 = phi float [ %877, %872 ], [ %871, %855 ]
  %882 = fmul fast float %879, %850
  %883 = select i1 %199, float %882, float %879
  %884 = call float @dx.op.dot3.f32(i32 55, float %883, float %880, float %881, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %885 = select i1 %199, float 0.000000e+00, float %879
  %886 = select i1 %199, float %884, float %880
  %887 = select i1 %199, float 0.000000e+00, float %881
  br label %888

; <label>:888                                     ; preds = %878, %840
  %889 = phi float [ %885, %878 ], [ 0.000000e+00, %840 ]
  %890 = phi float [ %886, %878 ], [ 0.000000e+00, %840 ]
  %891 = phi float [ %887, %878 ], [ 0.000000e+00, %840 ]
  %892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.i32 %892, 0
  %894 = and i32 %893, 10240
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %940, label %896

; <label>:896                                     ; preds = %888
  %897 = add i32 %29, 552
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = add i32 %899, 0
  %901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %900, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %902 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %901, %dx.types.Handle %74, float %546, float %547, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %903 = extractvalue %dx.types.ResRet.f32 %902, 1
  %904 = extractvalue %dx.types.ResRet.f32 %902, 3
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = and i32 %906, 1048576
  %908 = icmp ne i32 %907, 0
  %909 = and i32 %906, 8192
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %926, label %911

; <label>:911                                     ; preds = %896
  %912 = extractvalue %dx.types.ResRet.f32 %902, 2
  %913 = select i1 %908, float %912, float %903
  %914 = extractvalue %dx.types.ResRet.f32 %902, 0
  %915 = select i1 %908, float %914, float %903
  %916 = add i32 %29, 96
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = lshr i32 %918, 16
  %920 = and i32 %919, 255
  %921 = uitofp i32 %920 to float
  %922 = fmul fast float %921, 0x3F80101020000000
  %923 = fmul fast float %922, %915
  %924 = fmul fast float %922, %903
  %925 = fmul fast float %922, %913
  br label %926

; <label>:926                                     ; preds = %911, %896
  %927 = phi float [ %923, %911 ], [ 0.000000e+00, %896 ]
  %928 = phi float [ %924, %911 ], [ 0.000000e+00, %896 ]
  %929 = phi float [ %925, %911 ], [ 0.000000e+00, %896 ]
  %930 = and i32 %906, 2048
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %940, label %932

; <label>:932                                     ; preds = %926
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %845, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = shl i32 %934, 4
  %936 = and i32 %935, 32752
  %937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %936)  ; LegacyF16ToF32(value)
  %938 = fmul fast float %937, %904
  %939 = call float @dx.op.binary.f32(i32 35, float %938, float 0x3F70101020000000)  ; FMax(a,b)
  br label %940

; <label>:940                                     ; preds = %932, %926, %888
  %941 = phi float [ %927, %932 ], [ %927, %926 ], [ 0.000000e+00, %888 ]
  %942 = phi float [ %928, %932 ], [ %928, %926 ], [ 0.000000e+00, %888 ]
  %943 = phi float [ %929, %932 ], [ %929, %926 ], [ 0.000000e+00, %888 ]
  %944 = phi float [ %939, %932 ], [ 0x3F70101020000000, %926 ], [ 0x3F70101020000000, %888 ]
  %945 = add i32 %29, 96
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = and i32 %947, 255
  %949 = uitofp i32 %948 to float
  %950 = lshr i32 %947, 8
  %951 = and i32 %950, 255
  %952 = uitofp i32 %951 to float
  %953 = call float @dx.op.dot3.f32(i32 55, float %761, float %762, float %763, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %954 = fmul fast float %952, %953
  %955 = fadd fast float %954, %949
  %956 = fmul fast float %955, 0x3F70101020000000
  %957 = call float @dx.op.unary.f32(i32 7, float %956)  ; Saturate(value)
  br label %958

; <label>:958                                     ; preds = %940, %432
  %959 = phi float [ 0.000000e+00, %432 ], [ %842, %940 ]
  %960 = phi float [ 0.000000e+00, %432 ], [ %843, %940 ]
  %961 = phi float [ 0.000000e+00, %432 ], [ %889, %940 ]
  %962 = phi float [ 0.000000e+00, %432 ], [ %890, %940 ]
  %963 = phi float [ 0.000000e+00, %432 ], [ %891, %940 ]
  %964 = phi float [ 0.000000e+00, %432 ], [ %941, %940 ]
  %965 = phi float [ 0.000000e+00, %432 ], [ %942, %940 ]
  %966 = phi float [ 0.000000e+00, %432 ], [ %943, %940 ]
  %967 = phi float [ 0.000000e+00, %432 ], [ %761, %940 ]
  %968 = phi float [ 0.000000e+00, %432 ], [ %762, %940 ]
  %969 = phi float [ 0.000000e+00, %432 ], [ %763, %940 ]
  %970 = phi float [ 0.000000e+00, %432 ], [ %747, %940 ]
  %971 = phi float [ 0.000000e+00, %432 ], [ 1.000000e+00, %940 ]
  %972 = phi float [ 0.000000e+00, %432 ], [ %841, %940 ]
  %973 = phi float [ 0.000000e+00, %432 ], [ %844, %940 ]
  %974 = phi float [ 0.000000e+00, %432 ], [ %944, %940 ]
  %975 = phi float [ 0.000000e+00, %432 ], [ %957, %940 ]
  br i1 %383, label %1789, label %976

; <label>:976                                     ; preds = %958
  %977 = icmp ult i32 %438, 2
  %978 = add i32 %29, 40
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = add i32 %29, 44
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = or i32 %983, %980
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %1789, label %986

; <label>:986                                     ; preds = %976
  %987 = and i32 %980, 262144
  %988 = icmp ne i32 %987, 0
  %989 = select i1 %988, float %33, float 1.000000e+00
  %990 = select i1 %988, float %34, float 0.000000e+00
  %991 = select i1 %988, float %35, float 0.000000e+00
  %992 = select i1 %988, float %36, float 1.000000e+00
  %993 = select i1 %988, float %37, float %65
  %994 = select i1 %988, float %38, float %66
  %995 = add i32 %29, 300
  %996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %995, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.i32 %996, 0
  %998 = lshr i32 %997, 16
  %999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %998)  ; LegacyF16ToF32(value)
  %1000 = fmul fast float %999, 0x3F50624DE0000000
  %1001 = add i32 %29, 104
  %1002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1001, i32 undef)  ; BufferLoad(srv,index,wot)
  %1003 = extractvalue %dx.types.ResRet.i32 %1002, 0
  %1004 = lshr i32 %1003, 16
  %1005 = and i32 %1004, 255
  %1006 = lshr i32 %1003, 24
  %1007 = add i32 %29, 308
  %1008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1007, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.i32 %1008, 0
  %1010 = and i32 %1009, 65535
  %1011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1010)  ; LegacyF16ToF32(value)
  %1012 = lshr i32 %1009, 16
  %1013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1012)  ; LegacyF16ToF32(value)
  %1014 = add i32 %29, 48
  %1015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.i32 %1015, 0
  %1017 = lshr i32 %1016, 22
  %1018 = shl nuw nsw i32 %1017, 5
  %1019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1018)  ; LegacyF16ToF32(value)
  %1020 = shl i32 %1016, 4
  %1021 = and i32 %1020, 32752
  %1022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1021)  ; LegacyF16ToF32(value)
  %1023 = lshr i32 %1016, 7
  %1024 = and i32 %1023, 32752
  %1025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1024)  ; LegacyF16ToF32(value)
  %1026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1027 = extractvalue %dx.types.CBufRet.f32 %1026, 3
  %1028 = fmul fast float %1027, 1.000000e+03
  %1029 = fmul fast float %293, %1028
  %1030 = call float @dx.op.unary.f32(i32 22, float %1029)  ; Frc(value)
  %1031 = fadd fast float %1030, %283
  %1032 = fmul fast float %294, %1028
  %1033 = call float @dx.op.unary.f32(i32 22, float %1032)  ; Frc(value)
  %1034 = fadd fast float %1033, %285
  %1035 = fmul fast float %1000, %1028
  %1036 = call float @dx.op.unary.f32(i32 22, float %1035)  ; Frc(value)
  %1037 = fmul fast float %1036, 0x401921FB60000000
  %1038 = fadd fast float %1037, %1019
  %1039 = call float @dx.op.unary.f32(i32 13, float %1038)  ; Sin(value)
  %1040 = call float @dx.op.unary.f32(i32 12, float %1038)  ; Cos(value)
  %1041 = fsub fast float -0.000000e+00, %1039
  %1042 = fadd fast float %993, -5.000000e-01
  %1043 = fadd fast float %994, -5.000000e-01
  %1044 = fmul fast float %1011, %1042
  %1045 = fmul fast float %1013, %1043
  %1046 = fadd fast float %1044, 5.000000e-01
  %1047 = fadd fast float %1045, 5.000000e-01
  %1048 = fmul fast float %1022, %1046
  %1049 = fmul fast float %1025, %1047
  %1050 = fmul fast float %1040, %1048
  %1051 = call float @dx.op.tertiary.f32(i32 46, float %1041, float %1049, float %1050)  ; FMad(a,b,c)
  %1052 = fmul fast float %1039, %1048
  %1053 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %1049, float %1052)  ; FMad(a,b,c)
  %1054 = fadd fast float %1031, %1051
  %1055 = fadd fast float %1034, %1053
  %1056 = icmp ugt i32 %1005, 1
  %1057 = icmp ugt i32 %1003, 33554431
  %1058 = or i1 %1057, %1056
  br i1 %1058, label %1059, label %1084

; <label>:1059                                    ; preds = %986
  %1060 = add i32 %29, 244
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = lshr i32 %1062, 16
  %1064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1063)  ; LegacyF16ToF32(value)
  %1065 = fmul fast float %1027, %1064
  %1066 = call float @dx.op.unary.f32(i32 22, float %1065)  ; Frc(value)
  %1067 = mul nuw nsw i32 %1005, %1006
  %1068 = uitofp i32 %1067 to float
  %1069 = fmul fast float %1066, %1068
  %1070 = call float @dx.op.unary.f32(i32 27, float %1069)  ; Round_ni(value)
  %1071 = fptoui float %1070 to i32
  %1072 = urem i32 %1071, %1005
  %1073 = udiv i32 %1071, %1006
  %1074 = call float @dx.op.unary.f32(i32 22, float %1054)  ; Frc(value)
  %1075 = call float @dx.op.unary.f32(i32 22, float %1055)  ; Frc(value)
  %1076 = uitofp i32 %1072 to float
  %1077 = uitofp i32 %1073 to float
  %1078 = fadd fast float %1074, %1076
  %1079 = fadd fast float %1075, %1077
  %1080 = uitofp i32 %1005 to float
  %1081 = uitofp i32 %1006 to float
  %1082 = fdiv fast float %1078, %1080
  %1083 = fdiv fast float %1079, %1081
  br label %1084

; <label>:1084                                    ; preds = %1059, %986
  %1085 = phi float [ %1082, %1059 ], [ %1054, %986 ]
  %1086 = phi float [ %1083, %1059 ], [ %1055, %986 ]
  %1087 = and i32 %980, 256
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %1135, label %1089

; <label>:1089                                    ; preds = %1084
  %1090 = add i32 %29, 524
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = add i32 %1092, 0
  %1094 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1093, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1095 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1094, %dx.types.Handle %74, float %1085, float %1086, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1096 = extractvalue %dx.types.ResRet.f32 %1095, 0
  %1097 = add i32 %29, 116
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = shl i32 %1099, 4
  %1101 = and i32 %1100, 32752
  %1102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1101)  ; LegacyF16ToF32(value)
  %1103 = lshr i32 %1099, 7
  %1104 = and i32 %1103, 32752
  %1105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1104)  ; LegacyF16ToF32(value)
  %1106 = fsub fast float 1.000000e+00, %435
  %1107 = call float @dx.op.binary.f32(i32 35, float %1106, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1108 = bitcast float %435 to i32
  %1109 = sitofp i32 %1108 to float
  %1110 = fadd fast float %1109, 0xC1CFBF8940000000
  %1111 = fmul fast float %1105, %1110
  %1112 = fadd fast float %1111, 0x41CFBF8940000000
  %1113 = fptosi float %1112 to i32
  %1114 = bitcast i32 %1113 to float
  %1115 = bitcast float %1107 to i32
  %1116 = sitofp i32 %1115 to float
  %1117 = fadd fast float %1116, 0xC1CFBF8940000000
  %1118 = fmul fast float %1117, %1105
  %1119 = fadd fast float %1118, 0x41CFBF8940000000
  %1120 = fptosi float %1119 to i32
  %1121 = bitcast i32 %1120 to float
  %1122 = fmul fast float %1114, %1102
  %1123 = fmul fast float %1121, %1102
  %1124 = fsub fast float %1107, %1122
  %1125 = fadd fast float %1123, %1107
  %1126 = call float @dx.op.unary.f32(i32 7, float %1124)  ; Saturate(value)
  %1127 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  %1128 = fsub fast float %1096, %1126
  %1129 = fsub fast float %1127, %1126
  %1130 = bitcast float %1129 to i32
  %1131 = sub nsw i32 2129859010, %1130
  %1132 = bitcast i32 %1131 to float
  %1133 = fmul fast float %1132, %1128
  %1134 = call float @dx.op.unary.f32(i32 7, float %1133)  ; Saturate(value)
  br label %1135

; <label>:1135                                    ; preds = %1089, %1084
  %1136 = phi float [ %1134, %1089 ], [ %435, %1084 ]
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = and i32 %1138, 128
  %1140 = icmp eq i32 %1139, 0
  br i1 %1140, label %1157, label %1141

; <label>:1141                                    ; preds = %1135
  %1142 = add i32 %29, 508
  %1143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = add i32 %1144, 0
  %1146 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1145, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1147 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1146, %dx.types.Handle %74, float %1085, float %1086, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1148 = extractvalue %dx.types.ResRet.f32 %1147, 0
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = and i32 %1150, 524288
  %1152 = icmp ne i32 %1151, 0
  %1153 = fcmp fast ogt float %1148, 0x3FE0101020000000
  %1154 = select i1 %1153, float 1.000000e+00, float 0.000000e+00
  %1155 = select i1 %1152, float %1154, float %1148
  %1156 = fmul fast float %1155, %1136
  br label %1157

; <label>:1157                                    ; preds = %1141, %1135
  %1158 = phi float [ %1156, %1141 ], [ %1136, %1135 ]
  %1159 = fcmp fast ult float %1158, 0x3F70101020000000
  br i1 %1159, label %1789, label %1160

; <label>:1160                                    ; preds = %1157
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = and i32 %1162, 16
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1363, label %1165

; <label>:1165                                    ; preds = %1160
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1001, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = add i32 %29, 460
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = add i32 %1170, 0
  %1172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1171, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1173 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1172, %dx.types.Handle %73, float %1085, float %1086, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1174 = extractvalue %dx.types.ResRet.f32 %1173, 0
  %1175 = extractvalue %dx.types.ResRet.f32 %1173, 1
  %1176 = extractvalue %dx.types.ResRet.f32 %1173, 2
  %1177 = extractvalue %dx.types.ResRet.f32 %1173, 3
  %1178 = and i32 %1167, 255
  %1179 = uitofp i32 %1178 to float
  %1180 = lshr i32 %1167, 8
  %1181 = and i32 %1180, 255
  %1182 = uitofp i32 %1181 to float
  %1183 = fmul fast float %1177, %1179
  %1184 = fadd fast float %1183, %1182
  %1185 = fmul fast float %1184, 0x3F70101000000000
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = and i32 %1187, 512
  %1189 = icmp eq i32 %1188, 0
  br i1 %1189, label %1198, label %1190

; <label>:1190                                    ; preds = %1165
  %1191 = add i32 %29, 540
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = add i32 %1193, 0
  %1195 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1194, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1196 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1195, %dx.types.Handle %74, float %1085, float %1086, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1197 = extractvalue %dx.types.ResRet.f32 %1196, 0
  br label %1198

; <label>:1198                                    ; preds = %1190, %1165
  %1199 = phi float [ %1197, %1190 ], [ 1.000000e+00, %1165 ]
  %1200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.i32 %1200, 0
  %1202 = and i32 %1201, 33554432
  %1203 = icmp eq i32 %1202, 0
  br i1 %1203, label %1310, label %1204

; <label>:1204                                    ; preds = %1198
  %1205 = add i32 %29, 240
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = and i32 %1207, 65535
  %1209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1208)  ; LegacyF16ToF32(value)
  %1210 = lshr i32 %1207, 16
  %1211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1210)  ; LegacyF16ToF32(value)
  %1212 = add i32 %29, 244
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = and i32 %1214, 65535
  %1216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1215)  ; LegacyF16ToF32(value)
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = lshr i32 %1218, 24
  %1220 = uitofp i32 %1219 to float
  %1221 = fmul fast float %1220, 0x3F70101020000000
  %1222 = and i32 %1218, 255
  %1223 = uitofp i32 %1222 to float
  %1224 = fmul fast float %1223, 0x3F70101020000000
  %1225 = lshr i32 %1218, 8
  %1226 = and i32 %1225, 255
  %1227 = uitofp i32 %1226 to float
  %1228 = fmul fast float %1227, 0x3F70101020000000
  %1229 = lshr i32 %1218, 16
  %1230 = and i32 %1229, 255
  %1231 = uitofp i32 %1230 to float
  %1232 = fmul fast float %1231, 0x3F70101020000000
  %1233 = add i32 %29, 236
  %1234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.i32 %1234, 0
  %1236 = lshr i32 %1235, 24
  %1237 = uitofp i32 %1236 to float
  %1238 = fmul fast float %1237, 0x3F70101020000000
  %1239 = and i32 %1235, 255
  %1240 = uitofp i32 %1239 to float
  %1241 = fmul fast float %1240, 0x3F70101020000000
  %1242 = lshr i32 %1235, 8
  %1243 = and i32 %1242, 255
  %1244 = uitofp i32 %1243 to float
  %1245 = fmul fast float %1244, 0x3F70101020000000
  %1246 = lshr i32 %1235, 16
  %1247 = and i32 %1246, 255
  %1248 = uitofp i32 %1247 to float
  %1249 = fmul fast float %1248, 0x3F70101020000000
  %1250 = bitcast float %1174 to i32
  %1251 = ashr i32 %1250, 1
  %1252 = sub nsw i32 1597463174, %1251
  %1253 = bitcast i32 %1252 to float
  %1254 = fmul fast float %1174, 5.000000e-01
  %1255 = fmul fast float %1253, %1253
  %1256 = fmul fast float %1255, %1254
  %1257 = fsub fast float 1.500000e+00, %1256
  %1258 = fmul fast float %1253, %1174
  %1259 = fmul fast float %1258, %1257
  %1260 = bitcast float %1175 to i32
  %1261 = ashr i32 %1260, 1
  %1262 = sub nsw i32 1597463174, %1261
  %1263 = bitcast i32 %1262 to float
  %1264 = fmul fast float %1175, 5.000000e-01
  %1265 = fmul fast float %1263, %1263
  %1266 = fmul fast float %1265, %1264
  %1267 = fsub fast float 1.500000e+00, %1266
  %1268 = fmul fast float %1263, %1175
  %1269 = fmul fast float %1268, %1267
  %1270 = bitcast float %1176 to i32
  %1271 = ashr i32 %1270, 1
  %1272 = sub nsw i32 1597463174, %1271
  %1273 = bitcast i32 %1272 to float
  %1274 = fmul fast float %1176, 5.000000e-01
  %1275 = fmul fast float %1273, %1273
  %1276 = fmul fast float %1275, %1274
  %1277 = fsub fast float 1.500000e+00, %1276
  %1278 = fmul fast float %1273, %1176
  %1279 = fmul fast float %1278, %1277
  %1280 = fsub fast float %1259, %1241
  %1281 = fsub fast float %1269, %1245
  %1282 = fsub fast float %1279, %1249
  %1283 = fmul fast float %1280, %1209
  %1284 = fmul fast float %1281, %1211
  %1285 = fmul fast float %1282, %1216
  %1286 = fadd fast float %1283, %1224
  %1287 = fadd fast float %1284, %1228
  %1288 = fadd fast float %1285, %1232
  %1289 = call float @dx.op.unary.f32(i32 7, float %1286)  ; Saturate(value)
  %1290 = call float @dx.op.unary.f32(i32 7, float %1287)  ; Saturate(value)
  %1291 = call float @dx.op.unary.f32(i32 7, float %1288)  ; Saturate(value)
  %1292 = fmul fast float %1289, %1289
  %1293 = fmul fast float %1290, %1290
  %1294 = fmul fast float %1291, %1291
  %1295 = fsub fast float %1292, %1174
  %1296 = fsub fast float %1293, %1175
  %1297 = fsub fast float %1294, %1176
  %1298 = fmul fast float %1295, %1199
  %1299 = fmul fast float %1296, %1199
  %1300 = fmul fast float %1297, %1199
  %1301 = fadd fast float %1298, %1174
  %1302 = fadd fast float %1299, %1175
  %1303 = fadd fast float %1300, %1176
  %1304 = fadd fast float %1221, %1185
  %1305 = fsub fast float %1304, %1238
  %1306 = call float @dx.op.unary.f32(i32 7, float %1305)  ; Saturate(value)
  %1307 = fsub fast float %1306, %1185
  %1308 = fmul fast float %1307, %1199
  %1309 = fadd fast float %1308, %1185
  br label %1363

; <label>:1310                                    ; preds = %1198
  %1311 = and i32 %1201, 134217728
  %1312 = icmp eq i32 %1311, 0
  br i1 %1312, label %1347, label %1313

; <label>:1313                                    ; preds = %1310
  %1314 = call float @dx.op.unary.f32(i32 24, float %270)  ; Sqrt(value)
  %1315 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %1316 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %1317 = fadd fast float %1314, -5.000000e-01
  %1318 = fadd fast float %1315, -5.000000e-01
  %1319 = fadd fast float %1316, -5.000000e-01
  %1320 = fmul fast float %1317, %1199
  %1321 = fmul fast float %1318, %1199
  %1322 = fmul fast float %1319, %1199
  %1323 = fadd fast float %1320, 5.000000e-01
  %1324 = fadd fast float %1321, 5.000000e-01
  %1325 = fadd fast float %1322, 5.000000e-01
  %1326 = call float @dx.op.unary.f32(i32 24, float %1174)  ; Sqrt(value)
  %1327 = call float @dx.op.unary.f32(i32 24, float %1175)  ; Sqrt(value)
  %1328 = call float @dx.op.unary.f32(i32 24, float %1176)  ; Sqrt(value)
  %1329 = fmul fast float %1323, 2.000000e+00
  %1330 = fsub fast float 1.000000e+00, %1329
  %1331 = fmul fast float %1330, %1326
  %1332 = fadd fast float %1331, %1329
  %1333 = fmul fast float %1332, %1326
  %1334 = fmul fast float %1324, 2.000000e+00
  %1335 = fsub fast float 1.000000e+00, %1334
  %1336 = fmul fast float %1335, %1327
  %1337 = fadd fast float %1336, %1334
  %1338 = fmul fast float %1337, %1327
  %1339 = fmul fast float %1325, 2.000000e+00
  %1340 = fsub fast float 1.000000e+00, %1339
  %1341 = fmul fast float %1340, %1328
  %1342 = fadd fast float %1341, %1339
  %1343 = fmul fast float %1342, %1328
  %1344 = fmul fast float %1333, %1333
  %1345 = fmul fast float %1338, %1338
  %1346 = fmul fast float %1343, %1343
  br label %1363

; <label>:1347                                    ; preds = %1310
  %1348 = fmul fast float %270, %270
  %1349 = fmul fast float %274, %274
  %1350 = fmul fast float %278, %278
  %1351 = fadd fast float %1348, -1.000000e+00
  %1352 = fadd fast float %1349, -1.000000e+00
  %1353 = fadd fast float %1350, -1.000000e+00
  %1354 = fmul fast float %1199, %1351
  %1355 = fmul fast float %1199, %1352
  %1356 = fmul fast float %1199, %1353
  %1357 = fadd fast float %1354, 1.000000e+00
  %1358 = fadd fast float %1355, 1.000000e+00
  %1359 = fadd fast float %1356, 1.000000e+00
  %1360 = fmul fast float %1357, %1174
  %1361 = fmul fast float %1358, %1175
  %1362 = fmul fast float %1359, %1176
  br label %1363

; <label>:1363                                    ; preds = %1347, %1313, %1204, %1160
  %1364 = phi float [ %1309, %1204 ], [ %1185, %1313 ], [ %1185, %1347 ], [ 0x3FA23C0BE0000000, %1160 ]
  %1365 = phi float [ %1301, %1204 ], [ %1344, %1313 ], [ %1360, %1347 ], [ 1.000000e+00, %1160 ]
  %1366 = phi float [ %1302, %1204 ], [ %1345, %1313 ], [ %1361, %1347 ], [ 1.000000e+00, %1160 ]
  %1367 = phi float [ %1303, %1204 ], [ %1346, %1313 ], [ %1362, %1347 ], [ 1.000000e+00, %1160 ]
  %1368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.i32 %1368, 1
  %1370 = and i32 %1369, 1
  %1371 = icmp ne i32 %1370, 0
  %1372 = add i32 %29, 356
  %1373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1374 = extractvalue %dx.types.ResRet.i32 %1373, 0
  %1375 = and i32 %1374, 32
  %1376 = icmp ne i32 %1375, 0
  %1377 = and i1 %1371, %1376
  %1378 = select i1 %1377, float 1.000000e+00, float %1365
  %1379 = select i1 %1377, float 0x3FD3333340000000, float %1366
  %1380 = select i1 %1377, float 0x3FD3333340000000, float %1367
  %1381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %1382 = extractvalue %dx.types.ResRet.i32 %1381, 0
  %1383 = and i32 %1382, 32
  %1384 = icmp eq i32 %1383, 0
  br i1 %1384, label %1457, label %1385

; <label>:1385                                    ; preds = %1363
  %1386 = add i32 %29, 108
  %1387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1386, i32 undef)  ; BufferLoad(srv,index,wot)
  %1388 = extractvalue %dx.types.ResRet.i32 %1387, 0
  %1389 = add i32 %29, 476
  %1390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1389, i32 undef)  ; BufferLoad(srv,index,wot)
  %1391 = extractvalue %dx.types.ResRet.i32 %1390, 0
  %1392 = add i32 %1391, 0
  %1393 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1392, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1394 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1393, %dx.types.Handle %73, float %1085, float %1086, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1395 = extractvalue %dx.types.ResRet.f32 %1394, 0
  %1396 = extractvalue %dx.types.ResRet.f32 %1394, 1
  %1397 = extractvalue %dx.types.ResRet.f32 %1394, 2
  %1398 = extractvalue %dx.types.ResRet.f32 %1394, 3
  %1399 = and i32 %1388, 255
  %1400 = uitofp i32 %1399 to float
  %1401 = lshr i32 %1388, 8
  %1402 = and i32 %1401, 255
  %1403 = uitofp i32 %1402 to float
  %1404 = lshr i32 %1388, 16
  %1405 = and i32 %1404, 255
  %1406 = uitofp i32 %1405 to float
  %1407 = fmul fast float %1406, 0x3F70101000000000
  %1408 = fmul fast float %1395, %1400
  %1409 = fadd fast float %1408, %1403
  %1410 = fmul fast float %1409, 0x3F70101000000000
  %1411 = fadd fast float %1396, -5.000000e-01
  %1412 = fadd fast float %1398, -5.000000e-01
  %1413 = fmul fast float %1411, %1407
  %1414 = fmul fast float %1412, %1407
  %1415 = fadd fast float %1413, 5.000000e-01
  %1416 = fadd fast float %1414, 5.000000e-01
  %1417 = fmul fast float %1415, 2.000000e+00
  %1418 = fadd fast float %1417, -1.000000e+00
  %1419 = fmul fast float %1416, 2.000000e+00
  %1420 = fadd fast float %1419, -1.000000e+00
  %1421 = fadd fast float %1418, %1420
  %1422 = fmul fast float %1421, 5.000000e-01
  %1423 = fsub fast float %1418, %1420
  %1424 = fmul fast float %1423, 5.000000e-01
  %1425 = call float @dx.op.unary.f32(i32 6, float %1422)  ; FAbs(value)
  %1426 = fsub fast float 1.000000e+00, %1425
  %1427 = call float @dx.op.unary.f32(i32 6, float %1424)  ; FAbs(value)
  %1428 = fsub fast float %1426, %1427
  %1429 = call float @dx.op.dot3.f32(i32 55, float %1422, float %1424, float %1428, float %1422, float %1424, float %1428)  ; Dot3(ax,ay,az,bx,by,bz)
  %1430 = call float @dx.op.unary.f32(i32 25, float %1429)  ; Rsqrt(value)
  %1431 = fmul fast float %1422, %1430
  %1432 = fmul fast float %1424, %1430
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = and i32 %1434, 67108864
  %1436 = icmp eq i32 %1435, 0
  br i1 %1436, label %1453, label %1437

; <label>:1437                                    ; preds = %1385
  %1438 = add i32 %29, 296
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1438, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = and i32 %1440, 65535
  %1442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1441)  ; LegacyF16ToF32(value)
  %1443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %995, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.i32 %1443, 0
  %1445 = and i32 %1444, 65535
  %1446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1445)  ; LegacyF16ToF32(value)
  %1447 = lshr i32 %1440, 16
  %1448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1447)  ; LegacyF16ToF32(value)
  %1449 = fsub fast float %1410, %1448
  %1450 = fmul fast float %1449, %1442
  %1451 = fadd fast float %1450, %1446
  %1452 = call float @dx.op.unary.f32(i32 7, float %1451)  ; Saturate(value)
  br label %1453

; <label>:1453                                    ; preds = %1437, %1385
  %1454 = phi float [ %1452, %1437 ], [ %1410, %1385 ]
  %1455 = call float @dx.op.dot2.f32(i32 54, float %1431, float %1432, float %989, float %990)  ; Dot2(ax,ay,bx,by)
  %1456 = call float @dx.op.dot2.f32(i32 54, float %1431, float %1432, float %991, float %992)  ; Dot2(ax,ay,bx,by)
  br label %1457

; <label>:1457                                    ; preds = %1453, %1363
  %1458 = phi float [ %1454, %1453 ], [ 0x3FD6666660000000, %1363 ]
  %1459 = phi float [ %1455, %1453 ], [ 0.000000e+00, %1363 ]
  %1460 = phi float [ %1456, %1453 ], [ 0.000000e+00, %1363 ]
  %1461 = phi float [ %1397, %1453 ], [ 1.000000e+00, %1363 ]
  %1462 = add i32 %29, 176
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = lshr i32 %1464, 22
  %1466 = shl nuw nsw i32 %1465, 5
  %1467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1466)  ; LegacyF16ToF32(value)
  %1468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.i32 %1468, 0
  %1470 = and i32 %1469, 64
  %1471 = icmp eq i32 %1470, 0
  br i1 %1471, label %1505, label %1472

; <label>:1472                                    ; preds = %1457
  %1473 = add i32 %29, 492
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1473, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = add i32 %1475, 0
  %1477 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1476, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = and i32 %1479, 131072
  %1481 = icmp eq i32 %1480, 0
  %1482 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1477, %dx.types.Handle %73, float %1085, float %1086, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1483 = extractvalue %dx.types.ResRet.f32 %1482, 0
  %1484 = extractvalue %dx.types.ResRet.f32 %1482, 1
  %1485 = extractvalue %dx.types.ResRet.f32 %1482, 2
  %1486 = fmul fast float %1483, %258
  %1487 = fmul fast float %1484, %261
  %1488 = fmul fast float %1485, %264
  br i1 %1481, label %1495, label %1489

; <label>:1489                                    ; preds = %1472
  %1490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.f32 %1490, 0
  %1492 = fmul fast float %1491, %1486
  %1493 = fmul fast float %1491, %1487
  %1494 = fmul fast float %1491, %1488
  br label %1495

; <label>:1495                                    ; preds = %1489, %1472
  %1496 = phi float [ %1492, %1489 ], [ %1486, %1472 ]
  %1497 = phi float [ %1493, %1489 ], [ %1487, %1472 ]
  %1498 = phi float [ %1494, %1489 ], [ %1488, %1472 ]
  %1499 = fmul fast float %1496, %1467
  %1500 = select i1 %199, float %1499, float %1496
  %1501 = call float @dx.op.dot3.f32(i32 55, float %1500, float %1497, float %1498, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1502 = select i1 %199, float 0.000000e+00, float %1496
  %1503 = select i1 %199, float %1501, float %1497
  %1504 = select i1 %199, float 0.000000e+00, float %1498
  br label %1505

; <label>:1505                                    ; preds = %1495, %1457
  %1506 = phi float [ %1502, %1495 ], [ 0.000000e+00, %1457 ]
  %1507 = phi float [ %1503, %1495 ], [ 0.000000e+00, %1457 ]
  %1508 = phi float [ %1504, %1495 ], [ 0.000000e+00, %1457 ]
  %1509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %1510 = extractvalue %dx.types.ResRet.i32 %1509, 0
  %1511 = and i32 %1510, 10240
  %1512 = icmp eq i32 %1511, 0
  br i1 %1512, label %1557, label %1513

; <label>:1513                                    ; preds = %1505
  %1514 = add i32 %29, 556
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1514, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = add i32 %1516, 0
  %1518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1517, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1519 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1518, %dx.types.Handle %74, float %1085, float %1086, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1520 = extractvalue %dx.types.ResRet.f32 %1519, 1
  %1521 = extractvalue %dx.types.ResRet.f32 %1519, 3
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = and i32 %1523, 1048576
  %1525 = icmp ne i32 %1524, 0
  %1526 = and i32 %1523, 8192
  %1527 = icmp eq i32 %1526, 0
  br i1 %1527, label %1543, label %1528

; <label>:1528                                    ; preds = %1513
  %1529 = extractvalue %dx.types.ResRet.f32 %1519, 2
  %1530 = select i1 %1525, float %1529, float %1520
  %1531 = extractvalue %dx.types.ResRet.f32 %1519, 0
  %1532 = select i1 %1525, float %1531, float %1520
  %1533 = add i32 %29, 112
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1533, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = lshr i32 %1535, 16
  %1537 = and i32 %1536, 255
  %1538 = uitofp i32 %1537 to float
  %1539 = fmul fast float %1538, 0x3F80101020000000
  %1540 = fmul fast float %1539, %1532
  %1541 = fmul fast float %1539, %1520
  %1542 = fmul fast float %1539, %1530
  br label %1543

; <label>:1543                                    ; preds = %1528, %1513
  %1544 = phi float [ %1540, %1528 ], [ 0.000000e+00, %1513 ]
  %1545 = phi float [ %1541, %1528 ], [ 0.000000e+00, %1513 ]
  %1546 = phi float [ %1542, %1528 ], [ 0.000000e+00, %1513 ]
  %1547 = and i32 %1523, 2048
  %1548 = icmp eq i32 %1547, 0
  br i1 %1548, label %1557, label %1549

; <label>:1549                                    ; preds = %1543
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = shl i32 %1551, 4
  %1553 = and i32 %1552, 32752
  %1554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1553)  ; LegacyF16ToF32(value)
  %1555 = fmul fast float %1554, %1521
  %1556 = call float @dx.op.binary.f32(i32 35, float %1555, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1557

; <label>:1557                                    ; preds = %1549, %1543, %1505
  %1558 = phi float [ %1544, %1549 ], [ %1544, %1543 ], [ 0.000000e+00, %1505 ]
  %1559 = phi float [ %1545, %1549 ], [ %1545, %1543 ], [ 0.000000e+00, %1505 ]
  %1560 = phi float [ %1546, %1549 ], [ %1546, %1543 ], [ 0.000000e+00, %1505 ]
  %1561 = phi float [ %1556, %1549 ], [ 0x3F70101020000000, %1543 ], [ 0x3F70101020000000, %1505 ]
  %1562 = add i32 %29, 112
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1562, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = and i32 %1564, 255
  %1566 = uitofp i32 %1565 to float
  %1567 = lshr i32 %1564, 8
  %1568 = and i32 %1567, 255
  %1569 = uitofp i32 %1568 to float
  %1570 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1571 = fmul fast float %1569, %1570
  %1572 = fadd fast float %1571, %1566
  %1573 = fmul fast float %1572, 0x3F70101020000000
  %1574 = call float @dx.op.unary.f32(i32 7, float %1573)  ; Saturate(value)
  br i1 %977, label %1575, label %1583

; <label>:1575                                    ; preds = %1557
  %1576 = fsub fast float 1.000000e+00, %1158
  %1577 = fmul fast float %1576, %967
  %1578 = fmul fast float %1576, %968
  %1579 = fmul fast float %1576, %969
  %1580 = fmul fast float %1576, %961
  %1581 = fmul fast float %1576, %962
  %1582 = fmul fast float %1576, %963
  br label %1583

; <label>:1583                                    ; preds = %1575, %1557
  %1584 = phi float [ %1580, %1575 ], [ %961, %1557 ]
  %1585 = phi float [ %1581, %1575 ], [ %962, %1557 ]
  %1586 = phi float [ %1582, %1575 ], [ %963, %1557 ]
  %1587 = phi float [ %1577, %1575 ], [ %967, %1557 ]
  %1588 = phi float [ %1578, %1575 ], [ %968, %1557 ]
  %1589 = phi float [ %1579, %1575 ], [ %969, %1557 ]
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = and i32 %1591, 3
  %1593 = icmp eq i32 %1592, 3
  br i1 %1593, label %1672, label %1594

; <label>:1594                                    ; preds = %1583
  %1595 = and i32 %1591, 16
  %1596 = icmp ne i32 %1595, 0
  %1597 = select i1 %1596, float %1158, float 0.000000e+00
  %1598 = icmp eq i32 %1592, 0
  br i1 %1598, label %1599, label %1627

; <label>:1599                                    ; preds = %1594
  %1600 = and i32 %1591, 64
  %1601 = icmp ne i32 %1600, 0
  %1602 = select i1 %1601, float %1158, float 0.000000e+00
  %1603 = fsub fast float %1378, %1587
  %1604 = fsub fast float %1379, %1588
  %1605 = fsub fast float %1380, %1589
  %1606 = fmul fast float %1597, %1603
  %1607 = fmul fast float %1597, %1604
  %1608 = fmul fast float %1597, %1605
  %1609 = fadd fast float %1606, %1587
  %1610 = fadd fast float %1607, %1588
  %1611 = fadd fast float %1608, %1589
  %1612 = fsub fast float %1364, %970
  %1613 = fmul fast float %1597, %1612
  %1614 = fadd fast float %1613, %970
  %1615 = fsub fast float %1506, %1584
  %1616 = fsub fast float %1507, %1585
  %1617 = fsub fast float %1508, %1586
  %1618 = fmul fast float %1602, %1615
  %1619 = fmul fast float %1602, %1616
  %1620 = fmul fast float %1602, %1617
  %1621 = fadd fast float %1618, %1584
  %1622 = fadd fast float %1619, %1585
  %1623 = fadd fast float %1620, %1586
  %1624 = fsub fast float %1574, %975
  %1625 = fmul fast float %1597, %1624
  %1626 = fadd fast float %1625, %975
  br label %1672

; <label>:1627                                    ; preds = %1594
  %1628 = icmp eq i32 %1592, 1
  br i1 %1628, label %1629, label %1642

; <label>:1629                                    ; preds = %1627
  %1630 = fadd fast float %1378, -1.000000e+00
  %1631 = fadd fast float %1379, -1.000000e+00
  %1632 = fadd fast float %1380, -1.000000e+00
  %1633 = fmul fast float %1597, %1630
  %1634 = fmul fast float %1597, %1631
  %1635 = fmul fast float %1597, %1632
  %1636 = fadd fast float %1633, 1.000000e+00
  %1637 = fadd fast float %1634, 1.000000e+00
  %1638 = fadd fast float %1635, 1.000000e+00
  %1639 = fmul fast float %1636, %1587
  %1640 = fmul fast float %1637, %1588
  %1641 = fmul fast float %1638, %1589
  br label %1672

; <label>:1642                                    ; preds = %1627
  %1643 = icmp eq i32 %1592, 2
  br i1 %1643, label %1644, label %1672

; <label>:1644                                    ; preds = %1642
  %1645 = call float @dx.op.unary.f32(i32 24, float %1378)  ; Sqrt(value)
  %1646 = call float @dx.op.unary.f32(i32 24, float %1379)  ; Sqrt(value)
  %1647 = call float @dx.op.unary.f32(i32 24, float %1380)  ; Sqrt(value)
  %1648 = fadd fast float %1645, -5.000000e-01
  %1649 = fadd fast float %1646, -5.000000e-01
  %1650 = fadd fast float %1647, -5.000000e-01
  %1651 = fmul fast float %1648, %1597
  %1652 = fmul fast float %1649, %1597
  %1653 = fmul fast float %1650, %1597
  %1654 = fadd fast float %1651, 5.000000e-01
  %1655 = fadd fast float %1652, 5.000000e-01
  %1656 = fadd fast float %1653, 5.000000e-01
  %1657 = fmul fast float %1654, 2.000000e+00
  %1658 = fsub fast float 1.000000e+00, %1657
  %1659 = fmul fast float %1658, %1587
  %1660 = fadd fast float %1659, %1657
  %1661 = fmul fast float %1660, %1587
  %1662 = fmul fast float %1655, 2.000000e+00
  %1663 = fsub fast float 1.000000e+00, %1662
  %1664 = fmul fast float %1663, %1588
  %1665 = fadd fast float %1664, %1662
  %1666 = fmul fast float %1665, %1588
  %1667 = fmul fast float %1656, 2.000000e+00
  %1668 = fsub fast float 1.000000e+00, %1667
  %1669 = fmul fast float %1668, %1589
  %1670 = fadd fast float %1669, %1667
  %1671 = fmul fast float %1670, %1589
  br label %1672

; <label>:1672                                    ; preds = %1644, %1642, %1629, %1599, %1583
  %1673 = phi float [ %1584, %1583 ], [ %1584, %1644 ], [ %1584, %1642 ], [ %1584, %1629 ], [ %1621, %1599 ]
  %1674 = phi float [ %1585, %1583 ], [ %1585, %1644 ], [ %1585, %1642 ], [ %1585, %1629 ], [ %1622, %1599 ]
  %1675 = phi float [ %1586, %1583 ], [ %1586, %1644 ], [ %1586, %1642 ], [ %1586, %1629 ], [ %1623, %1599 ]
  %1676 = phi float [ %1587, %1583 ], [ %1661, %1644 ], [ %1587, %1642 ], [ %1639, %1629 ], [ %1609, %1599 ]
  %1677 = phi float [ %1588, %1583 ], [ %1666, %1644 ], [ %1588, %1642 ], [ %1640, %1629 ], [ %1610, %1599 ]
  %1678 = phi float [ %1589, %1583 ], [ %1671, %1644 ], [ %1589, %1642 ], [ %1641, %1629 ], [ %1611, %1599 ]
  %1679 = phi float [ %970, %1583 ], [ %970, %1644 ], [ %970, %1642 ], [ %970, %1629 ], [ %1614, %1599 ]
  %1680 = phi float [ %975, %1583 ], [ %975, %1644 ], [ %975, %1642 ], [ %975, %1629 ], [ %1626, %1599 ]
  %1681 = and i32 %1591, 12
  %1682 = icmp eq i32 %1681, 12
  br i1 %1682, label %1789, label %1683

; <label>:1683                                    ; preds = %1672
  %1684 = and i32 %1591, 2097184
  %1685 = icmp eq i32 %1684, 2097184
  %1686 = select i1 %1685, float %1158, float 0.000000e+00
  %1687 = and i32 %1591, 4194336
  %1688 = icmp eq i32 %1687, 4194336
  %1689 = select i1 %1688, float %1158, float 0.000000e+00
  %1690 = and i32 %1591, 8388640
  %1691 = icmp eq i32 %1690, 8388640
  %1692 = select i1 %1691, float %1158, float 0.000000e+00
  %1693 = and i32 %1591, 2048
  %1694 = icmp ne i32 %1693, 0
  %1695 = select i1 %1694, float %1158, float 0.000000e+00
  %1696 = and i32 %1591, 8192
  %1697 = icmp ne i32 %1696, 0
  %1698 = select i1 %1697, float %1158, float 0.000000e+00
  %1699 = icmp eq i32 %1681, 0
  br i1 %1699, label %1700, label %1725

; <label>:1700                                    ; preds = %1683
  %1701 = fsub fast float %1459, %959
  %1702 = fsub fast float %1460, %960
  %1703 = fmul fast float %1686, %1701
  %1704 = fmul fast float %1686, %1702
  %1705 = fadd fast float %1703, %959
  %1706 = fadd fast float %1704, %960
  %1707 = fsub fast float %1461, %973
  %1708 = fmul fast float %1689, %1707
  %1709 = fadd fast float %1708, %973
  %1710 = fsub fast float %1458, %972
  %1711 = fmul fast float %1692, %1710
  %1712 = fadd fast float %1711, %972
  %1713 = fsub fast float %1561, %974
  %1714 = fmul fast float %1695, %1713
  %1715 = fadd fast float %1714, %974
  %1716 = fsub fast float %1558, %964
  %1717 = fsub fast float %1559, %965
  %1718 = fsub fast float %1560, %966
  %1719 = fmul fast float %1698, %1716
  %1720 = fmul fast float %1698, %1717
  %1721 = fmul fast float %1698, %1718
  %1722 = fadd fast float %1719, %964
  %1723 = fadd fast float %1720, %965
  %1724 = fadd fast float %1721, %966
  br label %1789

; <label>:1725                                    ; preds = %1683
  %1726 = icmp eq i32 %1681, 4
  br i1 %1726, label %1727, label %1767

; <label>:1727                                    ; preds = %1725
  %1728 = fmul fast float %1686, %1459
  %1729 = fmul fast float %1686, %1460
  %1730 = fadd fast float %1728, %959
  %1731 = fadd fast float %1729, %960
  %1732 = call float @dx.op.binary.f32(i32 36, float %973, float %1461)  ; FMin(a,b)
  %1733 = fsub fast float %1732, %973
  %1734 = fmul fast float %1733, %1689
  %1735 = fadd fast float %1734, %973
  %1736 = fadd fast float %1458, %972
  %1737 = fmul fast float %1736, 0x3FF337FAE0000000
  %1738 = fmul fast float %972, %972
  %1739 = fmul fast float %1458, %1458
  %1740 = fadd fast float %1739, %1738
  %1741 = fmul fast float %1740, 0x3FE5152B00000000
  %1742 = fmul fast float %972, 0xBFCC1F85E0000000
  %1743 = fmul fast float %1742, %1458
  %1744 = fadd fast float %1743, 0xBFE1363700000000
  %1745 = fadd fast float %1744, %1737
  %1746 = fsub fast float %1745, %1741
  %1747 = fmul fast float %1736, 0x3FBA6F0D00000000
  %1748 = fmul fast float %1740, 0x3FD0432880000000
  %1749 = fmul fast float %972, 0xBFEF110800000000
  %1750 = fmul fast float %1749, %1458
  %1751 = fadd fast float %1750, 1.000000e+00
  %1752 = fsub fast float %1751, %1747
  %1753 = fadd fast float %1752, %1748
  %1754 = fdiv fast float %1746, %1753
  %1755 = call float @dx.op.unary.f32(i32 7, float %1754)  ; Saturate(value)
  %1756 = fsub fast float %1755, %972
  %1757 = fmul fast float %1756, %1692
  %1758 = fadd fast float %1757, %972
  %1759 = fmul fast float %1695, %1561
  %1760 = fadd fast float %1759, %974
  %1761 = fmul fast float %1698, %1558
  %1762 = fmul fast float %1698, %1559
  %1763 = fmul fast float %1698, %1560
  %1764 = fadd fast float %1761, %964
  %1765 = fadd fast float %1762, %965
  %1766 = fadd fast float %1763, %966
  br label %1789

; <label>:1767                                    ; preds = %1725
  %1768 = icmp eq i32 %1681, 8
  br i1 %1768, label %1769, label %1789

; <label>:1769                                    ; preds = %1767
  %1770 = fmul fast float %1686, %1459
  %1771 = fmul fast float %1686, %1460
  %1772 = fadd fast float %1770, %959
  %1773 = fadd fast float %1771, %960
  %1774 = call float @dx.op.binary.f32(i32 36, float %973, float %1461)  ; FMin(a,b)
  %1775 = fsub fast float %1774, %973
  %1776 = fmul fast float %1775, %1689
  %1777 = fadd fast float %1776, %973
  %1778 = fsub fast float %1458, %972
  %1779 = fmul fast float %1692, %1778
  %1780 = fadd fast float %1779, %972
  %1781 = fmul fast float %1695, %1561
  %1782 = fadd fast float %1781, %974
  %1783 = fmul fast float %1698, %1558
  %1784 = fmul fast float %1698, %1559
  %1785 = fmul fast float %1698, %1560
  %1786 = fadd fast float %1783, %964
  %1787 = fadd fast float %1784, %965
  %1788 = fadd fast float %1785, %966
  br label %1789

; <label>:1789                                    ; preds = %1769, %1767, %1727, %1700, %1672, %1157, %976, %958
  %1790 = phi float [ %959, %1672 ], [ %959, %1157 ], [ %959, %958 ], [ %1772, %1769 ], [ %959, %1767 ], [ %1730, %1727 ], [ %1705, %1700 ], [ %959, %976 ]
  %1791 = phi float [ %960, %1672 ], [ %960, %1157 ], [ %960, %958 ], [ %1773, %1769 ], [ %960, %1767 ], [ %1731, %1727 ], [ %1706, %1700 ], [ %960, %976 ]
  %1792 = phi float [ %1673, %1672 ], [ %961, %1157 ], [ %961, %958 ], [ %1673, %1769 ], [ %1673, %1767 ], [ %1673, %1727 ], [ %1673, %1700 ], [ %961, %976 ]
  %1793 = phi float [ %1674, %1672 ], [ %962, %1157 ], [ %962, %958 ], [ %1674, %1769 ], [ %1674, %1767 ], [ %1674, %1727 ], [ %1674, %1700 ], [ %962, %976 ]
  %1794 = phi float [ %1675, %1672 ], [ %963, %1157 ], [ %963, %958 ], [ %1675, %1769 ], [ %1675, %1767 ], [ %1675, %1727 ], [ %1675, %1700 ], [ %963, %976 ]
  %1795 = phi float [ %964, %1672 ], [ %964, %1157 ], [ %964, %958 ], [ %1786, %1769 ], [ %964, %1767 ], [ %1764, %1727 ], [ %1722, %1700 ], [ %964, %976 ]
  %1796 = phi float [ %965, %1672 ], [ %965, %1157 ], [ %965, %958 ], [ %1787, %1769 ], [ %965, %1767 ], [ %1765, %1727 ], [ %1723, %1700 ], [ %965, %976 ]
  %1797 = phi float [ %966, %1672 ], [ %966, %1157 ], [ %966, %958 ], [ %1788, %1769 ], [ %966, %1767 ], [ %1766, %1727 ], [ %1724, %1700 ], [ %966, %976 ]
  %1798 = phi float [ %1676, %1672 ], [ %967, %1157 ], [ %967, %958 ], [ %1676, %1769 ], [ %1676, %1767 ], [ %1676, %1727 ], [ %1676, %1700 ], [ %967, %976 ]
  %1799 = phi float [ %1677, %1672 ], [ %968, %1157 ], [ %968, %958 ], [ %1677, %1769 ], [ %1677, %1767 ], [ %1677, %1727 ], [ %1677, %1700 ], [ %968, %976 ]
  %1800 = phi float [ %1678, %1672 ], [ %969, %1157 ], [ %969, %958 ], [ %1678, %1769 ], [ %1678, %1767 ], [ %1678, %1727 ], [ %1678, %1700 ], [ %969, %976 ]
  %1801 = phi float [ %1679, %1672 ], [ %970, %1157 ], [ %970, %958 ], [ %1679, %1769 ], [ %1679, %1767 ], [ %1679, %1727 ], [ %1679, %1700 ], [ %970, %976 ]
  %1802 = phi float [ %972, %1672 ], [ %972, %1157 ], [ %972, %958 ], [ %1780, %1769 ], [ %972, %1767 ], [ %1758, %1727 ], [ %1712, %1700 ], [ %972, %976 ]
  %1803 = phi float [ %973, %1672 ], [ %973, %1157 ], [ %973, %958 ], [ %1777, %1769 ], [ %973, %1767 ], [ %1735, %1727 ], [ %1709, %1700 ], [ %973, %976 ]
  %1804 = phi float [ %974, %1672 ], [ %974, %1157 ], [ %974, %958 ], [ %1782, %1769 ], [ %974, %1767 ], [ %1760, %1727 ], [ %1715, %1700 ], [ %974, %976 ]
  %1805 = phi float [ %1680, %1672 ], [ %975, %1157 ], [ %975, %958 ], [ %1680, %1769 ], [ %1680, %1767 ], [ %1680, %1727 ], [ %1680, %1700 ], [ %975, %976 ]
  br i1 %385, label %2619, label %1806

; <label>:1806                                    ; preds = %1789
  %1807 = icmp ult i32 %438, 3
  %1808 = add i32 %29, 56
  %1809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.i32 %1809, 0
  %1811 = add i32 %29, 60
  %1812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %1813 = extractvalue %dx.types.ResRet.i32 %1812, 0
  %1814 = or i32 %1813, %1810
  %1815 = icmp eq i32 %1814, 0
  br i1 %1815, label %2619, label %1816

; <label>:1816                                    ; preds = %1806
  %1817 = and i32 %1810, 262144
  %1818 = icmp ne i32 %1817, 0
  %1819 = select i1 %1818, float %33, float 1.000000e+00
  %1820 = select i1 %1818, float %34, float 0.000000e+00
  %1821 = select i1 %1818, float %35, float 0.000000e+00
  %1822 = select i1 %1818, float %36, float 1.000000e+00
  %1823 = select i1 %1818, float %37, float %65
  %1824 = select i1 %1818, float %38, float %66
  %1825 = add i32 %29, 316
  %1826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.i32 %1826, 0
  %1828 = lshr i32 %1827, 16
  %1829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1828)  ; LegacyF16ToF32(value)
  %1830 = fmul fast float %1829, 0x3F50624DE0000000
  %1831 = add i32 %29, 120
  %1832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1831, i32 undef)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.i32 %1832, 0
  %1834 = lshr i32 %1833, 16
  %1835 = and i32 %1834, 255
  %1836 = lshr i32 %1833, 24
  %1837 = add i32 %29, 324
  %1838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.i32 %1838, 0
  %1840 = and i32 %1839, 65535
  %1841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1840)  ; LegacyF16ToF32(value)
  %1842 = lshr i32 %1839, 16
  %1843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1842)  ; LegacyF16ToF32(value)
  %1844 = add i32 %29, 64
  %1845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1844, i32 undef)  ; BufferLoad(srv,index,wot)
  %1846 = extractvalue %dx.types.ResRet.i32 %1845, 0
  %1847 = lshr i32 %1846, 22
  %1848 = shl nuw nsw i32 %1847, 5
  %1849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1848)  ; LegacyF16ToF32(value)
  %1850 = shl i32 %1846, 4
  %1851 = and i32 %1850, 32752
  %1852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1851)  ; LegacyF16ToF32(value)
  %1853 = lshr i32 %1846, 7
  %1854 = and i32 %1853, 32752
  %1855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1854)  ; LegacyF16ToF32(value)
  %1856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1857 = extractvalue %dx.types.CBufRet.f32 %1856, 3
  %1858 = fmul fast float %1857, 1.000000e+03
  %1859 = fmul fast float %335, %1858
  %1860 = call float @dx.op.unary.f32(i32 22, float %1859)  ; Frc(value)
  %1861 = fadd fast float %1860, %325
  %1862 = fmul fast float %336, %1858
  %1863 = call float @dx.op.unary.f32(i32 22, float %1862)  ; Frc(value)
  %1864 = fadd fast float %1863, %327
  %1865 = fmul fast float %1830, %1858
  %1866 = call float @dx.op.unary.f32(i32 22, float %1865)  ; Frc(value)
  %1867 = fmul fast float %1866, 0x401921FB60000000
  %1868 = fadd fast float %1867, %1849
  %1869 = call float @dx.op.unary.f32(i32 13, float %1868)  ; Sin(value)
  %1870 = call float @dx.op.unary.f32(i32 12, float %1868)  ; Cos(value)
  %1871 = fsub fast float -0.000000e+00, %1869
  %1872 = fadd fast float %1823, -5.000000e-01
  %1873 = fadd fast float %1824, -5.000000e-01
  %1874 = fmul fast float %1841, %1872
  %1875 = fmul fast float %1843, %1873
  %1876 = fadd fast float %1874, 5.000000e-01
  %1877 = fadd fast float %1875, 5.000000e-01
  %1878 = fmul fast float %1852, %1876
  %1879 = fmul fast float %1855, %1877
  %1880 = fmul fast float %1870, %1878
  %1881 = call float @dx.op.tertiary.f32(i32 46, float %1871, float %1879, float %1880)  ; FMad(a,b,c)
  %1882 = fmul fast float %1869, %1878
  %1883 = call float @dx.op.tertiary.f32(i32 46, float %1870, float %1879, float %1882)  ; FMad(a,b,c)
  %1884 = fadd fast float %1861, %1881
  %1885 = fadd fast float %1864, %1883
  %1886 = icmp ugt i32 %1835, 1
  %1887 = icmp ugt i32 %1833, 33554431
  %1888 = or i1 %1887, %1886
  br i1 %1888, label %1889, label %1914

; <label>:1889                                    ; preds = %1816
  %1890 = add i32 %29, 260
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = lshr i32 %1892, 16
  %1894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1893)  ; LegacyF16ToF32(value)
  %1895 = fmul fast float %1857, %1894
  %1896 = call float @dx.op.unary.f32(i32 22, float %1895)  ; Frc(value)
  %1897 = mul nuw nsw i32 %1835, %1836
  %1898 = uitofp i32 %1897 to float
  %1899 = fmul fast float %1896, %1898
  %1900 = call float @dx.op.unary.f32(i32 27, float %1899)  ; Round_ni(value)
  %1901 = fptoui float %1900 to i32
  %1902 = urem i32 %1901, %1835
  %1903 = udiv i32 %1901, %1836
  %1904 = call float @dx.op.unary.f32(i32 22, float %1884)  ; Frc(value)
  %1905 = call float @dx.op.unary.f32(i32 22, float %1885)  ; Frc(value)
  %1906 = uitofp i32 %1902 to float
  %1907 = uitofp i32 %1903 to float
  %1908 = fadd fast float %1904, %1906
  %1909 = fadd fast float %1905, %1907
  %1910 = uitofp i32 %1835 to float
  %1911 = uitofp i32 %1836 to float
  %1912 = fdiv fast float %1908, %1910
  %1913 = fdiv fast float %1909, %1911
  br label %1914

; <label>:1914                                    ; preds = %1889, %1816
  %1915 = phi float [ %1912, %1889 ], [ %1884, %1816 ]
  %1916 = phi float [ %1913, %1889 ], [ %1885, %1816 ]
  %1917 = and i32 %1810, 256
  %1918 = icmp eq i32 %1917, 0
  br i1 %1918, label %1965, label %1919

; <label>:1919                                    ; preds = %1914
  %1920 = add i32 %29, 528
  %1921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1920, i32 undef)  ; BufferLoad(srv,index,wot)
  %1922 = extractvalue %dx.types.ResRet.i32 %1921, 0
  %1923 = add i32 %1922, 0
  %1924 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1923, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1925 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1924, %dx.types.Handle %74, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1926 = extractvalue %dx.types.ResRet.f32 %1925, 0
  %1927 = add i32 %29, 132
  %1928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1929 = extractvalue %dx.types.ResRet.i32 %1928, 0
  %1930 = shl i32 %1929, 4
  %1931 = and i32 %1930, 32752
  %1932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1931)  ; LegacyF16ToF32(value)
  %1933 = lshr i32 %1929, 7
  %1934 = and i32 %1933, 32752
  %1935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1934)  ; LegacyF16ToF32(value)
  %1936 = fsub fast float 1.000000e+00, %434
  %1937 = call float @dx.op.binary.f32(i32 35, float %1936, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1938 = bitcast float %434 to i32
  %1939 = sitofp i32 %1938 to float
  %1940 = fadd fast float %1939, 0xC1CFBF8940000000
  %1941 = fmul fast float %1935, %1940
  %1942 = fadd fast float %1941, 0x41CFBF8940000000
  %1943 = fptosi float %1942 to i32
  %1944 = bitcast i32 %1943 to float
  %1945 = bitcast float %1937 to i32
  %1946 = sitofp i32 %1945 to float
  %1947 = fadd fast float %1946, 0xC1CFBF8940000000
  %1948 = fmul fast float %1947, %1935
  %1949 = fadd fast float %1948, 0x41CFBF8940000000
  %1950 = fptosi float %1949 to i32
  %1951 = bitcast i32 %1950 to float
  %1952 = fmul fast float %1944, %1932
  %1953 = fmul fast float %1951, %1932
  %1954 = fsub fast float %1937, %1952
  %1955 = fadd fast float %1953, %1937
  %1956 = call float @dx.op.unary.f32(i32 7, float %1954)  ; Saturate(value)
  %1957 = call float @dx.op.unary.f32(i32 7, float %1955)  ; Saturate(value)
  %1958 = fsub fast float %1926, %1956
  %1959 = fsub fast float %1957, %1956
  %1960 = bitcast float %1959 to i32
  %1961 = sub nsw i32 2129859010, %1960
  %1962 = bitcast i32 %1961 to float
  %1963 = fmul fast float %1962, %1958
  %1964 = call float @dx.op.unary.f32(i32 7, float %1963)  ; Saturate(value)
  br label %1965

; <label>:1965                                    ; preds = %1919, %1914
  %1966 = phi float [ %1964, %1919 ], [ %434, %1914 ]
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = and i32 %1968, 128
  %1970 = icmp eq i32 %1969, 0
  br i1 %1970, label %1987, label %1971

; <label>:1971                                    ; preds = %1965
  %1972 = add i32 %29, 512
  %1973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %1974 = extractvalue %dx.types.ResRet.i32 %1973, 0
  %1975 = add i32 %1974, 0
  %1976 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1975, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1977 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1976, %dx.types.Handle %74, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1978 = extractvalue %dx.types.ResRet.f32 %1977, 0
  %1979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1980 = extractvalue %dx.types.ResRet.i32 %1979, 0
  %1981 = and i32 %1980, 524288
  %1982 = icmp ne i32 %1981, 0
  %1983 = fcmp fast ogt float %1978, 0x3FE0101020000000
  %1984 = select i1 %1983, float 1.000000e+00, float 0.000000e+00
  %1985 = select i1 %1982, float %1984, float %1978
  %1986 = fmul fast float %1985, %1966
  br label %1987

; <label>:1987                                    ; preds = %1971, %1965
  %1988 = phi float [ %1986, %1971 ], [ %1966, %1965 ]
  %1989 = fcmp fast ult float %1988, 0x3F70101020000000
  br i1 %1989, label %2619, label %1990

; <label>:1990                                    ; preds = %1987
  %1991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.i32 %1991, 0
  %1993 = and i32 %1992, 16
  %1994 = icmp eq i32 %1993, 0
  br i1 %1994, label %2193, label %1995

; <label>:1995                                    ; preds = %1990
  %1996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1831, i32 undef)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.i32 %1996, 0
  %1998 = add i32 %29, 464
  %1999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2000 = extractvalue %dx.types.ResRet.i32 %1999, 0
  %2001 = add i32 %2000, 0
  %2002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2001, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2003 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2002, %dx.types.Handle %73, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2004 = extractvalue %dx.types.ResRet.f32 %2003, 0
  %2005 = extractvalue %dx.types.ResRet.f32 %2003, 1
  %2006 = extractvalue %dx.types.ResRet.f32 %2003, 2
  %2007 = extractvalue %dx.types.ResRet.f32 %2003, 3
  %2008 = and i32 %1997, 255
  %2009 = uitofp i32 %2008 to float
  %2010 = lshr i32 %1997, 8
  %2011 = and i32 %2010, 255
  %2012 = uitofp i32 %2011 to float
  %2013 = fmul fast float %2007, %2009
  %2014 = fadd fast float %2013, %2012
  %2015 = fmul fast float %2014, 0x3F70101000000000
  %2016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.i32 %2016, 0
  %2018 = and i32 %2017, 512
  %2019 = icmp eq i32 %2018, 0
  br i1 %2019, label %2028, label %2020

; <label>:2020                                    ; preds = %1995
  %2021 = add i32 %29, 544
  %2022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2021, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.i32 %2022, 0
  %2024 = add i32 %2023, 0
  %2025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2024, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2026 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2025, %dx.types.Handle %74, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2027 = extractvalue %dx.types.ResRet.f32 %2026, 0
  br label %2028

; <label>:2028                                    ; preds = %2020, %1995
  %2029 = phi float [ %2027, %2020 ], [ 1.000000e+00, %1995 ]
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = and i32 %2031, 33554432
  %2033 = icmp eq i32 %2032, 0
  br i1 %2033, label %2140, label %2034

; <label>:2034                                    ; preds = %2028
  %2035 = add i32 %29, 256
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2035, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = and i32 %2037, 65535
  %2039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2038)  ; LegacyF16ToF32(value)
  %2040 = lshr i32 %2037, 16
  %2041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2040)  ; LegacyF16ToF32(value)
  %2042 = add i32 %29, 260
  %2043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.i32 %2043, 0
  %2045 = and i32 %2044, 65535
  %2046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2045)  ; LegacyF16ToF32(value)
  %2047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2048 = extractvalue %dx.types.ResRet.i32 %2047, 0
  %2049 = lshr i32 %2048, 24
  %2050 = uitofp i32 %2049 to float
  %2051 = fmul fast float %2050, 0x3F70101020000000
  %2052 = and i32 %2048, 255
  %2053 = uitofp i32 %2052 to float
  %2054 = fmul fast float %2053, 0x3F70101020000000
  %2055 = lshr i32 %2048, 8
  %2056 = and i32 %2055, 255
  %2057 = uitofp i32 %2056 to float
  %2058 = fmul fast float %2057, 0x3F70101020000000
  %2059 = lshr i32 %2048, 16
  %2060 = and i32 %2059, 255
  %2061 = uitofp i32 %2060 to float
  %2062 = fmul fast float %2061, 0x3F70101020000000
  %2063 = add i32 %29, 252
  %2064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2063, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.i32 %2064, 0
  %2066 = lshr i32 %2065, 24
  %2067 = uitofp i32 %2066 to float
  %2068 = fmul fast float %2067, 0x3F70101020000000
  %2069 = and i32 %2065, 255
  %2070 = uitofp i32 %2069 to float
  %2071 = fmul fast float %2070, 0x3F70101020000000
  %2072 = lshr i32 %2065, 8
  %2073 = and i32 %2072, 255
  %2074 = uitofp i32 %2073 to float
  %2075 = fmul fast float %2074, 0x3F70101020000000
  %2076 = lshr i32 %2065, 16
  %2077 = and i32 %2076, 255
  %2078 = uitofp i32 %2077 to float
  %2079 = fmul fast float %2078, 0x3F70101020000000
  %2080 = bitcast float %2004 to i32
  %2081 = ashr i32 %2080, 1
  %2082 = sub nsw i32 1597463174, %2081
  %2083 = bitcast i32 %2082 to float
  %2084 = fmul fast float %2004, 5.000000e-01
  %2085 = fmul fast float %2083, %2083
  %2086 = fmul fast float %2085, %2084
  %2087 = fsub fast float 1.500000e+00, %2086
  %2088 = fmul fast float %2083, %2004
  %2089 = fmul fast float %2088, %2087
  %2090 = bitcast float %2005 to i32
  %2091 = ashr i32 %2090, 1
  %2092 = sub nsw i32 1597463174, %2091
  %2093 = bitcast i32 %2092 to float
  %2094 = fmul fast float %2005, 5.000000e-01
  %2095 = fmul fast float %2093, %2093
  %2096 = fmul fast float %2095, %2094
  %2097 = fsub fast float 1.500000e+00, %2096
  %2098 = fmul fast float %2093, %2005
  %2099 = fmul fast float %2098, %2097
  %2100 = bitcast float %2006 to i32
  %2101 = ashr i32 %2100, 1
  %2102 = sub nsw i32 1597463174, %2101
  %2103 = bitcast i32 %2102 to float
  %2104 = fmul fast float %2006, 5.000000e-01
  %2105 = fmul fast float %2103, %2103
  %2106 = fmul fast float %2105, %2104
  %2107 = fsub fast float 1.500000e+00, %2106
  %2108 = fmul fast float %2103, %2006
  %2109 = fmul fast float %2108, %2107
  %2110 = fsub fast float %2089, %2071
  %2111 = fsub fast float %2099, %2075
  %2112 = fsub fast float %2109, %2079
  %2113 = fmul fast float %2110, %2039
  %2114 = fmul fast float %2111, %2041
  %2115 = fmul fast float %2112, %2046
  %2116 = fadd fast float %2113, %2054
  %2117 = fadd fast float %2114, %2058
  %2118 = fadd fast float %2115, %2062
  %2119 = call float @dx.op.unary.f32(i32 7, float %2116)  ; Saturate(value)
  %2120 = call float @dx.op.unary.f32(i32 7, float %2117)  ; Saturate(value)
  %2121 = call float @dx.op.unary.f32(i32 7, float %2118)  ; Saturate(value)
  %2122 = fmul fast float %2119, %2119
  %2123 = fmul fast float %2120, %2120
  %2124 = fmul fast float %2121, %2121
  %2125 = fsub fast float %2122, %2004
  %2126 = fsub fast float %2123, %2005
  %2127 = fsub fast float %2124, %2006
  %2128 = fmul fast float %2125, %2029
  %2129 = fmul fast float %2126, %2029
  %2130 = fmul fast float %2127, %2029
  %2131 = fadd fast float %2128, %2004
  %2132 = fadd fast float %2129, %2005
  %2133 = fadd fast float %2130, %2006
  %2134 = fadd fast float %2051, %2015
  %2135 = fsub fast float %2134, %2068
  %2136 = call float @dx.op.unary.f32(i32 7, float %2135)  ; Saturate(value)
  %2137 = fsub fast float %2136, %2015
  %2138 = fmul fast float %2137, %2029
  %2139 = fadd fast float %2138, %2015
  br label %2193

; <label>:2140                                    ; preds = %2028
  %2141 = and i32 %2031, 134217728
  %2142 = icmp eq i32 %2141, 0
  br i1 %2142, label %2177, label %2143

; <label>:2143                                    ; preds = %2140
  %2144 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %2145 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %2146 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %2147 = fadd fast float %2144, -5.000000e-01
  %2148 = fadd fast float %2145, -5.000000e-01
  %2149 = fadd fast float %2146, -5.000000e-01
  %2150 = fmul fast float %2147, %2029
  %2151 = fmul fast float %2148, %2029
  %2152 = fmul fast float %2149, %2029
  %2153 = fadd fast float %2150, 5.000000e-01
  %2154 = fadd fast float %2151, 5.000000e-01
  %2155 = fadd fast float %2152, 5.000000e-01
  %2156 = call float @dx.op.unary.f32(i32 24, float %2004)  ; Sqrt(value)
  %2157 = call float @dx.op.unary.f32(i32 24, float %2005)  ; Sqrt(value)
  %2158 = call float @dx.op.unary.f32(i32 24, float %2006)  ; Sqrt(value)
  %2159 = fmul fast float %2153, 2.000000e+00
  %2160 = fsub fast float 1.000000e+00, %2159
  %2161 = fmul fast float %2160, %2156
  %2162 = fadd fast float %2161, %2159
  %2163 = fmul fast float %2162, %2156
  %2164 = fmul fast float %2154, 2.000000e+00
  %2165 = fsub fast float 1.000000e+00, %2164
  %2166 = fmul fast float %2165, %2157
  %2167 = fadd fast float %2166, %2164
  %2168 = fmul fast float %2167, %2157
  %2169 = fmul fast float %2155, 2.000000e+00
  %2170 = fsub fast float 1.000000e+00, %2169
  %2171 = fmul fast float %2170, %2158
  %2172 = fadd fast float %2171, %2169
  %2173 = fmul fast float %2172, %2158
  %2174 = fmul fast float %2163, %2163
  %2175 = fmul fast float %2168, %2168
  %2176 = fmul fast float %2173, %2173
  br label %2193

; <label>:2177                                    ; preds = %2140
  %2178 = fmul fast float %312, %312
  %2179 = fmul fast float %316, %316
  %2180 = fmul fast float %320, %320
  %2181 = fadd fast float %2178, -1.000000e+00
  %2182 = fadd fast float %2179, -1.000000e+00
  %2183 = fadd fast float %2180, -1.000000e+00
  %2184 = fmul fast float %2029, %2181
  %2185 = fmul fast float %2029, %2182
  %2186 = fmul fast float %2029, %2183
  %2187 = fadd fast float %2184, 1.000000e+00
  %2188 = fadd fast float %2185, 1.000000e+00
  %2189 = fadd fast float %2186, 1.000000e+00
  %2190 = fmul fast float %2187, %2004
  %2191 = fmul fast float %2188, %2005
  %2192 = fmul fast float %2189, %2006
  br label %2193

; <label>:2193                                    ; preds = %2177, %2143, %2034, %1990
  %2194 = phi float [ %2139, %2034 ], [ %2015, %2143 ], [ %2015, %2177 ], [ 0x3FA23C0BE0000000, %1990 ]
  %2195 = phi float [ %2131, %2034 ], [ %2174, %2143 ], [ %2190, %2177 ], [ 1.000000e+00, %1990 ]
  %2196 = phi float [ %2132, %2034 ], [ %2175, %2143 ], [ %2191, %2177 ], [ 1.000000e+00, %1990 ]
  %2197 = phi float [ %2133, %2034 ], [ %2176, %2143 ], [ %2192, %2177 ], [ 1.000000e+00, %1990 ]
  %2198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.i32 %2198, 1
  %2200 = and i32 %2199, 1
  %2201 = icmp ne i32 %2200, 0
  %2202 = add i32 %29, 356
  %2203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.i32 %2203, 0
  %2205 = and i32 %2204, 32
  %2206 = icmp ne i32 %2205, 0
  %2207 = and i1 %2201, %2206
  %2208 = select i1 %2207, float 1.000000e+00, float %2195
  %2209 = select i1 %2207, float 0x3FD3333340000000, float %2196
  %2210 = select i1 %2207, float 0x3FD3333340000000, float %2197
  %2211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2212 = extractvalue %dx.types.ResRet.i32 %2211, 0
  %2213 = and i32 %2212, 32
  %2214 = icmp eq i32 %2213, 0
  br i1 %2214, label %2287, label %2215

; <label>:2215                                    ; preds = %2193
  %2216 = add i32 %29, 124
  %2217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2216, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.i32 %2217, 0
  %2219 = add i32 %29, 480
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2219, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = add i32 %2221, 0
  %2223 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2222, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2224 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2223, %dx.types.Handle %73, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2225 = extractvalue %dx.types.ResRet.f32 %2224, 0
  %2226 = extractvalue %dx.types.ResRet.f32 %2224, 1
  %2227 = extractvalue %dx.types.ResRet.f32 %2224, 2
  %2228 = extractvalue %dx.types.ResRet.f32 %2224, 3
  %2229 = and i32 %2218, 255
  %2230 = uitofp i32 %2229 to float
  %2231 = lshr i32 %2218, 8
  %2232 = and i32 %2231, 255
  %2233 = uitofp i32 %2232 to float
  %2234 = lshr i32 %2218, 16
  %2235 = and i32 %2234, 255
  %2236 = uitofp i32 %2235 to float
  %2237 = fmul fast float %2236, 0x3F70101000000000
  %2238 = fmul fast float %2225, %2230
  %2239 = fadd fast float %2238, %2233
  %2240 = fmul fast float %2239, 0x3F70101000000000
  %2241 = fadd fast float %2226, -5.000000e-01
  %2242 = fadd fast float %2228, -5.000000e-01
  %2243 = fmul fast float %2241, %2237
  %2244 = fmul fast float %2242, %2237
  %2245 = fadd fast float %2243, 5.000000e-01
  %2246 = fadd fast float %2244, 5.000000e-01
  %2247 = fmul fast float %2245, 2.000000e+00
  %2248 = fadd fast float %2247, -1.000000e+00
  %2249 = fmul fast float %2246, 2.000000e+00
  %2250 = fadd fast float %2249, -1.000000e+00
  %2251 = fadd fast float %2248, %2250
  %2252 = fmul fast float %2251, 5.000000e-01
  %2253 = fsub fast float %2248, %2250
  %2254 = fmul fast float %2253, 5.000000e-01
  %2255 = call float @dx.op.unary.f32(i32 6, float %2252)  ; FAbs(value)
  %2256 = fsub fast float 1.000000e+00, %2255
  %2257 = call float @dx.op.unary.f32(i32 6, float %2254)  ; FAbs(value)
  %2258 = fsub fast float %2256, %2257
  %2259 = call float @dx.op.dot3.f32(i32 55, float %2252, float %2254, float %2258, float %2252, float %2254, float %2258)  ; Dot3(ax,ay,az,bx,by,bz)
  %2260 = call float @dx.op.unary.f32(i32 25, float %2259)  ; Rsqrt(value)
  %2261 = fmul fast float %2252, %2260
  %2262 = fmul fast float %2254, %2260
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = and i32 %2264, 67108864
  %2266 = icmp eq i32 %2265, 0
  br i1 %2266, label %2283, label %2267

; <label>:2267                                    ; preds = %2215
  %2268 = add i32 %29, 312
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = and i32 %2270, 65535
  %2272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2271)  ; LegacyF16ToF32(value)
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = and i32 %2274, 65535
  %2276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2275)  ; LegacyF16ToF32(value)
  %2277 = lshr i32 %2270, 16
  %2278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2277)  ; LegacyF16ToF32(value)
  %2279 = fsub fast float %2240, %2278
  %2280 = fmul fast float %2279, %2272
  %2281 = fadd fast float %2280, %2276
  %2282 = call float @dx.op.unary.f32(i32 7, float %2281)  ; Saturate(value)
  br label %2283

; <label>:2283                                    ; preds = %2267, %2215
  %2284 = phi float [ %2282, %2267 ], [ %2240, %2215 ]
  %2285 = call float @dx.op.dot2.f32(i32 54, float %2261, float %2262, float %1819, float %1820)  ; Dot2(ax,ay,bx,by)
  %2286 = call float @dx.op.dot2.f32(i32 54, float %2261, float %2262, float %1821, float %1822)  ; Dot2(ax,ay,bx,by)
  br label %2287

; <label>:2287                                    ; preds = %2283, %2193
  %2288 = phi float [ %2284, %2283 ], [ 0x3FD6666660000000, %2193 ]
  %2289 = phi float [ %2285, %2283 ], [ 0.000000e+00, %2193 ]
  %2290 = phi float [ %2286, %2283 ], [ 0.000000e+00, %2193 ]
  %2291 = phi float [ %2227, %2283 ], [ 1.000000e+00, %2193 ]
  %2292 = add i32 %29, 192
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = lshr i32 %2294, 22
  %2296 = shl nuw nsw i32 %2295, 5
  %2297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2296)  ; LegacyF16ToF32(value)
  %2298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2299 = extractvalue %dx.types.ResRet.i32 %2298, 0
  %2300 = and i32 %2299, 64
  %2301 = icmp eq i32 %2300, 0
  br i1 %2301, label %2335, label %2302

; <label>:2302                                    ; preds = %2287
  %2303 = add i32 %29, 496
  %2304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2303, i32 undef)  ; BufferLoad(srv,index,wot)
  %2305 = extractvalue %dx.types.ResRet.i32 %2304, 0
  %2306 = add i32 %2305, 0
  %2307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2306, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = and i32 %2309, 131072
  %2311 = icmp eq i32 %2310, 0
  %2312 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2307, %dx.types.Handle %73, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2313 = extractvalue %dx.types.ResRet.f32 %2312, 0
  %2314 = extractvalue %dx.types.ResRet.f32 %2312, 1
  %2315 = extractvalue %dx.types.ResRet.f32 %2312, 2
  %2316 = fmul fast float %2313, %300
  %2317 = fmul fast float %2314, %303
  %2318 = fmul fast float %2315, %306
  br i1 %2311, label %2325, label %2319

; <label>:2319                                    ; preds = %2302
  %2320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2321 = extractvalue %dx.types.CBufRet.f32 %2320, 0
  %2322 = fmul fast float %2321, %2316
  %2323 = fmul fast float %2321, %2317
  %2324 = fmul fast float %2321, %2318
  br label %2325

; <label>:2325                                    ; preds = %2319, %2302
  %2326 = phi float [ %2322, %2319 ], [ %2316, %2302 ]
  %2327 = phi float [ %2323, %2319 ], [ %2317, %2302 ]
  %2328 = phi float [ %2324, %2319 ], [ %2318, %2302 ]
  %2329 = fmul fast float %2326, %2297
  %2330 = select i1 %199, float %2329, float %2326
  %2331 = call float @dx.op.dot3.f32(i32 55, float %2330, float %2327, float %2328, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2332 = select i1 %199, float 0.000000e+00, float %2326
  %2333 = select i1 %199, float %2331, float %2327
  %2334 = select i1 %199, float 0.000000e+00, float %2328
  br label %2335

; <label>:2335                                    ; preds = %2325, %2287
  %2336 = phi float [ %2332, %2325 ], [ 0.000000e+00, %2287 ]
  %2337 = phi float [ %2333, %2325 ], [ 0.000000e+00, %2287 ]
  %2338 = phi float [ %2334, %2325 ], [ 0.000000e+00, %2287 ]
  %2339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.i32 %2339, 0
  %2341 = and i32 %2340, 10240
  %2342 = icmp eq i32 %2341, 0
  br i1 %2342, label %2387, label %2343

; <label>:2343                                    ; preds = %2335
  %2344 = add i32 %29, 560
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2344, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = add i32 %2346, 0
  %2348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2347, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2349 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2348, %dx.types.Handle %74, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2350 = extractvalue %dx.types.ResRet.f32 %2349, 1
  %2351 = extractvalue %dx.types.ResRet.f32 %2349, 3
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = and i32 %2353, 1048576
  %2355 = icmp ne i32 %2354, 0
  %2356 = and i32 %2353, 8192
  %2357 = icmp eq i32 %2356, 0
  br i1 %2357, label %2373, label %2358

; <label>:2358                                    ; preds = %2343
  %2359 = extractvalue %dx.types.ResRet.f32 %2349, 2
  %2360 = select i1 %2355, float %2359, float %2350
  %2361 = extractvalue %dx.types.ResRet.f32 %2349, 0
  %2362 = select i1 %2355, float %2361, float %2350
  %2363 = add i32 %29, 128
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.i32 %2364, 0
  %2366 = lshr i32 %2365, 16
  %2367 = and i32 %2366, 255
  %2368 = uitofp i32 %2367 to float
  %2369 = fmul fast float %2368, 0x3F80101020000000
  %2370 = fmul fast float %2369, %2362
  %2371 = fmul fast float %2369, %2350
  %2372 = fmul fast float %2369, %2360
  br label %2373

; <label>:2373                                    ; preds = %2358, %2343
  %2374 = phi float [ %2370, %2358 ], [ 0.000000e+00, %2343 ]
  %2375 = phi float [ %2371, %2358 ], [ 0.000000e+00, %2343 ]
  %2376 = phi float [ %2372, %2358 ], [ 0.000000e+00, %2343 ]
  %2377 = and i32 %2353, 2048
  %2378 = icmp eq i32 %2377, 0
  br i1 %2378, label %2387, label %2379

; <label>:2379                                    ; preds = %2373
  %2380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2381 = extractvalue %dx.types.ResRet.i32 %2380, 0
  %2382 = shl i32 %2381, 4
  %2383 = and i32 %2382, 32752
  %2384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2383)  ; LegacyF16ToF32(value)
  %2385 = fmul fast float %2384, %2351
  %2386 = call float @dx.op.binary.f32(i32 35, float %2385, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2387

; <label>:2387                                    ; preds = %2379, %2373, %2335
  %2388 = phi float [ %2374, %2379 ], [ %2374, %2373 ], [ 0.000000e+00, %2335 ]
  %2389 = phi float [ %2375, %2379 ], [ %2375, %2373 ], [ 0.000000e+00, %2335 ]
  %2390 = phi float [ %2376, %2379 ], [ %2376, %2373 ], [ 0.000000e+00, %2335 ]
  %2391 = phi float [ %2386, %2379 ], [ 0x3F70101020000000, %2373 ], [ 0x3F70101020000000, %2335 ]
  %2392 = add i32 %29, 128
  %2393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2392, i32 undef)  ; BufferLoad(srv,index,wot)
  %2394 = extractvalue %dx.types.ResRet.i32 %2393, 0
  %2395 = and i32 %2394, 255
  %2396 = uitofp i32 %2395 to float
  %2397 = lshr i32 %2394, 8
  %2398 = and i32 %2397, 255
  %2399 = uitofp i32 %2398 to float
  %2400 = call float @dx.op.dot3.f32(i32 55, float %2208, float %2209, float %2210, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2401 = fmul fast float %2399, %2400
  %2402 = fadd fast float %2401, %2396
  %2403 = fmul fast float %2402, 0x3F70101020000000
  %2404 = call float @dx.op.unary.f32(i32 7, float %2403)  ; Saturate(value)
  br i1 %1807, label %2405, label %2413

; <label>:2405                                    ; preds = %2387
  %2406 = fsub fast float 1.000000e+00, %1988
  %2407 = fmul fast float %2406, %1798
  %2408 = fmul fast float %2406, %1799
  %2409 = fmul fast float %2406, %1800
  %2410 = fmul fast float %2406, %1792
  %2411 = fmul fast float %2406, %1793
  %2412 = fmul fast float %2406, %1794
  br label %2413

; <label>:2413                                    ; preds = %2405, %2387
  %2414 = phi float [ %2410, %2405 ], [ %1792, %2387 ]
  %2415 = phi float [ %2411, %2405 ], [ %1793, %2387 ]
  %2416 = phi float [ %2412, %2405 ], [ %1794, %2387 ]
  %2417 = phi float [ %2407, %2405 ], [ %1798, %2387 ]
  %2418 = phi float [ %2408, %2405 ], [ %1799, %2387 ]
  %2419 = phi float [ %2409, %2405 ], [ %1800, %2387 ]
  %2420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2421 = extractvalue %dx.types.ResRet.i32 %2420, 0
  %2422 = and i32 %2421, 3
  %2423 = icmp eq i32 %2422, 3
  br i1 %2423, label %2502, label %2424

; <label>:2424                                    ; preds = %2413
  %2425 = and i32 %2421, 16
  %2426 = icmp ne i32 %2425, 0
  %2427 = select i1 %2426, float %1988, float 0.000000e+00
  %2428 = icmp eq i32 %2422, 0
  br i1 %2428, label %2429, label %2457

; <label>:2429                                    ; preds = %2424
  %2430 = and i32 %2421, 64
  %2431 = icmp ne i32 %2430, 0
  %2432 = select i1 %2431, float %1988, float 0.000000e+00
  %2433 = fsub fast float %2208, %2417
  %2434 = fsub fast float %2209, %2418
  %2435 = fsub fast float %2210, %2419
  %2436 = fmul fast float %2427, %2433
  %2437 = fmul fast float %2427, %2434
  %2438 = fmul fast float %2427, %2435
  %2439 = fadd fast float %2436, %2417
  %2440 = fadd fast float %2437, %2418
  %2441 = fadd fast float %2438, %2419
  %2442 = fsub fast float %2194, %1801
  %2443 = fmul fast float %2427, %2442
  %2444 = fadd fast float %2443, %1801
  %2445 = fsub fast float %2336, %2414
  %2446 = fsub fast float %2337, %2415
  %2447 = fsub fast float %2338, %2416
  %2448 = fmul fast float %2432, %2445
  %2449 = fmul fast float %2432, %2446
  %2450 = fmul fast float %2432, %2447
  %2451 = fadd fast float %2448, %2414
  %2452 = fadd fast float %2449, %2415
  %2453 = fadd fast float %2450, %2416
  %2454 = fsub fast float %2404, %1805
  %2455 = fmul fast float %2427, %2454
  %2456 = fadd fast float %2455, %1805
  br label %2502

; <label>:2457                                    ; preds = %2424
  %2458 = icmp eq i32 %2422, 1
  br i1 %2458, label %2459, label %2472

; <label>:2459                                    ; preds = %2457
  %2460 = fadd fast float %2208, -1.000000e+00
  %2461 = fadd fast float %2209, -1.000000e+00
  %2462 = fadd fast float %2210, -1.000000e+00
  %2463 = fmul fast float %2427, %2460
  %2464 = fmul fast float %2427, %2461
  %2465 = fmul fast float %2427, %2462
  %2466 = fadd fast float %2463, 1.000000e+00
  %2467 = fadd fast float %2464, 1.000000e+00
  %2468 = fadd fast float %2465, 1.000000e+00
  %2469 = fmul fast float %2466, %2417
  %2470 = fmul fast float %2467, %2418
  %2471 = fmul fast float %2468, %2419
  br label %2502

; <label>:2472                                    ; preds = %2457
  %2473 = icmp eq i32 %2422, 2
  br i1 %2473, label %2474, label %2502

; <label>:2474                                    ; preds = %2472
  %2475 = call float @dx.op.unary.f32(i32 24, float %2208)  ; Sqrt(value)
  %2476 = call float @dx.op.unary.f32(i32 24, float %2209)  ; Sqrt(value)
  %2477 = call float @dx.op.unary.f32(i32 24, float %2210)  ; Sqrt(value)
  %2478 = fadd fast float %2475, -5.000000e-01
  %2479 = fadd fast float %2476, -5.000000e-01
  %2480 = fadd fast float %2477, -5.000000e-01
  %2481 = fmul fast float %2478, %2427
  %2482 = fmul fast float %2479, %2427
  %2483 = fmul fast float %2480, %2427
  %2484 = fadd fast float %2481, 5.000000e-01
  %2485 = fadd fast float %2482, 5.000000e-01
  %2486 = fadd fast float %2483, 5.000000e-01
  %2487 = fmul fast float %2484, 2.000000e+00
  %2488 = fsub fast float 1.000000e+00, %2487
  %2489 = fmul fast float %2488, %2417
  %2490 = fadd fast float %2489, %2487
  %2491 = fmul fast float %2490, %2417
  %2492 = fmul fast float %2485, 2.000000e+00
  %2493 = fsub fast float 1.000000e+00, %2492
  %2494 = fmul fast float %2493, %2418
  %2495 = fadd fast float %2494, %2492
  %2496 = fmul fast float %2495, %2418
  %2497 = fmul fast float %2486, 2.000000e+00
  %2498 = fsub fast float 1.000000e+00, %2497
  %2499 = fmul fast float %2498, %2419
  %2500 = fadd fast float %2499, %2497
  %2501 = fmul fast float %2500, %2419
  br label %2502

; <label>:2502                                    ; preds = %2474, %2472, %2459, %2429, %2413
  %2503 = phi float [ %2414, %2413 ], [ %2414, %2474 ], [ %2414, %2472 ], [ %2414, %2459 ], [ %2451, %2429 ]
  %2504 = phi float [ %2415, %2413 ], [ %2415, %2474 ], [ %2415, %2472 ], [ %2415, %2459 ], [ %2452, %2429 ]
  %2505 = phi float [ %2416, %2413 ], [ %2416, %2474 ], [ %2416, %2472 ], [ %2416, %2459 ], [ %2453, %2429 ]
  %2506 = phi float [ %2417, %2413 ], [ %2491, %2474 ], [ %2417, %2472 ], [ %2469, %2459 ], [ %2439, %2429 ]
  %2507 = phi float [ %2418, %2413 ], [ %2496, %2474 ], [ %2418, %2472 ], [ %2470, %2459 ], [ %2440, %2429 ]
  %2508 = phi float [ %2419, %2413 ], [ %2501, %2474 ], [ %2419, %2472 ], [ %2471, %2459 ], [ %2441, %2429 ]
  %2509 = phi float [ %1801, %2413 ], [ %1801, %2474 ], [ %1801, %2472 ], [ %1801, %2459 ], [ %2444, %2429 ]
  %2510 = phi float [ %1805, %2413 ], [ %1805, %2474 ], [ %1805, %2472 ], [ %1805, %2459 ], [ %2456, %2429 ]
  %2511 = and i32 %2421, 12
  %2512 = icmp eq i32 %2511, 12
  br i1 %2512, label %2619, label %2513

; <label>:2513                                    ; preds = %2502
  %2514 = and i32 %2421, 2097184
  %2515 = icmp eq i32 %2514, 2097184
  %2516 = select i1 %2515, float %1988, float 0.000000e+00
  %2517 = and i32 %2421, 4194336
  %2518 = icmp eq i32 %2517, 4194336
  %2519 = select i1 %2518, float %1988, float 0.000000e+00
  %2520 = and i32 %2421, 8388640
  %2521 = icmp eq i32 %2520, 8388640
  %2522 = select i1 %2521, float %1988, float 0.000000e+00
  %2523 = and i32 %2421, 2048
  %2524 = icmp ne i32 %2523, 0
  %2525 = select i1 %2524, float %1988, float 0.000000e+00
  %2526 = and i32 %2421, 8192
  %2527 = icmp ne i32 %2526, 0
  %2528 = select i1 %2527, float %1988, float 0.000000e+00
  %2529 = icmp eq i32 %2511, 0
  br i1 %2529, label %2530, label %2555

; <label>:2530                                    ; preds = %2513
  %2531 = fsub fast float %2289, %1790
  %2532 = fsub fast float %2290, %1791
  %2533 = fmul fast float %2516, %2531
  %2534 = fmul fast float %2516, %2532
  %2535 = fadd fast float %2533, %1790
  %2536 = fadd fast float %2534, %1791
  %2537 = fsub fast float %2291, %1803
  %2538 = fmul fast float %2519, %2537
  %2539 = fadd fast float %2538, %1803
  %2540 = fsub fast float %2288, %1802
  %2541 = fmul fast float %2522, %2540
  %2542 = fadd fast float %2541, %1802
  %2543 = fsub fast float %2391, %1804
  %2544 = fmul fast float %2525, %2543
  %2545 = fadd fast float %2544, %1804
  %2546 = fsub fast float %2388, %1795
  %2547 = fsub fast float %2389, %1796
  %2548 = fsub fast float %2390, %1797
  %2549 = fmul fast float %2528, %2546
  %2550 = fmul fast float %2528, %2547
  %2551 = fmul fast float %2528, %2548
  %2552 = fadd fast float %2549, %1795
  %2553 = fadd fast float %2550, %1796
  %2554 = fadd fast float %2551, %1797
  br label %2619

; <label>:2555                                    ; preds = %2513
  %2556 = icmp eq i32 %2511, 4
  br i1 %2556, label %2557, label %2597

; <label>:2557                                    ; preds = %2555
  %2558 = fmul fast float %2516, %2289
  %2559 = fmul fast float %2516, %2290
  %2560 = fadd fast float %2558, %1790
  %2561 = fadd fast float %2559, %1791
  %2562 = call float @dx.op.binary.f32(i32 36, float %1803, float %2291)  ; FMin(a,b)
  %2563 = fsub fast float %2562, %1803
  %2564 = fmul fast float %2563, %2519
  %2565 = fadd fast float %2564, %1803
  %2566 = fadd fast float %2288, %1802
  %2567 = fmul fast float %2566, 0x3FF337FAE0000000
  %2568 = fmul fast float %1802, %1802
  %2569 = fmul fast float %2288, %2288
  %2570 = fadd fast float %2569, %2568
  %2571 = fmul fast float %2570, 0x3FE5152B00000000
  %2572 = fmul fast float %1802, 0xBFCC1F85E0000000
  %2573 = fmul fast float %2572, %2288
  %2574 = fadd fast float %2573, 0xBFE1363700000000
  %2575 = fadd fast float %2574, %2567
  %2576 = fsub fast float %2575, %2571
  %2577 = fmul fast float %2566, 0x3FBA6F0D00000000
  %2578 = fmul fast float %2570, 0x3FD0432880000000
  %2579 = fmul fast float %1802, 0xBFEF110800000000
  %2580 = fmul fast float %2579, %2288
  %2581 = fadd fast float %2580, 1.000000e+00
  %2582 = fsub fast float %2581, %2577
  %2583 = fadd fast float %2582, %2578
  %2584 = fdiv fast float %2576, %2583
  %2585 = call float @dx.op.unary.f32(i32 7, float %2584)  ; Saturate(value)
  %2586 = fsub fast float %2585, %1802
  %2587 = fmul fast float %2586, %2522
  %2588 = fadd fast float %2587, %1802
  %2589 = fmul fast float %2525, %2391
  %2590 = fadd fast float %2589, %1804
  %2591 = fmul fast float %2528, %2388
  %2592 = fmul fast float %2528, %2389
  %2593 = fmul fast float %2528, %2390
  %2594 = fadd fast float %2591, %1795
  %2595 = fadd fast float %2592, %1796
  %2596 = fadd fast float %2593, %1797
  br label %2619

; <label>:2597                                    ; preds = %2555
  %2598 = icmp eq i32 %2511, 8
  br i1 %2598, label %2599, label %2619

; <label>:2599                                    ; preds = %2597
  %2600 = fmul fast float %2516, %2289
  %2601 = fmul fast float %2516, %2290
  %2602 = fadd fast float %2600, %1790
  %2603 = fadd fast float %2601, %1791
  %2604 = call float @dx.op.binary.f32(i32 36, float %1803, float %2291)  ; FMin(a,b)
  %2605 = fsub fast float %2604, %1803
  %2606 = fmul fast float %2605, %2519
  %2607 = fadd fast float %2606, %1803
  %2608 = fsub fast float %2288, %1802
  %2609 = fmul fast float %2522, %2608
  %2610 = fadd fast float %2609, %1802
  %2611 = fmul fast float %2525, %2391
  %2612 = fadd fast float %2611, %1804
  %2613 = fmul fast float %2528, %2388
  %2614 = fmul fast float %2528, %2389
  %2615 = fmul fast float %2528, %2390
  %2616 = fadd fast float %2613, %1795
  %2617 = fadd fast float %2614, %1796
  %2618 = fadd fast float %2615, %1797
  br label %2619

; <label>:2619                                    ; preds = %2599, %2597, %2557, %2530, %2502, %1987, %1806, %1789
  %2620 = phi float [ %1790, %2502 ], [ %1790, %1987 ], [ %1790, %1789 ], [ %2602, %2599 ], [ %1790, %2597 ], [ %2560, %2557 ], [ %2535, %2530 ], [ %1790, %1806 ]
  %2621 = phi float [ %1791, %2502 ], [ %1791, %1987 ], [ %1791, %1789 ], [ %2603, %2599 ], [ %1791, %2597 ], [ %2561, %2557 ], [ %2536, %2530 ], [ %1791, %1806 ]
  %2622 = phi float [ %2503, %2502 ], [ %1792, %1987 ], [ %1792, %1789 ], [ %2503, %2599 ], [ %2503, %2597 ], [ %2503, %2557 ], [ %2503, %2530 ], [ %1792, %1806 ]
  %2623 = phi float [ %2504, %2502 ], [ %1793, %1987 ], [ %1793, %1789 ], [ %2504, %2599 ], [ %2504, %2597 ], [ %2504, %2557 ], [ %2504, %2530 ], [ %1793, %1806 ]
  %2624 = phi float [ %2505, %2502 ], [ %1794, %1987 ], [ %1794, %1789 ], [ %2505, %2599 ], [ %2505, %2597 ], [ %2505, %2557 ], [ %2505, %2530 ], [ %1794, %1806 ]
  %2625 = phi float [ %1795, %2502 ], [ %1795, %1987 ], [ %1795, %1789 ], [ %2616, %2599 ], [ %1795, %2597 ], [ %2594, %2557 ], [ %2552, %2530 ], [ %1795, %1806 ]
  %2626 = phi float [ %1796, %2502 ], [ %1796, %1987 ], [ %1796, %1789 ], [ %2617, %2599 ], [ %1796, %2597 ], [ %2595, %2557 ], [ %2553, %2530 ], [ %1796, %1806 ]
  %2627 = phi float [ %1797, %2502 ], [ %1797, %1987 ], [ %1797, %1789 ], [ %2618, %2599 ], [ %1797, %2597 ], [ %2596, %2557 ], [ %2554, %2530 ], [ %1797, %1806 ]
  %2628 = phi float [ %2506, %2502 ], [ %1798, %1987 ], [ %1798, %1789 ], [ %2506, %2599 ], [ %2506, %2597 ], [ %2506, %2557 ], [ %2506, %2530 ], [ %1798, %1806 ]
  %2629 = phi float [ %2507, %2502 ], [ %1799, %1987 ], [ %1799, %1789 ], [ %2507, %2599 ], [ %2507, %2597 ], [ %2507, %2557 ], [ %2507, %2530 ], [ %1799, %1806 ]
  %2630 = phi float [ %2508, %2502 ], [ %1800, %1987 ], [ %1800, %1789 ], [ %2508, %2599 ], [ %2508, %2597 ], [ %2508, %2557 ], [ %2508, %2530 ], [ %1800, %1806 ]
  %2631 = phi float [ %2509, %2502 ], [ %1801, %1987 ], [ %1801, %1789 ], [ %2509, %2599 ], [ %2509, %2597 ], [ %2509, %2557 ], [ %2509, %2530 ], [ %1801, %1806 ]
  %2632 = phi float [ %1802, %2502 ], [ %1802, %1987 ], [ %1802, %1789 ], [ %2610, %2599 ], [ %1802, %2597 ], [ %2588, %2557 ], [ %2542, %2530 ], [ %1802, %1806 ]
  %2633 = phi float [ %1803, %2502 ], [ %1803, %1987 ], [ %1803, %1789 ], [ %2607, %2599 ], [ %1803, %2597 ], [ %2565, %2557 ], [ %2539, %2530 ], [ %1803, %1806 ]
  %2634 = phi float [ %1804, %2502 ], [ %1804, %1987 ], [ %1804, %1789 ], [ %2612, %2599 ], [ %1804, %2597 ], [ %2590, %2557 ], [ %2545, %2530 ], [ %1804, %1806 ]
  %2635 = phi float [ %2510, %2502 ], [ %1805, %1987 ], [ %1805, %1789 ], [ %2510, %2599 ], [ %2510, %2597 ], [ %2510, %2557 ], [ %2510, %2530 ], [ %1805, %1806 ]
  br i1 %387, label %3449, label %2636

; <label>:2636                                    ; preds = %2619
  %2637 = icmp ult i32 %438, 4
  %2638 = add i32 %29, 72
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = add i32 %29, 76
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = or i32 %2643, %2640
  %2645 = icmp eq i32 %2644, 0
  br i1 %2645, label %3449, label %2646

; <label>:2646                                    ; preds = %2636
  %2647 = and i32 %2640, 262144
  %2648 = icmp ne i32 %2647, 0
  %2649 = select i1 %2648, float %33, float 1.000000e+00
  %2650 = select i1 %2648, float %34, float 0.000000e+00
  %2651 = select i1 %2648, float %35, float 0.000000e+00
  %2652 = select i1 %2648, float %36, float 1.000000e+00
  %2653 = select i1 %2648, float %37, float %65
  %2654 = select i1 %2648, float %38, float %66
  %2655 = add i32 %29, 332
  %2656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %2657 = extractvalue %dx.types.ResRet.i32 %2656, 0
  %2658 = lshr i32 %2657, 16
  %2659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2658)  ; LegacyF16ToF32(value)
  %2660 = fmul fast float %2659, 0x3F50624DE0000000
  %2661 = add i32 %29, 136
  %2662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2661, i32 undef)  ; BufferLoad(srv,index,wot)
  %2663 = extractvalue %dx.types.ResRet.i32 %2662, 0
  %2664 = lshr i32 %2663, 16
  %2665 = and i32 %2664, 255
  %2666 = lshr i32 %2663, 24
  %2667 = add i32 %29, 340
  %2668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2667, i32 undef)  ; BufferLoad(srv,index,wot)
  %2669 = extractvalue %dx.types.ResRet.i32 %2668, 0
  %2670 = and i32 %2669, 65535
  %2671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2670)  ; LegacyF16ToF32(value)
  %2672 = lshr i32 %2669, 16
  %2673 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2672)  ; LegacyF16ToF32(value)
  %2674 = add i32 %29, 80
  %2675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2674, i32 undef)  ; BufferLoad(srv,index,wot)
  %2676 = extractvalue %dx.types.ResRet.i32 %2675, 0
  %2677 = lshr i32 %2676, 22
  %2678 = shl nuw nsw i32 %2677, 5
  %2679 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2678)  ; LegacyF16ToF32(value)
  %2680 = shl i32 %2676, 4
  %2681 = and i32 %2680, 32752
  %2682 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2681)  ; LegacyF16ToF32(value)
  %2683 = lshr i32 %2676, 7
  %2684 = and i32 %2683, 32752
  %2685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2684)  ; LegacyF16ToF32(value)
  %2686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2687 = extractvalue %dx.types.CBufRet.f32 %2686, 3
  %2688 = fmul fast float %2687, 1.000000e+03
  %2689 = fmul fast float %377, %2688
  %2690 = call float @dx.op.unary.f32(i32 22, float %2689)  ; Frc(value)
  %2691 = fadd fast float %2690, %367
  %2692 = fmul fast float %378, %2688
  %2693 = call float @dx.op.unary.f32(i32 22, float %2692)  ; Frc(value)
  %2694 = fadd fast float %2693, %369
  %2695 = fmul fast float %2660, %2688
  %2696 = call float @dx.op.unary.f32(i32 22, float %2695)  ; Frc(value)
  %2697 = fmul fast float %2696, 0x401921FB60000000
  %2698 = fadd fast float %2697, %2679
  %2699 = call float @dx.op.unary.f32(i32 13, float %2698)  ; Sin(value)
  %2700 = call float @dx.op.unary.f32(i32 12, float %2698)  ; Cos(value)
  %2701 = fsub fast float -0.000000e+00, %2699
  %2702 = fadd fast float %2653, -5.000000e-01
  %2703 = fadd fast float %2654, -5.000000e-01
  %2704 = fmul fast float %2671, %2702
  %2705 = fmul fast float %2673, %2703
  %2706 = fadd fast float %2704, 5.000000e-01
  %2707 = fadd fast float %2705, 5.000000e-01
  %2708 = fmul fast float %2682, %2706
  %2709 = fmul fast float %2685, %2707
  %2710 = fmul fast float %2700, %2708
  %2711 = call float @dx.op.tertiary.f32(i32 46, float %2701, float %2709, float %2710)  ; FMad(a,b,c)
  %2712 = fmul fast float %2699, %2708
  %2713 = call float @dx.op.tertiary.f32(i32 46, float %2700, float %2709, float %2712)  ; FMad(a,b,c)
  %2714 = fadd fast float %2691, %2711
  %2715 = fadd fast float %2694, %2713
  %2716 = icmp ugt i32 %2665, 1
  %2717 = icmp ugt i32 %2663, 33554431
  %2718 = or i1 %2717, %2716
  br i1 %2718, label %2719, label %2744

; <label>:2719                                    ; preds = %2646
  %2720 = add i32 %29, 276
  %2721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2720, i32 undef)  ; BufferLoad(srv,index,wot)
  %2722 = extractvalue %dx.types.ResRet.i32 %2721, 0
  %2723 = lshr i32 %2722, 16
  %2724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2723)  ; LegacyF16ToF32(value)
  %2725 = fmul fast float %2687, %2724
  %2726 = call float @dx.op.unary.f32(i32 22, float %2725)  ; Frc(value)
  %2727 = mul nuw nsw i32 %2665, %2666
  %2728 = uitofp i32 %2727 to float
  %2729 = fmul fast float %2726, %2728
  %2730 = call float @dx.op.unary.f32(i32 27, float %2729)  ; Round_ni(value)
  %2731 = fptoui float %2730 to i32
  %2732 = urem i32 %2731, %2665
  %2733 = udiv i32 %2731, %2666
  %2734 = call float @dx.op.unary.f32(i32 22, float %2714)  ; Frc(value)
  %2735 = call float @dx.op.unary.f32(i32 22, float %2715)  ; Frc(value)
  %2736 = uitofp i32 %2732 to float
  %2737 = uitofp i32 %2733 to float
  %2738 = fadd fast float %2734, %2736
  %2739 = fadd fast float %2735, %2737
  %2740 = uitofp i32 %2665 to float
  %2741 = uitofp i32 %2666 to float
  %2742 = fdiv fast float %2738, %2740
  %2743 = fdiv fast float %2739, %2741
  br label %2744

; <label>:2744                                    ; preds = %2719, %2646
  %2745 = phi float [ %2742, %2719 ], [ %2714, %2646 ]
  %2746 = phi float [ %2743, %2719 ], [ %2715, %2646 ]
  %2747 = and i32 %2640, 256
  %2748 = icmp eq i32 %2747, 0
  br i1 %2748, label %2795, label %2749

; <label>:2749                                    ; preds = %2744
  %2750 = add i32 %29, 532
  %2751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2752 = extractvalue %dx.types.ResRet.i32 %2751, 0
  %2753 = add i32 %2752, 0
  %2754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2753, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2755 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2754, %dx.types.Handle %74, float %2745, float %2746, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2756 = extractvalue %dx.types.ResRet.f32 %2755, 0
  %2757 = add i32 %29, 148
  %2758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2757, i32 undef)  ; BufferLoad(srv,index,wot)
  %2759 = extractvalue %dx.types.ResRet.i32 %2758, 0
  %2760 = shl i32 %2759, 4
  %2761 = and i32 %2760, 32752
  %2762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2761)  ; LegacyF16ToF32(value)
  %2763 = lshr i32 %2759, 7
  %2764 = and i32 %2763, 32752
  %2765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2764)  ; LegacyF16ToF32(value)
  %2766 = fsub fast float 1.000000e+00, %433
  %2767 = call float @dx.op.binary.f32(i32 35, float %2766, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2768 = bitcast float %433 to i32
  %2769 = sitofp i32 %2768 to float
  %2770 = fadd fast float %2769, 0xC1CFBF8940000000
  %2771 = fmul fast float %2765, %2770
  %2772 = fadd fast float %2771, 0x41CFBF8940000000
  %2773 = fptosi float %2772 to i32
  %2774 = bitcast i32 %2773 to float
  %2775 = bitcast float %2767 to i32
  %2776 = sitofp i32 %2775 to float
  %2777 = fadd fast float %2776, 0xC1CFBF8940000000
  %2778 = fmul fast float %2777, %2765
  %2779 = fadd fast float %2778, 0x41CFBF8940000000
  %2780 = fptosi float %2779 to i32
  %2781 = bitcast i32 %2780 to float
  %2782 = fmul fast float %2774, %2762
  %2783 = fmul fast float %2781, %2762
  %2784 = fsub fast float %2767, %2782
  %2785 = fadd fast float %2783, %2767
  %2786 = call float @dx.op.unary.f32(i32 7, float %2784)  ; Saturate(value)
  %2787 = call float @dx.op.unary.f32(i32 7, float %2785)  ; Saturate(value)
  %2788 = fsub fast float %2756, %2786
  %2789 = fsub fast float %2787, %2786
  %2790 = bitcast float %2789 to i32
  %2791 = sub nsw i32 2129859010, %2790
  %2792 = bitcast i32 %2791 to float
  %2793 = fmul fast float %2792, %2788
  %2794 = call float @dx.op.unary.f32(i32 7, float %2793)  ; Saturate(value)
  br label %2795

; <label>:2795                                    ; preds = %2749, %2744
  %2796 = phi float [ %2794, %2749 ], [ %433, %2744 ]
  %2797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %2798 = extractvalue %dx.types.ResRet.i32 %2797, 0
  %2799 = and i32 %2798, 128
  %2800 = icmp eq i32 %2799, 0
  br i1 %2800, label %2817, label %2801

; <label>:2801                                    ; preds = %2795
  %2802 = add i32 %29, 516
  %2803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2802, i32 undef)  ; BufferLoad(srv,index,wot)
  %2804 = extractvalue %dx.types.ResRet.i32 %2803, 0
  %2805 = add i32 %2804, 0
  %2806 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2805, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2807 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2806, %dx.types.Handle %74, float %2745, float %2746, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2808 = extractvalue %dx.types.ResRet.f32 %2807, 0
  %2809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %2810 = extractvalue %dx.types.ResRet.i32 %2809, 0
  %2811 = and i32 %2810, 524288
  %2812 = icmp ne i32 %2811, 0
  %2813 = fcmp fast ogt float %2808, 0x3FE0101020000000
  %2814 = select i1 %2813, float 1.000000e+00, float 0.000000e+00
  %2815 = select i1 %2812, float %2814, float %2808
  %2816 = fmul fast float %2815, %2796
  br label %2817

; <label>:2817                                    ; preds = %2801, %2795
  %2818 = phi float [ %2816, %2801 ], [ %2796, %2795 ]
  %2819 = fcmp fast ult float %2818, 0x3F70101020000000
  br i1 %2819, label %3449, label %2820

; <label>:2820                                    ; preds = %2817
  %2821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %2822 = extractvalue %dx.types.ResRet.i32 %2821, 0
  %2823 = and i32 %2822, 16
  %2824 = icmp eq i32 %2823, 0
  br i1 %2824, label %3023, label %2825

; <label>:2825                                    ; preds = %2820
  %2826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2661, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.i32 %2826, 0
  %2828 = add i32 %29, 468
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = add i32 %2830, 0
  %2832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2831, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2833 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2832, %dx.types.Handle %73, float %2745, float %2746, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2834 = extractvalue %dx.types.ResRet.f32 %2833, 0
  %2835 = extractvalue %dx.types.ResRet.f32 %2833, 1
  %2836 = extractvalue %dx.types.ResRet.f32 %2833, 2
  %2837 = extractvalue %dx.types.ResRet.f32 %2833, 3
  %2838 = and i32 %2827, 255
  %2839 = uitofp i32 %2838 to float
  %2840 = lshr i32 %2827, 8
  %2841 = and i32 %2840, 255
  %2842 = uitofp i32 %2841 to float
  %2843 = fmul fast float %2837, %2839
  %2844 = fadd fast float %2843, %2842
  %2845 = fmul fast float %2844, 0x3F70101000000000
  %2846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %2847 = extractvalue %dx.types.ResRet.i32 %2846, 0
  %2848 = and i32 %2847, 512
  %2849 = icmp eq i32 %2848, 0
  br i1 %2849, label %2858, label %2850

; <label>:2850                                    ; preds = %2825
  %2851 = add i32 %29, 548
  %2852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2853 = extractvalue %dx.types.ResRet.i32 %2852, 0
  %2854 = add i32 %2853, 0
  %2855 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2854, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2856 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2855, %dx.types.Handle %74, float %2745, float %2746, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2857 = extractvalue %dx.types.ResRet.f32 %2856, 0
  br label %2858

; <label>:2858                                    ; preds = %2850, %2825
  %2859 = phi float [ %2857, %2850 ], [ 1.000000e+00, %2825 ]
  %2860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %2861 = extractvalue %dx.types.ResRet.i32 %2860, 0
  %2862 = and i32 %2861, 33554432
  %2863 = icmp eq i32 %2862, 0
  br i1 %2863, label %2970, label %2864

; <label>:2864                                    ; preds = %2858
  %2865 = add i32 %29, 272
  %2866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2865, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.i32 %2866, 0
  %2868 = and i32 %2867, 65535
  %2869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2868)  ; LegacyF16ToF32(value)
  %2870 = lshr i32 %2867, 16
  %2871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2870)  ; LegacyF16ToF32(value)
  %2872 = add i32 %29, 276
  %2873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2872, i32 undef)  ; BufferLoad(srv,index,wot)
  %2874 = extractvalue %dx.types.ResRet.i32 %2873, 0
  %2875 = and i32 %2874, 65535
  %2876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2875)  ; LegacyF16ToF32(value)
  %2877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.i32 %2877, 0
  %2879 = lshr i32 %2878, 24
  %2880 = uitofp i32 %2879 to float
  %2881 = fmul fast float %2880, 0x3F70101020000000
  %2882 = and i32 %2878, 255
  %2883 = uitofp i32 %2882 to float
  %2884 = fmul fast float %2883, 0x3F70101020000000
  %2885 = lshr i32 %2878, 8
  %2886 = and i32 %2885, 255
  %2887 = uitofp i32 %2886 to float
  %2888 = fmul fast float %2887, 0x3F70101020000000
  %2889 = lshr i32 %2878, 16
  %2890 = and i32 %2889, 255
  %2891 = uitofp i32 %2890 to float
  %2892 = fmul fast float %2891, 0x3F70101020000000
  %2893 = add i32 %29, 268
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = lshr i32 %2895, 24
  %2897 = uitofp i32 %2896 to float
  %2898 = fmul fast float %2897, 0x3F70101020000000
  %2899 = and i32 %2895, 255
  %2900 = uitofp i32 %2899 to float
  %2901 = fmul fast float %2900, 0x3F70101020000000
  %2902 = lshr i32 %2895, 8
  %2903 = and i32 %2902, 255
  %2904 = uitofp i32 %2903 to float
  %2905 = fmul fast float %2904, 0x3F70101020000000
  %2906 = lshr i32 %2895, 16
  %2907 = and i32 %2906, 255
  %2908 = uitofp i32 %2907 to float
  %2909 = fmul fast float %2908, 0x3F70101020000000
  %2910 = bitcast float %2834 to i32
  %2911 = ashr i32 %2910, 1
  %2912 = sub nsw i32 1597463174, %2911
  %2913 = bitcast i32 %2912 to float
  %2914 = fmul fast float %2834, 5.000000e-01
  %2915 = fmul fast float %2913, %2913
  %2916 = fmul fast float %2915, %2914
  %2917 = fsub fast float 1.500000e+00, %2916
  %2918 = fmul fast float %2913, %2834
  %2919 = fmul fast float %2918, %2917
  %2920 = bitcast float %2835 to i32
  %2921 = ashr i32 %2920, 1
  %2922 = sub nsw i32 1597463174, %2921
  %2923 = bitcast i32 %2922 to float
  %2924 = fmul fast float %2835, 5.000000e-01
  %2925 = fmul fast float %2923, %2923
  %2926 = fmul fast float %2925, %2924
  %2927 = fsub fast float 1.500000e+00, %2926
  %2928 = fmul fast float %2923, %2835
  %2929 = fmul fast float %2928, %2927
  %2930 = bitcast float %2836 to i32
  %2931 = ashr i32 %2930, 1
  %2932 = sub nsw i32 1597463174, %2931
  %2933 = bitcast i32 %2932 to float
  %2934 = fmul fast float %2836, 5.000000e-01
  %2935 = fmul fast float %2933, %2933
  %2936 = fmul fast float %2935, %2934
  %2937 = fsub fast float 1.500000e+00, %2936
  %2938 = fmul fast float %2933, %2836
  %2939 = fmul fast float %2938, %2937
  %2940 = fsub fast float %2919, %2901
  %2941 = fsub fast float %2929, %2905
  %2942 = fsub fast float %2939, %2909
  %2943 = fmul fast float %2940, %2869
  %2944 = fmul fast float %2941, %2871
  %2945 = fmul fast float %2942, %2876
  %2946 = fadd fast float %2943, %2884
  %2947 = fadd fast float %2944, %2888
  %2948 = fadd fast float %2945, %2892
  %2949 = call float @dx.op.unary.f32(i32 7, float %2946)  ; Saturate(value)
  %2950 = call float @dx.op.unary.f32(i32 7, float %2947)  ; Saturate(value)
  %2951 = call float @dx.op.unary.f32(i32 7, float %2948)  ; Saturate(value)
  %2952 = fmul fast float %2949, %2949
  %2953 = fmul fast float %2950, %2950
  %2954 = fmul fast float %2951, %2951
  %2955 = fsub fast float %2952, %2834
  %2956 = fsub fast float %2953, %2835
  %2957 = fsub fast float %2954, %2836
  %2958 = fmul fast float %2955, %2859
  %2959 = fmul fast float %2956, %2859
  %2960 = fmul fast float %2957, %2859
  %2961 = fadd fast float %2958, %2834
  %2962 = fadd fast float %2959, %2835
  %2963 = fadd fast float %2960, %2836
  %2964 = fadd fast float %2881, %2845
  %2965 = fsub fast float %2964, %2898
  %2966 = call float @dx.op.unary.f32(i32 7, float %2965)  ; Saturate(value)
  %2967 = fsub fast float %2966, %2845
  %2968 = fmul fast float %2967, %2859
  %2969 = fadd fast float %2968, %2845
  br label %3023

; <label>:2970                                    ; preds = %2858
  %2971 = and i32 %2861, 134217728
  %2972 = icmp eq i32 %2971, 0
  br i1 %2972, label %3007, label %2973

; <label>:2973                                    ; preds = %2970
  %2974 = call float @dx.op.unary.f32(i32 24, float %354)  ; Sqrt(value)
  %2975 = call float @dx.op.unary.f32(i32 24, float %358)  ; Sqrt(value)
  %2976 = call float @dx.op.unary.f32(i32 24, float %362)  ; Sqrt(value)
  %2977 = fadd fast float %2974, -5.000000e-01
  %2978 = fadd fast float %2975, -5.000000e-01
  %2979 = fadd fast float %2976, -5.000000e-01
  %2980 = fmul fast float %2977, %2859
  %2981 = fmul fast float %2978, %2859
  %2982 = fmul fast float %2979, %2859
  %2983 = fadd fast float %2980, 5.000000e-01
  %2984 = fadd fast float %2981, 5.000000e-01
  %2985 = fadd fast float %2982, 5.000000e-01
  %2986 = call float @dx.op.unary.f32(i32 24, float %2834)  ; Sqrt(value)
  %2987 = call float @dx.op.unary.f32(i32 24, float %2835)  ; Sqrt(value)
  %2988 = call float @dx.op.unary.f32(i32 24, float %2836)  ; Sqrt(value)
  %2989 = fmul fast float %2983, 2.000000e+00
  %2990 = fsub fast float 1.000000e+00, %2989
  %2991 = fmul fast float %2990, %2986
  %2992 = fadd fast float %2991, %2989
  %2993 = fmul fast float %2992, %2986
  %2994 = fmul fast float %2984, 2.000000e+00
  %2995 = fsub fast float 1.000000e+00, %2994
  %2996 = fmul fast float %2995, %2987
  %2997 = fadd fast float %2996, %2994
  %2998 = fmul fast float %2997, %2987
  %2999 = fmul fast float %2985, 2.000000e+00
  %3000 = fsub fast float 1.000000e+00, %2999
  %3001 = fmul fast float %3000, %2988
  %3002 = fadd fast float %3001, %2999
  %3003 = fmul fast float %3002, %2988
  %3004 = fmul fast float %2993, %2993
  %3005 = fmul fast float %2998, %2998
  %3006 = fmul fast float %3003, %3003
  br label %3023

; <label>:3007                                    ; preds = %2970
  %3008 = fmul fast float %354, %354
  %3009 = fmul fast float %358, %358
  %3010 = fmul fast float %362, %362
  %3011 = fadd fast float %3008, -1.000000e+00
  %3012 = fadd fast float %3009, -1.000000e+00
  %3013 = fadd fast float %3010, -1.000000e+00
  %3014 = fmul fast float %2859, %3011
  %3015 = fmul fast float %2859, %3012
  %3016 = fmul fast float %2859, %3013
  %3017 = fadd fast float %3014, 1.000000e+00
  %3018 = fadd fast float %3015, 1.000000e+00
  %3019 = fadd fast float %3016, 1.000000e+00
  %3020 = fmul fast float %3017, %2834
  %3021 = fmul fast float %3018, %2835
  %3022 = fmul fast float %3019, %2836
  br label %3023

; <label>:3023                                    ; preds = %3007, %2973, %2864, %2820
  %3024 = phi float [ %2969, %2864 ], [ %2845, %2973 ], [ %2845, %3007 ], [ 0x3FA23C0BE0000000, %2820 ]
  %3025 = phi float [ %2961, %2864 ], [ %3004, %2973 ], [ %3020, %3007 ], [ 1.000000e+00, %2820 ]
  %3026 = phi float [ %2962, %2864 ], [ %3005, %2973 ], [ %3021, %3007 ], [ 1.000000e+00, %2820 ]
  %3027 = phi float [ %2963, %2864 ], [ %3006, %2973 ], [ %3022, %3007 ], [ 1.000000e+00, %2820 ]
  %3028 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3029 = extractvalue %dx.types.CBufRet.i32 %3028, 1
  %3030 = and i32 %3029, 1
  %3031 = icmp ne i32 %3030, 0
  %3032 = add i32 %29, 356
  %3033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3032, i32 undef)  ; BufferLoad(srv,index,wot)
  %3034 = extractvalue %dx.types.ResRet.i32 %3033, 0
  %3035 = and i32 %3034, 32
  %3036 = icmp ne i32 %3035, 0
  %3037 = and i1 %3031, %3036
  %3038 = select i1 %3037, float 1.000000e+00, float %3025
  %3039 = select i1 %3037, float 0x3FD3333340000000, float %3026
  %3040 = select i1 %3037, float 0x3FD3333340000000, float %3027
  %3041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3042 = extractvalue %dx.types.ResRet.i32 %3041, 0
  %3043 = and i32 %3042, 32
  %3044 = icmp eq i32 %3043, 0
  br i1 %3044, label %3117, label %3045

; <label>:3045                                    ; preds = %3023
  %3046 = add i32 %29, 140
  %3047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3046, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.i32 %3047, 0
  %3049 = add i32 %29, 484
  %3050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3049, i32 undef)  ; BufferLoad(srv,index,wot)
  %3051 = extractvalue %dx.types.ResRet.i32 %3050, 0
  %3052 = add i32 %3051, 0
  %3053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3052, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3054 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3053, %dx.types.Handle %73, float %2745, float %2746, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3055 = extractvalue %dx.types.ResRet.f32 %3054, 0
  %3056 = extractvalue %dx.types.ResRet.f32 %3054, 1
  %3057 = extractvalue %dx.types.ResRet.f32 %3054, 2
  %3058 = extractvalue %dx.types.ResRet.f32 %3054, 3
  %3059 = and i32 %3048, 255
  %3060 = uitofp i32 %3059 to float
  %3061 = lshr i32 %3048, 8
  %3062 = and i32 %3061, 255
  %3063 = uitofp i32 %3062 to float
  %3064 = lshr i32 %3048, 16
  %3065 = and i32 %3064, 255
  %3066 = uitofp i32 %3065 to float
  %3067 = fmul fast float %3066, 0x3F70101000000000
  %3068 = fmul fast float %3055, %3060
  %3069 = fadd fast float %3068, %3063
  %3070 = fmul fast float %3069, 0x3F70101000000000
  %3071 = fadd fast float %3056, -5.000000e-01
  %3072 = fadd fast float %3058, -5.000000e-01
  %3073 = fmul fast float %3071, %3067
  %3074 = fmul fast float %3072, %3067
  %3075 = fadd fast float %3073, 5.000000e-01
  %3076 = fadd fast float %3074, 5.000000e-01
  %3077 = fmul fast float %3075, 2.000000e+00
  %3078 = fadd fast float %3077, -1.000000e+00
  %3079 = fmul fast float %3076, 2.000000e+00
  %3080 = fadd fast float %3079, -1.000000e+00
  %3081 = fadd fast float %3078, %3080
  %3082 = fmul fast float %3081, 5.000000e-01
  %3083 = fsub fast float %3078, %3080
  %3084 = fmul fast float %3083, 5.000000e-01
  %3085 = call float @dx.op.unary.f32(i32 6, float %3082)  ; FAbs(value)
  %3086 = fsub fast float 1.000000e+00, %3085
  %3087 = call float @dx.op.unary.f32(i32 6, float %3084)  ; FAbs(value)
  %3088 = fsub fast float %3086, %3087
  %3089 = call float @dx.op.dot3.f32(i32 55, float %3082, float %3084, float %3088, float %3082, float %3084, float %3088)  ; Dot3(ax,ay,az,bx,by,bz)
  %3090 = call float @dx.op.unary.f32(i32 25, float %3089)  ; Rsqrt(value)
  %3091 = fmul fast float %3082, %3090
  %3092 = fmul fast float %3084, %3090
  %3093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3094 = extractvalue %dx.types.ResRet.i32 %3093, 0
  %3095 = and i32 %3094, 67108864
  %3096 = icmp eq i32 %3095, 0
  br i1 %3096, label %3113, label %3097

; <label>:3097                                    ; preds = %3045
  %3098 = add i32 %29, 328
  %3099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3098, i32 undef)  ; BufferLoad(srv,index,wot)
  %3100 = extractvalue %dx.types.ResRet.i32 %3099, 0
  %3101 = and i32 %3100, 65535
  %3102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3101)  ; LegacyF16ToF32(value)
  %3103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %3104 = extractvalue %dx.types.ResRet.i32 %3103, 0
  %3105 = and i32 %3104, 65535
  %3106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3105)  ; LegacyF16ToF32(value)
  %3107 = lshr i32 %3100, 16
  %3108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3107)  ; LegacyF16ToF32(value)
  %3109 = fsub fast float %3070, %3108
  %3110 = fmul fast float %3109, %3102
  %3111 = fadd fast float %3110, %3106
  %3112 = call float @dx.op.unary.f32(i32 7, float %3111)  ; Saturate(value)
  br label %3113

; <label>:3113                                    ; preds = %3097, %3045
  %3114 = phi float [ %3112, %3097 ], [ %3070, %3045 ]
  %3115 = call float @dx.op.dot2.f32(i32 54, float %3091, float %3092, float %2649, float %2650)  ; Dot2(ax,ay,bx,by)
  %3116 = call float @dx.op.dot2.f32(i32 54, float %3091, float %3092, float %2651, float %2652)  ; Dot2(ax,ay,bx,by)
  br label %3117

; <label>:3117                                    ; preds = %3113, %3023
  %3118 = phi float [ %3114, %3113 ], [ 0x3FD6666660000000, %3023 ]
  %3119 = phi float [ %3115, %3113 ], [ 0.000000e+00, %3023 ]
  %3120 = phi float [ %3116, %3113 ], [ 0.000000e+00, %3023 ]
  %3121 = phi float [ %3057, %3113 ], [ 1.000000e+00, %3023 ]
  %3122 = add i32 %29, 208
  %3123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3122, i32 undef)  ; BufferLoad(srv,index,wot)
  %3124 = extractvalue %dx.types.ResRet.i32 %3123, 0
  %3125 = lshr i32 %3124, 22
  %3126 = shl nuw nsw i32 %3125, 5
  %3127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3126)  ; LegacyF16ToF32(value)
  %3128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.i32 %3128, 0
  %3130 = and i32 %3129, 64
  %3131 = icmp eq i32 %3130, 0
  br i1 %3131, label %3165, label %3132

; <label>:3132                                    ; preds = %3117
  %3133 = add i32 %29, 500
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = add i32 %3135, 0
  %3137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3136, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = and i32 %3139, 131072
  %3141 = icmp eq i32 %3140, 0
  %3142 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3137, %dx.types.Handle %73, float %2745, float %2746, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3143 = extractvalue %dx.types.ResRet.f32 %3142, 0
  %3144 = extractvalue %dx.types.ResRet.f32 %3142, 1
  %3145 = extractvalue %dx.types.ResRet.f32 %3142, 2
  %3146 = fmul fast float %3143, %342
  %3147 = fmul fast float %3144, %345
  %3148 = fmul fast float %3145, %348
  br i1 %3141, label %3155, label %3149

; <label>:3149                                    ; preds = %3132
  %3150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3151 = extractvalue %dx.types.CBufRet.f32 %3150, 0
  %3152 = fmul fast float %3151, %3146
  %3153 = fmul fast float %3151, %3147
  %3154 = fmul fast float %3151, %3148
  br label %3155

; <label>:3155                                    ; preds = %3149, %3132
  %3156 = phi float [ %3152, %3149 ], [ %3146, %3132 ]
  %3157 = phi float [ %3153, %3149 ], [ %3147, %3132 ]
  %3158 = phi float [ %3154, %3149 ], [ %3148, %3132 ]
  %3159 = fmul fast float %3156, %3127
  %3160 = select i1 %199, float %3159, float %3156
  %3161 = call float @dx.op.dot3.f32(i32 55, float %3160, float %3157, float %3158, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3162 = select i1 %199, float 0.000000e+00, float %3156
  %3163 = select i1 %199, float %3161, float %3157
  %3164 = select i1 %199, float 0.000000e+00, float %3158
  br label %3165

; <label>:3165                                    ; preds = %3155, %3117
  %3166 = phi float [ %3162, %3155 ], [ 0.000000e+00, %3117 ]
  %3167 = phi float [ %3163, %3155 ], [ 0.000000e+00, %3117 ]
  %3168 = phi float [ %3164, %3155 ], [ 0.000000e+00, %3117 ]
  %3169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3170 = extractvalue %dx.types.ResRet.i32 %3169, 0
  %3171 = and i32 %3170, 10240
  %3172 = icmp eq i32 %3171, 0
  br i1 %3172, label %3217, label %3173

; <label>:3173                                    ; preds = %3165
  %3174 = add i32 %29, 564
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3174, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = add i32 %3176, 0
  %3178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3177, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3179 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3178, %dx.types.Handle %74, float %2745, float %2746, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3180 = extractvalue %dx.types.ResRet.f32 %3179, 1
  %3181 = extractvalue %dx.types.ResRet.f32 %3179, 3
  %3182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3183 = extractvalue %dx.types.ResRet.i32 %3182, 0
  %3184 = and i32 %3183, 1048576
  %3185 = icmp ne i32 %3184, 0
  %3186 = and i32 %3183, 8192
  %3187 = icmp eq i32 %3186, 0
  br i1 %3187, label %3203, label %3188

; <label>:3188                                    ; preds = %3173
  %3189 = extractvalue %dx.types.ResRet.f32 %3179, 2
  %3190 = select i1 %3185, float %3189, float %3180
  %3191 = extractvalue %dx.types.ResRet.f32 %3179, 0
  %3192 = select i1 %3185, float %3191, float %3180
  %3193 = add i32 %29, 144
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3193, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = lshr i32 %3195, 16
  %3197 = and i32 %3196, 255
  %3198 = uitofp i32 %3197 to float
  %3199 = fmul fast float %3198, 0x3F80101020000000
  %3200 = fmul fast float %3199, %3192
  %3201 = fmul fast float %3199, %3180
  %3202 = fmul fast float %3199, %3190
  br label %3203

; <label>:3203                                    ; preds = %3188, %3173
  %3204 = phi float [ %3200, %3188 ], [ 0.000000e+00, %3173 ]
  %3205 = phi float [ %3201, %3188 ], [ 0.000000e+00, %3173 ]
  %3206 = phi float [ %3202, %3188 ], [ 0.000000e+00, %3173 ]
  %3207 = and i32 %3183, 2048
  %3208 = icmp eq i32 %3207, 0
  br i1 %3208, label %3217, label %3209

; <label>:3209                                    ; preds = %3203
  %3210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3122, i32 undef)  ; BufferLoad(srv,index,wot)
  %3211 = extractvalue %dx.types.ResRet.i32 %3210, 0
  %3212 = shl i32 %3211, 4
  %3213 = and i32 %3212, 32752
  %3214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3213)  ; LegacyF16ToF32(value)
  %3215 = fmul fast float %3214, %3181
  %3216 = call float @dx.op.binary.f32(i32 35, float %3215, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3217

; <label>:3217                                    ; preds = %3209, %3203, %3165
  %3218 = phi float [ %3204, %3209 ], [ %3204, %3203 ], [ 0.000000e+00, %3165 ]
  %3219 = phi float [ %3205, %3209 ], [ %3205, %3203 ], [ 0.000000e+00, %3165 ]
  %3220 = phi float [ %3206, %3209 ], [ %3206, %3203 ], [ 0.000000e+00, %3165 ]
  %3221 = phi float [ %3216, %3209 ], [ 0x3F70101020000000, %3203 ], [ 0x3F70101020000000, %3165 ]
  %3222 = add i32 %29, 144
  %3223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3222, i32 undef)  ; BufferLoad(srv,index,wot)
  %3224 = extractvalue %dx.types.ResRet.i32 %3223, 0
  %3225 = and i32 %3224, 255
  %3226 = uitofp i32 %3225 to float
  %3227 = lshr i32 %3224, 8
  %3228 = and i32 %3227, 255
  %3229 = uitofp i32 %3228 to float
  %3230 = call float @dx.op.dot3.f32(i32 55, float %3038, float %3039, float %3040, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3231 = fmul fast float %3229, %3230
  %3232 = fadd fast float %3231, %3226
  %3233 = fmul fast float %3232, 0x3F70101020000000
  %3234 = call float @dx.op.unary.f32(i32 7, float %3233)  ; Saturate(value)
  br i1 %2637, label %3235, label %3243

; <label>:3235                                    ; preds = %3217
  %3236 = fsub fast float 1.000000e+00, %2818
  %3237 = fmul fast float %3236, %2628
  %3238 = fmul fast float %3236, %2629
  %3239 = fmul fast float %3236, %2630
  %3240 = fmul fast float %3236, %2622
  %3241 = fmul fast float %3236, %2623
  %3242 = fmul fast float %3236, %2624
  br label %3243

; <label>:3243                                    ; preds = %3235, %3217
  %3244 = phi float [ %3240, %3235 ], [ %2622, %3217 ]
  %3245 = phi float [ %3241, %3235 ], [ %2623, %3217 ]
  %3246 = phi float [ %3242, %3235 ], [ %2624, %3217 ]
  %3247 = phi float [ %3237, %3235 ], [ %2628, %3217 ]
  %3248 = phi float [ %3238, %3235 ], [ %2629, %3217 ]
  %3249 = phi float [ %3239, %3235 ], [ %2630, %3217 ]
  %3250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3251 = extractvalue %dx.types.ResRet.i32 %3250, 0
  %3252 = and i32 %3251, 3
  %3253 = icmp eq i32 %3252, 3
  br i1 %3253, label %3332, label %3254

; <label>:3254                                    ; preds = %3243
  %3255 = and i32 %3251, 16
  %3256 = icmp ne i32 %3255, 0
  %3257 = select i1 %3256, float %2818, float 0.000000e+00
  %3258 = icmp eq i32 %3252, 0
  br i1 %3258, label %3259, label %3287

; <label>:3259                                    ; preds = %3254
  %3260 = and i32 %3251, 64
  %3261 = icmp ne i32 %3260, 0
  %3262 = select i1 %3261, float %2818, float 0.000000e+00
  %3263 = fsub fast float %3038, %3247
  %3264 = fsub fast float %3039, %3248
  %3265 = fsub fast float %3040, %3249
  %3266 = fmul fast float %3257, %3263
  %3267 = fmul fast float %3257, %3264
  %3268 = fmul fast float %3257, %3265
  %3269 = fadd fast float %3266, %3247
  %3270 = fadd fast float %3267, %3248
  %3271 = fadd fast float %3268, %3249
  %3272 = fsub fast float %3024, %2631
  %3273 = fmul fast float %3257, %3272
  %3274 = fadd fast float %3273, %2631
  %3275 = fsub fast float %3166, %3244
  %3276 = fsub fast float %3167, %3245
  %3277 = fsub fast float %3168, %3246
  %3278 = fmul fast float %3262, %3275
  %3279 = fmul fast float %3262, %3276
  %3280 = fmul fast float %3262, %3277
  %3281 = fadd fast float %3278, %3244
  %3282 = fadd fast float %3279, %3245
  %3283 = fadd fast float %3280, %3246
  %3284 = fsub fast float %3234, %2635
  %3285 = fmul fast float %3257, %3284
  %3286 = fadd fast float %3285, %2635
  br label %3332

; <label>:3287                                    ; preds = %3254
  %3288 = icmp eq i32 %3252, 1
  br i1 %3288, label %3289, label %3302

; <label>:3289                                    ; preds = %3287
  %3290 = fadd fast float %3038, -1.000000e+00
  %3291 = fadd fast float %3039, -1.000000e+00
  %3292 = fadd fast float %3040, -1.000000e+00
  %3293 = fmul fast float %3257, %3290
  %3294 = fmul fast float %3257, %3291
  %3295 = fmul fast float %3257, %3292
  %3296 = fadd fast float %3293, 1.000000e+00
  %3297 = fadd fast float %3294, 1.000000e+00
  %3298 = fadd fast float %3295, 1.000000e+00
  %3299 = fmul fast float %3296, %3247
  %3300 = fmul fast float %3297, %3248
  %3301 = fmul fast float %3298, %3249
  br label %3332

; <label>:3302                                    ; preds = %3287
  %3303 = icmp eq i32 %3252, 2
  br i1 %3303, label %3304, label %3332

; <label>:3304                                    ; preds = %3302
  %3305 = call float @dx.op.unary.f32(i32 24, float %3038)  ; Sqrt(value)
  %3306 = call float @dx.op.unary.f32(i32 24, float %3039)  ; Sqrt(value)
  %3307 = call float @dx.op.unary.f32(i32 24, float %3040)  ; Sqrt(value)
  %3308 = fadd fast float %3305, -5.000000e-01
  %3309 = fadd fast float %3306, -5.000000e-01
  %3310 = fadd fast float %3307, -5.000000e-01
  %3311 = fmul fast float %3308, %3257
  %3312 = fmul fast float %3309, %3257
  %3313 = fmul fast float %3310, %3257
  %3314 = fadd fast float %3311, 5.000000e-01
  %3315 = fadd fast float %3312, 5.000000e-01
  %3316 = fadd fast float %3313, 5.000000e-01
  %3317 = fmul fast float %3314, 2.000000e+00
  %3318 = fsub fast float 1.000000e+00, %3317
  %3319 = fmul fast float %3318, %3247
  %3320 = fadd fast float %3319, %3317
  %3321 = fmul fast float %3320, %3247
  %3322 = fmul fast float %3315, 2.000000e+00
  %3323 = fsub fast float 1.000000e+00, %3322
  %3324 = fmul fast float %3323, %3248
  %3325 = fadd fast float %3324, %3322
  %3326 = fmul fast float %3325, %3248
  %3327 = fmul fast float %3316, 2.000000e+00
  %3328 = fsub fast float 1.000000e+00, %3327
  %3329 = fmul fast float %3328, %3249
  %3330 = fadd fast float %3329, %3327
  %3331 = fmul fast float %3330, %3249
  br label %3332

; <label>:3332                                    ; preds = %3304, %3302, %3289, %3259, %3243
  %3333 = phi float [ %3244, %3243 ], [ %3244, %3304 ], [ %3244, %3302 ], [ %3244, %3289 ], [ %3281, %3259 ]
  %3334 = phi float [ %3245, %3243 ], [ %3245, %3304 ], [ %3245, %3302 ], [ %3245, %3289 ], [ %3282, %3259 ]
  %3335 = phi float [ %3246, %3243 ], [ %3246, %3304 ], [ %3246, %3302 ], [ %3246, %3289 ], [ %3283, %3259 ]
  %3336 = phi float [ %3247, %3243 ], [ %3321, %3304 ], [ %3247, %3302 ], [ %3299, %3289 ], [ %3269, %3259 ]
  %3337 = phi float [ %3248, %3243 ], [ %3326, %3304 ], [ %3248, %3302 ], [ %3300, %3289 ], [ %3270, %3259 ]
  %3338 = phi float [ %3249, %3243 ], [ %3331, %3304 ], [ %3249, %3302 ], [ %3301, %3289 ], [ %3271, %3259 ]
  %3339 = phi float [ %2631, %3243 ], [ %2631, %3304 ], [ %2631, %3302 ], [ %2631, %3289 ], [ %3274, %3259 ]
  %3340 = phi float [ %2635, %3243 ], [ %2635, %3304 ], [ %2635, %3302 ], [ %2635, %3289 ], [ %3286, %3259 ]
  %3341 = and i32 %3251, 12
  %3342 = icmp eq i32 %3341, 12
  br i1 %3342, label %3449, label %3343

; <label>:3343                                    ; preds = %3332
  %3344 = and i32 %3251, 2097184
  %3345 = icmp eq i32 %3344, 2097184
  %3346 = select i1 %3345, float %2818, float 0.000000e+00
  %3347 = and i32 %3251, 4194336
  %3348 = icmp eq i32 %3347, 4194336
  %3349 = select i1 %3348, float %2818, float 0.000000e+00
  %3350 = and i32 %3251, 8388640
  %3351 = icmp eq i32 %3350, 8388640
  %3352 = select i1 %3351, float %2818, float 0.000000e+00
  %3353 = and i32 %3251, 2048
  %3354 = icmp ne i32 %3353, 0
  %3355 = select i1 %3354, float %2818, float 0.000000e+00
  %3356 = and i32 %3251, 8192
  %3357 = icmp ne i32 %3356, 0
  %3358 = select i1 %3357, float %2818, float 0.000000e+00
  %3359 = icmp eq i32 %3341, 0
  br i1 %3359, label %3360, label %3385

; <label>:3360                                    ; preds = %3343
  %3361 = fsub fast float %3119, %2620
  %3362 = fsub fast float %3120, %2621
  %3363 = fmul fast float %3346, %3361
  %3364 = fmul fast float %3346, %3362
  %3365 = fadd fast float %3363, %2620
  %3366 = fadd fast float %3364, %2621
  %3367 = fsub fast float %3121, %2633
  %3368 = fmul fast float %3349, %3367
  %3369 = fadd fast float %3368, %2633
  %3370 = fsub fast float %3118, %2632
  %3371 = fmul fast float %3352, %3370
  %3372 = fadd fast float %3371, %2632
  %3373 = fsub fast float %3221, %2634
  %3374 = fmul fast float %3355, %3373
  %3375 = fadd fast float %3374, %2634
  %3376 = fsub fast float %3218, %2625
  %3377 = fsub fast float %3219, %2626
  %3378 = fsub fast float %3220, %2627
  %3379 = fmul fast float %3358, %3376
  %3380 = fmul fast float %3358, %3377
  %3381 = fmul fast float %3358, %3378
  %3382 = fadd fast float %3379, %2625
  %3383 = fadd fast float %3380, %2626
  %3384 = fadd fast float %3381, %2627
  br label %3449

; <label>:3385                                    ; preds = %3343
  %3386 = icmp eq i32 %3341, 4
  br i1 %3386, label %3387, label %3427

; <label>:3387                                    ; preds = %3385
  %3388 = fmul fast float %3346, %3119
  %3389 = fmul fast float %3346, %3120
  %3390 = fadd fast float %3388, %2620
  %3391 = fadd fast float %3389, %2621
  %3392 = call float @dx.op.binary.f32(i32 36, float %2633, float %3121)  ; FMin(a,b)
  %3393 = fsub fast float %3392, %2633
  %3394 = fmul fast float %3393, %3349
  %3395 = fadd fast float %3394, %2633
  %3396 = fadd fast float %3118, %2632
  %3397 = fmul fast float %3396, 0x3FF337FAE0000000
  %3398 = fmul fast float %2632, %2632
  %3399 = fmul fast float %3118, %3118
  %3400 = fadd fast float %3399, %3398
  %3401 = fmul fast float %3400, 0x3FE5152B00000000
  %3402 = fmul fast float %2632, 0xBFCC1F85E0000000
  %3403 = fmul fast float %3402, %3118
  %3404 = fadd fast float %3403, 0xBFE1363700000000
  %3405 = fadd fast float %3404, %3397
  %3406 = fsub fast float %3405, %3401
  %3407 = fmul fast float %3396, 0x3FBA6F0D00000000
  %3408 = fmul fast float %3400, 0x3FD0432880000000
  %3409 = fmul fast float %2632, 0xBFEF110800000000
  %3410 = fmul fast float %3409, %3118
  %3411 = fadd fast float %3410, 1.000000e+00
  %3412 = fsub fast float %3411, %3407
  %3413 = fadd fast float %3412, %3408
  %3414 = fdiv fast float %3406, %3413
  %3415 = call float @dx.op.unary.f32(i32 7, float %3414)  ; Saturate(value)
  %3416 = fsub fast float %3415, %2632
  %3417 = fmul fast float %3416, %3352
  %3418 = fadd fast float %3417, %2632
  %3419 = fmul fast float %3355, %3221
  %3420 = fadd fast float %3419, %2634
  %3421 = fmul fast float %3358, %3218
  %3422 = fmul fast float %3358, %3219
  %3423 = fmul fast float %3358, %3220
  %3424 = fadd fast float %3421, %2625
  %3425 = fadd fast float %3422, %2626
  %3426 = fadd fast float %3423, %2627
  br label %3449

; <label>:3427                                    ; preds = %3385
  %3428 = icmp eq i32 %3341, 8
  br i1 %3428, label %3429, label %3449

; <label>:3429                                    ; preds = %3427
  %3430 = fmul fast float %3346, %3119
  %3431 = fmul fast float %3346, %3120
  %3432 = fadd fast float %3430, %2620
  %3433 = fadd fast float %3431, %2621
  %3434 = call float @dx.op.binary.f32(i32 36, float %2633, float %3121)  ; FMin(a,b)
  %3435 = fsub fast float %3434, %2633
  %3436 = fmul fast float %3435, %3349
  %3437 = fadd fast float %3436, %2633
  %3438 = fsub fast float %3118, %2632
  %3439 = fmul fast float %3352, %3438
  %3440 = fadd fast float %3439, %2632
  %3441 = fmul fast float %3355, %3221
  %3442 = fadd fast float %3441, %2634
  %3443 = fmul fast float %3358, %3218
  %3444 = fmul fast float %3358, %3219
  %3445 = fmul fast float %3358, %3220
  %3446 = fadd fast float %3443, %2625
  %3447 = fadd fast float %3444, %2626
  %3448 = fadd fast float %3445, %2627
  br label %3449

; <label>:3449                                    ; preds = %3429, %3427, %3387, %3360, %3332, %2817, %2636, %2619
  %3450 = phi float [ %2620, %3332 ], [ %2620, %2817 ], [ %2620, %2619 ], [ %2620, %2636 ], [ %3365, %3360 ], [ %3390, %3387 ], [ %2620, %3427 ], [ %3432, %3429 ]
  %3451 = phi float [ %2621, %3332 ], [ %2621, %2817 ], [ %2621, %2619 ], [ %2621, %2636 ], [ %3366, %3360 ], [ %3391, %3387 ], [ %2621, %3427 ], [ %3433, %3429 ]
  %3452 = phi float [ %3333, %3332 ], [ %2622, %2817 ], [ %2622, %2619 ], [ %2622, %2636 ], [ %3333, %3360 ], [ %3333, %3387 ], [ %3333, %3427 ], [ %3333, %3429 ]
  %3453 = phi float [ %3334, %3332 ], [ %2623, %2817 ], [ %2623, %2619 ], [ %2623, %2636 ], [ %3334, %3360 ], [ %3334, %3387 ], [ %3334, %3427 ], [ %3334, %3429 ]
  %3454 = phi float [ %3335, %3332 ], [ %2624, %2817 ], [ %2624, %2619 ], [ %2624, %2636 ], [ %3335, %3360 ], [ %3335, %3387 ], [ %3335, %3427 ], [ %3335, %3429 ]
  %3455 = phi float [ %2625, %3332 ], [ %2625, %2817 ], [ %2625, %2619 ], [ %2625, %2636 ], [ %3382, %3360 ], [ %3424, %3387 ], [ %2625, %3427 ], [ %3446, %3429 ]
  %3456 = phi float [ %2626, %3332 ], [ %2626, %2817 ], [ %2626, %2619 ], [ %2626, %2636 ], [ %3383, %3360 ], [ %3425, %3387 ], [ %2626, %3427 ], [ %3447, %3429 ]
  %3457 = phi float [ %2627, %3332 ], [ %2627, %2817 ], [ %2627, %2619 ], [ %2627, %2636 ], [ %3384, %3360 ], [ %3426, %3387 ], [ %2627, %3427 ], [ %3448, %3429 ]
  %3458 = phi float [ %3336, %3332 ], [ %2628, %2817 ], [ %2628, %2619 ], [ %2628, %2636 ], [ %3336, %3360 ], [ %3336, %3387 ], [ %3336, %3427 ], [ %3336, %3429 ]
  %3459 = phi float [ %3337, %3332 ], [ %2629, %2817 ], [ %2629, %2619 ], [ %2629, %2636 ], [ %3337, %3360 ], [ %3337, %3387 ], [ %3337, %3427 ], [ %3337, %3429 ]
  %3460 = phi float [ %3338, %3332 ], [ %2630, %2817 ], [ %2630, %2619 ], [ %2630, %2636 ], [ %3338, %3360 ], [ %3338, %3387 ], [ %3338, %3427 ], [ %3338, %3429 ]
  %3461 = phi float [ %3339, %3332 ], [ %2631, %2817 ], [ %2631, %2619 ], [ %2631, %2636 ], [ %3339, %3360 ], [ %3339, %3387 ], [ %3339, %3427 ], [ %3339, %3429 ]
  %3462 = phi float [ %2632, %3332 ], [ %2632, %2817 ], [ %2632, %2619 ], [ %2632, %2636 ], [ %3372, %3360 ], [ %3418, %3387 ], [ %2632, %3427 ], [ %3440, %3429 ]
  %3463 = phi float [ %2633, %3332 ], [ %2633, %2817 ], [ %2633, %2619 ], [ %2633, %2636 ], [ %3369, %3360 ], [ %3395, %3387 ], [ %2633, %3427 ], [ %3437, %3429 ]
  %3464 = phi float [ %2634, %3332 ], [ %2634, %2817 ], [ %2634, %2619 ], [ %2634, %2636 ], [ %3375, %3360 ], [ %3420, %3387 ], [ %2634, %3427 ], [ %3442, %3429 ]
  %3465 = phi float [ %3340, %3332 ], [ %2635, %2817 ], [ %2635, %2619 ], [ %2635, %2636 ], [ %3340, %3360 ], [ %3340, %3387 ], [ %3340, %3427 ], [ %3340, %3429 ]
  %3466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3467 = extractvalue %dx.types.CBufRet.f32 %3466, 0
  %3468 = call float @dx.op.dot2.f32(i32 54, float %3450, float %3451, float %3450, float %3451)  ; Dot2(ax,ay,bx,by)
  %3469 = fmul fast float %3468, 0x3FE3333340000000
  %3470 = fsub fast float 1.000000e+00, %3469
  %3471 = call float @dx.op.dot3.f32(i32 55, float %3450, float %3451, float %3470, float %3450, float %3451, float %3470)  ; Dot3(ax,ay,az,bx,by,bz)
  %3472 = call float @dx.op.unary.f32(i32 25, float %3471)  ; Rsqrt(value)
  %3473 = fmul fast float %3472, %3450
  %3474 = fmul fast float %3472, %3451
  %3475 = fmul fast float %3470, %3472
  %3476 = fmul fast float %3475, %86
  %3477 = fmul fast float %3475, %88
  %3478 = fmul fast float %3475, %90
  %3479 = fmul fast float %3473, %58
  %3480 = fmul fast float %3473, %59
  %3481 = fmul fast float %3473, %60
  %3482 = fadd fast float %3476, %3479
  %3483 = fadd fast float %3477, %3480
  %3484 = fadd fast float %3478, %3481
  %3485 = fmul fast float %100, %3474
  %3486 = fmul fast float %101, %3474
  %3487 = fmul fast float %102, %3474
  %3488 = fadd fast float %3482, %3485
  %3489 = fadd fast float %3483, %3486
  %3490 = fadd fast float %3484, %3487
  %3491 = call float @dx.op.dot3.f32(i32 55, float %3488, float %3489, float %3490, float %3488, float %3489, float %3490)  ; Dot3(ax,ay,az,bx,by,bz)
  %3492 = call float @dx.op.unary.f32(i32 25, float %3491)  ; Rsqrt(value)
  %3493 = fmul fast float %3488, %3492
  %3494 = fmul fast float %3489, %3492
  %3495 = fmul fast float %3490, %3492
  %3496 = fadd fast float %3461, 0xBFB99999A0000000
  %3497 = call float @dx.op.unary.f32(i32 7, float %3496)  ; Saturate(value)
  %3498 = fmul fast float %3497, 0x3FF1C71C80000000
  %3499 = call float @dx.op.binary.f32(i32 36, float %3461, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3500 = fsub fast float 1.000000e+00, %3498
  %3501 = call float @dx.op.unary.f32(i32 7, float %3500)  ; Saturate(value)
  %3502 = fmul fast float %3501, %3458
  %3503 = fmul fast float %3501, %3459
  %3504 = fmul fast float %3501, %3460
  %3505 = call float @dx.op.unary.f32(i32 7, float %3502)  ; Saturate(value)
  %3506 = call float @dx.op.unary.f32(i32 7, float %3503)  ; Saturate(value)
  %3507 = call float @dx.op.unary.f32(i32 7, float %3504)  ; Saturate(value)
  %3508 = fmul fast float %3498, %3458
  %3509 = fmul fast float %3498, %3459
  %3510 = fmul fast float %3498, %3460
  %3511 = fadd fast float %3508, %3499
  %3512 = fadd fast float %3509, %3499
  %3513 = fadd fast float %3510, %3499
  %3514 = call float @dx.op.unary.f32(i32 7, float %3511)  ; Saturate(value)
  %3515 = call float @dx.op.unary.f32(i32 7, float %3512)  ; Saturate(value)
  %3516 = call float @dx.op.unary.f32(i32 7, float %3513)  ; Saturate(value)
  %3517 = call float @dx.op.unary.f32(i32 7, float %3462)  ; Saturate(value)
  %3518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3519 = extractvalue %dx.types.ResRet.i32 %3518, 0
  %3520 = and i32 %3519, 1
  %3521 = icmp eq i32 %3520, 0
  br i1 %3521, label %3536, label %3522

; <label>:3522                                    ; preds = %3449
  %3523 = call float @dx.op.binary.f32(i32 35, float %3506, float %3507)  ; FMax(a,b)
  %3524 = call float @dx.op.binary.f32(i32 35, float %3505, float %3523)  ; FMax(a,b)
  %3525 = fcmp fast ogt float %3524, 0.000000e+00
  %3526 = bitcast float %3524 to i32
  %3527 = sub nsw i32 2129859010, %3526
  %3528 = bitcast i32 %3527 to float
  %3529 = select i1 %3525, float %3528, float 0.000000e+00
  %3530 = fmul fast float %3505, %3455
  %3531 = fmul fast float %3506, %3456
  %3532 = fmul fast float %3507, %3457
  %3533 = fmul fast float %3530, %3529
  %3534 = fmul fast float %3531, %3529
  %3535 = fmul fast float %3532, %3529
  br label %3536

; <label>:3536                                    ; preds = %3522, %3449
  %3537 = phi float [ %3533, %3522 ], [ %3455, %3449 ]
  %3538 = phi float [ %3534, %3522 ], [ %3456, %3449 ]
  %3539 = phi float [ %3535, %3522 ], [ %3457, %3449 ]
  %3540 = fadd fast float %3505, 0xBFD51EB860000000
  %3541 = fadd fast float %3506, 0xBFD51EB860000000
  %3542 = fadd fast float %3507, 0xBFD51EB860000000
  %3543 = fmul fast float %3540, %3540
  %3544 = fmul fast float %3541, %3541
  %3545 = fmul fast float %3542, %3542
  %3546 = fmul fast float %3543, %3543
  %3547 = fmul fast float %3546, 1.000000e+02
  %3548 = fmul fast float %3544, %3544
  %3549 = fmul fast float %3548, 1.000000e+02
  %3550 = fmul fast float %3545, %3545
  %3551 = fmul fast float %3550, 1.000000e+02
  %3552 = fadd fast float %3547, 3.500000e+00
  %3553 = fadd fast float %3549, 3.500000e+00
  %3554 = fadd fast float %3551, 3.500000e+00
  %3555 = call float @dx.op.binary.f32(i32 35, float %3537, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3556 = call float @dx.op.binary.f32(i32 35, float %3538, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3557 = call float @dx.op.binary.f32(i32 35, float %3539, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3558 = fdiv fast float %3552, %3555
  %3559 = fdiv fast float %3553, %3556
  %3560 = fdiv fast float %3554, %3557
  %3561 = fmul fast float %3464, 0xBFF7154760000000
  %3562 = fmul fast float %3561, %3558
  %3563 = call float @dx.op.unary.f32(i32 21, float %3562)  ; Exp(value)
  %3564 = fmul fast float %3563, 2.500000e-01
  %3565 = fmul fast float %3464, 0xBFDEC709E0000000
  %3566 = fmul fast float %3565, %3558
  %3567 = call float @dx.op.unary.f32(i32 21, float %3566)  ; Exp(value)
  %3568 = fmul fast float %3567, 7.500000e-01
  %3569 = fmul fast float %3561, %3559
  %3570 = call float @dx.op.unary.f32(i32 21, float %3569)  ; Exp(value)
  %3571 = fmul fast float %3570, 2.500000e-01
  %3572 = fmul fast float %3565, %3559
  %3573 = call float @dx.op.unary.f32(i32 21, float %3572)  ; Exp(value)
  %3574 = fmul fast float %3573, 7.500000e-01
  %3575 = fmul fast float %3561, %3560
  %3576 = call float @dx.op.unary.f32(i32 21, float %3575)  ; Exp(value)
  %3577 = fmul fast float %3576, 2.500000e-01
  %3578 = fmul fast float %3565, %3560
  %3579 = call float @dx.op.unary.f32(i32 21, float %3578)  ; Exp(value)
  %3580 = fmul fast float %3579, 7.500000e-01
  %3581 = fadd fast float %3564, %3568
  %3582 = fadd fast float %3571, %3574
  %3583 = fadd fast float %3577, %3580
  %3584 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3585 = extractvalue %dx.types.CBufRet.i32 %3584, 3
  %3586 = and i32 %3585, 8
  %3587 = icmp ne i32 %3586, 0
  %3588 = call float @dx.op.binary.f32(i32 35, float %3505, float %3458)  ; FMax(a,b)
  %3589 = call float @dx.op.binary.f32(i32 35, float %3506, float %3458)  ; FMax(a,b)
  %3590 = call float @dx.op.binary.f32(i32 35, float %3507, float %3458)  ; FMax(a,b)
  %3591 = call float @dx.op.dot3.f32(i32 55, float %3505, float %3506, float %3507, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3592 = select i1 %199, float %3458, float %3505
  %3593 = select i1 %199, float %3591, float %3506
  %3594 = select i1 %199, float 1.000000e+00, float %3507
  %3595 = select i1 %3587, float %3588, float %3592
  %3596 = select i1 %3587, float %3589, float %3593
  %3597 = select i1 %3587, float %3590, float %3594
  %3598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3599 = extractvalue %dx.types.CBufRet.f32 %3598, 0
  %3600 = extractvalue %dx.types.CBufRet.f32 %3598, 1
  %3601 = extractvalue %dx.types.CBufRet.f32 %3598, 2
  %3602 = fadd fast float %3599, %160
  %3603 = fadd fast float %3600, %161
  %3604 = fadd fast float %3601, %162
  %3605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3606 = extractvalue %dx.types.CBufRet.f32 %3605, 0
  %3607 = extractvalue %dx.types.CBufRet.f32 %3605, 1
  %3608 = fsub fast float %3602, %3606
  %3609 = fsub fast float %3603, %3607
  %3610 = fmul fast float %3608, %3608
  %3611 = fmul fast float %3609, %3609
  %3612 = fadd fast float %3610, %3611
  %3613 = call float @dx.op.unary.f32(i32 24, float %3612)  ; Sqrt(value)
  %3614 = extractvalue %dx.types.CBufRet.f32 %3605, 2
  %3615 = fcmp fast olt float %3613, %3614
  br i1 %3615, label %3616, label %3683

; <label>:3616                                    ; preds = %3536
  %3617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3618 = extractvalue %dx.types.CBufRet.f32 %3617, 0
  %3619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3620 = extractvalue %dx.types.CBufRet.f32 %3619, 0
  %3621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3622 = extractvalue %dx.types.CBufRet.f32 %3621, 0
  %3623 = extractvalue %dx.types.CBufRet.f32 %3617, 1
  %3624 = extractvalue %dx.types.CBufRet.f32 %3619, 1
  %3625 = extractvalue %dx.types.CBufRet.f32 %3621, 1
  %3626 = extractvalue %dx.types.CBufRet.f32 %3617, 3
  %3627 = extractvalue %dx.types.CBufRet.f32 %3619, 3
  %3628 = extractvalue %dx.types.CBufRet.f32 %3621, 3
  %3629 = fadd fast float %3626, %3602
  %3630 = fadd fast float %3627, %3603
  %3631 = fadd fast float %3628, %3604
  %3632 = fmul fast float %3629, %3618
  %3633 = call float @dx.op.tertiary.f32(i32 46, float %3630, float %3620, float %3632)  ; FMad(a,b,c)
  %3634 = call float @dx.op.tertiary.f32(i32 46, float %3631, float %3622, float %3633)  ; FMad(a,b,c)
  %3635 = fmul fast float %3629, %3623
  %3636 = call float @dx.op.tertiary.f32(i32 46, float %3630, float %3624, float %3635)  ; FMad(a,b,c)
  %3637 = call float @dx.op.tertiary.f32(i32 46, float %3631, float %3625, float %3636)  ; FMad(a,b,c)
  %3638 = fsub fast float %3634, %3626
  %3639 = fsub fast float %3637, %3627
  %3640 = fsub fast float %3638, %3606
  %3641 = fadd fast float %3640, %3614
  %3642 = fsub fast float %3639, %3607
  %3643 = fadd fast float %3642, %3614
  %3644 = extractvalue %dx.types.CBufRet.f32 %3605, 3
  %3645 = fmul fast float %3641, %3644
  %3646 = fmul fast float %3643, %3644
  %3647 = call float @dx.op.unary.f32(i32 7, float %3645)  ; Saturate(value)
  %3648 = call float @dx.op.unary.f32(i32 7, float %3646)  ; Saturate(value)
  %3649 = fsub fast float 1.000000e+00, %3647
  %3650 = fsub fast float 1.000000e+00, %3648
  %3651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %23, float %3649, float %3650, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3652 = extractvalue %dx.types.ResRet.f32 %3651, 0
  %3653 = fcmp fast ugt float %3652, 0.000000e+00
  br i1 %3653, label %3654, label %3957

; <label>:3654                                    ; preds = %3616
  %3655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3656 = extractvalue %dx.types.CBufRet.f32 %3655, 2
  %3657 = fmul fast float %3656, %3652
  %3658 = extractvalue %dx.types.CBufRet.f32 %3655, 3
  %3659 = fadd fast float %3658, %3657
  %3660 = extractvalue %dx.types.CBufRet.f32 %3621, 2
  %3661 = fadd fast float %3659, %3628
  %3662 = fmul fast float %3634, %3622
  %3663 = call float @dx.op.tertiary.f32(i32 46, float %3637, float %3625, float %3662)  ; FMad(a,b,c)
  %3664 = call float @dx.op.tertiary.f32(i32 46, float %3661, float %3660, float %3663)  ; FMad(a,b,c)
  %3665 = fsub fast float %3664, %3628
  %3666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3667 = extractvalue %dx.types.CBufRet.f32 %3666, 2
  %3668 = fsub fast float %3665, %3667
  %3669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %23, float %3649, float %3650, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3670 = extractvalue %dx.types.ResRet.f32 %3669, 0
  %3671 = extractvalue %dx.types.ResRet.f32 %3669, 1
  %3672 = extractvalue %dx.types.ResRet.f32 %3669, 2
  %3673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %23, float %3649, float %3650, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3674 = extractvalue %dx.types.ResRet.f32 %3673, 0
  %3675 = extractvalue %dx.types.ResRet.f32 %3673, 1
  %3676 = extractvalue %dx.types.ResRet.f32 %3673, 2
  %3677 = fadd fast float %3674, %3670
  %3678 = fmul fast float %3677, 0x3F847AE140000000
  %3679 = fadd fast float %3675, %3671
  %3680 = fmul fast float %3679, 0x3F847AE140000000
  %3681 = fadd fast float %3676, %3672
  %3682 = fmul fast float %3681, 0x3F847AE140000000
  br label %3957

; <label>:3683                                    ; preds = %3536
  %3684 = and i32 %178, 1
  %3685 = icmp eq i32 %3684, 0
  br i1 %3685, label %3957, label %3686

; <label>:3686                                    ; preds = %3683
  %3687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3688 = extractvalue %dx.types.CBufRet.f32 %3687, 0
  %3689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3690 = extractvalue %dx.types.CBufRet.f32 %3689, 0
  %3691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3692 = extractvalue %dx.types.CBufRet.f32 %3691, 0
  %3693 = extractvalue %dx.types.CBufRet.f32 %3687, 1
  %3694 = extractvalue %dx.types.CBufRet.f32 %3689, 1
  %3695 = extractvalue %dx.types.CBufRet.f32 %3691, 1
  %3696 = extractvalue %dx.types.CBufRet.f32 %3687, 3
  %3697 = extractvalue %dx.types.CBufRet.f32 %3689, 3
  %3698 = extractvalue %dx.types.CBufRet.f32 %3691, 3
  %3699 = fadd fast float %3696, %3602
  %3700 = fadd fast float %3697, %3603
  %3701 = fadd fast float %3698, %3604
  %3702 = fmul fast float %3699, %3688
  %3703 = call float @dx.op.tertiary.f32(i32 46, float %3700, float %3690, float %3702)  ; FMad(a,b,c)
  %3704 = call float @dx.op.tertiary.f32(i32 46, float %3701, float %3692, float %3703)  ; FMad(a,b,c)
  %3705 = fmul fast float %3699, %3693
  %3706 = call float @dx.op.tertiary.f32(i32 46, float %3700, float %3694, float %3705)  ; FMad(a,b,c)
  %3707 = call float @dx.op.tertiary.f32(i32 46, float %3701, float %3695, float %3706)  ; FMad(a,b,c)
  %3708 = fsub fast float %3704, %3696
  %3709 = fsub fast float %3707, %3697
  %3710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3711 = extractvalue %dx.types.CBufRet.f32 %3710, 0
  %3712 = extractvalue %dx.types.CBufRet.f32 %3710, 1
  %3713 = extractvalue %dx.types.CBufRet.f32 %3710, 2
  %3714 = extractvalue %dx.types.CBufRet.f32 %3710, 3
  %3715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3716 = extractvalue %dx.types.CBufRet.f32 %3715, 3
  %3717 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3718 = extractvalue %dx.types.CBufRet.i32 %3717, 0
  %3719 = extractvalue %dx.types.CBufRet.i32 %3717, 1
  %3720 = udiv i32 %3719, %3718
  %3721 = fsub fast float %3708, %3711
  %3722 = fsub fast float %3709, %3712
  %3723 = call float @dx.op.binary.f32(i32 35, float %3721, float 0.000000e+00)  ; FMax(a,b)
  %3724 = call float @dx.op.binary.f32(i32 35, float %3722, float 0.000000e+00)  ; FMax(a,b)
  %3725 = call float @dx.op.binary.f32(i32 36, float %3723, float %3713)  ; FMin(a,b)
  %3726 = call float @dx.op.binary.f32(i32 36, float %3724, float %3714)  ; FMin(a,b)
  %3727 = add i32 %3718, -1
  %3728 = add i32 %3720, -1
  %3729 = fmul fast float %3725, %3716
  %3730 = fmul fast float %3726, %3716
  %3731 = fptoui float %3729 to i32
  %3732 = fptoui float %3730 to i32
  %3733 = call i32 @dx.op.binary.i32(i32 40, i32 %3731, i32 %3727)  ; UMin(a,b)
  %3734 = call i32 @dx.op.binary.i32(i32 40, i32 %3732, i32 %3728)  ; UMin(a,b)
  %3735 = mul i32 %3734, %3718
  %3736 = add i32 %3735, %3733
  %3737 = shl i32 %3736, 2
  %3738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3737, i32 undef)  ; BufferLoad(srv,index,wot)
  %3739 = extractvalue %dx.types.ResRet.i32 %3738, 0
  %3740 = icmp eq i32 %3739, -1
  br i1 %3740, label %3957, label %3741

; <label>:3741                                    ; preds = %3686
  %3742 = mul i32 %3739, 148
  %3743 = add i32 %3742, 4
  %3744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3743, i32 undef)  ; BufferLoad(srv,index,wot)
  %3745 = extractvalue %dx.types.ResRet.f32 %3744, 0
  %3746 = add i32 %3742, 8
  %3747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3748 = extractvalue %dx.types.ResRet.f32 %3747, 0
  %3749 = add i32 %3742, 36
  %3750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.f32 %3750, 0
  %3752 = add i32 %3742, 60
  %3753 = add i32 %3742, 92
  %3754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3753, i32 undef)  ; BufferLoad(srv,index,wot)
  %3755 = extractvalue %dx.types.ResRet.i32 %3754, 0
  %3756 = add i32 %3742, 116
  %3757 = fsub fast float %3708, %3745
  %3758 = fsub fast float %3709, %3748
  %3759 = fmul fast float %3716, %3757
  %3760 = fmul fast float %3716, %3758
  %3761 = call float @dx.op.unary.f32(i32 7, float %3759)  ; Saturate(value)
  %3762 = call float @dx.op.unary.f32(i32 7, float %3760)  ; Saturate(value)
  %3763 = fsub fast float 1.000000e+00, %3762
  %3764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3765 = extractvalue %dx.types.CBufRet.f32 %3764, 2
  %3766 = call float @dx.op.unary.f32(i32 83, float %3761)  ; DerivCoarseX(value)
  %3767 = call float @dx.op.unary.f32(i32 83, float %3763)  ; DerivCoarseX(value)
  %3768 = call float @dx.op.unary.f32(i32 84, float %3761)  ; DerivCoarseY(value)
  %3769 = call float @dx.op.unary.f32(i32 84, float %3763)  ; DerivCoarseY(value)
  %3770 = fmul fast float %3766, %3765
  %3771 = fmul fast float %3767, %3765
  %3772 = fmul fast float %3768, %3765
  %3773 = fmul fast float %3769, %3765
  %3774 = call float @dx.op.dot2.f32(i32 54, float %3772, float %3773, float %3772, float %3773)  ; Dot2(ax,ay,bx,by)
  %3775 = call float @dx.op.dot2.f32(i32 54, float %3770, float %3771, float %3770, float %3771)  ; Dot2(ax,ay,bx,by)
  %3776 = call float @dx.op.binary.f32(i32 35, float %3775, float %3774)  ; FMax(a,b)
  %3777 = call float @dx.op.unary.f32(i32 23, float %3776)  ; Log(value)
  %3778 = fmul fast float %3777, 5.000000e-01
  %3779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %3780 = extractvalue %dx.types.CBufRet.f32 %3779, 1
  %3781 = fadd fast float %3780, %3778
  %3782 = call float @dx.op.binary.f32(i32 35, float %3781, float 0.000000e+00)  ; FMax(a,b)
  %3783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3784 = extractvalue %dx.types.CBufRet.f32 %3783, 3
  %3785 = fadd fast float %3784, %3782
  %3786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3787 = extractvalue %dx.types.CBufRet.f32 %3786, 3
  %3788 = fadd fast float %3785, %3787
  %3789 = add i32 %3755, 0
  %3790 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3789, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3791 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3790, i32 0)  ; GetDimensions(handle,mipLevel)
  %3792 = extractvalue %dx.types.Dimensions %3791, 0
  %3793 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3792)  ; FirstbitLo(value)
  %3794 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3795 = extractvalue %dx.types.CBufRet.i32 %3794, 1
  %3796 = sub nsw i32 %3795, %3793
  %3797 = sitofp i32 %3796 to float
  %3798 = fsub fast float %3788, %3797
  %3799 = call float @dx.op.binary.f32(i32 35, float %3798, float 0.000000e+00)  ; FMax(a,b)
  %3800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3790, %dx.types.Handle %22, float %3761, float %3763, float %3751, float undef, i32 0, i32 0, i32 undef, float %3799)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3801 = extractvalue %dx.types.ResRet.f32 %3800, 0
  %3802 = fcmp ule float %3801, 0x3FE0101020000000
  %3803 = extractvalue %dx.types.CBufRet.i32 %3794, 0
  %3804 = and i32 %3803, 128
  %3805 = icmp ne i32 %3804, 0
  %3806 = and i1 %3802, %3805
  br i1 %3806, label %3957, label %3807

; <label>:3807                                    ; preds = %3741
  %3808 = add i32 %3742, 20
  %3809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3808, i32 undef)  ; BufferLoad(srv,index,wot)
  %3810 = extractvalue %dx.types.ResRet.f32 %3809, 0
  %3811 = add i32 %3742, 24
  %3812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3813 = extractvalue %dx.types.ResRet.f32 %3812, 0
  %3814 = add i32 %3742, 40
  %3815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3816 = extractvalue %dx.types.ResRet.f32 %3815, 0
  %3817 = add i32 %3742, 96
  %3818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.i32 %3818, 0
  %3820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3821 = extractvalue %dx.types.CBufRet.f32 %3820, 2
  %3822 = fmul fast float %3821, %3761
  %3823 = fmul fast float %3821, %3763
  %3824 = extractvalue %dx.types.CBufRet.f32 %3820, 3
  %3825 = fadd fast float %3822, %3824
  %3826 = fadd fast float %3823, %3824
  %3827 = add i32 %3819, 0
  %3828 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3827, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3829 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3828, i32 0)  ; GetDimensions(handle,mipLevel)
  %3830 = extractvalue %dx.types.Dimensions %3829, 0
  %3831 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3830)  ; FirstbitLo(value)
  %3832 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3833 = extractvalue %dx.types.CBufRet.i32 %3832, 1
  %3834 = sub nsw i32 %3833, %3831
  %3835 = sitofp i32 %3834 to float
  %3836 = fsub fast float %3785, %3835
  %3837 = call float @dx.op.binary.f32(i32 35, float %3836, float 0.000000e+00)  ; FMax(a,b)
  %3838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3828, %dx.types.Handle %22, float %3825, float %3826, float %3816, float undef, i32 0, i32 0, i32 undef, float %3837)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3839 = extractvalue %dx.types.ResRet.f32 %3838, 0
  %3840 = fmul fast float %3839, %3810
  %3841 = fadd fast float %3840, %3813
  %3842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3843 = extractvalue %dx.types.CBufRet.f32 %3842, 0
  %3844 = extractvalue %dx.types.CBufRet.f32 %3842, 1
  %3845 = extractvalue %dx.types.CBufRet.f32 %3842, 2
  %3846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3847 = extractvalue %dx.types.CBufRet.f32 %3846, 3
  %3848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3849 = extractvalue %dx.types.CBufRet.f32 %3848, 3
  %3850 = extractvalue %dx.types.CBufRet.f32 %3842, 3
  %3851 = fadd fast float %3847, %3708
  %3852 = fadd fast float %3849, %3709
  %3853 = fadd fast float %3841, %3850
  %3854 = fmul fast float %3851, %3843
  %3855 = call float @dx.op.tertiary.f32(i32 46, float %3852, float %3844, float %3854)  ; FMad(a,b,c)
  %3856 = call float @dx.op.tertiary.f32(i32 46, float %3853, float %3845, float %3855)  ; FMad(a,b,c)
  %3857 = fsub fast float %3856, %3850
  %3858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3859 = extractvalue %dx.types.CBufRet.f32 %3858, 2
  %3860 = fsub fast float %3857, %3859
  %3861 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3862 = extractvalue %dx.types.CBufRet.i32 %3861, 0
  %3863 = call i32 @dx.op.binary.i32(i32 40, i32 %3739, i32 %3862)  ; UMin(a,b)
  %3864 = mul i32 %3863, 36
  %3865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3866 = extractvalue %dx.types.ResRet.i32 %3865, 0
  %3867 = add i32 %3864, 4
  %3868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3869 = extractvalue %dx.types.CBufRet.f32 %3868, 0
  %3870 = fmul fast float %3869, %3761
  %3871 = fmul fast float %3869, %3763
  %3872 = extractvalue %dx.types.CBufRet.f32 %3868, 1
  %3873 = fadd fast float %3870, %3872
  %3874 = fadd fast float %3871, %3872
  %3875 = icmp eq i32 %3866, 0
  br i1 %3875, label %3944, label %3876

; <label>:3876                                    ; preds = %3807
  br label %3877

; <label>:3877                                    ; preds = %3934, %3876
  %3878 = phi float [ %3935, %3934 ], [ 0.000000e+00, %3876 ]
  %3879 = phi float [ %3936, %3934 ], [ 0.000000e+00, %3876 ]
  %3880 = phi float [ %3937, %3934 ], [ 0.000000e+00, %3876 ]
  %3881 = phi float [ %3938, %3934 ], [ 0.000000e+00, %3876 ]
  %3882 = phi float [ %3939, %3934 ], [ 0.000000e+00, %3876 ]
  %3883 = phi float [ %3940, %3934 ], [ 0.000000e+00, %3876 ]
  %3884 = phi i32 [ %3941, %3934 ], [ 0, %3876 ]
  %3885 = shl i32 %3884, 2
  %3886 = add i32 %3752, %3885
  %3887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3886, i32 undef)  ; BufferLoad(srv,index,wot)
  %3888 = extractvalue %dx.types.ResRet.f32 %3887, 0
  %3889 = add i32 %3756, %3885
  %3890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3889, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.i32 %3890, 0
  %3892 = add i32 %3891, 0
  %3893 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3892, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3894 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3893, i32 0)  ; GetDimensions(handle,mipLevel)
  %3895 = extractvalue %dx.types.Dimensions %3894, 0
  %3896 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3895)  ; FirstbitLo(value)
  %3897 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3898 = extractvalue %dx.types.CBufRet.i32 %3897, 1
  %3899 = sub nsw i32 %3898, %3896
  %3900 = sitofp i32 %3899 to float
  %3901 = fsub fast float %3785, %3900
  %3902 = call float @dx.op.binary.f32(i32 35, float %3901, float 0.000000e+00)  ; FMax(a,b)
  %3903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3893, %dx.types.Handle %22, float %3873, float %3874, float %3888, float undef, i32 0, i32 0, i32 undef, float %3902)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3904 = extractvalue %dx.types.ResRet.f32 %3903, 0
  %3905 = fcmp fast ogt float %3904, 0.000000e+00
  br i1 %3905, label %3906, label %3934

; <label>:3906                                    ; preds = %3877
  %3907 = add i32 %3867, %3885
  %3908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3907, i32 undef)  ; BufferLoad(srv,index,wot)
  %3909 = extractvalue %dx.types.ResRet.i32 %3908, 0
  %3910 = and i32 %3909, 32767
  %3911 = mul nuw nsw i32 %3910, 928
  %3912 = add nuw nsw i32 %3911, 48
  %3913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3912, i32 undef)  ; BufferLoad(srv,index,wot)
  %3914 = extractvalue %dx.types.ResRet.f32 %3913, 0
  %3915 = extractvalue %dx.types.ResRet.f32 %3913, 1
  %3916 = extractvalue %dx.types.ResRet.f32 %3913, 2
  %3917 = add nuw nsw i32 %3911, 60
  %3918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3919 = extractvalue %dx.types.ResRet.f32 %3918, 0
  %3920 = extractvalue %dx.types.ResRet.f32 %3918, 1
  %3921 = extractvalue %dx.types.ResRet.f32 %3918, 2
  %3922 = fmul fast float %3914, %3904
  %3923 = fmul fast float %3915, %3904
  %3924 = fmul fast float %3916, %3904
  %3925 = fadd fast float %3922, %3878
  %3926 = fadd fast float %3923, %3879
  %3927 = fadd fast float %3924, %3880
  %3928 = fmul fast float %3919, %3904
  %3929 = fmul fast float %3920, %3904
  %3930 = fmul fast float %3921, %3904
  %3931 = fadd fast float %3928, %3881
  %3932 = fadd fast float %3929, %3882
  %3933 = fadd fast float %3930, %3883
  br label %3934

; <label>:3934                                    ; preds = %3906, %3877
  %3935 = phi float [ %3925, %3906 ], [ %3878, %3877 ]
  %3936 = phi float [ %3926, %3906 ], [ %3879, %3877 ]
  %3937 = phi float [ %3927, %3906 ], [ %3880, %3877 ]
  %3938 = phi float [ %3931, %3906 ], [ %3881, %3877 ]
  %3939 = phi float [ %3932, %3906 ], [ %3882, %3877 ]
  %3940 = phi float [ %3933, %3906 ], [ %3883, %3877 ]
  %3941 = add nuw i32 %3884, 1
  %3942 = icmp eq i32 %3941, %3866
  br i1 %3942, label %3943, label %3877

; <label>:3943                                    ; preds = %3934
  br label %3944

; <label>:3944                                    ; preds = %3943, %3807
  %3945 = phi float [ 0.000000e+00, %3807 ], [ %3935, %3943 ]
  %3946 = phi float [ 0.000000e+00, %3807 ], [ %3936, %3943 ]
  %3947 = phi float [ 0.000000e+00, %3807 ], [ %3937, %3943 ]
  %3948 = phi float [ 0.000000e+00, %3807 ], [ %3938, %3943 ]
  %3949 = phi float [ 0.000000e+00, %3807 ], [ %3939, %3943 ]
  %3950 = phi float [ 0.000000e+00, %3807 ], [ %3940, %3943 ]
  %3951 = fadd fast float %3948, %3945
  %3952 = fmul fast float %3951, 0x3F847AE140000000
  %3953 = fadd fast float %3949, %3946
  %3954 = fmul fast float %3953, 0x3F847AE140000000
  %3955 = fadd fast float %3950, %3947
  %3956 = fmul fast float %3955, 0x3F847AE140000000
  br label %3957

; <label>:3957                                    ; preds = %3944, %3741, %3686, %3683, %3654, %3616
  %3958 = phi float [ %3668, %3654 ], [ -1.310720e+05, %3616 ], [ %3860, %3944 ], [ -1.310720e+05, %3686 ], [ -1.310720e+05, %3741 ], [ -1.310720e+05, %3683 ]
  %3959 = phi float [ %3678, %3654 ], [ 0.000000e+00, %3616 ], [ %3952, %3944 ], [ 0.000000e+00, %3686 ], [ 0.000000e+00, %3741 ], [ 0.000000e+00, %3683 ]
  %3960 = phi float [ %3680, %3654 ], [ 0.000000e+00, %3616 ], [ %3954, %3944 ], [ 0.000000e+00, %3686 ], [ 0.000000e+00, %3741 ], [ 0.000000e+00, %3683 ]
  %3961 = phi float [ %3682, %3654 ], [ 0.000000e+00, %3616 ], [ %3956, %3944 ], [ 0.000000e+00, %3686 ], [ 0.000000e+00, %3741 ], [ 0.000000e+00, %3683 ]
  %3962 = phi i1 [ true, %3654 ], [ false, %3616 ], [ true, %3944 ], [ false, %3686 ], [ false, %3741 ], [ false, %3683 ]
  %3963 = and i32 %178, 3
  %3964 = icmp eq i32 %3963, 1
  %3965 = select i1 %3964, float 1.000000e+00, float 0.000000e+00
  %3966 = fsub fast float %3958, %162
  %3967 = call float @dx.op.unary.f32(i32 7, float %3966)  ; Saturate(value)
  %3968 = select i1 %3962, float %3967, float 1.000000e+00
  %3969 = fmul fast float %3968, %3965
  %3970 = icmp eq i32 %3963, 3
  %3971 = select i1 %3970, float 1.000000e+00, float %3969
  %3972 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3971)  ; FMax(a,b)
  %3973 = fcmp fast olt float %3971, 1.000000e+00
  %3974 = fcmp uge float %43, 0.000000e+00
  %3975 = and i1 %3974, %3973
  br i1 %3975, label %3976, label %3986

; <label>:3976                                    ; preds = %3957
  %3977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %43, float %44, float %45, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3978 = extractvalue %dx.types.ResRet.f32 %3977, 0
  %3979 = extractvalue %dx.types.ResRet.f32 %3977, 1
  %3980 = extractvalue %dx.types.ResRet.f32 %3977, 2
  %3981 = fadd fast float %3978, %3972
  %3982 = fcmp ule float %42, 0.000000e+00
  %3983 = call float @dx.op.dot3.f32(i32 55, float %39, float %40, float %41, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3984 = select i1 %3982, float %3983, float 1.000000e+00
  %3985 = fmul fast float %3984, %3980
  br label %3986

; <label>:3986                                    ; preds = %3976, %3957
  %3987 = phi float [ %3981, %3976 ], [ %3972, %3957 ]
  %3988 = phi float [ %3979, %3976 ], [ 0.000000e+00, %3957 ]
  %3989 = phi float [ %3985, %3976 ], [ 0.000000e+00, %3957 ]
  %3990 = call float @dx.op.unary.f32(i32 7, float %3987)  ; Saturate(value)
  %3991 = call float @dx.op.unary.f32(i32 7, float %3988)  ; Saturate(value)
  %3992 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %3993 = fcmp fast une float %3991, 0.000000e+00
  %3994 = fcmp fast une float %3992, 0.000000e+00
  %3995 = or i1 %3993, %3994
  br i1 %3995, label %3996, label %4555

; <label>:3996                                    ; preds = %3986
  br i1 %3993, label %3997, label %4270

; <label>:3997                                    ; preds = %3996
  %3998 = call float @dx.op.unary.f32(i32 23, float %3463)  ; Log(value)
  %3999 = fmul fast float %3998, 4.000000e+00
  %4000 = call float @dx.op.unary.f32(i32 21, float %3999)  ; Exp(value)
  %4001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4002 = extractvalue %dx.types.CBufRet.f32 %4001, 0
  %4003 = fmul fast float %4002, %30
  %4004 = fmul fast float %4002, %31
  %4005 = fmul fast float %4002, %32
  %4006 = call float @dx.op.unary.f32(i32 6, float %39)  ; FAbs(value)
  %4007 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %4008 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %4009 = call float @dx.op.unary.f32(i32 23, float %4006)  ; Log(value)
  %4010 = call float @dx.op.unary.f32(i32 23, float %4007)  ; Log(value)
  %4011 = call float @dx.op.unary.f32(i32 23, float %4008)  ; Log(value)
  %4012 = fmul fast float %4009, 4.000000e+00
  %4013 = fmul fast float %4010, 4.000000e+00
  %4014 = fmul fast float %4011, 4.000000e+00
  %4015 = call float @dx.op.unary.f32(i32 21, float %4012)  ; Exp(value)
  %4016 = call float @dx.op.unary.f32(i32 21, float %4013)  ; Exp(value)
  %4017 = call float @dx.op.unary.f32(i32 21, float %4014)  ; Exp(value)
  %4018 = fadd fast float %4016, %4015
  %4019 = fadd fast float %4018, %4017
  %4020 = fdiv fast float 1.000000e+00, %4019
  %4021 = fmul fast float %4020, %4015
  %4022 = fcmp fast ogt float %39, 0.000000e+00
  %4023 = fcmp fast ogt float %40, 0.000000e+00
  %4024 = fcmp fast ogt float %41, 0.000000e+00
  %4025 = fcmp fast olt float %39, 0.000000e+00
  %4026 = fcmp fast olt float %40, 0.000000e+00
  %4027 = fcmp fast olt float %41, 0.000000e+00
  %4028 = zext i1 %4022 to i32
  %4029 = zext i1 %4023 to i32
  %4030 = zext i1 %4024 to i32
  %4031 = zext i1 %4025 to i32
  %4032 = zext i1 %4026 to i32
  %4033 = zext i1 %4027 to i32
  %4034 = sub nsw i32 %4028, %4031
  %4035 = sub nsw i32 %4029, %4032
  %4036 = sub nsw i32 %4030, %4033
  %4037 = call float @dx.op.unary.f32(i32 83, float %4003)  ; DerivCoarseX(value)
  %4038 = call float @dx.op.unary.f32(i32 83, float %4004)  ; DerivCoarseX(value)
  %4039 = call float @dx.op.unary.f32(i32 83, float %4005)  ; DerivCoarseX(value)
  %4040 = call float @dx.op.unary.f32(i32 84, float %4003)  ; DerivCoarseY(value)
  %4041 = call float @dx.op.unary.f32(i32 84, float %4004)  ; DerivCoarseY(value)
  %4042 = call float @dx.op.unary.f32(i32 84, float %4005)  ; DerivCoarseY(value)
  %4043 = fcmp fast ole float %210, %4021
  %4044 = fmul fast float %4020, %4018
  %4045 = fcmp fast ole float %210, %4044
  %4046 = select i1 %4045, float %4005, float %4003
  %4047 = select i1 %4045, float %4003, float %4004
  %4048 = select i1 %4043, float %4004, float %4046
  %4049 = select i1 %4043, float %4005, float %4047
  %4050 = select i1 %4045, float %4039, float %4037
  %4051 = select i1 %4045, float %4037, float %4038
  %4052 = select i1 %4043, float %4038, float %4050
  %4053 = select i1 %4043, float %4039, float %4051
  %4054 = select i1 %4045, float %4042, float %4040
  %4055 = select i1 %4045, float %4040, float %4041
  %4056 = select i1 %4043, float %4041, float %4054
  %4057 = select i1 %4043, float %4042, float %4055
  %4058 = call float @dx.op.unary.f32(i32 27, float %4048)  ; Round_ni(value)
  %4059 = call float @dx.op.unary.f32(i32 27, float %4049)  ; Round_ni(value)
  %4060 = fptosi float %4058 to i32
  %4061 = fptosi float %4059 to i32
  %4062 = xor i32 %4061, %4060
  %4063 = sitofp i32 %4062 to float
  %4064 = fptosi float %4063 to i32
  %4065 = sitofp i32 %4064 to float
  %4066 = fmul fast float %4065, 0x3FE3C6EF40000000
  %4067 = frem fast float %4058, 2.560000e+02
  %4068 = frem fast float %4059, 2.560000e+02
  %4069 = fptoui float %4067 to i32
  %4070 = fptoui float %4068 to i32
  %4071 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %4069, i32 %4070, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4072 = extractvalue %dx.types.ResRet.f32 %4071, 0
  %4073 = extractvalue %dx.types.ResRet.f32 %4071, 1
  %4074 = extractvalue %dx.types.ResRet.f32 %4071, 2
  %4075 = fadd fast float %4072, %4066
  %4076 = fadd fast float %4073, %4066
  %4077 = fadd fast float %4074, %4066
  %4078 = call float @dx.op.unary.f32(i32 22, float %4075)  ; Frc(value)
  %4079 = call float @dx.op.unary.f32(i32 22, float %4076)  ; Frc(value)
  %4080 = call float @dx.op.unary.f32(i32 22, float %4077)  ; Frc(value)
  %4081 = fmul fast float %4080, 0x401921FB60000000
  %4082 = call float @dx.op.unary.f32(i32 13, float %4081)  ; Sin(value)
  %4083 = call float @dx.op.unary.f32(i32 12, float %4081)  ; Cos(value)
  %4084 = fsub fast float -0.000000e+00, %4083
  %4085 = fmul fast float %4083, %4048
  %4086 = call float @dx.op.tertiary.f32(i32 46, float %4082, float %4049, float %4085)  ; FMad(a,b,c)
  %4087 = fmul fast float %4082, %4048
  %4088 = call float @dx.op.tertiary.f32(i32 46, float %4084, float %4049, float %4087)  ; FMad(a,b,c)
  %4089 = fadd fast float %4086, %4078
  %4090 = fadd fast float %4088, %4079
  %4091 = extractvalue %dx.types.CBufRet.f32 %4001, 3
  %4092 = bitcast float %4091 to i32
  %4093 = icmp eq i32 %4092, 0
  br i1 %4093, label %4132, label %4094

; <label>:4094                                    ; preds = %3997
  %4095 = add i32 %4092, 0
  %4096 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4095, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4097 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4096, %dx.types.Handle %74, float %4089, float %4090, float undef, float undef, i32 0, i32 0, i32 undef, float %4052, float %4053, float undef, float %4056, float %4057, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4098 = extractvalue %dx.types.ResRet.f32 %4097, 0
  %4099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4100 = extractvalue %dx.types.CBufRet.f32 %4099, 1
  %4101 = extractvalue %dx.types.CBufRet.f32 %4099, 2
  %4102 = fsub fast float 1.000000e+00, %3991
  %4103 = call float @dx.op.binary.f32(i32 35, float %4102, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4104 = bitcast float %3991 to i32
  %4105 = sitofp i32 %4104 to float
  %4106 = fadd fast float %4105, 0xC1CFBF8940000000
  %4107 = fmul fast float %4101, %4106
  %4108 = fadd fast float %4107, 0x41CFBF8940000000
  %4109 = fptosi float %4108 to i32
  %4110 = bitcast i32 %4109 to float
  %4111 = bitcast float %4103 to i32
  %4112 = sitofp i32 %4111 to float
  %4113 = fadd fast float %4112, 0xC1CFBF8940000000
  %4114 = fmul fast float %4113, %4101
  %4115 = fadd fast float %4114, 0x41CFBF8940000000
  %4116 = fptosi float %4115 to i32
  %4117 = bitcast i32 %4116 to float
  %4118 = fmul fast float %4110, %4100
  %4119 = fmul fast float %4117, %4100
  %4120 = fsub fast float %4103, %4118
  %4121 = fadd fast float %4119, %4103
  %4122 = call float @dx.op.unary.f32(i32 7, float %4120)  ; Saturate(value)
  %4123 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4124 = fsub fast float %4098, %4122
  %4125 = fsub fast float %4123, %4122
  %4126 = bitcast float %4125 to i32
  %4127 = sub nsw i32 2129859010, %4126
  %4128 = bitcast i32 %4127 to float
  %4129 = fmul fast float %4128, %4124
  %4130 = call float @dx.op.unary.f32(i32 7, float %4129)  ; Saturate(value)
  %4131 = fcmp fast olt float %4130, 0x3F70101020000000
  br i1 %4131, label %4270, label %4132

; <label>:4132                                    ; preds = %4094, %3997
  %4133 = phi float [ %4130, %4094 ], [ %3991, %3997 ]
  %4134 = fmul fast float %4133, %4000
  %4135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.i32 %4135, 1
  %4137 = extractvalue %dx.types.CBufRet.i32 %4135, 0
  %4138 = add i32 %4137, 0
  %4139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4138, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4140 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4139, %dx.types.Handle %73, float %4089, float %4090, float undef, float undef, i32 0, i32 0, i32 undef, float %4052, float %4053, float undef, float %4056, float %4057, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4141 = extractvalue %dx.types.ResRet.f32 %4140, 0
  %4142 = extractvalue %dx.types.ResRet.f32 %4140, 1
  %4143 = extractvalue %dx.types.ResRet.f32 %4140, 2
  %4144 = extractvalue %dx.types.ResRet.f32 %4140, 3
  %4145 = and i32 %4136, 255
  %4146 = uitofp i32 %4145 to float
  %4147 = lshr i32 %4136, 8
  %4148 = and i32 %4147, 255
  %4149 = uitofp i32 %4148 to float
  %4150 = fmul fast float %4144, %4146
  %4151 = fadd fast float %4150, %4149
  %4152 = fmul fast float %4151, 0x3F70101000000000
  %4153 = fadd fast float %4152, 0xBFB99999A0000000
  %4154 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4155 = fmul fast float %4154, 0x3FF1C71C80000000
  %4156 = call float @dx.op.binary.f32(i32 36, float %4152, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4157 = fsub fast float 1.000000e+00, %4155
  %4158 = call float @dx.op.unary.f32(i32 7, float %4157)  ; Saturate(value)
  %4159 = fmul fast float %4158, %4141
  %4160 = fmul fast float %4158, %4142
  %4161 = fmul fast float %4158, %4143
  %4162 = call float @dx.op.unary.f32(i32 7, float %4159)  ; Saturate(value)
  %4163 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4164 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  %4165 = fmul fast float %4155, %4141
  %4166 = fmul fast float %4155, %4142
  %4167 = fmul fast float %4155, %4143
  %4168 = fadd fast float %4165, %4156
  %4169 = fadd fast float %4166, %4156
  %4170 = fadd fast float %4167, %4156
  %4171 = call float @dx.op.unary.f32(i32 7, float %4168)  ; Saturate(value)
  %4172 = call float @dx.op.unary.f32(i32 7, float %4169)  ; Saturate(value)
  %4173 = call float @dx.op.unary.f32(i32 7, float %4170)  ; Saturate(value)
  %4174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4175 = extractvalue %dx.types.CBufRet.i32 %4174, 3
  %4176 = extractvalue %dx.types.CBufRet.i32 %4174, 2
  %4177 = add i32 %4176, 0
  %4178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4177, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4179 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4178, %dx.types.Handle %73, float %4089, float %4090, float undef, float undef, i32 0, i32 0, i32 undef, float %4052, float %4053, float undef, float %4056, float %4057, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = extractvalue %dx.types.ResRet.f32 %4179, 1
  %4182 = extractvalue %dx.types.ResRet.f32 %4179, 2
  %4183 = extractvalue %dx.types.ResRet.f32 %4179, 3
  %4184 = and i32 %4175, 255
  %4185 = uitofp i32 %4184 to float
  %4186 = lshr i32 %4175, 8
  %4187 = and i32 %4186, 255
  %4188 = uitofp i32 %4187 to float
  %4189 = lshr i32 %4175, 16
  %4190 = and i32 %4189, 255
  %4191 = uitofp i32 %4190 to float
  %4192 = fmul fast float %4191, 0x3F70101000000000
  %4193 = fmul fast float %4180, %4185
  %4194 = fadd fast float %4193, %4188
  %4195 = fmul fast float %4194, 0x3F70101000000000
  %4196 = fadd fast float %4181, -5.000000e-01
  %4197 = fadd fast float %4183, -5.000000e-01
  %4198 = fmul fast float %4196, %4192
  %4199 = fmul fast float %4197, %4192
  %4200 = fadd fast float %4198, 5.000000e-01
  %4201 = fadd fast float %4199, 5.000000e-01
  %4202 = fmul fast float %4200, 2.000000e+00
  %4203 = fadd fast float %4202, -1.000000e+00
  %4204 = fmul fast float %4201, 2.000000e+00
  %4205 = fadd fast float %4204, -1.000000e+00
  %4206 = fadd fast float %4203, %4205
  %4207 = fmul fast float %4206, 5.000000e-01
  %4208 = fsub fast float %4203, %4205
  %4209 = fmul fast float %4208, 5.000000e-01
  %4210 = call float @dx.op.unary.f32(i32 6, float %4207)  ; FAbs(value)
  %4211 = fsub fast float 1.000000e+00, %4210
  %4212 = call float @dx.op.unary.f32(i32 6, float %4209)  ; FAbs(value)
  %4213 = fsub fast float %4211, %4212
  %4214 = call float @dx.op.dot3.f32(i32 55, float %4207, float %4209, float %4213, float %4207, float %4209, float %4213)  ; Dot3(ax,ay,az,bx,by,bz)
  %4215 = call float @dx.op.unary.f32(i32 25, float %4214)  ; Rsqrt(value)
  %4216 = fmul fast float %4207, %4215
  %4217 = fmul fast float %4209, %4215
  %4218 = select i1 %4045, i32 %4035, i32 %4036
  %4219 = select i1 %4043, i32 %4034, i32 %4218
  %4220 = sitofp i32 %4219 to float
  %4221 = fmul fast float %4213, %4220
  %4222 = fmul fast float %4221, %4215
  %4223 = select i1 %4045, float %4222, float %4217
  %4224 = select i1 %4045, float %4217, float %4222
  %4225 = select i1 %4043, float %4222, float %4216
  %4226 = select i1 %4043, float %4217, float %4223
  %4227 = select i1 %4043, float %4216, float %4224
  %4228 = fsub fast float %4162, %3595
  %4229 = fsub fast float %4163, %3596
  %4230 = fsub fast float %4164, %3597
  %4231 = fmul fast float %4228, %4134
  %4232 = fmul fast float %4229, %4134
  %4233 = fmul fast float %4230, %4134
  %4234 = fadd fast float %4231, %3595
  %4235 = fadd fast float %4232, %3596
  %4236 = fadd fast float %4233, %3597
  %4237 = fsub fast float %4171, %3514
  %4238 = fsub fast float %4172, %3515
  %4239 = fsub fast float %4173, %3516
  %4240 = fmul fast float %4237, %4134
  %4241 = fmul fast float %4238, %4134
  %4242 = fmul fast float %4239, %4134
  %4243 = fadd fast float %4240, %3514
  %4244 = fadd fast float %4241, %3515
  %4245 = fadd fast float %4242, %3516
  %4246 = fadd fast float %4225, %3493
  %4247 = fadd fast float %4226, %3494
  %4248 = fadd fast float %4227, %3495
  %4249 = call float @dx.op.dot3.f32(i32 55, float %4246, float %4247, float %4248, float %4246, float %4247, float %4248)  ; Dot3(ax,ay,az,bx,by,bz)
  %4250 = call float @dx.op.unary.f32(i32 25, float %4249)  ; Rsqrt(value)
  %4251 = fmul fast float %4246, %4250
  %4252 = fmul fast float %4247, %4250
  %4253 = fmul fast float %4248, %4250
  %4254 = fsub fast float %4251, %3493
  %4255 = fsub fast float %4252, %3494
  %4256 = fsub fast float %4253, %3495
  %4257 = fmul fast float %4254, %4134
  %4258 = fmul fast float %4255, %4134
  %4259 = fmul fast float %4256, %4134
  %4260 = fadd fast float %4257, %3493
  %4261 = fadd fast float %4258, %3494
  %4262 = fadd fast float %4259, %3495
  %4263 = call float @dx.op.binary.f32(i32 36, float %3463, float %4182)  ; FMin(a,b)
  %4264 = fsub fast float %4263, %3463
  %4265 = fmul fast float %4264, %4134
  %4266 = fadd fast float %4265, %3463
  %4267 = fsub fast float %4195, %3517
  %4268 = fmul fast float %4267, %4134
  %4269 = fadd fast float %4268, %3517
  br label %4270

; <label>:4270                                    ; preds = %4132, %4094, %3996
  %4271 = phi float [ %4243, %4132 ], [ %3514, %4094 ], [ %3514, %3996 ]
  %4272 = phi float [ %4244, %4132 ], [ %3515, %4094 ], [ %3515, %3996 ]
  %4273 = phi float [ %4245, %4132 ], [ %3516, %4094 ], [ %3516, %3996 ]
  %4274 = phi float [ %4260, %4132 ], [ %3493, %4094 ], [ %3493, %3996 ]
  %4275 = phi float [ %4261, %4132 ], [ %3494, %4094 ], [ %3494, %3996 ]
  %4276 = phi float [ %4262, %4132 ], [ %3495, %4094 ], [ %3495, %3996 ]
  %4277 = phi float [ %4234, %4132 ], [ %3595, %4094 ], [ %3595, %3996 ]
  %4278 = phi float [ %4235, %4132 ], [ %3596, %4094 ], [ %3596, %3996 ]
  %4279 = phi float [ %4236, %4132 ], [ %3597, %4094 ], [ %3597, %3996 ]
  %4280 = phi float [ %4269, %4132 ], [ %3517, %4094 ], [ %3517, %3996 ]
  %4281 = phi float [ %4266, %4132 ], [ %3463, %4094 ], [ %3463, %3996 ]
  br i1 %3994, label %4282, label %4555

; <label>:4282                                    ; preds = %4270
  %4283 = call float @dx.op.unary.f32(i32 23, float %4281)  ; Log(value)
  %4284 = fmul fast float %4283, 4.000000e+00
  %4285 = call float @dx.op.unary.f32(i32 21, float %4284)  ; Exp(value)
  %4286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4287 = extractvalue %dx.types.CBufRet.f32 %4286, 0
  %4288 = fmul fast float %4287, %30
  %4289 = fmul fast float %4287, %31
  %4290 = fmul fast float %4287, %32
  %4291 = call float @dx.op.unary.f32(i32 6, float %39)  ; FAbs(value)
  %4292 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %4293 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %4294 = call float @dx.op.unary.f32(i32 23, float %4291)  ; Log(value)
  %4295 = call float @dx.op.unary.f32(i32 23, float %4292)  ; Log(value)
  %4296 = call float @dx.op.unary.f32(i32 23, float %4293)  ; Log(value)
  %4297 = fmul fast float %4294, 4.000000e+00
  %4298 = fmul fast float %4295, 4.000000e+00
  %4299 = fmul fast float %4296, 4.000000e+00
  %4300 = call float @dx.op.unary.f32(i32 21, float %4297)  ; Exp(value)
  %4301 = call float @dx.op.unary.f32(i32 21, float %4298)  ; Exp(value)
  %4302 = call float @dx.op.unary.f32(i32 21, float %4299)  ; Exp(value)
  %4303 = fadd fast float %4301, %4300
  %4304 = fadd fast float %4303, %4302
  %4305 = fdiv fast float 1.000000e+00, %4304
  %4306 = fmul fast float %4305, %4300
  %4307 = fcmp fast ogt float %39, 0.000000e+00
  %4308 = fcmp fast ogt float %40, 0.000000e+00
  %4309 = fcmp fast ogt float %41, 0.000000e+00
  %4310 = fcmp fast olt float %39, 0.000000e+00
  %4311 = fcmp fast olt float %40, 0.000000e+00
  %4312 = fcmp fast olt float %41, 0.000000e+00
  %4313 = zext i1 %4307 to i32
  %4314 = zext i1 %4308 to i32
  %4315 = zext i1 %4309 to i32
  %4316 = zext i1 %4310 to i32
  %4317 = zext i1 %4311 to i32
  %4318 = zext i1 %4312 to i32
  %4319 = sub nsw i32 %4313, %4316
  %4320 = sub nsw i32 %4314, %4317
  %4321 = sub nsw i32 %4315, %4318
  %4322 = call float @dx.op.unary.f32(i32 83, float %4288)  ; DerivCoarseX(value)
  %4323 = call float @dx.op.unary.f32(i32 83, float %4289)  ; DerivCoarseX(value)
  %4324 = call float @dx.op.unary.f32(i32 83, float %4290)  ; DerivCoarseX(value)
  %4325 = call float @dx.op.unary.f32(i32 84, float %4288)  ; DerivCoarseY(value)
  %4326 = call float @dx.op.unary.f32(i32 84, float %4289)  ; DerivCoarseY(value)
  %4327 = call float @dx.op.unary.f32(i32 84, float %4290)  ; DerivCoarseY(value)
  %4328 = fcmp fast ole float %210, %4306
  %4329 = fmul fast float %4305, %4303
  %4330 = fcmp fast ole float %210, %4329
  %4331 = select i1 %4330, float %4290, float %4288
  %4332 = select i1 %4330, float %4288, float %4289
  %4333 = select i1 %4328, float %4289, float %4331
  %4334 = select i1 %4328, float %4290, float %4332
  %4335 = select i1 %4330, float %4324, float %4322
  %4336 = select i1 %4330, float %4322, float %4323
  %4337 = select i1 %4328, float %4323, float %4335
  %4338 = select i1 %4328, float %4324, float %4336
  %4339 = select i1 %4330, float %4327, float %4325
  %4340 = select i1 %4330, float %4325, float %4326
  %4341 = select i1 %4328, float %4326, float %4339
  %4342 = select i1 %4328, float %4327, float %4340
  %4343 = call float @dx.op.unary.f32(i32 27, float %4333)  ; Round_ni(value)
  %4344 = call float @dx.op.unary.f32(i32 27, float %4334)  ; Round_ni(value)
  %4345 = fptosi float %4343 to i32
  %4346 = fptosi float %4344 to i32
  %4347 = xor i32 %4346, %4345
  %4348 = sitofp i32 %4347 to float
  %4349 = fptosi float %4348 to i32
  %4350 = sitofp i32 %4349 to float
  %4351 = fmul fast float %4350, 0x3FE3C6EF40000000
  %4352 = frem fast float %4343, 2.560000e+02
  %4353 = frem fast float %4344, 2.560000e+02
  %4354 = fptoui float %4352 to i32
  %4355 = fptoui float %4353 to i32
  %4356 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %4354, i32 %4355, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4357 = extractvalue %dx.types.ResRet.f32 %4356, 0
  %4358 = extractvalue %dx.types.ResRet.f32 %4356, 1
  %4359 = extractvalue %dx.types.ResRet.f32 %4356, 2
  %4360 = fadd fast float %4357, %4351
  %4361 = fadd fast float %4358, %4351
  %4362 = fadd fast float %4359, %4351
  %4363 = call float @dx.op.unary.f32(i32 22, float %4360)  ; Frc(value)
  %4364 = call float @dx.op.unary.f32(i32 22, float %4361)  ; Frc(value)
  %4365 = call float @dx.op.unary.f32(i32 22, float %4362)  ; Frc(value)
  %4366 = fmul fast float %4365, 0x401921FB60000000
  %4367 = call float @dx.op.unary.f32(i32 13, float %4366)  ; Sin(value)
  %4368 = call float @dx.op.unary.f32(i32 12, float %4366)  ; Cos(value)
  %4369 = fsub fast float -0.000000e+00, %4368
  %4370 = fmul fast float %4368, %4333
  %4371 = call float @dx.op.tertiary.f32(i32 46, float %4367, float %4334, float %4370)  ; FMad(a,b,c)
  %4372 = fmul fast float %4367, %4333
  %4373 = call float @dx.op.tertiary.f32(i32 46, float %4369, float %4334, float %4372)  ; FMad(a,b,c)
  %4374 = fadd fast float %4371, %4363
  %4375 = fadd fast float %4373, %4364
  %4376 = extractvalue %dx.types.CBufRet.f32 %4286, 3
  %4377 = bitcast float %4376 to i32
  %4378 = icmp eq i32 %4377, 0
  br i1 %4378, label %4417, label %4379

; <label>:4379                                    ; preds = %4282
  %4380 = add i32 %4377, 0
  %4381 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4380, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4382 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4381, %dx.types.Handle %74, float %4374, float %4375, float undef, float undef, i32 0, i32 0, i32 undef, float %4337, float %4338, float undef, float %4341, float %4342, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4383 = extractvalue %dx.types.ResRet.f32 %4382, 0
  %4384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.f32 %4384, 1
  %4386 = extractvalue %dx.types.CBufRet.f32 %4384, 2
  %4387 = fsub fast float 1.000000e+00, %3992
  %4388 = call float @dx.op.binary.f32(i32 35, float %4387, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4389 = bitcast float %3992 to i32
  %4390 = sitofp i32 %4389 to float
  %4391 = fadd fast float %4390, 0xC1CFBF8940000000
  %4392 = fmul fast float %4386, %4391
  %4393 = fadd fast float %4392, 0x41CFBF8940000000
  %4394 = fptosi float %4393 to i32
  %4395 = bitcast i32 %4394 to float
  %4396 = bitcast float %4388 to i32
  %4397 = sitofp i32 %4396 to float
  %4398 = fadd fast float %4397, 0xC1CFBF8940000000
  %4399 = fmul fast float %4398, %4386
  %4400 = fadd fast float %4399, 0x41CFBF8940000000
  %4401 = fptosi float %4400 to i32
  %4402 = bitcast i32 %4401 to float
  %4403 = fmul fast float %4395, %4385
  %4404 = fmul fast float %4402, %4385
  %4405 = fsub fast float %4388, %4403
  %4406 = fadd fast float %4404, %4388
  %4407 = call float @dx.op.unary.f32(i32 7, float %4405)  ; Saturate(value)
  %4408 = call float @dx.op.unary.f32(i32 7, float %4406)  ; Saturate(value)
  %4409 = fsub fast float %4383, %4407
  %4410 = fsub fast float %4408, %4407
  %4411 = bitcast float %4410 to i32
  %4412 = sub nsw i32 2129859010, %4411
  %4413 = bitcast i32 %4412 to float
  %4414 = fmul fast float %4413, %4409
  %4415 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4416 = fcmp fast olt float %4415, 0x3F70101020000000
  br i1 %4416, label %4555, label %4417

; <label>:4417                                    ; preds = %4379, %4282
  %4418 = phi float [ %4415, %4379 ], [ %3992, %4282 ]
  %4419 = fmul fast float %4418, %4285
  %4420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4421 = extractvalue %dx.types.CBufRet.i32 %4420, 1
  %4422 = extractvalue %dx.types.CBufRet.i32 %4420, 0
  %4423 = add i32 %4422, 0
  %4424 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4423, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4425 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4424, %dx.types.Handle %73, float %4374, float %4375, float undef, float undef, i32 0, i32 0, i32 undef, float %4337, float %4338, float undef, float %4341, float %4342, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4426 = extractvalue %dx.types.ResRet.f32 %4425, 0
  %4427 = extractvalue %dx.types.ResRet.f32 %4425, 1
  %4428 = extractvalue %dx.types.ResRet.f32 %4425, 2
  %4429 = extractvalue %dx.types.ResRet.f32 %4425, 3
  %4430 = and i32 %4421, 255
  %4431 = uitofp i32 %4430 to float
  %4432 = lshr i32 %4421, 8
  %4433 = and i32 %4432, 255
  %4434 = uitofp i32 %4433 to float
  %4435 = fmul fast float %4429, %4431
  %4436 = fadd fast float %4435, %4434
  %4437 = fmul fast float %4436, 0x3F70101000000000
  %4438 = fadd fast float %4437, 0xBFB99999A0000000
  %4439 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4440 = fmul fast float %4439, 0x3FF1C71C80000000
  %4441 = call float @dx.op.binary.f32(i32 36, float %4437, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4442 = fsub fast float 1.000000e+00, %4440
  %4443 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4444 = fmul fast float %4443, %4426
  %4445 = fmul fast float %4443, %4427
  %4446 = fmul fast float %4443, %4428
  %4447 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4448 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4449 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4450 = fmul fast float %4440, %4426
  %4451 = fmul fast float %4440, %4427
  %4452 = fmul fast float %4440, %4428
  %4453 = fadd fast float %4450, %4441
  %4454 = fadd fast float %4451, %4441
  %4455 = fadd fast float %4452, %4441
  %4456 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4457 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4458 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4459 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.i32 %4459, 3
  %4461 = extractvalue %dx.types.CBufRet.i32 %4459, 2
  %4462 = add i32 %4461, 0
  %4463 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4462, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4464 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4463, %dx.types.Handle %73, float %4374, float %4375, float undef, float undef, i32 0, i32 0, i32 undef, float %4337, float %4338, float undef, float %4341, float %4342, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4465 = extractvalue %dx.types.ResRet.f32 %4464, 0
  %4466 = extractvalue %dx.types.ResRet.f32 %4464, 1
  %4467 = extractvalue %dx.types.ResRet.f32 %4464, 2
  %4468 = extractvalue %dx.types.ResRet.f32 %4464, 3
  %4469 = and i32 %4460, 255
  %4470 = uitofp i32 %4469 to float
  %4471 = lshr i32 %4460, 8
  %4472 = and i32 %4471, 255
  %4473 = uitofp i32 %4472 to float
  %4474 = lshr i32 %4460, 16
  %4475 = and i32 %4474, 255
  %4476 = uitofp i32 %4475 to float
  %4477 = fmul fast float %4476, 0x3F70101000000000
  %4478 = fmul fast float %4465, %4470
  %4479 = fadd fast float %4478, %4473
  %4480 = fmul fast float %4479, 0x3F70101000000000
  %4481 = fadd fast float %4466, -5.000000e-01
  %4482 = fadd fast float %4468, -5.000000e-01
  %4483 = fmul fast float %4481, %4477
  %4484 = fmul fast float %4482, %4477
  %4485 = fadd fast float %4483, 5.000000e-01
  %4486 = fadd fast float %4484, 5.000000e-01
  %4487 = fmul fast float %4485, 2.000000e+00
  %4488 = fadd fast float %4487, -1.000000e+00
  %4489 = fmul fast float %4486, 2.000000e+00
  %4490 = fadd fast float %4489, -1.000000e+00
  %4491 = fadd fast float %4488, %4490
  %4492 = fmul fast float %4491, 5.000000e-01
  %4493 = fsub fast float %4488, %4490
  %4494 = fmul fast float %4493, 5.000000e-01
  %4495 = call float @dx.op.unary.f32(i32 6, float %4492)  ; FAbs(value)
  %4496 = fsub fast float 1.000000e+00, %4495
  %4497 = call float @dx.op.unary.f32(i32 6, float %4494)  ; FAbs(value)
  %4498 = fsub fast float %4496, %4497
  %4499 = call float @dx.op.dot3.f32(i32 55, float %4492, float %4494, float %4498, float %4492, float %4494, float %4498)  ; Dot3(ax,ay,az,bx,by,bz)
  %4500 = call float @dx.op.unary.f32(i32 25, float %4499)  ; Rsqrt(value)
  %4501 = fmul fast float %4492, %4500
  %4502 = fmul fast float %4494, %4500
  %4503 = select i1 %4330, i32 %4320, i32 %4321
  %4504 = select i1 %4328, i32 %4319, i32 %4503
  %4505 = sitofp i32 %4504 to float
  %4506 = fmul fast float %4498, %4505
  %4507 = fmul fast float %4506, %4500
  %4508 = select i1 %4330, float %4507, float %4502
  %4509 = select i1 %4330, float %4502, float %4507
  %4510 = select i1 %4328, float %4507, float %4501
  %4511 = select i1 %4328, float %4502, float %4508
  %4512 = select i1 %4328, float %4501, float %4509
  %4513 = fsub fast float %4447, %4277
  %4514 = fsub fast float %4448, %4278
  %4515 = fsub fast float %4449, %4279
  %4516 = fmul fast float %4513, %4419
  %4517 = fmul fast float %4514, %4419
  %4518 = fmul fast float %4515, %4419
  %4519 = fadd fast float %4516, %4277
  %4520 = fadd fast float %4517, %4278
  %4521 = fadd fast float %4518, %4279
  %4522 = fsub fast float %4456, %4271
  %4523 = fsub fast float %4457, %4272
  %4524 = fsub fast float %4458, %4273
  %4525 = fmul fast float %4522, %4419
  %4526 = fmul fast float %4523, %4419
  %4527 = fmul fast float %4524, %4419
  %4528 = fadd fast float %4525, %4271
  %4529 = fadd fast float %4526, %4272
  %4530 = fadd fast float %4527, %4273
  %4531 = fadd fast float %4510, %4274
  %4532 = fadd fast float %4511, %4275
  %4533 = fadd fast float %4512, %4276
  %4534 = call float @dx.op.dot3.f32(i32 55, float %4531, float %4532, float %4533, float %4531, float %4532, float %4533)  ; Dot3(ax,ay,az,bx,by,bz)
  %4535 = call float @dx.op.unary.f32(i32 25, float %4534)  ; Rsqrt(value)
  %4536 = fmul fast float %4531, %4535
  %4537 = fmul fast float %4532, %4535
  %4538 = fmul fast float %4533, %4535
  %4539 = fsub fast float %4536, %4274
  %4540 = fsub fast float %4537, %4275
  %4541 = fsub fast float %4538, %4276
  %4542 = fmul fast float %4539, %4419
  %4543 = fmul fast float %4540, %4419
  %4544 = fmul fast float %4541, %4419
  %4545 = fadd fast float %4542, %4274
  %4546 = fadd fast float %4543, %4275
  %4547 = fadd fast float %4544, %4276
  %4548 = call float @dx.op.binary.f32(i32 36, float %4281, float %4467)  ; FMin(a,b)
  %4549 = fsub fast float %4548, %4281
  %4550 = fmul fast float %4549, %4419
  %4551 = fadd fast float %4550, %4281
  %4552 = fsub fast float %4480, %4280
  %4553 = fmul fast float %4552, %4419
  %4554 = fadd fast float %4553, %4280
  br label %4555

; <label>:4555                                    ; preds = %4417, %4379, %4270, %3986
  %4556 = phi float [ %4528, %4417 ], [ %4271, %4379 ], [ %4271, %4270 ], [ %3514, %3986 ]
  %4557 = phi float [ %4529, %4417 ], [ %4272, %4379 ], [ %4272, %4270 ], [ %3515, %3986 ]
  %4558 = phi float [ %4530, %4417 ], [ %4273, %4379 ], [ %4273, %4270 ], [ %3516, %3986 ]
  %4559 = phi float [ %4545, %4417 ], [ %4274, %4379 ], [ %4274, %4270 ], [ %3493, %3986 ]
  %4560 = phi float [ %4546, %4417 ], [ %4275, %4379 ], [ %4275, %4270 ], [ %3494, %3986 ]
  %4561 = phi float [ %4547, %4417 ], [ %4276, %4379 ], [ %4276, %4270 ], [ %3495, %3986 ]
  %4562 = phi float [ %4519, %4417 ], [ %4277, %4379 ], [ %4277, %4270 ], [ %3595, %3986 ]
  %4563 = phi float [ %4520, %4417 ], [ %4278, %4379 ], [ %4278, %4270 ], [ %3596, %3986 ]
  %4564 = phi float [ %4521, %4417 ], [ %4279, %4379 ], [ %4279, %4270 ], [ %3597, %3986 ]
  %4565 = phi float [ %4554, %4417 ], [ %4280, %4379 ], [ %4280, %4270 ], [ %3517, %3986 ]
  %4566 = phi float [ %4551, %4417 ], [ %4281, %4379 ], [ %4281, %4270 ], [ %3463, %3986 ]
  %4567 = fcmp fast une float %3990, 0.000000e+00
  %4568 = call float @dx.op.dot3.f32(i32 55, float %160, float %161, float %162, float %160, float %161, float %162)  ; Dot3(ax,ay,az,bx,by,bz)
  %4569 = call float @dx.op.unary.f32(i32 25, float %4568)  ; Rsqrt(value)
  br i1 %4567, label %4577, label %4570

; <label>:4570                                    ; preds = %4555
  %4571 = fmul fast float %4569, %160
  %4572 = fmul fast float %4569, %161
  %4573 = fmul fast float %4569, %162
  %4574 = fsub fast float -0.000000e+00, %4571
  %4575 = fsub fast float -0.000000e+00, %4572
  %4576 = fsub fast float -0.000000e+00, %4573
  br label %4744

; <label>:4577                                    ; preds = %4555
  %4578 = fmul fast float %160, %4569
  %4579 = fsub fast float -0.000000e+00, %4578
  %4580 = fmul fast float %161, %4569
  %4581 = fsub fast float -0.000000e+00, %4580
  %4582 = fmul fast float %162, %4569
  %4583 = fsub fast float -0.000000e+00, %4582
  %4584 = call float @dx.op.dot3.f32(i32 55, float %4579, float %4581, float %4583, float %86, float %88, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %4585 = fmul fast float %3990, 2.500000e+00
  %4586 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  %4587 = fmul fast float %3990, 0x4013FFFFE0000000
  %4588 = fadd fast float %4587, 0xBFFFFFFFE0000000
  %4589 = call float @dx.op.unary.f32(i32 7, float %4588)  ; Saturate(value)
  %4590 = fmul fast float %3990, 0x4004000020000000
  %4591 = fadd fast float %4590, 0xBFF8000040000000
  %4592 = call float @dx.op.unary.f32(i32 7, float %4591)  ; Saturate(value)
  %4593 = fmul fast float %3496, 1.000000e+01
  %4594 = call float @dx.op.unary.f32(i32 7, float %4593)  ; Saturate(value)
  %4595 = fmul fast float %4594, 2.000000e+00
  %4596 = fsub fast float 3.000000e+00, %4595
  %4597 = fmul fast float %4594, %4594
  %4598 = fmul fast float %4597, %4596
  %4599 = fsub fast float 1.000000e+00, %4598
  %4600 = fsub fast float 0x3FE3333340000000, %4565
  %4601 = fmul fast float %4600, 0x400AAAAAA0000000
  %4602 = call float @dx.op.unary.f32(i32 7, float %4601)  ; Saturate(value)
  %4603 = fmul fast float %4599, %4602
  %4604 = fmul fast float %4562, 0x3FEA2B8620000000
  %4605 = fmul fast float %4563, 0x3FEA2B8620000000
  %4606 = fmul fast float %4564, 0x3FEA2B8620000000
  %4607 = fadd fast float %4604, 0x3FC81DFBA0000000
  %4608 = fmul fast float %4607, %4562
  %4609 = fadd fast float %4608, 0x3F910E6020000000
  %4610 = fadd fast float %4605, 0x3FC81DFBA0000000
  %4611 = fmul fast float %4610, %4563
  %4612 = fadd fast float %4611, 0x3F910E6020000000
  %4613 = fadd fast float %4606, 0x3FC81DFBA0000000
  %4614 = fmul fast float %4613, %4564
  %4615 = fadd fast float %4614, 0x3F910E6020000000
  %4616 = call float @dx.op.unary.f32(i32 7, float %4609)  ; Saturate(value)
  %4617 = call float @dx.op.unary.f32(i32 7, float %4612)  ; Saturate(value)
  %4618 = call float @dx.op.unary.f32(i32 7, float %4615)  ; Saturate(value)
  %4619 = fsub fast float %4616, %4562
  %4620 = fsub fast float %4617, %4563
  %4621 = fsub fast float %4618, %4564
  %4622 = fmul fast float %4619, %4586
  %4623 = fmul fast float %4622, %4603
  %4624 = fmul fast float %4620, %4586
  %4625 = fmul fast float %4624, %4603
  %4626 = fmul fast float %4621, %4586
  %4627 = fmul fast float %4626, %4603
  %4628 = fadd fast float %4623, %4562
  %4629 = fadd fast float %4625, %4563
  %4630 = fadd fast float %4627, %4564
  %4631 = fmul fast float %4566, %4566
  %4632 = fmul fast float %4631, %4631
  %4633 = fadd fast float %4589, 1.000000e+00
  %4634 = fsub fast float %4633, %4603
  %4635 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4636 = call float @dx.op.dot3.f32(i32 55, float %86, float %88, float %90, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4637 = call float @dx.op.unary.f32(i32 7, float %4636)  ; Saturate(value)
  %4638 = fsub fast float 1.000000e+00, %4632
  %4639 = call float @dx.op.binary.f32(i32 36, float %4635, float %4638)  ; FMin(a,b)
  %4640 = call float @dx.op.unary.f32(i32 7, float %4592)  ; Saturate(value)
  %4641 = call float @dx.op.binary.f32(i32 35, float %4639, float %4640)  ; FMax(a,b)
  %4642 = fadd fast float %4637, 0xBFE4CCCCC0000000
  %4643 = fmul fast float %4642, 0x4006DB6DA0000000
  %4644 = call float @dx.op.unary.f32(i32 7, float %4643)  ; Saturate(value)
  %4645 = fmul fast float %4644, 2.000000e+00
  %4646 = fsub fast float 3.000000e+00, %4645
  %4647 = bitcast float %4556 to i32
  %4648 = ashr i32 %4647, 1
  %4649 = add nsw i32 %4648, 532487669
  %4650 = bitcast i32 %4649 to float
  %4651 = fsub fast float 1.000000e+00, %4650
  %4652 = bitcast float %4651 to i32
  %4653 = sub nsw i32 2129859010, %4652
  %4654 = bitcast i32 %4653 to float
  %4655 = fmul fast float %4654, 2.000000e+00
  %4656 = bitcast float %4557 to i32
  %4657 = ashr i32 %4656, 1
  %4658 = add nsw i32 %4657, 532487669
  %4659 = bitcast i32 %4658 to float
  %4660 = fsub fast float 1.000000e+00, %4659
  %4661 = bitcast float %4660 to i32
  %4662 = sub nsw i32 2129859010, %4661
  %4663 = bitcast i32 %4662 to float
  %4664 = fmul fast float %4663, 2.000000e+00
  %4665 = bitcast float %4558 to i32
  %4666 = ashr i32 %4665, 1
  %4667 = add nsw i32 %4666, 532487669
  %4668 = bitcast i32 %4667 to float
  %4669 = fsub fast float 1.000000e+00, %4668
  %4670 = bitcast float %4669 to i32
  %4671 = sub nsw i32 2129859010, %4670
  %4672 = bitcast i32 %4671 to float
  %4673 = fmul fast float %4672, 2.000000e+00
  %4674 = fsub fast float 0x4002A9FBE0000000, %4655
  %4675 = fadd fast float %4655, 0x3FD54FDF00000000
  %4676 = bitcast float %4675 to i32
  %4677 = sub nsw i32 2129859010, %4676
  %4678 = bitcast i32 %4677 to float
  %4679 = fmul fast float %4678, %4674
  %4680 = fmul fast float %4679, %4679
  %4681 = fsub fast float 0x4002A9FBE0000000, %4664
  %4682 = fadd fast float %4664, 0x3FD54FDF00000000
  %4683 = bitcast float %4682 to i32
  %4684 = sub nsw i32 2129859010, %4683
  %4685 = bitcast i32 %4684 to float
  %4686 = fmul fast float %4685, %4681
  %4687 = fmul fast float %4686, %4686
  %4688 = fsub fast float 0x4002A9FBE0000000, %4673
  %4689 = fadd fast float %4673, 0x3FD54FDF00000000
  %4690 = bitcast float %4689 to i32
  %4691 = sub nsw i32 2129859010, %4690
  %4692 = bitcast i32 %4691 to float
  %4693 = fmul fast float %4692, %4688
  %4694 = fmul fast float %4693, %4693
  %4695 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4680)  ; FMax(a,b)
  %4696 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4687)  ; FMax(a,b)
  %4697 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4694)  ; FMax(a,b)
  %4698 = fsub fast float 1.000000e+00, %4584
  %4699 = fadd fast float %4698, %4599
  %4700 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4701 = fsub fast float 1.000000e+00, %3971
  %4702 = fmul fast float %4641, %4701
  %4703 = fmul fast float %4644, %4644
  %4704 = fmul fast float %4703, %4702
  %4705 = fmul fast float %4704, %4646
  %4706 = fmul fast float %4701, 0xBFE99999A0000000
  %4707 = fmul fast float %4706, %4586
  %4708 = fmul fast float %4707, %4603
  %4709 = fadd fast float %4708, 1.000000e+00
  %4710 = fadd fast float %4565, -1.000000e+00
  %4711 = fmul fast float %4709, %4710
  %4712 = fadd fast float %4711, 1.000000e+00
  %4713 = fsub fast float %4695, %4556
  %4714 = fsub fast float %4696, %4557
  %4715 = fsub fast float %4697, %4558
  %4716 = fmul fast float %4705, %4713
  %4717 = fmul fast float %4705, %4714
  %4718 = fmul fast float %4705, %4715
  %4719 = fadd fast float %4716, %4556
  %4720 = fadd fast float %4717, %4557
  %4721 = fadd fast float %4718, %4558
  %4722 = fsub fast float %86, %4559
  %4723 = fsub fast float %88, %4560
  %4724 = fsub fast float %90, %4561
  %4725 = fmul fast float %4705, %4722
  %4726 = fmul fast float %4705, %4723
  %4727 = fmul fast float %4705, %4724
  %4728 = fadd fast float %4725, %4559
  %4729 = fadd fast float %4726, %4560
  %4730 = fadd fast float %4727, %4561
  %4731 = fmul fast float %4705, %4700
  %4732 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4733 = fsub fast float 1.000000e+00, %4732
  %4734 = fmul fast float %4731, %4733
  %4735 = fadd fast float %4734, %4732
  %4736 = fsub fast float 1.000000e+00, %4566
  %4737 = fmul fast float %4705, %4736
  %4738 = fadd fast float %4737, %4566
  %4739 = call float @dx.op.dot3.f32(i32 55, float %4728, float %4729, float %4730, float %4728, float %4729, float %4730)  ; Dot3(ax,ay,az,bx,by,bz)
  %4740 = call float @dx.op.unary.f32(i32 25, float %4739)  ; Rsqrt(value)
  %4741 = fmul fast float %4728, %4740
  %4742 = fmul fast float %4729, %4740
  %4743 = fmul fast float %4730, %4740
  br label %4744

; <label>:4744                                    ; preds = %4577, %4570
  %4745 = phi float [ %4576, %4570 ], [ %4583, %4577 ]
  %4746 = phi float [ %4575, %4570 ], [ %4581, %4577 ]
  %4747 = phi float [ %4574, %4570 ], [ %4579, %4577 ]
  %4748 = phi float [ %4573, %4570 ], [ %4582, %4577 ]
  %4749 = phi float [ %4572, %4570 ], [ %4580, %4577 ]
  %4750 = phi float [ %4571, %4570 ], [ %4578, %4577 ]
  %4751 = phi float [ %4556, %4570 ], [ %4719, %4577 ]
  %4752 = phi float [ %4557, %4570 ], [ %4720, %4577 ]
  %4753 = phi float [ %4558, %4570 ], [ %4721, %4577 ]
  %4754 = phi float [ %4559, %4570 ], [ %4741, %4577 ]
  %4755 = phi float [ %4560, %4570 ], [ %4742, %4577 ]
  %4756 = phi float [ %4561, %4570 ], [ %4743, %4577 ]
  %4757 = phi float [ %4562, %4570 ], [ %4628, %4577 ]
  %4758 = phi float [ %4563, %4570 ], [ %4629, %4577 ]
  %4759 = phi float [ %4564, %4570 ], [ %4630, %4577 ]
  %4760 = phi float [ %4565, %4570 ], [ %4735, %4577 ]
  %4761 = phi float [ %4566, %4570 ], [ %4738, %4577 ]
  %4762 = select i1 %199, float 0.000000e+00, float %4753
  %4763 = call float @dx.op.dot3.f32(i32 55, float %4754, float %4755, float %4756, float %4747, float %4746, float %4745)  ; Dot3(ax,ay,az,bx,by,bz)
  %4764 = call float @dx.op.unary.f32(i32 7, float %4763)  ; Saturate(value)
  %4765 = call float @dx.op.dot3.f32(i32 55, float %4750, float %4749, float %4748, float %4754, float %4755, float %4756)  ; Dot3(ax,ay,az,bx,by,bz)
  %4766 = fmul fast float %4765, 2.000000e+00
  %4767 = fmul fast float %4766, %4754
  %4768 = fmul fast float %4766, %4755
  %4769 = fmul fast float %4766, %4756
  %4770 = fsub fast float %4750, %4767
  %4771 = fsub fast float %4749, %4768
  %4772 = fsub fast float %4748, %4769
  %4773 = call float @dx.op.binary.f32(i32 36, float %4761, float 1.000000e+00)  ; FMin(a,b)
  %4774 = fsub fast float 1.000000e+00, %4761
  %4775 = bitcast float %4774 to i32
  %4776 = sub nsw i32 2129859010, %4775
  %4777 = bitcast i32 %4776 to float
  %4778 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %4779 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %4780 = fcmp fast oeq float %4779, 0.000000e+00
  %4781 = fcmp fast oeq float %4778, 0.000000e+00
  %4782 = or i1 %4781, %4780
  br i1 %4782, label %4812, label %4783

; <label>:4783                                    ; preds = %4744
  %4784 = fsub fast float -0.000000e+00, %57
  %4785 = fsub fast float -0.000000e+00, %55
  %4786 = call float @dx.op.unary.f32(i32 24, float %4779)  ; Sqrt(value)
  %4787 = fdiv fast float %4786, %4778
  %4788 = fcmp fast ogt float %4787, 0x3FFB6F8900000000
  %4789 = select i1 %4788, float 0x3FFB6F8900000000, float %4787
  %4790 = fmul fast float %4789, 0x3FE8A23460000000
  %4791 = call float @dx.op.unary.f32(i32 7, float %4790)  ; Saturate(value)
  %4792 = call float @dx.op.binary.f32(i32 35, float %4789, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4793 = fmul fast float %4791, %4778
  %4794 = fmul fast float %4792, 0x3FF279A740000000
  %4795 = fadd fast float %4794, -1.000000e+00
  %4796 = call float @dx.op.dot3.f32(i32 55, float %4784, float %4785, float %56, float %4784, float %4785, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %4797 = call float @dx.op.unary.f32(i32 25, float %4796)  ; Rsqrt(value)
  %4798 = fmul fast float %4797, %4784
  %4799 = fmul fast float %4797, %4785
  %4800 = fmul fast float %4797, %56
  %4801 = fmul fast float %4795, %4795
  %4802 = fsub fast float 1.000000e+00, %4801
  %4803 = fmul fast float %4792, 0x40005F8BE0000000
  %4804 = fsub fast float 0x400C5BF8A0000000, %4803
  %4805 = fdiv fast float %4793, %4804
  %4806 = fmul fast float %4805, 0x3FEE31C3C0000000
  %4807 = fmul fast float %4806, %4802
  %4808 = fmul fast float %4792, 0x3FDACB7480000000
  %4809 = fadd fast float %4808, 0xBFD7347680000000
  %4810 = fmul fast float %4809, %4805
  %4811 = fmul fast float %4810, %4802
  br label %4812

; <label>:4812                                    ; preds = %4783, %4744
  %4813 = phi float [ %4798, %4783 ], [ 0.000000e+00, %4744 ]
  %4814 = phi float [ %4799, %4783 ], [ 0.000000e+00, %4744 ]
  %4815 = phi float [ %4800, %4783 ], [ 0.000000e+00, %4744 ]
  %4816 = phi float [ %4807, %4783 ], [ 0.000000e+00, %4744 ]
  %4817 = phi float [ %4811, %4783 ], [ 0.000000e+00, %4744 ]
  %4818 = call float @dx.op.dot3.f32(i32 55, float %4813, float %4814, float %4815, float %4754, float %4755, float %4756)  ; Dot3(ax,ay,az,bx,by,bz)
  %4819 = fmul fast float %4818, 0x3FDF454380000000
  %4820 = fmul fast float %4818, %4818
  %4821 = fmul fast float %4820, 0x3FEE471020000000
  %4822 = fadd fast float %4821, 0xBFD42F6020000000
  %4823 = fmul fast float %4778, 0x3FD20DD760000000
  %4824 = fmul fast float %4822, %4817
  %4825 = fadd fast float %4824, %4823
  %4826 = fmul fast float %4819, %4816
  %4827 = fadd fast float %4825, %4826
  %4828 = fsub fast float %4825, %4826
  %4829 = call float @dx.op.dot3.f32(i32 55, float %4813, float %4814, float %4815, float %4770, float %4771, float %4772)  ; Dot3(ax,ay,az,bx,by,bz)
  %4830 = fmul fast float %4829, 0x3FDF454380000000
  %4831 = fmul fast float %4829, %4829
  %4832 = fmul fast float %4831, 0x3FEE471020000000
  %4833 = fadd fast float %4832, 0xBFD42F6020000000
  %4834 = call float @dx.op.dot3.f32(i32 55, float %4778, float %4816, float %4817, float 0x3FD20DD760000000, float %4830, float %4833)  ; Dot3(ax,ay,az,bx,by,bz)
  %4835 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %4836 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %4837 = fcmp fast oeq float %4836, 0.000000e+00
  %4838 = fcmp fast oeq float %4835, 0.000000e+00
  %4839 = or i1 %4838, %4837
  br i1 %4839, label %4869, label %4840

; <label>:4840                                    ; preds = %4812
  %4841 = fsub fast float -0.000000e+00, %53
  %4842 = fsub fast float -0.000000e+00, %51
  %4843 = call float @dx.op.unary.f32(i32 24, float %4836)  ; Sqrt(value)
  %4844 = fdiv fast float %4843, %4835
  %4845 = fcmp fast ogt float %4844, 0x3FFB6F8900000000
  %4846 = select i1 %4845, float 0x3FFB6F8900000000, float %4844
  %4847 = fmul fast float %4846, 0x3FE8A23460000000
  %4848 = call float @dx.op.unary.f32(i32 7, float %4847)  ; Saturate(value)
  %4849 = call float @dx.op.binary.f32(i32 35, float %4846, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4850 = fmul fast float %4848, %4835
  %4851 = fmul fast float %4849, 0x3FF279A740000000
  %4852 = fadd fast float %4851, -1.000000e+00
  %4853 = call float @dx.op.dot3.f32(i32 55, float %4841, float %4842, float %52, float %4841, float %4842, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %4854 = call float @dx.op.unary.f32(i32 25, float %4853)  ; Rsqrt(value)
  %4855 = fmul fast float %4854, %4841
  %4856 = fmul fast float %4854, %4842
  %4857 = fmul fast float %4854, %52
  %4858 = fmul fast float %4852, %4852
  %4859 = fsub fast float 1.000000e+00, %4858
  %4860 = fmul fast float %4849, 0x40005F8BE0000000
  %4861 = fsub fast float 0x400C5BF8A0000000, %4860
  %4862 = fdiv fast float %4850, %4861
  %4863 = fmul fast float %4862, 0x3FEE31C3C0000000
  %4864 = fmul fast float %4863, %4859
  %4865 = fmul fast float %4849, 0x3FDACB7480000000
  %4866 = fadd fast float %4865, 0xBFD7347680000000
  %4867 = fmul fast float %4866, %4862
  %4868 = fmul fast float %4867, %4859
  br label %4869

; <label>:4869                                    ; preds = %4840, %4812
  %4870 = phi float [ %4855, %4840 ], [ 0.000000e+00, %4812 ]
  %4871 = phi float [ %4856, %4840 ], [ 0.000000e+00, %4812 ]
  %4872 = phi float [ %4857, %4840 ], [ 0.000000e+00, %4812 ]
  %4873 = phi float [ %4864, %4840 ], [ 0.000000e+00, %4812 ]
  %4874 = phi float [ %4868, %4840 ], [ 0.000000e+00, %4812 ]
  %4875 = call float @dx.op.dot3.f32(i32 55, float %4870, float %4871, float %4872, float %4754, float %4755, float %4756)  ; Dot3(ax,ay,az,bx,by,bz)
  %4876 = fmul fast float %4875, 0x3FDF454380000000
  %4877 = fmul fast float %4875, %4875
  %4878 = fmul fast float %4877, 0x3FEE471020000000
  %4879 = fadd fast float %4878, 0xBFD42F6020000000
  %4880 = fmul fast float %4835, 0x3FD20DD760000000
  %4881 = fmul fast float %4879, %4874
  %4882 = fadd fast float %4881, %4880
  %4883 = fmul fast float %4876, %4873
  %4884 = fadd fast float %4882, %4883
  %4885 = fsub fast float %4882, %4883
  %4886 = call float @dx.op.dot3.f32(i32 55, float %4870, float %4871, float %4872, float %4770, float %4771, float %4772)  ; Dot3(ax,ay,az,bx,by,bz)
  %4887 = fmul fast float %4886, 0x3FDF454380000000
  %4888 = fmul fast float %4886, %4886
  %4889 = fmul fast float %4888, 0x3FEE471020000000
  %4890 = fadd fast float %4889, 0xBFD42F6020000000
  %4891 = call float @dx.op.dot3.f32(i32 55, float %4835, float %4873, float %4874, float 0x3FD20DD760000000, float %4887, float %4890)  ; Dot3(ax,ay,az,bx,by,bz)
  %4892 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %46)  ; FMax(a,b)
  %4893 = call float @dx.op.dot3.f32(i32 55, float %47, float %48, float %49, float %47, float %48, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %4894 = fcmp fast oeq float %4893, 0.000000e+00
  %4895 = fcmp fast oeq float %4892, 0.000000e+00
  %4896 = or i1 %4895, %4894
  br i1 %4896, label %4926, label %4897

; <label>:4897                                    ; preds = %4869
  %4898 = fsub fast float -0.000000e+00, %49
  %4899 = fsub fast float -0.000000e+00, %47
  %4900 = call float @dx.op.unary.f32(i32 24, float %4893)  ; Sqrt(value)
  %4901 = fdiv fast float %4900, %4892
  %4902 = fcmp fast ogt float %4901, 0x3FFB6F8900000000
  %4903 = select i1 %4902, float 0x3FFB6F8900000000, float %4901
  %4904 = fmul fast float %4903, 0x3FE8A23460000000
  %4905 = call float @dx.op.unary.f32(i32 7, float %4904)  ; Saturate(value)
  %4906 = call float @dx.op.binary.f32(i32 35, float %4903, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4907 = fmul fast float %4905, %4892
  %4908 = fmul fast float %4906, 0x3FF279A740000000
  %4909 = fadd fast float %4908, -1.000000e+00
  %4910 = call float @dx.op.dot3.f32(i32 55, float %4898, float %4899, float %48, float %4898, float %4899, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %4911 = call float @dx.op.unary.f32(i32 25, float %4910)  ; Rsqrt(value)
  %4912 = fmul fast float %4911, %4898
  %4913 = fmul fast float %4911, %4899
  %4914 = fmul fast float %4911, %48
  %4915 = fmul fast float %4909, %4909
  %4916 = fsub fast float 1.000000e+00, %4915
  %4917 = fmul fast float %4906, 0x40005F8BE0000000
  %4918 = fsub fast float 0x400C5BF8A0000000, %4917
  %4919 = fdiv fast float %4907, %4918
  %4920 = fmul fast float %4919, 0x3FEE31C3C0000000
  %4921 = fmul fast float %4920, %4916
  %4922 = fmul fast float %4906, 0x3FDACB7480000000
  %4923 = fadd fast float %4922, 0xBFD7347680000000
  %4924 = fmul fast float %4923, %4919
  %4925 = fmul fast float %4924, %4916
  br label %4926

; <label>:4926                                    ; preds = %4897, %4869
  %4927 = phi float [ %4912, %4897 ], [ 0.000000e+00, %4869 ]
  %4928 = phi float [ %4913, %4897 ], [ 0.000000e+00, %4869 ]
  %4929 = phi float [ %4914, %4897 ], [ 0.000000e+00, %4869 ]
  %4930 = phi float [ %4921, %4897 ], [ 0.000000e+00, %4869 ]
  %4931 = phi float [ %4925, %4897 ], [ 0.000000e+00, %4869 ]
  %4932 = call float @dx.op.dot3.f32(i32 55, float %4927, float %4928, float %4929, float %4754, float %4755, float %4756)  ; Dot3(ax,ay,az,bx,by,bz)
  %4933 = fmul fast float %4932, 0x3FDF454380000000
  %4934 = fmul fast float %4932, %4932
  %4935 = fmul fast float %4934, 0x3FEE471020000000
  %4936 = fadd fast float %4935, 0xBFD42F6020000000
  %4937 = fmul fast float %4892, 0x3FD20DD760000000
  %4938 = fmul fast float %4936, %4931
  %4939 = fadd fast float %4938, %4937
  %4940 = fmul fast float %4933, %4930
  %4941 = fadd fast float %4939, %4940
  %4942 = fsub fast float %4939, %4940
  %4943 = call float @dx.op.dot3.f32(i32 55, float %4927, float %4928, float %4929, float %4770, float %4771, float %4772)  ; Dot3(ax,ay,az,bx,by,bz)
  %4944 = fmul fast float %4943, 0x3FDF454380000000
  %4945 = fmul fast float %4943, %4943
  %4946 = fmul fast float %4945, 0x3FEE471020000000
  %4947 = fadd fast float %4946, 0xBFD42F6020000000
  %4948 = call float @dx.op.dot3.f32(i32 55, float %4892, float %4930, float %4931, float 0x3FD20DD760000000, float %4944, float %4947)  ; Dot3(ax,ay,az,bx,by,bz)
  %4949 = call float @dx.op.binary.f32(i32 35, float %4827, float 0.000000e+00)  ; FMax(a,b)
  %4950 = call float @dx.op.binary.f32(i32 35, float %4884, float 0.000000e+00)  ; FMax(a,b)
  %4951 = call float @dx.op.binary.f32(i32 35, float %4941, float 0.000000e+00)  ; FMax(a,b)
  %4952 = call float @dx.op.binary.f32(i32 35, float %4828, float 0.000000e+00)  ; FMax(a,b)
  %4953 = call float @dx.op.binary.f32(i32 35, float %4885, float 0.000000e+00)  ; FMax(a,b)
  %4954 = call float @dx.op.binary.f32(i32 35, float %4942, float 0.000000e+00)  ; FMax(a,b)
  %4955 = call float @dx.op.binary.f32(i32 35, float %4834, float 0.000000e+00)  ; FMax(a,b)
  %4956 = call float @dx.op.binary.f32(i32 35, float %4891, float 0.000000e+00)  ; FMax(a,b)
  %4957 = call float @dx.op.binary.f32(i32 35, float %4948, float 0.000000e+00)  ; FMax(a,b)
  %4958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4959 = extractvalue %dx.types.CBufRet.f32 %4958, 0
  %4960 = call float @dx.op.binary.f32(i32 36, float %4757, float %4959)  ; FMin(a,b)
  %4961 = fsub fast float 1.000000e+00, %4773
  %4962 = fmul fast float %4960, %4961
  %4963 = fsub fast float 1.000000e+00, %4962
  %4964 = bitcast float %4963 to i32
  %4965 = sub nsw i32 2129859010, %4964
  %4966 = bitcast i32 %4965 to float
  %4967 = call float @dx.op.binary.f32(i32 36, float %4758, float %4959)  ; FMin(a,b)
  %4968 = fmul fast float %4967, %4961
  %4969 = fsub fast float 1.000000e+00, %4968
  %4970 = bitcast float %4969 to i32
  %4971 = sub nsw i32 2129859010, %4970
  %4972 = bitcast i32 %4971 to float
  %4973 = call float @dx.op.binary.f32(i32 36, float %4759, float %4959)  ; FMin(a,b)
  %4974 = fmul fast float %4973, %4961
  %4975 = fsub fast float 1.000000e+00, %4974
  %4976 = bitcast float %4975 to i32
  %4977 = sub nsw i32 2129859010, %4976
  %4978 = bitcast i32 %4977 to float
  %4979 = fmul fast float %4949, %4773
  %4980 = fmul fast float %4979, %4966
  %4981 = fmul fast float %4950, %4773
  %4982 = fmul fast float %4981, %4972
  %4983 = fmul fast float %4951, %4773
  %4984 = fmul fast float %4983, %4978
  %4985 = call float @dx.op.binary.f32(i32 36, float %4751, float %4959)  ; FMin(a,b)
  %4986 = fmul fast float %4985, %4961
  %4987 = fsub fast float 1.000000e+00, %4986
  %4988 = bitcast float %4987 to i32
  %4989 = sub nsw i32 2129859010, %4988
  %4990 = bitcast i32 %4989 to float
  %4991 = call float @dx.op.binary.f32(i32 36, float %4752, float %4959)  ; FMin(a,b)
  %4992 = fmul fast float %4991, %4961
  %4993 = fsub fast float 1.000000e+00, %4992
  %4994 = bitcast float %4993 to i32
  %4995 = sub nsw i32 2129859010, %4994
  %4996 = bitcast i32 %4995 to float
  %4997 = call float @dx.op.binary.f32(i32 36, float %4762, float %4959)  ; FMin(a,b)
  %4998 = fmul fast float %4997, %4961
  %4999 = fsub fast float 1.000000e+00, %4998
  %5000 = bitcast float %4999 to i32
  %5001 = sub nsw i32 2129859010, %5000
  %5002 = bitcast i32 %5001 to float
  %5003 = fmul fast float %4955, %4773
  %5004 = fmul fast float %5003, %4990
  %5005 = fmul fast float %4956, %4773
  %5006 = fmul fast float %5005, %4996
  %5007 = fmul fast float %4957, %4773
  %5008 = fmul fast float %5007, %5002
  %5009 = call float @dx.op.dot3.f32(i32 55, float %4980, float %4982, float %4984, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5010 = select i1 %199, float 0.000000e+00, float %4980
  %5011 = select i1 %199, float %5009, float %4982
  %5012 = select i1 %199, float 0.000000e+00, float %4984
  %5013 = call float @dx.op.dot3.f32(i32 55, float %4952, float %4953, float %4954, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5014 = select i1 %199, float 0.000000e+00, float %4952
  %5015 = select i1 %199, float %5013, float %4953
  %5016 = select i1 %199, float 0.000000e+00, float %4954
  %5017 = call float @dx.op.dot3.f32(i32 55, float %5004, float %5006, float %5008, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5018 = select i1 %199, float 0.000000e+00, float %5004
  %5019 = select i1 %199, float %5017, float %5006
  %5020 = select i1 %199, float 0.000000e+00, float %5008
  %5021 = fmul fast float %4764, 9.843750e-01
  %5022 = fmul fast float %4760, 9.843750e-01
  %5023 = fadd fast float %5021, 7.812500e-03
  %5024 = fadd fast float %5022, 7.812500e-03
  %5025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %5023, float %5024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5026 = extractvalue %dx.types.ResRet.f32 %5025, 2
  %5027 = extractvalue %dx.types.ResRet.f32 %5025, 3
  %5028 = fmul fast float %5026, %4751
  %5029 = fmul fast float %5026, %4752
  %5030 = fmul fast float %5026, %4762
  %5031 = fadd fast float %5028, %5027
  %5032 = fadd fast float %5029, %5027
  %5033 = fadd fast float %5030, %5027
  %5034 = call float @dx.op.binary.f32(i32 35, float %5032, float %5033)  ; FMax(a,b)
  %5035 = call float @dx.op.binary.f32(i32 35, float %5031, float %5034)  ; FMax(a,b)
  %5036 = fsub fast float 1.000000e+00, %5035
  %5037 = fmul fast float %5031, %5018
  %5038 = fmul fast float %5032, %5019
  %5039 = fmul fast float %5033, %5020
  %5040 = fadd fast float %5037, %3452
  %5041 = fmul fast float %5040, %971
  %5042 = fadd fast float %5038, %3453
  %5043 = fmul fast float %5042, %971
  %5044 = fadd fast float %5039, %3454
  %5045 = fmul fast float %5044, %971
  %5046 = fmul fast float %5036, %5012
  %5047 = fmul fast float %5036, %5011
  %5048 = fmul fast float %5036, %5010
  %5049 = fmul fast float %5036, %3583
  %5050 = fadd fast float %5049, -1.000000e+00
  %5051 = fmul fast float %5050, %971
  %5052 = fadd fast float %5051, 1.000000e+00
  %5053 = fmul fast float %5036, %3582
  %5054 = fadd fast float %5053, -1.000000e+00
  %5055 = fmul fast float %5054, %971
  %5056 = fadd fast float %5055, 1.000000e+00
  %5057 = fmul fast float %5036, %3581
  %5058 = fadd fast float %5057, -1.000000e+00
  %5059 = fmul fast float %5058, %971
  %5060 = fadd fast float %5059, 1.000000e+00
  %5061 = fmul fast float %5060, %5014
  %5062 = fmul fast float %5056, %5015
  %5063 = fmul fast float %5052, %5016
  %5064 = fadd fast float %5061, %5048
  %5065 = fmul fast float %5064, %971
  %5066 = fadd fast float %5062, %5047
  %5067 = fmul fast float %5066, %971
  %5068 = fadd fast float %5063, %5046
  %5069 = fmul fast float %5068, %971
  %5070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5071 = extractvalue %dx.types.CBufRet.f32 %5070, 3
  %5072 = fcmp fast oeq float %5071, 0.000000e+00
  br i1 %5072, label %5258, label %5073

; <label>:5073                                    ; preds = %4926
  %5074 = extractvalue %dx.types.CBufRet.f32 %5070, 0
  %5075 = extractvalue %dx.types.CBufRet.f32 %5070, 1
  %5076 = extractvalue %dx.types.CBufRet.f32 %5070, 2
  %5077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5078 = extractvalue %dx.types.CBufRet.f32 %5077, 0
  %5079 = extractvalue %dx.types.CBufRet.f32 %5077, 1
  %5080 = extractvalue %dx.types.CBufRet.f32 %5077, 2
  %5081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5082 = extractvalue %dx.types.CBufRet.f32 %5081, 0
  %5083 = extractvalue %dx.types.CBufRet.f32 %5081, 1
  %5084 = call float @dx.op.dot3.f32(i32 55, float %5078, float %5079, float %5080, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5085 = select i1 %199, float %5082, float %5078
  %5086 = select i1 %199, float %5084, float %5079
  %5087 = select i1 %199, float %5083, float %5080
  %5088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5089 = extractvalue %dx.types.CBufRet.f32 %5088, 1
  %5090 = fcmp fast une float %5089, 0.000000e+00
  br i1 %5090, label %5091, label %5108

; <label>:5091                                    ; preds = %5073
  %5092 = fptoui float %77 to i32
  %5093 = fptoui float %78 to i32
  %5094 = lshr i32 %5092, 4
  %5095 = lshr i32 %5093, 4
  %5096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5097 = extractvalue %dx.types.CBufRet.f32 %5096, 0
  %5098 = fptoui float %5097 to i32
  %5099 = add i32 %5098, 15
  %5100 = lshr i32 %5099, 4
  %5101 = mul i32 %5100, %5095
  %5102 = add i32 %5101, %5094
  %5103 = shl i32 %5102, 3
  %5104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5103, i32 undef)  ; BufferLoad(srv,index,wot)
  %5105 = extractvalue %dx.types.ResRet.i32 %5104, 0
  %5106 = and i32 %5105, -268435456
  %5107 = icmp eq i32 %5106, -1342177280
  br i1 %5107, label %5118, label %5108

; <label>:5108                                    ; preds = %5091, %5073
  %5109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5110 = extractvalue %dx.types.CBufRet.f32 %5109, 2
  %5111 = extractvalue %dx.types.CBufRet.f32 %5109, 3
  %5112 = fmul fast float %5110, %77
  %5113 = fmul fast float %5111, %78
  %5114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %24, float %5112, float %5113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5115 = extractvalue %dx.types.ResRet.f32 %5114, 0
  %5116 = extractvalue %dx.types.ResRet.f32 %5114, 1
  %5117 = extractvalue %dx.types.ResRet.f32 %5114, 2
  br label %5118

; <label>:5118                                    ; preds = %5108, %5091
  %5119 = phi float [ %5115, %5108 ], [ 0.000000e+00, %5091 ]
  %5120 = phi float [ %5116, %5108 ], [ 0.000000e+00, %5091 ]
  %5121 = phi float [ %5117, %5108 ], [ 0.000000e+00, %5091 ]
  %5122 = call float @dx.op.binary.f32(i32 36, float %5120, float %5121)  ; FMin(a,b)
  %5123 = call float @dx.op.binary.f32(i32 36, float %5119, float %5122)  ; FMin(a,b)
  %5124 = fcmp fast ogt float %5123, 0.000000e+00
  br i1 %5124, label %5125, label %5258, !dx.controlflow.hints !70

; <label>:5125                                    ; preds = %5118
  %5126 = fmul fast float %5119, %5085
  %5127 = fmul fast float %5120, %5086
  %5128 = fmul fast float %5121, %5087
  %5129 = fsub fast float %5074, %4750
  %5130 = fsub fast float %5075, %4749
  %5131 = fsub fast float %5076, %4748
  %5132 = call float @dx.op.dot3.f32(i32 55, float %5129, float %5130, float %5131, float %5129, float %5130, float %5131)  ; Dot3(ax,ay,az,bx,by,bz)
  %5133 = call float @dx.op.unary.f32(i32 25, float %5132)  ; Rsqrt(value)
  %5134 = fmul fast float %5133, %5129
  %5135 = fmul fast float %5133, %5130
  %5136 = fmul fast float %5133, %5131
  %5137 = call float @dx.op.dot3.f32(i32 55, float %5074, float %5075, float %5076, float %4754, float %4755, float %4756)  ; Dot3(ax,ay,az,bx,by,bz)
  %5138 = call float @dx.op.dot3.f32(i32 55, float %4747, float %4746, float %4745, float %5134, float %5135, float %5136)  ; Dot3(ax,ay,az,bx,by,bz)
  %5139 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  %5140 = fmul fast float %5139, %5139
  %5141 = fmul fast float %5140, %4777
  %5142 = call float @dx.op.unary.f32(i32 7, float %5141)  ; Saturate(value)
  %5143 = fmul fast float %5142, %5139
  %5144 = call float @dx.op.dot3.f32(i32 55, float %4754, float %4755, float %4756, float %5134, float %5135, float %5136)  ; Dot3(ax,ay,az,bx,by,bz)
  %5145 = fmul fast float %5144, %5144
  %5146 = call float @dx.op.unary.f32(i32 6, float %5137)  ; FAbs(value)
  %5147 = fsub fast float 1.000000e+00, %4760
  %5148 = call float @dx.op.binary.f32(i32 35, float %5147, float 0x3F847AE140000000)  ; FMax(a,b)
  %5149 = fmul fast float %5148, %5148
  %5150 = fmul fast float %5149, %5149
  %5151 = fsub fast float 1.000000e+00, %5150
  %5152 = fmul fast float %4764, %4764
  %5153 = fmul fast float %5152, %5151
  %5154 = fadd fast float %5153, %5150
  %5155 = bitcast float %5154 to i32
  %5156 = ashr i32 %5155, 1
  %5157 = add nsw i32 %5156, 532487669
  %5158 = bitcast i32 %5157 to float
  %5159 = fadd fast float %5158, %4764
  %5160 = fmul fast float %5150, %5145
  %5161 = fsub fast float 1.000000e+00, %5145
  %5162 = fadd fast float %5161, %5160
  %5163 = fmul fast float %5146, %5146
  %5164 = fmul fast float %5163, %5151
  %5165 = fadd fast float %5164, %5150
  %5166 = bitcast float %5165 to i32
  %5167 = ashr i32 %5166, 1
  %5168 = add nsw i32 %5167, 532487669
  %5169 = bitcast i32 %5168 to float
  %5170 = fadd fast float %5169, %5146
  %5171 = fmul fast float %5162, %5162
  %5172 = fmul fast float %5171, %5159
  %5173 = fmul fast float %5172, %5170
  %5174 = fdiv fast float 0x3FF0A00000000000, %5173
  %5175 = fmul fast float %5174, %5150
  %5176 = call float @dx.op.unary.f32(i32 6, float %5138)  ; FAbs(value)
  %5177 = fsub fast float 1.000000e+00, %5176
  %5178 = bitcast float %5177 to i32
  %5179 = sitofp i32 %5178 to float
  %5180 = fmul fast float %5179, 5.000000e+00
  %5181 = fadd fast float %5180, 0xC1EFBF8940000000
  %5182 = fptosi float %5181 to i32
  %5183 = bitcast i32 %5182 to float
  %5184 = fsub fast float 1.000000e+00, %4751
  %5185 = fsub fast float 1.000000e+00, %4752
  %5186 = fsub fast float 1.000000e+00, %4762
  %5187 = fmul fast float %5183, %5184
  %5188 = fmul fast float %5183, %5185
  %5189 = fmul fast float %5183, %5186
  %5190 = fadd fast float %5187, %4751
  %5191 = fadd fast float %5188, %4752
  %5192 = fadd fast float %5189, %4762
  %5193 = fmul fast float %5137, 9.843750e-01
  %5194 = fadd fast float %5193, 7.812500e-03
  %5195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %5194, float %5024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5196 = extractvalue %dx.types.ResRet.f32 %5195, 2
  %5197 = extractvalue %dx.types.ResRet.f32 %5195, 3
  %5198 = fmul fast float %5196, %4751
  %5199 = fmul fast float %5196, %4752
  %5200 = fmul fast float %5196, %4762
  %5201 = fadd fast float %5198, %5197
  %5202 = fadd fast float %5199, %5197
  %5203 = fadd fast float %5200, %5197
  %5204 = call float @dx.op.binary.f32(i32 35, float %5202, float %5203)  ; FMax(a,b)
  %5205 = call float @dx.op.binary.f32(i32 35, float %5201, float %5204)  ; FMax(a,b)
  %5206 = fsub fast float 1.000000e+00, %5205
  %5207 = fsub fast float -0.000000e+00, %4754
  %5208 = fsub fast float -0.000000e+00, %4755
  %5209 = fsub fast float -0.000000e+00, %4756
  %5210 = call float @dx.op.dot3.f32(i32 55, float %5074, float %5075, float %5076, float %5207, float %5208, float %5209)  ; Dot3(ax,ay,az,bx,by,bz)
  %5211 = call float @dx.op.unary.f32(i32 7, float %5210)  ; Saturate(value)
  %5212 = fmul fast float %5211, 9.843750e-01
  %5213 = fadd fast float %5212, 7.812500e-03
  %5214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %5213, float %5024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5215 = extractvalue %dx.types.ResRet.f32 %5214, 2
  %5216 = extractvalue %dx.types.ResRet.f32 %5214, 3
  %5217 = fmul fast float %5215, %4751
  %5218 = fmul fast float %5215, %4752
  %5219 = fmul fast float %5215, %4762
  %5220 = fadd fast float %5217, %5216
  %5221 = fadd fast float %5218, %5216
  %5222 = fadd fast float %5219, %5216
  %5223 = call float @dx.op.binary.f32(i32 35, float %5221, float %5222)  ; FMax(a,b)
  %5224 = call float @dx.op.binary.f32(i32 35, float %5220, float %5223)  ; FMax(a,b)
  %5225 = fsub fast float 1.000000e+00, %5224
  %5226 = fmul fast float %5225, %5211
  %5227 = fmul fast float %5226, %3581
  %5228 = fmul fast float %5226, %3582
  %5229 = fmul fast float %5226, %3583
  %5230 = fmul fast float %5206, %5143
  %5231 = fadd fast float %5227, %5230
  %5232 = fadd fast float %5228, %5230
  %5233 = fadd fast float %5229, %5230
  %5234 = fmul fast float %5231, %5126
  %5235 = fmul fast float %5232, %5127
  %5236 = fmul fast float %5233, %5128
  %5237 = fmul fast float %5143, %5126
  %5238 = fmul fast float %5237, %5175
  %5239 = fmul fast float %5238, %5190
  %5240 = fmul fast float %5143, %5127
  %5241 = fmul fast float %5240, %5175
  %5242 = fmul fast float %5241, %5191
  %5243 = fmul fast float %5143, %5128
  %5244 = fmul fast float %5243, %5175
  %5245 = fmul fast float %5244, %5192
  %5246 = fadd fast float %5234, %5064
  %5247 = fmul fast float %5246, %971
  %5248 = fadd fast float %5235, %5066
  %5249 = fmul fast float %5248, %971
  %5250 = fadd fast float %5236, %5068
  %5251 = fmul fast float %5250, %971
  %5252 = fadd fast float %5239, %5040
  %5253 = fmul fast float %5252, %971
  %5254 = fadd fast float %5242, %5042
  %5255 = fmul fast float %5254, %971
  %5256 = fadd fast float %5245, %5044
  %5257 = fmul fast float %5256, %971
  br label %5258

; <label>:5258                                    ; preds = %5125, %5118, %4926
  %5259 = phi float [ %5041, %4926 ], [ %5041, %5118 ], [ %5253, %5125 ]
  %5260 = phi float [ %5043, %4926 ], [ %5043, %5118 ], [ %5255, %5125 ]
  %5261 = phi float [ %5045, %4926 ], [ %5045, %5118 ], [ %5257, %5125 ]
  %5262 = phi float [ %5065, %4926 ], [ %5065, %5118 ], [ %5247, %5125 ]
  %5263 = phi float [ %5067, %4926 ], [ %5067, %5118 ], [ %5249, %5125 ]
  %5264 = phi float [ %5069, %4926 ], [ %5069, %5118 ], [ %5251, %5125 ]
  %5265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5266 = extractvalue %dx.types.CBufRet.i32 %5265, 0
  %5267 = icmp eq i32 %5266, 0
  br i1 %5267, label %5661, label %5268

; <label>:5268                                    ; preds = %5258
  %5269 = fptoui float %77 to i32
  %5270 = fptoui float %78 to i32
  %5271 = lshr i32 %5269, 4
  %5272 = lshr i32 %5270, 4
  %5273 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5274 = extractvalue %dx.types.CBufRet.i32 %5273, 0
  %5275 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5272, i32 %5274, i32 %5271)  ; UMad(a,b,c)
  %5276 = add nsw i32 %5266, -1
  %5277 = call i32 @dx.op.binary.i32(i32 37, i32 %5276, i32 0)  ; IMax(a,b)
  %5278 = call float @dx.op.binary.f32(i32 35, float %72, float 0.000000e+00)  ; FMax(a,b)
  %5279 = fptoui float %5278 to i32
  %5280 = lshr i32 %5279, 5
  %5281 = call i32 @dx.op.binary.i32(i32 40, i32 %5280, i32 8191)  ; UMin(a,b)
  %5282 = shl i32 %5281, 2
  %5283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5282, i32 undef)  ; BufferLoad(srv,index,wot)
  %5284 = extractvalue %dx.types.ResRet.i32 %5283, 0
  %5285 = lshr i32 %5284, 16
  %5286 = and i32 %5284, 65535
  %5287 = lshr i32 %5284, 21
  %5288 = lshr i32 %5286, 5
  %5289 = call i32 @dx.op.binary.i32(i32 40, i32 %5288, i32 %5277)  ; UMin(a,b)
  %5290 = icmp ugt i32 %5287, %5289
  br i1 %5290, label %5661, label %5291

; <label>:5291                                    ; preds = %5268
  br label %5292

; <label>:5292                                    ; preds = %5651, %5291
  %5293 = phi i32 [ %5658, %5651 ], [ %5287, %5291 ]
  %5294 = phi float [ %5652, %5651 ], [ %5259, %5291 ]
  %5295 = phi float [ %5653, %5651 ], [ %5260, %5291 ]
  %5296 = phi float [ %5654, %5651 ], [ %5261, %5291 ]
  %5297 = phi float [ %5655, %5651 ], [ %5262, %5291 ]
  %5298 = phi float [ %5656, %5651 ], [ %5263, %5291 ]
  %5299 = phi float [ %5657, %5651 ], [ %5264, %5291 ]
  %5300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5301 = extractvalue %dx.types.CBufRet.i32 %5300, 0
  %5302 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5275, i32 %5301, i32 %5293)  ; UMad(a,b,c)
  %5303 = shl i32 %5302, 2
  %5304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5303, i32 undef)  ; BufferLoad(srv,index,wot)
  %5305 = extractvalue %dx.types.ResRet.i32 %5304, 0
  %5306 = shl i32 %5293, 5
  %5307 = sub nsw i32 %5285, %5306
  %5308 = call i32 @dx.op.binary.i32(i32 37, i32 %5307, i32 0)  ; IMax(a,b)
  %5309 = call i32 @dx.op.binary.i32(i32 38, i32 %5308, i32 31)  ; IMin(a,b)
  %5310 = sub nsw i32 1, %5285
  %5311 = add nsw i32 %5310, %5286
  %5312 = call i32 @dx.op.binary.i32(i32 37, i32 %5311, i32 0)  ; IMax(a,b)
  %5313 = call i32 @dx.op.binary.i32(i32 38, i32 %5312, i32 32)  ; IMin(a,b)
  %5314 = and i32 %5313, 31
  %5315 = shl i32 -1, %5314
  %5316 = xor i32 %5315, -1
  %5317 = and i32 %5309, 31
  %5318 = shl i32 %5316, %5317
  %5319 = icmp eq i32 %5313, 32
  %5320 = select i1 %5319, i32 -1, i32 %5318
  %5321 = and i32 %5320, %5305
  %5322 = icmp eq i32 %5321, 0
  br i1 %5322, label %5651, label %5323

; <label>:5323                                    ; preds = %5292
  br label %5324

; <label>:5324                                    ; preds = %5404, %5323
  %5325 = phi i32 [ %5336, %5404 ], [ %5321, %5323 ]
  %5326 = phi float [ %5405, %5404 ], [ %5294, %5323 ]
  %5327 = phi float [ %5406, %5404 ], [ %5295, %5323 ]
  %5328 = phi float [ %5407, %5404 ], [ %5296, %5323 ]
  %5329 = phi float [ %5408, %5404 ], [ %5297, %5323 ]
  %5330 = phi float [ %5409, %5404 ], [ %5298, %5323 ]
  %5331 = phi float [ %5410, %5404 ], [ %5299, %5323 ]
  %5332 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5325)  ; FirstbitLo(value)
  %5333 = add i32 %5332, %5306
  %5334 = and i32 %5332, 31
  %5335 = shl i32 1, %5334
  %5336 = xor i32 %5335, %5325
  %5337 = mul i32 %5333, 112
  %5338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5337, i32 undef)  ; BufferLoad(srv,index,wot)
  %5339 = extractvalue %dx.types.ResRet.f32 %5338, 0
  %5340 = extractvalue %dx.types.ResRet.f32 %5338, 1
  %5341 = extractvalue %dx.types.ResRet.f32 %5338, 2
  %5342 = or i32 %5337, 12
  %5343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5342, i32 undef)  ; BufferLoad(srv,index,wot)
  %5344 = extractvalue %dx.types.ResRet.f32 %5343, 0
  %5345 = add i32 %5337, 44
  %5346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5345, i32 undef)  ; BufferLoad(srv,index,wot)
  %5347 = extractvalue %dx.types.ResRet.f32 %5346, 0
  %5348 = add i32 %5337, 48
  %5349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5348, i32 undef)  ; BufferLoad(srv,index,wot)
  %5350 = extractvalue %dx.types.ResRet.f32 %5349, 0
  %5351 = extractvalue %dx.types.ResRet.f32 %5349, 1
  %5352 = extractvalue %dx.types.ResRet.f32 %5349, 2
  %5353 = add i32 %5337, 80
  %5354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5353, i32 undef)  ; BufferLoad(srv,index,wot)
  %5355 = extractvalue %dx.types.ResRet.f32 %5354, 1
  %5356 = extractvalue %dx.types.ResRet.f32 %5354, 2
  %5357 = call float @dx.op.dot3.f32(i32 55, float %5339, float %5340, float %5341, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5358 = select i1 %199, float %5355, float %5339
  %5359 = select i1 %199, float %5357, float %5340
  %5360 = select i1 %199, float %5356, float %5341
  %5361 = fsub fast float %5350, %160
  %5362 = fsub fast float %5351, %161
  %5363 = fsub fast float %5352, %162
  %5364 = call float @dx.op.dot3.f32(i32 55, float %5361, float %5362, float %5363, float %5361, float %5362, float %5363)  ; Dot3(ax,ay,az,bx,by,bz)
  %5365 = call float @dx.op.unary.f32(i32 24, float %5364)  ; Sqrt(value)
  %5366 = fdiv fast float 1.000000e+00, %5365
  %5367 = fmul fast float %5366, %5361
  %5368 = fmul fast float %5366, %5362
  %5369 = fmul fast float %5366, %5363
  %5370 = fadd fast float %5365, %5344
  %5371 = fdiv fast float 1.000000e+00, %5370
  %5372 = fmul float %5347, %5371
  %5373 = fmul float %5372, %5372
  %5374 = call float @dx.op.unary.f32(i32 7, float %5373)  ; Saturate(value)
  %5375 = and i32 %5335, %5321
  %5376 = icmp eq i32 %5375, 0
  br i1 %5376, label %5399, label %5377, !dx.controlflow.hints !71

; <label>:5377                                    ; preds = %5324
  %5378 = lshr i32 %5269, 5
  %5379 = lshr i32 %5270, 5
  %5380 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %5378, i32 %5379, i32 %5333, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5381 = extractvalue %dx.types.ResRet.i32 %5380, 0
  %5382 = and i32 %5381, 3
  %5383 = icmp eq i32 %5382, 0
  %5384 = select i1 %5383, float 1.000000e+00, float 0.000000e+00
  %5385 = icmp eq i32 %5382, 3
  br i1 %5385, label %5386, label %5399

; <label>:5386                                    ; preds = %5377
  %5387 = lshr i32 %5381, 10
  %5388 = and i32 %5387, 8160
  %5389 = and i32 %5270, 31
  %5390 = or i32 %5388, %5389
  %5391 = lshr i32 %5381, 1
  %5392 = and i32 %5391, 16352
  %5393 = and i32 %5269, 31
  %5394 = or i32 %5392, %5393
  %5395 = lshr i32 %5381, 23
  %5396 = and i32 %5395, 255
  %5397 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %5394, i32 %5390, i32 %5396, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5398 = extractvalue %dx.types.ResRet.f32 %5397, 0
  br label %5399

; <label>:5399                                    ; preds = %5386, %5377, %5324
  %5400 = phi float [ %5398, %5386 ], [ %5384, %5377 ], [ 0.000000e+00, %5324 ]
  %5401 = call float @dx.op.binary.f32(i32 36, float %5400, float %5400)  ; FMin(a,b)
  %5402 = call float @dx.op.binary.f32(i32 36, float %5400, float %5401)  ; FMin(a,b)
  %5403 = fcmp fast ogt float %5402, 0.000000e+00
  br i1 %5403, label %5412, label %5404, !dx.controlflow.hints !72

; <label>:5404                                    ; preds = %5473, %5399
  %5405 = phi float [ %5326, %5399 ], [ %5647, %5473 ]
  %5406 = phi float [ %5327, %5399 ], [ %5648, %5473 ]
  %5407 = phi float [ %5328, %5399 ], [ %5649, %5473 ]
  %5408 = phi float [ %5329, %5399 ], [ %5635, %5473 ]
  %5409 = phi float [ %5330, %5399 ], [ %5636, %5473 ]
  %5410 = phi float [ %5331, %5399 ], [ %5637, %5473 ]
  %5411 = icmp eq i32 %5325, %5335
  br i1 %5411, label %5650, label %5324

; <label>:5412                                    ; preds = %5399
  %5413 = fmul fast float %5400, %5358
  %5414 = fmul fast float %5400, %5359
  %5415 = fmul fast float %5400, %5360
  %5416 = fsub fast float %5352, %3958
  %5417 = fcmp fast ogt float %5416, 0.000000e+00
  %5418 = fsub fast float %162, %3958
  %5419 = fcmp fast ogt float %5418, 0.000000e+00
  %5420 = xor i1 %5419, %5417
  %5421 = fsub fast float %3958, %5352
  %5422 = fmul fast float %5421, 2.000000e+00
  %5423 = fadd fast float %5422, %5352
  %5424 = select i1 %5420, float %5352, float %5423
  %5425 = fsub fast float %5424, %162
  %5426 = call float @dx.op.dot3.f32(i32 55, float %5361, float %5362, float %5425, float %5361, float %5362, float %5425)  ; Dot3(ax,ay,az,bx,by,bz)
  %5427 = call float @dx.op.unary.f32(i32 25, float %5426)  ; Rsqrt(value)
  %5428 = fmul fast float %5427, %5361
  %5429 = fmul fast float %5427, %5362
  %5430 = fmul fast float %5427, %5425
  %5431 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3966)  ; Dot3(ax,ay,az,bx,by,bz)
  %5432 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5428, float %5429, float %5430)  ; Dot3(ax,ay,az,bx,by,bz)
  %5433 = fdiv fast float 1.000000e+00, %5432
  %5434 = fmul fast float %5433, %5431
  %5435 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5418, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5436 = fcmp fast ogt float %5435, 0.000000e+00
  %5437 = fcmp fast olt float %5435, 0.000000e+00
  %5438 = zext i1 %5436 to i32
  %5439 = zext i1 %5437 to i32
  %5440 = sub nsw i32 %5438, %5439
  %5441 = sitofp i32 %5440 to float
  %5442 = fsub fast float %5424, %3958
  %5443 = call float @dx.op.dot3.f32(i32 55, float %5361, float %5362, float %5442, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5444 = fcmp fast ogt float %5443, 0.000000e+00
  %5445 = fcmp fast olt float %5443, 0.000000e+00
  %5446 = zext i1 %5444 to i32
  %5447 = zext i1 %5445 to i32
  %5448 = sub nsw i32 %5446, %5447
  %5449 = sitofp i32 %5448 to float
  %5450 = fcmp fast une float %5441, %5449
  br i1 %5450, label %5451, label %5461

; <label>:5451                                    ; preds = %5412
  %5452 = fmul fast float %5434, %5430
  %5453 = fmul fast float %5434, %5429
  %5454 = fmul fast float %5434, %5428
  %5455 = fmul fast float %5454, %5454
  %5456 = fmul fast float %5453, %5453
  %5457 = fadd fast float %5455, %5456
  %5458 = fmul fast float %5452, %5452
  %5459 = fadd fast float %5457, %5458
  %5460 = call float @dx.op.unary.f32(i32 24, float %5459)  ; Sqrt(value)
  br label %5473

; <label>:5461                                    ; preds = %5412
  %5462 = icmp slt i32 %5440, 0
  br i1 %5462, label %5463, label %5473

; <label>:5463                                    ; preds = %5461
  %5464 = fsub fast float %160, %5350
  %5465 = fsub fast float %161, %5351
  %5466 = fsub fast float %162, %5424
  %5467 = fmul fast float %5464, %5464
  %5468 = fmul fast float %5465, %5465
  %5469 = fadd fast float %5467, %5468
  %5470 = fmul fast float %5466, %5466
  %5471 = fadd fast float %5469, %5470
  %5472 = call float @dx.op.unary.f32(i32 24, float %5471)  ; Sqrt(value)
  br label %5473

; <label>:5473                                    ; preds = %5463, %5461, %5451
  %5474 = phi float [ %5460, %5451 ], [ %5472, %5463 ], [ 0.000000e+00, %5461 ]
  %5475 = and i1 %5419, %5417
  %5476 = fsub fast float -0.000000e+00, %5474
  %5477 = select i1 %5475, float -0.000000e+00, float %5476
  %5478 = fmul fast float %3959, 0x3FF7154760000000
  %5479 = fmul fast float %5478, %5477
  %5480 = fmul fast float %3960, 0x3FF7154760000000
  %5481 = fmul fast float %5480, %5477
  %5482 = fmul fast float %3961, 0x3FF7154760000000
  %5483 = fmul fast float %5482, %5477
  %5484 = call float @dx.op.unary.f32(i32 21, float %5479)  ; Exp(value)
  %5485 = call float @dx.op.unary.f32(i32 21, float %5481)  ; Exp(value)
  %5486 = call float @dx.op.unary.f32(i32 21, float %5483)  ; Exp(value)
  %5487 = call float @dx.op.unary.f32(i32 7, float %5484)  ; Saturate(value)
  %5488 = call float @dx.op.unary.f32(i32 7, float %5485)  ; Saturate(value)
  %5489 = call float @dx.op.unary.f32(i32 7, float %5486)  ; Saturate(value)
  %5490 = fmul fast float %5413, %5487
  %5491 = fmul fast float %5414, %5488
  %5492 = fmul fast float %5415, %5489
  %5493 = fsub fast float %5367, %4750
  %5494 = fsub fast float %5368, %4749
  %5495 = fsub fast float %5369, %4748
  %5496 = call float @dx.op.dot3.f32(i32 55, float %5493, float %5494, float %5495, float %5493, float %5494, float %5495)  ; Dot3(ax,ay,az,bx,by,bz)
  %5497 = call float @dx.op.unary.f32(i32 25, float %5496)  ; Rsqrt(value)
  %5498 = fmul fast float %5497, %5493
  %5499 = fmul fast float %5497, %5494
  %5500 = fmul fast float %5497, %5495
  %5501 = call float @dx.op.dot3.f32(i32 55, float %5367, float %5368, float %5369, float %4754, float %4755, float %4756)  ; Dot3(ax,ay,az,bx,by,bz)
  %5502 = call float @dx.op.dot3.f32(i32 55, float %4747, float %4746, float %4745, float %5498, float %5499, float %5500)  ; Dot3(ax,ay,az,bx,by,bz)
  %5503 = call float @dx.op.unary.f32(i32 7, float %5501)  ; Saturate(value)
  %5504 = fmul fast float %5503, %5374
  %5505 = fmul fast float %5503, %5503
  %5506 = fmul fast float %5505, %4777
  %5507 = call float @dx.op.unary.f32(i32 7, float %5506)  ; Saturate(value)
  %5508 = fmul fast float %5504, %5507
  %5509 = bitcast float %5364 to i32
  %5510 = ashr i32 %5509, 1
  %5511 = sub nsw i32 1597463007, %5510
  %5512 = bitcast i32 %5511 to float
  %5513 = fmul fast float %5512, %5361
  %5514 = fmul fast float %5512, %5362
  %5515 = fmul fast float %5512, %5363
  %5516 = fsub fast float %5513, %4750
  %5517 = fsub fast float %5514, %4749
  %5518 = fsub fast float %5515, %4748
  %5519 = call float @dx.op.dot3.f32(i32 55, float %5516, float %5517, float %5518, float %5516, float %5517, float %5518)  ; Dot3(ax,ay,az,bx,by,bz)
  %5520 = call float @dx.op.unary.f32(i32 25, float %5519)  ; Rsqrt(value)
  %5521 = fmul fast float %5516, %5520
  %5522 = fmul fast float %5517, %5520
  %5523 = fmul fast float %5518, %5520
  %5524 = call float @dx.op.dot3.f32(i32 55, float %4754, float %4755, float %4756, float %5521, float %5522, float %5523)  ; Dot3(ax,ay,az,bx,by,bz)
  %5525 = fmul fast float %5524, %5524
  %5526 = call float @dx.op.unary.f32(i32 6, float %5501)  ; FAbs(value)
  %5527 = fsub fast float 1.000000e+00, %4760
  %5528 = call float @dx.op.binary.f32(i32 35, float %5527, float 0x3F847AE140000000)  ; FMax(a,b)
  %5529 = fmul fast float %5528, %5528
  %5530 = fmul fast float %5529, %5529
  %5531 = fsub fast float 1.000000e+00, %5530
  %5532 = fmul fast float %4764, %4764
  %5533 = fmul fast float %5532, %5531
  %5534 = fadd fast float %5533, %5530
  %5535 = bitcast float %5534 to i32
  %5536 = ashr i32 %5535, 1
  %5537 = add nsw i32 %5536, 532487669
  %5538 = bitcast i32 %5537 to float
  %5539 = fadd fast float %5538, %4764
  %5540 = fmul fast float %5530, %5525
  %5541 = fsub fast float 1.000000e+00, %5525
  %5542 = fadd fast float %5541, %5540
  %5543 = fmul fast float %5526, %5526
  %5544 = fmul fast float %5543, %5531
  %5545 = fadd fast float %5544, %5530
  %5546 = bitcast float %5545 to i32
  %5547 = ashr i32 %5546, 1
  %5548 = add nsw i32 %5547, 532487669
  %5549 = bitcast i32 %5548 to float
  %5550 = fadd fast float %5549, %5526
  %5551 = fmul fast float %5542, %5542
  %5552 = fmul fast float %5551, %5539
  %5553 = fmul fast float %5552, %5550
  %5554 = fdiv fast float 1.000000e+00, %5553
  %5555 = bitcast float %5530 to i32
  %5556 = sitofp i32 %5555 to float
  %5557 = fmul fast float %5556, 0x3FE7F73180000000
  %5558 = fadd fast float %5557, 0x41AFE27C40000000
  %5559 = fptosi float %5558 to i32
  %5560 = bitcast i32 %5559 to float
  %5561 = fmul fast float %5347, 0x3FD80E9D60000000
  %5562 = fmul fast float %5561, %5512
  %5563 = fadd fast float %5560, %5562
  %5564 = bitcast float %5563 to i32
  %5565 = sub nsw i32 2129859010, %5564
  %5566 = bitcast i32 %5565 to float
  %5567 = fmul fast float %5530, %5554
  %5568 = fmul fast float %5567, %5560
  %5569 = fmul fast float %5568, %5566
  %5570 = call float @dx.op.unary.f32(i32 6, float %5502)  ; FAbs(value)
  %5571 = fsub fast float 1.000000e+00, %5570
  %5572 = bitcast float %5571 to i32
  %5573 = sitofp i32 %5572 to float
  %5574 = fmul fast float %5573, 5.000000e+00
  %5575 = fadd fast float %5574, 0xC1EFBF8940000000
  %5576 = fptosi float %5575 to i32
  %5577 = bitcast i32 %5576 to float
  %5578 = fsub fast float 1.000000e+00, %4751
  %5579 = fsub fast float 1.000000e+00, %4752
  %5580 = fsub fast float 1.000000e+00, %4762
  %5581 = fmul fast float %5577, %5578
  %5582 = fmul fast float %5577, %5579
  %5583 = fmul fast float %5577, %5580
  %5584 = fadd fast float %5581, %4751
  %5585 = fadd fast float %5582, %4752
  %5586 = fadd fast float %5583, %4762
  %5587 = fmul fast float %5501, 9.843750e-01
  %5588 = fadd fast float %5587, 7.812500e-03
  %5589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %5588, float %5024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5590 = extractvalue %dx.types.ResRet.f32 %5589, 2
  %5591 = extractvalue %dx.types.ResRet.f32 %5589, 3
  %5592 = fmul fast float %5590, %4751
  %5593 = fmul fast float %5590, %4752
  %5594 = fmul fast float %5590, %4762
  %5595 = fadd fast float %5592, %5591
  %5596 = fadd fast float %5593, %5591
  %5597 = fadd fast float %5594, %5591
  %5598 = call float @dx.op.binary.f32(i32 35, float %5596, float %5597)  ; FMax(a,b)
  %5599 = call float @dx.op.binary.f32(i32 35, float %5595, float %5598)  ; FMax(a,b)
  %5600 = fsub fast float 1.000000e+00, %5599
  %5601 = fsub fast float -0.000000e+00, %4754
  %5602 = fsub fast float -0.000000e+00, %4755
  %5603 = fsub fast float -0.000000e+00, %4756
  %5604 = call float @dx.op.dot3.f32(i32 55, float %5367, float %5368, float %5369, float %5601, float %5602, float %5603)  ; Dot3(ax,ay,az,bx,by,bz)
  %5605 = call float @dx.op.unary.f32(i32 7, float %5604)  ; Saturate(value)
  %5606 = fmul fast float %5605, %5374
  %5607 = fmul fast float %5605, 9.843750e-01
  %5608 = fadd fast float %5607, 7.812500e-03
  %5609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %5608, float %5024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5610 = extractvalue %dx.types.ResRet.f32 %5609, 2
  %5611 = extractvalue %dx.types.ResRet.f32 %5609, 3
  %5612 = fmul fast float %5610, %4751
  %5613 = fmul fast float %5610, %4752
  %5614 = fmul fast float %5610, %4762
  %5615 = fadd fast float %5612, %5611
  %5616 = fadd fast float %5613, %5611
  %5617 = fadd fast float %5614, %5611
  %5618 = call float @dx.op.binary.f32(i32 35, float %5616, float %5617)  ; FMax(a,b)
  %5619 = call float @dx.op.binary.f32(i32 35, float %5615, float %5618)  ; FMax(a,b)
  %5620 = fsub fast float 1.000000e+00, %5619
  %5621 = fmul fast float %5606, %5620
  %5622 = fmul fast float %5621, %3581
  %5623 = fmul fast float %5621, %3582
  %5624 = fmul fast float %5621, %3583
  %5625 = fmul fast float %5600, %5508
  %5626 = fadd fast float %5622, %5625
  %5627 = fadd fast float %5623, %5625
  %5628 = fadd fast float %5624, %5625
  %5629 = fmul fast float %5490, %971
  %5630 = fmul fast float %5629, %5626
  %5631 = fmul fast float %5491, %971
  %5632 = fmul fast float %5631, %5627
  %5633 = fmul fast float %5492, %971
  %5634 = fmul fast float %5633, %5628
  %5635 = fadd fast float %5630, %5329
  %5636 = fadd fast float %5632, %5330
  %5637 = fadd fast float %5634, %5331
  %5638 = fmul fast float %5629, %5508
  %5639 = fmul fast float %5638, %5584
  %5640 = fmul fast float %5639, %5569
  %5641 = fmul fast float %5631, %5508
  %5642 = fmul fast float %5641, %5585
  %5643 = fmul fast float %5642, %5569
  %5644 = fmul fast float %5633, %5508
  %5645 = fmul fast float %5644, %5586
  %5646 = fmul fast float %5645, %5569
  %5647 = fadd fast float %5640, %5326
  %5648 = fadd fast float %5643, %5327
  %5649 = fadd fast float %5646, %5328
  br label %5404

; <label>:5650                                    ; preds = %5404
  br label %5651

; <label>:5651                                    ; preds = %5650, %5292
  %5652 = phi float [ %5294, %5292 ], [ %5405, %5650 ]
  %5653 = phi float [ %5295, %5292 ], [ %5406, %5650 ]
  %5654 = phi float [ %5296, %5292 ], [ %5407, %5650 ]
  %5655 = phi float [ %5297, %5292 ], [ %5408, %5650 ]
  %5656 = phi float [ %5298, %5292 ], [ %5409, %5650 ]
  %5657 = phi float [ %5299, %5292 ], [ %5410, %5650 ]
  %5658 = add i32 %5293, 1
  %5659 = icmp ugt i32 %5658, %5289
  br i1 %5659, label %5660, label %5292

; <label>:5660                                    ; preds = %5651
  br label %5661

; <label>:5661                                    ; preds = %5660, %5268, %5258
  %5662 = phi float [ %5259, %5258 ], [ %5259, %5268 ], [ %5652, %5660 ]
  %5663 = phi float [ %5260, %5258 ], [ %5260, %5268 ], [ %5653, %5660 ]
  %5664 = phi float [ %5261, %5258 ], [ %5261, %5268 ], [ %5654, %5660 ]
  %5665 = phi float [ %5262, %5258 ], [ %5262, %5268 ], [ %5655, %5660 ]
  %5666 = phi float [ %5263, %5258 ], [ %5263, %5268 ], [ %5656, %5660 ]
  %5667 = phi float [ %5264, %5258 ], [ %5264, %5268 ], [ %5657, %5660 ]
  %5668 = call float @dx.op.unary.f32(i32 24, float %4757)  ; Sqrt(value)
  %5669 = call float @dx.op.unary.f32(i32 24, float %4758)  ; Sqrt(value)
  %5670 = call float @dx.op.unary.f32(i32 24, float %4759)  ; Sqrt(value)
  %5671 = fmul fast float %5668, %5665
  %5672 = fmul fast float %5669, %5666
  %5673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.f32 %5673, 0
  br i1 %199, label %5675, label %5696

; <label>:5675                                    ; preds = %5661
  %5676 = fadd fast float %5667, %3467
  %5677 = fmul fast float %5676, %3465
  %5678 = fsub fast float 1.000000e+00, %3465
  %5679 = call float @dx.op.unary.f32(i32 7, float %5678)  ; Saturate(value)
  %5680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5681 = extractvalue %dx.types.CBufRet.f32 %5680, 3
  %5682 = fmul fast float %5681, %5679
  %5683 = fadd fast float %5682, %5677
  %5684 = fsub fast float 1.000000e+00, %4764
  %5685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5686 = extractvalue %dx.types.CBufRet.f32 %5685, 0
  %5687 = fmul fast float %5686, %5684
  %5688 = fsub fast float %5683, %5687
  %5689 = fadd fast float %5672, %5671
  %5690 = fmul fast float %5674, %5689
  %5691 = extractvalue %dx.types.CBufRet.f32 %5680, 1
  %5692 = fsub fast float %5688, %5691
  %5693 = extractvalue %dx.types.CBufRet.f32 %5680, 2
  %5694 = fmul fast float %5692, %5693
  %5695 = call float @dx.op.unary.f32(i32 7, float %5694)  ; Saturate(value)
  br label %5712

; <label>:5696                                    ; preds = %5661
  %5697 = fmul fast float %5670, %5667
  %5698 = fmul fast float %5674, %5671
  %5699 = fmul fast float %5674, %5672
  %5700 = fmul fast float %5697, %5674
  %5701 = add i32 %29, 356
  %5702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %5701, i32 undef)  ; BufferLoad(srv,index,wot)
  %5703 = extractvalue %dx.types.ResRet.i32 %5702, 0
  %5704 = and i32 %5703, 32
  %5705 = icmp eq i32 %5704, 0
  br i1 %5705, label %5712, label %5706

; <label>:5706                                    ; preds = %5696
  %5707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5708 = extractvalue %dx.types.CBufRet.f32 %5707, 0
  %5709 = fmul fast float %5708, 0x3FE99999A0000000
  %5710 = fadd fast float %5708, %5698
  %5711 = fadd fast float %5709, %5700
  br label %5712

; <label>:5712                                    ; preds = %5706, %5696, %5675
  %5713 = phi float [ %5690, %5675 ], [ %5710, %5706 ], [ %5698, %5696 ]
  %5714 = phi float [ %5695, %5675 ], [ %5699, %5706 ], [ %5699, %5696 ]
  %5715 = phi float [ 1.000000e+00, %5675 ], [ %5711, %5706 ], [ %5700, %5696 ]
  %5716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5717 = extractvalue %dx.types.CBufRet.f32 %5716, 0
  %5718 = fmul fast float %5717, %5663
  %5719 = fmul fast float %5717, %5664
  %5720 = fadd fast float %5663, %5662
  %5721 = select i1 %199, float %5720, float %5662
  %5722 = fmul float %5721, %5717
  %5723 = select i1 %199, float 0.000000e+00, float %5718
  %5724 = select i1 %199, float 0.000000e+00, float %5719
  %5725 = fmul fast float %5713, %5668
  %5726 = fmul fast float %5714, %5669
  %5727 = fmul fast float %5715, %5670
  %5728 = fadd fast float %5722, %5725
  %5729 = fadd fast float %5723, %5726
  %5730 = fadd fast float %5724, %5727
  %5731 = select i1 %199, float %5714, float %5729
  %5732 = select i1 %199, float %5715, float %5730
  %5733 = call float @dx.op.binary.f32(i32 36, float %5728, float 3.225500e+04)  ; FMin(a,b)
  %5734 = call float @dx.op.binary.f32(i32 36, float %5731, float 3.225500e+04)  ; FMin(a,b)
  %5735 = call float @dx.op.binary.f32(i32 36, float %5732, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5733)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5734)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5735)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!34 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 224, null}
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

