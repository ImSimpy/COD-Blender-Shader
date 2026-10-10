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
; PACKED_TRI_DATA          0   xyzw        9     NONE    uint   x z 
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 18475dffcb597afd9de09905453662c4
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
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38 }
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
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 3
  %99 = fmul fast float %66, 2.000000e+00
  %100 = fmul fast float %99, %97
  %101 = fmul fast float %67, 2.000000e+00
  %102 = fmul fast float %101, %98
  %103 = fsub fast float 1.000000e+00, %100
  %104 = fsub fast float 1.000000e+00, %102
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %109 = fmul fast float %103, %106
  %110 = fmul fast float %103, %107
  %111 = fmul fast float %103, %108
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 1
  %115 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %116 = fmul fast float %104, %113
  %117 = fmul fast float %104, %114
  %118 = fmul fast float %104, %115
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 3
  %135 = fmul fast float %133, %66
  %136 = fmul fast float %134, %67
  %137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %138 = extractvalue %dx.types.ResRet.i32 %137, 0
  %139 = and i32 %138, 114688
  %140 = icmp ne i32 %139, 0
  %141 = select i1 %140, float %135, float 0.000000e+00
  %142 = select i1 %140, float %136, float 0.000000e+00
  %143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %29, float %141, float %142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %144 = extractvalue %dx.types.ResRet.f32 %143, 0
  %145 = fmul fast float %144, 2.550000e+02
  %146 = fptoui float %145 to i32
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.i32 %148, 3
  %150 = and i32 %149, 3
  %151 = icmp ne i32 %150, 0
  %152 = and i32 %149, 4
  %153 = icmp ne i32 %152, 0
  %154 = and i1 %151, %153
  br i1 %154, label %155, label %166

; <label>:155                                     ; preds = %0
  %156 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %157 = fmul fast float %156, %67
  %158 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %159 = fmul fast float %158, %66
  %160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %28, float %159, float %157, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %161 = extractvalue %dx.types.ResRet.f32 %160, 0
  %162 = fsub fast float 1.000000e+00, %161
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = fcmp fast olt float %162, %164
  br label %169

; <label>:166                                     ; preds = %0
  %167 = icmp eq i32 %152, 0
  %168 = and i1 %151, %167
  br label %169

; <label>:169                                     ; preds = %166, %155
  %170 = phi i1 [ %165, %155 ], [ %168, %166 ]
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %173 = fmul fast float %172, 0x3FE3C6EF40000000
  %174 = frem fast float %66, 2.560000e+02
  %175 = frem fast float %67, 2.560000e+02
  %176 = fptoui float %174 to i32
  %177 = fptoui float %175 to i32
  %178 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %176, i32 %177, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %179 = extractvalue %dx.types.ResRet.f32 %178, 0
  %180 = extractvalue %dx.types.ResRet.f32 %178, 1
  %181 = fadd fast float %179, %173
  %182 = fadd fast float %180, %173
  %183 = call float @dx.op.unary.f32(i32 22, float %181)  ; Frc(value)
  %184 = call float @dx.op.unary.f32(i32 22, float %182)  ; Frc(value)
  %185 = add i32 %32, 156
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = shl i32 %187, 4
  %189 = and i32 %188, 32752
  %190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %189)  ; LegacyF16ToF32(value)
  %191 = lshr i32 %187, 7
  %192 = and i32 %191, 32752
  %193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %192)  ; LegacyF16ToF32(value)
  %194 = lshr i32 %187, 22
  %195 = shl nuw nsw i32 %194, 5
  %196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %195)  ; LegacyF16ToF32(value)
  %197 = add i32 %32, 216
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = and i32 %199, 255
  %201 = uitofp i32 %200 to float
  %202 = fmul fast float %201, 0x3F70101020000000
  %203 = lshr i32 %199, 8
  %204 = and i32 %203, 255
  %205 = uitofp i32 %204 to float
  %206 = fmul fast float %205, 0x3F70101020000000
  %207 = lshr i32 %199, 16
  %208 = and i32 %207, 255
  %209 = uitofp i32 %208 to float
  %210 = fmul fast float %209, 0x3F70101020000000
  %211 = add i32 %32, 36
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = and i32 %213, 65535
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = lshr i32 %213, 16
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = add i32 %32, 288
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = and i32 %220, 65535
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = lshr i32 %220, 16
  %224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %223)  ; LegacyF16ToF32(value)
  %225 = fmul fast float %222, 0x3F50624DE0000000
  %226 = fmul fast float %224, 0x3F50624DE0000000
  %227 = add i32 %32, 172
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = shl i32 %229, 4
  %231 = and i32 %230, 32752
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = lshr i32 %229, 7
  %234 = and i32 %233, 32752
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = lshr i32 %229, 22
  %237 = shl nuw nsw i32 %236, 5
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = add i32 %32, 232
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = and i32 %241, 255
  %243 = uitofp i32 %242 to float
  %244 = fmul fast float %243, 0x3F70101020000000
  %245 = lshr i32 %241, 8
  %246 = and i32 %245, 255
  %247 = uitofp i32 %246 to float
  %248 = fmul fast float %247, 0x3F70101020000000
  %249 = lshr i32 %241, 16
  %250 = and i32 %249, 255
  %251 = uitofp i32 %250 to float
  %252 = fmul fast float %251, 0x3F70101020000000
  %253 = add i32 %32, 52
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = and i32 %255, 65535
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %255, 16
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = add i32 %32, 304
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = and i32 %262, 65535
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = lshr i32 %262, 16
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = fmul fast float %264, 0x3F50624DE0000000
  %268 = fmul fast float %266, 0x3F50624DE0000000
  %269 = add i32 %32, 188
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = shl i32 %271, 4
  %273 = and i32 %272, 32752
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = lshr i32 %271, 7
  %276 = and i32 %275, 32752
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %271, 22
  %279 = shl nuw nsw i32 %278, 5
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = add i32 %32, 248
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = and i32 %283, 255
  %285 = uitofp i32 %284 to float
  %286 = fmul fast float %285, 0x3F70101020000000
  %287 = lshr i32 %283, 8
  %288 = and i32 %287, 255
  %289 = uitofp i32 %288 to float
  %290 = fmul fast float %289, 0x3F70101020000000
  %291 = lshr i32 %283, 16
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = add i32 %32, 68
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 65535
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %297, 16
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = add i32 %32, 320
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 65535
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %304, 16
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = fmul fast float %306, 0x3F50624DE0000000
  %310 = fmul fast float %308, 0x3F50624DE0000000
  %311 = add i32 %32, 204
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = shl i32 %313, 4
  %315 = and i32 %314, 32752
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %313, 7
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %313, 22
  %321 = shl nuw nsw i32 %320, 5
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = add i32 %32, 264
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = and i32 %325, 255
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3F70101020000000
  %329 = lshr i32 %325, 8
  %330 = and i32 %329, 255
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %331, 0x3F70101020000000
  %333 = lshr i32 %325, 16
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = add i32 %32, 84
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %339, 16
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = add i32 %32, 336
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 65535
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %346, 16
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = fmul fast float %348, 0x3F50624DE0000000
  %352 = fmul fast float %350, 0x3F50624DE0000000
  %353 = add i32 %32, 348
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 32
  %357 = icmp eq i32 %356, 0
  %358 = and i32 %355, 64
  %359 = icmp eq i32 %358, 0
  %360 = and i32 %355, 128
  %361 = icmp eq i32 %360, 0
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = and i32 %363, 2
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %379, label %366

; <label>:366                                     ; preds = %169
  %367 = add i32 %32, 472
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = add i32 %369, 0
  %371 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %370, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %372 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %371, %dx.types.Handle %63, float %54, float %55, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %373 = extractvalue %dx.types.ResRet.f32 %372, 0
  %374 = extractvalue %dx.types.ResRet.f32 %372, 1
  %375 = extractvalue %dx.types.ResRet.f32 %372, 2
  %376 = fmul fast float %373, %56
  %377 = fmul fast float %374, %57
  %378 = fmul fast float %375, %58
  br label %379

; <label>:379                                     ; preds = %366, %169
  %380 = phi float [ %58, %169 ], [ %378, %366 ]
  %381 = phi float [ %57, %169 ], [ %377, %366 ]
  %382 = phi float [ %56, %169 ], [ %376, %366 ]
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = and i32 %384, 2
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %406, label %387

; <label>:387                                     ; preds = %379
  %388 = add i32 %32, 44
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 1
  %392 = icmp ne i32 %391, 0
  %393 = select i1 %392, float %382, float 1.000000e+00
  %394 = add i32 %32, 60
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = and i32 %396, 1
  %398 = icmp ne i32 %397, 0
  %399 = select i1 %398, float %381, float 1.000000e+00
  %400 = add i32 %32, 76
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = and i32 %402, 1
  %404 = icmp ne i32 %403, 0
  %405 = select i1 %404, float %380, float 1.000000e+00
  br label %406

; <label>:406                                     ; preds = %387, %379
  %407 = phi float [ %380, %379 ], [ %405, %387 ]
  %408 = phi float [ %381, %379 ], [ %399, %387 ]
  %409 = phi float [ %382, %379 ], [ %393, %387 ]
  %410 = lshr i32 %384, 20
  %411 = and i32 %410, 3
  %412 = add nuw nsw i32 %411, 1
  %413 = add i32 %32, 24
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = add i32 %32, 28
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = or i32 %418, %415
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %879, label %421

; <label>:421                                     ; preds = %406
  %422 = and i32 %415, 262144
  %423 = icmp ne i32 %422, 0
  %424 = select i1 %423, float %34, float 1.000000e+00
  %425 = select i1 %423, float %35, float 0.000000e+00
  %426 = select i1 %423, float %36, float 0.000000e+00
  %427 = select i1 %423, float %37, float 1.000000e+00
  %428 = select i1 %423, float %38, float %54
  %429 = select i1 %423, float %39, float %55
  %430 = add i32 %32, 284
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = lshr i32 %432, 16
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = fmul fast float %434, 0x3F50624DE0000000
  %436 = add i32 %32, 88
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = lshr i32 %438, 16
  %440 = and i32 %439, 255
  %441 = lshr i32 %438, 24
  %442 = add i32 %32, 292
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 65535
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = lshr i32 %444, 16
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = add i32 %32, 32
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = lshr i32 %451, 22
  %453 = shl nuw nsw i32 %452, 5
  %454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %453)  ; LegacyF16ToF32(value)
  %455 = shl i32 %451, 4
  %456 = and i32 %455, 32752
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = lshr i32 %451, 7
  %459 = and i32 %458, 32752
  %460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %459)  ; LegacyF16ToF32(value)
  %461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %462 = extractvalue %dx.types.CBufRet.f32 %461, 3
  %463 = fmul fast float %462, 1.000000e+03
  %464 = fmul fast float %225, %463
  %465 = call float @dx.op.unary.f32(i32 22, float %464)  ; Frc(value)
  %466 = fadd fast float %465, %215
  %467 = fmul fast float %226, %463
  %468 = call float @dx.op.unary.f32(i32 22, float %467)  ; Frc(value)
  %469 = fadd fast float %468, %217
  %470 = fmul fast float %435, %463
  %471 = call float @dx.op.unary.f32(i32 22, float %470)  ; Frc(value)
  %472 = fmul fast float %471, 0x401921FB60000000
  %473 = fadd fast float %472, %454
  %474 = call float @dx.op.unary.f32(i32 13, float %473)  ; Sin(value)
  %475 = call float @dx.op.unary.f32(i32 12, float %473)  ; Cos(value)
  %476 = fsub fast float -0.000000e+00, %474
  %477 = fadd fast float %428, -5.000000e-01
  %478 = fadd fast float %429, -5.000000e-01
  %479 = fmul fast float %446, %477
  %480 = fmul fast float %448, %478
  %481 = fadd fast float %479, 5.000000e-01
  %482 = fadd fast float %480, 5.000000e-01
  %483 = fmul fast float %457, %481
  %484 = fmul fast float %460, %482
  %485 = fmul fast float %475, %483
  %486 = call float @dx.op.tertiary.f32(i32 46, float %476, float %484, float %485)  ; FMad(a,b,c)
  %487 = fmul fast float %474, %483
  %488 = call float @dx.op.tertiary.f32(i32 46, float %475, float %484, float %487)  ; FMad(a,b,c)
  %489 = fadd fast float %466, %486
  %490 = fadd fast float %469, %488
  %491 = icmp ugt i32 %440, 1
  %492 = icmp ugt i32 %438, 33554431
  %493 = or i1 %492, %491
  br i1 %493, label %494, label %519

; <label>:494                                     ; preds = %421
  %495 = add i32 %32, 228
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = lshr i32 %497, 16
  %499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %498)  ; LegacyF16ToF32(value)
  %500 = fmul fast float %462, %499
  %501 = call float @dx.op.unary.f32(i32 22, float %500)  ; Frc(value)
  %502 = mul nuw nsw i32 %440, %441
  %503 = uitofp i32 %502 to float
  %504 = fmul fast float %501, %503
  %505 = call float @dx.op.unary.f32(i32 27, float %504)  ; Round_ni(value)
  %506 = fptoui float %505 to i32
  %507 = urem i32 %506, %440
  %508 = udiv i32 %506, %441
  %509 = call float @dx.op.unary.f32(i32 22, float %489)  ; Frc(value)
  %510 = call float @dx.op.unary.f32(i32 22, float %490)  ; Frc(value)
  %511 = uitofp i32 %507 to float
  %512 = uitofp i32 %508 to float
  %513 = fadd fast float %509, %511
  %514 = fadd fast float %510, %512
  %515 = uitofp i32 %440 to float
  %516 = uitofp i32 %441 to float
  %517 = fdiv fast float %513, %515
  %518 = fdiv fast float %514, %516
  br label %519

; <label>:519                                     ; preds = %494, %421
  %520 = phi float [ %517, %494 ], [ %489, %421 ]
  %521 = phi float [ %518, %494 ], [ %490, %421 ]
  %522 = and i32 %415, 16
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %720, label %524

; <label>:524                                     ; preds = %519
  %525 = add i32 %32, 360
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = add i32 %527, 0
  %529 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %528, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %530 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %529, %dx.types.Handle %62, float %520, float %521, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  %532 = extractvalue %dx.types.ResRet.f32 %530, 1
  %533 = extractvalue %dx.types.ResRet.f32 %530, 2
  %534 = extractvalue %dx.types.ResRet.f32 %530, 3
  %535 = and i32 %438, 255
  %536 = uitofp i32 %535 to float
  %537 = lshr i32 %438, 8
  %538 = and i32 %537, 255
  %539 = uitofp i32 %538 to float
  %540 = fmul fast float %534, %536
  %541 = fadd fast float %540, %539
  %542 = fmul fast float %541, 0x3F70101000000000
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = and i32 %544, 512
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %555, label %547

; <label>:547                                     ; preds = %524
  %548 = add i32 %32, 440
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = add i32 %550, 0
  %552 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %551, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %553 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %552, %dx.types.Handle %63, float %520, float %521, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %554 = extractvalue %dx.types.ResRet.f32 %553, 0
  br label %555

; <label>:555                                     ; preds = %547, %524
  %556 = phi float [ %554, %547 ], [ 1.000000e+00, %524 ]
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = and i32 %558, 33554432
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %667, label %561

; <label>:561                                     ; preds = %555
  %562 = add i32 %32, 224
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = and i32 %564, 65535
  %566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %565)  ; LegacyF16ToF32(value)
  %567 = lshr i32 %564, 16
  %568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %567)  ; LegacyF16ToF32(value)
  %569 = add i32 %32, 228
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = and i32 %571, 65535
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = lshr i32 %575, 24
  %577 = uitofp i32 %576 to float
  %578 = fmul fast float %577, 0x3F70101020000000
  %579 = and i32 %575, 255
  %580 = uitofp i32 %579 to float
  %581 = fmul fast float %580, 0x3F70101020000000
  %582 = lshr i32 %575, 8
  %583 = and i32 %582, 255
  %584 = uitofp i32 %583 to float
  %585 = fmul fast float %584, 0x3F70101020000000
  %586 = lshr i32 %575, 16
  %587 = and i32 %586, 255
  %588 = uitofp i32 %587 to float
  %589 = fmul fast float %588, 0x3F70101020000000
  %590 = add i32 %32, 220
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = lshr i32 %592, 24
  %594 = uitofp i32 %593 to float
  %595 = fmul fast float %594, 0x3F70101020000000
  %596 = and i32 %592, 255
  %597 = uitofp i32 %596 to float
  %598 = fmul fast float %597, 0x3F70101020000000
  %599 = lshr i32 %592, 8
  %600 = and i32 %599, 255
  %601 = uitofp i32 %600 to float
  %602 = fmul fast float %601, 0x3F70101020000000
  %603 = lshr i32 %592, 16
  %604 = and i32 %603, 255
  %605 = uitofp i32 %604 to float
  %606 = fmul fast float %605, 0x3F70101020000000
  %607 = bitcast float %531 to i32
  %608 = ashr i32 %607, 1
  %609 = sub nsw i32 1597463174, %608
  %610 = bitcast i32 %609 to float
  %611 = fmul fast float %531, 5.000000e-01
  %612 = fmul fast float %610, %610
  %613 = fmul fast float %612, %611
  %614 = fsub fast float 1.500000e+00, %613
  %615 = fmul fast float %610, %531
  %616 = fmul fast float %615, %614
  %617 = bitcast float %532 to i32
  %618 = ashr i32 %617, 1
  %619 = sub nsw i32 1597463174, %618
  %620 = bitcast i32 %619 to float
  %621 = fmul fast float %532, 5.000000e-01
  %622 = fmul fast float %620, %620
  %623 = fmul fast float %622, %621
  %624 = fsub fast float 1.500000e+00, %623
  %625 = fmul fast float %620, %532
  %626 = fmul fast float %625, %624
  %627 = bitcast float %533 to i32
  %628 = ashr i32 %627, 1
  %629 = sub nsw i32 1597463174, %628
  %630 = bitcast i32 %629 to float
  %631 = fmul fast float %533, 5.000000e-01
  %632 = fmul fast float %630, %630
  %633 = fmul fast float %632, %631
  %634 = fsub fast float 1.500000e+00, %633
  %635 = fmul fast float %630, %533
  %636 = fmul fast float %635, %634
  %637 = fsub fast float %616, %598
  %638 = fsub fast float %626, %602
  %639 = fsub fast float %636, %606
  %640 = fmul fast float %637, %566
  %641 = fmul fast float %638, %568
  %642 = fmul fast float %639, %573
  %643 = fadd fast float %640, %581
  %644 = fadd fast float %641, %585
  %645 = fadd fast float %642, %589
  %646 = call float @dx.op.unary.f32(i32 7, float %643)  ; Saturate(value)
  %647 = call float @dx.op.unary.f32(i32 7, float %644)  ; Saturate(value)
  %648 = call float @dx.op.unary.f32(i32 7, float %645)  ; Saturate(value)
  %649 = fmul fast float %646, %646
  %650 = fmul fast float %647, %647
  %651 = fmul fast float %648, %648
  %652 = fsub fast float %649, %531
  %653 = fsub fast float %650, %532
  %654 = fsub fast float %651, %533
  %655 = fmul fast float %652, %556
  %656 = fmul fast float %653, %556
  %657 = fmul fast float %654, %556
  %658 = fadd fast float %655, %531
  %659 = fadd fast float %656, %532
  %660 = fadd fast float %657, %533
  %661 = fadd fast float %578, %542
  %662 = fsub fast float %661, %595
  %663 = call float @dx.op.unary.f32(i32 7, float %662)  ; Saturate(value)
  %664 = fsub fast float %663, %542
  %665 = fmul fast float %664, %556
  %666 = fadd fast float %665, %542
  br label %720

; <label>:667                                     ; preds = %555
  %668 = and i32 %558, 134217728
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %704, label %670

; <label>:670                                     ; preds = %667
  %671 = call float @dx.op.unary.f32(i32 24, float %202)  ; Sqrt(value)
  %672 = call float @dx.op.unary.f32(i32 24, float %206)  ; Sqrt(value)
  %673 = call float @dx.op.unary.f32(i32 24, float %210)  ; Sqrt(value)
  %674 = fadd fast float %671, -5.000000e-01
  %675 = fadd fast float %672, -5.000000e-01
  %676 = fadd fast float %673, -5.000000e-01
  %677 = fmul fast float %674, %556
  %678 = fmul fast float %675, %556
  %679 = fmul fast float %676, %556
  %680 = fadd fast float %677, 5.000000e-01
  %681 = fadd fast float %678, 5.000000e-01
  %682 = fadd fast float %679, 5.000000e-01
  %683 = call float @dx.op.unary.f32(i32 24, float %531)  ; Sqrt(value)
  %684 = call float @dx.op.unary.f32(i32 24, float %532)  ; Sqrt(value)
  %685 = call float @dx.op.unary.f32(i32 24, float %533)  ; Sqrt(value)
  %686 = fmul fast float %680, 2.000000e+00
  %687 = fsub fast float 1.000000e+00, %686
  %688 = fmul fast float %687, %683
  %689 = fadd fast float %688, %686
  %690 = fmul fast float %689, %683
  %691 = fmul fast float %681, 2.000000e+00
  %692 = fsub fast float 1.000000e+00, %691
  %693 = fmul fast float %692, %684
  %694 = fadd fast float %693, %691
  %695 = fmul fast float %694, %684
  %696 = fmul fast float %682, 2.000000e+00
  %697 = fsub fast float 1.000000e+00, %696
  %698 = fmul fast float %697, %685
  %699 = fadd fast float %698, %696
  %700 = fmul fast float %699, %685
  %701 = fmul fast float %690, %690
  %702 = fmul fast float %695, %695
  %703 = fmul fast float %700, %700
  br label %720

; <label>:704                                     ; preds = %667
  %705 = fmul fast float %202, %202
  %706 = fmul fast float %206, %206
  %707 = fmul fast float %210, %210
  %708 = fadd fast float %705, -1.000000e+00
  %709 = fadd fast float %706, -1.000000e+00
  %710 = fadd fast float %707, -1.000000e+00
  %711 = fmul fast float %556, %708
  %712 = fmul fast float %556, %709
  %713 = fmul fast float %556, %710
  %714 = fadd fast float %711, 1.000000e+00
  %715 = fadd fast float %712, 1.000000e+00
  %716 = fadd fast float %713, 1.000000e+00
  %717 = fmul fast float %714, %531
  %718 = fmul fast float %715, %532
  %719 = fmul fast float %716, %533
  br label %720

; <label>:720                                     ; preds = %704, %670, %561, %519
  %721 = phi float [ %666, %561 ], [ %542, %670 ], [ %542, %704 ], [ 0x3FA23C0BE0000000, %519 ]
  %722 = phi float [ %658, %561 ], [ %701, %670 ], [ %717, %704 ], [ 1.000000e+00, %519 ]
  %723 = phi float [ %659, %561 ], [ %702, %670 ], [ %718, %704 ], [ 1.000000e+00, %519 ]
  %724 = phi float [ %660, %561 ], [ %703, %670 ], [ %719, %704 ], [ 1.000000e+00, %519 ]
  %725 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %726 = extractvalue %dx.types.CBufRet.i32 %725, 1
  %727 = and i32 %726, 1
  %728 = icmp ne i32 %727, 0
  %729 = add i32 %32, 356
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = and i32 %731, 32
  %733 = icmp ne i32 %732, 0
  %734 = and i1 %728, %733
  %735 = select i1 %734, float 1.000000e+00, float %722
  %736 = select i1 %734, float 0x3FD3333340000000, float %723
  %737 = select i1 %734, float 0x3FD3333340000000, float %724
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = and i32 %739, 32
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %814, label %742

; <label>:742                                     ; preds = %720
  %743 = add i32 %32, 92
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = add i32 %32, 376
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %746, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = add i32 %748, 0
  %750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %749, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %751 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %750, %dx.types.Handle %62, float %520, float %521, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %752 = extractvalue %dx.types.ResRet.f32 %751, 0
  %753 = extractvalue %dx.types.ResRet.f32 %751, 1
  %754 = extractvalue %dx.types.ResRet.f32 %751, 2
  %755 = extractvalue %dx.types.ResRet.f32 %751, 3
  %756 = and i32 %745, 255
  %757 = uitofp i32 %756 to float
  %758 = lshr i32 %745, 8
  %759 = and i32 %758, 255
  %760 = uitofp i32 %759 to float
  %761 = lshr i32 %745, 16
  %762 = and i32 %761, 255
  %763 = uitofp i32 %762 to float
  %764 = fmul fast float %763, 0x3F70101000000000
  %765 = fmul fast float %752, %757
  %766 = fadd fast float %765, %760
  %767 = fmul fast float %766, 0x3F70101000000000
  %768 = fadd fast float %753, -5.000000e-01
  %769 = fadd fast float %755, -5.000000e-01
  %770 = fmul fast float %768, %764
  %771 = fmul fast float %769, %764
  %772 = fadd fast float %770, 5.000000e-01
  %773 = fadd fast float %771, 5.000000e-01
  %774 = fmul fast float %772, 2.000000e+00
  %775 = fadd fast float %774, -1.000000e+00
  %776 = fmul fast float %773, 2.000000e+00
  %777 = fadd fast float %776, -1.000000e+00
  %778 = fadd fast float %775, %777
  %779 = fmul fast float %778, 5.000000e-01
  %780 = fsub fast float %775, %777
  %781 = fmul fast float %780, 5.000000e-01
  %782 = call float @dx.op.unary.f32(i32 6, float %779)  ; FAbs(value)
  %783 = fsub fast float 1.000000e+00, %782
  %784 = call float @dx.op.unary.f32(i32 6, float %781)  ; FAbs(value)
  %785 = fsub fast float %783, %784
  %786 = call float @dx.op.dot3.f32(i32 55, float %779, float %781, float %785, float %779, float %781, float %785)  ; Dot3(ax,ay,az,bx,by,bz)
  %787 = call float @dx.op.unary.f32(i32 25, float %786)  ; Rsqrt(value)
  %788 = fmul fast float %779, %787
  %789 = fmul fast float %781, %787
  %790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %791 = extractvalue %dx.types.ResRet.i32 %790, 0
  %792 = and i32 %791, 67108864
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %810, label %794

; <label>:794                                     ; preds = %742
  %795 = add i32 %32, 280
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %795, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = and i32 %797, 65535
  %799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %798)  ; LegacyF16ToF32(value)
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = and i32 %801, 65535
  %803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %802)  ; LegacyF16ToF32(value)
  %804 = lshr i32 %797, 16
  %805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %804)  ; LegacyF16ToF32(value)
  %806 = fsub fast float %767, %805
  %807 = fmul fast float %806, %799
  %808 = fadd fast float %807, %803
  %809 = call float @dx.op.unary.f32(i32 7, float %808)  ; Saturate(value)
  br label %810

; <label>:810                                     ; preds = %794, %742
  %811 = phi float [ %809, %794 ], [ %767, %742 ]
  %812 = call float @dx.op.dot2.f32(i32 54, float %788, float %789, float %424, float %425)  ; Dot2(ax,ay,bx,by)
  %813 = call float @dx.op.dot2.f32(i32 54, float %788, float %789, float %426, float %427)  ; Dot2(ax,ay,bx,by)
  br label %814

; <label>:814                                     ; preds = %810, %720
  %815 = phi float [ %811, %810 ], [ 0x3FD6666660000000, %720 ]
  %816 = phi float [ %812, %810 ], [ 0.000000e+00, %720 ]
  %817 = phi float [ %813, %810 ], [ 0.000000e+00, %720 ]
  %818 = phi float [ %754, %810 ], [ 1.000000e+00, %720 ]
  %819 = add i32 %32, 160
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = lshr i32 %821, 22
  %823 = shl nuw nsw i32 %822, 5
  %824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %823)  ; LegacyF16ToF32(value)
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = and i32 %826, 64
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %862, label %829

; <label>:829                                     ; preds = %814
  %830 = add i32 %32, 392
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = add i32 %832, 0
  %834 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %833, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = and i32 %836, 131072
  %838 = icmp eq i32 %837, 0
  %839 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %834, %dx.types.Handle %62, float %520, float %521, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %840 = extractvalue %dx.types.ResRet.f32 %839, 0
  %841 = extractvalue %dx.types.ResRet.f32 %839, 1
  %842 = extractvalue %dx.types.ResRet.f32 %839, 2
  %843 = fmul fast float %840, %190
  %844 = fmul fast float %841, %193
  %845 = fmul fast float %842, %196
  br i1 %838, label %852, label %846

; <label>:846                                     ; preds = %829
  %847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %848 = extractvalue %dx.types.CBufRet.f32 %847, 0
  %849 = fmul fast float %848, %843
  %850 = fmul fast float %848, %844
  %851 = fmul fast float %848, %845
  br label %852

; <label>:852                                     ; preds = %846, %829
  %853 = phi float [ %849, %846 ], [ %843, %829 ]
  %854 = phi float [ %850, %846 ], [ %844, %829 ]
  %855 = phi float [ %851, %846 ], [ %845, %829 ]
  %856 = fmul fast float %853, %824
  %857 = select i1 %170, float %856, float %853
  %858 = call float @dx.op.dot3.f32(i32 55, float %857, float %854, float %855, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %859 = select i1 %170, float 0.000000e+00, float %853
  %860 = select i1 %170, float %858, float %854
  %861 = select i1 %170, float 0.000000e+00, float %855
  br label %862

; <label>:862                                     ; preds = %852, %814
  %863 = phi float [ %859, %852 ], [ 0.000000e+00, %814 ]
  %864 = phi float [ %860, %852 ], [ 0.000000e+00, %814 ]
  %865 = phi float [ %861, %852 ], [ 0.000000e+00, %814 ]
  %866 = add i32 %32, 96
  %867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %866, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.i32 %867, 0
  %869 = and i32 %868, 255
  %870 = uitofp i32 %869 to float
  %871 = lshr i32 %868, 8
  %872 = and i32 %871, 255
  %873 = uitofp i32 %872 to float
  %874 = call float @dx.op.dot3.f32(i32 55, float %735, float %736, float %737, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %875 = fmul fast float %873, %874
  %876 = fadd fast float %875, %870
  %877 = fmul fast float %876, 0x3F70101020000000
  %878 = call float @dx.op.unary.f32(i32 7, float %877)  ; Saturate(value)
  br label %879

; <label>:879                                     ; preds = %862, %406
  %880 = phi float [ 0.000000e+00, %406 ], [ %816, %862 ]
  %881 = phi float [ 0.000000e+00, %406 ], [ %817, %862 ]
  %882 = phi float [ 0.000000e+00, %406 ], [ %735, %862 ]
  %883 = phi float [ 0.000000e+00, %406 ], [ %736, %862 ]
  %884 = phi float [ 0.000000e+00, %406 ], [ %737, %862 ]
  %885 = phi float [ 0.000000e+00, %406 ], [ %863, %862 ]
  %886 = phi float [ 0.000000e+00, %406 ], [ %864, %862 ]
  %887 = phi float [ 0.000000e+00, %406 ], [ %865, %862 ]
  %888 = phi float [ 0.000000e+00, %406 ], [ %721, %862 ]
  %889 = phi float [ 0.000000e+00, %406 ], [ 1.000000e+00, %862 ]
  %890 = phi float [ 0.000000e+00, %406 ], [ %815, %862 ]
  %891 = phi float [ 0.000000e+00, %406 ], [ %818, %862 ]
  %892 = phi float [ 0.000000e+00, %406 ], [ %878, %862 ]
  br i1 %357, label %1734, label %893

; <label>:893                                     ; preds = %879
  %894 = icmp ult i32 %412, 2
  %895 = add i32 %32, 40
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = add i32 %32, 44
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = or i32 %900, %897
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %1734, label %903

; <label>:903                                     ; preds = %893
  %904 = and i32 %897, 262144
  %905 = icmp ne i32 %904, 0
  %906 = select i1 %905, float %34, float 1.000000e+00
  %907 = select i1 %905, float %35, float 0.000000e+00
  %908 = select i1 %905, float %36, float 0.000000e+00
  %909 = select i1 %905, float %37, float 1.000000e+00
  %910 = select i1 %905, float %38, float %54
  %911 = select i1 %905, float %39, float %55
  %912 = add i32 %32, 300
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = lshr i32 %914, 16
  %916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %915)  ; LegacyF16ToF32(value)
  %917 = fmul fast float %916, 0x3F50624DE0000000
  %918 = add i32 %32, 104
  %919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %920 = extractvalue %dx.types.ResRet.i32 %919, 0
  %921 = lshr i32 %920, 16
  %922 = and i32 %921, 255
  %923 = lshr i32 %920, 24
  %924 = add i32 %32, 308
  %925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.i32 %925, 0
  %927 = and i32 %926, 65535
  %928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %927)  ; LegacyF16ToF32(value)
  %929 = lshr i32 %926, 16
  %930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %929)  ; LegacyF16ToF32(value)
  %931 = add i32 %32, 48
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = lshr i32 %933, 22
  %935 = shl nuw nsw i32 %934, 5
  %936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %935)  ; LegacyF16ToF32(value)
  %937 = shl i32 %933, 4
  %938 = and i32 %937, 32752
  %939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %938)  ; LegacyF16ToF32(value)
  %940 = lshr i32 %933, 7
  %941 = and i32 %940, 32752
  %942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %941)  ; LegacyF16ToF32(value)
  %943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %944 = extractvalue %dx.types.CBufRet.f32 %943, 3
  %945 = fmul fast float %944, 1.000000e+03
  %946 = fmul fast float %267, %945
  %947 = call float @dx.op.unary.f32(i32 22, float %946)  ; Frc(value)
  %948 = fadd fast float %947, %257
  %949 = fmul fast float %268, %945
  %950 = call float @dx.op.unary.f32(i32 22, float %949)  ; Frc(value)
  %951 = fadd fast float %950, %259
  %952 = fmul fast float %917, %945
  %953 = call float @dx.op.unary.f32(i32 22, float %952)  ; Frc(value)
  %954 = fmul fast float %953, 0x401921FB60000000
  %955 = fadd fast float %954, %936
  %956 = call float @dx.op.unary.f32(i32 13, float %955)  ; Sin(value)
  %957 = call float @dx.op.unary.f32(i32 12, float %955)  ; Cos(value)
  %958 = fsub fast float -0.000000e+00, %956
  %959 = fadd fast float %910, -5.000000e-01
  %960 = fadd fast float %911, -5.000000e-01
  %961 = fmul fast float %928, %959
  %962 = fmul fast float %930, %960
  %963 = fadd fast float %961, 5.000000e-01
  %964 = fadd fast float %962, 5.000000e-01
  %965 = fmul fast float %939, %963
  %966 = fmul fast float %942, %964
  %967 = fmul fast float %957, %965
  %968 = call float @dx.op.tertiary.f32(i32 46, float %958, float %966, float %967)  ; FMad(a,b,c)
  %969 = fmul fast float %956, %965
  %970 = call float @dx.op.tertiary.f32(i32 46, float %957, float %966, float %969)  ; FMad(a,b,c)
  %971 = fadd fast float %948, %968
  %972 = fadd fast float %951, %970
  %973 = icmp ugt i32 %922, 1
  %974 = icmp ugt i32 %920, 33554431
  %975 = or i1 %974, %973
  br i1 %975, label %976, label %1001

; <label>:976                                     ; preds = %903
  %977 = add i32 %32, 244
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = lshr i32 %979, 16
  %981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %980)  ; LegacyF16ToF32(value)
  %982 = fmul fast float %944, %981
  %983 = call float @dx.op.unary.f32(i32 22, float %982)  ; Frc(value)
  %984 = mul nuw nsw i32 %922, %923
  %985 = uitofp i32 %984 to float
  %986 = fmul fast float %983, %985
  %987 = call float @dx.op.unary.f32(i32 27, float %986)  ; Round_ni(value)
  %988 = fptoui float %987 to i32
  %989 = urem i32 %988, %922
  %990 = udiv i32 %988, %923
  %991 = call float @dx.op.unary.f32(i32 22, float %971)  ; Frc(value)
  %992 = call float @dx.op.unary.f32(i32 22, float %972)  ; Frc(value)
  %993 = uitofp i32 %989 to float
  %994 = uitofp i32 %990 to float
  %995 = fadd fast float %991, %993
  %996 = fadd fast float %992, %994
  %997 = uitofp i32 %922 to float
  %998 = uitofp i32 %923 to float
  %999 = fdiv fast float %995, %997
  %1000 = fdiv fast float %996, %998
  br label %1001

; <label>:1001                                    ; preds = %976, %903
  %1002 = phi float [ %999, %976 ], [ %971, %903 ]
  %1003 = phi float [ %1000, %976 ], [ %972, %903 ]
  %1004 = and i32 %897, 16777216
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1115, label %1006

; <label>:1006                                    ; preds = %1001
  %1007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1008 = extractvalue %dx.types.CBufRet.f32 %1007, 0
  %1009 = extractvalue %dx.types.CBufRet.f32 %1007, 1
  %1010 = extractvalue %dx.types.CBufRet.f32 %1007, 2
  %1011 = fadd fast float %1008, %129
  %1012 = fadd fast float %1009, %130
  %1013 = fadd fast float %1010, %131
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 0
  %1016 = call float @dx.op.unary.f32(i32 7, float %1015)  ; Saturate(value)
  %1017 = icmp eq i32 %33, 65535
  br i1 %1017, label %1112, label %1018

; <label>:1018                                    ; preds = %1006
  %1019 = lshr i32 %33, 1
  %1020 = shl i32 %1019, 2
  %1021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.i32 %1021, 0
  %1023 = and i32 %33, 1
  %1024 = icmp ne i32 %1023, 0
  %1025 = lshr i32 %1022, 16
  %1026 = and i32 %1022, 65535
  %1027 = select i1 %1024, i32 %1025, i32 %1026
  %1028 = icmp eq i32 %1027, 65535
  br i1 %1028, label %1108, label %1029

; <label>:1029                                    ; preds = %1018
  %1030 = mul nuw nsw i32 %1027, 40
  %1031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1030, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.f32 %1031, 0
  %1033 = extractvalue %dx.types.ResRet.f32 %1031, 1
  %1034 = extractvalue %dx.types.ResRet.f32 %1031, 2
  %1035 = add nuw nsw i32 %1030, 12
  %1036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.ResRet.f32 %1036, 1
  %1039 = extractvalue %dx.types.ResRet.f32 %1036, 2
  %1040 = add nuw nsw i32 %1030, 24
  %1041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1040, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.f32 %1041, 0
  %1043 = extractvalue %dx.types.ResRet.f32 %1041, 1
  %1044 = extractvalue %dx.types.ResRet.f32 %1041, 2
  %1045 = add nuw nsw i32 %1030, 36
  %1046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1045, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.f32 %1046, 0
  %1048 = fsub fast float %1011, %1032
  %1049 = fsub fast float %1012, %1033
  %1050 = fsub fast float %1013, %1034
  %1051 = fmul fast float %1047, %1048
  %1052 = fmul fast float %1047, %1049
  %1053 = fmul fast float %1047, %1050
  %1054 = call float @dx.op.unary.f32(i32 27, float %1051)  ; Round_ni(value)
  %1055 = call float @dx.op.unary.f32(i32 27, float %1052)  ; Round_ni(value)
  %1056 = call float @dx.op.unary.f32(i32 27, float %1053)  ; Round_ni(value)
  %1057 = fadd fast float %1054, 5.000000e-01
  %1058 = fadd fast float %1055, 5.000000e-01
  %1059 = fadd fast float %1056, 5.000000e-01
  %1060 = fmul fast float %1057, %1037
  %1061 = fmul fast float %1058, %1038
  %1062 = fmul fast float %1059, %1039
  %1063 = shl i32 %33, 2
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = add i32 %1065, 0
  %1067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1066, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1068 = call float @dx.op.unary.f32(i32 22, float %1060)  ; Frc(value)
  %1069 = call float @dx.op.unary.f32(i32 22, float %1061)  ; Frc(value)
  %1070 = call float @dx.op.unary.f32(i32 22, float %1062)  ; Frc(value)
  %1071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1067, %dx.types.Handle %29, float %1068, float %1069, float %1070, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1072 = extractvalue %dx.types.ResRet.f32 %1071, 0
  %1073 = extractvalue %dx.types.ResRet.f32 %1071, 1
  %1074 = extractvalue %dx.types.ResRet.f32 %1071, 2
  %1075 = fmul fast float %1072, 1.023000e+03
  %1076 = fmul fast float %1073, 1.023000e+03
  %1077 = fmul fast float %1074, 1.023000e+03
  %1078 = fadd fast float %1075, 5.000000e-01
  %1079 = fadd fast float %1076, 5.000000e-01
  %1080 = fadd fast float %1077, 5.000000e-01
  %1081 = call float @dx.op.unary.f32(i32 27, float %1078)  ; Round_ni(value)
  %1082 = call float @dx.op.unary.f32(i32 27, float %1079)  ; Round_ni(value)
  %1083 = call float @dx.op.unary.f32(i32 27, float %1080)  ; Round_ni(value)
  %1084 = fsub fast float %1051, %1054
  %1085 = fsub fast float %1052, %1055
  %1086 = fsub fast float %1053, %1056
  %1087 = fmul fast float %1084, 7.500000e-01
  %1088 = fmul fast float %1085, 7.500000e-01
  %1089 = fmul fast float %1086, 7.500000e-01
  %1090 = fadd fast float %1054, 1.250000e-01
  %1091 = fadd fast float %1090, %1087
  %1092 = fadd fast float %1091, %1081
  %1093 = fadd fast float %1055, 1.250000e-01
  %1094 = fadd fast float %1093, %1088
  %1095 = fadd fast float %1094, %1082
  %1096 = fadd fast float %1056, 1.250000e-01
  %1097 = fadd fast float %1096, %1089
  %1098 = fadd fast float %1097, %1083
  %1099 = fmul fast float %1092, %1042
  %1100 = fmul fast float %1095, %1043
  %1101 = fmul fast float %1098, %1044
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = add i32 %1103, 0
  %1105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1104, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1105, %dx.types.Handle %27, float %1099, float %1100, float %1101, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1107 = extractvalue %dx.types.ResRet.f32 %1106, 0
  br label %1108

; <label>:1108                                    ; preds = %1029, %1018
  %1109 = phi float [ %1107, %1029 ], [ -1.000000e+00, %1018 ]
  %1110 = fadd fast float %1109, %1016
  %1111 = call float @dx.op.unary.f32(i32 7, float %1110)  ; Saturate(value)
  br label %1112

; <label>:1112                                    ; preds = %1108, %1006
  %1113 = phi float [ %1111, %1108 ], [ %1016, %1006 ]
  %1114 = fmul fast float %1113, %409
  br label %1115

; <label>:1115                                    ; preds = %1112, %1001
  %1116 = phi float [ %1114, %1112 ], [ %409, %1001 ]
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = and i32 %1118, 256
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1167, label %1121

; <label>:1121                                    ; preds = %1115
  %1122 = add i32 %32, 428
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1122, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = add i32 %1124, 0
  %1126 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1125, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1127 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1126, %dx.types.Handle %63, float %1002, float %1003, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1128 = extractvalue %dx.types.ResRet.f32 %1127, 0
  %1129 = add i32 %32, 116
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = shl i32 %1131, 4
  %1133 = and i32 %1132, 32752
  %1134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1133)  ; LegacyF16ToF32(value)
  %1135 = lshr i32 %1131, 7
  %1136 = and i32 %1135, 32752
  %1137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1136)  ; LegacyF16ToF32(value)
  %1138 = fsub fast float 1.000000e+00, %1116
  %1139 = call float @dx.op.binary.f32(i32 35, float %1138, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1140 = bitcast float %1116 to i32
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

; <label>:1167                                    ; preds = %1121, %1115
  %1168 = phi float [ %1166, %1121 ], [ %1116, %1115 ]
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = and i32 %1170, 128
  %1172 = icmp eq i32 %1171, 0
  br i1 %1172, label %1189, label %1173

; <label>:1173                                    ; preds = %1167
  %1174 = add i32 %32, 412
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = add i32 %1176, 0
  %1178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1177, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1179 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1178, %dx.types.Handle %63, float %1002, float %1003, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1180 = extractvalue %dx.types.ResRet.f32 %1179, 0
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %1191, label %1734, label %1192

; <label>:1192                                    ; preds = %1189
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = and i32 %1194, 16
  %1196 = icmp eq i32 %1195, 0
  br i1 %1196, label %1395, label %1197

; <label>:1197                                    ; preds = %1192
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = add i32 %32, 364
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = add i32 %1202, 0
  %1204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1203, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1205 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1204, %dx.types.Handle %62, float %1002, float %1003, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = and i32 %1219, 512
  %1221 = icmp eq i32 %1220, 0
  br i1 %1221, label %1230, label %1222

; <label>:1222                                    ; preds = %1197
  %1223 = add i32 %32, 444
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = add i32 %1225, 0
  %1227 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1226, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1228 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1227, %dx.types.Handle %63, float %1002, float %1003, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1229 = extractvalue %dx.types.ResRet.f32 %1228, 0
  br label %1230

; <label>:1230                                    ; preds = %1222, %1197
  %1231 = phi float [ %1229, %1222 ], [ 1.000000e+00, %1197 ]
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.i32 %1232, 0
  %1234 = and i32 %1233, 33554432
  %1235 = icmp eq i32 %1234, 0
  br i1 %1235, label %1342, label %1236

; <label>:1236                                    ; preds = %1230
  %1237 = add i32 %32, 240
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = and i32 %1239, 65535
  %1241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1240)  ; LegacyF16ToF32(value)
  %1242 = lshr i32 %1239, 16
  %1243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1242)  ; LegacyF16ToF32(value)
  %1244 = add i32 %32, 244
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = and i32 %1246, 65535
  %1248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1247)  ; LegacyF16ToF32(value)
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1265 = add i32 %32, 236
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1346 = call float @dx.op.unary.f32(i32 24, float %244)  ; Sqrt(value)
  %1347 = call float @dx.op.unary.f32(i32 24, float %248)  ; Sqrt(value)
  %1348 = call float @dx.op.unary.f32(i32 24, float %252)  ; Sqrt(value)
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
  %1380 = fmul fast float %244, %244
  %1381 = fmul fast float %248, %248
  %1382 = fmul fast float %252, %252
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
  %1400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1401 = extractvalue %dx.types.CBufRet.i32 %1400, 1
  %1402 = and i32 %1401, 1
  %1403 = icmp ne i32 %1402, 0
  %1404 = add i32 %32, 356
  %1405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1404, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.i32 %1405, 0
  %1407 = and i32 %1406, 32
  %1408 = icmp ne i32 %1407, 0
  %1409 = and i1 %1403, %1408
  %1410 = select i1 %1409, float 1.000000e+00, float %1397
  %1411 = select i1 %1409, float 0x3FD3333340000000, float %1398
  %1412 = select i1 %1409, float 0x3FD3333340000000, float %1399
  %1413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1414 = extractvalue %dx.types.ResRet.i32 %1413, 0
  %1415 = and i32 %1414, 32
  %1416 = icmp eq i32 %1415, 0
  br i1 %1416, label %1489, label %1417

; <label>:1417                                    ; preds = %1395
  %1418 = add i32 %32, 108
  %1419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1418, i32 undef)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.i32 %1419, 0
  %1421 = add i32 %32, 380
  %1422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1421, i32 undef)  ; BufferLoad(srv,index,wot)
  %1423 = extractvalue %dx.types.ResRet.i32 %1422, 0
  %1424 = add i32 %1423, 0
  %1425 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1424, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1426 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1425, %dx.types.Handle %62, float %1002, float %1003, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = and i32 %1466, 67108864
  %1468 = icmp eq i32 %1467, 0
  br i1 %1468, label %1485, label %1469

; <label>:1469                                    ; preds = %1417
  %1470 = add i32 %32, 296
  %1471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1470, i32 undef)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.i32 %1471, 0
  %1473 = and i32 %1472, 65535
  %1474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1473)  ; LegacyF16ToF32(value)
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1487 = call float @dx.op.dot2.f32(i32 54, float %1463, float %1464, float %906, float %907)  ; Dot2(ax,ay,bx,by)
  %1488 = call float @dx.op.dot2.f32(i32 54, float %1463, float %1464, float %908, float %909)  ; Dot2(ax,ay,bx,by)
  br label %1489

; <label>:1489                                    ; preds = %1485, %1395
  %1490 = phi float [ %1486, %1485 ], [ 0x3FD6666660000000, %1395 ]
  %1491 = phi float [ %1487, %1485 ], [ 0.000000e+00, %1395 ]
  %1492 = phi float [ %1488, %1485 ], [ 0.000000e+00, %1395 ]
  %1493 = phi float [ %1429, %1485 ], [ 1.000000e+00, %1395 ]
  %1494 = add i32 %32, 176
  %1495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1494, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.i32 %1495, 0
  %1497 = lshr i32 %1496, 22
  %1498 = shl nuw nsw i32 %1497, 5
  %1499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1498)  ; LegacyF16ToF32(value)
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = and i32 %1501, 64
  %1503 = icmp eq i32 %1502, 0
  br i1 %1503, label %1537, label %1504

; <label>:1504                                    ; preds = %1489
  %1505 = add i32 %32, 396
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = add i32 %1507, 0
  %1509 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1508, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = and i32 %1511, 131072
  %1513 = icmp eq i32 %1512, 0
  %1514 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1509, %dx.types.Handle %62, float %1002, float %1003, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1515 = extractvalue %dx.types.ResRet.f32 %1514, 0
  %1516 = extractvalue %dx.types.ResRet.f32 %1514, 1
  %1517 = extractvalue %dx.types.ResRet.f32 %1514, 2
  %1518 = fmul fast float %1515, %232
  %1519 = fmul fast float %1516, %235
  %1520 = fmul fast float %1517, %238
  br i1 %1513, label %1527, label %1521

; <label>:1521                                    ; preds = %1504
  %1522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1532 = select i1 %170, float %1531, float %1528
  %1533 = call float @dx.op.dot3.f32(i32 55, float %1532, float %1529, float %1530, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1534 = select i1 %170, float 0.000000e+00, float %1528
  %1535 = select i1 %170, float %1533, float %1529
  %1536 = select i1 %170, float 0.000000e+00, float %1530
  br label %1537

; <label>:1537                                    ; preds = %1527, %1489
  %1538 = phi float [ %1534, %1527 ], [ 0.000000e+00, %1489 ]
  %1539 = phi float [ %1535, %1527 ], [ 0.000000e+00, %1489 ]
  %1540 = phi float [ %1536, %1527 ], [ 0.000000e+00, %1489 ]
  %1541 = add i32 %32, 112
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = and i32 %1543, 255
  %1545 = uitofp i32 %1544 to float
  %1546 = lshr i32 %1543, 8
  %1547 = and i32 %1546, 255
  %1548 = uitofp i32 %1547 to float
  %1549 = call float @dx.op.dot3.f32(i32 55, float %1410, float %1411, float %1412, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1550 = fmul fast float %1548, %1549
  %1551 = fadd fast float %1550, %1545
  %1552 = fmul fast float %1551, 0x3F70101020000000
  %1553 = call float @dx.op.unary.f32(i32 7, float %1552)  ; Saturate(value)
  br i1 %894, label %1554, label %1562

; <label>:1554                                    ; preds = %1537
  %1555 = fsub fast float 1.000000e+00, %1190
  %1556 = fmul fast float %1555, %882
  %1557 = fmul fast float %1555, %883
  %1558 = fmul fast float %1555, %884
  %1559 = fmul fast float %1555, %885
  %1560 = fmul fast float %1555, %886
  %1561 = fmul fast float %1555, %887
  br label %1562

; <label>:1562                                    ; preds = %1554, %1537
  %1563 = phi float [ %1556, %1554 ], [ %882, %1537 ]
  %1564 = phi float [ %1557, %1554 ], [ %883, %1537 ]
  %1565 = phi float [ %1558, %1554 ], [ %884, %1537 ]
  %1566 = phi float [ %1559, %1554 ], [ %885, %1537 ]
  %1567 = phi float [ %1560, %1554 ], [ %886, %1537 ]
  %1568 = phi float [ %1561, %1554 ], [ %887, %1537 ]
  %1569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1570 = extractvalue %dx.types.ResRet.i32 %1569, 0
  %1571 = and i32 %1570, 3
  %1572 = icmp eq i32 %1571, 3
  br i1 %1572, label %1651, label %1573

; <label>:1573                                    ; preds = %1562
  %1574 = and i32 %1570, 16
  %1575 = icmp ne i32 %1574, 0
  %1576 = select i1 %1575, float %1190, float 0.000000e+00
  %1577 = icmp eq i32 %1571, 0
  br i1 %1577, label %1578, label %1606

; <label>:1578                                    ; preds = %1573
  %1579 = and i32 %1570, 64
  %1580 = icmp ne i32 %1579, 0
  %1581 = select i1 %1580, float %1190, float 0.000000e+00
  %1582 = fsub fast float %1410, %1563
  %1583 = fsub fast float %1411, %1564
  %1584 = fsub fast float %1412, %1565
  %1585 = fmul fast float %1576, %1582
  %1586 = fmul fast float %1576, %1583
  %1587 = fmul fast float %1576, %1584
  %1588 = fadd fast float %1585, %1563
  %1589 = fadd fast float %1586, %1564
  %1590 = fadd fast float %1587, %1565
  %1591 = fsub fast float %1396, %888
  %1592 = fmul fast float %1576, %1591
  %1593 = fadd fast float %1592, %888
  %1594 = fsub fast float %1538, %1566
  %1595 = fsub fast float %1539, %1567
  %1596 = fsub fast float %1540, %1568
  %1597 = fmul fast float %1581, %1594
  %1598 = fmul fast float %1581, %1595
  %1599 = fmul fast float %1581, %1596
  %1600 = fadd fast float %1597, %1566
  %1601 = fadd fast float %1598, %1567
  %1602 = fadd fast float %1599, %1568
  %1603 = fsub fast float %1553, %892
  %1604 = fmul fast float %1576, %1603
  %1605 = fadd fast float %1604, %892
  br label %1651

; <label>:1606                                    ; preds = %1573
  %1607 = icmp eq i32 %1571, 1
  br i1 %1607, label %1608, label %1621

; <label>:1608                                    ; preds = %1606
  %1609 = fadd fast float %1410, -1.000000e+00
  %1610 = fadd fast float %1411, -1.000000e+00
  %1611 = fadd fast float %1412, -1.000000e+00
  %1612 = fmul fast float %1576, %1609
  %1613 = fmul fast float %1576, %1610
  %1614 = fmul fast float %1576, %1611
  %1615 = fadd fast float %1612, 1.000000e+00
  %1616 = fadd fast float %1613, 1.000000e+00
  %1617 = fadd fast float %1614, 1.000000e+00
  %1618 = fmul fast float %1615, %1563
  %1619 = fmul fast float %1616, %1564
  %1620 = fmul fast float %1617, %1565
  br label %1651

; <label>:1621                                    ; preds = %1606
  %1622 = icmp eq i32 %1571, 2
  br i1 %1622, label %1623, label %1651

; <label>:1623                                    ; preds = %1621
  %1624 = call float @dx.op.unary.f32(i32 24, float %1410)  ; Sqrt(value)
  %1625 = call float @dx.op.unary.f32(i32 24, float %1411)  ; Sqrt(value)
  %1626 = call float @dx.op.unary.f32(i32 24, float %1412)  ; Sqrt(value)
  %1627 = fadd fast float %1624, -5.000000e-01
  %1628 = fadd fast float %1625, -5.000000e-01
  %1629 = fadd fast float %1626, -5.000000e-01
  %1630 = fmul fast float %1627, %1576
  %1631 = fmul fast float %1628, %1576
  %1632 = fmul fast float %1629, %1576
  %1633 = fadd fast float %1630, 5.000000e-01
  %1634 = fadd fast float %1631, 5.000000e-01
  %1635 = fadd fast float %1632, 5.000000e-01
  %1636 = fmul fast float %1633, 2.000000e+00
  %1637 = fsub fast float 1.000000e+00, %1636
  %1638 = fmul fast float %1637, %1563
  %1639 = fadd fast float %1638, %1636
  %1640 = fmul fast float %1639, %1563
  %1641 = fmul fast float %1634, 2.000000e+00
  %1642 = fsub fast float 1.000000e+00, %1641
  %1643 = fmul fast float %1642, %1564
  %1644 = fadd fast float %1643, %1641
  %1645 = fmul fast float %1644, %1564
  %1646 = fmul fast float %1635, 2.000000e+00
  %1647 = fsub fast float 1.000000e+00, %1646
  %1648 = fmul fast float %1647, %1565
  %1649 = fadd fast float %1648, %1646
  %1650 = fmul fast float %1649, %1565
  br label %1651

; <label>:1651                                    ; preds = %1623, %1621, %1608, %1578, %1562
  %1652 = phi float [ %1563, %1562 ], [ %1640, %1623 ], [ %1563, %1621 ], [ %1618, %1608 ], [ %1588, %1578 ]
  %1653 = phi float [ %1564, %1562 ], [ %1645, %1623 ], [ %1564, %1621 ], [ %1619, %1608 ], [ %1589, %1578 ]
  %1654 = phi float [ %1565, %1562 ], [ %1650, %1623 ], [ %1565, %1621 ], [ %1620, %1608 ], [ %1590, %1578 ]
  %1655 = phi float [ %1566, %1562 ], [ %1566, %1623 ], [ %1566, %1621 ], [ %1566, %1608 ], [ %1600, %1578 ]
  %1656 = phi float [ %1567, %1562 ], [ %1567, %1623 ], [ %1567, %1621 ], [ %1567, %1608 ], [ %1601, %1578 ]
  %1657 = phi float [ %1568, %1562 ], [ %1568, %1623 ], [ %1568, %1621 ], [ %1568, %1608 ], [ %1602, %1578 ]
  %1658 = phi float [ %888, %1562 ], [ %888, %1623 ], [ %888, %1621 ], [ %888, %1608 ], [ %1593, %1578 ]
  %1659 = phi float [ %892, %1562 ], [ %892, %1623 ], [ %892, %1621 ], [ %892, %1608 ], [ %1605, %1578 ]
  %1660 = and i32 %1570, 12
  %1661 = icmp eq i32 %1660, 12
  br i1 %1661, label %1734, label %1662

; <label>:1662                                    ; preds = %1651
  %1663 = and i32 %1570, 2097184
  %1664 = icmp eq i32 %1663, 2097184
  %1665 = select i1 %1664, float %1190, float 0.000000e+00
  %1666 = and i32 %1570, 4194336
  %1667 = icmp eq i32 %1666, 4194336
  %1668 = select i1 %1667, float %1190, float 0.000000e+00
  %1669 = and i32 %1570, 8388640
  %1670 = icmp eq i32 %1669, 8388640
  %1671 = select i1 %1670, float %1190, float 0.000000e+00
  %1672 = icmp eq i32 %1660, 0
  br i1 %1672, label %1673, label %1686

; <label>:1673                                    ; preds = %1662
  %1674 = fsub fast float %1491, %880
  %1675 = fsub fast float %1492, %881
  %1676 = fmul fast float %1665, %1674
  %1677 = fmul fast float %1665, %1675
  %1678 = fadd fast float %1676, %880
  %1679 = fadd fast float %1677, %881
  %1680 = fsub fast float %1493, %891
  %1681 = fmul fast float %1668, %1680
  %1682 = fadd fast float %1681, %891
  %1683 = fsub fast float %1490, %890
  %1684 = fmul fast float %1671, %1683
  %1685 = fadd fast float %1684, %890
  br label %1734

; <label>:1686                                    ; preds = %1662
  %1687 = icmp eq i32 %1660, 4
  br i1 %1687, label %1688, label %1720

; <label>:1688                                    ; preds = %1686
  %1689 = fmul fast float %1665, %1491
  %1690 = fmul fast float %1665, %1492
  %1691 = fadd fast float %1689, %880
  %1692 = fadd fast float %1690, %881
  %1693 = call float @dx.op.binary.f32(i32 36, float %891, float %1493)  ; FMin(a,b)
  %1694 = fsub fast float %1693, %891
  %1695 = fmul fast float %1694, %1668
  %1696 = fadd fast float %1695, %891
  %1697 = fadd fast float %1490, %890
  %1698 = fmul fast float %1697, 0x3FF337FAE0000000
  %1699 = fmul fast float %890, %890
  %1700 = fmul fast float %1490, %1490
  %1701 = fadd fast float %1700, %1699
  %1702 = fmul fast float %1701, 0x3FE5152B00000000
  %1703 = fmul fast float %890, 0xBFCC1F85E0000000
  %1704 = fmul fast float %1703, %1490
  %1705 = fadd fast float %1704, 0xBFE1363700000000
  %1706 = fadd fast float %1705, %1698
  %1707 = fsub fast float %1706, %1702
  %1708 = fmul fast float %1697, 0x3FBA6F0D00000000
  %1709 = fmul fast float %1701, 0x3FD0432880000000
  %1710 = fmul fast float %890, 0xBFEF110800000000
  %1711 = fmul fast float %1710, %1490
  %1712 = fadd fast float %1711, 1.000000e+00
  %1713 = fsub fast float %1712, %1708
  %1714 = fadd fast float %1713, %1709
  %1715 = fdiv fast float %1707, %1714
  %1716 = call float @dx.op.unary.f32(i32 7, float %1715)  ; Saturate(value)
  %1717 = fsub fast float %1716, %890
  %1718 = fmul fast float %1717, %1671
  %1719 = fadd fast float %1718, %890
  br label %1734

; <label>:1720                                    ; preds = %1686
  %1721 = icmp eq i32 %1660, 8
  br i1 %1721, label %1722, label %1734

; <label>:1722                                    ; preds = %1720
  %1723 = fmul fast float %1665, %1491
  %1724 = fmul fast float %1665, %1492
  %1725 = fadd fast float %1723, %880
  %1726 = fadd fast float %1724, %881
  %1727 = call float @dx.op.binary.f32(i32 36, float %891, float %1493)  ; FMin(a,b)
  %1728 = fsub fast float %1727, %891
  %1729 = fmul fast float %1728, %1668
  %1730 = fadd fast float %1729, %891
  %1731 = fsub fast float %1490, %890
  %1732 = fmul fast float %1671, %1731
  %1733 = fadd fast float %1732, %890
  br label %1734

; <label>:1734                                    ; preds = %1722, %1720, %1688, %1673, %1651, %1189, %893, %879
  %1735 = phi float [ %880, %1651 ], [ %880, %1189 ], [ %880, %879 ], [ %1725, %1722 ], [ %880, %1720 ], [ %1691, %1688 ], [ %1678, %1673 ], [ %880, %893 ]
  %1736 = phi float [ %881, %1651 ], [ %881, %1189 ], [ %881, %879 ], [ %1726, %1722 ], [ %881, %1720 ], [ %1692, %1688 ], [ %1679, %1673 ], [ %881, %893 ]
  %1737 = phi float [ %1652, %1651 ], [ %882, %1189 ], [ %882, %879 ], [ %1652, %1722 ], [ %1652, %1720 ], [ %1652, %1688 ], [ %1652, %1673 ], [ %882, %893 ]
  %1738 = phi float [ %1653, %1651 ], [ %883, %1189 ], [ %883, %879 ], [ %1653, %1722 ], [ %1653, %1720 ], [ %1653, %1688 ], [ %1653, %1673 ], [ %883, %893 ]
  %1739 = phi float [ %1654, %1651 ], [ %884, %1189 ], [ %884, %879 ], [ %1654, %1722 ], [ %1654, %1720 ], [ %1654, %1688 ], [ %1654, %1673 ], [ %884, %893 ]
  %1740 = phi float [ %1655, %1651 ], [ %885, %1189 ], [ %885, %879 ], [ %1655, %1722 ], [ %1655, %1720 ], [ %1655, %1688 ], [ %1655, %1673 ], [ %885, %893 ]
  %1741 = phi float [ %1656, %1651 ], [ %886, %1189 ], [ %886, %879 ], [ %1656, %1722 ], [ %1656, %1720 ], [ %1656, %1688 ], [ %1656, %1673 ], [ %886, %893 ]
  %1742 = phi float [ %1657, %1651 ], [ %887, %1189 ], [ %887, %879 ], [ %1657, %1722 ], [ %1657, %1720 ], [ %1657, %1688 ], [ %1657, %1673 ], [ %887, %893 ]
  %1743 = phi float [ %1658, %1651 ], [ %888, %1189 ], [ %888, %879 ], [ %1658, %1722 ], [ %1658, %1720 ], [ %1658, %1688 ], [ %1658, %1673 ], [ %888, %893 ]
  %1744 = phi float [ %890, %1651 ], [ %890, %1189 ], [ %890, %879 ], [ %1733, %1722 ], [ %890, %1720 ], [ %1719, %1688 ], [ %1685, %1673 ], [ %890, %893 ]
  %1745 = phi float [ %891, %1651 ], [ %891, %1189 ], [ %891, %879 ], [ %1730, %1722 ], [ %891, %1720 ], [ %1696, %1688 ], [ %1682, %1673 ], [ %891, %893 ]
  %1746 = phi float [ %1659, %1651 ], [ %892, %1189 ], [ %892, %879 ], [ %1659, %1722 ], [ %1659, %1720 ], [ %1659, %1688 ], [ %1659, %1673 ], [ %892, %893 ]
  br i1 %359, label %2588, label %1747

; <label>:1747                                    ; preds = %1734
  %1748 = icmp ult i32 %412, 3
  %1749 = add i32 %32, 56
  %1750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.i32 %1750, 0
  %1752 = add i32 %32, 60
  %1753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = or i32 %1754, %1751
  %1756 = icmp eq i32 %1755, 0
  br i1 %1756, label %2588, label %1757

; <label>:1757                                    ; preds = %1747
  %1758 = and i32 %1751, 262144
  %1759 = icmp ne i32 %1758, 0
  %1760 = select i1 %1759, float %34, float 1.000000e+00
  %1761 = select i1 %1759, float %35, float 0.000000e+00
  %1762 = select i1 %1759, float %36, float 0.000000e+00
  %1763 = select i1 %1759, float %37, float 1.000000e+00
  %1764 = select i1 %1759, float %38, float %54
  %1765 = select i1 %1759, float %39, float %55
  %1766 = add i32 %32, 316
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = lshr i32 %1768, 16
  %1770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1769)  ; LegacyF16ToF32(value)
  %1771 = fmul fast float %1770, 0x3F50624DE0000000
  %1772 = add i32 %32, 120
  %1773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1772, i32 undef)  ; BufferLoad(srv,index,wot)
  %1774 = extractvalue %dx.types.ResRet.i32 %1773, 0
  %1775 = lshr i32 %1774, 16
  %1776 = and i32 %1775, 255
  %1777 = lshr i32 %1774, 24
  %1778 = add i32 %32, 324
  %1779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1778, i32 undef)  ; BufferLoad(srv,index,wot)
  %1780 = extractvalue %dx.types.ResRet.i32 %1779, 0
  %1781 = and i32 %1780, 65535
  %1782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1781)  ; LegacyF16ToF32(value)
  %1783 = lshr i32 %1780, 16
  %1784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1783)  ; LegacyF16ToF32(value)
  %1785 = add i32 %32, 64
  %1786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.i32 %1786, 0
  %1788 = lshr i32 %1787, 22
  %1789 = shl nuw nsw i32 %1788, 5
  %1790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1789)  ; LegacyF16ToF32(value)
  %1791 = shl i32 %1787, 4
  %1792 = and i32 %1791, 32752
  %1793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1792)  ; LegacyF16ToF32(value)
  %1794 = lshr i32 %1787, 7
  %1795 = and i32 %1794, 32752
  %1796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1795)  ; LegacyF16ToF32(value)
  %1797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1798 = extractvalue %dx.types.CBufRet.f32 %1797, 3
  %1799 = fmul fast float %1798, 1.000000e+03
  %1800 = fmul fast float %309, %1799
  %1801 = call float @dx.op.unary.f32(i32 22, float %1800)  ; Frc(value)
  %1802 = fadd fast float %1801, %299
  %1803 = fmul fast float %310, %1799
  %1804 = call float @dx.op.unary.f32(i32 22, float %1803)  ; Frc(value)
  %1805 = fadd fast float %1804, %301
  %1806 = fmul fast float %1771, %1799
  %1807 = call float @dx.op.unary.f32(i32 22, float %1806)  ; Frc(value)
  %1808 = fmul fast float %1807, 0x401921FB60000000
  %1809 = fadd fast float %1808, %1790
  %1810 = call float @dx.op.unary.f32(i32 13, float %1809)  ; Sin(value)
  %1811 = call float @dx.op.unary.f32(i32 12, float %1809)  ; Cos(value)
  %1812 = fsub fast float -0.000000e+00, %1810
  %1813 = fadd fast float %1764, -5.000000e-01
  %1814 = fadd fast float %1765, -5.000000e-01
  %1815 = fmul fast float %1782, %1813
  %1816 = fmul fast float %1784, %1814
  %1817 = fadd fast float %1815, 5.000000e-01
  %1818 = fadd fast float %1816, 5.000000e-01
  %1819 = fmul fast float %1793, %1817
  %1820 = fmul fast float %1796, %1818
  %1821 = fmul fast float %1811, %1819
  %1822 = call float @dx.op.tertiary.f32(i32 46, float %1812, float %1820, float %1821)  ; FMad(a,b,c)
  %1823 = fmul fast float %1810, %1819
  %1824 = call float @dx.op.tertiary.f32(i32 46, float %1811, float %1820, float %1823)  ; FMad(a,b,c)
  %1825 = fadd fast float %1802, %1822
  %1826 = fadd fast float %1805, %1824
  %1827 = icmp ugt i32 %1776, 1
  %1828 = icmp ugt i32 %1774, 33554431
  %1829 = or i1 %1828, %1827
  br i1 %1829, label %1830, label %1855

; <label>:1830                                    ; preds = %1757
  %1831 = add i32 %32, 260
  %1832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1831, i32 undef)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.i32 %1832, 0
  %1834 = lshr i32 %1833, 16
  %1835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1834)  ; LegacyF16ToF32(value)
  %1836 = fmul fast float %1798, %1835
  %1837 = call float @dx.op.unary.f32(i32 22, float %1836)  ; Frc(value)
  %1838 = mul nuw nsw i32 %1776, %1777
  %1839 = uitofp i32 %1838 to float
  %1840 = fmul fast float %1837, %1839
  %1841 = call float @dx.op.unary.f32(i32 27, float %1840)  ; Round_ni(value)
  %1842 = fptoui float %1841 to i32
  %1843 = urem i32 %1842, %1776
  %1844 = udiv i32 %1842, %1777
  %1845 = call float @dx.op.unary.f32(i32 22, float %1825)  ; Frc(value)
  %1846 = call float @dx.op.unary.f32(i32 22, float %1826)  ; Frc(value)
  %1847 = uitofp i32 %1843 to float
  %1848 = uitofp i32 %1844 to float
  %1849 = fadd fast float %1845, %1847
  %1850 = fadd fast float %1846, %1848
  %1851 = uitofp i32 %1776 to float
  %1852 = uitofp i32 %1777 to float
  %1853 = fdiv fast float %1849, %1851
  %1854 = fdiv fast float %1850, %1852
  br label %1855

; <label>:1855                                    ; preds = %1830, %1757
  %1856 = phi float [ %1853, %1830 ], [ %1825, %1757 ]
  %1857 = phi float [ %1854, %1830 ], [ %1826, %1757 ]
  %1858 = and i32 %1751, 16777216
  %1859 = icmp eq i32 %1858, 0
  br i1 %1859, label %1969, label %1860

; <label>:1860                                    ; preds = %1855
  %1861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1862 = extractvalue %dx.types.CBufRet.f32 %1861, 0
  %1863 = extractvalue %dx.types.CBufRet.f32 %1861, 1
  %1864 = extractvalue %dx.types.CBufRet.f32 %1861, 2
  %1865 = fadd fast float %1862, %129
  %1866 = fadd fast float %1863, %130
  %1867 = fadd fast float %1864, %131
  %1868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1869 = extractvalue %dx.types.CBufRet.f32 %1868, 0
  %1870 = call float @dx.op.unary.f32(i32 7, float %1869)  ; Saturate(value)
  %1871 = icmp eq i32 %33, 65535
  br i1 %1871, label %1966, label %1872

; <label>:1872                                    ; preds = %1860
  %1873 = lshr i32 %33, 1
  %1874 = shl i32 %1873, 2
  %1875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1876 = extractvalue %dx.types.ResRet.i32 %1875, 0
  %1877 = and i32 %33, 1
  %1878 = icmp ne i32 %1877, 0
  %1879 = lshr i32 %1876, 16
  %1880 = and i32 %1876, 65535
  %1881 = select i1 %1878, i32 %1879, i32 %1880
  %1882 = icmp eq i32 %1881, 65535
  br i1 %1882, label %1962, label %1883

; <label>:1883                                    ; preds = %1872
  %1884 = mul nuw nsw i32 %1881, 40
  %1885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.f32 %1885, 0
  %1887 = extractvalue %dx.types.ResRet.f32 %1885, 1
  %1888 = extractvalue %dx.types.ResRet.f32 %1885, 2
  %1889 = add nuw nsw i32 %1884, 12
  %1890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %1891 = extractvalue %dx.types.ResRet.f32 %1890, 0
  %1892 = extractvalue %dx.types.ResRet.f32 %1890, 1
  %1893 = extractvalue %dx.types.ResRet.f32 %1890, 2
  %1894 = add nuw nsw i32 %1884, 24
  %1895 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1894, i32 undef)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.f32 %1895, 0
  %1897 = extractvalue %dx.types.ResRet.f32 %1895, 1
  %1898 = extractvalue %dx.types.ResRet.f32 %1895, 2
  %1899 = add nuw nsw i32 %1884, 36
  %1900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1901 = extractvalue %dx.types.ResRet.f32 %1900, 0
  %1902 = fsub fast float %1865, %1886
  %1903 = fsub fast float %1866, %1887
  %1904 = fsub fast float %1867, %1888
  %1905 = fmul fast float %1901, %1902
  %1906 = fmul fast float %1901, %1903
  %1907 = fmul fast float %1901, %1904
  %1908 = call float @dx.op.unary.f32(i32 27, float %1905)  ; Round_ni(value)
  %1909 = call float @dx.op.unary.f32(i32 27, float %1906)  ; Round_ni(value)
  %1910 = call float @dx.op.unary.f32(i32 27, float %1907)  ; Round_ni(value)
  %1911 = fadd fast float %1908, 5.000000e-01
  %1912 = fadd fast float %1909, 5.000000e-01
  %1913 = fadd fast float %1910, 5.000000e-01
  %1914 = fmul fast float %1911, %1891
  %1915 = fmul fast float %1912, %1892
  %1916 = fmul fast float %1913, %1893
  %1917 = shl i32 %33, 2
  %1918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.i32 %1918, 0
  %1920 = add i32 %1919, 0
  %1921 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1920, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1922 = call float @dx.op.unary.f32(i32 22, float %1914)  ; Frc(value)
  %1923 = call float @dx.op.unary.f32(i32 22, float %1915)  ; Frc(value)
  %1924 = call float @dx.op.unary.f32(i32 22, float %1916)  ; Frc(value)
  %1925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1921, %dx.types.Handle %29, float %1922, float %1923, float %1924, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1926 = extractvalue %dx.types.ResRet.f32 %1925, 0
  %1927 = extractvalue %dx.types.ResRet.f32 %1925, 1
  %1928 = extractvalue %dx.types.ResRet.f32 %1925, 2
  %1929 = fmul fast float %1926, 1.023000e+03
  %1930 = fmul fast float %1927, 1.023000e+03
  %1931 = fmul fast float %1928, 1.023000e+03
  %1932 = fadd fast float %1929, 5.000000e-01
  %1933 = fadd fast float %1930, 5.000000e-01
  %1934 = fadd fast float %1931, 5.000000e-01
  %1935 = call float @dx.op.unary.f32(i32 27, float %1932)  ; Round_ni(value)
  %1936 = call float @dx.op.unary.f32(i32 27, float %1933)  ; Round_ni(value)
  %1937 = call float @dx.op.unary.f32(i32 27, float %1934)  ; Round_ni(value)
  %1938 = fsub fast float %1905, %1908
  %1939 = fsub fast float %1906, %1909
  %1940 = fsub fast float %1907, %1910
  %1941 = fmul fast float %1938, 7.500000e-01
  %1942 = fmul fast float %1939, 7.500000e-01
  %1943 = fmul fast float %1940, 7.500000e-01
  %1944 = fadd fast float %1908, 1.250000e-01
  %1945 = fadd fast float %1944, %1941
  %1946 = fadd fast float %1945, %1935
  %1947 = fadd fast float %1909, 1.250000e-01
  %1948 = fadd fast float %1947, %1942
  %1949 = fadd fast float %1948, %1936
  %1950 = fadd fast float %1910, 1.250000e-01
  %1951 = fadd fast float %1950, %1943
  %1952 = fadd fast float %1951, %1937
  %1953 = fmul fast float %1946, %1896
  %1954 = fmul fast float %1949, %1897
  %1955 = fmul fast float %1952, %1898
  %1956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1957 = extractvalue %dx.types.ResRet.i32 %1956, 0
  %1958 = add i32 %1957, 0
  %1959 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1958, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1959, %dx.types.Handle %27, float %1953, float %1954, float %1955, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1961 = extractvalue %dx.types.ResRet.f32 %1960, 0
  br label %1962

; <label>:1962                                    ; preds = %1883, %1872
  %1963 = phi float [ %1961, %1883 ], [ -1.000000e+00, %1872 ]
  %1964 = fadd fast float %1963, %1870
  %1965 = call float @dx.op.unary.f32(i32 7, float %1964)  ; Saturate(value)
  br label %1966

; <label>:1966                                    ; preds = %1962, %1860
  %1967 = phi float [ %1965, %1962 ], [ %1870, %1860 ]
  %1968 = fmul fast float %1967, %408
  br label %1969

; <label>:1969                                    ; preds = %1966, %1855
  %1970 = phi float [ %1968, %1966 ], [ %408, %1855 ]
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = and i32 %1972, 256
  %1974 = icmp eq i32 %1973, 0
  br i1 %1974, label %2021, label %1975

; <label>:1975                                    ; preds = %1969
  %1976 = add i32 %32, 432
  %1977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.i32 %1977, 0
  %1979 = add i32 %1978, 0
  %1980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1981 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1980, %dx.types.Handle %63, float %1856, float %1857, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1982 = extractvalue %dx.types.ResRet.f32 %1981, 0
  %1983 = add i32 %32, 132
  %1984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1985 = extractvalue %dx.types.ResRet.i32 %1984, 0
  %1986 = shl i32 %1985, 4
  %1987 = and i32 %1986, 32752
  %1988 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1987)  ; LegacyF16ToF32(value)
  %1989 = lshr i32 %1985, 7
  %1990 = and i32 %1989, 32752
  %1991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1990)  ; LegacyF16ToF32(value)
  %1992 = fsub fast float 1.000000e+00, %1970
  %1993 = call float @dx.op.binary.f32(i32 35, float %1992, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1994 = bitcast float %1970 to i32
  %1995 = sitofp i32 %1994 to float
  %1996 = fadd fast float %1995, 0xC1CFBF8940000000
  %1997 = fmul fast float %1991, %1996
  %1998 = fadd fast float %1997, 0x41CFBF8940000000
  %1999 = fptosi float %1998 to i32
  %2000 = bitcast i32 %1999 to float
  %2001 = bitcast float %1993 to i32
  %2002 = sitofp i32 %2001 to float
  %2003 = fadd fast float %2002, 0xC1CFBF8940000000
  %2004 = fmul fast float %2003, %1991
  %2005 = fadd fast float %2004, 0x41CFBF8940000000
  %2006 = fptosi float %2005 to i32
  %2007 = bitcast i32 %2006 to float
  %2008 = fmul fast float %2000, %1988
  %2009 = fmul fast float %2007, %1988
  %2010 = fsub fast float %1993, %2008
  %2011 = fadd fast float %2009, %1993
  %2012 = call float @dx.op.unary.f32(i32 7, float %2010)  ; Saturate(value)
  %2013 = call float @dx.op.unary.f32(i32 7, float %2011)  ; Saturate(value)
  %2014 = fsub fast float %1982, %2012
  %2015 = fsub fast float %2013, %2012
  %2016 = bitcast float %2015 to i32
  %2017 = sub nsw i32 2129859010, %2016
  %2018 = bitcast i32 %2017 to float
  %2019 = fmul fast float %2018, %2014
  %2020 = call float @dx.op.unary.f32(i32 7, float %2019)  ; Saturate(value)
  br label %2021

; <label>:2021                                    ; preds = %1975, %1969
  %2022 = phi float [ %2020, %1975 ], [ %1970, %1969 ]
  %2023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.i32 %2023, 0
  %2025 = and i32 %2024, 128
  %2026 = icmp eq i32 %2025, 0
  br i1 %2026, label %2043, label %2027

; <label>:2027                                    ; preds = %2021
  %2028 = add i32 %32, 416
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.i32 %2029, 0
  %2031 = add i32 %2030, 0
  %2032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2031, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2033 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2032, %dx.types.Handle %63, float %1856, float %1857, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2034 = extractvalue %dx.types.ResRet.f32 %2033, 0
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = and i32 %2036, 524288
  %2038 = icmp ne i32 %2037, 0
  %2039 = fcmp fast ogt float %2034, 0x3FE0101020000000
  %2040 = select i1 %2039, float 1.000000e+00, float 0.000000e+00
  %2041 = select i1 %2038, float %2040, float %2034
  %2042 = fmul fast float %2041, %2022
  br label %2043

; <label>:2043                                    ; preds = %2027, %2021
  %2044 = phi float [ %2042, %2027 ], [ %2022, %2021 ]
  %2045 = fcmp fast ult float %2044, 0x3F70101020000000
  br i1 %2045, label %2588, label %2046

; <label>:2046                                    ; preds = %2043
  %2047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2048 = extractvalue %dx.types.ResRet.i32 %2047, 0
  %2049 = and i32 %2048, 16
  %2050 = icmp eq i32 %2049, 0
  br i1 %2050, label %2249, label %2051

; <label>:2051                                    ; preds = %2046
  %2052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1772, i32 undef)  ; BufferLoad(srv,index,wot)
  %2053 = extractvalue %dx.types.ResRet.i32 %2052, 0
  %2054 = add i32 %32, 368
  %2055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = add i32 %2056, 0
  %2058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2057, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2059 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2058, %dx.types.Handle %62, float %1856, float %1857, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2060 = extractvalue %dx.types.ResRet.f32 %2059, 0
  %2061 = extractvalue %dx.types.ResRet.f32 %2059, 1
  %2062 = extractvalue %dx.types.ResRet.f32 %2059, 2
  %2063 = extractvalue %dx.types.ResRet.f32 %2059, 3
  %2064 = and i32 %2053, 255
  %2065 = uitofp i32 %2064 to float
  %2066 = lshr i32 %2053, 8
  %2067 = and i32 %2066, 255
  %2068 = uitofp i32 %2067 to float
  %2069 = fmul fast float %2063, %2065
  %2070 = fadd fast float %2069, %2068
  %2071 = fmul fast float %2070, 0x3F70101000000000
  %2072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2073 = extractvalue %dx.types.ResRet.i32 %2072, 0
  %2074 = and i32 %2073, 512
  %2075 = icmp eq i32 %2074, 0
  br i1 %2075, label %2084, label %2076

; <label>:2076                                    ; preds = %2051
  %2077 = add i32 %32, 448
  %2078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.i32 %2078, 0
  %2080 = add i32 %2079, 0
  %2081 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2080, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2082 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2081, %dx.types.Handle %63, float %1856, float %1857, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2083 = extractvalue %dx.types.ResRet.f32 %2082, 0
  br label %2084

; <label>:2084                                    ; preds = %2076, %2051
  %2085 = phi float [ %2083, %2076 ], [ 1.000000e+00, %2051 ]
  %2086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.i32 %2086, 0
  %2088 = and i32 %2087, 33554432
  %2089 = icmp eq i32 %2088, 0
  br i1 %2089, label %2196, label %2090

; <label>:2090                                    ; preds = %2084
  %2091 = add i32 %32, 256
  %2092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.i32 %2092, 0
  %2094 = and i32 %2093, 65535
  %2095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2094)  ; LegacyF16ToF32(value)
  %2096 = lshr i32 %2093, 16
  %2097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2096)  ; LegacyF16ToF32(value)
  %2098 = add i32 %32, 260
  %2099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.i32 %2099, 0
  %2101 = and i32 %2100, 65535
  %2102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2101)  ; LegacyF16ToF32(value)
  %2103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.i32 %2103, 0
  %2105 = lshr i32 %2104, 24
  %2106 = uitofp i32 %2105 to float
  %2107 = fmul fast float %2106, 0x3F70101020000000
  %2108 = and i32 %2104, 255
  %2109 = uitofp i32 %2108 to float
  %2110 = fmul fast float %2109, 0x3F70101020000000
  %2111 = lshr i32 %2104, 8
  %2112 = and i32 %2111, 255
  %2113 = uitofp i32 %2112 to float
  %2114 = fmul fast float %2113, 0x3F70101020000000
  %2115 = lshr i32 %2104, 16
  %2116 = and i32 %2115, 255
  %2117 = uitofp i32 %2116 to float
  %2118 = fmul fast float %2117, 0x3F70101020000000
  %2119 = add i32 %32, 252
  %2120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2119, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.i32 %2120, 0
  %2122 = lshr i32 %2121, 24
  %2123 = uitofp i32 %2122 to float
  %2124 = fmul fast float %2123, 0x3F70101020000000
  %2125 = and i32 %2121, 255
  %2126 = uitofp i32 %2125 to float
  %2127 = fmul fast float %2126, 0x3F70101020000000
  %2128 = lshr i32 %2121, 8
  %2129 = and i32 %2128, 255
  %2130 = uitofp i32 %2129 to float
  %2131 = fmul fast float %2130, 0x3F70101020000000
  %2132 = lshr i32 %2121, 16
  %2133 = and i32 %2132, 255
  %2134 = uitofp i32 %2133 to float
  %2135 = fmul fast float %2134, 0x3F70101020000000
  %2136 = bitcast float %2060 to i32
  %2137 = ashr i32 %2136, 1
  %2138 = sub nsw i32 1597463174, %2137
  %2139 = bitcast i32 %2138 to float
  %2140 = fmul fast float %2060, 5.000000e-01
  %2141 = fmul fast float %2139, %2139
  %2142 = fmul fast float %2141, %2140
  %2143 = fsub fast float 1.500000e+00, %2142
  %2144 = fmul fast float %2139, %2060
  %2145 = fmul fast float %2144, %2143
  %2146 = bitcast float %2061 to i32
  %2147 = ashr i32 %2146, 1
  %2148 = sub nsw i32 1597463174, %2147
  %2149 = bitcast i32 %2148 to float
  %2150 = fmul fast float %2061, 5.000000e-01
  %2151 = fmul fast float %2149, %2149
  %2152 = fmul fast float %2151, %2150
  %2153 = fsub fast float 1.500000e+00, %2152
  %2154 = fmul fast float %2149, %2061
  %2155 = fmul fast float %2154, %2153
  %2156 = bitcast float %2062 to i32
  %2157 = ashr i32 %2156, 1
  %2158 = sub nsw i32 1597463174, %2157
  %2159 = bitcast i32 %2158 to float
  %2160 = fmul fast float %2062, 5.000000e-01
  %2161 = fmul fast float %2159, %2159
  %2162 = fmul fast float %2161, %2160
  %2163 = fsub fast float 1.500000e+00, %2162
  %2164 = fmul fast float %2159, %2062
  %2165 = fmul fast float %2164, %2163
  %2166 = fsub fast float %2145, %2127
  %2167 = fsub fast float %2155, %2131
  %2168 = fsub fast float %2165, %2135
  %2169 = fmul fast float %2166, %2095
  %2170 = fmul fast float %2167, %2097
  %2171 = fmul fast float %2168, %2102
  %2172 = fadd fast float %2169, %2110
  %2173 = fadd fast float %2170, %2114
  %2174 = fadd fast float %2171, %2118
  %2175 = call float @dx.op.unary.f32(i32 7, float %2172)  ; Saturate(value)
  %2176 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2177 = call float @dx.op.unary.f32(i32 7, float %2174)  ; Saturate(value)
  %2178 = fmul fast float %2175, %2175
  %2179 = fmul fast float %2176, %2176
  %2180 = fmul fast float %2177, %2177
  %2181 = fsub fast float %2178, %2060
  %2182 = fsub fast float %2179, %2061
  %2183 = fsub fast float %2180, %2062
  %2184 = fmul fast float %2181, %2085
  %2185 = fmul fast float %2182, %2085
  %2186 = fmul fast float %2183, %2085
  %2187 = fadd fast float %2184, %2060
  %2188 = fadd fast float %2185, %2061
  %2189 = fadd fast float %2186, %2062
  %2190 = fadd fast float %2107, %2071
  %2191 = fsub fast float %2190, %2124
  %2192 = call float @dx.op.unary.f32(i32 7, float %2191)  ; Saturate(value)
  %2193 = fsub fast float %2192, %2071
  %2194 = fmul fast float %2193, %2085
  %2195 = fadd fast float %2194, %2071
  br label %2249

; <label>:2196                                    ; preds = %2084
  %2197 = and i32 %2087, 134217728
  %2198 = icmp eq i32 %2197, 0
  br i1 %2198, label %2233, label %2199

; <label>:2199                                    ; preds = %2196
  %2200 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %2201 = call float @dx.op.unary.f32(i32 24, float %290)  ; Sqrt(value)
  %2202 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %2203 = fadd fast float %2200, -5.000000e-01
  %2204 = fadd fast float %2201, -5.000000e-01
  %2205 = fadd fast float %2202, -5.000000e-01
  %2206 = fmul fast float %2203, %2085
  %2207 = fmul fast float %2204, %2085
  %2208 = fmul fast float %2205, %2085
  %2209 = fadd fast float %2206, 5.000000e-01
  %2210 = fadd fast float %2207, 5.000000e-01
  %2211 = fadd fast float %2208, 5.000000e-01
  %2212 = call float @dx.op.unary.f32(i32 24, float %2060)  ; Sqrt(value)
  %2213 = call float @dx.op.unary.f32(i32 24, float %2061)  ; Sqrt(value)
  %2214 = call float @dx.op.unary.f32(i32 24, float %2062)  ; Sqrt(value)
  %2215 = fmul fast float %2209, 2.000000e+00
  %2216 = fsub fast float 1.000000e+00, %2215
  %2217 = fmul fast float %2216, %2212
  %2218 = fadd fast float %2217, %2215
  %2219 = fmul fast float %2218, %2212
  %2220 = fmul fast float %2210, 2.000000e+00
  %2221 = fsub fast float 1.000000e+00, %2220
  %2222 = fmul fast float %2221, %2213
  %2223 = fadd fast float %2222, %2220
  %2224 = fmul fast float %2223, %2213
  %2225 = fmul fast float %2211, 2.000000e+00
  %2226 = fsub fast float 1.000000e+00, %2225
  %2227 = fmul fast float %2226, %2214
  %2228 = fadd fast float %2227, %2225
  %2229 = fmul fast float %2228, %2214
  %2230 = fmul fast float %2219, %2219
  %2231 = fmul fast float %2224, %2224
  %2232 = fmul fast float %2229, %2229
  br label %2249

; <label>:2233                                    ; preds = %2196
  %2234 = fmul fast float %286, %286
  %2235 = fmul fast float %290, %290
  %2236 = fmul fast float %294, %294
  %2237 = fadd fast float %2234, -1.000000e+00
  %2238 = fadd fast float %2235, -1.000000e+00
  %2239 = fadd fast float %2236, -1.000000e+00
  %2240 = fmul fast float %2085, %2237
  %2241 = fmul fast float %2085, %2238
  %2242 = fmul fast float %2085, %2239
  %2243 = fadd fast float %2240, 1.000000e+00
  %2244 = fadd fast float %2241, 1.000000e+00
  %2245 = fadd fast float %2242, 1.000000e+00
  %2246 = fmul fast float %2243, %2060
  %2247 = fmul fast float %2244, %2061
  %2248 = fmul fast float %2245, %2062
  br label %2249

; <label>:2249                                    ; preds = %2233, %2199, %2090, %2046
  %2250 = phi float [ %2195, %2090 ], [ %2071, %2199 ], [ %2071, %2233 ], [ 0x3FA23C0BE0000000, %2046 ]
  %2251 = phi float [ %2187, %2090 ], [ %2230, %2199 ], [ %2246, %2233 ], [ 1.000000e+00, %2046 ]
  %2252 = phi float [ %2188, %2090 ], [ %2231, %2199 ], [ %2247, %2233 ], [ 1.000000e+00, %2046 ]
  %2253 = phi float [ %2189, %2090 ], [ %2232, %2199 ], [ %2248, %2233 ], [ 1.000000e+00, %2046 ]
  %2254 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2255 = extractvalue %dx.types.CBufRet.i32 %2254, 1
  %2256 = and i32 %2255, 1
  %2257 = icmp ne i32 %2256, 0
  %2258 = add i32 %32, 356
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = and i32 %2260, 32
  %2262 = icmp ne i32 %2261, 0
  %2263 = and i1 %2257, %2262
  %2264 = select i1 %2263, float 1.000000e+00, float %2251
  %2265 = select i1 %2263, float 0x3FD3333340000000, float %2252
  %2266 = select i1 %2263, float 0x3FD3333340000000, float %2253
  %2267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.i32 %2267, 0
  %2269 = and i32 %2268, 32
  %2270 = icmp eq i32 %2269, 0
  br i1 %2270, label %2343, label %2271

; <label>:2271                                    ; preds = %2249
  %2272 = add i32 %32, 124
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = add i32 %32, 384
  %2276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2275, i32 undef)  ; BufferLoad(srv,index,wot)
  %2277 = extractvalue %dx.types.ResRet.i32 %2276, 0
  %2278 = add i32 %2277, 0
  %2279 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2278, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2280 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2279, %dx.types.Handle %62, float %1856, float %1857, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2281 = extractvalue %dx.types.ResRet.f32 %2280, 0
  %2282 = extractvalue %dx.types.ResRet.f32 %2280, 1
  %2283 = extractvalue %dx.types.ResRet.f32 %2280, 2
  %2284 = extractvalue %dx.types.ResRet.f32 %2280, 3
  %2285 = and i32 %2274, 255
  %2286 = uitofp i32 %2285 to float
  %2287 = lshr i32 %2274, 8
  %2288 = and i32 %2287, 255
  %2289 = uitofp i32 %2288 to float
  %2290 = lshr i32 %2274, 16
  %2291 = and i32 %2290, 255
  %2292 = uitofp i32 %2291 to float
  %2293 = fmul fast float %2292, 0x3F70101000000000
  %2294 = fmul fast float %2281, %2286
  %2295 = fadd fast float %2294, %2289
  %2296 = fmul fast float %2295, 0x3F70101000000000
  %2297 = fadd fast float %2282, -5.000000e-01
  %2298 = fadd fast float %2284, -5.000000e-01
  %2299 = fmul fast float %2297, %2293
  %2300 = fmul fast float %2298, %2293
  %2301 = fadd fast float %2299, 5.000000e-01
  %2302 = fadd fast float %2300, 5.000000e-01
  %2303 = fmul fast float %2301, 2.000000e+00
  %2304 = fadd fast float %2303, -1.000000e+00
  %2305 = fmul fast float %2302, 2.000000e+00
  %2306 = fadd fast float %2305, -1.000000e+00
  %2307 = fadd fast float %2304, %2306
  %2308 = fmul fast float %2307, 5.000000e-01
  %2309 = fsub fast float %2304, %2306
  %2310 = fmul fast float %2309, 5.000000e-01
  %2311 = call float @dx.op.unary.f32(i32 6, float %2308)  ; FAbs(value)
  %2312 = fsub fast float 1.000000e+00, %2311
  %2313 = call float @dx.op.unary.f32(i32 6, float %2310)  ; FAbs(value)
  %2314 = fsub fast float %2312, %2313
  %2315 = call float @dx.op.dot3.f32(i32 55, float %2308, float %2310, float %2314, float %2308, float %2310, float %2314)  ; Dot3(ax,ay,az,bx,by,bz)
  %2316 = call float @dx.op.unary.f32(i32 25, float %2315)  ; Rsqrt(value)
  %2317 = fmul fast float %2308, %2316
  %2318 = fmul fast float %2310, %2316
  %2319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2320 = extractvalue %dx.types.ResRet.i32 %2319, 0
  %2321 = and i32 %2320, 67108864
  %2322 = icmp eq i32 %2321, 0
  br i1 %2322, label %2339, label %2323

; <label>:2323                                    ; preds = %2271
  %2324 = add i32 %32, 312
  %2325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2326 = extractvalue %dx.types.ResRet.i32 %2325, 0
  %2327 = and i32 %2326, 65535
  %2328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2327)  ; LegacyF16ToF32(value)
  %2329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2330 = extractvalue %dx.types.ResRet.i32 %2329, 0
  %2331 = and i32 %2330, 65535
  %2332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2331)  ; LegacyF16ToF32(value)
  %2333 = lshr i32 %2326, 16
  %2334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2333)  ; LegacyF16ToF32(value)
  %2335 = fsub fast float %2296, %2334
  %2336 = fmul fast float %2335, %2328
  %2337 = fadd fast float %2336, %2332
  %2338 = call float @dx.op.unary.f32(i32 7, float %2337)  ; Saturate(value)
  br label %2339

; <label>:2339                                    ; preds = %2323, %2271
  %2340 = phi float [ %2338, %2323 ], [ %2296, %2271 ]
  %2341 = call float @dx.op.dot2.f32(i32 54, float %2317, float %2318, float %1760, float %1761)  ; Dot2(ax,ay,bx,by)
  %2342 = call float @dx.op.dot2.f32(i32 54, float %2317, float %2318, float %1762, float %1763)  ; Dot2(ax,ay,bx,by)
  br label %2343

; <label>:2343                                    ; preds = %2339, %2249
  %2344 = phi float [ %2340, %2339 ], [ 0x3FD6666660000000, %2249 ]
  %2345 = phi float [ %2341, %2339 ], [ 0.000000e+00, %2249 ]
  %2346 = phi float [ %2342, %2339 ], [ 0.000000e+00, %2249 ]
  %2347 = phi float [ %2283, %2339 ], [ 1.000000e+00, %2249 ]
  %2348 = add i32 %32, 192
  %2349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2348, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.i32 %2349, 0
  %2351 = lshr i32 %2350, 22
  %2352 = shl nuw nsw i32 %2351, 5
  %2353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2352)  ; LegacyF16ToF32(value)
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = and i32 %2355, 64
  %2357 = icmp eq i32 %2356, 0
  br i1 %2357, label %2391, label %2358

; <label>:2358                                    ; preds = %2343
  %2359 = add i32 %32, 400
  %2360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2359, i32 undef)  ; BufferLoad(srv,index,wot)
  %2361 = extractvalue %dx.types.ResRet.i32 %2360, 0
  %2362 = add i32 %2361, 0
  %2363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2362, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.i32 %2364, 0
  %2366 = and i32 %2365, 131072
  %2367 = icmp eq i32 %2366, 0
  %2368 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2363, %dx.types.Handle %62, float %1856, float %1857, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2369 = extractvalue %dx.types.ResRet.f32 %2368, 0
  %2370 = extractvalue %dx.types.ResRet.f32 %2368, 1
  %2371 = extractvalue %dx.types.ResRet.f32 %2368, 2
  %2372 = fmul fast float %2369, %274
  %2373 = fmul fast float %2370, %277
  %2374 = fmul fast float %2371, %280
  br i1 %2367, label %2381, label %2375

; <label>:2375                                    ; preds = %2358
  %2376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2377 = extractvalue %dx.types.CBufRet.f32 %2376, 0
  %2378 = fmul fast float %2377, %2372
  %2379 = fmul fast float %2377, %2373
  %2380 = fmul fast float %2377, %2374
  br label %2381

; <label>:2381                                    ; preds = %2375, %2358
  %2382 = phi float [ %2378, %2375 ], [ %2372, %2358 ]
  %2383 = phi float [ %2379, %2375 ], [ %2373, %2358 ]
  %2384 = phi float [ %2380, %2375 ], [ %2374, %2358 ]
  %2385 = fmul fast float %2382, %2353
  %2386 = select i1 %170, float %2385, float %2382
  %2387 = call float @dx.op.dot3.f32(i32 55, float %2386, float %2383, float %2384, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2388 = select i1 %170, float 0.000000e+00, float %2382
  %2389 = select i1 %170, float %2387, float %2383
  %2390 = select i1 %170, float 0.000000e+00, float %2384
  br label %2391

; <label>:2391                                    ; preds = %2381, %2343
  %2392 = phi float [ %2388, %2381 ], [ 0.000000e+00, %2343 ]
  %2393 = phi float [ %2389, %2381 ], [ 0.000000e+00, %2343 ]
  %2394 = phi float [ %2390, %2381 ], [ 0.000000e+00, %2343 ]
  %2395 = add i32 %32, 128
  %2396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2395, i32 undef)  ; BufferLoad(srv,index,wot)
  %2397 = extractvalue %dx.types.ResRet.i32 %2396, 0
  %2398 = and i32 %2397, 255
  %2399 = uitofp i32 %2398 to float
  %2400 = lshr i32 %2397, 8
  %2401 = and i32 %2400, 255
  %2402 = uitofp i32 %2401 to float
  %2403 = call float @dx.op.dot3.f32(i32 55, float %2264, float %2265, float %2266, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2404 = fmul fast float %2402, %2403
  %2405 = fadd fast float %2404, %2399
  %2406 = fmul fast float %2405, 0x3F70101020000000
  %2407 = call float @dx.op.unary.f32(i32 7, float %2406)  ; Saturate(value)
  br i1 %1748, label %2408, label %2416

; <label>:2408                                    ; preds = %2391
  %2409 = fsub fast float 1.000000e+00, %2044
  %2410 = fmul fast float %2409, %1737
  %2411 = fmul fast float %2409, %1738
  %2412 = fmul fast float %2409, %1739
  %2413 = fmul fast float %2409, %1740
  %2414 = fmul fast float %2409, %1741
  %2415 = fmul fast float %2409, %1742
  br label %2416

; <label>:2416                                    ; preds = %2408, %2391
  %2417 = phi float [ %2410, %2408 ], [ %1737, %2391 ]
  %2418 = phi float [ %2411, %2408 ], [ %1738, %2391 ]
  %2419 = phi float [ %2412, %2408 ], [ %1739, %2391 ]
  %2420 = phi float [ %2413, %2408 ], [ %1740, %2391 ]
  %2421 = phi float [ %2414, %2408 ], [ %1741, %2391 ]
  %2422 = phi float [ %2415, %2408 ], [ %1742, %2391 ]
  %2423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2424 = extractvalue %dx.types.ResRet.i32 %2423, 0
  %2425 = and i32 %2424, 3
  %2426 = icmp eq i32 %2425, 3
  br i1 %2426, label %2505, label %2427

; <label>:2427                                    ; preds = %2416
  %2428 = and i32 %2424, 16
  %2429 = icmp ne i32 %2428, 0
  %2430 = select i1 %2429, float %2044, float 0.000000e+00
  %2431 = icmp eq i32 %2425, 0
  br i1 %2431, label %2432, label %2460

; <label>:2432                                    ; preds = %2427
  %2433 = and i32 %2424, 64
  %2434 = icmp ne i32 %2433, 0
  %2435 = select i1 %2434, float %2044, float 0.000000e+00
  %2436 = fsub fast float %2264, %2417
  %2437 = fsub fast float %2265, %2418
  %2438 = fsub fast float %2266, %2419
  %2439 = fmul fast float %2430, %2436
  %2440 = fmul fast float %2430, %2437
  %2441 = fmul fast float %2430, %2438
  %2442 = fadd fast float %2439, %2417
  %2443 = fadd fast float %2440, %2418
  %2444 = fadd fast float %2441, %2419
  %2445 = fsub fast float %2250, %1743
  %2446 = fmul fast float %2430, %2445
  %2447 = fadd fast float %2446, %1743
  %2448 = fsub fast float %2392, %2420
  %2449 = fsub fast float %2393, %2421
  %2450 = fsub fast float %2394, %2422
  %2451 = fmul fast float %2435, %2448
  %2452 = fmul fast float %2435, %2449
  %2453 = fmul fast float %2435, %2450
  %2454 = fadd fast float %2451, %2420
  %2455 = fadd fast float %2452, %2421
  %2456 = fadd fast float %2453, %2422
  %2457 = fsub fast float %2407, %1746
  %2458 = fmul fast float %2430, %2457
  %2459 = fadd fast float %2458, %1746
  br label %2505

; <label>:2460                                    ; preds = %2427
  %2461 = icmp eq i32 %2425, 1
  br i1 %2461, label %2462, label %2475

; <label>:2462                                    ; preds = %2460
  %2463 = fadd fast float %2264, -1.000000e+00
  %2464 = fadd fast float %2265, -1.000000e+00
  %2465 = fadd fast float %2266, -1.000000e+00
  %2466 = fmul fast float %2430, %2463
  %2467 = fmul fast float %2430, %2464
  %2468 = fmul fast float %2430, %2465
  %2469 = fadd fast float %2466, 1.000000e+00
  %2470 = fadd fast float %2467, 1.000000e+00
  %2471 = fadd fast float %2468, 1.000000e+00
  %2472 = fmul fast float %2469, %2417
  %2473 = fmul fast float %2470, %2418
  %2474 = fmul fast float %2471, %2419
  br label %2505

; <label>:2475                                    ; preds = %2460
  %2476 = icmp eq i32 %2425, 2
  br i1 %2476, label %2477, label %2505

; <label>:2477                                    ; preds = %2475
  %2478 = call float @dx.op.unary.f32(i32 24, float %2264)  ; Sqrt(value)
  %2479 = call float @dx.op.unary.f32(i32 24, float %2265)  ; Sqrt(value)
  %2480 = call float @dx.op.unary.f32(i32 24, float %2266)  ; Sqrt(value)
  %2481 = fadd fast float %2478, -5.000000e-01
  %2482 = fadd fast float %2479, -5.000000e-01
  %2483 = fadd fast float %2480, -5.000000e-01
  %2484 = fmul fast float %2481, %2430
  %2485 = fmul fast float %2482, %2430
  %2486 = fmul fast float %2483, %2430
  %2487 = fadd fast float %2484, 5.000000e-01
  %2488 = fadd fast float %2485, 5.000000e-01
  %2489 = fadd fast float %2486, 5.000000e-01
  %2490 = fmul fast float %2487, 2.000000e+00
  %2491 = fsub fast float 1.000000e+00, %2490
  %2492 = fmul fast float %2491, %2417
  %2493 = fadd fast float %2492, %2490
  %2494 = fmul fast float %2493, %2417
  %2495 = fmul fast float %2488, 2.000000e+00
  %2496 = fsub fast float 1.000000e+00, %2495
  %2497 = fmul fast float %2496, %2418
  %2498 = fadd fast float %2497, %2495
  %2499 = fmul fast float %2498, %2418
  %2500 = fmul fast float %2489, 2.000000e+00
  %2501 = fsub fast float 1.000000e+00, %2500
  %2502 = fmul fast float %2501, %2419
  %2503 = fadd fast float %2502, %2500
  %2504 = fmul fast float %2503, %2419
  br label %2505

; <label>:2505                                    ; preds = %2477, %2475, %2462, %2432, %2416
  %2506 = phi float [ %2417, %2416 ], [ %2494, %2477 ], [ %2417, %2475 ], [ %2472, %2462 ], [ %2442, %2432 ]
  %2507 = phi float [ %2418, %2416 ], [ %2499, %2477 ], [ %2418, %2475 ], [ %2473, %2462 ], [ %2443, %2432 ]
  %2508 = phi float [ %2419, %2416 ], [ %2504, %2477 ], [ %2419, %2475 ], [ %2474, %2462 ], [ %2444, %2432 ]
  %2509 = phi float [ %2420, %2416 ], [ %2420, %2477 ], [ %2420, %2475 ], [ %2420, %2462 ], [ %2454, %2432 ]
  %2510 = phi float [ %2421, %2416 ], [ %2421, %2477 ], [ %2421, %2475 ], [ %2421, %2462 ], [ %2455, %2432 ]
  %2511 = phi float [ %2422, %2416 ], [ %2422, %2477 ], [ %2422, %2475 ], [ %2422, %2462 ], [ %2456, %2432 ]
  %2512 = phi float [ %1743, %2416 ], [ %1743, %2477 ], [ %1743, %2475 ], [ %1743, %2462 ], [ %2447, %2432 ]
  %2513 = phi float [ %1746, %2416 ], [ %1746, %2477 ], [ %1746, %2475 ], [ %1746, %2462 ], [ %2459, %2432 ]
  %2514 = and i32 %2424, 12
  %2515 = icmp eq i32 %2514, 12
  br i1 %2515, label %2588, label %2516

; <label>:2516                                    ; preds = %2505
  %2517 = and i32 %2424, 2097184
  %2518 = icmp eq i32 %2517, 2097184
  %2519 = select i1 %2518, float %2044, float 0.000000e+00
  %2520 = and i32 %2424, 4194336
  %2521 = icmp eq i32 %2520, 4194336
  %2522 = select i1 %2521, float %2044, float 0.000000e+00
  %2523 = and i32 %2424, 8388640
  %2524 = icmp eq i32 %2523, 8388640
  %2525 = select i1 %2524, float %2044, float 0.000000e+00
  %2526 = icmp eq i32 %2514, 0
  br i1 %2526, label %2527, label %2540

; <label>:2527                                    ; preds = %2516
  %2528 = fsub fast float %2345, %1735
  %2529 = fsub fast float %2346, %1736
  %2530 = fmul fast float %2519, %2528
  %2531 = fmul fast float %2519, %2529
  %2532 = fadd fast float %2530, %1735
  %2533 = fadd fast float %2531, %1736
  %2534 = fsub fast float %2347, %1745
  %2535 = fmul fast float %2522, %2534
  %2536 = fadd fast float %2535, %1745
  %2537 = fsub fast float %2344, %1744
  %2538 = fmul fast float %2525, %2537
  %2539 = fadd fast float %2538, %1744
  br label %2588

; <label>:2540                                    ; preds = %2516
  %2541 = icmp eq i32 %2514, 4
  br i1 %2541, label %2542, label %2574

; <label>:2542                                    ; preds = %2540
  %2543 = fmul fast float %2519, %2345
  %2544 = fmul fast float %2519, %2346
  %2545 = fadd fast float %2543, %1735
  %2546 = fadd fast float %2544, %1736
  %2547 = call float @dx.op.binary.f32(i32 36, float %1745, float %2347)  ; FMin(a,b)
  %2548 = fsub fast float %2547, %1745
  %2549 = fmul fast float %2548, %2522
  %2550 = fadd fast float %2549, %1745
  %2551 = fadd fast float %2344, %1744
  %2552 = fmul fast float %2551, 0x3FF337FAE0000000
  %2553 = fmul fast float %1744, %1744
  %2554 = fmul fast float %2344, %2344
  %2555 = fadd fast float %2554, %2553
  %2556 = fmul fast float %2555, 0x3FE5152B00000000
  %2557 = fmul fast float %1744, 0xBFCC1F85E0000000
  %2558 = fmul fast float %2557, %2344
  %2559 = fadd fast float %2558, 0xBFE1363700000000
  %2560 = fadd fast float %2559, %2552
  %2561 = fsub fast float %2560, %2556
  %2562 = fmul fast float %2551, 0x3FBA6F0D00000000
  %2563 = fmul fast float %2555, 0x3FD0432880000000
  %2564 = fmul fast float %1744, 0xBFEF110800000000
  %2565 = fmul fast float %2564, %2344
  %2566 = fadd fast float %2565, 1.000000e+00
  %2567 = fsub fast float %2566, %2562
  %2568 = fadd fast float %2567, %2563
  %2569 = fdiv fast float %2561, %2568
  %2570 = call float @dx.op.unary.f32(i32 7, float %2569)  ; Saturate(value)
  %2571 = fsub fast float %2570, %1744
  %2572 = fmul fast float %2571, %2525
  %2573 = fadd fast float %2572, %1744
  br label %2588

; <label>:2574                                    ; preds = %2540
  %2575 = icmp eq i32 %2514, 8
  br i1 %2575, label %2576, label %2588

; <label>:2576                                    ; preds = %2574
  %2577 = fmul fast float %2519, %2345
  %2578 = fmul fast float %2519, %2346
  %2579 = fadd fast float %2577, %1735
  %2580 = fadd fast float %2578, %1736
  %2581 = call float @dx.op.binary.f32(i32 36, float %1745, float %2347)  ; FMin(a,b)
  %2582 = fsub fast float %2581, %1745
  %2583 = fmul fast float %2582, %2522
  %2584 = fadd fast float %2583, %1745
  %2585 = fsub fast float %2344, %1744
  %2586 = fmul fast float %2525, %2585
  %2587 = fadd fast float %2586, %1744
  br label %2588

; <label>:2588                                    ; preds = %2576, %2574, %2542, %2527, %2505, %2043, %1747, %1734
  %2589 = phi float [ %1735, %2505 ], [ %1735, %2043 ], [ %1735, %1734 ], [ %2579, %2576 ], [ %1735, %2574 ], [ %2545, %2542 ], [ %2532, %2527 ], [ %1735, %1747 ]
  %2590 = phi float [ %1736, %2505 ], [ %1736, %2043 ], [ %1736, %1734 ], [ %2580, %2576 ], [ %1736, %2574 ], [ %2546, %2542 ], [ %2533, %2527 ], [ %1736, %1747 ]
  %2591 = phi float [ %2506, %2505 ], [ %1737, %2043 ], [ %1737, %1734 ], [ %2506, %2576 ], [ %2506, %2574 ], [ %2506, %2542 ], [ %2506, %2527 ], [ %1737, %1747 ]
  %2592 = phi float [ %2507, %2505 ], [ %1738, %2043 ], [ %1738, %1734 ], [ %2507, %2576 ], [ %2507, %2574 ], [ %2507, %2542 ], [ %2507, %2527 ], [ %1738, %1747 ]
  %2593 = phi float [ %2508, %2505 ], [ %1739, %2043 ], [ %1739, %1734 ], [ %2508, %2576 ], [ %2508, %2574 ], [ %2508, %2542 ], [ %2508, %2527 ], [ %1739, %1747 ]
  %2594 = phi float [ %2509, %2505 ], [ %1740, %2043 ], [ %1740, %1734 ], [ %2509, %2576 ], [ %2509, %2574 ], [ %2509, %2542 ], [ %2509, %2527 ], [ %1740, %1747 ]
  %2595 = phi float [ %2510, %2505 ], [ %1741, %2043 ], [ %1741, %1734 ], [ %2510, %2576 ], [ %2510, %2574 ], [ %2510, %2542 ], [ %2510, %2527 ], [ %1741, %1747 ]
  %2596 = phi float [ %2511, %2505 ], [ %1742, %2043 ], [ %1742, %1734 ], [ %2511, %2576 ], [ %2511, %2574 ], [ %2511, %2542 ], [ %2511, %2527 ], [ %1742, %1747 ]
  %2597 = phi float [ %2512, %2505 ], [ %1743, %2043 ], [ %1743, %1734 ], [ %2512, %2576 ], [ %2512, %2574 ], [ %2512, %2542 ], [ %2512, %2527 ], [ %1743, %1747 ]
  %2598 = phi float [ %1744, %2505 ], [ %1744, %2043 ], [ %1744, %1734 ], [ %2587, %2576 ], [ %1744, %2574 ], [ %2573, %2542 ], [ %2539, %2527 ], [ %1744, %1747 ]
  %2599 = phi float [ %1745, %2505 ], [ %1745, %2043 ], [ %1745, %1734 ], [ %2584, %2576 ], [ %1745, %2574 ], [ %2550, %2542 ], [ %2536, %2527 ], [ %1745, %1747 ]
  %2600 = phi float [ %2513, %2505 ], [ %1746, %2043 ], [ %1746, %1734 ], [ %2513, %2576 ], [ %2513, %2574 ], [ %2513, %2542 ], [ %2513, %2527 ], [ %1746, %1747 ]
  br i1 %361, label %3442, label %2601

; <label>:2601                                    ; preds = %2588
  %2602 = icmp ult i32 %412, 4
  %2603 = add i32 %32, 72
  %2604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %2605 = extractvalue %dx.types.ResRet.i32 %2604, 0
  %2606 = add i32 %32, 76
  %2607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2606, i32 undef)  ; BufferLoad(srv,index,wot)
  %2608 = extractvalue %dx.types.ResRet.i32 %2607, 0
  %2609 = or i32 %2608, %2605
  %2610 = icmp eq i32 %2609, 0
  br i1 %2610, label %3442, label %2611

; <label>:2611                                    ; preds = %2601
  %2612 = and i32 %2605, 262144
  %2613 = icmp ne i32 %2612, 0
  %2614 = select i1 %2613, float %34, float 1.000000e+00
  %2615 = select i1 %2613, float %35, float 0.000000e+00
  %2616 = select i1 %2613, float %36, float 0.000000e+00
  %2617 = select i1 %2613, float %37, float 1.000000e+00
  %2618 = select i1 %2613, float %38, float %54
  %2619 = select i1 %2613, float %39, float %55
  %2620 = add i32 %32, 332
  %2621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.i32 %2621, 0
  %2623 = lshr i32 %2622, 16
  %2624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2623)  ; LegacyF16ToF32(value)
  %2625 = fmul fast float %2624, 0x3F50624DE0000000
  %2626 = add i32 %32, 136
  %2627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2626, i32 undef)  ; BufferLoad(srv,index,wot)
  %2628 = extractvalue %dx.types.ResRet.i32 %2627, 0
  %2629 = lshr i32 %2628, 16
  %2630 = and i32 %2629, 255
  %2631 = lshr i32 %2628, 24
  %2632 = add i32 %32, 340
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2632, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = and i32 %2634, 65535
  %2636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2635)  ; LegacyF16ToF32(value)
  %2637 = lshr i32 %2634, 16
  %2638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2637)  ; LegacyF16ToF32(value)
  %2639 = add i32 %32, 80
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2639, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = lshr i32 %2641, 22
  %2643 = shl nuw nsw i32 %2642, 5
  %2644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2643)  ; LegacyF16ToF32(value)
  %2645 = shl i32 %2641, 4
  %2646 = and i32 %2645, 32752
  %2647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2646)  ; LegacyF16ToF32(value)
  %2648 = lshr i32 %2641, 7
  %2649 = and i32 %2648, 32752
  %2650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2649)  ; LegacyF16ToF32(value)
  %2651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2652 = extractvalue %dx.types.CBufRet.f32 %2651, 3
  %2653 = fmul fast float %2652, 1.000000e+03
  %2654 = fmul fast float %351, %2653
  %2655 = call float @dx.op.unary.f32(i32 22, float %2654)  ; Frc(value)
  %2656 = fadd fast float %2655, %341
  %2657 = fmul fast float %352, %2653
  %2658 = call float @dx.op.unary.f32(i32 22, float %2657)  ; Frc(value)
  %2659 = fadd fast float %2658, %343
  %2660 = fmul fast float %2625, %2653
  %2661 = call float @dx.op.unary.f32(i32 22, float %2660)  ; Frc(value)
  %2662 = fmul fast float %2661, 0x401921FB60000000
  %2663 = fadd fast float %2662, %2644
  %2664 = call float @dx.op.unary.f32(i32 13, float %2663)  ; Sin(value)
  %2665 = call float @dx.op.unary.f32(i32 12, float %2663)  ; Cos(value)
  %2666 = fsub fast float -0.000000e+00, %2664
  %2667 = fadd fast float %2618, -5.000000e-01
  %2668 = fadd fast float %2619, -5.000000e-01
  %2669 = fmul fast float %2636, %2667
  %2670 = fmul fast float %2638, %2668
  %2671 = fadd fast float %2669, 5.000000e-01
  %2672 = fadd fast float %2670, 5.000000e-01
  %2673 = fmul fast float %2647, %2671
  %2674 = fmul fast float %2650, %2672
  %2675 = fmul fast float %2665, %2673
  %2676 = call float @dx.op.tertiary.f32(i32 46, float %2666, float %2674, float %2675)  ; FMad(a,b,c)
  %2677 = fmul fast float %2664, %2673
  %2678 = call float @dx.op.tertiary.f32(i32 46, float %2665, float %2674, float %2677)  ; FMad(a,b,c)
  %2679 = fadd fast float %2656, %2676
  %2680 = fadd fast float %2659, %2678
  %2681 = icmp ugt i32 %2630, 1
  %2682 = icmp ugt i32 %2628, 33554431
  %2683 = or i1 %2682, %2681
  br i1 %2683, label %2684, label %2709

; <label>:2684                                    ; preds = %2611
  %2685 = add i32 %32, 276
  %2686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2685, i32 undef)  ; BufferLoad(srv,index,wot)
  %2687 = extractvalue %dx.types.ResRet.i32 %2686, 0
  %2688 = lshr i32 %2687, 16
  %2689 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2688)  ; LegacyF16ToF32(value)
  %2690 = fmul fast float %2652, %2689
  %2691 = call float @dx.op.unary.f32(i32 22, float %2690)  ; Frc(value)
  %2692 = mul nuw nsw i32 %2630, %2631
  %2693 = uitofp i32 %2692 to float
  %2694 = fmul fast float %2691, %2693
  %2695 = call float @dx.op.unary.f32(i32 27, float %2694)  ; Round_ni(value)
  %2696 = fptoui float %2695 to i32
  %2697 = urem i32 %2696, %2630
  %2698 = udiv i32 %2696, %2631
  %2699 = call float @dx.op.unary.f32(i32 22, float %2679)  ; Frc(value)
  %2700 = call float @dx.op.unary.f32(i32 22, float %2680)  ; Frc(value)
  %2701 = uitofp i32 %2697 to float
  %2702 = uitofp i32 %2698 to float
  %2703 = fadd fast float %2699, %2701
  %2704 = fadd fast float %2700, %2702
  %2705 = uitofp i32 %2630 to float
  %2706 = uitofp i32 %2631 to float
  %2707 = fdiv fast float %2703, %2705
  %2708 = fdiv fast float %2704, %2706
  br label %2709

; <label>:2709                                    ; preds = %2684, %2611
  %2710 = phi float [ %2707, %2684 ], [ %2679, %2611 ]
  %2711 = phi float [ %2708, %2684 ], [ %2680, %2611 ]
  %2712 = and i32 %2605, 16777216
  %2713 = icmp eq i32 %2712, 0
  br i1 %2713, label %2823, label %2714

; <label>:2714                                    ; preds = %2709
  %2715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2716 = extractvalue %dx.types.CBufRet.f32 %2715, 0
  %2717 = extractvalue %dx.types.CBufRet.f32 %2715, 1
  %2718 = extractvalue %dx.types.CBufRet.f32 %2715, 2
  %2719 = fadd fast float %2716, %129
  %2720 = fadd fast float %2717, %130
  %2721 = fadd fast float %2718, %131
  %2722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2723 = extractvalue %dx.types.CBufRet.f32 %2722, 0
  %2724 = call float @dx.op.unary.f32(i32 7, float %2723)  ; Saturate(value)
  %2725 = icmp eq i32 %33, 65535
  br i1 %2725, label %2820, label %2726

; <label>:2726                                    ; preds = %2714
  %2727 = lshr i32 %33, 1
  %2728 = shl i32 %2727, 2
  %2729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2730 = extractvalue %dx.types.ResRet.i32 %2729, 0
  %2731 = and i32 %33, 1
  %2732 = icmp ne i32 %2731, 0
  %2733 = lshr i32 %2730, 16
  %2734 = and i32 %2730, 65535
  %2735 = select i1 %2732, i32 %2733, i32 %2734
  %2736 = icmp eq i32 %2735, 65535
  br i1 %2736, label %2816, label %2737

; <label>:2737                                    ; preds = %2726
  %2738 = mul nuw nsw i32 %2735, 40
  %2739 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2740 = extractvalue %dx.types.ResRet.f32 %2739, 0
  %2741 = extractvalue %dx.types.ResRet.f32 %2739, 1
  %2742 = extractvalue %dx.types.ResRet.f32 %2739, 2
  %2743 = add nuw nsw i32 %2738, 12
  %2744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2743, i32 undef)  ; BufferLoad(srv,index,wot)
  %2745 = extractvalue %dx.types.ResRet.f32 %2744, 0
  %2746 = extractvalue %dx.types.ResRet.f32 %2744, 1
  %2747 = extractvalue %dx.types.ResRet.f32 %2744, 2
  %2748 = add nuw nsw i32 %2738, 24
  %2749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2750 = extractvalue %dx.types.ResRet.f32 %2749, 0
  %2751 = extractvalue %dx.types.ResRet.f32 %2749, 1
  %2752 = extractvalue %dx.types.ResRet.f32 %2749, 2
  %2753 = add nuw nsw i32 %2738, 36
  %2754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.f32 %2754, 0
  %2756 = fsub fast float %2719, %2740
  %2757 = fsub fast float %2720, %2741
  %2758 = fsub fast float %2721, %2742
  %2759 = fmul fast float %2755, %2756
  %2760 = fmul fast float %2755, %2757
  %2761 = fmul fast float %2755, %2758
  %2762 = call float @dx.op.unary.f32(i32 27, float %2759)  ; Round_ni(value)
  %2763 = call float @dx.op.unary.f32(i32 27, float %2760)  ; Round_ni(value)
  %2764 = call float @dx.op.unary.f32(i32 27, float %2761)  ; Round_ni(value)
  %2765 = fadd fast float %2762, 5.000000e-01
  %2766 = fadd fast float %2763, 5.000000e-01
  %2767 = fadd fast float %2764, 5.000000e-01
  %2768 = fmul fast float %2765, %2745
  %2769 = fmul fast float %2766, %2746
  %2770 = fmul fast float %2767, %2747
  %2771 = shl i32 %33, 2
  %2772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2771, i32 undef)  ; BufferLoad(srv,index,wot)
  %2773 = extractvalue %dx.types.ResRet.i32 %2772, 0
  %2774 = add i32 %2773, 0
  %2775 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2774, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2776 = call float @dx.op.unary.f32(i32 22, float %2768)  ; Frc(value)
  %2777 = call float @dx.op.unary.f32(i32 22, float %2769)  ; Frc(value)
  %2778 = call float @dx.op.unary.f32(i32 22, float %2770)  ; Frc(value)
  %2779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2775, %dx.types.Handle %29, float %2776, float %2777, float %2778, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2780 = extractvalue %dx.types.ResRet.f32 %2779, 0
  %2781 = extractvalue %dx.types.ResRet.f32 %2779, 1
  %2782 = extractvalue %dx.types.ResRet.f32 %2779, 2
  %2783 = fmul fast float %2780, 1.023000e+03
  %2784 = fmul fast float %2781, 1.023000e+03
  %2785 = fmul fast float %2782, 1.023000e+03
  %2786 = fadd fast float %2783, 5.000000e-01
  %2787 = fadd fast float %2784, 5.000000e-01
  %2788 = fadd fast float %2785, 5.000000e-01
  %2789 = call float @dx.op.unary.f32(i32 27, float %2786)  ; Round_ni(value)
  %2790 = call float @dx.op.unary.f32(i32 27, float %2787)  ; Round_ni(value)
  %2791 = call float @dx.op.unary.f32(i32 27, float %2788)  ; Round_ni(value)
  %2792 = fsub fast float %2759, %2762
  %2793 = fsub fast float %2760, %2763
  %2794 = fsub fast float %2761, %2764
  %2795 = fmul fast float %2792, 7.500000e-01
  %2796 = fmul fast float %2793, 7.500000e-01
  %2797 = fmul fast float %2794, 7.500000e-01
  %2798 = fadd fast float %2762, 1.250000e-01
  %2799 = fadd fast float %2798, %2795
  %2800 = fadd fast float %2799, %2789
  %2801 = fadd fast float %2763, 1.250000e-01
  %2802 = fadd fast float %2801, %2796
  %2803 = fadd fast float %2802, %2790
  %2804 = fadd fast float %2764, 1.250000e-01
  %2805 = fadd fast float %2804, %2797
  %2806 = fadd fast float %2805, %2791
  %2807 = fmul fast float %2800, %2750
  %2808 = fmul fast float %2803, %2751
  %2809 = fmul fast float %2806, %2752
  %2810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2771, i32 undef)  ; BufferLoad(srv,index,wot)
  %2811 = extractvalue %dx.types.ResRet.i32 %2810, 0
  %2812 = add i32 %2811, 0
  %2813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2812, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2813, %dx.types.Handle %27, float %2807, float %2808, float %2809, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2815 = extractvalue %dx.types.ResRet.f32 %2814, 0
  br label %2816

; <label>:2816                                    ; preds = %2737, %2726
  %2817 = phi float [ %2815, %2737 ], [ -1.000000e+00, %2726 ]
  %2818 = fadd fast float %2817, %2724
  %2819 = call float @dx.op.unary.f32(i32 7, float %2818)  ; Saturate(value)
  br label %2820

; <label>:2820                                    ; preds = %2816, %2714
  %2821 = phi float [ %2819, %2816 ], [ %2724, %2714 ]
  %2822 = fmul fast float %2821, %407
  br label %2823

; <label>:2823                                    ; preds = %2820, %2709
  %2824 = phi float [ %2822, %2820 ], [ %407, %2709 ]
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = and i32 %2826, 256
  %2828 = icmp eq i32 %2827, 0
  br i1 %2828, label %2875, label %2829

; <label>:2829                                    ; preds = %2823
  %2830 = add i32 %32, 436
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = add i32 %2832, 0
  %2834 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2833, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2835 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2834, %dx.types.Handle %63, float %2710, float %2711, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2836 = extractvalue %dx.types.ResRet.f32 %2835, 0
  %2837 = add i32 %32, 148
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = shl i32 %2839, 4
  %2841 = and i32 %2840, 32752
  %2842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2841)  ; LegacyF16ToF32(value)
  %2843 = lshr i32 %2839, 7
  %2844 = and i32 %2843, 32752
  %2845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2844)  ; LegacyF16ToF32(value)
  %2846 = fsub fast float 1.000000e+00, %2824
  %2847 = call float @dx.op.binary.f32(i32 35, float %2846, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2848 = bitcast float %2824 to i32
  %2849 = sitofp i32 %2848 to float
  %2850 = fadd fast float %2849, 0xC1CFBF8940000000
  %2851 = fmul fast float %2845, %2850
  %2852 = fadd fast float %2851, 0x41CFBF8940000000
  %2853 = fptosi float %2852 to i32
  %2854 = bitcast i32 %2853 to float
  %2855 = bitcast float %2847 to i32
  %2856 = sitofp i32 %2855 to float
  %2857 = fadd fast float %2856, 0xC1CFBF8940000000
  %2858 = fmul fast float %2857, %2845
  %2859 = fadd fast float %2858, 0x41CFBF8940000000
  %2860 = fptosi float %2859 to i32
  %2861 = bitcast i32 %2860 to float
  %2862 = fmul fast float %2854, %2842
  %2863 = fmul fast float %2861, %2842
  %2864 = fsub fast float %2847, %2862
  %2865 = fadd fast float %2863, %2847
  %2866 = call float @dx.op.unary.f32(i32 7, float %2864)  ; Saturate(value)
  %2867 = call float @dx.op.unary.f32(i32 7, float %2865)  ; Saturate(value)
  %2868 = fsub fast float %2836, %2866
  %2869 = fsub fast float %2867, %2866
  %2870 = bitcast float %2869 to i32
  %2871 = sub nsw i32 2129859010, %2870
  %2872 = bitcast i32 %2871 to float
  %2873 = fmul fast float %2872, %2868
  %2874 = call float @dx.op.unary.f32(i32 7, float %2873)  ; Saturate(value)
  br label %2875

; <label>:2875                                    ; preds = %2829, %2823
  %2876 = phi float [ %2874, %2829 ], [ %2824, %2823 ]
  %2877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.i32 %2877, 0
  %2879 = and i32 %2878, 128
  %2880 = icmp eq i32 %2879, 0
  br i1 %2880, label %2897, label %2881

; <label>:2881                                    ; preds = %2875
  %2882 = add i32 %32, 420
  %2883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.i32 %2883, 0
  %2885 = add i32 %2884, 0
  %2886 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2885, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2887 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2886, %dx.types.Handle %63, float %2710, float %2711, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2888 = extractvalue %dx.types.ResRet.f32 %2887, 0
  %2889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %2890 = extractvalue %dx.types.ResRet.i32 %2889, 0
  %2891 = and i32 %2890, 524288
  %2892 = icmp ne i32 %2891, 0
  %2893 = fcmp fast ogt float %2888, 0x3FE0101020000000
  %2894 = select i1 %2893, float 1.000000e+00, float 0.000000e+00
  %2895 = select i1 %2892, float %2894, float %2888
  %2896 = fmul fast float %2895, %2876
  br label %2897

; <label>:2897                                    ; preds = %2881, %2875
  %2898 = phi float [ %2896, %2881 ], [ %2876, %2875 ]
  %2899 = fcmp fast ult float %2898, 0x3F70101020000000
  br i1 %2899, label %3442, label %2900

; <label>:2900                                    ; preds = %2897
  %2901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %2902 = extractvalue %dx.types.ResRet.i32 %2901, 0
  %2903 = and i32 %2902, 16
  %2904 = icmp eq i32 %2903, 0
  br i1 %2904, label %3103, label %2905

; <label>:2905                                    ; preds = %2900
  %2906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2626, i32 undef)  ; BufferLoad(srv,index,wot)
  %2907 = extractvalue %dx.types.ResRet.i32 %2906, 0
  %2908 = add i32 %32, 372
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = add i32 %2910, 0
  %2912 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2911, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2913 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2912, %dx.types.Handle %62, float %2710, float %2711, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2914 = extractvalue %dx.types.ResRet.f32 %2913, 0
  %2915 = extractvalue %dx.types.ResRet.f32 %2913, 1
  %2916 = extractvalue %dx.types.ResRet.f32 %2913, 2
  %2917 = extractvalue %dx.types.ResRet.f32 %2913, 3
  %2918 = and i32 %2907, 255
  %2919 = uitofp i32 %2918 to float
  %2920 = lshr i32 %2907, 8
  %2921 = and i32 %2920, 255
  %2922 = uitofp i32 %2921 to float
  %2923 = fmul fast float %2917, %2919
  %2924 = fadd fast float %2923, %2922
  %2925 = fmul fast float %2924, 0x3F70101000000000
  %2926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %2927 = extractvalue %dx.types.ResRet.i32 %2926, 0
  %2928 = and i32 %2927, 512
  %2929 = icmp eq i32 %2928, 0
  br i1 %2929, label %2938, label %2930

; <label>:2930                                    ; preds = %2905
  %2931 = add i32 %32, 452
  %2932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2933 = extractvalue %dx.types.ResRet.i32 %2932, 0
  %2934 = add i32 %2933, 0
  %2935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2934, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2936 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2935, %dx.types.Handle %63, float %2710, float %2711, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2937 = extractvalue %dx.types.ResRet.f32 %2936, 0
  br label %2938

; <label>:2938                                    ; preds = %2930, %2905
  %2939 = phi float [ %2937, %2930 ], [ 1.000000e+00, %2905 ]
  %2940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.i32 %2940, 0
  %2942 = and i32 %2941, 33554432
  %2943 = icmp eq i32 %2942, 0
  br i1 %2943, label %3050, label %2944

; <label>:2944                                    ; preds = %2938
  %2945 = add i32 %32, 272
  %2946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2945, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.i32 %2946, 0
  %2948 = and i32 %2947, 65535
  %2949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2948)  ; LegacyF16ToF32(value)
  %2950 = lshr i32 %2947, 16
  %2951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2950)  ; LegacyF16ToF32(value)
  %2952 = add i32 %32, 276
  %2953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2952, i32 undef)  ; BufferLoad(srv,index,wot)
  %2954 = extractvalue %dx.types.ResRet.i32 %2953, 0
  %2955 = and i32 %2954, 65535
  %2956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2955)  ; LegacyF16ToF32(value)
  %2957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.i32 %2957, 0
  %2959 = lshr i32 %2958, 24
  %2960 = uitofp i32 %2959 to float
  %2961 = fmul fast float %2960, 0x3F70101020000000
  %2962 = and i32 %2958, 255
  %2963 = uitofp i32 %2962 to float
  %2964 = fmul fast float %2963, 0x3F70101020000000
  %2965 = lshr i32 %2958, 8
  %2966 = and i32 %2965, 255
  %2967 = uitofp i32 %2966 to float
  %2968 = fmul fast float %2967, 0x3F70101020000000
  %2969 = lshr i32 %2958, 16
  %2970 = and i32 %2969, 255
  %2971 = uitofp i32 %2970 to float
  %2972 = fmul fast float %2971, 0x3F70101020000000
  %2973 = add i32 %32, 268
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = lshr i32 %2975, 24
  %2977 = uitofp i32 %2976 to float
  %2978 = fmul fast float %2977, 0x3F70101020000000
  %2979 = and i32 %2975, 255
  %2980 = uitofp i32 %2979 to float
  %2981 = fmul fast float %2980, 0x3F70101020000000
  %2982 = lshr i32 %2975, 8
  %2983 = and i32 %2982, 255
  %2984 = uitofp i32 %2983 to float
  %2985 = fmul fast float %2984, 0x3F70101020000000
  %2986 = lshr i32 %2975, 16
  %2987 = and i32 %2986, 255
  %2988 = uitofp i32 %2987 to float
  %2989 = fmul fast float %2988, 0x3F70101020000000
  %2990 = bitcast float %2914 to i32
  %2991 = ashr i32 %2990, 1
  %2992 = sub nsw i32 1597463174, %2991
  %2993 = bitcast i32 %2992 to float
  %2994 = fmul fast float %2914, 5.000000e-01
  %2995 = fmul fast float %2993, %2993
  %2996 = fmul fast float %2995, %2994
  %2997 = fsub fast float 1.500000e+00, %2996
  %2998 = fmul fast float %2993, %2914
  %2999 = fmul fast float %2998, %2997
  %3000 = bitcast float %2915 to i32
  %3001 = ashr i32 %3000, 1
  %3002 = sub nsw i32 1597463174, %3001
  %3003 = bitcast i32 %3002 to float
  %3004 = fmul fast float %2915, 5.000000e-01
  %3005 = fmul fast float %3003, %3003
  %3006 = fmul fast float %3005, %3004
  %3007 = fsub fast float 1.500000e+00, %3006
  %3008 = fmul fast float %3003, %2915
  %3009 = fmul fast float %3008, %3007
  %3010 = bitcast float %2916 to i32
  %3011 = ashr i32 %3010, 1
  %3012 = sub nsw i32 1597463174, %3011
  %3013 = bitcast i32 %3012 to float
  %3014 = fmul fast float %2916, 5.000000e-01
  %3015 = fmul fast float %3013, %3013
  %3016 = fmul fast float %3015, %3014
  %3017 = fsub fast float 1.500000e+00, %3016
  %3018 = fmul fast float %3013, %2916
  %3019 = fmul fast float %3018, %3017
  %3020 = fsub fast float %2999, %2981
  %3021 = fsub fast float %3009, %2985
  %3022 = fsub fast float %3019, %2989
  %3023 = fmul fast float %3020, %2949
  %3024 = fmul fast float %3021, %2951
  %3025 = fmul fast float %3022, %2956
  %3026 = fadd fast float %3023, %2964
  %3027 = fadd fast float %3024, %2968
  %3028 = fadd fast float %3025, %2972
  %3029 = call float @dx.op.unary.f32(i32 7, float %3026)  ; Saturate(value)
  %3030 = call float @dx.op.unary.f32(i32 7, float %3027)  ; Saturate(value)
  %3031 = call float @dx.op.unary.f32(i32 7, float %3028)  ; Saturate(value)
  %3032 = fmul fast float %3029, %3029
  %3033 = fmul fast float %3030, %3030
  %3034 = fmul fast float %3031, %3031
  %3035 = fsub fast float %3032, %2914
  %3036 = fsub fast float %3033, %2915
  %3037 = fsub fast float %3034, %2916
  %3038 = fmul fast float %3035, %2939
  %3039 = fmul fast float %3036, %2939
  %3040 = fmul fast float %3037, %2939
  %3041 = fadd fast float %3038, %2914
  %3042 = fadd fast float %3039, %2915
  %3043 = fadd fast float %3040, %2916
  %3044 = fadd fast float %2961, %2925
  %3045 = fsub fast float %3044, %2978
  %3046 = call float @dx.op.unary.f32(i32 7, float %3045)  ; Saturate(value)
  %3047 = fsub fast float %3046, %2925
  %3048 = fmul fast float %3047, %2939
  %3049 = fadd fast float %3048, %2925
  br label %3103

; <label>:3050                                    ; preds = %2938
  %3051 = and i32 %2941, 134217728
  %3052 = icmp eq i32 %3051, 0
  br i1 %3052, label %3087, label %3053

; <label>:3053                                    ; preds = %3050
  %3054 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %3055 = call float @dx.op.unary.f32(i32 24, float %332)  ; Sqrt(value)
  %3056 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %3057 = fadd fast float %3054, -5.000000e-01
  %3058 = fadd fast float %3055, -5.000000e-01
  %3059 = fadd fast float %3056, -5.000000e-01
  %3060 = fmul fast float %3057, %2939
  %3061 = fmul fast float %3058, %2939
  %3062 = fmul fast float %3059, %2939
  %3063 = fadd fast float %3060, 5.000000e-01
  %3064 = fadd fast float %3061, 5.000000e-01
  %3065 = fadd fast float %3062, 5.000000e-01
  %3066 = call float @dx.op.unary.f32(i32 24, float %2914)  ; Sqrt(value)
  %3067 = call float @dx.op.unary.f32(i32 24, float %2915)  ; Sqrt(value)
  %3068 = call float @dx.op.unary.f32(i32 24, float %2916)  ; Sqrt(value)
  %3069 = fmul fast float %3063, 2.000000e+00
  %3070 = fsub fast float 1.000000e+00, %3069
  %3071 = fmul fast float %3070, %3066
  %3072 = fadd fast float %3071, %3069
  %3073 = fmul fast float %3072, %3066
  %3074 = fmul fast float %3064, 2.000000e+00
  %3075 = fsub fast float 1.000000e+00, %3074
  %3076 = fmul fast float %3075, %3067
  %3077 = fadd fast float %3076, %3074
  %3078 = fmul fast float %3077, %3067
  %3079 = fmul fast float %3065, 2.000000e+00
  %3080 = fsub fast float 1.000000e+00, %3079
  %3081 = fmul fast float %3080, %3068
  %3082 = fadd fast float %3081, %3079
  %3083 = fmul fast float %3082, %3068
  %3084 = fmul fast float %3073, %3073
  %3085 = fmul fast float %3078, %3078
  %3086 = fmul fast float %3083, %3083
  br label %3103

; <label>:3087                                    ; preds = %3050
  %3088 = fmul fast float %328, %328
  %3089 = fmul fast float %332, %332
  %3090 = fmul fast float %336, %336
  %3091 = fadd fast float %3088, -1.000000e+00
  %3092 = fadd fast float %3089, -1.000000e+00
  %3093 = fadd fast float %3090, -1.000000e+00
  %3094 = fmul fast float %2939, %3091
  %3095 = fmul fast float %2939, %3092
  %3096 = fmul fast float %2939, %3093
  %3097 = fadd fast float %3094, 1.000000e+00
  %3098 = fadd fast float %3095, 1.000000e+00
  %3099 = fadd fast float %3096, 1.000000e+00
  %3100 = fmul fast float %3097, %2914
  %3101 = fmul fast float %3098, %2915
  %3102 = fmul fast float %3099, %2916
  br label %3103

; <label>:3103                                    ; preds = %3087, %3053, %2944, %2900
  %3104 = phi float [ %3049, %2944 ], [ %2925, %3053 ], [ %2925, %3087 ], [ 0x3FA23C0BE0000000, %2900 ]
  %3105 = phi float [ %3041, %2944 ], [ %3084, %3053 ], [ %3100, %3087 ], [ 1.000000e+00, %2900 ]
  %3106 = phi float [ %3042, %2944 ], [ %3085, %3053 ], [ %3101, %3087 ], [ 1.000000e+00, %2900 ]
  %3107 = phi float [ %3043, %2944 ], [ %3086, %3053 ], [ %3102, %3087 ], [ 1.000000e+00, %2900 ]
  %3108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3109 = extractvalue %dx.types.CBufRet.i32 %3108, 1
  %3110 = and i32 %3109, 1
  %3111 = icmp ne i32 %3110, 0
  %3112 = add i32 %32, 356
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = and i32 %3114, 32
  %3116 = icmp ne i32 %3115, 0
  %3117 = and i1 %3111, %3116
  %3118 = select i1 %3117, float 1.000000e+00, float %3105
  %3119 = select i1 %3117, float 0x3FD3333340000000, float %3106
  %3120 = select i1 %3117, float 0x3FD3333340000000, float %3107
  %3121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = and i32 %3122, 32
  %3124 = icmp eq i32 %3123, 0
  br i1 %3124, label %3197, label %3125

; <label>:3125                                    ; preds = %3103
  %3126 = add i32 %32, 140
  %3127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3126, i32 undef)  ; BufferLoad(srv,index,wot)
  %3128 = extractvalue %dx.types.ResRet.i32 %3127, 0
  %3129 = add i32 %32, 388
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3129, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = add i32 %3131, 0
  %3133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3132, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3134 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3133, %dx.types.Handle %62, float %2710, float %2711, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3135 = extractvalue %dx.types.ResRet.f32 %3134, 0
  %3136 = extractvalue %dx.types.ResRet.f32 %3134, 1
  %3137 = extractvalue %dx.types.ResRet.f32 %3134, 2
  %3138 = extractvalue %dx.types.ResRet.f32 %3134, 3
  %3139 = and i32 %3128, 255
  %3140 = uitofp i32 %3139 to float
  %3141 = lshr i32 %3128, 8
  %3142 = and i32 %3141, 255
  %3143 = uitofp i32 %3142 to float
  %3144 = lshr i32 %3128, 16
  %3145 = and i32 %3144, 255
  %3146 = uitofp i32 %3145 to float
  %3147 = fmul fast float %3146, 0x3F70101000000000
  %3148 = fmul fast float %3135, %3140
  %3149 = fadd fast float %3148, %3143
  %3150 = fmul fast float %3149, 0x3F70101000000000
  %3151 = fadd fast float %3136, -5.000000e-01
  %3152 = fadd fast float %3138, -5.000000e-01
  %3153 = fmul fast float %3151, %3147
  %3154 = fmul fast float %3152, %3147
  %3155 = fadd fast float %3153, 5.000000e-01
  %3156 = fadd fast float %3154, 5.000000e-01
  %3157 = fmul fast float %3155, 2.000000e+00
  %3158 = fadd fast float %3157, -1.000000e+00
  %3159 = fmul fast float %3156, 2.000000e+00
  %3160 = fadd fast float %3159, -1.000000e+00
  %3161 = fadd fast float %3158, %3160
  %3162 = fmul fast float %3161, 5.000000e-01
  %3163 = fsub fast float %3158, %3160
  %3164 = fmul fast float %3163, 5.000000e-01
  %3165 = call float @dx.op.unary.f32(i32 6, float %3162)  ; FAbs(value)
  %3166 = fsub fast float 1.000000e+00, %3165
  %3167 = call float @dx.op.unary.f32(i32 6, float %3164)  ; FAbs(value)
  %3168 = fsub fast float %3166, %3167
  %3169 = call float @dx.op.dot3.f32(i32 55, float %3162, float %3164, float %3168, float %3162, float %3164, float %3168)  ; Dot3(ax,ay,az,bx,by,bz)
  %3170 = call float @dx.op.unary.f32(i32 25, float %3169)  ; Rsqrt(value)
  %3171 = fmul fast float %3162, %3170
  %3172 = fmul fast float %3164, %3170
  %3173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3174 = extractvalue %dx.types.ResRet.i32 %3173, 0
  %3175 = and i32 %3174, 67108864
  %3176 = icmp eq i32 %3175, 0
  br i1 %3176, label %3193, label %3177

; <label>:3177                                    ; preds = %3125
  %3178 = add i32 %32, 328
  %3179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3180 = extractvalue %dx.types.ResRet.i32 %3179, 0
  %3181 = and i32 %3180, 65535
  %3182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3181)  ; LegacyF16ToF32(value)
  %3183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3184 = extractvalue %dx.types.ResRet.i32 %3183, 0
  %3185 = and i32 %3184, 65535
  %3186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3185)  ; LegacyF16ToF32(value)
  %3187 = lshr i32 %3180, 16
  %3188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3187)  ; LegacyF16ToF32(value)
  %3189 = fsub fast float %3150, %3188
  %3190 = fmul fast float %3189, %3182
  %3191 = fadd fast float %3190, %3186
  %3192 = call float @dx.op.unary.f32(i32 7, float %3191)  ; Saturate(value)
  br label %3193

; <label>:3193                                    ; preds = %3177, %3125
  %3194 = phi float [ %3192, %3177 ], [ %3150, %3125 ]
  %3195 = call float @dx.op.dot2.f32(i32 54, float %3171, float %3172, float %2614, float %2615)  ; Dot2(ax,ay,bx,by)
  %3196 = call float @dx.op.dot2.f32(i32 54, float %3171, float %3172, float %2616, float %2617)  ; Dot2(ax,ay,bx,by)
  br label %3197

; <label>:3197                                    ; preds = %3193, %3103
  %3198 = phi float [ %3194, %3193 ], [ 0x3FD6666660000000, %3103 ]
  %3199 = phi float [ %3195, %3193 ], [ 0.000000e+00, %3103 ]
  %3200 = phi float [ %3196, %3193 ], [ 0.000000e+00, %3103 ]
  %3201 = phi float [ %3137, %3193 ], [ 1.000000e+00, %3103 ]
  %3202 = add i32 %32, 208
  %3203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3202, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.i32 %3203, 0
  %3205 = lshr i32 %3204, 22
  %3206 = shl nuw nsw i32 %3205, 5
  %3207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3206)  ; LegacyF16ToF32(value)
  %3208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3209 = extractvalue %dx.types.ResRet.i32 %3208, 0
  %3210 = and i32 %3209, 64
  %3211 = icmp eq i32 %3210, 0
  br i1 %3211, label %3245, label %3212

; <label>:3212                                    ; preds = %3197
  %3213 = add i32 %32, 404
  %3214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3213, i32 undef)  ; BufferLoad(srv,index,wot)
  %3215 = extractvalue %dx.types.ResRet.i32 %3214, 0
  %3216 = add i32 %3215, 0
  %3217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3216, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3219 = extractvalue %dx.types.ResRet.i32 %3218, 0
  %3220 = and i32 %3219, 131072
  %3221 = icmp eq i32 %3220, 0
  %3222 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3217, %dx.types.Handle %62, float %2710, float %2711, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3223 = extractvalue %dx.types.ResRet.f32 %3222, 0
  %3224 = extractvalue %dx.types.ResRet.f32 %3222, 1
  %3225 = extractvalue %dx.types.ResRet.f32 %3222, 2
  %3226 = fmul fast float %3223, %316
  %3227 = fmul fast float %3224, %319
  %3228 = fmul fast float %3225, %322
  br i1 %3221, label %3235, label %3229

; <label>:3229                                    ; preds = %3212
  %3230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3231 = extractvalue %dx.types.CBufRet.f32 %3230, 0
  %3232 = fmul fast float %3231, %3226
  %3233 = fmul fast float %3231, %3227
  %3234 = fmul fast float %3231, %3228
  br label %3235

; <label>:3235                                    ; preds = %3229, %3212
  %3236 = phi float [ %3232, %3229 ], [ %3226, %3212 ]
  %3237 = phi float [ %3233, %3229 ], [ %3227, %3212 ]
  %3238 = phi float [ %3234, %3229 ], [ %3228, %3212 ]
  %3239 = fmul fast float %3236, %3207
  %3240 = select i1 %170, float %3239, float %3236
  %3241 = call float @dx.op.dot3.f32(i32 55, float %3240, float %3237, float %3238, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3242 = select i1 %170, float 0.000000e+00, float %3236
  %3243 = select i1 %170, float %3241, float %3237
  %3244 = select i1 %170, float 0.000000e+00, float %3238
  br label %3245

; <label>:3245                                    ; preds = %3235, %3197
  %3246 = phi float [ %3242, %3235 ], [ 0.000000e+00, %3197 ]
  %3247 = phi float [ %3243, %3235 ], [ 0.000000e+00, %3197 ]
  %3248 = phi float [ %3244, %3235 ], [ 0.000000e+00, %3197 ]
  %3249 = add i32 %32, 144
  %3250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3249, i32 undef)  ; BufferLoad(srv,index,wot)
  %3251 = extractvalue %dx.types.ResRet.i32 %3250, 0
  %3252 = and i32 %3251, 255
  %3253 = uitofp i32 %3252 to float
  %3254 = lshr i32 %3251, 8
  %3255 = and i32 %3254, 255
  %3256 = uitofp i32 %3255 to float
  %3257 = call float @dx.op.dot3.f32(i32 55, float %3118, float %3119, float %3120, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3258 = fmul fast float %3256, %3257
  %3259 = fadd fast float %3258, %3253
  %3260 = fmul fast float %3259, 0x3F70101020000000
  %3261 = call float @dx.op.unary.f32(i32 7, float %3260)  ; Saturate(value)
  br i1 %2602, label %3262, label %3270

; <label>:3262                                    ; preds = %3245
  %3263 = fsub fast float 1.000000e+00, %2898
  %3264 = fmul fast float %3263, %2591
  %3265 = fmul fast float %3263, %2592
  %3266 = fmul fast float %3263, %2593
  %3267 = fmul fast float %3263, %2594
  %3268 = fmul fast float %3263, %2595
  %3269 = fmul fast float %3263, %2596
  br label %3270

; <label>:3270                                    ; preds = %3262, %3245
  %3271 = phi float [ %3264, %3262 ], [ %2591, %3245 ]
  %3272 = phi float [ %3265, %3262 ], [ %2592, %3245 ]
  %3273 = phi float [ %3266, %3262 ], [ %2593, %3245 ]
  %3274 = phi float [ %3267, %3262 ], [ %2594, %3245 ]
  %3275 = phi float [ %3268, %3262 ], [ %2595, %3245 ]
  %3276 = phi float [ %3269, %3262 ], [ %2596, %3245 ]
  %3277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3278 = extractvalue %dx.types.ResRet.i32 %3277, 0
  %3279 = and i32 %3278, 3
  %3280 = icmp eq i32 %3279, 3
  br i1 %3280, label %3359, label %3281

; <label>:3281                                    ; preds = %3270
  %3282 = and i32 %3278, 16
  %3283 = icmp ne i32 %3282, 0
  %3284 = select i1 %3283, float %2898, float 0.000000e+00
  %3285 = icmp eq i32 %3279, 0
  br i1 %3285, label %3286, label %3314

; <label>:3286                                    ; preds = %3281
  %3287 = and i32 %3278, 64
  %3288 = icmp ne i32 %3287, 0
  %3289 = select i1 %3288, float %2898, float 0.000000e+00
  %3290 = fsub fast float %3118, %3271
  %3291 = fsub fast float %3119, %3272
  %3292 = fsub fast float %3120, %3273
  %3293 = fmul fast float %3284, %3290
  %3294 = fmul fast float %3284, %3291
  %3295 = fmul fast float %3284, %3292
  %3296 = fadd fast float %3293, %3271
  %3297 = fadd fast float %3294, %3272
  %3298 = fadd fast float %3295, %3273
  %3299 = fsub fast float %3104, %2597
  %3300 = fmul fast float %3284, %3299
  %3301 = fadd fast float %3300, %2597
  %3302 = fsub fast float %3246, %3274
  %3303 = fsub fast float %3247, %3275
  %3304 = fsub fast float %3248, %3276
  %3305 = fmul fast float %3289, %3302
  %3306 = fmul fast float %3289, %3303
  %3307 = fmul fast float %3289, %3304
  %3308 = fadd fast float %3305, %3274
  %3309 = fadd fast float %3306, %3275
  %3310 = fadd fast float %3307, %3276
  %3311 = fsub fast float %3261, %2600
  %3312 = fmul fast float %3284, %3311
  %3313 = fadd fast float %3312, %2600
  br label %3359

; <label>:3314                                    ; preds = %3281
  %3315 = icmp eq i32 %3279, 1
  br i1 %3315, label %3316, label %3329

; <label>:3316                                    ; preds = %3314
  %3317 = fadd fast float %3118, -1.000000e+00
  %3318 = fadd fast float %3119, -1.000000e+00
  %3319 = fadd fast float %3120, -1.000000e+00
  %3320 = fmul fast float %3284, %3317
  %3321 = fmul fast float %3284, %3318
  %3322 = fmul fast float %3284, %3319
  %3323 = fadd fast float %3320, 1.000000e+00
  %3324 = fadd fast float %3321, 1.000000e+00
  %3325 = fadd fast float %3322, 1.000000e+00
  %3326 = fmul fast float %3323, %3271
  %3327 = fmul fast float %3324, %3272
  %3328 = fmul fast float %3325, %3273
  br label %3359

; <label>:3329                                    ; preds = %3314
  %3330 = icmp eq i32 %3279, 2
  br i1 %3330, label %3331, label %3359

; <label>:3331                                    ; preds = %3329
  %3332 = call float @dx.op.unary.f32(i32 24, float %3118)  ; Sqrt(value)
  %3333 = call float @dx.op.unary.f32(i32 24, float %3119)  ; Sqrt(value)
  %3334 = call float @dx.op.unary.f32(i32 24, float %3120)  ; Sqrt(value)
  %3335 = fadd fast float %3332, -5.000000e-01
  %3336 = fadd fast float %3333, -5.000000e-01
  %3337 = fadd fast float %3334, -5.000000e-01
  %3338 = fmul fast float %3335, %3284
  %3339 = fmul fast float %3336, %3284
  %3340 = fmul fast float %3337, %3284
  %3341 = fadd fast float %3338, 5.000000e-01
  %3342 = fadd fast float %3339, 5.000000e-01
  %3343 = fadd fast float %3340, 5.000000e-01
  %3344 = fmul fast float %3341, 2.000000e+00
  %3345 = fsub fast float 1.000000e+00, %3344
  %3346 = fmul fast float %3345, %3271
  %3347 = fadd fast float %3346, %3344
  %3348 = fmul fast float %3347, %3271
  %3349 = fmul fast float %3342, 2.000000e+00
  %3350 = fsub fast float 1.000000e+00, %3349
  %3351 = fmul fast float %3350, %3272
  %3352 = fadd fast float %3351, %3349
  %3353 = fmul fast float %3352, %3272
  %3354 = fmul fast float %3343, 2.000000e+00
  %3355 = fsub fast float 1.000000e+00, %3354
  %3356 = fmul fast float %3355, %3273
  %3357 = fadd fast float %3356, %3354
  %3358 = fmul fast float %3357, %3273
  br label %3359

; <label>:3359                                    ; preds = %3331, %3329, %3316, %3286, %3270
  %3360 = phi float [ %3271, %3270 ], [ %3348, %3331 ], [ %3271, %3329 ], [ %3326, %3316 ], [ %3296, %3286 ]
  %3361 = phi float [ %3272, %3270 ], [ %3353, %3331 ], [ %3272, %3329 ], [ %3327, %3316 ], [ %3297, %3286 ]
  %3362 = phi float [ %3273, %3270 ], [ %3358, %3331 ], [ %3273, %3329 ], [ %3328, %3316 ], [ %3298, %3286 ]
  %3363 = phi float [ %3274, %3270 ], [ %3274, %3331 ], [ %3274, %3329 ], [ %3274, %3316 ], [ %3308, %3286 ]
  %3364 = phi float [ %3275, %3270 ], [ %3275, %3331 ], [ %3275, %3329 ], [ %3275, %3316 ], [ %3309, %3286 ]
  %3365 = phi float [ %3276, %3270 ], [ %3276, %3331 ], [ %3276, %3329 ], [ %3276, %3316 ], [ %3310, %3286 ]
  %3366 = phi float [ %2597, %3270 ], [ %2597, %3331 ], [ %2597, %3329 ], [ %2597, %3316 ], [ %3301, %3286 ]
  %3367 = phi float [ %2600, %3270 ], [ %2600, %3331 ], [ %2600, %3329 ], [ %2600, %3316 ], [ %3313, %3286 ]
  %3368 = and i32 %3278, 12
  %3369 = icmp eq i32 %3368, 12
  br i1 %3369, label %3442, label %3370

; <label>:3370                                    ; preds = %3359
  %3371 = and i32 %3278, 2097184
  %3372 = icmp eq i32 %3371, 2097184
  %3373 = select i1 %3372, float %2898, float 0.000000e+00
  %3374 = and i32 %3278, 4194336
  %3375 = icmp eq i32 %3374, 4194336
  %3376 = select i1 %3375, float %2898, float 0.000000e+00
  %3377 = and i32 %3278, 8388640
  %3378 = icmp eq i32 %3377, 8388640
  %3379 = select i1 %3378, float %2898, float 0.000000e+00
  %3380 = icmp eq i32 %3368, 0
  br i1 %3380, label %3381, label %3394

; <label>:3381                                    ; preds = %3370
  %3382 = fsub fast float %3199, %2589
  %3383 = fsub fast float %3200, %2590
  %3384 = fmul fast float %3373, %3382
  %3385 = fmul fast float %3373, %3383
  %3386 = fadd fast float %3384, %2589
  %3387 = fadd fast float %3385, %2590
  %3388 = fsub fast float %3201, %2599
  %3389 = fmul fast float %3376, %3388
  %3390 = fadd fast float %3389, %2599
  %3391 = fsub fast float %3198, %2598
  %3392 = fmul fast float %3379, %3391
  %3393 = fadd fast float %3392, %2598
  br label %3442

; <label>:3394                                    ; preds = %3370
  %3395 = icmp eq i32 %3368, 4
  br i1 %3395, label %3396, label %3428

; <label>:3396                                    ; preds = %3394
  %3397 = fmul fast float %3373, %3199
  %3398 = fmul fast float %3373, %3200
  %3399 = fadd fast float %3397, %2589
  %3400 = fadd fast float %3398, %2590
  %3401 = call float @dx.op.binary.f32(i32 36, float %2599, float %3201)  ; FMin(a,b)
  %3402 = fsub fast float %3401, %2599
  %3403 = fmul fast float %3402, %3376
  %3404 = fadd fast float %3403, %2599
  %3405 = fadd fast float %3198, %2598
  %3406 = fmul fast float %3405, 0x3FF337FAE0000000
  %3407 = fmul fast float %2598, %2598
  %3408 = fmul fast float %3198, %3198
  %3409 = fadd fast float %3408, %3407
  %3410 = fmul fast float %3409, 0x3FE5152B00000000
  %3411 = fmul fast float %2598, 0xBFCC1F85E0000000
  %3412 = fmul fast float %3411, %3198
  %3413 = fadd fast float %3412, 0xBFE1363700000000
  %3414 = fadd fast float %3413, %3406
  %3415 = fsub fast float %3414, %3410
  %3416 = fmul fast float %3405, 0x3FBA6F0D00000000
  %3417 = fmul fast float %3409, 0x3FD0432880000000
  %3418 = fmul fast float %2598, 0xBFEF110800000000
  %3419 = fmul fast float %3418, %3198
  %3420 = fadd fast float %3419, 1.000000e+00
  %3421 = fsub fast float %3420, %3416
  %3422 = fadd fast float %3421, %3417
  %3423 = fdiv fast float %3415, %3422
  %3424 = call float @dx.op.unary.f32(i32 7, float %3423)  ; Saturate(value)
  %3425 = fsub fast float %3424, %2598
  %3426 = fmul fast float %3425, %3379
  %3427 = fadd fast float %3426, %2598
  br label %3442

; <label>:3428                                    ; preds = %3394
  %3429 = icmp eq i32 %3368, 8
  br i1 %3429, label %3430, label %3442

; <label>:3430                                    ; preds = %3428
  %3431 = fmul fast float %3373, %3199
  %3432 = fmul fast float %3373, %3200
  %3433 = fadd fast float %3431, %2589
  %3434 = fadd fast float %3432, %2590
  %3435 = call float @dx.op.binary.f32(i32 36, float %2599, float %3201)  ; FMin(a,b)
  %3436 = fsub fast float %3435, %2599
  %3437 = fmul fast float %3436, %3376
  %3438 = fadd fast float %3437, %2599
  %3439 = fsub fast float %3198, %2598
  %3440 = fmul fast float %3379, %3439
  %3441 = fadd fast float %3440, %2598
  br label %3442

; <label>:3442                                    ; preds = %3430, %3428, %3396, %3381, %3359, %2897, %2601, %2588
  %3443 = phi float [ %2589, %3359 ], [ %2589, %2897 ], [ %2589, %2588 ], [ %2589, %2601 ], [ %3386, %3381 ], [ %3399, %3396 ], [ %2589, %3428 ], [ %3433, %3430 ]
  %3444 = phi float [ %2590, %3359 ], [ %2590, %2897 ], [ %2590, %2588 ], [ %2590, %2601 ], [ %3387, %3381 ], [ %3400, %3396 ], [ %2590, %3428 ], [ %3434, %3430 ]
  %3445 = phi float [ %3360, %3359 ], [ %2591, %2897 ], [ %2591, %2588 ], [ %2591, %2601 ], [ %3360, %3381 ], [ %3360, %3396 ], [ %3360, %3428 ], [ %3360, %3430 ]
  %3446 = phi float [ %3361, %3359 ], [ %2592, %2897 ], [ %2592, %2588 ], [ %2592, %2601 ], [ %3361, %3381 ], [ %3361, %3396 ], [ %3361, %3428 ], [ %3361, %3430 ]
  %3447 = phi float [ %3362, %3359 ], [ %2593, %2897 ], [ %2593, %2588 ], [ %2593, %2601 ], [ %3362, %3381 ], [ %3362, %3396 ], [ %3362, %3428 ], [ %3362, %3430 ]
  %3448 = phi float [ %3363, %3359 ], [ %2594, %2897 ], [ %2594, %2588 ], [ %2594, %2601 ], [ %3363, %3381 ], [ %3363, %3396 ], [ %3363, %3428 ], [ %3363, %3430 ]
  %3449 = phi float [ %3364, %3359 ], [ %2595, %2897 ], [ %2595, %2588 ], [ %2595, %2601 ], [ %3364, %3381 ], [ %3364, %3396 ], [ %3364, %3428 ], [ %3364, %3430 ]
  %3450 = phi float [ %3365, %3359 ], [ %2596, %2897 ], [ %2596, %2588 ], [ %2596, %2601 ], [ %3365, %3381 ], [ %3365, %3396 ], [ %3365, %3428 ], [ %3365, %3430 ]
  %3451 = phi float [ %3366, %3359 ], [ %2597, %2897 ], [ %2597, %2588 ], [ %2597, %2601 ], [ %3366, %3381 ], [ %3366, %3396 ], [ %3366, %3428 ], [ %3366, %3430 ]
  %3452 = phi float [ %2598, %3359 ], [ %2598, %2897 ], [ %2598, %2588 ], [ %2598, %2601 ], [ %3393, %3381 ], [ %3427, %3396 ], [ %2598, %3428 ], [ %3441, %3430 ]
  %3453 = phi float [ %2599, %3359 ], [ %2599, %2897 ], [ %2599, %2588 ], [ %2599, %2601 ], [ %3390, %3381 ], [ %3404, %3396 ], [ %2599, %3428 ], [ %3438, %3430 ]
  %3454 = phi float [ %3367, %3359 ], [ %2600, %2897 ], [ %2600, %2588 ], [ %2600, %2601 ], [ %3367, %3381 ], [ %3367, %3396 ], [ %3367, %3428 ], [ %3367, %3430 ]
  %3455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3456 = extractvalue %dx.types.CBufRet.f32 %3455, 0
  %3457 = call float @dx.op.dot2.f32(i32 54, float %3443, float %3444, float %3443, float %3444)  ; Dot2(ax,ay,bx,by)
  %3458 = fmul fast float %3457, 0x3FE3333340000000
  %3459 = fsub fast float 1.000000e+00, %3458
  %3460 = call float @dx.op.dot3.f32(i32 55, float %3443, float %3444, float %3459, float %3443, float %3444, float %3459)  ; Dot3(ax,ay,az,bx,by,bz)
  %3461 = call float @dx.op.unary.f32(i32 25, float %3460)  ; Rsqrt(value)
  %3462 = fmul fast float %3461, %3443
  %3463 = fmul fast float %3461, %3444
  %3464 = fmul fast float %3459, %3461
  %3465 = fmul fast float %3464, %73
  %3466 = fmul fast float %3464, %74
  %3467 = fmul fast float %3464, %75
  %3468 = fmul fast float %3462, %47
  %3469 = fmul fast float %3462, %48
  %3470 = fmul fast float %3462, %49
  %3471 = fadd fast float %3465, %3468
  %3472 = fadd fast float %3466, %3469
  %3473 = fadd fast float %3467, %3470
  %3474 = fmul fast float %85, %3463
  %3475 = fmul fast float %86, %3463
  %3476 = fmul fast float %87, %3463
  %3477 = fadd fast float %3471, %3474
  %3478 = fadd fast float %3472, %3475
  %3479 = fadd fast float %3473, %3476
  %3480 = call float @dx.op.dot3.f32(i32 55, float %3477, float %3478, float %3479, float %3477, float %3478, float %3479)  ; Dot3(ax,ay,az,bx,by,bz)
  %3481 = call float @dx.op.unary.f32(i32 25, float %3480)  ; Rsqrt(value)
  %3482 = fmul fast float %3477, %3481
  %3483 = fmul fast float %3478, %3481
  %3484 = fmul fast float %3479, %3481
  %3485 = call float @dx.op.unary.f32(i32 83, float %129)  ; DerivCoarseX(value)
  %3486 = call float @dx.op.unary.f32(i32 83, float %130)  ; DerivCoarseX(value)
  %3487 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3488 = call float @dx.op.unary.f32(i32 84, float %129)  ; DerivCoarseY(value)
  %3489 = call float @dx.op.unary.f32(i32 84, float %130)  ; DerivCoarseY(value)
  %3490 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3491 = fadd fast float %3485, %129
  %3492 = fadd fast float %3486, %130
  %3493 = fadd fast float %3487, %131
  %3494 = fadd fast float %3488, %129
  %3495 = fadd fast float %3489, %130
  %3496 = fadd fast float %3490, %131
  %3497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3498 = extractvalue %dx.types.CBufRet.f32 %3497, 0
  %3499 = extractvalue %dx.types.CBufRet.f32 %3497, 1
  %3500 = extractvalue %dx.types.CBufRet.f32 %3497, 2
  %3501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3502 = extractvalue %dx.types.CBufRet.f32 %3501, 2
  %3503 = extractvalue %dx.types.CBufRet.f32 %3501, 3
  %3504 = fmul fast float %3498, %66
  %3505 = fmul fast float %3504, %3502
  %3506 = fmul fast float %3499, %67
  %3507 = fmul fast float %3506, %3503
  %3508 = fptoui float %3505 to i32
  %3509 = fptoui float %3507 to i32
  %3510 = fadd fast float %3498, -1.000000e+00
  %3511 = fadd fast float %3499, -1.000000e+00
  %3512 = fptoui float %3510 to i32
  %3513 = fptoui float %3511 to i32
  %3514 = call i32 @dx.op.binary.i32(i32 40, i32 %3508, i32 %3512)  ; UMin(a,b)
  %3515 = call i32 @dx.op.binary.i32(i32 40, i32 %3509, i32 %3513)  ; UMin(a,b)
  %3516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3517 = extractvalue %dx.types.CBufRet.f32 %3516, 2
  %3518 = extractvalue %dx.types.CBufRet.f32 %3516, 3
  %3519 = fmul fast float %3517, %61
  %3520 = fsub fast float %3519, %3518
  %3521 = fadd fast float %3500, -1.000000e+00
  %3522 = call float @dx.op.binary.f32(i32 36, float %3520, float %3521)  ; FMin(a,b)
  %3523 = fptoui float %3522 to i32
  %3524 = fptoui float %3498 to i32
  %3525 = fptoui float %3499 to i32
  %3526 = mul i32 %3523, %3525
  %3527 = add i32 %3526, %3515
  %3528 = mul i32 %3527, %3524
  %3529 = add i32 %3528, %3514
  %3530 = shl i32 %3529, 2
  %3531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3530, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.i32 %3531, 0
  %3533 = and i32 %3532, 1023
  %3534 = lshr i32 %3532, 10
  %3535 = icmp eq i32 %3533, 0
  br i1 %3535, label %3961, label %3536

; <label>:3536                                    ; preds = %3442
  %3537 = and i32 %3532, 1023
  br label %3538

; <label>:3538                                    ; preds = %3664, %3536
  %3539 = phi i32 [ %3614, %3664 ], [ 0, %3536 ]
  %3540 = phi float [ %3665, %3664 ], [ 0.000000e+00, %3536 ]
  %3541 = phi float [ %3666, %3664 ], [ %3456, %3536 ]
  %3542 = phi float [ %3667, %3664 ], [ %3454, %3536 ]
  %3543 = phi float [ %3668, %3664 ], [ 0.000000e+00, %3536 ]
  %3544 = phi float [ %3669, %3664 ], [ 0.000000e+00, %3536 ]
  %3545 = phi float [ %3670, %3664 ], [ %3448, %3536 ]
  %3546 = phi float [ %3671, %3664 ], [ %3449, %3536 ]
  %3547 = phi float [ %3672, %3664 ], [ %3450, %3536 ]
  %3548 = phi float [ %3673, %3664 ], [ %3482, %3536 ]
  %3549 = phi float [ %3674, %3664 ], [ %3483, %3536 ]
  %3550 = phi float [ %3675, %3664 ], [ %3484, %3536 ]
  %3551 = phi float [ %3676, %3664 ], [ %3453, %3536 ]
  %3552 = phi float [ %3677, %3664 ], [ %3452, %3536 ]
  %3553 = phi float [ %3678, %3664 ], [ 0.000000e+00, %3536 ]
  %3554 = phi float [ %3679, %3664 ], [ %3451, %3536 ]
  %3555 = phi float [ %3680, %3664 ], [ %3445, %3536 ]
  %3556 = phi float [ %3681, %3664 ], [ %3446, %3536 ]
  %3557 = phi float [ %3682, %3664 ], [ %3447, %3536 ]
  %3558 = add nuw nsw i32 %3539, %3534
  %3559 = shl i32 %3558, 2
  %3560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3559, i32 undef)  ; BufferLoad(srv,index,wot)
  %3561 = extractvalue %dx.types.ResRet.i32 %3560, 0
  %3562 = shl i32 %3561, 8
  %3563 = or i32 %3562, 48
  %3564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3563, i32 undef)  ; BufferLoad(srv,index,wot)
  %3565 = extractvalue %dx.types.ResRet.f32 %3564, 0
  %3566 = extractvalue %dx.types.ResRet.f32 %3564, 1
  %3567 = extractvalue %dx.types.ResRet.f32 %3564, 2
  %3568 = extractvalue %dx.types.ResRet.f32 %3564, 3
  %3569 = or i32 %3562, 64
  %3570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3569, i32 undef)  ; BufferLoad(srv,index,wot)
  %3571 = extractvalue %dx.types.ResRet.i32 %3570, 0
  %3572 = extractvalue %dx.types.ResRet.i32 %3570, 1
  %3573 = or i32 %3562, 80
  %3574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3573, i32 undef)  ; BufferLoad(srv,index,wot)
  %3575 = extractvalue %dx.types.ResRet.f32 %3574, 2
  %3576 = extractvalue %dx.types.ResRet.f32 %3574, 3
  %3577 = or i32 %3562, 96
  %3578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3577, i32 undef)  ; BufferLoad(srv,index,wot)
  %3579 = extractvalue %dx.types.ResRet.f32 %3578, 0
  %3580 = extractvalue %dx.types.ResRet.f32 %3578, 1
  %3581 = extractvalue %dx.types.ResRet.f32 %3578, 2
  %3582 = extractvalue %dx.types.ResRet.f32 %3578, 3
  %3583 = or i32 %3562, 112
  %3584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3585 = extractvalue %dx.types.ResRet.f32 %3584, 2
  %3586 = or i32 %3562, 128
  %3587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.f32 %3587, 0
  %3589 = extractvalue %dx.types.ResRet.f32 %3587, 1
  %3590 = extractvalue %dx.types.ResRet.f32 %3587, 2
  %3591 = extractvalue %dx.types.ResRet.f32 %3587, 3
  %3592 = or i32 %3562, 144
  %3593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.f32 %3593, 0
  %3595 = extractvalue %dx.types.ResRet.f32 %3593, 1
  %3596 = extractvalue %dx.types.ResRet.f32 %3593, 2
  %3597 = extractvalue %dx.types.ResRet.f32 %3593, 3
  %3598 = or i32 %3562, 160
  %3599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.f32 %3599, 0
  %3601 = extractvalue %dx.types.ResRet.f32 %3599, 1
  %3602 = extractvalue %dx.types.ResRet.f32 %3599, 2
  %3603 = extractvalue %dx.types.ResRet.f32 %3599, 3
  %3604 = or i32 %3562, 192
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = or i32 %3562, 208
  %3608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3610 = or i32 %3562, 248
  %3611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.f32 %3611, 0
  %3613 = extractvalue %dx.types.ResRet.f32 %3611, 1
  %3614 = add nuw nsw i32 %3539, 1
  %3615 = bitcast float %3568 to i32
  %3616 = and i32 %3615, 512
  %3617 = icmp eq i32 %3616, 0
  %3618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3562, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.ResRet.f32 %3618, 1
  %3621 = extractvalue %dx.types.ResRet.f32 %3618, 2
  %3622 = extractvalue %dx.types.ResRet.f32 %3618, 3
  %3623 = call float @dx.op.dot4.f32(i32 56, float %3619, float %3620, float %3621, float %3622, float %129, float %130, float %131, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3624 = or i32 %3562, 16
  %3625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3626 = extractvalue %dx.types.ResRet.f32 %3625, 0
  %3627 = extractvalue %dx.types.ResRet.f32 %3625, 1
  %3628 = extractvalue %dx.types.ResRet.f32 %3625, 2
  %3629 = extractvalue %dx.types.ResRet.f32 %3625, 3
  %3630 = call float @dx.op.dot4.f32(i32 56, float %3626, float %3627, float %3628, float %3629, float %129, float %130, float %131, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3631 = or i32 %3562, 32
  %3632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3631, i32 undef)  ; BufferLoad(srv,index,wot)
  %3633 = extractvalue %dx.types.ResRet.f32 %3632, 0
  %3634 = extractvalue %dx.types.ResRet.f32 %3632, 1
  %3635 = extractvalue %dx.types.ResRet.f32 %3632, 2
  %3636 = extractvalue %dx.types.ResRet.f32 %3632, 3
  %3637 = call float @dx.op.dot4.f32(i32 56, float %3633, float %3634, float %3635, float %3636, float %129, float %130, float %131, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3638 = call float @dx.op.unary.f32(i32 27, float %3623)  ; Round_ni(value)
  %3639 = call float @dx.op.unary.f32(i32 6, float %3638)  ; FAbs(value)
  %3640 = call float @dx.op.unary.f32(i32 27, float %3630)  ; Round_ni(value)
  %3641 = call float @dx.op.unary.f32(i32 6, float %3640)  ; FAbs(value)
  %3642 = call float @dx.op.unary.f32(i32 6, float %3637)  ; FAbs(value)
  %3643 = call float @dx.op.unary.f32(i32 27, float %3642)  ; Round_ni(value)
  %3644 = fadd fast float %3641, %3639
  %3645 = fadd fast float %3644, %3643
  %3646 = fcmp fast oeq float %3645, 0.000000e+00
  %3647 = call float @dx.op.dot4.f32(i32 56, float %3619, float %3620, float %3621, float %3622, float %3491, float %3492, float %3493, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3648 = call float @dx.op.dot4.f32(i32 56, float %3626, float %3627, float %3628, float %3629, float %3491, float %3492, float %3493, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3649 = call float @dx.op.dot4.f32(i32 56, float %3619, float %3620, float %3621, float %3622, float %3494, float %3495, float %3496, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3650 = call float @dx.op.dot4.f32(i32 56, float %3626, float %3627, float %3628, float %3629, float %3494, float %3495, float %3496, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3651 = fsub fast float %3647, %3623
  %3652 = fsub fast float %3649, %3623
  %3653 = fsub fast float %3648, %3630
  %3654 = fsub fast float %3650, %3630
  %3655 = call float @dx.op.dot3.f32(i32 55, float %3565, float %3566, float %3567, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %3656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3657 = extractvalue %dx.types.CBufRet.f32 %3656, 2
  %3658 = fadd fast float %3657, %3655
  %3659 = call float @dx.op.unary.f32(i32 7, float %3658)  ; Saturate(value)
  %3660 = extractvalue %dx.types.CBufRet.f32 %3656, 0
  %3661 = fcmp fast ogt float %3659, %3660
  %3662 = and i1 %3646, %3661
  %3663 = and i1 %3617, %3662
  br i1 %3663, label %3684, label %3664

; <label>:3664                                    ; preds = %3947, %3765, %3684, %3538
  %3665 = phi float [ %3540, %3684 ], [ %3768, %3765 ], [ %3768, %3947 ], [ %3540, %3538 ]
  %3666 = phi float [ %3541, %3684 ], [ %3541, %3765 ], [ %3922, %3947 ], [ %3541, %3538 ]
  %3667 = phi float [ %3542, %3684 ], [ %3542, %3765 ], [ %3920, %3947 ], [ %3542, %3538 ]
  %3668 = phi float [ %3543, %3684 ], [ %3543, %3765 ], [ %3892, %3947 ], [ %3543, %3538 ]
  %3669 = phi float [ %3544, %3684 ], [ %3544, %3765 ], [ %3890, %3947 ], [ %3544, %3538 ]
  %3670 = phi float [ %3545, %3684 ], [ %3545, %3765 ], [ %3957, %3947 ], [ %3545, %3538 ]
  %3671 = phi float [ %3546, %3684 ], [ %3546, %3765 ], [ %3958, %3947 ], [ %3546, %3538 ]
  %3672 = phi float [ %3547, %3684 ], [ %3547, %3765 ], [ %3959, %3947 ], [ %3547, %3538 ]
  %3673 = phi float [ %3548, %3684 ], [ %3548, %3765 ], [ %3871, %3947 ], [ %3548, %3538 ]
  %3674 = phi float [ %3549, %3684 ], [ %3549, %3765 ], [ %3872, %3947 ], [ %3549, %3538 ]
  %3675 = phi float [ %3550, %3684 ], [ %3550, %3765 ], [ %3873, %3947 ], [ %3550, %3538 ]
  %3676 = phi float [ %3551, %3684 ], [ %3551, %3765 ], [ %3900, %3947 ], [ %3551, %3538 ]
  %3677 = phi float [ %3552, %3684 ], [ %3552, %3765 ], [ %3897, %3947 ], [ %3552, %3538 ]
  %3678 = phi float [ %3553, %3684 ], [ %3553, %3765 ], [ %3894, %3947 ], [ %3553, %3538 ]
  %3679 = phi float [ %3554, %3684 ], [ %3554, %3765 ], [ %3888, %3947 ], [ %3554, %3538 ]
  %3680 = phi float [ %3555, %3684 ], [ %3555, %3765 ], [ %3883, %3947 ], [ %3555, %3538 ]
  %3681 = phi float [ %3556, %3684 ], [ %3556, %3765 ], [ %3884, %3947 ], [ %3556, %3538 ]
  %3682 = phi float [ %3557, %3684 ], [ %3557, %3765 ], [ %3885, %3947 ], [ %3557, %3538 ]
  %3683 = icmp eq i32 %3614, %3537
  br i1 %3683, label %3960, label %3538

; <label>:3684                                    ; preds = %3538
  %3685 = extractvalue %dx.types.ResRet.f32 %3584, 3
  %3686 = extractvalue %dx.types.ResRet.f32 %3584, 1
  %3687 = extractvalue %dx.types.ResRet.f32 %3584, 0
  %3688 = extractvalue %dx.types.ResRet.f32 %3574, 1
  %3689 = extractvalue %dx.types.ResRet.f32 %3574, 0
  %3690 = extractvalue %dx.types.ResRet.i32 %3570, 3
  %3691 = extractvalue %dx.types.ResRet.i32 %3570, 2
  %3692 = add i32 %3690, 0
  %3693 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3692, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3695 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3693, %dx.types.Handle %3694, float %3623, float %3630, float undef, float undef, i32 0, i32 0, i32 undef, float %3651, float %3653, float undef, float %3652, float %3654, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3696 = extractvalue %dx.types.ResRet.f32 %3695, 0
  %3697 = fmul fast float %3696, %3689
  %3698 = fadd fast float %3697, %3688
  %3699 = call float @dx.op.unary.f32(i32 7, float %3698)  ; Saturate(value)
  %3700 = fmul fast float %3623, %3579
  %3701 = call float @dx.op.tertiary.f32(i32 46, float %3580, float %3630, float %3700)  ; FMad(a,b,c)
  %3702 = fadd fast float %3701, %3687
  %3703 = fmul fast float %3623, %3581
  %3704 = call float @dx.op.tertiary.f32(i32 46, float %3582, float %3630, float %3703)  ; FMad(a,b,c)
  %3705 = fadd fast float %3704, %3686
  %3706 = fmul fast float %3651, %3579
  %3707 = call float @dx.op.tertiary.f32(i32 46, float %3580, float %3653, float %3706)  ; FMad(a,b,c)
  %3708 = fmul fast float %3651, %3581
  %3709 = call float @dx.op.tertiary.f32(i32 46, float %3582, float %3653, float %3708)  ; FMad(a,b,c)
  %3710 = fmul fast float %3652, %3579
  %3711 = call float @dx.op.tertiary.f32(i32 46, float %3580, float %3654, float %3710)  ; FMad(a,b,c)
  %3712 = fmul fast float %3652, %3581
  %3713 = call float @dx.op.tertiary.f32(i32 46, float %3582, float %3654, float %3712)  ; FMad(a,b,c)
  %3714 = add i32 %3691, 0
  %3715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3714, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3716 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3715, %dx.types.Handle %3694, float %3702, float %3705, float undef, float undef, i32 0, i32 0, i32 undef, float %3707, float %3709, float undef, float %3711, float %3713, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3717 = extractvalue %dx.types.ResRet.f32 %3716, 0
  %3718 = and i32 %3615, 1024
  %3719 = icmp ne i32 %3718, 0
  %3720 = fcmp fast ogt float %3717, 0x3FE0101020000000
  %3721 = uitofp i1 %3720 to float
  %3722 = select i1 %3719, float %3721, float %3717
  %3723 = and i32 %3615, 8192
  %3724 = icmp ne i32 %3723, 0
  %3725 = select i1 %3724, float %3685, float 1.000000e+00
  %3726 = fmul fast float %3623, 2.000000e+00
  %3727 = fadd fast float %3726, -1.000000e+00
  %3728 = call float @dx.op.unary.f32(i32 6, float %3727)  ; FAbs(value)
  %3729 = fmul fast float %3728, %3612
  %3730 = fsub fast float %3729, %3612
  %3731 = call float @dx.op.unary.f32(i32 7, float %3730)  ; Saturate(value)
  %3732 = fmul fast float %3630, 2.000000e+00
  %3733 = fadd fast float %3732, -1.000000e+00
  %3734 = call float @dx.op.unary.f32(i32 6, float %3733)  ; FAbs(value)
  %3735 = fmul fast float %3734, %3613
  %3736 = fsub fast float %3735, %3613
  %3737 = call float @dx.op.unary.f32(i32 7, float %3736)  ; Saturate(value)
  %3738 = fmul fast float %3642, %3575
  %3739 = fsub fast float %3738, %3575
  %3740 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  %3741 = fmul fast float %3699, %3725
  %3742 = fmul fast float %3741, %3696
  %3743 = fmul fast float %3742, %3731
  %3744 = fmul fast float %3743, %3722
  %3745 = fmul fast float %3744, %3737
  %3746 = fmul fast float %3745, %3740
  %3747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3748 = extractvalue %dx.types.CBufRet.f32 %3747, 1
  %3749 = extractvalue %dx.types.CBufRet.f32 %3747, 0
  %3750 = fsub fast float %3659, %3749
  %3751 = fmul fast float %3750, %3748
  %3752 = call float @dx.op.unary.f32(i32 7, float %3751)  ; Saturate(value)
  %3753 = fmul fast float %3746, %3576
  %3754 = fadd fast float %3746, %3576
  %3755 = fmul fast float %3754, %3585
  %3756 = fsub fast float %3755, %3585
  %3757 = call float @dx.op.unary.f32(i32 7, float %3756)  ; Saturate(value)
  %3758 = and i32 %3615, 128
  %3759 = icmp ne i32 %3758, 0
  %3760 = select i1 %3759, float %3757, float %3753
  %3761 = fmul fast float %3760, %3752
  %3762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3763 = extractvalue %dx.types.CBufRet.f32 %3762, 0
  %3764 = fcmp fast ugt float %3761, %3763
  br i1 %3764, label %3765, label %3664

; <label>:3765                                    ; preds = %3684
  %3766 = select i1 %3724, float %3761, float 0.000000e+00
  %3767 = fadd fast float %3766, %3540
  %3768 = call float @dx.op.unary.f32(i32 7, float %3767)  ; Saturate(value)
  br i1 %3724, label %3664, label %3769

; <label>:3769                                    ; preds = %3765
  %3770 = and i32 %3615, 4
  %3771 = and i32 %3615, 8
  %3772 = add i32 %3571, 0
  %3773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3772, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3774 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3775 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3773, %dx.types.Handle %3774, float %3702, float %3705, float undef, float undef, i32 0, i32 0, i32 undef, float %3707, float %3709, float undef, float %3711, float %3713, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3776 = extractvalue %dx.types.ResRet.f32 %3775, 0
  %3777 = extractvalue %dx.types.ResRet.f32 %3775, 1
  %3778 = extractvalue %dx.types.ResRet.f32 %3775, 2
  %3779 = extractvalue %dx.types.ResRet.f32 %3775, 3
  %3780 = bitcast float %3597 to i32
  %3781 = and i32 %3780, 255
  %3782 = uitofp i32 %3781 to float
  %3783 = lshr i32 %3780, 8
  %3784 = and i32 %3783, 255
  %3785 = uitofp i32 %3784 to float
  %3786 = fmul fast float %3779, %3782
  %3787 = fadd fast float %3786, %3785
  %3788 = fmul fast float %3787, 0x3F70101000000000
  %3789 = add i32 %3572, 0
  %3790 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3789, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3791 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3790, %dx.types.Handle %3774, float %3702, float %3705, float undef, float undef, i32 0, i32 0, i32 undef, float %3707, float %3709, float undef, float %3711, float %3713, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3792 = extractvalue %dx.types.ResRet.f32 %3791, 0
  %3793 = extractvalue %dx.types.ResRet.f32 %3791, 1
  %3794 = extractvalue %dx.types.ResRet.f32 %3791, 2
  %3795 = extractvalue %dx.types.ResRet.f32 %3791, 3
  %3796 = bitcast float %3591 to i32
  %3797 = and i32 %3796, 255
  %3798 = uitofp i32 %3797 to float
  %3799 = lshr i32 %3796, 8
  %3800 = and i32 %3799, 255
  %3801 = uitofp i32 %3800 to float
  %3802 = lshr i32 %3796, 16
  %3803 = and i32 %3802, 255
  %3804 = uitofp i32 %3803 to float
  %3805 = fmul fast float %3804, 0x3F70101000000000
  %3806 = fmul fast float %3792, %3798
  %3807 = fadd fast float %3806, %3801
  %3808 = fmul fast float %3807, 0x3F70101000000000
  %3809 = fadd fast float %3793, -5.000000e-01
  %3810 = fadd fast float %3795, -5.000000e-01
  %3811 = fmul fast float %3809, %3805
  %3812 = fmul fast float %3810, %3805
  %3813 = fadd fast float %3811, 5.000000e-01
  %3814 = fadd fast float %3812, 5.000000e-01
  %3815 = fmul fast float %3776, %3600
  %3816 = fmul fast float %3777, %3601
  %3817 = fmul fast float %3778, %3602
  %3818 = fmul fast float %3813, 2.000000e+00
  %3819 = fadd fast float %3818, -1.000000e+00
  %3820 = fmul fast float %3814, 2.000000e+00
  %3821 = fadd fast float %3820, -1.000000e+00
  %3822 = fadd fast float %3819, %3821
  %3823 = fmul fast float %3822, 5.000000e-01
  %3824 = fsub fast float %3819, %3821
  %3825 = fmul fast float %3824, 5.000000e-01
  %3826 = call float @dx.op.unary.f32(i32 6, float %3823)  ; FAbs(value)
  %3827 = fsub fast float 1.000000e+00, %3826
  %3828 = call float @dx.op.unary.f32(i32 6, float %3825)  ; FAbs(value)
  %3829 = fsub fast float %3827, %3828
  %3830 = call float @dx.op.dot3.f32(i32 55, float %3823, float %3825, float %3829, float %3823, float %3825, float %3829)  ; Dot3(ax,ay,az,bx,by,bz)
  %3831 = call float @dx.op.unary.f32(i32 25, float %3830)  ; Rsqrt(value)
  %3832 = fmul fast float %3823, %3831
  %3833 = fmul fast float %3825, %3831
  %3834 = fmul fast float %3831, %3829
  %3835 = fmul fast float %3834, %3565
  %3836 = fmul fast float %3834, %3566
  %3837 = fmul fast float %3834, %3567
  %3838 = fmul fast float %3832, %3588
  %3839 = fmul fast float %3832, %3589
  %3840 = fmul fast float %3832, %3590
  %3841 = fadd fast float %3838, %3835
  %3842 = fadd fast float %3839, %3836
  %3843 = fadd fast float %3840, %3837
  %3844 = fmul fast float %3833, %3594
  %3845 = fmul fast float %3833, %3595
  %3846 = fmul fast float %3833, %3596
  %3847 = fadd fast float %3841, %3844
  %3848 = fadd fast float %3842, %3845
  %3849 = fadd fast float %3843, %3846
  %3850 = call float @dx.op.dot3.f32(i32 55, float %3847, float %3848, float %3849, float %3847, float %3848, float %3849)  ; Dot3(ax,ay,az,bx,by,bz)
  %3851 = call float @dx.op.unary.f32(i32 25, float %3850)  ; Rsqrt(value)
  %3852 = fmul fast float %3847, %3851
  %3853 = fmul fast float %3848, %3851
  %3854 = fmul fast float %3849, %3851
  %3855 = icmp ne i32 %3771, 0
  %3856 = select i1 %3855, float 1.000000e+00, float 0.000000e+00
  %3857 = fmul fast float %3761, %3856
  %3858 = and i32 %3615, 1
  %3859 = icmp eq i32 %3858, 0
  br i1 %3859, label %3860, label %3864

; <label>:3860                                    ; preds = %3769
  %3861 = fsub fast float %3852, %3548
  %3862 = fsub fast float %3853, %3549
  %3863 = fsub fast float %3854, %3550
  br label %3864

; <label>:3864                                    ; preds = %3860, %3769
  %3865 = phi float [ %3861, %3860 ], [ %3852, %3769 ]
  %3866 = phi float [ %3862, %3860 ], [ %3853, %3769 ]
  %3867 = phi float [ %3863, %3860 ], [ %3854, %3769 ]
  %3868 = fmul float %3867, %3857
  %3869 = fmul float %3866, %3857
  %3870 = fmul float %3865, %3857
  %3871 = fadd fast float %3870, %3548
  %3872 = fadd fast float %3869, %3549
  %3873 = fadd fast float %3868, %3550
  %3874 = icmp ne i32 %3770, 0
  %3875 = select i1 %3874, float 1.000000e+00, float 0.000000e+00
  %3876 = fmul fast float %3761, %3875
  %3877 = fsub fast float %3815, %3555
  %3878 = fsub fast float %3816, %3556
  %3879 = fsub fast float %3817, %3557
  %3880 = fmul fast float %3877, %3876
  %3881 = fmul fast float %3878, %3876
  %3882 = fmul fast float %3879, %3876
  %3883 = fadd fast float %3880, %3555
  %3884 = fadd fast float %3881, %3556
  %3885 = fadd fast float %3882, %3557
  %3886 = fsub fast float %3788, %3554
  %3887 = fmul fast float %3886, %3876
  %3888 = fadd fast float %3887, %3554
  %3889 = fmul fast float %3876, %3544
  %3890 = fsub fast float %3544, %3889
  %3891 = fmul fast float %3876, %3543
  %3892 = fsub fast float %3543, %3891
  %3893 = fadd fast float %3761, %3553
  %3894 = call float @dx.op.unary.f32(i32 7, float %3893)  ; Saturate(value)
  %3895 = fsub fast float %3808, %3552
  %3896 = fmul fast float %3895, %3857
  %3897 = fadd fast float %3896, %3552
  %3898 = fsub fast float %3794, %3551
  %3899 = fmul fast float %3898, %3857
  %3900 = fadd fast float %3899, %3551
  %3901 = call float @dx.op.dot3.f32(i32 55, float %3815, float %3816, float %3817, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3903 = extractvalue %dx.types.CBufRet.f32 %3902, 0
  %3904 = extractvalue %dx.types.CBufRet.f32 %3902, 1
  %3905 = fmul fast float %3904, %3901
  %3906 = fadd fast float %3905, %3903
  %3907 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  %3908 = bitcast float %3603 to i32
  %3909 = and i32 %3908, 65535
  %3910 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3909)  ; LegacyF16ToF32(value)
  %3911 = lshr i32 %3908, 16
  %3912 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3911)  ; LegacyF16ToF32(value)
  %3913 = fcmp fast oge float %3910, 0.000000e+00
  %3914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3915 = extractvalue %dx.types.CBufRet.f32 %3914, 0
  %3916 = select i1 %3913, float %3910, float %3915
  %3917 = fadd fast float %3916, %3912
  %3918 = fsub fast float %3907, %3542
  %3919 = fmul fast float %3918, %3761
  %3920 = fadd fast float %3919, %3542
  %3921 = fmul fast float %3917, %3761
  %3922 = call float @dx.op.binary.f32(i32 35, float %3541, float %3921)  ; FMax(a,b)
  %3923 = and i32 %3615, 16
  %3924 = icmp eq i32 %3923, 0
  br i1 %3924, label %3947, label %3925

; <label>:3925                                    ; preds = %3864
  %3926 = bitcast float %3609 to i32
  %3927 = add i32 %3606, 0
  %3928 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3927, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3929 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3928, %dx.types.Handle %3774, float %3702, float %3705, float undef, float undef, i32 0, i32 0, i32 undef, float %3707, float %3709, float undef, float %3711, float %3713, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3930 = extractvalue %dx.types.ResRet.f32 %3929, 0
  %3931 = extractvalue %dx.types.ResRet.f32 %3929, 1
  %3932 = extractvalue %dx.types.ResRet.f32 %3929, 2
  %3933 = and i32 %3926, 65535
  %3934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3933)  ; LegacyF16ToF32(value)
  %3935 = fmul fast float %3930, %3600
  %3936 = fmul fast float %3931, %3601
  %3937 = fmul fast float %3932, %3602
  %3938 = and i32 %3615, 16384
  %3939 = icmp ne i32 %3938, 0
  %3940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3941 = extractvalue %dx.types.CBufRet.f32 %3940, 0
  %3942 = select i1 %3939, float %3941, float 1.000000e+00
  %3943 = fmul fast float %3942, %3934
  %3944 = fmul fast float %3935, %3943
  %3945 = fmul fast float %3936, %3943
  %3946 = fmul fast float %3937, %3943
  br label %3947

; <label>:3947                                    ; preds = %3925, %3864
  %3948 = phi float [ %3944, %3925 ], [ 0.000000e+00, %3864 ]
  %3949 = phi float [ %3945, %3925 ], [ 0.000000e+00, %3864 ]
  %3950 = phi float [ %3946, %3925 ], [ 0.000000e+00, %3864 ]
  %3951 = fsub fast float %3948, %3545
  %3952 = fsub fast float %3949, %3546
  %3953 = fsub fast float %3950, %3547
  %3954 = fmul fast float %3951, %3761
  %3955 = fmul fast float %3952, %3761
  %3956 = fmul fast float %3953, %3761
  %3957 = fadd fast float %3954, %3545
  %3958 = fadd fast float %3955, %3546
  %3959 = fadd fast float %3956, %3547
  br label %3664

; <label>:3960                                    ; preds = %3664
  br label %3961

; <label>:3961                                    ; preds = %3960, %3442
  %3962 = phi float [ 0.000000e+00, %3442 ], [ %3665, %3960 ]
  %3963 = phi float [ %3456, %3442 ], [ %3666, %3960 ]
  %3964 = phi float [ %3454, %3442 ], [ %3667, %3960 ]
  %3965 = phi float [ 0.000000e+00, %3442 ], [ %3668, %3960 ]
  %3966 = phi float [ 0.000000e+00, %3442 ], [ %3669, %3960 ]
  %3967 = phi float [ %3448, %3442 ], [ %3670, %3960 ]
  %3968 = phi float [ %3449, %3442 ], [ %3671, %3960 ]
  %3969 = phi float [ %3450, %3442 ], [ %3672, %3960 ]
  %3970 = phi float [ %3482, %3442 ], [ %3673, %3960 ]
  %3971 = phi float [ %3483, %3442 ], [ %3674, %3960 ]
  %3972 = phi float [ %3484, %3442 ], [ %3675, %3960 ]
  %3973 = phi float [ %3453, %3442 ], [ %3676, %3960 ]
  %3974 = phi float [ %3452, %3442 ], [ %3677, %3960 ]
  %3975 = phi float [ 0.000000e+00, %3442 ], [ %3678, %3960 ]
  %3976 = phi float [ %3451, %3442 ], [ %3679, %3960 ]
  %3977 = phi float [ %3445, %3442 ], [ %3680, %3960 ]
  %3978 = phi float [ %3446, %3442 ], [ %3681, %3960 ]
  %3979 = phi float [ %3447, %3442 ], [ %3682, %3960 ]
  %3980 = call float @dx.op.dot3.f32(i32 55, float %3970, float %3971, float %3972, float %3970, float %3971, float %3972)  ; Dot3(ax,ay,az,bx,by,bz)
  %3981 = call float @dx.op.unary.f32(i32 25, float %3980)  ; Rsqrt(value)
  %3982 = fmul fast float %3981, %3970
  %3983 = fmul fast float %3981, %3971
  %3984 = fmul fast float %3981, %3972
  %3985 = fadd fast float %3975, %889
  %3986 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  %3987 = call float @dx.op.dot3.f32(i32 55, float %3982, float %3983, float %3984, float %3982, float %3983, float %3984)  ; Dot3(ax,ay,az,bx,by,bz)
  %3988 = call float @dx.op.unary.f32(i32 25, float %3987)  ; Rsqrt(value)
  %3989 = fmul fast float %3988, %3982
  %3990 = fmul fast float %3988, %3983
  %3991 = fmul fast float %3988, %3984
  %3992 = fadd fast float %3976, 0xBFB99999A0000000
  %3993 = call float @dx.op.unary.f32(i32 7, float %3992)  ; Saturate(value)
  %3994 = fmul fast float %3993, 0x3FF1C71C80000000
  %3995 = call float @dx.op.binary.f32(i32 36, float %3976, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3996 = fsub fast float 1.000000e+00, %3994
  %3997 = call float @dx.op.unary.f32(i32 7, float %3996)  ; Saturate(value)
  %3998 = fmul fast float %3997, %3977
  %3999 = fmul fast float %3997, %3978
  %4000 = fmul fast float %3997, %3979
  %4001 = call float @dx.op.unary.f32(i32 7, float %3998)  ; Saturate(value)
  %4002 = call float @dx.op.unary.f32(i32 7, float %3999)  ; Saturate(value)
  %4003 = call float @dx.op.unary.f32(i32 7, float %4000)  ; Saturate(value)
  %4004 = fmul fast float %3994, %3977
  %4005 = fmul fast float %3994, %3978
  %4006 = fmul fast float %3994, %3979
  %4007 = fadd fast float %4004, %3995
  %4008 = fadd fast float %4005, %3995
  %4009 = fadd fast float %4006, %3995
  %4010 = call float @dx.op.unary.f32(i32 7, float %4007)  ; Saturate(value)
  %4011 = call float @dx.op.unary.f32(i32 7, float %4008)  ; Saturate(value)
  %4012 = call float @dx.op.unary.f32(i32 7, float %4009)  ; Saturate(value)
  %4013 = call float @dx.op.unary.f32(i32 7, float %3974)  ; Saturate(value)
  %4014 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4015 = extractvalue %dx.types.CBufRet.i32 %4014, 3
  %4016 = and i32 %4015, 8
  %4017 = icmp ne i32 %4016, 0
  %4018 = call float @dx.op.binary.f32(i32 35, float %4001, float %3977)  ; FMax(a,b)
  %4019 = call float @dx.op.binary.f32(i32 35, float %4002, float %3977)  ; FMax(a,b)
  %4020 = call float @dx.op.binary.f32(i32 35, float %4003, float %3977)  ; FMax(a,b)
  %4021 = call float @dx.op.dot3.f32(i32 55, float %4001, float %4002, float %4003, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4022 = select i1 %170, float %3977, float %4001
  %4023 = select i1 %170, float %4021, float %4002
  %4024 = select i1 %170, float 1.000000e+00, float %4003
  %4025 = select i1 %4017, float %4018, float %4022
  %4026 = select i1 %4017, float %4019, float %4023
  %4027 = select i1 %4017, float %4020, float %4024
  %4028 = and i32 %146, 3
  %4029 = select i1 %140, i32 %4028, i32 0
  %4030 = icmp eq i32 %4029, 1
  br i1 %4030, label %4031, label %4107

; <label>:4031                                    ; preds = %3961
  %4032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4033 = extractvalue %dx.types.CBufRet.f32 %4032, 0
  %4034 = extractvalue %dx.types.CBufRet.f32 %4032, 1
  %4035 = fadd fast float %4033, %129
  %4036 = fadd fast float %4034, %130
  %4037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4038 = extractvalue %dx.types.CBufRet.f32 %4037, 0
  %4039 = extractvalue %dx.types.CBufRet.f32 %4037, 1
  %4040 = fsub fast float %4035, %4038
  %4041 = fsub fast float %4036, %4039
  %4042 = fmul fast float %4040, %4040
  %4043 = fmul fast float %4041, %4041
  %4044 = fadd fast float %4042, %4043
  %4045 = call float @dx.op.unary.f32(i32 24, float %4044)  ; Sqrt(value)
  %4046 = extractvalue %dx.types.CBufRet.f32 %4037, 2
  %4047 = fcmp fast olt float %4045, %4046
  br i1 %4047, label %4048, label %4101

; <label>:4048                                    ; preds = %4031
  %4049 = extractvalue %dx.types.CBufRet.f32 %4032, 2
  %4050 = fadd fast float %4049, %131
  %4051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.f32 %4051, 0
  %4053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4054 = extractvalue %dx.types.CBufRet.f32 %4053, 0
  %4055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4056 = extractvalue %dx.types.CBufRet.f32 %4055, 0
  %4057 = extractvalue %dx.types.CBufRet.f32 %4051, 1
  %4058 = extractvalue %dx.types.CBufRet.f32 %4053, 1
  %4059 = extractvalue %dx.types.CBufRet.f32 %4055, 1
  %4060 = extractvalue %dx.types.CBufRet.f32 %4051, 3
  %4061 = extractvalue %dx.types.CBufRet.f32 %4053, 3
  %4062 = extractvalue %dx.types.CBufRet.f32 %4055, 3
  %4063 = fadd fast float %4060, %4035
  %4064 = fadd fast float %4061, %4036
  %4065 = fadd fast float %4050, %4062
  %4066 = fmul fast float %4063, %4052
  %4067 = call float @dx.op.tertiary.f32(i32 46, float %4064, float %4054, float %4066)  ; FMad(a,b,c)
  %4068 = call float @dx.op.tertiary.f32(i32 46, float %4065, float %4056, float %4067)  ; FMad(a,b,c)
  %4069 = fmul fast float %4063, %4057
  %4070 = call float @dx.op.tertiary.f32(i32 46, float %4064, float %4058, float %4069)  ; FMad(a,b,c)
  %4071 = call float @dx.op.tertiary.f32(i32 46, float %4065, float %4059, float %4070)  ; FMad(a,b,c)
  %4072 = fsub fast float %4068, %4060
  %4073 = fsub fast float %4071, %4061
  %4074 = fsub fast float %4072, %4038
  %4075 = fadd fast float %4074, %4046
  %4076 = fsub fast float %4073, %4039
  %4077 = fadd fast float %4076, %4046
  %4078 = extractvalue %dx.types.CBufRet.f32 %4037, 3
  %4079 = fmul fast float %4075, %4078
  %4080 = fmul fast float %4077, %4078
  %4081 = call float @dx.op.unary.f32(i32 7, float %4079)  ; Saturate(value)
  %4082 = call float @dx.op.unary.f32(i32 7, float %4080)  ; Saturate(value)
  %4083 = fsub fast float 1.000000e+00, %4081
  %4084 = fsub fast float 1.000000e+00, %4082
  %4085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %28, float %4083, float %4084, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4086 = extractvalue %dx.types.ResRet.f32 %4085, 0
  %4087 = fcmp fast ugt float %4086, 0.000000e+00
  br i1 %4087, label %4088, label %4101

; <label>:4088                                    ; preds = %4048
  %4089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4089, 2
  %4091 = fmul fast float %4090, %4086
  %4092 = extractvalue %dx.types.CBufRet.f32 %4089, 3
  %4093 = fadd fast float %4092, %4091
  %4094 = extractvalue %dx.types.CBufRet.f32 %4055, 2
  %4095 = fadd fast float %4093, %4062
  %4096 = fmul fast float %4068, %4056
  %4097 = call float @dx.op.tertiary.f32(i32 46, float %4071, float %4059, float %4096)  ; FMad(a,b,c)
  %4098 = call float @dx.op.tertiary.f32(i32 46, float %4095, float %4094, float %4097)  ; FMad(a,b,c)
  %4099 = fsub fast float %4098, %4062
  %4100 = fsub fast float %4099, %4049
  br label %4101

; <label>:4101                                    ; preds = %4088, %4048, %4031
  %4102 = phi i1 [ true, %4088 ], [ false, %4048 ], [ false, %4031 ]
  %4103 = phi float [ %4100, %4088 ], [ -1.310720e+05, %4048 ], [ -1.310720e+05, %4031 ]
  %4104 = fsub fast float %4103, %131
  %4105 = call float @dx.op.unary.f32(i32 7, float %4104)  ; Saturate(value)
  %4106 = select i1 %4102, float %4105, float 1.000000e+00
  br label %4107

; <label>:4107                                    ; preds = %4101, %3961
  %4108 = phi float [ %4106, %4101 ], [ 0.000000e+00, %3961 ]
  %4109 = icmp eq i32 %4029, 3
  %4110 = select i1 %4109, float 1.000000e+00, float %4108
  %4111 = call float @dx.op.binary.f32(i32 35, float %3962, float %4110)  ; FMax(a,b)
  %4112 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4113 = fcmp fast une float %4112, 0.000000e+00
  %4114 = call float @dx.op.dot3.f32(i32 55, float %129, float %130, float %131, float %129, float %130, float %131)  ; Dot3(ax,ay,az,bx,by,bz)
  %4115 = call float @dx.op.unary.f32(i32 25, float %4114)  ; Rsqrt(value)
  br i1 %4113, label %4123, label %4116

; <label>:4116                                    ; preds = %4107
  %4117 = fmul fast float %4115, %129
  %4118 = fmul fast float %4115, %130
  %4119 = fmul fast float %4115, %131
  %4120 = fsub fast float -0.000000e+00, %4117
  %4121 = fsub fast float -0.000000e+00, %4118
  %4122 = fsub fast float -0.000000e+00, %4119
  br label %4291

; <label>:4123                                    ; preds = %4107
  %4124 = fmul fast float %129, %4115
  %4125 = fsub fast float -0.000000e+00, %4124
  %4126 = fmul fast float %130, %4115
  %4127 = fsub fast float -0.000000e+00, %4126
  %4128 = fmul fast float %131, %4115
  %4129 = fsub fast float -0.000000e+00, %4128
  %4130 = call float @dx.op.dot3.f32(i32 55, float %4125, float %4127, float %4129, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %4131 = fmul fast float %4112, 2.500000e+00
  %4132 = call float @dx.op.unary.f32(i32 7, float %4131)  ; Saturate(value)
  %4133 = fmul fast float %4112, 0x4013FFFFE0000000
  %4134 = fadd fast float %4133, 0xBFFFFFFFE0000000
  %4135 = call float @dx.op.unary.f32(i32 7, float %4134)  ; Saturate(value)
  %4136 = fmul fast float %4112, 0x4004000020000000
  %4137 = fadd fast float %4136, 0xBFF8000040000000
  %4138 = call float @dx.op.unary.f32(i32 7, float %4137)  ; Saturate(value)
  %4139 = call float @dx.op.unary.f32(i32 7, float %4132)  ; Saturate(value)
  %4140 = fmul fast float %3992, 1.000000e+01
  %4141 = call float @dx.op.unary.f32(i32 7, float %4140)  ; Saturate(value)
  %4142 = fmul fast float %4141, 2.000000e+00
  %4143 = fsub fast float 3.000000e+00, %4142
  %4144 = fmul fast float %4141, %4141
  %4145 = fmul fast float %4144, %4143
  %4146 = fsub fast float 1.000000e+00, %4145
  %4147 = fsub fast float 0x3FE3333340000000, %4013
  %4148 = fmul fast float %4147, 0x400AAAAAA0000000
  %4149 = call float @dx.op.unary.f32(i32 7, float %4148)  ; Saturate(value)
  %4150 = fmul fast float %4146, %4149
  %4151 = fmul fast float %4025, 0x3FEA2B8620000000
  %4152 = fmul fast float %4026, 0x3FEA2B8620000000
  %4153 = fmul fast float %4027, 0x3FEA2B8620000000
  %4154 = fadd fast float %4151, 0x3FC81DFBA0000000
  %4155 = fmul fast float %4154, %4025
  %4156 = fadd fast float %4155, 0x3F910E6020000000
  %4157 = fadd fast float %4152, 0x3FC81DFBA0000000
  %4158 = fmul fast float %4157, %4026
  %4159 = fadd fast float %4158, 0x3F910E6020000000
  %4160 = fadd fast float %4153, 0x3FC81DFBA0000000
  %4161 = fmul fast float %4160, %4027
  %4162 = fadd fast float %4161, 0x3F910E6020000000
  %4163 = call float @dx.op.unary.f32(i32 7, float %4156)  ; Saturate(value)
  %4164 = call float @dx.op.unary.f32(i32 7, float %4159)  ; Saturate(value)
  %4165 = call float @dx.op.unary.f32(i32 7, float %4162)  ; Saturate(value)
  %4166 = fsub fast float %4163, %4025
  %4167 = fsub fast float %4164, %4026
  %4168 = fsub fast float %4165, %4027
  %4169 = fmul fast float %4166, %4139
  %4170 = fmul fast float %4169, %4150
  %4171 = fmul fast float %4167, %4139
  %4172 = fmul fast float %4171, %4150
  %4173 = fmul fast float %4168, %4139
  %4174 = fmul fast float %4173, %4150
  %4175 = fadd fast float %4170, %4025
  %4176 = fadd fast float %4172, %4026
  %4177 = fadd fast float %4174, %4027
  %4178 = fmul fast float %3973, %3973
  %4179 = fmul fast float %4178, %4178
  %4180 = fadd fast float %4135, 1.000000e+00
  %4181 = fsub fast float %4180, %4150
  %4182 = call float @dx.op.unary.f32(i32 7, float %4181)  ; Saturate(value)
  %4183 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4184 = call float @dx.op.unary.f32(i32 7, float %4183)  ; Saturate(value)
  %4185 = fsub fast float 1.000000e+00, %4179
  %4186 = call float @dx.op.binary.f32(i32 36, float %4182, float %4185)  ; FMin(a,b)
  %4187 = call float @dx.op.unary.f32(i32 7, float %4138)  ; Saturate(value)
  %4188 = call float @dx.op.binary.f32(i32 35, float %4186, float %4187)  ; FMax(a,b)
  %4189 = fadd fast float %4184, 0xBFE4CCCCC0000000
  %4190 = fmul fast float %4189, 0x4006DB6DA0000000
  %4191 = call float @dx.op.unary.f32(i32 7, float %4190)  ; Saturate(value)
  %4192 = fmul fast float %4191, 2.000000e+00
  %4193 = fsub fast float 3.000000e+00, %4192
  %4194 = bitcast float %4010 to i32
  %4195 = ashr i32 %4194, 1
  %4196 = add nsw i32 %4195, 532487669
  %4197 = bitcast i32 %4196 to float
  %4198 = fsub fast float 1.000000e+00, %4197
  %4199 = bitcast float %4198 to i32
  %4200 = sub nsw i32 2129859010, %4199
  %4201 = bitcast i32 %4200 to float
  %4202 = fmul fast float %4201, 2.000000e+00
  %4203 = bitcast float %4011 to i32
  %4204 = ashr i32 %4203, 1
  %4205 = add nsw i32 %4204, 532487669
  %4206 = bitcast i32 %4205 to float
  %4207 = fsub fast float 1.000000e+00, %4206
  %4208 = bitcast float %4207 to i32
  %4209 = sub nsw i32 2129859010, %4208
  %4210 = bitcast i32 %4209 to float
  %4211 = fmul fast float %4210, 2.000000e+00
  %4212 = bitcast float %4012 to i32
  %4213 = ashr i32 %4212, 1
  %4214 = add nsw i32 %4213, 532487669
  %4215 = bitcast i32 %4214 to float
  %4216 = fsub fast float 1.000000e+00, %4215
  %4217 = bitcast float %4216 to i32
  %4218 = sub nsw i32 2129859010, %4217
  %4219 = bitcast i32 %4218 to float
  %4220 = fmul fast float %4219, 2.000000e+00
  %4221 = fsub fast float 0x4002A9FBE0000000, %4202
  %4222 = fadd fast float %4202, 0x3FD54FDF00000000
  %4223 = bitcast float %4222 to i32
  %4224 = sub nsw i32 2129859010, %4223
  %4225 = bitcast i32 %4224 to float
  %4226 = fmul fast float %4225, %4221
  %4227 = fmul fast float %4226, %4226
  %4228 = fsub fast float 0x4002A9FBE0000000, %4211
  %4229 = fadd fast float %4211, 0x3FD54FDF00000000
  %4230 = bitcast float %4229 to i32
  %4231 = sub nsw i32 2129859010, %4230
  %4232 = bitcast i32 %4231 to float
  %4233 = fmul fast float %4232, %4228
  %4234 = fmul fast float %4233, %4233
  %4235 = fsub fast float 0x4002A9FBE0000000, %4220
  %4236 = fadd fast float %4220, 0x3FD54FDF00000000
  %4237 = bitcast float %4236 to i32
  %4238 = sub nsw i32 2129859010, %4237
  %4239 = bitcast i32 %4238 to float
  %4240 = fmul fast float %4239, %4235
  %4241 = fmul fast float %4240, %4240
  %4242 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4227)  ; FMax(a,b)
  %4243 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4234)  ; FMax(a,b)
  %4244 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4241)  ; FMax(a,b)
  %4245 = fsub fast float 1.000000e+00, %4130
  %4246 = fadd fast float %4245, %4146
  %4247 = call float @dx.op.unary.f32(i32 7, float %4246)  ; Saturate(value)
  %4248 = fsub fast float 1.000000e+00, %4110
  %4249 = fmul fast float %4188, %4248
  %4250 = fmul fast float %4191, %4191
  %4251 = fmul fast float %4250, %4249
  %4252 = fmul fast float %4251, %4193
  %4253 = fmul fast float %4248, 0xBFE99999A0000000
  %4254 = fmul fast float %4253, %4139
  %4255 = fmul fast float %4254, %4150
  %4256 = fadd fast float %4255, 1.000000e+00
  %4257 = fadd fast float %4013, -1.000000e+00
  %4258 = fmul fast float %4256, %4257
  %4259 = fadd fast float %4258, 1.000000e+00
  %4260 = fsub fast float %4242, %4010
  %4261 = fsub fast float %4243, %4011
  %4262 = fsub fast float %4244, %4012
  %4263 = fmul fast float %4252, %4260
  %4264 = fmul fast float %4252, %4261
  %4265 = fmul fast float %4252, %4262
  %4266 = fadd fast float %4263, %4010
  %4267 = fadd fast float %4264, %4011
  %4268 = fadd fast float %4265, %4012
  %4269 = fsub fast float %73, %3989
  %4270 = fsub fast float %74, %3990
  %4271 = fsub fast float %75, %3991
  %4272 = fmul fast float %4252, %4269
  %4273 = fmul fast float %4252, %4270
  %4274 = fmul fast float %4252, %4271
  %4275 = fadd fast float %4272, %3989
  %4276 = fadd fast float %4273, %3990
  %4277 = fadd fast float %4274, %3991
  %4278 = fmul fast float %4252, %4247
  %4279 = call float @dx.op.unary.f32(i32 7, float %4259)  ; Saturate(value)
  %4280 = fsub fast float 1.000000e+00, %4279
  %4281 = fmul fast float %4278, %4280
  %4282 = fadd fast float %4281, %4279
  %4283 = fsub fast float 1.000000e+00, %3973
  %4284 = fmul fast float %4252, %4283
  %4285 = fadd fast float %4284, %3973
  %4286 = call float @dx.op.dot3.f32(i32 55, float %4275, float %4276, float %4277, float %4275, float %4276, float %4277)  ; Dot3(ax,ay,az,bx,by,bz)
  %4287 = call float @dx.op.unary.f32(i32 25, float %4286)  ; Rsqrt(value)
  %4288 = fmul fast float %4275, %4287
  %4289 = fmul fast float %4276, %4287
  %4290 = fmul fast float %4277, %4287
  br label %4291

; <label>:4291                                    ; preds = %4123, %4116
  %4292 = phi float [ %4122, %4116 ], [ %4129, %4123 ]
  %4293 = phi float [ %4121, %4116 ], [ %4127, %4123 ]
  %4294 = phi float [ %4120, %4116 ], [ %4125, %4123 ]
  %4295 = phi float [ %4119, %4116 ], [ %4128, %4123 ]
  %4296 = phi float [ %4118, %4116 ], [ %4126, %4123 ]
  %4297 = phi float [ %4117, %4116 ], [ %4124, %4123 ]
  %4298 = phi float [ %4025, %4116 ], [ %4175, %4123 ]
  %4299 = phi float [ %4026, %4116 ], [ %4176, %4123 ]
  %4300 = phi float [ %4027, %4116 ], [ %4177, %4123 ]
  %4301 = phi float [ %3989, %4116 ], [ %4288, %4123 ]
  %4302 = phi float [ %3990, %4116 ], [ %4289, %4123 ]
  %4303 = phi float [ %3991, %4116 ], [ %4290, %4123 ]
  %4304 = phi float [ %4010, %4116 ], [ %4266, %4123 ]
  %4305 = phi float [ %4011, %4116 ], [ %4267, %4123 ]
  %4306 = phi float [ %4012, %4116 ], [ %4268, %4123 ]
  %4307 = phi float [ %4013, %4116 ], [ %4282, %4123 ]
  %4308 = phi float [ %3973, %4116 ], [ %4285, %4123 ]
  %4309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4309, 2
  %4311 = extractvalue %dx.types.CBufRet.f32 %4309, 3
  %4312 = fmul fast float %4310, %66
  %4313 = fmul fast float %4311, %67
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 0
  %4316 = extractvalue %dx.types.CBufRet.f32 %4314, 1
  %4317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %28, float %4312, float %4313, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4318 = extractvalue %dx.types.ResRet.f32 %4317, 0
  %4319 = fmul fast float %4318, %4316
  %4320 = call float @dx.op.unary.f32(i32 7, float %4319)  ; Saturate(value)
  %4321 = fadd fast float %4320, -1.000000e+00
  %4322 = fmul fast float %4321, %4315
  %4323 = fadd fast float %4322, 1.000000e+00
  %4324 = select i1 %170, float 0.000000e+00, float %4306
  %4325 = call float @dx.op.dot3.f32(i32 55, float %4301, float %4302, float %4303, float %4294, float %4293, float %4292)  ; Dot3(ax,ay,az,bx,by,bz)
  %4326 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4327 = call float @dx.op.dot3.f32(i32 55, float %4297, float %4296, float %4295, float %4301, float %4302, float %4303)  ; Dot3(ax,ay,az,bx,by,bz)
  %4328 = fmul fast float %4327, 2.000000e+00
  %4329 = fmul fast float %4328, %4301
  %4330 = fmul fast float %4328, %4302
  %4331 = fmul fast float %4328, %4303
  %4332 = fsub fast float %4297, %4329
  %4333 = fsub fast float %4296, %4330
  %4334 = fsub fast float %4295, %4331
  %4335 = call float @dx.op.binary.f32(i32 36, float %4308, float %4323)  ; FMin(a,b)
  %4336 = fsub fast float 1.000000e+00, %4335
  %4337 = bitcast float %4336 to i32
  %4338 = ashr i32 %4337, 1
  %4339 = add nsw i32 %4338, 532487669
  %4340 = bitcast i32 %4339 to float
  %4341 = fsub fast float 1.000000e+00, %4307
  %4342 = call float @dx.op.binary.f32(i32 35, float %4341, float 0x3F847AE140000000)  ; FMax(a,b)
  %4343 = fmul fast float %4342, %4342
  %4344 = fmul fast float %4343, %4343
  %4345 = call float @dx.op.unary.f32(i32 7, float %4326)  ; Saturate(value)
  %4346 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %28, float %4340, float %4344, float %4345, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4347 = extractvalue %dx.types.ResRet.f32 %4346, 0
  %4348 = fsub fast float 1.000000e+00, %4308
  %4349 = bitcast float %4348 to i32
  %4350 = sub nsw i32 2129859010, %4349
  %4351 = fsub fast float 1.000000e+00, %43
  %4352 = call float @dx.op.dot3.f32(i32 55, float %93, float %94, float %95, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %4353 = call float @dx.op.binary.f32(i32 35, float %4352, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4354 = fdiv fast float %4351, %4353
  %4355 = call float @dx.op.dot3.f32(i32 55, float %4301, float %4302, float %4303, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %4356 = call float @dx.op.unary.f32(i32 7, float %4355)  ; Saturate(value)
  %4357 = fmul fast float %4356, 5.000000e-01
  %4358 = fadd fast float %4357, 5.000000e-01
  %4359 = fmul fast float %4358, %43
  %4360 = call float @dx.op.dot3.f32(i32 55, float %4301, float %4302, float %4303, float %93, float %94, float %95)  ; Dot3(ax,ay,az,bx,by,bz)
  %4361 = call float @dx.op.unary.f32(i32 7, float %4360)  ; Saturate(value)
  %4362 = fmul fast float %4361, %4354
  %4363 = fadd fast float %4359, %4362
  %4364 = fsub fast float 5.000000e-01, %4357
  %4365 = fmul fast float %4364, %4298
  %4366 = fmul fast float %4364, %4299
  %4367 = fmul fast float %4364, %4300
  %4368 = fadd fast float %4363, %4365
  %4369 = fadd fast float %4363, %4366
  %4370 = fadd fast float %4363, %4367
  %4371 = call float @dx.op.dot3.f32(i32 55, float %4332, float %4333, float %4334, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %4372 = call float @dx.op.unary.f32(i32 7, float %4371)  ; Saturate(value)
  %4373 = fmul fast float %4372, 5.000000e-01
  %4374 = fadd fast float %4373, 5.000000e-01
  %4375 = fmul fast float %4374, %43
  %4376 = call float @dx.op.dot3.f32(i32 55, float %4332, float %4333, float %4334, float %93, float %94, float %95)  ; Dot3(ax,ay,az,bx,by,bz)
  %4377 = call float @dx.op.unary.f32(i32 7, float %4376)  ; Saturate(value)
  %4378 = fmul fast float %4377, %4354
  %4379 = fadd fast float %4375, %4378
  %4380 = fsub fast float 5.000000e-01, %4373
  %4381 = fmul fast float %4380, %4298
  %4382 = fmul fast float %4380, %4299
  %4383 = fmul fast float %4380, %4300
  %4384 = fadd fast float %4379, %4381
  %4385 = fadd fast float %4379, %4382
  %4386 = fadd fast float %4379, %4383
  %4387 = call float @dx.op.dot3.f32(i32 55, float %44, float %45, float %46, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4389 = extractvalue %dx.types.CBufRet.f32 %4388, 0
  %4390 = call float @dx.op.binary.f32(i32 36, float %4298, float %4389)  ; FMin(a,b)
  %4391 = fmul fast float %4390, %4336
  %4392 = fsub fast float 1.000000e+00, %4391
  %4393 = bitcast float %4392 to i32
  %4394 = sub nsw i32 2129859010, %4393
  %4395 = bitcast i32 %4394 to float
  %4396 = call float @dx.op.binary.f32(i32 36, float %4299, float %4389)  ; FMin(a,b)
  %4397 = fmul fast float %4396, %4336
  %4398 = fsub fast float 1.000000e+00, %4397
  %4399 = bitcast float %4398 to i32
  %4400 = sub nsw i32 2129859010, %4399
  %4401 = bitcast i32 %4400 to float
  %4402 = call float @dx.op.binary.f32(i32 36, float %4300, float %4389)  ; FMin(a,b)
  %4403 = fmul fast float %4402, %4336
  %4404 = fsub fast float 1.000000e+00, %4403
  %4405 = bitcast float %4404 to i32
  %4406 = sub nsw i32 2129859010, %4405
  %4407 = bitcast i32 %4406 to float
  %4408 = fmul fast float %4335, %44
  %4409 = fmul fast float %4408, %4368
  %4410 = fmul fast float %4409, %4395
  %4411 = fmul fast float %4335, %45
  %4412 = fmul fast float %4411, %4369
  %4413 = fmul fast float %4412, %4401
  %4414 = fmul fast float %4335, %46
  %4415 = fmul fast float %4414, %4370
  %4416 = fmul fast float %4415, %4407
  %4417 = call float @dx.op.binary.f32(i32 36, float %4304, float %4389)  ; FMin(a,b)
  %4418 = fmul fast float %4417, %4336
  %4419 = fsub fast float 1.000000e+00, %4418
  %4420 = bitcast float %4419 to i32
  %4421 = sub nsw i32 2129859010, %4420
  %4422 = bitcast i32 %4421 to float
  %4423 = call float @dx.op.binary.f32(i32 36, float %4305, float %4389)  ; FMin(a,b)
  %4424 = fmul fast float %4423, %4336
  %4425 = fsub fast float 1.000000e+00, %4424
  %4426 = bitcast float %4425 to i32
  %4427 = sub nsw i32 2129859010, %4426
  %4428 = bitcast i32 %4427 to float
  %4429 = call float @dx.op.binary.f32(i32 36, float %4324, float %4389)  ; FMin(a,b)
  %4430 = fmul fast float %4429, %4336
  %4431 = fsub fast float 1.000000e+00, %4430
  %4432 = bitcast float %4431 to i32
  %4433 = sub nsw i32 2129859010, %4432
  %4434 = bitcast i32 %4433 to float
  %4435 = fmul fast float %4408, %4384
  %4436 = fmul fast float %4435, %4422
  %4437 = fmul fast float %4411, %4385
  %4438 = fmul fast float %4437, %4428
  %4439 = fmul fast float %4414, %4386
  %4440 = fmul fast float %4439, %4434
  %4441 = call float @dx.op.dot3.f32(i32 55, float %4410, float %4413, float %4416, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4442 = select i1 %170, float 0.000000e+00, float %4410
  %4443 = select i1 %170, float %4441, float %4413
  %4444 = select i1 %170, float 0.000000e+00, float %4416
  %4445 = call float @dx.op.dot3.f32(i32 55, float %4436, float %4438, float %4440, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4446 = select i1 %170, float 0.000000e+00, float %4436
  %4447 = select i1 %170, float %4445, float %4438
  %4448 = select i1 %170, float 0.000000e+00, float %4440
  %4449 = fmul fast float %4326, 9.843750e-01
  %4450 = fmul fast float %4307, 9.843750e-01
  %4451 = fadd fast float %4449, 7.812500e-03
  %4452 = fadd fast float %4450, 7.812500e-03
  %4453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %4451, float %4452, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4454 = extractvalue %dx.types.ResRet.f32 %4453, 2
  %4455 = extractvalue %dx.types.ResRet.f32 %4453, 3
  %4456 = fmul fast float %4454, %4304
  %4457 = fmul fast float %4454, %4305
  %4458 = fmul fast float %4454, %4324
  %4459 = fadd fast float %4456, %4455
  %4460 = fadd fast float %4457, %4455
  %4461 = fadd fast float %4458, %4455
  %4462 = fcmp fast ogt float %3966, 0.000000e+00
  br i1 %4462, label %4463, label %4489

; <label>:4463                                    ; preds = %4291
  %4464 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %3966, float %4326, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4465 = extractvalue %dx.types.ResRet.f32 %4464, 0
  %4466 = extractvalue %dx.types.ResRet.f32 %4464, 1
  %4467 = extractvalue %dx.types.ResRet.f32 %4464, 2
  %4468 = fadd fast float %4465, -5.000000e-01
  %4469 = fadd fast float %4466, -5.000000e-01
  %4470 = fadd fast float %4467, -5.000000e-01
  %4471 = fsub fast float 1.000000e+00, %4304
  %4472 = fsub fast float 1.000000e+00, %4305
  %4473 = fsub fast float 1.000000e+00, %4324
  %4474 = fmul fast float %4304, 4.000000e+00
  %4475 = fmul fast float %4474, %4471
  %4476 = fmul fast float %4475, %4468
  %4477 = fmul fast float %4305, 4.000000e+00
  %4478 = fmul fast float %4477, %4472
  %4479 = fmul fast float %4478, %4469
  %4480 = fmul fast float %4324, 4.000000e+00
  %4481 = fmul fast float %4480, %4473
  %4482 = fmul fast float %4481, %4470
  %4483 = fadd fast float %4476, %4459
  %4484 = fadd fast float %4479, %4460
  %4485 = fadd fast float %4482, %4461
  %4486 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4487 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4488 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  br label %4489

; <label>:4489                                    ; preds = %4463, %4291
  %4490 = phi float [ %4486, %4463 ], [ %4459, %4291 ]
  %4491 = phi float [ %4487, %4463 ], [ %4460, %4291 ]
  %4492 = phi float [ %4488, %4463 ], [ %4461, %4291 ]
  %4493 = call float @dx.op.binary.f32(i32 35, float %4491, float %4492)  ; FMax(a,b)
  %4494 = call float @dx.op.binary.f32(i32 35, float %4490, float %4493)  ; FMax(a,b)
  %4495 = fsub fast float 1.000000e+00, %4494
  %4496 = fmul fast float %4494, %4307
  %4497 = fadd fast float %4496, %4307
  %4498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4499 = extractvalue %dx.types.CBufRet.f32 %4498, 0
  %4500 = extractvalue %dx.types.CBufRet.f32 %4498, 1
  %4501 = extractvalue %dx.types.CBufRet.f32 %4498, 2
  %4502 = extractvalue %dx.types.CBufRet.f32 %4498, 3
  %4503 = fmul fast float %4497, %4499
  %4504 = fadd fast float %4503, %4500
  %4505 = call float @dx.op.unary.f32(i32 7, float %4504)  ; Saturate(value)
  %4506 = fmul fast float %4501, %4497
  %4507 = fadd fast float %4506, %4502
  %4508 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4509 = fsub fast float 1.000000e+00, %4347
  %4510 = fadd fast float %4509, %4508
  %4511 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4512 = fcmp fast olt float %4511, 1.000000e+00
  br i1 %4512, label %4513, label %5331

; <label>:4513                                    ; preds = %4489
  %4514 = fcmp fast olt float %4505, 1.000000e+00
  %4515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4516 = extractvalue %dx.types.CBufRet.f32 %4515, 0
  %4517 = fcmp fast ogt float %4516, 0.000000e+00
  %4518 = or i1 %4514, %4517
  %4519 = or i1 %4514, %4517
  %4520 = xor i1 %4519, true
  %4521 = zext i1 %4520 to i32
  br i1 %4518, label %4522, label %4765

; <label>:4522                                    ; preds = %4513
  %4523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4524 = extractvalue %dx.types.CBufRet.f32 %4523, 0
  %4525 = extractvalue %dx.types.CBufRet.f32 %4523, 1
  %4526 = extractvalue %dx.types.CBufRet.f32 %4523, 2
  %4527 = extractvalue %dx.types.CBufRet.f32 %4523, 3
  %4528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4529 = extractvalue %dx.types.CBufRet.f32 %4528, 0
  %4530 = extractvalue %dx.types.CBufRet.f32 %4528, 1
  %4531 = extractvalue %dx.types.CBufRet.f32 %4528, 2
  %4532 = extractvalue %dx.types.CBufRet.f32 %4528, 3
  %4533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4534 = extractvalue %dx.types.CBufRet.f32 %4533, 0
  %4535 = extractvalue %dx.types.CBufRet.f32 %4533, 1
  %4536 = extractvalue %dx.types.CBufRet.f32 %4533, 2
  %4537 = extractvalue %dx.types.CBufRet.f32 %4533, 3
  %4538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4539 = extractvalue %dx.types.CBufRet.f32 %4538, 0
  %4540 = extractvalue %dx.types.CBufRet.f32 %4538, 1
  %4541 = extractvalue %dx.types.CBufRet.f32 %4538, 2
  %4542 = extractvalue %dx.types.CBufRet.f32 %4538, 3
  %4543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4544 = extractvalue %dx.types.CBufRet.f32 %4543, 0
  %4545 = extractvalue %dx.types.CBufRet.f32 %4543, 1
  %4546 = extractvalue %dx.types.CBufRet.f32 %4543, 2
  %4547 = extractvalue %dx.types.CBufRet.f32 %4543, 3
  %4548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4549 = extractvalue %dx.types.CBufRet.f32 %4548, 0
  %4550 = extractvalue %dx.types.CBufRet.f32 %4548, 1
  %4551 = extractvalue %dx.types.CBufRet.f32 %4548, 2
  %4552 = extractvalue %dx.types.CBufRet.f32 %4548, 3
  %4553 = call float @dx.op.dot3.f32(i32 55, float %4549, float %4550, float %4551, float %4332, float %4333, float %4334)  ; Dot3(ax,ay,az,bx,by,bz)
  %4554 = call float @dx.op.dot3.f32(i32 55, float %4301, float %4302, float %4303, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4555 = call float @dx.op.unary.f32(i32 6, float %4554)  ; FAbs(value)
  %4556 = fmul fast float %4555, 8.000000e+00
  %4557 = fadd fast float %4556, -6.000000e+00
  %4558 = call float @dx.op.unary.f32(i32 7, float %4557)  ; Saturate(value)
  %4559 = fmul fast float %4553, 8.000000e+00
  %4560 = fmul fast float %4559, %4516
  %4561 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4562 = fcmp fast ogt float %4561, 0.000000e+00
  br i1 %4562, label %4563, label %4740, !dx.controlflow.hints !69

; <label>:4563                                    ; preds = %4522
  %4564 = extractvalue %dx.types.CBufRet.f32 %4515, 1
  %4565 = extractvalue %dx.types.CBufRet.f32 %4515, 2
  %4566 = fsub fast float %4564, %4565
  %4567 = fmul fast float %4566, %4307
  %4568 = fadd fast float %4567, %4565
  %4569 = fmul fast float %183, 2.000000e+00
  %4570 = fmul fast float %184, 2.000000e+00
  %4571 = fadd fast float %4569, -1.000000e+00
  %4572 = fadd fast float %4570, -1.000000e+00
  %4573 = fmul fast float %4568, %4571
  %4574 = fmul fast float %4568, %4572
  %4575 = fadd fast float %4573, %66
  %4576 = fadd fast float %4574, %67
  %4577 = fmul fast float %4575, %4310
  %4578 = fmul fast float %4576, %4311
  %4579 = fadd fast float %4307, 0xBFE3333340000000
  %4580 = fmul fast float %4579, 0x4004000020000000
  %4581 = fsub fast float 1.000000e+00, %4580
  %4582 = call float @dx.op.unary.f32(i32 7, float %4581)  ; Saturate(value)
  %4583 = fmul fast float %4582, 3.000000e+00
  %4584 = fadd fast float %4583, %183
  %4585 = call float @dx.op.unary.f32(i32 27, float %4584)  ; Round_ni(value)
  %4586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %29, float %4577, float %4578, float %4585, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4587 = extractvalue %dx.types.ResRet.f32 %4586, 0
  %4588 = fcmp fast une float %4587, 0xFFF0000000000000
  %4589 = fcmp fast une float %4587, 0x7FF0000000000000
  %4590 = and i1 %4588, %4589
  %4591 = fcmp fast olt float %4587, 0.000000e+00
  %4592 = call float @dx.op.unary.f32(i32 6, float %4587)  ; FAbs(value)
  %4593 = fsub fast float 1.000000e+00, %4592
  %4594 = select i1 %4590, float 1.000000e+00, float 0.000000e+00
  %4595 = fmul fast float %4594, %4561
  %4596 = fcmp fast ogt float %4595, 0.000000e+00
  br i1 %4596, label %4597, label %4740, !dx.controlflow.hints !70

; <label>:4597                                    ; preds = %4563
  %4598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4599 = extractvalue %dx.types.CBufRet.f32 %4598, 0
  %4600 = extractvalue %dx.types.CBufRet.f32 %4598, 1
  %4601 = extractvalue %dx.types.CBufRet.f32 %4598, 2
  %4602 = select i1 %4591, float 0.000000e+00, float %4599
  %4603 = select i1 %4591, float 0.000000e+00, float %4600
  %4604 = select i1 %4591, float 0.000000e+00, float %4601
  %4605 = select i1 %4591, float %4524, float %4539
  %4606 = select i1 %4591, float %4529, float %4544
  %4607 = select i1 %4591, float %4534, float %4549
  %4608 = select i1 %4591, float %4525, float %4540
  %4609 = select i1 %4591, float %4530, float %4545
  %4610 = select i1 %4591, float %4535, float %4550
  %4611 = select i1 %4591, float %4526, float %4541
  %4612 = select i1 %4591, float %4531, float %4546
  %4613 = select i1 %4591, float %4536, float %4551
  %4614 = select i1 %4591, float %4527, float %4542
  %4615 = select i1 %4591, float %4532, float %4547
  %4616 = select i1 %4591, float %4537, float %4552
  %4617 = fadd fast float %4602, %129
  %4618 = fadd fast float %4603, %130
  %4619 = fadd fast float %4604, %131
  %4620 = fmul fast float %4617, %4605
  %4621 = call float @dx.op.tertiary.f32(i32 46, float %4618, float %4608, float %4620)  ; FMad(a,b,c)
  %4622 = call float @dx.op.tertiary.f32(i32 46, float %4619, float %4611, float %4621)  ; FMad(a,b,c)
  %4623 = fadd fast float %4622, %4614
  %4624 = fmul fast float %4617, %4606
  %4625 = call float @dx.op.tertiary.f32(i32 46, float %4618, float %4609, float %4624)  ; FMad(a,b,c)
  %4626 = call float @dx.op.tertiary.f32(i32 46, float %4619, float %4612, float %4625)  ; FMad(a,b,c)
  %4627 = fadd fast float %4626, %4615
  %4628 = fmul fast float %4617, %4607
  %4629 = call float @dx.op.tertiary.f32(i32 46, float %4618, float %4610, float %4628)  ; FMad(a,b,c)
  %4630 = call float @dx.op.tertiary.f32(i32 46, float %4619, float %4613, float %4629)  ; FMad(a,b,c)
  %4631 = fadd fast float %4630, %4616
  %4632 = fdiv fast float 1.000000e+00, %4631
  %4633 = fmul fast float %4632, %4623
  %4634 = fmul fast float %4632, %4627
  %4635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4636 = extractvalue %dx.types.CBufRet.f32 %4635, 0
  %4637 = extractvalue %dx.types.CBufRet.f32 %4635, 1
  %4638 = fmul fast float %4633, %4636
  %4639 = fmul fast float %4634, %4637
  %4640 = extractvalue %dx.types.CBufRet.f32 %4635, 2
  %4641 = extractvalue %dx.types.CBufRet.f32 %4635, 3
  %4642 = fadd fast float %4638, %4640
  %4643 = fadd fast float %4639, %4641
  %4644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4645 = extractvalue %dx.types.CBufRet.f32 %4644, 3
  %4646 = fmul fast float %4645, %4332
  %4647 = fmul fast float %4645, %4333
  %4648 = fmul fast float %4645, %4334
  %4649 = fadd fast float %4646, %4617
  %4650 = fadd fast float %4647, %4618
  %4651 = fadd fast float %4648, %4619
  %4652 = fmul fast float %4649, %4605
  %4653 = call float @dx.op.tertiary.f32(i32 46, float %4650, float %4608, float %4652)  ; FMad(a,b,c)
  %4654 = call float @dx.op.tertiary.f32(i32 46, float %4651, float %4611, float %4653)  ; FMad(a,b,c)
  %4655 = fadd fast float %4654, %4614
  %4656 = fmul fast float %4649, %4606
  %4657 = call float @dx.op.tertiary.f32(i32 46, float %4650, float %4609, float %4656)  ; FMad(a,b,c)
  %4658 = call float @dx.op.tertiary.f32(i32 46, float %4651, float %4612, float %4657)  ; FMad(a,b,c)
  %4659 = fadd fast float %4658, %4615
  %4660 = fmul fast float %4649, %4607
  %4661 = call float @dx.op.tertiary.f32(i32 46, float %4650, float %4610, float %4660)  ; FMad(a,b,c)
  %4662 = call float @dx.op.tertiary.f32(i32 46, float %4651, float %4613, float %4661)  ; FMad(a,b,c)
  %4663 = fadd fast float %4662, %4616
  %4664 = fdiv fast float 1.000000e+00, %4663
  %4665 = fmul fast float %4664, %4655
  %4666 = fmul fast float %4664, %4659
  %4667 = fmul fast float %4642, 2.000000e+00
  %4668 = fadd fast float %4667, -1.000000e+00
  %4669 = call float @dx.op.unary.f32(i32 6, float %4668)  ; FAbs(value)
  %4670 = fmul fast float %4669, 5.000000e+00
  %4671 = fadd fast float %4670, -4.000000e+00
  %4672 = call float @dx.op.unary.f32(i32 7, float %4671)  ; Saturate(value)
  %4673 = fmul fast float %4672, %4558
  %4674 = fsub fast float %4633, %4665
  %4675 = fmul fast float %4636, %4674
  %4676 = fmul fast float %4673, %4675
  %4677 = fsub fast float %4665, %4633
  %4678 = fmul fast float %4636, %4677
  %4679 = fadd fast float %4678, %4676
  %4680 = fsub fast float %4666, %4634
  %4681 = fmul fast float %4637, %4680
  %4682 = fmul fast float %4679, %4593
  %4683 = fmul fast float %4681, %4593
  %4684 = fadd fast float %4682, %4642
  %4685 = fadd fast float %4683, %4643
  %4686 = fsub fast float %4664, %4632
  %4687 = fmul fast float %4686, %4593
  %4688 = fadd fast float %4687, %4632
  %4689 = fdiv fast float 1.000000e+00, %4688
  %4690 = fadd fast float %4307, -1.000000e+00
  %4691 = fsub fast float %4689, %4631
  %4692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %4693 = extractvalue %dx.types.CBufRet.f32 %4692, 2
  %4694 = fmul fast float %4693, %4689
  %4695 = fdiv fast float 1.600000e+02, %4694
  %4696 = fmul fast float %4690, %4690
  %4697 = fmul fast float %4696, 0xBFB5B17960000000
  %4698 = fmul fast float %4697, %4691
  %4699 = fmul fast float %4698, %4695
  %4700 = call float @dx.op.unary.f32(i32 21, float %4699)  ; Exp(value)
  %4701 = fmul fast float %4700, 0x3FF04B2960000000
  %4702 = fsub fast float 0x3FF04B2960000000, %4701
  %4703 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4704 = fmul fast float %4703, 4.000000e+00
  %4705 = fadd fast float %183, -5.000000e-01
  %4706 = fadd fast float %184, -5.000000e-01
  %4707 = fmul fast float %4703, 0x3FBEB851E0000000
  %4708 = call float @dx.op.unary.f32(i32 7, float %4707)  ; Saturate(value)
  %4709 = fmul fast float %4708, %4705
  %4710 = fmul fast float %4708, %4706
  %4711 = fadd fast float %4684, %4709
  %4712 = fadd fast float %4685, %4710
  %4713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %4711, float %4712, float undef, float undef, i32 0, i32 0, i32 undef, float %4704)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4714 = extractvalue %dx.types.ResRet.f32 %4713, 0
  %4715 = extractvalue %dx.types.ResRet.f32 %4713, 1
  %4716 = extractvalue %dx.types.ResRet.f32 %4713, 2
  %4717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4718 = extractvalue %dx.types.CBufRet.f32 %4717, 2
  %4719 = fmul fast float %4718, %4714
  %4720 = fmul fast float %4718, %4715
  %4721 = fmul fast float %4718, %4716
  %4722 = select i1 %170, float 0.000000e+00, float %4720
  %4723 = select i1 %170, float 0.000000e+00, float %4721
  %4724 = fmul fast float %4711, 2.000000e+00
  %4725 = fmul fast float %4712, 2.000000e+00
  %4726 = fadd fast float %4724, -1.000000e+00
  %4727 = fadd fast float %4725, -1.000000e+00
  %4728 = fmul fast float %4726, %4726
  %4729 = fsub fast float 1.000000e+00, %4728
  %4730 = call float @dx.op.unary.f32(i32 7, float %4729)  ; Saturate(value)
  %4731 = fsub fast float 1.000000e+00, %4730
  %4732 = fmul fast float %4731, %4558
  %4733 = fadd fast float %4732, %4730
  %4734 = fmul fast float %4727, %4727
  %4735 = fsub fast float 1.000000e+00, %4734
  %4736 = call float @dx.op.unary.f32(i32 7, float %4735)  ; Saturate(value)
  %4737 = fmul fast float %4733, %4736
  %4738 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4739 = fmul fast float %4738, %4595
  br label %4740

; <label>:4740                                    ; preds = %4597, %4563, %4522
  %4741 = phi float [ %4719, %4597 ], [ 0.000000e+00, %4563 ], [ 0.000000e+00, %4522 ]
  %4742 = phi float [ %4722, %4597 ], [ 0.000000e+00, %4563 ], [ 0.000000e+00, %4522 ]
  %4743 = phi float [ %4723, %4597 ], [ 0.000000e+00, %4563 ], [ 0.000000e+00, %4522 ]
  %4744 = phi float [ %4739, %4597 ], [ 0.000000e+00, %4563 ], [ 0.000000e+00, %4522 ]
  %4745 = fcmp fast olt float %4744, 1.000000e+00
  %4746 = or i1 %4745, %4520
  %4747 = zext i1 %4746 to i32
  %4748 = fmul fast float %4744, %4505
  %4749 = fsub fast float %4744, %4748
  %4750 = fsub fast float 1.000000e+00, %4511
  %4751 = fmul fast float %4749, %4750
  %4752 = fadd fast float %4751, %4511
  %4753 = fsub fast float %4752, %4749
  %4754 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  %4755 = fmul fast float %4754, %4446
  %4756 = fmul fast float %4754, %4447
  %4757 = fmul fast float %4754, %4448
  %4758 = fsub fast float -0.000000e+00, %4752
  %4759 = fmul fast float %4749, %4741
  %4760 = fmul fast float %4749, %4742
  %4761 = fmul fast float %4749, %4743
  %4762 = fadd fast float %4759, %4755
  %4763 = fadd fast float %4760, %4756
  %4764 = fadd fast float %4761, %4757
  br label %4765

; <label>:4765                                    ; preds = %4740, %4513
  %4766 = phi float [ %4511, %4513 ], [ %4758, %4740 ]
  %4767 = phi float [ %4446, %4513 ], [ %4762, %4740 ]
  %4768 = phi float [ %4447, %4513 ], [ %4763, %4740 ]
  %4769 = phi float [ %4448, %4513 ], [ %4764, %4740 ]
  %4770 = phi i32 [ %4521, %4513 ], [ %4747, %4740 ]
  %4771 = icmp eq i32 %4770, 0
  br i1 %4771, label %5331, label %4772

; <label>:4772                                    ; preds = %4765
  %4773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4774 = extractvalue %dx.types.CBufRet.f32 %4773, 2
  %4775 = extractvalue %dx.types.CBufRet.f32 %4773, 3
  %4776 = fmul fast float %4774, %66
  %4777 = fmul fast float %4775, %67
  %4778 = fptoui float %4776 to i32
  %4779 = fptoui float %4777 to i32
  %4780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4781 = extractvalue %dx.types.CBufRet.f32 %4780, 0
  %4782 = extractvalue %dx.types.CBufRet.f32 %4780, 2
  %4783 = extractvalue %dx.types.CBufRet.f32 %4780, 3
  %4784 = fadd fast float %61, -4.000000e+00
  %4785 = call float @dx.op.binary.f32(i32 35, float %4784, float 0.000000e+00)  ; FMax(a,b)
  %4786 = fadd fast float %4785, %4781
  %4787 = fmul fast float %4786, %4782
  %4788 = call float @dx.op.unary.f32(i32 23, float %4787)  ; Log(value)
  %4789 = fmul fast float %4788, %4783
  %4790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4791 = extractvalue %dx.types.CBufRet.f32 %4790, 2
  %4792 = fmul fast float %4789, %4791
  %4793 = call float @dx.op.unary.f32(i32 7, float %4792)  ; Saturate(value)
  %4794 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4795 = extractvalue %dx.types.CBufRet.i32 %4794, 1
  %4796 = add i32 %4795, -1
  %4797 = uitofp i32 %4795 to float
  %4798 = fmul fast float %4797, %4793
  %4799 = fptoui float %4798 to i32
  %4800 = call i32 @dx.op.binary.i32(i32 40, i32 %4799, i32 %4796)  ; UMin(a,b)
  %4801 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4802 = extractvalue %dx.types.CBufRet.i32 %4801, 2
  %4803 = extractvalue %dx.types.CBufRet.i32 %4801, 3
  %4804 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4779, i32 %4802, i32 %4778)  ; UMad(a,b,c)
  %4805 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4800, i32 %4803, i32 %4804)  ; UMad(a,b,c)
  %4806 = call float @dx.op.binary.f32(i32 35, float %61, float 0.000000e+00)  ; FMax(a,b)
  %4807 = fptoui float %4806 to i32
  %4808 = lshr i32 %4807, 5
  %4809 = call i32 @dx.op.binary.i32(i32 40, i32 %4808, i32 8191)  ; UMin(a,b)
  %4810 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4811 = extractvalue %dx.types.CBufRet.i32 %4810, 2
  %4812 = add nsw i32 %4811, -1
  %4813 = call i32 @dx.op.binary.i32(i32 37, i32 %4812, i32 0)  ; IMax(a,b)
  %4814 = shl i32 %4809, 2
  %4815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %4814, i32 undef)  ; BufferLoad(srv,index,wot)
  %4816 = extractvalue %dx.types.ResRet.i32 %4815, 0
  %4817 = lshr i32 %4816, 16
  %4818 = and i32 %4816, 65535
  %4819 = lshr i32 %4816, 21
  %4820 = lshr i32 %4818, 5
  %4821 = call i32 @dx.op.binary.i32(i32 40, i32 %4820, i32 %4813)  ; UMin(a,b)
  %4822 = icmp ugt i32 %4819, %4821
  br i1 %4822, label %5203, label %4823

; <label>:4823                                    ; preds = %4772
  br label %4824

; <label>:4824                                    ; preds = %5192, %4823
  %4825 = phi float [ %5193, %5192 ], [ 0.000000e+00, %4823 ]
  %4826 = phi float [ %5194, %5192 ], [ 0.000000e+00, %4823 ]
  %4827 = phi float [ %5195, %5192 ], [ 0.000000e+00, %4823 ]
  %4828 = phi float [ %5196, %5192 ], [ 1.000000e+00, %4823 ]
  %4829 = phi i32 [ %5200, %5192 ], [ %4819, %4823 ]
  %4830 = phi float [ %5197, %5192 ], [ 0.000000e+00, %4823 ]
  %4831 = phi float [ %5198, %5192 ], [ 0.000000e+00, %4823 ]
  %4832 = phi float [ %5199, %5192 ], [ 0.000000e+00, %4823 ]
  %4833 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4834 = extractvalue %dx.types.CBufRet.i32 %4833, 2
  %4835 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4805, i32 %4834, i32 %4829)  ; UMad(a,b,c)
  %4836 = shl i32 %4835, 2
  %4837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %4836, i32 undef)  ; BufferLoad(srv,index,wot)
  %4838 = extractvalue %dx.types.ResRet.i32 %4837, 0
  %4839 = shl i32 %4829, 5
  %4840 = sub nsw i32 %4817, %4839
  %4841 = call i32 @dx.op.binary.i32(i32 37, i32 %4840, i32 0)  ; IMax(a,b)
  %4842 = call i32 @dx.op.binary.i32(i32 38, i32 %4841, i32 31)  ; IMin(a,b)
  %4843 = sub nsw i32 1, %4817
  %4844 = add nsw i32 %4843, %4818
  %4845 = call i32 @dx.op.binary.i32(i32 37, i32 %4844, i32 0)  ; IMax(a,b)
  %4846 = call i32 @dx.op.binary.i32(i32 38, i32 %4845, i32 32)  ; IMin(a,b)
  %4847 = and i32 %4846, 31
  %4848 = shl i32 -1, %4847
  %4849 = xor i32 %4848, -1
  %4850 = and i32 %4842, 31
  %4851 = shl i32 %4849, %4850
  %4852 = icmp eq i32 %4846, 32
  %4853 = select i1 %4852, i32 -1, i32 %4851
  %4854 = and i32 %4853, %4838
  %4855 = icmp eq i32 %4854, 0
  br i1 %4855, label %5192, label %4856

; <label>:4856                                    ; preds = %4824
  br label %4857

; <label>:4857                                    ; preds = %4966, %4856
  %4858 = phi float [ %4967, %4966 ], [ %4825, %4856 ]
  %4859 = phi float [ %4968, %4966 ], [ %4826, %4856 ]
  %4860 = phi float [ %4969, %4966 ], [ %4827, %4856 ]
  %4861 = phi float [ %4970, %4966 ], [ %4828, %4856 ]
  %4862 = phi i32 [ %4870, %4966 ], [ %4854, %4856 ]
  %4863 = phi float [ %4971, %4966 ], [ %4830, %4856 ]
  %4864 = phi float [ %4972, %4966 ], [ %4831, %4856 ]
  %4865 = phi float [ %4973, %4966 ], [ %4832, %4856 ]
  %4866 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4862)  ; FirstbitLo(value)
  %4867 = add i32 %4866, %4839
  %4868 = and i32 %4866, 31
  %4869 = shl i32 1, %4868
  %4870 = xor i32 %4869, %4862
  %4871 = mul i32 %4867, 72
  %4872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4871, i32 undef)  ; BufferLoad(srv,index,wot)
  %4873 = extractvalue %dx.types.ResRet.f32 %4872, 0
  %4874 = extractvalue %dx.types.ResRet.f32 %4872, 1
  %4875 = extractvalue %dx.types.ResRet.f32 %4872, 2
  %4876 = add i32 %4871, 12
  %4877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4876, i32 undef)  ; BufferLoad(srv,index,wot)
  %4878 = extractvalue %dx.types.ResRet.i32 %4877, 0
  %4879 = add i32 %4871, 16
  %4880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4879, i32 undef)  ; BufferLoad(srv,index,wot)
  %4881 = extractvalue %dx.types.ResRet.f32 %4880, 0
  %4882 = extractvalue %dx.types.ResRet.f32 %4880, 1
  %4883 = extractvalue %dx.types.ResRet.f32 %4880, 2
  %4884 = add i32 %4871, 28
  %4885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4884, i32 undef)  ; BufferLoad(srv,index,wot)
  %4886 = extractvalue %dx.types.ResRet.f32 %4885, 0
  %4887 = add i32 %4871, 32
  %4888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4887, i32 undef)  ; BufferLoad(srv,index,wot)
  %4889 = extractvalue %dx.types.ResRet.f32 %4888, 0
  %4890 = extractvalue %dx.types.ResRet.f32 %4888, 1
  %4891 = extractvalue %dx.types.ResRet.f32 %4888, 2
  %4892 = extractvalue %dx.types.ResRet.f32 %4888, 3
  %4893 = add i32 %4871, 48
  %4894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4893, i32 undef)  ; BufferLoad(srv,index,wot)
  %4895 = extractvalue %dx.types.ResRet.f32 %4894, 0
  %4896 = extractvalue %dx.types.ResRet.f32 %4894, 1
  %4897 = add i32 %4871, 56
  %4898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4897, i32 undef)  ; BufferLoad(srv,index,wot)
  %4899 = extractvalue %dx.types.ResRet.f32 %4898, 0
  %4900 = extractvalue %dx.types.ResRet.f32 %4898, 1
  %4901 = add i32 %4871, 64
  %4902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4901, i32 undef)  ; BufferLoad(srv,index,wot)
  %4903 = extractvalue %dx.types.ResRet.f32 %4902, 0
  %4904 = extractvalue %dx.types.ResRet.f32 %4902, 1
  %4905 = mul i32 %4867, 60
  %4906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4905, i32 undef)  ; BufferLoad(srv,index,wot)
  %4907 = extractvalue %dx.types.ResRet.f32 %4906, 0
  %4908 = extractvalue %dx.types.ResRet.f32 %4906, 1
  %4909 = extractvalue %dx.types.ResRet.f32 %4906, 2
  %4910 = add i32 %4905, 12
  %4911 = add i32 %4905, 48
  %4912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4911, i32 undef)  ; BufferLoad(srv,index,wot)
  %4913 = extractvalue %dx.types.ResRet.f32 %4912, 0
  %4914 = extractvalue %dx.types.ResRet.f32 %4912, 1
  %4915 = extractvalue %dx.types.ResRet.f32 %4912, 2
  %4916 = and i32 %4878, 32767
  %4917 = bitcast float %4873 to i32
  %4918 = icmp eq i32 %4917, -1
  %4919 = bitcast float %4874 to i32
  %4920 = and i32 %4878, 32768
  %4921 = icmp ne i32 %4920, 0
  %4922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4923 = extractvalue %dx.types.CBufRet.f32 %4922, 0
  %4924 = extractvalue %dx.types.CBufRet.f32 %4922, 1
  %4925 = extractvalue %dx.types.CBufRet.f32 %4922, 2
  %4926 = fsub fast float %4907, %4923
  %4927 = fsub fast float %4908, %4924
  %4928 = fsub fast float %4909, %4925
  %4929 = fsub fast float %129, %4926
  %4930 = fsub fast float %130, %4927
  %4931 = fsub fast float %131, %4928
  %4932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4910, i32 undef)  ; BufferLoad(srv,index,wot)
  %4933 = extractvalue %dx.types.ResRet.f32 %4932, 0
  %4934 = extractvalue %dx.types.ResRet.f32 %4932, 1
  %4935 = extractvalue %dx.types.ResRet.f32 %4932, 2
  %4936 = call float @dx.op.dot3.f32(i32 55, float %4929, float %4930, float %4931, float %4933, float %4934, float %4935)  ; Dot3(ax,ay,az,bx,by,bz)
  %4937 = add i32 %4905, 24
  %4938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4937, i32 undef)  ; BufferLoad(srv,index,wot)
  %4939 = extractvalue %dx.types.ResRet.f32 %4938, 0
  %4940 = extractvalue %dx.types.ResRet.f32 %4938, 1
  %4941 = extractvalue %dx.types.ResRet.f32 %4938, 2
  %4942 = call float @dx.op.dot3.f32(i32 55, float %4929, float %4930, float %4931, float %4939, float %4940, float %4941)  ; Dot3(ax,ay,az,bx,by,bz)
  %4943 = add i32 %4905, 36
  %4944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4943, i32 undef)  ; BufferLoad(srv,index,wot)
  %4945 = extractvalue %dx.types.ResRet.f32 %4944, 0
  %4946 = extractvalue %dx.types.ResRet.f32 %4944, 1
  %4947 = extractvalue %dx.types.ResRet.f32 %4944, 2
  %4948 = call float @dx.op.dot3.f32(i32 55, float %4929, float %4930, float %4931, float %4945, float %4946, float %4947)  ; Dot3(ax,ay,az,bx,by,bz)
  %4949 = call float @dx.op.unary.f32(i32 6, float %4936)  ; FAbs(value)
  %4950 = call float @dx.op.unary.f32(i32 6, float %4942)  ; FAbs(value)
  %4951 = call float @dx.op.unary.f32(i32 6, float %4948)  ; FAbs(value)
  %4952 = fsub fast float %4913, %4949
  %4953 = fsub fast float %4914, %4950
  %4954 = fsub fast float %4915, %4951
  %4955 = fmul fast float %4952, %4881
  %4956 = fmul fast float %4953, %4882
  %4957 = fmul fast float %4954, %4883
  %4958 = call float @dx.op.binary.f32(i32 36, float %4956, float %4957)  ; FMin(a,b)
  %4959 = call float @dx.op.binary.f32(i32 36, float %4955, float %4958)  ; FMin(a,b)
  %4960 = call float @dx.op.unary.f32(i32 7, float %4959)  ; Saturate(value)
  %4961 = call float @dx.op.binary.f32(i32 36, float %4861, float %4960)  ; FMin(a,b)
  %4962 = uitofp i1 %4921 to float
  %4963 = fsub fast float 1.000000e+00, %4962
  %4964 = fmul fast float %4961, %4963
  %4965 = fcmp fast ogt float %4964, 0.000000e+00
  br i1 %4965, label %4975, label %4966

; <label>:4966                                    ; preds = %5117, %4857
  %4967 = phi float [ %5181, %5117 ], [ %4858, %4857 ]
  %4968 = phi float [ %5182, %5117 ], [ %4859, %4857 ]
  %4969 = phi float [ %5183, %5117 ], [ %4860, %4857 ]
  %4970 = phi float [ %5190, %5117 ], [ %4861, %4857 ]
  %4971 = phi float [ %5187, %5117 ], [ %4863, %4857 ]
  %4972 = phi float [ %5188, %5117 ], [ %4864, %4857 ]
  %4973 = phi float [ %5189, %5117 ], [ %4865, %4857 ]
  %4974 = icmp eq i32 %4862, %4869
  br i1 %4974, label %5191, label %4857

; <label>:4975                                    ; preds = %4857
  br i1 %4918, label %5033, label %4976

; <label>:4976                                    ; preds = %4975
  %4977 = fsub fast float -0.000000e+00, %4933
  %4978 = fsub fast float -0.000000e+00, %4934
  %4979 = fsub fast float -0.000000e+00, %4935
  %4980 = call float @dx.op.dot3.f32(i32 55, float %4332, float %4333, float %4334, float %4977, float %4978, float %4979)  ; Dot3(ax,ay,az,bx,by,bz)
  %4981 = fsub fast float -0.000000e+00, %4980
  %4982 = call float @dx.op.dot3.f32(i32 55, float %4929, float %4930, float %4931, float %4977, float %4978, float %4979)  ; Dot3(ax,ay,az,bx,by,bz)
  %4983 = fadd fast float %4982, %4896
  %4984 = fadd fast float %4895, %4982
  %4985 = fsub fast float -0.000000e+00, %4984
  %4986 = fcmp ogt float %4980, -0.000000e+00
  %4987 = select i1 %4986, float %4985, float %4983
  %4988 = call float @dx.op.unary.f32(i32 6, float %4981)  ; FAbs(value)
  %4989 = fdiv fast float 1.000000e+00, %4988
  %4990 = fmul fast float %4987, %4989
  %4991 = call float @dx.op.binary.f32(i32 35, float %4990, float 0.000000e+00)  ; FMax(a,b)
  %4992 = fsub fast float -0.000000e+00, %4939
  %4993 = fsub fast float -0.000000e+00, %4940
  %4994 = fsub fast float -0.000000e+00, %4941
  %4995 = call float @dx.op.dot3.f32(i32 55, float %4332, float %4333, float %4334, float %4992, float %4993, float %4994)  ; Dot3(ax,ay,az,bx,by,bz)
  %4996 = fsub fast float -0.000000e+00, %4995
  %4997 = call float @dx.op.dot3.f32(i32 55, float %4929, float %4930, float %4931, float %4992, float %4993, float %4994)  ; Dot3(ax,ay,az,bx,by,bz)
  %4998 = fadd fast float %4997, %4900
  %4999 = fadd fast float %4899, %4997
  %5000 = fsub fast float -0.000000e+00, %4999
  %5001 = fcmp ogt float %4995, -0.000000e+00
  %5002 = select i1 %5001, float %5000, float %4998
  %5003 = call float @dx.op.unary.f32(i32 6, float %4996)  ; FAbs(value)
  %5004 = fdiv fast float 1.000000e+00, %5003
  %5005 = fmul fast float %5002, %5004
  %5006 = call float @dx.op.binary.f32(i32 35, float %5005, float 0.000000e+00)  ; FMax(a,b)
  %5007 = fsub fast float -0.000000e+00, %4945
  %5008 = fsub fast float -0.000000e+00, %4946
  %5009 = fsub fast float -0.000000e+00, %4947
  %5010 = call float @dx.op.dot3.f32(i32 55, float %4332, float %4333, float %4334, float %5007, float %5008, float %5009)  ; Dot3(ax,ay,az,bx,by,bz)
  %5011 = fsub fast float -0.000000e+00, %5010
  %5012 = call float @dx.op.dot3.f32(i32 55, float %4929, float %4930, float %4931, float %5007, float %5008, float %5009)  ; Dot3(ax,ay,az,bx,by,bz)
  %5013 = fadd fast float %5012, %4904
  %5014 = fadd fast float %4903, %5012
  %5015 = fsub fast float -0.000000e+00, %5014
  %5016 = fcmp ogt float %5010, -0.000000e+00
  %5017 = select i1 %5016, float %5015, float %5013
  %5018 = call float @dx.op.unary.f32(i32 6, float %5011)  ; FAbs(value)
  %5019 = fdiv fast float 1.000000e+00, %5018
  %5020 = fmul fast float %5017, %5019
  %5021 = call float @dx.op.binary.f32(i32 35, float %5020, float 0.000000e+00)  ; FMax(a,b)
  %5022 = call float @dx.op.binary.f32(i32 36, float %5006, float %5021)  ; FMin(a,b)
  %5023 = call float @dx.op.binary.f32(i32 36, float %4991, float %5022)  ; FMin(a,b)
  %5024 = fmul fast float %5023, %4332
  %5025 = fmul fast float %5023, %4333
  %5026 = fmul fast float %5023, %4334
  %5027 = fadd fast float %5024, %129
  %5028 = fadd fast float %5025, %130
  %5029 = fadd fast float %5026, %131
  %5030 = fsub fast float %5027, %4873
  %5031 = fsub fast float %5028, %4874
  %5032 = fsub fast float %5029, %4875
  br label %5040

; <label>:5033                                    ; preds = %4975
  %5034 = fmul fast float %4332, 8.096000e+03
  %5035 = fmul fast float %4333, 8.096000e+03
  %5036 = fmul fast float %4334, 8.096000e+03
  %5037 = fadd fast float %5034, %129
  %5038 = fadd fast float %5035, %130
  %5039 = fadd fast float %5036, %131
  br label %5040

; <label>:5040                                    ; preds = %5033, %4976
  %5041 = phi float [ %4332, %5033 ], [ %5030, %4976 ]
  %5042 = phi float [ %4333, %5033 ], [ %5031, %4976 ]
  %5043 = phi float [ %4334, %5033 ], [ %5032, %4976 ]
  %5044 = phi float [ %5037, %5033 ], [ %5027, %4976 ]
  %5045 = phi float [ %5038, %5033 ], [ %5028, %4976 ]
  %5046 = phi float [ %5039, %5033 ], [ %5029, %4976 ]
  %5047 = fcmp fast olt float %4892, 1.000000e+00
  br i1 %5047, label %5048, label %5079, !dx.controlflow.hints !71

; <label>:5048                                    ; preds = %5040
  %5049 = fmul fast float %5043, %4890
  %5050 = fmul fast float %5042, %4891
  %5051 = fsub fast float %5049, %5050
  %5052 = fmul fast float %5041, %4891
  %5053 = fmul fast float %5043, %4889
  %5054 = fsub fast float %5052, %5053
  %5055 = fmul fast float %5042, %4889
  %5056 = fmul fast float %5041, %4890
  %5057 = fsub fast float %5055, %5056
  %5058 = fmul fast float %5051, 2.000000e+00
  %5059 = fmul fast float %5054, 2.000000e+00
  %5060 = fmul fast float %5057, 2.000000e+00
  %5061 = fmul fast float %5058, %4892
  %5062 = fmul fast float %5059, %4892
  %5063 = fmul fast float %5060, %4892
  %5064 = fmul fast float %5060, %4890
  %5065 = fmul fast float %5059, %4891
  %5066 = fmul fast float %5058, %4891
  %5067 = fmul fast float %5060, %4889
  %5068 = fmul fast float %5059, %4889
  %5069 = fmul fast float %5058, %4890
  %5070 = fadd fast float %5064, %5041
  %5071 = fadd fast float %5070, %5061
  %5072 = fsub fast float %5071, %5065
  %5073 = fsub fast float %5042, %5067
  %5074 = fadd fast float %5073, %5062
  %5075 = fadd fast float %5074, %5066
  %5076 = fadd fast float %5063, %5043
  %5077 = fsub fast float %5076, %5069
  %5078 = fadd fast float %5077, %5068
  br label %5079

; <label>:5079                                    ; preds = %5048, %5040
  %5080 = phi float [ %5072, %5048 ], [ %5041, %5040 ]
  %5081 = phi float [ %5075, %5048 ], [ %5042, %5040 ]
  %5082 = phi float [ %5078, %5048 ], [ %5043, %5040 ]
  br i1 %4918, label %5114, label %5083

; <label>:5083                                    ; preds = %5079
  %5084 = fmul fast float %4307, 0x400187C840000000
  %5085 = fadd fast float %5084, 0xC00EFC2120000000
  %5086 = fmul fast float %5085, %4307
  %5087 = fadd fast float %5086, 0x3FE5D16340000000
  %5088 = fmul fast float %5087, %4307
  %5089 = fadd fast float %5088, 1.000000e+00
  %5090 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5091 = fsub fast float %5044, %129
  %5092 = fsub fast float %5045, %130
  %5093 = fsub fast float %5046, %131
  %5094 = fsub fast float %5044, %4873
  %5095 = fsub fast float %5045, %4874
  %5096 = fsub fast float %5046, %4875
  %5097 = call float @dx.op.dot3.f32(i32 55, float %5091, float %5092, float %5093, float %5091, float %5092, float %5093)  ; Dot3(ax,ay,az,bx,by,bz)
  %5098 = call float @dx.op.dot3.f32(i32 55, float %5094, float %5095, float %5096, float %5094, float %5095, float %5096)  ; Dot3(ax,ay,az,bx,by,bz)
  %5099 = fadd fast float %5098, 0x3EE4F8B580000000
  %5100 = fdiv fast float %5097, %5099
  %5101 = bitcast float %5100 to i32
  %5102 = ashr i32 %5101, 1
  %5103 = add nsw i32 %5102, 532487669
  %5104 = bitcast i32 %5103 to float
  %5105 = fmul fast float %5104, %5090
  %5106 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5107 = fmul fast float %5106, 0x4009981AE0000000
  %5108 = fsub fast float 0x40111BBD80000000, %5107
  %5109 = fmul fast float %5108, %5106
  %5110 = fadd fast float %5109, 0xC0009F6020000000
  %5111 = fmul fast float %5110, %5106
  %5112 = fadd fast float %5111, 1.000000e+00
  %5113 = call float @dx.op.unary.f32(i32 7, float %5112)  ; Saturate(value)
  br label %5117

; <label>:5114                                    ; preds = %5079
  %5115 = icmp ne i32 %4919, -1
  %5116 = zext i1 %5115 to i32
  br label %5117

; <label>:5117                                    ; preds = %5114, %5083
  %5118 = phi float [ %4307, %5114 ], [ %5113, %5083 ]
  %5119 = phi i32 [ %5116, %5114 ], [ 0, %5083 ]
  %5120 = fmul float %5118, 5.000000e+00
  %5121 = fsub float 5.000000e+00, %5120
  %5122 = icmp ne i32 %5119, 0
  %5123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5124 = extractvalue %dx.types.CBufRet.f32 %5123, 3
  %5125 = fadd fast float %5124, %5121
  %5126 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5125)  ; FMax(a,b)
  %5127 = call float @dx.op.unary.f32(i32 6, float %5080)  ; FAbs(value)
  %5128 = call float @dx.op.unary.f32(i32 6, float %5081)  ; FAbs(value)
  %5129 = fadd fast float %5128, %5127
  %5130 = call float @dx.op.unary.f32(i32 6, float %5082)  ; FAbs(value)
  %5131 = fadd fast float %5129, %5130
  %5132 = fcmp fast oeq float %5131, 0.000000e+00
  %5133 = fdiv fast float 1.000000e+00, %5131
  %5134 = select i1 %5132, float 1.000000e+00, float %5133
  %5135 = fmul fast float %5134, %5080
  %5136 = fmul fast float %5134, %5081
  %5137 = call float @dx.op.unary.f32(i32 6, float %5136)  ; FAbs(value)
  %5138 = call float @dx.op.unary.f32(i32 6, float %5135)  ; FAbs(value)
  %5139 = fsub fast float 1.000000e+00, %5137
  %5140 = fsub fast float 1.000000e+00, %5138
  %5141 = fcmp fast oge float %5135, 0.000000e+00
  %5142 = fcmp fast oge float %5136, 0.000000e+00
  %5143 = select i1 %5141, float 1.000000e+00, float -1.000000e+00
  %5144 = select i1 %5142, float 1.000000e+00, float -1.000000e+00
  %5145 = fcmp fast ole float %5082, 0.000000e+00
  %5146 = fmul fast float %5143, %5139
  %5147 = fmul fast float %5144, %5140
  %5148 = select i1 %5145, float %5146, float %5135
  %5149 = select i1 %5145, float %5147, float %5136
  %5150 = fmul fast float %5148, 5.000000e-01
  %5151 = fmul fast float %5149, 5.000000e-01
  %5152 = fadd fast float %5150, 5.000000e-01
  %5153 = fadd fast float %5151, 5.000000e-01
  %5154 = uitofp i32 %4916 to float
  %5155 = call float @dx.op.binary.f32(i32 36, float %5126, float 3.000000e+00)  ; FMin(a,b)
  %5156 = fadd fast float %5155, 2.000000e+00
  %5157 = call float @dx.op.unary.f32(i32 21, float %5156)  ; Exp(value)
  %5158 = extractvalue %dx.types.CBufRet.f32 %5123, 1
  %5159 = fmul fast float %5158, %5157
  %5160 = fmul fast float %5159, 2.000000e+00
  %5161 = fsub fast float 1.000000e+00, %5160
  %5162 = fmul fast float %5152, %5161
  %5163 = fmul fast float %5153, %5161
  %5164 = fadd fast float %5162, %5159
  %5165 = fadd fast float %5163, %5159
  %5166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %26, float %5164, float %5165, float %5154, float undef, i32 0, i32 0, i32 undef, float %5126)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5167 = extractvalue %dx.types.ResRet.f32 %5166, 0
  %5168 = extractvalue %dx.types.ResRet.f32 %5166, 1
  %5169 = extractvalue %dx.types.ResRet.f32 %5166, 2
  %5170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5171 = extractvalue %dx.types.CBufRet.f32 %5170, 3
  %5172 = fmul fast float %5171, %4886
  %5173 = call float @dx.op.binary.f32(i32 36, float %4387, float %5172)  ; FMin(a,b)
  %5174 = select i1 %5122, float %5173, float %5172
  %5175 = fmul fast float %5167, %4964
  %5176 = fmul fast float %5175, %5174
  %5177 = fmul fast float %5168, %4964
  %5178 = fmul fast float %5177, %5174
  %5179 = fmul fast float %5169, %4964
  %5180 = fmul fast float %5179, %5174
  %5181 = fadd fast float %5176, %4858
  %5182 = fadd fast float %5178, %4859
  %5183 = fadd fast float %5180, %4860
  %5184 = fmul fast float %5044, %4964
  %5185 = fmul fast float %5045, %4964
  %5186 = fmul fast float %5046, %4964
  %5187 = fadd fast float %5184, %4863
  %5188 = fadd fast float %5185, %4864
  %5189 = fadd fast float %5186, %4865
  %5190 = fsub fast float %4861, %4964
  br label %4966

; <label>:5191                                    ; preds = %4966
  br label %5192

; <label>:5192                                    ; preds = %5191, %4824
  %5193 = phi float [ %4825, %4824 ], [ %4967, %5191 ]
  %5194 = phi float [ %4826, %4824 ], [ %4968, %5191 ]
  %5195 = phi float [ %4827, %4824 ], [ %4969, %5191 ]
  %5196 = phi float [ %4828, %4824 ], [ %4970, %5191 ]
  %5197 = phi float [ %4830, %4824 ], [ %4971, %5191 ]
  %5198 = phi float [ %4831, %4824 ], [ %4972, %5191 ]
  %5199 = phi float [ %4832, %4824 ], [ %4973, %5191 ]
  %5200 = add i32 %4829, 1
  %5201 = icmp ugt i32 %5200, %4821
  br i1 %5201, label %5202, label %4824, !llvm.loop !72

; <label>:5202                                    ; preds = %5192
  br label %5203

; <label>:5203                                    ; preds = %5202, %4772
  %5204 = phi float [ 0.000000e+00, %4772 ], [ %5193, %5202 ]
  %5205 = phi float [ 0.000000e+00, %4772 ], [ %5194, %5202 ]
  %5206 = phi float [ 0.000000e+00, %4772 ], [ %5195, %5202 ]
  %5207 = phi float [ 0.000000e+00, %4772 ], [ %5197, %5202 ]
  %5208 = phi float [ 0.000000e+00, %4772 ], [ %5198, %5202 ]
  %5209 = phi float [ 0.000000e+00, %4772 ], [ %5199, %5202 ]
  %5210 = call float @dx.op.dot3.f32(i32 55, float %5204, float %5205, float %5206, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5211 = select i1 %170, float 0.000000e+00, float %5204
  %5212 = select i1 %170, float %5210, float %5205
  %5213 = select i1 %170, float 0.000000e+00, float %5206
  %5214 = fcmp fast olt float %4766, 0.000000e+00
  %5215 = call float @dx.op.unary.f32(i32 6, float %4766)  ; FAbs(value)
  %5216 = fmul fast float %5215, %4767
  %5217 = fmul fast float %5215, %4768
  %5218 = fmul fast float %5215, %4769
  %5219 = select i1 %5214, float %4767, float %5216
  %5220 = select i1 %5214, float %4768, float %5217
  %5221 = select i1 %5214, float %4769, float %5218
  %5222 = fsub fast float 1.000000e+00, %5215
  %5223 = call float @dx.op.unary.f32(i32 7, float %5222)  ; Saturate(value)
  %5224 = fmul fast float %5223, %5211
  %5225 = fmul fast float %5223, %5212
  %5226 = fmul fast float %5223, %5213
  %5227 = fadd fast float %5219, %5224
  %5228 = fadd fast float %5220, %5225
  %5229 = fadd fast float %5221, %5226
  %5230 = fcmp fast une float %4516, 0.000000e+00
  br i1 %5230, label %5331, label %5231

; <label>:5231                                    ; preds = %5203
  %5232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5233 = extractvalue %dx.types.CBufRet.f32 %5232, 0
  %5234 = extractvalue %dx.types.CBufRet.f32 %5232, 1
  %5235 = extractvalue %dx.types.CBufRet.f32 %5232, 2
  %5236 = extractvalue %dx.types.CBufRet.f32 %5232, 3
  %5237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5238 = extractvalue %dx.types.CBufRet.f32 %5237, 0
  %5239 = extractvalue %dx.types.CBufRet.f32 %5237, 1
  %5240 = extractvalue %dx.types.CBufRet.f32 %5237, 2
  %5241 = extractvalue %dx.types.CBufRet.f32 %5237, 3
  %5242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5243 = extractvalue %dx.types.CBufRet.f32 %5242, 0
  %5244 = extractvalue %dx.types.CBufRet.f32 %5242, 1
  %5245 = extractvalue %dx.types.CBufRet.f32 %5242, 2
  %5246 = extractvalue %dx.types.CBufRet.f32 %5242, 3
  %5247 = call float @dx.op.dot3.f32(i32 55, float %5243, float %5244, float %5245, float %4332, float %4333, float %4334)  ; Dot3(ax,ay,az,bx,by,bz)
  %5248 = call float @dx.op.dot3.f32(i32 55, float %5207, float %5208, float %5209, float %5243, float %5244, float %5245)  ; Dot3(ax,ay,az,bx,by,bz)
  %5249 = call float @dx.op.dot3.f32(i32 55, float %129, float %130, float %131, float %5243, float %5244, float %5245)  ; Dot3(ax,ay,az,bx,by,bz)
  %5250 = fadd fast float %4307, -1.000000e+00
  %5251 = fsub fast float %5248, %5249
  %5252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5253 = extractvalue %dx.types.CBufRet.f32 %5252, 2
  %5254 = fmul fast float %5253, %5248
  %5255 = fdiv fast float 1.600000e+02, %5254
  %5256 = fmul fast float %5250, %5250
  %5257 = fmul fast float %5256, 0xBFB5B17960000000
  %5258 = fmul fast float %5257, %5251
  %5259 = fmul fast float %5258, %5255
  %5260 = call float @dx.op.unary.f32(i32 21, float %5259)  ; Exp(value)
  %5261 = fmul fast float %5260, 0x3FF04B2960000000
  %5262 = fsub fast float 0x3FF04B2960000000, %5261
  %5263 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5264 = fmul fast float %5263, 4.000000e+00
  %5265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5266 = extractvalue %dx.types.CBufRet.f32 %5265, 0
  %5267 = extractvalue %dx.types.CBufRet.f32 %5265, 1
  %5268 = extractvalue %dx.types.CBufRet.f32 %5265, 2
  %5269 = fadd fast float %5266, %5207
  %5270 = fadd fast float %5267, %5208
  %5271 = fadd fast float %5268, %5209
  %5272 = fmul fast float %5269, %5233
  %5273 = call float @dx.op.tertiary.f32(i32 46, float %5270, float %5234, float %5272)  ; FMad(a,b,c)
  %5274 = call float @dx.op.tertiary.f32(i32 46, float %5271, float %5235, float %5273)  ; FMad(a,b,c)
  %5275 = fadd fast float %5274, %5236
  %5276 = fmul fast float %5269, %5238
  %5277 = call float @dx.op.tertiary.f32(i32 46, float %5270, float %5239, float %5276)  ; FMad(a,b,c)
  %5278 = call float @dx.op.tertiary.f32(i32 46, float %5271, float %5240, float %5277)  ; FMad(a,b,c)
  %5279 = fadd fast float %5278, %5241
  %5280 = fmul fast float %5269, %5243
  %5281 = call float @dx.op.tertiary.f32(i32 46, float %5270, float %5244, float %5280)  ; FMad(a,b,c)
  %5282 = call float @dx.op.tertiary.f32(i32 46, float %5271, float %5245, float %5281)  ; FMad(a,b,c)
  %5283 = fadd fast float %5282, %5246
  %5284 = fdiv fast float %5275, %5283
  %5285 = fdiv fast float %5279, %5283
  %5286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5287 = extractvalue %dx.types.CBufRet.f32 %5286, 0
  %5288 = extractvalue %dx.types.CBufRet.f32 %5286, 1
  %5289 = fmul fast float %5287, %5284
  %5290 = fmul fast float %5288, %5285
  %5291 = extractvalue %dx.types.CBufRet.f32 %5286, 2
  %5292 = extractvalue %dx.types.CBufRet.f32 %5286, 3
  %5293 = fadd fast float %5289, %5291
  %5294 = fadd fast float %5290, %5292
  %5295 = fmul fast float %5247, 8.000000e+00
  %5296 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5297 = fmul fast float %5293, 2.000000e+00
  %5298 = fmul fast float %5294, 2.000000e+00
  %5299 = fadd fast float %5297, -1.000000e+00
  %5300 = fadd fast float %5298, -1.000000e+00
  %5301 = fmul fast float %5299, %5299
  %5302 = fsub fast float 1.000000e+00, %5301
  %5303 = call float @dx.op.unary.f32(i32 7, float %5302)  ; Saturate(value)
  %5304 = fmul fast float %5300, %5300
  %5305 = fsub fast float 1.000000e+00, %5304
  %5306 = call float @dx.op.unary.f32(i32 7, float %5305)  ; Saturate(value)
  %5307 = fmul fast float %4516, %5303
  %5308 = fmul fast float %5307, %5306
  %5309 = call float @dx.op.unary.f32(i32 7, float %5308)  ; Saturate(value)
  %5310 = fmul fast float %5309, %5296
  %5311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %5293, float %5294, float undef, float undef, i32 0, i32 0, i32 undef, float %5264)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5312 = extractvalue %dx.types.ResRet.f32 %5311, 0
  %5313 = extractvalue %dx.types.ResRet.f32 %5311, 1
  %5314 = extractvalue %dx.types.ResRet.f32 %5311, 2
  %5315 = select i1 %170, float 0.000000e+00, float %5313
  %5316 = select i1 %170, float 0.000000e+00, float %5314
  %5317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5318 = extractvalue %dx.types.CBufRet.f32 %5317, 2
  %5319 = fmul fast float %5318, %5312
  %5320 = fmul fast float %5315, %5318
  %5321 = fmul fast float %5316, %5318
  %5322 = fsub fast float %5319, %5211
  %5323 = fsub fast float %5320, %5212
  %5324 = fsub fast float %5321, %5213
  %5325 = fmul fast float %5322, %5310
  %5326 = fmul fast float %5323, %5310
  %5327 = fmul fast float %5324, %5310
  %5328 = fadd fast float %5325, %5211
  %5329 = fadd fast float %5326, %5212
  %5330 = fadd fast float %5327, %5213
  br label %5331

; <label>:5331                                    ; preds = %5231, %5203, %4765, %4489
  %5332 = phi float [ %4767, %4765 ], [ %5227, %5203 ], [ %4446, %4489 ], [ %5328, %5231 ]
  %5333 = phi float [ %4768, %4765 ], [ %5228, %5203 ], [ %4447, %4489 ], [ %5329, %5231 ]
  %5334 = phi float [ %4769, %4765 ], [ %5229, %5203 ], [ %4448, %4489 ], [ %5330, %5231 ]
  %5335 = fmul fast float %4495, %4442
  %5336 = fmul fast float %4495, %4443
  %5337 = fmul fast float %4495, %4444
  %5338 = call float @dx.op.dot3.f32(i32 55, float %4298, float %4299, float %4300, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5339 = fcmp fast ogt float %5338, 0x3E7FF19E20000000
  %5340 = fdiv fast float 1.000000e+00, %5338
  %5341 = select i1 %5339, float %5340, float 0.000000e+00
  %5342 = fmul fast float %5341, %4298
  %5343 = fmul fast float %5341, %4299
  %5344 = fmul fast float %5341, %4300
  %5345 = fadd fast float %5342, -1.000000e+00
  %5346 = fadd fast float %5343, -1.000000e+00
  %5347 = fadd fast float %5344, -1.000000e+00
  %5348 = fmul fast float %5345, 5.000000e-01
  %5349 = fmul fast float %5346, 5.000000e-01
  %5350 = fmul fast float %5347, 5.000000e-01
  %5351 = fadd fast float %5348, 1.000000e+00
  %5352 = fadd fast float %5349, 1.000000e+00
  %5353 = fadd fast float %5350, 1.000000e+00
  %5354 = fmul fast float %5332, %4490
  %5355 = fmul fast float %5333, %4491
  %5356 = fmul fast float %5334, %4492
  %5357 = fsub fast float 1.000000e+00, %4326
  %5358 = bitcast float %5357 to i32
  %5359 = sitofp i32 %5358 to float
  %5360 = fmul fast float %5359, 5.000000e+00
  %5361 = fadd fast float %5360, 0xC1EFBF8940000000
  %5362 = fptosi float %5361 to i32
  %5363 = bitcast i32 %5362 to float
  %5364 = fmul fast float %5363, %3965
  %5365 = fmul fast float %4442, %5364
  %5366 = fmul fast float %5365, %4495
  %5367 = fmul fast float %5366, %5351
  %5368 = fmul fast float %4443, %5364
  %5369 = fmul fast float %5368, %4495
  %5370 = fmul fast float %5369, %5352
  %5371 = fmul fast float %4444, %5364
  %5372 = fmul fast float %5371, %4495
  %5373 = fmul fast float %5372, %5353
  %5374 = fmul fast float %5335, %3986
  %5375 = fmul fast float %5336, %3986
  %5376 = fmul fast float %5337, %3986
  %5377 = fadd fast float %5354, %3967
  %5378 = fadd fast float %5377, %5367
  %5379 = fmul fast float %5378, %3986
  %5380 = fadd fast float %5355, %3968
  %5381 = fadd fast float %5380, %5370
  %5382 = fmul fast float %5381, %3986
  %5383 = fadd fast float %5356, %3969
  %5384 = fadd fast float %5383, %5373
  %5385 = fmul fast float %5384, %3986
  %5386 = bitcast i32 %4350 to float
  %5387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5388 = extractvalue %dx.types.CBufRet.f32 %5387, 3
  %5389 = fcmp fast oeq float %5388, 0.000000e+00
  br i1 %5389, label %5608, label %5390

; <label>:5390                                    ; preds = %5331
  %5391 = extractvalue %dx.types.CBufRet.f32 %5387, 0
  %5392 = extractvalue %dx.types.CBufRet.f32 %5387, 1
  %5393 = extractvalue %dx.types.CBufRet.f32 %5387, 2
  %5394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5395 = extractvalue %dx.types.CBufRet.f32 %5394, 0
  %5396 = extractvalue %dx.types.CBufRet.f32 %5394, 1
  %5397 = extractvalue %dx.types.CBufRet.f32 %5394, 2
  %5398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5399 = extractvalue %dx.types.CBufRet.f32 %5398, 0
  %5400 = extractvalue %dx.types.CBufRet.f32 %5398, 1
  %5401 = call float @dx.op.dot3.f32(i32 55, float %5395, float %5396, float %5397, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5402 = select i1 %170, float %5399, float %5395
  %5403 = select i1 %170, float %5401, float %5396
  %5404 = select i1 %170, float %5400, float %5397
  %5405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5406 = extractvalue %dx.types.CBufRet.f32 %5405, 1
  %5407 = fcmp fast une float %5406, 0.000000e+00
  br i1 %5407, label %5408, label %5425

; <label>:5408                                    ; preds = %5390
  %5409 = fptoui float %66 to i32
  %5410 = fptoui float %67 to i32
  %5411 = lshr i32 %5409, 4
  %5412 = lshr i32 %5410, 4
  %5413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5414 = extractvalue %dx.types.CBufRet.f32 %5413, 0
  %5415 = fptoui float %5414 to i32
  %5416 = add i32 %5415, 15
  %5417 = lshr i32 %5416, 4
  %5418 = mul i32 %5417, %5412
  %5419 = add i32 %5418, %5411
  %5420 = shl i32 %5419, 3
  %5421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5420, i32 undef)  ; BufferLoad(srv,index,wot)
  %5422 = extractvalue %dx.types.ResRet.i32 %5421, 0
  %5423 = and i32 %5422, -268435456
  %5424 = icmp eq i32 %5423, -1342177280
  br i1 %5424, label %5430, label %5425

; <label>:5425                                    ; preds = %5408, %5390
  %5426 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %29, float %4312, float %4313, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5427 = extractvalue %dx.types.ResRet.f32 %5426, 0
  %5428 = extractvalue %dx.types.ResRet.f32 %5426, 1
  %5429 = extractvalue %dx.types.ResRet.f32 %5426, 2
  br label %5430

; <label>:5430                                    ; preds = %5425, %5408
  %5431 = phi float [ %5427, %5425 ], [ 0.000000e+00, %5408 ]
  %5432 = phi float [ %5428, %5425 ], [ 0.000000e+00, %5408 ]
  %5433 = phi float [ %5429, %5425 ], [ 0.000000e+00, %5408 ]
  %5434 = call float @dx.op.binary.f32(i32 36, float %5432, float %5433)  ; FMin(a,b)
  %5435 = call float @dx.op.binary.f32(i32 36, float %5431, float %5434)  ; FMin(a,b)
  %5436 = fcmp fast ogt float %5435, 0.000000e+00
  br i1 %5436, label %5437, label %5608, !dx.controlflow.hints !74

; <label>:5437                                    ; preds = %5430
  %5438 = fmul fast float %5431, %5402
  %5439 = fmul fast float %5432, %5403
  %5440 = fmul fast float %5433, %5404
  %5441 = fsub fast float %5391, %4297
  %5442 = fsub fast float %5392, %4296
  %5443 = fsub fast float %5393, %4295
  %5444 = call float @dx.op.dot3.f32(i32 55, float %5441, float %5442, float %5443, float %5441, float %5442, float %5443)  ; Dot3(ax,ay,az,bx,by,bz)
  %5445 = call float @dx.op.unary.f32(i32 25, float %5444)  ; Rsqrt(value)
  %5446 = fmul fast float %5445, %5441
  %5447 = fmul fast float %5445, %5442
  %5448 = fmul fast float %5445, %5443
  %5449 = call float @dx.op.dot3.f32(i32 55, float %5391, float %5392, float %5393, float %4301, float %4302, float %4303)  ; Dot3(ax,ay,az,bx,by,bz)
  %5450 = call float @dx.op.dot3.f32(i32 55, float %4294, float %4293, float %4292, float %5446, float %5447, float %5448)  ; Dot3(ax,ay,az,bx,by,bz)
  %5451 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5452 = fmul fast float %5451, %5451
  %5453 = fmul fast float %5452, %5386
  %5454 = call float @dx.op.unary.f32(i32 7, float %5453)  ; Saturate(value)
  %5455 = fmul fast float %5454, %5451
  %5456 = call float @dx.op.dot3.f32(i32 55, float %4301, float %4302, float %4303, float %5446, float %5447, float %5448)  ; Dot3(ax,ay,az,bx,by,bz)
  %5457 = fmul fast float %5456, %5456
  %5458 = call float @dx.op.unary.f32(i32 6, float %5449)  ; FAbs(value)
  %5459 = fsub fast float 1.000000e+00, %4344
  %5460 = fmul fast float %4326, %4326
  %5461 = fmul fast float %5460, %5459
  %5462 = fadd fast float %5461, %4344
  %5463 = bitcast float %5462 to i32
  %5464 = ashr i32 %5463, 1
  %5465 = add nsw i32 %5464, 532487669
  %5466 = bitcast i32 %5465 to float
  %5467 = fadd fast float %5466, %4326
  %5468 = fmul fast float %4344, %5457
  %5469 = fsub fast float 1.000000e+00, %5457
  %5470 = fadd fast float %5469, %5468
  %5471 = fmul fast float %5458, %5458
  %5472 = fmul fast float %5471, %5459
  %5473 = fadd fast float %5472, %4344
  %5474 = bitcast float %5473 to i32
  %5475 = ashr i32 %5474, 1
  %5476 = add nsw i32 %5475, 532487669
  %5477 = bitcast i32 %5476 to float
  %5478 = fadd fast float %5477, %5458
  %5479 = fmul fast float %5470, %5470
  %5480 = fmul fast float %5479, %5467
  %5481 = fmul fast float %5480, %5478
  %5482 = fdiv fast float 0x3FF0A00000000000, %5481
  %5483 = fmul fast float %5482, %4344
  %5484 = call float @dx.op.unary.f32(i32 6, float %5450)  ; FAbs(value)
  %5485 = fsub fast float 1.000000e+00, %5484
  %5486 = bitcast float %5485 to i32
  %5487 = sitofp i32 %5486 to float
  %5488 = fmul fast float %5487, 5.000000e+00
  %5489 = fadd fast float %5488, 0xC1EFBF8940000000
  %5490 = fptosi float %5489 to i32
  %5491 = bitcast i32 %5490 to float
  %5492 = fsub fast float 1.000000e+00, %4304
  %5493 = fsub fast float 1.000000e+00, %4305
  %5494 = fsub fast float 1.000000e+00, %4324
  %5495 = fmul fast float %5491, %5492
  %5496 = fmul fast float %5491, %5493
  %5497 = fmul fast float %5491, %5494
  %5498 = fadd fast float %5495, %4304
  %5499 = fadd fast float %5496, %4305
  %5500 = fadd fast float %5497, %4324
  br i1 %4462, label %5501, label %5524

; <label>:5501                                    ; preds = %5437
  %5502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %3966, float %5484, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5503 = extractvalue %dx.types.ResRet.f32 %5502, 0
  %5504 = extractvalue %dx.types.ResRet.f32 %5502, 1
  %5505 = extractvalue %dx.types.ResRet.f32 %5502, 2
  %5506 = fadd fast float %5503, -5.000000e-01
  %5507 = fadd fast float %5504, -5.000000e-01
  %5508 = fadd fast float %5505, -5.000000e-01
  %5509 = fmul fast float %4304, 4.000000e+00
  %5510 = fmul fast float %5509, %5492
  %5511 = fmul fast float %5510, %5506
  %5512 = fmul fast float %4305, 4.000000e+00
  %5513 = fmul fast float %5512, %5493
  %5514 = fmul fast float %5513, %5507
  %5515 = fmul fast float %4324, 4.000000e+00
  %5516 = fmul fast float %5515, %5494
  %5517 = fmul fast float %5516, %5508
  %5518 = fadd fast float %5511, %5498
  %5519 = fadd fast float %5514, %5499
  %5520 = fadd fast float %5517, %5500
  %5521 = call float @dx.op.unary.f32(i32 7, float %5518)  ; Saturate(value)
  %5522 = call float @dx.op.unary.f32(i32 7, float %5519)  ; Saturate(value)
  %5523 = call float @dx.op.unary.f32(i32 7, float %5520)  ; Saturate(value)
  br label %5524

; <label>:5524                                    ; preds = %5501, %5437
  %5525 = phi float [ %5521, %5501 ], [ %5498, %5437 ]
  %5526 = phi float [ %5522, %5501 ], [ %5499, %5437 ]
  %5527 = phi float [ %5523, %5501 ], [ %5500, %5437 ]
  %5528 = fmul fast float %5449, 9.843750e-01
  %5529 = fadd fast float %5528, 7.812500e-03
  %5530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5529, float %4452, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5531 = extractvalue %dx.types.ResRet.f32 %5530, 2
  %5532 = extractvalue %dx.types.ResRet.f32 %5530, 3
  %5533 = fmul fast float %5531, %4304
  %5534 = fmul fast float %5531, %4305
  %5535 = fmul fast float %5531, %4324
  %5536 = fadd fast float %5533, %5532
  %5537 = fadd fast float %5534, %5532
  %5538 = fadd fast float %5535, %5532
  br i1 %4462, label %5539, label %5562

; <label>:5539                                    ; preds = %5524
  %5540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %3966, float %5449, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5541 = extractvalue %dx.types.ResRet.f32 %5540, 0
  %5542 = extractvalue %dx.types.ResRet.f32 %5540, 1
  %5543 = extractvalue %dx.types.ResRet.f32 %5540, 2
  %5544 = fadd fast float %5541, -5.000000e-01
  %5545 = fadd fast float %5542, -5.000000e-01
  %5546 = fadd fast float %5543, -5.000000e-01
  %5547 = fmul fast float %4304, 4.000000e+00
  %5548 = fmul fast float %5547, %5492
  %5549 = fmul fast float %5548, %5544
  %5550 = fmul fast float %4305, 4.000000e+00
  %5551 = fmul fast float %5550, %5493
  %5552 = fmul fast float %5551, %5545
  %5553 = fmul fast float %4324, 4.000000e+00
  %5554 = fmul fast float %5553, %5494
  %5555 = fmul fast float %5554, %5546
  %5556 = fadd fast float %5549, %5536
  %5557 = fadd fast float %5552, %5537
  %5558 = fadd fast float %5555, %5538
  %5559 = call float @dx.op.unary.f32(i32 7, float %5556)  ; Saturate(value)
  %5560 = call float @dx.op.unary.f32(i32 7, float %5557)  ; Saturate(value)
  %5561 = call float @dx.op.unary.f32(i32 7, float %5558)  ; Saturate(value)
  br label %5562

; <label>:5562                                    ; preds = %5539, %5524
  %5563 = phi float [ %5559, %5539 ], [ %5536, %5524 ]
  %5564 = phi float [ %5560, %5539 ], [ %5537, %5524 ]
  %5565 = phi float [ %5561, %5539 ], [ %5538, %5524 ]
  %5566 = call float @dx.op.binary.f32(i32 35, float %5564, float %5565)  ; FMax(a,b)
  %5567 = call float @dx.op.binary.f32(i32 35, float %5563, float %5566)  ; FMax(a,b)
  %5568 = fsub fast float 1.000000e+00, %5567
  %5569 = fmul fast float %5525, %5483
  %5570 = fmul fast float %5526, %5483
  %5571 = fmul fast float %5527, %5483
  %5572 = fsub fast float 1.000000e+00, %5450
  %5573 = bitcast float %5572 to i32
  %5574 = sitofp i32 %5573 to float
  %5575 = fmul fast float %5574, 5.000000e+00
  %5576 = fadd fast float %5575, 0xC1EFBF8940000000
  %5577 = fptosi float %5576 to i32
  %5578 = bitcast i32 %5577 to float
  %5579 = fmul fast float %5578, %3965
  %5580 = fmul fast float %5568, %5579
  %5581 = fmul fast float %5580, %5351
  %5582 = fmul fast float %5580, %5352
  %5583 = fmul fast float %5580, %5353
  %5584 = fadd fast float %5581, %5569
  %5585 = fadd fast float %5582, %5570
  %5586 = fadd fast float %5583, %5571
  %5587 = fmul fast float %5455, %5438
  %5588 = fmul fast float %5587, %5568
  %5589 = fmul fast float %5455, %5439
  %5590 = fmul fast float %5589, %5568
  %5591 = fmul fast float %5455, %5440
  %5592 = fmul fast float %5591, %5568
  %5593 = fmul fast float %5587, %5584
  %5594 = fmul fast float %5589, %5585
  %5595 = fmul fast float %5591, %5586
  %5596 = fadd fast float %5588, %5335
  %5597 = fmul fast float %5596, %3986
  %5598 = fadd fast float %5590, %5336
  %5599 = fmul fast float %5598, %3986
  %5600 = fadd fast float %5592, %5337
  %5601 = fmul fast float %5600, %3986
  %5602 = fadd fast float %5593, %5378
  %5603 = fmul fast float %5602, %3986
  %5604 = fadd fast float %5594, %5381
  %5605 = fmul fast float %5604, %3986
  %5606 = fadd fast float %5595, %5384
  %5607 = fmul fast float %5606, %3986
  br label %5608

; <label>:5608                                    ; preds = %5562, %5430, %5331
  %5609 = phi float [ %5379, %5331 ], [ %5379, %5430 ], [ %5603, %5562 ]
  %5610 = phi float [ %5382, %5331 ], [ %5382, %5430 ], [ %5605, %5562 ]
  %5611 = phi float [ %5385, %5331 ], [ %5385, %5430 ], [ %5607, %5562 ]
  %5612 = phi float [ %5374, %5331 ], [ %5374, %5430 ], [ %5597, %5562 ]
  %5613 = phi float [ %5375, %5331 ], [ %5375, %5430 ], [ %5599, %5562 ]
  %5614 = phi float [ %5376, %5331 ], [ %5376, %5430 ], [ %5601, %5562 ]
  %5615 = call float @dx.op.unary.f32(i32 24, float %4298)  ; Sqrt(value)
  %5616 = call float @dx.op.unary.f32(i32 24, float %4299)  ; Sqrt(value)
  %5617 = call float @dx.op.unary.f32(i32 24, float %4300)  ; Sqrt(value)
  %5618 = fmul fast float %5615, %5612
  %5619 = fmul fast float %5616, %5613
  %5620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5621 = extractvalue %dx.types.CBufRet.f32 %5620, 0
  br i1 %170, label %5622, label %5645

; <label>:5622                                    ; preds = %5608
  %5623 = fadd fast float %5614, %3963
  %5624 = fmul fast float %5623, %3964
  %5625 = fsub fast float 1.000000e+00, %3964
  %5626 = call float @dx.op.unary.f32(i32 7, float %5625)  ; Saturate(value)
  %5627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5628 = extractvalue %dx.types.CBufRet.f32 %5627, 3
  %5629 = fmul fast float %5628, %5626
  %5630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5631 = extractvalue %dx.types.CBufRet.f32 %5630, 0
  %5632 = fmul fast float %5631, %5357
  %5633 = extractvalue %dx.types.CBufRet.f32 %5630, 2
  %5634 = fmul fast float %5633, %4322
  %5635 = fadd fast float %5619, %5618
  %5636 = fmul fast float %5621, %5635
  %5637 = extractvalue %dx.types.CBufRet.f32 %5627, 1
  %5638 = fadd fast float %5629, %5624
  %5639 = fsub fast float %5638, %5632
  %5640 = fadd fast float %5639, %5634
  %5641 = fsub fast float %5640, %5637
  %5642 = extractvalue %dx.types.CBufRet.f32 %5627, 2
  %5643 = fmul fast float %5641, %5642
  %5644 = call float @dx.op.unary.f32(i32 7, float %5643)  ; Saturate(value)
  br label %5661

; <label>:5645                                    ; preds = %5608
  %5646 = fmul fast float %5617, %5614
  %5647 = fmul fast float %5621, %5618
  %5648 = fmul fast float %5621, %5619
  %5649 = fmul fast float %5646, %5621
  %5650 = add i32 %32, 356
  %5651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %5650, i32 undef)  ; BufferLoad(srv,index,wot)
  %5652 = extractvalue %dx.types.ResRet.i32 %5651, 0
  %5653 = and i32 %5652, 32
  %5654 = icmp eq i32 %5653, 0
  br i1 %5654, label %5661, label %5655

; <label>:5655                                    ; preds = %5645
  %5656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5657 = extractvalue %dx.types.CBufRet.f32 %5656, 0
  %5658 = fmul fast float %5657, 0x3FE99999A0000000
  %5659 = fadd fast float %5657, %5647
  %5660 = fadd fast float %5658, %5649
  br label %5661

; <label>:5661                                    ; preds = %5655, %5645, %5622
  %5662 = phi float [ %5636, %5622 ], [ %5659, %5655 ], [ %5647, %5645 ]
  %5663 = phi float [ %5644, %5622 ], [ %5648, %5655 ], [ %5648, %5645 ]
  %5664 = phi float [ 1.000000e+00, %5622 ], [ %5660, %5655 ], [ %5649, %5645 ]
  %5665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5666 = extractvalue %dx.types.CBufRet.f32 %5665, 0
  %5667 = fmul fast float %5666, %5610
  %5668 = fmul fast float %5666, %5611
  %5669 = fadd fast float %5610, %5609
  %5670 = select i1 %170, float %5669, float %5609
  %5671 = fmul float %5670, %5666
  %5672 = select i1 %170, float 0.000000e+00, float %5667
  %5673 = select i1 %170, float 0.000000e+00, float %5668
  %5674 = fmul fast float %5662, %5615
  %5675 = fmul fast float %5663, %5616
  %5676 = fmul fast float %5664, %5617
  %5677 = fadd fast float %5671, %5674
  %5678 = fadd fast float %5672, %5675
  %5679 = fadd fast float %5673, %5676
  %5680 = select i1 %170, float %5663, float %5678
  %5681 = select i1 %170, float %5664, float %5679
  %5682 = call float @dx.op.binary.f32(i32 36, float %5677, float 3.225500e+04)  ; FMin(a,b)
  %5683 = call float @dx.op.binary.f32(i32 36, float %5680, float 3.225500e+04)  ; FMin(a,b)
  %5684 = call float @dx.op.binary.f32(i32 36, float %5681, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5682)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5683)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5684)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!44 = !{[42 x i32] [i32 40, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0]}
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
!64 = !{i32 3, i32 5}
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

