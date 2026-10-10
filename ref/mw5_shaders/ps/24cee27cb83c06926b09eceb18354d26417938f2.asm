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
; shader hash: ec414282675b461c56ffe3ee19e5b277
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
;                                   texture    byte         r/o     T19     t10,space1     1
;                                   texture    byte         r/o     T20     t68,space1     1
;                                   texture     f32          2d     T21      t0,space2     1
;                                   texture    byte         r/o     T22     t11,space1     1
;                                   texture    byte         r/o     T23     t13,space1     1
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
  %27 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %67 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = fmul fast float %69, %63
  %71 = fmul fast float %69, %64
  %72 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %73 = bitcast float %72 to i32
  %74 = ashr i32 %73, 1
  %75 = sub nsw i32 1597250115, %74
  %76 = bitcast i32 %75 to float
  %77 = fmul fast float %76, %55
  %78 = fmul fast float %76, %56
  %79 = fmul fast float %76, %57
  %80 = fmul fast float %56, %53
  %81 = fmul fast float %57, %52
  %82 = fsub fast float %80, %81
  %83 = fmul fast float %57, %51
  %84 = fmul fast float %55, %53
  %85 = fsub fast float %83, %84
  %86 = fmul fast float %55, %52
  %87 = fmul fast float %56, %51
  %88 = fsub fast float %86, %87
  %89 = fmul fast float %82, %54
  %90 = fmul fast float %85, %54
  %91 = fmul fast float %88, %54
  %92 = call float @dx.op.dot3.f32(i32 55, float %44, float %45, float %46, float %44, float %45, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %93 = bitcast float %92 to i32
  %94 = ashr i32 %93, 1
  %95 = sub nsw i32 1597250115, %94
  %96 = bitcast i32 %95 to float
  %97 = fmul fast float %96, %44
  %98 = fmul fast float %96, %45
  %99 = fmul fast float %96, %46
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = fcmp fast une float %101, 0.000000e+00
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 3
  %106 = fmul fast float %70, 2.000000e+00
  %107 = fmul fast float %106, %104
  %108 = fmul fast float %71, 2.000000e+00
  %109 = fmul fast float %108, %105
  %110 = fsub fast float 1.000000e+00, %107
  %111 = fsub fast float 1.000000e+00, %109
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 1
  %115 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %119 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %120 = select i1 %102, float %113, float %117
  %121 = select i1 %102, float %114, float %118
  %122 = select i1 %102, float %115, float %119
  %123 = fmul fast float %120, %110
  %124 = fmul fast float %121, %110
  %125 = fmul fast float %122, %110
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = select i1 %102, float %127, float %131
  %135 = select i1 %102, float %128, float %132
  %136 = select i1 %102, float %129, float %133
  %137 = fmul fast float %134, %111
  %138 = fmul fast float %135, %111
  %139 = fmul fast float %136, %111
  %140 = fadd fast float %137, %123
  %141 = fadd fast float %138, %124
  %142 = fadd fast float %139, %125
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = select i1 %102, float %144, float %148
  %152 = select i1 %102, float %145, float %149
  %153 = select i1 %102, float %146, float %150
  %154 = fadd fast float %140, %151
  %155 = fadd fast float %141, %152
  %156 = fadd fast float %142, %153
  %157 = fmul fast float %154, %65
  %158 = fmul fast float %155, %65
  %159 = fmul fast float %156, %65
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 3
  %163 = fmul fast float %161, %70
  %164 = fmul fast float %162, %71
  %165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = and i32 %166, 114688
  %168 = icmp ne i32 %167, 0
  %169 = select i1 %168, float %163, float 0.000000e+00
  %170 = select i1 %168, float %164, float 0.000000e+00
  %171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %24, float %169, float %170, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %172 = extractvalue %dx.types.ResRet.f32 %171, 0
  %173 = fmul fast float %172, 2.550000e+02
  %174 = fptoui float %173 to i32
  %175 = select i1 %168, i32 %174, i32 0
  %176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.i32 %176, 3
  %178 = and i32 %177, 3
  %179 = icmp ne i32 %178, 0
  %180 = and i32 %177, 4
  %181 = icmp ne i32 %180, 0
  %182 = and i1 %179, %181
  br i1 %182, label %183, label %192

; <label>:183                                     ; preds = %0
  %184 = fmul fast float %105, %71
  %185 = fmul fast float %104, %70
  %186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %23, float %185, float %184, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = fsub fast float 1.000000e+00, %187
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %191 = fcmp fast olt float %188, %190
  br label %195

; <label>:192                                     ; preds = %0
  %193 = icmp eq i32 %180, 0
  %194 = and i1 %179, %193
  br label %195

; <label>:195                                     ; preds = %192, %183
  %196 = phi i1 [ %191, %183 ], [ %194, %192 ]
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 2
  %199 = fmul fast float %198, 0x3FE3C6EF40000000
  %200 = frem fast float %70, 2.560000e+02
  %201 = frem fast float %71, 2.560000e+02
  %202 = fptoui float %200 to i32
  %203 = fptoui float %201 to i32
  %204 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %202, i32 %203, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 0
  %206 = fadd fast float %205, %199
  %207 = call float @dx.op.unary.f32(i32 22, float %206)  ; Frc(value)
  %208 = add i32 %27, 156
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = shl i32 %210, 4
  %212 = and i32 %211, 32752
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = lshr i32 %210, 7
  %215 = and i32 %214, 32752
  %216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %215)  ; LegacyF16ToF32(value)
  %217 = lshr i32 %210, 22
  %218 = shl nuw nsw i32 %217, 5
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218)  ; LegacyF16ToF32(value)
  %220 = add i32 %27, 216
  %221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %220, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = and i32 %222, 255
  %224 = uitofp i32 %223 to float
  %225 = fmul fast float %224, 0x3F70101020000000
  %226 = lshr i32 %222, 8
  %227 = and i32 %226, 255
  %228 = uitofp i32 %227 to float
  %229 = fmul fast float %228, 0x3F70101020000000
  %230 = lshr i32 %222, 16
  %231 = and i32 %230, 255
  %232 = uitofp i32 %231 to float
  %233 = fmul fast float %232, 0x3F70101020000000
  %234 = add i32 %27, 36
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = and i32 %236, 65535
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %236, 16
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = add i32 %27, 288
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 65535
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %243, 16
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = fmul fast float %245, 0x3F50624DE0000000
  %249 = fmul fast float %247, 0x3F50624DE0000000
  %250 = add i32 %27, 172
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = shl i32 %252, 4
  %254 = and i32 %253, 32752
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = lshr i32 %252, 7
  %257 = and i32 %256, 32752
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = lshr i32 %252, 22
  %260 = shl nuw nsw i32 %259, 5
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = add i32 %27, 232
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = and i32 %264, 255
  %266 = uitofp i32 %265 to float
  %267 = fmul fast float %266, 0x3F70101020000000
  %268 = lshr i32 %264, 8
  %269 = and i32 %268, 255
  %270 = uitofp i32 %269 to float
  %271 = fmul fast float %270, 0x3F70101020000000
  %272 = lshr i32 %264, 16
  %273 = and i32 %272, 255
  %274 = uitofp i32 %273 to float
  %275 = fmul fast float %274, 0x3F70101020000000
  %276 = add i32 %27, 52
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 65535
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %278, 16
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = add i32 %27, 304
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 65535
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %285, 16
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = fmul fast float %287, 0x3F50624DE0000000
  %291 = fmul fast float %289, 0x3F50624DE0000000
  %292 = add i32 %27, 188
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = shl i32 %294, 4
  %296 = and i32 %295, 32752
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %294, 7
  %299 = and i32 %298, 32752
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = lshr i32 %294, 22
  %302 = shl nuw nsw i32 %301, 5
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = add i32 %27, 248
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 255
  %308 = uitofp i32 %307 to float
  %309 = fmul fast float %308, 0x3F70101020000000
  %310 = lshr i32 %306, 8
  %311 = and i32 %310, 255
  %312 = uitofp i32 %311 to float
  %313 = fmul fast float %312, 0x3F70101020000000
  %314 = lshr i32 %306, 16
  %315 = and i32 %314, 255
  %316 = uitofp i32 %315 to float
  %317 = fmul fast float %316, 0x3F70101020000000
  %318 = add i32 %27, 68
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 65535
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %320, 16
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = add i32 %27, 320
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 65535
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = lshr i32 %327, 16
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = fmul fast float %329, 0x3F50624DE0000000
  %333 = fmul fast float %331, 0x3F50624DE0000000
  %334 = add i32 %27, 204
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = shl i32 %336, 4
  %338 = and i32 %337, 32752
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = lshr i32 %336, 7
  %341 = and i32 %340, 32752
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = lshr i32 %336, 22
  %344 = shl nuw nsw i32 %343, 5
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = add i32 %27, 264
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 255
  %350 = uitofp i32 %349 to float
  %351 = fmul fast float %350, 0x3F70101020000000
  %352 = lshr i32 %348, 8
  %353 = and i32 %352, 255
  %354 = uitofp i32 %353 to float
  %355 = fmul fast float %354, 0x3F70101020000000
  %356 = lshr i32 %348, 16
  %357 = and i32 %356, 255
  %358 = uitofp i32 %357 to float
  %359 = fmul fast float %358, 0x3F70101020000000
  %360 = add i32 %27, 84
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 65535
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %362, 16
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = add i32 %27, 336
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 65535
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = lshr i32 %369, 16
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = fmul fast float %371, 0x3F50624DE0000000
  %375 = fmul fast float %373, 0x3F50624DE0000000
  %376 = add i32 %27, 348
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, 32
  %380 = icmp eq i32 %379, 0
  %381 = and i32 %378, 64
  %382 = icmp eq i32 %381, 0
  %383 = and i32 %378, 128
  %384 = icmp eq i32 %383, 0
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = and i32 %386, 2
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %402, label %389

; <label>:389                                     ; preds = %195
  %390 = add i32 %27, 504
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = add i32 %392, 0
  %394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %393, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %395 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %394, %dx.types.Handle %67, float %58, float %59, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %396 = extractvalue %dx.types.ResRet.f32 %395, 0
  %397 = extractvalue %dx.types.ResRet.f32 %395, 1
  %398 = extractvalue %dx.types.ResRet.f32 %395, 2
  %399 = fmul fast float %396, %60
  %400 = fmul fast float %397, %61
  %401 = fmul fast float %398, %62
  br label %402

; <label>:402                                     ; preds = %389, %195
  %403 = phi float [ %62, %195 ], [ %401, %389 ]
  %404 = phi float [ %61, %195 ], [ %400, %389 ]
  %405 = phi float [ %60, %195 ], [ %399, %389 ]
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 2
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %429, label %410

; <label>:410                                     ; preds = %402
  %411 = add i32 %27, 44
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 1
  %415 = icmp ne i32 %414, 0
  %416 = select i1 %415, float %405, float 1.000000e+00
  %417 = add i32 %27, 60
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, 1
  %421 = icmp ne i32 %420, 0
  %422 = select i1 %421, float %404, float 1.000000e+00
  %423 = add i32 %27, 76
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 1
  %427 = icmp ne i32 %426, 0
  %428 = select i1 %427, float %403, float 1.000000e+00
  br label %429

; <label>:429                                     ; preds = %410, %402
  %430 = phi float [ %403, %402 ], [ %428, %410 ]
  %431 = phi float [ %404, %402 ], [ %422, %410 ]
  %432 = phi float [ %405, %402 ], [ %416, %410 ]
  %433 = lshr i32 %407, 20
  %434 = and i32 %433, 3
  %435 = add nuw nsw i32 %434, 1
  %436 = add i32 %27, 24
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = add i32 %27, 28
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = or i32 %441, %438
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %902, label %444

; <label>:444                                     ; preds = %429
  %445 = and i32 %438, 262144
  %446 = icmp ne i32 %445, 0
  %447 = select i1 %446, float %31, float 1.000000e+00
  %448 = select i1 %446, float %32, float 0.000000e+00
  %449 = select i1 %446, float %33, float 0.000000e+00
  %450 = select i1 %446, float %34, float 1.000000e+00
  %451 = select i1 %446, float %35, float %58
  %452 = select i1 %446, float %36, float %59
  %453 = add i32 %27, 284
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = lshr i32 %455, 16
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = fmul fast float %457, 0x3F50624DE0000000
  %459 = add i32 %27, 88
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = lshr i32 %461, 16
  %463 = and i32 %462, 255
  %464 = lshr i32 %461, 24
  %465 = add i32 %27, 292
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = and i32 %467, 65535
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = lshr i32 %467, 16
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = add i32 %27, 32
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = lshr i32 %474, 22
  %476 = shl nuw nsw i32 %475, 5
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = shl i32 %474, 4
  %479 = and i32 %478, 32752
  %480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %479)  ; LegacyF16ToF32(value)
  %481 = lshr i32 %474, 7
  %482 = and i32 %481, 32752
  %483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %482)  ; LegacyF16ToF32(value)
  %484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %485 = extractvalue %dx.types.CBufRet.f32 %484, 3
  %486 = fmul fast float %485, 1.000000e+03
  %487 = fmul fast float %248, %486
  %488 = call float @dx.op.unary.f32(i32 22, float %487)  ; Frc(value)
  %489 = fadd fast float %488, %238
  %490 = fmul fast float %249, %486
  %491 = call float @dx.op.unary.f32(i32 22, float %490)  ; Frc(value)
  %492 = fadd fast float %491, %240
  %493 = fmul fast float %458, %486
  %494 = call float @dx.op.unary.f32(i32 22, float %493)  ; Frc(value)
  %495 = fmul fast float %494, 0x401921FB60000000
  %496 = fadd fast float %495, %477
  %497 = call float @dx.op.unary.f32(i32 13, float %496)  ; Sin(value)
  %498 = call float @dx.op.unary.f32(i32 12, float %496)  ; Cos(value)
  %499 = fsub fast float -0.000000e+00, %497
  %500 = fadd fast float %451, -5.000000e-01
  %501 = fadd fast float %452, -5.000000e-01
  %502 = fmul fast float %469, %500
  %503 = fmul fast float %471, %501
  %504 = fadd fast float %502, 5.000000e-01
  %505 = fadd fast float %503, 5.000000e-01
  %506 = fmul fast float %480, %504
  %507 = fmul fast float %483, %505
  %508 = fmul fast float %498, %506
  %509 = call float @dx.op.tertiary.f32(i32 46, float %499, float %507, float %508)  ; FMad(a,b,c)
  %510 = fmul fast float %497, %506
  %511 = call float @dx.op.tertiary.f32(i32 46, float %498, float %507, float %510)  ; FMad(a,b,c)
  %512 = fadd fast float %489, %509
  %513 = fadd fast float %492, %511
  %514 = icmp ugt i32 %463, 1
  %515 = icmp ugt i32 %461, 33554431
  %516 = or i1 %515, %514
  br i1 %516, label %517, label %542

; <label>:517                                     ; preds = %444
  %518 = add i32 %27, 228
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = lshr i32 %520, 16
  %522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %521)  ; LegacyF16ToF32(value)
  %523 = fmul fast float %485, %522
  %524 = call float @dx.op.unary.f32(i32 22, float %523)  ; Frc(value)
  %525 = mul nuw nsw i32 %463, %464
  %526 = uitofp i32 %525 to float
  %527 = fmul fast float %524, %526
  %528 = call float @dx.op.unary.f32(i32 27, float %527)  ; Round_ni(value)
  %529 = fptoui float %528 to i32
  %530 = urem i32 %529, %463
  %531 = udiv i32 %529, %464
  %532 = call float @dx.op.unary.f32(i32 22, float %512)  ; Frc(value)
  %533 = call float @dx.op.unary.f32(i32 22, float %513)  ; Frc(value)
  %534 = uitofp i32 %530 to float
  %535 = uitofp i32 %531 to float
  %536 = fadd fast float %532, %534
  %537 = fadd fast float %533, %535
  %538 = uitofp i32 %463 to float
  %539 = uitofp i32 %464 to float
  %540 = fdiv fast float %536, %538
  %541 = fdiv fast float %537, %539
  br label %542

; <label>:542                                     ; preds = %517, %444
  %543 = phi float [ %540, %517 ], [ %512, %444 ]
  %544 = phi float [ %541, %517 ], [ %513, %444 ]
  %545 = and i32 %438, 16
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %743, label %547

; <label>:547                                     ; preds = %542
  %548 = add i32 %27, 392
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = add i32 %550, 0
  %552 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %551, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %553 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %552, %dx.types.Handle %66, float %543, float %544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %554 = extractvalue %dx.types.ResRet.f32 %553, 0
  %555 = extractvalue %dx.types.ResRet.f32 %553, 1
  %556 = extractvalue %dx.types.ResRet.f32 %553, 2
  %557 = extractvalue %dx.types.ResRet.f32 %553, 3
  %558 = and i32 %461, 255
  %559 = uitofp i32 %558 to float
  %560 = lshr i32 %461, 8
  %561 = and i32 %560, 255
  %562 = uitofp i32 %561 to float
  %563 = fmul fast float %557, %559
  %564 = fadd fast float %563, %562
  %565 = fmul fast float %564, 0x3F70101000000000
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = and i32 %567, 512
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %578, label %570

; <label>:570                                     ; preds = %547
  %571 = add i32 %27, 472
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = add i32 %573, 0
  %575 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %574, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %576 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %575, %dx.types.Handle %67, float %543, float %544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %577 = extractvalue %dx.types.ResRet.f32 %576, 0
  br label %578

; <label>:578                                     ; preds = %570, %547
  %579 = phi float [ %577, %570 ], [ 1.000000e+00, %547 ]
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  %582 = and i32 %581, 33554432
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %690, label %584

; <label>:584                                     ; preds = %578
  %585 = add i32 %27, 224
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = and i32 %587, 65535
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = lshr i32 %587, 16
  %591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %590)  ; LegacyF16ToF32(value)
  %592 = add i32 %27, 228
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = and i32 %594, 65535
  %596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %595)  ; LegacyF16ToF32(value)
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %220, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = lshr i32 %598, 24
  %600 = uitofp i32 %599 to float
  %601 = fmul fast float %600, 0x3F70101020000000
  %602 = and i32 %598, 255
  %603 = uitofp i32 %602 to float
  %604 = fmul fast float %603, 0x3F70101020000000
  %605 = lshr i32 %598, 8
  %606 = and i32 %605, 255
  %607 = uitofp i32 %606 to float
  %608 = fmul fast float %607, 0x3F70101020000000
  %609 = lshr i32 %598, 16
  %610 = and i32 %609, 255
  %611 = uitofp i32 %610 to float
  %612 = fmul fast float %611, 0x3F70101020000000
  %613 = add i32 %27, 220
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = lshr i32 %615, 24
  %617 = uitofp i32 %616 to float
  %618 = fmul fast float %617, 0x3F70101020000000
  %619 = and i32 %615, 255
  %620 = uitofp i32 %619 to float
  %621 = fmul fast float %620, 0x3F70101020000000
  %622 = lshr i32 %615, 8
  %623 = and i32 %622, 255
  %624 = uitofp i32 %623 to float
  %625 = fmul fast float %624, 0x3F70101020000000
  %626 = lshr i32 %615, 16
  %627 = and i32 %626, 255
  %628 = uitofp i32 %627 to float
  %629 = fmul fast float %628, 0x3F70101020000000
  %630 = bitcast float %554 to i32
  %631 = ashr i32 %630, 1
  %632 = sub nsw i32 1597463174, %631
  %633 = bitcast i32 %632 to float
  %634 = fmul fast float %554, 5.000000e-01
  %635 = fmul fast float %633, %633
  %636 = fmul fast float %635, %634
  %637 = fsub fast float 1.500000e+00, %636
  %638 = fmul fast float %633, %554
  %639 = fmul fast float %638, %637
  %640 = bitcast float %555 to i32
  %641 = ashr i32 %640, 1
  %642 = sub nsw i32 1597463174, %641
  %643 = bitcast i32 %642 to float
  %644 = fmul fast float %555, 5.000000e-01
  %645 = fmul fast float %643, %643
  %646 = fmul fast float %645, %644
  %647 = fsub fast float 1.500000e+00, %646
  %648 = fmul fast float %643, %555
  %649 = fmul fast float %648, %647
  %650 = bitcast float %556 to i32
  %651 = ashr i32 %650, 1
  %652 = sub nsw i32 1597463174, %651
  %653 = bitcast i32 %652 to float
  %654 = fmul fast float %556, 5.000000e-01
  %655 = fmul fast float %653, %653
  %656 = fmul fast float %655, %654
  %657 = fsub fast float 1.500000e+00, %656
  %658 = fmul fast float %653, %556
  %659 = fmul fast float %658, %657
  %660 = fsub fast float %639, %621
  %661 = fsub fast float %649, %625
  %662 = fsub fast float %659, %629
  %663 = fmul fast float %660, %589
  %664 = fmul fast float %661, %591
  %665 = fmul fast float %662, %596
  %666 = fadd fast float %663, %604
  %667 = fadd fast float %664, %608
  %668 = fadd fast float %665, %612
  %669 = call float @dx.op.unary.f32(i32 7, float %666)  ; Saturate(value)
  %670 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  %671 = call float @dx.op.unary.f32(i32 7, float %668)  ; Saturate(value)
  %672 = fmul fast float %669, %669
  %673 = fmul fast float %670, %670
  %674 = fmul fast float %671, %671
  %675 = fsub fast float %672, %554
  %676 = fsub fast float %673, %555
  %677 = fsub fast float %674, %556
  %678 = fmul fast float %675, %579
  %679 = fmul fast float %676, %579
  %680 = fmul fast float %677, %579
  %681 = fadd fast float %678, %554
  %682 = fadd fast float %679, %555
  %683 = fadd fast float %680, %556
  %684 = fadd fast float %601, %565
  %685 = fsub fast float %684, %618
  %686 = call float @dx.op.unary.f32(i32 7, float %685)  ; Saturate(value)
  %687 = fsub fast float %686, %565
  %688 = fmul fast float %687, %579
  %689 = fadd fast float %688, %565
  br label %743

; <label>:690                                     ; preds = %578
  %691 = and i32 %581, 134217728
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %727, label %693

; <label>:693                                     ; preds = %690
  %694 = call float @dx.op.unary.f32(i32 24, float %225)  ; Sqrt(value)
  %695 = call float @dx.op.unary.f32(i32 24, float %229)  ; Sqrt(value)
  %696 = call float @dx.op.unary.f32(i32 24, float %233)  ; Sqrt(value)
  %697 = fadd fast float %694, -5.000000e-01
  %698 = fadd fast float %695, -5.000000e-01
  %699 = fadd fast float %696, -5.000000e-01
  %700 = fmul fast float %697, %579
  %701 = fmul fast float %698, %579
  %702 = fmul fast float %699, %579
  %703 = fadd fast float %700, 5.000000e-01
  %704 = fadd fast float %701, 5.000000e-01
  %705 = fadd fast float %702, 5.000000e-01
  %706 = call float @dx.op.unary.f32(i32 24, float %554)  ; Sqrt(value)
  %707 = call float @dx.op.unary.f32(i32 24, float %555)  ; Sqrt(value)
  %708 = call float @dx.op.unary.f32(i32 24, float %556)  ; Sqrt(value)
  %709 = fmul fast float %703, 2.000000e+00
  %710 = fsub fast float 1.000000e+00, %709
  %711 = fmul fast float %710, %706
  %712 = fadd fast float %711, %709
  %713 = fmul fast float %712, %706
  %714 = fmul fast float %704, 2.000000e+00
  %715 = fsub fast float 1.000000e+00, %714
  %716 = fmul fast float %715, %707
  %717 = fadd fast float %716, %714
  %718 = fmul fast float %717, %707
  %719 = fmul fast float %705, 2.000000e+00
  %720 = fsub fast float 1.000000e+00, %719
  %721 = fmul fast float %720, %708
  %722 = fadd fast float %721, %719
  %723 = fmul fast float %722, %708
  %724 = fmul fast float %713, %713
  %725 = fmul fast float %718, %718
  %726 = fmul fast float %723, %723
  br label %743

; <label>:727                                     ; preds = %690
  %728 = fmul fast float %225, %225
  %729 = fmul fast float %229, %229
  %730 = fmul fast float %233, %233
  %731 = fadd fast float %728, -1.000000e+00
  %732 = fadd fast float %729, -1.000000e+00
  %733 = fadd fast float %730, -1.000000e+00
  %734 = fmul fast float %579, %731
  %735 = fmul fast float %579, %732
  %736 = fmul fast float %579, %733
  %737 = fadd fast float %734, 1.000000e+00
  %738 = fadd fast float %735, 1.000000e+00
  %739 = fadd fast float %736, 1.000000e+00
  %740 = fmul fast float %737, %554
  %741 = fmul fast float %738, %555
  %742 = fmul fast float %739, %556
  br label %743

; <label>:743                                     ; preds = %727, %693, %584, %542
  %744 = phi float [ %689, %584 ], [ %565, %693 ], [ %565, %727 ], [ 0x3FA23C0BE0000000, %542 ]
  %745 = phi float [ %681, %584 ], [ %724, %693 ], [ %740, %727 ], [ 1.000000e+00, %542 ]
  %746 = phi float [ %682, %584 ], [ %725, %693 ], [ %741, %727 ], [ 1.000000e+00, %542 ]
  %747 = phi float [ %683, %584 ], [ %726, %693 ], [ %742, %727 ], [ 1.000000e+00, %542 ]
  %748 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %749 = extractvalue %dx.types.CBufRet.i32 %748, 1
  %750 = and i32 %749, 1
  %751 = icmp ne i32 %750, 0
  %752 = add i32 %27, 356
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = and i32 %754, 32
  %756 = icmp ne i32 %755, 0
  %757 = and i1 %751, %756
  %758 = select i1 %757, float 1.000000e+00, float %745
  %759 = select i1 %757, float 0x3FD3333340000000, float %746
  %760 = select i1 %757, float 0x3FD3333340000000, float %747
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = and i32 %762, 32
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %837, label %765

; <label>:765                                     ; preds = %743
  %766 = add i32 %27, 92
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %766, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = add i32 %27, 408
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %769, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = add i32 %771, 0
  %773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %772, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %774 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %773, %dx.types.Handle %66, float %543, float %544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %775 = extractvalue %dx.types.ResRet.f32 %774, 0
  %776 = extractvalue %dx.types.ResRet.f32 %774, 1
  %777 = extractvalue %dx.types.ResRet.f32 %774, 2
  %778 = extractvalue %dx.types.ResRet.f32 %774, 3
  %779 = and i32 %768, 255
  %780 = uitofp i32 %779 to float
  %781 = lshr i32 %768, 8
  %782 = and i32 %781, 255
  %783 = uitofp i32 %782 to float
  %784 = lshr i32 %768, 16
  %785 = and i32 %784, 255
  %786 = uitofp i32 %785 to float
  %787 = fmul fast float %786, 0x3F70101000000000
  %788 = fmul fast float %775, %780
  %789 = fadd fast float %788, %783
  %790 = fmul fast float %789, 0x3F70101000000000
  %791 = fadd fast float %776, -5.000000e-01
  %792 = fadd fast float %778, -5.000000e-01
  %793 = fmul fast float %791, %787
  %794 = fmul fast float %792, %787
  %795 = fadd fast float %793, 5.000000e-01
  %796 = fadd fast float %794, 5.000000e-01
  %797 = fmul fast float %795, 2.000000e+00
  %798 = fadd fast float %797, -1.000000e+00
  %799 = fmul fast float %796, 2.000000e+00
  %800 = fadd fast float %799, -1.000000e+00
  %801 = fadd fast float %798, %800
  %802 = fmul fast float %801, 5.000000e-01
  %803 = fsub fast float %798, %800
  %804 = fmul fast float %803, 5.000000e-01
  %805 = call float @dx.op.unary.f32(i32 6, float %802)  ; FAbs(value)
  %806 = fsub fast float 1.000000e+00, %805
  %807 = call float @dx.op.unary.f32(i32 6, float %804)  ; FAbs(value)
  %808 = fsub fast float %806, %807
  %809 = call float @dx.op.dot3.f32(i32 55, float %802, float %804, float %808, float %802, float %804, float %808)  ; Dot3(ax,ay,az,bx,by,bz)
  %810 = call float @dx.op.unary.f32(i32 25, float %809)  ; Rsqrt(value)
  %811 = fmul fast float %802, %810
  %812 = fmul fast float %804, %810
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = and i32 %814, 67108864
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %833, label %817

; <label>:817                                     ; preds = %765
  %818 = add i32 %27, 280
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = and i32 %820, 65535
  %822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %821)  ; LegacyF16ToF32(value)
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = and i32 %824, 65535
  %826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %825)  ; LegacyF16ToF32(value)
  %827 = lshr i32 %820, 16
  %828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %827)  ; LegacyF16ToF32(value)
  %829 = fsub fast float %790, %828
  %830 = fmul fast float %829, %822
  %831 = fadd fast float %830, %826
  %832 = call float @dx.op.unary.f32(i32 7, float %831)  ; Saturate(value)
  br label %833

; <label>:833                                     ; preds = %817, %765
  %834 = phi float [ %832, %817 ], [ %790, %765 ]
  %835 = call float @dx.op.dot2.f32(i32 54, float %811, float %812, float %447, float %448)  ; Dot2(ax,ay,bx,by)
  %836 = call float @dx.op.dot2.f32(i32 54, float %811, float %812, float %449, float %450)  ; Dot2(ax,ay,bx,by)
  br label %837

; <label>:837                                     ; preds = %833, %743
  %838 = phi float [ %834, %833 ], [ 0x3FD6666660000000, %743 ]
  %839 = phi float [ %835, %833 ], [ 0.000000e+00, %743 ]
  %840 = phi float [ %836, %833 ], [ 0.000000e+00, %743 ]
  %841 = phi float [ %777, %833 ], [ 1.000000e+00, %743 ]
  %842 = add i32 %27, 160
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = lshr i32 %844, 22
  %846 = shl nuw nsw i32 %845, 5
  %847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %846)  ; LegacyF16ToF32(value)
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = and i32 %849, 64
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %885, label %852

; <label>:852                                     ; preds = %837
  %853 = add i32 %27, 424
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = add i32 %855, 0
  %857 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %856, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = and i32 %859, 131072
  %861 = icmp eq i32 %860, 0
  %862 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %857, %dx.types.Handle %66, float %543, float %544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %863 = extractvalue %dx.types.ResRet.f32 %862, 0
  %864 = extractvalue %dx.types.ResRet.f32 %862, 1
  %865 = extractvalue %dx.types.ResRet.f32 %862, 2
  %866 = fmul fast float %863, %213
  %867 = fmul fast float %864, %216
  %868 = fmul fast float %865, %219
  br i1 %861, label %875, label %869

; <label>:869                                     ; preds = %852
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 0
  %872 = fmul fast float %871, %866
  %873 = fmul fast float %871, %867
  %874 = fmul fast float %871, %868
  br label %875

; <label>:875                                     ; preds = %869, %852
  %876 = phi float [ %872, %869 ], [ %866, %852 ]
  %877 = phi float [ %873, %869 ], [ %867, %852 ]
  %878 = phi float [ %874, %869 ], [ %868, %852 ]
  %879 = fmul fast float %876, %847
  %880 = select i1 %196, float %879, float %876
  %881 = call float @dx.op.dot3.f32(i32 55, float %880, float %877, float %878, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %882 = select i1 %196, float 0.000000e+00, float %876
  %883 = select i1 %196, float %881, float %877
  %884 = select i1 %196, float 0.000000e+00, float %878
  br label %885

; <label>:885                                     ; preds = %875, %837
  %886 = phi float [ %882, %875 ], [ 0.000000e+00, %837 ]
  %887 = phi float [ %883, %875 ], [ 0.000000e+00, %837 ]
  %888 = phi float [ %884, %875 ], [ 0.000000e+00, %837 ]
  %889 = add i32 %27, 96
  %890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %889, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.i32 %890, 0
  %892 = and i32 %891, 255
  %893 = uitofp i32 %892 to float
  %894 = lshr i32 %891, 8
  %895 = and i32 %894, 255
  %896 = uitofp i32 %895 to float
  %897 = call float @dx.op.dot3.f32(i32 55, float %758, float %759, float %760, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %898 = fmul fast float %896, %897
  %899 = fadd fast float %898, %893
  %900 = fmul fast float %899, 0x3F70101020000000
  %901 = call float @dx.op.unary.f32(i32 7, float %900)  ; Saturate(value)
  br label %902

; <label>:902                                     ; preds = %885, %429
  %903 = phi float [ 0.000000e+00, %429 ], [ %839, %885 ]
  %904 = phi float [ 0.000000e+00, %429 ], [ %840, %885 ]
  %905 = phi float [ 0.000000e+00, %429 ], [ %758, %885 ]
  %906 = phi float [ 0.000000e+00, %429 ], [ %759, %885 ]
  %907 = phi float [ 0.000000e+00, %429 ], [ %760, %885 ]
  %908 = phi float [ 0.000000e+00, %429 ], [ %886, %885 ]
  %909 = phi float [ 0.000000e+00, %429 ], [ %887, %885 ]
  %910 = phi float [ 0.000000e+00, %429 ], [ %888, %885 ]
  %911 = phi float [ 0.000000e+00, %429 ], [ %744, %885 ]
  %912 = phi float [ 0.000000e+00, %429 ], [ 1.000000e+00, %885 ]
  %913 = phi float [ 0.000000e+00, %429 ], [ %838, %885 ]
  %914 = phi float [ 0.000000e+00, %429 ], [ %841, %885 ]
  %915 = phi float [ 0.000000e+00, %429 ], [ %901, %885 ]
  br i1 %380, label %1642, label %916

; <label>:916                                     ; preds = %902
  %917 = icmp ult i32 %435, 2
  %918 = add i32 %27, 40
  %919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %920 = extractvalue %dx.types.ResRet.i32 %919, 0
  %921 = add i32 %27, 44
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %921, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = or i32 %923, %920
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %1642, label %926

; <label>:926                                     ; preds = %916
  %927 = and i32 %920, 262144
  %928 = icmp ne i32 %927, 0
  %929 = select i1 %928, float %31, float 1.000000e+00
  %930 = select i1 %928, float %32, float 0.000000e+00
  %931 = select i1 %928, float %33, float 0.000000e+00
  %932 = select i1 %928, float %34, float 1.000000e+00
  %933 = select i1 %928, float %35, float %58
  %934 = select i1 %928, float %36, float %59
  %935 = add i32 %27, 300
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = lshr i32 %937, 16
  %939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %938)  ; LegacyF16ToF32(value)
  %940 = fmul fast float %939, 0x3F50624DE0000000
  %941 = add i32 %27, 104
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = lshr i32 %943, 16
  %945 = and i32 %944, 255
  %946 = lshr i32 %943, 24
  %947 = add i32 %27, 308
  %948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %947, i32 undef)  ; BufferLoad(srv,index,wot)
  %949 = extractvalue %dx.types.ResRet.i32 %948, 0
  %950 = and i32 %949, 65535
  %951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %950)  ; LegacyF16ToF32(value)
  %952 = lshr i32 %949, 16
  %953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %952)  ; LegacyF16ToF32(value)
  %954 = add i32 %27, 48
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = lshr i32 %956, 22
  %958 = shl nuw nsw i32 %957, 5
  %959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %958)  ; LegacyF16ToF32(value)
  %960 = shl i32 %956, 4
  %961 = and i32 %960, 32752
  %962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %961)  ; LegacyF16ToF32(value)
  %963 = lshr i32 %956, 7
  %964 = and i32 %963, 32752
  %965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %964)  ; LegacyF16ToF32(value)
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 3
  %968 = fmul fast float %967, 1.000000e+03
  %969 = fmul fast float %290, %968
  %970 = call float @dx.op.unary.f32(i32 22, float %969)  ; Frc(value)
  %971 = fadd fast float %970, %280
  %972 = fmul fast float %291, %968
  %973 = call float @dx.op.unary.f32(i32 22, float %972)  ; Frc(value)
  %974 = fadd fast float %973, %282
  %975 = fmul fast float %940, %968
  %976 = call float @dx.op.unary.f32(i32 22, float %975)  ; Frc(value)
  %977 = fmul fast float %976, 0x401921FB60000000
  %978 = fadd fast float %977, %959
  %979 = call float @dx.op.unary.f32(i32 13, float %978)  ; Sin(value)
  %980 = call float @dx.op.unary.f32(i32 12, float %978)  ; Cos(value)
  %981 = fsub fast float -0.000000e+00, %979
  %982 = fadd fast float %933, -5.000000e-01
  %983 = fadd fast float %934, -5.000000e-01
  %984 = fmul fast float %951, %982
  %985 = fmul fast float %953, %983
  %986 = fadd fast float %984, 5.000000e-01
  %987 = fadd fast float %985, 5.000000e-01
  %988 = fmul fast float %962, %986
  %989 = fmul fast float %965, %987
  %990 = fmul fast float %980, %988
  %991 = call float @dx.op.tertiary.f32(i32 46, float %981, float %989, float %990)  ; FMad(a,b,c)
  %992 = fmul fast float %979, %988
  %993 = call float @dx.op.tertiary.f32(i32 46, float %980, float %989, float %992)  ; FMad(a,b,c)
  %994 = fadd fast float %971, %991
  %995 = fadd fast float %974, %993
  %996 = icmp ugt i32 %945, 1
  %997 = icmp ugt i32 %943, 33554431
  %998 = or i1 %997, %996
  br i1 %998, label %999, label %1024

; <label>:999                                     ; preds = %926
  %1000 = add i32 %27, 244
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1000, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = lshr i32 %1002, 16
  %1004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1003)  ; LegacyF16ToF32(value)
  %1005 = fmul fast float %967, %1004
  %1006 = call float @dx.op.unary.f32(i32 22, float %1005)  ; Frc(value)
  %1007 = mul nuw nsw i32 %945, %946
  %1008 = uitofp i32 %1007 to float
  %1009 = fmul fast float %1006, %1008
  %1010 = call float @dx.op.unary.f32(i32 27, float %1009)  ; Round_ni(value)
  %1011 = fptoui float %1010 to i32
  %1012 = urem i32 %1011, %945
  %1013 = udiv i32 %1011, %946
  %1014 = call float @dx.op.unary.f32(i32 22, float %994)  ; Frc(value)
  %1015 = call float @dx.op.unary.f32(i32 22, float %995)  ; Frc(value)
  %1016 = uitofp i32 %1012 to float
  %1017 = uitofp i32 %1013 to float
  %1018 = fadd fast float %1014, %1016
  %1019 = fadd fast float %1015, %1017
  %1020 = uitofp i32 %945 to float
  %1021 = uitofp i32 %946 to float
  %1022 = fdiv fast float %1018, %1020
  %1023 = fdiv fast float %1019, %1021
  br label %1024

; <label>:1024                                    ; preds = %999, %926
  %1025 = phi float [ %1022, %999 ], [ %994, %926 ]
  %1026 = phi float [ %1023, %999 ], [ %995, %926 ]
  %1027 = and i32 %920, 256
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1075, label %1029

; <label>:1029                                    ; preds = %1024
  %1030 = add i32 %27, 460
  %1031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1030, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.i32 %1031, 0
  %1033 = add i32 %1032, 0
  %1034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1033, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1035 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1034, %dx.types.Handle %67, float %1025, float %1026, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = add i32 %27, 116
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = shl i32 %1039, 4
  %1041 = and i32 %1040, 32752
  %1042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1041)  ; LegacyF16ToF32(value)
  %1043 = lshr i32 %1039, 7
  %1044 = and i32 %1043, 32752
  %1045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1044)  ; LegacyF16ToF32(value)
  %1046 = fsub fast float 1.000000e+00, %432
  %1047 = call float @dx.op.binary.f32(i32 35, float %1046, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1048 = bitcast float %432 to i32
  %1049 = sitofp i32 %1048 to float
  %1050 = fadd fast float %1049, 0xC1CFBF8940000000
  %1051 = fmul fast float %1045, %1050
  %1052 = fadd fast float %1051, 0x41CFBF8940000000
  %1053 = fptosi float %1052 to i32
  %1054 = bitcast i32 %1053 to float
  %1055 = bitcast float %1047 to i32
  %1056 = sitofp i32 %1055 to float
  %1057 = fadd fast float %1056, 0xC1CFBF8940000000
  %1058 = fmul fast float %1057, %1045
  %1059 = fadd fast float %1058, 0x41CFBF8940000000
  %1060 = fptosi float %1059 to i32
  %1061 = bitcast i32 %1060 to float
  %1062 = fmul fast float %1054, %1042
  %1063 = fmul fast float %1061, %1042
  %1064 = fsub fast float %1047, %1062
  %1065 = fadd fast float %1063, %1047
  %1066 = call float @dx.op.unary.f32(i32 7, float %1064)  ; Saturate(value)
  %1067 = call float @dx.op.unary.f32(i32 7, float %1065)  ; Saturate(value)
  %1068 = fsub fast float %1036, %1066
  %1069 = fsub fast float %1067, %1066
  %1070 = bitcast float %1069 to i32
  %1071 = sub nsw i32 2129859010, %1070
  %1072 = bitcast i32 %1071 to float
  %1073 = fmul fast float %1072, %1068
  %1074 = call float @dx.op.unary.f32(i32 7, float %1073)  ; Saturate(value)
  br label %1075

; <label>:1075                                    ; preds = %1029, %1024
  %1076 = phi float [ %1074, %1029 ], [ %432, %1024 ]
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = and i32 %1078, 128
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1097, label %1081

; <label>:1081                                    ; preds = %1075
  %1082 = add i32 %27, 444
  %1083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.i32 %1083, 0
  %1085 = add i32 %1084, 0
  %1086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1085, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1087 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1086, %dx.types.Handle %67, float %1025, float %1026, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1088 = extractvalue %dx.types.ResRet.f32 %1087, 0
  %1089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.i32 %1089, 0
  %1091 = and i32 %1090, 524288
  %1092 = icmp ne i32 %1091, 0
  %1093 = fcmp fast ogt float %1088, 0x3FE0101020000000
  %1094 = select i1 %1093, float 1.000000e+00, float 0.000000e+00
  %1095 = select i1 %1092, float %1094, float %1088
  %1096 = fmul fast float %1095, %1076
  br label %1097

; <label>:1097                                    ; preds = %1081, %1075
  %1098 = phi float [ %1096, %1081 ], [ %1076, %1075 ]
  %1099 = fcmp fast ult float %1098, 0x3F70101020000000
  br i1 %1099, label %1642, label %1100

; <label>:1100                                    ; preds = %1097
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = and i32 %1102, 16
  %1104 = icmp eq i32 %1103, 0
  br i1 %1104, label %1303, label %1105

; <label>:1105                                    ; preds = %1100
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = add i32 %27, 396
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = add i32 %1110, 0
  %1112 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1111, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1113 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1112, %dx.types.Handle %66, float %1025, float %1026, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1114 = extractvalue %dx.types.ResRet.f32 %1113, 0
  %1115 = extractvalue %dx.types.ResRet.f32 %1113, 1
  %1116 = extractvalue %dx.types.ResRet.f32 %1113, 2
  %1117 = extractvalue %dx.types.ResRet.f32 %1113, 3
  %1118 = and i32 %1107, 255
  %1119 = uitofp i32 %1118 to float
  %1120 = lshr i32 %1107, 8
  %1121 = and i32 %1120, 255
  %1122 = uitofp i32 %1121 to float
  %1123 = fmul fast float %1117, %1119
  %1124 = fadd fast float %1123, %1122
  %1125 = fmul fast float %1124, 0x3F70101000000000
  %1126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.i32 %1126, 0
  %1128 = and i32 %1127, 512
  %1129 = icmp eq i32 %1128, 0
  br i1 %1129, label %1138, label %1130

; <label>:1130                                    ; preds = %1105
  %1131 = add i32 %27, 476
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1131, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = add i32 %1133, 0
  %1135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1134, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1136 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1135, %dx.types.Handle %67, float %1025, float %1026, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  br label %1138

; <label>:1138                                    ; preds = %1130, %1105
  %1139 = phi float [ %1137, %1130 ], [ 1.000000e+00, %1105 ]
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = and i32 %1141, 33554432
  %1143 = icmp eq i32 %1142, 0
  br i1 %1143, label %1250, label %1144

; <label>:1144                                    ; preds = %1138
  %1145 = add i32 %27, 240
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = and i32 %1147, 65535
  %1149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1148)  ; LegacyF16ToF32(value)
  %1150 = lshr i32 %1147, 16
  %1151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1150)  ; LegacyF16ToF32(value)
  %1152 = add i32 %27, 244
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = and i32 %1154, 65535
  %1156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1155)  ; LegacyF16ToF32(value)
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = lshr i32 %1158, 24
  %1160 = uitofp i32 %1159 to float
  %1161 = fmul fast float %1160, 0x3F70101020000000
  %1162 = and i32 %1158, 255
  %1163 = uitofp i32 %1162 to float
  %1164 = fmul fast float %1163, 0x3F70101020000000
  %1165 = lshr i32 %1158, 8
  %1166 = and i32 %1165, 255
  %1167 = uitofp i32 %1166 to float
  %1168 = fmul fast float %1167, 0x3F70101020000000
  %1169 = lshr i32 %1158, 16
  %1170 = and i32 %1169, 255
  %1171 = uitofp i32 %1170 to float
  %1172 = fmul fast float %1171, 0x3F70101020000000
  %1173 = add i32 %27, 236
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = lshr i32 %1175, 24
  %1177 = uitofp i32 %1176 to float
  %1178 = fmul fast float %1177, 0x3F70101020000000
  %1179 = and i32 %1175, 255
  %1180 = uitofp i32 %1179 to float
  %1181 = fmul fast float %1180, 0x3F70101020000000
  %1182 = lshr i32 %1175, 8
  %1183 = and i32 %1182, 255
  %1184 = uitofp i32 %1183 to float
  %1185 = fmul fast float %1184, 0x3F70101020000000
  %1186 = lshr i32 %1175, 16
  %1187 = and i32 %1186, 255
  %1188 = uitofp i32 %1187 to float
  %1189 = fmul fast float %1188, 0x3F70101020000000
  %1190 = bitcast float %1114 to i32
  %1191 = ashr i32 %1190, 1
  %1192 = sub nsw i32 1597463174, %1191
  %1193 = bitcast i32 %1192 to float
  %1194 = fmul fast float %1114, 5.000000e-01
  %1195 = fmul fast float %1193, %1193
  %1196 = fmul fast float %1195, %1194
  %1197 = fsub fast float 1.500000e+00, %1196
  %1198 = fmul fast float %1193, %1114
  %1199 = fmul fast float %1198, %1197
  %1200 = bitcast float %1115 to i32
  %1201 = ashr i32 %1200, 1
  %1202 = sub nsw i32 1597463174, %1201
  %1203 = bitcast i32 %1202 to float
  %1204 = fmul fast float %1115, 5.000000e-01
  %1205 = fmul fast float %1203, %1203
  %1206 = fmul fast float %1205, %1204
  %1207 = fsub fast float 1.500000e+00, %1206
  %1208 = fmul fast float %1203, %1115
  %1209 = fmul fast float %1208, %1207
  %1210 = bitcast float %1116 to i32
  %1211 = ashr i32 %1210, 1
  %1212 = sub nsw i32 1597463174, %1211
  %1213 = bitcast i32 %1212 to float
  %1214 = fmul fast float %1116, 5.000000e-01
  %1215 = fmul fast float %1213, %1213
  %1216 = fmul fast float %1215, %1214
  %1217 = fsub fast float 1.500000e+00, %1216
  %1218 = fmul fast float %1213, %1116
  %1219 = fmul fast float %1218, %1217
  %1220 = fsub fast float %1199, %1181
  %1221 = fsub fast float %1209, %1185
  %1222 = fsub fast float %1219, %1189
  %1223 = fmul fast float %1220, %1149
  %1224 = fmul fast float %1221, %1151
  %1225 = fmul fast float %1222, %1156
  %1226 = fadd fast float %1223, %1164
  %1227 = fadd fast float %1224, %1168
  %1228 = fadd fast float %1225, %1172
  %1229 = call float @dx.op.unary.f32(i32 7, float %1226)  ; Saturate(value)
  %1230 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  %1231 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  %1232 = fmul fast float %1229, %1229
  %1233 = fmul fast float %1230, %1230
  %1234 = fmul fast float %1231, %1231
  %1235 = fsub fast float %1232, %1114
  %1236 = fsub fast float %1233, %1115
  %1237 = fsub fast float %1234, %1116
  %1238 = fmul fast float %1235, %1139
  %1239 = fmul fast float %1236, %1139
  %1240 = fmul fast float %1237, %1139
  %1241 = fadd fast float %1238, %1114
  %1242 = fadd fast float %1239, %1115
  %1243 = fadd fast float %1240, %1116
  %1244 = fadd fast float %1161, %1125
  %1245 = fsub fast float %1244, %1178
  %1246 = call float @dx.op.unary.f32(i32 7, float %1245)  ; Saturate(value)
  %1247 = fsub fast float %1246, %1125
  %1248 = fmul fast float %1247, %1139
  %1249 = fadd fast float %1248, %1125
  br label %1303

; <label>:1250                                    ; preds = %1138
  %1251 = and i32 %1141, 134217728
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %1287, label %1253

; <label>:1253                                    ; preds = %1250
  %1254 = call float @dx.op.unary.f32(i32 24, float %267)  ; Sqrt(value)
  %1255 = call float @dx.op.unary.f32(i32 24, float %271)  ; Sqrt(value)
  %1256 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %1257 = fadd fast float %1254, -5.000000e-01
  %1258 = fadd fast float %1255, -5.000000e-01
  %1259 = fadd fast float %1256, -5.000000e-01
  %1260 = fmul fast float %1257, %1139
  %1261 = fmul fast float %1258, %1139
  %1262 = fmul fast float %1259, %1139
  %1263 = fadd fast float %1260, 5.000000e-01
  %1264 = fadd fast float %1261, 5.000000e-01
  %1265 = fadd fast float %1262, 5.000000e-01
  %1266 = call float @dx.op.unary.f32(i32 24, float %1114)  ; Sqrt(value)
  %1267 = call float @dx.op.unary.f32(i32 24, float %1115)  ; Sqrt(value)
  %1268 = call float @dx.op.unary.f32(i32 24, float %1116)  ; Sqrt(value)
  %1269 = fmul fast float %1263, 2.000000e+00
  %1270 = fsub fast float 1.000000e+00, %1269
  %1271 = fmul fast float %1270, %1266
  %1272 = fadd fast float %1271, %1269
  %1273 = fmul fast float %1272, %1266
  %1274 = fmul fast float %1264, 2.000000e+00
  %1275 = fsub fast float 1.000000e+00, %1274
  %1276 = fmul fast float %1275, %1267
  %1277 = fadd fast float %1276, %1274
  %1278 = fmul fast float %1277, %1267
  %1279 = fmul fast float %1265, 2.000000e+00
  %1280 = fsub fast float 1.000000e+00, %1279
  %1281 = fmul fast float %1280, %1268
  %1282 = fadd fast float %1281, %1279
  %1283 = fmul fast float %1282, %1268
  %1284 = fmul fast float %1273, %1273
  %1285 = fmul fast float %1278, %1278
  %1286 = fmul fast float %1283, %1283
  br label %1303

; <label>:1287                                    ; preds = %1250
  %1288 = fmul fast float %267, %267
  %1289 = fmul fast float %271, %271
  %1290 = fmul fast float %275, %275
  %1291 = fadd fast float %1288, -1.000000e+00
  %1292 = fadd fast float %1289, -1.000000e+00
  %1293 = fadd fast float %1290, -1.000000e+00
  %1294 = fmul fast float %1139, %1291
  %1295 = fmul fast float %1139, %1292
  %1296 = fmul fast float %1139, %1293
  %1297 = fadd fast float %1294, 1.000000e+00
  %1298 = fadd fast float %1295, 1.000000e+00
  %1299 = fadd fast float %1296, 1.000000e+00
  %1300 = fmul fast float %1297, %1114
  %1301 = fmul fast float %1298, %1115
  %1302 = fmul fast float %1299, %1116
  br label %1303

; <label>:1303                                    ; preds = %1287, %1253, %1144, %1100
  %1304 = phi float [ %1249, %1144 ], [ %1125, %1253 ], [ %1125, %1287 ], [ 0x3FA23C0BE0000000, %1100 ]
  %1305 = phi float [ %1241, %1144 ], [ %1284, %1253 ], [ %1300, %1287 ], [ 1.000000e+00, %1100 ]
  %1306 = phi float [ %1242, %1144 ], [ %1285, %1253 ], [ %1301, %1287 ], [ 1.000000e+00, %1100 ]
  %1307 = phi float [ %1243, %1144 ], [ %1286, %1253 ], [ %1302, %1287 ], [ 1.000000e+00, %1100 ]
  %1308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1309 = extractvalue %dx.types.CBufRet.i32 %1308, 1
  %1310 = and i32 %1309, 1
  %1311 = icmp ne i32 %1310, 0
  %1312 = add i32 %27, 356
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = and i32 %1314, 32
  %1316 = icmp ne i32 %1315, 0
  %1317 = and i1 %1311, %1316
  %1318 = select i1 %1317, float 1.000000e+00, float %1305
  %1319 = select i1 %1317, float 0x3FD3333340000000, float %1306
  %1320 = select i1 %1317, float 0x3FD3333340000000, float %1307
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = and i32 %1322, 32
  %1324 = icmp eq i32 %1323, 0
  br i1 %1324, label %1397, label %1325

; <label>:1325                                    ; preds = %1303
  %1326 = add i32 %27, 108
  %1327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.i32 %1327, 0
  %1329 = add i32 %27, 412
  %1330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.i32 %1330, 0
  %1332 = add i32 %1331, 0
  %1333 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1332, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1334 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1333, %dx.types.Handle %66, float %1025, float %1026, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1335 = extractvalue %dx.types.ResRet.f32 %1334, 0
  %1336 = extractvalue %dx.types.ResRet.f32 %1334, 1
  %1337 = extractvalue %dx.types.ResRet.f32 %1334, 2
  %1338 = extractvalue %dx.types.ResRet.f32 %1334, 3
  %1339 = and i32 %1328, 255
  %1340 = uitofp i32 %1339 to float
  %1341 = lshr i32 %1328, 8
  %1342 = and i32 %1341, 255
  %1343 = uitofp i32 %1342 to float
  %1344 = lshr i32 %1328, 16
  %1345 = and i32 %1344, 255
  %1346 = uitofp i32 %1345 to float
  %1347 = fmul fast float %1346, 0x3F70101000000000
  %1348 = fmul fast float %1335, %1340
  %1349 = fadd fast float %1348, %1343
  %1350 = fmul fast float %1349, 0x3F70101000000000
  %1351 = fadd fast float %1336, -5.000000e-01
  %1352 = fadd fast float %1338, -5.000000e-01
  %1353 = fmul fast float %1351, %1347
  %1354 = fmul fast float %1352, %1347
  %1355 = fadd fast float %1353, 5.000000e-01
  %1356 = fadd fast float %1354, 5.000000e-01
  %1357 = fmul fast float %1355, 2.000000e+00
  %1358 = fadd fast float %1357, -1.000000e+00
  %1359 = fmul fast float %1356, 2.000000e+00
  %1360 = fadd fast float %1359, -1.000000e+00
  %1361 = fadd fast float %1358, %1360
  %1362 = fmul fast float %1361, 5.000000e-01
  %1363 = fsub fast float %1358, %1360
  %1364 = fmul fast float %1363, 5.000000e-01
  %1365 = call float @dx.op.unary.f32(i32 6, float %1362)  ; FAbs(value)
  %1366 = fsub fast float 1.000000e+00, %1365
  %1367 = call float @dx.op.unary.f32(i32 6, float %1364)  ; FAbs(value)
  %1368 = fsub fast float %1366, %1367
  %1369 = call float @dx.op.dot3.f32(i32 55, float %1362, float %1364, float %1368, float %1362, float %1364, float %1368)  ; Dot3(ax,ay,az,bx,by,bz)
  %1370 = call float @dx.op.unary.f32(i32 25, float %1369)  ; Rsqrt(value)
  %1371 = fmul fast float %1362, %1370
  %1372 = fmul fast float %1364, %1370
  %1373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1374 = extractvalue %dx.types.ResRet.i32 %1373, 0
  %1375 = and i32 %1374, 67108864
  %1376 = icmp eq i32 %1375, 0
  br i1 %1376, label %1393, label %1377

; <label>:1377                                    ; preds = %1325
  %1378 = add i32 %27, 296
  %1379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1378, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.i32 %1379, 0
  %1381 = and i32 %1380, 65535
  %1382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1381)  ; LegacyF16ToF32(value)
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = and i32 %1384, 65535
  %1386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1385)  ; LegacyF16ToF32(value)
  %1387 = lshr i32 %1380, 16
  %1388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1387)  ; LegacyF16ToF32(value)
  %1389 = fsub fast float %1350, %1388
  %1390 = fmul fast float %1389, %1382
  %1391 = fadd fast float %1390, %1386
  %1392 = call float @dx.op.unary.f32(i32 7, float %1391)  ; Saturate(value)
  br label %1393

; <label>:1393                                    ; preds = %1377, %1325
  %1394 = phi float [ %1392, %1377 ], [ %1350, %1325 ]
  %1395 = call float @dx.op.dot2.f32(i32 54, float %1371, float %1372, float %929, float %930)  ; Dot2(ax,ay,bx,by)
  %1396 = call float @dx.op.dot2.f32(i32 54, float %1371, float %1372, float %931, float %932)  ; Dot2(ax,ay,bx,by)
  br label %1397

; <label>:1397                                    ; preds = %1393, %1303
  %1398 = phi float [ %1394, %1393 ], [ 0x3FD6666660000000, %1303 ]
  %1399 = phi float [ %1395, %1393 ], [ 0.000000e+00, %1303 ]
  %1400 = phi float [ %1396, %1393 ], [ 0.000000e+00, %1303 ]
  %1401 = phi float [ %1337, %1393 ], [ 1.000000e+00, %1303 ]
  %1402 = add i32 %27, 176
  %1403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1402, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.i32 %1403, 0
  %1405 = lshr i32 %1404, 22
  %1406 = shl nuw nsw i32 %1405, 5
  %1407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1406)  ; LegacyF16ToF32(value)
  %1408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.i32 %1408, 0
  %1410 = and i32 %1409, 64
  %1411 = icmp eq i32 %1410, 0
  br i1 %1411, label %1445, label %1412

; <label>:1412                                    ; preds = %1397
  %1413 = add i32 %27, 428
  %1414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1413, i32 undef)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.i32 %1414, 0
  %1416 = add i32 %1415, 0
  %1417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1416, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = and i32 %1419, 131072
  %1421 = icmp eq i32 %1420, 0
  %1422 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1417, %dx.types.Handle %66, float %1025, float %1026, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1423 = extractvalue %dx.types.ResRet.f32 %1422, 0
  %1424 = extractvalue %dx.types.ResRet.f32 %1422, 1
  %1425 = extractvalue %dx.types.ResRet.f32 %1422, 2
  %1426 = fmul fast float %1423, %255
  %1427 = fmul fast float %1424, %258
  %1428 = fmul fast float %1425, %261
  br i1 %1421, label %1435, label %1429

; <label>:1429                                    ; preds = %1412
  %1430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.f32 %1430, 0
  %1432 = fmul fast float %1431, %1426
  %1433 = fmul fast float %1431, %1427
  %1434 = fmul fast float %1431, %1428
  br label %1435

; <label>:1435                                    ; preds = %1429, %1412
  %1436 = phi float [ %1432, %1429 ], [ %1426, %1412 ]
  %1437 = phi float [ %1433, %1429 ], [ %1427, %1412 ]
  %1438 = phi float [ %1434, %1429 ], [ %1428, %1412 ]
  %1439 = fmul fast float %1436, %1407
  %1440 = select i1 %196, float %1439, float %1436
  %1441 = call float @dx.op.dot3.f32(i32 55, float %1440, float %1437, float %1438, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1442 = select i1 %196, float 0.000000e+00, float %1436
  %1443 = select i1 %196, float %1441, float %1437
  %1444 = select i1 %196, float 0.000000e+00, float %1438
  br label %1445

; <label>:1445                                    ; preds = %1435, %1397
  %1446 = phi float [ %1442, %1435 ], [ 0.000000e+00, %1397 ]
  %1447 = phi float [ %1443, %1435 ], [ 0.000000e+00, %1397 ]
  %1448 = phi float [ %1444, %1435 ], [ 0.000000e+00, %1397 ]
  %1449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1450 = extractvalue %dx.types.ResRet.i32 %1449, 0
  %1451 = add i32 %27, 112
  %1452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1451, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.i32 %1452, 0
  %1454 = and i32 %1453, 255
  %1455 = uitofp i32 %1454 to float
  %1456 = lshr i32 %1453, 8
  %1457 = and i32 %1456, 255
  %1458 = uitofp i32 %1457 to float
  %1459 = call float @dx.op.dot3.f32(i32 55, float %1318, float %1319, float %1320, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1460 = fmul fast float %1458, %1459
  %1461 = fadd fast float %1460, %1455
  %1462 = fmul fast float %1461, 0x3F70101020000000
  %1463 = call float @dx.op.unary.f32(i32 7, float %1462)  ; Saturate(value)
  br i1 %917, label %1464, label %1472

; <label>:1464                                    ; preds = %1445
  %1465 = fsub fast float 1.000000e+00, %1098
  %1466 = fmul fast float %1465, %905
  %1467 = fmul fast float %1465, %906
  %1468 = fmul fast float %1465, %907
  %1469 = fmul fast float %1465, %908
  %1470 = fmul fast float %1465, %909
  %1471 = fmul fast float %1465, %910
  br label %1472

; <label>:1472                                    ; preds = %1464, %1445
  %1473 = phi float [ %1466, %1464 ], [ %905, %1445 ]
  %1474 = phi float [ %1467, %1464 ], [ %906, %1445 ]
  %1475 = phi float [ %1468, %1464 ], [ %907, %1445 ]
  %1476 = phi float [ %1469, %1464 ], [ %908, %1445 ]
  %1477 = phi float [ %1470, %1464 ], [ %909, %1445 ]
  %1478 = phi float [ %1471, %1464 ], [ %910, %1445 ]
  %1479 = and i32 %1450, 3
  %1480 = icmp eq i32 %1479, 3
  br i1 %1480, label %1559, label %1481

; <label>:1481                                    ; preds = %1472
  %1482 = and i32 %1450, 16
  %1483 = icmp ne i32 %1482, 0
  %1484 = select i1 %1483, float %1098, float 0.000000e+00
  %1485 = icmp eq i32 %1479, 0
  br i1 %1485, label %1486, label %1514

; <label>:1486                                    ; preds = %1481
  %1487 = and i32 %1450, 64
  %1488 = icmp ne i32 %1487, 0
  %1489 = select i1 %1488, float %1098, float 0.000000e+00
  %1490 = fsub fast float %1318, %1473
  %1491 = fsub fast float %1319, %1474
  %1492 = fsub fast float %1320, %1475
  %1493 = fmul fast float %1484, %1490
  %1494 = fmul fast float %1484, %1491
  %1495 = fmul fast float %1484, %1492
  %1496 = fadd fast float %1493, %1473
  %1497 = fadd fast float %1494, %1474
  %1498 = fadd fast float %1495, %1475
  %1499 = fsub fast float %1304, %911
  %1500 = fmul fast float %1484, %1499
  %1501 = fadd fast float %1500, %911
  %1502 = fsub fast float %1446, %1476
  %1503 = fsub fast float %1447, %1477
  %1504 = fsub fast float %1448, %1478
  %1505 = fmul fast float %1489, %1502
  %1506 = fmul fast float %1489, %1503
  %1507 = fmul fast float %1489, %1504
  %1508 = fadd fast float %1505, %1476
  %1509 = fadd fast float %1506, %1477
  %1510 = fadd fast float %1507, %1478
  %1511 = fsub fast float %1463, %915
  %1512 = fmul fast float %1484, %1511
  %1513 = fadd fast float %1512, %915
  br label %1559

; <label>:1514                                    ; preds = %1481
  %1515 = icmp eq i32 %1479, 1
  br i1 %1515, label %1516, label %1529

; <label>:1516                                    ; preds = %1514
  %1517 = fadd fast float %1318, -1.000000e+00
  %1518 = fadd fast float %1319, -1.000000e+00
  %1519 = fadd fast float %1320, -1.000000e+00
  %1520 = fmul fast float %1484, %1517
  %1521 = fmul fast float %1484, %1518
  %1522 = fmul fast float %1484, %1519
  %1523 = fadd fast float %1520, 1.000000e+00
  %1524 = fadd fast float %1521, 1.000000e+00
  %1525 = fadd fast float %1522, 1.000000e+00
  %1526 = fmul fast float %1523, %1473
  %1527 = fmul fast float %1524, %1474
  %1528 = fmul fast float %1525, %1475
  br label %1559

; <label>:1529                                    ; preds = %1514
  %1530 = icmp eq i32 %1479, 2
  br i1 %1530, label %1531, label %1559

; <label>:1531                                    ; preds = %1529
  %1532 = call float @dx.op.unary.f32(i32 24, float %1318)  ; Sqrt(value)
  %1533 = call float @dx.op.unary.f32(i32 24, float %1319)  ; Sqrt(value)
  %1534 = call float @dx.op.unary.f32(i32 24, float %1320)  ; Sqrt(value)
  %1535 = fadd fast float %1532, -5.000000e-01
  %1536 = fadd fast float %1533, -5.000000e-01
  %1537 = fadd fast float %1534, -5.000000e-01
  %1538 = fmul fast float %1535, %1484
  %1539 = fmul fast float %1536, %1484
  %1540 = fmul fast float %1537, %1484
  %1541 = fadd fast float %1538, 5.000000e-01
  %1542 = fadd fast float %1539, 5.000000e-01
  %1543 = fadd fast float %1540, 5.000000e-01
  %1544 = fmul fast float %1541, 2.000000e+00
  %1545 = fsub fast float 1.000000e+00, %1544
  %1546 = fmul fast float %1545, %1473
  %1547 = fadd fast float %1546, %1544
  %1548 = fmul fast float %1547, %1473
  %1549 = fmul fast float %1542, 2.000000e+00
  %1550 = fsub fast float 1.000000e+00, %1549
  %1551 = fmul fast float %1550, %1474
  %1552 = fadd fast float %1551, %1549
  %1553 = fmul fast float %1552, %1474
  %1554 = fmul fast float %1543, 2.000000e+00
  %1555 = fsub fast float 1.000000e+00, %1554
  %1556 = fmul fast float %1555, %1475
  %1557 = fadd fast float %1556, %1554
  %1558 = fmul fast float %1557, %1475
  br label %1559

; <label>:1559                                    ; preds = %1531, %1529, %1516, %1486, %1472
  %1560 = phi float [ %1473, %1472 ], [ %1548, %1531 ], [ %1473, %1529 ], [ %1526, %1516 ], [ %1496, %1486 ]
  %1561 = phi float [ %1474, %1472 ], [ %1553, %1531 ], [ %1474, %1529 ], [ %1527, %1516 ], [ %1497, %1486 ]
  %1562 = phi float [ %1475, %1472 ], [ %1558, %1531 ], [ %1475, %1529 ], [ %1528, %1516 ], [ %1498, %1486 ]
  %1563 = phi float [ %1476, %1472 ], [ %1476, %1531 ], [ %1476, %1529 ], [ %1476, %1516 ], [ %1508, %1486 ]
  %1564 = phi float [ %1477, %1472 ], [ %1477, %1531 ], [ %1477, %1529 ], [ %1477, %1516 ], [ %1509, %1486 ]
  %1565 = phi float [ %1478, %1472 ], [ %1478, %1531 ], [ %1478, %1529 ], [ %1478, %1516 ], [ %1510, %1486 ]
  %1566 = phi float [ %911, %1472 ], [ %911, %1531 ], [ %911, %1529 ], [ %911, %1516 ], [ %1501, %1486 ]
  %1567 = phi float [ %915, %1472 ], [ %915, %1531 ], [ %915, %1529 ], [ %915, %1516 ], [ %1513, %1486 ]
  %1568 = and i32 %1450, 12
  %1569 = icmp eq i32 %1568, 12
  br i1 %1569, label %1642, label %1570

; <label>:1570                                    ; preds = %1559
  %1571 = and i32 %1450, 2097184
  %1572 = icmp eq i32 %1571, 2097184
  %1573 = select i1 %1572, float %1098, float 0.000000e+00
  %1574 = and i32 %1450, 4194336
  %1575 = icmp eq i32 %1574, 4194336
  %1576 = select i1 %1575, float %1098, float 0.000000e+00
  %1577 = and i32 %1450, 8388640
  %1578 = icmp eq i32 %1577, 8388640
  %1579 = select i1 %1578, float %1098, float 0.000000e+00
  %1580 = icmp eq i32 %1568, 0
  br i1 %1580, label %1581, label %1594

; <label>:1581                                    ; preds = %1570
  %1582 = fsub fast float %1399, %903
  %1583 = fsub fast float %1400, %904
  %1584 = fmul fast float %1573, %1582
  %1585 = fmul fast float %1573, %1583
  %1586 = fadd fast float %1584, %903
  %1587 = fadd fast float %1585, %904
  %1588 = fsub fast float %1401, %914
  %1589 = fmul fast float %1576, %1588
  %1590 = fadd fast float %1589, %914
  %1591 = fsub fast float %1398, %913
  %1592 = fmul fast float %1579, %1591
  %1593 = fadd fast float %1592, %913
  br label %1642

; <label>:1594                                    ; preds = %1570
  %1595 = icmp eq i32 %1568, 4
  br i1 %1595, label %1596, label %1628

; <label>:1596                                    ; preds = %1594
  %1597 = fmul fast float %1573, %1399
  %1598 = fmul fast float %1573, %1400
  %1599 = fadd fast float %1597, %903
  %1600 = fadd fast float %1598, %904
  %1601 = call float @dx.op.binary.f32(i32 36, float %914, float %1401)  ; FMin(a,b)
  %1602 = fsub fast float %1601, %914
  %1603 = fmul fast float %1602, %1576
  %1604 = fadd fast float %1603, %914
  %1605 = fadd fast float %1398, %913
  %1606 = fmul fast float %1605, 0x3FF337FAE0000000
  %1607 = fmul fast float %913, %913
  %1608 = fmul fast float %1398, %1398
  %1609 = fadd fast float %1608, %1607
  %1610 = fmul fast float %1609, 0x3FE5152B00000000
  %1611 = fmul fast float %913, 0xBFCC1F85E0000000
  %1612 = fmul fast float %1611, %1398
  %1613 = fadd fast float %1612, 0xBFE1363700000000
  %1614 = fadd fast float %1613, %1606
  %1615 = fsub fast float %1614, %1610
  %1616 = fmul fast float %1605, 0x3FBA6F0D00000000
  %1617 = fmul fast float %1609, 0x3FD0432880000000
  %1618 = fmul fast float %913, 0xBFEF110800000000
  %1619 = fmul fast float %1618, %1398
  %1620 = fadd fast float %1619, 1.000000e+00
  %1621 = fsub fast float %1620, %1616
  %1622 = fadd fast float %1621, %1617
  %1623 = fdiv fast float %1615, %1622
  %1624 = call float @dx.op.unary.f32(i32 7, float %1623)  ; Saturate(value)
  %1625 = fsub fast float %1624, %913
  %1626 = fmul fast float %1625, %1579
  %1627 = fadd fast float %1626, %913
  br label %1642

; <label>:1628                                    ; preds = %1594
  %1629 = icmp eq i32 %1568, 8
  br i1 %1629, label %1630, label %1642

; <label>:1630                                    ; preds = %1628
  %1631 = fmul fast float %1573, %1399
  %1632 = fmul fast float %1573, %1400
  %1633 = fadd fast float %1631, %903
  %1634 = fadd fast float %1632, %904
  %1635 = call float @dx.op.binary.f32(i32 36, float %914, float %1401)  ; FMin(a,b)
  %1636 = fsub fast float %1635, %914
  %1637 = fmul fast float %1636, %1576
  %1638 = fadd fast float %1637, %914
  %1639 = fsub fast float %1398, %913
  %1640 = fmul fast float %1579, %1639
  %1641 = fadd fast float %1640, %913
  br label %1642

; <label>:1642                                    ; preds = %1630, %1628, %1596, %1581, %1559, %1097, %916, %902
  %1643 = phi float [ %903, %1559 ], [ %903, %1097 ], [ %903, %902 ], [ %1633, %1630 ], [ %903, %1628 ], [ %1599, %1596 ], [ %1586, %1581 ], [ %903, %916 ]
  %1644 = phi float [ %904, %1559 ], [ %904, %1097 ], [ %904, %902 ], [ %1634, %1630 ], [ %904, %1628 ], [ %1600, %1596 ], [ %1587, %1581 ], [ %904, %916 ]
  %1645 = phi float [ %1560, %1559 ], [ %905, %1097 ], [ %905, %902 ], [ %1560, %1630 ], [ %1560, %1628 ], [ %1560, %1596 ], [ %1560, %1581 ], [ %905, %916 ]
  %1646 = phi float [ %1561, %1559 ], [ %906, %1097 ], [ %906, %902 ], [ %1561, %1630 ], [ %1561, %1628 ], [ %1561, %1596 ], [ %1561, %1581 ], [ %906, %916 ]
  %1647 = phi float [ %1562, %1559 ], [ %907, %1097 ], [ %907, %902 ], [ %1562, %1630 ], [ %1562, %1628 ], [ %1562, %1596 ], [ %1562, %1581 ], [ %907, %916 ]
  %1648 = phi float [ %1563, %1559 ], [ %908, %1097 ], [ %908, %902 ], [ %1563, %1630 ], [ %1563, %1628 ], [ %1563, %1596 ], [ %1563, %1581 ], [ %908, %916 ]
  %1649 = phi float [ %1564, %1559 ], [ %909, %1097 ], [ %909, %902 ], [ %1564, %1630 ], [ %1564, %1628 ], [ %1564, %1596 ], [ %1564, %1581 ], [ %909, %916 ]
  %1650 = phi float [ %1565, %1559 ], [ %910, %1097 ], [ %910, %902 ], [ %1565, %1630 ], [ %1565, %1628 ], [ %1565, %1596 ], [ %1565, %1581 ], [ %910, %916 ]
  %1651 = phi float [ %1566, %1559 ], [ %911, %1097 ], [ %911, %902 ], [ %1566, %1630 ], [ %1566, %1628 ], [ %1566, %1596 ], [ %1566, %1581 ], [ %911, %916 ]
  %1652 = phi float [ %913, %1559 ], [ %913, %1097 ], [ %913, %902 ], [ %1641, %1630 ], [ %913, %1628 ], [ %1627, %1596 ], [ %1593, %1581 ], [ %913, %916 ]
  %1653 = phi float [ %914, %1559 ], [ %914, %1097 ], [ %914, %902 ], [ %1638, %1630 ], [ %914, %1628 ], [ %1604, %1596 ], [ %1590, %1581 ], [ %914, %916 ]
  %1654 = phi float [ %1567, %1559 ], [ %915, %1097 ], [ %915, %902 ], [ %1567, %1630 ], [ %1567, %1628 ], [ %1567, %1596 ], [ %1567, %1581 ], [ %915, %916 ]
  br i1 %382, label %2381, label %1655

; <label>:1655                                    ; preds = %1642
  %1656 = icmp ult i32 %435, 3
  %1657 = add i32 %27, 56
  %1658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1659 = extractvalue %dx.types.ResRet.i32 %1658, 0
  %1660 = add i32 %27, 60
  %1661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1660, i32 undef)  ; BufferLoad(srv,index,wot)
  %1662 = extractvalue %dx.types.ResRet.i32 %1661, 0
  %1663 = or i32 %1662, %1659
  %1664 = icmp eq i32 %1663, 0
  br i1 %1664, label %2381, label %1665

; <label>:1665                                    ; preds = %1655
  %1666 = and i32 %1659, 262144
  %1667 = icmp ne i32 %1666, 0
  %1668 = select i1 %1667, float %31, float 1.000000e+00
  %1669 = select i1 %1667, float %32, float 0.000000e+00
  %1670 = select i1 %1667, float %33, float 0.000000e+00
  %1671 = select i1 %1667, float %34, float 1.000000e+00
  %1672 = select i1 %1667, float %35, float %58
  %1673 = select i1 %1667, float %36, float %59
  %1674 = add i32 %27, 316
  %1675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1674, i32 undef)  ; BufferLoad(srv,index,wot)
  %1676 = extractvalue %dx.types.ResRet.i32 %1675, 0
  %1677 = lshr i32 %1676, 16
  %1678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1677)  ; LegacyF16ToF32(value)
  %1679 = fmul fast float %1678, 0x3F50624DE0000000
  %1680 = add i32 %27, 120
  %1681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1680, i32 undef)  ; BufferLoad(srv,index,wot)
  %1682 = extractvalue %dx.types.ResRet.i32 %1681, 0
  %1683 = lshr i32 %1682, 16
  %1684 = and i32 %1683, 255
  %1685 = lshr i32 %1682, 24
  %1686 = add i32 %27, 324
  %1687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1686, i32 undef)  ; BufferLoad(srv,index,wot)
  %1688 = extractvalue %dx.types.ResRet.i32 %1687, 0
  %1689 = and i32 %1688, 65535
  %1690 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1689)  ; LegacyF16ToF32(value)
  %1691 = lshr i32 %1688, 16
  %1692 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1691)  ; LegacyF16ToF32(value)
  %1693 = add i32 %27, 64
  %1694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1695 = extractvalue %dx.types.ResRet.i32 %1694, 0
  %1696 = lshr i32 %1695, 22
  %1697 = shl nuw nsw i32 %1696, 5
  %1698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1697)  ; LegacyF16ToF32(value)
  %1699 = shl i32 %1695, 4
  %1700 = and i32 %1699, 32752
  %1701 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1700)  ; LegacyF16ToF32(value)
  %1702 = lshr i32 %1695, 7
  %1703 = and i32 %1702, 32752
  %1704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1703)  ; LegacyF16ToF32(value)
  %1705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1706 = extractvalue %dx.types.CBufRet.f32 %1705, 3
  %1707 = fmul fast float %1706, 1.000000e+03
  %1708 = fmul fast float %332, %1707
  %1709 = call float @dx.op.unary.f32(i32 22, float %1708)  ; Frc(value)
  %1710 = fadd fast float %1709, %322
  %1711 = fmul fast float %333, %1707
  %1712 = call float @dx.op.unary.f32(i32 22, float %1711)  ; Frc(value)
  %1713 = fadd fast float %1712, %324
  %1714 = fmul fast float %1679, %1707
  %1715 = call float @dx.op.unary.f32(i32 22, float %1714)  ; Frc(value)
  %1716 = fmul fast float %1715, 0x401921FB60000000
  %1717 = fadd fast float %1716, %1698
  %1718 = call float @dx.op.unary.f32(i32 13, float %1717)  ; Sin(value)
  %1719 = call float @dx.op.unary.f32(i32 12, float %1717)  ; Cos(value)
  %1720 = fsub fast float -0.000000e+00, %1718
  %1721 = fadd fast float %1672, -5.000000e-01
  %1722 = fadd fast float %1673, -5.000000e-01
  %1723 = fmul fast float %1690, %1721
  %1724 = fmul fast float %1692, %1722
  %1725 = fadd fast float %1723, 5.000000e-01
  %1726 = fadd fast float %1724, 5.000000e-01
  %1727 = fmul fast float %1701, %1725
  %1728 = fmul fast float %1704, %1726
  %1729 = fmul fast float %1719, %1727
  %1730 = call float @dx.op.tertiary.f32(i32 46, float %1720, float %1728, float %1729)  ; FMad(a,b,c)
  %1731 = fmul fast float %1718, %1727
  %1732 = call float @dx.op.tertiary.f32(i32 46, float %1719, float %1728, float %1731)  ; FMad(a,b,c)
  %1733 = fadd fast float %1710, %1730
  %1734 = fadd fast float %1713, %1732
  %1735 = icmp ugt i32 %1684, 1
  %1736 = icmp ugt i32 %1682, 33554431
  %1737 = or i1 %1736, %1735
  br i1 %1737, label %1738, label %1763

; <label>:1738                                    ; preds = %1665
  %1739 = add i32 %27, 260
  %1740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.i32 %1740, 0
  %1742 = lshr i32 %1741, 16
  %1743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1742)  ; LegacyF16ToF32(value)
  %1744 = fmul fast float %1706, %1743
  %1745 = call float @dx.op.unary.f32(i32 22, float %1744)  ; Frc(value)
  %1746 = mul nuw nsw i32 %1684, %1685
  %1747 = uitofp i32 %1746 to float
  %1748 = fmul fast float %1745, %1747
  %1749 = call float @dx.op.unary.f32(i32 27, float %1748)  ; Round_ni(value)
  %1750 = fptoui float %1749 to i32
  %1751 = urem i32 %1750, %1684
  %1752 = udiv i32 %1750, %1685
  %1753 = call float @dx.op.unary.f32(i32 22, float %1733)  ; Frc(value)
  %1754 = call float @dx.op.unary.f32(i32 22, float %1734)  ; Frc(value)
  %1755 = uitofp i32 %1751 to float
  %1756 = uitofp i32 %1752 to float
  %1757 = fadd fast float %1753, %1755
  %1758 = fadd fast float %1754, %1756
  %1759 = uitofp i32 %1684 to float
  %1760 = uitofp i32 %1685 to float
  %1761 = fdiv fast float %1757, %1759
  %1762 = fdiv fast float %1758, %1760
  br label %1763

; <label>:1763                                    ; preds = %1738, %1665
  %1764 = phi float [ %1761, %1738 ], [ %1733, %1665 ]
  %1765 = phi float [ %1762, %1738 ], [ %1734, %1665 ]
  %1766 = and i32 %1659, 256
  %1767 = icmp eq i32 %1766, 0
  br i1 %1767, label %1814, label %1768

; <label>:1768                                    ; preds = %1763
  %1769 = add i32 %27, 464
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = add i32 %1771, 0
  %1773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1772, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1774 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1773, %dx.types.Handle %67, float %1764, float %1765, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1775 = extractvalue %dx.types.ResRet.f32 %1774, 0
  %1776 = add i32 %27, 132
  %1777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1776, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.i32 %1777, 0
  %1779 = shl i32 %1778, 4
  %1780 = and i32 %1779, 32752
  %1781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1780)  ; LegacyF16ToF32(value)
  %1782 = lshr i32 %1778, 7
  %1783 = and i32 %1782, 32752
  %1784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1783)  ; LegacyF16ToF32(value)
  %1785 = fsub fast float 1.000000e+00, %431
  %1786 = call float @dx.op.binary.f32(i32 35, float %1785, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1787 = bitcast float %431 to i32
  %1788 = sitofp i32 %1787 to float
  %1789 = fadd fast float %1788, 0xC1CFBF8940000000
  %1790 = fmul fast float %1784, %1789
  %1791 = fadd fast float %1790, 0x41CFBF8940000000
  %1792 = fptosi float %1791 to i32
  %1793 = bitcast i32 %1792 to float
  %1794 = bitcast float %1786 to i32
  %1795 = sitofp i32 %1794 to float
  %1796 = fadd fast float %1795, 0xC1CFBF8940000000
  %1797 = fmul fast float %1796, %1784
  %1798 = fadd fast float %1797, 0x41CFBF8940000000
  %1799 = fptosi float %1798 to i32
  %1800 = bitcast i32 %1799 to float
  %1801 = fmul fast float %1793, %1781
  %1802 = fmul fast float %1800, %1781
  %1803 = fsub fast float %1786, %1801
  %1804 = fadd fast float %1802, %1786
  %1805 = call float @dx.op.unary.f32(i32 7, float %1803)  ; Saturate(value)
  %1806 = call float @dx.op.unary.f32(i32 7, float %1804)  ; Saturate(value)
  %1807 = fsub fast float %1775, %1805
  %1808 = fsub fast float %1806, %1805
  %1809 = bitcast float %1808 to i32
  %1810 = sub nsw i32 2129859010, %1809
  %1811 = bitcast i32 %1810 to float
  %1812 = fmul fast float %1811, %1807
  %1813 = call float @dx.op.unary.f32(i32 7, float %1812)  ; Saturate(value)
  br label %1814

; <label>:1814                                    ; preds = %1768, %1763
  %1815 = phi float [ %1813, %1768 ], [ %431, %1763 ]
  %1816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1817 = extractvalue %dx.types.ResRet.i32 %1816, 0
  %1818 = and i32 %1817, 128
  %1819 = icmp eq i32 %1818, 0
  br i1 %1819, label %1836, label %1820

; <label>:1820                                    ; preds = %1814
  %1821 = add i32 %27, 448
  %1822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.i32 %1822, 0
  %1824 = add i32 %1823, 0
  %1825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1824, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1826 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1825, %dx.types.Handle %67, float %1764, float %1765, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1827 = extractvalue %dx.types.ResRet.f32 %1826, 0
  %1828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1829 = extractvalue %dx.types.ResRet.i32 %1828, 0
  %1830 = and i32 %1829, 524288
  %1831 = icmp ne i32 %1830, 0
  %1832 = fcmp fast ogt float %1827, 0x3FE0101020000000
  %1833 = select i1 %1832, float 1.000000e+00, float 0.000000e+00
  %1834 = select i1 %1831, float %1833, float %1827
  %1835 = fmul fast float %1834, %1815
  br label %1836

; <label>:1836                                    ; preds = %1820, %1814
  %1837 = phi float [ %1835, %1820 ], [ %1815, %1814 ]
  %1838 = fcmp fast ult float %1837, 0x3F70101020000000
  br i1 %1838, label %2381, label %1839

; <label>:1839                                    ; preds = %1836
  %1840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.i32 %1840, 0
  %1842 = and i32 %1841, 16
  %1843 = icmp eq i32 %1842, 0
  br i1 %1843, label %2042, label %1844

; <label>:1844                                    ; preds = %1839
  %1845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1680, i32 undef)  ; BufferLoad(srv,index,wot)
  %1846 = extractvalue %dx.types.ResRet.i32 %1845, 0
  %1847 = add i32 %27, 400
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = add i32 %1849, 0
  %1851 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1850, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1852 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1851, %dx.types.Handle %66, float %1764, float %1765, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1853 = extractvalue %dx.types.ResRet.f32 %1852, 0
  %1854 = extractvalue %dx.types.ResRet.f32 %1852, 1
  %1855 = extractvalue %dx.types.ResRet.f32 %1852, 2
  %1856 = extractvalue %dx.types.ResRet.f32 %1852, 3
  %1857 = and i32 %1846, 255
  %1858 = uitofp i32 %1857 to float
  %1859 = lshr i32 %1846, 8
  %1860 = and i32 %1859, 255
  %1861 = uitofp i32 %1860 to float
  %1862 = fmul fast float %1856, %1858
  %1863 = fadd fast float %1862, %1861
  %1864 = fmul fast float %1863, 0x3F70101000000000
  %1865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.i32 %1865, 0
  %1867 = and i32 %1866, 512
  %1868 = icmp eq i32 %1867, 0
  br i1 %1868, label %1877, label %1869

; <label>:1869                                    ; preds = %1844
  %1870 = add i32 %27, 480
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = add i32 %1872, 0
  %1874 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1873, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1875 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1874, %dx.types.Handle %67, float %1764, float %1765, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1876 = extractvalue %dx.types.ResRet.f32 %1875, 0
  br label %1877

; <label>:1877                                    ; preds = %1869, %1844
  %1878 = phi float [ %1876, %1869 ], [ 1.000000e+00, %1844 ]
  %1879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.i32 %1879, 0
  %1881 = and i32 %1880, 33554432
  %1882 = icmp eq i32 %1881, 0
  br i1 %1882, label %1989, label %1883

; <label>:1883                                    ; preds = %1877
  %1884 = add i32 %27, 256
  %1885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.i32 %1885, 0
  %1887 = and i32 %1886, 65535
  %1888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1887)  ; LegacyF16ToF32(value)
  %1889 = lshr i32 %1886, 16
  %1890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1889)  ; LegacyF16ToF32(value)
  %1891 = add i32 %27, 260
  %1892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.i32 %1892, 0
  %1894 = and i32 %1893, 65535
  %1895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1894)  ; LegacyF16ToF32(value)
  %1896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1897 = extractvalue %dx.types.ResRet.i32 %1896, 0
  %1898 = lshr i32 %1897, 24
  %1899 = uitofp i32 %1898 to float
  %1900 = fmul fast float %1899, 0x3F70101020000000
  %1901 = and i32 %1897, 255
  %1902 = uitofp i32 %1901 to float
  %1903 = fmul fast float %1902, 0x3F70101020000000
  %1904 = lshr i32 %1897, 8
  %1905 = and i32 %1904, 255
  %1906 = uitofp i32 %1905 to float
  %1907 = fmul fast float %1906, 0x3F70101020000000
  %1908 = lshr i32 %1897, 16
  %1909 = and i32 %1908, 255
  %1910 = uitofp i32 %1909 to float
  %1911 = fmul fast float %1910, 0x3F70101020000000
  %1912 = add i32 %27, 252
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = lshr i32 %1914, 24
  %1916 = uitofp i32 %1915 to float
  %1917 = fmul fast float %1916, 0x3F70101020000000
  %1918 = and i32 %1914, 255
  %1919 = uitofp i32 %1918 to float
  %1920 = fmul fast float %1919, 0x3F70101020000000
  %1921 = lshr i32 %1914, 8
  %1922 = and i32 %1921, 255
  %1923 = uitofp i32 %1922 to float
  %1924 = fmul fast float %1923, 0x3F70101020000000
  %1925 = lshr i32 %1914, 16
  %1926 = and i32 %1925, 255
  %1927 = uitofp i32 %1926 to float
  %1928 = fmul fast float %1927, 0x3F70101020000000
  %1929 = bitcast float %1853 to i32
  %1930 = ashr i32 %1929, 1
  %1931 = sub nsw i32 1597463174, %1930
  %1932 = bitcast i32 %1931 to float
  %1933 = fmul fast float %1853, 5.000000e-01
  %1934 = fmul fast float %1932, %1932
  %1935 = fmul fast float %1934, %1933
  %1936 = fsub fast float 1.500000e+00, %1935
  %1937 = fmul fast float %1932, %1853
  %1938 = fmul fast float %1937, %1936
  %1939 = bitcast float %1854 to i32
  %1940 = ashr i32 %1939, 1
  %1941 = sub nsw i32 1597463174, %1940
  %1942 = bitcast i32 %1941 to float
  %1943 = fmul fast float %1854, 5.000000e-01
  %1944 = fmul fast float %1942, %1942
  %1945 = fmul fast float %1944, %1943
  %1946 = fsub fast float 1.500000e+00, %1945
  %1947 = fmul fast float %1942, %1854
  %1948 = fmul fast float %1947, %1946
  %1949 = bitcast float %1855 to i32
  %1950 = ashr i32 %1949, 1
  %1951 = sub nsw i32 1597463174, %1950
  %1952 = bitcast i32 %1951 to float
  %1953 = fmul fast float %1855, 5.000000e-01
  %1954 = fmul fast float %1952, %1952
  %1955 = fmul fast float %1954, %1953
  %1956 = fsub fast float 1.500000e+00, %1955
  %1957 = fmul fast float %1952, %1855
  %1958 = fmul fast float %1957, %1956
  %1959 = fsub fast float %1938, %1920
  %1960 = fsub fast float %1948, %1924
  %1961 = fsub fast float %1958, %1928
  %1962 = fmul fast float %1959, %1888
  %1963 = fmul fast float %1960, %1890
  %1964 = fmul fast float %1961, %1895
  %1965 = fadd fast float %1962, %1903
  %1966 = fadd fast float %1963, %1907
  %1967 = fadd fast float %1964, %1911
  %1968 = call float @dx.op.unary.f32(i32 7, float %1965)  ; Saturate(value)
  %1969 = call float @dx.op.unary.f32(i32 7, float %1966)  ; Saturate(value)
  %1970 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1971 = fmul fast float %1968, %1968
  %1972 = fmul fast float %1969, %1969
  %1973 = fmul fast float %1970, %1970
  %1974 = fsub fast float %1971, %1853
  %1975 = fsub fast float %1972, %1854
  %1976 = fsub fast float %1973, %1855
  %1977 = fmul fast float %1974, %1878
  %1978 = fmul fast float %1975, %1878
  %1979 = fmul fast float %1976, %1878
  %1980 = fadd fast float %1977, %1853
  %1981 = fadd fast float %1978, %1854
  %1982 = fadd fast float %1979, %1855
  %1983 = fadd fast float %1900, %1864
  %1984 = fsub fast float %1983, %1917
  %1985 = call float @dx.op.unary.f32(i32 7, float %1984)  ; Saturate(value)
  %1986 = fsub fast float %1985, %1864
  %1987 = fmul fast float %1986, %1878
  %1988 = fadd fast float %1987, %1864
  br label %2042

; <label>:1989                                    ; preds = %1877
  %1990 = and i32 %1880, 134217728
  %1991 = icmp eq i32 %1990, 0
  br i1 %1991, label %2026, label %1992

; <label>:1992                                    ; preds = %1989
  %1993 = call float @dx.op.unary.f32(i32 24, float %309)  ; Sqrt(value)
  %1994 = call float @dx.op.unary.f32(i32 24, float %313)  ; Sqrt(value)
  %1995 = call float @dx.op.unary.f32(i32 24, float %317)  ; Sqrt(value)
  %1996 = fadd fast float %1993, -5.000000e-01
  %1997 = fadd fast float %1994, -5.000000e-01
  %1998 = fadd fast float %1995, -5.000000e-01
  %1999 = fmul fast float %1996, %1878
  %2000 = fmul fast float %1997, %1878
  %2001 = fmul fast float %1998, %1878
  %2002 = fadd fast float %1999, 5.000000e-01
  %2003 = fadd fast float %2000, 5.000000e-01
  %2004 = fadd fast float %2001, 5.000000e-01
  %2005 = call float @dx.op.unary.f32(i32 24, float %1853)  ; Sqrt(value)
  %2006 = call float @dx.op.unary.f32(i32 24, float %1854)  ; Sqrt(value)
  %2007 = call float @dx.op.unary.f32(i32 24, float %1855)  ; Sqrt(value)
  %2008 = fmul fast float %2002, 2.000000e+00
  %2009 = fsub fast float 1.000000e+00, %2008
  %2010 = fmul fast float %2009, %2005
  %2011 = fadd fast float %2010, %2008
  %2012 = fmul fast float %2011, %2005
  %2013 = fmul fast float %2003, 2.000000e+00
  %2014 = fsub fast float 1.000000e+00, %2013
  %2015 = fmul fast float %2014, %2006
  %2016 = fadd fast float %2015, %2013
  %2017 = fmul fast float %2016, %2006
  %2018 = fmul fast float %2004, 2.000000e+00
  %2019 = fsub fast float 1.000000e+00, %2018
  %2020 = fmul fast float %2019, %2007
  %2021 = fadd fast float %2020, %2018
  %2022 = fmul fast float %2021, %2007
  %2023 = fmul fast float %2012, %2012
  %2024 = fmul fast float %2017, %2017
  %2025 = fmul fast float %2022, %2022
  br label %2042

; <label>:2026                                    ; preds = %1989
  %2027 = fmul fast float %309, %309
  %2028 = fmul fast float %313, %313
  %2029 = fmul fast float %317, %317
  %2030 = fadd fast float %2027, -1.000000e+00
  %2031 = fadd fast float %2028, -1.000000e+00
  %2032 = fadd fast float %2029, -1.000000e+00
  %2033 = fmul fast float %1878, %2030
  %2034 = fmul fast float %1878, %2031
  %2035 = fmul fast float %1878, %2032
  %2036 = fadd fast float %2033, 1.000000e+00
  %2037 = fadd fast float %2034, 1.000000e+00
  %2038 = fadd fast float %2035, 1.000000e+00
  %2039 = fmul fast float %2036, %1853
  %2040 = fmul fast float %2037, %1854
  %2041 = fmul fast float %2038, %1855
  br label %2042

; <label>:2042                                    ; preds = %2026, %1992, %1883, %1839
  %2043 = phi float [ %1988, %1883 ], [ %1864, %1992 ], [ %1864, %2026 ], [ 0x3FA23C0BE0000000, %1839 ]
  %2044 = phi float [ %1980, %1883 ], [ %2023, %1992 ], [ %2039, %2026 ], [ 1.000000e+00, %1839 ]
  %2045 = phi float [ %1981, %1883 ], [ %2024, %1992 ], [ %2040, %2026 ], [ 1.000000e+00, %1839 ]
  %2046 = phi float [ %1982, %1883 ], [ %2025, %1992 ], [ %2041, %2026 ], [ 1.000000e+00, %1839 ]
  %2047 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2048 = extractvalue %dx.types.CBufRet.i32 %2047, 1
  %2049 = and i32 %2048, 1
  %2050 = icmp ne i32 %2049, 0
  %2051 = add i32 %27, 356
  %2052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2051, i32 undef)  ; BufferLoad(srv,index,wot)
  %2053 = extractvalue %dx.types.ResRet.i32 %2052, 0
  %2054 = and i32 %2053, 32
  %2055 = icmp ne i32 %2054, 0
  %2056 = and i1 %2050, %2055
  %2057 = select i1 %2056, float 1.000000e+00, float %2044
  %2058 = select i1 %2056, float 0x3FD3333340000000, float %2045
  %2059 = select i1 %2056, float 0x3FD3333340000000, float %2046
  %2060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2061 = extractvalue %dx.types.ResRet.i32 %2060, 0
  %2062 = and i32 %2061, 32
  %2063 = icmp eq i32 %2062, 0
  br i1 %2063, label %2136, label %2064

; <label>:2064                                    ; preds = %2042
  %2065 = add i32 %27, 124
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2065, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = add i32 %27, 416
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = add i32 %2070, 0
  %2072 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2071, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2073 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2072, %dx.types.Handle %66, float %1764, float %1765, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2074 = extractvalue %dx.types.ResRet.f32 %2073, 0
  %2075 = extractvalue %dx.types.ResRet.f32 %2073, 1
  %2076 = extractvalue %dx.types.ResRet.f32 %2073, 2
  %2077 = extractvalue %dx.types.ResRet.f32 %2073, 3
  %2078 = and i32 %2067, 255
  %2079 = uitofp i32 %2078 to float
  %2080 = lshr i32 %2067, 8
  %2081 = and i32 %2080, 255
  %2082 = uitofp i32 %2081 to float
  %2083 = lshr i32 %2067, 16
  %2084 = and i32 %2083, 255
  %2085 = uitofp i32 %2084 to float
  %2086 = fmul fast float %2085, 0x3F70101000000000
  %2087 = fmul fast float %2074, %2079
  %2088 = fadd fast float %2087, %2082
  %2089 = fmul fast float %2088, 0x3F70101000000000
  %2090 = fadd fast float %2075, -5.000000e-01
  %2091 = fadd fast float %2077, -5.000000e-01
  %2092 = fmul fast float %2090, %2086
  %2093 = fmul fast float %2091, %2086
  %2094 = fadd fast float %2092, 5.000000e-01
  %2095 = fadd fast float %2093, 5.000000e-01
  %2096 = fmul fast float %2094, 2.000000e+00
  %2097 = fadd fast float %2096, -1.000000e+00
  %2098 = fmul fast float %2095, 2.000000e+00
  %2099 = fadd fast float %2098, -1.000000e+00
  %2100 = fadd fast float %2097, %2099
  %2101 = fmul fast float %2100, 5.000000e-01
  %2102 = fsub fast float %2097, %2099
  %2103 = fmul fast float %2102, 5.000000e-01
  %2104 = call float @dx.op.unary.f32(i32 6, float %2101)  ; FAbs(value)
  %2105 = fsub fast float 1.000000e+00, %2104
  %2106 = call float @dx.op.unary.f32(i32 6, float %2103)  ; FAbs(value)
  %2107 = fsub fast float %2105, %2106
  %2108 = call float @dx.op.dot3.f32(i32 55, float %2101, float %2103, float %2107, float %2101, float %2103, float %2107)  ; Dot3(ax,ay,az,bx,by,bz)
  %2109 = call float @dx.op.unary.f32(i32 25, float %2108)  ; Rsqrt(value)
  %2110 = fmul fast float %2101, %2109
  %2111 = fmul fast float %2103, %2109
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = and i32 %2113, 67108864
  %2115 = icmp eq i32 %2114, 0
  br i1 %2115, label %2132, label %2116

; <label>:2116                                    ; preds = %2064
  %2117 = add i32 %27, 312
  %2118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2117, i32 undef)  ; BufferLoad(srv,index,wot)
  %2119 = extractvalue %dx.types.ResRet.i32 %2118, 0
  %2120 = and i32 %2119, 65535
  %2121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2120)  ; LegacyF16ToF32(value)
  %2122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1674, i32 undef)  ; BufferLoad(srv,index,wot)
  %2123 = extractvalue %dx.types.ResRet.i32 %2122, 0
  %2124 = and i32 %2123, 65535
  %2125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2124)  ; LegacyF16ToF32(value)
  %2126 = lshr i32 %2119, 16
  %2127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2126)  ; LegacyF16ToF32(value)
  %2128 = fsub fast float %2089, %2127
  %2129 = fmul fast float %2128, %2121
  %2130 = fadd fast float %2129, %2125
  %2131 = call float @dx.op.unary.f32(i32 7, float %2130)  ; Saturate(value)
  br label %2132

; <label>:2132                                    ; preds = %2116, %2064
  %2133 = phi float [ %2131, %2116 ], [ %2089, %2064 ]
  %2134 = call float @dx.op.dot2.f32(i32 54, float %2110, float %2111, float %1668, float %1669)  ; Dot2(ax,ay,bx,by)
  %2135 = call float @dx.op.dot2.f32(i32 54, float %2110, float %2111, float %1670, float %1671)  ; Dot2(ax,ay,bx,by)
  br label %2136

; <label>:2136                                    ; preds = %2132, %2042
  %2137 = phi float [ %2133, %2132 ], [ 0x3FD6666660000000, %2042 ]
  %2138 = phi float [ %2134, %2132 ], [ 0.000000e+00, %2042 ]
  %2139 = phi float [ %2135, %2132 ], [ 0.000000e+00, %2042 ]
  %2140 = phi float [ %2076, %2132 ], [ 1.000000e+00, %2042 ]
  %2141 = add i32 %27, 192
  %2142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2141, i32 undef)  ; BufferLoad(srv,index,wot)
  %2143 = extractvalue %dx.types.ResRet.i32 %2142, 0
  %2144 = lshr i32 %2143, 22
  %2145 = shl nuw nsw i32 %2144, 5
  %2146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2145)  ; LegacyF16ToF32(value)
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = and i32 %2148, 64
  %2150 = icmp eq i32 %2149, 0
  br i1 %2150, label %2184, label %2151

; <label>:2151                                    ; preds = %2136
  %2152 = add i32 %27, 432
  %2153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2154 = extractvalue %dx.types.ResRet.i32 %2153, 0
  %2155 = add i32 %2154, 0
  %2156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2155, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = and i32 %2158, 131072
  %2160 = icmp eq i32 %2159, 0
  %2161 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2156, %dx.types.Handle %66, float %1764, float %1765, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2162 = extractvalue %dx.types.ResRet.f32 %2161, 0
  %2163 = extractvalue %dx.types.ResRet.f32 %2161, 1
  %2164 = extractvalue %dx.types.ResRet.f32 %2161, 2
  %2165 = fmul fast float %2162, %297
  %2166 = fmul fast float %2163, %300
  %2167 = fmul fast float %2164, %303
  br i1 %2160, label %2174, label %2168

; <label>:2168                                    ; preds = %2151
  %2169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2170 = extractvalue %dx.types.CBufRet.f32 %2169, 0
  %2171 = fmul fast float %2170, %2165
  %2172 = fmul fast float %2170, %2166
  %2173 = fmul fast float %2170, %2167
  br label %2174

; <label>:2174                                    ; preds = %2168, %2151
  %2175 = phi float [ %2171, %2168 ], [ %2165, %2151 ]
  %2176 = phi float [ %2172, %2168 ], [ %2166, %2151 ]
  %2177 = phi float [ %2173, %2168 ], [ %2167, %2151 ]
  %2178 = fmul fast float %2175, %2146
  %2179 = select i1 %196, float %2178, float %2175
  %2180 = call float @dx.op.dot3.f32(i32 55, float %2179, float %2176, float %2177, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2181 = select i1 %196, float 0.000000e+00, float %2175
  %2182 = select i1 %196, float %2180, float %2176
  %2183 = select i1 %196, float 0.000000e+00, float %2177
  br label %2184

; <label>:2184                                    ; preds = %2174, %2136
  %2185 = phi float [ %2181, %2174 ], [ 0.000000e+00, %2136 ]
  %2186 = phi float [ %2182, %2174 ], [ 0.000000e+00, %2136 ]
  %2187 = phi float [ %2183, %2174 ], [ 0.000000e+00, %2136 ]
  %2188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2189 = extractvalue %dx.types.ResRet.i32 %2188, 0
  %2190 = add i32 %27, 128
  %2191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2192 = extractvalue %dx.types.ResRet.i32 %2191, 0
  %2193 = and i32 %2192, 255
  %2194 = uitofp i32 %2193 to float
  %2195 = lshr i32 %2192, 8
  %2196 = and i32 %2195, 255
  %2197 = uitofp i32 %2196 to float
  %2198 = call float @dx.op.dot3.f32(i32 55, float %2057, float %2058, float %2059, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2199 = fmul fast float %2197, %2198
  %2200 = fadd fast float %2199, %2194
  %2201 = fmul fast float %2200, 0x3F70101020000000
  %2202 = call float @dx.op.unary.f32(i32 7, float %2201)  ; Saturate(value)
  br i1 %1656, label %2203, label %2211

; <label>:2203                                    ; preds = %2184
  %2204 = fsub fast float 1.000000e+00, %1837
  %2205 = fmul fast float %2204, %1645
  %2206 = fmul fast float %2204, %1646
  %2207 = fmul fast float %2204, %1647
  %2208 = fmul fast float %2204, %1648
  %2209 = fmul fast float %2204, %1649
  %2210 = fmul fast float %2204, %1650
  br label %2211

; <label>:2211                                    ; preds = %2203, %2184
  %2212 = phi float [ %2205, %2203 ], [ %1645, %2184 ]
  %2213 = phi float [ %2206, %2203 ], [ %1646, %2184 ]
  %2214 = phi float [ %2207, %2203 ], [ %1647, %2184 ]
  %2215 = phi float [ %2208, %2203 ], [ %1648, %2184 ]
  %2216 = phi float [ %2209, %2203 ], [ %1649, %2184 ]
  %2217 = phi float [ %2210, %2203 ], [ %1650, %2184 ]
  %2218 = and i32 %2189, 3
  %2219 = icmp eq i32 %2218, 3
  br i1 %2219, label %2298, label %2220

; <label>:2220                                    ; preds = %2211
  %2221 = and i32 %2189, 16
  %2222 = icmp ne i32 %2221, 0
  %2223 = select i1 %2222, float %1837, float 0.000000e+00
  %2224 = icmp eq i32 %2218, 0
  br i1 %2224, label %2225, label %2253

; <label>:2225                                    ; preds = %2220
  %2226 = and i32 %2189, 64
  %2227 = icmp ne i32 %2226, 0
  %2228 = select i1 %2227, float %1837, float 0.000000e+00
  %2229 = fsub fast float %2057, %2212
  %2230 = fsub fast float %2058, %2213
  %2231 = fsub fast float %2059, %2214
  %2232 = fmul fast float %2223, %2229
  %2233 = fmul fast float %2223, %2230
  %2234 = fmul fast float %2223, %2231
  %2235 = fadd fast float %2232, %2212
  %2236 = fadd fast float %2233, %2213
  %2237 = fadd fast float %2234, %2214
  %2238 = fsub fast float %2043, %1651
  %2239 = fmul fast float %2223, %2238
  %2240 = fadd fast float %2239, %1651
  %2241 = fsub fast float %2185, %2215
  %2242 = fsub fast float %2186, %2216
  %2243 = fsub fast float %2187, %2217
  %2244 = fmul fast float %2228, %2241
  %2245 = fmul fast float %2228, %2242
  %2246 = fmul fast float %2228, %2243
  %2247 = fadd fast float %2244, %2215
  %2248 = fadd fast float %2245, %2216
  %2249 = fadd fast float %2246, %2217
  %2250 = fsub fast float %2202, %1654
  %2251 = fmul fast float %2223, %2250
  %2252 = fadd fast float %2251, %1654
  br label %2298

; <label>:2253                                    ; preds = %2220
  %2254 = icmp eq i32 %2218, 1
  br i1 %2254, label %2255, label %2268

; <label>:2255                                    ; preds = %2253
  %2256 = fadd fast float %2057, -1.000000e+00
  %2257 = fadd fast float %2058, -1.000000e+00
  %2258 = fadd fast float %2059, -1.000000e+00
  %2259 = fmul fast float %2223, %2256
  %2260 = fmul fast float %2223, %2257
  %2261 = fmul fast float %2223, %2258
  %2262 = fadd fast float %2259, 1.000000e+00
  %2263 = fadd fast float %2260, 1.000000e+00
  %2264 = fadd fast float %2261, 1.000000e+00
  %2265 = fmul fast float %2262, %2212
  %2266 = fmul fast float %2263, %2213
  %2267 = fmul fast float %2264, %2214
  br label %2298

; <label>:2268                                    ; preds = %2253
  %2269 = icmp eq i32 %2218, 2
  br i1 %2269, label %2270, label %2298

; <label>:2270                                    ; preds = %2268
  %2271 = call float @dx.op.unary.f32(i32 24, float %2057)  ; Sqrt(value)
  %2272 = call float @dx.op.unary.f32(i32 24, float %2058)  ; Sqrt(value)
  %2273 = call float @dx.op.unary.f32(i32 24, float %2059)  ; Sqrt(value)
  %2274 = fadd fast float %2271, -5.000000e-01
  %2275 = fadd fast float %2272, -5.000000e-01
  %2276 = fadd fast float %2273, -5.000000e-01
  %2277 = fmul fast float %2274, %2223
  %2278 = fmul fast float %2275, %2223
  %2279 = fmul fast float %2276, %2223
  %2280 = fadd fast float %2277, 5.000000e-01
  %2281 = fadd fast float %2278, 5.000000e-01
  %2282 = fadd fast float %2279, 5.000000e-01
  %2283 = fmul fast float %2280, 2.000000e+00
  %2284 = fsub fast float 1.000000e+00, %2283
  %2285 = fmul fast float %2284, %2212
  %2286 = fadd fast float %2285, %2283
  %2287 = fmul fast float %2286, %2212
  %2288 = fmul fast float %2281, 2.000000e+00
  %2289 = fsub fast float 1.000000e+00, %2288
  %2290 = fmul fast float %2289, %2213
  %2291 = fadd fast float %2290, %2288
  %2292 = fmul fast float %2291, %2213
  %2293 = fmul fast float %2282, 2.000000e+00
  %2294 = fsub fast float 1.000000e+00, %2293
  %2295 = fmul fast float %2294, %2214
  %2296 = fadd fast float %2295, %2293
  %2297 = fmul fast float %2296, %2214
  br label %2298

; <label>:2298                                    ; preds = %2270, %2268, %2255, %2225, %2211
  %2299 = phi float [ %2212, %2211 ], [ %2287, %2270 ], [ %2212, %2268 ], [ %2265, %2255 ], [ %2235, %2225 ]
  %2300 = phi float [ %2213, %2211 ], [ %2292, %2270 ], [ %2213, %2268 ], [ %2266, %2255 ], [ %2236, %2225 ]
  %2301 = phi float [ %2214, %2211 ], [ %2297, %2270 ], [ %2214, %2268 ], [ %2267, %2255 ], [ %2237, %2225 ]
  %2302 = phi float [ %2215, %2211 ], [ %2215, %2270 ], [ %2215, %2268 ], [ %2215, %2255 ], [ %2247, %2225 ]
  %2303 = phi float [ %2216, %2211 ], [ %2216, %2270 ], [ %2216, %2268 ], [ %2216, %2255 ], [ %2248, %2225 ]
  %2304 = phi float [ %2217, %2211 ], [ %2217, %2270 ], [ %2217, %2268 ], [ %2217, %2255 ], [ %2249, %2225 ]
  %2305 = phi float [ %1651, %2211 ], [ %1651, %2270 ], [ %1651, %2268 ], [ %1651, %2255 ], [ %2240, %2225 ]
  %2306 = phi float [ %1654, %2211 ], [ %1654, %2270 ], [ %1654, %2268 ], [ %1654, %2255 ], [ %2252, %2225 ]
  %2307 = and i32 %2189, 12
  %2308 = icmp eq i32 %2307, 12
  br i1 %2308, label %2381, label %2309

; <label>:2309                                    ; preds = %2298
  %2310 = and i32 %2189, 2097184
  %2311 = icmp eq i32 %2310, 2097184
  %2312 = select i1 %2311, float %1837, float 0.000000e+00
  %2313 = and i32 %2189, 4194336
  %2314 = icmp eq i32 %2313, 4194336
  %2315 = select i1 %2314, float %1837, float 0.000000e+00
  %2316 = and i32 %2189, 8388640
  %2317 = icmp eq i32 %2316, 8388640
  %2318 = select i1 %2317, float %1837, float 0.000000e+00
  %2319 = icmp eq i32 %2307, 0
  br i1 %2319, label %2320, label %2333

; <label>:2320                                    ; preds = %2309
  %2321 = fsub fast float %2138, %1643
  %2322 = fsub fast float %2139, %1644
  %2323 = fmul fast float %2312, %2321
  %2324 = fmul fast float %2312, %2322
  %2325 = fadd fast float %2323, %1643
  %2326 = fadd fast float %2324, %1644
  %2327 = fsub fast float %2140, %1653
  %2328 = fmul fast float %2315, %2327
  %2329 = fadd fast float %2328, %1653
  %2330 = fsub fast float %2137, %1652
  %2331 = fmul fast float %2318, %2330
  %2332 = fadd fast float %2331, %1652
  br label %2381

; <label>:2333                                    ; preds = %2309
  %2334 = icmp eq i32 %2307, 4
  br i1 %2334, label %2335, label %2367

; <label>:2335                                    ; preds = %2333
  %2336 = fmul fast float %2312, %2138
  %2337 = fmul fast float %2312, %2139
  %2338 = fadd fast float %2336, %1643
  %2339 = fadd fast float %2337, %1644
  %2340 = call float @dx.op.binary.f32(i32 36, float %1653, float %2140)  ; FMin(a,b)
  %2341 = fsub fast float %2340, %1653
  %2342 = fmul fast float %2341, %2315
  %2343 = fadd fast float %2342, %1653
  %2344 = fadd fast float %2137, %1652
  %2345 = fmul fast float %2344, 0x3FF337FAE0000000
  %2346 = fmul fast float %1652, %1652
  %2347 = fmul fast float %2137, %2137
  %2348 = fadd fast float %2347, %2346
  %2349 = fmul fast float %2348, 0x3FE5152B00000000
  %2350 = fmul fast float %1652, 0xBFCC1F85E0000000
  %2351 = fmul fast float %2350, %2137
  %2352 = fadd fast float %2351, 0xBFE1363700000000
  %2353 = fadd fast float %2352, %2345
  %2354 = fsub fast float %2353, %2349
  %2355 = fmul fast float %2344, 0x3FBA6F0D00000000
  %2356 = fmul fast float %2348, 0x3FD0432880000000
  %2357 = fmul fast float %1652, 0xBFEF110800000000
  %2358 = fmul fast float %2357, %2137
  %2359 = fadd fast float %2358, 1.000000e+00
  %2360 = fsub fast float %2359, %2355
  %2361 = fadd fast float %2360, %2356
  %2362 = fdiv fast float %2354, %2361
  %2363 = call float @dx.op.unary.f32(i32 7, float %2362)  ; Saturate(value)
  %2364 = fsub fast float %2363, %1652
  %2365 = fmul fast float %2364, %2318
  %2366 = fadd fast float %2365, %1652
  br label %2381

; <label>:2367                                    ; preds = %2333
  %2368 = icmp eq i32 %2307, 8
  br i1 %2368, label %2369, label %2381

; <label>:2369                                    ; preds = %2367
  %2370 = fmul fast float %2312, %2138
  %2371 = fmul fast float %2312, %2139
  %2372 = fadd fast float %2370, %1643
  %2373 = fadd fast float %2371, %1644
  %2374 = call float @dx.op.binary.f32(i32 36, float %1653, float %2140)  ; FMin(a,b)
  %2375 = fsub fast float %2374, %1653
  %2376 = fmul fast float %2375, %2315
  %2377 = fadd fast float %2376, %1653
  %2378 = fsub fast float %2137, %1652
  %2379 = fmul fast float %2318, %2378
  %2380 = fadd fast float %2379, %1652
  br label %2381

; <label>:2381                                    ; preds = %2369, %2367, %2335, %2320, %2298, %1836, %1655, %1642
  %2382 = phi float [ %1643, %2298 ], [ %1643, %1836 ], [ %1643, %1642 ], [ %2372, %2369 ], [ %1643, %2367 ], [ %2338, %2335 ], [ %2325, %2320 ], [ %1643, %1655 ]
  %2383 = phi float [ %1644, %2298 ], [ %1644, %1836 ], [ %1644, %1642 ], [ %2373, %2369 ], [ %1644, %2367 ], [ %2339, %2335 ], [ %2326, %2320 ], [ %1644, %1655 ]
  %2384 = phi float [ %2299, %2298 ], [ %1645, %1836 ], [ %1645, %1642 ], [ %2299, %2369 ], [ %2299, %2367 ], [ %2299, %2335 ], [ %2299, %2320 ], [ %1645, %1655 ]
  %2385 = phi float [ %2300, %2298 ], [ %1646, %1836 ], [ %1646, %1642 ], [ %2300, %2369 ], [ %2300, %2367 ], [ %2300, %2335 ], [ %2300, %2320 ], [ %1646, %1655 ]
  %2386 = phi float [ %2301, %2298 ], [ %1647, %1836 ], [ %1647, %1642 ], [ %2301, %2369 ], [ %2301, %2367 ], [ %2301, %2335 ], [ %2301, %2320 ], [ %1647, %1655 ]
  %2387 = phi float [ %2302, %2298 ], [ %1648, %1836 ], [ %1648, %1642 ], [ %2302, %2369 ], [ %2302, %2367 ], [ %2302, %2335 ], [ %2302, %2320 ], [ %1648, %1655 ]
  %2388 = phi float [ %2303, %2298 ], [ %1649, %1836 ], [ %1649, %1642 ], [ %2303, %2369 ], [ %2303, %2367 ], [ %2303, %2335 ], [ %2303, %2320 ], [ %1649, %1655 ]
  %2389 = phi float [ %2304, %2298 ], [ %1650, %1836 ], [ %1650, %1642 ], [ %2304, %2369 ], [ %2304, %2367 ], [ %2304, %2335 ], [ %2304, %2320 ], [ %1650, %1655 ]
  %2390 = phi float [ %2305, %2298 ], [ %1651, %1836 ], [ %1651, %1642 ], [ %2305, %2369 ], [ %2305, %2367 ], [ %2305, %2335 ], [ %2305, %2320 ], [ %1651, %1655 ]
  %2391 = phi float [ %1652, %2298 ], [ %1652, %1836 ], [ %1652, %1642 ], [ %2380, %2369 ], [ %1652, %2367 ], [ %2366, %2335 ], [ %2332, %2320 ], [ %1652, %1655 ]
  %2392 = phi float [ %1653, %2298 ], [ %1653, %1836 ], [ %1653, %1642 ], [ %2377, %2369 ], [ %1653, %2367 ], [ %2343, %2335 ], [ %2329, %2320 ], [ %1653, %1655 ]
  %2393 = phi float [ %2306, %2298 ], [ %1654, %1836 ], [ %1654, %1642 ], [ %2306, %2369 ], [ %2306, %2367 ], [ %2306, %2335 ], [ %2306, %2320 ], [ %1654, %1655 ]
  br i1 %384, label %3120, label %2394

; <label>:2394                                    ; preds = %2381
  %2395 = icmp ult i32 %435, 4
  %2396 = add i32 %27, 72
  %2397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2398 = extractvalue %dx.types.ResRet.i32 %2397, 0
  %2399 = add i32 %27, 76
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2399, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = or i32 %2401, %2398
  %2403 = icmp eq i32 %2402, 0
  br i1 %2403, label %3120, label %2404

; <label>:2404                                    ; preds = %2394
  %2405 = and i32 %2398, 262144
  %2406 = icmp ne i32 %2405, 0
  %2407 = select i1 %2406, float %31, float 1.000000e+00
  %2408 = select i1 %2406, float %32, float 0.000000e+00
  %2409 = select i1 %2406, float %33, float 0.000000e+00
  %2410 = select i1 %2406, float %34, float 1.000000e+00
  %2411 = select i1 %2406, float %35, float %58
  %2412 = select i1 %2406, float %36, float %59
  %2413 = add i32 %27, 332
  %2414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2413, i32 undef)  ; BufferLoad(srv,index,wot)
  %2415 = extractvalue %dx.types.ResRet.i32 %2414, 0
  %2416 = lshr i32 %2415, 16
  %2417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2416)  ; LegacyF16ToF32(value)
  %2418 = fmul fast float %2417, 0x3F50624DE0000000
  %2419 = add i32 %27, 136
  %2420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2419, i32 undef)  ; BufferLoad(srv,index,wot)
  %2421 = extractvalue %dx.types.ResRet.i32 %2420, 0
  %2422 = lshr i32 %2421, 16
  %2423 = and i32 %2422, 255
  %2424 = lshr i32 %2421, 24
  %2425 = add i32 %27, 340
  %2426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2425, i32 undef)  ; BufferLoad(srv,index,wot)
  %2427 = extractvalue %dx.types.ResRet.i32 %2426, 0
  %2428 = and i32 %2427, 65535
  %2429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2428)  ; LegacyF16ToF32(value)
  %2430 = lshr i32 %2427, 16
  %2431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2430)  ; LegacyF16ToF32(value)
  %2432 = add i32 %27, 80
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = lshr i32 %2434, 22
  %2436 = shl nuw nsw i32 %2435, 5
  %2437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2436)  ; LegacyF16ToF32(value)
  %2438 = shl i32 %2434, 4
  %2439 = and i32 %2438, 32752
  %2440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2439)  ; LegacyF16ToF32(value)
  %2441 = lshr i32 %2434, 7
  %2442 = and i32 %2441, 32752
  %2443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2442)  ; LegacyF16ToF32(value)
  %2444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2445 = extractvalue %dx.types.CBufRet.f32 %2444, 3
  %2446 = fmul fast float %2445, 1.000000e+03
  %2447 = fmul fast float %374, %2446
  %2448 = call float @dx.op.unary.f32(i32 22, float %2447)  ; Frc(value)
  %2449 = fadd fast float %2448, %364
  %2450 = fmul fast float %375, %2446
  %2451 = call float @dx.op.unary.f32(i32 22, float %2450)  ; Frc(value)
  %2452 = fadd fast float %2451, %366
  %2453 = fmul fast float %2418, %2446
  %2454 = call float @dx.op.unary.f32(i32 22, float %2453)  ; Frc(value)
  %2455 = fmul fast float %2454, 0x401921FB60000000
  %2456 = fadd fast float %2455, %2437
  %2457 = call float @dx.op.unary.f32(i32 13, float %2456)  ; Sin(value)
  %2458 = call float @dx.op.unary.f32(i32 12, float %2456)  ; Cos(value)
  %2459 = fsub fast float -0.000000e+00, %2457
  %2460 = fadd fast float %2411, -5.000000e-01
  %2461 = fadd fast float %2412, -5.000000e-01
  %2462 = fmul fast float %2429, %2460
  %2463 = fmul fast float %2431, %2461
  %2464 = fadd fast float %2462, 5.000000e-01
  %2465 = fadd fast float %2463, 5.000000e-01
  %2466 = fmul fast float %2440, %2464
  %2467 = fmul fast float %2443, %2465
  %2468 = fmul fast float %2458, %2466
  %2469 = call float @dx.op.tertiary.f32(i32 46, float %2459, float %2467, float %2468)  ; FMad(a,b,c)
  %2470 = fmul fast float %2457, %2466
  %2471 = call float @dx.op.tertiary.f32(i32 46, float %2458, float %2467, float %2470)  ; FMad(a,b,c)
  %2472 = fadd fast float %2449, %2469
  %2473 = fadd fast float %2452, %2471
  %2474 = icmp ugt i32 %2423, 1
  %2475 = icmp ugt i32 %2421, 33554431
  %2476 = or i1 %2475, %2474
  br i1 %2476, label %2477, label %2502

; <label>:2477                                    ; preds = %2404
  %2478 = add i32 %27, 276
  %2479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2478, i32 undef)  ; BufferLoad(srv,index,wot)
  %2480 = extractvalue %dx.types.ResRet.i32 %2479, 0
  %2481 = lshr i32 %2480, 16
  %2482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2481)  ; LegacyF16ToF32(value)
  %2483 = fmul fast float %2445, %2482
  %2484 = call float @dx.op.unary.f32(i32 22, float %2483)  ; Frc(value)
  %2485 = mul nuw nsw i32 %2423, %2424
  %2486 = uitofp i32 %2485 to float
  %2487 = fmul fast float %2484, %2486
  %2488 = call float @dx.op.unary.f32(i32 27, float %2487)  ; Round_ni(value)
  %2489 = fptoui float %2488 to i32
  %2490 = urem i32 %2489, %2423
  %2491 = udiv i32 %2489, %2424
  %2492 = call float @dx.op.unary.f32(i32 22, float %2472)  ; Frc(value)
  %2493 = call float @dx.op.unary.f32(i32 22, float %2473)  ; Frc(value)
  %2494 = uitofp i32 %2490 to float
  %2495 = uitofp i32 %2491 to float
  %2496 = fadd fast float %2492, %2494
  %2497 = fadd fast float %2493, %2495
  %2498 = uitofp i32 %2423 to float
  %2499 = uitofp i32 %2424 to float
  %2500 = fdiv fast float %2496, %2498
  %2501 = fdiv fast float %2497, %2499
  br label %2502

; <label>:2502                                    ; preds = %2477, %2404
  %2503 = phi float [ %2500, %2477 ], [ %2472, %2404 ]
  %2504 = phi float [ %2501, %2477 ], [ %2473, %2404 ]
  %2505 = and i32 %2398, 256
  %2506 = icmp eq i32 %2505, 0
  br i1 %2506, label %2553, label %2507

; <label>:2507                                    ; preds = %2502
  %2508 = add i32 %27, 468
  %2509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2508, i32 undef)  ; BufferLoad(srv,index,wot)
  %2510 = extractvalue %dx.types.ResRet.i32 %2509, 0
  %2511 = add i32 %2510, 0
  %2512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2511, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2513 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2512, %dx.types.Handle %67, float %2503, float %2504, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2514 = extractvalue %dx.types.ResRet.f32 %2513, 0
  %2515 = add i32 %27, 148
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = shl i32 %2517, 4
  %2519 = and i32 %2518, 32752
  %2520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2519)  ; LegacyF16ToF32(value)
  %2521 = lshr i32 %2517, 7
  %2522 = and i32 %2521, 32752
  %2523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2522)  ; LegacyF16ToF32(value)
  %2524 = fsub fast float 1.000000e+00, %430
  %2525 = call float @dx.op.binary.f32(i32 35, float %2524, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2526 = bitcast float %430 to i32
  %2527 = sitofp i32 %2526 to float
  %2528 = fadd fast float %2527, 0xC1CFBF8940000000
  %2529 = fmul fast float %2523, %2528
  %2530 = fadd fast float %2529, 0x41CFBF8940000000
  %2531 = fptosi float %2530 to i32
  %2532 = bitcast i32 %2531 to float
  %2533 = bitcast float %2525 to i32
  %2534 = sitofp i32 %2533 to float
  %2535 = fadd fast float %2534, 0xC1CFBF8940000000
  %2536 = fmul fast float %2535, %2523
  %2537 = fadd fast float %2536, 0x41CFBF8940000000
  %2538 = fptosi float %2537 to i32
  %2539 = bitcast i32 %2538 to float
  %2540 = fmul fast float %2532, %2520
  %2541 = fmul fast float %2539, %2520
  %2542 = fsub fast float %2525, %2540
  %2543 = fadd fast float %2541, %2525
  %2544 = call float @dx.op.unary.f32(i32 7, float %2542)  ; Saturate(value)
  %2545 = call float @dx.op.unary.f32(i32 7, float %2543)  ; Saturate(value)
  %2546 = fsub fast float %2514, %2544
  %2547 = fsub fast float %2545, %2544
  %2548 = bitcast float %2547 to i32
  %2549 = sub nsw i32 2129859010, %2548
  %2550 = bitcast i32 %2549 to float
  %2551 = fmul fast float %2550, %2546
  %2552 = call float @dx.op.unary.f32(i32 7, float %2551)  ; Saturate(value)
  br label %2553

; <label>:2553                                    ; preds = %2507, %2502
  %2554 = phi float [ %2552, %2507 ], [ %430, %2502 ]
  %2555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2556 = extractvalue %dx.types.ResRet.i32 %2555, 0
  %2557 = and i32 %2556, 128
  %2558 = icmp eq i32 %2557, 0
  br i1 %2558, label %2575, label %2559

; <label>:2559                                    ; preds = %2553
  %2560 = add i32 %27, 452
  %2561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2560, i32 undef)  ; BufferLoad(srv,index,wot)
  %2562 = extractvalue %dx.types.ResRet.i32 %2561, 0
  %2563 = add i32 %2562, 0
  %2564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2563, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2565 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2564, %dx.types.Handle %67, float %2503, float %2504, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2566 = extractvalue %dx.types.ResRet.f32 %2565, 0
  %2567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2568 = extractvalue %dx.types.ResRet.i32 %2567, 0
  %2569 = and i32 %2568, 524288
  %2570 = icmp ne i32 %2569, 0
  %2571 = fcmp fast ogt float %2566, 0x3FE0101020000000
  %2572 = select i1 %2571, float 1.000000e+00, float 0.000000e+00
  %2573 = select i1 %2570, float %2572, float %2566
  %2574 = fmul fast float %2573, %2554
  br label %2575

; <label>:2575                                    ; preds = %2559, %2553
  %2576 = phi float [ %2574, %2559 ], [ %2554, %2553 ]
  %2577 = fcmp fast ult float %2576, 0x3F70101020000000
  br i1 %2577, label %3120, label %2578

; <label>:2578                                    ; preds = %2575
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = and i32 %2580, 16
  %2582 = icmp eq i32 %2581, 0
  br i1 %2582, label %2781, label %2583

; <label>:2583                                    ; preds = %2578
  %2584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2419, i32 undef)  ; BufferLoad(srv,index,wot)
  %2585 = extractvalue %dx.types.ResRet.i32 %2584, 0
  %2586 = add i32 %27, 404
  %2587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2588 = extractvalue %dx.types.ResRet.i32 %2587, 0
  %2589 = add i32 %2588, 0
  %2590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2589, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2591 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2590, %dx.types.Handle %66, float %2503, float %2504, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2592 = extractvalue %dx.types.ResRet.f32 %2591, 0
  %2593 = extractvalue %dx.types.ResRet.f32 %2591, 1
  %2594 = extractvalue %dx.types.ResRet.f32 %2591, 2
  %2595 = extractvalue %dx.types.ResRet.f32 %2591, 3
  %2596 = and i32 %2585, 255
  %2597 = uitofp i32 %2596 to float
  %2598 = lshr i32 %2585, 8
  %2599 = and i32 %2598, 255
  %2600 = uitofp i32 %2599 to float
  %2601 = fmul fast float %2595, %2597
  %2602 = fadd fast float %2601, %2600
  %2603 = fmul fast float %2602, 0x3F70101000000000
  %2604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2605 = extractvalue %dx.types.ResRet.i32 %2604, 0
  %2606 = and i32 %2605, 512
  %2607 = icmp eq i32 %2606, 0
  br i1 %2607, label %2616, label %2608

; <label>:2608                                    ; preds = %2583
  %2609 = add i32 %27, 484
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = add i32 %2611, 0
  %2613 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2612, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2614 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2613, %dx.types.Handle %67, float %2503, float %2504, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2615 = extractvalue %dx.types.ResRet.f32 %2614, 0
  br label %2616

; <label>:2616                                    ; preds = %2608, %2583
  %2617 = phi float [ %2615, %2608 ], [ 1.000000e+00, %2583 ]
  %2618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2619 = extractvalue %dx.types.ResRet.i32 %2618, 0
  %2620 = and i32 %2619, 33554432
  %2621 = icmp eq i32 %2620, 0
  br i1 %2621, label %2728, label %2622

; <label>:2622                                    ; preds = %2616
  %2623 = add i32 %27, 272
  %2624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2623, i32 undef)  ; BufferLoad(srv,index,wot)
  %2625 = extractvalue %dx.types.ResRet.i32 %2624, 0
  %2626 = and i32 %2625, 65535
  %2627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2626)  ; LegacyF16ToF32(value)
  %2628 = lshr i32 %2625, 16
  %2629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2628)  ; LegacyF16ToF32(value)
  %2630 = add i32 %27, 276
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = and i32 %2632, 65535
  %2634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2633)  ; LegacyF16ToF32(value)
  %2635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %2636 = extractvalue %dx.types.ResRet.i32 %2635, 0
  %2637 = lshr i32 %2636, 24
  %2638 = uitofp i32 %2637 to float
  %2639 = fmul fast float %2638, 0x3F70101020000000
  %2640 = and i32 %2636, 255
  %2641 = uitofp i32 %2640 to float
  %2642 = fmul fast float %2641, 0x3F70101020000000
  %2643 = lshr i32 %2636, 8
  %2644 = and i32 %2643, 255
  %2645 = uitofp i32 %2644 to float
  %2646 = fmul fast float %2645, 0x3F70101020000000
  %2647 = lshr i32 %2636, 16
  %2648 = and i32 %2647, 255
  %2649 = uitofp i32 %2648 to float
  %2650 = fmul fast float %2649, 0x3F70101020000000
  %2651 = add i32 %27, 268
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = lshr i32 %2653, 24
  %2655 = uitofp i32 %2654 to float
  %2656 = fmul fast float %2655, 0x3F70101020000000
  %2657 = and i32 %2653, 255
  %2658 = uitofp i32 %2657 to float
  %2659 = fmul fast float %2658, 0x3F70101020000000
  %2660 = lshr i32 %2653, 8
  %2661 = and i32 %2660, 255
  %2662 = uitofp i32 %2661 to float
  %2663 = fmul fast float %2662, 0x3F70101020000000
  %2664 = lshr i32 %2653, 16
  %2665 = and i32 %2664, 255
  %2666 = uitofp i32 %2665 to float
  %2667 = fmul fast float %2666, 0x3F70101020000000
  %2668 = bitcast float %2592 to i32
  %2669 = ashr i32 %2668, 1
  %2670 = sub nsw i32 1597463174, %2669
  %2671 = bitcast i32 %2670 to float
  %2672 = fmul fast float %2592, 5.000000e-01
  %2673 = fmul fast float %2671, %2671
  %2674 = fmul fast float %2673, %2672
  %2675 = fsub fast float 1.500000e+00, %2674
  %2676 = fmul fast float %2671, %2592
  %2677 = fmul fast float %2676, %2675
  %2678 = bitcast float %2593 to i32
  %2679 = ashr i32 %2678, 1
  %2680 = sub nsw i32 1597463174, %2679
  %2681 = bitcast i32 %2680 to float
  %2682 = fmul fast float %2593, 5.000000e-01
  %2683 = fmul fast float %2681, %2681
  %2684 = fmul fast float %2683, %2682
  %2685 = fsub fast float 1.500000e+00, %2684
  %2686 = fmul fast float %2681, %2593
  %2687 = fmul fast float %2686, %2685
  %2688 = bitcast float %2594 to i32
  %2689 = ashr i32 %2688, 1
  %2690 = sub nsw i32 1597463174, %2689
  %2691 = bitcast i32 %2690 to float
  %2692 = fmul fast float %2594, 5.000000e-01
  %2693 = fmul fast float %2691, %2691
  %2694 = fmul fast float %2693, %2692
  %2695 = fsub fast float 1.500000e+00, %2694
  %2696 = fmul fast float %2691, %2594
  %2697 = fmul fast float %2696, %2695
  %2698 = fsub fast float %2677, %2659
  %2699 = fsub fast float %2687, %2663
  %2700 = fsub fast float %2697, %2667
  %2701 = fmul fast float %2698, %2627
  %2702 = fmul fast float %2699, %2629
  %2703 = fmul fast float %2700, %2634
  %2704 = fadd fast float %2701, %2642
  %2705 = fadd fast float %2702, %2646
  %2706 = fadd fast float %2703, %2650
  %2707 = call float @dx.op.unary.f32(i32 7, float %2704)  ; Saturate(value)
  %2708 = call float @dx.op.unary.f32(i32 7, float %2705)  ; Saturate(value)
  %2709 = call float @dx.op.unary.f32(i32 7, float %2706)  ; Saturate(value)
  %2710 = fmul fast float %2707, %2707
  %2711 = fmul fast float %2708, %2708
  %2712 = fmul fast float %2709, %2709
  %2713 = fsub fast float %2710, %2592
  %2714 = fsub fast float %2711, %2593
  %2715 = fsub fast float %2712, %2594
  %2716 = fmul fast float %2713, %2617
  %2717 = fmul fast float %2714, %2617
  %2718 = fmul fast float %2715, %2617
  %2719 = fadd fast float %2716, %2592
  %2720 = fadd fast float %2717, %2593
  %2721 = fadd fast float %2718, %2594
  %2722 = fadd fast float %2639, %2603
  %2723 = fsub fast float %2722, %2656
  %2724 = call float @dx.op.unary.f32(i32 7, float %2723)  ; Saturate(value)
  %2725 = fsub fast float %2724, %2603
  %2726 = fmul fast float %2725, %2617
  %2727 = fadd fast float %2726, %2603
  br label %2781

; <label>:2728                                    ; preds = %2616
  %2729 = and i32 %2619, 134217728
  %2730 = icmp eq i32 %2729, 0
  br i1 %2730, label %2765, label %2731

; <label>:2731                                    ; preds = %2728
  %2732 = call float @dx.op.unary.f32(i32 24, float %351)  ; Sqrt(value)
  %2733 = call float @dx.op.unary.f32(i32 24, float %355)  ; Sqrt(value)
  %2734 = call float @dx.op.unary.f32(i32 24, float %359)  ; Sqrt(value)
  %2735 = fadd fast float %2732, -5.000000e-01
  %2736 = fadd fast float %2733, -5.000000e-01
  %2737 = fadd fast float %2734, -5.000000e-01
  %2738 = fmul fast float %2735, %2617
  %2739 = fmul fast float %2736, %2617
  %2740 = fmul fast float %2737, %2617
  %2741 = fadd fast float %2738, 5.000000e-01
  %2742 = fadd fast float %2739, 5.000000e-01
  %2743 = fadd fast float %2740, 5.000000e-01
  %2744 = call float @dx.op.unary.f32(i32 24, float %2592)  ; Sqrt(value)
  %2745 = call float @dx.op.unary.f32(i32 24, float %2593)  ; Sqrt(value)
  %2746 = call float @dx.op.unary.f32(i32 24, float %2594)  ; Sqrt(value)
  %2747 = fmul fast float %2741, 2.000000e+00
  %2748 = fsub fast float 1.000000e+00, %2747
  %2749 = fmul fast float %2748, %2744
  %2750 = fadd fast float %2749, %2747
  %2751 = fmul fast float %2750, %2744
  %2752 = fmul fast float %2742, 2.000000e+00
  %2753 = fsub fast float 1.000000e+00, %2752
  %2754 = fmul fast float %2753, %2745
  %2755 = fadd fast float %2754, %2752
  %2756 = fmul fast float %2755, %2745
  %2757 = fmul fast float %2743, 2.000000e+00
  %2758 = fsub fast float 1.000000e+00, %2757
  %2759 = fmul fast float %2758, %2746
  %2760 = fadd fast float %2759, %2757
  %2761 = fmul fast float %2760, %2746
  %2762 = fmul fast float %2751, %2751
  %2763 = fmul fast float %2756, %2756
  %2764 = fmul fast float %2761, %2761
  br label %2781

; <label>:2765                                    ; preds = %2728
  %2766 = fmul fast float %351, %351
  %2767 = fmul fast float %355, %355
  %2768 = fmul fast float %359, %359
  %2769 = fadd fast float %2766, -1.000000e+00
  %2770 = fadd fast float %2767, -1.000000e+00
  %2771 = fadd fast float %2768, -1.000000e+00
  %2772 = fmul fast float %2617, %2769
  %2773 = fmul fast float %2617, %2770
  %2774 = fmul fast float %2617, %2771
  %2775 = fadd fast float %2772, 1.000000e+00
  %2776 = fadd fast float %2773, 1.000000e+00
  %2777 = fadd fast float %2774, 1.000000e+00
  %2778 = fmul fast float %2775, %2592
  %2779 = fmul fast float %2776, %2593
  %2780 = fmul fast float %2777, %2594
  br label %2781

; <label>:2781                                    ; preds = %2765, %2731, %2622, %2578
  %2782 = phi float [ %2727, %2622 ], [ %2603, %2731 ], [ %2603, %2765 ], [ 0x3FA23C0BE0000000, %2578 ]
  %2783 = phi float [ %2719, %2622 ], [ %2762, %2731 ], [ %2778, %2765 ], [ 1.000000e+00, %2578 ]
  %2784 = phi float [ %2720, %2622 ], [ %2763, %2731 ], [ %2779, %2765 ], [ 1.000000e+00, %2578 ]
  %2785 = phi float [ %2721, %2622 ], [ %2764, %2731 ], [ %2780, %2765 ], [ 1.000000e+00, %2578 ]
  %2786 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2787 = extractvalue %dx.types.CBufRet.i32 %2786, 1
  %2788 = and i32 %2787, 1
  %2789 = icmp ne i32 %2788, 0
  %2790 = add i32 %27, 356
  %2791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2792 = extractvalue %dx.types.ResRet.i32 %2791, 0
  %2793 = and i32 %2792, 32
  %2794 = icmp ne i32 %2793, 0
  %2795 = and i1 %2789, %2794
  %2796 = select i1 %2795, float 1.000000e+00, float %2783
  %2797 = select i1 %2795, float 0x3FD3333340000000, float %2784
  %2798 = select i1 %2795, float 0x3FD3333340000000, float %2785
  %2799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2800 = extractvalue %dx.types.ResRet.i32 %2799, 0
  %2801 = and i32 %2800, 32
  %2802 = icmp eq i32 %2801, 0
  br i1 %2802, label %2875, label %2803

; <label>:2803                                    ; preds = %2781
  %2804 = add i32 %27, 140
  %2805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2804, i32 undef)  ; BufferLoad(srv,index,wot)
  %2806 = extractvalue %dx.types.ResRet.i32 %2805, 0
  %2807 = add i32 %27, 420
  %2808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2809 = extractvalue %dx.types.ResRet.i32 %2808, 0
  %2810 = add i32 %2809, 0
  %2811 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2810, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2812 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2811, %dx.types.Handle %66, float %2503, float %2504, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2813 = extractvalue %dx.types.ResRet.f32 %2812, 0
  %2814 = extractvalue %dx.types.ResRet.f32 %2812, 1
  %2815 = extractvalue %dx.types.ResRet.f32 %2812, 2
  %2816 = extractvalue %dx.types.ResRet.f32 %2812, 3
  %2817 = and i32 %2806, 255
  %2818 = uitofp i32 %2817 to float
  %2819 = lshr i32 %2806, 8
  %2820 = and i32 %2819, 255
  %2821 = uitofp i32 %2820 to float
  %2822 = lshr i32 %2806, 16
  %2823 = and i32 %2822, 255
  %2824 = uitofp i32 %2823 to float
  %2825 = fmul fast float %2824, 0x3F70101000000000
  %2826 = fmul fast float %2813, %2818
  %2827 = fadd fast float %2826, %2821
  %2828 = fmul fast float %2827, 0x3F70101000000000
  %2829 = fadd fast float %2814, -5.000000e-01
  %2830 = fadd fast float %2816, -5.000000e-01
  %2831 = fmul fast float %2829, %2825
  %2832 = fmul fast float %2830, %2825
  %2833 = fadd fast float %2831, 5.000000e-01
  %2834 = fadd fast float %2832, 5.000000e-01
  %2835 = fmul fast float %2833, 2.000000e+00
  %2836 = fadd fast float %2835, -1.000000e+00
  %2837 = fmul fast float %2834, 2.000000e+00
  %2838 = fadd fast float %2837, -1.000000e+00
  %2839 = fadd fast float %2836, %2838
  %2840 = fmul fast float %2839, 5.000000e-01
  %2841 = fsub fast float %2836, %2838
  %2842 = fmul fast float %2841, 5.000000e-01
  %2843 = call float @dx.op.unary.f32(i32 6, float %2840)  ; FAbs(value)
  %2844 = fsub fast float 1.000000e+00, %2843
  %2845 = call float @dx.op.unary.f32(i32 6, float %2842)  ; FAbs(value)
  %2846 = fsub fast float %2844, %2845
  %2847 = call float @dx.op.dot3.f32(i32 55, float %2840, float %2842, float %2846, float %2840, float %2842, float %2846)  ; Dot3(ax,ay,az,bx,by,bz)
  %2848 = call float @dx.op.unary.f32(i32 25, float %2847)  ; Rsqrt(value)
  %2849 = fmul fast float %2840, %2848
  %2850 = fmul fast float %2842, %2848
  %2851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.i32 %2851, 0
  %2853 = and i32 %2852, 67108864
  %2854 = icmp eq i32 %2853, 0
  br i1 %2854, label %2871, label %2855

; <label>:2855                                    ; preds = %2803
  %2856 = add i32 %27, 328
  %2857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.i32 %2857, 0
  %2859 = and i32 %2858, 65535
  %2860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2859)  ; LegacyF16ToF32(value)
  %2861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2413, i32 undef)  ; BufferLoad(srv,index,wot)
  %2862 = extractvalue %dx.types.ResRet.i32 %2861, 0
  %2863 = and i32 %2862, 65535
  %2864 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2863)  ; LegacyF16ToF32(value)
  %2865 = lshr i32 %2858, 16
  %2866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2865)  ; LegacyF16ToF32(value)
  %2867 = fsub fast float %2828, %2866
  %2868 = fmul fast float %2867, %2860
  %2869 = fadd fast float %2868, %2864
  %2870 = call float @dx.op.unary.f32(i32 7, float %2869)  ; Saturate(value)
  br label %2871

; <label>:2871                                    ; preds = %2855, %2803
  %2872 = phi float [ %2870, %2855 ], [ %2828, %2803 ]
  %2873 = call float @dx.op.dot2.f32(i32 54, float %2849, float %2850, float %2407, float %2408)  ; Dot2(ax,ay,bx,by)
  %2874 = call float @dx.op.dot2.f32(i32 54, float %2849, float %2850, float %2409, float %2410)  ; Dot2(ax,ay,bx,by)
  br label %2875

; <label>:2875                                    ; preds = %2871, %2781
  %2876 = phi float [ %2872, %2871 ], [ 0x3FD6666660000000, %2781 ]
  %2877 = phi float [ %2873, %2871 ], [ 0.000000e+00, %2781 ]
  %2878 = phi float [ %2874, %2871 ], [ 0.000000e+00, %2781 ]
  %2879 = phi float [ %2815, %2871 ], [ 1.000000e+00, %2781 ]
  %2880 = add i32 %27, 208
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = lshr i32 %2882, 22
  %2884 = shl nuw nsw i32 %2883, 5
  %2885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2884)  ; LegacyF16ToF32(value)
  %2886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2887 = extractvalue %dx.types.ResRet.i32 %2886, 0
  %2888 = and i32 %2887, 64
  %2889 = icmp eq i32 %2888, 0
  br i1 %2889, label %2923, label %2890

; <label>:2890                                    ; preds = %2875
  %2891 = add i32 %27, 436
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2891, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = add i32 %2893, 0
  %2895 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2894, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.i32 %2896, 0
  %2898 = and i32 %2897, 131072
  %2899 = icmp eq i32 %2898, 0
  %2900 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2895, %dx.types.Handle %66, float %2503, float %2504, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2901 = extractvalue %dx.types.ResRet.f32 %2900, 0
  %2902 = extractvalue %dx.types.ResRet.f32 %2900, 1
  %2903 = extractvalue %dx.types.ResRet.f32 %2900, 2
  %2904 = fmul fast float %2901, %339
  %2905 = fmul fast float %2902, %342
  %2906 = fmul fast float %2903, %345
  br i1 %2899, label %2913, label %2907

; <label>:2907                                    ; preds = %2890
  %2908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2909 = extractvalue %dx.types.CBufRet.f32 %2908, 0
  %2910 = fmul fast float %2909, %2904
  %2911 = fmul fast float %2909, %2905
  %2912 = fmul fast float %2909, %2906
  br label %2913

; <label>:2913                                    ; preds = %2907, %2890
  %2914 = phi float [ %2910, %2907 ], [ %2904, %2890 ]
  %2915 = phi float [ %2911, %2907 ], [ %2905, %2890 ]
  %2916 = phi float [ %2912, %2907 ], [ %2906, %2890 ]
  %2917 = fmul fast float %2914, %2885
  %2918 = select i1 %196, float %2917, float %2914
  %2919 = call float @dx.op.dot3.f32(i32 55, float %2918, float %2915, float %2916, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2920 = select i1 %196, float 0.000000e+00, float %2914
  %2921 = select i1 %196, float %2919, float %2915
  %2922 = select i1 %196, float 0.000000e+00, float %2916
  br label %2923

; <label>:2923                                    ; preds = %2913, %2875
  %2924 = phi float [ %2920, %2913 ], [ 0.000000e+00, %2875 ]
  %2925 = phi float [ %2921, %2913 ], [ 0.000000e+00, %2875 ]
  %2926 = phi float [ %2922, %2913 ], [ 0.000000e+00, %2875 ]
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = add i32 %27, 144
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = and i32 %2931, 255
  %2933 = uitofp i32 %2932 to float
  %2934 = lshr i32 %2931, 8
  %2935 = and i32 %2934, 255
  %2936 = uitofp i32 %2935 to float
  %2937 = call float @dx.op.dot3.f32(i32 55, float %2796, float %2797, float %2798, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2938 = fmul fast float %2936, %2937
  %2939 = fadd fast float %2938, %2933
  %2940 = fmul fast float %2939, 0x3F70101020000000
  %2941 = call float @dx.op.unary.f32(i32 7, float %2940)  ; Saturate(value)
  br i1 %2395, label %2942, label %2950

; <label>:2942                                    ; preds = %2923
  %2943 = fsub fast float 1.000000e+00, %2576
  %2944 = fmul fast float %2943, %2384
  %2945 = fmul fast float %2943, %2385
  %2946 = fmul fast float %2943, %2386
  %2947 = fmul fast float %2943, %2387
  %2948 = fmul fast float %2943, %2388
  %2949 = fmul fast float %2943, %2389
  br label %2950

; <label>:2950                                    ; preds = %2942, %2923
  %2951 = phi float [ %2944, %2942 ], [ %2384, %2923 ]
  %2952 = phi float [ %2945, %2942 ], [ %2385, %2923 ]
  %2953 = phi float [ %2946, %2942 ], [ %2386, %2923 ]
  %2954 = phi float [ %2947, %2942 ], [ %2387, %2923 ]
  %2955 = phi float [ %2948, %2942 ], [ %2388, %2923 ]
  %2956 = phi float [ %2949, %2942 ], [ %2389, %2923 ]
  %2957 = and i32 %2928, 3
  %2958 = icmp eq i32 %2957, 3
  br i1 %2958, label %3037, label %2959

; <label>:2959                                    ; preds = %2950
  %2960 = and i32 %2928, 16
  %2961 = icmp ne i32 %2960, 0
  %2962 = select i1 %2961, float %2576, float 0.000000e+00
  %2963 = icmp eq i32 %2957, 0
  br i1 %2963, label %2964, label %2992

; <label>:2964                                    ; preds = %2959
  %2965 = and i32 %2928, 64
  %2966 = icmp ne i32 %2965, 0
  %2967 = select i1 %2966, float %2576, float 0.000000e+00
  %2968 = fsub fast float %2796, %2951
  %2969 = fsub fast float %2797, %2952
  %2970 = fsub fast float %2798, %2953
  %2971 = fmul fast float %2962, %2968
  %2972 = fmul fast float %2962, %2969
  %2973 = fmul fast float %2962, %2970
  %2974 = fadd fast float %2971, %2951
  %2975 = fadd fast float %2972, %2952
  %2976 = fadd fast float %2973, %2953
  %2977 = fsub fast float %2782, %2390
  %2978 = fmul fast float %2962, %2977
  %2979 = fadd fast float %2978, %2390
  %2980 = fsub fast float %2924, %2954
  %2981 = fsub fast float %2925, %2955
  %2982 = fsub fast float %2926, %2956
  %2983 = fmul fast float %2967, %2980
  %2984 = fmul fast float %2967, %2981
  %2985 = fmul fast float %2967, %2982
  %2986 = fadd fast float %2983, %2954
  %2987 = fadd fast float %2984, %2955
  %2988 = fadd fast float %2985, %2956
  %2989 = fsub fast float %2941, %2393
  %2990 = fmul fast float %2962, %2989
  %2991 = fadd fast float %2990, %2393
  br label %3037

; <label>:2992                                    ; preds = %2959
  %2993 = icmp eq i32 %2957, 1
  br i1 %2993, label %2994, label %3007

; <label>:2994                                    ; preds = %2992
  %2995 = fadd fast float %2796, -1.000000e+00
  %2996 = fadd fast float %2797, -1.000000e+00
  %2997 = fadd fast float %2798, -1.000000e+00
  %2998 = fmul fast float %2962, %2995
  %2999 = fmul fast float %2962, %2996
  %3000 = fmul fast float %2962, %2997
  %3001 = fadd fast float %2998, 1.000000e+00
  %3002 = fadd fast float %2999, 1.000000e+00
  %3003 = fadd fast float %3000, 1.000000e+00
  %3004 = fmul fast float %3001, %2951
  %3005 = fmul fast float %3002, %2952
  %3006 = fmul fast float %3003, %2953
  br label %3037

; <label>:3007                                    ; preds = %2992
  %3008 = icmp eq i32 %2957, 2
  br i1 %3008, label %3009, label %3037

; <label>:3009                                    ; preds = %3007
  %3010 = call float @dx.op.unary.f32(i32 24, float %2796)  ; Sqrt(value)
  %3011 = call float @dx.op.unary.f32(i32 24, float %2797)  ; Sqrt(value)
  %3012 = call float @dx.op.unary.f32(i32 24, float %2798)  ; Sqrt(value)
  %3013 = fadd fast float %3010, -5.000000e-01
  %3014 = fadd fast float %3011, -5.000000e-01
  %3015 = fadd fast float %3012, -5.000000e-01
  %3016 = fmul fast float %3013, %2962
  %3017 = fmul fast float %3014, %2962
  %3018 = fmul fast float %3015, %2962
  %3019 = fadd fast float %3016, 5.000000e-01
  %3020 = fadd fast float %3017, 5.000000e-01
  %3021 = fadd fast float %3018, 5.000000e-01
  %3022 = fmul fast float %3019, 2.000000e+00
  %3023 = fsub fast float 1.000000e+00, %3022
  %3024 = fmul fast float %3023, %2951
  %3025 = fadd fast float %3024, %3022
  %3026 = fmul fast float %3025, %2951
  %3027 = fmul fast float %3020, 2.000000e+00
  %3028 = fsub fast float 1.000000e+00, %3027
  %3029 = fmul fast float %3028, %2952
  %3030 = fadd fast float %3029, %3027
  %3031 = fmul fast float %3030, %2952
  %3032 = fmul fast float %3021, 2.000000e+00
  %3033 = fsub fast float 1.000000e+00, %3032
  %3034 = fmul fast float %3033, %2953
  %3035 = fadd fast float %3034, %3032
  %3036 = fmul fast float %3035, %2953
  br label %3037

; <label>:3037                                    ; preds = %3009, %3007, %2994, %2964, %2950
  %3038 = phi float [ %2951, %2950 ], [ %3026, %3009 ], [ %2951, %3007 ], [ %3004, %2994 ], [ %2974, %2964 ]
  %3039 = phi float [ %2952, %2950 ], [ %3031, %3009 ], [ %2952, %3007 ], [ %3005, %2994 ], [ %2975, %2964 ]
  %3040 = phi float [ %2953, %2950 ], [ %3036, %3009 ], [ %2953, %3007 ], [ %3006, %2994 ], [ %2976, %2964 ]
  %3041 = phi float [ %2954, %2950 ], [ %2954, %3009 ], [ %2954, %3007 ], [ %2954, %2994 ], [ %2986, %2964 ]
  %3042 = phi float [ %2955, %2950 ], [ %2955, %3009 ], [ %2955, %3007 ], [ %2955, %2994 ], [ %2987, %2964 ]
  %3043 = phi float [ %2956, %2950 ], [ %2956, %3009 ], [ %2956, %3007 ], [ %2956, %2994 ], [ %2988, %2964 ]
  %3044 = phi float [ %2390, %2950 ], [ %2390, %3009 ], [ %2390, %3007 ], [ %2390, %2994 ], [ %2979, %2964 ]
  %3045 = phi float [ %2393, %2950 ], [ %2393, %3009 ], [ %2393, %3007 ], [ %2393, %2994 ], [ %2991, %2964 ]
  %3046 = and i32 %2928, 12
  %3047 = icmp eq i32 %3046, 12
  br i1 %3047, label %3120, label %3048

; <label>:3048                                    ; preds = %3037
  %3049 = and i32 %2928, 2097184
  %3050 = icmp eq i32 %3049, 2097184
  %3051 = select i1 %3050, float %2576, float 0.000000e+00
  %3052 = and i32 %2928, 4194336
  %3053 = icmp eq i32 %3052, 4194336
  %3054 = select i1 %3053, float %2576, float 0.000000e+00
  %3055 = and i32 %2928, 8388640
  %3056 = icmp eq i32 %3055, 8388640
  %3057 = select i1 %3056, float %2576, float 0.000000e+00
  %3058 = icmp eq i32 %3046, 0
  br i1 %3058, label %3059, label %3072

; <label>:3059                                    ; preds = %3048
  %3060 = fsub fast float %2877, %2382
  %3061 = fsub fast float %2878, %2383
  %3062 = fmul fast float %3051, %3060
  %3063 = fmul fast float %3051, %3061
  %3064 = fadd fast float %3062, %2382
  %3065 = fadd fast float %3063, %2383
  %3066 = fsub fast float %2879, %2392
  %3067 = fmul fast float %3054, %3066
  %3068 = fadd fast float %3067, %2392
  %3069 = fsub fast float %2876, %2391
  %3070 = fmul fast float %3057, %3069
  %3071 = fadd fast float %3070, %2391
  br label %3120

; <label>:3072                                    ; preds = %3048
  %3073 = icmp eq i32 %3046, 4
  br i1 %3073, label %3074, label %3106

; <label>:3074                                    ; preds = %3072
  %3075 = fmul fast float %3051, %2877
  %3076 = fmul fast float %3051, %2878
  %3077 = fadd fast float %3075, %2382
  %3078 = fadd fast float %3076, %2383
  %3079 = call float @dx.op.binary.f32(i32 36, float %2392, float %2879)  ; FMin(a,b)
  %3080 = fsub fast float %3079, %2392
  %3081 = fmul fast float %3080, %3054
  %3082 = fadd fast float %3081, %2392
  %3083 = fadd fast float %2876, %2391
  %3084 = fmul fast float %3083, 0x3FF337FAE0000000
  %3085 = fmul fast float %2391, %2391
  %3086 = fmul fast float %2876, %2876
  %3087 = fadd fast float %3086, %3085
  %3088 = fmul fast float %3087, 0x3FE5152B00000000
  %3089 = fmul fast float %2391, 0xBFCC1F85E0000000
  %3090 = fmul fast float %3089, %2876
  %3091 = fadd fast float %3090, 0xBFE1363700000000
  %3092 = fadd fast float %3091, %3084
  %3093 = fsub fast float %3092, %3088
  %3094 = fmul fast float %3083, 0x3FBA6F0D00000000
  %3095 = fmul fast float %3087, 0x3FD0432880000000
  %3096 = fmul fast float %2391, 0xBFEF110800000000
  %3097 = fmul fast float %3096, %2876
  %3098 = fadd fast float %3097, 1.000000e+00
  %3099 = fsub fast float %3098, %3094
  %3100 = fadd fast float %3099, %3095
  %3101 = fdiv fast float %3093, %3100
  %3102 = call float @dx.op.unary.f32(i32 7, float %3101)  ; Saturate(value)
  %3103 = fsub fast float %3102, %2391
  %3104 = fmul fast float %3103, %3057
  %3105 = fadd fast float %3104, %2391
  br label %3120

; <label>:3106                                    ; preds = %3072
  %3107 = icmp eq i32 %3046, 8
  br i1 %3107, label %3108, label %3120

; <label>:3108                                    ; preds = %3106
  %3109 = fmul fast float %3051, %2877
  %3110 = fmul fast float %3051, %2878
  %3111 = fadd fast float %3109, %2382
  %3112 = fadd fast float %3110, %2383
  %3113 = call float @dx.op.binary.f32(i32 36, float %2392, float %2879)  ; FMin(a,b)
  %3114 = fsub fast float %3113, %2392
  %3115 = fmul fast float %3114, %3054
  %3116 = fadd fast float %3115, %2392
  %3117 = fsub fast float %2876, %2391
  %3118 = fmul fast float %3057, %3117
  %3119 = fadd fast float %3118, %2391
  br label %3120

; <label>:3120                                    ; preds = %3108, %3106, %3074, %3059, %3037, %2575, %2394, %2381
  %3121 = phi float [ %2382, %3037 ], [ %2382, %2575 ], [ %2382, %2381 ], [ %2382, %2394 ], [ %3064, %3059 ], [ %3077, %3074 ], [ %2382, %3106 ], [ %3111, %3108 ]
  %3122 = phi float [ %2383, %3037 ], [ %2383, %2575 ], [ %2383, %2381 ], [ %2383, %2394 ], [ %3065, %3059 ], [ %3078, %3074 ], [ %2383, %3106 ], [ %3112, %3108 ]
  %3123 = phi float [ %3038, %3037 ], [ %2384, %2575 ], [ %2384, %2381 ], [ %2384, %2394 ], [ %3038, %3059 ], [ %3038, %3074 ], [ %3038, %3106 ], [ %3038, %3108 ]
  %3124 = phi float [ %3039, %3037 ], [ %2385, %2575 ], [ %2385, %2381 ], [ %2385, %2394 ], [ %3039, %3059 ], [ %3039, %3074 ], [ %3039, %3106 ], [ %3039, %3108 ]
  %3125 = phi float [ %3040, %3037 ], [ %2386, %2575 ], [ %2386, %2381 ], [ %2386, %2394 ], [ %3040, %3059 ], [ %3040, %3074 ], [ %3040, %3106 ], [ %3040, %3108 ]
  %3126 = phi float [ %3041, %3037 ], [ %2387, %2575 ], [ %2387, %2381 ], [ %2387, %2394 ], [ %3041, %3059 ], [ %3041, %3074 ], [ %3041, %3106 ], [ %3041, %3108 ]
  %3127 = phi float [ %3042, %3037 ], [ %2388, %2575 ], [ %2388, %2381 ], [ %2388, %2394 ], [ %3042, %3059 ], [ %3042, %3074 ], [ %3042, %3106 ], [ %3042, %3108 ]
  %3128 = phi float [ %3043, %3037 ], [ %2389, %2575 ], [ %2389, %2381 ], [ %2389, %2394 ], [ %3043, %3059 ], [ %3043, %3074 ], [ %3043, %3106 ], [ %3043, %3108 ]
  %3129 = phi float [ %3044, %3037 ], [ %2390, %2575 ], [ %2390, %2381 ], [ %2390, %2394 ], [ %3044, %3059 ], [ %3044, %3074 ], [ %3044, %3106 ], [ %3044, %3108 ]
  %3130 = phi float [ %2391, %3037 ], [ %2391, %2575 ], [ %2391, %2381 ], [ %2391, %2394 ], [ %3071, %3059 ], [ %3105, %3074 ], [ %2391, %3106 ], [ %3119, %3108 ]
  %3131 = phi float [ %2392, %3037 ], [ %2392, %2575 ], [ %2392, %2381 ], [ %2392, %2394 ], [ %3068, %3059 ], [ %3082, %3074 ], [ %2392, %3106 ], [ %3116, %3108 ]
  %3132 = phi float [ %3045, %3037 ], [ %2393, %2575 ], [ %2393, %2381 ], [ %2393, %2394 ], [ %3045, %3059 ], [ %3045, %3074 ], [ %3045, %3106 ], [ %3045, %3108 ]
  %3133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3134 = extractvalue %dx.types.CBufRet.f32 %3133, 0
  %3135 = call float @dx.op.dot2.f32(i32 54, float %3121, float %3122, float %3121, float %3122)  ; Dot2(ax,ay,bx,by)
  %3136 = fmul fast float %3135, 0x3FE3333340000000
  %3137 = fsub fast float 1.000000e+00, %3136
  %3138 = call float @dx.op.dot3.f32(i32 55, float %3121, float %3122, float %3137, float %3121, float %3122, float %3137)  ; Dot3(ax,ay,az,bx,by,bz)
  %3139 = call float @dx.op.unary.f32(i32 25, float %3138)  ; Rsqrt(value)
  %3140 = fmul fast float %3139, %3121
  %3141 = fmul fast float %3139, %3122
  %3142 = fmul fast float %3137, %3139
  %3143 = fmul fast float %3142, %77
  %3144 = fmul fast float %3142, %78
  %3145 = fmul fast float %3142, %79
  %3146 = fmul fast float %3140, %51
  %3147 = fmul fast float %3140, %52
  %3148 = fmul fast float %3140, %53
  %3149 = fadd fast float %3143, %3146
  %3150 = fadd fast float %3144, %3147
  %3151 = fadd fast float %3145, %3148
  %3152 = fmul fast float %3141, %89
  %3153 = fmul fast float %3141, %90
  %3154 = fmul fast float %3141, %91
  %3155 = fadd fast float %3149, %3152
  %3156 = fadd fast float %3150, %3153
  %3157 = fadd fast float %3151, %3154
  %3158 = call float @dx.op.dot3.f32(i32 55, float %3155, float %3156, float %3157, float %3155, float %3156, float %3157)  ; Dot3(ax,ay,az,bx,by,bz)
  %3159 = call float @dx.op.unary.f32(i32 25, float %3158)  ; Rsqrt(value)
  %3160 = fmul fast float %3155, %3159
  %3161 = fmul fast float %3156, %3159
  %3162 = fmul fast float %3157, %3159
  %3163 = fadd fast float %3129, 0xBFB99999A0000000
  %3164 = call float @dx.op.unary.f32(i32 7, float %3163)  ; Saturate(value)
  %3165 = fmul fast float %3164, 0x3FF1C71C80000000
  %3166 = call float @dx.op.binary.f32(i32 36, float %3129, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3167 = fsub fast float 1.000000e+00, %3165
  %3168 = call float @dx.op.unary.f32(i32 7, float %3167)  ; Saturate(value)
  %3169 = fmul fast float %3168, %3123
  %3170 = fmul fast float %3168, %3124
  %3171 = fmul fast float %3168, %3125
  %3172 = call float @dx.op.unary.f32(i32 7, float %3169)  ; Saturate(value)
  %3173 = call float @dx.op.unary.f32(i32 7, float %3170)  ; Saturate(value)
  %3174 = call float @dx.op.unary.f32(i32 7, float %3171)  ; Saturate(value)
  %3175 = fmul fast float %3165, %3123
  %3176 = fmul fast float %3165, %3124
  %3177 = fmul fast float %3165, %3125
  %3178 = fadd fast float %3175, %3166
  %3179 = fadd fast float %3176, %3166
  %3180 = fadd fast float %3177, %3166
  %3181 = call float @dx.op.unary.f32(i32 7, float %3178)  ; Saturate(value)
  %3182 = call float @dx.op.unary.f32(i32 7, float %3179)  ; Saturate(value)
  %3183 = call float @dx.op.unary.f32(i32 7, float %3180)  ; Saturate(value)
  %3184 = call float @dx.op.unary.f32(i32 7, float %3130)  ; Saturate(value)
  %3185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3186 = extractvalue %dx.types.CBufRet.i32 %3185, 3
  %3187 = and i32 %3186, 8
  %3188 = icmp ne i32 %3187, 0
  %3189 = call float @dx.op.binary.f32(i32 35, float %3172, float %3123)  ; FMax(a,b)
  %3190 = call float @dx.op.binary.f32(i32 35, float %3173, float %3123)  ; FMax(a,b)
  %3191 = call float @dx.op.binary.f32(i32 35, float %3174, float %3123)  ; FMax(a,b)
  %3192 = call float @dx.op.dot3.f32(i32 55, float %3172, float %3173, float %3174, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3193 = select i1 %196, float %3123, float %3172
  %3194 = select i1 %196, float %3192, float %3173
  %3195 = select i1 %196, float 1.000000e+00, float %3174
  %3196 = select i1 %3188, float %3189, float %3193
  %3197 = select i1 %3188, float %3190, float %3194
  %3198 = select i1 %3188, float %3191, float %3195
  %3199 = add i32 %27, 508
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3199, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = add i32 %3201, 0
  %3203 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3202, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3204 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3203, %dx.types.Handle %67, float %58, float %59, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3205 = extractvalue %dx.types.ResRet.f32 %3204, 0
  %3206 = extractvalue %dx.types.ResRet.f32 %3204, 1
  %3207 = extractvalue %dx.types.ResRet.f32 %3204, 2
  %3208 = extractvalue %dx.types.ResRet.f32 %3204, 3
  %3209 = fmul fast float %3205, 2.000000e+00
  %3210 = fadd fast float %3209, -1.000000e+00
  %3211 = fmul fast float %3206, 2.000000e+00
  %3212 = fadd fast float %3211, -1.000000e+00
  %3213 = fmul fast float %3210, %51
  %3214 = fmul fast float %3210, %52
  %3215 = fmul fast float %3210, %53
  %3216 = fmul fast float %3212, %89
  %3217 = fmul fast float %3212, %90
  %3218 = fmul fast float %3212, %91
  %3219 = fadd fast float %3213, %3216
  %3220 = fadd fast float %3214, %3217
  %3221 = fadd fast float %3215, %3218
  %3222 = call float @dx.op.dot3.f32(i32 55, float %3219, float %3220, float %3221, float %3219, float %3220, float %3221)  ; Dot3(ax,ay,az,bx,by,bz)
  %3223 = call float @dx.op.unary.f32(i32 25, float %3222)  ; Rsqrt(value)
  %3224 = fmul fast float %3219, %3223
  %3225 = fmul fast float %3220, %3223
  %3226 = fmul fast float %3221, %3223
  %3227 = add i32 %27, 360
  %3228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3227, i32 undef)  ; BufferLoad(srv,index,wot)
  %3229 = extractvalue %dx.types.ResRet.i32 %3228, 0
  %3230 = bitcast i32 %3229 to float
  %3231 = fmul fast float %3230, %3207
  %3232 = call float @dx.op.unary.f32(i32 7, float %3231)  ; Saturate(value)
  %3233 = extractvalue %dx.types.ResRet.i32 %3228, 3
  %3234 = bitcast i32 %3233 to float
  %3235 = extractvalue %dx.types.ResRet.i32 %3228, 1
  %3236 = bitcast i32 %3235 to float
  %3237 = fmul fast float %3236, %3208
  %3238 = fadd fast float %3237, %3234
  %3239 = fmul fast float %3238, %3160
  %3240 = fmul fast float %3238, %3161
  %3241 = fmul fast float %3238, %3162
  %3242 = fadd fast float %3239, %3224
  %3243 = fadd fast float %3240, %3225
  %3244 = fadd fast float %3241, %3226
  %3245 = call float @dx.op.dot3.f32(i32 55, float %3242, float %3243, float %3244, float %3242, float %3243, float %3244)  ; Dot3(ax,ay,az,bx,by,bz)
  %3246 = call float @dx.op.unary.f32(i32 25, float %3245)  ; Rsqrt(value)
  %3247 = fmul fast float %3242, %3246
  %3248 = fmul fast float %3243, %3246
  %3249 = fmul fast float %3244, %3246
  %3250 = fmul fast float %3237, %3160
  %3251 = fmul fast float %3237, %3161
  %3252 = fmul fast float %3237, %3162
  %3253 = fadd fast float %3250, %3224
  %3254 = fadd fast float %3251, %3225
  %3255 = fadd fast float %3252, %3226
  %3256 = call float @dx.op.dot3.f32(i32 55, float %3253, float %3254, float %3255, float %3253, float %3254, float %3255)  ; Dot3(ax,ay,az,bx,by,bz)
  %3257 = call float @dx.op.unary.f32(i32 25, float %3256)  ; Rsqrt(value)
  %3258 = fmul fast float %3253, %3257
  %3259 = fmul fast float %3254, %3257
  %3260 = fmul fast float %3255, %3257
  %3261 = call float @dx.op.unary.f32(i32 7, float %3184)  ; Saturate(value)
  %3262 = extractvalue %dx.types.ResRet.i32 %3228, 2
  %3263 = bitcast i32 %3262 to float
  %3264 = fmul fast float %3263, %3184
  %3265 = call float @dx.op.unary.f32(i32 7, float %3264)  ; Saturate(value)
  %3266 = add i32 %27, 376
  %3267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3266, i32 undef)  ; BufferLoad(srv,index,wot)
  %3268 = extractvalue %dx.types.ResRet.i32 %3267, 3
  %3269 = bitcast i32 %3268 to float
  %3270 = fmul fast float %3269, %3196
  %3271 = fmul fast float %3269, %3197
  %3272 = fmul fast float %3269, %3198
  %3273 = extractvalue %dx.types.ResRet.i32 %3267, 0
  %3274 = extractvalue %dx.types.ResRet.i32 %3267, 1
  %3275 = extractvalue %dx.types.ResRet.i32 %3267, 2
  %3276 = bitcast i32 %3273 to float
  %3277 = bitcast i32 %3274 to float
  %3278 = bitcast i32 %3275 to float
  %3279 = fadd fast float %3276, %3270
  %3280 = fadd fast float %3277, %3271
  %3281 = fadd fast float %3278, %3272
  %3282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3283 = extractvalue %dx.types.CBufRet.f32 %3282, 0
  %3284 = extractvalue %dx.types.CBufRet.f32 %3282, 1
  %3285 = extractvalue %dx.types.CBufRet.f32 %3282, 2
  %3286 = fadd fast float %3283, %157
  %3287 = fadd fast float %3284, %158
  %3288 = fadd fast float %3285, %159
  %3289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3290 = extractvalue %dx.types.CBufRet.f32 %3289, 0
  %3291 = extractvalue %dx.types.CBufRet.f32 %3289, 1
  %3292 = fsub fast float %3286, %3290
  %3293 = fsub fast float %3287, %3291
  %3294 = fmul fast float %3292, %3292
  %3295 = fmul fast float %3293, %3293
  %3296 = fadd fast float %3294, %3295
  %3297 = call float @dx.op.unary.f32(i32 24, float %3296)  ; Sqrt(value)
  %3298 = extractvalue %dx.types.CBufRet.f32 %3289, 2
  %3299 = fcmp fast olt float %3297, %3298
  br i1 %3299, label %3300, label %3367

; <label>:3300                                    ; preds = %3120
  %3301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3302 = extractvalue %dx.types.CBufRet.f32 %3301, 0
  %3303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3304 = extractvalue %dx.types.CBufRet.f32 %3303, 0
  %3305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3306 = extractvalue %dx.types.CBufRet.f32 %3305, 0
  %3307 = extractvalue %dx.types.CBufRet.f32 %3301, 1
  %3308 = extractvalue %dx.types.CBufRet.f32 %3303, 1
  %3309 = extractvalue %dx.types.CBufRet.f32 %3305, 1
  %3310 = extractvalue %dx.types.CBufRet.f32 %3301, 3
  %3311 = extractvalue %dx.types.CBufRet.f32 %3303, 3
  %3312 = extractvalue %dx.types.CBufRet.f32 %3305, 3
  %3313 = fadd fast float %3310, %3286
  %3314 = fadd fast float %3311, %3287
  %3315 = fadd fast float %3312, %3288
  %3316 = fmul fast float %3313, %3302
  %3317 = call float @dx.op.tertiary.f32(i32 46, float %3314, float %3304, float %3316)  ; FMad(a,b,c)
  %3318 = call float @dx.op.tertiary.f32(i32 46, float %3315, float %3306, float %3317)  ; FMad(a,b,c)
  %3319 = fmul fast float %3313, %3307
  %3320 = call float @dx.op.tertiary.f32(i32 46, float %3314, float %3308, float %3319)  ; FMad(a,b,c)
  %3321 = call float @dx.op.tertiary.f32(i32 46, float %3315, float %3309, float %3320)  ; FMad(a,b,c)
  %3322 = fsub fast float %3318, %3310
  %3323 = fsub fast float %3321, %3311
  %3324 = fsub fast float %3322, %3290
  %3325 = fadd fast float %3324, %3298
  %3326 = fsub fast float %3323, %3291
  %3327 = fadd fast float %3326, %3298
  %3328 = extractvalue %dx.types.CBufRet.f32 %3289, 3
  %3329 = fmul fast float %3325, %3328
  %3330 = fmul fast float %3327, %3328
  %3331 = call float @dx.op.unary.f32(i32 7, float %3329)  ; Saturate(value)
  %3332 = call float @dx.op.unary.f32(i32 7, float %3330)  ; Saturate(value)
  %3333 = fsub fast float 1.000000e+00, %3331
  %3334 = fsub fast float 1.000000e+00, %3332
  %3335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %23, float %3333, float %3334, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3336 = extractvalue %dx.types.ResRet.f32 %3335, 0
  %3337 = fcmp fast ugt float %3336, 0.000000e+00
  br i1 %3337, label %3338, label %3641

; <label>:3338                                    ; preds = %3300
  %3339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3340 = extractvalue %dx.types.CBufRet.f32 %3339, 2
  %3341 = fmul fast float %3340, %3336
  %3342 = extractvalue %dx.types.CBufRet.f32 %3339, 3
  %3343 = fadd fast float %3342, %3341
  %3344 = extractvalue %dx.types.CBufRet.f32 %3305, 2
  %3345 = fadd fast float %3343, %3312
  %3346 = fmul fast float %3318, %3306
  %3347 = call float @dx.op.tertiary.f32(i32 46, float %3321, float %3309, float %3346)  ; FMad(a,b,c)
  %3348 = call float @dx.op.tertiary.f32(i32 46, float %3345, float %3344, float %3347)  ; FMad(a,b,c)
  %3349 = fsub fast float %3348, %3312
  %3350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3351 = extractvalue %dx.types.CBufRet.f32 %3350, 2
  %3352 = fsub fast float %3349, %3351
  %3353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %23, float %3333, float %3334, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3354 = extractvalue %dx.types.ResRet.f32 %3353, 0
  %3355 = extractvalue %dx.types.ResRet.f32 %3353, 1
  %3356 = extractvalue %dx.types.ResRet.f32 %3353, 2
  %3357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %23, float %3333, float %3334, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3358 = extractvalue %dx.types.ResRet.f32 %3357, 0
  %3359 = extractvalue %dx.types.ResRet.f32 %3357, 1
  %3360 = extractvalue %dx.types.ResRet.f32 %3357, 2
  %3361 = fadd fast float %3358, %3354
  %3362 = fmul fast float %3361, 0x3F847AE140000000
  %3363 = fadd fast float %3359, %3355
  %3364 = fmul fast float %3363, 0x3F847AE140000000
  %3365 = fadd fast float %3360, %3356
  %3366 = fmul fast float %3365, 0x3F847AE140000000
  br label %3641

; <label>:3367                                    ; preds = %3120
  %3368 = and i32 %175, 1
  %3369 = icmp eq i32 %3368, 0
  br i1 %3369, label %3641, label %3370

; <label>:3370                                    ; preds = %3367
  %3371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3372 = extractvalue %dx.types.CBufRet.f32 %3371, 0
  %3373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3374 = extractvalue %dx.types.CBufRet.f32 %3373, 0
  %3375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3376 = extractvalue %dx.types.CBufRet.f32 %3375, 0
  %3377 = extractvalue %dx.types.CBufRet.f32 %3371, 1
  %3378 = extractvalue %dx.types.CBufRet.f32 %3373, 1
  %3379 = extractvalue %dx.types.CBufRet.f32 %3375, 1
  %3380 = extractvalue %dx.types.CBufRet.f32 %3371, 3
  %3381 = extractvalue %dx.types.CBufRet.f32 %3373, 3
  %3382 = extractvalue %dx.types.CBufRet.f32 %3375, 3
  %3383 = fadd fast float %3380, %3286
  %3384 = fadd fast float %3381, %3287
  %3385 = fadd fast float %3382, %3288
  %3386 = fmul fast float %3383, %3372
  %3387 = call float @dx.op.tertiary.f32(i32 46, float %3384, float %3374, float %3386)  ; FMad(a,b,c)
  %3388 = call float @dx.op.tertiary.f32(i32 46, float %3385, float %3376, float %3387)  ; FMad(a,b,c)
  %3389 = fmul fast float %3383, %3377
  %3390 = call float @dx.op.tertiary.f32(i32 46, float %3384, float %3378, float %3389)  ; FMad(a,b,c)
  %3391 = call float @dx.op.tertiary.f32(i32 46, float %3385, float %3379, float %3390)  ; FMad(a,b,c)
  %3392 = fsub fast float %3388, %3380
  %3393 = fsub fast float %3391, %3381
  %3394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3395 = extractvalue %dx.types.CBufRet.f32 %3394, 0
  %3396 = extractvalue %dx.types.CBufRet.f32 %3394, 1
  %3397 = extractvalue %dx.types.CBufRet.f32 %3394, 2
  %3398 = extractvalue %dx.types.CBufRet.f32 %3394, 3
  %3399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3400 = extractvalue %dx.types.CBufRet.f32 %3399, 3
  %3401 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3402 = extractvalue %dx.types.CBufRet.i32 %3401, 0
  %3403 = extractvalue %dx.types.CBufRet.i32 %3401, 1
  %3404 = udiv i32 %3403, %3402
  %3405 = fsub fast float %3392, %3395
  %3406 = fsub fast float %3393, %3396
  %3407 = call float @dx.op.binary.f32(i32 35, float %3405, float 0.000000e+00)  ; FMax(a,b)
  %3408 = call float @dx.op.binary.f32(i32 35, float %3406, float 0.000000e+00)  ; FMax(a,b)
  %3409 = call float @dx.op.binary.f32(i32 36, float %3407, float %3397)  ; FMin(a,b)
  %3410 = call float @dx.op.binary.f32(i32 36, float %3408, float %3398)  ; FMin(a,b)
  %3411 = add i32 %3402, -1
  %3412 = add i32 %3404, -1
  %3413 = fmul fast float %3409, %3400
  %3414 = fmul fast float %3410, %3400
  %3415 = fptoui float %3413 to i32
  %3416 = fptoui float %3414 to i32
  %3417 = call i32 @dx.op.binary.i32(i32 40, i32 %3415, i32 %3411)  ; UMin(a,b)
  %3418 = call i32 @dx.op.binary.i32(i32 40, i32 %3416, i32 %3412)  ; UMin(a,b)
  %3419 = mul i32 %3418, %3402
  %3420 = add i32 %3419, %3417
  %3421 = shl i32 %3420, 2
  %3422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3421, i32 undef)  ; BufferLoad(srv,index,wot)
  %3423 = extractvalue %dx.types.ResRet.i32 %3422, 0
  %3424 = icmp eq i32 %3423, -1
  br i1 %3424, label %3641, label %3425

; <label>:3425                                    ; preds = %3370
  %3426 = mul i32 %3423, 148
  %3427 = add i32 %3426, 4
  %3428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3427, i32 undef)  ; BufferLoad(srv,index,wot)
  %3429 = extractvalue %dx.types.ResRet.f32 %3428, 0
  %3430 = add i32 %3426, 8
  %3431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3430, i32 undef)  ; BufferLoad(srv,index,wot)
  %3432 = extractvalue %dx.types.ResRet.f32 %3431, 0
  %3433 = add i32 %3426, 36
  %3434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3433, i32 undef)  ; BufferLoad(srv,index,wot)
  %3435 = extractvalue %dx.types.ResRet.f32 %3434, 0
  %3436 = add i32 %3426, 60
  %3437 = add i32 %3426, 92
  %3438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3437, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.i32 %3438, 0
  %3440 = add i32 %3426, 116
  %3441 = fsub fast float %3392, %3429
  %3442 = fsub fast float %3393, %3432
  %3443 = fmul fast float %3400, %3441
  %3444 = fmul fast float %3400, %3442
  %3445 = call float @dx.op.unary.f32(i32 7, float %3443)  ; Saturate(value)
  %3446 = call float @dx.op.unary.f32(i32 7, float %3444)  ; Saturate(value)
  %3447 = fsub fast float 1.000000e+00, %3446
  %3448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3449 = extractvalue %dx.types.CBufRet.f32 %3448, 2
  %3450 = call float @dx.op.unary.f32(i32 83, float %3445)  ; DerivCoarseX(value)
  %3451 = call float @dx.op.unary.f32(i32 83, float %3447)  ; DerivCoarseX(value)
  %3452 = call float @dx.op.unary.f32(i32 84, float %3445)  ; DerivCoarseY(value)
  %3453 = call float @dx.op.unary.f32(i32 84, float %3447)  ; DerivCoarseY(value)
  %3454 = fmul fast float %3450, %3449
  %3455 = fmul fast float %3451, %3449
  %3456 = fmul fast float %3452, %3449
  %3457 = fmul fast float %3453, %3449
  %3458 = call float @dx.op.dot2.f32(i32 54, float %3456, float %3457, float %3456, float %3457)  ; Dot2(ax,ay,bx,by)
  %3459 = call float @dx.op.dot2.f32(i32 54, float %3454, float %3455, float %3454, float %3455)  ; Dot2(ax,ay,bx,by)
  %3460 = call float @dx.op.binary.f32(i32 35, float %3459, float %3458)  ; FMax(a,b)
  %3461 = call float @dx.op.unary.f32(i32 23, float %3460)  ; Log(value)
  %3462 = fmul fast float %3461, 5.000000e-01
  %3463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3464 = extractvalue %dx.types.CBufRet.f32 %3463, 1
  %3465 = fadd fast float %3464, %3462
  %3466 = call float @dx.op.binary.f32(i32 35, float %3465, float 0.000000e+00)  ; FMax(a,b)
  %3467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3468 = extractvalue %dx.types.CBufRet.f32 %3467, 3
  %3469 = fadd fast float %3468, %3466
  %3470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3471 = extractvalue %dx.types.CBufRet.f32 %3470, 3
  %3472 = fadd fast float %3469, %3471
  %3473 = add i32 %3439, 0
  %3474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3473, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3475 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3474, i32 0)  ; GetDimensions(handle,mipLevel)
  %3476 = extractvalue %dx.types.Dimensions %3475, 0
  %3477 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3476)  ; FirstbitLo(value)
  %3478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3479 = extractvalue %dx.types.CBufRet.i32 %3478, 1
  %3480 = sub nsw i32 %3479, %3477
  %3481 = sitofp i32 %3480 to float
  %3482 = fsub fast float %3472, %3481
  %3483 = call float @dx.op.binary.f32(i32 35, float %3482, float 0.000000e+00)  ; FMax(a,b)
  %3484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3474, %dx.types.Handle %22, float %3445, float %3447, float %3435, float undef, i32 0, i32 0, i32 undef, float %3483)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3485 = extractvalue %dx.types.ResRet.f32 %3484, 0
  %3486 = fcmp ule float %3485, 0x3FE0101020000000
  %3487 = extractvalue %dx.types.CBufRet.i32 %3478, 0
  %3488 = and i32 %3487, 128
  %3489 = icmp ne i32 %3488, 0
  %3490 = and i1 %3486, %3489
  br i1 %3490, label %3641, label %3491

; <label>:3491                                    ; preds = %3425
  %3492 = add i32 %3426, 20
  %3493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3492, i32 undef)  ; BufferLoad(srv,index,wot)
  %3494 = extractvalue %dx.types.ResRet.f32 %3493, 0
  %3495 = add i32 %3426, 24
  %3496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3495, i32 undef)  ; BufferLoad(srv,index,wot)
  %3497 = extractvalue %dx.types.ResRet.f32 %3496, 0
  %3498 = add i32 %3426, 40
  %3499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.f32 %3499, 0
  %3501 = add i32 %3426, 96
  %3502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3501, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.i32 %3502, 0
  %3504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3505 = extractvalue %dx.types.CBufRet.f32 %3504, 2
  %3506 = fmul fast float %3505, %3445
  %3507 = fmul fast float %3505, %3447
  %3508 = extractvalue %dx.types.CBufRet.f32 %3504, 3
  %3509 = fadd fast float %3506, %3508
  %3510 = fadd fast float %3507, %3508
  %3511 = add i32 %3503, 0
  %3512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3511, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3513 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3512, i32 0)  ; GetDimensions(handle,mipLevel)
  %3514 = extractvalue %dx.types.Dimensions %3513, 0
  %3515 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3514)  ; FirstbitLo(value)
  %3516 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3517 = extractvalue %dx.types.CBufRet.i32 %3516, 1
  %3518 = sub nsw i32 %3517, %3515
  %3519 = sitofp i32 %3518 to float
  %3520 = fsub fast float %3469, %3519
  %3521 = call float @dx.op.binary.f32(i32 35, float %3520, float 0.000000e+00)  ; FMax(a,b)
  %3522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3512, %dx.types.Handle %22, float %3509, float %3510, float %3500, float undef, i32 0, i32 0, i32 undef, float %3521)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3523 = extractvalue %dx.types.ResRet.f32 %3522, 0
  %3524 = fmul fast float %3523, %3494
  %3525 = fadd fast float %3524, %3497
  %3526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3527 = extractvalue %dx.types.CBufRet.f32 %3526, 0
  %3528 = extractvalue %dx.types.CBufRet.f32 %3526, 1
  %3529 = extractvalue %dx.types.CBufRet.f32 %3526, 2
  %3530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3531 = extractvalue %dx.types.CBufRet.f32 %3530, 3
  %3532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3533 = extractvalue %dx.types.CBufRet.f32 %3532, 3
  %3534 = extractvalue %dx.types.CBufRet.f32 %3526, 3
  %3535 = fadd fast float %3531, %3392
  %3536 = fadd fast float %3533, %3393
  %3537 = fadd fast float %3525, %3534
  %3538 = fmul fast float %3535, %3527
  %3539 = call float @dx.op.tertiary.f32(i32 46, float %3536, float %3528, float %3538)  ; FMad(a,b,c)
  %3540 = call float @dx.op.tertiary.f32(i32 46, float %3537, float %3529, float %3539)  ; FMad(a,b,c)
  %3541 = fsub fast float %3540, %3534
  %3542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3543 = extractvalue %dx.types.CBufRet.f32 %3542, 2
  %3544 = fsub fast float %3541, %3543
  %3545 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3546 = extractvalue %dx.types.CBufRet.i32 %3545, 0
  %3547 = call i32 @dx.op.binary.i32(i32 40, i32 %3423, i32 %3546)  ; UMin(a,b)
  %3548 = mul i32 %3547, 36
  %3549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3548, i32 undef)  ; BufferLoad(srv,index,wot)
  %3550 = extractvalue %dx.types.ResRet.i32 %3549, 0
  %3551 = add i32 %3548, 4
  %3552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3553 = extractvalue %dx.types.CBufRet.f32 %3552, 0
  %3554 = fmul fast float %3553, %3445
  %3555 = fmul fast float %3553, %3447
  %3556 = extractvalue %dx.types.CBufRet.f32 %3552, 1
  %3557 = fadd fast float %3554, %3556
  %3558 = fadd fast float %3555, %3556
  %3559 = icmp eq i32 %3550, 0
  br i1 %3559, label %3628, label %3560

; <label>:3560                                    ; preds = %3491
  br label %3561

; <label>:3561                                    ; preds = %3618, %3560
  %3562 = phi float [ %3619, %3618 ], [ 0.000000e+00, %3560 ]
  %3563 = phi float [ %3620, %3618 ], [ 0.000000e+00, %3560 ]
  %3564 = phi float [ %3621, %3618 ], [ 0.000000e+00, %3560 ]
  %3565 = phi float [ %3622, %3618 ], [ 0.000000e+00, %3560 ]
  %3566 = phi float [ %3623, %3618 ], [ 0.000000e+00, %3560 ]
  %3567 = phi float [ %3624, %3618 ], [ 0.000000e+00, %3560 ]
  %3568 = phi i32 [ %3625, %3618 ], [ 0, %3560 ]
  %3569 = shl i32 %3568, 2
  %3570 = add i32 %3436, %3569
  %3571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3570, i32 undef)  ; BufferLoad(srv,index,wot)
  %3572 = extractvalue %dx.types.ResRet.f32 %3571, 0
  %3573 = add i32 %3440, %3569
  %3574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3573, i32 undef)  ; BufferLoad(srv,index,wot)
  %3575 = extractvalue %dx.types.ResRet.i32 %3574, 0
  %3576 = add i32 %3575, 0
  %3577 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3576, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3578 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3577, i32 0)  ; GetDimensions(handle,mipLevel)
  %3579 = extractvalue %dx.types.Dimensions %3578, 0
  %3580 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3579)  ; FirstbitLo(value)
  %3581 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3582 = extractvalue %dx.types.CBufRet.i32 %3581, 1
  %3583 = sub nsw i32 %3582, %3580
  %3584 = sitofp i32 %3583 to float
  %3585 = fsub fast float %3469, %3584
  %3586 = call float @dx.op.binary.f32(i32 35, float %3585, float 0.000000e+00)  ; FMax(a,b)
  %3587 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3577, %dx.types.Handle %22, float %3557, float %3558, float %3572, float undef, i32 0, i32 0, i32 undef, float %3586)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3588 = extractvalue %dx.types.ResRet.f32 %3587, 0
  %3589 = fcmp fast ogt float %3588, 0.000000e+00
  br i1 %3589, label %3590, label %3618

; <label>:3590                                    ; preds = %3561
  %3591 = add i32 %3551, %3569
  %3592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3593 = extractvalue %dx.types.ResRet.i32 %3592, 0
  %3594 = and i32 %3593, 32767
  %3595 = mul nuw nsw i32 %3594, 928
  %3596 = add nuw nsw i32 %3595, 48
  %3597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3598 = extractvalue %dx.types.ResRet.f32 %3597, 0
  %3599 = extractvalue %dx.types.ResRet.f32 %3597, 1
  %3600 = extractvalue %dx.types.ResRet.f32 %3597, 2
  %3601 = add nuw nsw i32 %3595, 60
  %3602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.f32 %3602, 0
  %3604 = extractvalue %dx.types.ResRet.f32 %3602, 1
  %3605 = extractvalue %dx.types.ResRet.f32 %3602, 2
  %3606 = fmul fast float %3598, %3588
  %3607 = fmul fast float %3599, %3588
  %3608 = fmul fast float %3600, %3588
  %3609 = fadd fast float %3606, %3562
  %3610 = fadd fast float %3607, %3563
  %3611 = fadd fast float %3608, %3564
  %3612 = fmul fast float %3603, %3588
  %3613 = fmul fast float %3604, %3588
  %3614 = fmul fast float %3605, %3588
  %3615 = fadd fast float %3612, %3565
  %3616 = fadd fast float %3613, %3566
  %3617 = fadd fast float %3614, %3567
  br label %3618

; <label>:3618                                    ; preds = %3590, %3561
  %3619 = phi float [ %3609, %3590 ], [ %3562, %3561 ]
  %3620 = phi float [ %3610, %3590 ], [ %3563, %3561 ]
  %3621 = phi float [ %3611, %3590 ], [ %3564, %3561 ]
  %3622 = phi float [ %3615, %3590 ], [ %3565, %3561 ]
  %3623 = phi float [ %3616, %3590 ], [ %3566, %3561 ]
  %3624 = phi float [ %3617, %3590 ], [ %3567, %3561 ]
  %3625 = add nuw i32 %3568, 1
  %3626 = icmp eq i32 %3625, %3550
  br i1 %3626, label %3627, label %3561

; <label>:3627                                    ; preds = %3618
  br label %3628

; <label>:3628                                    ; preds = %3627, %3491
  %3629 = phi float [ 0.000000e+00, %3491 ], [ %3619, %3627 ]
  %3630 = phi float [ 0.000000e+00, %3491 ], [ %3620, %3627 ]
  %3631 = phi float [ 0.000000e+00, %3491 ], [ %3621, %3627 ]
  %3632 = phi float [ 0.000000e+00, %3491 ], [ %3622, %3627 ]
  %3633 = phi float [ 0.000000e+00, %3491 ], [ %3623, %3627 ]
  %3634 = phi float [ 0.000000e+00, %3491 ], [ %3624, %3627 ]
  %3635 = fadd fast float %3632, %3629
  %3636 = fmul fast float %3635, 0x3F847AE140000000
  %3637 = fadd fast float %3633, %3630
  %3638 = fmul fast float %3637, 0x3F847AE140000000
  %3639 = fadd fast float %3634, %3631
  %3640 = fmul fast float %3639, 0x3F847AE140000000
  br label %3641

; <label>:3641                                    ; preds = %3628, %3425, %3370, %3367, %3338, %3300
  %3642 = phi float [ %3352, %3338 ], [ -1.310720e+05, %3300 ], [ %3544, %3628 ], [ -1.310720e+05, %3370 ], [ -1.310720e+05, %3425 ], [ -1.310720e+05, %3367 ]
  %3643 = phi float [ %3362, %3338 ], [ 0.000000e+00, %3300 ], [ %3636, %3628 ], [ 0.000000e+00, %3370 ], [ 0.000000e+00, %3425 ], [ 0.000000e+00, %3367 ]
  %3644 = phi float [ %3364, %3338 ], [ 0.000000e+00, %3300 ], [ %3638, %3628 ], [ 0.000000e+00, %3370 ], [ 0.000000e+00, %3425 ], [ 0.000000e+00, %3367 ]
  %3645 = phi float [ %3366, %3338 ], [ 0.000000e+00, %3300 ], [ %3640, %3628 ], [ 0.000000e+00, %3370 ], [ 0.000000e+00, %3425 ], [ 0.000000e+00, %3367 ]
  %3646 = phi i1 [ true, %3338 ], [ false, %3300 ], [ true, %3628 ], [ false, %3370 ], [ false, %3425 ], [ false, %3367 ]
  %3647 = and i32 %175, 3
  %3648 = icmp eq i32 %3647, 1
  %3649 = select i1 %3648, float 1.000000e+00, float 0.000000e+00
  %3650 = fsub fast float %3642, %159
  %3651 = call float @dx.op.unary.f32(i32 7, float %3650)  ; Saturate(value)
  %3652 = select i1 %3646, float %3651, float 1.000000e+00
  %3653 = fmul fast float %3652, %3649
  %3654 = icmp eq i32 %3647, 3
  %3655 = select i1 %3654, float 1.000000e+00, float %3653
  %3656 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3655)  ; FMax(a,b)
  %3657 = fcmp fast olt float %3655, 1.000000e+00
  %3658 = fcmp uge float %41, 0.000000e+00
  %3659 = and i1 %3658, %3657
  br i1 %3659, label %3660, label %3670

; <label>:3660                                    ; preds = %3641
  %3661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %41, float %42, float %43, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3662 = extractvalue %dx.types.ResRet.f32 %3661, 0
  %3663 = extractvalue %dx.types.ResRet.f32 %3661, 1
  %3664 = extractvalue %dx.types.ResRet.f32 %3661, 2
  %3665 = fadd fast float %3662, %3656
  %3666 = fcmp ule float %40, 0.000000e+00
  %3667 = call float @dx.op.dot3.f32(i32 55, float %37, float %38, float %39, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3668 = select i1 %3666, float %3667, float 1.000000e+00
  %3669 = fmul fast float %3668, %3664
  br label %3670

; <label>:3670                                    ; preds = %3660, %3641
  %3671 = phi float [ %3665, %3660 ], [ %3656, %3641 ]
  %3672 = phi float [ %3663, %3660 ], [ 0.000000e+00, %3641 ]
  %3673 = phi float [ %3669, %3660 ], [ 0.000000e+00, %3641 ]
  %3674 = call float @dx.op.unary.f32(i32 7, float %3671)  ; Saturate(value)
  %3675 = call float @dx.op.unary.f32(i32 7, float %3672)  ; Saturate(value)
  %3676 = call float @dx.op.unary.f32(i32 7, float %3673)  ; Saturate(value)
  %3677 = fcmp fast une float %3675, 0.000000e+00
  %3678 = fcmp fast une float %3676, 0.000000e+00
  %3679 = or i1 %3677, %3678
  br i1 %3679, label %3680, label %4239

; <label>:3680                                    ; preds = %3670
  br i1 %3677, label %3681, label %3954

; <label>:3681                                    ; preds = %3680
  %3682 = call float @dx.op.unary.f32(i32 23, float %3131)  ; Log(value)
  %3683 = fmul fast float %3682, 4.000000e+00
  %3684 = call float @dx.op.unary.f32(i32 21, float %3683)  ; Exp(value)
  %3685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3686 = extractvalue %dx.types.CBufRet.f32 %3685, 0
  %3687 = fmul fast float %3686, %28
  %3688 = fmul fast float %3686, %29
  %3689 = fmul fast float %3686, %30
  %3690 = call float @dx.op.unary.f32(i32 6, float %37)  ; FAbs(value)
  %3691 = call float @dx.op.unary.f32(i32 6, float %38)  ; FAbs(value)
  %3692 = call float @dx.op.unary.f32(i32 6, float %39)  ; FAbs(value)
  %3693 = call float @dx.op.unary.f32(i32 23, float %3690)  ; Log(value)
  %3694 = call float @dx.op.unary.f32(i32 23, float %3691)  ; Log(value)
  %3695 = call float @dx.op.unary.f32(i32 23, float %3692)  ; Log(value)
  %3696 = fmul fast float %3693, 4.000000e+00
  %3697 = fmul fast float %3694, 4.000000e+00
  %3698 = fmul fast float %3695, 4.000000e+00
  %3699 = call float @dx.op.unary.f32(i32 21, float %3696)  ; Exp(value)
  %3700 = call float @dx.op.unary.f32(i32 21, float %3697)  ; Exp(value)
  %3701 = call float @dx.op.unary.f32(i32 21, float %3698)  ; Exp(value)
  %3702 = fadd fast float %3700, %3699
  %3703 = fadd fast float %3702, %3701
  %3704 = fdiv fast float 1.000000e+00, %3703
  %3705 = fmul fast float %3704, %3699
  %3706 = fcmp fast ogt float %37, 0.000000e+00
  %3707 = fcmp fast ogt float %38, 0.000000e+00
  %3708 = fcmp fast ogt float %39, 0.000000e+00
  %3709 = fcmp fast olt float %37, 0.000000e+00
  %3710 = fcmp fast olt float %38, 0.000000e+00
  %3711 = fcmp fast olt float %39, 0.000000e+00
  %3712 = zext i1 %3706 to i32
  %3713 = zext i1 %3707 to i32
  %3714 = zext i1 %3708 to i32
  %3715 = zext i1 %3709 to i32
  %3716 = zext i1 %3710 to i32
  %3717 = zext i1 %3711 to i32
  %3718 = sub nsw i32 %3712, %3715
  %3719 = sub nsw i32 %3713, %3716
  %3720 = sub nsw i32 %3714, %3717
  %3721 = call float @dx.op.unary.f32(i32 83, float %3687)  ; DerivCoarseX(value)
  %3722 = call float @dx.op.unary.f32(i32 83, float %3688)  ; DerivCoarseX(value)
  %3723 = call float @dx.op.unary.f32(i32 83, float %3689)  ; DerivCoarseX(value)
  %3724 = call float @dx.op.unary.f32(i32 84, float %3687)  ; DerivCoarseY(value)
  %3725 = call float @dx.op.unary.f32(i32 84, float %3688)  ; DerivCoarseY(value)
  %3726 = call float @dx.op.unary.f32(i32 84, float %3689)  ; DerivCoarseY(value)
  %3727 = fcmp fast ole float %207, %3705
  %3728 = fmul fast float %3704, %3702
  %3729 = fcmp fast ole float %207, %3728
  %3730 = select i1 %3729, float %3689, float %3687
  %3731 = select i1 %3729, float %3687, float %3688
  %3732 = select i1 %3727, float %3688, float %3730
  %3733 = select i1 %3727, float %3689, float %3731
  %3734 = select i1 %3729, float %3723, float %3721
  %3735 = select i1 %3729, float %3721, float %3722
  %3736 = select i1 %3727, float %3722, float %3734
  %3737 = select i1 %3727, float %3723, float %3735
  %3738 = select i1 %3729, float %3726, float %3724
  %3739 = select i1 %3729, float %3724, float %3725
  %3740 = select i1 %3727, float %3725, float %3738
  %3741 = select i1 %3727, float %3726, float %3739
  %3742 = call float @dx.op.unary.f32(i32 27, float %3732)  ; Round_ni(value)
  %3743 = call float @dx.op.unary.f32(i32 27, float %3733)  ; Round_ni(value)
  %3744 = fptosi float %3742 to i32
  %3745 = fptosi float %3743 to i32
  %3746 = xor i32 %3745, %3744
  %3747 = sitofp i32 %3746 to float
  %3748 = fptosi float %3747 to i32
  %3749 = sitofp i32 %3748 to float
  %3750 = fmul fast float %3749, 0x3FE3C6EF40000000
  %3751 = frem fast float %3742, 2.560000e+02
  %3752 = frem fast float %3743, 2.560000e+02
  %3753 = fptoui float %3751 to i32
  %3754 = fptoui float %3752 to i32
  %3755 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %3753, i32 %3754, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3756 = extractvalue %dx.types.ResRet.f32 %3755, 0
  %3757 = extractvalue %dx.types.ResRet.f32 %3755, 1
  %3758 = extractvalue %dx.types.ResRet.f32 %3755, 2
  %3759 = fadd fast float %3756, %3750
  %3760 = fadd fast float %3757, %3750
  %3761 = fadd fast float %3758, %3750
  %3762 = call float @dx.op.unary.f32(i32 22, float %3759)  ; Frc(value)
  %3763 = call float @dx.op.unary.f32(i32 22, float %3760)  ; Frc(value)
  %3764 = call float @dx.op.unary.f32(i32 22, float %3761)  ; Frc(value)
  %3765 = fmul fast float %3764, 0x401921FB60000000
  %3766 = call float @dx.op.unary.f32(i32 13, float %3765)  ; Sin(value)
  %3767 = call float @dx.op.unary.f32(i32 12, float %3765)  ; Cos(value)
  %3768 = fsub fast float -0.000000e+00, %3767
  %3769 = fmul fast float %3767, %3732
  %3770 = call float @dx.op.tertiary.f32(i32 46, float %3766, float %3733, float %3769)  ; FMad(a,b,c)
  %3771 = fmul fast float %3766, %3732
  %3772 = call float @dx.op.tertiary.f32(i32 46, float %3768, float %3733, float %3771)  ; FMad(a,b,c)
  %3773 = fadd fast float %3770, %3762
  %3774 = fadd fast float %3772, %3763
  %3775 = extractvalue %dx.types.CBufRet.f32 %3685, 3
  %3776 = bitcast float %3775 to i32
  %3777 = icmp eq i32 %3776, 0
  br i1 %3777, label %3816, label %3778

; <label>:3778                                    ; preds = %3681
  %3779 = add i32 %3776, 0
  %3780 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3779, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3781 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3780, %dx.types.Handle %67, float %3773, float %3774, float undef, float undef, i32 0, i32 0, i32 undef, float %3736, float %3737, float undef, float %3740, float %3741, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3782 = extractvalue %dx.types.ResRet.f32 %3781, 0
  %3783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3784 = extractvalue %dx.types.CBufRet.f32 %3783, 1
  %3785 = extractvalue %dx.types.CBufRet.f32 %3783, 2
  %3786 = fsub fast float 1.000000e+00, %3675
  %3787 = call float @dx.op.binary.f32(i32 35, float %3786, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3788 = bitcast float %3675 to i32
  %3789 = sitofp i32 %3788 to float
  %3790 = fadd fast float %3789, 0xC1CFBF8940000000
  %3791 = fmul fast float %3785, %3790
  %3792 = fadd fast float %3791, 0x41CFBF8940000000
  %3793 = fptosi float %3792 to i32
  %3794 = bitcast i32 %3793 to float
  %3795 = bitcast float %3787 to i32
  %3796 = sitofp i32 %3795 to float
  %3797 = fadd fast float %3796, 0xC1CFBF8940000000
  %3798 = fmul fast float %3797, %3785
  %3799 = fadd fast float %3798, 0x41CFBF8940000000
  %3800 = fptosi float %3799 to i32
  %3801 = bitcast i32 %3800 to float
  %3802 = fmul fast float %3794, %3784
  %3803 = fmul fast float %3801, %3784
  %3804 = fsub fast float %3787, %3802
  %3805 = fadd fast float %3803, %3787
  %3806 = call float @dx.op.unary.f32(i32 7, float %3804)  ; Saturate(value)
  %3807 = call float @dx.op.unary.f32(i32 7, float %3805)  ; Saturate(value)
  %3808 = fsub fast float %3782, %3806
  %3809 = fsub fast float %3807, %3806
  %3810 = bitcast float %3809 to i32
  %3811 = sub nsw i32 2129859010, %3810
  %3812 = bitcast i32 %3811 to float
  %3813 = fmul fast float %3812, %3808
  %3814 = call float @dx.op.unary.f32(i32 7, float %3813)  ; Saturate(value)
  %3815 = fcmp fast olt float %3814, 0x3F70101020000000
  br i1 %3815, label %3954, label %3816

; <label>:3816                                    ; preds = %3778, %3681
  %3817 = phi float [ %3814, %3778 ], [ %3675, %3681 ]
  %3818 = fmul fast float %3817, %3684
  %3819 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3820 = extractvalue %dx.types.CBufRet.i32 %3819, 1
  %3821 = extractvalue %dx.types.CBufRet.i32 %3819, 0
  %3822 = add i32 %3821, 0
  %3823 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3822, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3824 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3823, %dx.types.Handle %66, float %3773, float %3774, float undef, float undef, i32 0, i32 0, i32 undef, float %3736, float %3737, float undef, float %3740, float %3741, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3825 = extractvalue %dx.types.ResRet.f32 %3824, 0
  %3826 = extractvalue %dx.types.ResRet.f32 %3824, 1
  %3827 = extractvalue %dx.types.ResRet.f32 %3824, 2
  %3828 = extractvalue %dx.types.ResRet.f32 %3824, 3
  %3829 = and i32 %3820, 255
  %3830 = uitofp i32 %3829 to float
  %3831 = lshr i32 %3820, 8
  %3832 = and i32 %3831, 255
  %3833 = uitofp i32 %3832 to float
  %3834 = fmul fast float %3828, %3830
  %3835 = fadd fast float %3834, %3833
  %3836 = fmul fast float %3835, 0x3F70101000000000
  %3837 = fadd fast float %3836, 0xBFB99999A0000000
  %3838 = call float @dx.op.unary.f32(i32 7, float %3837)  ; Saturate(value)
  %3839 = fmul fast float %3838, 0x3FF1C71C80000000
  %3840 = call float @dx.op.binary.f32(i32 36, float %3836, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3841 = fsub fast float 1.000000e+00, %3839
  %3842 = call float @dx.op.unary.f32(i32 7, float %3841)  ; Saturate(value)
  %3843 = fmul fast float %3842, %3825
  %3844 = fmul fast float %3842, %3826
  %3845 = fmul fast float %3842, %3827
  %3846 = call float @dx.op.unary.f32(i32 7, float %3843)  ; Saturate(value)
  %3847 = call float @dx.op.unary.f32(i32 7, float %3844)  ; Saturate(value)
  %3848 = call float @dx.op.unary.f32(i32 7, float %3845)  ; Saturate(value)
  %3849 = fmul fast float %3839, %3825
  %3850 = fmul fast float %3839, %3826
  %3851 = fmul fast float %3839, %3827
  %3852 = fadd fast float %3849, %3840
  %3853 = fadd fast float %3850, %3840
  %3854 = fadd fast float %3851, %3840
  %3855 = call float @dx.op.unary.f32(i32 7, float %3852)  ; Saturate(value)
  %3856 = call float @dx.op.unary.f32(i32 7, float %3853)  ; Saturate(value)
  %3857 = call float @dx.op.unary.f32(i32 7, float %3854)  ; Saturate(value)
  %3858 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3859 = extractvalue %dx.types.CBufRet.i32 %3858, 3
  %3860 = extractvalue %dx.types.CBufRet.i32 %3858, 2
  %3861 = add i32 %3860, 0
  %3862 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3861, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3863 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3862, %dx.types.Handle %66, float %3773, float %3774, float undef, float undef, i32 0, i32 0, i32 undef, float %3736, float %3737, float undef, float %3740, float %3741, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3864 = extractvalue %dx.types.ResRet.f32 %3863, 0
  %3865 = extractvalue %dx.types.ResRet.f32 %3863, 1
  %3866 = extractvalue %dx.types.ResRet.f32 %3863, 2
  %3867 = extractvalue %dx.types.ResRet.f32 %3863, 3
  %3868 = and i32 %3859, 255
  %3869 = uitofp i32 %3868 to float
  %3870 = lshr i32 %3859, 8
  %3871 = and i32 %3870, 255
  %3872 = uitofp i32 %3871 to float
  %3873 = lshr i32 %3859, 16
  %3874 = and i32 %3873, 255
  %3875 = uitofp i32 %3874 to float
  %3876 = fmul fast float %3875, 0x3F70101000000000
  %3877 = fmul fast float %3864, %3869
  %3878 = fadd fast float %3877, %3872
  %3879 = fmul fast float %3878, 0x3F70101000000000
  %3880 = fadd fast float %3865, -5.000000e-01
  %3881 = fadd fast float %3867, -5.000000e-01
  %3882 = fmul fast float %3880, %3876
  %3883 = fmul fast float %3881, %3876
  %3884 = fadd fast float %3882, 5.000000e-01
  %3885 = fadd fast float %3883, 5.000000e-01
  %3886 = fmul fast float %3884, 2.000000e+00
  %3887 = fadd fast float %3886, -1.000000e+00
  %3888 = fmul fast float %3885, 2.000000e+00
  %3889 = fadd fast float %3888, -1.000000e+00
  %3890 = fadd fast float %3887, %3889
  %3891 = fmul fast float %3890, 5.000000e-01
  %3892 = fsub fast float %3887, %3889
  %3893 = fmul fast float %3892, 5.000000e-01
  %3894 = call float @dx.op.unary.f32(i32 6, float %3891)  ; FAbs(value)
  %3895 = fsub fast float 1.000000e+00, %3894
  %3896 = call float @dx.op.unary.f32(i32 6, float %3893)  ; FAbs(value)
  %3897 = fsub fast float %3895, %3896
  %3898 = call float @dx.op.dot3.f32(i32 55, float %3891, float %3893, float %3897, float %3891, float %3893, float %3897)  ; Dot3(ax,ay,az,bx,by,bz)
  %3899 = call float @dx.op.unary.f32(i32 25, float %3898)  ; Rsqrt(value)
  %3900 = fmul fast float %3891, %3899
  %3901 = fmul fast float %3893, %3899
  %3902 = select i1 %3729, i32 %3719, i32 %3720
  %3903 = select i1 %3727, i32 %3718, i32 %3902
  %3904 = sitofp i32 %3903 to float
  %3905 = fmul fast float %3897, %3904
  %3906 = fmul fast float %3905, %3899
  %3907 = select i1 %3729, float %3906, float %3901
  %3908 = select i1 %3729, float %3901, float %3906
  %3909 = select i1 %3727, float %3906, float %3900
  %3910 = select i1 %3727, float %3901, float %3907
  %3911 = select i1 %3727, float %3900, float %3908
  %3912 = fsub fast float %3846, %3196
  %3913 = fsub fast float %3847, %3197
  %3914 = fsub fast float %3848, %3198
  %3915 = fmul fast float %3912, %3818
  %3916 = fmul fast float %3913, %3818
  %3917 = fmul fast float %3914, %3818
  %3918 = fadd fast float %3915, %3196
  %3919 = fadd fast float %3916, %3197
  %3920 = fadd fast float %3917, %3198
  %3921 = fsub fast float %3855, %3181
  %3922 = fsub fast float %3856, %3182
  %3923 = fsub fast float %3857, %3183
  %3924 = fmul fast float %3921, %3818
  %3925 = fmul fast float %3922, %3818
  %3926 = fmul fast float %3923, %3818
  %3927 = fadd fast float %3924, %3181
  %3928 = fadd fast float %3925, %3182
  %3929 = fadd fast float %3926, %3183
  %3930 = fadd fast float %3909, %3160
  %3931 = fadd fast float %3910, %3161
  %3932 = fadd fast float %3911, %3162
  %3933 = call float @dx.op.dot3.f32(i32 55, float %3930, float %3931, float %3932, float %3930, float %3931, float %3932)  ; Dot3(ax,ay,az,bx,by,bz)
  %3934 = call float @dx.op.unary.f32(i32 25, float %3933)  ; Rsqrt(value)
  %3935 = fmul fast float %3930, %3934
  %3936 = fmul fast float %3931, %3934
  %3937 = fmul fast float %3932, %3934
  %3938 = fsub fast float %3935, %3160
  %3939 = fsub fast float %3936, %3161
  %3940 = fsub fast float %3937, %3162
  %3941 = fmul fast float %3938, %3818
  %3942 = fmul fast float %3939, %3818
  %3943 = fmul fast float %3940, %3818
  %3944 = fadd fast float %3941, %3160
  %3945 = fadd fast float %3942, %3161
  %3946 = fadd fast float %3943, %3162
  %3947 = call float @dx.op.binary.f32(i32 36, float %3131, float %3866)  ; FMin(a,b)
  %3948 = fsub fast float %3947, %3131
  %3949 = fmul fast float %3948, %3818
  %3950 = fadd fast float %3949, %3131
  %3951 = fsub fast float %3879, %3265
  %3952 = fmul fast float %3951, %3818
  %3953 = fadd fast float %3952, %3265
  br label %3954

; <label>:3954                                    ; preds = %3816, %3778, %3680
  %3955 = phi float [ %3918, %3816 ], [ %3196, %3778 ], [ %3196, %3680 ]
  %3956 = phi float [ %3919, %3816 ], [ %3197, %3778 ], [ %3197, %3680 ]
  %3957 = phi float [ %3920, %3816 ], [ %3198, %3778 ], [ %3198, %3680 ]
  %3958 = phi float [ %3944, %3816 ], [ %3160, %3778 ], [ %3160, %3680 ]
  %3959 = phi float [ %3945, %3816 ], [ %3161, %3778 ], [ %3161, %3680 ]
  %3960 = phi float [ %3946, %3816 ], [ %3162, %3778 ], [ %3162, %3680 ]
  %3961 = phi float [ %3927, %3816 ], [ %3181, %3778 ], [ %3181, %3680 ]
  %3962 = phi float [ %3928, %3816 ], [ %3182, %3778 ], [ %3182, %3680 ]
  %3963 = phi float [ %3929, %3816 ], [ %3183, %3778 ], [ %3183, %3680 ]
  %3964 = phi float [ %3953, %3816 ], [ %3265, %3778 ], [ %3265, %3680 ]
  %3965 = phi float [ %3950, %3816 ], [ %3131, %3778 ], [ %3131, %3680 ]
  br i1 %3678, label %3966, label %4239

; <label>:3966                                    ; preds = %3954
  %3967 = call float @dx.op.unary.f32(i32 23, float %3965)  ; Log(value)
  %3968 = fmul fast float %3967, 4.000000e+00
  %3969 = call float @dx.op.unary.f32(i32 21, float %3968)  ; Exp(value)
  %3970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %3971 = extractvalue %dx.types.CBufRet.f32 %3970, 0
  %3972 = fmul fast float %3971, %28
  %3973 = fmul fast float %3971, %29
  %3974 = fmul fast float %3971, %30
  %3975 = call float @dx.op.unary.f32(i32 6, float %37)  ; FAbs(value)
  %3976 = call float @dx.op.unary.f32(i32 6, float %38)  ; FAbs(value)
  %3977 = call float @dx.op.unary.f32(i32 6, float %39)  ; FAbs(value)
  %3978 = call float @dx.op.unary.f32(i32 23, float %3975)  ; Log(value)
  %3979 = call float @dx.op.unary.f32(i32 23, float %3976)  ; Log(value)
  %3980 = call float @dx.op.unary.f32(i32 23, float %3977)  ; Log(value)
  %3981 = fmul fast float %3978, 4.000000e+00
  %3982 = fmul fast float %3979, 4.000000e+00
  %3983 = fmul fast float %3980, 4.000000e+00
  %3984 = call float @dx.op.unary.f32(i32 21, float %3981)  ; Exp(value)
  %3985 = call float @dx.op.unary.f32(i32 21, float %3982)  ; Exp(value)
  %3986 = call float @dx.op.unary.f32(i32 21, float %3983)  ; Exp(value)
  %3987 = fadd fast float %3985, %3984
  %3988 = fadd fast float %3987, %3986
  %3989 = fdiv fast float 1.000000e+00, %3988
  %3990 = fmul fast float %3989, %3984
  %3991 = fcmp fast ogt float %37, 0.000000e+00
  %3992 = fcmp fast ogt float %38, 0.000000e+00
  %3993 = fcmp fast ogt float %39, 0.000000e+00
  %3994 = fcmp fast olt float %37, 0.000000e+00
  %3995 = fcmp fast olt float %38, 0.000000e+00
  %3996 = fcmp fast olt float %39, 0.000000e+00
  %3997 = zext i1 %3991 to i32
  %3998 = zext i1 %3992 to i32
  %3999 = zext i1 %3993 to i32
  %4000 = zext i1 %3994 to i32
  %4001 = zext i1 %3995 to i32
  %4002 = zext i1 %3996 to i32
  %4003 = sub nsw i32 %3997, %4000
  %4004 = sub nsw i32 %3998, %4001
  %4005 = sub nsw i32 %3999, %4002
  %4006 = call float @dx.op.unary.f32(i32 83, float %3972)  ; DerivCoarseX(value)
  %4007 = call float @dx.op.unary.f32(i32 83, float %3973)  ; DerivCoarseX(value)
  %4008 = call float @dx.op.unary.f32(i32 83, float %3974)  ; DerivCoarseX(value)
  %4009 = call float @dx.op.unary.f32(i32 84, float %3972)  ; DerivCoarseY(value)
  %4010 = call float @dx.op.unary.f32(i32 84, float %3973)  ; DerivCoarseY(value)
  %4011 = call float @dx.op.unary.f32(i32 84, float %3974)  ; DerivCoarseY(value)
  %4012 = fcmp fast ole float %207, %3990
  %4013 = fmul fast float %3989, %3987
  %4014 = fcmp fast ole float %207, %4013
  %4015 = select i1 %4014, float %3974, float %3972
  %4016 = select i1 %4014, float %3972, float %3973
  %4017 = select i1 %4012, float %3973, float %4015
  %4018 = select i1 %4012, float %3974, float %4016
  %4019 = select i1 %4014, float %4008, float %4006
  %4020 = select i1 %4014, float %4006, float %4007
  %4021 = select i1 %4012, float %4007, float %4019
  %4022 = select i1 %4012, float %4008, float %4020
  %4023 = select i1 %4014, float %4011, float %4009
  %4024 = select i1 %4014, float %4009, float %4010
  %4025 = select i1 %4012, float %4010, float %4023
  %4026 = select i1 %4012, float %4011, float %4024
  %4027 = call float @dx.op.unary.f32(i32 27, float %4017)  ; Round_ni(value)
  %4028 = call float @dx.op.unary.f32(i32 27, float %4018)  ; Round_ni(value)
  %4029 = fptosi float %4027 to i32
  %4030 = fptosi float %4028 to i32
  %4031 = xor i32 %4030, %4029
  %4032 = sitofp i32 %4031 to float
  %4033 = fptosi float %4032 to i32
  %4034 = sitofp i32 %4033 to float
  %4035 = fmul fast float %4034, 0x3FE3C6EF40000000
  %4036 = frem fast float %4027, 2.560000e+02
  %4037 = frem fast float %4028, 2.560000e+02
  %4038 = fptoui float %4036 to i32
  %4039 = fptoui float %4037 to i32
  %4040 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %4038, i32 %4039, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4041 = extractvalue %dx.types.ResRet.f32 %4040, 0
  %4042 = extractvalue %dx.types.ResRet.f32 %4040, 1
  %4043 = extractvalue %dx.types.ResRet.f32 %4040, 2
  %4044 = fadd fast float %4041, %4035
  %4045 = fadd fast float %4042, %4035
  %4046 = fadd fast float %4043, %4035
  %4047 = call float @dx.op.unary.f32(i32 22, float %4044)  ; Frc(value)
  %4048 = call float @dx.op.unary.f32(i32 22, float %4045)  ; Frc(value)
  %4049 = call float @dx.op.unary.f32(i32 22, float %4046)  ; Frc(value)
  %4050 = fmul fast float %4049, 0x401921FB60000000
  %4051 = call float @dx.op.unary.f32(i32 13, float %4050)  ; Sin(value)
  %4052 = call float @dx.op.unary.f32(i32 12, float %4050)  ; Cos(value)
  %4053 = fsub fast float -0.000000e+00, %4052
  %4054 = fmul fast float %4052, %4017
  %4055 = call float @dx.op.tertiary.f32(i32 46, float %4051, float %4018, float %4054)  ; FMad(a,b,c)
  %4056 = fmul fast float %4051, %4017
  %4057 = call float @dx.op.tertiary.f32(i32 46, float %4053, float %4018, float %4056)  ; FMad(a,b,c)
  %4058 = fadd fast float %4055, %4047
  %4059 = fadd fast float %4057, %4048
  %4060 = extractvalue %dx.types.CBufRet.f32 %3970, 3
  %4061 = bitcast float %4060 to i32
  %4062 = icmp eq i32 %4061, 0
  br i1 %4062, label %4101, label %4063

; <label>:4063                                    ; preds = %3966
  %4064 = add i32 %4061, 0
  %4065 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4064, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4066 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4065, %dx.types.Handle %67, float %4058, float %4059, float undef, float undef, i32 0, i32 0, i32 undef, float %4021, float %4022, float undef, float %4025, float %4026, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4067 = extractvalue %dx.types.ResRet.f32 %4066, 0
  %4068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.f32 %4068, 1
  %4070 = extractvalue %dx.types.CBufRet.f32 %4068, 2
  %4071 = fsub fast float 1.000000e+00, %3676
  %4072 = call float @dx.op.binary.f32(i32 35, float %4071, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4073 = bitcast float %3676 to i32
  %4074 = sitofp i32 %4073 to float
  %4075 = fadd fast float %4074, 0xC1CFBF8940000000
  %4076 = fmul fast float %4070, %4075
  %4077 = fadd fast float %4076, 0x41CFBF8940000000
  %4078 = fptosi float %4077 to i32
  %4079 = bitcast i32 %4078 to float
  %4080 = bitcast float %4072 to i32
  %4081 = sitofp i32 %4080 to float
  %4082 = fadd fast float %4081, 0xC1CFBF8940000000
  %4083 = fmul fast float %4082, %4070
  %4084 = fadd fast float %4083, 0x41CFBF8940000000
  %4085 = fptosi float %4084 to i32
  %4086 = bitcast i32 %4085 to float
  %4087 = fmul fast float %4079, %4069
  %4088 = fmul fast float %4086, %4069
  %4089 = fsub fast float %4072, %4087
  %4090 = fadd fast float %4088, %4072
  %4091 = call float @dx.op.unary.f32(i32 7, float %4089)  ; Saturate(value)
  %4092 = call float @dx.op.unary.f32(i32 7, float %4090)  ; Saturate(value)
  %4093 = fsub fast float %4067, %4091
  %4094 = fsub fast float %4092, %4091
  %4095 = bitcast float %4094 to i32
  %4096 = sub nsw i32 2129859010, %4095
  %4097 = bitcast i32 %4096 to float
  %4098 = fmul fast float %4097, %4093
  %4099 = call float @dx.op.unary.f32(i32 7, float %4098)  ; Saturate(value)
  %4100 = fcmp fast olt float %4099, 0x3F70101020000000
  br i1 %4100, label %4239, label %4101

; <label>:4101                                    ; preds = %4063, %3966
  %4102 = phi float [ %4099, %4063 ], [ %3676, %3966 ]
  %4103 = fmul fast float %4102, %3969
  %4104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4105 = extractvalue %dx.types.CBufRet.i32 %4104, 1
  %4106 = extractvalue %dx.types.CBufRet.i32 %4104, 0
  %4107 = add i32 %4106, 0
  %4108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4107, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4109 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4108, %dx.types.Handle %66, float %4058, float %4059, float undef, float undef, i32 0, i32 0, i32 undef, float %4021, float %4022, float undef, float %4025, float %4026, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4110 = extractvalue %dx.types.ResRet.f32 %4109, 0
  %4111 = extractvalue %dx.types.ResRet.f32 %4109, 1
  %4112 = extractvalue %dx.types.ResRet.f32 %4109, 2
  %4113 = extractvalue %dx.types.ResRet.f32 %4109, 3
  %4114 = and i32 %4105, 255
  %4115 = uitofp i32 %4114 to float
  %4116 = lshr i32 %4105, 8
  %4117 = and i32 %4116, 255
  %4118 = uitofp i32 %4117 to float
  %4119 = fmul fast float %4113, %4115
  %4120 = fadd fast float %4119, %4118
  %4121 = fmul fast float %4120, 0x3F70101000000000
  %4122 = fadd fast float %4121, 0xBFB99999A0000000
  %4123 = call float @dx.op.unary.f32(i32 7, float %4122)  ; Saturate(value)
  %4124 = fmul fast float %4123, 0x3FF1C71C80000000
  %4125 = call float @dx.op.binary.f32(i32 36, float %4121, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4126 = fsub fast float 1.000000e+00, %4124
  %4127 = call float @dx.op.unary.f32(i32 7, float %4126)  ; Saturate(value)
  %4128 = fmul fast float %4127, %4110
  %4129 = fmul fast float %4127, %4111
  %4130 = fmul fast float %4127, %4112
  %4131 = call float @dx.op.unary.f32(i32 7, float %4128)  ; Saturate(value)
  %4132 = call float @dx.op.unary.f32(i32 7, float %4129)  ; Saturate(value)
  %4133 = call float @dx.op.unary.f32(i32 7, float %4130)  ; Saturate(value)
  %4134 = fmul fast float %4124, %4110
  %4135 = fmul fast float %4124, %4111
  %4136 = fmul fast float %4124, %4112
  %4137 = fadd fast float %4134, %4125
  %4138 = fadd fast float %4135, %4125
  %4139 = fadd fast float %4136, %4125
  %4140 = call float @dx.op.unary.f32(i32 7, float %4137)  ; Saturate(value)
  %4141 = call float @dx.op.unary.f32(i32 7, float %4138)  ; Saturate(value)
  %4142 = call float @dx.op.unary.f32(i32 7, float %4139)  ; Saturate(value)
  %4143 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4144 = extractvalue %dx.types.CBufRet.i32 %4143, 3
  %4145 = extractvalue %dx.types.CBufRet.i32 %4143, 2
  %4146 = add i32 %4145, 0
  %4147 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4146, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4148 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4147, %dx.types.Handle %66, float %4058, float %4059, float undef, float undef, i32 0, i32 0, i32 undef, float %4021, float %4022, float undef, float %4025, float %4026, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4149 = extractvalue %dx.types.ResRet.f32 %4148, 0
  %4150 = extractvalue %dx.types.ResRet.f32 %4148, 1
  %4151 = extractvalue %dx.types.ResRet.f32 %4148, 2
  %4152 = extractvalue %dx.types.ResRet.f32 %4148, 3
  %4153 = and i32 %4144, 255
  %4154 = uitofp i32 %4153 to float
  %4155 = lshr i32 %4144, 8
  %4156 = and i32 %4155, 255
  %4157 = uitofp i32 %4156 to float
  %4158 = lshr i32 %4144, 16
  %4159 = and i32 %4158, 255
  %4160 = uitofp i32 %4159 to float
  %4161 = fmul fast float %4160, 0x3F70101000000000
  %4162 = fmul fast float %4149, %4154
  %4163 = fadd fast float %4162, %4157
  %4164 = fmul fast float %4163, 0x3F70101000000000
  %4165 = fadd fast float %4150, -5.000000e-01
  %4166 = fadd fast float %4152, -5.000000e-01
  %4167 = fmul fast float %4165, %4161
  %4168 = fmul fast float %4166, %4161
  %4169 = fadd fast float %4167, 5.000000e-01
  %4170 = fadd fast float %4168, 5.000000e-01
  %4171 = fmul fast float %4169, 2.000000e+00
  %4172 = fadd fast float %4171, -1.000000e+00
  %4173 = fmul fast float %4170, 2.000000e+00
  %4174 = fadd fast float %4173, -1.000000e+00
  %4175 = fadd fast float %4172, %4174
  %4176 = fmul fast float %4175, 5.000000e-01
  %4177 = fsub fast float %4172, %4174
  %4178 = fmul fast float %4177, 5.000000e-01
  %4179 = call float @dx.op.unary.f32(i32 6, float %4176)  ; FAbs(value)
  %4180 = fsub fast float 1.000000e+00, %4179
  %4181 = call float @dx.op.unary.f32(i32 6, float %4178)  ; FAbs(value)
  %4182 = fsub fast float %4180, %4181
  %4183 = call float @dx.op.dot3.f32(i32 55, float %4176, float %4178, float %4182, float %4176, float %4178, float %4182)  ; Dot3(ax,ay,az,bx,by,bz)
  %4184 = call float @dx.op.unary.f32(i32 25, float %4183)  ; Rsqrt(value)
  %4185 = fmul fast float %4176, %4184
  %4186 = fmul fast float %4178, %4184
  %4187 = select i1 %4014, i32 %4004, i32 %4005
  %4188 = select i1 %4012, i32 %4003, i32 %4187
  %4189 = sitofp i32 %4188 to float
  %4190 = fmul fast float %4182, %4189
  %4191 = fmul fast float %4190, %4184
  %4192 = select i1 %4014, float %4191, float %4186
  %4193 = select i1 %4014, float %4186, float %4191
  %4194 = select i1 %4012, float %4191, float %4185
  %4195 = select i1 %4012, float %4186, float %4192
  %4196 = select i1 %4012, float %4185, float %4193
  %4197 = fsub fast float %4131, %3955
  %4198 = fsub fast float %4132, %3956
  %4199 = fsub fast float %4133, %3957
  %4200 = fmul fast float %4197, %4103
  %4201 = fmul fast float %4198, %4103
  %4202 = fmul fast float %4199, %4103
  %4203 = fadd fast float %4200, %3955
  %4204 = fadd fast float %4201, %3956
  %4205 = fadd fast float %4202, %3957
  %4206 = fsub fast float %4140, %3961
  %4207 = fsub fast float %4141, %3962
  %4208 = fsub fast float %4142, %3963
  %4209 = fmul fast float %4206, %4103
  %4210 = fmul fast float %4207, %4103
  %4211 = fmul fast float %4208, %4103
  %4212 = fadd fast float %4209, %3961
  %4213 = fadd fast float %4210, %3962
  %4214 = fadd fast float %4211, %3963
  %4215 = fadd fast float %4194, %3958
  %4216 = fadd fast float %4195, %3959
  %4217 = fadd fast float %4196, %3960
  %4218 = call float @dx.op.dot3.f32(i32 55, float %4215, float %4216, float %4217, float %4215, float %4216, float %4217)  ; Dot3(ax,ay,az,bx,by,bz)
  %4219 = call float @dx.op.unary.f32(i32 25, float %4218)  ; Rsqrt(value)
  %4220 = fmul fast float %4215, %4219
  %4221 = fmul fast float %4216, %4219
  %4222 = fmul fast float %4217, %4219
  %4223 = fsub fast float %4220, %3958
  %4224 = fsub fast float %4221, %3959
  %4225 = fsub fast float %4222, %3960
  %4226 = fmul fast float %4223, %4103
  %4227 = fmul fast float %4224, %4103
  %4228 = fmul fast float %4225, %4103
  %4229 = fadd fast float %4226, %3958
  %4230 = fadd fast float %4227, %3959
  %4231 = fadd fast float %4228, %3960
  %4232 = call float @dx.op.binary.f32(i32 36, float %3965, float %4151)  ; FMin(a,b)
  %4233 = fsub fast float %4232, %3965
  %4234 = fmul fast float %4233, %4103
  %4235 = fadd fast float %4234, %3965
  %4236 = fsub fast float %4164, %3964
  %4237 = fmul fast float %4236, %4103
  %4238 = fadd fast float %4237, %3964
  br label %4239

; <label>:4239                                    ; preds = %4101, %4063, %3954, %3670
  %4240 = phi float [ %4203, %4101 ], [ %3955, %4063 ], [ %3955, %3954 ], [ %3196, %3670 ]
  %4241 = phi float [ %4204, %4101 ], [ %3956, %4063 ], [ %3956, %3954 ], [ %3197, %3670 ]
  %4242 = phi float [ %4205, %4101 ], [ %3957, %4063 ], [ %3957, %3954 ], [ %3198, %3670 ]
  %4243 = phi float [ %4229, %4101 ], [ %3958, %4063 ], [ %3958, %3954 ], [ %3160, %3670 ]
  %4244 = phi float [ %4230, %4101 ], [ %3959, %4063 ], [ %3959, %3954 ], [ %3161, %3670 ]
  %4245 = phi float [ %4231, %4101 ], [ %3960, %4063 ], [ %3960, %3954 ], [ %3162, %3670 ]
  %4246 = phi float [ %4212, %4101 ], [ %3961, %4063 ], [ %3961, %3954 ], [ %3181, %3670 ]
  %4247 = phi float [ %4213, %4101 ], [ %3962, %4063 ], [ %3962, %3954 ], [ %3182, %3670 ]
  %4248 = phi float [ %4214, %4101 ], [ %3963, %4063 ], [ %3963, %3954 ], [ %3183, %3670 ]
  %4249 = phi float [ %4238, %4101 ], [ %3964, %4063 ], [ %3964, %3954 ], [ %3265, %3670 ]
  %4250 = phi float [ %4235, %4101 ], [ %3965, %4063 ], [ %3965, %3954 ], [ %3131, %3670 ]
  %4251 = fcmp fast une float %3674, 0.000000e+00
  %4252 = call float @dx.op.dot3.f32(i32 55, float %157, float %158, float %159, float %157, float %158, float %159)  ; Dot3(ax,ay,az,bx,by,bz)
  %4253 = call float @dx.op.unary.f32(i32 25, float %4252)  ; Rsqrt(value)
  br i1 %4251, label %4261, label %4254

; <label>:4254                                    ; preds = %4239
  %4255 = fmul fast float %4253, %157
  %4256 = fmul fast float %4253, %158
  %4257 = fmul fast float %4253, %159
  %4258 = fsub fast float -0.000000e+00, %4255
  %4259 = fsub fast float -0.000000e+00, %4256
  %4260 = fsub fast float -0.000000e+00, %4257
  br label %4428

; <label>:4261                                    ; preds = %4239
  %4262 = fmul fast float %157, %4253
  %4263 = fsub fast float -0.000000e+00, %4262
  %4264 = fmul fast float %158, %4253
  %4265 = fsub fast float -0.000000e+00, %4264
  %4266 = fmul fast float %159, %4253
  %4267 = fsub fast float -0.000000e+00, %4266
  %4268 = call float @dx.op.dot3.f32(i32 55, float %4263, float %4265, float %4267, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %4269 = fmul fast float %3674, 2.500000e+00
  %4270 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  %4271 = fmul fast float %3674, 0x4013FFFFE0000000
  %4272 = fadd fast float %4271, 0xBFFFFFFFE0000000
  %4273 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4274 = fmul fast float %3674, 0x4004000020000000
  %4275 = fadd fast float %4274, 0xBFF8000040000000
  %4276 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4277 = fmul fast float %3163, 1.000000e+01
  %4278 = call float @dx.op.unary.f32(i32 7, float %4277)  ; Saturate(value)
  %4279 = fmul fast float %4278, 2.000000e+00
  %4280 = fsub fast float 3.000000e+00, %4279
  %4281 = fmul fast float %4278, %4278
  %4282 = fmul fast float %4281, %4280
  %4283 = fsub fast float 1.000000e+00, %4282
  %4284 = fsub fast float 0x3FE3333340000000, %4249
  %4285 = fmul fast float %4284, 0x400AAAAAA0000000
  %4286 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  %4287 = fmul fast float %4283, %4286
  %4288 = fmul fast float %4240, 0x3FEA2B8620000000
  %4289 = fmul fast float %4241, 0x3FEA2B8620000000
  %4290 = fmul fast float %4242, 0x3FEA2B8620000000
  %4291 = fadd fast float %4288, 0x3FC81DFBA0000000
  %4292 = fmul fast float %4291, %4240
  %4293 = fadd fast float %4292, 0x3F910E6020000000
  %4294 = fadd fast float %4289, 0x3FC81DFBA0000000
  %4295 = fmul fast float %4294, %4241
  %4296 = fadd fast float %4295, 0x3F910E6020000000
  %4297 = fadd fast float %4290, 0x3FC81DFBA0000000
  %4298 = fmul fast float %4297, %4242
  %4299 = fadd fast float %4298, 0x3F910E6020000000
  %4300 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4301 = call float @dx.op.unary.f32(i32 7, float %4296)  ; Saturate(value)
  %4302 = call float @dx.op.unary.f32(i32 7, float %4299)  ; Saturate(value)
  %4303 = fsub fast float %4300, %4240
  %4304 = fsub fast float %4301, %4241
  %4305 = fsub fast float %4302, %4242
  %4306 = fmul fast float %4303, %4270
  %4307 = fmul fast float %4306, %4287
  %4308 = fmul fast float %4304, %4270
  %4309 = fmul fast float %4308, %4287
  %4310 = fmul fast float %4305, %4270
  %4311 = fmul fast float %4310, %4287
  %4312 = fadd fast float %4307, %4240
  %4313 = fadd fast float %4309, %4241
  %4314 = fadd fast float %4311, %4242
  %4315 = fmul fast float %4250, %4250
  %4316 = fmul fast float %4315, %4315
  %4317 = fadd fast float %4273, 1.000000e+00
  %4318 = fsub fast float %4317, %4287
  %4319 = call float @dx.op.unary.f32(i32 7, float %4318)  ; Saturate(value)
  %4320 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4321 = call float @dx.op.unary.f32(i32 7, float %4320)  ; Saturate(value)
  %4322 = fsub fast float 1.000000e+00, %4316
  %4323 = call float @dx.op.binary.f32(i32 36, float %4319, float %4322)  ; FMin(a,b)
  %4324 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4325 = call float @dx.op.binary.f32(i32 35, float %4323, float %4324)  ; FMax(a,b)
  %4326 = fadd fast float %4321, 0xBFE4CCCCC0000000
  %4327 = fmul fast float %4326, 0x4006DB6DA0000000
  %4328 = call float @dx.op.unary.f32(i32 7, float %4327)  ; Saturate(value)
  %4329 = fmul fast float %4328, 2.000000e+00
  %4330 = fsub fast float 3.000000e+00, %4329
  %4331 = bitcast float %4246 to i32
  %4332 = ashr i32 %4331, 1
  %4333 = add nsw i32 %4332, 532487669
  %4334 = bitcast i32 %4333 to float
  %4335 = fsub fast float 1.000000e+00, %4334
  %4336 = bitcast float %4335 to i32
  %4337 = sub nsw i32 2129859010, %4336
  %4338 = bitcast i32 %4337 to float
  %4339 = fmul fast float %4338, 2.000000e+00
  %4340 = bitcast float %4247 to i32
  %4341 = ashr i32 %4340, 1
  %4342 = add nsw i32 %4341, 532487669
  %4343 = bitcast i32 %4342 to float
  %4344 = fsub fast float 1.000000e+00, %4343
  %4345 = bitcast float %4344 to i32
  %4346 = sub nsw i32 2129859010, %4345
  %4347 = bitcast i32 %4346 to float
  %4348 = fmul fast float %4347, 2.000000e+00
  %4349 = bitcast float %4248 to i32
  %4350 = ashr i32 %4349, 1
  %4351 = add nsw i32 %4350, 532487669
  %4352 = bitcast i32 %4351 to float
  %4353 = fsub fast float 1.000000e+00, %4352
  %4354 = bitcast float %4353 to i32
  %4355 = sub nsw i32 2129859010, %4354
  %4356 = bitcast i32 %4355 to float
  %4357 = fmul fast float %4356, 2.000000e+00
  %4358 = fsub fast float 0x4002A9FBE0000000, %4339
  %4359 = fadd fast float %4339, 0x3FD54FDF00000000
  %4360 = bitcast float %4359 to i32
  %4361 = sub nsw i32 2129859010, %4360
  %4362 = bitcast i32 %4361 to float
  %4363 = fmul fast float %4362, %4358
  %4364 = fmul fast float %4363, %4363
  %4365 = fsub fast float 0x4002A9FBE0000000, %4348
  %4366 = fadd fast float %4348, 0x3FD54FDF00000000
  %4367 = bitcast float %4366 to i32
  %4368 = sub nsw i32 2129859010, %4367
  %4369 = bitcast i32 %4368 to float
  %4370 = fmul fast float %4369, %4365
  %4371 = fmul fast float %4370, %4370
  %4372 = fsub fast float 0x4002A9FBE0000000, %4357
  %4373 = fadd fast float %4357, 0x3FD54FDF00000000
  %4374 = bitcast float %4373 to i32
  %4375 = sub nsw i32 2129859010, %4374
  %4376 = bitcast i32 %4375 to float
  %4377 = fmul fast float %4376, %4372
  %4378 = fmul fast float %4377, %4377
  %4379 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4364)  ; FMax(a,b)
  %4380 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4371)  ; FMax(a,b)
  %4381 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4378)  ; FMax(a,b)
  %4382 = fsub fast float 1.000000e+00, %4268
  %4383 = fadd fast float %4382, %4283
  %4384 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4385 = fsub fast float 1.000000e+00, %3655
  %4386 = fmul fast float %4325, %4385
  %4387 = fmul fast float %4328, %4328
  %4388 = fmul fast float %4387, %4386
  %4389 = fmul fast float %4388, %4330
  %4390 = fmul fast float %4385, 0xBFE99999A0000000
  %4391 = fmul fast float %4390, %4270
  %4392 = fmul fast float %4391, %4287
  %4393 = fadd fast float %4392, 1.000000e+00
  %4394 = fadd fast float %4249, -1.000000e+00
  %4395 = fmul fast float %4393, %4394
  %4396 = fadd fast float %4395, 1.000000e+00
  %4397 = fsub fast float %4379, %4246
  %4398 = fsub fast float %4380, %4247
  %4399 = fsub fast float %4381, %4248
  %4400 = fmul fast float %4389, %4397
  %4401 = fmul fast float %4389, %4398
  %4402 = fmul fast float %4389, %4399
  %4403 = fadd fast float %4400, %4246
  %4404 = fadd fast float %4401, %4247
  %4405 = fadd fast float %4402, %4248
  %4406 = fsub fast float %77, %4243
  %4407 = fsub fast float %78, %4244
  %4408 = fsub fast float %79, %4245
  %4409 = fmul fast float %4389, %4406
  %4410 = fmul fast float %4389, %4407
  %4411 = fmul fast float %4389, %4408
  %4412 = fadd fast float %4409, %4243
  %4413 = fadd fast float %4410, %4244
  %4414 = fadd fast float %4411, %4245
  %4415 = fmul fast float %4389, %4384
  %4416 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4417 = fsub fast float 1.000000e+00, %4416
  %4418 = fmul fast float %4415, %4417
  %4419 = fadd fast float %4418, %4416
  %4420 = fsub fast float 1.000000e+00, %4250
  %4421 = fmul fast float %4389, %4420
  %4422 = fadd fast float %4421, %4250
  %4423 = call float @dx.op.dot3.f32(i32 55, float %4412, float %4413, float %4414, float %4412, float %4413, float %4414)  ; Dot3(ax,ay,az,bx,by,bz)
  %4424 = call float @dx.op.unary.f32(i32 25, float %4423)  ; Rsqrt(value)
  %4425 = fmul fast float %4412, %4424
  %4426 = fmul fast float %4413, %4424
  %4427 = fmul fast float %4414, %4424
  br label %4428

; <label>:4428                                    ; preds = %4261, %4254
  %4429 = phi float [ %4260, %4254 ], [ %4267, %4261 ]
  %4430 = phi float [ %4259, %4254 ], [ %4265, %4261 ]
  %4431 = phi float [ %4258, %4254 ], [ %4263, %4261 ]
  %4432 = phi float [ %4257, %4254 ], [ %4266, %4261 ]
  %4433 = phi float [ %4256, %4254 ], [ %4264, %4261 ]
  %4434 = phi float [ %4255, %4254 ], [ %4262, %4261 ]
  %4435 = phi float [ %4240, %4254 ], [ %4312, %4261 ]
  %4436 = phi float [ %4241, %4254 ], [ %4313, %4261 ]
  %4437 = phi float [ %4242, %4254 ], [ %4314, %4261 ]
  %4438 = phi float [ %4243, %4254 ], [ %4425, %4261 ]
  %4439 = phi float [ %4244, %4254 ], [ %4426, %4261 ]
  %4440 = phi float [ %4245, %4254 ], [ %4427, %4261 ]
  %4441 = phi float [ %4246, %4254 ], [ %4403, %4261 ]
  %4442 = phi float [ %4247, %4254 ], [ %4404, %4261 ]
  %4443 = phi float [ %4248, %4254 ], [ %4405, %4261 ]
  %4444 = phi float [ %4249, %4254 ], [ %4419, %4261 ]
  %4445 = phi float [ %4250, %4254 ], [ %4422, %4261 ]
  %4446 = select i1 %196, float 0.000000e+00, float %4443
  %4447 = call float @dx.op.dot3.f32(i32 55, float %4438, float %4439, float %4440, float %4431, float %4430, float %4429)  ; Dot3(ax,ay,az,bx,by,bz)
  %4448 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4449 = fmul fast float %4433, %3249
  %4450 = fmul fast float %4432, %3248
  %4451 = fsub fast float %4449, %4450
  %4452 = fmul fast float %4432, %3247
  %4453 = fmul fast float %4434, %3249
  %4454 = fsub fast float %4452, %4453
  %4455 = fmul fast float %4434, %3248
  %4456 = fmul fast float %4433, %3247
  %4457 = fsub fast float %4455, %4456
  %4458 = fmul fast float %4454, %3249
  %4459 = fmul fast float %4457, %3248
  %4460 = fmul fast float %4457, %3247
  %4461 = fmul fast float %4451, %3249
  %4462 = fmul fast float %4451, %3248
  %4463 = fmul fast float %4454, %3247
  %4464 = fsub fast float -0.000000e+00, %4438
  %4465 = fsub fast float %4464, %4459
  %4466 = fadd fast float %4465, %4458
  %4467 = fsub fast float -0.000000e+00, %4439
  %4468 = fsub fast float %4467, %4461
  %4469 = fadd fast float %4468, %4460
  %4470 = fsub fast float -0.000000e+00, %4440
  %4471 = fsub fast float %4470, %4463
  %4472 = fadd fast float %4471, %4462
  %4473 = fmul fast float %4466, %3232
  %4474 = fmul fast float %4469, %3232
  %4475 = fmul fast float %4472, %3232
  %4476 = fadd fast float %4473, %4438
  %4477 = fadd fast float %4474, %4439
  %4478 = fadd fast float %4475, %4440
  %4479 = call float @dx.op.dot3.f32(i32 55, float %4476, float %4477, float %4478, float %4476, float %4477, float %4478)  ; Dot3(ax,ay,az,bx,by,bz)
  %4480 = call float @dx.op.unary.f32(i32 25, float %4479)  ; Rsqrt(value)
  %4481 = fmul fast float %4476, %4480
  %4482 = fmul fast float %4477, %4480
  %4483 = fmul fast float %4478, %4480
  %4484 = call float @dx.op.dot3.f32(i32 55, float %4434, float %4433, float %4432, float %4481, float %4482, float %4483)  ; Dot3(ax,ay,az,bx,by,bz)
  %4485 = fmul fast float %4484, 2.000000e+00
  %4486 = fmul fast float %4481, %4485
  %4487 = fmul fast float %4482, %4485
  %4488 = fmul fast float %4483, %4485
  %4489 = fsub fast float %4434, %4486
  %4490 = fsub fast float %4433, %4487
  %4491 = fsub fast float %4432, %4488
  %4492 = call float @dx.op.binary.f32(i32 36, float %4445, float 1.000000e+00)  ; FMin(a,b)
  %4493 = fsub fast float 1.000000e+00, %4445
  %4494 = bitcast float %4493 to i32
  %4495 = sub nsw i32 2129859010, %4494
  %4496 = fsub fast float 1.000000e+00, %47
  %4497 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %4498 = call float @dx.op.binary.f32(i32 35, float %4497, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4499 = fdiv fast float %4496, %4498
  %4500 = call float @dx.op.dot3.f32(i32 55, float %4438, float %4439, float %4440, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %4501 = call float @dx.op.unary.f32(i32 7, float %4500)  ; Saturate(value)
  %4502 = fmul fast float %4501, 5.000000e-01
  %4503 = fadd fast float %4502, 5.000000e-01
  %4504 = fmul fast float %4503, %47
  %4505 = call float @dx.op.dot3.f32(i32 55, float %4438, float %4439, float %4440, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %4506 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4507 = fmul fast float %4506, %4499
  %4508 = fadd fast float %4504, %4507
  %4509 = fsub fast float 5.000000e-01, %4502
  %4510 = fmul fast float %4509, %4435
  %4511 = fmul fast float %4509, %4436
  %4512 = fmul fast float %4509, %4437
  %4513 = fadd fast float %4508, %4510
  %4514 = fadd fast float %4508, %4511
  %4515 = fadd fast float %4508, %4512
  %4516 = call float @dx.op.dot3.f32(i32 55, float %4489, float %4490, float %4491, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %4517 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4518 = fmul fast float %4517, 5.000000e-01
  %4519 = fadd fast float %4518, 5.000000e-01
  %4520 = fmul fast float %4519, %47
  %4521 = call float @dx.op.dot3.f32(i32 55, float %4489, float %4490, float %4491, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %4522 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4523 = fmul fast float %4522, %4499
  %4524 = fadd fast float %4520, %4523
  %4525 = fsub fast float 5.000000e-01, %4518
  %4526 = fmul fast float %4525, %4435
  %4527 = fmul fast float %4525, %4436
  %4528 = fmul fast float %4525, %4437
  %4529 = fadd fast float %4524, %4526
  %4530 = fadd fast float %4524, %4527
  %4531 = fadd fast float %4524, %4528
  %4532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4533 = extractvalue %dx.types.CBufRet.f32 %4532, 0
  %4534 = call float @dx.op.binary.f32(i32 36, float %4435, float %4533)  ; FMin(a,b)
  %4535 = fsub fast float 1.000000e+00, %4492
  %4536 = fmul fast float %4534, %4535
  %4537 = fsub fast float 1.000000e+00, %4536
  %4538 = bitcast float %4537 to i32
  %4539 = sub nsw i32 2129859010, %4538
  %4540 = bitcast i32 %4539 to float
  %4541 = call float @dx.op.binary.f32(i32 36, float %4436, float %4533)  ; FMin(a,b)
  %4542 = fmul fast float %4541, %4535
  %4543 = fsub fast float 1.000000e+00, %4542
  %4544 = bitcast float %4543 to i32
  %4545 = sub nsw i32 2129859010, %4544
  %4546 = bitcast i32 %4545 to float
  %4547 = call float @dx.op.binary.f32(i32 36, float %4437, float %4533)  ; FMin(a,b)
  %4548 = fmul fast float %4547, %4535
  %4549 = fsub fast float 1.000000e+00, %4548
  %4550 = bitcast float %4549 to i32
  %4551 = sub nsw i32 2129859010, %4550
  %4552 = bitcast i32 %4551 to float
  %4553 = fmul fast float %4492, %48
  %4554 = fmul fast float %4553, %4513
  %4555 = fmul fast float %4554, %4540
  %4556 = fmul fast float %4492, %49
  %4557 = fmul fast float %4556, %4514
  %4558 = fmul fast float %4557, %4546
  %4559 = fmul fast float %4492, %50
  %4560 = fmul fast float %4559, %4515
  %4561 = fmul fast float %4560, %4552
  %4562 = call float @dx.op.binary.f32(i32 36, float %4441, float %4533)  ; FMin(a,b)
  %4563 = fmul fast float %4562, %4535
  %4564 = fsub fast float 1.000000e+00, %4563
  %4565 = bitcast float %4564 to i32
  %4566 = sub nsw i32 2129859010, %4565
  %4567 = bitcast i32 %4566 to float
  %4568 = call float @dx.op.binary.f32(i32 36, float %4442, float %4533)  ; FMin(a,b)
  %4569 = fmul fast float %4568, %4535
  %4570 = fsub fast float 1.000000e+00, %4569
  %4571 = bitcast float %4570 to i32
  %4572 = sub nsw i32 2129859010, %4571
  %4573 = bitcast i32 %4572 to float
  %4574 = call float @dx.op.binary.f32(i32 36, float %4446, float %4533)  ; FMin(a,b)
  %4575 = fmul fast float %4574, %4535
  %4576 = fsub fast float 1.000000e+00, %4575
  %4577 = bitcast float %4576 to i32
  %4578 = sub nsw i32 2129859010, %4577
  %4579 = bitcast i32 %4578 to float
  %4580 = fmul fast float %4553, %4529
  %4581 = fmul fast float %4580, %4567
  %4582 = fmul fast float %4556, %4530
  %4583 = fmul fast float %4582, %4573
  %4584 = fmul fast float %4559, %4531
  %4585 = fmul fast float %4584, %4579
  %4586 = call float @dx.op.dot3.f32(i32 55, float %4555, float %4558, float %4561, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4587 = select i1 %196, float 0.000000e+00, float %4555
  %4588 = select i1 %196, float %4586, float %4558
  %4589 = select i1 %196, float 0.000000e+00, float %4561
  %4590 = call float @dx.op.dot3.f32(i32 55, float %4581, float %4583, float %4585, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4591 = select i1 %196, float 0.000000e+00, float %4581
  %4592 = select i1 %196, float %4590, float %4583
  %4593 = select i1 %196, float 0.000000e+00, float %4585
  %4594 = fmul fast float %4448, 9.843750e-01
  %4595 = fmul fast float %4444, 9.843750e-01
  %4596 = fadd fast float %4594, 7.812500e-03
  %4597 = fadd fast float %4595, 7.812500e-03
  %4598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %4596, float %4597, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4599 = extractvalue %dx.types.ResRet.f32 %4598, 2
  %4600 = extractvalue %dx.types.ResRet.f32 %4598, 3
  %4601 = fmul fast float %4599, %4441
  %4602 = fmul fast float %4599, %4442
  %4603 = fmul fast float %4599, %4446
  %4604 = fadd fast float %4601, %4600
  %4605 = fadd fast float %4602, %4600
  %4606 = fadd fast float %4603, %4600
  %4607 = call float @dx.op.binary.f32(i32 35, float %4605, float %4606)  ; FMax(a,b)
  %4608 = call float @dx.op.binary.f32(i32 35, float %4604, float %4607)  ; FMax(a,b)
  %4609 = fsub fast float 1.000000e+00, %4608
  %4610 = fmul fast float %4609, %4587
  %4611 = fmul fast float %4609, %4588
  %4612 = fmul fast float %4609, %4589
  %4613 = fmul fast float %4604, %4591
  %4614 = fmul fast float %4605, %4592
  %4615 = fmul fast float %4606, %4593
  %4616 = fmul fast float %4610, %912
  %4617 = fmul fast float %4611, %912
  %4618 = fmul fast float %4612, %912
  %4619 = fadd fast float %4613, %3126
  %4620 = fmul fast float %4619, %912
  %4621 = fadd fast float %4614, %3127
  %4622 = fmul fast float %4621, %912
  %4623 = fadd fast float %4615, %3128
  %4624 = fmul fast float %4623, %912
  %4625 = bitcast i32 %4495 to float
  %4626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4627 = extractvalue %dx.types.CBufRet.f32 %4626, 3
  %4628 = fcmp fast oeq float %4627, 0.000000e+00
  br i1 %4628, label %4836, label %4629

; <label>:4629                                    ; preds = %4428
  %4630 = extractvalue %dx.types.CBufRet.f32 %4626, 0
  %4631 = extractvalue %dx.types.CBufRet.f32 %4626, 1
  %4632 = extractvalue %dx.types.CBufRet.f32 %4626, 2
  %4633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4634 = extractvalue %dx.types.CBufRet.f32 %4633, 0
  %4635 = extractvalue %dx.types.CBufRet.f32 %4633, 1
  %4636 = extractvalue %dx.types.CBufRet.f32 %4633, 2
  %4637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4638 = extractvalue %dx.types.CBufRet.f32 %4637, 0
  %4639 = extractvalue %dx.types.CBufRet.f32 %4637, 1
  %4640 = call float @dx.op.dot3.f32(i32 55, float %4634, float %4635, float %4636, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4641 = select i1 %196, float %4638, float %4634
  %4642 = select i1 %196, float %4640, float %4635
  %4643 = select i1 %196, float %4639, float %4636
  %4644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4645 = extractvalue %dx.types.CBufRet.f32 %4644, 1
  %4646 = fcmp fast une float %4645, 0.000000e+00
  br i1 %4646, label %4647, label %4664

; <label>:4647                                    ; preds = %4629
  %4648 = fptoui float %70 to i32
  %4649 = fptoui float %71 to i32
  %4650 = lshr i32 %4648, 4
  %4651 = lshr i32 %4649, 4
  %4652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4653 = extractvalue %dx.types.CBufRet.f32 %4652, 0
  %4654 = fptoui float %4653 to i32
  %4655 = add i32 %4654, 15
  %4656 = lshr i32 %4655, 4
  %4657 = mul i32 %4656, %4651
  %4658 = add i32 %4657, %4650
  %4659 = shl i32 %4658, 3
  %4660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4659, i32 undef)  ; BufferLoad(srv,index,wot)
  %4661 = extractvalue %dx.types.ResRet.i32 %4660, 0
  %4662 = and i32 %4661, -268435456
  %4663 = icmp eq i32 %4662, -1342177280
  br i1 %4663, label %4674, label %4664

; <label>:4664                                    ; preds = %4647, %4629
  %4665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4666 = extractvalue %dx.types.CBufRet.f32 %4665, 2
  %4667 = extractvalue %dx.types.CBufRet.f32 %4665, 3
  %4668 = fmul fast float %4666, %70
  %4669 = fmul fast float %4667, %71
  %4670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %24, float %4668, float %4669, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4671 = extractvalue %dx.types.ResRet.f32 %4670, 0
  %4672 = extractvalue %dx.types.ResRet.f32 %4670, 1
  %4673 = extractvalue %dx.types.ResRet.f32 %4670, 2
  br label %4674

; <label>:4674                                    ; preds = %4664, %4647
  %4675 = phi float [ %4671, %4664 ], [ 0.000000e+00, %4647 ]
  %4676 = phi float [ %4672, %4664 ], [ 0.000000e+00, %4647 ]
  %4677 = phi float [ %4673, %4664 ], [ 0.000000e+00, %4647 ]
  %4678 = call float @dx.op.binary.f32(i32 36, float %4676, float %4677)  ; FMin(a,b)
  %4679 = call float @dx.op.binary.f32(i32 36, float %4675, float %4678)  ; FMin(a,b)
  %4680 = fcmp fast ogt float %4679, 0.000000e+00
  br i1 %4680, label %4681, label %4836, !dx.controlflow.hints !68

; <label>:4681                                    ; preds = %4674
  %4682 = fmul fast float %4675, %4641
  %4683 = fmul fast float %4676, %4642
  %4684 = fmul fast float %4677, %4643
  %4685 = fsub fast float %4630, %4434
  %4686 = fsub fast float %4631, %4433
  %4687 = fsub fast float %4632, %4432
  %4688 = call float @dx.op.dot3.f32(i32 55, float %4685, float %4686, float %4687, float %4685, float %4686, float %4687)  ; Dot3(ax,ay,az,bx,by,bz)
  %4689 = call float @dx.op.unary.f32(i32 25, float %4688)  ; Rsqrt(value)
  %4690 = fmul fast float %4689, %4685
  %4691 = fmul fast float %4689, %4686
  %4692 = fmul fast float %4689, %4687
  %4693 = call float @dx.op.dot3.f32(i32 55, float %4630, float %4631, float %4632, float %4438, float %4439, float %4440)  ; Dot3(ax,ay,az,bx,by,bz)
  %4694 = call float @dx.op.dot3.f32(i32 55, float %4431, float %4430, float %4429, float %4690, float %4691, float %4692)  ; Dot3(ax,ay,az,bx,by,bz)
  %4695 = call float @dx.op.unary.f32(i32 7, float %4693)  ; Saturate(value)
  %4696 = fmul fast float %4695, %4695
  %4697 = fmul fast float %4696, %4625
  %4698 = call float @dx.op.unary.f32(i32 7, float %4697)  ; Saturate(value)
  %4699 = fmul fast float %4698, %4695
  %4700 = call float @dx.op.dot3.f32(i32 55, float %4438, float %4439, float %4440, float %4690, float %4691, float %4692)  ; Dot3(ax,ay,az,bx,by,bz)
  %4701 = fmul fast float %4700, %4700
  %4702 = call float @dx.op.unary.f32(i32 6, float %4693)  ; FAbs(value)
  %4703 = fsub fast float 1.000000e+00, %4444
  %4704 = call float @dx.op.binary.f32(i32 35, float %4703, float 0x3F847AE140000000)  ; FMax(a,b)
  %4705 = fmul fast float %4704, %4704
  %4706 = fmul fast float %4705, %4705
  %4707 = fsub fast float 1.000000e+00, %4706
  %4708 = fmul fast float %4448, %4448
  %4709 = fmul fast float %4708, %4707
  %4710 = fadd fast float %4709, %4706
  %4711 = bitcast float %4710 to i32
  %4712 = ashr i32 %4711, 1
  %4713 = add nsw i32 %4712, 532487669
  %4714 = bitcast i32 %4713 to float
  %4715 = fadd fast float %4714, %4448
  %4716 = call float @dx.op.dot3.f32(i32 55, float %3247, float %3248, float %3249, float %4690, float %4691, float %4692)  ; Dot3(ax,ay,az,bx,by,bz)
  %4717 = fsub fast float 1.000000e+00, %3232
  %4718 = call float @dx.op.binary.f32(i32 35, float %4717, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4719 = fmul fast float %4718, %4718
  %4720 = fmul fast float %4719, %4706
  %4721 = fmul fast float %4716, %4716
  %4722 = fsub fast float 1.000000e+00, %4701
  %4723 = fsub fast float %4722, %4721
  %4724 = fdiv fast float %4721, %4720
  %4725 = fadd fast float %4724, %4701
  %4726 = fdiv fast float %4723, %4706
  %4727 = fadd fast float %4725, %4726
  %4728 = fmul fast float %4702, %4702
  %4729 = fmul fast float %4728, %4707
  %4730 = fadd fast float %4729, %4706
  %4731 = bitcast float %4730 to i32
  %4732 = ashr i32 %4731, 1
  %4733 = add nsw i32 %4732, 532487669
  %4734 = bitcast i32 %4733 to float
  %4735 = fadd fast float %4734, %4702
  %4736 = fmul fast float %4706, %4718
  %4737 = fmul fast float %4727, %4727
  %4738 = fmul fast float %4737, %4736
  %4739 = fmul fast float %4738, %4715
  %4740 = fmul fast float %4739, %4735
  %4741 = fdiv fast float 0x3FF0A00000000000, %4740
  %4742 = fsub fast float 1.000000e+00, %3261
  %4743 = call float @dx.op.binary.f32(i32 35, float %4742, float 0x3F847AE140000000)  ; FMax(a,b)
  %4744 = fmul fast float %4743, %4743
  %4745 = fmul fast float %4744, %4744
  %4746 = fsub fast float 1.000000e+00, %4745
  %4747 = fmul fast float %4708, %4746
  %4748 = fadd fast float %4747, %4745
  %4749 = bitcast float %4748 to i32
  %4750 = ashr i32 %4749, 1
  %4751 = add nsw i32 %4750, 532487669
  %4752 = bitcast i32 %4751 to float
  %4753 = fadd fast float %4752, %4448
  %4754 = call float @dx.op.dot3.f32(i32 55, float %3258, float %3259, float %3260, float %4690, float %4691, float %4692)  ; Dot3(ax,ay,az,bx,by,bz)
  %4755 = fmul fast float %4719, %4745
  %4756 = fmul fast float %4754, %4754
  %4757 = fsub fast float %4722, %4756
  %4758 = fdiv fast float %4756, %4755
  %4759 = fadd fast float %4758, %4701
  %4760 = fdiv fast float %4757, %4745
  %4761 = fadd fast float %4759, %4760
  %4762 = fmul fast float %4728, %4746
  %4763 = fadd fast float %4762, %4745
  %4764 = bitcast float %4763 to i32
  %4765 = ashr i32 %4764, 1
  %4766 = add nsw i32 %4765, 532487669
  %4767 = bitcast i32 %4766 to float
  %4768 = fadd fast float %4767, %4702
  %4769 = fmul fast float %4745, %4718
  %4770 = fmul fast float %4761, %4761
  %4771 = fmul fast float %4770, %4769
  %4772 = fmul fast float %4771, %4753
  %4773 = fmul fast float %4772, %4768
  %4774 = fdiv fast float 0x3FF0A00000000000, %4773
  %4775 = fmul fast float %4741, %3279
  %4776 = fmul fast float %4741, %3280
  %4777 = fmul fast float %4741, %3281
  %4778 = fadd fast float %4774, %4775
  %4779 = fadd fast float %4774, %4776
  %4780 = fadd fast float %4774, %4777
  %4781 = call float @dx.op.unary.f32(i32 6, float %4694)  ; FAbs(value)
  %4782 = fsub fast float 1.000000e+00, %4781
  %4783 = bitcast float %4782 to i32
  %4784 = sitofp i32 %4783 to float
  %4785 = fmul fast float %4784, 5.000000e+00
  %4786 = fadd fast float %4785, 0xC1EFBF8940000000
  %4787 = fptosi float %4786 to i32
  %4788 = bitcast i32 %4787 to float
  %4789 = fsub fast float 1.000000e+00, %4441
  %4790 = fsub fast float 1.000000e+00, %4442
  %4791 = fsub fast float 1.000000e+00, %4446
  %4792 = fmul fast float %4788, %4789
  %4793 = fmul fast float %4788, %4790
  %4794 = fmul fast float %4788, %4791
  %4795 = fadd fast float %4792, %4441
  %4796 = fadd fast float %4793, %4442
  %4797 = fadd fast float %4794, %4446
  %4798 = fmul fast float %4693, 9.843750e-01
  %4799 = fadd fast float %4798, 7.812500e-03
  %4800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %4799, float %4597, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4801 = extractvalue %dx.types.ResRet.f32 %4800, 2
  %4802 = extractvalue %dx.types.ResRet.f32 %4800, 3
  %4803 = fmul fast float %4801, %4441
  %4804 = fmul fast float %4801, %4442
  %4805 = fmul fast float %4801, %4446
  %4806 = fadd fast float %4803, %4802
  %4807 = fadd fast float %4804, %4802
  %4808 = fadd fast float %4805, %4802
  %4809 = call float @dx.op.binary.f32(i32 35, float %4807, float %4808)  ; FMax(a,b)
  %4810 = call float @dx.op.binary.f32(i32 35, float %4806, float %4809)  ; FMax(a,b)
  %4811 = fsub fast float 1.000000e+00, %4810
  %4812 = fmul fast float %4699, %4682
  %4813 = fmul fast float %4812, %4811
  %4814 = fmul fast float %4699, %4683
  %4815 = fmul fast float %4814, %4811
  %4816 = fmul fast float %4699, %4684
  %4817 = fmul fast float %4816, %4811
  %4818 = fmul fast float %4812, %4778
  %4819 = fmul fast float %4818, %4795
  %4820 = fmul fast float %4814, %4779
  %4821 = fmul fast float %4820, %4796
  %4822 = fmul fast float %4816, %4780
  %4823 = fmul fast float %4822, %4797
  %4824 = fadd fast float %4813, %4610
  %4825 = fmul fast float %4824, %912
  %4826 = fadd fast float %4815, %4611
  %4827 = fmul fast float %4826, %912
  %4828 = fadd fast float %4817, %4612
  %4829 = fmul fast float %4828, %912
  %4830 = fadd fast float %4819, %4619
  %4831 = fmul fast float %4830, %912
  %4832 = fadd fast float %4821, %4621
  %4833 = fmul fast float %4832, %912
  %4834 = fadd fast float %4823, %4623
  %4835 = fmul fast float %4834, %912
  br label %4836

; <label>:4836                                    ; preds = %4681, %4674, %4428
  %4837 = phi float [ %4620, %4428 ], [ %4620, %4674 ], [ %4831, %4681 ]
  %4838 = phi float [ %4622, %4428 ], [ %4622, %4674 ], [ %4833, %4681 ]
  %4839 = phi float [ %4624, %4428 ], [ %4624, %4674 ], [ %4835, %4681 ]
  %4840 = phi float [ %4616, %4428 ], [ %4616, %4674 ], [ %4825, %4681 ]
  %4841 = phi float [ %4617, %4428 ], [ %4617, %4674 ], [ %4827, %4681 ]
  %4842 = phi float [ %4618, %4428 ], [ %4618, %4674 ], [ %4829, %4681 ]
  %4843 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4844 = extractvalue %dx.types.CBufRet.i32 %4843, 0
  %4845 = icmp eq i32 %4844, 0
  br i1 %4845, label %5272, label %4846

; <label>:4846                                    ; preds = %4836
  %4847 = fptoui float %70 to i32
  %4848 = fptoui float %71 to i32
  %4849 = lshr i32 %4847, 4
  %4850 = lshr i32 %4848, 4
  %4851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4852 = extractvalue %dx.types.CBufRet.i32 %4851, 0
  %4853 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4850, i32 %4852, i32 %4849)  ; UMad(a,b,c)
  %4854 = add nsw i32 %4844, -1
  %4855 = call i32 @dx.op.binary.i32(i32 37, i32 %4854, i32 0)  ; IMax(a,b)
  %4856 = call float @dx.op.binary.f32(i32 35, float %65, float 0.000000e+00)  ; FMax(a,b)
  %4857 = fptoui float %4856 to i32
  %4858 = lshr i32 %4857, 5
  %4859 = call i32 @dx.op.binary.i32(i32 40, i32 %4858, i32 8191)  ; UMin(a,b)
  %4860 = shl i32 %4859, 2
  %4861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4860, i32 undef)  ; BufferLoad(srv,index,wot)
  %4862 = extractvalue %dx.types.ResRet.i32 %4861, 0
  %4863 = lshr i32 %4862, 16
  %4864 = and i32 %4862, 65535
  %4865 = lshr i32 %4862, 21
  %4866 = lshr i32 %4864, 5
  %4867 = call i32 @dx.op.binary.i32(i32 40, i32 %4866, i32 %4855)  ; UMin(a,b)
  %4868 = icmp ugt i32 %4865, %4867
  br i1 %4868, label %5272, label %4869

; <label>:4869                                    ; preds = %4846
  br label %4870

; <label>:4870                                    ; preds = %5262, %4869
  %4871 = phi i32 [ %5269, %5262 ], [ %4865, %4869 ]
  %4872 = phi float [ %5263, %5262 ], [ %4837, %4869 ]
  %4873 = phi float [ %5264, %5262 ], [ %4838, %4869 ]
  %4874 = phi float [ %5265, %5262 ], [ %4839, %4869 ]
  %4875 = phi float [ %5266, %5262 ], [ %4840, %4869 ]
  %4876 = phi float [ %5267, %5262 ], [ %4841, %4869 ]
  %4877 = phi float [ %5268, %5262 ], [ %4842, %4869 ]
  %4878 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4879 = extractvalue %dx.types.CBufRet.i32 %4878, 0
  %4880 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4853, i32 %4879, i32 %4871)  ; UMad(a,b,c)
  %4881 = shl i32 %4880, 2
  %4882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4881, i32 undef)  ; BufferLoad(srv,index,wot)
  %4883 = extractvalue %dx.types.ResRet.i32 %4882, 0
  %4884 = shl i32 %4871, 5
  %4885 = sub nsw i32 %4863, %4884
  %4886 = call i32 @dx.op.binary.i32(i32 37, i32 %4885, i32 0)  ; IMax(a,b)
  %4887 = call i32 @dx.op.binary.i32(i32 38, i32 %4886, i32 31)  ; IMin(a,b)
  %4888 = sub nsw i32 1, %4863
  %4889 = add nsw i32 %4888, %4864
  %4890 = call i32 @dx.op.binary.i32(i32 37, i32 %4889, i32 0)  ; IMax(a,b)
  %4891 = call i32 @dx.op.binary.i32(i32 38, i32 %4890, i32 32)  ; IMin(a,b)
  %4892 = and i32 %4891, 31
  %4893 = shl i32 -1, %4892
  %4894 = xor i32 %4893, -1
  %4895 = and i32 %4887, 31
  %4896 = shl i32 %4894, %4895
  %4897 = icmp eq i32 %4891, 32
  %4898 = select i1 %4897, i32 -1, i32 %4896
  %4899 = and i32 %4898, %4883
  %4900 = icmp eq i32 %4899, 0
  br i1 %4900, label %5262, label %4901

; <label>:4901                                    ; preds = %4870
  br label %4902

; <label>:4902                                    ; preds = %4982, %4901
  %4903 = phi i32 [ %4914, %4982 ], [ %4899, %4901 ]
  %4904 = phi float [ %4983, %4982 ], [ %4872, %4901 ]
  %4905 = phi float [ %4984, %4982 ], [ %4873, %4901 ]
  %4906 = phi float [ %4985, %4982 ], [ %4874, %4901 ]
  %4907 = phi float [ %4986, %4982 ], [ %4875, %4901 ]
  %4908 = phi float [ %4987, %4982 ], [ %4876, %4901 ]
  %4909 = phi float [ %4988, %4982 ], [ %4877, %4901 ]
  %4910 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4903)  ; FirstbitLo(value)
  %4911 = add i32 %4910, %4884
  %4912 = and i32 %4910, 31
  %4913 = shl i32 1, %4912
  %4914 = xor i32 %4913, %4903
  %4915 = mul i32 %4911, 112
  %4916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4915, i32 undef)  ; BufferLoad(srv,index,wot)
  %4917 = extractvalue %dx.types.ResRet.f32 %4916, 0
  %4918 = extractvalue %dx.types.ResRet.f32 %4916, 1
  %4919 = extractvalue %dx.types.ResRet.f32 %4916, 2
  %4920 = or i32 %4915, 12
  %4921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4920, i32 undef)  ; BufferLoad(srv,index,wot)
  %4922 = extractvalue %dx.types.ResRet.f32 %4921, 0
  %4923 = add i32 %4915, 44
  %4924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4923, i32 undef)  ; BufferLoad(srv,index,wot)
  %4925 = extractvalue %dx.types.ResRet.f32 %4924, 0
  %4926 = add i32 %4915, 48
  %4927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4926, i32 undef)  ; BufferLoad(srv,index,wot)
  %4928 = extractvalue %dx.types.ResRet.f32 %4927, 0
  %4929 = extractvalue %dx.types.ResRet.f32 %4927, 1
  %4930 = extractvalue %dx.types.ResRet.f32 %4927, 2
  %4931 = add i32 %4915, 80
  %4932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4931, i32 undef)  ; BufferLoad(srv,index,wot)
  %4933 = extractvalue %dx.types.ResRet.f32 %4932, 1
  %4934 = extractvalue %dx.types.ResRet.f32 %4932, 2
  %4935 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4918, float %4919, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4936 = select i1 %196, float %4933, float %4917
  %4937 = select i1 %196, float %4935, float %4918
  %4938 = select i1 %196, float %4934, float %4919
  %4939 = fsub fast float %4928, %157
  %4940 = fsub fast float %4929, %158
  %4941 = fsub fast float %4930, %159
  %4942 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4940, float %4941, float %4939, float %4940, float %4941)  ; Dot3(ax,ay,az,bx,by,bz)
  %4943 = call float @dx.op.unary.f32(i32 24, float %4942)  ; Sqrt(value)
  %4944 = fdiv fast float 1.000000e+00, %4943
  %4945 = fmul fast float %4944, %4939
  %4946 = fmul fast float %4944, %4940
  %4947 = fmul fast float %4944, %4941
  %4948 = fadd fast float %4943, %4922
  %4949 = fdiv fast float 1.000000e+00, %4948
  %4950 = fmul float %4925, %4949
  %4951 = fmul float %4950, %4950
  %4952 = call float @dx.op.unary.f32(i32 7, float %4951)  ; Saturate(value)
  %4953 = and i32 %4913, %4899
  %4954 = icmp eq i32 %4953, 0
  br i1 %4954, label %4977, label %4955, !dx.controlflow.hints !69

; <label>:4955                                    ; preds = %4902
  %4956 = lshr i32 %4847, 5
  %4957 = lshr i32 %4848, 5
  %4958 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %4956, i32 %4957, i32 %4911, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4959 = extractvalue %dx.types.ResRet.i32 %4958, 0
  %4960 = and i32 %4959, 3
  %4961 = icmp eq i32 %4960, 0
  %4962 = select i1 %4961, float 1.000000e+00, float 0.000000e+00
  %4963 = icmp eq i32 %4960, 3
  br i1 %4963, label %4964, label %4977

; <label>:4964                                    ; preds = %4955
  %4965 = lshr i32 %4959, 10
  %4966 = and i32 %4965, 8160
  %4967 = and i32 %4848, 31
  %4968 = or i32 %4966, %4967
  %4969 = lshr i32 %4959, 1
  %4970 = and i32 %4969, 16352
  %4971 = and i32 %4847, 31
  %4972 = or i32 %4970, %4971
  %4973 = lshr i32 %4959, 23
  %4974 = and i32 %4973, 255
  %4975 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %4972, i32 %4968, i32 %4974, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4976 = extractvalue %dx.types.ResRet.f32 %4975, 0
  br label %4977

; <label>:4977                                    ; preds = %4964, %4955, %4902
  %4978 = phi float [ %4976, %4964 ], [ %4962, %4955 ], [ 0.000000e+00, %4902 ]
  %4979 = call float @dx.op.binary.f32(i32 36, float %4978, float %4978)  ; FMin(a,b)
  %4980 = call float @dx.op.binary.f32(i32 36, float %4978, float %4979)  ; FMin(a,b)
  %4981 = fcmp fast ogt float %4980, 0.000000e+00
  br i1 %4981, label %4990, label %4982, !dx.controlflow.hints !70

; <label>:4982                                    ; preds = %5051, %4977
  %4983 = phi float [ %4904, %4977 ], [ %5258, %5051 ]
  %4984 = phi float [ %4905, %4977 ], [ %5259, %5051 ]
  %4985 = phi float [ %4906, %4977 ], [ %5260, %5051 ]
  %4986 = phi float [ %4907, %4977 ], [ %5249, %5051 ]
  %4987 = phi float [ %4908, %4977 ], [ %5250, %5051 ]
  %4988 = phi float [ %4909, %4977 ], [ %5251, %5051 ]
  %4989 = icmp eq i32 %4903, %4913
  br i1 %4989, label %5261, label %4902

; <label>:4990                                    ; preds = %4977
  %4991 = fmul fast float %4978, %4936
  %4992 = fmul fast float %4978, %4937
  %4993 = fmul fast float %4978, %4938
  %4994 = fsub fast float %4930, %3642
  %4995 = fcmp fast ogt float %4994, 0.000000e+00
  %4996 = fsub fast float %159, %3642
  %4997 = fcmp fast ogt float %4996, 0.000000e+00
  %4998 = xor i1 %4997, %4995
  %4999 = fsub fast float %3642, %4930
  %5000 = fmul fast float %4999, 2.000000e+00
  %5001 = fadd fast float %5000, %4930
  %5002 = select i1 %4998, float %4930, float %5001
  %5003 = fsub fast float %5002, %159
  %5004 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4940, float %5003, float %4939, float %4940, float %5003)  ; Dot3(ax,ay,az,bx,by,bz)
  %5005 = call float @dx.op.unary.f32(i32 25, float %5004)  ; Rsqrt(value)
  %5006 = fmul fast float %5005, %4939
  %5007 = fmul fast float %5005, %4940
  %5008 = fmul fast float %5005, %5003
  %5009 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3650)  ; Dot3(ax,ay,az,bx,by,bz)
  %5010 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5006, float %5007, float %5008)  ; Dot3(ax,ay,az,bx,by,bz)
  %5011 = fdiv fast float 1.000000e+00, %5010
  %5012 = fmul fast float %5011, %5009
  %5013 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4996, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5014 = fcmp fast ogt float %5013, 0.000000e+00
  %5015 = fcmp fast olt float %5013, 0.000000e+00
  %5016 = zext i1 %5014 to i32
  %5017 = zext i1 %5015 to i32
  %5018 = sub nsw i32 %5016, %5017
  %5019 = sitofp i32 %5018 to float
  %5020 = fsub fast float %5002, %3642
  %5021 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4940, float %5020, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5022 = fcmp fast ogt float %5021, 0.000000e+00
  %5023 = fcmp fast olt float %5021, 0.000000e+00
  %5024 = zext i1 %5022 to i32
  %5025 = zext i1 %5023 to i32
  %5026 = sub nsw i32 %5024, %5025
  %5027 = sitofp i32 %5026 to float
  %5028 = fcmp fast une float %5019, %5027
  br i1 %5028, label %5029, label %5039

; <label>:5029                                    ; preds = %4990
  %5030 = fmul fast float %5012, %5008
  %5031 = fmul fast float %5012, %5007
  %5032 = fmul fast float %5012, %5006
  %5033 = fmul fast float %5032, %5032
  %5034 = fmul fast float %5031, %5031
  %5035 = fadd fast float %5033, %5034
  %5036 = fmul fast float %5030, %5030
  %5037 = fadd fast float %5035, %5036
  %5038 = call float @dx.op.unary.f32(i32 24, float %5037)  ; Sqrt(value)
  br label %5051

; <label>:5039                                    ; preds = %4990
  %5040 = icmp slt i32 %5018, 0
  br i1 %5040, label %5041, label %5051

; <label>:5041                                    ; preds = %5039
  %5042 = fsub fast float %157, %4928
  %5043 = fsub fast float %158, %4929
  %5044 = fsub fast float %159, %5002
  %5045 = fmul fast float %5042, %5042
  %5046 = fmul fast float %5043, %5043
  %5047 = fadd fast float %5045, %5046
  %5048 = fmul fast float %5044, %5044
  %5049 = fadd fast float %5047, %5048
  %5050 = call float @dx.op.unary.f32(i32 24, float %5049)  ; Sqrt(value)
  br label %5051

; <label>:5051                                    ; preds = %5041, %5039, %5029
  %5052 = phi float [ %5038, %5029 ], [ %5050, %5041 ], [ 0.000000e+00, %5039 ]
  %5053 = and i1 %4997, %4995
  %5054 = fsub fast float -0.000000e+00, %5052
  %5055 = select i1 %5053, float -0.000000e+00, float %5054
  %5056 = fmul fast float %3643, 0x3FF7154760000000
  %5057 = fmul fast float %5056, %5055
  %5058 = fmul fast float %3644, 0x3FF7154760000000
  %5059 = fmul fast float %5058, %5055
  %5060 = fmul fast float %3645, 0x3FF7154760000000
  %5061 = fmul fast float %5060, %5055
  %5062 = call float @dx.op.unary.f32(i32 21, float %5057)  ; Exp(value)
  %5063 = call float @dx.op.unary.f32(i32 21, float %5059)  ; Exp(value)
  %5064 = call float @dx.op.unary.f32(i32 21, float %5061)  ; Exp(value)
  %5065 = call float @dx.op.unary.f32(i32 7, float %5062)  ; Saturate(value)
  %5066 = call float @dx.op.unary.f32(i32 7, float %5063)  ; Saturate(value)
  %5067 = call float @dx.op.unary.f32(i32 7, float %5064)  ; Saturate(value)
  %5068 = fmul fast float %4991, %5065
  %5069 = fmul fast float %4992, %5066
  %5070 = fmul fast float %4993, %5067
  %5071 = fsub fast float %4945, %4434
  %5072 = fsub fast float %4946, %4433
  %5073 = fsub fast float %4947, %4432
  %5074 = call float @dx.op.dot3.f32(i32 55, float %5071, float %5072, float %5073, float %5071, float %5072, float %5073)  ; Dot3(ax,ay,az,bx,by,bz)
  %5075 = call float @dx.op.unary.f32(i32 25, float %5074)  ; Rsqrt(value)
  %5076 = fmul fast float %5075, %5071
  %5077 = fmul fast float %5075, %5072
  %5078 = fmul fast float %5075, %5073
  %5079 = call float @dx.op.dot3.f32(i32 55, float %4945, float %4946, float %4947, float %4438, float %4439, float %4440)  ; Dot3(ax,ay,az,bx,by,bz)
  %5080 = call float @dx.op.dot3.f32(i32 55, float %4431, float %4430, float %4429, float %5076, float %5077, float %5078)  ; Dot3(ax,ay,az,bx,by,bz)
  %5081 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5082 = fmul fast float %5081, %4952
  %5083 = fmul fast float %5081, %5081
  %5084 = fmul fast float %5083, %4625
  %5085 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5086 = fmul fast float %5082, %5085
  %5087 = bitcast float %4942 to i32
  %5088 = ashr i32 %5087, 1
  %5089 = sub nsw i32 1597463007, %5088
  %5090 = bitcast i32 %5089 to float
  %5091 = fmul fast float %5090, %4939
  %5092 = fmul fast float %5090, %4940
  %5093 = fmul fast float %5090, %4941
  %5094 = fmul fast float %5090, %4925
  %5095 = fsub fast float %5091, %4434
  %5096 = fsub fast float %5092, %4433
  %5097 = fsub fast float %5093, %4432
  %5098 = call float @dx.op.dot3.f32(i32 55, float %5095, float %5096, float %5097, float %5095, float %5096, float %5097)  ; Dot3(ax,ay,az,bx,by,bz)
  %5099 = call float @dx.op.unary.f32(i32 25, float %5098)  ; Rsqrt(value)
  %5100 = fmul fast float %5095, %5099
  %5101 = fmul fast float %5096, %5099
  %5102 = fmul fast float %5097, %5099
  %5103 = call float @dx.op.dot3.f32(i32 55, float %4438, float %4439, float %4440, float %5100, float %5101, float %5102)  ; Dot3(ax,ay,az,bx,by,bz)
  %5104 = fmul fast float %5103, %5103
  %5105 = call float @dx.op.unary.f32(i32 6, float %5079)  ; FAbs(value)
  %5106 = fsub fast float 1.000000e+00, %4444
  %5107 = call float @dx.op.binary.f32(i32 35, float %5106, float 0x3F847AE140000000)  ; FMax(a,b)
  %5108 = fmul fast float %5107, %5107
  %5109 = fmul fast float %5108, %5108
  %5110 = fsub fast float 1.000000e+00, %5109
  %5111 = fmul fast float %4448, %4448
  %5112 = fmul fast float %5111, %5110
  %5113 = fadd fast float %5112, %5109
  %5114 = bitcast float %5113 to i32
  %5115 = ashr i32 %5114, 1
  %5116 = add nsw i32 %5115, 532487669
  %5117 = bitcast i32 %5116 to float
  %5118 = fadd fast float %5117, %4448
  %5119 = call float @dx.op.dot3.f32(i32 55, float %3247, float %3248, float %3249, float %5100, float %5101, float %5102)  ; Dot3(ax,ay,az,bx,by,bz)
  %5120 = fsub fast float 1.000000e+00, %3232
  %5121 = call float @dx.op.binary.f32(i32 35, float %5120, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5122 = fmul fast float %5121, %5121
  %5123 = fmul fast float %5122, %5109
  %5124 = fmul fast float %5119, %5119
  %5125 = fsub fast float 1.000000e+00, %5104
  %5126 = fsub fast float %5125, %5124
  %5127 = fdiv fast float %5124, %5123
  %5128 = fadd fast float %5127, %5104
  %5129 = fdiv fast float %5126, %5109
  %5130 = fadd fast float %5128, %5129
  %5131 = fmul fast float %5105, %5105
  %5132 = fmul fast float %5131, %5110
  %5133 = fadd fast float %5132, %5109
  %5134 = bitcast float %5133 to i32
  %5135 = ashr i32 %5134, 1
  %5136 = add nsw i32 %5135, 532487669
  %5137 = bitcast i32 %5136 to float
  %5138 = fadd fast float %5137, %5105
  %5139 = fmul fast float %5109, %5121
  %5140 = fmul fast float %5130, %5130
  %5141 = fmul fast float %5140, %5139
  %5142 = fmul fast float %5141, %5118
  %5143 = fmul fast float %5142, %5138
  %5144 = fdiv fast float 1.000000e+00, %5143
  %5145 = bitcast float %5109 to i32
  %5146 = sitofp i32 %5145 to float
  %5147 = fmul fast float %5146, 0x3FE7F73180000000
  %5148 = fadd fast float %5147, 0x41AFE27C40000000
  %5149 = fptosi float %5148 to i32
  %5150 = bitcast i32 %5149 to float
  %5151 = fmul fast float %5094, 0x3FD80E9D60000000
  %5152 = fadd fast float %5150, %5151
  %5153 = bitcast float %5152 to i32
  %5154 = sub nsw i32 2129859010, %5153
  %5155 = bitcast i32 %5154 to float
  %5156 = fmul fast float %5150, %5144
  %5157 = fmul fast float %5156, %5155
  %5158 = fsub fast float 1.000000e+00, %3261
  %5159 = call float @dx.op.binary.f32(i32 35, float %5158, float 0x3F847AE140000000)  ; FMax(a,b)
  %5160 = fmul fast float %5159, %5159
  %5161 = fmul fast float %5160, %5160
  %5162 = fsub fast float 1.000000e+00, %5161
  %5163 = fmul fast float %5111, %5162
  %5164 = fadd fast float %5163, %5161
  %5165 = bitcast float %5164 to i32
  %5166 = ashr i32 %5165, 1
  %5167 = add nsw i32 %5166, 532487669
  %5168 = bitcast i32 %5167 to float
  %5169 = fadd fast float %5168, %4448
  %5170 = call float @dx.op.dot3.f32(i32 55, float %3258, float %3259, float %3260, float %5100, float %5101, float %5102)  ; Dot3(ax,ay,az,bx,by,bz)
  %5171 = fmul fast float %5122, %5161
  %5172 = fmul fast float %5170, %5170
  %5173 = fsub fast float %5125, %5172
  %5174 = fdiv fast float %5172, %5171
  %5175 = fadd fast float %5174, %5104
  %5176 = fdiv fast float %5173, %5161
  %5177 = fadd fast float %5175, %5176
  %5178 = fmul fast float %5131, %5162
  %5179 = fadd fast float %5178, %5161
  %5180 = bitcast float %5179 to i32
  %5181 = ashr i32 %5180, 1
  %5182 = add nsw i32 %5181, 532487669
  %5183 = bitcast i32 %5182 to float
  %5184 = fadd fast float %5183, %5105
  %5185 = fmul fast float %5161, %5121
  %5186 = fmul fast float %5177, %5177
  %5187 = fmul fast float %5186, %5185
  %5188 = fmul fast float %5187, %5169
  %5189 = fmul fast float %5188, %5184
  %5190 = fdiv fast float 1.000000e+00, %5189
  %5191 = bitcast float %5161 to i32
  %5192 = sitofp i32 %5191 to float
  %5193 = fmul fast float %5192, 0x3FE7F73180000000
  %5194 = fadd fast float %5193, 0x41AFE27C40000000
  %5195 = fptosi float %5194 to i32
  %5196 = bitcast i32 %5195 to float
  %5197 = fadd fast float %5196, %5151
  %5198 = bitcast float %5197 to i32
  %5199 = sub nsw i32 2129859010, %5198
  %5200 = bitcast i32 %5199 to float
  %5201 = fmul fast float %5196, %5190
  %5202 = fmul fast float %5201, %5200
  %5203 = fmul fast float %5157, %3279
  %5204 = fmul fast float %5157, %3280
  %5205 = fmul fast float %5157, %3281
  %5206 = fadd fast float %5202, %5203
  %5207 = fadd fast float %5202, %5204
  %5208 = fadd fast float %5202, %5205
  %5209 = call float @dx.op.unary.f32(i32 6, float %5080)  ; FAbs(value)
  %5210 = fsub fast float 1.000000e+00, %5209
  %5211 = bitcast float %5210 to i32
  %5212 = sitofp i32 %5211 to float
  %5213 = fmul fast float %5212, 5.000000e+00
  %5214 = fadd fast float %5213, 0xC1EFBF8940000000
  %5215 = fptosi float %5214 to i32
  %5216 = bitcast i32 %5215 to float
  %5217 = fsub fast float 1.000000e+00, %4441
  %5218 = fsub fast float 1.000000e+00, %4442
  %5219 = fsub fast float 1.000000e+00, %4446
  %5220 = fmul fast float %5216, %5217
  %5221 = fmul fast float %5216, %5218
  %5222 = fmul fast float %5216, %5219
  %5223 = fadd fast float %5220, %4441
  %5224 = fadd fast float %5221, %4442
  %5225 = fadd fast float %5222, %4446
  %5226 = fmul fast float %5079, 9.843750e-01
  %5227 = fadd fast float %5226, 7.812500e-03
  %5228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %5227, float %4597, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5229 = extractvalue %dx.types.ResRet.f32 %5228, 2
  %5230 = extractvalue %dx.types.ResRet.f32 %5228, 3
  %5231 = fmul fast float %5229, %4441
  %5232 = fmul fast float %5229, %4442
  %5233 = fmul fast float %5229, %4446
  %5234 = fadd fast float %5231, %5230
  %5235 = fadd fast float %5232, %5230
  %5236 = fadd fast float %5233, %5230
  %5237 = call float @dx.op.binary.f32(i32 35, float %5235, float %5236)  ; FMax(a,b)
  %5238 = call float @dx.op.binary.f32(i32 35, float %5234, float %5237)  ; FMax(a,b)
  %5239 = fsub fast float 1.000000e+00, %5238
  %5240 = fmul fast float %5068, %912
  %5241 = fmul fast float %5240, %5086
  %5242 = fmul fast float %5241, %5239
  %5243 = fmul fast float %5069, %912
  %5244 = fmul fast float %5243, %5086
  %5245 = fmul fast float %5244, %5239
  %5246 = fmul fast float %5070, %912
  %5247 = fmul fast float %5246, %5086
  %5248 = fmul fast float %5247, %5239
  %5249 = fadd fast float %5242, %4907
  %5250 = fadd fast float %5245, %4908
  %5251 = fadd fast float %5248, %4909
  %5252 = fmul fast float %5241, %5223
  %5253 = fmul fast float %5252, %5206
  %5254 = fmul fast float %5244, %5224
  %5255 = fmul fast float %5254, %5207
  %5256 = fmul fast float %5247, %5225
  %5257 = fmul fast float %5256, %5208
  %5258 = fadd fast float %5253, %4904
  %5259 = fadd fast float %5255, %4905
  %5260 = fadd fast float %5257, %4906
  br label %4982

; <label>:5261                                    ; preds = %4982
  br label %5262

; <label>:5262                                    ; preds = %5261, %4870
  %5263 = phi float [ %4872, %4870 ], [ %4983, %5261 ]
  %5264 = phi float [ %4873, %4870 ], [ %4984, %5261 ]
  %5265 = phi float [ %4874, %4870 ], [ %4985, %5261 ]
  %5266 = phi float [ %4875, %4870 ], [ %4986, %5261 ]
  %5267 = phi float [ %4876, %4870 ], [ %4987, %5261 ]
  %5268 = phi float [ %4877, %4870 ], [ %4988, %5261 ]
  %5269 = add i32 %4871, 1
  %5270 = icmp ugt i32 %5269, %4867
  br i1 %5270, label %5271, label %4870

; <label>:5271                                    ; preds = %5262
  br label %5272

; <label>:5272                                    ; preds = %5271, %4846, %4836
  %5273 = phi float [ %4837, %4836 ], [ %4837, %4846 ], [ %5263, %5271 ]
  %5274 = phi float [ %4838, %4836 ], [ %4838, %4846 ], [ %5264, %5271 ]
  %5275 = phi float [ %4839, %4836 ], [ %4839, %4846 ], [ %5265, %5271 ]
  %5276 = phi float [ %4840, %4836 ], [ %4840, %4846 ], [ %5266, %5271 ]
  %5277 = phi float [ %4841, %4836 ], [ %4841, %4846 ], [ %5267, %5271 ]
  %5278 = phi float [ %4842, %4836 ], [ %4842, %4846 ], [ %5268, %5271 ]
  %5279 = call float @dx.op.unary.f32(i32 24, float %4435)  ; Sqrt(value)
  %5280 = call float @dx.op.unary.f32(i32 24, float %4436)  ; Sqrt(value)
  %5281 = call float @dx.op.unary.f32(i32 24, float %4437)  ; Sqrt(value)
  %5282 = fmul fast float %5279, %5276
  %5283 = fmul fast float %5280, %5277
  %5284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5285 = extractvalue %dx.types.CBufRet.f32 %5284, 0
  br i1 %196, label %5286, label %5307

; <label>:5286                                    ; preds = %5272
  %5287 = fadd fast float %5278, %3134
  %5288 = fmul fast float %5287, %3132
  %5289 = fsub fast float 1.000000e+00, %3132
  %5290 = call float @dx.op.unary.f32(i32 7, float %5289)  ; Saturate(value)
  %5291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5292 = extractvalue %dx.types.CBufRet.f32 %5291, 3
  %5293 = fmul fast float %5292, %5290
  %5294 = fadd fast float %5293, %5288
  %5295 = fsub fast float 1.000000e+00, %4448
  %5296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5297 = extractvalue %dx.types.CBufRet.f32 %5296, 0
  %5298 = fmul fast float %5297, %5295
  %5299 = fsub fast float %5294, %5298
  %5300 = fadd fast float %5283, %5282
  %5301 = fmul fast float %5285, %5300
  %5302 = extractvalue %dx.types.CBufRet.f32 %5291, 1
  %5303 = fsub fast float %5299, %5302
  %5304 = extractvalue %dx.types.CBufRet.f32 %5291, 2
  %5305 = fmul fast float %5303, %5304
  %5306 = call float @dx.op.unary.f32(i32 7, float %5305)  ; Saturate(value)
  br label %5323

; <label>:5307                                    ; preds = %5272
  %5308 = fmul fast float %5281, %5278
  %5309 = fmul fast float %5285, %5282
  %5310 = fmul fast float %5285, %5283
  %5311 = fmul fast float %5308, %5285
  %5312 = add i32 %27, 356
  %5313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %5312, i32 undef)  ; BufferLoad(srv,index,wot)
  %5314 = extractvalue %dx.types.ResRet.i32 %5313, 0
  %5315 = and i32 %5314, 32
  %5316 = icmp eq i32 %5315, 0
  br i1 %5316, label %5323, label %5317

; <label>:5317                                    ; preds = %5307
  %5318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5319 = extractvalue %dx.types.CBufRet.f32 %5318, 0
  %5320 = fmul fast float %5319, 0x3FE99999A0000000
  %5321 = fadd fast float %5319, %5309
  %5322 = fadd fast float %5320, %5311
  br label %5323

; <label>:5323                                    ; preds = %5317, %5307, %5286
  %5324 = phi float [ %5301, %5286 ], [ %5321, %5317 ], [ %5309, %5307 ]
  %5325 = phi float [ %5306, %5286 ], [ %5310, %5317 ], [ %5310, %5307 ]
  %5326 = phi float [ 1.000000e+00, %5286 ], [ %5322, %5317 ], [ %5311, %5307 ]
  %5327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5328 = extractvalue %dx.types.CBufRet.f32 %5327, 0
  %5329 = fmul fast float %5328, %5274
  %5330 = fmul fast float %5328, %5275
  %5331 = fadd fast float %5274, %5273
  %5332 = select i1 %196, float %5331, float %5273
  %5333 = fmul float %5332, %5328
  %5334 = select i1 %196, float 0.000000e+00, float %5329
  %5335 = select i1 %196, float 0.000000e+00, float %5330
  %5336 = fmul fast float %5324, %5279
  %5337 = fmul fast float %5325, %5280
  %5338 = fmul fast float %5326, %5281
  %5339 = fadd fast float %5333, %5336
  %5340 = fadd fast float %5334, %5337
  %5341 = fadd fast float %5335, %5338
  %5342 = select i1 %196, float %5325, float %5340
  %5343 = select i1 %196, float %5326, float %5341
  %5344 = call float @dx.op.binary.f32(i32 36, float %5339, float 3.225500e+04)  ; FMin(a,b)
  %5345 = call float @dx.op.binary.f32(i32 36, float %5342, float 3.225500e+04)  ; FMin(a,b)
  %5346 = call float @dx.op.binary.f32(i32 36, float %5343, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5344)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5345)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5346)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!40 = !{[54 x i32] [i32 52, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0]}
!41 = !{void ()* @ps_main, !"ps_main", !42, !4, !67}
!42 = !{!43, !65, null}
!43 = !{!44, !47, !49, !51, !53, !55, !56, !57, !58, !59, !60, !61, !62, !64}
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
!55 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !45, i8 2, i32 1, i8 3, i32 5, i8 0, !52}
!56 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 6, i8 0, !54}
!57 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 3, i32 7, i8 0, !52}
!58 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 8, i8 0, !54}
!59 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !45, i8 2, i32 1, i8 2, i32 9, i8 0, !50}
!60 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 10, i8 0, !54}
!61 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 11, i8 0, !52}
!62 = !{i32 12, !"PACKED_TRI_DATA", i8 5, i8 0, !45, i8 1, i32 1, i8 4, i32 12, i8 0, !63}
!63 = !{i32 3, i32 1}
!64 = !{i32 13, !"SV_SampleIndex", i8 5, i8 12, !45, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!65 = !{!66}
!66 = !{i32 0, !"SV_Target", i8 9, i8 16, !45, i8 0, i32 1, i8 4, i32 0, i8 0, !54}
!67 = !{i32 0, i64 24}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}

