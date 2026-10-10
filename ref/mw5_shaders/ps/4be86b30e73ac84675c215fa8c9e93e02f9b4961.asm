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
; SECONDARY_TEXCOORDS      0   xy          7     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        8     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw        9     NONE   float      w
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
; shader hash: 26692f1e6645ca1af45775ea54be2953
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
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 39, 40, 42 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 39, 40, 42 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 39, 40, 42 }
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
  %31 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %63 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = fmul fast float %65, %59
  %67 = fmul fast float %65, %60
  %68 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %69 = bitcast float %68 to i32
  %70 = ashr i32 %69, 1
  %71 = sub nsw i32 1597250115, %70
  %72 = bitcast i32 %71 to float
  %73 = fmul fast float %72, %51
  %74 = fmul fast float %72, %52
  %75 = fmul fast float %72, %53
  %76 = fmul fast float %52, %49
  %77 = fmul fast float %53, %48
  %78 = fsub fast float %76, %77
  %79 = fmul fast float %53, %47
  %80 = fmul fast float %51, %49
  %81 = fsub fast float %79, %80
  %82 = fmul fast float %51, %48
  %83 = fmul fast float %52, %47
  %84 = fsub fast float %82, %83
  %85 = fmul fast float %78, %50
  %86 = fmul fast float %81, %50
  %87 = fmul fast float %84, %50
  %88 = call float @dx.op.dot3.f32(i32 55, float %40, float %41, float %42, float %40, float %41, float %42)  ; Dot3(ax,ay,az,bx,by,bz)
  %89 = bitcast float %88 to i32
  %90 = ashr i32 %89, 1
  %91 = sub nsw i32 1597250115, %90
  %92 = bitcast i32 %91 to float
  %93 = fmul fast float %92, %40
  %94 = fmul fast float %92, %41
  %95 = fmul fast float %92, %42
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 3
  %99 = fmul fast float %66, 2.000000e+00
  %100 = fmul fast float %99, %97
  %101 = fmul fast float %67, 2.000000e+00
  %102 = fmul fast float %101, %98
  %103 = fsub fast float 1.000000e+00, %100
  %104 = fsub fast float 1.000000e+00, %102
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %109 = fmul fast float %103, %106
  %110 = fmul fast float %103, %107
  %111 = fmul fast float %103, %108
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 1
  %115 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %116 = fmul fast float %104, %113
  %117 = fmul fast float %104, %114
  %118 = fmul fast float %104, %115
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = fadd fast float %116, %120
  %124 = fadd fast float %123, %109
  %125 = fadd fast float %117, %121
  %126 = fadd fast float %125, %110
  %127 = fadd fast float %118, %122
  %128 = fadd fast float %127, %111
  %129 = fmul fast float %124, %61
  %130 = fmul fast float %126, %61
  %131 = fmul fast float %128, %61
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 3
  %135 = fmul fast float %133, %66
  %136 = fmul fast float %134, %67
  %137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %138 = extractvalue %dx.types.ResRet.i32 %137, 0
  %139 = and i32 %138, 114688
  %140 = icmp ne i32 %139, 0
  %141 = select i1 %140, float %135, float 0.000000e+00
  %142 = select i1 %140, float %136, float 0.000000e+00
  %143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %27, float %141, float %142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %144 = extractvalue %dx.types.ResRet.f32 %143, 0
  %145 = fmul fast float %144, 2.550000e+02
  %146 = fptoui float %145 to i32
  %147 = select i1 %140, i32 %146, i32 0
  %148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.i32 %148, 3
  %150 = and i32 %149, 3
  %151 = icmp ne i32 %150, 0
  %152 = and i32 %149, 4
  %153 = icmp ne i32 %152, 0
  %154 = and i1 %151, %153
  br i1 %154, label %155, label %164

; <label>:155                                     ; preds = %0
  %156 = fmul fast float %98, %67
  %157 = fmul fast float %97, %66
  %158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %157, float %156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %159 = extractvalue %dx.types.ResRet.f32 %158, 0
  %160 = fsub fast float 1.000000e+00, %159
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = fcmp fast olt float %160, %162
  br label %172

; <label>:164                                     ; preds = %0
  %165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.i32 %165, 3
  %167 = and i32 %166, 3
  %168 = icmp ne i32 %167, 0
  %169 = and i32 %166, 4
  %170 = icmp eq i32 %169, 0
  %171 = and i1 %168, %170
  br label %172

; <label>:172                                     ; preds = %164, %155
  %173 = phi i1 [ %163, %155 ], [ %171, %164 ]
  %174 = add i32 %30, 156
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = shl i32 %176, 4
  %178 = and i32 %177, 32752
  %179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %178)  ; LegacyF16ToF32(value)
  %180 = lshr i32 %176, 7
  %181 = and i32 %180, 32752
  %182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %181)  ; LegacyF16ToF32(value)
  %183 = lshr i32 %176, 22
  %184 = shl nuw nsw i32 %183, 5
  %185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %184)  ; LegacyF16ToF32(value)
  %186 = add i32 %30, 216
  %187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %186, i32 undef)  ; BufferLoad(srv,index,wot)
  %188 = extractvalue %dx.types.ResRet.i32 %187, 0
  %189 = and i32 %188, 255
  %190 = uitofp i32 %189 to float
  %191 = fmul fast float %190, 0x3F70101020000000
  %192 = lshr i32 %188, 8
  %193 = and i32 %192, 255
  %194 = uitofp i32 %193 to float
  %195 = fmul fast float %194, 0x3F70101020000000
  %196 = lshr i32 %188, 16
  %197 = and i32 %196, 255
  %198 = uitofp i32 %197 to float
  %199 = fmul fast float %198, 0x3F70101020000000
  %200 = add i32 %30, 36
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = and i32 %202, 65535
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = lshr i32 %202, 16
  %206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %205)  ; LegacyF16ToF32(value)
  %207 = add i32 %30, 288
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = and i32 %209, 65535
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = lshr i32 %209, 16
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = fmul fast float %211, 0x3F50624DE0000000
  %215 = fmul fast float %213, 0x3F50624DE0000000
  %216 = add i32 %30, 172
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = shl i32 %218, 4
  %220 = and i32 %219, 32752
  %221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %220)  ; LegacyF16ToF32(value)
  %222 = lshr i32 %218, 7
  %223 = and i32 %222, 32752
  %224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %223)  ; LegacyF16ToF32(value)
  %225 = lshr i32 %218, 22
  %226 = shl nuw nsw i32 %225, 5
  %227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %226)  ; LegacyF16ToF32(value)
  %228 = add i32 %30, 232
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = and i32 %230, 255
  %232 = uitofp i32 %231 to float
  %233 = fmul fast float %232, 0x3F70101020000000
  %234 = lshr i32 %230, 8
  %235 = and i32 %234, 255
  %236 = uitofp i32 %235 to float
  %237 = fmul fast float %236, 0x3F70101020000000
  %238 = lshr i32 %230, 16
  %239 = and i32 %238, 255
  %240 = uitofp i32 %239 to float
  %241 = fmul fast float %240, 0x3F70101020000000
  %242 = add i32 %30, 52
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = and i32 %244, 65535
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = lshr i32 %244, 16
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = add i32 %30, 304
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = and i32 %251, 65535
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = lshr i32 %251, 16
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = fmul fast float %253, 0x3F50624DE0000000
  %257 = fmul fast float %255, 0x3F50624DE0000000
  %258 = add i32 %30, 188
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = shl i32 %260, 4
  %262 = and i32 %261, 32752
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = lshr i32 %260, 7
  %265 = and i32 %264, 32752
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %260, 22
  %268 = shl nuw nsw i32 %267, 5
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = add i32 %30, 248
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = and i32 %272, 255
  %274 = uitofp i32 %273 to float
  %275 = fmul fast float %274, 0x3F70101020000000
  %276 = lshr i32 %272, 8
  %277 = and i32 %276, 255
  %278 = uitofp i32 %277 to float
  %279 = fmul fast float %278, 0x3F70101020000000
  %280 = lshr i32 %272, 16
  %281 = and i32 %280, 255
  %282 = uitofp i32 %281 to float
  %283 = fmul fast float %282, 0x3F70101020000000
  %284 = add i32 %30, 68
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = and i32 %286, 65535
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %286, 16
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = add i32 %30, 320
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = and i32 %293, 65535
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %293, 16
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = fmul fast float %295, 0x3F50624DE0000000
  %299 = fmul fast float %297, 0x3F50624DE0000000
  %300 = add i32 %30, 204
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = shl i32 %302, 4
  %304 = and i32 %303, 32752
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %302, 7
  %307 = and i32 %306, 32752
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %302, 22
  %310 = shl nuw nsw i32 %309, 5
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = add i32 %30, 264
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = and i32 %314, 255
  %316 = uitofp i32 %315 to float
  %317 = fmul fast float %316, 0x3F70101020000000
  %318 = lshr i32 %314, 8
  %319 = and i32 %318, 255
  %320 = uitofp i32 %319 to float
  %321 = fmul fast float %320, 0x3F70101020000000
  %322 = lshr i32 %314, 16
  %323 = and i32 %322, 255
  %324 = uitofp i32 %323 to float
  %325 = fmul fast float %324, 0x3F70101020000000
  %326 = add i32 %30, 84
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = and i32 %328, 65535
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = lshr i32 %328, 16
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = add i32 %30, 336
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = and i32 %335, 65535
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = lshr i32 %335, 16
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = fmul fast float %337, 0x3F50624DE0000000
  %341 = fmul fast float %339, 0x3F50624DE0000000
  %342 = add i32 %30, 348
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 32
  %346 = icmp eq i32 %345, 0
  %347 = and i32 %344, 64
  %348 = icmp eq i32 %347, 0
  %349 = and i32 %344, 128
  %350 = icmp eq i32 %349, 0
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = and i32 %352, 2
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %368, label %355

; <label>:355                                     ; preds = %172
  %356 = add i32 %30, 524
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = add i32 %358, 0
  %360 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %359, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %361 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %360, %dx.types.Handle %63, float %54, float %55, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = extractvalue %dx.types.ResRet.f32 %361, 1
  %364 = extractvalue %dx.types.ResRet.f32 %361, 2
  %365 = fmul fast float %362, %56
  %366 = fmul fast float %363, %57
  %367 = fmul fast float %364, %58
  br label %368

; <label>:368                                     ; preds = %355, %172
  %369 = phi float [ %58, %172 ], [ %367, %355 ]
  %370 = phi float [ %57, %172 ], [ %366, %355 ]
  %371 = phi float [ %56, %172 ], [ %365, %355 ]
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = and i32 %373, 2
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %395, label %376

; <label>:376                                     ; preds = %368
  %377 = add i32 %30, 44
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 1
  %381 = icmp ne i32 %380, 0
  %382 = select i1 %381, float %371, float 1.000000e+00
  %383 = add i32 %30, 60
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 1
  %387 = icmp ne i32 %386, 0
  %388 = select i1 %387, float %370, float 1.000000e+00
  %389 = add i32 %30, 76
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = and i32 %391, 1
  %393 = icmp ne i32 %392, 0
  %394 = select i1 %393, float %369, float 1.000000e+00
  br label %395

; <label>:395                                     ; preds = %376, %368
  %396 = phi float [ %369, %368 ], [ %394, %376 ]
  %397 = phi float [ %370, %368 ], [ %388, %376 ]
  %398 = phi float [ %371, %368 ], [ %382, %376 ]
  %399 = lshr i32 %373, 20
  %400 = and i32 %399, 3
  %401 = add nuw nsw i32 %400, 1
  %402 = add i32 %30, 24
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = add i32 %30, 28
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = or i32 %407, %404
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %868, label %410

; <label>:410                                     ; preds = %395
  %411 = and i32 %404, 262144
  %412 = icmp ne i32 %411, 0
  %413 = select i1 %412, float %33, float 1.000000e+00
  %414 = select i1 %412, float %34, float 0.000000e+00
  %415 = select i1 %412, float %35, float 0.000000e+00
  %416 = select i1 %412, float %36, float 1.000000e+00
  %417 = select i1 %412, float %37, float %54
  %418 = select i1 %412, float %38, float %55
  %419 = add i32 %30, 284
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = lshr i32 %421, 16
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = fmul fast float %423, 0x3F50624DE0000000
  %425 = add i32 %30, 88
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = lshr i32 %427, 16
  %429 = and i32 %428, 255
  %430 = lshr i32 %427, 24
  %431 = add i32 %30, 292
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = and i32 %433, 65535
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = lshr i32 %433, 16
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = add i32 %30, 32
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = lshr i32 %440, 22
  %442 = shl nuw nsw i32 %441, 5
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442)  ; LegacyF16ToF32(value)
  %444 = shl i32 %440, 4
  %445 = and i32 %444, 32752
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = lshr i32 %440, 7
  %448 = and i32 %447, 32752
  %449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %448)  ; LegacyF16ToF32(value)
  %450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.f32 %450, 3
  %452 = fmul fast float %451, 1.000000e+03
  %453 = fmul fast float %214, %452
  %454 = call float @dx.op.unary.f32(i32 22, float %453)  ; Frc(value)
  %455 = fadd fast float %454, %204
  %456 = fmul fast float %215, %452
  %457 = call float @dx.op.unary.f32(i32 22, float %456)  ; Frc(value)
  %458 = fadd fast float %457, %206
  %459 = fmul fast float %424, %452
  %460 = call float @dx.op.unary.f32(i32 22, float %459)  ; Frc(value)
  %461 = fmul fast float %460, 0x401921FB60000000
  %462 = fadd fast float %461, %443
  %463 = call float @dx.op.unary.f32(i32 13, float %462)  ; Sin(value)
  %464 = call float @dx.op.unary.f32(i32 12, float %462)  ; Cos(value)
  %465 = fsub fast float -0.000000e+00, %463
  %466 = fadd fast float %417, -5.000000e-01
  %467 = fadd fast float %418, -5.000000e-01
  %468 = fmul fast float %435, %466
  %469 = fmul fast float %437, %467
  %470 = fadd fast float %468, 5.000000e-01
  %471 = fadd fast float %469, 5.000000e-01
  %472 = fmul fast float %446, %470
  %473 = fmul fast float %449, %471
  %474 = fmul fast float %464, %472
  %475 = call float @dx.op.tertiary.f32(i32 46, float %465, float %473, float %474)  ; FMad(a,b,c)
  %476 = fmul fast float %463, %472
  %477 = call float @dx.op.tertiary.f32(i32 46, float %464, float %473, float %476)  ; FMad(a,b,c)
  %478 = fadd fast float %455, %475
  %479 = fadd fast float %458, %477
  %480 = icmp ugt i32 %429, 1
  %481 = icmp ugt i32 %427, 33554431
  %482 = or i1 %481, %480
  br i1 %482, label %483, label %508

; <label>:483                                     ; preds = %410
  %484 = add i32 %30, 228
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = lshr i32 %486, 16
  %488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %487)  ; LegacyF16ToF32(value)
  %489 = fmul fast float %451, %488
  %490 = call float @dx.op.unary.f32(i32 22, float %489)  ; Frc(value)
  %491 = mul nuw nsw i32 %429, %430
  %492 = uitofp i32 %491 to float
  %493 = fmul fast float %490, %492
  %494 = call float @dx.op.unary.f32(i32 27, float %493)  ; Round_ni(value)
  %495 = fptoui float %494 to i32
  %496 = urem i32 %495, %429
  %497 = udiv i32 %495, %430
  %498 = call float @dx.op.unary.f32(i32 22, float %478)  ; Frc(value)
  %499 = call float @dx.op.unary.f32(i32 22, float %479)  ; Frc(value)
  %500 = uitofp i32 %496 to float
  %501 = uitofp i32 %497 to float
  %502 = fadd fast float %498, %500
  %503 = fadd fast float %499, %501
  %504 = uitofp i32 %429 to float
  %505 = uitofp i32 %430 to float
  %506 = fdiv fast float %502, %504
  %507 = fdiv fast float %503, %505
  br label %508

; <label>:508                                     ; preds = %483, %410
  %509 = phi float [ %506, %483 ], [ %478, %410 ]
  %510 = phi float [ %507, %483 ], [ %479, %410 ]
  %511 = and i32 %404, 16
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %709, label %513

; <label>:513                                     ; preds = %508
  %514 = add i32 %30, 408
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = add i32 %516, 0
  %518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %517, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %519 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %518, %dx.types.Handle %62, float %509, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 0
  %521 = extractvalue %dx.types.ResRet.f32 %519, 1
  %522 = extractvalue %dx.types.ResRet.f32 %519, 2
  %523 = extractvalue %dx.types.ResRet.f32 %519, 3
  %524 = and i32 %427, 255
  %525 = uitofp i32 %524 to float
  %526 = lshr i32 %427, 8
  %527 = and i32 %526, 255
  %528 = uitofp i32 %527 to float
  %529 = fmul fast float %523, %525
  %530 = fadd fast float %529, %528
  %531 = fmul fast float %530, 0x3F70101000000000
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = and i32 %533, 512
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %544, label %536

; <label>:536                                     ; preds = %513
  %537 = add i32 %30, 492
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = add i32 %539, 0
  %541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %540, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %542 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %541, %dx.types.Handle %63, float %509, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %543 = extractvalue %dx.types.ResRet.f32 %542, 0
  br label %544

; <label>:544                                     ; preds = %536, %513
  %545 = phi float [ %543, %536 ], [ 1.000000e+00, %513 ]
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = and i32 %547, 33554432
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %656, label %550

; <label>:550                                     ; preds = %544
  %551 = add i32 %30, 224
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = and i32 %553, 65535
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = lshr i32 %553, 16
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = add i32 %30, 228
  %559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.i32 %559, 0
  %561 = and i32 %560, 65535
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %186, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = lshr i32 %564, 24
  %566 = uitofp i32 %565 to float
  %567 = fmul fast float %566, 0x3F70101020000000
  %568 = and i32 %564, 255
  %569 = uitofp i32 %568 to float
  %570 = fmul fast float %569, 0x3F70101020000000
  %571 = lshr i32 %564, 8
  %572 = and i32 %571, 255
  %573 = uitofp i32 %572 to float
  %574 = fmul fast float %573, 0x3F70101020000000
  %575 = lshr i32 %564, 16
  %576 = and i32 %575, 255
  %577 = uitofp i32 %576 to float
  %578 = fmul fast float %577, 0x3F70101020000000
  %579 = add i32 %30, 220
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %579, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  %582 = lshr i32 %581, 24
  %583 = uitofp i32 %582 to float
  %584 = fmul fast float %583, 0x3F70101020000000
  %585 = and i32 %581, 255
  %586 = uitofp i32 %585 to float
  %587 = fmul fast float %586, 0x3F70101020000000
  %588 = lshr i32 %581, 8
  %589 = and i32 %588, 255
  %590 = uitofp i32 %589 to float
  %591 = fmul fast float %590, 0x3F70101020000000
  %592 = lshr i32 %581, 16
  %593 = and i32 %592, 255
  %594 = uitofp i32 %593 to float
  %595 = fmul fast float %594, 0x3F70101020000000
  %596 = bitcast float %520 to i32
  %597 = ashr i32 %596, 1
  %598 = sub nsw i32 1597463174, %597
  %599 = bitcast i32 %598 to float
  %600 = fmul fast float %520, 5.000000e-01
  %601 = fmul fast float %599, %599
  %602 = fmul fast float %601, %600
  %603 = fsub fast float 1.500000e+00, %602
  %604 = fmul fast float %599, %520
  %605 = fmul fast float %604, %603
  %606 = bitcast float %521 to i32
  %607 = ashr i32 %606, 1
  %608 = sub nsw i32 1597463174, %607
  %609 = bitcast i32 %608 to float
  %610 = fmul fast float %521, 5.000000e-01
  %611 = fmul fast float %609, %609
  %612 = fmul fast float %611, %610
  %613 = fsub fast float 1.500000e+00, %612
  %614 = fmul fast float %609, %521
  %615 = fmul fast float %614, %613
  %616 = bitcast float %522 to i32
  %617 = ashr i32 %616, 1
  %618 = sub nsw i32 1597463174, %617
  %619 = bitcast i32 %618 to float
  %620 = fmul fast float %522, 5.000000e-01
  %621 = fmul fast float %619, %619
  %622 = fmul fast float %621, %620
  %623 = fsub fast float 1.500000e+00, %622
  %624 = fmul fast float %619, %522
  %625 = fmul fast float %624, %623
  %626 = fsub fast float %605, %587
  %627 = fsub fast float %615, %591
  %628 = fsub fast float %625, %595
  %629 = fmul fast float %626, %555
  %630 = fmul fast float %627, %557
  %631 = fmul fast float %628, %562
  %632 = fadd fast float %629, %570
  %633 = fadd fast float %630, %574
  %634 = fadd fast float %631, %578
  %635 = call float @dx.op.unary.f32(i32 7, float %632)  ; Saturate(value)
  %636 = call float @dx.op.unary.f32(i32 7, float %633)  ; Saturate(value)
  %637 = call float @dx.op.unary.f32(i32 7, float %634)  ; Saturate(value)
  %638 = fmul fast float %635, %635
  %639 = fmul fast float %636, %636
  %640 = fmul fast float %637, %637
  %641 = fsub fast float %638, %520
  %642 = fsub fast float %639, %521
  %643 = fsub fast float %640, %522
  %644 = fmul fast float %641, %545
  %645 = fmul fast float %642, %545
  %646 = fmul fast float %643, %545
  %647 = fadd fast float %644, %520
  %648 = fadd fast float %645, %521
  %649 = fadd fast float %646, %522
  %650 = fadd fast float %567, %531
  %651 = fsub fast float %650, %584
  %652 = call float @dx.op.unary.f32(i32 7, float %651)  ; Saturate(value)
  %653 = fsub fast float %652, %531
  %654 = fmul fast float %653, %545
  %655 = fadd fast float %654, %531
  br label %709

; <label>:656                                     ; preds = %544
  %657 = and i32 %547, 134217728
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %693, label %659

; <label>:659                                     ; preds = %656
  %660 = call float @dx.op.unary.f32(i32 24, float %191)  ; Sqrt(value)
  %661 = call float @dx.op.unary.f32(i32 24, float %195)  ; Sqrt(value)
  %662 = call float @dx.op.unary.f32(i32 24, float %199)  ; Sqrt(value)
  %663 = fadd fast float %660, -5.000000e-01
  %664 = fadd fast float %661, -5.000000e-01
  %665 = fadd fast float %662, -5.000000e-01
  %666 = fmul fast float %663, %545
  %667 = fmul fast float %664, %545
  %668 = fmul fast float %665, %545
  %669 = fadd fast float %666, 5.000000e-01
  %670 = fadd fast float %667, 5.000000e-01
  %671 = fadd fast float %668, 5.000000e-01
  %672 = call float @dx.op.unary.f32(i32 24, float %520)  ; Sqrt(value)
  %673 = call float @dx.op.unary.f32(i32 24, float %521)  ; Sqrt(value)
  %674 = call float @dx.op.unary.f32(i32 24, float %522)  ; Sqrt(value)
  %675 = fmul fast float %669, 2.000000e+00
  %676 = fsub fast float 1.000000e+00, %675
  %677 = fmul fast float %676, %672
  %678 = fadd fast float %677, %675
  %679 = fmul fast float %678, %672
  %680 = fmul fast float %670, 2.000000e+00
  %681 = fsub fast float 1.000000e+00, %680
  %682 = fmul fast float %681, %673
  %683 = fadd fast float %682, %680
  %684 = fmul fast float %683, %673
  %685 = fmul fast float %671, 2.000000e+00
  %686 = fsub fast float 1.000000e+00, %685
  %687 = fmul fast float %686, %674
  %688 = fadd fast float %687, %685
  %689 = fmul fast float %688, %674
  %690 = fmul fast float %679, %679
  %691 = fmul fast float %684, %684
  %692 = fmul fast float %689, %689
  br label %709

; <label>:693                                     ; preds = %656
  %694 = fmul fast float %191, %191
  %695 = fmul fast float %195, %195
  %696 = fmul fast float %199, %199
  %697 = fadd fast float %694, -1.000000e+00
  %698 = fadd fast float %695, -1.000000e+00
  %699 = fadd fast float %696, -1.000000e+00
  %700 = fmul fast float %545, %697
  %701 = fmul fast float %545, %698
  %702 = fmul fast float %545, %699
  %703 = fadd fast float %700, 1.000000e+00
  %704 = fadd fast float %701, 1.000000e+00
  %705 = fadd fast float %702, 1.000000e+00
  %706 = fmul fast float %703, %520
  %707 = fmul fast float %704, %521
  %708 = fmul fast float %705, %522
  br label %709

; <label>:709                                     ; preds = %693, %659, %550, %508
  %710 = phi float [ %655, %550 ], [ %531, %659 ], [ %531, %693 ], [ 0x3FA23C0BE0000000, %508 ]
  %711 = phi float [ %647, %550 ], [ %690, %659 ], [ %706, %693 ], [ 1.000000e+00, %508 ]
  %712 = phi float [ %648, %550 ], [ %691, %659 ], [ %707, %693 ], [ 1.000000e+00, %508 ]
  %713 = phi float [ %649, %550 ], [ %692, %659 ], [ %708, %693 ], [ 1.000000e+00, %508 ]
  %714 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.i32 %714, 1
  %716 = and i32 %715, 1
  %717 = icmp ne i32 %716, 0
  %718 = add i32 %30, 356
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = and i32 %720, 32
  %722 = icmp ne i32 %721, 0
  %723 = and i1 %717, %722
  %724 = select i1 %723, float 1.000000e+00, float %711
  %725 = select i1 %723, float 0x3FD3333340000000, float %712
  %726 = select i1 %723, float 0x3FD3333340000000, float %713
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = and i32 %728, 32
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %803, label %731

; <label>:731                                     ; preds = %709
  %732 = add i32 %30, 92
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = add i32 %30, 424
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = add i32 %737, 0
  %739 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %738, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %740 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %739, %dx.types.Handle %62, float %509, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %741 = extractvalue %dx.types.ResRet.f32 %740, 0
  %742 = extractvalue %dx.types.ResRet.f32 %740, 1
  %743 = extractvalue %dx.types.ResRet.f32 %740, 2
  %744 = extractvalue %dx.types.ResRet.f32 %740, 3
  %745 = and i32 %734, 255
  %746 = uitofp i32 %745 to float
  %747 = lshr i32 %734, 8
  %748 = and i32 %747, 255
  %749 = uitofp i32 %748 to float
  %750 = lshr i32 %734, 16
  %751 = and i32 %750, 255
  %752 = uitofp i32 %751 to float
  %753 = fmul fast float %752, 0x3F70101000000000
  %754 = fmul fast float %741, %746
  %755 = fadd fast float %754, %749
  %756 = fmul fast float %755, 0x3F70101000000000
  %757 = fadd fast float %742, -5.000000e-01
  %758 = fadd fast float %744, -5.000000e-01
  %759 = fmul fast float %757, %753
  %760 = fmul fast float %758, %753
  %761 = fadd fast float %759, 5.000000e-01
  %762 = fadd fast float %760, 5.000000e-01
  %763 = fmul fast float %761, 2.000000e+00
  %764 = fadd fast float %763, -1.000000e+00
  %765 = fmul fast float %762, 2.000000e+00
  %766 = fadd fast float %765, -1.000000e+00
  %767 = fadd fast float %764, %766
  %768 = fmul fast float %767, 5.000000e-01
  %769 = fsub fast float %764, %766
  %770 = fmul fast float %769, 5.000000e-01
  %771 = call float @dx.op.unary.f32(i32 6, float %768)  ; FAbs(value)
  %772 = fsub fast float 1.000000e+00, %771
  %773 = call float @dx.op.unary.f32(i32 6, float %770)  ; FAbs(value)
  %774 = fsub fast float %772, %773
  %775 = call float @dx.op.dot3.f32(i32 55, float %768, float %770, float %774, float %768, float %770, float %774)  ; Dot3(ax,ay,az,bx,by,bz)
  %776 = call float @dx.op.unary.f32(i32 25, float %775)  ; Rsqrt(value)
  %777 = fmul fast float %768, %776
  %778 = fmul fast float %770, %776
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = and i32 %780, 67108864
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %799, label %783

; <label>:783                                     ; preds = %731
  %784 = add i32 %30, 280
  %785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %784, i32 undef)  ; BufferLoad(srv,index,wot)
  %786 = extractvalue %dx.types.ResRet.i32 %785, 0
  %787 = and i32 %786, 65535
  %788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %787)  ; LegacyF16ToF32(value)
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = and i32 %790, 65535
  %792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %791)  ; LegacyF16ToF32(value)
  %793 = lshr i32 %786, 16
  %794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %793)  ; LegacyF16ToF32(value)
  %795 = fsub fast float %756, %794
  %796 = fmul fast float %795, %788
  %797 = fadd fast float %796, %792
  %798 = call float @dx.op.unary.f32(i32 7, float %797)  ; Saturate(value)
  br label %799

; <label>:799                                     ; preds = %783, %731
  %800 = phi float [ %798, %783 ], [ %756, %731 ]
  %801 = call float @dx.op.dot2.f32(i32 54, float %777, float %778, float %413, float %414)  ; Dot2(ax,ay,bx,by)
  %802 = call float @dx.op.dot2.f32(i32 54, float %777, float %778, float %415, float %416)  ; Dot2(ax,ay,bx,by)
  br label %803

; <label>:803                                     ; preds = %799, %709
  %804 = phi float [ %800, %799 ], [ 0x3FD6666660000000, %709 ]
  %805 = phi float [ %801, %799 ], [ 0.000000e+00, %709 ]
  %806 = phi float [ %802, %799 ], [ 0.000000e+00, %709 ]
  %807 = phi float [ %743, %799 ], [ 1.000000e+00, %709 ]
  %808 = add i32 %30, 160
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = lshr i32 %810, 22
  %812 = shl nuw nsw i32 %811, 5
  %813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %812)  ; LegacyF16ToF32(value)
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = and i32 %815, 64
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %851, label %818

; <label>:818                                     ; preds = %803
  %819 = add i32 %30, 440
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = add i32 %821, 0
  %823 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %822, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = and i32 %825, 131072
  %827 = icmp eq i32 %826, 0
  %828 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %823, %dx.types.Handle %62, float %509, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %829 = extractvalue %dx.types.ResRet.f32 %828, 0
  %830 = extractvalue %dx.types.ResRet.f32 %828, 1
  %831 = extractvalue %dx.types.ResRet.f32 %828, 2
  %832 = fmul fast float %829, %179
  %833 = fmul fast float %830, %182
  %834 = fmul fast float %831, %185
  br i1 %827, label %841, label %835

; <label>:835                                     ; preds = %818
  %836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %837 = extractvalue %dx.types.CBufRet.f32 %836, 0
  %838 = fmul fast float %837, %832
  %839 = fmul fast float %837, %833
  %840 = fmul fast float %837, %834
  br label %841

; <label>:841                                     ; preds = %835, %818
  %842 = phi float [ %838, %835 ], [ %832, %818 ]
  %843 = phi float [ %839, %835 ], [ %833, %818 ]
  %844 = phi float [ %840, %835 ], [ %834, %818 ]
  %845 = fmul fast float %842, %813
  %846 = select i1 %173, float %845, float %842
  %847 = call float @dx.op.dot3.f32(i32 55, float %846, float %843, float %844, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %848 = select i1 %173, float 0.000000e+00, float %842
  %849 = select i1 %173, float %847, float %843
  %850 = select i1 %173, float 0.000000e+00, float %844
  br label %851

; <label>:851                                     ; preds = %841, %803
  %852 = phi float [ %848, %841 ], [ 0.000000e+00, %803 ]
  %853 = phi float [ %849, %841 ], [ 0.000000e+00, %803 ]
  %854 = phi float [ %850, %841 ], [ 0.000000e+00, %803 ]
  %855 = add i32 %30, 96
  %856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %855, i32 undef)  ; BufferLoad(srv,index,wot)
  %857 = extractvalue %dx.types.ResRet.i32 %856, 0
  %858 = and i32 %857, 255
  %859 = uitofp i32 %858 to float
  %860 = lshr i32 %857, 8
  %861 = and i32 %860, 255
  %862 = uitofp i32 %861 to float
  %863 = call float @dx.op.dot3.f32(i32 55, float %724, float %725, float %726, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %864 = fmul fast float %862, %863
  %865 = fadd fast float %864, %859
  %866 = fmul fast float %865, 0x3F70101020000000
  %867 = call float @dx.op.unary.f32(i32 7, float %866)  ; Saturate(value)
  br label %868

; <label>:868                                     ; preds = %851, %395
  %869 = phi float [ 0.000000e+00, %395 ], [ %805, %851 ]
  %870 = phi float [ 0.000000e+00, %395 ], [ %806, %851 ]
  %871 = phi float [ 0.000000e+00, %395 ], [ %724, %851 ]
  %872 = phi float [ 0.000000e+00, %395 ], [ %725, %851 ]
  %873 = phi float [ 0.000000e+00, %395 ], [ %726, %851 ]
  %874 = phi float [ 0.000000e+00, %395 ], [ %852, %851 ]
  %875 = phi float [ 0.000000e+00, %395 ], [ %853, %851 ]
  %876 = phi float [ 0.000000e+00, %395 ], [ %854, %851 ]
  %877 = phi float [ 0.000000e+00, %395 ], [ %710, %851 ]
  %878 = phi float [ 0.000000e+00, %395 ], [ 1.000000e+00, %851 ]
  %879 = phi float [ 0.000000e+00, %395 ], [ %804, %851 ]
  %880 = phi float [ 0.000000e+00, %395 ], [ %807, %851 ]
  %881 = phi float [ 0.000000e+00, %395 ], [ %867, %851 ]
  br i1 %346, label %1723, label %882

; <label>:882                                     ; preds = %868
  %883 = icmp ult i32 %401, 2
  %884 = add i32 %30, 40
  %885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %886 = extractvalue %dx.types.ResRet.i32 %885, 0
  %887 = add i32 %30, 44
  %888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.i32 %888, 0
  %890 = or i32 %889, %886
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %1723, label %892

; <label>:892                                     ; preds = %882
  %893 = and i32 %886, 262144
  %894 = icmp ne i32 %893, 0
  %895 = select i1 %894, float %33, float 1.000000e+00
  %896 = select i1 %894, float %34, float 0.000000e+00
  %897 = select i1 %894, float %35, float 0.000000e+00
  %898 = select i1 %894, float %36, float 1.000000e+00
  %899 = select i1 %894, float %37, float %54
  %900 = select i1 %894, float %38, float %55
  %901 = add i32 %30, 300
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = lshr i32 %903, 16
  %905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %904)  ; LegacyF16ToF32(value)
  %906 = fmul fast float %905, 0x3F50624DE0000000
  %907 = add i32 %30, 104
  %908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.i32 %908, 0
  %910 = lshr i32 %909, 16
  %911 = and i32 %910, 255
  %912 = lshr i32 %909, 24
  %913 = add i32 %30, 308
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = and i32 %915, 65535
  %917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %916)  ; LegacyF16ToF32(value)
  %918 = lshr i32 %915, 16
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = add i32 %30, 48
  %921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %920, i32 undef)  ; BufferLoad(srv,index,wot)
  %922 = extractvalue %dx.types.ResRet.i32 %921, 0
  %923 = lshr i32 %922, 22
  %924 = shl nuw nsw i32 %923, 5
  %925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %924)  ; LegacyF16ToF32(value)
  %926 = shl i32 %922, 4
  %927 = and i32 %926, 32752
  %928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %927)  ; LegacyF16ToF32(value)
  %929 = lshr i32 %922, 7
  %930 = and i32 %929, 32752
  %931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %930)  ; LegacyF16ToF32(value)
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 3
  %934 = fmul fast float %933, 1.000000e+03
  %935 = fmul fast float %256, %934
  %936 = call float @dx.op.unary.f32(i32 22, float %935)  ; Frc(value)
  %937 = fadd fast float %936, %246
  %938 = fmul fast float %257, %934
  %939 = call float @dx.op.unary.f32(i32 22, float %938)  ; Frc(value)
  %940 = fadd fast float %939, %248
  %941 = fmul fast float %906, %934
  %942 = call float @dx.op.unary.f32(i32 22, float %941)  ; Frc(value)
  %943 = fmul fast float %942, 0x401921FB60000000
  %944 = fadd fast float %943, %925
  %945 = call float @dx.op.unary.f32(i32 13, float %944)  ; Sin(value)
  %946 = call float @dx.op.unary.f32(i32 12, float %944)  ; Cos(value)
  %947 = fsub fast float -0.000000e+00, %945
  %948 = fadd fast float %899, -5.000000e-01
  %949 = fadd fast float %900, -5.000000e-01
  %950 = fmul fast float %917, %948
  %951 = fmul fast float %919, %949
  %952 = fadd fast float %950, 5.000000e-01
  %953 = fadd fast float %951, 5.000000e-01
  %954 = fmul fast float %928, %952
  %955 = fmul fast float %931, %953
  %956 = fmul fast float %946, %954
  %957 = call float @dx.op.tertiary.f32(i32 46, float %947, float %955, float %956)  ; FMad(a,b,c)
  %958 = fmul fast float %945, %954
  %959 = call float @dx.op.tertiary.f32(i32 46, float %946, float %955, float %958)  ; FMad(a,b,c)
  %960 = fadd fast float %937, %957
  %961 = fadd fast float %940, %959
  %962 = icmp ugt i32 %911, 1
  %963 = icmp ugt i32 %909, 33554431
  %964 = or i1 %963, %962
  br i1 %964, label %965, label %990

; <label>:965                                     ; preds = %892
  %966 = add i32 %30, 244
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = lshr i32 %968, 16
  %970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %969)  ; LegacyF16ToF32(value)
  %971 = fmul fast float %933, %970
  %972 = call float @dx.op.unary.f32(i32 22, float %971)  ; Frc(value)
  %973 = mul nuw nsw i32 %911, %912
  %974 = uitofp i32 %973 to float
  %975 = fmul fast float %972, %974
  %976 = call float @dx.op.unary.f32(i32 27, float %975)  ; Round_ni(value)
  %977 = fptoui float %976 to i32
  %978 = urem i32 %977, %911
  %979 = udiv i32 %977, %912
  %980 = call float @dx.op.unary.f32(i32 22, float %960)  ; Frc(value)
  %981 = call float @dx.op.unary.f32(i32 22, float %961)  ; Frc(value)
  %982 = uitofp i32 %978 to float
  %983 = uitofp i32 %979 to float
  %984 = fadd fast float %980, %982
  %985 = fadd fast float %981, %983
  %986 = uitofp i32 %911 to float
  %987 = uitofp i32 %912 to float
  %988 = fdiv fast float %984, %986
  %989 = fdiv fast float %985, %987
  br label %990

; <label>:990                                     ; preds = %965, %892
  %991 = phi float [ %988, %965 ], [ %960, %892 ]
  %992 = phi float [ %989, %965 ], [ %961, %892 ]
  %993 = and i32 %886, 16777216
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1104, label %995

; <label>:995                                     ; preds = %990
  %996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.f32 %996, 0
  %998 = extractvalue %dx.types.CBufRet.f32 %996, 1
  %999 = extractvalue %dx.types.CBufRet.f32 %996, 2
  %1000 = fadd fast float %997, %129
  %1001 = fadd fast float %998, %130
  %1002 = fadd fast float %999, %131
  %1003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1004 = extractvalue %dx.types.CBufRet.f32 %1003, 0
  %1005 = call float @dx.op.unary.f32(i32 7, float %1004)  ; Saturate(value)
  %1006 = icmp eq i32 %31, 65535
  br i1 %1006, label %1101, label %1007

; <label>:1007                                    ; preds = %995
  %1008 = lshr i32 %31, 1
  %1009 = shl i32 %1008, 2
  %1010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.i32 %1010, 0
  %1012 = and i32 %31, 1
  %1013 = icmp ne i32 %1012, 0
  %1014 = lshr i32 %1011, 16
  %1015 = and i32 %1011, 65535
  %1016 = select i1 %1013, i32 %1014, i32 %1015
  %1017 = icmp eq i32 %1016, 65535
  br i1 %1017, label %1097, label %1018

; <label>:1018                                    ; preds = %1007
  %1019 = mul nuw nsw i32 %1016, 40
  %1020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.ResRet.f32 %1020, 1
  %1023 = extractvalue %dx.types.ResRet.f32 %1020, 2
  %1024 = add nuw nsw i32 %1019, 12
  %1025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.f32 %1025, 0
  %1027 = extractvalue %dx.types.ResRet.f32 %1025, 1
  %1028 = extractvalue %dx.types.ResRet.f32 %1025, 2
  %1029 = add nuw nsw i32 %1019, 24
  %1030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.f32 %1030, 0
  %1032 = extractvalue %dx.types.ResRet.f32 %1030, 1
  %1033 = extractvalue %dx.types.ResRet.f32 %1030, 2
  %1034 = add nuw nsw i32 %1019, 36
  %1035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = fsub fast float %1000, %1021
  %1038 = fsub fast float %1001, %1022
  %1039 = fsub fast float %1002, %1023
  %1040 = fmul fast float %1036, %1037
  %1041 = fmul fast float %1036, %1038
  %1042 = fmul fast float %1036, %1039
  %1043 = call float @dx.op.unary.f32(i32 27, float %1040)  ; Round_ni(value)
  %1044 = call float @dx.op.unary.f32(i32 27, float %1041)  ; Round_ni(value)
  %1045 = call float @dx.op.unary.f32(i32 27, float %1042)  ; Round_ni(value)
  %1046 = fadd fast float %1043, 5.000000e-01
  %1047 = fadd fast float %1044, 5.000000e-01
  %1048 = fadd fast float %1045, 5.000000e-01
  %1049 = fmul fast float %1046, %1026
  %1050 = fmul fast float %1047, %1027
  %1051 = fmul fast float %1048, %1028
  %1052 = shl i32 %31, 2
  %1053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.i32 %1053, 0
  %1055 = add i32 %1054, 0
  %1056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1055, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1057 = call float @dx.op.unary.f32(i32 22, float %1049)  ; Frc(value)
  %1058 = call float @dx.op.unary.f32(i32 22, float %1050)  ; Frc(value)
  %1059 = call float @dx.op.unary.f32(i32 22, float %1051)  ; Frc(value)
  %1060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1056, %dx.types.Handle %27, float %1057, float %1058, float %1059, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1061 = extractvalue %dx.types.ResRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.ResRet.f32 %1060, 1
  %1063 = extractvalue %dx.types.ResRet.f32 %1060, 2
  %1064 = fmul fast float %1061, 1.023000e+03
  %1065 = fmul fast float %1062, 1.023000e+03
  %1066 = fmul fast float %1063, 1.023000e+03
  %1067 = fadd fast float %1064, 5.000000e-01
  %1068 = fadd fast float %1065, 5.000000e-01
  %1069 = fadd fast float %1066, 5.000000e-01
  %1070 = call float @dx.op.unary.f32(i32 27, float %1067)  ; Round_ni(value)
  %1071 = call float @dx.op.unary.f32(i32 27, float %1068)  ; Round_ni(value)
  %1072 = call float @dx.op.unary.f32(i32 27, float %1069)  ; Round_ni(value)
  %1073 = fsub fast float %1040, %1043
  %1074 = fsub fast float %1041, %1044
  %1075 = fsub fast float %1042, %1045
  %1076 = fmul fast float %1073, 7.500000e-01
  %1077 = fmul fast float %1074, 7.500000e-01
  %1078 = fmul fast float %1075, 7.500000e-01
  %1079 = fadd fast float %1043, 1.250000e-01
  %1080 = fadd fast float %1079, %1076
  %1081 = fadd fast float %1080, %1070
  %1082 = fadd fast float %1044, 1.250000e-01
  %1083 = fadd fast float %1082, %1077
  %1084 = fadd fast float %1083, %1071
  %1085 = fadd fast float %1045, 1.250000e-01
  %1086 = fadd fast float %1085, %1078
  %1087 = fadd fast float %1086, %1072
  %1088 = fmul fast float %1081, %1031
  %1089 = fmul fast float %1084, %1032
  %1090 = fmul fast float %1087, %1033
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = add i32 %1092, 0
  %1094 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1093, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1094, %dx.types.Handle %25, float %1088, float %1089, float %1090, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1096 = extractvalue %dx.types.ResRet.f32 %1095, 0
  br label %1097

; <label>:1097                                    ; preds = %1018, %1007
  %1098 = phi float [ %1096, %1018 ], [ -1.000000e+00, %1007 ]
  %1099 = fadd fast float %1098, %1005
  %1100 = call float @dx.op.unary.f32(i32 7, float %1099)  ; Saturate(value)
  br label %1101

; <label>:1101                                    ; preds = %1097, %995
  %1102 = phi float [ %1100, %1097 ], [ %1005, %995 ]
  %1103 = fmul fast float %1102, %398
  br label %1104

; <label>:1104                                    ; preds = %1101, %990
  %1105 = phi float [ %1103, %1101 ], [ %398, %990 ]
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = and i32 %1107, 256
  %1109 = icmp eq i32 %1108, 0
  br i1 %1109, label %1156, label %1110

; <label>:1110                                    ; preds = %1104
  %1111 = add i32 %30, 476
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = add i32 %1113, 0
  %1115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1114, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1116 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1115, %dx.types.Handle %63, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  %1118 = add i32 %30, 116
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = shl i32 %1120, 4
  %1122 = and i32 %1121, 32752
  %1123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1122)  ; LegacyF16ToF32(value)
  %1124 = lshr i32 %1120, 7
  %1125 = and i32 %1124, 32752
  %1126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1125)  ; LegacyF16ToF32(value)
  %1127 = fsub fast float 1.000000e+00, %1105
  %1128 = call float @dx.op.binary.f32(i32 35, float %1127, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1129 = bitcast float %1105 to i32
  %1130 = sitofp i32 %1129 to float
  %1131 = fadd fast float %1130, 0xC1CFBF8940000000
  %1132 = fmul fast float %1126, %1131
  %1133 = fadd fast float %1132, 0x41CFBF8940000000
  %1134 = fptosi float %1133 to i32
  %1135 = bitcast i32 %1134 to float
  %1136 = bitcast float %1128 to i32
  %1137 = sitofp i32 %1136 to float
  %1138 = fadd fast float %1137, 0xC1CFBF8940000000
  %1139 = fmul fast float %1138, %1126
  %1140 = fadd fast float %1139, 0x41CFBF8940000000
  %1141 = fptosi float %1140 to i32
  %1142 = bitcast i32 %1141 to float
  %1143 = fmul fast float %1135, %1123
  %1144 = fmul fast float %1142, %1123
  %1145 = fsub fast float %1128, %1143
  %1146 = fadd fast float %1144, %1128
  %1147 = call float @dx.op.unary.f32(i32 7, float %1145)  ; Saturate(value)
  %1148 = call float @dx.op.unary.f32(i32 7, float %1146)  ; Saturate(value)
  %1149 = fsub fast float %1117, %1147
  %1150 = fsub fast float %1148, %1147
  %1151 = bitcast float %1150 to i32
  %1152 = sub nsw i32 2129859010, %1151
  %1153 = bitcast i32 %1152 to float
  %1154 = fmul fast float %1153, %1149
  %1155 = call float @dx.op.unary.f32(i32 7, float %1154)  ; Saturate(value)
  br label %1156

; <label>:1156                                    ; preds = %1110, %1104
  %1157 = phi float [ %1155, %1110 ], [ %1105, %1104 ]
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = and i32 %1159, 128
  %1161 = icmp eq i32 %1160, 0
  br i1 %1161, label %1178, label %1162

; <label>:1162                                    ; preds = %1156
  %1163 = add i32 %30, 460
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = add i32 %1165, 0
  %1167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1168 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1167, %dx.types.Handle %63, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1169 = extractvalue %dx.types.ResRet.f32 %1168, 0
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = and i32 %1171, 524288
  %1173 = icmp ne i32 %1172, 0
  %1174 = fcmp fast ogt float %1169, 0x3FE0101020000000
  %1175 = select i1 %1174, float 1.000000e+00, float 0.000000e+00
  %1176 = select i1 %1173, float %1175, float %1169
  %1177 = fmul fast float %1176, %1157
  br label %1178

; <label>:1178                                    ; preds = %1162, %1156
  %1179 = phi float [ %1177, %1162 ], [ %1157, %1156 ]
  %1180 = fcmp fast ult float %1179, 0x3F70101020000000
  br i1 %1180, label %1723, label %1181

; <label>:1181                                    ; preds = %1178
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = and i32 %1183, 16
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %1384, label %1186

; <label>:1186                                    ; preds = %1181
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = add i32 %30, 412
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1189, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = add i32 %1191, 0
  %1193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1192, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1194 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1193, %dx.types.Handle %62, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1195 = extractvalue %dx.types.ResRet.f32 %1194, 0
  %1196 = extractvalue %dx.types.ResRet.f32 %1194, 1
  %1197 = extractvalue %dx.types.ResRet.f32 %1194, 2
  %1198 = extractvalue %dx.types.ResRet.f32 %1194, 3
  %1199 = and i32 %1188, 255
  %1200 = uitofp i32 %1199 to float
  %1201 = lshr i32 %1188, 8
  %1202 = and i32 %1201, 255
  %1203 = uitofp i32 %1202 to float
  %1204 = fmul fast float %1198, %1200
  %1205 = fadd fast float %1204, %1203
  %1206 = fmul fast float %1205, 0x3F70101000000000
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = and i32 %1208, 512
  %1210 = icmp eq i32 %1209, 0
  br i1 %1210, label %1219, label %1211

; <label>:1211                                    ; preds = %1186
  %1212 = add i32 %30, 496
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = add i32 %1214, 0
  %1216 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1215, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1217 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1216, %dx.types.Handle %63, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1218 = extractvalue %dx.types.ResRet.f32 %1217, 0
  br label %1219

; <label>:1219                                    ; preds = %1211, %1186
  %1220 = phi float [ %1218, %1211 ], [ 1.000000e+00, %1186 ]
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = and i32 %1222, 33554432
  %1224 = icmp eq i32 %1223, 0
  br i1 %1224, label %1331, label %1225

; <label>:1225                                    ; preds = %1219
  %1226 = add i32 %30, 240
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = and i32 %1228, 65535
  %1230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1229)  ; LegacyF16ToF32(value)
  %1231 = lshr i32 %1228, 16
  %1232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1231)  ; LegacyF16ToF32(value)
  %1233 = add i32 %30, 244
  %1234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.i32 %1234, 0
  %1236 = and i32 %1235, 65535
  %1237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1236)  ; LegacyF16ToF32(value)
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = lshr i32 %1239, 24
  %1241 = uitofp i32 %1240 to float
  %1242 = fmul fast float %1241, 0x3F70101020000000
  %1243 = and i32 %1239, 255
  %1244 = uitofp i32 %1243 to float
  %1245 = fmul fast float %1244, 0x3F70101020000000
  %1246 = lshr i32 %1239, 8
  %1247 = and i32 %1246, 255
  %1248 = uitofp i32 %1247 to float
  %1249 = fmul fast float %1248, 0x3F70101020000000
  %1250 = lshr i32 %1239, 16
  %1251 = and i32 %1250, 255
  %1252 = uitofp i32 %1251 to float
  %1253 = fmul fast float %1252, 0x3F70101020000000
  %1254 = add i32 %30, 236
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = lshr i32 %1256, 24
  %1258 = uitofp i32 %1257 to float
  %1259 = fmul fast float %1258, 0x3F70101020000000
  %1260 = and i32 %1256, 255
  %1261 = uitofp i32 %1260 to float
  %1262 = fmul fast float %1261, 0x3F70101020000000
  %1263 = lshr i32 %1256, 8
  %1264 = and i32 %1263, 255
  %1265 = uitofp i32 %1264 to float
  %1266 = fmul fast float %1265, 0x3F70101020000000
  %1267 = lshr i32 %1256, 16
  %1268 = and i32 %1267, 255
  %1269 = uitofp i32 %1268 to float
  %1270 = fmul fast float %1269, 0x3F70101020000000
  %1271 = bitcast float %1195 to i32
  %1272 = ashr i32 %1271, 1
  %1273 = sub nsw i32 1597463174, %1272
  %1274 = bitcast i32 %1273 to float
  %1275 = fmul fast float %1195, 5.000000e-01
  %1276 = fmul fast float %1274, %1274
  %1277 = fmul fast float %1276, %1275
  %1278 = fsub fast float 1.500000e+00, %1277
  %1279 = fmul fast float %1274, %1195
  %1280 = fmul fast float %1279, %1278
  %1281 = bitcast float %1196 to i32
  %1282 = ashr i32 %1281, 1
  %1283 = sub nsw i32 1597463174, %1282
  %1284 = bitcast i32 %1283 to float
  %1285 = fmul fast float %1196, 5.000000e-01
  %1286 = fmul fast float %1284, %1284
  %1287 = fmul fast float %1286, %1285
  %1288 = fsub fast float 1.500000e+00, %1287
  %1289 = fmul fast float %1284, %1196
  %1290 = fmul fast float %1289, %1288
  %1291 = bitcast float %1197 to i32
  %1292 = ashr i32 %1291, 1
  %1293 = sub nsw i32 1597463174, %1292
  %1294 = bitcast i32 %1293 to float
  %1295 = fmul fast float %1197, 5.000000e-01
  %1296 = fmul fast float %1294, %1294
  %1297 = fmul fast float %1296, %1295
  %1298 = fsub fast float 1.500000e+00, %1297
  %1299 = fmul fast float %1294, %1197
  %1300 = fmul fast float %1299, %1298
  %1301 = fsub fast float %1280, %1262
  %1302 = fsub fast float %1290, %1266
  %1303 = fsub fast float %1300, %1270
  %1304 = fmul fast float %1301, %1230
  %1305 = fmul fast float %1302, %1232
  %1306 = fmul fast float %1303, %1237
  %1307 = fadd fast float %1304, %1245
  %1308 = fadd fast float %1305, %1249
  %1309 = fadd fast float %1306, %1253
  %1310 = call float @dx.op.unary.f32(i32 7, float %1307)  ; Saturate(value)
  %1311 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1312 = call float @dx.op.unary.f32(i32 7, float %1309)  ; Saturate(value)
  %1313 = fmul fast float %1310, %1310
  %1314 = fmul fast float %1311, %1311
  %1315 = fmul fast float %1312, %1312
  %1316 = fsub fast float %1313, %1195
  %1317 = fsub fast float %1314, %1196
  %1318 = fsub fast float %1315, %1197
  %1319 = fmul fast float %1316, %1220
  %1320 = fmul fast float %1317, %1220
  %1321 = fmul fast float %1318, %1220
  %1322 = fadd fast float %1319, %1195
  %1323 = fadd fast float %1320, %1196
  %1324 = fadd fast float %1321, %1197
  %1325 = fadd fast float %1242, %1206
  %1326 = fsub fast float %1325, %1259
  %1327 = call float @dx.op.unary.f32(i32 7, float %1326)  ; Saturate(value)
  %1328 = fsub fast float %1327, %1206
  %1329 = fmul fast float %1328, %1220
  %1330 = fadd fast float %1329, %1206
  br label %1384

; <label>:1331                                    ; preds = %1219
  %1332 = and i32 %1222, 134217728
  %1333 = icmp eq i32 %1332, 0
  br i1 %1333, label %1368, label %1334

; <label>:1334                                    ; preds = %1331
  %1335 = call float @dx.op.unary.f32(i32 24, float %233)  ; Sqrt(value)
  %1336 = call float @dx.op.unary.f32(i32 24, float %237)  ; Sqrt(value)
  %1337 = call float @dx.op.unary.f32(i32 24, float %241)  ; Sqrt(value)
  %1338 = fadd fast float %1335, -5.000000e-01
  %1339 = fadd fast float %1336, -5.000000e-01
  %1340 = fadd fast float %1337, -5.000000e-01
  %1341 = fmul fast float %1338, %1220
  %1342 = fmul fast float %1339, %1220
  %1343 = fmul fast float %1340, %1220
  %1344 = fadd fast float %1341, 5.000000e-01
  %1345 = fadd fast float %1342, 5.000000e-01
  %1346 = fadd fast float %1343, 5.000000e-01
  %1347 = call float @dx.op.unary.f32(i32 24, float %1195)  ; Sqrt(value)
  %1348 = call float @dx.op.unary.f32(i32 24, float %1196)  ; Sqrt(value)
  %1349 = call float @dx.op.unary.f32(i32 24, float %1197)  ; Sqrt(value)
  %1350 = fmul fast float %1344, 2.000000e+00
  %1351 = fsub fast float 1.000000e+00, %1350
  %1352 = fmul fast float %1351, %1347
  %1353 = fadd fast float %1352, %1350
  %1354 = fmul fast float %1353, %1347
  %1355 = fmul fast float %1345, 2.000000e+00
  %1356 = fsub fast float 1.000000e+00, %1355
  %1357 = fmul fast float %1356, %1348
  %1358 = fadd fast float %1357, %1355
  %1359 = fmul fast float %1358, %1348
  %1360 = fmul fast float %1346, 2.000000e+00
  %1361 = fsub fast float 1.000000e+00, %1360
  %1362 = fmul fast float %1361, %1349
  %1363 = fadd fast float %1362, %1360
  %1364 = fmul fast float %1363, %1349
  %1365 = fmul fast float %1354, %1354
  %1366 = fmul fast float %1359, %1359
  %1367 = fmul fast float %1364, %1364
  br label %1384

; <label>:1368                                    ; preds = %1331
  %1369 = fmul fast float %233, %233
  %1370 = fmul fast float %237, %237
  %1371 = fmul fast float %241, %241
  %1372 = fadd fast float %1369, -1.000000e+00
  %1373 = fadd fast float %1370, -1.000000e+00
  %1374 = fadd fast float %1371, -1.000000e+00
  %1375 = fmul fast float %1220, %1372
  %1376 = fmul fast float %1220, %1373
  %1377 = fmul fast float %1220, %1374
  %1378 = fadd fast float %1375, 1.000000e+00
  %1379 = fadd fast float %1376, 1.000000e+00
  %1380 = fadd fast float %1377, 1.000000e+00
  %1381 = fmul fast float %1378, %1195
  %1382 = fmul fast float %1379, %1196
  %1383 = fmul fast float %1380, %1197
  br label %1384

; <label>:1384                                    ; preds = %1368, %1334, %1225, %1181
  %1385 = phi float [ %1330, %1225 ], [ %1206, %1334 ], [ %1206, %1368 ], [ 0x3FA23C0BE0000000, %1181 ]
  %1386 = phi float [ %1322, %1225 ], [ %1365, %1334 ], [ %1381, %1368 ], [ 1.000000e+00, %1181 ]
  %1387 = phi float [ %1323, %1225 ], [ %1366, %1334 ], [ %1382, %1368 ], [ 1.000000e+00, %1181 ]
  %1388 = phi float [ %1324, %1225 ], [ %1367, %1334 ], [ %1383, %1368 ], [ 1.000000e+00, %1181 ]
  %1389 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1390 = extractvalue %dx.types.CBufRet.i32 %1389, 1
  %1391 = and i32 %1390, 1
  %1392 = icmp ne i32 %1391, 0
  %1393 = add i32 %30, 356
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1393, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = and i32 %1395, 32
  %1397 = icmp ne i32 %1396, 0
  %1398 = and i1 %1392, %1397
  %1399 = select i1 %1398, float 1.000000e+00, float %1386
  %1400 = select i1 %1398, float 0x3FD3333340000000, float %1387
  %1401 = select i1 %1398, float 0x3FD3333340000000, float %1388
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = and i32 %1403, 32
  %1405 = icmp eq i32 %1404, 0
  br i1 %1405, label %1478, label %1406

; <label>:1406                                    ; preds = %1384
  %1407 = add i32 %30, 108
  %1408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1407, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.i32 %1408, 0
  %1410 = add i32 %30, 428
  %1411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1410, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.i32 %1411, 0
  %1413 = add i32 %1412, 0
  %1414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1413, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1415 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1414, %dx.types.Handle %62, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1416 = extractvalue %dx.types.ResRet.f32 %1415, 0
  %1417 = extractvalue %dx.types.ResRet.f32 %1415, 1
  %1418 = extractvalue %dx.types.ResRet.f32 %1415, 2
  %1419 = extractvalue %dx.types.ResRet.f32 %1415, 3
  %1420 = and i32 %1409, 255
  %1421 = uitofp i32 %1420 to float
  %1422 = lshr i32 %1409, 8
  %1423 = and i32 %1422, 255
  %1424 = uitofp i32 %1423 to float
  %1425 = lshr i32 %1409, 16
  %1426 = and i32 %1425, 255
  %1427 = uitofp i32 %1426 to float
  %1428 = fmul fast float %1427, 0x3F70101000000000
  %1429 = fmul fast float %1416, %1421
  %1430 = fadd fast float %1429, %1424
  %1431 = fmul fast float %1430, 0x3F70101000000000
  %1432 = fadd fast float %1417, -5.000000e-01
  %1433 = fadd fast float %1419, -5.000000e-01
  %1434 = fmul fast float %1432, %1428
  %1435 = fmul fast float %1433, %1428
  %1436 = fadd fast float %1434, 5.000000e-01
  %1437 = fadd fast float %1435, 5.000000e-01
  %1438 = fmul fast float %1436, 2.000000e+00
  %1439 = fadd fast float %1438, -1.000000e+00
  %1440 = fmul fast float %1437, 2.000000e+00
  %1441 = fadd fast float %1440, -1.000000e+00
  %1442 = fadd fast float %1439, %1441
  %1443 = fmul fast float %1442, 5.000000e-01
  %1444 = fsub fast float %1439, %1441
  %1445 = fmul fast float %1444, 5.000000e-01
  %1446 = call float @dx.op.unary.f32(i32 6, float %1443)  ; FAbs(value)
  %1447 = fsub fast float 1.000000e+00, %1446
  %1448 = call float @dx.op.unary.f32(i32 6, float %1445)  ; FAbs(value)
  %1449 = fsub fast float %1447, %1448
  %1450 = call float @dx.op.dot3.f32(i32 55, float %1443, float %1445, float %1449, float %1443, float %1445, float %1449)  ; Dot3(ax,ay,az,bx,by,bz)
  %1451 = call float @dx.op.unary.f32(i32 25, float %1450)  ; Rsqrt(value)
  %1452 = fmul fast float %1443, %1451
  %1453 = fmul fast float %1445, %1451
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = and i32 %1455, 67108864
  %1457 = icmp eq i32 %1456, 0
  br i1 %1457, label %1474, label %1458

; <label>:1458                                    ; preds = %1406
  %1459 = add i32 %30, 296
  %1460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.i32 %1460, 0
  %1462 = and i32 %1461, 65535
  %1463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1462)  ; LegacyF16ToF32(value)
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = and i32 %1465, 65535
  %1467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1466)  ; LegacyF16ToF32(value)
  %1468 = lshr i32 %1461, 16
  %1469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1468)  ; LegacyF16ToF32(value)
  %1470 = fsub fast float %1431, %1469
  %1471 = fmul fast float %1470, %1463
  %1472 = fadd fast float %1471, %1467
  %1473 = call float @dx.op.unary.f32(i32 7, float %1472)  ; Saturate(value)
  br label %1474

; <label>:1474                                    ; preds = %1458, %1406
  %1475 = phi float [ %1473, %1458 ], [ %1431, %1406 ]
  %1476 = call float @dx.op.dot2.f32(i32 54, float %1452, float %1453, float %895, float %896)  ; Dot2(ax,ay,bx,by)
  %1477 = call float @dx.op.dot2.f32(i32 54, float %1452, float %1453, float %897, float %898)  ; Dot2(ax,ay,bx,by)
  br label %1478

; <label>:1478                                    ; preds = %1474, %1384
  %1479 = phi float [ %1475, %1474 ], [ 0x3FD6666660000000, %1384 ]
  %1480 = phi float [ %1476, %1474 ], [ 0.000000e+00, %1384 ]
  %1481 = phi float [ %1477, %1474 ], [ 0.000000e+00, %1384 ]
  %1482 = phi float [ %1418, %1474 ], [ 1.000000e+00, %1384 ]
  %1483 = add i32 %30, 176
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = lshr i32 %1485, 22
  %1487 = shl nuw nsw i32 %1486, 5
  %1488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1487)  ; LegacyF16ToF32(value)
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = and i32 %1490, 64
  %1492 = icmp eq i32 %1491, 0
  br i1 %1492, label %1526, label %1493

; <label>:1493                                    ; preds = %1478
  %1494 = add i32 %30, 444
  %1495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1494, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.i32 %1495, 0
  %1497 = add i32 %1496, 0
  %1498 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1497, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.i32 %1499, 0
  %1501 = and i32 %1500, 131072
  %1502 = icmp eq i32 %1501, 0
  %1503 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1498, %dx.types.Handle %62, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1504 = extractvalue %dx.types.ResRet.f32 %1503, 0
  %1505 = extractvalue %dx.types.ResRet.f32 %1503, 1
  %1506 = extractvalue %dx.types.ResRet.f32 %1503, 2
  %1507 = fmul fast float %1504, %221
  %1508 = fmul fast float %1505, %224
  %1509 = fmul fast float %1506, %227
  br i1 %1502, label %1516, label %1510

; <label>:1510                                    ; preds = %1493
  %1511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1512 = extractvalue %dx.types.CBufRet.f32 %1511, 0
  %1513 = fmul fast float %1512, %1507
  %1514 = fmul fast float %1512, %1508
  %1515 = fmul fast float %1512, %1509
  br label %1516

; <label>:1516                                    ; preds = %1510, %1493
  %1517 = phi float [ %1513, %1510 ], [ %1507, %1493 ]
  %1518 = phi float [ %1514, %1510 ], [ %1508, %1493 ]
  %1519 = phi float [ %1515, %1510 ], [ %1509, %1493 ]
  %1520 = fmul fast float %1517, %1488
  %1521 = select i1 %173, float %1520, float %1517
  %1522 = call float @dx.op.dot3.f32(i32 55, float %1521, float %1518, float %1519, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1523 = select i1 %173, float 0.000000e+00, float %1517
  %1524 = select i1 %173, float %1522, float %1518
  %1525 = select i1 %173, float 0.000000e+00, float %1519
  br label %1526

; <label>:1526                                    ; preds = %1516, %1478
  %1527 = phi float [ %1523, %1516 ], [ 0.000000e+00, %1478 ]
  %1528 = phi float [ %1524, %1516 ], [ 0.000000e+00, %1478 ]
  %1529 = phi float [ %1525, %1516 ], [ 0.000000e+00, %1478 ]
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = add i32 %30, 112
  %1533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1532, i32 undef)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.i32 %1533, 0
  %1535 = and i32 %1534, 255
  %1536 = uitofp i32 %1535 to float
  %1537 = lshr i32 %1534, 8
  %1538 = and i32 %1537, 255
  %1539 = uitofp i32 %1538 to float
  %1540 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1541 = fmul fast float %1539, %1540
  %1542 = fadd fast float %1541, %1536
  %1543 = fmul fast float %1542, 0x3F70101020000000
  %1544 = call float @dx.op.unary.f32(i32 7, float %1543)  ; Saturate(value)
  br i1 %883, label %1545, label %1553

; <label>:1545                                    ; preds = %1526
  %1546 = fsub fast float 1.000000e+00, %1179
  %1547 = fmul fast float %1546, %871
  %1548 = fmul fast float %1546, %872
  %1549 = fmul fast float %1546, %873
  %1550 = fmul fast float %1546, %874
  %1551 = fmul fast float %1546, %875
  %1552 = fmul fast float %1546, %876
  br label %1553

; <label>:1553                                    ; preds = %1545, %1526
  %1554 = phi float [ %1547, %1545 ], [ %871, %1526 ]
  %1555 = phi float [ %1548, %1545 ], [ %872, %1526 ]
  %1556 = phi float [ %1549, %1545 ], [ %873, %1526 ]
  %1557 = phi float [ %1550, %1545 ], [ %874, %1526 ]
  %1558 = phi float [ %1551, %1545 ], [ %875, %1526 ]
  %1559 = phi float [ %1552, %1545 ], [ %876, %1526 ]
  %1560 = and i32 %1531, 3
  %1561 = icmp eq i32 %1560, 3
  br i1 %1561, label %1640, label %1562

; <label>:1562                                    ; preds = %1553
  %1563 = and i32 %1531, 16
  %1564 = icmp ne i32 %1563, 0
  %1565 = select i1 %1564, float %1179, float 0.000000e+00
  %1566 = icmp eq i32 %1560, 0
  br i1 %1566, label %1567, label %1595

; <label>:1567                                    ; preds = %1562
  %1568 = and i32 %1531, 64
  %1569 = icmp ne i32 %1568, 0
  %1570 = select i1 %1569, float %1179, float 0.000000e+00
  %1571 = fsub fast float %1399, %1554
  %1572 = fsub fast float %1400, %1555
  %1573 = fsub fast float %1401, %1556
  %1574 = fmul fast float %1565, %1571
  %1575 = fmul fast float %1565, %1572
  %1576 = fmul fast float %1565, %1573
  %1577 = fadd fast float %1574, %1554
  %1578 = fadd fast float %1575, %1555
  %1579 = fadd fast float %1576, %1556
  %1580 = fsub fast float %1385, %877
  %1581 = fmul fast float %1565, %1580
  %1582 = fadd fast float %1581, %877
  %1583 = fsub fast float %1527, %1557
  %1584 = fsub fast float %1528, %1558
  %1585 = fsub fast float %1529, %1559
  %1586 = fmul fast float %1570, %1583
  %1587 = fmul fast float %1570, %1584
  %1588 = fmul fast float %1570, %1585
  %1589 = fadd fast float %1586, %1557
  %1590 = fadd fast float %1587, %1558
  %1591 = fadd fast float %1588, %1559
  %1592 = fsub fast float %1544, %881
  %1593 = fmul fast float %1565, %1592
  %1594 = fadd fast float %1593, %881
  br label %1640

; <label>:1595                                    ; preds = %1562
  %1596 = icmp eq i32 %1560, 1
  br i1 %1596, label %1597, label %1610

; <label>:1597                                    ; preds = %1595
  %1598 = fadd fast float %1399, -1.000000e+00
  %1599 = fadd fast float %1400, -1.000000e+00
  %1600 = fadd fast float %1401, -1.000000e+00
  %1601 = fmul fast float %1565, %1598
  %1602 = fmul fast float %1565, %1599
  %1603 = fmul fast float %1565, %1600
  %1604 = fadd fast float %1601, 1.000000e+00
  %1605 = fadd fast float %1602, 1.000000e+00
  %1606 = fadd fast float %1603, 1.000000e+00
  %1607 = fmul fast float %1604, %1554
  %1608 = fmul fast float %1605, %1555
  %1609 = fmul fast float %1606, %1556
  br label %1640

; <label>:1610                                    ; preds = %1595
  %1611 = icmp eq i32 %1560, 2
  br i1 %1611, label %1612, label %1640

; <label>:1612                                    ; preds = %1610
  %1613 = call float @dx.op.unary.f32(i32 24, float %1399)  ; Sqrt(value)
  %1614 = call float @dx.op.unary.f32(i32 24, float %1400)  ; Sqrt(value)
  %1615 = call float @dx.op.unary.f32(i32 24, float %1401)  ; Sqrt(value)
  %1616 = fadd fast float %1613, -5.000000e-01
  %1617 = fadd fast float %1614, -5.000000e-01
  %1618 = fadd fast float %1615, -5.000000e-01
  %1619 = fmul fast float %1616, %1565
  %1620 = fmul fast float %1617, %1565
  %1621 = fmul fast float %1618, %1565
  %1622 = fadd fast float %1619, 5.000000e-01
  %1623 = fadd fast float %1620, 5.000000e-01
  %1624 = fadd fast float %1621, 5.000000e-01
  %1625 = fmul fast float %1622, 2.000000e+00
  %1626 = fsub fast float 1.000000e+00, %1625
  %1627 = fmul fast float %1626, %1554
  %1628 = fadd fast float %1627, %1625
  %1629 = fmul fast float %1628, %1554
  %1630 = fmul fast float %1623, 2.000000e+00
  %1631 = fsub fast float 1.000000e+00, %1630
  %1632 = fmul fast float %1631, %1555
  %1633 = fadd fast float %1632, %1630
  %1634 = fmul fast float %1633, %1555
  %1635 = fmul fast float %1624, 2.000000e+00
  %1636 = fsub fast float 1.000000e+00, %1635
  %1637 = fmul fast float %1636, %1556
  %1638 = fadd fast float %1637, %1635
  %1639 = fmul fast float %1638, %1556
  br label %1640

; <label>:1640                                    ; preds = %1612, %1610, %1597, %1567, %1553
  %1641 = phi float [ %1554, %1553 ], [ %1629, %1612 ], [ %1554, %1610 ], [ %1607, %1597 ], [ %1577, %1567 ]
  %1642 = phi float [ %1555, %1553 ], [ %1634, %1612 ], [ %1555, %1610 ], [ %1608, %1597 ], [ %1578, %1567 ]
  %1643 = phi float [ %1556, %1553 ], [ %1639, %1612 ], [ %1556, %1610 ], [ %1609, %1597 ], [ %1579, %1567 ]
  %1644 = phi float [ %1557, %1553 ], [ %1557, %1612 ], [ %1557, %1610 ], [ %1557, %1597 ], [ %1589, %1567 ]
  %1645 = phi float [ %1558, %1553 ], [ %1558, %1612 ], [ %1558, %1610 ], [ %1558, %1597 ], [ %1590, %1567 ]
  %1646 = phi float [ %1559, %1553 ], [ %1559, %1612 ], [ %1559, %1610 ], [ %1559, %1597 ], [ %1591, %1567 ]
  %1647 = phi float [ %877, %1553 ], [ %877, %1612 ], [ %877, %1610 ], [ %877, %1597 ], [ %1582, %1567 ]
  %1648 = phi float [ %881, %1553 ], [ %881, %1612 ], [ %881, %1610 ], [ %881, %1597 ], [ %1594, %1567 ]
  %1649 = and i32 %1531, 12
  %1650 = icmp eq i32 %1649, 12
  br i1 %1650, label %1723, label %1651

; <label>:1651                                    ; preds = %1640
  %1652 = and i32 %1531, 2097184
  %1653 = icmp eq i32 %1652, 2097184
  %1654 = select i1 %1653, float %1179, float 0.000000e+00
  %1655 = and i32 %1531, 4194336
  %1656 = icmp eq i32 %1655, 4194336
  %1657 = select i1 %1656, float %1179, float 0.000000e+00
  %1658 = and i32 %1531, 8388640
  %1659 = icmp eq i32 %1658, 8388640
  %1660 = select i1 %1659, float %1179, float 0.000000e+00
  %1661 = icmp eq i32 %1649, 0
  br i1 %1661, label %1662, label %1675

; <label>:1662                                    ; preds = %1651
  %1663 = fsub fast float %1480, %869
  %1664 = fsub fast float %1481, %870
  %1665 = fmul fast float %1654, %1663
  %1666 = fmul fast float %1654, %1664
  %1667 = fadd fast float %1665, %869
  %1668 = fadd fast float %1666, %870
  %1669 = fsub fast float %1482, %880
  %1670 = fmul fast float %1657, %1669
  %1671 = fadd fast float %1670, %880
  %1672 = fsub fast float %1479, %879
  %1673 = fmul fast float %1660, %1672
  %1674 = fadd fast float %1673, %879
  br label %1723

; <label>:1675                                    ; preds = %1651
  %1676 = icmp eq i32 %1649, 4
  br i1 %1676, label %1677, label %1709

; <label>:1677                                    ; preds = %1675
  %1678 = fmul fast float %1654, %1480
  %1679 = fmul fast float %1654, %1481
  %1680 = fadd fast float %1678, %869
  %1681 = fadd fast float %1679, %870
  %1682 = call float @dx.op.binary.f32(i32 36, float %880, float %1482)  ; FMin(a,b)
  %1683 = fsub fast float %1682, %880
  %1684 = fmul fast float %1683, %1657
  %1685 = fadd fast float %1684, %880
  %1686 = fadd fast float %1479, %879
  %1687 = fmul fast float %1686, 0x3FF337FAE0000000
  %1688 = fmul fast float %879, %879
  %1689 = fmul fast float %1479, %1479
  %1690 = fadd fast float %1689, %1688
  %1691 = fmul fast float %1690, 0x3FE5152B00000000
  %1692 = fmul fast float %879, 0xBFCC1F85E0000000
  %1693 = fmul fast float %1692, %1479
  %1694 = fadd fast float %1693, 0xBFE1363700000000
  %1695 = fadd fast float %1694, %1687
  %1696 = fsub fast float %1695, %1691
  %1697 = fmul fast float %1686, 0x3FBA6F0D00000000
  %1698 = fmul fast float %1690, 0x3FD0432880000000
  %1699 = fmul fast float %879, 0xBFEF110800000000
  %1700 = fmul fast float %1699, %1479
  %1701 = fadd fast float %1700, 1.000000e+00
  %1702 = fsub fast float %1701, %1697
  %1703 = fadd fast float %1702, %1698
  %1704 = fdiv fast float %1696, %1703
  %1705 = call float @dx.op.unary.f32(i32 7, float %1704)  ; Saturate(value)
  %1706 = fsub fast float %1705, %879
  %1707 = fmul fast float %1706, %1660
  %1708 = fadd fast float %1707, %879
  br label %1723

; <label>:1709                                    ; preds = %1675
  %1710 = icmp eq i32 %1649, 8
  br i1 %1710, label %1711, label %1723

; <label>:1711                                    ; preds = %1709
  %1712 = fmul fast float %1654, %1480
  %1713 = fmul fast float %1654, %1481
  %1714 = fadd fast float %1712, %869
  %1715 = fadd fast float %1713, %870
  %1716 = call float @dx.op.binary.f32(i32 36, float %880, float %1482)  ; FMin(a,b)
  %1717 = fsub fast float %1716, %880
  %1718 = fmul fast float %1717, %1657
  %1719 = fadd fast float %1718, %880
  %1720 = fsub fast float %1479, %879
  %1721 = fmul fast float %1660, %1720
  %1722 = fadd fast float %1721, %879
  br label %1723

; <label>:1723                                    ; preds = %1711, %1709, %1677, %1662, %1640, %1178, %882, %868
  %1724 = phi float [ %869, %1640 ], [ %869, %1178 ], [ %869, %868 ], [ %1714, %1711 ], [ %869, %1709 ], [ %1680, %1677 ], [ %1667, %1662 ], [ %869, %882 ]
  %1725 = phi float [ %870, %1640 ], [ %870, %1178 ], [ %870, %868 ], [ %1715, %1711 ], [ %870, %1709 ], [ %1681, %1677 ], [ %1668, %1662 ], [ %870, %882 ]
  %1726 = phi float [ %1641, %1640 ], [ %871, %1178 ], [ %871, %868 ], [ %1641, %1711 ], [ %1641, %1709 ], [ %1641, %1677 ], [ %1641, %1662 ], [ %871, %882 ]
  %1727 = phi float [ %1642, %1640 ], [ %872, %1178 ], [ %872, %868 ], [ %1642, %1711 ], [ %1642, %1709 ], [ %1642, %1677 ], [ %1642, %1662 ], [ %872, %882 ]
  %1728 = phi float [ %1643, %1640 ], [ %873, %1178 ], [ %873, %868 ], [ %1643, %1711 ], [ %1643, %1709 ], [ %1643, %1677 ], [ %1643, %1662 ], [ %873, %882 ]
  %1729 = phi float [ %1644, %1640 ], [ %874, %1178 ], [ %874, %868 ], [ %1644, %1711 ], [ %1644, %1709 ], [ %1644, %1677 ], [ %1644, %1662 ], [ %874, %882 ]
  %1730 = phi float [ %1645, %1640 ], [ %875, %1178 ], [ %875, %868 ], [ %1645, %1711 ], [ %1645, %1709 ], [ %1645, %1677 ], [ %1645, %1662 ], [ %875, %882 ]
  %1731 = phi float [ %1646, %1640 ], [ %876, %1178 ], [ %876, %868 ], [ %1646, %1711 ], [ %1646, %1709 ], [ %1646, %1677 ], [ %1646, %1662 ], [ %876, %882 ]
  %1732 = phi float [ %1647, %1640 ], [ %877, %1178 ], [ %877, %868 ], [ %1647, %1711 ], [ %1647, %1709 ], [ %1647, %1677 ], [ %1647, %1662 ], [ %877, %882 ]
  %1733 = phi float [ %879, %1640 ], [ %879, %1178 ], [ %879, %868 ], [ %1722, %1711 ], [ %879, %1709 ], [ %1708, %1677 ], [ %1674, %1662 ], [ %879, %882 ]
  %1734 = phi float [ %880, %1640 ], [ %880, %1178 ], [ %880, %868 ], [ %1719, %1711 ], [ %880, %1709 ], [ %1685, %1677 ], [ %1671, %1662 ], [ %880, %882 ]
  %1735 = phi float [ %1648, %1640 ], [ %881, %1178 ], [ %881, %868 ], [ %1648, %1711 ], [ %1648, %1709 ], [ %1648, %1677 ], [ %1648, %1662 ], [ %881, %882 ]
  br i1 %348, label %2577, label %1736

; <label>:1736                                    ; preds = %1723
  %1737 = icmp ult i32 %401, 3
  %1738 = add i32 %30, 56
  %1739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.i32 %1739, 0
  %1741 = add i32 %30, 60
  %1742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.i32 %1742, 0
  %1744 = or i32 %1743, %1740
  %1745 = icmp eq i32 %1744, 0
  br i1 %1745, label %2577, label %1746

; <label>:1746                                    ; preds = %1736
  %1747 = and i32 %1740, 262144
  %1748 = icmp ne i32 %1747, 0
  %1749 = select i1 %1748, float %33, float 1.000000e+00
  %1750 = select i1 %1748, float %34, float 0.000000e+00
  %1751 = select i1 %1748, float %35, float 0.000000e+00
  %1752 = select i1 %1748, float %36, float 1.000000e+00
  %1753 = select i1 %1748, float %37, float %54
  %1754 = select i1 %1748, float %38, float %55
  %1755 = add i32 %30, 316
  %1756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.i32 %1756, 0
  %1758 = lshr i32 %1757, 16
  %1759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1758)  ; LegacyF16ToF32(value)
  %1760 = fmul fast float %1759, 0x3F50624DE0000000
  %1761 = add i32 %30, 120
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = lshr i32 %1763, 16
  %1765 = and i32 %1764, 255
  %1766 = lshr i32 %1763, 24
  %1767 = add i32 %30, 324
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = and i32 %1769, 65535
  %1771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1770)  ; LegacyF16ToF32(value)
  %1772 = lshr i32 %1769, 16
  %1773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1772)  ; LegacyF16ToF32(value)
  %1774 = add i32 %30, 64
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = lshr i32 %1776, 22
  %1778 = shl nuw nsw i32 %1777, 5
  %1779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1778)  ; LegacyF16ToF32(value)
  %1780 = shl i32 %1776, 4
  %1781 = and i32 %1780, 32752
  %1782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1781)  ; LegacyF16ToF32(value)
  %1783 = lshr i32 %1776, 7
  %1784 = and i32 %1783, 32752
  %1785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1784)  ; LegacyF16ToF32(value)
  %1786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1787 = extractvalue %dx.types.CBufRet.f32 %1786, 3
  %1788 = fmul fast float %1787, 1.000000e+03
  %1789 = fmul fast float %298, %1788
  %1790 = call float @dx.op.unary.f32(i32 22, float %1789)  ; Frc(value)
  %1791 = fadd fast float %1790, %288
  %1792 = fmul fast float %299, %1788
  %1793 = call float @dx.op.unary.f32(i32 22, float %1792)  ; Frc(value)
  %1794 = fadd fast float %1793, %290
  %1795 = fmul fast float %1760, %1788
  %1796 = call float @dx.op.unary.f32(i32 22, float %1795)  ; Frc(value)
  %1797 = fmul fast float %1796, 0x401921FB60000000
  %1798 = fadd fast float %1797, %1779
  %1799 = call float @dx.op.unary.f32(i32 13, float %1798)  ; Sin(value)
  %1800 = call float @dx.op.unary.f32(i32 12, float %1798)  ; Cos(value)
  %1801 = fsub fast float -0.000000e+00, %1799
  %1802 = fadd fast float %1753, -5.000000e-01
  %1803 = fadd fast float %1754, -5.000000e-01
  %1804 = fmul fast float %1771, %1802
  %1805 = fmul fast float %1773, %1803
  %1806 = fadd fast float %1804, 5.000000e-01
  %1807 = fadd fast float %1805, 5.000000e-01
  %1808 = fmul fast float %1782, %1806
  %1809 = fmul fast float %1785, %1807
  %1810 = fmul fast float %1800, %1808
  %1811 = call float @dx.op.tertiary.f32(i32 46, float %1801, float %1809, float %1810)  ; FMad(a,b,c)
  %1812 = fmul fast float %1799, %1808
  %1813 = call float @dx.op.tertiary.f32(i32 46, float %1800, float %1809, float %1812)  ; FMad(a,b,c)
  %1814 = fadd fast float %1791, %1811
  %1815 = fadd fast float %1794, %1813
  %1816 = icmp ugt i32 %1765, 1
  %1817 = icmp ugt i32 %1763, 33554431
  %1818 = or i1 %1817, %1816
  br i1 %1818, label %1819, label %1844

; <label>:1819                                    ; preds = %1746
  %1820 = add i32 %30, 260
  %1821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1820, i32 undef)  ; BufferLoad(srv,index,wot)
  %1822 = extractvalue %dx.types.ResRet.i32 %1821, 0
  %1823 = lshr i32 %1822, 16
  %1824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1823)  ; LegacyF16ToF32(value)
  %1825 = fmul fast float %1787, %1824
  %1826 = call float @dx.op.unary.f32(i32 22, float %1825)  ; Frc(value)
  %1827 = mul nuw nsw i32 %1765, %1766
  %1828 = uitofp i32 %1827 to float
  %1829 = fmul fast float %1826, %1828
  %1830 = call float @dx.op.unary.f32(i32 27, float %1829)  ; Round_ni(value)
  %1831 = fptoui float %1830 to i32
  %1832 = urem i32 %1831, %1765
  %1833 = udiv i32 %1831, %1766
  %1834 = call float @dx.op.unary.f32(i32 22, float %1814)  ; Frc(value)
  %1835 = call float @dx.op.unary.f32(i32 22, float %1815)  ; Frc(value)
  %1836 = uitofp i32 %1832 to float
  %1837 = uitofp i32 %1833 to float
  %1838 = fadd fast float %1834, %1836
  %1839 = fadd fast float %1835, %1837
  %1840 = uitofp i32 %1765 to float
  %1841 = uitofp i32 %1766 to float
  %1842 = fdiv fast float %1838, %1840
  %1843 = fdiv fast float %1839, %1841
  br label %1844

; <label>:1844                                    ; preds = %1819, %1746
  %1845 = phi float [ %1842, %1819 ], [ %1814, %1746 ]
  %1846 = phi float [ %1843, %1819 ], [ %1815, %1746 ]
  %1847 = and i32 %1740, 16777216
  %1848 = icmp eq i32 %1847, 0
  br i1 %1848, label %1958, label %1849

; <label>:1849                                    ; preds = %1844
  %1850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1851 = extractvalue %dx.types.CBufRet.f32 %1850, 0
  %1852 = extractvalue %dx.types.CBufRet.f32 %1850, 1
  %1853 = extractvalue %dx.types.CBufRet.f32 %1850, 2
  %1854 = fadd fast float %1851, %129
  %1855 = fadd fast float %1852, %130
  %1856 = fadd fast float %1853, %131
  %1857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1858 = extractvalue %dx.types.CBufRet.f32 %1857, 0
  %1859 = call float @dx.op.unary.f32(i32 7, float %1858)  ; Saturate(value)
  %1860 = icmp eq i32 %31, 65535
  br i1 %1860, label %1955, label %1861

; <label>:1861                                    ; preds = %1849
  %1862 = lshr i32 %31, 1
  %1863 = shl i32 %1862, 2
  %1864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1863, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.i32 %1864, 0
  %1866 = and i32 %31, 1
  %1867 = icmp ne i32 %1866, 0
  %1868 = lshr i32 %1865, 16
  %1869 = and i32 %1865, 65535
  %1870 = select i1 %1867, i32 %1868, i32 %1869
  %1871 = icmp eq i32 %1870, 65535
  br i1 %1871, label %1951, label %1872

; <label>:1872                                    ; preds = %1861
  %1873 = mul nuw nsw i32 %1870, 40
  %1874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.f32 %1874, 0
  %1876 = extractvalue %dx.types.ResRet.f32 %1874, 1
  %1877 = extractvalue %dx.types.ResRet.f32 %1874, 2
  %1878 = add nuw nsw i32 %1873, 12
  %1879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.f32 %1879, 0
  %1881 = extractvalue %dx.types.ResRet.f32 %1879, 1
  %1882 = extractvalue %dx.types.ResRet.f32 %1879, 2
  %1883 = add nuw nsw i32 %1873, 24
  %1884 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.f32 %1884, 0
  %1886 = extractvalue %dx.types.ResRet.f32 %1884, 1
  %1887 = extractvalue %dx.types.ResRet.f32 %1884, 2
  %1888 = add nuw nsw i32 %1873, 36
  %1889 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1890 = extractvalue %dx.types.ResRet.f32 %1889, 0
  %1891 = fsub fast float %1854, %1875
  %1892 = fsub fast float %1855, %1876
  %1893 = fsub fast float %1856, %1877
  %1894 = fmul fast float %1890, %1891
  %1895 = fmul fast float %1890, %1892
  %1896 = fmul fast float %1890, %1893
  %1897 = call float @dx.op.unary.f32(i32 27, float %1894)  ; Round_ni(value)
  %1898 = call float @dx.op.unary.f32(i32 27, float %1895)  ; Round_ni(value)
  %1899 = call float @dx.op.unary.f32(i32 27, float %1896)  ; Round_ni(value)
  %1900 = fadd fast float %1897, 5.000000e-01
  %1901 = fadd fast float %1898, 5.000000e-01
  %1902 = fadd fast float %1899, 5.000000e-01
  %1903 = fmul fast float %1900, %1880
  %1904 = fmul fast float %1901, %1881
  %1905 = fmul fast float %1902, %1882
  %1906 = shl i32 %31, 2
  %1907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1908 = extractvalue %dx.types.ResRet.i32 %1907, 0
  %1909 = add i32 %1908, 0
  %1910 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1909, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1911 = call float @dx.op.unary.f32(i32 22, float %1903)  ; Frc(value)
  %1912 = call float @dx.op.unary.f32(i32 22, float %1904)  ; Frc(value)
  %1913 = call float @dx.op.unary.f32(i32 22, float %1905)  ; Frc(value)
  %1914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1910, %dx.types.Handle %27, float %1911, float %1912, float %1913, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1915 = extractvalue %dx.types.ResRet.f32 %1914, 0
  %1916 = extractvalue %dx.types.ResRet.f32 %1914, 1
  %1917 = extractvalue %dx.types.ResRet.f32 %1914, 2
  %1918 = fmul fast float %1915, 1.023000e+03
  %1919 = fmul fast float %1916, 1.023000e+03
  %1920 = fmul fast float %1917, 1.023000e+03
  %1921 = fadd fast float %1918, 5.000000e-01
  %1922 = fadd fast float %1919, 5.000000e-01
  %1923 = fadd fast float %1920, 5.000000e-01
  %1924 = call float @dx.op.unary.f32(i32 27, float %1921)  ; Round_ni(value)
  %1925 = call float @dx.op.unary.f32(i32 27, float %1922)  ; Round_ni(value)
  %1926 = call float @dx.op.unary.f32(i32 27, float %1923)  ; Round_ni(value)
  %1927 = fsub fast float %1894, %1897
  %1928 = fsub fast float %1895, %1898
  %1929 = fsub fast float %1896, %1899
  %1930 = fmul fast float %1927, 7.500000e-01
  %1931 = fmul fast float %1928, 7.500000e-01
  %1932 = fmul fast float %1929, 7.500000e-01
  %1933 = fadd fast float %1897, 1.250000e-01
  %1934 = fadd fast float %1933, %1930
  %1935 = fadd fast float %1934, %1924
  %1936 = fadd fast float %1898, 1.250000e-01
  %1937 = fadd fast float %1936, %1931
  %1938 = fadd fast float %1937, %1925
  %1939 = fadd fast float %1899, 1.250000e-01
  %1940 = fadd fast float %1939, %1932
  %1941 = fadd fast float %1940, %1926
  %1942 = fmul fast float %1935, %1885
  %1943 = fmul fast float %1938, %1886
  %1944 = fmul fast float %1941, %1887
  %1945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.i32 %1945, 0
  %1947 = add i32 %1946, 0
  %1948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1947, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1948, %dx.types.Handle %25, float %1942, float %1943, float %1944, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1950 = extractvalue %dx.types.ResRet.f32 %1949, 0
  br label %1951

; <label>:1951                                    ; preds = %1872, %1861
  %1952 = phi float [ %1950, %1872 ], [ -1.000000e+00, %1861 ]
  %1953 = fadd fast float %1952, %1859
  %1954 = call float @dx.op.unary.f32(i32 7, float %1953)  ; Saturate(value)
  br label %1955

; <label>:1955                                    ; preds = %1951, %1849
  %1956 = phi float [ %1954, %1951 ], [ %1859, %1849 ]
  %1957 = fmul fast float %1956, %397
  br label %1958

; <label>:1958                                    ; preds = %1955, %1844
  %1959 = phi float [ %1957, %1955 ], [ %397, %1844 ]
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = and i32 %1961, 256
  %1963 = icmp eq i32 %1962, 0
  br i1 %1963, label %2010, label %1964

; <label>:1964                                    ; preds = %1958
  %1965 = add i32 %30, 480
  %1966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.i32 %1966, 0
  %1968 = add i32 %1967, 0
  %1969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1968, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1970 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1969, %dx.types.Handle %63, float %1845, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1971 = extractvalue %dx.types.ResRet.f32 %1970, 0
  %1972 = add i32 %30, 132
  %1973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %1974 = extractvalue %dx.types.ResRet.i32 %1973, 0
  %1975 = shl i32 %1974, 4
  %1976 = and i32 %1975, 32752
  %1977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1976)  ; LegacyF16ToF32(value)
  %1978 = lshr i32 %1974, 7
  %1979 = and i32 %1978, 32752
  %1980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1979)  ; LegacyF16ToF32(value)
  %1981 = fsub fast float 1.000000e+00, %1959
  %1982 = call float @dx.op.binary.f32(i32 35, float %1981, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1983 = bitcast float %1959 to i32
  %1984 = sitofp i32 %1983 to float
  %1985 = fadd fast float %1984, 0xC1CFBF8940000000
  %1986 = fmul fast float %1980, %1985
  %1987 = fadd fast float %1986, 0x41CFBF8940000000
  %1988 = fptosi float %1987 to i32
  %1989 = bitcast i32 %1988 to float
  %1990 = bitcast float %1982 to i32
  %1991 = sitofp i32 %1990 to float
  %1992 = fadd fast float %1991, 0xC1CFBF8940000000
  %1993 = fmul fast float %1992, %1980
  %1994 = fadd fast float %1993, 0x41CFBF8940000000
  %1995 = fptosi float %1994 to i32
  %1996 = bitcast i32 %1995 to float
  %1997 = fmul fast float %1989, %1977
  %1998 = fmul fast float %1996, %1977
  %1999 = fsub fast float %1982, %1997
  %2000 = fadd fast float %1998, %1982
  %2001 = call float @dx.op.unary.f32(i32 7, float %1999)  ; Saturate(value)
  %2002 = call float @dx.op.unary.f32(i32 7, float %2000)  ; Saturate(value)
  %2003 = fsub fast float %1971, %2001
  %2004 = fsub fast float %2002, %2001
  %2005 = bitcast float %2004 to i32
  %2006 = sub nsw i32 2129859010, %2005
  %2007 = bitcast i32 %2006 to float
  %2008 = fmul fast float %2007, %2003
  %2009 = call float @dx.op.unary.f32(i32 7, float %2008)  ; Saturate(value)
  br label %2010

; <label>:2010                                    ; preds = %1964, %1958
  %2011 = phi float [ %2009, %1964 ], [ %1959, %1958 ]
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = and i32 %2013, 128
  %2015 = icmp eq i32 %2014, 0
  br i1 %2015, label %2032, label %2016

; <label>:2016                                    ; preds = %2010
  %2017 = add i32 %30, 464
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = add i32 %2019, 0
  %2021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2020, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2022 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2021, %dx.types.Handle %63, float %1845, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2023 = extractvalue %dx.types.ResRet.f32 %2022, 0
  %2024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.i32 %2024, 0
  %2026 = and i32 %2025, 524288
  %2027 = icmp ne i32 %2026, 0
  %2028 = fcmp fast ogt float %2023, 0x3FE0101020000000
  %2029 = select i1 %2028, float 1.000000e+00, float 0.000000e+00
  %2030 = select i1 %2027, float %2029, float %2023
  %2031 = fmul fast float %2030, %2011
  br label %2032

; <label>:2032                                    ; preds = %2016, %2010
  %2033 = phi float [ %2031, %2016 ], [ %2011, %2010 ]
  %2034 = fcmp fast ult float %2033, 0x3F70101020000000
  br i1 %2034, label %2577, label %2035

; <label>:2035                                    ; preds = %2032
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = and i32 %2037, 16
  %2039 = icmp eq i32 %2038, 0
  br i1 %2039, label %2238, label %2040

; <label>:2040                                    ; preds = %2035
  %2041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.i32 %2041, 0
  %2043 = add i32 %30, 416
  %2044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2043, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.i32 %2044, 0
  %2046 = add i32 %2045, 0
  %2047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2046, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2048 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2047, %dx.types.Handle %62, float %1845, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2049 = extractvalue %dx.types.ResRet.f32 %2048, 0
  %2050 = extractvalue %dx.types.ResRet.f32 %2048, 1
  %2051 = extractvalue %dx.types.ResRet.f32 %2048, 2
  %2052 = extractvalue %dx.types.ResRet.f32 %2048, 3
  %2053 = and i32 %2042, 255
  %2054 = uitofp i32 %2053 to float
  %2055 = lshr i32 %2042, 8
  %2056 = and i32 %2055, 255
  %2057 = uitofp i32 %2056 to float
  %2058 = fmul fast float %2052, %2054
  %2059 = fadd fast float %2058, %2057
  %2060 = fmul fast float %2059, 0x3F70101000000000
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = and i32 %2062, 512
  %2064 = icmp eq i32 %2063, 0
  br i1 %2064, label %2073, label %2065

; <label>:2065                                    ; preds = %2040
  %2066 = add i32 %30, 500
  %2067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2066, i32 undef)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.i32 %2067, 0
  %2069 = add i32 %2068, 0
  %2070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2069, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2071 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2070, %dx.types.Handle %63, float %1845, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2072 = extractvalue %dx.types.ResRet.f32 %2071, 0
  br label %2073

; <label>:2073                                    ; preds = %2065, %2040
  %2074 = phi float [ %2072, %2065 ], [ 1.000000e+00, %2040 ]
  %2075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.i32 %2075, 0
  %2077 = and i32 %2076, 33554432
  %2078 = icmp eq i32 %2077, 0
  br i1 %2078, label %2185, label %2079

; <label>:2079                                    ; preds = %2073
  %2080 = add i32 %30, 256
  %2081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2080, i32 undef)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.i32 %2081, 0
  %2083 = and i32 %2082, 65535
  %2084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2083)  ; LegacyF16ToF32(value)
  %2085 = lshr i32 %2082, 16
  %2086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2085)  ; LegacyF16ToF32(value)
  %2087 = add i32 %30, 260
  %2088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2089 = extractvalue %dx.types.ResRet.i32 %2088, 0
  %2090 = and i32 %2089, 65535
  %2091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2090)  ; LegacyF16ToF32(value)
  %2092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.i32 %2092, 0
  %2094 = lshr i32 %2093, 24
  %2095 = uitofp i32 %2094 to float
  %2096 = fmul fast float %2095, 0x3F70101020000000
  %2097 = and i32 %2093, 255
  %2098 = uitofp i32 %2097 to float
  %2099 = fmul fast float %2098, 0x3F70101020000000
  %2100 = lshr i32 %2093, 8
  %2101 = and i32 %2100, 255
  %2102 = uitofp i32 %2101 to float
  %2103 = fmul fast float %2102, 0x3F70101020000000
  %2104 = lshr i32 %2093, 16
  %2105 = and i32 %2104, 255
  %2106 = uitofp i32 %2105 to float
  %2107 = fmul fast float %2106, 0x3F70101020000000
  %2108 = add i32 %30, 252
  %2109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2110 = extractvalue %dx.types.ResRet.i32 %2109, 0
  %2111 = lshr i32 %2110, 24
  %2112 = uitofp i32 %2111 to float
  %2113 = fmul fast float %2112, 0x3F70101020000000
  %2114 = and i32 %2110, 255
  %2115 = uitofp i32 %2114 to float
  %2116 = fmul fast float %2115, 0x3F70101020000000
  %2117 = lshr i32 %2110, 8
  %2118 = and i32 %2117, 255
  %2119 = uitofp i32 %2118 to float
  %2120 = fmul fast float %2119, 0x3F70101020000000
  %2121 = lshr i32 %2110, 16
  %2122 = and i32 %2121, 255
  %2123 = uitofp i32 %2122 to float
  %2124 = fmul fast float %2123, 0x3F70101020000000
  %2125 = bitcast float %2049 to i32
  %2126 = ashr i32 %2125, 1
  %2127 = sub nsw i32 1597463174, %2126
  %2128 = bitcast i32 %2127 to float
  %2129 = fmul fast float %2049, 5.000000e-01
  %2130 = fmul fast float %2128, %2128
  %2131 = fmul fast float %2130, %2129
  %2132 = fsub fast float 1.500000e+00, %2131
  %2133 = fmul fast float %2128, %2049
  %2134 = fmul fast float %2133, %2132
  %2135 = bitcast float %2050 to i32
  %2136 = ashr i32 %2135, 1
  %2137 = sub nsw i32 1597463174, %2136
  %2138 = bitcast i32 %2137 to float
  %2139 = fmul fast float %2050, 5.000000e-01
  %2140 = fmul fast float %2138, %2138
  %2141 = fmul fast float %2140, %2139
  %2142 = fsub fast float 1.500000e+00, %2141
  %2143 = fmul fast float %2138, %2050
  %2144 = fmul fast float %2143, %2142
  %2145 = bitcast float %2051 to i32
  %2146 = ashr i32 %2145, 1
  %2147 = sub nsw i32 1597463174, %2146
  %2148 = bitcast i32 %2147 to float
  %2149 = fmul fast float %2051, 5.000000e-01
  %2150 = fmul fast float %2148, %2148
  %2151 = fmul fast float %2150, %2149
  %2152 = fsub fast float 1.500000e+00, %2151
  %2153 = fmul fast float %2148, %2051
  %2154 = fmul fast float %2153, %2152
  %2155 = fsub fast float %2134, %2116
  %2156 = fsub fast float %2144, %2120
  %2157 = fsub fast float %2154, %2124
  %2158 = fmul fast float %2155, %2084
  %2159 = fmul fast float %2156, %2086
  %2160 = fmul fast float %2157, %2091
  %2161 = fadd fast float %2158, %2099
  %2162 = fadd fast float %2159, %2103
  %2163 = fadd fast float %2160, %2107
  %2164 = call float @dx.op.unary.f32(i32 7, float %2161)  ; Saturate(value)
  %2165 = call float @dx.op.unary.f32(i32 7, float %2162)  ; Saturate(value)
  %2166 = call float @dx.op.unary.f32(i32 7, float %2163)  ; Saturate(value)
  %2167 = fmul fast float %2164, %2164
  %2168 = fmul fast float %2165, %2165
  %2169 = fmul fast float %2166, %2166
  %2170 = fsub fast float %2167, %2049
  %2171 = fsub fast float %2168, %2050
  %2172 = fsub fast float %2169, %2051
  %2173 = fmul fast float %2170, %2074
  %2174 = fmul fast float %2171, %2074
  %2175 = fmul fast float %2172, %2074
  %2176 = fadd fast float %2173, %2049
  %2177 = fadd fast float %2174, %2050
  %2178 = fadd fast float %2175, %2051
  %2179 = fadd fast float %2096, %2060
  %2180 = fsub fast float %2179, %2113
  %2181 = call float @dx.op.unary.f32(i32 7, float %2180)  ; Saturate(value)
  %2182 = fsub fast float %2181, %2060
  %2183 = fmul fast float %2182, %2074
  %2184 = fadd fast float %2183, %2060
  br label %2238

; <label>:2185                                    ; preds = %2073
  %2186 = and i32 %2076, 134217728
  %2187 = icmp eq i32 %2186, 0
  br i1 %2187, label %2222, label %2188

; <label>:2188                                    ; preds = %2185
  %2189 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %2190 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %2191 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %2192 = fadd fast float %2189, -5.000000e-01
  %2193 = fadd fast float %2190, -5.000000e-01
  %2194 = fadd fast float %2191, -5.000000e-01
  %2195 = fmul fast float %2192, %2074
  %2196 = fmul fast float %2193, %2074
  %2197 = fmul fast float %2194, %2074
  %2198 = fadd fast float %2195, 5.000000e-01
  %2199 = fadd fast float %2196, 5.000000e-01
  %2200 = fadd fast float %2197, 5.000000e-01
  %2201 = call float @dx.op.unary.f32(i32 24, float %2049)  ; Sqrt(value)
  %2202 = call float @dx.op.unary.f32(i32 24, float %2050)  ; Sqrt(value)
  %2203 = call float @dx.op.unary.f32(i32 24, float %2051)  ; Sqrt(value)
  %2204 = fmul fast float %2198, 2.000000e+00
  %2205 = fsub fast float 1.000000e+00, %2204
  %2206 = fmul fast float %2205, %2201
  %2207 = fadd fast float %2206, %2204
  %2208 = fmul fast float %2207, %2201
  %2209 = fmul fast float %2199, 2.000000e+00
  %2210 = fsub fast float 1.000000e+00, %2209
  %2211 = fmul fast float %2210, %2202
  %2212 = fadd fast float %2211, %2209
  %2213 = fmul fast float %2212, %2202
  %2214 = fmul fast float %2200, 2.000000e+00
  %2215 = fsub fast float 1.000000e+00, %2214
  %2216 = fmul fast float %2215, %2203
  %2217 = fadd fast float %2216, %2214
  %2218 = fmul fast float %2217, %2203
  %2219 = fmul fast float %2208, %2208
  %2220 = fmul fast float %2213, %2213
  %2221 = fmul fast float %2218, %2218
  br label %2238

; <label>:2222                                    ; preds = %2185
  %2223 = fmul fast float %275, %275
  %2224 = fmul fast float %279, %279
  %2225 = fmul fast float %283, %283
  %2226 = fadd fast float %2223, -1.000000e+00
  %2227 = fadd fast float %2224, -1.000000e+00
  %2228 = fadd fast float %2225, -1.000000e+00
  %2229 = fmul fast float %2074, %2226
  %2230 = fmul fast float %2074, %2227
  %2231 = fmul fast float %2074, %2228
  %2232 = fadd fast float %2229, 1.000000e+00
  %2233 = fadd fast float %2230, 1.000000e+00
  %2234 = fadd fast float %2231, 1.000000e+00
  %2235 = fmul fast float %2232, %2049
  %2236 = fmul fast float %2233, %2050
  %2237 = fmul fast float %2234, %2051
  br label %2238

; <label>:2238                                    ; preds = %2222, %2188, %2079, %2035
  %2239 = phi float [ %2184, %2079 ], [ %2060, %2188 ], [ %2060, %2222 ], [ 0x3FA23C0BE0000000, %2035 ]
  %2240 = phi float [ %2176, %2079 ], [ %2219, %2188 ], [ %2235, %2222 ], [ 1.000000e+00, %2035 ]
  %2241 = phi float [ %2177, %2079 ], [ %2220, %2188 ], [ %2236, %2222 ], [ 1.000000e+00, %2035 ]
  %2242 = phi float [ %2178, %2079 ], [ %2221, %2188 ], [ %2237, %2222 ], [ 1.000000e+00, %2035 ]
  %2243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2244 = extractvalue %dx.types.CBufRet.i32 %2243, 1
  %2245 = and i32 %2244, 1
  %2246 = icmp ne i32 %2245, 0
  %2247 = add i32 %30, 356
  %2248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2247, i32 undef)  ; BufferLoad(srv,index,wot)
  %2249 = extractvalue %dx.types.ResRet.i32 %2248, 0
  %2250 = and i32 %2249, 32
  %2251 = icmp ne i32 %2250, 0
  %2252 = and i1 %2246, %2251
  %2253 = select i1 %2252, float 1.000000e+00, float %2240
  %2254 = select i1 %2252, float 0x3FD3333340000000, float %2241
  %2255 = select i1 %2252, float 0x3FD3333340000000, float %2242
  %2256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.i32 %2256, 0
  %2258 = and i32 %2257, 32
  %2259 = icmp eq i32 %2258, 0
  br i1 %2259, label %2332, label %2260

; <label>:2260                                    ; preds = %2238
  %2261 = add i32 %30, 124
  %2262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2263 = extractvalue %dx.types.ResRet.i32 %2262, 0
  %2264 = add i32 %30, 432
  %2265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = add i32 %2266, 0
  %2268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2267, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2269 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2268, %dx.types.Handle %62, float %1845, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2270 = extractvalue %dx.types.ResRet.f32 %2269, 0
  %2271 = extractvalue %dx.types.ResRet.f32 %2269, 1
  %2272 = extractvalue %dx.types.ResRet.f32 %2269, 2
  %2273 = extractvalue %dx.types.ResRet.f32 %2269, 3
  %2274 = and i32 %2263, 255
  %2275 = uitofp i32 %2274 to float
  %2276 = lshr i32 %2263, 8
  %2277 = and i32 %2276, 255
  %2278 = uitofp i32 %2277 to float
  %2279 = lshr i32 %2263, 16
  %2280 = and i32 %2279, 255
  %2281 = uitofp i32 %2280 to float
  %2282 = fmul fast float %2281, 0x3F70101000000000
  %2283 = fmul fast float %2270, %2275
  %2284 = fadd fast float %2283, %2278
  %2285 = fmul fast float %2284, 0x3F70101000000000
  %2286 = fadd fast float %2271, -5.000000e-01
  %2287 = fadd fast float %2273, -5.000000e-01
  %2288 = fmul fast float %2286, %2282
  %2289 = fmul fast float %2287, %2282
  %2290 = fadd fast float %2288, 5.000000e-01
  %2291 = fadd fast float %2289, 5.000000e-01
  %2292 = fmul fast float %2290, 2.000000e+00
  %2293 = fadd fast float %2292, -1.000000e+00
  %2294 = fmul fast float %2291, 2.000000e+00
  %2295 = fadd fast float %2294, -1.000000e+00
  %2296 = fadd fast float %2293, %2295
  %2297 = fmul fast float %2296, 5.000000e-01
  %2298 = fsub fast float %2293, %2295
  %2299 = fmul fast float %2298, 5.000000e-01
  %2300 = call float @dx.op.unary.f32(i32 6, float %2297)  ; FAbs(value)
  %2301 = fsub fast float 1.000000e+00, %2300
  %2302 = call float @dx.op.unary.f32(i32 6, float %2299)  ; FAbs(value)
  %2303 = fsub fast float %2301, %2302
  %2304 = call float @dx.op.dot3.f32(i32 55, float %2297, float %2299, float %2303, float %2297, float %2299, float %2303)  ; Dot3(ax,ay,az,bx,by,bz)
  %2305 = call float @dx.op.unary.f32(i32 25, float %2304)  ; Rsqrt(value)
  %2306 = fmul fast float %2297, %2305
  %2307 = fmul fast float %2299, %2305
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = and i32 %2309, 67108864
  %2311 = icmp eq i32 %2310, 0
  br i1 %2311, label %2328, label %2312

; <label>:2312                                    ; preds = %2260
  %2313 = add i32 %30, 312
  %2314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2315 = extractvalue %dx.types.ResRet.i32 %2314, 0
  %2316 = and i32 %2315, 65535
  %2317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2316)  ; LegacyF16ToF32(value)
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = and i32 %2319, 65535
  %2321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2320)  ; LegacyF16ToF32(value)
  %2322 = lshr i32 %2315, 16
  %2323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2322)  ; LegacyF16ToF32(value)
  %2324 = fsub fast float %2285, %2323
  %2325 = fmul fast float %2324, %2317
  %2326 = fadd fast float %2325, %2321
  %2327 = call float @dx.op.unary.f32(i32 7, float %2326)  ; Saturate(value)
  br label %2328

; <label>:2328                                    ; preds = %2312, %2260
  %2329 = phi float [ %2327, %2312 ], [ %2285, %2260 ]
  %2330 = call float @dx.op.dot2.f32(i32 54, float %2306, float %2307, float %1749, float %1750)  ; Dot2(ax,ay,bx,by)
  %2331 = call float @dx.op.dot2.f32(i32 54, float %2306, float %2307, float %1751, float %1752)  ; Dot2(ax,ay,bx,by)
  br label %2332

; <label>:2332                                    ; preds = %2328, %2238
  %2333 = phi float [ %2329, %2328 ], [ 0x3FD6666660000000, %2238 ]
  %2334 = phi float [ %2330, %2328 ], [ 0.000000e+00, %2238 ]
  %2335 = phi float [ %2331, %2328 ], [ 0.000000e+00, %2238 ]
  %2336 = phi float [ %2272, %2328 ], [ 1.000000e+00, %2238 ]
  %2337 = add i32 %30, 192
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = lshr i32 %2339, 22
  %2341 = shl nuw nsw i32 %2340, 5
  %2342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2341)  ; LegacyF16ToF32(value)
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = and i32 %2344, 64
  %2346 = icmp eq i32 %2345, 0
  br i1 %2346, label %2380, label %2347

; <label>:2347                                    ; preds = %2332
  %2348 = add i32 %30, 448
  %2349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2348, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.i32 %2349, 0
  %2351 = add i32 %2350, 0
  %2352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2351, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = and i32 %2354, 131072
  %2356 = icmp eq i32 %2355, 0
  %2357 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2352, %dx.types.Handle %62, float %1845, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2358 = extractvalue %dx.types.ResRet.f32 %2357, 0
  %2359 = extractvalue %dx.types.ResRet.f32 %2357, 1
  %2360 = extractvalue %dx.types.ResRet.f32 %2357, 2
  %2361 = fmul fast float %2358, %263
  %2362 = fmul fast float %2359, %266
  %2363 = fmul fast float %2360, %269
  br i1 %2356, label %2370, label %2364

; <label>:2364                                    ; preds = %2347
  %2365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2366 = extractvalue %dx.types.CBufRet.f32 %2365, 0
  %2367 = fmul fast float %2366, %2361
  %2368 = fmul fast float %2366, %2362
  %2369 = fmul fast float %2366, %2363
  br label %2370

; <label>:2370                                    ; preds = %2364, %2347
  %2371 = phi float [ %2367, %2364 ], [ %2361, %2347 ]
  %2372 = phi float [ %2368, %2364 ], [ %2362, %2347 ]
  %2373 = phi float [ %2369, %2364 ], [ %2363, %2347 ]
  %2374 = fmul fast float %2371, %2342
  %2375 = select i1 %173, float %2374, float %2371
  %2376 = call float @dx.op.dot3.f32(i32 55, float %2375, float %2372, float %2373, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2377 = select i1 %173, float 0.000000e+00, float %2371
  %2378 = select i1 %173, float %2376, float %2372
  %2379 = select i1 %173, float 0.000000e+00, float %2373
  br label %2380

; <label>:2380                                    ; preds = %2370, %2332
  %2381 = phi float [ %2377, %2370 ], [ 0.000000e+00, %2332 ]
  %2382 = phi float [ %2378, %2370 ], [ 0.000000e+00, %2332 ]
  %2383 = phi float [ %2379, %2370 ], [ 0.000000e+00, %2332 ]
  %2384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2385 = extractvalue %dx.types.ResRet.i32 %2384, 0
  %2386 = add i32 %30, 128
  %2387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2386, i32 undef)  ; BufferLoad(srv,index,wot)
  %2388 = extractvalue %dx.types.ResRet.i32 %2387, 0
  %2389 = and i32 %2388, 255
  %2390 = uitofp i32 %2389 to float
  %2391 = lshr i32 %2388, 8
  %2392 = and i32 %2391, 255
  %2393 = uitofp i32 %2392 to float
  %2394 = call float @dx.op.dot3.f32(i32 55, float %2253, float %2254, float %2255, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2395 = fmul fast float %2393, %2394
  %2396 = fadd fast float %2395, %2390
  %2397 = fmul fast float %2396, 0x3F70101020000000
  %2398 = call float @dx.op.unary.f32(i32 7, float %2397)  ; Saturate(value)
  br i1 %1737, label %2399, label %2407

; <label>:2399                                    ; preds = %2380
  %2400 = fsub fast float 1.000000e+00, %2033
  %2401 = fmul fast float %2400, %1726
  %2402 = fmul fast float %2400, %1727
  %2403 = fmul fast float %2400, %1728
  %2404 = fmul fast float %2400, %1729
  %2405 = fmul fast float %2400, %1730
  %2406 = fmul fast float %2400, %1731
  br label %2407

; <label>:2407                                    ; preds = %2399, %2380
  %2408 = phi float [ %2401, %2399 ], [ %1726, %2380 ]
  %2409 = phi float [ %2402, %2399 ], [ %1727, %2380 ]
  %2410 = phi float [ %2403, %2399 ], [ %1728, %2380 ]
  %2411 = phi float [ %2404, %2399 ], [ %1729, %2380 ]
  %2412 = phi float [ %2405, %2399 ], [ %1730, %2380 ]
  %2413 = phi float [ %2406, %2399 ], [ %1731, %2380 ]
  %2414 = and i32 %2385, 3
  %2415 = icmp eq i32 %2414, 3
  br i1 %2415, label %2494, label %2416

; <label>:2416                                    ; preds = %2407
  %2417 = and i32 %2385, 16
  %2418 = icmp ne i32 %2417, 0
  %2419 = select i1 %2418, float %2033, float 0.000000e+00
  %2420 = icmp eq i32 %2414, 0
  br i1 %2420, label %2421, label %2449

; <label>:2421                                    ; preds = %2416
  %2422 = and i32 %2385, 64
  %2423 = icmp ne i32 %2422, 0
  %2424 = select i1 %2423, float %2033, float 0.000000e+00
  %2425 = fsub fast float %2253, %2408
  %2426 = fsub fast float %2254, %2409
  %2427 = fsub fast float %2255, %2410
  %2428 = fmul fast float %2419, %2425
  %2429 = fmul fast float %2419, %2426
  %2430 = fmul fast float %2419, %2427
  %2431 = fadd fast float %2428, %2408
  %2432 = fadd fast float %2429, %2409
  %2433 = fadd fast float %2430, %2410
  %2434 = fsub fast float %2239, %1732
  %2435 = fmul fast float %2419, %2434
  %2436 = fadd fast float %2435, %1732
  %2437 = fsub fast float %2381, %2411
  %2438 = fsub fast float %2382, %2412
  %2439 = fsub fast float %2383, %2413
  %2440 = fmul fast float %2424, %2437
  %2441 = fmul fast float %2424, %2438
  %2442 = fmul fast float %2424, %2439
  %2443 = fadd fast float %2440, %2411
  %2444 = fadd fast float %2441, %2412
  %2445 = fadd fast float %2442, %2413
  %2446 = fsub fast float %2398, %1735
  %2447 = fmul fast float %2419, %2446
  %2448 = fadd fast float %2447, %1735
  br label %2494

; <label>:2449                                    ; preds = %2416
  %2450 = icmp eq i32 %2414, 1
  br i1 %2450, label %2451, label %2464

; <label>:2451                                    ; preds = %2449
  %2452 = fadd fast float %2253, -1.000000e+00
  %2453 = fadd fast float %2254, -1.000000e+00
  %2454 = fadd fast float %2255, -1.000000e+00
  %2455 = fmul fast float %2419, %2452
  %2456 = fmul fast float %2419, %2453
  %2457 = fmul fast float %2419, %2454
  %2458 = fadd fast float %2455, 1.000000e+00
  %2459 = fadd fast float %2456, 1.000000e+00
  %2460 = fadd fast float %2457, 1.000000e+00
  %2461 = fmul fast float %2458, %2408
  %2462 = fmul fast float %2459, %2409
  %2463 = fmul fast float %2460, %2410
  br label %2494

; <label>:2464                                    ; preds = %2449
  %2465 = icmp eq i32 %2414, 2
  br i1 %2465, label %2466, label %2494

; <label>:2466                                    ; preds = %2464
  %2467 = call float @dx.op.unary.f32(i32 24, float %2253)  ; Sqrt(value)
  %2468 = call float @dx.op.unary.f32(i32 24, float %2254)  ; Sqrt(value)
  %2469 = call float @dx.op.unary.f32(i32 24, float %2255)  ; Sqrt(value)
  %2470 = fadd fast float %2467, -5.000000e-01
  %2471 = fadd fast float %2468, -5.000000e-01
  %2472 = fadd fast float %2469, -5.000000e-01
  %2473 = fmul fast float %2470, %2419
  %2474 = fmul fast float %2471, %2419
  %2475 = fmul fast float %2472, %2419
  %2476 = fadd fast float %2473, 5.000000e-01
  %2477 = fadd fast float %2474, 5.000000e-01
  %2478 = fadd fast float %2475, 5.000000e-01
  %2479 = fmul fast float %2476, 2.000000e+00
  %2480 = fsub fast float 1.000000e+00, %2479
  %2481 = fmul fast float %2480, %2408
  %2482 = fadd fast float %2481, %2479
  %2483 = fmul fast float %2482, %2408
  %2484 = fmul fast float %2477, 2.000000e+00
  %2485 = fsub fast float 1.000000e+00, %2484
  %2486 = fmul fast float %2485, %2409
  %2487 = fadd fast float %2486, %2484
  %2488 = fmul fast float %2487, %2409
  %2489 = fmul fast float %2478, 2.000000e+00
  %2490 = fsub fast float 1.000000e+00, %2489
  %2491 = fmul fast float %2490, %2410
  %2492 = fadd fast float %2491, %2489
  %2493 = fmul fast float %2492, %2410
  br label %2494

; <label>:2494                                    ; preds = %2466, %2464, %2451, %2421, %2407
  %2495 = phi float [ %2408, %2407 ], [ %2483, %2466 ], [ %2408, %2464 ], [ %2461, %2451 ], [ %2431, %2421 ]
  %2496 = phi float [ %2409, %2407 ], [ %2488, %2466 ], [ %2409, %2464 ], [ %2462, %2451 ], [ %2432, %2421 ]
  %2497 = phi float [ %2410, %2407 ], [ %2493, %2466 ], [ %2410, %2464 ], [ %2463, %2451 ], [ %2433, %2421 ]
  %2498 = phi float [ %2411, %2407 ], [ %2411, %2466 ], [ %2411, %2464 ], [ %2411, %2451 ], [ %2443, %2421 ]
  %2499 = phi float [ %2412, %2407 ], [ %2412, %2466 ], [ %2412, %2464 ], [ %2412, %2451 ], [ %2444, %2421 ]
  %2500 = phi float [ %2413, %2407 ], [ %2413, %2466 ], [ %2413, %2464 ], [ %2413, %2451 ], [ %2445, %2421 ]
  %2501 = phi float [ %1732, %2407 ], [ %1732, %2466 ], [ %1732, %2464 ], [ %1732, %2451 ], [ %2436, %2421 ]
  %2502 = phi float [ %1735, %2407 ], [ %1735, %2466 ], [ %1735, %2464 ], [ %1735, %2451 ], [ %2448, %2421 ]
  %2503 = and i32 %2385, 12
  %2504 = icmp eq i32 %2503, 12
  br i1 %2504, label %2577, label %2505

; <label>:2505                                    ; preds = %2494
  %2506 = and i32 %2385, 2097184
  %2507 = icmp eq i32 %2506, 2097184
  %2508 = select i1 %2507, float %2033, float 0.000000e+00
  %2509 = and i32 %2385, 4194336
  %2510 = icmp eq i32 %2509, 4194336
  %2511 = select i1 %2510, float %2033, float 0.000000e+00
  %2512 = and i32 %2385, 8388640
  %2513 = icmp eq i32 %2512, 8388640
  %2514 = select i1 %2513, float %2033, float 0.000000e+00
  %2515 = icmp eq i32 %2503, 0
  br i1 %2515, label %2516, label %2529

; <label>:2516                                    ; preds = %2505
  %2517 = fsub fast float %2334, %1724
  %2518 = fsub fast float %2335, %1725
  %2519 = fmul fast float %2508, %2517
  %2520 = fmul fast float %2508, %2518
  %2521 = fadd fast float %2519, %1724
  %2522 = fadd fast float %2520, %1725
  %2523 = fsub fast float %2336, %1734
  %2524 = fmul fast float %2511, %2523
  %2525 = fadd fast float %2524, %1734
  %2526 = fsub fast float %2333, %1733
  %2527 = fmul fast float %2514, %2526
  %2528 = fadd fast float %2527, %1733
  br label %2577

; <label>:2529                                    ; preds = %2505
  %2530 = icmp eq i32 %2503, 4
  br i1 %2530, label %2531, label %2563

; <label>:2531                                    ; preds = %2529
  %2532 = fmul fast float %2508, %2334
  %2533 = fmul fast float %2508, %2335
  %2534 = fadd fast float %2532, %1724
  %2535 = fadd fast float %2533, %1725
  %2536 = call float @dx.op.binary.f32(i32 36, float %1734, float %2336)  ; FMin(a,b)
  %2537 = fsub fast float %2536, %1734
  %2538 = fmul fast float %2537, %2511
  %2539 = fadd fast float %2538, %1734
  %2540 = fadd fast float %2333, %1733
  %2541 = fmul fast float %2540, 0x3FF337FAE0000000
  %2542 = fmul fast float %1733, %1733
  %2543 = fmul fast float %2333, %2333
  %2544 = fadd fast float %2543, %2542
  %2545 = fmul fast float %2544, 0x3FE5152B00000000
  %2546 = fmul fast float %1733, 0xBFCC1F85E0000000
  %2547 = fmul fast float %2546, %2333
  %2548 = fadd fast float %2547, 0xBFE1363700000000
  %2549 = fadd fast float %2548, %2541
  %2550 = fsub fast float %2549, %2545
  %2551 = fmul fast float %2540, 0x3FBA6F0D00000000
  %2552 = fmul fast float %2544, 0x3FD0432880000000
  %2553 = fmul fast float %1733, 0xBFEF110800000000
  %2554 = fmul fast float %2553, %2333
  %2555 = fadd fast float %2554, 1.000000e+00
  %2556 = fsub fast float %2555, %2551
  %2557 = fadd fast float %2556, %2552
  %2558 = fdiv fast float %2550, %2557
  %2559 = call float @dx.op.unary.f32(i32 7, float %2558)  ; Saturate(value)
  %2560 = fsub fast float %2559, %1733
  %2561 = fmul fast float %2560, %2514
  %2562 = fadd fast float %2561, %1733
  br label %2577

; <label>:2563                                    ; preds = %2529
  %2564 = icmp eq i32 %2503, 8
  br i1 %2564, label %2565, label %2577

; <label>:2565                                    ; preds = %2563
  %2566 = fmul fast float %2508, %2334
  %2567 = fmul fast float %2508, %2335
  %2568 = fadd fast float %2566, %1724
  %2569 = fadd fast float %2567, %1725
  %2570 = call float @dx.op.binary.f32(i32 36, float %1734, float %2336)  ; FMin(a,b)
  %2571 = fsub fast float %2570, %1734
  %2572 = fmul fast float %2571, %2511
  %2573 = fadd fast float %2572, %1734
  %2574 = fsub fast float %2333, %1733
  %2575 = fmul fast float %2514, %2574
  %2576 = fadd fast float %2575, %1733
  br label %2577

; <label>:2577                                    ; preds = %2565, %2563, %2531, %2516, %2494, %2032, %1736, %1723
  %2578 = phi float [ %1724, %2494 ], [ %1724, %2032 ], [ %1724, %1723 ], [ %2568, %2565 ], [ %1724, %2563 ], [ %2534, %2531 ], [ %2521, %2516 ], [ %1724, %1736 ]
  %2579 = phi float [ %1725, %2494 ], [ %1725, %2032 ], [ %1725, %1723 ], [ %2569, %2565 ], [ %1725, %2563 ], [ %2535, %2531 ], [ %2522, %2516 ], [ %1725, %1736 ]
  %2580 = phi float [ %2495, %2494 ], [ %1726, %2032 ], [ %1726, %1723 ], [ %2495, %2565 ], [ %2495, %2563 ], [ %2495, %2531 ], [ %2495, %2516 ], [ %1726, %1736 ]
  %2581 = phi float [ %2496, %2494 ], [ %1727, %2032 ], [ %1727, %1723 ], [ %2496, %2565 ], [ %2496, %2563 ], [ %2496, %2531 ], [ %2496, %2516 ], [ %1727, %1736 ]
  %2582 = phi float [ %2497, %2494 ], [ %1728, %2032 ], [ %1728, %1723 ], [ %2497, %2565 ], [ %2497, %2563 ], [ %2497, %2531 ], [ %2497, %2516 ], [ %1728, %1736 ]
  %2583 = phi float [ %2498, %2494 ], [ %1729, %2032 ], [ %1729, %1723 ], [ %2498, %2565 ], [ %2498, %2563 ], [ %2498, %2531 ], [ %2498, %2516 ], [ %1729, %1736 ]
  %2584 = phi float [ %2499, %2494 ], [ %1730, %2032 ], [ %1730, %1723 ], [ %2499, %2565 ], [ %2499, %2563 ], [ %2499, %2531 ], [ %2499, %2516 ], [ %1730, %1736 ]
  %2585 = phi float [ %2500, %2494 ], [ %1731, %2032 ], [ %1731, %1723 ], [ %2500, %2565 ], [ %2500, %2563 ], [ %2500, %2531 ], [ %2500, %2516 ], [ %1731, %1736 ]
  %2586 = phi float [ %2501, %2494 ], [ %1732, %2032 ], [ %1732, %1723 ], [ %2501, %2565 ], [ %2501, %2563 ], [ %2501, %2531 ], [ %2501, %2516 ], [ %1732, %1736 ]
  %2587 = phi float [ %1733, %2494 ], [ %1733, %2032 ], [ %1733, %1723 ], [ %2576, %2565 ], [ %1733, %2563 ], [ %2562, %2531 ], [ %2528, %2516 ], [ %1733, %1736 ]
  %2588 = phi float [ %1734, %2494 ], [ %1734, %2032 ], [ %1734, %1723 ], [ %2573, %2565 ], [ %1734, %2563 ], [ %2539, %2531 ], [ %2525, %2516 ], [ %1734, %1736 ]
  %2589 = phi float [ %2502, %2494 ], [ %1735, %2032 ], [ %1735, %1723 ], [ %2502, %2565 ], [ %2502, %2563 ], [ %2502, %2531 ], [ %2502, %2516 ], [ %1735, %1736 ]
  br i1 %350, label %3431, label %2590

; <label>:2590                                    ; preds = %2577
  %2591 = icmp ult i32 %401, 4
  %2592 = add i32 %30, 72
  %2593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2594 = extractvalue %dx.types.ResRet.i32 %2593, 0
  %2595 = add i32 %30, 76
  %2596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2597 = extractvalue %dx.types.ResRet.i32 %2596, 0
  %2598 = or i32 %2597, %2594
  %2599 = icmp eq i32 %2598, 0
  br i1 %2599, label %3431, label %2600

; <label>:2600                                    ; preds = %2590
  %2601 = and i32 %2594, 262144
  %2602 = icmp ne i32 %2601, 0
  %2603 = select i1 %2602, float %33, float 1.000000e+00
  %2604 = select i1 %2602, float %34, float 0.000000e+00
  %2605 = select i1 %2602, float %35, float 0.000000e+00
  %2606 = select i1 %2602, float %36, float 1.000000e+00
  %2607 = select i1 %2602, float %37, float %54
  %2608 = select i1 %2602, float %38, float %55
  %2609 = add i32 %30, 332
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = lshr i32 %2611, 16
  %2613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2612)  ; LegacyF16ToF32(value)
  %2614 = fmul fast float %2613, 0x3F50624DE0000000
  %2615 = add i32 %30, 136
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = lshr i32 %2617, 16
  %2619 = and i32 %2618, 255
  %2620 = lshr i32 %2617, 24
  %2621 = add i32 %30, 340
  %2622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2621, i32 undef)  ; BufferLoad(srv,index,wot)
  %2623 = extractvalue %dx.types.ResRet.i32 %2622, 0
  %2624 = and i32 %2623, 65535
  %2625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2624)  ; LegacyF16ToF32(value)
  %2626 = lshr i32 %2623, 16
  %2627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2626)  ; LegacyF16ToF32(value)
  %2628 = add i32 %30, 80
  %2629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2628, i32 undef)  ; BufferLoad(srv,index,wot)
  %2630 = extractvalue %dx.types.ResRet.i32 %2629, 0
  %2631 = lshr i32 %2630, 22
  %2632 = shl nuw nsw i32 %2631, 5
  %2633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2632)  ; LegacyF16ToF32(value)
  %2634 = shl i32 %2630, 4
  %2635 = and i32 %2634, 32752
  %2636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2635)  ; LegacyF16ToF32(value)
  %2637 = lshr i32 %2630, 7
  %2638 = and i32 %2637, 32752
  %2639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2638)  ; LegacyF16ToF32(value)
  %2640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2641 = extractvalue %dx.types.CBufRet.f32 %2640, 3
  %2642 = fmul fast float %2641, 1.000000e+03
  %2643 = fmul fast float %340, %2642
  %2644 = call float @dx.op.unary.f32(i32 22, float %2643)  ; Frc(value)
  %2645 = fadd fast float %2644, %330
  %2646 = fmul fast float %341, %2642
  %2647 = call float @dx.op.unary.f32(i32 22, float %2646)  ; Frc(value)
  %2648 = fadd fast float %2647, %332
  %2649 = fmul fast float %2614, %2642
  %2650 = call float @dx.op.unary.f32(i32 22, float %2649)  ; Frc(value)
  %2651 = fmul fast float %2650, 0x401921FB60000000
  %2652 = fadd fast float %2651, %2633
  %2653 = call float @dx.op.unary.f32(i32 13, float %2652)  ; Sin(value)
  %2654 = call float @dx.op.unary.f32(i32 12, float %2652)  ; Cos(value)
  %2655 = fsub fast float -0.000000e+00, %2653
  %2656 = fadd fast float %2607, -5.000000e-01
  %2657 = fadd fast float %2608, -5.000000e-01
  %2658 = fmul fast float %2625, %2656
  %2659 = fmul fast float %2627, %2657
  %2660 = fadd fast float %2658, 5.000000e-01
  %2661 = fadd fast float %2659, 5.000000e-01
  %2662 = fmul fast float %2636, %2660
  %2663 = fmul fast float %2639, %2661
  %2664 = fmul fast float %2654, %2662
  %2665 = call float @dx.op.tertiary.f32(i32 46, float %2655, float %2663, float %2664)  ; FMad(a,b,c)
  %2666 = fmul fast float %2653, %2662
  %2667 = call float @dx.op.tertiary.f32(i32 46, float %2654, float %2663, float %2666)  ; FMad(a,b,c)
  %2668 = fadd fast float %2645, %2665
  %2669 = fadd fast float %2648, %2667
  %2670 = icmp ugt i32 %2619, 1
  %2671 = icmp ugt i32 %2617, 33554431
  %2672 = or i1 %2671, %2670
  br i1 %2672, label %2673, label %2698

; <label>:2673                                    ; preds = %2600
  %2674 = add i32 %30, 276
  %2675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2674, i32 undef)  ; BufferLoad(srv,index,wot)
  %2676 = extractvalue %dx.types.ResRet.i32 %2675, 0
  %2677 = lshr i32 %2676, 16
  %2678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2677)  ; LegacyF16ToF32(value)
  %2679 = fmul fast float %2641, %2678
  %2680 = call float @dx.op.unary.f32(i32 22, float %2679)  ; Frc(value)
  %2681 = mul nuw nsw i32 %2619, %2620
  %2682 = uitofp i32 %2681 to float
  %2683 = fmul fast float %2680, %2682
  %2684 = call float @dx.op.unary.f32(i32 27, float %2683)  ; Round_ni(value)
  %2685 = fptoui float %2684 to i32
  %2686 = urem i32 %2685, %2619
  %2687 = udiv i32 %2685, %2620
  %2688 = call float @dx.op.unary.f32(i32 22, float %2668)  ; Frc(value)
  %2689 = call float @dx.op.unary.f32(i32 22, float %2669)  ; Frc(value)
  %2690 = uitofp i32 %2686 to float
  %2691 = uitofp i32 %2687 to float
  %2692 = fadd fast float %2688, %2690
  %2693 = fadd fast float %2689, %2691
  %2694 = uitofp i32 %2619 to float
  %2695 = uitofp i32 %2620 to float
  %2696 = fdiv fast float %2692, %2694
  %2697 = fdiv fast float %2693, %2695
  br label %2698

; <label>:2698                                    ; preds = %2673, %2600
  %2699 = phi float [ %2696, %2673 ], [ %2668, %2600 ]
  %2700 = phi float [ %2697, %2673 ], [ %2669, %2600 ]
  %2701 = and i32 %2594, 16777216
  %2702 = icmp eq i32 %2701, 0
  br i1 %2702, label %2812, label %2703

; <label>:2703                                    ; preds = %2698
  %2704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2705 = extractvalue %dx.types.CBufRet.f32 %2704, 0
  %2706 = extractvalue %dx.types.CBufRet.f32 %2704, 1
  %2707 = extractvalue %dx.types.CBufRet.f32 %2704, 2
  %2708 = fadd fast float %2705, %129
  %2709 = fadd fast float %2706, %130
  %2710 = fadd fast float %2707, %131
  %2711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2712 = extractvalue %dx.types.CBufRet.f32 %2711, 0
  %2713 = call float @dx.op.unary.f32(i32 7, float %2712)  ; Saturate(value)
  %2714 = icmp eq i32 %31, 65535
  br i1 %2714, label %2809, label %2715

; <label>:2715                                    ; preds = %2703
  %2716 = lshr i32 %31, 1
  %2717 = shl i32 %2716, 2
  %2718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2717, i32 undef)  ; BufferLoad(srv,index,wot)
  %2719 = extractvalue %dx.types.ResRet.i32 %2718, 0
  %2720 = and i32 %31, 1
  %2721 = icmp ne i32 %2720, 0
  %2722 = lshr i32 %2719, 16
  %2723 = and i32 %2719, 65535
  %2724 = select i1 %2721, i32 %2722, i32 %2723
  %2725 = icmp eq i32 %2724, 65535
  br i1 %2725, label %2805, label %2726

; <label>:2726                                    ; preds = %2715
  %2727 = mul nuw nsw i32 %2724, 40
  %2728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2729 = extractvalue %dx.types.ResRet.f32 %2728, 0
  %2730 = extractvalue %dx.types.ResRet.f32 %2728, 1
  %2731 = extractvalue %dx.types.ResRet.f32 %2728, 2
  %2732 = add nuw nsw i32 %2727, 12
  %2733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2734 = extractvalue %dx.types.ResRet.f32 %2733, 0
  %2735 = extractvalue %dx.types.ResRet.f32 %2733, 1
  %2736 = extractvalue %dx.types.ResRet.f32 %2733, 2
  %2737 = add nuw nsw i32 %2727, 24
  %2738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2739 = extractvalue %dx.types.ResRet.f32 %2738, 0
  %2740 = extractvalue %dx.types.ResRet.f32 %2738, 1
  %2741 = extractvalue %dx.types.ResRet.f32 %2738, 2
  %2742 = add nuw nsw i32 %2727, 36
  %2743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.f32 %2743, 0
  %2745 = fsub fast float %2708, %2729
  %2746 = fsub fast float %2709, %2730
  %2747 = fsub fast float %2710, %2731
  %2748 = fmul fast float %2744, %2745
  %2749 = fmul fast float %2744, %2746
  %2750 = fmul fast float %2744, %2747
  %2751 = call float @dx.op.unary.f32(i32 27, float %2748)  ; Round_ni(value)
  %2752 = call float @dx.op.unary.f32(i32 27, float %2749)  ; Round_ni(value)
  %2753 = call float @dx.op.unary.f32(i32 27, float %2750)  ; Round_ni(value)
  %2754 = fadd fast float %2751, 5.000000e-01
  %2755 = fadd fast float %2752, 5.000000e-01
  %2756 = fadd fast float %2753, 5.000000e-01
  %2757 = fmul fast float %2754, %2734
  %2758 = fmul fast float %2755, %2735
  %2759 = fmul fast float %2756, %2736
  %2760 = shl i32 %31, 2
  %2761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2762 = extractvalue %dx.types.ResRet.i32 %2761, 0
  %2763 = add i32 %2762, 0
  %2764 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2763, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2765 = call float @dx.op.unary.f32(i32 22, float %2757)  ; Frc(value)
  %2766 = call float @dx.op.unary.f32(i32 22, float %2758)  ; Frc(value)
  %2767 = call float @dx.op.unary.f32(i32 22, float %2759)  ; Frc(value)
  %2768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2764, %dx.types.Handle %27, float %2765, float %2766, float %2767, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2769 = extractvalue %dx.types.ResRet.f32 %2768, 0
  %2770 = extractvalue %dx.types.ResRet.f32 %2768, 1
  %2771 = extractvalue %dx.types.ResRet.f32 %2768, 2
  %2772 = fmul fast float %2769, 1.023000e+03
  %2773 = fmul fast float %2770, 1.023000e+03
  %2774 = fmul fast float %2771, 1.023000e+03
  %2775 = fadd fast float %2772, 5.000000e-01
  %2776 = fadd fast float %2773, 5.000000e-01
  %2777 = fadd fast float %2774, 5.000000e-01
  %2778 = call float @dx.op.unary.f32(i32 27, float %2775)  ; Round_ni(value)
  %2779 = call float @dx.op.unary.f32(i32 27, float %2776)  ; Round_ni(value)
  %2780 = call float @dx.op.unary.f32(i32 27, float %2777)  ; Round_ni(value)
  %2781 = fsub fast float %2748, %2751
  %2782 = fsub fast float %2749, %2752
  %2783 = fsub fast float %2750, %2753
  %2784 = fmul fast float %2781, 7.500000e-01
  %2785 = fmul fast float %2782, 7.500000e-01
  %2786 = fmul fast float %2783, 7.500000e-01
  %2787 = fadd fast float %2751, 1.250000e-01
  %2788 = fadd fast float %2787, %2784
  %2789 = fadd fast float %2788, %2778
  %2790 = fadd fast float %2752, 1.250000e-01
  %2791 = fadd fast float %2790, %2785
  %2792 = fadd fast float %2791, %2779
  %2793 = fadd fast float %2753, 1.250000e-01
  %2794 = fadd fast float %2793, %2786
  %2795 = fadd fast float %2794, %2780
  %2796 = fmul fast float %2789, %2739
  %2797 = fmul fast float %2792, %2740
  %2798 = fmul fast float %2795, %2741
  %2799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2800 = extractvalue %dx.types.ResRet.i32 %2799, 0
  %2801 = add i32 %2800, 0
  %2802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2801, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2802, %dx.types.Handle %25, float %2796, float %2797, float %2798, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2804 = extractvalue %dx.types.ResRet.f32 %2803, 0
  br label %2805

; <label>:2805                                    ; preds = %2726, %2715
  %2806 = phi float [ %2804, %2726 ], [ -1.000000e+00, %2715 ]
  %2807 = fadd fast float %2806, %2713
  %2808 = call float @dx.op.unary.f32(i32 7, float %2807)  ; Saturate(value)
  br label %2809

; <label>:2809                                    ; preds = %2805, %2703
  %2810 = phi float [ %2808, %2805 ], [ %2713, %2703 ]
  %2811 = fmul fast float %2810, %396
  br label %2812

; <label>:2812                                    ; preds = %2809, %2698
  %2813 = phi float [ %2811, %2809 ], [ %396, %2698 ]
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = and i32 %2815, 256
  %2817 = icmp eq i32 %2816, 0
  br i1 %2817, label %2864, label %2818

; <label>:2818                                    ; preds = %2812
  %2819 = add i32 %30, 484
  %2820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %2821 = extractvalue %dx.types.ResRet.i32 %2820, 0
  %2822 = add i32 %2821, 0
  %2823 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2822, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2824 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2823, %dx.types.Handle %63, float %2699, float %2700, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2825 = extractvalue %dx.types.ResRet.f32 %2824, 0
  %2826 = add i32 %30, 148
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = shl i32 %2828, 4
  %2830 = and i32 %2829, 32752
  %2831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2830)  ; LegacyF16ToF32(value)
  %2832 = lshr i32 %2828, 7
  %2833 = and i32 %2832, 32752
  %2834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2833)  ; LegacyF16ToF32(value)
  %2835 = fsub fast float 1.000000e+00, %2813
  %2836 = call float @dx.op.binary.f32(i32 35, float %2835, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2837 = bitcast float %2813 to i32
  %2838 = sitofp i32 %2837 to float
  %2839 = fadd fast float %2838, 0xC1CFBF8940000000
  %2840 = fmul fast float %2834, %2839
  %2841 = fadd fast float %2840, 0x41CFBF8940000000
  %2842 = fptosi float %2841 to i32
  %2843 = bitcast i32 %2842 to float
  %2844 = bitcast float %2836 to i32
  %2845 = sitofp i32 %2844 to float
  %2846 = fadd fast float %2845, 0xC1CFBF8940000000
  %2847 = fmul fast float %2846, %2834
  %2848 = fadd fast float %2847, 0x41CFBF8940000000
  %2849 = fptosi float %2848 to i32
  %2850 = bitcast i32 %2849 to float
  %2851 = fmul fast float %2843, %2831
  %2852 = fmul fast float %2850, %2831
  %2853 = fsub fast float %2836, %2851
  %2854 = fadd fast float %2852, %2836
  %2855 = call float @dx.op.unary.f32(i32 7, float %2853)  ; Saturate(value)
  %2856 = call float @dx.op.unary.f32(i32 7, float %2854)  ; Saturate(value)
  %2857 = fsub fast float %2825, %2855
  %2858 = fsub fast float %2856, %2855
  %2859 = bitcast float %2858 to i32
  %2860 = sub nsw i32 2129859010, %2859
  %2861 = bitcast i32 %2860 to float
  %2862 = fmul fast float %2861, %2857
  %2863 = call float @dx.op.unary.f32(i32 7, float %2862)  ; Saturate(value)
  br label %2864

; <label>:2864                                    ; preds = %2818, %2812
  %2865 = phi float [ %2863, %2818 ], [ %2813, %2812 ]
  %2866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.i32 %2866, 0
  %2868 = and i32 %2867, 128
  %2869 = icmp eq i32 %2868, 0
  br i1 %2869, label %2886, label %2870

; <label>:2870                                    ; preds = %2864
  %2871 = add i32 %30, 468
  %2872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2871, i32 undef)  ; BufferLoad(srv,index,wot)
  %2873 = extractvalue %dx.types.ResRet.i32 %2872, 0
  %2874 = add i32 %2873, 0
  %2875 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2874, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2876 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2875, %dx.types.Handle %63, float %2699, float %2700, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2877 = extractvalue %dx.types.ResRet.f32 %2876, 0
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = and i32 %2879, 524288
  %2881 = icmp ne i32 %2880, 0
  %2882 = fcmp fast ogt float %2877, 0x3FE0101020000000
  %2883 = select i1 %2882, float 1.000000e+00, float 0.000000e+00
  %2884 = select i1 %2881, float %2883, float %2877
  %2885 = fmul fast float %2884, %2865
  br label %2886

; <label>:2886                                    ; preds = %2870, %2864
  %2887 = phi float [ %2885, %2870 ], [ %2865, %2864 ]
  %2888 = fcmp fast ult float %2887, 0x3F70101020000000
  br i1 %2888, label %3431, label %2889

; <label>:2889                                    ; preds = %2886
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = and i32 %2891, 16
  %2893 = icmp eq i32 %2892, 0
  br i1 %2893, label %3092, label %2894

; <label>:2894                                    ; preds = %2889
  %2895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2896 = extractvalue %dx.types.ResRet.i32 %2895, 0
  %2897 = add i32 %30, 420
  %2898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2897, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.i32 %2898, 0
  %2900 = add i32 %2899, 0
  %2901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2900, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2902 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2901, %dx.types.Handle %62, float %2699, float %2700, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2903 = extractvalue %dx.types.ResRet.f32 %2902, 0
  %2904 = extractvalue %dx.types.ResRet.f32 %2902, 1
  %2905 = extractvalue %dx.types.ResRet.f32 %2902, 2
  %2906 = extractvalue %dx.types.ResRet.f32 %2902, 3
  %2907 = and i32 %2896, 255
  %2908 = uitofp i32 %2907 to float
  %2909 = lshr i32 %2896, 8
  %2910 = and i32 %2909, 255
  %2911 = uitofp i32 %2910 to float
  %2912 = fmul fast float %2906, %2908
  %2913 = fadd fast float %2912, %2911
  %2914 = fmul fast float %2913, 0x3F70101000000000
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = and i32 %2916, 512
  %2918 = icmp eq i32 %2917, 0
  br i1 %2918, label %2927, label %2919

; <label>:2919                                    ; preds = %2894
  %2920 = add i32 %30, 504
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2920, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = add i32 %2922, 0
  %2924 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2923, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2925 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2924, %dx.types.Handle %63, float %2699, float %2700, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2926 = extractvalue %dx.types.ResRet.f32 %2925, 0
  br label %2927

; <label>:2927                                    ; preds = %2919, %2894
  %2928 = phi float [ %2926, %2919 ], [ 1.000000e+00, %2894 ]
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = and i32 %2930, 33554432
  %2932 = icmp eq i32 %2931, 0
  br i1 %2932, label %3039, label %2933

; <label>:2933                                    ; preds = %2927
  %2934 = add i32 %30, 272
  %2935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = and i32 %2936, 65535
  %2938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2937)  ; LegacyF16ToF32(value)
  %2939 = lshr i32 %2936, 16
  %2940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2939)  ; LegacyF16ToF32(value)
  %2941 = add i32 %30, 276
  %2942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2941, i32 undef)  ; BufferLoad(srv,index,wot)
  %2943 = extractvalue %dx.types.ResRet.i32 %2942, 0
  %2944 = and i32 %2943, 65535
  %2945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2944)  ; LegacyF16ToF32(value)
  %2946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.i32 %2946, 0
  %2948 = lshr i32 %2947, 24
  %2949 = uitofp i32 %2948 to float
  %2950 = fmul fast float %2949, 0x3F70101020000000
  %2951 = and i32 %2947, 255
  %2952 = uitofp i32 %2951 to float
  %2953 = fmul fast float %2952, 0x3F70101020000000
  %2954 = lshr i32 %2947, 8
  %2955 = and i32 %2954, 255
  %2956 = uitofp i32 %2955 to float
  %2957 = fmul fast float %2956, 0x3F70101020000000
  %2958 = lshr i32 %2947, 16
  %2959 = and i32 %2958, 255
  %2960 = uitofp i32 %2959 to float
  %2961 = fmul fast float %2960, 0x3F70101020000000
  %2962 = add i32 %30, 268
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2962, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = lshr i32 %2964, 24
  %2966 = uitofp i32 %2965 to float
  %2967 = fmul fast float %2966, 0x3F70101020000000
  %2968 = and i32 %2964, 255
  %2969 = uitofp i32 %2968 to float
  %2970 = fmul fast float %2969, 0x3F70101020000000
  %2971 = lshr i32 %2964, 8
  %2972 = and i32 %2971, 255
  %2973 = uitofp i32 %2972 to float
  %2974 = fmul fast float %2973, 0x3F70101020000000
  %2975 = lshr i32 %2964, 16
  %2976 = and i32 %2975, 255
  %2977 = uitofp i32 %2976 to float
  %2978 = fmul fast float %2977, 0x3F70101020000000
  %2979 = bitcast float %2903 to i32
  %2980 = ashr i32 %2979, 1
  %2981 = sub nsw i32 1597463174, %2980
  %2982 = bitcast i32 %2981 to float
  %2983 = fmul fast float %2903, 5.000000e-01
  %2984 = fmul fast float %2982, %2982
  %2985 = fmul fast float %2984, %2983
  %2986 = fsub fast float 1.500000e+00, %2985
  %2987 = fmul fast float %2982, %2903
  %2988 = fmul fast float %2987, %2986
  %2989 = bitcast float %2904 to i32
  %2990 = ashr i32 %2989, 1
  %2991 = sub nsw i32 1597463174, %2990
  %2992 = bitcast i32 %2991 to float
  %2993 = fmul fast float %2904, 5.000000e-01
  %2994 = fmul fast float %2992, %2992
  %2995 = fmul fast float %2994, %2993
  %2996 = fsub fast float 1.500000e+00, %2995
  %2997 = fmul fast float %2992, %2904
  %2998 = fmul fast float %2997, %2996
  %2999 = bitcast float %2905 to i32
  %3000 = ashr i32 %2999, 1
  %3001 = sub nsw i32 1597463174, %3000
  %3002 = bitcast i32 %3001 to float
  %3003 = fmul fast float %2905, 5.000000e-01
  %3004 = fmul fast float %3002, %3002
  %3005 = fmul fast float %3004, %3003
  %3006 = fsub fast float 1.500000e+00, %3005
  %3007 = fmul fast float %3002, %2905
  %3008 = fmul fast float %3007, %3006
  %3009 = fsub fast float %2988, %2970
  %3010 = fsub fast float %2998, %2974
  %3011 = fsub fast float %3008, %2978
  %3012 = fmul fast float %3009, %2938
  %3013 = fmul fast float %3010, %2940
  %3014 = fmul fast float %3011, %2945
  %3015 = fadd fast float %3012, %2953
  %3016 = fadd fast float %3013, %2957
  %3017 = fadd fast float %3014, %2961
  %3018 = call float @dx.op.unary.f32(i32 7, float %3015)  ; Saturate(value)
  %3019 = call float @dx.op.unary.f32(i32 7, float %3016)  ; Saturate(value)
  %3020 = call float @dx.op.unary.f32(i32 7, float %3017)  ; Saturate(value)
  %3021 = fmul fast float %3018, %3018
  %3022 = fmul fast float %3019, %3019
  %3023 = fmul fast float %3020, %3020
  %3024 = fsub fast float %3021, %2903
  %3025 = fsub fast float %3022, %2904
  %3026 = fsub fast float %3023, %2905
  %3027 = fmul fast float %3024, %2928
  %3028 = fmul fast float %3025, %2928
  %3029 = fmul fast float %3026, %2928
  %3030 = fadd fast float %3027, %2903
  %3031 = fadd fast float %3028, %2904
  %3032 = fadd fast float %3029, %2905
  %3033 = fadd fast float %2950, %2914
  %3034 = fsub fast float %3033, %2967
  %3035 = call float @dx.op.unary.f32(i32 7, float %3034)  ; Saturate(value)
  %3036 = fsub fast float %3035, %2914
  %3037 = fmul fast float %3036, %2928
  %3038 = fadd fast float %3037, %2914
  br label %3092

; <label>:3039                                    ; preds = %2927
  %3040 = and i32 %2930, 134217728
  %3041 = icmp eq i32 %3040, 0
  br i1 %3041, label %3076, label %3042

; <label>:3042                                    ; preds = %3039
  %3043 = call float @dx.op.unary.f32(i32 24, float %317)  ; Sqrt(value)
  %3044 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %3045 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %3046 = fadd fast float %3043, -5.000000e-01
  %3047 = fadd fast float %3044, -5.000000e-01
  %3048 = fadd fast float %3045, -5.000000e-01
  %3049 = fmul fast float %3046, %2928
  %3050 = fmul fast float %3047, %2928
  %3051 = fmul fast float %3048, %2928
  %3052 = fadd fast float %3049, 5.000000e-01
  %3053 = fadd fast float %3050, 5.000000e-01
  %3054 = fadd fast float %3051, 5.000000e-01
  %3055 = call float @dx.op.unary.f32(i32 24, float %2903)  ; Sqrt(value)
  %3056 = call float @dx.op.unary.f32(i32 24, float %2904)  ; Sqrt(value)
  %3057 = call float @dx.op.unary.f32(i32 24, float %2905)  ; Sqrt(value)
  %3058 = fmul fast float %3052, 2.000000e+00
  %3059 = fsub fast float 1.000000e+00, %3058
  %3060 = fmul fast float %3059, %3055
  %3061 = fadd fast float %3060, %3058
  %3062 = fmul fast float %3061, %3055
  %3063 = fmul fast float %3053, 2.000000e+00
  %3064 = fsub fast float 1.000000e+00, %3063
  %3065 = fmul fast float %3064, %3056
  %3066 = fadd fast float %3065, %3063
  %3067 = fmul fast float %3066, %3056
  %3068 = fmul fast float %3054, 2.000000e+00
  %3069 = fsub fast float 1.000000e+00, %3068
  %3070 = fmul fast float %3069, %3057
  %3071 = fadd fast float %3070, %3068
  %3072 = fmul fast float %3071, %3057
  %3073 = fmul fast float %3062, %3062
  %3074 = fmul fast float %3067, %3067
  %3075 = fmul fast float %3072, %3072
  br label %3092

; <label>:3076                                    ; preds = %3039
  %3077 = fmul fast float %317, %317
  %3078 = fmul fast float %321, %321
  %3079 = fmul fast float %325, %325
  %3080 = fadd fast float %3077, -1.000000e+00
  %3081 = fadd fast float %3078, -1.000000e+00
  %3082 = fadd fast float %3079, -1.000000e+00
  %3083 = fmul fast float %2928, %3080
  %3084 = fmul fast float %2928, %3081
  %3085 = fmul fast float %2928, %3082
  %3086 = fadd fast float %3083, 1.000000e+00
  %3087 = fadd fast float %3084, 1.000000e+00
  %3088 = fadd fast float %3085, 1.000000e+00
  %3089 = fmul fast float %3086, %2903
  %3090 = fmul fast float %3087, %2904
  %3091 = fmul fast float %3088, %2905
  br label %3092

; <label>:3092                                    ; preds = %3076, %3042, %2933, %2889
  %3093 = phi float [ %3038, %2933 ], [ %2914, %3042 ], [ %2914, %3076 ], [ 0x3FA23C0BE0000000, %2889 ]
  %3094 = phi float [ %3030, %2933 ], [ %3073, %3042 ], [ %3089, %3076 ], [ 1.000000e+00, %2889 ]
  %3095 = phi float [ %3031, %2933 ], [ %3074, %3042 ], [ %3090, %3076 ], [ 1.000000e+00, %2889 ]
  %3096 = phi float [ %3032, %2933 ], [ %3075, %3042 ], [ %3091, %3076 ], [ 1.000000e+00, %2889 ]
  %3097 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3098 = extractvalue %dx.types.CBufRet.i32 %3097, 1
  %3099 = and i32 %3098, 1
  %3100 = icmp ne i32 %3099, 0
  %3101 = add i32 %30, 356
  %3102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3103 = extractvalue %dx.types.ResRet.i32 %3102, 0
  %3104 = and i32 %3103, 32
  %3105 = icmp ne i32 %3104, 0
  %3106 = and i1 %3100, %3105
  %3107 = select i1 %3106, float 1.000000e+00, float %3094
  %3108 = select i1 %3106, float 0x3FD3333340000000, float %3095
  %3109 = select i1 %3106, float 0x3FD3333340000000, float %3096
  %3110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3111 = extractvalue %dx.types.ResRet.i32 %3110, 0
  %3112 = and i32 %3111, 32
  %3113 = icmp eq i32 %3112, 0
  br i1 %3113, label %3186, label %3114

; <label>:3114                                    ; preds = %3092
  %3115 = add i32 %30, 140
  %3116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.i32 %3116, 0
  %3118 = add i32 %30, 436
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3118, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = add i32 %3120, 0
  %3122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3121, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3123 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3122, %dx.types.Handle %62, float %2699, float %2700, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3124 = extractvalue %dx.types.ResRet.f32 %3123, 0
  %3125 = extractvalue %dx.types.ResRet.f32 %3123, 1
  %3126 = extractvalue %dx.types.ResRet.f32 %3123, 2
  %3127 = extractvalue %dx.types.ResRet.f32 %3123, 3
  %3128 = and i32 %3117, 255
  %3129 = uitofp i32 %3128 to float
  %3130 = lshr i32 %3117, 8
  %3131 = and i32 %3130, 255
  %3132 = uitofp i32 %3131 to float
  %3133 = lshr i32 %3117, 16
  %3134 = and i32 %3133, 255
  %3135 = uitofp i32 %3134 to float
  %3136 = fmul fast float %3135, 0x3F70101000000000
  %3137 = fmul fast float %3124, %3129
  %3138 = fadd fast float %3137, %3132
  %3139 = fmul fast float %3138, 0x3F70101000000000
  %3140 = fadd fast float %3125, -5.000000e-01
  %3141 = fadd fast float %3127, -5.000000e-01
  %3142 = fmul fast float %3140, %3136
  %3143 = fmul fast float %3141, %3136
  %3144 = fadd fast float %3142, 5.000000e-01
  %3145 = fadd fast float %3143, 5.000000e-01
  %3146 = fmul fast float %3144, 2.000000e+00
  %3147 = fadd fast float %3146, -1.000000e+00
  %3148 = fmul fast float %3145, 2.000000e+00
  %3149 = fadd fast float %3148, -1.000000e+00
  %3150 = fadd fast float %3147, %3149
  %3151 = fmul fast float %3150, 5.000000e-01
  %3152 = fsub fast float %3147, %3149
  %3153 = fmul fast float %3152, 5.000000e-01
  %3154 = call float @dx.op.unary.f32(i32 6, float %3151)  ; FAbs(value)
  %3155 = fsub fast float 1.000000e+00, %3154
  %3156 = call float @dx.op.unary.f32(i32 6, float %3153)  ; FAbs(value)
  %3157 = fsub fast float %3155, %3156
  %3158 = call float @dx.op.dot3.f32(i32 55, float %3151, float %3153, float %3157, float %3151, float %3153, float %3157)  ; Dot3(ax,ay,az,bx,by,bz)
  %3159 = call float @dx.op.unary.f32(i32 25, float %3158)  ; Rsqrt(value)
  %3160 = fmul fast float %3151, %3159
  %3161 = fmul fast float %3153, %3159
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = and i32 %3163, 67108864
  %3165 = icmp eq i32 %3164, 0
  br i1 %3165, label %3182, label %3166

; <label>:3166                                    ; preds = %3114
  %3167 = add i32 %30, 328
  %3168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3167, i32 undef)  ; BufferLoad(srv,index,wot)
  %3169 = extractvalue %dx.types.ResRet.i32 %3168, 0
  %3170 = and i32 %3169, 65535
  %3171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3170)  ; LegacyF16ToF32(value)
  %3172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %3173 = extractvalue %dx.types.ResRet.i32 %3172, 0
  %3174 = and i32 %3173, 65535
  %3175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3174)  ; LegacyF16ToF32(value)
  %3176 = lshr i32 %3169, 16
  %3177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3176)  ; LegacyF16ToF32(value)
  %3178 = fsub fast float %3139, %3177
  %3179 = fmul fast float %3178, %3171
  %3180 = fadd fast float %3179, %3175
  %3181 = call float @dx.op.unary.f32(i32 7, float %3180)  ; Saturate(value)
  br label %3182

; <label>:3182                                    ; preds = %3166, %3114
  %3183 = phi float [ %3181, %3166 ], [ %3139, %3114 ]
  %3184 = call float @dx.op.dot2.f32(i32 54, float %3160, float %3161, float %2603, float %2604)  ; Dot2(ax,ay,bx,by)
  %3185 = call float @dx.op.dot2.f32(i32 54, float %3160, float %3161, float %2605, float %2606)  ; Dot2(ax,ay,bx,by)
  br label %3186

; <label>:3186                                    ; preds = %3182, %3092
  %3187 = phi float [ %3183, %3182 ], [ 0x3FD6666660000000, %3092 ]
  %3188 = phi float [ %3184, %3182 ], [ 0.000000e+00, %3092 ]
  %3189 = phi float [ %3185, %3182 ], [ 0.000000e+00, %3092 ]
  %3190 = phi float [ %3126, %3182 ], [ 1.000000e+00, %3092 ]
  %3191 = add i32 %30, 208
  %3192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3191, i32 undef)  ; BufferLoad(srv,index,wot)
  %3193 = extractvalue %dx.types.ResRet.i32 %3192, 0
  %3194 = lshr i32 %3193, 22
  %3195 = shl nuw nsw i32 %3194, 5
  %3196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3195)  ; LegacyF16ToF32(value)
  %3197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.i32 %3197, 0
  %3199 = and i32 %3198, 64
  %3200 = icmp eq i32 %3199, 0
  br i1 %3200, label %3234, label %3201

; <label>:3201                                    ; preds = %3186
  %3202 = add i32 %30, 452
  %3203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3202, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.i32 %3203, 0
  %3205 = add i32 %3204, 0
  %3206 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3205, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = and i32 %3208, 131072
  %3210 = icmp eq i32 %3209, 0
  %3211 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3206, %dx.types.Handle %62, float %2699, float %2700, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3212 = extractvalue %dx.types.ResRet.f32 %3211, 0
  %3213 = extractvalue %dx.types.ResRet.f32 %3211, 1
  %3214 = extractvalue %dx.types.ResRet.f32 %3211, 2
  %3215 = fmul fast float %3212, %305
  %3216 = fmul fast float %3213, %308
  %3217 = fmul fast float %3214, %311
  br i1 %3210, label %3224, label %3218

; <label>:3218                                    ; preds = %3201
  %3219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3220 = extractvalue %dx.types.CBufRet.f32 %3219, 0
  %3221 = fmul fast float %3220, %3215
  %3222 = fmul fast float %3220, %3216
  %3223 = fmul fast float %3220, %3217
  br label %3224

; <label>:3224                                    ; preds = %3218, %3201
  %3225 = phi float [ %3221, %3218 ], [ %3215, %3201 ]
  %3226 = phi float [ %3222, %3218 ], [ %3216, %3201 ]
  %3227 = phi float [ %3223, %3218 ], [ %3217, %3201 ]
  %3228 = fmul fast float %3225, %3196
  %3229 = select i1 %173, float %3228, float %3225
  %3230 = call float @dx.op.dot3.f32(i32 55, float %3229, float %3226, float %3227, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3231 = select i1 %173, float 0.000000e+00, float %3225
  %3232 = select i1 %173, float %3230, float %3226
  %3233 = select i1 %173, float 0.000000e+00, float %3227
  br label %3234

; <label>:3234                                    ; preds = %3224, %3186
  %3235 = phi float [ %3231, %3224 ], [ 0.000000e+00, %3186 ]
  %3236 = phi float [ %3232, %3224 ], [ 0.000000e+00, %3186 ]
  %3237 = phi float [ %3233, %3224 ], [ 0.000000e+00, %3186 ]
  %3238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3239 = extractvalue %dx.types.ResRet.i32 %3238, 0
  %3240 = add i32 %30, 144
  %3241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3240, i32 undef)  ; BufferLoad(srv,index,wot)
  %3242 = extractvalue %dx.types.ResRet.i32 %3241, 0
  %3243 = and i32 %3242, 255
  %3244 = uitofp i32 %3243 to float
  %3245 = lshr i32 %3242, 8
  %3246 = and i32 %3245, 255
  %3247 = uitofp i32 %3246 to float
  %3248 = call float @dx.op.dot3.f32(i32 55, float %3107, float %3108, float %3109, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3249 = fmul fast float %3247, %3248
  %3250 = fadd fast float %3249, %3244
  %3251 = fmul fast float %3250, 0x3F70101020000000
  %3252 = call float @dx.op.unary.f32(i32 7, float %3251)  ; Saturate(value)
  br i1 %2591, label %3253, label %3261

; <label>:3253                                    ; preds = %3234
  %3254 = fsub fast float 1.000000e+00, %2887
  %3255 = fmul fast float %3254, %2580
  %3256 = fmul fast float %3254, %2581
  %3257 = fmul fast float %3254, %2582
  %3258 = fmul fast float %3254, %2583
  %3259 = fmul fast float %3254, %2584
  %3260 = fmul fast float %3254, %2585
  br label %3261

; <label>:3261                                    ; preds = %3253, %3234
  %3262 = phi float [ %3255, %3253 ], [ %2580, %3234 ]
  %3263 = phi float [ %3256, %3253 ], [ %2581, %3234 ]
  %3264 = phi float [ %3257, %3253 ], [ %2582, %3234 ]
  %3265 = phi float [ %3258, %3253 ], [ %2583, %3234 ]
  %3266 = phi float [ %3259, %3253 ], [ %2584, %3234 ]
  %3267 = phi float [ %3260, %3253 ], [ %2585, %3234 ]
  %3268 = and i32 %3239, 3
  %3269 = icmp eq i32 %3268, 3
  br i1 %3269, label %3348, label %3270

; <label>:3270                                    ; preds = %3261
  %3271 = and i32 %3239, 16
  %3272 = icmp ne i32 %3271, 0
  %3273 = select i1 %3272, float %2887, float 0.000000e+00
  %3274 = icmp eq i32 %3268, 0
  br i1 %3274, label %3275, label %3303

; <label>:3275                                    ; preds = %3270
  %3276 = and i32 %3239, 64
  %3277 = icmp ne i32 %3276, 0
  %3278 = select i1 %3277, float %2887, float 0.000000e+00
  %3279 = fsub fast float %3107, %3262
  %3280 = fsub fast float %3108, %3263
  %3281 = fsub fast float %3109, %3264
  %3282 = fmul fast float %3273, %3279
  %3283 = fmul fast float %3273, %3280
  %3284 = fmul fast float %3273, %3281
  %3285 = fadd fast float %3282, %3262
  %3286 = fadd fast float %3283, %3263
  %3287 = fadd fast float %3284, %3264
  %3288 = fsub fast float %3093, %2586
  %3289 = fmul fast float %3273, %3288
  %3290 = fadd fast float %3289, %2586
  %3291 = fsub fast float %3235, %3265
  %3292 = fsub fast float %3236, %3266
  %3293 = fsub fast float %3237, %3267
  %3294 = fmul fast float %3278, %3291
  %3295 = fmul fast float %3278, %3292
  %3296 = fmul fast float %3278, %3293
  %3297 = fadd fast float %3294, %3265
  %3298 = fadd fast float %3295, %3266
  %3299 = fadd fast float %3296, %3267
  %3300 = fsub fast float %3252, %2589
  %3301 = fmul fast float %3273, %3300
  %3302 = fadd fast float %3301, %2589
  br label %3348

; <label>:3303                                    ; preds = %3270
  %3304 = icmp eq i32 %3268, 1
  br i1 %3304, label %3305, label %3318

; <label>:3305                                    ; preds = %3303
  %3306 = fadd fast float %3107, -1.000000e+00
  %3307 = fadd fast float %3108, -1.000000e+00
  %3308 = fadd fast float %3109, -1.000000e+00
  %3309 = fmul fast float %3273, %3306
  %3310 = fmul fast float %3273, %3307
  %3311 = fmul fast float %3273, %3308
  %3312 = fadd fast float %3309, 1.000000e+00
  %3313 = fadd fast float %3310, 1.000000e+00
  %3314 = fadd fast float %3311, 1.000000e+00
  %3315 = fmul fast float %3312, %3262
  %3316 = fmul fast float %3313, %3263
  %3317 = fmul fast float %3314, %3264
  br label %3348

; <label>:3318                                    ; preds = %3303
  %3319 = icmp eq i32 %3268, 2
  br i1 %3319, label %3320, label %3348

; <label>:3320                                    ; preds = %3318
  %3321 = call float @dx.op.unary.f32(i32 24, float %3107)  ; Sqrt(value)
  %3322 = call float @dx.op.unary.f32(i32 24, float %3108)  ; Sqrt(value)
  %3323 = call float @dx.op.unary.f32(i32 24, float %3109)  ; Sqrt(value)
  %3324 = fadd fast float %3321, -5.000000e-01
  %3325 = fadd fast float %3322, -5.000000e-01
  %3326 = fadd fast float %3323, -5.000000e-01
  %3327 = fmul fast float %3324, %3273
  %3328 = fmul fast float %3325, %3273
  %3329 = fmul fast float %3326, %3273
  %3330 = fadd fast float %3327, 5.000000e-01
  %3331 = fadd fast float %3328, 5.000000e-01
  %3332 = fadd fast float %3329, 5.000000e-01
  %3333 = fmul fast float %3330, 2.000000e+00
  %3334 = fsub fast float 1.000000e+00, %3333
  %3335 = fmul fast float %3334, %3262
  %3336 = fadd fast float %3335, %3333
  %3337 = fmul fast float %3336, %3262
  %3338 = fmul fast float %3331, 2.000000e+00
  %3339 = fsub fast float 1.000000e+00, %3338
  %3340 = fmul fast float %3339, %3263
  %3341 = fadd fast float %3340, %3338
  %3342 = fmul fast float %3341, %3263
  %3343 = fmul fast float %3332, 2.000000e+00
  %3344 = fsub fast float 1.000000e+00, %3343
  %3345 = fmul fast float %3344, %3264
  %3346 = fadd fast float %3345, %3343
  %3347 = fmul fast float %3346, %3264
  br label %3348

; <label>:3348                                    ; preds = %3320, %3318, %3305, %3275, %3261
  %3349 = phi float [ %3262, %3261 ], [ %3337, %3320 ], [ %3262, %3318 ], [ %3315, %3305 ], [ %3285, %3275 ]
  %3350 = phi float [ %3263, %3261 ], [ %3342, %3320 ], [ %3263, %3318 ], [ %3316, %3305 ], [ %3286, %3275 ]
  %3351 = phi float [ %3264, %3261 ], [ %3347, %3320 ], [ %3264, %3318 ], [ %3317, %3305 ], [ %3287, %3275 ]
  %3352 = phi float [ %3265, %3261 ], [ %3265, %3320 ], [ %3265, %3318 ], [ %3265, %3305 ], [ %3297, %3275 ]
  %3353 = phi float [ %3266, %3261 ], [ %3266, %3320 ], [ %3266, %3318 ], [ %3266, %3305 ], [ %3298, %3275 ]
  %3354 = phi float [ %3267, %3261 ], [ %3267, %3320 ], [ %3267, %3318 ], [ %3267, %3305 ], [ %3299, %3275 ]
  %3355 = phi float [ %2586, %3261 ], [ %2586, %3320 ], [ %2586, %3318 ], [ %2586, %3305 ], [ %3290, %3275 ]
  %3356 = phi float [ %2589, %3261 ], [ %2589, %3320 ], [ %2589, %3318 ], [ %2589, %3305 ], [ %3302, %3275 ]
  %3357 = and i32 %3239, 12
  %3358 = icmp eq i32 %3357, 12
  br i1 %3358, label %3431, label %3359

; <label>:3359                                    ; preds = %3348
  %3360 = and i32 %3239, 2097184
  %3361 = icmp eq i32 %3360, 2097184
  %3362 = select i1 %3361, float %2887, float 0.000000e+00
  %3363 = and i32 %3239, 4194336
  %3364 = icmp eq i32 %3363, 4194336
  %3365 = select i1 %3364, float %2887, float 0.000000e+00
  %3366 = and i32 %3239, 8388640
  %3367 = icmp eq i32 %3366, 8388640
  %3368 = select i1 %3367, float %2887, float 0.000000e+00
  %3369 = icmp eq i32 %3357, 0
  br i1 %3369, label %3370, label %3383

; <label>:3370                                    ; preds = %3359
  %3371 = fsub fast float %3188, %2578
  %3372 = fsub fast float %3189, %2579
  %3373 = fmul fast float %3362, %3371
  %3374 = fmul fast float %3362, %3372
  %3375 = fadd fast float %3373, %2578
  %3376 = fadd fast float %3374, %2579
  %3377 = fsub fast float %3190, %2588
  %3378 = fmul fast float %3365, %3377
  %3379 = fadd fast float %3378, %2588
  %3380 = fsub fast float %3187, %2587
  %3381 = fmul fast float %3368, %3380
  %3382 = fadd fast float %3381, %2587
  br label %3431

; <label>:3383                                    ; preds = %3359
  %3384 = icmp eq i32 %3357, 4
  br i1 %3384, label %3385, label %3417

; <label>:3385                                    ; preds = %3383
  %3386 = fmul fast float %3362, %3188
  %3387 = fmul fast float %3362, %3189
  %3388 = fadd fast float %3386, %2578
  %3389 = fadd fast float %3387, %2579
  %3390 = call float @dx.op.binary.f32(i32 36, float %2588, float %3190)  ; FMin(a,b)
  %3391 = fsub fast float %3390, %2588
  %3392 = fmul fast float %3391, %3365
  %3393 = fadd fast float %3392, %2588
  %3394 = fadd fast float %3187, %2587
  %3395 = fmul fast float %3394, 0x3FF337FAE0000000
  %3396 = fmul fast float %2587, %2587
  %3397 = fmul fast float %3187, %3187
  %3398 = fadd fast float %3397, %3396
  %3399 = fmul fast float %3398, 0x3FE5152B00000000
  %3400 = fmul fast float %2587, 0xBFCC1F85E0000000
  %3401 = fmul fast float %3400, %3187
  %3402 = fadd fast float %3401, 0xBFE1363700000000
  %3403 = fadd fast float %3402, %3395
  %3404 = fsub fast float %3403, %3399
  %3405 = fmul fast float %3394, 0x3FBA6F0D00000000
  %3406 = fmul fast float %3398, 0x3FD0432880000000
  %3407 = fmul fast float %2587, 0xBFEF110800000000
  %3408 = fmul fast float %3407, %3187
  %3409 = fadd fast float %3408, 1.000000e+00
  %3410 = fsub fast float %3409, %3405
  %3411 = fadd fast float %3410, %3406
  %3412 = fdiv fast float %3404, %3411
  %3413 = call float @dx.op.unary.f32(i32 7, float %3412)  ; Saturate(value)
  %3414 = fsub fast float %3413, %2587
  %3415 = fmul fast float %3414, %3368
  %3416 = fadd fast float %3415, %2587
  br label %3431

; <label>:3417                                    ; preds = %3383
  %3418 = icmp eq i32 %3357, 8
  br i1 %3418, label %3419, label %3431

; <label>:3419                                    ; preds = %3417
  %3420 = fmul fast float %3362, %3188
  %3421 = fmul fast float %3362, %3189
  %3422 = fadd fast float %3420, %2578
  %3423 = fadd fast float %3421, %2579
  %3424 = call float @dx.op.binary.f32(i32 36, float %2588, float %3190)  ; FMin(a,b)
  %3425 = fsub fast float %3424, %2588
  %3426 = fmul fast float %3425, %3365
  %3427 = fadd fast float %3426, %2588
  %3428 = fsub fast float %3187, %2587
  %3429 = fmul fast float %3368, %3428
  %3430 = fadd fast float %3429, %2587
  br label %3431

; <label>:3431                                    ; preds = %3419, %3417, %3385, %3370, %3348, %2886, %2590, %2577
  %3432 = phi float [ %2578, %3348 ], [ %2578, %2886 ], [ %2578, %2577 ], [ %2578, %2590 ], [ %3375, %3370 ], [ %3388, %3385 ], [ %2578, %3417 ], [ %3422, %3419 ]
  %3433 = phi float [ %2579, %3348 ], [ %2579, %2886 ], [ %2579, %2577 ], [ %2579, %2590 ], [ %3376, %3370 ], [ %3389, %3385 ], [ %2579, %3417 ], [ %3423, %3419 ]
  %3434 = phi float [ %3349, %3348 ], [ %2580, %2886 ], [ %2580, %2577 ], [ %2580, %2590 ], [ %3349, %3370 ], [ %3349, %3385 ], [ %3349, %3417 ], [ %3349, %3419 ]
  %3435 = phi float [ %3350, %3348 ], [ %2581, %2886 ], [ %2581, %2577 ], [ %2581, %2590 ], [ %3350, %3370 ], [ %3350, %3385 ], [ %3350, %3417 ], [ %3350, %3419 ]
  %3436 = phi float [ %3351, %3348 ], [ %2582, %2886 ], [ %2582, %2577 ], [ %2582, %2590 ], [ %3351, %3370 ], [ %3351, %3385 ], [ %3351, %3417 ], [ %3351, %3419 ]
  %3437 = phi float [ %3352, %3348 ], [ %2583, %2886 ], [ %2583, %2577 ], [ %2583, %2590 ], [ %3352, %3370 ], [ %3352, %3385 ], [ %3352, %3417 ], [ %3352, %3419 ]
  %3438 = phi float [ %3353, %3348 ], [ %2584, %2886 ], [ %2584, %2577 ], [ %2584, %2590 ], [ %3353, %3370 ], [ %3353, %3385 ], [ %3353, %3417 ], [ %3353, %3419 ]
  %3439 = phi float [ %3354, %3348 ], [ %2585, %2886 ], [ %2585, %2577 ], [ %2585, %2590 ], [ %3354, %3370 ], [ %3354, %3385 ], [ %3354, %3417 ], [ %3354, %3419 ]
  %3440 = phi float [ %3355, %3348 ], [ %2586, %2886 ], [ %2586, %2577 ], [ %2586, %2590 ], [ %3355, %3370 ], [ %3355, %3385 ], [ %3355, %3417 ], [ %3355, %3419 ]
  %3441 = phi float [ %2587, %3348 ], [ %2587, %2886 ], [ %2587, %2577 ], [ %2587, %2590 ], [ %3382, %3370 ], [ %3416, %3385 ], [ %2587, %3417 ], [ %3430, %3419 ]
  %3442 = phi float [ %2588, %3348 ], [ %2588, %2886 ], [ %2588, %2577 ], [ %2588, %2590 ], [ %3379, %3370 ], [ %3393, %3385 ], [ %2588, %3417 ], [ %3427, %3419 ]
  %3443 = phi float [ %3356, %3348 ], [ %2589, %2886 ], [ %2589, %2577 ], [ %2589, %2590 ], [ %3356, %3370 ], [ %3356, %3385 ], [ %3356, %3417 ], [ %3356, %3419 ]
  %3444 = add i32 %30, 360
  %3445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3444, i32 undef)  ; BufferLoad(srv,index,wot)
  %3446 = extractvalue %dx.types.ResRet.i32 %3445, 0
  %3447 = extractvalue %dx.types.ResRet.i32 %3445, 1
  %3448 = bitcast i32 %3446 to float
  %3449 = bitcast i32 %3447 to float
  %3450 = fcmp fast oge float %3448, 0.000000e+00
  %3451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3452 = extractvalue %dx.types.CBufRet.f32 %3451, 0
  %3453 = select i1 %3450, float %3448, float %3452
  %3454 = add i32 %30, 488
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3454, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = add i32 %3456, 0
  %3458 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3457, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3459 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3458, %dx.types.Handle %63, float %54, float %55, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3460 = extractvalue %dx.types.ResRet.f32 %3459, 0
  %3461 = fmul fast float %3460, %3449
  %3462 = fadd fast float %3461, %3453
  %3463 = call float @dx.op.dot2.f32(i32 54, float %3432, float %3433, float %3432, float %3433)  ; Dot2(ax,ay,bx,by)
  %3464 = fmul fast float %3463, 0x3FE3333340000000
  %3465 = fsub fast float 1.000000e+00, %3464
  %3466 = call float @dx.op.dot3.f32(i32 55, float %3432, float %3433, float %3465, float %3432, float %3433, float %3465)  ; Dot3(ax,ay,az,bx,by,bz)
  %3467 = call float @dx.op.unary.f32(i32 25, float %3466)  ; Rsqrt(value)
  %3468 = fmul fast float %3467, %3432
  %3469 = fmul fast float %3467, %3433
  %3470 = fmul fast float %3465, %3467
  %3471 = fmul fast float %3470, %73
  %3472 = fmul fast float %3470, %74
  %3473 = fmul fast float %3470, %75
  %3474 = fmul fast float %3468, %47
  %3475 = fmul fast float %3468, %48
  %3476 = fmul fast float %3468, %49
  %3477 = fadd fast float %3471, %3474
  %3478 = fadd fast float %3472, %3475
  %3479 = fadd fast float %3473, %3476
  %3480 = fmul fast float %85, %3469
  %3481 = fmul fast float %86, %3469
  %3482 = fmul fast float %87, %3469
  %3483 = fadd fast float %3477, %3480
  %3484 = fadd fast float %3478, %3481
  %3485 = fadd fast float %3479, %3482
  %3486 = call float @dx.op.dot3.f32(i32 55, float %3483, float %3484, float %3485, float %3483, float %3484, float %3485)  ; Dot3(ax,ay,az,bx,by,bz)
  %3487 = call float @dx.op.unary.f32(i32 25, float %3486)  ; Rsqrt(value)
  %3488 = fmul fast float %3483, %3487
  %3489 = fmul fast float %3484, %3487
  %3490 = fmul fast float %3485, %3487
  %3491 = fadd fast float %3440, 0xBFB99999A0000000
  %3492 = call float @dx.op.unary.f32(i32 7, float %3491)  ; Saturate(value)
  %3493 = fmul fast float %3492, 0x3FF1C71C80000000
  %3494 = call float @dx.op.binary.f32(i32 36, float %3440, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3495 = fsub fast float 1.000000e+00, %3493
  %3496 = call float @dx.op.unary.f32(i32 7, float %3495)  ; Saturate(value)
  %3497 = fmul fast float %3496, %3434
  %3498 = fmul fast float %3496, %3435
  %3499 = fmul fast float %3496, %3436
  %3500 = call float @dx.op.unary.f32(i32 7, float %3497)  ; Saturate(value)
  %3501 = call float @dx.op.unary.f32(i32 7, float %3498)  ; Saturate(value)
  %3502 = call float @dx.op.unary.f32(i32 7, float %3499)  ; Saturate(value)
  %3503 = fmul fast float %3493, %3434
  %3504 = fmul fast float %3493, %3435
  %3505 = fmul fast float %3493, %3436
  %3506 = fadd fast float %3503, %3494
  %3507 = fadd fast float %3504, %3494
  %3508 = fadd fast float %3505, %3494
  %3509 = call float @dx.op.unary.f32(i32 7, float %3506)  ; Saturate(value)
  %3510 = call float @dx.op.unary.f32(i32 7, float %3507)  ; Saturate(value)
  %3511 = call float @dx.op.unary.f32(i32 7, float %3508)  ; Saturate(value)
  %3512 = call float @dx.op.unary.f32(i32 7, float %3441)  ; Saturate(value)
  %3513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3514 = extractvalue %dx.types.CBufRet.i32 %3513, 3
  %3515 = and i32 %3514, 8
  %3516 = icmp ne i32 %3515, 0
  %3517 = call float @dx.op.binary.f32(i32 35, float %3500, float %3434)  ; FMax(a,b)
  %3518 = call float @dx.op.binary.f32(i32 35, float %3501, float %3434)  ; FMax(a,b)
  %3519 = call float @dx.op.binary.f32(i32 35, float %3502, float %3434)  ; FMax(a,b)
  %3520 = call float @dx.op.dot3.f32(i32 55, float %3500, float %3501, float %3502, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3521 = select i1 %173, float %3434, float %3500
  %3522 = select i1 %173, float %3520, float %3501
  %3523 = select i1 %173, float 1.000000e+00, float %3502
  %3524 = select i1 %3516, float %3517, float %3521
  %3525 = select i1 %3516, float %3518, float %3522
  %3526 = select i1 %3516, float %3519, float %3523
  %3527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3528 = extractvalue %dx.types.CBufRet.f32 %3527, 0
  %3529 = extractvalue %dx.types.CBufRet.f32 %3527, 1
  %3530 = extractvalue %dx.types.CBufRet.f32 %3527, 2
  %3531 = fadd fast float %3528, %129
  %3532 = fadd fast float %3529, %130
  %3533 = fadd fast float %3530, %131
  %3534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3535 = extractvalue %dx.types.CBufRet.f32 %3534, 0
  %3536 = extractvalue %dx.types.CBufRet.f32 %3534, 1
  %3537 = fsub fast float %3531, %3535
  %3538 = fsub fast float %3532, %3536
  %3539 = fmul fast float %3537, %3537
  %3540 = fmul fast float %3538, %3538
  %3541 = fadd fast float %3539, %3540
  %3542 = call float @dx.op.unary.f32(i32 24, float %3541)  ; Sqrt(value)
  %3543 = extractvalue %dx.types.CBufRet.f32 %3534, 2
  %3544 = fcmp fast olt float %3542, %3543
  br i1 %3544, label %3545, label %3612

; <label>:3545                                    ; preds = %3431
  %3546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3547 = extractvalue %dx.types.CBufRet.f32 %3546, 0
  %3548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3549 = extractvalue %dx.types.CBufRet.f32 %3548, 0
  %3550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3551 = extractvalue %dx.types.CBufRet.f32 %3550, 0
  %3552 = extractvalue %dx.types.CBufRet.f32 %3546, 1
  %3553 = extractvalue %dx.types.CBufRet.f32 %3548, 1
  %3554 = extractvalue %dx.types.CBufRet.f32 %3550, 1
  %3555 = extractvalue %dx.types.CBufRet.f32 %3546, 3
  %3556 = extractvalue %dx.types.CBufRet.f32 %3548, 3
  %3557 = extractvalue %dx.types.CBufRet.f32 %3550, 3
  %3558 = fadd fast float %3555, %3531
  %3559 = fadd fast float %3556, %3532
  %3560 = fadd fast float %3557, %3533
  %3561 = fmul fast float %3558, %3547
  %3562 = call float @dx.op.tertiary.f32(i32 46, float %3559, float %3549, float %3561)  ; FMad(a,b,c)
  %3563 = call float @dx.op.tertiary.f32(i32 46, float %3560, float %3551, float %3562)  ; FMad(a,b,c)
  %3564 = fmul fast float %3558, %3552
  %3565 = call float @dx.op.tertiary.f32(i32 46, float %3559, float %3553, float %3564)  ; FMad(a,b,c)
  %3566 = call float @dx.op.tertiary.f32(i32 46, float %3560, float %3554, float %3565)  ; FMad(a,b,c)
  %3567 = fsub fast float %3563, %3555
  %3568 = fsub fast float %3566, %3556
  %3569 = fsub fast float %3567, %3535
  %3570 = fadd fast float %3569, %3543
  %3571 = fsub fast float %3568, %3536
  %3572 = fadd fast float %3571, %3543
  %3573 = extractvalue %dx.types.CBufRet.f32 %3534, 3
  %3574 = fmul fast float %3570, %3573
  %3575 = fmul fast float %3572, %3573
  %3576 = call float @dx.op.unary.f32(i32 7, float %3574)  ; Saturate(value)
  %3577 = call float @dx.op.unary.f32(i32 7, float %3575)  ; Saturate(value)
  %3578 = fsub fast float 1.000000e+00, %3576
  %3579 = fsub fast float 1.000000e+00, %3577
  %3580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %3578, float %3579, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3581 = extractvalue %dx.types.ResRet.f32 %3580, 0
  %3582 = fcmp fast ugt float %3581, 0.000000e+00
  br i1 %3582, label %3583, label %3886

; <label>:3583                                    ; preds = %3545
  %3584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3585 = extractvalue %dx.types.CBufRet.f32 %3584, 2
  %3586 = fmul fast float %3585, %3581
  %3587 = extractvalue %dx.types.CBufRet.f32 %3584, 3
  %3588 = fadd fast float %3587, %3586
  %3589 = extractvalue %dx.types.CBufRet.f32 %3550, 2
  %3590 = fadd fast float %3588, %3557
  %3591 = fmul fast float %3563, %3551
  %3592 = call float @dx.op.tertiary.f32(i32 46, float %3566, float %3554, float %3591)  ; FMad(a,b,c)
  %3593 = call float @dx.op.tertiary.f32(i32 46, float %3590, float %3589, float %3592)  ; FMad(a,b,c)
  %3594 = fsub fast float %3593, %3557
  %3595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3596 = extractvalue %dx.types.CBufRet.f32 %3595, 2
  %3597 = fsub fast float %3594, %3596
  %3598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %26, float %3578, float %3579, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3599 = extractvalue %dx.types.ResRet.f32 %3598, 0
  %3600 = extractvalue %dx.types.ResRet.f32 %3598, 1
  %3601 = extractvalue %dx.types.ResRet.f32 %3598, 2
  %3602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %26, float %3578, float %3579, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3603 = extractvalue %dx.types.ResRet.f32 %3602, 0
  %3604 = extractvalue %dx.types.ResRet.f32 %3602, 1
  %3605 = extractvalue %dx.types.ResRet.f32 %3602, 2
  %3606 = fadd fast float %3603, %3599
  %3607 = fmul fast float %3606, 0x3F847AE140000000
  %3608 = fadd fast float %3604, %3600
  %3609 = fmul fast float %3608, 0x3F847AE140000000
  %3610 = fadd fast float %3605, %3601
  %3611 = fmul fast float %3610, 0x3F847AE140000000
  br label %3886

; <label>:3612                                    ; preds = %3431
  %3613 = and i32 %147, 1
  %3614 = icmp eq i32 %3613, 0
  br i1 %3614, label %3886, label %3615

; <label>:3615                                    ; preds = %3612
  %3616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3617 = extractvalue %dx.types.CBufRet.f32 %3616, 0
  %3618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3619 = extractvalue %dx.types.CBufRet.f32 %3618, 0
  %3620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3621 = extractvalue %dx.types.CBufRet.f32 %3620, 0
  %3622 = extractvalue %dx.types.CBufRet.f32 %3616, 1
  %3623 = extractvalue %dx.types.CBufRet.f32 %3618, 1
  %3624 = extractvalue %dx.types.CBufRet.f32 %3620, 1
  %3625 = extractvalue %dx.types.CBufRet.f32 %3616, 3
  %3626 = extractvalue %dx.types.CBufRet.f32 %3618, 3
  %3627 = extractvalue %dx.types.CBufRet.f32 %3620, 3
  %3628 = fadd fast float %3625, %3531
  %3629 = fadd fast float %3626, %3532
  %3630 = fadd fast float %3627, %3533
  %3631 = fmul fast float %3628, %3617
  %3632 = call float @dx.op.tertiary.f32(i32 46, float %3629, float %3619, float %3631)  ; FMad(a,b,c)
  %3633 = call float @dx.op.tertiary.f32(i32 46, float %3630, float %3621, float %3632)  ; FMad(a,b,c)
  %3634 = fmul fast float %3628, %3622
  %3635 = call float @dx.op.tertiary.f32(i32 46, float %3629, float %3623, float %3634)  ; FMad(a,b,c)
  %3636 = call float @dx.op.tertiary.f32(i32 46, float %3630, float %3624, float %3635)  ; FMad(a,b,c)
  %3637 = fsub fast float %3633, %3625
  %3638 = fsub fast float %3636, %3626
  %3639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3640 = extractvalue %dx.types.CBufRet.f32 %3639, 0
  %3641 = extractvalue %dx.types.CBufRet.f32 %3639, 1
  %3642 = extractvalue %dx.types.CBufRet.f32 %3639, 2
  %3643 = extractvalue %dx.types.CBufRet.f32 %3639, 3
  %3644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3645 = extractvalue %dx.types.CBufRet.f32 %3644, 3
  %3646 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3647 = extractvalue %dx.types.CBufRet.i32 %3646, 0
  %3648 = extractvalue %dx.types.CBufRet.i32 %3646, 1
  %3649 = udiv i32 %3648, %3647
  %3650 = fsub fast float %3637, %3640
  %3651 = fsub fast float %3638, %3641
  %3652 = call float @dx.op.binary.f32(i32 35, float %3650, float 0.000000e+00)  ; FMax(a,b)
  %3653 = call float @dx.op.binary.f32(i32 35, float %3651, float 0.000000e+00)  ; FMax(a,b)
  %3654 = call float @dx.op.binary.f32(i32 36, float %3652, float %3642)  ; FMin(a,b)
  %3655 = call float @dx.op.binary.f32(i32 36, float %3653, float %3643)  ; FMin(a,b)
  %3656 = add i32 %3647, -1
  %3657 = add i32 %3649, -1
  %3658 = fmul fast float %3654, %3645
  %3659 = fmul fast float %3655, %3645
  %3660 = fptoui float %3658 to i32
  %3661 = fptoui float %3659 to i32
  %3662 = call i32 @dx.op.binary.i32(i32 40, i32 %3660, i32 %3656)  ; UMin(a,b)
  %3663 = call i32 @dx.op.binary.i32(i32 40, i32 %3661, i32 %3657)  ; UMin(a,b)
  %3664 = mul i32 %3663, %3647
  %3665 = add i32 %3664, %3662
  %3666 = shl i32 %3665, 2
  %3667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3666, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.i32 %3667, 0
  %3669 = icmp eq i32 %3668, -1
  br i1 %3669, label %3886, label %3670

; <label>:3670                                    ; preds = %3615
  %3671 = mul i32 %3668, 148
  %3672 = add i32 %3671, 4
  %3673 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3672, i32 undef)  ; BufferLoad(srv,index,wot)
  %3674 = extractvalue %dx.types.ResRet.f32 %3673, 0
  %3675 = add i32 %3671, 8
  %3676 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3675, i32 undef)  ; BufferLoad(srv,index,wot)
  %3677 = extractvalue %dx.types.ResRet.f32 %3676, 0
  %3678 = add i32 %3671, 36
  %3679 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3678, i32 undef)  ; BufferLoad(srv,index,wot)
  %3680 = extractvalue %dx.types.ResRet.f32 %3679, 0
  %3681 = add i32 %3671, 60
  %3682 = add i32 %3671, 92
  %3683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3682, i32 undef)  ; BufferLoad(srv,index,wot)
  %3684 = extractvalue %dx.types.ResRet.i32 %3683, 0
  %3685 = add i32 %3671, 116
  %3686 = fsub fast float %3637, %3674
  %3687 = fsub fast float %3638, %3677
  %3688 = fmul fast float %3645, %3686
  %3689 = fmul fast float %3645, %3687
  %3690 = call float @dx.op.unary.f32(i32 7, float %3688)  ; Saturate(value)
  %3691 = call float @dx.op.unary.f32(i32 7, float %3689)  ; Saturate(value)
  %3692 = fsub fast float 1.000000e+00, %3691
  %3693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3694 = extractvalue %dx.types.CBufRet.f32 %3693, 2
  %3695 = call float @dx.op.unary.f32(i32 83, float %3690)  ; DerivCoarseX(value)
  %3696 = call float @dx.op.unary.f32(i32 83, float %3692)  ; DerivCoarseX(value)
  %3697 = call float @dx.op.unary.f32(i32 84, float %3690)  ; DerivCoarseY(value)
  %3698 = call float @dx.op.unary.f32(i32 84, float %3692)  ; DerivCoarseY(value)
  %3699 = fmul fast float %3695, %3694
  %3700 = fmul fast float %3696, %3694
  %3701 = fmul fast float %3697, %3694
  %3702 = fmul fast float %3698, %3694
  %3703 = call float @dx.op.dot2.f32(i32 54, float %3701, float %3702, float %3701, float %3702)  ; Dot2(ax,ay,bx,by)
  %3704 = call float @dx.op.dot2.f32(i32 54, float %3699, float %3700, float %3699, float %3700)  ; Dot2(ax,ay,bx,by)
  %3705 = call float @dx.op.binary.f32(i32 35, float %3704, float %3703)  ; FMax(a,b)
  %3706 = call float @dx.op.unary.f32(i32 23, float %3705)  ; Log(value)
  %3707 = fmul fast float %3706, 5.000000e-01
  %3708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3709 = extractvalue %dx.types.CBufRet.f32 %3708, 1
  %3710 = fadd fast float %3709, %3707
  %3711 = call float @dx.op.binary.f32(i32 35, float %3710, float 0.000000e+00)  ; FMax(a,b)
  %3712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3713 = extractvalue %dx.types.CBufRet.f32 %3712, 3
  %3714 = fadd fast float %3713, %3711
  %3715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3716 = extractvalue %dx.types.CBufRet.f32 %3715, 3
  %3717 = fadd fast float %3714, %3716
  %3718 = add i32 %3684, 0
  %3719 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3718, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3720 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3719, i32 0)  ; GetDimensions(handle,mipLevel)
  %3721 = extractvalue %dx.types.Dimensions %3720, 0
  %3722 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3721)  ; FirstbitLo(value)
  %3723 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3724 = extractvalue %dx.types.CBufRet.i32 %3723, 1
  %3725 = sub nsw i32 %3724, %3722
  %3726 = sitofp i32 %3725 to float
  %3727 = fsub fast float %3717, %3726
  %3728 = call float @dx.op.binary.f32(i32 35, float %3727, float 0.000000e+00)  ; FMax(a,b)
  %3729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3719, %dx.types.Handle %24, float %3690, float %3692, float %3680, float undef, i32 0, i32 0, i32 undef, float %3728)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3730 = extractvalue %dx.types.ResRet.f32 %3729, 0
  %3731 = fcmp ule float %3730, 0x3FE0101020000000
  %3732 = extractvalue %dx.types.CBufRet.i32 %3723, 0
  %3733 = and i32 %3732, 128
  %3734 = icmp ne i32 %3733, 0
  %3735 = and i1 %3731, %3734
  br i1 %3735, label %3886, label %3736

; <label>:3736                                    ; preds = %3670
  %3737 = add i32 %3671, 20
  %3738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3737, i32 undef)  ; BufferLoad(srv,index,wot)
  %3739 = extractvalue %dx.types.ResRet.f32 %3738, 0
  %3740 = add i32 %3671, 24
  %3741 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3740, i32 undef)  ; BufferLoad(srv,index,wot)
  %3742 = extractvalue %dx.types.ResRet.f32 %3741, 0
  %3743 = add i32 %3671, 40
  %3744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3743, i32 undef)  ; BufferLoad(srv,index,wot)
  %3745 = extractvalue %dx.types.ResRet.f32 %3744, 0
  %3746 = add i32 %3671, 96
  %3747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3748 = extractvalue %dx.types.ResRet.i32 %3747, 0
  %3749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3750 = extractvalue %dx.types.CBufRet.f32 %3749, 2
  %3751 = fmul fast float %3750, %3690
  %3752 = fmul fast float %3750, %3692
  %3753 = extractvalue %dx.types.CBufRet.f32 %3749, 3
  %3754 = fadd fast float %3751, %3753
  %3755 = fadd fast float %3752, %3753
  %3756 = add i32 %3748, 0
  %3757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3756, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3758 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3757, i32 0)  ; GetDimensions(handle,mipLevel)
  %3759 = extractvalue %dx.types.Dimensions %3758, 0
  %3760 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3759)  ; FirstbitLo(value)
  %3761 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3762 = extractvalue %dx.types.CBufRet.i32 %3761, 1
  %3763 = sub nsw i32 %3762, %3760
  %3764 = sitofp i32 %3763 to float
  %3765 = fsub fast float %3714, %3764
  %3766 = call float @dx.op.binary.f32(i32 35, float %3765, float 0.000000e+00)  ; FMax(a,b)
  %3767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3757, %dx.types.Handle %24, float %3754, float %3755, float %3745, float undef, i32 0, i32 0, i32 undef, float %3766)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3768 = extractvalue %dx.types.ResRet.f32 %3767, 0
  %3769 = fmul fast float %3768, %3739
  %3770 = fadd fast float %3769, %3742
  %3771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3772 = extractvalue %dx.types.CBufRet.f32 %3771, 0
  %3773 = extractvalue %dx.types.CBufRet.f32 %3771, 1
  %3774 = extractvalue %dx.types.CBufRet.f32 %3771, 2
  %3775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3776 = extractvalue %dx.types.CBufRet.f32 %3775, 3
  %3777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3778 = extractvalue %dx.types.CBufRet.f32 %3777, 3
  %3779 = extractvalue %dx.types.CBufRet.f32 %3771, 3
  %3780 = fadd fast float %3776, %3637
  %3781 = fadd fast float %3778, %3638
  %3782 = fadd fast float %3770, %3779
  %3783 = fmul fast float %3780, %3772
  %3784 = call float @dx.op.tertiary.f32(i32 46, float %3781, float %3773, float %3783)  ; FMad(a,b,c)
  %3785 = call float @dx.op.tertiary.f32(i32 46, float %3782, float %3774, float %3784)  ; FMad(a,b,c)
  %3786 = fsub fast float %3785, %3779
  %3787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3788 = extractvalue %dx.types.CBufRet.f32 %3787, 2
  %3789 = fsub fast float %3786, %3788
  %3790 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3791 = extractvalue %dx.types.CBufRet.i32 %3790, 0
  %3792 = call i32 @dx.op.binary.i32(i32 40, i32 %3668, i32 %3791)  ; UMin(a,b)
  %3793 = mul i32 %3792, 36
  %3794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3793, i32 undef)  ; BufferLoad(srv,index,wot)
  %3795 = extractvalue %dx.types.ResRet.i32 %3794, 0
  %3796 = add i32 %3793, 4
  %3797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3798 = extractvalue %dx.types.CBufRet.f32 %3797, 0
  %3799 = fmul fast float %3798, %3690
  %3800 = fmul fast float %3798, %3692
  %3801 = extractvalue %dx.types.CBufRet.f32 %3797, 1
  %3802 = fadd fast float %3799, %3801
  %3803 = fadd fast float %3800, %3801
  %3804 = icmp eq i32 %3795, 0
  br i1 %3804, label %3873, label %3805

; <label>:3805                                    ; preds = %3736
  br label %3806

; <label>:3806                                    ; preds = %3863, %3805
  %3807 = phi float [ %3864, %3863 ], [ 0.000000e+00, %3805 ]
  %3808 = phi float [ %3865, %3863 ], [ 0.000000e+00, %3805 ]
  %3809 = phi float [ %3866, %3863 ], [ 0.000000e+00, %3805 ]
  %3810 = phi float [ %3867, %3863 ], [ 0.000000e+00, %3805 ]
  %3811 = phi float [ %3868, %3863 ], [ 0.000000e+00, %3805 ]
  %3812 = phi float [ %3869, %3863 ], [ 0.000000e+00, %3805 ]
  %3813 = phi i32 [ %3870, %3863 ], [ 0, %3805 ]
  %3814 = shl i32 %3813, 2
  %3815 = add i32 %3681, %3814
  %3816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3817 = extractvalue %dx.types.ResRet.f32 %3816, 0
  %3818 = add i32 %3685, %3814
  %3819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3818, i32 undef)  ; BufferLoad(srv,index,wot)
  %3820 = extractvalue %dx.types.ResRet.i32 %3819, 0
  %3821 = add i32 %3820, 0
  %3822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3821, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3823 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3822, i32 0)  ; GetDimensions(handle,mipLevel)
  %3824 = extractvalue %dx.types.Dimensions %3823, 0
  %3825 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3824)  ; FirstbitLo(value)
  %3826 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3827 = extractvalue %dx.types.CBufRet.i32 %3826, 1
  %3828 = sub nsw i32 %3827, %3825
  %3829 = sitofp i32 %3828 to float
  %3830 = fsub fast float %3714, %3829
  %3831 = call float @dx.op.binary.f32(i32 35, float %3830, float 0.000000e+00)  ; FMax(a,b)
  %3832 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3822, %dx.types.Handle %24, float %3802, float %3803, float %3817, float undef, i32 0, i32 0, i32 undef, float %3831)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3833 = extractvalue %dx.types.ResRet.f32 %3832, 0
  %3834 = fcmp fast ogt float %3833, 0.000000e+00
  br i1 %3834, label %3835, label %3863

; <label>:3835                                    ; preds = %3806
  %3836 = add i32 %3796, %3814
  %3837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3836, i32 undef)  ; BufferLoad(srv,index,wot)
  %3838 = extractvalue %dx.types.ResRet.i32 %3837, 0
  %3839 = and i32 %3838, 32767
  %3840 = mul nuw nsw i32 %3839, 928
  %3841 = add nuw nsw i32 %3840, 48
  %3842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3841, i32 undef)  ; BufferLoad(srv,index,wot)
  %3843 = extractvalue %dx.types.ResRet.f32 %3842, 0
  %3844 = extractvalue %dx.types.ResRet.f32 %3842, 1
  %3845 = extractvalue %dx.types.ResRet.f32 %3842, 2
  %3846 = add nuw nsw i32 %3840, 60
  %3847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3848 = extractvalue %dx.types.ResRet.f32 %3847, 0
  %3849 = extractvalue %dx.types.ResRet.f32 %3847, 1
  %3850 = extractvalue %dx.types.ResRet.f32 %3847, 2
  %3851 = fmul fast float %3843, %3833
  %3852 = fmul fast float %3844, %3833
  %3853 = fmul fast float %3845, %3833
  %3854 = fadd fast float %3851, %3807
  %3855 = fadd fast float %3852, %3808
  %3856 = fadd fast float %3853, %3809
  %3857 = fmul fast float %3848, %3833
  %3858 = fmul fast float %3849, %3833
  %3859 = fmul fast float %3850, %3833
  %3860 = fadd fast float %3857, %3810
  %3861 = fadd fast float %3858, %3811
  %3862 = fadd fast float %3859, %3812
  br label %3863

; <label>:3863                                    ; preds = %3835, %3806
  %3864 = phi float [ %3854, %3835 ], [ %3807, %3806 ]
  %3865 = phi float [ %3855, %3835 ], [ %3808, %3806 ]
  %3866 = phi float [ %3856, %3835 ], [ %3809, %3806 ]
  %3867 = phi float [ %3860, %3835 ], [ %3810, %3806 ]
  %3868 = phi float [ %3861, %3835 ], [ %3811, %3806 ]
  %3869 = phi float [ %3862, %3835 ], [ %3812, %3806 ]
  %3870 = add nuw i32 %3813, 1
  %3871 = icmp eq i32 %3870, %3795
  br i1 %3871, label %3872, label %3806

; <label>:3872                                    ; preds = %3863
  br label %3873

; <label>:3873                                    ; preds = %3872, %3736
  %3874 = phi float [ 0.000000e+00, %3736 ], [ %3864, %3872 ]
  %3875 = phi float [ 0.000000e+00, %3736 ], [ %3865, %3872 ]
  %3876 = phi float [ 0.000000e+00, %3736 ], [ %3866, %3872 ]
  %3877 = phi float [ 0.000000e+00, %3736 ], [ %3867, %3872 ]
  %3878 = phi float [ 0.000000e+00, %3736 ], [ %3868, %3872 ]
  %3879 = phi float [ 0.000000e+00, %3736 ], [ %3869, %3872 ]
  %3880 = fadd fast float %3877, %3874
  %3881 = fmul fast float %3880, 0x3F847AE140000000
  %3882 = fadd fast float %3878, %3875
  %3883 = fmul fast float %3882, 0x3F847AE140000000
  %3884 = fadd fast float %3879, %3876
  %3885 = fmul fast float %3884, 0x3F847AE140000000
  br label %3886

; <label>:3886                                    ; preds = %3873, %3670, %3615, %3612, %3583, %3545
  %3887 = phi float [ %3597, %3583 ], [ -1.310720e+05, %3545 ], [ %3789, %3873 ], [ -1.310720e+05, %3615 ], [ -1.310720e+05, %3670 ], [ -1.310720e+05, %3612 ]
  %3888 = phi float [ %3607, %3583 ], [ 0.000000e+00, %3545 ], [ %3881, %3873 ], [ 0.000000e+00, %3615 ], [ 0.000000e+00, %3670 ], [ 0.000000e+00, %3612 ]
  %3889 = phi float [ %3609, %3583 ], [ 0.000000e+00, %3545 ], [ %3883, %3873 ], [ 0.000000e+00, %3615 ], [ 0.000000e+00, %3670 ], [ 0.000000e+00, %3612 ]
  %3890 = phi float [ %3611, %3583 ], [ 0.000000e+00, %3545 ], [ %3885, %3873 ], [ 0.000000e+00, %3615 ], [ 0.000000e+00, %3670 ], [ 0.000000e+00, %3612 ]
  %3891 = phi i1 [ true, %3583 ], [ false, %3545 ], [ true, %3873 ], [ false, %3615 ], [ false, %3670 ], [ false, %3612 ]
  %3892 = and i32 %147, 3
  %3893 = icmp eq i32 %3892, 1
  %3894 = select i1 %3893, float 1.000000e+00, float 0.000000e+00
  %3895 = fsub fast float %3887, %131
  %3896 = call float @dx.op.unary.f32(i32 7, float %3895)  ; Saturate(value)
  %3897 = select i1 %3891, float %3896, float 1.000000e+00
  %3898 = fmul fast float %3897, %3894
  %3899 = icmp eq i32 %3892, 3
  %3900 = select i1 %3899, float 1.000000e+00, float %3898
  %3901 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3900)  ; FMax(a,b)
  %3902 = call float @dx.op.unary.f32(i32 7, float %3901)  ; Saturate(value)
  %3903 = fcmp fast une float %3902, 0.000000e+00
  %3904 = call float @dx.op.dot3.f32(i32 55, float %129, float %130, float %131, float %129, float %130, float %131)  ; Dot3(ax,ay,az,bx,by,bz)
  %3905 = call float @dx.op.unary.f32(i32 25, float %3904)  ; Rsqrt(value)
  br i1 %3903, label %3913, label %3906

; <label>:3906                                    ; preds = %3886
  %3907 = fmul fast float %3905, %129
  %3908 = fmul fast float %3905, %130
  %3909 = fmul fast float %3905, %131
  %3910 = fsub fast float -0.000000e+00, %3907
  %3911 = fsub fast float -0.000000e+00, %3908
  %3912 = fsub fast float -0.000000e+00, %3909
  br label %4081

; <label>:3913                                    ; preds = %3886
  %3914 = fmul fast float %129, %3905
  %3915 = fsub fast float -0.000000e+00, %3914
  %3916 = fmul fast float %130, %3905
  %3917 = fsub fast float -0.000000e+00, %3916
  %3918 = fmul fast float %131, %3905
  %3919 = fsub fast float -0.000000e+00, %3918
  %3920 = call float @dx.op.dot3.f32(i32 55, float %3915, float %3917, float %3919, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %3921 = fmul fast float %3902, 2.500000e+00
  %3922 = call float @dx.op.unary.f32(i32 7, float %3921)  ; Saturate(value)
  %3923 = fmul fast float %3902, 0x4013FFFFE0000000
  %3924 = fadd fast float %3923, 0xBFFFFFFFE0000000
  %3925 = call float @dx.op.unary.f32(i32 7, float %3924)  ; Saturate(value)
  %3926 = fmul fast float %3902, 0x4004000020000000
  %3927 = fadd fast float %3926, 0xBFF8000040000000
  %3928 = call float @dx.op.unary.f32(i32 7, float %3927)  ; Saturate(value)
  %3929 = call float @dx.op.unary.f32(i32 7, float %3922)  ; Saturate(value)
  %3930 = fmul fast float %3491, 1.000000e+01
  %3931 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  %3932 = fmul fast float %3931, 2.000000e+00
  %3933 = fsub fast float 3.000000e+00, %3932
  %3934 = fmul fast float %3931, %3931
  %3935 = fmul fast float %3934, %3933
  %3936 = fsub fast float 1.000000e+00, %3935
  %3937 = fsub fast float 0x3FE3333340000000, %3512
  %3938 = fmul fast float %3937, 0x400AAAAAA0000000
  %3939 = call float @dx.op.unary.f32(i32 7, float %3938)  ; Saturate(value)
  %3940 = fmul fast float %3936, %3939
  %3941 = fmul fast float %3524, 0x3FEA2B8620000000
  %3942 = fmul fast float %3525, 0x3FEA2B8620000000
  %3943 = fmul fast float %3526, 0x3FEA2B8620000000
  %3944 = fadd fast float %3941, 0x3FC81DFBA0000000
  %3945 = fmul fast float %3944, %3524
  %3946 = fadd fast float %3945, 0x3F910E6020000000
  %3947 = fadd fast float %3942, 0x3FC81DFBA0000000
  %3948 = fmul fast float %3947, %3525
  %3949 = fadd fast float %3948, 0x3F910E6020000000
  %3950 = fadd fast float %3943, 0x3FC81DFBA0000000
  %3951 = fmul fast float %3950, %3526
  %3952 = fadd fast float %3951, 0x3F910E6020000000
  %3953 = call float @dx.op.unary.f32(i32 7, float %3946)  ; Saturate(value)
  %3954 = call float @dx.op.unary.f32(i32 7, float %3949)  ; Saturate(value)
  %3955 = call float @dx.op.unary.f32(i32 7, float %3952)  ; Saturate(value)
  %3956 = fsub fast float %3953, %3524
  %3957 = fsub fast float %3954, %3525
  %3958 = fsub fast float %3955, %3526
  %3959 = fmul fast float %3956, %3929
  %3960 = fmul fast float %3959, %3940
  %3961 = fmul fast float %3957, %3929
  %3962 = fmul fast float %3961, %3940
  %3963 = fmul fast float %3958, %3929
  %3964 = fmul fast float %3963, %3940
  %3965 = fadd fast float %3960, %3524
  %3966 = fadd fast float %3962, %3525
  %3967 = fadd fast float %3964, %3526
  %3968 = fmul fast float %3442, %3442
  %3969 = fmul fast float %3968, %3968
  %3970 = fadd fast float %3925, 1.000000e+00
  %3971 = fsub fast float %3970, %3940
  %3972 = call float @dx.op.unary.f32(i32 7, float %3971)  ; Saturate(value)
  %3973 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3974 = call float @dx.op.unary.f32(i32 7, float %3973)  ; Saturate(value)
  %3975 = fsub fast float 1.000000e+00, %3969
  %3976 = call float @dx.op.binary.f32(i32 36, float %3972, float %3975)  ; FMin(a,b)
  %3977 = call float @dx.op.unary.f32(i32 7, float %3928)  ; Saturate(value)
  %3978 = call float @dx.op.binary.f32(i32 35, float %3976, float %3977)  ; FMax(a,b)
  %3979 = fadd fast float %3974, 0xBFE4CCCCC0000000
  %3980 = fmul fast float %3979, 0x4006DB6DA0000000
  %3981 = call float @dx.op.unary.f32(i32 7, float %3980)  ; Saturate(value)
  %3982 = fmul fast float %3981, 2.000000e+00
  %3983 = fsub fast float 3.000000e+00, %3982
  %3984 = bitcast float %3509 to i32
  %3985 = ashr i32 %3984, 1
  %3986 = add nsw i32 %3985, 532487669
  %3987 = bitcast i32 %3986 to float
  %3988 = fsub fast float 1.000000e+00, %3987
  %3989 = bitcast float %3988 to i32
  %3990 = sub nsw i32 2129859010, %3989
  %3991 = bitcast i32 %3990 to float
  %3992 = fmul fast float %3991, 2.000000e+00
  %3993 = bitcast float %3510 to i32
  %3994 = ashr i32 %3993, 1
  %3995 = add nsw i32 %3994, 532487669
  %3996 = bitcast i32 %3995 to float
  %3997 = fsub fast float 1.000000e+00, %3996
  %3998 = bitcast float %3997 to i32
  %3999 = sub nsw i32 2129859010, %3998
  %4000 = bitcast i32 %3999 to float
  %4001 = fmul fast float %4000, 2.000000e+00
  %4002 = bitcast float %3511 to i32
  %4003 = ashr i32 %4002, 1
  %4004 = add nsw i32 %4003, 532487669
  %4005 = bitcast i32 %4004 to float
  %4006 = fsub fast float 1.000000e+00, %4005
  %4007 = bitcast float %4006 to i32
  %4008 = sub nsw i32 2129859010, %4007
  %4009 = bitcast i32 %4008 to float
  %4010 = fmul fast float %4009, 2.000000e+00
  %4011 = fsub fast float 0x4002A9FBE0000000, %3992
  %4012 = fadd fast float %3992, 0x3FD54FDF00000000
  %4013 = bitcast float %4012 to i32
  %4014 = sub nsw i32 2129859010, %4013
  %4015 = bitcast i32 %4014 to float
  %4016 = fmul fast float %4015, %4011
  %4017 = fmul fast float %4016, %4016
  %4018 = fsub fast float 0x4002A9FBE0000000, %4001
  %4019 = fadd fast float %4001, 0x3FD54FDF00000000
  %4020 = bitcast float %4019 to i32
  %4021 = sub nsw i32 2129859010, %4020
  %4022 = bitcast i32 %4021 to float
  %4023 = fmul fast float %4022, %4018
  %4024 = fmul fast float %4023, %4023
  %4025 = fsub fast float 0x4002A9FBE0000000, %4010
  %4026 = fadd fast float %4010, 0x3FD54FDF00000000
  %4027 = bitcast float %4026 to i32
  %4028 = sub nsw i32 2129859010, %4027
  %4029 = bitcast i32 %4028 to float
  %4030 = fmul fast float %4029, %4025
  %4031 = fmul fast float %4030, %4030
  %4032 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4017)  ; FMax(a,b)
  %4033 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4024)  ; FMax(a,b)
  %4034 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4031)  ; FMax(a,b)
  %4035 = fsub fast float 1.000000e+00, %3920
  %4036 = fadd fast float %4035, %3936
  %4037 = call float @dx.op.unary.f32(i32 7, float %4036)  ; Saturate(value)
  %4038 = fsub fast float 1.000000e+00, %3900
  %4039 = fmul fast float %3978, %4038
  %4040 = fmul fast float %3981, %3981
  %4041 = fmul fast float %4040, %4039
  %4042 = fmul fast float %4041, %3983
  %4043 = fmul fast float %4038, 0xBFE99999A0000000
  %4044 = fmul fast float %4043, %3929
  %4045 = fmul fast float %4044, %3940
  %4046 = fadd fast float %4045, 1.000000e+00
  %4047 = fadd fast float %3512, -1.000000e+00
  %4048 = fmul fast float %4046, %4047
  %4049 = fadd fast float %4048, 1.000000e+00
  %4050 = fsub fast float %4032, %3509
  %4051 = fsub fast float %4033, %3510
  %4052 = fsub fast float %4034, %3511
  %4053 = fmul fast float %4042, %4050
  %4054 = fmul fast float %4042, %4051
  %4055 = fmul fast float %4042, %4052
  %4056 = fadd fast float %4053, %3509
  %4057 = fadd fast float %4054, %3510
  %4058 = fadd fast float %4055, %3511
  %4059 = fsub fast float %73, %3488
  %4060 = fsub fast float %74, %3489
  %4061 = fsub fast float %75, %3490
  %4062 = fmul fast float %4042, %4059
  %4063 = fmul fast float %4042, %4060
  %4064 = fmul fast float %4042, %4061
  %4065 = fadd fast float %4062, %3488
  %4066 = fadd fast float %4063, %3489
  %4067 = fadd fast float %4064, %3490
  %4068 = fmul fast float %4042, %4037
  %4069 = call float @dx.op.unary.f32(i32 7, float %4049)  ; Saturate(value)
  %4070 = fsub fast float 1.000000e+00, %4069
  %4071 = fmul fast float %4068, %4070
  %4072 = fadd fast float %4071, %4069
  %4073 = fsub fast float 1.000000e+00, %3442
  %4074 = fmul fast float %4042, %4073
  %4075 = fadd fast float %4074, %3442
  %4076 = call float @dx.op.dot3.f32(i32 55, float %4065, float %4066, float %4067, float %4065, float %4066, float %4067)  ; Dot3(ax,ay,az,bx,by,bz)
  %4077 = call float @dx.op.unary.f32(i32 25, float %4076)  ; Rsqrt(value)
  %4078 = fmul fast float %4065, %4077
  %4079 = fmul fast float %4066, %4077
  %4080 = fmul fast float %4067, %4077
  br label %4081

; <label>:4081                                    ; preds = %3913, %3906
  %4082 = phi float [ %3912, %3906 ], [ %3919, %3913 ]
  %4083 = phi float [ %3911, %3906 ], [ %3917, %3913 ]
  %4084 = phi float [ %3910, %3906 ], [ %3915, %3913 ]
  %4085 = phi float [ %3909, %3906 ], [ %3918, %3913 ]
  %4086 = phi float [ %3908, %3906 ], [ %3916, %3913 ]
  %4087 = phi float [ %3907, %3906 ], [ %3914, %3913 ]
  %4088 = phi float [ %3509, %3906 ], [ %4056, %3913 ]
  %4089 = phi float [ %3510, %3906 ], [ %4057, %3913 ]
  %4090 = phi float [ %3511, %3906 ], [ %4058, %3913 ]
  %4091 = phi float [ %3524, %3906 ], [ %3965, %3913 ]
  %4092 = phi float [ %3525, %3906 ], [ %3966, %3913 ]
  %4093 = phi float [ %3526, %3906 ], [ %3967, %3913 ]
  %4094 = phi float [ %3488, %3906 ], [ %4078, %3913 ]
  %4095 = phi float [ %3489, %3906 ], [ %4079, %3913 ]
  %4096 = phi float [ %3490, %3906 ], [ %4080, %3913 ]
  %4097 = phi float [ %3512, %3906 ], [ %4072, %3913 ]
  %4098 = phi float [ %3442, %3906 ], [ %4075, %3913 ]
  %4099 = select i1 %173, float 0.000000e+00, float %4090
  %4100 = call float @dx.op.dot3.f32(i32 55, float %4094, float %4095, float %4096, float %4084, float %4083, float %4082)  ; Dot3(ax,ay,az,bx,by,bz)
  %4101 = call float @dx.op.unary.f32(i32 7, float %4100)  ; Saturate(value)
  %4102 = call float @dx.op.dot3.f32(i32 55, float %4087, float %4086, float %4085, float %4094, float %4095, float %4096)  ; Dot3(ax,ay,az,bx,by,bz)
  %4103 = fmul fast float %4102, 2.000000e+00
  %4104 = fmul fast float %4103, %4094
  %4105 = fmul fast float %4103, %4095
  %4106 = fmul fast float %4103, %4096
  %4107 = fsub fast float %4087, %4104
  %4108 = fsub fast float %4086, %4105
  %4109 = fsub fast float %4085, %4106
  %4110 = call float @dx.op.binary.f32(i32 36, float %4098, float 1.000000e+00)  ; FMin(a,b)
  %4111 = fsub fast float 1.000000e+00, %4098
  %4112 = bitcast float %4111 to i32
  %4113 = sub nsw i32 2129859010, %4112
  %4114 = fsub fast float 1.000000e+00, %43
  %4115 = call float @dx.op.dot3.f32(i32 55, float %93, float %94, float %95, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %4116 = call float @dx.op.binary.f32(i32 35, float %4115, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4117 = fdiv fast float %4114, %4116
  %4118 = call float @dx.op.dot3.f32(i32 55, float %4094, float %4095, float %4096, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %4119 = call float @dx.op.unary.f32(i32 7, float %4118)  ; Saturate(value)
  %4120 = fmul fast float %4119, 5.000000e-01
  %4121 = fadd fast float %4120, 5.000000e-01
  %4122 = fmul fast float %4121, %43
  %4123 = call float @dx.op.dot3.f32(i32 55, float %4094, float %4095, float %4096, float %93, float %94, float %95)  ; Dot3(ax,ay,az,bx,by,bz)
  %4124 = call float @dx.op.unary.f32(i32 7, float %4123)  ; Saturate(value)
  %4125 = fmul fast float %4124, %4117
  %4126 = fadd fast float %4122, %4125
  %4127 = fsub fast float 5.000000e-01, %4120
  %4128 = fmul fast float %4127, %4091
  %4129 = fmul fast float %4127, %4092
  %4130 = fmul fast float %4127, %4093
  %4131 = fadd fast float %4126, %4128
  %4132 = fadd fast float %4126, %4129
  %4133 = fadd fast float %4126, %4130
  %4134 = call float @dx.op.dot3.f32(i32 55, float %4107, float %4108, float %4109, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %4135 = call float @dx.op.unary.f32(i32 7, float %4134)  ; Saturate(value)
  %4136 = fmul fast float %4135, 5.000000e-01
  %4137 = fadd fast float %4136, 5.000000e-01
  %4138 = fmul fast float %4137, %43
  %4139 = call float @dx.op.dot3.f32(i32 55, float %4107, float %4108, float %4109, float %93, float %94, float %95)  ; Dot3(ax,ay,az,bx,by,bz)
  %4140 = call float @dx.op.unary.f32(i32 7, float %4139)  ; Saturate(value)
  %4141 = fmul fast float %4140, %4117
  %4142 = fadd fast float %4138, %4141
  %4143 = fsub fast float 5.000000e-01, %4136
  %4144 = fmul fast float %4143, %4091
  %4145 = fmul fast float %4143, %4092
  %4146 = fmul fast float %4143, %4093
  %4147 = fadd fast float %4142, %4144
  %4148 = fadd fast float %4142, %4145
  %4149 = fadd fast float %4142, %4146
  %4150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4151 = extractvalue %dx.types.CBufRet.f32 %4150, 0
  %4152 = call float @dx.op.binary.f32(i32 36, float %4091, float %4151)  ; FMin(a,b)
  %4153 = fsub fast float 1.000000e+00, %4110
  %4154 = fmul fast float %4152, %4153
  %4155 = fsub fast float 1.000000e+00, %4154
  %4156 = bitcast float %4155 to i32
  %4157 = sub nsw i32 2129859010, %4156
  %4158 = bitcast i32 %4157 to float
  %4159 = call float @dx.op.binary.f32(i32 36, float %4092, float %4151)  ; FMin(a,b)
  %4160 = fmul fast float %4159, %4153
  %4161 = fsub fast float 1.000000e+00, %4160
  %4162 = bitcast float %4161 to i32
  %4163 = sub nsw i32 2129859010, %4162
  %4164 = bitcast i32 %4163 to float
  %4165 = call float @dx.op.binary.f32(i32 36, float %4093, float %4151)  ; FMin(a,b)
  %4166 = fmul fast float %4165, %4153
  %4167 = fsub fast float 1.000000e+00, %4166
  %4168 = bitcast float %4167 to i32
  %4169 = sub nsw i32 2129859010, %4168
  %4170 = bitcast i32 %4169 to float
  %4171 = fmul fast float %4110, %44
  %4172 = fmul fast float %4171, %4131
  %4173 = fmul fast float %4172, %4158
  %4174 = fmul fast float %4110, %45
  %4175 = fmul fast float %4174, %4132
  %4176 = fmul fast float %4175, %4164
  %4177 = fmul fast float %4110, %46
  %4178 = fmul fast float %4177, %4133
  %4179 = fmul fast float %4178, %4170
  %4180 = call float @dx.op.binary.f32(i32 36, float %4088, float %4151)  ; FMin(a,b)
  %4181 = fmul fast float %4180, %4153
  %4182 = fsub fast float 1.000000e+00, %4181
  %4183 = bitcast float %4182 to i32
  %4184 = sub nsw i32 2129859010, %4183
  %4185 = bitcast i32 %4184 to float
  %4186 = call float @dx.op.binary.f32(i32 36, float %4089, float %4151)  ; FMin(a,b)
  %4187 = fmul fast float %4186, %4153
  %4188 = fsub fast float 1.000000e+00, %4187
  %4189 = bitcast float %4188 to i32
  %4190 = sub nsw i32 2129859010, %4189
  %4191 = bitcast i32 %4190 to float
  %4192 = call float @dx.op.binary.f32(i32 36, float %4099, float %4151)  ; FMin(a,b)
  %4193 = fmul fast float %4192, %4153
  %4194 = fsub fast float 1.000000e+00, %4193
  %4195 = bitcast float %4194 to i32
  %4196 = sub nsw i32 2129859010, %4195
  %4197 = bitcast i32 %4196 to float
  %4198 = fmul fast float %4171, %4147
  %4199 = fmul fast float %4198, %4185
  %4200 = fmul fast float %4174, %4148
  %4201 = fmul fast float %4200, %4191
  %4202 = fmul fast float %4177, %4149
  %4203 = fmul fast float %4202, %4197
  %4204 = call float @dx.op.dot3.f32(i32 55, float %4173, float %4176, float %4179, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4205 = select i1 %173, float 0.000000e+00, float %4173
  %4206 = select i1 %173, float %4204, float %4176
  %4207 = select i1 %173, float 0.000000e+00, float %4179
  %4208 = call float @dx.op.dot3.f32(i32 55, float %4199, float %4201, float %4203, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4209 = select i1 %173, float 0.000000e+00, float %4199
  %4210 = select i1 %173, float %4208, float %4201
  %4211 = select i1 %173, float 0.000000e+00, float %4203
  %4212 = call float @dx.op.unary.f32(i32 6, float %39)  ; FAbs(value)
  %4213 = fmul fast float %4212, %4205
  %4214 = fmul fast float %4212, %4206
  %4215 = fmul fast float %4207, %4212
  %4216 = fmul fast float %4101, 9.843750e-01
  %4217 = fmul fast float %4097, 9.843750e-01
  %4218 = fadd fast float %4216, 7.812500e-03
  %4219 = fadd fast float %4217, 7.812500e-03
  %4220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %4218, float %4219, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4221 = extractvalue %dx.types.ResRet.f32 %4220, 2
  %4222 = extractvalue %dx.types.ResRet.f32 %4220, 3
  %4223 = fmul fast float %4221, %4088
  %4224 = fmul fast float %4221, %4089
  %4225 = fmul fast float %4221, %4099
  %4226 = fadd fast float %4223, %4222
  %4227 = fadd fast float %4224, %4222
  %4228 = fadd fast float %4225, %4222
  %4229 = call float @dx.op.binary.f32(i32 35, float %4227, float %4228)  ; FMax(a,b)
  %4230 = call float @dx.op.binary.f32(i32 35, float %4226, float %4229)  ; FMax(a,b)
  %4231 = fsub fast float 1.000000e+00, %4230
  %4232 = fmul fast float %129, %129
  %4233 = fmul fast float %130, %130
  %4234 = fadd fast float %4232, %4233
  %4235 = fmul fast float %131, %131
  %4236 = fadd fast float %4234, %4235
  %4237 = call float @dx.op.unary.f32(i32 24, float %4236)  ; Sqrt(value)
  %4238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4239 = extractvalue %dx.types.CBufRet.f32 %4238, 1
  %4240 = fsub fast float %4237, %4239
  %4241 = extractvalue %dx.types.CBufRet.f32 %4238, 2
  %4242 = fmul fast float %4240, %4241
  %4243 = call float @dx.op.unary.f32(i32 7, float %4242)  ; Saturate(value)
  %4244 = extractvalue %dx.types.CBufRet.f32 %4238, 0
  %4245 = extractvalue %dx.types.CBufRet.f32 %4238, 3
  %4246 = fmul fast float %4243, %32
  %4247 = fmul fast float %4246, %4245
  %4248 = fadd fast float %4247, 1.000000e+00
  %4249 = fmul fast float %4231, %4213
  %4250 = fmul fast float %4249, %4248
  %4251 = fmul fast float %4231, %4214
  %4252 = fmul fast float %4251, %4248
  %4253 = fmul fast float %4231, %4215
  %4254 = fmul fast float %4253, %4248
  %4255 = call float @dx.op.dot3.f32(i32 55, float %4091, float %4092, float %4093, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4256 = fcmp fast ogt float %4255, 0x3E7FF19E20000000
  %4257 = fdiv fast float 1.000000e+00, %4255
  %4258 = select i1 %4256, float %4257, float 0.000000e+00
  %4259 = fmul fast float %4258, %4091
  %4260 = fmul fast float %4258, %4092
  %4261 = fmul fast float %4258, %4093
  %4262 = fadd fast float %4259, -1.000000e+00
  %4263 = fadd fast float %4260, -1.000000e+00
  %4264 = fadd fast float %4261, -1.000000e+00
  %4265 = fmul fast float %4262, 5.000000e-01
  %4266 = fmul fast float %4263, 5.000000e-01
  %4267 = fmul fast float %4264, 5.000000e-01
  %4268 = fadd fast float %4265, 1.000000e+00
  %4269 = fadd fast float %4266, 1.000000e+00
  %4270 = fadd fast float %4267, 1.000000e+00
  %4271 = fmul fast float %4226, %4209
  %4272 = fmul fast float %4227, %4210
  %4273 = fmul fast float %4228, %4211
  %4274 = fsub fast float 1.000000e+00, %4101
  %4275 = bitcast float %4274 to i32
  %4276 = sitofp i32 %4275 to float
  %4277 = fmul fast float %4276, 5.000000e+00
  %4278 = fadd fast float %4277, 0xC1EFBF8940000000
  %4279 = fptosi float %4278 to i32
  %4280 = bitcast i32 %4279 to float
  %4281 = fmul fast float %4280, %32
  %4282 = fmul fast float %4281, %4243
  %4283 = fmul fast float %4282, %4244
  %4284 = fmul fast float %4249, %4283
  %4285 = fmul fast float %4284, %4268
  %4286 = fmul fast float %4251, %4283
  %4287 = fmul fast float %4286, %4269
  %4288 = fmul fast float %4253, %4283
  %4289 = fmul fast float %4288, %4270
  %4290 = fmul fast float %4250, %878
  %4291 = fmul fast float %4252, %878
  %4292 = fmul fast float %4254, %878
  %4293 = fadd fast float %4271, %3437
  %4294 = fadd fast float %4293, %4285
  %4295 = fmul fast float %4294, %878
  %4296 = fadd fast float %4272, %3438
  %4297 = fadd fast float %4296, %4287
  %4298 = fmul fast float %4297, %878
  %4299 = fadd fast float %4273, %3439
  %4300 = fadd fast float %4299, %4289
  %4301 = fmul fast float %4300, %878
  %4302 = bitcast i32 %4113 to float
  %4303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4304 = extractvalue %dx.types.CBufRet.f32 %4303, 3
  %4305 = fcmp fast oeq float %4304, 0.000000e+00
  br i1 %4305, label %4464, label %4306

; <label>:4306                                    ; preds = %4081
  %4307 = extractvalue %dx.types.CBufRet.f32 %4303, 0
  %4308 = extractvalue %dx.types.CBufRet.f32 %4303, 1
  %4309 = extractvalue %dx.types.CBufRet.f32 %4303, 2
  %4310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4311 = extractvalue %dx.types.CBufRet.f32 %4310, 0
  %4312 = extractvalue %dx.types.CBufRet.f32 %4310, 1
  %4313 = extractvalue %dx.types.CBufRet.f32 %4310, 2
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 0
  %4316 = extractvalue %dx.types.CBufRet.f32 %4314, 1
  %4317 = call float @dx.op.dot3.f32(i32 55, float %4311, float %4312, float %4313, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4318 = select i1 %173, float %4315, float %4311
  %4319 = select i1 %173, float %4317, float %4312
  %4320 = select i1 %173, float %4316, float %4313
  %4321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4322 = extractvalue %dx.types.CBufRet.f32 %4321, 1
  %4323 = fcmp fast une float %4322, 0.000000e+00
  br i1 %4323, label %4324, label %4341

; <label>:4324                                    ; preds = %4306
  %4325 = fptoui float %66 to i32
  %4326 = fptoui float %67 to i32
  %4327 = lshr i32 %4325, 4
  %4328 = lshr i32 %4326, 4
  %4329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4330 = extractvalue %dx.types.CBufRet.f32 %4329, 0
  %4331 = fptoui float %4330 to i32
  %4332 = add i32 %4331, 15
  %4333 = lshr i32 %4332, 4
  %4334 = mul i32 %4333, %4328
  %4335 = add i32 %4334, %4327
  %4336 = shl i32 %4335, 3
  %4337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4336, i32 undef)  ; BufferLoad(srv,index,wot)
  %4338 = extractvalue %dx.types.ResRet.i32 %4337, 0
  %4339 = and i32 %4338, -268435456
  %4340 = icmp eq i32 %4339, -1342177280
  br i1 %4340, label %4351, label %4341

; <label>:4341                                    ; preds = %4324, %4306
  %4342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4343 = extractvalue %dx.types.CBufRet.f32 %4342, 2
  %4344 = extractvalue %dx.types.CBufRet.f32 %4342, 3
  %4345 = fmul fast float %4343, %66
  %4346 = fmul fast float %4344, %67
  %4347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %27, float %4345, float %4346, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4348 = extractvalue %dx.types.ResRet.f32 %4347, 0
  %4349 = extractvalue %dx.types.ResRet.f32 %4347, 1
  %4350 = extractvalue %dx.types.ResRet.f32 %4347, 2
  br label %4351

; <label>:4351                                    ; preds = %4341, %4324
  %4352 = phi float [ %4348, %4341 ], [ 0.000000e+00, %4324 ]
  %4353 = phi float [ %4349, %4341 ], [ 0.000000e+00, %4324 ]
  %4354 = phi float [ %4350, %4341 ], [ 0.000000e+00, %4324 ]
  %4355 = call float @dx.op.binary.f32(i32 36, float %4353, float %4354)  ; FMin(a,b)
  %4356 = call float @dx.op.binary.f32(i32 36, float %4352, float %4355)  ; FMin(a,b)
  %4357 = fcmp fast ogt float %4356, 0.000000e+00
  br i1 %4357, label %4358, label %4464, !dx.controlflow.hints !72

; <label>:4358                                    ; preds = %4351
  %4359 = fmul fast float %4352, %4318
  %4360 = fmul fast float %4353, %4319
  %4361 = fmul fast float %4354, %4320
  %4362 = fsub fast float %4307, %4087
  %4363 = fsub fast float %4308, %4086
  %4364 = fsub fast float %4309, %4085
  %4365 = call float @dx.op.dot3.f32(i32 55, float %4362, float %4363, float %4364, float %4362, float %4363, float %4364)  ; Dot3(ax,ay,az,bx,by,bz)
  %4366 = call float @dx.op.unary.f32(i32 25, float %4365)  ; Rsqrt(value)
  %4367 = fmul fast float %4366, %4362
  %4368 = fmul fast float %4366, %4363
  %4369 = fmul fast float %4366, %4364
  %4370 = call float @dx.op.dot3.f32(i32 55, float %4307, float %4308, float %4309, float %4094, float %4095, float %4096)  ; Dot3(ax,ay,az,bx,by,bz)
  %4371 = call float @dx.op.dot3.f32(i32 55, float %4084, float %4083, float %4082, float %4367, float %4368, float %4369)  ; Dot3(ax,ay,az,bx,by,bz)
  %4372 = call float @dx.op.unary.f32(i32 7, float %4370)  ; Saturate(value)
  %4373 = fmul fast float %4372, %4372
  %4374 = fmul fast float %4373, %4302
  %4375 = call float @dx.op.unary.f32(i32 7, float %4374)  ; Saturate(value)
  %4376 = fmul fast float %4375, %4372
  %4377 = call float @dx.op.dot3.f32(i32 55, float %4094, float %4095, float %4096, float %4367, float %4368, float %4369)  ; Dot3(ax,ay,az,bx,by,bz)
  %4378 = fmul fast float %4377, %4377
  %4379 = call float @dx.op.unary.f32(i32 6, float %4370)  ; FAbs(value)
  %4380 = fsub fast float 1.000000e+00, %4097
  %4381 = call float @dx.op.binary.f32(i32 35, float %4380, float 0x3F847AE140000000)  ; FMax(a,b)
  %4382 = fmul fast float %4381, %4381
  %4383 = fmul fast float %4382, %4382
  %4384 = fsub fast float 1.000000e+00, %4383
  %4385 = fmul fast float %4101, %4101
  %4386 = fmul fast float %4385, %4384
  %4387 = fadd fast float %4386, %4383
  %4388 = bitcast float %4387 to i32
  %4389 = ashr i32 %4388, 1
  %4390 = add nsw i32 %4389, 532487669
  %4391 = bitcast i32 %4390 to float
  %4392 = fadd fast float %4391, %4101
  %4393 = fmul fast float %4383, %4378
  %4394 = fsub fast float 1.000000e+00, %4378
  %4395 = fadd fast float %4394, %4393
  %4396 = fmul fast float %4379, %4379
  %4397 = fmul fast float %4396, %4384
  %4398 = fadd fast float %4397, %4383
  %4399 = bitcast float %4398 to i32
  %4400 = ashr i32 %4399, 1
  %4401 = add nsw i32 %4400, 532487669
  %4402 = bitcast i32 %4401 to float
  %4403 = fadd fast float %4402, %4379
  %4404 = fmul fast float %4395, %4395
  %4405 = fmul fast float %4404, %4392
  %4406 = fmul fast float %4405, %4403
  %4407 = fdiv fast float 0x3FF0A00000000000, %4406
  %4408 = fmul fast float %4407, %4383
  %4409 = call float @dx.op.unary.f32(i32 6, float %4371)  ; FAbs(value)
  %4410 = fsub fast float 1.000000e+00, %4409
  %4411 = bitcast float %4410 to i32
  %4412 = sitofp i32 %4411 to float
  %4413 = fmul fast float %4412, 5.000000e+00
  %4414 = fadd fast float %4413, 0xC1EFBF8940000000
  %4415 = fptosi float %4414 to i32
  %4416 = bitcast i32 %4415 to float
  %4417 = fsub fast float 1.000000e+00, %4088
  %4418 = fsub fast float 1.000000e+00, %4089
  %4419 = fsub fast float 1.000000e+00, %4099
  %4420 = fmul fast float %4416, %4417
  %4421 = fmul fast float %4416, %4418
  %4422 = fmul fast float %4416, %4419
  %4423 = fadd fast float %4420, %4088
  %4424 = fadd fast float %4421, %4089
  %4425 = fadd fast float %4422, %4099
  %4426 = fmul fast float %4370, 9.843750e-01
  %4427 = fadd fast float %4426, 7.812500e-03
  %4428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %4427, float %4219, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4429 = extractvalue %dx.types.ResRet.f32 %4428, 2
  %4430 = extractvalue %dx.types.ResRet.f32 %4428, 3
  %4431 = fmul fast float %4429, %4088
  %4432 = fmul fast float %4429, %4089
  %4433 = fmul fast float %4429, %4099
  %4434 = fadd fast float %4431, %4430
  %4435 = fadd fast float %4432, %4430
  %4436 = fadd fast float %4433, %4430
  %4437 = call float @dx.op.binary.f32(i32 35, float %4435, float %4436)  ; FMax(a,b)
  %4438 = call float @dx.op.binary.f32(i32 35, float %4434, float %4437)  ; FMax(a,b)
  %4439 = fsub fast float 1.000000e+00, %4438
  %4440 = fmul fast float %4376, %4359
  %4441 = fmul fast float %4440, %4439
  %4442 = fmul fast float %4376, %4360
  %4443 = fmul fast float %4442, %4439
  %4444 = fmul fast float %4376, %4361
  %4445 = fmul fast float %4444, %4439
  %4446 = fmul fast float %4440, %4408
  %4447 = fmul fast float %4446, %4423
  %4448 = fmul fast float %4442, %4408
  %4449 = fmul fast float %4448, %4424
  %4450 = fmul fast float %4444, %4408
  %4451 = fmul fast float %4450, %4425
  %4452 = fadd fast float %4441, %4250
  %4453 = fmul fast float %4452, %878
  %4454 = fadd fast float %4443, %4252
  %4455 = fmul fast float %4454, %878
  %4456 = fadd fast float %4445, %4254
  %4457 = fmul fast float %4456, %878
  %4458 = fadd fast float %4447, %4294
  %4459 = fmul fast float %4458, %878
  %4460 = fadd fast float %4449, %4297
  %4461 = fmul fast float %4460, %878
  %4462 = fadd fast float %4451, %4300
  %4463 = fmul fast float %4462, %878
  br label %4464

; <label>:4464                                    ; preds = %4358, %4351, %4081
  %4465 = phi float [ %4295, %4081 ], [ %4295, %4351 ], [ %4459, %4358 ]
  %4466 = phi float [ %4298, %4081 ], [ %4298, %4351 ], [ %4461, %4358 ]
  %4467 = phi float [ %4301, %4081 ], [ %4301, %4351 ], [ %4463, %4358 ]
  %4468 = phi float [ %4290, %4081 ], [ %4290, %4351 ], [ %4453, %4358 ]
  %4469 = phi float [ %4291, %4081 ], [ %4291, %4351 ], [ %4455, %4358 ]
  %4470 = phi float [ %4292, %4081 ], [ %4292, %4351 ], [ %4457, %4358 ]
  %4471 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.i32 %4471, 0
  %4473 = icmp eq i32 %4472, 0
  br i1 %4473, label %4839, label %4474

; <label>:4474                                    ; preds = %4464
  %4475 = fptoui float %66 to i32
  %4476 = fptoui float %67 to i32
  %4477 = lshr i32 %4475, 4
  %4478 = lshr i32 %4476, 4
  %4479 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4480 = extractvalue %dx.types.CBufRet.i32 %4479, 0
  %4481 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4478, i32 %4480, i32 %4477)  ; UMad(a,b,c)
  %4482 = add nsw i32 %4472, -1
  %4483 = call i32 @dx.op.binary.i32(i32 37, i32 %4482, i32 0)  ; IMax(a,b)
  %4484 = call float @dx.op.binary.f32(i32 35, float %61, float 0.000000e+00)  ; FMax(a,b)
  %4485 = fptoui float %4484 to i32
  %4486 = lshr i32 %4485, 5
  %4487 = call i32 @dx.op.binary.i32(i32 40, i32 %4486, i32 8191)  ; UMin(a,b)
  %4488 = shl i32 %4487, 2
  %4489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4488, i32 undef)  ; BufferLoad(srv,index,wot)
  %4490 = extractvalue %dx.types.ResRet.i32 %4489, 0
  %4491 = lshr i32 %4490, 16
  %4492 = and i32 %4490, 65535
  %4493 = lshr i32 %4490, 21
  %4494 = lshr i32 %4492, 5
  %4495 = call i32 @dx.op.binary.i32(i32 40, i32 %4494, i32 %4483)  ; UMin(a,b)
  %4496 = icmp ugt i32 %4493, %4495
  br i1 %4496, label %4839, label %4497

; <label>:4497                                    ; preds = %4474
  br label %4498

; <label>:4498                                    ; preds = %4829, %4497
  %4499 = phi i32 [ %4836, %4829 ], [ %4493, %4497 ]
  %4500 = phi float [ %4830, %4829 ], [ %4465, %4497 ]
  %4501 = phi float [ %4831, %4829 ], [ %4466, %4497 ]
  %4502 = phi float [ %4832, %4829 ], [ %4467, %4497 ]
  %4503 = phi float [ %4833, %4829 ], [ %4468, %4497 ]
  %4504 = phi float [ %4834, %4829 ], [ %4469, %4497 ]
  %4505 = phi float [ %4835, %4829 ], [ %4470, %4497 ]
  %4506 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4507 = extractvalue %dx.types.CBufRet.i32 %4506, 0
  %4508 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4481, i32 %4507, i32 %4499)  ; UMad(a,b,c)
  %4509 = shl i32 %4508, 2
  %4510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4509, i32 undef)  ; BufferLoad(srv,index,wot)
  %4511 = extractvalue %dx.types.ResRet.i32 %4510, 0
  %4512 = shl i32 %4499, 5
  %4513 = sub nsw i32 %4491, %4512
  %4514 = call i32 @dx.op.binary.i32(i32 37, i32 %4513, i32 0)  ; IMax(a,b)
  %4515 = call i32 @dx.op.binary.i32(i32 38, i32 %4514, i32 31)  ; IMin(a,b)
  %4516 = sub nsw i32 1, %4491
  %4517 = add nsw i32 %4516, %4492
  %4518 = call i32 @dx.op.binary.i32(i32 37, i32 %4517, i32 0)  ; IMax(a,b)
  %4519 = call i32 @dx.op.binary.i32(i32 38, i32 %4518, i32 32)  ; IMin(a,b)
  %4520 = and i32 %4519, 31
  %4521 = shl i32 -1, %4520
  %4522 = xor i32 %4521, -1
  %4523 = and i32 %4515, 31
  %4524 = shl i32 %4522, %4523
  %4525 = icmp eq i32 %4519, 32
  %4526 = select i1 %4525, i32 -1, i32 %4524
  %4527 = and i32 %4526, %4511
  %4528 = icmp eq i32 %4527, 0
  br i1 %4528, label %4829, label %4529

; <label>:4529                                    ; preds = %4498
  br label %4530

; <label>:4530                                    ; preds = %4610, %4529
  %4531 = phi i32 [ %4542, %4610 ], [ %4527, %4529 ]
  %4532 = phi float [ %4611, %4610 ], [ %4500, %4529 ]
  %4533 = phi float [ %4612, %4610 ], [ %4501, %4529 ]
  %4534 = phi float [ %4613, %4610 ], [ %4502, %4529 ]
  %4535 = phi float [ %4614, %4610 ], [ %4503, %4529 ]
  %4536 = phi float [ %4615, %4610 ], [ %4504, %4529 ]
  %4537 = phi float [ %4616, %4610 ], [ %4505, %4529 ]
  %4538 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4531)  ; FirstbitLo(value)
  %4539 = add i32 %4538, %4512
  %4540 = and i32 %4538, 31
  %4541 = shl i32 1, %4540
  %4542 = xor i32 %4541, %4531
  %4543 = mul i32 %4539, 112
  %4544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4543, i32 undef)  ; BufferLoad(srv,index,wot)
  %4545 = extractvalue %dx.types.ResRet.f32 %4544, 0
  %4546 = extractvalue %dx.types.ResRet.f32 %4544, 1
  %4547 = extractvalue %dx.types.ResRet.f32 %4544, 2
  %4548 = or i32 %4543, 12
  %4549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4548, i32 undef)  ; BufferLoad(srv,index,wot)
  %4550 = extractvalue %dx.types.ResRet.f32 %4549, 0
  %4551 = add i32 %4543, 44
  %4552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4551, i32 undef)  ; BufferLoad(srv,index,wot)
  %4553 = extractvalue %dx.types.ResRet.f32 %4552, 0
  %4554 = add i32 %4543, 48
  %4555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4554, i32 undef)  ; BufferLoad(srv,index,wot)
  %4556 = extractvalue %dx.types.ResRet.f32 %4555, 0
  %4557 = extractvalue %dx.types.ResRet.f32 %4555, 1
  %4558 = extractvalue %dx.types.ResRet.f32 %4555, 2
  %4559 = add i32 %4543, 80
  %4560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4559, i32 undef)  ; BufferLoad(srv,index,wot)
  %4561 = extractvalue %dx.types.ResRet.f32 %4560, 1
  %4562 = extractvalue %dx.types.ResRet.f32 %4560, 2
  %4563 = call float @dx.op.dot3.f32(i32 55, float %4545, float %4546, float %4547, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4564 = select i1 %173, float %4561, float %4545
  %4565 = select i1 %173, float %4563, float %4546
  %4566 = select i1 %173, float %4562, float %4547
  %4567 = fsub fast float %4556, %129
  %4568 = fsub fast float %4557, %130
  %4569 = fsub fast float %4558, %131
  %4570 = call float @dx.op.dot3.f32(i32 55, float %4567, float %4568, float %4569, float %4567, float %4568, float %4569)  ; Dot3(ax,ay,az,bx,by,bz)
  %4571 = call float @dx.op.unary.f32(i32 24, float %4570)  ; Sqrt(value)
  %4572 = fdiv fast float 1.000000e+00, %4571
  %4573 = fmul fast float %4572, %4567
  %4574 = fmul fast float %4572, %4568
  %4575 = fmul fast float %4572, %4569
  %4576 = fadd fast float %4571, %4550
  %4577 = fdiv fast float 1.000000e+00, %4576
  %4578 = fmul float %4553, %4577
  %4579 = fmul float %4578, %4578
  %4580 = call float @dx.op.unary.f32(i32 7, float %4579)  ; Saturate(value)
  %4581 = and i32 %4541, %4527
  %4582 = icmp eq i32 %4581, 0
  br i1 %4582, label %4605, label %4583, !dx.controlflow.hints !73

; <label>:4583                                    ; preds = %4530
  %4584 = lshr i32 %4475, 5
  %4585 = lshr i32 %4476, 5
  %4586 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %4584, i32 %4585, i32 %4539, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4587 = extractvalue %dx.types.ResRet.i32 %4586, 0
  %4588 = and i32 %4587, 3
  %4589 = icmp eq i32 %4588, 0
  %4590 = select i1 %4589, float 1.000000e+00, float 0.000000e+00
  %4591 = icmp eq i32 %4588, 3
  br i1 %4591, label %4592, label %4605

; <label>:4592                                    ; preds = %4583
  %4593 = lshr i32 %4587, 10
  %4594 = and i32 %4593, 8160
  %4595 = and i32 %4476, 31
  %4596 = or i32 %4594, %4595
  %4597 = lshr i32 %4587, 1
  %4598 = and i32 %4597, 16352
  %4599 = and i32 %4475, 31
  %4600 = or i32 %4598, %4599
  %4601 = lshr i32 %4587, 23
  %4602 = and i32 %4601, 255
  %4603 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %4600, i32 %4596, i32 %4602, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4604 = extractvalue %dx.types.ResRet.f32 %4603, 0
  br label %4605

; <label>:4605                                    ; preds = %4592, %4583, %4530
  %4606 = phi float [ %4604, %4592 ], [ %4590, %4583 ], [ 0.000000e+00, %4530 ]
  %4607 = call float @dx.op.binary.f32(i32 36, float %4606, float %4606)  ; FMin(a,b)
  %4608 = call float @dx.op.binary.f32(i32 36, float %4606, float %4607)  ; FMin(a,b)
  %4609 = fcmp fast ogt float %4608, 0.000000e+00
  br i1 %4609, label %4618, label %4610, !dx.controlflow.hints !74

; <label>:4610                                    ; preds = %4679, %4605
  %4611 = phi float [ %4532, %4605 ], [ %4825, %4679 ]
  %4612 = phi float [ %4533, %4605 ], [ %4826, %4679 ]
  %4613 = phi float [ %4534, %4605 ], [ %4827, %4679 ]
  %4614 = phi float [ %4535, %4605 ], [ %4816, %4679 ]
  %4615 = phi float [ %4536, %4605 ], [ %4817, %4679 ]
  %4616 = phi float [ %4537, %4605 ], [ %4818, %4679 ]
  %4617 = icmp eq i32 %4531, %4541
  br i1 %4617, label %4828, label %4530

; <label>:4618                                    ; preds = %4605
  %4619 = fmul fast float %4606, %4564
  %4620 = fmul fast float %4606, %4565
  %4621 = fmul fast float %4606, %4566
  %4622 = fsub fast float %4558, %3887
  %4623 = fcmp fast ogt float %4622, 0.000000e+00
  %4624 = fsub fast float %131, %3887
  %4625 = fcmp fast ogt float %4624, 0.000000e+00
  %4626 = xor i1 %4625, %4623
  %4627 = fsub fast float %3887, %4558
  %4628 = fmul fast float %4627, 2.000000e+00
  %4629 = fadd fast float %4628, %4558
  %4630 = select i1 %4626, float %4558, float %4629
  %4631 = fsub fast float %4630, %131
  %4632 = call float @dx.op.dot3.f32(i32 55, float %4567, float %4568, float %4631, float %4567, float %4568, float %4631)  ; Dot3(ax,ay,az,bx,by,bz)
  %4633 = call float @dx.op.unary.f32(i32 25, float %4632)  ; Rsqrt(value)
  %4634 = fmul fast float %4633, %4567
  %4635 = fmul fast float %4633, %4568
  %4636 = fmul fast float %4633, %4631
  %4637 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3895)  ; Dot3(ax,ay,az,bx,by,bz)
  %4638 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4634, float %4635, float %4636)  ; Dot3(ax,ay,az,bx,by,bz)
  %4639 = fdiv fast float 1.000000e+00, %4638
  %4640 = fmul fast float %4639, %4637
  %4641 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4624, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4642 = fcmp fast ogt float %4641, 0.000000e+00
  %4643 = fcmp fast olt float %4641, 0.000000e+00
  %4644 = zext i1 %4642 to i32
  %4645 = zext i1 %4643 to i32
  %4646 = sub nsw i32 %4644, %4645
  %4647 = sitofp i32 %4646 to float
  %4648 = fsub fast float %4630, %3887
  %4649 = call float @dx.op.dot3.f32(i32 55, float %4567, float %4568, float %4648, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4650 = fcmp fast ogt float %4649, 0.000000e+00
  %4651 = fcmp fast olt float %4649, 0.000000e+00
  %4652 = zext i1 %4650 to i32
  %4653 = zext i1 %4651 to i32
  %4654 = sub nsw i32 %4652, %4653
  %4655 = sitofp i32 %4654 to float
  %4656 = fcmp fast une float %4647, %4655
  br i1 %4656, label %4657, label %4667

; <label>:4657                                    ; preds = %4618
  %4658 = fmul fast float %4640, %4636
  %4659 = fmul fast float %4640, %4635
  %4660 = fmul fast float %4640, %4634
  %4661 = fmul fast float %4660, %4660
  %4662 = fmul fast float %4659, %4659
  %4663 = fadd fast float %4661, %4662
  %4664 = fmul fast float %4658, %4658
  %4665 = fadd fast float %4663, %4664
  %4666 = call float @dx.op.unary.f32(i32 24, float %4665)  ; Sqrt(value)
  br label %4679

; <label>:4667                                    ; preds = %4618
  %4668 = icmp slt i32 %4646, 0
  br i1 %4668, label %4669, label %4679

; <label>:4669                                    ; preds = %4667
  %4670 = fsub fast float %129, %4556
  %4671 = fsub fast float %130, %4557
  %4672 = fsub fast float %131, %4630
  %4673 = fmul fast float %4670, %4670
  %4674 = fmul fast float %4671, %4671
  %4675 = fadd fast float %4673, %4674
  %4676 = fmul fast float %4672, %4672
  %4677 = fadd fast float %4675, %4676
  %4678 = call float @dx.op.unary.f32(i32 24, float %4677)  ; Sqrt(value)
  br label %4679

; <label>:4679                                    ; preds = %4669, %4667, %4657
  %4680 = phi float [ %4666, %4657 ], [ %4678, %4669 ], [ 0.000000e+00, %4667 ]
  %4681 = and i1 %4625, %4623
  %4682 = fsub fast float -0.000000e+00, %4680
  %4683 = select i1 %4681, float -0.000000e+00, float %4682
  %4684 = fmul fast float %3888, 0x3FF7154760000000
  %4685 = fmul fast float %4684, %4683
  %4686 = fmul fast float %3889, 0x3FF7154760000000
  %4687 = fmul fast float %4686, %4683
  %4688 = fmul fast float %3890, 0x3FF7154760000000
  %4689 = fmul fast float %4688, %4683
  %4690 = call float @dx.op.unary.f32(i32 21, float %4685)  ; Exp(value)
  %4691 = call float @dx.op.unary.f32(i32 21, float %4687)  ; Exp(value)
  %4692 = call float @dx.op.unary.f32(i32 21, float %4689)  ; Exp(value)
  %4693 = call float @dx.op.unary.f32(i32 7, float %4690)  ; Saturate(value)
  %4694 = call float @dx.op.unary.f32(i32 7, float %4691)  ; Saturate(value)
  %4695 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4696 = fmul fast float %4619, %4693
  %4697 = fmul fast float %4620, %4694
  %4698 = fmul fast float %4621, %4695
  %4699 = fsub fast float %4573, %4087
  %4700 = fsub fast float %4574, %4086
  %4701 = fsub fast float %4575, %4085
  %4702 = call float @dx.op.dot3.f32(i32 55, float %4699, float %4700, float %4701, float %4699, float %4700, float %4701)  ; Dot3(ax,ay,az,bx,by,bz)
  %4703 = call float @dx.op.unary.f32(i32 25, float %4702)  ; Rsqrt(value)
  %4704 = fmul fast float %4703, %4699
  %4705 = fmul fast float %4703, %4700
  %4706 = fmul fast float %4703, %4701
  %4707 = call float @dx.op.dot3.f32(i32 55, float %4573, float %4574, float %4575, float %4094, float %4095, float %4096)  ; Dot3(ax,ay,az,bx,by,bz)
  %4708 = call float @dx.op.dot3.f32(i32 55, float %4084, float %4083, float %4082, float %4704, float %4705, float %4706)  ; Dot3(ax,ay,az,bx,by,bz)
  %4709 = call float @dx.op.unary.f32(i32 7, float %4707)  ; Saturate(value)
  %4710 = fmul fast float %4709, %4580
  %4711 = fmul fast float %4709, %4709
  %4712 = fmul fast float %4711, %4302
  %4713 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4714 = fmul fast float %4710, %4713
  %4715 = bitcast float %4570 to i32
  %4716 = ashr i32 %4715, 1
  %4717 = sub nsw i32 1597463007, %4716
  %4718 = bitcast i32 %4717 to float
  %4719 = fmul fast float %4718, %4567
  %4720 = fmul fast float %4718, %4568
  %4721 = fmul fast float %4718, %4569
  %4722 = fsub fast float %4719, %4087
  %4723 = fsub fast float %4720, %4086
  %4724 = fsub fast float %4721, %4085
  %4725 = call float @dx.op.dot3.f32(i32 55, float %4722, float %4723, float %4724, float %4722, float %4723, float %4724)  ; Dot3(ax,ay,az,bx,by,bz)
  %4726 = call float @dx.op.unary.f32(i32 25, float %4725)  ; Rsqrt(value)
  %4727 = fmul fast float %4722, %4726
  %4728 = fmul fast float %4723, %4726
  %4729 = fmul fast float %4724, %4726
  %4730 = call float @dx.op.dot3.f32(i32 55, float %4094, float %4095, float %4096, float %4727, float %4728, float %4729)  ; Dot3(ax,ay,az,bx,by,bz)
  %4731 = fmul fast float %4730, %4730
  %4732 = call float @dx.op.unary.f32(i32 6, float %4707)  ; FAbs(value)
  %4733 = fsub fast float 1.000000e+00, %4097
  %4734 = call float @dx.op.binary.f32(i32 35, float %4733, float 0x3F847AE140000000)  ; FMax(a,b)
  %4735 = fmul fast float %4734, %4734
  %4736 = fmul fast float %4735, %4735
  %4737 = fsub fast float 1.000000e+00, %4736
  %4738 = fmul fast float %4101, %4101
  %4739 = fmul fast float %4738, %4737
  %4740 = fadd fast float %4739, %4736
  %4741 = bitcast float %4740 to i32
  %4742 = ashr i32 %4741, 1
  %4743 = add nsw i32 %4742, 532487669
  %4744 = bitcast i32 %4743 to float
  %4745 = fadd fast float %4744, %4101
  %4746 = fmul fast float %4736, %4731
  %4747 = fsub fast float 1.000000e+00, %4731
  %4748 = fadd fast float %4747, %4746
  %4749 = fmul fast float %4732, %4732
  %4750 = fmul fast float %4749, %4737
  %4751 = fadd fast float %4750, %4736
  %4752 = bitcast float %4751 to i32
  %4753 = ashr i32 %4752, 1
  %4754 = add nsw i32 %4753, 532487669
  %4755 = bitcast i32 %4754 to float
  %4756 = fadd fast float %4755, %4732
  %4757 = fmul fast float %4748, %4748
  %4758 = fmul fast float %4757, %4745
  %4759 = fmul fast float %4758, %4756
  %4760 = fdiv fast float 1.000000e+00, %4759
  %4761 = bitcast float %4736 to i32
  %4762 = sitofp i32 %4761 to float
  %4763 = fmul fast float %4762, 0x3FE7F73180000000
  %4764 = fadd fast float %4763, 0x41AFE27C40000000
  %4765 = fptosi float %4764 to i32
  %4766 = bitcast i32 %4765 to float
  %4767 = fmul fast float %4553, 0x3FD80E9D60000000
  %4768 = fmul fast float %4767, %4718
  %4769 = fadd fast float %4766, %4768
  %4770 = bitcast float %4769 to i32
  %4771 = sub nsw i32 2129859010, %4770
  %4772 = bitcast i32 %4771 to float
  %4773 = fmul fast float %4736, %4760
  %4774 = fmul fast float %4773, %4766
  %4775 = fmul fast float %4774, %4772
  %4776 = call float @dx.op.unary.f32(i32 6, float %4708)  ; FAbs(value)
  %4777 = fsub fast float 1.000000e+00, %4776
  %4778 = bitcast float %4777 to i32
  %4779 = sitofp i32 %4778 to float
  %4780 = fmul fast float %4779, 5.000000e+00
  %4781 = fadd fast float %4780, 0xC1EFBF8940000000
  %4782 = fptosi float %4781 to i32
  %4783 = bitcast i32 %4782 to float
  %4784 = fsub fast float 1.000000e+00, %4088
  %4785 = fsub fast float 1.000000e+00, %4089
  %4786 = fsub fast float 1.000000e+00, %4099
  %4787 = fmul fast float %4783, %4784
  %4788 = fmul fast float %4783, %4785
  %4789 = fmul fast float %4783, %4786
  %4790 = fadd fast float %4787, %4088
  %4791 = fadd fast float %4788, %4089
  %4792 = fadd fast float %4789, %4099
  %4793 = fmul fast float %4707, 9.843750e-01
  %4794 = fadd fast float %4793, 7.812500e-03
  %4795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %4794, float %4219, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4796 = extractvalue %dx.types.ResRet.f32 %4795, 2
  %4797 = extractvalue %dx.types.ResRet.f32 %4795, 3
  %4798 = fmul fast float %4796, %4088
  %4799 = fmul fast float %4796, %4089
  %4800 = fmul fast float %4796, %4099
  %4801 = fadd fast float %4798, %4797
  %4802 = fadd fast float %4799, %4797
  %4803 = fadd fast float %4800, %4797
  %4804 = call float @dx.op.binary.f32(i32 35, float %4802, float %4803)  ; FMax(a,b)
  %4805 = call float @dx.op.binary.f32(i32 35, float %4801, float %4804)  ; FMax(a,b)
  %4806 = fsub fast float 1.000000e+00, %4805
  %4807 = fmul fast float %4696, %878
  %4808 = fmul fast float %4807, %4714
  %4809 = fmul fast float %4808, %4806
  %4810 = fmul fast float %4697, %878
  %4811 = fmul fast float %4810, %4714
  %4812 = fmul fast float %4811, %4806
  %4813 = fmul fast float %4698, %878
  %4814 = fmul fast float %4813, %4714
  %4815 = fmul fast float %4814, %4806
  %4816 = fadd fast float %4809, %4535
  %4817 = fadd fast float %4812, %4536
  %4818 = fadd fast float %4815, %4537
  %4819 = fmul fast float %4808, %4790
  %4820 = fmul fast float %4819, %4775
  %4821 = fmul fast float %4811, %4791
  %4822 = fmul fast float %4821, %4775
  %4823 = fmul fast float %4814, %4792
  %4824 = fmul fast float %4823, %4775
  %4825 = fadd fast float %4820, %4532
  %4826 = fadd fast float %4822, %4533
  %4827 = fadd fast float %4824, %4534
  br label %4610

; <label>:4828                                    ; preds = %4610
  br label %4829

; <label>:4829                                    ; preds = %4828, %4498
  %4830 = phi float [ %4500, %4498 ], [ %4611, %4828 ]
  %4831 = phi float [ %4501, %4498 ], [ %4612, %4828 ]
  %4832 = phi float [ %4502, %4498 ], [ %4613, %4828 ]
  %4833 = phi float [ %4503, %4498 ], [ %4614, %4828 ]
  %4834 = phi float [ %4504, %4498 ], [ %4615, %4828 ]
  %4835 = phi float [ %4505, %4498 ], [ %4616, %4828 ]
  %4836 = add i32 %4499, 1
  %4837 = icmp ugt i32 %4836, %4495
  br i1 %4837, label %4838, label %4498

; <label>:4838                                    ; preds = %4829
  br label %4839

; <label>:4839                                    ; preds = %4838, %4474, %4464
  %4840 = phi float [ %4465, %4464 ], [ %4465, %4474 ], [ %4830, %4838 ]
  %4841 = phi float [ %4466, %4464 ], [ %4466, %4474 ], [ %4831, %4838 ]
  %4842 = phi float [ %4467, %4464 ], [ %4467, %4474 ], [ %4832, %4838 ]
  %4843 = phi float [ %4468, %4464 ], [ %4468, %4474 ], [ %4833, %4838 ]
  %4844 = phi float [ %4469, %4464 ], [ %4469, %4474 ], [ %4834, %4838 ]
  %4845 = phi float [ %4470, %4464 ], [ %4470, %4474 ], [ %4835, %4838 ]
  %4846 = call float @dx.op.unary.f32(i32 24, float %4091)  ; Sqrt(value)
  %4847 = call float @dx.op.unary.f32(i32 24, float %4092)  ; Sqrt(value)
  %4848 = call float @dx.op.unary.f32(i32 24, float %4093)  ; Sqrt(value)
  %4849 = fmul fast float %4846, %4843
  %4850 = fmul fast float %4847, %4844
  %4851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4852 = extractvalue %dx.types.CBufRet.f32 %4851, 0
  br i1 %173, label %4853, label %4873

; <label>:4853                                    ; preds = %4839
  %4854 = fadd fast float %3462, %4845
  %4855 = fmul fast float %4854, %3443
  %4856 = fsub fast float 1.000000e+00, %3443
  %4857 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4859 = extractvalue %dx.types.CBufRet.f32 %4858, 3
  %4860 = fmul fast float %4859, %4857
  %4861 = fadd fast float %4860, %4855
  %4862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4863 = extractvalue %dx.types.CBufRet.f32 %4862, 0
  %4864 = fmul fast float %4863, %4274
  %4865 = fsub fast float %4861, %4864
  %4866 = fadd fast float %4850, %4849
  %4867 = fmul fast float %4852, %4866
  %4868 = extractvalue %dx.types.CBufRet.f32 %4858, 1
  %4869 = fsub fast float %4865, %4868
  %4870 = extractvalue %dx.types.CBufRet.f32 %4858, 2
  %4871 = fmul fast float %4869, %4870
  %4872 = call float @dx.op.unary.f32(i32 7, float %4871)  ; Saturate(value)
  br label %4889

; <label>:4873                                    ; preds = %4839
  %4874 = fmul fast float %4848, %4845
  %4875 = fmul fast float %4852, %4849
  %4876 = fmul fast float %4852, %4850
  %4877 = fmul fast float %4874, %4852
  %4878 = add i32 %30, 356
  %4879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4878, i32 undef)  ; BufferLoad(srv,index,wot)
  %4880 = extractvalue %dx.types.ResRet.i32 %4879, 0
  %4881 = and i32 %4880, 32
  %4882 = icmp eq i32 %4881, 0
  br i1 %4882, label %4889, label %4883

; <label>:4883                                    ; preds = %4873
  %4884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4885 = extractvalue %dx.types.CBufRet.f32 %4884, 0
  %4886 = fmul fast float %4885, 0x3FE99999A0000000
  %4887 = fadd fast float %4885, %4875
  %4888 = fadd fast float %4886, %4877
  br label %4889

; <label>:4889                                    ; preds = %4883, %4873, %4853
  %4890 = phi float [ %4867, %4853 ], [ %4887, %4883 ], [ %4875, %4873 ]
  %4891 = phi float [ %4872, %4853 ], [ %4876, %4883 ], [ %4876, %4873 ]
  %4892 = phi float [ 1.000000e+00, %4853 ], [ %4888, %4883 ], [ %4877, %4873 ]
  %4893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4894 = extractvalue %dx.types.CBufRet.f32 %4893, 0
  %4895 = fmul fast float %4894, %4841
  %4896 = fmul fast float %4894, %4842
  %4897 = fadd fast float %4841, %4840
  %4898 = select i1 %173, float %4897, float %4840
  %4899 = fmul float %4898, %4894
  %4900 = select i1 %173, float 0.000000e+00, float %4895
  %4901 = select i1 %173, float 0.000000e+00, float %4896
  %4902 = fmul fast float %4890, %4846
  %4903 = fmul fast float %4891, %4847
  %4904 = fmul fast float %4892, %4848
  %4905 = fadd fast float %4899, %4902
  %4906 = fadd fast float %4900, %4903
  %4907 = fadd fast float %4901, %4904
  %4908 = select i1 %173, float %4891, float %4906
  %4909 = select i1 %173, float %4892, float %4907
  %4910 = call float @dx.op.binary.f32(i32 36, float %4905, float 3.225500e+04)  ; FMin(a,b)
  %4911 = call float @dx.op.binary.f32(i32 36, float %4908, float 3.225500e+04)  ; FMin(a,b)
  %4912 = call float @dx.op.binary.f32(i32 36, float %4909, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4910)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4911)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4912)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!43 = !{[46 x i32] [i32 44, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 7, i32 0]}
!44 = !{void ()* @ps_main, !"ps_main", !45, !4, !71}
!45 = !{!46, !69, null}
!46 = !{!47, !50, !52, !54, !56, !58, !59, !60, !62, !63, !64, !66, !68}
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
!58 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !48, i8 2, i32 1, i8 3, i32 5, i8 0, !55}
!59 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 6, i8 0, !57}
!60 = !{i32 7, !"COMP_FACTOR", i8 9, i8 0, !48, i8 2, i32 1, i8 1, i32 3, i8 3, !61}
!61 = !{i32 3, i32 1}
!62 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !48, i8 2, i32 1, i8 2, i32 7, i8 0, !53}
!63 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 8, i8 0, !57}
!64 = !{i32 10, !"OBJECT_POSITION", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 9, i8 0, !65}
!65 = !{i32 3, i32 8}
!66 = !{i32 11, !"PACKED_TRI_DATA", i8 5, i8 0, !48, i8 1, i32 1, i8 4, i32 10, i8 0, !67}
!67 = !{i32 3, i32 5}
!68 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !48, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!69 = !{!70}
!70 = !{i32 0, !"SV_Target", i8 9, i8 16, !48, i8 0, i32 1, i8 4, i32 0, i8 0, !57}
!71 = !{i32 0, i64 24}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}

