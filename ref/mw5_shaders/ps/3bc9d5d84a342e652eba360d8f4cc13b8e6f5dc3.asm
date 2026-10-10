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
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         7     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        8     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       11     NONE   float   xyz 
; PACKED_TRI_DATA          0   xyzw       12     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 0b0cee41d103a40e292392dc9e920ba4
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
; AMBIENT_COLOR            0                 linear       
; HIGHLIGHT_DIR_VIS        0                 linear       
; WGV_TEXCOORD             0                 linear       
; WGV_NORMAL               0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
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
;                                   texture     f32          2d     T19     t34,space2     1
;                                   texture    byte         r/o     T20     t10,space1     1
;                                   texture    byte         r/o     T21     t68,space1     1
;                                   texture     f32          2d     T22      t0,space2     1
;                                   texture    byte         r/o     T23     t11,space1     1
;                                   texture    byte         r/o     T24     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 52, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = fmul fast float %70, %64
  %72 = fmul fast float %70, %65
  %73 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %74 = bitcast float %73 to i32
  %75 = ashr i32 %74, 1
  %76 = sub nsw i32 1597250115, %75
  %77 = bitcast i32 %76 to float
  %78 = fmul fast float %77, %56
  %79 = fmul fast float %77, %57
  %80 = fmul fast float %77, %58
  %81 = fmul fast float %57, %54
  %82 = fmul fast float %58, %53
  %83 = fsub fast float %81, %82
  %84 = fmul fast float %58, %52
  %85 = fmul fast float %56, %54
  %86 = fsub fast float %84, %85
  %87 = fmul fast float %56, %53
  %88 = fmul fast float %57, %52
  %89 = fsub fast float %87, %88
  %90 = fmul fast float %83, %55
  %91 = fmul fast float %86, %55
  %92 = fmul fast float %89, %55
  %93 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float %45, float %46, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %94 = bitcast float %93 to i32
  %95 = ashr i32 %94, 1
  %96 = sub nsw i32 1597250115, %95
  %97 = bitcast i32 %96 to float
  %98 = fmul fast float %97, %45
  %99 = fmul fast float %97, %46
  %100 = fmul fast float %97, %47
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = fcmp fast une float %102, 0.000000e+00
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 3
  %107 = fmul fast float %71, 2.000000e+00
  %108 = fmul fast float %107, %105
  %109 = fmul fast float %72, 2.000000e+00
  %110 = fmul fast float %109, %106
  %111 = fsub fast float 1.000000e+00, %108
  %112 = fsub fast float 1.000000e+00, %110
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = select i1 %103, float %114, float %118
  %122 = select i1 %103, float %115, float %119
  %123 = select i1 %103, float %116, float %120
  %124 = fmul fast float %121, %111
  %125 = fmul fast float %122, %111
  %126 = fmul fast float %123, %111
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %130 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %135 = select i1 %103, float %128, float %132
  %136 = select i1 %103, float %129, float %133
  %137 = select i1 %103, float %130, float %134
  %138 = fmul fast float %135, %112
  %139 = fmul fast float %136, %112
  %140 = fmul fast float %137, %112
  %141 = fadd fast float %138, %124
  %142 = fadd fast float %139, %125
  %143 = fadd fast float %140, %126
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %147 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = select i1 %103, float %145, float %149
  %153 = select i1 %103, float %146, float %150
  %154 = select i1 %103, float %147, float %151
  %155 = fadd fast float %141, %152
  %156 = fadd fast float %142, %153
  %157 = fadd fast float %143, %154
  %158 = fmul fast float %155, %66
  %159 = fmul fast float %156, %66
  %160 = fmul fast float %157, %66
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 3
  %164 = fmul fast float %162, %71
  %165 = fmul fast float %163, %72
  %166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.i32 %166, 0
  %168 = and i32 %167, 114688
  %169 = icmp ne i32 %168, 0
  %170 = select i1 %169, float %164, float 0.000000e+00
  %171 = select i1 %169, float %165, float 0.000000e+00
  %172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %170, float %171, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %173 = extractvalue %dx.types.ResRet.f32 %172, 0
  %174 = fmul fast float %173, 2.550000e+02
  %175 = fptoui float %174 to i32
  %176 = select i1 %169, i32 %175, i32 0
  %177 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.i32 %177, 3
  %179 = and i32 %178, 3
  %180 = icmp ne i32 %179, 0
  %181 = and i32 %178, 4
  %182 = icmp ne i32 %181, 0
  %183 = and i1 %180, %182
  br i1 %183, label %184, label %193

; <label>:184                                     ; preds = %0
  %185 = fmul fast float %106, %72
  %186 = fmul fast float %105, %71
  %187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %24, float %186, float %185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %188 = extractvalue %dx.types.ResRet.f32 %187, 0
  %189 = fsub fast float 1.000000e+00, %188
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %192 = fcmp fast olt float %189, %191
  br label %196

; <label>:193                                     ; preds = %0
  %194 = icmp eq i32 %181, 0
  %195 = and i1 %180, %194
  br label %196

; <label>:196                                     ; preds = %193, %184
  %197 = phi i1 [ %192, %184 ], [ %195, %193 ]
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 2
  %200 = fmul fast float %199, 0x3FE3C6EF40000000
  %201 = frem fast float %71, 2.560000e+02
  %202 = frem fast float %72, 2.560000e+02
  %203 = fptoui float %201 to i32
  %204 = fptoui float %202 to i32
  %205 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %203, i32 %204, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = fadd fast float %206, %200
  %208 = call float @dx.op.unary.f32(i32 22, float %207)  ; Frc(value)
  %209 = add i32 %28, 156
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = shl i32 %211, 4
  %213 = and i32 %212, 32752
  %214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %213)  ; LegacyF16ToF32(value)
  %215 = lshr i32 %211, 7
  %216 = and i32 %215, 32752
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = lshr i32 %211, 22
  %219 = shl nuw nsw i32 %218, 5
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = add i32 %28, 216
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = and i32 %223, 255
  %225 = uitofp i32 %224 to float
  %226 = fmul fast float %225, 0x3F70101020000000
  %227 = lshr i32 %223, 8
  %228 = and i32 %227, 255
  %229 = uitofp i32 %228 to float
  %230 = fmul fast float %229, 0x3F70101020000000
  %231 = lshr i32 %223, 16
  %232 = and i32 %231, 255
  %233 = uitofp i32 %232 to float
  %234 = fmul fast float %233, 0x3F70101020000000
  %235 = add i32 %28, 36
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = and i32 %237, 65535
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = lshr i32 %237, 16
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = add i32 %28, 288
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = and i32 %244, 65535
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = lshr i32 %244, 16
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = fmul fast float %246, 0x3F50624DE0000000
  %250 = fmul fast float %248, 0x3F50624DE0000000
  %251 = add i32 %28, 172
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = shl i32 %253, 4
  %255 = and i32 %254, 32752
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = lshr i32 %253, 7
  %258 = and i32 %257, 32752
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %253, 22
  %261 = shl nuw nsw i32 %260, 5
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = add i32 %28, 232
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = and i32 %265, 255
  %267 = uitofp i32 %266 to float
  %268 = fmul fast float %267, 0x3F70101020000000
  %269 = lshr i32 %265, 8
  %270 = and i32 %269, 255
  %271 = uitofp i32 %270 to float
  %272 = fmul fast float %271, 0x3F70101020000000
  %273 = lshr i32 %265, 16
  %274 = and i32 %273, 255
  %275 = uitofp i32 %274 to float
  %276 = fmul fast float %275, 0x3F70101020000000
  %277 = add i32 %28, 52
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = and i32 %279, 65535
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %279, 16
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = add i32 %28, 304
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = and i32 %286, 65535
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %286, 16
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = fmul fast float %288, 0x3F50624DE0000000
  %292 = fmul fast float %290, 0x3F50624DE0000000
  %293 = add i32 %28, 188
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = shl i32 %295, 4
  %297 = and i32 %296, 32752
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %295, 7
  %300 = and i32 %299, 32752
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %295, 22
  %303 = shl nuw nsw i32 %302, 5
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = add i32 %28, 248
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 255
  %309 = uitofp i32 %308 to float
  %310 = fmul fast float %309, 0x3F70101020000000
  %311 = lshr i32 %307, 8
  %312 = and i32 %311, 255
  %313 = uitofp i32 %312 to float
  %314 = fmul fast float %313, 0x3F70101020000000
  %315 = lshr i32 %307, 16
  %316 = and i32 %315, 255
  %317 = uitofp i32 %316 to float
  %318 = fmul fast float %317, 0x3F70101020000000
  %319 = add i32 %28, 68
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = and i32 %321, 65535
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %321, 16
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = add i32 %28, 320
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = and i32 %328, 65535
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = lshr i32 %328, 16
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = fmul fast float %330, 0x3F50624DE0000000
  %334 = fmul fast float %332, 0x3F50624DE0000000
  %335 = add i32 %28, 204
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = shl i32 %337, 4
  %339 = and i32 %338, 32752
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = lshr i32 %337, 7
  %342 = and i32 %341, 32752
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %337, 22
  %345 = shl nuw nsw i32 %344, 5
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = add i32 %28, 264
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 255
  %351 = uitofp i32 %350 to float
  %352 = fmul fast float %351, 0x3F70101020000000
  %353 = lshr i32 %349, 8
  %354 = and i32 %353, 255
  %355 = uitofp i32 %354 to float
  %356 = fmul fast float %355, 0x3F70101020000000
  %357 = lshr i32 %349, 16
  %358 = and i32 %357, 255
  %359 = uitofp i32 %358 to float
  %360 = fmul fast float %359, 0x3F70101020000000
  %361 = add i32 %28, 84
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = and i32 %363, 65535
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %363, 16
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = add i32 %28, 336
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 65535
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = lshr i32 %370, 16
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = fmul fast float %372, 0x3F50624DE0000000
  %376 = fmul fast float %374, 0x3F50624DE0000000
  %377 = add i32 %28, 348
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 32
  %381 = icmp eq i32 %380, 0
  %382 = and i32 %379, 64
  %383 = icmp eq i32 %382, 0
  %384 = and i32 %379, 128
  %385 = icmp eq i32 %384, 0
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = and i32 %387, 2
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %403, label %390

; <label>:390                                     ; preds = %196
  %391 = add i32 %28, 472
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = add i32 %393, 0
  %395 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %394, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %396 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %395, %dx.types.Handle %68, float %59, float %60, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %397 = extractvalue %dx.types.ResRet.f32 %396, 0
  %398 = extractvalue %dx.types.ResRet.f32 %396, 1
  %399 = extractvalue %dx.types.ResRet.f32 %396, 2
  %400 = fmul fast float %397, %61
  %401 = fmul fast float %398, %62
  %402 = fmul fast float %399, %63
  br label %403

; <label>:403                                     ; preds = %390, %196
  %404 = phi float [ %63, %196 ], [ %402, %390 ]
  %405 = phi float [ %62, %196 ], [ %401, %390 ]
  %406 = phi float [ %61, %196 ], [ %400, %390 ]
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = and i32 %408, 2
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %430, label %411

; <label>:411                                     ; preds = %403
  %412 = add i32 %28, 44
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = and i32 %414, 1
  %416 = icmp ne i32 %415, 0
  %417 = select i1 %416, float %406, float 1.000000e+00
  %418 = add i32 %28, 60
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = and i32 %420, 1
  %422 = icmp ne i32 %421, 0
  %423 = select i1 %422, float %405, float 1.000000e+00
  %424 = add i32 %28, 76
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = and i32 %426, 1
  %428 = icmp ne i32 %427, 0
  %429 = select i1 %428, float %404, float 1.000000e+00
  br label %430

; <label>:430                                     ; preds = %411, %403
  %431 = phi float [ %404, %403 ], [ %429, %411 ]
  %432 = phi float [ %405, %403 ], [ %423, %411 ]
  %433 = phi float [ %406, %403 ], [ %417, %411 ]
  %434 = lshr i32 %408, 20
  %435 = and i32 %434, 3
  %436 = add nuw nsw i32 %435, 1
  %437 = add i32 %28, 24
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = add i32 %28, 28
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = or i32 %442, %439
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %929, label %445

; <label>:445                                     ; preds = %430
  %446 = and i32 %439, 262144
  %447 = icmp ne i32 %446, 0
  %448 = select i1 %447, float %32, float 1.000000e+00
  %449 = select i1 %447, float %33, float 0.000000e+00
  %450 = select i1 %447, float %34, float 0.000000e+00
  %451 = select i1 %447, float %35, float 1.000000e+00
  %452 = select i1 %447, float %36, float %59
  %453 = select i1 %447, float %37, float %60
  %454 = add i32 %28, 284
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = lshr i32 %456, 16
  %458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %457)  ; LegacyF16ToF32(value)
  %459 = fmul fast float %458, 0x3F50624DE0000000
  %460 = add i32 %28, 88
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = lshr i32 %462, 16
  %464 = and i32 %463, 255
  %465 = lshr i32 %462, 24
  %466 = add i32 %28, 292
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = and i32 %468, 65535
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = lshr i32 %468, 16
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = add i32 %28, 32
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = lshr i32 %475, 22
  %477 = shl nuw nsw i32 %476, 5
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = shl i32 %475, 4
  %480 = and i32 %479, 32752
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = lshr i32 %475, 7
  %483 = and i32 %482, 32752
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %486 = extractvalue %dx.types.CBufRet.f32 %485, 3
  %487 = fmul fast float %486, 1.000000e+03
  %488 = fmul fast float %249, %487
  %489 = call float @dx.op.unary.f32(i32 22, float %488)  ; Frc(value)
  %490 = fadd fast float %489, %239
  %491 = fmul fast float %250, %487
  %492 = call float @dx.op.unary.f32(i32 22, float %491)  ; Frc(value)
  %493 = fadd fast float %492, %241
  %494 = fmul fast float %459, %487
  %495 = call float @dx.op.unary.f32(i32 22, float %494)  ; Frc(value)
  %496 = fmul fast float %495, 0x401921FB60000000
  %497 = fadd fast float %496, %478
  %498 = call float @dx.op.unary.f32(i32 13, float %497)  ; Sin(value)
  %499 = call float @dx.op.unary.f32(i32 12, float %497)  ; Cos(value)
  %500 = fsub fast float -0.000000e+00, %498
  %501 = fadd fast float %452, -5.000000e-01
  %502 = fadd fast float %453, -5.000000e-01
  %503 = fmul fast float %470, %501
  %504 = fmul fast float %472, %502
  %505 = fadd fast float %503, 5.000000e-01
  %506 = fadd fast float %504, 5.000000e-01
  %507 = fmul fast float %481, %505
  %508 = fmul fast float %484, %506
  %509 = fmul fast float %499, %507
  %510 = call float @dx.op.tertiary.f32(i32 46, float %500, float %508, float %509)  ; FMad(a,b,c)
  %511 = fmul fast float %498, %507
  %512 = call float @dx.op.tertiary.f32(i32 46, float %499, float %508, float %511)  ; FMad(a,b,c)
  %513 = fadd fast float %490, %510
  %514 = fadd fast float %493, %512
  %515 = icmp ugt i32 %464, 1
  %516 = icmp ugt i32 %462, 33554431
  %517 = or i1 %516, %515
  br i1 %517, label %518, label %543

; <label>:518                                     ; preds = %445
  %519 = add i32 %28, 228
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = lshr i32 %521, 16
  %523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %522)  ; LegacyF16ToF32(value)
  %524 = fmul fast float %486, %523
  %525 = call float @dx.op.unary.f32(i32 22, float %524)  ; Frc(value)
  %526 = mul nuw nsw i32 %464, %465
  %527 = uitofp i32 %526 to float
  %528 = fmul fast float %525, %527
  %529 = call float @dx.op.unary.f32(i32 27, float %528)  ; Round_ni(value)
  %530 = fptoui float %529 to i32
  %531 = urem i32 %530, %464
  %532 = udiv i32 %530, %465
  %533 = call float @dx.op.unary.f32(i32 22, float %513)  ; Frc(value)
  %534 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %535 = uitofp i32 %531 to float
  %536 = uitofp i32 %532 to float
  %537 = fadd fast float %533, %535
  %538 = fadd fast float %534, %536
  %539 = uitofp i32 %464 to float
  %540 = uitofp i32 %465 to float
  %541 = fdiv fast float %537, %539
  %542 = fdiv fast float %538, %540
  br label %543

; <label>:543                                     ; preds = %518, %445
  %544 = phi float [ %541, %518 ], [ %513, %445 ]
  %545 = phi float [ %542, %518 ], [ %514, %445 ]
  %546 = and i32 %439, 16
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %744, label %548

; <label>:548                                     ; preds = %543
  %549 = add i32 %28, 360
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = add i32 %551, 0
  %553 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %552, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %554 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %553, %dx.types.Handle %67, float %544, float %545, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %555 = extractvalue %dx.types.ResRet.f32 %554, 0
  %556 = extractvalue %dx.types.ResRet.f32 %554, 1
  %557 = extractvalue %dx.types.ResRet.f32 %554, 2
  %558 = extractvalue %dx.types.ResRet.f32 %554, 3
  %559 = and i32 %462, 255
  %560 = uitofp i32 %559 to float
  %561 = lshr i32 %462, 8
  %562 = and i32 %561, 255
  %563 = uitofp i32 %562 to float
  %564 = fmul fast float %558, %560
  %565 = fadd fast float %564, %563
  %566 = fmul fast float %565, 0x3F70101000000000
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = and i32 %568, 512
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %579, label %571

; <label>:571                                     ; preds = %548
  %572 = add i32 %28, 440
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = add i32 %574, 0
  %576 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %575, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %577 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %576, %dx.types.Handle %68, float %544, float %545, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %578 = extractvalue %dx.types.ResRet.f32 %577, 0
  br label %579

; <label>:579                                     ; preds = %571, %548
  %580 = phi float [ %578, %571 ], [ 1.000000e+00, %548 ]
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = and i32 %582, 33554432
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %691, label %585

; <label>:585                                     ; preds = %579
  %586 = add i32 %28, 224
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %588, 65535
  %590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %589)  ; LegacyF16ToF32(value)
  %591 = lshr i32 %588, 16
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = add i32 %28, 228
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %593, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = and i32 %595, 65535
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.i32 %598, 0
  %600 = lshr i32 %599, 24
  %601 = uitofp i32 %600 to float
  %602 = fmul fast float %601, 0x3F70101020000000
  %603 = and i32 %599, 255
  %604 = uitofp i32 %603 to float
  %605 = fmul fast float %604, 0x3F70101020000000
  %606 = lshr i32 %599, 8
  %607 = and i32 %606, 255
  %608 = uitofp i32 %607 to float
  %609 = fmul fast float %608, 0x3F70101020000000
  %610 = lshr i32 %599, 16
  %611 = and i32 %610, 255
  %612 = uitofp i32 %611 to float
  %613 = fmul fast float %612, 0x3F70101020000000
  %614 = add i32 %28, 220
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = lshr i32 %616, 24
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %618, 0x3F70101020000000
  %620 = and i32 %616, 255
  %621 = uitofp i32 %620 to float
  %622 = fmul fast float %621, 0x3F70101020000000
  %623 = lshr i32 %616, 8
  %624 = and i32 %623, 255
  %625 = uitofp i32 %624 to float
  %626 = fmul fast float %625, 0x3F70101020000000
  %627 = lshr i32 %616, 16
  %628 = and i32 %627, 255
  %629 = uitofp i32 %628 to float
  %630 = fmul fast float %629, 0x3F70101020000000
  %631 = bitcast float %555 to i32
  %632 = ashr i32 %631, 1
  %633 = sub nsw i32 1597463174, %632
  %634 = bitcast i32 %633 to float
  %635 = fmul fast float %555, 5.000000e-01
  %636 = fmul fast float %634, %634
  %637 = fmul fast float %636, %635
  %638 = fsub fast float 1.500000e+00, %637
  %639 = fmul fast float %634, %555
  %640 = fmul fast float %639, %638
  %641 = bitcast float %556 to i32
  %642 = ashr i32 %641, 1
  %643 = sub nsw i32 1597463174, %642
  %644 = bitcast i32 %643 to float
  %645 = fmul fast float %556, 5.000000e-01
  %646 = fmul fast float %644, %644
  %647 = fmul fast float %646, %645
  %648 = fsub fast float 1.500000e+00, %647
  %649 = fmul fast float %644, %556
  %650 = fmul fast float %649, %648
  %651 = bitcast float %557 to i32
  %652 = ashr i32 %651, 1
  %653 = sub nsw i32 1597463174, %652
  %654 = bitcast i32 %653 to float
  %655 = fmul fast float %557, 5.000000e-01
  %656 = fmul fast float %654, %654
  %657 = fmul fast float %656, %655
  %658 = fsub fast float 1.500000e+00, %657
  %659 = fmul fast float %654, %557
  %660 = fmul fast float %659, %658
  %661 = fsub fast float %640, %622
  %662 = fsub fast float %650, %626
  %663 = fsub fast float %660, %630
  %664 = fmul fast float %661, %590
  %665 = fmul fast float %662, %592
  %666 = fmul fast float %663, %597
  %667 = fadd fast float %664, %605
  %668 = fadd fast float %665, %609
  %669 = fadd fast float %666, %613
  %670 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  %671 = call float @dx.op.unary.f32(i32 7, float %668)  ; Saturate(value)
  %672 = call float @dx.op.unary.f32(i32 7, float %669)  ; Saturate(value)
  %673 = fmul fast float %670, %670
  %674 = fmul fast float %671, %671
  %675 = fmul fast float %672, %672
  %676 = fsub fast float %673, %555
  %677 = fsub fast float %674, %556
  %678 = fsub fast float %675, %557
  %679 = fmul fast float %676, %580
  %680 = fmul fast float %677, %580
  %681 = fmul fast float %678, %580
  %682 = fadd fast float %679, %555
  %683 = fadd fast float %680, %556
  %684 = fadd fast float %681, %557
  %685 = fadd fast float %602, %566
  %686 = fsub fast float %685, %619
  %687 = call float @dx.op.unary.f32(i32 7, float %686)  ; Saturate(value)
  %688 = fsub fast float %687, %566
  %689 = fmul fast float %688, %580
  %690 = fadd fast float %689, %566
  br label %744

; <label>:691                                     ; preds = %579
  %692 = and i32 %582, 134217728
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %728, label %694

; <label>:694                                     ; preds = %691
  %695 = call float @dx.op.unary.f32(i32 24, float %226)  ; Sqrt(value)
  %696 = call float @dx.op.unary.f32(i32 24, float %230)  ; Sqrt(value)
  %697 = call float @dx.op.unary.f32(i32 24, float %234)  ; Sqrt(value)
  %698 = fadd fast float %695, -5.000000e-01
  %699 = fadd fast float %696, -5.000000e-01
  %700 = fadd fast float %697, -5.000000e-01
  %701 = fmul fast float %698, %580
  %702 = fmul fast float %699, %580
  %703 = fmul fast float %700, %580
  %704 = fadd fast float %701, 5.000000e-01
  %705 = fadd fast float %702, 5.000000e-01
  %706 = fadd fast float %703, 5.000000e-01
  %707 = call float @dx.op.unary.f32(i32 24, float %555)  ; Sqrt(value)
  %708 = call float @dx.op.unary.f32(i32 24, float %556)  ; Sqrt(value)
  %709 = call float @dx.op.unary.f32(i32 24, float %557)  ; Sqrt(value)
  %710 = fmul fast float %704, 2.000000e+00
  %711 = fsub fast float 1.000000e+00, %710
  %712 = fmul fast float %711, %707
  %713 = fadd fast float %712, %710
  %714 = fmul fast float %713, %707
  %715 = fmul fast float %705, 2.000000e+00
  %716 = fsub fast float 1.000000e+00, %715
  %717 = fmul fast float %716, %708
  %718 = fadd fast float %717, %715
  %719 = fmul fast float %718, %708
  %720 = fmul fast float %706, 2.000000e+00
  %721 = fsub fast float 1.000000e+00, %720
  %722 = fmul fast float %721, %709
  %723 = fadd fast float %722, %720
  %724 = fmul fast float %723, %709
  %725 = fmul fast float %714, %714
  %726 = fmul fast float %719, %719
  %727 = fmul fast float %724, %724
  br label %744

; <label>:728                                     ; preds = %691
  %729 = fmul fast float %226, %226
  %730 = fmul fast float %230, %230
  %731 = fmul fast float %234, %234
  %732 = fadd fast float %729, -1.000000e+00
  %733 = fadd fast float %730, -1.000000e+00
  %734 = fadd fast float %731, -1.000000e+00
  %735 = fmul fast float %580, %732
  %736 = fmul fast float %580, %733
  %737 = fmul fast float %580, %734
  %738 = fadd fast float %735, 1.000000e+00
  %739 = fadd fast float %736, 1.000000e+00
  %740 = fadd fast float %737, 1.000000e+00
  %741 = fmul fast float %738, %555
  %742 = fmul fast float %739, %556
  %743 = fmul fast float %740, %557
  br label %744

; <label>:744                                     ; preds = %728, %694, %585, %543
  %745 = phi float [ %690, %585 ], [ %566, %694 ], [ %566, %728 ], [ 0x3FA23C0BE0000000, %543 ]
  %746 = phi float [ %682, %585 ], [ %725, %694 ], [ %741, %728 ], [ 1.000000e+00, %543 ]
  %747 = phi float [ %683, %585 ], [ %726, %694 ], [ %742, %728 ], [ 1.000000e+00, %543 ]
  %748 = phi float [ %684, %585 ], [ %727, %694 ], [ %743, %728 ], [ 1.000000e+00, %543 ]
  %749 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.i32 %749, 1
  %751 = and i32 %750, 1
  %752 = icmp ne i32 %751, 0
  %753 = add i32 %28, 356
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = and i32 %755, 32
  %757 = icmp ne i32 %756, 0
  %758 = and i1 %752, %757
  %759 = select i1 %758, float 1.000000e+00, float %746
  %760 = select i1 %758, float 0x3FD3333340000000, float %747
  %761 = select i1 %758, float 0x3FD3333340000000, float %748
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = and i32 %763, 32
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %838, label %766

; <label>:766                                     ; preds = %744
  %767 = add i32 %28, 92
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = add i32 %28, 376
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %770, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = add i32 %772, 0
  %774 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %773, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %775 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %774, %dx.types.Handle %67, float %544, float %545, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %776 = extractvalue %dx.types.ResRet.f32 %775, 0
  %777 = extractvalue %dx.types.ResRet.f32 %775, 1
  %778 = extractvalue %dx.types.ResRet.f32 %775, 2
  %779 = extractvalue %dx.types.ResRet.f32 %775, 3
  %780 = and i32 %769, 255
  %781 = uitofp i32 %780 to float
  %782 = lshr i32 %769, 8
  %783 = and i32 %782, 255
  %784 = uitofp i32 %783 to float
  %785 = lshr i32 %769, 16
  %786 = and i32 %785, 255
  %787 = uitofp i32 %786 to float
  %788 = fmul fast float %787, 0x3F70101000000000
  %789 = fmul fast float %776, %781
  %790 = fadd fast float %789, %784
  %791 = fmul fast float %790, 0x3F70101000000000
  %792 = fadd fast float %777, -5.000000e-01
  %793 = fadd fast float %779, -5.000000e-01
  %794 = fmul fast float %792, %788
  %795 = fmul fast float %793, %788
  %796 = fadd fast float %794, 5.000000e-01
  %797 = fadd fast float %795, 5.000000e-01
  %798 = fmul fast float %796, 2.000000e+00
  %799 = fadd fast float %798, -1.000000e+00
  %800 = fmul fast float %797, 2.000000e+00
  %801 = fadd fast float %800, -1.000000e+00
  %802 = fadd fast float %799, %801
  %803 = fmul fast float %802, 5.000000e-01
  %804 = fsub fast float %799, %801
  %805 = fmul fast float %804, 5.000000e-01
  %806 = call float @dx.op.unary.f32(i32 6, float %803)  ; FAbs(value)
  %807 = fsub fast float 1.000000e+00, %806
  %808 = call float @dx.op.unary.f32(i32 6, float %805)  ; FAbs(value)
  %809 = fsub fast float %807, %808
  %810 = call float @dx.op.dot3.f32(i32 55, float %803, float %805, float %809, float %803, float %805, float %809)  ; Dot3(ax,ay,az,bx,by,bz)
  %811 = call float @dx.op.unary.f32(i32 25, float %810)  ; Rsqrt(value)
  %812 = fmul fast float %803, %811
  %813 = fmul fast float %805, %811
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = and i32 %815, 67108864
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %834, label %818

; <label>:818                                     ; preds = %766
  %819 = add i32 %28, 280
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = and i32 %821, 65535
  %823 = call float @dx.op.legacyF16ToF32(i32 131, i32 %822)  ; LegacyF16ToF32(value)
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = and i32 %825, 65535
  %827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %826)  ; LegacyF16ToF32(value)
  %828 = lshr i32 %821, 16
  %829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %828)  ; LegacyF16ToF32(value)
  %830 = fsub fast float %791, %829
  %831 = fmul fast float %830, %823
  %832 = fadd fast float %831, %827
  %833 = call float @dx.op.unary.f32(i32 7, float %832)  ; Saturate(value)
  br label %834

; <label>:834                                     ; preds = %818, %766
  %835 = phi float [ %833, %818 ], [ %791, %766 ]
  %836 = call float @dx.op.dot2.f32(i32 54, float %812, float %813, float %448, float %449)  ; Dot2(ax,ay,bx,by)
  %837 = call float @dx.op.dot2.f32(i32 54, float %812, float %813, float %450, float %451)  ; Dot2(ax,ay,bx,by)
  br label %838

; <label>:838                                     ; preds = %834, %744
  %839 = phi float [ %835, %834 ], [ 0x3FD6666660000000, %744 ]
  %840 = phi float [ %836, %834 ], [ 0.000000e+00, %744 ]
  %841 = phi float [ %837, %834 ], [ 0.000000e+00, %744 ]
  %842 = phi float [ %778, %834 ], [ 1.000000e+00, %744 ]
  %843 = add i32 %28, 160
  %844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %843, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.i32 %844, 0
  %846 = lshr i32 %845, 22
  %847 = shl nuw nsw i32 %846, 5
  %848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %847)  ; LegacyF16ToF32(value)
  %849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %850 = extractvalue %dx.types.ResRet.i32 %849, 0
  %851 = and i32 %850, 64
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %886, label %853

; <label>:853                                     ; preds = %838
  %854 = add i32 %28, 392
  %855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %854, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.i32 %855, 0
  %857 = add i32 %856, 0
  %858 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %857, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.i32 %859, 0
  %861 = and i32 %860, 131072
  %862 = icmp eq i32 %861, 0
  %863 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %858, %dx.types.Handle %67, float %544, float %545, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %864 = extractvalue %dx.types.ResRet.f32 %863, 0
  %865 = extractvalue %dx.types.ResRet.f32 %863, 1
  %866 = extractvalue %dx.types.ResRet.f32 %863, 2
  %867 = fmul fast float %864, %214
  %868 = fmul fast float %865, %217
  %869 = fmul fast float %866, %220
  br i1 %862, label %876, label %870

; <label>:870                                     ; preds = %853
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 0
  %873 = fmul fast float %872, %867
  %874 = fmul fast float %872, %868
  %875 = fmul fast float %872, %869
  br label %876

; <label>:876                                     ; preds = %870, %853
  %877 = phi float [ %873, %870 ], [ %867, %853 ]
  %878 = phi float [ %874, %870 ], [ %868, %853 ]
  %879 = phi float [ %875, %870 ], [ %869, %853 ]
  %880 = fmul fast float %877, %848
  %881 = select i1 %197, float %880, float %877
  %882 = call float @dx.op.dot3.f32(i32 55, float %881, float %878, float %879, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %883 = select i1 %197, float 0.000000e+00, float %877
  %884 = select i1 %197, float %882, float %878
  %885 = select i1 %197, float 0.000000e+00, float %879
  br label %886

; <label>:886                                     ; preds = %876, %838
  %887 = phi float [ %883, %876 ], [ 0.000000e+00, %838 ]
  %888 = phi float [ %884, %876 ], [ 0.000000e+00, %838 ]
  %889 = phi float [ %885, %876 ], [ 0.000000e+00, %838 ]
  %890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.i32 %890, 0
  %892 = and i32 %891, 4096
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %914, label %894

; <label>:894                                     ; preds = %886
  %895 = and i32 %891, 1048576
  %896 = icmp ne i32 %895, 0
  %897 = add i32 %28, 456
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = add i32 %899, 0
  %901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %900, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %902 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %901, %dx.types.Handle %68, float %544, float %545, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %903 = extractvalue %dx.types.ResRet.f32 %902, 2
  %904 = select i1 %896, float 1.000000e+00, float %903
  %905 = add i32 %28, 164
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = and i32 %907, 65535
  %909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %908)  ; LegacyF16ToF32(value)
  %910 = lshr i32 %907, 16
  %911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %910)  ; LegacyF16ToF32(value)
  %912 = fmul fast float %909, %904
  %913 = fadd fast float %912, %911
  br label %914

; <label>:914                                     ; preds = %894, %886
  %915 = phi float [ %913, %894 ], [ 0.000000e+00, %886 ]
  %916 = add i32 %28, 96
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = and i32 %918, 255
  %920 = uitofp i32 %919 to float
  %921 = lshr i32 %918, 8
  %922 = and i32 %921, 255
  %923 = uitofp i32 %922 to float
  %924 = call float @dx.op.dot3.f32(i32 55, float %759, float %760, float %761, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %925 = fmul fast float %923, %924
  %926 = fadd fast float %925, %920
  %927 = fmul fast float %926, 0x3F70101020000000
  %928 = call float @dx.op.unary.f32(i32 7, float %927)  ; Saturate(value)
  br label %929

; <label>:929                                     ; preds = %914, %430
  %930 = phi float [ 0.000000e+00, %430 ], [ %840, %914 ]
  %931 = phi float [ 0.000000e+00, %430 ], [ %841, %914 ]
  %932 = phi float [ 0.000000e+00, %430 ], [ %759, %914 ]
  %933 = phi float [ 0.000000e+00, %430 ], [ %760, %914 ]
  %934 = phi float [ 0.000000e+00, %430 ], [ %761, %914 ]
  %935 = phi float [ 0.000000e+00, %430 ], [ %887, %914 ]
  %936 = phi float [ 0.000000e+00, %430 ], [ %888, %914 ]
  %937 = phi float [ 0.000000e+00, %430 ], [ %889, %914 ]
  %938 = phi float [ 0.000000e+00, %430 ], [ %745, %914 ]
  %939 = phi float [ 0.000000e+00, %430 ], [ 1.000000e+00, %914 ]
  %940 = phi float [ 0.000000e+00, %430 ], [ %839, %914 ]
  %941 = phi float [ 0.000000e+00, %430 ], [ %842, %914 ]
  %942 = phi float [ 0.000000e+00, %430 ], [ %915, %914 ]
  %943 = phi float [ 0.000000e+00, %430 ], [ %928, %914 ]
  br i1 %381, label %1706, label %944

; <label>:944                                     ; preds = %929
  %945 = icmp ult i32 %436, 2
  %946 = add i32 %28, 40
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = add i32 %28, 44
  %950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %949, i32 undef)  ; BufferLoad(srv,index,wot)
  %951 = extractvalue %dx.types.ResRet.i32 %950, 0
  %952 = or i32 %951, %948
  %953 = icmp eq i32 %952, 0
  br i1 %953, label %1706, label %954

; <label>:954                                     ; preds = %944
  %955 = and i32 %948, 262144
  %956 = icmp ne i32 %955, 0
  %957 = select i1 %956, float %32, float 1.000000e+00
  %958 = select i1 %956, float %33, float 0.000000e+00
  %959 = select i1 %956, float %34, float 0.000000e+00
  %960 = select i1 %956, float %35, float 1.000000e+00
  %961 = select i1 %956, float %36, float %59
  %962 = select i1 %956, float %37, float %60
  %963 = add i32 %28, 300
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = lshr i32 %965, 16
  %967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %966)  ; LegacyF16ToF32(value)
  %968 = fmul fast float %967, 0x3F50624DE0000000
  %969 = add i32 %28, 104
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = lshr i32 %971, 16
  %973 = and i32 %972, 255
  %974 = lshr i32 %971, 24
  %975 = add i32 %28, 308
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = and i32 %977, 65535
  %979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %978)  ; LegacyF16ToF32(value)
  %980 = lshr i32 %977, 16
  %981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %980)  ; LegacyF16ToF32(value)
  %982 = add i32 %28, 48
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = lshr i32 %984, 22
  %986 = shl nuw nsw i32 %985, 5
  %987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %986)  ; LegacyF16ToF32(value)
  %988 = shl i32 %984, 4
  %989 = and i32 %988, 32752
  %990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %989)  ; LegacyF16ToF32(value)
  %991 = lshr i32 %984, 7
  %992 = and i32 %991, 32752
  %993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %992)  ; LegacyF16ToF32(value)
  %994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.f32 %994, 3
  %996 = fmul fast float %995, 1.000000e+03
  %997 = fmul fast float %291, %996
  %998 = call float @dx.op.unary.f32(i32 22, float %997)  ; Frc(value)
  %999 = fadd fast float %998, %281
  %1000 = fmul fast float %292, %996
  %1001 = call float @dx.op.unary.f32(i32 22, float %1000)  ; Frc(value)
  %1002 = fadd fast float %1001, %283
  %1003 = fmul fast float %968, %996
  %1004 = call float @dx.op.unary.f32(i32 22, float %1003)  ; Frc(value)
  %1005 = fmul fast float %1004, 0x401921FB60000000
  %1006 = fadd fast float %1005, %987
  %1007 = call float @dx.op.unary.f32(i32 13, float %1006)  ; Sin(value)
  %1008 = call float @dx.op.unary.f32(i32 12, float %1006)  ; Cos(value)
  %1009 = fsub fast float -0.000000e+00, %1007
  %1010 = fadd fast float %961, -5.000000e-01
  %1011 = fadd fast float %962, -5.000000e-01
  %1012 = fmul fast float %979, %1010
  %1013 = fmul fast float %981, %1011
  %1014 = fadd fast float %1012, 5.000000e-01
  %1015 = fadd fast float %1013, 5.000000e-01
  %1016 = fmul fast float %990, %1014
  %1017 = fmul fast float %993, %1015
  %1018 = fmul fast float %1008, %1016
  %1019 = call float @dx.op.tertiary.f32(i32 46, float %1009, float %1017, float %1018)  ; FMad(a,b,c)
  %1020 = fmul fast float %1007, %1016
  %1021 = call float @dx.op.tertiary.f32(i32 46, float %1008, float %1017, float %1020)  ; FMad(a,b,c)
  %1022 = fadd fast float %999, %1019
  %1023 = fadd fast float %1002, %1021
  %1024 = icmp ugt i32 %973, 1
  %1025 = icmp ugt i32 %971, 33554431
  %1026 = or i1 %1025, %1024
  br i1 %1026, label %1027, label %1052

; <label>:1027                                    ; preds = %954
  %1028 = add i32 %28, 244
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = lshr i32 %1030, 16
  %1032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1031)  ; LegacyF16ToF32(value)
  %1033 = fmul fast float %995, %1032
  %1034 = call float @dx.op.unary.f32(i32 22, float %1033)  ; Frc(value)
  %1035 = mul nuw nsw i32 %973, %974
  %1036 = uitofp i32 %1035 to float
  %1037 = fmul fast float %1034, %1036
  %1038 = call float @dx.op.unary.f32(i32 27, float %1037)  ; Round_ni(value)
  %1039 = fptoui float %1038 to i32
  %1040 = urem i32 %1039, %973
  %1041 = udiv i32 %1039, %974
  %1042 = call float @dx.op.unary.f32(i32 22, float %1022)  ; Frc(value)
  %1043 = call float @dx.op.unary.f32(i32 22, float %1023)  ; Frc(value)
  %1044 = uitofp i32 %1040 to float
  %1045 = uitofp i32 %1041 to float
  %1046 = fadd fast float %1042, %1044
  %1047 = fadd fast float %1043, %1045
  %1048 = uitofp i32 %973 to float
  %1049 = uitofp i32 %974 to float
  %1050 = fdiv fast float %1046, %1048
  %1051 = fdiv fast float %1047, %1049
  br label %1052

; <label>:1052                                    ; preds = %1027, %954
  %1053 = phi float [ %1050, %1027 ], [ %1022, %954 ]
  %1054 = phi float [ %1051, %1027 ], [ %1023, %954 ]
  %1055 = and i32 %948, 256
  %1056 = icmp eq i32 %1055, 0
  br i1 %1056, label %1103, label %1057

; <label>:1057                                    ; preds = %1052
  %1058 = add i32 %28, 428
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = add i32 %1060, 0
  %1062 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1061, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1063 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1062, %dx.types.Handle %68, float %1053, float %1054, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1064 = extractvalue %dx.types.ResRet.f32 %1063, 0
  %1065 = add i32 %28, 116
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = shl i32 %1067, 4
  %1069 = and i32 %1068, 32752
  %1070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1069)  ; LegacyF16ToF32(value)
  %1071 = lshr i32 %1067, 7
  %1072 = and i32 %1071, 32752
  %1073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1072)  ; LegacyF16ToF32(value)
  %1074 = fsub fast float 1.000000e+00, %433
  %1075 = call float @dx.op.binary.f32(i32 35, float %1074, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1076 = bitcast float %433 to i32
  %1077 = sitofp i32 %1076 to float
  %1078 = fadd fast float %1077, 0xC1CFBF8940000000
  %1079 = fmul fast float %1073, %1078
  %1080 = fadd fast float %1079, 0x41CFBF8940000000
  %1081 = fptosi float %1080 to i32
  %1082 = bitcast i32 %1081 to float
  %1083 = bitcast float %1075 to i32
  %1084 = sitofp i32 %1083 to float
  %1085 = fadd fast float %1084, 0xC1CFBF8940000000
  %1086 = fmul fast float %1085, %1073
  %1087 = fadd fast float %1086, 0x41CFBF8940000000
  %1088 = fptosi float %1087 to i32
  %1089 = bitcast i32 %1088 to float
  %1090 = fmul fast float %1082, %1070
  %1091 = fmul fast float %1089, %1070
  %1092 = fsub fast float %1075, %1090
  %1093 = fadd fast float %1091, %1075
  %1094 = call float @dx.op.unary.f32(i32 7, float %1092)  ; Saturate(value)
  %1095 = call float @dx.op.unary.f32(i32 7, float %1093)  ; Saturate(value)
  %1096 = fsub fast float %1064, %1094
  %1097 = fsub fast float %1095, %1094
  %1098 = bitcast float %1097 to i32
  %1099 = sub nsw i32 2129859010, %1098
  %1100 = bitcast i32 %1099 to float
  %1101 = fmul fast float %1100, %1096
  %1102 = call float @dx.op.unary.f32(i32 7, float %1101)  ; Saturate(value)
  br label %1103

; <label>:1103                                    ; preds = %1057, %1052
  %1104 = phi float [ %1102, %1057 ], [ %433, %1052 ]
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = and i32 %1106, 128
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1125, label %1109

; <label>:1109                                    ; preds = %1103
  %1110 = add i32 %28, 412
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = add i32 %1112, 0
  %1114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1113, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1115 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1114, %dx.types.Handle %68, float %1053, float %1054, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1116 = extractvalue %dx.types.ResRet.f32 %1115, 0
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = and i32 %1118, 524288
  %1120 = icmp ne i32 %1119, 0
  %1121 = fcmp fast ogt float %1116, 0x3FE0101020000000
  %1122 = select i1 %1121, float 1.000000e+00, float 0.000000e+00
  %1123 = select i1 %1120, float %1122, float %1116
  %1124 = fmul fast float %1123, %1104
  br label %1125

; <label>:1125                                    ; preds = %1109, %1103
  %1126 = phi float [ %1124, %1109 ], [ %1104, %1103 ]
  %1127 = fcmp fast ult float %1126, 0x3F70101020000000
  br i1 %1127, label %1706, label %1128

; <label>:1128                                    ; preds = %1125
  %1129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.i32 %1129, 0
  %1131 = and i32 %1130, 16
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1331, label %1133

; <label>:1133                                    ; preds = %1128
  %1134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.i32 %1134, 0
  %1136 = add i32 %28, 364
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = add i32 %1138, 0
  %1140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1139, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1141 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1140, %dx.types.Handle %67, float %1053, float %1054, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1142 = extractvalue %dx.types.ResRet.f32 %1141, 0
  %1143 = extractvalue %dx.types.ResRet.f32 %1141, 1
  %1144 = extractvalue %dx.types.ResRet.f32 %1141, 2
  %1145 = extractvalue %dx.types.ResRet.f32 %1141, 3
  %1146 = and i32 %1135, 255
  %1147 = uitofp i32 %1146 to float
  %1148 = lshr i32 %1135, 8
  %1149 = and i32 %1148, 255
  %1150 = uitofp i32 %1149 to float
  %1151 = fmul fast float %1145, %1147
  %1152 = fadd fast float %1151, %1150
  %1153 = fmul fast float %1152, 0x3F70101000000000
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = and i32 %1155, 512
  %1157 = icmp eq i32 %1156, 0
  br i1 %1157, label %1166, label %1158

; <label>:1158                                    ; preds = %1133
  %1159 = add i32 %28, 444
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = add i32 %1161, 0
  %1163 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1162, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1164 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1163, %dx.types.Handle %68, float %1053, float %1054, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 0
  br label %1166

; <label>:1166                                    ; preds = %1158, %1133
  %1167 = phi float [ %1165, %1158 ], [ 1.000000e+00, %1133 ]
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = and i32 %1169, 33554432
  %1171 = icmp eq i32 %1170, 0
  br i1 %1171, label %1278, label %1172

; <label>:1172                                    ; preds = %1166
  %1173 = add i32 %28, 240
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = and i32 %1175, 65535
  %1177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1176)  ; LegacyF16ToF32(value)
  %1178 = lshr i32 %1175, 16
  %1179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1178)  ; LegacyF16ToF32(value)
  %1180 = add i32 %28, 244
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = and i32 %1182, 65535
  %1184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1183)  ; LegacyF16ToF32(value)
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = lshr i32 %1186, 24
  %1188 = uitofp i32 %1187 to float
  %1189 = fmul fast float %1188, 0x3F70101020000000
  %1190 = and i32 %1186, 255
  %1191 = uitofp i32 %1190 to float
  %1192 = fmul fast float %1191, 0x3F70101020000000
  %1193 = lshr i32 %1186, 8
  %1194 = and i32 %1193, 255
  %1195 = uitofp i32 %1194 to float
  %1196 = fmul fast float %1195, 0x3F70101020000000
  %1197 = lshr i32 %1186, 16
  %1198 = and i32 %1197, 255
  %1199 = uitofp i32 %1198 to float
  %1200 = fmul fast float %1199, 0x3F70101020000000
  %1201 = add i32 %28, 236
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = lshr i32 %1203, 24
  %1205 = uitofp i32 %1204 to float
  %1206 = fmul fast float %1205, 0x3F70101020000000
  %1207 = and i32 %1203, 255
  %1208 = uitofp i32 %1207 to float
  %1209 = fmul fast float %1208, 0x3F70101020000000
  %1210 = lshr i32 %1203, 8
  %1211 = and i32 %1210, 255
  %1212 = uitofp i32 %1211 to float
  %1213 = fmul fast float %1212, 0x3F70101020000000
  %1214 = lshr i32 %1203, 16
  %1215 = and i32 %1214, 255
  %1216 = uitofp i32 %1215 to float
  %1217 = fmul fast float %1216, 0x3F70101020000000
  %1218 = bitcast float %1142 to i32
  %1219 = ashr i32 %1218, 1
  %1220 = sub nsw i32 1597463174, %1219
  %1221 = bitcast i32 %1220 to float
  %1222 = fmul fast float %1142, 5.000000e-01
  %1223 = fmul fast float %1221, %1221
  %1224 = fmul fast float %1223, %1222
  %1225 = fsub fast float 1.500000e+00, %1224
  %1226 = fmul fast float %1221, %1142
  %1227 = fmul fast float %1226, %1225
  %1228 = bitcast float %1143 to i32
  %1229 = ashr i32 %1228, 1
  %1230 = sub nsw i32 1597463174, %1229
  %1231 = bitcast i32 %1230 to float
  %1232 = fmul fast float %1143, 5.000000e-01
  %1233 = fmul fast float %1231, %1231
  %1234 = fmul fast float %1233, %1232
  %1235 = fsub fast float 1.500000e+00, %1234
  %1236 = fmul fast float %1231, %1143
  %1237 = fmul fast float %1236, %1235
  %1238 = bitcast float %1144 to i32
  %1239 = ashr i32 %1238, 1
  %1240 = sub nsw i32 1597463174, %1239
  %1241 = bitcast i32 %1240 to float
  %1242 = fmul fast float %1144, 5.000000e-01
  %1243 = fmul fast float %1241, %1241
  %1244 = fmul fast float %1243, %1242
  %1245 = fsub fast float 1.500000e+00, %1244
  %1246 = fmul fast float %1241, %1144
  %1247 = fmul fast float %1246, %1245
  %1248 = fsub fast float %1227, %1209
  %1249 = fsub fast float %1237, %1213
  %1250 = fsub fast float %1247, %1217
  %1251 = fmul fast float %1248, %1177
  %1252 = fmul fast float %1249, %1179
  %1253 = fmul fast float %1250, %1184
  %1254 = fadd fast float %1251, %1192
  %1255 = fadd fast float %1252, %1196
  %1256 = fadd fast float %1253, %1200
  %1257 = call float @dx.op.unary.f32(i32 7, float %1254)  ; Saturate(value)
  %1258 = call float @dx.op.unary.f32(i32 7, float %1255)  ; Saturate(value)
  %1259 = call float @dx.op.unary.f32(i32 7, float %1256)  ; Saturate(value)
  %1260 = fmul fast float %1257, %1257
  %1261 = fmul fast float %1258, %1258
  %1262 = fmul fast float %1259, %1259
  %1263 = fsub fast float %1260, %1142
  %1264 = fsub fast float %1261, %1143
  %1265 = fsub fast float %1262, %1144
  %1266 = fmul fast float %1263, %1167
  %1267 = fmul fast float %1264, %1167
  %1268 = fmul fast float %1265, %1167
  %1269 = fadd fast float %1266, %1142
  %1270 = fadd fast float %1267, %1143
  %1271 = fadd fast float %1268, %1144
  %1272 = fadd fast float %1189, %1153
  %1273 = fsub fast float %1272, %1206
  %1274 = call float @dx.op.unary.f32(i32 7, float %1273)  ; Saturate(value)
  %1275 = fsub fast float %1274, %1153
  %1276 = fmul fast float %1275, %1167
  %1277 = fadd fast float %1276, %1153
  br label %1331

; <label>:1278                                    ; preds = %1166
  %1279 = and i32 %1169, 134217728
  %1280 = icmp eq i32 %1279, 0
  br i1 %1280, label %1315, label %1281

; <label>:1281                                    ; preds = %1278
  %1282 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %1283 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %1284 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %1285 = fadd fast float %1282, -5.000000e-01
  %1286 = fadd fast float %1283, -5.000000e-01
  %1287 = fadd fast float %1284, -5.000000e-01
  %1288 = fmul fast float %1285, %1167
  %1289 = fmul fast float %1286, %1167
  %1290 = fmul fast float %1287, %1167
  %1291 = fadd fast float %1288, 5.000000e-01
  %1292 = fadd fast float %1289, 5.000000e-01
  %1293 = fadd fast float %1290, 5.000000e-01
  %1294 = call float @dx.op.unary.f32(i32 24, float %1142)  ; Sqrt(value)
  %1295 = call float @dx.op.unary.f32(i32 24, float %1143)  ; Sqrt(value)
  %1296 = call float @dx.op.unary.f32(i32 24, float %1144)  ; Sqrt(value)
  %1297 = fmul fast float %1291, 2.000000e+00
  %1298 = fsub fast float 1.000000e+00, %1297
  %1299 = fmul fast float %1298, %1294
  %1300 = fadd fast float %1299, %1297
  %1301 = fmul fast float %1300, %1294
  %1302 = fmul fast float %1292, 2.000000e+00
  %1303 = fsub fast float 1.000000e+00, %1302
  %1304 = fmul fast float %1303, %1295
  %1305 = fadd fast float %1304, %1302
  %1306 = fmul fast float %1305, %1295
  %1307 = fmul fast float %1293, 2.000000e+00
  %1308 = fsub fast float 1.000000e+00, %1307
  %1309 = fmul fast float %1308, %1296
  %1310 = fadd fast float %1309, %1307
  %1311 = fmul fast float %1310, %1296
  %1312 = fmul fast float %1301, %1301
  %1313 = fmul fast float %1306, %1306
  %1314 = fmul fast float %1311, %1311
  br label %1331

; <label>:1315                                    ; preds = %1278
  %1316 = fmul fast float %268, %268
  %1317 = fmul fast float %272, %272
  %1318 = fmul fast float %276, %276
  %1319 = fadd fast float %1316, -1.000000e+00
  %1320 = fadd fast float %1317, -1.000000e+00
  %1321 = fadd fast float %1318, -1.000000e+00
  %1322 = fmul fast float %1167, %1319
  %1323 = fmul fast float %1167, %1320
  %1324 = fmul fast float %1167, %1321
  %1325 = fadd fast float %1322, 1.000000e+00
  %1326 = fadd fast float %1323, 1.000000e+00
  %1327 = fadd fast float %1324, 1.000000e+00
  %1328 = fmul fast float %1325, %1142
  %1329 = fmul fast float %1326, %1143
  %1330 = fmul fast float %1327, %1144
  br label %1331

; <label>:1331                                    ; preds = %1315, %1281, %1172, %1128
  %1332 = phi float [ %1277, %1172 ], [ %1153, %1281 ], [ %1153, %1315 ], [ 0x3FA23C0BE0000000, %1128 ]
  %1333 = phi float [ %1269, %1172 ], [ %1312, %1281 ], [ %1328, %1315 ], [ 1.000000e+00, %1128 ]
  %1334 = phi float [ %1270, %1172 ], [ %1313, %1281 ], [ %1329, %1315 ], [ 1.000000e+00, %1128 ]
  %1335 = phi float [ %1271, %1172 ], [ %1314, %1281 ], [ %1330, %1315 ], [ 1.000000e+00, %1128 ]
  %1336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.i32 %1336, 1
  %1338 = and i32 %1337, 1
  %1339 = icmp ne i32 %1338, 0
  %1340 = add i32 %28, 356
  %1341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.i32 %1341, 0
  %1343 = and i32 %1342, 32
  %1344 = icmp ne i32 %1343, 0
  %1345 = and i1 %1339, %1344
  %1346 = select i1 %1345, float 1.000000e+00, float %1333
  %1347 = select i1 %1345, float 0x3FD3333340000000, float %1334
  %1348 = select i1 %1345, float 0x3FD3333340000000, float %1335
  %1349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1350 = extractvalue %dx.types.ResRet.i32 %1349, 0
  %1351 = and i32 %1350, 32
  %1352 = icmp eq i32 %1351, 0
  br i1 %1352, label %1425, label %1353

; <label>:1353                                    ; preds = %1331
  %1354 = add i32 %28, 108
  %1355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.i32 %1355, 0
  %1357 = add i32 %28, 380
  %1358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1357, i32 undef)  ; BufferLoad(srv,index,wot)
  %1359 = extractvalue %dx.types.ResRet.i32 %1358, 0
  %1360 = add i32 %1359, 0
  %1361 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1360, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1362 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1361, %dx.types.Handle %67, float %1053, float %1054, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1363 = extractvalue %dx.types.ResRet.f32 %1362, 0
  %1364 = extractvalue %dx.types.ResRet.f32 %1362, 1
  %1365 = extractvalue %dx.types.ResRet.f32 %1362, 2
  %1366 = extractvalue %dx.types.ResRet.f32 %1362, 3
  %1367 = and i32 %1356, 255
  %1368 = uitofp i32 %1367 to float
  %1369 = lshr i32 %1356, 8
  %1370 = and i32 %1369, 255
  %1371 = uitofp i32 %1370 to float
  %1372 = lshr i32 %1356, 16
  %1373 = and i32 %1372, 255
  %1374 = uitofp i32 %1373 to float
  %1375 = fmul fast float %1374, 0x3F70101000000000
  %1376 = fmul fast float %1363, %1368
  %1377 = fadd fast float %1376, %1371
  %1378 = fmul fast float %1377, 0x3F70101000000000
  %1379 = fadd fast float %1364, -5.000000e-01
  %1380 = fadd fast float %1366, -5.000000e-01
  %1381 = fmul fast float %1379, %1375
  %1382 = fmul fast float %1380, %1375
  %1383 = fadd fast float %1381, 5.000000e-01
  %1384 = fadd fast float %1382, 5.000000e-01
  %1385 = fmul fast float %1383, 2.000000e+00
  %1386 = fadd fast float %1385, -1.000000e+00
  %1387 = fmul fast float %1384, 2.000000e+00
  %1388 = fadd fast float %1387, -1.000000e+00
  %1389 = fadd fast float %1386, %1388
  %1390 = fmul fast float %1389, 5.000000e-01
  %1391 = fsub fast float %1386, %1388
  %1392 = fmul fast float %1391, 5.000000e-01
  %1393 = call float @dx.op.unary.f32(i32 6, float %1390)  ; FAbs(value)
  %1394 = fsub fast float 1.000000e+00, %1393
  %1395 = call float @dx.op.unary.f32(i32 6, float %1392)  ; FAbs(value)
  %1396 = fsub fast float %1394, %1395
  %1397 = call float @dx.op.dot3.f32(i32 55, float %1390, float %1392, float %1396, float %1390, float %1392, float %1396)  ; Dot3(ax,ay,az,bx,by,bz)
  %1398 = call float @dx.op.unary.f32(i32 25, float %1397)  ; Rsqrt(value)
  %1399 = fmul fast float %1390, %1398
  %1400 = fmul fast float %1392, %1398
  %1401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1402 = extractvalue %dx.types.ResRet.i32 %1401, 0
  %1403 = and i32 %1402, 67108864
  %1404 = icmp eq i32 %1403, 0
  br i1 %1404, label %1421, label %1405

; <label>:1405                                    ; preds = %1353
  %1406 = add i32 %28, 296
  %1407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1406, i32 undef)  ; BufferLoad(srv,index,wot)
  %1408 = extractvalue %dx.types.ResRet.i32 %1407, 0
  %1409 = and i32 %1408, 65535
  %1410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1409)  ; LegacyF16ToF32(value)
  %1411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.i32 %1411, 0
  %1413 = and i32 %1412, 65535
  %1414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1413)  ; LegacyF16ToF32(value)
  %1415 = lshr i32 %1408, 16
  %1416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1415)  ; LegacyF16ToF32(value)
  %1417 = fsub fast float %1378, %1416
  %1418 = fmul fast float %1417, %1410
  %1419 = fadd fast float %1418, %1414
  %1420 = call float @dx.op.unary.f32(i32 7, float %1419)  ; Saturate(value)
  br label %1421

; <label>:1421                                    ; preds = %1405, %1353
  %1422 = phi float [ %1420, %1405 ], [ %1378, %1353 ]
  %1423 = call float @dx.op.dot2.f32(i32 54, float %1399, float %1400, float %957, float %958)  ; Dot2(ax,ay,bx,by)
  %1424 = call float @dx.op.dot2.f32(i32 54, float %1399, float %1400, float %959, float %960)  ; Dot2(ax,ay,bx,by)
  br label %1425

; <label>:1425                                    ; preds = %1421, %1331
  %1426 = phi float [ %1422, %1421 ], [ 0x3FD6666660000000, %1331 ]
  %1427 = phi float [ %1423, %1421 ], [ 0.000000e+00, %1331 ]
  %1428 = phi float [ %1424, %1421 ], [ 0.000000e+00, %1331 ]
  %1429 = phi float [ %1365, %1421 ], [ 1.000000e+00, %1331 ]
  %1430 = add i32 %28, 176
  %1431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1430, i32 undef)  ; BufferLoad(srv,index,wot)
  %1432 = extractvalue %dx.types.ResRet.i32 %1431, 0
  %1433 = lshr i32 %1432, 22
  %1434 = shl nuw nsw i32 %1433, 5
  %1435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1434)  ; LegacyF16ToF32(value)
  %1436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1437 = extractvalue %dx.types.ResRet.i32 %1436, 0
  %1438 = and i32 %1437, 64
  %1439 = icmp eq i32 %1438, 0
  br i1 %1439, label %1473, label %1440

; <label>:1440                                    ; preds = %1425
  %1441 = add i32 %28, 396
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1441, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = add i32 %1443, 0
  %1445 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1444, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.i32 %1446, 0
  %1448 = and i32 %1447, 131072
  %1449 = icmp eq i32 %1448, 0
  %1450 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1445, %dx.types.Handle %67, float %1053, float %1054, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1451 = extractvalue %dx.types.ResRet.f32 %1450, 0
  %1452 = extractvalue %dx.types.ResRet.f32 %1450, 1
  %1453 = extractvalue %dx.types.ResRet.f32 %1450, 2
  %1454 = fmul fast float %1451, %256
  %1455 = fmul fast float %1452, %259
  %1456 = fmul fast float %1453, %262
  br i1 %1449, label %1463, label %1457

; <label>:1457                                    ; preds = %1440
  %1458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1459 = extractvalue %dx.types.CBufRet.f32 %1458, 0
  %1460 = fmul fast float %1459, %1454
  %1461 = fmul fast float %1459, %1455
  %1462 = fmul fast float %1459, %1456
  br label %1463

; <label>:1463                                    ; preds = %1457, %1440
  %1464 = phi float [ %1460, %1457 ], [ %1454, %1440 ]
  %1465 = phi float [ %1461, %1457 ], [ %1455, %1440 ]
  %1466 = phi float [ %1462, %1457 ], [ %1456, %1440 ]
  %1467 = fmul fast float %1464, %1435
  %1468 = select i1 %197, float %1467, float %1464
  %1469 = call float @dx.op.dot3.f32(i32 55, float %1468, float %1465, float %1466, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1470 = select i1 %197, float 0.000000e+00, float %1464
  %1471 = select i1 %197, float %1469, float %1465
  %1472 = select i1 %197, float 0.000000e+00, float %1466
  br label %1473

; <label>:1473                                    ; preds = %1463, %1425
  %1474 = phi float [ %1470, %1463 ], [ 0.000000e+00, %1425 ]
  %1475 = phi float [ %1471, %1463 ], [ 0.000000e+00, %1425 ]
  %1476 = phi float [ %1472, %1463 ], [ 0.000000e+00, %1425 ]
  %1477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1478 = extractvalue %dx.types.ResRet.i32 %1477, 0
  %1479 = and i32 %1478, 4096
  %1480 = icmp eq i32 %1479, 0
  br i1 %1480, label %1501, label %1481

; <label>:1481                                    ; preds = %1473
  %1482 = and i32 %1478, 1048576
  %1483 = icmp ne i32 %1482, 0
  %1484 = add i32 %28, 460
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = add i32 %1486, 0
  %1488 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1487, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1489 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1488, %dx.types.Handle %68, float %1053, float %1054, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1490 = extractvalue %dx.types.ResRet.f32 %1489, 2
  %1491 = select i1 %1483, float 1.000000e+00, float %1490
  %1492 = add i32 %28, 180
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = and i32 %1494, 65535
  %1496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1495)  ; LegacyF16ToF32(value)
  %1497 = lshr i32 %1494, 16
  %1498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1497)  ; LegacyF16ToF32(value)
  %1499 = fmul fast float %1496, %1491
  %1500 = fadd fast float %1499, %1498
  br label %1501

; <label>:1501                                    ; preds = %1481, %1473
  %1502 = phi float [ %1500, %1481 ], [ 0.000000e+00, %1473 ]
  %1503 = add i32 %28, 112
  %1504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1505 = extractvalue %dx.types.ResRet.i32 %1504, 0
  %1506 = and i32 %1505, 255
  %1507 = uitofp i32 %1506 to float
  %1508 = lshr i32 %1505, 8
  %1509 = and i32 %1508, 255
  %1510 = uitofp i32 %1509 to float
  %1511 = call float @dx.op.dot3.f32(i32 55, float %1346, float %1347, float %1348, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1512 = fmul fast float %1510, %1511
  %1513 = fadd fast float %1512, %1507
  %1514 = fmul fast float %1513, 0x3F70101020000000
  %1515 = call float @dx.op.unary.f32(i32 7, float %1514)  ; Saturate(value)
  br i1 %945, label %1516, label %1524

; <label>:1516                                    ; preds = %1501
  %1517 = fsub fast float 1.000000e+00, %1126
  %1518 = fmul fast float %1517, %932
  %1519 = fmul fast float %1517, %933
  %1520 = fmul fast float %1517, %934
  %1521 = fmul fast float %1517, %935
  %1522 = fmul fast float %1517, %936
  %1523 = fmul fast float %1517, %937
  br label %1524

; <label>:1524                                    ; preds = %1516, %1501
  %1525 = phi float [ %1518, %1516 ], [ %932, %1501 ]
  %1526 = phi float [ %1519, %1516 ], [ %933, %1501 ]
  %1527 = phi float [ %1520, %1516 ], [ %934, %1501 ]
  %1528 = phi float [ %1521, %1516 ], [ %935, %1501 ]
  %1529 = phi float [ %1522, %1516 ], [ %936, %1501 ]
  %1530 = phi float [ %1523, %1516 ], [ %937, %1501 ]
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 3
  %1534 = icmp eq i32 %1533, 3
  br i1 %1534, label %1613, label %1535

; <label>:1535                                    ; preds = %1524
  %1536 = and i32 %1532, 16
  %1537 = icmp ne i32 %1536, 0
  %1538 = select i1 %1537, float %1126, float 0.000000e+00
  %1539 = icmp eq i32 %1533, 0
  br i1 %1539, label %1540, label %1568

; <label>:1540                                    ; preds = %1535
  %1541 = and i32 %1532, 64
  %1542 = icmp ne i32 %1541, 0
  %1543 = select i1 %1542, float %1126, float 0.000000e+00
  %1544 = fsub fast float %1346, %1525
  %1545 = fsub fast float %1347, %1526
  %1546 = fsub fast float %1348, %1527
  %1547 = fmul fast float %1538, %1544
  %1548 = fmul fast float %1538, %1545
  %1549 = fmul fast float %1538, %1546
  %1550 = fadd fast float %1547, %1525
  %1551 = fadd fast float %1548, %1526
  %1552 = fadd fast float %1549, %1527
  %1553 = fsub fast float %1332, %938
  %1554 = fmul fast float %1538, %1553
  %1555 = fadd fast float %1554, %938
  %1556 = fsub fast float %1474, %1528
  %1557 = fsub fast float %1475, %1529
  %1558 = fsub fast float %1476, %1530
  %1559 = fmul fast float %1543, %1556
  %1560 = fmul fast float %1543, %1557
  %1561 = fmul fast float %1543, %1558
  %1562 = fadd fast float %1559, %1528
  %1563 = fadd fast float %1560, %1529
  %1564 = fadd fast float %1561, %1530
  %1565 = fsub fast float %1515, %943
  %1566 = fmul fast float %1538, %1565
  %1567 = fadd fast float %1566, %943
  br label %1613

; <label>:1568                                    ; preds = %1535
  %1569 = icmp eq i32 %1533, 1
  br i1 %1569, label %1570, label %1583

; <label>:1570                                    ; preds = %1568
  %1571 = fadd fast float %1346, -1.000000e+00
  %1572 = fadd fast float %1347, -1.000000e+00
  %1573 = fadd fast float %1348, -1.000000e+00
  %1574 = fmul fast float %1538, %1571
  %1575 = fmul fast float %1538, %1572
  %1576 = fmul fast float %1538, %1573
  %1577 = fadd fast float %1574, 1.000000e+00
  %1578 = fadd fast float %1575, 1.000000e+00
  %1579 = fadd fast float %1576, 1.000000e+00
  %1580 = fmul fast float %1577, %1525
  %1581 = fmul fast float %1578, %1526
  %1582 = fmul fast float %1579, %1527
  br label %1613

; <label>:1583                                    ; preds = %1568
  %1584 = icmp eq i32 %1533, 2
  br i1 %1584, label %1585, label %1613

; <label>:1585                                    ; preds = %1583
  %1586 = call float @dx.op.unary.f32(i32 24, float %1346)  ; Sqrt(value)
  %1587 = call float @dx.op.unary.f32(i32 24, float %1347)  ; Sqrt(value)
  %1588 = call float @dx.op.unary.f32(i32 24, float %1348)  ; Sqrt(value)
  %1589 = fadd fast float %1586, -5.000000e-01
  %1590 = fadd fast float %1587, -5.000000e-01
  %1591 = fadd fast float %1588, -5.000000e-01
  %1592 = fmul fast float %1589, %1538
  %1593 = fmul fast float %1590, %1538
  %1594 = fmul fast float %1591, %1538
  %1595 = fadd fast float %1592, 5.000000e-01
  %1596 = fadd fast float %1593, 5.000000e-01
  %1597 = fadd fast float %1594, 5.000000e-01
  %1598 = fmul fast float %1595, 2.000000e+00
  %1599 = fsub fast float 1.000000e+00, %1598
  %1600 = fmul fast float %1599, %1525
  %1601 = fadd fast float %1600, %1598
  %1602 = fmul fast float %1601, %1525
  %1603 = fmul fast float %1596, 2.000000e+00
  %1604 = fsub fast float 1.000000e+00, %1603
  %1605 = fmul fast float %1604, %1526
  %1606 = fadd fast float %1605, %1603
  %1607 = fmul fast float %1606, %1526
  %1608 = fmul fast float %1597, 2.000000e+00
  %1609 = fsub fast float 1.000000e+00, %1608
  %1610 = fmul fast float %1609, %1527
  %1611 = fadd fast float %1610, %1608
  %1612 = fmul fast float %1611, %1527
  br label %1613

; <label>:1613                                    ; preds = %1585, %1583, %1570, %1540, %1524
  %1614 = phi float [ %1525, %1524 ], [ %1602, %1585 ], [ %1525, %1583 ], [ %1580, %1570 ], [ %1550, %1540 ]
  %1615 = phi float [ %1526, %1524 ], [ %1607, %1585 ], [ %1526, %1583 ], [ %1581, %1570 ], [ %1551, %1540 ]
  %1616 = phi float [ %1527, %1524 ], [ %1612, %1585 ], [ %1527, %1583 ], [ %1582, %1570 ], [ %1552, %1540 ]
  %1617 = phi float [ %1528, %1524 ], [ %1528, %1585 ], [ %1528, %1583 ], [ %1528, %1570 ], [ %1562, %1540 ]
  %1618 = phi float [ %1529, %1524 ], [ %1529, %1585 ], [ %1529, %1583 ], [ %1529, %1570 ], [ %1563, %1540 ]
  %1619 = phi float [ %1530, %1524 ], [ %1530, %1585 ], [ %1530, %1583 ], [ %1530, %1570 ], [ %1564, %1540 ]
  %1620 = phi float [ %938, %1524 ], [ %938, %1585 ], [ %938, %1583 ], [ %938, %1570 ], [ %1555, %1540 ]
  %1621 = phi float [ %943, %1524 ], [ %943, %1585 ], [ %943, %1583 ], [ %943, %1570 ], [ %1567, %1540 ]
  %1622 = and i32 %1532, 12
  %1623 = icmp eq i32 %1622, 12
  br i1 %1623, label %1706, label %1624

; <label>:1624                                    ; preds = %1613
  %1625 = and i32 %1532, 2097184
  %1626 = icmp eq i32 %1625, 2097184
  %1627 = select i1 %1626, float %1126, float 0.000000e+00
  %1628 = and i32 %1532, 4194336
  %1629 = icmp eq i32 %1628, 4194336
  %1630 = select i1 %1629, float %1126, float 0.000000e+00
  %1631 = and i32 %1532, 8388640
  %1632 = icmp eq i32 %1631, 8388640
  %1633 = select i1 %1632, float %1126, float 0.000000e+00
  %1634 = and i32 %1532, 4096
  %1635 = icmp ne i32 %1634, 0
  %1636 = select i1 %1635, float %1126, float 0.000000e+00
  %1637 = icmp eq i32 %1622, 0
  br i1 %1637, label %1638, label %1654

; <label>:1638                                    ; preds = %1624
  %1639 = fsub fast float %1427, %930
  %1640 = fsub fast float %1428, %931
  %1641 = fmul fast float %1627, %1639
  %1642 = fmul fast float %1627, %1640
  %1643 = fadd fast float %1641, %930
  %1644 = fadd fast float %1642, %931
  %1645 = fsub fast float %1429, %941
  %1646 = fmul fast float %1630, %1645
  %1647 = fadd fast float %1646, %941
  %1648 = fsub fast float %1426, %940
  %1649 = fmul fast float %1633, %1648
  %1650 = fadd fast float %1649, %940
  %1651 = fsub fast float %1502, %942
  %1652 = fmul fast float %1636, %1651
  %1653 = fadd fast float %1652, %942
  br label %1706

; <label>:1654                                    ; preds = %1624
  %1655 = icmp eq i32 %1622, 4
  br i1 %1655, label %1656, label %1690

; <label>:1656                                    ; preds = %1654
  %1657 = fmul fast float %1627, %1427
  %1658 = fmul fast float %1627, %1428
  %1659 = fadd fast float %1657, %930
  %1660 = fadd fast float %1658, %931
  %1661 = call float @dx.op.binary.f32(i32 36, float %941, float %1429)  ; FMin(a,b)
  %1662 = fsub fast float %1661, %941
  %1663 = fmul fast float %1662, %1630
  %1664 = fadd fast float %1663, %941
  %1665 = fadd fast float %1426, %940
  %1666 = fmul fast float %1665, 0x3FF337FAE0000000
  %1667 = fmul fast float %940, %940
  %1668 = fmul fast float %1426, %1426
  %1669 = fadd fast float %1668, %1667
  %1670 = fmul fast float %1669, 0x3FE5152B00000000
  %1671 = fmul fast float %940, 0xBFCC1F85E0000000
  %1672 = fmul fast float %1671, %1426
  %1673 = fadd fast float %1672, 0xBFE1363700000000
  %1674 = fadd fast float %1673, %1666
  %1675 = fsub fast float %1674, %1670
  %1676 = fmul fast float %1665, 0x3FBA6F0D00000000
  %1677 = fmul fast float %1669, 0x3FD0432880000000
  %1678 = fmul fast float %940, 0xBFEF110800000000
  %1679 = fmul fast float %1678, %1426
  %1680 = fadd fast float %1679, 1.000000e+00
  %1681 = fsub fast float %1680, %1676
  %1682 = fadd fast float %1681, %1677
  %1683 = fdiv fast float %1675, %1682
  %1684 = call float @dx.op.unary.f32(i32 7, float %1683)  ; Saturate(value)
  %1685 = fsub fast float %1684, %940
  %1686 = fmul fast float %1685, %1633
  %1687 = fadd fast float %1686, %940
  %1688 = fmul fast float %1636, %1502
  %1689 = fadd fast float %1688, %942
  br label %1706

; <label>:1690                                    ; preds = %1654
  %1691 = icmp eq i32 %1622, 8
  br i1 %1691, label %1692, label %1706

; <label>:1692                                    ; preds = %1690
  %1693 = fmul fast float %1627, %1427
  %1694 = fmul fast float %1627, %1428
  %1695 = fadd fast float %1693, %930
  %1696 = fadd fast float %1694, %931
  %1697 = call float @dx.op.binary.f32(i32 36, float %941, float %1429)  ; FMin(a,b)
  %1698 = fsub fast float %1697, %941
  %1699 = fmul fast float %1698, %1630
  %1700 = fadd fast float %1699, %941
  %1701 = fsub fast float %1426, %940
  %1702 = fmul fast float %1633, %1701
  %1703 = fadd fast float %1702, %940
  %1704 = fmul fast float %1636, %1502
  %1705 = fadd fast float %1704, %942
  br label %1706

; <label>:1706                                    ; preds = %1692, %1690, %1656, %1638, %1613, %1125, %944, %929
  %1707 = phi float [ %930, %1613 ], [ %930, %1125 ], [ %930, %929 ], [ %1695, %1692 ], [ %930, %1690 ], [ %1659, %1656 ], [ %1643, %1638 ], [ %930, %944 ]
  %1708 = phi float [ %931, %1613 ], [ %931, %1125 ], [ %931, %929 ], [ %1696, %1692 ], [ %931, %1690 ], [ %1660, %1656 ], [ %1644, %1638 ], [ %931, %944 ]
  %1709 = phi float [ %1614, %1613 ], [ %932, %1125 ], [ %932, %929 ], [ %1614, %1692 ], [ %1614, %1690 ], [ %1614, %1656 ], [ %1614, %1638 ], [ %932, %944 ]
  %1710 = phi float [ %1615, %1613 ], [ %933, %1125 ], [ %933, %929 ], [ %1615, %1692 ], [ %1615, %1690 ], [ %1615, %1656 ], [ %1615, %1638 ], [ %933, %944 ]
  %1711 = phi float [ %1616, %1613 ], [ %934, %1125 ], [ %934, %929 ], [ %1616, %1692 ], [ %1616, %1690 ], [ %1616, %1656 ], [ %1616, %1638 ], [ %934, %944 ]
  %1712 = phi float [ %1617, %1613 ], [ %935, %1125 ], [ %935, %929 ], [ %1617, %1692 ], [ %1617, %1690 ], [ %1617, %1656 ], [ %1617, %1638 ], [ %935, %944 ]
  %1713 = phi float [ %1618, %1613 ], [ %936, %1125 ], [ %936, %929 ], [ %1618, %1692 ], [ %1618, %1690 ], [ %1618, %1656 ], [ %1618, %1638 ], [ %936, %944 ]
  %1714 = phi float [ %1619, %1613 ], [ %937, %1125 ], [ %937, %929 ], [ %1619, %1692 ], [ %1619, %1690 ], [ %1619, %1656 ], [ %1619, %1638 ], [ %937, %944 ]
  %1715 = phi float [ %1620, %1613 ], [ %938, %1125 ], [ %938, %929 ], [ %1620, %1692 ], [ %1620, %1690 ], [ %1620, %1656 ], [ %1620, %1638 ], [ %938, %944 ]
  %1716 = phi float [ %940, %1613 ], [ %940, %1125 ], [ %940, %929 ], [ %1703, %1692 ], [ %940, %1690 ], [ %1687, %1656 ], [ %1650, %1638 ], [ %940, %944 ]
  %1717 = phi float [ %941, %1613 ], [ %941, %1125 ], [ %941, %929 ], [ %1700, %1692 ], [ %941, %1690 ], [ %1664, %1656 ], [ %1647, %1638 ], [ %941, %944 ]
  %1718 = phi float [ %942, %1613 ], [ %942, %1125 ], [ %942, %929 ], [ %1705, %1692 ], [ %942, %1690 ], [ %1689, %1656 ], [ %1653, %1638 ], [ %942, %944 ]
  %1719 = phi float [ %1621, %1613 ], [ %943, %1125 ], [ %943, %929 ], [ %1621, %1692 ], [ %1621, %1690 ], [ %1621, %1656 ], [ %1621, %1638 ], [ %943, %944 ]
  br i1 %383, label %2482, label %1720

; <label>:1720                                    ; preds = %1706
  %1721 = icmp ult i32 %436, 3
  %1722 = add i32 %28, 56
  %1723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.i32 %1723, 0
  %1725 = add i32 %28, 60
  %1726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1725, i32 undef)  ; BufferLoad(srv,index,wot)
  %1727 = extractvalue %dx.types.ResRet.i32 %1726, 0
  %1728 = or i32 %1727, %1724
  %1729 = icmp eq i32 %1728, 0
  br i1 %1729, label %2482, label %1730

; <label>:1730                                    ; preds = %1720
  %1731 = and i32 %1724, 262144
  %1732 = icmp ne i32 %1731, 0
  %1733 = select i1 %1732, float %32, float 1.000000e+00
  %1734 = select i1 %1732, float %33, float 0.000000e+00
  %1735 = select i1 %1732, float %34, float 0.000000e+00
  %1736 = select i1 %1732, float %35, float 1.000000e+00
  %1737 = select i1 %1732, float %36, float %59
  %1738 = select i1 %1732, float %37, float %60
  %1739 = add i32 %28, 316
  %1740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.i32 %1740, 0
  %1742 = lshr i32 %1741, 16
  %1743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1742)  ; LegacyF16ToF32(value)
  %1744 = fmul fast float %1743, 0x3F50624DE0000000
  %1745 = add i32 %28, 120
  %1746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.i32 %1746, 0
  %1748 = lshr i32 %1747, 16
  %1749 = and i32 %1748, 255
  %1750 = lshr i32 %1747, 24
  %1751 = add i32 %28, 324
  %1752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1751, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.i32 %1752, 0
  %1754 = and i32 %1753, 65535
  %1755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1754)  ; LegacyF16ToF32(value)
  %1756 = lshr i32 %1753, 16
  %1757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1756)  ; LegacyF16ToF32(value)
  %1758 = add i32 %28, 64
  %1759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.i32 %1759, 0
  %1761 = lshr i32 %1760, 22
  %1762 = shl nuw nsw i32 %1761, 5
  %1763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1762)  ; LegacyF16ToF32(value)
  %1764 = shl i32 %1760, 4
  %1765 = and i32 %1764, 32752
  %1766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1765)  ; LegacyF16ToF32(value)
  %1767 = lshr i32 %1760, 7
  %1768 = and i32 %1767, 32752
  %1769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1768)  ; LegacyF16ToF32(value)
  %1770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1771 = extractvalue %dx.types.CBufRet.f32 %1770, 3
  %1772 = fmul fast float %1771, 1.000000e+03
  %1773 = fmul fast float %333, %1772
  %1774 = call float @dx.op.unary.f32(i32 22, float %1773)  ; Frc(value)
  %1775 = fadd fast float %1774, %323
  %1776 = fmul fast float %334, %1772
  %1777 = call float @dx.op.unary.f32(i32 22, float %1776)  ; Frc(value)
  %1778 = fadd fast float %1777, %325
  %1779 = fmul fast float %1744, %1772
  %1780 = call float @dx.op.unary.f32(i32 22, float %1779)  ; Frc(value)
  %1781 = fmul fast float %1780, 0x401921FB60000000
  %1782 = fadd fast float %1781, %1763
  %1783 = call float @dx.op.unary.f32(i32 13, float %1782)  ; Sin(value)
  %1784 = call float @dx.op.unary.f32(i32 12, float %1782)  ; Cos(value)
  %1785 = fsub fast float -0.000000e+00, %1783
  %1786 = fadd fast float %1737, -5.000000e-01
  %1787 = fadd fast float %1738, -5.000000e-01
  %1788 = fmul fast float %1755, %1786
  %1789 = fmul fast float %1757, %1787
  %1790 = fadd fast float %1788, 5.000000e-01
  %1791 = fadd fast float %1789, 5.000000e-01
  %1792 = fmul fast float %1766, %1790
  %1793 = fmul fast float %1769, %1791
  %1794 = fmul fast float %1784, %1792
  %1795 = call float @dx.op.tertiary.f32(i32 46, float %1785, float %1793, float %1794)  ; FMad(a,b,c)
  %1796 = fmul fast float %1783, %1792
  %1797 = call float @dx.op.tertiary.f32(i32 46, float %1784, float %1793, float %1796)  ; FMad(a,b,c)
  %1798 = fadd fast float %1775, %1795
  %1799 = fadd fast float %1778, %1797
  %1800 = icmp ugt i32 %1749, 1
  %1801 = icmp ugt i32 %1747, 33554431
  %1802 = or i1 %1801, %1800
  br i1 %1802, label %1803, label %1828

; <label>:1803                                    ; preds = %1730
  %1804 = add i32 %28, 260
  %1805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1804, i32 undef)  ; BufferLoad(srv,index,wot)
  %1806 = extractvalue %dx.types.ResRet.i32 %1805, 0
  %1807 = lshr i32 %1806, 16
  %1808 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1807)  ; LegacyF16ToF32(value)
  %1809 = fmul fast float %1771, %1808
  %1810 = call float @dx.op.unary.f32(i32 22, float %1809)  ; Frc(value)
  %1811 = mul nuw nsw i32 %1749, %1750
  %1812 = uitofp i32 %1811 to float
  %1813 = fmul fast float %1810, %1812
  %1814 = call float @dx.op.unary.f32(i32 27, float %1813)  ; Round_ni(value)
  %1815 = fptoui float %1814 to i32
  %1816 = urem i32 %1815, %1749
  %1817 = udiv i32 %1815, %1750
  %1818 = call float @dx.op.unary.f32(i32 22, float %1798)  ; Frc(value)
  %1819 = call float @dx.op.unary.f32(i32 22, float %1799)  ; Frc(value)
  %1820 = uitofp i32 %1816 to float
  %1821 = uitofp i32 %1817 to float
  %1822 = fadd fast float %1818, %1820
  %1823 = fadd fast float %1819, %1821
  %1824 = uitofp i32 %1749 to float
  %1825 = uitofp i32 %1750 to float
  %1826 = fdiv fast float %1822, %1824
  %1827 = fdiv fast float %1823, %1825
  br label %1828

; <label>:1828                                    ; preds = %1803, %1730
  %1829 = phi float [ %1826, %1803 ], [ %1798, %1730 ]
  %1830 = phi float [ %1827, %1803 ], [ %1799, %1730 ]
  %1831 = and i32 %1724, 256
  %1832 = icmp eq i32 %1831, 0
  br i1 %1832, label %1879, label %1833

; <label>:1833                                    ; preds = %1828
  %1834 = add i32 %28, 432
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = add i32 %1836, 0
  %1838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1837, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1839 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1838, %dx.types.Handle %68, float %1829, float %1830, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1840 = extractvalue %dx.types.ResRet.f32 %1839, 0
  %1841 = add i32 %28, 132
  %1842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1841, i32 undef)  ; BufferLoad(srv,index,wot)
  %1843 = extractvalue %dx.types.ResRet.i32 %1842, 0
  %1844 = shl i32 %1843, 4
  %1845 = and i32 %1844, 32752
  %1846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1845)  ; LegacyF16ToF32(value)
  %1847 = lshr i32 %1843, 7
  %1848 = and i32 %1847, 32752
  %1849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1848)  ; LegacyF16ToF32(value)
  %1850 = fsub fast float 1.000000e+00, %432
  %1851 = call float @dx.op.binary.f32(i32 35, float %1850, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1852 = bitcast float %432 to i32
  %1853 = sitofp i32 %1852 to float
  %1854 = fadd fast float %1853, 0xC1CFBF8940000000
  %1855 = fmul fast float %1849, %1854
  %1856 = fadd fast float %1855, 0x41CFBF8940000000
  %1857 = fptosi float %1856 to i32
  %1858 = bitcast i32 %1857 to float
  %1859 = bitcast float %1851 to i32
  %1860 = sitofp i32 %1859 to float
  %1861 = fadd fast float %1860, 0xC1CFBF8940000000
  %1862 = fmul fast float %1861, %1849
  %1863 = fadd fast float %1862, 0x41CFBF8940000000
  %1864 = fptosi float %1863 to i32
  %1865 = bitcast i32 %1864 to float
  %1866 = fmul fast float %1858, %1846
  %1867 = fmul fast float %1865, %1846
  %1868 = fsub fast float %1851, %1866
  %1869 = fadd fast float %1867, %1851
  %1870 = call float @dx.op.unary.f32(i32 7, float %1868)  ; Saturate(value)
  %1871 = call float @dx.op.unary.f32(i32 7, float %1869)  ; Saturate(value)
  %1872 = fsub fast float %1840, %1870
  %1873 = fsub fast float %1871, %1870
  %1874 = bitcast float %1873 to i32
  %1875 = sub nsw i32 2129859010, %1874
  %1876 = bitcast i32 %1875 to float
  %1877 = fmul fast float %1876, %1872
  %1878 = call float @dx.op.unary.f32(i32 7, float %1877)  ; Saturate(value)
  br label %1879

; <label>:1879                                    ; preds = %1833, %1828
  %1880 = phi float [ %1878, %1833 ], [ %432, %1828 ]
  %1881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1882 = extractvalue %dx.types.ResRet.i32 %1881, 0
  %1883 = and i32 %1882, 128
  %1884 = icmp eq i32 %1883, 0
  br i1 %1884, label %1901, label %1885

; <label>:1885                                    ; preds = %1879
  %1886 = add i32 %28, 416
  %1887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1888 = extractvalue %dx.types.ResRet.i32 %1887, 0
  %1889 = add i32 %1888, 0
  %1890 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1889, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1891 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1890, %dx.types.Handle %68, float %1829, float %1830, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1892 = extractvalue %dx.types.ResRet.f32 %1891, 0
  %1893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1894 = extractvalue %dx.types.ResRet.i32 %1893, 0
  %1895 = and i32 %1894, 524288
  %1896 = icmp ne i32 %1895, 0
  %1897 = fcmp fast ogt float %1892, 0x3FE0101020000000
  %1898 = select i1 %1897, float 1.000000e+00, float 0.000000e+00
  %1899 = select i1 %1896, float %1898, float %1892
  %1900 = fmul fast float %1899, %1880
  br label %1901

; <label>:1901                                    ; preds = %1885, %1879
  %1902 = phi float [ %1900, %1885 ], [ %1880, %1879 ]
  %1903 = fcmp fast ult float %1902, 0x3F70101020000000
  br i1 %1903, label %2482, label %1904

; <label>:1904                                    ; preds = %1901
  %1905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.i32 %1905, 0
  %1907 = and i32 %1906, 16
  %1908 = icmp eq i32 %1907, 0
  br i1 %1908, label %2107, label %1909

; <label>:1909                                    ; preds = %1904
  %1910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.i32 %1910, 0
  %1912 = add i32 %28, 368
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = add i32 %1914, 0
  %1916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1917 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1916, %dx.types.Handle %67, float %1829, float %1830, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1918 = extractvalue %dx.types.ResRet.f32 %1917, 0
  %1919 = extractvalue %dx.types.ResRet.f32 %1917, 1
  %1920 = extractvalue %dx.types.ResRet.f32 %1917, 2
  %1921 = extractvalue %dx.types.ResRet.f32 %1917, 3
  %1922 = and i32 %1911, 255
  %1923 = uitofp i32 %1922 to float
  %1924 = lshr i32 %1911, 8
  %1925 = and i32 %1924, 255
  %1926 = uitofp i32 %1925 to float
  %1927 = fmul fast float %1921, %1923
  %1928 = fadd fast float %1927, %1926
  %1929 = fmul fast float %1928, 0x3F70101000000000
  %1930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.i32 %1930, 0
  %1932 = and i32 %1931, 512
  %1933 = icmp eq i32 %1932, 0
  br i1 %1933, label %1942, label %1934

; <label>:1934                                    ; preds = %1909
  %1935 = add i32 %28, 448
  %1936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.i32 %1936, 0
  %1938 = add i32 %1937, 0
  %1939 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1938, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1940 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1939, %dx.types.Handle %68, float %1829, float %1830, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1941 = extractvalue %dx.types.ResRet.f32 %1940, 0
  br label %1942

; <label>:1942                                    ; preds = %1934, %1909
  %1943 = phi float [ %1941, %1934 ], [ 1.000000e+00, %1909 ]
  %1944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1945 = extractvalue %dx.types.ResRet.i32 %1944, 0
  %1946 = and i32 %1945, 33554432
  %1947 = icmp eq i32 %1946, 0
  br i1 %1947, label %2054, label %1948

; <label>:1948                                    ; preds = %1942
  %1949 = add i32 %28, 256
  %1950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1949, i32 undef)  ; BufferLoad(srv,index,wot)
  %1951 = extractvalue %dx.types.ResRet.i32 %1950, 0
  %1952 = and i32 %1951, 65535
  %1953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1952)  ; LegacyF16ToF32(value)
  %1954 = lshr i32 %1951, 16
  %1955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1954)  ; LegacyF16ToF32(value)
  %1956 = add i32 %28, 260
  %1957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1958 = extractvalue %dx.types.ResRet.i32 %1957, 0
  %1959 = and i32 %1958, 65535
  %1960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1959)  ; LegacyF16ToF32(value)
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = lshr i32 %1962, 24
  %1964 = uitofp i32 %1963 to float
  %1965 = fmul fast float %1964, 0x3F70101020000000
  %1966 = and i32 %1962, 255
  %1967 = uitofp i32 %1966 to float
  %1968 = fmul fast float %1967, 0x3F70101020000000
  %1969 = lshr i32 %1962, 8
  %1970 = and i32 %1969, 255
  %1971 = uitofp i32 %1970 to float
  %1972 = fmul fast float %1971, 0x3F70101020000000
  %1973 = lshr i32 %1962, 16
  %1974 = and i32 %1973, 255
  %1975 = uitofp i32 %1974 to float
  %1976 = fmul fast float %1975, 0x3F70101020000000
  %1977 = add i32 %28, 252
  %1978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.i32 %1978, 0
  %1980 = lshr i32 %1979, 24
  %1981 = uitofp i32 %1980 to float
  %1982 = fmul fast float %1981, 0x3F70101020000000
  %1983 = and i32 %1979, 255
  %1984 = uitofp i32 %1983 to float
  %1985 = fmul fast float %1984, 0x3F70101020000000
  %1986 = lshr i32 %1979, 8
  %1987 = and i32 %1986, 255
  %1988 = uitofp i32 %1987 to float
  %1989 = fmul fast float %1988, 0x3F70101020000000
  %1990 = lshr i32 %1979, 16
  %1991 = and i32 %1990, 255
  %1992 = uitofp i32 %1991 to float
  %1993 = fmul fast float %1992, 0x3F70101020000000
  %1994 = bitcast float %1918 to i32
  %1995 = ashr i32 %1994, 1
  %1996 = sub nsw i32 1597463174, %1995
  %1997 = bitcast i32 %1996 to float
  %1998 = fmul fast float %1918, 5.000000e-01
  %1999 = fmul fast float %1997, %1997
  %2000 = fmul fast float %1999, %1998
  %2001 = fsub fast float 1.500000e+00, %2000
  %2002 = fmul fast float %1997, %1918
  %2003 = fmul fast float %2002, %2001
  %2004 = bitcast float %1919 to i32
  %2005 = ashr i32 %2004, 1
  %2006 = sub nsw i32 1597463174, %2005
  %2007 = bitcast i32 %2006 to float
  %2008 = fmul fast float %1919, 5.000000e-01
  %2009 = fmul fast float %2007, %2007
  %2010 = fmul fast float %2009, %2008
  %2011 = fsub fast float 1.500000e+00, %2010
  %2012 = fmul fast float %2007, %1919
  %2013 = fmul fast float %2012, %2011
  %2014 = bitcast float %1920 to i32
  %2015 = ashr i32 %2014, 1
  %2016 = sub nsw i32 1597463174, %2015
  %2017 = bitcast i32 %2016 to float
  %2018 = fmul fast float %1920, 5.000000e-01
  %2019 = fmul fast float %2017, %2017
  %2020 = fmul fast float %2019, %2018
  %2021 = fsub fast float 1.500000e+00, %2020
  %2022 = fmul fast float %2017, %1920
  %2023 = fmul fast float %2022, %2021
  %2024 = fsub fast float %2003, %1985
  %2025 = fsub fast float %2013, %1989
  %2026 = fsub fast float %2023, %1993
  %2027 = fmul fast float %2024, %1953
  %2028 = fmul fast float %2025, %1955
  %2029 = fmul fast float %2026, %1960
  %2030 = fadd fast float %2027, %1968
  %2031 = fadd fast float %2028, %1972
  %2032 = fadd fast float %2029, %1976
  %2033 = call float @dx.op.unary.f32(i32 7, float %2030)  ; Saturate(value)
  %2034 = call float @dx.op.unary.f32(i32 7, float %2031)  ; Saturate(value)
  %2035 = call float @dx.op.unary.f32(i32 7, float %2032)  ; Saturate(value)
  %2036 = fmul fast float %2033, %2033
  %2037 = fmul fast float %2034, %2034
  %2038 = fmul fast float %2035, %2035
  %2039 = fsub fast float %2036, %1918
  %2040 = fsub fast float %2037, %1919
  %2041 = fsub fast float %2038, %1920
  %2042 = fmul fast float %2039, %1943
  %2043 = fmul fast float %2040, %1943
  %2044 = fmul fast float %2041, %1943
  %2045 = fadd fast float %2042, %1918
  %2046 = fadd fast float %2043, %1919
  %2047 = fadd fast float %2044, %1920
  %2048 = fadd fast float %1965, %1929
  %2049 = fsub fast float %2048, %1982
  %2050 = call float @dx.op.unary.f32(i32 7, float %2049)  ; Saturate(value)
  %2051 = fsub fast float %2050, %1929
  %2052 = fmul fast float %2051, %1943
  %2053 = fadd fast float %2052, %1929
  br label %2107

; <label>:2054                                    ; preds = %1942
  %2055 = and i32 %1945, 134217728
  %2056 = icmp eq i32 %2055, 0
  br i1 %2056, label %2091, label %2057

; <label>:2057                                    ; preds = %2054
  %2058 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %2059 = call float @dx.op.unary.f32(i32 24, float %314)  ; Sqrt(value)
  %2060 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %2061 = fadd fast float %2058, -5.000000e-01
  %2062 = fadd fast float %2059, -5.000000e-01
  %2063 = fadd fast float %2060, -5.000000e-01
  %2064 = fmul fast float %2061, %1943
  %2065 = fmul fast float %2062, %1943
  %2066 = fmul fast float %2063, %1943
  %2067 = fadd fast float %2064, 5.000000e-01
  %2068 = fadd fast float %2065, 5.000000e-01
  %2069 = fadd fast float %2066, 5.000000e-01
  %2070 = call float @dx.op.unary.f32(i32 24, float %1918)  ; Sqrt(value)
  %2071 = call float @dx.op.unary.f32(i32 24, float %1919)  ; Sqrt(value)
  %2072 = call float @dx.op.unary.f32(i32 24, float %1920)  ; Sqrt(value)
  %2073 = fmul fast float %2067, 2.000000e+00
  %2074 = fsub fast float 1.000000e+00, %2073
  %2075 = fmul fast float %2074, %2070
  %2076 = fadd fast float %2075, %2073
  %2077 = fmul fast float %2076, %2070
  %2078 = fmul fast float %2068, 2.000000e+00
  %2079 = fsub fast float 1.000000e+00, %2078
  %2080 = fmul fast float %2079, %2071
  %2081 = fadd fast float %2080, %2078
  %2082 = fmul fast float %2081, %2071
  %2083 = fmul fast float %2069, 2.000000e+00
  %2084 = fsub fast float 1.000000e+00, %2083
  %2085 = fmul fast float %2084, %2072
  %2086 = fadd fast float %2085, %2083
  %2087 = fmul fast float %2086, %2072
  %2088 = fmul fast float %2077, %2077
  %2089 = fmul fast float %2082, %2082
  %2090 = fmul fast float %2087, %2087
  br label %2107

; <label>:2091                                    ; preds = %2054
  %2092 = fmul fast float %310, %310
  %2093 = fmul fast float %314, %314
  %2094 = fmul fast float %318, %318
  %2095 = fadd fast float %2092, -1.000000e+00
  %2096 = fadd fast float %2093, -1.000000e+00
  %2097 = fadd fast float %2094, -1.000000e+00
  %2098 = fmul fast float %1943, %2095
  %2099 = fmul fast float %1943, %2096
  %2100 = fmul fast float %1943, %2097
  %2101 = fadd fast float %2098, 1.000000e+00
  %2102 = fadd fast float %2099, 1.000000e+00
  %2103 = fadd fast float %2100, 1.000000e+00
  %2104 = fmul fast float %2101, %1918
  %2105 = fmul fast float %2102, %1919
  %2106 = fmul fast float %2103, %1920
  br label %2107

; <label>:2107                                    ; preds = %2091, %2057, %1948, %1904
  %2108 = phi float [ %2053, %1948 ], [ %1929, %2057 ], [ %1929, %2091 ], [ 0x3FA23C0BE0000000, %1904 ]
  %2109 = phi float [ %2045, %1948 ], [ %2088, %2057 ], [ %2104, %2091 ], [ 1.000000e+00, %1904 ]
  %2110 = phi float [ %2046, %1948 ], [ %2089, %2057 ], [ %2105, %2091 ], [ 1.000000e+00, %1904 ]
  %2111 = phi float [ %2047, %1948 ], [ %2090, %2057 ], [ %2106, %2091 ], [ 1.000000e+00, %1904 ]
  %2112 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2113 = extractvalue %dx.types.CBufRet.i32 %2112, 1
  %2114 = and i32 %2113, 1
  %2115 = icmp ne i32 %2114, 0
  %2116 = add i32 %28, 356
  %2117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2116, i32 undef)  ; BufferLoad(srv,index,wot)
  %2118 = extractvalue %dx.types.ResRet.i32 %2117, 0
  %2119 = and i32 %2118, 32
  %2120 = icmp ne i32 %2119, 0
  %2121 = and i1 %2115, %2120
  %2122 = select i1 %2121, float 1.000000e+00, float %2109
  %2123 = select i1 %2121, float 0x3FD3333340000000, float %2110
  %2124 = select i1 %2121, float 0x3FD3333340000000, float %2111
  %2125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %2126 = extractvalue %dx.types.ResRet.i32 %2125, 0
  %2127 = and i32 %2126, 32
  %2128 = icmp eq i32 %2127, 0
  br i1 %2128, label %2201, label %2129

; <label>:2129                                    ; preds = %2107
  %2130 = add i32 %28, 124
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = add i32 %28, 384
  %2134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2135 = extractvalue %dx.types.ResRet.i32 %2134, 0
  %2136 = add i32 %2135, 0
  %2137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2136, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2138 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2137, %dx.types.Handle %67, float %1829, float %1830, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2139 = extractvalue %dx.types.ResRet.f32 %2138, 0
  %2140 = extractvalue %dx.types.ResRet.f32 %2138, 1
  %2141 = extractvalue %dx.types.ResRet.f32 %2138, 2
  %2142 = extractvalue %dx.types.ResRet.f32 %2138, 3
  %2143 = and i32 %2132, 255
  %2144 = uitofp i32 %2143 to float
  %2145 = lshr i32 %2132, 8
  %2146 = and i32 %2145, 255
  %2147 = uitofp i32 %2146 to float
  %2148 = lshr i32 %2132, 16
  %2149 = and i32 %2148, 255
  %2150 = uitofp i32 %2149 to float
  %2151 = fmul fast float %2150, 0x3F70101000000000
  %2152 = fmul fast float %2139, %2144
  %2153 = fadd fast float %2152, %2147
  %2154 = fmul fast float %2153, 0x3F70101000000000
  %2155 = fadd fast float %2140, -5.000000e-01
  %2156 = fadd fast float %2142, -5.000000e-01
  %2157 = fmul fast float %2155, %2151
  %2158 = fmul fast float %2156, %2151
  %2159 = fadd fast float %2157, 5.000000e-01
  %2160 = fadd fast float %2158, 5.000000e-01
  %2161 = fmul fast float %2159, 2.000000e+00
  %2162 = fadd fast float %2161, -1.000000e+00
  %2163 = fmul fast float %2160, 2.000000e+00
  %2164 = fadd fast float %2163, -1.000000e+00
  %2165 = fadd fast float %2162, %2164
  %2166 = fmul fast float %2165, 5.000000e-01
  %2167 = fsub fast float %2162, %2164
  %2168 = fmul fast float %2167, 5.000000e-01
  %2169 = call float @dx.op.unary.f32(i32 6, float %2166)  ; FAbs(value)
  %2170 = fsub fast float 1.000000e+00, %2169
  %2171 = call float @dx.op.unary.f32(i32 6, float %2168)  ; FAbs(value)
  %2172 = fsub fast float %2170, %2171
  %2173 = call float @dx.op.dot3.f32(i32 55, float %2166, float %2168, float %2172, float %2166, float %2168, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %2174 = call float @dx.op.unary.f32(i32 25, float %2173)  ; Rsqrt(value)
  %2175 = fmul fast float %2166, %2174
  %2176 = fmul fast float %2168, %2174
  %2177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.i32 %2177, 0
  %2179 = and i32 %2178, 67108864
  %2180 = icmp eq i32 %2179, 0
  br i1 %2180, label %2197, label %2181

; <label>:2181                                    ; preds = %2129
  %2182 = add i32 %28, 312
  %2183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2182, i32 undef)  ; BufferLoad(srv,index,wot)
  %2184 = extractvalue %dx.types.ResRet.i32 %2183, 0
  %2185 = and i32 %2184, 65535
  %2186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2185)  ; LegacyF16ToF32(value)
  %2187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2188 = extractvalue %dx.types.ResRet.i32 %2187, 0
  %2189 = and i32 %2188, 65535
  %2190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2189)  ; LegacyF16ToF32(value)
  %2191 = lshr i32 %2184, 16
  %2192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2191)  ; LegacyF16ToF32(value)
  %2193 = fsub fast float %2154, %2192
  %2194 = fmul fast float %2193, %2186
  %2195 = fadd fast float %2194, %2190
  %2196 = call float @dx.op.unary.f32(i32 7, float %2195)  ; Saturate(value)
  br label %2197

; <label>:2197                                    ; preds = %2181, %2129
  %2198 = phi float [ %2196, %2181 ], [ %2154, %2129 ]
  %2199 = call float @dx.op.dot2.f32(i32 54, float %2175, float %2176, float %1733, float %1734)  ; Dot2(ax,ay,bx,by)
  %2200 = call float @dx.op.dot2.f32(i32 54, float %2175, float %2176, float %1735, float %1736)  ; Dot2(ax,ay,bx,by)
  br label %2201

; <label>:2201                                    ; preds = %2197, %2107
  %2202 = phi float [ %2198, %2197 ], [ 0x3FD6666660000000, %2107 ]
  %2203 = phi float [ %2199, %2197 ], [ 0.000000e+00, %2107 ]
  %2204 = phi float [ %2200, %2197 ], [ 0.000000e+00, %2107 ]
  %2205 = phi float [ %2141, %2197 ], [ 1.000000e+00, %2107 ]
  %2206 = add i32 %28, 192
  %2207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2206, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = lshr i32 %2208, 22
  %2210 = shl nuw nsw i32 %2209, 5
  %2211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2210)  ; LegacyF16ToF32(value)
  %2212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.i32 %2212, 0
  %2214 = and i32 %2213, 64
  %2215 = icmp eq i32 %2214, 0
  br i1 %2215, label %2249, label %2216

; <label>:2216                                    ; preds = %2201
  %2217 = add i32 %28, 400
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = add i32 %2219, 0
  %2221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %2223 = extractvalue %dx.types.ResRet.i32 %2222, 0
  %2224 = and i32 %2223, 131072
  %2225 = icmp eq i32 %2224, 0
  %2226 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2221, %dx.types.Handle %67, float %1829, float %1830, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2227 = extractvalue %dx.types.ResRet.f32 %2226, 0
  %2228 = extractvalue %dx.types.ResRet.f32 %2226, 1
  %2229 = extractvalue %dx.types.ResRet.f32 %2226, 2
  %2230 = fmul fast float %2227, %298
  %2231 = fmul fast float %2228, %301
  %2232 = fmul fast float %2229, %304
  br i1 %2225, label %2239, label %2233

; <label>:2233                                    ; preds = %2216
  %2234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2235 = extractvalue %dx.types.CBufRet.f32 %2234, 0
  %2236 = fmul fast float %2235, %2230
  %2237 = fmul fast float %2235, %2231
  %2238 = fmul fast float %2235, %2232
  br label %2239

; <label>:2239                                    ; preds = %2233, %2216
  %2240 = phi float [ %2236, %2233 ], [ %2230, %2216 ]
  %2241 = phi float [ %2237, %2233 ], [ %2231, %2216 ]
  %2242 = phi float [ %2238, %2233 ], [ %2232, %2216 ]
  %2243 = fmul fast float %2240, %2211
  %2244 = select i1 %197, float %2243, float %2240
  %2245 = call float @dx.op.dot3.f32(i32 55, float %2244, float %2241, float %2242, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2246 = select i1 %197, float 0.000000e+00, float %2240
  %2247 = select i1 %197, float %2245, float %2241
  %2248 = select i1 %197, float 0.000000e+00, float %2242
  br label %2249

; <label>:2249                                    ; preds = %2239, %2201
  %2250 = phi float [ %2246, %2239 ], [ 0.000000e+00, %2201 ]
  %2251 = phi float [ %2247, %2239 ], [ 0.000000e+00, %2201 ]
  %2252 = phi float [ %2248, %2239 ], [ 0.000000e+00, %2201 ]
  %2253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.i32 %2253, 0
  %2255 = and i32 %2254, 4096
  %2256 = icmp eq i32 %2255, 0
  br i1 %2256, label %2277, label %2257

; <label>:2257                                    ; preds = %2249
  %2258 = and i32 %2254, 1048576
  %2259 = icmp ne i32 %2258, 0
  %2260 = add i32 %28, 464
  %2261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2260, i32 undef)  ; BufferLoad(srv,index,wot)
  %2262 = extractvalue %dx.types.ResRet.i32 %2261, 0
  %2263 = add i32 %2262, 0
  %2264 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2263, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2265 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2264, %dx.types.Handle %68, float %1829, float %1830, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2266 = extractvalue %dx.types.ResRet.f32 %2265, 2
  %2267 = select i1 %2259, float 1.000000e+00, float %2266
  %2268 = add i32 %28, 196
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = and i32 %2270, 65535
  %2272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2271)  ; LegacyF16ToF32(value)
  %2273 = lshr i32 %2270, 16
  %2274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2273)  ; LegacyF16ToF32(value)
  %2275 = fmul fast float %2272, %2267
  %2276 = fadd fast float %2275, %2274
  br label %2277

; <label>:2277                                    ; preds = %2257, %2249
  %2278 = phi float [ %2276, %2257 ], [ 0.000000e+00, %2249 ]
  %2279 = add i32 %28, 128
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2279, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = and i32 %2281, 255
  %2283 = uitofp i32 %2282 to float
  %2284 = lshr i32 %2281, 8
  %2285 = and i32 %2284, 255
  %2286 = uitofp i32 %2285 to float
  %2287 = call float @dx.op.dot3.f32(i32 55, float %2122, float %2123, float %2124, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2288 = fmul fast float %2286, %2287
  %2289 = fadd fast float %2288, %2283
  %2290 = fmul fast float %2289, 0x3F70101020000000
  %2291 = call float @dx.op.unary.f32(i32 7, float %2290)  ; Saturate(value)
  br i1 %1721, label %2292, label %2300

; <label>:2292                                    ; preds = %2277
  %2293 = fsub fast float 1.000000e+00, %1902
  %2294 = fmul fast float %2293, %1709
  %2295 = fmul fast float %2293, %1710
  %2296 = fmul fast float %2293, %1711
  %2297 = fmul fast float %2293, %1712
  %2298 = fmul fast float %2293, %1713
  %2299 = fmul fast float %2293, %1714
  br label %2300

; <label>:2300                                    ; preds = %2292, %2277
  %2301 = phi float [ %2294, %2292 ], [ %1709, %2277 ]
  %2302 = phi float [ %2295, %2292 ], [ %1710, %2277 ]
  %2303 = phi float [ %2296, %2292 ], [ %1711, %2277 ]
  %2304 = phi float [ %2297, %2292 ], [ %1712, %2277 ]
  %2305 = phi float [ %2298, %2292 ], [ %1713, %2277 ]
  %2306 = phi float [ %2299, %2292 ], [ %1714, %2277 ]
  %2307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %2308 = extractvalue %dx.types.ResRet.i32 %2307, 0
  %2309 = and i32 %2308, 3
  %2310 = icmp eq i32 %2309, 3
  br i1 %2310, label %2389, label %2311

; <label>:2311                                    ; preds = %2300
  %2312 = and i32 %2308, 16
  %2313 = icmp ne i32 %2312, 0
  %2314 = select i1 %2313, float %1902, float 0.000000e+00
  %2315 = icmp eq i32 %2309, 0
  br i1 %2315, label %2316, label %2344

; <label>:2316                                    ; preds = %2311
  %2317 = and i32 %2308, 64
  %2318 = icmp ne i32 %2317, 0
  %2319 = select i1 %2318, float %1902, float 0.000000e+00
  %2320 = fsub fast float %2122, %2301
  %2321 = fsub fast float %2123, %2302
  %2322 = fsub fast float %2124, %2303
  %2323 = fmul fast float %2314, %2320
  %2324 = fmul fast float %2314, %2321
  %2325 = fmul fast float %2314, %2322
  %2326 = fadd fast float %2323, %2301
  %2327 = fadd fast float %2324, %2302
  %2328 = fadd fast float %2325, %2303
  %2329 = fsub fast float %2108, %1715
  %2330 = fmul fast float %2314, %2329
  %2331 = fadd fast float %2330, %1715
  %2332 = fsub fast float %2250, %2304
  %2333 = fsub fast float %2251, %2305
  %2334 = fsub fast float %2252, %2306
  %2335 = fmul fast float %2319, %2332
  %2336 = fmul fast float %2319, %2333
  %2337 = fmul fast float %2319, %2334
  %2338 = fadd fast float %2335, %2304
  %2339 = fadd fast float %2336, %2305
  %2340 = fadd fast float %2337, %2306
  %2341 = fsub fast float %2291, %1719
  %2342 = fmul fast float %2314, %2341
  %2343 = fadd fast float %2342, %1719
  br label %2389

; <label>:2344                                    ; preds = %2311
  %2345 = icmp eq i32 %2309, 1
  br i1 %2345, label %2346, label %2359

; <label>:2346                                    ; preds = %2344
  %2347 = fadd fast float %2122, -1.000000e+00
  %2348 = fadd fast float %2123, -1.000000e+00
  %2349 = fadd fast float %2124, -1.000000e+00
  %2350 = fmul fast float %2314, %2347
  %2351 = fmul fast float %2314, %2348
  %2352 = fmul fast float %2314, %2349
  %2353 = fadd fast float %2350, 1.000000e+00
  %2354 = fadd fast float %2351, 1.000000e+00
  %2355 = fadd fast float %2352, 1.000000e+00
  %2356 = fmul fast float %2353, %2301
  %2357 = fmul fast float %2354, %2302
  %2358 = fmul fast float %2355, %2303
  br label %2389

; <label>:2359                                    ; preds = %2344
  %2360 = icmp eq i32 %2309, 2
  br i1 %2360, label %2361, label %2389

; <label>:2361                                    ; preds = %2359
  %2362 = call float @dx.op.unary.f32(i32 24, float %2122)  ; Sqrt(value)
  %2363 = call float @dx.op.unary.f32(i32 24, float %2123)  ; Sqrt(value)
  %2364 = call float @dx.op.unary.f32(i32 24, float %2124)  ; Sqrt(value)
  %2365 = fadd fast float %2362, -5.000000e-01
  %2366 = fadd fast float %2363, -5.000000e-01
  %2367 = fadd fast float %2364, -5.000000e-01
  %2368 = fmul fast float %2365, %2314
  %2369 = fmul fast float %2366, %2314
  %2370 = fmul fast float %2367, %2314
  %2371 = fadd fast float %2368, 5.000000e-01
  %2372 = fadd fast float %2369, 5.000000e-01
  %2373 = fadd fast float %2370, 5.000000e-01
  %2374 = fmul fast float %2371, 2.000000e+00
  %2375 = fsub fast float 1.000000e+00, %2374
  %2376 = fmul fast float %2375, %2301
  %2377 = fadd fast float %2376, %2374
  %2378 = fmul fast float %2377, %2301
  %2379 = fmul fast float %2372, 2.000000e+00
  %2380 = fsub fast float 1.000000e+00, %2379
  %2381 = fmul fast float %2380, %2302
  %2382 = fadd fast float %2381, %2379
  %2383 = fmul fast float %2382, %2302
  %2384 = fmul fast float %2373, 2.000000e+00
  %2385 = fsub fast float 1.000000e+00, %2384
  %2386 = fmul fast float %2385, %2303
  %2387 = fadd fast float %2386, %2384
  %2388 = fmul fast float %2387, %2303
  br label %2389

; <label>:2389                                    ; preds = %2361, %2359, %2346, %2316, %2300
  %2390 = phi float [ %2301, %2300 ], [ %2378, %2361 ], [ %2301, %2359 ], [ %2356, %2346 ], [ %2326, %2316 ]
  %2391 = phi float [ %2302, %2300 ], [ %2383, %2361 ], [ %2302, %2359 ], [ %2357, %2346 ], [ %2327, %2316 ]
  %2392 = phi float [ %2303, %2300 ], [ %2388, %2361 ], [ %2303, %2359 ], [ %2358, %2346 ], [ %2328, %2316 ]
  %2393 = phi float [ %2304, %2300 ], [ %2304, %2361 ], [ %2304, %2359 ], [ %2304, %2346 ], [ %2338, %2316 ]
  %2394 = phi float [ %2305, %2300 ], [ %2305, %2361 ], [ %2305, %2359 ], [ %2305, %2346 ], [ %2339, %2316 ]
  %2395 = phi float [ %2306, %2300 ], [ %2306, %2361 ], [ %2306, %2359 ], [ %2306, %2346 ], [ %2340, %2316 ]
  %2396 = phi float [ %1715, %2300 ], [ %1715, %2361 ], [ %1715, %2359 ], [ %1715, %2346 ], [ %2331, %2316 ]
  %2397 = phi float [ %1719, %2300 ], [ %1719, %2361 ], [ %1719, %2359 ], [ %1719, %2346 ], [ %2343, %2316 ]
  %2398 = and i32 %2308, 12
  %2399 = icmp eq i32 %2398, 12
  br i1 %2399, label %2482, label %2400

; <label>:2400                                    ; preds = %2389
  %2401 = and i32 %2308, 2097184
  %2402 = icmp eq i32 %2401, 2097184
  %2403 = select i1 %2402, float %1902, float 0.000000e+00
  %2404 = and i32 %2308, 4194336
  %2405 = icmp eq i32 %2404, 4194336
  %2406 = select i1 %2405, float %1902, float 0.000000e+00
  %2407 = and i32 %2308, 8388640
  %2408 = icmp eq i32 %2407, 8388640
  %2409 = select i1 %2408, float %1902, float 0.000000e+00
  %2410 = and i32 %2308, 4096
  %2411 = icmp ne i32 %2410, 0
  %2412 = select i1 %2411, float %1902, float 0.000000e+00
  %2413 = icmp eq i32 %2398, 0
  br i1 %2413, label %2414, label %2430

; <label>:2414                                    ; preds = %2400
  %2415 = fsub fast float %2203, %1707
  %2416 = fsub fast float %2204, %1708
  %2417 = fmul fast float %2403, %2415
  %2418 = fmul fast float %2403, %2416
  %2419 = fadd fast float %2417, %1707
  %2420 = fadd fast float %2418, %1708
  %2421 = fsub fast float %2205, %1717
  %2422 = fmul fast float %2406, %2421
  %2423 = fadd fast float %2422, %1717
  %2424 = fsub fast float %2202, %1716
  %2425 = fmul fast float %2409, %2424
  %2426 = fadd fast float %2425, %1716
  %2427 = fsub fast float %2278, %1718
  %2428 = fmul fast float %2412, %2427
  %2429 = fadd fast float %2428, %1718
  br label %2482

; <label>:2430                                    ; preds = %2400
  %2431 = icmp eq i32 %2398, 4
  br i1 %2431, label %2432, label %2466

; <label>:2432                                    ; preds = %2430
  %2433 = fmul fast float %2403, %2203
  %2434 = fmul fast float %2403, %2204
  %2435 = fadd fast float %2433, %1707
  %2436 = fadd fast float %2434, %1708
  %2437 = call float @dx.op.binary.f32(i32 36, float %1717, float %2205)  ; FMin(a,b)
  %2438 = fsub fast float %2437, %1717
  %2439 = fmul fast float %2438, %2406
  %2440 = fadd fast float %2439, %1717
  %2441 = fadd fast float %2202, %1716
  %2442 = fmul fast float %2441, 0x3FF337FAE0000000
  %2443 = fmul fast float %1716, %1716
  %2444 = fmul fast float %2202, %2202
  %2445 = fadd fast float %2444, %2443
  %2446 = fmul fast float %2445, 0x3FE5152B00000000
  %2447 = fmul fast float %1716, 0xBFCC1F85E0000000
  %2448 = fmul fast float %2447, %2202
  %2449 = fadd fast float %2448, 0xBFE1363700000000
  %2450 = fadd fast float %2449, %2442
  %2451 = fsub fast float %2450, %2446
  %2452 = fmul fast float %2441, 0x3FBA6F0D00000000
  %2453 = fmul fast float %2445, 0x3FD0432880000000
  %2454 = fmul fast float %1716, 0xBFEF110800000000
  %2455 = fmul fast float %2454, %2202
  %2456 = fadd fast float %2455, 1.000000e+00
  %2457 = fsub fast float %2456, %2452
  %2458 = fadd fast float %2457, %2453
  %2459 = fdiv fast float %2451, %2458
  %2460 = call float @dx.op.unary.f32(i32 7, float %2459)  ; Saturate(value)
  %2461 = fsub fast float %2460, %1716
  %2462 = fmul fast float %2461, %2409
  %2463 = fadd fast float %2462, %1716
  %2464 = fmul fast float %2412, %2278
  %2465 = fadd fast float %2464, %1718
  br label %2482

; <label>:2466                                    ; preds = %2430
  %2467 = icmp eq i32 %2398, 8
  br i1 %2467, label %2468, label %2482

; <label>:2468                                    ; preds = %2466
  %2469 = fmul fast float %2403, %2203
  %2470 = fmul fast float %2403, %2204
  %2471 = fadd fast float %2469, %1707
  %2472 = fadd fast float %2470, %1708
  %2473 = call float @dx.op.binary.f32(i32 36, float %1717, float %2205)  ; FMin(a,b)
  %2474 = fsub fast float %2473, %1717
  %2475 = fmul fast float %2474, %2406
  %2476 = fadd fast float %2475, %1717
  %2477 = fsub fast float %2202, %1716
  %2478 = fmul fast float %2409, %2477
  %2479 = fadd fast float %2478, %1716
  %2480 = fmul fast float %2412, %2278
  %2481 = fadd fast float %2480, %1718
  br label %2482

; <label>:2482                                    ; preds = %2468, %2466, %2432, %2414, %2389, %1901, %1720, %1706
  %2483 = phi float [ %1707, %2389 ], [ %1707, %1901 ], [ %1707, %1706 ], [ %2471, %2468 ], [ %1707, %2466 ], [ %2435, %2432 ], [ %2419, %2414 ], [ %1707, %1720 ]
  %2484 = phi float [ %1708, %2389 ], [ %1708, %1901 ], [ %1708, %1706 ], [ %2472, %2468 ], [ %1708, %2466 ], [ %2436, %2432 ], [ %2420, %2414 ], [ %1708, %1720 ]
  %2485 = phi float [ %2390, %2389 ], [ %1709, %1901 ], [ %1709, %1706 ], [ %2390, %2468 ], [ %2390, %2466 ], [ %2390, %2432 ], [ %2390, %2414 ], [ %1709, %1720 ]
  %2486 = phi float [ %2391, %2389 ], [ %1710, %1901 ], [ %1710, %1706 ], [ %2391, %2468 ], [ %2391, %2466 ], [ %2391, %2432 ], [ %2391, %2414 ], [ %1710, %1720 ]
  %2487 = phi float [ %2392, %2389 ], [ %1711, %1901 ], [ %1711, %1706 ], [ %2392, %2468 ], [ %2392, %2466 ], [ %2392, %2432 ], [ %2392, %2414 ], [ %1711, %1720 ]
  %2488 = phi float [ %2393, %2389 ], [ %1712, %1901 ], [ %1712, %1706 ], [ %2393, %2468 ], [ %2393, %2466 ], [ %2393, %2432 ], [ %2393, %2414 ], [ %1712, %1720 ]
  %2489 = phi float [ %2394, %2389 ], [ %1713, %1901 ], [ %1713, %1706 ], [ %2394, %2468 ], [ %2394, %2466 ], [ %2394, %2432 ], [ %2394, %2414 ], [ %1713, %1720 ]
  %2490 = phi float [ %2395, %2389 ], [ %1714, %1901 ], [ %1714, %1706 ], [ %2395, %2468 ], [ %2395, %2466 ], [ %2395, %2432 ], [ %2395, %2414 ], [ %1714, %1720 ]
  %2491 = phi float [ %2396, %2389 ], [ %1715, %1901 ], [ %1715, %1706 ], [ %2396, %2468 ], [ %2396, %2466 ], [ %2396, %2432 ], [ %2396, %2414 ], [ %1715, %1720 ]
  %2492 = phi float [ %1716, %2389 ], [ %1716, %1901 ], [ %1716, %1706 ], [ %2479, %2468 ], [ %1716, %2466 ], [ %2463, %2432 ], [ %2426, %2414 ], [ %1716, %1720 ]
  %2493 = phi float [ %1717, %2389 ], [ %1717, %1901 ], [ %1717, %1706 ], [ %2476, %2468 ], [ %1717, %2466 ], [ %2440, %2432 ], [ %2423, %2414 ], [ %1717, %1720 ]
  %2494 = phi float [ %1718, %2389 ], [ %1718, %1901 ], [ %1718, %1706 ], [ %2481, %2468 ], [ %1718, %2466 ], [ %2465, %2432 ], [ %2429, %2414 ], [ %1718, %1720 ]
  %2495 = phi float [ %2397, %2389 ], [ %1719, %1901 ], [ %1719, %1706 ], [ %2397, %2468 ], [ %2397, %2466 ], [ %2397, %2432 ], [ %2397, %2414 ], [ %1719, %1720 ]
  br i1 %385, label %3258, label %2496

; <label>:2496                                    ; preds = %2482
  %2497 = icmp ult i32 %436, 4
  %2498 = add i32 %28, 72
  %2499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2498, i32 undef)  ; BufferLoad(srv,index,wot)
  %2500 = extractvalue %dx.types.ResRet.i32 %2499, 0
  %2501 = add i32 %28, 76
  %2502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2501, i32 undef)  ; BufferLoad(srv,index,wot)
  %2503 = extractvalue %dx.types.ResRet.i32 %2502, 0
  %2504 = or i32 %2503, %2500
  %2505 = icmp eq i32 %2504, 0
  br i1 %2505, label %3258, label %2506

; <label>:2506                                    ; preds = %2496
  %2507 = and i32 %2500, 262144
  %2508 = icmp ne i32 %2507, 0
  %2509 = select i1 %2508, float %32, float 1.000000e+00
  %2510 = select i1 %2508, float %33, float 0.000000e+00
  %2511 = select i1 %2508, float %34, float 0.000000e+00
  %2512 = select i1 %2508, float %35, float 1.000000e+00
  %2513 = select i1 %2508, float %36, float %59
  %2514 = select i1 %2508, float %37, float %60
  %2515 = add i32 %28, 332
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = lshr i32 %2517, 16
  %2519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2518)  ; LegacyF16ToF32(value)
  %2520 = fmul fast float %2519, 0x3F50624DE0000000
  %2521 = add i32 %28, 136
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = lshr i32 %2523, 16
  %2525 = and i32 %2524, 255
  %2526 = lshr i32 %2523, 24
  %2527 = add i32 %28, 340
  %2528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.i32 %2528, 0
  %2530 = and i32 %2529, 65535
  %2531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2530)  ; LegacyF16ToF32(value)
  %2532 = lshr i32 %2529, 16
  %2533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2532)  ; LegacyF16ToF32(value)
  %2534 = add i32 %28, 80
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = lshr i32 %2536, 22
  %2538 = shl nuw nsw i32 %2537, 5
  %2539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2538)  ; LegacyF16ToF32(value)
  %2540 = shl i32 %2536, 4
  %2541 = and i32 %2540, 32752
  %2542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2541)  ; LegacyF16ToF32(value)
  %2543 = lshr i32 %2536, 7
  %2544 = and i32 %2543, 32752
  %2545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2544)  ; LegacyF16ToF32(value)
  %2546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2547 = extractvalue %dx.types.CBufRet.f32 %2546, 3
  %2548 = fmul fast float %2547, 1.000000e+03
  %2549 = fmul fast float %375, %2548
  %2550 = call float @dx.op.unary.f32(i32 22, float %2549)  ; Frc(value)
  %2551 = fadd fast float %2550, %365
  %2552 = fmul fast float %376, %2548
  %2553 = call float @dx.op.unary.f32(i32 22, float %2552)  ; Frc(value)
  %2554 = fadd fast float %2553, %367
  %2555 = fmul fast float %2520, %2548
  %2556 = call float @dx.op.unary.f32(i32 22, float %2555)  ; Frc(value)
  %2557 = fmul fast float %2556, 0x401921FB60000000
  %2558 = fadd fast float %2557, %2539
  %2559 = call float @dx.op.unary.f32(i32 13, float %2558)  ; Sin(value)
  %2560 = call float @dx.op.unary.f32(i32 12, float %2558)  ; Cos(value)
  %2561 = fsub fast float -0.000000e+00, %2559
  %2562 = fadd fast float %2513, -5.000000e-01
  %2563 = fadd fast float %2514, -5.000000e-01
  %2564 = fmul fast float %2531, %2562
  %2565 = fmul fast float %2533, %2563
  %2566 = fadd fast float %2564, 5.000000e-01
  %2567 = fadd fast float %2565, 5.000000e-01
  %2568 = fmul fast float %2542, %2566
  %2569 = fmul fast float %2545, %2567
  %2570 = fmul fast float %2560, %2568
  %2571 = call float @dx.op.tertiary.f32(i32 46, float %2561, float %2569, float %2570)  ; FMad(a,b,c)
  %2572 = fmul fast float %2559, %2568
  %2573 = call float @dx.op.tertiary.f32(i32 46, float %2560, float %2569, float %2572)  ; FMad(a,b,c)
  %2574 = fadd fast float %2551, %2571
  %2575 = fadd fast float %2554, %2573
  %2576 = icmp ugt i32 %2525, 1
  %2577 = icmp ugt i32 %2523, 33554431
  %2578 = or i1 %2577, %2576
  br i1 %2578, label %2579, label %2604

; <label>:2579                                    ; preds = %2506
  %2580 = add i32 %28, 276
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = lshr i32 %2582, 16
  %2584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2583)  ; LegacyF16ToF32(value)
  %2585 = fmul fast float %2547, %2584
  %2586 = call float @dx.op.unary.f32(i32 22, float %2585)  ; Frc(value)
  %2587 = mul nuw nsw i32 %2525, %2526
  %2588 = uitofp i32 %2587 to float
  %2589 = fmul fast float %2586, %2588
  %2590 = call float @dx.op.unary.f32(i32 27, float %2589)  ; Round_ni(value)
  %2591 = fptoui float %2590 to i32
  %2592 = urem i32 %2591, %2525
  %2593 = udiv i32 %2591, %2526
  %2594 = call float @dx.op.unary.f32(i32 22, float %2574)  ; Frc(value)
  %2595 = call float @dx.op.unary.f32(i32 22, float %2575)  ; Frc(value)
  %2596 = uitofp i32 %2592 to float
  %2597 = uitofp i32 %2593 to float
  %2598 = fadd fast float %2594, %2596
  %2599 = fadd fast float %2595, %2597
  %2600 = uitofp i32 %2525 to float
  %2601 = uitofp i32 %2526 to float
  %2602 = fdiv fast float %2598, %2600
  %2603 = fdiv fast float %2599, %2601
  br label %2604

; <label>:2604                                    ; preds = %2579, %2506
  %2605 = phi float [ %2602, %2579 ], [ %2574, %2506 ]
  %2606 = phi float [ %2603, %2579 ], [ %2575, %2506 ]
  %2607 = and i32 %2500, 256
  %2608 = icmp eq i32 %2607, 0
  br i1 %2608, label %2655, label %2609

; <label>:2609                                    ; preds = %2604
  %2610 = add i32 %28, 436
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2610, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = add i32 %2612, 0
  %2614 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2613, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2615 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2614, %dx.types.Handle %68, float %2605, float %2606, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2616 = extractvalue %dx.types.ResRet.f32 %2615, 0
  %2617 = add i32 %28, 148
  %2618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %2619 = extractvalue %dx.types.ResRet.i32 %2618, 0
  %2620 = shl i32 %2619, 4
  %2621 = and i32 %2620, 32752
  %2622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2621)  ; LegacyF16ToF32(value)
  %2623 = lshr i32 %2619, 7
  %2624 = and i32 %2623, 32752
  %2625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2624)  ; LegacyF16ToF32(value)
  %2626 = fsub fast float 1.000000e+00, %431
  %2627 = call float @dx.op.binary.f32(i32 35, float %2626, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2628 = bitcast float %431 to i32
  %2629 = sitofp i32 %2628 to float
  %2630 = fadd fast float %2629, 0xC1CFBF8940000000
  %2631 = fmul fast float %2625, %2630
  %2632 = fadd fast float %2631, 0x41CFBF8940000000
  %2633 = fptosi float %2632 to i32
  %2634 = bitcast i32 %2633 to float
  %2635 = bitcast float %2627 to i32
  %2636 = sitofp i32 %2635 to float
  %2637 = fadd fast float %2636, 0xC1CFBF8940000000
  %2638 = fmul fast float %2637, %2625
  %2639 = fadd fast float %2638, 0x41CFBF8940000000
  %2640 = fptosi float %2639 to i32
  %2641 = bitcast i32 %2640 to float
  %2642 = fmul fast float %2634, %2622
  %2643 = fmul fast float %2641, %2622
  %2644 = fsub fast float %2627, %2642
  %2645 = fadd fast float %2643, %2627
  %2646 = call float @dx.op.unary.f32(i32 7, float %2644)  ; Saturate(value)
  %2647 = call float @dx.op.unary.f32(i32 7, float %2645)  ; Saturate(value)
  %2648 = fsub fast float %2616, %2646
  %2649 = fsub fast float %2647, %2646
  %2650 = bitcast float %2649 to i32
  %2651 = sub nsw i32 2129859010, %2650
  %2652 = bitcast i32 %2651 to float
  %2653 = fmul fast float %2652, %2648
  %2654 = call float @dx.op.unary.f32(i32 7, float %2653)  ; Saturate(value)
  br label %2655

; <label>:2655                                    ; preds = %2609, %2604
  %2656 = phi float [ %2654, %2609 ], [ %431, %2604 ]
  %2657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2498, i32 undef)  ; BufferLoad(srv,index,wot)
  %2658 = extractvalue %dx.types.ResRet.i32 %2657, 0
  %2659 = and i32 %2658, 128
  %2660 = icmp eq i32 %2659, 0
  br i1 %2660, label %2677, label %2661

; <label>:2661                                    ; preds = %2655
  %2662 = add i32 %28, 420
  %2663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2662, i32 undef)  ; BufferLoad(srv,index,wot)
  %2664 = extractvalue %dx.types.ResRet.i32 %2663, 0
  %2665 = add i32 %2664, 0
  %2666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2665, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2667 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2666, %dx.types.Handle %68, float %2605, float %2606, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2668 = extractvalue %dx.types.ResRet.f32 %2667, 0
  %2669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2498, i32 undef)  ; BufferLoad(srv,index,wot)
  %2670 = extractvalue %dx.types.ResRet.i32 %2669, 0
  %2671 = and i32 %2670, 524288
  %2672 = icmp ne i32 %2671, 0
  %2673 = fcmp fast ogt float %2668, 0x3FE0101020000000
  %2674 = select i1 %2673, float 1.000000e+00, float 0.000000e+00
  %2675 = select i1 %2672, float %2674, float %2668
  %2676 = fmul fast float %2675, %2656
  br label %2677

; <label>:2677                                    ; preds = %2661, %2655
  %2678 = phi float [ %2676, %2661 ], [ %2656, %2655 ]
  %2679 = fcmp fast ult float %2678, 0x3F70101020000000
  br i1 %2679, label %3258, label %2680

; <label>:2680                                    ; preds = %2677
  %2681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2498, i32 undef)  ; BufferLoad(srv,index,wot)
  %2682 = extractvalue %dx.types.ResRet.i32 %2681, 0
  %2683 = and i32 %2682, 16
  %2684 = icmp eq i32 %2683, 0
  br i1 %2684, label %2883, label %2685

; <label>:2685                                    ; preds = %2680
  %2686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2687 = extractvalue %dx.types.ResRet.i32 %2686, 0
  %2688 = add i32 %28, 372
  %2689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2688, i32 undef)  ; BufferLoad(srv,index,wot)
  %2690 = extractvalue %dx.types.ResRet.i32 %2689, 0
  %2691 = add i32 %2690, 0
  %2692 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2691, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2693 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2692, %dx.types.Handle %67, float %2605, float %2606, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2694 = extractvalue %dx.types.ResRet.f32 %2693, 0
  %2695 = extractvalue %dx.types.ResRet.f32 %2693, 1
  %2696 = extractvalue %dx.types.ResRet.f32 %2693, 2
  %2697 = extractvalue %dx.types.ResRet.f32 %2693, 3
  %2698 = and i32 %2687, 255
  %2699 = uitofp i32 %2698 to float
  %2700 = lshr i32 %2687, 8
  %2701 = and i32 %2700, 255
  %2702 = uitofp i32 %2701 to float
  %2703 = fmul fast float %2697, %2699
  %2704 = fadd fast float %2703, %2702
  %2705 = fmul fast float %2704, 0x3F70101000000000
  %2706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2498, i32 undef)  ; BufferLoad(srv,index,wot)
  %2707 = extractvalue %dx.types.ResRet.i32 %2706, 0
  %2708 = and i32 %2707, 512
  %2709 = icmp eq i32 %2708, 0
  br i1 %2709, label %2718, label %2710

; <label>:2710                                    ; preds = %2685
  %2711 = add i32 %28, 452
  %2712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.i32 %2712, 0
  %2714 = add i32 %2713, 0
  %2715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2714, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2716 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2715, %dx.types.Handle %68, float %2605, float %2606, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2717 = extractvalue %dx.types.ResRet.f32 %2716, 0
  br label %2718

; <label>:2718                                    ; preds = %2710, %2685
  %2719 = phi float [ %2717, %2710 ], [ 1.000000e+00, %2685 ]
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2498, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = and i32 %2721, 33554432
  %2723 = icmp eq i32 %2722, 0
  br i1 %2723, label %2830, label %2724

; <label>:2724                                    ; preds = %2718
  %2725 = add i32 %28, 272
  %2726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2727 = extractvalue %dx.types.ResRet.i32 %2726, 0
  %2728 = and i32 %2727, 65535
  %2729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2728)  ; LegacyF16ToF32(value)
  %2730 = lshr i32 %2727, 16
  %2731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2730)  ; LegacyF16ToF32(value)
  %2732 = add i32 %28, 276
  %2733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2734 = extractvalue %dx.types.ResRet.i32 %2733, 0
  %2735 = and i32 %2734, 65535
  %2736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2735)  ; LegacyF16ToF32(value)
  %2737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.i32 %2737, 0
  %2739 = lshr i32 %2738, 24
  %2740 = uitofp i32 %2739 to float
  %2741 = fmul fast float %2740, 0x3F70101020000000
  %2742 = and i32 %2738, 255
  %2743 = uitofp i32 %2742 to float
  %2744 = fmul fast float %2743, 0x3F70101020000000
  %2745 = lshr i32 %2738, 8
  %2746 = and i32 %2745, 255
  %2747 = uitofp i32 %2746 to float
  %2748 = fmul fast float %2747, 0x3F70101020000000
  %2749 = lshr i32 %2738, 16
  %2750 = and i32 %2749, 255
  %2751 = uitofp i32 %2750 to float
  %2752 = fmul fast float %2751, 0x3F70101020000000
  %2753 = add i32 %28, 268
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = lshr i32 %2755, 24
  %2757 = uitofp i32 %2756 to float
  %2758 = fmul fast float %2757, 0x3F70101020000000
  %2759 = and i32 %2755, 255
  %2760 = uitofp i32 %2759 to float
  %2761 = fmul fast float %2760, 0x3F70101020000000
  %2762 = lshr i32 %2755, 8
  %2763 = and i32 %2762, 255
  %2764 = uitofp i32 %2763 to float
  %2765 = fmul fast float %2764, 0x3F70101020000000
  %2766 = lshr i32 %2755, 16
  %2767 = and i32 %2766, 255
  %2768 = uitofp i32 %2767 to float
  %2769 = fmul fast float %2768, 0x3F70101020000000
  %2770 = bitcast float %2694 to i32
  %2771 = ashr i32 %2770, 1
  %2772 = sub nsw i32 1597463174, %2771
  %2773 = bitcast i32 %2772 to float
  %2774 = fmul fast float %2694, 5.000000e-01
  %2775 = fmul fast float %2773, %2773
  %2776 = fmul fast float %2775, %2774
  %2777 = fsub fast float 1.500000e+00, %2776
  %2778 = fmul fast float %2773, %2694
  %2779 = fmul fast float %2778, %2777
  %2780 = bitcast float %2695 to i32
  %2781 = ashr i32 %2780, 1
  %2782 = sub nsw i32 1597463174, %2781
  %2783 = bitcast i32 %2782 to float
  %2784 = fmul fast float %2695, 5.000000e-01
  %2785 = fmul fast float %2783, %2783
  %2786 = fmul fast float %2785, %2784
  %2787 = fsub fast float 1.500000e+00, %2786
  %2788 = fmul fast float %2783, %2695
  %2789 = fmul fast float %2788, %2787
  %2790 = bitcast float %2696 to i32
  %2791 = ashr i32 %2790, 1
  %2792 = sub nsw i32 1597463174, %2791
  %2793 = bitcast i32 %2792 to float
  %2794 = fmul fast float %2696, 5.000000e-01
  %2795 = fmul fast float %2793, %2793
  %2796 = fmul fast float %2795, %2794
  %2797 = fsub fast float 1.500000e+00, %2796
  %2798 = fmul fast float %2793, %2696
  %2799 = fmul fast float %2798, %2797
  %2800 = fsub fast float %2779, %2761
  %2801 = fsub fast float %2789, %2765
  %2802 = fsub fast float %2799, %2769
  %2803 = fmul fast float %2800, %2729
  %2804 = fmul fast float %2801, %2731
  %2805 = fmul fast float %2802, %2736
  %2806 = fadd fast float %2803, %2744
  %2807 = fadd fast float %2804, %2748
  %2808 = fadd fast float %2805, %2752
  %2809 = call float @dx.op.unary.f32(i32 7, float %2806)  ; Saturate(value)
  %2810 = call float @dx.op.unary.f32(i32 7, float %2807)  ; Saturate(value)
  %2811 = call float @dx.op.unary.f32(i32 7, float %2808)  ; Saturate(value)
  %2812 = fmul fast float %2809, %2809
  %2813 = fmul fast float %2810, %2810
  %2814 = fmul fast float %2811, %2811
  %2815 = fsub fast float %2812, %2694
  %2816 = fsub fast float %2813, %2695
  %2817 = fsub fast float %2814, %2696
  %2818 = fmul fast float %2815, %2719
  %2819 = fmul fast float %2816, %2719
  %2820 = fmul fast float %2817, %2719
  %2821 = fadd fast float %2818, %2694
  %2822 = fadd fast float %2819, %2695
  %2823 = fadd fast float %2820, %2696
  %2824 = fadd fast float %2741, %2705
  %2825 = fsub fast float %2824, %2758
  %2826 = call float @dx.op.unary.f32(i32 7, float %2825)  ; Saturate(value)
  %2827 = fsub fast float %2826, %2705
  %2828 = fmul fast float %2827, %2719
  %2829 = fadd fast float %2828, %2705
  br label %2883

; <label>:2830                                    ; preds = %2718
  %2831 = and i32 %2721, 134217728
  %2832 = icmp eq i32 %2831, 0
  br i1 %2832, label %2867, label %2833

; <label>:2833                                    ; preds = %2830
  %2834 = call float @dx.op.unary.f32(i32 24, float %352)  ; Sqrt(value)
  %2835 = call float @dx.op.unary.f32(i32 24, float %356)  ; Sqrt(value)
  %2836 = call float @dx.op.unary.f32(i32 24, float %360)  ; Sqrt(value)
  %2837 = fadd fast float %2834, -5.000000e-01
  %2838 = fadd fast float %2835, -5.000000e-01
  %2839 = fadd fast float %2836, -5.000000e-01
  %2840 = fmul fast float %2837, %2719
  %2841 = fmul fast float %2838, %2719
  %2842 = fmul fast float %2839, %2719
  %2843 = fadd fast float %2840, 5.000000e-01
  %2844 = fadd fast float %2841, 5.000000e-01
  %2845 = fadd fast float %2842, 5.000000e-01
  %2846 = call float @dx.op.unary.f32(i32 24, float %2694)  ; Sqrt(value)
  %2847 = call float @dx.op.unary.f32(i32 24, float %2695)  ; Sqrt(value)
  %2848 = call float @dx.op.unary.f32(i32 24, float %2696)  ; Sqrt(value)
  %2849 = fmul fast float %2843, 2.000000e+00
  %2850 = fsub fast float 1.000000e+00, %2849
  %2851 = fmul fast float %2850, %2846
  %2852 = fadd fast float %2851, %2849
  %2853 = fmul fast float %2852, %2846
  %2854 = fmul fast float %2844, 2.000000e+00
  %2855 = fsub fast float 1.000000e+00, %2854
  %2856 = fmul fast float %2855, %2847
  %2857 = fadd fast float %2856, %2854
  %2858 = fmul fast float %2857, %2847
  %2859 = fmul fast float %2845, 2.000000e+00
  %2860 = fsub fast float 1.000000e+00, %2859
  %2861 = fmul fast float %2860, %2848
  %2862 = fadd fast float %2861, %2859
  %2863 = fmul fast float %2862, %2848
  %2864 = fmul fast float %2853, %2853
  %2865 = fmul fast float %2858, %2858
  %2866 = fmul fast float %2863, %2863
  br label %2883

; <label>:2867                                    ; preds = %2830
  %2868 = fmul fast float %352, %352
  %2869 = fmul fast float %356, %356
  %2870 = fmul fast float %360, %360
  %2871 = fadd fast float %2868, -1.000000e+00
  %2872 = fadd fast float %2869, -1.000000e+00
  %2873 = fadd fast float %2870, -1.000000e+00
  %2874 = fmul fast float %2719, %2871
  %2875 = fmul fast float %2719, %2872
  %2876 = fmul fast float %2719, %2873
  %2877 = fadd fast float %2874, 1.000000e+00
  %2878 = fadd fast float %2875, 1.000000e+00
  %2879 = fadd fast float %2876, 1.000000e+00
  %2880 = fmul fast float %2877, %2694
  %2881 = fmul fast float %2878, %2695
  %2882 = fmul fast float %2879, %2696
  br label %2883

; <label>:2883                                    ; preds = %2867, %2833, %2724, %2680
  %2884 = phi float [ %2829, %2724 ], [ %2705, %2833 ], [ %2705, %2867 ], [ 0x3FA23C0BE0000000, %2680 ]
  %2885 = phi float [ %2821, %2724 ], [ %2864, %2833 ], [ %2880, %2867 ], [ 1.000000e+00, %2680 ]
  %2886 = phi float [ %2822, %2724 ], [ %2865, %2833 ], [ %2881, %2867 ], [ 1.000000e+00, %2680 ]
  %2887 = phi float [ %2823, %2724 ], [ %2866, %2833 ], [ %2882, %2867 ], [ 1.000000e+00, %2680 ]
  %2888 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2889 = extractvalue %dx.types.CBufRet.i32 %2888, 1
  %2890 = and i32 %2889, 1
  %2891 = icmp ne i32 %2890, 0
  %2892 = add i32 %28, 356
  %2893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2892, i32 undef)  ; BufferLoad(srv,index,wot)
  %2894 = extractvalue %dx.types.ResRet.i32 %2893, 0
  %2895 = and i32 %2894, 32
  %2896 = icmp ne i32 %2895, 0
  %2897 = and i1 %2891, %2896
  %2898 = select i1 %2897, float 1.000000e+00, float %2885
  %2899 = select i1 %2897, float 0x3FD3333340000000, float %2886
  %2900 = select i1 %2897, float 0x3FD3333340000000, float %2887
  %2901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2498, i32 undef)  ; BufferLoad(srv,index,wot)
  %2902 = extractvalue %dx.types.ResRet.i32 %2901, 0
  %2903 = and i32 %2902, 32
  %2904 = icmp eq i32 %2903, 0
  br i1 %2904, label %2977, label %2905

; <label>:2905                                    ; preds = %2883
  %2906 = add i32 %28, 140
  %2907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2906, i32 undef)  ; BufferLoad(srv,index,wot)
  %2908 = extractvalue %dx.types.ResRet.i32 %2907, 0
  %2909 = add i32 %28, 388
  %2910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2909, i32 undef)  ; BufferLoad(srv,index,wot)
  %2911 = extractvalue %dx.types.ResRet.i32 %2910, 0
  %2912 = add i32 %2911, 0
  %2913 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2912, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2914 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2913, %dx.types.Handle %67, float %2605, float %2606, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2915 = extractvalue %dx.types.ResRet.f32 %2914, 0
  %2916 = extractvalue %dx.types.ResRet.f32 %2914, 1
  %2917 = extractvalue %dx.types.ResRet.f32 %2914, 2
  %2918 = extractvalue %dx.types.ResRet.f32 %2914, 3
  %2919 = and i32 %2908, 255
  %2920 = uitofp i32 %2919 to float
  %2921 = lshr i32 %2908, 8
  %2922 = and i32 %2921, 255
  %2923 = uitofp i32 %2922 to float
  %2924 = lshr i32 %2908, 16
  %2925 = and i32 %2924, 255
  %2926 = uitofp i32 %2925 to float
  %2927 = fmul fast float %2926, 0x3F70101000000000
  %2928 = fmul fast float %2915, %2920
  %2929 = fadd fast float %2928, %2923
  %2930 = fmul fast float %2929, 0x3F70101000000000
  %2931 = fadd fast float %2916, -5.000000e-01
  %2932 = fadd fast float %2918, -5.000000e-01
  %2933 = fmul fast float %2931, %2927
  %2934 = fmul fast float %2932, %2927
  %2935 = fadd fast float %2933, 5.000000e-01
  %2936 = fadd fast float %2934, 5.000000e-01
  %2937 = fmul fast float %2935, 2.000000e+00
  %2938 = fadd fast float %2937, -1.000000e+00
  %2939 = fmul fast float %2936, 2.000000e+00
  %2940 = fadd fast float %2939, -1.000000e+00
  %2941 = fadd fast float %2938, %2940
  %2942 = fmul fast float %2941, 5.000000e-01
  %2943 = fsub fast float %2938, %2940
  %2944 = fmul fast float %2943, 5.000000e-01
  %2945 = call float @dx.op.unary.f32(i32 6, float %2942)  ; FAbs(value)
  %2946 = fsub fast float 1.000000e+00, %2945
  %2947 = call float @dx.op.unary.f32(i32 6, float %2944)  ; FAbs(value)
  %2948 = fsub fast float %2946, %2947
  %2949 = call float @dx.op.dot3.f32(i32 55, float %2942, float %2944, float %2948, float %2942, float %2944, float %2948)  ; Dot3(ax,ay,az,bx,by,bz)
  %2950 = call float @dx.op.unary.f32(i32 25, float %2949)  ; Rsqrt(value)
  %2951 = fmul fast float %2942, %2950
  %2952 = fmul fast float %2944, %2950
  %2953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2498, i32 undef)  ; BufferLoad(srv,index,wot)
  %2954 = extractvalue %dx.types.ResRet.i32 %2953, 0
  %2955 = and i32 %2954, 67108864
  %2956 = icmp eq i32 %2955, 0
  br i1 %2956, label %2973, label %2957

; <label>:2957                                    ; preds = %2905
  %2958 = add i32 %28, 328
  %2959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2958, i32 undef)  ; BufferLoad(srv,index,wot)
  %2960 = extractvalue %dx.types.ResRet.i32 %2959, 0
  %2961 = and i32 %2960, 65535
  %2962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2961)  ; LegacyF16ToF32(value)
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = and i32 %2964, 65535
  %2966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2965)  ; LegacyF16ToF32(value)
  %2967 = lshr i32 %2960, 16
  %2968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2967)  ; LegacyF16ToF32(value)
  %2969 = fsub fast float %2930, %2968
  %2970 = fmul fast float %2969, %2962
  %2971 = fadd fast float %2970, %2966
  %2972 = call float @dx.op.unary.f32(i32 7, float %2971)  ; Saturate(value)
  br label %2973

; <label>:2973                                    ; preds = %2957, %2905
  %2974 = phi float [ %2972, %2957 ], [ %2930, %2905 ]
  %2975 = call float @dx.op.dot2.f32(i32 54, float %2951, float %2952, float %2509, float %2510)  ; Dot2(ax,ay,bx,by)
  %2976 = call float @dx.op.dot2.f32(i32 54, float %2951, float %2952, float %2511, float %2512)  ; Dot2(ax,ay,bx,by)
  br label %2977

; <label>:2977                                    ; preds = %2973, %2883
  %2978 = phi float [ %2974, %2973 ], [ 0x3FD6666660000000, %2883 ]
  %2979 = phi float [ %2975, %2973 ], [ 0.000000e+00, %2883 ]
  %2980 = phi float [ %2976, %2973 ], [ 0.000000e+00, %2883 ]
  %2981 = phi float [ %2917, %2973 ], [ 1.000000e+00, %2883 ]
  %2982 = add i32 %28, 208
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = lshr i32 %2984, 22
  %2986 = shl nuw nsw i32 %2985, 5
  %2987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2986)  ; LegacyF16ToF32(value)
  %2988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2498, i32 undef)  ; BufferLoad(srv,index,wot)
  %2989 = extractvalue %dx.types.ResRet.i32 %2988, 0
  %2990 = and i32 %2989, 64
  %2991 = icmp eq i32 %2990, 0
  br i1 %2991, label %3025, label %2992

; <label>:2992                                    ; preds = %2977
  %2993 = add i32 %28, 404
  %2994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.i32 %2994, 0
  %2996 = add i32 %2995, 0
  %2997 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2996, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2498, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.i32 %2998, 0
  %3000 = and i32 %2999, 131072
  %3001 = icmp eq i32 %3000, 0
  %3002 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2997, %dx.types.Handle %67, float %2605, float %2606, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3003 = extractvalue %dx.types.ResRet.f32 %3002, 0
  %3004 = extractvalue %dx.types.ResRet.f32 %3002, 1
  %3005 = extractvalue %dx.types.ResRet.f32 %3002, 2
  %3006 = fmul fast float %3003, %340
  %3007 = fmul fast float %3004, %343
  %3008 = fmul fast float %3005, %346
  br i1 %3001, label %3015, label %3009

; <label>:3009                                    ; preds = %2992
  %3010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3011 = extractvalue %dx.types.CBufRet.f32 %3010, 0
  %3012 = fmul fast float %3011, %3006
  %3013 = fmul fast float %3011, %3007
  %3014 = fmul fast float %3011, %3008
  br label %3015

; <label>:3015                                    ; preds = %3009, %2992
  %3016 = phi float [ %3012, %3009 ], [ %3006, %2992 ]
  %3017 = phi float [ %3013, %3009 ], [ %3007, %2992 ]
  %3018 = phi float [ %3014, %3009 ], [ %3008, %2992 ]
  %3019 = fmul fast float %3016, %2987
  %3020 = select i1 %197, float %3019, float %3016
  %3021 = call float @dx.op.dot3.f32(i32 55, float %3020, float %3017, float %3018, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3022 = select i1 %197, float 0.000000e+00, float %3016
  %3023 = select i1 %197, float %3021, float %3017
  %3024 = select i1 %197, float 0.000000e+00, float %3018
  br label %3025

; <label>:3025                                    ; preds = %3015, %2977
  %3026 = phi float [ %3022, %3015 ], [ 0.000000e+00, %2977 ]
  %3027 = phi float [ %3023, %3015 ], [ 0.000000e+00, %2977 ]
  %3028 = phi float [ %3024, %3015 ], [ 0.000000e+00, %2977 ]
  %3029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3030 = extractvalue %dx.types.ResRet.i32 %3029, 0
  %3031 = and i32 %3030, 4096
  %3032 = icmp eq i32 %3031, 0
  br i1 %3032, label %3053, label %3033

; <label>:3033                                    ; preds = %3025
  %3034 = and i32 %3030, 1048576
  %3035 = icmp ne i32 %3034, 0
  %3036 = add i32 %28, 468
  %3037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3036, i32 undef)  ; BufferLoad(srv,index,wot)
  %3038 = extractvalue %dx.types.ResRet.i32 %3037, 0
  %3039 = add i32 %3038, 0
  %3040 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3039, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3041 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3040, %dx.types.Handle %68, float %2605, float %2606, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3042 = extractvalue %dx.types.ResRet.f32 %3041, 2
  %3043 = select i1 %3035, float 1.000000e+00, float %3042
  %3044 = add i32 %28, 212
  %3045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3044, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.i32 %3045, 0
  %3047 = and i32 %3046, 65535
  %3048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3047)  ; LegacyF16ToF32(value)
  %3049 = lshr i32 %3046, 16
  %3050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3049)  ; LegacyF16ToF32(value)
  %3051 = fmul fast float %3048, %3043
  %3052 = fadd fast float %3051, %3050
  br label %3053

; <label>:3053                                    ; preds = %3033, %3025
  %3054 = phi float [ %3052, %3033 ], [ 0.000000e+00, %3025 ]
  %3055 = add i32 %28, 144
  %3056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3057 = extractvalue %dx.types.ResRet.i32 %3056, 0
  %3058 = and i32 %3057, 255
  %3059 = uitofp i32 %3058 to float
  %3060 = lshr i32 %3057, 8
  %3061 = and i32 %3060, 255
  %3062 = uitofp i32 %3061 to float
  %3063 = call float @dx.op.dot3.f32(i32 55, float %2898, float %2899, float %2900, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3064 = fmul fast float %3062, %3063
  %3065 = fadd fast float %3064, %3059
  %3066 = fmul fast float %3065, 0x3F70101020000000
  %3067 = call float @dx.op.unary.f32(i32 7, float %3066)  ; Saturate(value)
  br i1 %2497, label %3068, label %3076

; <label>:3068                                    ; preds = %3053
  %3069 = fsub fast float 1.000000e+00, %2678
  %3070 = fmul fast float %3069, %2485
  %3071 = fmul fast float %3069, %2486
  %3072 = fmul fast float %3069, %2487
  %3073 = fmul fast float %3069, %2488
  %3074 = fmul fast float %3069, %2489
  %3075 = fmul fast float %3069, %2490
  br label %3076

; <label>:3076                                    ; preds = %3068, %3053
  %3077 = phi float [ %3070, %3068 ], [ %2485, %3053 ]
  %3078 = phi float [ %3071, %3068 ], [ %2486, %3053 ]
  %3079 = phi float [ %3072, %3068 ], [ %2487, %3053 ]
  %3080 = phi float [ %3073, %3068 ], [ %2488, %3053 ]
  %3081 = phi float [ %3074, %3068 ], [ %2489, %3053 ]
  %3082 = phi float [ %3075, %3068 ], [ %2490, %3053 ]
  %3083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.i32 %3083, 0
  %3085 = and i32 %3084, 3
  %3086 = icmp eq i32 %3085, 3
  br i1 %3086, label %3165, label %3087

; <label>:3087                                    ; preds = %3076
  %3088 = and i32 %3084, 16
  %3089 = icmp ne i32 %3088, 0
  %3090 = select i1 %3089, float %2678, float 0.000000e+00
  %3091 = icmp eq i32 %3085, 0
  br i1 %3091, label %3092, label %3120

; <label>:3092                                    ; preds = %3087
  %3093 = and i32 %3084, 64
  %3094 = icmp ne i32 %3093, 0
  %3095 = select i1 %3094, float %2678, float 0.000000e+00
  %3096 = fsub fast float %2898, %3077
  %3097 = fsub fast float %2899, %3078
  %3098 = fsub fast float %2900, %3079
  %3099 = fmul fast float %3090, %3096
  %3100 = fmul fast float %3090, %3097
  %3101 = fmul fast float %3090, %3098
  %3102 = fadd fast float %3099, %3077
  %3103 = fadd fast float %3100, %3078
  %3104 = fadd fast float %3101, %3079
  %3105 = fsub fast float %2884, %2491
  %3106 = fmul fast float %3090, %3105
  %3107 = fadd fast float %3106, %2491
  %3108 = fsub fast float %3026, %3080
  %3109 = fsub fast float %3027, %3081
  %3110 = fsub fast float %3028, %3082
  %3111 = fmul fast float %3095, %3108
  %3112 = fmul fast float %3095, %3109
  %3113 = fmul fast float %3095, %3110
  %3114 = fadd fast float %3111, %3080
  %3115 = fadd fast float %3112, %3081
  %3116 = fadd fast float %3113, %3082
  %3117 = fsub fast float %3067, %2495
  %3118 = fmul fast float %3090, %3117
  %3119 = fadd fast float %3118, %2495
  br label %3165

; <label>:3120                                    ; preds = %3087
  %3121 = icmp eq i32 %3085, 1
  br i1 %3121, label %3122, label %3135

; <label>:3122                                    ; preds = %3120
  %3123 = fadd fast float %2898, -1.000000e+00
  %3124 = fadd fast float %2899, -1.000000e+00
  %3125 = fadd fast float %2900, -1.000000e+00
  %3126 = fmul fast float %3090, %3123
  %3127 = fmul fast float %3090, %3124
  %3128 = fmul fast float %3090, %3125
  %3129 = fadd fast float %3126, 1.000000e+00
  %3130 = fadd fast float %3127, 1.000000e+00
  %3131 = fadd fast float %3128, 1.000000e+00
  %3132 = fmul fast float %3129, %3077
  %3133 = fmul fast float %3130, %3078
  %3134 = fmul fast float %3131, %3079
  br label %3165

; <label>:3135                                    ; preds = %3120
  %3136 = icmp eq i32 %3085, 2
  br i1 %3136, label %3137, label %3165

; <label>:3137                                    ; preds = %3135
  %3138 = call float @dx.op.unary.f32(i32 24, float %2898)  ; Sqrt(value)
  %3139 = call float @dx.op.unary.f32(i32 24, float %2899)  ; Sqrt(value)
  %3140 = call float @dx.op.unary.f32(i32 24, float %2900)  ; Sqrt(value)
  %3141 = fadd fast float %3138, -5.000000e-01
  %3142 = fadd fast float %3139, -5.000000e-01
  %3143 = fadd fast float %3140, -5.000000e-01
  %3144 = fmul fast float %3141, %3090
  %3145 = fmul fast float %3142, %3090
  %3146 = fmul fast float %3143, %3090
  %3147 = fadd fast float %3144, 5.000000e-01
  %3148 = fadd fast float %3145, 5.000000e-01
  %3149 = fadd fast float %3146, 5.000000e-01
  %3150 = fmul fast float %3147, 2.000000e+00
  %3151 = fsub fast float 1.000000e+00, %3150
  %3152 = fmul fast float %3151, %3077
  %3153 = fadd fast float %3152, %3150
  %3154 = fmul fast float %3153, %3077
  %3155 = fmul fast float %3148, 2.000000e+00
  %3156 = fsub fast float 1.000000e+00, %3155
  %3157 = fmul fast float %3156, %3078
  %3158 = fadd fast float %3157, %3155
  %3159 = fmul fast float %3158, %3078
  %3160 = fmul fast float %3149, 2.000000e+00
  %3161 = fsub fast float 1.000000e+00, %3160
  %3162 = fmul fast float %3161, %3079
  %3163 = fadd fast float %3162, %3160
  %3164 = fmul fast float %3163, %3079
  br label %3165

; <label>:3165                                    ; preds = %3137, %3135, %3122, %3092, %3076
  %3166 = phi float [ %3077, %3076 ], [ %3154, %3137 ], [ %3077, %3135 ], [ %3132, %3122 ], [ %3102, %3092 ]
  %3167 = phi float [ %3078, %3076 ], [ %3159, %3137 ], [ %3078, %3135 ], [ %3133, %3122 ], [ %3103, %3092 ]
  %3168 = phi float [ %3079, %3076 ], [ %3164, %3137 ], [ %3079, %3135 ], [ %3134, %3122 ], [ %3104, %3092 ]
  %3169 = phi float [ %3080, %3076 ], [ %3080, %3137 ], [ %3080, %3135 ], [ %3080, %3122 ], [ %3114, %3092 ]
  %3170 = phi float [ %3081, %3076 ], [ %3081, %3137 ], [ %3081, %3135 ], [ %3081, %3122 ], [ %3115, %3092 ]
  %3171 = phi float [ %3082, %3076 ], [ %3082, %3137 ], [ %3082, %3135 ], [ %3082, %3122 ], [ %3116, %3092 ]
  %3172 = phi float [ %2491, %3076 ], [ %2491, %3137 ], [ %2491, %3135 ], [ %2491, %3122 ], [ %3107, %3092 ]
  %3173 = phi float [ %2495, %3076 ], [ %2495, %3137 ], [ %2495, %3135 ], [ %2495, %3122 ], [ %3119, %3092 ]
  %3174 = and i32 %3084, 12
  %3175 = icmp eq i32 %3174, 12
  br i1 %3175, label %3258, label %3176

; <label>:3176                                    ; preds = %3165
  %3177 = and i32 %3084, 2097184
  %3178 = icmp eq i32 %3177, 2097184
  %3179 = select i1 %3178, float %2678, float 0.000000e+00
  %3180 = and i32 %3084, 4194336
  %3181 = icmp eq i32 %3180, 4194336
  %3182 = select i1 %3181, float %2678, float 0.000000e+00
  %3183 = and i32 %3084, 8388640
  %3184 = icmp eq i32 %3183, 8388640
  %3185 = select i1 %3184, float %2678, float 0.000000e+00
  %3186 = and i32 %3084, 4096
  %3187 = icmp ne i32 %3186, 0
  %3188 = select i1 %3187, float %2678, float 0.000000e+00
  %3189 = icmp eq i32 %3174, 0
  br i1 %3189, label %3190, label %3206

; <label>:3190                                    ; preds = %3176
  %3191 = fsub fast float %2979, %2483
  %3192 = fsub fast float %2980, %2484
  %3193 = fmul fast float %3179, %3191
  %3194 = fmul fast float %3179, %3192
  %3195 = fadd fast float %3193, %2483
  %3196 = fadd fast float %3194, %2484
  %3197 = fsub fast float %2981, %2493
  %3198 = fmul fast float %3182, %3197
  %3199 = fadd fast float %3198, %2493
  %3200 = fsub fast float %2978, %2492
  %3201 = fmul fast float %3185, %3200
  %3202 = fadd fast float %3201, %2492
  %3203 = fsub fast float %3054, %2494
  %3204 = fmul fast float %3188, %3203
  %3205 = fadd fast float %3204, %2494
  br label %3258

; <label>:3206                                    ; preds = %3176
  %3207 = icmp eq i32 %3174, 4
  br i1 %3207, label %3208, label %3242

; <label>:3208                                    ; preds = %3206
  %3209 = fmul fast float %3179, %2979
  %3210 = fmul fast float %3179, %2980
  %3211 = fadd fast float %3209, %2483
  %3212 = fadd fast float %3210, %2484
  %3213 = call float @dx.op.binary.f32(i32 36, float %2493, float %2981)  ; FMin(a,b)
  %3214 = fsub fast float %3213, %2493
  %3215 = fmul fast float %3214, %3182
  %3216 = fadd fast float %3215, %2493
  %3217 = fadd fast float %2978, %2492
  %3218 = fmul fast float %3217, 0x3FF337FAE0000000
  %3219 = fmul fast float %2492, %2492
  %3220 = fmul fast float %2978, %2978
  %3221 = fadd fast float %3220, %3219
  %3222 = fmul fast float %3221, 0x3FE5152B00000000
  %3223 = fmul fast float %2492, 0xBFCC1F85E0000000
  %3224 = fmul fast float %3223, %2978
  %3225 = fadd fast float %3224, 0xBFE1363700000000
  %3226 = fadd fast float %3225, %3218
  %3227 = fsub fast float %3226, %3222
  %3228 = fmul fast float %3217, 0x3FBA6F0D00000000
  %3229 = fmul fast float %3221, 0x3FD0432880000000
  %3230 = fmul fast float %2492, 0xBFEF110800000000
  %3231 = fmul fast float %3230, %2978
  %3232 = fadd fast float %3231, 1.000000e+00
  %3233 = fsub fast float %3232, %3228
  %3234 = fadd fast float %3233, %3229
  %3235 = fdiv fast float %3227, %3234
  %3236 = call float @dx.op.unary.f32(i32 7, float %3235)  ; Saturate(value)
  %3237 = fsub fast float %3236, %2492
  %3238 = fmul fast float %3237, %3185
  %3239 = fadd fast float %3238, %2492
  %3240 = fmul fast float %3188, %3054
  %3241 = fadd fast float %3240, %2494
  br label %3258

; <label>:3242                                    ; preds = %3206
  %3243 = icmp eq i32 %3174, 8
  br i1 %3243, label %3244, label %3258

; <label>:3244                                    ; preds = %3242
  %3245 = fmul fast float %3179, %2979
  %3246 = fmul fast float %3179, %2980
  %3247 = fadd fast float %3245, %2483
  %3248 = fadd fast float %3246, %2484
  %3249 = call float @dx.op.binary.f32(i32 36, float %2493, float %2981)  ; FMin(a,b)
  %3250 = fsub fast float %3249, %2493
  %3251 = fmul fast float %3250, %3182
  %3252 = fadd fast float %3251, %2493
  %3253 = fsub fast float %2978, %2492
  %3254 = fmul fast float %3185, %3253
  %3255 = fadd fast float %3254, %2492
  %3256 = fmul fast float %3188, %3054
  %3257 = fadd fast float %3256, %2494
  br label %3258

; <label>:3258                                    ; preds = %3244, %3242, %3208, %3190, %3165, %2677, %2496, %2482
  %3259 = phi float [ %2483, %3165 ], [ %2483, %2677 ], [ %2483, %2482 ], [ %2483, %2496 ], [ %3195, %3190 ], [ %3211, %3208 ], [ %2483, %3242 ], [ %3247, %3244 ]
  %3260 = phi float [ %2484, %3165 ], [ %2484, %2677 ], [ %2484, %2482 ], [ %2484, %2496 ], [ %3196, %3190 ], [ %3212, %3208 ], [ %2484, %3242 ], [ %3248, %3244 ]
  %3261 = phi float [ %3166, %3165 ], [ %2485, %2677 ], [ %2485, %2482 ], [ %2485, %2496 ], [ %3166, %3190 ], [ %3166, %3208 ], [ %3166, %3242 ], [ %3166, %3244 ]
  %3262 = phi float [ %3167, %3165 ], [ %2486, %2677 ], [ %2486, %2482 ], [ %2486, %2496 ], [ %3167, %3190 ], [ %3167, %3208 ], [ %3167, %3242 ], [ %3167, %3244 ]
  %3263 = phi float [ %3168, %3165 ], [ %2487, %2677 ], [ %2487, %2482 ], [ %2487, %2496 ], [ %3168, %3190 ], [ %3168, %3208 ], [ %3168, %3242 ], [ %3168, %3244 ]
  %3264 = phi float [ %3169, %3165 ], [ %2488, %2677 ], [ %2488, %2482 ], [ %2488, %2496 ], [ %3169, %3190 ], [ %3169, %3208 ], [ %3169, %3242 ], [ %3169, %3244 ]
  %3265 = phi float [ %3170, %3165 ], [ %2489, %2677 ], [ %2489, %2482 ], [ %2489, %2496 ], [ %3170, %3190 ], [ %3170, %3208 ], [ %3170, %3242 ], [ %3170, %3244 ]
  %3266 = phi float [ %3171, %3165 ], [ %2490, %2677 ], [ %2490, %2482 ], [ %2490, %2496 ], [ %3171, %3190 ], [ %3171, %3208 ], [ %3171, %3242 ], [ %3171, %3244 ]
  %3267 = phi float [ %3172, %3165 ], [ %2491, %2677 ], [ %2491, %2482 ], [ %2491, %2496 ], [ %3172, %3190 ], [ %3172, %3208 ], [ %3172, %3242 ], [ %3172, %3244 ]
  %3268 = phi float [ %2492, %3165 ], [ %2492, %2677 ], [ %2492, %2482 ], [ %2492, %2496 ], [ %3202, %3190 ], [ %3239, %3208 ], [ %2492, %3242 ], [ %3255, %3244 ]
  %3269 = phi float [ %2493, %3165 ], [ %2493, %2677 ], [ %2493, %2482 ], [ %2493, %2496 ], [ %3199, %3190 ], [ %3216, %3208 ], [ %2493, %3242 ], [ %3252, %3244 ]
  %3270 = phi float [ %2494, %3165 ], [ %2494, %2677 ], [ %2494, %2482 ], [ %2494, %2496 ], [ %3205, %3190 ], [ %3241, %3208 ], [ %2494, %3242 ], [ %3257, %3244 ]
  %3271 = phi float [ %3173, %3165 ], [ %2495, %2677 ], [ %2495, %2482 ], [ %2495, %2496 ], [ %3173, %3190 ], [ %3173, %3208 ], [ %3173, %3242 ], [ %3173, %3244 ]
  %3272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3273 = extractvalue %dx.types.CBufRet.f32 %3272, 0
  %3274 = call float @dx.op.dot2.f32(i32 54, float %3259, float %3260, float %3259, float %3260)  ; Dot2(ax,ay,bx,by)
  %3275 = fmul fast float %3274, 0x3FE3333340000000
  %3276 = fsub fast float 1.000000e+00, %3275
  %3277 = call float @dx.op.dot3.f32(i32 55, float %3259, float %3260, float %3276, float %3259, float %3260, float %3276)  ; Dot3(ax,ay,az,bx,by,bz)
  %3278 = call float @dx.op.unary.f32(i32 25, float %3277)  ; Rsqrt(value)
  %3279 = fmul fast float %3278, %3259
  %3280 = fmul fast float %3278, %3260
  %3281 = fmul fast float %3276, %3278
  %3282 = fmul fast float %3281, %78
  %3283 = fmul fast float %3281, %79
  %3284 = fmul fast float %3281, %80
  %3285 = fmul fast float %3279, %52
  %3286 = fmul fast float %3279, %53
  %3287 = fmul fast float %3279, %54
  %3288 = fadd fast float %3282, %3285
  %3289 = fadd fast float %3283, %3286
  %3290 = fadd fast float %3284, %3287
  %3291 = fmul fast float %90, %3280
  %3292 = fmul fast float %91, %3280
  %3293 = fmul fast float %92, %3280
  %3294 = fadd fast float %3288, %3291
  %3295 = fadd fast float %3289, %3292
  %3296 = fadd fast float %3290, %3293
  %3297 = call float @dx.op.dot3.f32(i32 55, float %3294, float %3295, float %3296, float %3294, float %3295, float %3296)  ; Dot3(ax,ay,az,bx,by,bz)
  %3298 = call float @dx.op.unary.f32(i32 25, float %3297)  ; Rsqrt(value)
  %3299 = fmul fast float %3294, %3298
  %3300 = fmul fast float %3295, %3298
  %3301 = fmul fast float %3296, %3298
  %3302 = fadd fast float %3267, 0xBFB99999A0000000
  %3303 = call float @dx.op.unary.f32(i32 7, float %3302)  ; Saturate(value)
  %3304 = fmul fast float %3303, 0x3FF1C71C80000000
  %3305 = call float @dx.op.binary.f32(i32 36, float %3267, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3306 = fsub fast float 1.000000e+00, %3304
  %3307 = call float @dx.op.unary.f32(i32 7, float %3306)  ; Saturate(value)
  %3308 = fmul fast float %3307, %3261
  %3309 = fmul fast float %3307, %3262
  %3310 = fmul fast float %3307, %3263
  %3311 = call float @dx.op.unary.f32(i32 7, float %3308)  ; Saturate(value)
  %3312 = call float @dx.op.unary.f32(i32 7, float %3309)  ; Saturate(value)
  %3313 = call float @dx.op.unary.f32(i32 7, float %3310)  ; Saturate(value)
  %3314 = fmul fast float %3304, %3261
  %3315 = fmul fast float %3304, %3262
  %3316 = fmul fast float %3304, %3263
  %3317 = fadd fast float %3314, %3305
  %3318 = fadd fast float %3315, %3305
  %3319 = fadd fast float %3316, %3305
  %3320 = call float @dx.op.unary.f32(i32 7, float %3317)  ; Saturate(value)
  %3321 = call float @dx.op.unary.f32(i32 7, float %3318)  ; Saturate(value)
  %3322 = call float @dx.op.unary.f32(i32 7, float %3319)  ; Saturate(value)
  %3323 = call float @dx.op.unary.f32(i32 7, float %3268)  ; Saturate(value)
  %3324 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3325 = extractvalue %dx.types.CBufRet.i32 %3324, 3
  %3326 = and i32 %3325, 8
  %3327 = icmp ne i32 %3326, 0
  %3328 = call float @dx.op.binary.f32(i32 35, float %3311, float %3261)  ; FMax(a,b)
  %3329 = call float @dx.op.binary.f32(i32 35, float %3312, float %3261)  ; FMax(a,b)
  %3330 = call float @dx.op.binary.f32(i32 35, float %3313, float %3261)  ; FMax(a,b)
  %3331 = call float @dx.op.dot3.f32(i32 55, float %3311, float %3312, float %3313, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3332 = select i1 %197, float %3261, float %3311
  %3333 = select i1 %197, float %3331, float %3312
  %3334 = select i1 %197, float 1.000000e+00, float %3313
  %3335 = select i1 %3327, float %3328, float %3332
  %3336 = select i1 %3327, float %3329, float %3333
  %3337 = select i1 %3327, float %3330, float %3334
  %3338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3339 = extractvalue %dx.types.CBufRet.f32 %3338, 0
  %3340 = extractvalue %dx.types.CBufRet.f32 %3338, 1
  %3341 = extractvalue %dx.types.CBufRet.f32 %3338, 2
  %3342 = fadd fast float %3339, %158
  %3343 = fadd fast float %3340, %159
  %3344 = fadd fast float %3341, %160
  %3345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3346 = extractvalue %dx.types.CBufRet.f32 %3345, 0
  %3347 = extractvalue %dx.types.CBufRet.f32 %3345, 1
  %3348 = fsub fast float %3342, %3346
  %3349 = fsub fast float %3343, %3347
  %3350 = fmul fast float %3348, %3348
  %3351 = fmul fast float %3349, %3349
  %3352 = fadd fast float %3350, %3351
  %3353 = call float @dx.op.unary.f32(i32 24, float %3352)  ; Sqrt(value)
  %3354 = extractvalue %dx.types.CBufRet.f32 %3345, 2
  %3355 = fcmp fast olt float %3353, %3354
  br i1 %3355, label %3356, label %3423

; <label>:3356                                    ; preds = %3258
  %3357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3358 = extractvalue %dx.types.CBufRet.f32 %3357, 0
  %3359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3360 = extractvalue %dx.types.CBufRet.f32 %3359, 0
  %3361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3362 = extractvalue %dx.types.CBufRet.f32 %3361, 0
  %3363 = extractvalue %dx.types.CBufRet.f32 %3357, 1
  %3364 = extractvalue %dx.types.CBufRet.f32 %3359, 1
  %3365 = extractvalue %dx.types.CBufRet.f32 %3361, 1
  %3366 = extractvalue %dx.types.CBufRet.f32 %3357, 3
  %3367 = extractvalue %dx.types.CBufRet.f32 %3359, 3
  %3368 = extractvalue %dx.types.CBufRet.f32 %3361, 3
  %3369 = fadd fast float %3366, %3342
  %3370 = fadd fast float %3367, %3343
  %3371 = fadd fast float %3368, %3344
  %3372 = fmul fast float %3369, %3358
  %3373 = call float @dx.op.tertiary.f32(i32 46, float %3370, float %3360, float %3372)  ; FMad(a,b,c)
  %3374 = call float @dx.op.tertiary.f32(i32 46, float %3371, float %3362, float %3373)  ; FMad(a,b,c)
  %3375 = fmul fast float %3369, %3363
  %3376 = call float @dx.op.tertiary.f32(i32 46, float %3370, float %3364, float %3375)  ; FMad(a,b,c)
  %3377 = call float @dx.op.tertiary.f32(i32 46, float %3371, float %3365, float %3376)  ; FMad(a,b,c)
  %3378 = fsub fast float %3374, %3366
  %3379 = fsub fast float %3377, %3367
  %3380 = fsub fast float %3378, %3346
  %3381 = fadd fast float %3380, %3354
  %3382 = fsub fast float %3379, %3347
  %3383 = fadd fast float %3382, %3354
  %3384 = extractvalue %dx.types.CBufRet.f32 %3345, 3
  %3385 = fmul fast float %3381, %3384
  %3386 = fmul fast float %3383, %3384
  %3387 = call float @dx.op.unary.f32(i32 7, float %3385)  ; Saturate(value)
  %3388 = call float @dx.op.unary.f32(i32 7, float %3386)  ; Saturate(value)
  %3389 = fsub fast float 1.000000e+00, %3387
  %3390 = fsub fast float 1.000000e+00, %3388
  %3391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %3389, float %3390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3392 = extractvalue %dx.types.ResRet.f32 %3391, 0
  %3393 = fcmp fast ugt float %3392, 0.000000e+00
  br i1 %3393, label %3394, label %3697

; <label>:3394                                    ; preds = %3356
  %3395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3396 = extractvalue %dx.types.CBufRet.f32 %3395, 2
  %3397 = fmul fast float %3396, %3392
  %3398 = extractvalue %dx.types.CBufRet.f32 %3395, 3
  %3399 = fadd fast float %3398, %3397
  %3400 = extractvalue %dx.types.CBufRet.f32 %3361, 2
  %3401 = fadd fast float %3399, %3368
  %3402 = fmul fast float %3374, %3362
  %3403 = call float @dx.op.tertiary.f32(i32 46, float %3377, float %3365, float %3402)  ; FMad(a,b,c)
  %3404 = call float @dx.op.tertiary.f32(i32 46, float %3401, float %3400, float %3403)  ; FMad(a,b,c)
  %3405 = fsub fast float %3404, %3368
  %3406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3407 = extractvalue %dx.types.CBufRet.f32 %3406, 2
  %3408 = fsub fast float %3405, %3407
  %3409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %3389, float %3390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3410 = extractvalue %dx.types.ResRet.f32 %3409, 0
  %3411 = extractvalue %dx.types.ResRet.f32 %3409, 1
  %3412 = extractvalue %dx.types.ResRet.f32 %3409, 2
  %3413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %3389, float %3390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3414 = extractvalue %dx.types.ResRet.f32 %3413, 0
  %3415 = extractvalue %dx.types.ResRet.f32 %3413, 1
  %3416 = extractvalue %dx.types.ResRet.f32 %3413, 2
  %3417 = fadd fast float %3414, %3410
  %3418 = fmul fast float %3417, 0x3F847AE140000000
  %3419 = fadd fast float %3415, %3411
  %3420 = fmul fast float %3419, 0x3F847AE140000000
  %3421 = fadd fast float %3416, %3412
  %3422 = fmul fast float %3421, 0x3F847AE140000000
  br label %3697

; <label>:3423                                    ; preds = %3258
  %3424 = and i32 %176, 1
  %3425 = icmp eq i32 %3424, 0
  br i1 %3425, label %3697, label %3426

; <label>:3426                                    ; preds = %3423
  %3427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3428 = extractvalue %dx.types.CBufRet.f32 %3427, 0
  %3429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3430 = extractvalue %dx.types.CBufRet.f32 %3429, 0
  %3431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3432 = extractvalue %dx.types.CBufRet.f32 %3431, 0
  %3433 = extractvalue %dx.types.CBufRet.f32 %3427, 1
  %3434 = extractvalue %dx.types.CBufRet.f32 %3429, 1
  %3435 = extractvalue %dx.types.CBufRet.f32 %3431, 1
  %3436 = extractvalue %dx.types.CBufRet.f32 %3427, 3
  %3437 = extractvalue %dx.types.CBufRet.f32 %3429, 3
  %3438 = extractvalue %dx.types.CBufRet.f32 %3431, 3
  %3439 = fadd fast float %3436, %3342
  %3440 = fadd fast float %3437, %3343
  %3441 = fadd fast float %3438, %3344
  %3442 = fmul fast float %3439, %3428
  %3443 = call float @dx.op.tertiary.f32(i32 46, float %3440, float %3430, float %3442)  ; FMad(a,b,c)
  %3444 = call float @dx.op.tertiary.f32(i32 46, float %3441, float %3432, float %3443)  ; FMad(a,b,c)
  %3445 = fmul fast float %3439, %3433
  %3446 = call float @dx.op.tertiary.f32(i32 46, float %3440, float %3434, float %3445)  ; FMad(a,b,c)
  %3447 = call float @dx.op.tertiary.f32(i32 46, float %3441, float %3435, float %3446)  ; FMad(a,b,c)
  %3448 = fsub fast float %3444, %3436
  %3449 = fsub fast float %3447, %3437
  %3450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3451 = extractvalue %dx.types.CBufRet.f32 %3450, 0
  %3452 = extractvalue %dx.types.CBufRet.f32 %3450, 1
  %3453 = extractvalue %dx.types.CBufRet.f32 %3450, 2
  %3454 = extractvalue %dx.types.CBufRet.f32 %3450, 3
  %3455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3456 = extractvalue %dx.types.CBufRet.f32 %3455, 3
  %3457 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3458 = extractvalue %dx.types.CBufRet.i32 %3457, 0
  %3459 = extractvalue %dx.types.CBufRet.i32 %3457, 1
  %3460 = udiv i32 %3459, %3458
  %3461 = fsub fast float %3448, %3451
  %3462 = fsub fast float %3449, %3452
  %3463 = call float @dx.op.binary.f32(i32 35, float %3461, float 0.000000e+00)  ; FMax(a,b)
  %3464 = call float @dx.op.binary.f32(i32 35, float %3462, float 0.000000e+00)  ; FMax(a,b)
  %3465 = call float @dx.op.binary.f32(i32 36, float %3463, float %3453)  ; FMin(a,b)
  %3466 = call float @dx.op.binary.f32(i32 36, float %3464, float %3454)  ; FMin(a,b)
  %3467 = add i32 %3458, -1
  %3468 = add i32 %3460, -1
  %3469 = fmul fast float %3465, %3456
  %3470 = fmul fast float %3466, %3456
  %3471 = fptoui float %3469 to i32
  %3472 = fptoui float %3470 to i32
  %3473 = call i32 @dx.op.binary.i32(i32 40, i32 %3471, i32 %3467)  ; UMin(a,b)
  %3474 = call i32 @dx.op.binary.i32(i32 40, i32 %3472, i32 %3468)  ; UMin(a,b)
  %3475 = mul i32 %3474, %3458
  %3476 = add i32 %3475, %3473
  %3477 = shl i32 %3476, 2
  %3478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3477, i32 undef)  ; BufferLoad(srv,index,wot)
  %3479 = extractvalue %dx.types.ResRet.i32 %3478, 0
  %3480 = icmp eq i32 %3479, -1
  br i1 %3480, label %3697, label %3481

; <label>:3481                                    ; preds = %3426
  %3482 = mul i32 %3479, 148
  %3483 = add i32 %3482, 4
  %3484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3483, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.f32 %3484, 0
  %3486 = add i32 %3482, 8
  %3487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3486, i32 undef)  ; BufferLoad(srv,index,wot)
  %3488 = extractvalue %dx.types.ResRet.f32 %3487, 0
  %3489 = add i32 %3482, 36
  %3490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3489, i32 undef)  ; BufferLoad(srv,index,wot)
  %3491 = extractvalue %dx.types.ResRet.f32 %3490, 0
  %3492 = add i32 %3482, 60
  %3493 = add i32 %3482, 92
  %3494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3493, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.i32 %3494, 0
  %3496 = add i32 %3482, 116
  %3497 = fsub fast float %3448, %3485
  %3498 = fsub fast float %3449, %3488
  %3499 = fmul fast float %3456, %3497
  %3500 = fmul fast float %3456, %3498
  %3501 = call float @dx.op.unary.f32(i32 7, float %3499)  ; Saturate(value)
  %3502 = call float @dx.op.unary.f32(i32 7, float %3500)  ; Saturate(value)
  %3503 = fsub fast float 1.000000e+00, %3502
  %3504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3505 = extractvalue %dx.types.CBufRet.f32 %3504, 2
  %3506 = call float @dx.op.unary.f32(i32 83, float %3501)  ; DerivCoarseX(value)
  %3507 = call float @dx.op.unary.f32(i32 83, float %3503)  ; DerivCoarseX(value)
  %3508 = call float @dx.op.unary.f32(i32 84, float %3501)  ; DerivCoarseY(value)
  %3509 = call float @dx.op.unary.f32(i32 84, float %3503)  ; DerivCoarseY(value)
  %3510 = fmul fast float %3506, %3505
  %3511 = fmul fast float %3507, %3505
  %3512 = fmul fast float %3508, %3505
  %3513 = fmul fast float %3509, %3505
  %3514 = call float @dx.op.dot2.f32(i32 54, float %3512, float %3513, float %3512, float %3513)  ; Dot2(ax,ay,bx,by)
  %3515 = call float @dx.op.dot2.f32(i32 54, float %3510, float %3511, float %3510, float %3511)  ; Dot2(ax,ay,bx,by)
  %3516 = call float @dx.op.binary.f32(i32 35, float %3515, float %3514)  ; FMax(a,b)
  %3517 = call float @dx.op.unary.f32(i32 23, float %3516)  ; Log(value)
  %3518 = fmul fast float %3517, 5.000000e-01
  %3519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3520 = extractvalue %dx.types.CBufRet.f32 %3519, 1
  %3521 = fadd fast float %3520, %3518
  %3522 = call float @dx.op.binary.f32(i32 35, float %3521, float 0.000000e+00)  ; FMax(a,b)
  %3523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3524 = extractvalue %dx.types.CBufRet.f32 %3523, 3
  %3525 = fadd fast float %3524, %3522
  %3526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3527 = extractvalue %dx.types.CBufRet.f32 %3526, 3
  %3528 = fadd fast float %3525, %3527
  %3529 = add i32 %3495, 0
  %3530 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3529, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3531 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3530, i32 0)  ; GetDimensions(handle,mipLevel)
  %3532 = extractvalue %dx.types.Dimensions %3531, 0
  %3533 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3532)  ; FirstbitLo(value)
  %3534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3535 = extractvalue %dx.types.CBufRet.i32 %3534, 1
  %3536 = sub nsw i32 %3535, %3533
  %3537 = sitofp i32 %3536 to float
  %3538 = fsub fast float %3528, %3537
  %3539 = call float @dx.op.binary.f32(i32 35, float %3538, float 0.000000e+00)  ; FMax(a,b)
  %3540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3530, %dx.types.Handle %23, float %3501, float %3503, float %3491, float undef, i32 0, i32 0, i32 undef, float %3539)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3541 = extractvalue %dx.types.ResRet.f32 %3540, 0
  %3542 = fcmp ule float %3541, 0x3FE0101020000000
  %3543 = extractvalue %dx.types.CBufRet.i32 %3534, 0
  %3544 = and i32 %3543, 128
  %3545 = icmp ne i32 %3544, 0
  %3546 = and i1 %3542, %3545
  br i1 %3546, label %3697, label %3547

; <label>:3547                                    ; preds = %3481
  %3548 = add i32 %3482, 20
  %3549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3548, i32 undef)  ; BufferLoad(srv,index,wot)
  %3550 = extractvalue %dx.types.ResRet.f32 %3549, 0
  %3551 = add i32 %3482, 24
  %3552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3551, i32 undef)  ; BufferLoad(srv,index,wot)
  %3553 = extractvalue %dx.types.ResRet.f32 %3552, 0
  %3554 = add i32 %3482, 40
  %3555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.f32 %3555, 0
  %3557 = add i32 %3482, 96
  %3558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3559 = extractvalue %dx.types.ResRet.i32 %3558, 0
  %3560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3561 = extractvalue %dx.types.CBufRet.f32 %3560, 2
  %3562 = fmul fast float %3561, %3501
  %3563 = fmul fast float %3561, %3503
  %3564 = extractvalue %dx.types.CBufRet.f32 %3560, 3
  %3565 = fadd fast float %3562, %3564
  %3566 = fadd fast float %3563, %3564
  %3567 = add i32 %3559, 0
  %3568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3567, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3569 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3568, i32 0)  ; GetDimensions(handle,mipLevel)
  %3570 = extractvalue %dx.types.Dimensions %3569, 0
  %3571 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3570)  ; FirstbitLo(value)
  %3572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3573 = extractvalue %dx.types.CBufRet.i32 %3572, 1
  %3574 = sub nsw i32 %3573, %3571
  %3575 = sitofp i32 %3574 to float
  %3576 = fsub fast float %3525, %3575
  %3577 = call float @dx.op.binary.f32(i32 35, float %3576, float 0.000000e+00)  ; FMax(a,b)
  %3578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3568, %dx.types.Handle %23, float %3565, float %3566, float %3556, float undef, i32 0, i32 0, i32 undef, float %3577)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3579 = extractvalue %dx.types.ResRet.f32 %3578, 0
  %3580 = fmul fast float %3579, %3550
  %3581 = fadd fast float %3580, %3553
  %3582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3583 = extractvalue %dx.types.CBufRet.f32 %3582, 0
  %3584 = extractvalue %dx.types.CBufRet.f32 %3582, 1
  %3585 = extractvalue %dx.types.CBufRet.f32 %3582, 2
  %3586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3587 = extractvalue %dx.types.CBufRet.f32 %3586, 3
  %3588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3589 = extractvalue %dx.types.CBufRet.f32 %3588, 3
  %3590 = extractvalue %dx.types.CBufRet.f32 %3582, 3
  %3591 = fadd fast float %3587, %3448
  %3592 = fadd fast float %3589, %3449
  %3593 = fadd fast float %3581, %3590
  %3594 = fmul fast float %3591, %3583
  %3595 = call float @dx.op.tertiary.f32(i32 46, float %3592, float %3584, float %3594)  ; FMad(a,b,c)
  %3596 = call float @dx.op.tertiary.f32(i32 46, float %3593, float %3585, float %3595)  ; FMad(a,b,c)
  %3597 = fsub fast float %3596, %3590
  %3598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3599 = extractvalue %dx.types.CBufRet.f32 %3598, 2
  %3600 = fsub fast float %3597, %3599
  %3601 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3602 = extractvalue %dx.types.CBufRet.i32 %3601, 0
  %3603 = call i32 @dx.op.binary.i32(i32 40, i32 %3479, i32 %3602)  ; UMin(a,b)
  %3604 = mul i32 %3603, 36
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = add i32 %3604, 4
  %3608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3609 = extractvalue %dx.types.CBufRet.f32 %3608, 0
  %3610 = fmul fast float %3609, %3501
  %3611 = fmul fast float %3609, %3503
  %3612 = extractvalue %dx.types.CBufRet.f32 %3608, 1
  %3613 = fadd fast float %3610, %3612
  %3614 = fadd fast float %3611, %3612
  %3615 = icmp eq i32 %3606, 0
  br i1 %3615, label %3684, label %3616

; <label>:3616                                    ; preds = %3547
  br label %3617

; <label>:3617                                    ; preds = %3674, %3616
  %3618 = phi float [ %3675, %3674 ], [ 0.000000e+00, %3616 ]
  %3619 = phi float [ %3676, %3674 ], [ 0.000000e+00, %3616 ]
  %3620 = phi float [ %3677, %3674 ], [ 0.000000e+00, %3616 ]
  %3621 = phi float [ %3678, %3674 ], [ 0.000000e+00, %3616 ]
  %3622 = phi float [ %3679, %3674 ], [ 0.000000e+00, %3616 ]
  %3623 = phi float [ %3680, %3674 ], [ 0.000000e+00, %3616 ]
  %3624 = phi i32 [ %3681, %3674 ], [ 0, %3616 ]
  %3625 = shl i32 %3624, 2
  %3626 = add i32 %3492, %3625
  %3627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3626, i32 undef)  ; BufferLoad(srv,index,wot)
  %3628 = extractvalue %dx.types.ResRet.f32 %3627, 0
  %3629 = add i32 %3496, %3625
  %3630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3629, i32 undef)  ; BufferLoad(srv,index,wot)
  %3631 = extractvalue %dx.types.ResRet.i32 %3630, 0
  %3632 = add i32 %3631, 0
  %3633 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3632, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3634 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3633, i32 0)  ; GetDimensions(handle,mipLevel)
  %3635 = extractvalue %dx.types.Dimensions %3634, 0
  %3636 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3635)  ; FirstbitLo(value)
  %3637 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3638 = extractvalue %dx.types.CBufRet.i32 %3637, 1
  %3639 = sub nsw i32 %3638, %3636
  %3640 = sitofp i32 %3639 to float
  %3641 = fsub fast float %3525, %3640
  %3642 = call float @dx.op.binary.f32(i32 35, float %3641, float 0.000000e+00)  ; FMax(a,b)
  %3643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3633, %dx.types.Handle %23, float %3613, float %3614, float %3628, float undef, i32 0, i32 0, i32 undef, float %3642)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3644 = extractvalue %dx.types.ResRet.f32 %3643, 0
  %3645 = fcmp fast ogt float %3644, 0.000000e+00
  br i1 %3645, label %3646, label %3674

; <label>:3646                                    ; preds = %3617
  %3647 = add i32 %3607, %3625
  %3648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.i32 %3648, 0
  %3650 = and i32 %3649, 32767
  %3651 = mul nuw nsw i32 %3650, 928
  %3652 = add nuw nsw i32 %3651, 48
  %3653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3652, i32 undef)  ; BufferLoad(srv,index,wot)
  %3654 = extractvalue %dx.types.ResRet.f32 %3653, 0
  %3655 = extractvalue %dx.types.ResRet.f32 %3653, 1
  %3656 = extractvalue %dx.types.ResRet.f32 %3653, 2
  %3657 = add nuw nsw i32 %3651, 60
  %3658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3657, i32 undef)  ; BufferLoad(srv,index,wot)
  %3659 = extractvalue %dx.types.ResRet.f32 %3658, 0
  %3660 = extractvalue %dx.types.ResRet.f32 %3658, 1
  %3661 = extractvalue %dx.types.ResRet.f32 %3658, 2
  %3662 = fmul fast float %3654, %3644
  %3663 = fmul fast float %3655, %3644
  %3664 = fmul fast float %3656, %3644
  %3665 = fadd fast float %3662, %3618
  %3666 = fadd fast float %3663, %3619
  %3667 = fadd fast float %3664, %3620
  %3668 = fmul fast float %3659, %3644
  %3669 = fmul fast float %3660, %3644
  %3670 = fmul fast float %3661, %3644
  %3671 = fadd fast float %3668, %3621
  %3672 = fadd fast float %3669, %3622
  %3673 = fadd fast float %3670, %3623
  br label %3674

; <label>:3674                                    ; preds = %3646, %3617
  %3675 = phi float [ %3665, %3646 ], [ %3618, %3617 ]
  %3676 = phi float [ %3666, %3646 ], [ %3619, %3617 ]
  %3677 = phi float [ %3667, %3646 ], [ %3620, %3617 ]
  %3678 = phi float [ %3671, %3646 ], [ %3621, %3617 ]
  %3679 = phi float [ %3672, %3646 ], [ %3622, %3617 ]
  %3680 = phi float [ %3673, %3646 ], [ %3623, %3617 ]
  %3681 = add nuw i32 %3624, 1
  %3682 = icmp eq i32 %3681, %3606
  br i1 %3682, label %3683, label %3617

; <label>:3683                                    ; preds = %3674
  br label %3684

; <label>:3684                                    ; preds = %3683, %3547
  %3685 = phi float [ 0.000000e+00, %3547 ], [ %3675, %3683 ]
  %3686 = phi float [ 0.000000e+00, %3547 ], [ %3676, %3683 ]
  %3687 = phi float [ 0.000000e+00, %3547 ], [ %3677, %3683 ]
  %3688 = phi float [ 0.000000e+00, %3547 ], [ %3678, %3683 ]
  %3689 = phi float [ 0.000000e+00, %3547 ], [ %3679, %3683 ]
  %3690 = phi float [ 0.000000e+00, %3547 ], [ %3680, %3683 ]
  %3691 = fadd fast float %3688, %3685
  %3692 = fmul fast float %3691, 0x3F847AE140000000
  %3693 = fadd fast float %3689, %3686
  %3694 = fmul fast float %3693, 0x3F847AE140000000
  %3695 = fadd fast float %3690, %3687
  %3696 = fmul fast float %3695, 0x3F847AE140000000
  br label %3697

; <label>:3697                                    ; preds = %3684, %3481, %3426, %3423, %3394, %3356
  %3698 = phi float [ %3408, %3394 ], [ -1.310720e+05, %3356 ], [ %3600, %3684 ], [ -1.310720e+05, %3426 ], [ -1.310720e+05, %3481 ], [ -1.310720e+05, %3423 ]
  %3699 = phi float [ %3418, %3394 ], [ 0.000000e+00, %3356 ], [ %3692, %3684 ], [ 0.000000e+00, %3426 ], [ 0.000000e+00, %3481 ], [ 0.000000e+00, %3423 ]
  %3700 = phi float [ %3420, %3394 ], [ 0.000000e+00, %3356 ], [ %3694, %3684 ], [ 0.000000e+00, %3426 ], [ 0.000000e+00, %3481 ], [ 0.000000e+00, %3423 ]
  %3701 = phi float [ %3422, %3394 ], [ 0.000000e+00, %3356 ], [ %3696, %3684 ], [ 0.000000e+00, %3426 ], [ 0.000000e+00, %3481 ], [ 0.000000e+00, %3423 ]
  %3702 = phi i1 [ true, %3394 ], [ false, %3356 ], [ true, %3684 ], [ false, %3426 ], [ false, %3481 ], [ false, %3423 ]
  %3703 = and i32 %176, 3
  %3704 = icmp eq i32 %3703, 1
  %3705 = select i1 %3704, float 1.000000e+00, float 0.000000e+00
  %3706 = fsub fast float %3698, %160
  %3707 = call float @dx.op.unary.f32(i32 7, float %3706)  ; Saturate(value)
  %3708 = select i1 %3702, float %3707, float 1.000000e+00
  %3709 = fmul fast float %3708, %3705
  %3710 = icmp eq i32 %3703, 3
  %3711 = select i1 %3710, float 1.000000e+00, float %3709
  %3712 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3711)  ; FMax(a,b)
  %3713 = fcmp fast olt float %3711, 1.000000e+00
  %3714 = fcmp uge float %42, 0.000000e+00
  %3715 = and i1 %3714, %3713
  br i1 %3715, label %3716, label %3726

; <label>:3716                                    ; preds = %3697
  %3717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %42, float %43, float %44, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3718 = extractvalue %dx.types.ResRet.f32 %3717, 0
  %3719 = extractvalue %dx.types.ResRet.f32 %3717, 1
  %3720 = extractvalue %dx.types.ResRet.f32 %3717, 2
  %3721 = fadd fast float %3718, %3712
  %3722 = fcmp ule float %41, 0.000000e+00
  %3723 = call float @dx.op.dot3.f32(i32 55, float %38, float %39, float %40, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3724 = select i1 %3722, float %3723, float 1.000000e+00
  %3725 = fmul fast float %3724, %3720
  br label %3726

; <label>:3726                                    ; preds = %3716, %3697
  %3727 = phi float [ %3721, %3716 ], [ %3712, %3697 ]
  %3728 = phi float [ %3719, %3716 ], [ 0.000000e+00, %3697 ]
  %3729 = phi float [ %3725, %3716 ], [ 0.000000e+00, %3697 ]
  %3730 = call float @dx.op.unary.f32(i32 7, float %3727)  ; Saturate(value)
  %3731 = call float @dx.op.unary.f32(i32 7, float %3728)  ; Saturate(value)
  %3732 = call float @dx.op.unary.f32(i32 7, float %3729)  ; Saturate(value)
  %3733 = fcmp fast une float %3731, 0.000000e+00
  %3734 = fcmp fast une float %3732, 0.000000e+00
  %3735 = or i1 %3733, %3734
  br i1 %3735, label %3736, label %4295

; <label>:3736                                    ; preds = %3726
  br i1 %3733, label %3737, label %4010

; <label>:3737                                    ; preds = %3736
  %3738 = call float @dx.op.unary.f32(i32 23, float %3269)  ; Log(value)
  %3739 = fmul fast float %3738, 4.000000e+00
  %3740 = call float @dx.op.unary.f32(i32 21, float %3739)  ; Exp(value)
  %3741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3742 = extractvalue %dx.types.CBufRet.f32 %3741, 0
  %3743 = fmul fast float %3742, %29
  %3744 = fmul fast float %3742, %30
  %3745 = fmul fast float %3742, %31
  %3746 = call float @dx.op.unary.f32(i32 6, float %38)  ; FAbs(value)
  %3747 = call float @dx.op.unary.f32(i32 6, float %39)  ; FAbs(value)
  %3748 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %3749 = call float @dx.op.unary.f32(i32 23, float %3746)  ; Log(value)
  %3750 = call float @dx.op.unary.f32(i32 23, float %3747)  ; Log(value)
  %3751 = call float @dx.op.unary.f32(i32 23, float %3748)  ; Log(value)
  %3752 = fmul fast float %3749, 4.000000e+00
  %3753 = fmul fast float %3750, 4.000000e+00
  %3754 = fmul fast float %3751, 4.000000e+00
  %3755 = call float @dx.op.unary.f32(i32 21, float %3752)  ; Exp(value)
  %3756 = call float @dx.op.unary.f32(i32 21, float %3753)  ; Exp(value)
  %3757 = call float @dx.op.unary.f32(i32 21, float %3754)  ; Exp(value)
  %3758 = fadd fast float %3756, %3755
  %3759 = fadd fast float %3758, %3757
  %3760 = fdiv fast float 1.000000e+00, %3759
  %3761 = fmul fast float %3760, %3755
  %3762 = fcmp fast ogt float %38, 0.000000e+00
  %3763 = fcmp fast ogt float %39, 0.000000e+00
  %3764 = fcmp fast ogt float %40, 0.000000e+00
  %3765 = fcmp fast olt float %38, 0.000000e+00
  %3766 = fcmp fast olt float %39, 0.000000e+00
  %3767 = fcmp fast olt float %40, 0.000000e+00
  %3768 = zext i1 %3762 to i32
  %3769 = zext i1 %3763 to i32
  %3770 = zext i1 %3764 to i32
  %3771 = zext i1 %3765 to i32
  %3772 = zext i1 %3766 to i32
  %3773 = zext i1 %3767 to i32
  %3774 = sub nsw i32 %3768, %3771
  %3775 = sub nsw i32 %3769, %3772
  %3776 = sub nsw i32 %3770, %3773
  %3777 = call float @dx.op.unary.f32(i32 83, float %3743)  ; DerivCoarseX(value)
  %3778 = call float @dx.op.unary.f32(i32 83, float %3744)  ; DerivCoarseX(value)
  %3779 = call float @dx.op.unary.f32(i32 83, float %3745)  ; DerivCoarseX(value)
  %3780 = call float @dx.op.unary.f32(i32 84, float %3743)  ; DerivCoarseY(value)
  %3781 = call float @dx.op.unary.f32(i32 84, float %3744)  ; DerivCoarseY(value)
  %3782 = call float @dx.op.unary.f32(i32 84, float %3745)  ; DerivCoarseY(value)
  %3783 = fcmp fast ole float %208, %3761
  %3784 = fmul fast float %3760, %3758
  %3785 = fcmp fast ole float %208, %3784
  %3786 = select i1 %3785, float %3745, float %3743
  %3787 = select i1 %3785, float %3743, float %3744
  %3788 = select i1 %3783, float %3744, float %3786
  %3789 = select i1 %3783, float %3745, float %3787
  %3790 = select i1 %3785, float %3779, float %3777
  %3791 = select i1 %3785, float %3777, float %3778
  %3792 = select i1 %3783, float %3778, float %3790
  %3793 = select i1 %3783, float %3779, float %3791
  %3794 = select i1 %3785, float %3782, float %3780
  %3795 = select i1 %3785, float %3780, float %3781
  %3796 = select i1 %3783, float %3781, float %3794
  %3797 = select i1 %3783, float %3782, float %3795
  %3798 = call float @dx.op.unary.f32(i32 27, float %3788)  ; Round_ni(value)
  %3799 = call float @dx.op.unary.f32(i32 27, float %3789)  ; Round_ni(value)
  %3800 = fptosi float %3798 to i32
  %3801 = fptosi float %3799 to i32
  %3802 = xor i32 %3801, %3800
  %3803 = sitofp i32 %3802 to float
  %3804 = fptosi float %3803 to i32
  %3805 = sitofp i32 %3804 to float
  %3806 = fmul fast float %3805, 0x3FE3C6EF40000000
  %3807 = frem fast float %3798, 2.560000e+02
  %3808 = frem fast float %3799, 2.560000e+02
  %3809 = fptoui float %3807 to i32
  %3810 = fptoui float %3808 to i32
  %3811 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %3809, i32 %3810, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3812 = extractvalue %dx.types.ResRet.f32 %3811, 0
  %3813 = extractvalue %dx.types.ResRet.f32 %3811, 1
  %3814 = extractvalue %dx.types.ResRet.f32 %3811, 2
  %3815 = fadd fast float %3812, %3806
  %3816 = fadd fast float %3813, %3806
  %3817 = fadd fast float %3814, %3806
  %3818 = call float @dx.op.unary.f32(i32 22, float %3815)  ; Frc(value)
  %3819 = call float @dx.op.unary.f32(i32 22, float %3816)  ; Frc(value)
  %3820 = call float @dx.op.unary.f32(i32 22, float %3817)  ; Frc(value)
  %3821 = fmul fast float %3820, 0x401921FB60000000
  %3822 = call float @dx.op.unary.f32(i32 13, float %3821)  ; Sin(value)
  %3823 = call float @dx.op.unary.f32(i32 12, float %3821)  ; Cos(value)
  %3824 = fsub fast float -0.000000e+00, %3823
  %3825 = fmul fast float %3823, %3788
  %3826 = call float @dx.op.tertiary.f32(i32 46, float %3822, float %3789, float %3825)  ; FMad(a,b,c)
  %3827 = fmul fast float %3822, %3788
  %3828 = call float @dx.op.tertiary.f32(i32 46, float %3824, float %3789, float %3827)  ; FMad(a,b,c)
  %3829 = fadd fast float %3826, %3818
  %3830 = fadd fast float %3828, %3819
  %3831 = extractvalue %dx.types.CBufRet.f32 %3741, 3
  %3832 = bitcast float %3831 to i32
  %3833 = icmp eq i32 %3832, 0
  br i1 %3833, label %3872, label %3834

; <label>:3834                                    ; preds = %3737
  %3835 = add i32 %3832, 0
  %3836 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3835, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3837 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3836, %dx.types.Handle %68, float %3829, float %3830, float undef, float undef, i32 0, i32 0, i32 undef, float %3792, float %3793, float undef, float %3796, float %3797, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3838 = extractvalue %dx.types.ResRet.f32 %3837, 0
  %3839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3840 = extractvalue %dx.types.CBufRet.f32 %3839, 1
  %3841 = extractvalue %dx.types.CBufRet.f32 %3839, 2
  %3842 = fsub fast float 1.000000e+00, %3731
  %3843 = call float @dx.op.binary.f32(i32 35, float %3842, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3844 = bitcast float %3731 to i32
  %3845 = sitofp i32 %3844 to float
  %3846 = fadd fast float %3845, 0xC1CFBF8940000000
  %3847 = fmul fast float %3841, %3846
  %3848 = fadd fast float %3847, 0x41CFBF8940000000
  %3849 = fptosi float %3848 to i32
  %3850 = bitcast i32 %3849 to float
  %3851 = bitcast float %3843 to i32
  %3852 = sitofp i32 %3851 to float
  %3853 = fadd fast float %3852, 0xC1CFBF8940000000
  %3854 = fmul fast float %3853, %3841
  %3855 = fadd fast float %3854, 0x41CFBF8940000000
  %3856 = fptosi float %3855 to i32
  %3857 = bitcast i32 %3856 to float
  %3858 = fmul fast float %3850, %3840
  %3859 = fmul fast float %3857, %3840
  %3860 = fsub fast float %3843, %3858
  %3861 = fadd fast float %3859, %3843
  %3862 = call float @dx.op.unary.f32(i32 7, float %3860)  ; Saturate(value)
  %3863 = call float @dx.op.unary.f32(i32 7, float %3861)  ; Saturate(value)
  %3864 = fsub fast float %3838, %3862
  %3865 = fsub fast float %3863, %3862
  %3866 = bitcast float %3865 to i32
  %3867 = sub nsw i32 2129859010, %3866
  %3868 = bitcast i32 %3867 to float
  %3869 = fmul fast float %3868, %3864
  %3870 = call float @dx.op.unary.f32(i32 7, float %3869)  ; Saturate(value)
  %3871 = fcmp fast olt float %3870, 0x3F70101020000000
  br i1 %3871, label %4010, label %3872

; <label>:3872                                    ; preds = %3834, %3737
  %3873 = phi float [ %3870, %3834 ], [ %3731, %3737 ]
  %3874 = fmul fast float %3873, %3740
  %3875 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3876 = extractvalue %dx.types.CBufRet.i32 %3875, 1
  %3877 = extractvalue %dx.types.CBufRet.i32 %3875, 0
  %3878 = add i32 %3877, 0
  %3879 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3878, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3880 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3879, %dx.types.Handle %67, float %3829, float %3830, float undef, float undef, i32 0, i32 0, i32 undef, float %3792, float %3793, float undef, float %3796, float %3797, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3881 = extractvalue %dx.types.ResRet.f32 %3880, 0
  %3882 = extractvalue %dx.types.ResRet.f32 %3880, 1
  %3883 = extractvalue %dx.types.ResRet.f32 %3880, 2
  %3884 = extractvalue %dx.types.ResRet.f32 %3880, 3
  %3885 = and i32 %3876, 255
  %3886 = uitofp i32 %3885 to float
  %3887 = lshr i32 %3876, 8
  %3888 = and i32 %3887, 255
  %3889 = uitofp i32 %3888 to float
  %3890 = fmul fast float %3884, %3886
  %3891 = fadd fast float %3890, %3889
  %3892 = fmul fast float %3891, 0x3F70101000000000
  %3893 = fadd fast float %3892, 0xBFB99999A0000000
  %3894 = call float @dx.op.unary.f32(i32 7, float %3893)  ; Saturate(value)
  %3895 = fmul fast float %3894, 0x3FF1C71C80000000
  %3896 = call float @dx.op.binary.f32(i32 36, float %3892, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3897 = fsub fast float 1.000000e+00, %3895
  %3898 = call float @dx.op.unary.f32(i32 7, float %3897)  ; Saturate(value)
  %3899 = fmul fast float %3898, %3881
  %3900 = fmul fast float %3898, %3882
  %3901 = fmul fast float %3898, %3883
  %3902 = call float @dx.op.unary.f32(i32 7, float %3899)  ; Saturate(value)
  %3903 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3904 = call float @dx.op.unary.f32(i32 7, float %3901)  ; Saturate(value)
  %3905 = fmul fast float %3895, %3881
  %3906 = fmul fast float %3895, %3882
  %3907 = fmul fast float %3895, %3883
  %3908 = fadd fast float %3905, %3896
  %3909 = fadd fast float %3906, %3896
  %3910 = fadd fast float %3907, %3896
  %3911 = call float @dx.op.unary.f32(i32 7, float %3908)  ; Saturate(value)
  %3912 = call float @dx.op.unary.f32(i32 7, float %3909)  ; Saturate(value)
  %3913 = call float @dx.op.unary.f32(i32 7, float %3910)  ; Saturate(value)
  %3914 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3915 = extractvalue %dx.types.CBufRet.i32 %3914, 3
  %3916 = extractvalue %dx.types.CBufRet.i32 %3914, 2
  %3917 = add i32 %3916, 0
  %3918 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3917, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3919 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3918, %dx.types.Handle %67, float %3829, float %3830, float undef, float undef, i32 0, i32 0, i32 undef, float %3792, float %3793, float undef, float %3796, float %3797, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3920 = extractvalue %dx.types.ResRet.f32 %3919, 0
  %3921 = extractvalue %dx.types.ResRet.f32 %3919, 1
  %3922 = extractvalue %dx.types.ResRet.f32 %3919, 2
  %3923 = extractvalue %dx.types.ResRet.f32 %3919, 3
  %3924 = and i32 %3915, 255
  %3925 = uitofp i32 %3924 to float
  %3926 = lshr i32 %3915, 8
  %3927 = and i32 %3926, 255
  %3928 = uitofp i32 %3927 to float
  %3929 = lshr i32 %3915, 16
  %3930 = and i32 %3929, 255
  %3931 = uitofp i32 %3930 to float
  %3932 = fmul fast float %3931, 0x3F70101000000000
  %3933 = fmul fast float %3920, %3925
  %3934 = fadd fast float %3933, %3928
  %3935 = fmul fast float %3934, 0x3F70101000000000
  %3936 = fadd fast float %3921, -5.000000e-01
  %3937 = fadd fast float %3923, -5.000000e-01
  %3938 = fmul fast float %3936, %3932
  %3939 = fmul fast float %3937, %3932
  %3940 = fadd fast float %3938, 5.000000e-01
  %3941 = fadd fast float %3939, 5.000000e-01
  %3942 = fmul fast float %3940, 2.000000e+00
  %3943 = fadd fast float %3942, -1.000000e+00
  %3944 = fmul fast float %3941, 2.000000e+00
  %3945 = fadd fast float %3944, -1.000000e+00
  %3946 = fadd fast float %3943, %3945
  %3947 = fmul fast float %3946, 5.000000e-01
  %3948 = fsub fast float %3943, %3945
  %3949 = fmul fast float %3948, 5.000000e-01
  %3950 = call float @dx.op.unary.f32(i32 6, float %3947)  ; FAbs(value)
  %3951 = fsub fast float 1.000000e+00, %3950
  %3952 = call float @dx.op.unary.f32(i32 6, float %3949)  ; FAbs(value)
  %3953 = fsub fast float %3951, %3952
  %3954 = call float @dx.op.dot3.f32(i32 55, float %3947, float %3949, float %3953, float %3947, float %3949, float %3953)  ; Dot3(ax,ay,az,bx,by,bz)
  %3955 = call float @dx.op.unary.f32(i32 25, float %3954)  ; Rsqrt(value)
  %3956 = fmul fast float %3947, %3955
  %3957 = fmul fast float %3949, %3955
  %3958 = select i1 %3785, i32 %3775, i32 %3776
  %3959 = select i1 %3783, i32 %3774, i32 %3958
  %3960 = sitofp i32 %3959 to float
  %3961 = fmul fast float %3953, %3960
  %3962 = fmul fast float %3961, %3955
  %3963 = select i1 %3785, float %3962, float %3957
  %3964 = select i1 %3785, float %3957, float %3962
  %3965 = select i1 %3783, float %3962, float %3956
  %3966 = select i1 %3783, float %3957, float %3963
  %3967 = select i1 %3783, float %3956, float %3964
  %3968 = fsub fast float %3902, %3335
  %3969 = fsub fast float %3903, %3336
  %3970 = fsub fast float %3904, %3337
  %3971 = fmul fast float %3968, %3874
  %3972 = fmul fast float %3969, %3874
  %3973 = fmul fast float %3970, %3874
  %3974 = fadd fast float %3971, %3335
  %3975 = fadd fast float %3972, %3336
  %3976 = fadd fast float %3973, %3337
  %3977 = fsub fast float %3911, %3320
  %3978 = fsub fast float %3912, %3321
  %3979 = fsub fast float %3913, %3322
  %3980 = fmul fast float %3977, %3874
  %3981 = fmul fast float %3978, %3874
  %3982 = fmul fast float %3979, %3874
  %3983 = fadd fast float %3980, %3320
  %3984 = fadd fast float %3981, %3321
  %3985 = fadd fast float %3982, %3322
  %3986 = fadd fast float %3965, %3299
  %3987 = fadd fast float %3966, %3300
  %3988 = fadd fast float %3967, %3301
  %3989 = call float @dx.op.dot3.f32(i32 55, float %3986, float %3987, float %3988, float %3986, float %3987, float %3988)  ; Dot3(ax,ay,az,bx,by,bz)
  %3990 = call float @dx.op.unary.f32(i32 25, float %3989)  ; Rsqrt(value)
  %3991 = fmul fast float %3986, %3990
  %3992 = fmul fast float %3987, %3990
  %3993 = fmul fast float %3988, %3990
  %3994 = fsub fast float %3991, %3299
  %3995 = fsub fast float %3992, %3300
  %3996 = fsub fast float %3993, %3301
  %3997 = fmul fast float %3994, %3874
  %3998 = fmul fast float %3995, %3874
  %3999 = fmul fast float %3996, %3874
  %4000 = fadd fast float %3997, %3299
  %4001 = fadd fast float %3998, %3300
  %4002 = fadd fast float %3999, %3301
  %4003 = call float @dx.op.binary.f32(i32 36, float %3269, float %3922)  ; FMin(a,b)
  %4004 = fsub fast float %4003, %3269
  %4005 = fmul fast float %4004, %3874
  %4006 = fadd fast float %4005, %3269
  %4007 = fsub fast float %3935, %3323
  %4008 = fmul fast float %4007, %3874
  %4009 = fadd fast float %4008, %3323
  br label %4010

; <label>:4010                                    ; preds = %3872, %3834, %3736
  %4011 = phi float [ %3983, %3872 ], [ %3320, %3834 ], [ %3320, %3736 ]
  %4012 = phi float [ %3984, %3872 ], [ %3321, %3834 ], [ %3321, %3736 ]
  %4013 = phi float [ %3985, %3872 ], [ %3322, %3834 ], [ %3322, %3736 ]
  %4014 = phi float [ %3974, %3872 ], [ %3335, %3834 ], [ %3335, %3736 ]
  %4015 = phi float [ %3975, %3872 ], [ %3336, %3834 ], [ %3336, %3736 ]
  %4016 = phi float [ %3976, %3872 ], [ %3337, %3834 ], [ %3337, %3736 ]
  %4017 = phi float [ %4000, %3872 ], [ %3299, %3834 ], [ %3299, %3736 ]
  %4018 = phi float [ %4001, %3872 ], [ %3300, %3834 ], [ %3300, %3736 ]
  %4019 = phi float [ %4002, %3872 ], [ %3301, %3834 ], [ %3301, %3736 ]
  %4020 = phi float [ %4009, %3872 ], [ %3323, %3834 ], [ %3323, %3736 ]
  %4021 = phi float [ %4006, %3872 ], [ %3269, %3834 ], [ %3269, %3736 ]
  br i1 %3734, label %4022, label %4295

; <label>:4022                                    ; preds = %4010
  %4023 = call float @dx.op.unary.f32(i32 23, float %4021)  ; Log(value)
  %4024 = fmul fast float %4023, 4.000000e+00
  %4025 = call float @dx.op.unary.f32(i32 21, float %4024)  ; Exp(value)
  %4026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4027 = extractvalue %dx.types.CBufRet.f32 %4026, 0
  %4028 = fmul fast float %4027, %29
  %4029 = fmul fast float %4027, %30
  %4030 = fmul fast float %4027, %31
  %4031 = call float @dx.op.unary.f32(i32 6, float %38)  ; FAbs(value)
  %4032 = call float @dx.op.unary.f32(i32 6, float %39)  ; FAbs(value)
  %4033 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %4034 = call float @dx.op.unary.f32(i32 23, float %4031)  ; Log(value)
  %4035 = call float @dx.op.unary.f32(i32 23, float %4032)  ; Log(value)
  %4036 = call float @dx.op.unary.f32(i32 23, float %4033)  ; Log(value)
  %4037 = fmul fast float %4034, 4.000000e+00
  %4038 = fmul fast float %4035, 4.000000e+00
  %4039 = fmul fast float %4036, 4.000000e+00
  %4040 = call float @dx.op.unary.f32(i32 21, float %4037)  ; Exp(value)
  %4041 = call float @dx.op.unary.f32(i32 21, float %4038)  ; Exp(value)
  %4042 = call float @dx.op.unary.f32(i32 21, float %4039)  ; Exp(value)
  %4043 = fadd fast float %4041, %4040
  %4044 = fadd fast float %4043, %4042
  %4045 = fdiv fast float 1.000000e+00, %4044
  %4046 = fmul fast float %4045, %4040
  %4047 = fcmp fast ogt float %38, 0.000000e+00
  %4048 = fcmp fast ogt float %39, 0.000000e+00
  %4049 = fcmp fast ogt float %40, 0.000000e+00
  %4050 = fcmp fast olt float %38, 0.000000e+00
  %4051 = fcmp fast olt float %39, 0.000000e+00
  %4052 = fcmp fast olt float %40, 0.000000e+00
  %4053 = zext i1 %4047 to i32
  %4054 = zext i1 %4048 to i32
  %4055 = zext i1 %4049 to i32
  %4056 = zext i1 %4050 to i32
  %4057 = zext i1 %4051 to i32
  %4058 = zext i1 %4052 to i32
  %4059 = sub nsw i32 %4053, %4056
  %4060 = sub nsw i32 %4054, %4057
  %4061 = sub nsw i32 %4055, %4058
  %4062 = call float @dx.op.unary.f32(i32 83, float %4028)  ; DerivCoarseX(value)
  %4063 = call float @dx.op.unary.f32(i32 83, float %4029)  ; DerivCoarseX(value)
  %4064 = call float @dx.op.unary.f32(i32 83, float %4030)  ; DerivCoarseX(value)
  %4065 = call float @dx.op.unary.f32(i32 84, float %4028)  ; DerivCoarseY(value)
  %4066 = call float @dx.op.unary.f32(i32 84, float %4029)  ; DerivCoarseY(value)
  %4067 = call float @dx.op.unary.f32(i32 84, float %4030)  ; DerivCoarseY(value)
  %4068 = fcmp fast ole float %208, %4046
  %4069 = fmul fast float %4045, %4043
  %4070 = fcmp fast ole float %208, %4069
  %4071 = select i1 %4070, float %4030, float %4028
  %4072 = select i1 %4070, float %4028, float %4029
  %4073 = select i1 %4068, float %4029, float %4071
  %4074 = select i1 %4068, float %4030, float %4072
  %4075 = select i1 %4070, float %4064, float %4062
  %4076 = select i1 %4070, float %4062, float %4063
  %4077 = select i1 %4068, float %4063, float %4075
  %4078 = select i1 %4068, float %4064, float %4076
  %4079 = select i1 %4070, float %4067, float %4065
  %4080 = select i1 %4070, float %4065, float %4066
  %4081 = select i1 %4068, float %4066, float %4079
  %4082 = select i1 %4068, float %4067, float %4080
  %4083 = call float @dx.op.unary.f32(i32 27, float %4073)  ; Round_ni(value)
  %4084 = call float @dx.op.unary.f32(i32 27, float %4074)  ; Round_ni(value)
  %4085 = fptosi float %4083 to i32
  %4086 = fptosi float %4084 to i32
  %4087 = xor i32 %4086, %4085
  %4088 = sitofp i32 %4087 to float
  %4089 = fptosi float %4088 to i32
  %4090 = sitofp i32 %4089 to float
  %4091 = fmul fast float %4090, 0x3FE3C6EF40000000
  %4092 = frem fast float %4083, 2.560000e+02
  %4093 = frem fast float %4084, 2.560000e+02
  %4094 = fptoui float %4092 to i32
  %4095 = fptoui float %4093 to i32
  %4096 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4094, i32 %4095, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4097 = extractvalue %dx.types.ResRet.f32 %4096, 0
  %4098 = extractvalue %dx.types.ResRet.f32 %4096, 1
  %4099 = extractvalue %dx.types.ResRet.f32 %4096, 2
  %4100 = fadd fast float %4097, %4091
  %4101 = fadd fast float %4098, %4091
  %4102 = fadd fast float %4099, %4091
  %4103 = call float @dx.op.unary.f32(i32 22, float %4100)  ; Frc(value)
  %4104 = call float @dx.op.unary.f32(i32 22, float %4101)  ; Frc(value)
  %4105 = call float @dx.op.unary.f32(i32 22, float %4102)  ; Frc(value)
  %4106 = fmul fast float %4105, 0x401921FB60000000
  %4107 = call float @dx.op.unary.f32(i32 13, float %4106)  ; Sin(value)
  %4108 = call float @dx.op.unary.f32(i32 12, float %4106)  ; Cos(value)
  %4109 = fsub fast float -0.000000e+00, %4108
  %4110 = fmul fast float %4108, %4073
  %4111 = call float @dx.op.tertiary.f32(i32 46, float %4107, float %4074, float %4110)  ; FMad(a,b,c)
  %4112 = fmul fast float %4107, %4073
  %4113 = call float @dx.op.tertiary.f32(i32 46, float %4109, float %4074, float %4112)  ; FMad(a,b,c)
  %4114 = fadd fast float %4111, %4103
  %4115 = fadd fast float %4113, %4104
  %4116 = extractvalue %dx.types.CBufRet.f32 %4026, 3
  %4117 = bitcast float %4116 to i32
  %4118 = icmp eq i32 %4117, 0
  br i1 %4118, label %4157, label %4119

; <label>:4119                                    ; preds = %4022
  %4120 = add i32 %4117, 0
  %4121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4120, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4122 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4121, %dx.types.Handle %68, float %4114, float %4115, float undef, float undef, i32 0, i32 0, i32 undef, float %4077, float %4078, float undef, float %4081, float %4082, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4123 = extractvalue %dx.types.ResRet.f32 %4122, 0
  %4124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4125 = extractvalue %dx.types.CBufRet.f32 %4124, 1
  %4126 = extractvalue %dx.types.CBufRet.f32 %4124, 2
  %4127 = fsub fast float 1.000000e+00, %3732
  %4128 = call float @dx.op.binary.f32(i32 35, float %4127, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4129 = bitcast float %3732 to i32
  %4130 = sitofp i32 %4129 to float
  %4131 = fadd fast float %4130, 0xC1CFBF8940000000
  %4132 = fmul fast float %4126, %4131
  %4133 = fadd fast float %4132, 0x41CFBF8940000000
  %4134 = fptosi float %4133 to i32
  %4135 = bitcast i32 %4134 to float
  %4136 = bitcast float %4128 to i32
  %4137 = sitofp i32 %4136 to float
  %4138 = fadd fast float %4137, 0xC1CFBF8940000000
  %4139 = fmul fast float %4138, %4126
  %4140 = fadd fast float %4139, 0x41CFBF8940000000
  %4141 = fptosi float %4140 to i32
  %4142 = bitcast i32 %4141 to float
  %4143 = fmul fast float %4135, %4125
  %4144 = fmul fast float %4142, %4125
  %4145 = fsub fast float %4128, %4143
  %4146 = fadd fast float %4144, %4128
  %4147 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4148 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4149 = fsub fast float %4123, %4147
  %4150 = fsub fast float %4148, %4147
  %4151 = bitcast float %4150 to i32
  %4152 = sub nsw i32 2129859010, %4151
  %4153 = bitcast i32 %4152 to float
  %4154 = fmul fast float %4153, %4149
  %4155 = call float @dx.op.unary.f32(i32 7, float %4154)  ; Saturate(value)
  %4156 = fcmp fast olt float %4155, 0x3F70101020000000
  br i1 %4156, label %4295, label %4157

; <label>:4157                                    ; preds = %4119, %4022
  %4158 = phi float [ %4155, %4119 ], [ %3732, %4022 ]
  %4159 = fmul fast float %4158, %4025
  %4160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4161 = extractvalue %dx.types.CBufRet.i32 %4160, 1
  %4162 = extractvalue %dx.types.CBufRet.i32 %4160, 0
  %4163 = add i32 %4162, 0
  %4164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4163, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4165 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4164, %dx.types.Handle %67, float %4114, float %4115, float undef, float undef, i32 0, i32 0, i32 undef, float %4077, float %4078, float undef, float %4081, float %4082, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4166 = extractvalue %dx.types.ResRet.f32 %4165, 0
  %4167 = extractvalue %dx.types.ResRet.f32 %4165, 1
  %4168 = extractvalue %dx.types.ResRet.f32 %4165, 2
  %4169 = extractvalue %dx.types.ResRet.f32 %4165, 3
  %4170 = and i32 %4161, 255
  %4171 = uitofp i32 %4170 to float
  %4172 = lshr i32 %4161, 8
  %4173 = and i32 %4172, 255
  %4174 = uitofp i32 %4173 to float
  %4175 = fmul fast float %4169, %4171
  %4176 = fadd fast float %4175, %4174
  %4177 = fmul fast float %4176, 0x3F70101000000000
  %4178 = fadd fast float %4177, 0xBFB99999A0000000
  %4179 = call float @dx.op.unary.f32(i32 7, float %4178)  ; Saturate(value)
  %4180 = fmul fast float %4179, 0x3FF1C71C80000000
  %4181 = call float @dx.op.binary.f32(i32 36, float %4177, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4182 = fsub fast float 1.000000e+00, %4180
  %4183 = call float @dx.op.unary.f32(i32 7, float %4182)  ; Saturate(value)
  %4184 = fmul fast float %4183, %4166
  %4185 = fmul fast float %4183, %4167
  %4186 = fmul fast float %4183, %4168
  %4187 = call float @dx.op.unary.f32(i32 7, float %4184)  ; Saturate(value)
  %4188 = call float @dx.op.unary.f32(i32 7, float %4185)  ; Saturate(value)
  %4189 = call float @dx.op.unary.f32(i32 7, float %4186)  ; Saturate(value)
  %4190 = fmul fast float %4180, %4166
  %4191 = fmul fast float %4180, %4167
  %4192 = fmul fast float %4180, %4168
  %4193 = fadd fast float %4190, %4181
  %4194 = fadd fast float %4191, %4181
  %4195 = fadd fast float %4192, %4181
  %4196 = call float @dx.op.unary.f32(i32 7, float %4193)  ; Saturate(value)
  %4197 = call float @dx.op.unary.f32(i32 7, float %4194)  ; Saturate(value)
  %4198 = call float @dx.op.unary.f32(i32 7, float %4195)  ; Saturate(value)
  %4199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.i32 %4199, 3
  %4201 = extractvalue %dx.types.CBufRet.i32 %4199, 2
  %4202 = add i32 %4201, 0
  %4203 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4202, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4204 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4203, %dx.types.Handle %67, float %4114, float %4115, float undef, float undef, i32 0, i32 0, i32 undef, float %4077, float %4078, float undef, float %4081, float %4082, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4205 = extractvalue %dx.types.ResRet.f32 %4204, 0
  %4206 = extractvalue %dx.types.ResRet.f32 %4204, 1
  %4207 = extractvalue %dx.types.ResRet.f32 %4204, 2
  %4208 = extractvalue %dx.types.ResRet.f32 %4204, 3
  %4209 = and i32 %4200, 255
  %4210 = uitofp i32 %4209 to float
  %4211 = lshr i32 %4200, 8
  %4212 = and i32 %4211, 255
  %4213 = uitofp i32 %4212 to float
  %4214 = lshr i32 %4200, 16
  %4215 = and i32 %4214, 255
  %4216 = uitofp i32 %4215 to float
  %4217 = fmul fast float %4216, 0x3F70101000000000
  %4218 = fmul fast float %4205, %4210
  %4219 = fadd fast float %4218, %4213
  %4220 = fmul fast float %4219, 0x3F70101000000000
  %4221 = fadd fast float %4206, -5.000000e-01
  %4222 = fadd fast float %4208, -5.000000e-01
  %4223 = fmul fast float %4221, %4217
  %4224 = fmul fast float %4222, %4217
  %4225 = fadd fast float %4223, 5.000000e-01
  %4226 = fadd fast float %4224, 5.000000e-01
  %4227 = fmul fast float %4225, 2.000000e+00
  %4228 = fadd fast float %4227, -1.000000e+00
  %4229 = fmul fast float %4226, 2.000000e+00
  %4230 = fadd fast float %4229, -1.000000e+00
  %4231 = fadd fast float %4228, %4230
  %4232 = fmul fast float %4231, 5.000000e-01
  %4233 = fsub fast float %4228, %4230
  %4234 = fmul fast float %4233, 5.000000e-01
  %4235 = call float @dx.op.unary.f32(i32 6, float %4232)  ; FAbs(value)
  %4236 = fsub fast float 1.000000e+00, %4235
  %4237 = call float @dx.op.unary.f32(i32 6, float %4234)  ; FAbs(value)
  %4238 = fsub fast float %4236, %4237
  %4239 = call float @dx.op.dot3.f32(i32 55, float %4232, float %4234, float %4238, float %4232, float %4234, float %4238)  ; Dot3(ax,ay,az,bx,by,bz)
  %4240 = call float @dx.op.unary.f32(i32 25, float %4239)  ; Rsqrt(value)
  %4241 = fmul fast float %4232, %4240
  %4242 = fmul fast float %4234, %4240
  %4243 = select i1 %4070, i32 %4060, i32 %4061
  %4244 = select i1 %4068, i32 %4059, i32 %4243
  %4245 = sitofp i32 %4244 to float
  %4246 = fmul fast float %4238, %4245
  %4247 = fmul fast float %4246, %4240
  %4248 = select i1 %4070, float %4247, float %4242
  %4249 = select i1 %4070, float %4242, float %4247
  %4250 = select i1 %4068, float %4247, float %4241
  %4251 = select i1 %4068, float %4242, float %4248
  %4252 = select i1 %4068, float %4241, float %4249
  %4253 = fsub fast float %4187, %4014
  %4254 = fsub fast float %4188, %4015
  %4255 = fsub fast float %4189, %4016
  %4256 = fmul fast float %4253, %4159
  %4257 = fmul fast float %4254, %4159
  %4258 = fmul fast float %4255, %4159
  %4259 = fadd fast float %4256, %4014
  %4260 = fadd fast float %4257, %4015
  %4261 = fadd fast float %4258, %4016
  %4262 = fsub fast float %4196, %4011
  %4263 = fsub fast float %4197, %4012
  %4264 = fsub fast float %4198, %4013
  %4265 = fmul fast float %4262, %4159
  %4266 = fmul fast float %4263, %4159
  %4267 = fmul fast float %4264, %4159
  %4268 = fadd fast float %4265, %4011
  %4269 = fadd fast float %4266, %4012
  %4270 = fadd fast float %4267, %4013
  %4271 = fadd fast float %4250, %4017
  %4272 = fadd fast float %4251, %4018
  %4273 = fadd fast float %4252, %4019
  %4274 = call float @dx.op.dot3.f32(i32 55, float %4271, float %4272, float %4273, float %4271, float %4272, float %4273)  ; Dot3(ax,ay,az,bx,by,bz)
  %4275 = call float @dx.op.unary.f32(i32 25, float %4274)  ; Rsqrt(value)
  %4276 = fmul fast float %4271, %4275
  %4277 = fmul fast float %4272, %4275
  %4278 = fmul fast float %4273, %4275
  %4279 = fsub fast float %4276, %4017
  %4280 = fsub fast float %4277, %4018
  %4281 = fsub fast float %4278, %4019
  %4282 = fmul fast float %4279, %4159
  %4283 = fmul fast float %4280, %4159
  %4284 = fmul fast float %4281, %4159
  %4285 = fadd fast float %4282, %4017
  %4286 = fadd fast float %4283, %4018
  %4287 = fadd fast float %4284, %4019
  %4288 = call float @dx.op.binary.f32(i32 36, float %4021, float %4207)  ; FMin(a,b)
  %4289 = fsub fast float %4288, %4021
  %4290 = fmul fast float %4289, %4159
  %4291 = fadd fast float %4290, %4021
  %4292 = fsub fast float %4220, %4020
  %4293 = fmul fast float %4292, %4159
  %4294 = fadd fast float %4293, %4020
  br label %4295

; <label>:4295                                    ; preds = %4157, %4119, %4010, %3726
  %4296 = phi float [ %4268, %4157 ], [ %4011, %4119 ], [ %4011, %4010 ], [ %3320, %3726 ]
  %4297 = phi float [ %4269, %4157 ], [ %4012, %4119 ], [ %4012, %4010 ], [ %3321, %3726 ]
  %4298 = phi float [ %4270, %4157 ], [ %4013, %4119 ], [ %4013, %4010 ], [ %3322, %3726 ]
  %4299 = phi float [ %4259, %4157 ], [ %4014, %4119 ], [ %4014, %4010 ], [ %3335, %3726 ]
  %4300 = phi float [ %4260, %4157 ], [ %4015, %4119 ], [ %4015, %4010 ], [ %3336, %3726 ]
  %4301 = phi float [ %4261, %4157 ], [ %4016, %4119 ], [ %4016, %4010 ], [ %3337, %3726 ]
  %4302 = phi float [ %4285, %4157 ], [ %4017, %4119 ], [ %4017, %4010 ], [ %3299, %3726 ]
  %4303 = phi float [ %4286, %4157 ], [ %4018, %4119 ], [ %4018, %4010 ], [ %3300, %3726 ]
  %4304 = phi float [ %4287, %4157 ], [ %4019, %4119 ], [ %4019, %4010 ], [ %3301, %3726 ]
  %4305 = phi float [ %4294, %4157 ], [ %4020, %4119 ], [ %4020, %4010 ], [ %3323, %3726 ]
  %4306 = phi float [ %4291, %4157 ], [ %4021, %4119 ], [ %4021, %4010 ], [ %3269, %3726 ]
  %4307 = fcmp fast une float %3730, 0.000000e+00
  %4308 = call float @dx.op.dot3.f32(i32 55, float %158, float %159, float %160, float %158, float %159, float %160)  ; Dot3(ax,ay,az,bx,by,bz)
  %4309 = call float @dx.op.unary.f32(i32 25, float %4308)  ; Rsqrt(value)
  br i1 %4307, label %4317, label %4310

; <label>:4310                                    ; preds = %4295
  %4311 = fmul fast float %4309, %158
  %4312 = fmul fast float %4309, %159
  %4313 = fmul fast float %4309, %160
  %4314 = fsub fast float -0.000000e+00, %4311
  %4315 = fsub fast float -0.000000e+00, %4312
  %4316 = fsub fast float -0.000000e+00, %4313
  br label %4484

; <label>:4317                                    ; preds = %4295
  %4318 = fmul fast float %158, %4309
  %4319 = fsub fast float -0.000000e+00, %4318
  %4320 = fmul fast float %159, %4309
  %4321 = fsub fast float -0.000000e+00, %4320
  %4322 = fmul fast float %160, %4309
  %4323 = fsub fast float -0.000000e+00, %4322
  %4324 = call float @dx.op.dot3.f32(i32 55, float %4319, float %4321, float %4323, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %4325 = fmul fast float %3730, 2.500000e+00
  %4326 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4327 = fmul fast float %3730, 0x4013FFFFE0000000
  %4328 = fadd fast float %4327, 0xBFFFFFFFE0000000
  %4329 = call float @dx.op.unary.f32(i32 7, float %4328)  ; Saturate(value)
  %4330 = fmul fast float %3730, 0x4004000020000000
  %4331 = fadd fast float %4330, 0xBFF8000040000000
  %4332 = call float @dx.op.unary.f32(i32 7, float %4331)  ; Saturate(value)
  %4333 = fmul fast float %3302, 1.000000e+01
  %4334 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4335 = fmul fast float %4334, 2.000000e+00
  %4336 = fsub fast float 3.000000e+00, %4335
  %4337 = fmul fast float %4334, %4334
  %4338 = fmul fast float %4337, %4336
  %4339 = fsub fast float 1.000000e+00, %4338
  %4340 = fsub fast float 0x3FE3333340000000, %4305
  %4341 = fmul fast float %4340, 0x400AAAAAA0000000
  %4342 = call float @dx.op.unary.f32(i32 7, float %4341)  ; Saturate(value)
  %4343 = fmul fast float %4339, %4342
  %4344 = fmul fast float %4299, 0x3FEA2B8620000000
  %4345 = fmul fast float %4300, 0x3FEA2B8620000000
  %4346 = fmul fast float %4301, 0x3FEA2B8620000000
  %4347 = fadd fast float %4344, 0x3FC81DFBA0000000
  %4348 = fmul fast float %4347, %4299
  %4349 = fadd fast float %4348, 0x3F910E6020000000
  %4350 = fadd fast float %4345, 0x3FC81DFBA0000000
  %4351 = fmul fast float %4350, %4300
  %4352 = fadd fast float %4351, 0x3F910E6020000000
  %4353 = fadd fast float %4346, 0x3FC81DFBA0000000
  %4354 = fmul fast float %4353, %4301
  %4355 = fadd fast float %4354, 0x3F910E6020000000
  %4356 = call float @dx.op.unary.f32(i32 7, float %4349)  ; Saturate(value)
  %4357 = call float @dx.op.unary.f32(i32 7, float %4352)  ; Saturate(value)
  %4358 = call float @dx.op.unary.f32(i32 7, float %4355)  ; Saturate(value)
  %4359 = fsub fast float %4356, %4299
  %4360 = fsub fast float %4357, %4300
  %4361 = fsub fast float %4358, %4301
  %4362 = fmul fast float %4359, %4326
  %4363 = fmul fast float %4362, %4343
  %4364 = fmul fast float %4360, %4326
  %4365 = fmul fast float %4364, %4343
  %4366 = fmul fast float %4361, %4326
  %4367 = fmul fast float %4366, %4343
  %4368 = fadd fast float %4363, %4299
  %4369 = fadd fast float %4365, %4300
  %4370 = fadd fast float %4367, %4301
  %4371 = fmul fast float %4306, %4306
  %4372 = fmul fast float %4371, %4371
  %4373 = fadd fast float %4329, 1.000000e+00
  %4374 = fsub fast float %4373, %4343
  %4375 = call float @dx.op.unary.f32(i32 7, float %4374)  ; Saturate(value)
  %4376 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4377 = call float @dx.op.unary.f32(i32 7, float %4376)  ; Saturate(value)
  %4378 = fsub fast float 1.000000e+00, %4372
  %4379 = call float @dx.op.binary.f32(i32 36, float %4375, float %4378)  ; FMin(a,b)
  %4380 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4381 = call float @dx.op.binary.f32(i32 35, float %4379, float %4380)  ; FMax(a,b)
  %4382 = fadd fast float %4377, 0xBFE4CCCCC0000000
  %4383 = fmul fast float %4382, 0x4006DB6DA0000000
  %4384 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4385 = fmul fast float %4384, 2.000000e+00
  %4386 = fsub fast float 3.000000e+00, %4385
  %4387 = bitcast float %4296 to i32
  %4388 = ashr i32 %4387, 1
  %4389 = add nsw i32 %4388, 532487669
  %4390 = bitcast i32 %4389 to float
  %4391 = fsub fast float 1.000000e+00, %4390
  %4392 = bitcast float %4391 to i32
  %4393 = sub nsw i32 2129859010, %4392
  %4394 = bitcast i32 %4393 to float
  %4395 = fmul fast float %4394, 2.000000e+00
  %4396 = bitcast float %4297 to i32
  %4397 = ashr i32 %4396, 1
  %4398 = add nsw i32 %4397, 532487669
  %4399 = bitcast i32 %4398 to float
  %4400 = fsub fast float 1.000000e+00, %4399
  %4401 = bitcast float %4400 to i32
  %4402 = sub nsw i32 2129859010, %4401
  %4403 = bitcast i32 %4402 to float
  %4404 = fmul fast float %4403, 2.000000e+00
  %4405 = bitcast float %4298 to i32
  %4406 = ashr i32 %4405, 1
  %4407 = add nsw i32 %4406, 532487669
  %4408 = bitcast i32 %4407 to float
  %4409 = fsub fast float 1.000000e+00, %4408
  %4410 = bitcast float %4409 to i32
  %4411 = sub nsw i32 2129859010, %4410
  %4412 = bitcast i32 %4411 to float
  %4413 = fmul fast float %4412, 2.000000e+00
  %4414 = fsub fast float 0x4002A9FBE0000000, %4395
  %4415 = fadd fast float %4395, 0x3FD54FDF00000000
  %4416 = bitcast float %4415 to i32
  %4417 = sub nsw i32 2129859010, %4416
  %4418 = bitcast i32 %4417 to float
  %4419 = fmul fast float %4418, %4414
  %4420 = fmul fast float %4419, %4419
  %4421 = fsub fast float 0x4002A9FBE0000000, %4404
  %4422 = fadd fast float %4404, 0x3FD54FDF00000000
  %4423 = bitcast float %4422 to i32
  %4424 = sub nsw i32 2129859010, %4423
  %4425 = bitcast i32 %4424 to float
  %4426 = fmul fast float %4425, %4421
  %4427 = fmul fast float %4426, %4426
  %4428 = fsub fast float 0x4002A9FBE0000000, %4413
  %4429 = fadd fast float %4413, 0x3FD54FDF00000000
  %4430 = bitcast float %4429 to i32
  %4431 = sub nsw i32 2129859010, %4430
  %4432 = bitcast i32 %4431 to float
  %4433 = fmul fast float %4432, %4428
  %4434 = fmul fast float %4433, %4433
  %4435 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4420)  ; FMax(a,b)
  %4436 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4427)  ; FMax(a,b)
  %4437 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4434)  ; FMax(a,b)
  %4438 = fsub fast float 1.000000e+00, %4324
  %4439 = fadd fast float %4438, %4339
  %4440 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4441 = fsub fast float 1.000000e+00, %3711
  %4442 = fmul fast float %4381, %4441
  %4443 = fmul fast float %4384, %4384
  %4444 = fmul fast float %4443, %4442
  %4445 = fmul fast float %4444, %4386
  %4446 = fmul fast float %4441, 0xBFE99999A0000000
  %4447 = fmul fast float %4446, %4326
  %4448 = fmul fast float %4447, %4343
  %4449 = fadd fast float %4448, 1.000000e+00
  %4450 = fadd fast float %4305, -1.000000e+00
  %4451 = fmul fast float %4449, %4450
  %4452 = fadd fast float %4451, 1.000000e+00
  %4453 = fsub fast float %4435, %4296
  %4454 = fsub fast float %4436, %4297
  %4455 = fsub fast float %4437, %4298
  %4456 = fmul fast float %4445, %4453
  %4457 = fmul fast float %4445, %4454
  %4458 = fmul fast float %4445, %4455
  %4459 = fadd fast float %4456, %4296
  %4460 = fadd fast float %4457, %4297
  %4461 = fadd fast float %4458, %4298
  %4462 = fsub fast float %78, %4302
  %4463 = fsub fast float %79, %4303
  %4464 = fsub fast float %80, %4304
  %4465 = fmul fast float %4445, %4462
  %4466 = fmul fast float %4445, %4463
  %4467 = fmul fast float %4445, %4464
  %4468 = fadd fast float %4465, %4302
  %4469 = fadd fast float %4466, %4303
  %4470 = fadd fast float %4467, %4304
  %4471 = fmul fast float %4445, %4440
  %4472 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4473 = fsub fast float 1.000000e+00, %4472
  %4474 = fmul fast float %4471, %4473
  %4475 = fadd fast float %4474, %4472
  %4476 = fsub fast float 1.000000e+00, %4306
  %4477 = fmul fast float %4445, %4476
  %4478 = fadd fast float %4477, %4306
  %4479 = call float @dx.op.dot3.f32(i32 55, float %4468, float %4469, float %4470, float %4468, float %4469, float %4470)  ; Dot3(ax,ay,az,bx,by,bz)
  %4480 = call float @dx.op.unary.f32(i32 25, float %4479)  ; Rsqrt(value)
  %4481 = fmul fast float %4468, %4480
  %4482 = fmul fast float %4469, %4480
  %4483 = fmul fast float %4470, %4480
  br label %4484

; <label>:4484                                    ; preds = %4317, %4310
  %4485 = phi float [ %4316, %4310 ], [ %4323, %4317 ]
  %4486 = phi float [ %4315, %4310 ], [ %4321, %4317 ]
  %4487 = phi float [ %4314, %4310 ], [ %4319, %4317 ]
  %4488 = phi float [ %4313, %4310 ], [ %4322, %4317 ]
  %4489 = phi float [ %4312, %4310 ], [ %4320, %4317 ]
  %4490 = phi float [ %4311, %4310 ], [ %4318, %4317 ]
  %4491 = phi float [ %4296, %4310 ], [ %4459, %4317 ]
  %4492 = phi float [ %4297, %4310 ], [ %4460, %4317 ]
  %4493 = phi float [ %4298, %4310 ], [ %4461, %4317 ]
  %4494 = phi float [ %4299, %4310 ], [ %4368, %4317 ]
  %4495 = phi float [ %4300, %4310 ], [ %4369, %4317 ]
  %4496 = phi float [ %4301, %4310 ], [ %4370, %4317 ]
  %4497 = phi float [ %4302, %4310 ], [ %4481, %4317 ]
  %4498 = phi float [ %4303, %4310 ], [ %4482, %4317 ]
  %4499 = phi float [ %4304, %4310 ], [ %4483, %4317 ]
  %4500 = phi float [ %4305, %4310 ], [ %4475, %4317 ]
  %4501 = phi float [ %4306, %4310 ], [ %4478, %4317 ]
  %4502 = select i1 %197, float 0.000000e+00, float %4493
  %4503 = call float @dx.op.dot3.f32(i32 55, float %4497, float %4498, float %4499, float %4487, float %4486, float %4485)  ; Dot3(ax,ay,az,bx,by,bz)
  %4504 = call float @dx.op.unary.f32(i32 7, float %4503)  ; Saturate(value)
  %4505 = call float @dx.op.dot3.f32(i32 55, float %4490, float %4489, float %4488, float %4497, float %4498, float %4499)  ; Dot3(ax,ay,az,bx,by,bz)
  %4506 = fmul fast float %4505, 2.000000e+00
  %4507 = fmul fast float %4506, %4497
  %4508 = fmul fast float %4506, %4498
  %4509 = fmul fast float %4506, %4499
  %4510 = fsub fast float %4490, %4507
  %4511 = fsub fast float %4489, %4508
  %4512 = fsub fast float %4488, %4509
  %4513 = call float @dx.op.binary.f32(i32 36, float %4501, float 1.000000e+00)  ; FMin(a,b)
  %4514 = fsub fast float 1.000000e+00, %4501
  %4515 = bitcast float %4514 to i32
  %4516 = sub nsw i32 2129859010, %4515
  %4517 = fsub fast float 1.000000e+00, %48
  %4518 = call float @dx.op.dot3.f32(i32 55, float %98, float %99, float %100, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %4519 = call float @dx.op.binary.f32(i32 35, float %4518, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4520 = fdiv fast float %4517, %4519
  %4521 = call float @dx.op.dot3.f32(i32 55, float %4497, float %4498, float %4499, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %4522 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4523 = fmul fast float %4522, 5.000000e-01
  %4524 = fadd fast float %4523, 5.000000e-01
  %4525 = fmul fast float %4524, %48
  %4526 = call float @dx.op.dot3.f32(i32 55, float %4497, float %4498, float %4499, float %98, float %99, float %100)  ; Dot3(ax,ay,az,bx,by,bz)
  %4527 = call float @dx.op.unary.f32(i32 7, float %4526)  ; Saturate(value)
  %4528 = fmul fast float %4527, %4520
  %4529 = fadd fast float %4525, %4528
  %4530 = fsub fast float 5.000000e-01, %4523
  %4531 = fmul fast float %4530, %4494
  %4532 = fmul fast float %4530, %4495
  %4533 = fmul fast float %4530, %4496
  %4534 = fadd fast float %4529, %4531
  %4535 = fadd fast float %4529, %4532
  %4536 = fadd fast float %4529, %4533
  %4537 = call float @dx.op.dot3.f32(i32 55, float %4510, float %4511, float %4512, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %4538 = call float @dx.op.unary.f32(i32 7, float %4537)  ; Saturate(value)
  %4539 = fmul fast float %4538, 5.000000e-01
  %4540 = fadd fast float %4539, 5.000000e-01
  %4541 = fmul fast float %4540, %48
  %4542 = call float @dx.op.dot3.f32(i32 55, float %4510, float %4511, float %4512, float %98, float %99, float %100)  ; Dot3(ax,ay,az,bx,by,bz)
  %4543 = call float @dx.op.unary.f32(i32 7, float %4542)  ; Saturate(value)
  %4544 = fmul fast float %4543, %4520
  %4545 = fadd fast float %4541, %4544
  %4546 = fsub fast float 5.000000e-01, %4539
  %4547 = fmul fast float %4546, %4494
  %4548 = fmul fast float %4546, %4495
  %4549 = fmul fast float %4546, %4496
  %4550 = fadd fast float %4545, %4547
  %4551 = fadd fast float %4545, %4548
  %4552 = fadd fast float %4545, %4549
  %4553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4554 = extractvalue %dx.types.CBufRet.f32 %4553, 0
  %4555 = call float @dx.op.binary.f32(i32 36, float %4494, float %4554)  ; FMin(a,b)
  %4556 = fsub fast float 1.000000e+00, %4513
  %4557 = fmul fast float %4555, %4556
  %4558 = fsub fast float 1.000000e+00, %4557
  %4559 = bitcast float %4558 to i32
  %4560 = sub nsw i32 2129859010, %4559
  %4561 = bitcast i32 %4560 to float
  %4562 = call float @dx.op.binary.f32(i32 36, float %4495, float %4554)  ; FMin(a,b)
  %4563 = fmul fast float %4562, %4556
  %4564 = fsub fast float 1.000000e+00, %4563
  %4565 = bitcast float %4564 to i32
  %4566 = sub nsw i32 2129859010, %4565
  %4567 = bitcast i32 %4566 to float
  %4568 = call float @dx.op.binary.f32(i32 36, float %4496, float %4554)  ; FMin(a,b)
  %4569 = fmul fast float %4568, %4556
  %4570 = fsub fast float 1.000000e+00, %4569
  %4571 = bitcast float %4570 to i32
  %4572 = sub nsw i32 2129859010, %4571
  %4573 = bitcast i32 %4572 to float
  %4574 = fmul fast float %4513, %49
  %4575 = fmul fast float %4574, %4534
  %4576 = fmul fast float %4575, %4561
  %4577 = fmul fast float %4513, %50
  %4578 = fmul fast float %4577, %4535
  %4579 = fmul fast float %4578, %4567
  %4580 = fmul fast float %4513, %51
  %4581 = fmul fast float %4580, %4536
  %4582 = fmul fast float %4581, %4573
  %4583 = call float @dx.op.binary.f32(i32 36, float %4491, float %4554)  ; FMin(a,b)
  %4584 = fmul fast float %4583, %4556
  %4585 = fsub fast float 1.000000e+00, %4584
  %4586 = bitcast float %4585 to i32
  %4587 = sub nsw i32 2129859010, %4586
  %4588 = bitcast i32 %4587 to float
  %4589 = call float @dx.op.binary.f32(i32 36, float %4492, float %4554)  ; FMin(a,b)
  %4590 = fmul fast float %4589, %4556
  %4591 = fsub fast float 1.000000e+00, %4590
  %4592 = bitcast float %4591 to i32
  %4593 = sub nsw i32 2129859010, %4592
  %4594 = bitcast i32 %4593 to float
  %4595 = call float @dx.op.binary.f32(i32 36, float %4502, float %4554)  ; FMin(a,b)
  %4596 = fmul fast float %4595, %4556
  %4597 = fsub fast float 1.000000e+00, %4596
  %4598 = bitcast float %4597 to i32
  %4599 = sub nsw i32 2129859010, %4598
  %4600 = bitcast i32 %4599 to float
  %4601 = fmul fast float %4574, %4550
  %4602 = fmul fast float %4601, %4588
  %4603 = fmul fast float %4577, %4551
  %4604 = fmul fast float %4603, %4594
  %4605 = fmul fast float %4580, %4552
  %4606 = fmul fast float %4605, %4600
  %4607 = call float @dx.op.dot3.f32(i32 55, float %4576, float %4579, float %4582, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4608 = select i1 %197, float 0.000000e+00, float %4576
  %4609 = select i1 %197, float %4607, float %4579
  %4610 = select i1 %197, float 0.000000e+00, float %4582
  %4611 = call float @dx.op.dot3.f32(i32 55, float %4602, float %4604, float %4606, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4612 = select i1 %197, float 0.000000e+00, float %4602
  %4613 = select i1 %197, float %4611, float %4604
  %4614 = select i1 %197, float 0.000000e+00, float %4606
  %4615 = fmul fast float %4504, 9.843750e-01
  %4616 = fmul fast float %4500, 9.843750e-01
  %4617 = fadd fast float %4615, 7.812500e-03
  %4618 = fadd fast float %4616, 7.812500e-03
  %4619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %4617, float %4618, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4620 = extractvalue %dx.types.ResRet.f32 %4619, 2
  %4621 = extractvalue %dx.types.ResRet.f32 %4619, 3
  %4622 = fmul fast float %4620, %4491
  %4623 = fmul fast float %4620, %4492
  %4624 = fmul fast float %4620, %4502
  %4625 = fadd fast float %4622, %4621
  %4626 = fadd fast float %4623, %4621
  %4627 = fadd fast float %4624, %4621
  %4628 = fcmp fast ogt float %3270, 0.000000e+00
  br i1 %4628, label %4629, label %4655

; <label>:4629                                    ; preds = %4484
  %4630 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %3270, float %4504, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4631 = extractvalue %dx.types.ResRet.f32 %4630, 0
  %4632 = extractvalue %dx.types.ResRet.f32 %4630, 1
  %4633 = extractvalue %dx.types.ResRet.f32 %4630, 2
  %4634 = fadd fast float %4631, -5.000000e-01
  %4635 = fadd fast float %4632, -5.000000e-01
  %4636 = fadd fast float %4633, -5.000000e-01
  %4637 = fsub fast float 1.000000e+00, %4491
  %4638 = fsub fast float 1.000000e+00, %4492
  %4639 = fsub fast float 1.000000e+00, %4502
  %4640 = fmul fast float %4491, 4.000000e+00
  %4641 = fmul fast float %4640, %4637
  %4642 = fmul fast float %4641, %4634
  %4643 = fmul fast float %4492, 4.000000e+00
  %4644 = fmul fast float %4643, %4638
  %4645 = fmul fast float %4644, %4635
  %4646 = fmul fast float %4502, 4.000000e+00
  %4647 = fmul fast float %4646, %4639
  %4648 = fmul fast float %4647, %4636
  %4649 = fadd fast float %4642, %4625
  %4650 = fadd fast float %4645, %4626
  %4651 = fadd fast float %4648, %4627
  %4652 = call float @dx.op.unary.f32(i32 7, float %4649)  ; Saturate(value)
  %4653 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4654 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  br label %4655

; <label>:4655                                    ; preds = %4629, %4484
  %4656 = phi float [ %4652, %4629 ], [ %4625, %4484 ]
  %4657 = phi float [ %4653, %4629 ], [ %4626, %4484 ]
  %4658 = phi float [ %4654, %4629 ], [ %4627, %4484 ]
  %4659 = call float @dx.op.binary.f32(i32 35, float %4657, float %4658)  ; FMax(a,b)
  %4660 = call float @dx.op.binary.f32(i32 35, float %4656, float %4659)  ; FMax(a,b)
  %4661 = fsub fast float 1.000000e+00, %4660
  %4662 = fmul fast float %4661, %4608
  %4663 = fmul fast float %4661, %4609
  %4664 = fmul fast float %4661, %4610
  %4665 = fmul fast float %4656, %4612
  %4666 = fmul fast float %4657, %4613
  %4667 = fmul fast float %4658, %4614
  %4668 = fmul fast float %4662, %939
  %4669 = fmul fast float %4663, %939
  %4670 = fmul fast float %4664, %939
  %4671 = fadd fast float %4665, %3264
  %4672 = fmul fast float %4671, %939
  %4673 = fadd fast float %4666, %3265
  %4674 = fmul fast float %4673, %939
  %4675 = fadd fast float %4667, %3266
  %4676 = fmul fast float %4675, %939
  %4677 = bitcast i32 %4516 to float
  %4678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4679 = extractvalue %dx.types.CBufRet.f32 %4678, 3
  %4680 = fcmp fast oeq float %4679, 0.000000e+00
  br i1 %4680, label %4893, label %4681

; <label>:4681                                    ; preds = %4655
  %4682 = extractvalue %dx.types.CBufRet.f32 %4678, 0
  %4683 = extractvalue %dx.types.CBufRet.f32 %4678, 1
  %4684 = extractvalue %dx.types.CBufRet.f32 %4678, 2
  %4685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4686 = extractvalue %dx.types.CBufRet.f32 %4685, 0
  %4687 = extractvalue %dx.types.CBufRet.f32 %4685, 1
  %4688 = extractvalue %dx.types.CBufRet.f32 %4685, 2
  %4689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4690 = extractvalue %dx.types.CBufRet.f32 %4689, 0
  %4691 = extractvalue %dx.types.CBufRet.f32 %4689, 1
  %4692 = call float @dx.op.dot3.f32(i32 55, float %4686, float %4687, float %4688, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4693 = select i1 %197, float %4690, float %4686
  %4694 = select i1 %197, float %4692, float %4687
  %4695 = select i1 %197, float %4691, float %4688
  %4696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4697 = extractvalue %dx.types.CBufRet.f32 %4696, 1
  %4698 = fcmp fast une float %4697, 0.000000e+00
  br i1 %4698, label %4699, label %4716

; <label>:4699                                    ; preds = %4681
  %4700 = fptoui float %71 to i32
  %4701 = fptoui float %72 to i32
  %4702 = lshr i32 %4700, 4
  %4703 = lshr i32 %4701, 4
  %4704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4705 = extractvalue %dx.types.CBufRet.f32 %4704, 0
  %4706 = fptoui float %4705 to i32
  %4707 = add i32 %4706, 15
  %4708 = lshr i32 %4707, 4
  %4709 = mul i32 %4708, %4703
  %4710 = add i32 %4709, %4702
  %4711 = shl i32 %4710, 3
  %4712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4711, i32 undef)  ; BufferLoad(srv,index,wot)
  %4713 = extractvalue %dx.types.ResRet.i32 %4712, 0
  %4714 = and i32 %4713, -268435456
  %4715 = icmp eq i32 %4714, -1342177280
  br i1 %4715, label %4726, label %4716

; <label>:4716                                    ; preds = %4699, %4681
  %4717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4718 = extractvalue %dx.types.CBufRet.f32 %4717, 2
  %4719 = extractvalue %dx.types.CBufRet.f32 %4717, 3
  %4720 = fmul fast float %4718, %71
  %4721 = fmul fast float %4719, %72
  %4722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %4720, float %4721, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4723 = extractvalue %dx.types.ResRet.f32 %4722, 0
  %4724 = extractvalue %dx.types.ResRet.f32 %4722, 1
  %4725 = extractvalue %dx.types.ResRet.f32 %4722, 2
  br label %4726

; <label>:4726                                    ; preds = %4716, %4699
  %4727 = phi float [ %4723, %4716 ], [ 0.000000e+00, %4699 ]
  %4728 = phi float [ %4724, %4716 ], [ 0.000000e+00, %4699 ]
  %4729 = phi float [ %4725, %4716 ], [ 0.000000e+00, %4699 ]
  %4730 = call float @dx.op.binary.f32(i32 36, float %4728, float %4729)  ; FMin(a,b)
  %4731 = call float @dx.op.binary.f32(i32 36, float %4727, float %4730)  ; FMin(a,b)
  %4732 = fcmp fast ogt float %4731, 0.000000e+00
  br i1 %4732, label %4733, label %4893, !dx.controlflow.hints !69

; <label>:4733                                    ; preds = %4726
  %4734 = fmul fast float %4727, %4693
  %4735 = fmul fast float %4728, %4694
  %4736 = fmul fast float %4729, %4695
  %4737 = fsub fast float %4682, %4490
  %4738 = fsub fast float %4683, %4489
  %4739 = fsub fast float %4684, %4488
  %4740 = call float @dx.op.dot3.f32(i32 55, float %4737, float %4738, float %4739, float %4737, float %4738, float %4739)  ; Dot3(ax,ay,az,bx,by,bz)
  %4741 = call float @dx.op.unary.f32(i32 25, float %4740)  ; Rsqrt(value)
  %4742 = fmul fast float %4741, %4737
  %4743 = fmul fast float %4741, %4738
  %4744 = fmul fast float %4741, %4739
  %4745 = call float @dx.op.dot3.f32(i32 55, float %4682, float %4683, float %4684, float %4497, float %4498, float %4499)  ; Dot3(ax,ay,az,bx,by,bz)
  %4746 = call float @dx.op.dot3.f32(i32 55, float %4487, float %4486, float %4485, float %4742, float %4743, float %4744)  ; Dot3(ax,ay,az,bx,by,bz)
  %4747 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4748 = fmul fast float %4747, %4747
  %4749 = fmul fast float %4748, %4677
  %4750 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  %4751 = fmul fast float %4750, %4747
  %4752 = call float @dx.op.dot3.f32(i32 55, float %4497, float %4498, float %4499, float %4742, float %4743, float %4744)  ; Dot3(ax,ay,az,bx,by,bz)
  %4753 = fmul fast float %4752, %4752
  %4754 = call float @dx.op.unary.f32(i32 6, float %4745)  ; FAbs(value)
  %4755 = fsub fast float 1.000000e+00, %4500
  %4756 = call float @dx.op.binary.f32(i32 35, float %4755, float 0x3F847AE140000000)  ; FMax(a,b)
  %4757 = fmul fast float %4756, %4756
  %4758 = fmul fast float %4757, %4757
  %4759 = fsub fast float 1.000000e+00, %4758
  %4760 = fmul fast float %4504, %4504
  %4761 = fmul fast float %4760, %4759
  %4762 = fadd fast float %4761, %4758
  %4763 = bitcast float %4762 to i32
  %4764 = ashr i32 %4763, 1
  %4765 = add nsw i32 %4764, 532487669
  %4766 = bitcast i32 %4765 to float
  %4767 = fadd fast float %4766, %4504
  %4768 = fmul fast float %4758, %4753
  %4769 = fsub fast float 1.000000e+00, %4753
  %4770 = fadd fast float %4769, %4768
  %4771 = fmul fast float %4754, %4754
  %4772 = fmul fast float %4771, %4759
  %4773 = fadd fast float %4772, %4758
  %4774 = bitcast float %4773 to i32
  %4775 = ashr i32 %4774, 1
  %4776 = add nsw i32 %4775, 532487669
  %4777 = bitcast i32 %4776 to float
  %4778 = fadd fast float %4777, %4754
  %4779 = fmul fast float %4770, %4770
  %4780 = fmul fast float %4779, %4767
  %4781 = fmul fast float %4780, %4778
  %4782 = fdiv fast float 0x3FF0A00000000000, %4781
  %4783 = fmul fast float %4782, %4758
  %4784 = call float @dx.op.unary.f32(i32 6, float %4746)  ; FAbs(value)
  %4785 = fsub fast float 1.000000e+00, %4784
  %4786 = bitcast float %4785 to i32
  %4787 = sitofp i32 %4786 to float
  %4788 = fmul fast float %4787, 5.000000e+00
  %4789 = fadd fast float %4788, 0xC1EFBF8940000000
  %4790 = fptosi float %4789 to i32
  %4791 = bitcast i32 %4790 to float
  %4792 = fsub fast float 1.000000e+00, %4491
  %4793 = fsub fast float 1.000000e+00, %4492
  %4794 = fsub fast float 1.000000e+00, %4502
  %4795 = fmul fast float %4791, %4792
  %4796 = fmul fast float %4791, %4793
  %4797 = fmul fast float %4791, %4794
  %4798 = fadd fast float %4795, %4491
  %4799 = fadd fast float %4796, %4492
  %4800 = fadd fast float %4797, %4502
  br i1 %4628, label %4801, label %4824

; <label>:4801                                    ; preds = %4733
  %4802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %3270, float %4784, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4803 = extractvalue %dx.types.ResRet.f32 %4802, 0
  %4804 = extractvalue %dx.types.ResRet.f32 %4802, 1
  %4805 = extractvalue %dx.types.ResRet.f32 %4802, 2
  %4806 = fadd fast float %4803, -5.000000e-01
  %4807 = fadd fast float %4804, -5.000000e-01
  %4808 = fadd fast float %4805, -5.000000e-01
  %4809 = fmul fast float %4491, 4.000000e+00
  %4810 = fmul fast float %4809, %4792
  %4811 = fmul fast float %4810, %4806
  %4812 = fmul fast float %4492, 4.000000e+00
  %4813 = fmul fast float %4812, %4793
  %4814 = fmul fast float %4813, %4807
  %4815 = fmul fast float %4502, 4.000000e+00
  %4816 = fmul fast float %4815, %4794
  %4817 = fmul fast float %4816, %4808
  %4818 = fadd fast float %4811, %4798
  %4819 = fadd fast float %4814, %4799
  %4820 = fadd fast float %4817, %4800
  %4821 = call float @dx.op.unary.f32(i32 7, float %4818)  ; Saturate(value)
  %4822 = call float @dx.op.unary.f32(i32 7, float %4819)  ; Saturate(value)
  %4823 = call float @dx.op.unary.f32(i32 7, float %4820)  ; Saturate(value)
  br label %4824

; <label>:4824                                    ; preds = %4801, %4733
  %4825 = phi float [ %4821, %4801 ], [ %4798, %4733 ]
  %4826 = phi float [ %4822, %4801 ], [ %4799, %4733 ]
  %4827 = phi float [ %4823, %4801 ], [ %4800, %4733 ]
  %4828 = fmul fast float %4745, 9.843750e-01
  %4829 = fadd fast float %4828, 7.812500e-03
  %4830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %4829, float %4618, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4831 = extractvalue %dx.types.ResRet.f32 %4830, 2
  %4832 = extractvalue %dx.types.ResRet.f32 %4830, 3
  %4833 = fmul fast float %4831, %4491
  %4834 = fmul fast float %4831, %4492
  %4835 = fmul fast float %4831, %4502
  %4836 = fadd fast float %4833, %4832
  %4837 = fadd fast float %4834, %4832
  %4838 = fadd fast float %4835, %4832
  br i1 %4628, label %4839, label %4862

; <label>:4839                                    ; preds = %4824
  %4840 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %3270, float %4745, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4841 = extractvalue %dx.types.ResRet.f32 %4840, 0
  %4842 = extractvalue %dx.types.ResRet.f32 %4840, 1
  %4843 = extractvalue %dx.types.ResRet.f32 %4840, 2
  %4844 = fadd fast float %4841, -5.000000e-01
  %4845 = fadd fast float %4842, -5.000000e-01
  %4846 = fadd fast float %4843, -5.000000e-01
  %4847 = fmul fast float %4491, 4.000000e+00
  %4848 = fmul fast float %4847, %4792
  %4849 = fmul fast float %4848, %4844
  %4850 = fmul fast float %4492, 4.000000e+00
  %4851 = fmul fast float %4850, %4793
  %4852 = fmul fast float %4851, %4845
  %4853 = fmul fast float %4502, 4.000000e+00
  %4854 = fmul fast float %4853, %4794
  %4855 = fmul fast float %4854, %4846
  %4856 = fadd fast float %4849, %4836
  %4857 = fadd fast float %4852, %4837
  %4858 = fadd fast float %4855, %4838
  %4859 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4860 = call float @dx.op.unary.f32(i32 7, float %4857)  ; Saturate(value)
  %4861 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  br label %4862

; <label>:4862                                    ; preds = %4839, %4824
  %4863 = phi float [ %4859, %4839 ], [ %4836, %4824 ]
  %4864 = phi float [ %4860, %4839 ], [ %4837, %4824 ]
  %4865 = phi float [ %4861, %4839 ], [ %4838, %4824 ]
  %4866 = call float @dx.op.binary.f32(i32 35, float %4864, float %4865)  ; FMax(a,b)
  %4867 = call float @dx.op.binary.f32(i32 35, float %4863, float %4866)  ; FMax(a,b)
  %4868 = fsub fast float 1.000000e+00, %4867
  %4869 = fmul fast float %4751, %4734
  %4870 = fmul fast float %4869, %4868
  %4871 = fmul fast float %4751, %4735
  %4872 = fmul fast float %4871, %4868
  %4873 = fmul fast float %4751, %4736
  %4874 = fmul fast float %4873, %4868
  %4875 = fmul fast float %4869, %4783
  %4876 = fmul fast float %4875, %4825
  %4877 = fmul fast float %4871, %4783
  %4878 = fmul fast float %4877, %4826
  %4879 = fmul fast float %4873, %4783
  %4880 = fmul fast float %4879, %4827
  %4881 = fadd fast float %4870, %4662
  %4882 = fmul fast float %4881, %939
  %4883 = fadd fast float %4872, %4663
  %4884 = fmul fast float %4883, %939
  %4885 = fadd fast float %4874, %4664
  %4886 = fmul fast float %4885, %939
  %4887 = fadd fast float %4876, %4671
  %4888 = fmul fast float %4887, %939
  %4889 = fadd fast float %4878, %4673
  %4890 = fmul fast float %4889, %939
  %4891 = fadd fast float %4880, %4675
  %4892 = fmul fast float %4891, %939
  br label %4893

; <label>:4893                                    ; preds = %4862, %4726, %4655
  %4894 = phi float [ %4672, %4655 ], [ %4672, %4726 ], [ %4888, %4862 ]
  %4895 = phi float [ %4674, %4655 ], [ %4674, %4726 ], [ %4890, %4862 ]
  %4896 = phi float [ %4676, %4655 ], [ %4676, %4726 ], [ %4892, %4862 ]
  %4897 = phi float [ %4668, %4655 ], [ %4668, %4726 ], [ %4882, %4862 ]
  %4898 = phi float [ %4669, %4655 ], [ %4669, %4726 ], [ %4884, %4862 ]
  %4899 = phi float [ %4670, %4655 ], [ %4670, %4726 ], [ %4886, %4862 ]
  %4900 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4901 = extractvalue %dx.types.CBufRet.i32 %4900, 0
  %4902 = icmp eq i32 %4901, 0
  br i1 %4902, label %5322, label %4903

; <label>:4903                                    ; preds = %4893
  %4904 = fptoui float %71 to i32
  %4905 = fptoui float %72 to i32
  %4906 = lshr i32 %4904, 4
  %4907 = lshr i32 %4905, 4
  %4908 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4909 = extractvalue %dx.types.CBufRet.i32 %4908, 0
  %4910 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4907, i32 %4909, i32 %4906)  ; UMad(a,b,c)
  %4911 = add nsw i32 %4901, -1
  %4912 = call i32 @dx.op.binary.i32(i32 37, i32 %4911, i32 0)  ; IMax(a,b)
  %4913 = call float @dx.op.binary.f32(i32 35, float %66, float 0.000000e+00)  ; FMax(a,b)
  %4914 = fptoui float %4913 to i32
  %4915 = lshr i32 %4914, 5
  %4916 = call i32 @dx.op.binary.i32(i32 40, i32 %4915, i32 8191)  ; UMin(a,b)
  %4917 = shl i32 %4916, 2
  %4918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4917, i32 undef)  ; BufferLoad(srv,index,wot)
  %4919 = extractvalue %dx.types.ResRet.i32 %4918, 0
  %4920 = lshr i32 %4919, 16
  %4921 = and i32 %4919, 65535
  %4922 = lshr i32 %4919, 21
  %4923 = lshr i32 %4921, 5
  %4924 = call i32 @dx.op.binary.i32(i32 40, i32 %4923, i32 %4912)  ; UMin(a,b)
  %4925 = icmp ugt i32 %4922, %4924
  br i1 %4925, label %5322, label %4926

; <label>:4926                                    ; preds = %4903
  br label %4927

; <label>:4927                                    ; preds = %5312, %4926
  %4928 = phi i32 [ %5319, %5312 ], [ %4922, %4926 ]
  %4929 = phi float [ %5313, %5312 ], [ %4894, %4926 ]
  %4930 = phi float [ %5314, %5312 ], [ %4895, %4926 ]
  %4931 = phi float [ %5315, %5312 ], [ %4896, %4926 ]
  %4932 = phi float [ %5316, %5312 ], [ %4897, %4926 ]
  %4933 = phi float [ %5317, %5312 ], [ %4898, %4926 ]
  %4934 = phi float [ %5318, %5312 ], [ %4899, %4926 ]
  %4935 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4936 = extractvalue %dx.types.CBufRet.i32 %4935, 0
  %4937 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4910, i32 %4936, i32 %4928)  ; UMad(a,b,c)
  %4938 = shl i32 %4937, 2
  %4939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4938, i32 undef)  ; BufferLoad(srv,index,wot)
  %4940 = extractvalue %dx.types.ResRet.i32 %4939, 0
  %4941 = shl i32 %4928, 5
  %4942 = sub nsw i32 %4920, %4941
  %4943 = call i32 @dx.op.binary.i32(i32 37, i32 %4942, i32 0)  ; IMax(a,b)
  %4944 = call i32 @dx.op.binary.i32(i32 38, i32 %4943, i32 31)  ; IMin(a,b)
  %4945 = sub nsw i32 1, %4920
  %4946 = add nsw i32 %4945, %4921
  %4947 = call i32 @dx.op.binary.i32(i32 37, i32 %4946, i32 0)  ; IMax(a,b)
  %4948 = call i32 @dx.op.binary.i32(i32 38, i32 %4947, i32 32)  ; IMin(a,b)
  %4949 = and i32 %4948, 31
  %4950 = shl i32 -1, %4949
  %4951 = xor i32 %4950, -1
  %4952 = and i32 %4944, 31
  %4953 = shl i32 %4951, %4952
  %4954 = icmp eq i32 %4948, 32
  %4955 = select i1 %4954, i32 -1, i32 %4953
  %4956 = and i32 %4955, %4940
  %4957 = icmp eq i32 %4956, 0
  br i1 %4957, label %5312, label %4958

; <label>:4958                                    ; preds = %4927
  br label %4959

; <label>:4959                                    ; preds = %5039, %4958
  %4960 = phi i32 [ %4971, %5039 ], [ %4956, %4958 ]
  %4961 = phi float [ %5040, %5039 ], [ %4929, %4958 ]
  %4962 = phi float [ %5041, %5039 ], [ %4930, %4958 ]
  %4963 = phi float [ %5042, %5039 ], [ %4931, %4958 ]
  %4964 = phi float [ %5043, %5039 ], [ %4932, %4958 ]
  %4965 = phi float [ %5044, %5039 ], [ %4933, %4958 ]
  %4966 = phi float [ %5045, %5039 ], [ %4934, %4958 ]
  %4967 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4960)  ; FirstbitLo(value)
  %4968 = add i32 %4967, %4941
  %4969 = and i32 %4967, 31
  %4970 = shl i32 1, %4969
  %4971 = xor i32 %4970, %4960
  %4972 = mul i32 %4968, 112
  %4973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4972, i32 undef)  ; BufferLoad(srv,index,wot)
  %4974 = extractvalue %dx.types.ResRet.f32 %4973, 0
  %4975 = extractvalue %dx.types.ResRet.f32 %4973, 1
  %4976 = extractvalue %dx.types.ResRet.f32 %4973, 2
  %4977 = or i32 %4972, 12
  %4978 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4977, i32 undef)  ; BufferLoad(srv,index,wot)
  %4979 = extractvalue %dx.types.ResRet.f32 %4978, 0
  %4980 = add i32 %4972, 44
  %4981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4980, i32 undef)  ; BufferLoad(srv,index,wot)
  %4982 = extractvalue %dx.types.ResRet.f32 %4981, 0
  %4983 = add i32 %4972, 48
  %4984 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4983, i32 undef)  ; BufferLoad(srv,index,wot)
  %4985 = extractvalue %dx.types.ResRet.f32 %4984, 0
  %4986 = extractvalue %dx.types.ResRet.f32 %4984, 1
  %4987 = extractvalue %dx.types.ResRet.f32 %4984, 2
  %4988 = add i32 %4972, 80
  %4989 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4988, i32 undef)  ; BufferLoad(srv,index,wot)
  %4990 = extractvalue %dx.types.ResRet.f32 %4989, 1
  %4991 = extractvalue %dx.types.ResRet.f32 %4989, 2
  %4992 = call float @dx.op.dot3.f32(i32 55, float %4974, float %4975, float %4976, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4993 = select i1 %197, float %4990, float %4974
  %4994 = select i1 %197, float %4992, float %4975
  %4995 = select i1 %197, float %4991, float %4976
  %4996 = fsub fast float %4985, %158
  %4997 = fsub fast float %4986, %159
  %4998 = fsub fast float %4987, %160
  %4999 = call float @dx.op.dot3.f32(i32 55, float %4996, float %4997, float %4998, float %4996, float %4997, float %4998)  ; Dot3(ax,ay,az,bx,by,bz)
  %5000 = call float @dx.op.unary.f32(i32 24, float %4999)  ; Sqrt(value)
  %5001 = fdiv fast float 1.000000e+00, %5000
  %5002 = fmul fast float %5001, %4996
  %5003 = fmul fast float %5001, %4997
  %5004 = fmul fast float %5001, %4998
  %5005 = fadd fast float %5000, %4979
  %5006 = fdiv fast float 1.000000e+00, %5005
  %5007 = fmul float %4982, %5006
  %5008 = fmul float %5007, %5007
  %5009 = call float @dx.op.unary.f32(i32 7, float %5008)  ; Saturate(value)
  %5010 = and i32 %4970, %4956
  %5011 = icmp eq i32 %5010, 0
  br i1 %5011, label %5034, label %5012, !dx.controlflow.hints !70

; <label>:5012                                    ; preds = %4959
  %5013 = lshr i32 %4904, 5
  %5014 = lshr i32 %4905, 5
  %5015 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %5013, i32 %5014, i32 %4968, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5016 = extractvalue %dx.types.ResRet.i32 %5015, 0
  %5017 = and i32 %5016, 3
  %5018 = icmp eq i32 %5017, 0
  %5019 = select i1 %5018, float 1.000000e+00, float 0.000000e+00
  %5020 = icmp eq i32 %5017, 3
  br i1 %5020, label %5021, label %5034

; <label>:5021                                    ; preds = %5012
  %5022 = lshr i32 %5016, 10
  %5023 = and i32 %5022, 8160
  %5024 = and i32 %4905, 31
  %5025 = or i32 %5023, %5024
  %5026 = lshr i32 %5016, 1
  %5027 = and i32 %5026, 16352
  %5028 = and i32 %4904, 31
  %5029 = or i32 %5027, %5028
  %5030 = lshr i32 %5016, 23
  %5031 = and i32 %5030, 255
  %5032 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %18, i32 0, i32 %5029, i32 %5025, i32 %5031, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5033 = extractvalue %dx.types.ResRet.f32 %5032, 0
  br label %5034

; <label>:5034                                    ; preds = %5021, %5012, %4959
  %5035 = phi float [ %5033, %5021 ], [ %5019, %5012 ], [ 0.000000e+00, %4959 ]
  %5036 = call float @dx.op.binary.f32(i32 36, float %5035, float %5035)  ; FMin(a,b)
  %5037 = call float @dx.op.binary.f32(i32 36, float %5035, float %5036)  ; FMin(a,b)
  %5038 = fcmp fast ogt float %5037, 0.000000e+00
  br i1 %5038, label %5047, label %5039, !dx.controlflow.hints !71

; <label>:5039                                    ; preds = %5283, %5034
  %5040 = phi float [ %4961, %5034 ], [ %5308, %5283 ]
  %5041 = phi float [ %4962, %5034 ], [ %5309, %5283 ]
  %5042 = phi float [ %4963, %5034 ], [ %5310, %5283 ]
  %5043 = phi float [ %4964, %5034 ], [ %5299, %5283 ]
  %5044 = phi float [ %4965, %5034 ], [ %5300, %5283 ]
  %5045 = phi float [ %4966, %5034 ], [ %5301, %5283 ]
  %5046 = icmp eq i32 %4960, %4970
  br i1 %5046, label %5311, label %4959

; <label>:5047                                    ; preds = %5034
  %5048 = fmul fast float %5035, %4993
  %5049 = fmul fast float %5035, %4994
  %5050 = fmul fast float %5035, %4995
  %5051 = fsub fast float %4987, %3698
  %5052 = fcmp fast ogt float %5051, 0.000000e+00
  %5053 = fsub fast float %160, %3698
  %5054 = fcmp fast ogt float %5053, 0.000000e+00
  %5055 = xor i1 %5054, %5052
  %5056 = fsub fast float %3698, %4987
  %5057 = fmul fast float %5056, 2.000000e+00
  %5058 = fadd fast float %5057, %4987
  %5059 = select i1 %5055, float %4987, float %5058
  %5060 = fsub fast float %5059, %160
  %5061 = call float @dx.op.dot3.f32(i32 55, float %4996, float %4997, float %5060, float %4996, float %4997, float %5060)  ; Dot3(ax,ay,az,bx,by,bz)
  %5062 = call float @dx.op.unary.f32(i32 25, float %5061)  ; Rsqrt(value)
  %5063 = fmul fast float %5062, %4996
  %5064 = fmul fast float %5062, %4997
  %5065 = fmul fast float %5062, %5060
  %5066 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3706)  ; Dot3(ax,ay,az,bx,by,bz)
  %5067 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5063, float %5064, float %5065)  ; Dot3(ax,ay,az,bx,by,bz)
  %5068 = fdiv fast float 1.000000e+00, %5067
  %5069 = fmul fast float %5068, %5066
  %5070 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5053, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5071 = fcmp fast ogt float %5070, 0.000000e+00
  %5072 = fcmp fast olt float %5070, 0.000000e+00
  %5073 = zext i1 %5071 to i32
  %5074 = zext i1 %5072 to i32
  %5075 = sub nsw i32 %5073, %5074
  %5076 = sitofp i32 %5075 to float
  %5077 = fsub fast float %5059, %3698
  %5078 = call float @dx.op.dot3.f32(i32 55, float %4996, float %4997, float %5077, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5079 = fcmp fast ogt float %5078, 0.000000e+00
  %5080 = fcmp fast olt float %5078, 0.000000e+00
  %5081 = zext i1 %5079 to i32
  %5082 = zext i1 %5080 to i32
  %5083 = sub nsw i32 %5081, %5082
  %5084 = sitofp i32 %5083 to float
  %5085 = fcmp fast une float %5076, %5084
  br i1 %5085, label %5086, label %5096

; <label>:5086                                    ; preds = %5047
  %5087 = fmul fast float %5069, %5065
  %5088 = fmul fast float %5069, %5064
  %5089 = fmul fast float %5069, %5063
  %5090 = fmul fast float %5089, %5089
  %5091 = fmul fast float %5088, %5088
  %5092 = fadd fast float %5090, %5091
  %5093 = fmul fast float %5087, %5087
  %5094 = fadd fast float %5092, %5093
  %5095 = call float @dx.op.unary.f32(i32 24, float %5094)  ; Sqrt(value)
  br label %5108

; <label>:5096                                    ; preds = %5047
  %5097 = icmp slt i32 %5075, 0
  br i1 %5097, label %5098, label %5108

; <label>:5098                                    ; preds = %5096
  %5099 = fsub fast float %158, %4985
  %5100 = fsub fast float %159, %4986
  %5101 = fsub fast float %160, %5059
  %5102 = fmul fast float %5099, %5099
  %5103 = fmul fast float %5100, %5100
  %5104 = fadd fast float %5102, %5103
  %5105 = fmul fast float %5101, %5101
  %5106 = fadd fast float %5104, %5105
  %5107 = call float @dx.op.unary.f32(i32 24, float %5106)  ; Sqrt(value)
  br label %5108

; <label>:5108                                    ; preds = %5098, %5096, %5086
  %5109 = phi float [ %5095, %5086 ], [ %5107, %5098 ], [ 0.000000e+00, %5096 ]
  %5110 = and i1 %5054, %5052
  %5111 = fsub fast float -0.000000e+00, %5109
  %5112 = select i1 %5110, float -0.000000e+00, float %5111
  %5113 = fmul fast float %3699, 0x3FF7154760000000
  %5114 = fmul fast float %5113, %5112
  %5115 = fmul fast float %3700, 0x3FF7154760000000
  %5116 = fmul fast float %5115, %5112
  %5117 = fmul fast float %3701, 0x3FF7154760000000
  %5118 = fmul fast float %5117, %5112
  %5119 = call float @dx.op.unary.f32(i32 21, float %5114)  ; Exp(value)
  %5120 = call float @dx.op.unary.f32(i32 21, float %5116)  ; Exp(value)
  %5121 = call float @dx.op.unary.f32(i32 21, float %5118)  ; Exp(value)
  %5122 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5123 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5124 = call float @dx.op.unary.f32(i32 7, float %5121)  ; Saturate(value)
  %5125 = fmul fast float %5048, %5122
  %5126 = fmul fast float %5049, %5123
  %5127 = fmul fast float %5050, %5124
  %5128 = fsub fast float %5002, %4490
  %5129 = fsub fast float %5003, %4489
  %5130 = fsub fast float %5004, %4488
  %5131 = call float @dx.op.dot3.f32(i32 55, float %5128, float %5129, float %5130, float %5128, float %5129, float %5130)  ; Dot3(ax,ay,az,bx,by,bz)
  %5132 = call float @dx.op.unary.f32(i32 25, float %5131)  ; Rsqrt(value)
  %5133 = fmul fast float %5132, %5128
  %5134 = fmul fast float %5132, %5129
  %5135 = fmul fast float %5132, %5130
  %5136 = call float @dx.op.dot3.f32(i32 55, float %5002, float %5003, float %5004, float %4497, float %4498, float %4499)  ; Dot3(ax,ay,az,bx,by,bz)
  %5137 = call float @dx.op.dot3.f32(i32 55, float %4487, float %4486, float %4485, float %5133, float %5134, float %5135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5138 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5139 = fmul fast float %5138, %5009
  %5140 = fmul fast float %5138, %5138
  %5141 = fmul fast float %5140, %4677
  %5142 = call float @dx.op.unary.f32(i32 7, float %5141)  ; Saturate(value)
  %5143 = fmul fast float %5139, %5142
  %5144 = bitcast float %4999 to i32
  %5145 = ashr i32 %5144, 1
  %5146 = sub nsw i32 1597463007, %5145
  %5147 = bitcast i32 %5146 to float
  %5148 = fmul fast float %5147, %4996
  %5149 = fmul fast float %5147, %4997
  %5150 = fmul fast float %5147, %4998
  %5151 = fsub fast float %5148, %4490
  %5152 = fsub fast float %5149, %4489
  %5153 = fsub fast float %5150, %4488
  %5154 = call float @dx.op.dot3.f32(i32 55, float %5151, float %5152, float %5153, float %5151, float %5152, float %5153)  ; Dot3(ax,ay,az,bx,by,bz)
  %5155 = call float @dx.op.unary.f32(i32 25, float %5154)  ; Rsqrt(value)
  %5156 = fmul fast float %5151, %5155
  %5157 = fmul fast float %5152, %5155
  %5158 = fmul fast float %5153, %5155
  %5159 = call float @dx.op.dot3.f32(i32 55, float %4497, float %4498, float %4499, float %5156, float %5157, float %5158)  ; Dot3(ax,ay,az,bx,by,bz)
  %5160 = fmul fast float %5159, %5159
  %5161 = call float @dx.op.unary.f32(i32 6, float %5136)  ; FAbs(value)
  %5162 = fsub fast float 1.000000e+00, %4500
  %5163 = call float @dx.op.binary.f32(i32 35, float %5162, float 0x3F847AE140000000)  ; FMax(a,b)
  %5164 = fmul fast float %5163, %5163
  %5165 = fmul fast float %5164, %5164
  %5166 = fsub fast float 1.000000e+00, %5165
  %5167 = fmul fast float %4504, %4504
  %5168 = fmul fast float %5167, %5166
  %5169 = fadd fast float %5168, %5165
  %5170 = bitcast float %5169 to i32
  %5171 = ashr i32 %5170, 1
  %5172 = add nsw i32 %5171, 532487669
  %5173 = bitcast i32 %5172 to float
  %5174 = fadd fast float %5173, %4504
  %5175 = fmul fast float %5165, %5160
  %5176 = fsub fast float 1.000000e+00, %5160
  %5177 = fadd fast float %5176, %5175
  %5178 = fmul fast float %5161, %5161
  %5179 = fmul fast float %5178, %5166
  %5180 = fadd fast float %5179, %5165
  %5181 = bitcast float %5180 to i32
  %5182 = ashr i32 %5181, 1
  %5183 = add nsw i32 %5182, 532487669
  %5184 = bitcast i32 %5183 to float
  %5185 = fadd fast float %5184, %5161
  %5186 = fmul fast float %5177, %5177
  %5187 = fmul fast float %5186, %5174
  %5188 = fmul fast float %5187, %5185
  %5189 = fdiv fast float 1.000000e+00, %5188
  %5190 = bitcast float %5165 to i32
  %5191 = sitofp i32 %5190 to float
  %5192 = fmul fast float %5191, 0x3FE7F73180000000
  %5193 = fadd fast float %5192, 0x41AFE27C40000000
  %5194 = fptosi float %5193 to i32
  %5195 = bitcast i32 %5194 to float
  %5196 = fmul fast float %4982, 0x3FD80E9D60000000
  %5197 = fmul fast float %5196, %5147
  %5198 = fadd fast float %5195, %5197
  %5199 = bitcast float %5198 to i32
  %5200 = sub nsw i32 2129859010, %5199
  %5201 = bitcast i32 %5200 to float
  %5202 = fmul fast float %5165, %5189
  %5203 = fmul fast float %5202, %5195
  %5204 = fmul fast float %5203, %5201
  %5205 = call float @dx.op.unary.f32(i32 6, float %5137)  ; FAbs(value)
  %5206 = fsub fast float 1.000000e+00, %5205
  %5207 = bitcast float %5206 to i32
  %5208 = sitofp i32 %5207 to float
  %5209 = fmul fast float %5208, 5.000000e+00
  %5210 = fadd fast float %5209, 0xC1EFBF8940000000
  %5211 = fptosi float %5210 to i32
  %5212 = bitcast i32 %5211 to float
  %5213 = fsub fast float 1.000000e+00, %4491
  %5214 = fsub fast float 1.000000e+00, %4492
  %5215 = fsub fast float 1.000000e+00, %4502
  %5216 = fmul fast float %5212, %5213
  %5217 = fmul fast float %5212, %5214
  %5218 = fmul fast float %5212, %5215
  %5219 = fadd fast float %5216, %4491
  %5220 = fadd fast float %5217, %4492
  %5221 = fadd fast float %5218, %4502
  br i1 %4628, label %5222, label %5245

; <label>:5222                                    ; preds = %5108
  %5223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %3270, float %5205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5224 = extractvalue %dx.types.ResRet.f32 %5223, 0
  %5225 = extractvalue %dx.types.ResRet.f32 %5223, 1
  %5226 = extractvalue %dx.types.ResRet.f32 %5223, 2
  %5227 = fadd fast float %5224, -5.000000e-01
  %5228 = fadd fast float %5225, -5.000000e-01
  %5229 = fadd fast float %5226, -5.000000e-01
  %5230 = fmul fast float %4491, 4.000000e+00
  %5231 = fmul fast float %5230, %5213
  %5232 = fmul fast float %5231, %5227
  %5233 = fmul fast float %4492, 4.000000e+00
  %5234 = fmul fast float %5233, %5214
  %5235 = fmul fast float %5234, %5228
  %5236 = fmul fast float %4502, 4.000000e+00
  %5237 = fmul fast float %5236, %5215
  %5238 = fmul fast float %5237, %5229
  %5239 = fadd fast float %5232, %5219
  %5240 = fadd fast float %5235, %5220
  %5241 = fadd fast float %5238, %5221
  %5242 = call float @dx.op.unary.f32(i32 7, float %5239)  ; Saturate(value)
  %5243 = call float @dx.op.unary.f32(i32 7, float %5240)  ; Saturate(value)
  %5244 = call float @dx.op.unary.f32(i32 7, float %5241)  ; Saturate(value)
  br label %5245

; <label>:5245                                    ; preds = %5222, %5108
  %5246 = phi float [ %5242, %5222 ], [ %5219, %5108 ]
  %5247 = phi float [ %5243, %5222 ], [ %5220, %5108 ]
  %5248 = phi float [ %5244, %5222 ], [ %5221, %5108 ]
  %5249 = fmul fast float %5136, 9.843750e-01
  %5250 = fadd fast float %5249, 7.812500e-03
  %5251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %5250, float %4618, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5252 = extractvalue %dx.types.ResRet.f32 %5251, 2
  %5253 = extractvalue %dx.types.ResRet.f32 %5251, 3
  %5254 = fmul fast float %5252, %4491
  %5255 = fmul fast float %5252, %4492
  %5256 = fmul fast float %5252, %4502
  %5257 = fadd fast float %5254, %5253
  %5258 = fadd fast float %5255, %5253
  %5259 = fadd fast float %5256, %5253
  br i1 %4628, label %5260, label %5283

; <label>:5260                                    ; preds = %5245
  %5261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %3270, float %5136, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5262 = extractvalue %dx.types.ResRet.f32 %5261, 0
  %5263 = extractvalue %dx.types.ResRet.f32 %5261, 1
  %5264 = extractvalue %dx.types.ResRet.f32 %5261, 2
  %5265 = fadd fast float %5262, -5.000000e-01
  %5266 = fadd fast float %5263, -5.000000e-01
  %5267 = fadd fast float %5264, -5.000000e-01
  %5268 = fmul fast float %4491, 4.000000e+00
  %5269 = fmul fast float %5268, %5213
  %5270 = fmul fast float %5269, %5265
  %5271 = fmul fast float %4492, 4.000000e+00
  %5272 = fmul fast float %5271, %5214
  %5273 = fmul fast float %5272, %5266
  %5274 = fmul fast float %4502, 4.000000e+00
  %5275 = fmul fast float %5274, %5215
  %5276 = fmul fast float %5275, %5267
  %5277 = fadd fast float %5270, %5257
  %5278 = fadd fast float %5273, %5258
  %5279 = fadd fast float %5276, %5259
  %5280 = call float @dx.op.unary.f32(i32 7, float %5277)  ; Saturate(value)
  %5281 = call float @dx.op.unary.f32(i32 7, float %5278)  ; Saturate(value)
  %5282 = call float @dx.op.unary.f32(i32 7, float %5279)  ; Saturate(value)
  br label %5283

; <label>:5283                                    ; preds = %5260, %5245
  %5284 = phi float [ %5280, %5260 ], [ %5257, %5245 ]
  %5285 = phi float [ %5281, %5260 ], [ %5258, %5245 ]
  %5286 = phi float [ %5282, %5260 ], [ %5259, %5245 ]
  %5287 = call float @dx.op.binary.f32(i32 35, float %5285, float %5286)  ; FMax(a,b)
  %5288 = call float @dx.op.binary.f32(i32 35, float %5284, float %5287)  ; FMax(a,b)
  %5289 = fsub fast float 1.000000e+00, %5288
  %5290 = fmul fast float %5125, %939
  %5291 = fmul fast float %5290, %5143
  %5292 = fmul fast float %5291, %5289
  %5293 = fmul fast float %5126, %939
  %5294 = fmul fast float %5293, %5143
  %5295 = fmul fast float %5294, %5289
  %5296 = fmul fast float %5127, %939
  %5297 = fmul fast float %5296, %5143
  %5298 = fmul fast float %5297, %5289
  %5299 = fadd fast float %5292, %4964
  %5300 = fadd fast float %5295, %4965
  %5301 = fadd fast float %5298, %4966
  %5302 = fmul fast float %5291, %5204
  %5303 = fmul fast float %5302, %5246
  %5304 = fmul fast float %5294, %5204
  %5305 = fmul fast float %5304, %5247
  %5306 = fmul fast float %5297, %5204
  %5307 = fmul fast float %5306, %5248
  %5308 = fadd fast float %5303, %4961
  %5309 = fadd fast float %5305, %4962
  %5310 = fadd fast float %5307, %4963
  br label %5039

; <label>:5311                                    ; preds = %5039
  br label %5312

; <label>:5312                                    ; preds = %5311, %4927
  %5313 = phi float [ %4929, %4927 ], [ %5040, %5311 ]
  %5314 = phi float [ %4930, %4927 ], [ %5041, %5311 ]
  %5315 = phi float [ %4931, %4927 ], [ %5042, %5311 ]
  %5316 = phi float [ %4932, %4927 ], [ %5043, %5311 ]
  %5317 = phi float [ %4933, %4927 ], [ %5044, %5311 ]
  %5318 = phi float [ %4934, %4927 ], [ %5045, %5311 ]
  %5319 = add i32 %4928, 1
  %5320 = icmp ugt i32 %5319, %4924
  br i1 %5320, label %5321, label %4927

; <label>:5321                                    ; preds = %5312
  br label %5322

; <label>:5322                                    ; preds = %5321, %4903, %4893
  %5323 = phi float [ %4894, %4893 ], [ %4894, %4903 ], [ %5313, %5321 ]
  %5324 = phi float [ %4895, %4893 ], [ %4895, %4903 ], [ %5314, %5321 ]
  %5325 = phi float [ %4896, %4893 ], [ %4896, %4903 ], [ %5315, %5321 ]
  %5326 = phi float [ %4897, %4893 ], [ %4897, %4903 ], [ %5316, %5321 ]
  %5327 = phi float [ %4898, %4893 ], [ %4898, %4903 ], [ %5317, %5321 ]
  %5328 = phi float [ %4899, %4893 ], [ %4899, %4903 ], [ %5318, %5321 ]
  %5329 = call float @dx.op.unary.f32(i32 24, float %4494)  ; Sqrt(value)
  %5330 = call float @dx.op.unary.f32(i32 24, float %4495)  ; Sqrt(value)
  %5331 = call float @dx.op.unary.f32(i32 24, float %4496)  ; Sqrt(value)
  %5332 = fmul fast float %5329, %5326
  %5333 = fmul fast float %5330, %5327
  %5334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5335 = extractvalue %dx.types.CBufRet.f32 %5334, 0
  br i1 %197, label %5336, label %5357

; <label>:5336                                    ; preds = %5322
  %5337 = fadd fast float %5328, %3273
  %5338 = fmul fast float %5337, %3271
  %5339 = fsub fast float 1.000000e+00, %3271
  %5340 = call float @dx.op.unary.f32(i32 7, float %5339)  ; Saturate(value)
  %5341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5342 = extractvalue %dx.types.CBufRet.f32 %5341, 3
  %5343 = fmul fast float %5342, %5340
  %5344 = fadd fast float %5343, %5338
  %5345 = fsub fast float 1.000000e+00, %4504
  %5346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5347 = extractvalue %dx.types.CBufRet.f32 %5346, 0
  %5348 = fmul fast float %5347, %5345
  %5349 = fsub fast float %5344, %5348
  %5350 = fadd fast float %5333, %5332
  %5351 = fmul fast float %5335, %5350
  %5352 = extractvalue %dx.types.CBufRet.f32 %5341, 1
  %5353 = fsub fast float %5349, %5352
  %5354 = extractvalue %dx.types.CBufRet.f32 %5341, 2
  %5355 = fmul fast float %5353, %5354
  %5356 = call float @dx.op.unary.f32(i32 7, float %5355)  ; Saturate(value)
  br label %5373

; <label>:5357                                    ; preds = %5322
  %5358 = fmul fast float %5331, %5328
  %5359 = fmul fast float %5335, %5332
  %5360 = fmul fast float %5335, %5333
  %5361 = fmul fast float %5358, %5335
  %5362 = add i32 %28, 356
  %5363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5362, i32 undef)  ; BufferLoad(srv,index,wot)
  %5364 = extractvalue %dx.types.ResRet.i32 %5363, 0
  %5365 = and i32 %5364, 32
  %5366 = icmp eq i32 %5365, 0
  br i1 %5366, label %5373, label %5367

; <label>:5367                                    ; preds = %5357
  %5368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5369 = extractvalue %dx.types.CBufRet.f32 %5368, 0
  %5370 = fmul fast float %5369, 0x3FE99999A0000000
  %5371 = fadd fast float %5369, %5359
  %5372 = fadd fast float %5370, %5361
  br label %5373

; <label>:5373                                    ; preds = %5367, %5357, %5336
  %5374 = phi float [ %5351, %5336 ], [ %5371, %5367 ], [ %5359, %5357 ]
  %5375 = phi float [ %5356, %5336 ], [ %5360, %5367 ], [ %5360, %5357 ]
  %5376 = phi float [ 1.000000e+00, %5336 ], [ %5372, %5367 ], [ %5361, %5357 ]
  %5377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5378 = extractvalue %dx.types.CBufRet.f32 %5377, 0
  %5379 = fmul fast float %5378, %5324
  %5380 = fmul fast float %5378, %5325
  %5381 = fadd fast float %5324, %5323
  %5382 = select i1 %197, float %5381, float %5323
  %5383 = fmul float %5382, %5378
  %5384 = select i1 %197, float 0.000000e+00, float %5379
  %5385 = select i1 %197, float 0.000000e+00, float %5380
  %5386 = fmul fast float %5374, %5329
  %5387 = fmul fast float %5375, %5330
  %5388 = fmul fast float %5376, %5331
  %5389 = fadd fast float %5383, %5386
  %5390 = fadd fast float %5384, %5387
  %5391 = fadd fast float %5385, %5388
  %5392 = select i1 %197, float %5375, float %5390
  %5393 = select i1 %197, float %5376, float %5391
  %5394 = call float @dx.op.binary.f32(i32 36, float %5389, float 3.225500e+04)  ; FMin(a,b)
  %5395 = call float @dx.op.binary.f32(i32 36, float %5392, float 3.225500e+04)  ; FMin(a,b)
  %5396 = call float @dx.op.binary.f32(i32 36, float %5393, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5394)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5395)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5396)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!41}
!dx.entryPoints = !{!42}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !33, !36}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
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
!27 = !{i32 19, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!33 = !{!34, !35}
!34 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!35 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!36 = !{!37, !38, !39, !40}
!37 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!38 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!39 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!40 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!41 = !{[54 x i32] [i32 52, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0]}
!42 = !{void ()* @ps_main, !"ps_main", !43, !4, !68}
!43 = !{!44, !66, null}
!44 = !{!45, !48, !50, !52, !54, !56, !57, !58, !59, !60, !61, !62, !63, !65}
!45 = !{i32 0, !"SV_Position", i8 9, i8 3, !46, i8 4, i32 1, i8 4, i32 0, i8 0, !47}
!46 = !{i32 0}
!47 = !{i32 3, i32 11}
!48 = !{i32 1, !"COLOR", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 1, i8 0, !49}
!49 = !{i32 3, i32 14}
!50 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 2, i8 0, !51}
!51 = !{i32 3, i32 3}
!52 = !{i32 3, !"NORMAL", i8 9, i8 0, !46, i8 2, i32 1, i8 3, i32 3, i8 0, !53}
!53 = !{i32 3, i32 7}
!54 = !{i32 4, !"TANGENT", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 4, i8 0, !55}
!55 = !{i32 3, i32 15}
!56 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !46, i8 2, i32 1, i8 3, i32 5, i8 0, !53}
!57 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 6, i8 0, !55}
!58 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 3, i32 7, i8 0, !53}
!59 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 8, i8 0, !55}
!60 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !46, i8 2, i32 1, i8 2, i32 9, i8 0, !51}
!61 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 10, i8 0, !55}
!62 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 11, i8 0, !53}
!63 = !{i32 12, !"PACKED_TRI_DATA", i8 5, i8 0, !46, i8 1, i32 1, i8 4, i32 12, i8 0, !64}
!64 = !{i32 3, i32 1}
!65 = !{i32 13, !"SV_SampleIndex", i8 5, i8 12, !46, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!66 = !{!67}
!67 = !{i32 0, !"SV_Target", i8 9, i8 16, !46, i8 0, i32 1, i8 4, i32 0, i8 0, !55}
!68 = !{i32 0, i64 24}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}

