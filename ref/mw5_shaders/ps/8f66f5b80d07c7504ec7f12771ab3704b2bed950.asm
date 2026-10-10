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
; shader hash: 0705f165134bc6ea60b25ebd7d32ed7c
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
; Number of inputs: 40, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38 }
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
  %30 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = fmul fast float %63, %57
  %65 = fmul fast float %63, %58
  %66 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %67 = bitcast float %66 to i32
  %68 = ashr i32 %67, 1
  %69 = sub nsw i32 1597250115, %68
  %70 = bitcast i32 %69 to float
  %71 = fmul fast float %70, %49
  %72 = fmul fast float %70, %50
  %73 = fmul fast float %70, %51
  %74 = fmul fast float %50, %47
  %75 = fmul fast float %51, %46
  %76 = fsub fast float %74, %75
  %77 = fmul fast float %51, %45
  %78 = fmul fast float %49, %47
  %79 = fsub fast float %77, %78
  %80 = fmul fast float %49, %46
  %81 = fmul fast float %50, %45
  %82 = fsub fast float %80, %81
  %83 = fmul fast float %76, %48
  %84 = fmul fast float %79, %48
  %85 = fmul fast float %82, %48
  %86 = call float @dx.op.dot3.f32(i32 55, float %38, float %39, float %40, float %38, float %39, float %40)  ; Dot3(ax,ay,az,bx,by,bz)
  %87 = bitcast float %86 to i32
  %88 = ashr i32 %87, 1
  %89 = sub nsw i32 1597250115, %88
  %90 = bitcast i32 %89 to float
  %91 = fmul fast float %90, %38
  %92 = fmul fast float %90, %39
  %93 = fmul fast float %90, %40
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 3
  %97 = fmul fast float %64, 2.000000e+00
  %98 = fmul fast float %97, %95
  %99 = fmul fast float %65, 2.000000e+00
  %100 = fmul fast float %99, %96
  %101 = fsub fast float 1.000000e+00, %98
  %102 = fsub fast float 1.000000e+00, %100
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %106 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %107 = fmul fast float %101, %104
  %108 = fmul fast float %101, %105
  %109 = fmul fast float %101, %106
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %113 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %114 = fmul fast float %102, %111
  %115 = fmul fast float %102, %112
  %116 = fmul fast float %102, %113
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = fadd fast float %114, %118
  %122 = fadd fast float %121, %107
  %123 = fadd fast float %115, %119
  %124 = fadd fast float %123, %108
  %125 = fadd fast float %116, %120
  %126 = fadd fast float %125, %109
  %127 = fmul fast float %122, %59
  %128 = fmul fast float %124, %59
  %129 = fmul fast float %126, %59
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 3
  %133 = fmul fast float %131, %64
  %134 = fmul fast float %132, %65
  %135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %136 = extractvalue %dx.types.ResRet.i32 %135, 0
  %137 = and i32 %136, 114688
  %138 = icmp ne i32 %137, 0
  %139 = select i1 %138, float %133, float 0.000000e+00
  %140 = select i1 %138, float %134, float 0.000000e+00
  %141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %27, float %139, float %140, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %142 = extractvalue %dx.types.ResRet.f32 %141, 0
  %143 = fmul fast float %142, 2.550000e+02
  %144 = fptoui float %143 to i32
  %145 = select i1 %138, i32 %144, i32 0
  %146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.i32 %146, 3
  %148 = and i32 %147, 3
  %149 = icmp ne i32 %148, 0
  %150 = and i32 %147, 4
  %151 = icmp ne i32 %150, 0
  %152 = and i1 %149, %151
  br i1 %152, label %153, label %162

; <label>:153                                     ; preds = %0
  %154 = fmul fast float %96, %65
  %155 = fmul fast float %95, %64
  %156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %155, float %154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %157 = extractvalue %dx.types.ResRet.f32 %156, 0
  %158 = fsub fast float 1.000000e+00, %157
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = fcmp fast olt float %158, %160
  br label %170

; <label>:162                                     ; preds = %0
  %163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.i32 %163, 3
  %165 = and i32 %164, 3
  %166 = icmp ne i32 %165, 0
  %167 = and i32 %164, 4
  %168 = icmp eq i32 %167, 0
  %169 = and i1 %166, %168
  br label %170

; <label>:170                                     ; preds = %162, %153
  %171 = phi i1 [ %161, %153 ], [ %169, %162 ]
  %172 = add i32 %30, 156
  %173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %172, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = shl i32 %174, 4
  %176 = and i32 %175, 32752
  %177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %176)  ; LegacyF16ToF32(value)
  %178 = lshr i32 %174, 7
  %179 = and i32 %178, 32752
  %180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %179)  ; LegacyF16ToF32(value)
  %181 = lshr i32 %174, 22
  %182 = shl nuw nsw i32 %181, 5
  %183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %182)  ; LegacyF16ToF32(value)
  %184 = add i32 %30, 216
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = and i32 %186, 255
  %188 = uitofp i32 %187 to float
  %189 = fmul fast float %188, 0x3F70101020000000
  %190 = lshr i32 %186, 8
  %191 = and i32 %190, 255
  %192 = uitofp i32 %191 to float
  %193 = fmul fast float %192, 0x3F70101020000000
  %194 = lshr i32 %186, 16
  %195 = and i32 %194, 255
  %196 = uitofp i32 %195 to float
  %197 = fmul fast float %196, 0x3F70101020000000
  %198 = add i32 %30, 36
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = and i32 %200, 65535
  %202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %201)  ; LegacyF16ToF32(value)
  %203 = lshr i32 %200, 16
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = add i32 %30, 288
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = and i32 %207, 65535
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = lshr i32 %207, 16
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = fmul fast float %209, 0x3F50624DE0000000
  %213 = fmul fast float %211, 0x3F50624DE0000000
  %214 = add i32 %30, 172
  %215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %214, i32 undef)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = shl i32 %216, 4
  %218 = and i32 %217, 32752
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218)  ; LegacyF16ToF32(value)
  %220 = lshr i32 %216, 7
  %221 = and i32 %220, 32752
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = lshr i32 %216, 22
  %224 = shl nuw nsw i32 %223, 5
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = add i32 %30, 232
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 255
  %230 = uitofp i32 %229 to float
  %231 = fmul fast float %230, 0x3F70101020000000
  %232 = lshr i32 %228, 8
  %233 = and i32 %232, 255
  %234 = uitofp i32 %233 to float
  %235 = fmul fast float %234, 0x3F70101020000000
  %236 = lshr i32 %228, 16
  %237 = and i32 %236, 255
  %238 = uitofp i32 %237 to float
  %239 = fmul fast float %238, 0x3F70101020000000
  %240 = add i32 %30, 52
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = and i32 %242, 65535
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %242, 16
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = add i32 %30, 304
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = and i32 %249, 65535
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %249, 16
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = fmul fast float %251, 0x3F50624DE0000000
  %255 = fmul fast float %253, 0x3F50624DE0000000
  %256 = add i32 %30, 188
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = shl i32 %258, 4
  %260 = and i32 %259, 32752
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = lshr i32 %258, 7
  %263 = and i32 %262, 32752
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = lshr i32 %258, 22
  %266 = shl nuw nsw i32 %265, 5
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = add i32 %30, 248
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 255
  %272 = uitofp i32 %271 to float
  %273 = fmul fast float %272, 0x3F70101020000000
  %274 = lshr i32 %270, 8
  %275 = and i32 %274, 255
  %276 = uitofp i32 %275 to float
  %277 = fmul fast float %276, 0x3F70101020000000
  %278 = lshr i32 %270, 16
  %279 = and i32 %278, 255
  %280 = uitofp i32 %279 to float
  %281 = fmul fast float %280, 0x3F70101020000000
  %282 = add i32 %30, 68
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 65535
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %284, 16
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = add i32 %30, 320
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = and i32 %291, 65535
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = lshr i32 %291, 16
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = fmul fast float %293, 0x3F50624DE0000000
  %297 = fmul fast float %295, 0x3F50624DE0000000
  %298 = add i32 %30, 204
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %310 = add i32 %30, 264
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 255
  %314 = uitofp i32 %313 to float
  %315 = fmul fast float %314, 0x3F70101020000000
  %316 = lshr i32 %312, 8
  %317 = and i32 %316, 255
  %318 = uitofp i32 %317 to float
  %319 = fmul fast float %318, 0x3F70101020000000
  %320 = lshr i32 %312, 16
  %321 = and i32 %320, 255
  %322 = uitofp i32 %321 to float
  %323 = fmul fast float %322, 0x3F70101020000000
  %324 = add i32 %30, 84
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %326, 65535
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %326, 16
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = add i32 %30, 336
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = and i32 %333, 65535
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %333, 16
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = fmul fast float %335, 0x3F50624DE0000000
  %339 = fmul fast float %337, 0x3F50624DE0000000
  %340 = add i32 %30, 348
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 32
  %344 = icmp eq i32 %343, 0
  %345 = and i32 %342, 64
  %346 = icmp eq i32 %345, 0
  %347 = and i32 %342, 128
  %348 = icmp eq i32 %347, 0
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 2
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %366, label %353

; <label>:353                                     ; preds = %170
  %354 = add i32 %30, 472
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = add i32 %356, 0
  %358 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %357, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %359 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %358, %dx.types.Handle %61, float %52, float %53, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  %361 = extractvalue %dx.types.ResRet.f32 %359, 1
  %362 = extractvalue %dx.types.ResRet.f32 %359, 2
  %363 = fmul fast float %360, %54
  %364 = fmul fast float %361, %55
  %365 = fmul fast float %362, %56
  br label %366

; <label>:366                                     ; preds = %353, %170
  %367 = phi float [ %56, %170 ], [ %365, %353 ]
  %368 = phi float [ %55, %170 ], [ %364, %353 ]
  %369 = phi float [ %54, %170 ], [ %363, %353 ]
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 2
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %393, label %374

; <label>:374                                     ; preds = %366
  %375 = add i32 %30, 44
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = and i32 %377, 1
  %379 = icmp ne i32 %378, 0
  %380 = select i1 %379, float %369, float 1.000000e+00
  %381 = add i32 %30, 60
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 1
  %385 = icmp ne i32 %384, 0
  %386 = select i1 %385, float %368, float 1.000000e+00
  %387 = add i32 %30, 76
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = and i32 %389, 1
  %391 = icmp ne i32 %390, 0
  %392 = select i1 %391, float %367, float 1.000000e+00
  br label %393

; <label>:393                                     ; preds = %374, %366
  %394 = phi float [ %367, %366 ], [ %392, %374 ]
  %395 = phi float [ %368, %366 ], [ %386, %374 ]
  %396 = phi float [ %369, %366 ], [ %380, %374 ]
  %397 = lshr i32 %371, 20
  %398 = and i32 %397, 3
  %399 = add nuw nsw i32 %398, 1
  %400 = add i32 %30, 24
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = add i32 %30, 28
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = or i32 %405, %402
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %866, label %408

; <label>:408                                     ; preds = %393
  %409 = and i32 %402, 262144
  %410 = icmp ne i32 %409, 0
  %411 = select i1 %410, float %32, float 1.000000e+00
  %412 = select i1 %410, float %33, float 0.000000e+00
  %413 = select i1 %410, float %34, float 0.000000e+00
  %414 = select i1 %410, float %35, float 1.000000e+00
  %415 = select i1 %410, float %36, float %52
  %416 = select i1 %410, float %37, float %53
  %417 = add i32 %30, 284
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = lshr i32 %419, 16
  %421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %420)  ; LegacyF16ToF32(value)
  %422 = fmul fast float %421, 0x3F50624DE0000000
  %423 = add i32 %30, 88
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = lshr i32 %425, 16
  %427 = and i32 %426, 255
  %428 = lshr i32 %425, 24
  %429 = add i32 %30, 292
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 65535
  %433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %432)  ; LegacyF16ToF32(value)
  %434 = lshr i32 %431, 16
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = add i32 %30, 32
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = lshr i32 %438, 22
  %440 = shl nuw nsw i32 %439, 5
  %441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %440)  ; LegacyF16ToF32(value)
  %442 = shl i32 %438, 4
  %443 = and i32 %442, 32752
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = lshr i32 %438, 7
  %446 = and i32 %445, 32752
  %447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %446)  ; LegacyF16ToF32(value)
  %448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %449 = extractvalue %dx.types.CBufRet.f32 %448, 3
  %450 = fmul fast float %449, 1.000000e+03
  %451 = fmul fast float %212, %450
  %452 = call float @dx.op.unary.f32(i32 22, float %451)  ; Frc(value)
  %453 = fadd fast float %452, %202
  %454 = fmul fast float %213, %450
  %455 = call float @dx.op.unary.f32(i32 22, float %454)  ; Frc(value)
  %456 = fadd fast float %455, %204
  %457 = fmul fast float %422, %450
  %458 = call float @dx.op.unary.f32(i32 22, float %457)  ; Frc(value)
  %459 = fmul fast float %458, 0x401921FB60000000
  %460 = fadd fast float %459, %441
  %461 = call float @dx.op.unary.f32(i32 13, float %460)  ; Sin(value)
  %462 = call float @dx.op.unary.f32(i32 12, float %460)  ; Cos(value)
  %463 = fsub fast float -0.000000e+00, %461
  %464 = fadd fast float %415, -5.000000e-01
  %465 = fadd fast float %416, -5.000000e-01
  %466 = fmul fast float %433, %464
  %467 = fmul fast float %435, %465
  %468 = fadd fast float %466, 5.000000e-01
  %469 = fadd fast float %467, 5.000000e-01
  %470 = fmul fast float %444, %468
  %471 = fmul fast float %447, %469
  %472 = fmul fast float %462, %470
  %473 = call float @dx.op.tertiary.f32(i32 46, float %463, float %471, float %472)  ; FMad(a,b,c)
  %474 = fmul fast float %461, %470
  %475 = call float @dx.op.tertiary.f32(i32 46, float %462, float %471, float %474)  ; FMad(a,b,c)
  %476 = fadd fast float %453, %473
  %477 = fadd fast float %456, %475
  %478 = icmp ugt i32 %427, 1
  %479 = icmp ugt i32 %425, 33554431
  %480 = or i1 %479, %478
  br i1 %480, label %481, label %506

; <label>:481                                     ; preds = %408
  %482 = add i32 %30, 228
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = lshr i32 %484, 16
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = fmul fast float %449, %486
  %488 = call float @dx.op.unary.f32(i32 22, float %487)  ; Frc(value)
  %489 = mul nuw nsw i32 %427, %428
  %490 = uitofp i32 %489 to float
  %491 = fmul fast float %488, %490
  %492 = call float @dx.op.unary.f32(i32 27, float %491)  ; Round_ni(value)
  %493 = fptoui float %492 to i32
  %494 = urem i32 %493, %427
  %495 = udiv i32 %493, %428
  %496 = call float @dx.op.unary.f32(i32 22, float %476)  ; Frc(value)
  %497 = call float @dx.op.unary.f32(i32 22, float %477)  ; Frc(value)
  %498 = uitofp i32 %494 to float
  %499 = uitofp i32 %495 to float
  %500 = fadd fast float %496, %498
  %501 = fadd fast float %497, %499
  %502 = uitofp i32 %427 to float
  %503 = uitofp i32 %428 to float
  %504 = fdiv fast float %500, %502
  %505 = fdiv fast float %501, %503
  br label %506

; <label>:506                                     ; preds = %481, %408
  %507 = phi float [ %504, %481 ], [ %476, %408 ]
  %508 = phi float [ %505, %481 ], [ %477, %408 ]
  %509 = and i32 %402, 16
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %707, label %511

; <label>:511                                     ; preds = %506
  %512 = add i32 %30, 360
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = add i32 %514, 0
  %516 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %515, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %517 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %516, %dx.types.Handle %60, float %507, float %508, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %518 = extractvalue %dx.types.ResRet.f32 %517, 0
  %519 = extractvalue %dx.types.ResRet.f32 %517, 1
  %520 = extractvalue %dx.types.ResRet.f32 %517, 2
  %521 = extractvalue %dx.types.ResRet.f32 %517, 3
  %522 = and i32 %425, 255
  %523 = uitofp i32 %522 to float
  %524 = lshr i32 %425, 8
  %525 = and i32 %524, 255
  %526 = uitofp i32 %525 to float
  %527 = fmul fast float %521, %523
  %528 = fadd fast float %527, %526
  %529 = fmul fast float %528, 0x3F70101000000000
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = and i32 %531, 512
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %542, label %534

; <label>:534                                     ; preds = %511
  %535 = add i32 %30, 440
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = add i32 %537, 0
  %539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %538, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %540 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %539, %dx.types.Handle %61, float %507, float %508, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  br label %542

; <label>:542                                     ; preds = %534, %511
  %543 = phi float [ %541, %534 ], [ 1.000000e+00, %511 ]
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = and i32 %545, 33554432
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %654, label %548

; <label>:548                                     ; preds = %542
  %549 = add i32 %30, 224
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = and i32 %551, 65535
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = lshr i32 %551, 16
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = add i32 %30, 228
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = and i32 %558, 65535
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = lshr i32 %562, 24
  %564 = uitofp i32 %563 to float
  %565 = fmul fast float %564, 0x3F70101020000000
  %566 = and i32 %562, 255
  %567 = uitofp i32 %566 to float
  %568 = fmul fast float %567, 0x3F70101020000000
  %569 = lshr i32 %562, 8
  %570 = and i32 %569, 255
  %571 = uitofp i32 %570 to float
  %572 = fmul fast float %571, 0x3F70101020000000
  %573 = lshr i32 %562, 16
  %574 = and i32 %573, 255
  %575 = uitofp i32 %574 to float
  %576 = fmul fast float %575, 0x3F70101020000000
  %577 = add i32 %30, 220
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = lshr i32 %579, 24
  %581 = uitofp i32 %580 to float
  %582 = fmul fast float %581, 0x3F70101020000000
  %583 = and i32 %579, 255
  %584 = uitofp i32 %583 to float
  %585 = fmul fast float %584, 0x3F70101020000000
  %586 = lshr i32 %579, 8
  %587 = and i32 %586, 255
  %588 = uitofp i32 %587 to float
  %589 = fmul fast float %588, 0x3F70101020000000
  %590 = lshr i32 %579, 16
  %591 = and i32 %590, 255
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %592, 0x3F70101020000000
  %594 = bitcast float %518 to i32
  %595 = ashr i32 %594, 1
  %596 = sub nsw i32 1597463174, %595
  %597 = bitcast i32 %596 to float
  %598 = fmul fast float %518, 5.000000e-01
  %599 = fmul fast float %597, %597
  %600 = fmul fast float %599, %598
  %601 = fsub fast float 1.500000e+00, %600
  %602 = fmul fast float %597, %518
  %603 = fmul fast float %602, %601
  %604 = bitcast float %519 to i32
  %605 = ashr i32 %604, 1
  %606 = sub nsw i32 1597463174, %605
  %607 = bitcast i32 %606 to float
  %608 = fmul fast float %519, 5.000000e-01
  %609 = fmul fast float %607, %607
  %610 = fmul fast float %609, %608
  %611 = fsub fast float 1.500000e+00, %610
  %612 = fmul fast float %607, %519
  %613 = fmul fast float %612, %611
  %614 = bitcast float %520 to i32
  %615 = ashr i32 %614, 1
  %616 = sub nsw i32 1597463174, %615
  %617 = bitcast i32 %616 to float
  %618 = fmul fast float %520, 5.000000e-01
  %619 = fmul fast float %617, %617
  %620 = fmul fast float %619, %618
  %621 = fsub fast float 1.500000e+00, %620
  %622 = fmul fast float %617, %520
  %623 = fmul fast float %622, %621
  %624 = fsub fast float %603, %585
  %625 = fsub fast float %613, %589
  %626 = fsub fast float %623, %593
  %627 = fmul fast float %624, %553
  %628 = fmul fast float %625, %555
  %629 = fmul fast float %626, %560
  %630 = fadd fast float %627, %568
  %631 = fadd fast float %628, %572
  %632 = fadd fast float %629, %576
  %633 = call float @dx.op.unary.f32(i32 7, float %630)  ; Saturate(value)
  %634 = call float @dx.op.unary.f32(i32 7, float %631)  ; Saturate(value)
  %635 = call float @dx.op.unary.f32(i32 7, float %632)  ; Saturate(value)
  %636 = fmul fast float %633, %633
  %637 = fmul fast float %634, %634
  %638 = fmul fast float %635, %635
  %639 = fsub fast float %636, %518
  %640 = fsub fast float %637, %519
  %641 = fsub fast float %638, %520
  %642 = fmul fast float %639, %543
  %643 = fmul fast float %640, %543
  %644 = fmul fast float %641, %543
  %645 = fadd fast float %642, %518
  %646 = fadd fast float %643, %519
  %647 = fadd fast float %644, %520
  %648 = fadd fast float %565, %529
  %649 = fsub fast float %648, %582
  %650 = call float @dx.op.unary.f32(i32 7, float %649)  ; Saturate(value)
  %651 = fsub fast float %650, %529
  %652 = fmul fast float %651, %543
  %653 = fadd fast float %652, %529
  br label %707

; <label>:654                                     ; preds = %542
  %655 = and i32 %545, 134217728
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %691, label %657

; <label>:657                                     ; preds = %654
  %658 = call float @dx.op.unary.f32(i32 24, float %189)  ; Sqrt(value)
  %659 = call float @dx.op.unary.f32(i32 24, float %193)  ; Sqrt(value)
  %660 = call float @dx.op.unary.f32(i32 24, float %197)  ; Sqrt(value)
  %661 = fadd fast float %658, -5.000000e-01
  %662 = fadd fast float %659, -5.000000e-01
  %663 = fadd fast float %660, -5.000000e-01
  %664 = fmul fast float %661, %543
  %665 = fmul fast float %662, %543
  %666 = fmul fast float %663, %543
  %667 = fadd fast float %664, 5.000000e-01
  %668 = fadd fast float %665, 5.000000e-01
  %669 = fadd fast float %666, 5.000000e-01
  %670 = call float @dx.op.unary.f32(i32 24, float %518)  ; Sqrt(value)
  %671 = call float @dx.op.unary.f32(i32 24, float %519)  ; Sqrt(value)
  %672 = call float @dx.op.unary.f32(i32 24, float %520)  ; Sqrt(value)
  %673 = fmul fast float %667, 2.000000e+00
  %674 = fsub fast float 1.000000e+00, %673
  %675 = fmul fast float %674, %670
  %676 = fadd fast float %675, %673
  %677 = fmul fast float %676, %670
  %678 = fmul fast float %668, 2.000000e+00
  %679 = fsub fast float 1.000000e+00, %678
  %680 = fmul fast float %679, %671
  %681 = fadd fast float %680, %678
  %682 = fmul fast float %681, %671
  %683 = fmul fast float %669, 2.000000e+00
  %684 = fsub fast float 1.000000e+00, %683
  %685 = fmul fast float %684, %672
  %686 = fadd fast float %685, %683
  %687 = fmul fast float %686, %672
  %688 = fmul fast float %677, %677
  %689 = fmul fast float %682, %682
  %690 = fmul fast float %687, %687
  br label %707

; <label>:691                                     ; preds = %654
  %692 = fmul fast float %189, %189
  %693 = fmul fast float %193, %193
  %694 = fmul fast float %197, %197
  %695 = fadd fast float %692, -1.000000e+00
  %696 = fadd fast float %693, -1.000000e+00
  %697 = fadd fast float %694, -1.000000e+00
  %698 = fmul fast float %543, %695
  %699 = fmul fast float %543, %696
  %700 = fmul fast float %543, %697
  %701 = fadd fast float %698, 1.000000e+00
  %702 = fadd fast float %699, 1.000000e+00
  %703 = fadd fast float %700, 1.000000e+00
  %704 = fmul fast float %701, %518
  %705 = fmul fast float %702, %519
  %706 = fmul fast float %703, %520
  br label %707

; <label>:707                                     ; preds = %691, %657, %548, %506
  %708 = phi float [ %653, %548 ], [ %529, %657 ], [ %529, %691 ], [ 0x3FA23C0BE0000000, %506 ]
  %709 = phi float [ %645, %548 ], [ %688, %657 ], [ %704, %691 ], [ 1.000000e+00, %506 ]
  %710 = phi float [ %646, %548 ], [ %689, %657 ], [ %705, %691 ], [ 1.000000e+00, %506 ]
  %711 = phi float [ %647, %548 ], [ %690, %657 ], [ %706, %691 ], [ 1.000000e+00, %506 ]
  %712 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %713 = extractvalue %dx.types.CBufRet.i32 %712, 1
  %714 = and i32 %713, 1
  %715 = icmp ne i32 %714, 0
  %716 = add i32 %30, 356
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = and i32 %718, 32
  %720 = icmp ne i32 %719, 0
  %721 = and i1 %715, %720
  %722 = select i1 %721, float 1.000000e+00, float %709
  %723 = select i1 %721, float 0x3FD3333340000000, float %710
  %724 = select i1 %721, float 0x3FD3333340000000, float %711
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = and i32 %726, 32
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %801, label %729

; <label>:729                                     ; preds = %707
  %730 = add i32 %30, 92
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %730, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = add i32 %30, 376
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = add i32 %735, 0
  %737 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %736, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %738 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %737, %dx.types.Handle %60, float %507, float %508, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  %740 = extractvalue %dx.types.ResRet.f32 %738, 1
  %741 = extractvalue %dx.types.ResRet.f32 %738, 2
  %742 = extractvalue %dx.types.ResRet.f32 %738, 3
  %743 = and i32 %732, 255
  %744 = uitofp i32 %743 to float
  %745 = lshr i32 %732, 8
  %746 = and i32 %745, 255
  %747 = uitofp i32 %746 to float
  %748 = lshr i32 %732, 16
  %749 = and i32 %748, 255
  %750 = uitofp i32 %749 to float
  %751 = fmul fast float %750, 0x3F70101000000000
  %752 = fmul fast float %739, %744
  %753 = fadd fast float %752, %747
  %754 = fmul fast float %753, 0x3F70101000000000
  %755 = fadd fast float %740, -5.000000e-01
  %756 = fadd fast float %742, -5.000000e-01
  %757 = fmul fast float %755, %751
  %758 = fmul fast float %756, %751
  %759 = fadd fast float %757, 5.000000e-01
  %760 = fadd fast float %758, 5.000000e-01
  %761 = fmul fast float %759, 2.000000e+00
  %762 = fadd fast float %761, -1.000000e+00
  %763 = fmul fast float %760, 2.000000e+00
  %764 = fadd fast float %763, -1.000000e+00
  %765 = fadd fast float %762, %764
  %766 = fmul fast float %765, 5.000000e-01
  %767 = fsub fast float %762, %764
  %768 = fmul fast float %767, 5.000000e-01
  %769 = call float @dx.op.unary.f32(i32 6, float %766)  ; FAbs(value)
  %770 = fsub fast float 1.000000e+00, %769
  %771 = call float @dx.op.unary.f32(i32 6, float %768)  ; FAbs(value)
  %772 = fsub fast float %770, %771
  %773 = call float @dx.op.dot3.f32(i32 55, float %766, float %768, float %772, float %766, float %768, float %772)  ; Dot3(ax,ay,az,bx,by,bz)
  %774 = call float @dx.op.unary.f32(i32 25, float %773)  ; Rsqrt(value)
  %775 = fmul fast float %766, %774
  %776 = fmul fast float %768, %774
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = and i32 %778, 67108864
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %797, label %781

; <label>:781                                     ; preds = %729
  %782 = add i32 %30, 280
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = and i32 %784, 65535
  %786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %785)  ; LegacyF16ToF32(value)
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = and i32 %788, 65535
  %790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %789)  ; LegacyF16ToF32(value)
  %791 = lshr i32 %784, 16
  %792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %791)  ; LegacyF16ToF32(value)
  %793 = fsub fast float %754, %792
  %794 = fmul fast float %793, %786
  %795 = fadd fast float %794, %790
  %796 = call float @dx.op.unary.f32(i32 7, float %795)  ; Saturate(value)
  br label %797

; <label>:797                                     ; preds = %781, %729
  %798 = phi float [ %796, %781 ], [ %754, %729 ]
  %799 = call float @dx.op.dot2.f32(i32 54, float %775, float %776, float %411, float %412)  ; Dot2(ax,ay,bx,by)
  %800 = call float @dx.op.dot2.f32(i32 54, float %775, float %776, float %413, float %414)  ; Dot2(ax,ay,bx,by)
  br label %801

; <label>:801                                     ; preds = %797, %707
  %802 = phi float [ %798, %797 ], [ 0x3FD6666660000000, %707 ]
  %803 = phi float [ %799, %797 ], [ 0.000000e+00, %707 ]
  %804 = phi float [ %800, %797 ], [ 0.000000e+00, %707 ]
  %805 = phi float [ %741, %797 ], [ 1.000000e+00, %707 ]
  %806 = add i32 %30, 160
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = lshr i32 %808, 22
  %810 = shl nuw nsw i32 %809, 5
  %811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %810)  ; LegacyF16ToF32(value)
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = and i32 %813, 64
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %849, label %816

; <label>:816                                     ; preds = %801
  %817 = add i32 %30, 392
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = add i32 %819, 0
  %821 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %820, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = and i32 %823, 131072
  %825 = icmp eq i32 %824, 0
  %826 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %821, %dx.types.Handle %60, float %507, float %508, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %827 = extractvalue %dx.types.ResRet.f32 %826, 0
  %828 = extractvalue %dx.types.ResRet.f32 %826, 1
  %829 = extractvalue %dx.types.ResRet.f32 %826, 2
  %830 = fmul fast float %827, %177
  %831 = fmul fast float %828, %180
  %832 = fmul fast float %829, %183
  br i1 %825, label %839, label %833

; <label>:833                                     ; preds = %816
  %834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %835 = extractvalue %dx.types.CBufRet.f32 %834, 0
  %836 = fmul fast float %835, %830
  %837 = fmul fast float %835, %831
  %838 = fmul fast float %835, %832
  br label %839

; <label>:839                                     ; preds = %833, %816
  %840 = phi float [ %836, %833 ], [ %830, %816 ]
  %841 = phi float [ %837, %833 ], [ %831, %816 ]
  %842 = phi float [ %838, %833 ], [ %832, %816 ]
  %843 = fmul fast float %840, %811
  %844 = select i1 %171, float %843, float %840
  %845 = call float @dx.op.dot3.f32(i32 55, float %844, float %841, float %842, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %846 = select i1 %171, float 0.000000e+00, float %840
  %847 = select i1 %171, float %845, float %841
  %848 = select i1 %171, float 0.000000e+00, float %842
  br label %849

; <label>:849                                     ; preds = %839, %801
  %850 = phi float [ %846, %839 ], [ 0.000000e+00, %801 ]
  %851 = phi float [ %847, %839 ], [ 0.000000e+00, %801 ]
  %852 = phi float [ %848, %839 ], [ 0.000000e+00, %801 ]
  %853 = add i32 %30, 96
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = and i32 %855, 255
  %857 = uitofp i32 %856 to float
  %858 = lshr i32 %855, 8
  %859 = and i32 %858, 255
  %860 = uitofp i32 %859 to float
  %861 = call float @dx.op.dot3.f32(i32 55, float %722, float %723, float %724, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %862 = fmul fast float %860, %861
  %863 = fadd fast float %862, %857
  %864 = fmul fast float %863, 0x3F70101020000000
  %865 = call float @dx.op.unary.f32(i32 7, float %864)  ; Saturate(value)
  br label %866

; <label>:866                                     ; preds = %849, %393
  %867 = phi float [ 0.000000e+00, %393 ], [ %803, %849 ]
  %868 = phi float [ 0.000000e+00, %393 ], [ %804, %849 ]
  %869 = phi float [ 0.000000e+00, %393 ], [ %722, %849 ]
  %870 = phi float [ 0.000000e+00, %393 ], [ %723, %849 ]
  %871 = phi float [ 0.000000e+00, %393 ], [ %724, %849 ]
  %872 = phi float [ 0.000000e+00, %393 ], [ %850, %849 ]
  %873 = phi float [ 0.000000e+00, %393 ], [ %851, %849 ]
  %874 = phi float [ 0.000000e+00, %393 ], [ %852, %849 ]
  %875 = phi float [ 0.000000e+00, %393 ], [ %708, %849 ]
  %876 = phi float [ 0.000000e+00, %393 ], [ 1.000000e+00, %849 ]
  %877 = phi float [ 0.000000e+00, %393 ], [ %802, %849 ]
  %878 = phi float [ 0.000000e+00, %393 ], [ %805, %849 ]
  %879 = phi float [ 0.000000e+00, %393 ], [ %865, %849 ]
  br i1 %344, label %1721, label %880

; <label>:880                                     ; preds = %866
  %881 = icmp ult i32 %399, 2
  %882 = add i32 %30, 40
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = add i32 %30, 44
  %886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %885, i32 undef)  ; BufferLoad(srv,index,wot)
  %887 = extractvalue %dx.types.ResRet.i32 %886, 0
  %888 = or i32 %887, %884
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %1721, label %890

; <label>:890                                     ; preds = %880
  %891 = and i32 %884, 262144
  %892 = icmp ne i32 %891, 0
  %893 = select i1 %892, float %32, float 1.000000e+00
  %894 = select i1 %892, float %33, float 0.000000e+00
  %895 = select i1 %892, float %34, float 0.000000e+00
  %896 = select i1 %892, float %35, float 1.000000e+00
  %897 = select i1 %892, float %36, float %52
  %898 = select i1 %892, float %37, float %53
  %899 = add i32 %30, 300
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = lshr i32 %901, 16
  %903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %902)  ; LegacyF16ToF32(value)
  %904 = fmul fast float %903, 0x3F50624DE0000000
  %905 = add i32 %30, 104
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = lshr i32 %907, 16
  %909 = and i32 %908, 255
  %910 = lshr i32 %907, 24
  %911 = add i32 %30, 308
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = and i32 %913, 65535
  %915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %914)  ; LegacyF16ToF32(value)
  %916 = lshr i32 %913, 16
  %917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %916)  ; LegacyF16ToF32(value)
  %918 = add i32 %30, 48
  %919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %920 = extractvalue %dx.types.ResRet.i32 %919, 0
  %921 = lshr i32 %920, 22
  %922 = shl nuw nsw i32 %921, 5
  %923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %922)  ; LegacyF16ToF32(value)
  %924 = shl i32 %920, 4
  %925 = and i32 %924, 32752
  %926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %925)  ; LegacyF16ToF32(value)
  %927 = lshr i32 %920, 7
  %928 = and i32 %927, 32752
  %929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %928)  ; LegacyF16ToF32(value)
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 3
  %932 = fmul fast float %931, 1.000000e+03
  %933 = fmul fast float %254, %932
  %934 = call float @dx.op.unary.f32(i32 22, float %933)  ; Frc(value)
  %935 = fadd fast float %934, %244
  %936 = fmul fast float %255, %932
  %937 = call float @dx.op.unary.f32(i32 22, float %936)  ; Frc(value)
  %938 = fadd fast float %937, %246
  %939 = fmul fast float %904, %932
  %940 = call float @dx.op.unary.f32(i32 22, float %939)  ; Frc(value)
  %941 = fmul fast float %940, 0x401921FB60000000
  %942 = fadd fast float %941, %923
  %943 = call float @dx.op.unary.f32(i32 13, float %942)  ; Sin(value)
  %944 = call float @dx.op.unary.f32(i32 12, float %942)  ; Cos(value)
  %945 = fsub fast float -0.000000e+00, %943
  %946 = fadd fast float %897, -5.000000e-01
  %947 = fadd fast float %898, -5.000000e-01
  %948 = fmul fast float %915, %946
  %949 = fmul fast float %917, %947
  %950 = fadd fast float %948, 5.000000e-01
  %951 = fadd fast float %949, 5.000000e-01
  %952 = fmul fast float %926, %950
  %953 = fmul fast float %929, %951
  %954 = fmul fast float %944, %952
  %955 = call float @dx.op.tertiary.f32(i32 46, float %945, float %953, float %954)  ; FMad(a,b,c)
  %956 = fmul fast float %943, %952
  %957 = call float @dx.op.tertiary.f32(i32 46, float %944, float %953, float %956)  ; FMad(a,b,c)
  %958 = fadd fast float %935, %955
  %959 = fadd fast float %938, %957
  %960 = icmp ugt i32 %909, 1
  %961 = icmp ugt i32 %907, 33554431
  %962 = or i1 %961, %960
  br i1 %962, label %963, label %988

; <label>:963                                     ; preds = %890
  %964 = add i32 %30, 244
  %965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %964, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.i32 %965, 0
  %967 = lshr i32 %966, 16
  %968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %967)  ; LegacyF16ToF32(value)
  %969 = fmul fast float %931, %968
  %970 = call float @dx.op.unary.f32(i32 22, float %969)  ; Frc(value)
  %971 = mul nuw nsw i32 %909, %910
  %972 = uitofp i32 %971 to float
  %973 = fmul fast float %970, %972
  %974 = call float @dx.op.unary.f32(i32 27, float %973)  ; Round_ni(value)
  %975 = fptoui float %974 to i32
  %976 = urem i32 %975, %909
  %977 = udiv i32 %975, %910
  %978 = call float @dx.op.unary.f32(i32 22, float %958)  ; Frc(value)
  %979 = call float @dx.op.unary.f32(i32 22, float %959)  ; Frc(value)
  %980 = uitofp i32 %976 to float
  %981 = uitofp i32 %977 to float
  %982 = fadd fast float %978, %980
  %983 = fadd fast float %979, %981
  %984 = uitofp i32 %909 to float
  %985 = uitofp i32 %910 to float
  %986 = fdiv fast float %982, %984
  %987 = fdiv fast float %983, %985
  br label %988

; <label>:988                                     ; preds = %963, %890
  %989 = phi float [ %986, %963 ], [ %958, %890 ]
  %990 = phi float [ %987, %963 ], [ %959, %890 ]
  %991 = and i32 %884, 16777216
  %992 = icmp eq i32 %991, 0
  br i1 %992, label %1102, label %993

; <label>:993                                     ; preds = %988
  %994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.f32 %994, 0
  %996 = extractvalue %dx.types.CBufRet.f32 %994, 1
  %997 = extractvalue %dx.types.CBufRet.f32 %994, 2
  %998 = fadd fast float %995, %127
  %999 = fadd fast float %996, %128
  %1000 = fadd fast float %997, %129
  %1001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1002 = extractvalue %dx.types.CBufRet.f32 %1001, 0
  %1003 = call float @dx.op.unary.f32(i32 7, float %1002)  ; Saturate(value)
  %1004 = icmp eq i32 %31, 65535
  br i1 %1004, label %1099, label %1005

; <label>:1005                                    ; preds = %993
  %1006 = lshr i32 %31, 1
  %1007 = shl i32 %1006, 2
  %1008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1007, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.i32 %1008, 0
  %1010 = and i32 %31, 1
  %1011 = icmp ne i32 %1010, 0
  %1012 = lshr i32 %1009, 16
  %1013 = and i32 %1009, 65535
  %1014 = select i1 %1011, i32 %1012, i32 %1013
  %1015 = icmp eq i32 %1014, 65535
  br i1 %1015, label %1095, label %1016

; <label>:1016                                    ; preds = %1005
  %1017 = mul nuw nsw i32 %1014, 40
  %1018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.ResRet.f32 %1018, 1
  %1021 = extractvalue %dx.types.ResRet.f32 %1018, 2
  %1022 = add nuw nsw i32 %1017, 12
  %1023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.f32 %1023, 0
  %1025 = extractvalue %dx.types.ResRet.f32 %1023, 1
  %1026 = extractvalue %dx.types.ResRet.f32 %1023, 2
  %1027 = add nuw nsw i32 %1017, 24
  %1028 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.f32 %1028, 0
  %1030 = extractvalue %dx.types.ResRet.f32 %1028, 1
  %1031 = extractvalue %dx.types.ResRet.f32 %1028, 2
  %1032 = add nuw nsw i32 %1017, 36
  %1033 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 0
  %1035 = fsub fast float %998, %1019
  %1036 = fsub fast float %999, %1020
  %1037 = fsub fast float %1000, %1021
  %1038 = fmul fast float %1034, %1035
  %1039 = fmul fast float %1034, %1036
  %1040 = fmul fast float %1034, %1037
  %1041 = call float @dx.op.unary.f32(i32 27, float %1038)  ; Round_ni(value)
  %1042 = call float @dx.op.unary.f32(i32 27, float %1039)  ; Round_ni(value)
  %1043 = call float @dx.op.unary.f32(i32 27, float %1040)  ; Round_ni(value)
  %1044 = fadd fast float %1041, 5.000000e-01
  %1045 = fadd fast float %1042, 5.000000e-01
  %1046 = fadd fast float %1043, 5.000000e-01
  %1047 = fmul fast float %1044, %1024
  %1048 = fmul fast float %1045, %1025
  %1049 = fmul fast float %1046, %1026
  %1050 = shl i32 %31, 2
  %1051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.i32 %1051, 0
  %1053 = add i32 %1052, 0
  %1054 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1053, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1055 = call float @dx.op.unary.f32(i32 22, float %1047)  ; Frc(value)
  %1056 = call float @dx.op.unary.f32(i32 22, float %1048)  ; Frc(value)
  %1057 = call float @dx.op.unary.f32(i32 22, float %1049)  ; Frc(value)
  %1058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1054, %dx.types.Handle %27, float %1055, float %1056, float %1057, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1059 = extractvalue %dx.types.ResRet.f32 %1058, 0
  %1060 = extractvalue %dx.types.ResRet.f32 %1058, 1
  %1061 = extractvalue %dx.types.ResRet.f32 %1058, 2
  %1062 = fmul fast float %1059, 1.023000e+03
  %1063 = fmul fast float %1060, 1.023000e+03
  %1064 = fmul fast float %1061, 1.023000e+03
  %1065 = fadd fast float %1062, 5.000000e-01
  %1066 = fadd fast float %1063, 5.000000e-01
  %1067 = fadd fast float %1064, 5.000000e-01
  %1068 = call float @dx.op.unary.f32(i32 27, float %1065)  ; Round_ni(value)
  %1069 = call float @dx.op.unary.f32(i32 27, float %1066)  ; Round_ni(value)
  %1070 = call float @dx.op.unary.f32(i32 27, float %1067)  ; Round_ni(value)
  %1071 = fsub fast float %1038, %1041
  %1072 = fsub fast float %1039, %1042
  %1073 = fsub fast float %1040, %1043
  %1074 = fmul fast float %1071, 7.500000e-01
  %1075 = fmul fast float %1072, 7.500000e-01
  %1076 = fmul fast float %1073, 7.500000e-01
  %1077 = fadd fast float %1041, 1.250000e-01
  %1078 = fadd fast float %1077, %1074
  %1079 = fadd fast float %1078, %1068
  %1080 = fadd fast float %1042, 1.250000e-01
  %1081 = fadd fast float %1080, %1075
  %1082 = fadd fast float %1081, %1069
  %1083 = fadd fast float %1043, 1.250000e-01
  %1084 = fadd fast float %1083, %1076
  %1085 = fadd fast float %1084, %1070
  %1086 = fmul fast float %1079, %1029
  %1087 = fmul fast float %1082, %1030
  %1088 = fmul fast float %1085, %1031
  %1089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.i32 %1089, 0
  %1091 = add i32 %1090, 0
  %1092 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1091, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1092, %dx.types.Handle %25, float %1086, float %1087, float %1088, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 0
  br label %1095

; <label>:1095                                    ; preds = %1016, %1005
  %1096 = phi float [ %1094, %1016 ], [ -1.000000e+00, %1005 ]
  %1097 = fadd fast float %1096, %1003
  %1098 = call float @dx.op.unary.f32(i32 7, float %1097)  ; Saturate(value)
  br label %1099

; <label>:1099                                    ; preds = %1095, %993
  %1100 = phi float [ %1098, %1095 ], [ %1003, %993 ]
  %1101 = fmul fast float %1100, %396
  br label %1102

; <label>:1102                                    ; preds = %1099, %988
  %1103 = phi float [ %1101, %1099 ], [ %396, %988 ]
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = and i32 %1105, 256
  %1107 = icmp eq i32 %1106, 0
  br i1 %1107, label %1154, label %1108

; <label>:1108                                    ; preds = %1102
  %1109 = add i32 %30, 428
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = add i32 %1111, 0
  %1113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1112, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1114 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1113, %dx.types.Handle %61, float %989, float %990, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = add i32 %30, 116
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = shl i32 %1118, 4
  %1120 = and i32 %1119, 32752
  %1121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1120)  ; LegacyF16ToF32(value)
  %1122 = lshr i32 %1118, 7
  %1123 = and i32 %1122, 32752
  %1124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1123)  ; LegacyF16ToF32(value)
  %1125 = fsub fast float 1.000000e+00, %1103
  %1126 = call float @dx.op.binary.f32(i32 35, float %1125, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1127 = bitcast float %1103 to i32
  %1128 = sitofp i32 %1127 to float
  %1129 = fadd fast float %1128, 0xC1CFBF8940000000
  %1130 = fmul fast float %1124, %1129
  %1131 = fadd fast float %1130, 0x41CFBF8940000000
  %1132 = fptosi float %1131 to i32
  %1133 = bitcast i32 %1132 to float
  %1134 = bitcast float %1126 to i32
  %1135 = sitofp i32 %1134 to float
  %1136 = fadd fast float %1135, 0xC1CFBF8940000000
  %1137 = fmul fast float %1136, %1124
  %1138 = fadd fast float %1137, 0x41CFBF8940000000
  %1139 = fptosi float %1138 to i32
  %1140 = bitcast i32 %1139 to float
  %1141 = fmul fast float %1133, %1121
  %1142 = fmul fast float %1140, %1121
  %1143 = fsub fast float %1126, %1141
  %1144 = fadd fast float %1142, %1126
  %1145 = call float @dx.op.unary.f32(i32 7, float %1143)  ; Saturate(value)
  %1146 = call float @dx.op.unary.f32(i32 7, float %1144)  ; Saturate(value)
  %1147 = fsub fast float %1115, %1145
  %1148 = fsub fast float %1146, %1145
  %1149 = bitcast float %1148 to i32
  %1150 = sub nsw i32 2129859010, %1149
  %1151 = bitcast i32 %1150 to float
  %1152 = fmul fast float %1151, %1147
  %1153 = call float @dx.op.unary.f32(i32 7, float %1152)  ; Saturate(value)
  br label %1154

; <label>:1154                                    ; preds = %1108, %1102
  %1155 = phi float [ %1153, %1108 ], [ %1103, %1102 ]
  %1156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.i32 %1156, 0
  %1158 = and i32 %1157, 128
  %1159 = icmp eq i32 %1158, 0
  br i1 %1159, label %1176, label %1160

; <label>:1160                                    ; preds = %1154
  %1161 = add i32 %30, 412
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = add i32 %1163, 0
  %1165 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1164, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1166 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1165, %dx.types.Handle %61, float %989, float %990, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1167 = extractvalue %dx.types.ResRet.f32 %1166, 0
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = and i32 %1169, 524288
  %1171 = icmp ne i32 %1170, 0
  %1172 = fcmp fast ogt float %1167, 0x3FE0101020000000
  %1173 = select i1 %1172, float 1.000000e+00, float 0.000000e+00
  %1174 = select i1 %1171, float %1173, float %1167
  %1175 = fmul fast float %1174, %1155
  br label %1176

; <label>:1176                                    ; preds = %1160, %1154
  %1177 = phi float [ %1175, %1160 ], [ %1155, %1154 ]
  %1178 = fcmp fast ult float %1177, 0x3F70101020000000
  br i1 %1178, label %1721, label %1179

; <label>:1179                                    ; preds = %1176
  %1180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.i32 %1180, 0
  %1182 = and i32 %1181, 16
  %1183 = icmp eq i32 %1182, 0
  br i1 %1183, label %1382, label %1184

; <label>:1184                                    ; preds = %1179
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = add i32 %30, 364
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = add i32 %1189, 0
  %1191 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1190, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1192 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1191, %dx.types.Handle %60, float %989, float %990, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1193 = extractvalue %dx.types.ResRet.f32 %1192, 0
  %1194 = extractvalue %dx.types.ResRet.f32 %1192, 1
  %1195 = extractvalue %dx.types.ResRet.f32 %1192, 2
  %1196 = extractvalue %dx.types.ResRet.f32 %1192, 3
  %1197 = and i32 %1186, 255
  %1198 = uitofp i32 %1197 to float
  %1199 = lshr i32 %1186, 8
  %1200 = and i32 %1199, 255
  %1201 = uitofp i32 %1200 to float
  %1202 = fmul fast float %1196, %1198
  %1203 = fadd fast float %1202, %1201
  %1204 = fmul fast float %1203, 0x3F70101000000000
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = and i32 %1206, 512
  %1208 = icmp eq i32 %1207, 0
  br i1 %1208, label %1217, label %1209

; <label>:1209                                    ; preds = %1184
  %1210 = add i32 %30, 444
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1210, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = add i32 %1212, 0
  %1214 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1213, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1215 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1214, %dx.types.Handle %61, float %989, float %990, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1216 = extractvalue %dx.types.ResRet.f32 %1215, 0
  br label %1217

; <label>:1217                                    ; preds = %1209, %1184
  %1218 = phi float [ %1216, %1209 ], [ 1.000000e+00, %1184 ]
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = and i32 %1220, 33554432
  %1222 = icmp eq i32 %1221, 0
  br i1 %1222, label %1329, label %1223

; <label>:1223                                    ; preds = %1217
  %1224 = add i32 %30, 240
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = and i32 %1226, 65535
  %1228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1227)  ; LegacyF16ToF32(value)
  %1229 = lshr i32 %1226, 16
  %1230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1229)  ; LegacyF16ToF32(value)
  %1231 = add i32 %30, 244
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.i32 %1232, 0
  %1234 = and i32 %1233, 65535
  %1235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1234)  ; LegacyF16ToF32(value)
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = lshr i32 %1237, 24
  %1239 = uitofp i32 %1238 to float
  %1240 = fmul fast float %1239, 0x3F70101020000000
  %1241 = and i32 %1237, 255
  %1242 = uitofp i32 %1241 to float
  %1243 = fmul fast float %1242, 0x3F70101020000000
  %1244 = lshr i32 %1237, 8
  %1245 = and i32 %1244, 255
  %1246 = uitofp i32 %1245 to float
  %1247 = fmul fast float %1246, 0x3F70101020000000
  %1248 = lshr i32 %1237, 16
  %1249 = and i32 %1248, 255
  %1250 = uitofp i32 %1249 to float
  %1251 = fmul fast float %1250, 0x3F70101020000000
  %1252 = add i32 %30, 236
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = lshr i32 %1254, 24
  %1256 = uitofp i32 %1255 to float
  %1257 = fmul fast float %1256, 0x3F70101020000000
  %1258 = and i32 %1254, 255
  %1259 = uitofp i32 %1258 to float
  %1260 = fmul fast float %1259, 0x3F70101020000000
  %1261 = lshr i32 %1254, 8
  %1262 = and i32 %1261, 255
  %1263 = uitofp i32 %1262 to float
  %1264 = fmul fast float %1263, 0x3F70101020000000
  %1265 = lshr i32 %1254, 16
  %1266 = and i32 %1265, 255
  %1267 = uitofp i32 %1266 to float
  %1268 = fmul fast float %1267, 0x3F70101020000000
  %1269 = bitcast float %1193 to i32
  %1270 = ashr i32 %1269, 1
  %1271 = sub nsw i32 1597463174, %1270
  %1272 = bitcast i32 %1271 to float
  %1273 = fmul fast float %1193, 5.000000e-01
  %1274 = fmul fast float %1272, %1272
  %1275 = fmul fast float %1274, %1273
  %1276 = fsub fast float 1.500000e+00, %1275
  %1277 = fmul fast float %1272, %1193
  %1278 = fmul fast float %1277, %1276
  %1279 = bitcast float %1194 to i32
  %1280 = ashr i32 %1279, 1
  %1281 = sub nsw i32 1597463174, %1280
  %1282 = bitcast i32 %1281 to float
  %1283 = fmul fast float %1194, 5.000000e-01
  %1284 = fmul fast float %1282, %1282
  %1285 = fmul fast float %1284, %1283
  %1286 = fsub fast float 1.500000e+00, %1285
  %1287 = fmul fast float %1282, %1194
  %1288 = fmul fast float %1287, %1286
  %1289 = bitcast float %1195 to i32
  %1290 = ashr i32 %1289, 1
  %1291 = sub nsw i32 1597463174, %1290
  %1292 = bitcast i32 %1291 to float
  %1293 = fmul fast float %1195, 5.000000e-01
  %1294 = fmul fast float %1292, %1292
  %1295 = fmul fast float %1294, %1293
  %1296 = fsub fast float 1.500000e+00, %1295
  %1297 = fmul fast float %1292, %1195
  %1298 = fmul fast float %1297, %1296
  %1299 = fsub fast float %1278, %1260
  %1300 = fsub fast float %1288, %1264
  %1301 = fsub fast float %1298, %1268
  %1302 = fmul fast float %1299, %1228
  %1303 = fmul fast float %1300, %1230
  %1304 = fmul fast float %1301, %1235
  %1305 = fadd fast float %1302, %1243
  %1306 = fadd fast float %1303, %1247
  %1307 = fadd fast float %1304, %1251
  %1308 = call float @dx.op.unary.f32(i32 7, float %1305)  ; Saturate(value)
  %1309 = call float @dx.op.unary.f32(i32 7, float %1306)  ; Saturate(value)
  %1310 = call float @dx.op.unary.f32(i32 7, float %1307)  ; Saturate(value)
  %1311 = fmul fast float %1308, %1308
  %1312 = fmul fast float %1309, %1309
  %1313 = fmul fast float %1310, %1310
  %1314 = fsub fast float %1311, %1193
  %1315 = fsub fast float %1312, %1194
  %1316 = fsub fast float %1313, %1195
  %1317 = fmul fast float %1314, %1218
  %1318 = fmul fast float %1315, %1218
  %1319 = fmul fast float %1316, %1218
  %1320 = fadd fast float %1317, %1193
  %1321 = fadd fast float %1318, %1194
  %1322 = fadd fast float %1319, %1195
  %1323 = fadd fast float %1240, %1204
  %1324 = fsub fast float %1323, %1257
  %1325 = call float @dx.op.unary.f32(i32 7, float %1324)  ; Saturate(value)
  %1326 = fsub fast float %1325, %1204
  %1327 = fmul fast float %1326, %1218
  %1328 = fadd fast float %1327, %1204
  br label %1382

; <label>:1329                                    ; preds = %1217
  %1330 = and i32 %1220, 134217728
  %1331 = icmp eq i32 %1330, 0
  br i1 %1331, label %1366, label %1332

; <label>:1332                                    ; preds = %1329
  %1333 = call float @dx.op.unary.f32(i32 24, float %231)  ; Sqrt(value)
  %1334 = call float @dx.op.unary.f32(i32 24, float %235)  ; Sqrt(value)
  %1335 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %1336 = fadd fast float %1333, -5.000000e-01
  %1337 = fadd fast float %1334, -5.000000e-01
  %1338 = fadd fast float %1335, -5.000000e-01
  %1339 = fmul fast float %1336, %1218
  %1340 = fmul fast float %1337, %1218
  %1341 = fmul fast float %1338, %1218
  %1342 = fadd fast float %1339, 5.000000e-01
  %1343 = fadd fast float %1340, 5.000000e-01
  %1344 = fadd fast float %1341, 5.000000e-01
  %1345 = call float @dx.op.unary.f32(i32 24, float %1193)  ; Sqrt(value)
  %1346 = call float @dx.op.unary.f32(i32 24, float %1194)  ; Sqrt(value)
  %1347 = call float @dx.op.unary.f32(i32 24, float %1195)  ; Sqrt(value)
  %1348 = fmul fast float %1342, 2.000000e+00
  %1349 = fsub fast float 1.000000e+00, %1348
  %1350 = fmul fast float %1349, %1345
  %1351 = fadd fast float %1350, %1348
  %1352 = fmul fast float %1351, %1345
  %1353 = fmul fast float %1343, 2.000000e+00
  %1354 = fsub fast float 1.000000e+00, %1353
  %1355 = fmul fast float %1354, %1346
  %1356 = fadd fast float %1355, %1353
  %1357 = fmul fast float %1356, %1346
  %1358 = fmul fast float %1344, 2.000000e+00
  %1359 = fsub fast float 1.000000e+00, %1358
  %1360 = fmul fast float %1359, %1347
  %1361 = fadd fast float %1360, %1358
  %1362 = fmul fast float %1361, %1347
  %1363 = fmul fast float %1352, %1352
  %1364 = fmul fast float %1357, %1357
  %1365 = fmul fast float %1362, %1362
  br label %1382

; <label>:1366                                    ; preds = %1329
  %1367 = fmul fast float %231, %231
  %1368 = fmul fast float %235, %235
  %1369 = fmul fast float %239, %239
  %1370 = fadd fast float %1367, -1.000000e+00
  %1371 = fadd fast float %1368, -1.000000e+00
  %1372 = fadd fast float %1369, -1.000000e+00
  %1373 = fmul fast float %1218, %1370
  %1374 = fmul fast float %1218, %1371
  %1375 = fmul fast float %1218, %1372
  %1376 = fadd fast float %1373, 1.000000e+00
  %1377 = fadd fast float %1374, 1.000000e+00
  %1378 = fadd fast float %1375, 1.000000e+00
  %1379 = fmul fast float %1376, %1193
  %1380 = fmul fast float %1377, %1194
  %1381 = fmul fast float %1378, %1195
  br label %1382

; <label>:1382                                    ; preds = %1366, %1332, %1223, %1179
  %1383 = phi float [ %1328, %1223 ], [ %1204, %1332 ], [ %1204, %1366 ], [ 0x3FA23C0BE0000000, %1179 ]
  %1384 = phi float [ %1320, %1223 ], [ %1363, %1332 ], [ %1379, %1366 ], [ 1.000000e+00, %1179 ]
  %1385 = phi float [ %1321, %1223 ], [ %1364, %1332 ], [ %1380, %1366 ], [ 1.000000e+00, %1179 ]
  %1386 = phi float [ %1322, %1223 ], [ %1365, %1332 ], [ %1381, %1366 ], [ 1.000000e+00, %1179 ]
  %1387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.i32 %1387, 1
  %1389 = and i32 %1388, 1
  %1390 = icmp ne i32 %1389, 0
  %1391 = add i32 %30, 356
  %1392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1391, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.i32 %1392, 0
  %1394 = and i32 %1393, 32
  %1395 = icmp ne i32 %1394, 0
  %1396 = and i1 %1390, %1395
  %1397 = select i1 %1396, float 1.000000e+00, float %1384
  %1398 = select i1 %1396, float 0x3FD3333340000000, float %1385
  %1399 = select i1 %1396, float 0x3FD3333340000000, float %1386
  %1400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.i32 %1400, 0
  %1402 = and i32 %1401, 32
  %1403 = icmp eq i32 %1402, 0
  br i1 %1403, label %1476, label %1404

; <label>:1404                                    ; preds = %1382
  %1405 = add i32 %30, 108
  %1406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1405, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.i32 %1406, 0
  %1408 = add i32 %30, 380
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1408, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = add i32 %1410, 0
  %1412 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1411, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1413 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1412, %dx.types.Handle %60, float %989, float %990, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1414 = extractvalue %dx.types.ResRet.f32 %1413, 0
  %1415 = extractvalue %dx.types.ResRet.f32 %1413, 1
  %1416 = extractvalue %dx.types.ResRet.f32 %1413, 2
  %1417 = extractvalue %dx.types.ResRet.f32 %1413, 3
  %1418 = and i32 %1407, 255
  %1419 = uitofp i32 %1418 to float
  %1420 = lshr i32 %1407, 8
  %1421 = and i32 %1420, 255
  %1422 = uitofp i32 %1421 to float
  %1423 = lshr i32 %1407, 16
  %1424 = and i32 %1423, 255
  %1425 = uitofp i32 %1424 to float
  %1426 = fmul fast float %1425, 0x3F70101000000000
  %1427 = fmul fast float %1414, %1419
  %1428 = fadd fast float %1427, %1422
  %1429 = fmul fast float %1428, 0x3F70101000000000
  %1430 = fadd fast float %1415, -5.000000e-01
  %1431 = fadd fast float %1417, -5.000000e-01
  %1432 = fmul fast float %1430, %1426
  %1433 = fmul fast float %1431, %1426
  %1434 = fadd fast float %1432, 5.000000e-01
  %1435 = fadd fast float %1433, 5.000000e-01
  %1436 = fmul fast float %1434, 2.000000e+00
  %1437 = fadd fast float %1436, -1.000000e+00
  %1438 = fmul fast float %1435, 2.000000e+00
  %1439 = fadd fast float %1438, -1.000000e+00
  %1440 = fadd fast float %1437, %1439
  %1441 = fmul fast float %1440, 5.000000e-01
  %1442 = fsub fast float %1437, %1439
  %1443 = fmul fast float %1442, 5.000000e-01
  %1444 = call float @dx.op.unary.f32(i32 6, float %1441)  ; FAbs(value)
  %1445 = fsub fast float 1.000000e+00, %1444
  %1446 = call float @dx.op.unary.f32(i32 6, float %1443)  ; FAbs(value)
  %1447 = fsub fast float %1445, %1446
  %1448 = call float @dx.op.dot3.f32(i32 55, float %1441, float %1443, float %1447, float %1441, float %1443, float %1447)  ; Dot3(ax,ay,az,bx,by,bz)
  %1449 = call float @dx.op.unary.f32(i32 25, float %1448)  ; Rsqrt(value)
  %1450 = fmul fast float %1441, %1449
  %1451 = fmul fast float %1443, %1449
  %1452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.i32 %1452, 0
  %1454 = and i32 %1453, 67108864
  %1455 = icmp eq i32 %1454, 0
  br i1 %1455, label %1472, label %1456

; <label>:1456                                    ; preds = %1404
  %1457 = add i32 %30, 296
  %1458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1457, i32 undef)  ; BufferLoad(srv,index,wot)
  %1459 = extractvalue %dx.types.ResRet.i32 %1458, 0
  %1460 = and i32 %1459, 65535
  %1461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1460)  ; LegacyF16ToF32(value)
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = and i32 %1463, 65535
  %1465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1464)  ; LegacyF16ToF32(value)
  %1466 = lshr i32 %1459, 16
  %1467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1466)  ; LegacyF16ToF32(value)
  %1468 = fsub fast float %1429, %1467
  %1469 = fmul fast float %1468, %1461
  %1470 = fadd fast float %1469, %1465
  %1471 = call float @dx.op.unary.f32(i32 7, float %1470)  ; Saturate(value)
  br label %1472

; <label>:1472                                    ; preds = %1456, %1404
  %1473 = phi float [ %1471, %1456 ], [ %1429, %1404 ]
  %1474 = call float @dx.op.dot2.f32(i32 54, float %1450, float %1451, float %893, float %894)  ; Dot2(ax,ay,bx,by)
  %1475 = call float @dx.op.dot2.f32(i32 54, float %1450, float %1451, float %895, float %896)  ; Dot2(ax,ay,bx,by)
  br label %1476

; <label>:1476                                    ; preds = %1472, %1382
  %1477 = phi float [ %1473, %1472 ], [ 0x3FD6666660000000, %1382 ]
  %1478 = phi float [ %1474, %1472 ], [ 0.000000e+00, %1382 ]
  %1479 = phi float [ %1475, %1472 ], [ 0.000000e+00, %1382 ]
  %1480 = phi float [ %1416, %1472 ], [ 1.000000e+00, %1382 ]
  %1481 = add i32 %30, 176
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1481, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = lshr i32 %1483, 22
  %1485 = shl nuw nsw i32 %1484, 5
  %1486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1485)  ; LegacyF16ToF32(value)
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = and i32 %1488, 64
  %1490 = icmp eq i32 %1489, 0
  br i1 %1490, label %1524, label %1491

; <label>:1491                                    ; preds = %1476
  %1492 = add i32 %30, 396
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = add i32 %1494, 0
  %1496 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1495, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1498 = extractvalue %dx.types.ResRet.i32 %1497, 0
  %1499 = and i32 %1498, 131072
  %1500 = icmp eq i32 %1499, 0
  %1501 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1496, %dx.types.Handle %60, float %989, float %990, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1502 = extractvalue %dx.types.ResRet.f32 %1501, 0
  %1503 = extractvalue %dx.types.ResRet.f32 %1501, 1
  %1504 = extractvalue %dx.types.ResRet.f32 %1501, 2
  %1505 = fmul fast float %1502, %219
  %1506 = fmul fast float %1503, %222
  %1507 = fmul fast float %1504, %225
  br i1 %1500, label %1514, label %1508

; <label>:1508                                    ; preds = %1491
  %1509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1510 = extractvalue %dx.types.CBufRet.f32 %1509, 0
  %1511 = fmul fast float %1510, %1505
  %1512 = fmul fast float %1510, %1506
  %1513 = fmul fast float %1510, %1507
  br label %1514

; <label>:1514                                    ; preds = %1508, %1491
  %1515 = phi float [ %1511, %1508 ], [ %1505, %1491 ]
  %1516 = phi float [ %1512, %1508 ], [ %1506, %1491 ]
  %1517 = phi float [ %1513, %1508 ], [ %1507, %1491 ]
  %1518 = fmul fast float %1515, %1486
  %1519 = select i1 %171, float %1518, float %1515
  %1520 = call float @dx.op.dot3.f32(i32 55, float %1519, float %1516, float %1517, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1521 = select i1 %171, float 0.000000e+00, float %1515
  %1522 = select i1 %171, float %1520, float %1516
  %1523 = select i1 %171, float 0.000000e+00, float %1517
  br label %1524

; <label>:1524                                    ; preds = %1514, %1476
  %1525 = phi float [ %1521, %1514 ], [ 0.000000e+00, %1476 ]
  %1526 = phi float [ %1522, %1514 ], [ 0.000000e+00, %1476 ]
  %1527 = phi float [ %1523, %1514 ], [ 0.000000e+00, %1476 ]
  %1528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1529 = extractvalue %dx.types.ResRet.i32 %1528, 0
  %1530 = add i32 %30, 112
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1530, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 255
  %1534 = uitofp i32 %1533 to float
  %1535 = lshr i32 %1532, 8
  %1536 = and i32 %1535, 255
  %1537 = uitofp i32 %1536 to float
  %1538 = call float @dx.op.dot3.f32(i32 55, float %1397, float %1398, float %1399, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1539 = fmul fast float %1537, %1538
  %1540 = fadd fast float %1539, %1534
  %1541 = fmul fast float %1540, 0x3F70101020000000
  %1542 = call float @dx.op.unary.f32(i32 7, float %1541)  ; Saturate(value)
  br i1 %881, label %1543, label %1551

; <label>:1543                                    ; preds = %1524
  %1544 = fsub fast float 1.000000e+00, %1177
  %1545 = fmul fast float %1544, %869
  %1546 = fmul fast float %1544, %870
  %1547 = fmul fast float %1544, %871
  %1548 = fmul fast float %1544, %872
  %1549 = fmul fast float %1544, %873
  %1550 = fmul fast float %1544, %874
  br label %1551

; <label>:1551                                    ; preds = %1543, %1524
  %1552 = phi float [ %1545, %1543 ], [ %869, %1524 ]
  %1553 = phi float [ %1546, %1543 ], [ %870, %1524 ]
  %1554 = phi float [ %1547, %1543 ], [ %871, %1524 ]
  %1555 = phi float [ %1548, %1543 ], [ %872, %1524 ]
  %1556 = phi float [ %1549, %1543 ], [ %873, %1524 ]
  %1557 = phi float [ %1550, %1543 ], [ %874, %1524 ]
  %1558 = and i32 %1529, 3
  %1559 = icmp eq i32 %1558, 3
  br i1 %1559, label %1638, label %1560

; <label>:1560                                    ; preds = %1551
  %1561 = and i32 %1529, 16
  %1562 = icmp ne i32 %1561, 0
  %1563 = select i1 %1562, float %1177, float 0.000000e+00
  %1564 = icmp eq i32 %1558, 0
  br i1 %1564, label %1565, label %1593

; <label>:1565                                    ; preds = %1560
  %1566 = and i32 %1529, 64
  %1567 = icmp ne i32 %1566, 0
  %1568 = select i1 %1567, float %1177, float 0.000000e+00
  %1569 = fsub fast float %1397, %1552
  %1570 = fsub fast float %1398, %1553
  %1571 = fsub fast float %1399, %1554
  %1572 = fmul fast float %1563, %1569
  %1573 = fmul fast float %1563, %1570
  %1574 = fmul fast float %1563, %1571
  %1575 = fadd fast float %1572, %1552
  %1576 = fadd fast float %1573, %1553
  %1577 = fadd fast float %1574, %1554
  %1578 = fsub fast float %1383, %875
  %1579 = fmul fast float %1563, %1578
  %1580 = fadd fast float %1579, %875
  %1581 = fsub fast float %1525, %1555
  %1582 = fsub fast float %1526, %1556
  %1583 = fsub fast float %1527, %1557
  %1584 = fmul fast float %1568, %1581
  %1585 = fmul fast float %1568, %1582
  %1586 = fmul fast float %1568, %1583
  %1587 = fadd fast float %1584, %1555
  %1588 = fadd fast float %1585, %1556
  %1589 = fadd fast float %1586, %1557
  %1590 = fsub fast float %1542, %879
  %1591 = fmul fast float %1563, %1590
  %1592 = fadd fast float %1591, %879
  br label %1638

; <label>:1593                                    ; preds = %1560
  %1594 = icmp eq i32 %1558, 1
  br i1 %1594, label %1595, label %1608

; <label>:1595                                    ; preds = %1593
  %1596 = fadd fast float %1397, -1.000000e+00
  %1597 = fadd fast float %1398, -1.000000e+00
  %1598 = fadd fast float %1399, -1.000000e+00
  %1599 = fmul fast float %1563, %1596
  %1600 = fmul fast float %1563, %1597
  %1601 = fmul fast float %1563, %1598
  %1602 = fadd fast float %1599, 1.000000e+00
  %1603 = fadd fast float %1600, 1.000000e+00
  %1604 = fadd fast float %1601, 1.000000e+00
  %1605 = fmul fast float %1602, %1552
  %1606 = fmul fast float %1603, %1553
  %1607 = fmul fast float %1604, %1554
  br label %1638

; <label>:1608                                    ; preds = %1593
  %1609 = icmp eq i32 %1558, 2
  br i1 %1609, label %1610, label %1638

; <label>:1610                                    ; preds = %1608
  %1611 = call float @dx.op.unary.f32(i32 24, float %1397)  ; Sqrt(value)
  %1612 = call float @dx.op.unary.f32(i32 24, float %1398)  ; Sqrt(value)
  %1613 = call float @dx.op.unary.f32(i32 24, float %1399)  ; Sqrt(value)
  %1614 = fadd fast float %1611, -5.000000e-01
  %1615 = fadd fast float %1612, -5.000000e-01
  %1616 = fadd fast float %1613, -5.000000e-01
  %1617 = fmul fast float %1614, %1563
  %1618 = fmul fast float %1615, %1563
  %1619 = fmul fast float %1616, %1563
  %1620 = fadd fast float %1617, 5.000000e-01
  %1621 = fadd fast float %1618, 5.000000e-01
  %1622 = fadd fast float %1619, 5.000000e-01
  %1623 = fmul fast float %1620, 2.000000e+00
  %1624 = fsub fast float 1.000000e+00, %1623
  %1625 = fmul fast float %1624, %1552
  %1626 = fadd fast float %1625, %1623
  %1627 = fmul fast float %1626, %1552
  %1628 = fmul fast float %1621, 2.000000e+00
  %1629 = fsub fast float 1.000000e+00, %1628
  %1630 = fmul fast float %1629, %1553
  %1631 = fadd fast float %1630, %1628
  %1632 = fmul fast float %1631, %1553
  %1633 = fmul fast float %1622, 2.000000e+00
  %1634 = fsub fast float 1.000000e+00, %1633
  %1635 = fmul fast float %1634, %1554
  %1636 = fadd fast float %1635, %1633
  %1637 = fmul fast float %1636, %1554
  br label %1638

; <label>:1638                                    ; preds = %1610, %1608, %1595, %1565, %1551
  %1639 = phi float [ %1552, %1551 ], [ %1627, %1610 ], [ %1552, %1608 ], [ %1605, %1595 ], [ %1575, %1565 ]
  %1640 = phi float [ %1553, %1551 ], [ %1632, %1610 ], [ %1553, %1608 ], [ %1606, %1595 ], [ %1576, %1565 ]
  %1641 = phi float [ %1554, %1551 ], [ %1637, %1610 ], [ %1554, %1608 ], [ %1607, %1595 ], [ %1577, %1565 ]
  %1642 = phi float [ %1555, %1551 ], [ %1555, %1610 ], [ %1555, %1608 ], [ %1555, %1595 ], [ %1587, %1565 ]
  %1643 = phi float [ %1556, %1551 ], [ %1556, %1610 ], [ %1556, %1608 ], [ %1556, %1595 ], [ %1588, %1565 ]
  %1644 = phi float [ %1557, %1551 ], [ %1557, %1610 ], [ %1557, %1608 ], [ %1557, %1595 ], [ %1589, %1565 ]
  %1645 = phi float [ %875, %1551 ], [ %875, %1610 ], [ %875, %1608 ], [ %875, %1595 ], [ %1580, %1565 ]
  %1646 = phi float [ %879, %1551 ], [ %879, %1610 ], [ %879, %1608 ], [ %879, %1595 ], [ %1592, %1565 ]
  %1647 = and i32 %1529, 12
  %1648 = icmp eq i32 %1647, 12
  br i1 %1648, label %1721, label %1649

; <label>:1649                                    ; preds = %1638
  %1650 = and i32 %1529, 2097184
  %1651 = icmp eq i32 %1650, 2097184
  %1652 = select i1 %1651, float %1177, float 0.000000e+00
  %1653 = and i32 %1529, 4194336
  %1654 = icmp eq i32 %1653, 4194336
  %1655 = select i1 %1654, float %1177, float 0.000000e+00
  %1656 = and i32 %1529, 8388640
  %1657 = icmp eq i32 %1656, 8388640
  %1658 = select i1 %1657, float %1177, float 0.000000e+00
  %1659 = icmp eq i32 %1647, 0
  br i1 %1659, label %1660, label %1673

; <label>:1660                                    ; preds = %1649
  %1661 = fsub fast float %1478, %867
  %1662 = fsub fast float %1479, %868
  %1663 = fmul fast float %1652, %1661
  %1664 = fmul fast float %1652, %1662
  %1665 = fadd fast float %1663, %867
  %1666 = fadd fast float %1664, %868
  %1667 = fsub fast float %1480, %878
  %1668 = fmul fast float %1655, %1667
  %1669 = fadd fast float %1668, %878
  %1670 = fsub fast float %1477, %877
  %1671 = fmul fast float %1658, %1670
  %1672 = fadd fast float %1671, %877
  br label %1721

; <label>:1673                                    ; preds = %1649
  %1674 = icmp eq i32 %1647, 4
  br i1 %1674, label %1675, label %1707

; <label>:1675                                    ; preds = %1673
  %1676 = fmul fast float %1652, %1478
  %1677 = fmul fast float %1652, %1479
  %1678 = fadd fast float %1676, %867
  %1679 = fadd fast float %1677, %868
  %1680 = call float @dx.op.binary.f32(i32 36, float %878, float %1480)  ; FMin(a,b)
  %1681 = fsub fast float %1680, %878
  %1682 = fmul fast float %1681, %1655
  %1683 = fadd fast float %1682, %878
  %1684 = fadd fast float %1477, %877
  %1685 = fmul fast float %1684, 0x3FF337FAE0000000
  %1686 = fmul fast float %877, %877
  %1687 = fmul fast float %1477, %1477
  %1688 = fadd fast float %1687, %1686
  %1689 = fmul fast float %1688, 0x3FE5152B00000000
  %1690 = fmul fast float %877, 0xBFCC1F85E0000000
  %1691 = fmul fast float %1690, %1477
  %1692 = fadd fast float %1691, 0xBFE1363700000000
  %1693 = fadd fast float %1692, %1685
  %1694 = fsub fast float %1693, %1689
  %1695 = fmul fast float %1684, 0x3FBA6F0D00000000
  %1696 = fmul fast float %1688, 0x3FD0432880000000
  %1697 = fmul fast float %877, 0xBFEF110800000000
  %1698 = fmul fast float %1697, %1477
  %1699 = fadd fast float %1698, 1.000000e+00
  %1700 = fsub fast float %1699, %1695
  %1701 = fadd fast float %1700, %1696
  %1702 = fdiv fast float %1694, %1701
  %1703 = call float @dx.op.unary.f32(i32 7, float %1702)  ; Saturate(value)
  %1704 = fsub fast float %1703, %877
  %1705 = fmul fast float %1704, %1658
  %1706 = fadd fast float %1705, %877
  br label %1721

; <label>:1707                                    ; preds = %1673
  %1708 = icmp eq i32 %1647, 8
  br i1 %1708, label %1709, label %1721

; <label>:1709                                    ; preds = %1707
  %1710 = fmul fast float %1652, %1478
  %1711 = fmul fast float %1652, %1479
  %1712 = fadd fast float %1710, %867
  %1713 = fadd fast float %1711, %868
  %1714 = call float @dx.op.binary.f32(i32 36, float %878, float %1480)  ; FMin(a,b)
  %1715 = fsub fast float %1714, %878
  %1716 = fmul fast float %1715, %1655
  %1717 = fadd fast float %1716, %878
  %1718 = fsub fast float %1477, %877
  %1719 = fmul fast float %1658, %1718
  %1720 = fadd fast float %1719, %877
  br label %1721

; <label>:1721                                    ; preds = %1709, %1707, %1675, %1660, %1638, %1176, %880, %866
  %1722 = phi float [ %867, %1638 ], [ %867, %1176 ], [ %867, %866 ], [ %1712, %1709 ], [ %867, %1707 ], [ %1678, %1675 ], [ %1665, %1660 ], [ %867, %880 ]
  %1723 = phi float [ %868, %1638 ], [ %868, %1176 ], [ %868, %866 ], [ %1713, %1709 ], [ %868, %1707 ], [ %1679, %1675 ], [ %1666, %1660 ], [ %868, %880 ]
  %1724 = phi float [ %1639, %1638 ], [ %869, %1176 ], [ %869, %866 ], [ %1639, %1709 ], [ %1639, %1707 ], [ %1639, %1675 ], [ %1639, %1660 ], [ %869, %880 ]
  %1725 = phi float [ %1640, %1638 ], [ %870, %1176 ], [ %870, %866 ], [ %1640, %1709 ], [ %1640, %1707 ], [ %1640, %1675 ], [ %1640, %1660 ], [ %870, %880 ]
  %1726 = phi float [ %1641, %1638 ], [ %871, %1176 ], [ %871, %866 ], [ %1641, %1709 ], [ %1641, %1707 ], [ %1641, %1675 ], [ %1641, %1660 ], [ %871, %880 ]
  %1727 = phi float [ %1642, %1638 ], [ %872, %1176 ], [ %872, %866 ], [ %1642, %1709 ], [ %1642, %1707 ], [ %1642, %1675 ], [ %1642, %1660 ], [ %872, %880 ]
  %1728 = phi float [ %1643, %1638 ], [ %873, %1176 ], [ %873, %866 ], [ %1643, %1709 ], [ %1643, %1707 ], [ %1643, %1675 ], [ %1643, %1660 ], [ %873, %880 ]
  %1729 = phi float [ %1644, %1638 ], [ %874, %1176 ], [ %874, %866 ], [ %1644, %1709 ], [ %1644, %1707 ], [ %1644, %1675 ], [ %1644, %1660 ], [ %874, %880 ]
  %1730 = phi float [ %1645, %1638 ], [ %875, %1176 ], [ %875, %866 ], [ %1645, %1709 ], [ %1645, %1707 ], [ %1645, %1675 ], [ %1645, %1660 ], [ %875, %880 ]
  %1731 = phi float [ %877, %1638 ], [ %877, %1176 ], [ %877, %866 ], [ %1720, %1709 ], [ %877, %1707 ], [ %1706, %1675 ], [ %1672, %1660 ], [ %877, %880 ]
  %1732 = phi float [ %878, %1638 ], [ %878, %1176 ], [ %878, %866 ], [ %1717, %1709 ], [ %878, %1707 ], [ %1683, %1675 ], [ %1669, %1660 ], [ %878, %880 ]
  %1733 = phi float [ %1646, %1638 ], [ %879, %1176 ], [ %879, %866 ], [ %1646, %1709 ], [ %1646, %1707 ], [ %1646, %1675 ], [ %1646, %1660 ], [ %879, %880 ]
  br i1 %346, label %2575, label %1734

; <label>:1734                                    ; preds = %1721
  %1735 = icmp ult i32 %399, 3
  %1736 = add i32 %30, 56
  %1737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.i32 %1737, 0
  %1739 = add i32 %30, 60
  %1740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.i32 %1740, 0
  %1742 = or i32 %1741, %1738
  %1743 = icmp eq i32 %1742, 0
  br i1 %1743, label %2575, label %1744

; <label>:1744                                    ; preds = %1734
  %1745 = and i32 %1738, 262144
  %1746 = icmp ne i32 %1745, 0
  %1747 = select i1 %1746, float %32, float 1.000000e+00
  %1748 = select i1 %1746, float %33, float 0.000000e+00
  %1749 = select i1 %1746, float %34, float 0.000000e+00
  %1750 = select i1 %1746, float %35, float 1.000000e+00
  %1751 = select i1 %1746, float %36, float %52
  %1752 = select i1 %1746, float %37, float %53
  %1753 = add i32 %30, 316
  %1754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1755 = extractvalue %dx.types.ResRet.i32 %1754, 0
  %1756 = lshr i32 %1755, 16
  %1757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1756)  ; LegacyF16ToF32(value)
  %1758 = fmul fast float %1757, 0x3F50624DE0000000
  %1759 = add i32 %30, 120
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1759, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = lshr i32 %1761, 16
  %1763 = and i32 %1762, 255
  %1764 = lshr i32 %1761, 24
  %1765 = add i32 %30, 324
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = and i32 %1767, 65535
  %1769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1768)  ; LegacyF16ToF32(value)
  %1770 = lshr i32 %1767, 16
  %1771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1770)  ; LegacyF16ToF32(value)
  %1772 = add i32 %30, 64
  %1773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1772, i32 undef)  ; BufferLoad(srv,index,wot)
  %1774 = extractvalue %dx.types.ResRet.i32 %1773, 0
  %1775 = lshr i32 %1774, 22
  %1776 = shl nuw nsw i32 %1775, 5
  %1777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1776)  ; LegacyF16ToF32(value)
  %1778 = shl i32 %1774, 4
  %1779 = and i32 %1778, 32752
  %1780 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1779)  ; LegacyF16ToF32(value)
  %1781 = lshr i32 %1774, 7
  %1782 = and i32 %1781, 32752
  %1783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1782)  ; LegacyF16ToF32(value)
  %1784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1785 = extractvalue %dx.types.CBufRet.f32 %1784, 3
  %1786 = fmul fast float %1785, 1.000000e+03
  %1787 = fmul fast float %296, %1786
  %1788 = call float @dx.op.unary.f32(i32 22, float %1787)  ; Frc(value)
  %1789 = fadd fast float %1788, %286
  %1790 = fmul fast float %297, %1786
  %1791 = call float @dx.op.unary.f32(i32 22, float %1790)  ; Frc(value)
  %1792 = fadd fast float %1791, %288
  %1793 = fmul fast float %1758, %1786
  %1794 = call float @dx.op.unary.f32(i32 22, float %1793)  ; Frc(value)
  %1795 = fmul fast float %1794, 0x401921FB60000000
  %1796 = fadd fast float %1795, %1777
  %1797 = call float @dx.op.unary.f32(i32 13, float %1796)  ; Sin(value)
  %1798 = call float @dx.op.unary.f32(i32 12, float %1796)  ; Cos(value)
  %1799 = fsub fast float -0.000000e+00, %1797
  %1800 = fadd fast float %1751, -5.000000e-01
  %1801 = fadd fast float %1752, -5.000000e-01
  %1802 = fmul fast float %1769, %1800
  %1803 = fmul fast float %1771, %1801
  %1804 = fadd fast float %1802, 5.000000e-01
  %1805 = fadd fast float %1803, 5.000000e-01
  %1806 = fmul fast float %1780, %1804
  %1807 = fmul fast float %1783, %1805
  %1808 = fmul fast float %1798, %1806
  %1809 = call float @dx.op.tertiary.f32(i32 46, float %1799, float %1807, float %1808)  ; FMad(a,b,c)
  %1810 = fmul fast float %1797, %1806
  %1811 = call float @dx.op.tertiary.f32(i32 46, float %1798, float %1807, float %1810)  ; FMad(a,b,c)
  %1812 = fadd fast float %1789, %1809
  %1813 = fadd fast float %1792, %1811
  %1814 = icmp ugt i32 %1763, 1
  %1815 = icmp ugt i32 %1761, 33554431
  %1816 = or i1 %1815, %1814
  br i1 %1816, label %1817, label %1842

; <label>:1817                                    ; preds = %1744
  %1818 = add i32 %30, 260
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = lshr i32 %1820, 16
  %1822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1821)  ; LegacyF16ToF32(value)
  %1823 = fmul fast float %1785, %1822
  %1824 = call float @dx.op.unary.f32(i32 22, float %1823)  ; Frc(value)
  %1825 = mul nuw nsw i32 %1763, %1764
  %1826 = uitofp i32 %1825 to float
  %1827 = fmul fast float %1824, %1826
  %1828 = call float @dx.op.unary.f32(i32 27, float %1827)  ; Round_ni(value)
  %1829 = fptoui float %1828 to i32
  %1830 = urem i32 %1829, %1763
  %1831 = udiv i32 %1829, %1764
  %1832 = call float @dx.op.unary.f32(i32 22, float %1812)  ; Frc(value)
  %1833 = call float @dx.op.unary.f32(i32 22, float %1813)  ; Frc(value)
  %1834 = uitofp i32 %1830 to float
  %1835 = uitofp i32 %1831 to float
  %1836 = fadd fast float %1832, %1834
  %1837 = fadd fast float %1833, %1835
  %1838 = uitofp i32 %1763 to float
  %1839 = uitofp i32 %1764 to float
  %1840 = fdiv fast float %1836, %1838
  %1841 = fdiv fast float %1837, %1839
  br label %1842

; <label>:1842                                    ; preds = %1817, %1744
  %1843 = phi float [ %1840, %1817 ], [ %1812, %1744 ]
  %1844 = phi float [ %1841, %1817 ], [ %1813, %1744 ]
  %1845 = and i32 %1738, 16777216
  %1846 = icmp eq i32 %1845, 0
  br i1 %1846, label %1956, label %1847

; <label>:1847                                    ; preds = %1842
  %1848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1849 = extractvalue %dx.types.CBufRet.f32 %1848, 0
  %1850 = extractvalue %dx.types.CBufRet.f32 %1848, 1
  %1851 = extractvalue %dx.types.CBufRet.f32 %1848, 2
  %1852 = fadd fast float %1849, %127
  %1853 = fadd fast float %1850, %128
  %1854 = fadd fast float %1851, %129
  %1855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1856 = extractvalue %dx.types.CBufRet.f32 %1855, 0
  %1857 = call float @dx.op.unary.f32(i32 7, float %1856)  ; Saturate(value)
  %1858 = icmp eq i32 %31, 65535
  br i1 %1858, label %1953, label %1859

; <label>:1859                                    ; preds = %1847
  %1860 = lshr i32 %31, 1
  %1861 = shl i32 %1860, 2
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = and i32 %31, 1
  %1865 = icmp ne i32 %1864, 0
  %1866 = lshr i32 %1863, 16
  %1867 = and i32 %1863, 65535
  %1868 = select i1 %1865, i32 %1866, i32 %1867
  %1869 = icmp eq i32 %1868, 65535
  br i1 %1869, label %1949, label %1870

; <label>:1870                                    ; preds = %1859
  %1871 = mul nuw nsw i32 %1868, 40
  %1872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.f32 %1872, 0
  %1874 = extractvalue %dx.types.ResRet.f32 %1872, 1
  %1875 = extractvalue %dx.types.ResRet.f32 %1872, 2
  %1876 = add nuw nsw i32 %1871, 12
  %1877 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.f32 %1877, 0
  %1879 = extractvalue %dx.types.ResRet.f32 %1877, 1
  %1880 = extractvalue %dx.types.ResRet.f32 %1877, 2
  %1881 = add nuw nsw i32 %1871, 24
  %1882 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1883 = extractvalue %dx.types.ResRet.f32 %1882, 0
  %1884 = extractvalue %dx.types.ResRet.f32 %1882, 1
  %1885 = extractvalue %dx.types.ResRet.f32 %1882, 2
  %1886 = add nuw nsw i32 %1871, 36
  %1887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1888 = extractvalue %dx.types.ResRet.f32 %1887, 0
  %1889 = fsub fast float %1852, %1873
  %1890 = fsub fast float %1853, %1874
  %1891 = fsub fast float %1854, %1875
  %1892 = fmul fast float %1888, %1889
  %1893 = fmul fast float %1888, %1890
  %1894 = fmul fast float %1888, %1891
  %1895 = call float @dx.op.unary.f32(i32 27, float %1892)  ; Round_ni(value)
  %1896 = call float @dx.op.unary.f32(i32 27, float %1893)  ; Round_ni(value)
  %1897 = call float @dx.op.unary.f32(i32 27, float %1894)  ; Round_ni(value)
  %1898 = fadd fast float %1895, 5.000000e-01
  %1899 = fadd fast float %1896, 5.000000e-01
  %1900 = fadd fast float %1897, 5.000000e-01
  %1901 = fmul fast float %1898, %1878
  %1902 = fmul fast float %1899, %1879
  %1903 = fmul fast float %1900, %1880
  %1904 = shl i32 %31, 2
  %1905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.i32 %1905, 0
  %1907 = add i32 %1906, 0
  %1908 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1907, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1909 = call float @dx.op.unary.f32(i32 22, float %1901)  ; Frc(value)
  %1910 = call float @dx.op.unary.f32(i32 22, float %1902)  ; Frc(value)
  %1911 = call float @dx.op.unary.f32(i32 22, float %1903)  ; Frc(value)
  %1912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1908, %dx.types.Handle %27, float %1909, float %1910, float %1911, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1913 = extractvalue %dx.types.ResRet.f32 %1912, 0
  %1914 = extractvalue %dx.types.ResRet.f32 %1912, 1
  %1915 = extractvalue %dx.types.ResRet.f32 %1912, 2
  %1916 = fmul fast float %1913, 1.023000e+03
  %1917 = fmul fast float %1914, 1.023000e+03
  %1918 = fmul fast float %1915, 1.023000e+03
  %1919 = fadd fast float %1916, 5.000000e-01
  %1920 = fadd fast float %1917, 5.000000e-01
  %1921 = fadd fast float %1918, 5.000000e-01
  %1922 = call float @dx.op.unary.f32(i32 27, float %1919)  ; Round_ni(value)
  %1923 = call float @dx.op.unary.f32(i32 27, float %1920)  ; Round_ni(value)
  %1924 = call float @dx.op.unary.f32(i32 27, float %1921)  ; Round_ni(value)
  %1925 = fsub fast float %1892, %1895
  %1926 = fsub fast float %1893, %1896
  %1927 = fsub fast float %1894, %1897
  %1928 = fmul fast float %1925, 7.500000e-01
  %1929 = fmul fast float %1926, 7.500000e-01
  %1930 = fmul fast float %1927, 7.500000e-01
  %1931 = fadd fast float %1895, 1.250000e-01
  %1932 = fadd fast float %1931, %1928
  %1933 = fadd fast float %1932, %1922
  %1934 = fadd fast float %1896, 1.250000e-01
  %1935 = fadd fast float %1934, %1929
  %1936 = fadd fast float %1935, %1923
  %1937 = fadd fast float %1897, 1.250000e-01
  %1938 = fadd fast float %1937, %1930
  %1939 = fadd fast float %1938, %1924
  %1940 = fmul fast float %1933, %1883
  %1941 = fmul fast float %1936, %1884
  %1942 = fmul fast float %1939, %1885
  %1943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1944 = extractvalue %dx.types.ResRet.i32 %1943, 0
  %1945 = add i32 %1944, 0
  %1946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1945, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1946, %dx.types.Handle %25, float %1940, float %1941, float %1942, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1948 = extractvalue %dx.types.ResRet.f32 %1947, 0
  br label %1949

; <label>:1949                                    ; preds = %1870, %1859
  %1950 = phi float [ %1948, %1870 ], [ -1.000000e+00, %1859 ]
  %1951 = fadd fast float %1950, %1857
  %1952 = call float @dx.op.unary.f32(i32 7, float %1951)  ; Saturate(value)
  br label %1953

; <label>:1953                                    ; preds = %1949, %1847
  %1954 = phi float [ %1952, %1949 ], [ %1857, %1847 ]
  %1955 = fmul fast float %1954, %395
  br label %1956

; <label>:1956                                    ; preds = %1953, %1842
  %1957 = phi float [ %1955, %1953 ], [ %395, %1842 ]
  %1958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1959 = extractvalue %dx.types.ResRet.i32 %1958, 0
  %1960 = and i32 %1959, 256
  %1961 = icmp eq i32 %1960, 0
  br i1 %1961, label %2008, label %1962

; <label>:1962                                    ; preds = %1956
  %1963 = add i32 %30, 432
  %1964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.i32 %1964, 0
  %1966 = add i32 %1965, 0
  %1967 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1966, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1968 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1967, %dx.types.Handle %61, float %1843, float %1844, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1969 = extractvalue %dx.types.ResRet.f32 %1968, 0
  %1970 = add i32 %30, 132
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = shl i32 %1972, 4
  %1974 = and i32 %1973, 32752
  %1975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1974)  ; LegacyF16ToF32(value)
  %1976 = lshr i32 %1972, 7
  %1977 = and i32 %1976, 32752
  %1978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1977)  ; LegacyF16ToF32(value)
  %1979 = fsub fast float 1.000000e+00, %1957
  %1980 = call float @dx.op.binary.f32(i32 35, float %1979, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1981 = bitcast float %1957 to i32
  %1982 = sitofp i32 %1981 to float
  %1983 = fadd fast float %1982, 0xC1CFBF8940000000
  %1984 = fmul fast float %1978, %1983
  %1985 = fadd fast float %1984, 0x41CFBF8940000000
  %1986 = fptosi float %1985 to i32
  %1987 = bitcast i32 %1986 to float
  %1988 = bitcast float %1980 to i32
  %1989 = sitofp i32 %1988 to float
  %1990 = fadd fast float %1989, 0xC1CFBF8940000000
  %1991 = fmul fast float %1990, %1978
  %1992 = fadd fast float %1991, 0x41CFBF8940000000
  %1993 = fptosi float %1992 to i32
  %1994 = bitcast i32 %1993 to float
  %1995 = fmul fast float %1987, %1975
  %1996 = fmul fast float %1994, %1975
  %1997 = fsub fast float %1980, %1995
  %1998 = fadd fast float %1996, %1980
  %1999 = call float @dx.op.unary.f32(i32 7, float %1997)  ; Saturate(value)
  %2000 = call float @dx.op.unary.f32(i32 7, float %1998)  ; Saturate(value)
  %2001 = fsub fast float %1969, %1999
  %2002 = fsub fast float %2000, %1999
  %2003 = bitcast float %2002 to i32
  %2004 = sub nsw i32 2129859010, %2003
  %2005 = bitcast i32 %2004 to float
  %2006 = fmul fast float %2005, %2001
  %2007 = call float @dx.op.unary.f32(i32 7, float %2006)  ; Saturate(value)
  br label %2008

; <label>:2008                                    ; preds = %1962, %1956
  %2009 = phi float [ %2007, %1962 ], [ %1957, %1956 ]
  %2010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = and i32 %2011, 128
  %2013 = icmp eq i32 %2012, 0
  br i1 %2013, label %2030, label %2014

; <label>:2014                                    ; preds = %2008
  %2015 = add i32 %30, 416
  %2016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.i32 %2016, 0
  %2018 = add i32 %2017, 0
  %2019 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2018, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2020 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2019, %dx.types.Handle %61, float %1843, float %1844, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2021 = extractvalue %dx.types.ResRet.f32 %2020, 0
  %2022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.i32 %2022, 0
  %2024 = and i32 %2023, 524288
  %2025 = icmp ne i32 %2024, 0
  %2026 = fcmp fast ogt float %2021, 0x3FE0101020000000
  %2027 = select i1 %2026, float 1.000000e+00, float 0.000000e+00
  %2028 = select i1 %2025, float %2027, float %2021
  %2029 = fmul fast float %2028, %2009
  br label %2030

; <label>:2030                                    ; preds = %2014, %2008
  %2031 = phi float [ %2029, %2014 ], [ %2009, %2008 ]
  %2032 = fcmp fast ult float %2031, 0x3F70101020000000
  br i1 %2032, label %2575, label %2033

; <label>:2033                                    ; preds = %2030
  %2034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2035 = extractvalue %dx.types.ResRet.i32 %2034, 0
  %2036 = and i32 %2035, 16
  %2037 = icmp eq i32 %2036, 0
  br i1 %2037, label %2236, label %2038

; <label>:2038                                    ; preds = %2033
  %2039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1759, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.i32 %2039, 0
  %2041 = add i32 %30, 368
  %2042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2041, i32 undef)  ; BufferLoad(srv,index,wot)
  %2043 = extractvalue %dx.types.ResRet.i32 %2042, 0
  %2044 = add i32 %2043, 0
  %2045 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2044, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2046 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2045, %dx.types.Handle %60, float %1843, float %1844, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2047 = extractvalue %dx.types.ResRet.f32 %2046, 0
  %2048 = extractvalue %dx.types.ResRet.f32 %2046, 1
  %2049 = extractvalue %dx.types.ResRet.f32 %2046, 2
  %2050 = extractvalue %dx.types.ResRet.f32 %2046, 3
  %2051 = and i32 %2040, 255
  %2052 = uitofp i32 %2051 to float
  %2053 = lshr i32 %2040, 8
  %2054 = and i32 %2053, 255
  %2055 = uitofp i32 %2054 to float
  %2056 = fmul fast float %2050, %2052
  %2057 = fadd fast float %2056, %2055
  %2058 = fmul fast float %2057, 0x3F70101000000000
  %2059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.i32 %2059, 0
  %2061 = and i32 %2060, 512
  %2062 = icmp eq i32 %2061, 0
  br i1 %2062, label %2071, label %2063

; <label>:2063                                    ; preds = %2038
  %2064 = add i32 %30, 448
  %2065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2064, i32 undef)  ; BufferLoad(srv,index,wot)
  %2066 = extractvalue %dx.types.ResRet.i32 %2065, 0
  %2067 = add i32 %2066, 0
  %2068 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2067, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2069 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2068, %dx.types.Handle %61, float %1843, float %1844, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2070 = extractvalue %dx.types.ResRet.f32 %2069, 0
  br label %2071

; <label>:2071                                    ; preds = %2063, %2038
  %2072 = phi float [ %2070, %2063 ], [ 1.000000e+00, %2038 ]
  %2073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.i32 %2073, 0
  %2075 = and i32 %2074, 33554432
  %2076 = icmp eq i32 %2075, 0
  br i1 %2076, label %2183, label %2077

; <label>:2077                                    ; preds = %2071
  %2078 = add i32 %30, 256
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2078, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = and i32 %2080, 65535
  %2082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2081)  ; LegacyF16ToF32(value)
  %2083 = lshr i32 %2080, 16
  %2084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2083)  ; LegacyF16ToF32(value)
  %2085 = add i32 %30, 260
  %2086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.i32 %2086, 0
  %2088 = and i32 %2087, 65535
  %2089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2088)  ; LegacyF16ToF32(value)
  %2090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.i32 %2090, 0
  %2092 = lshr i32 %2091, 24
  %2093 = uitofp i32 %2092 to float
  %2094 = fmul fast float %2093, 0x3F70101020000000
  %2095 = and i32 %2091, 255
  %2096 = uitofp i32 %2095 to float
  %2097 = fmul fast float %2096, 0x3F70101020000000
  %2098 = lshr i32 %2091, 8
  %2099 = and i32 %2098, 255
  %2100 = uitofp i32 %2099 to float
  %2101 = fmul fast float %2100, 0x3F70101020000000
  %2102 = lshr i32 %2091, 16
  %2103 = and i32 %2102, 255
  %2104 = uitofp i32 %2103 to float
  %2105 = fmul fast float %2104, 0x3F70101020000000
  %2106 = add i32 %30, 252
  %2107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2106, i32 undef)  ; BufferLoad(srv,index,wot)
  %2108 = extractvalue %dx.types.ResRet.i32 %2107, 0
  %2109 = lshr i32 %2108, 24
  %2110 = uitofp i32 %2109 to float
  %2111 = fmul fast float %2110, 0x3F70101020000000
  %2112 = and i32 %2108, 255
  %2113 = uitofp i32 %2112 to float
  %2114 = fmul fast float %2113, 0x3F70101020000000
  %2115 = lshr i32 %2108, 8
  %2116 = and i32 %2115, 255
  %2117 = uitofp i32 %2116 to float
  %2118 = fmul fast float %2117, 0x3F70101020000000
  %2119 = lshr i32 %2108, 16
  %2120 = and i32 %2119, 255
  %2121 = uitofp i32 %2120 to float
  %2122 = fmul fast float %2121, 0x3F70101020000000
  %2123 = bitcast float %2047 to i32
  %2124 = ashr i32 %2123, 1
  %2125 = sub nsw i32 1597463174, %2124
  %2126 = bitcast i32 %2125 to float
  %2127 = fmul fast float %2047, 5.000000e-01
  %2128 = fmul fast float %2126, %2126
  %2129 = fmul fast float %2128, %2127
  %2130 = fsub fast float 1.500000e+00, %2129
  %2131 = fmul fast float %2126, %2047
  %2132 = fmul fast float %2131, %2130
  %2133 = bitcast float %2048 to i32
  %2134 = ashr i32 %2133, 1
  %2135 = sub nsw i32 1597463174, %2134
  %2136 = bitcast i32 %2135 to float
  %2137 = fmul fast float %2048, 5.000000e-01
  %2138 = fmul fast float %2136, %2136
  %2139 = fmul fast float %2138, %2137
  %2140 = fsub fast float 1.500000e+00, %2139
  %2141 = fmul fast float %2136, %2048
  %2142 = fmul fast float %2141, %2140
  %2143 = bitcast float %2049 to i32
  %2144 = ashr i32 %2143, 1
  %2145 = sub nsw i32 1597463174, %2144
  %2146 = bitcast i32 %2145 to float
  %2147 = fmul fast float %2049, 5.000000e-01
  %2148 = fmul fast float %2146, %2146
  %2149 = fmul fast float %2148, %2147
  %2150 = fsub fast float 1.500000e+00, %2149
  %2151 = fmul fast float %2146, %2049
  %2152 = fmul fast float %2151, %2150
  %2153 = fsub fast float %2132, %2114
  %2154 = fsub fast float %2142, %2118
  %2155 = fsub fast float %2152, %2122
  %2156 = fmul fast float %2153, %2082
  %2157 = fmul fast float %2154, %2084
  %2158 = fmul fast float %2155, %2089
  %2159 = fadd fast float %2156, %2097
  %2160 = fadd fast float %2157, %2101
  %2161 = fadd fast float %2158, %2105
  %2162 = call float @dx.op.unary.f32(i32 7, float %2159)  ; Saturate(value)
  %2163 = call float @dx.op.unary.f32(i32 7, float %2160)  ; Saturate(value)
  %2164 = call float @dx.op.unary.f32(i32 7, float %2161)  ; Saturate(value)
  %2165 = fmul fast float %2162, %2162
  %2166 = fmul fast float %2163, %2163
  %2167 = fmul fast float %2164, %2164
  %2168 = fsub fast float %2165, %2047
  %2169 = fsub fast float %2166, %2048
  %2170 = fsub fast float %2167, %2049
  %2171 = fmul fast float %2168, %2072
  %2172 = fmul fast float %2169, %2072
  %2173 = fmul fast float %2170, %2072
  %2174 = fadd fast float %2171, %2047
  %2175 = fadd fast float %2172, %2048
  %2176 = fadd fast float %2173, %2049
  %2177 = fadd fast float %2094, %2058
  %2178 = fsub fast float %2177, %2111
  %2179 = call float @dx.op.unary.f32(i32 7, float %2178)  ; Saturate(value)
  %2180 = fsub fast float %2179, %2058
  %2181 = fmul fast float %2180, %2072
  %2182 = fadd fast float %2181, %2058
  br label %2236

; <label>:2183                                    ; preds = %2071
  %2184 = and i32 %2074, 134217728
  %2185 = icmp eq i32 %2184, 0
  br i1 %2185, label %2220, label %2186

; <label>:2186                                    ; preds = %2183
  %2187 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %2188 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %2189 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %2190 = fadd fast float %2187, -5.000000e-01
  %2191 = fadd fast float %2188, -5.000000e-01
  %2192 = fadd fast float %2189, -5.000000e-01
  %2193 = fmul fast float %2190, %2072
  %2194 = fmul fast float %2191, %2072
  %2195 = fmul fast float %2192, %2072
  %2196 = fadd fast float %2193, 5.000000e-01
  %2197 = fadd fast float %2194, 5.000000e-01
  %2198 = fadd fast float %2195, 5.000000e-01
  %2199 = call float @dx.op.unary.f32(i32 24, float %2047)  ; Sqrt(value)
  %2200 = call float @dx.op.unary.f32(i32 24, float %2048)  ; Sqrt(value)
  %2201 = call float @dx.op.unary.f32(i32 24, float %2049)  ; Sqrt(value)
  %2202 = fmul fast float %2196, 2.000000e+00
  %2203 = fsub fast float 1.000000e+00, %2202
  %2204 = fmul fast float %2203, %2199
  %2205 = fadd fast float %2204, %2202
  %2206 = fmul fast float %2205, %2199
  %2207 = fmul fast float %2197, 2.000000e+00
  %2208 = fsub fast float 1.000000e+00, %2207
  %2209 = fmul fast float %2208, %2200
  %2210 = fadd fast float %2209, %2207
  %2211 = fmul fast float %2210, %2200
  %2212 = fmul fast float %2198, 2.000000e+00
  %2213 = fsub fast float 1.000000e+00, %2212
  %2214 = fmul fast float %2213, %2201
  %2215 = fadd fast float %2214, %2212
  %2216 = fmul fast float %2215, %2201
  %2217 = fmul fast float %2206, %2206
  %2218 = fmul fast float %2211, %2211
  %2219 = fmul fast float %2216, %2216
  br label %2236

; <label>:2220                                    ; preds = %2183
  %2221 = fmul fast float %273, %273
  %2222 = fmul fast float %277, %277
  %2223 = fmul fast float %281, %281
  %2224 = fadd fast float %2221, -1.000000e+00
  %2225 = fadd fast float %2222, -1.000000e+00
  %2226 = fadd fast float %2223, -1.000000e+00
  %2227 = fmul fast float %2072, %2224
  %2228 = fmul fast float %2072, %2225
  %2229 = fmul fast float %2072, %2226
  %2230 = fadd fast float %2227, 1.000000e+00
  %2231 = fadd fast float %2228, 1.000000e+00
  %2232 = fadd fast float %2229, 1.000000e+00
  %2233 = fmul fast float %2230, %2047
  %2234 = fmul fast float %2231, %2048
  %2235 = fmul fast float %2232, %2049
  br label %2236

; <label>:2236                                    ; preds = %2220, %2186, %2077, %2033
  %2237 = phi float [ %2182, %2077 ], [ %2058, %2186 ], [ %2058, %2220 ], [ 0x3FA23C0BE0000000, %2033 ]
  %2238 = phi float [ %2174, %2077 ], [ %2217, %2186 ], [ %2233, %2220 ], [ 1.000000e+00, %2033 ]
  %2239 = phi float [ %2175, %2077 ], [ %2218, %2186 ], [ %2234, %2220 ], [ 1.000000e+00, %2033 ]
  %2240 = phi float [ %2176, %2077 ], [ %2219, %2186 ], [ %2235, %2220 ], [ 1.000000e+00, %2033 ]
  %2241 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2242 = extractvalue %dx.types.CBufRet.i32 %2241, 1
  %2243 = and i32 %2242, 1
  %2244 = icmp ne i32 %2243, 0
  %2245 = add i32 %30, 356
  %2246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2245, i32 undef)  ; BufferLoad(srv,index,wot)
  %2247 = extractvalue %dx.types.ResRet.i32 %2246, 0
  %2248 = and i32 %2247, 32
  %2249 = icmp ne i32 %2248, 0
  %2250 = and i1 %2244, %2249
  %2251 = select i1 %2250, float 1.000000e+00, float %2238
  %2252 = select i1 %2250, float 0x3FD3333340000000, float %2239
  %2253 = select i1 %2250, float 0x3FD3333340000000, float %2240
  %2254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2255 = extractvalue %dx.types.ResRet.i32 %2254, 0
  %2256 = and i32 %2255, 32
  %2257 = icmp eq i32 %2256, 0
  br i1 %2257, label %2330, label %2258

; <label>:2258                                    ; preds = %2236
  %2259 = add i32 %30, 124
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = add i32 %30, 384
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2262, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = add i32 %2264, 0
  %2266 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2265, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2267 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2266, %dx.types.Handle %60, float %1843, float %1844, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2268 = extractvalue %dx.types.ResRet.f32 %2267, 0
  %2269 = extractvalue %dx.types.ResRet.f32 %2267, 1
  %2270 = extractvalue %dx.types.ResRet.f32 %2267, 2
  %2271 = extractvalue %dx.types.ResRet.f32 %2267, 3
  %2272 = and i32 %2261, 255
  %2273 = uitofp i32 %2272 to float
  %2274 = lshr i32 %2261, 8
  %2275 = and i32 %2274, 255
  %2276 = uitofp i32 %2275 to float
  %2277 = lshr i32 %2261, 16
  %2278 = and i32 %2277, 255
  %2279 = uitofp i32 %2278 to float
  %2280 = fmul fast float %2279, 0x3F70101000000000
  %2281 = fmul fast float %2268, %2273
  %2282 = fadd fast float %2281, %2276
  %2283 = fmul fast float %2282, 0x3F70101000000000
  %2284 = fadd fast float %2269, -5.000000e-01
  %2285 = fadd fast float %2271, -5.000000e-01
  %2286 = fmul fast float %2284, %2280
  %2287 = fmul fast float %2285, %2280
  %2288 = fadd fast float %2286, 5.000000e-01
  %2289 = fadd fast float %2287, 5.000000e-01
  %2290 = fmul fast float %2288, 2.000000e+00
  %2291 = fadd fast float %2290, -1.000000e+00
  %2292 = fmul fast float %2289, 2.000000e+00
  %2293 = fadd fast float %2292, -1.000000e+00
  %2294 = fadd fast float %2291, %2293
  %2295 = fmul fast float %2294, 5.000000e-01
  %2296 = fsub fast float %2291, %2293
  %2297 = fmul fast float %2296, 5.000000e-01
  %2298 = call float @dx.op.unary.f32(i32 6, float %2295)  ; FAbs(value)
  %2299 = fsub fast float 1.000000e+00, %2298
  %2300 = call float @dx.op.unary.f32(i32 6, float %2297)  ; FAbs(value)
  %2301 = fsub fast float %2299, %2300
  %2302 = call float @dx.op.dot3.f32(i32 55, float %2295, float %2297, float %2301, float %2295, float %2297, float %2301)  ; Dot3(ax,ay,az,bx,by,bz)
  %2303 = call float @dx.op.unary.f32(i32 25, float %2302)  ; Rsqrt(value)
  %2304 = fmul fast float %2295, %2303
  %2305 = fmul fast float %2297, %2303
  %2306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2307 = extractvalue %dx.types.ResRet.i32 %2306, 0
  %2308 = and i32 %2307, 67108864
  %2309 = icmp eq i32 %2308, 0
  br i1 %2309, label %2326, label %2310

; <label>:2310                                    ; preds = %2258
  %2311 = add i32 %30, 312
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = and i32 %2313, 65535
  %2315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2314)  ; LegacyF16ToF32(value)
  %2316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.i32 %2316, 0
  %2318 = and i32 %2317, 65535
  %2319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2318)  ; LegacyF16ToF32(value)
  %2320 = lshr i32 %2313, 16
  %2321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2320)  ; LegacyF16ToF32(value)
  %2322 = fsub fast float %2283, %2321
  %2323 = fmul fast float %2322, %2315
  %2324 = fadd fast float %2323, %2319
  %2325 = call float @dx.op.unary.f32(i32 7, float %2324)  ; Saturate(value)
  br label %2326

; <label>:2326                                    ; preds = %2310, %2258
  %2327 = phi float [ %2325, %2310 ], [ %2283, %2258 ]
  %2328 = call float @dx.op.dot2.f32(i32 54, float %2304, float %2305, float %1747, float %1748)  ; Dot2(ax,ay,bx,by)
  %2329 = call float @dx.op.dot2.f32(i32 54, float %2304, float %2305, float %1749, float %1750)  ; Dot2(ax,ay,bx,by)
  br label %2330

; <label>:2330                                    ; preds = %2326, %2236
  %2331 = phi float [ %2327, %2326 ], [ 0x3FD6666660000000, %2236 ]
  %2332 = phi float [ %2328, %2326 ], [ 0.000000e+00, %2236 ]
  %2333 = phi float [ %2329, %2326 ], [ 0.000000e+00, %2236 ]
  %2334 = phi float [ %2270, %2326 ], [ 1.000000e+00, %2236 ]
  %2335 = add i32 %30, 192
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = lshr i32 %2337, 22
  %2339 = shl nuw nsw i32 %2338, 5
  %2340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2339)  ; LegacyF16ToF32(value)
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = and i32 %2342, 64
  %2344 = icmp eq i32 %2343, 0
  br i1 %2344, label %2378, label %2345

; <label>:2345                                    ; preds = %2330
  %2346 = add i32 %30, 400
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2346, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = add i32 %2348, 0
  %2350 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2349, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2352 = extractvalue %dx.types.ResRet.i32 %2351, 0
  %2353 = and i32 %2352, 131072
  %2354 = icmp eq i32 %2353, 0
  %2355 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2350, %dx.types.Handle %60, float %1843, float %1844, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2356 = extractvalue %dx.types.ResRet.f32 %2355, 0
  %2357 = extractvalue %dx.types.ResRet.f32 %2355, 1
  %2358 = extractvalue %dx.types.ResRet.f32 %2355, 2
  %2359 = fmul fast float %2356, %261
  %2360 = fmul fast float %2357, %264
  %2361 = fmul fast float %2358, %267
  br i1 %2354, label %2368, label %2362

; <label>:2362                                    ; preds = %2345
  %2363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2364 = extractvalue %dx.types.CBufRet.f32 %2363, 0
  %2365 = fmul fast float %2364, %2359
  %2366 = fmul fast float %2364, %2360
  %2367 = fmul fast float %2364, %2361
  br label %2368

; <label>:2368                                    ; preds = %2362, %2345
  %2369 = phi float [ %2365, %2362 ], [ %2359, %2345 ]
  %2370 = phi float [ %2366, %2362 ], [ %2360, %2345 ]
  %2371 = phi float [ %2367, %2362 ], [ %2361, %2345 ]
  %2372 = fmul fast float %2369, %2340
  %2373 = select i1 %171, float %2372, float %2369
  %2374 = call float @dx.op.dot3.f32(i32 55, float %2373, float %2370, float %2371, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2375 = select i1 %171, float 0.000000e+00, float %2369
  %2376 = select i1 %171, float %2374, float %2370
  %2377 = select i1 %171, float 0.000000e+00, float %2371
  br label %2378

; <label>:2378                                    ; preds = %2368, %2330
  %2379 = phi float [ %2375, %2368 ], [ 0.000000e+00, %2330 ]
  %2380 = phi float [ %2376, %2368 ], [ 0.000000e+00, %2330 ]
  %2381 = phi float [ %2377, %2368 ], [ 0.000000e+00, %2330 ]
  %2382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2383 = extractvalue %dx.types.ResRet.i32 %2382, 0
  %2384 = add i32 %30, 128
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2384, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = and i32 %2386, 255
  %2388 = uitofp i32 %2387 to float
  %2389 = lshr i32 %2386, 8
  %2390 = and i32 %2389, 255
  %2391 = uitofp i32 %2390 to float
  %2392 = call float @dx.op.dot3.f32(i32 55, float %2251, float %2252, float %2253, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2393 = fmul fast float %2391, %2392
  %2394 = fadd fast float %2393, %2388
  %2395 = fmul fast float %2394, 0x3F70101020000000
  %2396 = call float @dx.op.unary.f32(i32 7, float %2395)  ; Saturate(value)
  br i1 %1735, label %2397, label %2405

; <label>:2397                                    ; preds = %2378
  %2398 = fsub fast float 1.000000e+00, %2031
  %2399 = fmul fast float %2398, %1724
  %2400 = fmul fast float %2398, %1725
  %2401 = fmul fast float %2398, %1726
  %2402 = fmul fast float %2398, %1727
  %2403 = fmul fast float %2398, %1728
  %2404 = fmul fast float %2398, %1729
  br label %2405

; <label>:2405                                    ; preds = %2397, %2378
  %2406 = phi float [ %2399, %2397 ], [ %1724, %2378 ]
  %2407 = phi float [ %2400, %2397 ], [ %1725, %2378 ]
  %2408 = phi float [ %2401, %2397 ], [ %1726, %2378 ]
  %2409 = phi float [ %2402, %2397 ], [ %1727, %2378 ]
  %2410 = phi float [ %2403, %2397 ], [ %1728, %2378 ]
  %2411 = phi float [ %2404, %2397 ], [ %1729, %2378 ]
  %2412 = and i32 %2383, 3
  %2413 = icmp eq i32 %2412, 3
  br i1 %2413, label %2492, label %2414

; <label>:2414                                    ; preds = %2405
  %2415 = and i32 %2383, 16
  %2416 = icmp ne i32 %2415, 0
  %2417 = select i1 %2416, float %2031, float 0.000000e+00
  %2418 = icmp eq i32 %2412, 0
  br i1 %2418, label %2419, label %2447

; <label>:2419                                    ; preds = %2414
  %2420 = and i32 %2383, 64
  %2421 = icmp ne i32 %2420, 0
  %2422 = select i1 %2421, float %2031, float 0.000000e+00
  %2423 = fsub fast float %2251, %2406
  %2424 = fsub fast float %2252, %2407
  %2425 = fsub fast float %2253, %2408
  %2426 = fmul fast float %2417, %2423
  %2427 = fmul fast float %2417, %2424
  %2428 = fmul fast float %2417, %2425
  %2429 = fadd fast float %2426, %2406
  %2430 = fadd fast float %2427, %2407
  %2431 = fadd fast float %2428, %2408
  %2432 = fsub fast float %2237, %1730
  %2433 = fmul fast float %2417, %2432
  %2434 = fadd fast float %2433, %1730
  %2435 = fsub fast float %2379, %2409
  %2436 = fsub fast float %2380, %2410
  %2437 = fsub fast float %2381, %2411
  %2438 = fmul fast float %2422, %2435
  %2439 = fmul fast float %2422, %2436
  %2440 = fmul fast float %2422, %2437
  %2441 = fadd fast float %2438, %2409
  %2442 = fadd fast float %2439, %2410
  %2443 = fadd fast float %2440, %2411
  %2444 = fsub fast float %2396, %1733
  %2445 = fmul fast float %2417, %2444
  %2446 = fadd fast float %2445, %1733
  br label %2492

; <label>:2447                                    ; preds = %2414
  %2448 = icmp eq i32 %2412, 1
  br i1 %2448, label %2449, label %2462

; <label>:2449                                    ; preds = %2447
  %2450 = fadd fast float %2251, -1.000000e+00
  %2451 = fadd fast float %2252, -1.000000e+00
  %2452 = fadd fast float %2253, -1.000000e+00
  %2453 = fmul fast float %2417, %2450
  %2454 = fmul fast float %2417, %2451
  %2455 = fmul fast float %2417, %2452
  %2456 = fadd fast float %2453, 1.000000e+00
  %2457 = fadd fast float %2454, 1.000000e+00
  %2458 = fadd fast float %2455, 1.000000e+00
  %2459 = fmul fast float %2456, %2406
  %2460 = fmul fast float %2457, %2407
  %2461 = fmul fast float %2458, %2408
  br label %2492

; <label>:2462                                    ; preds = %2447
  %2463 = icmp eq i32 %2412, 2
  br i1 %2463, label %2464, label %2492

; <label>:2464                                    ; preds = %2462
  %2465 = call float @dx.op.unary.f32(i32 24, float %2251)  ; Sqrt(value)
  %2466 = call float @dx.op.unary.f32(i32 24, float %2252)  ; Sqrt(value)
  %2467 = call float @dx.op.unary.f32(i32 24, float %2253)  ; Sqrt(value)
  %2468 = fadd fast float %2465, -5.000000e-01
  %2469 = fadd fast float %2466, -5.000000e-01
  %2470 = fadd fast float %2467, -5.000000e-01
  %2471 = fmul fast float %2468, %2417
  %2472 = fmul fast float %2469, %2417
  %2473 = fmul fast float %2470, %2417
  %2474 = fadd fast float %2471, 5.000000e-01
  %2475 = fadd fast float %2472, 5.000000e-01
  %2476 = fadd fast float %2473, 5.000000e-01
  %2477 = fmul fast float %2474, 2.000000e+00
  %2478 = fsub fast float 1.000000e+00, %2477
  %2479 = fmul fast float %2478, %2406
  %2480 = fadd fast float %2479, %2477
  %2481 = fmul fast float %2480, %2406
  %2482 = fmul fast float %2475, 2.000000e+00
  %2483 = fsub fast float 1.000000e+00, %2482
  %2484 = fmul fast float %2483, %2407
  %2485 = fadd fast float %2484, %2482
  %2486 = fmul fast float %2485, %2407
  %2487 = fmul fast float %2476, 2.000000e+00
  %2488 = fsub fast float 1.000000e+00, %2487
  %2489 = fmul fast float %2488, %2408
  %2490 = fadd fast float %2489, %2487
  %2491 = fmul fast float %2490, %2408
  br label %2492

; <label>:2492                                    ; preds = %2464, %2462, %2449, %2419, %2405
  %2493 = phi float [ %2406, %2405 ], [ %2481, %2464 ], [ %2406, %2462 ], [ %2459, %2449 ], [ %2429, %2419 ]
  %2494 = phi float [ %2407, %2405 ], [ %2486, %2464 ], [ %2407, %2462 ], [ %2460, %2449 ], [ %2430, %2419 ]
  %2495 = phi float [ %2408, %2405 ], [ %2491, %2464 ], [ %2408, %2462 ], [ %2461, %2449 ], [ %2431, %2419 ]
  %2496 = phi float [ %2409, %2405 ], [ %2409, %2464 ], [ %2409, %2462 ], [ %2409, %2449 ], [ %2441, %2419 ]
  %2497 = phi float [ %2410, %2405 ], [ %2410, %2464 ], [ %2410, %2462 ], [ %2410, %2449 ], [ %2442, %2419 ]
  %2498 = phi float [ %2411, %2405 ], [ %2411, %2464 ], [ %2411, %2462 ], [ %2411, %2449 ], [ %2443, %2419 ]
  %2499 = phi float [ %1730, %2405 ], [ %1730, %2464 ], [ %1730, %2462 ], [ %1730, %2449 ], [ %2434, %2419 ]
  %2500 = phi float [ %1733, %2405 ], [ %1733, %2464 ], [ %1733, %2462 ], [ %1733, %2449 ], [ %2446, %2419 ]
  %2501 = and i32 %2383, 12
  %2502 = icmp eq i32 %2501, 12
  br i1 %2502, label %2575, label %2503

; <label>:2503                                    ; preds = %2492
  %2504 = and i32 %2383, 2097184
  %2505 = icmp eq i32 %2504, 2097184
  %2506 = select i1 %2505, float %2031, float 0.000000e+00
  %2507 = and i32 %2383, 4194336
  %2508 = icmp eq i32 %2507, 4194336
  %2509 = select i1 %2508, float %2031, float 0.000000e+00
  %2510 = and i32 %2383, 8388640
  %2511 = icmp eq i32 %2510, 8388640
  %2512 = select i1 %2511, float %2031, float 0.000000e+00
  %2513 = icmp eq i32 %2501, 0
  br i1 %2513, label %2514, label %2527

; <label>:2514                                    ; preds = %2503
  %2515 = fsub fast float %2332, %1722
  %2516 = fsub fast float %2333, %1723
  %2517 = fmul fast float %2506, %2515
  %2518 = fmul fast float %2506, %2516
  %2519 = fadd fast float %2517, %1722
  %2520 = fadd fast float %2518, %1723
  %2521 = fsub fast float %2334, %1732
  %2522 = fmul fast float %2509, %2521
  %2523 = fadd fast float %2522, %1732
  %2524 = fsub fast float %2331, %1731
  %2525 = fmul fast float %2512, %2524
  %2526 = fadd fast float %2525, %1731
  br label %2575

; <label>:2527                                    ; preds = %2503
  %2528 = icmp eq i32 %2501, 4
  br i1 %2528, label %2529, label %2561

; <label>:2529                                    ; preds = %2527
  %2530 = fmul fast float %2506, %2332
  %2531 = fmul fast float %2506, %2333
  %2532 = fadd fast float %2530, %1722
  %2533 = fadd fast float %2531, %1723
  %2534 = call float @dx.op.binary.f32(i32 36, float %1732, float %2334)  ; FMin(a,b)
  %2535 = fsub fast float %2534, %1732
  %2536 = fmul fast float %2535, %2509
  %2537 = fadd fast float %2536, %1732
  %2538 = fadd fast float %2331, %1731
  %2539 = fmul fast float %2538, 0x3FF337FAE0000000
  %2540 = fmul fast float %1731, %1731
  %2541 = fmul fast float %2331, %2331
  %2542 = fadd fast float %2541, %2540
  %2543 = fmul fast float %2542, 0x3FE5152B00000000
  %2544 = fmul fast float %1731, 0xBFCC1F85E0000000
  %2545 = fmul fast float %2544, %2331
  %2546 = fadd fast float %2545, 0xBFE1363700000000
  %2547 = fadd fast float %2546, %2539
  %2548 = fsub fast float %2547, %2543
  %2549 = fmul fast float %2538, 0x3FBA6F0D00000000
  %2550 = fmul fast float %2542, 0x3FD0432880000000
  %2551 = fmul fast float %1731, 0xBFEF110800000000
  %2552 = fmul fast float %2551, %2331
  %2553 = fadd fast float %2552, 1.000000e+00
  %2554 = fsub fast float %2553, %2549
  %2555 = fadd fast float %2554, %2550
  %2556 = fdiv fast float %2548, %2555
  %2557 = call float @dx.op.unary.f32(i32 7, float %2556)  ; Saturate(value)
  %2558 = fsub fast float %2557, %1731
  %2559 = fmul fast float %2558, %2512
  %2560 = fadd fast float %2559, %1731
  br label %2575

; <label>:2561                                    ; preds = %2527
  %2562 = icmp eq i32 %2501, 8
  br i1 %2562, label %2563, label %2575

; <label>:2563                                    ; preds = %2561
  %2564 = fmul fast float %2506, %2332
  %2565 = fmul fast float %2506, %2333
  %2566 = fadd fast float %2564, %1722
  %2567 = fadd fast float %2565, %1723
  %2568 = call float @dx.op.binary.f32(i32 36, float %1732, float %2334)  ; FMin(a,b)
  %2569 = fsub fast float %2568, %1732
  %2570 = fmul fast float %2569, %2509
  %2571 = fadd fast float %2570, %1732
  %2572 = fsub fast float %2331, %1731
  %2573 = fmul fast float %2512, %2572
  %2574 = fadd fast float %2573, %1731
  br label %2575

; <label>:2575                                    ; preds = %2563, %2561, %2529, %2514, %2492, %2030, %1734, %1721
  %2576 = phi float [ %1722, %2492 ], [ %1722, %2030 ], [ %1722, %1721 ], [ %2566, %2563 ], [ %1722, %2561 ], [ %2532, %2529 ], [ %2519, %2514 ], [ %1722, %1734 ]
  %2577 = phi float [ %1723, %2492 ], [ %1723, %2030 ], [ %1723, %1721 ], [ %2567, %2563 ], [ %1723, %2561 ], [ %2533, %2529 ], [ %2520, %2514 ], [ %1723, %1734 ]
  %2578 = phi float [ %2493, %2492 ], [ %1724, %2030 ], [ %1724, %1721 ], [ %2493, %2563 ], [ %2493, %2561 ], [ %2493, %2529 ], [ %2493, %2514 ], [ %1724, %1734 ]
  %2579 = phi float [ %2494, %2492 ], [ %1725, %2030 ], [ %1725, %1721 ], [ %2494, %2563 ], [ %2494, %2561 ], [ %2494, %2529 ], [ %2494, %2514 ], [ %1725, %1734 ]
  %2580 = phi float [ %2495, %2492 ], [ %1726, %2030 ], [ %1726, %1721 ], [ %2495, %2563 ], [ %2495, %2561 ], [ %2495, %2529 ], [ %2495, %2514 ], [ %1726, %1734 ]
  %2581 = phi float [ %2496, %2492 ], [ %1727, %2030 ], [ %1727, %1721 ], [ %2496, %2563 ], [ %2496, %2561 ], [ %2496, %2529 ], [ %2496, %2514 ], [ %1727, %1734 ]
  %2582 = phi float [ %2497, %2492 ], [ %1728, %2030 ], [ %1728, %1721 ], [ %2497, %2563 ], [ %2497, %2561 ], [ %2497, %2529 ], [ %2497, %2514 ], [ %1728, %1734 ]
  %2583 = phi float [ %2498, %2492 ], [ %1729, %2030 ], [ %1729, %1721 ], [ %2498, %2563 ], [ %2498, %2561 ], [ %2498, %2529 ], [ %2498, %2514 ], [ %1729, %1734 ]
  %2584 = phi float [ %2499, %2492 ], [ %1730, %2030 ], [ %1730, %1721 ], [ %2499, %2563 ], [ %2499, %2561 ], [ %2499, %2529 ], [ %2499, %2514 ], [ %1730, %1734 ]
  %2585 = phi float [ %1731, %2492 ], [ %1731, %2030 ], [ %1731, %1721 ], [ %2574, %2563 ], [ %1731, %2561 ], [ %2560, %2529 ], [ %2526, %2514 ], [ %1731, %1734 ]
  %2586 = phi float [ %1732, %2492 ], [ %1732, %2030 ], [ %1732, %1721 ], [ %2571, %2563 ], [ %1732, %2561 ], [ %2537, %2529 ], [ %2523, %2514 ], [ %1732, %1734 ]
  %2587 = phi float [ %2500, %2492 ], [ %1733, %2030 ], [ %1733, %1721 ], [ %2500, %2563 ], [ %2500, %2561 ], [ %2500, %2529 ], [ %2500, %2514 ], [ %1733, %1734 ]
  br i1 %348, label %3429, label %2588

; <label>:2588                                    ; preds = %2575
  %2589 = icmp ult i32 %399, 4
  %2590 = add i32 %30, 72
  %2591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %2592 = extractvalue %dx.types.ResRet.i32 %2591, 0
  %2593 = add i32 %30, 76
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = or i32 %2595, %2592
  %2597 = icmp eq i32 %2596, 0
  br i1 %2597, label %3429, label %2598

; <label>:2598                                    ; preds = %2588
  %2599 = and i32 %2592, 262144
  %2600 = icmp ne i32 %2599, 0
  %2601 = select i1 %2600, float %32, float 1.000000e+00
  %2602 = select i1 %2600, float %33, float 0.000000e+00
  %2603 = select i1 %2600, float %34, float 0.000000e+00
  %2604 = select i1 %2600, float %35, float 1.000000e+00
  %2605 = select i1 %2600, float %36, float %52
  %2606 = select i1 %2600, float %37, float %53
  %2607 = add i32 %30, 332
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = lshr i32 %2609, 16
  %2611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2610)  ; LegacyF16ToF32(value)
  %2612 = fmul fast float %2611, 0x3F50624DE0000000
  %2613 = add i32 %30, 136
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2613, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = lshr i32 %2615, 16
  %2617 = and i32 %2616, 255
  %2618 = lshr i32 %2615, 24
  %2619 = add i32 %30, 340
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = and i32 %2621, 65535
  %2623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2622)  ; LegacyF16ToF32(value)
  %2624 = lshr i32 %2621, 16
  %2625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2624)  ; LegacyF16ToF32(value)
  %2626 = add i32 %30, 80
  %2627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2626, i32 undef)  ; BufferLoad(srv,index,wot)
  %2628 = extractvalue %dx.types.ResRet.i32 %2627, 0
  %2629 = lshr i32 %2628, 22
  %2630 = shl nuw nsw i32 %2629, 5
  %2631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2630)  ; LegacyF16ToF32(value)
  %2632 = shl i32 %2628, 4
  %2633 = and i32 %2632, 32752
  %2634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2633)  ; LegacyF16ToF32(value)
  %2635 = lshr i32 %2628, 7
  %2636 = and i32 %2635, 32752
  %2637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2636)  ; LegacyF16ToF32(value)
  %2638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2639 = extractvalue %dx.types.CBufRet.f32 %2638, 3
  %2640 = fmul fast float %2639, 1.000000e+03
  %2641 = fmul fast float %338, %2640
  %2642 = call float @dx.op.unary.f32(i32 22, float %2641)  ; Frc(value)
  %2643 = fadd fast float %2642, %328
  %2644 = fmul fast float %339, %2640
  %2645 = call float @dx.op.unary.f32(i32 22, float %2644)  ; Frc(value)
  %2646 = fadd fast float %2645, %330
  %2647 = fmul fast float %2612, %2640
  %2648 = call float @dx.op.unary.f32(i32 22, float %2647)  ; Frc(value)
  %2649 = fmul fast float %2648, 0x401921FB60000000
  %2650 = fadd fast float %2649, %2631
  %2651 = call float @dx.op.unary.f32(i32 13, float %2650)  ; Sin(value)
  %2652 = call float @dx.op.unary.f32(i32 12, float %2650)  ; Cos(value)
  %2653 = fsub fast float -0.000000e+00, %2651
  %2654 = fadd fast float %2605, -5.000000e-01
  %2655 = fadd fast float %2606, -5.000000e-01
  %2656 = fmul fast float %2623, %2654
  %2657 = fmul fast float %2625, %2655
  %2658 = fadd fast float %2656, 5.000000e-01
  %2659 = fadd fast float %2657, 5.000000e-01
  %2660 = fmul fast float %2634, %2658
  %2661 = fmul fast float %2637, %2659
  %2662 = fmul fast float %2652, %2660
  %2663 = call float @dx.op.tertiary.f32(i32 46, float %2653, float %2661, float %2662)  ; FMad(a,b,c)
  %2664 = fmul fast float %2651, %2660
  %2665 = call float @dx.op.tertiary.f32(i32 46, float %2652, float %2661, float %2664)  ; FMad(a,b,c)
  %2666 = fadd fast float %2643, %2663
  %2667 = fadd fast float %2646, %2665
  %2668 = icmp ugt i32 %2617, 1
  %2669 = icmp ugt i32 %2615, 33554431
  %2670 = or i1 %2669, %2668
  br i1 %2670, label %2671, label %2696

; <label>:2671                                    ; preds = %2598
  %2672 = add i32 %30, 276
  %2673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2672, i32 undef)  ; BufferLoad(srv,index,wot)
  %2674 = extractvalue %dx.types.ResRet.i32 %2673, 0
  %2675 = lshr i32 %2674, 16
  %2676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2675)  ; LegacyF16ToF32(value)
  %2677 = fmul fast float %2639, %2676
  %2678 = call float @dx.op.unary.f32(i32 22, float %2677)  ; Frc(value)
  %2679 = mul nuw nsw i32 %2617, %2618
  %2680 = uitofp i32 %2679 to float
  %2681 = fmul fast float %2678, %2680
  %2682 = call float @dx.op.unary.f32(i32 27, float %2681)  ; Round_ni(value)
  %2683 = fptoui float %2682 to i32
  %2684 = urem i32 %2683, %2617
  %2685 = udiv i32 %2683, %2618
  %2686 = call float @dx.op.unary.f32(i32 22, float %2666)  ; Frc(value)
  %2687 = call float @dx.op.unary.f32(i32 22, float %2667)  ; Frc(value)
  %2688 = uitofp i32 %2684 to float
  %2689 = uitofp i32 %2685 to float
  %2690 = fadd fast float %2686, %2688
  %2691 = fadd fast float %2687, %2689
  %2692 = uitofp i32 %2617 to float
  %2693 = uitofp i32 %2618 to float
  %2694 = fdiv fast float %2690, %2692
  %2695 = fdiv fast float %2691, %2693
  br label %2696

; <label>:2696                                    ; preds = %2671, %2598
  %2697 = phi float [ %2694, %2671 ], [ %2666, %2598 ]
  %2698 = phi float [ %2695, %2671 ], [ %2667, %2598 ]
  %2699 = and i32 %2592, 16777216
  %2700 = icmp eq i32 %2699, 0
  br i1 %2700, label %2810, label %2701

; <label>:2701                                    ; preds = %2696
  %2702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2703 = extractvalue %dx.types.CBufRet.f32 %2702, 0
  %2704 = extractvalue %dx.types.CBufRet.f32 %2702, 1
  %2705 = extractvalue %dx.types.CBufRet.f32 %2702, 2
  %2706 = fadd fast float %2703, %127
  %2707 = fadd fast float %2704, %128
  %2708 = fadd fast float %2705, %129
  %2709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2710 = extractvalue %dx.types.CBufRet.f32 %2709, 0
  %2711 = call float @dx.op.unary.f32(i32 7, float %2710)  ; Saturate(value)
  %2712 = icmp eq i32 %31, 65535
  br i1 %2712, label %2807, label %2713

; <label>:2713                                    ; preds = %2701
  %2714 = lshr i32 %31, 1
  %2715 = shl i32 %2714, 2
  %2716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2715, i32 undef)  ; BufferLoad(srv,index,wot)
  %2717 = extractvalue %dx.types.ResRet.i32 %2716, 0
  %2718 = and i32 %31, 1
  %2719 = icmp ne i32 %2718, 0
  %2720 = lshr i32 %2717, 16
  %2721 = and i32 %2717, 65535
  %2722 = select i1 %2719, i32 %2720, i32 %2721
  %2723 = icmp eq i32 %2722, 65535
  br i1 %2723, label %2803, label %2724

; <label>:2724                                    ; preds = %2713
  %2725 = mul nuw nsw i32 %2722, 40
  %2726 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2727 = extractvalue %dx.types.ResRet.f32 %2726, 0
  %2728 = extractvalue %dx.types.ResRet.f32 %2726, 1
  %2729 = extractvalue %dx.types.ResRet.f32 %2726, 2
  %2730 = add nuw nsw i32 %2725, 12
  %2731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %2732 = extractvalue %dx.types.ResRet.f32 %2731, 0
  %2733 = extractvalue %dx.types.ResRet.f32 %2731, 1
  %2734 = extractvalue %dx.types.ResRet.f32 %2731, 2
  %2735 = add nuw nsw i32 %2725, 24
  %2736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2735, i32 undef)  ; BufferLoad(srv,index,wot)
  %2737 = extractvalue %dx.types.ResRet.f32 %2736, 0
  %2738 = extractvalue %dx.types.ResRet.f32 %2736, 1
  %2739 = extractvalue %dx.types.ResRet.f32 %2736, 2
  %2740 = add nuw nsw i32 %2725, 36
  %2741 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2742 = extractvalue %dx.types.ResRet.f32 %2741, 0
  %2743 = fsub fast float %2706, %2727
  %2744 = fsub fast float %2707, %2728
  %2745 = fsub fast float %2708, %2729
  %2746 = fmul fast float %2742, %2743
  %2747 = fmul fast float %2742, %2744
  %2748 = fmul fast float %2742, %2745
  %2749 = call float @dx.op.unary.f32(i32 27, float %2746)  ; Round_ni(value)
  %2750 = call float @dx.op.unary.f32(i32 27, float %2747)  ; Round_ni(value)
  %2751 = call float @dx.op.unary.f32(i32 27, float %2748)  ; Round_ni(value)
  %2752 = fadd fast float %2749, 5.000000e-01
  %2753 = fadd fast float %2750, 5.000000e-01
  %2754 = fadd fast float %2751, 5.000000e-01
  %2755 = fmul fast float %2752, %2732
  %2756 = fmul fast float %2753, %2733
  %2757 = fmul fast float %2754, %2734
  %2758 = shl i32 %31, 2
  %2759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2760 = extractvalue %dx.types.ResRet.i32 %2759, 0
  %2761 = add i32 %2760, 0
  %2762 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2761, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2763 = call float @dx.op.unary.f32(i32 22, float %2755)  ; Frc(value)
  %2764 = call float @dx.op.unary.f32(i32 22, float %2756)  ; Frc(value)
  %2765 = call float @dx.op.unary.f32(i32 22, float %2757)  ; Frc(value)
  %2766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2762, %dx.types.Handle %27, float %2763, float %2764, float %2765, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2767 = extractvalue %dx.types.ResRet.f32 %2766, 0
  %2768 = extractvalue %dx.types.ResRet.f32 %2766, 1
  %2769 = extractvalue %dx.types.ResRet.f32 %2766, 2
  %2770 = fmul fast float %2767, 1.023000e+03
  %2771 = fmul fast float %2768, 1.023000e+03
  %2772 = fmul fast float %2769, 1.023000e+03
  %2773 = fadd fast float %2770, 5.000000e-01
  %2774 = fadd fast float %2771, 5.000000e-01
  %2775 = fadd fast float %2772, 5.000000e-01
  %2776 = call float @dx.op.unary.f32(i32 27, float %2773)  ; Round_ni(value)
  %2777 = call float @dx.op.unary.f32(i32 27, float %2774)  ; Round_ni(value)
  %2778 = call float @dx.op.unary.f32(i32 27, float %2775)  ; Round_ni(value)
  %2779 = fsub fast float %2746, %2749
  %2780 = fsub fast float %2747, %2750
  %2781 = fsub fast float %2748, %2751
  %2782 = fmul fast float %2779, 7.500000e-01
  %2783 = fmul fast float %2780, 7.500000e-01
  %2784 = fmul fast float %2781, 7.500000e-01
  %2785 = fadd fast float %2749, 1.250000e-01
  %2786 = fadd fast float %2785, %2782
  %2787 = fadd fast float %2786, %2776
  %2788 = fadd fast float %2750, 1.250000e-01
  %2789 = fadd fast float %2788, %2783
  %2790 = fadd fast float %2789, %2777
  %2791 = fadd fast float %2751, 1.250000e-01
  %2792 = fadd fast float %2791, %2784
  %2793 = fadd fast float %2792, %2778
  %2794 = fmul fast float %2787, %2737
  %2795 = fmul fast float %2790, %2738
  %2796 = fmul fast float %2793, %2739
  %2797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2798 = extractvalue %dx.types.ResRet.i32 %2797, 0
  %2799 = add i32 %2798, 0
  %2800 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2799, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2800, %dx.types.Handle %25, float %2794, float %2795, float %2796, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2802 = extractvalue %dx.types.ResRet.f32 %2801, 0
  br label %2803

; <label>:2803                                    ; preds = %2724, %2713
  %2804 = phi float [ %2802, %2724 ], [ -1.000000e+00, %2713 ]
  %2805 = fadd fast float %2804, %2711
  %2806 = call float @dx.op.unary.f32(i32 7, float %2805)  ; Saturate(value)
  br label %2807

; <label>:2807                                    ; preds = %2803, %2701
  %2808 = phi float [ %2806, %2803 ], [ %2711, %2701 ]
  %2809 = fmul fast float %2808, %394
  br label %2810

; <label>:2810                                    ; preds = %2807, %2696
  %2811 = phi float [ %2809, %2807 ], [ %394, %2696 ]
  %2812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %2813 = extractvalue %dx.types.ResRet.i32 %2812, 0
  %2814 = and i32 %2813, 256
  %2815 = icmp eq i32 %2814, 0
  br i1 %2815, label %2862, label %2816

; <label>:2816                                    ; preds = %2810
  %2817 = add i32 %30, 436
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = add i32 %2819, 0
  %2821 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2820, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2822 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2821, %dx.types.Handle %61, float %2697, float %2698, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2823 = extractvalue %dx.types.ResRet.f32 %2822, 0
  %2824 = add i32 %30, 148
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2824, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = shl i32 %2826, 4
  %2828 = and i32 %2827, 32752
  %2829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2828)  ; LegacyF16ToF32(value)
  %2830 = lshr i32 %2826, 7
  %2831 = and i32 %2830, 32752
  %2832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2831)  ; LegacyF16ToF32(value)
  %2833 = fsub fast float 1.000000e+00, %2811
  %2834 = call float @dx.op.binary.f32(i32 35, float %2833, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2835 = bitcast float %2811 to i32
  %2836 = sitofp i32 %2835 to float
  %2837 = fadd fast float %2836, 0xC1CFBF8940000000
  %2838 = fmul fast float %2832, %2837
  %2839 = fadd fast float %2838, 0x41CFBF8940000000
  %2840 = fptosi float %2839 to i32
  %2841 = bitcast i32 %2840 to float
  %2842 = bitcast float %2834 to i32
  %2843 = sitofp i32 %2842 to float
  %2844 = fadd fast float %2843, 0xC1CFBF8940000000
  %2845 = fmul fast float %2844, %2832
  %2846 = fadd fast float %2845, 0x41CFBF8940000000
  %2847 = fptosi float %2846 to i32
  %2848 = bitcast i32 %2847 to float
  %2849 = fmul fast float %2841, %2829
  %2850 = fmul fast float %2848, %2829
  %2851 = fsub fast float %2834, %2849
  %2852 = fadd fast float %2850, %2834
  %2853 = call float @dx.op.unary.f32(i32 7, float %2851)  ; Saturate(value)
  %2854 = call float @dx.op.unary.f32(i32 7, float %2852)  ; Saturate(value)
  %2855 = fsub fast float %2823, %2853
  %2856 = fsub fast float %2854, %2853
  %2857 = bitcast float %2856 to i32
  %2858 = sub nsw i32 2129859010, %2857
  %2859 = bitcast i32 %2858 to float
  %2860 = fmul fast float %2859, %2855
  %2861 = call float @dx.op.unary.f32(i32 7, float %2860)  ; Saturate(value)
  br label %2862

; <label>:2862                                    ; preds = %2816, %2810
  %2863 = phi float [ %2861, %2816 ], [ %2811, %2810 ]
  %2864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %2865 = extractvalue %dx.types.ResRet.i32 %2864, 0
  %2866 = and i32 %2865, 128
  %2867 = icmp eq i32 %2866, 0
  br i1 %2867, label %2884, label %2868

; <label>:2868                                    ; preds = %2862
  %2869 = add i32 %30, 420
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = add i32 %2871, 0
  %2873 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2872, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2874 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2873, %dx.types.Handle %61, float %2697, float %2698, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2875 = extractvalue %dx.types.ResRet.f32 %2874, 0
  %2876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %2877 = extractvalue %dx.types.ResRet.i32 %2876, 0
  %2878 = and i32 %2877, 524288
  %2879 = icmp ne i32 %2878, 0
  %2880 = fcmp fast ogt float %2875, 0x3FE0101020000000
  %2881 = select i1 %2880, float 1.000000e+00, float 0.000000e+00
  %2882 = select i1 %2879, float %2881, float %2875
  %2883 = fmul fast float %2882, %2863
  br label %2884

; <label>:2884                                    ; preds = %2868, %2862
  %2885 = phi float [ %2883, %2868 ], [ %2863, %2862 ]
  %2886 = fcmp fast ult float %2885, 0x3F70101020000000
  br i1 %2886, label %3429, label %2887

; <label>:2887                                    ; preds = %2884
  %2888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %2889 = extractvalue %dx.types.ResRet.i32 %2888, 0
  %2890 = and i32 %2889, 16
  %2891 = icmp eq i32 %2890, 0
  br i1 %2891, label %3090, label %2892

; <label>:2892                                    ; preds = %2887
  %2893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2613, i32 undef)  ; BufferLoad(srv,index,wot)
  %2894 = extractvalue %dx.types.ResRet.i32 %2893, 0
  %2895 = add i32 %30, 372
  %2896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.i32 %2896, 0
  %2898 = add i32 %2897, 0
  %2899 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2898, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2900 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2899, %dx.types.Handle %60, float %2697, float %2698, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2901 = extractvalue %dx.types.ResRet.f32 %2900, 0
  %2902 = extractvalue %dx.types.ResRet.f32 %2900, 1
  %2903 = extractvalue %dx.types.ResRet.f32 %2900, 2
  %2904 = extractvalue %dx.types.ResRet.f32 %2900, 3
  %2905 = and i32 %2894, 255
  %2906 = uitofp i32 %2905 to float
  %2907 = lshr i32 %2894, 8
  %2908 = and i32 %2907, 255
  %2909 = uitofp i32 %2908 to float
  %2910 = fmul fast float %2904, %2906
  %2911 = fadd fast float %2910, %2909
  %2912 = fmul fast float %2911, 0x3F70101000000000
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = and i32 %2914, 512
  %2916 = icmp eq i32 %2915, 0
  br i1 %2916, label %2925, label %2917

; <label>:2917                                    ; preds = %2892
  %2918 = add i32 %30, 452
  %2919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2918, i32 undef)  ; BufferLoad(srv,index,wot)
  %2920 = extractvalue %dx.types.ResRet.i32 %2919, 0
  %2921 = add i32 %2920, 0
  %2922 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2921, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2923 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2922, %dx.types.Handle %61, float %2697, float %2698, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2924 = extractvalue %dx.types.ResRet.f32 %2923, 0
  br label %2925

; <label>:2925                                    ; preds = %2917, %2892
  %2926 = phi float [ %2924, %2917 ], [ 1.000000e+00, %2892 ]
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = and i32 %2928, 33554432
  %2930 = icmp eq i32 %2929, 0
  br i1 %2930, label %3037, label %2931

; <label>:2931                                    ; preds = %2925
  %2932 = add i32 %30, 272
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2932, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = and i32 %2934, 65535
  %2936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2935)  ; LegacyF16ToF32(value)
  %2937 = lshr i32 %2934, 16
  %2938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2937)  ; LegacyF16ToF32(value)
  %2939 = add i32 %30, 276
  %2940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2939, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.i32 %2940, 0
  %2942 = and i32 %2941, 65535
  %2943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2942)  ; LegacyF16ToF32(value)
  %2944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %2945 = extractvalue %dx.types.ResRet.i32 %2944, 0
  %2946 = lshr i32 %2945, 24
  %2947 = uitofp i32 %2946 to float
  %2948 = fmul fast float %2947, 0x3F70101020000000
  %2949 = and i32 %2945, 255
  %2950 = uitofp i32 %2949 to float
  %2951 = fmul fast float %2950, 0x3F70101020000000
  %2952 = lshr i32 %2945, 8
  %2953 = and i32 %2952, 255
  %2954 = uitofp i32 %2953 to float
  %2955 = fmul fast float %2954, 0x3F70101020000000
  %2956 = lshr i32 %2945, 16
  %2957 = and i32 %2956, 255
  %2958 = uitofp i32 %2957 to float
  %2959 = fmul fast float %2958, 0x3F70101020000000
  %2960 = add i32 %30, 268
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2960, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = lshr i32 %2962, 24
  %2964 = uitofp i32 %2963 to float
  %2965 = fmul fast float %2964, 0x3F70101020000000
  %2966 = and i32 %2962, 255
  %2967 = uitofp i32 %2966 to float
  %2968 = fmul fast float %2967, 0x3F70101020000000
  %2969 = lshr i32 %2962, 8
  %2970 = and i32 %2969, 255
  %2971 = uitofp i32 %2970 to float
  %2972 = fmul fast float %2971, 0x3F70101020000000
  %2973 = lshr i32 %2962, 16
  %2974 = and i32 %2973, 255
  %2975 = uitofp i32 %2974 to float
  %2976 = fmul fast float %2975, 0x3F70101020000000
  %2977 = bitcast float %2901 to i32
  %2978 = ashr i32 %2977, 1
  %2979 = sub nsw i32 1597463174, %2978
  %2980 = bitcast i32 %2979 to float
  %2981 = fmul fast float %2901, 5.000000e-01
  %2982 = fmul fast float %2980, %2980
  %2983 = fmul fast float %2982, %2981
  %2984 = fsub fast float 1.500000e+00, %2983
  %2985 = fmul fast float %2980, %2901
  %2986 = fmul fast float %2985, %2984
  %2987 = bitcast float %2902 to i32
  %2988 = ashr i32 %2987, 1
  %2989 = sub nsw i32 1597463174, %2988
  %2990 = bitcast i32 %2989 to float
  %2991 = fmul fast float %2902, 5.000000e-01
  %2992 = fmul fast float %2990, %2990
  %2993 = fmul fast float %2992, %2991
  %2994 = fsub fast float 1.500000e+00, %2993
  %2995 = fmul fast float %2990, %2902
  %2996 = fmul fast float %2995, %2994
  %2997 = bitcast float %2903 to i32
  %2998 = ashr i32 %2997, 1
  %2999 = sub nsw i32 1597463174, %2998
  %3000 = bitcast i32 %2999 to float
  %3001 = fmul fast float %2903, 5.000000e-01
  %3002 = fmul fast float %3000, %3000
  %3003 = fmul fast float %3002, %3001
  %3004 = fsub fast float 1.500000e+00, %3003
  %3005 = fmul fast float %3000, %2903
  %3006 = fmul fast float %3005, %3004
  %3007 = fsub fast float %2986, %2968
  %3008 = fsub fast float %2996, %2972
  %3009 = fsub fast float %3006, %2976
  %3010 = fmul fast float %3007, %2936
  %3011 = fmul fast float %3008, %2938
  %3012 = fmul fast float %3009, %2943
  %3013 = fadd fast float %3010, %2951
  %3014 = fadd fast float %3011, %2955
  %3015 = fadd fast float %3012, %2959
  %3016 = call float @dx.op.unary.f32(i32 7, float %3013)  ; Saturate(value)
  %3017 = call float @dx.op.unary.f32(i32 7, float %3014)  ; Saturate(value)
  %3018 = call float @dx.op.unary.f32(i32 7, float %3015)  ; Saturate(value)
  %3019 = fmul fast float %3016, %3016
  %3020 = fmul fast float %3017, %3017
  %3021 = fmul fast float %3018, %3018
  %3022 = fsub fast float %3019, %2901
  %3023 = fsub fast float %3020, %2902
  %3024 = fsub fast float %3021, %2903
  %3025 = fmul fast float %3022, %2926
  %3026 = fmul fast float %3023, %2926
  %3027 = fmul fast float %3024, %2926
  %3028 = fadd fast float %3025, %2901
  %3029 = fadd fast float %3026, %2902
  %3030 = fadd fast float %3027, %2903
  %3031 = fadd fast float %2948, %2912
  %3032 = fsub fast float %3031, %2965
  %3033 = call float @dx.op.unary.f32(i32 7, float %3032)  ; Saturate(value)
  %3034 = fsub fast float %3033, %2912
  %3035 = fmul fast float %3034, %2926
  %3036 = fadd fast float %3035, %2912
  br label %3090

; <label>:3037                                    ; preds = %2925
  %3038 = and i32 %2928, 134217728
  %3039 = icmp eq i32 %3038, 0
  br i1 %3039, label %3074, label %3040

; <label>:3040                                    ; preds = %3037
  %3041 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %3042 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %3043 = call float @dx.op.unary.f32(i32 24, float %323)  ; Sqrt(value)
  %3044 = fadd fast float %3041, -5.000000e-01
  %3045 = fadd fast float %3042, -5.000000e-01
  %3046 = fadd fast float %3043, -5.000000e-01
  %3047 = fmul fast float %3044, %2926
  %3048 = fmul fast float %3045, %2926
  %3049 = fmul fast float %3046, %2926
  %3050 = fadd fast float %3047, 5.000000e-01
  %3051 = fadd fast float %3048, 5.000000e-01
  %3052 = fadd fast float %3049, 5.000000e-01
  %3053 = call float @dx.op.unary.f32(i32 24, float %2901)  ; Sqrt(value)
  %3054 = call float @dx.op.unary.f32(i32 24, float %2902)  ; Sqrt(value)
  %3055 = call float @dx.op.unary.f32(i32 24, float %2903)  ; Sqrt(value)
  %3056 = fmul fast float %3050, 2.000000e+00
  %3057 = fsub fast float 1.000000e+00, %3056
  %3058 = fmul fast float %3057, %3053
  %3059 = fadd fast float %3058, %3056
  %3060 = fmul fast float %3059, %3053
  %3061 = fmul fast float %3051, 2.000000e+00
  %3062 = fsub fast float 1.000000e+00, %3061
  %3063 = fmul fast float %3062, %3054
  %3064 = fadd fast float %3063, %3061
  %3065 = fmul fast float %3064, %3054
  %3066 = fmul fast float %3052, 2.000000e+00
  %3067 = fsub fast float 1.000000e+00, %3066
  %3068 = fmul fast float %3067, %3055
  %3069 = fadd fast float %3068, %3066
  %3070 = fmul fast float %3069, %3055
  %3071 = fmul fast float %3060, %3060
  %3072 = fmul fast float %3065, %3065
  %3073 = fmul fast float %3070, %3070
  br label %3090

; <label>:3074                                    ; preds = %3037
  %3075 = fmul fast float %315, %315
  %3076 = fmul fast float %319, %319
  %3077 = fmul fast float %323, %323
  %3078 = fadd fast float %3075, -1.000000e+00
  %3079 = fadd fast float %3076, -1.000000e+00
  %3080 = fadd fast float %3077, -1.000000e+00
  %3081 = fmul fast float %2926, %3078
  %3082 = fmul fast float %2926, %3079
  %3083 = fmul fast float %2926, %3080
  %3084 = fadd fast float %3081, 1.000000e+00
  %3085 = fadd fast float %3082, 1.000000e+00
  %3086 = fadd fast float %3083, 1.000000e+00
  %3087 = fmul fast float %3084, %2901
  %3088 = fmul fast float %3085, %2902
  %3089 = fmul fast float %3086, %2903
  br label %3090

; <label>:3090                                    ; preds = %3074, %3040, %2931, %2887
  %3091 = phi float [ %3036, %2931 ], [ %2912, %3040 ], [ %2912, %3074 ], [ 0x3FA23C0BE0000000, %2887 ]
  %3092 = phi float [ %3028, %2931 ], [ %3071, %3040 ], [ %3087, %3074 ], [ 1.000000e+00, %2887 ]
  %3093 = phi float [ %3029, %2931 ], [ %3072, %3040 ], [ %3088, %3074 ], [ 1.000000e+00, %2887 ]
  %3094 = phi float [ %3030, %2931 ], [ %3073, %3040 ], [ %3089, %3074 ], [ 1.000000e+00, %2887 ]
  %3095 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3096 = extractvalue %dx.types.CBufRet.i32 %3095, 1
  %3097 = and i32 %3096, 1
  %3098 = icmp ne i32 %3097, 0
  %3099 = add i32 %30, 356
  %3100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3101 = extractvalue %dx.types.ResRet.i32 %3100, 0
  %3102 = and i32 %3101, 32
  %3103 = icmp ne i32 %3102, 0
  %3104 = and i1 %3098, %3103
  %3105 = select i1 %3104, float 1.000000e+00, float %3092
  %3106 = select i1 %3104, float 0x3FD3333340000000, float %3093
  %3107 = select i1 %3104, float 0x3FD3333340000000, float %3094
  %3108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3109 = extractvalue %dx.types.ResRet.i32 %3108, 0
  %3110 = and i32 %3109, 32
  %3111 = icmp eq i32 %3110, 0
  br i1 %3111, label %3184, label %3112

; <label>:3112                                    ; preds = %3090
  %3113 = add i32 %30, 140
  %3114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3115 = extractvalue %dx.types.ResRet.i32 %3114, 0
  %3116 = add i32 %30, 388
  %3117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3116, i32 undef)  ; BufferLoad(srv,index,wot)
  %3118 = extractvalue %dx.types.ResRet.i32 %3117, 0
  %3119 = add i32 %3118, 0
  %3120 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3119, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3121 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3120, %dx.types.Handle %60, float %2697, float %2698, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3122 = extractvalue %dx.types.ResRet.f32 %3121, 0
  %3123 = extractvalue %dx.types.ResRet.f32 %3121, 1
  %3124 = extractvalue %dx.types.ResRet.f32 %3121, 2
  %3125 = extractvalue %dx.types.ResRet.f32 %3121, 3
  %3126 = and i32 %3115, 255
  %3127 = uitofp i32 %3126 to float
  %3128 = lshr i32 %3115, 8
  %3129 = and i32 %3128, 255
  %3130 = uitofp i32 %3129 to float
  %3131 = lshr i32 %3115, 16
  %3132 = and i32 %3131, 255
  %3133 = uitofp i32 %3132 to float
  %3134 = fmul fast float %3133, 0x3F70101000000000
  %3135 = fmul fast float %3122, %3127
  %3136 = fadd fast float %3135, %3130
  %3137 = fmul fast float %3136, 0x3F70101000000000
  %3138 = fadd fast float %3123, -5.000000e-01
  %3139 = fadd fast float %3125, -5.000000e-01
  %3140 = fmul fast float %3138, %3134
  %3141 = fmul fast float %3139, %3134
  %3142 = fadd fast float %3140, 5.000000e-01
  %3143 = fadd fast float %3141, 5.000000e-01
  %3144 = fmul fast float %3142, 2.000000e+00
  %3145 = fadd fast float %3144, -1.000000e+00
  %3146 = fmul fast float %3143, 2.000000e+00
  %3147 = fadd fast float %3146, -1.000000e+00
  %3148 = fadd fast float %3145, %3147
  %3149 = fmul fast float %3148, 5.000000e-01
  %3150 = fsub fast float %3145, %3147
  %3151 = fmul fast float %3150, 5.000000e-01
  %3152 = call float @dx.op.unary.f32(i32 6, float %3149)  ; FAbs(value)
  %3153 = fsub fast float 1.000000e+00, %3152
  %3154 = call float @dx.op.unary.f32(i32 6, float %3151)  ; FAbs(value)
  %3155 = fsub fast float %3153, %3154
  %3156 = call float @dx.op.dot3.f32(i32 55, float %3149, float %3151, float %3155, float %3149, float %3151, float %3155)  ; Dot3(ax,ay,az,bx,by,bz)
  %3157 = call float @dx.op.unary.f32(i32 25, float %3156)  ; Rsqrt(value)
  %3158 = fmul fast float %3149, %3157
  %3159 = fmul fast float %3151, %3157
  %3160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.i32 %3160, 0
  %3162 = and i32 %3161, 67108864
  %3163 = icmp eq i32 %3162, 0
  br i1 %3163, label %3180, label %3164

; <label>:3164                                    ; preds = %3112
  %3165 = add i32 %30, 328
  %3166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3165, i32 undef)  ; BufferLoad(srv,index,wot)
  %3167 = extractvalue %dx.types.ResRet.i32 %3166, 0
  %3168 = and i32 %3167, 65535
  %3169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3168)  ; LegacyF16ToF32(value)
  %3170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3171 = extractvalue %dx.types.ResRet.i32 %3170, 0
  %3172 = and i32 %3171, 65535
  %3173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3172)  ; LegacyF16ToF32(value)
  %3174 = lshr i32 %3167, 16
  %3175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3174)  ; LegacyF16ToF32(value)
  %3176 = fsub fast float %3137, %3175
  %3177 = fmul fast float %3176, %3169
  %3178 = fadd fast float %3177, %3173
  %3179 = call float @dx.op.unary.f32(i32 7, float %3178)  ; Saturate(value)
  br label %3180

; <label>:3180                                    ; preds = %3164, %3112
  %3181 = phi float [ %3179, %3164 ], [ %3137, %3112 ]
  %3182 = call float @dx.op.dot2.f32(i32 54, float %3158, float %3159, float %2601, float %2602)  ; Dot2(ax,ay,bx,by)
  %3183 = call float @dx.op.dot2.f32(i32 54, float %3158, float %3159, float %2603, float %2604)  ; Dot2(ax,ay,bx,by)
  br label %3184

; <label>:3184                                    ; preds = %3180, %3090
  %3185 = phi float [ %3181, %3180 ], [ 0x3FD6666660000000, %3090 ]
  %3186 = phi float [ %3182, %3180 ], [ 0.000000e+00, %3090 ]
  %3187 = phi float [ %3183, %3180 ], [ 0.000000e+00, %3090 ]
  %3188 = phi float [ %3124, %3180 ], [ 1.000000e+00, %3090 ]
  %3189 = add i32 %30, 208
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3189, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = lshr i32 %3191, 22
  %3193 = shl nuw nsw i32 %3192, 5
  %3194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3193)  ; LegacyF16ToF32(value)
  %3195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3196 = extractvalue %dx.types.ResRet.i32 %3195, 0
  %3197 = and i32 %3196, 64
  %3198 = icmp eq i32 %3197, 0
  br i1 %3198, label %3232, label %3199

; <label>:3199                                    ; preds = %3184
  %3200 = add i32 %30, 404
  %3201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3200, i32 undef)  ; BufferLoad(srv,index,wot)
  %3202 = extractvalue %dx.types.ResRet.i32 %3201, 0
  %3203 = add i32 %3202, 0
  %3204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3203, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = and i32 %3206, 131072
  %3208 = icmp eq i32 %3207, 0
  %3209 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3204, %dx.types.Handle %60, float %2697, float %2698, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3210 = extractvalue %dx.types.ResRet.f32 %3209, 0
  %3211 = extractvalue %dx.types.ResRet.f32 %3209, 1
  %3212 = extractvalue %dx.types.ResRet.f32 %3209, 2
  %3213 = fmul fast float %3210, %303
  %3214 = fmul fast float %3211, %306
  %3215 = fmul fast float %3212, %309
  br i1 %3208, label %3222, label %3216

; <label>:3216                                    ; preds = %3199
  %3217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3218 = extractvalue %dx.types.CBufRet.f32 %3217, 0
  %3219 = fmul fast float %3218, %3213
  %3220 = fmul fast float %3218, %3214
  %3221 = fmul fast float %3218, %3215
  br label %3222

; <label>:3222                                    ; preds = %3216, %3199
  %3223 = phi float [ %3219, %3216 ], [ %3213, %3199 ]
  %3224 = phi float [ %3220, %3216 ], [ %3214, %3199 ]
  %3225 = phi float [ %3221, %3216 ], [ %3215, %3199 ]
  %3226 = fmul fast float %3223, %3194
  %3227 = select i1 %171, float %3226, float %3223
  %3228 = call float @dx.op.dot3.f32(i32 55, float %3227, float %3224, float %3225, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3229 = select i1 %171, float 0.000000e+00, float %3223
  %3230 = select i1 %171, float %3228, float %3224
  %3231 = select i1 %171, float 0.000000e+00, float %3225
  br label %3232

; <label>:3232                                    ; preds = %3222, %3184
  %3233 = phi float [ %3229, %3222 ], [ 0.000000e+00, %3184 ]
  %3234 = phi float [ %3230, %3222 ], [ 0.000000e+00, %3184 ]
  %3235 = phi float [ %3231, %3222 ], [ 0.000000e+00, %3184 ]
  %3236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3237 = extractvalue %dx.types.ResRet.i32 %3236, 0
  %3238 = add i32 %30, 144
  %3239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3238, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.i32 %3239, 0
  %3241 = and i32 %3240, 255
  %3242 = uitofp i32 %3241 to float
  %3243 = lshr i32 %3240, 8
  %3244 = and i32 %3243, 255
  %3245 = uitofp i32 %3244 to float
  %3246 = call float @dx.op.dot3.f32(i32 55, float %3105, float %3106, float %3107, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3247 = fmul fast float %3245, %3246
  %3248 = fadd fast float %3247, %3242
  %3249 = fmul fast float %3248, 0x3F70101020000000
  %3250 = call float @dx.op.unary.f32(i32 7, float %3249)  ; Saturate(value)
  br i1 %2589, label %3251, label %3259

; <label>:3251                                    ; preds = %3232
  %3252 = fsub fast float 1.000000e+00, %2885
  %3253 = fmul fast float %3252, %2578
  %3254 = fmul fast float %3252, %2579
  %3255 = fmul fast float %3252, %2580
  %3256 = fmul fast float %3252, %2581
  %3257 = fmul fast float %3252, %2582
  %3258 = fmul fast float %3252, %2583
  br label %3259

; <label>:3259                                    ; preds = %3251, %3232
  %3260 = phi float [ %3253, %3251 ], [ %2578, %3232 ]
  %3261 = phi float [ %3254, %3251 ], [ %2579, %3232 ]
  %3262 = phi float [ %3255, %3251 ], [ %2580, %3232 ]
  %3263 = phi float [ %3256, %3251 ], [ %2581, %3232 ]
  %3264 = phi float [ %3257, %3251 ], [ %2582, %3232 ]
  %3265 = phi float [ %3258, %3251 ], [ %2583, %3232 ]
  %3266 = and i32 %3237, 3
  %3267 = icmp eq i32 %3266, 3
  br i1 %3267, label %3346, label %3268

; <label>:3268                                    ; preds = %3259
  %3269 = and i32 %3237, 16
  %3270 = icmp ne i32 %3269, 0
  %3271 = select i1 %3270, float %2885, float 0.000000e+00
  %3272 = icmp eq i32 %3266, 0
  br i1 %3272, label %3273, label %3301

; <label>:3273                                    ; preds = %3268
  %3274 = and i32 %3237, 64
  %3275 = icmp ne i32 %3274, 0
  %3276 = select i1 %3275, float %2885, float 0.000000e+00
  %3277 = fsub fast float %3105, %3260
  %3278 = fsub fast float %3106, %3261
  %3279 = fsub fast float %3107, %3262
  %3280 = fmul fast float %3271, %3277
  %3281 = fmul fast float %3271, %3278
  %3282 = fmul fast float %3271, %3279
  %3283 = fadd fast float %3280, %3260
  %3284 = fadd fast float %3281, %3261
  %3285 = fadd fast float %3282, %3262
  %3286 = fsub fast float %3091, %2584
  %3287 = fmul fast float %3271, %3286
  %3288 = fadd fast float %3287, %2584
  %3289 = fsub fast float %3233, %3263
  %3290 = fsub fast float %3234, %3264
  %3291 = fsub fast float %3235, %3265
  %3292 = fmul fast float %3276, %3289
  %3293 = fmul fast float %3276, %3290
  %3294 = fmul fast float %3276, %3291
  %3295 = fadd fast float %3292, %3263
  %3296 = fadd fast float %3293, %3264
  %3297 = fadd fast float %3294, %3265
  %3298 = fsub fast float %3250, %2587
  %3299 = fmul fast float %3271, %3298
  %3300 = fadd fast float %3299, %2587
  br label %3346

; <label>:3301                                    ; preds = %3268
  %3302 = icmp eq i32 %3266, 1
  br i1 %3302, label %3303, label %3316

; <label>:3303                                    ; preds = %3301
  %3304 = fadd fast float %3105, -1.000000e+00
  %3305 = fadd fast float %3106, -1.000000e+00
  %3306 = fadd fast float %3107, -1.000000e+00
  %3307 = fmul fast float %3271, %3304
  %3308 = fmul fast float %3271, %3305
  %3309 = fmul fast float %3271, %3306
  %3310 = fadd fast float %3307, 1.000000e+00
  %3311 = fadd fast float %3308, 1.000000e+00
  %3312 = fadd fast float %3309, 1.000000e+00
  %3313 = fmul fast float %3310, %3260
  %3314 = fmul fast float %3311, %3261
  %3315 = fmul fast float %3312, %3262
  br label %3346

; <label>:3316                                    ; preds = %3301
  %3317 = icmp eq i32 %3266, 2
  br i1 %3317, label %3318, label %3346

; <label>:3318                                    ; preds = %3316
  %3319 = call float @dx.op.unary.f32(i32 24, float %3105)  ; Sqrt(value)
  %3320 = call float @dx.op.unary.f32(i32 24, float %3106)  ; Sqrt(value)
  %3321 = call float @dx.op.unary.f32(i32 24, float %3107)  ; Sqrt(value)
  %3322 = fadd fast float %3319, -5.000000e-01
  %3323 = fadd fast float %3320, -5.000000e-01
  %3324 = fadd fast float %3321, -5.000000e-01
  %3325 = fmul fast float %3322, %3271
  %3326 = fmul fast float %3323, %3271
  %3327 = fmul fast float %3324, %3271
  %3328 = fadd fast float %3325, 5.000000e-01
  %3329 = fadd fast float %3326, 5.000000e-01
  %3330 = fadd fast float %3327, 5.000000e-01
  %3331 = fmul fast float %3328, 2.000000e+00
  %3332 = fsub fast float 1.000000e+00, %3331
  %3333 = fmul fast float %3332, %3260
  %3334 = fadd fast float %3333, %3331
  %3335 = fmul fast float %3334, %3260
  %3336 = fmul fast float %3329, 2.000000e+00
  %3337 = fsub fast float 1.000000e+00, %3336
  %3338 = fmul fast float %3337, %3261
  %3339 = fadd fast float %3338, %3336
  %3340 = fmul fast float %3339, %3261
  %3341 = fmul fast float %3330, 2.000000e+00
  %3342 = fsub fast float 1.000000e+00, %3341
  %3343 = fmul fast float %3342, %3262
  %3344 = fadd fast float %3343, %3341
  %3345 = fmul fast float %3344, %3262
  br label %3346

; <label>:3346                                    ; preds = %3318, %3316, %3303, %3273, %3259
  %3347 = phi float [ %3260, %3259 ], [ %3335, %3318 ], [ %3260, %3316 ], [ %3313, %3303 ], [ %3283, %3273 ]
  %3348 = phi float [ %3261, %3259 ], [ %3340, %3318 ], [ %3261, %3316 ], [ %3314, %3303 ], [ %3284, %3273 ]
  %3349 = phi float [ %3262, %3259 ], [ %3345, %3318 ], [ %3262, %3316 ], [ %3315, %3303 ], [ %3285, %3273 ]
  %3350 = phi float [ %3263, %3259 ], [ %3263, %3318 ], [ %3263, %3316 ], [ %3263, %3303 ], [ %3295, %3273 ]
  %3351 = phi float [ %3264, %3259 ], [ %3264, %3318 ], [ %3264, %3316 ], [ %3264, %3303 ], [ %3296, %3273 ]
  %3352 = phi float [ %3265, %3259 ], [ %3265, %3318 ], [ %3265, %3316 ], [ %3265, %3303 ], [ %3297, %3273 ]
  %3353 = phi float [ %2584, %3259 ], [ %2584, %3318 ], [ %2584, %3316 ], [ %2584, %3303 ], [ %3288, %3273 ]
  %3354 = phi float [ %2587, %3259 ], [ %2587, %3318 ], [ %2587, %3316 ], [ %2587, %3303 ], [ %3300, %3273 ]
  %3355 = and i32 %3237, 12
  %3356 = icmp eq i32 %3355, 12
  br i1 %3356, label %3429, label %3357

; <label>:3357                                    ; preds = %3346
  %3358 = and i32 %3237, 2097184
  %3359 = icmp eq i32 %3358, 2097184
  %3360 = select i1 %3359, float %2885, float 0.000000e+00
  %3361 = and i32 %3237, 4194336
  %3362 = icmp eq i32 %3361, 4194336
  %3363 = select i1 %3362, float %2885, float 0.000000e+00
  %3364 = and i32 %3237, 8388640
  %3365 = icmp eq i32 %3364, 8388640
  %3366 = select i1 %3365, float %2885, float 0.000000e+00
  %3367 = icmp eq i32 %3355, 0
  br i1 %3367, label %3368, label %3381

; <label>:3368                                    ; preds = %3357
  %3369 = fsub fast float %3186, %2576
  %3370 = fsub fast float %3187, %2577
  %3371 = fmul fast float %3360, %3369
  %3372 = fmul fast float %3360, %3370
  %3373 = fadd fast float %3371, %2576
  %3374 = fadd fast float %3372, %2577
  %3375 = fsub fast float %3188, %2586
  %3376 = fmul fast float %3363, %3375
  %3377 = fadd fast float %3376, %2586
  %3378 = fsub fast float %3185, %2585
  %3379 = fmul fast float %3366, %3378
  %3380 = fadd fast float %3379, %2585
  br label %3429

; <label>:3381                                    ; preds = %3357
  %3382 = icmp eq i32 %3355, 4
  br i1 %3382, label %3383, label %3415

; <label>:3383                                    ; preds = %3381
  %3384 = fmul fast float %3360, %3186
  %3385 = fmul fast float %3360, %3187
  %3386 = fadd fast float %3384, %2576
  %3387 = fadd fast float %3385, %2577
  %3388 = call float @dx.op.binary.f32(i32 36, float %2586, float %3188)  ; FMin(a,b)
  %3389 = fsub fast float %3388, %2586
  %3390 = fmul fast float %3389, %3363
  %3391 = fadd fast float %3390, %2586
  %3392 = fadd fast float %3185, %2585
  %3393 = fmul fast float %3392, 0x3FF337FAE0000000
  %3394 = fmul fast float %2585, %2585
  %3395 = fmul fast float %3185, %3185
  %3396 = fadd fast float %3395, %3394
  %3397 = fmul fast float %3396, 0x3FE5152B00000000
  %3398 = fmul fast float %2585, 0xBFCC1F85E0000000
  %3399 = fmul fast float %3398, %3185
  %3400 = fadd fast float %3399, 0xBFE1363700000000
  %3401 = fadd fast float %3400, %3393
  %3402 = fsub fast float %3401, %3397
  %3403 = fmul fast float %3392, 0x3FBA6F0D00000000
  %3404 = fmul fast float %3396, 0x3FD0432880000000
  %3405 = fmul fast float %2585, 0xBFEF110800000000
  %3406 = fmul fast float %3405, %3185
  %3407 = fadd fast float %3406, 1.000000e+00
  %3408 = fsub fast float %3407, %3403
  %3409 = fadd fast float %3408, %3404
  %3410 = fdiv fast float %3402, %3409
  %3411 = call float @dx.op.unary.f32(i32 7, float %3410)  ; Saturate(value)
  %3412 = fsub fast float %3411, %2585
  %3413 = fmul fast float %3412, %3366
  %3414 = fadd fast float %3413, %2585
  br label %3429

; <label>:3415                                    ; preds = %3381
  %3416 = icmp eq i32 %3355, 8
  br i1 %3416, label %3417, label %3429

; <label>:3417                                    ; preds = %3415
  %3418 = fmul fast float %3360, %3186
  %3419 = fmul fast float %3360, %3187
  %3420 = fadd fast float %3418, %2576
  %3421 = fadd fast float %3419, %2577
  %3422 = call float @dx.op.binary.f32(i32 36, float %2586, float %3188)  ; FMin(a,b)
  %3423 = fsub fast float %3422, %2586
  %3424 = fmul fast float %3423, %3363
  %3425 = fadd fast float %3424, %2586
  %3426 = fsub fast float %3185, %2585
  %3427 = fmul fast float %3366, %3426
  %3428 = fadd fast float %3427, %2585
  br label %3429

; <label>:3429                                    ; preds = %3417, %3415, %3383, %3368, %3346, %2884, %2588, %2575
  %3430 = phi float [ %2576, %3346 ], [ %2576, %2884 ], [ %2576, %2575 ], [ %2576, %2588 ], [ %3373, %3368 ], [ %3386, %3383 ], [ %2576, %3415 ], [ %3420, %3417 ]
  %3431 = phi float [ %2577, %3346 ], [ %2577, %2884 ], [ %2577, %2575 ], [ %2577, %2588 ], [ %3374, %3368 ], [ %3387, %3383 ], [ %2577, %3415 ], [ %3421, %3417 ]
  %3432 = phi float [ %3347, %3346 ], [ %2578, %2884 ], [ %2578, %2575 ], [ %2578, %2588 ], [ %3347, %3368 ], [ %3347, %3383 ], [ %3347, %3415 ], [ %3347, %3417 ]
  %3433 = phi float [ %3348, %3346 ], [ %2579, %2884 ], [ %2579, %2575 ], [ %2579, %2588 ], [ %3348, %3368 ], [ %3348, %3383 ], [ %3348, %3415 ], [ %3348, %3417 ]
  %3434 = phi float [ %3349, %3346 ], [ %2580, %2884 ], [ %2580, %2575 ], [ %2580, %2588 ], [ %3349, %3368 ], [ %3349, %3383 ], [ %3349, %3415 ], [ %3349, %3417 ]
  %3435 = phi float [ %3350, %3346 ], [ %2581, %2884 ], [ %2581, %2575 ], [ %2581, %2588 ], [ %3350, %3368 ], [ %3350, %3383 ], [ %3350, %3415 ], [ %3350, %3417 ]
  %3436 = phi float [ %3351, %3346 ], [ %2582, %2884 ], [ %2582, %2575 ], [ %2582, %2588 ], [ %3351, %3368 ], [ %3351, %3383 ], [ %3351, %3415 ], [ %3351, %3417 ]
  %3437 = phi float [ %3352, %3346 ], [ %2583, %2884 ], [ %2583, %2575 ], [ %2583, %2588 ], [ %3352, %3368 ], [ %3352, %3383 ], [ %3352, %3415 ], [ %3352, %3417 ]
  %3438 = phi float [ %3353, %3346 ], [ %2584, %2884 ], [ %2584, %2575 ], [ %2584, %2588 ], [ %3353, %3368 ], [ %3353, %3383 ], [ %3353, %3415 ], [ %3353, %3417 ]
  %3439 = phi float [ %2585, %3346 ], [ %2585, %2884 ], [ %2585, %2575 ], [ %2585, %2588 ], [ %3380, %3368 ], [ %3414, %3383 ], [ %2585, %3415 ], [ %3428, %3417 ]
  %3440 = phi float [ %2586, %3346 ], [ %2586, %2884 ], [ %2586, %2575 ], [ %2586, %2588 ], [ %3377, %3368 ], [ %3391, %3383 ], [ %2586, %3415 ], [ %3425, %3417 ]
  %3441 = phi float [ %3354, %3346 ], [ %2587, %2884 ], [ %2587, %2575 ], [ %2587, %2588 ], [ %3354, %3368 ], [ %3354, %3383 ], [ %3354, %3415 ], [ %3354, %3417 ]
  %3442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3443 = extractvalue %dx.types.CBufRet.f32 %3442, 0
  %3444 = call float @dx.op.dot2.f32(i32 54, float %3430, float %3431, float %3430, float %3431)  ; Dot2(ax,ay,bx,by)
  %3445 = fmul fast float %3444, 0x3FE3333340000000
  %3446 = fsub fast float 1.000000e+00, %3445
  %3447 = call float @dx.op.dot3.f32(i32 55, float %3430, float %3431, float %3446, float %3430, float %3431, float %3446)  ; Dot3(ax,ay,az,bx,by,bz)
  %3448 = call float @dx.op.unary.f32(i32 25, float %3447)  ; Rsqrt(value)
  %3449 = fmul fast float %3448, %3430
  %3450 = fmul fast float %3448, %3431
  %3451 = fmul fast float %3446, %3448
  %3452 = fmul fast float %3451, %71
  %3453 = fmul fast float %3451, %72
  %3454 = fmul fast float %3451, %73
  %3455 = fmul fast float %3449, %45
  %3456 = fmul fast float %3449, %46
  %3457 = fmul fast float %3449, %47
  %3458 = fadd fast float %3452, %3455
  %3459 = fadd fast float %3453, %3456
  %3460 = fadd fast float %3454, %3457
  %3461 = fmul fast float %83, %3450
  %3462 = fmul fast float %84, %3450
  %3463 = fmul fast float %85, %3450
  %3464 = fadd fast float %3458, %3461
  %3465 = fadd fast float %3459, %3462
  %3466 = fadd fast float %3460, %3463
  %3467 = call float @dx.op.dot3.f32(i32 55, float %3464, float %3465, float %3466, float %3464, float %3465, float %3466)  ; Dot3(ax,ay,az,bx,by,bz)
  %3468 = call float @dx.op.unary.f32(i32 25, float %3467)  ; Rsqrt(value)
  %3469 = fmul fast float %3464, %3468
  %3470 = fmul fast float %3465, %3468
  %3471 = fmul fast float %3466, %3468
  %3472 = fadd fast float %3438, 0xBFB99999A0000000
  %3473 = call float @dx.op.unary.f32(i32 7, float %3472)  ; Saturate(value)
  %3474 = fmul fast float %3473, 0x3FF1C71C80000000
  %3475 = call float @dx.op.binary.f32(i32 36, float %3438, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3476 = fsub fast float 1.000000e+00, %3474
  %3477 = call float @dx.op.unary.f32(i32 7, float %3476)  ; Saturate(value)
  %3478 = fmul fast float %3477, %3432
  %3479 = fmul fast float %3477, %3433
  %3480 = fmul fast float %3477, %3434
  %3481 = call float @dx.op.unary.f32(i32 7, float %3478)  ; Saturate(value)
  %3482 = call float @dx.op.unary.f32(i32 7, float %3479)  ; Saturate(value)
  %3483 = call float @dx.op.unary.f32(i32 7, float %3480)  ; Saturate(value)
  %3484 = fmul fast float %3474, %3432
  %3485 = fmul fast float %3474, %3433
  %3486 = fmul fast float %3474, %3434
  %3487 = fadd fast float %3484, %3475
  %3488 = fadd fast float %3485, %3475
  %3489 = fadd fast float %3486, %3475
  %3490 = call float @dx.op.unary.f32(i32 7, float %3487)  ; Saturate(value)
  %3491 = call float @dx.op.unary.f32(i32 7, float %3488)  ; Saturate(value)
  %3492 = call float @dx.op.unary.f32(i32 7, float %3489)  ; Saturate(value)
  %3493 = call float @dx.op.unary.f32(i32 7, float %3439)  ; Saturate(value)
  %3494 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3495 = extractvalue %dx.types.CBufRet.i32 %3494, 3
  %3496 = and i32 %3495, 8
  %3497 = icmp ne i32 %3496, 0
  %3498 = call float @dx.op.binary.f32(i32 35, float %3481, float %3432)  ; FMax(a,b)
  %3499 = call float @dx.op.binary.f32(i32 35, float %3482, float %3432)  ; FMax(a,b)
  %3500 = call float @dx.op.binary.f32(i32 35, float %3483, float %3432)  ; FMax(a,b)
  %3501 = call float @dx.op.dot3.f32(i32 55, float %3481, float %3482, float %3483, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3502 = select i1 %171, float %3432, float %3481
  %3503 = select i1 %171, float %3501, float %3482
  %3504 = select i1 %171, float 1.000000e+00, float %3483
  %3505 = select i1 %3497, float %3498, float %3502
  %3506 = select i1 %3497, float %3499, float %3503
  %3507 = select i1 %3497, float %3500, float %3504
  %3508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3509 = extractvalue %dx.types.CBufRet.f32 %3508, 0
  %3510 = extractvalue %dx.types.CBufRet.f32 %3508, 1
  %3511 = extractvalue %dx.types.CBufRet.f32 %3508, 2
  %3512 = fadd fast float %3509, %127
  %3513 = fadd fast float %3510, %128
  %3514 = fadd fast float %3511, %129
  %3515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3516 = extractvalue %dx.types.CBufRet.f32 %3515, 0
  %3517 = extractvalue %dx.types.CBufRet.f32 %3515, 1
  %3518 = fsub fast float %3512, %3516
  %3519 = fsub fast float %3513, %3517
  %3520 = fmul fast float %3518, %3518
  %3521 = fmul fast float %3519, %3519
  %3522 = fadd fast float %3520, %3521
  %3523 = call float @dx.op.unary.f32(i32 24, float %3522)  ; Sqrt(value)
  %3524 = extractvalue %dx.types.CBufRet.f32 %3515, 2
  %3525 = fcmp fast olt float %3523, %3524
  br i1 %3525, label %3526, label %3593

; <label>:3526                                    ; preds = %3429
  %3527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3528 = extractvalue %dx.types.CBufRet.f32 %3527, 0
  %3529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3530 = extractvalue %dx.types.CBufRet.f32 %3529, 0
  %3531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3532 = extractvalue %dx.types.CBufRet.f32 %3531, 0
  %3533 = extractvalue %dx.types.CBufRet.f32 %3527, 1
  %3534 = extractvalue %dx.types.CBufRet.f32 %3529, 1
  %3535 = extractvalue %dx.types.CBufRet.f32 %3531, 1
  %3536 = extractvalue %dx.types.CBufRet.f32 %3527, 3
  %3537 = extractvalue %dx.types.CBufRet.f32 %3529, 3
  %3538 = extractvalue %dx.types.CBufRet.f32 %3531, 3
  %3539 = fadd fast float %3536, %3512
  %3540 = fadd fast float %3537, %3513
  %3541 = fadd fast float %3538, %3514
  %3542 = fmul fast float %3539, %3528
  %3543 = call float @dx.op.tertiary.f32(i32 46, float %3540, float %3530, float %3542)  ; FMad(a,b,c)
  %3544 = call float @dx.op.tertiary.f32(i32 46, float %3541, float %3532, float %3543)  ; FMad(a,b,c)
  %3545 = fmul fast float %3539, %3533
  %3546 = call float @dx.op.tertiary.f32(i32 46, float %3540, float %3534, float %3545)  ; FMad(a,b,c)
  %3547 = call float @dx.op.tertiary.f32(i32 46, float %3541, float %3535, float %3546)  ; FMad(a,b,c)
  %3548 = fsub fast float %3544, %3536
  %3549 = fsub fast float %3547, %3537
  %3550 = fsub fast float %3548, %3516
  %3551 = fadd fast float %3550, %3524
  %3552 = fsub fast float %3549, %3517
  %3553 = fadd fast float %3552, %3524
  %3554 = extractvalue %dx.types.CBufRet.f32 %3515, 3
  %3555 = fmul fast float %3551, %3554
  %3556 = fmul fast float %3553, %3554
  %3557 = call float @dx.op.unary.f32(i32 7, float %3555)  ; Saturate(value)
  %3558 = call float @dx.op.unary.f32(i32 7, float %3556)  ; Saturate(value)
  %3559 = fsub fast float 1.000000e+00, %3557
  %3560 = fsub fast float 1.000000e+00, %3558
  %3561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %3559, float %3560, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3562 = extractvalue %dx.types.ResRet.f32 %3561, 0
  %3563 = fcmp fast ugt float %3562, 0.000000e+00
  br i1 %3563, label %3564, label %3867

; <label>:3564                                    ; preds = %3526
  %3565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3566 = extractvalue %dx.types.CBufRet.f32 %3565, 2
  %3567 = fmul fast float %3566, %3562
  %3568 = extractvalue %dx.types.CBufRet.f32 %3565, 3
  %3569 = fadd fast float %3568, %3567
  %3570 = extractvalue %dx.types.CBufRet.f32 %3531, 2
  %3571 = fadd fast float %3569, %3538
  %3572 = fmul fast float %3544, %3532
  %3573 = call float @dx.op.tertiary.f32(i32 46, float %3547, float %3535, float %3572)  ; FMad(a,b,c)
  %3574 = call float @dx.op.tertiary.f32(i32 46, float %3571, float %3570, float %3573)  ; FMad(a,b,c)
  %3575 = fsub fast float %3574, %3538
  %3576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3577 = extractvalue %dx.types.CBufRet.f32 %3576, 2
  %3578 = fsub fast float %3575, %3577
  %3579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %26, float %3559, float %3560, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3580 = extractvalue %dx.types.ResRet.f32 %3579, 0
  %3581 = extractvalue %dx.types.ResRet.f32 %3579, 1
  %3582 = extractvalue %dx.types.ResRet.f32 %3579, 2
  %3583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %26, float %3559, float %3560, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3584 = extractvalue %dx.types.ResRet.f32 %3583, 0
  %3585 = extractvalue %dx.types.ResRet.f32 %3583, 1
  %3586 = extractvalue %dx.types.ResRet.f32 %3583, 2
  %3587 = fadd fast float %3584, %3580
  %3588 = fmul fast float %3587, 0x3F847AE140000000
  %3589 = fadd fast float %3585, %3581
  %3590 = fmul fast float %3589, 0x3F847AE140000000
  %3591 = fadd fast float %3586, %3582
  %3592 = fmul fast float %3591, 0x3F847AE140000000
  br label %3867

; <label>:3593                                    ; preds = %3429
  %3594 = and i32 %145, 1
  %3595 = icmp eq i32 %3594, 0
  br i1 %3595, label %3867, label %3596

; <label>:3596                                    ; preds = %3593
  %3597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3598 = extractvalue %dx.types.CBufRet.f32 %3597, 0
  %3599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3600 = extractvalue %dx.types.CBufRet.f32 %3599, 0
  %3601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3602 = extractvalue %dx.types.CBufRet.f32 %3601, 0
  %3603 = extractvalue %dx.types.CBufRet.f32 %3597, 1
  %3604 = extractvalue %dx.types.CBufRet.f32 %3599, 1
  %3605 = extractvalue %dx.types.CBufRet.f32 %3601, 1
  %3606 = extractvalue %dx.types.CBufRet.f32 %3597, 3
  %3607 = extractvalue %dx.types.CBufRet.f32 %3599, 3
  %3608 = extractvalue %dx.types.CBufRet.f32 %3601, 3
  %3609 = fadd fast float %3606, %3512
  %3610 = fadd fast float %3607, %3513
  %3611 = fadd fast float %3608, %3514
  %3612 = fmul fast float %3609, %3598
  %3613 = call float @dx.op.tertiary.f32(i32 46, float %3610, float %3600, float %3612)  ; FMad(a,b,c)
  %3614 = call float @dx.op.tertiary.f32(i32 46, float %3611, float %3602, float %3613)  ; FMad(a,b,c)
  %3615 = fmul fast float %3609, %3603
  %3616 = call float @dx.op.tertiary.f32(i32 46, float %3610, float %3604, float %3615)  ; FMad(a,b,c)
  %3617 = call float @dx.op.tertiary.f32(i32 46, float %3611, float %3605, float %3616)  ; FMad(a,b,c)
  %3618 = fsub fast float %3614, %3606
  %3619 = fsub fast float %3617, %3607
  %3620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3621 = extractvalue %dx.types.CBufRet.f32 %3620, 0
  %3622 = extractvalue %dx.types.CBufRet.f32 %3620, 1
  %3623 = extractvalue %dx.types.CBufRet.f32 %3620, 2
  %3624 = extractvalue %dx.types.CBufRet.f32 %3620, 3
  %3625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3626 = extractvalue %dx.types.CBufRet.f32 %3625, 3
  %3627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3628 = extractvalue %dx.types.CBufRet.i32 %3627, 0
  %3629 = extractvalue %dx.types.CBufRet.i32 %3627, 1
  %3630 = udiv i32 %3629, %3628
  %3631 = fsub fast float %3618, %3621
  %3632 = fsub fast float %3619, %3622
  %3633 = call float @dx.op.binary.f32(i32 35, float %3631, float 0.000000e+00)  ; FMax(a,b)
  %3634 = call float @dx.op.binary.f32(i32 35, float %3632, float 0.000000e+00)  ; FMax(a,b)
  %3635 = call float @dx.op.binary.f32(i32 36, float %3633, float %3623)  ; FMin(a,b)
  %3636 = call float @dx.op.binary.f32(i32 36, float %3634, float %3624)  ; FMin(a,b)
  %3637 = add i32 %3628, -1
  %3638 = add i32 %3630, -1
  %3639 = fmul fast float %3635, %3626
  %3640 = fmul fast float %3636, %3626
  %3641 = fptoui float %3639 to i32
  %3642 = fptoui float %3640 to i32
  %3643 = call i32 @dx.op.binary.i32(i32 40, i32 %3641, i32 %3637)  ; UMin(a,b)
  %3644 = call i32 @dx.op.binary.i32(i32 40, i32 %3642, i32 %3638)  ; UMin(a,b)
  %3645 = mul i32 %3644, %3628
  %3646 = add i32 %3645, %3643
  %3647 = shl i32 %3646, 2
  %3648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.i32 %3648, 0
  %3650 = icmp eq i32 %3649, -1
  br i1 %3650, label %3867, label %3651

; <label>:3651                                    ; preds = %3596
  %3652 = mul i32 %3649, 148
  %3653 = add i32 %3652, 4
  %3654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3653, i32 undef)  ; BufferLoad(srv,index,wot)
  %3655 = extractvalue %dx.types.ResRet.f32 %3654, 0
  %3656 = add i32 %3652, 8
  %3657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3656, i32 undef)  ; BufferLoad(srv,index,wot)
  %3658 = extractvalue %dx.types.ResRet.f32 %3657, 0
  %3659 = add i32 %3652, 36
  %3660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3659, i32 undef)  ; BufferLoad(srv,index,wot)
  %3661 = extractvalue %dx.types.ResRet.f32 %3660, 0
  %3662 = add i32 %3652, 60
  %3663 = add i32 %3652, 92
  %3664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3663, i32 undef)  ; BufferLoad(srv,index,wot)
  %3665 = extractvalue %dx.types.ResRet.i32 %3664, 0
  %3666 = add i32 %3652, 116
  %3667 = fsub fast float %3618, %3655
  %3668 = fsub fast float %3619, %3658
  %3669 = fmul fast float %3626, %3667
  %3670 = fmul fast float %3626, %3668
  %3671 = call float @dx.op.unary.f32(i32 7, float %3669)  ; Saturate(value)
  %3672 = call float @dx.op.unary.f32(i32 7, float %3670)  ; Saturate(value)
  %3673 = fsub fast float 1.000000e+00, %3672
  %3674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3675 = extractvalue %dx.types.CBufRet.f32 %3674, 2
  %3676 = call float @dx.op.unary.f32(i32 83, float %3671)  ; DerivCoarseX(value)
  %3677 = call float @dx.op.unary.f32(i32 83, float %3673)  ; DerivCoarseX(value)
  %3678 = call float @dx.op.unary.f32(i32 84, float %3671)  ; DerivCoarseY(value)
  %3679 = call float @dx.op.unary.f32(i32 84, float %3673)  ; DerivCoarseY(value)
  %3680 = fmul fast float %3676, %3675
  %3681 = fmul fast float %3677, %3675
  %3682 = fmul fast float %3678, %3675
  %3683 = fmul fast float %3679, %3675
  %3684 = call float @dx.op.dot2.f32(i32 54, float %3682, float %3683, float %3682, float %3683)  ; Dot2(ax,ay,bx,by)
  %3685 = call float @dx.op.dot2.f32(i32 54, float %3680, float %3681, float %3680, float %3681)  ; Dot2(ax,ay,bx,by)
  %3686 = call float @dx.op.binary.f32(i32 35, float %3685, float %3684)  ; FMax(a,b)
  %3687 = call float @dx.op.unary.f32(i32 23, float %3686)  ; Log(value)
  %3688 = fmul fast float %3687, 5.000000e-01
  %3689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3690 = extractvalue %dx.types.CBufRet.f32 %3689, 1
  %3691 = fadd fast float %3690, %3688
  %3692 = call float @dx.op.binary.f32(i32 35, float %3691, float 0.000000e+00)  ; FMax(a,b)
  %3693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3694 = extractvalue %dx.types.CBufRet.f32 %3693, 3
  %3695 = fadd fast float %3694, %3692
  %3696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3697 = extractvalue %dx.types.CBufRet.f32 %3696, 3
  %3698 = fadd fast float %3695, %3697
  %3699 = add i32 %3665, 0
  %3700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3699, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3701 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3700, i32 0)  ; GetDimensions(handle,mipLevel)
  %3702 = extractvalue %dx.types.Dimensions %3701, 0
  %3703 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3702)  ; FirstbitLo(value)
  %3704 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3705 = extractvalue %dx.types.CBufRet.i32 %3704, 1
  %3706 = sub nsw i32 %3705, %3703
  %3707 = sitofp i32 %3706 to float
  %3708 = fsub fast float %3698, %3707
  %3709 = call float @dx.op.binary.f32(i32 35, float %3708, float 0.000000e+00)  ; FMax(a,b)
  %3710 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3700, %dx.types.Handle %24, float %3671, float %3673, float %3661, float undef, i32 0, i32 0, i32 undef, float %3709)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3711 = extractvalue %dx.types.ResRet.f32 %3710, 0
  %3712 = fcmp ule float %3711, 0x3FE0101020000000
  %3713 = extractvalue %dx.types.CBufRet.i32 %3704, 0
  %3714 = and i32 %3713, 128
  %3715 = icmp ne i32 %3714, 0
  %3716 = and i1 %3712, %3715
  br i1 %3716, label %3867, label %3717

; <label>:3717                                    ; preds = %3651
  %3718 = add i32 %3652, 20
  %3719 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3718, i32 undef)  ; BufferLoad(srv,index,wot)
  %3720 = extractvalue %dx.types.ResRet.f32 %3719, 0
  %3721 = add i32 %3652, 24
  %3722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3723 = extractvalue %dx.types.ResRet.f32 %3722, 0
  %3724 = add i32 %3652, 40
  %3725 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3724, i32 undef)  ; BufferLoad(srv,index,wot)
  %3726 = extractvalue %dx.types.ResRet.f32 %3725, 0
  %3727 = add i32 %3652, 96
  %3728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3729 = extractvalue %dx.types.ResRet.i32 %3728, 0
  %3730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3731 = extractvalue %dx.types.CBufRet.f32 %3730, 2
  %3732 = fmul fast float %3731, %3671
  %3733 = fmul fast float %3731, %3673
  %3734 = extractvalue %dx.types.CBufRet.f32 %3730, 3
  %3735 = fadd fast float %3732, %3734
  %3736 = fadd fast float %3733, %3734
  %3737 = add i32 %3729, 0
  %3738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3737, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3739 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3738, i32 0)  ; GetDimensions(handle,mipLevel)
  %3740 = extractvalue %dx.types.Dimensions %3739, 0
  %3741 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3740)  ; FirstbitLo(value)
  %3742 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3743 = extractvalue %dx.types.CBufRet.i32 %3742, 1
  %3744 = sub nsw i32 %3743, %3741
  %3745 = sitofp i32 %3744 to float
  %3746 = fsub fast float %3695, %3745
  %3747 = call float @dx.op.binary.f32(i32 35, float %3746, float 0.000000e+00)  ; FMax(a,b)
  %3748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3738, %dx.types.Handle %24, float %3735, float %3736, float %3726, float undef, i32 0, i32 0, i32 undef, float %3747)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3749 = extractvalue %dx.types.ResRet.f32 %3748, 0
  %3750 = fmul fast float %3749, %3720
  %3751 = fadd fast float %3750, %3723
  %3752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3753 = extractvalue %dx.types.CBufRet.f32 %3752, 0
  %3754 = extractvalue %dx.types.CBufRet.f32 %3752, 1
  %3755 = extractvalue %dx.types.CBufRet.f32 %3752, 2
  %3756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3757 = extractvalue %dx.types.CBufRet.f32 %3756, 3
  %3758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3759 = extractvalue %dx.types.CBufRet.f32 %3758, 3
  %3760 = extractvalue %dx.types.CBufRet.f32 %3752, 3
  %3761 = fadd fast float %3757, %3618
  %3762 = fadd fast float %3759, %3619
  %3763 = fadd fast float %3751, %3760
  %3764 = fmul fast float %3761, %3753
  %3765 = call float @dx.op.tertiary.f32(i32 46, float %3762, float %3754, float %3764)  ; FMad(a,b,c)
  %3766 = call float @dx.op.tertiary.f32(i32 46, float %3763, float %3755, float %3765)  ; FMad(a,b,c)
  %3767 = fsub fast float %3766, %3760
  %3768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3769 = extractvalue %dx.types.CBufRet.f32 %3768, 2
  %3770 = fsub fast float %3767, %3769
  %3771 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3772 = extractvalue %dx.types.CBufRet.i32 %3771, 0
  %3773 = call i32 @dx.op.binary.i32(i32 40, i32 %3649, i32 %3772)  ; UMin(a,b)
  %3774 = mul i32 %3773, 36
  %3775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3774, i32 undef)  ; BufferLoad(srv,index,wot)
  %3776 = extractvalue %dx.types.ResRet.i32 %3775, 0
  %3777 = add i32 %3774, 4
  %3778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3779 = extractvalue %dx.types.CBufRet.f32 %3778, 0
  %3780 = fmul fast float %3779, %3671
  %3781 = fmul fast float %3779, %3673
  %3782 = extractvalue %dx.types.CBufRet.f32 %3778, 1
  %3783 = fadd fast float %3780, %3782
  %3784 = fadd fast float %3781, %3782
  %3785 = icmp eq i32 %3776, 0
  br i1 %3785, label %3854, label %3786

; <label>:3786                                    ; preds = %3717
  br label %3787

; <label>:3787                                    ; preds = %3844, %3786
  %3788 = phi float [ %3845, %3844 ], [ 0.000000e+00, %3786 ]
  %3789 = phi float [ %3846, %3844 ], [ 0.000000e+00, %3786 ]
  %3790 = phi float [ %3847, %3844 ], [ 0.000000e+00, %3786 ]
  %3791 = phi float [ %3848, %3844 ], [ 0.000000e+00, %3786 ]
  %3792 = phi float [ %3849, %3844 ], [ 0.000000e+00, %3786 ]
  %3793 = phi float [ %3850, %3844 ], [ 0.000000e+00, %3786 ]
  %3794 = phi i32 [ %3851, %3844 ], [ 0, %3786 ]
  %3795 = shl i32 %3794, 2
  %3796 = add i32 %3662, %3795
  %3797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3796, i32 undef)  ; BufferLoad(srv,index,wot)
  %3798 = extractvalue %dx.types.ResRet.f32 %3797, 0
  %3799 = add i32 %3666, %3795
  %3800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3801 = extractvalue %dx.types.ResRet.i32 %3800, 0
  %3802 = add i32 %3801, 0
  %3803 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3802, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3804 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3803, i32 0)  ; GetDimensions(handle,mipLevel)
  %3805 = extractvalue %dx.types.Dimensions %3804, 0
  %3806 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3805)  ; FirstbitLo(value)
  %3807 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3808 = extractvalue %dx.types.CBufRet.i32 %3807, 1
  %3809 = sub nsw i32 %3808, %3806
  %3810 = sitofp i32 %3809 to float
  %3811 = fsub fast float %3695, %3810
  %3812 = call float @dx.op.binary.f32(i32 35, float %3811, float 0.000000e+00)  ; FMax(a,b)
  %3813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3803, %dx.types.Handle %24, float %3783, float %3784, float %3798, float undef, i32 0, i32 0, i32 undef, float %3812)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3814 = extractvalue %dx.types.ResRet.f32 %3813, 0
  %3815 = fcmp fast ogt float %3814, 0.000000e+00
  br i1 %3815, label %3816, label %3844

; <label>:3816                                    ; preds = %3787
  %3817 = add i32 %3777, %3795
  %3818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.i32 %3818, 0
  %3820 = and i32 %3819, 32767
  %3821 = mul nuw nsw i32 %3820, 928
  %3822 = add nuw nsw i32 %3821, 48
  %3823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3824 = extractvalue %dx.types.ResRet.f32 %3823, 0
  %3825 = extractvalue %dx.types.ResRet.f32 %3823, 1
  %3826 = extractvalue %dx.types.ResRet.f32 %3823, 2
  %3827 = add nuw nsw i32 %3821, 60
  %3828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3829 = extractvalue %dx.types.ResRet.f32 %3828, 0
  %3830 = extractvalue %dx.types.ResRet.f32 %3828, 1
  %3831 = extractvalue %dx.types.ResRet.f32 %3828, 2
  %3832 = fmul fast float %3824, %3814
  %3833 = fmul fast float %3825, %3814
  %3834 = fmul fast float %3826, %3814
  %3835 = fadd fast float %3832, %3788
  %3836 = fadd fast float %3833, %3789
  %3837 = fadd fast float %3834, %3790
  %3838 = fmul fast float %3829, %3814
  %3839 = fmul fast float %3830, %3814
  %3840 = fmul fast float %3831, %3814
  %3841 = fadd fast float %3838, %3791
  %3842 = fadd fast float %3839, %3792
  %3843 = fadd fast float %3840, %3793
  br label %3844

; <label>:3844                                    ; preds = %3816, %3787
  %3845 = phi float [ %3835, %3816 ], [ %3788, %3787 ]
  %3846 = phi float [ %3836, %3816 ], [ %3789, %3787 ]
  %3847 = phi float [ %3837, %3816 ], [ %3790, %3787 ]
  %3848 = phi float [ %3841, %3816 ], [ %3791, %3787 ]
  %3849 = phi float [ %3842, %3816 ], [ %3792, %3787 ]
  %3850 = phi float [ %3843, %3816 ], [ %3793, %3787 ]
  %3851 = add nuw i32 %3794, 1
  %3852 = icmp eq i32 %3851, %3776
  br i1 %3852, label %3853, label %3787

; <label>:3853                                    ; preds = %3844
  br label %3854

; <label>:3854                                    ; preds = %3853, %3717
  %3855 = phi float [ 0.000000e+00, %3717 ], [ %3845, %3853 ]
  %3856 = phi float [ 0.000000e+00, %3717 ], [ %3846, %3853 ]
  %3857 = phi float [ 0.000000e+00, %3717 ], [ %3847, %3853 ]
  %3858 = phi float [ 0.000000e+00, %3717 ], [ %3848, %3853 ]
  %3859 = phi float [ 0.000000e+00, %3717 ], [ %3849, %3853 ]
  %3860 = phi float [ 0.000000e+00, %3717 ], [ %3850, %3853 ]
  %3861 = fadd fast float %3858, %3855
  %3862 = fmul fast float %3861, 0x3F847AE140000000
  %3863 = fadd fast float %3859, %3856
  %3864 = fmul fast float %3863, 0x3F847AE140000000
  %3865 = fadd fast float %3860, %3857
  %3866 = fmul fast float %3865, 0x3F847AE140000000
  br label %3867

; <label>:3867                                    ; preds = %3854, %3651, %3596, %3593, %3564, %3526
  %3868 = phi float [ %3578, %3564 ], [ -1.310720e+05, %3526 ], [ %3770, %3854 ], [ -1.310720e+05, %3596 ], [ -1.310720e+05, %3651 ], [ -1.310720e+05, %3593 ]
  %3869 = phi float [ %3588, %3564 ], [ 0.000000e+00, %3526 ], [ %3862, %3854 ], [ 0.000000e+00, %3596 ], [ 0.000000e+00, %3651 ], [ 0.000000e+00, %3593 ]
  %3870 = phi float [ %3590, %3564 ], [ 0.000000e+00, %3526 ], [ %3864, %3854 ], [ 0.000000e+00, %3596 ], [ 0.000000e+00, %3651 ], [ 0.000000e+00, %3593 ]
  %3871 = phi float [ %3592, %3564 ], [ 0.000000e+00, %3526 ], [ %3866, %3854 ], [ 0.000000e+00, %3596 ], [ 0.000000e+00, %3651 ], [ 0.000000e+00, %3593 ]
  %3872 = phi i1 [ true, %3564 ], [ false, %3526 ], [ true, %3854 ], [ false, %3596 ], [ false, %3651 ], [ false, %3593 ]
  %3873 = and i32 %145, 3
  %3874 = icmp eq i32 %3873, 1
  %3875 = select i1 %3874, float 1.000000e+00, float 0.000000e+00
  %3876 = fsub fast float %3868, %129
  %3877 = call float @dx.op.unary.f32(i32 7, float %3876)  ; Saturate(value)
  %3878 = select i1 %3872, float %3877, float 1.000000e+00
  %3879 = fmul fast float %3878, %3875
  %3880 = icmp eq i32 %3873, 3
  %3881 = select i1 %3880, float 1.000000e+00, float %3879
  %3882 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3881)  ; FMax(a,b)
  %3883 = call float @dx.op.unary.f32(i32 7, float %3882)  ; Saturate(value)
  %3884 = fcmp fast une float %3883, 0.000000e+00
  %3885 = call float @dx.op.dot3.f32(i32 55, float %127, float %128, float %129, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %3886 = call float @dx.op.unary.f32(i32 25, float %3885)  ; Rsqrt(value)
  br i1 %3884, label %3894, label %3887

; <label>:3887                                    ; preds = %3867
  %3888 = fmul fast float %3886, %127
  %3889 = fmul fast float %3886, %128
  %3890 = fmul fast float %3886, %129
  %3891 = fsub fast float -0.000000e+00, %3888
  %3892 = fsub fast float -0.000000e+00, %3889
  %3893 = fsub fast float -0.000000e+00, %3890
  br label %4062

; <label>:3894                                    ; preds = %3867
  %3895 = fmul fast float %127, %3886
  %3896 = fsub fast float -0.000000e+00, %3895
  %3897 = fmul fast float %128, %3886
  %3898 = fsub fast float -0.000000e+00, %3897
  %3899 = fmul fast float %129, %3886
  %3900 = fsub fast float -0.000000e+00, %3899
  %3901 = call float @dx.op.dot3.f32(i32 55, float %3896, float %3898, float %3900, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %3902 = fmul fast float %3883, 2.500000e+00
  %3903 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3904 = fmul fast float %3883, 0x4013FFFFE0000000
  %3905 = fadd fast float %3904, 0xBFFFFFFFE0000000
  %3906 = call float @dx.op.unary.f32(i32 7, float %3905)  ; Saturate(value)
  %3907 = fmul fast float %3883, 0x4004000020000000
  %3908 = fadd fast float %3907, 0xBFF8000040000000
  %3909 = call float @dx.op.unary.f32(i32 7, float %3908)  ; Saturate(value)
  %3910 = call float @dx.op.unary.f32(i32 7, float %3903)  ; Saturate(value)
  %3911 = fmul fast float %3472, 1.000000e+01
  %3912 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3913 = fmul fast float %3912, 2.000000e+00
  %3914 = fsub fast float 3.000000e+00, %3913
  %3915 = fmul fast float %3912, %3912
  %3916 = fmul fast float %3915, %3914
  %3917 = fsub fast float 1.000000e+00, %3916
  %3918 = fsub fast float 0x3FE3333340000000, %3493
  %3919 = fmul fast float %3918, 0x400AAAAAA0000000
  %3920 = call float @dx.op.unary.f32(i32 7, float %3919)  ; Saturate(value)
  %3921 = fmul fast float %3917, %3920
  %3922 = fmul fast float %3505, 0x3FEA2B8620000000
  %3923 = fmul fast float %3506, 0x3FEA2B8620000000
  %3924 = fmul fast float %3507, 0x3FEA2B8620000000
  %3925 = fadd fast float %3922, 0x3FC81DFBA0000000
  %3926 = fmul fast float %3925, %3505
  %3927 = fadd fast float %3926, 0x3F910E6020000000
  %3928 = fadd fast float %3923, 0x3FC81DFBA0000000
  %3929 = fmul fast float %3928, %3506
  %3930 = fadd fast float %3929, 0x3F910E6020000000
  %3931 = fadd fast float %3924, 0x3FC81DFBA0000000
  %3932 = fmul fast float %3931, %3507
  %3933 = fadd fast float %3932, 0x3F910E6020000000
  %3934 = call float @dx.op.unary.f32(i32 7, float %3927)  ; Saturate(value)
  %3935 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  %3936 = call float @dx.op.unary.f32(i32 7, float %3933)  ; Saturate(value)
  %3937 = fsub fast float %3934, %3505
  %3938 = fsub fast float %3935, %3506
  %3939 = fsub fast float %3936, %3507
  %3940 = fmul fast float %3937, %3910
  %3941 = fmul fast float %3940, %3921
  %3942 = fmul fast float %3938, %3910
  %3943 = fmul fast float %3942, %3921
  %3944 = fmul fast float %3939, %3910
  %3945 = fmul fast float %3944, %3921
  %3946 = fadd fast float %3941, %3505
  %3947 = fadd fast float %3943, %3506
  %3948 = fadd fast float %3945, %3507
  %3949 = fmul fast float %3440, %3440
  %3950 = fmul fast float %3949, %3949
  %3951 = fadd fast float %3906, 1.000000e+00
  %3952 = fsub fast float %3951, %3921
  %3953 = call float @dx.op.unary.f32(i32 7, float %3952)  ; Saturate(value)
  %3954 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3955 = call float @dx.op.unary.f32(i32 7, float %3954)  ; Saturate(value)
  %3956 = fsub fast float 1.000000e+00, %3950
  %3957 = call float @dx.op.binary.f32(i32 36, float %3953, float %3956)  ; FMin(a,b)
  %3958 = call float @dx.op.unary.f32(i32 7, float %3909)  ; Saturate(value)
  %3959 = call float @dx.op.binary.f32(i32 35, float %3957, float %3958)  ; FMax(a,b)
  %3960 = fadd fast float %3955, 0xBFE4CCCCC0000000
  %3961 = fmul fast float %3960, 0x4006DB6DA0000000
  %3962 = call float @dx.op.unary.f32(i32 7, float %3961)  ; Saturate(value)
  %3963 = fmul fast float %3962, 2.000000e+00
  %3964 = fsub fast float 3.000000e+00, %3963
  %3965 = bitcast float %3490 to i32
  %3966 = ashr i32 %3965, 1
  %3967 = add nsw i32 %3966, 532487669
  %3968 = bitcast i32 %3967 to float
  %3969 = fsub fast float 1.000000e+00, %3968
  %3970 = bitcast float %3969 to i32
  %3971 = sub nsw i32 2129859010, %3970
  %3972 = bitcast i32 %3971 to float
  %3973 = fmul fast float %3972, 2.000000e+00
  %3974 = bitcast float %3491 to i32
  %3975 = ashr i32 %3974, 1
  %3976 = add nsw i32 %3975, 532487669
  %3977 = bitcast i32 %3976 to float
  %3978 = fsub fast float 1.000000e+00, %3977
  %3979 = bitcast float %3978 to i32
  %3980 = sub nsw i32 2129859010, %3979
  %3981 = bitcast i32 %3980 to float
  %3982 = fmul fast float %3981, 2.000000e+00
  %3983 = bitcast float %3492 to i32
  %3984 = ashr i32 %3983, 1
  %3985 = add nsw i32 %3984, 532487669
  %3986 = bitcast i32 %3985 to float
  %3987 = fsub fast float 1.000000e+00, %3986
  %3988 = bitcast float %3987 to i32
  %3989 = sub nsw i32 2129859010, %3988
  %3990 = bitcast i32 %3989 to float
  %3991 = fmul fast float %3990, 2.000000e+00
  %3992 = fsub fast float 0x4002A9FBE0000000, %3973
  %3993 = fadd fast float %3973, 0x3FD54FDF00000000
  %3994 = bitcast float %3993 to i32
  %3995 = sub nsw i32 2129859010, %3994
  %3996 = bitcast i32 %3995 to float
  %3997 = fmul fast float %3996, %3992
  %3998 = fmul fast float %3997, %3997
  %3999 = fsub fast float 0x4002A9FBE0000000, %3982
  %4000 = fadd fast float %3982, 0x3FD54FDF00000000
  %4001 = bitcast float %4000 to i32
  %4002 = sub nsw i32 2129859010, %4001
  %4003 = bitcast i32 %4002 to float
  %4004 = fmul fast float %4003, %3999
  %4005 = fmul fast float %4004, %4004
  %4006 = fsub fast float 0x4002A9FBE0000000, %3991
  %4007 = fadd fast float %3991, 0x3FD54FDF00000000
  %4008 = bitcast float %4007 to i32
  %4009 = sub nsw i32 2129859010, %4008
  %4010 = bitcast i32 %4009 to float
  %4011 = fmul fast float %4010, %4006
  %4012 = fmul fast float %4011, %4011
  %4013 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3998)  ; FMax(a,b)
  %4014 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4005)  ; FMax(a,b)
  %4015 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4012)  ; FMax(a,b)
  %4016 = fsub fast float 1.000000e+00, %3901
  %4017 = fadd fast float %4016, %3917
  %4018 = call float @dx.op.unary.f32(i32 7, float %4017)  ; Saturate(value)
  %4019 = fsub fast float 1.000000e+00, %3881
  %4020 = fmul fast float %3959, %4019
  %4021 = fmul fast float %3962, %3962
  %4022 = fmul fast float %4021, %4020
  %4023 = fmul fast float %4022, %3964
  %4024 = fmul fast float %4019, 0xBFE99999A0000000
  %4025 = fmul fast float %4024, %3910
  %4026 = fmul fast float %4025, %3921
  %4027 = fadd fast float %4026, 1.000000e+00
  %4028 = fadd fast float %3493, -1.000000e+00
  %4029 = fmul fast float %4027, %4028
  %4030 = fadd fast float %4029, 1.000000e+00
  %4031 = fsub fast float %4013, %3490
  %4032 = fsub fast float %4014, %3491
  %4033 = fsub fast float %4015, %3492
  %4034 = fmul fast float %4023, %4031
  %4035 = fmul fast float %4023, %4032
  %4036 = fmul fast float %4023, %4033
  %4037 = fadd fast float %4034, %3490
  %4038 = fadd fast float %4035, %3491
  %4039 = fadd fast float %4036, %3492
  %4040 = fsub fast float %71, %3469
  %4041 = fsub fast float %72, %3470
  %4042 = fsub fast float %73, %3471
  %4043 = fmul fast float %4023, %4040
  %4044 = fmul fast float %4023, %4041
  %4045 = fmul fast float %4023, %4042
  %4046 = fadd fast float %4043, %3469
  %4047 = fadd fast float %4044, %3470
  %4048 = fadd fast float %4045, %3471
  %4049 = fmul fast float %4023, %4018
  %4050 = call float @dx.op.unary.f32(i32 7, float %4030)  ; Saturate(value)
  %4051 = fsub fast float 1.000000e+00, %4050
  %4052 = fmul fast float %4049, %4051
  %4053 = fadd fast float %4052, %4050
  %4054 = fsub fast float 1.000000e+00, %3440
  %4055 = fmul fast float %4023, %4054
  %4056 = fadd fast float %4055, %3440
  %4057 = call float @dx.op.dot3.f32(i32 55, float %4046, float %4047, float %4048, float %4046, float %4047, float %4048)  ; Dot3(ax,ay,az,bx,by,bz)
  %4058 = call float @dx.op.unary.f32(i32 25, float %4057)  ; Rsqrt(value)
  %4059 = fmul fast float %4046, %4058
  %4060 = fmul fast float %4047, %4058
  %4061 = fmul fast float %4048, %4058
  br label %4062

; <label>:4062                                    ; preds = %3894, %3887
  %4063 = phi float [ %3893, %3887 ], [ %3900, %3894 ]
  %4064 = phi float [ %3892, %3887 ], [ %3898, %3894 ]
  %4065 = phi float [ %3891, %3887 ], [ %3896, %3894 ]
  %4066 = phi float [ %3890, %3887 ], [ %3899, %3894 ]
  %4067 = phi float [ %3889, %3887 ], [ %3897, %3894 ]
  %4068 = phi float [ %3888, %3887 ], [ %3895, %3894 ]
  %4069 = phi float [ %3505, %3887 ], [ %3946, %3894 ]
  %4070 = phi float [ %3506, %3887 ], [ %3947, %3894 ]
  %4071 = phi float [ %3507, %3887 ], [ %3948, %3894 ]
  %4072 = phi float [ %3469, %3887 ], [ %4059, %3894 ]
  %4073 = phi float [ %3470, %3887 ], [ %4060, %3894 ]
  %4074 = phi float [ %3471, %3887 ], [ %4061, %3894 ]
  %4075 = phi float [ %3490, %3887 ], [ %4037, %3894 ]
  %4076 = phi float [ %3491, %3887 ], [ %4038, %3894 ]
  %4077 = phi float [ %3492, %3887 ], [ %4039, %3894 ]
  %4078 = phi float [ %3493, %3887 ], [ %4053, %3894 ]
  %4079 = phi float [ %3440, %3887 ], [ %4056, %3894 ]
  %4080 = select i1 %171, float 0.000000e+00, float %4077
  %4081 = call float @dx.op.dot3.f32(i32 55, float %4072, float %4073, float %4074, float %4065, float %4064, float %4063)  ; Dot3(ax,ay,az,bx,by,bz)
  %4082 = call float @dx.op.unary.f32(i32 7, float %4081)  ; Saturate(value)
  %4083 = call float @dx.op.dot3.f32(i32 55, float %4068, float %4067, float %4066, float %4072, float %4073, float %4074)  ; Dot3(ax,ay,az,bx,by,bz)
  %4084 = fmul fast float %4083, 2.000000e+00
  %4085 = fmul fast float %4084, %4072
  %4086 = fmul fast float %4084, %4073
  %4087 = fmul fast float %4084, %4074
  %4088 = fsub fast float %4068, %4085
  %4089 = fsub fast float %4067, %4086
  %4090 = fsub fast float %4066, %4087
  %4091 = call float @dx.op.binary.f32(i32 36, float %4079, float 1.000000e+00)  ; FMin(a,b)
  %4092 = fsub fast float 1.000000e+00, %4079
  %4093 = bitcast float %4092 to i32
  %4094 = sub nsw i32 2129859010, %4093
  %4095 = bitcast i32 %4094 to float
  %4096 = fsub fast float 1.000000e+00, %41
  %4097 = call float @dx.op.dot3.f32(i32 55, float %91, float %92, float %93, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %4098 = call float @dx.op.binary.f32(i32 35, float %4097, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4099 = fdiv fast float %4096, %4098
  %4100 = call float @dx.op.dot3.f32(i32 55, float %4072, float %4073, float %4074, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %4101 = call float @dx.op.unary.f32(i32 7, float %4100)  ; Saturate(value)
  %4102 = fmul fast float %4101, 5.000000e-01
  %4103 = fadd fast float %4102, 5.000000e-01
  %4104 = fmul fast float %4103, %41
  %4105 = call float @dx.op.dot3.f32(i32 55, float %4072, float %4073, float %4074, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %4106 = call float @dx.op.unary.f32(i32 7, float %4105)  ; Saturate(value)
  %4107 = fmul fast float %4106, %4099
  %4108 = fadd fast float %4104, %4107
  %4109 = fsub fast float 5.000000e-01, %4102
  %4110 = fmul fast float %4109, %4069
  %4111 = fmul fast float %4109, %4070
  %4112 = fmul fast float %4109, %4071
  %4113 = fadd fast float %4108, %4110
  %4114 = fadd fast float %4108, %4111
  %4115 = fadd fast float %4108, %4112
  %4116 = call float @dx.op.dot3.f32(i32 55, float %4088, float %4089, float %4090, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %4117 = call float @dx.op.unary.f32(i32 7, float %4116)  ; Saturate(value)
  %4118 = fmul fast float %4117, 5.000000e-01
  %4119 = fadd fast float %4118, 5.000000e-01
  %4120 = fmul fast float %4119, %41
  %4121 = call float @dx.op.dot3.f32(i32 55, float %4088, float %4089, float %4090, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %4122 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4123 = fmul fast float %4122, %4099
  %4124 = fadd fast float %4120, %4123
  %4125 = fsub fast float 5.000000e-01, %4118
  %4126 = fmul fast float %4125, %4069
  %4127 = fmul fast float %4125, %4070
  %4128 = fmul fast float %4125, %4071
  %4129 = fadd fast float %4124, %4126
  %4130 = fadd fast float %4124, %4127
  %4131 = fadd fast float %4124, %4128
  %4132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4133 = extractvalue %dx.types.CBufRet.f32 %4132, 0
  %4134 = call float @dx.op.binary.f32(i32 36, float %4069, float %4133)  ; FMin(a,b)
  %4135 = fsub fast float 1.000000e+00, %4091
  %4136 = fmul fast float %4134, %4135
  %4137 = fsub fast float 1.000000e+00, %4136
  %4138 = bitcast float %4137 to i32
  %4139 = sub nsw i32 2129859010, %4138
  %4140 = bitcast i32 %4139 to float
  %4141 = call float @dx.op.binary.f32(i32 36, float %4070, float %4133)  ; FMin(a,b)
  %4142 = fmul fast float %4141, %4135
  %4143 = fsub fast float 1.000000e+00, %4142
  %4144 = bitcast float %4143 to i32
  %4145 = sub nsw i32 2129859010, %4144
  %4146 = bitcast i32 %4145 to float
  %4147 = call float @dx.op.binary.f32(i32 36, float %4071, float %4133)  ; FMin(a,b)
  %4148 = fmul fast float %4147, %4135
  %4149 = fsub fast float 1.000000e+00, %4148
  %4150 = bitcast float %4149 to i32
  %4151 = sub nsw i32 2129859010, %4150
  %4152 = bitcast i32 %4151 to float
  %4153 = fmul fast float %4091, %42
  %4154 = fmul fast float %4153, %4113
  %4155 = fmul fast float %4154, %4140
  %4156 = fmul fast float %4091, %43
  %4157 = fmul fast float %4156, %4114
  %4158 = fmul fast float %4157, %4146
  %4159 = fmul fast float %4091, %44
  %4160 = fmul fast float %4159, %4115
  %4161 = fmul fast float %4160, %4152
  %4162 = call float @dx.op.binary.f32(i32 36, float %4075, float %4133)  ; FMin(a,b)
  %4163 = fmul fast float %4162, %4135
  %4164 = fsub fast float 1.000000e+00, %4163
  %4165 = bitcast float %4164 to i32
  %4166 = sub nsw i32 2129859010, %4165
  %4167 = bitcast i32 %4166 to float
  %4168 = call float @dx.op.binary.f32(i32 36, float %4076, float %4133)  ; FMin(a,b)
  %4169 = fmul fast float %4168, %4135
  %4170 = fsub fast float 1.000000e+00, %4169
  %4171 = bitcast float %4170 to i32
  %4172 = sub nsw i32 2129859010, %4171
  %4173 = bitcast i32 %4172 to float
  %4174 = call float @dx.op.binary.f32(i32 36, float %4080, float %4133)  ; FMin(a,b)
  %4175 = fmul fast float %4174, %4135
  %4176 = fsub fast float 1.000000e+00, %4175
  %4177 = bitcast float %4176 to i32
  %4178 = sub nsw i32 2129859010, %4177
  %4179 = bitcast i32 %4178 to float
  %4180 = fmul fast float %4153, %4129
  %4181 = fmul fast float %4180, %4167
  %4182 = fmul fast float %4156, %4130
  %4183 = fmul fast float %4182, %4173
  %4184 = fmul fast float %4159, %4131
  %4185 = fmul fast float %4184, %4179
  %4186 = call float @dx.op.dot3.f32(i32 55, float %4155, float %4158, float %4161, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4187 = select i1 %171, float 0.000000e+00, float %4155
  %4188 = select i1 %171, float %4186, float %4158
  %4189 = select i1 %171, float 0.000000e+00, float %4161
  %4190 = call float @dx.op.dot3.f32(i32 55, float %4181, float %4183, float %4185, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4191 = select i1 %171, float 0.000000e+00, float %4181
  %4192 = select i1 %171, float %4190, float %4183
  %4193 = select i1 %171, float 0.000000e+00, float %4185
  %4194 = fmul fast float %4082, 9.843750e-01
  %4195 = fmul fast float %4078, 9.843750e-01
  %4196 = fadd fast float %4194, 7.812500e-03
  %4197 = fadd fast float %4195, 7.812500e-03
  %4198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %4196, float %4197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4199 = extractvalue %dx.types.ResRet.f32 %4198, 2
  %4200 = extractvalue %dx.types.ResRet.f32 %4198, 3
  %4201 = fmul fast float %4199, %4075
  %4202 = fmul fast float %4199, %4076
  %4203 = fmul fast float %4199, %4080
  %4204 = fadd fast float %4201, %4200
  %4205 = fadd fast float %4202, %4200
  %4206 = fadd fast float %4203, %4200
  %4207 = call float @dx.op.binary.f32(i32 35, float %4205, float %4206)  ; FMax(a,b)
  %4208 = call float @dx.op.binary.f32(i32 35, float %4204, float %4207)  ; FMax(a,b)
  %4209 = fsub fast float 1.000000e+00, %4208
  %4210 = fmul fast float %4209, %4187
  %4211 = fmul fast float %4209, %4188
  %4212 = fmul fast float %4209, %4189
  %4213 = fmul fast float %4204, %4191
  %4214 = fmul fast float %4205, %4192
  %4215 = fmul fast float %4206, %4193
  %4216 = fmul fast float %4210, %876
  %4217 = fmul fast float %4211, %876
  %4218 = fmul fast float %4212, %876
  %4219 = fadd fast float %4213, %3435
  %4220 = fmul fast float %4219, %876
  %4221 = fadd fast float %4214, %3436
  %4222 = fmul fast float %4221, %876
  %4223 = fadd fast float %4215, %3437
  %4224 = fmul fast float %4223, %876
  %4225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4226 = extractvalue %dx.types.CBufRet.f32 %4225, 3
  %4227 = fcmp fast oeq float %4226, 0.000000e+00
  br i1 %4227, label %4386, label %4228

; <label>:4228                                    ; preds = %4062
  %4229 = extractvalue %dx.types.CBufRet.f32 %4225, 0
  %4230 = extractvalue %dx.types.CBufRet.f32 %4225, 1
  %4231 = extractvalue %dx.types.CBufRet.f32 %4225, 2
  %4232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4233 = extractvalue %dx.types.CBufRet.f32 %4232, 0
  %4234 = extractvalue %dx.types.CBufRet.f32 %4232, 1
  %4235 = extractvalue %dx.types.CBufRet.f32 %4232, 2
  %4236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4237 = extractvalue %dx.types.CBufRet.f32 %4236, 0
  %4238 = extractvalue %dx.types.CBufRet.f32 %4236, 1
  %4239 = call float @dx.op.dot3.f32(i32 55, float %4233, float %4234, float %4235, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4240 = select i1 %171, float %4237, float %4233
  %4241 = select i1 %171, float %4239, float %4234
  %4242 = select i1 %171, float %4238, float %4235
  %4243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.f32 %4243, 1
  %4245 = fcmp fast une float %4244, 0.000000e+00
  br i1 %4245, label %4246, label %4263

; <label>:4246                                    ; preds = %4228
  %4247 = fptoui float %64 to i32
  %4248 = fptoui float %65 to i32
  %4249 = lshr i32 %4247, 4
  %4250 = lshr i32 %4248, 4
  %4251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4252 = extractvalue %dx.types.CBufRet.f32 %4251, 0
  %4253 = fptoui float %4252 to i32
  %4254 = add i32 %4253, 15
  %4255 = lshr i32 %4254, 4
  %4256 = mul i32 %4255, %4250
  %4257 = add i32 %4256, %4249
  %4258 = shl i32 %4257, 3
  %4259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4258, i32 undef)  ; BufferLoad(srv,index,wot)
  %4260 = extractvalue %dx.types.ResRet.i32 %4259, 0
  %4261 = and i32 %4260, -268435456
  %4262 = icmp eq i32 %4261, -1342177280
  br i1 %4262, label %4273, label %4263

; <label>:4263                                    ; preds = %4246, %4228
  %4264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4265 = extractvalue %dx.types.CBufRet.f32 %4264, 2
  %4266 = extractvalue %dx.types.CBufRet.f32 %4264, 3
  %4267 = fmul fast float %4265, %64
  %4268 = fmul fast float %4266, %65
  %4269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %27, float %4267, float %4268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4270 = extractvalue %dx.types.ResRet.f32 %4269, 0
  %4271 = extractvalue %dx.types.ResRet.f32 %4269, 1
  %4272 = extractvalue %dx.types.ResRet.f32 %4269, 2
  br label %4273

; <label>:4273                                    ; preds = %4263, %4246
  %4274 = phi float [ %4270, %4263 ], [ 0.000000e+00, %4246 ]
  %4275 = phi float [ %4271, %4263 ], [ 0.000000e+00, %4246 ]
  %4276 = phi float [ %4272, %4263 ], [ 0.000000e+00, %4246 ]
  %4277 = call float @dx.op.binary.f32(i32 36, float %4275, float %4276)  ; FMin(a,b)
  %4278 = call float @dx.op.binary.f32(i32 36, float %4274, float %4277)  ; FMin(a,b)
  %4279 = fcmp fast ogt float %4278, 0.000000e+00
  br i1 %4279, label %4280, label %4386, !dx.controlflow.hints !68

; <label>:4280                                    ; preds = %4273
  %4281 = fmul fast float %4274, %4240
  %4282 = fmul fast float %4275, %4241
  %4283 = fmul fast float %4276, %4242
  %4284 = fsub fast float %4229, %4068
  %4285 = fsub fast float %4230, %4067
  %4286 = fsub fast float %4231, %4066
  %4287 = call float @dx.op.dot3.f32(i32 55, float %4284, float %4285, float %4286, float %4284, float %4285, float %4286)  ; Dot3(ax,ay,az,bx,by,bz)
  %4288 = call float @dx.op.unary.f32(i32 25, float %4287)  ; Rsqrt(value)
  %4289 = fmul fast float %4288, %4284
  %4290 = fmul fast float %4288, %4285
  %4291 = fmul fast float %4288, %4286
  %4292 = call float @dx.op.dot3.f32(i32 55, float %4229, float %4230, float %4231, float %4072, float %4073, float %4074)  ; Dot3(ax,ay,az,bx,by,bz)
  %4293 = call float @dx.op.dot3.f32(i32 55, float %4065, float %4064, float %4063, float %4289, float %4290, float %4291)  ; Dot3(ax,ay,az,bx,by,bz)
  %4294 = call float @dx.op.unary.f32(i32 7, float %4292)  ; Saturate(value)
  %4295 = fmul fast float %4294, %4294
  %4296 = fmul fast float %4295, %4095
  %4297 = call float @dx.op.unary.f32(i32 7, float %4296)  ; Saturate(value)
  %4298 = fmul fast float %4297, %4294
  %4299 = call float @dx.op.dot3.f32(i32 55, float %4072, float %4073, float %4074, float %4289, float %4290, float %4291)  ; Dot3(ax,ay,az,bx,by,bz)
  %4300 = fmul fast float %4299, %4299
  %4301 = call float @dx.op.unary.f32(i32 6, float %4292)  ; FAbs(value)
  %4302 = fsub fast float 1.000000e+00, %4078
  %4303 = call float @dx.op.binary.f32(i32 35, float %4302, float 0x3F847AE140000000)  ; FMax(a,b)
  %4304 = fmul fast float %4303, %4303
  %4305 = fmul fast float %4304, %4304
  %4306 = fsub fast float 1.000000e+00, %4305
  %4307 = fmul fast float %4082, %4082
  %4308 = fmul fast float %4307, %4306
  %4309 = fadd fast float %4308, %4305
  %4310 = bitcast float %4309 to i32
  %4311 = ashr i32 %4310, 1
  %4312 = add nsw i32 %4311, 532487669
  %4313 = bitcast i32 %4312 to float
  %4314 = fadd fast float %4313, %4082
  %4315 = fmul fast float %4305, %4300
  %4316 = fsub fast float 1.000000e+00, %4300
  %4317 = fadd fast float %4316, %4315
  %4318 = fmul fast float %4301, %4301
  %4319 = fmul fast float %4318, %4306
  %4320 = fadd fast float %4319, %4305
  %4321 = bitcast float %4320 to i32
  %4322 = ashr i32 %4321, 1
  %4323 = add nsw i32 %4322, 532487669
  %4324 = bitcast i32 %4323 to float
  %4325 = fadd fast float %4324, %4301
  %4326 = fmul fast float %4317, %4317
  %4327 = fmul fast float %4326, %4314
  %4328 = fmul fast float %4327, %4325
  %4329 = fdiv fast float 0x3FF0A00000000000, %4328
  %4330 = fmul fast float %4329, %4305
  %4331 = call float @dx.op.unary.f32(i32 6, float %4293)  ; FAbs(value)
  %4332 = fsub fast float 1.000000e+00, %4331
  %4333 = bitcast float %4332 to i32
  %4334 = sitofp i32 %4333 to float
  %4335 = fmul fast float %4334, 5.000000e+00
  %4336 = fadd fast float %4335, 0xC1EFBF8940000000
  %4337 = fptosi float %4336 to i32
  %4338 = bitcast i32 %4337 to float
  %4339 = fsub fast float 1.000000e+00, %4075
  %4340 = fsub fast float 1.000000e+00, %4076
  %4341 = fsub fast float 1.000000e+00, %4080
  %4342 = fmul fast float %4338, %4339
  %4343 = fmul fast float %4338, %4340
  %4344 = fmul fast float %4338, %4341
  %4345 = fadd fast float %4342, %4075
  %4346 = fadd fast float %4343, %4076
  %4347 = fadd fast float %4344, %4080
  %4348 = fmul fast float %4292, 9.843750e-01
  %4349 = fadd fast float %4348, 7.812500e-03
  %4350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %4349, float %4197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4351 = extractvalue %dx.types.ResRet.f32 %4350, 2
  %4352 = extractvalue %dx.types.ResRet.f32 %4350, 3
  %4353 = fmul fast float %4351, %4075
  %4354 = fmul fast float %4351, %4076
  %4355 = fmul fast float %4351, %4080
  %4356 = fadd fast float %4353, %4352
  %4357 = fadd fast float %4354, %4352
  %4358 = fadd fast float %4355, %4352
  %4359 = call float @dx.op.binary.f32(i32 35, float %4357, float %4358)  ; FMax(a,b)
  %4360 = call float @dx.op.binary.f32(i32 35, float %4356, float %4359)  ; FMax(a,b)
  %4361 = fsub fast float 1.000000e+00, %4360
  %4362 = fmul fast float %4298, %4281
  %4363 = fmul fast float %4362, %4361
  %4364 = fmul fast float %4298, %4282
  %4365 = fmul fast float %4364, %4361
  %4366 = fmul fast float %4298, %4283
  %4367 = fmul fast float %4366, %4361
  %4368 = fmul fast float %4362, %4330
  %4369 = fmul fast float %4368, %4345
  %4370 = fmul fast float %4364, %4330
  %4371 = fmul fast float %4370, %4346
  %4372 = fmul fast float %4366, %4330
  %4373 = fmul fast float %4372, %4347
  %4374 = fadd fast float %4363, %4210
  %4375 = fmul fast float %4374, %876
  %4376 = fadd fast float %4365, %4211
  %4377 = fmul fast float %4376, %876
  %4378 = fadd fast float %4367, %4212
  %4379 = fmul fast float %4378, %876
  %4380 = fadd fast float %4369, %4219
  %4381 = fmul fast float %4380, %876
  %4382 = fadd fast float %4371, %4221
  %4383 = fmul fast float %4382, %876
  %4384 = fadd fast float %4373, %4223
  %4385 = fmul fast float %4384, %876
  br label %4386

; <label>:4386                                    ; preds = %4280, %4273, %4062
  %4387 = phi float [ %4220, %4062 ], [ %4220, %4273 ], [ %4381, %4280 ]
  %4388 = phi float [ %4222, %4062 ], [ %4222, %4273 ], [ %4383, %4280 ]
  %4389 = phi float [ %4224, %4062 ], [ %4224, %4273 ], [ %4385, %4280 ]
  %4390 = phi float [ %4216, %4062 ], [ %4216, %4273 ], [ %4375, %4280 ]
  %4391 = phi float [ %4217, %4062 ], [ %4217, %4273 ], [ %4377, %4280 ]
  %4392 = phi float [ %4218, %4062 ], [ %4218, %4273 ], [ %4379, %4280 ]
  %4393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4394 = extractvalue %dx.types.CBufRet.i32 %4393, 0
  %4395 = icmp eq i32 %4394, 0
  br i1 %4395, label %4761, label %4396

; <label>:4396                                    ; preds = %4386
  %4397 = fptoui float %64 to i32
  %4398 = fptoui float %65 to i32
  %4399 = lshr i32 %4397, 4
  %4400 = lshr i32 %4398, 4
  %4401 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4402 = extractvalue %dx.types.CBufRet.i32 %4401, 0
  %4403 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4400, i32 %4402, i32 %4399)  ; UMad(a,b,c)
  %4404 = add nsw i32 %4394, -1
  %4405 = call i32 @dx.op.binary.i32(i32 37, i32 %4404, i32 0)  ; IMax(a,b)
  %4406 = call float @dx.op.binary.f32(i32 35, float %59, float 0.000000e+00)  ; FMax(a,b)
  %4407 = fptoui float %4406 to i32
  %4408 = lshr i32 %4407, 5
  %4409 = call i32 @dx.op.binary.i32(i32 40, i32 %4408, i32 8191)  ; UMin(a,b)
  %4410 = shl i32 %4409, 2
  %4411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4410, i32 undef)  ; BufferLoad(srv,index,wot)
  %4412 = extractvalue %dx.types.ResRet.i32 %4411, 0
  %4413 = lshr i32 %4412, 16
  %4414 = and i32 %4412, 65535
  %4415 = lshr i32 %4412, 21
  %4416 = lshr i32 %4414, 5
  %4417 = call i32 @dx.op.binary.i32(i32 40, i32 %4416, i32 %4405)  ; UMin(a,b)
  %4418 = icmp ugt i32 %4415, %4417
  br i1 %4418, label %4761, label %4419

; <label>:4419                                    ; preds = %4396
  br label %4420

; <label>:4420                                    ; preds = %4751, %4419
  %4421 = phi i32 [ %4758, %4751 ], [ %4415, %4419 ]
  %4422 = phi float [ %4752, %4751 ], [ %4387, %4419 ]
  %4423 = phi float [ %4753, %4751 ], [ %4388, %4419 ]
  %4424 = phi float [ %4754, %4751 ], [ %4389, %4419 ]
  %4425 = phi float [ %4755, %4751 ], [ %4390, %4419 ]
  %4426 = phi float [ %4756, %4751 ], [ %4391, %4419 ]
  %4427 = phi float [ %4757, %4751 ], [ %4392, %4419 ]
  %4428 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4429 = extractvalue %dx.types.CBufRet.i32 %4428, 0
  %4430 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4403, i32 %4429, i32 %4421)  ; UMad(a,b,c)
  %4431 = shl i32 %4430, 2
  %4432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4431, i32 undef)  ; BufferLoad(srv,index,wot)
  %4433 = extractvalue %dx.types.ResRet.i32 %4432, 0
  %4434 = shl i32 %4421, 5
  %4435 = sub nsw i32 %4413, %4434
  %4436 = call i32 @dx.op.binary.i32(i32 37, i32 %4435, i32 0)  ; IMax(a,b)
  %4437 = call i32 @dx.op.binary.i32(i32 38, i32 %4436, i32 31)  ; IMin(a,b)
  %4438 = sub nsw i32 1, %4413
  %4439 = add nsw i32 %4438, %4414
  %4440 = call i32 @dx.op.binary.i32(i32 37, i32 %4439, i32 0)  ; IMax(a,b)
  %4441 = call i32 @dx.op.binary.i32(i32 38, i32 %4440, i32 32)  ; IMin(a,b)
  %4442 = and i32 %4441, 31
  %4443 = shl i32 -1, %4442
  %4444 = xor i32 %4443, -1
  %4445 = and i32 %4437, 31
  %4446 = shl i32 %4444, %4445
  %4447 = icmp eq i32 %4441, 32
  %4448 = select i1 %4447, i32 -1, i32 %4446
  %4449 = and i32 %4448, %4433
  %4450 = icmp eq i32 %4449, 0
  br i1 %4450, label %4751, label %4451

; <label>:4451                                    ; preds = %4420
  br label %4452

; <label>:4452                                    ; preds = %4532, %4451
  %4453 = phi i32 [ %4464, %4532 ], [ %4449, %4451 ]
  %4454 = phi float [ %4533, %4532 ], [ %4422, %4451 ]
  %4455 = phi float [ %4534, %4532 ], [ %4423, %4451 ]
  %4456 = phi float [ %4535, %4532 ], [ %4424, %4451 ]
  %4457 = phi float [ %4536, %4532 ], [ %4425, %4451 ]
  %4458 = phi float [ %4537, %4532 ], [ %4426, %4451 ]
  %4459 = phi float [ %4538, %4532 ], [ %4427, %4451 ]
  %4460 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4453)  ; FirstbitLo(value)
  %4461 = add i32 %4460, %4434
  %4462 = and i32 %4460, 31
  %4463 = shl i32 1, %4462
  %4464 = xor i32 %4463, %4453
  %4465 = mul i32 %4461, 112
  %4466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4465, i32 undef)  ; BufferLoad(srv,index,wot)
  %4467 = extractvalue %dx.types.ResRet.f32 %4466, 0
  %4468 = extractvalue %dx.types.ResRet.f32 %4466, 1
  %4469 = extractvalue %dx.types.ResRet.f32 %4466, 2
  %4470 = or i32 %4465, 12
  %4471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4470, i32 undef)  ; BufferLoad(srv,index,wot)
  %4472 = extractvalue %dx.types.ResRet.f32 %4471, 0
  %4473 = add i32 %4465, 44
  %4474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4473, i32 undef)  ; BufferLoad(srv,index,wot)
  %4475 = extractvalue %dx.types.ResRet.f32 %4474, 0
  %4476 = add i32 %4465, 48
  %4477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4476, i32 undef)  ; BufferLoad(srv,index,wot)
  %4478 = extractvalue %dx.types.ResRet.f32 %4477, 0
  %4479 = extractvalue %dx.types.ResRet.f32 %4477, 1
  %4480 = extractvalue %dx.types.ResRet.f32 %4477, 2
  %4481 = add i32 %4465, 80
  %4482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4481, i32 undef)  ; BufferLoad(srv,index,wot)
  %4483 = extractvalue %dx.types.ResRet.f32 %4482, 1
  %4484 = extractvalue %dx.types.ResRet.f32 %4482, 2
  %4485 = call float @dx.op.dot3.f32(i32 55, float %4467, float %4468, float %4469, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4486 = select i1 %171, float %4483, float %4467
  %4487 = select i1 %171, float %4485, float %4468
  %4488 = select i1 %171, float %4484, float %4469
  %4489 = fsub fast float %4478, %127
  %4490 = fsub fast float %4479, %128
  %4491 = fsub fast float %4480, %129
  %4492 = call float @dx.op.dot3.f32(i32 55, float %4489, float %4490, float %4491, float %4489, float %4490, float %4491)  ; Dot3(ax,ay,az,bx,by,bz)
  %4493 = call float @dx.op.unary.f32(i32 24, float %4492)  ; Sqrt(value)
  %4494 = fdiv fast float 1.000000e+00, %4493
  %4495 = fmul fast float %4494, %4489
  %4496 = fmul fast float %4494, %4490
  %4497 = fmul fast float %4494, %4491
  %4498 = fadd fast float %4493, %4472
  %4499 = fdiv fast float 1.000000e+00, %4498
  %4500 = fmul float %4475, %4499
  %4501 = fmul float %4500, %4500
  %4502 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4503 = and i32 %4463, %4449
  %4504 = icmp eq i32 %4503, 0
  br i1 %4504, label %4527, label %4505, !dx.controlflow.hints !69

; <label>:4505                                    ; preds = %4452
  %4506 = lshr i32 %4397, 5
  %4507 = lshr i32 %4398, 5
  %4508 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %4506, i32 %4507, i32 %4461, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4509 = extractvalue %dx.types.ResRet.i32 %4508, 0
  %4510 = and i32 %4509, 3
  %4511 = icmp eq i32 %4510, 0
  %4512 = select i1 %4511, float 1.000000e+00, float 0.000000e+00
  %4513 = icmp eq i32 %4510, 3
  br i1 %4513, label %4514, label %4527

; <label>:4514                                    ; preds = %4505
  %4515 = lshr i32 %4509, 10
  %4516 = and i32 %4515, 8160
  %4517 = and i32 %4398, 31
  %4518 = or i32 %4516, %4517
  %4519 = lshr i32 %4509, 1
  %4520 = and i32 %4519, 16352
  %4521 = and i32 %4397, 31
  %4522 = or i32 %4520, %4521
  %4523 = lshr i32 %4509, 23
  %4524 = and i32 %4523, 255
  %4525 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %4522, i32 %4518, i32 %4524, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4526 = extractvalue %dx.types.ResRet.f32 %4525, 0
  br label %4527

; <label>:4527                                    ; preds = %4514, %4505, %4452
  %4528 = phi float [ %4526, %4514 ], [ %4512, %4505 ], [ 0.000000e+00, %4452 ]
  %4529 = call float @dx.op.binary.f32(i32 36, float %4528, float %4528)  ; FMin(a,b)
  %4530 = call float @dx.op.binary.f32(i32 36, float %4528, float %4529)  ; FMin(a,b)
  %4531 = fcmp fast ogt float %4530, 0.000000e+00
  br i1 %4531, label %4540, label %4532, !dx.controlflow.hints !70

; <label>:4532                                    ; preds = %4601, %4527
  %4533 = phi float [ %4454, %4527 ], [ %4747, %4601 ]
  %4534 = phi float [ %4455, %4527 ], [ %4748, %4601 ]
  %4535 = phi float [ %4456, %4527 ], [ %4749, %4601 ]
  %4536 = phi float [ %4457, %4527 ], [ %4738, %4601 ]
  %4537 = phi float [ %4458, %4527 ], [ %4739, %4601 ]
  %4538 = phi float [ %4459, %4527 ], [ %4740, %4601 ]
  %4539 = icmp eq i32 %4453, %4463
  br i1 %4539, label %4750, label %4452

; <label>:4540                                    ; preds = %4527
  %4541 = fmul fast float %4528, %4486
  %4542 = fmul fast float %4528, %4487
  %4543 = fmul fast float %4528, %4488
  %4544 = fsub fast float %4480, %3868
  %4545 = fcmp fast ogt float %4544, 0.000000e+00
  %4546 = fsub fast float %129, %3868
  %4547 = fcmp fast ogt float %4546, 0.000000e+00
  %4548 = xor i1 %4547, %4545
  %4549 = fsub fast float %3868, %4480
  %4550 = fmul fast float %4549, 2.000000e+00
  %4551 = fadd fast float %4550, %4480
  %4552 = select i1 %4548, float %4480, float %4551
  %4553 = fsub fast float %4552, %129
  %4554 = call float @dx.op.dot3.f32(i32 55, float %4489, float %4490, float %4553, float %4489, float %4490, float %4553)  ; Dot3(ax,ay,az,bx,by,bz)
  %4555 = call float @dx.op.unary.f32(i32 25, float %4554)  ; Rsqrt(value)
  %4556 = fmul fast float %4555, %4489
  %4557 = fmul fast float %4555, %4490
  %4558 = fmul fast float %4555, %4553
  %4559 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3876)  ; Dot3(ax,ay,az,bx,by,bz)
  %4560 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4556, float %4557, float %4558)  ; Dot3(ax,ay,az,bx,by,bz)
  %4561 = fdiv fast float 1.000000e+00, %4560
  %4562 = fmul fast float %4561, %4559
  %4563 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4546, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4564 = fcmp fast ogt float %4563, 0.000000e+00
  %4565 = fcmp fast olt float %4563, 0.000000e+00
  %4566 = zext i1 %4564 to i32
  %4567 = zext i1 %4565 to i32
  %4568 = sub nsw i32 %4566, %4567
  %4569 = sitofp i32 %4568 to float
  %4570 = fsub fast float %4552, %3868
  %4571 = call float @dx.op.dot3.f32(i32 55, float %4489, float %4490, float %4570, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4572 = fcmp fast ogt float %4571, 0.000000e+00
  %4573 = fcmp fast olt float %4571, 0.000000e+00
  %4574 = zext i1 %4572 to i32
  %4575 = zext i1 %4573 to i32
  %4576 = sub nsw i32 %4574, %4575
  %4577 = sitofp i32 %4576 to float
  %4578 = fcmp fast une float %4569, %4577
  br i1 %4578, label %4579, label %4589

; <label>:4579                                    ; preds = %4540
  %4580 = fmul fast float %4562, %4558
  %4581 = fmul fast float %4562, %4557
  %4582 = fmul fast float %4562, %4556
  %4583 = fmul fast float %4582, %4582
  %4584 = fmul fast float %4581, %4581
  %4585 = fadd fast float %4583, %4584
  %4586 = fmul fast float %4580, %4580
  %4587 = fadd fast float %4585, %4586
  %4588 = call float @dx.op.unary.f32(i32 24, float %4587)  ; Sqrt(value)
  br label %4601

; <label>:4589                                    ; preds = %4540
  %4590 = icmp slt i32 %4568, 0
  br i1 %4590, label %4591, label %4601

; <label>:4591                                    ; preds = %4589
  %4592 = fsub fast float %127, %4478
  %4593 = fsub fast float %128, %4479
  %4594 = fsub fast float %129, %4552
  %4595 = fmul fast float %4592, %4592
  %4596 = fmul fast float %4593, %4593
  %4597 = fadd fast float %4595, %4596
  %4598 = fmul fast float %4594, %4594
  %4599 = fadd fast float %4597, %4598
  %4600 = call float @dx.op.unary.f32(i32 24, float %4599)  ; Sqrt(value)
  br label %4601

; <label>:4601                                    ; preds = %4591, %4589, %4579
  %4602 = phi float [ %4588, %4579 ], [ %4600, %4591 ], [ 0.000000e+00, %4589 ]
  %4603 = and i1 %4547, %4545
  %4604 = fsub fast float -0.000000e+00, %4602
  %4605 = select i1 %4603, float -0.000000e+00, float %4604
  %4606 = fmul fast float %3869, 0x3FF7154760000000
  %4607 = fmul fast float %4606, %4605
  %4608 = fmul fast float %3870, 0x3FF7154760000000
  %4609 = fmul fast float %4608, %4605
  %4610 = fmul fast float %3871, 0x3FF7154760000000
  %4611 = fmul fast float %4610, %4605
  %4612 = call float @dx.op.unary.f32(i32 21, float %4607)  ; Exp(value)
  %4613 = call float @dx.op.unary.f32(i32 21, float %4609)  ; Exp(value)
  %4614 = call float @dx.op.unary.f32(i32 21, float %4611)  ; Exp(value)
  %4615 = call float @dx.op.unary.f32(i32 7, float %4612)  ; Saturate(value)
  %4616 = call float @dx.op.unary.f32(i32 7, float %4613)  ; Saturate(value)
  %4617 = call float @dx.op.unary.f32(i32 7, float %4614)  ; Saturate(value)
  %4618 = fmul fast float %4541, %4615
  %4619 = fmul fast float %4542, %4616
  %4620 = fmul fast float %4543, %4617
  %4621 = fsub fast float %4495, %4068
  %4622 = fsub fast float %4496, %4067
  %4623 = fsub fast float %4497, %4066
  %4624 = call float @dx.op.dot3.f32(i32 55, float %4621, float %4622, float %4623, float %4621, float %4622, float %4623)  ; Dot3(ax,ay,az,bx,by,bz)
  %4625 = call float @dx.op.unary.f32(i32 25, float %4624)  ; Rsqrt(value)
  %4626 = fmul fast float %4625, %4621
  %4627 = fmul fast float %4625, %4622
  %4628 = fmul fast float %4625, %4623
  %4629 = call float @dx.op.dot3.f32(i32 55, float %4495, float %4496, float %4497, float %4072, float %4073, float %4074)  ; Dot3(ax,ay,az,bx,by,bz)
  %4630 = call float @dx.op.dot3.f32(i32 55, float %4065, float %4064, float %4063, float %4626, float %4627, float %4628)  ; Dot3(ax,ay,az,bx,by,bz)
  %4631 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  %4632 = fmul fast float %4631, %4502
  %4633 = fmul fast float %4631, %4631
  %4634 = fmul fast float %4633, %4095
  %4635 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4636 = fmul fast float %4632, %4635
  %4637 = bitcast float %4492 to i32
  %4638 = ashr i32 %4637, 1
  %4639 = sub nsw i32 1597463007, %4638
  %4640 = bitcast i32 %4639 to float
  %4641 = fmul fast float %4640, %4489
  %4642 = fmul fast float %4640, %4490
  %4643 = fmul fast float %4640, %4491
  %4644 = fsub fast float %4641, %4068
  %4645 = fsub fast float %4642, %4067
  %4646 = fsub fast float %4643, %4066
  %4647 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float %4644, float %4645, float %4646)  ; Dot3(ax,ay,az,bx,by,bz)
  %4648 = call float @dx.op.unary.f32(i32 25, float %4647)  ; Rsqrt(value)
  %4649 = fmul fast float %4644, %4648
  %4650 = fmul fast float %4645, %4648
  %4651 = fmul fast float %4646, %4648
  %4652 = call float @dx.op.dot3.f32(i32 55, float %4072, float %4073, float %4074, float %4649, float %4650, float %4651)  ; Dot3(ax,ay,az,bx,by,bz)
  %4653 = fmul fast float %4652, %4652
  %4654 = call float @dx.op.unary.f32(i32 6, float %4629)  ; FAbs(value)
  %4655 = fsub fast float 1.000000e+00, %4078
  %4656 = call float @dx.op.binary.f32(i32 35, float %4655, float 0x3F847AE140000000)  ; FMax(a,b)
  %4657 = fmul fast float %4656, %4656
  %4658 = fmul fast float %4657, %4657
  %4659 = fsub fast float 1.000000e+00, %4658
  %4660 = fmul fast float %4082, %4082
  %4661 = fmul fast float %4660, %4659
  %4662 = fadd fast float %4661, %4658
  %4663 = bitcast float %4662 to i32
  %4664 = ashr i32 %4663, 1
  %4665 = add nsw i32 %4664, 532487669
  %4666 = bitcast i32 %4665 to float
  %4667 = fadd fast float %4666, %4082
  %4668 = fmul fast float %4658, %4653
  %4669 = fsub fast float 1.000000e+00, %4653
  %4670 = fadd fast float %4669, %4668
  %4671 = fmul fast float %4654, %4654
  %4672 = fmul fast float %4671, %4659
  %4673 = fadd fast float %4672, %4658
  %4674 = bitcast float %4673 to i32
  %4675 = ashr i32 %4674, 1
  %4676 = add nsw i32 %4675, 532487669
  %4677 = bitcast i32 %4676 to float
  %4678 = fadd fast float %4677, %4654
  %4679 = fmul fast float %4670, %4670
  %4680 = fmul fast float %4679, %4667
  %4681 = fmul fast float %4680, %4678
  %4682 = fdiv fast float 1.000000e+00, %4681
  %4683 = bitcast float %4658 to i32
  %4684 = sitofp i32 %4683 to float
  %4685 = fmul fast float %4684, 0x3FE7F73180000000
  %4686 = fadd fast float %4685, 0x41AFE27C40000000
  %4687 = fptosi float %4686 to i32
  %4688 = bitcast i32 %4687 to float
  %4689 = fmul fast float %4475, 0x3FD80E9D60000000
  %4690 = fmul fast float %4689, %4640
  %4691 = fadd fast float %4688, %4690
  %4692 = bitcast float %4691 to i32
  %4693 = sub nsw i32 2129859010, %4692
  %4694 = bitcast i32 %4693 to float
  %4695 = fmul fast float %4658, %4682
  %4696 = fmul fast float %4695, %4688
  %4697 = fmul fast float %4696, %4694
  %4698 = call float @dx.op.unary.f32(i32 6, float %4630)  ; FAbs(value)
  %4699 = fsub fast float 1.000000e+00, %4698
  %4700 = bitcast float %4699 to i32
  %4701 = sitofp i32 %4700 to float
  %4702 = fmul fast float %4701, 5.000000e+00
  %4703 = fadd fast float %4702, 0xC1EFBF8940000000
  %4704 = fptosi float %4703 to i32
  %4705 = bitcast i32 %4704 to float
  %4706 = fsub fast float 1.000000e+00, %4075
  %4707 = fsub fast float 1.000000e+00, %4076
  %4708 = fsub fast float 1.000000e+00, %4080
  %4709 = fmul fast float %4705, %4706
  %4710 = fmul fast float %4705, %4707
  %4711 = fmul fast float %4705, %4708
  %4712 = fadd fast float %4709, %4075
  %4713 = fadd fast float %4710, %4076
  %4714 = fadd fast float %4711, %4080
  %4715 = fmul fast float %4629, 9.843750e-01
  %4716 = fadd fast float %4715, 7.812500e-03
  %4717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %4716, float %4197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4718 = extractvalue %dx.types.ResRet.f32 %4717, 2
  %4719 = extractvalue %dx.types.ResRet.f32 %4717, 3
  %4720 = fmul fast float %4718, %4075
  %4721 = fmul fast float %4718, %4076
  %4722 = fmul fast float %4718, %4080
  %4723 = fadd fast float %4720, %4719
  %4724 = fadd fast float %4721, %4719
  %4725 = fadd fast float %4722, %4719
  %4726 = call float @dx.op.binary.f32(i32 35, float %4724, float %4725)  ; FMax(a,b)
  %4727 = call float @dx.op.binary.f32(i32 35, float %4723, float %4726)  ; FMax(a,b)
  %4728 = fsub fast float 1.000000e+00, %4727
  %4729 = fmul fast float %4618, %876
  %4730 = fmul fast float %4729, %4636
  %4731 = fmul fast float %4730, %4728
  %4732 = fmul fast float %4619, %876
  %4733 = fmul fast float %4732, %4636
  %4734 = fmul fast float %4733, %4728
  %4735 = fmul fast float %4620, %876
  %4736 = fmul fast float %4735, %4636
  %4737 = fmul fast float %4736, %4728
  %4738 = fadd fast float %4731, %4457
  %4739 = fadd fast float %4734, %4458
  %4740 = fadd fast float %4737, %4459
  %4741 = fmul fast float %4730, %4712
  %4742 = fmul fast float %4741, %4697
  %4743 = fmul fast float %4733, %4713
  %4744 = fmul fast float %4743, %4697
  %4745 = fmul fast float %4736, %4714
  %4746 = fmul fast float %4745, %4697
  %4747 = fadd fast float %4742, %4454
  %4748 = fadd fast float %4744, %4455
  %4749 = fadd fast float %4746, %4456
  br label %4532

; <label>:4750                                    ; preds = %4532
  br label %4751

; <label>:4751                                    ; preds = %4750, %4420
  %4752 = phi float [ %4422, %4420 ], [ %4533, %4750 ]
  %4753 = phi float [ %4423, %4420 ], [ %4534, %4750 ]
  %4754 = phi float [ %4424, %4420 ], [ %4535, %4750 ]
  %4755 = phi float [ %4425, %4420 ], [ %4536, %4750 ]
  %4756 = phi float [ %4426, %4420 ], [ %4537, %4750 ]
  %4757 = phi float [ %4427, %4420 ], [ %4538, %4750 ]
  %4758 = add i32 %4421, 1
  %4759 = icmp ugt i32 %4758, %4417
  br i1 %4759, label %4760, label %4420

; <label>:4760                                    ; preds = %4751
  br label %4761

; <label>:4761                                    ; preds = %4760, %4396, %4386
  %4762 = phi float [ %4387, %4386 ], [ %4387, %4396 ], [ %4752, %4760 ]
  %4763 = phi float [ %4388, %4386 ], [ %4388, %4396 ], [ %4753, %4760 ]
  %4764 = phi float [ %4389, %4386 ], [ %4389, %4396 ], [ %4754, %4760 ]
  %4765 = phi float [ %4390, %4386 ], [ %4390, %4396 ], [ %4755, %4760 ]
  %4766 = phi float [ %4391, %4386 ], [ %4391, %4396 ], [ %4756, %4760 ]
  %4767 = phi float [ %4392, %4386 ], [ %4392, %4396 ], [ %4757, %4760 ]
  %4768 = call float @dx.op.unary.f32(i32 24, float %4069)  ; Sqrt(value)
  %4769 = call float @dx.op.unary.f32(i32 24, float %4070)  ; Sqrt(value)
  %4770 = call float @dx.op.unary.f32(i32 24, float %4071)  ; Sqrt(value)
  %4771 = fmul fast float %4768, %4765
  %4772 = fmul fast float %4769, %4766
  %4773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4774 = extractvalue %dx.types.CBufRet.f32 %4773, 0
  br i1 %171, label %4775, label %4796

; <label>:4775                                    ; preds = %4761
  %4776 = fadd fast float %4767, %3443
  %4777 = fmul fast float %4776, %3441
  %4778 = fsub fast float 1.000000e+00, %3441
  %4779 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4781 = extractvalue %dx.types.CBufRet.f32 %4780, 3
  %4782 = fmul fast float %4781, %4779
  %4783 = fadd fast float %4782, %4777
  %4784 = fsub fast float 1.000000e+00, %4082
  %4785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4786 = extractvalue %dx.types.CBufRet.f32 %4785, 0
  %4787 = fmul fast float %4786, %4784
  %4788 = fsub fast float %4783, %4787
  %4789 = fadd fast float %4772, %4771
  %4790 = fmul fast float %4774, %4789
  %4791 = extractvalue %dx.types.CBufRet.f32 %4780, 1
  %4792 = fsub fast float %4788, %4791
  %4793 = extractvalue %dx.types.CBufRet.f32 %4780, 2
  %4794 = fmul fast float %4792, %4793
  %4795 = call float @dx.op.unary.f32(i32 7, float %4794)  ; Saturate(value)
  br label %4812

; <label>:4796                                    ; preds = %4761
  %4797 = fmul fast float %4770, %4767
  %4798 = fmul fast float %4774, %4771
  %4799 = fmul fast float %4774, %4772
  %4800 = fmul fast float %4797, %4774
  %4801 = add i32 %30, 356
  %4802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4801, i32 undef)  ; BufferLoad(srv,index,wot)
  %4803 = extractvalue %dx.types.ResRet.i32 %4802, 0
  %4804 = and i32 %4803, 32
  %4805 = icmp eq i32 %4804, 0
  br i1 %4805, label %4812, label %4806

; <label>:4806                                    ; preds = %4796
  %4807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4808 = extractvalue %dx.types.CBufRet.f32 %4807, 0
  %4809 = fmul fast float %4808, 0x3FE99999A0000000
  %4810 = fadd fast float %4808, %4798
  %4811 = fadd fast float %4809, %4800
  br label %4812

; <label>:4812                                    ; preds = %4806, %4796, %4775
  %4813 = phi float [ %4790, %4775 ], [ %4810, %4806 ], [ %4798, %4796 ]
  %4814 = phi float [ %4795, %4775 ], [ %4799, %4806 ], [ %4799, %4796 ]
  %4815 = phi float [ 1.000000e+00, %4775 ], [ %4811, %4806 ], [ %4800, %4796 ]
  %4816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4817 = extractvalue %dx.types.CBufRet.f32 %4816, 0
  %4818 = fmul fast float %4817, %4763
  %4819 = fmul fast float %4817, %4764
  %4820 = fadd fast float %4763, %4762
  %4821 = select i1 %171, float %4820, float %4762
  %4822 = fmul float %4821, %4817
  %4823 = select i1 %171, float 0.000000e+00, float %4818
  %4824 = select i1 %171, float 0.000000e+00, float %4819
  %4825 = fmul fast float %4813, %4768
  %4826 = fmul fast float %4814, %4769
  %4827 = fmul fast float %4815, %4770
  %4828 = fadd fast float %4822, %4825
  %4829 = fadd fast float %4823, %4826
  %4830 = fadd fast float %4824, %4827
  %4831 = select i1 %171, float %4814, float %4829
  %4832 = select i1 %171, float %4815, float %4830
  %4833 = call float @dx.op.binary.f32(i32 36, float %4828, float 3.225500e+04)  ; FMin(a,b)
  %4834 = call float @dx.op.binary.f32(i32 36, float %4831, float 3.225500e+04)  ; FMin(a,b)
  %4835 = call float @dx.op.binary.f32(i32 36, float %4832, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4833)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4834)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4835)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!43 = !{[42 x i32] [i32 40, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0]}
!44 = !{void ()* @ps_main, !"ps_main", !45, !4, !67}
!45 = !{!46, !65, null}
!46 = !{!47, !50, !52, !54, !56, !58, !59, !60, !61, !62, !64}
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
!60 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !48, i8 2, i32 1, i8 2, i32 7, i8 0, !53}
!61 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 8, i8 0, !57}
!62 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !48, i8 1, i32 1, i8 4, i32 9, i8 0, !63}
!63 = !{i32 3, i32 5}
!64 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !48, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!65 = !{!66}
!66 = !{i32 0, !"SV_Target", i8 9, i8 16, !48, i8 0, i32 1, i8 4, i32 0, i8 0, !57}
!67 = !{i32 0, i64 24}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}

