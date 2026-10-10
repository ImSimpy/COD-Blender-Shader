;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float    yzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; COMP_FACTOR              0      w        3     NONE   float      w
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         7     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        8     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       11     NONE   float   xyzw
; ENTITY_IDS               0   xy         12     NONE    uint    y  
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
; shader hash: f2f5123c39a36a4e1ee6f52971c57c20
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
; COMP_FACTOR              0                 linear       
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
;                                   texture    byte         r/o      T3      t9,space1     1
;                                   texture    byte         r/o      T4     t37,space1     1
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
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 49, 52 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 49, 52 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 49, 52 }
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
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %71 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = fmul fast float %73, %67
  %75 = fmul fast float %73, %68
  %76 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %77 = bitcast float %76 to i32
  %78 = ashr i32 %77, 1
  %79 = sub nsw i32 1597250115, %78
  %80 = bitcast i32 %79 to float
  %81 = fmul fast float %80, %59
  %82 = fmul fast float %80, %60
  %83 = fmul fast float %80, %61
  %84 = fmul fast float %60, %57
  %85 = fmul fast float %61, %56
  %86 = fsub fast float %84, %85
  %87 = fmul fast float %61, %55
  %88 = fmul fast float %59, %57
  %89 = fsub fast float %87, %88
  %90 = fmul fast float %59, %56
  %91 = fmul fast float %60, %55
  %92 = fsub fast float %90, %91
  %93 = fmul fast float %86, %58
  %94 = fmul fast float %89, %58
  %95 = fmul fast float %92, %58
  %96 = call float @dx.op.dot3.f32(i32 55, float %48, float %49, float %50, float %48, float %49, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %97 = bitcast float %96 to i32
  %98 = ashr i32 %97, 1
  %99 = sub nsw i32 1597250115, %98
  %100 = bitcast i32 %99 to float
  %101 = fmul fast float %100, %48
  %102 = fmul fast float %100, %49
  %103 = fmul fast float %100, %50
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = fcmp fast une float %105, 0.000000e+00
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 3
  %110 = fmul fast float %74, 2.000000e+00
  %111 = fmul fast float %110, %108
  %112 = fmul fast float %75, 2.000000e+00
  %113 = fmul fast float %112, %109
  %114 = fsub fast float 1.000000e+00, %111
  %115 = fsub fast float 1.000000e+00, %113
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %119 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = select i1 %106, float %117, float %121
  %125 = select i1 %106, float %118, float %122
  %126 = select i1 %106, float %119, float %123
  %127 = fmul fast float %124, %114
  %128 = fmul fast float %125, %114
  %129 = fmul fast float %126, %114
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = select i1 %106, float %131, float %135
  %139 = select i1 %106, float %132, float %136
  %140 = select i1 %106, float %133, float %137
  %141 = fmul fast float %138, %115
  %142 = fmul fast float %139, %115
  %143 = fmul fast float %140, %115
  %144 = fadd fast float %141, %127
  %145 = fadd fast float %142, %128
  %146 = fadd fast float %143, %129
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = select i1 %106, float %148, float %152
  %156 = select i1 %106, float %149, float %153
  %157 = select i1 %106, float %150, float %154
  %158 = fadd fast float %144, %155
  %159 = fadd fast float %145, %156
  %160 = fadd fast float %146, %157
  %161 = fmul fast float %158, %69
  %162 = fmul fast float %159, %69
  %163 = fmul fast float %160, %69
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 3
  %167 = fmul fast float %165, %74
  %168 = fmul fast float %166, %75
  %169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %170 = extractvalue %dx.types.ResRet.i32 %169, 0
  %171 = and i32 %170, 114688
  %172 = icmp ne i32 %171, 0
  %173 = select i1 %172, float %167, float 0.000000e+00
  %174 = select i1 %172, float %168, float 0.000000e+00
  %175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %176 = extractvalue %dx.types.ResRet.f32 %175, 0
  %177 = fmul fast float %176, 2.550000e+02
  %178 = fptoui float %177 to i32
  %179 = select i1 %172, i32 %178, i32 0
  %180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.i32 %180, 3
  %182 = and i32 %181, 3
  %183 = icmp ne i32 %182, 0
  %184 = and i32 %181, 4
  %185 = icmp ne i32 %184, 0
  %186 = and i1 %183, %185
  br i1 %186, label %187, label %196

; <label>:187                                     ; preds = %0
  %188 = fmul fast float %109, %75
  %189 = fmul fast float %108, %74
  %190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %24, float %189, float %188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = fsub fast float 1.000000e+00, %191
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 0
  %195 = fcmp fast olt float %192, %194
  br label %199

; <label>:196                                     ; preds = %0
  %197 = icmp eq i32 %184, 0
  %198 = and i1 %183, %197
  br label %199

; <label>:199                                     ; preds = %196, %187
  %200 = phi i1 [ %195, %187 ], [ %198, %196 ]
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 2
  %203 = fmul fast float %202, 0x3FE3C6EF40000000
  %204 = frem fast float %74, 2.560000e+02
  %205 = frem fast float %75, 2.560000e+02
  %206 = fptoui float %204 to i32
  %207 = fptoui float %205 to i32
  %208 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %206, i32 %207, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = fadd fast float %209, %203
  %211 = call float @dx.op.unary.f32(i32 22, float %210)  ; Frc(value)
  %212 = add i32 %28, 156
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = shl i32 %214, 4
  %216 = and i32 %215, 32752
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = lshr i32 %214, 7
  %219 = and i32 %218, 32752
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = lshr i32 %214, 22
  %222 = shl nuw nsw i32 %221, 5
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = add i32 %28, 216
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = and i32 %226, 255
  %228 = uitofp i32 %227 to float
  %229 = fmul fast float %228, 0x3F70101020000000
  %230 = lshr i32 %226, 8
  %231 = and i32 %230, 255
  %232 = uitofp i32 %231 to float
  %233 = fmul fast float %232, 0x3F70101020000000
  %234 = lshr i32 %226, 16
  %235 = and i32 %234, 255
  %236 = uitofp i32 %235 to float
  %237 = fmul fast float %236, 0x3F70101020000000
  %238 = add i32 %28, 36
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = and i32 %240, 65535
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = lshr i32 %240, 16
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = add i32 %28, 288
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = and i32 %247, 65535
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %247, 16
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = fmul fast float %249, 0x3F50624DE0000000
  %253 = fmul fast float %251, 0x3F50624DE0000000
  %254 = mul i32 %29, 100
  %255 = add i32 %254, 28
  %256 = add i32 %254, 40
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = add i32 %28, 172
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %271 = add i32 %28, 232
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %285 = add i32 %28, 52
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 65535
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %287, 16
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = add i32 %28, 304
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 65535
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = lshr i32 %294, 16
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %310 = and i32 %258, 1
  %311 = icmp ne i32 %310, 0
  %312 = select i1 %311, float %303, float %264
  %313 = select i1 %311, float %306, float %267
  %314 = select i1 %311, float %309, float %270
  %315 = add i32 %254, 44
  %316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.f32 %316, 0
  %318 = fmul fast float %317, %312
  %319 = fmul fast float %317, %313
  %320 = fmul fast float %317, %314
  %321 = add i32 %254, 48
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = shl i32 %323, 4
  %325 = and i32 %324, 32752
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = lshr i32 %323, 7
  %328 = and i32 %327, 32752
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = lshr i32 %323, 22
  %331 = shl nuw nsw i32 %330, 5
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = and i32 %258, 8
  %334 = icmp ne i32 %333, 0
  %335 = select i1 %334, float %326, float %276
  %336 = select i1 %334, float %329, float %280
  %337 = select i1 %334, float %332, float %284
  %338 = add i32 %254, 52
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = and i32 %340, 65535
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = lshr i32 %340, 16
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = and i32 %258, 2
  %346 = icmp ne i32 %345, 0
  %347 = select i1 %346, float %342, float %289
  %348 = select i1 %346, float %344, float %291
  %349 = add i32 %254, 56
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 65535
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %351, 16
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = and i32 %258, 4
  %357 = icmp ne i32 %356, 0
  %358 = select i1 %357, float %353, float %296
  %359 = fmul float %358, 0x3F50624DE0000000
  %360 = select i1 %357, float %355, float %298
  %361 = fmul float %360, 0x3F50624DE0000000
  %362 = add i32 %254, 60
  %363 = add i32 %254, 32
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = add i32 %28, 188
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = shl i32 %368, 4
  %370 = and i32 %369, 32752
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = lshr i32 %368, 7
  %373 = and i32 %372, 32752
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %368, 22
  %376 = shl nuw nsw i32 %375, 5
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = add i32 %28, 248
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = and i32 %380, 255
  %382 = uitofp i32 %381 to float
  %383 = fmul fast float %382, 0x3F70101020000000
  %384 = lshr i32 %380, 8
  %385 = and i32 %384, 255
  %386 = uitofp i32 %385 to float
  %387 = fmul fast float %386, 0x3F70101020000000
  %388 = lshr i32 %380, 16
  %389 = and i32 %388, 255
  %390 = uitofp i32 %389 to float
  %391 = fmul fast float %390, 0x3F70101020000000
  %392 = add i32 %28, 68
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = and i32 %394, 65535
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = lshr i32 %394, 16
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = add i32 %28, 320
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 65535
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = lshr i32 %401, 16
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = shl i32 %407, 4
  %409 = and i32 %408, 32752
  %410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %409)  ; LegacyF16ToF32(value)
  %411 = lshr i32 %407, 7
  %412 = and i32 %411, 32752
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = lshr i32 %407, 22
  %415 = shl nuw nsw i32 %414, 5
  %416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %415)  ; LegacyF16ToF32(value)
  %417 = and i32 %365, 1
  %418 = icmp ne i32 %417, 0
  %419 = select i1 %418, float %410, float %371
  %420 = select i1 %418, float %413, float %374
  %421 = select i1 %418, float %416, float %377
  %422 = add i32 %254, 64
  %423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.f32 %423, 0
  %425 = fmul fast float %424, %419
  %426 = fmul fast float %424, %420
  %427 = fmul fast float %424, %421
  %428 = add i32 %254, 68
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = shl i32 %430, 4
  %432 = and i32 %431, 32752
  %433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %432)  ; LegacyF16ToF32(value)
  %434 = lshr i32 %430, 7
  %435 = and i32 %434, 32752
  %436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %435)  ; LegacyF16ToF32(value)
  %437 = lshr i32 %430, 22
  %438 = shl nuw nsw i32 %437, 5
  %439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %438)  ; LegacyF16ToF32(value)
  %440 = and i32 %365, 8
  %441 = icmp ne i32 %440, 0
  %442 = select i1 %441, float %433, float %383
  %443 = select i1 %441, float %436, float %387
  %444 = select i1 %441, float %439, float %391
  %445 = add i32 %254, 72
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = and i32 %447, 65535
  %449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %448)  ; LegacyF16ToF32(value)
  %450 = lshr i32 %447, 16
  %451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %450)  ; LegacyF16ToF32(value)
  %452 = and i32 %365, 2
  %453 = icmp ne i32 %452, 0
  %454 = select i1 %453, float %449, float %396
  %455 = select i1 %453, float %451, float %398
  %456 = add i32 %254, 76
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = and i32 %458, 65535
  %460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %459)  ; LegacyF16ToF32(value)
  %461 = lshr i32 %458, 16
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = and i32 %365, 4
  %464 = icmp ne i32 %463, 0
  %465 = select i1 %464, float %460, float %403
  %466 = fmul float %465, 0x3F50624DE0000000
  %467 = select i1 %464, float %462, float %405
  %468 = fmul float %467, 0x3F50624DE0000000
  %469 = add i32 %254, 80
  %470 = add i32 %254, 36
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = add i32 %28, 204
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = shl i32 %475, 4
  %477 = and i32 %476, 32752
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = lshr i32 %475, 7
  %480 = and i32 %479, 32752
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = lshr i32 %475, 22
  %483 = shl nuw nsw i32 %482, 5
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = add i32 %28, 264
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = and i32 %487, 255
  %489 = uitofp i32 %488 to float
  %490 = fmul fast float %489, 0x3F70101020000000
  %491 = lshr i32 %487, 8
  %492 = and i32 %491, 255
  %493 = uitofp i32 %492 to float
  %494 = fmul fast float %493, 0x3F70101020000000
  %495 = lshr i32 %487, 16
  %496 = and i32 %495, 255
  %497 = uitofp i32 %496 to float
  %498 = fmul fast float %497, 0x3F70101020000000
  %499 = add i32 %28, 84
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = and i32 %501, 65535
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = lshr i32 %501, 16
  %505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %504)  ; LegacyF16ToF32(value)
  %506 = add i32 %28, 336
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = and i32 %508, 65535
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = lshr i32 %508, 16
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = shl i32 %514, 4
  %516 = and i32 %515, 32752
  %517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %516)  ; LegacyF16ToF32(value)
  %518 = lshr i32 %514, 7
  %519 = and i32 %518, 32752
  %520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %519)  ; LegacyF16ToF32(value)
  %521 = lshr i32 %514, 22
  %522 = shl nuw nsw i32 %521, 5
  %523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %522)  ; LegacyF16ToF32(value)
  %524 = and i32 %472, 1
  %525 = icmp ne i32 %524, 0
  %526 = select i1 %525, float %517, float %478
  %527 = select i1 %525, float %520, float %481
  %528 = select i1 %525, float %523, float %484
  %529 = add i32 %254, 84
  %530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  %532 = fmul fast float %531, %526
  %533 = fmul fast float %531, %527
  %534 = fmul fast float %531, %528
  %535 = add i32 %254, 88
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = shl i32 %537, 4
  %539 = and i32 %538, 32752
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = lshr i32 %537, 7
  %542 = and i32 %541, 32752
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = lshr i32 %537, 22
  %545 = shl nuw nsw i32 %544, 5
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = and i32 %472, 8
  %548 = icmp ne i32 %547, 0
  %549 = select i1 %548, float %540, float %490
  %550 = select i1 %548, float %543, float %494
  %551 = select i1 %548, float %546, float %498
  %552 = add i32 %254, 92
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = and i32 %554, 65535
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = lshr i32 %554, 16
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = and i32 %472, 2
  %560 = icmp ne i32 %559, 0
  %561 = select i1 %560, float %556, float %503
  %562 = select i1 %560, float %558, float %505
  %563 = add i32 %254, 96
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = and i32 %565, 65535
  %567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %566)  ; LegacyF16ToF32(value)
  %568 = lshr i32 %565, 16
  %569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %568)  ; LegacyF16ToF32(value)
  %570 = and i32 %472, 4
  %571 = icmp ne i32 %570, 0
  %572 = select i1 %571, float %567, float %510
  %573 = fmul float %572, 0x3F50624DE0000000
  %574 = select i1 %571, float %569, float %512
  %575 = fmul float %574, 0x3F50624DE0000000
  %576 = add i32 %28, 348
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %576, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = and i32 %578, 32
  %580 = icmp eq i32 %579, 0
  %581 = and i32 %578, 64
  %582 = icmp eq i32 %581, 0
  %583 = and i32 %578, 128
  %584 = icmp eq i32 %583, 0
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %576, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = and i32 %586, 2
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %602, label %589

; <label>:589                                     ; preds = %199
  %590 = add i32 %28, 504
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = add i32 %592, 0
  %594 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %593, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %595 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %594, %dx.types.Handle %71, float %62, float %63, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = extractvalue %dx.types.ResRet.f32 %595, 1
  %598 = extractvalue %dx.types.ResRet.f32 %595, 2
  %599 = fmul fast float %596, %64
  %600 = fmul fast float %597, %65
  %601 = fmul fast float %598, %66
  br label %602

; <label>:602                                     ; preds = %589, %199
  %603 = phi float [ %66, %199 ], [ %601, %589 ]
  %604 = phi float [ %65, %199 ], [ %600, %589 ]
  %605 = phi float [ %64, %199 ], [ %599, %589 ]
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %576, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = and i32 %607, 2
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %629, label %610

; <label>:610                                     ; preds = %602
  %611 = add i32 %28, 44
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = and i32 %613, 1
  %615 = icmp ne i32 %614, 0
  %616 = select i1 %615, float %605, float 1.000000e+00
  %617 = add i32 %28, 60
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = and i32 %619, 1
  %621 = icmp ne i32 %620, 0
  %622 = select i1 %621, float %604, float 1.000000e+00
  %623 = add i32 %28, 76
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = and i32 %625, 1
  %627 = icmp ne i32 %626, 0
  %628 = select i1 %627, float %603, float 1.000000e+00
  br label %629

; <label>:629                                     ; preds = %610, %602
  %630 = phi float [ %603, %602 ], [ %628, %610 ]
  %631 = phi float [ %604, %602 ], [ %622, %610 ]
  %632 = phi float [ %605, %602 ], [ %616, %610 ]
  %633 = lshr i32 %607, 20
  %634 = and i32 %633, 3
  %635 = add nuw nsw i32 %634, 1
  %636 = add i32 %28, 24
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = add i32 %28, 28
  %640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.i32 %640, 0
  %642 = or i32 %641, %638
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %1102, label %644

; <label>:644                                     ; preds = %629
  %645 = and i32 %638, 262144
  %646 = icmp ne i32 %645, 0
  %647 = select i1 %646, float %34, float 1.000000e+00
  %648 = select i1 %646, float %35, float 0.000000e+00
  %649 = select i1 %646, float %36, float 0.000000e+00
  %650 = select i1 %646, float %37, float 1.000000e+00
  %651 = select i1 %646, float %38, float %62
  %652 = select i1 %646, float %39, float %63
  %653 = add i32 %28, 284
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %653, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = lshr i32 %655, 16
  %657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %656)  ; LegacyF16ToF32(value)
  %658 = fmul fast float %657, 0x3F50624DE0000000
  %659 = add i32 %28, 88
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = lshr i32 %661, 16
  %663 = and i32 %662, 255
  %664 = lshr i32 %661, 24
  %665 = add i32 %28, 292
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = and i32 %667, 65535
  %669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %668)  ; LegacyF16ToF32(value)
  %670 = lshr i32 %667, 16
  %671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %670)  ; LegacyF16ToF32(value)
  %672 = add i32 %28, 32
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = lshr i32 %674, 22
  %676 = shl nuw nsw i32 %675, 5
  %677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %676)  ; LegacyF16ToF32(value)
  %678 = shl i32 %674, 4
  %679 = and i32 %678, 32752
  %680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %679)  ; LegacyF16ToF32(value)
  %681 = lshr i32 %674, 7
  %682 = and i32 %681, 32752
  %683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %682)  ; LegacyF16ToF32(value)
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 3
  %686 = fmul fast float %685, 1.000000e+03
  %687 = fmul fast float %252, %686
  %688 = call float @dx.op.unary.f32(i32 22, float %687)  ; Frc(value)
  %689 = fadd fast float %688, %242
  %690 = fmul fast float %253, %686
  %691 = call float @dx.op.unary.f32(i32 22, float %690)  ; Frc(value)
  %692 = fadd fast float %691, %244
  %693 = fmul fast float %658, %686
  %694 = call float @dx.op.unary.f32(i32 22, float %693)  ; Frc(value)
  %695 = fmul fast float %694, 0x401921FB60000000
  %696 = fadd fast float %695, %677
  %697 = call float @dx.op.unary.f32(i32 13, float %696)  ; Sin(value)
  %698 = call float @dx.op.unary.f32(i32 12, float %696)  ; Cos(value)
  %699 = fsub fast float -0.000000e+00, %697
  %700 = fadd fast float %651, -5.000000e-01
  %701 = fadd fast float %652, -5.000000e-01
  %702 = fmul fast float %669, %700
  %703 = fmul fast float %671, %701
  %704 = fadd fast float %702, 5.000000e-01
  %705 = fadd fast float %703, 5.000000e-01
  %706 = fmul fast float %680, %704
  %707 = fmul fast float %683, %705
  %708 = fmul fast float %698, %706
  %709 = call float @dx.op.tertiary.f32(i32 46, float %699, float %707, float %708)  ; FMad(a,b,c)
  %710 = fmul fast float %697, %706
  %711 = call float @dx.op.tertiary.f32(i32 46, float %698, float %707, float %710)  ; FMad(a,b,c)
  %712 = fadd fast float %689, %709
  %713 = fadd fast float %692, %711
  %714 = icmp ugt i32 %663, 1
  %715 = icmp ugt i32 %661, 33554431
  %716 = or i1 %715, %714
  br i1 %716, label %717, label %742

; <label>:717                                     ; preds = %644
  %718 = add i32 %28, 228
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = lshr i32 %720, 16
  %722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %721)  ; LegacyF16ToF32(value)
  %723 = fmul fast float %685, %722
  %724 = call float @dx.op.unary.f32(i32 22, float %723)  ; Frc(value)
  %725 = mul nuw nsw i32 %663, %664
  %726 = uitofp i32 %725 to float
  %727 = fmul fast float %724, %726
  %728 = call float @dx.op.unary.f32(i32 27, float %727)  ; Round_ni(value)
  %729 = fptoui float %728 to i32
  %730 = urem i32 %729, %663
  %731 = udiv i32 %729, %664
  %732 = call float @dx.op.unary.f32(i32 22, float %712)  ; Frc(value)
  %733 = call float @dx.op.unary.f32(i32 22, float %713)  ; Frc(value)
  %734 = uitofp i32 %730 to float
  %735 = uitofp i32 %731 to float
  %736 = fadd fast float %732, %734
  %737 = fadd fast float %733, %735
  %738 = uitofp i32 %663 to float
  %739 = uitofp i32 %664 to float
  %740 = fdiv fast float %736, %738
  %741 = fdiv fast float %737, %739
  br label %742

; <label>:742                                     ; preds = %717, %644
  %743 = phi float [ %740, %717 ], [ %712, %644 ]
  %744 = phi float [ %741, %717 ], [ %713, %644 ]
  %745 = and i32 %638, 16
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %943, label %747

; <label>:747                                     ; preds = %742
  %748 = add i32 %28, 392
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = add i32 %750, 0
  %752 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %751, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %753 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %752, %dx.types.Handle %70, float %743, float %744, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  %755 = extractvalue %dx.types.ResRet.f32 %753, 1
  %756 = extractvalue %dx.types.ResRet.f32 %753, 2
  %757 = extractvalue %dx.types.ResRet.f32 %753, 3
  %758 = and i32 %661, 255
  %759 = uitofp i32 %758 to float
  %760 = lshr i32 %661, 8
  %761 = and i32 %760, 255
  %762 = uitofp i32 %761 to float
  %763 = fmul fast float %757, %759
  %764 = fadd fast float %763, %762
  %765 = fmul fast float %764, 0x3F70101000000000
  %766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = and i32 %767, 512
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %778, label %770

; <label>:770                                     ; preds = %747
  %771 = add i32 %28, 472
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = add i32 %773, 0
  %775 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %774, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %776 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %775, %dx.types.Handle %71, float %743, float %744, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %777 = extractvalue %dx.types.ResRet.f32 %776, 0
  br label %778

; <label>:778                                     ; preds = %770, %747
  %779 = phi float [ %777, %770 ], [ 1.000000e+00, %747 ]
  %780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.i32 %780, 0
  %782 = and i32 %781, 33554432
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %890, label %784

; <label>:784                                     ; preds = %778
  %785 = add i32 %28, 224
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = and i32 %787, 65535
  %789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %788)  ; LegacyF16ToF32(value)
  %790 = lshr i32 %787, 16
  %791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %790)  ; LegacyF16ToF32(value)
  %792 = add i32 %28, 228
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = and i32 %794, 65535
  %796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %795)  ; LegacyF16ToF32(value)
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = lshr i32 %798, 24
  %800 = uitofp i32 %799 to float
  %801 = fmul fast float %800, 0x3F70101020000000
  %802 = and i32 %798, 255
  %803 = uitofp i32 %802 to float
  %804 = fmul fast float %803, 0x3F70101020000000
  %805 = lshr i32 %798, 8
  %806 = and i32 %805, 255
  %807 = uitofp i32 %806 to float
  %808 = fmul fast float %807, 0x3F70101020000000
  %809 = lshr i32 %798, 16
  %810 = and i32 %809, 255
  %811 = uitofp i32 %810 to float
  %812 = fmul fast float %811, 0x3F70101020000000
  %813 = add i32 %28, 220
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %813, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = lshr i32 %815, 24
  %817 = uitofp i32 %816 to float
  %818 = fmul fast float %817, 0x3F70101020000000
  %819 = and i32 %815, 255
  %820 = uitofp i32 %819 to float
  %821 = fmul fast float %820, 0x3F70101020000000
  %822 = lshr i32 %815, 8
  %823 = and i32 %822, 255
  %824 = uitofp i32 %823 to float
  %825 = fmul fast float %824, 0x3F70101020000000
  %826 = lshr i32 %815, 16
  %827 = and i32 %826, 255
  %828 = uitofp i32 %827 to float
  %829 = fmul fast float %828, 0x3F70101020000000
  %830 = bitcast float %754 to i32
  %831 = ashr i32 %830, 1
  %832 = sub nsw i32 1597463174, %831
  %833 = bitcast i32 %832 to float
  %834 = fmul fast float %754, 5.000000e-01
  %835 = fmul fast float %833, %833
  %836 = fmul fast float %835, %834
  %837 = fsub fast float 1.500000e+00, %836
  %838 = fmul fast float %833, %754
  %839 = fmul fast float %838, %837
  %840 = bitcast float %755 to i32
  %841 = ashr i32 %840, 1
  %842 = sub nsw i32 1597463174, %841
  %843 = bitcast i32 %842 to float
  %844 = fmul fast float %755, 5.000000e-01
  %845 = fmul fast float %843, %843
  %846 = fmul fast float %845, %844
  %847 = fsub fast float 1.500000e+00, %846
  %848 = fmul fast float %843, %755
  %849 = fmul fast float %848, %847
  %850 = bitcast float %756 to i32
  %851 = ashr i32 %850, 1
  %852 = sub nsw i32 1597463174, %851
  %853 = bitcast i32 %852 to float
  %854 = fmul fast float %756, 5.000000e-01
  %855 = fmul fast float %853, %853
  %856 = fmul fast float %855, %854
  %857 = fsub fast float 1.500000e+00, %856
  %858 = fmul fast float %853, %756
  %859 = fmul fast float %858, %857
  %860 = fsub fast float %839, %821
  %861 = fsub fast float %849, %825
  %862 = fsub fast float %859, %829
  %863 = fmul fast float %860, %789
  %864 = fmul fast float %861, %791
  %865 = fmul fast float %862, %796
  %866 = fadd fast float %863, %804
  %867 = fadd fast float %864, %808
  %868 = fadd fast float %865, %812
  %869 = call float @dx.op.unary.f32(i32 7, float %866)  ; Saturate(value)
  %870 = call float @dx.op.unary.f32(i32 7, float %867)  ; Saturate(value)
  %871 = call float @dx.op.unary.f32(i32 7, float %868)  ; Saturate(value)
  %872 = fmul fast float %869, %869
  %873 = fmul fast float %870, %870
  %874 = fmul fast float %871, %871
  %875 = fsub fast float %872, %754
  %876 = fsub fast float %873, %755
  %877 = fsub fast float %874, %756
  %878 = fmul fast float %875, %779
  %879 = fmul fast float %876, %779
  %880 = fmul fast float %877, %779
  %881 = fadd fast float %878, %754
  %882 = fadd fast float %879, %755
  %883 = fadd fast float %880, %756
  %884 = fadd fast float %801, %765
  %885 = fsub fast float %884, %818
  %886 = call float @dx.op.unary.f32(i32 7, float %885)  ; Saturate(value)
  %887 = fsub fast float %886, %765
  %888 = fmul fast float %887, %779
  %889 = fadd fast float %888, %765
  br label %943

; <label>:890                                     ; preds = %778
  %891 = and i32 %781, 134217728
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %927, label %893

; <label>:893                                     ; preds = %890
  %894 = call float @dx.op.unary.f32(i32 24, float %229)  ; Sqrt(value)
  %895 = call float @dx.op.unary.f32(i32 24, float %233)  ; Sqrt(value)
  %896 = call float @dx.op.unary.f32(i32 24, float %237)  ; Sqrt(value)
  %897 = fadd fast float %894, -5.000000e-01
  %898 = fadd fast float %895, -5.000000e-01
  %899 = fadd fast float %896, -5.000000e-01
  %900 = fmul fast float %897, %779
  %901 = fmul fast float %898, %779
  %902 = fmul fast float %899, %779
  %903 = fadd fast float %900, 5.000000e-01
  %904 = fadd fast float %901, 5.000000e-01
  %905 = fadd fast float %902, 5.000000e-01
  %906 = call float @dx.op.unary.f32(i32 24, float %754)  ; Sqrt(value)
  %907 = call float @dx.op.unary.f32(i32 24, float %755)  ; Sqrt(value)
  %908 = call float @dx.op.unary.f32(i32 24, float %756)  ; Sqrt(value)
  %909 = fmul fast float %903, 2.000000e+00
  %910 = fsub fast float 1.000000e+00, %909
  %911 = fmul fast float %910, %906
  %912 = fadd fast float %911, %909
  %913 = fmul fast float %912, %906
  %914 = fmul fast float %904, 2.000000e+00
  %915 = fsub fast float 1.000000e+00, %914
  %916 = fmul fast float %915, %907
  %917 = fadd fast float %916, %914
  %918 = fmul fast float %917, %907
  %919 = fmul fast float %905, 2.000000e+00
  %920 = fsub fast float 1.000000e+00, %919
  %921 = fmul fast float %920, %908
  %922 = fadd fast float %921, %919
  %923 = fmul fast float %922, %908
  %924 = fmul fast float %913, %913
  %925 = fmul fast float %918, %918
  %926 = fmul fast float %923, %923
  br label %943

; <label>:927                                     ; preds = %890
  %928 = fmul fast float %229, %229
  %929 = fmul fast float %233, %233
  %930 = fmul fast float %237, %237
  %931 = fadd fast float %928, -1.000000e+00
  %932 = fadd fast float %929, -1.000000e+00
  %933 = fadd fast float %930, -1.000000e+00
  %934 = fmul fast float %779, %931
  %935 = fmul fast float %779, %932
  %936 = fmul fast float %779, %933
  %937 = fadd fast float %934, 1.000000e+00
  %938 = fadd fast float %935, 1.000000e+00
  %939 = fadd fast float %936, 1.000000e+00
  %940 = fmul fast float %937, %754
  %941 = fmul fast float %938, %755
  %942 = fmul fast float %939, %756
  br label %943

; <label>:943                                     ; preds = %927, %893, %784, %742
  %944 = phi float [ %889, %784 ], [ %765, %893 ], [ %765, %927 ], [ 0x3FA23C0BE0000000, %742 ]
  %945 = phi float [ %881, %784 ], [ %924, %893 ], [ %940, %927 ], [ 1.000000e+00, %742 ]
  %946 = phi float [ %882, %784 ], [ %925, %893 ], [ %941, %927 ], [ 1.000000e+00, %742 ]
  %947 = phi float [ %883, %784 ], [ %926, %893 ], [ %942, %927 ], [ 1.000000e+00, %742 ]
  %948 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.i32 %948, 1
  %950 = and i32 %949, 1
  %951 = icmp ne i32 %950, 0
  %952 = add i32 %28, 356
  %953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.i32 %953, 0
  %955 = and i32 %954, 32
  %956 = icmp ne i32 %955, 0
  %957 = and i1 %951, %956
  %958 = select i1 %957, float 1.000000e+00, float %945
  %959 = select i1 %957, float 0x3FD3333340000000, float %946
  %960 = select i1 %957, float 0x3FD3333340000000, float %947
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = and i32 %962, 32
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %1037, label %965

; <label>:965                                     ; preds = %943
  %966 = add i32 %28, 92
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = add i32 %28, 408
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = add i32 %971, 0
  %973 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %972, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %974 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %973, %dx.types.Handle %70, float %743, float %744, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %975 = extractvalue %dx.types.ResRet.f32 %974, 0
  %976 = extractvalue %dx.types.ResRet.f32 %974, 1
  %977 = extractvalue %dx.types.ResRet.f32 %974, 2
  %978 = extractvalue %dx.types.ResRet.f32 %974, 3
  %979 = and i32 %968, 255
  %980 = uitofp i32 %979 to float
  %981 = lshr i32 %968, 8
  %982 = and i32 %981, 255
  %983 = uitofp i32 %982 to float
  %984 = lshr i32 %968, 16
  %985 = and i32 %984, 255
  %986 = uitofp i32 %985 to float
  %987 = fmul fast float %986, 0x3F70101000000000
  %988 = fmul fast float %975, %980
  %989 = fadd fast float %988, %983
  %990 = fmul fast float %989, 0x3F70101000000000
  %991 = fadd fast float %976, -5.000000e-01
  %992 = fadd fast float %978, -5.000000e-01
  %993 = fmul fast float %991, %987
  %994 = fmul fast float %992, %987
  %995 = fadd fast float %993, 5.000000e-01
  %996 = fadd fast float %994, 5.000000e-01
  %997 = fmul fast float %995, 2.000000e+00
  %998 = fadd fast float %997, -1.000000e+00
  %999 = fmul fast float %996, 2.000000e+00
  %1000 = fadd fast float %999, -1.000000e+00
  %1001 = fadd fast float %998, %1000
  %1002 = fmul fast float %1001, 5.000000e-01
  %1003 = fsub fast float %998, %1000
  %1004 = fmul fast float %1003, 5.000000e-01
  %1005 = call float @dx.op.unary.f32(i32 6, float %1002)  ; FAbs(value)
  %1006 = fsub fast float 1.000000e+00, %1005
  %1007 = call float @dx.op.unary.f32(i32 6, float %1004)  ; FAbs(value)
  %1008 = fsub fast float %1006, %1007
  %1009 = call float @dx.op.dot3.f32(i32 55, float %1002, float %1004, float %1008, float %1002, float %1004, float %1008)  ; Dot3(ax,ay,az,bx,by,bz)
  %1010 = call float @dx.op.unary.f32(i32 25, float %1009)  ; Rsqrt(value)
  %1011 = fmul fast float %1002, %1010
  %1012 = fmul fast float %1004, %1010
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = and i32 %1014, 67108864
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1033, label %1017

; <label>:1017                                    ; preds = %965
  %1018 = add i32 %28, 280
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1018, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = and i32 %1020, 65535
  %1022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1021)  ; LegacyF16ToF32(value)
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %653, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = and i32 %1024, 65535
  %1026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1025)  ; LegacyF16ToF32(value)
  %1027 = lshr i32 %1020, 16
  %1028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1027)  ; LegacyF16ToF32(value)
  %1029 = fsub fast float %990, %1028
  %1030 = fmul fast float %1029, %1022
  %1031 = fadd fast float %1030, %1026
  %1032 = call float @dx.op.unary.f32(i32 7, float %1031)  ; Saturate(value)
  br label %1033

; <label>:1033                                    ; preds = %1017, %965
  %1034 = phi float [ %1032, %1017 ], [ %990, %965 ]
  %1035 = call float @dx.op.dot2.f32(i32 54, float %1011, float %1012, float %647, float %648)  ; Dot2(ax,ay,bx,by)
  %1036 = call float @dx.op.dot2.f32(i32 54, float %1011, float %1012, float %649, float %650)  ; Dot2(ax,ay,bx,by)
  br label %1037

; <label>:1037                                    ; preds = %1033, %943
  %1038 = phi float [ %1034, %1033 ], [ 0x3FD6666660000000, %943 ]
  %1039 = phi float [ %1035, %1033 ], [ 0.000000e+00, %943 ]
  %1040 = phi float [ %1036, %1033 ], [ 0.000000e+00, %943 ]
  %1041 = phi float [ %977, %1033 ], [ 1.000000e+00, %943 ]
  %1042 = add i32 %28, 160
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = lshr i32 %1044, 22
  %1046 = shl nuw nsw i32 %1045, 5
  %1047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1046)  ; LegacyF16ToF32(value)
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = and i32 %1049, 64
  %1051 = icmp eq i32 %1050, 0
  br i1 %1051, label %1085, label %1052

; <label>:1052                                    ; preds = %1037
  %1053 = add i32 %28, 424
  %1054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1053, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.i32 %1054, 0
  %1056 = add i32 %1055, 0
  %1057 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1056, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.i32 %1058, 0
  %1060 = and i32 %1059, 131072
  %1061 = icmp eq i32 %1060, 0
  %1062 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1057, %dx.types.Handle %70, float %743, float %744, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1063 = extractvalue %dx.types.ResRet.f32 %1062, 0
  %1064 = extractvalue %dx.types.ResRet.f32 %1062, 1
  %1065 = extractvalue %dx.types.ResRet.f32 %1062, 2
  %1066 = fmul fast float %1063, %217
  %1067 = fmul fast float %1064, %220
  %1068 = fmul fast float %1065, %223
  br i1 %1061, label %1075, label %1069

; <label>:1069                                    ; preds = %1052
  %1070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1071 = extractvalue %dx.types.CBufRet.f32 %1070, 0
  %1072 = fmul fast float %1071, %1066
  %1073 = fmul fast float %1071, %1067
  %1074 = fmul fast float %1071, %1068
  br label %1075

; <label>:1075                                    ; preds = %1069, %1052
  %1076 = phi float [ %1072, %1069 ], [ %1066, %1052 ]
  %1077 = phi float [ %1073, %1069 ], [ %1067, %1052 ]
  %1078 = phi float [ %1074, %1069 ], [ %1068, %1052 ]
  %1079 = fmul fast float %1076, %1047
  %1080 = select i1 %200, float %1079, float %1076
  %1081 = call float @dx.op.dot3.f32(i32 55, float %1080, float %1077, float %1078, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1082 = select i1 %200, float 0.000000e+00, float %1076
  %1083 = select i1 %200, float %1081, float %1077
  %1084 = select i1 %200, float 0.000000e+00, float %1078
  br label %1085

; <label>:1085                                    ; preds = %1075, %1037
  %1086 = phi float [ %1082, %1075 ], [ 0.000000e+00, %1037 ]
  %1087 = phi float [ %1083, %1075 ], [ 0.000000e+00, %1037 ]
  %1088 = phi float [ %1084, %1075 ], [ 0.000000e+00, %1037 ]
  %1089 = add i32 %28, 96
  %1090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1089, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.i32 %1090, 0
  %1092 = and i32 %1091, 255
  %1093 = uitofp i32 %1092 to float
  %1094 = lshr i32 %1091, 8
  %1095 = and i32 %1094, 255
  %1096 = uitofp i32 %1095 to float
  %1097 = call float @dx.op.dot3.f32(i32 55, float %958, float %959, float %960, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1098 = fmul fast float %1096, %1097
  %1099 = fadd fast float %1098, %1093
  %1100 = fmul fast float %1099, 0x3F70101020000000
  %1101 = call float @dx.op.unary.f32(i32 7, float %1100)  ; Saturate(value)
  br label %1102

; <label>:1102                                    ; preds = %1085, %629
  %1103 = phi float [ 0.000000e+00, %629 ], [ %1039, %1085 ]
  %1104 = phi float [ 0.000000e+00, %629 ], [ %1040, %1085 ]
  %1105 = phi float [ 0.000000e+00, %629 ], [ %958, %1085 ]
  %1106 = phi float [ 0.000000e+00, %629 ], [ %959, %1085 ]
  %1107 = phi float [ 0.000000e+00, %629 ], [ %960, %1085 ]
  %1108 = phi float [ 0.000000e+00, %629 ], [ %1086, %1085 ]
  %1109 = phi float [ 0.000000e+00, %629 ], [ %1087, %1085 ]
  %1110 = phi float [ 0.000000e+00, %629 ], [ %1088, %1085 ]
  %1111 = phi float [ 0.000000e+00, %629 ], [ %944, %1085 ]
  %1112 = phi float [ 0.000000e+00, %629 ], [ 1.000000e+00, %1085 ]
  %1113 = phi float [ 0.000000e+00, %629 ], [ %1038, %1085 ]
  %1114 = phi float [ 0.000000e+00, %629 ], [ %1041, %1085 ]
  %1115 = phi float [ 0.000000e+00, %629 ], [ %1101, %1085 ]
  br i1 %580, label %1842, label %1116

; <label>:1116                                    ; preds = %1102
  %1117 = icmp ult i32 %635, 2
  %1118 = add i32 %28, 40
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = add i32 %28, 44
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = or i32 %1123, %1120
  %1125 = icmp eq i32 %1124, 0
  br i1 %1125, label %1842, label %1126

; <label>:1126                                    ; preds = %1116
  %1127 = and i32 %1120, 262144
  %1128 = icmp ne i32 %1127, 0
  %1129 = select i1 %1128, float %34, float 1.000000e+00
  %1130 = select i1 %1128, float %35, float 0.000000e+00
  %1131 = select i1 %1128, float %36, float 0.000000e+00
  %1132 = select i1 %1128, float %37, float 1.000000e+00
  %1133 = select i1 %1128, float %38, float %62
  %1134 = select i1 %1128, float %39, float %63
  %1135 = add i32 %28, 300
  %1136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1135, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = lshr i32 %1137, 16
  %1139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1138)  ; LegacyF16ToF32(value)
  %1140 = fmul fast float %1139, 0x3F50624DE0000000
  %1141 = add i32 %28, 104
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = lshr i32 %1143, 16
  %1145 = and i32 %1144, 255
  %1146 = lshr i32 %1143, 24
  %1147 = add i32 %28, 308
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = and i32 %1149, 65535
  %1151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1150)  ; LegacyF16ToF32(value)
  %1152 = lshr i32 %1149, 16
  %1153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1152)  ; LegacyF16ToF32(value)
  %1154 = add i32 %28, 48
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = lshr i32 %1156, 22
  %1158 = shl nuw nsw i32 %1157, 5
  %1159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1158)  ; LegacyF16ToF32(value)
  %1160 = shl i32 %1156, 4
  %1161 = and i32 %1160, 32752
  %1162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1161)  ; LegacyF16ToF32(value)
  %1163 = lshr i32 %1156, 7
  %1164 = and i32 %1163, 32752
  %1165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1164)  ; LegacyF16ToF32(value)
  %1166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1167 = extractvalue %dx.types.CBufRet.f32 %1166, 3
  %1168 = fmul fast float %1167, 1.000000e+03
  %1169 = fmul fast float %1168, %359
  %1170 = call float @dx.op.unary.f32(i32 22, float %1169)  ; Frc(value)
  %1171 = fadd fast float %1170, %347
  %1172 = fmul fast float %1168, %361
  %1173 = call float @dx.op.unary.f32(i32 22, float %1172)  ; Frc(value)
  %1174 = fadd fast float %1173, %348
  %1175 = fmul fast float %1140, %1168
  %1176 = call float @dx.op.unary.f32(i32 22, float %1175)  ; Frc(value)
  %1177 = fmul fast float %1176, 0x401921FB60000000
  %1178 = fadd fast float %1177, %1159
  %1179 = call float @dx.op.unary.f32(i32 13, float %1178)  ; Sin(value)
  %1180 = call float @dx.op.unary.f32(i32 12, float %1178)  ; Cos(value)
  %1181 = fsub fast float -0.000000e+00, %1179
  %1182 = fadd fast float %1133, -5.000000e-01
  %1183 = fadd fast float %1134, -5.000000e-01
  %1184 = fmul fast float %1151, %1182
  %1185 = fmul fast float %1153, %1183
  %1186 = fadd fast float %1184, 5.000000e-01
  %1187 = fadd fast float %1185, 5.000000e-01
  %1188 = fmul fast float %1162, %1186
  %1189 = fmul fast float %1165, %1187
  %1190 = fmul fast float %1180, %1188
  %1191 = call float @dx.op.tertiary.f32(i32 46, float %1181, float %1189, float %1190)  ; FMad(a,b,c)
  %1192 = fmul fast float %1179, %1188
  %1193 = call float @dx.op.tertiary.f32(i32 46, float %1180, float %1189, float %1192)  ; FMad(a,b,c)
  %1194 = fadd fast float %1171, %1191
  %1195 = fadd fast float %1174, %1193
  %1196 = icmp ugt i32 %1145, 1
  %1197 = icmp ugt i32 %1143, 33554431
  %1198 = or i1 %1197, %1196
  br i1 %1198, label %1199, label %1224

; <label>:1199                                    ; preds = %1126
  %1200 = add i32 %28, 244
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = lshr i32 %1202, 16
  %1204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1203)  ; LegacyF16ToF32(value)
  %1205 = fmul fast float %1167, %1204
  %1206 = call float @dx.op.unary.f32(i32 22, float %1205)  ; Frc(value)
  %1207 = mul nuw nsw i32 %1145, %1146
  %1208 = uitofp i32 %1207 to float
  %1209 = fmul fast float %1206, %1208
  %1210 = call float @dx.op.unary.f32(i32 27, float %1209)  ; Round_ni(value)
  %1211 = fptoui float %1210 to i32
  %1212 = urem i32 %1211, %1145
  %1213 = udiv i32 %1211, %1146
  %1214 = call float @dx.op.unary.f32(i32 22, float %1194)  ; Frc(value)
  %1215 = call float @dx.op.unary.f32(i32 22, float %1195)  ; Frc(value)
  %1216 = uitofp i32 %1212 to float
  %1217 = uitofp i32 %1213 to float
  %1218 = fadd fast float %1214, %1216
  %1219 = fadd fast float %1215, %1217
  %1220 = uitofp i32 %1145 to float
  %1221 = uitofp i32 %1146 to float
  %1222 = fdiv fast float %1218, %1220
  %1223 = fdiv fast float %1219, %1221
  br label %1224

; <label>:1224                                    ; preds = %1199, %1126
  %1225 = phi float [ %1222, %1199 ], [ %1194, %1126 ]
  %1226 = phi float [ %1223, %1199 ], [ %1195, %1126 ]
  %1227 = and i32 %1120, 256
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1275, label %1229

; <label>:1229                                    ; preds = %1224
  %1230 = add i32 %28, 460
  %1231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.i32 %1231, 0
  %1233 = add i32 %1232, 0
  %1234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1233, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1235 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1234, %dx.types.Handle %71, float %1225, float %1226, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = add i32 %28, 116
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = shl i32 %1239, 4
  %1241 = and i32 %1240, 32752
  %1242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1241)  ; LegacyF16ToF32(value)
  %1243 = lshr i32 %1239, 7
  %1244 = and i32 %1243, 32752
  %1245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1244)  ; LegacyF16ToF32(value)
  %1246 = fsub fast float 1.000000e+00, %632
  %1247 = call float @dx.op.binary.f32(i32 35, float %1246, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1248 = bitcast float %632 to i32
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

; <label>:1275                                    ; preds = %1229, %1224
  %1276 = phi float [ %1274, %1229 ], [ %632, %1224 ]
  %1277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = and i32 %1278, 128
  %1280 = icmp eq i32 %1279, 0
  br i1 %1280, label %1297, label %1281

; <label>:1281                                    ; preds = %1275
  %1282 = add i32 %28, 444
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = add i32 %1284, 0
  %1286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1285, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1287 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1286, %dx.types.Handle %71, float %1225, float %1226, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1288 = extractvalue %dx.types.ResRet.f32 %1287, 0
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %1299, label %1842, label %1300

; <label>:1300                                    ; preds = %1297
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = and i32 %1302, 16
  %1304 = icmp eq i32 %1303, 0
  br i1 %1304, label %1503, label %1305

; <label>:1305                                    ; preds = %1300
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = add i32 %28, 396
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = add i32 %1310, 0
  %1312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1311, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1313 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1312, %dx.types.Handle %70, float %1225, float %1226, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.i32 %1326, 0
  %1328 = and i32 %1327, 512
  %1329 = icmp eq i32 %1328, 0
  br i1 %1329, label %1338, label %1330

; <label>:1330                                    ; preds = %1305
  %1331 = add i32 %28, 476
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = add i32 %1333, 0
  %1335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1334, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1336 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1335, %dx.types.Handle %71, float %1225, float %1226, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1337 = extractvalue %dx.types.ResRet.f32 %1336, 0
  br label %1338

; <label>:1338                                    ; preds = %1330, %1305
  %1339 = phi float [ %1337, %1330 ], [ 1.000000e+00, %1305 ]
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = and i32 %1341, 33554432
  %1343 = icmp eq i32 %1342, 0
  br i1 %1343, label %1450, label %1344

; <label>:1344                                    ; preds = %1338
  %1345 = add i32 %28, 240
  %1346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1345, i32 undef)  ; BufferLoad(srv,index,wot)
  %1347 = extractvalue %dx.types.ResRet.i32 %1346, 0
  %1348 = and i32 %1347, 65535
  %1349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1348)  ; LegacyF16ToF32(value)
  %1350 = lshr i32 %1347, 16
  %1351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1350)  ; LegacyF16ToF32(value)
  %1352 = add i32 %28, 244
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = and i32 %1354, 65535
  %1356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1355)  ; LegacyF16ToF32(value)
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1373 = add i32 %28, 236
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1373, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1454 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %1455 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %1456 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
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
  %1488 = fmul fast float %335, %335
  %1489 = fmul fast float %336, %336
  %1490 = fmul fast float %337, %337
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
  %1508 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1509 = extractvalue %dx.types.CBufRet.i32 %1508, 1
  %1510 = and i32 %1509, 1
  %1511 = icmp ne i32 %1510, 0
  %1512 = add i32 %28, 356
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = and i32 %1514, 32
  %1516 = icmp ne i32 %1515, 0
  %1517 = and i1 %1511, %1516
  %1518 = select i1 %1517, float 1.000000e+00, float %1505
  %1519 = select i1 %1517, float 0x3FD3333340000000, float %1506
  %1520 = select i1 %1517, float 0x3FD3333340000000, float %1507
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = and i32 %1522, 32
  %1524 = icmp eq i32 %1523, 0
  br i1 %1524, label %1597, label %1525

; <label>:1525                                    ; preds = %1503
  %1526 = add i32 %28, 108
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1526, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = add i32 %28, 412
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1529, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = add i32 %1531, 0
  %1533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1533, %dx.types.Handle %70, float %1225, float %1226, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = and i32 %1574, 67108864
  %1576 = icmp eq i32 %1575, 0
  br i1 %1576, label %1593, label %1577

; <label>:1577                                    ; preds = %1525
  %1578 = add i32 %28, 296
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = and i32 %1580, 65535
  %1582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1581)  ; LegacyF16ToF32(value)
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1135, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1595 = call float @dx.op.dot2.f32(i32 54, float %1571, float %1572, float %1129, float %1130)  ; Dot2(ax,ay,bx,by)
  %1596 = call float @dx.op.dot2.f32(i32 54, float %1571, float %1572, float %1131, float %1132)  ; Dot2(ax,ay,bx,by)
  br label %1597

; <label>:1597                                    ; preds = %1593, %1503
  %1598 = phi float [ %1594, %1593 ], [ 0x3FD6666660000000, %1503 ]
  %1599 = phi float [ %1595, %1593 ], [ 0.000000e+00, %1503 ]
  %1600 = phi float [ %1596, %1593 ], [ 0.000000e+00, %1503 ]
  %1601 = phi float [ %1537, %1593 ], [ 1.000000e+00, %1503 ]
  %1602 = add i32 %28, 176
  %1603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1602, i32 undef)  ; BufferLoad(srv,index,wot)
  %1604 = extractvalue %dx.types.ResRet.i32 %1603, 0
  %1605 = lshr i32 %1604, 22
  %1606 = shl nuw nsw i32 %1605, 5
  %1607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1606)  ; LegacyF16ToF32(value)
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = and i32 %1609, 64
  %1611 = icmp eq i32 %1610, 0
  br i1 %1611, label %1645, label %1612

; <label>:1612                                    ; preds = %1597
  %1613 = add i32 %28, 428
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1613, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = add i32 %1615, 0
  %1617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1616, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = and i32 %1619, 131072
  %1621 = icmp eq i32 %1620, 0
  %1622 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1617, %dx.types.Handle %70, float %1225, float %1226, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1623 = extractvalue %dx.types.ResRet.f32 %1622, 0
  %1624 = extractvalue %dx.types.ResRet.f32 %1622, 1
  %1625 = extractvalue %dx.types.ResRet.f32 %1622, 2
  %1626 = fmul fast float %318, %1623
  %1627 = fmul fast float %319, %1624
  %1628 = fmul fast float %320, %1625
  br i1 %1621, label %1635, label %1629

; <label>:1629                                    ; preds = %1612
  %1630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1640 = select i1 %200, float %1639, float %1636
  %1641 = call float @dx.op.dot3.f32(i32 55, float %1640, float %1637, float %1638, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1642 = select i1 %200, float 0.000000e+00, float %1636
  %1643 = select i1 %200, float %1641, float %1637
  %1644 = select i1 %200, float 0.000000e+00, float %1638
  br label %1645

; <label>:1645                                    ; preds = %1635, %1597
  %1646 = phi float [ %1642, %1635 ], [ 0.000000e+00, %1597 ]
  %1647 = phi float [ %1643, %1635 ], [ 0.000000e+00, %1597 ]
  %1648 = phi float [ %1644, %1635 ], [ 0.000000e+00, %1597 ]
  %1649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1650 = extractvalue %dx.types.ResRet.i32 %1649, 0
  %1651 = add i32 %28, 112
  %1652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1651, i32 undef)  ; BufferLoad(srv,index,wot)
  %1653 = extractvalue %dx.types.ResRet.i32 %1652, 0
  %1654 = and i32 %1653, 255
  %1655 = uitofp i32 %1654 to float
  %1656 = lshr i32 %1653, 8
  %1657 = and i32 %1656, 255
  %1658 = uitofp i32 %1657 to float
  %1659 = call float @dx.op.dot3.f32(i32 55, float %1518, float %1519, float %1520, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1660 = fmul fast float %1658, %1659
  %1661 = fadd fast float %1660, %1655
  %1662 = fmul fast float %1661, 0x3F70101020000000
  %1663 = call float @dx.op.unary.f32(i32 7, float %1662)  ; Saturate(value)
  br i1 %1117, label %1664, label %1672

; <label>:1664                                    ; preds = %1645
  %1665 = fsub fast float 1.000000e+00, %1298
  %1666 = fmul fast float %1665, %1105
  %1667 = fmul fast float %1665, %1106
  %1668 = fmul fast float %1665, %1107
  %1669 = fmul fast float %1665, %1108
  %1670 = fmul fast float %1665, %1109
  %1671 = fmul fast float %1665, %1110
  br label %1672

; <label>:1672                                    ; preds = %1664, %1645
  %1673 = phi float [ %1666, %1664 ], [ %1105, %1645 ]
  %1674 = phi float [ %1667, %1664 ], [ %1106, %1645 ]
  %1675 = phi float [ %1668, %1664 ], [ %1107, %1645 ]
  %1676 = phi float [ %1669, %1664 ], [ %1108, %1645 ]
  %1677 = phi float [ %1670, %1664 ], [ %1109, %1645 ]
  %1678 = phi float [ %1671, %1664 ], [ %1110, %1645 ]
  %1679 = and i32 %1650, 3
  %1680 = icmp eq i32 %1679, 3
  br i1 %1680, label %1759, label %1681

; <label>:1681                                    ; preds = %1672
  %1682 = and i32 %1650, 16
  %1683 = icmp ne i32 %1682, 0
  %1684 = select i1 %1683, float %1298, float 0.000000e+00
  %1685 = icmp eq i32 %1679, 0
  br i1 %1685, label %1686, label %1714

; <label>:1686                                    ; preds = %1681
  %1687 = and i32 %1650, 64
  %1688 = icmp ne i32 %1687, 0
  %1689 = select i1 %1688, float %1298, float 0.000000e+00
  %1690 = fsub fast float %1518, %1673
  %1691 = fsub fast float %1519, %1674
  %1692 = fsub fast float %1520, %1675
  %1693 = fmul fast float %1684, %1690
  %1694 = fmul fast float %1684, %1691
  %1695 = fmul fast float %1684, %1692
  %1696 = fadd fast float %1693, %1673
  %1697 = fadd fast float %1694, %1674
  %1698 = fadd fast float %1695, %1675
  %1699 = fsub fast float %1504, %1111
  %1700 = fmul fast float %1684, %1699
  %1701 = fadd fast float %1700, %1111
  %1702 = fsub fast float %1646, %1676
  %1703 = fsub fast float %1647, %1677
  %1704 = fsub fast float %1648, %1678
  %1705 = fmul fast float %1689, %1702
  %1706 = fmul fast float %1689, %1703
  %1707 = fmul fast float %1689, %1704
  %1708 = fadd fast float %1705, %1676
  %1709 = fadd fast float %1706, %1677
  %1710 = fadd fast float %1707, %1678
  %1711 = fsub fast float %1663, %1115
  %1712 = fmul fast float %1684, %1711
  %1713 = fadd fast float %1712, %1115
  br label %1759

; <label>:1714                                    ; preds = %1681
  %1715 = icmp eq i32 %1679, 1
  br i1 %1715, label %1716, label %1729

; <label>:1716                                    ; preds = %1714
  %1717 = fadd fast float %1518, -1.000000e+00
  %1718 = fadd fast float %1519, -1.000000e+00
  %1719 = fadd fast float %1520, -1.000000e+00
  %1720 = fmul fast float %1684, %1717
  %1721 = fmul fast float %1684, %1718
  %1722 = fmul fast float %1684, %1719
  %1723 = fadd fast float %1720, 1.000000e+00
  %1724 = fadd fast float %1721, 1.000000e+00
  %1725 = fadd fast float %1722, 1.000000e+00
  %1726 = fmul fast float %1723, %1673
  %1727 = fmul fast float %1724, %1674
  %1728 = fmul fast float %1725, %1675
  br label %1759

; <label>:1729                                    ; preds = %1714
  %1730 = icmp eq i32 %1679, 2
  br i1 %1730, label %1731, label %1759

; <label>:1731                                    ; preds = %1729
  %1732 = call float @dx.op.unary.f32(i32 24, float %1518)  ; Sqrt(value)
  %1733 = call float @dx.op.unary.f32(i32 24, float %1519)  ; Sqrt(value)
  %1734 = call float @dx.op.unary.f32(i32 24, float %1520)  ; Sqrt(value)
  %1735 = fadd fast float %1732, -5.000000e-01
  %1736 = fadd fast float %1733, -5.000000e-01
  %1737 = fadd fast float %1734, -5.000000e-01
  %1738 = fmul fast float %1735, %1684
  %1739 = fmul fast float %1736, %1684
  %1740 = fmul fast float %1737, %1684
  %1741 = fadd fast float %1738, 5.000000e-01
  %1742 = fadd fast float %1739, 5.000000e-01
  %1743 = fadd fast float %1740, 5.000000e-01
  %1744 = fmul fast float %1741, 2.000000e+00
  %1745 = fsub fast float 1.000000e+00, %1744
  %1746 = fmul fast float %1745, %1673
  %1747 = fadd fast float %1746, %1744
  %1748 = fmul fast float %1747, %1673
  %1749 = fmul fast float %1742, 2.000000e+00
  %1750 = fsub fast float 1.000000e+00, %1749
  %1751 = fmul fast float %1750, %1674
  %1752 = fadd fast float %1751, %1749
  %1753 = fmul fast float %1752, %1674
  %1754 = fmul fast float %1743, 2.000000e+00
  %1755 = fsub fast float 1.000000e+00, %1754
  %1756 = fmul fast float %1755, %1675
  %1757 = fadd fast float %1756, %1754
  %1758 = fmul fast float %1757, %1675
  br label %1759

; <label>:1759                                    ; preds = %1731, %1729, %1716, %1686, %1672
  %1760 = phi float [ %1673, %1672 ], [ %1748, %1731 ], [ %1673, %1729 ], [ %1726, %1716 ], [ %1696, %1686 ]
  %1761 = phi float [ %1674, %1672 ], [ %1753, %1731 ], [ %1674, %1729 ], [ %1727, %1716 ], [ %1697, %1686 ]
  %1762 = phi float [ %1675, %1672 ], [ %1758, %1731 ], [ %1675, %1729 ], [ %1728, %1716 ], [ %1698, %1686 ]
  %1763 = phi float [ %1676, %1672 ], [ %1676, %1731 ], [ %1676, %1729 ], [ %1676, %1716 ], [ %1708, %1686 ]
  %1764 = phi float [ %1677, %1672 ], [ %1677, %1731 ], [ %1677, %1729 ], [ %1677, %1716 ], [ %1709, %1686 ]
  %1765 = phi float [ %1678, %1672 ], [ %1678, %1731 ], [ %1678, %1729 ], [ %1678, %1716 ], [ %1710, %1686 ]
  %1766 = phi float [ %1111, %1672 ], [ %1111, %1731 ], [ %1111, %1729 ], [ %1111, %1716 ], [ %1701, %1686 ]
  %1767 = phi float [ %1115, %1672 ], [ %1115, %1731 ], [ %1115, %1729 ], [ %1115, %1716 ], [ %1713, %1686 ]
  %1768 = and i32 %1650, 12
  %1769 = icmp eq i32 %1768, 12
  br i1 %1769, label %1842, label %1770

; <label>:1770                                    ; preds = %1759
  %1771 = and i32 %1650, 2097184
  %1772 = icmp eq i32 %1771, 2097184
  %1773 = select i1 %1772, float %1298, float 0.000000e+00
  %1774 = and i32 %1650, 4194336
  %1775 = icmp eq i32 %1774, 4194336
  %1776 = select i1 %1775, float %1298, float 0.000000e+00
  %1777 = and i32 %1650, 8388640
  %1778 = icmp eq i32 %1777, 8388640
  %1779 = select i1 %1778, float %1298, float 0.000000e+00
  %1780 = icmp eq i32 %1768, 0
  br i1 %1780, label %1781, label %1794

; <label>:1781                                    ; preds = %1770
  %1782 = fsub fast float %1599, %1103
  %1783 = fsub fast float %1600, %1104
  %1784 = fmul fast float %1773, %1782
  %1785 = fmul fast float %1773, %1783
  %1786 = fadd fast float %1784, %1103
  %1787 = fadd fast float %1785, %1104
  %1788 = fsub fast float %1601, %1114
  %1789 = fmul fast float %1776, %1788
  %1790 = fadd fast float %1789, %1114
  %1791 = fsub fast float %1598, %1113
  %1792 = fmul fast float %1779, %1791
  %1793 = fadd fast float %1792, %1113
  br label %1842

; <label>:1794                                    ; preds = %1770
  %1795 = icmp eq i32 %1768, 4
  br i1 %1795, label %1796, label %1828

; <label>:1796                                    ; preds = %1794
  %1797 = fmul fast float %1773, %1599
  %1798 = fmul fast float %1773, %1600
  %1799 = fadd fast float %1797, %1103
  %1800 = fadd fast float %1798, %1104
  %1801 = call float @dx.op.binary.f32(i32 36, float %1114, float %1601)  ; FMin(a,b)
  %1802 = fsub fast float %1801, %1114
  %1803 = fmul fast float %1802, %1776
  %1804 = fadd fast float %1803, %1114
  %1805 = fadd fast float %1598, %1113
  %1806 = fmul fast float %1805, 0x3FF337FAE0000000
  %1807 = fmul fast float %1113, %1113
  %1808 = fmul fast float %1598, %1598
  %1809 = fadd fast float %1808, %1807
  %1810 = fmul fast float %1809, 0x3FE5152B00000000
  %1811 = fmul fast float %1113, 0xBFCC1F85E0000000
  %1812 = fmul fast float %1811, %1598
  %1813 = fadd fast float %1812, 0xBFE1363700000000
  %1814 = fadd fast float %1813, %1806
  %1815 = fsub fast float %1814, %1810
  %1816 = fmul fast float %1805, 0x3FBA6F0D00000000
  %1817 = fmul fast float %1809, 0x3FD0432880000000
  %1818 = fmul fast float %1113, 0xBFEF110800000000
  %1819 = fmul fast float %1818, %1598
  %1820 = fadd fast float %1819, 1.000000e+00
  %1821 = fsub fast float %1820, %1816
  %1822 = fadd fast float %1821, %1817
  %1823 = fdiv fast float %1815, %1822
  %1824 = call float @dx.op.unary.f32(i32 7, float %1823)  ; Saturate(value)
  %1825 = fsub fast float %1824, %1113
  %1826 = fmul fast float %1825, %1779
  %1827 = fadd fast float %1826, %1113
  br label %1842

; <label>:1828                                    ; preds = %1794
  %1829 = icmp eq i32 %1768, 8
  br i1 %1829, label %1830, label %1842

; <label>:1830                                    ; preds = %1828
  %1831 = fmul fast float %1773, %1599
  %1832 = fmul fast float %1773, %1600
  %1833 = fadd fast float %1831, %1103
  %1834 = fadd fast float %1832, %1104
  %1835 = call float @dx.op.binary.f32(i32 36, float %1114, float %1601)  ; FMin(a,b)
  %1836 = fsub fast float %1835, %1114
  %1837 = fmul fast float %1836, %1776
  %1838 = fadd fast float %1837, %1114
  %1839 = fsub fast float %1598, %1113
  %1840 = fmul fast float %1779, %1839
  %1841 = fadd fast float %1840, %1113
  br label %1842

; <label>:1842                                    ; preds = %1830, %1828, %1796, %1781, %1759, %1297, %1116, %1102
  %1843 = phi float [ %1103, %1759 ], [ %1103, %1297 ], [ %1103, %1102 ], [ %1833, %1830 ], [ %1103, %1828 ], [ %1799, %1796 ], [ %1786, %1781 ], [ %1103, %1116 ]
  %1844 = phi float [ %1104, %1759 ], [ %1104, %1297 ], [ %1104, %1102 ], [ %1834, %1830 ], [ %1104, %1828 ], [ %1800, %1796 ], [ %1787, %1781 ], [ %1104, %1116 ]
  %1845 = phi float [ %1760, %1759 ], [ %1105, %1297 ], [ %1105, %1102 ], [ %1760, %1830 ], [ %1760, %1828 ], [ %1760, %1796 ], [ %1760, %1781 ], [ %1105, %1116 ]
  %1846 = phi float [ %1761, %1759 ], [ %1106, %1297 ], [ %1106, %1102 ], [ %1761, %1830 ], [ %1761, %1828 ], [ %1761, %1796 ], [ %1761, %1781 ], [ %1106, %1116 ]
  %1847 = phi float [ %1762, %1759 ], [ %1107, %1297 ], [ %1107, %1102 ], [ %1762, %1830 ], [ %1762, %1828 ], [ %1762, %1796 ], [ %1762, %1781 ], [ %1107, %1116 ]
  %1848 = phi float [ %1763, %1759 ], [ %1108, %1297 ], [ %1108, %1102 ], [ %1763, %1830 ], [ %1763, %1828 ], [ %1763, %1796 ], [ %1763, %1781 ], [ %1108, %1116 ]
  %1849 = phi float [ %1764, %1759 ], [ %1109, %1297 ], [ %1109, %1102 ], [ %1764, %1830 ], [ %1764, %1828 ], [ %1764, %1796 ], [ %1764, %1781 ], [ %1109, %1116 ]
  %1850 = phi float [ %1765, %1759 ], [ %1110, %1297 ], [ %1110, %1102 ], [ %1765, %1830 ], [ %1765, %1828 ], [ %1765, %1796 ], [ %1765, %1781 ], [ %1110, %1116 ]
  %1851 = phi float [ %1766, %1759 ], [ %1111, %1297 ], [ %1111, %1102 ], [ %1766, %1830 ], [ %1766, %1828 ], [ %1766, %1796 ], [ %1766, %1781 ], [ %1111, %1116 ]
  %1852 = phi float [ %1113, %1759 ], [ %1113, %1297 ], [ %1113, %1102 ], [ %1841, %1830 ], [ %1113, %1828 ], [ %1827, %1796 ], [ %1793, %1781 ], [ %1113, %1116 ]
  %1853 = phi float [ %1114, %1759 ], [ %1114, %1297 ], [ %1114, %1102 ], [ %1838, %1830 ], [ %1114, %1828 ], [ %1804, %1796 ], [ %1790, %1781 ], [ %1114, %1116 ]
  %1854 = phi float [ %1767, %1759 ], [ %1115, %1297 ], [ %1115, %1102 ], [ %1767, %1830 ], [ %1767, %1828 ], [ %1767, %1796 ], [ %1767, %1781 ], [ %1115, %1116 ]
  br i1 %582, label %2581, label %1855

; <label>:1855                                    ; preds = %1842
  %1856 = icmp ult i32 %635, 3
  %1857 = add i32 %28, 56
  %1858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %1859 = extractvalue %dx.types.ResRet.i32 %1858, 0
  %1860 = add i32 %28, 60
  %1861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1860, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.i32 %1861, 0
  %1863 = or i32 %1862, %1859
  %1864 = icmp eq i32 %1863, 0
  br i1 %1864, label %2581, label %1865

; <label>:1865                                    ; preds = %1855
  %1866 = and i32 %1859, 262144
  %1867 = icmp ne i32 %1866, 0
  %1868 = select i1 %1867, float %34, float 1.000000e+00
  %1869 = select i1 %1867, float %35, float 0.000000e+00
  %1870 = select i1 %1867, float %36, float 0.000000e+00
  %1871 = select i1 %1867, float %37, float 1.000000e+00
  %1872 = select i1 %1867, float %38, float %62
  %1873 = select i1 %1867, float %39, float %63
  %1874 = add i32 %28, 316
  %1875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1876 = extractvalue %dx.types.ResRet.i32 %1875, 0
  %1877 = lshr i32 %1876, 16
  %1878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1877)  ; LegacyF16ToF32(value)
  %1879 = fmul fast float %1878, 0x3F50624DE0000000
  %1880 = add i32 %28, 120
  %1881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %1882 = extractvalue %dx.types.ResRet.i32 %1881, 0
  %1883 = lshr i32 %1882, 16
  %1884 = and i32 %1883, 255
  %1885 = lshr i32 %1882, 24
  %1886 = add i32 %28, 324
  %1887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1888 = extractvalue %dx.types.ResRet.i32 %1887, 0
  %1889 = and i32 %1888, 65535
  %1890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1889)  ; LegacyF16ToF32(value)
  %1891 = lshr i32 %1888, 16
  %1892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1891)  ; LegacyF16ToF32(value)
  %1893 = add i32 %28, 64
  %1894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1895 = extractvalue %dx.types.ResRet.i32 %1894, 0
  %1896 = lshr i32 %1895, 22
  %1897 = shl nuw nsw i32 %1896, 5
  %1898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1897)  ; LegacyF16ToF32(value)
  %1899 = shl i32 %1895, 4
  %1900 = and i32 %1899, 32752
  %1901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1900)  ; LegacyF16ToF32(value)
  %1902 = lshr i32 %1895, 7
  %1903 = and i32 %1902, 32752
  %1904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1903)  ; LegacyF16ToF32(value)
  %1905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1906 = extractvalue %dx.types.CBufRet.f32 %1905, 3
  %1907 = fmul fast float %1906, 1.000000e+03
  %1908 = fmul fast float %1907, %466
  %1909 = call float @dx.op.unary.f32(i32 22, float %1908)  ; Frc(value)
  %1910 = fadd fast float %1909, %454
  %1911 = fmul fast float %1907, %468
  %1912 = call float @dx.op.unary.f32(i32 22, float %1911)  ; Frc(value)
  %1913 = fadd fast float %1912, %455
  %1914 = fmul fast float %1879, %1907
  %1915 = call float @dx.op.unary.f32(i32 22, float %1914)  ; Frc(value)
  %1916 = fmul fast float %1915, 0x401921FB60000000
  %1917 = fadd fast float %1916, %1898
  %1918 = call float @dx.op.unary.f32(i32 13, float %1917)  ; Sin(value)
  %1919 = call float @dx.op.unary.f32(i32 12, float %1917)  ; Cos(value)
  %1920 = fsub fast float -0.000000e+00, %1918
  %1921 = fadd fast float %1872, -5.000000e-01
  %1922 = fadd fast float %1873, -5.000000e-01
  %1923 = fmul fast float %1890, %1921
  %1924 = fmul fast float %1892, %1922
  %1925 = fadd fast float %1923, 5.000000e-01
  %1926 = fadd fast float %1924, 5.000000e-01
  %1927 = fmul fast float %1901, %1925
  %1928 = fmul fast float %1904, %1926
  %1929 = fmul fast float %1919, %1927
  %1930 = call float @dx.op.tertiary.f32(i32 46, float %1920, float %1928, float %1929)  ; FMad(a,b,c)
  %1931 = fmul fast float %1918, %1927
  %1932 = call float @dx.op.tertiary.f32(i32 46, float %1919, float %1928, float %1931)  ; FMad(a,b,c)
  %1933 = fadd fast float %1910, %1930
  %1934 = fadd fast float %1913, %1932
  %1935 = icmp ugt i32 %1884, 1
  %1936 = icmp ugt i32 %1882, 33554431
  %1937 = or i1 %1936, %1935
  br i1 %1937, label %1938, label %1963

; <label>:1938                                    ; preds = %1865
  %1939 = add i32 %28, 260
  %1940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1941 = extractvalue %dx.types.ResRet.i32 %1940, 0
  %1942 = lshr i32 %1941, 16
  %1943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1942)  ; LegacyF16ToF32(value)
  %1944 = fmul fast float %1906, %1943
  %1945 = call float @dx.op.unary.f32(i32 22, float %1944)  ; Frc(value)
  %1946 = mul nuw nsw i32 %1884, %1885
  %1947 = uitofp i32 %1946 to float
  %1948 = fmul fast float %1945, %1947
  %1949 = call float @dx.op.unary.f32(i32 27, float %1948)  ; Round_ni(value)
  %1950 = fptoui float %1949 to i32
  %1951 = urem i32 %1950, %1884
  %1952 = udiv i32 %1950, %1885
  %1953 = call float @dx.op.unary.f32(i32 22, float %1933)  ; Frc(value)
  %1954 = call float @dx.op.unary.f32(i32 22, float %1934)  ; Frc(value)
  %1955 = uitofp i32 %1951 to float
  %1956 = uitofp i32 %1952 to float
  %1957 = fadd fast float %1953, %1955
  %1958 = fadd fast float %1954, %1956
  %1959 = uitofp i32 %1884 to float
  %1960 = uitofp i32 %1885 to float
  %1961 = fdiv fast float %1957, %1959
  %1962 = fdiv fast float %1958, %1960
  br label %1963

; <label>:1963                                    ; preds = %1938, %1865
  %1964 = phi float [ %1961, %1938 ], [ %1933, %1865 ]
  %1965 = phi float [ %1962, %1938 ], [ %1934, %1865 ]
  %1966 = and i32 %1859, 256
  %1967 = icmp eq i32 %1966, 0
  br i1 %1967, label %2014, label %1968

; <label>:1968                                    ; preds = %1963
  %1969 = add i32 %28, 464
  %1970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.i32 %1970, 0
  %1972 = add i32 %1971, 0
  %1973 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1972, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1974 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1973, %dx.types.Handle %71, float %1964, float %1965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1975 = extractvalue %dx.types.ResRet.f32 %1974, 0
  %1976 = add i32 %28, 132
  %1977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.i32 %1977, 0
  %1979 = shl i32 %1978, 4
  %1980 = and i32 %1979, 32752
  %1981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1980)  ; LegacyF16ToF32(value)
  %1982 = lshr i32 %1978, 7
  %1983 = and i32 %1982, 32752
  %1984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1983)  ; LegacyF16ToF32(value)
  %1985 = fsub fast float 1.000000e+00, %631
  %1986 = call float @dx.op.binary.f32(i32 35, float %1985, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1987 = bitcast float %631 to i32
  %1988 = sitofp i32 %1987 to float
  %1989 = fadd fast float %1988, 0xC1CFBF8940000000
  %1990 = fmul fast float %1984, %1989
  %1991 = fadd fast float %1990, 0x41CFBF8940000000
  %1992 = fptosi float %1991 to i32
  %1993 = bitcast i32 %1992 to float
  %1994 = bitcast float %1986 to i32
  %1995 = sitofp i32 %1994 to float
  %1996 = fadd fast float %1995, 0xC1CFBF8940000000
  %1997 = fmul fast float %1996, %1984
  %1998 = fadd fast float %1997, 0x41CFBF8940000000
  %1999 = fptosi float %1998 to i32
  %2000 = bitcast i32 %1999 to float
  %2001 = fmul fast float %1993, %1981
  %2002 = fmul fast float %2000, %1981
  %2003 = fsub fast float %1986, %2001
  %2004 = fadd fast float %2002, %1986
  %2005 = call float @dx.op.unary.f32(i32 7, float %2003)  ; Saturate(value)
  %2006 = call float @dx.op.unary.f32(i32 7, float %2004)  ; Saturate(value)
  %2007 = fsub fast float %1975, %2005
  %2008 = fsub fast float %2006, %2005
  %2009 = bitcast float %2008 to i32
  %2010 = sub nsw i32 2129859010, %2009
  %2011 = bitcast i32 %2010 to float
  %2012 = fmul fast float %2011, %2007
  %2013 = call float @dx.op.unary.f32(i32 7, float %2012)  ; Saturate(value)
  br label %2014

; <label>:2014                                    ; preds = %1968, %1963
  %2015 = phi float [ %2013, %1968 ], [ %631, %1963 ]
  %2016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.i32 %2016, 0
  %2018 = and i32 %2017, 128
  %2019 = icmp eq i32 %2018, 0
  br i1 %2019, label %2036, label %2020

; <label>:2020                                    ; preds = %2014
  %2021 = add i32 %28, 448
  %2022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2021, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.i32 %2022, 0
  %2024 = add i32 %2023, 0
  %2025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2024, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2026 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2025, %dx.types.Handle %71, float %1964, float %1965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2027 = extractvalue %dx.types.ResRet.f32 %2026, 0
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = and i32 %2029, 524288
  %2031 = icmp ne i32 %2030, 0
  %2032 = fcmp fast ogt float %2027, 0x3FE0101020000000
  %2033 = select i1 %2032, float 1.000000e+00, float 0.000000e+00
  %2034 = select i1 %2031, float %2033, float %2027
  %2035 = fmul fast float %2034, %2015
  br label %2036

; <label>:2036                                    ; preds = %2020, %2014
  %2037 = phi float [ %2035, %2020 ], [ %2015, %2014 ]
  %2038 = fcmp fast ult float %2037, 0x3F70101020000000
  br i1 %2038, label %2581, label %2039

; <label>:2039                                    ; preds = %2036
  %2040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.i32 %2040, 0
  %2042 = and i32 %2041, 16
  %2043 = icmp eq i32 %2042, 0
  br i1 %2043, label %2242, label %2044

; <label>:2044                                    ; preds = %2039
  %2045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2046 = extractvalue %dx.types.ResRet.i32 %2045, 0
  %2047 = add i32 %28, 400
  %2048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2047, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.i32 %2048, 0
  %2050 = add i32 %2049, 0
  %2051 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2050, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2052 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2051, %dx.types.Handle %70, float %1964, float %1965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2053 = extractvalue %dx.types.ResRet.f32 %2052, 0
  %2054 = extractvalue %dx.types.ResRet.f32 %2052, 1
  %2055 = extractvalue %dx.types.ResRet.f32 %2052, 2
  %2056 = extractvalue %dx.types.ResRet.f32 %2052, 3
  %2057 = and i32 %2046, 255
  %2058 = uitofp i32 %2057 to float
  %2059 = lshr i32 %2046, 8
  %2060 = and i32 %2059, 255
  %2061 = uitofp i32 %2060 to float
  %2062 = fmul fast float %2056, %2058
  %2063 = fadd fast float %2062, %2061
  %2064 = fmul fast float %2063, 0x3F70101000000000
  %2065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2066 = extractvalue %dx.types.ResRet.i32 %2065, 0
  %2067 = and i32 %2066, 512
  %2068 = icmp eq i32 %2067, 0
  br i1 %2068, label %2077, label %2069

; <label>:2069                                    ; preds = %2044
  %2070 = add i32 %28, 480
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2070, i32 undef)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = add i32 %2072, 0
  %2074 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2073, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2075 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2074, %dx.types.Handle %71, float %1964, float %1965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2076 = extractvalue %dx.types.ResRet.f32 %2075, 0
  br label %2077

; <label>:2077                                    ; preds = %2069, %2044
  %2078 = phi float [ %2076, %2069 ], [ 1.000000e+00, %2044 ]
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = and i32 %2080, 33554432
  %2082 = icmp eq i32 %2081, 0
  br i1 %2082, label %2189, label %2083

; <label>:2083                                    ; preds = %2077
  %2084 = add i32 %28, 256
  %2085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2084, i32 undef)  ; BufferLoad(srv,index,wot)
  %2086 = extractvalue %dx.types.ResRet.i32 %2085, 0
  %2087 = and i32 %2086, 65535
  %2088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2087)  ; LegacyF16ToF32(value)
  %2089 = lshr i32 %2086, 16
  %2090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2089)  ; LegacyF16ToF32(value)
  %2091 = add i32 %28, 260
  %2092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.i32 %2092, 0
  %2094 = and i32 %2093, 65535
  %2095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2094)  ; LegacyF16ToF32(value)
  %2096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2112 = add i32 %28, 252
  %2113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2112, i32 undef)  ; BufferLoad(srv,index,wot)
  %2114 = extractvalue %dx.types.ResRet.i32 %2113, 0
  %2115 = lshr i32 %2114, 24
  %2116 = uitofp i32 %2115 to float
  %2117 = fmul fast float %2116, 0x3F70101020000000
  %2118 = and i32 %2114, 255
  %2119 = uitofp i32 %2118 to float
  %2120 = fmul fast float %2119, 0x3F70101020000000
  %2121 = lshr i32 %2114, 8
  %2122 = and i32 %2121, 255
  %2123 = uitofp i32 %2122 to float
  %2124 = fmul fast float %2123, 0x3F70101020000000
  %2125 = lshr i32 %2114, 16
  %2126 = and i32 %2125, 255
  %2127 = uitofp i32 %2126 to float
  %2128 = fmul fast float %2127, 0x3F70101020000000
  %2129 = bitcast float %2053 to i32
  %2130 = ashr i32 %2129, 1
  %2131 = sub nsw i32 1597463174, %2130
  %2132 = bitcast i32 %2131 to float
  %2133 = fmul fast float %2053, 5.000000e-01
  %2134 = fmul fast float %2132, %2132
  %2135 = fmul fast float %2134, %2133
  %2136 = fsub fast float 1.500000e+00, %2135
  %2137 = fmul fast float %2132, %2053
  %2138 = fmul fast float %2137, %2136
  %2139 = bitcast float %2054 to i32
  %2140 = ashr i32 %2139, 1
  %2141 = sub nsw i32 1597463174, %2140
  %2142 = bitcast i32 %2141 to float
  %2143 = fmul fast float %2054, 5.000000e-01
  %2144 = fmul fast float %2142, %2142
  %2145 = fmul fast float %2144, %2143
  %2146 = fsub fast float 1.500000e+00, %2145
  %2147 = fmul fast float %2142, %2054
  %2148 = fmul fast float %2147, %2146
  %2149 = bitcast float %2055 to i32
  %2150 = ashr i32 %2149, 1
  %2151 = sub nsw i32 1597463174, %2150
  %2152 = bitcast i32 %2151 to float
  %2153 = fmul fast float %2055, 5.000000e-01
  %2154 = fmul fast float %2152, %2152
  %2155 = fmul fast float %2154, %2153
  %2156 = fsub fast float 1.500000e+00, %2155
  %2157 = fmul fast float %2152, %2055
  %2158 = fmul fast float %2157, %2156
  %2159 = fsub fast float %2138, %2120
  %2160 = fsub fast float %2148, %2124
  %2161 = fsub fast float %2158, %2128
  %2162 = fmul fast float %2159, %2088
  %2163 = fmul fast float %2160, %2090
  %2164 = fmul fast float %2161, %2095
  %2165 = fadd fast float %2162, %2103
  %2166 = fadd fast float %2163, %2107
  %2167 = fadd fast float %2164, %2111
  %2168 = call float @dx.op.unary.f32(i32 7, float %2165)  ; Saturate(value)
  %2169 = call float @dx.op.unary.f32(i32 7, float %2166)  ; Saturate(value)
  %2170 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2171 = fmul fast float %2168, %2168
  %2172 = fmul fast float %2169, %2169
  %2173 = fmul fast float %2170, %2170
  %2174 = fsub fast float %2171, %2053
  %2175 = fsub fast float %2172, %2054
  %2176 = fsub fast float %2173, %2055
  %2177 = fmul fast float %2174, %2078
  %2178 = fmul fast float %2175, %2078
  %2179 = fmul fast float %2176, %2078
  %2180 = fadd fast float %2177, %2053
  %2181 = fadd fast float %2178, %2054
  %2182 = fadd fast float %2179, %2055
  %2183 = fadd fast float %2100, %2064
  %2184 = fsub fast float %2183, %2117
  %2185 = call float @dx.op.unary.f32(i32 7, float %2184)  ; Saturate(value)
  %2186 = fsub fast float %2185, %2064
  %2187 = fmul fast float %2186, %2078
  %2188 = fadd fast float %2187, %2064
  br label %2242

; <label>:2189                                    ; preds = %2077
  %2190 = and i32 %2080, 134217728
  %2191 = icmp eq i32 %2190, 0
  br i1 %2191, label %2226, label %2192

; <label>:2192                                    ; preds = %2189
  %2193 = call float @dx.op.unary.f32(i32 24, float %442)  ; Sqrt(value)
  %2194 = call float @dx.op.unary.f32(i32 24, float %443)  ; Sqrt(value)
  %2195 = call float @dx.op.unary.f32(i32 24, float %444)  ; Sqrt(value)
  %2196 = fadd fast float %2193, -5.000000e-01
  %2197 = fadd fast float %2194, -5.000000e-01
  %2198 = fadd fast float %2195, -5.000000e-01
  %2199 = fmul fast float %2196, %2078
  %2200 = fmul fast float %2197, %2078
  %2201 = fmul fast float %2198, %2078
  %2202 = fadd fast float %2199, 5.000000e-01
  %2203 = fadd fast float %2200, 5.000000e-01
  %2204 = fadd fast float %2201, 5.000000e-01
  %2205 = call float @dx.op.unary.f32(i32 24, float %2053)  ; Sqrt(value)
  %2206 = call float @dx.op.unary.f32(i32 24, float %2054)  ; Sqrt(value)
  %2207 = call float @dx.op.unary.f32(i32 24, float %2055)  ; Sqrt(value)
  %2208 = fmul fast float %2202, 2.000000e+00
  %2209 = fsub fast float 1.000000e+00, %2208
  %2210 = fmul fast float %2209, %2205
  %2211 = fadd fast float %2210, %2208
  %2212 = fmul fast float %2211, %2205
  %2213 = fmul fast float %2203, 2.000000e+00
  %2214 = fsub fast float 1.000000e+00, %2213
  %2215 = fmul fast float %2214, %2206
  %2216 = fadd fast float %2215, %2213
  %2217 = fmul fast float %2216, %2206
  %2218 = fmul fast float %2204, 2.000000e+00
  %2219 = fsub fast float 1.000000e+00, %2218
  %2220 = fmul fast float %2219, %2207
  %2221 = fadd fast float %2220, %2218
  %2222 = fmul fast float %2221, %2207
  %2223 = fmul fast float %2212, %2212
  %2224 = fmul fast float %2217, %2217
  %2225 = fmul fast float %2222, %2222
  br label %2242

; <label>:2226                                    ; preds = %2189
  %2227 = fmul fast float %442, %442
  %2228 = fmul fast float %443, %443
  %2229 = fmul fast float %444, %444
  %2230 = fadd fast float %2227, -1.000000e+00
  %2231 = fadd fast float %2228, -1.000000e+00
  %2232 = fadd fast float %2229, -1.000000e+00
  %2233 = fmul fast float %2078, %2230
  %2234 = fmul fast float %2078, %2231
  %2235 = fmul fast float %2078, %2232
  %2236 = fadd fast float %2233, 1.000000e+00
  %2237 = fadd fast float %2234, 1.000000e+00
  %2238 = fadd fast float %2235, 1.000000e+00
  %2239 = fmul fast float %2236, %2053
  %2240 = fmul fast float %2237, %2054
  %2241 = fmul fast float %2238, %2055
  br label %2242

; <label>:2242                                    ; preds = %2226, %2192, %2083, %2039
  %2243 = phi float [ %2188, %2083 ], [ %2064, %2192 ], [ %2064, %2226 ], [ 0x3FA23C0BE0000000, %2039 ]
  %2244 = phi float [ %2180, %2083 ], [ %2223, %2192 ], [ %2239, %2226 ], [ 1.000000e+00, %2039 ]
  %2245 = phi float [ %2181, %2083 ], [ %2224, %2192 ], [ %2240, %2226 ], [ 1.000000e+00, %2039 ]
  %2246 = phi float [ %2182, %2083 ], [ %2225, %2192 ], [ %2241, %2226 ], [ 1.000000e+00, %2039 ]
  %2247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2248 = extractvalue %dx.types.CBufRet.i32 %2247, 1
  %2249 = and i32 %2248, 1
  %2250 = icmp ne i32 %2249, 0
  %2251 = add i32 %28, 356
  %2252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2251, i32 undef)  ; BufferLoad(srv,index,wot)
  %2253 = extractvalue %dx.types.ResRet.i32 %2252, 0
  %2254 = and i32 %2253, 32
  %2255 = icmp ne i32 %2254, 0
  %2256 = and i1 %2250, %2255
  %2257 = select i1 %2256, float 1.000000e+00, float %2244
  %2258 = select i1 %2256, float 0x3FD3333340000000, float %2245
  %2259 = select i1 %2256, float 0x3FD3333340000000, float %2246
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = and i32 %2261, 32
  %2263 = icmp eq i32 %2262, 0
  br i1 %2263, label %2336, label %2264

; <label>:2264                                    ; preds = %2242
  %2265 = add i32 %28, 124
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = add i32 %28, 416
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = add i32 %2270, 0
  %2272 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2271, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2273 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2272, %dx.types.Handle %70, float %1964, float %1965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2274 = extractvalue %dx.types.ResRet.f32 %2273, 0
  %2275 = extractvalue %dx.types.ResRet.f32 %2273, 1
  %2276 = extractvalue %dx.types.ResRet.f32 %2273, 2
  %2277 = extractvalue %dx.types.ResRet.f32 %2273, 3
  %2278 = and i32 %2267, 255
  %2279 = uitofp i32 %2278 to float
  %2280 = lshr i32 %2267, 8
  %2281 = and i32 %2280, 255
  %2282 = uitofp i32 %2281 to float
  %2283 = lshr i32 %2267, 16
  %2284 = and i32 %2283, 255
  %2285 = uitofp i32 %2284 to float
  %2286 = fmul fast float %2285, 0x3F70101000000000
  %2287 = fmul fast float %2274, %2279
  %2288 = fadd fast float %2287, %2282
  %2289 = fmul fast float %2288, 0x3F70101000000000
  %2290 = fadd fast float %2275, -5.000000e-01
  %2291 = fadd fast float %2277, -5.000000e-01
  %2292 = fmul fast float %2290, %2286
  %2293 = fmul fast float %2291, %2286
  %2294 = fadd fast float %2292, 5.000000e-01
  %2295 = fadd fast float %2293, 5.000000e-01
  %2296 = fmul fast float %2294, 2.000000e+00
  %2297 = fadd fast float %2296, -1.000000e+00
  %2298 = fmul fast float %2295, 2.000000e+00
  %2299 = fadd fast float %2298, -1.000000e+00
  %2300 = fadd fast float %2297, %2299
  %2301 = fmul fast float %2300, 5.000000e-01
  %2302 = fsub fast float %2297, %2299
  %2303 = fmul fast float %2302, 5.000000e-01
  %2304 = call float @dx.op.unary.f32(i32 6, float %2301)  ; FAbs(value)
  %2305 = fsub fast float 1.000000e+00, %2304
  %2306 = call float @dx.op.unary.f32(i32 6, float %2303)  ; FAbs(value)
  %2307 = fsub fast float %2305, %2306
  %2308 = call float @dx.op.dot3.f32(i32 55, float %2301, float %2303, float %2307, float %2301, float %2303, float %2307)  ; Dot3(ax,ay,az,bx,by,bz)
  %2309 = call float @dx.op.unary.f32(i32 25, float %2308)  ; Rsqrt(value)
  %2310 = fmul fast float %2301, %2309
  %2311 = fmul fast float %2303, %2309
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = and i32 %2313, 67108864
  %2315 = icmp eq i32 %2314, 0
  br i1 %2315, label %2332, label %2316

; <label>:2316                                    ; preds = %2264
  %2317 = add i32 %28, 312
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = and i32 %2319, 65535
  %2321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2320)  ; LegacyF16ToF32(value)
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = and i32 %2323, 65535
  %2325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2324)  ; LegacyF16ToF32(value)
  %2326 = lshr i32 %2319, 16
  %2327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2326)  ; LegacyF16ToF32(value)
  %2328 = fsub fast float %2289, %2327
  %2329 = fmul fast float %2328, %2321
  %2330 = fadd fast float %2329, %2325
  %2331 = call float @dx.op.unary.f32(i32 7, float %2330)  ; Saturate(value)
  br label %2332

; <label>:2332                                    ; preds = %2316, %2264
  %2333 = phi float [ %2331, %2316 ], [ %2289, %2264 ]
  %2334 = call float @dx.op.dot2.f32(i32 54, float %2310, float %2311, float %1868, float %1869)  ; Dot2(ax,ay,bx,by)
  %2335 = call float @dx.op.dot2.f32(i32 54, float %2310, float %2311, float %1870, float %1871)  ; Dot2(ax,ay,bx,by)
  br label %2336

; <label>:2336                                    ; preds = %2332, %2242
  %2337 = phi float [ %2333, %2332 ], [ 0x3FD6666660000000, %2242 ]
  %2338 = phi float [ %2334, %2332 ], [ 0.000000e+00, %2242 ]
  %2339 = phi float [ %2335, %2332 ], [ 0.000000e+00, %2242 ]
  %2340 = phi float [ %2276, %2332 ], [ 1.000000e+00, %2242 ]
  %2341 = add i32 %28, 192
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = lshr i32 %2343, 22
  %2345 = shl nuw nsw i32 %2344, 5
  %2346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2345)  ; LegacyF16ToF32(value)
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = and i32 %2348, 64
  %2350 = icmp eq i32 %2349, 0
  br i1 %2350, label %2384, label %2351

; <label>:2351                                    ; preds = %2336
  %2352 = add i32 %28, 432
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2352, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = add i32 %2354, 0
  %2356 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2355, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2358 = extractvalue %dx.types.ResRet.i32 %2357, 0
  %2359 = and i32 %2358, 131072
  %2360 = icmp eq i32 %2359, 0
  %2361 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2356, %dx.types.Handle %70, float %1964, float %1965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2362 = extractvalue %dx.types.ResRet.f32 %2361, 0
  %2363 = extractvalue %dx.types.ResRet.f32 %2361, 1
  %2364 = extractvalue %dx.types.ResRet.f32 %2361, 2
  %2365 = fmul fast float %425, %2362
  %2366 = fmul fast float %426, %2363
  %2367 = fmul fast float %427, %2364
  br i1 %2360, label %2374, label %2368

; <label>:2368                                    ; preds = %2351
  %2369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2370 = extractvalue %dx.types.CBufRet.f32 %2369, 0
  %2371 = fmul fast float %2370, %2365
  %2372 = fmul fast float %2370, %2366
  %2373 = fmul fast float %2370, %2367
  br label %2374

; <label>:2374                                    ; preds = %2368, %2351
  %2375 = phi float [ %2371, %2368 ], [ %2365, %2351 ]
  %2376 = phi float [ %2372, %2368 ], [ %2366, %2351 ]
  %2377 = phi float [ %2373, %2368 ], [ %2367, %2351 ]
  %2378 = fmul fast float %2375, %2346
  %2379 = select i1 %200, float %2378, float %2375
  %2380 = call float @dx.op.dot3.f32(i32 55, float %2379, float %2376, float %2377, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2381 = select i1 %200, float 0.000000e+00, float %2375
  %2382 = select i1 %200, float %2380, float %2376
  %2383 = select i1 %200, float 0.000000e+00, float %2377
  br label %2384

; <label>:2384                                    ; preds = %2374, %2336
  %2385 = phi float [ %2381, %2374 ], [ 0.000000e+00, %2336 ]
  %2386 = phi float [ %2382, %2374 ], [ 0.000000e+00, %2336 ]
  %2387 = phi float [ %2383, %2374 ], [ 0.000000e+00, %2336 ]
  %2388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.i32 %2388, 0
  %2390 = add i32 %28, 128
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = and i32 %2392, 255
  %2394 = uitofp i32 %2393 to float
  %2395 = lshr i32 %2392, 8
  %2396 = and i32 %2395, 255
  %2397 = uitofp i32 %2396 to float
  %2398 = call float @dx.op.dot3.f32(i32 55, float %2257, float %2258, float %2259, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2399 = fmul fast float %2397, %2398
  %2400 = fadd fast float %2399, %2394
  %2401 = fmul fast float %2400, 0x3F70101020000000
  %2402 = call float @dx.op.unary.f32(i32 7, float %2401)  ; Saturate(value)
  br i1 %1856, label %2403, label %2411

; <label>:2403                                    ; preds = %2384
  %2404 = fsub fast float 1.000000e+00, %2037
  %2405 = fmul fast float %2404, %1845
  %2406 = fmul fast float %2404, %1846
  %2407 = fmul fast float %2404, %1847
  %2408 = fmul fast float %2404, %1848
  %2409 = fmul fast float %2404, %1849
  %2410 = fmul fast float %2404, %1850
  br label %2411

; <label>:2411                                    ; preds = %2403, %2384
  %2412 = phi float [ %2405, %2403 ], [ %1845, %2384 ]
  %2413 = phi float [ %2406, %2403 ], [ %1846, %2384 ]
  %2414 = phi float [ %2407, %2403 ], [ %1847, %2384 ]
  %2415 = phi float [ %2408, %2403 ], [ %1848, %2384 ]
  %2416 = phi float [ %2409, %2403 ], [ %1849, %2384 ]
  %2417 = phi float [ %2410, %2403 ], [ %1850, %2384 ]
  %2418 = and i32 %2389, 3
  %2419 = icmp eq i32 %2418, 3
  br i1 %2419, label %2498, label %2420

; <label>:2420                                    ; preds = %2411
  %2421 = and i32 %2389, 16
  %2422 = icmp ne i32 %2421, 0
  %2423 = select i1 %2422, float %2037, float 0.000000e+00
  %2424 = icmp eq i32 %2418, 0
  br i1 %2424, label %2425, label %2453

; <label>:2425                                    ; preds = %2420
  %2426 = and i32 %2389, 64
  %2427 = icmp ne i32 %2426, 0
  %2428 = select i1 %2427, float %2037, float 0.000000e+00
  %2429 = fsub fast float %2257, %2412
  %2430 = fsub fast float %2258, %2413
  %2431 = fsub fast float %2259, %2414
  %2432 = fmul fast float %2423, %2429
  %2433 = fmul fast float %2423, %2430
  %2434 = fmul fast float %2423, %2431
  %2435 = fadd fast float %2432, %2412
  %2436 = fadd fast float %2433, %2413
  %2437 = fadd fast float %2434, %2414
  %2438 = fsub fast float %2243, %1851
  %2439 = fmul fast float %2423, %2438
  %2440 = fadd fast float %2439, %1851
  %2441 = fsub fast float %2385, %2415
  %2442 = fsub fast float %2386, %2416
  %2443 = fsub fast float %2387, %2417
  %2444 = fmul fast float %2428, %2441
  %2445 = fmul fast float %2428, %2442
  %2446 = fmul fast float %2428, %2443
  %2447 = fadd fast float %2444, %2415
  %2448 = fadd fast float %2445, %2416
  %2449 = fadd fast float %2446, %2417
  %2450 = fsub fast float %2402, %1854
  %2451 = fmul fast float %2423, %2450
  %2452 = fadd fast float %2451, %1854
  br label %2498

; <label>:2453                                    ; preds = %2420
  %2454 = icmp eq i32 %2418, 1
  br i1 %2454, label %2455, label %2468

; <label>:2455                                    ; preds = %2453
  %2456 = fadd fast float %2257, -1.000000e+00
  %2457 = fadd fast float %2258, -1.000000e+00
  %2458 = fadd fast float %2259, -1.000000e+00
  %2459 = fmul fast float %2423, %2456
  %2460 = fmul fast float %2423, %2457
  %2461 = fmul fast float %2423, %2458
  %2462 = fadd fast float %2459, 1.000000e+00
  %2463 = fadd fast float %2460, 1.000000e+00
  %2464 = fadd fast float %2461, 1.000000e+00
  %2465 = fmul fast float %2462, %2412
  %2466 = fmul fast float %2463, %2413
  %2467 = fmul fast float %2464, %2414
  br label %2498

; <label>:2468                                    ; preds = %2453
  %2469 = icmp eq i32 %2418, 2
  br i1 %2469, label %2470, label %2498

; <label>:2470                                    ; preds = %2468
  %2471 = call float @dx.op.unary.f32(i32 24, float %2257)  ; Sqrt(value)
  %2472 = call float @dx.op.unary.f32(i32 24, float %2258)  ; Sqrt(value)
  %2473 = call float @dx.op.unary.f32(i32 24, float %2259)  ; Sqrt(value)
  %2474 = fadd fast float %2471, -5.000000e-01
  %2475 = fadd fast float %2472, -5.000000e-01
  %2476 = fadd fast float %2473, -5.000000e-01
  %2477 = fmul fast float %2474, %2423
  %2478 = fmul fast float %2475, %2423
  %2479 = fmul fast float %2476, %2423
  %2480 = fadd fast float %2477, 5.000000e-01
  %2481 = fadd fast float %2478, 5.000000e-01
  %2482 = fadd fast float %2479, 5.000000e-01
  %2483 = fmul fast float %2480, 2.000000e+00
  %2484 = fsub fast float 1.000000e+00, %2483
  %2485 = fmul fast float %2484, %2412
  %2486 = fadd fast float %2485, %2483
  %2487 = fmul fast float %2486, %2412
  %2488 = fmul fast float %2481, 2.000000e+00
  %2489 = fsub fast float 1.000000e+00, %2488
  %2490 = fmul fast float %2489, %2413
  %2491 = fadd fast float %2490, %2488
  %2492 = fmul fast float %2491, %2413
  %2493 = fmul fast float %2482, 2.000000e+00
  %2494 = fsub fast float 1.000000e+00, %2493
  %2495 = fmul fast float %2494, %2414
  %2496 = fadd fast float %2495, %2493
  %2497 = fmul fast float %2496, %2414
  br label %2498

; <label>:2498                                    ; preds = %2470, %2468, %2455, %2425, %2411
  %2499 = phi float [ %2412, %2411 ], [ %2487, %2470 ], [ %2412, %2468 ], [ %2465, %2455 ], [ %2435, %2425 ]
  %2500 = phi float [ %2413, %2411 ], [ %2492, %2470 ], [ %2413, %2468 ], [ %2466, %2455 ], [ %2436, %2425 ]
  %2501 = phi float [ %2414, %2411 ], [ %2497, %2470 ], [ %2414, %2468 ], [ %2467, %2455 ], [ %2437, %2425 ]
  %2502 = phi float [ %2415, %2411 ], [ %2415, %2470 ], [ %2415, %2468 ], [ %2415, %2455 ], [ %2447, %2425 ]
  %2503 = phi float [ %2416, %2411 ], [ %2416, %2470 ], [ %2416, %2468 ], [ %2416, %2455 ], [ %2448, %2425 ]
  %2504 = phi float [ %2417, %2411 ], [ %2417, %2470 ], [ %2417, %2468 ], [ %2417, %2455 ], [ %2449, %2425 ]
  %2505 = phi float [ %1851, %2411 ], [ %1851, %2470 ], [ %1851, %2468 ], [ %1851, %2455 ], [ %2440, %2425 ]
  %2506 = phi float [ %1854, %2411 ], [ %1854, %2470 ], [ %1854, %2468 ], [ %1854, %2455 ], [ %2452, %2425 ]
  %2507 = and i32 %2389, 12
  %2508 = icmp eq i32 %2507, 12
  br i1 %2508, label %2581, label %2509

; <label>:2509                                    ; preds = %2498
  %2510 = and i32 %2389, 2097184
  %2511 = icmp eq i32 %2510, 2097184
  %2512 = select i1 %2511, float %2037, float 0.000000e+00
  %2513 = and i32 %2389, 4194336
  %2514 = icmp eq i32 %2513, 4194336
  %2515 = select i1 %2514, float %2037, float 0.000000e+00
  %2516 = and i32 %2389, 8388640
  %2517 = icmp eq i32 %2516, 8388640
  %2518 = select i1 %2517, float %2037, float 0.000000e+00
  %2519 = icmp eq i32 %2507, 0
  br i1 %2519, label %2520, label %2533

; <label>:2520                                    ; preds = %2509
  %2521 = fsub fast float %2338, %1843
  %2522 = fsub fast float %2339, %1844
  %2523 = fmul fast float %2512, %2521
  %2524 = fmul fast float %2512, %2522
  %2525 = fadd fast float %2523, %1843
  %2526 = fadd fast float %2524, %1844
  %2527 = fsub fast float %2340, %1853
  %2528 = fmul fast float %2515, %2527
  %2529 = fadd fast float %2528, %1853
  %2530 = fsub fast float %2337, %1852
  %2531 = fmul fast float %2518, %2530
  %2532 = fadd fast float %2531, %1852
  br label %2581

; <label>:2533                                    ; preds = %2509
  %2534 = icmp eq i32 %2507, 4
  br i1 %2534, label %2535, label %2567

; <label>:2535                                    ; preds = %2533
  %2536 = fmul fast float %2512, %2338
  %2537 = fmul fast float %2512, %2339
  %2538 = fadd fast float %2536, %1843
  %2539 = fadd fast float %2537, %1844
  %2540 = call float @dx.op.binary.f32(i32 36, float %1853, float %2340)  ; FMin(a,b)
  %2541 = fsub fast float %2540, %1853
  %2542 = fmul fast float %2541, %2515
  %2543 = fadd fast float %2542, %1853
  %2544 = fadd fast float %2337, %1852
  %2545 = fmul fast float %2544, 0x3FF337FAE0000000
  %2546 = fmul fast float %1852, %1852
  %2547 = fmul fast float %2337, %2337
  %2548 = fadd fast float %2547, %2546
  %2549 = fmul fast float %2548, 0x3FE5152B00000000
  %2550 = fmul fast float %1852, 0xBFCC1F85E0000000
  %2551 = fmul fast float %2550, %2337
  %2552 = fadd fast float %2551, 0xBFE1363700000000
  %2553 = fadd fast float %2552, %2545
  %2554 = fsub fast float %2553, %2549
  %2555 = fmul fast float %2544, 0x3FBA6F0D00000000
  %2556 = fmul fast float %2548, 0x3FD0432880000000
  %2557 = fmul fast float %1852, 0xBFEF110800000000
  %2558 = fmul fast float %2557, %2337
  %2559 = fadd fast float %2558, 1.000000e+00
  %2560 = fsub fast float %2559, %2555
  %2561 = fadd fast float %2560, %2556
  %2562 = fdiv fast float %2554, %2561
  %2563 = call float @dx.op.unary.f32(i32 7, float %2562)  ; Saturate(value)
  %2564 = fsub fast float %2563, %1852
  %2565 = fmul fast float %2564, %2518
  %2566 = fadd fast float %2565, %1852
  br label %2581

; <label>:2567                                    ; preds = %2533
  %2568 = icmp eq i32 %2507, 8
  br i1 %2568, label %2569, label %2581

; <label>:2569                                    ; preds = %2567
  %2570 = fmul fast float %2512, %2338
  %2571 = fmul fast float %2512, %2339
  %2572 = fadd fast float %2570, %1843
  %2573 = fadd fast float %2571, %1844
  %2574 = call float @dx.op.binary.f32(i32 36, float %1853, float %2340)  ; FMin(a,b)
  %2575 = fsub fast float %2574, %1853
  %2576 = fmul fast float %2575, %2515
  %2577 = fadd fast float %2576, %1853
  %2578 = fsub fast float %2337, %1852
  %2579 = fmul fast float %2518, %2578
  %2580 = fadd fast float %2579, %1852
  br label %2581

; <label>:2581                                    ; preds = %2569, %2567, %2535, %2520, %2498, %2036, %1855, %1842
  %2582 = phi float [ %1843, %2498 ], [ %1843, %2036 ], [ %1843, %1842 ], [ %2572, %2569 ], [ %1843, %2567 ], [ %2538, %2535 ], [ %2525, %2520 ], [ %1843, %1855 ]
  %2583 = phi float [ %1844, %2498 ], [ %1844, %2036 ], [ %1844, %1842 ], [ %2573, %2569 ], [ %1844, %2567 ], [ %2539, %2535 ], [ %2526, %2520 ], [ %1844, %1855 ]
  %2584 = phi float [ %2499, %2498 ], [ %1845, %2036 ], [ %1845, %1842 ], [ %2499, %2569 ], [ %2499, %2567 ], [ %2499, %2535 ], [ %2499, %2520 ], [ %1845, %1855 ]
  %2585 = phi float [ %2500, %2498 ], [ %1846, %2036 ], [ %1846, %1842 ], [ %2500, %2569 ], [ %2500, %2567 ], [ %2500, %2535 ], [ %2500, %2520 ], [ %1846, %1855 ]
  %2586 = phi float [ %2501, %2498 ], [ %1847, %2036 ], [ %1847, %1842 ], [ %2501, %2569 ], [ %2501, %2567 ], [ %2501, %2535 ], [ %2501, %2520 ], [ %1847, %1855 ]
  %2587 = phi float [ %2502, %2498 ], [ %1848, %2036 ], [ %1848, %1842 ], [ %2502, %2569 ], [ %2502, %2567 ], [ %2502, %2535 ], [ %2502, %2520 ], [ %1848, %1855 ]
  %2588 = phi float [ %2503, %2498 ], [ %1849, %2036 ], [ %1849, %1842 ], [ %2503, %2569 ], [ %2503, %2567 ], [ %2503, %2535 ], [ %2503, %2520 ], [ %1849, %1855 ]
  %2589 = phi float [ %2504, %2498 ], [ %1850, %2036 ], [ %1850, %1842 ], [ %2504, %2569 ], [ %2504, %2567 ], [ %2504, %2535 ], [ %2504, %2520 ], [ %1850, %1855 ]
  %2590 = phi float [ %2505, %2498 ], [ %1851, %2036 ], [ %1851, %1842 ], [ %2505, %2569 ], [ %2505, %2567 ], [ %2505, %2535 ], [ %2505, %2520 ], [ %1851, %1855 ]
  %2591 = phi float [ %1852, %2498 ], [ %1852, %2036 ], [ %1852, %1842 ], [ %2580, %2569 ], [ %1852, %2567 ], [ %2566, %2535 ], [ %2532, %2520 ], [ %1852, %1855 ]
  %2592 = phi float [ %1853, %2498 ], [ %1853, %2036 ], [ %1853, %1842 ], [ %2577, %2569 ], [ %1853, %2567 ], [ %2543, %2535 ], [ %2529, %2520 ], [ %1853, %1855 ]
  %2593 = phi float [ %2506, %2498 ], [ %1854, %2036 ], [ %1854, %1842 ], [ %2506, %2569 ], [ %2506, %2567 ], [ %2506, %2535 ], [ %2506, %2520 ], [ %1854, %1855 ]
  br i1 %584, label %3320, label %2594

; <label>:2594                                    ; preds = %2581
  %2595 = icmp ult i32 %635, 4
  %2596 = add i32 %28, 72
  %2597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2598 = extractvalue %dx.types.ResRet.i32 %2597, 0
  %2599 = add i32 %28, 76
  %2600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2599, i32 undef)  ; BufferLoad(srv,index,wot)
  %2601 = extractvalue %dx.types.ResRet.i32 %2600, 0
  %2602 = or i32 %2601, %2598
  %2603 = icmp eq i32 %2602, 0
  br i1 %2603, label %3320, label %2604

; <label>:2604                                    ; preds = %2594
  %2605 = and i32 %2598, 262144
  %2606 = icmp ne i32 %2605, 0
  %2607 = select i1 %2606, float %34, float 1.000000e+00
  %2608 = select i1 %2606, float %35, float 0.000000e+00
  %2609 = select i1 %2606, float %36, float 0.000000e+00
  %2610 = select i1 %2606, float %37, float 1.000000e+00
  %2611 = select i1 %2606, float %38, float %62
  %2612 = select i1 %2606, float %39, float %63
  %2613 = add i32 %28, 332
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2613, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = lshr i32 %2615, 16
  %2617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2616)  ; LegacyF16ToF32(value)
  %2618 = fmul fast float %2617, 0x3F50624DE0000000
  %2619 = add i32 %28, 136
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = lshr i32 %2621, 16
  %2623 = and i32 %2622, 255
  %2624 = lshr i32 %2621, 24
  %2625 = add i32 %28, 340
  %2626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2625, i32 undef)  ; BufferLoad(srv,index,wot)
  %2627 = extractvalue %dx.types.ResRet.i32 %2626, 0
  %2628 = and i32 %2627, 65535
  %2629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2628)  ; LegacyF16ToF32(value)
  %2630 = lshr i32 %2627, 16
  %2631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2630)  ; LegacyF16ToF32(value)
  %2632 = add i32 %28, 80
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2632, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = lshr i32 %2634, 22
  %2636 = shl nuw nsw i32 %2635, 5
  %2637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2636)  ; LegacyF16ToF32(value)
  %2638 = shl i32 %2634, 4
  %2639 = and i32 %2638, 32752
  %2640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2639)  ; LegacyF16ToF32(value)
  %2641 = lshr i32 %2634, 7
  %2642 = and i32 %2641, 32752
  %2643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2642)  ; LegacyF16ToF32(value)
  %2644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2645 = extractvalue %dx.types.CBufRet.f32 %2644, 3
  %2646 = fmul fast float %2645, 1.000000e+03
  %2647 = fmul fast float %2646, %573
  %2648 = call float @dx.op.unary.f32(i32 22, float %2647)  ; Frc(value)
  %2649 = fadd fast float %2648, %561
  %2650 = fmul fast float %2646, %575
  %2651 = call float @dx.op.unary.f32(i32 22, float %2650)  ; Frc(value)
  %2652 = fadd fast float %2651, %562
  %2653 = fmul fast float %2618, %2646
  %2654 = call float @dx.op.unary.f32(i32 22, float %2653)  ; Frc(value)
  %2655 = fmul fast float %2654, 0x401921FB60000000
  %2656 = fadd fast float %2655, %2637
  %2657 = call float @dx.op.unary.f32(i32 13, float %2656)  ; Sin(value)
  %2658 = call float @dx.op.unary.f32(i32 12, float %2656)  ; Cos(value)
  %2659 = fsub fast float -0.000000e+00, %2657
  %2660 = fadd fast float %2611, -5.000000e-01
  %2661 = fadd fast float %2612, -5.000000e-01
  %2662 = fmul fast float %2629, %2660
  %2663 = fmul fast float %2631, %2661
  %2664 = fadd fast float %2662, 5.000000e-01
  %2665 = fadd fast float %2663, 5.000000e-01
  %2666 = fmul fast float %2640, %2664
  %2667 = fmul fast float %2643, %2665
  %2668 = fmul fast float %2658, %2666
  %2669 = call float @dx.op.tertiary.f32(i32 46, float %2659, float %2667, float %2668)  ; FMad(a,b,c)
  %2670 = fmul fast float %2657, %2666
  %2671 = call float @dx.op.tertiary.f32(i32 46, float %2658, float %2667, float %2670)  ; FMad(a,b,c)
  %2672 = fadd fast float %2649, %2669
  %2673 = fadd fast float %2652, %2671
  %2674 = icmp ugt i32 %2623, 1
  %2675 = icmp ugt i32 %2621, 33554431
  %2676 = or i1 %2675, %2674
  br i1 %2676, label %2677, label %2702

; <label>:2677                                    ; preds = %2604
  %2678 = add i32 %28, 276
  %2679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2680 = extractvalue %dx.types.ResRet.i32 %2679, 0
  %2681 = lshr i32 %2680, 16
  %2682 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2681)  ; LegacyF16ToF32(value)
  %2683 = fmul fast float %2645, %2682
  %2684 = call float @dx.op.unary.f32(i32 22, float %2683)  ; Frc(value)
  %2685 = mul nuw nsw i32 %2623, %2624
  %2686 = uitofp i32 %2685 to float
  %2687 = fmul fast float %2684, %2686
  %2688 = call float @dx.op.unary.f32(i32 27, float %2687)  ; Round_ni(value)
  %2689 = fptoui float %2688 to i32
  %2690 = urem i32 %2689, %2623
  %2691 = udiv i32 %2689, %2624
  %2692 = call float @dx.op.unary.f32(i32 22, float %2672)  ; Frc(value)
  %2693 = call float @dx.op.unary.f32(i32 22, float %2673)  ; Frc(value)
  %2694 = uitofp i32 %2690 to float
  %2695 = uitofp i32 %2691 to float
  %2696 = fadd fast float %2692, %2694
  %2697 = fadd fast float %2693, %2695
  %2698 = uitofp i32 %2623 to float
  %2699 = uitofp i32 %2624 to float
  %2700 = fdiv fast float %2696, %2698
  %2701 = fdiv fast float %2697, %2699
  br label %2702

; <label>:2702                                    ; preds = %2677, %2604
  %2703 = phi float [ %2700, %2677 ], [ %2672, %2604 ]
  %2704 = phi float [ %2701, %2677 ], [ %2673, %2604 ]
  %2705 = and i32 %2598, 256
  %2706 = icmp eq i32 %2705, 0
  br i1 %2706, label %2753, label %2707

; <label>:2707                                    ; preds = %2702
  %2708 = add i32 %28, 468
  %2709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2708, i32 undef)  ; BufferLoad(srv,index,wot)
  %2710 = extractvalue %dx.types.ResRet.i32 %2709, 0
  %2711 = add i32 %2710, 0
  %2712 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2711, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2713 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2712, %dx.types.Handle %71, float %2703, float %2704, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2714 = extractvalue %dx.types.ResRet.f32 %2713, 0
  %2715 = add i32 %28, 148
  %2716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2715, i32 undef)  ; BufferLoad(srv,index,wot)
  %2717 = extractvalue %dx.types.ResRet.i32 %2716, 0
  %2718 = shl i32 %2717, 4
  %2719 = and i32 %2718, 32752
  %2720 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2719)  ; LegacyF16ToF32(value)
  %2721 = lshr i32 %2717, 7
  %2722 = and i32 %2721, 32752
  %2723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2722)  ; LegacyF16ToF32(value)
  %2724 = fsub fast float 1.000000e+00, %630
  %2725 = call float @dx.op.binary.f32(i32 35, float %2724, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2726 = bitcast float %630 to i32
  %2727 = sitofp i32 %2726 to float
  %2728 = fadd fast float %2727, 0xC1CFBF8940000000
  %2729 = fmul fast float %2723, %2728
  %2730 = fadd fast float %2729, 0x41CFBF8940000000
  %2731 = fptosi float %2730 to i32
  %2732 = bitcast i32 %2731 to float
  %2733 = bitcast float %2725 to i32
  %2734 = sitofp i32 %2733 to float
  %2735 = fadd fast float %2734, 0xC1CFBF8940000000
  %2736 = fmul fast float %2735, %2723
  %2737 = fadd fast float %2736, 0x41CFBF8940000000
  %2738 = fptosi float %2737 to i32
  %2739 = bitcast i32 %2738 to float
  %2740 = fmul fast float %2732, %2720
  %2741 = fmul fast float %2739, %2720
  %2742 = fsub fast float %2725, %2740
  %2743 = fadd fast float %2741, %2725
  %2744 = call float @dx.op.unary.f32(i32 7, float %2742)  ; Saturate(value)
  %2745 = call float @dx.op.unary.f32(i32 7, float %2743)  ; Saturate(value)
  %2746 = fsub fast float %2714, %2744
  %2747 = fsub fast float %2745, %2744
  %2748 = bitcast float %2747 to i32
  %2749 = sub nsw i32 2129859010, %2748
  %2750 = bitcast i32 %2749 to float
  %2751 = fmul fast float %2750, %2746
  %2752 = call float @dx.op.unary.f32(i32 7, float %2751)  ; Saturate(value)
  br label %2753

; <label>:2753                                    ; preds = %2707, %2702
  %2754 = phi float [ %2752, %2707 ], [ %630, %2702 ]
  %2755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.i32 %2755, 0
  %2757 = and i32 %2756, 128
  %2758 = icmp eq i32 %2757, 0
  br i1 %2758, label %2775, label %2759

; <label>:2759                                    ; preds = %2753
  %2760 = add i32 %28, 452
  %2761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2762 = extractvalue %dx.types.ResRet.i32 %2761, 0
  %2763 = add i32 %2762, 0
  %2764 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2763, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2765 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2764, %dx.types.Handle %71, float %2703, float %2704, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2766 = extractvalue %dx.types.ResRet.f32 %2765, 0
  %2767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2768 = extractvalue %dx.types.ResRet.i32 %2767, 0
  %2769 = and i32 %2768, 524288
  %2770 = icmp ne i32 %2769, 0
  %2771 = fcmp fast ogt float %2766, 0x3FE0101020000000
  %2772 = select i1 %2771, float 1.000000e+00, float 0.000000e+00
  %2773 = select i1 %2770, float %2772, float %2766
  %2774 = fmul fast float %2773, %2754
  br label %2775

; <label>:2775                                    ; preds = %2759, %2753
  %2776 = phi float [ %2774, %2759 ], [ %2754, %2753 ]
  %2777 = fcmp fast ult float %2776, 0x3F70101020000000
  br i1 %2777, label %3320, label %2778

; <label>:2778                                    ; preds = %2775
  %2779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2780 = extractvalue %dx.types.ResRet.i32 %2779, 0
  %2781 = and i32 %2780, 16
  %2782 = icmp eq i32 %2781, 0
  br i1 %2782, label %2981, label %2783

; <label>:2783                                    ; preds = %2778
  %2784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2785 = extractvalue %dx.types.ResRet.i32 %2784, 0
  %2786 = add i32 %28, 404
  %2787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2786, i32 undef)  ; BufferLoad(srv,index,wot)
  %2788 = extractvalue %dx.types.ResRet.i32 %2787, 0
  %2789 = add i32 %2788, 0
  %2790 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2789, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2791 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2790, %dx.types.Handle %70, float %2703, float %2704, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2792 = extractvalue %dx.types.ResRet.f32 %2791, 0
  %2793 = extractvalue %dx.types.ResRet.f32 %2791, 1
  %2794 = extractvalue %dx.types.ResRet.f32 %2791, 2
  %2795 = extractvalue %dx.types.ResRet.f32 %2791, 3
  %2796 = and i32 %2785, 255
  %2797 = uitofp i32 %2796 to float
  %2798 = lshr i32 %2785, 8
  %2799 = and i32 %2798, 255
  %2800 = uitofp i32 %2799 to float
  %2801 = fmul fast float %2795, %2797
  %2802 = fadd fast float %2801, %2800
  %2803 = fmul fast float %2802, 0x3F70101000000000
  %2804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2805 = extractvalue %dx.types.ResRet.i32 %2804, 0
  %2806 = and i32 %2805, 512
  %2807 = icmp eq i32 %2806, 0
  br i1 %2807, label %2816, label %2808

; <label>:2808                                    ; preds = %2783
  %2809 = add i32 %28, 484
  %2810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2809, i32 undef)  ; BufferLoad(srv,index,wot)
  %2811 = extractvalue %dx.types.ResRet.i32 %2810, 0
  %2812 = add i32 %2811, 0
  %2813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2812, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2814 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2813, %dx.types.Handle %71, float %2703, float %2704, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2815 = extractvalue %dx.types.ResRet.f32 %2814, 0
  br label %2816

; <label>:2816                                    ; preds = %2808, %2783
  %2817 = phi float [ %2815, %2808 ], [ 1.000000e+00, %2783 ]
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = and i32 %2819, 33554432
  %2821 = icmp eq i32 %2820, 0
  br i1 %2821, label %2928, label %2822

; <label>:2822                                    ; preds = %2816
  %2823 = add i32 %28, 272
  %2824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2823, i32 undef)  ; BufferLoad(srv,index,wot)
  %2825 = extractvalue %dx.types.ResRet.i32 %2824, 0
  %2826 = and i32 %2825, 65535
  %2827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2826)  ; LegacyF16ToF32(value)
  %2828 = lshr i32 %2825, 16
  %2829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2828)  ; LegacyF16ToF32(value)
  %2830 = add i32 %28, 276
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = and i32 %2832, 65535
  %2834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2833)  ; LegacyF16ToF32(value)
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = lshr i32 %2836, 24
  %2838 = uitofp i32 %2837 to float
  %2839 = fmul fast float %2838, 0x3F70101020000000
  %2840 = and i32 %2836, 255
  %2841 = uitofp i32 %2840 to float
  %2842 = fmul fast float %2841, 0x3F70101020000000
  %2843 = lshr i32 %2836, 8
  %2844 = and i32 %2843, 255
  %2845 = uitofp i32 %2844 to float
  %2846 = fmul fast float %2845, 0x3F70101020000000
  %2847 = lshr i32 %2836, 16
  %2848 = and i32 %2847, 255
  %2849 = uitofp i32 %2848 to float
  %2850 = fmul fast float %2849, 0x3F70101020000000
  %2851 = add i32 %28, 268
  %2852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2853 = extractvalue %dx.types.ResRet.i32 %2852, 0
  %2854 = lshr i32 %2853, 24
  %2855 = uitofp i32 %2854 to float
  %2856 = fmul fast float %2855, 0x3F70101020000000
  %2857 = and i32 %2853, 255
  %2858 = uitofp i32 %2857 to float
  %2859 = fmul fast float %2858, 0x3F70101020000000
  %2860 = lshr i32 %2853, 8
  %2861 = and i32 %2860, 255
  %2862 = uitofp i32 %2861 to float
  %2863 = fmul fast float %2862, 0x3F70101020000000
  %2864 = lshr i32 %2853, 16
  %2865 = and i32 %2864, 255
  %2866 = uitofp i32 %2865 to float
  %2867 = fmul fast float %2866, 0x3F70101020000000
  %2868 = bitcast float %2792 to i32
  %2869 = ashr i32 %2868, 1
  %2870 = sub nsw i32 1597463174, %2869
  %2871 = bitcast i32 %2870 to float
  %2872 = fmul fast float %2792, 5.000000e-01
  %2873 = fmul fast float %2871, %2871
  %2874 = fmul fast float %2873, %2872
  %2875 = fsub fast float 1.500000e+00, %2874
  %2876 = fmul fast float %2871, %2792
  %2877 = fmul fast float %2876, %2875
  %2878 = bitcast float %2793 to i32
  %2879 = ashr i32 %2878, 1
  %2880 = sub nsw i32 1597463174, %2879
  %2881 = bitcast i32 %2880 to float
  %2882 = fmul fast float %2793, 5.000000e-01
  %2883 = fmul fast float %2881, %2881
  %2884 = fmul fast float %2883, %2882
  %2885 = fsub fast float 1.500000e+00, %2884
  %2886 = fmul fast float %2881, %2793
  %2887 = fmul fast float %2886, %2885
  %2888 = bitcast float %2794 to i32
  %2889 = ashr i32 %2888, 1
  %2890 = sub nsw i32 1597463174, %2889
  %2891 = bitcast i32 %2890 to float
  %2892 = fmul fast float %2794, 5.000000e-01
  %2893 = fmul fast float %2891, %2891
  %2894 = fmul fast float %2893, %2892
  %2895 = fsub fast float 1.500000e+00, %2894
  %2896 = fmul fast float %2891, %2794
  %2897 = fmul fast float %2896, %2895
  %2898 = fsub fast float %2877, %2859
  %2899 = fsub fast float %2887, %2863
  %2900 = fsub fast float %2897, %2867
  %2901 = fmul fast float %2898, %2827
  %2902 = fmul fast float %2899, %2829
  %2903 = fmul fast float %2900, %2834
  %2904 = fadd fast float %2901, %2842
  %2905 = fadd fast float %2902, %2846
  %2906 = fadd fast float %2903, %2850
  %2907 = call float @dx.op.unary.f32(i32 7, float %2904)  ; Saturate(value)
  %2908 = call float @dx.op.unary.f32(i32 7, float %2905)  ; Saturate(value)
  %2909 = call float @dx.op.unary.f32(i32 7, float %2906)  ; Saturate(value)
  %2910 = fmul fast float %2907, %2907
  %2911 = fmul fast float %2908, %2908
  %2912 = fmul fast float %2909, %2909
  %2913 = fsub fast float %2910, %2792
  %2914 = fsub fast float %2911, %2793
  %2915 = fsub fast float %2912, %2794
  %2916 = fmul fast float %2913, %2817
  %2917 = fmul fast float %2914, %2817
  %2918 = fmul fast float %2915, %2817
  %2919 = fadd fast float %2916, %2792
  %2920 = fadd fast float %2917, %2793
  %2921 = fadd fast float %2918, %2794
  %2922 = fadd fast float %2839, %2803
  %2923 = fsub fast float %2922, %2856
  %2924 = call float @dx.op.unary.f32(i32 7, float %2923)  ; Saturate(value)
  %2925 = fsub fast float %2924, %2803
  %2926 = fmul fast float %2925, %2817
  %2927 = fadd fast float %2926, %2803
  br label %2981

; <label>:2928                                    ; preds = %2816
  %2929 = and i32 %2819, 134217728
  %2930 = icmp eq i32 %2929, 0
  br i1 %2930, label %2965, label %2931

; <label>:2931                                    ; preds = %2928
  %2932 = call float @dx.op.unary.f32(i32 24, float %549)  ; Sqrt(value)
  %2933 = call float @dx.op.unary.f32(i32 24, float %550)  ; Sqrt(value)
  %2934 = call float @dx.op.unary.f32(i32 24, float %551)  ; Sqrt(value)
  %2935 = fadd fast float %2932, -5.000000e-01
  %2936 = fadd fast float %2933, -5.000000e-01
  %2937 = fadd fast float %2934, -5.000000e-01
  %2938 = fmul fast float %2935, %2817
  %2939 = fmul fast float %2936, %2817
  %2940 = fmul fast float %2937, %2817
  %2941 = fadd fast float %2938, 5.000000e-01
  %2942 = fadd fast float %2939, 5.000000e-01
  %2943 = fadd fast float %2940, 5.000000e-01
  %2944 = call float @dx.op.unary.f32(i32 24, float %2792)  ; Sqrt(value)
  %2945 = call float @dx.op.unary.f32(i32 24, float %2793)  ; Sqrt(value)
  %2946 = call float @dx.op.unary.f32(i32 24, float %2794)  ; Sqrt(value)
  %2947 = fmul fast float %2941, 2.000000e+00
  %2948 = fsub fast float 1.000000e+00, %2947
  %2949 = fmul fast float %2948, %2944
  %2950 = fadd fast float %2949, %2947
  %2951 = fmul fast float %2950, %2944
  %2952 = fmul fast float %2942, 2.000000e+00
  %2953 = fsub fast float 1.000000e+00, %2952
  %2954 = fmul fast float %2953, %2945
  %2955 = fadd fast float %2954, %2952
  %2956 = fmul fast float %2955, %2945
  %2957 = fmul fast float %2943, 2.000000e+00
  %2958 = fsub fast float 1.000000e+00, %2957
  %2959 = fmul fast float %2958, %2946
  %2960 = fadd fast float %2959, %2957
  %2961 = fmul fast float %2960, %2946
  %2962 = fmul fast float %2951, %2951
  %2963 = fmul fast float %2956, %2956
  %2964 = fmul fast float %2961, %2961
  br label %2981

; <label>:2965                                    ; preds = %2928
  %2966 = fmul fast float %549, %549
  %2967 = fmul fast float %550, %550
  %2968 = fmul fast float %551, %551
  %2969 = fadd fast float %2966, -1.000000e+00
  %2970 = fadd fast float %2967, -1.000000e+00
  %2971 = fadd fast float %2968, -1.000000e+00
  %2972 = fmul fast float %2817, %2969
  %2973 = fmul fast float %2817, %2970
  %2974 = fmul fast float %2817, %2971
  %2975 = fadd fast float %2972, 1.000000e+00
  %2976 = fadd fast float %2973, 1.000000e+00
  %2977 = fadd fast float %2974, 1.000000e+00
  %2978 = fmul fast float %2975, %2792
  %2979 = fmul fast float %2976, %2793
  %2980 = fmul fast float %2977, %2794
  br label %2981

; <label>:2981                                    ; preds = %2965, %2931, %2822, %2778
  %2982 = phi float [ %2927, %2822 ], [ %2803, %2931 ], [ %2803, %2965 ], [ 0x3FA23C0BE0000000, %2778 ]
  %2983 = phi float [ %2919, %2822 ], [ %2962, %2931 ], [ %2978, %2965 ], [ 1.000000e+00, %2778 ]
  %2984 = phi float [ %2920, %2822 ], [ %2963, %2931 ], [ %2979, %2965 ], [ 1.000000e+00, %2778 ]
  %2985 = phi float [ %2921, %2822 ], [ %2964, %2931 ], [ %2980, %2965 ], [ 1.000000e+00, %2778 ]
  %2986 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2987 = extractvalue %dx.types.CBufRet.i32 %2986, 1
  %2988 = and i32 %2987, 1
  %2989 = icmp ne i32 %2988, 0
  %2990 = add i32 %28, 356
  %2991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.i32 %2991, 0
  %2993 = and i32 %2992, 32
  %2994 = icmp ne i32 %2993, 0
  %2995 = and i1 %2989, %2994
  %2996 = select i1 %2995, float 1.000000e+00, float %2983
  %2997 = select i1 %2995, float 0x3FD3333340000000, float %2984
  %2998 = select i1 %2995, float 0x3FD3333340000000, float %2985
  %2999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3000 = extractvalue %dx.types.ResRet.i32 %2999, 0
  %3001 = and i32 %3000, 32
  %3002 = icmp eq i32 %3001, 0
  br i1 %3002, label %3075, label %3003

; <label>:3003                                    ; preds = %2981
  %3004 = add i32 %28, 140
  %3005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3006 = extractvalue %dx.types.ResRet.i32 %3005, 0
  %3007 = add i32 %28, 420
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = add i32 %3009, 0
  %3011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3010, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3012 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3011, %dx.types.Handle %70, float %2703, float %2704, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3013 = extractvalue %dx.types.ResRet.f32 %3012, 0
  %3014 = extractvalue %dx.types.ResRet.f32 %3012, 1
  %3015 = extractvalue %dx.types.ResRet.f32 %3012, 2
  %3016 = extractvalue %dx.types.ResRet.f32 %3012, 3
  %3017 = and i32 %3006, 255
  %3018 = uitofp i32 %3017 to float
  %3019 = lshr i32 %3006, 8
  %3020 = and i32 %3019, 255
  %3021 = uitofp i32 %3020 to float
  %3022 = lshr i32 %3006, 16
  %3023 = and i32 %3022, 255
  %3024 = uitofp i32 %3023 to float
  %3025 = fmul fast float %3024, 0x3F70101000000000
  %3026 = fmul fast float %3013, %3018
  %3027 = fadd fast float %3026, %3021
  %3028 = fmul fast float %3027, 0x3F70101000000000
  %3029 = fadd fast float %3014, -5.000000e-01
  %3030 = fadd fast float %3016, -5.000000e-01
  %3031 = fmul fast float %3029, %3025
  %3032 = fmul fast float %3030, %3025
  %3033 = fadd fast float %3031, 5.000000e-01
  %3034 = fadd fast float %3032, 5.000000e-01
  %3035 = fmul fast float %3033, 2.000000e+00
  %3036 = fadd fast float %3035, -1.000000e+00
  %3037 = fmul fast float %3034, 2.000000e+00
  %3038 = fadd fast float %3037, -1.000000e+00
  %3039 = fadd fast float %3036, %3038
  %3040 = fmul fast float %3039, 5.000000e-01
  %3041 = fsub fast float %3036, %3038
  %3042 = fmul fast float %3041, 5.000000e-01
  %3043 = call float @dx.op.unary.f32(i32 6, float %3040)  ; FAbs(value)
  %3044 = fsub fast float 1.000000e+00, %3043
  %3045 = call float @dx.op.unary.f32(i32 6, float %3042)  ; FAbs(value)
  %3046 = fsub fast float %3044, %3045
  %3047 = call float @dx.op.dot3.f32(i32 55, float %3040, float %3042, float %3046, float %3040, float %3042, float %3046)  ; Dot3(ax,ay,az,bx,by,bz)
  %3048 = call float @dx.op.unary.f32(i32 25, float %3047)  ; Rsqrt(value)
  %3049 = fmul fast float %3040, %3048
  %3050 = fmul fast float %3042, %3048
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.i32 %3051, 0
  %3053 = and i32 %3052, 67108864
  %3054 = icmp eq i32 %3053, 0
  br i1 %3054, label %3071, label %3055

; <label>:3055                                    ; preds = %3003
  %3056 = add i32 %28, 328
  %3057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3056, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.i32 %3057, 0
  %3059 = and i32 %3058, 65535
  %3060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3059)  ; LegacyF16ToF32(value)
  %3061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2613, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.i32 %3061, 0
  %3063 = and i32 %3062, 65535
  %3064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3063)  ; LegacyF16ToF32(value)
  %3065 = lshr i32 %3058, 16
  %3066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3065)  ; LegacyF16ToF32(value)
  %3067 = fsub fast float %3028, %3066
  %3068 = fmul fast float %3067, %3060
  %3069 = fadd fast float %3068, %3064
  %3070 = call float @dx.op.unary.f32(i32 7, float %3069)  ; Saturate(value)
  br label %3071

; <label>:3071                                    ; preds = %3055, %3003
  %3072 = phi float [ %3070, %3055 ], [ %3028, %3003 ]
  %3073 = call float @dx.op.dot2.f32(i32 54, float %3049, float %3050, float %2607, float %2608)  ; Dot2(ax,ay,bx,by)
  %3074 = call float @dx.op.dot2.f32(i32 54, float %3049, float %3050, float %2609, float %2610)  ; Dot2(ax,ay,bx,by)
  br label %3075

; <label>:3075                                    ; preds = %3071, %2981
  %3076 = phi float [ %3072, %3071 ], [ 0x3FD6666660000000, %2981 ]
  %3077 = phi float [ %3073, %3071 ], [ 0.000000e+00, %2981 ]
  %3078 = phi float [ %3074, %3071 ], [ 0.000000e+00, %2981 ]
  %3079 = phi float [ %3015, %3071 ], [ 1.000000e+00, %2981 ]
  %3080 = add i32 %28, 208
  %3081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3082 = extractvalue %dx.types.ResRet.i32 %3081, 0
  %3083 = lshr i32 %3082, 22
  %3084 = shl nuw nsw i32 %3083, 5
  %3085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3084)  ; LegacyF16ToF32(value)
  %3086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3087 = extractvalue %dx.types.ResRet.i32 %3086, 0
  %3088 = and i32 %3087, 64
  %3089 = icmp eq i32 %3088, 0
  br i1 %3089, label %3123, label %3090

; <label>:3090                                    ; preds = %3075
  %3091 = add i32 %28, 436
  %3092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3091, i32 undef)  ; BufferLoad(srv,index,wot)
  %3093 = extractvalue %dx.types.ResRet.i32 %3092, 0
  %3094 = add i32 %3093, 0
  %3095 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3094, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3097 = extractvalue %dx.types.ResRet.i32 %3096, 0
  %3098 = and i32 %3097, 131072
  %3099 = icmp eq i32 %3098, 0
  %3100 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3095, %dx.types.Handle %70, float %2703, float %2704, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3101 = extractvalue %dx.types.ResRet.f32 %3100, 0
  %3102 = extractvalue %dx.types.ResRet.f32 %3100, 1
  %3103 = extractvalue %dx.types.ResRet.f32 %3100, 2
  %3104 = fmul fast float %532, %3101
  %3105 = fmul fast float %533, %3102
  %3106 = fmul fast float %534, %3103
  br i1 %3099, label %3113, label %3107

; <label>:3107                                    ; preds = %3090
  %3108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3109 = extractvalue %dx.types.CBufRet.f32 %3108, 0
  %3110 = fmul fast float %3109, %3104
  %3111 = fmul fast float %3109, %3105
  %3112 = fmul fast float %3109, %3106
  br label %3113

; <label>:3113                                    ; preds = %3107, %3090
  %3114 = phi float [ %3110, %3107 ], [ %3104, %3090 ]
  %3115 = phi float [ %3111, %3107 ], [ %3105, %3090 ]
  %3116 = phi float [ %3112, %3107 ], [ %3106, %3090 ]
  %3117 = fmul fast float %3114, %3085
  %3118 = select i1 %200, float %3117, float %3114
  %3119 = call float @dx.op.dot3.f32(i32 55, float %3118, float %3115, float %3116, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3120 = select i1 %200, float 0.000000e+00, float %3114
  %3121 = select i1 %200, float %3119, float %3115
  %3122 = select i1 %200, float 0.000000e+00, float %3116
  br label %3123

; <label>:3123                                    ; preds = %3113, %3075
  %3124 = phi float [ %3120, %3113 ], [ 0.000000e+00, %3075 ]
  %3125 = phi float [ %3121, %3113 ], [ 0.000000e+00, %3075 ]
  %3126 = phi float [ %3122, %3113 ], [ 0.000000e+00, %3075 ]
  %3127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3128 = extractvalue %dx.types.ResRet.i32 %3127, 0
  %3129 = add i32 %28, 144
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3129, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = and i32 %3131, 255
  %3133 = uitofp i32 %3132 to float
  %3134 = lshr i32 %3131, 8
  %3135 = and i32 %3134, 255
  %3136 = uitofp i32 %3135 to float
  %3137 = call float @dx.op.dot3.f32(i32 55, float %2996, float %2997, float %2998, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3138 = fmul fast float %3136, %3137
  %3139 = fadd fast float %3138, %3133
  %3140 = fmul fast float %3139, 0x3F70101020000000
  %3141 = call float @dx.op.unary.f32(i32 7, float %3140)  ; Saturate(value)
  br i1 %2595, label %3142, label %3150

; <label>:3142                                    ; preds = %3123
  %3143 = fsub fast float 1.000000e+00, %2776
  %3144 = fmul fast float %3143, %2584
  %3145 = fmul fast float %3143, %2585
  %3146 = fmul fast float %3143, %2586
  %3147 = fmul fast float %3143, %2587
  %3148 = fmul fast float %3143, %2588
  %3149 = fmul fast float %3143, %2589
  br label %3150

; <label>:3150                                    ; preds = %3142, %3123
  %3151 = phi float [ %3144, %3142 ], [ %2584, %3123 ]
  %3152 = phi float [ %3145, %3142 ], [ %2585, %3123 ]
  %3153 = phi float [ %3146, %3142 ], [ %2586, %3123 ]
  %3154 = phi float [ %3147, %3142 ], [ %2587, %3123 ]
  %3155 = phi float [ %3148, %3142 ], [ %2588, %3123 ]
  %3156 = phi float [ %3149, %3142 ], [ %2589, %3123 ]
  %3157 = and i32 %3128, 3
  %3158 = icmp eq i32 %3157, 3
  br i1 %3158, label %3237, label %3159

; <label>:3159                                    ; preds = %3150
  %3160 = and i32 %3128, 16
  %3161 = icmp ne i32 %3160, 0
  %3162 = select i1 %3161, float %2776, float 0.000000e+00
  %3163 = icmp eq i32 %3157, 0
  br i1 %3163, label %3164, label %3192

; <label>:3164                                    ; preds = %3159
  %3165 = and i32 %3128, 64
  %3166 = icmp ne i32 %3165, 0
  %3167 = select i1 %3166, float %2776, float 0.000000e+00
  %3168 = fsub fast float %2996, %3151
  %3169 = fsub fast float %2997, %3152
  %3170 = fsub fast float %2998, %3153
  %3171 = fmul fast float %3162, %3168
  %3172 = fmul fast float %3162, %3169
  %3173 = fmul fast float %3162, %3170
  %3174 = fadd fast float %3171, %3151
  %3175 = fadd fast float %3172, %3152
  %3176 = fadd fast float %3173, %3153
  %3177 = fsub fast float %2982, %2590
  %3178 = fmul fast float %3162, %3177
  %3179 = fadd fast float %3178, %2590
  %3180 = fsub fast float %3124, %3154
  %3181 = fsub fast float %3125, %3155
  %3182 = fsub fast float %3126, %3156
  %3183 = fmul fast float %3167, %3180
  %3184 = fmul fast float %3167, %3181
  %3185 = fmul fast float %3167, %3182
  %3186 = fadd fast float %3183, %3154
  %3187 = fadd fast float %3184, %3155
  %3188 = fadd fast float %3185, %3156
  %3189 = fsub fast float %3141, %2593
  %3190 = fmul fast float %3162, %3189
  %3191 = fadd fast float %3190, %2593
  br label %3237

; <label>:3192                                    ; preds = %3159
  %3193 = icmp eq i32 %3157, 1
  br i1 %3193, label %3194, label %3207

; <label>:3194                                    ; preds = %3192
  %3195 = fadd fast float %2996, -1.000000e+00
  %3196 = fadd fast float %2997, -1.000000e+00
  %3197 = fadd fast float %2998, -1.000000e+00
  %3198 = fmul fast float %3162, %3195
  %3199 = fmul fast float %3162, %3196
  %3200 = fmul fast float %3162, %3197
  %3201 = fadd fast float %3198, 1.000000e+00
  %3202 = fadd fast float %3199, 1.000000e+00
  %3203 = fadd fast float %3200, 1.000000e+00
  %3204 = fmul fast float %3201, %3151
  %3205 = fmul fast float %3202, %3152
  %3206 = fmul fast float %3203, %3153
  br label %3237

; <label>:3207                                    ; preds = %3192
  %3208 = icmp eq i32 %3157, 2
  br i1 %3208, label %3209, label %3237

; <label>:3209                                    ; preds = %3207
  %3210 = call float @dx.op.unary.f32(i32 24, float %2996)  ; Sqrt(value)
  %3211 = call float @dx.op.unary.f32(i32 24, float %2997)  ; Sqrt(value)
  %3212 = call float @dx.op.unary.f32(i32 24, float %2998)  ; Sqrt(value)
  %3213 = fadd fast float %3210, -5.000000e-01
  %3214 = fadd fast float %3211, -5.000000e-01
  %3215 = fadd fast float %3212, -5.000000e-01
  %3216 = fmul fast float %3213, %3162
  %3217 = fmul fast float %3214, %3162
  %3218 = fmul fast float %3215, %3162
  %3219 = fadd fast float %3216, 5.000000e-01
  %3220 = fadd fast float %3217, 5.000000e-01
  %3221 = fadd fast float %3218, 5.000000e-01
  %3222 = fmul fast float %3219, 2.000000e+00
  %3223 = fsub fast float 1.000000e+00, %3222
  %3224 = fmul fast float %3223, %3151
  %3225 = fadd fast float %3224, %3222
  %3226 = fmul fast float %3225, %3151
  %3227 = fmul fast float %3220, 2.000000e+00
  %3228 = fsub fast float 1.000000e+00, %3227
  %3229 = fmul fast float %3228, %3152
  %3230 = fadd fast float %3229, %3227
  %3231 = fmul fast float %3230, %3152
  %3232 = fmul fast float %3221, 2.000000e+00
  %3233 = fsub fast float 1.000000e+00, %3232
  %3234 = fmul fast float %3233, %3153
  %3235 = fadd fast float %3234, %3232
  %3236 = fmul fast float %3235, %3153
  br label %3237

; <label>:3237                                    ; preds = %3209, %3207, %3194, %3164, %3150
  %3238 = phi float [ %3151, %3150 ], [ %3226, %3209 ], [ %3151, %3207 ], [ %3204, %3194 ], [ %3174, %3164 ]
  %3239 = phi float [ %3152, %3150 ], [ %3231, %3209 ], [ %3152, %3207 ], [ %3205, %3194 ], [ %3175, %3164 ]
  %3240 = phi float [ %3153, %3150 ], [ %3236, %3209 ], [ %3153, %3207 ], [ %3206, %3194 ], [ %3176, %3164 ]
  %3241 = phi float [ %3154, %3150 ], [ %3154, %3209 ], [ %3154, %3207 ], [ %3154, %3194 ], [ %3186, %3164 ]
  %3242 = phi float [ %3155, %3150 ], [ %3155, %3209 ], [ %3155, %3207 ], [ %3155, %3194 ], [ %3187, %3164 ]
  %3243 = phi float [ %3156, %3150 ], [ %3156, %3209 ], [ %3156, %3207 ], [ %3156, %3194 ], [ %3188, %3164 ]
  %3244 = phi float [ %2590, %3150 ], [ %2590, %3209 ], [ %2590, %3207 ], [ %2590, %3194 ], [ %3179, %3164 ]
  %3245 = phi float [ %2593, %3150 ], [ %2593, %3209 ], [ %2593, %3207 ], [ %2593, %3194 ], [ %3191, %3164 ]
  %3246 = and i32 %3128, 12
  %3247 = icmp eq i32 %3246, 12
  br i1 %3247, label %3320, label %3248

; <label>:3248                                    ; preds = %3237
  %3249 = and i32 %3128, 2097184
  %3250 = icmp eq i32 %3249, 2097184
  %3251 = select i1 %3250, float %2776, float 0.000000e+00
  %3252 = and i32 %3128, 4194336
  %3253 = icmp eq i32 %3252, 4194336
  %3254 = select i1 %3253, float %2776, float 0.000000e+00
  %3255 = and i32 %3128, 8388640
  %3256 = icmp eq i32 %3255, 8388640
  %3257 = select i1 %3256, float %2776, float 0.000000e+00
  %3258 = icmp eq i32 %3246, 0
  br i1 %3258, label %3259, label %3272

; <label>:3259                                    ; preds = %3248
  %3260 = fsub fast float %3077, %2582
  %3261 = fsub fast float %3078, %2583
  %3262 = fmul fast float %3251, %3260
  %3263 = fmul fast float %3251, %3261
  %3264 = fadd fast float %3262, %2582
  %3265 = fadd fast float %3263, %2583
  %3266 = fsub fast float %3079, %2592
  %3267 = fmul fast float %3254, %3266
  %3268 = fadd fast float %3267, %2592
  %3269 = fsub fast float %3076, %2591
  %3270 = fmul fast float %3257, %3269
  %3271 = fadd fast float %3270, %2591
  br label %3320

; <label>:3272                                    ; preds = %3248
  %3273 = icmp eq i32 %3246, 4
  br i1 %3273, label %3274, label %3306

; <label>:3274                                    ; preds = %3272
  %3275 = fmul fast float %3251, %3077
  %3276 = fmul fast float %3251, %3078
  %3277 = fadd fast float %3275, %2582
  %3278 = fadd fast float %3276, %2583
  %3279 = call float @dx.op.binary.f32(i32 36, float %2592, float %3079)  ; FMin(a,b)
  %3280 = fsub fast float %3279, %2592
  %3281 = fmul fast float %3280, %3254
  %3282 = fadd fast float %3281, %2592
  %3283 = fadd fast float %3076, %2591
  %3284 = fmul fast float %3283, 0x3FF337FAE0000000
  %3285 = fmul fast float %2591, %2591
  %3286 = fmul fast float %3076, %3076
  %3287 = fadd fast float %3286, %3285
  %3288 = fmul fast float %3287, 0x3FE5152B00000000
  %3289 = fmul fast float %2591, 0xBFCC1F85E0000000
  %3290 = fmul fast float %3289, %3076
  %3291 = fadd fast float %3290, 0xBFE1363700000000
  %3292 = fadd fast float %3291, %3284
  %3293 = fsub fast float %3292, %3288
  %3294 = fmul fast float %3283, 0x3FBA6F0D00000000
  %3295 = fmul fast float %3287, 0x3FD0432880000000
  %3296 = fmul fast float %2591, 0xBFEF110800000000
  %3297 = fmul fast float %3296, %3076
  %3298 = fadd fast float %3297, 1.000000e+00
  %3299 = fsub fast float %3298, %3294
  %3300 = fadd fast float %3299, %3295
  %3301 = fdiv fast float %3293, %3300
  %3302 = call float @dx.op.unary.f32(i32 7, float %3301)  ; Saturate(value)
  %3303 = fsub fast float %3302, %2591
  %3304 = fmul fast float %3303, %3257
  %3305 = fadd fast float %3304, %2591
  br label %3320

; <label>:3306                                    ; preds = %3272
  %3307 = icmp eq i32 %3246, 8
  br i1 %3307, label %3308, label %3320

; <label>:3308                                    ; preds = %3306
  %3309 = fmul fast float %3251, %3077
  %3310 = fmul fast float %3251, %3078
  %3311 = fadd fast float %3309, %2582
  %3312 = fadd fast float %3310, %2583
  %3313 = call float @dx.op.binary.f32(i32 36, float %2592, float %3079)  ; FMin(a,b)
  %3314 = fsub fast float %3313, %2592
  %3315 = fmul fast float %3314, %3254
  %3316 = fadd fast float %3315, %2592
  %3317 = fsub fast float %3076, %2591
  %3318 = fmul fast float %3257, %3317
  %3319 = fadd fast float %3318, %2591
  br label %3320

; <label>:3320                                    ; preds = %3308, %3306, %3274, %3259, %3237, %2775, %2594, %2581
  %3321 = phi float [ %2582, %3237 ], [ %2582, %2775 ], [ %2582, %2581 ], [ %2582, %2594 ], [ %3264, %3259 ], [ %3277, %3274 ], [ %2582, %3306 ], [ %3311, %3308 ]
  %3322 = phi float [ %2583, %3237 ], [ %2583, %2775 ], [ %2583, %2581 ], [ %2583, %2594 ], [ %3265, %3259 ], [ %3278, %3274 ], [ %2583, %3306 ], [ %3312, %3308 ]
  %3323 = phi float [ %3238, %3237 ], [ %2584, %2775 ], [ %2584, %2581 ], [ %2584, %2594 ], [ %3238, %3259 ], [ %3238, %3274 ], [ %3238, %3306 ], [ %3238, %3308 ]
  %3324 = phi float [ %3239, %3237 ], [ %2585, %2775 ], [ %2585, %2581 ], [ %2585, %2594 ], [ %3239, %3259 ], [ %3239, %3274 ], [ %3239, %3306 ], [ %3239, %3308 ]
  %3325 = phi float [ %3240, %3237 ], [ %2586, %2775 ], [ %2586, %2581 ], [ %2586, %2594 ], [ %3240, %3259 ], [ %3240, %3274 ], [ %3240, %3306 ], [ %3240, %3308 ]
  %3326 = phi float [ %3241, %3237 ], [ %2587, %2775 ], [ %2587, %2581 ], [ %2587, %2594 ], [ %3241, %3259 ], [ %3241, %3274 ], [ %3241, %3306 ], [ %3241, %3308 ]
  %3327 = phi float [ %3242, %3237 ], [ %2588, %2775 ], [ %2588, %2581 ], [ %2588, %2594 ], [ %3242, %3259 ], [ %3242, %3274 ], [ %3242, %3306 ], [ %3242, %3308 ]
  %3328 = phi float [ %3243, %3237 ], [ %2589, %2775 ], [ %2589, %2581 ], [ %2589, %2594 ], [ %3243, %3259 ], [ %3243, %3274 ], [ %3243, %3306 ], [ %3243, %3308 ]
  %3329 = phi float [ %3244, %3237 ], [ %2590, %2775 ], [ %2590, %2581 ], [ %2590, %2594 ], [ %3244, %3259 ], [ %3244, %3274 ], [ %3244, %3306 ], [ %3244, %3308 ]
  %3330 = phi float [ %2591, %3237 ], [ %2591, %2775 ], [ %2591, %2581 ], [ %2591, %2594 ], [ %3271, %3259 ], [ %3305, %3274 ], [ %2591, %3306 ], [ %3319, %3308 ]
  %3331 = phi float [ %2592, %3237 ], [ %2592, %2775 ], [ %2592, %2581 ], [ %2592, %2594 ], [ %3268, %3259 ], [ %3282, %3274 ], [ %2592, %3306 ], [ %3316, %3308 ]
  %3332 = phi float [ %3245, %3237 ], [ %2593, %2775 ], [ %2593, %2581 ], [ %2593, %2594 ], [ %3245, %3259 ], [ %3245, %3274 ], [ %3245, %3306 ], [ %3245, %3308 ]
  %3333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3334 = extractvalue %dx.types.CBufRet.f32 %3333, 0
  %3335 = call float @dx.op.dot2.f32(i32 54, float %3321, float %3322, float %3321, float %3322)  ; Dot2(ax,ay,bx,by)
  %3336 = fmul fast float %3335, 0x3FE3333340000000
  %3337 = fsub fast float 1.000000e+00, %3336
  %3338 = call float @dx.op.dot3.f32(i32 55, float %3321, float %3322, float %3337, float %3321, float %3322, float %3337)  ; Dot3(ax,ay,az,bx,by,bz)
  %3339 = call float @dx.op.unary.f32(i32 25, float %3338)  ; Rsqrt(value)
  %3340 = fmul fast float %3339, %3321
  %3341 = fmul fast float %3339, %3322
  %3342 = fmul fast float %3337, %3339
  %3343 = fmul fast float %3342, %81
  %3344 = fmul fast float %3342, %82
  %3345 = fmul fast float %3342, %83
  %3346 = fmul fast float %3340, %55
  %3347 = fmul fast float %3340, %56
  %3348 = fmul fast float %3340, %57
  %3349 = fadd fast float %3343, %3346
  %3350 = fadd fast float %3344, %3347
  %3351 = fadd fast float %3345, %3348
  %3352 = fmul fast float %93, %3341
  %3353 = fmul fast float %94, %3341
  %3354 = fmul fast float %95, %3341
  %3355 = fadd fast float %3349, %3352
  %3356 = fadd fast float %3350, %3353
  %3357 = fadd fast float %3351, %3354
  %3358 = call float @dx.op.dot3.f32(i32 55, float %3355, float %3356, float %3357, float %3355, float %3356, float %3357)  ; Dot3(ax,ay,az,bx,by,bz)
  %3359 = call float @dx.op.unary.f32(i32 25, float %3358)  ; Rsqrt(value)
  %3360 = fmul fast float %3355, %3359
  %3361 = fmul fast float %3356, %3359
  %3362 = fmul fast float %3357, %3359
  %3363 = fadd fast float %3329, 0xBFB99999A0000000
  %3364 = call float @dx.op.unary.f32(i32 7, float %3363)  ; Saturate(value)
  %3365 = fmul fast float %3364, 0x3FF1C71C80000000
  %3366 = call float @dx.op.binary.f32(i32 36, float %3329, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3367 = fsub fast float 1.000000e+00, %3365
  %3368 = call float @dx.op.unary.f32(i32 7, float %3367)  ; Saturate(value)
  %3369 = fmul fast float %3368, %3323
  %3370 = fmul fast float %3368, %3324
  %3371 = fmul fast float %3368, %3325
  %3372 = call float @dx.op.unary.f32(i32 7, float %3369)  ; Saturate(value)
  %3373 = call float @dx.op.unary.f32(i32 7, float %3370)  ; Saturate(value)
  %3374 = call float @dx.op.unary.f32(i32 7, float %3371)  ; Saturate(value)
  %3375 = fmul fast float %3365, %3323
  %3376 = fmul fast float %3365, %3324
  %3377 = fmul fast float %3365, %3325
  %3378 = fadd fast float %3375, %3366
  %3379 = fadd fast float %3376, %3366
  %3380 = fadd fast float %3377, %3366
  %3381 = call float @dx.op.unary.f32(i32 7, float %3378)  ; Saturate(value)
  %3382 = call float @dx.op.unary.f32(i32 7, float %3379)  ; Saturate(value)
  %3383 = call float @dx.op.unary.f32(i32 7, float %3380)  ; Saturate(value)
  %3384 = call float @dx.op.unary.f32(i32 7, float %3330)  ; Saturate(value)
  %3385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3386 = extractvalue %dx.types.CBufRet.i32 %3385, 3
  %3387 = and i32 %3386, 8
  %3388 = icmp ne i32 %3387, 0
  %3389 = call float @dx.op.binary.f32(i32 35, float %3372, float %3323)  ; FMax(a,b)
  %3390 = call float @dx.op.binary.f32(i32 35, float %3373, float %3323)  ; FMax(a,b)
  %3391 = call float @dx.op.binary.f32(i32 35, float %3374, float %3323)  ; FMax(a,b)
  %3392 = call float @dx.op.dot3.f32(i32 55, float %3372, float %3373, float %3374, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3393 = select i1 %200, float %3323, float %3372
  %3394 = select i1 %200, float %3392, float %3373
  %3395 = select i1 %200, float 1.000000e+00, float %3374
  %3396 = select i1 %3388, float %3389, float %3393
  %3397 = select i1 %3388, float %3390, float %3394
  %3398 = select i1 %3388, float %3391, float %3395
  %3399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3400 = extractvalue %dx.types.CBufRet.f32 %3399, 0
  %3401 = extractvalue %dx.types.CBufRet.f32 %3399, 1
  %3402 = extractvalue %dx.types.CBufRet.f32 %3399, 2
  %3403 = fadd fast float %3400, %161
  %3404 = fadd fast float %3401, %162
  %3405 = fadd fast float %3402, %163
  %3406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3407 = extractvalue %dx.types.CBufRet.f32 %3406, 0
  %3408 = extractvalue %dx.types.CBufRet.f32 %3406, 1
  %3409 = fsub fast float %3403, %3407
  %3410 = fsub fast float %3404, %3408
  %3411 = fmul fast float %3409, %3409
  %3412 = fmul fast float %3410, %3410
  %3413 = fadd fast float %3411, %3412
  %3414 = call float @dx.op.unary.f32(i32 24, float %3413)  ; Sqrt(value)
  %3415 = extractvalue %dx.types.CBufRet.f32 %3406, 2
  %3416 = fcmp fast olt float %3414, %3415
  br i1 %3416, label %3417, label %3484

; <label>:3417                                    ; preds = %3320
  %3418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3419 = extractvalue %dx.types.CBufRet.f32 %3418, 0
  %3420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3421 = extractvalue %dx.types.CBufRet.f32 %3420, 0
  %3422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3423 = extractvalue %dx.types.CBufRet.f32 %3422, 0
  %3424 = extractvalue %dx.types.CBufRet.f32 %3418, 1
  %3425 = extractvalue %dx.types.CBufRet.f32 %3420, 1
  %3426 = extractvalue %dx.types.CBufRet.f32 %3422, 1
  %3427 = extractvalue %dx.types.CBufRet.f32 %3418, 3
  %3428 = extractvalue %dx.types.CBufRet.f32 %3420, 3
  %3429 = extractvalue %dx.types.CBufRet.f32 %3422, 3
  %3430 = fadd fast float %3427, %3403
  %3431 = fadd fast float %3428, %3404
  %3432 = fadd fast float %3429, %3405
  %3433 = fmul fast float %3430, %3419
  %3434 = call float @dx.op.tertiary.f32(i32 46, float %3431, float %3421, float %3433)  ; FMad(a,b,c)
  %3435 = call float @dx.op.tertiary.f32(i32 46, float %3432, float %3423, float %3434)  ; FMad(a,b,c)
  %3436 = fmul fast float %3430, %3424
  %3437 = call float @dx.op.tertiary.f32(i32 46, float %3431, float %3425, float %3436)  ; FMad(a,b,c)
  %3438 = call float @dx.op.tertiary.f32(i32 46, float %3432, float %3426, float %3437)  ; FMad(a,b,c)
  %3439 = fsub fast float %3435, %3427
  %3440 = fsub fast float %3438, %3428
  %3441 = fsub fast float %3439, %3407
  %3442 = fadd fast float %3441, %3415
  %3443 = fsub fast float %3440, %3408
  %3444 = fadd fast float %3443, %3415
  %3445 = extractvalue %dx.types.CBufRet.f32 %3406, 3
  %3446 = fmul fast float %3442, %3445
  %3447 = fmul fast float %3444, %3445
  %3448 = call float @dx.op.unary.f32(i32 7, float %3446)  ; Saturate(value)
  %3449 = call float @dx.op.unary.f32(i32 7, float %3447)  ; Saturate(value)
  %3450 = fsub fast float 1.000000e+00, %3448
  %3451 = fsub fast float 1.000000e+00, %3449
  %3452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %3450, float %3451, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3453 = extractvalue %dx.types.ResRet.f32 %3452, 0
  %3454 = fcmp fast ugt float %3453, 0.000000e+00
  br i1 %3454, label %3455, label %3758

; <label>:3455                                    ; preds = %3417
  %3456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3457 = extractvalue %dx.types.CBufRet.f32 %3456, 2
  %3458 = fmul fast float %3457, %3453
  %3459 = extractvalue %dx.types.CBufRet.f32 %3456, 3
  %3460 = fadd fast float %3459, %3458
  %3461 = extractvalue %dx.types.CBufRet.f32 %3422, 2
  %3462 = fadd fast float %3460, %3429
  %3463 = fmul fast float %3435, %3423
  %3464 = call float @dx.op.tertiary.f32(i32 46, float %3438, float %3426, float %3463)  ; FMad(a,b,c)
  %3465 = call float @dx.op.tertiary.f32(i32 46, float %3462, float %3461, float %3464)  ; FMad(a,b,c)
  %3466 = fsub fast float %3465, %3429
  %3467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3468 = extractvalue %dx.types.CBufRet.f32 %3467, 2
  %3469 = fsub fast float %3466, %3468
  %3470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %3450, float %3451, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3471 = extractvalue %dx.types.ResRet.f32 %3470, 0
  %3472 = extractvalue %dx.types.ResRet.f32 %3470, 1
  %3473 = extractvalue %dx.types.ResRet.f32 %3470, 2
  %3474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %24, float %3450, float %3451, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3475 = extractvalue %dx.types.ResRet.f32 %3474, 0
  %3476 = extractvalue %dx.types.ResRet.f32 %3474, 1
  %3477 = extractvalue %dx.types.ResRet.f32 %3474, 2
  %3478 = fadd fast float %3475, %3471
  %3479 = fmul fast float %3478, 0x3F847AE140000000
  %3480 = fadd fast float %3476, %3472
  %3481 = fmul fast float %3480, 0x3F847AE140000000
  %3482 = fadd fast float %3477, %3473
  %3483 = fmul fast float %3482, 0x3F847AE140000000
  br label %3758

; <label>:3484                                    ; preds = %3320
  %3485 = and i32 %179, 1
  %3486 = icmp eq i32 %3485, 0
  br i1 %3486, label %3758, label %3487

; <label>:3487                                    ; preds = %3484
  %3488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3489 = extractvalue %dx.types.CBufRet.f32 %3488, 0
  %3490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3491 = extractvalue %dx.types.CBufRet.f32 %3490, 0
  %3492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3493 = extractvalue %dx.types.CBufRet.f32 %3492, 0
  %3494 = extractvalue %dx.types.CBufRet.f32 %3488, 1
  %3495 = extractvalue %dx.types.CBufRet.f32 %3490, 1
  %3496 = extractvalue %dx.types.CBufRet.f32 %3492, 1
  %3497 = extractvalue %dx.types.CBufRet.f32 %3488, 3
  %3498 = extractvalue %dx.types.CBufRet.f32 %3490, 3
  %3499 = extractvalue %dx.types.CBufRet.f32 %3492, 3
  %3500 = fadd fast float %3497, %3403
  %3501 = fadd fast float %3498, %3404
  %3502 = fadd fast float %3499, %3405
  %3503 = fmul fast float %3500, %3489
  %3504 = call float @dx.op.tertiary.f32(i32 46, float %3501, float %3491, float %3503)  ; FMad(a,b,c)
  %3505 = call float @dx.op.tertiary.f32(i32 46, float %3502, float %3493, float %3504)  ; FMad(a,b,c)
  %3506 = fmul fast float %3500, %3494
  %3507 = call float @dx.op.tertiary.f32(i32 46, float %3501, float %3495, float %3506)  ; FMad(a,b,c)
  %3508 = call float @dx.op.tertiary.f32(i32 46, float %3502, float %3496, float %3507)  ; FMad(a,b,c)
  %3509 = fsub fast float %3505, %3497
  %3510 = fsub fast float %3508, %3498
  %3511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3512 = extractvalue %dx.types.CBufRet.f32 %3511, 0
  %3513 = extractvalue %dx.types.CBufRet.f32 %3511, 1
  %3514 = extractvalue %dx.types.CBufRet.f32 %3511, 2
  %3515 = extractvalue %dx.types.CBufRet.f32 %3511, 3
  %3516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3517 = extractvalue %dx.types.CBufRet.f32 %3516, 3
  %3518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3519 = extractvalue %dx.types.CBufRet.i32 %3518, 0
  %3520 = extractvalue %dx.types.CBufRet.i32 %3518, 1
  %3521 = udiv i32 %3520, %3519
  %3522 = fsub fast float %3509, %3512
  %3523 = fsub fast float %3510, %3513
  %3524 = call float @dx.op.binary.f32(i32 35, float %3522, float 0.000000e+00)  ; FMax(a,b)
  %3525 = call float @dx.op.binary.f32(i32 35, float %3523, float 0.000000e+00)  ; FMax(a,b)
  %3526 = call float @dx.op.binary.f32(i32 36, float %3524, float %3514)  ; FMin(a,b)
  %3527 = call float @dx.op.binary.f32(i32 36, float %3525, float %3515)  ; FMin(a,b)
  %3528 = add i32 %3519, -1
  %3529 = add i32 %3521, -1
  %3530 = fmul fast float %3526, %3517
  %3531 = fmul fast float %3527, %3517
  %3532 = fptoui float %3530 to i32
  %3533 = fptoui float %3531 to i32
  %3534 = call i32 @dx.op.binary.i32(i32 40, i32 %3532, i32 %3528)  ; UMin(a,b)
  %3535 = call i32 @dx.op.binary.i32(i32 40, i32 %3533, i32 %3529)  ; UMin(a,b)
  %3536 = mul i32 %3535, %3519
  %3537 = add i32 %3536, %3534
  %3538 = shl i32 %3537, 2
  %3539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3538, i32 undef)  ; BufferLoad(srv,index,wot)
  %3540 = extractvalue %dx.types.ResRet.i32 %3539, 0
  %3541 = icmp eq i32 %3540, -1
  br i1 %3541, label %3758, label %3542

; <label>:3542                                    ; preds = %3487
  %3543 = mul i32 %3540, 148
  %3544 = add i32 %3543, 4
  %3545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3546 = extractvalue %dx.types.ResRet.f32 %3545, 0
  %3547 = add i32 %3543, 8
  %3548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3547, i32 undef)  ; BufferLoad(srv,index,wot)
  %3549 = extractvalue %dx.types.ResRet.f32 %3548, 0
  %3550 = add i32 %3543, 36
  %3551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3550, i32 undef)  ; BufferLoad(srv,index,wot)
  %3552 = extractvalue %dx.types.ResRet.f32 %3551, 0
  %3553 = add i32 %3543, 60
  %3554 = add i32 %3543, 92
  %3555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.i32 %3555, 0
  %3557 = add i32 %3543, 116
  %3558 = fsub fast float %3509, %3546
  %3559 = fsub fast float %3510, %3549
  %3560 = fmul fast float %3517, %3558
  %3561 = fmul fast float %3517, %3559
  %3562 = call float @dx.op.unary.f32(i32 7, float %3560)  ; Saturate(value)
  %3563 = call float @dx.op.unary.f32(i32 7, float %3561)  ; Saturate(value)
  %3564 = fsub fast float 1.000000e+00, %3563
  %3565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3566 = extractvalue %dx.types.CBufRet.f32 %3565, 2
  %3567 = call float @dx.op.unary.f32(i32 83, float %3562)  ; DerivCoarseX(value)
  %3568 = call float @dx.op.unary.f32(i32 83, float %3564)  ; DerivCoarseX(value)
  %3569 = call float @dx.op.unary.f32(i32 84, float %3562)  ; DerivCoarseY(value)
  %3570 = call float @dx.op.unary.f32(i32 84, float %3564)  ; DerivCoarseY(value)
  %3571 = fmul fast float %3567, %3566
  %3572 = fmul fast float %3568, %3566
  %3573 = fmul fast float %3569, %3566
  %3574 = fmul fast float %3570, %3566
  %3575 = call float @dx.op.dot2.f32(i32 54, float %3573, float %3574, float %3573, float %3574)  ; Dot2(ax,ay,bx,by)
  %3576 = call float @dx.op.dot2.f32(i32 54, float %3571, float %3572, float %3571, float %3572)  ; Dot2(ax,ay,bx,by)
  %3577 = call float @dx.op.binary.f32(i32 35, float %3576, float %3575)  ; FMax(a,b)
  %3578 = call float @dx.op.unary.f32(i32 23, float %3577)  ; Log(value)
  %3579 = fmul fast float %3578, 5.000000e-01
  %3580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3581 = extractvalue %dx.types.CBufRet.f32 %3580, 1
  %3582 = fadd fast float %3581, %3579
  %3583 = call float @dx.op.binary.f32(i32 35, float %3582, float 0.000000e+00)  ; FMax(a,b)
  %3584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3585 = extractvalue %dx.types.CBufRet.f32 %3584, 3
  %3586 = fadd fast float %3585, %3583
  %3587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3588 = extractvalue %dx.types.CBufRet.f32 %3587, 3
  %3589 = fadd fast float %3586, %3588
  %3590 = add i32 %3556, 0
  %3591 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3590, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3592 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3591, i32 0)  ; GetDimensions(handle,mipLevel)
  %3593 = extractvalue %dx.types.Dimensions %3592, 0
  %3594 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3593)  ; FirstbitLo(value)
  %3595 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3596 = extractvalue %dx.types.CBufRet.i32 %3595, 1
  %3597 = sub nsw i32 %3596, %3594
  %3598 = sitofp i32 %3597 to float
  %3599 = fsub fast float %3589, %3598
  %3600 = call float @dx.op.binary.f32(i32 35, float %3599, float 0.000000e+00)  ; FMax(a,b)
  %3601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3591, %dx.types.Handle %23, float %3562, float %3564, float %3552, float undef, i32 0, i32 0, i32 undef, float %3600)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3602 = extractvalue %dx.types.ResRet.f32 %3601, 0
  %3603 = fcmp ule float %3602, 0x3FE0101020000000
  %3604 = extractvalue %dx.types.CBufRet.i32 %3595, 0
  %3605 = and i32 %3604, 128
  %3606 = icmp ne i32 %3605, 0
  %3607 = and i1 %3603, %3606
  br i1 %3607, label %3758, label %3608

; <label>:3608                                    ; preds = %3542
  %3609 = add i32 %3543, 20
  %3610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3609, i32 undef)  ; BufferLoad(srv,index,wot)
  %3611 = extractvalue %dx.types.ResRet.f32 %3610, 0
  %3612 = add i32 %3543, 24
  %3613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 0
  %3615 = add i32 %3543, 40
  %3616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3615, i32 undef)  ; BufferLoad(srv,index,wot)
  %3617 = extractvalue %dx.types.ResRet.f32 %3616, 0
  %3618 = add i32 %3543, 96
  %3619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.i32 %3619, 0
  %3621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3622 = extractvalue %dx.types.CBufRet.f32 %3621, 2
  %3623 = fmul fast float %3622, %3562
  %3624 = fmul fast float %3622, %3564
  %3625 = extractvalue %dx.types.CBufRet.f32 %3621, 3
  %3626 = fadd fast float %3623, %3625
  %3627 = fadd fast float %3624, %3625
  %3628 = add i32 %3620, 0
  %3629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3628, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3630 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3629, i32 0)  ; GetDimensions(handle,mipLevel)
  %3631 = extractvalue %dx.types.Dimensions %3630, 0
  %3632 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3631)  ; FirstbitLo(value)
  %3633 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3634 = extractvalue %dx.types.CBufRet.i32 %3633, 1
  %3635 = sub nsw i32 %3634, %3632
  %3636 = sitofp i32 %3635 to float
  %3637 = fsub fast float %3586, %3636
  %3638 = call float @dx.op.binary.f32(i32 35, float %3637, float 0.000000e+00)  ; FMax(a,b)
  %3639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3629, %dx.types.Handle %23, float %3626, float %3627, float %3617, float undef, i32 0, i32 0, i32 undef, float %3638)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3640 = extractvalue %dx.types.ResRet.f32 %3639, 0
  %3641 = fmul fast float %3640, %3611
  %3642 = fadd fast float %3641, %3614
  %3643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3644 = extractvalue %dx.types.CBufRet.f32 %3643, 0
  %3645 = extractvalue %dx.types.CBufRet.f32 %3643, 1
  %3646 = extractvalue %dx.types.CBufRet.f32 %3643, 2
  %3647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3648 = extractvalue %dx.types.CBufRet.f32 %3647, 3
  %3649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3650 = extractvalue %dx.types.CBufRet.f32 %3649, 3
  %3651 = extractvalue %dx.types.CBufRet.f32 %3643, 3
  %3652 = fadd fast float %3648, %3509
  %3653 = fadd fast float %3650, %3510
  %3654 = fadd fast float %3642, %3651
  %3655 = fmul fast float %3652, %3644
  %3656 = call float @dx.op.tertiary.f32(i32 46, float %3653, float %3645, float %3655)  ; FMad(a,b,c)
  %3657 = call float @dx.op.tertiary.f32(i32 46, float %3654, float %3646, float %3656)  ; FMad(a,b,c)
  %3658 = fsub fast float %3657, %3651
  %3659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3660 = extractvalue %dx.types.CBufRet.f32 %3659, 2
  %3661 = fsub fast float %3658, %3660
  %3662 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3663 = extractvalue %dx.types.CBufRet.i32 %3662, 0
  %3664 = call i32 @dx.op.binary.i32(i32 40, i32 %3540, i32 %3663)  ; UMin(a,b)
  %3665 = mul i32 %3664, 36
  %3666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3665, i32 undef)  ; BufferLoad(srv,index,wot)
  %3667 = extractvalue %dx.types.ResRet.i32 %3666, 0
  %3668 = add i32 %3665, 4
  %3669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3670 = extractvalue %dx.types.CBufRet.f32 %3669, 0
  %3671 = fmul fast float %3670, %3562
  %3672 = fmul fast float %3670, %3564
  %3673 = extractvalue %dx.types.CBufRet.f32 %3669, 1
  %3674 = fadd fast float %3671, %3673
  %3675 = fadd fast float %3672, %3673
  %3676 = icmp eq i32 %3667, 0
  br i1 %3676, label %3745, label %3677

; <label>:3677                                    ; preds = %3608
  br label %3678

; <label>:3678                                    ; preds = %3735, %3677
  %3679 = phi float [ %3736, %3735 ], [ 0.000000e+00, %3677 ]
  %3680 = phi float [ %3737, %3735 ], [ 0.000000e+00, %3677 ]
  %3681 = phi float [ %3738, %3735 ], [ 0.000000e+00, %3677 ]
  %3682 = phi float [ %3739, %3735 ], [ 0.000000e+00, %3677 ]
  %3683 = phi float [ %3740, %3735 ], [ 0.000000e+00, %3677 ]
  %3684 = phi float [ %3741, %3735 ], [ 0.000000e+00, %3677 ]
  %3685 = phi i32 [ %3742, %3735 ], [ 0, %3677 ]
  %3686 = shl i32 %3685, 2
  %3687 = add i32 %3553, %3686
  %3688 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3687, i32 undef)  ; BufferLoad(srv,index,wot)
  %3689 = extractvalue %dx.types.ResRet.f32 %3688, 0
  %3690 = add i32 %3557, %3686
  %3691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3690, i32 undef)  ; BufferLoad(srv,index,wot)
  %3692 = extractvalue %dx.types.ResRet.i32 %3691, 0
  %3693 = add i32 %3692, 0
  %3694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3693, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3695 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3694, i32 0)  ; GetDimensions(handle,mipLevel)
  %3696 = extractvalue %dx.types.Dimensions %3695, 0
  %3697 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3696)  ; FirstbitLo(value)
  %3698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3699 = extractvalue %dx.types.CBufRet.i32 %3698, 1
  %3700 = sub nsw i32 %3699, %3697
  %3701 = sitofp i32 %3700 to float
  %3702 = fsub fast float %3586, %3701
  %3703 = call float @dx.op.binary.f32(i32 35, float %3702, float 0.000000e+00)  ; FMax(a,b)
  %3704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3694, %dx.types.Handle %23, float %3674, float %3675, float %3689, float undef, i32 0, i32 0, i32 undef, float %3703)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3705 = extractvalue %dx.types.ResRet.f32 %3704, 0
  %3706 = fcmp fast ogt float %3705, 0.000000e+00
  br i1 %3706, label %3707, label %3735

; <label>:3707                                    ; preds = %3678
  %3708 = add i32 %3668, %3686
  %3709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3708, i32 undef)  ; BufferLoad(srv,index,wot)
  %3710 = extractvalue %dx.types.ResRet.i32 %3709, 0
  %3711 = and i32 %3710, 32767
  %3712 = mul nuw nsw i32 %3711, 928
  %3713 = add nuw nsw i32 %3712, 48
  %3714 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3715 = extractvalue %dx.types.ResRet.f32 %3714, 0
  %3716 = extractvalue %dx.types.ResRet.f32 %3714, 1
  %3717 = extractvalue %dx.types.ResRet.f32 %3714, 2
  %3718 = add nuw nsw i32 %3712, 60
  %3719 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3718, i32 undef)  ; BufferLoad(srv,index,wot)
  %3720 = extractvalue %dx.types.ResRet.f32 %3719, 0
  %3721 = extractvalue %dx.types.ResRet.f32 %3719, 1
  %3722 = extractvalue %dx.types.ResRet.f32 %3719, 2
  %3723 = fmul fast float %3715, %3705
  %3724 = fmul fast float %3716, %3705
  %3725 = fmul fast float %3717, %3705
  %3726 = fadd fast float %3723, %3679
  %3727 = fadd fast float %3724, %3680
  %3728 = fadd fast float %3725, %3681
  %3729 = fmul fast float %3720, %3705
  %3730 = fmul fast float %3721, %3705
  %3731 = fmul fast float %3722, %3705
  %3732 = fadd fast float %3729, %3682
  %3733 = fadd fast float %3730, %3683
  %3734 = fadd fast float %3731, %3684
  br label %3735

; <label>:3735                                    ; preds = %3707, %3678
  %3736 = phi float [ %3726, %3707 ], [ %3679, %3678 ]
  %3737 = phi float [ %3727, %3707 ], [ %3680, %3678 ]
  %3738 = phi float [ %3728, %3707 ], [ %3681, %3678 ]
  %3739 = phi float [ %3732, %3707 ], [ %3682, %3678 ]
  %3740 = phi float [ %3733, %3707 ], [ %3683, %3678 ]
  %3741 = phi float [ %3734, %3707 ], [ %3684, %3678 ]
  %3742 = add nuw i32 %3685, 1
  %3743 = icmp eq i32 %3742, %3667
  br i1 %3743, label %3744, label %3678

; <label>:3744                                    ; preds = %3735
  br label %3745

; <label>:3745                                    ; preds = %3744, %3608
  %3746 = phi float [ 0.000000e+00, %3608 ], [ %3736, %3744 ]
  %3747 = phi float [ 0.000000e+00, %3608 ], [ %3737, %3744 ]
  %3748 = phi float [ 0.000000e+00, %3608 ], [ %3738, %3744 ]
  %3749 = phi float [ 0.000000e+00, %3608 ], [ %3739, %3744 ]
  %3750 = phi float [ 0.000000e+00, %3608 ], [ %3740, %3744 ]
  %3751 = phi float [ 0.000000e+00, %3608 ], [ %3741, %3744 ]
  %3752 = fadd fast float %3749, %3746
  %3753 = fmul fast float %3752, 0x3F847AE140000000
  %3754 = fadd fast float %3750, %3747
  %3755 = fmul fast float %3754, 0x3F847AE140000000
  %3756 = fadd fast float %3751, %3748
  %3757 = fmul fast float %3756, 0x3F847AE140000000
  br label %3758

; <label>:3758                                    ; preds = %3745, %3542, %3487, %3484, %3455, %3417
  %3759 = phi float [ %3469, %3455 ], [ -1.310720e+05, %3417 ], [ %3661, %3745 ], [ -1.310720e+05, %3487 ], [ -1.310720e+05, %3542 ], [ -1.310720e+05, %3484 ]
  %3760 = phi float [ %3479, %3455 ], [ 0.000000e+00, %3417 ], [ %3753, %3745 ], [ 0.000000e+00, %3487 ], [ 0.000000e+00, %3542 ], [ 0.000000e+00, %3484 ]
  %3761 = phi float [ %3481, %3455 ], [ 0.000000e+00, %3417 ], [ %3755, %3745 ], [ 0.000000e+00, %3487 ], [ 0.000000e+00, %3542 ], [ 0.000000e+00, %3484 ]
  %3762 = phi float [ %3483, %3455 ], [ 0.000000e+00, %3417 ], [ %3757, %3745 ], [ 0.000000e+00, %3487 ], [ 0.000000e+00, %3542 ], [ 0.000000e+00, %3484 ]
  %3763 = phi i1 [ true, %3455 ], [ false, %3417 ], [ true, %3745 ], [ false, %3487 ], [ false, %3542 ], [ false, %3484 ]
  %3764 = and i32 %179, 3
  %3765 = icmp eq i32 %3764, 1
  %3766 = select i1 %3765, float 1.000000e+00, float 0.000000e+00
  %3767 = fsub fast float %3759, %163
  %3768 = call float @dx.op.unary.f32(i32 7, float %3767)  ; Saturate(value)
  %3769 = select i1 %3763, float %3768, float 1.000000e+00
  %3770 = fmul fast float %3769, %3766
  %3771 = icmp eq i32 %3764, 3
  %3772 = select i1 %3771, float 1.000000e+00, float %3770
  %3773 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3772)  ; FMax(a,b)
  %3774 = fcmp fast olt float %3772, 1.000000e+00
  %3775 = fcmp uge float %44, 0.000000e+00
  %3776 = and i1 %3775, %3774
  br i1 %3776, label %3777, label %3787

; <label>:3777                                    ; preds = %3758
  %3778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %23, float %44, float %45, float %46, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3779 = extractvalue %dx.types.ResRet.f32 %3778, 0
  %3780 = extractvalue %dx.types.ResRet.f32 %3778, 1
  %3781 = extractvalue %dx.types.ResRet.f32 %3778, 2
  %3782 = fadd fast float %3779, %3773
  %3783 = fcmp ule float %43, 0.000000e+00
  %3784 = call float @dx.op.dot3.f32(i32 55, float %40, float %41, float %42, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3785 = select i1 %3783, float %3784, float 1.000000e+00
  %3786 = fmul fast float %3785, %3781
  br label %3787

; <label>:3787                                    ; preds = %3777, %3758
  %3788 = phi float [ %3782, %3777 ], [ %3773, %3758 ]
  %3789 = phi float [ %3780, %3777 ], [ 0.000000e+00, %3758 ]
  %3790 = phi float [ %3786, %3777 ], [ 0.000000e+00, %3758 ]
  %3791 = call float @dx.op.unary.f32(i32 7, float %3788)  ; Saturate(value)
  %3792 = call float @dx.op.unary.f32(i32 7, float %3789)  ; Saturate(value)
  %3793 = call float @dx.op.unary.f32(i32 7, float %3790)  ; Saturate(value)
  %3794 = fcmp fast une float %3792, 0.000000e+00
  %3795 = fcmp fast une float %3793, 0.000000e+00
  %3796 = or i1 %3794, %3795
  br i1 %3796, label %3797, label %4356

; <label>:3797                                    ; preds = %3787
  br i1 %3794, label %3798, label %4071

; <label>:3798                                    ; preds = %3797
  %3799 = call float @dx.op.unary.f32(i32 23, float %3331)  ; Log(value)
  %3800 = fmul fast float %3799, 4.000000e+00
  %3801 = call float @dx.op.unary.f32(i32 21, float %3800)  ; Exp(value)
  %3802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3803 = extractvalue %dx.types.CBufRet.f32 %3802, 0
  %3804 = fmul fast float %3803, %30
  %3805 = fmul fast float %3803, %31
  %3806 = fmul fast float %3803, %32
  %3807 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %3808 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %3809 = call float @dx.op.unary.f32(i32 6, float %42)  ; FAbs(value)
  %3810 = call float @dx.op.unary.f32(i32 23, float %3807)  ; Log(value)
  %3811 = call float @dx.op.unary.f32(i32 23, float %3808)  ; Log(value)
  %3812 = call float @dx.op.unary.f32(i32 23, float %3809)  ; Log(value)
  %3813 = fmul fast float %3810, 4.000000e+00
  %3814 = fmul fast float %3811, 4.000000e+00
  %3815 = fmul fast float %3812, 4.000000e+00
  %3816 = call float @dx.op.unary.f32(i32 21, float %3813)  ; Exp(value)
  %3817 = call float @dx.op.unary.f32(i32 21, float %3814)  ; Exp(value)
  %3818 = call float @dx.op.unary.f32(i32 21, float %3815)  ; Exp(value)
  %3819 = fadd fast float %3817, %3816
  %3820 = fadd fast float %3819, %3818
  %3821 = fdiv fast float 1.000000e+00, %3820
  %3822 = fmul fast float %3821, %3816
  %3823 = fcmp fast ogt float %40, 0.000000e+00
  %3824 = fcmp fast ogt float %41, 0.000000e+00
  %3825 = fcmp fast ogt float %42, 0.000000e+00
  %3826 = fcmp fast olt float %40, 0.000000e+00
  %3827 = fcmp fast olt float %41, 0.000000e+00
  %3828 = fcmp fast olt float %42, 0.000000e+00
  %3829 = zext i1 %3823 to i32
  %3830 = zext i1 %3824 to i32
  %3831 = zext i1 %3825 to i32
  %3832 = zext i1 %3826 to i32
  %3833 = zext i1 %3827 to i32
  %3834 = zext i1 %3828 to i32
  %3835 = sub nsw i32 %3829, %3832
  %3836 = sub nsw i32 %3830, %3833
  %3837 = sub nsw i32 %3831, %3834
  %3838 = call float @dx.op.unary.f32(i32 83, float %3804)  ; DerivCoarseX(value)
  %3839 = call float @dx.op.unary.f32(i32 83, float %3805)  ; DerivCoarseX(value)
  %3840 = call float @dx.op.unary.f32(i32 83, float %3806)  ; DerivCoarseX(value)
  %3841 = call float @dx.op.unary.f32(i32 84, float %3804)  ; DerivCoarseY(value)
  %3842 = call float @dx.op.unary.f32(i32 84, float %3805)  ; DerivCoarseY(value)
  %3843 = call float @dx.op.unary.f32(i32 84, float %3806)  ; DerivCoarseY(value)
  %3844 = fcmp fast ole float %211, %3822
  %3845 = fmul fast float %3821, %3819
  %3846 = fcmp fast ole float %211, %3845
  %3847 = select i1 %3846, float %3806, float %3804
  %3848 = select i1 %3846, float %3804, float %3805
  %3849 = select i1 %3844, float %3805, float %3847
  %3850 = select i1 %3844, float %3806, float %3848
  %3851 = select i1 %3846, float %3840, float %3838
  %3852 = select i1 %3846, float %3838, float %3839
  %3853 = select i1 %3844, float %3839, float %3851
  %3854 = select i1 %3844, float %3840, float %3852
  %3855 = select i1 %3846, float %3843, float %3841
  %3856 = select i1 %3846, float %3841, float %3842
  %3857 = select i1 %3844, float %3842, float %3855
  %3858 = select i1 %3844, float %3843, float %3856
  %3859 = call float @dx.op.unary.f32(i32 27, float %3849)  ; Round_ni(value)
  %3860 = call float @dx.op.unary.f32(i32 27, float %3850)  ; Round_ni(value)
  %3861 = fptosi float %3859 to i32
  %3862 = fptosi float %3860 to i32
  %3863 = xor i32 %3862, %3861
  %3864 = sitofp i32 %3863 to float
  %3865 = fptosi float %3864 to i32
  %3866 = sitofp i32 %3865 to float
  %3867 = fmul fast float %3866, 0x3FE3C6EF40000000
  %3868 = frem fast float %3859, 2.560000e+02
  %3869 = frem fast float %3860, 2.560000e+02
  %3870 = fptoui float %3868 to i32
  %3871 = fptoui float %3869 to i32
  %3872 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %3870, i32 %3871, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3873 = extractvalue %dx.types.ResRet.f32 %3872, 0
  %3874 = extractvalue %dx.types.ResRet.f32 %3872, 1
  %3875 = extractvalue %dx.types.ResRet.f32 %3872, 2
  %3876 = fadd fast float %3873, %3867
  %3877 = fadd fast float %3874, %3867
  %3878 = fadd fast float %3875, %3867
  %3879 = call float @dx.op.unary.f32(i32 22, float %3876)  ; Frc(value)
  %3880 = call float @dx.op.unary.f32(i32 22, float %3877)  ; Frc(value)
  %3881 = call float @dx.op.unary.f32(i32 22, float %3878)  ; Frc(value)
  %3882 = fmul fast float %3881, 0x401921FB60000000
  %3883 = call float @dx.op.unary.f32(i32 13, float %3882)  ; Sin(value)
  %3884 = call float @dx.op.unary.f32(i32 12, float %3882)  ; Cos(value)
  %3885 = fsub fast float -0.000000e+00, %3884
  %3886 = fmul fast float %3884, %3849
  %3887 = call float @dx.op.tertiary.f32(i32 46, float %3883, float %3850, float %3886)  ; FMad(a,b,c)
  %3888 = fmul fast float %3883, %3849
  %3889 = call float @dx.op.tertiary.f32(i32 46, float %3885, float %3850, float %3888)  ; FMad(a,b,c)
  %3890 = fadd fast float %3887, %3879
  %3891 = fadd fast float %3889, %3880
  %3892 = extractvalue %dx.types.CBufRet.f32 %3802, 3
  %3893 = bitcast float %3892 to i32
  %3894 = icmp eq i32 %3893, 0
  br i1 %3894, label %3933, label %3895

; <label>:3895                                    ; preds = %3798
  %3896 = add i32 %3893, 0
  %3897 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3896, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3898 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3897, %dx.types.Handle %71, float %3890, float %3891, float undef, float undef, i32 0, i32 0, i32 undef, float %3853, float %3854, float undef, float %3857, float %3858, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3899 = extractvalue %dx.types.ResRet.f32 %3898, 0
  %3900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3901 = extractvalue %dx.types.CBufRet.f32 %3900, 1
  %3902 = extractvalue %dx.types.CBufRet.f32 %3900, 2
  %3903 = fsub fast float 1.000000e+00, %3792
  %3904 = call float @dx.op.binary.f32(i32 35, float %3903, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3905 = bitcast float %3792 to i32
  %3906 = sitofp i32 %3905 to float
  %3907 = fadd fast float %3906, 0xC1CFBF8940000000
  %3908 = fmul fast float %3902, %3907
  %3909 = fadd fast float %3908, 0x41CFBF8940000000
  %3910 = fptosi float %3909 to i32
  %3911 = bitcast i32 %3910 to float
  %3912 = bitcast float %3904 to i32
  %3913 = sitofp i32 %3912 to float
  %3914 = fadd fast float %3913, 0xC1CFBF8940000000
  %3915 = fmul fast float %3914, %3902
  %3916 = fadd fast float %3915, 0x41CFBF8940000000
  %3917 = fptosi float %3916 to i32
  %3918 = bitcast i32 %3917 to float
  %3919 = fmul fast float %3911, %3901
  %3920 = fmul fast float %3918, %3901
  %3921 = fsub fast float %3904, %3919
  %3922 = fadd fast float %3920, %3904
  %3923 = call float @dx.op.unary.f32(i32 7, float %3921)  ; Saturate(value)
  %3924 = call float @dx.op.unary.f32(i32 7, float %3922)  ; Saturate(value)
  %3925 = fsub fast float %3899, %3923
  %3926 = fsub fast float %3924, %3923
  %3927 = bitcast float %3926 to i32
  %3928 = sub nsw i32 2129859010, %3927
  %3929 = bitcast i32 %3928 to float
  %3930 = fmul fast float %3929, %3925
  %3931 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  %3932 = fcmp fast olt float %3931, 0x3F70101020000000
  br i1 %3932, label %4071, label %3933

; <label>:3933                                    ; preds = %3895, %3798
  %3934 = phi float [ %3931, %3895 ], [ %3792, %3798 ]
  %3935 = fmul fast float %3934, %3801
  %3936 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3937 = extractvalue %dx.types.CBufRet.i32 %3936, 1
  %3938 = extractvalue %dx.types.CBufRet.i32 %3936, 0
  %3939 = add i32 %3938, 0
  %3940 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3939, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3941 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3940, %dx.types.Handle %70, float %3890, float %3891, float undef, float undef, i32 0, i32 0, i32 undef, float %3853, float %3854, float undef, float %3857, float %3858, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3942 = extractvalue %dx.types.ResRet.f32 %3941, 0
  %3943 = extractvalue %dx.types.ResRet.f32 %3941, 1
  %3944 = extractvalue %dx.types.ResRet.f32 %3941, 2
  %3945 = extractvalue %dx.types.ResRet.f32 %3941, 3
  %3946 = and i32 %3937, 255
  %3947 = uitofp i32 %3946 to float
  %3948 = lshr i32 %3937, 8
  %3949 = and i32 %3948, 255
  %3950 = uitofp i32 %3949 to float
  %3951 = fmul fast float %3945, %3947
  %3952 = fadd fast float %3951, %3950
  %3953 = fmul fast float %3952, 0x3F70101000000000
  %3954 = fadd fast float %3953, 0xBFB99999A0000000
  %3955 = call float @dx.op.unary.f32(i32 7, float %3954)  ; Saturate(value)
  %3956 = fmul fast float %3955, 0x3FF1C71C80000000
  %3957 = call float @dx.op.binary.f32(i32 36, float %3953, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3958 = fsub fast float 1.000000e+00, %3956
  %3959 = call float @dx.op.unary.f32(i32 7, float %3958)  ; Saturate(value)
  %3960 = fmul fast float %3959, %3942
  %3961 = fmul fast float %3959, %3943
  %3962 = fmul fast float %3959, %3944
  %3963 = call float @dx.op.unary.f32(i32 7, float %3960)  ; Saturate(value)
  %3964 = call float @dx.op.unary.f32(i32 7, float %3961)  ; Saturate(value)
  %3965 = call float @dx.op.unary.f32(i32 7, float %3962)  ; Saturate(value)
  %3966 = fmul fast float %3956, %3942
  %3967 = fmul fast float %3956, %3943
  %3968 = fmul fast float %3956, %3944
  %3969 = fadd fast float %3966, %3957
  %3970 = fadd fast float %3967, %3957
  %3971 = fadd fast float %3968, %3957
  %3972 = call float @dx.op.unary.f32(i32 7, float %3969)  ; Saturate(value)
  %3973 = call float @dx.op.unary.f32(i32 7, float %3970)  ; Saturate(value)
  %3974 = call float @dx.op.unary.f32(i32 7, float %3971)  ; Saturate(value)
  %3975 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3976 = extractvalue %dx.types.CBufRet.i32 %3975, 3
  %3977 = extractvalue %dx.types.CBufRet.i32 %3975, 2
  %3978 = add i32 %3977, 0
  %3979 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3978, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3980 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3979, %dx.types.Handle %70, float %3890, float %3891, float undef, float undef, i32 0, i32 0, i32 undef, float %3853, float %3854, float undef, float %3857, float %3858, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3981 = extractvalue %dx.types.ResRet.f32 %3980, 0
  %3982 = extractvalue %dx.types.ResRet.f32 %3980, 1
  %3983 = extractvalue %dx.types.ResRet.f32 %3980, 2
  %3984 = extractvalue %dx.types.ResRet.f32 %3980, 3
  %3985 = and i32 %3976, 255
  %3986 = uitofp i32 %3985 to float
  %3987 = lshr i32 %3976, 8
  %3988 = and i32 %3987, 255
  %3989 = uitofp i32 %3988 to float
  %3990 = lshr i32 %3976, 16
  %3991 = and i32 %3990, 255
  %3992 = uitofp i32 %3991 to float
  %3993 = fmul fast float %3992, 0x3F70101000000000
  %3994 = fmul fast float %3981, %3986
  %3995 = fadd fast float %3994, %3989
  %3996 = fmul fast float %3995, 0x3F70101000000000
  %3997 = fadd fast float %3982, -5.000000e-01
  %3998 = fadd fast float %3984, -5.000000e-01
  %3999 = fmul fast float %3997, %3993
  %4000 = fmul fast float %3998, %3993
  %4001 = fadd fast float %3999, 5.000000e-01
  %4002 = fadd fast float %4000, 5.000000e-01
  %4003 = fmul fast float %4001, 2.000000e+00
  %4004 = fadd fast float %4003, -1.000000e+00
  %4005 = fmul fast float %4002, 2.000000e+00
  %4006 = fadd fast float %4005, -1.000000e+00
  %4007 = fadd fast float %4004, %4006
  %4008 = fmul fast float %4007, 5.000000e-01
  %4009 = fsub fast float %4004, %4006
  %4010 = fmul fast float %4009, 5.000000e-01
  %4011 = call float @dx.op.unary.f32(i32 6, float %4008)  ; FAbs(value)
  %4012 = fsub fast float 1.000000e+00, %4011
  %4013 = call float @dx.op.unary.f32(i32 6, float %4010)  ; FAbs(value)
  %4014 = fsub fast float %4012, %4013
  %4015 = call float @dx.op.dot3.f32(i32 55, float %4008, float %4010, float %4014, float %4008, float %4010, float %4014)  ; Dot3(ax,ay,az,bx,by,bz)
  %4016 = call float @dx.op.unary.f32(i32 25, float %4015)  ; Rsqrt(value)
  %4017 = fmul fast float %4008, %4016
  %4018 = fmul fast float %4010, %4016
  %4019 = select i1 %3846, i32 %3836, i32 %3837
  %4020 = select i1 %3844, i32 %3835, i32 %4019
  %4021 = sitofp i32 %4020 to float
  %4022 = fmul fast float %4014, %4021
  %4023 = fmul fast float %4022, %4016
  %4024 = select i1 %3846, float %4023, float %4018
  %4025 = select i1 %3846, float %4018, float %4023
  %4026 = select i1 %3844, float %4023, float %4017
  %4027 = select i1 %3844, float %4018, float %4024
  %4028 = select i1 %3844, float %4017, float %4025
  %4029 = fsub fast float %3963, %3396
  %4030 = fsub fast float %3964, %3397
  %4031 = fsub fast float %3965, %3398
  %4032 = fmul fast float %4029, %3935
  %4033 = fmul fast float %4030, %3935
  %4034 = fmul fast float %4031, %3935
  %4035 = fadd fast float %4032, %3396
  %4036 = fadd fast float %4033, %3397
  %4037 = fadd fast float %4034, %3398
  %4038 = fsub fast float %3972, %3381
  %4039 = fsub fast float %3973, %3382
  %4040 = fsub fast float %3974, %3383
  %4041 = fmul fast float %4038, %3935
  %4042 = fmul fast float %4039, %3935
  %4043 = fmul fast float %4040, %3935
  %4044 = fadd fast float %4041, %3381
  %4045 = fadd fast float %4042, %3382
  %4046 = fadd fast float %4043, %3383
  %4047 = fadd fast float %4026, %3360
  %4048 = fadd fast float %4027, %3361
  %4049 = fadd fast float %4028, %3362
  %4050 = call float @dx.op.dot3.f32(i32 55, float %4047, float %4048, float %4049, float %4047, float %4048, float %4049)  ; Dot3(ax,ay,az,bx,by,bz)
  %4051 = call float @dx.op.unary.f32(i32 25, float %4050)  ; Rsqrt(value)
  %4052 = fmul fast float %4047, %4051
  %4053 = fmul fast float %4048, %4051
  %4054 = fmul fast float %4049, %4051
  %4055 = fsub fast float %4052, %3360
  %4056 = fsub fast float %4053, %3361
  %4057 = fsub fast float %4054, %3362
  %4058 = fmul fast float %4055, %3935
  %4059 = fmul fast float %4056, %3935
  %4060 = fmul fast float %4057, %3935
  %4061 = fadd fast float %4058, %3360
  %4062 = fadd fast float %4059, %3361
  %4063 = fadd fast float %4060, %3362
  %4064 = call float @dx.op.binary.f32(i32 36, float %3331, float %3983)  ; FMin(a,b)
  %4065 = fsub fast float %4064, %3331
  %4066 = fmul fast float %4065, %3935
  %4067 = fadd fast float %4066, %3331
  %4068 = fsub fast float %3996, %3384
  %4069 = fmul fast float %4068, %3935
  %4070 = fadd fast float %4069, %3384
  br label %4071

; <label>:4071                                    ; preds = %3933, %3895, %3797
  %4072 = phi float [ %4044, %3933 ], [ %3381, %3895 ], [ %3381, %3797 ]
  %4073 = phi float [ %4045, %3933 ], [ %3382, %3895 ], [ %3382, %3797 ]
  %4074 = phi float [ %4046, %3933 ], [ %3383, %3895 ], [ %3383, %3797 ]
  %4075 = phi float [ %4035, %3933 ], [ %3396, %3895 ], [ %3396, %3797 ]
  %4076 = phi float [ %4036, %3933 ], [ %3397, %3895 ], [ %3397, %3797 ]
  %4077 = phi float [ %4037, %3933 ], [ %3398, %3895 ], [ %3398, %3797 ]
  %4078 = phi float [ %4061, %3933 ], [ %3360, %3895 ], [ %3360, %3797 ]
  %4079 = phi float [ %4062, %3933 ], [ %3361, %3895 ], [ %3361, %3797 ]
  %4080 = phi float [ %4063, %3933 ], [ %3362, %3895 ], [ %3362, %3797 ]
  %4081 = phi float [ %4070, %3933 ], [ %3384, %3895 ], [ %3384, %3797 ]
  %4082 = phi float [ %4067, %3933 ], [ %3331, %3895 ], [ %3331, %3797 ]
  br i1 %3795, label %4083, label %4356

; <label>:4083                                    ; preds = %4071
  %4084 = call float @dx.op.unary.f32(i32 23, float %4082)  ; Log(value)
  %4085 = fmul fast float %4084, 4.000000e+00
  %4086 = call float @dx.op.unary.f32(i32 21, float %4085)  ; Exp(value)
  %4087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4088 = extractvalue %dx.types.CBufRet.f32 %4087, 0
  %4089 = fmul fast float %4088, %30
  %4090 = fmul fast float %4088, %31
  %4091 = fmul fast float %4088, %32
  %4092 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %4093 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %4094 = call float @dx.op.unary.f32(i32 6, float %42)  ; FAbs(value)
  %4095 = call float @dx.op.unary.f32(i32 23, float %4092)  ; Log(value)
  %4096 = call float @dx.op.unary.f32(i32 23, float %4093)  ; Log(value)
  %4097 = call float @dx.op.unary.f32(i32 23, float %4094)  ; Log(value)
  %4098 = fmul fast float %4095, 4.000000e+00
  %4099 = fmul fast float %4096, 4.000000e+00
  %4100 = fmul fast float %4097, 4.000000e+00
  %4101 = call float @dx.op.unary.f32(i32 21, float %4098)  ; Exp(value)
  %4102 = call float @dx.op.unary.f32(i32 21, float %4099)  ; Exp(value)
  %4103 = call float @dx.op.unary.f32(i32 21, float %4100)  ; Exp(value)
  %4104 = fadd fast float %4102, %4101
  %4105 = fadd fast float %4104, %4103
  %4106 = fdiv fast float 1.000000e+00, %4105
  %4107 = fmul fast float %4106, %4101
  %4108 = fcmp fast ogt float %40, 0.000000e+00
  %4109 = fcmp fast ogt float %41, 0.000000e+00
  %4110 = fcmp fast ogt float %42, 0.000000e+00
  %4111 = fcmp fast olt float %40, 0.000000e+00
  %4112 = fcmp fast olt float %41, 0.000000e+00
  %4113 = fcmp fast olt float %42, 0.000000e+00
  %4114 = zext i1 %4108 to i32
  %4115 = zext i1 %4109 to i32
  %4116 = zext i1 %4110 to i32
  %4117 = zext i1 %4111 to i32
  %4118 = zext i1 %4112 to i32
  %4119 = zext i1 %4113 to i32
  %4120 = sub nsw i32 %4114, %4117
  %4121 = sub nsw i32 %4115, %4118
  %4122 = sub nsw i32 %4116, %4119
  %4123 = call float @dx.op.unary.f32(i32 83, float %4089)  ; DerivCoarseX(value)
  %4124 = call float @dx.op.unary.f32(i32 83, float %4090)  ; DerivCoarseX(value)
  %4125 = call float @dx.op.unary.f32(i32 83, float %4091)  ; DerivCoarseX(value)
  %4126 = call float @dx.op.unary.f32(i32 84, float %4089)  ; DerivCoarseY(value)
  %4127 = call float @dx.op.unary.f32(i32 84, float %4090)  ; DerivCoarseY(value)
  %4128 = call float @dx.op.unary.f32(i32 84, float %4091)  ; DerivCoarseY(value)
  %4129 = fcmp fast ole float %211, %4107
  %4130 = fmul fast float %4106, %4104
  %4131 = fcmp fast ole float %211, %4130
  %4132 = select i1 %4131, float %4091, float %4089
  %4133 = select i1 %4131, float %4089, float %4090
  %4134 = select i1 %4129, float %4090, float %4132
  %4135 = select i1 %4129, float %4091, float %4133
  %4136 = select i1 %4131, float %4125, float %4123
  %4137 = select i1 %4131, float %4123, float %4124
  %4138 = select i1 %4129, float %4124, float %4136
  %4139 = select i1 %4129, float %4125, float %4137
  %4140 = select i1 %4131, float %4128, float %4126
  %4141 = select i1 %4131, float %4126, float %4127
  %4142 = select i1 %4129, float %4127, float %4140
  %4143 = select i1 %4129, float %4128, float %4141
  %4144 = call float @dx.op.unary.f32(i32 27, float %4134)  ; Round_ni(value)
  %4145 = call float @dx.op.unary.f32(i32 27, float %4135)  ; Round_ni(value)
  %4146 = fptosi float %4144 to i32
  %4147 = fptosi float %4145 to i32
  %4148 = xor i32 %4147, %4146
  %4149 = sitofp i32 %4148 to float
  %4150 = fptosi float %4149 to i32
  %4151 = sitofp i32 %4150 to float
  %4152 = fmul fast float %4151, 0x3FE3C6EF40000000
  %4153 = frem fast float %4144, 2.560000e+02
  %4154 = frem fast float %4145, 2.560000e+02
  %4155 = fptoui float %4153 to i32
  %4156 = fptoui float %4154 to i32
  %4157 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %4155, i32 %4156, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4158 = extractvalue %dx.types.ResRet.f32 %4157, 0
  %4159 = extractvalue %dx.types.ResRet.f32 %4157, 1
  %4160 = extractvalue %dx.types.ResRet.f32 %4157, 2
  %4161 = fadd fast float %4158, %4152
  %4162 = fadd fast float %4159, %4152
  %4163 = fadd fast float %4160, %4152
  %4164 = call float @dx.op.unary.f32(i32 22, float %4161)  ; Frc(value)
  %4165 = call float @dx.op.unary.f32(i32 22, float %4162)  ; Frc(value)
  %4166 = call float @dx.op.unary.f32(i32 22, float %4163)  ; Frc(value)
  %4167 = fmul fast float %4166, 0x401921FB60000000
  %4168 = call float @dx.op.unary.f32(i32 13, float %4167)  ; Sin(value)
  %4169 = call float @dx.op.unary.f32(i32 12, float %4167)  ; Cos(value)
  %4170 = fsub fast float -0.000000e+00, %4169
  %4171 = fmul fast float %4169, %4134
  %4172 = call float @dx.op.tertiary.f32(i32 46, float %4168, float %4135, float %4171)  ; FMad(a,b,c)
  %4173 = fmul fast float %4168, %4134
  %4174 = call float @dx.op.tertiary.f32(i32 46, float %4170, float %4135, float %4173)  ; FMad(a,b,c)
  %4175 = fadd fast float %4172, %4164
  %4176 = fadd fast float %4174, %4165
  %4177 = extractvalue %dx.types.CBufRet.f32 %4087, 3
  %4178 = bitcast float %4177 to i32
  %4179 = icmp eq i32 %4178, 0
  br i1 %4179, label %4218, label %4180

; <label>:4180                                    ; preds = %4083
  %4181 = add i32 %4178, 0
  %4182 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4181, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4183 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4182, %dx.types.Handle %71, float %4175, float %4176, float undef, float undef, i32 0, i32 0, i32 undef, float %4138, float %4139, float undef, float %4142, float %4143, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4184 = extractvalue %dx.types.ResRet.f32 %4183, 0
  %4185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4186 = extractvalue %dx.types.CBufRet.f32 %4185, 1
  %4187 = extractvalue %dx.types.CBufRet.f32 %4185, 2
  %4188 = fsub fast float 1.000000e+00, %3793
  %4189 = call float @dx.op.binary.f32(i32 35, float %4188, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4190 = bitcast float %3793 to i32
  %4191 = sitofp i32 %4190 to float
  %4192 = fadd fast float %4191, 0xC1CFBF8940000000
  %4193 = fmul fast float %4187, %4192
  %4194 = fadd fast float %4193, 0x41CFBF8940000000
  %4195 = fptosi float %4194 to i32
  %4196 = bitcast i32 %4195 to float
  %4197 = bitcast float %4189 to i32
  %4198 = sitofp i32 %4197 to float
  %4199 = fadd fast float %4198, 0xC1CFBF8940000000
  %4200 = fmul fast float %4199, %4187
  %4201 = fadd fast float %4200, 0x41CFBF8940000000
  %4202 = fptosi float %4201 to i32
  %4203 = bitcast i32 %4202 to float
  %4204 = fmul fast float %4196, %4186
  %4205 = fmul fast float %4203, %4186
  %4206 = fsub fast float %4189, %4204
  %4207 = fadd fast float %4205, %4189
  %4208 = call float @dx.op.unary.f32(i32 7, float %4206)  ; Saturate(value)
  %4209 = call float @dx.op.unary.f32(i32 7, float %4207)  ; Saturate(value)
  %4210 = fsub fast float %4184, %4208
  %4211 = fsub fast float %4209, %4208
  %4212 = bitcast float %4211 to i32
  %4213 = sub nsw i32 2129859010, %4212
  %4214 = bitcast i32 %4213 to float
  %4215 = fmul fast float %4214, %4210
  %4216 = call float @dx.op.unary.f32(i32 7, float %4215)  ; Saturate(value)
  %4217 = fcmp fast olt float %4216, 0x3F70101020000000
  br i1 %4217, label %4356, label %4218

; <label>:4218                                    ; preds = %4180, %4083
  %4219 = phi float [ %4216, %4180 ], [ %3793, %4083 ]
  %4220 = fmul fast float %4219, %4086
  %4221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4222 = extractvalue %dx.types.CBufRet.i32 %4221, 1
  %4223 = extractvalue %dx.types.CBufRet.i32 %4221, 0
  %4224 = add i32 %4223, 0
  %4225 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4224, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4226 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4225, %dx.types.Handle %70, float %4175, float %4176, float undef, float undef, i32 0, i32 0, i32 undef, float %4138, float %4139, float undef, float %4142, float %4143, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4227 = extractvalue %dx.types.ResRet.f32 %4226, 0
  %4228 = extractvalue %dx.types.ResRet.f32 %4226, 1
  %4229 = extractvalue %dx.types.ResRet.f32 %4226, 2
  %4230 = extractvalue %dx.types.ResRet.f32 %4226, 3
  %4231 = and i32 %4222, 255
  %4232 = uitofp i32 %4231 to float
  %4233 = lshr i32 %4222, 8
  %4234 = and i32 %4233, 255
  %4235 = uitofp i32 %4234 to float
  %4236 = fmul fast float %4230, %4232
  %4237 = fadd fast float %4236, %4235
  %4238 = fmul fast float %4237, 0x3F70101000000000
  %4239 = fadd fast float %4238, 0xBFB99999A0000000
  %4240 = call float @dx.op.unary.f32(i32 7, float %4239)  ; Saturate(value)
  %4241 = fmul fast float %4240, 0x3FF1C71C80000000
  %4242 = call float @dx.op.binary.f32(i32 36, float %4238, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4243 = fsub fast float 1.000000e+00, %4241
  %4244 = call float @dx.op.unary.f32(i32 7, float %4243)  ; Saturate(value)
  %4245 = fmul fast float %4244, %4227
  %4246 = fmul fast float %4244, %4228
  %4247 = fmul fast float %4244, %4229
  %4248 = call float @dx.op.unary.f32(i32 7, float %4245)  ; Saturate(value)
  %4249 = call float @dx.op.unary.f32(i32 7, float %4246)  ; Saturate(value)
  %4250 = call float @dx.op.unary.f32(i32 7, float %4247)  ; Saturate(value)
  %4251 = fmul fast float %4241, %4227
  %4252 = fmul fast float %4241, %4228
  %4253 = fmul fast float %4241, %4229
  %4254 = fadd fast float %4251, %4242
  %4255 = fadd fast float %4252, %4242
  %4256 = fadd fast float %4253, %4242
  %4257 = call float @dx.op.unary.f32(i32 7, float %4254)  ; Saturate(value)
  %4258 = call float @dx.op.unary.f32(i32 7, float %4255)  ; Saturate(value)
  %4259 = call float @dx.op.unary.f32(i32 7, float %4256)  ; Saturate(value)
  %4260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4261 = extractvalue %dx.types.CBufRet.i32 %4260, 3
  %4262 = extractvalue %dx.types.CBufRet.i32 %4260, 2
  %4263 = add i32 %4262, 0
  %4264 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4263, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4265 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4264, %dx.types.Handle %70, float %4175, float %4176, float undef, float undef, i32 0, i32 0, i32 undef, float %4138, float %4139, float undef, float %4142, float %4143, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4266 = extractvalue %dx.types.ResRet.f32 %4265, 0
  %4267 = extractvalue %dx.types.ResRet.f32 %4265, 1
  %4268 = extractvalue %dx.types.ResRet.f32 %4265, 2
  %4269 = extractvalue %dx.types.ResRet.f32 %4265, 3
  %4270 = and i32 %4261, 255
  %4271 = uitofp i32 %4270 to float
  %4272 = lshr i32 %4261, 8
  %4273 = and i32 %4272, 255
  %4274 = uitofp i32 %4273 to float
  %4275 = lshr i32 %4261, 16
  %4276 = and i32 %4275, 255
  %4277 = uitofp i32 %4276 to float
  %4278 = fmul fast float %4277, 0x3F70101000000000
  %4279 = fmul fast float %4266, %4271
  %4280 = fadd fast float %4279, %4274
  %4281 = fmul fast float %4280, 0x3F70101000000000
  %4282 = fadd fast float %4267, -5.000000e-01
  %4283 = fadd fast float %4269, -5.000000e-01
  %4284 = fmul fast float %4282, %4278
  %4285 = fmul fast float %4283, %4278
  %4286 = fadd fast float %4284, 5.000000e-01
  %4287 = fadd fast float %4285, 5.000000e-01
  %4288 = fmul fast float %4286, 2.000000e+00
  %4289 = fadd fast float %4288, -1.000000e+00
  %4290 = fmul fast float %4287, 2.000000e+00
  %4291 = fadd fast float %4290, -1.000000e+00
  %4292 = fadd fast float %4289, %4291
  %4293 = fmul fast float %4292, 5.000000e-01
  %4294 = fsub fast float %4289, %4291
  %4295 = fmul fast float %4294, 5.000000e-01
  %4296 = call float @dx.op.unary.f32(i32 6, float %4293)  ; FAbs(value)
  %4297 = fsub fast float 1.000000e+00, %4296
  %4298 = call float @dx.op.unary.f32(i32 6, float %4295)  ; FAbs(value)
  %4299 = fsub fast float %4297, %4298
  %4300 = call float @dx.op.dot3.f32(i32 55, float %4293, float %4295, float %4299, float %4293, float %4295, float %4299)  ; Dot3(ax,ay,az,bx,by,bz)
  %4301 = call float @dx.op.unary.f32(i32 25, float %4300)  ; Rsqrt(value)
  %4302 = fmul fast float %4293, %4301
  %4303 = fmul fast float %4295, %4301
  %4304 = select i1 %4131, i32 %4121, i32 %4122
  %4305 = select i1 %4129, i32 %4120, i32 %4304
  %4306 = sitofp i32 %4305 to float
  %4307 = fmul fast float %4299, %4306
  %4308 = fmul fast float %4307, %4301
  %4309 = select i1 %4131, float %4308, float %4303
  %4310 = select i1 %4131, float %4303, float %4308
  %4311 = select i1 %4129, float %4308, float %4302
  %4312 = select i1 %4129, float %4303, float %4309
  %4313 = select i1 %4129, float %4302, float %4310
  %4314 = fsub fast float %4248, %4075
  %4315 = fsub fast float %4249, %4076
  %4316 = fsub fast float %4250, %4077
  %4317 = fmul fast float %4314, %4220
  %4318 = fmul fast float %4315, %4220
  %4319 = fmul fast float %4316, %4220
  %4320 = fadd fast float %4317, %4075
  %4321 = fadd fast float %4318, %4076
  %4322 = fadd fast float %4319, %4077
  %4323 = fsub fast float %4257, %4072
  %4324 = fsub fast float %4258, %4073
  %4325 = fsub fast float %4259, %4074
  %4326 = fmul fast float %4323, %4220
  %4327 = fmul fast float %4324, %4220
  %4328 = fmul fast float %4325, %4220
  %4329 = fadd fast float %4326, %4072
  %4330 = fadd fast float %4327, %4073
  %4331 = fadd fast float %4328, %4074
  %4332 = fadd fast float %4311, %4078
  %4333 = fadd fast float %4312, %4079
  %4334 = fadd fast float %4313, %4080
  %4335 = call float @dx.op.dot3.f32(i32 55, float %4332, float %4333, float %4334, float %4332, float %4333, float %4334)  ; Dot3(ax,ay,az,bx,by,bz)
  %4336 = call float @dx.op.unary.f32(i32 25, float %4335)  ; Rsqrt(value)
  %4337 = fmul fast float %4332, %4336
  %4338 = fmul fast float %4333, %4336
  %4339 = fmul fast float %4334, %4336
  %4340 = fsub fast float %4337, %4078
  %4341 = fsub fast float %4338, %4079
  %4342 = fsub fast float %4339, %4080
  %4343 = fmul fast float %4340, %4220
  %4344 = fmul fast float %4341, %4220
  %4345 = fmul fast float %4342, %4220
  %4346 = fadd fast float %4343, %4078
  %4347 = fadd fast float %4344, %4079
  %4348 = fadd fast float %4345, %4080
  %4349 = call float @dx.op.binary.f32(i32 36, float %4082, float %4268)  ; FMin(a,b)
  %4350 = fsub fast float %4349, %4082
  %4351 = fmul fast float %4350, %4220
  %4352 = fadd fast float %4351, %4082
  %4353 = fsub fast float %4281, %4081
  %4354 = fmul fast float %4353, %4220
  %4355 = fadd fast float %4354, %4081
  br label %4356

; <label>:4356                                    ; preds = %4218, %4180, %4071, %3787
  %4357 = phi float [ %4329, %4218 ], [ %4072, %4180 ], [ %4072, %4071 ], [ %3381, %3787 ]
  %4358 = phi float [ %4330, %4218 ], [ %4073, %4180 ], [ %4073, %4071 ], [ %3382, %3787 ]
  %4359 = phi float [ %4331, %4218 ], [ %4074, %4180 ], [ %4074, %4071 ], [ %3383, %3787 ]
  %4360 = phi float [ %4320, %4218 ], [ %4075, %4180 ], [ %4075, %4071 ], [ %3396, %3787 ]
  %4361 = phi float [ %4321, %4218 ], [ %4076, %4180 ], [ %4076, %4071 ], [ %3397, %3787 ]
  %4362 = phi float [ %4322, %4218 ], [ %4077, %4180 ], [ %4077, %4071 ], [ %3398, %3787 ]
  %4363 = phi float [ %4346, %4218 ], [ %4078, %4180 ], [ %4078, %4071 ], [ %3360, %3787 ]
  %4364 = phi float [ %4347, %4218 ], [ %4079, %4180 ], [ %4079, %4071 ], [ %3361, %3787 ]
  %4365 = phi float [ %4348, %4218 ], [ %4080, %4180 ], [ %4080, %4071 ], [ %3362, %3787 ]
  %4366 = phi float [ %4355, %4218 ], [ %4081, %4180 ], [ %4081, %4071 ], [ %3384, %3787 ]
  %4367 = phi float [ %4352, %4218 ], [ %4082, %4180 ], [ %4082, %4071 ], [ %3331, %3787 ]
  %4368 = fcmp fast une float %3791, 0.000000e+00
  %4369 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %161, float %162, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %4370 = call float @dx.op.unary.f32(i32 25, float %4369)  ; Rsqrt(value)
  br i1 %4368, label %4378, label %4371

; <label>:4371                                    ; preds = %4356
  %4372 = fmul fast float %4370, %161
  %4373 = fmul fast float %4370, %162
  %4374 = fmul fast float %4370, %163
  %4375 = fsub fast float -0.000000e+00, %4372
  %4376 = fsub fast float -0.000000e+00, %4373
  %4377 = fsub fast float -0.000000e+00, %4374
  br label %4545

; <label>:4378                                    ; preds = %4356
  %4379 = fmul fast float %161, %4370
  %4380 = fsub fast float -0.000000e+00, %4379
  %4381 = fmul fast float %162, %4370
  %4382 = fsub fast float -0.000000e+00, %4381
  %4383 = fmul fast float %163, %4370
  %4384 = fsub fast float -0.000000e+00, %4383
  %4385 = call float @dx.op.dot3.f32(i32 55, float %4380, float %4382, float %4384, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4386 = fmul fast float %3791, 2.500000e+00
  %4387 = call float @dx.op.unary.f32(i32 7, float %4386)  ; Saturate(value)
  %4388 = fmul fast float %3791, 0x4013FFFFE0000000
  %4389 = fadd fast float %4388, 0xBFFFFFFFE0000000
  %4390 = call float @dx.op.unary.f32(i32 7, float %4389)  ; Saturate(value)
  %4391 = fmul fast float %3791, 0x4004000020000000
  %4392 = fadd fast float %4391, 0xBFF8000040000000
  %4393 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4394 = fmul fast float %3363, 1.000000e+01
  %4395 = call float @dx.op.unary.f32(i32 7, float %4394)  ; Saturate(value)
  %4396 = fmul fast float %4395, 2.000000e+00
  %4397 = fsub fast float 3.000000e+00, %4396
  %4398 = fmul fast float %4395, %4395
  %4399 = fmul fast float %4398, %4397
  %4400 = fsub fast float 1.000000e+00, %4399
  %4401 = fsub fast float 0x3FE3333340000000, %4366
  %4402 = fmul fast float %4401, 0x400AAAAAA0000000
  %4403 = call float @dx.op.unary.f32(i32 7, float %4402)  ; Saturate(value)
  %4404 = fmul fast float %4400, %4403
  %4405 = fmul fast float %4360, 0x3FEA2B8620000000
  %4406 = fmul fast float %4361, 0x3FEA2B8620000000
  %4407 = fmul fast float %4362, 0x3FEA2B8620000000
  %4408 = fadd fast float %4405, 0x3FC81DFBA0000000
  %4409 = fmul fast float %4408, %4360
  %4410 = fadd fast float %4409, 0x3F910E6020000000
  %4411 = fadd fast float %4406, 0x3FC81DFBA0000000
  %4412 = fmul fast float %4411, %4361
  %4413 = fadd fast float %4412, 0x3F910E6020000000
  %4414 = fadd fast float %4407, 0x3FC81DFBA0000000
  %4415 = fmul fast float %4414, %4362
  %4416 = fadd fast float %4415, 0x3F910E6020000000
  %4417 = call float @dx.op.unary.f32(i32 7, float %4410)  ; Saturate(value)
  %4418 = call float @dx.op.unary.f32(i32 7, float %4413)  ; Saturate(value)
  %4419 = call float @dx.op.unary.f32(i32 7, float %4416)  ; Saturate(value)
  %4420 = fsub fast float %4417, %4360
  %4421 = fsub fast float %4418, %4361
  %4422 = fsub fast float %4419, %4362
  %4423 = fmul fast float %4420, %4387
  %4424 = fmul fast float %4423, %4404
  %4425 = fmul fast float %4421, %4387
  %4426 = fmul fast float %4425, %4404
  %4427 = fmul fast float %4422, %4387
  %4428 = fmul fast float %4427, %4404
  %4429 = fadd fast float %4424, %4360
  %4430 = fadd fast float %4426, %4361
  %4431 = fadd fast float %4428, %4362
  %4432 = fmul fast float %4367, %4367
  %4433 = fmul fast float %4432, %4432
  %4434 = fadd fast float %4390, 1.000000e+00
  %4435 = fsub fast float %4434, %4404
  %4436 = call float @dx.op.unary.f32(i32 7, float %4435)  ; Saturate(value)
  %4437 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4438 = call float @dx.op.unary.f32(i32 7, float %4437)  ; Saturate(value)
  %4439 = fsub fast float 1.000000e+00, %4433
  %4440 = call float @dx.op.binary.f32(i32 36, float %4436, float %4439)  ; FMin(a,b)
  %4441 = call float @dx.op.unary.f32(i32 7, float %4393)  ; Saturate(value)
  %4442 = call float @dx.op.binary.f32(i32 35, float %4440, float %4441)  ; FMax(a,b)
  %4443 = fadd fast float %4438, 0xBFE4CCCCC0000000
  %4444 = fmul fast float %4443, 0x4006DB6DA0000000
  %4445 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4446 = fmul fast float %4445, 2.000000e+00
  %4447 = fsub fast float 3.000000e+00, %4446
  %4448 = bitcast float %4357 to i32
  %4449 = ashr i32 %4448, 1
  %4450 = add nsw i32 %4449, 532487669
  %4451 = bitcast i32 %4450 to float
  %4452 = fsub fast float 1.000000e+00, %4451
  %4453 = bitcast float %4452 to i32
  %4454 = sub nsw i32 2129859010, %4453
  %4455 = bitcast i32 %4454 to float
  %4456 = fmul fast float %4455, 2.000000e+00
  %4457 = bitcast float %4358 to i32
  %4458 = ashr i32 %4457, 1
  %4459 = add nsw i32 %4458, 532487669
  %4460 = bitcast i32 %4459 to float
  %4461 = fsub fast float 1.000000e+00, %4460
  %4462 = bitcast float %4461 to i32
  %4463 = sub nsw i32 2129859010, %4462
  %4464 = bitcast i32 %4463 to float
  %4465 = fmul fast float %4464, 2.000000e+00
  %4466 = bitcast float %4359 to i32
  %4467 = ashr i32 %4466, 1
  %4468 = add nsw i32 %4467, 532487669
  %4469 = bitcast i32 %4468 to float
  %4470 = fsub fast float 1.000000e+00, %4469
  %4471 = bitcast float %4470 to i32
  %4472 = sub nsw i32 2129859010, %4471
  %4473 = bitcast i32 %4472 to float
  %4474 = fmul fast float %4473, 2.000000e+00
  %4475 = fsub fast float 0x4002A9FBE0000000, %4456
  %4476 = fadd fast float %4456, 0x3FD54FDF00000000
  %4477 = bitcast float %4476 to i32
  %4478 = sub nsw i32 2129859010, %4477
  %4479 = bitcast i32 %4478 to float
  %4480 = fmul fast float %4479, %4475
  %4481 = fmul fast float %4480, %4480
  %4482 = fsub fast float 0x4002A9FBE0000000, %4465
  %4483 = fadd fast float %4465, 0x3FD54FDF00000000
  %4484 = bitcast float %4483 to i32
  %4485 = sub nsw i32 2129859010, %4484
  %4486 = bitcast i32 %4485 to float
  %4487 = fmul fast float %4486, %4482
  %4488 = fmul fast float %4487, %4487
  %4489 = fsub fast float 0x4002A9FBE0000000, %4474
  %4490 = fadd fast float %4474, 0x3FD54FDF00000000
  %4491 = bitcast float %4490 to i32
  %4492 = sub nsw i32 2129859010, %4491
  %4493 = bitcast i32 %4492 to float
  %4494 = fmul fast float %4493, %4489
  %4495 = fmul fast float %4494, %4494
  %4496 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4481)  ; FMax(a,b)
  %4497 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4488)  ; FMax(a,b)
  %4498 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4495)  ; FMax(a,b)
  %4499 = fsub fast float 1.000000e+00, %4385
  %4500 = fadd fast float %4499, %4400
  %4501 = call float @dx.op.unary.f32(i32 7, float %4500)  ; Saturate(value)
  %4502 = fsub fast float 1.000000e+00, %3772
  %4503 = fmul fast float %4442, %4502
  %4504 = fmul fast float %4445, %4445
  %4505 = fmul fast float %4504, %4503
  %4506 = fmul fast float %4505, %4447
  %4507 = fmul fast float %4502, 0xBFE99999A0000000
  %4508 = fmul fast float %4507, %4387
  %4509 = fmul fast float %4508, %4404
  %4510 = fadd fast float %4509, 1.000000e+00
  %4511 = fadd fast float %4366, -1.000000e+00
  %4512 = fmul fast float %4510, %4511
  %4513 = fadd fast float %4512, 1.000000e+00
  %4514 = fsub fast float %4496, %4357
  %4515 = fsub fast float %4497, %4358
  %4516 = fsub fast float %4498, %4359
  %4517 = fmul fast float %4506, %4514
  %4518 = fmul fast float %4506, %4515
  %4519 = fmul fast float %4506, %4516
  %4520 = fadd fast float %4517, %4357
  %4521 = fadd fast float %4518, %4358
  %4522 = fadd fast float %4519, %4359
  %4523 = fsub fast float %81, %4363
  %4524 = fsub fast float %82, %4364
  %4525 = fsub fast float %83, %4365
  %4526 = fmul fast float %4506, %4523
  %4527 = fmul fast float %4506, %4524
  %4528 = fmul fast float %4506, %4525
  %4529 = fadd fast float %4526, %4363
  %4530 = fadd fast float %4527, %4364
  %4531 = fadd fast float %4528, %4365
  %4532 = fmul fast float %4506, %4501
  %4533 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4534 = fsub fast float 1.000000e+00, %4533
  %4535 = fmul fast float %4532, %4534
  %4536 = fadd fast float %4535, %4533
  %4537 = fsub fast float 1.000000e+00, %4367
  %4538 = fmul fast float %4506, %4537
  %4539 = fadd fast float %4538, %4367
  %4540 = call float @dx.op.dot3.f32(i32 55, float %4529, float %4530, float %4531, float %4529, float %4530, float %4531)  ; Dot3(ax,ay,az,bx,by,bz)
  %4541 = call float @dx.op.unary.f32(i32 25, float %4540)  ; Rsqrt(value)
  %4542 = fmul fast float %4529, %4541
  %4543 = fmul fast float %4530, %4541
  %4544 = fmul fast float %4531, %4541
  br label %4545

; <label>:4545                                    ; preds = %4378, %4371
  %4546 = phi float [ %4377, %4371 ], [ %4384, %4378 ]
  %4547 = phi float [ %4376, %4371 ], [ %4382, %4378 ]
  %4548 = phi float [ %4375, %4371 ], [ %4380, %4378 ]
  %4549 = phi float [ %4374, %4371 ], [ %4383, %4378 ]
  %4550 = phi float [ %4373, %4371 ], [ %4381, %4378 ]
  %4551 = phi float [ %4372, %4371 ], [ %4379, %4378 ]
  %4552 = phi float [ %4357, %4371 ], [ %4520, %4378 ]
  %4553 = phi float [ %4358, %4371 ], [ %4521, %4378 ]
  %4554 = phi float [ %4359, %4371 ], [ %4522, %4378 ]
  %4555 = phi float [ %4360, %4371 ], [ %4429, %4378 ]
  %4556 = phi float [ %4361, %4371 ], [ %4430, %4378 ]
  %4557 = phi float [ %4362, %4371 ], [ %4431, %4378 ]
  %4558 = phi float [ %4363, %4371 ], [ %4542, %4378 ]
  %4559 = phi float [ %4364, %4371 ], [ %4543, %4378 ]
  %4560 = phi float [ %4365, %4371 ], [ %4544, %4378 ]
  %4561 = phi float [ %4366, %4371 ], [ %4536, %4378 ]
  %4562 = phi float [ %4367, %4371 ], [ %4539, %4378 ]
  %4563 = select i1 %200, float 0.000000e+00, float %4554
  %4564 = call float @dx.op.dot3.f32(i32 55, float %4558, float %4559, float %4560, float %4548, float %4547, float %4546)  ; Dot3(ax,ay,az,bx,by,bz)
  %4565 = call float @dx.op.unary.f32(i32 7, float %4564)  ; Saturate(value)
  %4566 = call float @dx.op.dot3.f32(i32 55, float %4551, float %4550, float %4549, float %4558, float %4559, float %4560)  ; Dot3(ax,ay,az,bx,by,bz)
  %4567 = fmul fast float %4566, 2.000000e+00
  %4568 = fmul fast float %4567, %4558
  %4569 = fmul fast float %4567, %4559
  %4570 = fmul fast float %4567, %4560
  %4571 = fsub fast float %4551, %4568
  %4572 = fsub fast float %4550, %4569
  %4573 = fsub fast float %4549, %4570
  %4574 = call float @dx.op.binary.f32(i32 36, float %4562, float 1.000000e+00)  ; FMin(a,b)
  %4575 = fsub fast float 1.000000e+00, %4562
  %4576 = bitcast float %4575 to i32
  %4577 = sub nsw i32 2129859010, %4576
  %4578 = fsub fast float 1.000000e+00, %51
  %4579 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4580 = call float @dx.op.binary.f32(i32 35, float %4579, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4581 = fdiv fast float %4578, %4580
  %4582 = call float @dx.op.dot3.f32(i32 55, float %4558, float %4559, float %4560, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4583 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4584 = fmul fast float %4583, 5.000000e-01
  %4585 = fadd fast float %4584, 5.000000e-01
  %4586 = fmul fast float %4585, %51
  %4587 = call float @dx.op.dot3.f32(i32 55, float %4558, float %4559, float %4560, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %4588 = call float @dx.op.unary.f32(i32 7, float %4587)  ; Saturate(value)
  %4589 = fmul fast float %4588, %4581
  %4590 = fadd fast float %4586, %4589
  %4591 = fsub fast float 5.000000e-01, %4584
  %4592 = fmul fast float %4591, %4555
  %4593 = fmul fast float %4591, %4556
  %4594 = fmul fast float %4591, %4557
  %4595 = fadd fast float %4590, %4592
  %4596 = fadd fast float %4590, %4593
  %4597 = fadd fast float %4590, %4594
  %4598 = call float @dx.op.dot3.f32(i32 55, float %4571, float %4572, float %4573, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4599 = call float @dx.op.unary.f32(i32 7, float %4598)  ; Saturate(value)
  %4600 = fmul fast float %4599, 5.000000e-01
  %4601 = fadd fast float %4600, 5.000000e-01
  %4602 = fmul fast float %4601, %51
  %4603 = call float @dx.op.dot3.f32(i32 55, float %4571, float %4572, float %4573, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %4604 = call float @dx.op.unary.f32(i32 7, float %4603)  ; Saturate(value)
  %4605 = fmul fast float %4604, %4581
  %4606 = fadd fast float %4602, %4605
  %4607 = fsub fast float 5.000000e-01, %4600
  %4608 = fmul fast float %4607, %4555
  %4609 = fmul fast float %4607, %4556
  %4610 = fmul fast float %4607, %4557
  %4611 = fadd fast float %4606, %4608
  %4612 = fadd fast float %4606, %4609
  %4613 = fadd fast float %4606, %4610
  %4614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4615 = extractvalue %dx.types.CBufRet.f32 %4614, 0
  %4616 = call float @dx.op.binary.f32(i32 36, float %4555, float %4615)  ; FMin(a,b)
  %4617 = fsub fast float 1.000000e+00, %4574
  %4618 = fmul fast float %4616, %4617
  %4619 = fsub fast float 1.000000e+00, %4618
  %4620 = bitcast float %4619 to i32
  %4621 = sub nsw i32 2129859010, %4620
  %4622 = bitcast i32 %4621 to float
  %4623 = call float @dx.op.binary.f32(i32 36, float %4556, float %4615)  ; FMin(a,b)
  %4624 = fmul fast float %4623, %4617
  %4625 = fsub fast float 1.000000e+00, %4624
  %4626 = bitcast float %4625 to i32
  %4627 = sub nsw i32 2129859010, %4626
  %4628 = bitcast i32 %4627 to float
  %4629 = call float @dx.op.binary.f32(i32 36, float %4557, float %4615)  ; FMin(a,b)
  %4630 = fmul fast float %4629, %4617
  %4631 = fsub fast float 1.000000e+00, %4630
  %4632 = bitcast float %4631 to i32
  %4633 = sub nsw i32 2129859010, %4632
  %4634 = bitcast i32 %4633 to float
  %4635 = fmul fast float %4574, %52
  %4636 = fmul fast float %4635, %4595
  %4637 = fmul fast float %4636, %4622
  %4638 = fmul fast float %4574, %53
  %4639 = fmul fast float %4638, %4596
  %4640 = fmul fast float %4639, %4628
  %4641 = fmul fast float %4574, %54
  %4642 = fmul fast float %4641, %4597
  %4643 = fmul fast float %4642, %4634
  %4644 = call float @dx.op.binary.f32(i32 36, float %4552, float %4615)  ; FMin(a,b)
  %4645 = fmul fast float %4644, %4617
  %4646 = fsub fast float 1.000000e+00, %4645
  %4647 = bitcast float %4646 to i32
  %4648 = sub nsw i32 2129859010, %4647
  %4649 = bitcast i32 %4648 to float
  %4650 = call float @dx.op.binary.f32(i32 36, float %4553, float %4615)  ; FMin(a,b)
  %4651 = fmul fast float %4650, %4617
  %4652 = fsub fast float 1.000000e+00, %4651
  %4653 = bitcast float %4652 to i32
  %4654 = sub nsw i32 2129859010, %4653
  %4655 = bitcast i32 %4654 to float
  %4656 = call float @dx.op.binary.f32(i32 36, float %4563, float %4615)  ; FMin(a,b)
  %4657 = fmul fast float %4656, %4617
  %4658 = fsub fast float 1.000000e+00, %4657
  %4659 = bitcast float %4658 to i32
  %4660 = sub nsw i32 2129859010, %4659
  %4661 = bitcast i32 %4660 to float
  %4662 = fmul fast float %4635, %4611
  %4663 = fmul fast float %4662, %4649
  %4664 = fmul fast float %4638, %4612
  %4665 = fmul fast float %4664, %4655
  %4666 = fmul fast float %4641, %4613
  %4667 = fmul fast float %4666, %4661
  %4668 = call float @dx.op.dot3.f32(i32 55, float %4637, float %4640, float %4643, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4669 = select i1 %200, float 0.000000e+00, float %4637
  %4670 = select i1 %200, float %4668, float %4640
  %4671 = select i1 %200, float 0.000000e+00, float %4643
  %4672 = call float @dx.op.dot3.f32(i32 55, float %4663, float %4665, float %4667, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4673 = select i1 %200, float 0.000000e+00, float %4663
  %4674 = select i1 %200, float %4672, float %4665
  %4675 = select i1 %200, float 0.000000e+00, float %4667
  %4676 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4677 = fmul fast float %4676, %4669
  %4678 = fmul fast float %4676, %4670
  %4679 = fmul fast float %4671, %4676
  %4680 = fmul fast float %4565, 9.843750e-01
  %4681 = fmul fast float %4561, 9.843750e-01
  %4682 = fadd fast float %4680, 7.812500e-03
  %4683 = fadd fast float %4681, 7.812500e-03
  %4684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %4682, float %4683, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4685 = extractvalue %dx.types.ResRet.f32 %4684, 2
  %4686 = extractvalue %dx.types.ResRet.f32 %4684, 3
  %4687 = fmul fast float %4685, %4552
  %4688 = fmul fast float %4685, %4553
  %4689 = fmul fast float %4685, %4563
  %4690 = fadd fast float %4687, %4686
  %4691 = fadd fast float %4688, %4686
  %4692 = fadd fast float %4689, %4686
  %4693 = call float @dx.op.binary.f32(i32 35, float %4691, float %4692)  ; FMax(a,b)
  %4694 = call float @dx.op.binary.f32(i32 35, float %4690, float %4693)  ; FMax(a,b)
  %4695 = fsub fast float 1.000000e+00, %4694
  %4696 = fmul fast float %161, %161
  %4697 = fmul fast float %162, %162
  %4698 = fadd fast float %4696, %4697
  %4699 = fmul fast float %163, %163
  %4700 = fadd fast float %4698, %4699
  %4701 = call float @dx.op.unary.f32(i32 24, float %4700)  ; Sqrt(value)
  %4702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4703 = extractvalue %dx.types.CBufRet.f32 %4702, 1
  %4704 = fsub fast float %4701, %4703
  %4705 = extractvalue %dx.types.CBufRet.f32 %4702, 2
  %4706 = fmul fast float %4704, %4705
  %4707 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4708 = extractvalue %dx.types.CBufRet.f32 %4702, 0
  %4709 = extractvalue %dx.types.CBufRet.f32 %4702, 3
  %4710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %4711 = extractvalue %dx.types.ResRet.i32 %4710, 0
  %4712 = and i32 %4711, 4194304
  %4713 = icmp ne i32 %4712, 0
  %4714 = and i32 %4711, 8388608
  %4715 = icmp ne i32 %4714, 0
  %4716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4717 = extractvalue %dx.types.CBufRet.f32 %4716, 0
  %4718 = extractvalue %dx.types.CBufRet.f32 %4716, 1
  %4719 = extractvalue %dx.types.CBufRet.f32 %4716, 2
  %4720 = extractvalue %dx.types.CBufRet.f32 %4716, 3
  %4721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4722 = extractvalue %dx.types.CBufRet.f32 %4721, 0
  %4723 = extractvalue %dx.types.CBufRet.f32 %4721, 1
  %4724 = extractvalue %dx.types.CBufRet.f32 %4721, 2
  %4725 = extractvalue %dx.types.CBufRet.f32 %4721, 3
  %4726 = select i1 %4713, float %4717, float %4722
  %4727 = select i1 %4713, float %4718, float %4723
  %4728 = select i1 %4713, float %4719, float %4724
  %4729 = select i1 %4713, float %4720, float %4725
  %4730 = select i1 %4715, float 0.000000e+00, float %4729
  %4731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %4732 = extractvalue %dx.types.CBufRet.f32 %4731, 0
  %4733 = extractvalue %dx.types.CBufRet.f32 %4731, 1
  %4734 = select i1 %4713, float %4732, float %4733
  %4735 = select i1 %4715, float 0.000000e+00, float %4734
  %4736 = extractvalue %dx.types.CBufRet.f32 %4731, 2
  %4737 = extractvalue %dx.types.CBufRet.f32 %4731, 3
  %4738 = select i1 %4713, float %4736, float %4737
  %4739 = select i1 %4715, float 0.000000e+00, float %4738
  %4740 = fmul fast float %4707, %33
  %4741 = fmul fast float %4740, %4709
  %4742 = fmul fast float %4741, %4739
  %4743 = fadd fast float %4742, 1.000000e+00
  %4744 = fmul fast float %4695, %4677
  %4745 = fmul fast float %4744, %4743
  %4746 = fmul fast float %4695, %4678
  %4747 = fmul fast float %4746, %4743
  %4748 = fmul fast float %4695, %4679
  %4749 = fmul fast float %4748, %4743
  %4750 = call float @dx.op.dot3.f32(i32 55, float %4555, float %4556, float %4557, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4751 = fcmp fast ogt float %4750, 0x3E7FF19E20000000
  %4752 = fdiv fast float 1.000000e+00, %4750
  %4753 = select i1 %4751, float %4752, float 0.000000e+00
  %4754 = fmul fast float %4753, %4555
  %4755 = fmul fast float %4753, %4556
  %4756 = fmul fast float %4753, %4557
  %4757 = fadd fast float %4754, -1.000000e+00
  %4758 = fadd fast float %4755, -1.000000e+00
  %4759 = fadd fast float %4756, -1.000000e+00
  %4760 = fmul fast float %4757, 5.000000e-01
  %4761 = fmul fast float %4758, 5.000000e-01
  %4762 = fmul fast float %4759, 5.000000e-01
  %4763 = fadd fast float %4760, 1.000000e+00
  %4764 = fadd fast float %4761, 1.000000e+00
  %4765 = fadd fast float %4762, 1.000000e+00
  %4766 = fsub fast float %4726, %4763
  %4767 = fsub fast float %4727, %4764
  %4768 = fsub fast float %4728, %4765
  %4769 = fmul fast float %4766, %4730
  %4770 = fmul fast float %4767, %4730
  %4771 = fmul fast float %4768, %4730
  %4772 = fadd fast float %4769, %4763
  %4773 = fadd fast float %4770, %4764
  %4774 = fadd fast float %4771, %4765
  %4775 = fmul fast float %4690, %4673
  %4776 = fmul fast float %4691, %4674
  %4777 = fmul fast float %4692, %4675
  %4778 = fsub fast float 1.000000e+00, %4565
  %4779 = bitcast float %4778 to i32
  %4780 = sitofp i32 %4779 to float
  %4781 = fmul fast float %4780, 5.000000e+00
  %4782 = fadd fast float %4781, 0xC1EFBF8940000000
  %4783 = fptosi float %4782 to i32
  %4784 = bitcast i32 %4783 to float
  %4785 = fmul fast float %4784, %33
  %4786 = fmul fast float %4785, %4707
  %4787 = fmul fast float %4786, %4708
  %4788 = fmul fast float %4787, %4735
  %4789 = fmul fast float %4744, %4788
  %4790 = fmul fast float %4789, %4772
  %4791 = fmul fast float %4746, %4788
  %4792 = fmul fast float %4791, %4773
  %4793 = fmul fast float %4748, %4788
  %4794 = fmul fast float %4793, %4774
  %4795 = fmul fast float %4745, %1112
  %4796 = fmul fast float %4747, %1112
  %4797 = fmul fast float %4749, %1112
  %4798 = fadd fast float %4775, %3326
  %4799 = fadd fast float %4798, %4790
  %4800 = fmul fast float %4799, %1112
  %4801 = fadd fast float %4776, %3327
  %4802 = fadd fast float %4801, %4792
  %4803 = fmul fast float %4802, %1112
  %4804 = fadd fast float %4777, %3328
  %4805 = fadd fast float %4804, %4794
  %4806 = fmul fast float %4805, %1112
  %4807 = bitcast i32 %4577 to float
  %4808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4809 = extractvalue %dx.types.CBufRet.f32 %4808, 3
  %4810 = fcmp fast oeq float %4809, 0.000000e+00
  br i1 %4810, label %4969, label %4811

; <label>:4811                                    ; preds = %4545
  %4812 = extractvalue %dx.types.CBufRet.f32 %4808, 0
  %4813 = extractvalue %dx.types.CBufRet.f32 %4808, 1
  %4814 = extractvalue %dx.types.CBufRet.f32 %4808, 2
  %4815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4816 = extractvalue %dx.types.CBufRet.f32 %4815, 0
  %4817 = extractvalue %dx.types.CBufRet.f32 %4815, 1
  %4818 = extractvalue %dx.types.CBufRet.f32 %4815, 2
  %4819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.f32 %4819, 0
  %4821 = extractvalue %dx.types.CBufRet.f32 %4819, 1
  %4822 = call float @dx.op.dot3.f32(i32 55, float %4816, float %4817, float %4818, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4823 = select i1 %200, float %4820, float %4816
  %4824 = select i1 %200, float %4822, float %4817
  %4825 = select i1 %200, float %4821, float %4818
  %4826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4827 = extractvalue %dx.types.CBufRet.f32 %4826, 1
  %4828 = fcmp fast une float %4827, 0.000000e+00
  br i1 %4828, label %4829, label %4846

; <label>:4829                                    ; preds = %4811
  %4830 = fptoui float %74 to i32
  %4831 = fptoui float %75 to i32
  %4832 = lshr i32 %4830, 4
  %4833 = lshr i32 %4831, 4
  %4834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4835 = extractvalue %dx.types.CBufRet.f32 %4834, 0
  %4836 = fptoui float %4835 to i32
  %4837 = add i32 %4836, 15
  %4838 = lshr i32 %4837, 4
  %4839 = mul i32 %4838, %4833
  %4840 = add i32 %4839, %4832
  %4841 = shl i32 %4840, 3
  %4842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4841, i32 undef)  ; BufferLoad(srv,index,wot)
  %4843 = extractvalue %dx.types.ResRet.i32 %4842, 0
  %4844 = and i32 %4843, -268435456
  %4845 = icmp eq i32 %4844, -1342177280
  br i1 %4845, label %4856, label %4846

; <label>:4846                                    ; preds = %4829, %4811
  %4847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4848 = extractvalue %dx.types.CBufRet.f32 %4847, 2
  %4849 = extractvalue %dx.types.CBufRet.f32 %4847, 3
  %4850 = fmul fast float %4848, %74
  %4851 = fmul fast float %4849, %75
  %4852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %4850, float %4851, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4853 = extractvalue %dx.types.ResRet.f32 %4852, 0
  %4854 = extractvalue %dx.types.ResRet.f32 %4852, 1
  %4855 = extractvalue %dx.types.ResRet.f32 %4852, 2
  br label %4856

; <label>:4856                                    ; preds = %4846, %4829
  %4857 = phi float [ %4853, %4846 ], [ 0.000000e+00, %4829 ]
  %4858 = phi float [ %4854, %4846 ], [ 0.000000e+00, %4829 ]
  %4859 = phi float [ %4855, %4846 ], [ 0.000000e+00, %4829 ]
  %4860 = call float @dx.op.binary.f32(i32 36, float %4858, float %4859)  ; FMin(a,b)
  %4861 = call float @dx.op.binary.f32(i32 36, float %4857, float %4860)  ; FMin(a,b)
  %4862 = fcmp fast ogt float %4861, 0.000000e+00
  br i1 %4862, label %4863, label %4969, !dx.controlflow.hints !72

; <label>:4863                                    ; preds = %4856
  %4864 = fmul fast float %4857, %4823
  %4865 = fmul fast float %4858, %4824
  %4866 = fmul fast float %4859, %4825
  %4867 = fsub fast float %4812, %4551
  %4868 = fsub fast float %4813, %4550
  %4869 = fsub fast float %4814, %4549
  %4870 = call float @dx.op.dot3.f32(i32 55, float %4867, float %4868, float %4869, float %4867, float %4868, float %4869)  ; Dot3(ax,ay,az,bx,by,bz)
  %4871 = call float @dx.op.unary.f32(i32 25, float %4870)  ; Rsqrt(value)
  %4872 = fmul fast float %4871, %4867
  %4873 = fmul fast float %4871, %4868
  %4874 = fmul fast float %4871, %4869
  %4875 = call float @dx.op.dot3.f32(i32 55, float %4812, float %4813, float %4814, float %4558, float %4559, float %4560)  ; Dot3(ax,ay,az,bx,by,bz)
  %4876 = call float @dx.op.dot3.f32(i32 55, float %4548, float %4547, float %4546, float %4872, float %4873, float %4874)  ; Dot3(ax,ay,az,bx,by,bz)
  %4877 = call float @dx.op.unary.f32(i32 7, float %4875)  ; Saturate(value)
  %4878 = fmul fast float %4877, %4877
  %4879 = fmul fast float %4878, %4807
  %4880 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  %4881 = fmul fast float %4880, %4877
  %4882 = call float @dx.op.dot3.f32(i32 55, float %4558, float %4559, float %4560, float %4872, float %4873, float %4874)  ; Dot3(ax,ay,az,bx,by,bz)
  %4883 = fmul fast float %4882, %4882
  %4884 = call float @dx.op.unary.f32(i32 6, float %4875)  ; FAbs(value)
  %4885 = fsub fast float 1.000000e+00, %4561
  %4886 = call float @dx.op.binary.f32(i32 35, float %4885, float 0x3F847AE140000000)  ; FMax(a,b)
  %4887 = fmul fast float %4886, %4886
  %4888 = fmul fast float %4887, %4887
  %4889 = fsub fast float 1.000000e+00, %4888
  %4890 = fmul fast float %4565, %4565
  %4891 = fmul fast float %4890, %4889
  %4892 = fadd fast float %4891, %4888
  %4893 = bitcast float %4892 to i32
  %4894 = ashr i32 %4893, 1
  %4895 = add nsw i32 %4894, 532487669
  %4896 = bitcast i32 %4895 to float
  %4897 = fadd fast float %4896, %4565
  %4898 = fmul fast float %4888, %4883
  %4899 = fsub fast float 1.000000e+00, %4883
  %4900 = fadd fast float %4899, %4898
  %4901 = fmul fast float %4884, %4884
  %4902 = fmul fast float %4901, %4889
  %4903 = fadd fast float %4902, %4888
  %4904 = bitcast float %4903 to i32
  %4905 = ashr i32 %4904, 1
  %4906 = add nsw i32 %4905, 532487669
  %4907 = bitcast i32 %4906 to float
  %4908 = fadd fast float %4907, %4884
  %4909 = fmul fast float %4900, %4900
  %4910 = fmul fast float %4909, %4897
  %4911 = fmul fast float %4910, %4908
  %4912 = fdiv fast float 0x3FF0A00000000000, %4911
  %4913 = fmul fast float %4912, %4888
  %4914 = call float @dx.op.unary.f32(i32 6, float %4876)  ; FAbs(value)
  %4915 = fsub fast float 1.000000e+00, %4914
  %4916 = bitcast float %4915 to i32
  %4917 = sitofp i32 %4916 to float
  %4918 = fmul fast float %4917, 5.000000e+00
  %4919 = fadd fast float %4918, 0xC1EFBF8940000000
  %4920 = fptosi float %4919 to i32
  %4921 = bitcast i32 %4920 to float
  %4922 = fsub fast float 1.000000e+00, %4552
  %4923 = fsub fast float 1.000000e+00, %4553
  %4924 = fsub fast float 1.000000e+00, %4563
  %4925 = fmul fast float %4921, %4922
  %4926 = fmul fast float %4921, %4923
  %4927 = fmul fast float %4921, %4924
  %4928 = fadd fast float %4925, %4552
  %4929 = fadd fast float %4926, %4553
  %4930 = fadd fast float %4927, %4563
  %4931 = fmul fast float %4875, 9.843750e-01
  %4932 = fadd fast float %4931, 7.812500e-03
  %4933 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %4932, float %4683, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4934 = extractvalue %dx.types.ResRet.f32 %4933, 2
  %4935 = extractvalue %dx.types.ResRet.f32 %4933, 3
  %4936 = fmul fast float %4934, %4552
  %4937 = fmul fast float %4934, %4553
  %4938 = fmul fast float %4934, %4563
  %4939 = fadd fast float %4936, %4935
  %4940 = fadd fast float %4937, %4935
  %4941 = fadd fast float %4938, %4935
  %4942 = call float @dx.op.binary.f32(i32 35, float %4940, float %4941)  ; FMax(a,b)
  %4943 = call float @dx.op.binary.f32(i32 35, float %4939, float %4942)  ; FMax(a,b)
  %4944 = fsub fast float 1.000000e+00, %4943
  %4945 = fmul fast float %4881, %4864
  %4946 = fmul fast float %4945, %4944
  %4947 = fmul fast float %4881, %4865
  %4948 = fmul fast float %4947, %4944
  %4949 = fmul fast float %4881, %4866
  %4950 = fmul fast float %4949, %4944
  %4951 = fmul fast float %4945, %4913
  %4952 = fmul fast float %4951, %4928
  %4953 = fmul fast float %4947, %4913
  %4954 = fmul fast float %4953, %4929
  %4955 = fmul fast float %4949, %4913
  %4956 = fmul fast float %4955, %4930
  %4957 = fadd fast float %4946, %4745
  %4958 = fmul fast float %4957, %1112
  %4959 = fadd fast float %4948, %4747
  %4960 = fmul fast float %4959, %1112
  %4961 = fadd fast float %4950, %4749
  %4962 = fmul fast float %4961, %1112
  %4963 = fadd fast float %4952, %4799
  %4964 = fmul fast float %4963, %1112
  %4965 = fadd fast float %4954, %4802
  %4966 = fmul fast float %4965, %1112
  %4967 = fadd fast float %4956, %4805
  %4968 = fmul fast float %4967, %1112
  br label %4969

; <label>:4969                                    ; preds = %4863, %4856, %4545
  %4970 = phi float [ %4800, %4545 ], [ %4800, %4856 ], [ %4964, %4863 ]
  %4971 = phi float [ %4803, %4545 ], [ %4803, %4856 ], [ %4966, %4863 ]
  %4972 = phi float [ %4806, %4545 ], [ %4806, %4856 ], [ %4968, %4863 ]
  %4973 = phi float [ %4795, %4545 ], [ %4795, %4856 ], [ %4958, %4863 ]
  %4974 = phi float [ %4796, %4545 ], [ %4796, %4856 ], [ %4960, %4863 ]
  %4975 = phi float [ %4797, %4545 ], [ %4797, %4856 ], [ %4962, %4863 ]
  %4976 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4977 = extractvalue %dx.types.CBufRet.i32 %4976, 0
  %4978 = icmp eq i32 %4977, 0
  br i1 %4978, label %5344, label %4979

; <label>:4979                                    ; preds = %4969
  %4980 = fptoui float %74 to i32
  %4981 = fptoui float %75 to i32
  %4982 = lshr i32 %4980, 4
  %4983 = lshr i32 %4981, 4
  %4984 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4985 = extractvalue %dx.types.CBufRet.i32 %4984, 0
  %4986 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4983, i32 %4985, i32 %4982)  ; UMad(a,b,c)
  %4987 = add nsw i32 %4977, -1
  %4988 = call i32 @dx.op.binary.i32(i32 37, i32 %4987, i32 0)  ; IMax(a,b)
  %4989 = call float @dx.op.binary.f32(i32 35, float %69, float 0.000000e+00)  ; FMax(a,b)
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
  br i1 %5001, label %5344, label %5002

; <label>:5002                                    ; preds = %4979
  br label %5003

; <label>:5003                                    ; preds = %5334, %5002
  %5004 = phi i32 [ %5341, %5334 ], [ %4998, %5002 ]
  %5005 = phi float [ %5335, %5334 ], [ %4970, %5002 ]
  %5006 = phi float [ %5336, %5334 ], [ %4971, %5002 ]
  %5007 = phi float [ %5337, %5334 ], [ %4972, %5002 ]
  %5008 = phi float [ %5338, %5334 ], [ %4973, %5002 ]
  %5009 = phi float [ %5339, %5334 ], [ %4974, %5002 ]
  %5010 = phi float [ %5340, %5334 ], [ %4975, %5002 ]
  %5011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %5033, label %5334, label %5034

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
  %5069 = select i1 %200, float %5066, float %5050
  %5070 = select i1 %200, float %5068, float %5051
  %5071 = select i1 %200, float %5067, float %5052
  %5072 = fsub fast float %5061, %161
  %5073 = fsub fast float %5062, %162
  %5074 = fsub fast float %5063, %163
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
  br i1 %5087, label %5110, label %5088, !dx.controlflow.hints !73

; <label>:5088                                    ; preds = %5035
  %5089 = lshr i32 %4980, 5
  %5090 = lshr i32 %4981, 5
  %5091 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %5089, i32 %5090, i32 %5044, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %5108 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %5105, i32 %5101, i32 %5107, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5109 = extractvalue %dx.types.ResRet.f32 %5108, 0
  br label %5110

; <label>:5110                                    ; preds = %5097, %5088, %5035
  %5111 = phi float [ %5109, %5097 ], [ %5095, %5088 ], [ 0.000000e+00, %5035 ]
  %5112 = call float @dx.op.binary.f32(i32 36, float %5111, float %5111)  ; FMin(a,b)
  %5113 = call float @dx.op.binary.f32(i32 36, float %5111, float %5112)  ; FMin(a,b)
  %5114 = fcmp fast ogt float %5113, 0.000000e+00
  br i1 %5114, label %5123, label %5115, !dx.controlflow.hints !74

; <label>:5115                                    ; preds = %5184, %5110
  %5116 = phi float [ %5037, %5110 ], [ %5330, %5184 ]
  %5117 = phi float [ %5038, %5110 ], [ %5331, %5184 ]
  %5118 = phi float [ %5039, %5110 ], [ %5332, %5184 ]
  %5119 = phi float [ %5040, %5110 ], [ %5321, %5184 ]
  %5120 = phi float [ %5041, %5110 ], [ %5322, %5184 ]
  %5121 = phi float [ %5042, %5110 ], [ %5323, %5184 ]
  %5122 = icmp eq i32 %5036, %5046
  br i1 %5122, label %5333, label %5035

; <label>:5123                                    ; preds = %5110
  %5124 = fmul fast float %5111, %5069
  %5125 = fmul fast float %5111, %5070
  %5126 = fmul fast float %5111, %5071
  %5127 = fsub fast float %5063, %3759
  %5128 = fcmp fast ogt float %5127, 0.000000e+00
  %5129 = fsub fast float %163, %3759
  %5130 = fcmp fast ogt float %5129, 0.000000e+00
  %5131 = xor i1 %5130, %5128
  %5132 = fsub fast float %3759, %5063
  %5133 = fmul fast float %5132, 2.000000e+00
  %5134 = fadd fast float %5133, %5063
  %5135 = select i1 %5131, float %5063, float %5134
  %5136 = fsub fast float %5135, %163
  %5137 = call float @dx.op.dot3.f32(i32 55, float %5072, float %5073, float %5136, float %5072, float %5073, float %5136)  ; Dot3(ax,ay,az,bx,by,bz)
  %5138 = call float @dx.op.unary.f32(i32 25, float %5137)  ; Rsqrt(value)
  %5139 = fmul fast float %5138, %5072
  %5140 = fmul fast float %5138, %5073
  %5141 = fmul fast float %5138, %5136
  %5142 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3767)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %5153 = fsub fast float %5135, %3759
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
  %5175 = fsub fast float %161, %5061
  %5176 = fsub fast float %162, %5062
  %5177 = fsub fast float %163, %5135
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
  %5189 = fmul fast float %3760, 0x3FF7154760000000
  %5190 = fmul fast float %5189, %5188
  %5191 = fmul fast float %3761, 0x3FF7154760000000
  %5192 = fmul fast float %5191, %5188
  %5193 = fmul fast float %3762, 0x3FF7154760000000
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
  %5204 = fsub fast float %5078, %4551
  %5205 = fsub fast float %5079, %4550
  %5206 = fsub fast float %5080, %4549
  %5207 = call float @dx.op.dot3.f32(i32 55, float %5204, float %5205, float %5206, float %5204, float %5205, float %5206)  ; Dot3(ax,ay,az,bx,by,bz)
  %5208 = call float @dx.op.unary.f32(i32 25, float %5207)  ; Rsqrt(value)
  %5209 = fmul fast float %5208, %5204
  %5210 = fmul fast float %5208, %5205
  %5211 = fmul fast float %5208, %5206
  %5212 = call float @dx.op.dot3.f32(i32 55, float %5078, float %5079, float %5080, float %4558, float %4559, float %4560)  ; Dot3(ax,ay,az,bx,by,bz)
  %5213 = call float @dx.op.dot3.f32(i32 55, float %4548, float %4547, float %4546, float %5209, float %5210, float %5211)  ; Dot3(ax,ay,az,bx,by,bz)
  %5214 = call float @dx.op.unary.f32(i32 7, float %5212)  ; Saturate(value)
  %5215 = fmul fast float %5214, %5085
  %5216 = fmul fast float %5214, %5214
  %5217 = fmul fast float %5216, %4807
  %5218 = call float @dx.op.unary.f32(i32 7, float %5217)  ; Saturate(value)
  %5219 = fmul fast float %5215, %5218
  %5220 = bitcast float %5075 to i32
  %5221 = ashr i32 %5220, 1
  %5222 = sub nsw i32 1597463007, %5221
  %5223 = bitcast i32 %5222 to float
  %5224 = fmul fast float %5223, %5072
  %5225 = fmul fast float %5223, %5073
  %5226 = fmul fast float %5223, %5074
  %5227 = fsub fast float %5224, %4551
  %5228 = fsub fast float %5225, %4550
  %5229 = fsub fast float %5226, %4549
  %5230 = call float @dx.op.dot3.f32(i32 55, float %5227, float %5228, float %5229, float %5227, float %5228, float %5229)  ; Dot3(ax,ay,az,bx,by,bz)
  %5231 = call float @dx.op.unary.f32(i32 25, float %5230)  ; Rsqrt(value)
  %5232 = fmul fast float %5227, %5231
  %5233 = fmul fast float %5228, %5231
  %5234 = fmul fast float %5229, %5231
  %5235 = call float @dx.op.dot3.f32(i32 55, float %4558, float %4559, float %4560, float %5232, float %5233, float %5234)  ; Dot3(ax,ay,az,bx,by,bz)
  %5236 = fmul fast float %5235, %5235
  %5237 = call float @dx.op.unary.f32(i32 6, float %5212)  ; FAbs(value)
  %5238 = fsub fast float 1.000000e+00, %4561
  %5239 = call float @dx.op.binary.f32(i32 35, float %5238, float 0x3F847AE140000000)  ; FMax(a,b)
  %5240 = fmul fast float %5239, %5239
  %5241 = fmul fast float %5240, %5240
  %5242 = fsub fast float 1.000000e+00, %5241
  %5243 = fmul fast float %4565, %4565
  %5244 = fmul fast float %5243, %5242
  %5245 = fadd fast float %5244, %5241
  %5246 = bitcast float %5245 to i32
  %5247 = ashr i32 %5246, 1
  %5248 = add nsw i32 %5247, 532487669
  %5249 = bitcast i32 %5248 to float
  %5250 = fadd fast float %5249, %4565
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
  %5289 = fsub fast float 1.000000e+00, %4552
  %5290 = fsub fast float 1.000000e+00, %4553
  %5291 = fsub fast float 1.000000e+00, %4563
  %5292 = fmul fast float %5288, %5289
  %5293 = fmul fast float %5288, %5290
  %5294 = fmul fast float %5288, %5291
  %5295 = fadd fast float %5292, %4552
  %5296 = fadd fast float %5293, %4553
  %5297 = fadd fast float %5294, %4563
  %5298 = fmul fast float %5212, 9.843750e-01
  %5299 = fadd fast float %5298, 7.812500e-03
  %5300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %5299, float %4683, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5301 = extractvalue %dx.types.ResRet.f32 %5300, 2
  %5302 = extractvalue %dx.types.ResRet.f32 %5300, 3
  %5303 = fmul fast float %5301, %4552
  %5304 = fmul fast float %5301, %4553
  %5305 = fmul fast float %5301, %4563
  %5306 = fadd fast float %5303, %5302
  %5307 = fadd fast float %5304, %5302
  %5308 = fadd fast float %5305, %5302
  %5309 = call float @dx.op.binary.f32(i32 35, float %5307, float %5308)  ; FMax(a,b)
  %5310 = call float @dx.op.binary.f32(i32 35, float %5306, float %5309)  ; FMax(a,b)
  %5311 = fsub fast float 1.000000e+00, %5310
  %5312 = fmul fast float %5201, %1112
  %5313 = fmul fast float %5312, %5219
  %5314 = fmul fast float %5313, %5311
  %5315 = fmul fast float %5202, %1112
  %5316 = fmul fast float %5315, %5219
  %5317 = fmul fast float %5316, %5311
  %5318 = fmul fast float %5203, %1112
  %5319 = fmul fast float %5318, %5219
  %5320 = fmul fast float %5319, %5311
  %5321 = fadd fast float %5314, %5040
  %5322 = fadd fast float %5317, %5041
  %5323 = fadd fast float %5320, %5042
  %5324 = fmul fast float %5313, %5295
  %5325 = fmul fast float %5324, %5280
  %5326 = fmul fast float %5316, %5296
  %5327 = fmul fast float %5326, %5280
  %5328 = fmul fast float %5319, %5297
  %5329 = fmul fast float %5328, %5280
  %5330 = fadd fast float %5325, %5037
  %5331 = fadd fast float %5327, %5038
  %5332 = fadd fast float %5329, %5039
  br label %5115

; <label>:5333                                    ; preds = %5115
  br label %5334

; <label>:5334                                    ; preds = %5333, %5003
  %5335 = phi float [ %5005, %5003 ], [ %5116, %5333 ]
  %5336 = phi float [ %5006, %5003 ], [ %5117, %5333 ]
  %5337 = phi float [ %5007, %5003 ], [ %5118, %5333 ]
  %5338 = phi float [ %5008, %5003 ], [ %5119, %5333 ]
  %5339 = phi float [ %5009, %5003 ], [ %5120, %5333 ]
  %5340 = phi float [ %5010, %5003 ], [ %5121, %5333 ]
  %5341 = add i32 %5004, 1
  %5342 = icmp ugt i32 %5341, %5000
  br i1 %5342, label %5343, label %5003

; <label>:5343                                    ; preds = %5334
  br label %5344

; <label>:5344                                    ; preds = %5343, %4979, %4969
  %5345 = phi float [ %4970, %4969 ], [ %4970, %4979 ], [ %5335, %5343 ]
  %5346 = phi float [ %4971, %4969 ], [ %4971, %4979 ], [ %5336, %5343 ]
  %5347 = phi float [ %4972, %4969 ], [ %4972, %4979 ], [ %5337, %5343 ]
  %5348 = phi float [ %4973, %4969 ], [ %4973, %4979 ], [ %5338, %5343 ]
  %5349 = phi float [ %4974, %4969 ], [ %4974, %4979 ], [ %5339, %5343 ]
  %5350 = phi float [ %4975, %4969 ], [ %4975, %4979 ], [ %5340, %5343 ]
  %5351 = call float @dx.op.unary.f32(i32 24, float %4555)  ; Sqrt(value)
  %5352 = call float @dx.op.unary.f32(i32 24, float %4556)  ; Sqrt(value)
  %5353 = call float @dx.op.unary.f32(i32 24, float %4557)  ; Sqrt(value)
  %5354 = fmul fast float %5351, %5348
  %5355 = fmul fast float %5352, %5349
  %5356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5357 = extractvalue %dx.types.CBufRet.f32 %5356, 0
  br i1 %200, label %5358, label %5378

; <label>:5358                                    ; preds = %5344
  %5359 = fadd fast float %5350, %3334
  %5360 = fmul fast float %5359, %3332
  %5361 = fsub fast float 1.000000e+00, %3332
  %5362 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5364 = extractvalue %dx.types.CBufRet.f32 %5363, 3
  %5365 = fmul fast float %5364, %5362
  %5366 = fadd fast float %5365, %5360
  %5367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5368 = extractvalue %dx.types.CBufRet.f32 %5367, 0
  %5369 = fmul fast float %5368, %4778
  %5370 = fsub fast float %5366, %5369
  %5371 = fadd fast float %5355, %5354
  %5372 = fmul fast float %5357, %5371
  %5373 = extractvalue %dx.types.CBufRet.f32 %5363, 1
  %5374 = fsub fast float %5370, %5373
  %5375 = extractvalue %dx.types.CBufRet.f32 %5363, 2
  %5376 = fmul fast float %5374, %5375
  %5377 = call float @dx.op.unary.f32(i32 7, float %5376)  ; Saturate(value)
  br label %5394

; <label>:5378                                    ; preds = %5344
  %5379 = fmul fast float %5353, %5350
  %5380 = fmul fast float %5357, %5354
  %5381 = fmul fast float %5357, %5355
  %5382 = fmul fast float %5379, %5357
  %5383 = add i32 %28, 356
  %5384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %5383, i32 undef)  ; BufferLoad(srv,index,wot)
  %5385 = extractvalue %dx.types.ResRet.i32 %5384, 0
  %5386 = and i32 %5385, 32
  %5387 = icmp eq i32 %5386, 0
  br i1 %5387, label %5394, label %5388

; <label>:5388                                    ; preds = %5378
  %5389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5390 = extractvalue %dx.types.CBufRet.f32 %5389, 0
  %5391 = fmul fast float %5390, 0x3FE99999A0000000
  %5392 = fadd fast float %5390, %5380
  %5393 = fadd fast float %5391, %5382
  br label %5394

; <label>:5394                                    ; preds = %5388, %5378, %5358
  %5395 = phi float [ %5372, %5358 ], [ %5392, %5388 ], [ %5380, %5378 ]
  %5396 = phi float [ %5377, %5358 ], [ %5381, %5388 ], [ %5381, %5378 ]
  %5397 = phi float [ 1.000000e+00, %5358 ], [ %5393, %5388 ], [ %5382, %5378 ]
  %5398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5399 = extractvalue %dx.types.CBufRet.f32 %5398, 0
  %5400 = fmul fast float %5399, %5346
  %5401 = fmul fast float %5399, %5347
  %5402 = fadd fast float %5346, %5345
  %5403 = select i1 %200, float %5402, float %5345
  %5404 = fmul float %5403, %5399
  %5405 = select i1 %200, float 0.000000e+00, float %5400
  %5406 = select i1 %200, float 0.000000e+00, float %5401
  %5407 = fmul fast float %5395, %5351
  %5408 = fmul fast float %5396, %5352
  %5409 = fmul fast float %5397, %5353
  %5410 = fadd fast float %5404, %5407
  %5411 = fadd fast float %5405, %5408
  %5412 = fadd fast float %5406, %5409
  %5413 = select i1 %200, float %5396, float %5411
  %5414 = select i1 %200, float %5397, float %5412
  %5415 = call float @dx.op.binary.f32(i32 36, float %5410, float 3.225500e+04)  ; FMin(a,b)
  %5416 = call float @dx.op.binary.f32(i32 36, float %5413, float 3.225500e+04)  ; FMin(a,b)
  %5417 = call float @dx.op.binary.f32(i32 36, float %5414, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5415)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5416)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5417)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
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
!41 = !{[58 x i32] [i32 56, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!42 = !{void ()* @ps_main, !"ps_main", !43, !4, !71}
!43 = !{!44, !69, null}
!44 = !{!45, !48, !50, !52, !54, !56, !57, !58, !60, !61, !62, !63, !64, !65, !67, !68}
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
!58 = !{i32 7, !"COMP_FACTOR", i8 9, i8 0, !46, i8 2, i32 1, i8 1, i32 3, i8 3, !59}
!59 = !{i32 3, i32 1}
!60 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 3, i32 7, i8 0, !53}
!61 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 8, i8 0, !55}
!62 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !46, i8 2, i32 1, i8 2, i32 9, i8 0, !51}
!63 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 10, i8 0, !55}
!64 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 11, i8 0, !55}
!65 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !46, i8 1, i32 1, i8 2, i32 12, i8 0, !66}
!66 = !{i32 3, i32 2}
!67 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !46, i8 1, i32 1, i8 4, i32 13, i8 0, !59}
!68 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !46, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!69 = !{!70}
!70 = !{i32 0, !"SV_Target", i8 9, i8 16, !46, i8 0, i32 1, i8 4, i32 0, i8 0, !55}
!71 = !{i32 0, i64 24}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}

