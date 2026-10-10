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
; shader hash: 491324bf338dda6acfa24ffdc6b9097c
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
  %368 = add i32 %32, 488
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
  br i1 %358, label %1846, label %894

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
  br i1 %903, label %1846, label %904

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
  br i1 %1192, label %1846, label %1193

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
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = and i32 %1543, 1024
  %1545 = icmp eq i32 %1544, 0
  br i1 %1545, label %1576, label %1546

; <label>:1546                                    ; preds = %1538
  %1547 = add i32 %32, 168
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1547, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = and i32 %1549, 255
  %1551 = uitofp i32 %1550 to float
  %1552 = fmul fast float %1551, 0x3F70101020000000
  %1553 = lshr i32 %1549, 8
  %1554 = and i32 %1553, 255
  %1555 = uitofp i32 %1554 to float
  %1556 = fmul fast float %1555, 0x3F70101020000000
  %1557 = lshr i32 %1549, 16
  %1558 = and i32 %1557, 255
  %1559 = uitofp i32 %1558 to float
  %1560 = fmul fast float %1559, 0x3F70101020000000
  %1561 = fmul fast float %1552, %1552
  %1562 = fmul fast float %1556, %1556
  %1563 = fmul fast float %1560, %1560
  %1564 = add i32 %32, 460
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1564, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = add i32 %1566, 0
  %1568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1567, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1569 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1568, %dx.types.Handle %64, float %1003, float %1004, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1570 = extractvalue %dx.types.ResRet.f32 %1569, 0
  %1571 = extractvalue %dx.types.ResRet.f32 %1569, 1
  %1572 = extractvalue %dx.types.ResRet.f32 %1569, 2
  %1573 = fmul fast float %1561, %1570
  %1574 = fmul fast float %1562, %1571
  %1575 = fmul fast float %1563, %1572
  br label %1576

; <label>:1576                                    ; preds = %1546, %1538
  %1577 = phi float [ %1573, %1546 ], [ 0.000000e+00, %1538 ]
  %1578 = phi float [ %1574, %1546 ], [ 0.000000e+00, %1538 ]
  %1579 = phi float [ %1575, %1546 ], [ 0.000000e+00, %1538 ]
  %1580 = fcmp fast ogt float %1577, 0.000000e+00
  %1581 = fcmp fast ogt float %1578, 0.000000e+00
  %1582 = fcmp fast ogt float %1579, 0.000000e+00
  %1583 = call float @dx.op.unary.f32(i32 23, float %1577)  ; Log(value)
  %1584 = call float @dx.op.unary.f32(i32 23, float %1578)  ; Log(value)
  %1585 = call float @dx.op.unary.f32(i32 23, float %1579)  ; Log(value)
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = lshr i32 %1587, 7
  %1589 = and i32 %1588, 32752
  %1590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1589)  ; LegacyF16ToF32(value)
  %1591 = fmul fast float %1583, 0xBFE62E4300000000
  %1592 = fmul fast float %1591, %1590
  %1593 = fmul fast float %1584, 0xBFE62E4300000000
  %1594 = fmul fast float %1593, %1590
  %1595 = fmul fast float %1585, 0xBFE62E4300000000
  %1596 = fmul fast float %1595, %1590
  %1597 = select i1 %1580, float %1592, float 1.270000e+02
  %1598 = select i1 %1581, float %1594, float 1.270000e+02
  %1599 = select i1 %1582, float %1596, float 1.270000e+02
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = and i32 %1601, 10240
  %1603 = icmp eq i32 %1602, 0
  br i1 %1603, label %1624, label %1604

; <label>:1604                                    ; preds = %1576
  %1605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.i32 %1605, 0
  %1607 = and i32 %1606, 2048
  %1608 = icmp eq i32 %1607, 0
  br i1 %1608, label %1624, label %1609

; <label>:1609                                    ; preds = %1604
  %1610 = add i32 %32, 476
  %1611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1610, i32 undef)  ; BufferLoad(srv,index,wot)
  %1612 = extractvalue %dx.types.ResRet.i32 %1611, 0
  %1613 = add i32 %1612, 0
  %1614 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1613, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1615 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1614, %dx.types.Handle %64, float %1003, float %1004, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1616 = extractvalue %dx.types.ResRet.f32 %1615, 3
  %1617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1618 = extractvalue %dx.types.ResRet.i32 %1617, 0
  %1619 = shl i32 %1618, 4
  %1620 = and i32 %1619, 32752
  %1621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1620)  ; LegacyF16ToF32(value)
  %1622 = fmul fast float %1621, %1616
  %1623 = call float @dx.op.binary.f32(i32 35, float %1622, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1624

; <label>:1624                                    ; preds = %1609, %1604, %1576
  %1625 = phi float [ %1623, %1609 ], [ 0x3F70101020000000, %1604 ], [ 0x3F70101020000000, %1576 ]
  %1626 = add i32 %32, 112
  %1627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1626, i32 undef)  ; BufferLoad(srv,index,wot)
  %1628 = extractvalue %dx.types.ResRet.i32 %1627, 0
  %1629 = and i32 %1628, 255
  %1630 = uitofp i32 %1629 to float
  %1631 = lshr i32 %1628, 8
  %1632 = and i32 %1631, 255
  %1633 = uitofp i32 %1632 to float
  %1634 = call float @dx.op.dot3.f32(i32 55, float %1411, float %1412, float %1413, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1635 = fmul fast float %1633, %1634
  %1636 = fadd fast float %1635, %1630
  %1637 = fmul fast float %1636, 0x3F70101020000000
  %1638 = call float @dx.op.unary.f32(i32 7, float %1637)  ; Saturate(value)
  br i1 %895, label %1639, label %1674

; <label>:1639                                    ; preds = %1624
  %1640 = fmul fast float %1625, 2.000000e+00
  %1641 = fcmp fast olt float %1597, 1.270000e+02
  %1642 = fcmp fast olt float %1598, 1.270000e+02
  %1643 = fcmp fast olt float %1599, 1.270000e+02
  %1644 = fmul fast float %1597, 0xBFF7154760000000
  %1645 = fmul fast float %1644, %1640
  %1646 = fmul fast float %1598, 0xBFF7154760000000
  %1647 = fmul fast float %1646, %1640
  %1648 = fmul fast float %1599, 0xBFF7154760000000
  %1649 = fmul fast float %1648, %1640
  %1650 = call float @dx.op.unary.f32(i32 21, float %1645)  ; Exp(value)
  %1651 = call float @dx.op.unary.f32(i32 21, float %1647)  ; Exp(value)
  %1652 = call float @dx.op.unary.f32(i32 21, float %1649)  ; Exp(value)
  %1653 = call float @dx.op.unary.f32(i32 7, float %1650)  ; Saturate(value)
  %1654 = call float @dx.op.unary.f32(i32 7, float %1651)  ; Saturate(value)
  %1655 = call float @dx.op.unary.f32(i32 7, float %1652)  ; Saturate(value)
  %1656 = fadd fast float %1653, -1.000000e+00
  %1657 = select i1 %1641, float %1656, float -1.000000e+00
  %1658 = fadd fast float %1654, -1.000000e+00
  %1659 = select i1 %1642, float %1658, float -1.000000e+00
  %1660 = fadd fast float %1655, -1.000000e+00
  %1661 = select i1 %1643, float %1660, float -1.000000e+00
  %1662 = fmul fast float %1657, %1191
  %1663 = fmul fast float %1659, %1191
  %1664 = fmul fast float %1661, %1191
  %1665 = fadd fast float %1662, 1.000000e+00
  %1666 = fadd fast float %1663, 1.000000e+00
  %1667 = fadd fast float %1664, 1.000000e+00
  %1668 = fmul fast float %1665, %883
  %1669 = fmul fast float %1666, %884
  %1670 = fmul fast float %1667, %885
  %1671 = fmul fast float %1665, %886
  %1672 = fmul fast float %1666, %887
  %1673 = fmul fast float %1667, %888
  br label %1674

; <label>:1674                                    ; preds = %1639, %1624
  %1675 = phi float [ %1668, %1639 ], [ %883, %1624 ]
  %1676 = phi float [ %1669, %1639 ], [ %884, %1624 ]
  %1677 = phi float [ %1670, %1639 ], [ %885, %1624 ]
  %1678 = phi float [ %1671, %1639 ], [ %886, %1624 ]
  %1679 = phi float [ %1672, %1639 ], [ %887, %1624 ]
  %1680 = phi float [ %1673, %1639 ], [ %888, %1624 ]
  %1681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1682 = extractvalue %dx.types.ResRet.i32 %1681, 0
  %1683 = and i32 %1682, 3
  %1684 = icmp eq i32 %1683, 3
  br i1 %1684, label %1763, label %1685

; <label>:1685                                    ; preds = %1674
  %1686 = and i32 %1682, 16
  %1687 = icmp ne i32 %1686, 0
  %1688 = select i1 %1687, float %1191, float 0.000000e+00
  %1689 = icmp eq i32 %1683, 0
  br i1 %1689, label %1690, label %1718

; <label>:1690                                    ; preds = %1685
  %1691 = and i32 %1682, 64
  %1692 = icmp ne i32 %1691, 0
  %1693 = select i1 %1692, float %1191, float 0.000000e+00
  %1694 = fsub fast float %1411, %1675
  %1695 = fsub fast float %1412, %1676
  %1696 = fsub fast float %1413, %1677
  %1697 = fmul fast float %1688, %1694
  %1698 = fmul fast float %1688, %1695
  %1699 = fmul fast float %1688, %1696
  %1700 = fadd fast float %1697, %1675
  %1701 = fadd fast float %1698, %1676
  %1702 = fadd fast float %1699, %1677
  %1703 = fsub fast float %1397, %889
  %1704 = fmul fast float %1688, %1703
  %1705 = fadd fast float %1704, %889
  %1706 = fsub fast float %1539, %1678
  %1707 = fsub fast float %1540, %1679
  %1708 = fsub fast float %1541, %1680
  %1709 = fmul fast float %1693, %1706
  %1710 = fmul fast float %1693, %1707
  %1711 = fmul fast float %1693, %1708
  %1712 = fadd fast float %1709, %1678
  %1713 = fadd fast float %1710, %1679
  %1714 = fadd fast float %1711, %1680
  %1715 = fsub fast float %1638, %893
  %1716 = fmul fast float %1688, %1715
  %1717 = fadd fast float %1716, %893
  br label %1763

; <label>:1718                                    ; preds = %1685
  %1719 = icmp eq i32 %1683, 1
  br i1 %1719, label %1720, label %1733

; <label>:1720                                    ; preds = %1718
  %1721 = fadd fast float %1411, -1.000000e+00
  %1722 = fadd fast float %1412, -1.000000e+00
  %1723 = fadd fast float %1413, -1.000000e+00
  %1724 = fmul fast float %1688, %1721
  %1725 = fmul fast float %1688, %1722
  %1726 = fmul fast float %1688, %1723
  %1727 = fadd fast float %1724, 1.000000e+00
  %1728 = fadd fast float %1725, 1.000000e+00
  %1729 = fadd fast float %1726, 1.000000e+00
  %1730 = fmul fast float %1727, %1675
  %1731 = fmul fast float %1728, %1676
  %1732 = fmul fast float %1729, %1677
  br label %1763

; <label>:1733                                    ; preds = %1718
  %1734 = icmp eq i32 %1683, 2
  br i1 %1734, label %1735, label %1763

; <label>:1735                                    ; preds = %1733
  %1736 = call float @dx.op.unary.f32(i32 24, float %1411)  ; Sqrt(value)
  %1737 = call float @dx.op.unary.f32(i32 24, float %1412)  ; Sqrt(value)
  %1738 = call float @dx.op.unary.f32(i32 24, float %1413)  ; Sqrt(value)
  %1739 = fadd fast float %1736, -5.000000e-01
  %1740 = fadd fast float %1737, -5.000000e-01
  %1741 = fadd fast float %1738, -5.000000e-01
  %1742 = fmul fast float %1739, %1688
  %1743 = fmul fast float %1740, %1688
  %1744 = fmul fast float %1741, %1688
  %1745 = fadd fast float %1742, 5.000000e-01
  %1746 = fadd fast float %1743, 5.000000e-01
  %1747 = fadd fast float %1744, 5.000000e-01
  %1748 = fmul fast float %1745, 2.000000e+00
  %1749 = fsub fast float 1.000000e+00, %1748
  %1750 = fmul fast float %1749, %1675
  %1751 = fadd fast float %1750, %1748
  %1752 = fmul fast float %1751, %1675
  %1753 = fmul fast float %1746, 2.000000e+00
  %1754 = fsub fast float 1.000000e+00, %1753
  %1755 = fmul fast float %1754, %1676
  %1756 = fadd fast float %1755, %1753
  %1757 = fmul fast float %1756, %1676
  %1758 = fmul fast float %1747, 2.000000e+00
  %1759 = fsub fast float 1.000000e+00, %1758
  %1760 = fmul fast float %1759, %1677
  %1761 = fadd fast float %1760, %1758
  %1762 = fmul fast float %1761, %1677
  br label %1763

; <label>:1763                                    ; preds = %1735, %1733, %1720, %1690, %1674
  %1764 = phi float [ %1675, %1674 ], [ %1752, %1735 ], [ %1675, %1733 ], [ %1730, %1720 ], [ %1700, %1690 ]
  %1765 = phi float [ %1676, %1674 ], [ %1757, %1735 ], [ %1676, %1733 ], [ %1731, %1720 ], [ %1701, %1690 ]
  %1766 = phi float [ %1677, %1674 ], [ %1762, %1735 ], [ %1677, %1733 ], [ %1732, %1720 ], [ %1702, %1690 ]
  %1767 = phi float [ %1678, %1674 ], [ %1678, %1735 ], [ %1678, %1733 ], [ %1678, %1720 ], [ %1712, %1690 ]
  %1768 = phi float [ %1679, %1674 ], [ %1679, %1735 ], [ %1679, %1733 ], [ %1679, %1720 ], [ %1713, %1690 ]
  %1769 = phi float [ %1680, %1674 ], [ %1680, %1735 ], [ %1680, %1733 ], [ %1680, %1720 ], [ %1714, %1690 ]
  %1770 = phi float [ %889, %1674 ], [ %889, %1735 ], [ %889, %1733 ], [ %889, %1720 ], [ %1705, %1690 ]
  %1771 = phi float [ %893, %1674 ], [ %893, %1735 ], [ %893, %1733 ], [ %893, %1720 ], [ %1717, %1690 ]
  %1772 = and i32 %1682, 12
  %1773 = icmp eq i32 %1772, 12
  br i1 %1773, label %1846, label %1774

; <label>:1774                                    ; preds = %1763
  %1775 = and i32 %1682, 2097184
  %1776 = icmp eq i32 %1775, 2097184
  %1777 = select i1 %1776, float %1191, float 0.000000e+00
  %1778 = and i32 %1682, 4194336
  %1779 = icmp eq i32 %1778, 4194336
  %1780 = select i1 %1779, float %1191, float 0.000000e+00
  %1781 = and i32 %1682, 8388640
  %1782 = icmp eq i32 %1781, 8388640
  %1783 = select i1 %1782, float %1191, float 0.000000e+00
  %1784 = icmp eq i32 %1772, 0
  br i1 %1784, label %1785, label %1798

; <label>:1785                                    ; preds = %1774
  %1786 = fsub fast float %1492, %881
  %1787 = fsub fast float %1493, %882
  %1788 = fmul fast float %1777, %1786
  %1789 = fmul fast float %1777, %1787
  %1790 = fadd fast float %1788, %881
  %1791 = fadd fast float %1789, %882
  %1792 = fsub fast float %1494, %892
  %1793 = fmul fast float %1780, %1792
  %1794 = fadd fast float %1793, %892
  %1795 = fsub fast float %1491, %891
  %1796 = fmul fast float %1783, %1795
  %1797 = fadd fast float %1796, %891
  br label %1846

; <label>:1798                                    ; preds = %1774
  %1799 = icmp eq i32 %1772, 4
  br i1 %1799, label %1800, label %1832

; <label>:1800                                    ; preds = %1798
  %1801 = fmul fast float %1777, %1492
  %1802 = fmul fast float %1777, %1493
  %1803 = fadd fast float %1801, %881
  %1804 = fadd fast float %1802, %882
  %1805 = call float @dx.op.binary.f32(i32 36, float %892, float %1494)  ; FMin(a,b)
  %1806 = fsub fast float %1805, %892
  %1807 = fmul fast float %1806, %1780
  %1808 = fadd fast float %1807, %892
  %1809 = fadd fast float %1491, %891
  %1810 = fmul fast float %1809, 0x3FF337FAE0000000
  %1811 = fmul fast float %891, %891
  %1812 = fmul fast float %1491, %1491
  %1813 = fadd fast float %1812, %1811
  %1814 = fmul fast float %1813, 0x3FE5152B00000000
  %1815 = fmul fast float %891, 0xBFCC1F85E0000000
  %1816 = fmul fast float %1815, %1491
  %1817 = fadd fast float %1816, 0xBFE1363700000000
  %1818 = fadd fast float %1817, %1810
  %1819 = fsub fast float %1818, %1814
  %1820 = fmul fast float %1809, 0x3FBA6F0D00000000
  %1821 = fmul fast float %1813, 0x3FD0432880000000
  %1822 = fmul fast float %891, 0xBFEF110800000000
  %1823 = fmul fast float %1822, %1491
  %1824 = fadd fast float %1823, 1.000000e+00
  %1825 = fsub fast float %1824, %1820
  %1826 = fadd fast float %1825, %1821
  %1827 = fdiv fast float %1819, %1826
  %1828 = call float @dx.op.unary.f32(i32 7, float %1827)  ; Saturate(value)
  %1829 = fsub fast float %1828, %891
  %1830 = fmul fast float %1829, %1783
  %1831 = fadd fast float %1830, %891
  br label %1846

; <label>:1832                                    ; preds = %1798
  %1833 = icmp eq i32 %1772, 8
  br i1 %1833, label %1834, label %1846

; <label>:1834                                    ; preds = %1832
  %1835 = fmul fast float %1777, %1492
  %1836 = fmul fast float %1777, %1493
  %1837 = fadd fast float %1835, %881
  %1838 = fadd fast float %1836, %882
  %1839 = call float @dx.op.binary.f32(i32 36, float %892, float %1494)  ; FMin(a,b)
  %1840 = fsub fast float %1839, %892
  %1841 = fmul fast float %1840, %1780
  %1842 = fadd fast float %1841, %892
  %1843 = fsub fast float %1491, %891
  %1844 = fmul fast float %1783, %1843
  %1845 = fadd fast float %1844, %891
  br label %1846

; <label>:1846                                    ; preds = %1834, %1832, %1800, %1785, %1763, %1190, %894, %880
  %1847 = phi float [ %881, %1763 ], [ %881, %1190 ], [ %881, %880 ], [ %1837, %1834 ], [ %881, %1832 ], [ %1803, %1800 ], [ %1790, %1785 ], [ %881, %894 ]
  %1848 = phi float [ %882, %1763 ], [ %882, %1190 ], [ %882, %880 ], [ %1838, %1834 ], [ %882, %1832 ], [ %1804, %1800 ], [ %1791, %1785 ], [ %882, %894 ]
  %1849 = phi float [ %1764, %1763 ], [ %883, %1190 ], [ %883, %880 ], [ %1764, %1834 ], [ %1764, %1832 ], [ %1764, %1800 ], [ %1764, %1785 ], [ %883, %894 ]
  %1850 = phi float [ %1765, %1763 ], [ %884, %1190 ], [ %884, %880 ], [ %1765, %1834 ], [ %1765, %1832 ], [ %1765, %1800 ], [ %1765, %1785 ], [ %884, %894 ]
  %1851 = phi float [ %1766, %1763 ], [ %885, %1190 ], [ %885, %880 ], [ %1766, %1834 ], [ %1766, %1832 ], [ %1766, %1800 ], [ %1766, %1785 ], [ %885, %894 ]
  %1852 = phi float [ %1767, %1763 ], [ %886, %1190 ], [ %886, %880 ], [ %1767, %1834 ], [ %1767, %1832 ], [ %1767, %1800 ], [ %1767, %1785 ], [ %886, %894 ]
  %1853 = phi float [ %1768, %1763 ], [ %887, %1190 ], [ %887, %880 ], [ %1768, %1834 ], [ %1768, %1832 ], [ %1768, %1800 ], [ %1768, %1785 ], [ %887, %894 ]
  %1854 = phi float [ %1769, %1763 ], [ %888, %1190 ], [ %888, %880 ], [ %1769, %1834 ], [ %1769, %1832 ], [ %1769, %1800 ], [ %1769, %1785 ], [ %888, %894 ]
  %1855 = phi float [ %1770, %1763 ], [ %889, %1190 ], [ %889, %880 ], [ %1770, %1834 ], [ %1770, %1832 ], [ %1770, %1800 ], [ %1770, %1785 ], [ %889, %894 ]
  %1856 = phi float [ %891, %1763 ], [ %891, %1190 ], [ %891, %880 ], [ %1845, %1834 ], [ %891, %1832 ], [ %1831, %1800 ], [ %1797, %1785 ], [ %891, %894 ]
  %1857 = phi float [ %892, %1763 ], [ %892, %1190 ], [ %892, %880 ], [ %1842, %1834 ], [ %892, %1832 ], [ %1808, %1800 ], [ %1794, %1785 ], [ %892, %894 ]
  %1858 = phi float [ %1771, %1763 ], [ %893, %1190 ], [ %893, %880 ], [ %1771, %1834 ], [ %1771, %1832 ], [ %1771, %1800 ], [ %1771, %1785 ], [ %893, %894 ]
  br i1 %360, label %2811, label %1859

; <label>:1859                                    ; preds = %1846
  %1860 = icmp ult i32 %413, 3
  %1861 = add i32 %32, 56
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = add i32 %32, 60
  %1865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.i32 %1865, 0
  %1867 = or i32 %1866, %1863
  %1868 = icmp eq i32 %1867, 0
  br i1 %1868, label %2811, label %1869

; <label>:1869                                    ; preds = %1859
  %1870 = and i32 %1863, 262144
  %1871 = icmp ne i32 %1870, 0
  %1872 = select i1 %1871, float %35, float 1.000000e+00
  %1873 = select i1 %1871, float %36, float 0.000000e+00
  %1874 = select i1 %1871, float %37, float 0.000000e+00
  %1875 = select i1 %1871, float %38, float 1.000000e+00
  %1876 = select i1 %1871, float %39, float %55
  %1877 = select i1 %1871, float %40, float %56
  %1878 = add i32 %32, 316
  %1879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.i32 %1879, 0
  %1881 = lshr i32 %1880, 16
  %1882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1881)  ; LegacyF16ToF32(value)
  %1883 = fmul fast float %1882, 0x3F50624DE0000000
  %1884 = add i32 %32, 120
  %1885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.i32 %1885, 0
  %1887 = lshr i32 %1886, 16
  %1888 = and i32 %1887, 255
  %1889 = lshr i32 %1886, 24
  %1890 = add i32 %32, 324
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = and i32 %1892, 65535
  %1894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1893)  ; LegacyF16ToF32(value)
  %1895 = lshr i32 %1892, 16
  %1896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1895)  ; LegacyF16ToF32(value)
  %1897 = add i32 %32, 64
  %1898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.i32 %1898, 0
  %1900 = lshr i32 %1899, 22
  %1901 = shl nuw nsw i32 %1900, 5
  %1902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1901)  ; LegacyF16ToF32(value)
  %1903 = shl i32 %1899, 4
  %1904 = and i32 %1903, 32752
  %1905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1904)  ; LegacyF16ToF32(value)
  %1906 = lshr i32 %1899, 7
  %1907 = and i32 %1906, 32752
  %1908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1907)  ; LegacyF16ToF32(value)
  %1909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1910 = extractvalue %dx.types.CBufRet.f32 %1909, 3
  %1911 = fmul fast float %1910, 1.000000e+03
  %1912 = fmul fast float %310, %1911
  %1913 = call float @dx.op.unary.f32(i32 22, float %1912)  ; Frc(value)
  %1914 = fadd fast float %1913, %300
  %1915 = fmul fast float %311, %1911
  %1916 = call float @dx.op.unary.f32(i32 22, float %1915)  ; Frc(value)
  %1917 = fadd fast float %1916, %302
  %1918 = fmul fast float %1883, %1911
  %1919 = call float @dx.op.unary.f32(i32 22, float %1918)  ; Frc(value)
  %1920 = fmul fast float %1919, 0x401921FB60000000
  %1921 = fadd fast float %1920, %1902
  %1922 = call float @dx.op.unary.f32(i32 13, float %1921)  ; Sin(value)
  %1923 = call float @dx.op.unary.f32(i32 12, float %1921)  ; Cos(value)
  %1924 = fsub fast float -0.000000e+00, %1922
  %1925 = fadd fast float %1876, -5.000000e-01
  %1926 = fadd fast float %1877, -5.000000e-01
  %1927 = fmul fast float %1894, %1925
  %1928 = fmul fast float %1896, %1926
  %1929 = fadd fast float %1927, 5.000000e-01
  %1930 = fadd fast float %1928, 5.000000e-01
  %1931 = fmul fast float %1905, %1929
  %1932 = fmul fast float %1908, %1930
  %1933 = fmul fast float %1923, %1931
  %1934 = call float @dx.op.tertiary.f32(i32 46, float %1924, float %1932, float %1933)  ; FMad(a,b,c)
  %1935 = fmul fast float %1922, %1931
  %1936 = call float @dx.op.tertiary.f32(i32 46, float %1923, float %1932, float %1935)  ; FMad(a,b,c)
  %1937 = fadd fast float %1914, %1934
  %1938 = fadd fast float %1917, %1936
  %1939 = icmp ugt i32 %1888, 1
  %1940 = icmp ugt i32 %1886, 33554431
  %1941 = or i1 %1940, %1939
  br i1 %1941, label %1942, label %1967

; <label>:1942                                    ; preds = %1869
  %1943 = add i32 %32, 260
  %1944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1945 = extractvalue %dx.types.ResRet.i32 %1944, 0
  %1946 = lshr i32 %1945, 16
  %1947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1946)  ; LegacyF16ToF32(value)
  %1948 = fmul fast float %1910, %1947
  %1949 = call float @dx.op.unary.f32(i32 22, float %1948)  ; Frc(value)
  %1950 = mul nuw nsw i32 %1888, %1889
  %1951 = uitofp i32 %1950 to float
  %1952 = fmul fast float %1949, %1951
  %1953 = call float @dx.op.unary.f32(i32 27, float %1952)  ; Round_ni(value)
  %1954 = fptoui float %1953 to i32
  %1955 = urem i32 %1954, %1888
  %1956 = udiv i32 %1954, %1889
  %1957 = call float @dx.op.unary.f32(i32 22, float %1937)  ; Frc(value)
  %1958 = call float @dx.op.unary.f32(i32 22, float %1938)  ; Frc(value)
  %1959 = uitofp i32 %1955 to float
  %1960 = uitofp i32 %1956 to float
  %1961 = fadd fast float %1957, %1959
  %1962 = fadd fast float %1958, %1960
  %1963 = uitofp i32 %1888 to float
  %1964 = uitofp i32 %1889 to float
  %1965 = fdiv fast float %1961, %1963
  %1966 = fdiv fast float %1962, %1964
  br label %1967

; <label>:1967                                    ; preds = %1942, %1869
  %1968 = phi float [ %1965, %1942 ], [ %1937, %1869 ]
  %1969 = phi float [ %1966, %1942 ], [ %1938, %1869 ]
  %1970 = and i32 %1863, 16777216
  %1971 = icmp eq i32 %1970, 0
  br i1 %1971, label %2081, label %1972

; <label>:1972                                    ; preds = %1967
  %1973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1974 = extractvalue %dx.types.CBufRet.f32 %1973, 0
  %1975 = extractvalue %dx.types.CBufRet.f32 %1973, 1
  %1976 = extractvalue %dx.types.CBufRet.f32 %1973, 2
  %1977 = fadd fast float %1974, %130
  %1978 = fadd fast float %1975, %131
  %1979 = fadd fast float %1976, %132
  %1980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1981 = extractvalue %dx.types.CBufRet.f32 %1980, 0
  %1982 = call float @dx.op.unary.f32(i32 7, float %1981)  ; Saturate(value)
  %1983 = icmp eq i32 %33, 65535
  br i1 %1983, label %2078, label %1984

; <label>:1984                                    ; preds = %1972
  %1985 = lshr i32 %33, 1
  %1986 = shl i32 %1985, 2
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = and i32 %33, 1
  %1990 = icmp ne i32 %1989, 0
  %1991 = lshr i32 %1988, 16
  %1992 = and i32 %1988, 65535
  %1993 = select i1 %1990, i32 %1991, i32 %1992
  %1994 = icmp eq i32 %1993, 65535
  br i1 %1994, label %2074, label %1995

; <label>:1995                                    ; preds = %1984
  %1996 = mul nuw nsw i32 %1993, 40
  %1997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.f32 %1997, 0
  %1999 = extractvalue %dx.types.ResRet.f32 %1997, 1
  %2000 = extractvalue %dx.types.ResRet.f32 %1997, 2
  %2001 = add nuw nsw i32 %1996, 12
  %2002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.f32 %2002, 0
  %2004 = extractvalue %dx.types.ResRet.f32 %2002, 1
  %2005 = extractvalue %dx.types.ResRet.f32 %2002, 2
  %2006 = add nuw nsw i32 %1996, 24
  %2007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2008 = extractvalue %dx.types.ResRet.f32 %2007, 0
  %2009 = extractvalue %dx.types.ResRet.f32 %2007, 1
  %2010 = extractvalue %dx.types.ResRet.f32 %2007, 2
  %2011 = add nuw nsw i32 %1996, 36
  %2012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.f32 %2012, 0
  %2014 = fsub fast float %1977, %1998
  %2015 = fsub fast float %1978, %1999
  %2016 = fsub fast float %1979, %2000
  %2017 = fmul fast float %2013, %2014
  %2018 = fmul fast float %2013, %2015
  %2019 = fmul fast float %2013, %2016
  %2020 = call float @dx.op.unary.f32(i32 27, float %2017)  ; Round_ni(value)
  %2021 = call float @dx.op.unary.f32(i32 27, float %2018)  ; Round_ni(value)
  %2022 = call float @dx.op.unary.f32(i32 27, float %2019)  ; Round_ni(value)
  %2023 = fadd fast float %2020, 5.000000e-01
  %2024 = fadd fast float %2021, 5.000000e-01
  %2025 = fadd fast float %2022, 5.000000e-01
  %2026 = fmul fast float %2023, %2003
  %2027 = fmul fast float %2024, %2004
  %2028 = fmul fast float %2025, %2005
  %2029 = shl i32 %33, 2
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = add i32 %2031, 0
  %2033 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2032, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2034 = call float @dx.op.unary.f32(i32 22, float %2026)  ; Frc(value)
  %2035 = call float @dx.op.unary.f32(i32 22, float %2027)  ; Frc(value)
  %2036 = call float @dx.op.unary.f32(i32 22, float %2028)  ; Frc(value)
  %2037 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2033, %dx.types.Handle %29, float %2034, float %2035, float %2036, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2038 = extractvalue %dx.types.ResRet.f32 %2037, 0
  %2039 = extractvalue %dx.types.ResRet.f32 %2037, 1
  %2040 = extractvalue %dx.types.ResRet.f32 %2037, 2
  %2041 = fmul fast float %2038, 1.023000e+03
  %2042 = fmul fast float %2039, 1.023000e+03
  %2043 = fmul fast float %2040, 1.023000e+03
  %2044 = fadd fast float %2041, 5.000000e-01
  %2045 = fadd fast float %2042, 5.000000e-01
  %2046 = fadd fast float %2043, 5.000000e-01
  %2047 = call float @dx.op.unary.f32(i32 27, float %2044)  ; Round_ni(value)
  %2048 = call float @dx.op.unary.f32(i32 27, float %2045)  ; Round_ni(value)
  %2049 = call float @dx.op.unary.f32(i32 27, float %2046)  ; Round_ni(value)
  %2050 = fsub fast float %2017, %2020
  %2051 = fsub fast float %2018, %2021
  %2052 = fsub fast float %2019, %2022
  %2053 = fmul fast float %2050, 7.500000e-01
  %2054 = fmul fast float %2051, 7.500000e-01
  %2055 = fmul fast float %2052, 7.500000e-01
  %2056 = fadd fast float %2020, 1.250000e-01
  %2057 = fadd fast float %2056, %2053
  %2058 = fadd fast float %2057, %2047
  %2059 = fadd fast float %2021, 1.250000e-01
  %2060 = fadd fast float %2059, %2054
  %2061 = fadd fast float %2060, %2048
  %2062 = fadd fast float %2022, 1.250000e-01
  %2063 = fadd fast float %2062, %2055
  %2064 = fadd fast float %2063, %2049
  %2065 = fmul fast float %2058, %2008
  %2066 = fmul fast float %2061, %2009
  %2067 = fmul fast float %2064, %2010
  %2068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.i32 %2068, 0
  %2070 = add i32 %2069, 0
  %2071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2070, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2071, %dx.types.Handle %27, float %2065, float %2066, float %2067, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2073 = extractvalue %dx.types.ResRet.f32 %2072, 0
  br label %2074

; <label>:2074                                    ; preds = %1995, %1984
  %2075 = phi float [ %2073, %1995 ], [ -1.000000e+00, %1984 ]
  %2076 = fadd fast float %2075, %1982
  %2077 = call float @dx.op.unary.f32(i32 7, float %2076)  ; Saturate(value)
  br label %2078

; <label>:2078                                    ; preds = %2074, %1972
  %2079 = phi float [ %2077, %2074 ], [ %1982, %1972 ]
  %2080 = fmul fast float %2079, %409
  br label %2081

; <label>:2081                                    ; preds = %2078, %1967
  %2082 = phi float [ %2080, %2078 ], [ %409, %1967 ]
  %2083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.i32 %2083, 0
  %2085 = and i32 %2084, 256
  %2086 = icmp eq i32 %2085, 0
  br i1 %2086, label %2133, label %2087

; <label>:2087                                    ; preds = %2081
  %2088 = add i32 %32, 432
  %2089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2090 = extractvalue %dx.types.ResRet.i32 %2089, 0
  %2091 = add i32 %2090, 0
  %2092 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2091, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2093 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2092, %dx.types.Handle %64, float %1968, float %1969, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2094 = extractvalue %dx.types.ResRet.f32 %2093, 0
  %2095 = add i32 %32, 132
  %2096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2095, i32 undef)  ; BufferLoad(srv,index,wot)
  %2097 = extractvalue %dx.types.ResRet.i32 %2096, 0
  %2098 = shl i32 %2097, 4
  %2099 = and i32 %2098, 32752
  %2100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2099)  ; LegacyF16ToF32(value)
  %2101 = lshr i32 %2097, 7
  %2102 = and i32 %2101, 32752
  %2103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2102)  ; LegacyF16ToF32(value)
  %2104 = fsub fast float 1.000000e+00, %2082
  %2105 = call float @dx.op.binary.f32(i32 35, float %2104, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2106 = bitcast float %2082 to i32
  %2107 = sitofp i32 %2106 to float
  %2108 = fadd fast float %2107, 0xC1CFBF8940000000
  %2109 = fmul fast float %2103, %2108
  %2110 = fadd fast float %2109, 0x41CFBF8940000000
  %2111 = fptosi float %2110 to i32
  %2112 = bitcast i32 %2111 to float
  %2113 = bitcast float %2105 to i32
  %2114 = sitofp i32 %2113 to float
  %2115 = fadd fast float %2114, 0xC1CFBF8940000000
  %2116 = fmul fast float %2115, %2103
  %2117 = fadd fast float %2116, 0x41CFBF8940000000
  %2118 = fptosi float %2117 to i32
  %2119 = bitcast i32 %2118 to float
  %2120 = fmul fast float %2112, %2100
  %2121 = fmul fast float %2119, %2100
  %2122 = fsub fast float %2105, %2120
  %2123 = fadd fast float %2121, %2105
  %2124 = call float @dx.op.unary.f32(i32 7, float %2122)  ; Saturate(value)
  %2125 = call float @dx.op.unary.f32(i32 7, float %2123)  ; Saturate(value)
  %2126 = fsub fast float %2094, %2124
  %2127 = fsub fast float %2125, %2124
  %2128 = bitcast float %2127 to i32
  %2129 = sub nsw i32 2129859010, %2128
  %2130 = bitcast i32 %2129 to float
  %2131 = fmul fast float %2130, %2126
  %2132 = call float @dx.op.unary.f32(i32 7, float %2131)  ; Saturate(value)
  br label %2133

; <label>:2133                                    ; preds = %2087, %2081
  %2134 = phi float [ %2132, %2087 ], [ %2082, %2081 ]
  %2135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2136 = extractvalue %dx.types.ResRet.i32 %2135, 0
  %2137 = and i32 %2136, 128
  %2138 = icmp eq i32 %2137, 0
  br i1 %2138, label %2155, label %2139

; <label>:2139                                    ; preds = %2133
  %2140 = add i32 %32, 416
  %2141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.i32 %2141, 0
  %2143 = add i32 %2142, 0
  %2144 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2143, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2145 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2144, %dx.types.Handle %64, float %1968, float %1969, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2146 = extractvalue %dx.types.ResRet.f32 %2145, 0
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = and i32 %2148, 524288
  %2150 = icmp ne i32 %2149, 0
  %2151 = fcmp fast ogt float %2146, 0x3FE0101020000000
  %2152 = select i1 %2151, float 1.000000e+00, float 0.000000e+00
  %2153 = select i1 %2150, float %2152, float %2146
  %2154 = fmul fast float %2153, %2134
  br label %2155

; <label>:2155                                    ; preds = %2139, %2133
  %2156 = phi float [ %2154, %2139 ], [ %2134, %2133 ]
  %2157 = fcmp fast ult float %2156, 0x3F70101020000000
  br i1 %2157, label %2811, label %2158

; <label>:2158                                    ; preds = %2155
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = and i32 %2160, 16
  %2162 = icmp eq i32 %2161, 0
  br i1 %2162, label %2361, label %2163

; <label>:2163                                    ; preds = %2158
  %2164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2165 = extractvalue %dx.types.ResRet.i32 %2164, 0
  %2166 = add i32 %32, 368
  %2167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2166, i32 undef)  ; BufferLoad(srv,index,wot)
  %2168 = extractvalue %dx.types.ResRet.i32 %2167, 0
  %2169 = add i32 %2168, 0
  %2170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2169, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2171 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2170, %dx.types.Handle %63, float %1968, float %1969, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2172 = extractvalue %dx.types.ResRet.f32 %2171, 0
  %2173 = extractvalue %dx.types.ResRet.f32 %2171, 1
  %2174 = extractvalue %dx.types.ResRet.f32 %2171, 2
  %2175 = extractvalue %dx.types.ResRet.f32 %2171, 3
  %2176 = and i32 %2165, 255
  %2177 = uitofp i32 %2176 to float
  %2178 = lshr i32 %2165, 8
  %2179 = and i32 %2178, 255
  %2180 = uitofp i32 %2179 to float
  %2181 = fmul fast float %2175, %2177
  %2182 = fadd fast float %2181, %2180
  %2183 = fmul fast float %2182, 0x3F70101000000000
  %2184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2185 = extractvalue %dx.types.ResRet.i32 %2184, 0
  %2186 = and i32 %2185, 512
  %2187 = icmp eq i32 %2186, 0
  br i1 %2187, label %2196, label %2188

; <label>:2188                                    ; preds = %2163
  %2189 = add i32 %32, 448
  %2190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2189, i32 undef)  ; BufferLoad(srv,index,wot)
  %2191 = extractvalue %dx.types.ResRet.i32 %2190, 0
  %2192 = add i32 %2191, 0
  %2193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2192, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2194 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2193, %dx.types.Handle %64, float %1968, float %1969, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2195 = extractvalue %dx.types.ResRet.f32 %2194, 0
  br label %2196

; <label>:2196                                    ; preds = %2188, %2163
  %2197 = phi float [ %2195, %2188 ], [ 1.000000e+00, %2163 ]
  %2198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.i32 %2198, 0
  %2200 = and i32 %2199, 33554432
  %2201 = icmp eq i32 %2200, 0
  br i1 %2201, label %2308, label %2202

; <label>:2202                                    ; preds = %2196
  %2203 = add i32 %32, 256
  %2204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2203, i32 undef)  ; BufferLoad(srv,index,wot)
  %2205 = extractvalue %dx.types.ResRet.i32 %2204, 0
  %2206 = and i32 %2205, 65535
  %2207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2206)  ; LegacyF16ToF32(value)
  %2208 = lshr i32 %2205, 16
  %2209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2208)  ; LegacyF16ToF32(value)
  %2210 = add i32 %32, 260
  %2211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2210, i32 undef)  ; BufferLoad(srv,index,wot)
  %2212 = extractvalue %dx.types.ResRet.i32 %2211, 0
  %2213 = and i32 %2212, 65535
  %2214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2213)  ; LegacyF16ToF32(value)
  %2215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %2216 = extractvalue %dx.types.ResRet.i32 %2215, 0
  %2217 = lshr i32 %2216, 24
  %2218 = uitofp i32 %2217 to float
  %2219 = fmul fast float %2218, 0x3F70101020000000
  %2220 = and i32 %2216, 255
  %2221 = uitofp i32 %2220 to float
  %2222 = fmul fast float %2221, 0x3F70101020000000
  %2223 = lshr i32 %2216, 8
  %2224 = and i32 %2223, 255
  %2225 = uitofp i32 %2224 to float
  %2226 = fmul fast float %2225, 0x3F70101020000000
  %2227 = lshr i32 %2216, 16
  %2228 = and i32 %2227, 255
  %2229 = uitofp i32 %2228 to float
  %2230 = fmul fast float %2229, 0x3F70101020000000
  %2231 = add i32 %32, 252
  %2232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2231, i32 undef)  ; BufferLoad(srv,index,wot)
  %2233 = extractvalue %dx.types.ResRet.i32 %2232, 0
  %2234 = lshr i32 %2233, 24
  %2235 = uitofp i32 %2234 to float
  %2236 = fmul fast float %2235, 0x3F70101020000000
  %2237 = and i32 %2233, 255
  %2238 = uitofp i32 %2237 to float
  %2239 = fmul fast float %2238, 0x3F70101020000000
  %2240 = lshr i32 %2233, 8
  %2241 = and i32 %2240, 255
  %2242 = uitofp i32 %2241 to float
  %2243 = fmul fast float %2242, 0x3F70101020000000
  %2244 = lshr i32 %2233, 16
  %2245 = and i32 %2244, 255
  %2246 = uitofp i32 %2245 to float
  %2247 = fmul fast float %2246, 0x3F70101020000000
  %2248 = bitcast float %2172 to i32
  %2249 = ashr i32 %2248, 1
  %2250 = sub nsw i32 1597463174, %2249
  %2251 = bitcast i32 %2250 to float
  %2252 = fmul fast float %2172, 5.000000e-01
  %2253 = fmul fast float %2251, %2251
  %2254 = fmul fast float %2253, %2252
  %2255 = fsub fast float 1.500000e+00, %2254
  %2256 = fmul fast float %2251, %2172
  %2257 = fmul fast float %2256, %2255
  %2258 = bitcast float %2173 to i32
  %2259 = ashr i32 %2258, 1
  %2260 = sub nsw i32 1597463174, %2259
  %2261 = bitcast i32 %2260 to float
  %2262 = fmul fast float %2173, 5.000000e-01
  %2263 = fmul fast float %2261, %2261
  %2264 = fmul fast float %2263, %2262
  %2265 = fsub fast float 1.500000e+00, %2264
  %2266 = fmul fast float %2261, %2173
  %2267 = fmul fast float %2266, %2265
  %2268 = bitcast float %2174 to i32
  %2269 = ashr i32 %2268, 1
  %2270 = sub nsw i32 1597463174, %2269
  %2271 = bitcast i32 %2270 to float
  %2272 = fmul fast float %2174, 5.000000e-01
  %2273 = fmul fast float %2271, %2271
  %2274 = fmul fast float %2273, %2272
  %2275 = fsub fast float 1.500000e+00, %2274
  %2276 = fmul fast float %2271, %2174
  %2277 = fmul fast float %2276, %2275
  %2278 = fsub fast float %2257, %2239
  %2279 = fsub fast float %2267, %2243
  %2280 = fsub fast float %2277, %2247
  %2281 = fmul fast float %2278, %2207
  %2282 = fmul fast float %2279, %2209
  %2283 = fmul fast float %2280, %2214
  %2284 = fadd fast float %2281, %2222
  %2285 = fadd fast float %2282, %2226
  %2286 = fadd fast float %2283, %2230
  %2287 = call float @dx.op.unary.f32(i32 7, float %2284)  ; Saturate(value)
  %2288 = call float @dx.op.unary.f32(i32 7, float %2285)  ; Saturate(value)
  %2289 = call float @dx.op.unary.f32(i32 7, float %2286)  ; Saturate(value)
  %2290 = fmul fast float %2287, %2287
  %2291 = fmul fast float %2288, %2288
  %2292 = fmul fast float %2289, %2289
  %2293 = fsub fast float %2290, %2172
  %2294 = fsub fast float %2291, %2173
  %2295 = fsub fast float %2292, %2174
  %2296 = fmul fast float %2293, %2197
  %2297 = fmul fast float %2294, %2197
  %2298 = fmul fast float %2295, %2197
  %2299 = fadd fast float %2296, %2172
  %2300 = fadd fast float %2297, %2173
  %2301 = fadd fast float %2298, %2174
  %2302 = fadd fast float %2219, %2183
  %2303 = fsub fast float %2302, %2236
  %2304 = call float @dx.op.unary.f32(i32 7, float %2303)  ; Saturate(value)
  %2305 = fsub fast float %2304, %2183
  %2306 = fmul fast float %2305, %2197
  %2307 = fadd fast float %2306, %2183
  br label %2361

; <label>:2308                                    ; preds = %2196
  %2309 = and i32 %2199, 134217728
  %2310 = icmp eq i32 %2309, 0
  br i1 %2310, label %2345, label %2311

; <label>:2311                                    ; preds = %2308
  %2312 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %2313 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %2314 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %2315 = fadd fast float %2312, -5.000000e-01
  %2316 = fadd fast float %2313, -5.000000e-01
  %2317 = fadd fast float %2314, -5.000000e-01
  %2318 = fmul fast float %2315, %2197
  %2319 = fmul fast float %2316, %2197
  %2320 = fmul fast float %2317, %2197
  %2321 = fadd fast float %2318, 5.000000e-01
  %2322 = fadd fast float %2319, 5.000000e-01
  %2323 = fadd fast float %2320, 5.000000e-01
  %2324 = call float @dx.op.unary.f32(i32 24, float %2172)  ; Sqrt(value)
  %2325 = call float @dx.op.unary.f32(i32 24, float %2173)  ; Sqrt(value)
  %2326 = call float @dx.op.unary.f32(i32 24, float %2174)  ; Sqrt(value)
  %2327 = fmul fast float %2321, 2.000000e+00
  %2328 = fsub fast float 1.000000e+00, %2327
  %2329 = fmul fast float %2328, %2324
  %2330 = fadd fast float %2329, %2327
  %2331 = fmul fast float %2330, %2324
  %2332 = fmul fast float %2322, 2.000000e+00
  %2333 = fsub fast float 1.000000e+00, %2332
  %2334 = fmul fast float %2333, %2325
  %2335 = fadd fast float %2334, %2332
  %2336 = fmul fast float %2335, %2325
  %2337 = fmul fast float %2323, 2.000000e+00
  %2338 = fsub fast float 1.000000e+00, %2337
  %2339 = fmul fast float %2338, %2326
  %2340 = fadd fast float %2339, %2337
  %2341 = fmul fast float %2340, %2326
  %2342 = fmul fast float %2331, %2331
  %2343 = fmul fast float %2336, %2336
  %2344 = fmul fast float %2341, %2341
  br label %2361

; <label>:2345                                    ; preds = %2308
  %2346 = fmul fast float %287, %287
  %2347 = fmul fast float %291, %291
  %2348 = fmul fast float %295, %295
  %2349 = fadd fast float %2346, -1.000000e+00
  %2350 = fadd fast float %2347, -1.000000e+00
  %2351 = fadd fast float %2348, -1.000000e+00
  %2352 = fmul fast float %2197, %2349
  %2353 = fmul fast float %2197, %2350
  %2354 = fmul fast float %2197, %2351
  %2355 = fadd fast float %2352, 1.000000e+00
  %2356 = fadd fast float %2353, 1.000000e+00
  %2357 = fadd fast float %2354, 1.000000e+00
  %2358 = fmul fast float %2355, %2172
  %2359 = fmul fast float %2356, %2173
  %2360 = fmul fast float %2357, %2174
  br label %2361

; <label>:2361                                    ; preds = %2345, %2311, %2202, %2158
  %2362 = phi float [ %2307, %2202 ], [ %2183, %2311 ], [ %2183, %2345 ], [ 0x3FA23C0BE0000000, %2158 ]
  %2363 = phi float [ %2299, %2202 ], [ %2342, %2311 ], [ %2358, %2345 ], [ 1.000000e+00, %2158 ]
  %2364 = phi float [ %2300, %2202 ], [ %2343, %2311 ], [ %2359, %2345 ], [ 1.000000e+00, %2158 ]
  %2365 = phi float [ %2301, %2202 ], [ %2344, %2311 ], [ %2360, %2345 ], [ 1.000000e+00, %2158 ]
  %2366 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2367 = extractvalue %dx.types.CBufRet.i32 %2366, 1
  %2368 = and i32 %2367, 1
  %2369 = icmp ne i32 %2368, 0
  %2370 = add i32 %32, 356
  %2371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2370, i32 undef)  ; BufferLoad(srv,index,wot)
  %2372 = extractvalue %dx.types.ResRet.i32 %2371, 0
  %2373 = and i32 %2372, 32
  %2374 = icmp ne i32 %2373, 0
  %2375 = and i1 %2369, %2374
  %2376 = select i1 %2375, float 1.000000e+00, float %2363
  %2377 = select i1 %2375, float 0x3FD3333340000000, float %2364
  %2378 = select i1 %2375, float 0x3FD3333340000000, float %2365
  %2379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2380 = extractvalue %dx.types.ResRet.i32 %2379, 0
  %2381 = and i32 %2380, 32
  %2382 = icmp eq i32 %2381, 0
  br i1 %2382, label %2455, label %2383

; <label>:2383                                    ; preds = %2361
  %2384 = add i32 %32, 124
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2384, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = add i32 %32, 384
  %2388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2387, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.i32 %2388, 0
  %2390 = add i32 %2389, 0
  %2391 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2390, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2392 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2391, %dx.types.Handle %63, float %1968, float %1969, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2393 = extractvalue %dx.types.ResRet.f32 %2392, 0
  %2394 = extractvalue %dx.types.ResRet.f32 %2392, 1
  %2395 = extractvalue %dx.types.ResRet.f32 %2392, 2
  %2396 = extractvalue %dx.types.ResRet.f32 %2392, 3
  %2397 = and i32 %2386, 255
  %2398 = uitofp i32 %2397 to float
  %2399 = lshr i32 %2386, 8
  %2400 = and i32 %2399, 255
  %2401 = uitofp i32 %2400 to float
  %2402 = lshr i32 %2386, 16
  %2403 = and i32 %2402, 255
  %2404 = uitofp i32 %2403 to float
  %2405 = fmul fast float %2404, 0x3F70101000000000
  %2406 = fmul fast float %2393, %2398
  %2407 = fadd fast float %2406, %2401
  %2408 = fmul fast float %2407, 0x3F70101000000000
  %2409 = fadd fast float %2394, -5.000000e-01
  %2410 = fadd fast float %2396, -5.000000e-01
  %2411 = fmul fast float %2409, %2405
  %2412 = fmul fast float %2410, %2405
  %2413 = fadd fast float %2411, 5.000000e-01
  %2414 = fadd fast float %2412, 5.000000e-01
  %2415 = fmul fast float %2413, 2.000000e+00
  %2416 = fadd fast float %2415, -1.000000e+00
  %2417 = fmul fast float %2414, 2.000000e+00
  %2418 = fadd fast float %2417, -1.000000e+00
  %2419 = fadd fast float %2416, %2418
  %2420 = fmul fast float %2419, 5.000000e-01
  %2421 = fsub fast float %2416, %2418
  %2422 = fmul fast float %2421, 5.000000e-01
  %2423 = call float @dx.op.unary.f32(i32 6, float %2420)  ; FAbs(value)
  %2424 = fsub fast float 1.000000e+00, %2423
  %2425 = call float @dx.op.unary.f32(i32 6, float %2422)  ; FAbs(value)
  %2426 = fsub fast float %2424, %2425
  %2427 = call float @dx.op.dot3.f32(i32 55, float %2420, float %2422, float %2426, float %2420, float %2422, float %2426)  ; Dot3(ax,ay,az,bx,by,bz)
  %2428 = call float @dx.op.unary.f32(i32 25, float %2427)  ; Rsqrt(value)
  %2429 = fmul fast float %2420, %2428
  %2430 = fmul fast float %2422, %2428
  %2431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2432 = extractvalue %dx.types.ResRet.i32 %2431, 0
  %2433 = and i32 %2432, 67108864
  %2434 = icmp eq i32 %2433, 0
  br i1 %2434, label %2451, label %2435

; <label>:2435                                    ; preds = %2383
  %2436 = add i32 %32, 312
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = and i32 %2438, 65535
  %2440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2439)  ; LegacyF16ToF32(value)
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = and i32 %2442, 65535
  %2444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2443)  ; LegacyF16ToF32(value)
  %2445 = lshr i32 %2438, 16
  %2446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2445)  ; LegacyF16ToF32(value)
  %2447 = fsub fast float %2408, %2446
  %2448 = fmul fast float %2447, %2440
  %2449 = fadd fast float %2448, %2444
  %2450 = call float @dx.op.unary.f32(i32 7, float %2449)  ; Saturate(value)
  br label %2451

; <label>:2451                                    ; preds = %2435, %2383
  %2452 = phi float [ %2450, %2435 ], [ %2408, %2383 ]
  %2453 = call float @dx.op.dot2.f32(i32 54, float %2429, float %2430, float %1872, float %1873)  ; Dot2(ax,ay,bx,by)
  %2454 = call float @dx.op.dot2.f32(i32 54, float %2429, float %2430, float %1874, float %1875)  ; Dot2(ax,ay,bx,by)
  br label %2455

; <label>:2455                                    ; preds = %2451, %2361
  %2456 = phi float [ %2452, %2451 ], [ 0x3FD6666660000000, %2361 ]
  %2457 = phi float [ %2453, %2451 ], [ 0.000000e+00, %2361 ]
  %2458 = phi float [ %2454, %2451 ], [ 0.000000e+00, %2361 ]
  %2459 = phi float [ %2395, %2451 ], [ 1.000000e+00, %2361 ]
  %2460 = add i32 %32, 192
  %2461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2460, i32 undef)  ; BufferLoad(srv,index,wot)
  %2462 = extractvalue %dx.types.ResRet.i32 %2461, 0
  %2463 = lshr i32 %2462, 22
  %2464 = shl nuw nsw i32 %2463, 5
  %2465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2464)  ; LegacyF16ToF32(value)
  %2466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2467 = extractvalue %dx.types.ResRet.i32 %2466, 0
  %2468 = and i32 %2467, 64
  %2469 = icmp eq i32 %2468, 0
  br i1 %2469, label %2503, label %2470

; <label>:2470                                    ; preds = %2455
  %2471 = add i32 %32, 400
  %2472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2471, i32 undef)  ; BufferLoad(srv,index,wot)
  %2473 = extractvalue %dx.types.ResRet.i32 %2472, 0
  %2474 = add i32 %2473, 0
  %2475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2474, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.i32 %2476, 0
  %2478 = and i32 %2477, 131072
  %2479 = icmp eq i32 %2478, 0
  %2480 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2475, %dx.types.Handle %63, float %1968, float %1969, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2481 = extractvalue %dx.types.ResRet.f32 %2480, 0
  %2482 = extractvalue %dx.types.ResRet.f32 %2480, 1
  %2483 = extractvalue %dx.types.ResRet.f32 %2480, 2
  %2484 = fmul fast float %2481, %275
  %2485 = fmul fast float %2482, %278
  %2486 = fmul fast float %2483, %281
  br i1 %2479, label %2493, label %2487

; <label>:2487                                    ; preds = %2470
  %2488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2489 = extractvalue %dx.types.CBufRet.f32 %2488, 0
  %2490 = fmul fast float %2489, %2484
  %2491 = fmul fast float %2489, %2485
  %2492 = fmul fast float %2489, %2486
  br label %2493

; <label>:2493                                    ; preds = %2487, %2470
  %2494 = phi float [ %2490, %2487 ], [ %2484, %2470 ]
  %2495 = phi float [ %2491, %2487 ], [ %2485, %2470 ]
  %2496 = phi float [ %2492, %2487 ], [ %2486, %2470 ]
  %2497 = fmul fast float %2494, %2465
  %2498 = select i1 %171, float %2497, float %2494
  %2499 = call float @dx.op.dot3.f32(i32 55, float %2498, float %2495, float %2496, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2500 = select i1 %171, float 0.000000e+00, float %2494
  %2501 = select i1 %171, float %2499, float %2495
  %2502 = select i1 %171, float 0.000000e+00, float %2496
  br label %2503

; <label>:2503                                    ; preds = %2493, %2455
  %2504 = phi float [ %2500, %2493 ], [ 0.000000e+00, %2455 ]
  %2505 = phi float [ %2501, %2493 ], [ 0.000000e+00, %2455 ]
  %2506 = phi float [ %2502, %2493 ], [ 0.000000e+00, %2455 ]
  %2507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = and i32 %2508, 1024
  %2510 = icmp eq i32 %2509, 0
  br i1 %2510, label %2541, label %2511

; <label>:2511                                    ; preds = %2503
  %2512 = add i32 %32, 184
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 0
  %2515 = and i32 %2514, 255
  %2516 = uitofp i32 %2515 to float
  %2517 = fmul fast float %2516, 0x3F70101020000000
  %2518 = lshr i32 %2514, 8
  %2519 = and i32 %2518, 255
  %2520 = uitofp i32 %2519 to float
  %2521 = fmul fast float %2520, 0x3F70101020000000
  %2522 = lshr i32 %2514, 16
  %2523 = and i32 %2522, 255
  %2524 = uitofp i32 %2523 to float
  %2525 = fmul fast float %2524, 0x3F70101020000000
  %2526 = fmul fast float %2517, %2517
  %2527 = fmul fast float %2521, %2521
  %2528 = fmul fast float %2525, %2525
  %2529 = add i32 %32, 464
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = add i32 %2531, 0
  %2533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2533, %dx.types.Handle %64, float %1968, float %1969, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2535 = extractvalue %dx.types.ResRet.f32 %2534, 0
  %2536 = extractvalue %dx.types.ResRet.f32 %2534, 1
  %2537 = extractvalue %dx.types.ResRet.f32 %2534, 2
  %2538 = fmul fast float %2526, %2535
  %2539 = fmul fast float %2527, %2536
  %2540 = fmul fast float %2528, %2537
  br label %2541

; <label>:2541                                    ; preds = %2511, %2503
  %2542 = phi float [ %2538, %2511 ], [ 0.000000e+00, %2503 ]
  %2543 = phi float [ %2539, %2511 ], [ 0.000000e+00, %2503 ]
  %2544 = phi float [ %2540, %2511 ], [ 0.000000e+00, %2503 ]
  %2545 = fcmp fast ogt float %2542, 0.000000e+00
  %2546 = fcmp fast ogt float %2543, 0.000000e+00
  %2547 = fcmp fast ogt float %2544, 0.000000e+00
  %2548 = call float @dx.op.unary.f32(i32 23, float %2542)  ; Log(value)
  %2549 = call float @dx.op.unary.f32(i32 23, float %2543)  ; Log(value)
  %2550 = call float @dx.op.unary.f32(i32 23, float %2544)  ; Log(value)
  %2551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2460, i32 undef)  ; BufferLoad(srv,index,wot)
  %2552 = extractvalue %dx.types.ResRet.i32 %2551, 0
  %2553 = lshr i32 %2552, 7
  %2554 = and i32 %2553, 32752
  %2555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2554)  ; LegacyF16ToF32(value)
  %2556 = fmul fast float %2548, 0xBFE62E4300000000
  %2557 = fmul fast float %2556, %2555
  %2558 = fmul fast float %2549, 0xBFE62E4300000000
  %2559 = fmul fast float %2558, %2555
  %2560 = fmul fast float %2550, 0xBFE62E4300000000
  %2561 = fmul fast float %2560, %2555
  %2562 = select i1 %2545, float %2557, float 1.270000e+02
  %2563 = select i1 %2546, float %2559, float 1.270000e+02
  %2564 = select i1 %2547, float %2561, float 1.270000e+02
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = and i32 %2566, 10240
  %2568 = icmp eq i32 %2567, 0
  br i1 %2568, label %2589, label %2569

; <label>:2569                                    ; preds = %2541
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = and i32 %2571, 2048
  %2573 = icmp eq i32 %2572, 0
  br i1 %2573, label %2589, label %2574

; <label>:2574                                    ; preds = %2569
  %2575 = add i32 %32, 480
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = add i32 %2577, 0
  %2579 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2578, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2580 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2579, %dx.types.Handle %64, float %1968, float %1969, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2581 = extractvalue %dx.types.ResRet.f32 %2580, 3
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2460, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = shl i32 %2583, 4
  %2585 = and i32 %2584, 32752
  %2586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2585)  ; LegacyF16ToF32(value)
  %2587 = fmul fast float %2586, %2581
  %2588 = call float @dx.op.binary.f32(i32 35, float %2587, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2589

; <label>:2589                                    ; preds = %2574, %2569, %2541
  %2590 = phi float [ %2588, %2574 ], [ 0x3F70101020000000, %2569 ], [ 0x3F70101020000000, %2541 ]
  %2591 = add i32 %32, 128
  %2592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2591, i32 undef)  ; BufferLoad(srv,index,wot)
  %2593 = extractvalue %dx.types.ResRet.i32 %2592, 0
  %2594 = and i32 %2593, 255
  %2595 = uitofp i32 %2594 to float
  %2596 = lshr i32 %2593, 8
  %2597 = and i32 %2596, 255
  %2598 = uitofp i32 %2597 to float
  %2599 = call float @dx.op.dot3.f32(i32 55, float %2376, float %2377, float %2378, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2600 = fmul fast float %2598, %2599
  %2601 = fadd fast float %2600, %2595
  %2602 = fmul fast float %2601, 0x3F70101020000000
  %2603 = call float @dx.op.unary.f32(i32 7, float %2602)  ; Saturate(value)
  br i1 %1860, label %2604, label %2639

; <label>:2604                                    ; preds = %2589
  %2605 = fmul fast float %2590, 2.000000e+00
  %2606 = fcmp fast olt float %2562, 1.270000e+02
  %2607 = fcmp fast olt float %2563, 1.270000e+02
  %2608 = fcmp fast olt float %2564, 1.270000e+02
  %2609 = fmul fast float %2562, 0xBFF7154760000000
  %2610 = fmul fast float %2609, %2605
  %2611 = fmul fast float %2563, 0xBFF7154760000000
  %2612 = fmul fast float %2611, %2605
  %2613 = fmul fast float %2564, 0xBFF7154760000000
  %2614 = fmul fast float %2613, %2605
  %2615 = call float @dx.op.unary.f32(i32 21, float %2610)  ; Exp(value)
  %2616 = call float @dx.op.unary.f32(i32 21, float %2612)  ; Exp(value)
  %2617 = call float @dx.op.unary.f32(i32 21, float %2614)  ; Exp(value)
  %2618 = call float @dx.op.unary.f32(i32 7, float %2615)  ; Saturate(value)
  %2619 = call float @dx.op.unary.f32(i32 7, float %2616)  ; Saturate(value)
  %2620 = call float @dx.op.unary.f32(i32 7, float %2617)  ; Saturate(value)
  %2621 = fadd fast float %2618, -1.000000e+00
  %2622 = select i1 %2606, float %2621, float -1.000000e+00
  %2623 = fadd fast float %2619, -1.000000e+00
  %2624 = select i1 %2607, float %2623, float -1.000000e+00
  %2625 = fadd fast float %2620, -1.000000e+00
  %2626 = select i1 %2608, float %2625, float -1.000000e+00
  %2627 = fmul fast float %2622, %2156
  %2628 = fmul fast float %2624, %2156
  %2629 = fmul fast float %2626, %2156
  %2630 = fadd fast float %2627, 1.000000e+00
  %2631 = fadd fast float %2628, 1.000000e+00
  %2632 = fadd fast float %2629, 1.000000e+00
  %2633 = fmul fast float %2630, %1849
  %2634 = fmul fast float %2631, %1850
  %2635 = fmul fast float %2632, %1851
  %2636 = fmul fast float %2630, %1852
  %2637 = fmul fast float %2631, %1853
  %2638 = fmul fast float %2632, %1854
  br label %2639

; <label>:2639                                    ; preds = %2604, %2589
  %2640 = phi float [ %2633, %2604 ], [ %1849, %2589 ]
  %2641 = phi float [ %2634, %2604 ], [ %1850, %2589 ]
  %2642 = phi float [ %2635, %2604 ], [ %1851, %2589 ]
  %2643 = phi float [ %2636, %2604 ], [ %1852, %2589 ]
  %2644 = phi float [ %2637, %2604 ], [ %1853, %2589 ]
  %2645 = phi float [ %2638, %2604 ], [ %1854, %2589 ]
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = and i32 %2647, 3
  %2649 = icmp eq i32 %2648, 3
  br i1 %2649, label %2728, label %2650

; <label>:2650                                    ; preds = %2639
  %2651 = and i32 %2647, 16
  %2652 = icmp ne i32 %2651, 0
  %2653 = select i1 %2652, float %2156, float 0.000000e+00
  %2654 = icmp eq i32 %2648, 0
  br i1 %2654, label %2655, label %2683

; <label>:2655                                    ; preds = %2650
  %2656 = and i32 %2647, 64
  %2657 = icmp ne i32 %2656, 0
  %2658 = select i1 %2657, float %2156, float 0.000000e+00
  %2659 = fsub fast float %2376, %2640
  %2660 = fsub fast float %2377, %2641
  %2661 = fsub fast float %2378, %2642
  %2662 = fmul fast float %2653, %2659
  %2663 = fmul fast float %2653, %2660
  %2664 = fmul fast float %2653, %2661
  %2665 = fadd fast float %2662, %2640
  %2666 = fadd fast float %2663, %2641
  %2667 = fadd fast float %2664, %2642
  %2668 = fsub fast float %2362, %1855
  %2669 = fmul fast float %2653, %2668
  %2670 = fadd fast float %2669, %1855
  %2671 = fsub fast float %2504, %2643
  %2672 = fsub fast float %2505, %2644
  %2673 = fsub fast float %2506, %2645
  %2674 = fmul fast float %2658, %2671
  %2675 = fmul fast float %2658, %2672
  %2676 = fmul fast float %2658, %2673
  %2677 = fadd fast float %2674, %2643
  %2678 = fadd fast float %2675, %2644
  %2679 = fadd fast float %2676, %2645
  %2680 = fsub fast float %2603, %1858
  %2681 = fmul fast float %2653, %2680
  %2682 = fadd fast float %2681, %1858
  br label %2728

; <label>:2683                                    ; preds = %2650
  %2684 = icmp eq i32 %2648, 1
  br i1 %2684, label %2685, label %2698

; <label>:2685                                    ; preds = %2683
  %2686 = fadd fast float %2376, -1.000000e+00
  %2687 = fadd fast float %2377, -1.000000e+00
  %2688 = fadd fast float %2378, -1.000000e+00
  %2689 = fmul fast float %2653, %2686
  %2690 = fmul fast float %2653, %2687
  %2691 = fmul fast float %2653, %2688
  %2692 = fadd fast float %2689, 1.000000e+00
  %2693 = fadd fast float %2690, 1.000000e+00
  %2694 = fadd fast float %2691, 1.000000e+00
  %2695 = fmul fast float %2692, %2640
  %2696 = fmul fast float %2693, %2641
  %2697 = fmul fast float %2694, %2642
  br label %2728

; <label>:2698                                    ; preds = %2683
  %2699 = icmp eq i32 %2648, 2
  br i1 %2699, label %2700, label %2728

; <label>:2700                                    ; preds = %2698
  %2701 = call float @dx.op.unary.f32(i32 24, float %2376)  ; Sqrt(value)
  %2702 = call float @dx.op.unary.f32(i32 24, float %2377)  ; Sqrt(value)
  %2703 = call float @dx.op.unary.f32(i32 24, float %2378)  ; Sqrt(value)
  %2704 = fadd fast float %2701, -5.000000e-01
  %2705 = fadd fast float %2702, -5.000000e-01
  %2706 = fadd fast float %2703, -5.000000e-01
  %2707 = fmul fast float %2704, %2653
  %2708 = fmul fast float %2705, %2653
  %2709 = fmul fast float %2706, %2653
  %2710 = fadd fast float %2707, 5.000000e-01
  %2711 = fadd fast float %2708, 5.000000e-01
  %2712 = fadd fast float %2709, 5.000000e-01
  %2713 = fmul fast float %2710, 2.000000e+00
  %2714 = fsub fast float 1.000000e+00, %2713
  %2715 = fmul fast float %2714, %2640
  %2716 = fadd fast float %2715, %2713
  %2717 = fmul fast float %2716, %2640
  %2718 = fmul fast float %2711, 2.000000e+00
  %2719 = fsub fast float 1.000000e+00, %2718
  %2720 = fmul fast float %2719, %2641
  %2721 = fadd fast float %2720, %2718
  %2722 = fmul fast float %2721, %2641
  %2723 = fmul fast float %2712, 2.000000e+00
  %2724 = fsub fast float 1.000000e+00, %2723
  %2725 = fmul fast float %2724, %2642
  %2726 = fadd fast float %2725, %2723
  %2727 = fmul fast float %2726, %2642
  br label %2728

; <label>:2728                                    ; preds = %2700, %2698, %2685, %2655, %2639
  %2729 = phi float [ %2640, %2639 ], [ %2717, %2700 ], [ %2640, %2698 ], [ %2695, %2685 ], [ %2665, %2655 ]
  %2730 = phi float [ %2641, %2639 ], [ %2722, %2700 ], [ %2641, %2698 ], [ %2696, %2685 ], [ %2666, %2655 ]
  %2731 = phi float [ %2642, %2639 ], [ %2727, %2700 ], [ %2642, %2698 ], [ %2697, %2685 ], [ %2667, %2655 ]
  %2732 = phi float [ %2643, %2639 ], [ %2643, %2700 ], [ %2643, %2698 ], [ %2643, %2685 ], [ %2677, %2655 ]
  %2733 = phi float [ %2644, %2639 ], [ %2644, %2700 ], [ %2644, %2698 ], [ %2644, %2685 ], [ %2678, %2655 ]
  %2734 = phi float [ %2645, %2639 ], [ %2645, %2700 ], [ %2645, %2698 ], [ %2645, %2685 ], [ %2679, %2655 ]
  %2735 = phi float [ %1855, %2639 ], [ %1855, %2700 ], [ %1855, %2698 ], [ %1855, %2685 ], [ %2670, %2655 ]
  %2736 = phi float [ %1858, %2639 ], [ %1858, %2700 ], [ %1858, %2698 ], [ %1858, %2685 ], [ %2682, %2655 ]
  %2737 = and i32 %2647, 12
  %2738 = icmp eq i32 %2737, 12
  br i1 %2738, label %2811, label %2739

; <label>:2739                                    ; preds = %2728
  %2740 = and i32 %2647, 2097184
  %2741 = icmp eq i32 %2740, 2097184
  %2742 = select i1 %2741, float %2156, float 0.000000e+00
  %2743 = and i32 %2647, 4194336
  %2744 = icmp eq i32 %2743, 4194336
  %2745 = select i1 %2744, float %2156, float 0.000000e+00
  %2746 = and i32 %2647, 8388640
  %2747 = icmp eq i32 %2746, 8388640
  %2748 = select i1 %2747, float %2156, float 0.000000e+00
  %2749 = icmp eq i32 %2737, 0
  br i1 %2749, label %2750, label %2763

; <label>:2750                                    ; preds = %2739
  %2751 = fsub fast float %2457, %1847
  %2752 = fsub fast float %2458, %1848
  %2753 = fmul fast float %2742, %2751
  %2754 = fmul fast float %2742, %2752
  %2755 = fadd fast float %2753, %1847
  %2756 = fadd fast float %2754, %1848
  %2757 = fsub fast float %2459, %1857
  %2758 = fmul fast float %2745, %2757
  %2759 = fadd fast float %2758, %1857
  %2760 = fsub fast float %2456, %1856
  %2761 = fmul fast float %2748, %2760
  %2762 = fadd fast float %2761, %1856
  br label %2811

; <label>:2763                                    ; preds = %2739
  %2764 = icmp eq i32 %2737, 4
  br i1 %2764, label %2765, label %2797

; <label>:2765                                    ; preds = %2763
  %2766 = fmul fast float %2742, %2457
  %2767 = fmul fast float %2742, %2458
  %2768 = fadd fast float %2766, %1847
  %2769 = fadd fast float %2767, %1848
  %2770 = call float @dx.op.binary.f32(i32 36, float %1857, float %2459)  ; FMin(a,b)
  %2771 = fsub fast float %2770, %1857
  %2772 = fmul fast float %2771, %2745
  %2773 = fadd fast float %2772, %1857
  %2774 = fadd fast float %2456, %1856
  %2775 = fmul fast float %2774, 0x3FF337FAE0000000
  %2776 = fmul fast float %1856, %1856
  %2777 = fmul fast float %2456, %2456
  %2778 = fadd fast float %2777, %2776
  %2779 = fmul fast float %2778, 0x3FE5152B00000000
  %2780 = fmul fast float %1856, 0xBFCC1F85E0000000
  %2781 = fmul fast float %2780, %2456
  %2782 = fadd fast float %2781, 0xBFE1363700000000
  %2783 = fadd fast float %2782, %2775
  %2784 = fsub fast float %2783, %2779
  %2785 = fmul fast float %2774, 0x3FBA6F0D00000000
  %2786 = fmul fast float %2778, 0x3FD0432880000000
  %2787 = fmul fast float %1856, 0xBFEF110800000000
  %2788 = fmul fast float %2787, %2456
  %2789 = fadd fast float %2788, 1.000000e+00
  %2790 = fsub fast float %2789, %2785
  %2791 = fadd fast float %2790, %2786
  %2792 = fdiv fast float %2784, %2791
  %2793 = call float @dx.op.unary.f32(i32 7, float %2792)  ; Saturate(value)
  %2794 = fsub fast float %2793, %1856
  %2795 = fmul fast float %2794, %2748
  %2796 = fadd fast float %2795, %1856
  br label %2811

; <label>:2797                                    ; preds = %2763
  %2798 = icmp eq i32 %2737, 8
  br i1 %2798, label %2799, label %2811

; <label>:2799                                    ; preds = %2797
  %2800 = fmul fast float %2742, %2457
  %2801 = fmul fast float %2742, %2458
  %2802 = fadd fast float %2800, %1847
  %2803 = fadd fast float %2801, %1848
  %2804 = call float @dx.op.binary.f32(i32 36, float %1857, float %2459)  ; FMin(a,b)
  %2805 = fsub fast float %2804, %1857
  %2806 = fmul fast float %2805, %2745
  %2807 = fadd fast float %2806, %1857
  %2808 = fsub fast float %2456, %1856
  %2809 = fmul fast float %2748, %2808
  %2810 = fadd fast float %2809, %1856
  br label %2811

; <label>:2811                                    ; preds = %2799, %2797, %2765, %2750, %2728, %2155, %1859, %1846
  %2812 = phi float [ %1847, %2728 ], [ %1847, %2155 ], [ %1847, %1846 ], [ %2802, %2799 ], [ %1847, %2797 ], [ %2768, %2765 ], [ %2755, %2750 ], [ %1847, %1859 ]
  %2813 = phi float [ %1848, %2728 ], [ %1848, %2155 ], [ %1848, %1846 ], [ %2803, %2799 ], [ %1848, %2797 ], [ %2769, %2765 ], [ %2756, %2750 ], [ %1848, %1859 ]
  %2814 = phi float [ %2729, %2728 ], [ %1849, %2155 ], [ %1849, %1846 ], [ %2729, %2799 ], [ %2729, %2797 ], [ %2729, %2765 ], [ %2729, %2750 ], [ %1849, %1859 ]
  %2815 = phi float [ %2730, %2728 ], [ %1850, %2155 ], [ %1850, %1846 ], [ %2730, %2799 ], [ %2730, %2797 ], [ %2730, %2765 ], [ %2730, %2750 ], [ %1850, %1859 ]
  %2816 = phi float [ %2731, %2728 ], [ %1851, %2155 ], [ %1851, %1846 ], [ %2731, %2799 ], [ %2731, %2797 ], [ %2731, %2765 ], [ %2731, %2750 ], [ %1851, %1859 ]
  %2817 = phi float [ %2732, %2728 ], [ %1852, %2155 ], [ %1852, %1846 ], [ %2732, %2799 ], [ %2732, %2797 ], [ %2732, %2765 ], [ %2732, %2750 ], [ %1852, %1859 ]
  %2818 = phi float [ %2733, %2728 ], [ %1853, %2155 ], [ %1853, %1846 ], [ %2733, %2799 ], [ %2733, %2797 ], [ %2733, %2765 ], [ %2733, %2750 ], [ %1853, %1859 ]
  %2819 = phi float [ %2734, %2728 ], [ %1854, %2155 ], [ %1854, %1846 ], [ %2734, %2799 ], [ %2734, %2797 ], [ %2734, %2765 ], [ %2734, %2750 ], [ %1854, %1859 ]
  %2820 = phi float [ %2735, %2728 ], [ %1855, %2155 ], [ %1855, %1846 ], [ %2735, %2799 ], [ %2735, %2797 ], [ %2735, %2765 ], [ %2735, %2750 ], [ %1855, %1859 ]
  %2821 = phi float [ %1856, %2728 ], [ %1856, %2155 ], [ %1856, %1846 ], [ %2810, %2799 ], [ %1856, %2797 ], [ %2796, %2765 ], [ %2762, %2750 ], [ %1856, %1859 ]
  %2822 = phi float [ %1857, %2728 ], [ %1857, %2155 ], [ %1857, %1846 ], [ %2807, %2799 ], [ %1857, %2797 ], [ %2773, %2765 ], [ %2759, %2750 ], [ %1857, %1859 ]
  %2823 = phi float [ %2736, %2728 ], [ %1858, %2155 ], [ %1858, %1846 ], [ %2736, %2799 ], [ %2736, %2797 ], [ %2736, %2765 ], [ %2736, %2750 ], [ %1858, %1859 ]
  br i1 %362, label %3776, label %2824

; <label>:2824                                    ; preds = %2811
  %2825 = icmp ult i32 %413, 4
  %2826 = add i32 %32, 72
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = add i32 %32, 76
  %2830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %2831 = extractvalue %dx.types.ResRet.i32 %2830, 0
  %2832 = or i32 %2831, %2828
  %2833 = icmp eq i32 %2832, 0
  br i1 %2833, label %3776, label %2834

; <label>:2834                                    ; preds = %2824
  %2835 = and i32 %2828, 262144
  %2836 = icmp ne i32 %2835, 0
  %2837 = select i1 %2836, float %35, float 1.000000e+00
  %2838 = select i1 %2836, float %36, float 0.000000e+00
  %2839 = select i1 %2836, float %37, float 0.000000e+00
  %2840 = select i1 %2836, float %38, float 1.000000e+00
  %2841 = select i1 %2836, float %39, float %55
  %2842 = select i1 %2836, float %40, float %56
  %2843 = add i32 %32, 332
  %2844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2843, i32 undef)  ; BufferLoad(srv,index,wot)
  %2845 = extractvalue %dx.types.ResRet.i32 %2844, 0
  %2846 = lshr i32 %2845, 16
  %2847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2846)  ; LegacyF16ToF32(value)
  %2848 = fmul fast float %2847, 0x3F50624DE0000000
  %2849 = add i32 %32, 136
  %2850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2851 = extractvalue %dx.types.ResRet.i32 %2850, 0
  %2852 = lshr i32 %2851, 16
  %2853 = and i32 %2852, 255
  %2854 = lshr i32 %2851, 24
  %2855 = add i32 %32, 340
  %2856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2857 = extractvalue %dx.types.ResRet.i32 %2856, 0
  %2858 = and i32 %2857, 65535
  %2859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2858)  ; LegacyF16ToF32(value)
  %2860 = lshr i32 %2857, 16
  %2861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2860)  ; LegacyF16ToF32(value)
  %2862 = add i32 %32, 80
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2862, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = lshr i32 %2864, 22
  %2866 = shl nuw nsw i32 %2865, 5
  %2867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2866)  ; LegacyF16ToF32(value)
  %2868 = shl i32 %2864, 4
  %2869 = and i32 %2868, 32752
  %2870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2869)  ; LegacyF16ToF32(value)
  %2871 = lshr i32 %2864, 7
  %2872 = and i32 %2871, 32752
  %2873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2872)  ; LegacyF16ToF32(value)
  %2874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2875 = extractvalue %dx.types.CBufRet.f32 %2874, 3
  %2876 = fmul fast float %2875, 1.000000e+03
  %2877 = fmul fast float %352, %2876
  %2878 = call float @dx.op.unary.f32(i32 22, float %2877)  ; Frc(value)
  %2879 = fadd fast float %2878, %342
  %2880 = fmul fast float %353, %2876
  %2881 = call float @dx.op.unary.f32(i32 22, float %2880)  ; Frc(value)
  %2882 = fadd fast float %2881, %344
  %2883 = fmul fast float %2848, %2876
  %2884 = call float @dx.op.unary.f32(i32 22, float %2883)  ; Frc(value)
  %2885 = fmul fast float %2884, 0x401921FB60000000
  %2886 = fadd fast float %2885, %2867
  %2887 = call float @dx.op.unary.f32(i32 13, float %2886)  ; Sin(value)
  %2888 = call float @dx.op.unary.f32(i32 12, float %2886)  ; Cos(value)
  %2889 = fsub fast float -0.000000e+00, %2887
  %2890 = fadd fast float %2841, -5.000000e-01
  %2891 = fadd fast float %2842, -5.000000e-01
  %2892 = fmul fast float %2859, %2890
  %2893 = fmul fast float %2861, %2891
  %2894 = fadd fast float %2892, 5.000000e-01
  %2895 = fadd fast float %2893, 5.000000e-01
  %2896 = fmul fast float %2870, %2894
  %2897 = fmul fast float %2873, %2895
  %2898 = fmul fast float %2888, %2896
  %2899 = call float @dx.op.tertiary.f32(i32 46, float %2889, float %2897, float %2898)  ; FMad(a,b,c)
  %2900 = fmul fast float %2887, %2896
  %2901 = call float @dx.op.tertiary.f32(i32 46, float %2888, float %2897, float %2900)  ; FMad(a,b,c)
  %2902 = fadd fast float %2879, %2899
  %2903 = fadd fast float %2882, %2901
  %2904 = icmp ugt i32 %2853, 1
  %2905 = icmp ugt i32 %2851, 33554431
  %2906 = or i1 %2905, %2904
  br i1 %2906, label %2907, label %2932

; <label>:2907                                    ; preds = %2834
  %2908 = add i32 %32, 276
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = lshr i32 %2910, 16
  %2912 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2911)  ; LegacyF16ToF32(value)
  %2913 = fmul fast float %2875, %2912
  %2914 = call float @dx.op.unary.f32(i32 22, float %2913)  ; Frc(value)
  %2915 = mul nuw nsw i32 %2853, %2854
  %2916 = uitofp i32 %2915 to float
  %2917 = fmul fast float %2914, %2916
  %2918 = call float @dx.op.unary.f32(i32 27, float %2917)  ; Round_ni(value)
  %2919 = fptoui float %2918 to i32
  %2920 = urem i32 %2919, %2853
  %2921 = udiv i32 %2919, %2854
  %2922 = call float @dx.op.unary.f32(i32 22, float %2902)  ; Frc(value)
  %2923 = call float @dx.op.unary.f32(i32 22, float %2903)  ; Frc(value)
  %2924 = uitofp i32 %2920 to float
  %2925 = uitofp i32 %2921 to float
  %2926 = fadd fast float %2922, %2924
  %2927 = fadd fast float %2923, %2925
  %2928 = uitofp i32 %2853 to float
  %2929 = uitofp i32 %2854 to float
  %2930 = fdiv fast float %2926, %2928
  %2931 = fdiv fast float %2927, %2929
  br label %2932

; <label>:2932                                    ; preds = %2907, %2834
  %2933 = phi float [ %2930, %2907 ], [ %2902, %2834 ]
  %2934 = phi float [ %2931, %2907 ], [ %2903, %2834 ]
  %2935 = and i32 %2828, 16777216
  %2936 = icmp eq i32 %2935, 0
  br i1 %2936, label %3046, label %2937

; <label>:2937                                    ; preds = %2932
  %2938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2939 = extractvalue %dx.types.CBufRet.f32 %2938, 0
  %2940 = extractvalue %dx.types.CBufRet.f32 %2938, 1
  %2941 = extractvalue %dx.types.CBufRet.f32 %2938, 2
  %2942 = fadd fast float %2939, %130
  %2943 = fadd fast float %2940, %131
  %2944 = fadd fast float %2941, %132
  %2945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2946 = extractvalue %dx.types.CBufRet.f32 %2945, 0
  %2947 = call float @dx.op.unary.f32(i32 7, float %2946)  ; Saturate(value)
  %2948 = icmp eq i32 %33, 65535
  br i1 %2948, label %3043, label %2949

; <label>:2949                                    ; preds = %2937
  %2950 = lshr i32 %33, 1
  %2951 = shl i32 %2950, 2
  %2952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.i32 %2952, 0
  %2954 = and i32 %33, 1
  %2955 = icmp ne i32 %2954, 0
  %2956 = lshr i32 %2953, 16
  %2957 = and i32 %2953, 65535
  %2958 = select i1 %2955, i32 %2956, i32 %2957
  %2959 = icmp eq i32 %2958, 65535
  br i1 %2959, label %3039, label %2960

; <label>:2960                                    ; preds = %2949
  %2961 = mul nuw nsw i32 %2958, 40
  %2962 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2961, i32 undef)  ; BufferLoad(srv,index,wot)
  %2963 = extractvalue %dx.types.ResRet.f32 %2962, 0
  %2964 = extractvalue %dx.types.ResRet.f32 %2962, 1
  %2965 = extractvalue %dx.types.ResRet.f32 %2962, 2
  %2966 = add nuw nsw i32 %2961, 12
  %2967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2966, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.f32 %2967, 0
  %2969 = extractvalue %dx.types.ResRet.f32 %2967, 1
  %2970 = extractvalue %dx.types.ResRet.f32 %2967, 2
  %2971 = add nuw nsw i32 %2961, 24
  %2972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2971, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.f32 %2972, 0
  %2974 = extractvalue %dx.types.ResRet.f32 %2972, 1
  %2975 = extractvalue %dx.types.ResRet.f32 %2972, 2
  %2976 = add nuw nsw i32 %2961, 36
  %2977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2976, i32 undef)  ; BufferLoad(srv,index,wot)
  %2978 = extractvalue %dx.types.ResRet.f32 %2977, 0
  %2979 = fsub fast float %2942, %2963
  %2980 = fsub fast float %2943, %2964
  %2981 = fsub fast float %2944, %2965
  %2982 = fmul fast float %2978, %2979
  %2983 = fmul fast float %2978, %2980
  %2984 = fmul fast float %2978, %2981
  %2985 = call float @dx.op.unary.f32(i32 27, float %2982)  ; Round_ni(value)
  %2986 = call float @dx.op.unary.f32(i32 27, float %2983)  ; Round_ni(value)
  %2987 = call float @dx.op.unary.f32(i32 27, float %2984)  ; Round_ni(value)
  %2988 = fadd fast float %2985, 5.000000e-01
  %2989 = fadd fast float %2986, 5.000000e-01
  %2990 = fadd fast float %2987, 5.000000e-01
  %2991 = fmul fast float %2988, %2968
  %2992 = fmul fast float %2989, %2969
  %2993 = fmul fast float %2990, %2970
  %2994 = shl i32 %33, 2
  %2995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.i32 %2995, 0
  %2997 = add i32 %2996, 0
  %2998 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2997, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2999 = call float @dx.op.unary.f32(i32 22, float %2991)  ; Frc(value)
  %3000 = call float @dx.op.unary.f32(i32 22, float %2992)  ; Frc(value)
  %3001 = call float @dx.op.unary.f32(i32 22, float %2993)  ; Frc(value)
  %3002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2998, %dx.types.Handle %29, float %2999, float %3000, float %3001, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3003 = extractvalue %dx.types.ResRet.f32 %3002, 0
  %3004 = extractvalue %dx.types.ResRet.f32 %3002, 1
  %3005 = extractvalue %dx.types.ResRet.f32 %3002, 2
  %3006 = fmul fast float %3003, 1.023000e+03
  %3007 = fmul fast float %3004, 1.023000e+03
  %3008 = fmul fast float %3005, 1.023000e+03
  %3009 = fadd fast float %3006, 5.000000e-01
  %3010 = fadd fast float %3007, 5.000000e-01
  %3011 = fadd fast float %3008, 5.000000e-01
  %3012 = call float @dx.op.unary.f32(i32 27, float %3009)  ; Round_ni(value)
  %3013 = call float @dx.op.unary.f32(i32 27, float %3010)  ; Round_ni(value)
  %3014 = call float @dx.op.unary.f32(i32 27, float %3011)  ; Round_ni(value)
  %3015 = fsub fast float %2982, %2985
  %3016 = fsub fast float %2983, %2986
  %3017 = fsub fast float %2984, %2987
  %3018 = fmul fast float %3015, 7.500000e-01
  %3019 = fmul fast float %3016, 7.500000e-01
  %3020 = fmul fast float %3017, 7.500000e-01
  %3021 = fadd fast float %2985, 1.250000e-01
  %3022 = fadd fast float %3021, %3018
  %3023 = fadd fast float %3022, %3012
  %3024 = fadd fast float %2986, 1.250000e-01
  %3025 = fadd fast float %3024, %3019
  %3026 = fadd fast float %3025, %3013
  %3027 = fadd fast float %2987, 1.250000e-01
  %3028 = fadd fast float %3027, %3020
  %3029 = fadd fast float %3028, %3014
  %3030 = fmul fast float %3023, %2973
  %3031 = fmul fast float %3026, %2974
  %3032 = fmul fast float %3029, %2975
  %3033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2994, i32 undef)  ; BufferLoad(srv,index,wot)
  %3034 = extractvalue %dx.types.ResRet.i32 %3033, 0
  %3035 = add i32 %3034, 0
  %3036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3035, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3037 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3036, %dx.types.Handle %27, float %3030, float %3031, float %3032, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3038 = extractvalue %dx.types.ResRet.f32 %3037, 0
  br label %3039

; <label>:3039                                    ; preds = %2960, %2949
  %3040 = phi float [ %3038, %2960 ], [ -1.000000e+00, %2949 ]
  %3041 = fadd fast float %3040, %2947
  %3042 = call float @dx.op.unary.f32(i32 7, float %3041)  ; Saturate(value)
  br label %3043

; <label>:3043                                    ; preds = %3039, %2937
  %3044 = phi float [ %3042, %3039 ], [ %2947, %2937 ]
  %3045 = fmul fast float %3044, %408
  br label %3046

; <label>:3046                                    ; preds = %3043, %2932
  %3047 = phi float [ %3045, %3043 ], [ %408, %2932 ]
  %3048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3049 = extractvalue %dx.types.ResRet.i32 %3048, 0
  %3050 = and i32 %3049, 256
  %3051 = icmp eq i32 %3050, 0
  br i1 %3051, label %3098, label %3052

; <label>:3052                                    ; preds = %3046
  %3053 = add i32 %32, 436
  %3054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3053, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.i32 %3054, 0
  %3056 = add i32 %3055, 0
  %3057 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3056, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3058 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3057, %dx.types.Handle %64, float %2933, float %2934, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3059 = extractvalue %dx.types.ResRet.f32 %3058, 0
  %3060 = add i32 %32, 148
  %3061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.i32 %3061, 0
  %3063 = shl i32 %3062, 4
  %3064 = and i32 %3063, 32752
  %3065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3064)  ; LegacyF16ToF32(value)
  %3066 = lshr i32 %3062, 7
  %3067 = and i32 %3066, 32752
  %3068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3067)  ; LegacyF16ToF32(value)
  %3069 = fsub fast float 1.000000e+00, %3047
  %3070 = call float @dx.op.binary.f32(i32 35, float %3069, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3071 = bitcast float %3047 to i32
  %3072 = sitofp i32 %3071 to float
  %3073 = fadd fast float %3072, 0xC1CFBF8940000000
  %3074 = fmul fast float %3068, %3073
  %3075 = fadd fast float %3074, 0x41CFBF8940000000
  %3076 = fptosi float %3075 to i32
  %3077 = bitcast i32 %3076 to float
  %3078 = bitcast float %3070 to i32
  %3079 = sitofp i32 %3078 to float
  %3080 = fadd fast float %3079, 0xC1CFBF8940000000
  %3081 = fmul fast float %3080, %3068
  %3082 = fadd fast float %3081, 0x41CFBF8940000000
  %3083 = fptosi float %3082 to i32
  %3084 = bitcast i32 %3083 to float
  %3085 = fmul fast float %3077, %3065
  %3086 = fmul fast float %3084, %3065
  %3087 = fsub fast float %3070, %3085
  %3088 = fadd fast float %3086, %3070
  %3089 = call float @dx.op.unary.f32(i32 7, float %3087)  ; Saturate(value)
  %3090 = call float @dx.op.unary.f32(i32 7, float %3088)  ; Saturate(value)
  %3091 = fsub fast float %3059, %3089
  %3092 = fsub fast float %3090, %3089
  %3093 = bitcast float %3092 to i32
  %3094 = sub nsw i32 2129859010, %3093
  %3095 = bitcast i32 %3094 to float
  %3096 = fmul fast float %3095, %3091
  %3097 = call float @dx.op.unary.f32(i32 7, float %3096)  ; Saturate(value)
  br label %3098

; <label>:3098                                    ; preds = %3052, %3046
  %3099 = phi float [ %3097, %3052 ], [ %3047, %3046 ]
  %3100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3101 = extractvalue %dx.types.ResRet.i32 %3100, 0
  %3102 = and i32 %3101, 128
  %3103 = icmp eq i32 %3102, 0
  br i1 %3103, label %3120, label %3104

; <label>:3104                                    ; preds = %3098
  %3105 = add i32 %32, 420
  %3106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3105, i32 undef)  ; BufferLoad(srv,index,wot)
  %3107 = extractvalue %dx.types.ResRet.i32 %3106, 0
  %3108 = add i32 %3107, 0
  %3109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3110 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3109, %dx.types.Handle %64, float %2933, float %2934, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3111 = extractvalue %dx.types.ResRet.f32 %3110, 0
  %3112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3113 = extractvalue %dx.types.ResRet.i32 %3112, 0
  %3114 = and i32 %3113, 524288
  %3115 = icmp ne i32 %3114, 0
  %3116 = fcmp fast ogt float %3111, 0x3FE0101020000000
  %3117 = select i1 %3116, float 1.000000e+00, float 0.000000e+00
  %3118 = select i1 %3115, float %3117, float %3111
  %3119 = fmul fast float %3118, %3099
  br label %3120

; <label>:3120                                    ; preds = %3104, %3098
  %3121 = phi float [ %3119, %3104 ], [ %3099, %3098 ]
  %3122 = fcmp fast ult float %3121, 0x3F70101020000000
  br i1 %3122, label %3776, label %3123

; <label>:3123                                    ; preds = %3120
  %3124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3125 = extractvalue %dx.types.ResRet.i32 %3124, 0
  %3126 = and i32 %3125, 16
  %3127 = icmp eq i32 %3126, 0
  br i1 %3127, label %3326, label %3128

; <label>:3128                                    ; preds = %3123
  %3129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2849, i32 undef)  ; BufferLoad(srv,index,wot)
  %3130 = extractvalue %dx.types.ResRet.i32 %3129, 0
  %3131 = add i32 %32, 372
  %3132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3131, i32 undef)  ; BufferLoad(srv,index,wot)
  %3133 = extractvalue %dx.types.ResRet.i32 %3132, 0
  %3134 = add i32 %3133, 0
  %3135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3134, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3136 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3135, %dx.types.Handle %63, float %2933, float %2934, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3137 = extractvalue %dx.types.ResRet.f32 %3136, 0
  %3138 = extractvalue %dx.types.ResRet.f32 %3136, 1
  %3139 = extractvalue %dx.types.ResRet.f32 %3136, 2
  %3140 = extractvalue %dx.types.ResRet.f32 %3136, 3
  %3141 = and i32 %3130, 255
  %3142 = uitofp i32 %3141 to float
  %3143 = lshr i32 %3130, 8
  %3144 = and i32 %3143, 255
  %3145 = uitofp i32 %3144 to float
  %3146 = fmul fast float %3140, %3142
  %3147 = fadd fast float %3146, %3145
  %3148 = fmul fast float %3147, 0x3F70101000000000
  %3149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3150 = extractvalue %dx.types.ResRet.i32 %3149, 0
  %3151 = and i32 %3150, 512
  %3152 = icmp eq i32 %3151, 0
  br i1 %3152, label %3161, label %3153

; <label>:3153                                    ; preds = %3128
  %3154 = add i32 %32, 452
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3154, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = add i32 %3156, 0
  %3158 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3157, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3159 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3158, %dx.types.Handle %64, float %2933, float %2934, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3160 = extractvalue %dx.types.ResRet.f32 %3159, 0
  br label %3161

; <label>:3161                                    ; preds = %3153, %3128
  %3162 = phi float [ %3160, %3153 ], [ 1.000000e+00, %3128 ]
  %3163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3164 = extractvalue %dx.types.ResRet.i32 %3163, 0
  %3165 = and i32 %3164, 33554432
  %3166 = icmp eq i32 %3165, 0
  br i1 %3166, label %3273, label %3167

; <label>:3167                                    ; preds = %3161
  %3168 = add i32 %32, 272
  %3169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3168, i32 undef)  ; BufferLoad(srv,index,wot)
  %3170 = extractvalue %dx.types.ResRet.i32 %3169, 0
  %3171 = and i32 %3170, 65535
  %3172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3171)  ; LegacyF16ToF32(value)
  %3173 = lshr i32 %3170, 16
  %3174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3173)  ; LegacyF16ToF32(value)
  %3175 = add i32 %32, 276
  %3176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3175, i32 undef)  ; BufferLoad(srv,index,wot)
  %3177 = extractvalue %dx.types.ResRet.i32 %3176, 0
  %3178 = and i32 %3177, 65535
  %3179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3178)  ; LegacyF16ToF32(value)
  %3180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %3181 = extractvalue %dx.types.ResRet.i32 %3180, 0
  %3182 = lshr i32 %3181, 24
  %3183 = uitofp i32 %3182 to float
  %3184 = fmul fast float %3183, 0x3F70101020000000
  %3185 = and i32 %3181, 255
  %3186 = uitofp i32 %3185 to float
  %3187 = fmul fast float %3186, 0x3F70101020000000
  %3188 = lshr i32 %3181, 8
  %3189 = and i32 %3188, 255
  %3190 = uitofp i32 %3189 to float
  %3191 = fmul fast float %3190, 0x3F70101020000000
  %3192 = lshr i32 %3181, 16
  %3193 = and i32 %3192, 255
  %3194 = uitofp i32 %3193 to float
  %3195 = fmul fast float %3194, 0x3F70101020000000
  %3196 = add i32 %32, 268
  %3197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.i32 %3197, 0
  %3199 = lshr i32 %3198, 24
  %3200 = uitofp i32 %3199 to float
  %3201 = fmul fast float %3200, 0x3F70101020000000
  %3202 = and i32 %3198, 255
  %3203 = uitofp i32 %3202 to float
  %3204 = fmul fast float %3203, 0x3F70101020000000
  %3205 = lshr i32 %3198, 8
  %3206 = and i32 %3205, 255
  %3207 = uitofp i32 %3206 to float
  %3208 = fmul fast float %3207, 0x3F70101020000000
  %3209 = lshr i32 %3198, 16
  %3210 = and i32 %3209, 255
  %3211 = uitofp i32 %3210 to float
  %3212 = fmul fast float %3211, 0x3F70101020000000
  %3213 = bitcast float %3137 to i32
  %3214 = ashr i32 %3213, 1
  %3215 = sub nsw i32 1597463174, %3214
  %3216 = bitcast i32 %3215 to float
  %3217 = fmul fast float %3137, 5.000000e-01
  %3218 = fmul fast float %3216, %3216
  %3219 = fmul fast float %3218, %3217
  %3220 = fsub fast float 1.500000e+00, %3219
  %3221 = fmul fast float %3216, %3137
  %3222 = fmul fast float %3221, %3220
  %3223 = bitcast float %3138 to i32
  %3224 = ashr i32 %3223, 1
  %3225 = sub nsw i32 1597463174, %3224
  %3226 = bitcast i32 %3225 to float
  %3227 = fmul fast float %3138, 5.000000e-01
  %3228 = fmul fast float %3226, %3226
  %3229 = fmul fast float %3228, %3227
  %3230 = fsub fast float 1.500000e+00, %3229
  %3231 = fmul fast float %3226, %3138
  %3232 = fmul fast float %3231, %3230
  %3233 = bitcast float %3139 to i32
  %3234 = ashr i32 %3233, 1
  %3235 = sub nsw i32 1597463174, %3234
  %3236 = bitcast i32 %3235 to float
  %3237 = fmul fast float %3139, 5.000000e-01
  %3238 = fmul fast float %3236, %3236
  %3239 = fmul fast float %3238, %3237
  %3240 = fsub fast float 1.500000e+00, %3239
  %3241 = fmul fast float %3236, %3139
  %3242 = fmul fast float %3241, %3240
  %3243 = fsub fast float %3222, %3204
  %3244 = fsub fast float %3232, %3208
  %3245 = fsub fast float %3242, %3212
  %3246 = fmul fast float %3243, %3172
  %3247 = fmul fast float %3244, %3174
  %3248 = fmul fast float %3245, %3179
  %3249 = fadd fast float %3246, %3187
  %3250 = fadd fast float %3247, %3191
  %3251 = fadd fast float %3248, %3195
  %3252 = call float @dx.op.unary.f32(i32 7, float %3249)  ; Saturate(value)
  %3253 = call float @dx.op.unary.f32(i32 7, float %3250)  ; Saturate(value)
  %3254 = call float @dx.op.unary.f32(i32 7, float %3251)  ; Saturate(value)
  %3255 = fmul fast float %3252, %3252
  %3256 = fmul fast float %3253, %3253
  %3257 = fmul fast float %3254, %3254
  %3258 = fsub fast float %3255, %3137
  %3259 = fsub fast float %3256, %3138
  %3260 = fsub fast float %3257, %3139
  %3261 = fmul fast float %3258, %3162
  %3262 = fmul fast float %3259, %3162
  %3263 = fmul fast float %3260, %3162
  %3264 = fadd fast float %3261, %3137
  %3265 = fadd fast float %3262, %3138
  %3266 = fadd fast float %3263, %3139
  %3267 = fadd fast float %3184, %3148
  %3268 = fsub fast float %3267, %3201
  %3269 = call float @dx.op.unary.f32(i32 7, float %3268)  ; Saturate(value)
  %3270 = fsub fast float %3269, %3148
  %3271 = fmul fast float %3270, %3162
  %3272 = fadd fast float %3271, %3148
  br label %3326

; <label>:3273                                    ; preds = %3161
  %3274 = and i32 %3164, 134217728
  %3275 = icmp eq i32 %3274, 0
  br i1 %3275, label %3310, label %3276

; <label>:3276                                    ; preds = %3273
  %3277 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %3278 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %3279 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %3280 = fadd fast float %3277, -5.000000e-01
  %3281 = fadd fast float %3278, -5.000000e-01
  %3282 = fadd fast float %3279, -5.000000e-01
  %3283 = fmul fast float %3280, %3162
  %3284 = fmul fast float %3281, %3162
  %3285 = fmul fast float %3282, %3162
  %3286 = fadd fast float %3283, 5.000000e-01
  %3287 = fadd fast float %3284, 5.000000e-01
  %3288 = fadd fast float %3285, 5.000000e-01
  %3289 = call float @dx.op.unary.f32(i32 24, float %3137)  ; Sqrt(value)
  %3290 = call float @dx.op.unary.f32(i32 24, float %3138)  ; Sqrt(value)
  %3291 = call float @dx.op.unary.f32(i32 24, float %3139)  ; Sqrt(value)
  %3292 = fmul fast float %3286, 2.000000e+00
  %3293 = fsub fast float 1.000000e+00, %3292
  %3294 = fmul fast float %3293, %3289
  %3295 = fadd fast float %3294, %3292
  %3296 = fmul fast float %3295, %3289
  %3297 = fmul fast float %3287, 2.000000e+00
  %3298 = fsub fast float 1.000000e+00, %3297
  %3299 = fmul fast float %3298, %3290
  %3300 = fadd fast float %3299, %3297
  %3301 = fmul fast float %3300, %3290
  %3302 = fmul fast float %3288, 2.000000e+00
  %3303 = fsub fast float 1.000000e+00, %3302
  %3304 = fmul fast float %3303, %3291
  %3305 = fadd fast float %3304, %3302
  %3306 = fmul fast float %3305, %3291
  %3307 = fmul fast float %3296, %3296
  %3308 = fmul fast float %3301, %3301
  %3309 = fmul fast float %3306, %3306
  br label %3326

; <label>:3310                                    ; preds = %3273
  %3311 = fmul fast float %329, %329
  %3312 = fmul fast float %333, %333
  %3313 = fmul fast float %337, %337
  %3314 = fadd fast float %3311, -1.000000e+00
  %3315 = fadd fast float %3312, -1.000000e+00
  %3316 = fadd fast float %3313, -1.000000e+00
  %3317 = fmul fast float %3162, %3314
  %3318 = fmul fast float %3162, %3315
  %3319 = fmul fast float %3162, %3316
  %3320 = fadd fast float %3317, 1.000000e+00
  %3321 = fadd fast float %3318, 1.000000e+00
  %3322 = fadd fast float %3319, 1.000000e+00
  %3323 = fmul fast float %3320, %3137
  %3324 = fmul fast float %3321, %3138
  %3325 = fmul fast float %3322, %3139
  br label %3326

; <label>:3326                                    ; preds = %3310, %3276, %3167, %3123
  %3327 = phi float [ %3272, %3167 ], [ %3148, %3276 ], [ %3148, %3310 ], [ 0x3FA23C0BE0000000, %3123 ]
  %3328 = phi float [ %3264, %3167 ], [ %3307, %3276 ], [ %3323, %3310 ], [ 1.000000e+00, %3123 ]
  %3329 = phi float [ %3265, %3167 ], [ %3308, %3276 ], [ %3324, %3310 ], [ 1.000000e+00, %3123 ]
  %3330 = phi float [ %3266, %3167 ], [ %3309, %3276 ], [ %3325, %3310 ], [ 1.000000e+00, %3123 ]
  %3331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3332 = extractvalue %dx.types.CBufRet.i32 %3331, 1
  %3333 = and i32 %3332, 1
  %3334 = icmp ne i32 %3333, 0
  %3335 = add i32 %32, 356
  %3336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3335, i32 undef)  ; BufferLoad(srv,index,wot)
  %3337 = extractvalue %dx.types.ResRet.i32 %3336, 0
  %3338 = and i32 %3337, 32
  %3339 = icmp ne i32 %3338, 0
  %3340 = and i1 %3334, %3339
  %3341 = select i1 %3340, float 1.000000e+00, float %3328
  %3342 = select i1 %3340, float 0x3FD3333340000000, float %3329
  %3343 = select i1 %3340, float 0x3FD3333340000000, float %3330
  %3344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3345 = extractvalue %dx.types.ResRet.i32 %3344, 0
  %3346 = and i32 %3345, 32
  %3347 = icmp eq i32 %3346, 0
  br i1 %3347, label %3420, label %3348

; <label>:3348                                    ; preds = %3326
  %3349 = add i32 %32, 140
  %3350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3349, i32 undef)  ; BufferLoad(srv,index,wot)
  %3351 = extractvalue %dx.types.ResRet.i32 %3350, 0
  %3352 = add i32 %32, 388
  %3353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3352, i32 undef)  ; BufferLoad(srv,index,wot)
  %3354 = extractvalue %dx.types.ResRet.i32 %3353, 0
  %3355 = add i32 %3354, 0
  %3356 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3355, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3357 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3356, %dx.types.Handle %63, float %2933, float %2934, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3358 = extractvalue %dx.types.ResRet.f32 %3357, 0
  %3359 = extractvalue %dx.types.ResRet.f32 %3357, 1
  %3360 = extractvalue %dx.types.ResRet.f32 %3357, 2
  %3361 = extractvalue %dx.types.ResRet.f32 %3357, 3
  %3362 = and i32 %3351, 255
  %3363 = uitofp i32 %3362 to float
  %3364 = lshr i32 %3351, 8
  %3365 = and i32 %3364, 255
  %3366 = uitofp i32 %3365 to float
  %3367 = lshr i32 %3351, 16
  %3368 = and i32 %3367, 255
  %3369 = uitofp i32 %3368 to float
  %3370 = fmul fast float %3369, 0x3F70101000000000
  %3371 = fmul fast float %3358, %3363
  %3372 = fadd fast float %3371, %3366
  %3373 = fmul fast float %3372, 0x3F70101000000000
  %3374 = fadd fast float %3359, -5.000000e-01
  %3375 = fadd fast float %3361, -5.000000e-01
  %3376 = fmul fast float %3374, %3370
  %3377 = fmul fast float %3375, %3370
  %3378 = fadd fast float %3376, 5.000000e-01
  %3379 = fadd fast float %3377, 5.000000e-01
  %3380 = fmul fast float %3378, 2.000000e+00
  %3381 = fadd fast float %3380, -1.000000e+00
  %3382 = fmul fast float %3379, 2.000000e+00
  %3383 = fadd fast float %3382, -1.000000e+00
  %3384 = fadd fast float %3381, %3383
  %3385 = fmul fast float %3384, 5.000000e-01
  %3386 = fsub fast float %3381, %3383
  %3387 = fmul fast float %3386, 5.000000e-01
  %3388 = call float @dx.op.unary.f32(i32 6, float %3385)  ; FAbs(value)
  %3389 = fsub fast float 1.000000e+00, %3388
  %3390 = call float @dx.op.unary.f32(i32 6, float %3387)  ; FAbs(value)
  %3391 = fsub fast float %3389, %3390
  %3392 = call float @dx.op.dot3.f32(i32 55, float %3385, float %3387, float %3391, float %3385, float %3387, float %3391)  ; Dot3(ax,ay,az,bx,by,bz)
  %3393 = call float @dx.op.unary.f32(i32 25, float %3392)  ; Rsqrt(value)
  %3394 = fmul fast float %3385, %3393
  %3395 = fmul fast float %3387, %3393
  %3396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3397 = extractvalue %dx.types.ResRet.i32 %3396, 0
  %3398 = and i32 %3397, 67108864
  %3399 = icmp eq i32 %3398, 0
  br i1 %3399, label %3416, label %3400

; <label>:3400                                    ; preds = %3348
  %3401 = add i32 %32, 328
  %3402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3401, i32 undef)  ; BufferLoad(srv,index,wot)
  %3403 = extractvalue %dx.types.ResRet.i32 %3402, 0
  %3404 = and i32 %3403, 65535
  %3405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3404)  ; LegacyF16ToF32(value)
  %3406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2843, i32 undef)  ; BufferLoad(srv,index,wot)
  %3407 = extractvalue %dx.types.ResRet.i32 %3406, 0
  %3408 = and i32 %3407, 65535
  %3409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3408)  ; LegacyF16ToF32(value)
  %3410 = lshr i32 %3403, 16
  %3411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3410)  ; LegacyF16ToF32(value)
  %3412 = fsub fast float %3373, %3411
  %3413 = fmul fast float %3412, %3405
  %3414 = fadd fast float %3413, %3409
  %3415 = call float @dx.op.unary.f32(i32 7, float %3414)  ; Saturate(value)
  br label %3416

; <label>:3416                                    ; preds = %3400, %3348
  %3417 = phi float [ %3415, %3400 ], [ %3373, %3348 ]
  %3418 = call float @dx.op.dot2.f32(i32 54, float %3394, float %3395, float %2837, float %2838)  ; Dot2(ax,ay,bx,by)
  %3419 = call float @dx.op.dot2.f32(i32 54, float %3394, float %3395, float %2839, float %2840)  ; Dot2(ax,ay,bx,by)
  br label %3420

; <label>:3420                                    ; preds = %3416, %3326
  %3421 = phi float [ %3417, %3416 ], [ 0x3FD6666660000000, %3326 ]
  %3422 = phi float [ %3418, %3416 ], [ 0.000000e+00, %3326 ]
  %3423 = phi float [ %3419, %3416 ], [ 0.000000e+00, %3326 ]
  %3424 = phi float [ %3360, %3416 ], [ 1.000000e+00, %3326 ]
  %3425 = add i32 %32, 208
  %3426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.i32 %3426, 0
  %3428 = lshr i32 %3427, 22
  %3429 = shl nuw nsw i32 %3428, 5
  %3430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3429)  ; LegacyF16ToF32(value)
  %3431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3432 = extractvalue %dx.types.ResRet.i32 %3431, 0
  %3433 = and i32 %3432, 64
  %3434 = icmp eq i32 %3433, 0
  br i1 %3434, label %3468, label %3435

; <label>:3435                                    ; preds = %3420
  %3436 = add i32 %32, 404
  %3437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3438 = extractvalue %dx.types.ResRet.i32 %3437, 0
  %3439 = add i32 %3438, 0
  %3440 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3439, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3442 = extractvalue %dx.types.ResRet.i32 %3441, 0
  %3443 = and i32 %3442, 131072
  %3444 = icmp eq i32 %3443, 0
  %3445 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3440, %dx.types.Handle %63, float %2933, float %2934, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3446 = extractvalue %dx.types.ResRet.f32 %3445, 0
  %3447 = extractvalue %dx.types.ResRet.f32 %3445, 1
  %3448 = extractvalue %dx.types.ResRet.f32 %3445, 2
  %3449 = fmul fast float %3446, %317
  %3450 = fmul fast float %3447, %320
  %3451 = fmul fast float %3448, %323
  br i1 %3444, label %3458, label %3452

; <label>:3452                                    ; preds = %3435
  %3453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3454 = extractvalue %dx.types.CBufRet.f32 %3453, 0
  %3455 = fmul fast float %3454, %3449
  %3456 = fmul fast float %3454, %3450
  %3457 = fmul fast float %3454, %3451
  br label %3458

; <label>:3458                                    ; preds = %3452, %3435
  %3459 = phi float [ %3455, %3452 ], [ %3449, %3435 ]
  %3460 = phi float [ %3456, %3452 ], [ %3450, %3435 ]
  %3461 = phi float [ %3457, %3452 ], [ %3451, %3435 ]
  %3462 = fmul fast float %3459, %3430
  %3463 = select i1 %171, float %3462, float %3459
  %3464 = call float @dx.op.dot3.f32(i32 55, float %3463, float %3460, float %3461, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3465 = select i1 %171, float 0.000000e+00, float %3459
  %3466 = select i1 %171, float %3464, float %3460
  %3467 = select i1 %171, float 0.000000e+00, float %3461
  br label %3468

; <label>:3468                                    ; preds = %3458, %3420
  %3469 = phi float [ %3465, %3458 ], [ 0.000000e+00, %3420 ]
  %3470 = phi float [ %3466, %3458 ], [ 0.000000e+00, %3420 ]
  %3471 = phi float [ %3467, %3458 ], [ 0.000000e+00, %3420 ]
  %3472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3473 = extractvalue %dx.types.ResRet.i32 %3472, 0
  %3474 = and i32 %3473, 1024
  %3475 = icmp eq i32 %3474, 0
  br i1 %3475, label %3506, label %3476

; <label>:3476                                    ; preds = %3468
  %3477 = add i32 %32, 200
  %3478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3477, i32 undef)  ; BufferLoad(srv,index,wot)
  %3479 = extractvalue %dx.types.ResRet.i32 %3478, 0
  %3480 = and i32 %3479, 255
  %3481 = uitofp i32 %3480 to float
  %3482 = fmul fast float %3481, 0x3F70101020000000
  %3483 = lshr i32 %3479, 8
  %3484 = and i32 %3483, 255
  %3485 = uitofp i32 %3484 to float
  %3486 = fmul fast float %3485, 0x3F70101020000000
  %3487 = lshr i32 %3479, 16
  %3488 = and i32 %3487, 255
  %3489 = uitofp i32 %3488 to float
  %3490 = fmul fast float %3489, 0x3F70101020000000
  %3491 = fmul fast float %3482, %3482
  %3492 = fmul fast float %3486, %3486
  %3493 = fmul fast float %3490, %3490
  %3494 = add i32 %32, 468
  %3495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3494, i32 undef)  ; BufferLoad(srv,index,wot)
  %3496 = extractvalue %dx.types.ResRet.i32 %3495, 0
  %3497 = add i32 %3496, 0
  %3498 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3497, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3499 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3498, %dx.types.Handle %64, float %2933, float %2934, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3500 = extractvalue %dx.types.ResRet.f32 %3499, 0
  %3501 = extractvalue %dx.types.ResRet.f32 %3499, 1
  %3502 = extractvalue %dx.types.ResRet.f32 %3499, 2
  %3503 = fmul fast float %3491, %3500
  %3504 = fmul fast float %3492, %3501
  %3505 = fmul fast float %3493, %3502
  br label %3506

; <label>:3506                                    ; preds = %3476, %3468
  %3507 = phi float [ %3503, %3476 ], [ 0.000000e+00, %3468 ]
  %3508 = phi float [ %3504, %3476 ], [ 0.000000e+00, %3468 ]
  %3509 = phi float [ %3505, %3476 ], [ 0.000000e+00, %3468 ]
  %3510 = fcmp fast ogt float %3507, 0.000000e+00
  %3511 = fcmp fast ogt float %3508, 0.000000e+00
  %3512 = fcmp fast ogt float %3509, 0.000000e+00
  %3513 = call float @dx.op.unary.f32(i32 23, float %3507)  ; Log(value)
  %3514 = call float @dx.op.unary.f32(i32 23, float %3508)  ; Log(value)
  %3515 = call float @dx.op.unary.f32(i32 23, float %3509)  ; Log(value)
  %3516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.i32 %3516, 0
  %3518 = lshr i32 %3517, 7
  %3519 = and i32 %3518, 32752
  %3520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3519)  ; LegacyF16ToF32(value)
  %3521 = fmul fast float %3513, 0xBFE62E4300000000
  %3522 = fmul fast float %3521, %3520
  %3523 = fmul fast float %3514, 0xBFE62E4300000000
  %3524 = fmul fast float %3523, %3520
  %3525 = fmul fast float %3515, 0xBFE62E4300000000
  %3526 = fmul fast float %3525, %3520
  %3527 = select i1 %3510, float %3522, float 1.270000e+02
  %3528 = select i1 %3511, float %3524, float 1.270000e+02
  %3529 = select i1 %3512, float %3526, float 1.270000e+02
  %3530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3531 = extractvalue %dx.types.ResRet.i32 %3530, 0
  %3532 = and i32 %3531, 10240
  %3533 = icmp eq i32 %3532, 0
  br i1 %3533, label %3554, label %3534

; <label>:3534                                    ; preds = %3506
  %3535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.i32 %3535, 0
  %3537 = and i32 %3536, 2048
  %3538 = icmp eq i32 %3537, 0
  br i1 %3538, label %3554, label %3539

; <label>:3539                                    ; preds = %3534
  %3540 = add i32 %32, 484
  %3541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3540, i32 undef)  ; BufferLoad(srv,index,wot)
  %3542 = extractvalue %dx.types.ResRet.i32 %3541, 0
  %3543 = add i32 %3542, 0
  %3544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3543, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3545 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3544, %dx.types.Handle %64, float %2933, float %2934, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3546 = extractvalue %dx.types.ResRet.f32 %3545, 3
  %3547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3548 = extractvalue %dx.types.ResRet.i32 %3547, 0
  %3549 = shl i32 %3548, 4
  %3550 = and i32 %3549, 32752
  %3551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3550)  ; LegacyF16ToF32(value)
  %3552 = fmul fast float %3551, %3546
  %3553 = call float @dx.op.binary.f32(i32 35, float %3552, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3554

; <label>:3554                                    ; preds = %3539, %3534, %3506
  %3555 = phi float [ %3553, %3539 ], [ 0x3F70101020000000, %3534 ], [ 0x3F70101020000000, %3506 ]
  %3556 = add i32 %32, 144
  %3557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3556, i32 undef)  ; BufferLoad(srv,index,wot)
  %3558 = extractvalue %dx.types.ResRet.i32 %3557, 0
  %3559 = and i32 %3558, 255
  %3560 = uitofp i32 %3559 to float
  %3561 = lshr i32 %3558, 8
  %3562 = and i32 %3561, 255
  %3563 = uitofp i32 %3562 to float
  %3564 = call float @dx.op.dot3.f32(i32 55, float %3341, float %3342, float %3343, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3565 = fmul fast float %3563, %3564
  %3566 = fadd fast float %3565, %3560
  %3567 = fmul fast float %3566, 0x3F70101020000000
  %3568 = call float @dx.op.unary.f32(i32 7, float %3567)  ; Saturate(value)
  br i1 %2825, label %3569, label %3604

; <label>:3569                                    ; preds = %3554
  %3570 = fmul fast float %3555, 2.000000e+00
  %3571 = fcmp fast olt float %3527, 1.270000e+02
  %3572 = fcmp fast olt float %3528, 1.270000e+02
  %3573 = fcmp fast olt float %3529, 1.270000e+02
  %3574 = fmul fast float %3527, 0xBFF7154760000000
  %3575 = fmul fast float %3574, %3570
  %3576 = fmul fast float %3528, 0xBFF7154760000000
  %3577 = fmul fast float %3576, %3570
  %3578 = fmul fast float %3529, 0xBFF7154760000000
  %3579 = fmul fast float %3578, %3570
  %3580 = call float @dx.op.unary.f32(i32 21, float %3575)  ; Exp(value)
  %3581 = call float @dx.op.unary.f32(i32 21, float %3577)  ; Exp(value)
  %3582 = call float @dx.op.unary.f32(i32 21, float %3579)  ; Exp(value)
  %3583 = call float @dx.op.unary.f32(i32 7, float %3580)  ; Saturate(value)
  %3584 = call float @dx.op.unary.f32(i32 7, float %3581)  ; Saturate(value)
  %3585 = call float @dx.op.unary.f32(i32 7, float %3582)  ; Saturate(value)
  %3586 = fadd fast float %3583, -1.000000e+00
  %3587 = select i1 %3571, float %3586, float -1.000000e+00
  %3588 = fadd fast float %3584, -1.000000e+00
  %3589 = select i1 %3572, float %3588, float -1.000000e+00
  %3590 = fadd fast float %3585, -1.000000e+00
  %3591 = select i1 %3573, float %3590, float -1.000000e+00
  %3592 = fmul fast float %3587, %3121
  %3593 = fmul fast float %3589, %3121
  %3594 = fmul fast float %3591, %3121
  %3595 = fadd fast float %3592, 1.000000e+00
  %3596 = fadd fast float %3593, 1.000000e+00
  %3597 = fadd fast float %3594, 1.000000e+00
  %3598 = fmul fast float %3595, %2814
  %3599 = fmul fast float %3596, %2815
  %3600 = fmul fast float %3597, %2816
  %3601 = fmul fast float %3595, %2817
  %3602 = fmul fast float %3596, %2818
  %3603 = fmul fast float %3597, %2819
  br label %3604

; <label>:3604                                    ; preds = %3569, %3554
  %3605 = phi float [ %3598, %3569 ], [ %2814, %3554 ]
  %3606 = phi float [ %3599, %3569 ], [ %2815, %3554 ]
  %3607 = phi float [ %3600, %3569 ], [ %2816, %3554 ]
  %3608 = phi float [ %3601, %3569 ], [ %2817, %3554 ]
  %3609 = phi float [ %3602, %3569 ], [ %2818, %3554 ]
  %3610 = phi float [ %3603, %3569 ], [ %2819, %3554 ]
  %3611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.i32 %3611, 0
  %3613 = and i32 %3612, 3
  %3614 = icmp eq i32 %3613, 3
  br i1 %3614, label %3693, label %3615

; <label>:3615                                    ; preds = %3604
  %3616 = and i32 %3612, 16
  %3617 = icmp ne i32 %3616, 0
  %3618 = select i1 %3617, float %3121, float 0.000000e+00
  %3619 = icmp eq i32 %3613, 0
  br i1 %3619, label %3620, label %3648

; <label>:3620                                    ; preds = %3615
  %3621 = and i32 %3612, 64
  %3622 = icmp ne i32 %3621, 0
  %3623 = select i1 %3622, float %3121, float 0.000000e+00
  %3624 = fsub fast float %3341, %3605
  %3625 = fsub fast float %3342, %3606
  %3626 = fsub fast float %3343, %3607
  %3627 = fmul fast float %3618, %3624
  %3628 = fmul fast float %3618, %3625
  %3629 = fmul fast float %3618, %3626
  %3630 = fadd fast float %3627, %3605
  %3631 = fadd fast float %3628, %3606
  %3632 = fadd fast float %3629, %3607
  %3633 = fsub fast float %3327, %2820
  %3634 = fmul fast float %3618, %3633
  %3635 = fadd fast float %3634, %2820
  %3636 = fsub fast float %3469, %3608
  %3637 = fsub fast float %3470, %3609
  %3638 = fsub fast float %3471, %3610
  %3639 = fmul fast float %3623, %3636
  %3640 = fmul fast float %3623, %3637
  %3641 = fmul fast float %3623, %3638
  %3642 = fadd fast float %3639, %3608
  %3643 = fadd fast float %3640, %3609
  %3644 = fadd fast float %3641, %3610
  %3645 = fsub fast float %3568, %2823
  %3646 = fmul fast float %3618, %3645
  %3647 = fadd fast float %3646, %2823
  br label %3693

; <label>:3648                                    ; preds = %3615
  %3649 = icmp eq i32 %3613, 1
  br i1 %3649, label %3650, label %3663

; <label>:3650                                    ; preds = %3648
  %3651 = fadd fast float %3341, -1.000000e+00
  %3652 = fadd fast float %3342, -1.000000e+00
  %3653 = fadd fast float %3343, -1.000000e+00
  %3654 = fmul fast float %3618, %3651
  %3655 = fmul fast float %3618, %3652
  %3656 = fmul fast float %3618, %3653
  %3657 = fadd fast float %3654, 1.000000e+00
  %3658 = fadd fast float %3655, 1.000000e+00
  %3659 = fadd fast float %3656, 1.000000e+00
  %3660 = fmul fast float %3657, %3605
  %3661 = fmul fast float %3658, %3606
  %3662 = fmul fast float %3659, %3607
  br label %3693

; <label>:3663                                    ; preds = %3648
  %3664 = icmp eq i32 %3613, 2
  br i1 %3664, label %3665, label %3693

; <label>:3665                                    ; preds = %3663
  %3666 = call float @dx.op.unary.f32(i32 24, float %3341)  ; Sqrt(value)
  %3667 = call float @dx.op.unary.f32(i32 24, float %3342)  ; Sqrt(value)
  %3668 = call float @dx.op.unary.f32(i32 24, float %3343)  ; Sqrt(value)
  %3669 = fadd fast float %3666, -5.000000e-01
  %3670 = fadd fast float %3667, -5.000000e-01
  %3671 = fadd fast float %3668, -5.000000e-01
  %3672 = fmul fast float %3669, %3618
  %3673 = fmul fast float %3670, %3618
  %3674 = fmul fast float %3671, %3618
  %3675 = fadd fast float %3672, 5.000000e-01
  %3676 = fadd fast float %3673, 5.000000e-01
  %3677 = fadd fast float %3674, 5.000000e-01
  %3678 = fmul fast float %3675, 2.000000e+00
  %3679 = fsub fast float 1.000000e+00, %3678
  %3680 = fmul fast float %3679, %3605
  %3681 = fadd fast float %3680, %3678
  %3682 = fmul fast float %3681, %3605
  %3683 = fmul fast float %3676, 2.000000e+00
  %3684 = fsub fast float 1.000000e+00, %3683
  %3685 = fmul fast float %3684, %3606
  %3686 = fadd fast float %3685, %3683
  %3687 = fmul fast float %3686, %3606
  %3688 = fmul fast float %3677, 2.000000e+00
  %3689 = fsub fast float 1.000000e+00, %3688
  %3690 = fmul fast float %3689, %3607
  %3691 = fadd fast float %3690, %3688
  %3692 = fmul fast float %3691, %3607
  br label %3693

; <label>:3693                                    ; preds = %3665, %3663, %3650, %3620, %3604
  %3694 = phi float [ %3605, %3604 ], [ %3682, %3665 ], [ %3605, %3663 ], [ %3660, %3650 ], [ %3630, %3620 ]
  %3695 = phi float [ %3606, %3604 ], [ %3687, %3665 ], [ %3606, %3663 ], [ %3661, %3650 ], [ %3631, %3620 ]
  %3696 = phi float [ %3607, %3604 ], [ %3692, %3665 ], [ %3607, %3663 ], [ %3662, %3650 ], [ %3632, %3620 ]
  %3697 = phi float [ %3608, %3604 ], [ %3608, %3665 ], [ %3608, %3663 ], [ %3608, %3650 ], [ %3642, %3620 ]
  %3698 = phi float [ %3609, %3604 ], [ %3609, %3665 ], [ %3609, %3663 ], [ %3609, %3650 ], [ %3643, %3620 ]
  %3699 = phi float [ %3610, %3604 ], [ %3610, %3665 ], [ %3610, %3663 ], [ %3610, %3650 ], [ %3644, %3620 ]
  %3700 = phi float [ %2820, %3604 ], [ %2820, %3665 ], [ %2820, %3663 ], [ %2820, %3650 ], [ %3635, %3620 ]
  %3701 = phi float [ %2823, %3604 ], [ %2823, %3665 ], [ %2823, %3663 ], [ %2823, %3650 ], [ %3647, %3620 ]
  %3702 = and i32 %3612, 12
  %3703 = icmp eq i32 %3702, 12
  br i1 %3703, label %3776, label %3704

; <label>:3704                                    ; preds = %3693
  %3705 = and i32 %3612, 2097184
  %3706 = icmp eq i32 %3705, 2097184
  %3707 = select i1 %3706, float %3121, float 0.000000e+00
  %3708 = and i32 %3612, 4194336
  %3709 = icmp eq i32 %3708, 4194336
  %3710 = select i1 %3709, float %3121, float 0.000000e+00
  %3711 = and i32 %3612, 8388640
  %3712 = icmp eq i32 %3711, 8388640
  %3713 = select i1 %3712, float %3121, float 0.000000e+00
  %3714 = icmp eq i32 %3702, 0
  br i1 %3714, label %3715, label %3728

; <label>:3715                                    ; preds = %3704
  %3716 = fsub fast float %3422, %2812
  %3717 = fsub fast float %3423, %2813
  %3718 = fmul fast float %3707, %3716
  %3719 = fmul fast float %3707, %3717
  %3720 = fadd fast float %3718, %2812
  %3721 = fadd fast float %3719, %2813
  %3722 = fsub fast float %3424, %2822
  %3723 = fmul fast float %3710, %3722
  %3724 = fadd fast float %3723, %2822
  %3725 = fsub fast float %3421, %2821
  %3726 = fmul fast float %3713, %3725
  %3727 = fadd fast float %3726, %2821
  br label %3776

; <label>:3728                                    ; preds = %3704
  %3729 = icmp eq i32 %3702, 4
  br i1 %3729, label %3730, label %3762

; <label>:3730                                    ; preds = %3728
  %3731 = fmul fast float %3707, %3422
  %3732 = fmul fast float %3707, %3423
  %3733 = fadd fast float %3731, %2812
  %3734 = fadd fast float %3732, %2813
  %3735 = call float @dx.op.binary.f32(i32 36, float %2822, float %3424)  ; FMin(a,b)
  %3736 = fsub fast float %3735, %2822
  %3737 = fmul fast float %3736, %3710
  %3738 = fadd fast float %3737, %2822
  %3739 = fadd fast float %3421, %2821
  %3740 = fmul fast float %3739, 0x3FF337FAE0000000
  %3741 = fmul fast float %2821, %2821
  %3742 = fmul fast float %3421, %3421
  %3743 = fadd fast float %3742, %3741
  %3744 = fmul fast float %3743, 0x3FE5152B00000000
  %3745 = fmul fast float %2821, 0xBFCC1F85E0000000
  %3746 = fmul fast float %3745, %3421
  %3747 = fadd fast float %3746, 0xBFE1363700000000
  %3748 = fadd fast float %3747, %3740
  %3749 = fsub fast float %3748, %3744
  %3750 = fmul fast float %3739, 0x3FBA6F0D00000000
  %3751 = fmul fast float %3743, 0x3FD0432880000000
  %3752 = fmul fast float %2821, 0xBFEF110800000000
  %3753 = fmul fast float %3752, %3421
  %3754 = fadd fast float %3753, 1.000000e+00
  %3755 = fsub fast float %3754, %3750
  %3756 = fadd fast float %3755, %3751
  %3757 = fdiv fast float %3749, %3756
  %3758 = call float @dx.op.unary.f32(i32 7, float %3757)  ; Saturate(value)
  %3759 = fsub fast float %3758, %2821
  %3760 = fmul fast float %3759, %3713
  %3761 = fadd fast float %3760, %2821
  br label %3776

; <label>:3762                                    ; preds = %3728
  %3763 = icmp eq i32 %3702, 8
  br i1 %3763, label %3764, label %3776

; <label>:3764                                    ; preds = %3762
  %3765 = fmul fast float %3707, %3422
  %3766 = fmul fast float %3707, %3423
  %3767 = fadd fast float %3765, %2812
  %3768 = fadd fast float %3766, %2813
  %3769 = call float @dx.op.binary.f32(i32 36, float %2822, float %3424)  ; FMin(a,b)
  %3770 = fsub fast float %3769, %2822
  %3771 = fmul fast float %3770, %3710
  %3772 = fadd fast float %3771, %2822
  %3773 = fsub fast float %3421, %2821
  %3774 = fmul fast float %3713, %3773
  %3775 = fadd fast float %3774, %2821
  br label %3776

; <label>:3776                                    ; preds = %3764, %3762, %3730, %3715, %3693, %3120, %2824, %2811
  %3777 = phi float [ %2812, %3693 ], [ %2812, %3120 ], [ %2812, %2811 ], [ %2812, %2824 ], [ %3720, %3715 ], [ %3733, %3730 ], [ %2812, %3762 ], [ %3767, %3764 ]
  %3778 = phi float [ %2813, %3693 ], [ %2813, %3120 ], [ %2813, %2811 ], [ %2813, %2824 ], [ %3721, %3715 ], [ %3734, %3730 ], [ %2813, %3762 ], [ %3768, %3764 ]
  %3779 = phi float [ %3694, %3693 ], [ %2814, %3120 ], [ %2814, %2811 ], [ %2814, %2824 ], [ %3694, %3715 ], [ %3694, %3730 ], [ %3694, %3762 ], [ %3694, %3764 ]
  %3780 = phi float [ %3695, %3693 ], [ %2815, %3120 ], [ %2815, %2811 ], [ %2815, %2824 ], [ %3695, %3715 ], [ %3695, %3730 ], [ %3695, %3762 ], [ %3695, %3764 ]
  %3781 = phi float [ %3696, %3693 ], [ %2816, %3120 ], [ %2816, %2811 ], [ %2816, %2824 ], [ %3696, %3715 ], [ %3696, %3730 ], [ %3696, %3762 ], [ %3696, %3764 ]
  %3782 = phi float [ %3697, %3693 ], [ %2817, %3120 ], [ %2817, %2811 ], [ %2817, %2824 ], [ %3697, %3715 ], [ %3697, %3730 ], [ %3697, %3762 ], [ %3697, %3764 ]
  %3783 = phi float [ %3698, %3693 ], [ %2818, %3120 ], [ %2818, %2811 ], [ %2818, %2824 ], [ %3698, %3715 ], [ %3698, %3730 ], [ %3698, %3762 ], [ %3698, %3764 ]
  %3784 = phi float [ %3699, %3693 ], [ %2819, %3120 ], [ %2819, %2811 ], [ %2819, %2824 ], [ %3699, %3715 ], [ %3699, %3730 ], [ %3699, %3762 ], [ %3699, %3764 ]
  %3785 = phi float [ %3700, %3693 ], [ %2820, %3120 ], [ %2820, %2811 ], [ %2820, %2824 ], [ %3700, %3715 ], [ %3700, %3730 ], [ %3700, %3762 ], [ %3700, %3764 ]
  %3786 = phi float [ %2821, %3693 ], [ %2821, %3120 ], [ %2821, %2811 ], [ %2821, %2824 ], [ %3727, %3715 ], [ %3761, %3730 ], [ %2821, %3762 ], [ %3775, %3764 ]
  %3787 = phi float [ %2822, %3693 ], [ %2822, %3120 ], [ %2822, %2811 ], [ %2822, %2824 ], [ %3724, %3715 ], [ %3738, %3730 ], [ %2822, %3762 ], [ %3772, %3764 ]
  %3788 = phi float [ %3701, %3693 ], [ %2823, %3120 ], [ %2823, %2811 ], [ %2823, %2824 ], [ %3701, %3715 ], [ %3701, %3730 ], [ %3701, %3762 ], [ %3701, %3764 ]
  %3789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3790 = extractvalue %dx.types.CBufRet.f32 %3789, 0
  %3791 = call float @dx.op.dot2.f32(i32 54, float %3777, float %3778, float %3777, float %3778)  ; Dot2(ax,ay,bx,by)
  %3792 = fmul fast float %3791, 0x3FE3333340000000
  %3793 = fsub fast float 1.000000e+00, %3792
  %3794 = call float @dx.op.dot3.f32(i32 55, float %3777, float %3778, float %3793, float %3777, float %3778, float %3793)  ; Dot3(ax,ay,az,bx,by,bz)
  %3795 = call float @dx.op.unary.f32(i32 25, float %3794)  ; Rsqrt(value)
  %3796 = fmul fast float %3795, %3777
  %3797 = fmul fast float %3795, %3778
  %3798 = fmul fast float %3793, %3795
  %3799 = fmul fast float %3798, %74
  %3800 = fmul fast float %3798, %75
  %3801 = fmul fast float %3798, %76
  %3802 = fmul fast float %3796, %48
  %3803 = fmul fast float %3796, %49
  %3804 = fmul fast float %3796, %50
  %3805 = fadd fast float %3799, %3802
  %3806 = fadd fast float %3800, %3803
  %3807 = fadd fast float %3801, %3804
  %3808 = fmul fast float %86, %3797
  %3809 = fmul fast float %87, %3797
  %3810 = fmul fast float %88, %3797
  %3811 = fadd fast float %3805, %3808
  %3812 = fadd fast float %3806, %3809
  %3813 = fadd fast float %3807, %3810
  %3814 = call float @dx.op.dot3.f32(i32 55, float %3811, float %3812, float %3813, float %3811, float %3812, float %3813)  ; Dot3(ax,ay,az,bx,by,bz)
  %3815 = call float @dx.op.unary.f32(i32 25, float %3814)  ; Rsqrt(value)
  %3816 = fmul fast float %3811, %3815
  %3817 = fmul fast float %3812, %3815
  %3818 = fmul fast float %3813, %3815
  %3819 = and i32 %34, 1
  %3820 = icmp eq i32 %3819, 0
  br i1 %3820, label %3821, label %4329

; <label>:3821                                    ; preds = %3776
  %3822 = call float @dx.op.unary.f32(i32 83, float %130)  ; DerivCoarseX(value)
  %3823 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3824 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3825 = call float @dx.op.unary.f32(i32 84, float %130)  ; DerivCoarseY(value)
  %3826 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3827 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3828 = fadd fast float %3822, %130
  %3829 = fadd fast float %3823, %131
  %3830 = fadd fast float %3824, %132
  %3831 = fadd fast float %3825, %130
  %3832 = fadd fast float %3826, %131
  %3833 = fadd fast float %3827, %132
  %3834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3835 = extractvalue %dx.types.CBufRet.f32 %3834, 0
  %3836 = extractvalue %dx.types.CBufRet.f32 %3834, 1
  %3837 = extractvalue %dx.types.CBufRet.f32 %3834, 2
  %3838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3839 = extractvalue %dx.types.CBufRet.f32 %3838, 2
  %3840 = extractvalue %dx.types.CBufRet.f32 %3838, 3
  %3841 = fmul fast float %3835, %67
  %3842 = fmul fast float %3841, %3839
  %3843 = fmul fast float %3836, %68
  %3844 = fmul fast float %3843, %3840
  %3845 = fptoui float %3842 to i32
  %3846 = fptoui float %3844 to i32
  %3847 = fadd fast float %3835, -1.000000e+00
  %3848 = fadd fast float %3836, -1.000000e+00
  %3849 = fptoui float %3847 to i32
  %3850 = fptoui float %3848 to i32
  %3851 = call i32 @dx.op.binary.i32(i32 40, i32 %3845, i32 %3849)  ; UMin(a,b)
  %3852 = call i32 @dx.op.binary.i32(i32 40, i32 %3846, i32 %3850)  ; UMin(a,b)
  %3853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3854 = extractvalue %dx.types.CBufRet.f32 %3853, 2
  %3855 = extractvalue %dx.types.CBufRet.f32 %3853, 3
  %3856 = fmul fast float %3854, %62
  %3857 = fsub fast float %3856, %3855
  %3858 = fadd fast float %3837, -1.000000e+00
  %3859 = call float @dx.op.binary.f32(i32 36, float %3857, float %3858)  ; FMin(a,b)
  %3860 = fptoui float %3859 to i32
  %3861 = fptoui float %3835 to i32
  %3862 = fptoui float %3836 to i32
  %3863 = mul i32 %3860, %3862
  %3864 = add i32 %3863, %3852
  %3865 = mul i32 %3864, %3861
  %3866 = add i32 %3865, %3851
  %3867 = shl i32 %3866, 2
  %3868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3867, i32 undef)  ; BufferLoad(srv,index,wot)
  %3869 = extractvalue %dx.types.ResRet.i32 %3868, 0
  %3870 = and i32 %3869, 1023
  %3871 = lshr i32 %3869, 10
  %3872 = icmp eq i32 %3870, 0
  br i1 %3872, label %4298, label %3873

; <label>:3873                                    ; preds = %3821
  %3874 = and i32 %3869, 1023
  br label %3875

; <label>:3875                                    ; preds = %4001, %3873
  %3876 = phi i32 [ %3951, %4001 ], [ 0, %3873 ]
  %3877 = phi float [ %4002, %4001 ], [ 0.000000e+00, %3873 ]
  %3878 = phi float [ %4003, %4001 ], [ %3790, %3873 ]
  %3879 = phi float [ %4004, %4001 ], [ %3788, %3873 ]
  %3880 = phi float [ %4005, %4001 ], [ 0.000000e+00, %3873 ]
  %3881 = phi float [ %4006, %4001 ], [ 0.000000e+00, %3873 ]
  %3882 = phi float [ %4007, %4001 ], [ %3782, %3873 ]
  %3883 = phi float [ %4008, %4001 ], [ %3783, %3873 ]
  %3884 = phi float [ %4009, %4001 ], [ %3784, %3873 ]
  %3885 = phi float [ %4010, %4001 ], [ %3816, %3873 ]
  %3886 = phi float [ %4011, %4001 ], [ %3817, %3873 ]
  %3887 = phi float [ %4012, %4001 ], [ %3818, %3873 ]
  %3888 = phi float [ %4013, %4001 ], [ %3787, %3873 ]
  %3889 = phi float [ %4014, %4001 ], [ %3786, %3873 ]
  %3890 = phi float [ %4015, %4001 ], [ 0.000000e+00, %3873 ]
  %3891 = phi float [ %4016, %4001 ], [ %3785, %3873 ]
  %3892 = phi float [ %4017, %4001 ], [ %3779, %3873 ]
  %3893 = phi float [ %4018, %4001 ], [ %3780, %3873 ]
  %3894 = phi float [ %4019, %4001 ], [ %3781, %3873 ]
  %3895 = add nuw nsw i32 %3876, %3871
  %3896 = shl i32 %3895, 2
  %3897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3896, i32 undef)  ; BufferLoad(srv,index,wot)
  %3898 = extractvalue %dx.types.ResRet.i32 %3897, 0
  %3899 = shl i32 %3898, 8
  %3900 = or i32 %3899, 48
  %3901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3902 = extractvalue %dx.types.ResRet.f32 %3901, 0
  %3903 = extractvalue %dx.types.ResRet.f32 %3901, 1
  %3904 = extractvalue %dx.types.ResRet.f32 %3901, 2
  %3905 = extractvalue %dx.types.ResRet.f32 %3901, 3
  %3906 = or i32 %3899, 64
  %3907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3906, i32 undef)  ; BufferLoad(srv,index,wot)
  %3908 = extractvalue %dx.types.ResRet.i32 %3907, 0
  %3909 = extractvalue %dx.types.ResRet.i32 %3907, 1
  %3910 = or i32 %3899, 80
  %3911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3910, i32 undef)  ; BufferLoad(srv,index,wot)
  %3912 = extractvalue %dx.types.ResRet.f32 %3911, 2
  %3913 = extractvalue %dx.types.ResRet.f32 %3911, 3
  %3914 = or i32 %3899, 96
  %3915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3914, i32 undef)  ; BufferLoad(srv,index,wot)
  %3916 = extractvalue %dx.types.ResRet.f32 %3915, 0
  %3917 = extractvalue %dx.types.ResRet.f32 %3915, 1
  %3918 = extractvalue %dx.types.ResRet.f32 %3915, 2
  %3919 = extractvalue %dx.types.ResRet.f32 %3915, 3
  %3920 = or i32 %3899, 112
  %3921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3920, i32 undef)  ; BufferLoad(srv,index,wot)
  %3922 = extractvalue %dx.types.ResRet.f32 %3921, 2
  %3923 = or i32 %3899, 128
  %3924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3925 = extractvalue %dx.types.ResRet.f32 %3924, 0
  %3926 = extractvalue %dx.types.ResRet.f32 %3924, 1
  %3927 = extractvalue %dx.types.ResRet.f32 %3924, 2
  %3928 = extractvalue %dx.types.ResRet.f32 %3924, 3
  %3929 = or i32 %3899, 144
  %3930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3929, i32 undef)  ; BufferLoad(srv,index,wot)
  %3931 = extractvalue %dx.types.ResRet.f32 %3930, 0
  %3932 = extractvalue %dx.types.ResRet.f32 %3930, 1
  %3933 = extractvalue %dx.types.ResRet.f32 %3930, 2
  %3934 = extractvalue %dx.types.ResRet.f32 %3930, 3
  %3935 = or i32 %3899, 160
  %3936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3935, i32 undef)  ; BufferLoad(srv,index,wot)
  %3937 = extractvalue %dx.types.ResRet.f32 %3936, 0
  %3938 = extractvalue %dx.types.ResRet.f32 %3936, 1
  %3939 = extractvalue %dx.types.ResRet.f32 %3936, 2
  %3940 = extractvalue %dx.types.ResRet.f32 %3936, 3
  %3941 = or i32 %3899, 192
  %3942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3941, i32 undef)  ; BufferLoad(srv,index,wot)
  %3943 = extractvalue %dx.types.ResRet.i32 %3942, 0
  %3944 = or i32 %3899, 208
  %3945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3944, i32 undef)  ; BufferLoad(srv,index,wot)
  %3946 = extractvalue %dx.types.ResRet.f32 %3945, 0
  %3947 = or i32 %3899, 248
  %3948 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3947, i32 undef)  ; BufferLoad(srv,index,wot)
  %3949 = extractvalue %dx.types.ResRet.f32 %3948, 0
  %3950 = extractvalue %dx.types.ResRet.f32 %3948, 1
  %3951 = add nuw nsw i32 %3876, 1
  %3952 = bitcast float %3905 to i32
  %3953 = and i32 %3952, 512
  %3954 = icmp eq i32 %3953, 0
  %3955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3956 = extractvalue %dx.types.ResRet.f32 %3955, 0
  %3957 = extractvalue %dx.types.ResRet.f32 %3955, 1
  %3958 = extractvalue %dx.types.ResRet.f32 %3955, 2
  %3959 = extractvalue %dx.types.ResRet.f32 %3955, 3
  %3960 = call float @dx.op.dot4.f32(i32 56, float %3956, float %3957, float %3958, float %3959, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3961 = or i32 %3899, 16
  %3962 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3961, i32 undef)  ; BufferLoad(srv,index,wot)
  %3963 = extractvalue %dx.types.ResRet.f32 %3962, 0
  %3964 = extractvalue %dx.types.ResRet.f32 %3962, 1
  %3965 = extractvalue %dx.types.ResRet.f32 %3962, 2
  %3966 = extractvalue %dx.types.ResRet.f32 %3962, 3
  %3967 = call float @dx.op.dot4.f32(i32 56, float %3963, float %3964, float %3965, float %3966, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3968 = or i32 %3899, 32
  %3969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3968, i32 undef)  ; BufferLoad(srv,index,wot)
  %3970 = extractvalue %dx.types.ResRet.f32 %3969, 0
  %3971 = extractvalue %dx.types.ResRet.f32 %3969, 1
  %3972 = extractvalue %dx.types.ResRet.f32 %3969, 2
  %3973 = extractvalue %dx.types.ResRet.f32 %3969, 3
  %3974 = call float @dx.op.dot4.f32(i32 56, float %3970, float %3971, float %3972, float %3973, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3975 = call float @dx.op.unary.f32(i32 27, float %3960)  ; Round_ni(value)
  %3976 = call float @dx.op.unary.f32(i32 6, float %3975)  ; FAbs(value)
  %3977 = call float @dx.op.unary.f32(i32 27, float %3967)  ; Round_ni(value)
  %3978 = call float @dx.op.unary.f32(i32 6, float %3977)  ; FAbs(value)
  %3979 = call float @dx.op.unary.f32(i32 6, float %3974)  ; FAbs(value)
  %3980 = call float @dx.op.unary.f32(i32 27, float %3979)  ; Round_ni(value)
  %3981 = fadd fast float %3978, %3976
  %3982 = fadd fast float %3981, %3980
  %3983 = fcmp fast oeq float %3982, 0.000000e+00
  %3984 = call float @dx.op.dot4.f32(i32 56, float %3956, float %3957, float %3958, float %3959, float %3828, float %3829, float %3830, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3985 = call float @dx.op.dot4.f32(i32 56, float %3963, float %3964, float %3965, float %3966, float %3828, float %3829, float %3830, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3986 = call float @dx.op.dot4.f32(i32 56, float %3956, float %3957, float %3958, float %3959, float %3831, float %3832, float %3833, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3987 = call float @dx.op.dot4.f32(i32 56, float %3963, float %3964, float %3965, float %3966, float %3831, float %3832, float %3833, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3988 = fsub fast float %3984, %3960
  %3989 = fsub fast float %3986, %3960
  %3990 = fsub fast float %3985, %3967
  %3991 = fsub fast float %3987, %3967
  %3992 = call float @dx.op.dot3.f32(i32 55, float %3902, float %3903, float %3904, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 2
  %3995 = fadd fast float %3994, %3992
  %3996 = call float @dx.op.unary.f32(i32 7, float %3995)  ; Saturate(value)
  %3997 = extractvalue %dx.types.CBufRet.f32 %3993, 0
  %3998 = fcmp fast ogt float %3996, %3997
  %3999 = and i1 %3983, %3998
  %4000 = and i1 %3954, %3999
  br i1 %4000, label %4021, label %4001

; <label>:4001                                    ; preds = %4284, %4102, %4021, %3875
  %4002 = phi float [ %3877, %4021 ], [ %4105, %4102 ], [ %4105, %4284 ], [ %3877, %3875 ]
  %4003 = phi float [ %3878, %4021 ], [ %3878, %4102 ], [ %4259, %4284 ], [ %3878, %3875 ]
  %4004 = phi float [ %3879, %4021 ], [ %3879, %4102 ], [ %4257, %4284 ], [ %3879, %3875 ]
  %4005 = phi float [ %3880, %4021 ], [ %3880, %4102 ], [ %4229, %4284 ], [ %3880, %3875 ]
  %4006 = phi float [ %3881, %4021 ], [ %3881, %4102 ], [ %4227, %4284 ], [ %3881, %3875 ]
  %4007 = phi float [ %3882, %4021 ], [ %3882, %4102 ], [ %4294, %4284 ], [ %3882, %3875 ]
  %4008 = phi float [ %3883, %4021 ], [ %3883, %4102 ], [ %4295, %4284 ], [ %3883, %3875 ]
  %4009 = phi float [ %3884, %4021 ], [ %3884, %4102 ], [ %4296, %4284 ], [ %3884, %3875 ]
  %4010 = phi float [ %3885, %4021 ], [ %3885, %4102 ], [ %4208, %4284 ], [ %3885, %3875 ]
  %4011 = phi float [ %3886, %4021 ], [ %3886, %4102 ], [ %4209, %4284 ], [ %3886, %3875 ]
  %4012 = phi float [ %3887, %4021 ], [ %3887, %4102 ], [ %4210, %4284 ], [ %3887, %3875 ]
  %4013 = phi float [ %3888, %4021 ], [ %3888, %4102 ], [ %4237, %4284 ], [ %3888, %3875 ]
  %4014 = phi float [ %3889, %4021 ], [ %3889, %4102 ], [ %4234, %4284 ], [ %3889, %3875 ]
  %4015 = phi float [ %3890, %4021 ], [ %3890, %4102 ], [ %4231, %4284 ], [ %3890, %3875 ]
  %4016 = phi float [ %3891, %4021 ], [ %3891, %4102 ], [ %4225, %4284 ], [ %3891, %3875 ]
  %4017 = phi float [ %3892, %4021 ], [ %3892, %4102 ], [ %4220, %4284 ], [ %3892, %3875 ]
  %4018 = phi float [ %3893, %4021 ], [ %3893, %4102 ], [ %4221, %4284 ], [ %3893, %3875 ]
  %4019 = phi float [ %3894, %4021 ], [ %3894, %4102 ], [ %4222, %4284 ], [ %3894, %3875 ]
  %4020 = icmp eq i32 %3951, %3874
  br i1 %4020, label %4297, label %3875

; <label>:4021                                    ; preds = %3875
  %4022 = extractvalue %dx.types.ResRet.f32 %3921, 3
  %4023 = extractvalue %dx.types.ResRet.f32 %3921, 1
  %4024 = extractvalue %dx.types.ResRet.f32 %3921, 0
  %4025 = extractvalue %dx.types.ResRet.f32 %3911, 1
  %4026 = extractvalue %dx.types.ResRet.f32 %3911, 0
  %4027 = extractvalue %dx.types.ResRet.i32 %3907, 3
  %4028 = extractvalue %dx.types.ResRet.i32 %3907, 2
  %4029 = add i32 %4027, 0
  %4030 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4029, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4031 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4032 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4030, %dx.types.Handle %4031, float %3960, float %3967, float undef, float undef, i32 0, i32 0, i32 undef, float %3988, float %3990, float undef, float %3989, float %3991, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4033 = extractvalue %dx.types.ResRet.f32 %4032, 0
  %4034 = fmul fast float %4033, %4026
  %4035 = fadd fast float %4034, %4025
  %4036 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4037 = fmul fast float %3960, %3916
  %4038 = call float @dx.op.tertiary.f32(i32 46, float %3917, float %3967, float %4037)  ; FMad(a,b,c)
  %4039 = fadd fast float %4038, %4024
  %4040 = fmul fast float %3960, %3918
  %4041 = call float @dx.op.tertiary.f32(i32 46, float %3919, float %3967, float %4040)  ; FMad(a,b,c)
  %4042 = fadd fast float %4041, %4023
  %4043 = fmul fast float %3988, %3916
  %4044 = call float @dx.op.tertiary.f32(i32 46, float %3917, float %3990, float %4043)  ; FMad(a,b,c)
  %4045 = fmul fast float %3988, %3918
  %4046 = call float @dx.op.tertiary.f32(i32 46, float %3919, float %3990, float %4045)  ; FMad(a,b,c)
  %4047 = fmul fast float %3989, %3916
  %4048 = call float @dx.op.tertiary.f32(i32 46, float %3917, float %3991, float %4047)  ; FMad(a,b,c)
  %4049 = fmul fast float %3989, %3918
  %4050 = call float @dx.op.tertiary.f32(i32 46, float %3919, float %3991, float %4049)  ; FMad(a,b,c)
  %4051 = add i32 %4028, 0
  %4052 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4051, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4053 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4052, %dx.types.Handle %4031, float %4039, float %4042, float undef, float undef, i32 0, i32 0, i32 undef, float %4044, float %4046, float undef, float %4048, float %4050, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4054 = extractvalue %dx.types.ResRet.f32 %4053, 0
  %4055 = and i32 %3952, 1024
  %4056 = icmp ne i32 %4055, 0
  %4057 = fcmp fast ogt float %4054, 0x3FE0101020000000
  %4058 = uitofp i1 %4057 to float
  %4059 = select i1 %4056, float %4058, float %4054
  %4060 = and i32 %3952, 8192
  %4061 = icmp ne i32 %4060, 0
  %4062 = select i1 %4061, float %4022, float 1.000000e+00
  %4063 = fmul fast float %3960, 2.000000e+00
  %4064 = fadd fast float %4063, -1.000000e+00
  %4065 = call float @dx.op.unary.f32(i32 6, float %4064)  ; FAbs(value)
  %4066 = fmul fast float %4065, %3949
  %4067 = fsub fast float %4066, %3949
  %4068 = call float @dx.op.unary.f32(i32 7, float %4067)  ; Saturate(value)
  %4069 = fmul fast float %3967, 2.000000e+00
  %4070 = fadd fast float %4069, -1.000000e+00
  %4071 = call float @dx.op.unary.f32(i32 6, float %4070)  ; FAbs(value)
  %4072 = fmul fast float %4071, %3950
  %4073 = fsub fast float %4072, %3950
  %4074 = call float @dx.op.unary.f32(i32 7, float %4073)  ; Saturate(value)
  %4075 = fmul fast float %3979, %3912
  %4076 = fsub fast float %4075, %3912
  %4077 = call float @dx.op.unary.f32(i32 7, float %4076)  ; Saturate(value)
  %4078 = fmul fast float %4036, %4062
  %4079 = fmul fast float %4078, %4033
  %4080 = fmul fast float %4079, %4068
  %4081 = fmul fast float %4080, %4059
  %4082 = fmul fast float %4081, %4074
  %4083 = fmul fast float %4082, %4077
  %4084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4085 = extractvalue %dx.types.CBufRet.f32 %4084, 1
  %4086 = extractvalue %dx.types.CBufRet.f32 %4084, 0
  %4087 = fsub fast float %3996, %4086
  %4088 = fmul fast float %4087, %4085
  %4089 = call float @dx.op.unary.f32(i32 7, float %4088)  ; Saturate(value)
  %4090 = fmul fast float %4083, %3913
  %4091 = fadd fast float %4083, %3913
  %4092 = fmul fast float %4091, %3922
  %4093 = fsub fast float %4092, %3922
  %4094 = call float @dx.op.unary.f32(i32 7, float %4093)  ; Saturate(value)
  %4095 = and i32 %3952, 128
  %4096 = icmp ne i32 %4095, 0
  %4097 = select i1 %4096, float %4094, float %4090
  %4098 = fmul fast float %4097, %4089
  %4099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4100 = extractvalue %dx.types.CBufRet.f32 %4099, 0
  %4101 = fcmp fast ugt float %4098, %4100
  br i1 %4101, label %4102, label %4001

; <label>:4102                                    ; preds = %4021
  %4103 = select i1 %4061, float %4098, float 0.000000e+00
  %4104 = fadd fast float %4103, %3877
  %4105 = call float @dx.op.unary.f32(i32 7, float %4104)  ; Saturate(value)
  br i1 %4061, label %4001, label %4106

; <label>:4106                                    ; preds = %4102
  %4107 = and i32 %3952, 4
  %4108 = and i32 %3952, 8
  %4109 = add i32 %3908, 0
  %4110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4109, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4112 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4110, %dx.types.Handle %4111, float %4039, float %4042, float undef, float undef, i32 0, i32 0, i32 undef, float %4044, float %4046, float undef, float %4048, float %4050, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4113 = extractvalue %dx.types.ResRet.f32 %4112, 0
  %4114 = extractvalue %dx.types.ResRet.f32 %4112, 1
  %4115 = extractvalue %dx.types.ResRet.f32 %4112, 2
  %4116 = extractvalue %dx.types.ResRet.f32 %4112, 3
  %4117 = bitcast float %3934 to i32
  %4118 = and i32 %4117, 255
  %4119 = uitofp i32 %4118 to float
  %4120 = lshr i32 %4117, 8
  %4121 = and i32 %4120, 255
  %4122 = uitofp i32 %4121 to float
  %4123 = fmul fast float %4116, %4119
  %4124 = fadd fast float %4123, %4122
  %4125 = fmul fast float %4124, 0x3F70101000000000
  %4126 = add i32 %3909, 0
  %4127 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4126, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4128 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4127, %dx.types.Handle %4111, float %4039, float %4042, float undef, float undef, i32 0, i32 0, i32 undef, float %4044, float %4046, float undef, float %4048, float %4050, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4129 = extractvalue %dx.types.ResRet.f32 %4128, 0
  %4130 = extractvalue %dx.types.ResRet.f32 %4128, 1
  %4131 = extractvalue %dx.types.ResRet.f32 %4128, 2
  %4132 = extractvalue %dx.types.ResRet.f32 %4128, 3
  %4133 = bitcast float %3928 to i32
  %4134 = and i32 %4133, 255
  %4135 = uitofp i32 %4134 to float
  %4136 = lshr i32 %4133, 8
  %4137 = and i32 %4136, 255
  %4138 = uitofp i32 %4137 to float
  %4139 = lshr i32 %4133, 16
  %4140 = and i32 %4139, 255
  %4141 = uitofp i32 %4140 to float
  %4142 = fmul fast float %4141, 0x3F70101000000000
  %4143 = fmul fast float %4129, %4135
  %4144 = fadd fast float %4143, %4138
  %4145 = fmul fast float %4144, 0x3F70101000000000
  %4146 = fadd fast float %4130, -5.000000e-01
  %4147 = fadd fast float %4132, -5.000000e-01
  %4148 = fmul fast float %4146, %4142
  %4149 = fmul fast float %4147, %4142
  %4150 = fadd fast float %4148, 5.000000e-01
  %4151 = fadd fast float %4149, 5.000000e-01
  %4152 = fmul fast float %4113, %3937
  %4153 = fmul fast float %4114, %3938
  %4154 = fmul fast float %4115, %3939
  %4155 = fmul fast float %4150, 2.000000e+00
  %4156 = fadd fast float %4155, -1.000000e+00
  %4157 = fmul fast float %4151, 2.000000e+00
  %4158 = fadd fast float %4157, -1.000000e+00
  %4159 = fadd fast float %4156, %4158
  %4160 = fmul fast float %4159, 5.000000e-01
  %4161 = fsub fast float %4156, %4158
  %4162 = fmul fast float %4161, 5.000000e-01
  %4163 = call float @dx.op.unary.f32(i32 6, float %4160)  ; FAbs(value)
  %4164 = fsub fast float 1.000000e+00, %4163
  %4165 = call float @dx.op.unary.f32(i32 6, float %4162)  ; FAbs(value)
  %4166 = fsub fast float %4164, %4165
  %4167 = call float @dx.op.dot3.f32(i32 55, float %4160, float %4162, float %4166, float %4160, float %4162, float %4166)  ; Dot3(ax,ay,az,bx,by,bz)
  %4168 = call float @dx.op.unary.f32(i32 25, float %4167)  ; Rsqrt(value)
  %4169 = fmul fast float %4160, %4168
  %4170 = fmul fast float %4162, %4168
  %4171 = fmul fast float %4168, %4166
  %4172 = fmul fast float %4171, %3902
  %4173 = fmul fast float %4171, %3903
  %4174 = fmul fast float %4171, %3904
  %4175 = fmul fast float %4169, %3925
  %4176 = fmul fast float %4169, %3926
  %4177 = fmul fast float %4169, %3927
  %4178 = fadd fast float %4175, %4172
  %4179 = fadd fast float %4176, %4173
  %4180 = fadd fast float %4177, %4174
  %4181 = fmul fast float %4170, %3931
  %4182 = fmul fast float %4170, %3932
  %4183 = fmul fast float %4170, %3933
  %4184 = fadd fast float %4178, %4181
  %4185 = fadd fast float %4179, %4182
  %4186 = fadd fast float %4180, %4183
  %4187 = call float @dx.op.dot3.f32(i32 55, float %4184, float %4185, float %4186, float %4184, float %4185, float %4186)  ; Dot3(ax,ay,az,bx,by,bz)
  %4188 = call float @dx.op.unary.f32(i32 25, float %4187)  ; Rsqrt(value)
  %4189 = fmul fast float %4184, %4188
  %4190 = fmul fast float %4185, %4188
  %4191 = fmul fast float %4186, %4188
  %4192 = icmp ne i32 %4108, 0
  %4193 = select i1 %4192, float 1.000000e+00, float 0.000000e+00
  %4194 = fmul fast float %4098, %4193
  %4195 = and i32 %3952, 1
  %4196 = icmp eq i32 %4195, 0
  br i1 %4196, label %4197, label %4201

; <label>:4197                                    ; preds = %4106
  %4198 = fsub fast float %4189, %3885
  %4199 = fsub fast float %4190, %3886
  %4200 = fsub fast float %4191, %3887
  br label %4201

; <label>:4201                                    ; preds = %4197, %4106
  %4202 = phi float [ %4198, %4197 ], [ %4189, %4106 ]
  %4203 = phi float [ %4199, %4197 ], [ %4190, %4106 ]
  %4204 = phi float [ %4200, %4197 ], [ %4191, %4106 ]
  %4205 = fmul float %4204, %4194
  %4206 = fmul float %4203, %4194
  %4207 = fmul float %4202, %4194
  %4208 = fadd fast float %4207, %3885
  %4209 = fadd fast float %4206, %3886
  %4210 = fadd fast float %4205, %3887
  %4211 = icmp ne i32 %4107, 0
  %4212 = select i1 %4211, float 1.000000e+00, float 0.000000e+00
  %4213 = fmul fast float %4098, %4212
  %4214 = fsub fast float %4152, %3892
  %4215 = fsub fast float %4153, %3893
  %4216 = fsub fast float %4154, %3894
  %4217 = fmul fast float %4214, %4213
  %4218 = fmul fast float %4215, %4213
  %4219 = fmul fast float %4216, %4213
  %4220 = fadd fast float %4217, %3892
  %4221 = fadd fast float %4218, %3893
  %4222 = fadd fast float %4219, %3894
  %4223 = fsub fast float %4125, %3891
  %4224 = fmul fast float %4223, %4213
  %4225 = fadd fast float %4224, %3891
  %4226 = fmul fast float %4213, %3881
  %4227 = fsub fast float %3881, %4226
  %4228 = fmul fast float %4213, %3880
  %4229 = fsub fast float %3880, %4228
  %4230 = fadd fast float %4098, %3890
  %4231 = call float @dx.op.unary.f32(i32 7, float %4230)  ; Saturate(value)
  %4232 = fsub fast float %4145, %3889
  %4233 = fmul fast float %4232, %4194
  %4234 = fadd fast float %4233, %3889
  %4235 = fsub fast float %4131, %3888
  %4236 = fmul fast float %4235, %4194
  %4237 = fadd fast float %4236, %3888
  %4238 = call float @dx.op.dot3.f32(i32 55, float %4152, float %4153, float %4154, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4240 = extractvalue %dx.types.CBufRet.f32 %4239, 0
  %4241 = extractvalue %dx.types.CBufRet.f32 %4239, 1
  %4242 = fmul fast float %4241, %4238
  %4243 = fadd fast float %4242, %4240
  %4244 = call float @dx.op.unary.f32(i32 7, float %4243)  ; Saturate(value)
  %4245 = bitcast float %3940 to i32
  %4246 = and i32 %4245, 65535
  %4247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4246)  ; LegacyF16ToF32(value)
  %4248 = lshr i32 %4245, 16
  %4249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4248)  ; LegacyF16ToF32(value)
  %4250 = fcmp fast oge float %4247, 0.000000e+00
  %4251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4252 = extractvalue %dx.types.CBufRet.f32 %4251, 0
  %4253 = select i1 %4250, float %4247, float %4252
  %4254 = fadd fast float %4253, %4249
  %4255 = fsub fast float %4244, %3879
  %4256 = fmul fast float %4255, %4098
  %4257 = fadd fast float %4256, %3879
  %4258 = fmul fast float %4254, %4098
  %4259 = call float @dx.op.binary.f32(i32 35, float %3878, float %4258)  ; FMax(a,b)
  %4260 = and i32 %3952, 16
  %4261 = icmp eq i32 %4260, 0
  br i1 %4261, label %4284, label %4262

; <label>:4262                                    ; preds = %4201
  %4263 = bitcast float %3946 to i32
  %4264 = add i32 %3943, 0
  %4265 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4264, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4266 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4265, %dx.types.Handle %4111, float %4039, float %4042, float undef, float undef, i32 0, i32 0, i32 undef, float %4044, float %4046, float undef, float %4048, float %4050, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4267 = extractvalue %dx.types.ResRet.f32 %4266, 0
  %4268 = extractvalue %dx.types.ResRet.f32 %4266, 1
  %4269 = extractvalue %dx.types.ResRet.f32 %4266, 2
  %4270 = and i32 %4263, 65535
  %4271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4270)  ; LegacyF16ToF32(value)
  %4272 = fmul fast float %4267, %3937
  %4273 = fmul fast float %4268, %3938
  %4274 = fmul fast float %4269, %3939
  %4275 = and i32 %3952, 16384
  %4276 = icmp ne i32 %4275, 0
  %4277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4278 = extractvalue %dx.types.CBufRet.f32 %4277, 0
  %4279 = select i1 %4276, float %4278, float 1.000000e+00
  %4280 = fmul fast float %4279, %4271
  %4281 = fmul fast float %4272, %4280
  %4282 = fmul fast float %4273, %4280
  %4283 = fmul fast float %4274, %4280
  br label %4284

; <label>:4284                                    ; preds = %4262, %4201
  %4285 = phi float [ %4281, %4262 ], [ 0.000000e+00, %4201 ]
  %4286 = phi float [ %4282, %4262 ], [ 0.000000e+00, %4201 ]
  %4287 = phi float [ %4283, %4262 ], [ 0.000000e+00, %4201 ]
  %4288 = fsub fast float %4285, %3882
  %4289 = fsub fast float %4286, %3883
  %4290 = fsub fast float %4287, %3884
  %4291 = fmul fast float %4288, %4098
  %4292 = fmul fast float %4289, %4098
  %4293 = fmul fast float %4290, %4098
  %4294 = fadd fast float %4291, %3882
  %4295 = fadd fast float %4292, %3883
  %4296 = fadd fast float %4293, %3884
  br label %4001

; <label>:4297                                    ; preds = %4001
  br label %4298

; <label>:4298                                    ; preds = %4297, %3821
  %4299 = phi float [ 0.000000e+00, %3821 ], [ %4002, %4297 ]
  %4300 = phi float [ %3790, %3821 ], [ %4003, %4297 ]
  %4301 = phi float [ %3788, %3821 ], [ %4004, %4297 ]
  %4302 = phi float [ 0.000000e+00, %3821 ], [ %4005, %4297 ]
  %4303 = phi float [ 0.000000e+00, %3821 ], [ %4006, %4297 ]
  %4304 = phi float [ %3782, %3821 ], [ %4007, %4297 ]
  %4305 = phi float [ %3783, %3821 ], [ %4008, %4297 ]
  %4306 = phi float [ %3784, %3821 ], [ %4009, %4297 ]
  %4307 = phi float [ %3816, %3821 ], [ %4010, %4297 ]
  %4308 = phi float [ %3817, %3821 ], [ %4011, %4297 ]
  %4309 = phi float [ %3818, %3821 ], [ %4012, %4297 ]
  %4310 = phi float [ %3787, %3821 ], [ %4013, %4297 ]
  %4311 = phi float [ %3786, %3821 ], [ %4014, %4297 ]
  %4312 = phi float [ 0.000000e+00, %3821 ], [ %4015, %4297 ]
  %4313 = phi float [ %3785, %3821 ], [ %4016, %4297 ]
  %4314 = phi float [ %3779, %3821 ], [ %4017, %4297 ]
  %4315 = phi float [ %3780, %3821 ], [ %4018, %4297 ]
  %4316 = phi float [ %3781, %3821 ], [ %4019, %4297 ]
  %4317 = call float @dx.op.dot3.f32(i32 55, float %4307, float %4308, float %4309, float %4307, float %4308, float %4309)  ; Dot3(ax,ay,az,bx,by,bz)
  %4318 = call float @dx.op.unary.f32(i32 25, float %4317)  ; Rsqrt(value)
  %4319 = fmul fast float %4318, %4307
  %4320 = fmul fast float %4318, %4308
  %4321 = fmul fast float %4318, %4309
  %4322 = fadd fast float %4312, %890
  %4323 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4324 = call float @dx.op.dot3.f32(i32 55, float %4319, float %4320, float %4321, float %4319, float %4320, float %4321)  ; Dot3(ax,ay,az,bx,by,bz)
  %4325 = call float @dx.op.unary.f32(i32 25, float %4324)  ; Rsqrt(value)
  %4326 = fmul fast float %4325, %4319
  %4327 = fmul fast float %4325, %4320
  %4328 = fmul fast float %4325, %4321
  br label %4329

; <label>:4329                                    ; preds = %4298, %3776
  %4330 = phi float [ %4326, %4298 ], [ %3816, %3776 ]
  %4331 = phi float [ %4327, %4298 ], [ %3817, %3776 ]
  %4332 = phi float [ %4328, %4298 ], [ %3818, %3776 ]
  %4333 = phi float [ %4314, %4298 ], [ %3779, %3776 ]
  %4334 = phi float [ %4315, %4298 ], [ %3780, %3776 ]
  %4335 = phi float [ %4316, %4298 ], [ %3781, %3776 ]
  %4336 = phi float [ %4304, %4298 ], [ %3782, %3776 ]
  %4337 = phi float [ %4305, %4298 ], [ %3783, %3776 ]
  %4338 = phi float [ %4306, %4298 ], [ %3784, %3776 ]
  %4339 = phi float [ %4313, %4298 ], [ %3785, %3776 ]
  %4340 = phi float [ %4323, %4298 ], [ %890, %3776 ]
  %4341 = phi float [ %4311, %4298 ], [ %3786, %3776 ]
  %4342 = phi float [ %4310, %4298 ], [ %3787, %3776 ]
  %4343 = phi float [ %4303, %4298 ], [ 0.000000e+00, %3776 ]
  %4344 = phi float [ %4302, %4298 ], [ 0.000000e+00, %3776 ]
  %4345 = phi float [ %4299, %4298 ], [ 0.000000e+00, %3776 ]
  %4346 = phi float [ %4300, %4298 ], [ %3790, %3776 ]
  %4347 = phi float [ %4301, %4298 ], [ %3788, %3776 ]
  %4348 = fadd fast float %4339, 0xBFB99999A0000000
  %4349 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4350 = fmul fast float %4349, 0x3FF1C71C80000000
  %4351 = call float @dx.op.binary.f32(i32 36, float %4339, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4352 = fsub fast float 1.000000e+00, %4350
  %4353 = call float @dx.op.unary.f32(i32 7, float %4352)  ; Saturate(value)
  %4354 = fmul fast float %4353, %4333
  %4355 = fmul fast float %4353, %4334
  %4356 = fmul fast float %4353, %4335
  %4357 = call float @dx.op.unary.f32(i32 7, float %4354)  ; Saturate(value)
  %4358 = call float @dx.op.unary.f32(i32 7, float %4355)  ; Saturate(value)
  %4359 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4360 = fmul fast float %4350, %4333
  %4361 = fmul fast float %4350, %4334
  %4362 = fmul fast float %4350, %4335
  %4363 = fadd fast float %4360, %4351
  %4364 = fadd fast float %4361, %4351
  %4365 = fadd fast float %4362, %4351
  %4366 = call float @dx.op.unary.f32(i32 7, float %4363)  ; Saturate(value)
  %4367 = call float @dx.op.unary.f32(i32 7, float %4364)  ; Saturate(value)
  %4368 = call float @dx.op.unary.f32(i32 7, float %4365)  ; Saturate(value)
  %4369 = call float @dx.op.unary.f32(i32 7, float %4341)  ; Saturate(value)
  %4370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.i32 %4370, 3
  %4372 = and i32 %4371, 8
  %4373 = icmp ne i32 %4372, 0
  %4374 = call float @dx.op.binary.f32(i32 35, float %4357, float %4333)  ; FMax(a,b)
  %4375 = call float @dx.op.binary.f32(i32 35, float %4358, float %4333)  ; FMax(a,b)
  %4376 = call float @dx.op.binary.f32(i32 35, float %4359, float %4333)  ; FMax(a,b)
  %4377 = call float @dx.op.dot3.f32(i32 55, float %4357, float %4358, float %4359, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4378 = select i1 %171, float %4333, float %4357
  %4379 = select i1 %171, float %4377, float %4358
  %4380 = select i1 %171, float 1.000000e+00, float %4359
  %4381 = select i1 %4373, float %4374, float %4378
  %4382 = select i1 %4373, float %4375, float %4379
  %4383 = select i1 %4373, float %4376, float %4380
  %4384 = and i32 %147, 3
  %4385 = select i1 %141, i32 %4384, i32 0
  %4386 = icmp eq i32 %4385, 1
  br i1 %4386, label %4387, label %4463

; <label>:4387                                    ; preds = %4329
  %4388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4389 = extractvalue %dx.types.CBufRet.f32 %4388, 0
  %4390 = extractvalue %dx.types.CBufRet.f32 %4388, 1
  %4391 = fadd fast float %4389, %130
  %4392 = fadd fast float %4390, %131
  %4393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4394 = extractvalue %dx.types.CBufRet.f32 %4393, 0
  %4395 = extractvalue %dx.types.CBufRet.f32 %4393, 1
  %4396 = fsub fast float %4391, %4394
  %4397 = fsub fast float %4392, %4395
  %4398 = fmul fast float %4396, %4396
  %4399 = fmul fast float %4397, %4397
  %4400 = fadd fast float %4398, %4399
  %4401 = call float @dx.op.unary.f32(i32 24, float %4400)  ; Sqrt(value)
  %4402 = extractvalue %dx.types.CBufRet.f32 %4393, 2
  %4403 = fcmp fast olt float %4401, %4402
  br i1 %4403, label %4404, label %4457

; <label>:4404                                    ; preds = %4387
  %4405 = extractvalue %dx.types.CBufRet.f32 %4388, 2
  %4406 = fadd fast float %4405, %132
  %4407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4408 = extractvalue %dx.types.CBufRet.f32 %4407, 0
  %4409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4410 = extractvalue %dx.types.CBufRet.f32 %4409, 0
  %4411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4412 = extractvalue %dx.types.CBufRet.f32 %4411, 0
  %4413 = extractvalue %dx.types.CBufRet.f32 %4407, 1
  %4414 = extractvalue %dx.types.CBufRet.f32 %4409, 1
  %4415 = extractvalue %dx.types.CBufRet.f32 %4411, 1
  %4416 = extractvalue %dx.types.CBufRet.f32 %4407, 3
  %4417 = extractvalue %dx.types.CBufRet.f32 %4409, 3
  %4418 = extractvalue %dx.types.CBufRet.f32 %4411, 3
  %4419 = fadd fast float %4416, %4391
  %4420 = fadd fast float %4417, %4392
  %4421 = fadd fast float %4406, %4418
  %4422 = fmul fast float %4419, %4408
  %4423 = call float @dx.op.tertiary.f32(i32 46, float %4420, float %4410, float %4422)  ; FMad(a,b,c)
  %4424 = call float @dx.op.tertiary.f32(i32 46, float %4421, float %4412, float %4423)  ; FMad(a,b,c)
  %4425 = fmul fast float %4419, %4413
  %4426 = call float @dx.op.tertiary.f32(i32 46, float %4420, float %4414, float %4425)  ; FMad(a,b,c)
  %4427 = call float @dx.op.tertiary.f32(i32 46, float %4421, float %4415, float %4426)  ; FMad(a,b,c)
  %4428 = fsub fast float %4424, %4416
  %4429 = fsub fast float %4427, %4417
  %4430 = fsub fast float %4428, %4394
  %4431 = fadd fast float %4430, %4402
  %4432 = fsub fast float %4429, %4395
  %4433 = fadd fast float %4432, %4402
  %4434 = extractvalue %dx.types.CBufRet.f32 %4393, 3
  %4435 = fmul fast float %4431, %4434
  %4436 = fmul fast float %4433, %4434
  %4437 = call float @dx.op.unary.f32(i32 7, float %4435)  ; Saturate(value)
  %4438 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4439 = fsub fast float 1.000000e+00, %4437
  %4440 = fsub fast float 1.000000e+00, %4438
  %4441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %28, float %4439, float %4440, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4442 = extractvalue %dx.types.ResRet.f32 %4441, 0
  %4443 = fcmp fast ugt float %4442, 0.000000e+00
  br i1 %4443, label %4444, label %4457

; <label>:4444                                    ; preds = %4404
  %4445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4446 = extractvalue %dx.types.CBufRet.f32 %4445, 2
  %4447 = fmul fast float %4446, %4442
  %4448 = extractvalue %dx.types.CBufRet.f32 %4445, 3
  %4449 = fadd fast float %4448, %4447
  %4450 = extractvalue %dx.types.CBufRet.f32 %4411, 2
  %4451 = fadd fast float %4449, %4418
  %4452 = fmul fast float %4424, %4412
  %4453 = call float @dx.op.tertiary.f32(i32 46, float %4427, float %4415, float %4452)  ; FMad(a,b,c)
  %4454 = call float @dx.op.tertiary.f32(i32 46, float %4451, float %4450, float %4453)  ; FMad(a,b,c)
  %4455 = fsub fast float %4454, %4418
  %4456 = fsub fast float %4455, %4405
  br label %4457

; <label>:4457                                    ; preds = %4444, %4404, %4387
  %4458 = phi i1 [ true, %4444 ], [ false, %4404 ], [ false, %4387 ]
  %4459 = phi float [ %4456, %4444 ], [ -1.310720e+05, %4404 ], [ -1.310720e+05, %4387 ]
  %4460 = fsub fast float %4459, %132
  %4461 = call float @dx.op.unary.f32(i32 7, float %4460)  ; Saturate(value)
  %4462 = select i1 %4458, float %4461, float 1.000000e+00
  br label %4463

; <label>:4463                                    ; preds = %4457, %4329
  %4464 = phi float [ %4462, %4457 ], [ 0.000000e+00, %4329 ]
  %4465 = icmp eq i32 %4385, 3
  %4466 = select i1 %4465, float 1.000000e+00, float %4464
  %4467 = call float @dx.op.binary.f32(i32 35, float %4345, float %4466)  ; FMax(a,b)
  %4468 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4469 = fcmp fast une float %4468, 0.000000e+00
  %4470 = call float @dx.op.dot3.f32(i32 55, float %130, float %131, float %132, float %130, float %131, float %132)  ; Dot3(ax,ay,az,bx,by,bz)
  %4471 = call float @dx.op.unary.f32(i32 25, float %4470)  ; Rsqrt(value)
  br i1 %4469, label %4479, label %4472

; <label>:4472                                    ; preds = %4463
  %4473 = fmul fast float %4471, %130
  %4474 = fmul fast float %4471, %131
  %4475 = fmul fast float %4471, %132
  %4476 = fsub fast float -0.000000e+00, %4473
  %4477 = fsub fast float -0.000000e+00, %4474
  %4478 = fsub fast float -0.000000e+00, %4475
  br label %4647

; <label>:4479                                    ; preds = %4463
  %4480 = fmul fast float %130, %4471
  %4481 = fsub fast float -0.000000e+00, %4480
  %4482 = fmul fast float %131, %4471
  %4483 = fsub fast float -0.000000e+00, %4482
  %4484 = fmul fast float %132, %4471
  %4485 = fsub fast float -0.000000e+00, %4484
  %4486 = call float @dx.op.dot3.f32(i32 55, float %4481, float %4483, float %4485, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4487 = fmul fast float %4468, 2.500000e+00
  %4488 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  %4489 = fmul fast float %4468, 0x4013FFFFE0000000
  %4490 = fadd fast float %4489, 0xBFFFFFFFE0000000
  %4491 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4492 = fmul fast float %4468, 0x4004000020000000
  %4493 = fadd fast float %4492, 0xBFF8000040000000
  %4494 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4495 = call float @dx.op.unary.f32(i32 7, float %4488)  ; Saturate(value)
  %4496 = fmul fast float %4348, 1.000000e+01
  %4497 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4498 = fmul fast float %4497, 2.000000e+00
  %4499 = fsub fast float 3.000000e+00, %4498
  %4500 = fmul fast float %4497, %4497
  %4501 = fmul fast float %4500, %4499
  %4502 = fsub fast float 1.000000e+00, %4501
  %4503 = fsub fast float 0x3FE3333340000000, %4369
  %4504 = fmul fast float %4503, 0x400AAAAAA0000000
  %4505 = call float @dx.op.unary.f32(i32 7, float %4504)  ; Saturate(value)
  %4506 = fmul fast float %4502, %4505
  %4507 = fmul fast float %4381, 0x3FEA2B8620000000
  %4508 = fmul fast float %4382, 0x3FEA2B8620000000
  %4509 = fmul fast float %4383, 0x3FEA2B8620000000
  %4510 = fadd fast float %4507, 0x3FC81DFBA0000000
  %4511 = fmul fast float %4510, %4381
  %4512 = fadd fast float %4511, 0x3F910E6020000000
  %4513 = fadd fast float %4508, 0x3FC81DFBA0000000
  %4514 = fmul fast float %4513, %4382
  %4515 = fadd fast float %4514, 0x3F910E6020000000
  %4516 = fadd fast float %4509, 0x3FC81DFBA0000000
  %4517 = fmul fast float %4516, %4383
  %4518 = fadd fast float %4517, 0x3F910E6020000000
  %4519 = call float @dx.op.unary.f32(i32 7, float %4512)  ; Saturate(value)
  %4520 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4521 = call float @dx.op.unary.f32(i32 7, float %4518)  ; Saturate(value)
  %4522 = fsub fast float %4519, %4381
  %4523 = fsub fast float %4520, %4382
  %4524 = fsub fast float %4521, %4383
  %4525 = fmul fast float %4522, %4495
  %4526 = fmul fast float %4525, %4506
  %4527 = fmul fast float %4523, %4495
  %4528 = fmul fast float %4527, %4506
  %4529 = fmul fast float %4524, %4495
  %4530 = fmul fast float %4529, %4506
  %4531 = fadd fast float %4526, %4381
  %4532 = fadd fast float %4528, %4382
  %4533 = fadd fast float %4530, %4383
  %4534 = fmul fast float %4342, %4342
  %4535 = fmul fast float %4534, %4534
  %4536 = fadd fast float %4491, 1.000000e+00
  %4537 = fsub fast float %4536, %4506
  %4538 = call float @dx.op.unary.f32(i32 7, float %4537)  ; Saturate(value)
  %4539 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4540 = call float @dx.op.unary.f32(i32 7, float %4539)  ; Saturate(value)
  %4541 = fsub fast float 1.000000e+00, %4535
  %4542 = call float @dx.op.binary.f32(i32 36, float %4538, float %4541)  ; FMin(a,b)
  %4543 = call float @dx.op.unary.f32(i32 7, float %4494)  ; Saturate(value)
  %4544 = call float @dx.op.binary.f32(i32 35, float %4542, float %4543)  ; FMax(a,b)
  %4545 = fadd fast float %4540, 0xBFE4CCCCC0000000
  %4546 = fmul fast float %4545, 0x4006DB6DA0000000
  %4547 = call float @dx.op.unary.f32(i32 7, float %4546)  ; Saturate(value)
  %4548 = fmul fast float %4547, 2.000000e+00
  %4549 = fsub fast float 3.000000e+00, %4548
  %4550 = bitcast float %4366 to i32
  %4551 = ashr i32 %4550, 1
  %4552 = add nsw i32 %4551, 532487669
  %4553 = bitcast i32 %4552 to float
  %4554 = fsub fast float 1.000000e+00, %4553
  %4555 = bitcast float %4554 to i32
  %4556 = sub nsw i32 2129859010, %4555
  %4557 = bitcast i32 %4556 to float
  %4558 = fmul fast float %4557, 2.000000e+00
  %4559 = bitcast float %4367 to i32
  %4560 = ashr i32 %4559, 1
  %4561 = add nsw i32 %4560, 532487669
  %4562 = bitcast i32 %4561 to float
  %4563 = fsub fast float 1.000000e+00, %4562
  %4564 = bitcast float %4563 to i32
  %4565 = sub nsw i32 2129859010, %4564
  %4566 = bitcast i32 %4565 to float
  %4567 = fmul fast float %4566, 2.000000e+00
  %4568 = bitcast float %4368 to i32
  %4569 = ashr i32 %4568, 1
  %4570 = add nsw i32 %4569, 532487669
  %4571 = bitcast i32 %4570 to float
  %4572 = fsub fast float 1.000000e+00, %4571
  %4573 = bitcast float %4572 to i32
  %4574 = sub nsw i32 2129859010, %4573
  %4575 = bitcast i32 %4574 to float
  %4576 = fmul fast float %4575, 2.000000e+00
  %4577 = fsub fast float 0x4002A9FBE0000000, %4558
  %4578 = fadd fast float %4558, 0x3FD54FDF00000000
  %4579 = bitcast float %4578 to i32
  %4580 = sub nsw i32 2129859010, %4579
  %4581 = bitcast i32 %4580 to float
  %4582 = fmul fast float %4581, %4577
  %4583 = fmul fast float %4582, %4582
  %4584 = fsub fast float 0x4002A9FBE0000000, %4567
  %4585 = fadd fast float %4567, 0x3FD54FDF00000000
  %4586 = bitcast float %4585 to i32
  %4587 = sub nsw i32 2129859010, %4586
  %4588 = bitcast i32 %4587 to float
  %4589 = fmul fast float %4588, %4584
  %4590 = fmul fast float %4589, %4589
  %4591 = fsub fast float 0x4002A9FBE0000000, %4576
  %4592 = fadd fast float %4576, 0x3FD54FDF00000000
  %4593 = bitcast float %4592 to i32
  %4594 = sub nsw i32 2129859010, %4593
  %4595 = bitcast i32 %4594 to float
  %4596 = fmul fast float %4595, %4591
  %4597 = fmul fast float %4596, %4596
  %4598 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4583)  ; FMax(a,b)
  %4599 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4590)  ; FMax(a,b)
  %4600 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4597)  ; FMax(a,b)
  %4601 = fsub fast float 1.000000e+00, %4486
  %4602 = fadd fast float %4601, %4502
  %4603 = call float @dx.op.unary.f32(i32 7, float %4602)  ; Saturate(value)
  %4604 = fsub fast float 1.000000e+00, %4466
  %4605 = fmul fast float %4544, %4604
  %4606 = fmul fast float %4547, %4547
  %4607 = fmul fast float %4606, %4605
  %4608 = fmul fast float %4607, %4549
  %4609 = fmul fast float %4604, 0xBFE99999A0000000
  %4610 = fmul fast float %4609, %4495
  %4611 = fmul fast float %4610, %4506
  %4612 = fadd fast float %4611, 1.000000e+00
  %4613 = fadd fast float %4369, -1.000000e+00
  %4614 = fmul fast float %4612, %4613
  %4615 = fadd fast float %4614, 1.000000e+00
  %4616 = fsub fast float %4598, %4366
  %4617 = fsub fast float %4599, %4367
  %4618 = fsub fast float %4600, %4368
  %4619 = fmul fast float %4608, %4616
  %4620 = fmul fast float %4608, %4617
  %4621 = fmul fast float %4608, %4618
  %4622 = fadd fast float %4619, %4366
  %4623 = fadd fast float %4620, %4367
  %4624 = fadd fast float %4621, %4368
  %4625 = fsub fast float %74, %4330
  %4626 = fsub fast float %75, %4331
  %4627 = fsub fast float %76, %4332
  %4628 = fmul fast float %4608, %4625
  %4629 = fmul fast float %4608, %4626
  %4630 = fmul fast float %4608, %4627
  %4631 = fadd fast float %4628, %4330
  %4632 = fadd fast float %4629, %4331
  %4633 = fadd fast float %4630, %4332
  %4634 = fmul fast float %4608, %4603
  %4635 = call float @dx.op.unary.f32(i32 7, float %4615)  ; Saturate(value)
  %4636 = fsub fast float 1.000000e+00, %4635
  %4637 = fmul fast float %4634, %4636
  %4638 = fadd fast float %4637, %4635
  %4639 = fsub fast float 1.000000e+00, %4342
  %4640 = fmul fast float %4608, %4639
  %4641 = fadd fast float %4640, %4342
  %4642 = call float @dx.op.dot3.f32(i32 55, float %4631, float %4632, float %4633, float %4631, float %4632, float %4633)  ; Dot3(ax,ay,az,bx,by,bz)
  %4643 = call float @dx.op.unary.f32(i32 25, float %4642)  ; Rsqrt(value)
  %4644 = fmul fast float %4631, %4643
  %4645 = fmul fast float %4632, %4643
  %4646 = fmul fast float %4633, %4643
  br label %4647

; <label>:4647                                    ; preds = %4479, %4472
  %4648 = phi float [ %4478, %4472 ], [ %4485, %4479 ]
  %4649 = phi float [ %4477, %4472 ], [ %4483, %4479 ]
  %4650 = phi float [ %4476, %4472 ], [ %4481, %4479 ]
  %4651 = phi float [ %4475, %4472 ], [ %4484, %4479 ]
  %4652 = phi float [ %4474, %4472 ], [ %4482, %4479 ]
  %4653 = phi float [ %4473, %4472 ], [ %4480, %4479 ]
  %4654 = phi float [ %4330, %4472 ], [ %4644, %4479 ]
  %4655 = phi float [ %4331, %4472 ], [ %4645, %4479 ]
  %4656 = phi float [ %4332, %4472 ], [ %4646, %4479 ]
  %4657 = phi float [ %4366, %4472 ], [ %4622, %4479 ]
  %4658 = phi float [ %4367, %4472 ], [ %4623, %4479 ]
  %4659 = phi float [ %4368, %4472 ], [ %4624, %4479 ]
  %4660 = phi float [ %4381, %4472 ], [ %4531, %4479 ]
  %4661 = phi float [ %4382, %4472 ], [ %4532, %4479 ]
  %4662 = phi float [ %4383, %4472 ], [ %4533, %4479 ]
  %4663 = phi float [ %4369, %4472 ], [ %4638, %4479 ]
  %4664 = phi float [ %4342, %4472 ], [ %4641, %4479 ]
  %4665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4666 = extractvalue %dx.types.CBufRet.f32 %4665, 2
  %4667 = extractvalue %dx.types.CBufRet.f32 %4665, 3
  %4668 = fmul fast float %4666, %67
  %4669 = fmul fast float %4667, %68
  %4670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4671 = extractvalue %dx.types.CBufRet.f32 %4670, 0
  %4672 = extractvalue %dx.types.CBufRet.f32 %4670, 1
  %4673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %28, float %4668, float %4669, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4674 = extractvalue %dx.types.ResRet.f32 %4673, 0
  %4675 = fmul fast float %4674, %4672
  %4676 = call float @dx.op.unary.f32(i32 7, float %4675)  ; Saturate(value)
  %4677 = fadd fast float %4676, -1.000000e+00
  %4678 = fmul fast float %4677, %4671
  %4679 = fadd fast float %4678, 1.000000e+00
  %4680 = select i1 %171, float 0.000000e+00, float %4659
  %4681 = call float @dx.op.dot3.f32(i32 55, float %4654, float %4655, float %4656, float %4650, float %4649, float %4648)  ; Dot3(ax,ay,az,bx,by,bz)
  %4682 = call float @dx.op.unary.f32(i32 7, float %4681)  ; Saturate(value)
  %4683 = call float @dx.op.dot3.f32(i32 55, float %4653, float %4652, float %4651, float %4654, float %4655, float %4656)  ; Dot3(ax,ay,az,bx,by,bz)
  %4684 = fmul fast float %4683, 2.000000e+00
  %4685 = fmul fast float %4684, %4654
  %4686 = fmul fast float %4684, %4655
  %4687 = fmul fast float %4684, %4656
  %4688 = fsub fast float %4653, %4685
  %4689 = fsub fast float %4652, %4686
  %4690 = fsub fast float %4651, %4687
  %4691 = call float @dx.op.binary.f32(i32 36, float %4664, float %4679)  ; FMin(a,b)
  %4692 = fsub fast float 1.000000e+00, %4691
  %4693 = bitcast float %4692 to i32
  %4694 = ashr i32 %4693, 1
  %4695 = add nsw i32 %4694, 532487669
  %4696 = bitcast i32 %4695 to float
  %4697 = fsub fast float 1.000000e+00, %4663
  %4698 = call float @dx.op.binary.f32(i32 35, float %4697, float 0x3F847AE140000000)  ; FMax(a,b)
  %4699 = fmul fast float %4698, %4698
  %4700 = fmul fast float %4699, %4699
  %4701 = call float @dx.op.unary.f32(i32 7, float %4682)  ; Saturate(value)
  %4702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %28, float %4696, float %4700, float %4701, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4703 = extractvalue %dx.types.ResRet.f32 %4702, 0
  %4704 = fsub fast float 1.000000e+00, %4664
  %4705 = bitcast float %4704 to i32
  %4706 = sub nsw i32 2129859010, %4705
  %4707 = fsub fast float 1.000000e+00, %44
  %4708 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4709 = call float @dx.op.binary.f32(i32 35, float %4708, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4710 = fdiv fast float %4707, %4709
  %4711 = call float @dx.op.dot3.f32(i32 55, float %4654, float %4655, float %4656, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4712 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4713 = fmul fast float %4712, 5.000000e-01
  %4714 = fadd fast float %4713, 5.000000e-01
  %4715 = fmul fast float %4714, %44
  %4716 = call float @dx.op.dot3.f32(i32 55, float %4654, float %4655, float %4656, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4717 = call float @dx.op.unary.f32(i32 7, float %4716)  ; Saturate(value)
  %4718 = fmul fast float %4717, %4710
  %4719 = fadd fast float %4715, %4718
  %4720 = fsub fast float 5.000000e-01, %4713
  %4721 = fmul fast float %4720, %4660
  %4722 = fmul fast float %4720, %4661
  %4723 = fmul fast float %4720, %4662
  %4724 = fadd fast float %4719, %4721
  %4725 = fadd fast float %4719, %4722
  %4726 = fadd fast float %4719, %4723
  %4727 = call float @dx.op.dot3.f32(i32 55, float %4688, float %4689, float %4690, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4728 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4729 = fmul fast float %4728, 5.000000e-01
  %4730 = fadd fast float %4729, 5.000000e-01
  %4731 = fmul fast float %4730, %44
  %4732 = call float @dx.op.dot3.f32(i32 55, float %4688, float %4689, float %4690, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4733 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4734 = fmul fast float %4733, %4710
  %4735 = fadd fast float %4731, %4734
  %4736 = fsub fast float 5.000000e-01, %4729
  %4737 = fmul fast float %4736, %4660
  %4738 = fmul fast float %4736, %4661
  %4739 = fmul fast float %4736, %4662
  %4740 = fadd fast float %4735, %4737
  %4741 = fadd fast float %4735, %4738
  %4742 = fadd fast float %4735, %4739
  %4743 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4745 = extractvalue %dx.types.CBufRet.f32 %4744, 0
  %4746 = call float @dx.op.binary.f32(i32 36, float %4660, float %4745)  ; FMin(a,b)
  %4747 = fmul fast float %4746, %4692
  %4748 = fsub fast float 1.000000e+00, %4747
  %4749 = bitcast float %4748 to i32
  %4750 = sub nsw i32 2129859010, %4749
  %4751 = bitcast i32 %4750 to float
  %4752 = call float @dx.op.binary.f32(i32 36, float %4661, float %4745)  ; FMin(a,b)
  %4753 = fmul fast float %4752, %4692
  %4754 = fsub fast float 1.000000e+00, %4753
  %4755 = bitcast float %4754 to i32
  %4756 = sub nsw i32 2129859010, %4755
  %4757 = bitcast i32 %4756 to float
  %4758 = call float @dx.op.binary.f32(i32 36, float %4662, float %4745)  ; FMin(a,b)
  %4759 = fmul fast float %4758, %4692
  %4760 = fsub fast float 1.000000e+00, %4759
  %4761 = bitcast float %4760 to i32
  %4762 = sub nsw i32 2129859010, %4761
  %4763 = bitcast i32 %4762 to float
  %4764 = fmul fast float %4691, %45
  %4765 = fmul fast float %4764, %4724
  %4766 = fmul fast float %4765, %4751
  %4767 = fmul fast float %4691, %46
  %4768 = fmul fast float %4767, %4725
  %4769 = fmul fast float %4768, %4757
  %4770 = fmul fast float %4691, %47
  %4771 = fmul fast float %4770, %4726
  %4772 = fmul fast float %4771, %4763
  %4773 = call float @dx.op.binary.f32(i32 36, float %4657, float %4745)  ; FMin(a,b)
  %4774 = fmul fast float %4773, %4692
  %4775 = fsub fast float 1.000000e+00, %4774
  %4776 = bitcast float %4775 to i32
  %4777 = sub nsw i32 2129859010, %4776
  %4778 = bitcast i32 %4777 to float
  %4779 = call float @dx.op.binary.f32(i32 36, float %4658, float %4745)  ; FMin(a,b)
  %4780 = fmul fast float %4779, %4692
  %4781 = fsub fast float 1.000000e+00, %4780
  %4782 = bitcast float %4781 to i32
  %4783 = sub nsw i32 2129859010, %4782
  %4784 = bitcast i32 %4783 to float
  %4785 = call float @dx.op.binary.f32(i32 36, float %4680, float %4745)  ; FMin(a,b)
  %4786 = fmul fast float %4785, %4692
  %4787 = fsub fast float 1.000000e+00, %4786
  %4788 = bitcast float %4787 to i32
  %4789 = sub nsw i32 2129859010, %4788
  %4790 = bitcast i32 %4789 to float
  %4791 = fmul fast float %4764, %4740
  %4792 = fmul fast float %4791, %4778
  %4793 = fmul fast float %4767, %4741
  %4794 = fmul fast float %4793, %4784
  %4795 = fmul fast float %4770, %4742
  %4796 = fmul fast float %4795, %4790
  %4797 = call float @dx.op.dot3.f32(i32 55, float %4766, float %4769, float %4772, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4798 = select i1 %171, float 0.000000e+00, float %4766
  %4799 = select i1 %171, float %4797, float %4769
  %4800 = select i1 %171, float 0.000000e+00, float %4772
  %4801 = call float @dx.op.dot3.f32(i32 55, float %4792, float %4794, float %4796, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4802 = select i1 %171, float 0.000000e+00, float %4792
  %4803 = select i1 %171, float %4801, float %4794
  %4804 = select i1 %171, float 0.000000e+00, float %4796
  %4805 = fmul fast float %4682, 9.843750e-01
  %4806 = fmul fast float %4663, 9.843750e-01
  %4807 = fadd fast float %4805, 7.812500e-03
  %4808 = fadd fast float %4806, 7.812500e-03
  %4809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %4807, float %4808, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4810 = extractvalue %dx.types.ResRet.f32 %4809, 2
  %4811 = extractvalue %dx.types.ResRet.f32 %4809, 3
  %4812 = fmul fast float %4810, %4657
  %4813 = fmul fast float %4810, %4658
  %4814 = fmul fast float %4810, %4680
  %4815 = fadd fast float %4812, %4811
  %4816 = fadd fast float %4813, %4811
  %4817 = fadd fast float %4814, %4811
  %4818 = fcmp fast ogt float %4343, 0.000000e+00
  br i1 %4818, label %4819, label %4845

; <label>:4819                                    ; preds = %4647
  %4820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4343, float %4682, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4821 = extractvalue %dx.types.ResRet.f32 %4820, 0
  %4822 = extractvalue %dx.types.ResRet.f32 %4820, 1
  %4823 = extractvalue %dx.types.ResRet.f32 %4820, 2
  %4824 = fadd fast float %4821, -5.000000e-01
  %4825 = fadd fast float %4822, -5.000000e-01
  %4826 = fadd fast float %4823, -5.000000e-01
  %4827 = fsub fast float 1.000000e+00, %4657
  %4828 = fsub fast float 1.000000e+00, %4658
  %4829 = fsub fast float 1.000000e+00, %4680
  %4830 = fmul fast float %4657, 4.000000e+00
  %4831 = fmul fast float %4830, %4827
  %4832 = fmul fast float %4831, %4824
  %4833 = fmul fast float %4658, 4.000000e+00
  %4834 = fmul fast float %4833, %4828
  %4835 = fmul fast float %4834, %4825
  %4836 = fmul fast float %4680, 4.000000e+00
  %4837 = fmul fast float %4836, %4829
  %4838 = fmul fast float %4837, %4826
  %4839 = fadd fast float %4832, %4815
  %4840 = fadd fast float %4835, %4816
  %4841 = fadd fast float %4838, %4817
  %4842 = call float @dx.op.unary.f32(i32 7, float %4839)  ; Saturate(value)
  %4843 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4844 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  br label %4845

; <label>:4845                                    ; preds = %4819, %4647
  %4846 = phi float [ %4842, %4819 ], [ %4815, %4647 ]
  %4847 = phi float [ %4843, %4819 ], [ %4816, %4647 ]
  %4848 = phi float [ %4844, %4819 ], [ %4817, %4647 ]
  %4849 = call float @dx.op.binary.f32(i32 35, float %4847, float %4848)  ; FMax(a,b)
  %4850 = call float @dx.op.binary.f32(i32 35, float %4846, float %4849)  ; FMax(a,b)
  %4851 = fsub fast float 1.000000e+00, %4850
  %4852 = fmul fast float %4850, %4663
  %4853 = fadd fast float %4852, %4663
  %4854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4855 = extractvalue %dx.types.CBufRet.f32 %4854, 0
  %4856 = extractvalue %dx.types.CBufRet.f32 %4854, 1
  %4857 = extractvalue %dx.types.CBufRet.f32 %4854, 2
  %4858 = extractvalue %dx.types.CBufRet.f32 %4854, 3
  %4859 = fmul fast float %4853, %4855
  %4860 = fadd fast float %4859, %4856
  %4861 = call float @dx.op.unary.f32(i32 7, float %4860)  ; Saturate(value)
  %4862 = fmul fast float %4857, %4853
  %4863 = fadd fast float %4862, %4858
  %4864 = call float @dx.op.unary.f32(i32 7, float %4863)  ; Saturate(value)
  %4865 = fsub fast float 1.000000e+00, %4703
  %4866 = fadd fast float %4865, %4864
  %4867 = call float @dx.op.unary.f32(i32 7, float %4866)  ; Saturate(value)
  %4868 = fcmp fast olt float %4867, 1.000000e+00
  br i1 %4868, label %4869, label %5687

; <label>:4869                                    ; preds = %4845
  %4870 = fcmp fast olt float %4861, 1.000000e+00
  %4871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4872 = extractvalue %dx.types.CBufRet.f32 %4871, 0
  %4873 = fcmp fast ogt float %4872, 0.000000e+00
  %4874 = or i1 %4870, %4873
  %4875 = or i1 %4870, %4873
  %4876 = xor i1 %4875, true
  %4877 = zext i1 %4876 to i32
  br i1 %4874, label %4878, label %5121

; <label>:4878                                    ; preds = %4869
  %4879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4880 = extractvalue %dx.types.CBufRet.f32 %4879, 0
  %4881 = extractvalue %dx.types.CBufRet.f32 %4879, 1
  %4882 = extractvalue %dx.types.CBufRet.f32 %4879, 2
  %4883 = extractvalue %dx.types.CBufRet.f32 %4879, 3
  %4884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4885 = extractvalue %dx.types.CBufRet.f32 %4884, 0
  %4886 = extractvalue %dx.types.CBufRet.f32 %4884, 1
  %4887 = extractvalue %dx.types.CBufRet.f32 %4884, 2
  %4888 = extractvalue %dx.types.CBufRet.f32 %4884, 3
  %4889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4890 = extractvalue %dx.types.CBufRet.f32 %4889, 0
  %4891 = extractvalue %dx.types.CBufRet.f32 %4889, 1
  %4892 = extractvalue %dx.types.CBufRet.f32 %4889, 2
  %4893 = extractvalue %dx.types.CBufRet.f32 %4889, 3
  %4894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4895 = extractvalue %dx.types.CBufRet.f32 %4894, 0
  %4896 = extractvalue %dx.types.CBufRet.f32 %4894, 1
  %4897 = extractvalue %dx.types.CBufRet.f32 %4894, 2
  %4898 = extractvalue %dx.types.CBufRet.f32 %4894, 3
  %4899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4900 = extractvalue %dx.types.CBufRet.f32 %4899, 0
  %4901 = extractvalue %dx.types.CBufRet.f32 %4899, 1
  %4902 = extractvalue %dx.types.CBufRet.f32 %4899, 2
  %4903 = extractvalue %dx.types.CBufRet.f32 %4899, 3
  %4904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4905 = extractvalue %dx.types.CBufRet.f32 %4904, 0
  %4906 = extractvalue %dx.types.CBufRet.f32 %4904, 1
  %4907 = extractvalue %dx.types.CBufRet.f32 %4904, 2
  %4908 = extractvalue %dx.types.CBufRet.f32 %4904, 3
  %4909 = call float @dx.op.dot3.f32(i32 55, float %4905, float %4906, float %4907, float %4688, float %4689, float %4690)  ; Dot3(ax,ay,az,bx,by,bz)
  %4910 = call float @dx.op.dot3.f32(i32 55, float %4654, float %4655, float %4656, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4911 = call float @dx.op.unary.f32(i32 6, float %4910)  ; FAbs(value)
  %4912 = fmul fast float %4911, 8.000000e+00
  %4913 = fadd fast float %4912, -6.000000e+00
  %4914 = call float @dx.op.unary.f32(i32 7, float %4913)  ; Saturate(value)
  %4915 = fmul fast float %4909, 8.000000e+00
  %4916 = fmul fast float %4915, %4872
  %4917 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4918 = fcmp fast ogt float %4917, 0.000000e+00
  br i1 %4918, label %4919, label %5096, !dx.controlflow.hints !69

; <label>:4919                                    ; preds = %4878
  %4920 = extractvalue %dx.types.CBufRet.f32 %4871, 1
  %4921 = extractvalue %dx.types.CBufRet.f32 %4871, 2
  %4922 = fsub fast float %4920, %4921
  %4923 = fmul fast float %4922, %4663
  %4924 = fadd fast float %4923, %4921
  %4925 = fmul fast float %184, 2.000000e+00
  %4926 = fmul fast float %185, 2.000000e+00
  %4927 = fadd fast float %4925, -1.000000e+00
  %4928 = fadd fast float %4926, -1.000000e+00
  %4929 = fmul fast float %4924, %4927
  %4930 = fmul fast float %4924, %4928
  %4931 = fadd fast float %4929, %67
  %4932 = fadd fast float %4930, %68
  %4933 = fmul fast float %4931, %4666
  %4934 = fmul fast float %4932, %4667
  %4935 = fadd fast float %4663, 0xBFE3333340000000
  %4936 = fmul fast float %4935, 0x4004000020000000
  %4937 = fsub fast float 1.000000e+00, %4936
  %4938 = call float @dx.op.unary.f32(i32 7, float %4937)  ; Saturate(value)
  %4939 = fmul fast float %4938, 3.000000e+00
  %4940 = fadd fast float %4939, %184
  %4941 = call float @dx.op.unary.f32(i32 27, float %4940)  ; Round_ni(value)
  %4942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %29, float %4933, float %4934, float %4941, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4943 = extractvalue %dx.types.ResRet.f32 %4942, 0
  %4944 = fcmp fast une float %4943, 0xFFF0000000000000
  %4945 = fcmp fast une float %4943, 0x7FF0000000000000
  %4946 = and i1 %4944, %4945
  %4947 = fcmp fast olt float %4943, 0.000000e+00
  %4948 = call float @dx.op.unary.f32(i32 6, float %4943)  ; FAbs(value)
  %4949 = fsub fast float 1.000000e+00, %4948
  %4950 = select i1 %4946, float 1.000000e+00, float 0.000000e+00
  %4951 = fmul fast float %4950, %4917
  %4952 = fcmp fast ogt float %4951, 0.000000e+00
  br i1 %4952, label %4953, label %5096, !dx.controlflow.hints !70

; <label>:4953                                    ; preds = %4919
  %4954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4955 = extractvalue %dx.types.CBufRet.f32 %4954, 0
  %4956 = extractvalue %dx.types.CBufRet.f32 %4954, 1
  %4957 = extractvalue %dx.types.CBufRet.f32 %4954, 2
  %4958 = select i1 %4947, float 0.000000e+00, float %4955
  %4959 = select i1 %4947, float 0.000000e+00, float %4956
  %4960 = select i1 %4947, float 0.000000e+00, float %4957
  %4961 = select i1 %4947, float %4880, float %4895
  %4962 = select i1 %4947, float %4885, float %4900
  %4963 = select i1 %4947, float %4890, float %4905
  %4964 = select i1 %4947, float %4881, float %4896
  %4965 = select i1 %4947, float %4886, float %4901
  %4966 = select i1 %4947, float %4891, float %4906
  %4967 = select i1 %4947, float %4882, float %4897
  %4968 = select i1 %4947, float %4887, float %4902
  %4969 = select i1 %4947, float %4892, float %4907
  %4970 = select i1 %4947, float %4883, float %4898
  %4971 = select i1 %4947, float %4888, float %4903
  %4972 = select i1 %4947, float %4893, float %4908
  %4973 = fadd fast float %4958, %130
  %4974 = fadd fast float %4959, %131
  %4975 = fadd fast float %4960, %132
  %4976 = fmul fast float %4973, %4961
  %4977 = call float @dx.op.tertiary.f32(i32 46, float %4974, float %4964, float %4976)  ; FMad(a,b,c)
  %4978 = call float @dx.op.tertiary.f32(i32 46, float %4975, float %4967, float %4977)  ; FMad(a,b,c)
  %4979 = fadd fast float %4978, %4970
  %4980 = fmul fast float %4973, %4962
  %4981 = call float @dx.op.tertiary.f32(i32 46, float %4974, float %4965, float %4980)  ; FMad(a,b,c)
  %4982 = call float @dx.op.tertiary.f32(i32 46, float %4975, float %4968, float %4981)  ; FMad(a,b,c)
  %4983 = fadd fast float %4982, %4971
  %4984 = fmul fast float %4973, %4963
  %4985 = call float @dx.op.tertiary.f32(i32 46, float %4974, float %4966, float %4984)  ; FMad(a,b,c)
  %4986 = call float @dx.op.tertiary.f32(i32 46, float %4975, float %4969, float %4985)  ; FMad(a,b,c)
  %4987 = fadd fast float %4986, %4972
  %4988 = fdiv fast float 1.000000e+00, %4987
  %4989 = fmul fast float %4988, %4979
  %4990 = fmul fast float %4988, %4983
  %4991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4992 = extractvalue %dx.types.CBufRet.f32 %4991, 0
  %4993 = extractvalue %dx.types.CBufRet.f32 %4991, 1
  %4994 = fmul fast float %4989, %4992
  %4995 = fmul fast float %4990, %4993
  %4996 = extractvalue %dx.types.CBufRet.f32 %4991, 2
  %4997 = extractvalue %dx.types.CBufRet.f32 %4991, 3
  %4998 = fadd fast float %4994, %4996
  %4999 = fadd fast float %4995, %4997
  %5000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5001 = extractvalue %dx.types.CBufRet.f32 %5000, 3
  %5002 = fmul fast float %5001, %4688
  %5003 = fmul fast float %5001, %4689
  %5004 = fmul fast float %5001, %4690
  %5005 = fadd fast float %5002, %4973
  %5006 = fadd fast float %5003, %4974
  %5007 = fadd fast float %5004, %4975
  %5008 = fmul fast float %5005, %4961
  %5009 = call float @dx.op.tertiary.f32(i32 46, float %5006, float %4964, float %5008)  ; FMad(a,b,c)
  %5010 = call float @dx.op.tertiary.f32(i32 46, float %5007, float %4967, float %5009)  ; FMad(a,b,c)
  %5011 = fadd fast float %5010, %4970
  %5012 = fmul fast float %5005, %4962
  %5013 = call float @dx.op.tertiary.f32(i32 46, float %5006, float %4965, float %5012)  ; FMad(a,b,c)
  %5014 = call float @dx.op.tertiary.f32(i32 46, float %5007, float %4968, float %5013)  ; FMad(a,b,c)
  %5015 = fadd fast float %5014, %4971
  %5016 = fmul fast float %5005, %4963
  %5017 = call float @dx.op.tertiary.f32(i32 46, float %5006, float %4966, float %5016)  ; FMad(a,b,c)
  %5018 = call float @dx.op.tertiary.f32(i32 46, float %5007, float %4969, float %5017)  ; FMad(a,b,c)
  %5019 = fadd fast float %5018, %4972
  %5020 = fdiv fast float 1.000000e+00, %5019
  %5021 = fmul fast float %5020, %5011
  %5022 = fmul fast float %5020, %5015
  %5023 = fmul fast float %4998, 2.000000e+00
  %5024 = fadd fast float %5023, -1.000000e+00
  %5025 = call float @dx.op.unary.f32(i32 6, float %5024)  ; FAbs(value)
  %5026 = fmul fast float %5025, 5.000000e+00
  %5027 = fadd fast float %5026, -4.000000e+00
  %5028 = call float @dx.op.unary.f32(i32 7, float %5027)  ; Saturate(value)
  %5029 = fmul fast float %5028, %4914
  %5030 = fsub fast float %4989, %5021
  %5031 = fmul fast float %4992, %5030
  %5032 = fmul fast float %5029, %5031
  %5033 = fsub fast float %5021, %4989
  %5034 = fmul fast float %4992, %5033
  %5035 = fadd fast float %5034, %5032
  %5036 = fsub fast float %5022, %4990
  %5037 = fmul fast float %4993, %5036
  %5038 = fmul fast float %5035, %4949
  %5039 = fmul fast float %5037, %4949
  %5040 = fadd fast float %5038, %4998
  %5041 = fadd fast float %5039, %4999
  %5042 = fsub fast float %5020, %4988
  %5043 = fmul fast float %5042, %4949
  %5044 = fadd fast float %5043, %4988
  %5045 = fdiv fast float 1.000000e+00, %5044
  %5046 = fadd fast float %4663, -1.000000e+00
  %5047 = fsub fast float %5045, %4987
  %5048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5049 = extractvalue %dx.types.CBufRet.f32 %5048, 2
  %5050 = fmul fast float %5049, %5045
  %5051 = fdiv fast float 1.600000e+02, %5050
  %5052 = fmul fast float %5046, %5046
  %5053 = fmul fast float %5052, 0xBFB5B17960000000
  %5054 = fmul fast float %5053, %5047
  %5055 = fmul fast float %5054, %5051
  %5056 = call float @dx.op.unary.f32(i32 21, float %5055)  ; Exp(value)
  %5057 = fmul fast float %5056, 0x3FF04B2960000000
  %5058 = fsub fast float 0x3FF04B2960000000, %5057
  %5059 = call float @dx.op.unary.f32(i32 7, float %5058)  ; Saturate(value)
  %5060 = fmul fast float %5059, 4.000000e+00
  %5061 = fadd fast float %184, -5.000000e-01
  %5062 = fadd fast float %185, -5.000000e-01
  %5063 = fmul fast float %5059, 0x3FBEB851E0000000
  %5064 = call float @dx.op.unary.f32(i32 7, float %5063)  ; Saturate(value)
  %5065 = fmul fast float %5064, %5061
  %5066 = fmul fast float %5064, %5062
  %5067 = fadd fast float %5040, %5065
  %5068 = fadd fast float %5041, %5066
  %5069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %5067, float %5068, float undef, float undef, i32 0, i32 0, i32 undef, float %5060)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5070 = extractvalue %dx.types.ResRet.f32 %5069, 0
  %5071 = extractvalue %dx.types.ResRet.f32 %5069, 1
  %5072 = extractvalue %dx.types.ResRet.f32 %5069, 2
  %5073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5074 = extractvalue %dx.types.CBufRet.f32 %5073, 2
  %5075 = fmul fast float %5074, %5070
  %5076 = fmul fast float %5074, %5071
  %5077 = fmul fast float %5074, %5072
  %5078 = select i1 %171, float 0.000000e+00, float %5076
  %5079 = select i1 %171, float 0.000000e+00, float %5077
  %5080 = fmul fast float %5067, 2.000000e+00
  %5081 = fmul fast float %5068, 2.000000e+00
  %5082 = fadd fast float %5080, -1.000000e+00
  %5083 = fadd fast float %5081, -1.000000e+00
  %5084 = fmul fast float %5082, %5082
  %5085 = fsub fast float 1.000000e+00, %5084
  %5086 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5087 = fsub fast float 1.000000e+00, %5086
  %5088 = fmul fast float %5087, %4914
  %5089 = fadd fast float %5088, %5086
  %5090 = fmul fast float %5083, %5083
  %5091 = fsub fast float 1.000000e+00, %5090
  %5092 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5093 = fmul fast float %5089, %5092
  %5094 = call float @dx.op.unary.f32(i32 7, float %5093)  ; Saturate(value)
  %5095 = fmul fast float %5094, %4951
  br label %5096

; <label>:5096                                    ; preds = %4953, %4919, %4878
  %5097 = phi float [ %5075, %4953 ], [ 0.000000e+00, %4919 ], [ 0.000000e+00, %4878 ]
  %5098 = phi float [ %5078, %4953 ], [ 0.000000e+00, %4919 ], [ 0.000000e+00, %4878 ]
  %5099 = phi float [ %5079, %4953 ], [ 0.000000e+00, %4919 ], [ 0.000000e+00, %4878 ]
  %5100 = phi float [ %5095, %4953 ], [ 0.000000e+00, %4919 ], [ 0.000000e+00, %4878 ]
  %5101 = fcmp fast olt float %5100, 1.000000e+00
  %5102 = or i1 %5101, %4876
  %5103 = zext i1 %5102 to i32
  %5104 = fmul fast float %5100, %4861
  %5105 = fsub fast float %5100, %5104
  %5106 = fsub fast float 1.000000e+00, %4867
  %5107 = fmul fast float %5105, %5106
  %5108 = fadd fast float %5107, %4867
  %5109 = fsub fast float %5108, %5105
  %5110 = call float @dx.op.unary.f32(i32 7, float %5109)  ; Saturate(value)
  %5111 = fmul fast float %5110, %4802
  %5112 = fmul fast float %5110, %4803
  %5113 = fmul fast float %5110, %4804
  %5114 = fsub fast float -0.000000e+00, %5108
  %5115 = fmul fast float %5105, %5097
  %5116 = fmul fast float %5105, %5098
  %5117 = fmul fast float %5105, %5099
  %5118 = fadd fast float %5115, %5111
  %5119 = fadd fast float %5116, %5112
  %5120 = fadd fast float %5117, %5113
  br label %5121

; <label>:5121                                    ; preds = %5096, %4869
  %5122 = phi float [ %4867, %4869 ], [ %5114, %5096 ]
  %5123 = phi float [ %4802, %4869 ], [ %5118, %5096 ]
  %5124 = phi float [ %4803, %4869 ], [ %5119, %5096 ]
  %5125 = phi float [ %4804, %4869 ], [ %5120, %5096 ]
  %5126 = phi i32 [ %4877, %4869 ], [ %5103, %5096 ]
  %5127 = icmp eq i32 %5126, 0
  br i1 %5127, label %5687, label %5128

; <label>:5128                                    ; preds = %5121
  %5129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5130 = extractvalue %dx.types.CBufRet.f32 %5129, 2
  %5131 = extractvalue %dx.types.CBufRet.f32 %5129, 3
  %5132 = fmul fast float %5130, %67
  %5133 = fmul fast float %5131, %68
  %5134 = fptoui float %5132 to i32
  %5135 = fptoui float %5133 to i32
  %5136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5137 = extractvalue %dx.types.CBufRet.f32 %5136, 0
  %5138 = extractvalue %dx.types.CBufRet.f32 %5136, 2
  %5139 = extractvalue %dx.types.CBufRet.f32 %5136, 3
  %5140 = fadd fast float %62, -4.000000e+00
  %5141 = call float @dx.op.binary.f32(i32 35, float %5140, float 0.000000e+00)  ; FMax(a,b)
  %5142 = fadd fast float %5141, %5137
  %5143 = fmul fast float %5142, %5138
  %5144 = call float @dx.op.unary.f32(i32 23, float %5143)  ; Log(value)
  %5145 = fmul fast float %5144, %5139
  %5146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5147 = extractvalue %dx.types.CBufRet.f32 %5146, 2
  %5148 = fmul fast float %5145, %5147
  %5149 = call float @dx.op.unary.f32(i32 7, float %5148)  ; Saturate(value)
  %5150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5151 = extractvalue %dx.types.CBufRet.i32 %5150, 1
  %5152 = add i32 %5151, -1
  %5153 = uitofp i32 %5151 to float
  %5154 = fmul fast float %5153, %5149
  %5155 = fptoui float %5154 to i32
  %5156 = call i32 @dx.op.binary.i32(i32 40, i32 %5155, i32 %5152)  ; UMin(a,b)
  %5157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5158 = extractvalue %dx.types.CBufRet.i32 %5157, 2
  %5159 = extractvalue %dx.types.CBufRet.i32 %5157, 3
  %5160 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5135, i32 %5158, i32 %5134)  ; UMad(a,b,c)
  %5161 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5156, i32 %5159, i32 %5160)  ; UMad(a,b,c)
  %5162 = call float @dx.op.binary.f32(i32 35, float %62, float 0.000000e+00)  ; FMax(a,b)
  %5163 = fptoui float %5162 to i32
  %5164 = lshr i32 %5163, 5
  %5165 = call i32 @dx.op.binary.i32(i32 40, i32 %5164, i32 8191)  ; UMin(a,b)
  %5166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5167 = extractvalue %dx.types.CBufRet.i32 %5166, 2
  %5168 = add nsw i32 %5167, -1
  %5169 = call i32 @dx.op.binary.i32(i32 37, i32 %5168, i32 0)  ; IMax(a,b)
  %5170 = shl i32 %5165, 2
  %5171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %5170, i32 undef)  ; BufferLoad(srv,index,wot)
  %5172 = extractvalue %dx.types.ResRet.i32 %5171, 0
  %5173 = lshr i32 %5172, 16
  %5174 = and i32 %5172, 65535
  %5175 = lshr i32 %5172, 21
  %5176 = lshr i32 %5174, 5
  %5177 = call i32 @dx.op.binary.i32(i32 40, i32 %5176, i32 %5169)  ; UMin(a,b)
  %5178 = icmp ugt i32 %5175, %5177
  br i1 %5178, label %5559, label %5179

; <label>:5179                                    ; preds = %5128
  br label %5180

; <label>:5180                                    ; preds = %5548, %5179
  %5181 = phi float [ %5549, %5548 ], [ 0.000000e+00, %5179 ]
  %5182 = phi float [ %5550, %5548 ], [ 0.000000e+00, %5179 ]
  %5183 = phi float [ %5551, %5548 ], [ 0.000000e+00, %5179 ]
  %5184 = phi float [ %5552, %5548 ], [ 1.000000e+00, %5179 ]
  %5185 = phi i32 [ %5556, %5548 ], [ %5175, %5179 ]
  %5186 = phi float [ %5553, %5548 ], [ 0.000000e+00, %5179 ]
  %5187 = phi float [ %5554, %5548 ], [ 0.000000e+00, %5179 ]
  %5188 = phi float [ %5555, %5548 ], [ 0.000000e+00, %5179 ]
  %5189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5190 = extractvalue %dx.types.CBufRet.i32 %5189, 2
  %5191 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5161, i32 %5190, i32 %5185)  ; UMad(a,b,c)
  %5192 = shl i32 %5191, 2
  %5193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %5192, i32 undef)  ; BufferLoad(srv,index,wot)
  %5194 = extractvalue %dx.types.ResRet.i32 %5193, 0
  %5195 = shl i32 %5185, 5
  %5196 = sub nsw i32 %5173, %5195
  %5197 = call i32 @dx.op.binary.i32(i32 37, i32 %5196, i32 0)  ; IMax(a,b)
  %5198 = call i32 @dx.op.binary.i32(i32 38, i32 %5197, i32 31)  ; IMin(a,b)
  %5199 = sub nsw i32 1, %5173
  %5200 = add nsw i32 %5199, %5174
  %5201 = call i32 @dx.op.binary.i32(i32 37, i32 %5200, i32 0)  ; IMax(a,b)
  %5202 = call i32 @dx.op.binary.i32(i32 38, i32 %5201, i32 32)  ; IMin(a,b)
  %5203 = and i32 %5202, 31
  %5204 = shl i32 -1, %5203
  %5205 = xor i32 %5204, -1
  %5206 = and i32 %5198, 31
  %5207 = shl i32 %5205, %5206
  %5208 = icmp eq i32 %5202, 32
  %5209 = select i1 %5208, i32 -1, i32 %5207
  %5210 = and i32 %5209, %5194
  %5211 = icmp eq i32 %5210, 0
  br i1 %5211, label %5548, label %5212

; <label>:5212                                    ; preds = %5180
  br label %5213

; <label>:5213                                    ; preds = %5322, %5212
  %5214 = phi float [ %5323, %5322 ], [ %5181, %5212 ]
  %5215 = phi float [ %5324, %5322 ], [ %5182, %5212 ]
  %5216 = phi float [ %5325, %5322 ], [ %5183, %5212 ]
  %5217 = phi float [ %5326, %5322 ], [ %5184, %5212 ]
  %5218 = phi i32 [ %5226, %5322 ], [ %5210, %5212 ]
  %5219 = phi float [ %5327, %5322 ], [ %5186, %5212 ]
  %5220 = phi float [ %5328, %5322 ], [ %5187, %5212 ]
  %5221 = phi float [ %5329, %5322 ], [ %5188, %5212 ]
  %5222 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5218)  ; FirstbitLo(value)
  %5223 = add i32 %5222, %5195
  %5224 = and i32 %5222, 31
  %5225 = shl i32 1, %5224
  %5226 = xor i32 %5225, %5218
  %5227 = mul i32 %5223, 72
  %5228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5227, i32 undef)  ; BufferLoad(srv,index,wot)
  %5229 = extractvalue %dx.types.ResRet.f32 %5228, 0
  %5230 = extractvalue %dx.types.ResRet.f32 %5228, 1
  %5231 = extractvalue %dx.types.ResRet.f32 %5228, 2
  %5232 = add i32 %5227, 12
  %5233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %5232, i32 undef)  ; BufferLoad(srv,index,wot)
  %5234 = extractvalue %dx.types.ResRet.i32 %5233, 0
  %5235 = add i32 %5227, 16
  %5236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5235, i32 undef)  ; BufferLoad(srv,index,wot)
  %5237 = extractvalue %dx.types.ResRet.f32 %5236, 0
  %5238 = extractvalue %dx.types.ResRet.f32 %5236, 1
  %5239 = extractvalue %dx.types.ResRet.f32 %5236, 2
  %5240 = add i32 %5227, 28
  %5241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5240, i32 undef)  ; BufferLoad(srv,index,wot)
  %5242 = extractvalue %dx.types.ResRet.f32 %5241, 0
  %5243 = add i32 %5227, 32
  %5244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5243, i32 undef)  ; BufferLoad(srv,index,wot)
  %5245 = extractvalue %dx.types.ResRet.f32 %5244, 0
  %5246 = extractvalue %dx.types.ResRet.f32 %5244, 1
  %5247 = extractvalue %dx.types.ResRet.f32 %5244, 2
  %5248 = extractvalue %dx.types.ResRet.f32 %5244, 3
  %5249 = add i32 %5227, 48
  %5250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5249, i32 undef)  ; BufferLoad(srv,index,wot)
  %5251 = extractvalue %dx.types.ResRet.f32 %5250, 0
  %5252 = extractvalue %dx.types.ResRet.f32 %5250, 1
  %5253 = add i32 %5227, 56
  %5254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5253, i32 undef)  ; BufferLoad(srv,index,wot)
  %5255 = extractvalue %dx.types.ResRet.f32 %5254, 0
  %5256 = extractvalue %dx.types.ResRet.f32 %5254, 1
  %5257 = add i32 %5227, 64
  %5258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5257, i32 undef)  ; BufferLoad(srv,index,wot)
  %5259 = extractvalue %dx.types.ResRet.f32 %5258, 0
  %5260 = extractvalue %dx.types.ResRet.f32 %5258, 1
  %5261 = mul i32 %5223, 60
  %5262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5261, i32 undef)  ; BufferLoad(srv,index,wot)
  %5263 = extractvalue %dx.types.ResRet.f32 %5262, 0
  %5264 = extractvalue %dx.types.ResRet.f32 %5262, 1
  %5265 = extractvalue %dx.types.ResRet.f32 %5262, 2
  %5266 = add i32 %5261, 12
  %5267 = add i32 %5261, 48
  %5268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5267, i32 undef)  ; BufferLoad(srv,index,wot)
  %5269 = extractvalue %dx.types.ResRet.f32 %5268, 0
  %5270 = extractvalue %dx.types.ResRet.f32 %5268, 1
  %5271 = extractvalue %dx.types.ResRet.f32 %5268, 2
  %5272 = and i32 %5234, 32767
  %5273 = bitcast float %5229 to i32
  %5274 = icmp eq i32 %5273, -1
  %5275 = bitcast float %5230 to i32
  %5276 = and i32 %5234, 32768
  %5277 = icmp ne i32 %5276, 0
  %5278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5279 = extractvalue %dx.types.CBufRet.f32 %5278, 0
  %5280 = extractvalue %dx.types.CBufRet.f32 %5278, 1
  %5281 = extractvalue %dx.types.CBufRet.f32 %5278, 2
  %5282 = fsub fast float %5263, %5279
  %5283 = fsub fast float %5264, %5280
  %5284 = fsub fast float %5265, %5281
  %5285 = fsub fast float %130, %5282
  %5286 = fsub fast float %131, %5283
  %5287 = fsub fast float %132, %5284
  %5288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5266, i32 undef)  ; BufferLoad(srv,index,wot)
  %5289 = extractvalue %dx.types.ResRet.f32 %5288, 0
  %5290 = extractvalue %dx.types.ResRet.f32 %5288, 1
  %5291 = extractvalue %dx.types.ResRet.f32 %5288, 2
  %5292 = call float @dx.op.dot3.f32(i32 55, float %5285, float %5286, float %5287, float %5289, float %5290, float %5291)  ; Dot3(ax,ay,az,bx,by,bz)
  %5293 = add i32 %5261, 24
  %5294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5293, i32 undef)  ; BufferLoad(srv,index,wot)
  %5295 = extractvalue %dx.types.ResRet.f32 %5294, 0
  %5296 = extractvalue %dx.types.ResRet.f32 %5294, 1
  %5297 = extractvalue %dx.types.ResRet.f32 %5294, 2
  %5298 = call float @dx.op.dot3.f32(i32 55, float %5285, float %5286, float %5287, float %5295, float %5296, float %5297)  ; Dot3(ax,ay,az,bx,by,bz)
  %5299 = add i32 %5261, 36
  %5300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5299, i32 undef)  ; BufferLoad(srv,index,wot)
  %5301 = extractvalue %dx.types.ResRet.f32 %5300, 0
  %5302 = extractvalue %dx.types.ResRet.f32 %5300, 1
  %5303 = extractvalue %dx.types.ResRet.f32 %5300, 2
  %5304 = call float @dx.op.dot3.f32(i32 55, float %5285, float %5286, float %5287, float %5301, float %5302, float %5303)  ; Dot3(ax,ay,az,bx,by,bz)
  %5305 = call float @dx.op.unary.f32(i32 6, float %5292)  ; FAbs(value)
  %5306 = call float @dx.op.unary.f32(i32 6, float %5298)  ; FAbs(value)
  %5307 = call float @dx.op.unary.f32(i32 6, float %5304)  ; FAbs(value)
  %5308 = fsub fast float %5269, %5305
  %5309 = fsub fast float %5270, %5306
  %5310 = fsub fast float %5271, %5307
  %5311 = fmul fast float %5308, %5237
  %5312 = fmul fast float %5309, %5238
  %5313 = fmul fast float %5310, %5239
  %5314 = call float @dx.op.binary.f32(i32 36, float %5312, float %5313)  ; FMin(a,b)
  %5315 = call float @dx.op.binary.f32(i32 36, float %5311, float %5314)  ; FMin(a,b)
  %5316 = call float @dx.op.unary.f32(i32 7, float %5315)  ; Saturate(value)
  %5317 = call float @dx.op.binary.f32(i32 36, float %5217, float %5316)  ; FMin(a,b)
  %5318 = uitofp i1 %5277 to float
  %5319 = fsub fast float 1.000000e+00, %5318
  %5320 = fmul fast float %5317, %5319
  %5321 = fcmp fast ogt float %5320, 0.000000e+00
  br i1 %5321, label %5331, label %5322

; <label>:5322                                    ; preds = %5473, %5213
  %5323 = phi float [ %5537, %5473 ], [ %5214, %5213 ]
  %5324 = phi float [ %5538, %5473 ], [ %5215, %5213 ]
  %5325 = phi float [ %5539, %5473 ], [ %5216, %5213 ]
  %5326 = phi float [ %5546, %5473 ], [ %5217, %5213 ]
  %5327 = phi float [ %5543, %5473 ], [ %5219, %5213 ]
  %5328 = phi float [ %5544, %5473 ], [ %5220, %5213 ]
  %5329 = phi float [ %5545, %5473 ], [ %5221, %5213 ]
  %5330 = icmp eq i32 %5218, %5225
  br i1 %5330, label %5547, label %5213

; <label>:5331                                    ; preds = %5213
  br i1 %5274, label %5389, label %5332

; <label>:5332                                    ; preds = %5331
  %5333 = fsub fast float -0.000000e+00, %5289
  %5334 = fsub fast float -0.000000e+00, %5290
  %5335 = fsub fast float -0.000000e+00, %5291
  %5336 = call float @dx.op.dot3.f32(i32 55, float %4688, float %4689, float %4690, float %5333, float %5334, float %5335)  ; Dot3(ax,ay,az,bx,by,bz)
  %5337 = fsub fast float -0.000000e+00, %5336
  %5338 = call float @dx.op.dot3.f32(i32 55, float %5285, float %5286, float %5287, float %5333, float %5334, float %5335)  ; Dot3(ax,ay,az,bx,by,bz)
  %5339 = fadd fast float %5338, %5252
  %5340 = fadd fast float %5251, %5338
  %5341 = fsub fast float -0.000000e+00, %5340
  %5342 = fcmp ogt float %5336, -0.000000e+00
  %5343 = select i1 %5342, float %5341, float %5339
  %5344 = call float @dx.op.unary.f32(i32 6, float %5337)  ; FAbs(value)
  %5345 = fdiv fast float 1.000000e+00, %5344
  %5346 = fmul fast float %5343, %5345
  %5347 = call float @dx.op.binary.f32(i32 35, float %5346, float 0.000000e+00)  ; FMax(a,b)
  %5348 = fsub fast float -0.000000e+00, %5295
  %5349 = fsub fast float -0.000000e+00, %5296
  %5350 = fsub fast float -0.000000e+00, %5297
  %5351 = call float @dx.op.dot3.f32(i32 55, float %4688, float %4689, float %4690, float %5348, float %5349, float %5350)  ; Dot3(ax,ay,az,bx,by,bz)
  %5352 = fsub fast float -0.000000e+00, %5351
  %5353 = call float @dx.op.dot3.f32(i32 55, float %5285, float %5286, float %5287, float %5348, float %5349, float %5350)  ; Dot3(ax,ay,az,bx,by,bz)
  %5354 = fadd fast float %5353, %5256
  %5355 = fadd fast float %5255, %5353
  %5356 = fsub fast float -0.000000e+00, %5355
  %5357 = fcmp ogt float %5351, -0.000000e+00
  %5358 = select i1 %5357, float %5356, float %5354
  %5359 = call float @dx.op.unary.f32(i32 6, float %5352)  ; FAbs(value)
  %5360 = fdiv fast float 1.000000e+00, %5359
  %5361 = fmul fast float %5358, %5360
  %5362 = call float @dx.op.binary.f32(i32 35, float %5361, float 0.000000e+00)  ; FMax(a,b)
  %5363 = fsub fast float -0.000000e+00, %5301
  %5364 = fsub fast float -0.000000e+00, %5302
  %5365 = fsub fast float -0.000000e+00, %5303
  %5366 = call float @dx.op.dot3.f32(i32 55, float %4688, float %4689, float %4690, float %5363, float %5364, float %5365)  ; Dot3(ax,ay,az,bx,by,bz)
  %5367 = fsub fast float -0.000000e+00, %5366
  %5368 = call float @dx.op.dot3.f32(i32 55, float %5285, float %5286, float %5287, float %5363, float %5364, float %5365)  ; Dot3(ax,ay,az,bx,by,bz)
  %5369 = fadd fast float %5368, %5260
  %5370 = fadd fast float %5259, %5368
  %5371 = fsub fast float -0.000000e+00, %5370
  %5372 = fcmp ogt float %5366, -0.000000e+00
  %5373 = select i1 %5372, float %5371, float %5369
  %5374 = call float @dx.op.unary.f32(i32 6, float %5367)  ; FAbs(value)
  %5375 = fdiv fast float 1.000000e+00, %5374
  %5376 = fmul fast float %5373, %5375
  %5377 = call float @dx.op.binary.f32(i32 35, float %5376, float 0.000000e+00)  ; FMax(a,b)
  %5378 = call float @dx.op.binary.f32(i32 36, float %5362, float %5377)  ; FMin(a,b)
  %5379 = call float @dx.op.binary.f32(i32 36, float %5347, float %5378)  ; FMin(a,b)
  %5380 = fmul fast float %5379, %4688
  %5381 = fmul fast float %5379, %4689
  %5382 = fmul fast float %5379, %4690
  %5383 = fadd fast float %5380, %130
  %5384 = fadd fast float %5381, %131
  %5385 = fadd fast float %5382, %132
  %5386 = fsub fast float %5383, %5229
  %5387 = fsub fast float %5384, %5230
  %5388 = fsub fast float %5385, %5231
  br label %5396

; <label>:5389                                    ; preds = %5331
  %5390 = fmul fast float %4688, 8.096000e+03
  %5391 = fmul fast float %4689, 8.096000e+03
  %5392 = fmul fast float %4690, 8.096000e+03
  %5393 = fadd fast float %5390, %130
  %5394 = fadd fast float %5391, %131
  %5395 = fadd fast float %5392, %132
  br label %5396

; <label>:5396                                    ; preds = %5389, %5332
  %5397 = phi float [ %4688, %5389 ], [ %5386, %5332 ]
  %5398 = phi float [ %4689, %5389 ], [ %5387, %5332 ]
  %5399 = phi float [ %4690, %5389 ], [ %5388, %5332 ]
  %5400 = phi float [ %5393, %5389 ], [ %5383, %5332 ]
  %5401 = phi float [ %5394, %5389 ], [ %5384, %5332 ]
  %5402 = phi float [ %5395, %5389 ], [ %5385, %5332 ]
  %5403 = fcmp fast olt float %5248, 1.000000e+00
  br i1 %5403, label %5404, label %5435, !dx.controlflow.hints !71

; <label>:5404                                    ; preds = %5396
  %5405 = fmul fast float %5399, %5246
  %5406 = fmul fast float %5398, %5247
  %5407 = fsub fast float %5405, %5406
  %5408 = fmul fast float %5397, %5247
  %5409 = fmul fast float %5399, %5245
  %5410 = fsub fast float %5408, %5409
  %5411 = fmul fast float %5398, %5245
  %5412 = fmul fast float %5397, %5246
  %5413 = fsub fast float %5411, %5412
  %5414 = fmul fast float %5407, 2.000000e+00
  %5415 = fmul fast float %5410, 2.000000e+00
  %5416 = fmul fast float %5413, 2.000000e+00
  %5417 = fmul fast float %5414, %5248
  %5418 = fmul fast float %5415, %5248
  %5419 = fmul fast float %5416, %5248
  %5420 = fmul fast float %5416, %5246
  %5421 = fmul fast float %5415, %5247
  %5422 = fmul fast float %5414, %5247
  %5423 = fmul fast float %5416, %5245
  %5424 = fmul fast float %5415, %5245
  %5425 = fmul fast float %5414, %5246
  %5426 = fadd fast float %5420, %5397
  %5427 = fadd fast float %5426, %5417
  %5428 = fsub fast float %5427, %5421
  %5429 = fsub fast float %5398, %5423
  %5430 = fadd fast float %5429, %5418
  %5431 = fadd fast float %5430, %5422
  %5432 = fadd fast float %5419, %5399
  %5433 = fsub fast float %5432, %5425
  %5434 = fadd fast float %5433, %5424
  br label %5435

; <label>:5435                                    ; preds = %5404, %5396
  %5436 = phi float [ %5428, %5404 ], [ %5397, %5396 ]
  %5437 = phi float [ %5431, %5404 ], [ %5398, %5396 ]
  %5438 = phi float [ %5434, %5404 ], [ %5399, %5396 ]
  br i1 %5274, label %5470, label %5439

; <label>:5439                                    ; preds = %5435
  %5440 = fmul fast float %4663, 0x400187C840000000
  %5441 = fadd fast float %5440, 0xC00EFC2120000000
  %5442 = fmul fast float %5441, %4663
  %5443 = fadd fast float %5442, 0x3FE5D16340000000
  %5444 = fmul fast float %5443, %4663
  %5445 = fadd fast float %5444, 1.000000e+00
  %5446 = call float @dx.op.unary.f32(i32 7, float %5445)  ; Saturate(value)
  %5447 = fsub fast float %5400, %130
  %5448 = fsub fast float %5401, %131
  %5449 = fsub fast float %5402, %132
  %5450 = fsub fast float %5400, %5229
  %5451 = fsub fast float %5401, %5230
  %5452 = fsub fast float %5402, %5231
  %5453 = call float @dx.op.dot3.f32(i32 55, float %5447, float %5448, float %5449, float %5447, float %5448, float %5449)  ; Dot3(ax,ay,az,bx,by,bz)
  %5454 = call float @dx.op.dot3.f32(i32 55, float %5450, float %5451, float %5452, float %5450, float %5451, float %5452)  ; Dot3(ax,ay,az,bx,by,bz)
  %5455 = fadd fast float %5454, 0x3EE4F8B580000000
  %5456 = fdiv fast float %5453, %5455
  %5457 = bitcast float %5456 to i32
  %5458 = ashr i32 %5457, 1
  %5459 = add nsw i32 %5458, 532487669
  %5460 = bitcast i32 %5459 to float
  %5461 = fmul fast float %5460, %5446
  %5462 = call float @dx.op.unary.f32(i32 7, float %5461)  ; Saturate(value)
  %5463 = fmul fast float %5462, 0x4009981AE0000000
  %5464 = fsub fast float 0x40111BBD80000000, %5463
  %5465 = fmul fast float %5464, %5462
  %5466 = fadd fast float %5465, 0xC0009F6020000000
  %5467 = fmul fast float %5466, %5462
  %5468 = fadd fast float %5467, 1.000000e+00
  %5469 = call float @dx.op.unary.f32(i32 7, float %5468)  ; Saturate(value)
  br label %5473

; <label>:5470                                    ; preds = %5435
  %5471 = icmp ne i32 %5275, -1
  %5472 = zext i1 %5471 to i32
  br label %5473

; <label>:5473                                    ; preds = %5470, %5439
  %5474 = phi float [ %4663, %5470 ], [ %5469, %5439 ]
  %5475 = phi i32 [ %5472, %5470 ], [ 0, %5439 ]
  %5476 = fmul float %5474, 5.000000e+00
  %5477 = fsub float 5.000000e+00, %5476
  %5478 = icmp ne i32 %5475, 0
  %5479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5480 = extractvalue %dx.types.CBufRet.f32 %5479, 3
  %5481 = fadd fast float %5480, %5477
  %5482 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5481)  ; FMax(a,b)
  %5483 = call float @dx.op.unary.f32(i32 6, float %5436)  ; FAbs(value)
  %5484 = call float @dx.op.unary.f32(i32 6, float %5437)  ; FAbs(value)
  %5485 = fadd fast float %5484, %5483
  %5486 = call float @dx.op.unary.f32(i32 6, float %5438)  ; FAbs(value)
  %5487 = fadd fast float %5485, %5486
  %5488 = fcmp fast oeq float %5487, 0.000000e+00
  %5489 = fdiv fast float 1.000000e+00, %5487
  %5490 = select i1 %5488, float 1.000000e+00, float %5489
  %5491 = fmul fast float %5490, %5436
  %5492 = fmul fast float %5490, %5437
  %5493 = call float @dx.op.unary.f32(i32 6, float %5492)  ; FAbs(value)
  %5494 = call float @dx.op.unary.f32(i32 6, float %5491)  ; FAbs(value)
  %5495 = fsub fast float 1.000000e+00, %5493
  %5496 = fsub fast float 1.000000e+00, %5494
  %5497 = fcmp fast oge float %5491, 0.000000e+00
  %5498 = fcmp fast oge float %5492, 0.000000e+00
  %5499 = select i1 %5497, float 1.000000e+00, float -1.000000e+00
  %5500 = select i1 %5498, float 1.000000e+00, float -1.000000e+00
  %5501 = fcmp fast ole float %5438, 0.000000e+00
  %5502 = fmul fast float %5499, %5495
  %5503 = fmul fast float %5500, %5496
  %5504 = select i1 %5501, float %5502, float %5491
  %5505 = select i1 %5501, float %5503, float %5492
  %5506 = fmul fast float %5504, 5.000000e-01
  %5507 = fmul fast float %5505, 5.000000e-01
  %5508 = fadd fast float %5506, 5.000000e-01
  %5509 = fadd fast float %5507, 5.000000e-01
  %5510 = uitofp i32 %5272 to float
  %5511 = call float @dx.op.binary.f32(i32 36, float %5482, float 3.000000e+00)  ; FMin(a,b)
  %5512 = fadd fast float %5511, 2.000000e+00
  %5513 = call float @dx.op.unary.f32(i32 21, float %5512)  ; Exp(value)
  %5514 = extractvalue %dx.types.CBufRet.f32 %5479, 1
  %5515 = fmul fast float %5514, %5513
  %5516 = fmul fast float %5515, 2.000000e+00
  %5517 = fsub fast float 1.000000e+00, %5516
  %5518 = fmul fast float %5508, %5517
  %5519 = fmul fast float %5509, %5517
  %5520 = fadd fast float %5518, %5515
  %5521 = fadd fast float %5519, %5515
  %5522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %26, float %5520, float %5521, float %5510, float undef, i32 0, i32 0, i32 undef, float %5482)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5523 = extractvalue %dx.types.ResRet.f32 %5522, 0
  %5524 = extractvalue %dx.types.ResRet.f32 %5522, 1
  %5525 = extractvalue %dx.types.ResRet.f32 %5522, 2
  %5526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5527 = extractvalue %dx.types.CBufRet.f32 %5526, 3
  %5528 = fmul fast float %5527, %5242
  %5529 = call float @dx.op.binary.f32(i32 36, float %4743, float %5528)  ; FMin(a,b)
  %5530 = select i1 %5478, float %5529, float %5528
  %5531 = fmul fast float %5523, %5320
  %5532 = fmul fast float %5531, %5530
  %5533 = fmul fast float %5524, %5320
  %5534 = fmul fast float %5533, %5530
  %5535 = fmul fast float %5525, %5320
  %5536 = fmul fast float %5535, %5530
  %5537 = fadd fast float %5532, %5214
  %5538 = fadd fast float %5534, %5215
  %5539 = fadd fast float %5536, %5216
  %5540 = fmul fast float %5400, %5320
  %5541 = fmul fast float %5401, %5320
  %5542 = fmul fast float %5402, %5320
  %5543 = fadd fast float %5540, %5219
  %5544 = fadd fast float %5541, %5220
  %5545 = fadd fast float %5542, %5221
  %5546 = fsub fast float %5217, %5320
  br label %5322

; <label>:5547                                    ; preds = %5322
  br label %5548

; <label>:5548                                    ; preds = %5547, %5180
  %5549 = phi float [ %5181, %5180 ], [ %5323, %5547 ]
  %5550 = phi float [ %5182, %5180 ], [ %5324, %5547 ]
  %5551 = phi float [ %5183, %5180 ], [ %5325, %5547 ]
  %5552 = phi float [ %5184, %5180 ], [ %5326, %5547 ]
  %5553 = phi float [ %5186, %5180 ], [ %5327, %5547 ]
  %5554 = phi float [ %5187, %5180 ], [ %5328, %5547 ]
  %5555 = phi float [ %5188, %5180 ], [ %5329, %5547 ]
  %5556 = add i32 %5185, 1
  %5557 = icmp ugt i32 %5556, %5177
  br i1 %5557, label %5558, label %5180, !llvm.loop !72

; <label>:5558                                    ; preds = %5548
  br label %5559

; <label>:5559                                    ; preds = %5558, %5128
  %5560 = phi float [ 0.000000e+00, %5128 ], [ %5549, %5558 ]
  %5561 = phi float [ 0.000000e+00, %5128 ], [ %5550, %5558 ]
  %5562 = phi float [ 0.000000e+00, %5128 ], [ %5551, %5558 ]
  %5563 = phi float [ 0.000000e+00, %5128 ], [ %5553, %5558 ]
  %5564 = phi float [ 0.000000e+00, %5128 ], [ %5554, %5558 ]
  %5565 = phi float [ 0.000000e+00, %5128 ], [ %5555, %5558 ]
  %5566 = call float @dx.op.dot3.f32(i32 55, float %5560, float %5561, float %5562, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5567 = select i1 %171, float 0.000000e+00, float %5560
  %5568 = select i1 %171, float %5566, float %5561
  %5569 = select i1 %171, float 0.000000e+00, float %5562
  %5570 = fcmp fast olt float %5122, 0.000000e+00
  %5571 = call float @dx.op.unary.f32(i32 6, float %5122)  ; FAbs(value)
  %5572 = fmul fast float %5571, %5123
  %5573 = fmul fast float %5571, %5124
  %5574 = fmul fast float %5571, %5125
  %5575 = select i1 %5570, float %5123, float %5572
  %5576 = select i1 %5570, float %5124, float %5573
  %5577 = select i1 %5570, float %5125, float %5574
  %5578 = fsub fast float 1.000000e+00, %5571
  %5579 = call float @dx.op.unary.f32(i32 7, float %5578)  ; Saturate(value)
  %5580 = fmul fast float %5579, %5567
  %5581 = fmul fast float %5579, %5568
  %5582 = fmul fast float %5579, %5569
  %5583 = fadd fast float %5575, %5580
  %5584 = fadd fast float %5576, %5581
  %5585 = fadd fast float %5577, %5582
  %5586 = fcmp fast une float %4872, 0.000000e+00
  br i1 %5586, label %5687, label %5587

; <label>:5587                                    ; preds = %5559
  %5588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5589 = extractvalue %dx.types.CBufRet.f32 %5588, 0
  %5590 = extractvalue %dx.types.CBufRet.f32 %5588, 1
  %5591 = extractvalue %dx.types.CBufRet.f32 %5588, 2
  %5592 = extractvalue %dx.types.CBufRet.f32 %5588, 3
  %5593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5594 = extractvalue %dx.types.CBufRet.f32 %5593, 0
  %5595 = extractvalue %dx.types.CBufRet.f32 %5593, 1
  %5596 = extractvalue %dx.types.CBufRet.f32 %5593, 2
  %5597 = extractvalue %dx.types.CBufRet.f32 %5593, 3
  %5598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5599 = extractvalue %dx.types.CBufRet.f32 %5598, 0
  %5600 = extractvalue %dx.types.CBufRet.f32 %5598, 1
  %5601 = extractvalue %dx.types.CBufRet.f32 %5598, 2
  %5602 = extractvalue %dx.types.CBufRet.f32 %5598, 3
  %5603 = call float @dx.op.dot3.f32(i32 55, float %5599, float %5600, float %5601, float %4688, float %4689, float %4690)  ; Dot3(ax,ay,az,bx,by,bz)
  %5604 = call float @dx.op.dot3.f32(i32 55, float %5563, float %5564, float %5565, float %5599, float %5600, float %5601)  ; Dot3(ax,ay,az,bx,by,bz)
  %5605 = call float @dx.op.dot3.f32(i32 55, float %130, float %131, float %132, float %5599, float %5600, float %5601)  ; Dot3(ax,ay,az,bx,by,bz)
  %5606 = fadd fast float %4663, -1.000000e+00
  %5607 = fsub fast float %5604, %5605
  %5608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5609 = extractvalue %dx.types.CBufRet.f32 %5608, 2
  %5610 = fmul fast float %5609, %5604
  %5611 = fdiv fast float 1.600000e+02, %5610
  %5612 = fmul fast float %5606, %5606
  %5613 = fmul fast float %5612, 0xBFB5B17960000000
  %5614 = fmul fast float %5613, %5607
  %5615 = fmul fast float %5614, %5611
  %5616 = call float @dx.op.unary.f32(i32 21, float %5615)  ; Exp(value)
  %5617 = fmul fast float %5616, 0x3FF04B2960000000
  %5618 = fsub fast float 0x3FF04B2960000000, %5617
  %5619 = call float @dx.op.unary.f32(i32 7, float %5618)  ; Saturate(value)
  %5620 = fmul fast float %5619, 4.000000e+00
  %5621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5622 = extractvalue %dx.types.CBufRet.f32 %5621, 0
  %5623 = extractvalue %dx.types.CBufRet.f32 %5621, 1
  %5624 = extractvalue %dx.types.CBufRet.f32 %5621, 2
  %5625 = fadd fast float %5622, %5563
  %5626 = fadd fast float %5623, %5564
  %5627 = fadd fast float %5624, %5565
  %5628 = fmul fast float %5625, %5589
  %5629 = call float @dx.op.tertiary.f32(i32 46, float %5626, float %5590, float %5628)  ; FMad(a,b,c)
  %5630 = call float @dx.op.tertiary.f32(i32 46, float %5627, float %5591, float %5629)  ; FMad(a,b,c)
  %5631 = fadd fast float %5630, %5592
  %5632 = fmul fast float %5625, %5594
  %5633 = call float @dx.op.tertiary.f32(i32 46, float %5626, float %5595, float %5632)  ; FMad(a,b,c)
  %5634 = call float @dx.op.tertiary.f32(i32 46, float %5627, float %5596, float %5633)  ; FMad(a,b,c)
  %5635 = fadd fast float %5634, %5597
  %5636 = fmul fast float %5625, %5599
  %5637 = call float @dx.op.tertiary.f32(i32 46, float %5626, float %5600, float %5636)  ; FMad(a,b,c)
  %5638 = call float @dx.op.tertiary.f32(i32 46, float %5627, float %5601, float %5637)  ; FMad(a,b,c)
  %5639 = fadd fast float %5638, %5602
  %5640 = fdiv fast float %5631, %5639
  %5641 = fdiv fast float %5635, %5639
  %5642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5643 = extractvalue %dx.types.CBufRet.f32 %5642, 0
  %5644 = extractvalue %dx.types.CBufRet.f32 %5642, 1
  %5645 = fmul fast float %5643, %5640
  %5646 = fmul fast float %5644, %5641
  %5647 = extractvalue %dx.types.CBufRet.f32 %5642, 2
  %5648 = extractvalue %dx.types.CBufRet.f32 %5642, 3
  %5649 = fadd fast float %5645, %5647
  %5650 = fadd fast float %5646, %5648
  %5651 = fmul fast float %5603, 8.000000e+00
  %5652 = call float @dx.op.unary.f32(i32 7, float %5651)  ; Saturate(value)
  %5653 = fmul fast float %5649, 2.000000e+00
  %5654 = fmul fast float %5650, 2.000000e+00
  %5655 = fadd fast float %5653, -1.000000e+00
  %5656 = fadd fast float %5654, -1.000000e+00
  %5657 = fmul fast float %5655, %5655
  %5658 = fsub fast float 1.000000e+00, %5657
  %5659 = call float @dx.op.unary.f32(i32 7, float %5658)  ; Saturate(value)
  %5660 = fmul fast float %5656, %5656
  %5661 = fsub fast float 1.000000e+00, %5660
  %5662 = call float @dx.op.unary.f32(i32 7, float %5661)  ; Saturate(value)
  %5663 = fmul fast float %4872, %5659
  %5664 = fmul fast float %5663, %5662
  %5665 = call float @dx.op.unary.f32(i32 7, float %5664)  ; Saturate(value)
  %5666 = fmul fast float %5665, %5652
  %5667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %5649, float %5650, float undef, float undef, i32 0, i32 0, i32 undef, float %5620)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5668 = extractvalue %dx.types.ResRet.f32 %5667, 0
  %5669 = extractvalue %dx.types.ResRet.f32 %5667, 1
  %5670 = extractvalue %dx.types.ResRet.f32 %5667, 2
  %5671 = select i1 %171, float 0.000000e+00, float %5669
  %5672 = select i1 %171, float 0.000000e+00, float %5670
  %5673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.f32 %5673, 2
  %5675 = fmul fast float %5674, %5668
  %5676 = fmul fast float %5671, %5674
  %5677 = fmul fast float %5672, %5674
  %5678 = fsub fast float %5675, %5567
  %5679 = fsub fast float %5676, %5568
  %5680 = fsub fast float %5677, %5569
  %5681 = fmul fast float %5678, %5666
  %5682 = fmul fast float %5679, %5666
  %5683 = fmul fast float %5680, %5666
  %5684 = fadd fast float %5681, %5567
  %5685 = fadd fast float %5682, %5568
  %5686 = fadd fast float %5683, %5569
  br label %5687

; <label>:5687                                    ; preds = %5587, %5559, %5121, %4845
  %5688 = phi float [ %5123, %5121 ], [ %5583, %5559 ], [ %4802, %4845 ], [ %5684, %5587 ]
  %5689 = phi float [ %5124, %5121 ], [ %5584, %5559 ], [ %4803, %4845 ], [ %5685, %5587 ]
  %5690 = phi float [ %5125, %5121 ], [ %5585, %5559 ], [ %4804, %4845 ], [ %5686, %5587 ]
  %5691 = fmul fast float %4851, %4798
  %5692 = fmul fast float %4851, %4799
  %5693 = fmul fast float %4851, %4800
  %5694 = call float @dx.op.dot3.f32(i32 55, float %4660, float %4661, float %4662, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5695 = fcmp fast ogt float %5694, 0x3E7FF19E20000000
  %5696 = fdiv fast float 1.000000e+00, %5694
  %5697 = select i1 %5695, float %5696, float 0.000000e+00
  %5698 = fmul fast float %5697, %4660
  %5699 = fmul fast float %5697, %4661
  %5700 = fmul fast float %5697, %4662
  %5701 = fadd fast float %5698, -1.000000e+00
  %5702 = fadd fast float %5699, -1.000000e+00
  %5703 = fadd fast float %5700, -1.000000e+00
  %5704 = fmul fast float %5701, 5.000000e-01
  %5705 = fmul fast float %5702, 5.000000e-01
  %5706 = fmul fast float %5703, 5.000000e-01
  %5707 = fadd fast float %5704, 1.000000e+00
  %5708 = fadd fast float %5705, 1.000000e+00
  %5709 = fadd fast float %5706, 1.000000e+00
  %5710 = fmul fast float %5688, %4846
  %5711 = fmul fast float %5689, %4847
  %5712 = fmul fast float %5690, %4848
  %5713 = fsub fast float 1.000000e+00, %4682
  %5714 = bitcast float %5713 to i32
  %5715 = sitofp i32 %5714 to float
  %5716 = fmul fast float %5715, 5.000000e+00
  %5717 = fadd fast float %5716, 0xC1EFBF8940000000
  %5718 = fptosi float %5717 to i32
  %5719 = bitcast i32 %5718 to float
  %5720 = fmul fast float %5719, %4344
  %5721 = fmul fast float %4798, %5720
  %5722 = fmul fast float %5721, %4851
  %5723 = fmul fast float %5722, %5707
  %5724 = fmul fast float %4799, %5720
  %5725 = fmul fast float %5724, %4851
  %5726 = fmul fast float %5725, %5708
  %5727 = fmul fast float %4800, %5720
  %5728 = fmul fast float %5727, %4851
  %5729 = fmul fast float %5728, %5709
  %5730 = fmul fast float %5691, %4340
  %5731 = fmul fast float %5692, %4340
  %5732 = fmul fast float %5693, %4340
  %5733 = fadd fast float %5710, %4336
  %5734 = fadd fast float %5733, %5723
  %5735 = fmul fast float %5734, %4340
  %5736 = fadd fast float %5711, %4337
  %5737 = fadd fast float %5736, %5726
  %5738 = fmul fast float %5737, %4340
  %5739 = fadd fast float %5712, %4338
  %5740 = fadd fast float %5739, %5729
  %5741 = fmul fast float %5740, %4340
  %5742 = bitcast i32 %4706 to float
  %5743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5744 = extractvalue %dx.types.CBufRet.f32 %5743, 3
  %5745 = fcmp fast oeq float %5744, 0.000000e+00
  br i1 %5745, label %5964, label %5746

; <label>:5746                                    ; preds = %5687
  %5747 = extractvalue %dx.types.CBufRet.f32 %5743, 0
  %5748 = extractvalue %dx.types.CBufRet.f32 %5743, 1
  %5749 = extractvalue %dx.types.CBufRet.f32 %5743, 2
  %5750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5751 = extractvalue %dx.types.CBufRet.f32 %5750, 0
  %5752 = extractvalue %dx.types.CBufRet.f32 %5750, 1
  %5753 = extractvalue %dx.types.CBufRet.f32 %5750, 2
  %5754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5755 = extractvalue %dx.types.CBufRet.f32 %5754, 0
  %5756 = extractvalue %dx.types.CBufRet.f32 %5754, 1
  %5757 = call float @dx.op.dot3.f32(i32 55, float %5751, float %5752, float %5753, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5758 = select i1 %171, float %5755, float %5751
  %5759 = select i1 %171, float %5757, float %5752
  %5760 = select i1 %171, float %5756, float %5753
  %5761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5762 = extractvalue %dx.types.CBufRet.f32 %5761, 1
  %5763 = fcmp fast une float %5762, 0.000000e+00
  br i1 %5763, label %5764, label %5781

; <label>:5764                                    ; preds = %5746
  %5765 = fptoui float %67 to i32
  %5766 = fptoui float %68 to i32
  %5767 = lshr i32 %5765, 4
  %5768 = lshr i32 %5766, 4
  %5769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5770 = extractvalue %dx.types.CBufRet.f32 %5769, 0
  %5771 = fptoui float %5770 to i32
  %5772 = add i32 %5771, 15
  %5773 = lshr i32 %5772, 4
  %5774 = mul i32 %5773, %5768
  %5775 = add i32 %5774, %5767
  %5776 = shl i32 %5775, 3
  %5777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5776, i32 undef)  ; BufferLoad(srv,index,wot)
  %5778 = extractvalue %dx.types.ResRet.i32 %5777, 0
  %5779 = and i32 %5778, -268435456
  %5780 = icmp eq i32 %5779, -1342177280
  br i1 %5780, label %5786, label %5781

; <label>:5781                                    ; preds = %5764, %5746
  %5782 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %29, float %4668, float %4669, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5783 = extractvalue %dx.types.ResRet.f32 %5782, 0
  %5784 = extractvalue %dx.types.ResRet.f32 %5782, 1
  %5785 = extractvalue %dx.types.ResRet.f32 %5782, 2
  br label %5786

; <label>:5786                                    ; preds = %5781, %5764
  %5787 = phi float [ %5783, %5781 ], [ 0.000000e+00, %5764 ]
  %5788 = phi float [ %5784, %5781 ], [ 0.000000e+00, %5764 ]
  %5789 = phi float [ %5785, %5781 ], [ 0.000000e+00, %5764 ]
  %5790 = call float @dx.op.binary.f32(i32 36, float %5788, float %5789)  ; FMin(a,b)
  %5791 = call float @dx.op.binary.f32(i32 36, float %5787, float %5790)  ; FMin(a,b)
  %5792 = fcmp fast ogt float %5791, 0.000000e+00
  br i1 %5792, label %5793, label %5964, !dx.controlflow.hints !74

; <label>:5793                                    ; preds = %5786
  %5794 = fmul fast float %5787, %5758
  %5795 = fmul fast float %5788, %5759
  %5796 = fmul fast float %5789, %5760
  %5797 = fsub fast float %5747, %4653
  %5798 = fsub fast float %5748, %4652
  %5799 = fsub fast float %5749, %4651
  %5800 = call float @dx.op.dot3.f32(i32 55, float %5797, float %5798, float %5799, float %5797, float %5798, float %5799)  ; Dot3(ax,ay,az,bx,by,bz)
  %5801 = call float @dx.op.unary.f32(i32 25, float %5800)  ; Rsqrt(value)
  %5802 = fmul fast float %5801, %5797
  %5803 = fmul fast float %5801, %5798
  %5804 = fmul fast float %5801, %5799
  %5805 = call float @dx.op.dot3.f32(i32 55, float %5747, float %5748, float %5749, float %4654, float %4655, float %4656)  ; Dot3(ax,ay,az,bx,by,bz)
  %5806 = call float @dx.op.dot3.f32(i32 55, float %4650, float %4649, float %4648, float %5802, float %5803, float %5804)  ; Dot3(ax,ay,az,bx,by,bz)
  %5807 = call float @dx.op.unary.f32(i32 7, float %5805)  ; Saturate(value)
  %5808 = fmul fast float %5807, %5807
  %5809 = fmul fast float %5808, %5742
  %5810 = call float @dx.op.unary.f32(i32 7, float %5809)  ; Saturate(value)
  %5811 = fmul fast float %5810, %5807
  %5812 = call float @dx.op.dot3.f32(i32 55, float %4654, float %4655, float %4656, float %5802, float %5803, float %5804)  ; Dot3(ax,ay,az,bx,by,bz)
  %5813 = fmul fast float %5812, %5812
  %5814 = call float @dx.op.unary.f32(i32 6, float %5805)  ; FAbs(value)
  %5815 = fsub fast float 1.000000e+00, %4700
  %5816 = fmul fast float %4682, %4682
  %5817 = fmul fast float %5816, %5815
  %5818 = fadd fast float %5817, %4700
  %5819 = bitcast float %5818 to i32
  %5820 = ashr i32 %5819, 1
  %5821 = add nsw i32 %5820, 532487669
  %5822 = bitcast i32 %5821 to float
  %5823 = fadd fast float %5822, %4682
  %5824 = fmul fast float %4700, %5813
  %5825 = fsub fast float 1.000000e+00, %5813
  %5826 = fadd fast float %5825, %5824
  %5827 = fmul fast float %5814, %5814
  %5828 = fmul fast float %5827, %5815
  %5829 = fadd fast float %5828, %4700
  %5830 = bitcast float %5829 to i32
  %5831 = ashr i32 %5830, 1
  %5832 = add nsw i32 %5831, 532487669
  %5833 = bitcast i32 %5832 to float
  %5834 = fadd fast float %5833, %5814
  %5835 = fmul fast float %5826, %5826
  %5836 = fmul fast float %5835, %5823
  %5837 = fmul fast float %5836, %5834
  %5838 = fdiv fast float 0x3FF0A00000000000, %5837
  %5839 = fmul fast float %5838, %4700
  %5840 = call float @dx.op.unary.f32(i32 6, float %5806)  ; FAbs(value)
  %5841 = fsub fast float 1.000000e+00, %5840
  %5842 = bitcast float %5841 to i32
  %5843 = sitofp i32 %5842 to float
  %5844 = fmul fast float %5843, 5.000000e+00
  %5845 = fadd fast float %5844, 0xC1EFBF8940000000
  %5846 = fptosi float %5845 to i32
  %5847 = bitcast i32 %5846 to float
  %5848 = fsub fast float 1.000000e+00, %4657
  %5849 = fsub fast float 1.000000e+00, %4658
  %5850 = fsub fast float 1.000000e+00, %4680
  %5851 = fmul fast float %5847, %5848
  %5852 = fmul fast float %5847, %5849
  %5853 = fmul fast float %5847, %5850
  %5854 = fadd fast float %5851, %4657
  %5855 = fadd fast float %5852, %4658
  %5856 = fadd fast float %5853, %4680
  br i1 %4818, label %5857, label %5880

; <label>:5857                                    ; preds = %5793
  %5858 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4343, float %5840, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5859 = extractvalue %dx.types.ResRet.f32 %5858, 0
  %5860 = extractvalue %dx.types.ResRet.f32 %5858, 1
  %5861 = extractvalue %dx.types.ResRet.f32 %5858, 2
  %5862 = fadd fast float %5859, -5.000000e-01
  %5863 = fadd fast float %5860, -5.000000e-01
  %5864 = fadd fast float %5861, -5.000000e-01
  %5865 = fmul fast float %4657, 4.000000e+00
  %5866 = fmul fast float %5865, %5848
  %5867 = fmul fast float %5866, %5862
  %5868 = fmul fast float %4658, 4.000000e+00
  %5869 = fmul fast float %5868, %5849
  %5870 = fmul fast float %5869, %5863
  %5871 = fmul fast float %4680, 4.000000e+00
  %5872 = fmul fast float %5871, %5850
  %5873 = fmul fast float %5872, %5864
  %5874 = fadd fast float %5867, %5854
  %5875 = fadd fast float %5870, %5855
  %5876 = fadd fast float %5873, %5856
  %5877 = call float @dx.op.unary.f32(i32 7, float %5874)  ; Saturate(value)
  %5878 = call float @dx.op.unary.f32(i32 7, float %5875)  ; Saturate(value)
  %5879 = call float @dx.op.unary.f32(i32 7, float %5876)  ; Saturate(value)
  br label %5880

; <label>:5880                                    ; preds = %5857, %5793
  %5881 = phi float [ %5877, %5857 ], [ %5854, %5793 ]
  %5882 = phi float [ %5878, %5857 ], [ %5855, %5793 ]
  %5883 = phi float [ %5879, %5857 ], [ %5856, %5793 ]
  %5884 = fmul fast float %5805, 9.843750e-01
  %5885 = fadd fast float %5884, 7.812500e-03
  %5886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5885, float %4808, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5887 = extractvalue %dx.types.ResRet.f32 %5886, 2
  %5888 = extractvalue %dx.types.ResRet.f32 %5886, 3
  %5889 = fmul fast float %5887, %4657
  %5890 = fmul fast float %5887, %4658
  %5891 = fmul fast float %5887, %4680
  %5892 = fadd fast float %5889, %5888
  %5893 = fadd fast float %5890, %5888
  %5894 = fadd fast float %5891, %5888
  br i1 %4818, label %5895, label %5918

; <label>:5895                                    ; preds = %5880
  %5896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4343, float %5805, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5897 = extractvalue %dx.types.ResRet.f32 %5896, 0
  %5898 = extractvalue %dx.types.ResRet.f32 %5896, 1
  %5899 = extractvalue %dx.types.ResRet.f32 %5896, 2
  %5900 = fadd fast float %5897, -5.000000e-01
  %5901 = fadd fast float %5898, -5.000000e-01
  %5902 = fadd fast float %5899, -5.000000e-01
  %5903 = fmul fast float %4657, 4.000000e+00
  %5904 = fmul fast float %5903, %5848
  %5905 = fmul fast float %5904, %5900
  %5906 = fmul fast float %4658, 4.000000e+00
  %5907 = fmul fast float %5906, %5849
  %5908 = fmul fast float %5907, %5901
  %5909 = fmul fast float %4680, 4.000000e+00
  %5910 = fmul fast float %5909, %5850
  %5911 = fmul fast float %5910, %5902
  %5912 = fadd fast float %5905, %5892
  %5913 = fadd fast float %5908, %5893
  %5914 = fadd fast float %5911, %5894
  %5915 = call float @dx.op.unary.f32(i32 7, float %5912)  ; Saturate(value)
  %5916 = call float @dx.op.unary.f32(i32 7, float %5913)  ; Saturate(value)
  %5917 = call float @dx.op.unary.f32(i32 7, float %5914)  ; Saturate(value)
  br label %5918

; <label>:5918                                    ; preds = %5895, %5880
  %5919 = phi float [ %5915, %5895 ], [ %5892, %5880 ]
  %5920 = phi float [ %5916, %5895 ], [ %5893, %5880 ]
  %5921 = phi float [ %5917, %5895 ], [ %5894, %5880 ]
  %5922 = call float @dx.op.binary.f32(i32 35, float %5920, float %5921)  ; FMax(a,b)
  %5923 = call float @dx.op.binary.f32(i32 35, float %5919, float %5922)  ; FMax(a,b)
  %5924 = fsub fast float 1.000000e+00, %5923
  %5925 = fmul fast float %5881, %5839
  %5926 = fmul fast float %5882, %5839
  %5927 = fmul fast float %5883, %5839
  %5928 = fsub fast float 1.000000e+00, %5806
  %5929 = bitcast float %5928 to i32
  %5930 = sitofp i32 %5929 to float
  %5931 = fmul fast float %5930, 5.000000e+00
  %5932 = fadd fast float %5931, 0xC1EFBF8940000000
  %5933 = fptosi float %5932 to i32
  %5934 = bitcast i32 %5933 to float
  %5935 = fmul fast float %5934, %4344
  %5936 = fmul fast float %5924, %5935
  %5937 = fmul fast float %5936, %5707
  %5938 = fmul fast float %5936, %5708
  %5939 = fmul fast float %5936, %5709
  %5940 = fadd fast float %5937, %5925
  %5941 = fadd fast float %5938, %5926
  %5942 = fadd fast float %5939, %5927
  %5943 = fmul fast float %5811, %5794
  %5944 = fmul fast float %5943, %5924
  %5945 = fmul fast float %5811, %5795
  %5946 = fmul fast float %5945, %5924
  %5947 = fmul fast float %5811, %5796
  %5948 = fmul fast float %5947, %5924
  %5949 = fmul fast float %5943, %5940
  %5950 = fmul fast float %5945, %5941
  %5951 = fmul fast float %5947, %5942
  %5952 = fadd fast float %5944, %5691
  %5953 = fmul fast float %5952, %4340
  %5954 = fadd fast float %5946, %5692
  %5955 = fmul fast float %5954, %4340
  %5956 = fadd fast float %5948, %5693
  %5957 = fmul fast float %5956, %4340
  %5958 = fadd fast float %5949, %5734
  %5959 = fmul fast float %5958, %4340
  %5960 = fadd fast float %5950, %5737
  %5961 = fmul fast float %5960, %4340
  %5962 = fadd fast float %5951, %5740
  %5963 = fmul fast float %5962, %4340
  br label %5964

; <label>:5964                                    ; preds = %5918, %5786, %5687
  %5965 = phi float [ %5735, %5687 ], [ %5735, %5786 ], [ %5959, %5918 ]
  %5966 = phi float [ %5738, %5687 ], [ %5738, %5786 ], [ %5961, %5918 ]
  %5967 = phi float [ %5741, %5687 ], [ %5741, %5786 ], [ %5963, %5918 ]
  %5968 = phi float [ %5730, %5687 ], [ %5730, %5786 ], [ %5953, %5918 ]
  %5969 = phi float [ %5731, %5687 ], [ %5731, %5786 ], [ %5955, %5918 ]
  %5970 = phi float [ %5732, %5687 ], [ %5732, %5786 ], [ %5957, %5918 ]
  %5971 = call float @dx.op.unary.f32(i32 24, float %4660)  ; Sqrt(value)
  %5972 = call float @dx.op.unary.f32(i32 24, float %4661)  ; Sqrt(value)
  %5973 = call float @dx.op.unary.f32(i32 24, float %4662)  ; Sqrt(value)
  %5974 = fmul fast float %5971, %5968
  %5975 = fmul fast float %5972, %5969
  %5976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5977 = extractvalue %dx.types.CBufRet.f32 %5976, 0
  br i1 %171, label %5978, label %6001

; <label>:5978                                    ; preds = %5964
  %5979 = fadd fast float %5970, %4346
  %5980 = fmul fast float %5979, %4347
  %5981 = fsub fast float 1.000000e+00, %4347
  %5982 = call float @dx.op.unary.f32(i32 7, float %5981)  ; Saturate(value)
  %5983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5984 = extractvalue %dx.types.CBufRet.f32 %5983, 3
  %5985 = fmul fast float %5984, %5982
  %5986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5987 = extractvalue %dx.types.CBufRet.f32 %5986, 0
  %5988 = fmul fast float %5987, %5713
  %5989 = extractvalue %dx.types.CBufRet.f32 %5986, 2
  %5990 = fmul fast float %5989, %4678
  %5991 = fadd fast float %5975, %5974
  %5992 = fmul fast float %5977, %5991
  %5993 = extractvalue %dx.types.CBufRet.f32 %5983, 1
  %5994 = fadd fast float %5985, %5980
  %5995 = fsub fast float %5994, %5988
  %5996 = fadd fast float %5995, %5990
  %5997 = fsub fast float %5996, %5993
  %5998 = extractvalue %dx.types.CBufRet.f32 %5983, 2
  %5999 = fmul fast float %5997, %5998
  %6000 = call float @dx.op.unary.f32(i32 7, float %5999)  ; Saturate(value)
  br label %6017

; <label>:6001                                    ; preds = %5964
  %6002 = fmul fast float %5973, %5970
  %6003 = fmul fast float %5977, %5974
  %6004 = fmul fast float %5977, %5975
  %6005 = fmul fast float %6002, %5977
  %6006 = add i32 %32, 356
  %6007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %6006, i32 undef)  ; BufferLoad(srv,index,wot)
  %6008 = extractvalue %dx.types.ResRet.i32 %6007, 0
  %6009 = and i32 %6008, 32
  %6010 = icmp eq i32 %6009, 0
  br i1 %6010, label %6017, label %6011

; <label>:6011                                    ; preds = %6001
  %6012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6013 = extractvalue %dx.types.CBufRet.f32 %6012, 0
  %6014 = fmul fast float %6013, 0x3FE99999A0000000
  %6015 = fadd fast float %6013, %6003
  %6016 = fadd fast float %6014, %6005
  br label %6017

; <label>:6017                                    ; preds = %6011, %6001, %5978
  %6018 = phi float [ %5992, %5978 ], [ %6015, %6011 ], [ %6003, %6001 ]
  %6019 = phi float [ %6000, %5978 ], [ %6004, %6011 ], [ %6004, %6001 ]
  %6020 = phi float [ 1.000000e+00, %5978 ], [ %6016, %6011 ], [ %6005, %6001 ]
  %6021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6022 = extractvalue %dx.types.CBufRet.f32 %6021, 0
  %6023 = fmul fast float %6022, %5966
  %6024 = fmul fast float %6022, %5967
  %6025 = fadd fast float %5966, %5965
  %6026 = select i1 %171, float %6025, float %5965
  %6027 = fmul float %6026, %6022
  %6028 = select i1 %171, float 0.000000e+00, float %6023
  %6029 = select i1 %171, float 0.000000e+00, float %6024
  %6030 = fmul fast float %6018, %5971
  %6031 = fmul fast float %6019, %5972
  %6032 = fmul fast float %6020, %5973
  %6033 = fadd fast float %6027, %6030
  %6034 = fadd fast float %6028, %6031
  %6035 = fadd fast float %6029, %6032
  %6036 = select i1 %171, float %6019, float %6034
  %6037 = select i1 %171, float %6020, float %6035
  %6038 = call float @dx.op.binary.f32(i32 36, float %6033, float 3.225500e+04)  ; FMin(a,b)
  %6039 = call float @dx.op.binary.f32(i32 36, float %6036, float 3.225500e+04)  ; FMin(a,b)
  %6040 = call float @dx.op.binary.f32(i32 36, float %6037, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6038)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6039)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6040)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

