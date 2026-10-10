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
; shader hash: 40f86c28276a05d32db0e6ea1919f21d
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
  %3299 = and i32 %165, 65535
  %3300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3299)  ; LegacyF16ToF32(value)
  %3301 = lshr i32 %165, 16
  %3302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3301)  ; LegacyF16ToF32(value)
  %3303 = and i32 %166, 65535
  %3304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3303)  ; LegacyF16ToF32(value)
  %3305 = fmul fast float %3300, %3267
  %3306 = fmul fast float %3302, %3268
  %3307 = fmul fast float %3304, %3269
  %3308 = shl i32 %167, 4
  %3309 = and i32 %3308, 32752
  %3310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3309)  ; LegacyF16ToF32(value)
  %3311 = lshr i32 %167, 7
  %3312 = and i32 %3311, 32752
  %3313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3312)  ; LegacyF16ToF32(value)
  %3314 = lshr i32 %167, 22
  %3315 = shl nuw nsw i32 %3314, 5
  %3316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3315)  ; LegacyF16ToF32(value)
  %3317 = and i32 %168, 65535
  %3318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3317)  ; LegacyF16ToF32(value)
  %3319 = fmul fast float %3310, %3270
  %3320 = fmul fast float %3319, %3318
  %3321 = fmul fast float %3313, %3271
  %3322 = fmul fast float %3321, %3318
  %3323 = fmul fast float %3316, %3272
  %3324 = fmul fast float %3323, %3318
  %3325 = call float @dx.op.dot2.f32(i32 54, float %3265, float %3266, float %3265, float %3266)  ; Dot2(ax,ay,bx,by)
  %3326 = fmul fast float %3325, 0x3FE3333340000000
  %3327 = fsub fast float 1.000000e+00, %3326
  %3328 = call float @dx.op.dot3.f32(i32 55, float %3265, float %3266, float %3327, float %3265, float %3266, float %3327)  ; Dot3(ax,ay,az,bx,by,bz)
  %3329 = call float @dx.op.unary.f32(i32 25, float %3328)  ; Rsqrt(value)
  %3330 = fmul fast float %3329, %3265
  %3331 = fmul fast float %3329, %3266
  %3332 = fmul fast float %3327, %3329
  %3333 = fmul fast float %3332, %79
  %3334 = fmul fast float %3332, %80
  %3335 = fmul fast float %3332, %81
  %3336 = fmul fast float %3330, %53
  %3337 = fmul fast float %3330, %54
  %3338 = fmul fast float %3330, %55
  %3339 = fadd fast float %3333, %3336
  %3340 = fadd fast float %3334, %3337
  %3341 = fadd fast float %3335, %3338
  %3342 = fmul fast float %91, %3331
  %3343 = fmul fast float %92, %3331
  %3344 = fmul fast float %93, %3331
  %3345 = fadd fast float %3339, %3342
  %3346 = fadd fast float %3340, %3343
  %3347 = fadd fast float %3341, %3344
  %3348 = call float @dx.op.dot3.f32(i32 55, float %3345, float %3346, float %3347, float %3345, float %3346, float %3347)  ; Dot3(ax,ay,az,bx,by,bz)
  %3349 = call float @dx.op.unary.f32(i32 25, float %3348)  ; Rsqrt(value)
  %3350 = fmul fast float %3345, %3349
  %3351 = fmul fast float %3346, %3349
  %3352 = fmul fast float %3347, %3349
  %3353 = fadd fast float %3273, 0xBFB99999A0000000
  %3354 = call float @dx.op.unary.f32(i32 7, float %3353)  ; Saturate(value)
  %3355 = fmul fast float %3354, 0x3FF1C71C80000000
  %3356 = call float @dx.op.binary.f32(i32 36, float %3273, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3357 = fsub fast float 1.000000e+00, %3355
  %3358 = call float @dx.op.unary.f32(i32 7, float %3357)  ; Saturate(value)
  %3359 = fmul fast float %3358, %3305
  %3360 = fmul fast float %3358, %3306
  %3361 = fmul fast float %3358, %3307
  %3362 = call float @dx.op.unary.f32(i32 7, float %3359)  ; Saturate(value)
  %3363 = call float @dx.op.unary.f32(i32 7, float %3360)  ; Saturate(value)
  %3364 = call float @dx.op.unary.f32(i32 7, float %3361)  ; Saturate(value)
  %3365 = fmul fast float %3355, %3305
  %3366 = fmul fast float %3355, %3306
  %3367 = fmul fast float %3355, %3307
  %3368 = fadd fast float %3365, %3356
  %3369 = fadd fast float %3366, %3356
  %3370 = fadd fast float %3367, %3356
  %3371 = call float @dx.op.unary.f32(i32 7, float %3368)  ; Saturate(value)
  %3372 = call float @dx.op.unary.f32(i32 7, float %3369)  ; Saturate(value)
  %3373 = call float @dx.op.unary.f32(i32 7, float %3370)  ; Saturate(value)
  %3374 = call float @dx.op.unary.f32(i32 7, float %3274)  ; Saturate(value)
  %3375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3376 = extractvalue %dx.types.CBufRet.i32 %3375, 3
  %3377 = and i32 %3376, 8
  %3378 = icmp ne i32 %3377, 0
  %3379 = call float @dx.op.binary.f32(i32 35, float %3362, float %3305)  ; FMax(a,b)
  %3380 = call float @dx.op.binary.f32(i32 35, float %3363, float %3305)  ; FMax(a,b)
  %3381 = call float @dx.op.binary.f32(i32 35, float %3364, float %3305)  ; FMax(a,b)
  %3382 = call float @dx.op.dot3.f32(i32 55, float %3362, float %3363, float %3364, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3383 = select i1 %211, float %3305, float %3362
  %3384 = select i1 %211, float %3382, float %3363
  %3385 = select i1 %211, float 1.000000e+00, float %3364
  %3386 = select i1 %3378, float %3379, float %3383
  %3387 = select i1 %3378, float %3380, float %3384
  %3388 = select i1 %3378, float %3381, float %3385
  %3389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3390 = extractvalue %dx.types.CBufRet.f32 %3389, 0
  %3391 = extractvalue %dx.types.CBufRet.f32 %3389, 1
  %3392 = extractvalue %dx.types.CBufRet.f32 %3389, 2
  %3393 = fadd fast float %3390, %159
  %3394 = fadd fast float %3391, %160
  %3395 = fadd fast float %3392, %161
  %3396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3397 = extractvalue %dx.types.CBufRet.f32 %3396, 0
  %3398 = extractvalue %dx.types.CBufRet.f32 %3396, 1
  %3399 = fsub fast float %3393, %3397
  %3400 = fsub fast float %3394, %3398
  %3401 = fmul fast float %3399, %3399
  %3402 = fmul fast float %3400, %3400
  %3403 = fadd fast float %3401, %3402
  %3404 = call float @dx.op.unary.f32(i32 24, float %3403)  ; Sqrt(value)
  %3405 = extractvalue %dx.types.CBufRet.f32 %3396, 2
  %3406 = fcmp fast olt float %3404, %3405
  br i1 %3406, label %3407, label %3474

; <label>:3407                                    ; preds = %3264
  %3408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3409 = extractvalue %dx.types.CBufRet.f32 %3408, 0
  %3410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3411 = extractvalue %dx.types.CBufRet.f32 %3410, 0
  %3412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3413 = extractvalue %dx.types.CBufRet.f32 %3412, 0
  %3414 = extractvalue %dx.types.CBufRet.f32 %3408, 1
  %3415 = extractvalue %dx.types.CBufRet.f32 %3410, 1
  %3416 = extractvalue %dx.types.CBufRet.f32 %3412, 1
  %3417 = extractvalue %dx.types.CBufRet.f32 %3408, 3
  %3418 = extractvalue %dx.types.CBufRet.f32 %3410, 3
  %3419 = extractvalue %dx.types.CBufRet.f32 %3412, 3
  %3420 = fadd fast float %3417, %3393
  %3421 = fadd fast float %3418, %3394
  %3422 = fadd fast float %3419, %3395
  %3423 = fmul fast float %3420, %3409
  %3424 = call float @dx.op.tertiary.f32(i32 46, float %3421, float %3411, float %3423)  ; FMad(a,b,c)
  %3425 = call float @dx.op.tertiary.f32(i32 46, float %3422, float %3413, float %3424)  ; FMad(a,b,c)
  %3426 = fmul fast float %3420, %3414
  %3427 = call float @dx.op.tertiary.f32(i32 46, float %3421, float %3415, float %3426)  ; FMad(a,b,c)
  %3428 = call float @dx.op.tertiary.f32(i32 46, float %3422, float %3416, float %3427)  ; FMad(a,b,c)
  %3429 = fsub fast float %3425, %3417
  %3430 = fsub fast float %3428, %3418
  %3431 = fsub fast float %3429, %3397
  %3432 = fadd fast float %3431, %3405
  %3433 = fsub fast float %3430, %3398
  %3434 = fadd fast float %3433, %3405
  %3435 = extractvalue %dx.types.CBufRet.f32 %3396, 3
  %3436 = fmul fast float %3432, %3435
  %3437 = fmul fast float %3434, %3435
  %3438 = call float @dx.op.unary.f32(i32 7, float %3436)  ; Saturate(value)
  %3439 = call float @dx.op.unary.f32(i32 7, float %3437)  ; Saturate(value)
  %3440 = fsub fast float 1.000000e+00, %3438
  %3441 = fsub fast float 1.000000e+00, %3439
  %3442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %3440, float %3441, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3443 = extractvalue %dx.types.ResRet.f32 %3442, 0
  %3444 = fcmp fast ugt float %3443, 0.000000e+00
  br i1 %3444, label %3445, label %3748

; <label>:3445                                    ; preds = %3407
  %3446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3447 = extractvalue %dx.types.CBufRet.f32 %3446, 2
  %3448 = fmul fast float %3447, %3443
  %3449 = extractvalue %dx.types.CBufRet.f32 %3446, 3
  %3450 = fadd fast float %3449, %3448
  %3451 = extractvalue %dx.types.CBufRet.f32 %3412, 2
  %3452 = fadd fast float %3450, %3419
  %3453 = fmul fast float %3425, %3413
  %3454 = call float @dx.op.tertiary.f32(i32 46, float %3428, float %3416, float %3453)  ; FMad(a,b,c)
  %3455 = call float @dx.op.tertiary.f32(i32 46, float %3452, float %3451, float %3454)  ; FMad(a,b,c)
  %3456 = fsub fast float %3455, %3419
  %3457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3458 = extractvalue %dx.types.CBufRet.f32 %3457, 2
  %3459 = fsub fast float %3456, %3458
  %3460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %3440, float %3441, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3461 = extractvalue %dx.types.ResRet.f32 %3460, 0
  %3462 = extractvalue %dx.types.ResRet.f32 %3460, 1
  %3463 = extractvalue %dx.types.ResRet.f32 %3460, 2
  %3464 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %24, float %3440, float %3441, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3465 = extractvalue %dx.types.ResRet.f32 %3464, 0
  %3466 = extractvalue %dx.types.ResRet.f32 %3464, 1
  %3467 = extractvalue %dx.types.ResRet.f32 %3464, 2
  %3468 = fadd fast float %3465, %3461
  %3469 = fmul fast float %3468, 0x3F847AE140000000
  %3470 = fadd fast float %3466, %3462
  %3471 = fmul fast float %3470, 0x3F847AE140000000
  %3472 = fadd fast float %3467, %3463
  %3473 = fmul fast float %3472, 0x3F847AE140000000
  br label %3748

; <label>:3474                                    ; preds = %3264
  %3475 = and i32 %190, 1
  %3476 = icmp eq i32 %3475, 0
  br i1 %3476, label %3748, label %3477

; <label>:3477                                    ; preds = %3474
  %3478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3479 = extractvalue %dx.types.CBufRet.f32 %3478, 0
  %3480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3481 = extractvalue %dx.types.CBufRet.f32 %3480, 0
  %3482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3483 = extractvalue %dx.types.CBufRet.f32 %3482, 0
  %3484 = extractvalue %dx.types.CBufRet.f32 %3478, 1
  %3485 = extractvalue %dx.types.CBufRet.f32 %3480, 1
  %3486 = extractvalue %dx.types.CBufRet.f32 %3482, 1
  %3487 = extractvalue %dx.types.CBufRet.f32 %3478, 3
  %3488 = extractvalue %dx.types.CBufRet.f32 %3480, 3
  %3489 = extractvalue %dx.types.CBufRet.f32 %3482, 3
  %3490 = fadd fast float %3487, %3393
  %3491 = fadd fast float %3488, %3394
  %3492 = fadd fast float %3489, %3395
  %3493 = fmul fast float %3490, %3479
  %3494 = call float @dx.op.tertiary.f32(i32 46, float %3491, float %3481, float %3493)  ; FMad(a,b,c)
  %3495 = call float @dx.op.tertiary.f32(i32 46, float %3492, float %3483, float %3494)  ; FMad(a,b,c)
  %3496 = fmul fast float %3490, %3484
  %3497 = call float @dx.op.tertiary.f32(i32 46, float %3491, float %3485, float %3496)  ; FMad(a,b,c)
  %3498 = call float @dx.op.tertiary.f32(i32 46, float %3492, float %3486, float %3497)  ; FMad(a,b,c)
  %3499 = fsub fast float %3495, %3487
  %3500 = fsub fast float %3498, %3488
  %3501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3502 = extractvalue %dx.types.CBufRet.f32 %3501, 0
  %3503 = extractvalue %dx.types.CBufRet.f32 %3501, 1
  %3504 = extractvalue %dx.types.CBufRet.f32 %3501, 2
  %3505 = extractvalue %dx.types.CBufRet.f32 %3501, 3
  %3506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3507 = extractvalue %dx.types.CBufRet.f32 %3506, 3
  %3508 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3509 = extractvalue %dx.types.CBufRet.i32 %3508, 0
  %3510 = extractvalue %dx.types.CBufRet.i32 %3508, 1
  %3511 = udiv i32 %3510, %3509
  %3512 = fsub fast float %3499, %3502
  %3513 = fsub fast float %3500, %3503
  %3514 = call float @dx.op.binary.f32(i32 35, float %3512, float 0.000000e+00)  ; FMax(a,b)
  %3515 = call float @dx.op.binary.f32(i32 35, float %3513, float 0.000000e+00)  ; FMax(a,b)
  %3516 = call float @dx.op.binary.f32(i32 36, float %3514, float %3504)  ; FMin(a,b)
  %3517 = call float @dx.op.binary.f32(i32 36, float %3515, float %3505)  ; FMin(a,b)
  %3518 = add i32 %3509, -1
  %3519 = add i32 %3511, -1
  %3520 = fmul fast float %3516, %3507
  %3521 = fmul fast float %3517, %3507
  %3522 = fptoui float %3520 to i32
  %3523 = fptoui float %3521 to i32
  %3524 = call i32 @dx.op.binary.i32(i32 40, i32 %3522, i32 %3518)  ; UMin(a,b)
  %3525 = call i32 @dx.op.binary.i32(i32 40, i32 %3523, i32 %3519)  ; UMin(a,b)
  %3526 = mul i32 %3525, %3509
  %3527 = add i32 %3526, %3524
  %3528 = shl i32 %3527, 2
  %3529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3530 = extractvalue %dx.types.ResRet.i32 %3529, 0
  %3531 = icmp eq i32 %3530, -1
  br i1 %3531, label %3748, label %3532

; <label>:3532                                    ; preds = %3477
  %3533 = mul i32 %3530, 148
  %3534 = add i32 %3533, 4
  %3535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.f32 %3535, 0
  %3537 = add i32 %3533, 8
  %3538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3537, i32 undef)  ; BufferLoad(srv,index,wot)
  %3539 = extractvalue %dx.types.ResRet.f32 %3538, 0
  %3540 = add i32 %3533, 36
  %3541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3540, i32 undef)  ; BufferLoad(srv,index,wot)
  %3542 = extractvalue %dx.types.ResRet.f32 %3541, 0
  %3543 = add i32 %3533, 60
  %3544 = add i32 %3533, 92
  %3545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3546 = extractvalue %dx.types.ResRet.i32 %3545, 0
  %3547 = add i32 %3533, 116
  %3548 = fsub fast float %3499, %3536
  %3549 = fsub fast float %3500, %3539
  %3550 = fmul fast float %3507, %3548
  %3551 = fmul fast float %3507, %3549
  %3552 = call float @dx.op.unary.f32(i32 7, float %3550)  ; Saturate(value)
  %3553 = call float @dx.op.unary.f32(i32 7, float %3551)  ; Saturate(value)
  %3554 = fsub fast float 1.000000e+00, %3553
  %3555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3556 = extractvalue %dx.types.CBufRet.f32 %3555, 2
  %3557 = call float @dx.op.unary.f32(i32 83, float %3552)  ; DerivCoarseX(value)
  %3558 = call float @dx.op.unary.f32(i32 83, float %3554)  ; DerivCoarseX(value)
  %3559 = call float @dx.op.unary.f32(i32 84, float %3552)  ; DerivCoarseY(value)
  %3560 = call float @dx.op.unary.f32(i32 84, float %3554)  ; DerivCoarseY(value)
  %3561 = fmul fast float %3557, %3556
  %3562 = fmul fast float %3558, %3556
  %3563 = fmul fast float %3559, %3556
  %3564 = fmul fast float %3560, %3556
  %3565 = call float @dx.op.dot2.f32(i32 54, float %3563, float %3564, float %3563, float %3564)  ; Dot2(ax,ay,bx,by)
  %3566 = call float @dx.op.dot2.f32(i32 54, float %3561, float %3562, float %3561, float %3562)  ; Dot2(ax,ay,bx,by)
  %3567 = call float @dx.op.binary.f32(i32 35, float %3566, float %3565)  ; FMax(a,b)
  %3568 = call float @dx.op.unary.f32(i32 23, float %3567)  ; Log(value)
  %3569 = fmul fast float %3568, 5.000000e-01
  %3570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3571 = extractvalue %dx.types.CBufRet.f32 %3570, 1
  %3572 = fadd fast float %3571, %3569
  %3573 = call float @dx.op.binary.f32(i32 35, float %3572, float 0.000000e+00)  ; FMax(a,b)
  %3574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3575 = extractvalue %dx.types.CBufRet.f32 %3574, 3
  %3576 = fadd fast float %3575, %3573
  %3577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3578 = extractvalue %dx.types.CBufRet.f32 %3577, 3
  %3579 = fadd fast float %3576, %3578
  %3580 = add i32 %3546, 0
  %3581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3580, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3582 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3581, i32 0)  ; GetDimensions(handle,mipLevel)
  %3583 = extractvalue %dx.types.Dimensions %3582, 0
  %3584 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3583)  ; FirstbitLo(value)
  %3585 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3586 = extractvalue %dx.types.CBufRet.i32 %3585, 1
  %3587 = sub nsw i32 %3586, %3584
  %3588 = sitofp i32 %3587 to float
  %3589 = fsub fast float %3579, %3588
  %3590 = call float @dx.op.binary.f32(i32 35, float %3589, float 0.000000e+00)  ; FMax(a,b)
  %3591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3581, %dx.types.Handle %23, float %3552, float %3554, float %3542, float undef, i32 0, i32 0, i32 undef, float %3590)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3592 = extractvalue %dx.types.ResRet.f32 %3591, 0
  %3593 = fcmp ule float %3592, 0x3FE0101020000000
  %3594 = extractvalue %dx.types.CBufRet.i32 %3585, 0
  %3595 = and i32 %3594, 128
  %3596 = icmp ne i32 %3595, 0
  %3597 = and i1 %3593, %3596
  br i1 %3597, label %3748, label %3598

; <label>:3598                                    ; preds = %3532
  %3599 = add i32 %3533, 20
  %3600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.f32 %3600, 0
  %3602 = add i32 %3533, 24
  %3603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3602, i32 undef)  ; BufferLoad(srv,index,wot)
  %3604 = extractvalue %dx.types.ResRet.f32 %3603, 0
  %3605 = add i32 %3533, 40
  %3606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3605, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = add i32 %3533, 96
  %3609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3608, i32 undef)  ; BufferLoad(srv,index,wot)
  %3610 = extractvalue %dx.types.ResRet.i32 %3609, 0
  %3611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3612 = extractvalue %dx.types.CBufRet.f32 %3611, 2
  %3613 = fmul fast float %3612, %3552
  %3614 = fmul fast float %3612, %3554
  %3615 = extractvalue %dx.types.CBufRet.f32 %3611, 3
  %3616 = fadd fast float %3613, %3615
  %3617 = fadd fast float %3614, %3615
  %3618 = add i32 %3610, 0
  %3619 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3618, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3620 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3619, i32 0)  ; GetDimensions(handle,mipLevel)
  %3621 = extractvalue %dx.types.Dimensions %3620, 0
  %3622 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3621)  ; FirstbitLo(value)
  %3623 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3624 = extractvalue %dx.types.CBufRet.i32 %3623, 1
  %3625 = sub nsw i32 %3624, %3622
  %3626 = sitofp i32 %3625 to float
  %3627 = fsub fast float %3576, %3626
  %3628 = call float @dx.op.binary.f32(i32 35, float %3627, float 0.000000e+00)  ; FMax(a,b)
  %3629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3619, %dx.types.Handle %23, float %3616, float %3617, float %3607, float undef, i32 0, i32 0, i32 undef, float %3628)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3630 = extractvalue %dx.types.ResRet.f32 %3629, 0
  %3631 = fmul fast float %3630, %3601
  %3632 = fadd fast float %3631, %3604
  %3633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3634 = extractvalue %dx.types.CBufRet.f32 %3633, 0
  %3635 = extractvalue %dx.types.CBufRet.f32 %3633, 1
  %3636 = extractvalue %dx.types.CBufRet.f32 %3633, 2
  %3637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3638 = extractvalue %dx.types.CBufRet.f32 %3637, 3
  %3639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3640 = extractvalue %dx.types.CBufRet.f32 %3639, 3
  %3641 = extractvalue %dx.types.CBufRet.f32 %3633, 3
  %3642 = fadd fast float %3638, %3499
  %3643 = fadd fast float %3640, %3500
  %3644 = fadd fast float %3632, %3641
  %3645 = fmul fast float %3642, %3634
  %3646 = call float @dx.op.tertiary.f32(i32 46, float %3643, float %3635, float %3645)  ; FMad(a,b,c)
  %3647 = call float @dx.op.tertiary.f32(i32 46, float %3644, float %3636, float %3646)  ; FMad(a,b,c)
  %3648 = fsub fast float %3647, %3641
  %3649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3650 = extractvalue %dx.types.CBufRet.f32 %3649, 2
  %3651 = fsub fast float %3648, %3650
  %3652 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3653 = extractvalue %dx.types.CBufRet.i32 %3652, 0
  %3654 = call i32 @dx.op.binary.i32(i32 40, i32 %3530, i32 %3653)  ; UMin(a,b)
  %3655 = mul i32 %3654, 36
  %3656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3655, i32 undef)  ; BufferLoad(srv,index,wot)
  %3657 = extractvalue %dx.types.ResRet.i32 %3656, 0
  %3658 = add i32 %3655, 4
  %3659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3660 = extractvalue %dx.types.CBufRet.f32 %3659, 0
  %3661 = fmul fast float %3660, %3552
  %3662 = fmul fast float %3660, %3554
  %3663 = extractvalue %dx.types.CBufRet.f32 %3659, 1
  %3664 = fadd fast float %3661, %3663
  %3665 = fadd fast float %3662, %3663
  %3666 = icmp eq i32 %3657, 0
  br i1 %3666, label %3735, label %3667

; <label>:3667                                    ; preds = %3598
  br label %3668

; <label>:3668                                    ; preds = %3725, %3667
  %3669 = phi float [ %3726, %3725 ], [ 0.000000e+00, %3667 ]
  %3670 = phi float [ %3727, %3725 ], [ 0.000000e+00, %3667 ]
  %3671 = phi float [ %3728, %3725 ], [ 0.000000e+00, %3667 ]
  %3672 = phi float [ %3729, %3725 ], [ 0.000000e+00, %3667 ]
  %3673 = phi float [ %3730, %3725 ], [ 0.000000e+00, %3667 ]
  %3674 = phi float [ %3731, %3725 ], [ 0.000000e+00, %3667 ]
  %3675 = phi i32 [ %3732, %3725 ], [ 0, %3667 ]
  %3676 = shl i32 %3675, 2
  %3677 = add i32 %3543, %3676
  %3678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3677, i32 undef)  ; BufferLoad(srv,index,wot)
  %3679 = extractvalue %dx.types.ResRet.f32 %3678, 0
  %3680 = add i32 %3547, %3676
  %3681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3680, i32 undef)  ; BufferLoad(srv,index,wot)
  %3682 = extractvalue %dx.types.ResRet.i32 %3681, 0
  %3683 = add i32 %3682, 0
  %3684 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3683, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3685 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3684, i32 0)  ; GetDimensions(handle,mipLevel)
  %3686 = extractvalue %dx.types.Dimensions %3685, 0
  %3687 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3686)  ; FirstbitLo(value)
  %3688 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3689 = extractvalue %dx.types.CBufRet.i32 %3688, 1
  %3690 = sub nsw i32 %3689, %3687
  %3691 = sitofp i32 %3690 to float
  %3692 = fsub fast float %3576, %3691
  %3693 = call float @dx.op.binary.f32(i32 35, float %3692, float 0.000000e+00)  ; FMax(a,b)
  %3694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3684, %dx.types.Handle %23, float %3664, float %3665, float %3679, float undef, i32 0, i32 0, i32 undef, float %3693)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3695 = extractvalue %dx.types.ResRet.f32 %3694, 0
  %3696 = fcmp fast ogt float %3695, 0.000000e+00
  br i1 %3696, label %3697, label %3725

; <label>:3697                                    ; preds = %3668
  %3698 = add i32 %3658, %3676
  %3699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3698, i32 undef)  ; BufferLoad(srv,index,wot)
  %3700 = extractvalue %dx.types.ResRet.i32 %3699, 0
  %3701 = and i32 %3700, 32767
  %3702 = mul nuw nsw i32 %3701, 928
  %3703 = add nuw nsw i32 %3702, 48
  %3704 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3703, i32 undef)  ; BufferLoad(srv,index,wot)
  %3705 = extractvalue %dx.types.ResRet.f32 %3704, 0
  %3706 = extractvalue %dx.types.ResRet.f32 %3704, 1
  %3707 = extractvalue %dx.types.ResRet.f32 %3704, 2
  %3708 = add nuw nsw i32 %3702, 60
  %3709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3708, i32 undef)  ; BufferLoad(srv,index,wot)
  %3710 = extractvalue %dx.types.ResRet.f32 %3709, 0
  %3711 = extractvalue %dx.types.ResRet.f32 %3709, 1
  %3712 = extractvalue %dx.types.ResRet.f32 %3709, 2
  %3713 = fmul fast float %3705, %3695
  %3714 = fmul fast float %3706, %3695
  %3715 = fmul fast float %3707, %3695
  %3716 = fadd fast float %3713, %3669
  %3717 = fadd fast float %3714, %3670
  %3718 = fadd fast float %3715, %3671
  %3719 = fmul fast float %3710, %3695
  %3720 = fmul fast float %3711, %3695
  %3721 = fmul fast float %3712, %3695
  %3722 = fadd fast float %3719, %3672
  %3723 = fadd fast float %3720, %3673
  %3724 = fadd fast float %3721, %3674
  br label %3725

; <label>:3725                                    ; preds = %3697, %3668
  %3726 = phi float [ %3716, %3697 ], [ %3669, %3668 ]
  %3727 = phi float [ %3717, %3697 ], [ %3670, %3668 ]
  %3728 = phi float [ %3718, %3697 ], [ %3671, %3668 ]
  %3729 = phi float [ %3722, %3697 ], [ %3672, %3668 ]
  %3730 = phi float [ %3723, %3697 ], [ %3673, %3668 ]
  %3731 = phi float [ %3724, %3697 ], [ %3674, %3668 ]
  %3732 = add nuw i32 %3675, 1
  %3733 = icmp eq i32 %3732, %3657
  br i1 %3733, label %3734, label %3668

; <label>:3734                                    ; preds = %3725
  br label %3735

; <label>:3735                                    ; preds = %3734, %3598
  %3736 = phi float [ 0.000000e+00, %3598 ], [ %3726, %3734 ]
  %3737 = phi float [ 0.000000e+00, %3598 ], [ %3727, %3734 ]
  %3738 = phi float [ 0.000000e+00, %3598 ], [ %3728, %3734 ]
  %3739 = phi float [ 0.000000e+00, %3598 ], [ %3729, %3734 ]
  %3740 = phi float [ 0.000000e+00, %3598 ], [ %3730, %3734 ]
  %3741 = phi float [ 0.000000e+00, %3598 ], [ %3731, %3734 ]
  %3742 = fadd fast float %3739, %3736
  %3743 = fmul fast float %3742, 0x3F847AE140000000
  %3744 = fadd fast float %3740, %3737
  %3745 = fmul fast float %3744, 0x3F847AE140000000
  %3746 = fadd fast float %3741, %3738
  %3747 = fmul fast float %3746, 0x3F847AE140000000
  br label %3748

; <label>:3748                                    ; preds = %3735, %3532, %3477, %3474, %3445, %3407
  %3749 = phi float [ %3459, %3445 ], [ -1.310720e+05, %3407 ], [ %3651, %3735 ], [ -1.310720e+05, %3477 ], [ -1.310720e+05, %3532 ], [ -1.310720e+05, %3474 ]
  %3750 = phi float [ %3469, %3445 ], [ 0.000000e+00, %3407 ], [ %3743, %3735 ], [ 0.000000e+00, %3477 ], [ 0.000000e+00, %3532 ], [ 0.000000e+00, %3474 ]
  %3751 = phi float [ %3471, %3445 ], [ 0.000000e+00, %3407 ], [ %3745, %3735 ], [ 0.000000e+00, %3477 ], [ 0.000000e+00, %3532 ], [ 0.000000e+00, %3474 ]
  %3752 = phi float [ %3473, %3445 ], [ 0.000000e+00, %3407 ], [ %3747, %3735 ], [ 0.000000e+00, %3477 ], [ 0.000000e+00, %3532 ], [ 0.000000e+00, %3474 ]
  %3753 = phi i1 [ true, %3445 ], [ false, %3407 ], [ true, %3735 ], [ false, %3477 ], [ false, %3532 ], [ false, %3474 ]
  %3754 = and i32 %190, 3
  %3755 = icmp eq i32 %3754, 1
  %3756 = select i1 %3755, float 1.000000e+00, float 0.000000e+00
  %3757 = fsub fast float %3749, %161
  %3758 = call float @dx.op.unary.f32(i32 7, float %3757)  ; Saturate(value)
  %3759 = select i1 %3753, float %3758, float 1.000000e+00
  %3760 = fmul fast float %3759, %3756
  %3761 = icmp eq i32 %3754, 3
  %3762 = select i1 %3761, float 1.000000e+00, float %3760
  %3763 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3762)  ; FMax(a,b)
  %3764 = fcmp fast olt float %3762, 1.000000e+00
  %3765 = fcmp uge float %43, 0.000000e+00
  %3766 = and i1 %3765, %3764
  br i1 %3766, label %3767, label %3777

; <label>:3767                                    ; preds = %3748
  %3768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %23, float %43, float %44, float %45, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3769 = extractvalue %dx.types.ResRet.f32 %3768, 0
  %3770 = extractvalue %dx.types.ResRet.f32 %3768, 1
  %3771 = extractvalue %dx.types.ResRet.f32 %3768, 2
  %3772 = fadd fast float %3769, %3763
  %3773 = fcmp ule float %42, 0.000000e+00
  %3774 = call float @dx.op.dot3.f32(i32 55, float %39, float %40, float %41, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3775 = select i1 %3773, float %3774, float 1.000000e+00
  %3776 = fmul fast float %3775, %3771
  br label %3777

; <label>:3777                                    ; preds = %3767, %3748
  %3778 = phi float [ %3772, %3767 ], [ %3763, %3748 ]
  %3779 = phi float [ %3770, %3767 ], [ 0.000000e+00, %3748 ]
  %3780 = phi float [ %3776, %3767 ], [ 0.000000e+00, %3748 ]
  %3781 = call float @dx.op.unary.f32(i32 7, float %3778)  ; Saturate(value)
  %3782 = call float @dx.op.unary.f32(i32 7, float %3779)  ; Saturate(value)
  %3783 = call float @dx.op.unary.f32(i32 7, float %3780)  ; Saturate(value)
  %3784 = fcmp fast une float %3782, 0.000000e+00
  %3785 = fcmp fast une float %3783, 0.000000e+00
  %3786 = or i1 %3784, %3785
  br i1 %3786, label %3787, label %4346

; <label>:3787                                    ; preds = %3777
  br i1 %3784, label %3788, label %4061

; <label>:3788                                    ; preds = %3787
  %3789 = call float @dx.op.unary.f32(i32 23, float %3275)  ; Log(value)
  %3790 = fmul fast float %3789, 4.000000e+00
  %3791 = call float @dx.op.unary.f32(i32 21, float %3790)  ; Exp(value)
  %3792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3793 = extractvalue %dx.types.CBufRet.f32 %3792, 0
  %3794 = fmul fast float %3793, %30
  %3795 = fmul fast float %3793, %31
  %3796 = fmul fast float %3793, %32
  %3797 = call float @dx.op.unary.f32(i32 6, float %39)  ; FAbs(value)
  %3798 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %3799 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %3800 = call float @dx.op.unary.f32(i32 23, float %3797)  ; Log(value)
  %3801 = call float @dx.op.unary.f32(i32 23, float %3798)  ; Log(value)
  %3802 = call float @dx.op.unary.f32(i32 23, float %3799)  ; Log(value)
  %3803 = fmul fast float %3800, 4.000000e+00
  %3804 = fmul fast float %3801, 4.000000e+00
  %3805 = fmul fast float %3802, 4.000000e+00
  %3806 = call float @dx.op.unary.f32(i32 21, float %3803)  ; Exp(value)
  %3807 = call float @dx.op.unary.f32(i32 21, float %3804)  ; Exp(value)
  %3808 = call float @dx.op.unary.f32(i32 21, float %3805)  ; Exp(value)
  %3809 = fadd fast float %3807, %3806
  %3810 = fadd fast float %3809, %3808
  %3811 = fdiv fast float 1.000000e+00, %3810
  %3812 = fmul fast float %3811, %3806
  %3813 = fcmp fast ogt float %39, 0.000000e+00
  %3814 = fcmp fast ogt float %40, 0.000000e+00
  %3815 = fcmp fast ogt float %41, 0.000000e+00
  %3816 = fcmp fast olt float %39, 0.000000e+00
  %3817 = fcmp fast olt float %40, 0.000000e+00
  %3818 = fcmp fast olt float %41, 0.000000e+00
  %3819 = zext i1 %3813 to i32
  %3820 = zext i1 %3814 to i32
  %3821 = zext i1 %3815 to i32
  %3822 = zext i1 %3816 to i32
  %3823 = zext i1 %3817 to i32
  %3824 = zext i1 %3818 to i32
  %3825 = sub nsw i32 %3819, %3822
  %3826 = sub nsw i32 %3820, %3823
  %3827 = sub nsw i32 %3821, %3824
  %3828 = call float @dx.op.unary.f32(i32 83, float %3794)  ; DerivCoarseX(value)
  %3829 = call float @dx.op.unary.f32(i32 83, float %3795)  ; DerivCoarseX(value)
  %3830 = call float @dx.op.unary.f32(i32 83, float %3796)  ; DerivCoarseX(value)
  %3831 = call float @dx.op.unary.f32(i32 84, float %3794)  ; DerivCoarseY(value)
  %3832 = call float @dx.op.unary.f32(i32 84, float %3795)  ; DerivCoarseY(value)
  %3833 = call float @dx.op.unary.f32(i32 84, float %3796)  ; DerivCoarseY(value)
  %3834 = fcmp fast ole float %222, %3812
  %3835 = fmul fast float %3811, %3809
  %3836 = fcmp fast ole float %222, %3835
  %3837 = select i1 %3836, float %3796, float %3794
  %3838 = select i1 %3836, float %3794, float %3795
  %3839 = select i1 %3834, float %3795, float %3837
  %3840 = select i1 %3834, float %3796, float %3838
  %3841 = select i1 %3836, float %3830, float %3828
  %3842 = select i1 %3836, float %3828, float %3829
  %3843 = select i1 %3834, float %3829, float %3841
  %3844 = select i1 %3834, float %3830, float %3842
  %3845 = select i1 %3836, float %3833, float %3831
  %3846 = select i1 %3836, float %3831, float %3832
  %3847 = select i1 %3834, float %3832, float %3845
  %3848 = select i1 %3834, float %3833, float %3846
  %3849 = call float @dx.op.unary.f32(i32 27, float %3839)  ; Round_ni(value)
  %3850 = call float @dx.op.unary.f32(i32 27, float %3840)  ; Round_ni(value)
  %3851 = fptosi float %3849 to i32
  %3852 = fptosi float %3850 to i32
  %3853 = xor i32 %3852, %3851
  %3854 = sitofp i32 %3853 to float
  %3855 = fptosi float %3854 to i32
  %3856 = sitofp i32 %3855 to float
  %3857 = fmul fast float %3856, 0x3FE3C6EF40000000
  %3858 = frem fast float %3849, 2.560000e+02
  %3859 = frem fast float %3850, 2.560000e+02
  %3860 = fptoui float %3858 to i32
  %3861 = fptoui float %3859 to i32
  %3862 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %3860, i32 %3861, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3863 = extractvalue %dx.types.ResRet.f32 %3862, 0
  %3864 = extractvalue %dx.types.ResRet.f32 %3862, 1
  %3865 = extractvalue %dx.types.ResRet.f32 %3862, 2
  %3866 = fadd fast float %3863, %3857
  %3867 = fadd fast float %3864, %3857
  %3868 = fadd fast float %3865, %3857
  %3869 = call float @dx.op.unary.f32(i32 22, float %3866)  ; Frc(value)
  %3870 = call float @dx.op.unary.f32(i32 22, float %3867)  ; Frc(value)
  %3871 = call float @dx.op.unary.f32(i32 22, float %3868)  ; Frc(value)
  %3872 = fmul fast float %3871, 0x401921FB60000000
  %3873 = call float @dx.op.unary.f32(i32 13, float %3872)  ; Sin(value)
  %3874 = call float @dx.op.unary.f32(i32 12, float %3872)  ; Cos(value)
  %3875 = fsub fast float -0.000000e+00, %3874
  %3876 = fmul fast float %3874, %3839
  %3877 = call float @dx.op.tertiary.f32(i32 46, float %3873, float %3840, float %3876)  ; FMad(a,b,c)
  %3878 = fmul fast float %3873, %3839
  %3879 = call float @dx.op.tertiary.f32(i32 46, float %3875, float %3840, float %3878)  ; FMad(a,b,c)
  %3880 = fadd fast float %3877, %3869
  %3881 = fadd fast float %3879, %3870
  %3882 = extractvalue %dx.types.CBufRet.f32 %3792, 3
  %3883 = bitcast float %3882 to i32
  %3884 = icmp eq i32 %3883, 0
  br i1 %3884, label %3923, label %3885

; <label>:3885                                    ; preds = %3788
  %3886 = add i32 %3883, 0
  %3887 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3886, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3888 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3887, %dx.types.Handle %69, float %3880, float %3881, float undef, float undef, i32 0, i32 0, i32 undef, float %3843, float %3844, float undef, float %3847, float %3848, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3889 = extractvalue %dx.types.ResRet.f32 %3888, 0
  %3890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3891 = extractvalue %dx.types.CBufRet.f32 %3890, 1
  %3892 = extractvalue %dx.types.CBufRet.f32 %3890, 2
  %3893 = fsub fast float 1.000000e+00, %3782
  %3894 = call float @dx.op.binary.f32(i32 35, float %3893, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3895 = bitcast float %3782 to i32
  %3896 = sitofp i32 %3895 to float
  %3897 = fadd fast float %3896, 0xC1CFBF8940000000
  %3898 = fmul fast float %3892, %3897
  %3899 = fadd fast float %3898, 0x41CFBF8940000000
  %3900 = fptosi float %3899 to i32
  %3901 = bitcast i32 %3900 to float
  %3902 = bitcast float %3894 to i32
  %3903 = sitofp i32 %3902 to float
  %3904 = fadd fast float %3903, 0xC1CFBF8940000000
  %3905 = fmul fast float %3904, %3892
  %3906 = fadd fast float %3905, 0x41CFBF8940000000
  %3907 = fptosi float %3906 to i32
  %3908 = bitcast i32 %3907 to float
  %3909 = fmul fast float %3901, %3891
  %3910 = fmul fast float %3908, %3891
  %3911 = fsub fast float %3894, %3909
  %3912 = fadd fast float %3910, %3894
  %3913 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3914 = call float @dx.op.unary.f32(i32 7, float %3912)  ; Saturate(value)
  %3915 = fsub fast float %3889, %3913
  %3916 = fsub fast float %3914, %3913
  %3917 = bitcast float %3916 to i32
  %3918 = sub nsw i32 2129859010, %3917
  %3919 = bitcast i32 %3918 to float
  %3920 = fmul fast float %3919, %3915
  %3921 = call float @dx.op.unary.f32(i32 7, float %3920)  ; Saturate(value)
  %3922 = fcmp fast olt float %3921, 0x3F70101020000000
  br i1 %3922, label %4061, label %3923

; <label>:3923                                    ; preds = %3885, %3788
  %3924 = phi float [ %3921, %3885 ], [ %3782, %3788 ]
  %3925 = fmul fast float %3924, %3791
  %3926 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3927 = extractvalue %dx.types.CBufRet.i32 %3926, 1
  %3928 = extractvalue %dx.types.CBufRet.i32 %3926, 0
  %3929 = add i32 %3928, 0
  %3930 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3929, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3931 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3930, %dx.types.Handle %68, float %3880, float %3881, float undef, float undef, i32 0, i32 0, i32 undef, float %3843, float %3844, float undef, float %3847, float %3848, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3932 = extractvalue %dx.types.ResRet.f32 %3931, 0
  %3933 = extractvalue %dx.types.ResRet.f32 %3931, 1
  %3934 = extractvalue %dx.types.ResRet.f32 %3931, 2
  %3935 = extractvalue %dx.types.ResRet.f32 %3931, 3
  %3936 = and i32 %3927, 255
  %3937 = uitofp i32 %3936 to float
  %3938 = lshr i32 %3927, 8
  %3939 = and i32 %3938, 255
  %3940 = uitofp i32 %3939 to float
  %3941 = fmul fast float %3935, %3937
  %3942 = fadd fast float %3941, %3940
  %3943 = fmul fast float %3942, 0x3F70101000000000
  %3944 = fadd fast float %3943, 0xBFB99999A0000000
  %3945 = call float @dx.op.unary.f32(i32 7, float %3944)  ; Saturate(value)
  %3946 = fmul fast float %3945, 0x3FF1C71C80000000
  %3947 = call float @dx.op.binary.f32(i32 36, float %3943, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3948 = fsub fast float 1.000000e+00, %3946
  %3949 = call float @dx.op.unary.f32(i32 7, float %3948)  ; Saturate(value)
  %3950 = fmul fast float %3949, %3932
  %3951 = fmul fast float %3949, %3933
  %3952 = fmul fast float %3949, %3934
  %3953 = call float @dx.op.unary.f32(i32 7, float %3950)  ; Saturate(value)
  %3954 = call float @dx.op.unary.f32(i32 7, float %3951)  ; Saturate(value)
  %3955 = call float @dx.op.unary.f32(i32 7, float %3952)  ; Saturate(value)
  %3956 = fmul fast float %3946, %3932
  %3957 = fmul fast float %3946, %3933
  %3958 = fmul fast float %3946, %3934
  %3959 = fadd fast float %3956, %3947
  %3960 = fadd fast float %3957, %3947
  %3961 = fadd fast float %3958, %3947
  %3962 = call float @dx.op.unary.f32(i32 7, float %3959)  ; Saturate(value)
  %3963 = call float @dx.op.unary.f32(i32 7, float %3960)  ; Saturate(value)
  %3964 = call float @dx.op.unary.f32(i32 7, float %3961)  ; Saturate(value)
  %3965 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3966 = extractvalue %dx.types.CBufRet.i32 %3965, 3
  %3967 = extractvalue %dx.types.CBufRet.i32 %3965, 2
  %3968 = add i32 %3967, 0
  %3969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3968, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3970 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3969, %dx.types.Handle %68, float %3880, float %3881, float undef, float undef, i32 0, i32 0, i32 undef, float %3843, float %3844, float undef, float %3847, float %3848, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3971 = extractvalue %dx.types.ResRet.f32 %3970, 0
  %3972 = extractvalue %dx.types.ResRet.f32 %3970, 1
  %3973 = extractvalue %dx.types.ResRet.f32 %3970, 2
  %3974 = extractvalue %dx.types.ResRet.f32 %3970, 3
  %3975 = and i32 %3966, 255
  %3976 = uitofp i32 %3975 to float
  %3977 = lshr i32 %3966, 8
  %3978 = and i32 %3977, 255
  %3979 = uitofp i32 %3978 to float
  %3980 = lshr i32 %3966, 16
  %3981 = and i32 %3980, 255
  %3982 = uitofp i32 %3981 to float
  %3983 = fmul fast float %3982, 0x3F70101000000000
  %3984 = fmul fast float %3971, %3976
  %3985 = fadd fast float %3984, %3979
  %3986 = fmul fast float %3985, 0x3F70101000000000
  %3987 = fadd fast float %3972, -5.000000e-01
  %3988 = fadd fast float %3974, -5.000000e-01
  %3989 = fmul fast float %3987, %3983
  %3990 = fmul fast float %3988, %3983
  %3991 = fadd fast float %3989, 5.000000e-01
  %3992 = fadd fast float %3990, 5.000000e-01
  %3993 = fmul fast float %3991, 2.000000e+00
  %3994 = fadd fast float %3993, -1.000000e+00
  %3995 = fmul fast float %3992, 2.000000e+00
  %3996 = fadd fast float %3995, -1.000000e+00
  %3997 = fadd fast float %3994, %3996
  %3998 = fmul fast float %3997, 5.000000e-01
  %3999 = fsub fast float %3994, %3996
  %4000 = fmul fast float %3999, 5.000000e-01
  %4001 = call float @dx.op.unary.f32(i32 6, float %3998)  ; FAbs(value)
  %4002 = fsub fast float 1.000000e+00, %4001
  %4003 = call float @dx.op.unary.f32(i32 6, float %4000)  ; FAbs(value)
  %4004 = fsub fast float %4002, %4003
  %4005 = call float @dx.op.dot3.f32(i32 55, float %3998, float %4000, float %4004, float %3998, float %4000, float %4004)  ; Dot3(ax,ay,az,bx,by,bz)
  %4006 = call float @dx.op.unary.f32(i32 25, float %4005)  ; Rsqrt(value)
  %4007 = fmul fast float %3998, %4006
  %4008 = fmul fast float %4000, %4006
  %4009 = select i1 %3836, i32 %3826, i32 %3827
  %4010 = select i1 %3834, i32 %3825, i32 %4009
  %4011 = sitofp i32 %4010 to float
  %4012 = fmul fast float %4004, %4011
  %4013 = fmul fast float %4012, %4006
  %4014 = select i1 %3836, float %4013, float %4008
  %4015 = select i1 %3836, float %4008, float %4013
  %4016 = select i1 %3834, float %4013, float %4007
  %4017 = select i1 %3834, float %4008, float %4014
  %4018 = select i1 %3834, float %4007, float %4015
  %4019 = fsub fast float %3953, %3386
  %4020 = fsub fast float %3954, %3387
  %4021 = fsub fast float %3955, %3388
  %4022 = fmul fast float %4019, %3925
  %4023 = fmul fast float %4020, %3925
  %4024 = fmul fast float %4021, %3925
  %4025 = fadd fast float %4022, %3386
  %4026 = fadd fast float %4023, %3387
  %4027 = fadd fast float %4024, %3388
  %4028 = fsub fast float %3962, %3371
  %4029 = fsub fast float %3963, %3372
  %4030 = fsub fast float %3964, %3373
  %4031 = fmul fast float %4028, %3925
  %4032 = fmul fast float %4029, %3925
  %4033 = fmul fast float %4030, %3925
  %4034 = fadd fast float %4031, %3371
  %4035 = fadd fast float %4032, %3372
  %4036 = fadd fast float %4033, %3373
  %4037 = fadd fast float %4016, %3350
  %4038 = fadd fast float %4017, %3351
  %4039 = fadd fast float %4018, %3352
  %4040 = call float @dx.op.dot3.f32(i32 55, float %4037, float %4038, float %4039, float %4037, float %4038, float %4039)  ; Dot3(ax,ay,az,bx,by,bz)
  %4041 = call float @dx.op.unary.f32(i32 25, float %4040)  ; Rsqrt(value)
  %4042 = fmul fast float %4037, %4041
  %4043 = fmul fast float %4038, %4041
  %4044 = fmul fast float %4039, %4041
  %4045 = fsub fast float %4042, %3350
  %4046 = fsub fast float %4043, %3351
  %4047 = fsub fast float %4044, %3352
  %4048 = fmul fast float %4045, %3925
  %4049 = fmul fast float %4046, %3925
  %4050 = fmul fast float %4047, %3925
  %4051 = fadd fast float %4048, %3350
  %4052 = fadd fast float %4049, %3351
  %4053 = fadd fast float %4050, %3352
  %4054 = call float @dx.op.binary.f32(i32 36, float %3275, float %3973)  ; FMin(a,b)
  %4055 = fsub fast float %4054, %3275
  %4056 = fmul fast float %4055, %3925
  %4057 = fadd fast float %4056, %3275
  %4058 = fsub fast float %3986, %3374
  %4059 = fmul fast float %4058, %3925
  %4060 = fadd fast float %4059, %3374
  br label %4061

; <label>:4061                                    ; preds = %3923, %3885, %3787
  %4062 = phi float [ %4034, %3923 ], [ %3371, %3885 ], [ %3371, %3787 ]
  %4063 = phi float [ %4035, %3923 ], [ %3372, %3885 ], [ %3372, %3787 ]
  %4064 = phi float [ %4036, %3923 ], [ %3373, %3885 ], [ %3373, %3787 ]
  %4065 = phi float [ %4051, %3923 ], [ %3350, %3885 ], [ %3350, %3787 ]
  %4066 = phi float [ %4052, %3923 ], [ %3351, %3885 ], [ %3351, %3787 ]
  %4067 = phi float [ %4053, %3923 ], [ %3352, %3885 ], [ %3352, %3787 ]
  %4068 = phi float [ %4025, %3923 ], [ %3386, %3885 ], [ %3386, %3787 ]
  %4069 = phi float [ %4026, %3923 ], [ %3387, %3885 ], [ %3387, %3787 ]
  %4070 = phi float [ %4027, %3923 ], [ %3388, %3885 ], [ %3388, %3787 ]
  %4071 = phi float [ %4060, %3923 ], [ %3374, %3885 ], [ %3374, %3787 ]
  %4072 = phi float [ %4057, %3923 ], [ %3275, %3885 ], [ %3275, %3787 ]
  br i1 %3785, label %4073, label %4346

; <label>:4073                                    ; preds = %4061
  %4074 = call float @dx.op.unary.f32(i32 23, float %4072)  ; Log(value)
  %4075 = fmul fast float %4074, 4.000000e+00
  %4076 = call float @dx.op.unary.f32(i32 21, float %4075)  ; Exp(value)
  %4077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4077, 0
  %4079 = fmul fast float %4078, %30
  %4080 = fmul fast float %4078, %31
  %4081 = fmul fast float %4078, %32
  %4082 = call float @dx.op.unary.f32(i32 6, float %39)  ; FAbs(value)
  %4083 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %4084 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %4085 = call float @dx.op.unary.f32(i32 23, float %4082)  ; Log(value)
  %4086 = call float @dx.op.unary.f32(i32 23, float %4083)  ; Log(value)
  %4087 = call float @dx.op.unary.f32(i32 23, float %4084)  ; Log(value)
  %4088 = fmul fast float %4085, 4.000000e+00
  %4089 = fmul fast float %4086, 4.000000e+00
  %4090 = fmul fast float %4087, 4.000000e+00
  %4091 = call float @dx.op.unary.f32(i32 21, float %4088)  ; Exp(value)
  %4092 = call float @dx.op.unary.f32(i32 21, float %4089)  ; Exp(value)
  %4093 = call float @dx.op.unary.f32(i32 21, float %4090)  ; Exp(value)
  %4094 = fadd fast float %4092, %4091
  %4095 = fadd fast float %4094, %4093
  %4096 = fdiv fast float 1.000000e+00, %4095
  %4097 = fmul fast float %4096, %4091
  %4098 = fcmp fast ogt float %39, 0.000000e+00
  %4099 = fcmp fast ogt float %40, 0.000000e+00
  %4100 = fcmp fast ogt float %41, 0.000000e+00
  %4101 = fcmp fast olt float %39, 0.000000e+00
  %4102 = fcmp fast olt float %40, 0.000000e+00
  %4103 = fcmp fast olt float %41, 0.000000e+00
  %4104 = zext i1 %4098 to i32
  %4105 = zext i1 %4099 to i32
  %4106 = zext i1 %4100 to i32
  %4107 = zext i1 %4101 to i32
  %4108 = zext i1 %4102 to i32
  %4109 = zext i1 %4103 to i32
  %4110 = sub nsw i32 %4104, %4107
  %4111 = sub nsw i32 %4105, %4108
  %4112 = sub nsw i32 %4106, %4109
  %4113 = call float @dx.op.unary.f32(i32 83, float %4079)  ; DerivCoarseX(value)
  %4114 = call float @dx.op.unary.f32(i32 83, float %4080)  ; DerivCoarseX(value)
  %4115 = call float @dx.op.unary.f32(i32 83, float %4081)  ; DerivCoarseX(value)
  %4116 = call float @dx.op.unary.f32(i32 84, float %4079)  ; DerivCoarseY(value)
  %4117 = call float @dx.op.unary.f32(i32 84, float %4080)  ; DerivCoarseY(value)
  %4118 = call float @dx.op.unary.f32(i32 84, float %4081)  ; DerivCoarseY(value)
  %4119 = fcmp fast ole float %222, %4097
  %4120 = fmul fast float %4096, %4094
  %4121 = fcmp fast ole float %222, %4120
  %4122 = select i1 %4121, float %4081, float %4079
  %4123 = select i1 %4121, float %4079, float %4080
  %4124 = select i1 %4119, float %4080, float %4122
  %4125 = select i1 %4119, float %4081, float %4123
  %4126 = select i1 %4121, float %4115, float %4113
  %4127 = select i1 %4121, float %4113, float %4114
  %4128 = select i1 %4119, float %4114, float %4126
  %4129 = select i1 %4119, float %4115, float %4127
  %4130 = select i1 %4121, float %4118, float %4116
  %4131 = select i1 %4121, float %4116, float %4117
  %4132 = select i1 %4119, float %4117, float %4130
  %4133 = select i1 %4119, float %4118, float %4131
  %4134 = call float @dx.op.unary.f32(i32 27, float %4124)  ; Round_ni(value)
  %4135 = call float @dx.op.unary.f32(i32 27, float %4125)  ; Round_ni(value)
  %4136 = fptosi float %4134 to i32
  %4137 = fptosi float %4135 to i32
  %4138 = xor i32 %4137, %4136
  %4139 = sitofp i32 %4138 to float
  %4140 = fptosi float %4139 to i32
  %4141 = sitofp i32 %4140 to float
  %4142 = fmul fast float %4141, 0x3FE3C6EF40000000
  %4143 = frem fast float %4134, 2.560000e+02
  %4144 = frem fast float %4135, 2.560000e+02
  %4145 = fptoui float %4143 to i32
  %4146 = fptoui float %4144 to i32
  %4147 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %4145, i32 %4146, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4148 = extractvalue %dx.types.ResRet.f32 %4147, 0
  %4149 = extractvalue %dx.types.ResRet.f32 %4147, 1
  %4150 = extractvalue %dx.types.ResRet.f32 %4147, 2
  %4151 = fadd fast float %4148, %4142
  %4152 = fadd fast float %4149, %4142
  %4153 = fadd fast float %4150, %4142
  %4154 = call float @dx.op.unary.f32(i32 22, float %4151)  ; Frc(value)
  %4155 = call float @dx.op.unary.f32(i32 22, float %4152)  ; Frc(value)
  %4156 = call float @dx.op.unary.f32(i32 22, float %4153)  ; Frc(value)
  %4157 = fmul fast float %4156, 0x401921FB60000000
  %4158 = call float @dx.op.unary.f32(i32 13, float %4157)  ; Sin(value)
  %4159 = call float @dx.op.unary.f32(i32 12, float %4157)  ; Cos(value)
  %4160 = fsub fast float -0.000000e+00, %4159
  %4161 = fmul fast float %4159, %4124
  %4162 = call float @dx.op.tertiary.f32(i32 46, float %4158, float %4125, float %4161)  ; FMad(a,b,c)
  %4163 = fmul fast float %4158, %4124
  %4164 = call float @dx.op.tertiary.f32(i32 46, float %4160, float %4125, float %4163)  ; FMad(a,b,c)
  %4165 = fadd fast float %4162, %4154
  %4166 = fadd fast float %4164, %4155
  %4167 = extractvalue %dx.types.CBufRet.f32 %4077, 3
  %4168 = bitcast float %4167 to i32
  %4169 = icmp eq i32 %4168, 0
  br i1 %4169, label %4208, label %4170

; <label>:4170                                    ; preds = %4073
  %4171 = add i32 %4168, 0
  %4172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4171, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4173 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4172, %dx.types.Handle %69, float %4165, float %4166, float undef, float undef, i32 0, i32 0, i32 undef, float %4128, float %4129, float undef, float %4132, float %4133, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4174 = extractvalue %dx.types.ResRet.f32 %4173, 0
  %4175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4176 = extractvalue %dx.types.CBufRet.f32 %4175, 1
  %4177 = extractvalue %dx.types.CBufRet.f32 %4175, 2
  %4178 = fsub fast float 1.000000e+00, %3783
  %4179 = call float @dx.op.binary.f32(i32 35, float %4178, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4180 = bitcast float %3783 to i32
  %4181 = sitofp i32 %4180 to float
  %4182 = fadd fast float %4181, 0xC1CFBF8940000000
  %4183 = fmul fast float %4177, %4182
  %4184 = fadd fast float %4183, 0x41CFBF8940000000
  %4185 = fptosi float %4184 to i32
  %4186 = bitcast i32 %4185 to float
  %4187 = bitcast float %4179 to i32
  %4188 = sitofp i32 %4187 to float
  %4189 = fadd fast float %4188, 0xC1CFBF8940000000
  %4190 = fmul fast float %4189, %4177
  %4191 = fadd fast float %4190, 0x41CFBF8940000000
  %4192 = fptosi float %4191 to i32
  %4193 = bitcast i32 %4192 to float
  %4194 = fmul fast float %4186, %4176
  %4195 = fmul fast float %4193, %4176
  %4196 = fsub fast float %4179, %4194
  %4197 = fadd fast float %4195, %4179
  %4198 = call float @dx.op.unary.f32(i32 7, float %4196)  ; Saturate(value)
  %4199 = call float @dx.op.unary.f32(i32 7, float %4197)  ; Saturate(value)
  %4200 = fsub fast float %4174, %4198
  %4201 = fsub fast float %4199, %4198
  %4202 = bitcast float %4201 to i32
  %4203 = sub nsw i32 2129859010, %4202
  %4204 = bitcast i32 %4203 to float
  %4205 = fmul fast float %4204, %4200
  %4206 = call float @dx.op.unary.f32(i32 7, float %4205)  ; Saturate(value)
  %4207 = fcmp fast olt float %4206, 0x3F70101020000000
  br i1 %4207, label %4346, label %4208

; <label>:4208                                    ; preds = %4170, %4073
  %4209 = phi float [ %4206, %4170 ], [ %3783, %4073 ]
  %4210 = fmul fast float %4209, %4076
  %4211 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4212 = extractvalue %dx.types.CBufRet.i32 %4211, 1
  %4213 = extractvalue %dx.types.CBufRet.i32 %4211, 0
  %4214 = add i32 %4213, 0
  %4215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4214, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4216 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4215, %dx.types.Handle %68, float %4165, float %4166, float undef, float undef, i32 0, i32 0, i32 undef, float %4128, float %4129, float undef, float %4132, float %4133, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4217 = extractvalue %dx.types.ResRet.f32 %4216, 0
  %4218 = extractvalue %dx.types.ResRet.f32 %4216, 1
  %4219 = extractvalue %dx.types.ResRet.f32 %4216, 2
  %4220 = extractvalue %dx.types.ResRet.f32 %4216, 3
  %4221 = and i32 %4212, 255
  %4222 = uitofp i32 %4221 to float
  %4223 = lshr i32 %4212, 8
  %4224 = and i32 %4223, 255
  %4225 = uitofp i32 %4224 to float
  %4226 = fmul fast float %4220, %4222
  %4227 = fadd fast float %4226, %4225
  %4228 = fmul fast float %4227, 0x3F70101000000000
  %4229 = fadd fast float %4228, 0xBFB99999A0000000
  %4230 = call float @dx.op.unary.f32(i32 7, float %4229)  ; Saturate(value)
  %4231 = fmul fast float %4230, 0x3FF1C71C80000000
  %4232 = call float @dx.op.binary.f32(i32 36, float %4228, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4233 = fsub fast float 1.000000e+00, %4231
  %4234 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4235 = fmul fast float %4234, %4217
  %4236 = fmul fast float %4234, %4218
  %4237 = fmul fast float %4234, %4219
  %4238 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4239 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  %4240 = call float @dx.op.unary.f32(i32 7, float %4237)  ; Saturate(value)
  %4241 = fmul fast float %4231, %4217
  %4242 = fmul fast float %4231, %4218
  %4243 = fmul fast float %4231, %4219
  %4244 = fadd fast float %4241, %4232
  %4245 = fadd fast float %4242, %4232
  %4246 = fadd fast float %4243, %4232
  %4247 = call float @dx.op.unary.f32(i32 7, float %4244)  ; Saturate(value)
  %4248 = call float @dx.op.unary.f32(i32 7, float %4245)  ; Saturate(value)
  %4249 = call float @dx.op.unary.f32(i32 7, float %4246)  ; Saturate(value)
  %4250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4251 = extractvalue %dx.types.CBufRet.i32 %4250, 3
  %4252 = extractvalue %dx.types.CBufRet.i32 %4250, 2
  %4253 = add i32 %4252, 0
  %4254 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4253, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4255 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4254, %dx.types.Handle %68, float %4165, float %4166, float undef, float undef, i32 0, i32 0, i32 undef, float %4128, float %4129, float undef, float %4132, float %4133, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4256 = extractvalue %dx.types.ResRet.f32 %4255, 0
  %4257 = extractvalue %dx.types.ResRet.f32 %4255, 1
  %4258 = extractvalue %dx.types.ResRet.f32 %4255, 2
  %4259 = extractvalue %dx.types.ResRet.f32 %4255, 3
  %4260 = and i32 %4251, 255
  %4261 = uitofp i32 %4260 to float
  %4262 = lshr i32 %4251, 8
  %4263 = and i32 %4262, 255
  %4264 = uitofp i32 %4263 to float
  %4265 = lshr i32 %4251, 16
  %4266 = and i32 %4265, 255
  %4267 = uitofp i32 %4266 to float
  %4268 = fmul fast float %4267, 0x3F70101000000000
  %4269 = fmul fast float %4256, %4261
  %4270 = fadd fast float %4269, %4264
  %4271 = fmul fast float %4270, 0x3F70101000000000
  %4272 = fadd fast float %4257, -5.000000e-01
  %4273 = fadd fast float %4259, -5.000000e-01
  %4274 = fmul fast float %4272, %4268
  %4275 = fmul fast float %4273, %4268
  %4276 = fadd fast float %4274, 5.000000e-01
  %4277 = fadd fast float %4275, 5.000000e-01
  %4278 = fmul fast float %4276, 2.000000e+00
  %4279 = fadd fast float %4278, -1.000000e+00
  %4280 = fmul fast float %4277, 2.000000e+00
  %4281 = fadd fast float %4280, -1.000000e+00
  %4282 = fadd fast float %4279, %4281
  %4283 = fmul fast float %4282, 5.000000e-01
  %4284 = fsub fast float %4279, %4281
  %4285 = fmul fast float %4284, 5.000000e-01
  %4286 = call float @dx.op.unary.f32(i32 6, float %4283)  ; FAbs(value)
  %4287 = fsub fast float 1.000000e+00, %4286
  %4288 = call float @dx.op.unary.f32(i32 6, float %4285)  ; FAbs(value)
  %4289 = fsub fast float %4287, %4288
  %4290 = call float @dx.op.dot3.f32(i32 55, float %4283, float %4285, float %4289, float %4283, float %4285, float %4289)  ; Dot3(ax,ay,az,bx,by,bz)
  %4291 = call float @dx.op.unary.f32(i32 25, float %4290)  ; Rsqrt(value)
  %4292 = fmul fast float %4283, %4291
  %4293 = fmul fast float %4285, %4291
  %4294 = select i1 %4121, i32 %4111, i32 %4112
  %4295 = select i1 %4119, i32 %4110, i32 %4294
  %4296 = sitofp i32 %4295 to float
  %4297 = fmul fast float %4289, %4296
  %4298 = fmul fast float %4297, %4291
  %4299 = select i1 %4121, float %4298, float %4293
  %4300 = select i1 %4121, float %4293, float %4298
  %4301 = select i1 %4119, float %4298, float %4292
  %4302 = select i1 %4119, float %4293, float %4299
  %4303 = select i1 %4119, float %4292, float %4300
  %4304 = fsub fast float %4238, %4068
  %4305 = fsub fast float %4239, %4069
  %4306 = fsub fast float %4240, %4070
  %4307 = fmul fast float %4304, %4210
  %4308 = fmul fast float %4305, %4210
  %4309 = fmul fast float %4306, %4210
  %4310 = fadd fast float %4307, %4068
  %4311 = fadd fast float %4308, %4069
  %4312 = fadd fast float %4309, %4070
  %4313 = fsub fast float %4247, %4062
  %4314 = fsub fast float %4248, %4063
  %4315 = fsub fast float %4249, %4064
  %4316 = fmul fast float %4313, %4210
  %4317 = fmul fast float %4314, %4210
  %4318 = fmul fast float %4315, %4210
  %4319 = fadd fast float %4316, %4062
  %4320 = fadd fast float %4317, %4063
  %4321 = fadd fast float %4318, %4064
  %4322 = fadd fast float %4301, %4065
  %4323 = fadd fast float %4302, %4066
  %4324 = fadd fast float %4303, %4067
  %4325 = call float @dx.op.dot3.f32(i32 55, float %4322, float %4323, float %4324, float %4322, float %4323, float %4324)  ; Dot3(ax,ay,az,bx,by,bz)
  %4326 = call float @dx.op.unary.f32(i32 25, float %4325)  ; Rsqrt(value)
  %4327 = fmul fast float %4322, %4326
  %4328 = fmul fast float %4323, %4326
  %4329 = fmul fast float %4324, %4326
  %4330 = fsub fast float %4327, %4065
  %4331 = fsub fast float %4328, %4066
  %4332 = fsub fast float %4329, %4067
  %4333 = fmul fast float %4330, %4210
  %4334 = fmul fast float %4331, %4210
  %4335 = fmul fast float %4332, %4210
  %4336 = fadd fast float %4333, %4065
  %4337 = fadd fast float %4334, %4066
  %4338 = fadd fast float %4335, %4067
  %4339 = call float @dx.op.binary.f32(i32 36, float %4072, float %4258)  ; FMin(a,b)
  %4340 = fsub fast float %4339, %4072
  %4341 = fmul fast float %4340, %4210
  %4342 = fadd fast float %4341, %4072
  %4343 = fsub fast float %4271, %4071
  %4344 = fmul fast float %4343, %4210
  %4345 = fadd fast float %4344, %4071
  br label %4346

; <label>:4346                                    ; preds = %4208, %4170, %4061, %3777
  %4347 = phi float [ %4319, %4208 ], [ %4062, %4170 ], [ %4062, %4061 ], [ %3371, %3777 ]
  %4348 = phi float [ %4320, %4208 ], [ %4063, %4170 ], [ %4063, %4061 ], [ %3372, %3777 ]
  %4349 = phi float [ %4321, %4208 ], [ %4064, %4170 ], [ %4064, %4061 ], [ %3373, %3777 ]
  %4350 = phi float [ %4336, %4208 ], [ %4065, %4170 ], [ %4065, %4061 ], [ %3350, %3777 ]
  %4351 = phi float [ %4337, %4208 ], [ %4066, %4170 ], [ %4066, %4061 ], [ %3351, %3777 ]
  %4352 = phi float [ %4338, %4208 ], [ %4067, %4170 ], [ %4067, %4061 ], [ %3352, %3777 ]
  %4353 = phi float [ %4310, %4208 ], [ %4068, %4170 ], [ %4068, %4061 ], [ %3386, %3777 ]
  %4354 = phi float [ %4311, %4208 ], [ %4069, %4170 ], [ %4069, %4061 ], [ %3387, %3777 ]
  %4355 = phi float [ %4312, %4208 ], [ %4070, %4170 ], [ %4070, %4061 ], [ %3388, %3777 ]
  %4356 = phi float [ %4345, %4208 ], [ %4071, %4170 ], [ %4071, %4061 ], [ %3374, %3777 ]
  %4357 = phi float [ %4342, %4208 ], [ %4072, %4170 ], [ %4072, %4061 ], [ %3275, %3777 ]
  %4358 = fcmp fast une float %3781, 0.000000e+00
  %4359 = call float @dx.op.dot3.f32(i32 55, float %159, float %160, float %161, float %159, float %160, float %161)  ; Dot3(ax,ay,az,bx,by,bz)
  %4360 = call float @dx.op.unary.f32(i32 25, float %4359)  ; Rsqrt(value)
  br i1 %4358, label %4368, label %4361

; <label>:4361                                    ; preds = %4346
  %4362 = fmul fast float %4360, %159
  %4363 = fmul fast float %4360, %160
  %4364 = fmul fast float %4360, %161
  %4365 = fsub fast float -0.000000e+00, %4362
  %4366 = fsub fast float -0.000000e+00, %4363
  %4367 = fsub fast float -0.000000e+00, %4364
  br label %4535

; <label>:4368                                    ; preds = %4346
  %4369 = fmul fast float %159, %4360
  %4370 = fsub fast float -0.000000e+00, %4369
  %4371 = fmul fast float %160, %4360
  %4372 = fsub fast float -0.000000e+00, %4371
  %4373 = fmul fast float %161, %4360
  %4374 = fsub fast float -0.000000e+00, %4373
  %4375 = call float @dx.op.dot3.f32(i32 55, float %4370, float %4372, float %4374, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %4376 = fmul fast float %3781, 2.500000e+00
  %4377 = call float @dx.op.unary.f32(i32 7, float %4376)  ; Saturate(value)
  %4378 = fmul fast float %3781, 0x4013FFFFE0000000
  %4379 = fadd fast float %4378, 0xBFFFFFFFE0000000
  %4380 = call float @dx.op.unary.f32(i32 7, float %4379)  ; Saturate(value)
  %4381 = fmul fast float %3781, 0x4004000020000000
  %4382 = fadd fast float %4381, 0xBFF8000040000000
  %4383 = call float @dx.op.unary.f32(i32 7, float %4382)  ; Saturate(value)
  %4384 = fmul fast float %3353, 1.000000e+01
  %4385 = call float @dx.op.unary.f32(i32 7, float %4384)  ; Saturate(value)
  %4386 = fmul fast float %4385, 2.000000e+00
  %4387 = fsub fast float 3.000000e+00, %4386
  %4388 = fmul fast float %4385, %4385
  %4389 = fmul fast float %4388, %4387
  %4390 = fsub fast float 1.000000e+00, %4389
  %4391 = fsub fast float 0x3FE3333340000000, %4356
  %4392 = fmul fast float %4391, 0x400AAAAAA0000000
  %4393 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4394 = fmul fast float %4390, %4393
  %4395 = fmul fast float %4353, 0x3FEA2B8620000000
  %4396 = fmul fast float %4354, 0x3FEA2B8620000000
  %4397 = fmul fast float %4355, 0x3FEA2B8620000000
  %4398 = fadd fast float %4395, 0x3FC81DFBA0000000
  %4399 = fmul fast float %4398, %4353
  %4400 = fadd fast float %4399, 0x3F910E6020000000
  %4401 = fadd fast float %4396, 0x3FC81DFBA0000000
  %4402 = fmul fast float %4401, %4354
  %4403 = fadd fast float %4402, 0x3F910E6020000000
  %4404 = fadd fast float %4397, 0x3FC81DFBA0000000
  %4405 = fmul fast float %4404, %4355
  %4406 = fadd fast float %4405, 0x3F910E6020000000
  %4407 = call float @dx.op.unary.f32(i32 7, float %4400)  ; Saturate(value)
  %4408 = call float @dx.op.unary.f32(i32 7, float %4403)  ; Saturate(value)
  %4409 = call float @dx.op.unary.f32(i32 7, float %4406)  ; Saturate(value)
  %4410 = fsub fast float %4407, %4353
  %4411 = fsub fast float %4408, %4354
  %4412 = fsub fast float %4409, %4355
  %4413 = fmul fast float %4410, %4377
  %4414 = fmul fast float %4413, %4394
  %4415 = fmul fast float %4411, %4377
  %4416 = fmul fast float %4415, %4394
  %4417 = fmul fast float %4412, %4377
  %4418 = fmul fast float %4417, %4394
  %4419 = fadd fast float %4414, %4353
  %4420 = fadd fast float %4416, %4354
  %4421 = fadd fast float %4418, %4355
  %4422 = fmul fast float %4357, %4357
  %4423 = fmul fast float %4422, %4422
  %4424 = fadd fast float %4380, 1.000000e+00
  %4425 = fsub fast float %4424, %4394
  %4426 = call float @dx.op.unary.f32(i32 7, float %4425)  ; Saturate(value)
  %4427 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4428 = call float @dx.op.unary.f32(i32 7, float %4427)  ; Saturate(value)
  %4429 = fsub fast float 1.000000e+00, %4423
  %4430 = call float @dx.op.binary.f32(i32 36, float %4426, float %4429)  ; FMin(a,b)
  %4431 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4432 = call float @dx.op.binary.f32(i32 35, float %4430, float %4431)  ; FMax(a,b)
  %4433 = fadd fast float %4428, 0xBFE4CCCCC0000000
  %4434 = fmul fast float %4433, 0x4006DB6DA0000000
  %4435 = call float @dx.op.unary.f32(i32 7, float %4434)  ; Saturate(value)
  %4436 = fmul fast float %4435, 2.000000e+00
  %4437 = fsub fast float 3.000000e+00, %4436
  %4438 = bitcast float %4347 to i32
  %4439 = ashr i32 %4438, 1
  %4440 = add nsw i32 %4439, 532487669
  %4441 = bitcast i32 %4440 to float
  %4442 = fsub fast float 1.000000e+00, %4441
  %4443 = bitcast float %4442 to i32
  %4444 = sub nsw i32 2129859010, %4443
  %4445 = bitcast i32 %4444 to float
  %4446 = fmul fast float %4445, 2.000000e+00
  %4447 = bitcast float %4348 to i32
  %4448 = ashr i32 %4447, 1
  %4449 = add nsw i32 %4448, 532487669
  %4450 = bitcast i32 %4449 to float
  %4451 = fsub fast float 1.000000e+00, %4450
  %4452 = bitcast float %4451 to i32
  %4453 = sub nsw i32 2129859010, %4452
  %4454 = bitcast i32 %4453 to float
  %4455 = fmul fast float %4454, 2.000000e+00
  %4456 = bitcast float %4349 to i32
  %4457 = ashr i32 %4456, 1
  %4458 = add nsw i32 %4457, 532487669
  %4459 = bitcast i32 %4458 to float
  %4460 = fsub fast float 1.000000e+00, %4459
  %4461 = bitcast float %4460 to i32
  %4462 = sub nsw i32 2129859010, %4461
  %4463 = bitcast i32 %4462 to float
  %4464 = fmul fast float %4463, 2.000000e+00
  %4465 = fsub fast float 0x4002A9FBE0000000, %4446
  %4466 = fadd fast float %4446, 0x3FD54FDF00000000
  %4467 = bitcast float %4466 to i32
  %4468 = sub nsw i32 2129859010, %4467
  %4469 = bitcast i32 %4468 to float
  %4470 = fmul fast float %4469, %4465
  %4471 = fmul fast float %4470, %4470
  %4472 = fsub fast float 0x4002A9FBE0000000, %4455
  %4473 = fadd fast float %4455, 0x3FD54FDF00000000
  %4474 = bitcast float %4473 to i32
  %4475 = sub nsw i32 2129859010, %4474
  %4476 = bitcast i32 %4475 to float
  %4477 = fmul fast float %4476, %4472
  %4478 = fmul fast float %4477, %4477
  %4479 = fsub fast float 0x4002A9FBE0000000, %4464
  %4480 = fadd fast float %4464, 0x3FD54FDF00000000
  %4481 = bitcast float %4480 to i32
  %4482 = sub nsw i32 2129859010, %4481
  %4483 = bitcast i32 %4482 to float
  %4484 = fmul fast float %4483, %4479
  %4485 = fmul fast float %4484, %4484
  %4486 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4471)  ; FMax(a,b)
  %4487 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4478)  ; FMax(a,b)
  %4488 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4485)  ; FMax(a,b)
  %4489 = fsub fast float 1.000000e+00, %4375
  %4490 = fadd fast float %4489, %4390
  %4491 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4492 = fsub fast float 1.000000e+00, %3762
  %4493 = fmul fast float %4432, %4492
  %4494 = fmul fast float %4435, %4435
  %4495 = fmul fast float %4494, %4493
  %4496 = fmul fast float %4495, %4437
  %4497 = fmul fast float %4492, 0xBFE99999A0000000
  %4498 = fmul fast float %4497, %4377
  %4499 = fmul fast float %4498, %4394
  %4500 = fadd fast float %4499, 1.000000e+00
  %4501 = fadd fast float %4356, -1.000000e+00
  %4502 = fmul fast float %4500, %4501
  %4503 = fadd fast float %4502, 1.000000e+00
  %4504 = fsub fast float %4486, %4347
  %4505 = fsub fast float %4487, %4348
  %4506 = fsub fast float %4488, %4349
  %4507 = fmul fast float %4496, %4504
  %4508 = fmul fast float %4496, %4505
  %4509 = fmul fast float %4496, %4506
  %4510 = fadd fast float %4507, %4347
  %4511 = fadd fast float %4508, %4348
  %4512 = fadd fast float %4509, %4349
  %4513 = fsub fast float %79, %4350
  %4514 = fsub fast float %80, %4351
  %4515 = fsub fast float %81, %4352
  %4516 = fmul fast float %4496, %4513
  %4517 = fmul fast float %4496, %4514
  %4518 = fmul fast float %4496, %4515
  %4519 = fadd fast float %4516, %4350
  %4520 = fadd fast float %4517, %4351
  %4521 = fadd fast float %4518, %4352
  %4522 = fmul fast float %4496, %4491
  %4523 = call float @dx.op.unary.f32(i32 7, float %4503)  ; Saturate(value)
  %4524 = fsub fast float 1.000000e+00, %4523
  %4525 = fmul fast float %4522, %4524
  %4526 = fadd fast float %4525, %4523
  %4527 = fsub fast float 1.000000e+00, %4357
  %4528 = fmul fast float %4496, %4527
  %4529 = fadd fast float %4528, %4357
  %4530 = call float @dx.op.dot3.f32(i32 55, float %4519, float %4520, float %4521, float %4519, float %4520, float %4521)  ; Dot3(ax,ay,az,bx,by,bz)
  %4531 = call float @dx.op.unary.f32(i32 25, float %4530)  ; Rsqrt(value)
  %4532 = fmul fast float %4519, %4531
  %4533 = fmul fast float %4520, %4531
  %4534 = fmul fast float %4521, %4531
  br label %4535

; <label>:4535                                    ; preds = %4368, %4361
  %4536 = phi float [ %4367, %4361 ], [ %4374, %4368 ]
  %4537 = phi float [ %4366, %4361 ], [ %4372, %4368 ]
  %4538 = phi float [ %4365, %4361 ], [ %4370, %4368 ]
  %4539 = phi float [ %4364, %4361 ], [ %4373, %4368 ]
  %4540 = phi float [ %4363, %4361 ], [ %4371, %4368 ]
  %4541 = phi float [ %4362, %4361 ], [ %4369, %4368 ]
  %4542 = phi float [ %4347, %4361 ], [ %4510, %4368 ]
  %4543 = phi float [ %4348, %4361 ], [ %4511, %4368 ]
  %4544 = phi float [ %4349, %4361 ], [ %4512, %4368 ]
  %4545 = phi float [ %4350, %4361 ], [ %4532, %4368 ]
  %4546 = phi float [ %4351, %4361 ], [ %4533, %4368 ]
  %4547 = phi float [ %4352, %4361 ], [ %4534, %4368 ]
  %4548 = phi float [ %4353, %4361 ], [ %4419, %4368 ]
  %4549 = phi float [ %4354, %4361 ], [ %4420, %4368 ]
  %4550 = phi float [ %4355, %4361 ], [ %4421, %4368 ]
  %4551 = phi float [ %4356, %4361 ], [ %4526, %4368 ]
  %4552 = phi float [ %4357, %4361 ], [ %4529, %4368 ]
  %4553 = select i1 %211, float 0.000000e+00, float %4544
  %4554 = call float @dx.op.dot3.f32(i32 55, float %4545, float %4546, float %4547, float %4538, float %4537, float %4536)  ; Dot3(ax,ay,az,bx,by,bz)
  %4555 = call float @dx.op.unary.f32(i32 7, float %4554)  ; Saturate(value)
  %4556 = call float @dx.op.dot3.f32(i32 55, float %4541, float %4540, float %4539, float %4545, float %4546, float %4547)  ; Dot3(ax,ay,az,bx,by,bz)
  %4557 = fmul fast float %4556, 2.000000e+00
  %4558 = fmul fast float %4557, %4545
  %4559 = fmul fast float %4557, %4546
  %4560 = fmul fast float %4557, %4547
  %4561 = fsub fast float %4541, %4558
  %4562 = fsub fast float %4540, %4559
  %4563 = fsub fast float %4539, %4560
  %4564 = call float @dx.op.binary.f32(i32 36, float %4552, float 1.000000e+00)  ; FMin(a,b)
  %4565 = fsub fast float 1.000000e+00, %4552
  %4566 = bitcast float %4565 to i32
  %4567 = sub nsw i32 2129859010, %4566
  %4568 = fsub fast float 1.000000e+00, %49
  %4569 = call float @dx.op.dot3.f32(i32 55, float %99, float %100, float %101, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %4570 = call float @dx.op.binary.f32(i32 35, float %4569, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4571 = fdiv fast float %4568, %4570
  %4572 = call float @dx.op.dot3.f32(i32 55, float %4545, float %4546, float %4547, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %4573 = call float @dx.op.unary.f32(i32 7, float %4572)  ; Saturate(value)
  %4574 = fmul fast float %4573, 5.000000e-01
  %4575 = fadd fast float %4574, 5.000000e-01
  %4576 = fmul fast float %4575, %49
  %4577 = call float @dx.op.dot3.f32(i32 55, float %4545, float %4546, float %4547, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4578 = call float @dx.op.unary.f32(i32 7, float %4577)  ; Saturate(value)
  %4579 = fmul fast float %4578, %4571
  %4580 = fadd fast float %4576, %4579
  %4581 = fsub fast float 5.000000e-01, %4574
  %4582 = fmul fast float %4581, %4548
  %4583 = fmul fast float %4581, %4549
  %4584 = fmul fast float %4581, %4550
  %4585 = fadd fast float %4580, %4582
  %4586 = fadd fast float %4580, %4583
  %4587 = fadd fast float %4580, %4584
  %4588 = call float @dx.op.dot3.f32(i32 55, float %4561, float %4562, float %4563, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %4589 = call float @dx.op.unary.f32(i32 7, float %4588)  ; Saturate(value)
  %4590 = fmul fast float %4589, 5.000000e-01
  %4591 = fadd fast float %4590, 5.000000e-01
  %4592 = fmul fast float %4591, %49
  %4593 = call float @dx.op.dot3.f32(i32 55, float %4561, float %4562, float %4563, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4594 = call float @dx.op.unary.f32(i32 7, float %4593)  ; Saturate(value)
  %4595 = fmul fast float %4594, %4571
  %4596 = fadd fast float %4592, %4595
  %4597 = fsub fast float 5.000000e-01, %4590
  %4598 = fmul fast float %4597, %4548
  %4599 = fmul fast float %4597, %4549
  %4600 = fmul fast float %4597, %4550
  %4601 = fadd fast float %4596, %4598
  %4602 = fadd fast float %4596, %4599
  %4603 = fadd fast float %4596, %4600
  %4604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4605 = extractvalue %dx.types.CBufRet.f32 %4604, 0
  %4606 = call float @dx.op.binary.f32(i32 36, float %4548, float %4605)  ; FMin(a,b)
  %4607 = fsub fast float 1.000000e+00, %4564
  %4608 = fmul fast float %4606, %4607
  %4609 = fsub fast float 1.000000e+00, %4608
  %4610 = bitcast float %4609 to i32
  %4611 = sub nsw i32 2129859010, %4610
  %4612 = bitcast i32 %4611 to float
  %4613 = call float @dx.op.binary.f32(i32 36, float %4549, float %4605)  ; FMin(a,b)
  %4614 = fmul fast float %4613, %4607
  %4615 = fsub fast float 1.000000e+00, %4614
  %4616 = bitcast float %4615 to i32
  %4617 = sub nsw i32 2129859010, %4616
  %4618 = bitcast i32 %4617 to float
  %4619 = call float @dx.op.binary.f32(i32 36, float %4550, float %4605)  ; FMin(a,b)
  %4620 = fmul fast float %4619, %4607
  %4621 = fsub fast float 1.000000e+00, %4620
  %4622 = bitcast float %4621 to i32
  %4623 = sub nsw i32 2129859010, %4622
  %4624 = bitcast i32 %4623 to float
  %4625 = fmul fast float %4564, %50
  %4626 = fmul fast float %4625, %4585
  %4627 = fmul fast float %4626, %4612
  %4628 = fmul fast float %4564, %51
  %4629 = fmul fast float %4628, %4586
  %4630 = fmul fast float %4629, %4618
  %4631 = fmul fast float %4564, %52
  %4632 = fmul fast float %4631, %4587
  %4633 = fmul fast float %4632, %4624
  %4634 = call float @dx.op.binary.f32(i32 36, float %4542, float %4605)  ; FMin(a,b)
  %4635 = fmul fast float %4634, %4607
  %4636 = fsub fast float 1.000000e+00, %4635
  %4637 = bitcast float %4636 to i32
  %4638 = sub nsw i32 2129859010, %4637
  %4639 = bitcast i32 %4638 to float
  %4640 = call float @dx.op.binary.f32(i32 36, float %4543, float %4605)  ; FMin(a,b)
  %4641 = fmul fast float %4640, %4607
  %4642 = fsub fast float 1.000000e+00, %4641
  %4643 = bitcast float %4642 to i32
  %4644 = sub nsw i32 2129859010, %4643
  %4645 = bitcast i32 %4644 to float
  %4646 = call float @dx.op.binary.f32(i32 36, float %4553, float %4605)  ; FMin(a,b)
  %4647 = fmul fast float %4646, %4607
  %4648 = fsub fast float 1.000000e+00, %4647
  %4649 = bitcast float %4648 to i32
  %4650 = sub nsw i32 2129859010, %4649
  %4651 = bitcast i32 %4650 to float
  %4652 = fmul fast float %4625, %4601
  %4653 = fmul fast float %4652, %4639
  %4654 = fmul fast float %4628, %4602
  %4655 = fmul fast float %4654, %4645
  %4656 = fmul fast float %4631, %4603
  %4657 = fmul fast float %4656, %4651
  %4658 = call float @dx.op.dot3.f32(i32 55, float %4627, float %4630, float %4633, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4659 = select i1 %211, float 0.000000e+00, float %4627
  %4660 = select i1 %211, float %4658, float %4630
  %4661 = select i1 %211, float 0.000000e+00, float %4633
  %4662 = call float @dx.op.dot3.f32(i32 55, float %4653, float %4655, float %4657, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4663 = select i1 %211, float 0.000000e+00, float %4653
  %4664 = select i1 %211, float %4662, float %4655
  %4665 = select i1 %211, float 0.000000e+00, float %4657
  %4666 = fmul fast float %4555, 9.843750e-01
  %4667 = fmul fast float %4551, 9.843750e-01
  %4668 = fadd fast float %4666, 7.812500e-03
  %4669 = fadd fast float %4667, 7.812500e-03
  %4670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %4668, float %4669, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4671 = extractvalue %dx.types.ResRet.f32 %4670, 2
  %4672 = extractvalue %dx.types.ResRet.f32 %4670, 3
  %4673 = fmul fast float %4671, %4542
  %4674 = fmul fast float %4671, %4543
  %4675 = fmul fast float %4671, %4553
  %4676 = fadd fast float %4673, %4672
  %4677 = fadd fast float %4674, %4672
  %4678 = fadd fast float %4675, %4672
  %4679 = call float @dx.op.binary.f32(i32 35, float %4677, float %4678)  ; FMax(a,b)
  %4680 = call float @dx.op.binary.f32(i32 35, float %4676, float %4679)  ; FMax(a,b)
  %4681 = fsub fast float 1.000000e+00, %4680
  %4682 = fmul fast float %4681, %4659
  %4683 = fmul fast float %4681, %4660
  %4684 = fmul fast float %4681, %4661
  %4685 = call float @dx.op.dot3.f32(i32 55, float %4548, float %4549, float %4550, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4686 = fcmp fast ogt float %4685, 0x3E7FF19E20000000
  %4687 = fdiv fast float 1.000000e+00, %4685
  %4688 = select i1 %4686, float %4687, float 0.000000e+00
  %4689 = fmul fast float %4688, %4548
  %4690 = fmul fast float %4688, %4549
  %4691 = fmul fast float %4688, %4550
  %4692 = fadd fast float %4689, -1.000000e+00
  %4693 = fadd fast float %4690, -1.000000e+00
  %4694 = fadd fast float %4691, -1.000000e+00
  %4695 = fmul fast float %4692, 5.000000e-01
  %4696 = fmul fast float %4693, 5.000000e-01
  %4697 = fmul fast float %4694, 5.000000e-01
  %4698 = fadd fast float %4695, 1.000000e+00
  %4699 = fadd fast float %4696, 1.000000e+00
  %4700 = fadd fast float %4697, 1.000000e+00
  %4701 = fmul fast float %4676, %4663
  %4702 = fmul fast float %4677, %4664
  %4703 = fmul fast float %4678, %4665
  %4704 = fsub fast float 1.000000e+00, %4555
  %4705 = bitcast float %4704 to i32
  %4706 = sitofp i32 %4705 to float
  %4707 = fmul fast float %4706, 5.000000e+00
  %4708 = fadd fast float %4707, 0xC1EFBF8940000000
  %4709 = fptosi float %4708 to i32
  %4710 = bitcast i32 %4709 to float
  %4711 = fmul fast float %4710, %3276
  %4712 = fmul fast float %4659, %4711
  %4713 = fmul fast float %4712, %4681
  %4714 = fmul fast float %4713, %4698
  %4715 = fmul fast float %4660, %4711
  %4716 = fmul fast float %4715, %4681
  %4717 = fmul fast float %4716, %4699
  %4718 = fmul fast float %4661, %4711
  %4719 = fmul fast float %4718, %4681
  %4720 = fmul fast float %4719, %4700
  %4721 = fmul fast float %4682, %951
  %4722 = fmul fast float %4683, %951
  %4723 = fmul fast float %4684, %951
  %4724 = fadd fast float %4701, %3320
  %4725 = fadd fast float %4724, %4714
  %4726 = fmul fast float %4725, %951
  %4727 = fadd fast float %4702, %3322
  %4728 = fadd fast float %4727, %4717
  %4729 = fmul fast float %4728, %951
  %4730 = fadd fast float %4703, %3324
  %4731 = fadd fast float %4730, %4720
  %4732 = fmul fast float %4731, %951
  %4733 = bitcast i32 %4567 to float
  %4734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4735 = extractvalue %dx.types.CBufRet.f32 %4734, 3
  %4736 = fcmp fast oeq float %4735, 0.000000e+00
  br i1 %4736, label %4910, label %4737

; <label>:4737                                    ; preds = %4535
  %4738 = extractvalue %dx.types.CBufRet.f32 %4734, 0
  %4739 = extractvalue %dx.types.CBufRet.f32 %4734, 1
  %4740 = extractvalue %dx.types.CBufRet.f32 %4734, 2
  %4741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4742 = extractvalue %dx.types.CBufRet.f32 %4741, 0
  %4743 = extractvalue %dx.types.CBufRet.f32 %4741, 1
  %4744 = extractvalue %dx.types.CBufRet.f32 %4741, 2
  %4745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4746 = extractvalue %dx.types.CBufRet.f32 %4745, 0
  %4747 = extractvalue %dx.types.CBufRet.f32 %4745, 1
  %4748 = call float @dx.op.dot3.f32(i32 55, float %4742, float %4743, float %4744, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4749 = select i1 %211, float %4746, float %4742
  %4750 = select i1 %211, float %4748, float %4743
  %4751 = select i1 %211, float %4747, float %4744
  %4752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4753 = extractvalue %dx.types.CBufRet.f32 %4752, 1
  %4754 = fcmp fast une float %4753, 0.000000e+00
  br i1 %4754, label %4755, label %4772

; <label>:4755                                    ; preds = %4737
  %4756 = fptoui float %72 to i32
  %4757 = fptoui float %73 to i32
  %4758 = lshr i32 %4756, 4
  %4759 = lshr i32 %4757, 4
  %4760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4761 = extractvalue %dx.types.CBufRet.f32 %4760, 0
  %4762 = fptoui float %4761 to i32
  %4763 = add i32 %4762, 15
  %4764 = lshr i32 %4763, 4
  %4765 = mul i32 %4764, %4759
  %4766 = add i32 %4765, %4758
  %4767 = shl i32 %4766, 3
  %4768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4767, i32 undef)  ; BufferLoad(srv,index,wot)
  %4769 = extractvalue %dx.types.ResRet.i32 %4768, 0
  %4770 = and i32 %4769, -268435456
  %4771 = icmp eq i32 %4770, -1342177280
  br i1 %4771, label %4782, label %4772

; <label>:4772                                    ; preds = %4755, %4737
  %4773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4774 = extractvalue %dx.types.CBufRet.f32 %4773, 2
  %4775 = extractvalue %dx.types.CBufRet.f32 %4773, 3
  %4776 = fmul fast float %4774, %72
  %4777 = fmul fast float %4775, %73
  %4778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %4776, float %4777, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4779 = extractvalue %dx.types.ResRet.f32 %4778, 0
  %4780 = extractvalue %dx.types.ResRet.f32 %4778, 1
  %4781 = extractvalue %dx.types.ResRet.f32 %4778, 2
  br label %4782

; <label>:4782                                    ; preds = %4772, %4755
  %4783 = phi float [ %4779, %4772 ], [ 0.000000e+00, %4755 ]
  %4784 = phi float [ %4780, %4772 ], [ 0.000000e+00, %4755 ]
  %4785 = phi float [ %4781, %4772 ], [ 0.000000e+00, %4755 ]
  %4786 = call float @dx.op.binary.f32(i32 36, float %4784, float %4785)  ; FMin(a,b)
  %4787 = call float @dx.op.binary.f32(i32 36, float %4783, float %4786)  ; FMin(a,b)
  %4788 = fcmp fast ogt float %4787, 0.000000e+00
  br i1 %4788, label %4789, label %4910, !dx.controlflow.hints !70

; <label>:4789                                    ; preds = %4782
  %4790 = fmul fast float %4783, %4749
  %4791 = fmul fast float %4784, %4750
  %4792 = fmul fast float %4785, %4751
  %4793 = fsub fast float %4738, %4541
  %4794 = fsub fast float %4739, %4540
  %4795 = fsub fast float %4740, %4539
  %4796 = call float @dx.op.dot3.f32(i32 55, float %4793, float %4794, float %4795, float %4793, float %4794, float %4795)  ; Dot3(ax,ay,az,bx,by,bz)
  %4797 = call float @dx.op.unary.f32(i32 25, float %4796)  ; Rsqrt(value)
  %4798 = fmul fast float %4797, %4793
  %4799 = fmul fast float %4797, %4794
  %4800 = fmul fast float %4797, %4795
  %4801 = call float @dx.op.dot3.f32(i32 55, float %4738, float %4739, float %4740, float %4545, float %4546, float %4547)  ; Dot3(ax,ay,az,bx,by,bz)
  %4802 = call float @dx.op.dot3.f32(i32 55, float %4538, float %4537, float %4536, float %4798, float %4799, float %4800)  ; Dot3(ax,ay,az,bx,by,bz)
  %4803 = call float @dx.op.unary.f32(i32 7, float %4801)  ; Saturate(value)
  %4804 = fmul fast float %4803, %4803
  %4805 = fmul fast float %4804, %4733
  %4806 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  %4807 = fmul fast float %4806, %4803
  %4808 = call float @dx.op.dot3.f32(i32 55, float %4545, float %4546, float %4547, float %4798, float %4799, float %4800)  ; Dot3(ax,ay,az,bx,by,bz)
  %4809 = fmul fast float %4808, %4808
  %4810 = call float @dx.op.unary.f32(i32 6, float %4801)  ; FAbs(value)
  %4811 = fsub fast float 1.000000e+00, %4551
  %4812 = call float @dx.op.binary.f32(i32 35, float %4811, float 0x3F847AE140000000)  ; FMax(a,b)
  %4813 = fmul fast float %4812, %4812
  %4814 = fmul fast float %4813, %4813
  %4815 = fsub fast float 1.000000e+00, %4814
  %4816 = fmul fast float %4555, %4555
  %4817 = fmul fast float %4816, %4815
  %4818 = fadd fast float %4817, %4814
  %4819 = bitcast float %4818 to i32
  %4820 = ashr i32 %4819, 1
  %4821 = add nsw i32 %4820, 532487669
  %4822 = bitcast i32 %4821 to float
  %4823 = fadd fast float %4822, %4555
  %4824 = fmul fast float %4814, %4809
  %4825 = fsub fast float 1.000000e+00, %4809
  %4826 = fadd fast float %4825, %4824
  %4827 = fmul fast float %4810, %4810
  %4828 = fmul fast float %4827, %4815
  %4829 = fadd fast float %4828, %4814
  %4830 = bitcast float %4829 to i32
  %4831 = ashr i32 %4830, 1
  %4832 = add nsw i32 %4831, 532487669
  %4833 = bitcast i32 %4832 to float
  %4834 = fadd fast float %4833, %4810
  %4835 = fmul fast float %4826, %4826
  %4836 = fmul fast float %4835, %4823
  %4837 = fmul fast float %4836, %4834
  %4838 = fdiv fast float 0x3FF0A00000000000, %4837
  %4839 = fmul fast float %4838, %4814
  %4840 = call float @dx.op.unary.f32(i32 6, float %4802)  ; FAbs(value)
  %4841 = fsub fast float 1.000000e+00, %4840
  %4842 = bitcast float %4841 to i32
  %4843 = sitofp i32 %4842 to float
  %4844 = fmul fast float %4843, 5.000000e+00
  %4845 = fadd fast float %4844, 0xC1EFBF8940000000
  %4846 = fptosi float %4845 to i32
  %4847 = bitcast i32 %4846 to float
  %4848 = fsub fast float 1.000000e+00, %4542
  %4849 = fsub fast float 1.000000e+00, %4543
  %4850 = fsub fast float 1.000000e+00, %4553
  %4851 = fmul fast float %4847, %4848
  %4852 = fmul fast float %4847, %4849
  %4853 = fmul fast float %4847, %4850
  %4854 = fadd fast float %4851, %4542
  %4855 = fadd fast float %4852, %4543
  %4856 = fadd fast float %4853, %4553
  %4857 = fmul fast float %4801, 9.843750e-01
  %4858 = fadd fast float %4857, 7.812500e-03
  %4859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %4858, float %4669, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4860 = extractvalue %dx.types.ResRet.f32 %4859, 2
  %4861 = extractvalue %dx.types.ResRet.f32 %4859, 3
  %4862 = fmul fast float %4860, %4542
  %4863 = fmul fast float %4860, %4543
  %4864 = fmul fast float %4860, %4553
  %4865 = fadd fast float %4862, %4861
  %4866 = fadd fast float %4863, %4861
  %4867 = fadd fast float %4864, %4861
  %4868 = call float @dx.op.binary.f32(i32 35, float %4866, float %4867)  ; FMax(a,b)
  %4869 = call float @dx.op.binary.f32(i32 35, float %4865, float %4868)  ; FMax(a,b)
  %4870 = fsub fast float 1.000000e+00, %4869
  %4871 = fmul fast float %4854, %4839
  %4872 = fmul fast float %4855, %4839
  %4873 = fmul fast float %4856, %4839
  %4874 = fsub fast float 1.000000e+00, %4802
  %4875 = bitcast float %4874 to i32
  %4876 = sitofp i32 %4875 to float
  %4877 = fmul fast float %4876, 5.000000e+00
  %4878 = fadd fast float %4877, 0xC1EFBF8940000000
  %4879 = fptosi float %4878 to i32
  %4880 = bitcast i32 %4879 to float
  %4881 = fmul fast float %4880, %3276
  %4882 = fmul fast float %4870, %4881
  %4883 = fmul fast float %4882, %4698
  %4884 = fmul fast float %4882, %4699
  %4885 = fmul fast float %4882, %4700
  %4886 = fadd fast float %4883, %4871
  %4887 = fadd fast float %4884, %4872
  %4888 = fadd fast float %4885, %4873
  %4889 = fmul fast float %4807, %4790
  %4890 = fmul fast float %4889, %4870
  %4891 = fmul fast float %4807, %4791
  %4892 = fmul fast float %4891, %4870
  %4893 = fmul fast float %4807, %4792
  %4894 = fmul fast float %4893, %4870
  %4895 = fmul fast float %4889, %4886
  %4896 = fmul fast float %4891, %4887
  %4897 = fmul fast float %4893, %4888
  %4898 = fadd fast float %4890, %4682
  %4899 = fmul fast float %4898, %951
  %4900 = fadd fast float %4892, %4683
  %4901 = fmul fast float %4900, %951
  %4902 = fadd fast float %4894, %4684
  %4903 = fmul fast float %4902, %951
  %4904 = fadd fast float %4895, %4725
  %4905 = fmul fast float %4904, %951
  %4906 = fadd fast float %4896, %4728
  %4907 = fmul fast float %4906, %951
  %4908 = fadd fast float %4897, %4731
  %4909 = fmul fast float %4908, %951
  br label %4910

; <label>:4910                                    ; preds = %4789, %4782, %4535
  %4911 = phi float [ %4726, %4535 ], [ %4726, %4782 ], [ %4905, %4789 ]
  %4912 = phi float [ %4729, %4535 ], [ %4729, %4782 ], [ %4907, %4789 ]
  %4913 = phi float [ %4732, %4535 ], [ %4732, %4782 ], [ %4909, %4789 ]
  %4914 = phi float [ %4721, %4535 ], [ %4721, %4782 ], [ %4899, %4789 ]
  %4915 = phi float [ %4722, %4535 ], [ %4722, %4782 ], [ %4901, %4789 ]
  %4916 = phi float [ %4723, %4535 ], [ %4723, %4782 ], [ %4903, %4789 ]
  %4917 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4918 = extractvalue %dx.types.CBufRet.i32 %4917, 0
  %4919 = icmp eq i32 %4918, 0
  br i1 %4919, label %5300, label %4920

; <label>:4920                                    ; preds = %4910
  %4921 = fptoui float %72 to i32
  %4922 = fptoui float %73 to i32
  %4923 = lshr i32 %4921, 4
  %4924 = lshr i32 %4922, 4
  %4925 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4926 = extractvalue %dx.types.CBufRet.i32 %4925, 0
  %4927 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4924, i32 %4926, i32 %4923)  ; UMad(a,b,c)
  %4928 = add nsw i32 %4918, -1
  %4929 = call i32 @dx.op.binary.i32(i32 37, i32 %4928, i32 0)  ; IMax(a,b)
  %4930 = call float @dx.op.binary.f32(i32 35, float %67, float 0.000000e+00)  ; FMax(a,b)
  %4931 = fptoui float %4930 to i32
  %4932 = lshr i32 %4931, 5
  %4933 = call i32 @dx.op.binary.i32(i32 40, i32 %4932, i32 8191)  ; UMin(a,b)
  %4934 = shl i32 %4933, 2
  %4935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4934, i32 undef)  ; BufferLoad(srv,index,wot)
  %4936 = extractvalue %dx.types.ResRet.i32 %4935, 0
  %4937 = lshr i32 %4936, 16
  %4938 = and i32 %4936, 65535
  %4939 = lshr i32 %4936, 21
  %4940 = lshr i32 %4938, 5
  %4941 = call i32 @dx.op.binary.i32(i32 40, i32 %4940, i32 %4929)  ; UMin(a,b)
  %4942 = icmp ugt i32 %4939, %4941
  br i1 %4942, label %5300, label %4943

; <label>:4943                                    ; preds = %4920
  br label %4944

; <label>:4944                                    ; preds = %5290, %4943
  %4945 = phi i32 [ %5297, %5290 ], [ %4939, %4943 ]
  %4946 = phi float [ %5291, %5290 ], [ %4911, %4943 ]
  %4947 = phi float [ %5292, %5290 ], [ %4912, %4943 ]
  %4948 = phi float [ %5293, %5290 ], [ %4913, %4943 ]
  %4949 = phi float [ %5294, %5290 ], [ %4914, %4943 ]
  %4950 = phi float [ %5295, %5290 ], [ %4915, %4943 ]
  %4951 = phi float [ %5296, %5290 ], [ %4916, %4943 ]
  %4952 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4953 = extractvalue %dx.types.CBufRet.i32 %4952, 0
  %4954 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4927, i32 %4953, i32 %4945)  ; UMad(a,b,c)
  %4955 = shl i32 %4954, 2
  %4956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4955, i32 undef)  ; BufferLoad(srv,index,wot)
  %4957 = extractvalue %dx.types.ResRet.i32 %4956, 0
  %4958 = shl i32 %4945, 5
  %4959 = sub nsw i32 %4937, %4958
  %4960 = call i32 @dx.op.binary.i32(i32 37, i32 %4959, i32 0)  ; IMax(a,b)
  %4961 = call i32 @dx.op.binary.i32(i32 38, i32 %4960, i32 31)  ; IMin(a,b)
  %4962 = sub nsw i32 1, %4937
  %4963 = add nsw i32 %4962, %4938
  %4964 = call i32 @dx.op.binary.i32(i32 37, i32 %4963, i32 0)  ; IMax(a,b)
  %4965 = call i32 @dx.op.binary.i32(i32 38, i32 %4964, i32 32)  ; IMin(a,b)
  %4966 = and i32 %4965, 31
  %4967 = shl i32 -1, %4966
  %4968 = xor i32 %4967, -1
  %4969 = and i32 %4961, 31
  %4970 = shl i32 %4968, %4969
  %4971 = icmp eq i32 %4965, 32
  %4972 = select i1 %4971, i32 -1, i32 %4970
  %4973 = and i32 %4972, %4957
  %4974 = icmp eq i32 %4973, 0
  br i1 %4974, label %5290, label %4975

; <label>:4975                                    ; preds = %4944
  br label %4976

; <label>:4976                                    ; preds = %5056, %4975
  %4977 = phi i32 [ %4988, %5056 ], [ %4973, %4975 ]
  %4978 = phi float [ %5057, %5056 ], [ %4946, %4975 ]
  %4979 = phi float [ %5058, %5056 ], [ %4947, %4975 ]
  %4980 = phi float [ %5059, %5056 ], [ %4948, %4975 ]
  %4981 = phi float [ %5060, %5056 ], [ %4949, %4975 ]
  %4982 = phi float [ %5061, %5056 ], [ %4950, %4975 ]
  %4983 = phi float [ %5062, %5056 ], [ %4951, %4975 ]
  %4984 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4977)  ; FirstbitLo(value)
  %4985 = add i32 %4984, %4958
  %4986 = and i32 %4984, 31
  %4987 = shl i32 1, %4986
  %4988 = xor i32 %4987, %4977
  %4989 = mul i32 %4985, 112
  %4990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4989, i32 undef)  ; BufferLoad(srv,index,wot)
  %4991 = extractvalue %dx.types.ResRet.f32 %4990, 0
  %4992 = extractvalue %dx.types.ResRet.f32 %4990, 1
  %4993 = extractvalue %dx.types.ResRet.f32 %4990, 2
  %4994 = or i32 %4989, 12
  %4995 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4994, i32 undef)  ; BufferLoad(srv,index,wot)
  %4996 = extractvalue %dx.types.ResRet.f32 %4995, 0
  %4997 = add i32 %4989, 44
  %4998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4997, i32 undef)  ; BufferLoad(srv,index,wot)
  %4999 = extractvalue %dx.types.ResRet.f32 %4998, 0
  %5000 = add i32 %4989, 48
  %5001 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5000, i32 undef)  ; BufferLoad(srv,index,wot)
  %5002 = extractvalue %dx.types.ResRet.f32 %5001, 0
  %5003 = extractvalue %dx.types.ResRet.f32 %5001, 1
  %5004 = extractvalue %dx.types.ResRet.f32 %5001, 2
  %5005 = add i32 %4989, 80
  %5006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5005, i32 undef)  ; BufferLoad(srv,index,wot)
  %5007 = extractvalue %dx.types.ResRet.f32 %5006, 1
  %5008 = extractvalue %dx.types.ResRet.f32 %5006, 2
  %5009 = call float @dx.op.dot3.f32(i32 55, float %4991, float %4992, float %4993, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5010 = select i1 %211, float %5007, float %4991
  %5011 = select i1 %211, float %5009, float %4992
  %5012 = select i1 %211, float %5008, float %4993
  %5013 = fsub fast float %5002, %159
  %5014 = fsub fast float %5003, %160
  %5015 = fsub fast float %5004, %161
  %5016 = call float @dx.op.dot3.f32(i32 55, float %5013, float %5014, float %5015, float %5013, float %5014, float %5015)  ; Dot3(ax,ay,az,bx,by,bz)
  %5017 = call float @dx.op.unary.f32(i32 24, float %5016)  ; Sqrt(value)
  %5018 = fdiv fast float 1.000000e+00, %5017
  %5019 = fmul fast float %5018, %5013
  %5020 = fmul fast float %5018, %5014
  %5021 = fmul fast float %5018, %5015
  %5022 = fadd fast float %5017, %4996
  %5023 = fdiv fast float 1.000000e+00, %5022
  %5024 = fmul float %4999, %5023
  %5025 = fmul float %5024, %5024
  %5026 = call float @dx.op.unary.f32(i32 7, float %5025)  ; Saturate(value)
  %5027 = and i32 %4987, %4973
  %5028 = icmp eq i32 %5027, 0
  br i1 %5028, label %5051, label %5029, !dx.controlflow.hints !71

; <label>:5029                                    ; preds = %4976
  %5030 = lshr i32 %4921, 5
  %5031 = lshr i32 %4922, 5
  %5032 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %5030, i32 %5031, i32 %4985, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5033 = extractvalue %dx.types.ResRet.i32 %5032, 0
  %5034 = and i32 %5033, 3
  %5035 = icmp eq i32 %5034, 0
  %5036 = select i1 %5035, float 1.000000e+00, float 0.000000e+00
  %5037 = icmp eq i32 %5034, 3
  br i1 %5037, label %5038, label %5051

; <label>:5038                                    ; preds = %5029
  %5039 = lshr i32 %5033, 10
  %5040 = and i32 %5039, 8160
  %5041 = and i32 %4922, 31
  %5042 = or i32 %5040, %5041
  %5043 = lshr i32 %5033, 1
  %5044 = and i32 %5043, 16352
  %5045 = and i32 %4921, 31
  %5046 = or i32 %5044, %5045
  %5047 = lshr i32 %5033, 23
  %5048 = and i32 %5047, 255
  %5049 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %5046, i32 %5042, i32 %5048, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5050 = extractvalue %dx.types.ResRet.f32 %5049, 0
  br label %5051

; <label>:5051                                    ; preds = %5038, %5029, %4976
  %5052 = phi float [ %5050, %5038 ], [ %5036, %5029 ], [ 0.000000e+00, %4976 ]
  %5053 = call float @dx.op.binary.f32(i32 36, float %5052, float %5052)  ; FMin(a,b)
  %5054 = call float @dx.op.binary.f32(i32 36, float %5052, float %5053)  ; FMin(a,b)
  %5055 = fcmp fast ogt float %5054, 0.000000e+00
  br i1 %5055, label %5064, label %5056, !dx.controlflow.hints !72

; <label>:5056                                    ; preds = %5125, %5051
  %5057 = phi float [ %4978, %5051 ], [ %5286, %5125 ]
  %5058 = phi float [ %4979, %5051 ], [ %5287, %5125 ]
  %5059 = phi float [ %4980, %5051 ], [ %5288, %5125 ]
  %5060 = phi float [ %4981, %5051 ], [ %5280, %5125 ]
  %5061 = phi float [ %4982, %5051 ], [ %5281, %5125 ]
  %5062 = phi float [ %4983, %5051 ], [ %5282, %5125 ]
  %5063 = icmp eq i32 %4977, %4987
  br i1 %5063, label %5289, label %4976

; <label>:5064                                    ; preds = %5051
  %5065 = fmul fast float %5052, %5010
  %5066 = fmul fast float %5052, %5011
  %5067 = fmul fast float %5052, %5012
  %5068 = fsub fast float %5004, %3749
  %5069 = fcmp fast ogt float %5068, 0.000000e+00
  %5070 = fsub fast float %161, %3749
  %5071 = fcmp fast ogt float %5070, 0.000000e+00
  %5072 = xor i1 %5071, %5069
  %5073 = fsub fast float %3749, %5004
  %5074 = fmul fast float %5073, 2.000000e+00
  %5075 = fadd fast float %5074, %5004
  %5076 = select i1 %5072, float %5004, float %5075
  %5077 = fsub fast float %5076, %161
  %5078 = call float @dx.op.dot3.f32(i32 55, float %5013, float %5014, float %5077, float %5013, float %5014, float %5077)  ; Dot3(ax,ay,az,bx,by,bz)
  %5079 = call float @dx.op.unary.f32(i32 25, float %5078)  ; Rsqrt(value)
  %5080 = fmul fast float %5079, %5013
  %5081 = fmul fast float %5079, %5014
  %5082 = fmul fast float %5079, %5077
  %5083 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3757)  ; Dot3(ax,ay,az,bx,by,bz)
  %5084 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5080, float %5081, float %5082)  ; Dot3(ax,ay,az,bx,by,bz)
  %5085 = fdiv fast float 1.000000e+00, %5084
  %5086 = fmul fast float %5085, %5083
  %5087 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5070, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5088 = fcmp fast ogt float %5087, 0.000000e+00
  %5089 = fcmp fast olt float %5087, 0.000000e+00
  %5090 = zext i1 %5088 to i32
  %5091 = zext i1 %5089 to i32
  %5092 = sub nsw i32 %5090, %5091
  %5093 = sitofp i32 %5092 to float
  %5094 = fsub fast float %5076, %3749
  %5095 = call float @dx.op.dot3.f32(i32 55, float %5013, float %5014, float %5094, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5096 = fcmp fast ogt float %5095, 0.000000e+00
  %5097 = fcmp fast olt float %5095, 0.000000e+00
  %5098 = zext i1 %5096 to i32
  %5099 = zext i1 %5097 to i32
  %5100 = sub nsw i32 %5098, %5099
  %5101 = sitofp i32 %5100 to float
  %5102 = fcmp fast une float %5093, %5101
  br i1 %5102, label %5103, label %5113

; <label>:5103                                    ; preds = %5064
  %5104 = fmul fast float %5086, %5082
  %5105 = fmul fast float %5086, %5081
  %5106 = fmul fast float %5086, %5080
  %5107 = fmul fast float %5106, %5106
  %5108 = fmul fast float %5105, %5105
  %5109 = fadd fast float %5107, %5108
  %5110 = fmul fast float %5104, %5104
  %5111 = fadd fast float %5109, %5110
  %5112 = call float @dx.op.unary.f32(i32 24, float %5111)  ; Sqrt(value)
  br label %5125

; <label>:5113                                    ; preds = %5064
  %5114 = icmp slt i32 %5092, 0
  br i1 %5114, label %5115, label %5125

; <label>:5115                                    ; preds = %5113
  %5116 = fsub fast float %159, %5002
  %5117 = fsub fast float %160, %5003
  %5118 = fsub fast float %161, %5076
  %5119 = fmul fast float %5116, %5116
  %5120 = fmul fast float %5117, %5117
  %5121 = fadd fast float %5119, %5120
  %5122 = fmul fast float %5118, %5118
  %5123 = fadd fast float %5121, %5122
  %5124 = call float @dx.op.unary.f32(i32 24, float %5123)  ; Sqrt(value)
  br label %5125

; <label>:5125                                    ; preds = %5115, %5113, %5103
  %5126 = phi float [ %5112, %5103 ], [ %5124, %5115 ], [ 0.000000e+00, %5113 ]
  %5127 = and i1 %5071, %5069
  %5128 = fsub fast float -0.000000e+00, %5126
  %5129 = select i1 %5127, float -0.000000e+00, float %5128
  %5130 = fmul fast float %3750, 0x3FF7154760000000
  %5131 = fmul fast float %5130, %5129
  %5132 = fmul fast float %3751, 0x3FF7154760000000
  %5133 = fmul fast float %5132, %5129
  %5134 = fmul fast float %3752, 0x3FF7154760000000
  %5135 = fmul fast float %5134, %5129
  %5136 = call float @dx.op.unary.f32(i32 21, float %5131)  ; Exp(value)
  %5137 = call float @dx.op.unary.f32(i32 21, float %5133)  ; Exp(value)
  %5138 = call float @dx.op.unary.f32(i32 21, float %5135)  ; Exp(value)
  %5139 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5140 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  %5141 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5142 = fmul fast float %5065, %5139
  %5143 = fmul fast float %5066, %5140
  %5144 = fmul fast float %5067, %5141
  %5145 = fsub fast float %5019, %4541
  %5146 = fsub fast float %5020, %4540
  %5147 = fsub fast float %5021, %4539
  %5148 = call float @dx.op.dot3.f32(i32 55, float %5145, float %5146, float %5147, float %5145, float %5146, float %5147)  ; Dot3(ax,ay,az,bx,by,bz)
  %5149 = call float @dx.op.unary.f32(i32 25, float %5148)  ; Rsqrt(value)
  %5150 = fmul fast float %5149, %5145
  %5151 = fmul fast float %5149, %5146
  %5152 = fmul fast float %5149, %5147
  %5153 = call float @dx.op.dot3.f32(i32 55, float %5019, float %5020, float %5021, float %4545, float %4546, float %4547)  ; Dot3(ax,ay,az,bx,by,bz)
  %5154 = call float @dx.op.dot3.f32(i32 55, float %4538, float %4537, float %4536, float %5150, float %5151, float %5152)  ; Dot3(ax,ay,az,bx,by,bz)
  %5155 = call float @dx.op.unary.f32(i32 7, float %5153)  ; Saturate(value)
  %5156 = fmul fast float %5155, %5026
  %5157 = fmul fast float %5155, %5155
  %5158 = fmul fast float %5157, %4733
  %5159 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  %5160 = fmul fast float %5156, %5159
  %5161 = bitcast float %5016 to i32
  %5162 = ashr i32 %5161, 1
  %5163 = sub nsw i32 1597463007, %5162
  %5164 = bitcast i32 %5163 to float
  %5165 = fmul fast float %5164, %5013
  %5166 = fmul fast float %5164, %5014
  %5167 = fmul fast float %5164, %5015
  %5168 = fsub fast float %5165, %4541
  %5169 = fsub fast float %5166, %4540
  %5170 = fsub fast float %5167, %4539
  %5171 = call float @dx.op.dot3.f32(i32 55, float %5168, float %5169, float %5170, float %5168, float %5169, float %5170)  ; Dot3(ax,ay,az,bx,by,bz)
  %5172 = call float @dx.op.unary.f32(i32 25, float %5171)  ; Rsqrt(value)
  %5173 = fmul fast float %5168, %5172
  %5174 = fmul fast float %5169, %5172
  %5175 = fmul fast float %5170, %5172
  %5176 = call float @dx.op.dot3.f32(i32 55, float %4545, float %4546, float %4547, float %5173, float %5174, float %5175)  ; Dot3(ax,ay,az,bx,by,bz)
  %5177 = fmul fast float %5176, %5176
  %5178 = call float @dx.op.unary.f32(i32 6, float %5153)  ; FAbs(value)
  %5179 = fsub fast float 1.000000e+00, %4551
  %5180 = call float @dx.op.binary.f32(i32 35, float %5179, float 0x3F847AE140000000)  ; FMax(a,b)
  %5181 = fmul fast float %5180, %5180
  %5182 = fmul fast float %5181, %5181
  %5183 = fsub fast float 1.000000e+00, %5182
  %5184 = fmul fast float %4555, %4555
  %5185 = fmul fast float %5184, %5183
  %5186 = fadd fast float %5185, %5182
  %5187 = bitcast float %5186 to i32
  %5188 = ashr i32 %5187, 1
  %5189 = add nsw i32 %5188, 532487669
  %5190 = bitcast i32 %5189 to float
  %5191 = fadd fast float %5190, %4555
  %5192 = fmul fast float %5182, %5177
  %5193 = fsub fast float 1.000000e+00, %5177
  %5194 = fadd fast float %5193, %5192
  %5195 = fmul fast float %5178, %5178
  %5196 = fmul fast float %5195, %5183
  %5197 = fadd fast float %5196, %5182
  %5198 = bitcast float %5197 to i32
  %5199 = ashr i32 %5198, 1
  %5200 = add nsw i32 %5199, 532487669
  %5201 = bitcast i32 %5200 to float
  %5202 = fadd fast float %5201, %5178
  %5203 = fmul fast float %5194, %5194
  %5204 = fmul fast float %5203, %5191
  %5205 = fmul fast float %5204, %5202
  %5206 = fdiv fast float 1.000000e+00, %5205
  %5207 = bitcast float %5182 to i32
  %5208 = sitofp i32 %5207 to float
  %5209 = fmul fast float %5208, 0x3FE7F73180000000
  %5210 = fadd fast float %5209, 0x41AFE27C40000000
  %5211 = fptosi float %5210 to i32
  %5212 = bitcast i32 %5211 to float
  %5213 = fmul fast float %4999, 0x3FD80E9D60000000
  %5214 = fmul fast float %5213, %5164
  %5215 = fadd fast float %5212, %5214
  %5216 = bitcast float %5215 to i32
  %5217 = sub nsw i32 2129859010, %5216
  %5218 = bitcast i32 %5217 to float
  %5219 = fmul fast float %5182, %5206
  %5220 = fmul fast float %5219, %5212
  %5221 = fmul fast float %5220, %5218
  %5222 = call float @dx.op.unary.f32(i32 6, float %5154)  ; FAbs(value)
  %5223 = fsub fast float 1.000000e+00, %5222
  %5224 = bitcast float %5223 to i32
  %5225 = sitofp i32 %5224 to float
  %5226 = fmul fast float %5225, 5.000000e+00
  %5227 = fadd fast float %5226, 0xC1EFBF8940000000
  %5228 = fptosi float %5227 to i32
  %5229 = bitcast i32 %5228 to float
  %5230 = fsub fast float 1.000000e+00, %4542
  %5231 = fsub fast float 1.000000e+00, %4543
  %5232 = fsub fast float 1.000000e+00, %4553
  %5233 = fmul fast float %5229, %5230
  %5234 = fmul fast float %5229, %5231
  %5235 = fmul fast float %5229, %5232
  %5236 = fadd fast float %5233, %4542
  %5237 = fadd fast float %5234, %4543
  %5238 = fadd fast float %5235, %4553
  %5239 = fmul fast float %5153, 9.843750e-01
  %5240 = fadd fast float %5239, 7.812500e-03
  %5241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %5240, float %4669, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5242 = extractvalue %dx.types.ResRet.f32 %5241, 2
  %5243 = extractvalue %dx.types.ResRet.f32 %5241, 3
  %5244 = fmul fast float %5242, %4542
  %5245 = fmul fast float %5242, %4543
  %5246 = fmul fast float %5242, %4553
  %5247 = fadd fast float %5244, %5243
  %5248 = fadd fast float %5245, %5243
  %5249 = fadd fast float %5246, %5243
  %5250 = call float @dx.op.binary.f32(i32 35, float %5248, float %5249)  ; FMax(a,b)
  %5251 = call float @dx.op.binary.f32(i32 35, float %5247, float %5250)  ; FMax(a,b)
  %5252 = fsub fast float 1.000000e+00, %5251
  %5253 = fmul fast float %5221, %5236
  %5254 = fmul fast float %5221, %5237
  %5255 = fmul fast float %5221, %5238
  %5256 = fsub fast float 1.000000e+00, %5154
  %5257 = bitcast float %5256 to i32
  %5258 = sitofp i32 %5257 to float
  %5259 = fmul fast float %5258, 5.000000e+00
  %5260 = fadd fast float %5259, 0xC1EFBF8940000000
  %5261 = fptosi float %5260 to i32
  %5262 = bitcast i32 %5261 to float
  %5263 = fmul fast float %5262, %3276
  %5264 = fmul fast float %5252, %5263
  %5265 = fmul fast float %5264, %4698
  %5266 = fmul fast float %5264, %4699
  %5267 = fmul fast float %5264, %4700
  %5268 = fadd fast float %5265, %5253
  %5269 = fadd fast float %5266, %5254
  %5270 = fadd fast float %5267, %5255
  %5271 = fmul fast float %5142, %951
  %5272 = fmul fast float %5271, %5160
  %5273 = fmul fast float %5272, %5252
  %5274 = fmul fast float %5143, %951
  %5275 = fmul fast float %5274, %5160
  %5276 = fmul fast float %5275, %5252
  %5277 = fmul fast float %5144, %951
  %5278 = fmul fast float %5277, %5160
  %5279 = fmul fast float %5278, %5252
  %5280 = fadd fast float %5273, %4981
  %5281 = fadd fast float %5276, %4982
  %5282 = fadd fast float %5279, %4983
  %5283 = fmul fast float %5272, %5268
  %5284 = fmul fast float %5275, %5269
  %5285 = fmul fast float %5278, %5270
  %5286 = fadd fast float %5283, %4978
  %5287 = fadd fast float %5284, %4979
  %5288 = fadd fast float %5285, %4980
  br label %5056

; <label>:5289                                    ; preds = %5056
  br label %5290

; <label>:5290                                    ; preds = %5289, %4944
  %5291 = phi float [ %4946, %4944 ], [ %5057, %5289 ]
  %5292 = phi float [ %4947, %4944 ], [ %5058, %5289 ]
  %5293 = phi float [ %4948, %4944 ], [ %5059, %5289 ]
  %5294 = phi float [ %4949, %4944 ], [ %5060, %5289 ]
  %5295 = phi float [ %4950, %4944 ], [ %5061, %5289 ]
  %5296 = phi float [ %4951, %4944 ], [ %5062, %5289 ]
  %5297 = add i32 %4945, 1
  %5298 = icmp ugt i32 %5297, %4941
  br i1 %5298, label %5299, label %4944

; <label>:5299                                    ; preds = %5290
  br label %5300

; <label>:5300                                    ; preds = %5299, %4920, %4910
  %5301 = phi float [ %4911, %4910 ], [ %4911, %4920 ], [ %5291, %5299 ]
  %5302 = phi float [ %4912, %4910 ], [ %4912, %4920 ], [ %5292, %5299 ]
  %5303 = phi float [ %4913, %4910 ], [ %4913, %4920 ], [ %5293, %5299 ]
  %5304 = phi float [ %4914, %4910 ], [ %4914, %4920 ], [ %5294, %5299 ]
  %5305 = phi float [ %4915, %4910 ], [ %4915, %4920 ], [ %5295, %5299 ]
  %5306 = phi float [ %4916, %4910 ], [ %4916, %4920 ], [ %5296, %5299 ]
  %5307 = call float @dx.op.unary.f32(i32 24, float %4548)  ; Sqrt(value)
  %5308 = call float @dx.op.unary.f32(i32 24, float %4549)  ; Sqrt(value)
  %5309 = call float @dx.op.unary.f32(i32 24, float %4550)  ; Sqrt(value)
  %5310 = fmul fast float %5307, %5304
  %5311 = fmul fast float %5308, %5305
  %5312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5313 = extractvalue %dx.types.CBufRet.f32 %5312, 0
  br i1 %211, label %5314, label %5334

; <label>:5314                                    ; preds = %5300
  %5315 = fadd fast float %3298, %5306
  %5316 = fmul fast float %5315, %3277
  %5317 = fsub fast float 1.000000e+00, %3277
  %5318 = call float @dx.op.unary.f32(i32 7, float %5317)  ; Saturate(value)
  %5319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5320 = extractvalue %dx.types.CBufRet.f32 %5319, 3
  %5321 = fmul fast float %5320, %5318
  %5322 = fadd fast float %5321, %5316
  %5323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5324 = extractvalue %dx.types.CBufRet.f32 %5323, 0
  %5325 = fmul fast float %5324, %4704
  %5326 = fsub fast float %5322, %5325
  %5327 = fadd fast float %5311, %5310
  %5328 = fmul fast float %5313, %5327
  %5329 = extractvalue %dx.types.CBufRet.f32 %5319, 1
  %5330 = fsub fast float %5326, %5329
  %5331 = extractvalue %dx.types.CBufRet.f32 %5319, 2
  %5332 = fmul fast float %5330, %5331
  %5333 = call float @dx.op.unary.f32(i32 7, float %5332)  ; Saturate(value)
  br label %5350

; <label>:5334                                    ; preds = %5300
  %5335 = fmul fast float %5309, %5306
  %5336 = fmul fast float %5313, %5310
  %5337 = fmul fast float %5313, %5311
  %5338 = fmul fast float %5335, %5313
  %5339 = add i32 %28, 356
  %5340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5339, i32 undef)  ; BufferLoad(srv,index,wot)
  %5341 = extractvalue %dx.types.ResRet.i32 %5340, 0
  %5342 = and i32 %5341, 32
  %5343 = icmp eq i32 %5342, 0
  br i1 %5343, label %5350, label %5344

; <label>:5344                                    ; preds = %5334
  %5345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5346 = extractvalue %dx.types.CBufRet.f32 %5345, 0
  %5347 = fmul fast float %5346, 0x3FE99999A0000000
  %5348 = fadd fast float %5346, %5336
  %5349 = fadd fast float %5347, %5338
  br label %5350

; <label>:5350                                    ; preds = %5344, %5334, %5314
  %5351 = phi float [ %5328, %5314 ], [ %5348, %5344 ], [ %5336, %5334 ]
  %5352 = phi float [ %5333, %5314 ], [ %5337, %5344 ], [ %5337, %5334 ]
  %5353 = phi float [ 1.000000e+00, %5314 ], [ %5349, %5344 ], [ %5338, %5334 ]
  %5354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5355 = extractvalue %dx.types.CBufRet.f32 %5354, 0
  %5356 = fmul fast float %5355, %5302
  %5357 = fmul fast float %5355, %5303
  %5358 = fadd fast float %5302, %5301
  %5359 = select i1 %211, float %5358, float %5301
  %5360 = fmul float %5359, %5355
  %5361 = select i1 %211, float 0.000000e+00, float %5356
  %5362 = select i1 %211, float 0.000000e+00, float %5357
  %5363 = fmul fast float %5351, %5307
  %5364 = fmul fast float %5352, %5308
  %5365 = fmul fast float %5353, %5309
  %5366 = fadd fast float %5360, %5363
  %5367 = fadd fast float %5361, %5364
  %5368 = fadd fast float %5362, %5365
  %5369 = select i1 %211, float %5352, float %5367
  %5370 = select i1 %211, float %5353, float %5368
  %5371 = call float @dx.op.binary.f32(i32 36, float %5366, float 3.225500e+04)  ; FMin(a,b)
  %5372 = call float @dx.op.binary.f32(i32 36, float %5369, float 3.225500e+04)  ; FMin(a,b)
  %5373 = call float @dx.op.binary.f32(i32 36, float %5370, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5371)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5372)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5373)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

