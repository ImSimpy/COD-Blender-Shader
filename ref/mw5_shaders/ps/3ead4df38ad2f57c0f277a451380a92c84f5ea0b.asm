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
; SECONDARY_TEXCOORDS      0   xy          7     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        8     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw        9     NONE    uint   x zw
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: e87be514120fde33ec805b354ab630a6
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
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
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
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32          3d      T2      t0,space7unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture    byte         r/o      T5      t3,space1     1
;                                   texture    byte         r/o      T6      t4,space1     1
;                                   texture    byte         r/o      T7      t5,space1     1
;                                   texture    byte         r/o      T8      t6,space1     1
;                                   texture     f32          2d      T9     t69,space2     1
;                                   texture    byte         r/o     T10     t49,space1     1
;                                   texture    byte         r/o     T11     t50,space1     1
;                                   texture    byte         r/o     T12     t51,space1     1
;                                   texture    byte         r/o     T13     t52,space1     1
;                                   texture    byte         r/o     T14     t16,space1     1
;                                   texture    byte         r/o     T15     t17,space1     1
;                                   texture     f32          2d     T16     t37,space2     1
;                                   texture     f32          2d     T17             t0     1
;                                   texture     f32     2darray     T18     t49,space2     1
;                                   texture     f32          2d     T19     t58,space2     1
;                                   texture     f32          2d     T20     t57,space2     1
;                                   texture    byte         r/o     T21     t69,space1     1
;                                   texture     f32     2darray     T22     t35,space2     1
;                                   texture     f32          2d     T23     t34,space2     1
;                                   texture     f32          3d     T24     t31,space2     1
;                                   texture    byte         r/o     T25     t68,space1     1
;                                   texture     f32          2d     T26      t0,space2     1
;                                   texture     f32          2d     T27     t48,space2     1
;
;
; ViewId state:
;
; Number of inputs: 40, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %64 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = fmul fast float %66, %60
  %68 = fmul fast float %66, %61
  %69 = call float @dx.op.dot3.f32(i32 55, float %52, float %53, float %54, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %70 = bitcast float %69 to i32
  %71 = ashr i32 %70, 1
  %72 = sub nsw i32 1597250115, %71
  %73 = bitcast i32 %72 to float
  %74 = fmul fast float %73, %52
  %75 = fmul fast float %73, %53
  %76 = fmul fast float %73, %54
  %77 = fmul fast float %53, %50
  %78 = fmul fast float %54, %49
  %79 = fsub fast float %77, %78
  %80 = fmul fast float %54, %48
  %81 = fmul fast float %52, %50
  %82 = fsub fast float %80, %81
  %83 = fmul fast float %52, %49
  %84 = fmul fast float %53, %48
  %85 = fsub fast float %83, %84
  %86 = fmul fast float %79, %51
  %87 = fmul fast float %82, %51
  %88 = fmul fast float %85, %51
  %89 = call float @dx.op.dot3.f32(i32 55, float %41, float %42, float %43, float %41, float %42, float %43)  ; Dot3(ax,ay,az,bx,by,bz)
  %90 = bitcast float %89 to i32
  %91 = ashr i32 %90, 1
  %92 = sub nsw i32 1597250115, %91
  %93 = bitcast i32 %92 to float
  %94 = fmul fast float %93, %41
  %95 = fmul fast float %93, %42
  %96 = fmul fast float %93, %43
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %99 = extractvalue %dx.types.CBufRet.f32 %97, 3
  %100 = fmul fast float %67, 2.000000e+00
  %101 = fmul fast float %100, %98
  %102 = fmul fast float %68, 2.000000e+00
  %103 = fmul fast float %102, %99
  %104 = fsub fast float 1.000000e+00, %101
  %105 = fsub fast float 1.000000e+00, %103
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = fmul fast float %104, %107
  %111 = fmul fast float %104, %108
  %112 = fmul fast float %104, %109
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %117 = fmul fast float %105, %114
  %118 = fmul fast float %105, %115
  %119 = fmul fast float %105, %116
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = fadd fast float %117, %121
  %125 = fadd fast float %124, %110
  %126 = fadd fast float %118, %122
  %127 = fadd fast float %126, %111
  %128 = fadd fast float %119, %123
  %129 = fadd fast float %128, %112
  %130 = fmul fast float %125, %62
  %131 = fmul fast float %127, %62
  %132 = fmul fast float %129, %62
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 3
  %136 = fmul fast float %134, %67
  %137 = fmul fast float %135, %68
  %138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %139 = extractvalue %dx.types.ResRet.i32 %138, 0
  %140 = and i32 %139, 114688
  %141 = icmp ne i32 %140, 0
  %142 = select i1 %141, float %136, float 0.000000e+00
  %143 = select i1 %141, float %137, float 0.000000e+00
  %144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %29, float %142, float %143, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %145 = extractvalue %dx.types.ResRet.f32 %144, 0
  %146 = fmul fast float %145, 2.550000e+02
  %147 = fptoui float %146 to i32
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.i32 %149, 3
  %151 = and i32 %150, 3
  %152 = icmp ne i32 %151, 0
  %153 = and i32 %150, 4
  %154 = icmp ne i32 %153, 0
  %155 = and i1 %152, %154
  br i1 %155, label %156, label %167

; <label>:156                                     ; preds = %0
  %157 = extractvalue %dx.types.CBufRet.f32 %148, 3
  %158 = fmul fast float %157, %68
  %159 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %160 = fmul fast float %159, %67
  %161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %28, float %160, float %158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %162 = extractvalue %dx.types.ResRet.f32 %161, 0
  %163 = fsub fast float 1.000000e+00, %162
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = fcmp fast olt float %163, %165
  br label %170

; <label>:167                                     ; preds = %0
  %168 = icmp eq i32 %153, 0
  %169 = and i1 %152, %168
  br label %170

; <label>:170                                     ; preds = %167, %156
  %171 = phi i1 [ %166, %156 ], [ %169, %167 ]
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %174 = fmul fast float %173, 0x3FE3C6EF40000000
  %175 = frem fast float %67, 2.560000e+02
  %176 = frem fast float %68, 2.560000e+02
  %177 = fptoui float %175 to i32
  %178 = fptoui float %176 to i32
  %179 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %177, i32 %178, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = extractvalue %dx.types.ResRet.f32 %179, 1
  %182 = fadd fast float %180, %174
  %183 = fadd fast float %181, %174
  %184 = call float @dx.op.unary.f32(i32 22, float %182)  ; Frc(value)
  %185 = call float @dx.op.unary.f32(i32 22, float %183)  ; Frc(value)
  %186 = add i32 %32, 156
  %187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %186, i32 undef)  ; BufferLoad(srv,index,wot)
  %188 = extractvalue %dx.types.ResRet.i32 %187, 0
  %189 = shl i32 %188, 4
  %190 = and i32 %189, 32752
  %191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %190)  ; LegacyF16ToF32(value)
  %192 = lshr i32 %188, 7
  %193 = and i32 %192, 32752
  %194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %193)  ; LegacyF16ToF32(value)
  %195 = lshr i32 %188, 22
  %196 = shl nuw nsw i32 %195, 5
  %197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %196)  ; LegacyF16ToF32(value)
  %198 = add i32 %32, 216
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = and i32 %200, 255
  %202 = uitofp i32 %201 to float
  %203 = fmul fast float %202, 0x3F70101020000000
  %204 = lshr i32 %200, 8
  %205 = and i32 %204, 255
  %206 = uitofp i32 %205 to float
  %207 = fmul fast float %206, 0x3F70101020000000
  %208 = lshr i32 %200, 16
  %209 = and i32 %208, 255
  %210 = uitofp i32 %209 to float
  %211 = fmul fast float %210, 0x3F70101020000000
  %212 = add i32 %32, 36
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = and i32 %214, 65535
  %216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %215)  ; LegacyF16ToF32(value)
  %217 = lshr i32 %214, 16
  %218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %217)  ; LegacyF16ToF32(value)
  %219 = add i32 %32, 288
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = and i32 %221, 65535
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %221, 16
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = fmul fast float %223, 0x3F50624DE0000000
  %227 = fmul fast float %225, 0x3F50624DE0000000
  %228 = add i32 %32, 172
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = shl i32 %230, 4
  %232 = and i32 %231, 32752
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = lshr i32 %230, 7
  %235 = and i32 %234, 32752
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = lshr i32 %230, 22
  %238 = shl nuw nsw i32 %237, 5
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = add i32 %32, 232
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = and i32 %242, 255
  %244 = uitofp i32 %243 to float
  %245 = fmul fast float %244, 0x3F70101020000000
  %246 = lshr i32 %242, 8
  %247 = and i32 %246, 255
  %248 = uitofp i32 %247 to float
  %249 = fmul fast float %248, 0x3F70101020000000
  %250 = lshr i32 %242, 16
  %251 = and i32 %250, 255
  %252 = uitofp i32 %251 to float
  %253 = fmul fast float %252, 0x3F70101020000000
  %254 = add i32 %32, 52
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = and i32 %256, 65535
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = lshr i32 %256, 16
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = add i32 %32, 304
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 65535
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %263, 16
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = fmul fast float %265, 0x3F50624DE0000000
  %269 = fmul fast float %267, 0x3F50624DE0000000
  %270 = add i32 %32, 188
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = shl i32 %272, 4
  %274 = and i32 %273, 32752
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = lshr i32 %272, 7
  %277 = and i32 %276, 32752
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %272, 22
  %280 = shl nuw nsw i32 %279, 5
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = add i32 %32, 248
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 255
  %286 = uitofp i32 %285 to float
  %287 = fmul fast float %286, 0x3F70101020000000
  %288 = lshr i32 %284, 8
  %289 = and i32 %288, 255
  %290 = uitofp i32 %289 to float
  %291 = fmul fast float %290, 0x3F70101020000000
  %292 = lshr i32 %284, 16
  %293 = and i32 %292, 255
  %294 = uitofp i32 %293 to float
  %295 = fmul fast float %294, 0x3F70101020000000
  %296 = add i32 %32, 68
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = and i32 %298, 65535
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = lshr i32 %298, 16
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = add i32 %32, 320
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 65535
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %305, 16
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = fmul fast float %307, 0x3F50624DE0000000
  %311 = fmul fast float %309, 0x3F50624DE0000000
  %312 = add i32 %32, 204
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = shl i32 %314, 4
  %316 = and i32 %315, 32752
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %314, 7
  %319 = and i32 %318, 32752
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = lshr i32 %314, 22
  %322 = shl nuw nsw i32 %321, 5
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = add i32 %32, 264
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %326, 255
  %328 = uitofp i32 %327 to float
  %329 = fmul fast float %328, 0x3F70101020000000
  %330 = lshr i32 %326, 8
  %331 = and i32 %330, 255
  %332 = uitofp i32 %331 to float
  %333 = fmul fast float %332, 0x3F70101020000000
  %334 = lshr i32 %326, 16
  %335 = and i32 %334, 255
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %336, 0x3F70101020000000
  %338 = add i32 %32, 84
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = and i32 %340, 65535
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = lshr i32 %340, 16
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = add i32 %32, 336
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 65535
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %347, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = fmul fast float %349, 0x3F50624DE0000000
  %353 = fmul fast float %351, 0x3F50624DE0000000
  %354 = add i32 %32, 348
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 32
  %358 = icmp eq i32 %357, 0
  %359 = and i32 %356, 64
  %360 = icmp eq i32 %359, 0
  %361 = and i32 %356, 128
  %362 = icmp eq i32 %361, 0
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = and i32 %364, 2
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %380, label %367

; <label>:367                                     ; preds = %170
  %368 = add i32 %32, 492
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = add i32 %370, 0
  %372 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %371, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %373 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %372, %dx.types.Handle %64, float %55, float %56, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %374 = extractvalue %dx.types.ResRet.f32 %373, 0
  %375 = extractvalue %dx.types.ResRet.f32 %373, 1
  %376 = extractvalue %dx.types.ResRet.f32 %373, 2
  %377 = fmul fast float %374, %57
  %378 = fmul fast float %375, %58
  %379 = fmul fast float %376, %59
  br label %380

; <label>:380                                     ; preds = %367, %170
  %381 = phi float [ %59, %170 ], [ %379, %367 ]
  %382 = phi float [ %58, %170 ], [ %378, %367 ]
  %383 = phi float [ %57, %170 ], [ %377, %367 ]
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 2
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %407, label %388

; <label>:388                                     ; preds = %380
  %389 = add i32 %32, 44
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = and i32 %391, 1
  %393 = icmp ne i32 %392, 0
  %394 = select i1 %393, float %383, float 1.000000e+00
  %395 = add i32 %32, 60
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = and i32 %397, 1
  %399 = icmp ne i32 %398, 0
  %400 = select i1 %399, float %382, float 1.000000e+00
  %401 = add i32 %32, 76
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = and i32 %403, 1
  %405 = icmp ne i32 %404, 0
  %406 = select i1 %405, float %381, float 1.000000e+00
  br label %407

; <label>:407                                     ; preds = %388, %380
  %408 = phi float [ %381, %380 ], [ %406, %388 ]
  %409 = phi float [ %382, %380 ], [ %400, %388 ]
  %410 = phi float [ %383, %380 ], [ %394, %388 ]
  %411 = lshr i32 %385, 20
  %412 = and i32 %411, 3
  %413 = add nuw nsw i32 %412, 1
  %414 = add i32 %32, 24
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = add i32 %32, 28
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = or i32 %419, %416
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %880, label %422

; <label>:422                                     ; preds = %407
  %423 = and i32 %416, 262144
  %424 = icmp ne i32 %423, 0
  %425 = select i1 %424, float %35, float 1.000000e+00
  %426 = select i1 %424, float %36, float 0.000000e+00
  %427 = select i1 %424, float %37, float 0.000000e+00
  %428 = select i1 %424, float %38, float 1.000000e+00
  %429 = select i1 %424, float %39, float %55
  %430 = select i1 %424, float %40, float %56
  %431 = add i32 %32, 284
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = lshr i32 %433, 16
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = fmul fast float %435, 0x3F50624DE0000000
  %437 = add i32 %32, 88
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = lshr i32 %439, 16
  %441 = and i32 %440, 255
  %442 = lshr i32 %439, 24
  %443 = add i32 %32, 292
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = and i32 %445, 65535
  %447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %446)  ; LegacyF16ToF32(value)
  %448 = lshr i32 %445, 16
  %449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %448)  ; LegacyF16ToF32(value)
  %450 = add i32 %32, 32
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = lshr i32 %452, 22
  %454 = shl nuw nsw i32 %453, 5
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = shl i32 %452, 4
  %457 = and i32 %456, 32752
  %458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %457)  ; LegacyF16ToF32(value)
  %459 = lshr i32 %452, 7
  %460 = and i32 %459, 32752
  %461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %460)  ; LegacyF16ToF32(value)
  %462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.f32 %462, 3
  %464 = fmul fast float %463, 1.000000e+03
  %465 = fmul fast float %226, %464
  %466 = call float @dx.op.unary.f32(i32 22, float %465)  ; Frc(value)
  %467 = fadd fast float %466, %216
  %468 = fmul fast float %227, %464
  %469 = call float @dx.op.unary.f32(i32 22, float %468)  ; Frc(value)
  %470 = fadd fast float %469, %218
  %471 = fmul fast float %436, %464
  %472 = call float @dx.op.unary.f32(i32 22, float %471)  ; Frc(value)
  %473 = fmul fast float %472, 0x401921FB60000000
  %474 = fadd fast float %473, %455
  %475 = call float @dx.op.unary.f32(i32 13, float %474)  ; Sin(value)
  %476 = call float @dx.op.unary.f32(i32 12, float %474)  ; Cos(value)
  %477 = fsub fast float -0.000000e+00, %475
  %478 = fadd fast float %429, -5.000000e-01
  %479 = fadd fast float %430, -5.000000e-01
  %480 = fmul fast float %447, %478
  %481 = fmul fast float %449, %479
  %482 = fadd fast float %480, 5.000000e-01
  %483 = fadd fast float %481, 5.000000e-01
  %484 = fmul fast float %458, %482
  %485 = fmul fast float %461, %483
  %486 = fmul fast float %476, %484
  %487 = call float @dx.op.tertiary.f32(i32 46, float %477, float %485, float %486)  ; FMad(a,b,c)
  %488 = fmul fast float %475, %484
  %489 = call float @dx.op.tertiary.f32(i32 46, float %476, float %485, float %488)  ; FMad(a,b,c)
  %490 = fadd fast float %467, %487
  %491 = fadd fast float %470, %489
  %492 = icmp ugt i32 %441, 1
  %493 = icmp ugt i32 %439, 33554431
  %494 = or i1 %493, %492
  br i1 %494, label %495, label %520

; <label>:495                                     ; preds = %422
  %496 = add i32 %32, 228
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = lshr i32 %498, 16
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = fmul fast float %463, %500
  %502 = call float @dx.op.unary.f32(i32 22, float %501)  ; Frc(value)
  %503 = mul nuw nsw i32 %441, %442
  %504 = uitofp i32 %503 to float
  %505 = fmul fast float %502, %504
  %506 = call float @dx.op.unary.f32(i32 27, float %505)  ; Round_ni(value)
  %507 = fptoui float %506 to i32
  %508 = urem i32 %507, %441
  %509 = udiv i32 %507, %442
  %510 = call float @dx.op.unary.f32(i32 22, float %490)  ; Frc(value)
  %511 = call float @dx.op.unary.f32(i32 22, float %491)  ; Frc(value)
  %512 = uitofp i32 %508 to float
  %513 = uitofp i32 %509 to float
  %514 = fadd fast float %510, %512
  %515 = fadd fast float %511, %513
  %516 = uitofp i32 %441 to float
  %517 = uitofp i32 %442 to float
  %518 = fdiv fast float %514, %516
  %519 = fdiv fast float %515, %517
  br label %520

; <label>:520                                     ; preds = %495, %422
  %521 = phi float [ %518, %495 ], [ %490, %422 ]
  %522 = phi float [ %519, %495 ], [ %491, %422 ]
  %523 = and i32 %416, 16
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %721, label %525

; <label>:525                                     ; preds = %520
  %526 = add i32 %32, 376
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = add i32 %528, 0
  %530 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %529, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %531 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %530, %dx.types.Handle %63, float %521, float %522, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %532 = extractvalue %dx.types.ResRet.f32 %531, 0
  %533 = extractvalue %dx.types.ResRet.f32 %531, 1
  %534 = extractvalue %dx.types.ResRet.f32 %531, 2
  %535 = extractvalue %dx.types.ResRet.f32 %531, 3
  %536 = and i32 %439, 255
  %537 = uitofp i32 %536 to float
  %538 = lshr i32 %439, 8
  %539 = and i32 %538, 255
  %540 = uitofp i32 %539 to float
  %541 = fmul fast float %535, %537
  %542 = fadd fast float %541, %540
  %543 = fmul fast float %542, 0x3F70101000000000
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = and i32 %545, 512
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %556, label %548

; <label>:548                                     ; preds = %525
  %549 = add i32 %32, 460
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = add i32 %551, 0
  %553 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %552, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %554 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %553, %dx.types.Handle %64, float %521, float %522, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %555 = extractvalue %dx.types.ResRet.f32 %554, 0
  br label %556

; <label>:556                                     ; preds = %548, %525
  %557 = phi float [ %555, %548 ], [ 1.000000e+00, %525 ]
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = and i32 %559, 33554432
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %668, label %562

; <label>:562                                     ; preds = %556
  %563 = add i32 %32, 224
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = and i32 %565, 65535
  %567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %566)  ; LegacyF16ToF32(value)
  %568 = lshr i32 %565, 16
  %569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %568)  ; LegacyF16ToF32(value)
  %570 = add i32 %32, 228
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = and i32 %572, 65535
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = lshr i32 %576, 24
  %578 = uitofp i32 %577 to float
  %579 = fmul fast float %578, 0x3F70101020000000
  %580 = and i32 %576, 255
  %581 = uitofp i32 %580 to float
  %582 = fmul fast float %581, 0x3F70101020000000
  %583 = lshr i32 %576, 8
  %584 = and i32 %583, 255
  %585 = uitofp i32 %584 to float
  %586 = fmul fast float %585, 0x3F70101020000000
  %587 = lshr i32 %576, 16
  %588 = and i32 %587, 255
  %589 = uitofp i32 %588 to float
  %590 = fmul fast float %589, 0x3F70101020000000
  %591 = add i32 %32, 220
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = lshr i32 %593, 24
  %595 = uitofp i32 %594 to float
  %596 = fmul fast float %595, 0x3F70101020000000
  %597 = and i32 %593, 255
  %598 = uitofp i32 %597 to float
  %599 = fmul fast float %598, 0x3F70101020000000
  %600 = lshr i32 %593, 8
  %601 = and i32 %600, 255
  %602 = uitofp i32 %601 to float
  %603 = fmul fast float %602, 0x3F70101020000000
  %604 = lshr i32 %593, 16
  %605 = and i32 %604, 255
  %606 = uitofp i32 %605 to float
  %607 = fmul fast float %606, 0x3F70101020000000
  %608 = bitcast float %532 to i32
  %609 = ashr i32 %608, 1
  %610 = sub nsw i32 1597463174, %609
  %611 = bitcast i32 %610 to float
  %612 = fmul fast float %532, 5.000000e-01
  %613 = fmul fast float %611, %611
  %614 = fmul fast float %613, %612
  %615 = fsub fast float 1.500000e+00, %614
  %616 = fmul fast float %611, %532
  %617 = fmul fast float %616, %615
  %618 = bitcast float %533 to i32
  %619 = ashr i32 %618, 1
  %620 = sub nsw i32 1597463174, %619
  %621 = bitcast i32 %620 to float
  %622 = fmul fast float %533, 5.000000e-01
  %623 = fmul fast float %621, %621
  %624 = fmul fast float %623, %622
  %625 = fsub fast float 1.500000e+00, %624
  %626 = fmul fast float %621, %533
  %627 = fmul fast float %626, %625
  %628 = bitcast float %534 to i32
  %629 = ashr i32 %628, 1
  %630 = sub nsw i32 1597463174, %629
  %631 = bitcast i32 %630 to float
  %632 = fmul fast float %534, 5.000000e-01
  %633 = fmul fast float %631, %631
  %634 = fmul fast float %633, %632
  %635 = fsub fast float 1.500000e+00, %634
  %636 = fmul fast float %631, %534
  %637 = fmul fast float %636, %635
  %638 = fsub fast float %617, %599
  %639 = fsub fast float %627, %603
  %640 = fsub fast float %637, %607
  %641 = fmul fast float %638, %567
  %642 = fmul fast float %639, %569
  %643 = fmul fast float %640, %574
  %644 = fadd fast float %641, %582
  %645 = fadd fast float %642, %586
  %646 = fadd fast float %643, %590
  %647 = call float @dx.op.unary.f32(i32 7, float %644)  ; Saturate(value)
  %648 = call float @dx.op.unary.f32(i32 7, float %645)  ; Saturate(value)
  %649 = call float @dx.op.unary.f32(i32 7, float %646)  ; Saturate(value)
  %650 = fmul fast float %647, %647
  %651 = fmul fast float %648, %648
  %652 = fmul fast float %649, %649
  %653 = fsub fast float %650, %532
  %654 = fsub fast float %651, %533
  %655 = fsub fast float %652, %534
  %656 = fmul fast float %653, %557
  %657 = fmul fast float %654, %557
  %658 = fmul fast float %655, %557
  %659 = fadd fast float %656, %532
  %660 = fadd fast float %657, %533
  %661 = fadd fast float %658, %534
  %662 = fadd fast float %579, %543
  %663 = fsub fast float %662, %596
  %664 = call float @dx.op.unary.f32(i32 7, float %663)  ; Saturate(value)
  %665 = fsub fast float %664, %543
  %666 = fmul fast float %665, %557
  %667 = fadd fast float %666, %543
  br label %721

; <label>:668                                     ; preds = %556
  %669 = and i32 %559, 134217728
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %705, label %671

; <label>:671                                     ; preds = %668
  %672 = call float @dx.op.unary.f32(i32 24, float %203)  ; Sqrt(value)
  %673 = call float @dx.op.unary.f32(i32 24, float %207)  ; Sqrt(value)
  %674 = call float @dx.op.unary.f32(i32 24, float %211)  ; Sqrt(value)
  %675 = fadd fast float %672, -5.000000e-01
  %676 = fadd fast float %673, -5.000000e-01
  %677 = fadd fast float %674, -5.000000e-01
  %678 = fmul fast float %675, %557
  %679 = fmul fast float %676, %557
  %680 = fmul fast float %677, %557
  %681 = fadd fast float %678, 5.000000e-01
  %682 = fadd fast float %679, 5.000000e-01
  %683 = fadd fast float %680, 5.000000e-01
  %684 = call float @dx.op.unary.f32(i32 24, float %532)  ; Sqrt(value)
  %685 = call float @dx.op.unary.f32(i32 24, float %533)  ; Sqrt(value)
  %686 = call float @dx.op.unary.f32(i32 24, float %534)  ; Sqrt(value)
  %687 = fmul fast float %681, 2.000000e+00
  %688 = fsub fast float 1.000000e+00, %687
  %689 = fmul fast float %688, %684
  %690 = fadd fast float %689, %687
  %691 = fmul fast float %690, %684
  %692 = fmul fast float %682, 2.000000e+00
  %693 = fsub fast float 1.000000e+00, %692
  %694 = fmul fast float %693, %685
  %695 = fadd fast float %694, %692
  %696 = fmul fast float %695, %685
  %697 = fmul fast float %683, 2.000000e+00
  %698 = fsub fast float 1.000000e+00, %697
  %699 = fmul fast float %698, %686
  %700 = fadd fast float %699, %697
  %701 = fmul fast float %700, %686
  %702 = fmul fast float %691, %691
  %703 = fmul fast float %696, %696
  %704 = fmul fast float %701, %701
  br label %721

; <label>:705                                     ; preds = %668
  %706 = fmul fast float %203, %203
  %707 = fmul fast float %207, %207
  %708 = fmul fast float %211, %211
  %709 = fadd fast float %706, -1.000000e+00
  %710 = fadd fast float %707, -1.000000e+00
  %711 = fadd fast float %708, -1.000000e+00
  %712 = fmul fast float %557, %709
  %713 = fmul fast float %557, %710
  %714 = fmul fast float %557, %711
  %715 = fadd fast float %712, 1.000000e+00
  %716 = fadd fast float %713, 1.000000e+00
  %717 = fadd fast float %714, 1.000000e+00
  %718 = fmul fast float %715, %532
  %719 = fmul fast float %716, %533
  %720 = fmul fast float %717, %534
  br label %721

; <label>:721                                     ; preds = %705, %671, %562, %520
  %722 = phi float [ %667, %562 ], [ %543, %671 ], [ %543, %705 ], [ 0x3FA23C0BE0000000, %520 ]
  %723 = phi float [ %659, %562 ], [ %702, %671 ], [ %718, %705 ], [ 1.000000e+00, %520 ]
  %724 = phi float [ %660, %562 ], [ %703, %671 ], [ %719, %705 ], [ 1.000000e+00, %520 ]
  %725 = phi float [ %661, %562 ], [ %704, %671 ], [ %720, %705 ], [ 1.000000e+00, %520 ]
  %726 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %727 = extractvalue %dx.types.CBufRet.i32 %726, 1
  %728 = and i32 %727, 1
  %729 = icmp ne i32 %728, 0
  %730 = add i32 %32, 356
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %730, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = and i32 %732, 32
  %734 = icmp ne i32 %733, 0
  %735 = and i1 %729, %734
  %736 = select i1 %735, float 1.000000e+00, float %723
  %737 = select i1 %735, float 0x3FD3333340000000, float %724
  %738 = select i1 %735, float 0x3FD3333340000000, float %725
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = and i32 %740, 32
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %815, label %743

; <label>:743                                     ; preds = %721
  %744 = add i32 %32, 92
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = add i32 %32, 392
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %747, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = add i32 %749, 0
  %751 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %750, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %752 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %751, %dx.types.Handle %63, float %521, float %522, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %753 = extractvalue %dx.types.ResRet.f32 %752, 0
  %754 = extractvalue %dx.types.ResRet.f32 %752, 1
  %755 = extractvalue %dx.types.ResRet.f32 %752, 2
  %756 = extractvalue %dx.types.ResRet.f32 %752, 3
  %757 = and i32 %746, 255
  %758 = uitofp i32 %757 to float
  %759 = lshr i32 %746, 8
  %760 = and i32 %759, 255
  %761 = uitofp i32 %760 to float
  %762 = lshr i32 %746, 16
  %763 = and i32 %762, 255
  %764 = uitofp i32 %763 to float
  %765 = fmul fast float %764, 0x3F70101000000000
  %766 = fmul fast float %753, %758
  %767 = fadd fast float %766, %761
  %768 = fmul fast float %767, 0x3F70101000000000
  %769 = fadd fast float %754, -5.000000e-01
  %770 = fadd fast float %756, -5.000000e-01
  %771 = fmul fast float %769, %765
  %772 = fmul fast float %770, %765
  %773 = fadd fast float %771, 5.000000e-01
  %774 = fadd fast float %772, 5.000000e-01
  %775 = fmul fast float %773, 2.000000e+00
  %776 = fadd fast float %775, -1.000000e+00
  %777 = fmul fast float %774, 2.000000e+00
  %778 = fadd fast float %777, -1.000000e+00
  %779 = fadd fast float %776, %778
  %780 = fmul fast float %779, 5.000000e-01
  %781 = fsub fast float %776, %778
  %782 = fmul fast float %781, 5.000000e-01
  %783 = call float @dx.op.unary.f32(i32 6, float %780)  ; FAbs(value)
  %784 = fsub fast float 1.000000e+00, %783
  %785 = call float @dx.op.unary.f32(i32 6, float %782)  ; FAbs(value)
  %786 = fsub fast float %784, %785
  %787 = call float @dx.op.dot3.f32(i32 55, float %780, float %782, float %786, float %780, float %782, float %786)  ; Dot3(ax,ay,az,bx,by,bz)
  %788 = call float @dx.op.unary.f32(i32 25, float %787)  ; Rsqrt(value)
  %789 = fmul fast float %780, %788
  %790 = fmul fast float %782, %788
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = and i32 %792, 67108864
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %811, label %795

; <label>:795                                     ; preds = %743
  %796 = add i32 %32, 280
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = and i32 %798, 65535
  %800 = call float @dx.op.legacyF16ToF32(i32 131, i32 %799)  ; LegacyF16ToF32(value)
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = and i32 %802, 65535
  %804 = call float @dx.op.legacyF16ToF32(i32 131, i32 %803)  ; LegacyF16ToF32(value)
  %805 = lshr i32 %798, 16
  %806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %805)  ; LegacyF16ToF32(value)
  %807 = fsub fast float %768, %806
  %808 = fmul fast float %807, %800
  %809 = fadd fast float %808, %804
  %810 = call float @dx.op.unary.f32(i32 7, float %809)  ; Saturate(value)
  br label %811

; <label>:811                                     ; preds = %795, %743
  %812 = phi float [ %810, %795 ], [ %768, %743 ]
  %813 = call float @dx.op.dot2.f32(i32 54, float %789, float %790, float %425, float %426)  ; Dot2(ax,ay,bx,by)
  %814 = call float @dx.op.dot2.f32(i32 54, float %789, float %790, float %427, float %428)  ; Dot2(ax,ay,bx,by)
  br label %815

; <label>:815                                     ; preds = %811, %721
  %816 = phi float [ %812, %811 ], [ 0x3FD6666660000000, %721 ]
  %817 = phi float [ %813, %811 ], [ 0.000000e+00, %721 ]
  %818 = phi float [ %814, %811 ], [ 0.000000e+00, %721 ]
  %819 = phi float [ %755, %811 ], [ 1.000000e+00, %721 ]
  %820 = add i32 %32, 160
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = lshr i32 %822, 22
  %824 = shl nuw nsw i32 %823, 5
  %825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %824)  ; LegacyF16ToF32(value)
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = and i32 %827, 64
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %863, label %830

; <label>:830                                     ; preds = %815
  %831 = add i32 %32, 408
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %831, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = add i32 %833, 0
  %835 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %834, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = and i32 %837, 131072
  %839 = icmp eq i32 %838, 0
  %840 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %835, %dx.types.Handle %63, float %521, float %522, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %841 = extractvalue %dx.types.ResRet.f32 %840, 0
  %842 = extractvalue %dx.types.ResRet.f32 %840, 1
  %843 = extractvalue %dx.types.ResRet.f32 %840, 2
  %844 = fmul fast float %841, %191
  %845 = fmul fast float %842, %194
  %846 = fmul fast float %843, %197
  br i1 %839, label %853, label %847

; <label>:847                                     ; preds = %830
  %848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %849 = extractvalue %dx.types.CBufRet.f32 %848, 0
  %850 = fmul fast float %849, %844
  %851 = fmul fast float %849, %845
  %852 = fmul fast float %849, %846
  br label %853

; <label>:853                                     ; preds = %847, %830
  %854 = phi float [ %850, %847 ], [ %844, %830 ]
  %855 = phi float [ %851, %847 ], [ %845, %830 ]
  %856 = phi float [ %852, %847 ], [ %846, %830 ]
  %857 = fmul fast float %854, %825
  %858 = select i1 %171, float %857, float %854
  %859 = call float @dx.op.dot3.f32(i32 55, float %858, float %855, float %856, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %860 = select i1 %171, float 0.000000e+00, float %854
  %861 = select i1 %171, float %859, float %855
  %862 = select i1 %171, float 0.000000e+00, float %856
  br label %863

; <label>:863                                     ; preds = %853, %815
  %864 = phi float [ %860, %853 ], [ 0.000000e+00, %815 ]
  %865 = phi float [ %861, %853 ], [ 0.000000e+00, %815 ]
  %866 = phi float [ %862, %853 ], [ 0.000000e+00, %815 ]
  %867 = add i32 %32, 96
  %868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.i32 %868, 0
  %870 = and i32 %869, 255
  %871 = uitofp i32 %870 to float
  %872 = lshr i32 %869, 8
  %873 = and i32 %872, 255
  %874 = uitofp i32 %873 to float
  %875 = call float @dx.op.dot3.f32(i32 55, float %736, float %737, float %738, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %876 = fmul fast float %874, %875
  %877 = fadd fast float %876, %871
  %878 = fmul fast float %877, 0x3F70101020000000
  %879 = call float @dx.op.unary.f32(i32 7, float %878)  ; Saturate(value)
  br label %880

; <label>:880                                     ; preds = %863, %407
  %881 = phi float [ 0.000000e+00, %407 ], [ %817, %863 ]
  %882 = phi float [ 0.000000e+00, %407 ], [ %818, %863 ]
  %883 = phi float [ 0.000000e+00, %407 ], [ %736, %863 ]
  %884 = phi float [ 0.000000e+00, %407 ], [ %737, %863 ]
  %885 = phi float [ 0.000000e+00, %407 ], [ %738, %863 ]
  %886 = phi float [ 0.000000e+00, %407 ], [ %864, %863 ]
  %887 = phi float [ 0.000000e+00, %407 ], [ %865, %863 ]
  %888 = phi float [ 0.000000e+00, %407 ], [ %866, %863 ]
  %889 = phi float [ 0.000000e+00, %407 ], [ %722, %863 ]
  %890 = phi float [ 0.000000e+00, %407 ], [ 1.000000e+00, %863 ]
  %891 = phi float [ 0.000000e+00, %407 ], [ %816, %863 ]
  %892 = phi float [ 0.000000e+00, %407 ], [ %819, %863 ]
  %893 = phi float [ 0.000000e+00, %407 ], [ %879, %863 ]
  br i1 %358, label %1735, label %894

; <label>:894                                     ; preds = %880
  %895 = icmp ult i32 %413, 2
  %896 = add i32 %32, 40
  %897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.i32 %897, 0
  %899 = add i32 %32, 44
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = or i32 %901, %898
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %1735, label %904

; <label>:904                                     ; preds = %894
  %905 = and i32 %898, 262144
  %906 = icmp ne i32 %905, 0
  %907 = select i1 %906, float %35, float 1.000000e+00
  %908 = select i1 %906, float %36, float 0.000000e+00
  %909 = select i1 %906, float %37, float 0.000000e+00
  %910 = select i1 %906, float %38, float 1.000000e+00
  %911 = select i1 %906, float %39, float %55
  %912 = select i1 %906, float %40, float %56
  %913 = add i32 %32, 300
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = lshr i32 %915, 16
  %917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %916)  ; LegacyF16ToF32(value)
  %918 = fmul fast float %917, 0x3F50624DE0000000
  %919 = add i32 %32, 104
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = lshr i32 %921, 16
  %923 = and i32 %922, 255
  %924 = lshr i32 %921, 24
  %925 = add i32 %32, 308
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = and i32 %927, 65535
  %929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %928)  ; LegacyF16ToF32(value)
  %930 = lshr i32 %927, 16
  %931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %930)  ; LegacyF16ToF32(value)
  %932 = add i32 %32, 48
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %932, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = lshr i32 %934, 22
  %936 = shl nuw nsw i32 %935, 5
  %937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %936)  ; LegacyF16ToF32(value)
  %938 = shl i32 %934, 4
  %939 = and i32 %938, 32752
  %940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %939)  ; LegacyF16ToF32(value)
  %941 = lshr i32 %934, 7
  %942 = and i32 %941, 32752
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %945 = extractvalue %dx.types.CBufRet.f32 %944, 3
  %946 = fmul fast float %945, 1.000000e+03
  %947 = fmul fast float %268, %946
  %948 = call float @dx.op.unary.f32(i32 22, float %947)  ; Frc(value)
  %949 = fadd fast float %948, %258
  %950 = fmul fast float %269, %946
  %951 = call float @dx.op.unary.f32(i32 22, float %950)  ; Frc(value)
  %952 = fadd fast float %951, %260
  %953 = fmul fast float %918, %946
  %954 = call float @dx.op.unary.f32(i32 22, float %953)  ; Frc(value)
  %955 = fmul fast float %954, 0x401921FB60000000
  %956 = fadd fast float %955, %937
  %957 = call float @dx.op.unary.f32(i32 13, float %956)  ; Sin(value)
  %958 = call float @dx.op.unary.f32(i32 12, float %956)  ; Cos(value)
  %959 = fsub fast float -0.000000e+00, %957
  %960 = fadd fast float %911, -5.000000e-01
  %961 = fadd fast float %912, -5.000000e-01
  %962 = fmul fast float %929, %960
  %963 = fmul fast float %931, %961
  %964 = fadd fast float %962, 5.000000e-01
  %965 = fadd fast float %963, 5.000000e-01
  %966 = fmul fast float %940, %964
  %967 = fmul fast float %943, %965
  %968 = fmul fast float %958, %966
  %969 = call float @dx.op.tertiary.f32(i32 46, float %959, float %967, float %968)  ; FMad(a,b,c)
  %970 = fmul fast float %957, %966
  %971 = call float @dx.op.tertiary.f32(i32 46, float %958, float %967, float %970)  ; FMad(a,b,c)
  %972 = fadd fast float %949, %969
  %973 = fadd fast float %952, %971
  %974 = icmp ugt i32 %923, 1
  %975 = icmp ugt i32 %921, 33554431
  %976 = or i1 %975, %974
  br i1 %976, label %977, label %1002

; <label>:977                                     ; preds = %904
  %978 = add i32 %32, 244
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = lshr i32 %980, 16
  %982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %981)  ; LegacyF16ToF32(value)
  %983 = fmul fast float %945, %982
  %984 = call float @dx.op.unary.f32(i32 22, float %983)  ; Frc(value)
  %985 = mul nuw nsw i32 %923, %924
  %986 = uitofp i32 %985 to float
  %987 = fmul fast float %984, %986
  %988 = call float @dx.op.unary.f32(i32 27, float %987)  ; Round_ni(value)
  %989 = fptoui float %988 to i32
  %990 = urem i32 %989, %923
  %991 = udiv i32 %989, %924
  %992 = call float @dx.op.unary.f32(i32 22, float %972)  ; Frc(value)
  %993 = call float @dx.op.unary.f32(i32 22, float %973)  ; Frc(value)
  %994 = uitofp i32 %990 to float
  %995 = uitofp i32 %991 to float
  %996 = fadd fast float %992, %994
  %997 = fadd fast float %993, %995
  %998 = uitofp i32 %923 to float
  %999 = uitofp i32 %924 to float
  %1000 = fdiv fast float %996, %998
  %1001 = fdiv fast float %997, %999
  br label %1002

; <label>:1002                                    ; preds = %977, %904
  %1003 = phi float [ %1000, %977 ], [ %972, %904 ]
  %1004 = phi float [ %1001, %977 ], [ %973, %904 ]
  %1005 = and i32 %898, 16777216
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1116, label %1007

; <label>:1007                                    ; preds = %1002
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 0
  %1010 = extractvalue %dx.types.CBufRet.f32 %1008, 1
  %1011 = extractvalue %dx.types.CBufRet.f32 %1008, 2
  %1012 = fadd fast float %1009, %130
  %1013 = fadd fast float %1010, %131
  %1014 = fadd fast float %1011, %132
  %1015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1016 = extractvalue %dx.types.CBufRet.f32 %1015, 0
  %1017 = call float @dx.op.unary.f32(i32 7, float %1016)  ; Saturate(value)
  %1018 = icmp eq i32 %33, 65535
  br i1 %1018, label %1113, label %1019

; <label>:1019                                    ; preds = %1007
  %1020 = lshr i32 %33, 1
  %1021 = shl i32 %1020, 2
  %1022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.i32 %1022, 0
  %1024 = and i32 %33, 1
  %1025 = icmp ne i32 %1024, 0
  %1026 = lshr i32 %1023, 16
  %1027 = and i32 %1023, 65535
  %1028 = select i1 %1025, i32 %1026, i32 %1027
  %1029 = icmp eq i32 %1028, 65535
  br i1 %1029, label %1109, label %1030

; <label>:1030                                    ; preds = %1019
  %1031 = mul nuw nsw i32 %1028, 40
  %1032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.ResRet.f32 %1032, 1
  %1035 = extractvalue %dx.types.ResRet.f32 %1032, 2
  %1036 = add nuw nsw i32 %1031, 12
  %1037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1036, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.f32 %1037, 0
  %1039 = extractvalue %dx.types.ResRet.f32 %1037, 1
  %1040 = extractvalue %dx.types.ResRet.f32 %1037, 2
  %1041 = add nuw nsw i32 %1031, 24
  %1042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.f32 %1042, 0
  %1044 = extractvalue %dx.types.ResRet.f32 %1042, 1
  %1045 = extractvalue %dx.types.ResRet.f32 %1042, 2
  %1046 = add nuw nsw i32 %1031, 36
  %1047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = fsub fast float %1012, %1033
  %1050 = fsub fast float %1013, %1034
  %1051 = fsub fast float %1014, %1035
  %1052 = fmul fast float %1048, %1049
  %1053 = fmul fast float %1048, %1050
  %1054 = fmul fast float %1048, %1051
  %1055 = call float @dx.op.unary.f32(i32 27, float %1052)  ; Round_ni(value)
  %1056 = call float @dx.op.unary.f32(i32 27, float %1053)  ; Round_ni(value)
  %1057 = call float @dx.op.unary.f32(i32 27, float %1054)  ; Round_ni(value)
  %1058 = fadd fast float %1055, 5.000000e-01
  %1059 = fadd fast float %1056, 5.000000e-01
  %1060 = fadd fast float %1057, 5.000000e-01
  %1061 = fmul fast float %1058, %1038
  %1062 = fmul fast float %1059, %1039
  %1063 = fmul fast float %1060, %1040
  %1064 = shl i32 %33, 2
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = add i32 %1066, 0
  %1068 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1067, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1069 = call float @dx.op.unary.f32(i32 22, float %1061)  ; Frc(value)
  %1070 = call float @dx.op.unary.f32(i32 22, float %1062)  ; Frc(value)
  %1071 = call float @dx.op.unary.f32(i32 22, float %1063)  ; Frc(value)
  %1072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1068, %dx.types.Handle %29, float %1069, float %1070, float %1071, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1073 = extractvalue %dx.types.ResRet.f32 %1072, 0
  %1074 = extractvalue %dx.types.ResRet.f32 %1072, 1
  %1075 = extractvalue %dx.types.ResRet.f32 %1072, 2
  %1076 = fmul fast float %1073, 1.023000e+03
  %1077 = fmul fast float %1074, 1.023000e+03
  %1078 = fmul fast float %1075, 1.023000e+03
  %1079 = fadd fast float %1076, 5.000000e-01
  %1080 = fadd fast float %1077, 5.000000e-01
  %1081 = fadd fast float %1078, 5.000000e-01
  %1082 = call float @dx.op.unary.f32(i32 27, float %1079)  ; Round_ni(value)
  %1083 = call float @dx.op.unary.f32(i32 27, float %1080)  ; Round_ni(value)
  %1084 = call float @dx.op.unary.f32(i32 27, float %1081)  ; Round_ni(value)
  %1085 = fsub fast float %1052, %1055
  %1086 = fsub fast float %1053, %1056
  %1087 = fsub fast float %1054, %1057
  %1088 = fmul fast float %1085, 7.500000e-01
  %1089 = fmul fast float %1086, 7.500000e-01
  %1090 = fmul fast float %1087, 7.500000e-01
  %1091 = fadd fast float %1055, 1.250000e-01
  %1092 = fadd fast float %1091, %1088
  %1093 = fadd fast float %1092, %1082
  %1094 = fadd fast float %1056, 1.250000e-01
  %1095 = fadd fast float %1094, %1089
  %1096 = fadd fast float %1095, %1083
  %1097 = fadd fast float %1057, 1.250000e-01
  %1098 = fadd fast float %1097, %1090
  %1099 = fadd fast float %1098, %1084
  %1100 = fmul fast float %1093, %1043
  %1101 = fmul fast float %1096, %1044
  %1102 = fmul fast float %1099, %1045
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = add i32 %1104, 0
  %1106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1105, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1106, %dx.types.Handle %27, float %1100, float %1101, float %1102, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1108 = extractvalue %dx.types.ResRet.f32 %1107, 0
  br label %1109

; <label>:1109                                    ; preds = %1030, %1019
  %1110 = phi float [ %1108, %1030 ], [ -1.000000e+00, %1019 ]
  %1111 = fadd fast float %1110, %1017
  %1112 = call float @dx.op.unary.f32(i32 7, float %1111)  ; Saturate(value)
  br label %1113

; <label>:1113                                    ; preds = %1109, %1007
  %1114 = phi float [ %1112, %1109 ], [ %1017, %1007 ]
  %1115 = fmul fast float %1114, %410
  br label %1116

; <label>:1116                                    ; preds = %1113, %1002
  %1117 = phi float [ %1115, %1113 ], [ %410, %1002 ]
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = and i32 %1119, 256
  %1121 = icmp eq i32 %1120, 0
  br i1 %1121, label %1168, label %1122

; <label>:1122                                    ; preds = %1116
  %1123 = add i32 %32, 444
  %1124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1123, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.i32 %1124, 0
  %1126 = add i32 %1125, 0
  %1127 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1126, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1128 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1127, %dx.types.Handle %64, float %1003, float %1004, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 0
  %1130 = add i32 %32, 116
  %1131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1130, i32 undef)  ; BufferLoad(srv,index,wot)
  %1132 = extractvalue %dx.types.ResRet.i32 %1131, 0
  %1133 = shl i32 %1132, 4
  %1134 = and i32 %1133, 32752
  %1135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1134)  ; LegacyF16ToF32(value)
  %1136 = lshr i32 %1132, 7
  %1137 = and i32 %1136, 32752
  %1138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1137)  ; LegacyF16ToF32(value)
  %1139 = fsub fast float 1.000000e+00, %1117
  %1140 = call float @dx.op.binary.f32(i32 35, float %1139, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1141 = bitcast float %1117 to i32
  %1142 = sitofp i32 %1141 to float
  %1143 = fadd fast float %1142, 0xC1CFBF8940000000
  %1144 = fmul fast float %1138, %1143
  %1145 = fadd fast float %1144, 0x41CFBF8940000000
  %1146 = fptosi float %1145 to i32
  %1147 = bitcast i32 %1146 to float
  %1148 = bitcast float %1140 to i32
  %1149 = sitofp i32 %1148 to float
  %1150 = fadd fast float %1149, 0xC1CFBF8940000000
  %1151 = fmul fast float %1150, %1138
  %1152 = fadd fast float %1151, 0x41CFBF8940000000
  %1153 = fptosi float %1152 to i32
  %1154 = bitcast i32 %1153 to float
  %1155 = fmul fast float %1147, %1135
  %1156 = fmul fast float %1154, %1135
  %1157 = fsub fast float %1140, %1155
  %1158 = fadd fast float %1156, %1140
  %1159 = call float @dx.op.unary.f32(i32 7, float %1157)  ; Saturate(value)
  %1160 = call float @dx.op.unary.f32(i32 7, float %1158)  ; Saturate(value)
  %1161 = fsub fast float %1129, %1159
  %1162 = fsub fast float %1160, %1159
  %1163 = bitcast float %1162 to i32
  %1164 = sub nsw i32 2129859010, %1163
  %1165 = bitcast i32 %1164 to float
  %1166 = fmul fast float %1165, %1161
  %1167 = call float @dx.op.unary.f32(i32 7, float %1166)  ; Saturate(value)
  br label %1168

; <label>:1168                                    ; preds = %1122, %1116
  %1169 = phi float [ %1167, %1122 ], [ %1117, %1116 ]
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = and i32 %1171, 128
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %1190, label %1174

; <label>:1174                                    ; preds = %1168
  %1175 = add i32 %32, 428
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = add i32 %1177, 0
  %1179 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1178, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1180 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1179, %dx.types.Handle %64, float %1003, float %1004, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1181 = extractvalue %dx.types.ResRet.f32 %1180, 0
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = and i32 %1183, 524288
  %1185 = icmp ne i32 %1184, 0
  %1186 = fcmp fast ogt float %1181, 0x3FE0101020000000
  %1187 = select i1 %1186, float 1.000000e+00, float 0.000000e+00
  %1188 = select i1 %1185, float %1187, float %1181
  %1189 = fmul fast float %1188, %1169
  br label %1190

; <label>:1190                                    ; preds = %1174, %1168
  %1191 = phi float [ %1189, %1174 ], [ %1169, %1168 ]
  %1192 = fcmp fast ult float %1191, 0x3F70101020000000
  br i1 %1192, label %1735, label %1193

; <label>:1193                                    ; preds = %1190
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = and i32 %1195, 16
  %1197 = icmp eq i32 %1196, 0
  br i1 %1197, label %1396, label %1198

; <label>:1198                                    ; preds = %1193
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = add i32 %32, 380
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = add i32 %1203, 0
  %1205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1204, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1206 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1205, %dx.types.Handle %63, float %1003, float %1004, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1207 = extractvalue %dx.types.ResRet.f32 %1206, 0
  %1208 = extractvalue %dx.types.ResRet.f32 %1206, 1
  %1209 = extractvalue %dx.types.ResRet.f32 %1206, 2
  %1210 = extractvalue %dx.types.ResRet.f32 %1206, 3
  %1211 = and i32 %1200, 255
  %1212 = uitofp i32 %1211 to float
  %1213 = lshr i32 %1200, 8
  %1214 = and i32 %1213, 255
  %1215 = uitofp i32 %1214 to float
  %1216 = fmul fast float %1210, %1212
  %1217 = fadd fast float %1216, %1215
  %1218 = fmul fast float %1217, 0x3F70101000000000
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = and i32 %1220, 512
  %1222 = icmp eq i32 %1221, 0
  br i1 %1222, label %1231, label %1223

; <label>:1223                                    ; preds = %1198
  %1224 = add i32 %32, 464
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = add i32 %1226, 0
  %1228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1227, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1229 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1228, %dx.types.Handle %64, float %1003, float %1004, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1230 = extractvalue %dx.types.ResRet.f32 %1229, 0
  br label %1231

; <label>:1231                                    ; preds = %1223, %1198
  %1232 = phi float [ %1230, %1223 ], [ 1.000000e+00, %1198 ]
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = and i32 %1234, 33554432
  %1236 = icmp eq i32 %1235, 0
  br i1 %1236, label %1343, label %1237

; <label>:1237                                    ; preds = %1231
  %1238 = add i32 %32, 240
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1238, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = and i32 %1240, 65535
  %1242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1241)  ; LegacyF16ToF32(value)
  %1243 = lshr i32 %1240, 16
  %1244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1243)  ; LegacyF16ToF32(value)
  %1245 = add i32 %32, 244
  %1246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1245, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.i32 %1246, 0
  %1248 = and i32 %1247, 65535
  %1249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1248)  ; LegacyF16ToF32(value)
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = lshr i32 %1251, 24
  %1253 = uitofp i32 %1252 to float
  %1254 = fmul fast float %1253, 0x3F70101020000000
  %1255 = and i32 %1251, 255
  %1256 = uitofp i32 %1255 to float
  %1257 = fmul fast float %1256, 0x3F70101020000000
  %1258 = lshr i32 %1251, 8
  %1259 = and i32 %1258, 255
  %1260 = uitofp i32 %1259 to float
  %1261 = fmul fast float %1260, 0x3F70101020000000
  %1262 = lshr i32 %1251, 16
  %1263 = and i32 %1262, 255
  %1264 = uitofp i32 %1263 to float
  %1265 = fmul fast float %1264, 0x3F70101020000000
  %1266 = add i32 %32, 236
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = lshr i32 %1268, 24
  %1270 = uitofp i32 %1269 to float
  %1271 = fmul fast float %1270, 0x3F70101020000000
  %1272 = and i32 %1268, 255
  %1273 = uitofp i32 %1272 to float
  %1274 = fmul fast float %1273, 0x3F70101020000000
  %1275 = lshr i32 %1268, 8
  %1276 = and i32 %1275, 255
  %1277 = uitofp i32 %1276 to float
  %1278 = fmul fast float %1277, 0x3F70101020000000
  %1279 = lshr i32 %1268, 16
  %1280 = and i32 %1279, 255
  %1281 = uitofp i32 %1280 to float
  %1282 = fmul fast float %1281, 0x3F70101020000000
  %1283 = bitcast float %1207 to i32
  %1284 = ashr i32 %1283, 1
  %1285 = sub nsw i32 1597463174, %1284
  %1286 = bitcast i32 %1285 to float
  %1287 = fmul fast float %1207, 5.000000e-01
  %1288 = fmul fast float %1286, %1286
  %1289 = fmul fast float %1288, %1287
  %1290 = fsub fast float 1.500000e+00, %1289
  %1291 = fmul fast float %1286, %1207
  %1292 = fmul fast float %1291, %1290
  %1293 = bitcast float %1208 to i32
  %1294 = ashr i32 %1293, 1
  %1295 = sub nsw i32 1597463174, %1294
  %1296 = bitcast i32 %1295 to float
  %1297 = fmul fast float %1208, 5.000000e-01
  %1298 = fmul fast float %1296, %1296
  %1299 = fmul fast float %1298, %1297
  %1300 = fsub fast float 1.500000e+00, %1299
  %1301 = fmul fast float %1296, %1208
  %1302 = fmul fast float %1301, %1300
  %1303 = bitcast float %1209 to i32
  %1304 = ashr i32 %1303, 1
  %1305 = sub nsw i32 1597463174, %1304
  %1306 = bitcast i32 %1305 to float
  %1307 = fmul fast float %1209, 5.000000e-01
  %1308 = fmul fast float %1306, %1306
  %1309 = fmul fast float %1308, %1307
  %1310 = fsub fast float 1.500000e+00, %1309
  %1311 = fmul fast float %1306, %1209
  %1312 = fmul fast float %1311, %1310
  %1313 = fsub fast float %1292, %1274
  %1314 = fsub fast float %1302, %1278
  %1315 = fsub fast float %1312, %1282
  %1316 = fmul fast float %1313, %1242
  %1317 = fmul fast float %1314, %1244
  %1318 = fmul fast float %1315, %1249
  %1319 = fadd fast float %1316, %1257
  %1320 = fadd fast float %1317, %1261
  %1321 = fadd fast float %1318, %1265
  %1322 = call float @dx.op.unary.f32(i32 7, float %1319)  ; Saturate(value)
  %1323 = call float @dx.op.unary.f32(i32 7, float %1320)  ; Saturate(value)
  %1324 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  %1325 = fmul fast float %1322, %1322
  %1326 = fmul fast float %1323, %1323
  %1327 = fmul fast float %1324, %1324
  %1328 = fsub fast float %1325, %1207
  %1329 = fsub fast float %1326, %1208
  %1330 = fsub fast float %1327, %1209
  %1331 = fmul fast float %1328, %1232
  %1332 = fmul fast float %1329, %1232
  %1333 = fmul fast float %1330, %1232
  %1334 = fadd fast float %1331, %1207
  %1335 = fadd fast float %1332, %1208
  %1336 = fadd fast float %1333, %1209
  %1337 = fadd fast float %1254, %1218
  %1338 = fsub fast float %1337, %1271
  %1339 = call float @dx.op.unary.f32(i32 7, float %1338)  ; Saturate(value)
  %1340 = fsub fast float %1339, %1218
  %1341 = fmul fast float %1340, %1232
  %1342 = fadd fast float %1341, %1218
  br label %1396

; <label>:1343                                    ; preds = %1231
  %1344 = and i32 %1234, 134217728
  %1345 = icmp eq i32 %1344, 0
  br i1 %1345, label %1380, label %1346

; <label>:1346                                    ; preds = %1343
  %1347 = call float @dx.op.unary.f32(i32 24, float %245)  ; Sqrt(value)
  %1348 = call float @dx.op.unary.f32(i32 24, float %249)  ; Sqrt(value)
  %1349 = call float @dx.op.unary.f32(i32 24, float %253)  ; Sqrt(value)
  %1350 = fadd fast float %1347, -5.000000e-01
  %1351 = fadd fast float %1348, -5.000000e-01
  %1352 = fadd fast float %1349, -5.000000e-01
  %1353 = fmul fast float %1350, %1232
  %1354 = fmul fast float %1351, %1232
  %1355 = fmul fast float %1352, %1232
  %1356 = fadd fast float %1353, 5.000000e-01
  %1357 = fadd fast float %1354, 5.000000e-01
  %1358 = fadd fast float %1355, 5.000000e-01
  %1359 = call float @dx.op.unary.f32(i32 24, float %1207)  ; Sqrt(value)
  %1360 = call float @dx.op.unary.f32(i32 24, float %1208)  ; Sqrt(value)
  %1361 = call float @dx.op.unary.f32(i32 24, float %1209)  ; Sqrt(value)
  %1362 = fmul fast float %1356, 2.000000e+00
  %1363 = fsub fast float 1.000000e+00, %1362
  %1364 = fmul fast float %1363, %1359
  %1365 = fadd fast float %1364, %1362
  %1366 = fmul fast float %1365, %1359
  %1367 = fmul fast float %1357, 2.000000e+00
  %1368 = fsub fast float 1.000000e+00, %1367
  %1369 = fmul fast float %1368, %1360
  %1370 = fadd fast float %1369, %1367
  %1371 = fmul fast float %1370, %1360
  %1372 = fmul fast float %1358, 2.000000e+00
  %1373 = fsub fast float 1.000000e+00, %1372
  %1374 = fmul fast float %1373, %1361
  %1375 = fadd fast float %1374, %1372
  %1376 = fmul fast float %1375, %1361
  %1377 = fmul fast float %1366, %1366
  %1378 = fmul fast float %1371, %1371
  %1379 = fmul fast float %1376, %1376
  br label %1396

; <label>:1380                                    ; preds = %1343
  %1381 = fmul fast float %245, %245
  %1382 = fmul fast float %249, %249
  %1383 = fmul fast float %253, %253
  %1384 = fadd fast float %1381, -1.000000e+00
  %1385 = fadd fast float %1382, -1.000000e+00
  %1386 = fadd fast float %1383, -1.000000e+00
  %1387 = fmul fast float %1232, %1384
  %1388 = fmul fast float %1232, %1385
  %1389 = fmul fast float %1232, %1386
  %1390 = fadd fast float %1387, 1.000000e+00
  %1391 = fadd fast float %1388, 1.000000e+00
  %1392 = fadd fast float %1389, 1.000000e+00
  %1393 = fmul fast float %1390, %1207
  %1394 = fmul fast float %1391, %1208
  %1395 = fmul fast float %1392, %1209
  br label %1396

; <label>:1396                                    ; preds = %1380, %1346, %1237, %1193
  %1397 = phi float [ %1342, %1237 ], [ %1218, %1346 ], [ %1218, %1380 ], [ 0x3FA23C0BE0000000, %1193 ]
  %1398 = phi float [ %1334, %1237 ], [ %1377, %1346 ], [ %1393, %1380 ], [ 1.000000e+00, %1193 ]
  %1399 = phi float [ %1335, %1237 ], [ %1378, %1346 ], [ %1394, %1380 ], [ 1.000000e+00, %1193 ]
  %1400 = phi float [ %1336, %1237 ], [ %1379, %1346 ], [ %1395, %1380 ], [ 1.000000e+00, %1193 ]
  %1401 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1402 = extractvalue %dx.types.CBufRet.i32 %1401, 1
  %1403 = and i32 %1402, 1
  %1404 = icmp ne i32 %1403, 0
  %1405 = add i32 %32, 356
  %1406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1405, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.i32 %1406, 0
  %1408 = and i32 %1407, 32
  %1409 = icmp ne i32 %1408, 0
  %1410 = and i1 %1404, %1409
  %1411 = select i1 %1410, float 1.000000e+00, float %1398
  %1412 = select i1 %1410, float 0x3FD3333340000000, float %1399
  %1413 = select i1 %1410, float 0x3FD3333340000000, float %1400
  %1414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.i32 %1414, 0
  %1416 = and i32 %1415, 32
  %1417 = icmp eq i32 %1416, 0
  br i1 %1417, label %1490, label %1418

; <label>:1418                                    ; preds = %1396
  %1419 = add i32 %32, 108
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = add i32 %32, 396
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1422, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = add i32 %1424, 0
  %1426 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1425, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1427 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1426, %dx.types.Handle %63, float %1003, float %1004, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1428 = extractvalue %dx.types.ResRet.f32 %1427, 0
  %1429 = extractvalue %dx.types.ResRet.f32 %1427, 1
  %1430 = extractvalue %dx.types.ResRet.f32 %1427, 2
  %1431 = extractvalue %dx.types.ResRet.f32 %1427, 3
  %1432 = and i32 %1421, 255
  %1433 = uitofp i32 %1432 to float
  %1434 = lshr i32 %1421, 8
  %1435 = and i32 %1434, 255
  %1436 = uitofp i32 %1435 to float
  %1437 = lshr i32 %1421, 16
  %1438 = and i32 %1437, 255
  %1439 = uitofp i32 %1438 to float
  %1440 = fmul fast float %1439, 0x3F70101000000000
  %1441 = fmul fast float %1428, %1433
  %1442 = fadd fast float %1441, %1436
  %1443 = fmul fast float %1442, 0x3F70101000000000
  %1444 = fadd fast float %1429, -5.000000e-01
  %1445 = fadd fast float %1431, -5.000000e-01
  %1446 = fmul fast float %1444, %1440
  %1447 = fmul fast float %1445, %1440
  %1448 = fadd fast float %1446, 5.000000e-01
  %1449 = fadd fast float %1447, 5.000000e-01
  %1450 = fmul fast float %1448, 2.000000e+00
  %1451 = fadd fast float %1450, -1.000000e+00
  %1452 = fmul fast float %1449, 2.000000e+00
  %1453 = fadd fast float %1452, -1.000000e+00
  %1454 = fadd fast float %1451, %1453
  %1455 = fmul fast float %1454, 5.000000e-01
  %1456 = fsub fast float %1451, %1453
  %1457 = fmul fast float %1456, 5.000000e-01
  %1458 = call float @dx.op.unary.f32(i32 6, float %1455)  ; FAbs(value)
  %1459 = fsub fast float 1.000000e+00, %1458
  %1460 = call float @dx.op.unary.f32(i32 6, float %1457)  ; FAbs(value)
  %1461 = fsub fast float %1459, %1460
  %1462 = call float @dx.op.dot3.f32(i32 55, float %1455, float %1457, float %1461, float %1455, float %1457, float %1461)  ; Dot3(ax,ay,az,bx,by,bz)
  %1463 = call float @dx.op.unary.f32(i32 25, float %1462)  ; Rsqrt(value)
  %1464 = fmul fast float %1455, %1463
  %1465 = fmul fast float %1457, %1463
  %1466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.i32 %1466, 0
  %1468 = and i32 %1467, 67108864
  %1469 = icmp eq i32 %1468, 0
  br i1 %1469, label %1486, label %1470

; <label>:1470                                    ; preds = %1418
  %1471 = add i32 %32, 296
  %1472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1471, i32 undef)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.i32 %1472, 0
  %1474 = and i32 %1473, 65535
  %1475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1474)  ; LegacyF16ToF32(value)
  %1476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.i32 %1476, 0
  %1478 = and i32 %1477, 65535
  %1479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1478)  ; LegacyF16ToF32(value)
  %1480 = lshr i32 %1473, 16
  %1481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1480)  ; LegacyF16ToF32(value)
  %1482 = fsub fast float %1443, %1481
  %1483 = fmul fast float %1482, %1475
  %1484 = fadd fast float %1483, %1479
  %1485 = call float @dx.op.unary.f32(i32 7, float %1484)  ; Saturate(value)
  br label %1486

; <label>:1486                                    ; preds = %1470, %1418
  %1487 = phi float [ %1485, %1470 ], [ %1443, %1418 ]
  %1488 = call float @dx.op.dot2.f32(i32 54, float %1464, float %1465, float %907, float %908)  ; Dot2(ax,ay,bx,by)
  %1489 = call float @dx.op.dot2.f32(i32 54, float %1464, float %1465, float %909, float %910)  ; Dot2(ax,ay,bx,by)
  br label %1490

; <label>:1490                                    ; preds = %1486, %1396
  %1491 = phi float [ %1487, %1486 ], [ 0x3FD6666660000000, %1396 ]
  %1492 = phi float [ %1488, %1486 ], [ 0.000000e+00, %1396 ]
  %1493 = phi float [ %1489, %1486 ], [ 0.000000e+00, %1396 ]
  %1494 = phi float [ %1430, %1486 ], [ 1.000000e+00, %1396 ]
  %1495 = add i32 %32, 176
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = lshr i32 %1497, 22
  %1499 = shl nuw nsw i32 %1498, 5
  %1500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1499)  ; LegacyF16ToF32(value)
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = and i32 %1502, 64
  %1504 = icmp eq i32 %1503, 0
  br i1 %1504, label %1538, label %1505

; <label>:1505                                    ; preds = %1490
  %1506 = add i32 %32, 412
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = add i32 %1508, 0
  %1510 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1509, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = and i32 %1512, 131072
  %1514 = icmp eq i32 %1513, 0
  %1515 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1510, %dx.types.Handle %63, float %1003, float %1004, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1516 = extractvalue %dx.types.ResRet.f32 %1515, 0
  %1517 = extractvalue %dx.types.ResRet.f32 %1515, 1
  %1518 = extractvalue %dx.types.ResRet.f32 %1515, 2
  %1519 = fmul fast float %1516, %233
  %1520 = fmul fast float %1517, %236
  %1521 = fmul fast float %1518, %239
  br i1 %1514, label %1528, label %1522

; <label>:1522                                    ; preds = %1505
  %1523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1524 = extractvalue %dx.types.CBufRet.f32 %1523, 0
  %1525 = fmul fast float %1524, %1519
  %1526 = fmul fast float %1524, %1520
  %1527 = fmul fast float %1524, %1521
  br label %1528

; <label>:1528                                    ; preds = %1522, %1505
  %1529 = phi float [ %1525, %1522 ], [ %1519, %1505 ]
  %1530 = phi float [ %1526, %1522 ], [ %1520, %1505 ]
  %1531 = phi float [ %1527, %1522 ], [ %1521, %1505 ]
  %1532 = fmul fast float %1529, %1500
  %1533 = select i1 %171, float %1532, float %1529
  %1534 = call float @dx.op.dot3.f32(i32 55, float %1533, float %1530, float %1531, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1535 = select i1 %171, float 0.000000e+00, float %1529
  %1536 = select i1 %171, float %1534, float %1530
  %1537 = select i1 %171, float 0.000000e+00, float %1531
  br label %1538

; <label>:1538                                    ; preds = %1528, %1490
  %1539 = phi float [ %1535, %1528 ], [ 0.000000e+00, %1490 ]
  %1540 = phi float [ %1536, %1528 ], [ 0.000000e+00, %1490 ]
  %1541 = phi float [ %1537, %1528 ], [ 0.000000e+00, %1490 ]
  %1542 = add i32 %32, 112
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1542, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = and i32 %1544, 255
  %1546 = uitofp i32 %1545 to float
  %1547 = lshr i32 %1544, 8
  %1548 = and i32 %1547, 255
  %1549 = uitofp i32 %1548 to float
  %1550 = call float @dx.op.dot3.f32(i32 55, float %1411, float %1412, float %1413, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1551 = fmul fast float %1549, %1550
  %1552 = fadd fast float %1551, %1546
  %1553 = fmul fast float %1552, 0x3F70101020000000
  %1554 = call float @dx.op.unary.f32(i32 7, float %1553)  ; Saturate(value)
  br i1 %895, label %1555, label %1563

; <label>:1555                                    ; preds = %1538
  %1556 = fsub fast float 1.000000e+00, %1191
  %1557 = fmul fast float %1556, %883
  %1558 = fmul fast float %1556, %884
  %1559 = fmul fast float %1556, %885
  %1560 = fmul fast float %1556, %886
  %1561 = fmul fast float %1556, %887
  %1562 = fmul fast float %1556, %888
  br label %1563

; <label>:1563                                    ; preds = %1555, %1538
  %1564 = phi float [ %1557, %1555 ], [ %883, %1538 ]
  %1565 = phi float [ %1558, %1555 ], [ %884, %1538 ]
  %1566 = phi float [ %1559, %1555 ], [ %885, %1538 ]
  %1567 = phi float [ %1560, %1555 ], [ %886, %1538 ]
  %1568 = phi float [ %1561, %1555 ], [ %887, %1538 ]
  %1569 = phi float [ %1562, %1555 ], [ %888, %1538 ]
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = and i32 %1571, 3
  %1573 = icmp eq i32 %1572, 3
  br i1 %1573, label %1652, label %1574

; <label>:1574                                    ; preds = %1563
  %1575 = and i32 %1571, 16
  %1576 = icmp ne i32 %1575, 0
  %1577 = select i1 %1576, float %1191, float 0.000000e+00
  %1578 = icmp eq i32 %1572, 0
  br i1 %1578, label %1579, label %1607

; <label>:1579                                    ; preds = %1574
  %1580 = and i32 %1571, 64
  %1581 = icmp ne i32 %1580, 0
  %1582 = select i1 %1581, float %1191, float 0.000000e+00
  %1583 = fsub fast float %1411, %1564
  %1584 = fsub fast float %1412, %1565
  %1585 = fsub fast float %1413, %1566
  %1586 = fmul fast float %1577, %1583
  %1587 = fmul fast float %1577, %1584
  %1588 = fmul fast float %1577, %1585
  %1589 = fadd fast float %1586, %1564
  %1590 = fadd fast float %1587, %1565
  %1591 = fadd fast float %1588, %1566
  %1592 = fsub fast float %1397, %889
  %1593 = fmul fast float %1577, %1592
  %1594 = fadd fast float %1593, %889
  %1595 = fsub fast float %1539, %1567
  %1596 = fsub fast float %1540, %1568
  %1597 = fsub fast float %1541, %1569
  %1598 = fmul fast float %1582, %1595
  %1599 = fmul fast float %1582, %1596
  %1600 = fmul fast float %1582, %1597
  %1601 = fadd fast float %1598, %1567
  %1602 = fadd fast float %1599, %1568
  %1603 = fadd fast float %1600, %1569
  %1604 = fsub fast float %1554, %893
  %1605 = fmul fast float %1577, %1604
  %1606 = fadd fast float %1605, %893
  br label %1652

; <label>:1607                                    ; preds = %1574
  %1608 = icmp eq i32 %1572, 1
  br i1 %1608, label %1609, label %1622

; <label>:1609                                    ; preds = %1607
  %1610 = fadd fast float %1411, -1.000000e+00
  %1611 = fadd fast float %1412, -1.000000e+00
  %1612 = fadd fast float %1413, -1.000000e+00
  %1613 = fmul fast float %1577, %1610
  %1614 = fmul fast float %1577, %1611
  %1615 = fmul fast float %1577, %1612
  %1616 = fadd fast float %1613, 1.000000e+00
  %1617 = fadd fast float %1614, 1.000000e+00
  %1618 = fadd fast float %1615, 1.000000e+00
  %1619 = fmul fast float %1616, %1564
  %1620 = fmul fast float %1617, %1565
  %1621 = fmul fast float %1618, %1566
  br label %1652

; <label>:1622                                    ; preds = %1607
  %1623 = icmp eq i32 %1572, 2
  br i1 %1623, label %1624, label %1652

; <label>:1624                                    ; preds = %1622
  %1625 = call float @dx.op.unary.f32(i32 24, float %1411)  ; Sqrt(value)
  %1626 = call float @dx.op.unary.f32(i32 24, float %1412)  ; Sqrt(value)
  %1627 = call float @dx.op.unary.f32(i32 24, float %1413)  ; Sqrt(value)
  %1628 = fadd fast float %1625, -5.000000e-01
  %1629 = fadd fast float %1626, -5.000000e-01
  %1630 = fadd fast float %1627, -5.000000e-01
  %1631 = fmul fast float %1628, %1577
  %1632 = fmul fast float %1629, %1577
  %1633 = fmul fast float %1630, %1577
  %1634 = fadd fast float %1631, 5.000000e-01
  %1635 = fadd fast float %1632, 5.000000e-01
  %1636 = fadd fast float %1633, 5.000000e-01
  %1637 = fmul fast float %1634, 2.000000e+00
  %1638 = fsub fast float 1.000000e+00, %1637
  %1639 = fmul fast float %1638, %1564
  %1640 = fadd fast float %1639, %1637
  %1641 = fmul fast float %1640, %1564
  %1642 = fmul fast float %1635, 2.000000e+00
  %1643 = fsub fast float 1.000000e+00, %1642
  %1644 = fmul fast float %1643, %1565
  %1645 = fadd fast float %1644, %1642
  %1646 = fmul fast float %1645, %1565
  %1647 = fmul fast float %1636, 2.000000e+00
  %1648 = fsub fast float 1.000000e+00, %1647
  %1649 = fmul fast float %1648, %1566
  %1650 = fadd fast float %1649, %1647
  %1651 = fmul fast float %1650, %1566
  br label %1652

; <label>:1652                                    ; preds = %1624, %1622, %1609, %1579, %1563
  %1653 = phi float [ %1564, %1563 ], [ %1641, %1624 ], [ %1564, %1622 ], [ %1619, %1609 ], [ %1589, %1579 ]
  %1654 = phi float [ %1565, %1563 ], [ %1646, %1624 ], [ %1565, %1622 ], [ %1620, %1609 ], [ %1590, %1579 ]
  %1655 = phi float [ %1566, %1563 ], [ %1651, %1624 ], [ %1566, %1622 ], [ %1621, %1609 ], [ %1591, %1579 ]
  %1656 = phi float [ %1567, %1563 ], [ %1567, %1624 ], [ %1567, %1622 ], [ %1567, %1609 ], [ %1601, %1579 ]
  %1657 = phi float [ %1568, %1563 ], [ %1568, %1624 ], [ %1568, %1622 ], [ %1568, %1609 ], [ %1602, %1579 ]
  %1658 = phi float [ %1569, %1563 ], [ %1569, %1624 ], [ %1569, %1622 ], [ %1569, %1609 ], [ %1603, %1579 ]
  %1659 = phi float [ %889, %1563 ], [ %889, %1624 ], [ %889, %1622 ], [ %889, %1609 ], [ %1594, %1579 ]
  %1660 = phi float [ %893, %1563 ], [ %893, %1624 ], [ %893, %1622 ], [ %893, %1609 ], [ %1606, %1579 ]
  %1661 = and i32 %1571, 12
  %1662 = icmp eq i32 %1661, 12
  br i1 %1662, label %1735, label %1663

; <label>:1663                                    ; preds = %1652
  %1664 = and i32 %1571, 2097184
  %1665 = icmp eq i32 %1664, 2097184
  %1666 = select i1 %1665, float %1191, float 0.000000e+00
  %1667 = and i32 %1571, 4194336
  %1668 = icmp eq i32 %1667, 4194336
  %1669 = select i1 %1668, float %1191, float 0.000000e+00
  %1670 = and i32 %1571, 8388640
  %1671 = icmp eq i32 %1670, 8388640
  %1672 = select i1 %1671, float %1191, float 0.000000e+00
  %1673 = icmp eq i32 %1661, 0
  br i1 %1673, label %1674, label %1687

; <label>:1674                                    ; preds = %1663
  %1675 = fsub fast float %1492, %881
  %1676 = fsub fast float %1493, %882
  %1677 = fmul fast float %1666, %1675
  %1678 = fmul fast float %1666, %1676
  %1679 = fadd fast float %1677, %881
  %1680 = fadd fast float %1678, %882
  %1681 = fsub fast float %1494, %892
  %1682 = fmul fast float %1669, %1681
  %1683 = fadd fast float %1682, %892
  %1684 = fsub fast float %1491, %891
  %1685 = fmul fast float %1672, %1684
  %1686 = fadd fast float %1685, %891
  br label %1735

; <label>:1687                                    ; preds = %1663
  %1688 = icmp eq i32 %1661, 4
  br i1 %1688, label %1689, label %1721

; <label>:1689                                    ; preds = %1687
  %1690 = fmul fast float %1666, %1492
  %1691 = fmul fast float %1666, %1493
  %1692 = fadd fast float %1690, %881
  %1693 = fadd fast float %1691, %882
  %1694 = call float @dx.op.binary.f32(i32 36, float %892, float %1494)  ; FMin(a,b)
  %1695 = fsub fast float %1694, %892
  %1696 = fmul fast float %1695, %1669
  %1697 = fadd fast float %1696, %892
  %1698 = fadd fast float %1491, %891
  %1699 = fmul fast float %1698, 0x3FF337FAE0000000
  %1700 = fmul fast float %891, %891
  %1701 = fmul fast float %1491, %1491
  %1702 = fadd fast float %1701, %1700
  %1703 = fmul fast float %1702, 0x3FE5152B00000000
  %1704 = fmul fast float %891, 0xBFCC1F85E0000000
  %1705 = fmul fast float %1704, %1491
  %1706 = fadd fast float %1705, 0xBFE1363700000000
  %1707 = fadd fast float %1706, %1699
  %1708 = fsub fast float %1707, %1703
  %1709 = fmul fast float %1698, 0x3FBA6F0D00000000
  %1710 = fmul fast float %1702, 0x3FD0432880000000
  %1711 = fmul fast float %891, 0xBFEF110800000000
  %1712 = fmul fast float %1711, %1491
  %1713 = fadd fast float %1712, 1.000000e+00
  %1714 = fsub fast float %1713, %1709
  %1715 = fadd fast float %1714, %1710
  %1716 = fdiv fast float %1708, %1715
  %1717 = call float @dx.op.unary.f32(i32 7, float %1716)  ; Saturate(value)
  %1718 = fsub fast float %1717, %891
  %1719 = fmul fast float %1718, %1672
  %1720 = fadd fast float %1719, %891
  br label %1735

; <label>:1721                                    ; preds = %1687
  %1722 = icmp eq i32 %1661, 8
  br i1 %1722, label %1723, label %1735

; <label>:1723                                    ; preds = %1721
  %1724 = fmul fast float %1666, %1492
  %1725 = fmul fast float %1666, %1493
  %1726 = fadd fast float %1724, %881
  %1727 = fadd fast float %1725, %882
  %1728 = call float @dx.op.binary.f32(i32 36, float %892, float %1494)  ; FMin(a,b)
  %1729 = fsub fast float %1728, %892
  %1730 = fmul fast float %1729, %1669
  %1731 = fadd fast float %1730, %892
  %1732 = fsub fast float %1491, %891
  %1733 = fmul fast float %1672, %1732
  %1734 = fadd fast float %1733, %891
  br label %1735

; <label>:1735                                    ; preds = %1723, %1721, %1689, %1674, %1652, %1190, %894, %880
  %1736 = phi float [ %881, %1652 ], [ %881, %1190 ], [ %881, %880 ], [ %1726, %1723 ], [ %881, %1721 ], [ %1692, %1689 ], [ %1679, %1674 ], [ %881, %894 ]
  %1737 = phi float [ %882, %1652 ], [ %882, %1190 ], [ %882, %880 ], [ %1727, %1723 ], [ %882, %1721 ], [ %1693, %1689 ], [ %1680, %1674 ], [ %882, %894 ]
  %1738 = phi float [ %1653, %1652 ], [ %883, %1190 ], [ %883, %880 ], [ %1653, %1723 ], [ %1653, %1721 ], [ %1653, %1689 ], [ %1653, %1674 ], [ %883, %894 ]
  %1739 = phi float [ %1654, %1652 ], [ %884, %1190 ], [ %884, %880 ], [ %1654, %1723 ], [ %1654, %1721 ], [ %1654, %1689 ], [ %1654, %1674 ], [ %884, %894 ]
  %1740 = phi float [ %1655, %1652 ], [ %885, %1190 ], [ %885, %880 ], [ %1655, %1723 ], [ %1655, %1721 ], [ %1655, %1689 ], [ %1655, %1674 ], [ %885, %894 ]
  %1741 = phi float [ %1656, %1652 ], [ %886, %1190 ], [ %886, %880 ], [ %1656, %1723 ], [ %1656, %1721 ], [ %1656, %1689 ], [ %1656, %1674 ], [ %886, %894 ]
  %1742 = phi float [ %1657, %1652 ], [ %887, %1190 ], [ %887, %880 ], [ %1657, %1723 ], [ %1657, %1721 ], [ %1657, %1689 ], [ %1657, %1674 ], [ %887, %894 ]
  %1743 = phi float [ %1658, %1652 ], [ %888, %1190 ], [ %888, %880 ], [ %1658, %1723 ], [ %1658, %1721 ], [ %1658, %1689 ], [ %1658, %1674 ], [ %888, %894 ]
  %1744 = phi float [ %1659, %1652 ], [ %889, %1190 ], [ %889, %880 ], [ %1659, %1723 ], [ %1659, %1721 ], [ %1659, %1689 ], [ %1659, %1674 ], [ %889, %894 ]
  %1745 = phi float [ %891, %1652 ], [ %891, %1190 ], [ %891, %880 ], [ %1734, %1723 ], [ %891, %1721 ], [ %1720, %1689 ], [ %1686, %1674 ], [ %891, %894 ]
  %1746 = phi float [ %892, %1652 ], [ %892, %1190 ], [ %892, %880 ], [ %1731, %1723 ], [ %892, %1721 ], [ %1697, %1689 ], [ %1683, %1674 ], [ %892, %894 ]
  %1747 = phi float [ %1660, %1652 ], [ %893, %1190 ], [ %893, %880 ], [ %1660, %1723 ], [ %1660, %1721 ], [ %1660, %1689 ], [ %1660, %1674 ], [ %893, %894 ]
  br i1 %360, label %2589, label %1748

; <label>:1748                                    ; preds = %1735
  %1749 = icmp ult i32 %413, 3
  %1750 = add i32 %32, 56
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = add i32 %32, 60
  %1754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1755 = extractvalue %dx.types.ResRet.i32 %1754, 0
  %1756 = or i32 %1755, %1752
  %1757 = icmp eq i32 %1756, 0
  br i1 %1757, label %2589, label %1758

; <label>:1758                                    ; preds = %1748
  %1759 = and i32 %1752, 262144
  %1760 = icmp ne i32 %1759, 0
  %1761 = select i1 %1760, float %35, float 1.000000e+00
  %1762 = select i1 %1760, float %36, float 0.000000e+00
  %1763 = select i1 %1760, float %37, float 0.000000e+00
  %1764 = select i1 %1760, float %38, float 1.000000e+00
  %1765 = select i1 %1760, float %39, float %55
  %1766 = select i1 %1760, float %40, float %56
  %1767 = add i32 %32, 316
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = lshr i32 %1769, 16
  %1771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1770)  ; LegacyF16ToF32(value)
  %1772 = fmul fast float %1771, 0x3F50624DE0000000
  %1773 = add i32 %32, 120
  %1774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.i32 %1774, 0
  %1776 = lshr i32 %1775, 16
  %1777 = and i32 %1776, 255
  %1778 = lshr i32 %1775, 24
  %1779 = add i32 %32, 324
  %1780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %1781 = extractvalue %dx.types.ResRet.i32 %1780, 0
  %1782 = and i32 %1781, 65535
  %1783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1782)  ; LegacyF16ToF32(value)
  %1784 = lshr i32 %1781, 16
  %1785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1784)  ; LegacyF16ToF32(value)
  %1786 = add i32 %32, 64
  %1787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1786, i32 undef)  ; BufferLoad(srv,index,wot)
  %1788 = extractvalue %dx.types.ResRet.i32 %1787, 0
  %1789 = lshr i32 %1788, 22
  %1790 = shl nuw nsw i32 %1789, 5
  %1791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1790)  ; LegacyF16ToF32(value)
  %1792 = shl i32 %1788, 4
  %1793 = and i32 %1792, 32752
  %1794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1793)  ; LegacyF16ToF32(value)
  %1795 = lshr i32 %1788, 7
  %1796 = and i32 %1795, 32752
  %1797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1796)  ; LegacyF16ToF32(value)
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 3
  %1800 = fmul fast float %1799, 1.000000e+03
  %1801 = fmul fast float %310, %1800
  %1802 = call float @dx.op.unary.f32(i32 22, float %1801)  ; Frc(value)
  %1803 = fadd fast float %1802, %300
  %1804 = fmul fast float %311, %1800
  %1805 = call float @dx.op.unary.f32(i32 22, float %1804)  ; Frc(value)
  %1806 = fadd fast float %1805, %302
  %1807 = fmul fast float %1772, %1800
  %1808 = call float @dx.op.unary.f32(i32 22, float %1807)  ; Frc(value)
  %1809 = fmul fast float %1808, 0x401921FB60000000
  %1810 = fadd fast float %1809, %1791
  %1811 = call float @dx.op.unary.f32(i32 13, float %1810)  ; Sin(value)
  %1812 = call float @dx.op.unary.f32(i32 12, float %1810)  ; Cos(value)
  %1813 = fsub fast float -0.000000e+00, %1811
  %1814 = fadd fast float %1765, -5.000000e-01
  %1815 = fadd fast float %1766, -5.000000e-01
  %1816 = fmul fast float %1783, %1814
  %1817 = fmul fast float %1785, %1815
  %1818 = fadd fast float %1816, 5.000000e-01
  %1819 = fadd fast float %1817, 5.000000e-01
  %1820 = fmul fast float %1794, %1818
  %1821 = fmul fast float %1797, %1819
  %1822 = fmul fast float %1812, %1820
  %1823 = call float @dx.op.tertiary.f32(i32 46, float %1813, float %1821, float %1822)  ; FMad(a,b,c)
  %1824 = fmul fast float %1811, %1820
  %1825 = call float @dx.op.tertiary.f32(i32 46, float %1812, float %1821, float %1824)  ; FMad(a,b,c)
  %1826 = fadd fast float %1803, %1823
  %1827 = fadd fast float %1806, %1825
  %1828 = icmp ugt i32 %1777, 1
  %1829 = icmp ugt i32 %1775, 33554431
  %1830 = or i1 %1829, %1828
  br i1 %1830, label %1831, label %1856

; <label>:1831                                    ; preds = %1758
  %1832 = add i32 %32, 260
  %1833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.i32 %1833, 0
  %1835 = lshr i32 %1834, 16
  %1836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1835)  ; LegacyF16ToF32(value)
  %1837 = fmul fast float %1799, %1836
  %1838 = call float @dx.op.unary.f32(i32 22, float %1837)  ; Frc(value)
  %1839 = mul nuw nsw i32 %1777, %1778
  %1840 = uitofp i32 %1839 to float
  %1841 = fmul fast float %1838, %1840
  %1842 = call float @dx.op.unary.f32(i32 27, float %1841)  ; Round_ni(value)
  %1843 = fptoui float %1842 to i32
  %1844 = urem i32 %1843, %1777
  %1845 = udiv i32 %1843, %1778
  %1846 = call float @dx.op.unary.f32(i32 22, float %1826)  ; Frc(value)
  %1847 = call float @dx.op.unary.f32(i32 22, float %1827)  ; Frc(value)
  %1848 = uitofp i32 %1844 to float
  %1849 = uitofp i32 %1845 to float
  %1850 = fadd fast float %1846, %1848
  %1851 = fadd fast float %1847, %1849
  %1852 = uitofp i32 %1777 to float
  %1853 = uitofp i32 %1778 to float
  %1854 = fdiv fast float %1850, %1852
  %1855 = fdiv fast float %1851, %1853
  br label %1856

; <label>:1856                                    ; preds = %1831, %1758
  %1857 = phi float [ %1854, %1831 ], [ %1826, %1758 ]
  %1858 = phi float [ %1855, %1831 ], [ %1827, %1758 ]
  %1859 = and i32 %1752, 16777216
  %1860 = icmp eq i32 %1859, 0
  br i1 %1860, label %1970, label %1861

; <label>:1861                                    ; preds = %1856
  %1862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1863 = extractvalue %dx.types.CBufRet.f32 %1862, 0
  %1864 = extractvalue %dx.types.CBufRet.f32 %1862, 1
  %1865 = extractvalue %dx.types.CBufRet.f32 %1862, 2
  %1866 = fadd fast float %1863, %130
  %1867 = fadd fast float %1864, %131
  %1868 = fadd fast float %1865, %132
  %1869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1870 = extractvalue %dx.types.CBufRet.f32 %1869, 0
  %1871 = call float @dx.op.unary.f32(i32 7, float %1870)  ; Saturate(value)
  %1872 = icmp eq i32 %33, 65535
  br i1 %1872, label %1967, label %1873

; <label>:1873                                    ; preds = %1861
  %1874 = lshr i32 %33, 1
  %1875 = shl i32 %1874, 2
  %1876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.i32 %1876, 0
  %1878 = and i32 %33, 1
  %1879 = icmp ne i32 %1878, 0
  %1880 = lshr i32 %1877, 16
  %1881 = and i32 %1877, 65535
  %1882 = select i1 %1879, i32 %1880, i32 %1881
  %1883 = icmp eq i32 %1882, 65535
  br i1 %1883, label %1963, label %1884

; <label>:1884                                    ; preds = %1873
  %1885 = mul nuw nsw i32 %1882, 40
  %1886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1887 = extractvalue %dx.types.ResRet.f32 %1886, 0
  %1888 = extractvalue %dx.types.ResRet.f32 %1886, 1
  %1889 = extractvalue %dx.types.ResRet.f32 %1886, 2
  %1890 = add nuw nsw i32 %1885, 12
  %1891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.f32 %1891, 0
  %1893 = extractvalue %dx.types.ResRet.f32 %1891, 1
  %1894 = extractvalue %dx.types.ResRet.f32 %1891, 2
  %1895 = add nuw nsw i32 %1885, 24
  %1896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1897 = extractvalue %dx.types.ResRet.f32 %1896, 0
  %1898 = extractvalue %dx.types.ResRet.f32 %1896, 1
  %1899 = extractvalue %dx.types.ResRet.f32 %1896, 2
  %1900 = add nuw nsw i32 %1885, 36
  %1901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1900, i32 undef)  ; BufferLoad(srv,index,wot)
  %1902 = extractvalue %dx.types.ResRet.f32 %1901, 0
  %1903 = fsub fast float %1866, %1887
  %1904 = fsub fast float %1867, %1888
  %1905 = fsub fast float %1868, %1889
  %1906 = fmul fast float %1902, %1903
  %1907 = fmul fast float %1902, %1904
  %1908 = fmul fast float %1902, %1905
  %1909 = call float @dx.op.unary.f32(i32 27, float %1906)  ; Round_ni(value)
  %1910 = call float @dx.op.unary.f32(i32 27, float %1907)  ; Round_ni(value)
  %1911 = call float @dx.op.unary.f32(i32 27, float %1908)  ; Round_ni(value)
  %1912 = fadd fast float %1909, 5.000000e-01
  %1913 = fadd fast float %1910, 5.000000e-01
  %1914 = fadd fast float %1911, 5.000000e-01
  %1915 = fmul fast float %1912, %1892
  %1916 = fmul fast float %1913, %1893
  %1917 = fmul fast float %1914, %1894
  %1918 = shl i32 %33, 2
  %1919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.i32 %1919, 0
  %1921 = add i32 %1920, 0
  %1922 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1921, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1923 = call float @dx.op.unary.f32(i32 22, float %1915)  ; Frc(value)
  %1924 = call float @dx.op.unary.f32(i32 22, float %1916)  ; Frc(value)
  %1925 = call float @dx.op.unary.f32(i32 22, float %1917)  ; Frc(value)
  %1926 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1922, %dx.types.Handle %29, float %1923, float %1924, float %1925, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1927 = extractvalue %dx.types.ResRet.f32 %1926, 0
  %1928 = extractvalue %dx.types.ResRet.f32 %1926, 1
  %1929 = extractvalue %dx.types.ResRet.f32 %1926, 2
  %1930 = fmul fast float %1927, 1.023000e+03
  %1931 = fmul fast float %1928, 1.023000e+03
  %1932 = fmul fast float %1929, 1.023000e+03
  %1933 = fadd fast float %1930, 5.000000e-01
  %1934 = fadd fast float %1931, 5.000000e-01
  %1935 = fadd fast float %1932, 5.000000e-01
  %1936 = call float @dx.op.unary.f32(i32 27, float %1933)  ; Round_ni(value)
  %1937 = call float @dx.op.unary.f32(i32 27, float %1934)  ; Round_ni(value)
  %1938 = call float @dx.op.unary.f32(i32 27, float %1935)  ; Round_ni(value)
  %1939 = fsub fast float %1906, %1909
  %1940 = fsub fast float %1907, %1910
  %1941 = fsub fast float %1908, %1911
  %1942 = fmul fast float %1939, 7.500000e-01
  %1943 = fmul fast float %1940, 7.500000e-01
  %1944 = fmul fast float %1941, 7.500000e-01
  %1945 = fadd fast float %1909, 1.250000e-01
  %1946 = fadd fast float %1945, %1942
  %1947 = fadd fast float %1946, %1936
  %1948 = fadd fast float %1910, 1.250000e-01
  %1949 = fadd fast float %1948, %1943
  %1950 = fadd fast float %1949, %1937
  %1951 = fadd fast float %1911, 1.250000e-01
  %1952 = fadd fast float %1951, %1944
  %1953 = fadd fast float %1952, %1938
  %1954 = fmul fast float %1947, %1897
  %1955 = fmul fast float %1950, %1898
  %1956 = fmul fast float %1953, %1899
  %1957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1958 = extractvalue %dx.types.ResRet.i32 %1957, 0
  %1959 = add i32 %1958, 0
  %1960 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1959, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1961 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1960, %dx.types.Handle %27, float %1954, float %1955, float %1956, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1962 = extractvalue %dx.types.ResRet.f32 %1961, 0
  br label %1963

; <label>:1963                                    ; preds = %1884, %1873
  %1964 = phi float [ %1962, %1884 ], [ -1.000000e+00, %1873 ]
  %1965 = fadd fast float %1964, %1871
  %1966 = call float @dx.op.unary.f32(i32 7, float %1965)  ; Saturate(value)
  br label %1967

; <label>:1967                                    ; preds = %1963, %1861
  %1968 = phi float [ %1966, %1963 ], [ %1871, %1861 ]
  %1969 = fmul fast float %1968, %409
  br label %1970

; <label>:1970                                    ; preds = %1967, %1856
  %1971 = phi float [ %1969, %1967 ], [ %409, %1856 ]
  %1972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.i32 %1972, 0
  %1974 = and i32 %1973, 256
  %1975 = icmp eq i32 %1974, 0
  br i1 %1975, label %2022, label %1976

; <label>:1976                                    ; preds = %1970
  %1977 = add i32 %32, 448
  %1978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.i32 %1978, 0
  %1980 = add i32 %1979, 0
  %1981 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1980, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1982 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1981, %dx.types.Handle %64, float %1857, float %1858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1983 = extractvalue %dx.types.ResRet.f32 %1982, 0
  %1984 = add i32 %32, 132
  %1985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.i32 %1985, 0
  %1987 = shl i32 %1986, 4
  %1988 = and i32 %1987, 32752
  %1989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1988)  ; LegacyF16ToF32(value)
  %1990 = lshr i32 %1986, 7
  %1991 = and i32 %1990, 32752
  %1992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1991)  ; LegacyF16ToF32(value)
  %1993 = fsub fast float 1.000000e+00, %1971
  %1994 = call float @dx.op.binary.f32(i32 35, float %1993, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1995 = bitcast float %1971 to i32
  %1996 = sitofp i32 %1995 to float
  %1997 = fadd fast float %1996, 0xC1CFBF8940000000
  %1998 = fmul fast float %1992, %1997
  %1999 = fadd fast float %1998, 0x41CFBF8940000000
  %2000 = fptosi float %1999 to i32
  %2001 = bitcast i32 %2000 to float
  %2002 = bitcast float %1994 to i32
  %2003 = sitofp i32 %2002 to float
  %2004 = fadd fast float %2003, 0xC1CFBF8940000000
  %2005 = fmul fast float %2004, %1992
  %2006 = fadd fast float %2005, 0x41CFBF8940000000
  %2007 = fptosi float %2006 to i32
  %2008 = bitcast i32 %2007 to float
  %2009 = fmul fast float %2001, %1989
  %2010 = fmul fast float %2008, %1989
  %2011 = fsub fast float %1994, %2009
  %2012 = fadd fast float %2010, %1994
  %2013 = call float @dx.op.unary.f32(i32 7, float %2011)  ; Saturate(value)
  %2014 = call float @dx.op.unary.f32(i32 7, float %2012)  ; Saturate(value)
  %2015 = fsub fast float %1983, %2013
  %2016 = fsub fast float %2014, %2013
  %2017 = bitcast float %2016 to i32
  %2018 = sub nsw i32 2129859010, %2017
  %2019 = bitcast i32 %2018 to float
  %2020 = fmul fast float %2019, %2015
  %2021 = call float @dx.op.unary.f32(i32 7, float %2020)  ; Saturate(value)
  br label %2022

; <label>:2022                                    ; preds = %1976, %1970
  %2023 = phi float [ %2021, %1976 ], [ %1971, %1970 ]
  %2024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.i32 %2024, 0
  %2026 = and i32 %2025, 128
  %2027 = icmp eq i32 %2026, 0
  br i1 %2027, label %2044, label %2028

; <label>:2028                                    ; preds = %2022
  %2029 = add i32 %32, 432
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = add i32 %2031, 0
  %2033 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2032, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2034 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2033, %dx.types.Handle %64, float %1857, float %1858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2035 = extractvalue %dx.types.ResRet.f32 %2034, 0
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = and i32 %2037, 524288
  %2039 = icmp ne i32 %2038, 0
  %2040 = fcmp fast ogt float %2035, 0x3FE0101020000000
  %2041 = select i1 %2040, float 1.000000e+00, float 0.000000e+00
  %2042 = select i1 %2039, float %2041, float %2035
  %2043 = fmul fast float %2042, %2023
  br label %2044

; <label>:2044                                    ; preds = %2028, %2022
  %2045 = phi float [ %2043, %2028 ], [ %2023, %2022 ]
  %2046 = fcmp fast ult float %2045, 0x3F70101020000000
  br i1 %2046, label %2589, label %2047

; <label>:2047                                    ; preds = %2044
  %2048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.i32 %2048, 0
  %2050 = and i32 %2049, 16
  %2051 = icmp eq i32 %2050, 0
  br i1 %2051, label %2250, label %2052

; <label>:2052                                    ; preds = %2047
  %2053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.i32 %2053, 0
  %2055 = add i32 %32, 384
  %2056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2055, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = add i32 %2057, 0
  %2059 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2058, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2060 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2059, %dx.types.Handle %63, float %1857, float %1858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2061 = extractvalue %dx.types.ResRet.f32 %2060, 0
  %2062 = extractvalue %dx.types.ResRet.f32 %2060, 1
  %2063 = extractvalue %dx.types.ResRet.f32 %2060, 2
  %2064 = extractvalue %dx.types.ResRet.f32 %2060, 3
  %2065 = and i32 %2054, 255
  %2066 = uitofp i32 %2065 to float
  %2067 = lshr i32 %2054, 8
  %2068 = and i32 %2067, 255
  %2069 = uitofp i32 %2068 to float
  %2070 = fmul fast float %2064, %2066
  %2071 = fadd fast float %2070, %2069
  %2072 = fmul fast float %2071, 0x3F70101000000000
  %2073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.i32 %2073, 0
  %2075 = and i32 %2074, 512
  %2076 = icmp eq i32 %2075, 0
  br i1 %2076, label %2085, label %2077

; <label>:2077                                    ; preds = %2052
  %2078 = add i32 %32, 468
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2078, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = add i32 %2080, 0
  %2082 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2081, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2083 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2082, %dx.types.Handle %64, float %1857, float %1858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2084 = extractvalue %dx.types.ResRet.f32 %2083, 0
  br label %2085

; <label>:2085                                    ; preds = %2077, %2052
  %2086 = phi float [ %2084, %2077 ], [ 1.000000e+00, %2052 ]
  %2087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.i32 %2087, 0
  %2089 = and i32 %2088, 33554432
  %2090 = icmp eq i32 %2089, 0
  br i1 %2090, label %2197, label %2091

; <label>:2091                                    ; preds = %2085
  %2092 = add i32 %32, 256
  %2093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2092, i32 undef)  ; BufferLoad(srv,index,wot)
  %2094 = extractvalue %dx.types.ResRet.i32 %2093, 0
  %2095 = and i32 %2094, 65535
  %2096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2095)  ; LegacyF16ToF32(value)
  %2097 = lshr i32 %2094, 16
  %2098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2097)  ; LegacyF16ToF32(value)
  %2099 = add i32 %32, 260
  %2100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2099, i32 undef)  ; BufferLoad(srv,index,wot)
  %2101 = extractvalue %dx.types.ResRet.i32 %2100, 0
  %2102 = and i32 %2101, 65535
  %2103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2102)  ; LegacyF16ToF32(value)
  %2104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %2105 = extractvalue %dx.types.ResRet.i32 %2104, 0
  %2106 = lshr i32 %2105, 24
  %2107 = uitofp i32 %2106 to float
  %2108 = fmul fast float %2107, 0x3F70101020000000
  %2109 = and i32 %2105, 255
  %2110 = uitofp i32 %2109 to float
  %2111 = fmul fast float %2110, 0x3F70101020000000
  %2112 = lshr i32 %2105, 8
  %2113 = and i32 %2112, 255
  %2114 = uitofp i32 %2113 to float
  %2115 = fmul fast float %2114, 0x3F70101020000000
  %2116 = lshr i32 %2105, 16
  %2117 = and i32 %2116, 255
  %2118 = uitofp i32 %2117 to float
  %2119 = fmul fast float %2118, 0x3F70101020000000
  %2120 = add i32 %32, 252
  %2121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2120, i32 undef)  ; BufferLoad(srv,index,wot)
  %2122 = extractvalue %dx.types.ResRet.i32 %2121, 0
  %2123 = lshr i32 %2122, 24
  %2124 = uitofp i32 %2123 to float
  %2125 = fmul fast float %2124, 0x3F70101020000000
  %2126 = and i32 %2122, 255
  %2127 = uitofp i32 %2126 to float
  %2128 = fmul fast float %2127, 0x3F70101020000000
  %2129 = lshr i32 %2122, 8
  %2130 = and i32 %2129, 255
  %2131 = uitofp i32 %2130 to float
  %2132 = fmul fast float %2131, 0x3F70101020000000
  %2133 = lshr i32 %2122, 16
  %2134 = and i32 %2133, 255
  %2135 = uitofp i32 %2134 to float
  %2136 = fmul fast float %2135, 0x3F70101020000000
  %2137 = bitcast float %2061 to i32
  %2138 = ashr i32 %2137, 1
  %2139 = sub nsw i32 1597463174, %2138
  %2140 = bitcast i32 %2139 to float
  %2141 = fmul fast float %2061, 5.000000e-01
  %2142 = fmul fast float %2140, %2140
  %2143 = fmul fast float %2142, %2141
  %2144 = fsub fast float 1.500000e+00, %2143
  %2145 = fmul fast float %2140, %2061
  %2146 = fmul fast float %2145, %2144
  %2147 = bitcast float %2062 to i32
  %2148 = ashr i32 %2147, 1
  %2149 = sub nsw i32 1597463174, %2148
  %2150 = bitcast i32 %2149 to float
  %2151 = fmul fast float %2062, 5.000000e-01
  %2152 = fmul fast float %2150, %2150
  %2153 = fmul fast float %2152, %2151
  %2154 = fsub fast float 1.500000e+00, %2153
  %2155 = fmul fast float %2150, %2062
  %2156 = fmul fast float %2155, %2154
  %2157 = bitcast float %2063 to i32
  %2158 = ashr i32 %2157, 1
  %2159 = sub nsw i32 1597463174, %2158
  %2160 = bitcast i32 %2159 to float
  %2161 = fmul fast float %2063, 5.000000e-01
  %2162 = fmul fast float %2160, %2160
  %2163 = fmul fast float %2162, %2161
  %2164 = fsub fast float 1.500000e+00, %2163
  %2165 = fmul fast float %2160, %2063
  %2166 = fmul fast float %2165, %2164
  %2167 = fsub fast float %2146, %2128
  %2168 = fsub fast float %2156, %2132
  %2169 = fsub fast float %2166, %2136
  %2170 = fmul fast float %2167, %2096
  %2171 = fmul fast float %2168, %2098
  %2172 = fmul fast float %2169, %2103
  %2173 = fadd fast float %2170, %2111
  %2174 = fadd fast float %2171, %2115
  %2175 = fadd fast float %2172, %2119
  %2176 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2177 = call float @dx.op.unary.f32(i32 7, float %2174)  ; Saturate(value)
  %2178 = call float @dx.op.unary.f32(i32 7, float %2175)  ; Saturate(value)
  %2179 = fmul fast float %2176, %2176
  %2180 = fmul fast float %2177, %2177
  %2181 = fmul fast float %2178, %2178
  %2182 = fsub fast float %2179, %2061
  %2183 = fsub fast float %2180, %2062
  %2184 = fsub fast float %2181, %2063
  %2185 = fmul fast float %2182, %2086
  %2186 = fmul fast float %2183, %2086
  %2187 = fmul fast float %2184, %2086
  %2188 = fadd fast float %2185, %2061
  %2189 = fadd fast float %2186, %2062
  %2190 = fadd fast float %2187, %2063
  %2191 = fadd fast float %2108, %2072
  %2192 = fsub fast float %2191, %2125
  %2193 = call float @dx.op.unary.f32(i32 7, float %2192)  ; Saturate(value)
  %2194 = fsub fast float %2193, %2072
  %2195 = fmul fast float %2194, %2086
  %2196 = fadd fast float %2195, %2072
  br label %2250

; <label>:2197                                    ; preds = %2085
  %2198 = and i32 %2088, 134217728
  %2199 = icmp eq i32 %2198, 0
  br i1 %2199, label %2234, label %2200

; <label>:2200                                    ; preds = %2197
  %2201 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %2202 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %2203 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %2204 = fadd fast float %2201, -5.000000e-01
  %2205 = fadd fast float %2202, -5.000000e-01
  %2206 = fadd fast float %2203, -5.000000e-01
  %2207 = fmul fast float %2204, %2086
  %2208 = fmul fast float %2205, %2086
  %2209 = fmul fast float %2206, %2086
  %2210 = fadd fast float %2207, 5.000000e-01
  %2211 = fadd fast float %2208, 5.000000e-01
  %2212 = fadd fast float %2209, 5.000000e-01
  %2213 = call float @dx.op.unary.f32(i32 24, float %2061)  ; Sqrt(value)
  %2214 = call float @dx.op.unary.f32(i32 24, float %2062)  ; Sqrt(value)
  %2215 = call float @dx.op.unary.f32(i32 24, float %2063)  ; Sqrt(value)
  %2216 = fmul fast float %2210, 2.000000e+00
  %2217 = fsub fast float 1.000000e+00, %2216
  %2218 = fmul fast float %2217, %2213
  %2219 = fadd fast float %2218, %2216
  %2220 = fmul fast float %2219, %2213
  %2221 = fmul fast float %2211, 2.000000e+00
  %2222 = fsub fast float 1.000000e+00, %2221
  %2223 = fmul fast float %2222, %2214
  %2224 = fadd fast float %2223, %2221
  %2225 = fmul fast float %2224, %2214
  %2226 = fmul fast float %2212, 2.000000e+00
  %2227 = fsub fast float 1.000000e+00, %2226
  %2228 = fmul fast float %2227, %2215
  %2229 = fadd fast float %2228, %2226
  %2230 = fmul fast float %2229, %2215
  %2231 = fmul fast float %2220, %2220
  %2232 = fmul fast float %2225, %2225
  %2233 = fmul fast float %2230, %2230
  br label %2250

; <label>:2234                                    ; preds = %2197
  %2235 = fmul fast float %287, %287
  %2236 = fmul fast float %291, %291
  %2237 = fmul fast float %295, %295
  %2238 = fadd fast float %2235, -1.000000e+00
  %2239 = fadd fast float %2236, -1.000000e+00
  %2240 = fadd fast float %2237, -1.000000e+00
  %2241 = fmul fast float %2086, %2238
  %2242 = fmul fast float %2086, %2239
  %2243 = fmul fast float %2086, %2240
  %2244 = fadd fast float %2241, 1.000000e+00
  %2245 = fadd fast float %2242, 1.000000e+00
  %2246 = fadd fast float %2243, 1.000000e+00
  %2247 = fmul fast float %2244, %2061
  %2248 = fmul fast float %2245, %2062
  %2249 = fmul fast float %2246, %2063
  br label %2250

; <label>:2250                                    ; preds = %2234, %2200, %2091, %2047
  %2251 = phi float [ %2196, %2091 ], [ %2072, %2200 ], [ %2072, %2234 ], [ 0x3FA23C0BE0000000, %2047 ]
  %2252 = phi float [ %2188, %2091 ], [ %2231, %2200 ], [ %2247, %2234 ], [ 1.000000e+00, %2047 ]
  %2253 = phi float [ %2189, %2091 ], [ %2232, %2200 ], [ %2248, %2234 ], [ 1.000000e+00, %2047 ]
  %2254 = phi float [ %2190, %2091 ], [ %2233, %2200 ], [ %2249, %2234 ], [ 1.000000e+00, %2047 ]
  %2255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2256 = extractvalue %dx.types.CBufRet.i32 %2255, 1
  %2257 = and i32 %2256, 1
  %2258 = icmp ne i32 %2257, 0
  %2259 = add i32 %32, 356
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = and i32 %2261, 32
  %2263 = icmp ne i32 %2262, 0
  %2264 = and i1 %2258, %2263
  %2265 = select i1 %2264, float 1.000000e+00, float %2252
  %2266 = select i1 %2264, float 0x3FD3333340000000, float %2253
  %2267 = select i1 %2264, float 0x3FD3333340000000, float %2254
  %2268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.i32 %2268, 0
  %2270 = and i32 %2269, 32
  %2271 = icmp eq i32 %2270, 0
  br i1 %2271, label %2344, label %2272

; <label>:2272                                    ; preds = %2250
  %2273 = add i32 %32, 124
  %2274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.i32 %2274, 0
  %2276 = add i32 %32, 400
  %2277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2276, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.i32 %2277, 0
  %2279 = add i32 %2278, 0
  %2280 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2279, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2281 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2280, %dx.types.Handle %63, float %1857, float %1858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2282 = extractvalue %dx.types.ResRet.f32 %2281, 0
  %2283 = extractvalue %dx.types.ResRet.f32 %2281, 1
  %2284 = extractvalue %dx.types.ResRet.f32 %2281, 2
  %2285 = extractvalue %dx.types.ResRet.f32 %2281, 3
  %2286 = and i32 %2275, 255
  %2287 = uitofp i32 %2286 to float
  %2288 = lshr i32 %2275, 8
  %2289 = and i32 %2288, 255
  %2290 = uitofp i32 %2289 to float
  %2291 = lshr i32 %2275, 16
  %2292 = and i32 %2291, 255
  %2293 = uitofp i32 %2292 to float
  %2294 = fmul fast float %2293, 0x3F70101000000000
  %2295 = fmul fast float %2282, %2287
  %2296 = fadd fast float %2295, %2290
  %2297 = fmul fast float %2296, 0x3F70101000000000
  %2298 = fadd fast float %2283, -5.000000e-01
  %2299 = fadd fast float %2285, -5.000000e-01
  %2300 = fmul fast float %2298, %2294
  %2301 = fmul fast float %2299, %2294
  %2302 = fadd fast float %2300, 5.000000e-01
  %2303 = fadd fast float %2301, 5.000000e-01
  %2304 = fmul fast float %2302, 2.000000e+00
  %2305 = fadd fast float %2304, -1.000000e+00
  %2306 = fmul fast float %2303, 2.000000e+00
  %2307 = fadd fast float %2306, -1.000000e+00
  %2308 = fadd fast float %2305, %2307
  %2309 = fmul fast float %2308, 5.000000e-01
  %2310 = fsub fast float %2305, %2307
  %2311 = fmul fast float %2310, 5.000000e-01
  %2312 = call float @dx.op.unary.f32(i32 6, float %2309)  ; FAbs(value)
  %2313 = fsub fast float 1.000000e+00, %2312
  %2314 = call float @dx.op.unary.f32(i32 6, float %2311)  ; FAbs(value)
  %2315 = fsub fast float %2313, %2314
  %2316 = call float @dx.op.dot3.f32(i32 55, float %2309, float %2311, float %2315, float %2309, float %2311, float %2315)  ; Dot3(ax,ay,az,bx,by,bz)
  %2317 = call float @dx.op.unary.f32(i32 25, float %2316)  ; Rsqrt(value)
  %2318 = fmul fast float %2309, %2317
  %2319 = fmul fast float %2311, %2317
  %2320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2321 = extractvalue %dx.types.ResRet.i32 %2320, 0
  %2322 = and i32 %2321, 67108864
  %2323 = icmp eq i32 %2322, 0
  br i1 %2323, label %2340, label %2324

; <label>:2324                                    ; preds = %2272
  %2325 = add i32 %32, 312
  %2326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.i32 %2326, 0
  %2328 = and i32 %2327, 65535
  %2329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2328)  ; LegacyF16ToF32(value)
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = and i32 %2331, 65535
  %2333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2332)  ; LegacyF16ToF32(value)
  %2334 = lshr i32 %2327, 16
  %2335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2334)  ; LegacyF16ToF32(value)
  %2336 = fsub fast float %2297, %2335
  %2337 = fmul fast float %2336, %2329
  %2338 = fadd fast float %2337, %2333
  %2339 = call float @dx.op.unary.f32(i32 7, float %2338)  ; Saturate(value)
  br label %2340

; <label>:2340                                    ; preds = %2324, %2272
  %2341 = phi float [ %2339, %2324 ], [ %2297, %2272 ]
  %2342 = call float @dx.op.dot2.f32(i32 54, float %2318, float %2319, float %1761, float %1762)  ; Dot2(ax,ay,bx,by)
  %2343 = call float @dx.op.dot2.f32(i32 54, float %2318, float %2319, float %1763, float %1764)  ; Dot2(ax,ay,bx,by)
  br label %2344

; <label>:2344                                    ; preds = %2340, %2250
  %2345 = phi float [ %2341, %2340 ], [ 0x3FD6666660000000, %2250 ]
  %2346 = phi float [ %2342, %2340 ], [ 0.000000e+00, %2250 ]
  %2347 = phi float [ %2343, %2340 ], [ 0.000000e+00, %2250 ]
  %2348 = phi float [ %2284, %2340 ], [ 1.000000e+00, %2250 ]
  %2349 = add i32 %32, 192
  %2350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2351 = extractvalue %dx.types.ResRet.i32 %2350, 0
  %2352 = lshr i32 %2351, 22
  %2353 = shl nuw nsw i32 %2352, 5
  %2354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2353)  ; LegacyF16ToF32(value)
  %2355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2356 = extractvalue %dx.types.ResRet.i32 %2355, 0
  %2357 = and i32 %2356, 64
  %2358 = icmp eq i32 %2357, 0
  br i1 %2358, label %2392, label %2359

; <label>:2359                                    ; preds = %2344
  %2360 = add i32 %32, 416
  %2361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2360, i32 undef)  ; BufferLoad(srv,index,wot)
  %2362 = extractvalue %dx.types.ResRet.i32 %2361, 0
  %2363 = add i32 %2362, 0
  %2364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2363, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = and i32 %2366, 131072
  %2368 = icmp eq i32 %2367, 0
  %2369 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2364, %dx.types.Handle %63, float %1857, float %1858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2370 = extractvalue %dx.types.ResRet.f32 %2369, 0
  %2371 = extractvalue %dx.types.ResRet.f32 %2369, 1
  %2372 = extractvalue %dx.types.ResRet.f32 %2369, 2
  %2373 = fmul fast float %2370, %275
  %2374 = fmul fast float %2371, %278
  %2375 = fmul fast float %2372, %281
  br i1 %2368, label %2382, label %2376

; <label>:2376                                    ; preds = %2359
  %2377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2378 = extractvalue %dx.types.CBufRet.f32 %2377, 0
  %2379 = fmul fast float %2378, %2373
  %2380 = fmul fast float %2378, %2374
  %2381 = fmul fast float %2378, %2375
  br label %2382

; <label>:2382                                    ; preds = %2376, %2359
  %2383 = phi float [ %2379, %2376 ], [ %2373, %2359 ]
  %2384 = phi float [ %2380, %2376 ], [ %2374, %2359 ]
  %2385 = phi float [ %2381, %2376 ], [ %2375, %2359 ]
  %2386 = fmul fast float %2383, %2354
  %2387 = select i1 %171, float %2386, float %2383
  %2388 = call float @dx.op.dot3.f32(i32 55, float %2387, float %2384, float %2385, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2389 = select i1 %171, float 0.000000e+00, float %2383
  %2390 = select i1 %171, float %2388, float %2384
  %2391 = select i1 %171, float 0.000000e+00, float %2385
  br label %2392

; <label>:2392                                    ; preds = %2382, %2344
  %2393 = phi float [ %2389, %2382 ], [ 0.000000e+00, %2344 ]
  %2394 = phi float [ %2390, %2382 ], [ 0.000000e+00, %2344 ]
  %2395 = phi float [ %2391, %2382 ], [ 0.000000e+00, %2344 ]
  %2396 = add i32 %32, 128
  %2397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2398 = extractvalue %dx.types.ResRet.i32 %2397, 0
  %2399 = and i32 %2398, 255
  %2400 = uitofp i32 %2399 to float
  %2401 = lshr i32 %2398, 8
  %2402 = and i32 %2401, 255
  %2403 = uitofp i32 %2402 to float
  %2404 = call float @dx.op.dot3.f32(i32 55, float %2265, float %2266, float %2267, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2405 = fmul fast float %2403, %2404
  %2406 = fadd fast float %2405, %2400
  %2407 = fmul fast float %2406, 0x3F70101020000000
  %2408 = call float @dx.op.unary.f32(i32 7, float %2407)  ; Saturate(value)
  br i1 %1749, label %2409, label %2417

; <label>:2409                                    ; preds = %2392
  %2410 = fsub fast float 1.000000e+00, %2045
  %2411 = fmul fast float %2410, %1738
  %2412 = fmul fast float %2410, %1739
  %2413 = fmul fast float %2410, %1740
  %2414 = fmul fast float %2410, %1741
  %2415 = fmul fast float %2410, %1742
  %2416 = fmul fast float %2410, %1743
  br label %2417

; <label>:2417                                    ; preds = %2409, %2392
  %2418 = phi float [ %2411, %2409 ], [ %1738, %2392 ]
  %2419 = phi float [ %2412, %2409 ], [ %1739, %2392 ]
  %2420 = phi float [ %2413, %2409 ], [ %1740, %2392 ]
  %2421 = phi float [ %2414, %2409 ], [ %1741, %2392 ]
  %2422 = phi float [ %2415, %2409 ], [ %1742, %2392 ]
  %2423 = phi float [ %2416, %2409 ], [ %1743, %2392 ]
  %2424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2425 = extractvalue %dx.types.ResRet.i32 %2424, 0
  %2426 = and i32 %2425, 3
  %2427 = icmp eq i32 %2426, 3
  br i1 %2427, label %2506, label %2428

; <label>:2428                                    ; preds = %2417
  %2429 = and i32 %2425, 16
  %2430 = icmp ne i32 %2429, 0
  %2431 = select i1 %2430, float %2045, float 0.000000e+00
  %2432 = icmp eq i32 %2426, 0
  br i1 %2432, label %2433, label %2461

; <label>:2433                                    ; preds = %2428
  %2434 = and i32 %2425, 64
  %2435 = icmp ne i32 %2434, 0
  %2436 = select i1 %2435, float %2045, float 0.000000e+00
  %2437 = fsub fast float %2265, %2418
  %2438 = fsub fast float %2266, %2419
  %2439 = fsub fast float %2267, %2420
  %2440 = fmul fast float %2431, %2437
  %2441 = fmul fast float %2431, %2438
  %2442 = fmul fast float %2431, %2439
  %2443 = fadd fast float %2440, %2418
  %2444 = fadd fast float %2441, %2419
  %2445 = fadd fast float %2442, %2420
  %2446 = fsub fast float %2251, %1744
  %2447 = fmul fast float %2431, %2446
  %2448 = fadd fast float %2447, %1744
  %2449 = fsub fast float %2393, %2421
  %2450 = fsub fast float %2394, %2422
  %2451 = fsub fast float %2395, %2423
  %2452 = fmul fast float %2436, %2449
  %2453 = fmul fast float %2436, %2450
  %2454 = fmul fast float %2436, %2451
  %2455 = fadd fast float %2452, %2421
  %2456 = fadd fast float %2453, %2422
  %2457 = fadd fast float %2454, %2423
  %2458 = fsub fast float %2408, %1747
  %2459 = fmul fast float %2431, %2458
  %2460 = fadd fast float %2459, %1747
  br label %2506

; <label>:2461                                    ; preds = %2428
  %2462 = icmp eq i32 %2426, 1
  br i1 %2462, label %2463, label %2476

; <label>:2463                                    ; preds = %2461
  %2464 = fadd fast float %2265, -1.000000e+00
  %2465 = fadd fast float %2266, -1.000000e+00
  %2466 = fadd fast float %2267, -1.000000e+00
  %2467 = fmul fast float %2431, %2464
  %2468 = fmul fast float %2431, %2465
  %2469 = fmul fast float %2431, %2466
  %2470 = fadd fast float %2467, 1.000000e+00
  %2471 = fadd fast float %2468, 1.000000e+00
  %2472 = fadd fast float %2469, 1.000000e+00
  %2473 = fmul fast float %2470, %2418
  %2474 = fmul fast float %2471, %2419
  %2475 = fmul fast float %2472, %2420
  br label %2506

; <label>:2476                                    ; preds = %2461
  %2477 = icmp eq i32 %2426, 2
  br i1 %2477, label %2478, label %2506

; <label>:2478                                    ; preds = %2476
  %2479 = call float @dx.op.unary.f32(i32 24, float %2265)  ; Sqrt(value)
  %2480 = call float @dx.op.unary.f32(i32 24, float %2266)  ; Sqrt(value)
  %2481 = call float @dx.op.unary.f32(i32 24, float %2267)  ; Sqrt(value)
  %2482 = fadd fast float %2479, -5.000000e-01
  %2483 = fadd fast float %2480, -5.000000e-01
  %2484 = fadd fast float %2481, -5.000000e-01
  %2485 = fmul fast float %2482, %2431
  %2486 = fmul fast float %2483, %2431
  %2487 = fmul fast float %2484, %2431
  %2488 = fadd fast float %2485, 5.000000e-01
  %2489 = fadd fast float %2486, 5.000000e-01
  %2490 = fadd fast float %2487, 5.000000e-01
  %2491 = fmul fast float %2488, 2.000000e+00
  %2492 = fsub fast float 1.000000e+00, %2491
  %2493 = fmul fast float %2492, %2418
  %2494 = fadd fast float %2493, %2491
  %2495 = fmul fast float %2494, %2418
  %2496 = fmul fast float %2489, 2.000000e+00
  %2497 = fsub fast float 1.000000e+00, %2496
  %2498 = fmul fast float %2497, %2419
  %2499 = fadd fast float %2498, %2496
  %2500 = fmul fast float %2499, %2419
  %2501 = fmul fast float %2490, 2.000000e+00
  %2502 = fsub fast float 1.000000e+00, %2501
  %2503 = fmul fast float %2502, %2420
  %2504 = fadd fast float %2503, %2501
  %2505 = fmul fast float %2504, %2420
  br label %2506

; <label>:2506                                    ; preds = %2478, %2476, %2463, %2433, %2417
  %2507 = phi float [ %2418, %2417 ], [ %2495, %2478 ], [ %2418, %2476 ], [ %2473, %2463 ], [ %2443, %2433 ]
  %2508 = phi float [ %2419, %2417 ], [ %2500, %2478 ], [ %2419, %2476 ], [ %2474, %2463 ], [ %2444, %2433 ]
  %2509 = phi float [ %2420, %2417 ], [ %2505, %2478 ], [ %2420, %2476 ], [ %2475, %2463 ], [ %2445, %2433 ]
  %2510 = phi float [ %2421, %2417 ], [ %2421, %2478 ], [ %2421, %2476 ], [ %2421, %2463 ], [ %2455, %2433 ]
  %2511 = phi float [ %2422, %2417 ], [ %2422, %2478 ], [ %2422, %2476 ], [ %2422, %2463 ], [ %2456, %2433 ]
  %2512 = phi float [ %2423, %2417 ], [ %2423, %2478 ], [ %2423, %2476 ], [ %2423, %2463 ], [ %2457, %2433 ]
  %2513 = phi float [ %1744, %2417 ], [ %1744, %2478 ], [ %1744, %2476 ], [ %1744, %2463 ], [ %2448, %2433 ]
  %2514 = phi float [ %1747, %2417 ], [ %1747, %2478 ], [ %1747, %2476 ], [ %1747, %2463 ], [ %2460, %2433 ]
  %2515 = and i32 %2425, 12
  %2516 = icmp eq i32 %2515, 12
  br i1 %2516, label %2589, label %2517

; <label>:2517                                    ; preds = %2506
  %2518 = and i32 %2425, 2097184
  %2519 = icmp eq i32 %2518, 2097184
  %2520 = select i1 %2519, float %2045, float 0.000000e+00
  %2521 = and i32 %2425, 4194336
  %2522 = icmp eq i32 %2521, 4194336
  %2523 = select i1 %2522, float %2045, float 0.000000e+00
  %2524 = and i32 %2425, 8388640
  %2525 = icmp eq i32 %2524, 8388640
  %2526 = select i1 %2525, float %2045, float 0.000000e+00
  %2527 = icmp eq i32 %2515, 0
  br i1 %2527, label %2528, label %2541

; <label>:2528                                    ; preds = %2517
  %2529 = fsub fast float %2346, %1736
  %2530 = fsub fast float %2347, %1737
  %2531 = fmul fast float %2520, %2529
  %2532 = fmul fast float %2520, %2530
  %2533 = fadd fast float %2531, %1736
  %2534 = fadd fast float %2532, %1737
  %2535 = fsub fast float %2348, %1746
  %2536 = fmul fast float %2523, %2535
  %2537 = fadd fast float %2536, %1746
  %2538 = fsub fast float %2345, %1745
  %2539 = fmul fast float %2526, %2538
  %2540 = fadd fast float %2539, %1745
  br label %2589

; <label>:2541                                    ; preds = %2517
  %2542 = icmp eq i32 %2515, 4
  br i1 %2542, label %2543, label %2575

; <label>:2543                                    ; preds = %2541
  %2544 = fmul fast float %2520, %2346
  %2545 = fmul fast float %2520, %2347
  %2546 = fadd fast float %2544, %1736
  %2547 = fadd fast float %2545, %1737
  %2548 = call float @dx.op.binary.f32(i32 36, float %1746, float %2348)  ; FMin(a,b)
  %2549 = fsub fast float %2548, %1746
  %2550 = fmul fast float %2549, %2523
  %2551 = fadd fast float %2550, %1746
  %2552 = fadd fast float %2345, %1745
  %2553 = fmul fast float %2552, 0x3FF337FAE0000000
  %2554 = fmul fast float %1745, %1745
  %2555 = fmul fast float %2345, %2345
  %2556 = fadd fast float %2555, %2554
  %2557 = fmul fast float %2556, 0x3FE5152B00000000
  %2558 = fmul fast float %1745, 0xBFCC1F85E0000000
  %2559 = fmul fast float %2558, %2345
  %2560 = fadd fast float %2559, 0xBFE1363700000000
  %2561 = fadd fast float %2560, %2553
  %2562 = fsub fast float %2561, %2557
  %2563 = fmul fast float %2552, 0x3FBA6F0D00000000
  %2564 = fmul fast float %2556, 0x3FD0432880000000
  %2565 = fmul fast float %1745, 0xBFEF110800000000
  %2566 = fmul fast float %2565, %2345
  %2567 = fadd fast float %2566, 1.000000e+00
  %2568 = fsub fast float %2567, %2563
  %2569 = fadd fast float %2568, %2564
  %2570 = fdiv fast float %2562, %2569
  %2571 = call float @dx.op.unary.f32(i32 7, float %2570)  ; Saturate(value)
  %2572 = fsub fast float %2571, %1745
  %2573 = fmul fast float %2572, %2526
  %2574 = fadd fast float %2573, %1745
  br label %2589

; <label>:2575                                    ; preds = %2541
  %2576 = icmp eq i32 %2515, 8
  br i1 %2576, label %2577, label %2589

; <label>:2577                                    ; preds = %2575
  %2578 = fmul fast float %2520, %2346
  %2579 = fmul fast float %2520, %2347
  %2580 = fadd fast float %2578, %1736
  %2581 = fadd fast float %2579, %1737
  %2582 = call float @dx.op.binary.f32(i32 36, float %1746, float %2348)  ; FMin(a,b)
  %2583 = fsub fast float %2582, %1746
  %2584 = fmul fast float %2583, %2523
  %2585 = fadd fast float %2584, %1746
  %2586 = fsub fast float %2345, %1745
  %2587 = fmul fast float %2526, %2586
  %2588 = fadd fast float %2587, %1745
  br label %2589

; <label>:2589                                    ; preds = %2577, %2575, %2543, %2528, %2506, %2044, %1748, %1735
  %2590 = phi float [ %1736, %2506 ], [ %1736, %2044 ], [ %1736, %1735 ], [ %2580, %2577 ], [ %1736, %2575 ], [ %2546, %2543 ], [ %2533, %2528 ], [ %1736, %1748 ]
  %2591 = phi float [ %1737, %2506 ], [ %1737, %2044 ], [ %1737, %1735 ], [ %2581, %2577 ], [ %1737, %2575 ], [ %2547, %2543 ], [ %2534, %2528 ], [ %1737, %1748 ]
  %2592 = phi float [ %2507, %2506 ], [ %1738, %2044 ], [ %1738, %1735 ], [ %2507, %2577 ], [ %2507, %2575 ], [ %2507, %2543 ], [ %2507, %2528 ], [ %1738, %1748 ]
  %2593 = phi float [ %2508, %2506 ], [ %1739, %2044 ], [ %1739, %1735 ], [ %2508, %2577 ], [ %2508, %2575 ], [ %2508, %2543 ], [ %2508, %2528 ], [ %1739, %1748 ]
  %2594 = phi float [ %2509, %2506 ], [ %1740, %2044 ], [ %1740, %1735 ], [ %2509, %2577 ], [ %2509, %2575 ], [ %2509, %2543 ], [ %2509, %2528 ], [ %1740, %1748 ]
  %2595 = phi float [ %2510, %2506 ], [ %1741, %2044 ], [ %1741, %1735 ], [ %2510, %2577 ], [ %2510, %2575 ], [ %2510, %2543 ], [ %2510, %2528 ], [ %1741, %1748 ]
  %2596 = phi float [ %2511, %2506 ], [ %1742, %2044 ], [ %1742, %1735 ], [ %2511, %2577 ], [ %2511, %2575 ], [ %2511, %2543 ], [ %2511, %2528 ], [ %1742, %1748 ]
  %2597 = phi float [ %2512, %2506 ], [ %1743, %2044 ], [ %1743, %1735 ], [ %2512, %2577 ], [ %2512, %2575 ], [ %2512, %2543 ], [ %2512, %2528 ], [ %1743, %1748 ]
  %2598 = phi float [ %2513, %2506 ], [ %1744, %2044 ], [ %1744, %1735 ], [ %2513, %2577 ], [ %2513, %2575 ], [ %2513, %2543 ], [ %2513, %2528 ], [ %1744, %1748 ]
  %2599 = phi float [ %1745, %2506 ], [ %1745, %2044 ], [ %1745, %1735 ], [ %2588, %2577 ], [ %1745, %2575 ], [ %2574, %2543 ], [ %2540, %2528 ], [ %1745, %1748 ]
  %2600 = phi float [ %1746, %2506 ], [ %1746, %2044 ], [ %1746, %1735 ], [ %2585, %2577 ], [ %1746, %2575 ], [ %2551, %2543 ], [ %2537, %2528 ], [ %1746, %1748 ]
  %2601 = phi float [ %2514, %2506 ], [ %1747, %2044 ], [ %1747, %1735 ], [ %2514, %2577 ], [ %2514, %2575 ], [ %2514, %2543 ], [ %2514, %2528 ], [ %1747, %1748 ]
  br i1 %362, label %3443, label %2602

; <label>:2602                                    ; preds = %2589
  %2603 = icmp ult i32 %413, 4
  %2604 = add i32 %32, 72
  %2605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2604, i32 undef)  ; BufferLoad(srv,index,wot)
  %2606 = extractvalue %dx.types.ResRet.i32 %2605, 0
  %2607 = add i32 %32, 76
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = or i32 %2609, %2606
  %2611 = icmp eq i32 %2610, 0
  br i1 %2611, label %3443, label %2612

; <label>:2612                                    ; preds = %2602
  %2613 = and i32 %2606, 262144
  %2614 = icmp ne i32 %2613, 0
  %2615 = select i1 %2614, float %35, float 1.000000e+00
  %2616 = select i1 %2614, float %36, float 0.000000e+00
  %2617 = select i1 %2614, float %37, float 0.000000e+00
  %2618 = select i1 %2614, float %38, float 1.000000e+00
  %2619 = select i1 %2614, float %39, float %55
  %2620 = select i1 %2614, float %40, float %56
  %2621 = add i32 %32, 332
  %2622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2621, i32 undef)  ; BufferLoad(srv,index,wot)
  %2623 = extractvalue %dx.types.ResRet.i32 %2622, 0
  %2624 = lshr i32 %2623, 16
  %2625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2624)  ; LegacyF16ToF32(value)
  %2626 = fmul fast float %2625, 0x3F50624DE0000000
  %2627 = add i32 %32, 136
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = lshr i32 %2629, 16
  %2631 = and i32 %2630, 255
  %2632 = lshr i32 %2629, 24
  %2633 = add i32 %32, 340
  %2634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2633, i32 undef)  ; BufferLoad(srv,index,wot)
  %2635 = extractvalue %dx.types.ResRet.i32 %2634, 0
  %2636 = and i32 %2635, 65535
  %2637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2636)  ; LegacyF16ToF32(value)
  %2638 = lshr i32 %2635, 16
  %2639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2638)  ; LegacyF16ToF32(value)
  %2640 = add i32 %32, 80
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2640, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = lshr i32 %2642, 22
  %2644 = shl nuw nsw i32 %2643, 5
  %2645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2644)  ; LegacyF16ToF32(value)
  %2646 = shl i32 %2642, 4
  %2647 = and i32 %2646, 32752
  %2648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2647)  ; LegacyF16ToF32(value)
  %2649 = lshr i32 %2642, 7
  %2650 = and i32 %2649, 32752
  %2651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2650)  ; LegacyF16ToF32(value)
  %2652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2653 = extractvalue %dx.types.CBufRet.f32 %2652, 3
  %2654 = fmul fast float %2653, 1.000000e+03
  %2655 = fmul fast float %352, %2654
  %2656 = call float @dx.op.unary.f32(i32 22, float %2655)  ; Frc(value)
  %2657 = fadd fast float %2656, %342
  %2658 = fmul fast float %353, %2654
  %2659 = call float @dx.op.unary.f32(i32 22, float %2658)  ; Frc(value)
  %2660 = fadd fast float %2659, %344
  %2661 = fmul fast float %2626, %2654
  %2662 = call float @dx.op.unary.f32(i32 22, float %2661)  ; Frc(value)
  %2663 = fmul fast float %2662, 0x401921FB60000000
  %2664 = fadd fast float %2663, %2645
  %2665 = call float @dx.op.unary.f32(i32 13, float %2664)  ; Sin(value)
  %2666 = call float @dx.op.unary.f32(i32 12, float %2664)  ; Cos(value)
  %2667 = fsub fast float -0.000000e+00, %2665
  %2668 = fadd fast float %2619, -5.000000e-01
  %2669 = fadd fast float %2620, -5.000000e-01
  %2670 = fmul fast float %2637, %2668
  %2671 = fmul fast float %2639, %2669
  %2672 = fadd fast float %2670, 5.000000e-01
  %2673 = fadd fast float %2671, 5.000000e-01
  %2674 = fmul fast float %2648, %2672
  %2675 = fmul fast float %2651, %2673
  %2676 = fmul fast float %2666, %2674
  %2677 = call float @dx.op.tertiary.f32(i32 46, float %2667, float %2675, float %2676)  ; FMad(a,b,c)
  %2678 = fmul fast float %2665, %2674
  %2679 = call float @dx.op.tertiary.f32(i32 46, float %2666, float %2675, float %2678)  ; FMad(a,b,c)
  %2680 = fadd fast float %2657, %2677
  %2681 = fadd fast float %2660, %2679
  %2682 = icmp ugt i32 %2631, 1
  %2683 = icmp ugt i32 %2629, 33554431
  %2684 = or i1 %2683, %2682
  br i1 %2684, label %2685, label %2710

; <label>:2685                                    ; preds = %2612
  %2686 = add i32 %32, 276
  %2687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2686, i32 undef)  ; BufferLoad(srv,index,wot)
  %2688 = extractvalue %dx.types.ResRet.i32 %2687, 0
  %2689 = lshr i32 %2688, 16
  %2690 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2689)  ; LegacyF16ToF32(value)
  %2691 = fmul fast float %2653, %2690
  %2692 = call float @dx.op.unary.f32(i32 22, float %2691)  ; Frc(value)
  %2693 = mul nuw nsw i32 %2631, %2632
  %2694 = uitofp i32 %2693 to float
  %2695 = fmul fast float %2692, %2694
  %2696 = call float @dx.op.unary.f32(i32 27, float %2695)  ; Round_ni(value)
  %2697 = fptoui float %2696 to i32
  %2698 = urem i32 %2697, %2631
  %2699 = udiv i32 %2697, %2632
  %2700 = call float @dx.op.unary.f32(i32 22, float %2680)  ; Frc(value)
  %2701 = call float @dx.op.unary.f32(i32 22, float %2681)  ; Frc(value)
  %2702 = uitofp i32 %2698 to float
  %2703 = uitofp i32 %2699 to float
  %2704 = fadd fast float %2700, %2702
  %2705 = fadd fast float %2701, %2703
  %2706 = uitofp i32 %2631 to float
  %2707 = uitofp i32 %2632 to float
  %2708 = fdiv fast float %2704, %2706
  %2709 = fdiv fast float %2705, %2707
  br label %2710

; <label>:2710                                    ; preds = %2685, %2612
  %2711 = phi float [ %2708, %2685 ], [ %2680, %2612 ]
  %2712 = phi float [ %2709, %2685 ], [ %2681, %2612 ]
  %2713 = and i32 %2606, 16777216
  %2714 = icmp eq i32 %2713, 0
  br i1 %2714, label %2824, label %2715

; <label>:2715                                    ; preds = %2710
  %2716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2717 = extractvalue %dx.types.CBufRet.f32 %2716, 0
  %2718 = extractvalue %dx.types.CBufRet.f32 %2716, 1
  %2719 = extractvalue %dx.types.CBufRet.f32 %2716, 2
  %2720 = fadd fast float %2717, %130
  %2721 = fadd fast float %2718, %131
  %2722 = fadd fast float %2719, %132
  %2723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2724 = extractvalue %dx.types.CBufRet.f32 %2723, 0
  %2725 = call float @dx.op.unary.f32(i32 7, float %2724)  ; Saturate(value)
  %2726 = icmp eq i32 %33, 65535
  br i1 %2726, label %2821, label %2727

; <label>:2727                                    ; preds = %2715
  %2728 = lshr i32 %33, 1
  %2729 = shl i32 %2728, 2
  %2730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.i32 %2730, 0
  %2732 = and i32 %33, 1
  %2733 = icmp ne i32 %2732, 0
  %2734 = lshr i32 %2731, 16
  %2735 = and i32 %2731, 65535
  %2736 = select i1 %2733, i32 %2734, i32 %2735
  %2737 = icmp eq i32 %2736, 65535
  br i1 %2737, label %2817, label %2738

; <label>:2738                                    ; preds = %2727
  %2739 = mul nuw nsw i32 %2736, 40
  %2740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.f32 %2740, 0
  %2742 = extractvalue %dx.types.ResRet.f32 %2740, 1
  %2743 = extractvalue %dx.types.ResRet.f32 %2740, 2
  %2744 = add nuw nsw i32 %2739, 12
  %2745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %2746 = extractvalue %dx.types.ResRet.f32 %2745, 0
  %2747 = extractvalue %dx.types.ResRet.f32 %2745, 1
  %2748 = extractvalue %dx.types.ResRet.f32 %2745, 2
  %2749 = add nuw nsw i32 %2739, 24
  %2750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.f32 %2750, 0
  %2752 = extractvalue %dx.types.ResRet.f32 %2750, 1
  %2753 = extractvalue %dx.types.ResRet.f32 %2750, 2
  %2754 = add nuw nsw i32 %2739, 36
  %2755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.f32 %2755, 0
  %2757 = fsub fast float %2720, %2741
  %2758 = fsub fast float %2721, %2742
  %2759 = fsub fast float %2722, %2743
  %2760 = fmul fast float %2756, %2757
  %2761 = fmul fast float %2756, %2758
  %2762 = fmul fast float %2756, %2759
  %2763 = call float @dx.op.unary.f32(i32 27, float %2760)  ; Round_ni(value)
  %2764 = call float @dx.op.unary.f32(i32 27, float %2761)  ; Round_ni(value)
  %2765 = call float @dx.op.unary.f32(i32 27, float %2762)  ; Round_ni(value)
  %2766 = fadd fast float %2763, 5.000000e-01
  %2767 = fadd fast float %2764, 5.000000e-01
  %2768 = fadd fast float %2765, 5.000000e-01
  %2769 = fmul fast float %2766, %2746
  %2770 = fmul fast float %2767, %2747
  %2771 = fmul fast float %2768, %2748
  %2772 = shl i32 %33, 2
  %2773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2772, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.i32 %2773, 0
  %2775 = add i32 %2774, 0
  %2776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2775, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2777 = call float @dx.op.unary.f32(i32 22, float %2769)  ; Frc(value)
  %2778 = call float @dx.op.unary.f32(i32 22, float %2770)  ; Frc(value)
  %2779 = call float @dx.op.unary.f32(i32 22, float %2771)  ; Frc(value)
  %2780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2776, %dx.types.Handle %29, float %2777, float %2778, float %2779, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2781 = extractvalue %dx.types.ResRet.f32 %2780, 0
  %2782 = extractvalue %dx.types.ResRet.f32 %2780, 1
  %2783 = extractvalue %dx.types.ResRet.f32 %2780, 2
  %2784 = fmul fast float %2781, 1.023000e+03
  %2785 = fmul fast float %2782, 1.023000e+03
  %2786 = fmul fast float %2783, 1.023000e+03
  %2787 = fadd fast float %2784, 5.000000e-01
  %2788 = fadd fast float %2785, 5.000000e-01
  %2789 = fadd fast float %2786, 5.000000e-01
  %2790 = call float @dx.op.unary.f32(i32 27, float %2787)  ; Round_ni(value)
  %2791 = call float @dx.op.unary.f32(i32 27, float %2788)  ; Round_ni(value)
  %2792 = call float @dx.op.unary.f32(i32 27, float %2789)  ; Round_ni(value)
  %2793 = fsub fast float %2760, %2763
  %2794 = fsub fast float %2761, %2764
  %2795 = fsub fast float %2762, %2765
  %2796 = fmul fast float %2793, 7.500000e-01
  %2797 = fmul fast float %2794, 7.500000e-01
  %2798 = fmul fast float %2795, 7.500000e-01
  %2799 = fadd fast float %2763, 1.250000e-01
  %2800 = fadd fast float %2799, %2796
  %2801 = fadd fast float %2800, %2790
  %2802 = fadd fast float %2764, 1.250000e-01
  %2803 = fadd fast float %2802, %2797
  %2804 = fadd fast float %2803, %2791
  %2805 = fadd fast float %2765, 1.250000e-01
  %2806 = fadd fast float %2805, %2798
  %2807 = fadd fast float %2806, %2792
  %2808 = fmul fast float %2801, %2751
  %2809 = fmul fast float %2804, %2752
  %2810 = fmul fast float %2807, %2753
  %2811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2772, i32 undef)  ; BufferLoad(srv,index,wot)
  %2812 = extractvalue %dx.types.ResRet.i32 %2811, 0
  %2813 = add i32 %2812, 0
  %2814 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2813, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2814, %dx.types.Handle %27, float %2808, float %2809, float %2810, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2816 = extractvalue %dx.types.ResRet.f32 %2815, 0
  br label %2817

; <label>:2817                                    ; preds = %2738, %2727
  %2818 = phi float [ %2816, %2738 ], [ -1.000000e+00, %2727 ]
  %2819 = fadd fast float %2818, %2725
  %2820 = call float @dx.op.unary.f32(i32 7, float %2819)  ; Saturate(value)
  br label %2821

; <label>:2821                                    ; preds = %2817, %2715
  %2822 = phi float [ %2820, %2817 ], [ %2725, %2715 ]
  %2823 = fmul fast float %2822, %408
  br label %2824

; <label>:2824                                    ; preds = %2821, %2710
  %2825 = phi float [ %2823, %2821 ], [ %408, %2710 ]
  %2826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2604, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.i32 %2826, 0
  %2828 = and i32 %2827, 256
  %2829 = icmp eq i32 %2828, 0
  br i1 %2829, label %2876, label %2830

; <label>:2830                                    ; preds = %2824
  %2831 = add i32 %32, 452
  %2832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2831, i32 undef)  ; BufferLoad(srv,index,wot)
  %2833 = extractvalue %dx.types.ResRet.i32 %2832, 0
  %2834 = add i32 %2833, 0
  %2835 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2834, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2836 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2835, %dx.types.Handle %64, float %2711, float %2712, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2837 = extractvalue %dx.types.ResRet.f32 %2836, 0
  %2838 = add i32 %32, 148
  %2839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %2840 = extractvalue %dx.types.ResRet.i32 %2839, 0
  %2841 = shl i32 %2840, 4
  %2842 = and i32 %2841, 32752
  %2843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2842)  ; LegacyF16ToF32(value)
  %2844 = lshr i32 %2840, 7
  %2845 = and i32 %2844, 32752
  %2846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2845)  ; LegacyF16ToF32(value)
  %2847 = fsub fast float 1.000000e+00, %2825
  %2848 = call float @dx.op.binary.f32(i32 35, float %2847, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2849 = bitcast float %2825 to i32
  %2850 = sitofp i32 %2849 to float
  %2851 = fadd fast float %2850, 0xC1CFBF8940000000
  %2852 = fmul fast float %2846, %2851
  %2853 = fadd fast float %2852, 0x41CFBF8940000000
  %2854 = fptosi float %2853 to i32
  %2855 = bitcast i32 %2854 to float
  %2856 = bitcast float %2848 to i32
  %2857 = sitofp i32 %2856 to float
  %2858 = fadd fast float %2857, 0xC1CFBF8940000000
  %2859 = fmul fast float %2858, %2846
  %2860 = fadd fast float %2859, 0x41CFBF8940000000
  %2861 = fptosi float %2860 to i32
  %2862 = bitcast i32 %2861 to float
  %2863 = fmul fast float %2855, %2843
  %2864 = fmul fast float %2862, %2843
  %2865 = fsub fast float %2848, %2863
  %2866 = fadd fast float %2864, %2848
  %2867 = call float @dx.op.unary.f32(i32 7, float %2865)  ; Saturate(value)
  %2868 = call float @dx.op.unary.f32(i32 7, float %2866)  ; Saturate(value)
  %2869 = fsub fast float %2837, %2867
  %2870 = fsub fast float %2868, %2867
  %2871 = bitcast float %2870 to i32
  %2872 = sub nsw i32 2129859010, %2871
  %2873 = bitcast i32 %2872 to float
  %2874 = fmul fast float %2873, %2869
  %2875 = call float @dx.op.unary.f32(i32 7, float %2874)  ; Saturate(value)
  br label %2876

; <label>:2876                                    ; preds = %2830, %2824
  %2877 = phi float [ %2875, %2830 ], [ %2825, %2824 ]
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2604, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = and i32 %2879, 128
  %2881 = icmp eq i32 %2880, 0
  br i1 %2881, label %2898, label %2882

; <label>:2882                                    ; preds = %2876
  %2883 = add i32 %32, 436
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = add i32 %2885, 0
  %2887 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2886, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2888 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2887, %dx.types.Handle %64, float %2711, float %2712, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2889 = extractvalue %dx.types.ResRet.f32 %2888, 0
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2604, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = and i32 %2891, 524288
  %2893 = icmp ne i32 %2892, 0
  %2894 = fcmp fast ogt float %2889, 0x3FE0101020000000
  %2895 = select i1 %2894, float 1.000000e+00, float 0.000000e+00
  %2896 = select i1 %2893, float %2895, float %2889
  %2897 = fmul fast float %2896, %2877
  br label %2898

; <label>:2898                                    ; preds = %2882, %2876
  %2899 = phi float [ %2897, %2882 ], [ %2877, %2876 ]
  %2900 = fcmp fast ult float %2899, 0x3F70101020000000
  br i1 %2900, label %3443, label %2901

; <label>:2901                                    ; preds = %2898
  %2902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2604, i32 undef)  ; BufferLoad(srv,index,wot)
  %2903 = extractvalue %dx.types.ResRet.i32 %2902, 0
  %2904 = and i32 %2903, 16
  %2905 = icmp eq i32 %2904, 0
  br i1 %2905, label %3104, label %2906

; <label>:2906                                    ; preds = %2901
  %2907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2908 = extractvalue %dx.types.ResRet.i32 %2907, 0
  %2909 = add i32 %32, 388
  %2910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2909, i32 undef)  ; BufferLoad(srv,index,wot)
  %2911 = extractvalue %dx.types.ResRet.i32 %2910, 0
  %2912 = add i32 %2911, 0
  %2913 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2912, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2914 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2913, %dx.types.Handle %63, float %2711, float %2712, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2915 = extractvalue %dx.types.ResRet.f32 %2914, 0
  %2916 = extractvalue %dx.types.ResRet.f32 %2914, 1
  %2917 = extractvalue %dx.types.ResRet.f32 %2914, 2
  %2918 = extractvalue %dx.types.ResRet.f32 %2914, 3
  %2919 = and i32 %2908, 255
  %2920 = uitofp i32 %2919 to float
  %2921 = lshr i32 %2908, 8
  %2922 = and i32 %2921, 255
  %2923 = uitofp i32 %2922 to float
  %2924 = fmul fast float %2918, %2920
  %2925 = fadd fast float %2924, %2923
  %2926 = fmul fast float %2925, 0x3F70101000000000
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2604, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = and i32 %2928, 512
  %2930 = icmp eq i32 %2929, 0
  br i1 %2930, label %2939, label %2931

; <label>:2931                                    ; preds = %2906
  %2932 = add i32 %32, 472
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2932, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = add i32 %2934, 0
  %2936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2935, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2937 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2936, %dx.types.Handle %64, float %2711, float %2712, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2938 = extractvalue %dx.types.ResRet.f32 %2937, 0
  br label %2939

; <label>:2939                                    ; preds = %2931, %2906
  %2940 = phi float [ %2938, %2931 ], [ 1.000000e+00, %2906 ]
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2604, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = and i32 %2942, 33554432
  %2944 = icmp eq i32 %2943, 0
  br i1 %2944, label %3051, label %2945

; <label>:2945                                    ; preds = %2939
  %2946 = add i32 %32, 272
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2946, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = and i32 %2948, 65535
  %2950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2949)  ; LegacyF16ToF32(value)
  %2951 = lshr i32 %2948, 16
  %2952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2951)  ; LegacyF16ToF32(value)
  %2953 = add i32 %32, 276
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = and i32 %2955, 65535
  %2957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2956)  ; LegacyF16ToF32(value)
  %2958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.i32 %2958, 0
  %2960 = lshr i32 %2959, 24
  %2961 = uitofp i32 %2960 to float
  %2962 = fmul fast float %2961, 0x3F70101020000000
  %2963 = and i32 %2959, 255
  %2964 = uitofp i32 %2963 to float
  %2965 = fmul fast float %2964, 0x3F70101020000000
  %2966 = lshr i32 %2959, 8
  %2967 = and i32 %2966, 255
  %2968 = uitofp i32 %2967 to float
  %2969 = fmul fast float %2968, 0x3F70101020000000
  %2970 = lshr i32 %2959, 16
  %2971 = and i32 %2970, 255
  %2972 = uitofp i32 %2971 to float
  %2973 = fmul fast float %2972, 0x3F70101020000000
  %2974 = add i32 %32, 268
  %2975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2974, i32 undef)  ; BufferLoad(srv,index,wot)
  %2976 = extractvalue %dx.types.ResRet.i32 %2975, 0
  %2977 = lshr i32 %2976, 24
  %2978 = uitofp i32 %2977 to float
  %2979 = fmul fast float %2978, 0x3F70101020000000
  %2980 = and i32 %2976, 255
  %2981 = uitofp i32 %2980 to float
  %2982 = fmul fast float %2981, 0x3F70101020000000
  %2983 = lshr i32 %2976, 8
  %2984 = and i32 %2983, 255
  %2985 = uitofp i32 %2984 to float
  %2986 = fmul fast float %2985, 0x3F70101020000000
  %2987 = lshr i32 %2976, 16
  %2988 = and i32 %2987, 255
  %2989 = uitofp i32 %2988 to float
  %2990 = fmul fast float %2989, 0x3F70101020000000
  %2991 = bitcast float %2915 to i32
  %2992 = ashr i32 %2991, 1
  %2993 = sub nsw i32 1597463174, %2992
  %2994 = bitcast i32 %2993 to float
  %2995 = fmul fast float %2915, 5.000000e-01
  %2996 = fmul fast float %2994, %2994
  %2997 = fmul fast float %2996, %2995
  %2998 = fsub fast float 1.500000e+00, %2997
  %2999 = fmul fast float %2994, %2915
  %3000 = fmul fast float %2999, %2998
  %3001 = bitcast float %2916 to i32
  %3002 = ashr i32 %3001, 1
  %3003 = sub nsw i32 1597463174, %3002
  %3004 = bitcast i32 %3003 to float
  %3005 = fmul fast float %2916, 5.000000e-01
  %3006 = fmul fast float %3004, %3004
  %3007 = fmul fast float %3006, %3005
  %3008 = fsub fast float 1.500000e+00, %3007
  %3009 = fmul fast float %3004, %2916
  %3010 = fmul fast float %3009, %3008
  %3011 = bitcast float %2917 to i32
  %3012 = ashr i32 %3011, 1
  %3013 = sub nsw i32 1597463174, %3012
  %3014 = bitcast i32 %3013 to float
  %3015 = fmul fast float %2917, 5.000000e-01
  %3016 = fmul fast float %3014, %3014
  %3017 = fmul fast float %3016, %3015
  %3018 = fsub fast float 1.500000e+00, %3017
  %3019 = fmul fast float %3014, %2917
  %3020 = fmul fast float %3019, %3018
  %3021 = fsub fast float %3000, %2982
  %3022 = fsub fast float %3010, %2986
  %3023 = fsub fast float %3020, %2990
  %3024 = fmul fast float %3021, %2950
  %3025 = fmul fast float %3022, %2952
  %3026 = fmul fast float %3023, %2957
  %3027 = fadd fast float %3024, %2965
  %3028 = fadd fast float %3025, %2969
  %3029 = fadd fast float %3026, %2973
  %3030 = call float @dx.op.unary.f32(i32 7, float %3027)  ; Saturate(value)
  %3031 = call float @dx.op.unary.f32(i32 7, float %3028)  ; Saturate(value)
  %3032 = call float @dx.op.unary.f32(i32 7, float %3029)  ; Saturate(value)
  %3033 = fmul fast float %3030, %3030
  %3034 = fmul fast float %3031, %3031
  %3035 = fmul fast float %3032, %3032
  %3036 = fsub fast float %3033, %2915
  %3037 = fsub fast float %3034, %2916
  %3038 = fsub fast float %3035, %2917
  %3039 = fmul fast float %3036, %2940
  %3040 = fmul fast float %3037, %2940
  %3041 = fmul fast float %3038, %2940
  %3042 = fadd fast float %3039, %2915
  %3043 = fadd fast float %3040, %2916
  %3044 = fadd fast float %3041, %2917
  %3045 = fadd fast float %2962, %2926
  %3046 = fsub fast float %3045, %2979
  %3047 = call float @dx.op.unary.f32(i32 7, float %3046)  ; Saturate(value)
  %3048 = fsub fast float %3047, %2926
  %3049 = fmul fast float %3048, %2940
  %3050 = fadd fast float %3049, %2926
  br label %3104

; <label>:3051                                    ; preds = %2939
  %3052 = and i32 %2942, 134217728
  %3053 = icmp eq i32 %3052, 0
  br i1 %3053, label %3088, label %3054

; <label>:3054                                    ; preds = %3051
  %3055 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %3056 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %3057 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %3058 = fadd fast float %3055, -5.000000e-01
  %3059 = fadd fast float %3056, -5.000000e-01
  %3060 = fadd fast float %3057, -5.000000e-01
  %3061 = fmul fast float %3058, %2940
  %3062 = fmul fast float %3059, %2940
  %3063 = fmul fast float %3060, %2940
  %3064 = fadd fast float %3061, 5.000000e-01
  %3065 = fadd fast float %3062, 5.000000e-01
  %3066 = fadd fast float %3063, 5.000000e-01
  %3067 = call float @dx.op.unary.f32(i32 24, float %2915)  ; Sqrt(value)
  %3068 = call float @dx.op.unary.f32(i32 24, float %2916)  ; Sqrt(value)
  %3069 = call float @dx.op.unary.f32(i32 24, float %2917)  ; Sqrt(value)
  %3070 = fmul fast float %3064, 2.000000e+00
  %3071 = fsub fast float 1.000000e+00, %3070
  %3072 = fmul fast float %3071, %3067
  %3073 = fadd fast float %3072, %3070
  %3074 = fmul fast float %3073, %3067
  %3075 = fmul fast float %3065, 2.000000e+00
  %3076 = fsub fast float 1.000000e+00, %3075
  %3077 = fmul fast float %3076, %3068
  %3078 = fadd fast float %3077, %3075
  %3079 = fmul fast float %3078, %3068
  %3080 = fmul fast float %3066, 2.000000e+00
  %3081 = fsub fast float 1.000000e+00, %3080
  %3082 = fmul fast float %3081, %3069
  %3083 = fadd fast float %3082, %3080
  %3084 = fmul fast float %3083, %3069
  %3085 = fmul fast float %3074, %3074
  %3086 = fmul fast float %3079, %3079
  %3087 = fmul fast float %3084, %3084
  br label %3104

; <label>:3088                                    ; preds = %3051
  %3089 = fmul fast float %329, %329
  %3090 = fmul fast float %333, %333
  %3091 = fmul fast float %337, %337
  %3092 = fadd fast float %3089, -1.000000e+00
  %3093 = fadd fast float %3090, -1.000000e+00
  %3094 = fadd fast float %3091, -1.000000e+00
  %3095 = fmul fast float %2940, %3092
  %3096 = fmul fast float %2940, %3093
  %3097 = fmul fast float %2940, %3094
  %3098 = fadd fast float %3095, 1.000000e+00
  %3099 = fadd fast float %3096, 1.000000e+00
  %3100 = fadd fast float %3097, 1.000000e+00
  %3101 = fmul fast float %3098, %2915
  %3102 = fmul fast float %3099, %2916
  %3103 = fmul fast float %3100, %2917
  br label %3104

; <label>:3104                                    ; preds = %3088, %3054, %2945, %2901
  %3105 = phi float [ %3050, %2945 ], [ %2926, %3054 ], [ %2926, %3088 ], [ 0x3FA23C0BE0000000, %2901 ]
  %3106 = phi float [ %3042, %2945 ], [ %3085, %3054 ], [ %3101, %3088 ], [ 1.000000e+00, %2901 ]
  %3107 = phi float [ %3043, %2945 ], [ %3086, %3054 ], [ %3102, %3088 ], [ 1.000000e+00, %2901 ]
  %3108 = phi float [ %3044, %2945 ], [ %3087, %3054 ], [ %3103, %3088 ], [ 1.000000e+00, %2901 ]
  %3109 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3110 = extractvalue %dx.types.CBufRet.i32 %3109, 1
  %3111 = and i32 %3110, 1
  %3112 = icmp ne i32 %3111, 0
  %3113 = add i32 %32, 356
  %3114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3115 = extractvalue %dx.types.ResRet.i32 %3114, 0
  %3116 = and i32 %3115, 32
  %3117 = icmp ne i32 %3116, 0
  %3118 = and i1 %3112, %3117
  %3119 = select i1 %3118, float 1.000000e+00, float %3106
  %3120 = select i1 %3118, float 0x3FD3333340000000, float %3107
  %3121 = select i1 %3118, float 0x3FD3333340000000, float %3108
  %3122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3123 = extractvalue %dx.types.ResRet.i32 %3122, 0
  %3124 = and i32 %3123, 32
  %3125 = icmp eq i32 %3124, 0
  br i1 %3125, label %3198, label %3126

; <label>:3126                                    ; preds = %3104
  %3127 = add i32 %32, 140
  %3128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3127, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.i32 %3128, 0
  %3130 = add i32 %32, 404
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = add i32 %3132, 0
  %3134 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3133, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3135 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3134, %dx.types.Handle %63, float %2711, float %2712, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3136 = extractvalue %dx.types.ResRet.f32 %3135, 0
  %3137 = extractvalue %dx.types.ResRet.f32 %3135, 1
  %3138 = extractvalue %dx.types.ResRet.f32 %3135, 2
  %3139 = extractvalue %dx.types.ResRet.f32 %3135, 3
  %3140 = and i32 %3129, 255
  %3141 = uitofp i32 %3140 to float
  %3142 = lshr i32 %3129, 8
  %3143 = and i32 %3142, 255
  %3144 = uitofp i32 %3143 to float
  %3145 = lshr i32 %3129, 16
  %3146 = and i32 %3145, 255
  %3147 = uitofp i32 %3146 to float
  %3148 = fmul fast float %3147, 0x3F70101000000000
  %3149 = fmul fast float %3136, %3141
  %3150 = fadd fast float %3149, %3144
  %3151 = fmul fast float %3150, 0x3F70101000000000
  %3152 = fadd fast float %3137, -5.000000e-01
  %3153 = fadd fast float %3139, -5.000000e-01
  %3154 = fmul fast float %3152, %3148
  %3155 = fmul fast float %3153, %3148
  %3156 = fadd fast float %3154, 5.000000e-01
  %3157 = fadd fast float %3155, 5.000000e-01
  %3158 = fmul fast float %3156, 2.000000e+00
  %3159 = fadd fast float %3158, -1.000000e+00
  %3160 = fmul fast float %3157, 2.000000e+00
  %3161 = fadd fast float %3160, -1.000000e+00
  %3162 = fadd fast float %3159, %3161
  %3163 = fmul fast float %3162, 5.000000e-01
  %3164 = fsub fast float %3159, %3161
  %3165 = fmul fast float %3164, 5.000000e-01
  %3166 = call float @dx.op.unary.f32(i32 6, float %3163)  ; FAbs(value)
  %3167 = fsub fast float 1.000000e+00, %3166
  %3168 = call float @dx.op.unary.f32(i32 6, float %3165)  ; FAbs(value)
  %3169 = fsub fast float %3167, %3168
  %3170 = call float @dx.op.dot3.f32(i32 55, float %3163, float %3165, float %3169, float %3163, float %3165, float %3169)  ; Dot3(ax,ay,az,bx,by,bz)
  %3171 = call float @dx.op.unary.f32(i32 25, float %3170)  ; Rsqrt(value)
  %3172 = fmul fast float %3163, %3171
  %3173 = fmul fast float %3165, %3171
  %3174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3175 = extractvalue %dx.types.ResRet.i32 %3174, 0
  %3176 = and i32 %3175, 67108864
  %3177 = icmp eq i32 %3176, 0
  br i1 %3177, label %3194, label %3178

; <label>:3178                                    ; preds = %3126
  %3179 = add i32 %32, 328
  %3180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3179, i32 undef)  ; BufferLoad(srv,index,wot)
  %3181 = extractvalue %dx.types.ResRet.i32 %3180, 0
  %3182 = and i32 %3181, 65535
  %3183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3182)  ; LegacyF16ToF32(value)
  %3184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2621, i32 undef)  ; BufferLoad(srv,index,wot)
  %3185 = extractvalue %dx.types.ResRet.i32 %3184, 0
  %3186 = and i32 %3185, 65535
  %3187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3186)  ; LegacyF16ToF32(value)
  %3188 = lshr i32 %3181, 16
  %3189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3188)  ; LegacyF16ToF32(value)
  %3190 = fsub fast float %3151, %3189
  %3191 = fmul fast float %3190, %3183
  %3192 = fadd fast float %3191, %3187
  %3193 = call float @dx.op.unary.f32(i32 7, float %3192)  ; Saturate(value)
  br label %3194

; <label>:3194                                    ; preds = %3178, %3126
  %3195 = phi float [ %3193, %3178 ], [ %3151, %3126 ]
  %3196 = call float @dx.op.dot2.f32(i32 54, float %3172, float %3173, float %2615, float %2616)  ; Dot2(ax,ay,bx,by)
  %3197 = call float @dx.op.dot2.f32(i32 54, float %3172, float %3173, float %2617, float %2618)  ; Dot2(ax,ay,bx,by)
  br label %3198

; <label>:3198                                    ; preds = %3194, %3104
  %3199 = phi float [ %3195, %3194 ], [ 0x3FD6666660000000, %3104 ]
  %3200 = phi float [ %3196, %3194 ], [ 0.000000e+00, %3104 ]
  %3201 = phi float [ %3197, %3194 ], [ 0.000000e+00, %3104 ]
  %3202 = phi float [ %3138, %3194 ], [ 1.000000e+00, %3104 ]
  %3203 = add i32 %32, 208
  %3204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3203, i32 undef)  ; BufferLoad(srv,index,wot)
  %3205 = extractvalue %dx.types.ResRet.i32 %3204, 0
  %3206 = lshr i32 %3205, 22
  %3207 = shl nuw nsw i32 %3206, 5
  %3208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3207)  ; LegacyF16ToF32(value)
  %3209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3210 = extractvalue %dx.types.ResRet.i32 %3209, 0
  %3211 = and i32 %3210, 64
  %3212 = icmp eq i32 %3211, 0
  br i1 %3212, label %3246, label %3213

; <label>:3213                                    ; preds = %3198
  %3214 = add i32 %32, 420
  %3215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3214, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.i32 %3215, 0
  %3217 = add i32 %3216, 0
  %3218 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3217, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3220 = extractvalue %dx.types.ResRet.i32 %3219, 0
  %3221 = and i32 %3220, 131072
  %3222 = icmp eq i32 %3221, 0
  %3223 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3218, %dx.types.Handle %63, float %2711, float %2712, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3224 = extractvalue %dx.types.ResRet.f32 %3223, 0
  %3225 = extractvalue %dx.types.ResRet.f32 %3223, 1
  %3226 = extractvalue %dx.types.ResRet.f32 %3223, 2
  %3227 = fmul fast float %3224, %317
  %3228 = fmul fast float %3225, %320
  %3229 = fmul fast float %3226, %323
  br i1 %3222, label %3236, label %3230

; <label>:3230                                    ; preds = %3213
  %3231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3232 = extractvalue %dx.types.CBufRet.f32 %3231, 0
  %3233 = fmul fast float %3232, %3227
  %3234 = fmul fast float %3232, %3228
  %3235 = fmul fast float %3232, %3229
  br label %3236

; <label>:3236                                    ; preds = %3230, %3213
  %3237 = phi float [ %3233, %3230 ], [ %3227, %3213 ]
  %3238 = phi float [ %3234, %3230 ], [ %3228, %3213 ]
  %3239 = phi float [ %3235, %3230 ], [ %3229, %3213 ]
  %3240 = fmul fast float %3237, %3208
  %3241 = select i1 %171, float %3240, float %3237
  %3242 = call float @dx.op.dot3.f32(i32 55, float %3241, float %3238, float %3239, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3243 = select i1 %171, float 0.000000e+00, float %3237
  %3244 = select i1 %171, float %3242, float %3238
  %3245 = select i1 %171, float 0.000000e+00, float %3239
  br label %3246

; <label>:3246                                    ; preds = %3236, %3198
  %3247 = phi float [ %3243, %3236 ], [ 0.000000e+00, %3198 ]
  %3248 = phi float [ %3244, %3236 ], [ 0.000000e+00, %3198 ]
  %3249 = phi float [ %3245, %3236 ], [ 0.000000e+00, %3198 ]
  %3250 = add i32 %32, 144
  %3251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3250, i32 undef)  ; BufferLoad(srv,index,wot)
  %3252 = extractvalue %dx.types.ResRet.i32 %3251, 0
  %3253 = and i32 %3252, 255
  %3254 = uitofp i32 %3253 to float
  %3255 = lshr i32 %3252, 8
  %3256 = and i32 %3255, 255
  %3257 = uitofp i32 %3256 to float
  %3258 = call float @dx.op.dot3.f32(i32 55, float %3119, float %3120, float %3121, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3259 = fmul fast float %3257, %3258
  %3260 = fadd fast float %3259, %3254
  %3261 = fmul fast float %3260, 0x3F70101020000000
  %3262 = call float @dx.op.unary.f32(i32 7, float %3261)  ; Saturate(value)
  br i1 %2603, label %3263, label %3271

; <label>:3263                                    ; preds = %3246
  %3264 = fsub fast float 1.000000e+00, %2899
  %3265 = fmul fast float %3264, %2592
  %3266 = fmul fast float %3264, %2593
  %3267 = fmul fast float %3264, %2594
  %3268 = fmul fast float %3264, %2595
  %3269 = fmul fast float %3264, %2596
  %3270 = fmul fast float %3264, %2597
  br label %3271

; <label>:3271                                    ; preds = %3263, %3246
  %3272 = phi float [ %3265, %3263 ], [ %2592, %3246 ]
  %3273 = phi float [ %3266, %3263 ], [ %2593, %3246 ]
  %3274 = phi float [ %3267, %3263 ], [ %2594, %3246 ]
  %3275 = phi float [ %3268, %3263 ], [ %2595, %3246 ]
  %3276 = phi float [ %3269, %3263 ], [ %2596, %3246 ]
  %3277 = phi float [ %3270, %3263 ], [ %2597, %3246 ]
  %3278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3279 = extractvalue %dx.types.ResRet.i32 %3278, 0
  %3280 = and i32 %3279, 3
  %3281 = icmp eq i32 %3280, 3
  br i1 %3281, label %3360, label %3282

; <label>:3282                                    ; preds = %3271
  %3283 = and i32 %3279, 16
  %3284 = icmp ne i32 %3283, 0
  %3285 = select i1 %3284, float %2899, float 0.000000e+00
  %3286 = icmp eq i32 %3280, 0
  br i1 %3286, label %3287, label %3315

; <label>:3287                                    ; preds = %3282
  %3288 = and i32 %3279, 64
  %3289 = icmp ne i32 %3288, 0
  %3290 = select i1 %3289, float %2899, float 0.000000e+00
  %3291 = fsub fast float %3119, %3272
  %3292 = fsub fast float %3120, %3273
  %3293 = fsub fast float %3121, %3274
  %3294 = fmul fast float %3285, %3291
  %3295 = fmul fast float %3285, %3292
  %3296 = fmul fast float %3285, %3293
  %3297 = fadd fast float %3294, %3272
  %3298 = fadd fast float %3295, %3273
  %3299 = fadd fast float %3296, %3274
  %3300 = fsub fast float %3105, %2598
  %3301 = fmul fast float %3285, %3300
  %3302 = fadd fast float %3301, %2598
  %3303 = fsub fast float %3247, %3275
  %3304 = fsub fast float %3248, %3276
  %3305 = fsub fast float %3249, %3277
  %3306 = fmul fast float %3290, %3303
  %3307 = fmul fast float %3290, %3304
  %3308 = fmul fast float %3290, %3305
  %3309 = fadd fast float %3306, %3275
  %3310 = fadd fast float %3307, %3276
  %3311 = fadd fast float %3308, %3277
  %3312 = fsub fast float %3262, %2601
  %3313 = fmul fast float %3285, %3312
  %3314 = fadd fast float %3313, %2601
  br label %3360

; <label>:3315                                    ; preds = %3282
  %3316 = icmp eq i32 %3280, 1
  br i1 %3316, label %3317, label %3330

; <label>:3317                                    ; preds = %3315
  %3318 = fadd fast float %3119, -1.000000e+00
  %3319 = fadd fast float %3120, -1.000000e+00
  %3320 = fadd fast float %3121, -1.000000e+00
  %3321 = fmul fast float %3285, %3318
  %3322 = fmul fast float %3285, %3319
  %3323 = fmul fast float %3285, %3320
  %3324 = fadd fast float %3321, 1.000000e+00
  %3325 = fadd fast float %3322, 1.000000e+00
  %3326 = fadd fast float %3323, 1.000000e+00
  %3327 = fmul fast float %3324, %3272
  %3328 = fmul fast float %3325, %3273
  %3329 = fmul fast float %3326, %3274
  br label %3360

; <label>:3330                                    ; preds = %3315
  %3331 = icmp eq i32 %3280, 2
  br i1 %3331, label %3332, label %3360

; <label>:3332                                    ; preds = %3330
  %3333 = call float @dx.op.unary.f32(i32 24, float %3119)  ; Sqrt(value)
  %3334 = call float @dx.op.unary.f32(i32 24, float %3120)  ; Sqrt(value)
  %3335 = call float @dx.op.unary.f32(i32 24, float %3121)  ; Sqrt(value)
  %3336 = fadd fast float %3333, -5.000000e-01
  %3337 = fadd fast float %3334, -5.000000e-01
  %3338 = fadd fast float %3335, -5.000000e-01
  %3339 = fmul fast float %3336, %3285
  %3340 = fmul fast float %3337, %3285
  %3341 = fmul fast float %3338, %3285
  %3342 = fadd fast float %3339, 5.000000e-01
  %3343 = fadd fast float %3340, 5.000000e-01
  %3344 = fadd fast float %3341, 5.000000e-01
  %3345 = fmul fast float %3342, 2.000000e+00
  %3346 = fsub fast float 1.000000e+00, %3345
  %3347 = fmul fast float %3346, %3272
  %3348 = fadd fast float %3347, %3345
  %3349 = fmul fast float %3348, %3272
  %3350 = fmul fast float %3343, 2.000000e+00
  %3351 = fsub fast float 1.000000e+00, %3350
  %3352 = fmul fast float %3351, %3273
  %3353 = fadd fast float %3352, %3350
  %3354 = fmul fast float %3353, %3273
  %3355 = fmul fast float %3344, 2.000000e+00
  %3356 = fsub fast float 1.000000e+00, %3355
  %3357 = fmul fast float %3356, %3274
  %3358 = fadd fast float %3357, %3355
  %3359 = fmul fast float %3358, %3274
  br label %3360

; <label>:3360                                    ; preds = %3332, %3330, %3317, %3287, %3271
  %3361 = phi float [ %3272, %3271 ], [ %3349, %3332 ], [ %3272, %3330 ], [ %3327, %3317 ], [ %3297, %3287 ]
  %3362 = phi float [ %3273, %3271 ], [ %3354, %3332 ], [ %3273, %3330 ], [ %3328, %3317 ], [ %3298, %3287 ]
  %3363 = phi float [ %3274, %3271 ], [ %3359, %3332 ], [ %3274, %3330 ], [ %3329, %3317 ], [ %3299, %3287 ]
  %3364 = phi float [ %3275, %3271 ], [ %3275, %3332 ], [ %3275, %3330 ], [ %3275, %3317 ], [ %3309, %3287 ]
  %3365 = phi float [ %3276, %3271 ], [ %3276, %3332 ], [ %3276, %3330 ], [ %3276, %3317 ], [ %3310, %3287 ]
  %3366 = phi float [ %3277, %3271 ], [ %3277, %3332 ], [ %3277, %3330 ], [ %3277, %3317 ], [ %3311, %3287 ]
  %3367 = phi float [ %2598, %3271 ], [ %2598, %3332 ], [ %2598, %3330 ], [ %2598, %3317 ], [ %3302, %3287 ]
  %3368 = phi float [ %2601, %3271 ], [ %2601, %3332 ], [ %2601, %3330 ], [ %2601, %3317 ], [ %3314, %3287 ]
  %3369 = and i32 %3279, 12
  %3370 = icmp eq i32 %3369, 12
  br i1 %3370, label %3443, label %3371

; <label>:3371                                    ; preds = %3360
  %3372 = and i32 %3279, 2097184
  %3373 = icmp eq i32 %3372, 2097184
  %3374 = select i1 %3373, float %2899, float 0.000000e+00
  %3375 = and i32 %3279, 4194336
  %3376 = icmp eq i32 %3375, 4194336
  %3377 = select i1 %3376, float %2899, float 0.000000e+00
  %3378 = and i32 %3279, 8388640
  %3379 = icmp eq i32 %3378, 8388640
  %3380 = select i1 %3379, float %2899, float 0.000000e+00
  %3381 = icmp eq i32 %3369, 0
  br i1 %3381, label %3382, label %3395

; <label>:3382                                    ; preds = %3371
  %3383 = fsub fast float %3200, %2590
  %3384 = fsub fast float %3201, %2591
  %3385 = fmul fast float %3374, %3383
  %3386 = fmul fast float %3374, %3384
  %3387 = fadd fast float %3385, %2590
  %3388 = fadd fast float %3386, %2591
  %3389 = fsub fast float %3202, %2600
  %3390 = fmul fast float %3377, %3389
  %3391 = fadd fast float %3390, %2600
  %3392 = fsub fast float %3199, %2599
  %3393 = fmul fast float %3380, %3392
  %3394 = fadd fast float %3393, %2599
  br label %3443

; <label>:3395                                    ; preds = %3371
  %3396 = icmp eq i32 %3369, 4
  br i1 %3396, label %3397, label %3429

; <label>:3397                                    ; preds = %3395
  %3398 = fmul fast float %3374, %3200
  %3399 = fmul fast float %3374, %3201
  %3400 = fadd fast float %3398, %2590
  %3401 = fadd fast float %3399, %2591
  %3402 = call float @dx.op.binary.f32(i32 36, float %2600, float %3202)  ; FMin(a,b)
  %3403 = fsub fast float %3402, %2600
  %3404 = fmul fast float %3403, %3377
  %3405 = fadd fast float %3404, %2600
  %3406 = fadd fast float %3199, %2599
  %3407 = fmul fast float %3406, 0x3FF337FAE0000000
  %3408 = fmul fast float %2599, %2599
  %3409 = fmul fast float %3199, %3199
  %3410 = fadd fast float %3409, %3408
  %3411 = fmul fast float %3410, 0x3FE5152B00000000
  %3412 = fmul fast float %2599, 0xBFCC1F85E0000000
  %3413 = fmul fast float %3412, %3199
  %3414 = fadd fast float %3413, 0xBFE1363700000000
  %3415 = fadd fast float %3414, %3407
  %3416 = fsub fast float %3415, %3411
  %3417 = fmul fast float %3406, 0x3FBA6F0D00000000
  %3418 = fmul fast float %3410, 0x3FD0432880000000
  %3419 = fmul fast float %2599, 0xBFEF110800000000
  %3420 = fmul fast float %3419, %3199
  %3421 = fadd fast float %3420, 1.000000e+00
  %3422 = fsub fast float %3421, %3417
  %3423 = fadd fast float %3422, %3418
  %3424 = fdiv fast float %3416, %3423
  %3425 = call float @dx.op.unary.f32(i32 7, float %3424)  ; Saturate(value)
  %3426 = fsub fast float %3425, %2599
  %3427 = fmul fast float %3426, %3380
  %3428 = fadd fast float %3427, %2599
  br label %3443

; <label>:3429                                    ; preds = %3395
  %3430 = icmp eq i32 %3369, 8
  br i1 %3430, label %3431, label %3443

; <label>:3431                                    ; preds = %3429
  %3432 = fmul fast float %3374, %3200
  %3433 = fmul fast float %3374, %3201
  %3434 = fadd fast float %3432, %2590
  %3435 = fadd fast float %3433, %2591
  %3436 = call float @dx.op.binary.f32(i32 36, float %2600, float %3202)  ; FMin(a,b)
  %3437 = fsub fast float %3436, %2600
  %3438 = fmul fast float %3437, %3377
  %3439 = fadd fast float %3438, %2600
  %3440 = fsub fast float %3199, %2599
  %3441 = fmul fast float %3380, %3440
  %3442 = fadd fast float %3441, %2599
  br label %3443

; <label>:3443                                    ; preds = %3431, %3429, %3397, %3382, %3360, %2898, %2602, %2589
  %3444 = phi float [ %2590, %3360 ], [ %2590, %2898 ], [ %2590, %2589 ], [ %2590, %2602 ], [ %3387, %3382 ], [ %3400, %3397 ], [ %2590, %3429 ], [ %3434, %3431 ]
  %3445 = phi float [ %2591, %3360 ], [ %2591, %2898 ], [ %2591, %2589 ], [ %2591, %2602 ], [ %3388, %3382 ], [ %3401, %3397 ], [ %2591, %3429 ], [ %3435, %3431 ]
  %3446 = phi float [ %3361, %3360 ], [ %2592, %2898 ], [ %2592, %2589 ], [ %2592, %2602 ], [ %3361, %3382 ], [ %3361, %3397 ], [ %3361, %3429 ], [ %3361, %3431 ]
  %3447 = phi float [ %3362, %3360 ], [ %2593, %2898 ], [ %2593, %2589 ], [ %2593, %2602 ], [ %3362, %3382 ], [ %3362, %3397 ], [ %3362, %3429 ], [ %3362, %3431 ]
  %3448 = phi float [ %3363, %3360 ], [ %2594, %2898 ], [ %2594, %2589 ], [ %2594, %2602 ], [ %3363, %3382 ], [ %3363, %3397 ], [ %3363, %3429 ], [ %3363, %3431 ]
  %3449 = phi float [ %3364, %3360 ], [ %2595, %2898 ], [ %2595, %2589 ], [ %2595, %2602 ], [ %3364, %3382 ], [ %3364, %3397 ], [ %3364, %3429 ], [ %3364, %3431 ]
  %3450 = phi float [ %3365, %3360 ], [ %2596, %2898 ], [ %2596, %2589 ], [ %2596, %2602 ], [ %3365, %3382 ], [ %3365, %3397 ], [ %3365, %3429 ], [ %3365, %3431 ]
  %3451 = phi float [ %3366, %3360 ], [ %2597, %2898 ], [ %2597, %2589 ], [ %2597, %2602 ], [ %3366, %3382 ], [ %3366, %3397 ], [ %3366, %3429 ], [ %3366, %3431 ]
  %3452 = phi float [ %3367, %3360 ], [ %2598, %2898 ], [ %2598, %2589 ], [ %2598, %2602 ], [ %3367, %3382 ], [ %3367, %3397 ], [ %3367, %3429 ], [ %3367, %3431 ]
  %3453 = phi float [ %2599, %3360 ], [ %2599, %2898 ], [ %2599, %2589 ], [ %2599, %2602 ], [ %3394, %3382 ], [ %3428, %3397 ], [ %2599, %3429 ], [ %3442, %3431 ]
  %3454 = phi float [ %2600, %3360 ], [ %2600, %2898 ], [ %2600, %2589 ], [ %2600, %2602 ], [ %3391, %3382 ], [ %3405, %3397 ], [ %2600, %3429 ], [ %3439, %3431 ]
  %3455 = phi float [ %3368, %3360 ], [ %2601, %2898 ], [ %2601, %2589 ], [ %2601, %2602 ], [ %3368, %3382 ], [ %3368, %3397 ], [ %3368, %3429 ], [ %3368, %3431 ]
  %3456 = add i32 %32, 360
  %3457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3458 = extractvalue %dx.types.ResRet.i32 %3457, 0
  %3459 = extractvalue %dx.types.ResRet.i32 %3457, 1
  %3460 = bitcast i32 %3458 to float
  %3461 = bitcast i32 %3459 to float
  %3462 = fcmp fast oge float %3460, 0.000000e+00
  %3463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3464 = extractvalue %dx.types.CBufRet.f32 %3463, 0
  %3465 = select i1 %3462, float %3460, float %3464
  %3466 = add i32 %32, 456
  %3467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3466, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.i32 %3467, 0
  %3469 = add i32 %3468, 0
  %3470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3470, %dx.types.Handle %64, float %55, float %56, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3472 = extractvalue %dx.types.ResRet.f32 %3471, 0
  %3473 = fmul fast float %3472, %3461
  %3474 = fadd fast float %3473, %3465
  %3475 = call float @dx.op.dot2.f32(i32 54, float %3444, float %3445, float %3444, float %3445)  ; Dot2(ax,ay,bx,by)
  %3476 = fmul fast float %3475, 0x3FE3333340000000
  %3477 = fsub fast float 1.000000e+00, %3476
  %3478 = call float @dx.op.dot3.f32(i32 55, float %3444, float %3445, float %3477, float %3444, float %3445, float %3477)  ; Dot3(ax,ay,az,bx,by,bz)
  %3479 = call float @dx.op.unary.f32(i32 25, float %3478)  ; Rsqrt(value)
  %3480 = fmul fast float %3479, %3444
  %3481 = fmul fast float %3479, %3445
  %3482 = fmul fast float %3477, %3479
  %3483 = fmul fast float %3482, %74
  %3484 = fmul fast float %3482, %75
  %3485 = fmul fast float %3482, %76
  %3486 = fmul fast float %3480, %48
  %3487 = fmul fast float %3480, %49
  %3488 = fmul fast float %3480, %50
  %3489 = fadd fast float %3483, %3486
  %3490 = fadd fast float %3484, %3487
  %3491 = fadd fast float %3485, %3488
  %3492 = fmul fast float %86, %3481
  %3493 = fmul fast float %87, %3481
  %3494 = fmul fast float %88, %3481
  %3495 = fadd fast float %3489, %3492
  %3496 = fadd fast float %3490, %3493
  %3497 = fadd fast float %3491, %3494
  %3498 = call float @dx.op.dot3.f32(i32 55, float %3495, float %3496, float %3497, float %3495, float %3496, float %3497)  ; Dot3(ax,ay,az,bx,by,bz)
  %3499 = call float @dx.op.unary.f32(i32 25, float %3498)  ; Rsqrt(value)
  %3500 = fmul fast float %3495, %3499
  %3501 = fmul fast float %3496, %3499
  %3502 = fmul fast float %3497, %3499
  %3503 = and i32 %34, 1
  %3504 = icmp eq i32 %3503, 0
  br i1 %3504, label %3505, label %4013

; <label>:3505                                    ; preds = %3443
  %3506 = call float @dx.op.unary.f32(i32 83, float %130)  ; DerivCoarseX(value)
  %3507 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3508 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3509 = call float @dx.op.unary.f32(i32 84, float %130)  ; DerivCoarseY(value)
  %3510 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3511 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3512 = fadd fast float %3506, %130
  %3513 = fadd fast float %3507, %131
  %3514 = fadd fast float %3508, %132
  %3515 = fadd fast float %3509, %130
  %3516 = fadd fast float %3510, %131
  %3517 = fadd fast float %3511, %132
  %3518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3519 = extractvalue %dx.types.CBufRet.f32 %3518, 0
  %3520 = extractvalue %dx.types.CBufRet.f32 %3518, 1
  %3521 = extractvalue %dx.types.CBufRet.f32 %3518, 2
  %3522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3523 = extractvalue %dx.types.CBufRet.f32 %3522, 2
  %3524 = extractvalue %dx.types.CBufRet.f32 %3522, 3
  %3525 = fmul fast float %3519, %67
  %3526 = fmul fast float %3525, %3523
  %3527 = fmul fast float %3520, %68
  %3528 = fmul fast float %3527, %3524
  %3529 = fptoui float %3526 to i32
  %3530 = fptoui float %3528 to i32
  %3531 = fadd fast float %3519, -1.000000e+00
  %3532 = fadd fast float %3520, -1.000000e+00
  %3533 = fptoui float %3531 to i32
  %3534 = fptoui float %3532 to i32
  %3535 = call i32 @dx.op.binary.i32(i32 40, i32 %3529, i32 %3533)  ; UMin(a,b)
  %3536 = call i32 @dx.op.binary.i32(i32 40, i32 %3530, i32 %3534)  ; UMin(a,b)
  %3537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3538 = extractvalue %dx.types.CBufRet.f32 %3537, 2
  %3539 = extractvalue %dx.types.CBufRet.f32 %3537, 3
  %3540 = fmul fast float %3538, %62
  %3541 = fsub fast float %3540, %3539
  %3542 = fadd fast float %3521, -1.000000e+00
  %3543 = call float @dx.op.binary.f32(i32 36, float %3541, float %3542)  ; FMin(a,b)
  %3544 = fptoui float %3543 to i32
  %3545 = fptoui float %3519 to i32
  %3546 = fptoui float %3520 to i32
  %3547 = mul i32 %3544, %3546
  %3548 = add i32 %3547, %3536
  %3549 = mul i32 %3548, %3545
  %3550 = add i32 %3549, %3535
  %3551 = shl i32 %3550, 2
  %3552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3551, i32 undef)  ; BufferLoad(srv,index,wot)
  %3553 = extractvalue %dx.types.ResRet.i32 %3552, 0
  %3554 = and i32 %3553, 1023
  %3555 = lshr i32 %3553, 10
  %3556 = icmp eq i32 %3554, 0
  br i1 %3556, label %3982, label %3557

; <label>:3557                                    ; preds = %3505
  %3558 = and i32 %3553, 1023
  br label %3559

; <label>:3559                                    ; preds = %3685, %3557
  %3560 = phi i32 [ %3635, %3685 ], [ 0, %3557 ]
  %3561 = phi float [ %3686, %3685 ], [ 0.000000e+00, %3557 ]
  %3562 = phi float [ %3687, %3685 ], [ %3474, %3557 ]
  %3563 = phi float [ %3688, %3685 ], [ %3455, %3557 ]
  %3564 = phi float [ %3689, %3685 ], [ 0.000000e+00, %3557 ]
  %3565 = phi float [ %3690, %3685 ], [ 0.000000e+00, %3557 ]
  %3566 = phi float [ %3691, %3685 ], [ %3449, %3557 ]
  %3567 = phi float [ %3692, %3685 ], [ %3450, %3557 ]
  %3568 = phi float [ %3693, %3685 ], [ %3451, %3557 ]
  %3569 = phi float [ %3694, %3685 ], [ %3500, %3557 ]
  %3570 = phi float [ %3695, %3685 ], [ %3501, %3557 ]
  %3571 = phi float [ %3696, %3685 ], [ %3502, %3557 ]
  %3572 = phi float [ %3697, %3685 ], [ %3454, %3557 ]
  %3573 = phi float [ %3698, %3685 ], [ %3453, %3557 ]
  %3574 = phi float [ %3699, %3685 ], [ 0.000000e+00, %3557 ]
  %3575 = phi float [ %3700, %3685 ], [ %3452, %3557 ]
  %3576 = phi float [ %3701, %3685 ], [ %3446, %3557 ]
  %3577 = phi float [ %3702, %3685 ], [ %3447, %3557 ]
  %3578 = phi float [ %3703, %3685 ], [ %3448, %3557 ]
  %3579 = add nuw nsw i32 %3560, %3555
  %3580 = shl i32 %3579, 2
  %3581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3580, i32 undef)  ; BufferLoad(srv,index,wot)
  %3582 = extractvalue %dx.types.ResRet.i32 %3581, 0
  %3583 = shl i32 %3582, 8
  %3584 = or i32 %3583, 48
  %3585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3584, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.f32 %3585, 0
  %3587 = extractvalue %dx.types.ResRet.f32 %3585, 1
  %3588 = extractvalue %dx.types.ResRet.f32 %3585, 2
  %3589 = extractvalue %dx.types.ResRet.f32 %3585, 3
  %3590 = or i32 %3583, 64
  %3591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.i32 %3591, 0
  %3593 = extractvalue %dx.types.ResRet.i32 %3591, 1
  %3594 = or i32 %3583, 80
  %3595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.f32 %3595, 2
  %3597 = extractvalue %dx.types.ResRet.f32 %3595, 3
  %3598 = or i32 %3583, 96
  %3599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.f32 %3599, 0
  %3601 = extractvalue %dx.types.ResRet.f32 %3599, 1
  %3602 = extractvalue %dx.types.ResRet.f32 %3599, 2
  %3603 = extractvalue %dx.types.ResRet.f32 %3599, 3
  %3604 = or i32 %3583, 112
  %3605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.f32 %3605, 2
  %3607 = or i32 %3583, 128
  %3608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3610 = extractvalue %dx.types.ResRet.f32 %3608, 1
  %3611 = extractvalue %dx.types.ResRet.f32 %3608, 2
  %3612 = extractvalue %dx.types.ResRet.f32 %3608, 3
  %3613 = or i32 %3583, 144
  %3614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3613, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.f32 %3614, 0
  %3616 = extractvalue %dx.types.ResRet.f32 %3614, 1
  %3617 = extractvalue %dx.types.ResRet.f32 %3614, 2
  %3618 = extractvalue %dx.types.ResRet.f32 %3614, 3
  %3619 = or i32 %3583, 160
  %3620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3621 = extractvalue %dx.types.ResRet.f32 %3620, 0
  %3622 = extractvalue %dx.types.ResRet.f32 %3620, 1
  %3623 = extractvalue %dx.types.ResRet.f32 %3620, 2
  %3624 = extractvalue %dx.types.ResRet.f32 %3620, 3
  %3625 = or i32 %3583, 192
  %3626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3625, i32 undef)  ; BufferLoad(srv,index,wot)
  %3627 = extractvalue %dx.types.ResRet.i32 %3626, 0
  %3628 = or i32 %3583, 208
  %3629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3628, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.f32 %3629, 0
  %3631 = or i32 %3583, 248
  %3632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3631, i32 undef)  ; BufferLoad(srv,index,wot)
  %3633 = extractvalue %dx.types.ResRet.f32 %3632, 0
  %3634 = extractvalue %dx.types.ResRet.f32 %3632, 1
  %3635 = add nuw nsw i32 %3560, 1
  %3636 = bitcast float %3589 to i32
  %3637 = and i32 %3636, 512
  %3638 = icmp eq i32 %3637, 0
  %3639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.f32 %3639, 0
  %3641 = extractvalue %dx.types.ResRet.f32 %3639, 1
  %3642 = extractvalue %dx.types.ResRet.f32 %3639, 2
  %3643 = extractvalue %dx.types.ResRet.f32 %3639, 3
  %3644 = call float @dx.op.dot4.f32(i32 56, float %3640, float %3641, float %3642, float %3643, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3645 = or i32 %3583, 16
  %3646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3645, i32 undef)  ; BufferLoad(srv,index,wot)
  %3647 = extractvalue %dx.types.ResRet.f32 %3646, 0
  %3648 = extractvalue %dx.types.ResRet.f32 %3646, 1
  %3649 = extractvalue %dx.types.ResRet.f32 %3646, 2
  %3650 = extractvalue %dx.types.ResRet.f32 %3646, 3
  %3651 = call float @dx.op.dot4.f32(i32 56, float %3647, float %3648, float %3649, float %3650, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3652 = or i32 %3583, 32
  %3653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3652, i32 undef)  ; BufferLoad(srv,index,wot)
  %3654 = extractvalue %dx.types.ResRet.f32 %3653, 0
  %3655 = extractvalue %dx.types.ResRet.f32 %3653, 1
  %3656 = extractvalue %dx.types.ResRet.f32 %3653, 2
  %3657 = extractvalue %dx.types.ResRet.f32 %3653, 3
  %3658 = call float @dx.op.dot4.f32(i32 56, float %3654, float %3655, float %3656, float %3657, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3659 = call float @dx.op.unary.f32(i32 27, float %3644)  ; Round_ni(value)
  %3660 = call float @dx.op.unary.f32(i32 6, float %3659)  ; FAbs(value)
  %3661 = call float @dx.op.unary.f32(i32 27, float %3651)  ; Round_ni(value)
  %3662 = call float @dx.op.unary.f32(i32 6, float %3661)  ; FAbs(value)
  %3663 = call float @dx.op.unary.f32(i32 6, float %3658)  ; FAbs(value)
  %3664 = call float @dx.op.unary.f32(i32 27, float %3663)  ; Round_ni(value)
  %3665 = fadd fast float %3662, %3660
  %3666 = fadd fast float %3665, %3664
  %3667 = fcmp fast oeq float %3666, 0.000000e+00
  %3668 = call float @dx.op.dot4.f32(i32 56, float %3640, float %3641, float %3642, float %3643, float %3512, float %3513, float %3514, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3669 = call float @dx.op.dot4.f32(i32 56, float %3647, float %3648, float %3649, float %3650, float %3512, float %3513, float %3514, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3670 = call float @dx.op.dot4.f32(i32 56, float %3640, float %3641, float %3642, float %3643, float %3515, float %3516, float %3517, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3671 = call float @dx.op.dot4.f32(i32 56, float %3647, float %3648, float %3649, float %3650, float %3515, float %3516, float %3517, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3672 = fsub fast float %3668, %3644
  %3673 = fsub fast float %3670, %3644
  %3674 = fsub fast float %3669, %3651
  %3675 = fsub fast float %3671, %3651
  %3676 = call float @dx.op.dot3.f32(i32 55, float %3586, float %3587, float %3588, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %3677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3678 = extractvalue %dx.types.CBufRet.f32 %3677, 2
  %3679 = fadd fast float %3678, %3676
  %3680 = call float @dx.op.unary.f32(i32 7, float %3679)  ; Saturate(value)
  %3681 = extractvalue %dx.types.CBufRet.f32 %3677, 0
  %3682 = fcmp fast ogt float %3680, %3681
  %3683 = and i1 %3667, %3682
  %3684 = and i1 %3638, %3683
  br i1 %3684, label %3705, label %3685

; <label>:3685                                    ; preds = %3968, %3786, %3705, %3559
  %3686 = phi float [ %3561, %3705 ], [ %3789, %3786 ], [ %3789, %3968 ], [ %3561, %3559 ]
  %3687 = phi float [ %3562, %3705 ], [ %3562, %3786 ], [ %3943, %3968 ], [ %3562, %3559 ]
  %3688 = phi float [ %3563, %3705 ], [ %3563, %3786 ], [ %3941, %3968 ], [ %3563, %3559 ]
  %3689 = phi float [ %3564, %3705 ], [ %3564, %3786 ], [ %3913, %3968 ], [ %3564, %3559 ]
  %3690 = phi float [ %3565, %3705 ], [ %3565, %3786 ], [ %3911, %3968 ], [ %3565, %3559 ]
  %3691 = phi float [ %3566, %3705 ], [ %3566, %3786 ], [ %3978, %3968 ], [ %3566, %3559 ]
  %3692 = phi float [ %3567, %3705 ], [ %3567, %3786 ], [ %3979, %3968 ], [ %3567, %3559 ]
  %3693 = phi float [ %3568, %3705 ], [ %3568, %3786 ], [ %3980, %3968 ], [ %3568, %3559 ]
  %3694 = phi float [ %3569, %3705 ], [ %3569, %3786 ], [ %3892, %3968 ], [ %3569, %3559 ]
  %3695 = phi float [ %3570, %3705 ], [ %3570, %3786 ], [ %3893, %3968 ], [ %3570, %3559 ]
  %3696 = phi float [ %3571, %3705 ], [ %3571, %3786 ], [ %3894, %3968 ], [ %3571, %3559 ]
  %3697 = phi float [ %3572, %3705 ], [ %3572, %3786 ], [ %3921, %3968 ], [ %3572, %3559 ]
  %3698 = phi float [ %3573, %3705 ], [ %3573, %3786 ], [ %3918, %3968 ], [ %3573, %3559 ]
  %3699 = phi float [ %3574, %3705 ], [ %3574, %3786 ], [ %3915, %3968 ], [ %3574, %3559 ]
  %3700 = phi float [ %3575, %3705 ], [ %3575, %3786 ], [ %3909, %3968 ], [ %3575, %3559 ]
  %3701 = phi float [ %3576, %3705 ], [ %3576, %3786 ], [ %3904, %3968 ], [ %3576, %3559 ]
  %3702 = phi float [ %3577, %3705 ], [ %3577, %3786 ], [ %3905, %3968 ], [ %3577, %3559 ]
  %3703 = phi float [ %3578, %3705 ], [ %3578, %3786 ], [ %3906, %3968 ], [ %3578, %3559 ]
  %3704 = icmp eq i32 %3635, %3558
  br i1 %3704, label %3981, label %3559

; <label>:3705                                    ; preds = %3559
  %3706 = extractvalue %dx.types.ResRet.f32 %3605, 3
  %3707 = extractvalue %dx.types.ResRet.f32 %3605, 1
  %3708 = extractvalue %dx.types.ResRet.f32 %3605, 0
  %3709 = extractvalue %dx.types.ResRet.f32 %3595, 1
  %3710 = extractvalue %dx.types.ResRet.f32 %3595, 0
  %3711 = extractvalue %dx.types.ResRet.i32 %3591, 3
  %3712 = extractvalue %dx.types.ResRet.i32 %3591, 2
  %3713 = add i32 %3711, 0
  %3714 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3713, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3716 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3714, %dx.types.Handle %3715, float %3644, float %3651, float undef, float undef, i32 0, i32 0, i32 undef, float %3672, float %3674, float undef, float %3673, float %3675, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3717 = extractvalue %dx.types.ResRet.f32 %3716, 0
  %3718 = fmul fast float %3717, %3710
  %3719 = fadd fast float %3718, %3709
  %3720 = call float @dx.op.unary.f32(i32 7, float %3719)  ; Saturate(value)
  %3721 = fmul fast float %3644, %3600
  %3722 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %3651, float %3721)  ; FMad(a,b,c)
  %3723 = fadd fast float %3722, %3708
  %3724 = fmul fast float %3644, %3602
  %3725 = call float @dx.op.tertiary.f32(i32 46, float %3603, float %3651, float %3724)  ; FMad(a,b,c)
  %3726 = fadd fast float %3725, %3707
  %3727 = fmul fast float %3672, %3600
  %3728 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %3674, float %3727)  ; FMad(a,b,c)
  %3729 = fmul fast float %3672, %3602
  %3730 = call float @dx.op.tertiary.f32(i32 46, float %3603, float %3674, float %3729)  ; FMad(a,b,c)
  %3731 = fmul fast float %3673, %3600
  %3732 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %3675, float %3731)  ; FMad(a,b,c)
  %3733 = fmul fast float %3673, %3602
  %3734 = call float @dx.op.tertiary.f32(i32 46, float %3603, float %3675, float %3733)  ; FMad(a,b,c)
  %3735 = add i32 %3712, 0
  %3736 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3735, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3737 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3736, %dx.types.Handle %3715, float %3723, float %3726, float undef, float undef, i32 0, i32 0, i32 undef, float %3728, float %3730, float undef, float %3732, float %3734, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3738 = extractvalue %dx.types.ResRet.f32 %3737, 0
  %3739 = and i32 %3636, 1024
  %3740 = icmp ne i32 %3739, 0
  %3741 = fcmp fast ogt float %3738, 0x3FE0101020000000
  %3742 = uitofp i1 %3741 to float
  %3743 = select i1 %3740, float %3742, float %3738
  %3744 = and i32 %3636, 8192
  %3745 = icmp ne i32 %3744, 0
  %3746 = select i1 %3745, float %3706, float 1.000000e+00
  %3747 = fmul fast float %3644, 2.000000e+00
  %3748 = fadd fast float %3747, -1.000000e+00
  %3749 = call float @dx.op.unary.f32(i32 6, float %3748)  ; FAbs(value)
  %3750 = fmul fast float %3749, %3633
  %3751 = fsub fast float %3750, %3633
  %3752 = call float @dx.op.unary.f32(i32 7, float %3751)  ; Saturate(value)
  %3753 = fmul fast float %3651, 2.000000e+00
  %3754 = fadd fast float %3753, -1.000000e+00
  %3755 = call float @dx.op.unary.f32(i32 6, float %3754)  ; FAbs(value)
  %3756 = fmul fast float %3755, %3634
  %3757 = fsub fast float %3756, %3634
  %3758 = call float @dx.op.unary.f32(i32 7, float %3757)  ; Saturate(value)
  %3759 = fmul fast float %3663, %3596
  %3760 = fsub fast float %3759, %3596
  %3761 = call float @dx.op.unary.f32(i32 7, float %3760)  ; Saturate(value)
  %3762 = fmul fast float %3720, %3746
  %3763 = fmul fast float %3762, %3717
  %3764 = fmul fast float %3763, %3752
  %3765 = fmul fast float %3764, %3743
  %3766 = fmul fast float %3765, %3758
  %3767 = fmul fast float %3766, %3761
  %3768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3769 = extractvalue %dx.types.CBufRet.f32 %3768, 1
  %3770 = extractvalue %dx.types.CBufRet.f32 %3768, 0
  %3771 = fsub fast float %3680, %3770
  %3772 = fmul fast float %3771, %3769
  %3773 = call float @dx.op.unary.f32(i32 7, float %3772)  ; Saturate(value)
  %3774 = fmul fast float %3767, %3597
  %3775 = fadd fast float %3767, %3597
  %3776 = fmul fast float %3775, %3606
  %3777 = fsub fast float %3776, %3606
  %3778 = call float @dx.op.unary.f32(i32 7, float %3777)  ; Saturate(value)
  %3779 = and i32 %3636, 128
  %3780 = icmp ne i32 %3779, 0
  %3781 = select i1 %3780, float %3778, float %3774
  %3782 = fmul fast float %3781, %3773
  %3783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3784 = extractvalue %dx.types.CBufRet.f32 %3783, 0
  %3785 = fcmp fast ugt float %3782, %3784
  br i1 %3785, label %3786, label %3685

; <label>:3786                                    ; preds = %3705
  %3787 = select i1 %3745, float %3782, float 0.000000e+00
  %3788 = fadd fast float %3787, %3561
  %3789 = call float @dx.op.unary.f32(i32 7, float %3788)  ; Saturate(value)
  br i1 %3745, label %3685, label %3790

; <label>:3790                                    ; preds = %3786
  %3791 = and i32 %3636, 4
  %3792 = and i32 %3636, 8
  %3793 = add i32 %3592, 0
  %3794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3793, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3796 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3794, %dx.types.Handle %3795, float %3723, float %3726, float undef, float undef, i32 0, i32 0, i32 undef, float %3728, float %3730, float undef, float %3732, float %3734, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3797 = extractvalue %dx.types.ResRet.f32 %3796, 0
  %3798 = extractvalue %dx.types.ResRet.f32 %3796, 1
  %3799 = extractvalue %dx.types.ResRet.f32 %3796, 2
  %3800 = extractvalue %dx.types.ResRet.f32 %3796, 3
  %3801 = bitcast float %3618 to i32
  %3802 = and i32 %3801, 255
  %3803 = uitofp i32 %3802 to float
  %3804 = lshr i32 %3801, 8
  %3805 = and i32 %3804, 255
  %3806 = uitofp i32 %3805 to float
  %3807 = fmul fast float %3800, %3803
  %3808 = fadd fast float %3807, %3806
  %3809 = fmul fast float %3808, 0x3F70101000000000
  %3810 = add i32 %3593, 0
  %3811 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3810, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3812 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3811, %dx.types.Handle %3795, float %3723, float %3726, float undef, float undef, i32 0, i32 0, i32 undef, float %3728, float %3730, float undef, float %3732, float %3734, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3813 = extractvalue %dx.types.ResRet.f32 %3812, 0
  %3814 = extractvalue %dx.types.ResRet.f32 %3812, 1
  %3815 = extractvalue %dx.types.ResRet.f32 %3812, 2
  %3816 = extractvalue %dx.types.ResRet.f32 %3812, 3
  %3817 = bitcast float %3612 to i32
  %3818 = and i32 %3817, 255
  %3819 = uitofp i32 %3818 to float
  %3820 = lshr i32 %3817, 8
  %3821 = and i32 %3820, 255
  %3822 = uitofp i32 %3821 to float
  %3823 = lshr i32 %3817, 16
  %3824 = and i32 %3823, 255
  %3825 = uitofp i32 %3824 to float
  %3826 = fmul fast float %3825, 0x3F70101000000000
  %3827 = fmul fast float %3813, %3819
  %3828 = fadd fast float %3827, %3822
  %3829 = fmul fast float %3828, 0x3F70101000000000
  %3830 = fadd fast float %3814, -5.000000e-01
  %3831 = fadd fast float %3816, -5.000000e-01
  %3832 = fmul fast float %3830, %3826
  %3833 = fmul fast float %3831, %3826
  %3834 = fadd fast float %3832, 5.000000e-01
  %3835 = fadd fast float %3833, 5.000000e-01
  %3836 = fmul fast float %3797, %3621
  %3837 = fmul fast float %3798, %3622
  %3838 = fmul fast float %3799, %3623
  %3839 = fmul fast float %3834, 2.000000e+00
  %3840 = fadd fast float %3839, -1.000000e+00
  %3841 = fmul fast float %3835, 2.000000e+00
  %3842 = fadd fast float %3841, -1.000000e+00
  %3843 = fadd fast float %3840, %3842
  %3844 = fmul fast float %3843, 5.000000e-01
  %3845 = fsub fast float %3840, %3842
  %3846 = fmul fast float %3845, 5.000000e-01
  %3847 = call float @dx.op.unary.f32(i32 6, float %3844)  ; FAbs(value)
  %3848 = fsub fast float 1.000000e+00, %3847
  %3849 = call float @dx.op.unary.f32(i32 6, float %3846)  ; FAbs(value)
  %3850 = fsub fast float %3848, %3849
  %3851 = call float @dx.op.dot3.f32(i32 55, float %3844, float %3846, float %3850, float %3844, float %3846, float %3850)  ; Dot3(ax,ay,az,bx,by,bz)
  %3852 = call float @dx.op.unary.f32(i32 25, float %3851)  ; Rsqrt(value)
  %3853 = fmul fast float %3844, %3852
  %3854 = fmul fast float %3846, %3852
  %3855 = fmul fast float %3852, %3850
  %3856 = fmul fast float %3855, %3586
  %3857 = fmul fast float %3855, %3587
  %3858 = fmul fast float %3855, %3588
  %3859 = fmul fast float %3853, %3609
  %3860 = fmul fast float %3853, %3610
  %3861 = fmul fast float %3853, %3611
  %3862 = fadd fast float %3859, %3856
  %3863 = fadd fast float %3860, %3857
  %3864 = fadd fast float %3861, %3858
  %3865 = fmul fast float %3854, %3615
  %3866 = fmul fast float %3854, %3616
  %3867 = fmul fast float %3854, %3617
  %3868 = fadd fast float %3862, %3865
  %3869 = fadd fast float %3863, %3866
  %3870 = fadd fast float %3864, %3867
  %3871 = call float @dx.op.dot3.f32(i32 55, float %3868, float %3869, float %3870, float %3868, float %3869, float %3870)  ; Dot3(ax,ay,az,bx,by,bz)
  %3872 = call float @dx.op.unary.f32(i32 25, float %3871)  ; Rsqrt(value)
  %3873 = fmul fast float %3868, %3872
  %3874 = fmul fast float %3869, %3872
  %3875 = fmul fast float %3870, %3872
  %3876 = icmp ne i32 %3792, 0
  %3877 = select i1 %3876, float 1.000000e+00, float 0.000000e+00
  %3878 = fmul fast float %3782, %3877
  %3879 = and i32 %3636, 1
  %3880 = icmp eq i32 %3879, 0
  br i1 %3880, label %3881, label %3885

; <label>:3881                                    ; preds = %3790
  %3882 = fsub fast float %3873, %3569
  %3883 = fsub fast float %3874, %3570
  %3884 = fsub fast float %3875, %3571
  br label %3885

; <label>:3885                                    ; preds = %3881, %3790
  %3886 = phi float [ %3882, %3881 ], [ %3873, %3790 ]
  %3887 = phi float [ %3883, %3881 ], [ %3874, %3790 ]
  %3888 = phi float [ %3884, %3881 ], [ %3875, %3790 ]
  %3889 = fmul float %3888, %3878
  %3890 = fmul float %3887, %3878
  %3891 = fmul float %3886, %3878
  %3892 = fadd fast float %3891, %3569
  %3893 = fadd fast float %3890, %3570
  %3894 = fadd fast float %3889, %3571
  %3895 = icmp ne i32 %3791, 0
  %3896 = select i1 %3895, float 1.000000e+00, float 0.000000e+00
  %3897 = fmul fast float %3782, %3896
  %3898 = fsub fast float %3836, %3576
  %3899 = fsub fast float %3837, %3577
  %3900 = fsub fast float %3838, %3578
  %3901 = fmul fast float %3898, %3897
  %3902 = fmul fast float %3899, %3897
  %3903 = fmul fast float %3900, %3897
  %3904 = fadd fast float %3901, %3576
  %3905 = fadd fast float %3902, %3577
  %3906 = fadd fast float %3903, %3578
  %3907 = fsub fast float %3809, %3575
  %3908 = fmul fast float %3907, %3897
  %3909 = fadd fast float %3908, %3575
  %3910 = fmul fast float %3897, %3565
  %3911 = fsub fast float %3565, %3910
  %3912 = fmul fast float %3897, %3564
  %3913 = fsub fast float %3564, %3912
  %3914 = fadd fast float %3782, %3574
  %3915 = call float @dx.op.unary.f32(i32 7, float %3914)  ; Saturate(value)
  %3916 = fsub fast float %3829, %3573
  %3917 = fmul fast float %3916, %3878
  %3918 = fadd fast float %3917, %3573
  %3919 = fsub fast float %3815, %3572
  %3920 = fmul fast float %3919, %3878
  %3921 = fadd fast float %3920, %3572
  %3922 = call float @dx.op.dot3.f32(i32 55, float %3836, float %3837, float %3838, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3924 = extractvalue %dx.types.CBufRet.f32 %3923, 0
  %3925 = extractvalue %dx.types.CBufRet.f32 %3923, 1
  %3926 = fmul fast float %3925, %3922
  %3927 = fadd fast float %3926, %3924
  %3928 = call float @dx.op.unary.f32(i32 7, float %3927)  ; Saturate(value)
  %3929 = bitcast float %3624 to i32
  %3930 = and i32 %3929, 65535
  %3931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3930)  ; LegacyF16ToF32(value)
  %3932 = lshr i32 %3929, 16
  %3933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3932)  ; LegacyF16ToF32(value)
  %3934 = fcmp fast oge float %3931, 0.000000e+00
  %3935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3936 = extractvalue %dx.types.CBufRet.f32 %3935, 0
  %3937 = select i1 %3934, float %3931, float %3936
  %3938 = fadd fast float %3937, %3933
  %3939 = fsub fast float %3928, %3563
  %3940 = fmul fast float %3939, %3782
  %3941 = fadd fast float %3940, %3563
  %3942 = fmul fast float %3938, %3782
  %3943 = call float @dx.op.binary.f32(i32 35, float %3562, float %3942)  ; FMax(a,b)
  %3944 = and i32 %3636, 16
  %3945 = icmp eq i32 %3944, 0
  br i1 %3945, label %3968, label %3946

; <label>:3946                                    ; preds = %3885
  %3947 = bitcast float %3630 to i32
  %3948 = add i32 %3627, 0
  %3949 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3948, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3950 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3949, %dx.types.Handle %3795, float %3723, float %3726, float undef, float undef, i32 0, i32 0, i32 undef, float %3728, float %3730, float undef, float %3732, float %3734, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3951 = extractvalue %dx.types.ResRet.f32 %3950, 0
  %3952 = extractvalue %dx.types.ResRet.f32 %3950, 1
  %3953 = extractvalue %dx.types.ResRet.f32 %3950, 2
  %3954 = and i32 %3947, 65535
  %3955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3954)  ; LegacyF16ToF32(value)
  %3956 = fmul fast float %3951, %3621
  %3957 = fmul fast float %3952, %3622
  %3958 = fmul fast float %3953, %3623
  %3959 = and i32 %3636, 16384
  %3960 = icmp ne i32 %3959, 0
  %3961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3962 = extractvalue %dx.types.CBufRet.f32 %3961, 0
  %3963 = select i1 %3960, float %3962, float 1.000000e+00
  %3964 = fmul fast float %3963, %3955
  %3965 = fmul fast float %3956, %3964
  %3966 = fmul fast float %3957, %3964
  %3967 = fmul fast float %3958, %3964
  br label %3968

; <label>:3968                                    ; preds = %3946, %3885
  %3969 = phi float [ %3965, %3946 ], [ 0.000000e+00, %3885 ]
  %3970 = phi float [ %3966, %3946 ], [ 0.000000e+00, %3885 ]
  %3971 = phi float [ %3967, %3946 ], [ 0.000000e+00, %3885 ]
  %3972 = fsub fast float %3969, %3566
  %3973 = fsub fast float %3970, %3567
  %3974 = fsub fast float %3971, %3568
  %3975 = fmul fast float %3972, %3782
  %3976 = fmul fast float %3973, %3782
  %3977 = fmul fast float %3974, %3782
  %3978 = fadd fast float %3975, %3566
  %3979 = fadd fast float %3976, %3567
  %3980 = fadd fast float %3977, %3568
  br label %3685

; <label>:3981                                    ; preds = %3685
  br label %3982

; <label>:3982                                    ; preds = %3981, %3505
  %3983 = phi float [ 0.000000e+00, %3505 ], [ %3686, %3981 ]
  %3984 = phi float [ %3474, %3505 ], [ %3687, %3981 ]
  %3985 = phi float [ %3455, %3505 ], [ %3688, %3981 ]
  %3986 = phi float [ 0.000000e+00, %3505 ], [ %3689, %3981 ]
  %3987 = phi float [ 0.000000e+00, %3505 ], [ %3690, %3981 ]
  %3988 = phi float [ %3449, %3505 ], [ %3691, %3981 ]
  %3989 = phi float [ %3450, %3505 ], [ %3692, %3981 ]
  %3990 = phi float [ %3451, %3505 ], [ %3693, %3981 ]
  %3991 = phi float [ %3500, %3505 ], [ %3694, %3981 ]
  %3992 = phi float [ %3501, %3505 ], [ %3695, %3981 ]
  %3993 = phi float [ %3502, %3505 ], [ %3696, %3981 ]
  %3994 = phi float [ %3454, %3505 ], [ %3697, %3981 ]
  %3995 = phi float [ %3453, %3505 ], [ %3698, %3981 ]
  %3996 = phi float [ 0.000000e+00, %3505 ], [ %3699, %3981 ]
  %3997 = phi float [ %3452, %3505 ], [ %3700, %3981 ]
  %3998 = phi float [ %3446, %3505 ], [ %3701, %3981 ]
  %3999 = phi float [ %3447, %3505 ], [ %3702, %3981 ]
  %4000 = phi float [ %3448, %3505 ], [ %3703, %3981 ]
  %4001 = call float @dx.op.dot3.f32(i32 55, float %3991, float %3992, float %3993, float %3991, float %3992, float %3993)  ; Dot3(ax,ay,az,bx,by,bz)
  %4002 = call float @dx.op.unary.f32(i32 25, float %4001)  ; Rsqrt(value)
  %4003 = fmul fast float %4002, %3991
  %4004 = fmul fast float %4002, %3992
  %4005 = fmul fast float %4002, %3993
  %4006 = fadd fast float %3996, %890
  %4007 = call float @dx.op.unary.f32(i32 7, float %4006)  ; Saturate(value)
  %4008 = call float @dx.op.dot3.f32(i32 55, float %4003, float %4004, float %4005, float %4003, float %4004, float %4005)  ; Dot3(ax,ay,az,bx,by,bz)
  %4009 = call float @dx.op.unary.f32(i32 25, float %4008)  ; Rsqrt(value)
  %4010 = fmul fast float %4009, %4003
  %4011 = fmul fast float %4009, %4004
  %4012 = fmul fast float %4009, %4005
  br label %4013

; <label>:4013                                    ; preds = %3982, %3443
  %4014 = phi float [ %4010, %3982 ], [ %3500, %3443 ]
  %4015 = phi float [ %4011, %3982 ], [ %3501, %3443 ]
  %4016 = phi float [ %4012, %3982 ], [ %3502, %3443 ]
  %4017 = phi float [ %3998, %3982 ], [ %3446, %3443 ]
  %4018 = phi float [ %3999, %3982 ], [ %3447, %3443 ]
  %4019 = phi float [ %4000, %3982 ], [ %3448, %3443 ]
  %4020 = phi float [ %3988, %3982 ], [ %3449, %3443 ]
  %4021 = phi float [ %3989, %3982 ], [ %3450, %3443 ]
  %4022 = phi float [ %3990, %3982 ], [ %3451, %3443 ]
  %4023 = phi float [ %3997, %3982 ], [ %3452, %3443 ]
  %4024 = phi float [ %4007, %3982 ], [ %890, %3443 ]
  %4025 = phi float [ %3995, %3982 ], [ %3453, %3443 ]
  %4026 = phi float [ %3994, %3982 ], [ %3454, %3443 ]
  %4027 = phi float [ %3987, %3982 ], [ 0.000000e+00, %3443 ]
  %4028 = phi float [ %3986, %3982 ], [ 0.000000e+00, %3443 ]
  %4029 = phi float [ %3983, %3982 ], [ 0.000000e+00, %3443 ]
  %4030 = phi float [ %3984, %3982 ], [ %3474, %3443 ]
  %4031 = phi float [ %3985, %3982 ], [ %3455, %3443 ]
  %4032 = fadd fast float %4023, 0xBFB99999A0000000
  %4033 = call float @dx.op.unary.f32(i32 7, float %4032)  ; Saturate(value)
  %4034 = fmul fast float %4033, 0x3FF1C71C80000000
  %4035 = call float @dx.op.binary.f32(i32 36, float %4023, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4036 = fsub fast float 1.000000e+00, %4034
  %4037 = call float @dx.op.unary.f32(i32 7, float %4036)  ; Saturate(value)
  %4038 = fmul fast float %4037, %4017
  %4039 = fmul fast float %4037, %4018
  %4040 = fmul fast float %4037, %4019
  %4041 = call float @dx.op.unary.f32(i32 7, float %4038)  ; Saturate(value)
  %4042 = call float @dx.op.unary.f32(i32 7, float %4039)  ; Saturate(value)
  %4043 = call float @dx.op.unary.f32(i32 7, float %4040)  ; Saturate(value)
  %4044 = fmul fast float %4034, %4017
  %4045 = fmul fast float %4034, %4018
  %4046 = fmul fast float %4034, %4019
  %4047 = fadd fast float %4044, %4035
  %4048 = fadd fast float %4045, %4035
  %4049 = fadd fast float %4046, %4035
  %4050 = call float @dx.op.unary.f32(i32 7, float %4047)  ; Saturate(value)
  %4051 = call float @dx.op.unary.f32(i32 7, float %4048)  ; Saturate(value)
  %4052 = call float @dx.op.unary.f32(i32 7, float %4049)  ; Saturate(value)
  %4053 = call float @dx.op.unary.f32(i32 7, float %4025)  ; Saturate(value)
  %4054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4055 = extractvalue %dx.types.CBufRet.i32 %4054, 3
  %4056 = and i32 %4055, 8
  %4057 = icmp ne i32 %4056, 0
  %4058 = call float @dx.op.binary.f32(i32 35, float %4041, float %4017)  ; FMax(a,b)
  %4059 = call float @dx.op.binary.f32(i32 35, float %4042, float %4017)  ; FMax(a,b)
  %4060 = call float @dx.op.binary.f32(i32 35, float %4043, float %4017)  ; FMax(a,b)
  %4061 = call float @dx.op.dot3.f32(i32 55, float %4041, float %4042, float %4043, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4062 = select i1 %171, float %4017, float %4041
  %4063 = select i1 %171, float %4061, float %4042
  %4064 = select i1 %171, float 1.000000e+00, float %4043
  %4065 = select i1 %4057, float %4058, float %4062
  %4066 = select i1 %4057, float %4059, float %4063
  %4067 = select i1 %4057, float %4060, float %4064
  %4068 = and i32 %147, 3
  %4069 = select i1 %141, i32 %4068, i32 0
  %4070 = icmp eq i32 %4069, 1
  br i1 %4070, label %4071, label %4147

; <label>:4071                                    ; preds = %4013
  %4072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4072, 0
  %4074 = extractvalue %dx.types.CBufRet.f32 %4072, 1
  %4075 = fadd fast float %4073, %130
  %4076 = fadd fast float %4074, %131
  %4077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4077, 0
  %4079 = extractvalue %dx.types.CBufRet.f32 %4077, 1
  %4080 = fsub fast float %4075, %4078
  %4081 = fsub fast float %4076, %4079
  %4082 = fmul fast float %4080, %4080
  %4083 = fmul fast float %4081, %4081
  %4084 = fadd fast float %4082, %4083
  %4085 = call float @dx.op.unary.f32(i32 24, float %4084)  ; Sqrt(value)
  %4086 = extractvalue %dx.types.CBufRet.f32 %4077, 2
  %4087 = fcmp fast olt float %4085, %4086
  br i1 %4087, label %4088, label %4141

; <label>:4088                                    ; preds = %4071
  %4089 = extractvalue %dx.types.CBufRet.f32 %4072, 2
  %4090 = fadd fast float %4089, %132
  %4091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.f32 %4091, 0
  %4093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4094 = extractvalue %dx.types.CBufRet.f32 %4093, 0
  %4095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4096 = extractvalue %dx.types.CBufRet.f32 %4095, 0
  %4097 = extractvalue %dx.types.CBufRet.f32 %4091, 1
  %4098 = extractvalue %dx.types.CBufRet.f32 %4093, 1
  %4099 = extractvalue %dx.types.CBufRet.f32 %4095, 1
  %4100 = extractvalue %dx.types.CBufRet.f32 %4091, 3
  %4101 = extractvalue %dx.types.CBufRet.f32 %4093, 3
  %4102 = extractvalue %dx.types.CBufRet.f32 %4095, 3
  %4103 = fadd fast float %4100, %4075
  %4104 = fadd fast float %4101, %4076
  %4105 = fadd fast float %4090, %4102
  %4106 = fmul fast float %4103, %4092
  %4107 = call float @dx.op.tertiary.f32(i32 46, float %4104, float %4094, float %4106)  ; FMad(a,b,c)
  %4108 = call float @dx.op.tertiary.f32(i32 46, float %4105, float %4096, float %4107)  ; FMad(a,b,c)
  %4109 = fmul fast float %4103, %4097
  %4110 = call float @dx.op.tertiary.f32(i32 46, float %4104, float %4098, float %4109)  ; FMad(a,b,c)
  %4111 = call float @dx.op.tertiary.f32(i32 46, float %4105, float %4099, float %4110)  ; FMad(a,b,c)
  %4112 = fsub fast float %4108, %4100
  %4113 = fsub fast float %4111, %4101
  %4114 = fsub fast float %4112, %4078
  %4115 = fadd fast float %4114, %4086
  %4116 = fsub fast float %4113, %4079
  %4117 = fadd fast float %4116, %4086
  %4118 = extractvalue %dx.types.CBufRet.f32 %4077, 3
  %4119 = fmul fast float %4115, %4118
  %4120 = fmul fast float %4117, %4118
  %4121 = call float @dx.op.unary.f32(i32 7, float %4119)  ; Saturate(value)
  %4122 = call float @dx.op.unary.f32(i32 7, float %4120)  ; Saturate(value)
  %4123 = fsub fast float 1.000000e+00, %4121
  %4124 = fsub fast float 1.000000e+00, %4122
  %4125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %28, float %4123, float %4124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4126 = extractvalue %dx.types.ResRet.f32 %4125, 0
  %4127 = fcmp fast ugt float %4126, 0.000000e+00
  br i1 %4127, label %4128, label %4141

; <label>:4128                                    ; preds = %4088
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 2
  %4131 = fmul fast float %4130, %4126
  %4132 = extractvalue %dx.types.CBufRet.f32 %4129, 3
  %4133 = fadd fast float %4132, %4131
  %4134 = extractvalue %dx.types.CBufRet.f32 %4095, 2
  %4135 = fadd fast float %4133, %4102
  %4136 = fmul fast float %4108, %4096
  %4137 = call float @dx.op.tertiary.f32(i32 46, float %4111, float %4099, float %4136)  ; FMad(a,b,c)
  %4138 = call float @dx.op.tertiary.f32(i32 46, float %4135, float %4134, float %4137)  ; FMad(a,b,c)
  %4139 = fsub fast float %4138, %4102
  %4140 = fsub fast float %4139, %4089
  br label %4141

; <label>:4141                                    ; preds = %4128, %4088, %4071
  %4142 = phi i1 [ true, %4128 ], [ false, %4088 ], [ false, %4071 ]
  %4143 = phi float [ %4140, %4128 ], [ -1.310720e+05, %4088 ], [ -1.310720e+05, %4071 ]
  %4144 = fsub fast float %4143, %132
  %4145 = call float @dx.op.unary.f32(i32 7, float %4144)  ; Saturate(value)
  %4146 = select i1 %4142, float %4145, float 1.000000e+00
  br label %4147

; <label>:4147                                    ; preds = %4141, %4013
  %4148 = phi float [ %4146, %4141 ], [ 0.000000e+00, %4013 ]
  %4149 = icmp eq i32 %4069, 3
  %4150 = select i1 %4149, float 1.000000e+00, float %4148
  %4151 = call float @dx.op.binary.f32(i32 35, float %4029, float %4150)  ; FMax(a,b)
  %4152 = call float @dx.op.unary.f32(i32 7, float %4151)  ; Saturate(value)
  %4153 = fcmp fast une float %4152, 0.000000e+00
  %4154 = call float @dx.op.dot3.f32(i32 55, float %130, float %131, float %132, float %130, float %131, float %132)  ; Dot3(ax,ay,az,bx,by,bz)
  %4155 = call float @dx.op.unary.f32(i32 25, float %4154)  ; Rsqrt(value)
  br i1 %4153, label %4163, label %4156

; <label>:4156                                    ; preds = %4147
  %4157 = fmul fast float %4155, %130
  %4158 = fmul fast float %4155, %131
  %4159 = fmul fast float %4155, %132
  %4160 = fsub fast float -0.000000e+00, %4157
  %4161 = fsub fast float -0.000000e+00, %4158
  %4162 = fsub fast float -0.000000e+00, %4159
  br label %4331

; <label>:4163                                    ; preds = %4147
  %4164 = fmul fast float %130, %4155
  %4165 = fsub fast float -0.000000e+00, %4164
  %4166 = fmul fast float %131, %4155
  %4167 = fsub fast float -0.000000e+00, %4166
  %4168 = fmul fast float %132, %4155
  %4169 = fsub fast float -0.000000e+00, %4168
  %4170 = call float @dx.op.dot3.f32(i32 55, float %4165, float %4167, float %4169, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4171 = fmul fast float %4152, 2.500000e+00
  %4172 = call float @dx.op.unary.f32(i32 7, float %4171)  ; Saturate(value)
  %4173 = fmul fast float %4152, 0x4013FFFFE0000000
  %4174 = fadd fast float %4173, 0xBFFFFFFFE0000000
  %4175 = call float @dx.op.unary.f32(i32 7, float %4174)  ; Saturate(value)
  %4176 = fmul fast float %4152, 0x4004000020000000
  %4177 = fadd fast float %4176, 0xBFF8000040000000
  %4178 = call float @dx.op.unary.f32(i32 7, float %4177)  ; Saturate(value)
  %4179 = call float @dx.op.unary.f32(i32 7, float %4172)  ; Saturate(value)
  %4180 = fmul fast float %4032, 1.000000e+01
  %4181 = call float @dx.op.unary.f32(i32 7, float %4180)  ; Saturate(value)
  %4182 = fmul fast float %4181, 2.000000e+00
  %4183 = fsub fast float 3.000000e+00, %4182
  %4184 = fmul fast float %4181, %4181
  %4185 = fmul fast float %4184, %4183
  %4186 = fsub fast float 1.000000e+00, %4185
  %4187 = fsub fast float 0x3FE3333340000000, %4053
  %4188 = fmul fast float %4187, 0x400AAAAAA0000000
  %4189 = call float @dx.op.unary.f32(i32 7, float %4188)  ; Saturate(value)
  %4190 = fmul fast float %4186, %4189
  %4191 = fmul fast float %4065, 0x3FEA2B8620000000
  %4192 = fmul fast float %4066, 0x3FEA2B8620000000
  %4193 = fmul fast float %4067, 0x3FEA2B8620000000
  %4194 = fadd fast float %4191, 0x3FC81DFBA0000000
  %4195 = fmul fast float %4194, %4065
  %4196 = fadd fast float %4195, 0x3F910E6020000000
  %4197 = fadd fast float %4192, 0x3FC81DFBA0000000
  %4198 = fmul fast float %4197, %4066
  %4199 = fadd fast float %4198, 0x3F910E6020000000
  %4200 = fadd fast float %4193, 0x3FC81DFBA0000000
  %4201 = fmul fast float %4200, %4067
  %4202 = fadd fast float %4201, 0x3F910E6020000000
  %4203 = call float @dx.op.unary.f32(i32 7, float %4196)  ; Saturate(value)
  %4204 = call float @dx.op.unary.f32(i32 7, float %4199)  ; Saturate(value)
  %4205 = call float @dx.op.unary.f32(i32 7, float %4202)  ; Saturate(value)
  %4206 = fsub fast float %4203, %4065
  %4207 = fsub fast float %4204, %4066
  %4208 = fsub fast float %4205, %4067
  %4209 = fmul fast float %4206, %4179
  %4210 = fmul fast float %4209, %4190
  %4211 = fmul fast float %4207, %4179
  %4212 = fmul fast float %4211, %4190
  %4213 = fmul fast float %4208, %4179
  %4214 = fmul fast float %4213, %4190
  %4215 = fadd fast float %4210, %4065
  %4216 = fadd fast float %4212, %4066
  %4217 = fadd fast float %4214, %4067
  %4218 = fmul fast float %4026, %4026
  %4219 = fmul fast float %4218, %4218
  %4220 = fadd fast float %4175, 1.000000e+00
  %4221 = fsub fast float %4220, %4190
  %4222 = call float @dx.op.unary.f32(i32 7, float %4221)  ; Saturate(value)
  %4223 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4224 = call float @dx.op.unary.f32(i32 7, float %4223)  ; Saturate(value)
  %4225 = fsub fast float 1.000000e+00, %4219
  %4226 = call float @dx.op.binary.f32(i32 36, float %4222, float %4225)  ; FMin(a,b)
  %4227 = call float @dx.op.unary.f32(i32 7, float %4178)  ; Saturate(value)
  %4228 = call float @dx.op.binary.f32(i32 35, float %4226, float %4227)  ; FMax(a,b)
  %4229 = fadd fast float %4224, 0xBFE4CCCCC0000000
  %4230 = fmul fast float %4229, 0x4006DB6DA0000000
  %4231 = call float @dx.op.unary.f32(i32 7, float %4230)  ; Saturate(value)
  %4232 = fmul fast float %4231, 2.000000e+00
  %4233 = fsub fast float 3.000000e+00, %4232
  %4234 = bitcast float %4050 to i32
  %4235 = ashr i32 %4234, 1
  %4236 = add nsw i32 %4235, 532487669
  %4237 = bitcast i32 %4236 to float
  %4238 = fsub fast float 1.000000e+00, %4237
  %4239 = bitcast float %4238 to i32
  %4240 = sub nsw i32 2129859010, %4239
  %4241 = bitcast i32 %4240 to float
  %4242 = fmul fast float %4241, 2.000000e+00
  %4243 = bitcast float %4051 to i32
  %4244 = ashr i32 %4243, 1
  %4245 = add nsw i32 %4244, 532487669
  %4246 = bitcast i32 %4245 to float
  %4247 = fsub fast float 1.000000e+00, %4246
  %4248 = bitcast float %4247 to i32
  %4249 = sub nsw i32 2129859010, %4248
  %4250 = bitcast i32 %4249 to float
  %4251 = fmul fast float %4250, 2.000000e+00
  %4252 = bitcast float %4052 to i32
  %4253 = ashr i32 %4252, 1
  %4254 = add nsw i32 %4253, 532487669
  %4255 = bitcast i32 %4254 to float
  %4256 = fsub fast float 1.000000e+00, %4255
  %4257 = bitcast float %4256 to i32
  %4258 = sub nsw i32 2129859010, %4257
  %4259 = bitcast i32 %4258 to float
  %4260 = fmul fast float %4259, 2.000000e+00
  %4261 = fsub fast float 0x4002A9FBE0000000, %4242
  %4262 = fadd fast float %4242, 0x3FD54FDF00000000
  %4263 = bitcast float %4262 to i32
  %4264 = sub nsw i32 2129859010, %4263
  %4265 = bitcast i32 %4264 to float
  %4266 = fmul fast float %4265, %4261
  %4267 = fmul fast float %4266, %4266
  %4268 = fsub fast float 0x4002A9FBE0000000, %4251
  %4269 = fadd fast float %4251, 0x3FD54FDF00000000
  %4270 = bitcast float %4269 to i32
  %4271 = sub nsw i32 2129859010, %4270
  %4272 = bitcast i32 %4271 to float
  %4273 = fmul fast float %4272, %4268
  %4274 = fmul fast float %4273, %4273
  %4275 = fsub fast float 0x4002A9FBE0000000, %4260
  %4276 = fadd fast float %4260, 0x3FD54FDF00000000
  %4277 = bitcast float %4276 to i32
  %4278 = sub nsw i32 2129859010, %4277
  %4279 = bitcast i32 %4278 to float
  %4280 = fmul fast float %4279, %4275
  %4281 = fmul fast float %4280, %4280
  %4282 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4267)  ; FMax(a,b)
  %4283 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4274)  ; FMax(a,b)
  %4284 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4281)  ; FMax(a,b)
  %4285 = fsub fast float 1.000000e+00, %4170
  %4286 = fadd fast float %4285, %4186
  %4287 = call float @dx.op.unary.f32(i32 7, float %4286)  ; Saturate(value)
  %4288 = fsub fast float 1.000000e+00, %4150
  %4289 = fmul fast float %4228, %4288
  %4290 = fmul fast float %4231, %4231
  %4291 = fmul fast float %4290, %4289
  %4292 = fmul fast float %4291, %4233
  %4293 = fmul fast float %4288, 0xBFE99999A0000000
  %4294 = fmul fast float %4293, %4179
  %4295 = fmul fast float %4294, %4190
  %4296 = fadd fast float %4295, 1.000000e+00
  %4297 = fadd fast float %4053, -1.000000e+00
  %4298 = fmul fast float %4296, %4297
  %4299 = fadd fast float %4298, 1.000000e+00
  %4300 = fsub fast float %4282, %4050
  %4301 = fsub fast float %4283, %4051
  %4302 = fsub fast float %4284, %4052
  %4303 = fmul fast float %4292, %4300
  %4304 = fmul fast float %4292, %4301
  %4305 = fmul fast float %4292, %4302
  %4306 = fadd fast float %4303, %4050
  %4307 = fadd fast float %4304, %4051
  %4308 = fadd fast float %4305, %4052
  %4309 = fsub fast float %74, %4014
  %4310 = fsub fast float %75, %4015
  %4311 = fsub fast float %76, %4016
  %4312 = fmul fast float %4292, %4309
  %4313 = fmul fast float %4292, %4310
  %4314 = fmul fast float %4292, %4311
  %4315 = fadd fast float %4312, %4014
  %4316 = fadd fast float %4313, %4015
  %4317 = fadd fast float %4314, %4016
  %4318 = fmul fast float %4292, %4287
  %4319 = call float @dx.op.unary.f32(i32 7, float %4299)  ; Saturate(value)
  %4320 = fsub fast float 1.000000e+00, %4319
  %4321 = fmul fast float %4318, %4320
  %4322 = fadd fast float %4321, %4319
  %4323 = fsub fast float 1.000000e+00, %4026
  %4324 = fmul fast float %4292, %4323
  %4325 = fadd fast float %4324, %4026
  %4326 = call float @dx.op.dot3.f32(i32 55, float %4315, float %4316, float %4317, float %4315, float %4316, float %4317)  ; Dot3(ax,ay,az,bx,by,bz)
  %4327 = call float @dx.op.unary.f32(i32 25, float %4326)  ; Rsqrt(value)
  %4328 = fmul fast float %4315, %4327
  %4329 = fmul fast float %4316, %4327
  %4330 = fmul fast float %4317, %4327
  br label %4331

; <label>:4331                                    ; preds = %4163, %4156
  %4332 = phi float [ %4162, %4156 ], [ %4169, %4163 ]
  %4333 = phi float [ %4161, %4156 ], [ %4167, %4163 ]
  %4334 = phi float [ %4160, %4156 ], [ %4165, %4163 ]
  %4335 = phi float [ %4159, %4156 ], [ %4168, %4163 ]
  %4336 = phi float [ %4158, %4156 ], [ %4166, %4163 ]
  %4337 = phi float [ %4157, %4156 ], [ %4164, %4163 ]
  %4338 = phi float [ %4014, %4156 ], [ %4328, %4163 ]
  %4339 = phi float [ %4015, %4156 ], [ %4329, %4163 ]
  %4340 = phi float [ %4016, %4156 ], [ %4330, %4163 ]
  %4341 = phi float [ %4050, %4156 ], [ %4306, %4163 ]
  %4342 = phi float [ %4051, %4156 ], [ %4307, %4163 ]
  %4343 = phi float [ %4052, %4156 ], [ %4308, %4163 ]
  %4344 = phi float [ %4065, %4156 ], [ %4215, %4163 ]
  %4345 = phi float [ %4066, %4156 ], [ %4216, %4163 ]
  %4346 = phi float [ %4067, %4156 ], [ %4217, %4163 ]
  %4347 = phi float [ %4053, %4156 ], [ %4322, %4163 ]
  %4348 = phi float [ %4026, %4156 ], [ %4325, %4163 ]
  %4349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4350 = extractvalue %dx.types.CBufRet.f32 %4349, 2
  %4351 = extractvalue %dx.types.CBufRet.f32 %4349, 3
  %4352 = fmul fast float %4350, %67
  %4353 = fmul fast float %4351, %68
  %4354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4355 = extractvalue %dx.types.CBufRet.f32 %4354, 0
  %4356 = extractvalue %dx.types.CBufRet.f32 %4354, 1
  %4357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %28, float %4352, float %4353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4358 = extractvalue %dx.types.ResRet.f32 %4357, 0
  %4359 = fmul fast float %4358, %4356
  %4360 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4361 = fadd fast float %4360, -1.000000e+00
  %4362 = fmul fast float %4361, %4355
  %4363 = fadd fast float %4362, 1.000000e+00
  %4364 = select i1 %171, float 0.000000e+00, float %4343
  %4365 = call float @dx.op.dot3.f32(i32 55, float %4338, float %4339, float %4340, float %4334, float %4333, float %4332)  ; Dot3(ax,ay,az,bx,by,bz)
  %4366 = call float @dx.op.unary.f32(i32 7, float %4365)  ; Saturate(value)
  %4367 = call float @dx.op.dot3.f32(i32 55, float %4337, float %4336, float %4335, float %4338, float %4339, float %4340)  ; Dot3(ax,ay,az,bx,by,bz)
  %4368 = fmul fast float %4367, 2.000000e+00
  %4369 = fmul fast float %4368, %4338
  %4370 = fmul fast float %4368, %4339
  %4371 = fmul fast float %4368, %4340
  %4372 = fsub fast float %4337, %4369
  %4373 = fsub fast float %4336, %4370
  %4374 = fsub fast float %4335, %4371
  %4375 = call float @dx.op.binary.f32(i32 36, float %4348, float %4363)  ; FMin(a,b)
  %4376 = fsub fast float 1.000000e+00, %4375
  %4377 = bitcast float %4376 to i32
  %4378 = ashr i32 %4377, 1
  %4379 = add nsw i32 %4378, 532487669
  %4380 = bitcast i32 %4379 to float
  %4381 = fsub fast float 1.000000e+00, %4347
  %4382 = call float @dx.op.binary.f32(i32 35, float %4381, float 0x3F847AE140000000)  ; FMax(a,b)
  %4383 = fmul fast float %4382, %4382
  %4384 = fmul fast float %4383, %4383
  %4385 = call float @dx.op.unary.f32(i32 7, float %4366)  ; Saturate(value)
  %4386 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %28, float %4380, float %4384, float %4385, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4387 = extractvalue %dx.types.ResRet.f32 %4386, 0
  %4388 = fsub fast float 1.000000e+00, %4348
  %4389 = bitcast float %4388 to i32
  %4390 = sub nsw i32 2129859010, %4389
  %4391 = bitcast i32 %4390 to float
  %4392 = fsub fast float 1.000000e+00, %44
  %4393 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4394 = call float @dx.op.binary.f32(i32 35, float %4393, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4395 = fdiv fast float %4392, %4394
  %4396 = call float @dx.op.dot3.f32(i32 55, float %4338, float %4339, float %4340, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4397 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4398 = fmul fast float %4397, 5.000000e-01
  %4399 = fadd fast float %4398, 5.000000e-01
  %4400 = fmul fast float %4399, %44
  %4401 = call float @dx.op.dot3.f32(i32 55, float %4338, float %4339, float %4340, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4402 = call float @dx.op.unary.f32(i32 7, float %4401)  ; Saturate(value)
  %4403 = fmul fast float %4402, %4395
  %4404 = fadd fast float %4400, %4403
  %4405 = fsub fast float 5.000000e-01, %4398
  %4406 = fmul fast float %4405, %4344
  %4407 = fmul fast float %4405, %4345
  %4408 = fmul fast float %4405, %4346
  %4409 = fadd fast float %4404, %4406
  %4410 = fadd fast float %4404, %4407
  %4411 = fadd fast float %4404, %4408
  %4412 = call float @dx.op.dot3.f32(i32 55, float %4372, float %4373, float %4374, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4413 = call float @dx.op.unary.f32(i32 7, float %4412)  ; Saturate(value)
  %4414 = fmul fast float %4413, 5.000000e-01
  %4415 = fadd fast float %4414, 5.000000e-01
  %4416 = fmul fast float %4415, %44
  %4417 = call float @dx.op.dot3.f32(i32 55, float %4372, float %4373, float %4374, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4418 = call float @dx.op.unary.f32(i32 7, float %4417)  ; Saturate(value)
  %4419 = fmul fast float %4418, %4395
  %4420 = fadd fast float %4416, %4419
  %4421 = fsub fast float 5.000000e-01, %4414
  %4422 = fmul fast float %4421, %4344
  %4423 = fmul fast float %4421, %4345
  %4424 = fmul fast float %4421, %4346
  %4425 = fadd fast float %4420, %4422
  %4426 = fadd fast float %4420, %4423
  %4427 = fadd fast float %4420, %4424
  %4428 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4430 = extractvalue %dx.types.CBufRet.f32 %4429, 0
  %4431 = call float @dx.op.binary.f32(i32 36, float %4344, float %4430)  ; FMin(a,b)
  %4432 = fmul fast float %4431, %4376
  %4433 = fsub fast float 1.000000e+00, %4432
  %4434 = bitcast float %4433 to i32
  %4435 = sub nsw i32 2129859010, %4434
  %4436 = bitcast i32 %4435 to float
  %4437 = call float @dx.op.binary.f32(i32 36, float %4345, float %4430)  ; FMin(a,b)
  %4438 = fmul fast float %4437, %4376
  %4439 = fsub fast float 1.000000e+00, %4438
  %4440 = bitcast float %4439 to i32
  %4441 = sub nsw i32 2129859010, %4440
  %4442 = bitcast i32 %4441 to float
  %4443 = call float @dx.op.binary.f32(i32 36, float %4346, float %4430)  ; FMin(a,b)
  %4444 = fmul fast float %4443, %4376
  %4445 = fsub fast float 1.000000e+00, %4444
  %4446 = bitcast float %4445 to i32
  %4447 = sub nsw i32 2129859010, %4446
  %4448 = bitcast i32 %4447 to float
  %4449 = fmul fast float %4375, %45
  %4450 = fmul fast float %4449, %4409
  %4451 = fmul fast float %4450, %4436
  %4452 = fmul fast float %4375, %46
  %4453 = fmul fast float %4452, %4410
  %4454 = fmul fast float %4453, %4442
  %4455 = fmul fast float %4375, %47
  %4456 = fmul fast float %4455, %4411
  %4457 = fmul fast float %4456, %4448
  %4458 = call float @dx.op.binary.f32(i32 36, float %4341, float %4430)  ; FMin(a,b)
  %4459 = fmul fast float %4458, %4376
  %4460 = fsub fast float 1.000000e+00, %4459
  %4461 = bitcast float %4460 to i32
  %4462 = sub nsw i32 2129859010, %4461
  %4463 = bitcast i32 %4462 to float
  %4464 = call float @dx.op.binary.f32(i32 36, float %4342, float %4430)  ; FMin(a,b)
  %4465 = fmul fast float %4464, %4376
  %4466 = fsub fast float 1.000000e+00, %4465
  %4467 = bitcast float %4466 to i32
  %4468 = sub nsw i32 2129859010, %4467
  %4469 = bitcast i32 %4468 to float
  %4470 = call float @dx.op.binary.f32(i32 36, float %4364, float %4430)  ; FMin(a,b)
  %4471 = fmul fast float %4470, %4376
  %4472 = fsub fast float 1.000000e+00, %4471
  %4473 = bitcast float %4472 to i32
  %4474 = sub nsw i32 2129859010, %4473
  %4475 = bitcast i32 %4474 to float
  %4476 = fmul fast float %4449, %4425
  %4477 = fmul fast float %4476, %4463
  %4478 = fmul fast float %4452, %4426
  %4479 = fmul fast float %4478, %4469
  %4480 = fmul fast float %4455, %4427
  %4481 = fmul fast float %4480, %4475
  %4482 = call float @dx.op.dot3.f32(i32 55, float %4451, float %4454, float %4457, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4483 = select i1 %171, float 0.000000e+00, float %4451
  %4484 = select i1 %171, float %4482, float %4454
  %4485 = select i1 %171, float 0.000000e+00, float %4457
  %4486 = call float @dx.op.dot3.f32(i32 55, float %4477, float %4479, float %4481, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4487 = select i1 %171, float 0.000000e+00, float %4477
  %4488 = select i1 %171, float %4486, float %4479
  %4489 = select i1 %171, float 0.000000e+00, float %4481
  %4490 = fmul fast float %4366, 9.843750e-01
  %4491 = fmul fast float %4347, 9.843750e-01
  %4492 = fadd fast float %4490, 7.812500e-03
  %4493 = fadd fast float %4491, 7.812500e-03
  %4494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %4492, float %4493, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4495 = extractvalue %dx.types.ResRet.f32 %4494, 2
  %4496 = extractvalue %dx.types.ResRet.f32 %4494, 3
  %4497 = fmul fast float %4495, %4341
  %4498 = fmul fast float %4495, %4342
  %4499 = fmul fast float %4495, %4364
  %4500 = fadd fast float %4497, %4496
  %4501 = fadd fast float %4498, %4496
  %4502 = fadd fast float %4499, %4496
  %4503 = fcmp fast ogt float %4027, 0.000000e+00
  br i1 %4503, label %4504, label %4530

; <label>:4504                                    ; preds = %4331
  %4505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4027, float %4366, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4506 = extractvalue %dx.types.ResRet.f32 %4505, 0
  %4507 = extractvalue %dx.types.ResRet.f32 %4505, 1
  %4508 = extractvalue %dx.types.ResRet.f32 %4505, 2
  %4509 = fadd fast float %4506, -5.000000e-01
  %4510 = fadd fast float %4507, -5.000000e-01
  %4511 = fadd fast float %4508, -5.000000e-01
  %4512 = fsub fast float 1.000000e+00, %4341
  %4513 = fsub fast float 1.000000e+00, %4342
  %4514 = fsub fast float 1.000000e+00, %4364
  %4515 = fmul fast float %4341, 4.000000e+00
  %4516 = fmul fast float %4515, %4512
  %4517 = fmul fast float %4516, %4509
  %4518 = fmul fast float %4342, 4.000000e+00
  %4519 = fmul fast float %4518, %4513
  %4520 = fmul fast float %4519, %4510
  %4521 = fmul fast float %4364, 4.000000e+00
  %4522 = fmul fast float %4521, %4514
  %4523 = fmul fast float %4522, %4511
  %4524 = fadd fast float %4517, %4500
  %4525 = fadd fast float %4520, %4501
  %4526 = fadd fast float %4523, %4502
  %4527 = call float @dx.op.unary.f32(i32 7, float %4524)  ; Saturate(value)
  %4528 = call float @dx.op.unary.f32(i32 7, float %4525)  ; Saturate(value)
  %4529 = call float @dx.op.unary.f32(i32 7, float %4526)  ; Saturate(value)
  br label %4530

; <label>:4530                                    ; preds = %4504, %4331
  %4531 = phi float [ %4527, %4504 ], [ %4500, %4331 ]
  %4532 = phi float [ %4528, %4504 ], [ %4501, %4331 ]
  %4533 = phi float [ %4529, %4504 ], [ %4502, %4331 ]
  %4534 = call float @dx.op.binary.f32(i32 35, float %4532, float %4533)  ; FMax(a,b)
  %4535 = call float @dx.op.binary.f32(i32 35, float %4531, float %4534)  ; FMax(a,b)
  %4536 = fsub fast float 1.000000e+00, %4535
  %4537 = fmul fast float %4535, %4347
  %4538 = fadd fast float %4537, %4347
  %4539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4540 = extractvalue %dx.types.CBufRet.f32 %4539, 0
  %4541 = extractvalue %dx.types.CBufRet.f32 %4539, 1
  %4542 = extractvalue %dx.types.CBufRet.f32 %4539, 2
  %4543 = extractvalue %dx.types.CBufRet.f32 %4539, 3
  %4544 = fmul fast float %4538, %4540
  %4545 = fadd fast float %4544, %4541
  %4546 = call float @dx.op.unary.f32(i32 7, float %4545)  ; Saturate(value)
  %4547 = fmul fast float %4542, %4538
  %4548 = fadd fast float %4547, %4543
  %4549 = call float @dx.op.unary.f32(i32 7, float %4548)  ; Saturate(value)
  %4550 = fsub fast float 1.000000e+00, %4387
  %4551 = fadd fast float %4550, %4549
  %4552 = call float @dx.op.unary.f32(i32 7, float %4551)  ; Saturate(value)
  %4553 = fcmp fast olt float %4552, 1.000000e+00
  br i1 %4553, label %4554, label %5372

; <label>:4554                                    ; preds = %4530
  %4555 = fcmp fast olt float %4546, 1.000000e+00
  %4556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4557 = extractvalue %dx.types.CBufRet.f32 %4556, 0
  %4558 = fcmp fast ogt float %4557, 0.000000e+00
  %4559 = or i1 %4555, %4558
  %4560 = or i1 %4555, %4558
  %4561 = xor i1 %4560, true
  %4562 = zext i1 %4561 to i32
  br i1 %4559, label %4563, label %4806

; <label>:4563                                    ; preds = %4554
  %4564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4565 = extractvalue %dx.types.CBufRet.f32 %4564, 0
  %4566 = extractvalue %dx.types.CBufRet.f32 %4564, 1
  %4567 = extractvalue %dx.types.CBufRet.f32 %4564, 2
  %4568 = extractvalue %dx.types.CBufRet.f32 %4564, 3
  %4569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4570 = extractvalue %dx.types.CBufRet.f32 %4569, 0
  %4571 = extractvalue %dx.types.CBufRet.f32 %4569, 1
  %4572 = extractvalue %dx.types.CBufRet.f32 %4569, 2
  %4573 = extractvalue %dx.types.CBufRet.f32 %4569, 3
  %4574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4575 = extractvalue %dx.types.CBufRet.f32 %4574, 0
  %4576 = extractvalue %dx.types.CBufRet.f32 %4574, 1
  %4577 = extractvalue %dx.types.CBufRet.f32 %4574, 2
  %4578 = extractvalue %dx.types.CBufRet.f32 %4574, 3
  %4579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4580 = extractvalue %dx.types.CBufRet.f32 %4579, 0
  %4581 = extractvalue %dx.types.CBufRet.f32 %4579, 1
  %4582 = extractvalue %dx.types.CBufRet.f32 %4579, 2
  %4583 = extractvalue %dx.types.CBufRet.f32 %4579, 3
  %4584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4585 = extractvalue %dx.types.CBufRet.f32 %4584, 0
  %4586 = extractvalue %dx.types.CBufRet.f32 %4584, 1
  %4587 = extractvalue %dx.types.CBufRet.f32 %4584, 2
  %4588 = extractvalue %dx.types.CBufRet.f32 %4584, 3
  %4589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4590 = extractvalue %dx.types.CBufRet.f32 %4589, 0
  %4591 = extractvalue %dx.types.CBufRet.f32 %4589, 1
  %4592 = extractvalue %dx.types.CBufRet.f32 %4589, 2
  %4593 = extractvalue %dx.types.CBufRet.f32 %4589, 3
  %4594 = call float @dx.op.dot3.f32(i32 55, float %4590, float %4591, float %4592, float %4372, float %4373, float %4374)  ; Dot3(ax,ay,az,bx,by,bz)
  %4595 = call float @dx.op.dot3.f32(i32 55, float %4338, float %4339, float %4340, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4596 = call float @dx.op.unary.f32(i32 6, float %4595)  ; FAbs(value)
  %4597 = fmul fast float %4596, 8.000000e+00
  %4598 = fadd fast float %4597, -6.000000e+00
  %4599 = call float @dx.op.unary.f32(i32 7, float %4598)  ; Saturate(value)
  %4600 = fmul fast float %4594, 8.000000e+00
  %4601 = fmul fast float %4600, %4557
  %4602 = call float @dx.op.unary.f32(i32 7, float %4601)  ; Saturate(value)
  %4603 = fcmp fast ogt float %4602, 0.000000e+00
  br i1 %4603, label %4604, label %4781, !dx.controlflow.hints !69

; <label>:4604                                    ; preds = %4563
  %4605 = extractvalue %dx.types.CBufRet.f32 %4556, 1
  %4606 = extractvalue %dx.types.CBufRet.f32 %4556, 2
  %4607 = fsub fast float %4605, %4606
  %4608 = fmul fast float %4607, %4347
  %4609 = fadd fast float %4608, %4606
  %4610 = fmul fast float %184, 2.000000e+00
  %4611 = fmul fast float %185, 2.000000e+00
  %4612 = fadd fast float %4610, -1.000000e+00
  %4613 = fadd fast float %4611, -1.000000e+00
  %4614 = fmul fast float %4609, %4612
  %4615 = fmul fast float %4609, %4613
  %4616 = fadd fast float %4614, %67
  %4617 = fadd fast float %4615, %68
  %4618 = fmul fast float %4616, %4350
  %4619 = fmul fast float %4617, %4351
  %4620 = fadd fast float %4347, 0xBFE3333340000000
  %4621 = fmul fast float %4620, 0x4004000020000000
  %4622 = fsub fast float 1.000000e+00, %4621
  %4623 = call float @dx.op.unary.f32(i32 7, float %4622)  ; Saturate(value)
  %4624 = fmul fast float %4623, 3.000000e+00
  %4625 = fadd fast float %4624, %184
  %4626 = call float @dx.op.unary.f32(i32 27, float %4625)  ; Round_ni(value)
  %4627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %29, float %4618, float %4619, float %4626, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4628 = extractvalue %dx.types.ResRet.f32 %4627, 0
  %4629 = fcmp fast une float %4628, 0xFFF0000000000000
  %4630 = fcmp fast une float %4628, 0x7FF0000000000000
  %4631 = and i1 %4629, %4630
  %4632 = fcmp fast olt float %4628, 0.000000e+00
  %4633 = call float @dx.op.unary.f32(i32 6, float %4628)  ; FAbs(value)
  %4634 = fsub fast float 1.000000e+00, %4633
  %4635 = select i1 %4631, float 1.000000e+00, float 0.000000e+00
  %4636 = fmul fast float %4635, %4602
  %4637 = fcmp fast ogt float %4636, 0.000000e+00
  br i1 %4637, label %4638, label %4781, !dx.controlflow.hints !70

; <label>:4638                                    ; preds = %4604
  %4639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4640 = extractvalue %dx.types.CBufRet.f32 %4639, 0
  %4641 = extractvalue %dx.types.CBufRet.f32 %4639, 1
  %4642 = extractvalue %dx.types.CBufRet.f32 %4639, 2
  %4643 = select i1 %4632, float 0.000000e+00, float %4640
  %4644 = select i1 %4632, float 0.000000e+00, float %4641
  %4645 = select i1 %4632, float 0.000000e+00, float %4642
  %4646 = select i1 %4632, float %4565, float %4580
  %4647 = select i1 %4632, float %4570, float %4585
  %4648 = select i1 %4632, float %4575, float %4590
  %4649 = select i1 %4632, float %4566, float %4581
  %4650 = select i1 %4632, float %4571, float %4586
  %4651 = select i1 %4632, float %4576, float %4591
  %4652 = select i1 %4632, float %4567, float %4582
  %4653 = select i1 %4632, float %4572, float %4587
  %4654 = select i1 %4632, float %4577, float %4592
  %4655 = select i1 %4632, float %4568, float %4583
  %4656 = select i1 %4632, float %4573, float %4588
  %4657 = select i1 %4632, float %4578, float %4593
  %4658 = fadd fast float %4643, %130
  %4659 = fadd fast float %4644, %131
  %4660 = fadd fast float %4645, %132
  %4661 = fmul fast float %4658, %4646
  %4662 = call float @dx.op.tertiary.f32(i32 46, float %4659, float %4649, float %4661)  ; FMad(a,b,c)
  %4663 = call float @dx.op.tertiary.f32(i32 46, float %4660, float %4652, float %4662)  ; FMad(a,b,c)
  %4664 = fadd fast float %4663, %4655
  %4665 = fmul fast float %4658, %4647
  %4666 = call float @dx.op.tertiary.f32(i32 46, float %4659, float %4650, float %4665)  ; FMad(a,b,c)
  %4667 = call float @dx.op.tertiary.f32(i32 46, float %4660, float %4653, float %4666)  ; FMad(a,b,c)
  %4668 = fadd fast float %4667, %4656
  %4669 = fmul fast float %4658, %4648
  %4670 = call float @dx.op.tertiary.f32(i32 46, float %4659, float %4651, float %4669)  ; FMad(a,b,c)
  %4671 = call float @dx.op.tertiary.f32(i32 46, float %4660, float %4654, float %4670)  ; FMad(a,b,c)
  %4672 = fadd fast float %4671, %4657
  %4673 = fdiv fast float 1.000000e+00, %4672
  %4674 = fmul fast float %4673, %4664
  %4675 = fmul fast float %4673, %4668
  %4676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4677 = extractvalue %dx.types.CBufRet.f32 %4676, 0
  %4678 = extractvalue %dx.types.CBufRet.f32 %4676, 1
  %4679 = fmul fast float %4674, %4677
  %4680 = fmul fast float %4675, %4678
  %4681 = extractvalue %dx.types.CBufRet.f32 %4676, 2
  %4682 = extractvalue %dx.types.CBufRet.f32 %4676, 3
  %4683 = fadd fast float %4679, %4681
  %4684 = fadd fast float %4680, %4682
  %4685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4686 = extractvalue %dx.types.CBufRet.f32 %4685, 3
  %4687 = fmul fast float %4686, %4372
  %4688 = fmul fast float %4686, %4373
  %4689 = fmul fast float %4686, %4374
  %4690 = fadd fast float %4687, %4658
  %4691 = fadd fast float %4688, %4659
  %4692 = fadd fast float %4689, %4660
  %4693 = fmul fast float %4690, %4646
  %4694 = call float @dx.op.tertiary.f32(i32 46, float %4691, float %4649, float %4693)  ; FMad(a,b,c)
  %4695 = call float @dx.op.tertiary.f32(i32 46, float %4692, float %4652, float %4694)  ; FMad(a,b,c)
  %4696 = fadd fast float %4695, %4655
  %4697 = fmul fast float %4690, %4647
  %4698 = call float @dx.op.tertiary.f32(i32 46, float %4691, float %4650, float %4697)  ; FMad(a,b,c)
  %4699 = call float @dx.op.tertiary.f32(i32 46, float %4692, float %4653, float %4698)  ; FMad(a,b,c)
  %4700 = fadd fast float %4699, %4656
  %4701 = fmul fast float %4690, %4648
  %4702 = call float @dx.op.tertiary.f32(i32 46, float %4691, float %4651, float %4701)  ; FMad(a,b,c)
  %4703 = call float @dx.op.tertiary.f32(i32 46, float %4692, float %4654, float %4702)  ; FMad(a,b,c)
  %4704 = fadd fast float %4703, %4657
  %4705 = fdiv fast float 1.000000e+00, %4704
  %4706 = fmul fast float %4705, %4696
  %4707 = fmul fast float %4705, %4700
  %4708 = fmul fast float %4683, 2.000000e+00
  %4709 = fadd fast float %4708, -1.000000e+00
  %4710 = call float @dx.op.unary.f32(i32 6, float %4709)  ; FAbs(value)
  %4711 = fmul fast float %4710, 5.000000e+00
  %4712 = fadd fast float %4711, -4.000000e+00
  %4713 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4714 = fmul fast float %4713, %4599
  %4715 = fsub fast float %4674, %4706
  %4716 = fmul fast float %4677, %4715
  %4717 = fmul fast float %4714, %4716
  %4718 = fsub fast float %4706, %4674
  %4719 = fmul fast float %4677, %4718
  %4720 = fadd fast float %4719, %4717
  %4721 = fsub fast float %4707, %4675
  %4722 = fmul fast float %4678, %4721
  %4723 = fmul fast float %4720, %4634
  %4724 = fmul fast float %4722, %4634
  %4725 = fadd fast float %4723, %4683
  %4726 = fadd fast float %4724, %4684
  %4727 = fsub fast float %4705, %4673
  %4728 = fmul fast float %4727, %4634
  %4729 = fadd fast float %4728, %4673
  %4730 = fdiv fast float 1.000000e+00, %4729
  %4731 = fadd fast float %4347, -1.000000e+00
  %4732 = fsub fast float %4730, %4672
  %4733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %4734 = extractvalue %dx.types.CBufRet.f32 %4733, 2
  %4735 = fmul fast float %4734, %4730
  %4736 = fdiv fast float 1.600000e+02, %4735
  %4737 = fmul fast float %4731, %4731
  %4738 = fmul fast float %4737, 0xBFB5B17960000000
  %4739 = fmul fast float %4738, %4732
  %4740 = fmul fast float %4739, %4736
  %4741 = call float @dx.op.unary.f32(i32 21, float %4740)  ; Exp(value)
  %4742 = fmul fast float %4741, 0x3FF04B2960000000
  %4743 = fsub fast float 0x3FF04B2960000000, %4742
  %4744 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4745 = fmul fast float %4744, 4.000000e+00
  %4746 = fadd fast float %184, -5.000000e-01
  %4747 = fadd fast float %185, -5.000000e-01
  %4748 = fmul fast float %4744, 0x3FBEB851E0000000
  %4749 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4750 = fmul fast float %4749, %4746
  %4751 = fmul fast float %4749, %4747
  %4752 = fadd fast float %4725, %4750
  %4753 = fadd fast float %4726, %4751
  %4754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %4752, float %4753, float undef, float undef, i32 0, i32 0, i32 undef, float %4745)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4755 = extractvalue %dx.types.ResRet.f32 %4754, 0
  %4756 = extractvalue %dx.types.ResRet.f32 %4754, 1
  %4757 = extractvalue %dx.types.ResRet.f32 %4754, 2
  %4758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4759 = extractvalue %dx.types.CBufRet.f32 %4758, 2
  %4760 = fmul fast float %4759, %4755
  %4761 = fmul fast float %4759, %4756
  %4762 = fmul fast float %4759, %4757
  %4763 = select i1 %171, float 0.000000e+00, float %4761
  %4764 = select i1 %171, float 0.000000e+00, float %4762
  %4765 = fmul fast float %4752, 2.000000e+00
  %4766 = fmul fast float %4753, 2.000000e+00
  %4767 = fadd fast float %4765, -1.000000e+00
  %4768 = fadd fast float %4766, -1.000000e+00
  %4769 = fmul fast float %4767, %4767
  %4770 = fsub fast float 1.000000e+00, %4769
  %4771 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4772 = fsub fast float 1.000000e+00, %4771
  %4773 = fmul fast float %4772, %4599
  %4774 = fadd fast float %4773, %4771
  %4775 = fmul fast float %4768, %4768
  %4776 = fsub fast float 1.000000e+00, %4775
  %4777 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4778 = fmul fast float %4774, %4777
  %4779 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4780 = fmul fast float %4779, %4636
  br label %4781

; <label>:4781                                    ; preds = %4638, %4604, %4563
  %4782 = phi float [ %4760, %4638 ], [ 0.000000e+00, %4604 ], [ 0.000000e+00, %4563 ]
  %4783 = phi float [ %4763, %4638 ], [ 0.000000e+00, %4604 ], [ 0.000000e+00, %4563 ]
  %4784 = phi float [ %4764, %4638 ], [ 0.000000e+00, %4604 ], [ 0.000000e+00, %4563 ]
  %4785 = phi float [ %4780, %4638 ], [ 0.000000e+00, %4604 ], [ 0.000000e+00, %4563 ]
  %4786 = fcmp fast olt float %4785, 1.000000e+00
  %4787 = or i1 %4786, %4561
  %4788 = zext i1 %4787 to i32
  %4789 = fmul fast float %4785, %4546
  %4790 = fsub fast float %4785, %4789
  %4791 = fsub fast float 1.000000e+00, %4552
  %4792 = fmul fast float %4790, %4791
  %4793 = fadd fast float %4792, %4552
  %4794 = fsub fast float %4793, %4790
  %4795 = call float @dx.op.unary.f32(i32 7, float %4794)  ; Saturate(value)
  %4796 = fmul fast float %4795, %4487
  %4797 = fmul fast float %4795, %4488
  %4798 = fmul fast float %4795, %4489
  %4799 = fsub fast float -0.000000e+00, %4793
  %4800 = fmul fast float %4790, %4782
  %4801 = fmul fast float %4790, %4783
  %4802 = fmul fast float %4790, %4784
  %4803 = fadd fast float %4800, %4796
  %4804 = fadd fast float %4801, %4797
  %4805 = fadd fast float %4802, %4798
  br label %4806

; <label>:4806                                    ; preds = %4781, %4554
  %4807 = phi float [ %4552, %4554 ], [ %4799, %4781 ]
  %4808 = phi float [ %4487, %4554 ], [ %4803, %4781 ]
  %4809 = phi float [ %4488, %4554 ], [ %4804, %4781 ]
  %4810 = phi float [ %4489, %4554 ], [ %4805, %4781 ]
  %4811 = phi i32 [ %4562, %4554 ], [ %4788, %4781 ]
  %4812 = icmp eq i32 %4811, 0
  br i1 %4812, label %5372, label %4813

; <label>:4813                                    ; preds = %4806
  %4814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4815 = extractvalue %dx.types.CBufRet.f32 %4814, 2
  %4816 = extractvalue %dx.types.CBufRet.f32 %4814, 3
  %4817 = fmul fast float %4815, %67
  %4818 = fmul fast float %4816, %68
  %4819 = fptoui float %4817 to i32
  %4820 = fptoui float %4818 to i32
  %4821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4822 = extractvalue %dx.types.CBufRet.f32 %4821, 0
  %4823 = extractvalue %dx.types.CBufRet.f32 %4821, 2
  %4824 = extractvalue %dx.types.CBufRet.f32 %4821, 3
  %4825 = fadd fast float %62, -4.000000e+00
  %4826 = call float @dx.op.binary.f32(i32 35, float %4825, float 0.000000e+00)  ; FMax(a,b)
  %4827 = fadd fast float %4826, %4822
  %4828 = fmul fast float %4827, %4823
  %4829 = call float @dx.op.unary.f32(i32 23, float %4828)  ; Log(value)
  %4830 = fmul fast float %4829, %4824
  %4831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4832 = extractvalue %dx.types.CBufRet.f32 %4831, 2
  %4833 = fmul fast float %4830, %4832
  %4834 = call float @dx.op.unary.f32(i32 7, float %4833)  ; Saturate(value)
  %4835 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4836 = extractvalue %dx.types.CBufRet.i32 %4835, 1
  %4837 = add i32 %4836, -1
  %4838 = uitofp i32 %4836 to float
  %4839 = fmul fast float %4838, %4834
  %4840 = fptoui float %4839 to i32
  %4841 = call i32 @dx.op.binary.i32(i32 40, i32 %4840, i32 %4837)  ; UMin(a,b)
  %4842 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4843 = extractvalue %dx.types.CBufRet.i32 %4842, 2
  %4844 = extractvalue %dx.types.CBufRet.i32 %4842, 3
  %4845 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4820, i32 %4843, i32 %4819)  ; UMad(a,b,c)
  %4846 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4841, i32 %4844, i32 %4845)  ; UMad(a,b,c)
  %4847 = call float @dx.op.binary.f32(i32 35, float %62, float 0.000000e+00)  ; FMax(a,b)
  %4848 = fptoui float %4847 to i32
  %4849 = lshr i32 %4848, 5
  %4850 = call i32 @dx.op.binary.i32(i32 40, i32 %4849, i32 8191)  ; UMin(a,b)
  %4851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4852 = extractvalue %dx.types.CBufRet.i32 %4851, 2
  %4853 = add nsw i32 %4852, -1
  %4854 = call i32 @dx.op.binary.i32(i32 37, i32 %4853, i32 0)  ; IMax(a,b)
  %4855 = shl i32 %4850, 2
  %4856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %4855, i32 undef)  ; BufferLoad(srv,index,wot)
  %4857 = extractvalue %dx.types.ResRet.i32 %4856, 0
  %4858 = lshr i32 %4857, 16
  %4859 = and i32 %4857, 65535
  %4860 = lshr i32 %4857, 21
  %4861 = lshr i32 %4859, 5
  %4862 = call i32 @dx.op.binary.i32(i32 40, i32 %4861, i32 %4854)  ; UMin(a,b)
  %4863 = icmp ugt i32 %4860, %4862
  br i1 %4863, label %5244, label %4864

; <label>:4864                                    ; preds = %4813
  br label %4865

; <label>:4865                                    ; preds = %5233, %4864
  %4866 = phi float [ %5234, %5233 ], [ 0.000000e+00, %4864 ]
  %4867 = phi float [ %5235, %5233 ], [ 0.000000e+00, %4864 ]
  %4868 = phi float [ %5236, %5233 ], [ 0.000000e+00, %4864 ]
  %4869 = phi float [ %5237, %5233 ], [ 1.000000e+00, %4864 ]
  %4870 = phi i32 [ %5241, %5233 ], [ %4860, %4864 ]
  %4871 = phi float [ %5238, %5233 ], [ 0.000000e+00, %4864 ]
  %4872 = phi float [ %5239, %5233 ], [ 0.000000e+00, %4864 ]
  %4873 = phi float [ %5240, %5233 ], [ 0.000000e+00, %4864 ]
  %4874 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4875 = extractvalue %dx.types.CBufRet.i32 %4874, 2
  %4876 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4846, i32 %4875, i32 %4870)  ; UMad(a,b,c)
  %4877 = shl i32 %4876, 2
  %4878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %4877, i32 undef)  ; BufferLoad(srv,index,wot)
  %4879 = extractvalue %dx.types.ResRet.i32 %4878, 0
  %4880 = shl i32 %4870, 5
  %4881 = sub nsw i32 %4858, %4880
  %4882 = call i32 @dx.op.binary.i32(i32 37, i32 %4881, i32 0)  ; IMax(a,b)
  %4883 = call i32 @dx.op.binary.i32(i32 38, i32 %4882, i32 31)  ; IMin(a,b)
  %4884 = sub nsw i32 1, %4858
  %4885 = add nsw i32 %4884, %4859
  %4886 = call i32 @dx.op.binary.i32(i32 37, i32 %4885, i32 0)  ; IMax(a,b)
  %4887 = call i32 @dx.op.binary.i32(i32 38, i32 %4886, i32 32)  ; IMin(a,b)
  %4888 = and i32 %4887, 31
  %4889 = shl i32 -1, %4888
  %4890 = xor i32 %4889, -1
  %4891 = and i32 %4883, 31
  %4892 = shl i32 %4890, %4891
  %4893 = icmp eq i32 %4887, 32
  %4894 = select i1 %4893, i32 -1, i32 %4892
  %4895 = and i32 %4894, %4879
  %4896 = icmp eq i32 %4895, 0
  br i1 %4896, label %5233, label %4897

; <label>:4897                                    ; preds = %4865
  br label %4898

; <label>:4898                                    ; preds = %5007, %4897
  %4899 = phi float [ %5008, %5007 ], [ %4866, %4897 ]
  %4900 = phi float [ %5009, %5007 ], [ %4867, %4897 ]
  %4901 = phi float [ %5010, %5007 ], [ %4868, %4897 ]
  %4902 = phi float [ %5011, %5007 ], [ %4869, %4897 ]
  %4903 = phi i32 [ %4911, %5007 ], [ %4895, %4897 ]
  %4904 = phi float [ %5012, %5007 ], [ %4871, %4897 ]
  %4905 = phi float [ %5013, %5007 ], [ %4872, %4897 ]
  %4906 = phi float [ %5014, %5007 ], [ %4873, %4897 ]
  %4907 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4903)  ; FirstbitLo(value)
  %4908 = add i32 %4907, %4880
  %4909 = and i32 %4907, 31
  %4910 = shl i32 1, %4909
  %4911 = xor i32 %4910, %4903
  %4912 = mul i32 %4908, 72
  %4913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4912, i32 undef)  ; BufferLoad(srv,index,wot)
  %4914 = extractvalue %dx.types.ResRet.f32 %4913, 0
  %4915 = extractvalue %dx.types.ResRet.f32 %4913, 1
  %4916 = extractvalue %dx.types.ResRet.f32 %4913, 2
  %4917 = add i32 %4912, 12
  %4918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4917, i32 undef)  ; BufferLoad(srv,index,wot)
  %4919 = extractvalue %dx.types.ResRet.i32 %4918, 0
  %4920 = add i32 %4912, 16
  %4921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4920, i32 undef)  ; BufferLoad(srv,index,wot)
  %4922 = extractvalue %dx.types.ResRet.f32 %4921, 0
  %4923 = extractvalue %dx.types.ResRet.f32 %4921, 1
  %4924 = extractvalue %dx.types.ResRet.f32 %4921, 2
  %4925 = add i32 %4912, 28
  %4926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4925, i32 undef)  ; BufferLoad(srv,index,wot)
  %4927 = extractvalue %dx.types.ResRet.f32 %4926, 0
  %4928 = add i32 %4912, 32
  %4929 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4928, i32 undef)  ; BufferLoad(srv,index,wot)
  %4930 = extractvalue %dx.types.ResRet.f32 %4929, 0
  %4931 = extractvalue %dx.types.ResRet.f32 %4929, 1
  %4932 = extractvalue %dx.types.ResRet.f32 %4929, 2
  %4933 = extractvalue %dx.types.ResRet.f32 %4929, 3
  %4934 = add i32 %4912, 48
  %4935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4934, i32 undef)  ; BufferLoad(srv,index,wot)
  %4936 = extractvalue %dx.types.ResRet.f32 %4935, 0
  %4937 = extractvalue %dx.types.ResRet.f32 %4935, 1
  %4938 = add i32 %4912, 56
  %4939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4938, i32 undef)  ; BufferLoad(srv,index,wot)
  %4940 = extractvalue %dx.types.ResRet.f32 %4939, 0
  %4941 = extractvalue %dx.types.ResRet.f32 %4939, 1
  %4942 = add i32 %4912, 64
  %4943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4942, i32 undef)  ; BufferLoad(srv,index,wot)
  %4944 = extractvalue %dx.types.ResRet.f32 %4943, 0
  %4945 = extractvalue %dx.types.ResRet.f32 %4943, 1
  %4946 = mul i32 %4908, 60
  %4947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4946, i32 undef)  ; BufferLoad(srv,index,wot)
  %4948 = extractvalue %dx.types.ResRet.f32 %4947, 0
  %4949 = extractvalue %dx.types.ResRet.f32 %4947, 1
  %4950 = extractvalue %dx.types.ResRet.f32 %4947, 2
  %4951 = add i32 %4946, 12
  %4952 = add i32 %4946, 48
  %4953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4952, i32 undef)  ; BufferLoad(srv,index,wot)
  %4954 = extractvalue %dx.types.ResRet.f32 %4953, 0
  %4955 = extractvalue %dx.types.ResRet.f32 %4953, 1
  %4956 = extractvalue %dx.types.ResRet.f32 %4953, 2
  %4957 = and i32 %4919, 32767
  %4958 = bitcast float %4914 to i32
  %4959 = icmp eq i32 %4958, -1
  %4960 = bitcast float %4915 to i32
  %4961 = and i32 %4919, 32768
  %4962 = icmp ne i32 %4961, 0
  %4963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4964 = extractvalue %dx.types.CBufRet.f32 %4963, 0
  %4965 = extractvalue %dx.types.CBufRet.f32 %4963, 1
  %4966 = extractvalue %dx.types.CBufRet.f32 %4963, 2
  %4967 = fsub fast float %4948, %4964
  %4968 = fsub fast float %4949, %4965
  %4969 = fsub fast float %4950, %4966
  %4970 = fsub fast float %130, %4967
  %4971 = fsub fast float %131, %4968
  %4972 = fsub fast float %132, %4969
  %4973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4951, i32 undef)  ; BufferLoad(srv,index,wot)
  %4974 = extractvalue %dx.types.ResRet.f32 %4973, 0
  %4975 = extractvalue %dx.types.ResRet.f32 %4973, 1
  %4976 = extractvalue %dx.types.ResRet.f32 %4973, 2
  %4977 = call float @dx.op.dot3.f32(i32 55, float %4970, float %4971, float %4972, float %4974, float %4975, float %4976)  ; Dot3(ax,ay,az,bx,by,bz)
  %4978 = add i32 %4946, 24
  %4979 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4978, i32 undef)  ; BufferLoad(srv,index,wot)
  %4980 = extractvalue %dx.types.ResRet.f32 %4979, 0
  %4981 = extractvalue %dx.types.ResRet.f32 %4979, 1
  %4982 = extractvalue %dx.types.ResRet.f32 %4979, 2
  %4983 = call float @dx.op.dot3.f32(i32 55, float %4970, float %4971, float %4972, float %4980, float %4981, float %4982)  ; Dot3(ax,ay,az,bx,by,bz)
  %4984 = add i32 %4946, 36
  %4985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4984, i32 undef)  ; BufferLoad(srv,index,wot)
  %4986 = extractvalue %dx.types.ResRet.f32 %4985, 0
  %4987 = extractvalue %dx.types.ResRet.f32 %4985, 1
  %4988 = extractvalue %dx.types.ResRet.f32 %4985, 2
  %4989 = call float @dx.op.dot3.f32(i32 55, float %4970, float %4971, float %4972, float %4986, float %4987, float %4988)  ; Dot3(ax,ay,az,bx,by,bz)
  %4990 = call float @dx.op.unary.f32(i32 6, float %4977)  ; FAbs(value)
  %4991 = call float @dx.op.unary.f32(i32 6, float %4983)  ; FAbs(value)
  %4992 = call float @dx.op.unary.f32(i32 6, float %4989)  ; FAbs(value)
  %4993 = fsub fast float %4954, %4990
  %4994 = fsub fast float %4955, %4991
  %4995 = fsub fast float %4956, %4992
  %4996 = fmul fast float %4993, %4922
  %4997 = fmul fast float %4994, %4923
  %4998 = fmul fast float %4995, %4924
  %4999 = call float @dx.op.binary.f32(i32 36, float %4997, float %4998)  ; FMin(a,b)
  %5000 = call float @dx.op.binary.f32(i32 36, float %4996, float %4999)  ; FMin(a,b)
  %5001 = call float @dx.op.unary.f32(i32 7, float %5000)  ; Saturate(value)
  %5002 = call float @dx.op.binary.f32(i32 36, float %4902, float %5001)  ; FMin(a,b)
  %5003 = uitofp i1 %4962 to float
  %5004 = fsub fast float 1.000000e+00, %5003
  %5005 = fmul fast float %5002, %5004
  %5006 = fcmp fast ogt float %5005, 0.000000e+00
  br i1 %5006, label %5016, label %5007

; <label>:5007                                    ; preds = %5158, %4898
  %5008 = phi float [ %5222, %5158 ], [ %4899, %4898 ]
  %5009 = phi float [ %5223, %5158 ], [ %4900, %4898 ]
  %5010 = phi float [ %5224, %5158 ], [ %4901, %4898 ]
  %5011 = phi float [ %5231, %5158 ], [ %4902, %4898 ]
  %5012 = phi float [ %5228, %5158 ], [ %4904, %4898 ]
  %5013 = phi float [ %5229, %5158 ], [ %4905, %4898 ]
  %5014 = phi float [ %5230, %5158 ], [ %4906, %4898 ]
  %5015 = icmp eq i32 %4903, %4910
  br i1 %5015, label %5232, label %4898

; <label>:5016                                    ; preds = %4898
  br i1 %4959, label %5074, label %5017

; <label>:5017                                    ; preds = %5016
  %5018 = fsub fast float -0.000000e+00, %4974
  %5019 = fsub fast float -0.000000e+00, %4975
  %5020 = fsub fast float -0.000000e+00, %4976
  %5021 = call float @dx.op.dot3.f32(i32 55, float %4372, float %4373, float %4374, float %5018, float %5019, float %5020)  ; Dot3(ax,ay,az,bx,by,bz)
  %5022 = fsub fast float -0.000000e+00, %5021
  %5023 = call float @dx.op.dot3.f32(i32 55, float %4970, float %4971, float %4972, float %5018, float %5019, float %5020)  ; Dot3(ax,ay,az,bx,by,bz)
  %5024 = fadd fast float %5023, %4937
  %5025 = fadd fast float %4936, %5023
  %5026 = fsub fast float -0.000000e+00, %5025
  %5027 = fcmp ogt float %5021, -0.000000e+00
  %5028 = select i1 %5027, float %5026, float %5024
  %5029 = call float @dx.op.unary.f32(i32 6, float %5022)  ; FAbs(value)
  %5030 = fdiv fast float 1.000000e+00, %5029
  %5031 = fmul fast float %5028, %5030
  %5032 = call float @dx.op.binary.f32(i32 35, float %5031, float 0.000000e+00)  ; FMax(a,b)
  %5033 = fsub fast float -0.000000e+00, %4980
  %5034 = fsub fast float -0.000000e+00, %4981
  %5035 = fsub fast float -0.000000e+00, %4982
  %5036 = call float @dx.op.dot3.f32(i32 55, float %4372, float %4373, float %4374, float %5033, float %5034, float %5035)  ; Dot3(ax,ay,az,bx,by,bz)
  %5037 = fsub fast float -0.000000e+00, %5036
  %5038 = call float @dx.op.dot3.f32(i32 55, float %4970, float %4971, float %4972, float %5033, float %5034, float %5035)  ; Dot3(ax,ay,az,bx,by,bz)
  %5039 = fadd fast float %5038, %4941
  %5040 = fadd fast float %4940, %5038
  %5041 = fsub fast float -0.000000e+00, %5040
  %5042 = fcmp ogt float %5036, -0.000000e+00
  %5043 = select i1 %5042, float %5041, float %5039
  %5044 = call float @dx.op.unary.f32(i32 6, float %5037)  ; FAbs(value)
  %5045 = fdiv fast float 1.000000e+00, %5044
  %5046 = fmul fast float %5043, %5045
  %5047 = call float @dx.op.binary.f32(i32 35, float %5046, float 0.000000e+00)  ; FMax(a,b)
  %5048 = fsub fast float -0.000000e+00, %4986
  %5049 = fsub fast float -0.000000e+00, %4987
  %5050 = fsub fast float -0.000000e+00, %4988
  %5051 = call float @dx.op.dot3.f32(i32 55, float %4372, float %4373, float %4374, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %5052 = fsub fast float -0.000000e+00, %5051
  %5053 = call float @dx.op.dot3.f32(i32 55, float %4970, float %4971, float %4972, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %5054 = fadd fast float %5053, %4945
  %5055 = fadd fast float %4944, %5053
  %5056 = fsub fast float -0.000000e+00, %5055
  %5057 = fcmp ogt float %5051, -0.000000e+00
  %5058 = select i1 %5057, float %5056, float %5054
  %5059 = call float @dx.op.unary.f32(i32 6, float %5052)  ; FAbs(value)
  %5060 = fdiv fast float 1.000000e+00, %5059
  %5061 = fmul fast float %5058, %5060
  %5062 = call float @dx.op.binary.f32(i32 35, float %5061, float 0.000000e+00)  ; FMax(a,b)
  %5063 = call float @dx.op.binary.f32(i32 36, float %5047, float %5062)  ; FMin(a,b)
  %5064 = call float @dx.op.binary.f32(i32 36, float %5032, float %5063)  ; FMin(a,b)
  %5065 = fmul fast float %5064, %4372
  %5066 = fmul fast float %5064, %4373
  %5067 = fmul fast float %5064, %4374
  %5068 = fadd fast float %5065, %130
  %5069 = fadd fast float %5066, %131
  %5070 = fadd fast float %5067, %132
  %5071 = fsub fast float %5068, %4914
  %5072 = fsub fast float %5069, %4915
  %5073 = fsub fast float %5070, %4916
  br label %5081

; <label>:5074                                    ; preds = %5016
  %5075 = fmul fast float %4372, 8.096000e+03
  %5076 = fmul fast float %4373, 8.096000e+03
  %5077 = fmul fast float %4374, 8.096000e+03
  %5078 = fadd fast float %5075, %130
  %5079 = fadd fast float %5076, %131
  %5080 = fadd fast float %5077, %132
  br label %5081

; <label>:5081                                    ; preds = %5074, %5017
  %5082 = phi float [ %4372, %5074 ], [ %5071, %5017 ]
  %5083 = phi float [ %4373, %5074 ], [ %5072, %5017 ]
  %5084 = phi float [ %4374, %5074 ], [ %5073, %5017 ]
  %5085 = phi float [ %5078, %5074 ], [ %5068, %5017 ]
  %5086 = phi float [ %5079, %5074 ], [ %5069, %5017 ]
  %5087 = phi float [ %5080, %5074 ], [ %5070, %5017 ]
  %5088 = fcmp fast olt float %4933, 1.000000e+00
  br i1 %5088, label %5089, label %5120, !dx.controlflow.hints !71

; <label>:5089                                    ; preds = %5081
  %5090 = fmul fast float %5084, %4931
  %5091 = fmul fast float %5083, %4932
  %5092 = fsub fast float %5090, %5091
  %5093 = fmul fast float %5082, %4932
  %5094 = fmul fast float %5084, %4930
  %5095 = fsub fast float %5093, %5094
  %5096 = fmul fast float %5083, %4930
  %5097 = fmul fast float %5082, %4931
  %5098 = fsub fast float %5096, %5097
  %5099 = fmul fast float %5092, 2.000000e+00
  %5100 = fmul fast float %5095, 2.000000e+00
  %5101 = fmul fast float %5098, 2.000000e+00
  %5102 = fmul fast float %5099, %4933
  %5103 = fmul fast float %5100, %4933
  %5104 = fmul fast float %5101, %4933
  %5105 = fmul fast float %5101, %4931
  %5106 = fmul fast float %5100, %4932
  %5107 = fmul fast float %5099, %4932
  %5108 = fmul fast float %5101, %4930
  %5109 = fmul fast float %5100, %4930
  %5110 = fmul fast float %5099, %4931
  %5111 = fadd fast float %5105, %5082
  %5112 = fadd fast float %5111, %5102
  %5113 = fsub fast float %5112, %5106
  %5114 = fsub fast float %5083, %5108
  %5115 = fadd fast float %5114, %5103
  %5116 = fadd fast float %5115, %5107
  %5117 = fadd fast float %5104, %5084
  %5118 = fsub fast float %5117, %5110
  %5119 = fadd fast float %5118, %5109
  br label %5120

; <label>:5120                                    ; preds = %5089, %5081
  %5121 = phi float [ %5113, %5089 ], [ %5082, %5081 ]
  %5122 = phi float [ %5116, %5089 ], [ %5083, %5081 ]
  %5123 = phi float [ %5119, %5089 ], [ %5084, %5081 ]
  br i1 %4959, label %5155, label %5124

; <label>:5124                                    ; preds = %5120
  %5125 = fmul fast float %4347, 0x400187C840000000
  %5126 = fadd fast float %5125, 0xC00EFC2120000000
  %5127 = fmul fast float %5126, %4347
  %5128 = fadd fast float %5127, 0x3FE5D16340000000
  %5129 = fmul fast float %5128, %4347
  %5130 = fadd fast float %5129, 1.000000e+00
  %5131 = call float @dx.op.unary.f32(i32 7, float %5130)  ; Saturate(value)
  %5132 = fsub fast float %5085, %130
  %5133 = fsub fast float %5086, %131
  %5134 = fsub fast float %5087, %132
  %5135 = fsub fast float %5085, %4914
  %5136 = fsub fast float %5086, %4915
  %5137 = fsub fast float %5087, %4916
  %5138 = call float @dx.op.dot3.f32(i32 55, float %5132, float %5133, float %5134, float %5132, float %5133, float %5134)  ; Dot3(ax,ay,az,bx,by,bz)
  %5139 = call float @dx.op.dot3.f32(i32 55, float %5135, float %5136, float %5137, float %5135, float %5136, float %5137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5140 = fadd fast float %5139, 0x3EE4F8B580000000
  %5141 = fdiv fast float %5138, %5140
  %5142 = bitcast float %5141 to i32
  %5143 = ashr i32 %5142, 1
  %5144 = add nsw i32 %5143, 532487669
  %5145 = bitcast i32 %5144 to float
  %5146 = fmul fast float %5145, %5131
  %5147 = call float @dx.op.unary.f32(i32 7, float %5146)  ; Saturate(value)
  %5148 = fmul fast float %5147, 0x4009981AE0000000
  %5149 = fsub fast float 0x40111BBD80000000, %5148
  %5150 = fmul fast float %5149, %5147
  %5151 = fadd fast float %5150, 0xC0009F6020000000
  %5152 = fmul fast float %5151, %5147
  %5153 = fadd fast float %5152, 1.000000e+00
  %5154 = call float @dx.op.unary.f32(i32 7, float %5153)  ; Saturate(value)
  br label %5158

; <label>:5155                                    ; preds = %5120
  %5156 = icmp ne i32 %4960, -1
  %5157 = zext i1 %5156 to i32
  br label %5158

; <label>:5158                                    ; preds = %5155, %5124
  %5159 = phi float [ %4347, %5155 ], [ %5154, %5124 ]
  %5160 = phi i32 [ %5157, %5155 ], [ 0, %5124 ]
  %5161 = fmul float %5159, 5.000000e+00
  %5162 = fsub float 5.000000e+00, %5161
  %5163 = icmp ne i32 %5160, 0
  %5164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5165 = extractvalue %dx.types.CBufRet.f32 %5164, 3
  %5166 = fadd fast float %5165, %5162
  %5167 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5166)  ; FMax(a,b)
  %5168 = call float @dx.op.unary.f32(i32 6, float %5121)  ; FAbs(value)
  %5169 = call float @dx.op.unary.f32(i32 6, float %5122)  ; FAbs(value)
  %5170 = fadd fast float %5169, %5168
  %5171 = call float @dx.op.unary.f32(i32 6, float %5123)  ; FAbs(value)
  %5172 = fadd fast float %5170, %5171
  %5173 = fcmp fast oeq float %5172, 0.000000e+00
  %5174 = fdiv fast float 1.000000e+00, %5172
  %5175 = select i1 %5173, float 1.000000e+00, float %5174
  %5176 = fmul fast float %5175, %5121
  %5177 = fmul fast float %5175, %5122
  %5178 = call float @dx.op.unary.f32(i32 6, float %5177)  ; FAbs(value)
  %5179 = call float @dx.op.unary.f32(i32 6, float %5176)  ; FAbs(value)
  %5180 = fsub fast float 1.000000e+00, %5178
  %5181 = fsub fast float 1.000000e+00, %5179
  %5182 = fcmp fast oge float %5176, 0.000000e+00
  %5183 = fcmp fast oge float %5177, 0.000000e+00
  %5184 = select i1 %5182, float 1.000000e+00, float -1.000000e+00
  %5185 = select i1 %5183, float 1.000000e+00, float -1.000000e+00
  %5186 = fcmp fast ole float %5123, 0.000000e+00
  %5187 = fmul fast float %5184, %5180
  %5188 = fmul fast float %5185, %5181
  %5189 = select i1 %5186, float %5187, float %5176
  %5190 = select i1 %5186, float %5188, float %5177
  %5191 = fmul fast float %5189, 5.000000e-01
  %5192 = fmul fast float %5190, 5.000000e-01
  %5193 = fadd fast float %5191, 5.000000e-01
  %5194 = fadd fast float %5192, 5.000000e-01
  %5195 = uitofp i32 %4957 to float
  %5196 = call float @dx.op.binary.f32(i32 36, float %5167, float 3.000000e+00)  ; FMin(a,b)
  %5197 = fadd fast float %5196, 2.000000e+00
  %5198 = call float @dx.op.unary.f32(i32 21, float %5197)  ; Exp(value)
  %5199 = extractvalue %dx.types.CBufRet.f32 %5164, 1
  %5200 = fmul fast float %5199, %5198
  %5201 = fmul fast float %5200, 2.000000e+00
  %5202 = fsub fast float 1.000000e+00, %5201
  %5203 = fmul fast float %5193, %5202
  %5204 = fmul fast float %5194, %5202
  %5205 = fadd fast float %5203, %5200
  %5206 = fadd fast float %5204, %5200
  %5207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %26, float %5205, float %5206, float %5195, float undef, i32 0, i32 0, i32 undef, float %5167)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5208 = extractvalue %dx.types.ResRet.f32 %5207, 0
  %5209 = extractvalue %dx.types.ResRet.f32 %5207, 1
  %5210 = extractvalue %dx.types.ResRet.f32 %5207, 2
  %5211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5212 = extractvalue %dx.types.CBufRet.f32 %5211, 3
  %5213 = fmul fast float %5212, %4927
  %5214 = call float @dx.op.binary.f32(i32 36, float %4428, float %5213)  ; FMin(a,b)
  %5215 = select i1 %5163, float %5214, float %5213
  %5216 = fmul fast float %5208, %5005
  %5217 = fmul fast float %5216, %5215
  %5218 = fmul fast float %5209, %5005
  %5219 = fmul fast float %5218, %5215
  %5220 = fmul fast float %5210, %5005
  %5221 = fmul fast float %5220, %5215
  %5222 = fadd fast float %5217, %4899
  %5223 = fadd fast float %5219, %4900
  %5224 = fadd fast float %5221, %4901
  %5225 = fmul fast float %5085, %5005
  %5226 = fmul fast float %5086, %5005
  %5227 = fmul fast float %5087, %5005
  %5228 = fadd fast float %5225, %4904
  %5229 = fadd fast float %5226, %4905
  %5230 = fadd fast float %5227, %4906
  %5231 = fsub fast float %4902, %5005
  br label %5007

; <label>:5232                                    ; preds = %5007
  br label %5233

; <label>:5233                                    ; preds = %5232, %4865
  %5234 = phi float [ %4866, %4865 ], [ %5008, %5232 ]
  %5235 = phi float [ %4867, %4865 ], [ %5009, %5232 ]
  %5236 = phi float [ %4868, %4865 ], [ %5010, %5232 ]
  %5237 = phi float [ %4869, %4865 ], [ %5011, %5232 ]
  %5238 = phi float [ %4871, %4865 ], [ %5012, %5232 ]
  %5239 = phi float [ %4872, %4865 ], [ %5013, %5232 ]
  %5240 = phi float [ %4873, %4865 ], [ %5014, %5232 ]
  %5241 = add i32 %4870, 1
  %5242 = icmp ugt i32 %5241, %4862
  br i1 %5242, label %5243, label %4865, !llvm.loop !72

; <label>:5243                                    ; preds = %5233
  br label %5244

; <label>:5244                                    ; preds = %5243, %4813
  %5245 = phi float [ 0.000000e+00, %4813 ], [ %5234, %5243 ]
  %5246 = phi float [ 0.000000e+00, %4813 ], [ %5235, %5243 ]
  %5247 = phi float [ 0.000000e+00, %4813 ], [ %5236, %5243 ]
  %5248 = phi float [ 0.000000e+00, %4813 ], [ %5238, %5243 ]
  %5249 = phi float [ 0.000000e+00, %4813 ], [ %5239, %5243 ]
  %5250 = phi float [ 0.000000e+00, %4813 ], [ %5240, %5243 ]
  %5251 = call float @dx.op.dot3.f32(i32 55, float %5245, float %5246, float %5247, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5252 = select i1 %171, float 0.000000e+00, float %5245
  %5253 = select i1 %171, float %5251, float %5246
  %5254 = select i1 %171, float 0.000000e+00, float %5247
  %5255 = fcmp fast olt float %4807, 0.000000e+00
  %5256 = call float @dx.op.unary.f32(i32 6, float %4807)  ; FAbs(value)
  %5257 = fmul fast float %5256, %4808
  %5258 = fmul fast float %5256, %4809
  %5259 = fmul fast float %5256, %4810
  %5260 = select i1 %5255, float %4808, float %5257
  %5261 = select i1 %5255, float %4809, float %5258
  %5262 = select i1 %5255, float %4810, float %5259
  %5263 = fsub fast float 1.000000e+00, %5256
  %5264 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5265 = fmul fast float %5264, %5252
  %5266 = fmul fast float %5264, %5253
  %5267 = fmul fast float %5264, %5254
  %5268 = fadd fast float %5260, %5265
  %5269 = fadd fast float %5261, %5266
  %5270 = fadd fast float %5262, %5267
  %5271 = fcmp fast une float %4557, 0.000000e+00
  br i1 %5271, label %5372, label %5272

; <label>:5272                                    ; preds = %5244
  %5273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5274 = extractvalue %dx.types.CBufRet.f32 %5273, 0
  %5275 = extractvalue %dx.types.CBufRet.f32 %5273, 1
  %5276 = extractvalue %dx.types.CBufRet.f32 %5273, 2
  %5277 = extractvalue %dx.types.CBufRet.f32 %5273, 3
  %5278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5279 = extractvalue %dx.types.CBufRet.f32 %5278, 0
  %5280 = extractvalue %dx.types.CBufRet.f32 %5278, 1
  %5281 = extractvalue %dx.types.CBufRet.f32 %5278, 2
  %5282 = extractvalue %dx.types.CBufRet.f32 %5278, 3
  %5283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5284 = extractvalue %dx.types.CBufRet.f32 %5283, 0
  %5285 = extractvalue %dx.types.CBufRet.f32 %5283, 1
  %5286 = extractvalue %dx.types.CBufRet.f32 %5283, 2
  %5287 = extractvalue %dx.types.CBufRet.f32 %5283, 3
  %5288 = call float @dx.op.dot3.f32(i32 55, float %5284, float %5285, float %5286, float %4372, float %4373, float %4374)  ; Dot3(ax,ay,az,bx,by,bz)
  %5289 = call float @dx.op.dot3.f32(i32 55, float %5248, float %5249, float %5250, float %5284, float %5285, float %5286)  ; Dot3(ax,ay,az,bx,by,bz)
  %5290 = call float @dx.op.dot3.f32(i32 55, float %130, float %131, float %132, float %5284, float %5285, float %5286)  ; Dot3(ax,ay,az,bx,by,bz)
  %5291 = fadd fast float %4347, -1.000000e+00
  %5292 = fsub fast float %5289, %5290
  %5293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5294 = extractvalue %dx.types.CBufRet.f32 %5293, 2
  %5295 = fmul fast float %5294, %5289
  %5296 = fdiv fast float 1.600000e+02, %5295
  %5297 = fmul fast float %5291, %5291
  %5298 = fmul fast float %5297, 0xBFB5B17960000000
  %5299 = fmul fast float %5298, %5292
  %5300 = fmul fast float %5299, %5296
  %5301 = call float @dx.op.unary.f32(i32 21, float %5300)  ; Exp(value)
  %5302 = fmul fast float %5301, 0x3FF04B2960000000
  %5303 = fsub fast float 0x3FF04B2960000000, %5302
  %5304 = call float @dx.op.unary.f32(i32 7, float %5303)  ; Saturate(value)
  %5305 = fmul fast float %5304, 4.000000e+00
  %5306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5307 = extractvalue %dx.types.CBufRet.f32 %5306, 0
  %5308 = extractvalue %dx.types.CBufRet.f32 %5306, 1
  %5309 = extractvalue %dx.types.CBufRet.f32 %5306, 2
  %5310 = fadd fast float %5307, %5248
  %5311 = fadd fast float %5308, %5249
  %5312 = fadd fast float %5309, %5250
  %5313 = fmul fast float %5310, %5274
  %5314 = call float @dx.op.tertiary.f32(i32 46, float %5311, float %5275, float %5313)  ; FMad(a,b,c)
  %5315 = call float @dx.op.tertiary.f32(i32 46, float %5312, float %5276, float %5314)  ; FMad(a,b,c)
  %5316 = fadd fast float %5315, %5277
  %5317 = fmul fast float %5310, %5279
  %5318 = call float @dx.op.tertiary.f32(i32 46, float %5311, float %5280, float %5317)  ; FMad(a,b,c)
  %5319 = call float @dx.op.tertiary.f32(i32 46, float %5312, float %5281, float %5318)  ; FMad(a,b,c)
  %5320 = fadd fast float %5319, %5282
  %5321 = fmul fast float %5310, %5284
  %5322 = call float @dx.op.tertiary.f32(i32 46, float %5311, float %5285, float %5321)  ; FMad(a,b,c)
  %5323 = call float @dx.op.tertiary.f32(i32 46, float %5312, float %5286, float %5322)  ; FMad(a,b,c)
  %5324 = fadd fast float %5323, %5287
  %5325 = fdiv fast float %5316, %5324
  %5326 = fdiv fast float %5320, %5324
  %5327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5328 = extractvalue %dx.types.CBufRet.f32 %5327, 0
  %5329 = extractvalue %dx.types.CBufRet.f32 %5327, 1
  %5330 = fmul fast float %5328, %5325
  %5331 = fmul fast float %5329, %5326
  %5332 = extractvalue %dx.types.CBufRet.f32 %5327, 2
  %5333 = extractvalue %dx.types.CBufRet.f32 %5327, 3
  %5334 = fadd fast float %5330, %5332
  %5335 = fadd fast float %5331, %5333
  %5336 = fmul fast float %5288, 8.000000e+00
  %5337 = call float @dx.op.unary.f32(i32 7, float %5336)  ; Saturate(value)
  %5338 = fmul fast float %5334, 2.000000e+00
  %5339 = fmul fast float %5335, 2.000000e+00
  %5340 = fadd fast float %5338, -1.000000e+00
  %5341 = fadd fast float %5339, -1.000000e+00
  %5342 = fmul fast float %5340, %5340
  %5343 = fsub fast float 1.000000e+00, %5342
  %5344 = call float @dx.op.unary.f32(i32 7, float %5343)  ; Saturate(value)
  %5345 = fmul fast float %5341, %5341
  %5346 = fsub fast float 1.000000e+00, %5345
  %5347 = call float @dx.op.unary.f32(i32 7, float %5346)  ; Saturate(value)
  %5348 = fmul fast float %4557, %5344
  %5349 = fmul fast float %5348, %5347
  %5350 = call float @dx.op.unary.f32(i32 7, float %5349)  ; Saturate(value)
  %5351 = fmul fast float %5350, %5337
  %5352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %5334, float %5335, float undef, float undef, i32 0, i32 0, i32 undef, float %5305)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5353 = extractvalue %dx.types.ResRet.f32 %5352, 0
  %5354 = extractvalue %dx.types.ResRet.f32 %5352, 1
  %5355 = extractvalue %dx.types.ResRet.f32 %5352, 2
  %5356 = select i1 %171, float 0.000000e+00, float %5354
  %5357 = select i1 %171, float 0.000000e+00, float %5355
  %5358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5359 = extractvalue %dx.types.CBufRet.f32 %5358, 2
  %5360 = fmul fast float %5359, %5353
  %5361 = fmul fast float %5356, %5359
  %5362 = fmul fast float %5357, %5359
  %5363 = fsub fast float %5360, %5252
  %5364 = fsub fast float %5361, %5253
  %5365 = fsub fast float %5362, %5254
  %5366 = fmul fast float %5363, %5351
  %5367 = fmul fast float %5364, %5351
  %5368 = fmul fast float %5365, %5351
  %5369 = fadd fast float %5366, %5252
  %5370 = fadd fast float %5367, %5253
  %5371 = fadd fast float %5368, %5254
  br label %5372

; <label>:5372                                    ; preds = %5272, %5244, %4806, %4530
  %5373 = phi float [ %4808, %4806 ], [ %5268, %5244 ], [ %4487, %4530 ], [ %5369, %5272 ]
  %5374 = phi float [ %4809, %4806 ], [ %5269, %5244 ], [ %4488, %4530 ], [ %5370, %5272 ]
  %5375 = phi float [ %4810, %4806 ], [ %5270, %5244 ], [ %4489, %4530 ], [ %5371, %5272 ]
  %5376 = fmul fast float %4536, %4483
  %5377 = fmul fast float %4536, %4484
  %5378 = fmul fast float %4536, %4485
  %5379 = call float @dx.op.dot3.f32(i32 55, float %4344, float %4345, float %4346, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5380 = fcmp fast ogt float %5379, 0x3E7FF19E20000000
  %5381 = fdiv fast float 1.000000e+00, %5379
  %5382 = select i1 %5380, float %5381, float 0.000000e+00
  %5383 = fmul fast float %5382, %4344
  %5384 = fmul fast float %5382, %4345
  %5385 = fmul fast float %5382, %4346
  %5386 = fadd fast float %5383, -1.000000e+00
  %5387 = fadd fast float %5384, -1.000000e+00
  %5388 = fadd fast float %5385, -1.000000e+00
  %5389 = fmul fast float %5386, 5.000000e-01
  %5390 = fmul fast float %5387, 5.000000e-01
  %5391 = fmul fast float %5388, 5.000000e-01
  %5392 = fadd fast float %5389, 1.000000e+00
  %5393 = fadd fast float %5390, 1.000000e+00
  %5394 = fadd fast float %5391, 1.000000e+00
  %5395 = fmul fast float %5373, %4531
  %5396 = fmul fast float %5374, %4532
  %5397 = fmul fast float %5375, %4533
  %5398 = fsub fast float 1.000000e+00, %4366
  %5399 = bitcast float %5398 to i32
  %5400 = sitofp i32 %5399 to float
  %5401 = fmul fast float %5400, 5.000000e+00
  %5402 = fadd fast float %5401, 0xC1EFBF8940000000
  %5403 = fptosi float %5402 to i32
  %5404 = bitcast i32 %5403 to float
  %5405 = fmul fast float %5404, %4028
  %5406 = fmul fast float %4483, %5405
  %5407 = fmul fast float %5406, %4536
  %5408 = fmul fast float %5407, %5392
  %5409 = fmul fast float %4484, %5405
  %5410 = fmul fast float %5409, %4536
  %5411 = fmul fast float %5410, %5393
  %5412 = fmul fast float %4485, %5405
  %5413 = fmul fast float %5412, %4536
  %5414 = fmul fast float %5413, %5394
  %5415 = fmul fast float %5376, %4024
  %5416 = fmul fast float %5377, %4024
  %5417 = fmul fast float %5378, %4024
  %5418 = fadd fast float %5395, %4020
  %5419 = fadd fast float %5418, %5408
  %5420 = fmul fast float %5419, %4024
  %5421 = fadd fast float %5396, %4021
  %5422 = fadd fast float %5421, %5411
  %5423 = fmul fast float %5422, %4024
  %5424 = fadd fast float %5397, %4022
  %5425 = fadd fast float %5424, %5414
  %5426 = fmul fast float %5425, %4024
  %5427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5428 = extractvalue %dx.types.CBufRet.f32 %5427, 3
  %5429 = fcmp fast oeq float %5428, 0.000000e+00
  br i1 %5429, label %5648, label %5430

; <label>:5430                                    ; preds = %5372
  %5431 = extractvalue %dx.types.CBufRet.f32 %5427, 0
  %5432 = extractvalue %dx.types.CBufRet.f32 %5427, 1
  %5433 = extractvalue %dx.types.CBufRet.f32 %5427, 2
  %5434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5435 = extractvalue %dx.types.CBufRet.f32 %5434, 0
  %5436 = extractvalue %dx.types.CBufRet.f32 %5434, 1
  %5437 = extractvalue %dx.types.CBufRet.f32 %5434, 2
  %5438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5439 = extractvalue %dx.types.CBufRet.f32 %5438, 0
  %5440 = extractvalue %dx.types.CBufRet.f32 %5438, 1
  %5441 = call float @dx.op.dot3.f32(i32 55, float %5435, float %5436, float %5437, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5442 = select i1 %171, float %5439, float %5435
  %5443 = select i1 %171, float %5441, float %5436
  %5444 = select i1 %171, float %5440, float %5437
  %5445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5446 = extractvalue %dx.types.CBufRet.f32 %5445, 1
  %5447 = fcmp fast une float %5446, 0.000000e+00
  br i1 %5447, label %5448, label %5465

; <label>:5448                                    ; preds = %5430
  %5449 = fptoui float %67 to i32
  %5450 = fptoui float %68 to i32
  %5451 = lshr i32 %5449, 4
  %5452 = lshr i32 %5450, 4
  %5453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5454 = extractvalue %dx.types.CBufRet.f32 %5453, 0
  %5455 = fptoui float %5454 to i32
  %5456 = add i32 %5455, 15
  %5457 = lshr i32 %5456, 4
  %5458 = mul i32 %5457, %5452
  %5459 = add i32 %5458, %5451
  %5460 = shl i32 %5459, 3
  %5461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5460, i32 undef)  ; BufferLoad(srv,index,wot)
  %5462 = extractvalue %dx.types.ResRet.i32 %5461, 0
  %5463 = and i32 %5462, -268435456
  %5464 = icmp eq i32 %5463, -1342177280
  br i1 %5464, label %5470, label %5465

; <label>:5465                                    ; preds = %5448, %5430
  %5466 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %29, float %4352, float %4353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5467 = extractvalue %dx.types.ResRet.f32 %5466, 0
  %5468 = extractvalue %dx.types.ResRet.f32 %5466, 1
  %5469 = extractvalue %dx.types.ResRet.f32 %5466, 2
  br label %5470

; <label>:5470                                    ; preds = %5465, %5448
  %5471 = phi float [ %5467, %5465 ], [ 0.000000e+00, %5448 ]
  %5472 = phi float [ %5468, %5465 ], [ 0.000000e+00, %5448 ]
  %5473 = phi float [ %5469, %5465 ], [ 0.000000e+00, %5448 ]
  %5474 = call float @dx.op.binary.f32(i32 36, float %5472, float %5473)  ; FMin(a,b)
  %5475 = call float @dx.op.binary.f32(i32 36, float %5471, float %5474)  ; FMin(a,b)
  %5476 = fcmp fast ogt float %5475, 0.000000e+00
  br i1 %5476, label %5477, label %5648, !dx.controlflow.hints !74

; <label>:5477                                    ; preds = %5470
  %5478 = fmul fast float %5471, %5442
  %5479 = fmul fast float %5472, %5443
  %5480 = fmul fast float %5473, %5444
  %5481 = fsub fast float %5431, %4337
  %5482 = fsub fast float %5432, %4336
  %5483 = fsub fast float %5433, %4335
  %5484 = call float @dx.op.dot3.f32(i32 55, float %5481, float %5482, float %5483, float %5481, float %5482, float %5483)  ; Dot3(ax,ay,az,bx,by,bz)
  %5485 = call float @dx.op.unary.f32(i32 25, float %5484)  ; Rsqrt(value)
  %5486 = fmul fast float %5485, %5481
  %5487 = fmul fast float %5485, %5482
  %5488 = fmul fast float %5485, %5483
  %5489 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5432, float %5433, float %4338, float %4339, float %4340)  ; Dot3(ax,ay,az,bx,by,bz)
  %5490 = call float @dx.op.dot3.f32(i32 55, float %4334, float %4333, float %4332, float %5486, float %5487, float %5488)  ; Dot3(ax,ay,az,bx,by,bz)
  %5491 = call float @dx.op.unary.f32(i32 7, float %5489)  ; Saturate(value)
  %5492 = fmul fast float %5491, %5491
  %5493 = fmul fast float %5492, %4391
  %5494 = call float @dx.op.unary.f32(i32 7, float %5493)  ; Saturate(value)
  %5495 = fmul fast float %5494, %5491
  %5496 = call float @dx.op.dot3.f32(i32 55, float %4338, float %4339, float %4340, float %5486, float %5487, float %5488)  ; Dot3(ax,ay,az,bx,by,bz)
  %5497 = fmul fast float %5496, %5496
  %5498 = call float @dx.op.unary.f32(i32 6, float %5489)  ; FAbs(value)
  %5499 = fsub fast float 1.000000e+00, %4384
  %5500 = fmul fast float %4366, %4366
  %5501 = fmul fast float %5500, %5499
  %5502 = fadd fast float %5501, %4384
  %5503 = bitcast float %5502 to i32
  %5504 = ashr i32 %5503, 1
  %5505 = add nsw i32 %5504, 532487669
  %5506 = bitcast i32 %5505 to float
  %5507 = fadd fast float %5506, %4366
  %5508 = fmul fast float %4384, %5497
  %5509 = fsub fast float 1.000000e+00, %5497
  %5510 = fadd fast float %5509, %5508
  %5511 = fmul fast float %5498, %5498
  %5512 = fmul fast float %5511, %5499
  %5513 = fadd fast float %5512, %4384
  %5514 = bitcast float %5513 to i32
  %5515 = ashr i32 %5514, 1
  %5516 = add nsw i32 %5515, 532487669
  %5517 = bitcast i32 %5516 to float
  %5518 = fadd fast float %5517, %5498
  %5519 = fmul fast float %5510, %5510
  %5520 = fmul fast float %5519, %5507
  %5521 = fmul fast float %5520, %5518
  %5522 = fdiv fast float 0x3FF0A00000000000, %5521
  %5523 = fmul fast float %5522, %4384
  %5524 = call float @dx.op.unary.f32(i32 6, float %5490)  ; FAbs(value)
  %5525 = fsub fast float 1.000000e+00, %5524
  %5526 = bitcast float %5525 to i32
  %5527 = sitofp i32 %5526 to float
  %5528 = fmul fast float %5527, 5.000000e+00
  %5529 = fadd fast float %5528, 0xC1EFBF8940000000
  %5530 = fptosi float %5529 to i32
  %5531 = bitcast i32 %5530 to float
  %5532 = fsub fast float 1.000000e+00, %4341
  %5533 = fsub fast float 1.000000e+00, %4342
  %5534 = fsub fast float 1.000000e+00, %4364
  %5535 = fmul fast float %5531, %5532
  %5536 = fmul fast float %5531, %5533
  %5537 = fmul fast float %5531, %5534
  %5538 = fadd fast float %5535, %4341
  %5539 = fadd fast float %5536, %4342
  %5540 = fadd fast float %5537, %4364
  br i1 %4503, label %5541, label %5564

; <label>:5541                                    ; preds = %5477
  %5542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4027, float %5524, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5543 = extractvalue %dx.types.ResRet.f32 %5542, 0
  %5544 = extractvalue %dx.types.ResRet.f32 %5542, 1
  %5545 = extractvalue %dx.types.ResRet.f32 %5542, 2
  %5546 = fadd fast float %5543, -5.000000e-01
  %5547 = fadd fast float %5544, -5.000000e-01
  %5548 = fadd fast float %5545, -5.000000e-01
  %5549 = fmul fast float %4341, 4.000000e+00
  %5550 = fmul fast float %5549, %5532
  %5551 = fmul fast float %5550, %5546
  %5552 = fmul fast float %4342, 4.000000e+00
  %5553 = fmul fast float %5552, %5533
  %5554 = fmul fast float %5553, %5547
  %5555 = fmul fast float %4364, 4.000000e+00
  %5556 = fmul fast float %5555, %5534
  %5557 = fmul fast float %5556, %5548
  %5558 = fadd fast float %5551, %5538
  %5559 = fadd fast float %5554, %5539
  %5560 = fadd fast float %5557, %5540
  %5561 = call float @dx.op.unary.f32(i32 7, float %5558)  ; Saturate(value)
  %5562 = call float @dx.op.unary.f32(i32 7, float %5559)  ; Saturate(value)
  %5563 = call float @dx.op.unary.f32(i32 7, float %5560)  ; Saturate(value)
  br label %5564

; <label>:5564                                    ; preds = %5541, %5477
  %5565 = phi float [ %5561, %5541 ], [ %5538, %5477 ]
  %5566 = phi float [ %5562, %5541 ], [ %5539, %5477 ]
  %5567 = phi float [ %5563, %5541 ], [ %5540, %5477 ]
  %5568 = fmul fast float %5489, 9.843750e-01
  %5569 = fadd fast float %5568, 7.812500e-03
  %5570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5569, float %4493, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5571 = extractvalue %dx.types.ResRet.f32 %5570, 2
  %5572 = extractvalue %dx.types.ResRet.f32 %5570, 3
  %5573 = fmul fast float %5571, %4341
  %5574 = fmul fast float %5571, %4342
  %5575 = fmul fast float %5571, %4364
  %5576 = fadd fast float %5573, %5572
  %5577 = fadd fast float %5574, %5572
  %5578 = fadd fast float %5575, %5572
  br i1 %4503, label %5579, label %5602

; <label>:5579                                    ; preds = %5564
  %5580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4027, float %5489, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5581 = extractvalue %dx.types.ResRet.f32 %5580, 0
  %5582 = extractvalue %dx.types.ResRet.f32 %5580, 1
  %5583 = extractvalue %dx.types.ResRet.f32 %5580, 2
  %5584 = fadd fast float %5581, -5.000000e-01
  %5585 = fadd fast float %5582, -5.000000e-01
  %5586 = fadd fast float %5583, -5.000000e-01
  %5587 = fmul fast float %4341, 4.000000e+00
  %5588 = fmul fast float %5587, %5532
  %5589 = fmul fast float %5588, %5584
  %5590 = fmul fast float %4342, 4.000000e+00
  %5591 = fmul fast float %5590, %5533
  %5592 = fmul fast float %5591, %5585
  %5593 = fmul fast float %4364, 4.000000e+00
  %5594 = fmul fast float %5593, %5534
  %5595 = fmul fast float %5594, %5586
  %5596 = fadd fast float %5589, %5576
  %5597 = fadd fast float %5592, %5577
  %5598 = fadd fast float %5595, %5578
  %5599 = call float @dx.op.unary.f32(i32 7, float %5596)  ; Saturate(value)
  %5600 = call float @dx.op.unary.f32(i32 7, float %5597)  ; Saturate(value)
  %5601 = call float @dx.op.unary.f32(i32 7, float %5598)  ; Saturate(value)
  br label %5602

; <label>:5602                                    ; preds = %5579, %5564
  %5603 = phi float [ %5599, %5579 ], [ %5576, %5564 ]
  %5604 = phi float [ %5600, %5579 ], [ %5577, %5564 ]
  %5605 = phi float [ %5601, %5579 ], [ %5578, %5564 ]
  %5606 = call float @dx.op.binary.f32(i32 35, float %5604, float %5605)  ; FMax(a,b)
  %5607 = call float @dx.op.binary.f32(i32 35, float %5603, float %5606)  ; FMax(a,b)
  %5608 = fsub fast float 1.000000e+00, %5607
  %5609 = fmul fast float %5565, %5523
  %5610 = fmul fast float %5566, %5523
  %5611 = fmul fast float %5567, %5523
  %5612 = fsub fast float 1.000000e+00, %5490
  %5613 = bitcast float %5612 to i32
  %5614 = sitofp i32 %5613 to float
  %5615 = fmul fast float %5614, 5.000000e+00
  %5616 = fadd fast float %5615, 0xC1EFBF8940000000
  %5617 = fptosi float %5616 to i32
  %5618 = bitcast i32 %5617 to float
  %5619 = fmul fast float %5618, %4028
  %5620 = fmul fast float %5608, %5619
  %5621 = fmul fast float %5620, %5392
  %5622 = fmul fast float %5620, %5393
  %5623 = fmul fast float %5620, %5394
  %5624 = fadd fast float %5621, %5609
  %5625 = fadd fast float %5622, %5610
  %5626 = fadd fast float %5623, %5611
  %5627 = fmul fast float %5495, %5478
  %5628 = fmul fast float %5627, %5608
  %5629 = fmul fast float %5495, %5479
  %5630 = fmul fast float %5629, %5608
  %5631 = fmul fast float %5495, %5480
  %5632 = fmul fast float %5631, %5608
  %5633 = fmul fast float %5627, %5624
  %5634 = fmul fast float %5629, %5625
  %5635 = fmul fast float %5631, %5626
  %5636 = fadd fast float %5628, %5376
  %5637 = fmul fast float %5636, %4024
  %5638 = fadd fast float %5630, %5377
  %5639 = fmul fast float %5638, %4024
  %5640 = fadd fast float %5632, %5378
  %5641 = fmul fast float %5640, %4024
  %5642 = fadd fast float %5633, %5419
  %5643 = fmul fast float %5642, %4024
  %5644 = fadd fast float %5634, %5422
  %5645 = fmul fast float %5644, %4024
  %5646 = fadd fast float %5635, %5425
  %5647 = fmul fast float %5646, %4024
  br label %5648

; <label>:5648                                    ; preds = %5602, %5470, %5372
  %5649 = phi float [ %5420, %5372 ], [ %5420, %5470 ], [ %5643, %5602 ]
  %5650 = phi float [ %5423, %5372 ], [ %5423, %5470 ], [ %5645, %5602 ]
  %5651 = phi float [ %5426, %5372 ], [ %5426, %5470 ], [ %5647, %5602 ]
  %5652 = phi float [ %5415, %5372 ], [ %5415, %5470 ], [ %5637, %5602 ]
  %5653 = phi float [ %5416, %5372 ], [ %5416, %5470 ], [ %5639, %5602 ]
  %5654 = phi float [ %5417, %5372 ], [ %5417, %5470 ], [ %5641, %5602 ]
  %5655 = call float @dx.op.unary.f32(i32 24, float %4344)  ; Sqrt(value)
  %5656 = call float @dx.op.unary.f32(i32 24, float %4345)  ; Sqrt(value)
  %5657 = call float @dx.op.unary.f32(i32 24, float %4346)  ; Sqrt(value)
  %5658 = fmul fast float %5655, %5652
  %5659 = fmul fast float %5656, %5653
  %5660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5661 = extractvalue %dx.types.CBufRet.f32 %5660, 0
  br i1 %171, label %5662, label %5685

; <label>:5662                                    ; preds = %5648
  %5663 = fadd fast float %5654, %4030
  %5664 = fmul fast float %5663, %4031
  %5665 = fsub fast float 1.000000e+00, %4031
  %5666 = call float @dx.op.unary.f32(i32 7, float %5665)  ; Saturate(value)
  %5667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5668 = extractvalue %dx.types.CBufRet.f32 %5667, 3
  %5669 = fmul fast float %5668, %5666
  %5670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5671 = extractvalue %dx.types.CBufRet.f32 %5670, 0
  %5672 = fmul fast float %5671, %5398
  %5673 = extractvalue %dx.types.CBufRet.f32 %5670, 2
  %5674 = fmul fast float %5673, %4362
  %5675 = fadd fast float %5659, %5658
  %5676 = fmul fast float %5661, %5675
  %5677 = extractvalue %dx.types.CBufRet.f32 %5667, 1
  %5678 = fadd fast float %5669, %5664
  %5679 = fsub fast float %5678, %5672
  %5680 = fadd fast float %5679, %5674
  %5681 = fsub fast float %5680, %5677
  %5682 = extractvalue %dx.types.CBufRet.f32 %5667, 2
  %5683 = fmul fast float %5681, %5682
  %5684 = call float @dx.op.unary.f32(i32 7, float %5683)  ; Saturate(value)
  br label %5701

; <label>:5685                                    ; preds = %5648
  %5686 = fmul fast float %5657, %5654
  %5687 = fmul fast float %5661, %5658
  %5688 = fmul fast float %5661, %5659
  %5689 = fmul fast float %5686, %5661
  %5690 = add i32 %32, 356
  %5691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %5690, i32 undef)  ; BufferLoad(srv,index,wot)
  %5692 = extractvalue %dx.types.ResRet.i32 %5691, 0
  %5693 = and i32 %5692, 32
  %5694 = icmp eq i32 %5693, 0
  br i1 %5694, label %5701, label %5695

; <label>:5695                                    ; preds = %5685
  %5696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5697 = extractvalue %dx.types.CBufRet.f32 %5696, 0
  %5698 = fmul fast float %5697, 0x3FE99999A0000000
  %5699 = fadd fast float %5697, %5687
  %5700 = fadd fast float %5698, %5689
  br label %5701

; <label>:5701                                    ; preds = %5695, %5685, %5662
  %5702 = phi float [ %5676, %5662 ], [ %5699, %5695 ], [ %5687, %5685 ]
  %5703 = phi float [ %5684, %5662 ], [ %5688, %5695 ], [ %5688, %5685 ]
  %5704 = phi float [ 1.000000e+00, %5662 ], [ %5700, %5695 ], [ %5689, %5685 ]
  %5705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5706 = extractvalue %dx.types.CBufRet.f32 %5705, 0
  %5707 = fmul fast float %5706, %5650
  %5708 = fmul fast float %5706, %5651
  %5709 = fadd fast float %5650, %5649
  %5710 = select i1 %171, float %5709, float %5649
  %5711 = fmul float %5710, %5706
  %5712 = select i1 %171, float 0.000000e+00, float %5707
  %5713 = select i1 %171, float 0.000000e+00, float %5708
  %5714 = fmul fast float %5702, %5655
  %5715 = fmul fast float %5703, %5656
  %5716 = fmul fast float %5704, %5657
  %5717 = fadd fast float %5711, %5714
  %5718 = fadd fast float %5712, %5715
  %5719 = fadd fast float %5713, %5716
  %5720 = select i1 %171, float %5703, float %5718
  %5721 = select i1 %171, float %5704, float %5719
  %5722 = call float @dx.op.binary.f32(i32 36, float %5717, float 3.225500e+04)  ; FMin(a,b)
  %5723 = call float @dx.op.binary.f32(i32 36, float %5720, float 3.225500e+04)  ; FMin(a,b)
  %5724 = call float @dx.op.binary.f32(i32 36, float %5721, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5722)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5723)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5724)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

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
!dx.viewIdState = !{!44}
!dx.entryPoints = !{!45}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !35, !38}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 49, i32 1, i32 7, i32 0, !7}
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!30 = !{i32 23, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!31 = !{i32 24, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!32 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!33 = !{i32 26, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!34 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 48, i32 1, i32 2, i32 0, !7}
!35 = !{!36, !37}
!36 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!37 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!38 = !{!39, !40, !41, !42, !43}
!39 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!40 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!41 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!42 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!43 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!44 = !{[42 x i32] [i32 40, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!45 = !{void ()* @ps_main, !"ps_main", !46, !4, !68}
!46 = !{!47, !66, null}
!47 = !{!48, !51, !53, !55, !57, !59, !60, !61, !62, !63, !65}
!48 = !{i32 0, !"SV_Position", i8 9, i8 3, !49, i8 4, i32 1, i8 4, i32 0, i8 0, !50}
!49 = !{i32 0}
!50 = !{i32 3, i32 11}
!51 = !{i32 1, !"COLOR", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 1, i8 0, !52}
!52 = !{i32 3, i32 14}
!53 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 2, i8 0, !54}
!54 = !{i32 3, i32 3}
!55 = !{i32 3, !"NORMAL", i8 9, i8 0, !49, i8 2, i32 1, i8 3, i32 3, i8 0, !56}
!56 = !{i32 3, i32 7}
!57 = !{i32 4, !"TANGENT", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 4, i8 0, !58}
!58 = !{i32 3, i32 15}
!59 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !49, i8 2, i32 1, i8 3, i32 5, i8 0, !56}
!60 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 6, i8 0, !58}
!61 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !49, i8 2, i32 1, i8 2, i32 7, i8 0, !54}
!62 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 8, i8 0, !58}
!63 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !49, i8 1, i32 1, i8 4, i32 9, i8 0, !64}
!64 = !{i32 3, i32 13}
!65 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !49, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!66 = !{!67}
!67 = !{i32 0, !"SV_Target", i8 9, i8 16, !49, i8 0, i32 1, i8 4, i32 0, i8 0, !58}
!68 = !{i32 0, i64 24}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}

