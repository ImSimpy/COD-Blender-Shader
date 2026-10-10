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
; shader hash: e4e5dc45d4fef44c8e7ce0b2c8c2e03b
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
  %368 = add i32 %32, 472
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
  %526 = add i32 %32, 360
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
  %549 = add i32 %32, 440
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
  %747 = add i32 %32, 376
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
  %831 = add i32 %32, 392
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
  %1123 = add i32 %32, 428
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
  %1175 = add i32 %32, 412
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
  %1201 = add i32 %32, 364
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
  %1224 = add i32 %32, 444
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
  %1422 = add i32 %32, 380
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
  %1506 = add i32 %32, 396
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
  %1977 = add i32 %32, 432
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
  %2029 = add i32 %32, 416
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
  %2055 = add i32 %32, 368
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
  %2078 = add i32 %32, 448
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
  %2276 = add i32 %32, 384
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
  %2360 = add i32 %32, 400
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
  %2831 = add i32 %32, 436
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
  %2883 = add i32 %32, 420
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
  %2909 = add i32 %32, 372
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
  %2932 = add i32 %32, 452
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
  %3130 = add i32 %32, 388
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
  %3214 = add i32 %32, 404
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
  %3456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3457 = extractvalue %dx.types.CBufRet.f32 %3456, 0
  %3458 = call float @dx.op.dot2.f32(i32 54, float %3444, float %3445, float %3444, float %3445)  ; Dot2(ax,ay,bx,by)
  %3459 = fmul fast float %3458, 0x3FE3333340000000
  %3460 = fsub fast float 1.000000e+00, %3459
  %3461 = call float @dx.op.dot3.f32(i32 55, float %3444, float %3445, float %3460, float %3444, float %3445, float %3460)  ; Dot3(ax,ay,az,bx,by,bz)
  %3462 = call float @dx.op.unary.f32(i32 25, float %3461)  ; Rsqrt(value)
  %3463 = fmul fast float %3462, %3444
  %3464 = fmul fast float %3462, %3445
  %3465 = fmul fast float %3460, %3462
  %3466 = fmul fast float %3465, %74
  %3467 = fmul fast float %3465, %75
  %3468 = fmul fast float %3465, %76
  %3469 = fmul fast float %3463, %48
  %3470 = fmul fast float %3463, %49
  %3471 = fmul fast float %3463, %50
  %3472 = fadd fast float %3466, %3469
  %3473 = fadd fast float %3467, %3470
  %3474 = fadd fast float %3468, %3471
  %3475 = fmul fast float %86, %3464
  %3476 = fmul fast float %87, %3464
  %3477 = fmul fast float %88, %3464
  %3478 = fadd fast float %3472, %3475
  %3479 = fadd fast float %3473, %3476
  %3480 = fadd fast float %3474, %3477
  %3481 = call float @dx.op.dot3.f32(i32 55, float %3478, float %3479, float %3480, float %3478, float %3479, float %3480)  ; Dot3(ax,ay,az,bx,by,bz)
  %3482 = call float @dx.op.unary.f32(i32 25, float %3481)  ; Rsqrt(value)
  %3483 = fmul fast float %3478, %3482
  %3484 = fmul fast float %3479, %3482
  %3485 = fmul fast float %3480, %3482
  %3486 = and i32 %34, 1
  %3487 = icmp eq i32 %3486, 0
  br i1 %3487, label %3488, label %4000

; <label>:3488                                    ; preds = %3443
  %3489 = call float @dx.op.unary.f32(i32 83, float %130)  ; DerivCoarseX(value)
  %3490 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3491 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3492 = call float @dx.op.unary.f32(i32 84, float %130)  ; DerivCoarseY(value)
  %3493 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3494 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3495 = fadd fast float %3489, %130
  %3496 = fadd fast float %3490, %131
  %3497 = fadd fast float %3491, %132
  %3498 = fadd fast float %3492, %130
  %3499 = fadd fast float %3493, %131
  %3500 = fadd fast float %3494, %132
  %3501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3502 = extractvalue %dx.types.CBufRet.f32 %3501, 0
  %3503 = extractvalue %dx.types.CBufRet.f32 %3501, 1
  %3504 = extractvalue %dx.types.CBufRet.f32 %3501, 2
  %3505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3506 = extractvalue %dx.types.CBufRet.f32 %3505, 2
  %3507 = extractvalue %dx.types.CBufRet.f32 %3505, 3
  %3508 = fmul fast float %3502, %67
  %3509 = fmul fast float %3508, %3506
  %3510 = fmul fast float %3503, %68
  %3511 = fmul fast float %3510, %3507
  %3512 = fptoui float %3509 to i32
  %3513 = fptoui float %3511 to i32
  %3514 = fadd fast float %3502, -1.000000e+00
  %3515 = fadd fast float %3503, -1.000000e+00
  %3516 = fptoui float %3514 to i32
  %3517 = fptoui float %3515 to i32
  %3518 = call i32 @dx.op.binary.i32(i32 40, i32 %3512, i32 %3516)  ; UMin(a,b)
  %3519 = call i32 @dx.op.binary.i32(i32 40, i32 %3513, i32 %3517)  ; UMin(a,b)
  %3520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3521 = extractvalue %dx.types.CBufRet.f32 %3520, 2
  %3522 = extractvalue %dx.types.CBufRet.f32 %3520, 3
  %3523 = fmul fast float %3521, %62
  %3524 = fsub fast float %3523, %3522
  %3525 = fadd fast float %3504, -1.000000e+00
  %3526 = call float @dx.op.binary.f32(i32 36, float %3524, float %3525)  ; FMin(a,b)
  %3527 = fptoui float %3526 to i32
  %3528 = fptoui float %3502 to i32
  %3529 = fptoui float %3503 to i32
  %3530 = mul i32 %3527, %3529
  %3531 = add i32 %3530, %3519
  %3532 = mul i32 %3531, %3528
  %3533 = add i32 %3532, %3518
  %3534 = shl i32 %3533, 2
  %3535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.i32 %3535, 0
  %3537 = and i32 %3536, 1023
  %3538 = lshr i32 %3536, 10
  %3539 = icmp eq i32 %3537, 0
  br i1 %3539, label %3968, label %3540

; <label>:3540                                    ; preds = %3488
  %3541 = and i32 %3536, 1023
  br label %3542

; <label>:3542                                    ; preds = %3669, %3540
  %3543 = phi i32 [ %3619, %3669 ], [ 0, %3540 ]
  %3544 = phi float [ %3670, %3669 ], [ 0.000000e+00, %3540 ]
  %3545 = phi float [ %3671, %3669 ], [ %890, %3540 ]
  %3546 = phi float [ %3672, %3669 ], [ %3457, %3540 ]
  %3547 = phi float [ %3673, %3669 ], [ %3455, %3540 ]
  %3548 = phi float [ %3674, %3669 ], [ 0.000000e+00, %3540 ]
  %3549 = phi float [ %3675, %3669 ], [ 0.000000e+00, %3540 ]
  %3550 = phi float [ %3676, %3669 ], [ %3449, %3540 ]
  %3551 = phi float [ %3677, %3669 ], [ %3450, %3540 ]
  %3552 = phi float [ %3678, %3669 ], [ %3451, %3540 ]
  %3553 = phi float [ %3679, %3669 ], [ %3483, %3540 ]
  %3554 = phi float [ %3680, %3669 ], [ %3484, %3540 ]
  %3555 = phi float [ %3681, %3669 ], [ %3485, %3540 ]
  %3556 = phi float [ %3682, %3669 ], [ %3454, %3540 ]
  %3557 = phi float [ %3683, %3669 ], [ %3453, %3540 ]
  %3558 = phi float [ %3684, %3669 ], [ 0.000000e+00, %3540 ]
  %3559 = phi float [ %3685, %3669 ], [ %3452, %3540 ]
  %3560 = phi float [ %3686, %3669 ], [ %3446, %3540 ]
  %3561 = phi float [ %3687, %3669 ], [ %3447, %3540 ]
  %3562 = phi float [ %3688, %3669 ], [ %3448, %3540 ]
  %3563 = add nuw nsw i32 %3543, %3538
  %3564 = shl i32 %3563, 2
  %3565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3564, i32 undef)  ; BufferLoad(srv,index,wot)
  %3566 = extractvalue %dx.types.ResRet.i32 %3565, 0
  %3567 = shl i32 %3566, 8
  %3568 = or i32 %3567, 48
  %3569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3568, i32 undef)  ; BufferLoad(srv,index,wot)
  %3570 = extractvalue %dx.types.ResRet.f32 %3569, 0
  %3571 = extractvalue %dx.types.ResRet.f32 %3569, 1
  %3572 = extractvalue %dx.types.ResRet.f32 %3569, 2
  %3573 = extractvalue %dx.types.ResRet.f32 %3569, 3
  %3574 = or i32 %3567, 64
  %3575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3574, i32 undef)  ; BufferLoad(srv,index,wot)
  %3576 = extractvalue %dx.types.ResRet.i32 %3575, 0
  %3577 = extractvalue %dx.types.ResRet.i32 %3575, 1
  %3578 = or i32 %3567, 80
  %3579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3578, i32 undef)  ; BufferLoad(srv,index,wot)
  %3580 = extractvalue %dx.types.ResRet.f32 %3579, 2
  %3581 = extractvalue %dx.types.ResRet.f32 %3579, 3
  %3582 = or i32 %3567, 96
  %3583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3584 = extractvalue %dx.types.ResRet.f32 %3583, 0
  %3585 = extractvalue %dx.types.ResRet.f32 %3583, 1
  %3586 = extractvalue %dx.types.ResRet.f32 %3583, 2
  %3587 = extractvalue %dx.types.ResRet.f32 %3583, 3
  %3588 = or i32 %3567, 112
  %3589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3588, i32 undef)  ; BufferLoad(srv,index,wot)
  %3590 = extractvalue %dx.types.ResRet.f32 %3589, 2
  %3591 = or i32 %3567, 128
  %3592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3593 = extractvalue %dx.types.ResRet.f32 %3592, 0
  %3594 = extractvalue %dx.types.ResRet.f32 %3592, 1
  %3595 = extractvalue %dx.types.ResRet.f32 %3592, 2
  %3596 = extractvalue %dx.types.ResRet.f32 %3592, 3
  %3597 = or i32 %3567, 144
  %3598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3599 = extractvalue %dx.types.ResRet.f32 %3598, 0
  %3600 = extractvalue %dx.types.ResRet.f32 %3598, 1
  %3601 = extractvalue %dx.types.ResRet.f32 %3598, 2
  %3602 = extractvalue %dx.types.ResRet.f32 %3598, 3
  %3603 = or i32 %3567, 160
  %3604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3605 = extractvalue %dx.types.ResRet.f32 %3604, 0
  %3606 = extractvalue %dx.types.ResRet.f32 %3604, 1
  %3607 = extractvalue %dx.types.ResRet.f32 %3604, 2
  %3608 = extractvalue %dx.types.ResRet.f32 %3604, 3
  %3609 = or i32 %3567, 192
  %3610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3609, i32 undef)  ; BufferLoad(srv,index,wot)
  %3611 = extractvalue %dx.types.ResRet.i32 %3610, 0
  %3612 = or i32 %3567, 208
  %3613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 0
  %3615 = or i32 %3567, 248
  %3616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3615, i32 undef)  ; BufferLoad(srv,index,wot)
  %3617 = extractvalue %dx.types.ResRet.f32 %3616, 0
  %3618 = extractvalue %dx.types.ResRet.f32 %3616, 1
  %3619 = add nuw nsw i32 %3543, 1
  %3620 = bitcast float %3573 to i32
  %3621 = and i32 %3620, 512
  %3622 = icmp eq i32 %3621, 0
  %3623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3567, i32 undef)  ; BufferLoad(srv,index,wot)
  %3624 = extractvalue %dx.types.ResRet.f32 %3623, 0
  %3625 = extractvalue %dx.types.ResRet.f32 %3623, 1
  %3626 = extractvalue %dx.types.ResRet.f32 %3623, 2
  %3627 = extractvalue %dx.types.ResRet.f32 %3623, 3
  %3628 = call float @dx.op.dot4.f32(i32 56, float %3624, float %3625, float %3626, float %3627, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3629 = or i32 %3567, 16
  %3630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3629, i32 undef)  ; BufferLoad(srv,index,wot)
  %3631 = extractvalue %dx.types.ResRet.f32 %3630, 0
  %3632 = extractvalue %dx.types.ResRet.f32 %3630, 1
  %3633 = extractvalue %dx.types.ResRet.f32 %3630, 2
  %3634 = extractvalue %dx.types.ResRet.f32 %3630, 3
  %3635 = call float @dx.op.dot4.f32(i32 56, float %3631, float %3632, float %3633, float %3634, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3636 = or i32 %3567, 32
  %3637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3636, i32 undef)  ; BufferLoad(srv,index,wot)
  %3638 = extractvalue %dx.types.ResRet.f32 %3637, 0
  %3639 = extractvalue %dx.types.ResRet.f32 %3637, 1
  %3640 = extractvalue %dx.types.ResRet.f32 %3637, 2
  %3641 = extractvalue %dx.types.ResRet.f32 %3637, 3
  %3642 = call float @dx.op.dot4.f32(i32 56, float %3638, float %3639, float %3640, float %3641, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3643 = call float @dx.op.unary.f32(i32 27, float %3628)  ; Round_ni(value)
  %3644 = call float @dx.op.unary.f32(i32 6, float %3643)  ; FAbs(value)
  %3645 = call float @dx.op.unary.f32(i32 27, float %3635)  ; Round_ni(value)
  %3646 = call float @dx.op.unary.f32(i32 6, float %3645)  ; FAbs(value)
  %3647 = call float @dx.op.unary.f32(i32 6, float %3642)  ; FAbs(value)
  %3648 = call float @dx.op.unary.f32(i32 27, float %3647)  ; Round_ni(value)
  %3649 = fadd fast float %3646, %3644
  %3650 = fadd fast float %3649, %3648
  %3651 = fcmp fast oeq float %3650, 0.000000e+00
  %3652 = call float @dx.op.dot4.f32(i32 56, float %3624, float %3625, float %3626, float %3627, float %3495, float %3496, float %3497, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3653 = call float @dx.op.dot4.f32(i32 56, float %3631, float %3632, float %3633, float %3634, float %3495, float %3496, float %3497, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3654 = call float @dx.op.dot4.f32(i32 56, float %3624, float %3625, float %3626, float %3627, float %3498, float %3499, float %3500, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3655 = call float @dx.op.dot4.f32(i32 56, float %3631, float %3632, float %3633, float %3634, float %3498, float %3499, float %3500, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3656 = fsub fast float %3652, %3628
  %3657 = fsub fast float %3654, %3628
  %3658 = fsub fast float %3653, %3635
  %3659 = fsub fast float %3655, %3635
  %3660 = call float @dx.op.dot3.f32(i32 55, float %3570, float %3571, float %3572, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %3661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3662 = extractvalue %dx.types.CBufRet.f32 %3661, 2
  %3663 = fadd fast float %3662, %3660
  %3664 = call float @dx.op.unary.f32(i32 7, float %3663)  ; Saturate(value)
  %3665 = extractvalue %dx.types.CBufRet.f32 %3661, 0
  %3666 = fcmp fast ogt float %3664, %3665
  %3667 = and i1 %3651, %3666
  %3668 = and i1 %3622, %3667
  br i1 %3668, label %3690, label %3669

; <label>:3669                                    ; preds = %3954, %3771, %3690, %3542
  %3670 = phi float [ %3544, %3690 ], [ %3774, %3771 ], [ %3774, %3954 ], [ %3544, %3542 ]
  %3671 = phi float [ %3545, %3690 ], [ %3545, %3771 ], [ %3929, %3954 ], [ %3545, %3542 ]
  %3672 = phi float [ %3546, %3690 ], [ %3546, %3771 ], [ %3928, %3954 ], [ %3546, %3542 ]
  %3673 = phi float [ %3547, %3690 ], [ %3547, %3771 ], [ %3926, %3954 ], [ %3547, %3542 ]
  %3674 = phi float [ %3548, %3690 ], [ %3548, %3771 ], [ %3898, %3954 ], [ %3548, %3542 ]
  %3675 = phi float [ %3549, %3690 ], [ %3549, %3771 ], [ %3896, %3954 ], [ %3549, %3542 ]
  %3676 = phi float [ %3550, %3690 ], [ %3550, %3771 ], [ %3964, %3954 ], [ %3550, %3542 ]
  %3677 = phi float [ %3551, %3690 ], [ %3551, %3771 ], [ %3965, %3954 ], [ %3551, %3542 ]
  %3678 = phi float [ %3552, %3690 ], [ %3552, %3771 ], [ %3966, %3954 ], [ %3552, %3542 ]
  %3679 = phi float [ %3553, %3690 ], [ %3553, %3771 ], [ %3877, %3954 ], [ %3553, %3542 ]
  %3680 = phi float [ %3554, %3690 ], [ %3554, %3771 ], [ %3878, %3954 ], [ %3554, %3542 ]
  %3681 = phi float [ %3555, %3690 ], [ %3555, %3771 ], [ %3879, %3954 ], [ %3555, %3542 ]
  %3682 = phi float [ %3556, %3690 ], [ %3556, %3771 ], [ %3906, %3954 ], [ %3556, %3542 ]
  %3683 = phi float [ %3557, %3690 ], [ %3557, %3771 ], [ %3903, %3954 ], [ %3557, %3542 ]
  %3684 = phi float [ %3558, %3690 ], [ %3558, %3771 ], [ %3900, %3954 ], [ %3558, %3542 ]
  %3685 = phi float [ %3559, %3690 ], [ %3559, %3771 ], [ %3894, %3954 ], [ %3559, %3542 ]
  %3686 = phi float [ %3560, %3690 ], [ %3560, %3771 ], [ %3889, %3954 ], [ %3560, %3542 ]
  %3687 = phi float [ %3561, %3690 ], [ %3561, %3771 ], [ %3890, %3954 ], [ %3561, %3542 ]
  %3688 = phi float [ %3562, %3690 ], [ %3562, %3771 ], [ %3891, %3954 ], [ %3562, %3542 ]
  %3689 = icmp eq i32 %3619, %3541
  br i1 %3689, label %3967, label %3542

; <label>:3690                                    ; preds = %3542
  %3691 = extractvalue %dx.types.ResRet.f32 %3589, 3
  %3692 = extractvalue %dx.types.ResRet.f32 %3589, 1
  %3693 = extractvalue %dx.types.ResRet.f32 %3589, 0
  %3694 = extractvalue %dx.types.ResRet.f32 %3579, 1
  %3695 = extractvalue %dx.types.ResRet.f32 %3579, 0
  %3696 = extractvalue %dx.types.ResRet.i32 %3575, 3
  %3697 = extractvalue %dx.types.ResRet.i32 %3575, 2
  %3698 = add i32 %3696, 0
  %3699 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3698, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3701 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3699, %dx.types.Handle %3700, float %3628, float %3635, float undef, float undef, i32 0, i32 0, i32 undef, float %3656, float %3658, float undef, float %3657, float %3659, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3702 = extractvalue %dx.types.ResRet.f32 %3701, 0
  %3703 = fmul fast float %3702, %3695
  %3704 = fadd fast float %3703, %3694
  %3705 = call float @dx.op.unary.f32(i32 7, float %3704)  ; Saturate(value)
  %3706 = fmul fast float %3628, %3584
  %3707 = call float @dx.op.tertiary.f32(i32 46, float %3585, float %3635, float %3706)  ; FMad(a,b,c)
  %3708 = fadd fast float %3707, %3693
  %3709 = fmul fast float %3628, %3586
  %3710 = call float @dx.op.tertiary.f32(i32 46, float %3587, float %3635, float %3709)  ; FMad(a,b,c)
  %3711 = fadd fast float %3710, %3692
  %3712 = fmul fast float %3656, %3584
  %3713 = call float @dx.op.tertiary.f32(i32 46, float %3585, float %3658, float %3712)  ; FMad(a,b,c)
  %3714 = fmul fast float %3656, %3586
  %3715 = call float @dx.op.tertiary.f32(i32 46, float %3587, float %3658, float %3714)  ; FMad(a,b,c)
  %3716 = fmul fast float %3657, %3584
  %3717 = call float @dx.op.tertiary.f32(i32 46, float %3585, float %3659, float %3716)  ; FMad(a,b,c)
  %3718 = fmul fast float %3657, %3586
  %3719 = call float @dx.op.tertiary.f32(i32 46, float %3587, float %3659, float %3718)  ; FMad(a,b,c)
  %3720 = add i32 %3697, 0
  %3721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3720, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3722 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3721, %dx.types.Handle %3700, float %3708, float %3711, float undef, float undef, i32 0, i32 0, i32 undef, float %3713, float %3715, float undef, float %3717, float %3719, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3723 = extractvalue %dx.types.ResRet.f32 %3722, 0
  %3724 = and i32 %3620, 1024
  %3725 = icmp ne i32 %3724, 0
  %3726 = fcmp fast ogt float %3723, 0x3FE0101020000000
  %3727 = uitofp i1 %3726 to float
  %3728 = select i1 %3725, float %3727, float %3723
  %3729 = and i32 %3620, 8192
  %3730 = icmp ne i32 %3729, 0
  %3731 = select i1 %3730, float %3691, float 1.000000e+00
  %3732 = fmul fast float %3628, 2.000000e+00
  %3733 = fadd fast float %3732, -1.000000e+00
  %3734 = call float @dx.op.unary.f32(i32 6, float %3733)  ; FAbs(value)
  %3735 = fmul fast float %3734, %3617
  %3736 = fsub fast float %3735, %3617
  %3737 = call float @dx.op.unary.f32(i32 7, float %3736)  ; Saturate(value)
  %3738 = fmul fast float %3635, 2.000000e+00
  %3739 = fadd fast float %3738, -1.000000e+00
  %3740 = call float @dx.op.unary.f32(i32 6, float %3739)  ; FAbs(value)
  %3741 = fmul fast float %3740, %3618
  %3742 = fsub fast float %3741, %3618
  %3743 = call float @dx.op.unary.f32(i32 7, float %3742)  ; Saturate(value)
  %3744 = fmul fast float %3647, %3580
  %3745 = fsub fast float %3744, %3580
  %3746 = call float @dx.op.unary.f32(i32 7, float %3745)  ; Saturate(value)
  %3747 = fmul fast float %3705, %3731
  %3748 = fmul fast float %3747, %3702
  %3749 = fmul fast float %3748, %3737
  %3750 = fmul fast float %3749, %3728
  %3751 = fmul fast float %3750, %3743
  %3752 = fmul fast float %3751, %3746
  %3753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3754 = extractvalue %dx.types.CBufRet.f32 %3753, 1
  %3755 = extractvalue %dx.types.CBufRet.f32 %3753, 0
  %3756 = fsub fast float %3664, %3755
  %3757 = fmul fast float %3756, %3754
  %3758 = call float @dx.op.unary.f32(i32 7, float %3757)  ; Saturate(value)
  %3759 = fmul fast float %3752, %3581
  %3760 = fadd fast float %3752, %3581
  %3761 = fmul fast float %3760, %3590
  %3762 = fsub fast float %3761, %3590
  %3763 = call float @dx.op.unary.f32(i32 7, float %3762)  ; Saturate(value)
  %3764 = and i32 %3620, 128
  %3765 = icmp ne i32 %3764, 0
  %3766 = select i1 %3765, float %3763, float %3759
  %3767 = fmul fast float %3766, %3758
  %3768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3769 = extractvalue %dx.types.CBufRet.f32 %3768, 0
  %3770 = fcmp fast ugt float %3767, %3769
  br i1 %3770, label %3771, label %3669

; <label>:3771                                    ; preds = %3690
  %3772 = select i1 %3730, float %3767, float 0.000000e+00
  %3773 = fadd fast float %3772, %3544
  %3774 = call float @dx.op.unary.f32(i32 7, float %3773)  ; Saturate(value)
  br i1 %3730, label %3669, label %3775

; <label>:3775                                    ; preds = %3771
  %3776 = and i32 %3620, 4
  %3777 = and i32 %3620, 8
  %3778 = add i32 %3576, 0
  %3779 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3778, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3780 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3781 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3779, %dx.types.Handle %3780, float %3708, float %3711, float undef, float undef, i32 0, i32 0, i32 undef, float %3713, float %3715, float undef, float %3717, float %3719, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3782 = extractvalue %dx.types.ResRet.f32 %3781, 0
  %3783 = extractvalue %dx.types.ResRet.f32 %3781, 1
  %3784 = extractvalue %dx.types.ResRet.f32 %3781, 2
  %3785 = extractvalue %dx.types.ResRet.f32 %3781, 3
  %3786 = bitcast float %3602 to i32
  %3787 = and i32 %3786, 255
  %3788 = uitofp i32 %3787 to float
  %3789 = lshr i32 %3786, 8
  %3790 = and i32 %3789, 255
  %3791 = uitofp i32 %3790 to float
  %3792 = fmul fast float %3785, %3788
  %3793 = fadd fast float %3792, %3791
  %3794 = fmul fast float %3793, 0x3F70101000000000
  %3795 = add i32 %3577, 0
  %3796 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3795, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3797 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3796, %dx.types.Handle %3780, float %3708, float %3711, float undef, float undef, i32 0, i32 0, i32 undef, float %3713, float %3715, float undef, float %3717, float %3719, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3798 = extractvalue %dx.types.ResRet.f32 %3797, 0
  %3799 = extractvalue %dx.types.ResRet.f32 %3797, 1
  %3800 = extractvalue %dx.types.ResRet.f32 %3797, 2
  %3801 = extractvalue %dx.types.ResRet.f32 %3797, 3
  %3802 = bitcast float %3596 to i32
  %3803 = and i32 %3802, 255
  %3804 = uitofp i32 %3803 to float
  %3805 = lshr i32 %3802, 8
  %3806 = and i32 %3805, 255
  %3807 = uitofp i32 %3806 to float
  %3808 = lshr i32 %3802, 16
  %3809 = and i32 %3808, 255
  %3810 = uitofp i32 %3809 to float
  %3811 = fmul fast float %3810, 0x3F70101000000000
  %3812 = fmul fast float %3798, %3804
  %3813 = fadd fast float %3812, %3807
  %3814 = fmul fast float %3813, 0x3F70101000000000
  %3815 = fadd fast float %3799, -5.000000e-01
  %3816 = fadd fast float %3801, -5.000000e-01
  %3817 = fmul fast float %3815, %3811
  %3818 = fmul fast float %3816, %3811
  %3819 = fadd fast float %3817, 5.000000e-01
  %3820 = fadd fast float %3818, 5.000000e-01
  %3821 = fmul fast float %3782, %3605
  %3822 = fmul fast float %3783, %3606
  %3823 = fmul fast float %3784, %3607
  %3824 = fmul fast float %3819, 2.000000e+00
  %3825 = fadd fast float %3824, -1.000000e+00
  %3826 = fmul fast float %3820, 2.000000e+00
  %3827 = fadd fast float %3826, -1.000000e+00
  %3828 = fadd fast float %3825, %3827
  %3829 = fmul fast float %3828, 5.000000e-01
  %3830 = fsub fast float %3825, %3827
  %3831 = fmul fast float %3830, 5.000000e-01
  %3832 = call float @dx.op.unary.f32(i32 6, float %3829)  ; FAbs(value)
  %3833 = fsub fast float 1.000000e+00, %3832
  %3834 = call float @dx.op.unary.f32(i32 6, float %3831)  ; FAbs(value)
  %3835 = fsub fast float %3833, %3834
  %3836 = call float @dx.op.dot3.f32(i32 55, float %3829, float %3831, float %3835, float %3829, float %3831, float %3835)  ; Dot3(ax,ay,az,bx,by,bz)
  %3837 = call float @dx.op.unary.f32(i32 25, float %3836)  ; Rsqrt(value)
  %3838 = fmul fast float %3829, %3837
  %3839 = fmul fast float %3831, %3837
  %3840 = fmul fast float %3837, %3835
  %3841 = fmul fast float %3840, %3570
  %3842 = fmul fast float %3840, %3571
  %3843 = fmul fast float %3840, %3572
  %3844 = fmul fast float %3838, %3593
  %3845 = fmul fast float %3838, %3594
  %3846 = fmul fast float %3838, %3595
  %3847 = fadd fast float %3844, %3841
  %3848 = fadd fast float %3845, %3842
  %3849 = fadd fast float %3846, %3843
  %3850 = fmul fast float %3839, %3599
  %3851 = fmul fast float %3839, %3600
  %3852 = fmul fast float %3839, %3601
  %3853 = fadd fast float %3847, %3850
  %3854 = fadd fast float %3848, %3851
  %3855 = fadd fast float %3849, %3852
  %3856 = call float @dx.op.dot3.f32(i32 55, float %3853, float %3854, float %3855, float %3853, float %3854, float %3855)  ; Dot3(ax,ay,az,bx,by,bz)
  %3857 = call float @dx.op.unary.f32(i32 25, float %3856)  ; Rsqrt(value)
  %3858 = fmul fast float %3853, %3857
  %3859 = fmul fast float %3854, %3857
  %3860 = fmul fast float %3855, %3857
  %3861 = icmp ne i32 %3777, 0
  %3862 = select i1 %3861, float 1.000000e+00, float 0.000000e+00
  %3863 = fmul fast float %3767, %3862
  %3864 = and i32 %3620, 1
  %3865 = icmp eq i32 %3864, 0
  br i1 %3865, label %3866, label %3870

; <label>:3866                                    ; preds = %3775
  %3867 = fsub fast float %3858, %3553
  %3868 = fsub fast float %3859, %3554
  %3869 = fsub fast float %3860, %3555
  br label %3870

; <label>:3870                                    ; preds = %3866, %3775
  %3871 = phi float [ %3867, %3866 ], [ %3858, %3775 ]
  %3872 = phi float [ %3868, %3866 ], [ %3859, %3775 ]
  %3873 = phi float [ %3869, %3866 ], [ %3860, %3775 ]
  %3874 = fmul float %3873, %3863
  %3875 = fmul float %3872, %3863
  %3876 = fmul float %3871, %3863
  %3877 = fadd fast float %3876, %3553
  %3878 = fadd fast float %3875, %3554
  %3879 = fadd fast float %3874, %3555
  %3880 = icmp ne i32 %3776, 0
  %3881 = select i1 %3880, float 1.000000e+00, float 0.000000e+00
  %3882 = fmul fast float %3767, %3881
  %3883 = fsub fast float %3821, %3560
  %3884 = fsub fast float %3822, %3561
  %3885 = fsub fast float %3823, %3562
  %3886 = fmul fast float %3883, %3882
  %3887 = fmul fast float %3884, %3882
  %3888 = fmul fast float %3885, %3882
  %3889 = fadd fast float %3886, %3560
  %3890 = fadd fast float %3887, %3561
  %3891 = fadd fast float %3888, %3562
  %3892 = fsub fast float %3794, %3559
  %3893 = fmul fast float %3892, %3882
  %3894 = fadd fast float %3893, %3559
  %3895 = fmul fast float %3882, %3549
  %3896 = fsub fast float %3549, %3895
  %3897 = fmul fast float %3882, %3548
  %3898 = fsub fast float %3548, %3897
  %3899 = fadd fast float %3767, %3558
  %3900 = call float @dx.op.unary.f32(i32 7, float %3899)  ; Saturate(value)
  %3901 = fsub fast float %3814, %3557
  %3902 = fmul fast float %3901, %3863
  %3903 = fadd fast float %3902, %3557
  %3904 = fsub fast float %3800, %3556
  %3905 = fmul fast float %3904, %3863
  %3906 = fadd fast float %3905, %3556
  %3907 = call float @dx.op.dot3.f32(i32 55, float %3821, float %3822, float %3823, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3909 = extractvalue %dx.types.CBufRet.f32 %3908, 0
  %3910 = extractvalue %dx.types.CBufRet.f32 %3908, 1
  %3911 = fmul fast float %3910, %3907
  %3912 = fadd fast float %3911, %3909
  %3913 = call float @dx.op.unary.f32(i32 7, float %3912)  ; Saturate(value)
  %3914 = bitcast float %3608 to i32
  %3915 = and i32 %3914, 65535
  %3916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3915)  ; LegacyF16ToF32(value)
  %3917 = lshr i32 %3914, 16
  %3918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3917)  ; LegacyF16ToF32(value)
  %3919 = fcmp fast oge float %3916, 0.000000e+00
  %3920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3921 = extractvalue %dx.types.CBufRet.f32 %3920, 0
  %3922 = select i1 %3919, float %3916, float %3921
  %3923 = fadd fast float %3922, %3918
  %3924 = fsub fast float %3913, %3547
  %3925 = fmul fast float %3924, %3767
  %3926 = fadd fast float %3925, %3547
  %3927 = fmul fast float %3923, %3767
  %3928 = call float @dx.op.binary.f32(i32 35, float %3546, float %3927)  ; FMax(a,b)
  %3929 = call float @dx.op.binary.f32(i32 35, float %3545, float %3767)  ; FMax(a,b)
  %3930 = and i32 %3620, 16
  %3931 = icmp eq i32 %3930, 0
  br i1 %3931, label %3954, label %3932

; <label>:3932                                    ; preds = %3870
  %3933 = bitcast float %3614 to i32
  %3934 = add i32 %3611, 0
  %3935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3934, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3936 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3935, %dx.types.Handle %3780, float %3708, float %3711, float undef, float undef, i32 0, i32 0, i32 undef, float %3713, float %3715, float undef, float %3717, float %3719, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3937 = extractvalue %dx.types.ResRet.f32 %3936, 0
  %3938 = extractvalue %dx.types.ResRet.f32 %3936, 1
  %3939 = extractvalue %dx.types.ResRet.f32 %3936, 2
  %3940 = and i32 %3933, 65535
  %3941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3940)  ; LegacyF16ToF32(value)
  %3942 = fmul fast float %3937, %3605
  %3943 = fmul fast float %3938, %3606
  %3944 = fmul fast float %3939, %3607
  %3945 = and i32 %3620, 16384
  %3946 = icmp ne i32 %3945, 0
  %3947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3948 = extractvalue %dx.types.CBufRet.f32 %3947, 0
  %3949 = select i1 %3946, float %3948, float 1.000000e+00
  %3950 = fmul fast float %3949, %3941
  %3951 = fmul fast float %3942, %3950
  %3952 = fmul fast float %3943, %3950
  %3953 = fmul fast float %3944, %3950
  br label %3954

; <label>:3954                                    ; preds = %3932, %3870
  %3955 = phi float [ %3951, %3932 ], [ 0.000000e+00, %3870 ]
  %3956 = phi float [ %3952, %3932 ], [ 0.000000e+00, %3870 ]
  %3957 = phi float [ %3953, %3932 ], [ 0.000000e+00, %3870 ]
  %3958 = fsub fast float %3955, %3550
  %3959 = fsub fast float %3956, %3551
  %3960 = fsub fast float %3957, %3552
  %3961 = fmul fast float %3958, %3767
  %3962 = fmul fast float %3959, %3767
  %3963 = fmul fast float %3960, %3767
  %3964 = fadd fast float %3961, %3550
  %3965 = fadd fast float %3962, %3551
  %3966 = fadd fast float %3963, %3552
  br label %3669

; <label>:3967                                    ; preds = %3669
  br label %3968

; <label>:3968                                    ; preds = %3967, %3488
  %3969 = phi float [ 0.000000e+00, %3488 ], [ %3670, %3967 ]
  %3970 = phi float [ %890, %3488 ], [ %3671, %3967 ]
  %3971 = phi float [ %3457, %3488 ], [ %3672, %3967 ]
  %3972 = phi float [ %3455, %3488 ], [ %3673, %3967 ]
  %3973 = phi float [ 0.000000e+00, %3488 ], [ %3674, %3967 ]
  %3974 = phi float [ 0.000000e+00, %3488 ], [ %3675, %3967 ]
  %3975 = phi float [ %3449, %3488 ], [ %3676, %3967 ]
  %3976 = phi float [ %3450, %3488 ], [ %3677, %3967 ]
  %3977 = phi float [ %3451, %3488 ], [ %3678, %3967 ]
  %3978 = phi float [ %3483, %3488 ], [ %3679, %3967 ]
  %3979 = phi float [ %3484, %3488 ], [ %3680, %3967 ]
  %3980 = phi float [ %3485, %3488 ], [ %3681, %3967 ]
  %3981 = phi float [ %3454, %3488 ], [ %3682, %3967 ]
  %3982 = phi float [ %3453, %3488 ], [ %3683, %3967 ]
  %3983 = phi float [ 0.000000e+00, %3488 ], [ %3684, %3967 ]
  %3984 = phi float [ %3452, %3488 ], [ %3685, %3967 ]
  %3985 = phi float [ %3446, %3488 ], [ %3686, %3967 ]
  %3986 = phi float [ %3447, %3488 ], [ %3687, %3967 ]
  %3987 = phi float [ %3448, %3488 ], [ %3688, %3967 ]
  %3988 = call float @dx.op.dot3.f32(i32 55, float %3978, float %3979, float %3980, float %3978, float %3979, float %3980)  ; Dot3(ax,ay,az,bx,by,bz)
  %3989 = call float @dx.op.unary.f32(i32 25, float %3988)  ; Rsqrt(value)
  %3990 = fmul fast float %3989, %3978
  %3991 = fmul fast float %3989, %3979
  %3992 = fmul fast float %3989, %3980
  %3993 = fadd fast float %3983, %890
  %3994 = call float @dx.op.unary.f32(i32 7, float %3993)  ; Saturate(value)
  %3995 = call float @dx.op.dot3.f32(i32 55, float %3990, float %3991, float %3992, float %3990, float %3991, float %3992)  ; Dot3(ax,ay,az,bx,by,bz)
  %3996 = call float @dx.op.unary.f32(i32 25, float %3995)  ; Rsqrt(value)
  %3997 = fmul fast float %3996, %3990
  %3998 = fmul fast float %3996, %3991
  %3999 = fmul fast float %3996, %3992
  br label %4000

; <label>:4000                                    ; preds = %3968, %3443
  %4001 = phi float [ %3997, %3968 ], [ %3483, %3443 ]
  %4002 = phi float [ %3998, %3968 ], [ %3484, %3443 ]
  %4003 = phi float [ %3999, %3968 ], [ %3485, %3443 ]
  %4004 = phi float [ %3985, %3968 ], [ %3446, %3443 ]
  %4005 = phi float [ %3986, %3968 ], [ %3447, %3443 ]
  %4006 = phi float [ %3987, %3968 ], [ %3448, %3443 ]
  %4007 = phi float [ %3975, %3968 ], [ %3449, %3443 ]
  %4008 = phi float [ %3976, %3968 ], [ %3450, %3443 ]
  %4009 = phi float [ %3977, %3968 ], [ %3451, %3443 ]
  %4010 = phi float [ %3984, %3968 ], [ %3452, %3443 ]
  %4011 = phi float [ %3994, %3968 ], [ %890, %3443 ]
  %4012 = phi float [ %3982, %3968 ], [ %3453, %3443 ]
  %4013 = phi float [ %3981, %3968 ], [ %3454, %3443 ]
  %4014 = phi float [ %3974, %3968 ], [ 0.000000e+00, %3443 ]
  %4015 = phi float [ %3973, %3968 ], [ 0.000000e+00, %3443 ]
  %4016 = phi float [ %3969, %3968 ], [ 0.000000e+00, %3443 ]
  %4017 = phi float [ %3971, %3968 ], [ %3457, %3443 ]
  %4018 = phi float [ %3970, %3968 ], [ %890, %3443 ]
  %4019 = phi float [ %3972, %3968 ], [ %3455, %3443 ]
  %4020 = fadd fast float %4010, 0xBFB99999A0000000
  %4021 = call float @dx.op.unary.f32(i32 7, float %4020)  ; Saturate(value)
  %4022 = fmul fast float %4021, 0x3FF1C71C80000000
  %4023 = call float @dx.op.binary.f32(i32 36, float %4010, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4024 = fsub fast float 1.000000e+00, %4022
  %4025 = call float @dx.op.unary.f32(i32 7, float %4024)  ; Saturate(value)
  %4026 = fmul fast float %4025, %4004
  %4027 = fmul fast float %4025, %4005
  %4028 = fmul fast float %4025, %4006
  %4029 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  %4030 = call float @dx.op.unary.f32(i32 7, float %4027)  ; Saturate(value)
  %4031 = call float @dx.op.unary.f32(i32 7, float %4028)  ; Saturate(value)
  %4032 = fmul fast float %4022, %4004
  %4033 = fmul fast float %4022, %4005
  %4034 = fmul fast float %4022, %4006
  %4035 = fadd fast float %4032, %4023
  %4036 = fadd fast float %4033, %4023
  %4037 = fadd fast float %4034, %4023
  %4038 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4039 = call float @dx.op.unary.f32(i32 7, float %4036)  ; Saturate(value)
  %4040 = call float @dx.op.unary.f32(i32 7, float %4037)  ; Saturate(value)
  %4041 = call float @dx.op.unary.f32(i32 7, float %4012)  ; Saturate(value)
  %4042 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4043 = extractvalue %dx.types.CBufRet.i32 %4042, 3
  %4044 = and i32 %4043, 8
  %4045 = icmp ne i32 %4044, 0
  %4046 = call float @dx.op.binary.f32(i32 35, float %4029, float %4004)  ; FMax(a,b)
  %4047 = call float @dx.op.binary.f32(i32 35, float %4030, float %4004)  ; FMax(a,b)
  %4048 = call float @dx.op.binary.f32(i32 35, float %4031, float %4004)  ; FMax(a,b)
  %4049 = call float @dx.op.dot3.f32(i32 55, float %4029, float %4030, float %4031, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4050 = select i1 %171, float %4004, float %4029
  %4051 = select i1 %171, float %4049, float %4030
  %4052 = select i1 %171, float 1.000000e+00, float %4031
  %4053 = select i1 %4045, float %4046, float %4050
  %4054 = select i1 %4045, float %4047, float %4051
  %4055 = select i1 %4045, float %4048, float %4052
  %4056 = and i32 %147, 3
  %4057 = select i1 %141, i32 %4056, i32 0
  %4058 = icmp eq i32 %4057, 1
  br i1 %4058, label %4059, label %4135

; <label>:4059                                    ; preds = %4000
  %4060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4061 = extractvalue %dx.types.CBufRet.f32 %4060, 0
  %4062 = extractvalue %dx.types.CBufRet.f32 %4060, 1
  %4063 = fadd fast float %4061, %130
  %4064 = fadd fast float %4062, %131
  %4065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4066 = extractvalue %dx.types.CBufRet.f32 %4065, 0
  %4067 = extractvalue %dx.types.CBufRet.f32 %4065, 1
  %4068 = fsub fast float %4063, %4066
  %4069 = fsub fast float %4064, %4067
  %4070 = fmul fast float %4068, %4068
  %4071 = fmul fast float %4069, %4069
  %4072 = fadd fast float %4070, %4071
  %4073 = call float @dx.op.unary.f32(i32 24, float %4072)  ; Sqrt(value)
  %4074 = extractvalue %dx.types.CBufRet.f32 %4065, 2
  %4075 = fcmp fast olt float %4073, %4074
  br i1 %4075, label %4076, label %4129

; <label>:4076                                    ; preds = %4059
  %4077 = extractvalue %dx.types.CBufRet.f32 %4060, 2
  %4078 = fadd fast float %4077, %132
  %4079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4080 = extractvalue %dx.types.CBufRet.f32 %4079, 0
  %4081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4082 = extractvalue %dx.types.CBufRet.f32 %4081, 0
  %4083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4084 = extractvalue %dx.types.CBufRet.f32 %4083, 0
  %4085 = extractvalue %dx.types.CBufRet.f32 %4079, 1
  %4086 = extractvalue %dx.types.CBufRet.f32 %4081, 1
  %4087 = extractvalue %dx.types.CBufRet.f32 %4083, 1
  %4088 = extractvalue %dx.types.CBufRet.f32 %4079, 3
  %4089 = extractvalue %dx.types.CBufRet.f32 %4081, 3
  %4090 = extractvalue %dx.types.CBufRet.f32 %4083, 3
  %4091 = fadd fast float %4088, %4063
  %4092 = fadd fast float %4089, %4064
  %4093 = fadd fast float %4078, %4090
  %4094 = fmul fast float %4091, %4080
  %4095 = call float @dx.op.tertiary.f32(i32 46, float %4092, float %4082, float %4094)  ; FMad(a,b,c)
  %4096 = call float @dx.op.tertiary.f32(i32 46, float %4093, float %4084, float %4095)  ; FMad(a,b,c)
  %4097 = fmul fast float %4091, %4085
  %4098 = call float @dx.op.tertiary.f32(i32 46, float %4092, float %4086, float %4097)  ; FMad(a,b,c)
  %4099 = call float @dx.op.tertiary.f32(i32 46, float %4093, float %4087, float %4098)  ; FMad(a,b,c)
  %4100 = fsub fast float %4096, %4088
  %4101 = fsub fast float %4099, %4089
  %4102 = fsub fast float %4100, %4066
  %4103 = fadd fast float %4102, %4074
  %4104 = fsub fast float %4101, %4067
  %4105 = fadd fast float %4104, %4074
  %4106 = extractvalue %dx.types.CBufRet.f32 %4065, 3
  %4107 = fmul fast float %4103, %4106
  %4108 = fmul fast float %4105, %4106
  %4109 = call float @dx.op.unary.f32(i32 7, float %4107)  ; Saturate(value)
  %4110 = call float @dx.op.unary.f32(i32 7, float %4108)  ; Saturate(value)
  %4111 = fsub fast float 1.000000e+00, %4109
  %4112 = fsub fast float 1.000000e+00, %4110
  %4113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %28, float %4111, float %4112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4114 = extractvalue %dx.types.ResRet.f32 %4113, 0
  %4115 = fcmp fast ugt float %4114, 0.000000e+00
  br i1 %4115, label %4116, label %4129

; <label>:4116                                    ; preds = %4076
  %4117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4118 = extractvalue %dx.types.CBufRet.f32 %4117, 2
  %4119 = fmul fast float %4118, %4114
  %4120 = extractvalue %dx.types.CBufRet.f32 %4117, 3
  %4121 = fadd fast float %4120, %4119
  %4122 = extractvalue %dx.types.CBufRet.f32 %4083, 2
  %4123 = fadd fast float %4121, %4090
  %4124 = fmul fast float %4096, %4084
  %4125 = call float @dx.op.tertiary.f32(i32 46, float %4099, float %4087, float %4124)  ; FMad(a,b,c)
  %4126 = call float @dx.op.tertiary.f32(i32 46, float %4123, float %4122, float %4125)  ; FMad(a,b,c)
  %4127 = fsub fast float %4126, %4090
  %4128 = fsub fast float %4127, %4077
  br label %4129

; <label>:4129                                    ; preds = %4116, %4076, %4059
  %4130 = phi i1 [ true, %4116 ], [ false, %4076 ], [ false, %4059 ]
  %4131 = phi float [ %4128, %4116 ], [ -1.310720e+05, %4076 ], [ -1.310720e+05, %4059 ]
  %4132 = fsub fast float %4131, %132
  %4133 = call float @dx.op.unary.f32(i32 7, float %4132)  ; Saturate(value)
  %4134 = select i1 %4130, float %4133, float 1.000000e+00
  br label %4135

; <label>:4135                                    ; preds = %4129, %4000
  %4136 = phi float [ %4134, %4129 ], [ 0.000000e+00, %4000 ]
  %4137 = icmp eq i32 %4057, 3
  %4138 = select i1 %4137, float 1.000000e+00, float %4136
  %4139 = call float @dx.op.binary.f32(i32 35, float %4016, float %4138)  ; FMax(a,b)
  %4140 = call float @dx.op.unary.f32(i32 7, float %4139)  ; Saturate(value)
  %4141 = fcmp fast une float %4140, 0.000000e+00
  %4142 = call float @dx.op.dot3.f32(i32 55, float %130, float %131, float %132, float %130, float %131, float %132)  ; Dot3(ax,ay,az,bx,by,bz)
  %4143 = call float @dx.op.unary.f32(i32 25, float %4142)  ; Rsqrt(value)
  br i1 %4141, label %4151, label %4144

; <label>:4144                                    ; preds = %4135
  %4145 = fmul fast float %4143, %130
  %4146 = fmul fast float %4143, %131
  %4147 = fmul fast float %4143, %132
  %4148 = fsub fast float -0.000000e+00, %4145
  %4149 = fsub fast float -0.000000e+00, %4146
  %4150 = fsub fast float -0.000000e+00, %4147
  br label %4319

; <label>:4151                                    ; preds = %4135
  %4152 = fmul fast float %130, %4143
  %4153 = fsub fast float -0.000000e+00, %4152
  %4154 = fmul fast float %131, %4143
  %4155 = fsub fast float -0.000000e+00, %4154
  %4156 = fmul fast float %132, %4143
  %4157 = fsub fast float -0.000000e+00, %4156
  %4158 = call float @dx.op.dot3.f32(i32 55, float %4153, float %4155, float %4157, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4159 = fmul fast float %4140, 2.500000e+00
  %4160 = call float @dx.op.unary.f32(i32 7, float %4159)  ; Saturate(value)
  %4161 = fmul fast float %4140, 0x4013FFFFE0000000
  %4162 = fadd fast float %4161, 0xBFFFFFFFE0000000
  %4163 = call float @dx.op.unary.f32(i32 7, float %4162)  ; Saturate(value)
  %4164 = fmul fast float %4140, 0x4004000020000000
  %4165 = fadd fast float %4164, 0xBFF8000040000000
  %4166 = call float @dx.op.unary.f32(i32 7, float %4165)  ; Saturate(value)
  %4167 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4168 = fmul fast float %4020, 1.000000e+01
  %4169 = call float @dx.op.unary.f32(i32 7, float %4168)  ; Saturate(value)
  %4170 = fmul fast float %4169, 2.000000e+00
  %4171 = fsub fast float 3.000000e+00, %4170
  %4172 = fmul fast float %4169, %4169
  %4173 = fmul fast float %4172, %4171
  %4174 = fsub fast float 1.000000e+00, %4173
  %4175 = fsub fast float 0x3FE3333340000000, %4041
  %4176 = fmul fast float %4175, 0x400AAAAAA0000000
  %4177 = call float @dx.op.unary.f32(i32 7, float %4176)  ; Saturate(value)
  %4178 = fmul fast float %4174, %4177
  %4179 = fmul fast float %4053, 0x3FEA2B8620000000
  %4180 = fmul fast float %4054, 0x3FEA2B8620000000
  %4181 = fmul fast float %4055, 0x3FEA2B8620000000
  %4182 = fadd fast float %4179, 0x3FC81DFBA0000000
  %4183 = fmul fast float %4182, %4053
  %4184 = fadd fast float %4183, 0x3F910E6020000000
  %4185 = fadd fast float %4180, 0x3FC81DFBA0000000
  %4186 = fmul fast float %4185, %4054
  %4187 = fadd fast float %4186, 0x3F910E6020000000
  %4188 = fadd fast float %4181, 0x3FC81DFBA0000000
  %4189 = fmul fast float %4188, %4055
  %4190 = fadd fast float %4189, 0x3F910E6020000000
  %4191 = call float @dx.op.unary.f32(i32 7, float %4184)  ; Saturate(value)
  %4192 = call float @dx.op.unary.f32(i32 7, float %4187)  ; Saturate(value)
  %4193 = call float @dx.op.unary.f32(i32 7, float %4190)  ; Saturate(value)
  %4194 = fsub fast float %4191, %4053
  %4195 = fsub fast float %4192, %4054
  %4196 = fsub fast float %4193, %4055
  %4197 = fmul fast float %4194, %4167
  %4198 = fmul fast float %4197, %4178
  %4199 = fmul fast float %4195, %4167
  %4200 = fmul fast float %4199, %4178
  %4201 = fmul fast float %4196, %4167
  %4202 = fmul fast float %4201, %4178
  %4203 = fadd fast float %4198, %4053
  %4204 = fadd fast float %4200, %4054
  %4205 = fadd fast float %4202, %4055
  %4206 = fmul fast float %4013, %4013
  %4207 = fmul fast float %4206, %4206
  %4208 = fadd fast float %4163, 1.000000e+00
  %4209 = fsub fast float %4208, %4178
  %4210 = call float @dx.op.unary.f32(i32 7, float %4209)  ; Saturate(value)
  %4211 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4212 = call float @dx.op.unary.f32(i32 7, float %4211)  ; Saturate(value)
  %4213 = fsub fast float 1.000000e+00, %4207
  %4214 = call float @dx.op.binary.f32(i32 36, float %4210, float %4213)  ; FMin(a,b)
  %4215 = call float @dx.op.unary.f32(i32 7, float %4166)  ; Saturate(value)
  %4216 = call float @dx.op.binary.f32(i32 35, float %4214, float %4215)  ; FMax(a,b)
  %4217 = fadd fast float %4212, 0xBFE4CCCCC0000000
  %4218 = fmul fast float %4217, 0x4006DB6DA0000000
  %4219 = call float @dx.op.unary.f32(i32 7, float %4218)  ; Saturate(value)
  %4220 = fmul fast float %4219, 2.000000e+00
  %4221 = fsub fast float 3.000000e+00, %4220
  %4222 = bitcast float %4038 to i32
  %4223 = ashr i32 %4222, 1
  %4224 = add nsw i32 %4223, 532487669
  %4225 = bitcast i32 %4224 to float
  %4226 = fsub fast float 1.000000e+00, %4225
  %4227 = bitcast float %4226 to i32
  %4228 = sub nsw i32 2129859010, %4227
  %4229 = bitcast i32 %4228 to float
  %4230 = fmul fast float %4229, 2.000000e+00
  %4231 = bitcast float %4039 to i32
  %4232 = ashr i32 %4231, 1
  %4233 = add nsw i32 %4232, 532487669
  %4234 = bitcast i32 %4233 to float
  %4235 = fsub fast float 1.000000e+00, %4234
  %4236 = bitcast float %4235 to i32
  %4237 = sub nsw i32 2129859010, %4236
  %4238 = bitcast i32 %4237 to float
  %4239 = fmul fast float %4238, 2.000000e+00
  %4240 = bitcast float %4040 to i32
  %4241 = ashr i32 %4240, 1
  %4242 = add nsw i32 %4241, 532487669
  %4243 = bitcast i32 %4242 to float
  %4244 = fsub fast float 1.000000e+00, %4243
  %4245 = bitcast float %4244 to i32
  %4246 = sub nsw i32 2129859010, %4245
  %4247 = bitcast i32 %4246 to float
  %4248 = fmul fast float %4247, 2.000000e+00
  %4249 = fsub fast float 0x4002A9FBE0000000, %4230
  %4250 = fadd fast float %4230, 0x3FD54FDF00000000
  %4251 = bitcast float %4250 to i32
  %4252 = sub nsw i32 2129859010, %4251
  %4253 = bitcast i32 %4252 to float
  %4254 = fmul fast float %4253, %4249
  %4255 = fmul fast float %4254, %4254
  %4256 = fsub fast float 0x4002A9FBE0000000, %4239
  %4257 = fadd fast float %4239, 0x3FD54FDF00000000
  %4258 = bitcast float %4257 to i32
  %4259 = sub nsw i32 2129859010, %4258
  %4260 = bitcast i32 %4259 to float
  %4261 = fmul fast float %4260, %4256
  %4262 = fmul fast float %4261, %4261
  %4263 = fsub fast float 0x4002A9FBE0000000, %4248
  %4264 = fadd fast float %4248, 0x3FD54FDF00000000
  %4265 = bitcast float %4264 to i32
  %4266 = sub nsw i32 2129859010, %4265
  %4267 = bitcast i32 %4266 to float
  %4268 = fmul fast float %4267, %4263
  %4269 = fmul fast float %4268, %4268
  %4270 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4255)  ; FMax(a,b)
  %4271 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4262)  ; FMax(a,b)
  %4272 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4269)  ; FMax(a,b)
  %4273 = fsub fast float 1.000000e+00, %4158
  %4274 = fadd fast float %4273, %4174
  %4275 = call float @dx.op.unary.f32(i32 7, float %4274)  ; Saturate(value)
  %4276 = fsub fast float 1.000000e+00, %4138
  %4277 = fmul fast float %4216, %4276
  %4278 = fmul fast float %4219, %4219
  %4279 = fmul fast float %4278, %4277
  %4280 = fmul fast float %4279, %4221
  %4281 = fmul fast float %4276, 0xBFE99999A0000000
  %4282 = fmul fast float %4281, %4167
  %4283 = fmul fast float %4282, %4178
  %4284 = fadd fast float %4283, 1.000000e+00
  %4285 = fadd fast float %4041, -1.000000e+00
  %4286 = fmul fast float %4284, %4285
  %4287 = fadd fast float %4286, 1.000000e+00
  %4288 = fsub fast float %4270, %4038
  %4289 = fsub fast float %4271, %4039
  %4290 = fsub fast float %4272, %4040
  %4291 = fmul fast float %4280, %4288
  %4292 = fmul fast float %4280, %4289
  %4293 = fmul fast float %4280, %4290
  %4294 = fadd fast float %4291, %4038
  %4295 = fadd fast float %4292, %4039
  %4296 = fadd fast float %4293, %4040
  %4297 = fsub fast float %74, %4001
  %4298 = fsub fast float %75, %4002
  %4299 = fsub fast float %76, %4003
  %4300 = fmul fast float %4280, %4297
  %4301 = fmul fast float %4280, %4298
  %4302 = fmul fast float %4280, %4299
  %4303 = fadd fast float %4300, %4001
  %4304 = fadd fast float %4301, %4002
  %4305 = fadd fast float %4302, %4003
  %4306 = fmul fast float %4280, %4275
  %4307 = call float @dx.op.unary.f32(i32 7, float %4287)  ; Saturate(value)
  %4308 = fsub fast float 1.000000e+00, %4307
  %4309 = fmul fast float %4306, %4308
  %4310 = fadd fast float %4309, %4307
  %4311 = fsub fast float 1.000000e+00, %4013
  %4312 = fmul fast float %4280, %4311
  %4313 = fadd fast float %4312, %4013
  %4314 = call float @dx.op.dot3.f32(i32 55, float %4303, float %4304, float %4305, float %4303, float %4304, float %4305)  ; Dot3(ax,ay,az,bx,by,bz)
  %4315 = call float @dx.op.unary.f32(i32 25, float %4314)  ; Rsqrt(value)
  %4316 = fmul fast float %4303, %4315
  %4317 = fmul fast float %4304, %4315
  %4318 = fmul fast float %4305, %4315
  br label %4319

; <label>:4319                                    ; preds = %4151, %4144
  %4320 = phi float [ %4150, %4144 ], [ %4157, %4151 ]
  %4321 = phi float [ %4149, %4144 ], [ %4155, %4151 ]
  %4322 = phi float [ %4148, %4144 ], [ %4153, %4151 ]
  %4323 = phi float [ %4147, %4144 ], [ %4156, %4151 ]
  %4324 = phi float [ %4146, %4144 ], [ %4154, %4151 ]
  %4325 = phi float [ %4145, %4144 ], [ %4152, %4151 ]
  %4326 = phi float [ %4053, %4144 ], [ %4203, %4151 ]
  %4327 = phi float [ %4054, %4144 ], [ %4204, %4151 ]
  %4328 = phi float [ %4055, %4144 ], [ %4205, %4151 ]
  %4329 = phi float [ %4038, %4144 ], [ %4294, %4151 ]
  %4330 = phi float [ %4039, %4144 ], [ %4295, %4151 ]
  %4331 = phi float [ %4040, %4144 ], [ %4296, %4151 ]
  %4332 = phi float [ %4001, %4144 ], [ %4316, %4151 ]
  %4333 = phi float [ %4002, %4144 ], [ %4317, %4151 ]
  %4334 = phi float [ %4003, %4144 ], [ %4318, %4151 ]
  %4335 = phi float [ %4041, %4144 ], [ %4310, %4151 ]
  %4336 = phi float [ %4013, %4144 ], [ %4313, %4151 ]
  %4337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4338 = extractvalue %dx.types.CBufRet.f32 %4337, 2
  %4339 = extractvalue %dx.types.CBufRet.f32 %4337, 3
  %4340 = fmul fast float %4338, %67
  %4341 = fmul fast float %4339, %68
  %4342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4343 = extractvalue %dx.types.CBufRet.f32 %4342, 0
  %4344 = extractvalue %dx.types.CBufRet.f32 %4342, 1
  %4345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %28, float %4340, float %4341, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4346 = extractvalue %dx.types.ResRet.f32 %4345, 0
  %4347 = fmul fast float %4346, %4344
  %4348 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  %4349 = fadd fast float %4348, -1.000000e+00
  %4350 = fmul fast float %4349, %4343
  %4351 = fadd fast float %4350, 1.000000e+00
  %4352 = select i1 %171, float 0.000000e+00, float %4331
  %4353 = call float @dx.op.dot3.f32(i32 55, float %4332, float %4333, float %4334, float %4322, float %4321, float %4320)  ; Dot3(ax,ay,az,bx,by,bz)
  %4354 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4355 = call float @dx.op.dot3.f32(i32 55, float %4325, float %4324, float %4323, float %4332, float %4333, float %4334)  ; Dot3(ax,ay,az,bx,by,bz)
  %4356 = fmul fast float %4355, 2.000000e+00
  %4357 = fmul fast float %4356, %4332
  %4358 = fmul fast float %4356, %4333
  %4359 = fmul fast float %4356, %4334
  %4360 = fsub fast float %4325, %4357
  %4361 = fsub fast float %4324, %4358
  %4362 = fsub fast float %4323, %4359
  %4363 = call float @dx.op.binary.f32(i32 36, float %4336, float %4351)  ; FMin(a,b)
  %4364 = fsub fast float 1.000000e+00, %4363
  %4365 = bitcast float %4364 to i32
  %4366 = ashr i32 %4365, 1
  %4367 = add nsw i32 %4366, 532487669
  %4368 = bitcast i32 %4367 to float
  %4369 = fsub fast float 1.000000e+00, %4335
  %4370 = call float @dx.op.binary.f32(i32 35, float %4369, float 0x3F847AE140000000)  ; FMax(a,b)
  %4371 = fmul fast float %4370, %4370
  %4372 = fmul fast float %4371, %4371
  %4373 = call float @dx.op.unary.f32(i32 7, float %4354)  ; Saturate(value)
  %4374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %28, float %4368, float %4372, float %4373, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4375 = extractvalue %dx.types.ResRet.f32 %4374, 0
  %4376 = fsub fast float 1.000000e+00, %4336
  %4377 = bitcast float %4376 to i32
  %4378 = sub nsw i32 2129859010, %4377
  %4379 = bitcast i32 %4378 to float
  %4380 = fsub fast float 1.000000e+00, %44
  %4381 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4382 = call float @dx.op.binary.f32(i32 35, float %4381, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4383 = fdiv fast float %4380, %4382
  %4384 = call float @dx.op.dot3.f32(i32 55, float %4332, float %4333, float %4334, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4385 = call float @dx.op.unary.f32(i32 7, float %4384)  ; Saturate(value)
  %4386 = fmul fast float %4385, 5.000000e-01
  %4387 = fadd fast float %4386, 5.000000e-01
  %4388 = fmul fast float %4387, %44
  %4389 = call float @dx.op.dot3.f32(i32 55, float %4332, float %4333, float %4334, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4390 = call float @dx.op.unary.f32(i32 7, float %4389)  ; Saturate(value)
  %4391 = fmul fast float %4390, %4383
  %4392 = fadd fast float %4388, %4391
  %4393 = fsub fast float 5.000000e-01, %4386
  %4394 = fmul fast float %4393, %4326
  %4395 = fmul fast float %4393, %4327
  %4396 = fmul fast float %4393, %4328
  %4397 = fadd fast float %4392, %4394
  %4398 = fadd fast float %4392, %4395
  %4399 = fadd fast float %4392, %4396
  %4400 = call float @dx.op.dot3.f32(i32 55, float %4360, float %4361, float %4362, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4401 = call float @dx.op.unary.f32(i32 7, float %4400)  ; Saturate(value)
  %4402 = fmul fast float %4401, 5.000000e-01
  %4403 = fadd fast float %4402, 5.000000e-01
  %4404 = fmul fast float %4403, %44
  %4405 = call float @dx.op.dot3.f32(i32 55, float %4360, float %4361, float %4362, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4406 = call float @dx.op.unary.f32(i32 7, float %4405)  ; Saturate(value)
  %4407 = fmul fast float %4406, %4383
  %4408 = fadd fast float %4404, %4407
  %4409 = fsub fast float 5.000000e-01, %4402
  %4410 = fmul fast float %4409, %4326
  %4411 = fmul fast float %4409, %4327
  %4412 = fmul fast float %4409, %4328
  %4413 = fadd fast float %4408, %4410
  %4414 = fadd fast float %4408, %4411
  %4415 = fadd fast float %4408, %4412
  %4416 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4418 = extractvalue %dx.types.CBufRet.f32 %4417, 0
  %4419 = call float @dx.op.binary.f32(i32 36, float %4326, float %4418)  ; FMin(a,b)
  %4420 = fmul fast float %4419, %4364
  %4421 = fsub fast float 1.000000e+00, %4420
  %4422 = bitcast float %4421 to i32
  %4423 = sub nsw i32 2129859010, %4422
  %4424 = bitcast i32 %4423 to float
  %4425 = call float @dx.op.binary.f32(i32 36, float %4327, float %4418)  ; FMin(a,b)
  %4426 = fmul fast float %4425, %4364
  %4427 = fsub fast float 1.000000e+00, %4426
  %4428 = bitcast float %4427 to i32
  %4429 = sub nsw i32 2129859010, %4428
  %4430 = bitcast i32 %4429 to float
  %4431 = call float @dx.op.binary.f32(i32 36, float %4328, float %4418)  ; FMin(a,b)
  %4432 = fmul fast float %4431, %4364
  %4433 = fsub fast float 1.000000e+00, %4432
  %4434 = bitcast float %4433 to i32
  %4435 = sub nsw i32 2129859010, %4434
  %4436 = bitcast i32 %4435 to float
  %4437 = fmul fast float %4363, %45
  %4438 = fmul fast float %4437, %4397
  %4439 = fmul fast float %4438, %4424
  %4440 = fmul fast float %4363, %46
  %4441 = fmul fast float %4440, %4398
  %4442 = fmul fast float %4441, %4430
  %4443 = fmul fast float %4363, %47
  %4444 = fmul fast float %4443, %4399
  %4445 = fmul fast float %4444, %4436
  %4446 = call float @dx.op.binary.f32(i32 36, float %4329, float %4418)  ; FMin(a,b)
  %4447 = fmul fast float %4446, %4364
  %4448 = fsub fast float 1.000000e+00, %4447
  %4449 = bitcast float %4448 to i32
  %4450 = sub nsw i32 2129859010, %4449
  %4451 = bitcast i32 %4450 to float
  %4452 = call float @dx.op.binary.f32(i32 36, float %4330, float %4418)  ; FMin(a,b)
  %4453 = fmul fast float %4452, %4364
  %4454 = fsub fast float 1.000000e+00, %4453
  %4455 = bitcast float %4454 to i32
  %4456 = sub nsw i32 2129859010, %4455
  %4457 = bitcast i32 %4456 to float
  %4458 = call float @dx.op.binary.f32(i32 36, float %4352, float %4418)  ; FMin(a,b)
  %4459 = fmul fast float %4458, %4364
  %4460 = fsub fast float 1.000000e+00, %4459
  %4461 = bitcast float %4460 to i32
  %4462 = sub nsw i32 2129859010, %4461
  %4463 = bitcast i32 %4462 to float
  %4464 = fmul fast float %4437, %4413
  %4465 = fmul fast float %4464, %4451
  %4466 = fmul fast float %4440, %4414
  %4467 = fmul fast float %4466, %4457
  %4468 = fmul fast float %4443, %4415
  %4469 = fmul fast float %4468, %4463
  %4470 = call float @dx.op.dot3.f32(i32 55, float %4439, float %4442, float %4445, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4471 = select i1 %171, float 0.000000e+00, float %4439
  %4472 = select i1 %171, float %4470, float %4442
  %4473 = select i1 %171, float 0.000000e+00, float %4445
  %4474 = call float @dx.op.dot3.f32(i32 55, float %4465, float %4467, float %4469, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4475 = select i1 %171, float 0.000000e+00, float %4465
  %4476 = select i1 %171, float %4474, float %4467
  %4477 = select i1 %171, float 0.000000e+00, float %4469
  %4478 = fmul fast float %4354, 9.843750e-01
  %4479 = fmul fast float %4335, 9.843750e-01
  %4480 = fadd fast float %4478, 7.812500e-03
  %4481 = fadd fast float %4479, 7.812500e-03
  %4482 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %4480, float %4481, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4483 = extractvalue %dx.types.ResRet.f32 %4482, 2
  %4484 = extractvalue %dx.types.ResRet.f32 %4482, 3
  %4485 = fmul fast float %4483, %4329
  %4486 = fmul fast float %4483, %4330
  %4487 = fmul fast float %4483, %4352
  %4488 = fadd fast float %4485, %4484
  %4489 = fadd fast float %4486, %4484
  %4490 = fadd fast float %4487, %4484
  %4491 = fcmp fast ogt float %4014, 0.000000e+00
  br i1 %4491, label %4492, label %4518

; <label>:4492                                    ; preds = %4319
  %4493 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4014, float %4354, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4494 = extractvalue %dx.types.ResRet.f32 %4493, 0
  %4495 = extractvalue %dx.types.ResRet.f32 %4493, 1
  %4496 = extractvalue %dx.types.ResRet.f32 %4493, 2
  %4497 = fadd fast float %4494, -5.000000e-01
  %4498 = fadd fast float %4495, -5.000000e-01
  %4499 = fadd fast float %4496, -5.000000e-01
  %4500 = fsub fast float 1.000000e+00, %4329
  %4501 = fsub fast float 1.000000e+00, %4330
  %4502 = fsub fast float 1.000000e+00, %4352
  %4503 = fmul fast float %4329, 4.000000e+00
  %4504 = fmul fast float %4503, %4500
  %4505 = fmul fast float %4504, %4497
  %4506 = fmul fast float %4330, 4.000000e+00
  %4507 = fmul fast float %4506, %4501
  %4508 = fmul fast float %4507, %4498
  %4509 = fmul fast float %4352, 4.000000e+00
  %4510 = fmul fast float %4509, %4502
  %4511 = fmul fast float %4510, %4499
  %4512 = fadd fast float %4505, %4488
  %4513 = fadd fast float %4508, %4489
  %4514 = fadd fast float %4511, %4490
  %4515 = call float @dx.op.unary.f32(i32 7, float %4512)  ; Saturate(value)
  %4516 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4517 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  br label %4518

; <label>:4518                                    ; preds = %4492, %4319
  %4519 = phi float [ %4515, %4492 ], [ %4488, %4319 ]
  %4520 = phi float [ %4516, %4492 ], [ %4489, %4319 ]
  %4521 = phi float [ %4517, %4492 ], [ %4490, %4319 ]
  %4522 = call float @dx.op.binary.f32(i32 35, float %4520, float %4521)  ; FMax(a,b)
  %4523 = call float @dx.op.binary.f32(i32 35, float %4519, float %4522)  ; FMax(a,b)
  %4524 = fsub fast float 1.000000e+00, %4523
  %4525 = fmul fast float %4523, %4335
  %4526 = fadd fast float %4525, %4335
  %4527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4528 = extractvalue %dx.types.CBufRet.f32 %4527, 0
  %4529 = extractvalue %dx.types.CBufRet.f32 %4527, 1
  %4530 = extractvalue %dx.types.CBufRet.f32 %4527, 2
  %4531 = extractvalue %dx.types.CBufRet.f32 %4527, 3
  %4532 = fmul fast float %4526, %4528
  %4533 = fadd fast float %4532, %4529
  %4534 = call float @dx.op.unary.f32(i32 7, float %4533)  ; Saturate(value)
  %4535 = fmul fast float %4530, %4526
  %4536 = fadd fast float %4535, %4531
  %4537 = call float @dx.op.unary.f32(i32 7, float %4536)  ; Saturate(value)
  %4538 = fsub fast float 1.000000e+00, %4375
  %4539 = fadd fast float %4538, %4537
  %4540 = call float @dx.op.unary.f32(i32 7, float %4539)  ; Saturate(value)
  %4541 = fcmp fast olt float %4540, 1.000000e+00
  br i1 %4541, label %4542, label %5360

; <label>:4542                                    ; preds = %4518
  %4543 = fcmp fast olt float %4534, 1.000000e+00
  %4544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.f32 %4544, 0
  %4546 = fcmp fast ogt float %4545, 0.000000e+00
  %4547 = or i1 %4543, %4546
  %4548 = or i1 %4543, %4546
  %4549 = xor i1 %4548, true
  %4550 = zext i1 %4549 to i32
  br i1 %4547, label %4551, label %4794

; <label>:4551                                    ; preds = %4542
  %4552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4553 = extractvalue %dx.types.CBufRet.f32 %4552, 0
  %4554 = extractvalue %dx.types.CBufRet.f32 %4552, 1
  %4555 = extractvalue %dx.types.CBufRet.f32 %4552, 2
  %4556 = extractvalue %dx.types.CBufRet.f32 %4552, 3
  %4557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4558 = extractvalue %dx.types.CBufRet.f32 %4557, 0
  %4559 = extractvalue %dx.types.CBufRet.f32 %4557, 1
  %4560 = extractvalue %dx.types.CBufRet.f32 %4557, 2
  %4561 = extractvalue %dx.types.CBufRet.f32 %4557, 3
  %4562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4563 = extractvalue %dx.types.CBufRet.f32 %4562, 0
  %4564 = extractvalue %dx.types.CBufRet.f32 %4562, 1
  %4565 = extractvalue %dx.types.CBufRet.f32 %4562, 2
  %4566 = extractvalue %dx.types.CBufRet.f32 %4562, 3
  %4567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4568 = extractvalue %dx.types.CBufRet.f32 %4567, 0
  %4569 = extractvalue %dx.types.CBufRet.f32 %4567, 1
  %4570 = extractvalue %dx.types.CBufRet.f32 %4567, 2
  %4571 = extractvalue %dx.types.CBufRet.f32 %4567, 3
  %4572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4573 = extractvalue %dx.types.CBufRet.f32 %4572, 0
  %4574 = extractvalue %dx.types.CBufRet.f32 %4572, 1
  %4575 = extractvalue %dx.types.CBufRet.f32 %4572, 2
  %4576 = extractvalue %dx.types.CBufRet.f32 %4572, 3
  %4577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4578 = extractvalue %dx.types.CBufRet.f32 %4577, 0
  %4579 = extractvalue %dx.types.CBufRet.f32 %4577, 1
  %4580 = extractvalue %dx.types.CBufRet.f32 %4577, 2
  %4581 = extractvalue %dx.types.CBufRet.f32 %4577, 3
  %4582 = call float @dx.op.dot3.f32(i32 55, float %4578, float %4579, float %4580, float %4360, float %4361, float %4362)  ; Dot3(ax,ay,az,bx,by,bz)
  %4583 = call float @dx.op.dot3.f32(i32 55, float %4332, float %4333, float %4334, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4584 = call float @dx.op.unary.f32(i32 6, float %4583)  ; FAbs(value)
  %4585 = fmul fast float %4584, 8.000000e+00
  %4586 = fadd fast float %4585, -6.000000e+00
  %4587 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4588 = fmul fast float %4582, 8.000000e+00
  %4589 = fmul fast float %4588, %4545
  %4590 = call float @dx.op.unary.f32(i32 7, float %4589)  ; Saturate(value)
  %4591 = fcmp fast ogt float %4590, 0.000000e+00
  br i1 %4591, label %4592, label %4769, !dx.controlflow.hints !69

; <label>:4592                                    ; preds = %4551
  %4593 = extractvalue %dx.types.CBufRet.f32 %4544, 1
  %4594 = extractvalue %dx.types.CBufRet.f32 %4544, 2
  %4595 = fsub fast float %4593, %4594
  %4596 = fmul fast float %4595, %4335
  %4597 = fadd fast float %4596, %4594
  %4598 = fmul fast float %184, 2.000000e+00
  %4599 = fmul fast float %185, 2.000000e+00
  %4600 = fadd fast float %4598, -1.000000e+00
  %4601 = fadd fast float %4599, -1.000000e+00
  %4602 = fmul fast float %4597, %4600
  %4603 = fmul fast float %4597, %4601
  %4604 = fadd fast float %4602, %67
  %4605 = fadd fast float %4603, %68
  %4606 = fmul fast float %4604, %4338
  %4607 = fmul fast float %4605, %4339
  %4608 = fadd fast float %4335, 0xBFE3333340000000
  %4609 = fmul fast float %4608, 0x4004000020000000
  %4610 = fsub fast float 1.000000e+00, %4609
  %4611 = call float @dx.op.unary.f32(i32 7, float %4610)  ; Saturate(value)
  %4612 = fmul fast float %4611, 3.000000e+00
  %4613 = fadd fast float %4612, %184
  %4614 = call float @dx.op.unary.f32(i32 27, float %4613)  ; Round_ni(value)
  %4615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %29, float %4606, float %4607, float %4614, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4616 = extractvalue %dx.types.ResRet.f32 %4615, 0
  %4617 = fcmp fast une float %4616, 0xFFF0000000000000
  %4618 = fcmp fast une float %4616, 0x7FF0000000000000
  %4619 = and i1 %4617, %4618
  %4620 = fcmp fast olt float %4616, 0.000000e+00
  %4621 = call float @dx.op.unary.f32(i32 6, float %4616)  ; FAbs(value)
  %4622 = fsub fast float 1.000000e+00, %4621
  %4623 = select i1 %4619, float 1.000000e+00, float 0.000000e+00
  %4624 = fmul fast float %4623, %4590
  %4625 = fcmp fast ogt float %4624, 0.000000e+00
  br i1 %4625, label %4626, label %4769, !dx.controlflow.hints !70

; <label>:4626                                    ; preds = %4592
  %4627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4628 = extractvalue %dx.types.CBufRet.f32 %4627, 0
  %4629 = extractvalue %dx.types.CBufRet.f32 %4627, 1
  %4630 = extractvalue %dx.types.CBufRet.f32 %4627, 2
  %4631 = select i1 %4620, float 0.000000e+00, float %4628
  %4632 = select i1 %4620, float 0.000000e+00, float %4629
  %4633 = select i1 %4620, float 0.000000e+00, float %4630
  %4634 = select i1 %4620, float %4553, float %4568
  %4635 = select i1 %4620, float %4558, float %4573
  %4636 = select i1 %4620, float %4563, float %4578
  %4637 = select i1 %4620, float %4554, float %4569
  %4638 = select i1 %4620, float %4559, float %4574
  %4639 = select i1 %4620, float %4564, float %4579
  %4640 = select i1 %4620, float %4555, float %4570
  %4641 = select i1 %4620, float %4560, float %4575
  %4642 = select i1 %4620, float %4565, float %4580
  %4643 = select i1 %4620, float %4556, float %4571
  %4644 = select i1 %4620, float %4561, float %4576
  %4645 = select i1 %4620, float %4566, float %4581
  %4646 = fadd fast float %4631, %130
  %4647 = fadd fast float %4632, %131
  %4648 = fadd fast float %4633, %132
  %4649 = fmul fast float %4646, %4634
  %4650 = call float @dx.op.tertiary.f32(i32 46, float %4647, float %4637, float %4649)  ; FMad(a,b,c)
  %4651 = call float @dx.op.tertiary.f32(i32 46, float %4648, float %4640, float %4650)  ; FMad(a,b,c)
  %4652 = fadd fast float %4651, %4643
  %4653 = fmul fast float %4646, %4635
  %4654 = call float @dx.op.tertiary.f32(i32 46, float %4647, float %4638, float %4653)  ; FMad(a,b,c)
  %4655 = call float @dx.op.tertiary.f32(i32 46, float %4648, float %4641, float %4654)  ; FMad(a,b,c)
  %4656 = fadd fast float %4655, %4644
  %4657 = fmul fast float %4646, %4636
  %4658 = call float @dx.op.tertiary.f32(i32 46, float %4647, float %4639, float %4657)  ; FMad(a,b,c)
  %4659 = call float @dx.op.tertiary.f32(i32 46, float %4648, float %4642, float %4658)  ; FMad(a,b,c)
  %4660 = fadd fast float %4659, %4645
  %4661 = fdiv fast float 1.000000e+00, %4660
  %4662 = fmul fast float %4661, %4652
  %4663 = fmul fast float %4661, %4656
  %4664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4665 = extractvalue %dx.types.CBufRet.f32 %4664, 0
  %4666 = extractvalue %dx.types.CBufRet.f32 %4664, 1
  %4667 = fmul fast float %4662, %4665
  %4668 = fmul fast float %4663, %4666
  %4669 = extractvalue %dx.types.CBufRet.f32 %4664, 2
  %4670 = extractvalue %dx.types.CBufRet.f32 %4664, 3
  %4671 = fadd fast float %4667, %4669
  %4672 = fadd fast float %4668, %4670
  %4673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4674 = extractvalue %dx.types.CBufRet.f32 %4673, 3
  %4675 = fmul fast float %4674, %4360
  %4676 = fmul fast float %4674, %4361
  %4677 = fmul fast float %4674, %4362
  %4678 = fadd fast float %4675, %4646
  %4679 = fadd fast float %4676, %4647
  %4680 = fadd fast float %4677, %4648
  %4681 = fmul fast float %4678, %4634
  %4682 = call float @dx.op.tertiary.f32(i32 46, float %4679, float %4637, float %4681)  ; FMad(a,b,c)
  %4683 = call float @dx.op.tertiary.f32(i32 46, float %4680, float %4640, float %4682)  ; FMad(a,b,c)
  %4684 = fadd fast float %4683, %4643
  %4685 = fmul fast float %4678, %4635
  %4686 = call float @dx.op.tertiary.f32(i32 46, float %4679, float %4638, float %4685)  ; FMad(a,b,c)
  %4687 = call float @dx.op.tertiary.f32(i32 46, float %4680, float %4641, float %4686)  ; FMad(a,b,c)
  %4688 = fadd fast float %4687, %4644
  %4689 = fmul fast float %4678, %4636
  %4690 = call float @dx.op.tertiary.f32(i32 46, float %4679, float %4639, float %4689)  ; FMad(a,b,c)
  %4691 = call float @dx.op.tertiary.f32(i32 46, float %4680, float %4642, float %4690)  ; FMad(a,b,c)
  %4692 = fadd fast float %4691, %4645
  %4693 = fdiv fast float 1.000000e+00, %4692
  %4694 = fmul fast float %4693, %4684
  %4695 = fmul fast float %4693, %4688
  %4696 = fmul fast float %4671, 2.000000e+00
  %4697 = fadd fast float %4696, -1.000000e+00
  %4698 = call float @dx.op.unary.f32(i32 6, float %4697)  ; FAbs(value)
  %4699 = fmul fast float %4698, 5.000000e+00
  %4700 = fadd fast float %4699, -4.000000e+00
  %4701 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4702 = fmul fast float %4701, %4587
  %4703 = fsub fast float %4662, %4694
  %4704 = fmul fast float %4665, %4703
  %4705 = fmul fast float %4702, %4704
  %4706 = fsub fast float %4694, %4662
  %4707 = fmul fast float %4665, %4706
  %4708 = fadd fast float %4707, %4705
  %4709 = fsub fast float %4695, %4663
  %4710 = fmul fast float %4666, %4709
  %4711 = fmul fast float %4708, %4622
  %4712 = fmul fast float %4710, %4622
  %4713 = fadd fast float %4711, %4671
  %4714 = fadd fast float %4712, %4672
  %4715 = fsub fast float %4693, %4661
  %4716 = fmul fast float %4715, %4622
  %4717 = fadd fast float %4716, %4661
  %4718 = fdiv fast float 1.000000e+00, %4717
  %4719 = fadd fast float %4335, -1.000000e+00
  %4720 = fsub fast float %4718, %4660
  %4721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %4722 = extractvalue %dx.types.CBufRet.f32 %4721, 2
  %4723 = fmul fast float %4722, %4718
  %4724 = fdiv fast float 1.600000e+02, %4723
  %4725 = fmul fast float %4719, %4719
  %4726 = fmul fast float %4725, 0xBFB5B17960000000
  %4727 = fmul fast float %4726, %4720
  %4728 = fmul fast float %4727, %4724
  %4729 = call float @dx.op.unary.f32(i32 21, float %4728)  ; Exp(value)
  %4730 = fmul fast float %4729, 0x3FF04B2960000000
  %4731 = fsub fast float 0x3FF04B2960000000, %4730
  %4732 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4733 = fmul fast float %4732, 4.000000e+00
  %4734 = fadd fast float %184, -5.000000e-01
  %4735 = fadd fast float %185, -5.000000e-01
  %4736 = fmul fast float %4732, 0x3FBEB851E0000000
  %4737 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4738 = fmul fast float %4737, %4734
  %4739 = fmul fast float %4737, %4735
  %4740 = fadd fast float %4713, %4738
  %4741 = fadd fast float %4714, %4739
  %4742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %4740, float %4741, float undef, float undef, i32 0, i32 0, i32 undef, float %4733)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4743 = extractvalue %dx.types.ResRet.f32 %4742, 0
  %4744 = extractvalue %dx.types.ResRet.f32 %4742, 1
  %4745 = extractvalue %dx.types.ResRet.f32 %4742, 2
  %4746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4747 = extractvalue %dx.types.CBufRet.f32 %4746, 2
  %4748 = fmul fast float %4747, %4743
  %4749 = fmul fast float %4747, %4744
  %4750 = fmul fast float %4747, %4745
  %4751 = select i1 %171, float 0.000000e+00, float %4749
  %4752 = select i1 %171, float 0.000000e+00, float %4750
  %4753 = fmul fast float %4740, 2.000000e+00
  %4754 = fmul fast float %4741, 2.000000e+00
  %4755 = fadd fast float %4753, -1.000000e+00
  %4756 = fadd fast float %4754, -1.000000e+00
  %4757 = fmul fast float %4755, %4755
  %4758 = fsub fast float 1.000000e+00, %4757
  %4759 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  %4760 = fsub fast float 1.000000e+00, %4759
  %4761 = fmul fast float %4760, %4587
  %4762 = fadd fast float %4761, %4759
  %4763 = fmul fast float %4756, %4756
  %4764 = fsub fast float 1.000000e+00, %4763
  %4765 = call float @dx.op.unary.f32(i32 7, float %4764)  ; Saturate(value)
  %4766 = fmul fast float %4762, %4765
  %4767 = call float @dx.op.unary.f32(i32 7, float %4766)  ; Saturate(value)
  %4768 = fmul fast float %4767, %4624
  br label %4769

; <label>:4769                                    ; preds = %4626, %4592, %4551
  %4770 = phi float [ %4748, %4626 ], [ 0.000000e+00, %4592 ], [ 0.000000e+00, %4551 ]
  %4771 = phi float [ %4751, %4626 ], [ 0.000000e+00, %4592 ], [ 0.000000e+00, %4551 ]
  %4772 = phi float [ %4752, %4626 ], [ 0.000000e+00, %4592 ], [ 0.000000e+00, %4551 ]
  %4773 = phi float [ %4768, %4626 ], [ 0.000000e+00, %4592 ], [ 0.000000e+00, %4551 ]
  %4774 = fcmp fast olt float %4773, 1.000000e+00
  %4775 = or i1 %4774, %4549
  %4776 = zext i1 %4775 to i32
  %4777 = fmul fast float %4773, %4534
  %4778 = fsub fast float %4773, %4777
  %4779 = fsub fast float 1.000000e+00, %4540
  %4780 = fmul fast float %4778, %4779
  %4781 = fadd fast float %4780, %4540
  %4782 = fsub fast float %4781, %4778
  %4783 = call float @dx.op.unary.f32(i32 7, float %4782)  ; Saturate(value)
  %4784 = fmul fast float %4783, %4475
  %4785 = fmul fast float %4783, %4476
  %4786 = fmul fast float %4783, %4477
  %4787 = fsub fast float -0.000000e+00, %4781
  %4788 = fmul fast float %4778, %4770
  %4789 = fmul fast float %4778, %4771
  %4790 = fmul fast float %4778, %4772
  %4791 = fadd fast float %4788, %4784
  %4792 = fadd fast float %4789, %4785
  %4793 = fadd fast float %4790, %4786
  br label %4794

; <label>:4794                                    ; preds = %4769, %4542
  %4795 = phi float [ %4540, %4542 ], [ %4787, %4769 ]
  %4796 = phi float [ %4475, %4542 ], [ %4791, %4769 ]
  %4797 = phi float [ %4476, %4542 ], [ %4792, %4769 ]
  %4798 = phi float [ %4477, %4542 ], [ %4793, %4769 ]
  %4799 = phi i32 [ %4550, %4542 ], [ %4776, %4769 ]
  %4800 = icmp eq i32 %4799, 0
  br i1 %4800, label %5360, label %4801

; <label>:4801                                    ; preds = %4794
  %4802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4803 = extractvalue %dx.types.CBufRet.f32 %4802, 2
  %4804 = extractvalue %dx.types.CBufRet.f32 %4802, 3
  %4805 = fmul fast float %4803, %67
  %4806 = fmul fast float %4804, %68
  %4807 = fptoui float %4805 to i32
  %4808 = fptoui float %4806 to i32
  %4809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4810 = extractvalue %dx.types.CBufRet.f32 %4809, 0
  %4811 = extractvalue %dx.types.CBufRet.f32 %4809, 2
  %4812 = extractvalue %dx.types.CBufRet.f32 %4809, 3
  %4813 = fadd fast float %62, -4.000000e+00
  %4814 = call float @dx.op.binary.f32(i32 35, float %4813, float 0.000000e+00)  ; FMax(a,b)
  %4815 = fadd fast float %4814, %4810
  %4816 = fmul fast float %4815, %4811
  %4817 = call float @dx.op.unary.f32(i32 23, float %4816)  ; Log(value)
  %4818 = fmul fast float %4817, %4812
  %4819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.f32 %4819, 2
  %4821 = fmul fast float %4818, %4820
  %4822 = call float @dx.op.unary.f32(i32 7, float %4821)  ; Saturate(value)
  %4823 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4824 = extractvalue %dx.types.CBufRet.i32 %4823, 1
  %4825 = add i32 %4824, -1
  %4826 = uitofp i32 %4824 to float
  %4827 = fmul fast float %4826, %4822
  %4828 = fptoui float %4827 to i32
  %4829 = call i32 @dx.op.binary.i32(i32 40, i32 %4828, i32 %4825)  ; UMin(a,b)
  %4830 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4831 = extractvalue %dx.types.CBufRet.i32 %4830, 2
  %4832 = extractvalue %dx.types.CBufRet.i32 %4830, 3
  %4833 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4808, i32 %4831, i32 %4807)  ; UMad(a,b,c)
  %4834 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4829, i32 %4832, i32 %4833)  ; UMad(a,b,c)
  %4835 = call float @dx.op.binary.f32(i32 35, float %62, float 0.000000e+00)  ; FMax(a,b)
  %4836 = fptoui float %4835 to i32
  %4837 = lshr i32 %4836, 5
  %4838 = call i32 @dx.op.binary.i32(i32 40, i32 %4837, i32 8191)  ; UMin(a,b)
  %4839 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4840 = extractvalue %dx.types.CBufRet.i32 %4839, 2
  %4841 = add nsw i32 %4840, -1
  %4842 = call i32 @dx.op.binary.i32(i32 37, i32 %4841, i32 0)  ; IMax(a,b)
  %4843 = shl i32 %4838, 2
  %4844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %4843, i32 undef)  ; BufferLoad(srv,index,wot)
  %4845 = extractvalue %dx.types.ResRet.i32 %4844, 0
  %4846 = lshr i32 %4845, 16
  %4847 = and i32 %4845, 65535
  %4848 = lshr i32 %4845, 21
  %4849 = lshr i32 %4847, 5
  %4850 = call i32 @dx.op.binary.i32(i32 40, i32 %4849, i32 %4842)  ; UMin(a,b)
  %4851 = icmp ugt i32 %4848, %4850
  br i1 %4851, label %5232, label %4852

; <label>:4852                                    ; preds = %4801
  br label %4853

; <label>:4853                                    ; preds = %5221, %4852
  %4854 = phi float [ %5222, %5221 ], [ 0.000000e+00, %4852 ]
  %4855 = phi float [ %5223, %5221 ], [ 0.000000e+00, %4852 ]
  %4856 = phi float [ %5224, %5221 ], [ 0.000000e+00, %4852 ]
  %4857 = phi float [ %5225, %5221 ], [ 1.000000e+00, %4852 ]
  %4858 = phi i32 [ %5229, %5221 ], [ %4848, %4852 ]
  %4859 = phi float [ %5226, %5221 ], [ 0.000000e+00, %4852 ]
  %4860 = phi float [ %5227, %5221 ], [ 0.000000e+00, %4852 ]
  %4861 = phi float [ %5228, %5221 ], [ 0.000000e+00, %4852 ]
  %4862 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4863 = extractvalue %dx.types.CBufRet.i32 %4862, 2
  %4864 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4834, i32 %4863, i32 %4858)  ; UMad(a,b,c)
  %4865 = shl i32 %4864, 2
  %4866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %4865, i32 undef)  ; BufferLoad(srv,index,wot)
  %4867 = extractvalue %dx.types.ResRet.i32 %4866, 0
  %4868 = shl i32 %4858, 5
  %4869 = sub nsw i32 %4846, %4868
  %4870 = call i32 @dx.op.binary.i32(i32 37, i32 %4869, i32 0)  ; IMax(a,b)
  %4871 = call i32 @dx.op.binary.i32(i32 38, i32 %4870, i32 31)  ; IMin(a,b)
  %4872 = sub nsw i32 1, %4846
  %4873 = add nsw i32 %4872, %4847
  %4874 = call i32 @dx.op.binary.i32(i32 37, i32 %4873, i32 0)  ; IMax(a,b)
  %4875 = call i32 @dx.op.binary.i32(i32 38, i32 %4874, i32 32)  ; IMin(a,b)
  %4876 = and i32 %4875, 31
  %4877 = shl i32 -1, %4876
  %4878 = xor i32 %4877, -1
  %4879 = and i32 %4871, 31
  %4880 = shl i32 %4878, %4879
  %4881 = icmp eq i32 %4875, 32
  %4882 = select i1 %4881, i32 -1, i32 %4880
  %4883 = and i32 %4882, %4867
  %4884 = icmp eq i32 %4883, 0
  br i1 %4884, label %5221, label %4885

; <label>:4885                                    ; preds = %4853
  br label %4886

; <label>:4886                                    ; preds = %4995, %4885
  %4887 = phi float [ %4996, %4995 ], [ %4854, %4885 ]
  %4888 = phi float [ %4997, %4995 ], [ %4855, %4885 ]
  %4889 = phi float [ %4998, %4995 ], [ %4856, %4885 ]
  %4890 = phi float [ %4999, %4995 ], [ %4857, %4885 ]
  %4891 = phi i32 [ %4899, %4995 ], [ %4883, %4885 ]
  %4892 = phi float [ %5000, %4995 ], [ %4859, %4885 ]
  %4893 = phi float [ %5001, %4995 ], [ %4860, %4885 ]
  %4894 = phi float [ %5002, %4995 ], [ %4861, %4885 ]
  %4895 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4891)  ; FirstbitLo(value)
  %4896 = add i32 %4895, %4868
  %4897 = and i32 %4895, 31
  %4898 = shl i32 1, %4897
  %4899 = xor i32 %4898, %4891
  %4900 = mul i32 %4896, 72
  %4901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4900, i32 undef)  ; BufferLoad(srv,index,wot)
  %4902 = extractvalue %dx.types.ResRet.f32 %4901, 0
  %4903 = extractvalue %dx.types.ResRet.f32 %4901, 1
  %4904 = extractvalue %dx.types.ResRet.f32 %4901, 2
  %4905 = add i32 %4900, 12
  %4906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4905, i32 undef)  ; BufferLoad(srv,index,wot)
  %4907 = extractvalue %dx.types.ResRet.i32 %4906, 0
  %4908 = add i32 %4900, 16
  %4909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4908, i32 undef)  ; BufferLoad(srv,index,wot)
  %4910 = extractvalue %dx.types.ResRet.f32 %4909, 0
  %4911 = extractvalue %dx.types.ResRet.f32 %4909, 1
  %4912 = extractvalue %dx.types.ResRet.f32 %4909, 2
  %4913 = add i32 %4900, 28
  %4914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4913, i32 undef)  ; BufferLoad(srv,index,wot)
  %4915 = extractvalue %dx.types.ResRet.f32 %4914, 0
  %4916 = add i32 %4900, 32
  %4917 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4916, i32 undef)  ; BufferLoad(srv,index,wot)
  %4918 = extractvalue %dx.types.ResRet.f32 %4917, 0
  %4919 = extractvalue %dx.types.ResRet.f32 %4917, 1
  %4920 = extractvalue %dx.types.ResRet.f32 %4917, 2
  %4921 = extractvalue %dx.types.ResRet.f32 %4917, 3
  %4922 = add i32 %4900, 48
  %4923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4922, i32 undef)  ; BufferLoad(srv,index,wot)
  %4924 = extractvalue %dx.types.ResRet.f32 %4923, 0
  %4925 = extractvalue %dx.types.ResRet.f32 %4923, 1
  %4926 = add i32 %4900, 56
  %4927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4926, i32 undef)  ; BufferLoad(srv,index,wot)
  %4928 = extractvalue %dx.types.ResRet.f32 %4927, 0
  %4929 = extractvalue %dx.types.ResRet.f32 %4927, 1
  %4930 = add i32 %4900, 64
  %4931 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4930, i32 undef)  ; BufferLoad(srv,index,wot)
  %4932 = extractvalue %dx.types.ResRet.f32 %4931, 0
  %4933 = extractvalue %dx.types.ResRet.f32 %4931, 1
  %4934 = mul i32 %4896, 60
  %4935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4934, i32 undef)  ; BufferLoad(srv,index,wot)
  %4936 = extractvalue %dx.types.ResRet.f32 %4935, 0
  %4937 = extractvalue %dx.types.ResRet.f32 %4935, 1
  %4938 = extractvalue %dx.types.ResRet.f32 %4935, 2
  %4939 = add i32 %4934, 12
  %4940 = add i32 %4934, 48
  %4941 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4940, i32 undef)  ; BufferLoad(srv,index,wot)
  %4942 = extractvalue %dx.types.ResRet.f32 %4941, 0
  %4943 = extractvalue %dx.types.ResRet.f32 %4941, 1
  %4944 = extractvalue %dx.types.ResRet.f32 %4941, 2
  %4945 = and i32 %4907, 32767
  %4946 = bitcast float %4902 to i32
  %4947 = icmp eq i32 %4946, -1
  %4948 = bitcast float %4903 to i32
  %4949 = and i32 %4907, 32768
  %4950 = icmp ne i32 %4949, 0
  %4951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4952 = extractvalue %dx.types.CBufRet.f32 %4951, 0
  %4953 = extractvalue %dx.types.CBufRet.f32 %4951, 1
  %4954 = extractvalue %dx.types.CBufRet.f32 %4951, 2
  %4955 = fsub fast float %4936, %4952
  %4956 = fsub fast float %4937, %4953
  %4957 = fsub fast float %4938, %4954
  %4958 = fsub fast float %130, %4955
  %4959 = fsub fast float %131, %4956
  %4960 = fsub fast float %132, %4957
  %4961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4939, i32 undef)  ; BufferLoad(srv,index,wot)
  %4962 = extractvalue %dx.types.ResRet.f32 %4961, 0
  %4963 = extractvalue %dx.types.ResRet.f32 %4961, 1
  %4964 = extractvalue %dx.types.ResRet.f32 %4961, 2
  %4965 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4959, float %4960, float %4962, float %4963, float %4964)  ; Dot3(ax,ay,az,bx,by,bz)
  %4966 = add i32 %4934, 24
  %4967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4966, i32 undef)  ; BufferLoad(srv,index,wot)
  %4968 = extractvalue %dx.types.ResRet.f32 %4967, 0
  %4969 = extractvalue %dx.types.ResRet.f32 %4967, 1
  %4970 = extractvalue %dx.types.ResRet.f32 %4967, 2
  %4971 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4959, float %4960, float %4968, float %4969, float %4970)  ; Dot3(ax,ay,az,bx,by,bz)
  %4972 = add i32 %4934, 36
  %4973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4972, i32 undef)  ; BufferLoad(srv,index,wot)
  %4974 = extractvalue %dx.types.ResRet.f32 %4973, 0
  %4975 = extractvalue %dx.types.ResRet.f32 %4973, 1
  %4976 = extractvalue %dx.types.ResRet.f32 %4973, 2
  %4977 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4959, float %4960, float %4974, float %4975, float %4976)  ; Dot3(ax,ay,az,bx,by,bz)
  %4978 = call float @dx.op.unary.f32(i32 6, float %4965)  ; FAbs(value)
  %4979 = call float @dx.op.unary.f32(i32 6, float %4971)  ; FAbs(value)
  %4980 = call float @dx.op.unary.f32(i32 6, float %4977)  ; FAbs(value)
  %4981 = fsub fast float %4942, %4978
  %4982 = fsub fast float %4943, %4979
  %4983 = fsub fast float %4944, %4980
  %4984 = fmul fast float %4981, %4910
  %4985 = fmul fast float %4982, %4911
  %4986 = fmul fast float %4983, %4912
  %4987 = call float @dx.op.binary.f32(i32 36, float %4985, float %4986)  ; FMin(a,b)
  %4988 = call float @dx.op.binary.f32(i32 36, float %4984, float %4987)  ; FMin(a,b)
  %4989 = call float @dx.op.unary.f32(i32 7, float %4988)  ; Saturate(value)
  %4990 = call float @dx.op.binary.f32(i32 36, float %4890, float %4989)  ; FMin(a,b)
  %4991 = uitofp i1 %4950 to float
  %4992 = fsub fast float 1.000000e+00, %4991
  %4993 = fmul fast float %4990, %4992
  %4994 = fcmp fast ogt float %4993, 0.000000e+00
  br i1 %4994, label %5004, label %4995

; <label>:4995                                    ; preds = %5146, %4886
  %4996 = phi float [ %5210, %5146 ], [ %4887, %4886 ]
  %4997 = phi float [ %5211, %5146 ], [ %4888, %4886 ]
  %4998 = phi float [ %5212, %5146 ], [ %4889, %4886 ]
  %4999 = phi float [ %5219, %5146 ], [ %4890, %4886 ]
  %5000 = phi float [ %5216, %5146 ], [ %4892, %4886 ]
  %5001 = phi float [ %5217, %5146 ], [ %4893, %4886 ]
  %5002 = phi float [ %5218, %5146 ], [ %4894, %4886 ]
  %5003 = icmp eq i32 %4891, %4898
  br i1 %5003, label %5220, label %4886

; <label>:5004                                    ; preds = %4886
  br i1 %4947, label %5062, label %5005

; <label>:5005                                    ; preds = %5004
  %5006 = fsub fast float -0.000000e+00, %4962
  %5007 = fsub fast float -0.000000e+00, %4963
  %5008 = fsub fast float -0.000000e+00, %4964
  %5009 = call float @dx.op.dot3.f32(i32 55, float %4360, float %4361, float %4362, float %5006, float %5007, float %5008)  ; Dot3(ax,ay,az,bx,by,bz)
  %5010 = fsub fast float -0.000000e+00, %5009
  %5011 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4959, float %4960, float %5006, float %5007, float %5008)  ; Dot3(ax,ay,az,bx,by,bz)
  %5012 = fadd fast float %5011, %4925
  %5013 = fadd fast float %4924, %5011
  %5014 = fsub fast float -0.000000e+00, %5013
  %5015 = fcmp ogt float %5009, -0.000000e+00
  %5016 = select i1 %5015, float %5014, float %5012
  %5017 = call float @dx.op.unary.f32(i32 6, float %5010)  ; FAbs(value)
  %5018 = fdiv fast float 1.000000e+00, %5017
  %5019 = fmul fast float %5016, %5018
  %5020 = call float @dx.op.binary.f32(i32 35, float %5019, float 0.000000e+00)  ; FMax(a,b)
  %5021 = fsub fast float -0.000000e+00, %4968
  %5022 = fsub fast float -0.000000e+00, %4969
  %5023 = fsub fast float -0.000000e+00, %4970
  %5024 = call float @dx.op.dot3.f32(i32 55, float %4360, float %4361, float %4362, float %5021, float %5022, float %5023)  ; Dot3(ax,ay,az,bx,by,bz)
  %5025 = fsub fast float -0.000000e+00, %5024
  %5026 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4959, float %4960, float %5021, float %5022, float %5023)  ; Dot3(ax,ay,az,bx,by,bz)
  %5027 = fadd fast float %5026, %4929
  %5028 = fadd fast float %4928, %5026
  %5029 = fsub fast float -0.000000e+00, %5028
  %5030 = fcmp ogt float %5024, -0.000000e+00
  %5031 = select i1 %5030, float %5029, float %5027
  %5032 = call float @dx.op.unary.f32(i32 6, float %5025)  ; FAbs(value)
  %5033 = fdiv fast float 1.000000e+00, %5032
  %5034 = fmul fast float %5031, %5033
  %5035 = call float @dx.op.binary.f32(i32 35, float %5034, float 0.000000e+00)  ; FMax(a,b)
  %5036 = fsub fast float -0.000000e+00, %4974
  %5037 = fsub fast float -0.000000e+00, %4975
  %5038 = fsub fast float -0.000000e+00, %4976
  %5039 = call float @dx.op.dot3.f32(i32 55, float %4360, float %4361, float %4362, float %5036, float %5037, float %5038)  ; Dot3(ax,ay,az,bx,by,bz)
  %5040 = fsub fast float -0.000000e+00, %5039
  %5041 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4959, float %4960, float %5036, float %5037, float %5038)  ; Dot3(ax,ay,az,bx,by,bz)
  %5042 = fadd fast float %5041, %4933
  %5043 = fadd fast float %4932, %5041
  %5044 = fsub fast float -0.000000e+00, %5043
  %5045 = fcmp ogt float %5039, -0.000000e+00
  %5046 = select i1 %5045, float %5044, float %5042
  %5047 = call float @dx.op.unary.f32(i32 6, float %5040)  ; FAbs(value)
  %5048 = fdiv fast float 1.000000e+00, %5047
  %5049 = fmul fast float %5046, %5048
  %5050 = call float @dx.op.binary.f32(i32 35, float %5049, float 0.000000e+00)  ; FMax(a,b)
  %5051 = call float @dx.op.binary.f32(i32 36, float %5035, float %5050)  ; FMin(a,b)
  %5052 = call float @dx.op.binary.f32(i32 36, float %5020, float %5051)  ; FMin(a,b)
  %5053 = fmul fast float %5052, %4360
  %5054 = fmul fast float %5052, %4361
  %5055 = fmul fast float %5052, %4362
  %5056 = fadd fast float %5053, %130
  %5057 = fadd fast float %5054, %131
  %5058 = fadd fast float %5055, %132
  %5059 = fsub fast float %5056, %4902
  %5060 = fsub fast float %5057, %4903
  %5061 = fsub fast float %5058, %4904
  br label %5069

; <label>:5062                                    ; preds = %5004
  %5063 = fmul fast float %4360, 8.096000e+03
  %5064 = fmul fast float %4361, 8.096000e+03
  %5065 = fmul fast float %4362, 8.096000e+03
  %5066 = fadd fast float %5063, %130
  %5067 = fadd fast float %5064, %131
  %5068 = fadd fast float %5065, %132
  br label %5069

; <label>:5069                                    ; preds = %5062, %5005
  %5070 = phi float [ %4360, %5062 ], [ %5059, %5005 ]
  %5071 = phi float [ %4361, %5062 ], [ %5060, %5005 ]
  %5072 = phi float [ %4362, %5062 ], [ %5061, %5005 ]
  %5073 = phi float [ %5066, %5062 ], [ %5056, %5005 ]
  %5074 = phi float [ %5067, %5062 ], [ %5057, %5005 ]
  %5075 = phi float [ %5068, %5062 ], [ %5058, %5005 ]
  %5076 = fcmp fast olt float %4921, 1.000000e+00
  br i1 %5076, label %5077, label %5108, !dx.controlflow.hints !71

; <label>:5077                                    ; preds = %5069
  %5078 = fmul fast float %5072, %4919
  %5079 = fmul fast float %5071, %4920
  %5080 = fsub fast float %5078, %5079
  %5081 = fmul fast float %5070, %4920
  %5082 = fmul fast float %5072, %4918
  %5083 = fsub fast float %5081, %5082
  %5084 = fmul fast float %5071, %4918
  %5085 = fmul fast float %5070, %4919
  %5086 = fsub fast float %5084, %5085
  %5087 = fmul fast float %5080, 2.000000e+00
  %5088 = fmul fast float %5083, 2.000000e+00
  %5089 = fmul fast float %5086, 2.000000e+00
  %5090 = fmul fast float %5087, %4921
  %5091 = fmul fast float %5088, %4921
  %5092 = fmul fast float %5089, %4921
  %5093 = fmul fast float %5089, %4919
  %5094 = fmul fast float %5088, %4920
  %5095 = fmul fast float %5087, %4920
  %5096 = fmul fast float %5089, %4918
  %5097 = fmul fast float %5088, %4918
  %5098 = fmul fast float %5087, %4919
  %5099 = fadd fast float %5093, %5070
  %5100 = fadd fast float %5099, %5090
  %5101 = fsub fast float %5100, %5094
  %5102 = fsub fast float %5071, %5096
  %5103 = fadd fast float %5102, %5091
  %5104 = fadd fast float %5103, %5095
  %5105 = fadd fast float %5092, %5072
  %5106 = fsub fast float %5105, %5098
  %5107 = fadd fast float %5106, %5097
  br label %5108

; <label>:5108                                    ; preds = %5077, %5069
  %5109 = phi float [ %5101, %5077 ], [ %5070, %5069 ]
  %5110 = phi float [ %5104, %5077 ], [ %5071, %5069 ]
  %5111 = phi float [ %5107, %5077 ], [ %5072, %5069 ]
  br i1 %4947, label %5143, label %5112

; <label>:5112                                    ; preds = %5108
  %5113 = fmul fast float %4335, 0x400187C840000000
  %5114 = fadd fast float %5113, 0xC00EFC2120000000
  %5115 = fmul fast float %5114, %4335
  %5116 = fadd fast float %5115, 0x3FE5D16340000000
  %5117 = fmul fast float %5116, %4335
  %5118 = fadd fast float %5117, 1.000000e+00
  %5119 = call float @dx.op.unary.f32(i32 7, float %5118)  ; Saturate(value)
  %5120 = fsub fast float %5073, %130
  %5121 = fsub fast float %5074, %131
  %5122 = fsub fast float %5075, %132
  %5123 = fsub fast float %5073, %4902
  %5124 = fsub fast float %5074, %4903
  %5125 = fsub fast float %5075, %4904
  %5126 = call float @dx.op.dot3.f32(i32 55, float %5120, float %5121, float %5122, float %5120, float %5121, float %5122)  ; Dot3(ax,ay,az,bx,by,bz)
  %5127 = call float @dx.op.dot3.f32(i32 55, float %5123, float %5124, float %5125, float %5123, float %5124, float %5125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5128 = fadd fast float %5127, 0x3EE4F8B580000000
  %5129 = fdiv fast float %5126, %5128
  %5130 = bitcast float %5129 to i32
  %5131 = ashr i32 %5130, 1
  %5132 = add nsw i32 %5131, 532487669
  %5133 = bitcast i32 %5132 to float
  %5134 = fmul fast float %5133, %5119
  %5135 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  %5136 = fmul fast float %5135, 0x4009981AE0000000
  %5137 = fsub fast float 0x40111BBD80000000, %5136
  %5138 = fmul fast float %5137, %5135
  %5139 = fadd fast float %5138, 0xC0009F6020000000
  %5140 = fmul fast float %5139, %5135
  %5141 = fadd fast float %5140, 1.000000e+00
  %5142 = call float @dx.op.unary.f32(i32 7, float %5141)  ; Saturate(value)
  br label %5146

; <label>:5143                                    ; preds = %5108
  %5144 = icmp ne i32 %4948, -1
  %5145 = zext i1 %5144 to i32
  br label %5146

; <label>:5146                                    ; preds = %5143, %5112
  %5147 = phi float [ %4335, %5143 ], [ %5142, %5112 ]
  %5148 = phi i32 [ %5145, %5143 ], [ 0, %5112 ]
  %5149 = fmul float %5147, 5.000000e+00
  %5150 = fsub float 5.000000e+00, %5149
  %5151 = icmp ne i32 %5148, 0
  %5152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5153 = extractvalue %dx.types.CBufRet.f32 %5152, 3
  %5154 = fadd fast float %5153, %5150
  %5155 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5154)  ; FMax(a,b)
  %5156 = call float @dx.op.unary.f32(i32 6, float %5109)  ; FAbs(value)
  %5157 = call float @dx.op.unary.f32(i32 6, float %5110)  ; FAbs(value)
  %5158 = fadd fast float %5157, %5156
  %5159 = call float @dx.op.unary.f32(i32 6, float %5111)  ; FAbs(value)
  %5160 = fadd fast float %5158, %5159
  %5161 = fcmp fast oeq float %5160, 0.000000e+00
  %5162 = fdiv fast float 1.000000e+00, %5160
  %5163 = select i1 %5161, float 1.000000e+00, float %5162
  %5164 = fmul fast float %5163, %5109
  %5165 = fmul fast float %5163, %5110
  %5166 = call float @dx.op.unary.f32(i32 6, float %5165)  ; FAbs(value)
  %5167 = call float @dx.op.unary.f32(i32 6, float %5164)  ; FAbs(value)
  %5168 = fsub fast float 1.000000e+00, %5166
  %5169 = fsub fast float 1.000000e+00, %5167
  %5170 = fcmp fast oge float %5164, 0.000000e+00
  %5171 = fcmp fast oge float %5165, 0.000000e+00
  %5172 = select i1 %5170, float 1.000000e+00, float -1.000000e+00
  %5173 = select i1 %5171, float 1.000000e+00, float -1.000000e+00
  %5174 = fcmp fast ole float %5111, 0.000000e+00
  %5175 = fmul fast float %5172, %5168
  %5176 = fmul fast float %5173, %5169
  %5177 = select i1 %5174, float %5175, float %5164
  %5178 = select i1 %5174, float %5176, float %5165
  %5179 = fmul fast float %5177, 5.000000e-01
  %5180 = fmul fast float %5178, 5.000000e-01
  %5181 = fadd fast float %5179, 5.000000e-01
  %5182 = fadd fast float %5180, 5.000000e-01
  %5183 = uitofp i32 %4945 to float
  %5184 = call float @dx.op.binary.f32(i32 36, float %5155, float 3.000000e+00)  ; FMin(a,b)
  %5185 = fadd fast float %5184, 2.000000e+00
  %5186 = call float @dx.op.unary.f32(i32 21, float %5185)  ; Exp(value)
  %5187 = extractvalue %dx.types.CBufRet.f32 %5152, 1
  %5188 = fmul fast float %5187, %5186
  %5189 = fmul fast float %5188, 2.000000e+00
  %5190 = fsub fast float 1.000000e+00, %5189
  %5191 = fmul fast float %5181, %5190
  %5192 = fmul fast float %5182, %5190
  %5193 = fadd fast float %5191, %5188
  %5194 = fadd fast float %5192, %5188
  %5195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %26, float %5193, float %5194, float %5183, float undef, i32 0, i32 0, i32 undef, float %5155)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5196 = extractvalue %dx.types.ResRet.f32 %5195, 0
  %5197 = extractvalue %dx.types.ResRet.f32 %5195, 1
  %5198 = extractvalue %dx.types.ResRet.f32 %5195, 2
  %5199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5200 = extractvalue %dx.types.CBufRet.f32 %5199, 3
  %5201 = fmul fast float %5200, %4915
  %5202 = call float @dx.op.binary.f32(i32 36, float %4416, float %5201)  ; FMin(a,b)
  %5203 = select i1 %5151, float %5202, float %5201
  %5204 = fmul fast float %5196, %4993
  %5205 = fmul fast float %5204, %5203
  %5206 = fmul fast float %5197, %4993
  %5207 = fmul fast float %5206, %5203
  %5208 = fmul fast float %5198, %4993
  %5209 = fmul fast float %5208, %5203
  %5210 = fadd fast float %5205, %4887
  %5211 = fadd fast float %5207, %4888
  %5212 = fadd fast float %5209, %4889
  %5213 = fmul fast float %5073, %4993
  %5214 = fmul fast float %5074, %4993
  %5215 = fmul fast float %5075, %4993
  %5216 = fadd fast float %5213, %4892
  %5217 = fadd fast float %5214, %4893
  %5218 = fadd fast float %5215, %4894
  %5219 = fsub fast float %4890, %4993
  br label %4995

; <label>:5220                                    ; preds = %4995
  br label %5221

; <label>:5221                                    ; preds = %5220, %4853
  %5222 = phi float [ %4854, %4853 ], [ %4996, %5220 ]
  %5223 = phi float [ %4855, %4853 ], [ %4997, %5220 ]
  %5224 = phi float [ %4856, %4853 ], [ %4998, %5220 ]
  %5225 = phi float [ %4857, %4853 ], [ %4999, %5220 ]
  %5226 = phi float [ %4859, %4853 ], [ %5000, %5220 ]
  %5227 = phi float [ %4860, %4853 ], [ %5001, %5220 ]
  %5228 = phi float [ %4861, %4853 ], [ %5002, %5220 ]
  %5229 = add i32 %4858, 1
  %5230 = icmp ugt i32 %5229, %4850
  br i1 %5230, label %5231, label %4853, !llvm.loop !72

; <label>:5231                                    ; preds = %5221
  br label %5232

; <label>:5232                                    ; preds = %5231, %4801
  %5233 = phi float [ 0.000000e+00, %4801 ], [ %5222, %5231 ]
  %5234 = phi float [ 0.000000e+00, %4801 ], [ %5223, %5231 ]
  %5235 = phi float [ 0.000000e+00, %4801 ], [ %5224, %5231 ]
  %5236 = phi float [ 0.000000e+00, %4801 ], [ %5226, %5231 ]
  %5237 = phi float [ 0.000000e+00, %4801 ], [ %5227, %5231 ]
  %5238 = phi float [ 0.000000e+00, %4801 ], [ %5228, %5231 ]
  %5239 = call float @dx.op.dot3.f32(i32 55, float %5233, float %5234, float %5235, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5240 = select i1 %171, float 0.000000e+00, float %5233
  %5241 = select i1 %171, float %5239, float %5234
  %5242 = select i1 %171, float 0.000000e+00, float %5235
  %5243 = fcmp fast olt float %4795, 0.000000e+00
  %5244 = call float @dx.op.unary.f32(i32 6, float %4795)  ; FAbs(value)
  %5245 = fmul fast float %5244, %4796
  %5246 = fmul fast float %5244, %4797
  %5247 = fmul fast float %5244, %4798
  %5248 = select i1 %5243, float %4796, float %5245
  %5249 = select i1 %5243, float %4797, float %5246
  %5250 = select i1 %5243, float %4798, float %5247
  %5251 = fsub fast float 1.000000e+00, %5244
  %5252 = call float @dx.op.unary.f32(i32 7, float %5251)  ; Saturate(value)
  %5253 = fmul fast float %5252, %5240
  %5254 = fmul fast float %5252, %5241
  %5255 = fmul fast float %5252, %5242
  %5256 = fadd fast float %5248, %5253
  %5257 = fadd fast float %5249, %5254
  %5258 = fadd fast float %5250, %5255
  %5259 = fcmp fast une float %4545, 0.000000e+00
  br i1 %5259, label %5360, label %5260

; <label>:5260                                    ; preds = %5232
  %5261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5262 = extractvalue %dx.types.CBufRet.f32 %5261, 0
  %5263 = extractvalue %dx.types.CBufRet.f32 %5261, 1
  %5264 = extractvalue %dx.types.CBufRet.f32 %5261, 2
  %5265 = extractvalue %dx.types.CBufRet.f32 %5261, 3
  %5266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5267 = extractvalue %dx.types.CBufRet.f32 %5266, 0
  %5268 = extractvalue %dx.types.CBufRet.f32 %5266, 1
  %5269 = extractvalue %dx.types.CBufRet.f32 %5266, 2
  %5270 = extractvalue %dx.types.CBufRet.f32 %5266, 3
  %5271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5272 = extractvalue %dx.types.CBufRet.f32 %5271, 0
  %5273 = extractvalue %dx.types.CBufRet.f32 %5271, 1
  %5274 = extractvalue %dx.types.CBufRet.f32 %5271, 2
  %5275 = extractvalue %dx.types.CBufRet.f32 %5271, 3
  %5276 = call float @dx.op.dot3.f32(i32 55, float %5272, float %5273, float %5274, float %4360, float %4361, float %4362)  ; Dot3(ax,ay,az,bx,by,bz)
  %5277 = call float @dx.op.dot3.f32(i32 55, float %5236, float %5237, float %5238, float %5272, float %5273, float %5274)  ; Dot3(ax,ay,az,bx,by,bz)
  %5278 = call float @dx.op.dot3.f32(i32 55, float %130, float %131, float %132, float %5272, float %5273, float %5274)  ; Dot3(ax,ay,az,bx,by,bz)
  %5279 = fadd fast float %4335, -1.000000e+00
  %5280 = fsub fast float %5277, %5278
  %5281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5282 = extractvalue %dx.types.CBufRet.f32 %5281, 2
  %5283 = fmul fast float %5282, %5277
  %5284 = fdiv fast float 1.600000e+02, %5283
  %5285 = fmul fast float %5279, %5279
  %5286 = fmul fast float %5285, 0xBFB5B17960000000
  %5287 = fmul fast float %5286, %5280
  %5288 = fmul fast float %5287, %5284
  %5289 = call float @dx.op.unary.f32(i32 21, float %5288)  ; Exp(value)
  %5290 = fmul fast float %5289, 0x3FF04B2960000000
  %5291 = fsub fast float 0x3FF04B2960000000, %5290
  %5292 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5293 = fmul fast float %5292, 4.000000e+00
  %5294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5295 = extractvalue %dx.types.CBufRet.f32 %5294, 0
  %5296 = extractvalue %dx.types.CBufRet.f32 %5294, 1
  %5297 = extractvalue %dx.types.CBufRet.f32 %5294, 2
  %5298 = fadd fast float %5295, %5236
  %5299 = fadd fast float %5296, %5237
  %5300 = fadd fast float %5297, %5238
  %5301 = fmul fast float %5298, %5262
  %5302 = call float @dx.op.tertiary.f32(i32 46, float %5299, float %5263, float %5301)  ; FMad(a,b,c)
  %5303 = call float @dx.op.tertiary.f32(i32 46, float %5300, float %5264, float %5302)  ; FMad(a,b,c)
  %5304 = fadd fast float %5303, %5265
  %5305 = fmul fast float %5298, %5267
  %5306 = call float @dx.op.tertiary.f32(i32 46, float %5299, float %5268, float %5305)  ; FMad(a,b,c)
  %5307 = call float @dx.op.tertiary.f32(i32 46, float %5300, float %5269, float %5306)  ; FMad(a,b,c)
  %5308 = fadd fast float %5307, %5270
  %5309 = fmul fast float %5298, %5272
  %5310 = call float @dx.op.tertiary.f32(i32 46, float %5299, float %5273, float %5309)  ; FMad(a,b,c)
  %5311 = call float @dx.op.tertiary.f32(i32 46, float %5300, float %5274, float %5310)  ; FMad(a,b,c)
  %5312 = fadd fast float %5311, %5275
  %5313 = fdiv fast float %5304, %5312
  %5314 = fdiv fast float %5308, %5312
  %5315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5316 = extractvalue %dx.types.CBufRet.f32 %5315, 0
  %5317 = extractvalue %dx.types.CBufRet.f32 %5315, 1
  %5318 = fmul fast float %5316, %5313
  %5319 = fmul fast float %5317, %5314
  %5320 = extractvalue %dx.types.CBufRet.f32 %5315, 2
  %5321 = extractvalue %dx.types.CBufRet.f32 %5315, 3
  %5322 = fadd fast float %5318, %5320
  %5323 = fadd fast float %5319, %5321
  %5324 = fmul fast float %5276, 8.000000e+00
  %5325 = call float @dx.op.unary.f32(i32 7, float %5324)  ; Saturate(value)
  %5326 = fmul fast float %5322, 2.000000e+00
  %5327 = fmul fast float %5323, 2.000000e+00
  %5328 = fadd fast float %5326, -1.000000e+00
  %5329 = fadd fast float %5327, -1.000000e+00
  %5330 = fmul fast float %5328, %5328
  %5331 = fsub fast float 1.000000e+00, %5330
  %5332 = call float @dx.op.unary.f32(i32 7, float %5331)  ; Saturate(value)
  %5333 = fmul fast float %5329, %5329
  %5334 = fsub fast float 1.000000e+00, %5333
  %5335 = call float @dx.op.unary.f32(i32 7, float %5334)  ; Saturate(value)
  %5336 = fmul fast float %4545, %5332
  %5337 = fmul fast float %5336, %5335
  %5338 = call float @dx.op.unary.f32(i32 7, float %5337)  ; Saturate(value)
  %5339 = fmul fast float %5338, %5325
  %5340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %5322, float %5323, float undef, float undef, i32 0, i32 0, i32 undef, float %5293)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5341 = extractvalue %dx.types.ResRet.f32 %5340, 0
  %5342 = extractvalue %dx.types.ResRet.f32 %5340, 1
  %5343 = extractvalue %dx.types.ResRet.f32 %5340, 2
  %5344 = select i1 %171, float 0.000000e+00, float %5342
  %5345 = select i1 %171, float 0.000000e+00, float %5343
  %5346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5347 = extractvalue %dx.types.CBufRet.f32 %5346, 2
  %5348 = fmul fast float %5347, %5341
  %5349 = fmul fast float %5344, %5347
  %5350 = fmul fast float %5345, %5347
  %5351 = fsub fast float %5348, %5240
  %5352 = fsub fast float %5349, %5241
  %5353 = fsub fast float %5350, %5242
  %5354 = fmul fast float %5351, %5339
  %5355 = fmul fast float %5352, %5339
  %5356 = fmul fast float %5353, %5339
  %5357 = fadd fast float %5354, %5240
  %5358 = fadd fast float %5355, %5241
  %5359 = fadd fast float %5356, %5242
  br label %5360

; <label>:5360                                    ; preds = %5260, %5232, %4794, %4518
  %5361 = phi float [ %4796, %4794 ], [ %5256, %5232 ], [ %4475, %4518 ], [ %5357, %5260 ]
  %5362 = phi float [ %4797, %4794 ], [ %5257, %5232 ], [ %4476, %4518 ], [ %5358, %5260 ]
  %5363 = phi float [ %4798, %4794 ], [ %5258, %5232 ], [ %4477, %4518 ], [ %5359, %5260 ]
  %5364 = fmul fast float %4524, %4471
  %5365 = fmul fast float %4524, %4472
  %5366 = fmul fast float %4524, %4473
  %5367 = call float @dx.op.dot3.f32(i32 55, float %4326, float %4327, float %4328, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5368 = fcmp fast ogt float %5367, 0x3E7FF19E20000000
  %5369 = fdiv fast float 1.000000e+00, %5367
  %5370 = select i1 %5368, float %5369, float 0.000000e+00
  %5371 = fmul fast float %5370, %4326
  %5372 = fmul fast float %5370, %4327
  %5373 = fmul fast float %5370, %4328
  %5374 = fadd fast float %5371, -1.000000e+00
  %5375 = fadd fast float %5372, -1.000000e+00
  %5376 = fadd fast float %5373, -1.000000e+00
  %5377 = fmul fast float %5374, 5.000000e-01
  %5378 = fmul fast float %5375, 5.000000e-01
  %5379 = fmul fast float %5376, 5.000000e-01
  %5380 = fadd fast float %5377, 1.000000e+00
  %5381 = fadd fast float %5378, 1.000000e+00
  %5382 = fadd fast float %5379, 1.000000e+00
  %5383 = fmul fast float %5361, %4519
  %5384 = fmul fast float %5362, %4520
  %5385 = fmul fast float %5363, %4521
  %5386 = fsub fast float 1.000000e+00, %4354
  %5387 = bitcast float %5386 to i32
  %5388 = sitofp i32 %5387 to float
  %5389 = fmul fast float %5388, 5.000000e+00
  %5390 = fadd fast float %5389, 0xC1EFBF8940000000
  %5391 = fptosi float %5390 to i32
  %5392 = bitcast i32 %5391 to float
  %5393 = fmul fast float %5392, %4015
  %5394 = fmul fast float %4471, %5393
  %5395 = fmul fast float %5394, %4524
  %5396 = fmul fast float %5395, %5380
  %5397 = fmul fast float %4472, %5393
  %5398 = fmul fast float %5397, %4524
  %5399 = fmul fast float %5398, %5381
  %5400 = fmul fast float %4473, %5393
  %5401 = fmul fast float %5400, %4524
  %5402 = fmul fast float %5401, %5382
  %5403 = fmul fast float %5364, %4011
  %5404 = fmul fast float %5365, %4011
  %5405 = fmul fast float %5366, %4011
  %5406 = fadd fast float %5383, %4007
  %5407 = fadd fast float %5406, %5396
  %5408 = fmul fast float %5407, %4011
  %5409 = fadd fast float %5384, %4008
  %5410 = fadd fast float %5409, %5399
  %5411 = fmul fast float %5410, %4011
  %5412 = fadd fast float %5385, %4009
  %5413 = fadd fast float %5412, %5402
  %5414 = fmul fast float %5413, %4011
  %5415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5416 = extractvalue %dx.types.CBufRet.f32 %5415, 3
  %5417 = fcmp fast oeq float %5416, 0.000000e+00
  br i1 %5417, label %5636, label %5418

; <label>:5418                                    ; preds = %5360
  %5419 = extractvalue %dx.types.CBufRet.f32 %5415, 0
  %5420 = extractvalue %dx.types.CBufRet.f32 %5415, 1
  %5421 = extractvalue %dx.types.CBufRet.f32 %5415, 2
  %5422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5423 = extractvalue %dx.types.CBufRet.f32 %5422, 0
  %5424 = extractvalue %dx.types.CBufRet.f32 %5422, 1
  %5425 = extractvalue %dx.types.CBufRet.f32 %5422, 2
  %5426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5427 = extractvalue %dx.types.CBufRet.f32 %5426, 0
  %5428 = extractvalue %dx.types.CBufRet.f32 %5426, 1
  %5429 = call float @dx.op.dot3.f32(i32 55, float %5423, float %5424, float %5425, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5430 = select i1 %171, float %5427, float %5423
  %5431 = select i1 %171, float %5429, float %5424
  %5432 = select i1 %171, float %5428, float %5425
  %5433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5434 = extractvalue %dx.types.CBufRet.f32 %5433, 1
  %5435 = fcmp fast une float %5434, 0.000000e+00
  br i1 %5435, label %5436, label %5453

; <label>:5436                                    ; preds = %5418
  %5437 = fptoui float %67 to i32
  %5438 = fptoui float %68 to i32
  %5439 = lshr i32 %5437, 4
  %5440 = lshr i32 %5438, 4
  %5441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5442 = extractvalue %dx.types.CBufRet.f32 %5441, 0
  %5443 = fptoui float %5442 to i32
  %5444 = add i32 %5443, 15
  %5445 = lshr i32 %5444, 4
  %5446 = mul i32 %5445, %5440
  %5447 = add i32 %5446, %5439
  %5448 = shl i32 %5447, 3
  %5449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5448, i32 undef)  ; BufferLoad(srv,index,wot)
  %5450 = extractvalue %dx.types.ResRet.i32 %5449, 0
  %5451 = and i32 %5450, -268435456
  %5452 = icmp eq i32 %5451, -1342177280
  br i1 %5452, label %5458, label %5453

; <label>:5453                                    ; preds = %5436, %5418
  %5454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %29, float %4340, float %4341, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5455 = extractvalue %dx.types.ResRet.f32 %5454, 0
  %5456 = extractvalue %dx.types.ResRet.f32 %5454, 1
  %5457 = extractvalue %dx.types.ResRet.f32 %5454, 2
  br label %5458

; <label>:5458                                    ; preds = %5453, %5436
  %5459 = phi float [ %5455, %5453 ], [ 0.000000e+00, %5436 ]
  %5460 = phi float [ %5456, %5453 ], [ 0.000000e+00, %5436 ]
  %5461 = phi float [ %5457, %5453 ], [ 0.000000e+00, %5436 ]
  %5462 = call float @dx.op.binary.f32(i32 36, float %5460, float %5461)  ; FMin(a,b)
  %5463 = call float @dx.op.binary.f32(i32 36, float %5459, float %5462)  ; FMin(a,b)
  %5464 = fcmp fast ogt float %5463, 0.000000e+00
  br i1 %5464, label %5465, label %5636, !dx.controlflow.hints !74

; <label>:5465                                    ; preds = %5458
  %5466 = fmul fast float %5459, %5430
  %5467 = fmul fast float %5460, %5431
  %5468 = fmul fast float %5461, %5432
  %5469 = fsub fast float %5419, %4325
  %5470 = fsub fast float %5420, %4324
  %5471 = fsub fast float %5421, %4323
  %5472 = call float @dx.op.dot3.f32(i32 55, float %5469, float %5470, float %5471, float %5469, float %5470, float %5471)  ; Dot3(ax,ay,az,bx,by,bz)
  %5473 = call float @dx.op.unary.f32(i32 25, float %5472)  ; Rsqrt(value)
  %5474 = fmul fast float %5473, %5469
  %5475 = fmul fast float %5473, %5470
  %5476 = fmul fast float %5473, %5471
  %5477 = call float @dx.op.dot3.f32(i32 55, float %5419, float %5420, float %5421, float %4332, float %4333, float %4334)  ; Dot3(ax,ay,az,bx,by,bz)
  %5478 = call float @dx.op.dot3.f32(i32 55, float %4322, float %4321, float %4320, float %5474, float %5475, float %5476)  ; Dot3(ax,ay,az,bx,by,bz)
  %5479 = call float @dx.op.unary.f32(i32 7, float %5477)  ; Saturate(value)
  %5480 = fmul fast float %5479, %5479
  %5481 = fmul fast float %5480, %4379
  %5482 = call float @dx.op.unary.f32(i32 7, float %5481)  ; Saturate(value)
  %5483 = fmul fast float %5482, %5479
  %5484 = call float @dx.op.dot3.f32(i32 55, float %4332, float %4333, float %4334, float %5474, float %5475, float %5476)  ; Dot3(ax,ay,az,bx,by,bz)
  %5485 = fmul fast float %5484, %5484
  %5486 = call float @dx.op.unary.f32(i32 6, float %5477)  ; FAbs(value)
  %5487 = fsub fast float 1.000000e+00, %4372
  %5488 = fmul fast float %4354, %4354
  %5489 = fmul fast float %5488, %5487
  %5490 = fadd fast float %5489, %4372
  %5491 = bitcast float %5490 to i32
  %5492 = ashr i32 %5491, 1
  %5493 = add nsw i32 %5492, 532487669
  %5494 = bitcast i32 %5493 to float
  %5495 = fadd fast float %5494, %4354
  %5496 = fmul fast float %4372, %5485
  %5497 = fsub fast float 1.000000e+00, %5485
  %5498 = fadd fast float %5497, %5496
  %5499 = fmul fast float %5486, %5486
  %5500 = fmul fast float %5499, %5487
  %5501 = fadd fast float %5500, %4372
  %5502 = bitcast float %5501 to i32
  %5503 = ashr i32 %5502, 1
  %5504 = add nsw i32 %5503, 532487669
  %5505 = bitcast i32 %5504 to float
  %5506 = fadd fast float %5505, %5486
  %5507 = fmul fast float %5498, %5498
  %5508 = fmul fast float %5507, %5495
  %5509 = fmul fast float %5508, %5506
  %5510 = fdiv fast float 0x3FF0A00000000000, %5509
  %5511 = fmul fast float %5510, %4372
  %5512 = call float @dx.op.unary.f32(i32 6, float %5478)  ; FAbs(value)
  %5513 = fsub fast float 1.000000e+00, %5512
  %5514 = bitcast float %5513 to i32
  %5515 = sitofp i32 %5514 to float
  %5516 = fmul fast float %5515, 5.000000e+00
  %5517 = fadd fast float %5516, 0xC1EFBF8940000000
  %5518 = fptosi float %5517 to i32
  %5519 = bitcast i32 %5518 to float
  %5520 = fsub fast float 1.000000e+00, %4329
  %5521 = fsub fast float 1.000000e+00, %4330
  %5522 = fsub fast float 1.000000e+00, %4352
  %5523 = fmul fast float %5519, %5520
  %5524 = fmul fast float %5519, %5521
  %5525 = fmul fast float %5519, %5522
  %5526 = fadd fast float %5523, %4329
  %5527 = fadd fast float %5524, %4330
  %5528 = fadd fast float %5525, %4352
  br i1 %4491, label %5529, label %5552

; <label>:5529                                    ; preds = %5465
  %5530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4014, float %5512, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5531 = extractvalue %dx.types.ResRet.f32 %5530, 0
  %5532 = extractvalue %dx.types.ResRet.f32 %5530, 1
  %5533 = extractvalue %dx.types.ResRet.f32 %5530, 2
  %5534 = fadd fast float %5531, -5.000000e-01
  %5535 = fadd fast float %5532, -5.000000e-01
  %5536 = fadd fast float %5533, -5.000000e-01
  %5537 = fmul fast float %4329, 4.000000e+00
  %5538 = fmul fast float %5537, %5520
  %5539 = fmul fast float %5538, %5534
  %5540 = fmul fast float %4330, 4.000000e+00
  %5541 = fmul fast float %5540, %5521
  %5542 = fmul fast float %5541, %5535
  %5543 = fmul fast float %4352, 4.000000e+00
  %5544 = fmul fast float %5543, %5522
  %5545 = fmul fast float %5544, %5536
  %5546 = fadd fast float %5539, %5526
  %5547 = fadd fast float %5542, %5527
  %5548 = fadd fast float %5545, %5528
  %5549 = call float @dx.op.unary.f32(i32 7, float %5546)  ; Saturate(value)
  %5550 = call float @dx.op.unary.f32(i32 7, float %5547)  ; Saturate(value)
  %5551 = call float @dx.op.unary.f32(i32 7, float %5548)  ; Saturate(value)
  br label %5552

; <label>:5552                                    ; preds = %5529, %5465
  %5553 = phi float [ %5549, %5529 ], [ %5526, %5465 ]
  %5554 = phi float [ %5550, %5529 ], [ %5527, %5465 ]
  %5555 = phi float [ %5551, %5529 ], [ %5528, %5465 ]
  %5556 = fmul fast float %5477, 9.843750e-01
  %5557 = fadd fast float %5556, 7.812500e-03
  %5558 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5557, float %4481, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5559 = extractvalue %dx.types.ResRet.f32 %5558, 2
  %5560 = extractvalue %dx.types.ResRet.f32 %5558, 3
  %5561 = fmul fast float %5559, %4329
  %5562 = fmul fast float %5559, %4330
  %5563 = fmul fast float %5559, %4352
  %5564 = fadd fast float %5561, %5560
  %5565 = fadd fast float %5562, %5560
  %5566 = fadd fast float %5563, %5560
  br i1 %4491, label %5567, label %5590

; <label>:5567                                    ; preds = %5552
  %5568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4014, float %5477, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5569 = extractvalue %dx.types.ResRet.f32 %5568, 0
  %5570 = extractvalue %dx.types.ResRet.f32 %5568, 1
  %5571 = extractvalue %dx.types.ResRet.f32 %5568, 2
  %5572 = fadd fast float %5569, -5.000000e-01
  %5573 = fadd fast float %5570, -5.000000e-01
  %5574 = fadd fast float %5571, -5.000000e-01
  %5575 = fmul fast float %4329, 4.000000e+00
  %5576 = fmul fast float %5575, %5520
  %5577 = fmul fast float %5576, %5572
  %5578 = fmul fast float %4330, 4.000000e+00
  %5579 = fmul fast float %5578, %5521
  %5580 = fmul fast float %5579, %5573
  %5581 = fmul fast float %4352, 4.000000e+00
  %5582 = fmul fast float %5581, %5522
  %5583 = fmul fast float %5582, %5574
  %5584 = fadd fast float %5577, %5564
  %5585 = fadd fast float %5580, %5565
  %5586 = fadd fast float %5583, %5566
  %5587 = call float @dx.op.unary.f32(i32 7, float %5584)  ; Saturate(value)
  %5588 = call float @dx.op.unary.f32(i32 7, float %5585)  ; Saturate(value)
  %5589 = call float @dx.op.unary.f32(i32 7, float %5586)  ; Saturate(value)
  br label %5590

; <label>:5590                                    ; preds = %5567, %5552
  %5591 = phi float [ %5587, %5567 ], [ %5564, %5552 ]
  %5592 = phi float [ %5588, %5567 ], [ %5565, %5552 ]
  %5593 = phi float [ %5589, %5567 ], [ %5566, %5552 ]
  %5594 = call float @dx.op.binary.f32(i32 35, float %5592, float %5593)  ; FMax(a,b)
  %5595 = call float @dx.op.binary.f32(i32 35, float %5591, float %5594)  ; FMax(a,b)
  %5596 = fsub fast float 1.000000e+00, %5595
  %5597 = fmul fast float %5553, %5511
  %5598 = fmul fast float %5554, %5511
  %5599 = fmul fast float %5555, %5511
  %5600 = fsub fast float 1.000000e+00, %5478
  %5601 = bitcast float %5600 to i32
  %5602 = sitofp i32 %5601 to float
  %5603 = fmul fast float %5602, 5.000000e+00
  %5604 = fadd fast float %5603, 0xC1EFBF8940000000
  %5605 = fptosi float %5604 to i32
  %5606 = bitcast i32 %5605 to float
  %5607 = fmul fast float %5606, %4015
  %5608 = fmul fast float %5596, %5607
  %5609 = fmul fast float %5608, %5380
  %5610 = fmul fast float %5608, %5381
  %5611 = fmul fast float %5608, %5382
  %5612 = fadd fast float %5609, %5597
  %5613 = fadd fast float %5610, %5598
  %5614 = fadd fast float %5611, %5599
  %5615 = fmul fast float %5483, %5466
  %5616 = fmul fast float %5615, %5596
  %5617 = fmul fast float %5483, %5467
  %5618 = fmul fast float %5617, %5596
  %5619 = fmul fast float %5483, %5468
  %5620 = fmul fast float %5619, %5596
  %5621 = fmul fast float %5615, %5612
  %5622 = fmul fast float %5617, %5613
  %5623 = fmul fast float %5619, %5614
  %5624 = fadd fast float %5616, %5364
  %5625 = fmul fast float %5624, %4011
  %5626 = fadd fast float %5618, %5365
  %5627 = fmul fast float %5626, %4011
  %5628 = fadd fast float %5620, %5366
  %5629 = fmul fast float %5628, %4011
  %5630 = fadd fast float %5621, %5407
  %5631 = fmul fast float %5630, %4011
  %5632 = fadd fast float %5622, %5410
  %5633 = fmul fast float %5632, %4011
  %5634 = fadd fast float %5623, %5413
  %5635 = fmul fast float %5634, %4011
  br label %5636

; <label>:5636                                    ; preds = %5590, %5458, %5360
  %5637 = phi float [ %5408, %5360 ], [ %5408, %5458 ], [ %5631, %5590 ]
  %5638 = phi float [ %5411, %5360 ], [ %5411, %5458 ], [ %5633, %5590 ]
  %5639 = phi float [ %5414, %5360 ], [ %5414, %5458 ], [ %5635, %5590 ]
  %5640 = phi float [ %5403, %5360 ], [ %5403, %5458 ], [ %5625, %5590 ]
  %5641 = phi float [ %5404, %5360 ], [ %5404, %5458 ], [ %5627, %5590 ]
  %5642 = phi float [ %5405, %5360 ], [ %5405, %5458 ], [ %5629, %5590 ]
  %5643 = call float @dx.op.unary.f32(i32 24, float %4326)  ; Sqrt(value)
  %5644 = call float @dx.op.unary.f32(i32 24, float %4327)  ; Sqrt(value)
  %5645 = call float @dx.op.unary.f32(i32 24, float %4328)  ; Sqrt(value)
  %5646 = fmul fast float %5643, %5640
  %5647 = fmul fast float %5644, %5641
  %5648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5649 = extractvalue %dx.types.CBufRet.f32 %5648, 0
  br i1 %171, label %5650, label %5682

; <label>:5650                                    ; preds = %5636
  %5651 = fadd fast float %5642, %4017
  %5652 = fmul fast float %5651, %4019
  %5653 = fsub fast float 1.000000e+00, %4019
  %5654 = call float @dx.op.unary.f32(i32 7, float %5653)  ; Saturate(value)
  %5655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5656 = extractvalue %dx.types.CBufRet.f32 %5655, 3
  %5657 = fmul fast float %5656, %5654
  %5658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5659 = extractvalue %dx.types.CBufRet.f32 %5658, 0
  %5660 = fmul fast float %5659, %5386
  %5661 = extractvalue %dx.types.CBufRet.f32 %5658, 2
  %5662 = fmul fast float %5661, %4350
  %5663 = fadd fast float %5647, %5646
  %5664 = fmul fast float %5649, %5663
  %5665 = extractvalue %dx.types.CBufRet.f32 %5655, 1
  %5666 = fadd fast float %5657, %5652
  %5667 = fsub fast float %5666, %5660
  %5668 = fadd fast float %5667, %5662
  %5669 = fsub fast float %5668, %5665
  %5670 = extractvalue %dx.types.CBufRet.f32 %5655, 2
  %5671 = fmul fast float %5669, %5670
  %5672 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.f32 %5673, 0
  %5675 = fsub fast float %5672, %5674
  %5676 = fmul fast float %5675, 1.000000e+01
  %5677 = call float @dx.op.unary.f32(i32 7, float %5676)  ; Saturate(value)
  %5678 = fadd fast float %4018, -1.000000e+00
  %5679 = fmul fast float %5677, %5678
  %5680 = fadd fast float %5679, 1.000000e+00
  %5681 = fmul fast float %5680, %5672
  br label %5698

; <label>:5682                                    ; preds = %5636
  %5683 = fmul fast float %5645, %5642
  %5684 = fmul fast float %5649, %5646
  %5685 = fmul fast float %5649, %5647
  %5686 = fmul fast float %5683, %5649
  %5687 = add i32 %32, 356
  %5688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %5687, i32 undef)  ; BufferLoad(srv,index,wot)
  %5689 = extractvalue %dx.types.ResRet.i32 %5688, 0
  %5690 = and i32 %5689, 32
  %5691 = icmp eq i32 %5690, 0
  br i1 %5691, label %5698, label %5692

; <label>:5692                                    ; preds = %5682
  %5693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5694 = extractvalue %dx.types.CBufRet.f32 %5693, 0
  %5695 = fmul fast float %5694, 0x3FE99999A0000000
  %5696 = fadd fast float %5694, %5684
  %5697 = fadd fast float %5695, %5686
  br label %5698

; <label>:5698                                    ; preds = %5692, %5682, %5650
  %5699 = phi float [ %5664, %5650 ], [ %5696, %5692 ], [ %5684, %5682 ]
  %5700 = phi float [ %5681, %5650 ], [ %5685, %5692 ], [ %5685, %5682 ]
  %5701 = phi float [ %5680, %5650 ], [ %5697, %5692 ], [ %5686, %5682 ]
  %5702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5703 = extractvalue %dx.types.CBufRet.f32 %5702, 0
  %5704 = fmul fast float %5703, %5638
  %5705 = fmul fast float %5703, %5639
  %5706 = fadd fast float %5638, %5637
  %5707 = select i1 %171, float %5706, float %5637
  %5708 = fmul float %5707, %5703
  %5709 = select i1 %171, float 0.000000e+00, float %5704
  %5710 = select i1 %171, float 0.000000e+00, float %5705
  %5711 = fmul fast float %5699, %5643
  %5712 = fmul fast float %5700, %5644
  %5713 = fmul fast float %5701, %5645
  %5714 = fadd fast float %5708, %5711
  %5715 = fadd fast float %5709, %5712
  %5716 = fadd fast float %5710, %5713
  %5717 = select i1 %171, float %5700, float %5715
  %5718 = select i1 %171, float %5701, float %5716
  %5719 = call float @dx.op.binary.f32(i32 36, float %5714, float 3.225500e+04)  ; FMin(a,b)
  %5720 = call float @dx.op.binary.f32(i32 36, float %5717, float 3.225500e+04)  ; FMin(a,b)
  %5721 = call float @dx.op.binary.f32(i32 36, float %5718, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5719)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5720)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5721)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

