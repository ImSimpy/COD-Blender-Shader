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
; ENTITY_IDS               0   xy         12     NONE    uint   x   
; PACKED_TRI_DATA          0   xyzw       13     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 234da5aa23ce54d9a2d72683b301c401
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
; ENTITY_IDS               0        nointerpolation       
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
;                                   texture    byte         r/o      T4     t22,space1     1
;                                   texture     f32          3d      T5     t52,space2     1
;                                   texture     f32          2d      T6     t33,space2     1
;                                   texture     u32     2darray      T7     t11,space2     1
;                                   texture     f32     2darray      T8     t10,space2     1
;                                   texture     f32          2d      T9     t69,space2     1
;                                   texture     f32          2d     T10     t37,space2     1
;                                   texture     f32          2d     T11     t58,space2     1
;                                   texture     f32          2d     T12     t59,space2     1
;                                   texture     f32          2d     T13     t60,space2     1
;                                   texture    byte         r/o     T14     t45,space1     1
;                                   texture    byte         r/o     T15     t46,space1     1
;                                   texture    byte         r/o     T16     t47,space1     1
;                                   texture    byte         r/o     T17     t48,space1     1
;                                   texture     f32          2d     T18     t57,space2     1
;                                   texture    byte         r/o     T19     t69,space1     1
;                                   texture    byte         r/o     T20     t10,space1     1
;                                   texture    byte         r/o     T21     t68,space1     1
;                                   texture     f32          2d     T22      t0,space2     1
;                                   texture    byte         r/o     T23     t11,space1     1
;                                   texture    byte         r/o     T24     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
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
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %69 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %72 = fmul fast float %71, %65
  %73 = fmul fast float %71, %66
  %74 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %75 = bitcast float %74 to i32
  %76 = ashr i32 %75, 1
  %77 = sub nsw i32 1597250115, %76
  %78 = bitcast i32 %77 to float
  %79 = fmul fast float %78, %57
  %80 = fmul fast float %78, %58
  %81 = fmul fast float %78, %59
  %82 = fmul fast float %58, %55
  %83 = fmul fast float %59, %54
  %84 = fsub fast float %82, %83
  %85 = fmul fast float %59, %53
  %86 = fmul fast float %57, %55
  %87 = fsub fast float %85, %86
  %88 = fmul fast float %57, %54
  %89 = fmul fast float %58, %53
  %90 = fsub fast float %88, %89
  %91 = fmul fast float %84, %56
  %92 = fmul fast float %87, %56
  %93 = fmul fast float %90, %56
  %94 = call float @dx.op.dot3.f32(i32 55, float %46, float %47, float %48, float %46, float %47, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %95 = bitcast float %94 to i32
  %96 = ashr i32 %95, 1
  %97 = sub nsw i32 1597250115, %96
  %98 = bitcast i32 %97 to float
  %99 = fmul fast float %98, %46
  %100 = fmul fast float %98, %47
  %101 = fmul fast float %98, %48
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = fcmp fast une float %103, 0.000000e+00
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 3
  %108 = fmul fast float %72, 2.000000e+00
  %109 = fmul fast float %108, %106
  %110 = fmul fast float %73, 2.000000e+00
  %111 = fmul fast float %110, %107
  %112 = fsub fast float 1.000000e+00, %109
  %113 = fsub fast float 1.000000e+00, %111
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 1
  %117 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %122 = select i1 %104, float %115, float %119
  %123 = select i1 %104, float %116, float %120
  %124 = select i1 %104, float %117, float %121
  %125 = fmul fast float %122, %112
  %126 = fmul fast float %123, %112
  %127 = fmul fast float %124, %112
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %135 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %136 = select i1 %104, float %129, float %133
  %137 = select i1 %104, float %130, float %134
  %138 = select i1 %104, float %131, float %135
  %139 = fmul fast float %136, %113
  %140 = fmul fast float %137, %113
  %141 = fmul fast float %138, %113
  %142 = fadd fast float %139, %125
  %143 = fadd fast float %140, %126
  %144 = fadd fast float %141, %127
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %153 = select i1 %104, float %146, float %150
  %154 = select i1 %104, float %147, float %151
  %155 = select i1 %104, float %148, float %152
  %156 = fadd fast float %142, %153
  %157 = fadd fast float %143, %154
  %158 = fadd fast float %144, %155
  %159 = fmul fast float %156, %67
  %160 = fmul fast float %157, %67
  %161 = fmul fast float %158, %67
  %162 = shl i32 %29, 5
  %163 = add i32 %162, 4194304
  %164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %163, i32 undef)  ; BufferLoad(srv,index,wot)
  %165 = extractvalue %dx.types.ResRet.i32 %164, 0
  %166 = extractvalue %dx.types.ResRet.i32 %164, 1
  %167 = extractvalue %dx.types.ResRet.i32 %164, 2
  %168 = extractvalue %dx.types.ResRet.i32 %164, 3
  %169 = add i32 %162, 4194320
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = extractvalue %dx.types.ResRet.i32 %170, 1
  %173 = bitcast i32 %171 to float
  %174 = bitcast i32 %172 to float
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %177 = extractvalue %dx.types.CBufRet.f32 %175, 3
  %178 = fmul fast float %176, %72
  %179 = fmul fast float %177, %73
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = and i32 %181, 114688
  %183 = icmp ne i32 %182, 0
  %184 = select i1 %183, float %178, float 0.000000e+00
  %185 = select i1 %183, float %179, float 0.000000e+00
  %186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %184, float %185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = fmul fast float %187, 2.550000e+02
  %189 = fptoui float %188 to i32
  %190 = select i1 %183, i32 %189, i32 0
  %191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.i32 %191, 3
  %193 = and i32 %192, 3
  %194 = icmp ne i32 %193, 0
  %195 = and i32 %192, 4
  %196 = icmp ne i32 %195, 0
  %197 = and i1 %194, %196
  br i1 %197, label %198, label %207

; <label>:198                                     ; preds = %0
  %199 = fmul fast float %107, %73
  %200 = fmul fast float %106, %72
  %201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %24, float %200, float %199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = fsub fast float 1.000000e+00, %202
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 0
  %206 = fcmp fast olt float %203, %205
  br label %210

; <label>:207                                     ; preds = %0
  %208 = icmp eq i32 %195, 0
  %209 = and i1 %194, %208
  br label %210

; <label>:210                                     ; preds = %207, %198
  %211 = phi i1 [ %206, %198 ], [ %209, %207 ]
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %214 = fmul fast float %213, 0x3FE3C6EF40000000
  %215 = frem fast float %72, 2.560000e+02
  %216 = frem fast float %73, 2.560000e+02
  %217 = fptoui float %215 to i32
  %218 = fptoui float %216 to i32
  %219 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %217, i32 %218, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %220 = extractvalue %dx.types.ResRet.f32 %219, 0
  %221 = fadd fast float %220, %214
  %222 = call float @dx.op.unary.f32(i32 22, float %221)  ; Frc(value)
  %223 = add i32 %28, 156
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = shl i32 %225, 4
  %227 = and i32 %226, 32752
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227)  ; LegacyF16ToF32(value)
  %229 = lshr i32 %225, 7
  %230 = and i32 %229, 32752
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = lshr i32 %225, 22
  %233 = shl nuw nsw i32 %232, 5
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = add i32 %28, 216
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = and i32 %237, 255
  %239 = uitofp i32 %238 to float
  %240 = fmul fast float %239, 0x3F70101020000000
  %241 = lshr i32 %237, 8
  %242 = and i32 %241, 255
  %243 = uitofp i32 %242 to float
  %244 = fmul fast float %243, 0x3F70101020000000
  %245 = lshr i32 %237, 16
  %246 = and i32 %245, 255
  %247 = uitofp i32 %246 to float
  %248 = fmul fast float %247, 0x3F70101020000000
  %249 = add i32 %28, 36
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = and i32 %251, 65535
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = lshr i32 %251, 16
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = add i32 %28, 288
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = and i32 %258, 65535
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = lshr i32 %258, 16
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = fmul fast float %260, 0x3F50624DE0000000
  %264 = fmul fast float %262, 0x3F50624DE0000000
  %265 = add i32 %28, 172
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = shl i32 %267, 4
  %269 = and i32 %268, 32752
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = lshr i32 %267, 7
  %272 = and i32 %271, 32752
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %267, 22
  %275 = shl nuw nsw i32 %274, 5
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = add i32 %28, 232
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = and i32 %279, 255
  %281 = uitofp i32 %280 to float
  %282 = fmul fast float %281, 0x3F70101020000000
  %283 = lshr i32 %279, 8
  %284 = and i32 %283, 255
  %285 = uitofp i32 %284 to float
  %286 = fmul fast float %285, 0x3F70101020000000
  %287 = lshr i32 %279, 16
  %288 = and i32 %287, 255
  %289 = uitofp i32 %288 to float
  %290 = fmul fast float %289, 0x3F70101020000000
  %291 = add i32 %28, 52
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = and i32 %293, 65535
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %293, 16
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = add i32 %28, 304
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = and i32 %300, 65535
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %300, 16
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = fmul fast float %302, 0x3F50624DE0000000
  %306 = fmul fast float %304, 0x3F50624DE0000000
  %307 = add i32 %28, 188
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = shl i32 %309, 4
  %311 = and i32 %310, 32752
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %309, 7
  %314 = and i32 %313, 32752
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %309, 22
  %317 = shl nuw nsw i32 %316, 5
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = add i32 %28, 248
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = and i32 %321, 255
  %323 = uitofp i32 %322 to float
  %324 = fmul fast float %323, 0x3F70101020000000
  %325 = lshr i32 %321, 8
  %326 = and i32 %325, 255
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3F70101020000000
  %329 = lshr i32 %321, 16
  %330 = and i32 %329, 255
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %331, 0x3F70101020000000
  %333 = add i32 %28, 68
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = and i32 %335, 65535
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = lshr i32 %335, 16
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = add i32 %28, 320
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 65535
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = lshr i32 %342, 16
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = fmul fast float %344, 0x3F50624DE0000000
  %348 = fmul fast float %346, 0x3F50624DE0000000
  %349 = add i32 %28, 204
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = shl i32 %351, 4
  %353 = and i32 %352, 32752
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %351, 7
  %356 = and i32 %355, 32752
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %351, 22
  %359 = shl nuw nsw i32 %358, 5
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = add i32 %28, 264
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = and i32 %363, 255
  %365 = uitofp i32 %364 to float
  %366 = fmul fast float %365, 0x3F70101020000000
  %367 = lshr i32 %363, 8
  %368 = and i32 %367, 255
  %369 = uitofp i32 %368 to float
  %370 = fmul fast float %369, 0x3F70101020000000
  %371 = lshr i32 %363, 16
  %372 = and i32 %371, 255
  %373 = uitofp i32 %372 to float
  %374 = fmul fast float %373, 0x3F70101020000000
  %375 = add i32 %28, 84
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = and i32 %377, 65535
  %379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %378)  ; LegacyF16ToF32(value)
  %380 = lshr i32 %377, 16
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = add i32 %28, 336
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = and i32 %384, 65535
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = lshr i32 %384, 16
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = fmul fast float %386, 0x3F50624DE0000000
  %390 = fmul fast float %388, 0x3F50624DE0000000
  %391 = add i32 %28, 348
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 32
  %395 = icmp eq i32 %394, 0
  %396 = and i32 %393, 64
  %397 = icmp eq i32 %396, 0
  %398 = and i32 %393, 128
  %399 = icmp eq i32 %398, 0
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 2
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %417, label %404

; <label>:404                                     ; preds = %210
  %405 = add i32 %28, 492
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = add i32 %407, 0
  %409 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %408, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %410 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %409, %dx.types.Handle %69, float %60, float %61, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %411 = extractvalue %dx.types.ResRet.f32 %410, 0
  %412 = extractvalue %dx.types.ResRet.f32 %410, 1
  %413 = extractvalue %dx.types.ResRet.f32 %410, 2
  %414 = fmul fast float %411, %62
  %415 = fmul fast float %412, %63
  %416 = fmul fast float %413, %64
  br label %417

; <label>:417                                     ; preds = %404, %210
  %418 = phi float [ %64, %210 ], [ %416, %404 ]
  %419 = phi float [ %63, %210 ], [ %415, %404 ]
  %420 = phi float [ %62, %210 ], [ %414, %404 ]
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = and i32 %422, 2
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %444, label %425

; <label>:425                                     ; preds = %417
  %426 = add i32 %28, 44
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 1
  %430 = icmp ne i32 %429, 0
  %431 = select i1 %430, float %420, float 1.000000e+00
  %432 = add i32 %28, 60
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 1
  %436 = icmp ne i32 %435, 0
  %437 = select i1 %436, float %419, float 1.000000e+00
  %438 = add i32 %28, 76
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 1
  %442 = icmp ne i32 %441, 0
  %443 = select i1 %442, float %418, float 1.000000e+00
  br label %444

; <label>:444                                     ; preds = %425, %417
  %445 = phi float [ %418, %417 ], [ %443, %425 ]
  %446 = phi float [ %419, %417 ], [ %437, %425 ]
  %447 = phi float [ %420, %417 ], [ %431, %425 ]
  %448 = lshr i32 %422, 20
  %449 = and i32 %448, 3
  %450 = add nuw nsw i32 %449, 1
  %451 = add i32 %28, 24
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = add i32 %28, 28
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = or i32 %456, %453
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %941, label %459

; <label>:459                                     ; preds = %444
  %460 = and i32 %453, 262144
  %461 = icmp ne i32 %460, 0
  %462 = select i1 %461, float %33, float 1.000000e+00
  %463 = select i1 %461, float %34, float 0.000000e+00
  %464 = select i1 %461, float %35, float 0.000000e+00
  %465 = select i1 %461, float %36, float 1.000000e+00
  %466 = select i1 %461, float %37, float %60
  %467 = select i1 %461, float %38, float %61
  %468 = add i32 %28, 284
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = lshr i32 %470, 16
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = fmul fast float %472, 0x3F50624DE0000000
  %474 = add i32 %28, 88
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = lshr i32 %476, 16
  %478 = and i32 %477, 255
  %479 = lshr i32 %476, 24
  %480 = add i32 %28, 292
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = and i32 %482, 65535
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = lshr i32 %482, 16
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = add i32 %28, 32
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = lshr i32 %489, 22
  %491 = shl nuw nsw i32 %490, 5
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = shl i32 %489, 4
  %494 = and i32 %493, 32752
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = lshr i32 %489, 7
  %497 = and i32 %496, 32752
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %500 = extractvalue %dx.types.CBufRet.f32 %499, 3
  %501 = fmul fast float %500, 1.000000e+03
  %502 = fmul fast float %263, %501
  %503 = call float @dx.op.unary.f32(i32 22, float %502)  ; Frc(value)
  %504 = fadd fast float %503, %253
  %505 = fmul fast float %264, %501
  %506 = call float @dx.op.unary.f32(i32 22, float %505)  ; Frc(value)
  %507 = fadd fast float %506, %255
  %508 = fmul fast float %473, %501
  %509 = call float @dx.op.unary.f32(i32 22, float %508)  ; Frc(value)
  %510 = fmul fast float %509, 0x401921FB60000000
  %511 = fadd fast float %510, %492
  %512 = call float @dx.op.unary.f32(i32 13, float %511)  ; Sin(value)
  %513 = call float @dx.op.unary.f32(i32 12, float %511)  ; Cos(value)
  %514 = fsub fast float -0.000000e+00, %512
  %515 = fadd fast float %466, -5.000000e-01
  %516 = fadd fast float %467, -5.000000e-01
  %517 = fmul fast float %484, %515
  %518 = fmul fast float %486, %516
  %519 = fadd fast float %517, 5.000000e-01
  %520 = fadd fast float %518, 5.000000e-01
  %521 = fmul fast float %495, %519
  %522 = fmul fast float %498, %520
  %523 = fmul fast float %513, %521
  %524 = call float @dx.op.tertiary.f32(i32 46, float %514, float %522, float %523)  ; FMad(a,b,c)
  %525 = fmul fast float %512, %521
  %526 = call float @dx.op.tertiary.f32(i32 46, float %513, float %522, float %525)  ; FMad(a,b,c)
  %527 = fadd fast float %504, %524
  %528 = fadd fast float %507, %526
  %529 = icmp ugt i32 %478, 1
  %530 = icmp ugt i32 %476, 33554431
  %531 = or i1 %530, %529
  br i1 %531, label %532, label %557

; <label>:532                                     ; preds = %459
  %533 = add i32 %28, 228
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = lshr i32 %535, 16
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = fmul fast float %500, %537
  %539 = call float @dx.op.unary.f32(i32 22, float %538)  ; Frc(value)
  %540 = mul nuw nsw i32 %478, %479
  %541 = uitofp i32 %540 to float
  %542 = fmul fast float %539, %541
  %543 = call float @dx.op.unary.f32(i32 27, float %542)  ; Round_ni(value)
  %544 = fptoui float %543 to i32
  %545 = urem i32 %544, %478
  %546 = udiv i32 %544, %479
  %547 = call float @dx.op.unary.f32(i32 22, float %527)  ; Frc(value)
  %548 = call float @dx.op.unary.f32(i32 22, float %528)  ; Frc(value)
  %549 = uitofp i32 %545 to float
  %550 = uitofp i32 %546 to float
  %551 = fadd fast float %547, %549
  %552 = fadd fast float %548, %550
  %553 = uitofp i32 %478 to float
  %554 = uitofp i32 %479 to float
  %555 = fdiv fast float %551, %553
  %556 = fdiv fast float %552, %554
  br label %557

; <label>:557                                     ; preds = %532, %459
  %558 = phi float [ %555, %532 ], [ %527, %459 ]
  %559 = phi float [ %556, %532 ], [ %528, %459 ]
  %560 = and i32 %453, 16
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %758, label %562

; <label>:562                                     ; preds = %557
  %563 = add i32 %28, 376
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = add i32 %565, 0
  %567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %568 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %567, %dx.types.Handle %68, float %558, float %559, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  %570 = extractvalue %dx.types.ResRet.f32 %568, 1
  %571 = extractvalue %dx.types.ResRet.f32 %568, 2
  %572 = extractvalue %dx.types.ResRet.f32 %568, 3
  %573 = and i32 %476, 255
  %574 = uitofp i32 %573 to float
  %575 = lshr i32 %476, 8
  %576 = and i32 %575, 255
  %577 = uitofp i32 %576 to float
  %578 = fmul fast float %572, %574
  %579 = fadd fast float %578, %577
  %580 = fmul fast float %579, 0x3F70101000000000
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = and i32 %582, 512
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %593, label %585

; <label>:585                                     ; preds = %562
  %586 = add i32 %28, 460
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = add i32 %588, 0
  %590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %589, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %591 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %590, %dx.types.Handle %69, float %558, float %559, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 0
  br label %593

; <label>:593                                     ; preds = %585, %562
  %594 = phi float [ %592, %585 ], [ 1.000000e+00, %562 ]
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = and i32 %596, 33554432
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %705, label %599

; <label>:599                                     ; preds = %593
  %600 = add i32 %28, 224
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = and i32 %602, 65535
  %604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %603)  ; LegacyF16ToF32(value)
  %605 = lshr i32 %602, 16
  %606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %605)  ; LegacyF16ToF32(value)
  %607 = add i32 %28, 228
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = and i32 %609, 65535
  %611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %610)  ; LegacyF16ToF32(value)
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = lshr i32 %613, 24
  %615 = uitofp i32 %614 to float
  %616 = fmul fast float %615, 0x3F70101020000000
  %617 = and i32 %613, 255
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %618, 0x3F70101020000000
  %620 = lshr i32 %613, 8
  %621 = and i32 %620, 255
  %622 = uitofp i32 %621 to float
  %623 = fmul fast float %622, 0x3F70101020000000
  %624 = lshr i32 %613, 16
  %625 = and i32 %624, 255
  %626 = uitofp i32 %625 to float
  %627 = fmul fast float %626, 0x3F70101020000000
  %628 = add i32 %28, 220
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = lshr i32 %630, 24
  %632 = uitofp i32 %631 to float
  %633 = fmul fast float %632, 0x3F70101020000000
  %634 = and i32 %630, 255
  %635 = uitofp i32 %634 to float
  %636 = fmul fast float %635, 0x3F70101020000000
  %637 = lshr i32 %630, 8
  %638 = and i32 %637, 255
  %639 = uitofp i32 %638 to float
  %640 = fmul fast float %639, 0x3F70101020000000
  %641 = lshr i32 %630, 16
  %642 = and i32 %641, 255
  %643 = uitofp i32 %642 to float
  %644 = fmul fast float %643, 0x3F70101020000000
  %645 = bitcast float %569 to i32
  %646 = ashr i32 %645, 1
  %647 = sub nsw i32 1597463174, %646
  %648 = bitcast i32 %647 to float
  %649 = fmul fast float %569, 5.000000e-01
  %650 = fmul fast float %648, %648
  %651 = fmul fast float %650, %649
  %652 = fsub fast float 1.500000e+00, %651
  %653 = fmul fast float %648, %569
  %654 = fmul fast float %653, %652
  %655 = bitcast float %570 to i32
  %656 = ashr i32 %655, 1
  %657 = sub nsw i32 1597463174, %656
  %658 = bitcast i32 %657 to float
  %659 = fmul fast float %570, 5.000000e-01
  %660 = fmul fast float %658, %658
  %661 = fmul fast float %660, %659
  %662 = fsub fast float 1.500000e+00, %661
  %663 = fmul fast float %658, %570
  %664 = fmul fast float %663, %662
  %665 = bitcast float %571 to i32
  %666 = ashr i32 %665, 1
  %667 = sub nsw i32 1597463174, %666
  %668 = bitcast i32 %667 to float
  %669 = fmul fast float %571, 5.000000e-01
  %670 = fmul fast float %668, %668
  %671 = fmul fast float %670, %669
  %672 = fsub fast float 1.500000e+00, %671
  %673 = fmul fast float %668, %571
  %674 = fmul fast float %673, %672
  %675 = fsub fast float %654, %636
  %676 = fsub fast float %664, %640
  %677 = fsub fast float %674, %644
  %678 = fmul fast float %675, %604
  %679 = fmul fast float %676, %606
  %680 = fmul fast float %677, %611
  %681 = fadd fast float %678, %619
  %682 = fadd fast float %679, %623
  %683 = fadd fast float %680, %627
  %684 = call float @dx.op.unary.f32(i32 7, float %681)  ; Saturate(value)
  %685 = call float @dx.op.unary.f32(i32 7, float %682)  ; Saturate(value)
  %686 = call float @dx.op.unary.f32(i32 7, float %683)  ; Saturate(value)
  %687 = fmul fast float %684, %684
  %688 = fmul fast float %685, %685
  %689 = fmul fast float %686, %686
  %690 = fsub fast float %687, %569
  %691 = fsub fast float %688, %570
  %692 = fsub fast float %689, %571
  %693 = fmul fast float %690, %594
  %694 = fmul fast float %691, %594
  %695 = fmul fast float %692, %594
  %696 = fadd fast float %693, %569
  %697 = fadd fast float %694, %570
  %698 = fadd fast float %695, %571
  %699 = fadd fast float %616, %580
  %700 = fsub fast float %699, %633
  %701 = call float @dx.op.unary.f32(i32 7, float %700)  ; Saturate(value)
  %702 = fsub fast float %701, %580
  %703 = fmul fast float %702, %594
  %704 = fadd fast float %703, %580
  br label %758

; <label>:705                                     ; preds = %593
  %706 = and i32 %596, 134217728
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %742, label %708

; <label>:708                                     ; preds = %705
  %709 = call float @dx.op.unary.f32(i32 24, float %240)  ; Sqrt(value)
  %710 = call float @dx.op.unary.f32(i32 24, float %244)  ; Sqrt(value)
  %711 = call float @dx.op.unary.f32(i32 24, float %248)  ; Sqrt(value)
  %712 = fadd fast float %709, -5.000000e-01
  %713 = fadd fast float %710, -5.000000e-01
  %714 = fadd fast float %711, -5.000000e-01
  %715 = fmul fast float %712, %594
  %716 = fmul fast float %713, %594
  %717 = fmul fast float %714, %594
  %718 = fadd fast float %715, 5.000000e-01
  %719 = fadd fast float %716, 5.000000e-01
  %720 = fadd fast float %717, 5.000000e-01
  %721 = call float @dx.op.unary.f32(i32 24, float %569)  ; Sqrt(value)
  %722 = call float @dx.op.unary.f32(i32 24, float %570)  ; Sqrt(value)
  %723 = call float @dx.op.unary.f32(i32 24, float %571)  ; Sqrt(value)
  %724 = fmul fast float %718, 2.000000e+00
  %725 = fsub fast float 1.000000e+00, %724
  %726 = fmul fast float %725, %721
  %727 = fadd fast float %726, %724
  %728 = fmul fast float %727, %721
  %729 = fmul fast float %719, 2.000000e+00
  %730 = fsub fast float 1.000000e+00, %729
  %731 = fmul fast float %730, %722
  %732 = fadd fast float %731, %729
  %733 = fmul fast float %732, %722
  %734 = fmul fast float %720, 2.000000e+00
  %735 = fsub fast float 1.000000e+00, %734
  %736 = fmul fast float %735, %723
  %737 = fadd fast float %736, %734
  %738 = fmul fast float %737, %723
  %739 = fmul fast float %728, %728
  %740 = fmul fast float %733, %733
  %741 = fmul fast float %738, %738
  br label %758

; <label>:742                                     ; preds = %705
  %743 = fmul fast float %240, %240
  %744 = fmul fast float %244, %244
  %745 = fmul fast float %248, %248
  %746 = fadd fast float %743, -1.000000e+00
  %747 = fadd fast float %744, -1.000000e+00
  %748 = fadd fast float %745, -1.000000e+00
  %749 = fmul fast float %594, %746
  %750 = fmul fast float %594, %747
  %751 = fmul fast float %594, %748
  %752 = fadd fast float %749, 1.000000e+00
  %753 = fadd fast float %750, 1.000000e+00
  %754 = fadd fast float %751, 1.000000e+00
  %755 = fmul fast float %752, %569
  %756 = fmul fast float %753, %570
  %757 = fmul fast float %754, %571
  br label %758

; <label>:758                                     ; preds = %742, %708, %599, %557
  %759 = phi float [ %704, %599 ], [ %580, %708 ], [ %580, %742 ], [ 0x3FA23C0BE0000000, %557 ]
  %760 = phi float [ %696, %599 ], [ %739, %708 ], [ %755, %742 ], [ 1.000000e+00, %557 ]
  %761 = phi float [ %697, %599 ], [ %740, %708 ], [ %756, %742 ], [ 1.000000e+00, %557 ]
  %762 = phi float [ %698, %599 ], [ %741, %708 ], [ %757, %742 ], [ 1.000000e+00, %557 ]
  %763 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.i32 %763, 1
  %765 = and i32 %764, 1
  %766 = icmp ne i32 %765, 0
  %767 = add i32 %28, 356
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = and i32 %769, 32
  %771 = icmp ne i32 %770, 0
  %772 = and i1 %766, %771
  %773 = select i1 %772, float 1.000000e+00, float %760
  %774 = select i1 %772, float 0x3FD3333340000000, float %761
  %775 = select i1 %772, float 0x3FD3333340000000, float %762
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = and i32 %777, 32
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %852, label %780

; <label>:780                                     ; preds = %758
  %781 = add i32 %28, 92
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = add i32 %28, 392
  %785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %784, i32 undef)  ; BufferLoad(srv,index,wot)
  %786 = extractvalue %dx.types.ResRet.i32 %785, 0
  %787 = add i32 %786, 0
  %788 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %787, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %789 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %788, %dx.types.Handle %68, float %558, float %559, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %790 = extractvalue %dx.types.ResRet.f32 %789, 0
  %791 = extractvalue %dx.types.ResRet.f32 %789, 1
  %792 = extractvalue %dx.types.ResRet.f32 %789, 2
  %793 = extractvalue %dx.types.ResRet.f32 %789, 3
  %794 = and i32 %783, 255
  %795 = uitofp i32 %794 to float
  %796 = lshr i32 %783, 8
  %797 = and i32 %796, 255
  %798 = uitofp i32 %797 to float
  %799 = lshr i32 %783, 16
  %800 = and i32 %799, 255
  %801 = uitofp i32 %800 to float
  %802 = fmul fast float %801, 0x3F70101000000000
  %803 = fmul fast float %790, %795
  %804 = fadd fast float %803, %798
  %805 = fmul fast float %804, 0x3F70101000000000
  %806 = fadd fast float %791, -5.000000e-01
  %807 = fadd fast float %793, -5.000000e-01
  %808 = fmul fast float %806, %802
  %809 = fmul fast float %807, %802
  %810 = fadd fast float %808, 5.000000e-01
  %811 = fadd fast float %809, 5.000000e-01
  %812 = fmul fast float %810, 2.000000e+00
  %813 = fadd fast float %812, -1.000000e+00
  %814 = fmul fast float %811, 2.000000e+00
  %815 = fadd fast float %814, -1.000000e+00
  %816 = fadd fast float %813, %815
  %817 = fmul fast float %816, 5.000000e-01
  %818 = fsub fast float %813, %815
  %819 = fmul fast float %818, 5.000000e-01
  %820 = call float @dx.op.unary.f32(i32 6, float %817)  ; FAbs(value)
  %821 = fsub fast float 1.000000e+00, %820
  %822 = call float @dx.op.unary.f32(i32 6, float %819)  ; FAbs(value)
  %823 = fsub fast float %821, %822
  %824 = call float @dx.op.dot3.f32(i32 55, float %817, float %819, float %823, float %817, float %819, float %823)  ; Dot3(ax,ay,az,bx,by,bz)
  %825 = call float @dx.op.unary.f32(i32 25, float %824)  ; Rsqrt(value)
  %826 = fmul fast float %817, %825
  %827 = fmul fast float %819, %825
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = and i32 %829, 67108864
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %848, label %832

; <label>:832                                     ; preds = %780
  %833 = add i32 %28, 280
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = and i32 %835, 65535
  %837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %836)  ; LegacyF16ToF32(value)
  %838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %839 = extractvalue %dx.types.ResRet.i32 %838, 0
  %840 = and i32 %839, 65535
  %841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %840)  ; LegacyF16ToF32(value)
  %842 = lshr i32 %835, 16
  %843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %842)  ; LegacyF16ToF32(value)
  %844 = fsub fast float %805, %843
  %845 = fmul fast float %844, %837
  %846 = fadd fast float %845, %841
  %847 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  br label %848

; <label>:848                                     ; preds = %832, %780
  %849 = phi float [ %847, %832 ], [ %805, %780 ]
  %850 = call float @dx.op.dot2.f32(i32 54, float %826, float %827, float %462, float %463)  ; Dot2(ax,ay,bx,by)
  %851 = call float @dx.op.dot2.f32(i32 54, float %826, float %827, float %464, float %465)  ; Dot2(ax,ay,bx,by)
  br label %852

; <label>:852                                     ; preds = %848, %758
  %853 = phi float [ %849, %848 ], [ 0x3FD6666660000000, %758 ]
  %854 = phi float [ %850, %848 ], [ 0.000000e+00, %758 ]
  %855 = phi float [ %851, %848 ], [ 0.000000e+00, %758 ]
  %856 = phi float [ %792, %848 ], [ 1.000000e+00, %758 ]
  %857 = add i32 %28, 160
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = lshr i32 %859, 22
  %861 = shl nuw nsw i32 %860, 5
  %862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %861)  ; LegacyF16ToF32(value)
  %863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.i32 %863, 0
  %865 = and i32 %864, 64
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %900, label %867

; <label>:867                                     ; preds = %852
  %868 = add i32 %28, 408
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %868, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = add i32 %870, 0
  %872 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %871, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = and i32 %874, 131072
  %876 = icmp eq i32 %875, 0
  %877 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %872, %dx.types.Handle %68, float %558, float %559, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %878 = extractvalue %dx.types.ResRet.f32 %877, 0
  %879 = extractvalue %dx.types.ResRet.f32 %877, 1
  %880 = extractvalue %dx.types.ResRet.f32 %877, 2
  %881 = fmul fast float %878, %228
  %882 = fmul fast float %879, %231
  %883 = fmul fast float %880, %234
  br i1 %876, label %890, label %884

; <label>:884                                     ; preds = %867
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 0
  %887 = fmul fast float %886, %881
  %888 = fmul fast float %886, %882
  %889 = fmul fast float %886, %883
  br label %890

; <label>:890                                     ; preds = %884, %867
  %891 = phi float [ %887, %884 ], [ %881, %867 ]
  %892 = phi float [ %888, %884 ], [ %882, %867 ]
  %893 = phi float [ %889, %884 ], [ %883, %867 ]
  %894 = fmul fast float %891, %862
  %895 = select i1 %211, float %894, float %891
  %896 = call float @dx.op.dot3.f32(i32 55, float %895, float %892, float %893, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %897 = select i1 %211, float 0.000000e+00, float %891
  %898 = select i1 %211, float %896, float %892
  %899 = select i1 %211, float 0.000000e+00, float %893
  br label %900

; <label>:900                                     ; preds = %890, %852
  %901 = phi float [ %897, %890 ], [ 0.000000e+00, %852 ]
  %902 = phi float [ %898, %890 ], [ 0.000000e+00, %852 ]
  %903 = phi float [ %899, %890 ], [ 0.000000e+00, %852 ]
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = and i32 %905, 16384
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %926, label %908

; <label>:908                                     ; preds = %900
  %909 = and i32 %905, 1048576
  %910 = icmp ne i32 %909, 0
  %911 = add i32 %28, 476
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = add i32 %913, 0
  %915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %914, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %916 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %915, %dx.types.Handle %69, float %558, float %559, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %917 = extractvalue %dx.types.ResRet.f32 %916, 0
  %918 = add i32 %28, 96
  %919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %920 = extractvalue %dx.types.ResRet.i32 %919, 0
  %921 = lshr i32 %920, 24
  %922 = uitofp i32 %921 to float
  %923 = fmul fast float %917, 0x3F70101020000000
  %924 = select i1 %910, float 0x3F70101020000000, float %923
  %925 = fmul fast float %924, %922
  br label %926

; <label>:926                                     ; preds = %908, %900
  %927 = phi float [ %925, %908 ], [ 0.000000e+00, %900 ]
  %928 = add i32 %28, 96
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = and i32 %930, 255
  %932 = uitofp i32 %931 to float
  %933 = lshr i32 %930, 8
  %934 = and i32 %933, 255
  %935 = uitofp i32 %934 to float
  %936 = call float @dx.op.dot3.f32(i32 55, float %773, float %774, float %775, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %937 = fmul fast float %935, %936
  %938 = fadd fast float %937, %932
  %939 = fmul fast float %938, 0x3F70101020000000
  %940 = call float @dx.op.unary.f32(i32 7, float %939)  ; Saturate(value)
  br label %941

; <label>:941                                     ; preds = %926, %444
  %942 = phi float [ 0.000000e+00, %444 ], [ %854, %926 ]
  %943 = phi float [ 0.000000e+00, %444 ], [ %855, %926 ]
  %944 = phi float [ 0.000000e+00, %444 ], [ %773, %926 ]
  %945 = phi float [ 0.000000e+00, %444 ], [ %774, %926 ]
  %946 = phi float [ 0.000000e+00, %444 ], [ %775, %926 ]
  %947 = phi float [ 0.000000e+00, %444 ], [ %901, %926 ]
  %948 = phi float [ 0.000000e+00, %444 ], [ %902, %926 ]
  %949 = phi float [ 0.000000e+00, %444 ], [ %903, %926 ]
  %950 = phi float [ 0.000000e+00, %444 ], [ %759, %926 ]
  %951 = phi float [ 0.000000e+00, %444 ], [ 1.000000e+00, %926 ]
  %952 = phi float [ 0.000000e+00, %444 ], [ %853, %926 ]
  %953 = phi float [ 0.000000e+00, %444 ], [ %856, %926 ]
  %954 = phi float [ 0.000000e+00, %444 ], [ %927, %926 ]
  %955 = phi float [ 0.000000e+00, %444 ], [ %940, %926 ]
  br i1 %395, label %1716, label %956

; <label>:956                                     ; preds = %941
  %957 = icmp ult i32 %450, 2
  %958 = add i32 %28, 40
  %959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %960 = extractvalue %dx.types.ResRet.i32 %959, 0
  %961 = add i32 %28, 44
  %962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %963 = extractvalue %dx.types.ResRet.i32 %962, 0
  %964 = or i32 %963, %960
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %1716, label %966

; <label>:966                                     ; preds = %956
  %967 = and i32 %960, 262144
  %968 = icmp ne i32 %967, 0
  %969 = select i1 %968, float %33, float 1.000000e+00
  %970 = select i1 %968, float %34, float 0.000000e+00
  %971 = select i1 %968, float %35, float 0.000000e+00
  %972 = select i1 %968, float %36, float 1.000000e+00
  %973 = select i1 %968, float %37, float %60
  %974 = select i1 %968, float %38, float %61
  %975 = add i32 %28, 300
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = lshr i32 %977, 16
  %979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %978)  ; LegacyF16ToF32(value)
  %980 = fmul fast float %979, 0x3F50624DE0000000
  %981 = add i32 %28, 104
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = lshr i32 %983, 16
  %985 = and i32 %984, 255
  %986 = lshr i32 %983, 24
  %987 = add i32 %28, 308
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = and i32 %989, 65535
  %991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %990)  ; LegacyF16ToF32(value)
  %992 = lshr i32 %989, 16
  %993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %992)  ; LegacyF16ToF32(value)
  %994 = add i32 %28, 48
  %995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = lshr i32 %996, 22
  %998 = shl nuw nsw i32 %997, 5
  %999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %998)  ; LegacyF16ToF32(value)
  %1000 = shl i32 %996, 4
  %1001 = and i32 %1000, 32752
  %1002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1001)  ; LegacyF16ToF32(value)
  %1003 = lshr i32 %996, 7
  %1004 = and i32 %1003, 32752
  %1005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1004)  ; LegacyF16ToF32(value)
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 3
  %1008 = fmul fast float %1007, 1.000000e+03
  %1009 = fmul fast float %305, %1008
  %1010 = call float @dx.op.unary.f32(i32 22, float %1009)  ; Frc(value)
  %1011 = fadd fast float %1010, %295
  %1012 = fmul fast float %306, %1008
  %1013 = call float @dx.op.unary.f32(i32 22, float %1012)  ; Frc(value)
  %1014 = fadd fast float %1013, %297
  %1015 = fmul fast float %980, %1008
  %1016 = call float @dx.op.unary.f32(i32 22, float %1015)  ; Frc(value)
  %1017 = fmul fast float %1016, 0x401921FB60000000
  %1018 = fadd fast float %1017, %999
  %1019 = call float @dx.op.unary.f32(i32 13, float %1018)  ; Sin(value)
  %1020 = call float @dx.op.unary.f32(i32 12, float %1018)  ; Cos(value)
  %1021 = fsub fast float -0.000000e+00, %1019
  %1022 = fadd fast float %973, -5.000000e-01
  %1023 = fadd fast float %974, -5.000000e-01
  %1024 = fmul fast float %991, %1022
  %1025 = fmul fast float %993, %1023
  %1026 = fadd fast float %1024, 5.000000e-01
  %1027 = fadd fast float %1025, 5.000000e-01
  %1028 = fmul fast float %1002, %1026
  %1029 = fmul fast float %1005, %1027
  %1030 = fmul fast float %1020, %1028
  %1031 = call float @dx.op.tertiary.f32(i32 46, float %1021, float %1029, float %1030)  ; FMad(a,b,c)
  %1032 = fmul fast float %1019, %1028
  %1033 = call float @dx.op.tertiary.f32(i32 46, float %1020, float %1029, float %1032)  ; FMad(a,b,c)
  %1034 = fadd fast float %1011, %1031
  %1035 = fadd fast float %1014, %1033
  %1036 = icmp ugt i32 %985, 1
  %1037 = icmp ugt i32 %983, 33554431
  %1038 = or i1 %1037, %1036
  br i1 %1038, label %1039, label %1064

; <label>:1039                                    ; preds = %966
  %1040 = add i32 %28, 244
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1040, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = lshr i32 %1042, 16
  %1044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1043)  ; LegacyF16ToF32(value)
  %1045 = fmul fast float %1007, %1044
  %1046 = call float @dx.op.unary.f32(i32 22, float %1045)  ; Frc(value)
  %1047 = mul nuw nsw i32 %985, %986
  %1048 = uitofp i32 %1047 to float
  %1049 = fmul fast float %1046, %1048
  %1050 = call float @dx.op.unary.f32(i32 27, float %1049)  ; Round_ni(value)
  %1051 = fptoui float %1050 to i32
  %1052 = urem i32 %1051, %985
  %1053 = udiv i32 %1051, %986
  %1054 = call float @dx.op.unary.f32(i32 22, float %1034)  ; Frc(value)
  %1055 = call float @dx.op.unary.f32(i32 22, float %1035)  ; Frc(value)
  %1056 = uitofp i32 %1052 to float
  %1057 = uitofp i32 %1053 to float
  %1058 = fadd fast float %1054, %1056
  %1059 = fadd fast float %1055, %1057
  %1060 = uitofp i32 %985 to float
  %1061 = uitofp i32 %986 to float
  %1062 = fdiv fast float %1058, %1060
  %1063 = fdiv fast float %1059, %1061
  br label %1064

; <label>:1064                                    ; preds = %1039, %966
  %1065 = phi float [ %1062, %1039 ], [ %1034, %966 ]
  %1066 = phi float [ %1063, %1039 ], [ %1035, %966 ]
  %1067 = and i32 %960, 256
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %1115, label %1069

; <label>:1069                                    ; preds = %1064
  %1070 = add i32 %28, 444
  %1071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.i32 %1071, 0
  %1073 = add i32 %1072, 0
  %1074 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1073, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1075 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1074, %dx.types.Handle %69, float %1065, float %1066, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1076 = extractvalue %dx.types.ResRet.f32 %1075, 0
  %1077 = add i32 %28, 116
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = shl i32 %1079, 4
  %1081 = and i32 %1080, 32752
  %1082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1081)  ; LegacyF16ToF32(value)
  %1083 = lshr i32 %1079, 7
  %1084 = and i32 %1083, 32752
  %1085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1084)  ; LegacyF16ToF32(value)
  %1086 = fsub fast float 1.000000e+00, %447
  %1087 = call float @dx.op.binary.f32(i32 35, float %1086, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1088 = bitcast float %447 to i32
  %1089 = sitofp i32 %1088 to float
  %1090 = fadd fast float %1089, 0xC1CFBF8940000000
  %1091 = fmul fast float %1085, %1090
  %1092 = fadd fast float %1091, 0x41CFBF8940000000
  %1093 = fptosi float %1092 to i32
  %1094 = bitcast i32 %1093 to float
  %1095 = bitcast float %1087 to i32
  %1096 = sitofp i32 %1095 to float
  %1097 = fadd fast float %1096, 0xC1CFBF8940000000
  %1098 = fmul fast float %1097, %1085
  %1099 = fadd fast float %1098, 0x41CFBF8940000000
  %1100 = fptosi float %1099 to i32
  %1101 = bitcast i32 %1100 to float
  %1102 = fmul fast float %1094, %1082
  %1103 = fmul fast float %1101, %1082
  %1104 = fsub fast float %1087, %1102
  %1105 = fadd fast float %1103, %1087
  %1106 = call float @dx.op.unary.f32(i32 7, float %1104)  ; Saturate(value)
  %1107 = call float @dx.op.unary.f32(i32 7, float %1105)  ; Saturate(value)
  %1108 = fsub fast float %1076, %1106
  %1109 = fsub fast float %1107, %1106
  %1110 = bitcast float %1109 to i32
  %1111 = sub nsw i32 2129859010, %1110
  %1112 = bitcast i32 %1111 to float
  %1113 = fmul fast float %1112, %1108
  %1114 = call float @dx.op.unary.f32(i32 7, float %1113)  ; Saturate(value)
  br label %1115

; <label>:1115                                    ; preds = %1069, %1064
  %1116 = phi float [ %1114, %1069 ], [ %447, %1064 ]
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = and i32 %1118, 128
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1137, label %1121

; <label>:1121                                    ; preds = %1115
  %1122 = add i32 %28, 428
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1122, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = add i32 %1124, 0
  %1126 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1125, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1127 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1126, %dx.types.Handle %69, float %1065, float %1066, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1128 = extractvalue %dx.types.ResRet.f32 %1127, 0
  %1129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.i32 %1129, 0
  %1131 = and i32 %1130, 524288
  %1132 = icmp ne i32 %1131, 0
  %1133 = fcmp fast ogt float %1128, 0x3FE0101020000000
  %1134 = select i1 %1133, float 1.000000e+00, float 0.000000e+00
  %1135 = select i1 %1132, float %1134, float %1128
  %1136 = fmul fast float %1135, %1116
  br label %1137

; <label>:1137                                    ; preds = %1121, %1115
  %1138 = phi float [ %1136, %1121 ], [ %1116, %1115 ]
  %1139 = fcmp fast ult float %1138, 0x3F70101020000000
  br i1 %1139, label %1716, label %1140

; <label>:1140                                    ; preds = %1137
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = and i32 %1142, 16
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1343, label %1145

; <label>:1145                                    ; preds = %1140
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = add i32 %28, 380
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = add i32 %1150, 0
  %1152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1151, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1153 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1152, %dx.types.Handle %68, float %1065, float %1066, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1154 = extractvalue %dx.types.ResRet.f32 %1153, 0
  %1155 = extractvalue %dx.types.ResRet.f32 %1153, 1
  %1156 = extractvalue %dx.types.ResRet.f32 %1153, 2
  %1157 = extractvalue %dx.types.ResRet.f32 %1153, 3
  %1158 = and i32 %1147, 255
  %1159 = uitofp i32 %1158 to float
  %1160 = lshr i32 %1147, 8
  %1161 = and i32 %1160, 255
  %1162 = uitofp i32 %1161 to float
  %1163 = fmul fast float %1157, %1159
  %1164 = fadd fast float %1163, %1162
  %1165 = fmul fast float %1164, 0x3F70101000000000
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = and i32 %1167, 512
  %1169 = icmp eq i32 %1168, 0
  br i1 %1169, label %1178, label %1170

; <label>:1170                                    ; preds = %1145
  %1171 = add i32 %28, 464
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = add i32 %1173, 0
  %1175 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1174, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1176 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1175, %dx.types.Handle %69, float %1065, float %1066, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1177 = extractvalue %dx.types.ResRet.f32 %1176, 0
  br label %1178

; <label>:1178                                    ; preds = %1170, %1145
  %1179 = phi float [ %1177, %1170 ], [ 1.000000e+00, %1145 ]
  %1180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.i32 %1180, 0
  %1182 = and i32 %1181, 33554432
  %1183 = icmp eq i32 %1182, 0
  br i1 %1183, label %1290, label %1184

; <label>:1184                                    ; preds = %1178
  %1185 = add i32 %28, 240
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = and i32 %1187, 65535
  %1189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1188)  ; LegacyF16ToF32(value)
  %1190 = lshr i32 %1187, 16
  %1191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1190)  ; LegacyF16ToF32(value)
  %1192 = add i32 %28, 244
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = and i32 %1194, 65535
  %1196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1195)  ; LegacyF16ToF32(value)
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = lshr i32 %1198, 24
  %1200 = uitofp i32 %1199 to float
  %1201 = fmul fast float %1200, 0x3F70101020000000
  %1202 = and i32 %1198, 255
  %1203 = uitofp i32 %1202 to float
  %1204 = fmul fast float %1203, 0x3F70101020000000
  %1205 = lshr i32 %1198, 8
  %1206 = and i32 %1205, 255
  %1207 = uitofp i32 %1206 to float
  %1208 = fmul fast float %1207, 0x3F70101020000000
  %1209 = lshr i32 %1198, 16
  %1210 = and i32 %1209, 255
  %1211 = uitofp i32 %1210 to float
  %1212 = fmul fast float %1211, 0x3F70101020000000
  %1213 = add i32 %28, 236
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = lshr i32 %1215, 24
  %1217 = uitofp i32 %1216 to float
  %1218 = fmul fast float %1217, 0x3F70101020000000
  %1219 = and i32 %1215, 255
  %1220 = uitofp i32 %1219 to float
  %1221 = fmul fast float %1220, 0x3F70101020000000
  %1222 = lshr i32 %1215, 8
  %1223 = and i32 %1222, 255
  %1224 = uitofp i32 %1223 to float
  %1225 = fmul fast float %1224, 0x3F70101020000000
  %1226 = lshr i32 %1215, 16
  %1227 = and i32 %1226, 255
  %1228 = uitofp i32 %1227 to float
  %1229 = fmul fast float %1228, 0x3F70101020000000
  %1230 = bitcast float %1154 to i32
  %1231 = ashr i32 %1230, 1
  %1232 = sub nsw i32 1597463174, %1231
  %1233 = bitcast i32 %1232 to float
  %1234 = fmul fast float %1154, 5.000000e-01
  %1235 = fmul fast float %1233, %1233
  %1236 = fmul fast float %1235, %1234
  %1237 = fsub fast float 1.500000e+00, %1236
  %1238 = fmul fast float %1233, %1154
  %1239 = fmul fast float %1238, %1237
  %1240 = bitcast float %1155 to i32
  %1241 = ashr i32 %1240, 1
  %1242 = sub nsw i32 1597463174, %1241
  %1243 = bitcast i32 %1242 to float
  %1244 = fmul fast float %1155, 5.000000e-01
  %1245 = fmul fast float %1243, %1243
  %1246 = fmul fast float %1245, %1244
  %1247 = fsub fast float 1.500000e+00, %1246
  %1248 = fmul fast float %1243, %1155
  %1249 = fmul fast float %1248, %1247
  %1250 = bitcast float %1156 to i32
  %1251 = ashr i32 %1250, 1
  %1252 = sub nsw i32 1597463174, %1251
  %1253 = bitcast i32 %1252 to float
  %1254 = fmul fast float %1156, 5.000000e-01
  %1255 = fmul fast float %1253, %1253
  %1256 = fmul fast float %1255, %1254
  %1257 = fsub fast float 1.500000e+00, %1256
  %1258 = fmul fast float %1253, %1156
  %1259 = fmul fast float %1258, %1257
  %1260 = fsub fast float %1239, %1221
  %1261 = fsub fast float %1249, %1225
  %1262 = fsub fast float %1259, %1229
  %1263 = fmul fast float %1260, %1189
  %1264 = fmul fast float %1261, %1191
  %1265 = fmul fast float %1262, %1196
  %1266 = fadd fast float %1263, %1204
  %1267 = fadd fast float %1264, %1208
  %1268 = fadd fast float %1265, %1212
  %1269 = call float @dx.op.unary.f32(i32 7, float %1266)  ; Saturate(value)
  %1270 = call float @dx.op.unary.f32(i32 7, float %1267)  ; Saturate(value)
  %1271 = call float @dx.op.unary.f32(i32 7, float %1268)  ; Saturate(value)
  %1272 = fmul fast float %1269, %1269
  %1273 = fmul fast float %1270, %1270
  %1274 = fmul fast float %1271, %1271
  %1275 = fsub fast float %1272, %1154
  %1276 = fsub fast float %1273, %1155
  %1277 = fsub fast float %1274, %1156
  %1278 = fmul fast float %1275, %1179
  %1279 = fmul fast float %1276, %1179
  %1280 = fmul fast float %1277, %1179
  %1281 = fadd fast float %1278, %1154
  %1282 = fadd fast float %1279, %1155
  %1283 = fadd fast float %1280, %1156
  %1284 = fadd fast float %1201, %1165
  %1285 = fsub fast float %1284, %1218
  %1286 = call float @dx.op.unary.f32(i32 7, float %1285)  ; Saturate(value)
  %1287 = fsub fast float %1286, %1165
  %1288 = fmul fast float %1287, %1179
  %1289 = fadd fast float %1288, %1165
  br label %1343

; <label>:1290                                    ; preds = %1178
  %1291 = and i32 %1181, 134217728
  %1292 = icmp eq i32 %1291, 0
  br i1 %1292, label %1327, label %1293

; <label>:1293                                    ; preds = %1290
  %1294 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %1295 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %1296 = call float @dx.op.unary.f32(i32 24, float %290)  ; Sqrt(value)
  %1297 = fadd fast float %1294, -5.000000e-01
  %1298 = fadd fast float %1295, -5.000000e-01
  %1299 = fadd fast float %1296, -5.000000e-01
  %1300 = fmul fast float %1297, %1179
  %1301 = fmul fast float %1298, %1179
  %1302 = fmul fast float %1299, %1179
  %1303 = fadd fast float %1300, 5.000000e-01
  %1304 = fadd fast float %1301, 5.000000e-01
  %1305 = fadd fast float %1302, 5.000000e-01
  %1306 = call float @dx.op.unary.f32(i32 24, float %1154)  ; Sqrt(value)
  %1307 = call float @dx.op.unary.f32(i32 24, float %1155)  ; Sqrt(value)
  %1308 = call float @dx.op.unary.f32(i32 24, float %1156)  ; Sqrt(value)
  %1309 = fmul fast float %1303, 2.000000e+00
  %1310 = fsub fast float 1.000000e+00, %1309
  %1311 = fmul fast float %1310, %1306
  %1312 = fadd fast float %1311, %1309
  %1313 = fmul fast float %1312, %1306
  %1314 = fmul fast float %1304, 2.000000e+00
  %1315 = fsub fast float 1.000000e+00, %1314
  %1316 = fmul fast float %1315, %1307
  %1317 = fadd fast float %1316, %1314
  %1318 = fmul fast float %1317, %1307
  %1319 = fmul fast float %1305, 2.000000e+00
  %1320 = fsub fast float 1.000000e+00, %1319
  %1321 = fmul fast float %1320, %1308
  %1322 = fadd fast float %1321, %1319
  %1323 = fmul fast float %1322, %1308
  %1324 = fmul fast float %1313, %1313
  %1325 = fmul fast float %1318, %1318
  %1326 = fmul fast float %1323, %1323
  br label %1343

; <label>:1327                                    ; preds = %1290
  %1328 = fmul fast float %282, %282
  %1329 = fmul fast float %286, %286
  %1330 = fmul fast float %290, %290
  %1331 = fadd fast float %1328, -1.000000e+00
  %1332 = fadd fast float %1329, -1.000000e+00
  %1333 = fadd fast float %1330, -1.000000e+00
  %1334 = fmul fast float %1179, %1331
  %1335 = fmul fast float %1179, %1332
  %1336 = fmul fast float %1179, %1333
  %1337 = fadd fast float %1334, 1.000000e+00
  %1338 = fadd fast float %1335, 1.000000e+00
  %1339 = fadd fast float %1336, 1.000000e+00
  %1340 = fmul fast float %1337, %1154
  %1341 = fmul fast float %1338, %1155
  %1342 = fmul fast float %1339, %1156
  br label %1343

; <label>:1343                                    ; preds = %1327, %1293, %1184, %1140
  %1344 = phi float [ %1289, %1184 ], [ %1165, %1293 ], [ %1165, %1327 ], [ 0x3FA23C0BE0000000, %1140 ]
  %1345 = phi float [ %1281, %1184 ], [ %1324, %1293 ], [ %1340, %1327 ], [ 1.000000e+00, %1140 ]
  %1346 = phi float [ %1282, %1184 ], [ %1325, %1293 ], [ %1341, %1327 ], [ 1.000000e+00, %1140 ]
  %1347 = phi float [ %1283, %1184 ], [ %1326, %1293 ], [ %1342, %1327 ], [ 1.000000e+00, %1140 ]
  %1348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1349 = extractvalue %dx.types.CBufRet.i32 %1348, 1
  %1350 = and i32 %1349, 1
  %1351 = icmp ne i32 %1350, 0
  %1352 = add i32 %28, 356
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = and i32 %1354, 32
  %1356 = icmp ne i32 %1355, 0
  %1357 = and i1 %1351, %1356
  %1358 = select i1 %1357, float 1.000000e+00, float %1345
  %1359 = select i1 %1357, float 0x3FD3333340000000, float %1346
  %1360 = select i1 %1357, float 0x3FD3333340000000, float %1347
  %1361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %1362 = extractvalue %dx.types.ResRet.i32 %1361, 0
  %1363 = and i32 %1362, 32
  %1364 = icmp eq i32 %1363, 0
  br i1 %1364, label %1437, label %1365

; <label>:1365                                    ; preds = %1343
  %1366 = add i32 %28, 108
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = add i32 %28, 396
  %1370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1369, i32 undef)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.i32 %1370, 0
  %1372 = add i32 %1371, 0
  %1373 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1372, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1374 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1373, %dx.types.Handle %68, float %1065, float %1066, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1375 = extractvalue %dx.types.ResRet.f32 %1374, 0
  %1376 = extractvalue %dx.types.ResRet.f32 %1374, 1
  %1377 = extractvalue %dx.types.ResRet.f32 %1374, 2
  %1378 = extractvalue %dx.types.ResRet.f32 %1374, 3
  %1379 = and i32 %1368, 255
  %1380 = uitofp i32 %1379 to float
  %1381 = lshr i32 %1368, 8
  %1382 = and i32 %1381, 255
  %1383 = uitofp i32 %1382 to float
  %1384 = lshr i32 %1368, 16
  %1385 = and i32 %1384, 255
  %1386 = uitofp i32 %1385 to float
  %1387 = fmul fast float %1386, 0x3F70101000000000
  %1388 = fmul fast float %1375, %1380
  %1389 = fadd fast float %1388, %1383
  %1390 = fmul fast float %1389, 0x3F70101000000000
  %1391 = fadd fast float %1376, -5.000000e-01
  %1392 = fadd fast float %1378, -5.000000e-01
  %1393 = fmul fast float %1391, %1387
  %1394 = fmul fast float %1392, %1387
  %1395 = fadd fast float %1393, 5.000000e-01
  %1396 = fadd fast float %1394, 5.000000e-01
  %1397 = fmul fast float %1395, 2.000000e+00
  %1398 = fadd fast float %1397, -1.000000e+00
  %1399 = fmul fast float %1396, 2.000000e+00
  %1400 = fadd fast float %1399, -1.000000e+00
  %1401 = fadd fast float %1398, %1400
  %1402 = fmul fast float %1401, 5.000000e-01
  %1403 = fsub fast float %1398, %1400
  %1404 = fmul fast float %1403, 5.000000e-01
  %1405 = call float @dx.op.unary.f32(i32 6, float %1402)  ; FAbs(value)
  %1406 = fsub fast float 1.000000e+00, %1405
  %1407 = call float @dx.op.unary.f32(i32 6, float %1404)  ; FAbs(value)
  %1408 = fsub fast float %1406, %1407
  %1409 = call float @dx.op.dot3.f32(i32 55, float %1402, float %1404, float %1408, float %1402, float %1404, float %1408)  ; Dot3(ax,ay,az,bx,by,bz)
  %1410 = call float @dx.op.unary.f32(i32 25, float %1409)  ; Rsqrt(value)
  %1411 = fmul fast float %1402, %1410
  %1412 = fmul fast float %1404, %1410
  %1413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %1414 = extractvalue %dx.types.ResRet.i32 %1413, 0
  %1415 = and i32 %1414, 67108864
  %1416 = icmp eq i32 %1415, 0
  br i1 %1416, label %1433, label %1417

; <label>:1417                                    ; preds = %1365
  %1418 = add i32 %28, 296
  %1419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1418, i32 undef)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.i32 %1419, 0
  %1421 = and i32 %1420, 65535
  %1422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1421)  ; LegacyF16ToF32(value)
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = and i32 %1424, 65535
  %1426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1425)  ; LegacyF16ToF32(value)
  %1427 = lshr i32 %1420, 16
  %1428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1427)  ; LegacyF16ToF32(value)
  %1429 = fsub fast float %1390, %1428
  %1430 = fmul fast float %1429, %1422
  %1431 = fadd fast float %1430, %1426
  %1432 = call float @dx.op.unary.f32(i32 7, float %1431)  ; Saturate(value)
  br label %1433

; <label>:1433                                    ; preds = %1417, %1365
  %1434 = phi float [ %1432, %1417 ], [ %1390, %1365 ]
  %1435 = call float @dx.op.dot2.f32(i32 54, float %1411, float %1412, float %969, float %970)  ; Dot2(ax,ay,bx,by)
  %1436 = call float @dx.op.dot2.f32(i32 54, float %1411, float %1412, float %971, float %972)  ; Dot2(ax,ay,bx,by)
  br label %1437

; <label>:1437                                    ; preds = %1433, %1343
  %1438 = phi float [ %1434, %1433 ], [ 0x3FD6666660000000, %1343 ]
  %1439 = phi float [ %1435, %1433 ], [ 0.000000e+00, %1343 ]
  %1440 = phi float [ %1436, %1433 ], [ 0.000000e+00, %1343 ]
  %1441 = phi float [ %1377, %1433 ], [ 1.000000e+00, %1343 ]
  %1442 = add i32 %28, 176
  %1443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1442, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.i32 %1443, 0
  %1445 = lshr i32 %1444, 22
  %1446 = shl nuw nsw i32 %1445, 5
  %1447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1446)  ; LegacyF16ToF32(value)
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = and i32 %1449, 64
  %1451 = icmp eq i32 %1450, 0
  br i1 %1451, label %1485, label %1452

; <label>:1452                                    ; preds = %1437
  %1453 = add i32 %28, 412
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = add i32 %1455, 0
  %1457 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1456, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %1459 = extractvalue %dx.types.ResRet.i32 %1458, 0
  %1460 = and i32 %1459, 131072
  %1461 = icmp eq i32 %1460, 0
  %1462 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1457, %dx.types.Handle %68, float %1065, float %1066, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1463 = extractvalue %dx.types.ResRet.f32 %1462, 0
  %1464 = extractvalue %dx.types.ResRet.f32 %1462, 1
  %1465 = extractvalue %dx.types.ResRet.f32 %1462, 2
  %1466 = fmul fast float %1463, %270
  %1467 = fmul fast float %1464, %273
  %1468 = fmul fast float %1465, %276
  br i1 %1461, label %1475, label %1469

; <label>:1469                                    ; preds = %1452
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 0
  %1472 = fmul fast float %1471, %1466
  %1473 = fmul fast float %1471, %1467
  %1474 = fmul fast float %1471, %1468
  br label %1475

; <label>:1475                                    ; preds = %1469, %1452
  %1476 = phi float [ %1472, %1469 ], [ %1466, %1452 ]
  %1477 = phi float [ %1473, %1469 ], [ %1467, %1452 ]
  %1478 = phi float [ %1474, %1469 ], [ %1468, %1452 ]
  %1479 = fmul fast float %1476, %1447
  %1480 = select i1 %211, float %1479, float %1476
  %1481 = call float @dx.op.dot3.f32(i32 55, float %1480, float %1477, float %1478, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1482 = select i1 %211, float 0.000000e+00, float %1476
  %1483 = select i1 %211, float %1481, float %1477
  %1484 = select i1 %211, float 0.000000e+00, float %1478
  br label %1485

; <label>:1485                                    ; preds = %1475, %1437
  %1486 = phi float [ %1482, %1475 ], [ 0.000000e+00, %1437 ]
  %1487 = phi float [ %1483, %1475 ], [ 0.000000e+00, %1437 ]
  %1488 = phi float [ %1484, %1475 ], [ 0.000000e+00, %1437 ]
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = and i32 %1490, 16384
  %1492 = icmp eq i32 %1491, 0
  br i1 %1492, label %1511, label %1493

; <label>:1493                                    ; preds = %1485
  %1494 = and i32 %1490, 1048576
  %1495 = icmp ne i32 %1494, 0
  %1496 = add i32 %28, 480
  %1497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1496, i32 undef)  ; BufferLoad(srv,index,wot)
  %1498 = extractvalue %dx.types.ResRet.i32 %1497, 0
  %1499 = add i32 %1498, 0
  %1500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1499, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1501 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1500, %dx.types.Handle %69, float %1065, float %1066, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1502 = extractvalue %dx.types.ResRet.f32 %1501, 0
  %1503 = add i32 %28, 112
  %1504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1505 = extractvalue %dx.types.ResRet.i32 %1504, 0
  %1506 = lshr i32 %1505, 24
  %1507 = uitofp i32 %1506 to float
  %1508 = fmul fast float %1502, 0x3F70101020000000
  %1509 = select i1 %1495, float 0x3F70101020000000, float %1508
  %1510 = fmul fast float %1509, %1507
  br label %1511

; <label>:1511                                    ; preds = %1493, %1485
  %1512 = phi float [ %1510, %1493 ], [ 0.000000e+00, %1485 ]
  %1513 = add i32 %28, 112
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1513, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = and i32 %1515, 255
  %1517 = uitofp i32 %1516 to float
  %1518 = lshr i32 %1515, 8
  %1519 = and i32 %1518, 255
  %1520 = uitofp i32 %1519 to float
  %1521 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1522 = fmul fast float %1520, %1521
  %1523 = fadd fast float %1522, %1517
  %1524 = fmul fast float %1523, 0x3F70101020000000
  %1525 = call float @dx.op.unary.f32(i32 7, float %1524)  ; Saturate(value)
  br i1 %957, label %1526, label %1534

; <label>:1526                                    ; preds = %1511
  %1527 = fsub fast float 1.000000e+00, %1138
  %1528 = fmul fast float %1527, %944
  %1529 = fmul fast float %1527, %945
  %1530 = fmul fast float %1527, %946
  %1531 = fmul fast float %1527, %947
  %1532 = fmul fast float %1527, %948
  %1533 = fmul fast float %1527, %949
  br label %1534

; <label>:1534                                    ; preds = %1526, %1511
  %1535 = phi float [ %1528, %1526 ], [ %944, %1511 ]
  %1536 = phi float [ %1529, %1526 ], [ %945, %1511 ]
  %1537 = phi float [ %1530, %1526 ], [ %946, %1511 ]
  %1538 = phi float [ %1531, %1526 ], [ %947, %1511 ]
  %1539 = phi float [ %1532, %1526 ], [ %948, %1511 ]
  %1540 = phi float [ %1533, %1526 ], [ %949, %1511 ]
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = and i32 %1542, 3
  %1544 = icmp eq i32 %1543, 3
  br i1 %1544, label %1623, label %1545

; <label>:1545                                    ; preds = %1534
  %1546 = and i32 %1542, 16
  %1547 = icmp ne i32 %1546, 0
  %1548 = select i1 %1547, float %1138, float 0.000000e+00
  %1549 = icmp eq i32 %1543, 0
  br i1 %1549, label %1550, label %1578

; <label>:1550                                    ; preds = %1545
  %1551 = and i32 %1542, 64
  %1552 = icmp ne i32 %1551, 0
  %1553 = select i1 %1552, float %1138, float 0.000000e+00
  %1554 = fsub fast float %1358, %1535
  %1555 = fsub fast float %1359, %1536
  %1556 = fsub fast float %1360, %1537
  %1557 = fmul fast float %1548, %1554
  %1558 = fmul fast float %1548, %1555
  %1559 = fmul fast float %1548, %1556
  %1560 = fadd fast float %1557, %1535
  %1561 = fadd fast float %1558, %1536
  %1562 = fadd fast float %1559, %1537
  %1563 = fsub fast float %1344, %950
  %1564 = fmul fast float %1548, %1563
  %1565 = fadd fast float %1564, %950
  %1566 = fsub fast float %1486, %1538
  %1567 = fsub fast float %1487, %1539
  %1568 = fsub fast float %1488, %1540
  %1569 = fmul fast float %1553, %1566
  %1570 = fmul fast float %1553, %1567
  %1571 = fmul fast float %1553, %1568
  %1572 = fadd fast float %1569, %1538
  %1573 = fadd fast float %1570, %1539
  %1574 = fadd fast float %1571, %1540
  %1575 = fsub fast float %1525, %955
  %1576 = fmul fast float %1548, %1575
  %1577 = fadd fast float %1576, %955
  br label %1623

; <label>:1578                                    ; preds = %1545
  %1579 = icmp eq i32 %1543, 1
  br i1 %1579, label %1580, label %1593

; <label>:1580                                    ; preds = %1578
  %1581 = fadd fast float %1358, -1.000000e+00
  %1582 = fadd fast float %1359, -1.000000e+00
  %1583 = fadd fast float %1360, -1.000000e+00
  %1584 = fmul fast float %1548, %1581
  %1585 = fmul fast float %1548, %1582
  %1586 = fmul fast float %1548, %1583
  %1587 = fadd fast float %1584, 1.000000e+00
  %1588 = fadd fast float %1585, 1.000000e+00
  %1589 = fadd fast float %1586, 1.000000e+00
  %1590 = fmul fast float %1587, %1535
  %1591 = fmul fast float %1588, %1536
  %1592 = fmul fast float %1589, %1537
  br label %1623

; <label>:1593                                    ; preds = %1578
  %1594 = icmp eq i32 %1543, 2
  br i1 %1594, label %1595, label %1623

; <label>:1595                                    ; preds = %1593
  %1596 = call float @dx.op.unary.f32(i32 24, float %1358)  ; Sqrt(value)
  %1597 = call float @dx.op.unary.f32(i32 24, float %1359)  ; Sqrt(value)
  %1598 = call float @dx.op.unary.f32(i32 24, float %1360)  ; Sqrt(value)
  %1599 = fadd fast float %1596, -5.000000e-01
  %1600 = fadd fast float %1597, -5.000000e-01
  %1601 = fadd fast float %1598, -5.000000e-01
  %1602 = fmul fast float %1599, %1548
  %1603 = fmul fast float %1600, %1548
  %1604 = fmul fast float %1601, %1548
  %1605 = fadd fast float %1602, 5.000000e-01
  %1606 = fadd fast float %1603, 5.000000e-01
  %1607 = fadd fast float %1604, 5.000000e-01
  %1608 = fmul fast float %1605, 2.000000e+00
  %1609 = fsub fast float 1.000000e+00, %1608
  %1610 = fmul fast float %1609, %1535
  %1611 = fadd fast float %1610, %1608
  %1612 = fmul fast float %1611, %1535
  %1613 = fmul fast float %1606, 2.000000e+00
  %1614 = fsub fast float 1.000000e+00, %1613
  %1615 = fmul fast float %1614, %1536
  %1616 = fadd fast float %1615, %1613
  %1617 = fmul fast float %1616, %1536
  %1618 = fmul fast float %1607, 2.000000e+00
  %1619 = fsub fast float 1.000000e+00, %1618
  %1620 = fmul fast float %1619, %1537
  %1621 = fadd fast float %1620, %1618
  %1622 = fmul fast float %1621, %1537
  br label %1623

; <label>:1623                                    ; preds = %1595, %1593, %1580, %1550, %1534
  %1624 = phi float [ %1535, %1534 ], [ %1612, %1595 ], [ %1535, %1593 ], [ %1590, %1580 ], [ %1560, %1550 ]
  %1625 = phi float [ %1536, %1534 ], [ %1617, %1595 ], [ %1536, %1593 ], [ %1591, %1580 ], [ %1561, %1550 ]
  %1626 = phi float [ %1537, %1534 ], [ %1622, %1595 ], [ %1537, %1593 ], [ %1592, %1580 ], [ %1562, %1550 ]
  %1627 = phi float [ %1538, %1534 ], [ %1538, %1595 ], [ %1538, %1593 ], [ %1538, %1580 ], [ %1572, %1550 ]
  %1628 = phi float [ %1539, %1534 ], [ %1539, %1595 ], [ %1539, %1593 ], [ %1539, %1580 ], [ %1573, %1550 ]
  %1629 = phi float [ %1540, %1534 ], [ %1540, %1595 ], [ %1540, %1593 ], [ %1540, %1580 ], [ %1574, %1550 ]
  %1630 = phi float [ %950, %1534 ], [ %950, %1595 ], [ %950, %1593 ], [ %950, %1580 ], [ %1565, %1550 ]
  %1631 = phi float [ %955, %1534 ], [ %955, %1595 ], [ %955, %1593 ], [ %955, %1580 ], [ %1577, %1550 ]
  %1632 = and i32 %1542, 12
  %1633 = icmp eq i32 %1632, 12
  br i1 %1633, label %1716, label %1634

; <label>:1634                                    ; preds = %1623
  %1635 = and i32 %1542, 2097184
  %1636 = icmp eq i32 %1635, 2097184
  %1637 = select i1 %1636, float %1138, float 0.000000e+00
  %1638 = and i32 %1542, 4194336
  %1639 = icmp eq i32 %1638, 4194336
  %1640 = select i1 %1639, float %1138, float 0.000000e+00
  %1641 = and i32 %1542, 8388640
  %1642 = icmp eq i32 %1641, 8388640
  %1643 = select i1 %1642, float %1138, float 0.000000e+00
  %1644 = and i32 %1542, 16384
  %1645 = icmp ne i32 %1644, 0
  %1646 = select i1 %1645, float %1138, float 0.000000e+00
  %1647 = icmp eq i32 %1632, 0
  br i1 %1647, label %1648, label %1664

; <label>:1648                                    ; preds = %1634
  %1649 = fsub fast float %1439, %942
  %1650 = fsub fast float %1440, %943
  %1651 = fmul fast float %1637, %1649
  %1652 = fmul fast float %1637, %1650
  %1653 = fadd fast float %1651, %942
  %1654 = fadd fast float %1652, %943
  %1655 = fsub fast float %1441, %953
  %1656 = fmul fast float %1640, %1655
  %1657 = fadd fast float %1656, %953
  %1658 = fsub fast float %1438, %952
  %1659 = fmul fast float %1643, %1658
  %1660 = fadd fast float %1659, %952
  %1661 = fsub fast float %1512, %954
  %1662 = fmul fast float %1646, %1661
  %1663 = fadd fast float %1662, %954
  br label %1716

; <label>:1664                                    ; preds = %1634
  %1665 = icmp eq i32 %1632, 4
  br i1 %1665, label %1666, label %1700

; <label>:1666                                    ; preds = %1664
  %1667 = fmul fast float %1637, %1439
  %1668 = fmul fast float %1637, %1440
  %1669 = fadd fast float %1667, %942
  %1670 = fadd fast float %1668, %943
  %1671 = call float @dx.op.binary.f32(i32 36, float %953, float %1441)  ; FMin(a,b)
  %1672 = fsub fast float %1671, %953
  %1673 = fmul fast float %1672, %1640
  %1674 = fadd fast float %1673, %953
  %1675 = fadd fast float %1438, %952
  %1676 = fmul fast float %1675, 0x3FF337FAE0000000
  %1677 = fmul fast float %952, %952
  %1678 = fmul fast float %1438, %1438
  %1679 = fadd fast float %1678, %1677
  %1680 = fmul fast float %1679, 0x3FE5152B00000000
  %1681 = fmul fast float %952, 0xBFCC1F85E0000000
  %1682 = fmul fast float %1681, %1438
  %1683 = fadd fast float %1682, 0xBFE1363700000000
  %1684 = fadd fast float %1683, %1676
  %1685 = fsub fast float %1684, %1680
  %1686 = fmul fast float %1675, 0x3FBA6F0D00000000
  %1687 = fmul fast float %1679, 0x3FD0432880000000
  %1688 = fmul fast float %952, 0xBFEF110800000000
  %1689 = fmul fast float %1688, %1438
  %1690 = fadd fast float %1689, 1.000000e+00
  %1691 = fsub fast float %1690, %1686
  %1692 = fadd fast float %1691, %1687
  %1693 = fdiv fast float %1685, %1692
  %1694 = call float @dx.op.unary.f32(i32 7, float %1693)  ; Saturate(value)
  %1695 = fsub fast float %1694, %952
  %1696 = fmul fast float %1695, %1643
  %1697 = fadd fast float %1696, %952
  %1698 = fmul fast float %1646, %1512
  %1699 = fadd fast float %1698, %954
  br label %1716

; <label>:1700                                    ; preds = %1664
  %1701 = icmp eq i32 %1632, 8
  br i1 %1701, label %1702, label %1716

; <label>:1702                                    ; preds = %1700
  %1703 = fmul fast float %1637, %1439
  %1704 = fmul fast float %1637, %1440
  %1705 = fadd fast float %1703, %942
  %1706 = fadd fast float %1704, %943
  %1707 = call float @dx.op.binary.f32(i32 36, float %953, float %1441)  ; FMin(a,b)
  %1708 = fsub fast float %1707, %953
  %1709 = fmul fast float %1708, %1640
  %1710 = fadd fast float %1709, %953
  %1711 = fsub fast float %1438, %952
  %1712 = fmul fast float %1643, %1711
  %1713 = fadd fast float %1712, %952
  %1714 = fmul fast float %1646, %1512
  %1715 = fadd fast float %1714, %954
  br label %1716

; <label>:1716                                    ; preds = %1702, %1700, %1666, %1648, %1623, %1137, %956, %941
  %1717 = phi float [ %942, %1623 ], [ %942, %1137 ], [ %942, %941 ], [ %1705, %1702 ], [ %942, %1700 ], [ %1669, %1666 ], [ %1653, %1648 ], [ %942, %956 ]
  %1718 = phi float [ %943, %1623 ], [ %943, %1137 ], [ %943, %941 ], [ %1706, %1702 ], [ %943, %1700 ], [ %1670, %1666 ], [ %1654, %1648 ], [ %943, %956 ]
  %1719 = phi float [ %1624, %1623 ], [ %944, %1137 ], [ %944, %941 ], [ %1624, %1702 ], [ %1624, %1700 ], [ %1624, %1666 ], [ %1624, %1648 ], [ %944, %956 ]
  %1720 = phi float [ %1625, %1623 ], [ %945, %1137 ], [ %945, %941 ], [ %1625, %1702 ], [ %1625, %1700 ], [ %1625, %1666 ], [ %1625, %1648 ], [ %945, %956 ]
  %1721 = phi float [ %1626, %1623 ], [ %946, %1137 ], [ %946, %941 ], [ %1626, %1702 ], [ %1626, %1700 ], [ %1626, %1666 ], [ %1626, %1648 ], [ %946, %956 ]
  %1722 = phi float [ %1627, %1623 ], [ %947, %1137 ], [ %947, %941 ], [ %1627, %1702 ], [ %1627, %1700 ], [ %1627, %1666 ], [ %1627, %1648 ], [ %947, %956 ]
  %1723 = phi float [ %1628, %1623 ], [ %948, %1137 ], [ %948, %941 ], [ %1628, %1702 ], [ %1628, %1700 ], [ %1628, %1666 ], [ %1628, %1648 ], [ %948, %956 ]
  %1724 = phi float [ %1629, %1623 ], [ %949, %1137 ], [ %949, %941 ], [ %1629, %1702 ], [ %1629, %1700 ], [ %1629, %1666 ], [ %1629, %1648 ], [ %949, %956 ]
  %1725 = phi float [ %1630, %1623 ], [ %950, %1137 ], [ %950, %941 ], [ %1630, %1702 ], [ %1630, %1700 ], [ %1630, %1666 ], [ %1630, %1648 ], [ %950, %956 ]
  %1726 = phi float [ %952, %1623 ], [ %952, %1137 ], [ %952, %941 ], [ %1713, %1702 ], [ %952, %1700 ], [ %1697, %1666 ], [ %1660, %1648 ], [ %952, %956 ]
  %1727 = phi float [ %953, %1623 ], [ %953, %1137 ], [ %953, %941 ], [ %1710, %1702 ], [ %953, %1700 ], [ %1674, %1666 ], [ %1657, %1648 ], [ %953, %956 ]
  %1728 = phi float [ %954, %1623 ], [ %954, %1137 ], [ %954, %941 ], [ %1715, %1702 ], [ %954, %1700 ], [ %1699, %1666 ], [ %1663, %1648 ], [ %954, %956 ]
  %1729 = phi float [ %1631, %1623 ], [ %955, %1137 ], [ %955, %941 ], [ %1631, %1702 ], [ %1631, %1700 ], [ %1631, %1666 ], [ %1631, %1648 ], [ %955, %956 ]
  br i1 %397, label %2490, label %1730

; <label>:1730                                    ; preds = %1716
  %1731 = icmp ult i32 %450, 3
  %1732 = add i32 %28, 56
  %1733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %1734 = extractvalue %dx.types.ResRet.i32 %1733, 0
  %1735 = add i32 %28, 60
  %1736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1735, i32 undef)  ; BufferLoad(srv,index,wot)
  %1737 = extractvalue %dx.types.ResRet.i32 %1736, 0
  %1738 = or i32 %1737, %1734
  %1739 = icmp eq i32 %1738, 0
  br i1 %1739, label %2490, label %1740

; <label>:1740                                    ; preds = %1730
  %1741 = and i32 %1734, 262144
  %1742 = icmp ne i32 %1741, 0
  %1743 = select i1 %1742, float %33, float 1.000000e+00
  %1744 = select i1 %1742, float %34, float 0.000000e+00
  %1745 = select i1 %1742, float %35, float 0.000000e+00
  %1746 = select i1 %1742, float %36, float 1.000000e+00
  %1747 = select i1 %1742, float %37, float %60
  %1748 = select i1 %1742, float %38, float %61
  %1749 = add i32 %28, 316
  %1750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.i32 %1750, 0
  %1752 = lshr i32 %1751, 16
  %1753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1752)  ; LegacyF16ToF32(value)
  %1754 = fmul fast float %1753, 0x3F50624DE0000000
  %1755 = add i32 %28, 120
  %1756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.i32 %1756, 0
  %1758 = lshr i32 %1757, 16
  %1759 = and i32 %1758, 255
  %1760 = lshr i32 %1757, 24
  %1761 = add i32 %28, 324
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = and i32 %1763, 65535
  %1765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1764)  ; LegacyF16ToF32(value)
  %1766 = lshr i32 %1763, 16
  %1767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1766)  ; LegacyF16ToF32(value)
  %1768 = add i32 %28, 64
  %1769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1768, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.i32 %1769, 0
  %1771 = lshr i32 %1770, 22
  %1772 = shl nuw nsw i32 %1771, 5
  %1773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1772)  ; LegacyF16ToF32(value)
  %1774 = shl i32 %1770, 4
  %1775 = and i32 %1774, 32752
  %1776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1775)  ; LegacyF16ToF32(value)
  %1777 = lshr i32 %1770, 7
  %1778 = and i32 %1777, 32752
  %1779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1778)  ; LegacyF16ToF32(value)
  %1780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1780, 3
  %1782 = fmul fast float %1781, 1.000000e+03
  %1783 = fmul fast float %347, %1782
  %1784 = call float @dx.op.unary.f32(i32 22, float %1783)  ; Frc(value)
  %1785 = fadd fast float %1784, %337
  %1786 = fmul fast float %348, %1782
  %1787 = call float @dx.op.unary.f32(i32 22, float %1786)  ; Frc(value)
  %1788 = fadd fast float %1787, %339
  %1789 = fmul fast float %1754, %1782
  %1790 = call float @dx.op.unary.f32(i32 22, float %1789)  ; Frc(value)
  %1791 = fmul fast float %1790, 0x401921FB60000000
  %1792 = fadd fast float %1791, %1773
  %1793 = call float @dx.op.unary.f32(i32 13, float %1792)  ; Sin(value)
  %1794 = call float @dx.op.unary.f32(i32 12, float %1792)  ; Cos(value)
  %1795 = fsub fast float -0.000000e+00, %1793
  %1796 = fadd fast float %1747, -5.000000e-01
  %1797 = fadd fast float %1748, -5.000000e-01
  %1798 = fmul fast float %1765, %1796
  %1799 = fmul fast float %1767, %1797
  %1800 = fadd fast float %1798, 5.000000e-01
  %1801 = fadd fast float %1799, 5.000000e-01
  %1802 = fmul fast float %1776, %1800
  %1803 = fmul fast float %1779, %1801
  %1804 = fmul fast float %1794, %1802
  %1805 = call float @dx.op.tertiary.f32(i32 46, float %1795, float %1803, float %1804)  ; FMad(a,b,c)
  %1806 = fmul fast float %1793, %1802
  %1807 = call float @dx.op.tertiary.f32(i32 46, float %1794, float %1803, float %1806)  ; FMad(a,b,c)
  %1808 = fadd fast float %1785, %1805
  %1809 = fadd fast float %1788, %1807
  %1810 = icmp ugt i32 %1759, 1
  %1811 = icmp ugt i32 %1757, 33554431
  %1812 = or i1 %1811, %1810
  br i1 %1812, label %1813, label %1838

; <label>:1813                                    ; preds = %1740
  %1814 = add i32 %28, 260
  %1815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.i32 %1815, 0
  %1817 = lshr i32 %1816, 16
  %1818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1817)  ; LegacyF16ToF32(value)
  %1819 = fmul fast float %1781, %1818
  %1820 = call float @dx.op.unary.f32(i32 22, float %1819)  ; Frc(value)
  %1821 = mul nuw nsw i32 %1759, %1760
  %1822 = uitofp i32 %1821 to float
  %1823 = fmul fast float %1820, %1822
  %1824 = call float @dx.op.unary.f32(i32 27, float %1823)  ; Round_ni(value)
  %1825 = fptoui float %1824 to i32
  %1826 = urem i32 %1825, %1759
  %1827 = udiv i32 %1825, %1760
  %1828 = call float @dx.op.unary.f32(i32 22, float %1808)  ; Frc(value)
  %1829 = call float @dx.op.unary.f32(i32 22, float %1809)  ; Frc(value)
  %1830 = uitofp i32 %1826 to float
  %1831 = uitofp i32 %1827 to float
  %1832 = fadd fast float %1828, %1830
  %1833 = fadd fast float %1829, %1831
  %1834 = uitofp i32 %1759 to float
  %1835 = uitofp i32 %1760 to float
  %1836 = fdiv fast float %1832, %1834
  %1837 = fdiv fast float %1833, %1835
  br label %1838

; <label>:1838                                    ; preds = %1813, %1740
  %1839 = phi float [ %1836, %1813 ], [ %1808, %1740 ]
  %1840 = phi float [ %1837, %1813 ], [ %1809, %1740 ]
  %1841 = and i32 %1734, 256
  %1842 = icmp eq i32 %1841, 0
  br i1 %1842, label %1889, label %1843

; <label>:1843                                    ; preds = %1838
  %1844 = add i32 %28, 448
  %1845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1844, i32 undef)  ; BufferLoad(srv,index,wot)
  %1846 = extractvalue %dx.types.ResRet.i32 %1845, 0
  %1847 = add i32 %1846, 0
  %1848 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1847, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1849 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1848, %dx.types.Handle %69, float %1839, float %1840, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1850 = extractvalue %dx.types.ResRet.f32 %1849, 0
  %1851 = add i32 %28, 132
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = shl i32 %1853, 4
  %1855 = and i32 %1854, 32752
  %1856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1855)  ; LegacyF16ToF32(value)
  %1857 = lshr i32 %1853, 7
  %1858 = and i32 %1857, 32752
  %1859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1858)  ; LegacyF16ToF32(value)
  %1860 = fsub fast float 1.000000e+00, %446
  %1861 = call float @dx.op.binary.f32(i32 35, float %1860, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1862 = bitcast float %446 to i32
  %1863 = sitofp i32 %1862 to float
  %1864 = fadd fast float %1863, 0xC1CFBF8940000000
  %1865 = fmul fast float %1859, %1864
  %1866 = fadd fast float %1865, 0x41CFBF8940000000
  %1867 = fptosi float %1866 to i32
  %1868 = bitcast i32 %1867 to float
  %1869 = bitcast float %1861 to i32
  %1870 = sitofp i32 %1869 to float
  %1871 = fadd fast float %1870, 0xC1CFBF8940000000
  %1872 = fmul fast float %1871, %1859
  %1873 = fadd fast float %1872, 0x41CFBF8940000000
  %1874 = fptosi float %1873 to i32
  %1875 = bitcast i32 %1874 to float
  %1876 = fmul fast float %1868, %1856
  %1877 = fmul fast float %1875, %1856
  %1878 = fsub fast float %1861, %1876
  %1879 = fadd fast float %1877, %1861
  %1880 = call float @dx.op.unary.f32(i32 7, float %1878)  ; Saturate(value)
  %1881 = call float @dx.op.unary.f32(i32 7, float %1879)  ; Saturate(value)
  %1882 = fsub fast float %1850, %1880
  %1883 = fsub fast float %1881, %1880
  %1884 = bitcast float %1883 to i32
  %1885 = sub nsw i32 2129859010, %1884
  %1886 = bitcast i32 %1885 to float
  %1887 = fmul fast float %1886, %1882
  %1888 = call float @dx.op.unary.f32(i32 7, float %1887)  ; Saturate(value)
  br label %1889

; <label>:1889                                    ; preds = %1843, %1838
  %1890 = phi float [ %1888, %1843 ], [ %446, %1838 ]
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = and i32 %1892, 128
  %1894 = icmp eq i32 %1893, 0
  br i1 %1894, label %1911, label %1895

; <label>:1895                                    ; preds = %1889
  %1896 = add i32 %28, 432
  %1897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1898 = extractvalue %dx.types.ResRet.i32 %1897, 0
  %1899 = add i32 %1898, 0
  %1900 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1899, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1901 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1900, %dx.types.Handle %69, float %1839, float %1840, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1902 = extractvalue %dx.types.ResRet.f32 %1901, 0
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = and i32 %1904, 524288
  %1906 = icmp ne i32 %1905, 0
  %1907 = fcmp fast ogt float %1902, 0x3FE0101020000000
  %1908 = select i1 %1907, float 1.000000e+00, float 0.000000e+00
  %1909 = select i1 %1906, float %1908, float %1902
  %1910 = fmul fast float %1909, %1890
  br label %1911

; <label>:1911                                    ; preds = %1895, %1889
  %1912 = phi float [ %1910, %1895 ], [ %1890, %1889 ]
  %1913 = fcmp fast ult float %1912, 0x3F70101020000000
  br i1 %1913, label %2490, label %1914

; <label>:1914                                    ; preds = %1911
  %1915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %1916 = extractvalue %dx.types.ResRet.i32 %1915, 0
  %1917 = and i32 %1916, 16
  %1918 = icmp eq i32 %1917, 0
  br i1 %1918, label %2117, label %1919

; <label>:1919                                    ; preds = %1914
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = add i32 %28, 384
  %1923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1924 = extractvalue %dx.types.ResRet.i32 %1923, 0
  %1925 = add i32 %1924, 0
  %1926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1925, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1927 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1926, %dx.types.Handle %68, float %1839, float %1840, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1928 = extractvalue %dx.types.ResRet.f32 %1927, 0
  %1929 = extractvalue %dx.types.ResRet.f32 %1927, 1
  %1930 = extractvalue %dx.types.ResRet.f32 %1927, 2
  %1931 = extractvalue %dx.types.ResRet.f32 %1927, 3
  %1932 = and i32 %1921, 255
  %1933 = uitofp i32 %1932 to float
  %1934 = lshr i32 %1921, 8
  %1935 = and i32 %1934, 255
  %1936 = uitofp i32 %1935 to float
  %1937 = fmul fast float %1931, %1933
  %1938 = fadd fast float %1937, %1936
  %1939 = fmul fast float %1938, 0x3F70101000000000
  %1940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %1941 = extractvalue %dx.types.ResRet.i32 %1940, 0
  %1942 = and i32 %1941, 512
  %1943 = icmp eq i32 %1942, 0
  br i1 %1943, label %1952, label %1944

; <label>:1944                                    ; preds = %1919
  %1945 = add i32 %28, 468
  %1946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1945, i32 undef)  ; BufferLoad(srv,index,wot)
  %1947 = extractvalue %dx.types.ResRet.i32 %1946, 0
  %1948 = add i32 %1947, 0
  %1949 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1948, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1950 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1949, %dx.types.Handle %69, float %1839, float %1840, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1951 = extractvalue %dx.types.ResRet.f32 %1950, 0
  br label %1952

; <label>:1952                                    ; preds = %1944, %1919
  %1953 = phi float [ %1951, %1944 ], [ 1.000000e+00, %1919 ]
  %1954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %1955 = extractvalue %dx.types.ResRet.i32 %1954, 0
  %1956 = and i32 %1955, 33554432
  %1957 = icmp eq i32 %1956, 0
  br i1 %1957, label %2064, label %1958

; <label>:1958                                    ; preds = %1952
  %1959 = add i32 %28, 256
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = and i32 %1961, 65535
  %1963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1962)  ; LegacyF16ToF32(value)
  %1964 = lshr i32 %1961, 16
  %1965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1964)  ; LegacyF16ToF32(value)
  %1966 = add i32 %28, 260
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = and i32 %1968, 65535
  %1970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1969)  ; LegacyF16ToF32(value)
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = lshr i32 %1972, 24
  %1974 = uitofp i32 %1973 to float
  %1975 = fmul fast float %1974, 0x3F70101020000000
  %1976 = and i32 %1972, 255
  %1977 = uitofp i32 %1976 to float
  %1978 = fmul fast float %1977, 0x3F70101020000000
  %1979 = lshr i32 %1972, 8
  %1980 = and i32 %1979, 255
  %1981 = uitofp i32 %1980 to float
  %1982 = fmul fast float %1981, 0x3F70101020000000
  %1983 = lshr i32 %1972, 16
  %1984 = and i32 %1983, 255
  %1985 = uitofp i32 %1984 to float
  %1986 = fmul fast float %1985, 0x3F70101020000000
  %1987 = add i32 %28, 252
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = lshr i32 %1989, 24
  %1991 = uitofp i32 %1990 to float
  %1992 = fmul fast float %1991, 0x3F70101020000000
  %1993 = and i32 %1989, 255
  %1994 = uitofp i32 %1993 to float
  %1995 = fmul fast float %1994, 0x3F70101020000000
  %1996 = lshr i32 %1989, 8
  %1997 = and i32 %1996, 255
  %1998 = uitofp i32 %1997 to float
  %1999 = fmul fast float %1998, 0x3F70101020000000
  %2000 = lshr i32 %1989, 16
  %2001 = and i32 %2000, 255
  %2002 = uitofp i32 %2001 to float
  %2003 = fmul fast float %2002, 0x3F70101020000000
  %2004 = bitcast float %1928 to i32
  %2005 = ashr i32 %2004, 1
  %2006 = sub nsw i32 1597463174, %2005
  %2007 = bitcast i32 %2006 to float
  %2008 = fmul fast float %1928, 5.000000e-01
  %2009 = fmul fast float %2007, %2007
  %2010 = fmul fast float %2009, %2008
  %2011 = fsub fast float 1.500000e+00, %2010
  %2012 = fmul fast float %2007, %1928
  %2013 = fmul fast float %2012, %2011
  %2014 = bitcast float %1929 to i32
  %2015 = ashr i32 %2014, 1
  %2016 = sub nsw i32 1597463174, %2015
  %2017 = bitcast i32 %2016 to float
  %2018 = fmul fast float %1929, 5.000000e-01
  %2019 = fmul fast float %2017, %2017
  %2020 = fmul fast float %2019, %2018
  %2021 = fsub fast float 1.500000e+00, %2020
  %2022 = fmul fast float %2017, %1929
  %2023 = fmul fast float %2022, %2021
  %2024 = bitcast float %1930 to i32
  %2025 = ashr i32 %2024, 1
  %2026 = sub nsw i32 1597463174, %2025
  %2027 = bitcast i32 %2026 to float
  %2028 = fmul fast float %1930, 5.000000e-01
  %2029 = fmul fast float %2027, %2027
  %2030 = fmul fast float %2029, %2028
  %2031 = fsub fast float 1.500000e+00, %2030
  %2032 = fmul fast float %2027, %1930
  %2033 = fmul fast float %2032, %2031
  %2034 = fsub fast float %2013, %1995
  %2035 = fsub fast float %2023, %1999
  %2036 = fsub fast float %2033, %2003
  %2037 = fmul fast float %2034, %1963
  %2038 = fmul fast float %2035, %1965
  %2039 = fmul fast float %2036, %1970
  %2040 = fadd fast float %2037, %1978
  %2041 = fadd fast float %2038, %1982
  %2042 = fadd fast float %2039, %1986
  %2043 = call float @dx.op.unary.f32(i32 7, float %2040)  ; Saturate(value)
  %2044 = call float @dx.op.unary.f32(i32 7, float %2041)  ; Saturate(value)
  %2045 = call float @dx.op.unary.f32(i32 7, float %2042)  ; Saturate(value)
  %2046 = fmul fast float %2043, %2043
  %2047 = fmul fast float %2044, %2044
  %2048 = fmul fast float %2045, %2045
  %2049 = fsub fast float %2046, %1928
  %2050 = fsub fast float %2047, %1929
  %2051 = fsub fast float %2048, %1930
  %2052 = fmul fast float %2049, %1953
  %2053 = fmul fast float %2050, %1953
  %2054 = fmul fast float %2051, %1953
  %2055 = fadd fast float %2052, %1928
  %2056 = fadd fast float %2053, %1929
  %2057 = fadd fast float %2054, %1930
  %2058 = fadd fast float %1975, %1939
  %2059 = fsub fast float %2058, %1992
  %2060 = call float @dx.op.unary.f32(i32 7, float %2059)  ; Saturate(value)
  %2061 = fsub fast float %2060, %1939
  %2062 = fmul fast float %2061, %1953
  %2063 = fadd fast float %2062, %1939
  br label %2117

; <label>:2064                                    ; preds = %1952
  %2065 = and i32 %1955, 134217728
  %2066 = icmp eq i32 %2065, 0
  br i1 %2066, label %2101, label %2067

; <label>:2067                                    ; preds = %2064
  %2068 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %2069 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %2070 = call float @dx.op.unary.f32(i32 24, float %332)  ; Sqrt(value)
  %2071 = fadd fast float %2068, -5.000000e-01
  %2072 = fadd fast float %2069, -5.000000e-01
  %2073 = fadd fast float %2070, -5.000000e-01
  %2074 = fmul fast float %2071, %1953
  %2075 = fmul fast float %2072, %1953
  %2076 = fmul fast float %2073, %1953
  %2077 = fadd fast float %2074, 5.000000e-01
  %2078 = fadd fast float %2075, 5.000000e-01
  %2079 = fadd fast float %2076, 5.000000e-01
  %2080 = call float @dx.op.unary.f32(i32 24, float %1928)  ; Sqrt(value)
  %2081 = call float @dx.op.unary.f32(i32 24, float %1929)  ; Sqrt(value)
  %2082 = call float @dx.op.unary.f32(i32 24, float %1930)  ; Sqrt(value)
  %2083 = fmul fast float %2077, 2.000000e+00
  %2084 = fsub fast float 1.000000e+00, %2083
  %2085 = fmul fast float %2084, %2080
  %2086 = fadd fast float %2085, %2083
  %2087 = fmul fast float %2086, %2080
  %2088 = fmul fast float %2078, 2.000000e+00
  %2089 = fsub fast float 1.000000e+00, %2088
  %2090 = fmul fast float %2089, %2081
  %2091 = fadd fast float %2090, %2088
  %2092 = fmul fast float %2091, %2081
  %2093 = fmul fast float %2079, 2.000000e+00
  %2094 = fsub fast float 1.000000e+00, %2093
  %2095 = fmul fast float %2094, %2082
  %2096 = fadd fast float %2095, %2093
  %2097 = fmul fast float %2096, %2082
  %2098 = fmul fast float %2087, %2087
  %2099 = fmul fast float %2092, %2092
  %2100 = fmul fast float %2097, %2097
  br label %2117

; <label>:2101                                    ; preds = %2064
  %2102 = fmul fast float %324, %324
  %2103 = fmul fast float %328, %328
  %2104 = fmul fast float %332, %332
  %2105 = fadd fast float %2102, -1.000000e+00
  %2106 = fadd fast float %2103, -1.000000e+00
  %2107 = fadd fast float %2104, -1.000000e+00
  %2108 = fmul fast float %1953, %2105
  %2109 = fmul fast float %1953, %2106
  %2110 = fmul fast float %1953, %2107
  %2111 = fadd fast float %2108, 1.000000e+00
  %2112 = fadd fast float %2109, 1.000000e+00
  %2113 = fadd fast float %2110, 1.000000e+00
  %2114 = fmul fast float %2111, %1928
  %2115 = fmul fast float %2112, %1929
  %2116 = fmul fast float %2113, %1930
  br label %2117

; <label>:2117                                    ; preds = %2101, %2067, %1958, %1914
  %2118 = phi float [ %2063, %1958 ], [ %1939, %2067 ], [ %1939, %2101 ], [ 0x3FA23C0BE0000000, %1914 ]
  %2119 = phi float [ %2055, %1958 ], [ %2098, %2067 ], [ %2114, %2101 ], [ 1.000000e+00, %1914 ]
  %2120 = phi float [ %2056, %1958 ], [ %2099, %2067 ], [ %2115, %2101 ], [ 1.000000e+00, %1914 ]
  %2121 = phi float [ %2057, %1958 ], [ %2100, %2067 ], [ %2116, %2101 ], [ 1.000000e+00, %1914 ]
  %2122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2123 = extractvalue %dx.types.CBufRet.i32 %2122, 1
  %2124 = and i32 %2123, 1
  %2125 = icmp ne i32 %2124, 0
  %2126 = add i32 %28, 356
  %2127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2126, i32 undef)  ; BufferLoad(srv,index,wot)
  %2128 = extractvalue %dx.types.ResRet.i32 %2127, 0
  %2129 = and i32 %2128, 32
  %2130 = icmp ne i32 %2129, 0
  %2131 = and i1 %2125, %2130
  %2132 = select i1 %2131, float 1.000000e+00, float %2119
  %2133 = select i1 %2131, float 0x3FD3333340000000, float %2120
  %2134 = select i1 %2131, float 0x3FD3333340000000, float %2121
  %2135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2136 = extractvalue %dx.types.ResRet.i32 %2135, 0
  %2137 = and i32 %2136, 32
  %2138 = icmp eq i32 %2137, 0
  br i1 %2138, label %2211, label %2139

; <label>:2139                                    ; preds = %2117
  %2140 = add i32 %28, 124
  %2141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.i32 %2141, 0
  %2143 = add i32 %28, 400
  %2144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2145 = extractvalue %dx.types.ResRet.i32 %2144, 0
  %2146 = add i32 %2145, 0
  %2147 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2146, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2148 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2147, %dx.types.Handle %68, float %1839, float %1840, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2149 = extractvalue %dx.types.ResRet.f32 %2148, 0
  %2150 = extractvalue %dx.types.ResRet.f32 %2148, 1
  %2151 = extractvalue %dx.types.ResRet.f32 %2148, 2
  %2152 = extractvalue %dx.types.ResRet.f32 %2148, 3
  %2153 = and i32 %2142, 255
  %2154 = uitofp i32 %2153 to float
  %2155 = lshr i32 %2142, 8
  %2156 = and i32 %2155, 255
  %2157 = uitofp i32 %2156 to float
  %2158 = lshr i32 %2142, 16
  %2159 = and i32 %2158, 255
  %2160 = uitofp i32 %2159 to float
  %2161 = fmul fast float %2160, 0x3F70101000000000
  %2162 = fmul fast float %2149, %2154
  %2163 = fadd fast float %2162, %2157
  %2164 = fmul fast float %2163, 0x3F70101000000000
  %2165 = fadd fast float %2150, -5.000000e-01
  %2166 = fadd fast float %2152, -5.000000e-01
  %2167 = fmul fast float %2165, %2161
  %2168 = fmul fast float %2166, %2161
  %2169 = fadd fast float %2167, 5.000000e-01
  %2170 = fadd fast float %2168, 5.000000e-01
  %2171 = fmul fast float %2169, 2.000000e+00
  %2172 = fadd fast float %2171, -1.000000e+00
  %2173 = fmul fast float %2170, 2.000000e+00
  %2174 = fadd fast float %2173, -1.000000e+00
  %2175 = fadd fast float %2172, %2174
  %2176 = fmul fast float %2175, 5.000000e-01
  %2177 = fsub fast float %2172, %2174
  %2178 = fmul fast float %2177, 5.000000e-01
  %2179 = call float @dx.op.unary.f32(i32 6, float %2176)  ; FAbs(value)
  %2180 = fsub fast float 1.000000e+00, %2179
  %2181 = call float @dx.op.unary.f32(i32 6, float %2178)  ; FAbs(value)
  %2182 = fsub fast float %2180, %2181
  %2183 = call float @dx.op.dot3.f32(i32 55, float %2176, float %2178, float %2182, float %2176, float %2178, float %2182)  ; Dot3(ax,ay,az,bx,by,bz)
  %2184 = call float @dx.op.unary.f32(i32 25, float %2183)  ; Rsqrt(value)
  %2185 = fmul fast float %2176, %2184
  %2186 = fmul fast float %2178, %2184
  %2187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2188 = extractvalue %dx.types.ResRet.i32 %2187, 0
  %2189 = and i32 %2188, 67108864
  %2190 = icmp eq i32 %2189, 0
  br i1 %2190, label %2207, label %2191

; <label>:2191                                    ; preds = %2139
  %2192 = add i32 %28, 312
  %2193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2192, i32 undef)  ; BufferLoad(srv,index,wot)
  %2194 = extractvalue %dx.types.ResRet.i32 %2193, 0
  %2195 = and i32 %2194, 65535
  %2196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2195)  ; LegacyF16ToF32(value)
  %2197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2198 = extractvalue %dx.types.ResRet.i32 %2197, 0
  %2199 = and i32 %2198, 65535
  %2200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2199)  ; LegacyF16ToF32(value)
  %2201 = lshr i32 %2194, 16
  %2202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2201)  ; LegacyF16ToF32(value)
  %2203 = fsub fast float %2164, %2202
  %2204 = fmul fast float %2203, %2196
  %2205 = fadd fast float %2204, %2200
  %2206 = call float @dx.op.unary.f32(i32 7, float %2205)  ; Saturate(value)
  br label %2207

; <label>:2207                                    ; preds = %2191, %2139
  %2208 = phi float [ %2206, %2191 ], [ %2164, %2139 ]
  %2209 = call float @dx.op.dot2.f32(i32 54, float %2185, float %2186, float %1743, float %1744)  ; Dot2(ax,ay,bx,by)
  %2210 = call float @dx.op.dot2.f32(i32 54, float %2185, float %2186, float %1745, float %1746)  ; Dot2(ax,ay,bx,by)
  br label %2211

; <label>:2211                                    ; preds = %2207, %2117
  %2212 = phi float [ %2208, %2207 ], [ 0x3FD6666660000000, %2117 ]
  %2213 = phi float [ %2209, %2207 ], [ 0.000000e+00, %2117 ]
  %2214 = phi float [ %2210, %2207 ], [ 0.000000e+00, %2117 ]
  %2215 = phi float [ %2151, %2207 ], [ 1.000000e+00, %2117 ]
  %2216 = add i32 %28, 192
  %2217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2216, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.i32 %2217, 0
  %2219 = lshr i32 %2218, 22
  %2220 = shl nuw nsw i32 %2219, 5
  %2221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2220)  ; LegacyF16ToF32(value)
  %2222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2223 = extractvalue %dx.types.ResRet.i32 %2222, 0
  %2224 = and i32 %2223, 64
  %2225 = icmp eq i32 %2224, 0
  br i1 %2225, label %2259, label %2226

; <label>:2226                                    ; preds = %2211
  %2227 = add i32 %28, 416
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = add i32 %2229, 0
  %2231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2230, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2233 = extractvalue %dx.types.ResRet.i32 %2232, 0
  %2234 = and i32 %2233, 131072
  %2235 = icmp eq i32 %2234, 0
  %2236 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2231, %dx.types.Handle %68, float %1839, float %1840, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2237 = extractvalue %dx.types.ResRet.f32 %2236, 0
  %2238 = extractvalue %dx.types.ResRet.f32 %2236, 1
  %2239 = extractvalue %dx.types.ResRet.f32 %2236, 2
  %2240 = fmul fast float %2237, %312
  %2241 = fmul fast float %2238, %315
  %2242 = fmul fast float %2239, %318
  br i1 %2235, label %2249, label %2243

; <label>:2243                                    ; preds = %2226
  %2244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2245 = extractvalue %dx.types.CBufRet.f32 %2244, 0
  %2246 = fmul fast float %2245, %2240
  %2247 = fmul fast float %2245, %2241
  %2248 = fmul fast float %2245, %2242
  br label %2249

; <label>:2249                                    ; preds = %2243, %2226
  %2250 = phi float [ %2246, %2243 ], [ %2240, %2226 ]
  %2251 = phi float [ %2247, %2243 ], [ %2241, %2226 ]
  %2252 = phi float [ %2248, %2243 ], [ %2242, %2226 ]
  %2253 = fmul fast float %2250, %2221
  %2254 = select i1 %211, float %2253, float %2250
  %2255 = call float @dx.op.dot3.f32(i32 55, float %2254, float %2251, float %2252, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2256 = select i1 %211, float 0.000000e+00, float %2250
  %2257 = select i1 %211, float %2255, float %2251
  %2258 = select i1 %211, float 0.000000e+00, float %2252
  br label %2259

; <label>:2259                                    ; preds = %2249, %2211
  %2260 = phi float [ %2256, %2249 ], [ 0.000000e+00, %2211 ]
  %2261 = phi float [ %2257, %2249 ], [ 0.000000e+00, %2211 ]
  %2262 = phi float [ %2258, %2249 ], [ 0.000000e+00, %2211 ]
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = and i32 %2264, 16384
  %2266 = icmp eq i32 %2265, 0
  br i1 %2266, label %2285, label %2267

; <label>:2267                                    ; preds = %2259
  %2268 = and i32 %2264, 1048576
  %2269 = icmp ne i32 %2268, 0
  %2270 = add i32 %28, 484
  %2271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2272 = extractvalue %dx.types.ResRet.i32 %2271, 0
  %2273 = add i32 %2272, 0
  %2274 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2273, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2275 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2274, %dx.types.Handle %69, float %1839, float %1840, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2276 = extractvalue %dx.types.ResRet.f32 %2275, 0
  %2277 = add i32 %28, 128
  %2278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2277, i32 undef)  ; BufferLoad(srv,index,wot)
  %2279 = extractvalue %dx.types.ResRet.i32 %2278, 0
  %2280 = lshr i32 %2279, 24
  %2281 = uitofp i32 %2280 to float
  %2282 = fmul fast float %2276, 0x3F70101020000000
  %2283 = select i1 %2269, float 0x3F70101020000000, float %2282
  %2284 = fmul fast float %2283, %2281
  br label %2285

; <label>:2285                                    ; preds = %2267, %2259
  %2286 = phi float [ %2284, %2267 ], [ 0.000000e+00, %2259 ]
  %2287 = add i32 %28, 128
  %2288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2287, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.i32 %2288, 0
  %2290 = and i32 %2289, 255
  %2291 = uitofp i32 %2290 to float
  %2292 = lshr i32 %2289, 8
  %2293 = and i32 %2292, 255
  %2294 = uitofp i32 %2293 to float
  %2295 = call float @dx.op.dot3.f32(i32 55, float %2132, float %2133, float %2134, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2296 = fmul fast float %2294, %2295
  %2297 = fadd fast float %2296, %2291
  %2298 = fmul fast float %2297, 0x3F70101020000000
  %2299 = call float @dx.op.unary.f32(i32 7, float %2298)  ; Saturate(value)
  br i1 %1731, label %2300, label %2308

; <label>:2300                                    ; preds = %2285
  %2301 = fsub fast float 1.000000e+00, %1912
  %2302 = fmul fast float %2301, %1719
  %2303 = fmul fast float %2301, %1720
  %2304 = fmul fast float %2301, %1721
  %2305 = fmul fast float %2301, %1722
  %2306 = fmul fast float %2301, %1723
  %2307 = fmul fast float %2301, %1724
  br label %2308

; <label>:2308                                    ; preds = %2300, %2285
  %2309 = phi float [ %2302, %2300 ], [ %1719, %2285 ]
  %2310 = phi float [ %2303, %2300 ], [ %1720, %2285 ]
  %2311 = phi float [ %2304, %2300 ], [ %1721, %2285 ]
  %2312 = phi float [ %2305, %2300 ], [ %1722, %2285 ]
  %2313 = phi float [ %2306, %2300 ], [ %1723, %2285 ]
  %2314 = phi float [ %2307, %2300 ], [ %1724, %2285 ]
  %2315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2316 = extractvalue %dx.types.ResRet.i32 %2315, 0
  %2317 = and i32 %2316, 3
  %2318 = icmp eq i32 %2317, 3
  br i1 %2318, label %2397, label %2319

; <label>:2319                                    ; preds = %2308
  %2320 = and i32 %2316, 16
  %2321 = icmp ne i32 %2320, 0
  %2322 = select i1 %2321, float %1912, float 0.000000e+00
  %2323 = icmp eq i32 %2317, 0
  br i1 %2323, label %2324, label %2352

; <label>:2324                                    ; preds = %2319
  %2325 = and i32 %2316, 64
  %2326 = icmp ne i32 %2325, 0
  %2327 = select i1 %2326, float %1912, float 0.000000e+00
  %2328 = fsub fast float %2132, %2309
  %2329 = fsub fast float %2133, %2310
  %2330 = fsub fast float %2134, %2311
  %2331 = fmul fast float %2322, %2328
  %2332 = fmul fast float %2322, %2329
  %2333 = fmul fast float %2322, %2330
  %2334 = fadd fast float %2331, %2309
  %2335 = fadd fast float %2332, %2310
  %2336 = fadd fast float %2333, %2311
  %2337 = fsub fast float %2118, %1725
  %2338 = fmul fast float %2322, %2337
  %2339 = fadd fast float %2338, %1725
  %2340 = fsub fast float %2260, %2312
  %2341 = fsub fast float %2261, %2313
  %2342 = fsub fast float %2262, %2314
  %2343 = fmul fast float %2327, %2340
  %2344 = fmul fast float %2327, %2341
  %2345 = fmul fast float %2327, %2342
  %2346 = fadd fast float %2343, %2312
  %2347 = fadd fast float %2344, %2313
  %2348 = fadd fast float %2345, %2314
  %2349 = fsub fast float %2299, %1729
  %2350 = fmul fast float %2322, %2349
  %2351 = fadd fast float %2350, %1729
  br label %2397

; <label>:2352                                    ; preds = %2319
  %2353 = icmp eq i32 %2317, 1
  br i1 %2353, label %2354, label %2367

; <label>:2354                                    ; preds = %2352
  %2355 = fadd fast float %2132, -1.000000e+00
  %2356 = fadd fast float %2133, -1.000000e+00
  %2357 = fadd fast float %2134, -1.000000e+00
  %2358 = fmul fast float %2322, %2355
  %2359 = fmul fast float %2322, %2356
  %2360 = fmul fast float %2322, %2357
  %2361 = fadd fast float %2358, 1.000000e+00
  %2362 = fadd fast float %2359, 1.000000e+00
  %2363 = fadd fast float %2360, 1.000000e+00
  %2364 = fmul fast float %2361, %2309
  %2365 = fmul fast float %2362, %2310
  %2366 = fmul fast float %2363, %2311
  br label %2397

; <label>:2367                                    ; preds = %2352
  %2368 = icmp eq i32 %2317, 2
  br i1 %2368, label %2369, label %2397

; <label>:2369                                    ; preds = %2367
  %2370 = call float @dx.op.unary.f32(i32 24, float %2132)  ; Sqrt(value)
  %2371 = call float @dx.op.unary.f32(i32 24, float %2133)  ; Sqrt(value)
  %2372 = call float @dx.op.unary.f32(i32 24, float %2134)  ; Sqrt(value)
  %2373 = fadd fast float %2370, -5.000000e-01
  %2374 = fadd fast float %2371, -5.000000e-01
  %2375 = fadd fast float %2372, -5.000000e-01
  %2376 = fmul fast float %2373, %2322
  %2377 = fmul fast float %2374, %2322
  %2378 = fmul fast float %2375, %2322
  %2379 = fadd fast float %2376, 5.000000e-01
  %2380 = fadd fast float %2377, 5.000000e-01
  %2381 = fadd fast float %2378, 5.000000e-01
  %2382 = fmul fast float %2379, 2.000000e+00
  %2383 = fsub fast float 1.000000e+00, %2382
  %2384 = fmul fast float %2383, %2309
  %2385 = fadd fast float %2384, %2382
  %2386 = fmul fast float %2385, %2309
  %2387 = fmul fast float %2380, 2.000000e+00
  %2388 = fsub fast float 1.000000e+00, %2387
  %2389 = fmul fast float %2388, %2310
  %2390 = fadd fast float %2389, %2387
  %2391 = fmul fast float %2390, %2310
  %2392 = fmul fast float %2381, 2.000000e+00
  %2393 = fsub fast float 1.000000e+00, %2392
  %2394 = fmul fast float %2393, %2311
  %2395 = fadd fast float %2394, %2392
  %2396 = fmul fast float %2395, %2311
  br label %2397

; <label>:2397                                    ; preds = %2369, %2367, %2354, %2324, %2308
  %2398 = phi float [ %2309, %2308 ], [ %2386, %2369 ], [ %2309, %2367 ], [ %2364, %2354 ], [ %2334, %2324 ]
  %2399 = phi float [ %2310, %2308 ], [ %2391, %2369 ], [ %2310, %2367 ], [ %2365, %2354 ], [ %2335, %2324 ]
  %2400 = phi float [ %2311, %2308 ], [ %2396, %2369 ], [ %2311, %2367 ], [ %2366, %2354 ], [ %2336, %2324 ]
  %2401 = phi float [ %2312, %2308 ], [ %2312, %2369 ], [ %2312, %2367 ], [ %2312, %2354 ], [ %2346, %2324 ]
  %2402 = phi float [ %2313, %2308 ], [ %2313, %2369 ], [ %2313, %2367 ], [ %2313, %2354 ], [ %2347, %2324 ]
  %2403 = phi float [ %2314, %2308 ], [ %2314, %2369 ], [ %2314, %2367 ], [ %2314, %2354 ], [ %2348, %2324 ]
  %2404 = phi float [ %1725, %2308 ], [ %1725, %2369 ], [ %1725, %2367 ], [ %1725, %2354 ], [ %2339, %2324 ]
  %2405 = phi float [ %1729, %2308 ], [ %1729, %2369 ], [ %1729, %2367 ], [ %1729, %2354 ], [ %2351, %2324 ]
  %2406 = and i32 %2316, 12
  %2407 = icmp eq i32 %2406, 12
  br i1 %2407, label %2490, label %2408

; <label>:2408                                    ; preds = %2397
  %2409 = and i32 %2316, 2097184
  %2410 = icmp eq i32 %2409, 2097184
  %2411 = select i1 %2410, float %1912, float 0.000000e+00
  %2412 = and i32 %2316, 4194336
  %2413 = icmp eq i32 %2412, 4194336
  %2414 = select i1 %2413, float %1912, float 0.000000e+00
  %2415 = and i32 %2316, 8388640
  %2416 = icmp eq i32 %2415, 8388640
  %2417 = select i1 %2416, float %1912, float 0.000000e+00
  %2418 = and i32 %2316, 16384
  %2419 = icmp ne i32 %2418, 0
  %2420 = select i1 %2419, float %1912, float 0.000000e+00
  %2421 = icmp eq i32 %2406, 0
  br i1 %2421, label %2422, label %2438

; <label>:2422                                    ; preds = %2408
  %2423 = fsub fast float %2213, %1717
  %2424 = fsub fast float %2214, %1718
  %2425 = fmul fast float %2411, %2423
  %2426 = fmul fast float %2411, %2424
  %2427 = fadd fast float %2425, %1717
  %2428 = fadd fast float %2426, %1718
  %2429 = fsub fast float %2215, %1727
  %2430 = fmul fast float %2414, %2429
  %2431 = fadd fast float %2430, %1727
  %2432 = fsub fast float %2212, %1726
  %2433 = fmul fast float %2417, %2432
  %2434 = fadd fast float %2433, %1726
  %2435 = fsub fast float %2286, %1728
  %2436 = fmul fast float %2420, %2435
  %2437 = fadd fast float %2436, %1728
  br label %2490

; <label>:2438                                    ; preds = %2408
  %2439 = icmp eq i32 %2406, 4
  br i1 %2439, label %2440, label %2474

; <label>:2440                                    ; preds = %2438
  %2441 = fmul fast float %2411, %2213
  %2442 = fmul fast float %2411, %2214
  %2443 = fadd fast float %2441, %1717
  %2444 = fadd fast float %2442, %1718
  %2445 = call float @dx.op.binary.f32(i32 36, float %1727, float %2215)  ; FMin(a,b)
  %2446 = fsub fast float %2445, %1727
  %2447 = fmul fast float %2446, %2414
  %2448 = fadd fast float %2447, %1727
  %2449 = fadd fast float %2212, %1726
  %2450 = fmul fast float %2449, 0x3FF337FAE0000000
  %2451 = fmul fast float %1726, %1726
  %2452 = fmul fast float %2212, %2212
  %2453 = fadd fast float %2452, %2451
  %2454 = fmul fast float %2453, 0x3FE5152B00000000
  %2455 = fmul fast float %1726, 0xBFCC1F85E0000000
  %2456 = fmul fast float %2455, %2212
  %2457 = fadd fast float %2456, 0xBFE1363700000000
  %2458 = fadd fast float %2457, %2450
  %2459 = fsub fast float %2458, %2454
  %2460 = fmul fast float %2449, 0x3FBA6F0D00000000
  %2461 = fmul fast float %2453, 0x3FD0432880000000
  %2462 = fmul fast float %1726, 0xBFEF110800000000
  %2463 = fmul fast float %2462, %2212
  %2464 = fadd fast float %2463, 1.000000e+00
  %2465 = fsub fast float %2464, %2460
  %2466 = fadd fast float %2465, %2461
  %2467 = fdiv fast float %2459, %2466
  %2468 = call float @dx.op.unary.f32(i32 7, float %2467)  ; Saturate(value)
  %2469 = fsub fast float %2468, %1726
  %2470 = fmul fast float %2469, %2417
  %2471 = fadd fast float %2470, %1726
  %2472 = fmul fast float %2420, %2286
  %2473 = fadd fast float %2472, %1728
  br label %2490

; <label>:2474                                    ; preds = %2438
  %2475 = icmp eq i32 %2406, 8
  br i1 %2475, label %2476, label %2490

; <label>:2476                                    ; preds = %2474
  %2477 = fmul fast float %2411, %2213
  %2478 = fmul fast float %2411, %2214
  %2479 = fadd fast float %2477, %1717
  %2480 = fadd fast float %2478, %1718
  %2481 = call float @dx.op.binary.f32(i32 36, float %1727, float %2215)  ; FMin(a,b)
  %2482 = fsub fast float %2481, %1727
  %2483 = fmul fast float %2482, %2414
  %2484 = fadd fast float %2483, %1727
  %2485 = fsub fast float %2212, %1726
  %2486 = fmul fast float %2417, %2485
  %2487 = fadd fast float %2486, %1726
  %2488 = fmul fast float %2420, %2286
  %2489 = fadd fast float %2488, %1728
  br label %2490

; <label>:2490                                    ; preds = %2476, %2474, %2440, %2422, %2397, %1911, %1730, %1716
  %2491 = phi float [ %1717, %2397 ], [ %1717, %1911 ], [ %1717, %1716 ], [ %2479, %2476 ], [ %1717, %2474 ], [ %2443, %2440 ], [ %2427, %2422 ], [ %1717, %1730 ]
  %2492 = phi float [ %1718, %2397 ], [ %1718, %1911 ], [ %1718, %1716 ], [ %2480, %2476 ], [ %1718, %2474 ], [ %2444, %2440 ], [ %2428, %2422 ], [ %1718, %1730 ]
  %2493 = phi float [ %2398, %2397 ], [ %1719, %1911 ], [ %1719, %1716 ], [ %2398, %2476 ], [ %2398, %2474 ], [ %2398, %2440 ], [ %2398, %2422 ], [ %1719, %1730 ]
  %2494 = phi float [ %2399, %2397 ], [ %1720, %1911 ], [ %1720, %1716 ], [ %2399, %2476 ], [ %2399, %2474 ], [ %2399, %2440 ], [ %2399, %2422 ], [ %1720, %1730 ]
  %2495 = phi float [ %2400, %2397 ], [ %1721, %1911 ], [ %1721, %1716 ], [ %2400, %2476 ], [ %2400, %2474 ], [ %2400, %2440 ], [ %2400, %2422 ], [ %1721, %1730 ]
  %2496 = phi float [ %2401, %2397 ], [ %1722, %1911 ], [ %1722, %1716 ], [ %2401, %2476 ], [ %2401, %2474 ], [ %2401, %2440 ], [ %2401, %2422 ], [ %1722, %1730 ]
  %2497 = phi float [ %2402, %2397 ], [ %1723, %1911 ], [ %1723, %1716 ], [ %2402, %2476 ], [ %2402, %2474 ], [ %2402, %2440 ], [ %2402, %2422 ], [ %1723, %1730 ]
  %2498 = phi float [ %2403, %2397 ], [ %1724, %1911 ], [ %1724, %1716 ], [ %2403, %2476 ], [ %2403, %2474 ], [ %2403, %2440 ], [ %2403, %2422 ], [ %1724, %1730 ]
  %2499 = phi float [ %2404, %2397 ], [ %1725, %1911 ], [ %1725, %1716 ], [ %2404, %2476 ], [ %2404, %2474 ], [ %2404, %2440 ], [ %2404, %2422 ], [ %1725, %1730 ]
  %2500 = phi float [ %1726, %2397 ], [ %1726, %1911 ], [ %1726, %1716 ], [ %2487, %2476 ], [ %1726, %2474 ], [ %2471, %2440 ], [ %2434, %2422 ], [ %1726, %1730 ]
  %2501 = phi float [ %1727, %2397 ], [ %1727, %1911 ], [ %1727, %1716 ], [ %2484, %2476 ], [ %1727, %2474 ], [ %2448, %2440 ], [ %2431, %2422 ], [ %1727, %1730 ]
  %2502 = phi float [ %1728, %2397 ], [ %1728, %1911 ], [ %1728, %1716 ], [ %2489, %2476 ], [ %1728, %2474 ], [ %2473, %2440 ], [ %2437, %2422 ], [ %1728, %1730 ]
  %2503 = phi float [ %2405, %2397 ], [ %1729, %1911 ], [ %1729, %1716 ], [ %2405, %2476 ], [ %2405, %2474 ], [ %2405, %2440 ], [ %2405, %2422 ], [ %1729, %1730 ]
  br i1 %399, label %3264, label %2504

; <label>:2504                                    ; preds = %2490
  %2505 = icmp ult i32 %450, 4
  %2506 = add i32 %28, 72
  %2507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = add i32 %28, 76
  %2510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2509, i32 undef)  ; BufferLoad(srv,index,wot)
  %2511 = extractvalue %dx.types.ResRet.i32 %2510, 0
  %2512 = or i32 %2511, %2508
  %2513 = icmp eq i32 %2512, 0
  br i1 %2513, label %3264, label %2514

; <label>:2514                                    ; preds = %2504
  %2515 = and i32 %2508, 262144
  %2516 = icmp ne i32 %2515, 0
  %2517 = select i1 %2516, float %33, float 1.000000e+00
  %2518 = select i1 %2516, float %34, float 0.000000e+00
  %2519 = select i1 %2516, float %35, float 0.000000e+00
  %2520 = select i1 %2516, float %36, float 1.000000e+00
  %2521 = select i1 %2516, float %37, float %60
  %2522 = select i1 %2516, float %38, float %61
  %2523 = add i32 %28, 332
  %2524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2523, i32 undef)  ; BufferLoad(srv,index,wot)
  %2525 = extractvalue %dx.types.ResRet.i32 %2524, 0
  %2526 = lshr i32 %2525, 16
  %2527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2526)  ; LegacyF16ToF32(value)
  %2528 = fmul fast float %2527, 0x3F50624DE0000000
  %2529 = add i32 %28, 136
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = lshr i32 %2531, 16
  %2533 = and i32 %2532, 255
  %2534 = lshr i32 %2531, 24
  %2535 = add i32 %28, 340
  %2536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2535, i32 undef)  ; BufferLoad(srv,index,wot)
  %2537 = extractvalue %dx.types.ResRet.i32 %2536, 0
  %2538 = and i32 %2537, 65535
  %2539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2538)  ; LegacyF16ToF32(value)
  %2540 = lshr i32 %2537, 16
  %2541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2540)  ; LegacyF16ToF32(value)
  %2542 = add i32 %28, 80
  %2543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2544 = extractvalue %dx.types.ResRet.i32 %2543, 0
  %2545 = lshr i32 %2544, 22
  %2546 = shl nuw nsw i32 %2545, 5
  %2547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2546)  ; LegacyF16ToF32(value)
  %2548 = shl i32 %2544, 4
  %2549 = and i32 %2548, 32752
  %2550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2549)  ; LegacyF16ToF32(value)
  %2551 = lshr i32 %2544, 7
  %2552 = and i32 %2551, 32752
  %2553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2552)  ; LegacyF16ToF32(value)
  %2554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2555 = extractvalue %dx.types.CBufRet.f32 %2554, 3
  %2556 = fmul fast float %2555, 1.000000e+03
  %2557 = fmul fast float %389, %2556
  %2558 = call float @dx.op.unary.f32(i32 22, float %2557)  ; Frc(value)
  %2559 = fadd fast float %2558, %379
  %2560 = fmul fast float %390, %2556
  %2561 = call float @dx.op.unary.f32(i32 22, float %2560)  ; Frc(value)
  %2562 = fadd fast float %2561, %381
  %2563 = fmul fast float %2528, %2556
  %2564 = call float @dx.op.unary.f32(i32 22, float %2563)  ; Frc(value)
  %2565 = fmul fast float %2564, 0x401921FB60000000
  %2566 = fadd fast float %2565, %2547
  %2567 = call float @dx.op.unary.f32(i32 13, float %2566)  ; Sin(value)
  %2568 = call float @dx.op.unary.f32(i32 12, float %2566)  ; Cos(value)
  %2569 = fsub fast float -0.000000e+00, %2567
  %2570 = fadd fast float %2521, -5.000000e-01
  %2571 = fadd fast float %2522, -5.000000e-01
  %2572 = fmul fast float %2539, %2570
  %2573 = fmul fast float %2541, %2571
  %2574 = fadd fast float %2572, 5.000000e-01
  %2575 = fadd fast float %2573, 5.000000e-01
  %2576 = fmul fast float %2550, %2574
  %2577 = fmul fast float %2553, %2575
  %2578 = fmul fast float %2568, %2576
  %2579 = call float @dx.op.tertiary.f32(i32 46, float %2569, float %2577, float %2578)  ; FMad(a,b,c)
  %2580 = fmul fast float %2567, %2576
  %2581 = call float @dx.op.tertiary.f32(i32 46, float %2568, float %2577, float %2580)  ; FMad(a,b,c)
  %2582 = fadd fast float %2559, %2579
  %2583 = fadd fast float %2562, %2581
  %2584 = icmp ugt i32 %2533, 1
  %2585 = icmp ugt i32 %2531, 33554431
  %2586 = or i1 %2585, %2584
  br i1 %2586, label %2587, label %2612

; <label>:2587                                    ; preds = %2514
  %2588 = add i32 %28, 276
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2588, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = lshr i32 %2590, 16
  %2592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2591)  ; LegacyF16ToF32(value)
  %2593 = fmul fast float %2555, %2592
  %2594 = call float @dx.op.unary.f32(i32 22, float %2593)  ; Frc(value)
  %2595 = mul nuw nsw i32 %2533, %2534
  %2596 = uitofp i32 %2595 to float
  %2597 = fmul fast float %2594, %2596
  %2598 = call float @dx.op.unary.f32(i32 27, float %2597)  ; Round_ni(value)
  %2599 = fptoui float %2598 to i32
  %2600 = urem i32 %2599, %2533
  %2601 = udiv i32 %2599, %2534
  %2602 = call float @dx.op.unary.f32(i32 22, float %2582)  ; Frc(value)
  %2603 = call float @dx.op.unary.f32(i32 22, float %2583)  ; Frc(value)
  %2604 = uitofp i32 %2600 to float
  %2605 = uitofp i32 %2601 to float
  %2606 = fadd fast float %2602, %2604
  %2607 = fadd fast float %2603, %2605
  %2608 = uitofp i32 %2533 to float
  %2609 = uitofp i32 %2534 to float
  %2610 = fdiv fast float %2606, %2608
  %2611 = fdiv fast float %2607, %2609
  br label %2612

; <label>:2612                                    ; preds = %2587, %2514
  %2613 = phi float [ %2610, %2587 ], [ %2582, %2514 ]
  %2614 = phi float [ %2611, %2587 ], [ %2583, %2514 ]
  %2615 = and i32 %2508, 256
  %2616 = icmp eq i32 %2615, 0
  br i1 %2616, label %2663, label %2617

; <label>:2617                                    ; preds = %2612
  %2618 = add i32 %28, 452
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = add i32 %2620, 0
  %2622 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2621, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2623 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2622, %dx.types.Handle %69, float %2613, float %2614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2624 = extractvalue %dx.types.ResRet.f32 %2623, 0
  %2625 = add i32 %28, 148
  %2626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2625, i32 undef)  ; BufferLoad(srv,index,wot)
  %2627 = extractvalue %dx.types.ResRet.i32 %2626, 0
  %2628 = shl i32 %2627, 4
  %2629 = and i32 %2628, 32752
  %2630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2629)  ; LegacyF16ToF32(value)
  %2631 = lshr i32 %2627, 7
  %2632 = and i32 %2631, 32752
  %2633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2632)  ; LegacyF16ToF32(value)
  %2634 = fsub fast float 1.000000e+00, %445
  %2635 = call float @dx.op.binary.f32(i32 35, float %2634, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2636 = bitcast float %445 to i32
  %2637 = sitofp i32 %2636 to float
  %2638 = fadd fast float %2637, 0xC1CFBF8940000000
  %2639 = fmul fast float %2633, %2638
  %2640 = fadd fast float %2639, 0x41CFBF8940000000
  %2641 = fptosi float %2640 to i32
  %2642 = bitcast i32 %2641 to float
  %2643 = bitcast float %2635 to i32
  %2644 = sitofp i32 %2643 to float
  %2645 = fadd fast float %2644, 0xC1CFBF8940000000
  %2646 = fmul fast float %2645, %2633
  %2647 = fadd fast float %2646, 0x41CFBF8940000000
  %2648 = fptosi float %2647 to i32
  %2649 = bitcast i32 %2648 to float
  %2650 = fmul fast float %2642, %2630
  %2651 = fmul fast float %2649, %2630
  %2652 = fsub fast float %2635, %2650
  %2653 = fadd fast float %2651, %2635
  %2654 = call float @dx.op.unary.f32(i32 7, float %2652)  ; Saturate(value)
  %2655 = call float @dx.op.unary.f32(i32 7, float %2653)  ; Saturate(value)
  %2656 = fsub fast float %2624, %2654
  %2657 = fsub fast float %2655, %2654
  %2658 = bitcast float %2657 to i32
  %2659 = sub nsw i32 2129859010, %2658
  %2660 = bitcast i32 %2659 to float
  %2661 = fmul fast float %2660, %2656
  %2662 = call float @dx.op.unary.f32(i32 7, float %2661)  ; Saturate(value)
  br label %2663

; <label>:2663                                    ; preds = %2617, %2612
  %2664 = phi float [ %2662, %2617 ], [ %445, %2612 ]
  %2665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2666 = extractvalue %dx.types.ResRet.i32 %2665, 0
  %2667 = and i32 %2666, 128
  %2668 = icmp eq i32 %2667, 0
  br i1 %2668, label %2685, label %2669

; <label>:2669                                    ; preds = %2663
  %2670 = add i32 %28, 436
  %2671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %2672 = extractvalue %dx.types.ResRet.i32 %2671, 0
  %2673 = add i32 %2672, 0
  %2674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2673, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2675 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2674, %dx.types.Handle %69, float %2613, float %2614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2676 = extractvalue %dx.types.ResRet.f32 %2675, 0
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = and i32 %2678, 524288
  %2680 = icmp ne i32 %2679, 0
  %2681 = fcmp fast ogt float %2676, 0x3FE0101020000000
  %2682 = select i1 %2681, float 1.000000e+00, float 0.000000e+00
  %2683 = select i1 %2680, float %2682, float %2676
  %2684 = fmul fast float %2683, %2664
  br label %2685

; <label>:2685                                    ; preds = %2669, %2663
  %2686 = phi float [ %2684, %2669 ], [ %2664, %2663 ]
  %2687 = fcmp fast ult float %2686, 0x3F70101020000000
  br i1 %2687, label %3264, label %2688

; <label>:2688                                    ; preds = %2685
  %2689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2690 = extractvalue %dx.types.ResRet.i32 %2689, 0
  %2691 = and i32 %2690, 16
  %2692 = icmp eq i32 %2691, 0
  br i1 %2692, label %2891, label %2693

; <label>:2693                                    ; preds = %2688
  %2694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2695 = extractvalue %dx.types.ResRet.i32 %2694, 0
  %2696 = add i32 %28, 388
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2696, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = add i32 %2698, 0
  %2700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2699, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2701 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2700, %dx.types.Handle %68, float %2613, float %2614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2702 = extractvalue %dx.types.ResRet.f32 %2701, 0
  %2703 = extractvalue %dx.types.ResRet.f32 %2701, 1
  %2704 = extractvalue %dx.types.ResRet.f32 %2701, 2
  %2705 = extractvalue %dx.types.ResRet.f32 %2701, 3
  %2706 = and i32 %2695, 255
  %2707 = uitofp i32 %2706 to float
  %2708 = lshr i32 %2695, 8
  %2709 = and i32 %2708, 255
  %2710 = uitofp i32 %2709 to float
  %2711 = fmul fast float %2705, %2707
  %2712 = fadd fast float %2711, %2710
  %2713 = fmul fast float %2712, 0x3F70101000000000
  %2714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2715 = extractvalue %dx.types.ResRet.i32 %2714, 0
  %2716 = and i32 %2715, 512
  %2717 = icmp eq i32 %2716, 0
  br i1 %2717, label %2726, label %2718

; <label>:2718                                    ; preds = %2693
  %2719 = add i32 %28, 472
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = add i32 %2721, 0
  %2723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2722, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2724 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2723, %dx.types.Handle %69, float %2613, float %2614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2725 = extractvalue %dx.types.ResRet.f32 %2724, 0
  br label %2726

; <label>:2726                                    ; preds = %2718, %2693
  %2727 = phi float [ %2725, %2718 ], [ 1.000000e+00, %2693 ]
  %2728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2729 = extractvalue %dx.types.ResRet.i32 %2728, 0
  %2730 = and i32 %2729, 33554432
  %2731 = icmp eq i32 %2730, 0
  br i1 %2731, label %2838, label %2732

; <label>:2732                                    ; preds = %2726
  %2733 = add i32 %28, 272
  %2734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2735 = extractvalue %dx.types.ResRet.i32 %2734, 0
  %2736 = and i32 %2735, 65535
  %2737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2736)  ; LegacyF16ToF32(value)
  %2738 = lshr i32 %2735, 16
  %2739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2738)  ; LegacyF16ToF32(value)
  %2740 = add i32 %28, 276
  %2741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2742 = extractvalue %dx.types.ResRet.i32 %2741, 0
  %2743 = and i32 %2742, 65535
  %2744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2743)  ; LegacyF16ToF32(value)
  %2745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %2746 = extractvalue %dx.types.ResRet.i32 %2745, 0
  %2747 = lshr i32 %2746, 24
  %2748 = uitofp i32 %2747 to float
  %2749 = fmul fast float %2748, 0x3F70101020000000
  %2750 = and i32 %2746, 255
  %2751 = uitofp i32 %2750 to float
  %2752 = fmul fast float %2751, 0x3F70101020000000
  %2753 = lshr i32 %2746, 8
  %2754 = and i32 %2753, 255
  %2755 = uitofp i32 %2754 to float
  %2756 = fmul fast float %2755, 0x3F70101020000000
  %2757 = lshr i32 %2746, 16
  %2758 = and i32 %2757, 255
  %2759 = uitofp i32 %2758 to float
  %2760 = fmul fast float %2759, 0x3F70101020000000
  %2761 = add i32 %28, 268
  %2762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2763 = extractvalue %dx.types.ResRet.i32 %2762, 0
  %2764 = lshr i32 %2763, 24
  %2765 = uitofp i32 %2764 to float
  %2766 = fmul fast float %2765, 0x3F70101020000000
  %2767 = and i32 %2763, 255
  %2768 = uitofp i32 %2767 to float
  %2769 = fmul fast float %2768, 0x3F70101020000000
  %2770 = lshr i32 %2763, 8
  %2771 = and i32 %2770, 255
  %2772 = uitofp i32 %2771 to float
  %2773 = fmul fast float %2772, 0x3F70101020000000
  %2774 = lshr i32 %2763, 16
  %2775 = and i32 %2774, 255
  %2776 = uitofp i32 %2775 to float
  %2777 = fmul fast float %2776, 0x3F70101020000000
  %2778 = bitcast float %2702 to i32
  %2779 = ashr i32 %2778, 1
  %2780 = sub nsw i32 1597463174, %2779
  %2781 = bitcast i32 %2780 to float
  %2782 = fmul fast float %2702, 5.000000e-01
  %2783 = fmul fast float %2781, %2781
  %2784 = fmul fast float %2783, %2782
  %2785 = fsub fast float 1.500000e+00, %2784
  %2786 = fmul fast float %2781, %2702
  %2787 = fmul fast float %2786, %2785
  %2788 = bitcast float %2703 to i32
  %2789 = ashr i32 %2788, 1
  %2790 = sub nsw i32 1597463174, %2789
  %2791 = bitcast i32 %2790 to float
  %2792 = fmul fast float %2703, 5.000000e-01
  %2793 = fmul fast float %2791, %2791
  %2794 = fmul fast float %2793, %2792
  %2795 = fsub fast float 1.500000e+00, %2794
  %2796 = fmul fast float %2791, %2703
  %2797 = fmul fast float %2796, %2795
  %2798 = bitcast float %2704 to i32
  %2799 = ashr i32 %2798, 1
  %2800 = sub nsw i32 1597463174, %2799
  %2801 = bitcast i32 %2800 to float
  %2802 = fmul fast float %2704, 5.000000e-01
  %2803 = fmul fast float %2801, %2801
  %2804 = fmul fast float %2803, %2802
  %2805 = fsub fast float 1.500000e+00, %2804
  %2806 = fmul fast float %2801, %2704
  %2807 = fmul fast float %2806, %2805
  %2808 = fsub fast float %2787, %2769
  %2809 = fsub fast float %2797, %2773
  %2810 = fsub fast float %2807, %2777
  %2811 = fmul fast float %2808, %2737
  %2812 = fmul fast float %2809, %2739
  %2813 = fmul fast float %2810, %2744
  %2814 = fadd fast float %2811, %2752
  %2815 = fadd fast float %2812, %2756
  %2816 = fadd fast float %2813, %2760
  %2817 = call float @dx.op.unary.f32(i32 7, float %2814)  ; Saturate(value)
  %2818 = call float @dx.op.unary.f32(i32 7, float %2815)  ; Saturate(value)
  %2819 = call float @dx.op.unary.f32(i32 7, float %2816)  ; Saturate(value)
  %2820 = fmul fast float %2817, %2817
  %2821 = fmul fast float %2818, %2818
  %2822 = fmul fast float %2819, %2819
  %2823 = fsub fast float %2820, %2702
  %2824 = fsub fast float %2821, %2703
  %2825 = fsub fast float %2822, %2704
  %2826 = fmul fast float %2823, %2727
  %2827 = fmul fast float %2824, %2727
  %2828 = fmul fast float %2825, %2727
  %2829 = fadd fast float %2826, %2702
  %2830 = fadd fast float %2827, %2703
  %2831 = fadd fast float %2828, %2704
  %2832 = fadd fast float %2749, %2713
  %2833 = fsub fast float %2832, %2766
  %2834 = call float @dx.op.unary.f32(i32 7, float %2833)  ; Saturate(value)
  %2835 = fsub fast float %2834, %2713
  %2836 = fmul fast float %2835, %2727
  %2837 = fadd fast float %2836, %2713
  br label %2891

; <label>:2838                                    ; preds = %2726
  %2839 = and i32 %2729, 134217728
  %2840 = icmp eq i32 %2839, 0
  br i1 %2840, label %2875, label %2841

; <label>:2841                                    ; preds = %2838
  %2842 = call float @dx.op.unary.f32(i32 24, float %366)  ; Sqrt(value)
  %2843 = call float @dx.op.unary.f32(i32 24, float %370)  ; Sqrt(value)
  %2844 = call float @dx.op.unary.f32(i32 24, float %374)  ; Sqrt(value)
  %2845 = fadd fast float %2842, -5.000000e-01
  %2846 = fadd fast float %2843, -5.000000e-01
  %2847 = fadd fast float %2844, -5.000000e-01
  %2848 = fmul fast float %2845, %2727
  %2849 = fmul fast float %2846, %2727
  %2850 = fmul fast float %2847, %2727
  %2851 = fadd fast float %2848, 5.000000e-01
  %2852 = fadd fast float %2849, 5.000000e-01
  %2853 = fadd fast float %2850, 5.000000e-01
  %2854 = call float @dx.op.unary.f32(i32 24, float %2702)  ; Sqrt(value)
  %2855 = call float @dx.op.unary.f32(i32 24, float %2703)  ; Sqrt(value)
  %2856 = call float @dx.op.unary.f32(i32 24, float %2704)  ; Sqrt(value)
  %2857 = fmul fast float %2851, 2.000000e+00
  %2858 = fsub fast float 1.000000e+00, %2857
  %2859 = fmul fast float %2858, %2854
  %2860 = fadd fast float %2859, %2857
  %2861 = fmul fast float %2860, %2854
  %2862 = fmul fast float %2852, 2.000000e+00
  %2863 = fsub fast float 1.000000e+00, %2862
  %2864 = fmul fast float %2863, %2855
  %2865 = fadd fast float %2864, %2862
  %2866 = fmul fast float %2865, %2855
  %2867 = fmul fast float %2853, 2.000000e+00
  %2868 = fsub fast float 1.000000e+00, %2867
  %2869 = fmul fast float %2868, %2856
  %2870 = fadd fast float %2869, %2867
  %2871 = fmul fast float %2870, %2856
  %2872 = fmul fast float %2861, %2861
  %2873 = fmul fast float %2866, %2866
  %2874 = fmul fast float %2871, %2871
  br label %2891

; <label>:2875                                    ; preds = %2838
  %2876 = fmul fast float %366, %366
  %2877 = fmul fast float %370, %370
  %2878 = fmul fast float %374, %374
  %2879 = fadd fast float %2876, -1.000000e+00
  %2880 = fadd fast float %2877, -1.000000e+00
  %2881 = fadd fast float %2878, -1.000000e+00
  %2882 = fmul fast float %2727, %2879
  %2883 = fmul fast float %2727, %2880
  %2884 = fmul fast float %2727, %2881
  %2885 = fadd fast float %2882, 1.000000e+00
  %2886 = fadd fast float %2883, 1.000000e+00
  %2887 = fadd fast float %2884, 1.000000e+00
  %2888 = fmul fast float %2885, %2702
  %2889 = fmul fast float %2886, %2703
  %2890 = fmul fast float %2887, %2704
  br label %2891

; <label>:2891                                    ; preds = %2875, %2841, %2732, %2688
  %2892 = phi float [ %2837, %2732 ], [ %2713, %2841 ], [ %2713, %2875 ], [ 0x3FA23C0BE0000000, %2688 ]
  %2893 = phi float [ %2829, %2732 ], [ %2872, %2841 ], [ %2888, %2875 ], [ 1.000000e+00, %2688 ]
  %2894 = phi float [ %2830, %2732 ], [ %2873, %2841 ], [ %2889, %2875 ], [ 1.000000e+00, %2688 ]
  %2895 = phi float [ %2831, %2732 ], [ %2874, %2841 ], [ %2890, %2875 ], [ 1.000000e+00, %2688 ]
  %2896 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2897 = extractvalue %dx.types.CBufRet.i32 %2896, 1
  %2898 = and i32 %2897, 1
  %2899 = icmp ne i32 %2898, 0
  %2900 = add i32 %28, 356
  %2901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %2902 = extractvalue %dx.types.ResRet.i32 %2901, 0
  %2903 = and i32 %2902, 32
  %2904 = icmp ne i32 %2903, 0
  %2905 = and i1 %2899, %2904
  %2906 = select i1 %2905, float 1.000000e+00, float %2893
  %2907 = select i1 %2905, float 0x3FD3333340000000, float %2894
  %2908 = select i1 %2905, float 0x3FD3333340000000, float %2895
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = and i32 %2910, 32
  %2912 = icmp eq i32 %2911, 0
  br i1 %2912, label %2985, label %2913

; <label>:2913                                    ; preds = %2891
  %2914 = add i32 %28, 140
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2914, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = add i32 %28, 404
  %2918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %2919 = extractvalue %dx.types.ResRet.i32 %2918, 0
  %2920 = add i32 %2919, 0
  %2921 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2920, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2922 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2921, %dx.types.Handle %68, float %2613, float %2614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2923 = extractvalue %dx.types.ResRet.f32 %2922, 0
  %2924 = extractvalue %dx.types.ResRet.f32 %2922, 1
  %2925 = extractvalue %dx.types.ResRet.f32 %2922, 2
  %2926 = extractvalue %dx.types.ResRet.f32 %2922, 3
  %2927 = and i32 %2916, 255
  %2928 = uitofp i32 %2927 to float
  %2929 = lshr i32 %2916, 8
  %2930 = and i32 %2929, 255
  %2931 = uitofp i32 %2930 to float
  %2932 = lshr i32 %2916, 16
  %2933 = and i32 %2932, 255
  %2934 = uitofp i32 %2933 to float
  %2935 = fmul fast float %2934, 0x3F70101000000000
  %2936 = fmul fast float %2923, %2928
  %2937 = fadd fast float %2936, %2931
  %2938 = fmul fast float %2937, 0x3F70101000000000
  %2939 = fadd fast float %2924, -5.000000e-01
  %2940 = fadd fast float %2926, -5.000000e-01
  %2941 = fmul fast float %2939, %2935
  %2942 = fmul fast float %2940, %2935
  %2943 = fadd fast float %2941, 5.000000e-01
  %2944 = fadd fast float %2942, 5.000000e-01
  %2945 = fmul fast float %2943, 2.000000e+00
  %2946 = fadd fast float %2945, -1.000000e+00
  %2947 = fmul fast float %2944, 2.000000e+00
  %2948 = fadd fast float %2947, -1.000000e+00
  %2949 = fadd fast float %2946, %2948
  %2950 = fmul fast float %2949, 5.000000e-01
  %2951 = fsub fast float %2946, %2948
  %2952 = fmul fast float %2951, 5.000000e-01
  %2953 = call float @dx.op.unary.f32(i32 6, float %2950)  ; FAbs(value)
  %2954 = fsub fast float 1.000000e+00, %2953
  %2955 = call float @dx.op.unary.f32(i32 6, float %2952)  ; FAbs(value)
  %2956 = fsub fast float %2954, %2955
  %2957 = call float @dx.op.dot3.f32(i32 55, float %2950, float %2952, float %2956, float %2950, float %2952, float %2956)  ; Dot3(ax,ay,az,bx,by,bz)
  %2958 = call float @dx.op.unary.f32(i32 25, float %2957)  ; Rsqrt(value)
  %2959 = fmul fast float %2950, %2958
  %2960 = fmul fast float %2952, %2958
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = and i32 %2962, 67108864
  %2964 = icmp eq i32 %2963, 0
  br i1 %2964, label %2981, label %2965

; <label>:2965                                    ; preds = %2913
  %2966 = add i32 %28, 328
  %2967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2966, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.i32 %2967, 0
  %2969 = and i32 %2968, 65535
  %2970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2969)  ; LegacyF16ToF32(value)
  %2971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2523, i32 undef)  ; BufferLoad(srv,index,wot)
  %2972 = extractvalue %dx.types.ResRet.i32 %2971, 0
  %2973 = and i32 %2972, 65535
  %2974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2973)  ; LegacyF16ToF32(value)
  %2975 = lshr i32 %2968, 16
  %2976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2975)  ; LegacyF16ToF32(value)
  %2977 = fsub fast float %2938, %2976
  %2978 = fmul fast float %2977, %2970
  %2979 = fadd fast float %2978, %2974
  %2980 = call float @dx.op.unary.f32(i32 7, float %2979)  ; Saturate(value)
  br label %2981

; <label>:2981                                    ; preds = %2965, %2913
  %2982 = phi float [ %2980, %2965 ], [ %2938, %2913 ]
  %2983 = call float @dx.op.dot2.f32(i32 54, float %2959, float %2960, float %2517, float %2518)  ; Dot2(ax,ay,bx,by)
  %2984 = call float @dx.op.dot2.f32(i32 54, float %2959, float %2960, float %2519, float %2520)  ; Dot2(ax,ay,bx,by)
  br label %2985

; <label>:2985                                    ; preds = %2981, %2891
  %2986 = phi float [ %2982, %2981 ], [ 0x3FD6666660000000, %2891 ]
  %2987 = phi float [ %2983, %2981 ], [ 0.000000e+00, %2891 ]
  %2988 = phi float [ %2984, %2981 ], [ 0.000000e+00, %2891 ]
  %2989 = phi float [ %2925, %2981 ], [ 1.000000e+00, %2891 ]
  %2990 = add i32 %28, 208
  %2991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.i32 %2991, 0
  %2993 = lshr i32 %2992, 22
  %2994 = shl nuw nsw i32 %2993, 5
  %2995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2994)  ; LegacyF16ToF32(value)
  %2996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2997 = extractvalue %dx.types.ResRet.i32 %2996, 0
  %2998 = and i32 %2997, 64
  %2999 = icmp eq i32 %2998, 0
  br i1 %2999, label %3033, label %3000

; <label>:3000                                    ; preds = %2985
  %3001 = add i32 %28, 420
  %3002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3001, i32 undef)  ; BufferLoad(srv,index,wot)
  %3003 = extractvalue %dx.types.ResRet.i32 %3002, 0
  %3004 = add i32 %3003, 0
  %3005 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3004, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %3007 = extractvalue %dx.types.ResRet.i32 %3006, 0
  %3008 = and i32 %3007, 131072
  %3009 = icmp eq i32 %3008, 0
  %3010 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3005, %dx.types.Handle %68, float %2613, float %2614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3011 = extractvalue %dx.types.ResRet.f32 %3010, 0
  %3012 = extractvalue %dx.types.ResRet.f32 %3010, 1
  %3013 = extractvalue %dx.types.ResRet.f32 %3010, 2
  %3014 = fmul fast float %3011, %354
  %3015 = fmul fast float %3012, %357
  %3016 = fmul fast float %3013, %360
  br i1 %3009, label %3023, label %3017

; <label>:3017                                    ; preds = %3000
  %3018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3019 = extractvalue %dx.types.CBufRet.f32 %3018, 0
  %3020 = fmul fast float %3019, %3014
  %3021 = fmul fast float %3019, %3015
  %3022 = fmul fast float %3019, %3016
  br label %3023

; <label>:3023                                    ; preds = %3017, %3000
  %3024 = phi float [ %3020, %3017 ], [ %3014, %3000 ]
  %3025 = phi float [ %3021, %3017 ], [ %3015, %3000 ]
  %3026 = phi float [ %3022, %3017 ], [ %3016, %3000 ]
  %3027 = fmul fast float %3024, %2995
  %3028 = select i1 %211, float %3027, float %3024
  %3029 = call float @dx.op.dot3.f32(i32 55, float %3028, float %3025, float %3026, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3030 = select i1 %211, float 0.000000e+00, float %3024
  %3031 = select i1 %211, float %3029, float %3025
  %3032 = select i1 %211, float 0.000000e+00, float %3026
  br label %3033

; <label>:3033                                    ; preds = %3023, %2985
  %3034 = phi float [ %3030, %3023 ], [ 0.000000e+00, %2985 ]
  %3035 = phi float [ %3031, %3023 ], [ 0.000000e+00, %2985 ]
  %3036 = phi float [ %3032, %3023 ], [ 0.000000e+00, %2985 ]
  %3037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %3038 = extractvalue %dx.types.ResRet.i32 %3037, 0
  %3039 = and i32 %3038, 16384
  %3040 = icmp eq i32 %3039, 0
  br i1 %3040, label %3059, label %3041

; <label>:3041                                    ; preds = %3033
  %3042 = and i32 %3038, 1048576
  %3043 = icmp ne i32 %3042, 0
  %3044 = add i32 %28, 488
  %3045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3044, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.i32 %3045, 0
  %3047 = add i32 %3046, 0
  %3048 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3047, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3049 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3048, %dx.types.Handle %69, float %2613, float %2614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3050 = extractvalue %dx.types.ResRet.f32 %3049, 0
  %3051 = add i32 %28, 144
  %3052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3053 = extractvalue %dx.types.ResRet.i32 %3052, 0
  %3054 = lshr i32 %3053, 24
  %3055 = uitofp i32 %3054 to float
  %3056 = fmul fast float %3050, 0x3F70101020000000
  %3057 = select i1 %3043, float 0x3F70101020000000, float %3056
  %3058 = fmul fast float %3057, %3055
  br label %3059

; <label>:3059                                    ; preds = %3041, %3033
  %3060 = phi float [ %3058, %3041 ], [ 0.000000e+00, %3033 ]
  %3061 = add i32 %28, 144
  %3062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3061, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.i32 %3062, 0
  %3064 = and i32 %3063, 255
  %3065 = uitofp i32 %3064 to float
  %3066 = lshr i32 %3063, 8
  %3067 = and i32 %3066, 255
  %3068 = uitofp i32 %3067 to float
  %3069 = call float @dx.op.dot3.f32(i32 55, float %2906, float %2907, float %2908, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3070 = fmul fast float %3068, %3069
  %3071 = fadd fast float %3070, %3065
  %3072 = fmul fast float %3071, 0x3F70101020000000
  %3073 = call float @dx.op.unary.f32(i32 7, float %3072)  ; Saturate(value)
  br i1 %2505, label %3074, label %3082

; <label>:3074                                    ; preds = %3059
  %3075 = fsub fast float 1.000000e+00, %2686
  %3076 = fmul fast float %3075, %2493
  %3077 = fmul fast float %3075, %2494
  %3078 = fmul fast float %3075, %2495
  %3079 = fmul fast float %3075, %2496
  %3080 = fmul fast float %3075, %2497
  %3081 = fmul fast float %3075, %2498
  br label %3082

; <label>:3082                                    ; preds = %3074, %3059
  %3083 = phi float [ %3076, %3074 ], [ %2493, %3059 ]
  %3084 = phi float [ %3077, %3074 ], [ %2494, %3059 ]
  %3085 = phi float [ %3078, %3074 ], [ %2495, %3059 ]
  %3086 = phi float [ %3079, %3074 ], [ %2496, %3059 ]
  %3087 = phi float [ %3080, %3074 ], [ %2497, %3059 ]
  %3088 = phi float [ %3081, %3074 ], [ %2498, %3059 ]
  %3089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %3090 = extractvalue %dx.types.ResRet.i32 %3089, 0
  %3091 = and i32 %3090, 3
  %3092 = icmp eq i32 %3091, 3
  br i1 %3092, label %3171, label %3093

; <label>:3093                                    ; preds = %3082
  %3094 = and i32 %3090, 16
  %3095 = icmp ne i32 %3094, 0
  %3096 = select i1 %3095, float %2686, float 0.000000e+00
  %3097 = icmp eq i32 %3091, 0
  br i1 %3097, label %3098, label %3126

; <label>:3098                                    ; preds = %3093
  %3099 = and i32 %3090, 64
  %3100 = icmp ne i32 %3099, 0
  %3101 = select i1 %3100, float %2686, float 0.000000e+00
  %3102 = fsub fast float %2906, %3083
  %3103 = fsub fast float %2907, %3084
  %3104 = fsub fast float %2908, %3085
  %3105 = fmul fast float %3096, %3102
  %3106 = fmul fast float %3096, %3103
  %3107 = fmul fast float %3096, %3104
  %3108 = fadd fast float %3105, %3083
  %3109 = fadd fast float %3106, %3084
  %3110 = fadd fast float %3107, %3085
  %3111 = fsub fast float %2892, %2499
  %3112 = fmul fast float %3096, %3111
  %3113 = fadd fast float %3112, %2499
  %3114 = fsub fast float %3034, %3086
  %3115 = fsub fast float %3035, %3087
  %3116 = fsub fast float %3036, %3088
  %3117 = fmul fast float %3101, %3114
  %3118 = fmul fast float %3101, %3115
  %3119 = fmul fast float %3101, %3116
  %3120 = fadd fast float %3117, %3086
  %3121 = fadd fast float %3118, %3087
  %3122 = fadd fast float %3119, %3088
  %3123 = fsub fast float %3073, %2503
  %3124 = fmul fast float %3096, %3123
  %3125 = fadd fast float %3124, %2503
  br label %3171

; <label>:3126                                    ; preds = %3093
  %3127 = icmp eq i32 %3091, 1
  br i1 %3127, label %3128, label %3141

; <label>:3128                                    ; preds = %3126
  %3129 = fadd fast float %2906, -1.000000e+00
  %3130 = fadd fast float %2907, -1.000000e+00
  %3131 = fadd fast float %2908, -1.000000e+00
  %3132 = fmul fast float %3096, %3129
  %3133 = fmul fast float %3096, %3130
  %3134 = fmul fast float %3096, %3131
  %3135 = fadd fast float %3132, 1.000000e+00
  %3136 = fadd fast float %3133, 1.000000e+00
  %3137 = fadd fast float %3134, 1.000000e+00
  %3138 = fmul fast float %3135, %3083
  %3139 = fmul fast float %3136, %3084
  %3140 = fmul fast float %3137, %3085
  br label %3171

; <label>:3141                                    ; preds = %3126
  %3142 = icmp eq i32 %3091, 2
  br i1 %3142, label %3143, label %3171

; <label>:3143                                    ; preds = %3141
  %3144 = call float @dx.op.unary.f32(i32 24, float %2906)  ; Sqrt(value)
  %3145 = call float @dx.op.unary.f32(i32 24, float %2907)  ; Sqrt(value)
  %3146 = call float @dx.op.unary.f32(i32 24, float %2908)  ; Sqrt(value)
  %3147 = fadd fast float %3144, -5.000000e-01
  %3148 = fadd fast float %3145, -5.000000e-01
  %3149 = fadd fast float %3146, -5.000000e-01
  %3150 = fmul fast float %3147, %3096
  %3151 = fmul fast float %3148, %3096
  %3152 = fmul fast float %3149, %3096
  %3153 = fadd fast float %3150, 5.000000e-01
  %3154 = fadd fast float %3151, 5.000000e-01
  %3155 = fadd fast float %3152, 5.000000e-01
  %3156 = fmul fast float %3153, 2.000000e+00
  %3157 = fsub fast float 1.000000e+00, %3156
  %3158 = fmul fast float %3157, %3083
  %3159 = fadd fast float %3158, %3156
  %3160 = fmul fast float %3159, %3083
  %3161 = fmul fast float %3154, 2.000000e+00
  %3162 = fsub fast float 1.000000e+00, %3161
  %3163 = fmul fast float %3162, %3084
  %3164 = fadd fast float %3163, %3161
  %3165 = fmul fast float %3164, %3084
  %3166 = fmul fast float %3155, 2.000000e+00
  %3167 = fsub fast float 1.000000e+00, %3166
  %3168 = fmul fast float %3167, %3085
  %3169 = fadd fast float %3168, %3166
  %3170 = fmul fast float %3169, %3085
  br label %3171

; <label>:3171                                    ; preds = %3143, %3141, %3128, %3098, %3082
  %3172 = phi float [ %3083, %3082 ], [ %3160, %3143 ], [ %3083, %3141 ], [ %3138, %3128 ], [ %3108, %3098 ]
  %3173 = phi float [ %3084, %3082 ], [ %3165, %3143 ], [ %3084, %3141 ], [ %3139, %3128 ], [ %3109, %3098 ]
  %3174 = phi float [ %3085, %3082 ], [ %3170, %3143 ], [ %3085, %3141 ], [ %3140, %3128 ], [ %3110, %3098 ]
  %3175 = phi float [ %3086, %3082 ], [ %3086, %3143 ], [ %3086, %3141 ], [ %3086, %3128 ], [ %3120, %3098 ]
  %3176 = phi float [ %3087, %3082 ], [ %3087, %3143 ], [ %3087, %3141 ], [ %3087, %3128 ], [ %3121, %3098 ]
  %3177 = phi float [ %3088, %3082 ], [ %3088, %3143 ], [ %3088, %3141 ], [ %3088, %3128 ], [ %3122, %3098 ]
  %3178 = phi float [ %2499, %3082 ], [ %2499, %3143 ], [ %2499, %3141 ], [ %2499, %3128 ], [ %3113, %3098 ]
  %3179 = phi float [ %2503, %3082 ], [ %2503, %3143 ], [ %2503, %3141 ], [ %2503, %3128 ], [ %3125, %3098 ]
  %3180 = and i32 %3090, 12
  %3181 = icmp eq i32 %3180, 12
  br i1 %3181, label %3264, label %3182

; <label>:3182                                    ; preds = %3171
  %3183 = and i32 %3090, 2097184
  %3184 = icmp eq i32 %3183, 2097184
  %3185 = select i1 %3184, float %2686, float 0.000000e+00
  %3186 = and i32 %3090, 4194336
  %3187 = icmp eq i32 %3186, 4194336
  %3188 = select i1 %3187, float %2686, float 0.000000e+00
  %3189 = and i32 %3090, 8388640
  %3190 = icmp eq i32 %3189, 8388640
  %3191 = select i1 %3190, float %2686, float 0.000000e+00
  %3192 = and i32 %3090, 16384
  %3193 = icmp ne i32 %3192, 0
  %3194 = select i1 %3193, float %2686, float 0.000000e+00
  %3195 = icmp eq i32 %3180, 0
  br i1 %3195, label %3196, label %3212

; <label>:3196                                    ; preds = %3182
  %3197 = fsub fast float %2987, %2491
  %3198 = fsub fast float %2988, %2492
  %3199 = fmul fast float %3185, %3197
  %3200 = fmul fast float %3185, %3198
  %3201 = fadd fast float %3199, %2491
  %3202 = fadd fast float %3200, %2492
  %3203 = fsub fast float %2989, %2501
  %3204 = fmul fast float %3188, %3203
  %3205 = fadd fast float %3204, %2501
  %3206 = fsub fast float %2986, %2500
  %3207 = fmul fast float %3191, %3206
  %3208 = fadd fast float %3207, %2500
  %3209 = fsub fast float %3060, %2502
  %3210 = fmul fast float %3194, %3209
  %3211 = fadd fast float %3210, %2502
  br label %3264

; <label>:3212                                    ; preds = %3182
  %3213 = icmp eq i32 %3180, 4
  br i1 %3213, label %3214, label %3248

; <label>:3214                                    ; preds = %3212
  %3215 = fmul fast float %3185, %2987
  %3216 = fmul fast float %3185, %2988
  %3217 = fadd fast float %3215, %2491
  %3218 = fadd fast float %3216, %2492
  %3219 = call float @dx.op.binary.f32(i32 36, float %2501, float %2989)  ; FMin(a,b)
  %3220 = fsub fast float %3219, %2501
  %3221 = fmul fast float %3220, %3188
  %3222 = fadd fast float %3221, %2501
  %3223 = fadd fast float %2986, %2500
  %3224 = fmul fast float %3223, 0x3FF337FAE0000000
  %3225 = fmul fast float %2500, %2500
  %3226 = fmul fast float %2986, %2986
  %3227 = fadd fast float %3226, %3225
  %3228 = fmul fast float %3227, 0x3FE5152B00000000
  %3229 = fmul fast float %2500, 0xBFCC1F85E0000000
  %3230 = fmul fast float %3229, %2986
  %3231 = fadd fast float %3230, 0xBFE1363700000000
  %3232 = fadd fast float %3231, %3224
  %3233 = fsub fast float %3232, %3228
  %3234 = fmul fast float %3223, 0x3FBA6F0D00000000
  %3235 = fmul fast float %3227, 0x3FD0432880000000
  %3236 = fmul fast float %2500, 0xBFEF110800000000
  %3237 = fmul fast float %3236, %2986
  %3238 = fadd fast float %3237, 1.000000e+00
  %3239 = fsub fast float %3238, %3234
  %3240 = fadd fast float %3239, %3235
  %3241 = fdiv fast float %3233, %3240
  %3242 = call float @dx.op.unary.f32(i32 7, float %3241)  ; Saturate(value)
  %3243 = fsub fast float %3242, %2500
  %3244 = fmul fast float %3243, %3191
  %3245 = fadd fast float %3244, %2500
  %3246 = fmul fast float %3194, %3060
  %3247 = fadd fast float %3246, %2502
  br label %3264

; <label>:3248                                    ; preds = %3212
  %3249 = icmp eq i32 %3180, 8
  br i1 %3249, label %3250, label %3264

; <label>:3250                                    ; preds = %3248
  %3251 = fmul fast float %3185, %2987
  %3252 = fmul fast float %3185, %2988
  %3253 = fadd fast float %3251, %2491
  %3254 = fadd fast float %3252, %2492
  %3255 = call float @dx.op.binary.f32(i32 36, float %2501, float %2989)  ; FMin(a,b)
  %3256 = fsub fast float %3255, %2501
  %3257 = fmul fast float %3256, %3188
  %3258 = fadd fast float %3257, %2501
  %3259 = fsub fast float %2986, %2500
  %3260 = fmul fast float %3191, %3259
  %3261 = fadd fast float %3260, %2500
  %3262 = fmul fast float %3194, %3060
  %3263 = fadd fast float %3262, %2502
  br label %3264

; <label>:3264                                    ; preds = %3250, %3248, %3214, %3196, %3171, %2685, %2504, %2490
  %3265 = phi float [ %2491, %3171 ], [ %2491, %2685 ], [ %2491, %2490 ], [ %2491, %2504 ], [ %3201, %3196 ], [ %3217, %3214 ], [ %2491, %3248 ], [ %3253, %3250 ]
  %3266 = phi float [ %2492, %3171 ], [ %2492, %2685 ], [ %2492, %2490 ], [ %2492, %2504 ], [ %3202, %3196 ], [ %3218, %3214 ], [ %2492, %3248 ], [ %3254, %3250 ]
  %3267 = phi float [ %3172, %3171 ], [ %2493, %2685 ], [ %2493, %2490 ], [ %2493, %2504 ], [ %3172, %3196 ], [ %3172, %3214 ], [ %3172, %3248 ], [ %3172, %3250 ]
  %3268 = phi float [ %3173, %3171 ], [ %2494, %2685 ], [ %2494, %2490 ], [ %2494, %2504 ], [ %3173, %3196 ], [ %3173, %3214 ], [ %3173, %3248 ], [ %3173, %3250 ]
  %3269 = phi float [ %3174, %3171 ], [ %2495, %2685 ], [ %2495, %2490 ], [ %2495, %2504 ], [ %3174, %3196 ], [ %3174, %3214 ], [ %3174, %3248 ], [ %3174, %3250 ]
  %3270 = phi float [ %3175, %3171 ], [ %2496, %2685 ], [ %2496, %2490 ], [ %2496, %2504 ], [ %3175, %3196 ], [ %3175, %3214 ], [ %3175, %3248 ], [ %3175, %3250 ]
  %3271 = phi float [ %3176, %3171 ], [ %2497, %2685 ], [ %2497, %2490 ], [ %2497, %2504 ], [ %3176, %3196 ], [ %3176, %3214 ], [ %3176, %3248 ], [ %3176, %3250 ]
  %3272 = phi float [ %3177, %3171 ], [ %2498, %2685 ], [ %2498, %2490 ], [ %2498, %2504 ], [ %3177, %3196 ], [ %3177, %3214 ], [ %3177, %3248 ], [ %3177, %3250 ]
  %3273 = phi float [ %3178, %3171 ], [ %2499, %2685 ], [ %2499, %2490 ], [ %2499, %2504 ], [ %3178, %3196 ], [ %3178, %3214 ], [ %3178, %3248 ], [ %3178, %3250 ]
  %3274 = phi float [ %2500, %3171 ], [ %2500, %2685 ], [ %2500, %2490 ], [ %2500, %2504 ], [ %3208, %3196 ], [ %3245, %3214 ], [ %2500, %3248 ], [ %3261, %3250 ]
  %3275 = phi float [ %2501, %3171 ], [ %2501, %2685 ], [ %2501, %2490 ], [ %2501, %2504 ], [ %3205, %3196 ], [ %3222, %3214 ], [ %2501, %3248 ], [ %3258, %3250 ]
  %3276 = phi float [ %2502, %3171 ], [ %2502, %2685 ], [ %2502, %2490 ], [ %2502, %2504 ], [ %3211, %3196 ], [ %3247, %3214 ], [ %2502, %3248 ], [ %3263, %3250 ]
  %3277 = phi float [ %3179, %3171 ], [ %2503, %2685 ], [ %2503, %2490 ], [ %2503, %2504 ], [ %3179, %3196 ], [ %3179, %3214 ], [ %3179, %3248 ], [ %3179, %3250 ]
  %3278 = add i32 %28, 360
  %3279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3278, i32 undef)  ; BufferLoad(srv,index,wot)
  %3280 = extractvalue %dx.types.ResRet.i32 %3279, 0
  %3281 = extractvalue %dx.types.ResRet.i32 %3279, 1
  %3282 = bitcast i32 %3280 to float
  %3283 = bitcast i32 %3281 to float
  %3284 = fcmp fast oge float %3282, 0.000000e+00
  %3285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3286 = extractvalue %dx.types.CBufRet.f32 %3285, 0
  %3287 = select i1 %3284, float %3282, float %3286
  %3288 = fadd fast float %3287, %173
  %3289 = fmul fast float %3283, %174
  %3290 = add i32 %28, 456
  %3291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3290, i32 undef)  ; BufferLoad(srv,index,wot)
  %3292 = extractvalue %dx.types.ResRet.i32 %3291, 0
  %3293 = add i32 %3292, 0
  %3294 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3293, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3295 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3294, %dx.types.Handle %69, float %60, float %61, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3296 = extractvalue %dx.types.ResRet.f32 %3295, 0
  %3297 = fmul fast float %3289, %3296
  %3298 = fadd fast float %3288, %3297
  %3299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3300 = extractvalue %dx.types.CBufRet.f32 %3299, 0
  %3301 = and i32 %165, 65535
  %3302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3301)  ; LegacyF16ToF32(value)
  %3303 = lshr i32 %165, 16
  %3304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3303)  ; LegacyF16ToF32(value)
  %3305 = and i32 %166, 65535
  %3306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3305)  ; LegacyF16ToF32(value)
  %3307 = fmul fast float %3302, %3267
  %3308 = fmul fast float %3304, %3268
  %3309 = fmul fast float %3306, %3269
  %3310 = shl i32 %167, 4
  %3311 = and i32 %3310, 32752
  %3312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3311)  ; LegacyF16ToF32(value)
  %3313 = lshr i32 %167, 7
  %3314 = and i32 %3313, 32752
  %3315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3314)  ; LegacyF16ToF32(value)
  %3316 = lshr i32 %167, 22
  %3317 = shl nuw nsw i32 %3316, 5
  %3318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3317)  ; LegacyF16ToF32(value)
  %3319 = and i32 %168, 65535
  %3320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3319)  ; LegacyF16ToF32(value)
  %3321 = fmul fast float %3300, %3270
  %3322 = fmul fast float %3321, %3312
  %3323 = fmul fast float %3322, %3320
  %3324 = fmul fast float %3300, %3271
  %3325 = fmul fast float %3324, %3315
  %3326 = fmul fast float %3325, %3320
  %3327 = fmul fast float %3300, %3272
  %3328 = fmul fast float %3327, %3318
  %3329 = fmul fast float %3328, %3320
  %3330 = call float @dx.op.dot2.f32(i32 54, float %3265, float %3266, float %3265, float %3266)  ; Dot2(ax,ay,bx,by)
  %3331 = fmul fast float %3330, 0x3FE3333340000000
  %3332 = fsub fast float 1.000000e+00, %3331
  %3333 = call float @dx.op.dot3.f32(i32 55, float %3265, float %3266, float %3332, float %3265, float %3266, float %3332)  ; Dot3(ax,ay,az,bx,by,bz)
  %3334 = call float @dx.op.unary.f32(i32 25, float %3333)  ; Rsqrt(value)
  %3335 = fmul fast float %3334, %3265
  %3336 = fmul fast float %3334, %3266
  %3337 = fmul fast float %3332, %3334
  %3338 = fmul fast float %3337, %79
  %3339 = fmul fast float %3337, %80
  %3340 = fmul fast float %3337, %81
  %3341 = fmul fast float %3335, %53
  %3342 = fmul fast float %3335, %54
  %3343 = fmul fast float %3335, %55
  %3344 = fadd fast float %3338, %3341
  %3345 = fadd fast float %3339, %3342
  %3346 = fadd fast float %3340, %3343
  %3347 = fmul fast float %91, %3336
  %3348 = fmul fast float %92, %3336
  %3349 = fmul fast float %93, %3336
  %3350 = fadd fast float %3344, %3347
  %3351 = fadd fast float %3345, %3348
  %3352 = fadd fast float %3346, %3349
  %3353 = call float @dx.op.dot3.f32(i32 55, float %3350, float %3351, float %3352, float %3350, float %3351, float %3352)  ; Dot3(ax,ay,az,bx,by,bz)
  %3354 = call float @dx.op.unary.f32(i32 25, float %3353)  ; Rsqrt(value)
  %3355 = fmul fast float %3350, %3354
  %3356 = fmul fast float %3351, %3354
  %3357 = fmul fast float %3352, %3354
  %3358 = fadd fast float %3273, 0xBFB99999A0000000
  %3359 = call float @dx.op.unary.f32(i32 7, float %3358)  ; Saturate(value)
  %3360 = fmul fast float %3359, 0x3FF1C71C80000000
  %3361 = call float @dx.op.binary.f32(i32 36, float %3273, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3362 = fsub fast float 1.000000e+00, %3360
  %3363 = call float @dx.op.unary.f32(i32 7, float %3362)  ; Saturate(value)
  %3364 = fmul fast float %3363, %3307
  %3365 = fmul fast float %3363, %3308
  %3366 = fmul fast float %3363, %3309
  %3367 = call float @dx.op.unary.f32(i32 7, float %3364)  ; Saturate(value)
  %3368 = call float @dx.op.unary.f32(i32 7, float %3365)  ; Saturate(value)
  %3369 = call float @dx.op.unary.f32(i32 7, float %3366)  ; Saturate(value)
  %3370 = fmul fast float %3360, %3307
  %3371 = fmul fast float %3360, %3308
  %3372 = fmul fast float %3360, %3309
  %3373 = fadd fast float %3370, %3361
  %3374 = fadd fast float %3371, %3361
  %3375 = fadd fast float %3372, %3361
  %3376 = call float @dx.op.unary.f32(i32 7, float %3373)  ; Saturate(value)
  %3377 = call float @dx.op.unary.f32(i32 7, float %3374)  ; Saturate(value)
  %3378 = call float @dx.op.unary.f32(i32 7, float %3375)  ; Saturate(value)
  %3379 = call float @dx.op.unary.f32(i32 7, float %3274)  ; Saturate(value)
  %3380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3381 = extractvalue %dx.types.CBufRet.i32 %3380, 3
  %3382 = and i32 %3381, 8
  %3383 = icmp ne i32 %3382, 0
  %3384 = call float @dx.op.binary.f32(i32 35, float %3367, float %3307)  ; FMax(a,b)
  %3385 = call float @dx.op.binary.f32(i32 35, float %3368, float %3307)  ; FMax(a,b)
  %3386 = call float @dx.op.binary.f32(i32 35, float %3369, float %3307)  ; FMax(a,b)
  %3387 = call float @dx.op.dot3.f32(i32 55, float %3367, float %3368, float %3369, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3388 = select i1 %211, float %3307, float %3367
  %3389 = select i1 %211, float %3387, float %3368
  %3390 = select i1 %211, float 1.000000e+00, float %3369
  %3391 = select i1 %3383, float %3384, float %3388
  %3392 = select i1 %3383, float %3385, float %3389
  %3393 = select i1 %3383, float %3386, float %3390
  %3394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3395 = extractvalue %dx.types.CBufRet.f32 %3394, 0
  %3396 = extractvalue %dx.types.CBufRet.f32 %3394, 1
  %3397 = extractvalue %dx.types.CBufRet.f32 %3394, 2
  %3398 = fadd fast float %3395, %159
  %3399 = fadd fast float %3396, %160
  %3400 = fadd fast float %3397, %161
  %3401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3402 = extractvalue %dx.types.CBufRet.f32 %3401, 0
  %3403 = extractvalue %dx.types.CBufRet.f32 %3401, 1
  %3404 = fsub fast float %3398, %3402
  %3405 = fsub fast float %3399, %3403
  %3406 = fmul fast float %3404, %3404
  %3407 = fmul fast float %3405, %3405
  %3408 = fadd fast float %3406, %3407
  %3409 = call float @dx.op.unary.f32(i32 24, float %3408)  ; Sqrt(value)
  %3410 = extractvalue %dx.types.CBufRet.f32 %3401, 2
  %3411 = fcmp fast olt float %3409, %3410
  br i1 %3411, label %3412, label %3479

; <label>:3412                                    ; preds = %3264
  %3413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3414 = extractvalue %dx.types.CBufRet.f32 %3413, 0
  %3415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3416 = extractvalue %dx.types.CBufRet.f32 %3415, 0
  %3417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3418 = extractvalue %dx.types.CBufRet.f32 %3417, 0
  %3419 = extractvalue %dx.types.CBufRet.f32 %3413, 1
  %3420 = extractvalue %dx.types.CBufRet.f32 %3415, 1
  %3421 = extractvalue %dx.types.CBufRet.f32 %3417, 1
  %3422 = extractvalue %dx.types.CBufRet.f32 %3413, 3
  %3423 = extractvalue %dx.types.CBufRet.f32 %3415, 3
  %3424 = extractvalue %dx.types.CBufRet.f32 %3417, 3
  %3425 = fadd fast float %3422, %3398
  %3426 = fadd fast float %3423, %3399
  %3427 = fadd fast float %3424, %3400
  %3428 = fmul fast float %3425, %3414
  %3429 = call float @dx.op.tertiary.f32(i32 46, float %3426, float %3416, float %3428)  ; FMad(a,b,c)
  %3430 = call float @dx.op.tertiary.f32(i32 46, float %3427, float %3418, float %3429)  ; FMad(a,b,c)
  %3431 = fmul fast float %3425, %3419
  %3432 = call float @dx.op.tertiary.f32(i32 46, float %3426, float %3420, float %3431)  ; FMad(a,b,c)
  %3433 = call float @dx.op.tertiary.f32(i32 46, float %3427, float %3421, float %3432)  ; FMad(a,b,c)
  %3434 = fsub fast float %3430, %3422
  %3435 = fsub fast float %3433, %3423
  %3436 = fsub fast float %3434, %3402
  %3437 = fadd fast float %3436, %3410
  %3438 = fsub fast float %3435, %3403
  %3439 = fadd fast float %3438, %3410
  %3440 = extractvalue %dx.types.CBufRet.f32 %3401, 3
  %3441 = fmul fast float %3437, %3440
  %3442 = fmul fast float %3439, %3440
  %3443 = call float @dx.op.unary.f32(i32 7, float %3441)  ; Saturate(value)
  %3444 = call float @dx.op.unary.f32(i32 7, float %3442)  ; Saturate(value)
  %3445 = fsub fast float 1.000000e+00, %3443
  %3446 = fsub fast float 1.000000e+00, %3444
  %3447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %3445, float %3446, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3448 = extractvalue %dx.types.ResRet.f32 %3447, 0
  %3449 = fcmp fast ugt float %3448, 0.000000e+00
  br i1 %3449, label %3450, label %3753

; <label>:3450                                    ; preds = %3412
  %3451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3452 = extractvalue %dx.types.CBufRet.f32 %3451, 2
  %3453 = fmul fast float %3452, %3448
  %3454 = extractvalue %dx.types.CBufRet.f32 %3451, 3
  %3455 = fadd fast float %3454, %3453
  %3456 = extractvalue %dx.types.CBufRet.f32 %3417, 2
  %3457 = fadd fast float %3455, %3424
  %3458 = fmul fast float %3430, %3418
  %3459 = call float @dx.op.tertiary.f32(i32 46, float %3433, float %3421, float %3458)  ; FMad(a,b,c)
  %3460 = call float @dx.op.tertiary.f32(i32 46, float %3457, float %3456, float %3459)  ; FMad(a,b,c)
  %3461 = fsub fast float %3460, %3424
  %3462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3463 = extractvalue %dx.types.CBufRet.f32 %3462, 2
  %3464 = fsub fast float %3461, %3463
  %3465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %3445, float %3446, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3466 = extractvalue %dx.types.ResRet.f32 %3465, 0
  %3467 = extractvalue %dx.types.ResRet.f32 %3465, 1
  %3468 = extractvalue %dx.types.ResRet.f32 %3465, 2
  %3469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %24, float %3445, float %3446, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3470 = extractvalue %dx.types.ResRet.f32 %3469, 0
  %3471 = extractvalue %dx.types.ResRet.f32 %3469, 1
  %3472 = extractvalue %dx.types.ResRet.f32 %3469, 2
  %3473 = fadd fast float %3470, %3466
  %3474 = fmul fast float %3473, 0x3F847AE140000000
  %3475 = fadd fast float %3471, %3467
  %3476 = fmul fast float %3475, 0x3F847AE140000000
  %3477 = fadd fast float %3472, %3468
  %3478 = fmul fast float %3477, 0x3F847AE140000000
  br label %3753

; <label>:3479                                    ; preds = %3264
  %3480 = and i32 %190, 1
  %3481 = icmp eq i32 %3480, 0
  br i1 %3481, label %3753, label %3482

; <label>:3482                                    ; preds = %3479
  %3483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3484 = extractvalue %dx.types.CBufRet.f32 %3483, 0
  %3485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3486 = extractvalue %dx.types.CBufRet.f32 %3485, 0
  %3487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3488 = extractvalue %dx.types.CBufRet.f32 %3487, 0
  %3489 = extractvalue %dx.types.CBufRet.f32 %3483, 1
  %3490 = extractvalue %dx.types.CBufRet.f32 %3485, 1
  %3491 = extractvalue %dx.types.CBufRet.f32 %3487, 1
  %3492 = extractvalue %dx.types.CBufRet.f32 %3483, 3
  %3493 = extractvalue %dx.types.CBufRet.f32 %3485, 3
  %3494 = extractvalue %dx.types.CBufRet.f32 %3487, 3
  %3495 = fadd fast float %3492, %3398
  %3496 = fadd fast float %3493, %3399
  %3497 = fadd fast float %3494, %3400
  %3498 = fmul fast float %3495, %3484
  %3499 = call float @dx.op.tertiary.f32(i32 46, float %3496, float %3486, float %3498)  ; FMad(a,b,c)
  %3500 = call float @dx.op.tertiary.f32(i32 46, float %3497, float %3488, float %3499)  ; FMad(a,b,c)
  %3501 = fmul fast float %3495, %3489
  %3502 = call float @dx.op.tertiary.f32(i32 46, float %3496, float %3490, float %3501)  ; FMad(a,b,c)
  %3503 = call float @dx.op.tertiary.f32(i32 46, float %3497, float %3491, float %3502)  ; FMad(a,b,c)
  %3504 = fsub fast float %3500, %3492
  %3505 = fsub fast float %3503, %3493
  %3506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3507 = extractvalue %dx.types.CBufRet.f32 %3506, 0
  %3508 = extractvalue %dx.types.CBufRet.f32 %3506, 1
  %3509 = extractvalue %dx.types.CBufRet.f32 %3506, 2
  %3510 = extractvalue %dx.types.CBufRet.f32 %3506, 3
  %3511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3512 = extractvalue %dx.types.CBufRet.f32 %3511, 3
  %3513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3514 = extractvalue %dx.types.CBufRet.i32 %3513, 0
  %3515 = extractvalue %dx.types.CBufRet.i32 %3513, 1
  %3516 = udiv i32 %3515, %3514
  %3517 = fsub fast float %3504, %3507
  %3518 = fsub fast float %3505, %3508
  %3519 = call float @dx.op.binary.f32(i32 35, float %3517, float 0.000000e+00)  ; FMax(a,b)
  %3520 = call float @dx.op.binary.f32(i32 35, float %3518, float 0.000000e+00)  ; FMax(a,b)
  %3521 = call float @dx.op.binary.f32(i32 36, float %3519, float %3509)  ; FMin(a,b)
  %3522 = call float @dx.op.binary.f32(i32 36, float %3520, float %3510)  ; FMin(a,b)
  %3523 = add i32 %3514, -1
  %3524 = add i32 %3516, -1
  %3525 = fmul fast float %3521, %3512
  %3526 = fmul fast float %3522, %3512
  %3527 = fptoui float %3525 to i32
  %3528 = fptoui float %3526 to i32
  %3529 = call i32 @dx.op.binary.i32(i32 40, i32 %3527, i32 %3523)  ; UMin(a,b)
  %3530 = call i32 @dx.op.binary.i32(i32 40, i32 %3528, i32 %3524)  ; UMin(a,b)
  %3531 = mul i32 %3530, %3514
  %3532 = add i32 %3531, %3529
  %3533 = shl i32 %3532, 2
  %3534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3533, i32 undef)  ; BufferLoad(srv,index,wot)
  %3535 = extractvalue %dx.types.ResRet.i32 %3534, 0
  %3536 = icmp eq i32 %3535, -1
  br i1 %3536, label %3753, label %3537

; <label>:3537                                    ; preds = %3482
  %3538 = mul i32 %3535, 148
  %3539 = add i32 %3538, 4
  %3540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3541 = extractvalue %dx.types.ResRet.f32 %3540, 0
  %3542 = add i32 %3538, 8
  %3543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3542, i32 undef)  ; BufferLoad(srv,index,wot)
  %3544 = extractvalue %dx.types.ResRet.f32 %3543, 0
  %3545 = add i32 %3538, 36
  %3546 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3545, i32 undef)  ; BufferLoad(srv,index,wot)
  %3547 = extractvalue %dx.types.ResRet.f32 %3546, 0
  %3548 = add i32 %3538, 60
  %3549 = add i32 %3538, 92
  %3550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3549, i32 undef)  ; BufferLoad(srv,index,wot)
  %3551 = extractvalue %dx.types.ResRet.i32 %3550, 0
  %3552 = add i32 %3538, 116
  %3553 = fsub fast float %3504, %3541
  %3554 = fsub fast float %3505, %3544
  %3555 = fmul fast float %3512, %3553
  %3556 = fmul fast float %3512, %3554
  %3557 = call float @dx.op.unary.f32(i32 7, float %3555)  ; Saturate(value)
  %3558 = call float @dx.op.unary.f32(i32 7, float %3556)  ; Saturate(value)
  %3559 = fsub fast float 1.000000e+00, %3558
  %3560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3561 = extractvalue %dx.types.CBufRet.f32 %3560, 2
  %3562 = call float @dx.op.unary.f32(i32 83, float %3557)  ; DerivCoarseX(value)
  %3563 = call float @dx.op.unary.f32(i32 83, float %3559)  ; DerivCoarseX(value)
  %3564 = call float @dx.op.unary.f32(i32 84, float %3557)  ; DerivCoarseY(value)
  %3565 = call float @dx.op.unary.f32(i32 84, float %3559)  ; DerivCoarseY(value)
  %3566 = fmul fast float %3562, %3561
  %3567 = fmul fast float %3563, %3561
  %3568 = fmul fast float %3564, %3561
  %3569 = fmul fast float %3565, %3561
  %3570 = call float @dx.op.dot2.f32(i32 54, float %3568, float %3569, float %3568, float %3569)  ; Dot2(ax,ay,bx,by)
  %3571 = call float @dx.op.dot2.f32(i32 54, float %3566, float %3567, float %3566, float %3567)  ; Dot2(ax,ay,bx,by)
  %3572 = call float @dx.op.binary.f32(i32 35, float %3571, float %3570)  ; FMax(a,b)
  %3573 = call float @dx.op.unary.f32(i32 23, float %3572)  ; Log(value)
  %3574 = fmul fast float %3573, 5.000000e-01
  %3575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3576 = extractvalue %dx.types.CBufRet.f32 %3575, 1
  %3577 = fadd fast float %3576, %3574
  %3578 = call float @dx.op.binary.f32(i32 35, float %3577, float 0.000000e+00)  ; FMax(a,b)
  %3579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3580 = extractvalue %dx.types.CBufRet.f32 %3579, 3
  %3581 = fadd fast float %3580, %3578
  %3582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3583 = extractvalue %dx.types.CBufRet.f32 %3582, 3
  %3584 = fadd fast float %3581, %3583
  %3585 = add i32 %3551, 0
  %3586 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3585, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3587 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3586, i32 0)  ; GetDimensions(handle,mipLevel)
  %3588 = extractvalue %dx.types.Dimensions %3587, 0
  %3589 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3588)  ; FirstbitLo(value)
  %3590 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3591 = extractvalue %dx.types.CBufRet.i32 %3590, 1
  %3592 = sub nsw i32 %3591, %3589
  %3593 = sitofp i32 %3592 to float
  %3594 = fsub fast float %3584, %3593
  %3595 = call float @dx.op.binary.f32(i32 35, float %3594, float 0.000000e+00)  ; FMax(a,b)
  %3596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3586, %dx.types.Handle %23, float %3557, float %3559, float %3547, float undef, i32 0, i32 0, i32 undef, float %3595)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3597 = extractvalue %dx.types.ResRet.f32 %3596, 0
  %3598 = fcmp ule float %3597, 0x3FE0101020000000
  %3599 = extractvalue %dx.types.CBufRet.i32 %3590, 0
  %3600 = and i32 %3599, 128
  %3601 = icmp ne i32 %3600, 0
  %3602 = and i1 %3598, %3601
  br i1 %3602, label %3753, label %3603

; <label>:3603                                    ; preds = %3537
  %3604 = add i32 %3538, 20
  %3605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.f32 %3605, 0
  %3607 = add i32 %3538, 24
  %3608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3610 = add i32 %3538, 40
  %3611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.f32 %3611, 0
  %3613 = add i32 %3538, 96
  %3614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3613, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.i32 %3614, 0
  %3616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3617 = extractvalue %dx.types.CBufRet.f32 %3616, 2
  %3618 = fmul fast float %3617, %3557
  %3619 = fmul fast float %3617, %3559
  %3620 = extractvalue %dx.types.CBufRet.f32 %3616, 3
  %3621 = fadd fast float %3618, %3620
  %3622 = fadd fast float %3619, %3620
  %3623 = add i32 %3615, 0
  %3624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3623, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3625 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3624, i32 0)  ; GetDimensions(handle,mipLevel)
  %3626 = extractvalue %dx.types.Dimensions %3625, 0
  %3627 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3626)  ; FirstbitLo(value)
  %3628 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3629 = extractvalue %dx.types.CBufRet.i32 %3628, 1
  %3630 = sub nsw i32 %3629, %3627
  %3631 = sitofp i32 %3630 to float
  %3632 = fsub fast float %3581, %3631
  %3633 = call float @dx.op.binary.f32(i32 35, float %3632, float 0.000000e+00)  ; FMax(a,b)
  %3634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3624, %dx.types.Handle %23, float %3621, float %3622, float %3612, float undef, i32 0, i32 0, i32 undef, float %3633)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3635 = extractvalue %dx.types.ResRet.f32 %3634, 0
  %3636 = fmul fast float %3635, %3606
  %3637 = fadd fast float %3636, %3609
  %3638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3639 = extractvalue %dx.types.CBufRet.f32 %3638, 0
  %3640 = extractvalue %dx.types.CBufRet.f32 %3638, 1
  %3641 = extractvalue %dx.types.CBufRet.f32 %3638, 2
  %3642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3643 = extractvalue %dx.types.CBufRet.f32 %3642, 3
  %3644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3645 = extractvalue %dx.types.CBufRet.f32 %3644, 3
  %3646 = extractvalue %dx.types.CBufRet.f32 %3638, 3
  %3647 = fadd fast float %3643, %3504
  %3648 = fadd fast float %3645, %3505
  %3649 = fadd fast float %3637, %3646
  %3650 = fmul fast float %3647, %3639
  %3651 = call float @dx.op.tertiary.f32(i32 46, float %3648, float %3640, float %3650)  ; FMad(a,b,c)
  %3652 = call float @dx.op.tertiary.f32(i32 46, float %3649, float %3641, float %3651)  ; FMad(a,b,c)
  %3653 = fsub fast float %3652, %3646
  %3654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3655 = extractvalue %dx.types.CBufRet.f32 %3654, 2
  %3656 = fsub fast float %3653, %3655
  %3657 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3658 = extractvalue %dx.types.CBufRet.i32 %3657, 0
  %3659 = call i32 @dx.op.binary.i32(i32 40, i32 %3535, i32 %3658)  ; UMin(a,b)
  %3660 = mul i32 %3659, 36
  %3661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3662 = extractvalue %dx.types.ResRet.i32 %3661, 0
  %3663 = add i32 %3660, 4
  %3664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3665 = extractvalue %dx.types.CBufRet.f32 %3664, 0
  %3666 = fmul fast float %3665, %3557
  %3667 = fmul fast float %3665, %3559
  %3668 = extractvalue %dx.types.CBufRet.f32 %3664, 1
  %3669 = fadd fast float %3666, %3668
  %3670 = fadd fast float %3667, %3668
  %3671 = icmp eq i32 %3662, 0
  br i1 %3671, label %3740, label %3672

; <label>:3672                                    ; preds = %3603
  br label %3673

; <label>:3673                                    ; preds = %3730, %3672
  %3674 = phi float [ %3731, %3730 ], [ 0.000000e+00, %3672 ]
  %3675 = phi float [ %3732, %3730 ], [ 0.000000e+00, %3672 ]
  %3676 = phi float [ %3733, %3730 ], [ 0.000000e+00, %3672 ]
  %3677 = phi float [ %3734, %3730 ], [ 0.000000e+00, %3672 ]
  %3678 = phi float [ %3735, %3730 ], [ 0.000000e+00, %3672 ]
  %3679 = phi float [ %3736, %3730 ], [ 0.000000e+00, %3672 ]
  %3680 = phi i32 [ %3737, %3730 ], [ 0, %3672 ]
  %3681 = shl i32 %3680, 2
  %3682 = add i32 %3548, %3681
  %3683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3682, i32 undef)  ; BufferLoad(srv,index,wot)
  %3684 = extractvalue %dx.types.ResRet.f32 %3683, 0
  %3685 = add i32 %3552, %3681
  %3686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3685, i32 undef)  ; BufferLoad(srv,index,wot)
  %3687 = extractvalue %dx.types.ResRet.i32 %3686, 0
  %3688 = add i32 %3687, 0
  %3689 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3688, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3690 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3689, i32 0)  ; GetDimensions(handle,mipLevel)
  %3691 = extractvalue %dx.types.Dimensions %3690, 0
  %3692 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3691)  ; FirstbitLo(value)
  %3693 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3694 = extractvalue %dx.types.CBufRet.i32 %3693, 1
  %3695 = sub nsw i32 %3694, %3692
  %3696 = sitofp i32 %3695 to float
  %3697 = fsub fast float %3581, %3696
  %3698 = call float @dx.op.binary.f32(i32 35, float %3697, float 0.000000e+00)  ; FMax(a,b)
  %3699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3689, %dx.types.Handle %23, float %3669, float %3670, float %3684, float undef, i32 0, i32 0, i32 undef, float %3698)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3700 = extractvalue %dx.types.ResRet.f32 %3699, 0
  %3701 = fcmp fast ogt float %3700, 0.000000e+00
  br i1 %3701, label %3702, label %3730

; <label>:3702                                    ; preds = %3673
  %3703 = add i32 %3663, %3681
  %3704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3703, i32 undef)  ; BufferLoad(srv,index,wot)
  %3705 = extractvalue %dx.types.ResRet.i32 %3704, 0
  %3706 = and i32 %3705, 32767
  %3707 = mul nuw nsw i32 %3706, 928
  %3708 = add nuw nsw i32 %3707, 48
  %3709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3708, i32 undef)  ; BufferLoad(srv,index,wot)
  %3710 = extractvalue %dx.types.ResRet.f32 %3709, 0
  %3711 = extractvalue %dx.types.ResRet.f32 %3709, 1
  %3712 = extractvalue %dx.types.ResRet.f32 %3709, 2
  %3713 = add nuw nsw i32 %3707, 60
  %3714 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3715 = extractvalue %dx.types.ResRet.f32 %3714, 0
  %3716 = extractvalue %dx.types.ResRet.f32 %3714, 1
  %3717 = extractvalue %dx.types.ResRet.f32 %3714, 2
  %3718 = fmul fast float %3710, %3700
  %3719 = fmul fast float %3711, %3700
  %3720 = fmul fast float %3712, %3700
  %3721 = fadd fast float %3718, %3674
  %3722 = fadd fast float %3719, %3675
  %3723 = fadd fast float %3720, %3676
  %3724 = fmul fast float %3715, %3700
  %3725 = fmul fast float %3716, %3700
  %3726 = fmul fast float %3717, %3700
  %3727 = fadd fast float %3724, %3677
  %3728 = fadd fast float %3725, %3678
  %3729 = fadd fast float %3726, %3679
  br label %3730

; <label>:3730                                    ; preds = %3702, %3673
  %3731 = phi float [ %3721, %3702 ], [ %3674, %3673 ]
  %3732 = phi float [ %3722, %3702 ], [ %3675, %3673 ]
  %3733 = phi float [ %3723, %3702 ], [ %3676, %3673 ]
  %3734 = phi float [ %3727, %3702 ], [ %3677, %3673 ]
  %3735 = phi float [ %3728, %3702 ], [ %3678, %3673 ]
  %3736 = phi float [ %3729, %3702 ], [ %3679, %3673 ]
  %3737 = add nuw i32 %3680, 1
  %3738 = icmp eq i32 %3737, %3662
  br i1 %3738, label %3739, label %3673

; <label>:3739                                    ; preds = %3730
  br label %3740

; <label>:3740                                    ; preds = %3739, %3603
  %3741 = phi float [ 0.000000e+00, %3603 ], [ %3731, %3739 ]
  %3742 = phi float [ 0.000000e+00, %3603 ], [ %3732, %3739 ]
  %3743 = phi float [ 0.000000e+00, %3603 ], [ %3733, %3739 ]
  %3744 = phi float [ 0.000000e+00, %3603 ], [ %3734, %3739 ]
  %3745 = phi float [ 0.000000e+00, %3603 ], [ %3735, %3739 ]
  %3746 = phi float [ 0.000000e+00, %3603 ], [ %3736, %3739 ]
  %3747 = fadd fast float %3744, %3741
  %3748 = fmul fast float %3747, 0x3F847AE140000000
  %3749 = fadd fast float %3745, %3742
  %3750 = fmul fast float %3749, 0x3F847AE140000000
  %3751 = fadd fast float %3746, %3743
  %3752 = fmul fast float %3751, 0x3F847AE140000000
  br label %3753

; <label>:3753                                    ; preds = %3740, %3537, %3482, %3479, %3450, %3412
  %3754 = phi float [ %3464, %3450 ], [ -1.310720e+05, %3412 ], [ %3656, %3740 ], [ -1.310720e+05, %3482 ], [ -1.310720e+05, %3537 ], [ -1.310720e+05, %3479 ]
  %3755 = phi float [ %3474, %3450 ], [ 0.000000e+00, %3412 ], [ %3748, %3740 ], [ 0.000000e+00, %3482 ], [ 0.000000e+00, %3537 ], [ 0.000000e+00, %3479 ]
  %3756 = phi float [ %3476, %3450 ], [ 0.000000e+00, %3412 ], [ %3750, %3740 ], [ 0.000000e+00, %3482 ], [ 0.000000e+00, %3537 ], [ 0.000000e+00, %3479 ]
  %3757 = phi float [ %3478, %3450 ], [ 0.000000e+00, %3412 ], [ %3752, %3740 ], [ 0.000000e+00, %3482 ], [ 0.000000e+00, %3537 ], [ 0.000000e+00, %3479 ]
  %3758 = phi i1 [ true, %3450 ], [ false, %3412 ], [ true, %3740 ], [ false, %3482 ], [ false, %3537 ], [ false, %3479 ]
  %3759 = and i32 %190, 3
  %3760 = icmp eq i32 %3759, 1
  %3761 = select i1 %3760, float 1.000000e+00, float 0.000000e+00
  %3762 = fsub fast float %3754, %161
  %3763 = call float @dx.op.unary.f32(i32 7, float %3762)  ; Saturate(value)
  %3764 = select i1 %3758, float %3763, float 1.000000e+00
  %3765 = fmul fast float %3764, %3761
  %3766 = icmp eq i32 %3759, 3
  %3767 = select i1 %3766, float 1.000000e+00, float %3765
  %3768 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3767)  ; FMax(a,b)
  %3769 = fcmp fast olt float %3767, 1.000000e+00
  %3770 = fcmp uge float %43, 0.000000e+00
  %3771 = and i1 %3770, %3769
  br i1 %3771, label %3772, label %3782

; <label>:3772                                    ; preds = %3753
  %3773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %23, float %43, float %44, float %45, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3774 = extractvalue %dx.types.ResRet.f32 %3773, 0
  %3775 = extractvalue %dx.types.ResRet.f32 %3773, 1
  %3776 = extractvalue %dx.types.ResRet.f32 %3773, 2
  %3777 = fadd fast float %3774, %3768
  %3778 = fcmp ule float %42, 0.000000e+00
  %3779 = call float @dx.op.dot3.f32(i32 55, float %39, float %40, float %41, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3780 = select i1 %3778, float %3779, float 1.000000e+00
  %3781 = fmul fast float %3780, %3776
  br label %3782

; <label>:3782                                    ; preds = %3772, %3753
  %3783 = phi float [ %3777, %3772 ], [ %3768, %3753 ]
  %3784 = phi float [ %3775, %3772 ], [ 0.000000e+00, %3753 ]
  %3785 = phi float [ %3781, %3772 ], [ 0.000000e+00, %3753 ]
  %3786 = call float @dx.op.unary.f32(i32 7, float %3783)  ; Saturate(value)
  %3787 = call float @dx.op.unary.f32(i32 7, float %3784)  ; Saturate(value)
  %3788 = call float @dx.op.unary.f32(i32 7, float %3785)  ; Saturate(value)
  %3789 = fcmp fast une float %3787, 0.000000e+00
  %3790 = fcmp fast une float %3788, 0.000000e+00
  %3791 = or i1 %3789, %3790
  br i1 %3791, label %3792, label %4351

; <label>:3792                                    ; preds = %3782
  br i1 %3789, label %3793, label %4066

; <label>:3793                                    ; preds = %3792
  %3794 = call float @dx.op.unary.f32(i32 23, float %3275)  ; Log(value)
  %3795 = fmul fast float %3794, 4.000000e+00
  %3796 = call float @dx.op.unary.f32(i32 21, float %3795)  ; Exp(value)
  %3797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3798 = extractvalue %dx.types.CBufRet.f32 %3797, 0
  %3799 = fmul fast float %3798, %30
  %3800 = fmul fast float %3798, %31
  %3801 = fmul fast float %3798, %32
  %3802 = call float @dx.op.unary.f32(i32 6, float %39)  ; FAbs(value)
  %3803 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %3804 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %3805 = call float @dx.op.unary.f32(i32 23, float %3802)  ; Log(value)
  %3806 = call float @dx.op.unary.f32(i32 23, float %3803)  ; Log(value)
  %3807 = call float @dx.op.unary.f32(i32 23, float %3804)  ; Log(value)
  %3808 = fmul fast float %3805, 4.000000e+00
  %3809 = fmul fast float %3806, 4.000000e+00
  %3810 = fmul fast float %3807, 4.000000e+00
  %3811 = call float @dx.op.unary.f32(i32 21, float %3808)  ; Exp(value)
  %3812 = call float @dx.op.unary.f32(i32 21, float %3809)  ; Exp(value)
  %3813 = call float @dx.op.unary.f32(i32 21, float %3810)  ; Exp(value)
  %3814 = fadd fast float %3812, %3811
  %3815 = fadd fast float %3814, %3813
  %3816 = fdiv fast float 1.000000e+00, %3815
  %3817 = fmul fast float %3816, %3811
  %3818 = fcmp fast ogt float %39, 0.000000e+00
  %3819 = fcmp fast ogt float %40, 0.000000e+00
  %3820 = fcmp fast ogt float %41, 0.000000e+00
  %3821 = fcmp fast olt float %39, 0.000000e+00
  %3822 = fcmp fast olt float %40, 0.000000e+00
  %3823 = fcmp fast olt float %41, 0.000000e+00
  %3824 = zext i1 %3818 to i32
  %3825 = zext i1 %3819 to i32
  %3826 = zext i1 %3820 to i32
  %3827 = zext i1 %3821 to i32
  %3828 = zext i1 %3822 to i32
  %3829 = zext i1 %3823 to i32
  %3830 = sub nsw i32 %3824, %3827
  %3831 = sub nsw i32 %3825, %3828
  %3832 = sub nsw i32 %3826, %3829
  %3833 = call float @dx.op.unary.f32(i32 83, float %3799)  ; DerivCoarseX(value)
  %3834 = call float @dx.op.unary.f32(i32 83, float %3800)  ; DerivCoarseX(value)
  %3835 = call float @dx.op.unary.f32(i32 83, float %3801)  ; DerivCoarseX(value)
  %3836 = call float @dx.op.unary.f32(i32 84, float %3799)  ; DerivCoarseY(value)
  %3837 = call float @dx.op.unary.f32(i32 84, float %3800)  ; DerivCoarseY(value)
  %3838 = call float @dx.op.unary.f32(i32 84, float %3801)  ; DerivCoarseY(value)
  %3839 = fcmp fast ole float %222, %3817
  %3840 = fmul fast float %3816, %3814
  %3841 = fcmp fast ole float %222, %3840
  %3842 = select i1 %3841, float %3801, float %3799
  %3843 = select i1 %3841, float %3799, float %3800
  %3844 = select i1 %3839, float %3800, float %3842
  %3845 = select i1 %3839, float %3801, float %3843
  %3846 = select i1 %3841, float %3835, float %3833
  %3847 = select i1 %3841, float %3833, float %3834
  %3848 = select i1 %3839, float %3834, float %3846
  %3849 = select i1 %3839, float %3835, float %3847
  %3850 = select i1 %3841, float %3838, float %3836
  %3851 = select i1 %3841, float %3836, float %3837
  %3852 = select i1 %3839, float %3837, float %3850
  %3853 = select i1 %3839, float %3838, float %3851
  %3854 = call float @dx.op.unary.f32(i32 27, float %3844)  ; Round_ni(value)
  %3855 = call float @dx.op.unary.f32(i32 27, float %3845)  ; Round_ni(value)
  %3856 = fptosi float %3854 to i32
  %3857 = fptosi float %3855 to i32
  %3858 = xor i32 %3857, %3856
  %3859 = sitofp i32 %3858 to float
  %3860 = fptosi float %3859 to i32
  %3861 = sitofp i32 %3860 to float
  %3862 = fmul fast float %3861, 0x3FE3C6EF40000000
  %3863 = frem fast float %3854, 2.560000e+02
  %3864 = frem fast float %3855, 2.560000e+02
  %3865 = fptoui float %3863 to i32
  %3866 = fptoui float %3864 to i32
  %3867 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %3865, i32 %3866, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3868 = extractvalue %dx.types.ResRet.f32 %3867, 0
  %3869 = extractvalue %dx.types.ResRet.f32 %3867, 1
  %3870 = extractvalue %dx.types.ResRet.f32 %3867, 2
  %3871 = fadd fast float %3868, %3862
  %3872 = fadd fast float %3869, %3862
  %3873 = fadd fast float %3870, %3862
  %3874 = call float @dx.op.unary.f32(i32 22, float %3871)  ; Frc(value)
  %3875 = call float @dx.op.unary.f32(i32 22, float %3872)  ; Frc(value)
  %3876 = call float @dx.op.unary.f32(i32 22, float %3873)  ; Frc(value)
  %3877 = fmul fast float %3876, 0x401921FB60000000
  %3878 = call float @dx.op.unary.f32(i32 13, float %3877)  ; Sin(value)
  %3879 = call float @dx.op.unary.f32(i32 12, float %3877)  ; Cos(value)
  %3880 = fsub fast float -0.000000e+00, %3879
  %3881 = fmul fast float %3879, %3844
  %3882 = call float @dx.op.tertiary.f32(i32 46, float %3878, float %3845, float %3881)  ; FMad(a,b,c)
  %3883 = fmul fast float %3878, %3844
  %3884 = call float @dx.op.tertiary.f32(i32 46, float %3880, float %3845, float %3883)  ; FMad(a,b,c)
  %3885 = fadd fast float %3882, %3874
  %3886 = fadd fast float %3884, %3875
  %3887 = extractvalue %dx.types.CBufRet.f32 %3797, 3
  %3888 = bitcast float %3887 to i32
  %3889 = icmp eq i32 %3888, 0
  br i1 %3889, label %3928, label %3890

; <label>:3890                                    ; preds = %3793
  %3891 = add i32 %3888, 0
  %3892 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3891, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3893 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3892, %dx.types.Handle %69, float %3885, float %3886, float undef, float undef, i32 0, i32 0, i32 undef, float %3848, float %3849, float undef, float %3852, float %3853, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3894 = extractvalue %dx.types.ResRet.f32 %3893, 0
  %3895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3896 = extractvalue %dx.types.CBufRet.f32 %3895, 1
  %3897 = extractvalue %dx.types.CBufRet.f32 %3895, 2
  %3898 = fsub fast float 1.000000e+00, %3787
  %3899 = call float @dx.op.binary.f32(i32 35, float %3898, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3900 = bitcast float %3787 to i32
  %3901 = sitofp i32 %3900 to float
  %3902 = fadd fast float %3901, 0xC1CFBF8940000000
  %3903 = fmul fast float %3897, %3902
  %3904 = fadd fast float %3903, 0x41CFBF8940000000
  %3905 = fptosi float %3904 to i32
  %3906 = bitcast i32 %3905 to float
  %3907 = bitcast float %3899 to i32
  %3908 = sitofp i32 %3907 to float
  %3909 = fadd fast float %3908, 0xC1CFBF8940000000
  %3910 = fmul fast float %3909, %3897
  %3911 = fadd fast float %3910, 0x41CFBF8940000000
  %3912 = fptosi float %3911 to i32
  %3913 = bitcast i32 %3912 to float
  %3914 = fmul fast float %3906, %3896
  %3915 = fmul fast float %3913, %3896
  %3916 = fsub fast float %3899, %3914
  %3917 = fadd fast float %3915, %3899
  %3918 = call float @dx.op.unary.f32(i32 7, float %3916)  ; Saturate(value)
  %3919 = call float @dx.op.unary.f32(i32 7, float %3917)  ; Saturate(value)
  %3920 = fsub fast float %3894, %3918
  %3921 = fsub fast float %3919, %3918
  %3922 = bitcast float %3921 to i32
  %3923 = sub nsw i32 2129859010, %3922
  %3924 = bitcast i32 %3923 to float
  %3925 = fmul fast float %3924, %3920
  %3926 = call float @dx.op.unary.f32(i32 7, float %3925)  ; Saturate(value)
  %3927 = fcmp fast olt float %3926, 0x3F70101020000000
  br i1 %3927, label %4066, label %3928

; <label>:3928                                    ; preds = %3890, %3793
  %3929 = phi float [ %3926, %3890 ], [ %3787, %3793 ]
  %3930 = fmul fast float %3929, %3796
  %3931 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3932 = extractvalue %dx.types.CBufRet.i32 %3931, 1
  %3933 = extractvalue %dx.types.CBufRet.i32 %3931, 0
  %3934 = add i32 %3933, 0
  %3935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3934, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3936 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3935, %dx.types.Handle %68, float %3885, float %3886, float undef, float undef, i32 0, i32 0, i32 undef, float %3848, float %3849, float undef, float %3852, float %3853, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3937 = extractvalue %dx.types.ResRet.f32 %3936, 0
  %3938 = extractvalue %dx.types.ResRet.f32 %3936, 1
  %3939 = extractvalue %dx.types.ResRet.f32 %3936, 2
  %3940 = extractvalue %dx.types.ResRet.f32 %3936, 3
  %3941 = and i32 %3932, 255
  %3942 = uitofp i32 %3941 to float
  %3943 = lshr i32 %3932, 8
  %3944 = and i32 %3943, 255
  %3945 = uitofp i32 %3944 to float
  %3946 = fmul fast float %3940, %3942
  %3947 = fadd fast float %3946, %3945
  %3948 = fmul fast float %3947, 0x3F70101000000000
  %3949 = fadd fast float %3948, 0xBFB99999A0000000
  %3950 = call float @dx.op.unary.f32(i32 7, float %3949)  ; Saturate(value)
  %3951 = fmul fast float %3950, 0x3FF1C71C80000000
  %3952 = call float @dx.op.binary.f32(i32 36, float %3948, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3953 = fsub fast float 1.000000e+00, %3951
  %3954 = call float @dx.op.unary.f32(i32 7, float %3953)  ; Saturate(value)
  %3955 = fmul fast float %3954, %3937
  %3956 = fmul fast float %3954, %3938
  %3957 = fmul fast float %3954, %3939
  %3958 = call float @dx.op.unary.f32(i32 7, float %3955)  ; Saturate(value)
  %3959 = call float @dx.op.unary.f32(i32 7, float %3956)  ; Saturate(value)
  %3960 = call float @dx.op.unary.f32(i32 7, float %3957)  ; Saturate(value)
  %3961 = fmul fast float %3951, %3937
  %3962 = fmul fast float %3951, %3938
  %3963 = fmul fast float %3951, %3939
  %3964 = fadd fast float %3961, %3952
  %3965 = fadd fast float %3962, %3952
  %3966 = fadd fast float %3963, %3952
  %3967 = call float @dx.op.unary.f32(i32 7, float %3964)  ; Saturate(value)
  %3968 = call float @dx.op.unary.f32(i32 7, float %3965)  ; Saturate(value)
  %3969 = call float @dx.op.unary.f32(i32 7, float %3966)  ; Saturate(value)
  %3970 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3971 = extractvalue %dx.types.CBufRet.i32 %3970, 3
  %3972 = extractvalue %dx.types.CBufRet.i32 %3970, 2
  %3973 = add i32 %3972, 0
  %3974 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3973, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3975 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3974, %dx.types.Handle %68, float %3885, float %3886, float undef, float undef, i32 0, i32 0, i32 undef, float %3848, float %3849, float undef, float %3852, float %3853, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3976 = extractvalue %dx.types.ResRet.f32 %3975, 0
  %3977 = extractvalue %dx.types.ResRet.f32 %3975, 1
  %3978 = extractvalue %dx.types.ResRet.f32 %3975, 2
  %3979 = extractvalue %dx.types.ResRet.f32 %3975, 3
  %3980 = and i32 %3971, 255
  %3981 = uitofp i32 %3980 to float
  %3982 = lshr i32 %3971, 8
  %3983 = and i32 %3982, 255
  %3984 = uitofp i32 %3983 to float
  %3985 = lshr i32 %3971, 16
  %3986 = and i32 %3985, 255
  %3987 = uitofp i32 %3986 to float
  %3988 = fmul fast float %3987, 0x3F70101000000000
  %3989 = fmul fast float %3976, %3981
  %3990 = fadd fast float %3989, %3984
  %3991 = fmul fast float %3990, 0x3F70101000000000
  %3992 = fadd fast float %3977, -5.000000e-01
  %3993 = fadd fast float %3979, -5.000000e-01
  %3994 = fmul fast float %3992, %3988
  %3995 = fmul fast float %3993, %3988
  %3996 = fadd fast float %3994, 5.000000e-01
  %3997 = fadd fast float %3995, 5.000000e-01
  %3998 = fmul fast float %3996, 2.000000e+00
  %3999 = fadd fast float %3998, -1.000000e+00
  %4000 = fmul fast float %3997, 2.000000e+00
  %4001 = fadd fast float %4000, -1.000000e+00
  %4002 = fadd fast float %3999, %4001
  %4003 = fmul fast float %4002, 5.000000e-01
  %4004 = fsub fast float %3999, %4001
  %4005 = fmul fast float %4004, 5.000000e-01
  %4006 = call float @dx.op.unary.f32(i32 6, float %4003)  ; FAbs(value)
  %4007 = fsub fast float 1.000000e+00, %4006
  %4008 = call float @dx.op.unary.f32(i32 6, float %4005)  ; FAbs(value)
  %4009 = fsub fast float %4007, %4008
  %4010 = call float @dx.op.dot3.f32(i32 55, float %4003, float %4005, float %4009, float %4003, float %4005, float %4009)  ; Dot3(ax,ay,az,bx,by,bz)
  %4011 = call float @dx.op.unary.f32(i32 25, float %4010)  ; Rsqrt(value)
  %4012 = fmul fast float %4003, %4011
  %4013 = fmul fast float %4005, %4011
  %4014 = select i1 %3841, i32 %3831, i32 %3832
  %4015 = select i1 %3839, i32 %3830, i32 %4014
  %4016 = sitofp i32 %4015 to float
  %4017 = fmul fast float %4009, %4016
  %4018 = fmul fast float %4017, %4011
  %4019 = select i1 %3841, float %4018, float %4013
  %4020 = select i1 %3841, float %4013, float %4018
  %4021 = select i1 %3839, float %4018, float %4012
  %4022 = select i1 %3839, float %4013, float %4019
  %4023 = select i1 %3839, float %4012, float %4020
  %4024 = fsub fast float %3958, %3391
  %4025 = fsub fast float %3959, %3392
  %4026 = fsub fast float %3960, %3393
  %4027 = fmul fast float %4024, %3930
  %4028 = fmul fast float %4025, %3930
  %4029 = fmul fast float %4026, %3930
  %4030 = fadd fast float %4027, %3391
  %4031 = fadd fast float %4028, %3392
  %4032 = fadd fast float %4029, %3393
  %4033 = fsub fast float %3967, %3376
  %4034 = fsub fast float %3968, %3377
  %4035 = fsub fast float %3969, %3378
  %4036 = fmul fast float %4033, %3930
  %4037 = fmul fast float %4034, %3930
  %4038 = fmul fast float %4035, %3930
  %4039 = fadd fast float %4036, %3376
  %4040 = fadd fast float %4037, %3377
  %4041 = fadd fast float %4038, %3378
  %4042 = fadd fast float %4021, %3355
  %4043 = fadd fast float %4022, %3356
  %4044 = fadd fast float %4023, %3357
  %4045 = call float @dx.op.dot3.f32(i32 55, float %4042, float %4043, float %4044, float %4042, float %4043, float %4044)  ; Dot3(ax,ay,az,bx,by,bz)
  %4046 = call float @dx.op.unary.f32(i32 25, float %4045)  ; Rsqrt(value)
  %4047 = fmul fast float %4042, %4046
  %4048 = fmul fast float %4043, %4046
  %4049 = fmul fast float %4044, %4046
  %4050 = fsub fast float %4047, %3355
  %4051 = fsub fast float %4048, %3356
  %4052 = fsub fast float %4049, %3357
  %4053 = fmul fast float %4050, %3930
  %4054 = fmul fast float %4051, %3930
  %4055 = fmul fast float %4052, %3930
  %4056 = fadd fast float %4053, %3355
  %4057 = fadd fast float %4054, %3356
  %4058 = fadd fast float %4055, %3357
  %4059 = call float @dx.op.binary.f32(i32 36, float %3275, float %3978)  ; FMin(a,b)
  %4060 = fsub fast float %4059, %3275
  %4061 = fmul fast float %4060, %3930
  %4062 = fadd fast float %4061, %3275
  %4063 = fsub fast float %3991, %3379
  %4064 = fmul fast float %4063, %3930
  %4065 = fadd fast float %4064, %3379
  br label %4066

; <label>:4066                                    ; preds = %3928, %3890, %3792
  %4067 = phi float [ %4039, %3928 ], [ %3376, %3890 ], [ %3376, %3792 ]
  %4068 = phi float [ %4040, %3928 ], [ %3377, %3890 ], [ %3377, %3792 ]
  %4069 = phi float [ %4041, %3928 ], [ %3378, %3890 ], [ %3378, %3792 ]
  %4070 = phi float [ %4056, %3928 ], [ %3355, %3890 ], [ %3355, %3792 ]
  %4071 = phi float [ %4057, %3928 ], [ %3356, %3890 ], [ %3356, %3792 ]
  %4072 = phi float [ %4058, %3928 ], [ %3357, %3890 ], [ %3357, %3792 ]
  %4073 = phi float [ %4030, %3928 ], [ %3391, %3890 ], [ %3391, %3792 ]
  %4074 = phi float [ %4031, %3928 ], [ %3392, %3890 ], [ %3392, %3792 ]
  %4075 = phi float [ %4032, %3928 ], [ %3393, %3890 ], [ %3393, %3792 ]
  %4076 = phi float [ %4065, %3928 ], [ %3379, %3890 ], [ %3379, %3792 ]
  %4077 = phi float [ %4062, %3928 ], [ %3275, %3890 ], [ %3275, %3792 ]
  br i1 %3790, label %4078, label %4351

; <label>:4078                                    ; preds = %4066
  %4079 = call float @dx.op.unary.f32(i32 23, float %4077)  ; Log(value)
  %4080 = fmul fast float %4079, 4.000000e+00
  %4081 = call float @dx.op.unary.f32(i32 21, float %4080)  ; Exp(value)
  %4082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4082, 0
  %4084 = fmul fast float %4083, %30
  %4085 = fmul fast float %4083, %31
  %4086 = fmul fast float %4083, %32
  %4087 = call float @dx.op.unary.f32(i32 6, float %39)  ; FAbs(value)
  %4088 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %4089 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %4090 = call float @dx.op.unary.f32(i32 23, float %4087)  ; Log(value)
  %4091 = call float @dx.op.unary.f32(i32 23, float %4088)  ; Log(value)
  %4092 = call float @dx.op.unary.f32(i32 23, float %4089)  ; Log(value)
  %4093 = fmul fast float %4090, 4.000000e+00
  %4094 = fmul fast float %4091, 4.000000e+00
  %4095 = fmul fast float %4092, 4.000000e+00
  %4096 = call float @dx.op.unary.f32(i32 21, float %4093)  ; Exp(value)
  %4097 = call float @dx.op.unary.f32(i32 21, float %4094)  ; Exp(value)
  %4098 = call float @dx.op.unary.f32(i32 21, float %4095)  ; Exp(value)
  %4099 = fadd fast float %4097, %4096
  %4100 = fadd fast float %4099, %4098
  %4101 = fdiv fast float 1.000000e+00, %4100
  %4102 = fmul fast float %4101, %4096
  %4103 = fcmp fast ogt float %39, 0.000000e+00
  %4104 = fcmp fast ogt float %40, 0.000000e+00
  %4105 = fcmp fast ogt float %41, 0.000000e+00
  %4106 = fcmp fast olt float %39, 0.000000e+00
  %4107 = fcmp fast olt float %40, 0.000000e+00
  %4108 = fcmp fast olt float %41, 0.000000e+00
  %4109 = zext i1 %4103 to i32
  %4110 = zext i1 %4104 to i32
  %4111 = zext i1 %4105 to i32
  %4112 = zext i1 %4106 to i32
  %4113 = zext i1 %4107 to i32
  %4114 = zext i1 %4108 to i32
  %4115 = sub nsw i32 %4109, %4112
  %4116 = sub nsw i32 %4110, %4113
  %4117 = sub nsw i32 %4111, %4114
  %4118 = call float @dx.op.unary.f32(i32 83, float %4084)  ; DerivCoarseX(value)
  %4119 = call float @dx.op.unary.f32(i32 83, float %4085)  ; DerivCoarseX(value)
  %4120 = call float @dx.op.unary.f32(i32 83, float %4086)  ; DerivCoarseX(value)
  %4121 = call float @dx.op.unary.f32(i32 84, float %4084)  ; DerivCoarseY(value)
  %4122 = call float @dx.op.unary.f32(i32 84, float %4085)  ; DerivCoarseY(value)
  %4123 = call float @dx.op.unary.f32(i32 84, float %4086)  ; DerivCoarseY(value)
  %4124 = fcmp fast ole float %222, %4102
  %4125 = fmul fast float %4101, %4099
  %4126 = fcmp fast ole float %222, %4125
  %4127 = select i1 %4126, float %4086, float %4084
  %4128 = select i1 %4126, float %4084, float %4085
  %4129 = select i1 %4124, float %4085, float %4127
  %4130 = select i1 %4124, float %4086, float %4128
  %4131 = select i1 %4126, float %4120, float %4118
  %4132 = select i1 %4126, float %4118, float %4119
  %4133 = select i1 %4124, float %4119, float %4131
  %4134 = select i1 %4124, float %4120, float %4132
  %4135 = select i1 %4126, float %4123, float %4121
  %4136 = select i1 %4126, float %4121, float %4122
  %4137 = select i1 %4124, float %4122, float %4135
  %4138 = select i1 %4124, float %4123, float %4136
  %4139 = call float @dx.op.unary.f32(i32 27, float %4129)  ; Round_ni(value)
  %4140 = call float @dx.op.unary.f32(i32 27, float %4130)  ; Round_ni(value)
  %4141 = fptosi float %4139 to i32
  %4142 = fptosi float %4140 to i32
  %4143 = xor i32 %4142, %4141
  %4144 = sitofp i32 %4143 to float
  %4145 = fptosi float %4144 to i32
  %4146 = sitofp i32 %4145 to float
  %4147 = fmul fast float %4146, 0x3FE3C6EF40000000
  %4148 = frem fast float %4139, 2.560000e+02
  %4149 = frem fast float %4140, 2.560000e+02
  %4150 = fptoui float %4148 to i32
  %4151 = fptoui float %4149 to i32
  %4152 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %4150, i32 %4151, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4153 = extractvalue %dx.types.ResRet.f32 %4152, 0
  %4154 = extractvalue %dx.types.ResRet.f32 %4152, 1
  %4155 = extractvalue %dx.types.ResRet.f32 %4152, 2
  %4156 = fadd fast float %4153, %4147
  %4157 = fadd fast float %4154, %4147
  %4158 = fadd fast float %4155, %4147
  %4159 = call float @dx.op.unary.f32(i32 22, float %4156)  ; Frc(value)
  %4160 = call float @dx.op.unary.f32(i32 22, float %4157)  ; Frc(value)
  %4161 = call float @dx.op.unary.f32(i32 22, float %4158)  ; Frc(value)
  %4162 = fmul fast float %4161, 0x401921FB60000000
  %4163 = call float @dx.op.unary.f32(i32 13, float %4162)  ; Sin(value)
  %4164 = call float @dx.op.unary.f32(i32 12, float %4162)  ; Cos(value)
  %4165 = fsub fast float -0.000000e+00, %4164
  %4166 = fmul fast float %4164, %4129
  %4167 = call float @dx.op.tertiary.f32(i32 46, float %4163, float %4130, float %4166)  ; FMad(a,b,c)
  %4168 = fmul fast float %4163, %4129
  %4169 = call float @dx.op.tertiary.f32(i32 46, float %4165, float %4130, float %4168)  ; FMad(a,b,c)
  %4170 = fadd fast float %4167, %4159
  %4171 = fadd fast float %4169, %4160
  %4172 = extractvalue %dx.types.CBufRet.f32 %4082, 3
  %4173 = bitcast float %4172 to i32
  %4174 = icmp eq i32 %4173, 0
  br i1 %4174, label %4213, label %4175

; <label>:4175                                    ; preds = %4078
  %4176 = add i32 %4173, 0
  %4177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4178 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4177, %dx.types.Handle %69, float %4170, float %4171, float undef, float undef, i32 0, i32 0, i32 undef, float %4133, float %4134, float undef, float %4137, float %4138, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4179 = extractvalue %dx.types.ResRet.f32 %4178, 0
  %4180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4181 = extractvalue %dx.types.CBufRet.f32 %4180, 1
  %4182 = extractvalue %dx.types.CBufRet.f32 %4180, 2
  %4183 = fsub fast float 1.000000e+00, %3788
  %4184 = call float @dx.op.binary.f32(i32 35, float %4183, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4185 = bitcast float %3788 to i32
  %4186 = sitofp i32 %4185 to float
  %4187 = fadd fast float %4186, 0xC1CFBF8940000000
  %4188 = fmul fast float %4182, %4187
  %4189 = fadd fast float %4188, 0x41CFBF8940000000
  %4190 = fptosi float %4189 to i32
  %4191 = bitcast i32 %4190 to float
  %4192 = bitcast float %4184 to i32
  %4193 = sitofp i32 %4192 to float
  %4194 = fadd fast float %4193, 0xC1CFBF8940000000
  %4195 = fmul fast float %4194, %4182
  %4196 = fadd fast float %4195, 0x41CFBF8940000000
  %4197 = fptosi float %4196 to i32
  %4198 = bitcast i32 %4197 to float
  %4199 = fmul fast float %4191, %4181
  %4200 = fmul fast float %4198, %4181
  %4201 = fsub fast float %4184, %4199
  %4202 = fadd fast float %4200, %4184
  %4203 = call float @dx.op.unary.f32(i32 7, float %4201)  ; Saturate(value)
  %4204 = call float @dx.op.unary.f32(i32 7, float %4202)  ; Saturate(value)
  %4205 = fsub fast float %4179, %4203
  %4206 = fsub fast float %4204, %4203
  %4207 = bitcast float %4206 to i32
  %4208 = sub nsw i32 2129859010, %4207
  %4209 = bitcast i32 %4208 to float
  %4210 = fmul fast float %4209, %4205
  %4211 = call float @dx.op.unary.f32(i32 7, float %4210)  ; Saturate(value)
  %4212 = fcmp fast olt float %4211, 0x3F70101020000000
  br i1 %4212, label %4351, label %4213

; <label>:4213                                    ; preds = %4175, %4078
  %4214 = phi float [ %4211, %4175 ], [ %3788, %4078 ]
  %4215 = fmul fast float %4214, %4081
  %4216 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4217 = extractvalue %dx.types.CBufRet.i32 %4216, 1
  %4218 = extractvalue %dx.types.CBufRet.i32 %4216, 0
  %4219 = add i32 %4218, 0
  %4220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4219, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4221 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4220, %dx.types.Handle %68, float %4170, float %4171, float undef, float undef, i32 0, i32 0, i32 undef, float %4133, float %4134, float undef, float %4137, float %4138, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4222 = extractvalue %dx.types.ResRet.f32 %4221, 0
  %4223 = extractvalue %dx.types.ResRet.f32 %4221, 1
  %4224 = extractvalue %dx.types.ResRet.f32 %4221, 2
  %4225 = extractvalue %dx.types.ResRet.f32 %4221, 3
  %4226 = and i32 %4217, 255
  %4227 = uitofp i32 %4226 to float
  %4228 = lshr i32 %4217, 8
  %4229 = and i32 %4228, 255
  %4230 = uitofp i32 %4229 to float
  %4231 = fmul fast float %4225, %4227
  %4232 = fadd fast float %4231, %4230
  %4233 = fmul fast float %4232, 0x3F70101000000000
  %4234 = fadd fast float %4233, 0xBFB99999A0000000
  %4235 = call float @dx.op.unary.f32(i32 7, float %4234)  ; Saturate(value)
  %4236 = fmul fast float %4235, 0x3FF1C71C80000000
  %4237 = call float @dx.op.binary.f32(i32 36, float %4233, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4238 = fsub fast float 1.000000e+00, %4236
  %4239 = call float @dx.op.unary.f32(i32 7, float %4238)  ; Saturate(value)
  %4240 = fmul fast float %4239, %4222
  %4241 = fmul fast float %4239, %4223
  %4242 = fmul fast float %4239, %4224
  %4243 = call float @dx.op.unary.f32(i32 7, float %4240)  ; Saturate(value)
  %4244 = call float @dx.op.unary.f32(i32 7, float %4241)  ; Saturate(value)
  %4245 = call float @dx.op.unary.f32(i32 7, float %4242)  ; Saturate(value)
  %4246 = fmul fast float %4236, %4222
  %4247 = fmul fast float %4236, %4223
  %4248 = fmul fast float %4236, %4224
  %4249 = fadd fast float %4246, %4237
  %4250 = fadd fast float %4247, %4237
  %4251 = fadd fast float %4248, %4237
  %4252 = call float @dx.op.unary.f32(i32 7, float %4249)  ; Saturate(value)
  %4253 = call float @dx.op.unary.f32(i32 7, float %4250)  ; Saturate(value)
  %4254 = call float @dx.op.unary.f32(i32 7, float %4251)  ; Saturate(value)
  %4255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4256 = extractvalue %dx.types.CBufRet.i32 %4255, 3
  %4257 = extractvalue %dx.types.CBufRet.i32 %4255, 2
  %4258 = add i32 %4257, 0
  %4259 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4258, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4260 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4259, %dx.types.Handle %68, float %4170, float %4171, float undef, float undef, i32 0, i32 0, i32 undef, float %4133, float %4134, float undef, float %4137, float %4138, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4261 = extractvalue %dx.types.ResRet.f32 %4260, 0
  %4262 = extractvalue %dx.types.ResRet.f32 %4260, 1
  %4263 = extractvalue %dx.types.ResRet.f32 %4260, 2
  %4264 = extractvalue %dx.types.ResRet.f32 %4260, 3
  %4265 = and i32 %4256, 255
  %4266 = uitofp i32 %4265 to float
  %4267 = lshr i32 %4256, 8
  %4268 = and i32 %4267, 255
  %4269 = uitofp i32 %4268 to float
  %4270 = lshr i32 %4256, 16
  %4271 = and i32 %4270, 255
  %4272 = uitofp i32 %4271 to float
  %4273 = fmul fast float %4272, 0x3F70101000000000
  %4274 = fmul fast float %4261, %4266
  %4275 = fadd fast float %4274, %4269
  %4276 = fmul fast float %4275, 0x3F70101000000000
  %4277 = fadd fast float %4262, -5.000000e-01
  %4278 = fadd fast float %4264, -5.000000e-01
  %4279 = fmul fast float %4277, %4273
  %4280 = fmul fast float %4278, %4273
  %4281 = fadd fast float %4279, 5.000000e-01
  %4282 = fadd fast float %4280, 5.000000e-01
  %4283 = fmul fast float %4281, 2.000000e+00
  %4284 = fadd fast float %4283, -1.000000e+00
  %4285 = fmul fast float %4282, 2.000000e+00
  %4286 = fadd fast float %4285, -1.000000e+00
  %4287 = fadd fast float %4284, %4286
  %4288 = fmul fast float %4287, 5.000000e-01
  %4289 = fsub fast float %4284, %4286
  %4290 = fmul fast float %4289, 5.000000e-01
  %4291 = call float @dx.op.unary.f32(i32 6, float %4288)  ; FAbs(value)
  %4292 = fsub fast float 1.000000e+00, %4291
  %4293 = call float @dx.op.unary.f32(i32 6, float %4290)  ; FAbs(value)
  %4294 = fsub fast float %4292, %4293
  %4295 = call float @dx.op.dot3.f32(i32 55, float %4288, float %4290, float %4294, float %4288, float %4290, float %4294)  ; Dot3(ax,ay,az,bx,by,bz)
  %4296 = call float @dx.op.unary.f32(i32 25, float %4295)  ; Rsqrt(value)
  %4297 = fmul fast float %4288, %4296
  %4298 = fmul fast float %4290, %4296
  %4299 = select i1 %4126, i32 %4116, i32 %4117
  %4300 = select i1 %4124, i32 %4115, i32 %4299
  %4301 = sitofp i32 %4300 to float
  %4302 = fmul fast float %4294, %4301
  %4303 = fmul fast float %4302, %4296
  %4304 = select i1 %4126, float %4303, float %4298
  %4305 = select i1 %4126, float %4298, float %4303
  %4306 = select i1 %4124, float %4303, float %4297
  %4307 = select i1 %4124, float %4298, float %4304
  %4308 = select i1 %4124, float %4297, float %4305
  %4309 = fsub fast float %4243, %4073
  %4310 = fsub fast float %4244, %4074
  %4311 = fsub fast float %4245, %4075
  %4312 = fmul fast float %4309, %4215
  %4313 = fmul fast float %4310, %4215
  %4314 = fmul fast float %4311, %4215
  %4315 = fadd fast float %4312, %4073
  %4316 = fadd fast float %4313, %4074
  %4317 = fadd fast float %4314, %4075
  %4318 = fsub fast float %4252, %4067
  %4319 = fsub fast float %4253, %4068
  %4320 = fsub fast float %4254, %4069
  %4321 = fmul fast float %4318, %4215
  %4322 = fmul fast float %4319, %4215
  %4323 = fmul fast float %4320, %4215
  %4324 = fadd fast float %4321, %4067
  %4325 = fadd fast float %4322, %4068
  %4326 = fadd fast float %4323, %4069
  %4327 = fadd fast float %4306, %4070
  %4328 = fadd fast float %4307, %4071
  %4329 = fadd fast float %4308, %4072
  %4330 = call float @dx.op.dot3.f32(i32 55, float %4327, float %4328, float %4329, float %4327, float %4328, float %4329)  ; Dot3(ax,ay,az,bx,by,bz)
  %4331 = call float @dx.op.unary.f32(i32 25, float %4330)  ; Rsqrt(value)
  %4332 = fmul fast float %4327, %4331
  %4333 = fmul fast float %4328, %4331
  %4334 = fmul fast float %4329, %4331
  %4335 = fsub fast float %4332, %4070
  %4336 = fsub fast float %4333, %4071
  %4337 = fsub fast float %4334, %4072
  %4338 = fmul fast float %4335, %4215
  %4339 = fmul fast float %4336, %4215
  %4340 = fmul fast float %4337, %4215
  %4341 = fadd fast float %4338, %4070
  %4342 = fadd fast float %4339, %4071
  %4343 = fadd fast float %4340, %4072
  %4344 = call float @dx.op.binary.f32(i32 36, float %4077, float %4263)  ; FMin(a,b)
  %4345 = fsub fast float %4344, %4077
  %4346 = fmul fast float %4345, %4215
  %4347 = fadd fast float %4346, %4077
  %4348 = fsub fast float %4276, %4076
  %4349 = fmul fast float %4348, %4215
  %4350 = fadd fast float %4349, %4076
  br label %4351

; <label>:4351                                    ; preds = %4213, %4175, %4066, %3782
  %4352 = phi float [ %4324, %4213 ], [ %4067, %4175 ], [ %4067, %4066 ], [ %3376, %3782 ]
  %4353 = phi float [ %4325, %4213 ], [ %4068, %4175 ], [ %4068, %4066 ], [ %3377, %3782 ]
  %4354 = phi float [ %4326, %4213 ], [ %4069, %4175 ], [ %4069, %4066 ], [ %3378, %3782 ]
  %4355 = phi float [ %4341, %4213 ], [ %4070, %4175 ], [ %4070, %4066 ], [ %3355, %3782 ]
  %4356 = phi float [ %4342, %4213 ], [ %4071, %4175 ], [ %4071, %4066 ], [ %3356, %3782 ]
  %4357 = phi float [ %4343, %4213 ], [ %4072, %4175 ], [ %4072, %4066 ], [ %3357, %3782 ]
  %4358 = phi float [ %4315, %4213 ], [ %4073, %4175 ], [ %4073, %4066 ], [ %3391, %3782 ]
  %4359 = phi float [ %4316, %4213 ], [ %4074, %4175 ], [ %4074, %4066 ], [ %3392, %3782 ]
  %4360 = phi float [ %4317, %4213 ], [ %4075, %4175 ], [ %4075, %4066 ], [ %3393, %3782 ]
  %4361 = phi float [ %4350, %4213 ], [ %4076, %4175 ], [ %4076, %4066 ], [ %3379, %3782 ]
  %4362 = phi float [ %4347, %4213 ], [ %4077, %4175 ], [ %4077, %4066 ], [ %3275, %3782 ]
  %4363 = fcmp fast une float %3786, 0.000000e+00
  %4364 = call float @dx.op.dot3.f32(i32 55, float %159, float %160, float %161, float %159, float %160, float %161)  ; Dot3(ax,ay,az,bx,by,bz)
  %4365 = call float @dx.op.unary.f32(i32 25, float %4364)  ; Rsqrt(value)
  br i1 %4363, label %4373, label %4366

; <label>:4366                                    ; preds = %4351
  %4367 = fmul fast float %4365, %159
  %4368 = fmul fast float %4365, %160
  %4369 = fmul fast float %4365, %161
  %4370 = fsub fast float -0.000000e+00, %4367
  %4371 = fsub fast float -0.000000e+00, %4368
  %4372 = fsub fast float -0.000000e+00, %4369
  br label %4540

; <label>:4373                                    ; preds = %4351
  %4374 = fmul fast float %159, %4365
  %4375 = fsub fast float -0.000000e+00, %4374
  %4376 = fmul fast float %160, %4365
  %4377 = fsub fast float -0.000000e+00, %4376
  %4378 = fmul fast float %161, %4365
  %4379 = fsub fast float -0.000000e+00, %4378
  %4380 = call float @dx.op.dot3.f32(i32 55, float %4375, float %4377, float %4379, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %4381 = fmul fast float %3786, 2.500000e+00
  %4382 = call float @dx.op.unary.f32(i32 7, float %4381)  ; Saturate(value)
  %4383 = fmul fast float %3786, 0x4013FFFFE0000000
  %4384 = fadd fast float %4383, 0xBFFFFFFFE0000000
  %4385 = call float @dx.op.unary.f32(i32 7, float %4384)  ; Saturate(value)
  %4386 = fmul fast float %3786, 0x4004000020000000
  %4387 = fadd fast float %4386, 0xBFF8000040000000
  %4388 = call float @dx.op.unary.f32(i32 7, float %4387)  ; Saturate(value)
  %4389 = fmul fast float %3358, 1.000000e+01
  %4390 = call float @dx.op.unary.f32(i32 7, float %4389)  ; Saturate(value)
  %4391 = fmul fast float %4390, 2.000000e+00
  %4392 = fsub fast float 3.000000e+00, %4391
  %4393 = fmul fast float %4390, %4390
  %4394 = fmul fast float %4393, %4392
  %4395 = fsub fast float 1.000000e+00, %4394
  %4396 = fsub fast float 0x3FE3333340000000, %4361
  %4397 = fmul fast float %4396, 0x400AAAAAA0000000
  %4398 = call float @dx.op.unary.f32(i32 7, float %4397)  ; Saturate(value)
  %4399 = fmul fast float %4395, %4398
  %4400 = fmul fast float %4358, 0x3FEA2B8620000000
  %4401 = fmul fast float %4359, 0x3FEA2B8620000000
  %4402 = fmul fast float %4360, 0x3FEA2B8620000000
  %4403 = fadd fast float %4400, 0x3FC81DFBA0000000
  %4404 = fmul fast float %4403, %4358
  %4405 = fadd fast float %4404, 0x3F910E6020000000
  %4406 = fadd fast float %4401, 0x3FC81DFBA0000000
  %4407 = fmul fast float %4406, %4359
  %4408 = fadd fast float %4407, 0x3F910E6020000000
  %4409 = fadd fast float %4402, 0x3FC81DFBA0000000
  %4410 = fmul fast float %4409, %4360
  %4411 = fadd fast float %4410, 0x3F910E6020000000
  %4412 = call float @dx.op.unary.f32(i32 7, float %4405)  ; Saturate(value)
  %4413 = call float @dx.op.unary.f32(i32 7, float %4408)  ; Saturate(value)
  %4414 = call float @dx.op.unary.f32(i32 7, float %4411)  ; Saturate(value)
  %4415 = fsub fast float %4412, %4358
  %4416 = fsub fast float %4413, %4359
  %4417 = fsub fast float %4414, %4360
  %4418 = fmul fast float %4415, %4382
  %4419 = fmul fast float %4418, %4399
  %4420 = fmul fast float %4416, %4382
  %4421 = fmul fast float %4420, %4399
  %4422 = fmul fast float %4417, %4382
  %4423 = fmul fast float %4422, %4399
  %4424 = fadd fast float %4419, %4358
  %4425 = fadd fast float %4421, %4359
  %4426 = fadd fast float %4423, %4360
  %4427 = fmul fast float %4362, %4362
  %4428 = fmul fast float %4427, %4427
  %4429 = fadd fast float %4385, 1.000000e+00
  %4430 = fsub fast float %4429, %4399
  %4431 = call float @dx.op.unary.f32(i32 7, float %4430)  ; Saturate(value)
  %4432 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4433 = call float @dx.op.unary.f32(i32 7, float %4432)  ; Saturate(value)
  %4434 = fsub fast float 1.000000e+00, %4428
  %4435 = call float @dx.op.binary.f32(i32 36, float %4431, float %4434)  ; FMin(a,b)
  %4436 = call float @dx.op.unary.f32(i32 7, float %4388)  ; Saturate(value)
  %4437 = call float @dx.op.binary.f32(i32 35, float %4435, float %4436)  ; FMax(a,b)
  %4438 = fadd fast float %4433, 0xBFE4CCCCC0000000
  %4439 = fmul fast float %4438, 0x4006DB6DA0000000
  %4440 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4441 = fmul fast float %4440, 2.000000e+00
  %4442 = fsub fast float 3.000000e+00, %4441
  %4443 = bitcast float %4352 to i32
  %4444 = ashr i32 %4443, 1
  %4445 = add nsw i32 %4444, 532487669
  %4446 = bitcast i32 %4445 to float
  %4447 = fsub fast float 1.000000e+00, %4446
  %4448 = bitcast float %4447 to i32
  %4449 = sub nsw i32 2129859010, %4448
  %4450 = bitcast i32 %4449 to float
  %4451 = fmul fast float %4450, 2.000000e+00
  %4452 = bitcast float %4353 to i32
  %4453 = ashr i32 %4452, 1
  %4454 = add nsw i32 %4453, 532487669
  %4455 = bitcast i32 %4454 to float
  %4456 = fsub fast float 1.000000e+00, %4455
  %4457 = bitcast float %4456 to i32
  %4458 = sub nsw i32 2129859010, %4457
  %4459 = bitcast i32 %4458 to float
  %4460 = fmul fast float %4459, 2.000000e+00
  %4461 = bitcast float %4354 to i32
  %4462 = ashr i32 %4461, 1
  %4463 = add nsw i32 %4462, 532487669
  %4464 = bitcast i32 %4463 to float
  %4465 = fsub fast float 1.000000e+00, %4464
  %4466 = bitcast float %4465 to i32
  %4467 = sub nsw i32 2129859010, %4466
  %4468 = bitcast i32 %4467 to float
  %4469 = fmul fast float %4468, 2.000000e+00
  %4470 = fsub fast float 0x4002A9FBE0000000, %4451
  %4471 = fadd fast float %4451, 0x3FD54FDF00000000
  %4472 = bitcast float %4471 to i32
  %4473 = sub nsw i32 2129859010, %4472
  %4474 = bitcast i32 %4473 to float
  %4475 = fmul fast float %4474, %4470
  %4476 = fmul fast float %4475, %4475
  %4477 = fsub fast float 0x4002A9FBE0000000, %4460
  %4478 = fadd fast float %4460, 0x3FD54FDF00000000
  %4479 = bitcast float %4478 to i32
  %4480 = sub nsw i32 2129859010, %4479
  %4481 = bitcast i32 %4480 to float
  %4482 = fmul fast float %4481, %4477
  %4483 = fmul fast float %4482, %4482
  %4484 = fsub fast float 0x4002A9FBE0000000, %4469
  %4485 = fadd fast float %4469, 0x3FD54FDF00000000
  %4486 = bitcast float %4485 to i32
  %4487 = sub nsw i32 2129859010, %4486
  %4488 = bitcast i32 %4487 to float
  %4489 = fmul fast float %4488, %4484
  %4490 = fmul fast float %4489, %4489
  %4491 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4476)  ; FMax(a,b)
  %4492 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4483)  ; FMax(a,b)
  %4493 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4490)  ; FMax(a,b)
  %4494 = fsub fast float 1.000000e+00, %4380
  %4495 = fadd fast float %4494, %4395
  %4496 = call float @dx.op.unary.f32(i32 7, float %4495)  ; Saturate(value)
  %4497 = fsub fast float 1.000000e+00, %3767
  %4498 = fmul fast float %4437, %4497
  %4499 = fmul fast float %4440, %4440
  %4500 = fmul fast float %4499, %4498
  %4501 = fmul fast float %4500, %4442
  %4502 = fmul fast float %4497, 0xBFE99999A0000000
  %4503 = fmul fast float %4502, %4382
  %4504 = fmul fast float %4503, %4399
  %4505 = fadd fast float %4504, 1.000000e+00
  %4506 = fadd fast float %4361, -1.000000e+00
  %4507 = fmul fast float %4505, %4506
  %4508 = fadd fast float %4507, 1.000000e+00
  %4509 = fsub fast float %4491, %4352
  %4510 = fsub fast float %4492, %4353
  %4511 = fsub fast float %4493, %4354
  %4512 = fmul fast float %4501, %4509
  %4513 = fmul fast float %4501, %4510
  %4514 = fmul fast float %4501, %4511
  %4515 = fadd fast float %4512, %4352
  %4516 = fadd fast float %4513, %4353
  %4517 = fadd fast float %4514, %4354
  %4518 = fsub fast float %79, %4355
  %4519 = fsub fast float %80, %4356
  %4520 = fsub fast float %81, %4357
  %4521 = fmul fast float %4501, %4518
  %4522 = fmul fast float %4501, %4519
  %4523 = fmul fast float %4501, %4520
  %4524 = fadd fast float %4521, %4355
  %4525 = fadd fast float %4522, %4356
  %4526 = fadd fast float %4523, %4357
  %4527 = fmul fast float %4501, %4496
  %4528 = call float @dx.op.unary.f32(i32 7, float %4508)  ; Saturate(value)
  %4529 = fsub fast float 1.000000e+00, %4528
  %4530 = fmul fast float %4527, %4529
  %4531 = fadd fast float %4530, %4528
  %4532 = fsub fast float 1.000000e+00, %4362
  %4533 = fmul fast float %4501, %4532
  %4534 = fadd fast float %4533, %4362
  %4535 = call float @dx.op.dot3.f32(i32 55, float %4524, float %4525, float %4526, float %4524, float %4525, float %4526)  ; Dot3(ax,ay,az,bx,by,bz)
  %4536 = call float @dx.op.unary.f32(i32 25, float %4535)  ; Rsqrt(value)
  %4537 = fmul fast float %4524, %4536
  %4538 = fmul fast float %4525, %4536
  %4539 = fmul fast float %4526, %4536
  br label %4540

; <label>:4540                                    ; preds = %4373, %4366
  %4541 = phi float [ %4372, %4366 ], [ %4379, %4373 ]
  %4542 = phi float [ %4371, %4366 ], [ %4377, %4373 ]
  %4543 = phi float [ %4370, %4366 ], [ %4375, %4373 ]
  %4544 = phi float [ %4369, %4366 ], [ %4378, %4373 ]
  %4545 = phi float [ %4368, %4366 ], [ %4376, %4373 ]
  %4546 = phi float [ %4367, %4366 ], [ %4374, %4373 ]
  %4547 = phi float [ %4352, %4366 ], [ %4515, %4373 ]
  %4548 = phi float [ %4353, %4366 ], [ %4516, %4373 ]
  %4549 = phi float [ %4354, %4366 ], [ %4517, %4373 ]
  %4550 = phi float [ %4355, %4366 ], [ %4537, %4373 ]
  %4551 = phi float [ %4356, %4366 ], [ %4538, %4373 ]
  %4552 = phi float [ %4357, %4366 ], [ %4539, %4373 ]
  %4553 = phi float [ %4358, %4366 ], [ %4424, %4373 ]
  %4554 = phi float [ %4359, %4366 ], [ %4425, %4373 ]
  %4555 = phi float [ %4360, %4366 ], [ %4426, %4373 ]
  %4556 = phi float [ %4361, %4366 ], [ %4531, %4373 ]
  %4557 = phi float [ %4362, %4366 ], [ %4534, %4373 ]
  %4558 = select i1 %211, float 0.000000e+00, float %4549
  %4559 = call float @dx.op.dot3.f32(i32 55, float %4550, float %4551, float %4552, float %4543, float %4542, float %4541)  ; Dot3(ax,ay,az,bx,by,bz)
  %4560 = call float @dx.op.unary.f32(i32 7, float %4559)  ; Saturate(value)
  %4561 = call float @dx.op.dot3.f32(i32 55, float %4546, float %4545, float %4544, float %4550, float %4551, float %4552)  ; Dot3(ax,ay,az,bx,by,bz)
  %4562 = fmul fast float %4561, 2.000000e+00
  %4563 = fmul fast float %4562, %4550
  %4564 = fmul fast float %4562, %4551
  %4565 = fmul fast float %4562, %4552
  %4566 = fsub fast float %4546, %4563
  %4567 = fsub fast float %4545, %4564
  %4568 = fsub fast float %4544, %4565
  %4569 = call float @dx.op.binary.f32(i32 36, float %4557, float 1.000000e+00)  ; FMin(a,b)
  %4570 = fsub fast float 1.000000e+00, %4557
  %4571 = bitcast float %4570 to i32
  %4572 = sub nsw i32 2129859010, %4571
  %4573 = fsub fast float 1.000000e+00, %49
  %4574 = call float @dx.op.dot3.f32(i32 55, float %99, float %100, float %101, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %4575 = call float @dx.op.binary.f32(i32 35, float %4574, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4576 = fdiv fast float %4573, %4575
  %4577 = call float @dx.op.dot3.f32(i32 55, float %4550, float %4551, float %4552, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %4578 = call float @dx.op.unary.f32(i32 7, float %4577)  ; Saturate(value)
  %4579 = fmul fast float %4578, 5.000000e-01
  %4580 = fadd fast float %4579, 5.000000e-01
  %4581 = fmul fast float %4580, %49
  %4582 = call float @dx.op.dot3.f32(i32 55, float %4550, float %4551, float %4552, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4583 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4584 = fmul fast float %4583, %4576
  %4585 = fadd fast float %4581, %4584
  %4586 = fsub fast float 5.000000e-01, %4579
  %4587 = fmul fast float %4586, %4553
  %4588 = fmul fast float %4586, %4554
  %4589 = fmul fast float %4586, %4555
  %4590 = fadd fast float %4585, %4587
  %4591 = fadd fast float %4585, %4588
  %4592 = fadd fast float %4585, %4589
  %4593 = call float @dx.op.dot3.f32(i32 55, float %4566, float %4567, float %4568, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %4594 = call float @dx.op.unary.f32(i32 7, float %4593)  ; Saturate(value)
  %4595 = fmul fast float %4594, 5.000000e-01
  %4596 = fadd fast float %4595, 5.000000e-01
  %4597 = fmul fast float %4596, %49
  %4598 = call float @dx.op.dot3.f32(i32 55, float %4566, float %4567, float %4568, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4599 = call float @dx.op.unary.f32(i32 7, float %4598)  ; Saturate(value)
  %4600 = fmul fast float %4599, %4576
  %4601 = fadd fast float %4597, %4600
  %4602 = fsub fast float 5.000000e-01, %4595
  %4603 = fmul fast float %4602, %4553
  %4604 = fmul fast float %4602, %4554
  %4605 = fmul fast float %4602, %4555
  %4606 = fadd fast float %4601, %4603
  %4607 = fadd fast float %4601, %4604
  %4608 = fadd fast float %4601, %4605
  %4609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4610 = extractvalue %dx.types.CBufRet.f32 %4609, 0
  %4611 = call float @dx.op.binary.f32(i32 36, float %4553, float %4610)  ; FMin(a,b)
  %4612 = fsub fast float 1.000000e+00, %4569
  %4613 = fmul fast float %4611, %4612
  %4614 = fsub fast float 1.000000e+00, %4613
  %4615 = bitcast float %4614 to i32
  %4616 = sub nsw i32 2129859010, %4615
  %4617 = bitcast i32 %4616 to float
  %4618 = call float @dx.op.binary.f32(i32 36, float %4554, float %4610)  ; FMin(a,b)
  %4619 = fmul fast float %4618, %4612
  %4620 = fsub fast float 1.000000e+00, %4619
  %4621 = bitcast float %4620 to i32
  %4622 = sub nsw i32 2129859010, %4621
  %4623 = bitcast i32 %4622 to float
  %4624 = call float @dx.op.binary.f32(i32 36, float %4555, float %4610)  ; FMin(a,b)
  %4625 = fmul fast float %4624, %4612
  %4626 = fsub fast float 1.000000e+00, %4625
  %4627 = bitcast float %4626 to i32
  %4628 = sub nsw i32 2129859010, %4627
  %4629 = bitcast i32 %4628 to float
  %4630 = fmul fast float %4569, %50
  %4631 = fmul fast float %4630, %4590
  %4632 = fmul fast float %4631, %4617
  %4633 = fmul fast float %4569, %51
  %4634 = fmul fast float %4633, %4591
  %4635 = fmul fast float %4634, %4623
  %4636 = fmul fast float %4569, %52
  %4637 = fmul fast float %4636, %4592
  %4638 = fmul fast float %4637, %4629
  %4639 = call float @dx.op.binary.f32(i32 36, float %4547, float %4610)  ; FMin(a,b)
  %4640 = fmul fast float %4639, %4612
  %4641 = fsub fast float 1.000000e+00, %4640
  %4642 = bitcast float %4641 to i32
  %4643 = sub nsw i32 2129859010, %4642
  %4644 = bitcast i32 %4643 to float
  %4645 = call float @dx.op.binary.f32(i32 36, float %4548, float %4610)  ; FMin(a,b)
  %4646 = fmul fast float %4645, %4612
  %4647 = fsub fast float 1.000000e+00, %4646
  %4648 = bitcast float %4647 to i32
  %4649 = sub nsw i32 2129859010, %4648
  %4650 = bitcast i32 %4649 to float
  %4651 = call float @dx.op.binary.f32(i32 36, float %4558, float %4610)  ; FMin(a,b)
  %4652 = fmul fast float %4651, %4612
  %4653 = fsub fast float 1.000000e+00, %4652
  %4654 = bitcast float %4653 to i32
  %4655 = sub nsw i32 2129859010, %4654
  %4656 = bitcast i32 %4655 to float
  %4657 = fmul fast float %4630, %4606
  %4658 = fmul fast float %4657, %4644
  %4659 = fmul fast float %4633, %4607
  %4660 = fmul fast float %4659, %4650
  %4661 = fmul fast float %4636, %4608
  %4662 = fmul fast float %4661, %4656
  %4663 = call float @dx.op.dot3.f32(i32 55, float %4632, float %4635, float %4638, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4664 = select i1 %211, float 0.000000e+00, float %4632
  %4665 = select i1 %211, float %4663, float %4635
  %4666 = select i1 %211, float 0.000000e+00, float %4638
  %4667 = call float @dx.op.dot3.f32(i32 55, float %4658, float %4660, float %4662, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4668 = select i1 %211, float 0.000000e+00, float %4658
  %4669 = select i1 %211, float %4667, float %4660
  %4670 = select i1 %211, float 0.000000e+00, float %4662
  %4671 = fmul fast float %4560, 9.843750e-01
  %4672 = fmul fast float %4556, 9.843750e-01
  %4673 = fadd fast float %4671, 7.812500e-03
  %4674 = fadd fast float %4672, 7.812500e-03
  %4675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %4673, float %4674, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4676 = extractvalue %dx.types.ResRet.f32 %4675, 2
  %4677 = extractvalue %dx.types.ResRet.f32 %4675, 3
  %4678 = fmul fast float %4676, %4547
  %4679 = fmul fast float %4676, %4548
  %4680 = fmul fast float %4676, %4558
  %4681 = fadd fast float %4678, %4677
  %4682 = fadd fast float %4679, %4677
  %4683 = fadd fast float %4680, %4677
  %4684 = call float @dx.op.binary.f32(i32 35, float %4682, float %4683)  ; FMax(a,b)
  %4685 = call float @dx.op.binary.f32(i32 35, float %4681, float %4684)  ; FMax(a,b)
  %4686 = fsub fast float 1.000000e+00, %4685
  %4687 = fmul fast float %4686, %4664
  %4688 = fmul fast float %4686, %4665
  %4689 = fmul fast float %4686, %4666
  %4690 = call float @dx.op.dot3.f32(i32 55, float %4553, float %4554, float %4555, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4691 = fcmp fast ogt float %4690, 0x3E7FF19E20000000
  %4692 = fdiv fast float 1.000000e+00, %4690
  %4693 = select i1 %4691, float %4692, float 0.000000e+00
  %4694 = fmul fast float %4693, %4553
  %4695 = fmul fast float %4693, %4554
  %4696 = fmul fast float %4693, %4555
  %4697 = fadd fast float %4694, -1.000000e+00
  %4698 = fadd fast float %4695, -1.000000e+00
  %4699 = fadd fast float %4696, -1.000000e+00
  %4700 = fmul fast float %4697, 5.000000e-01
  %4701 = fmul fast float %4698, 5.000000e-01
  %4702 = fmul fast float %4699, 5.000000e-01
  %4703 = fadd fast float %4700, 1.000000e+00
  %4704 = fadd fast float %4701, 1.000000e+00
  %4705 = fadd fast float %4702, 1.000000e+00
  %4706 = fmul fast float %4681, %4668
  %4707 = fmul fast float %4682, %4669
  %4708 = fmul fast float %4683, %4670
  %4709 = fsub fast float 1.000000e+00, %4560
  %4710 = bitcast float %4709 to i32
  %4711 = sitofp i32 %4710 to float
  %4712 = fmul fast float %4711, 5.000000e+00
  %4713 = fadd fast float %4712, 0xC1EFBF8940000000
  %4714 = fptosi float %4713 to i32
  %4715 = bitcast i32 %4714 to float
  %4716 = fmul fast float %4715, %3276
  %4717 = fmul fast float %4664, %4716
  %4718 = fmul fast float %4717, %4686
  %4719 = fmul fast float %4718, %4703
  %4720 = fmul fast float %4665, %4716
  %4721 = fmul fast float %4720, %4686
  %4722 = fmul fast float %4721, %4704
  %4723 = fmul fast float %4666, %4716
  %4724 = fmul fast float %4723, %4686
  %4725 = fmul fast float %4724, %4705
  %4726 = fmul fast float %4687, %951
  %4727 = fmul fast float %4688, %951
  %4728 = fmul fast float %4689, %951
  %4729 = fadd fast float %4706, %3323
  %4730 = fadd fast float %4729, %4719
  %4731 = fmul fast float %4730, %951
  %4732 = fadd fast float %4707, %3326
  %4733 = fadd fast float %4732, %4722
  %4734 = fmul fast float %4733, %951
  %4735 = fadd fast float %4708, %3329
  %4736 = fadd fast float %4735, %4725
  %4737 = fmul fast float %4736, %951
  %4738 = bitcast i32 %4572 to float
  %4739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4740 = extractvalue %dx.types.CBufRet.f32 %4739, 3
  %4741 = fcmp fast oeq float %4740, 0.000000e+00
  br i1 %4741, label %4915, label %4742

; <label>:4742                                    ; preds = %4540
  %4743 = extractvalue %dx.types.CBufRet.f32 %4739, 0
  %4744 = extractvalue %dx.types.CBufRet.f32 %4739, 1
  %4745 = extractvalue %dx.types.CBufRet.f32 %4739, 2
  %4746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4747 = extractvalue %dx.types.CBufRet.f32 %4746, 0
  %4748 = extractvalue %dx.types.CBufRet.f32 %4746, 1
  %4749 = extractvalue %dx.types.CBufRet.f32 %4746, 2
  %4750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4751 = extractvalue %dx.types.CBufRet.f32 %4750, 0
  %4752 = extractvalue %dx.types.CBufRet.f32 %4750, 1
  %4753 = call float @dx.op.dot3.f32(i32 55, float %4747, float %4748, float %4749, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4754 = select i1 %211, float %4751, float %4747
  %4755 = select i1 %211, float %4753, float %4748
  %4756 = select i1 %211, float %4752, float %4749
  %4757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.f32 %4757, 1
  %4759 = fcmp fast une float %4758, 0.000000e+00
  br i1 %4759, label %4760, label %4777

; <label>:4760                                    ; preds = %4742
  %4761 = fptoui float %72 to i32
  %4762 = fptoui float %73 to i32
  %4763 = lshr i32 %4761, 4
  %4764 = lshr i32 %4762, 4
  %4765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4766 = extractvalue %dx.types.CBufRet.f32 %4765, 0
  %4767 = fptoui float %4766 to i32
  %4768 = add i32 %4767, 15
  %4769 = lshr i32 %4768, 4
  %4770 = mul i32 %4769, %4764
  %4771 = add i32 %4770, %4763
  %4772 = shl i32 %4771, 3
  %4773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4772, i32 undef)  ; BufferLoad(srv,index,wot)
  %4774 = extractvalue %dx.types.ResRet.i32 %4773, 0
  %4775 = and i32 %4774, -268435456
  %4776 = icmp eq i32 %4775, -1342177280
  br i1 %4776, label %4787, label %4777

; <label>:4777                                    ; preds = %4760, %4742
  %4778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4779 = extractvalue %dx.types.CBufRet.f32 %4778, 2
  %4780 = extractvalue %dx.types.CBufRet.f32 %4778, 3
  %4781 = fmul fast float %4779, %72
  %4782 = fmul fast float %4780, %73
  %4783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %4781, float %4782, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4784 = extractvalue %dx.types.ResRet.f32 %4783, 0
  %4785 = extractvalue %dx.types.ResRet.f32 %4783, 1
  %4786 = extractvalue %dx.types.ResRet.f32 %4783, 2
  br label %4787

; <label>:4787                                    ; preds = %4777, %4760
  %4788 = phi float [ %4784, %4777 ], [ 0.000000e+00, %4760 ]
  %4789 = phi float [ %4785, %4777 ], [ 0.000000e+00, %4760 ]
  %4790 = phi float [ %4786, %4777 ], [ 0.000000e+00, %4760 ]
  %4791 = call float @dx.op.binary.f32(i32 36, float %4789, float %4790)  ; FMin(a,b)
  %4792 = call float @dx.op.binary.f32(i32 36, float %4788, float %4791)  ; FMin(a,b)
  %4793 = fcmp fast ogt float %4792, 0.000000e+00
  br i1 %4793, label %4794, label %4915, !dx.controlflow.hints !70

; <label>:4794                                    ; preds = %4787
  %4795 = fmul fast float %4788, %4754
  %4796 = fmul fast float %4789, %4755
  %4797 = fmul fast float %4790, %4756
  %4798 = fsub fast float %4743, %4546
  %4799 = fsub fast float %4744, %4545
  %4800 = fsub fast float %4745, %4544
  %4801 = call float @dx.op.dot3.f32(i32 55, float %4798, float %4799, float %4800, float %4798, float %4799, float %4800)  ; Dot3(ax,ay,az,bx,by,bz)
  %4802 = call float @dx.op.unary.f32(i32 25, float %4801)  ; Rsqrt(value)
  %4803 = fmul fast float %4802, %4798
  %4804 = fmul fast float %4802, %4799
  %4805 = fmul fast float %4802, %4800
  %4806 = call float @dx.op.dot3.f32(i32 55, float %4743, float %4744, float %4745, float %4550, float %4551, float %4552)  ; Dot3(ax,ay,az,bx,by,bz)
  %4807 = call float @dx.op.dot3.f32(i32 55, float %4543, float %4542, float %4541, float %4803, float %4804, float %4805)  ; Dot3(ax,ay,az,bx,by,bz)
  %4808 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4809 = fmul fast float %4808, %4808
  %4810 = fmul fast float %4809, %4738
  %4811 = call float @dx.op.unary.f32(i32 7, float %4810)  ; Saturate(value)
  %4812 = fmul fast float %4811, %4808
  %4813 = call float @dx.op.dot3.f32(i32 55, float %4550, float %4551, float %4552, float %4803, float %4804, float %4805)  ; Dot3(ax,ay,az,bx,by,bz)
  %4814 = fmul fast float %4813, %4813
  %4815 = call float @dx.op.unary.f32(i32 6, float %4806)  ; FAbs(value)
  %4816 = fsub fast float 1.000000e+00, %4556
  %4817 = call float @dx.op.binary.f32(i32 35, float %4816, float 0x3F847AE140000000)  ; FMax(a,b)
  %4818 = fmul fast float %4817, %4817
  %4819 = fmul fast float %4818, %4818
  %4820 = fsub fast float 1.000000e+00, %4819
  %4821 = fmul fast float %4560, %4560
  %4822 = fmul fast float %4821, %4820
  %4823 = fadd fast float %4822, %4819
  %4824 = bitcast float %4823 to i32
  %4825 = ashr i32 %4824, 1
  %4826 = add nsw i32 %4825, 532487669
  %4827 = bitcast i32 %4826 to float
  %4828 = fadd fast float %4827, %4560
  %4829 = fmul fast float %4819, %4814
  %4830 = fsub fast float 1.000000e+00, %4814
  %4831 = fadd fast float %4830, %4829
  %4832 = fmul fast float %4815, %4815
  %4833 = fmul fast float %4832, %4820
  %4834 = fadd fast float %4833, %4819
  %4835 = bitcast float %4834 to i32
  %4836 = ashr i32 %4835, 1
  %4837 = add nsw i32 %4836, 532487669
  %4838 = bitcast i32 %4837 to float
  %4839 = fadd fast float %4838, %4815
  %4840 = fmul fast float %4831, %4831
  %4841 = fmul fast float %4840, %4828
  %4842 = fmul fast float %4841, %4839
  %4843 = fdiv fast float 0x3FF0A00000000000, %4842
  %4844 = fmul fast float %4843, %4819
  %4845 = call float @dx.op.unary.f32(i32 6, float %4807)  ; FAbs(value)
  %4846 = fsub fast float 1.000000e+00, %4845
  %4847 = bitcast float %4846 to i32
  %4848 = sitofp i32 %4847 to float
  %4849 = fmul fast float %4848, 5.000000e+00
  %4850 = fadd fast float %4849, 0xC1EFBF8940000000
  %4851 = fptosi float %4850 to i32
  %4852 = bitcast i32 %4851 to float
  %4853 = fsub fast float 1.000000e+00, %4547
  %4854 = fsub fast float 1.000000e+00, %4548
  %4855 = fsub fast float 1.000000e+00, %4558
  %4856 = fmul fast float %4852, %4853
  %4857 = fmul fast float %4852, %4854
  %4858 = fmul fast float %4852, %4855
  %4859 = fadd fast float %4856, %4547
  %4860 = fadd fast float %4857, %4548
  %4861 = fadd fast float %4858, %4558
  %4862 = fmul fast float %4806, 9.843750e-01
  %4863 = fadd fast float %4862, 7.812500e-03
  %4864 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %4863, float %4674, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4865 = extractvalue %dx.types.ResRet.f32 %4864, 2
  %4866 = extractvalue %dx.types.ResRet.f32 %4864, 3
  %4867 = fmul fast float %4865, %4547
  %4868 = fmul fast float %4865, %4548
  %4869 = fmul fast float %4865, %4558
  %4870 = fadd fast float %4867, %4866
  %4871 = fadd fast float %4868, %4866
  %4872 = fadd fast float %4869, %4866
  %4873 = call float @dx.op.binary.f32(i32 35, float %4871, float %4872)  ; FMax(a,b)
  %4874 = call float @dx.op.binary.f32(i32 35, float %4870, float %4873)  ; FMax(a,b)
  %4875 = fsub fast float 1.000000e+00, %4874
  %4876 = fmul fast float %4859, %4844
  %4877 = fmul fast float %4860, %4844
  %4878 = fmul fast float %4861, %4844
  %4879 = fsub fast float 1.000000e+00, %4807
  %4880 = bitcast float %4879 to i32
  %4881 = sitofp i32 %4880 to float
  %4882 = fmul fast float %4881, 5.000000e+00
  %4883 = fadd fast float %4882, 0xC1EFBF8940000000
  %4884 = fptosi float %4883 to i32
  %4885 = bitcast i32 %4884 to float
  %4886 = fmul fast float %4885, %3276
  %4887 = fmul fast float %4875, %4886
  %4888 = fmul fast float %4887, %4703
  %4889 = fmul fast float %4887, %4704
  %4890 = fmul fast float %4887, %4705
  %4891 = fadd fast float %4888, %4876
  %4892 = fadd fast float %4889, %4877
  %4893 = fadd fast float %4890, %4878
  %4894 = fmul fast float %4812, %4795
  %4895 = fmul fast float %4894, %4875
  %4896 = fmul fast float %4812, %4796
  %4897 = fmul fast float %4896, %4875
  %4898 = fmul fast float %4812, %4797
  %4899 = fmul fast float %4898, %4875
  %4900 = fmul fast float %4894, %4891
  %4901 = fmul fast float %4896, %4892
  %4902 = fmul fast float %4898, %4893
  %4903 = fadd fast float %4895, %4687
  %4904 = fmul fast float %4903, %951
  %4905 = fadd fast float %4897, %4688
  %4906 = fmul fast float %4905, %951
  %4907 = fadd fast float %4899, %4689
  %4908 = fmul fast float %4907, %951
  %4909 = fadd fast float %4900, %4730
  %4910 = fmul fast float %4909, %951
  %4911 = fadd fast float %4901, %4733
  %4912 = fmul fast float %4911, %951
  %4913 = fadd fast float %4902, %4736
  %4914 = fmul fast float %4913, %951
  br label %4915

; <label>:4915                                    ; preds = %4794, %4787, %4540
  %4916 = phi float [ %4731, %4540 ], [ %4731, %4787 ], [ %4910, %4794 ]
  %4917 = phi float [ %4734, %4540 ], [ %4734, %4787 ], [ %4912, %4794 ]
  %4918 = phi float [ %4737, %4540 ], [ %4737, %4787 ], [ %4914, %4794 ]
  %4919 = phi float [ %4726, %4540 ], [ %4726, %4787 ], [ %4904, %4794 ]
  %4920 = phi float [ %4727, %4540 ], [ %4727, %4787 ], [ %4906, %4794 ]
  %4921 = phi float [ %4728, %4540 ], [ %4728, %4787 ], [ %4908, %4794 ]
  %4922 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4923 = extractvalue %dx.types.CBufRet.i32 %4922, 0
  %4924 = icmp eq i32 %4923, 0
  br i1 %4924, label %5305, label %4925

; <label>:4925                                    ; preds = %4915
  %4926 = fptoui float %72 to i32
  %4927 = fptoui float %73 to i32
  %4928 = lshr i32 %4926, 4
  %4929 = lshr i32 %4927, 4
  %4930 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4931 = extractvalue %dx.types.CBufRet.i32 %4930, 0
  %4932 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4929, i32 %4931, i32 %4928)  ; UMad(a,b,c)
  %4933 = add nsw i32 %4923, -1
  %4934 = call i32 @dx.op.binary.i32(i32 37, i32 %4933, i32 0)  ; IMax(a,b)
  %4935 = call float @dx.op.binary.f32(i32 35, float %67, float 0.000000e+00)  ; FMax(a,b)
  %4936 = fptoui float %4935 to i32
  %4937 = lshr i32 %4936, 5
  %4938 = call i32 @dx.op.binary.i32(i32 40, i32 %4937, i32 8191)  ; UMin(a,b)
  %4939 = shl i32 %4938, 2
  %4940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4939, i32 undef)  ; BufferLoad(srv,index,wot)
  %4941 = extractvalue %dx.types.ResRet.i32 %4940, 0
  %4942 = lshr i32 %4941, 16
  %4943 = and i32 %4941, 65535
  %4944 = lshr i32 %4941, 21
  %4945 = lshr i32 %4943, 5
  %4946 = call i32 @dx.op.binary.i32(i32 40, i32 %4945, i32 %4934)  ; UMin(a,b)
  %4947 = icmp ugt i32 %4944, %4946
  br i1 %4947, label %5305, label %4948

; <label>:4948                                    ; preds = %4925
  br label %4949

; <label>:4949                                    ; preds = %5295, %4948
  %4950 = phi i32 [ %5302, %5295 ], [ %4944, %4948 ]
  %4951 = phi float [ %5296, %5295 ], [ %4916, %4948 ]
  %4952 = phi float [ %5297, %5295 ], [ %4917, %4948 ]
  %4953 = phi float [ %5298, %5295 ], [ %4918, %4948 ]
  %4954 = phi float [ %5299, %5295 ], [ %4919, %4948 ]
  %4955 = phi float [ %5300, %5295 ], [ %4920, %4948 ]
  %4956 = phi float [ %5301, %5295 ], [ %4921, %4948 ]
  %4957 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4958 = extractvalue %dx.types.CBufRet.i32 %4957, 0
  %4959 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4932, i32 %4958, i32 %4950)  ; UMad(a,b,c)
  %4960 = shl i32 %4959, 2
  %4961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4960, i32 undef)  ; BufferLoad(srv,index,wot)
  %4962 = extractvalue %dx.types.ResRet.i32 %4961, 0
  %4963 = shl i32 %4950, 5
  %4964 = sub nsw i32 %4942, %4963
  %4965 = call i32 @dx.op.binary.i32(i32 37, i32 %4964, i32 0)  ; IMax(a,b)
  %4966 = call i32 @dx.op.binary.i32(i32 38, i32 %4965, i32 31)  ; IMin(a,b)
  %4967 = sub nsw i32 1, %4942
  %4968 = add nsw i32 %4967, %4943
  %4969 = call i32 @dx.op.binary.i32(i32 37, i32 %4968, i32 0)  ; IMax(a,b)
  %4970 = call i32 @dx.op.binary.i32(i32 38, i32 %4969, i32 32)  ; IMin(a,b)
  %4971 = and i32 %4970, 31
  %4972 = shl i32 -1, %4971
  %4973 = xor i32 %4972, -1
  %4974 = and i32 %4966, 31
  %4975 = shl i32 %4973, %4974
  %4976 = icmp eq i32 %4970, 32
  %4977 = select i1 %4976, i32 -1, i32 %4975
  %4978 = and i32 %4977, %4962
  %4979 = icmp eq i32 %4978, 0
  br i1 %4979, label %5295, label %4980

; <label>:4980                                    ; preds = %4949
  br label %4981

; <label>:4981                                    ; preds = %5061, %4980
  %4982 = phi i32 [ %4993, %5061 ], [ %4978, %4980 ]
  %4983 = phi float [ %5062, %5061 ], [ %4951, %4980 ]
  %4984 = phi float [ %5063, %5061 ], [ %4952, %4980 ]
  %4985 = phi float [ %5064, %5061 ], [ %4953, %4980 ]
  %4986 = phi float [ %5065, %5061 ], [ %4954, %4980 ]
  %4987 = phi float [ %5066, %5061 ], [ %4955, %4980 ]
  %4988 = phi float [ %5067, %5061 ], [ %4956, %4980 ]
  %4989 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4982)  ; FirstbitLo(value)
  %4990 = add i32 %4989, %4963
  %4991 = and i32 %4989, 31
  %4992 = shl i32 1, %4991
  %4993 = xor i32 %4992, %4982
  %4994 = mul i32 %4990, 112
  %4995 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4994, i32 undef)  ; BufferLoad(srv,index,wot)
  %4996 = extractvalue %dx.types.ResRet.f32 %4995, 0
  %4997 = extractvalue %dx.types.ResRet.f32 %4995, 1
  %4998 = extractvalue %dx.types.ResRet.f32 %4995, 2
  %4999 = or i32 %4994, 12
  %5000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4999, i32 undef)  ; BufferLoad(srv,index,wot)
  %5001 = extractvalue %dx.types.ResRet.f32 %5000, 0
  %5002 = add i32 %4994, 44
  %5003 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5002, i32 undef)  ; BufferLoad(srv,index,wot)
  %5004 = extractvalue %dx.types.ResRet.f32 %5003, 0
  %5005 = add i32 %4994, 48
  %5006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5005, i32 undef)  ; BufferLoad(srv,index,wot)
  %5007 = extractvalue %dx.types.ResRet.f32 %5006, 0
  %5008 = extractvalue %dx.types.ResRet.f32 %5006, 1
  %5009 = extractvalue %dx.types.ResRet.f32 %5006, 2
  %5010 = add i32 %4994, 80
  %5011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5010, i32 undef)  ; BufferLoad(srv,index,wot)
  %5012 = extractvalue %dx.types.ResRet.f32 %5011, 1
  %5013 = extractvalue %dx.types.ResRet.f32 %5011, 2
  %5014 = call float @dx.op.dot3.f32(i32 55, float %4996, float %4997, float %4998, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5015 = select i1 %211, float %5012, float %4996
  %5016 = select i1 %211, float %5014, float %4997
  %5017 = select i1 %211, float %5013, float %4998
  %5018 = fsub fast float %5007, %159
  %5019 = fsub fast float %5008, %160
  %5020 = fsub fast float %5009, %161
  %5021 = call float @dx.op.dot3.f32(i32 55, float %5018, float %5019, float %5020, float %5018, float %5019, float %5020)  ; Dot3(ax,ay,az,bx,by,bz)
  %5022 = call float @dx.op.unary.f32(i32 24, float %5021)  ; Sqrt(value)
  %5023 = fdiv fast float 1.000000e+00, %5022
  %5024 = fmul fast float %5023, %5018
  %5025 = fmul fast float %5023, %5019
  %5026 = fmul fast float %5023, %5020
  %5027 = fadd fast float %5022, %5001
  %5028 = fdiv fast float 1.000000e+00, %5027
  %5029 = fmul float %5004, %5028
  %5030 = fmul float %5029, %5029
  %5031 = call float @dx.op.unary.f32(i32 7, float %5030)  ; Saturate(value)
  %5032 = and i32 %4992, %4978
  %5033 = icmp eq i32 %5032, 0
  br i1 %5033, label %5056, label %5034, !dx.controlflow.hints !71

; <label>:5034                                    ; preds = %4981
  %5035 = lshr i32 %4926, 5
  %5036 = lshr i32 %4927, 5
  %5037 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %5035, i32 %5036, i32 %4990, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5038 = extractvalue %dx.types.ResRet.i32 %5037, 0
  %5039 = and i32 %5038, 3
  %5040 = icmp eq i32 %5039, 0
  %5041 = select i1 %5040, float 1.000000e+00, float 0.000000e+00
  %5042 = icmp eq i32 %5039, 3
  br i1 %5042, label %5043, label %5056

; <label>:5043                                    ; preds = %5034
  %5044 = lshr i32 %5038, 10
  %5045 = and i32 %5044, 8160
  %5046 = and i32 %4927, 31
  %5047 = or i32 %5045, %5046
  %5048 = lshr i32 %5038, 1
  %5049 = and i32 %5048, 16352
  %5050 = and i32 %4926, 31
  %5051 = or i32 %5049, %5050
  %5052 = lshr i32 %5038, 23
  %5053 = and i32 %5052, 255
  %5054 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %5051, i32 %5047, i32 %5053, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5055 = extractvalue %dx.types.ResRet.f32 %5054, 0
  br label %5056

; <label>:5056                                    ; preds = %5043, %5034, %4981
  %5057 = phi float [ %5055, %5043 ], [ %5041, %5034 ], [ 0.000000e+00, %4981 ]
  %5058 = call float @dx.op.binary.f32(i32 36, float %5057, float %5057)  ; FMin(a,b)
  %5059 = call float @dx.op.binary.f32(i32 36, float %5057, float %5058)  ; FMin(a,b)
  %5060 = fcmp fast ogt float %5059, 0.000000e+00
  br i1 %5060, label %5069, label %5061, !dx.controlflow.hints !72

; <label>:5061                                    ; preds = %5130, %5056
  %5062 = phi float [ %4983, %5056 ], [ %5291, %5130 ]
  %5063 = phi float [ %4984, %5056 ], [ %5292, %5130 ]
  %5064 = phi float [ %4985, %5056 ], [ %5293, %5130 ]
  %5065 = phi float [ %4986, %5056 ], [ %5285, %5130 ]
  %5066 = phi float [ %4987, %5056 ], [ %5286, %5130 ]
  %5067 = phi float [ %4988, %5056 ], [ %5287, %5130 ]
  %5068 = icmp eq i32 %4982, %4992
  br i1 %5068, label %5294, label %4981

; <label>:5069                                    ; preds = %5056
  %5070 = fmul fast float %5057, %5015
  %5071 = fmul fast float %5057, %5016
  %5072 = fmul fast float %5057, %5017
  %5073 = fsub fast float %5009, %3754
  %5074 = fcmp fast ogt float %5073, 0.000000e+00
  %5075 = fsub fast float %161, %3754
  %5076 = fcmp fast ogt float %5075, 0.000000e+00
  %5077 = xor i1 %5076, %5074
  %5078 = fsub fast float %3754, %5009
  %5079 = fmul fast float %5078, 2.000000e+00
  %5080 = fadd fast float %5079, %5009
  %5081 = select i1 %5077, float %5009, float %5080
  %5082 = fsub fast float %5081, %161
  %5083 = call float @dx.op.dot3.f32(i32 55, float %5018, float %5019, float %5082, float %5018, float %5019, float %5082)  ; Dot3(ax,ay,az,bx,by,bz)
  %5084 = call float @dx.op.unary.f32(i32 25, float %5083)  ; Rsqrt(value)
  %5085 = fmul fast float %5084, %5018
  %5086 = fmul fast float %5084, %5019
  %5087 = fmul fast float %5084, %5082
  %5088 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3762)  ; Dot3(ax,ay,az,bx,by,bz)
  %5089 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5085, float %5086, float %5087)  ; Dot3(ax,ay,az,bx,by,bz)
  %5090 = fdiv fast float 1.000000e+00, %5089
  %5091 = fmul fast float %5090, %5088
  %5092 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5075, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5093 = fcmp fast ogt float %5092, 0.000000e+00
  %5094 = fcmp fast olt float %5092, 0.000000e+00
  %5095 = zext i1 %5093 to i32
  %5096 = zext i1 %5094 to i32
  %5097 = sub nsw i32 %5095, %5096
  %5098 = sitofp i32 %5097 to float
  %5099 = fsub fast float %5081, %3754
  %5100 = call float @dx.op.dot3.f32(i32 55, float %5018, float %5019, float %5099, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5101 = fcmp fast ogt float %5100, 0.000000e+00
  %5102 = fcmp fast olt float %5100, 0.000000e+00
  %5103 = zext i1 %5101 to i32
  %5104 = zext i1 %5102 to i32
  %5105 = sub nsw i32 %5103, %5104
  %5106 = sitofp i32 %5105 to float
  %5107 = fcmp fast une float %5098, %5106
  br i1 %5107, label %5108, label %5118

; <label>:5108                                    ; preds = %5069
  %5109 = fmul fast float %5091, %5087
  %5110 = fmul fast float %5091, %5086
  %5111 = fmul fast float %5091, %5085
  %5112 = fmul fast float %5111, %5111
  %5113 = fmul fast float %5110, %5110
  %5114 = fadd fast float %5112, %5113
  %5115 = fmul fast float %5109, %5109
  %5116 = fadd fast float %5114, %5115
  %5117 = call float @dx.op.unary.f32(i32 24, float %5116)  ; Sqrt(value)
  br label %5130

; <label>:5118                                    ; preds = %5069
  %5119 = icmp slt i32 %5097, 0
  br i1 %5119, label %5120, label %5130

; <label>:5120                                    ; preds = %5118
  %5121 = fsub fast float %159, %5007
  %5122 = fsub fast float %160, %5008
  %5123 = fsub fast float %161, %5081
  %5124 = fmul fast float %5121, %5121
  %5125 = fmul fast float %5122, %5122
  %5126 = fadd fast float %5124, %5125
  %5127 = fmul fast float %5123, %5123
  %5128 = fadd fast float %5126, %5127
  %5129 = call float @dx.op.unary.f32(i32 24, float %5128)  ; Sqrt(value)
  br label %5130

; <label>:5130                                    ; preds = %5120, %5118, %5108
  %5131 = phi float [ %5117, %5108 ], [ %5129, %5120 ], [ 0.000000e+00, %5118 ]
  %5132 = and i1 %5076, %5074
  %5133 = fsub fast float -0.000000e+00, %5131
  %5134 = select i1 %5132, float -0.000000e+00, float %5133
  %5135 = fmul fast float %3755, 0x3FF7154760000000
  %5136 = fmul fast float %5135, %5134
  %5137 = fmul fast float %3756, 0x3FF7154760000000
  %5138 = fmul fast float %5137, %5134
  %5139 = fmul fast float %3757, 0x3FF7154760000000
  %5140 = fmul fast float %5139, %5134
  %5141 = call float @dx.op.unary.f32(i32 21, float %5136)  ; Exp(value)
  %5142 = call float @dx.op.unary.f32(i32 21, float %5138)  ; Exp(value)
  %5143 = call float @dx.op.unary.f32(i32 21, float %5140)  ; Exp(value)
  %5144 = call float @dx.op.unary.f32(i32 7, float %5141)  ; Saturate(value)
  %5145 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5146 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  %5147 = fmul fast float %5070, %5144
  %5148 = fmul fast float %5071, %5145
  %5149 = fmul fast float %5072, %5146
  %5150 = fsub fast float %5024, %4546
  %5151 = fsub fast float %5025, %4545
  %5152 = fsub fast float %5026, %4544
  %5153 = call float @dx.op.dot3.f32(i32 55, float %5150, float %5151, float %5152, float %5150, float %5151, float %5152)  ; Dot3(ax,ay,az,bx,by,bz)
  %5154 = call float @dx.op.unary.f32(i32 25, float %5153)  ; Rsqrt(value)
  %5155 = fmul fast float %5154, %5150
  %5156 = fmul fast float %5154, %5151
  %5157 = fmul fast float %5154, %5152
  %5158 = call float @dx.op.dot3.f32(i32 55, float %5024, float %5025, float %5026, float %4550, float %4551, float %4552)  ; Dot3(ax,ay,az,bx,by,bz)
  %5159 = call float @dx.op.dot3.f32(i32 55, float %4543, float %4542, float %4541, float %5155, float %5156, float %5157)  ; Dot3(ax,ay,az,bx,by,bz)
  %5160 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  %5161 = fmul fast float %5160, %5031
  %5162 = fmul fast float %5160, %5160
  %5163 = fmul fast float %5162, %4738
  %5164 = call float @dx.op.unary.f32(i32 7, float %5163)  ; Saturate(value)
  %5165 = fmul fast float %5161, %5164
  %5166 = bitcast float %5021 to i32
  %5167 = ashr i32 %5166, 1
  %5168 = sub nsw i32 1597463007, %5167
  %5169 = bitcast i32 %5168 to float
  %5170 = fmul fast float %5169, %5018
  %5171 = fmul fast float %5169, %5019
  %5172 = fmul fast float %5169, %5020
  %5173 = fsub fast float %5170, %4546
  %5174 = fsub fast float %5171, %4545
  %5175 = fsub fast float %5172, %4544
  %5176 = call float @dx.op.dot3.f32(i32 55, float %5173, float %5174, float %5175, float %5173, float %5174, float %5175)  ; Dot3(ax,ay,az,bx,by,bz)
  %5177 = call float @dx.op.unary.f32(i32 25, float %5176)  ; Rsqrt(value)
  %5178 = fmul fast float %5173, %5177
  %5179 = fmul fast float %5174, %5177
  %5180 = fmul fast float %5175, %5177
  %5181 = call float @dx.op.dot3.f32(i32 55, float %4550, float %4551, float %4552, float %5178, float %5179, float %5180)  ; Dot3(ax,ay,az,bx,by,bz)
  %5182 = fmul fast float %5181, %5181
  %5183 = call float @dx.op.unary.f32(i32 6, float %5158)  ; FAbs(value)
  %5184 = fsub fast float 1.000000e+00, %4556
  %5185 = call float @dx.op.binary.f32(i32 35, float %5184, float 0x3F847AE140000000)  ; FMax(a,b)
  %5186 = fmul fast float %5185, %5185
  %5187 = fmul fast float %5186, %5186
  %5188 = fsub fast float 1.000000e+00, %5187
  %5189 = fmul fast float %4560, %4560
  %5190 = fmul fast float %5189, %5188
  %5191 = fadd fast float %5190, %5187
  %5192 = bitcast float %5191 to i32
  %5193 = ashr i32 %5192, 1
  %5194 = add nsw i32 %5193, 532487669
  %5195 = bitcast i32 %5194 to float
  %5196 = fadd fast float %5195, %4560
  %5197 = fmul fast float %5187, %5182
  %5198 = fsub fast float 1.000000e+00, %5182
  %5199 = fadd fast float %5198, %5197
  %5200 = fmul fast float %5183, %5183
  %5201 = fmul fast float %5200, %5188
  %5202 = fadd fast float %5201, %5187
  %5203 = bitcast float %5202 to i32
  %5204 = ashr i32 %5203, 1
  %5205 = add nsw i32 %5204, 532487669
  %5206 = bitcast i32 %5205 to float
  %5207 = fadd fast float %5206, %5183
  %5208 = fmul fast float %5199, %5199
  %5209 = fmul fast float %5208, %5196
  %5210 = fmul fast float %5209, %5207
  %5211 = fdiv fast float 1.000000e+00, %5210
  %5212 = bitcast float %5187 to i32
  %5213 = sitofp i32 %5212 to float
  %5214 = fmul fast float %5213, 0x3FE7F73180000000
  %5215 = fadd fast float %5214, 0x41AFE27C40000000
  %5216 = fptosi float %5215 to i32
  %5217 = bitcast i32 %5216 to float
  %5218 = fmul fast float %5004, 0x3FD80E9D60000000
  %5219 = fmul fast float %5218, %5169
  %5220 = fadd fast float %5217, %5219
  %5221 = bitcast float %5220 to i32
  %5222 = sub nsw i32 2129859010, %5221
  %5223 = bitcast i32 %5222 to float
  %5224 = fmul fast float %5187, %5211
  %5225 = fmul fast float %5224, %5217
  %5226 = fmul fast float %5225, %5223
  %5227 = call float @dx.op.unary.f32(i32 6, float %5159)  ; FAbs(value)
  %5228 = fsub fast float 1.000000e+00, %5227
  %5229 = bitcast float %5228 to i32
  %5230 = sitofp i32 %5229 to float
  %5231 = fmul fast float %5230, 5.000000e+00
  %5232 = fadd fast float %5231, 0xC1EFBF8940000000
  %5233 = fptosi float %5232 to i32
  %5234 = bitcast i32 %5233 to float
  %5235 = fsub fast float 1.000000e+00, %4547
  %5236 = fsub fast float 1.000000e+00, %4548
  %5237 = fsub fast float 1.000000e+00, %4558
  %5238 = fmul fast float %5234, %5235
  %5239 = fmul fast float %5234, %5236
  %5240 = fmul fast float %5234, %5237
  %5241 = fadd fast float %5238, %4547
  %5242 = fadd fast float %5239, %4548
  %5243 = fadd fast float %5240, %4558
  %5244 = fmul fast float %5158, 9.843750e-01
  %5245 = fadd fast float %5244, 7.812500e-03
  %5246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %5245, float %4674, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5247 = extractvalue %dx.types.ResRet.f32 %5246, 2
  %5248 = extractvalue %dx.types.ResRet.f32 %5246, 3
  %5249 = fmul fast float %5247, %4547
  %5250 = fmul fast float %5247, %4548
  %5251 = fmul fast float %5247, %4558
  %5252 = fadd fast float %5249, %5248
  %5253 = fadd fast float %5250, %5248
  %5254 = fadd fast float %5251, %5248
  %5255 = call float @dx.op.binary.f32(i32 35, float %5253, float %5254)  ; FMax(a,b)
  %5256 = call float @dx.op.binary.f32(i32 35, float %5252, float %5255)  ; FMax(a,b)
  %5257 = fsub fast float 1.000000e+00, %5256
  %5258 = fmul fast float %5226, %5241
  %5259 = fmul fast float %5226, %5242
  %5260 = fmul fast float %5226, %5243
  %5261 = fsub fast float 1.000000e+00, %5159
  %5262 = bitcast float %5261 to i32
  %5263 = sitofp i32 %5262 to float
  %5264 = fmul fast float %5263, 5.000000e+00
  %5265 = fadd fast float %5264, 0xC1EFBF8940000000
  %5266 = fptosi float %5265 to i32
  %5267 = bitcast i32 %5266 to float
  %5268 = fmul fast float %5267, %3276
  %5269 = fmul fast float %5257, %5268
  %5270 = fmul fast float %5269, %4703
  %5271 = fmul fast float %5269, %4704
  %5272 = fmul fast float %5269, %4705
  %5273 = fadd fast float %5270, %5258
  %5274 = fadd fast float %5271, %5259
  %5275 = fadd fast float %5272, %5260
  %5276 = fmul fast float %5147, %951
  %5277 = fmul fast float %5276, %5165
  %5278 = fmul fast float %5277, %5257
  %5279 = fmul fast float %5148, %951
  %5280 = fmul fast float %5279, %5165
  %5281 = fmul fast float %5280, %5257
  %5282 = fmul fast float %5149, %951
  %5283 = fmul fast float %5282, %5165
  %5284 = fmul fast float %5283, %5257
  %5285 = fadd fast float %5278, %4986
  %5286 = fadd fast float %5281, %4987
  %5287 = fadd fast float %5284, %4988
  %5288 = fmul fast float %5277, %5273
  %5289 = fmul fast float %5280, %5274
  %5290 = fmul fast float %5283, %5275
  %5291 = fadd fast float %5288, %4983
  %5292 = fadd fast float %5289, %4984
  %5293 = fadd fast float %5290, %4985
  br label %5061

; <label>:5294                                    ; preds = %5061
  br label %5295

; <label>:5295                                    ; preds = %5294, %4949
  %5296 = phi float [ %4951, %4949 ], [ %5062, %5294 ]
  %5297 = phi float [ %4952, %4949 ], [ %5063, %5294 ]
  %5298 = phi float [ %4953, %4949 ], [ %5064, %5294 ]
  %5299 = phi float [ %4954, %4949 ], [ %5065, %5294 ]
  %5300 = phi float [ %4955, %4949 ], [ %5066, %5294 ]
  %5301 = phi float [ %4956, %4949 ], [ %5067, %5294 ]
  %5302 = add i32 %4950, 1
  %5303 = icmp ugt i32 %5302, %4946
  br i1 %5303, label %5304, label %4949

; <label>:5304                                    ; preds = %5295
  br label %5305

; <label>:5305                                    ; preds = %5304, %4925, %4915
  %5306 = phi float [ %4916, %4915 ], [ %4916, %4925 ], [ %5296, %5304 ]
  %5307 = phi float [ %4917, %4915 ], [ %4917, %4925 ], [ %5297, %5304 ]
  %5308 = phi float [ %4918, %4915 ], [ %4918, %4925 ], [ %5298, %5304 ]
  %5309 = phi float [ %4919, %4915 ], [ %4919, %4925 ], [ %5299, %5304 ]
  %5310 = phi float [ %4920, %4915 ], [ %4920, %4925 ], [ %5300, %5304 ]
  %5311 = phi float [ %4921, %4915 ], [ %4921, %4925 ], [ %5301, %5304 ]
  %5312 = call float @dx.op.unary.f32(i32 24, float %4553)  ; Sqrt(value)
  %5313 = call float @dx.op.unary.f32(i32 24, float %4554)  ; Sqrt(value)
  %5314 = call float @dx.op.unary.f32(i32 24, float %4555)  ; Sqrt(value)
  %5315 = fmul fast float %5312, %5309
  %5316 = fmul fast float %5313, %5310
  %5317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5318 = extractvalue %dx.types.CBufRet.f32 %5317, 0
  br i1 %211, label %5319, label %5339

; <label>:5319                                    ; preds = %5305
  %5320 = fadd fast float %3298, %5311
  %5321 = fmul fast float %5320, %3277
  %5322 = fsub fast float 1.000000e+00, %3277
  %5323 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5325 = extractvalue %dx.types.CBufRet.f32 %5324, 3
  %5326 = fmul fast float %5325, %5323
  %5327 = fadd fast float %5326, %5321
  %5328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5329 = extractvalue %dx.types.CBufRet.f32 %5328, 0
  %5330 = fmul fast float %5329, %4709
  %5331 = fsub fast float %5327, %5330
  %5332 = fadd fast float %5316, %5315
  %5333 = fmul fast float %5318, %5332
  %5334 = extractvalue %dx.types.CBufRet.f32 %5324, 1
  %5335 = fsub fast float %5331, %5334
  %5336 = extractvalue %dx.types.CBufRet.f32 %5324, 2
  %5337 = fmul fast float %5335, %5336
  %5338 = call float @dx.op.unary.f32(i32 7, float %5337)  ; Saturate(value)
  br label %5355

; <label>:5339                                    ; preds = %5305
  %5340 = fmul fast float %5314, %5311
  %5341 = fmul fast float %5318, %5315
  %5342 = fmul fast float %5318, %5316
  %5343 = fmul fast float %5340, %5318
  %5344 = add i32 %28, 356
  %5345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5344, i32 undef)  ; BufferLoad(srv,index,wot)
  %5346 = extractvalue %dx.types.ResRet.i32 %5345, 0
  %5347 = and i32 %5346, 32
  %5348 = icmp eq i32 %5347, 0
  br i1 %5348, label %5355, label %5349

; <label>:5349                                    ; preds = %5339
  %5350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5351 = extractvalue %dx.types.CBufRet.f32 %5350, 0
  %5352 = fmul fast float %5351, 0x3FE99999A0000000
  %5353 = fadd fast float %5351, %5341
  %5354 = fadd fast float %5352, %5343
  br label %5355

; <label>:5355                                    ; preds = %5349, %5339, %5319
  %5356 = phi float [ %5333, %5319 ], [ %5353, %5349 ], [ %5341, %5339 ]
  %5357 = phi float [ %5338, %5319 ], [ %5342, %5349 ], [ %5342, %5339 ]
  %5358 = phi float [ 1.000000e+00, %5319 ], [ %5354, %5349 ], [ %5343, %5339 ]
  %5359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5360 = extractvalue %dx.types.CBufRet.f32 %5359, 0
  %5361 = fmul fast float %5360, %5307
  %5362 = fmul fast float %5360, %5308
  %5363 = fadd fast float %5307, %5306
  %5364 = select i1 %211, float %5363, float %5306
  %5365 = fmul float %5364, %5360
  %5366 = select i1 %211, float 0.000000e+00, float %5361
  %5367 = select i1 %211, float 0.000000e+00, float %5362
  %5368 = fmul fast float %5356, %5312
  %5369 = fmul fast float %5357, %5313
  %5370 = fmul fast float %5358, %5314
  %5371 = fadd fast float %5365, %5368
  %5372 = fadd fast float %5366, %5369
  %5373 = fadd fast float %5367, %5370
  %5374 = select i1 %211, float %5357, float %5372
  %5375 = select i1 %211, float %5358, float %5373
  %5376 = call float @dx.op.binary.f32(i32 36, float %5371, float 3.225500e+04)  ; FMin(a,b)
  %5377 = call float @dx.op.binary.f32(i32 36, float %5374, float 3.225500e+04)  ; FMin(a,b)
  %5378 = call float @dx.op.binary.f32(i32 36, float %5375, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5376)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5377)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5378)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !15}
!15 = !{i32 0, i32 5}
!16 = !{i32 8, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
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
!41 = !{[58 x i32] [i32 56, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!42 = !{void ()* @ps_main, !"ps_main", !43, !4, !69}
!43 = !{!44, !67, null}
!44 = !{!45, !48, !50, !52, !54, !56, !57, !58, !59, !60, !61, !62, !63, !65, !66}
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
!63 = !{i32 12, !"ENTITY_IDS", i8 5, i8 0, !46, i8 1, i32 1, i8 2, i32 12, i8 0, !64}
!64 = !{i32 3, i32 1}
!65 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !46, i8 1, i32 1, i8 4, i32 13, i8 0, !64}
!66 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !46, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!67 = !{!68}
!68 = !{i32 0, !"SV_Target", i8 9, i8 16, !46, i8 0, i32 1, i8 4, i32 0, i8 0, !55}
!69 = !{i32 0, i64 24}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}

