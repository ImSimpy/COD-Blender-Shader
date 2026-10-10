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
; SH_RED                   0   xyzw        5     NONE   float   xyzw
; SH_GREEN                 0   xyzw        6     NONE   float   xyzw
; SH_BLUE                  0   xyzw        7     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          8     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        9     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x z 
; SV_IsFrontFace           0   x          11    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 0162450161282de42b5d6158a369033c
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
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
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
; Number of inputs: 45, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
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
  %31 = icmp ne i32 %30, 0
  %32 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %68 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = fmul fast float %70, %64
  %72 = fmul fast float %70, %65
  %73 = select i1 %31, float 1.000000e+00, float -1.000000e+00
  %74 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %75 = bitcast float %74 to i32
  %76 = ashr i32 %75, 1
  %77 = sub nsw i32 1597250115, %76
  %78 = bitcast i32 %77 to float
  %79 = fmul fast float %56, %73
  %80 = fmul fast float %79, %78
  %81 = fmul fast float %57, %73
  %82 = fmul fast float %81, %78
  %83 = fmul fast float %58, %73
  %84 = fmul fast float %83, %78
  %85 = fmul fast float %57, %54
  %86 = fmul fast float %58, %53
  %87 = fsub fast float %85, %86
  %88 = fmul fast float %58, %52
  %89 = fmul fast float %56, %54
  %90 = fsub fast float %88, %89
  %91 = fmul fast float %56, %53
  %92 = fmul fast float %57, %52
  %93 = fsub fast float %91, %92
  %94 = fmul fast float %87, %55
  %95 = fmul fast float %90, %55
  %96 = fmul fast float %93, %55
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %99 = extractvalue %dx.types.CBufRet.f32 %97, 3
  %100 = fmul fast float %71, 2.000000e+00
  %101 = fmul fast float %100, %98
  %102 = fmul fast float %72, 2.000000e+00
  %103 = fmul fast float %102, %99
  %104 = fsub fast float 1.000000e+00, %101
  %105 = fsub fast float 1.000000e+00, %103
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = fmul fast float %104, %107
  %111 = fmul fast float %104, %108
  %112 = fmul fast float %104, %109
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %117 = fmul fast float %105, %114
  %118 = fmul fast float %105, %115
  %119 = fmul fast float %105, %116
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = fadd fast float %117, %121
  %125 = fadd fast float %124, %110
  %126 = fadd fast float %118, %122
  %127 = fadd fast float %126, %111
  %128 = fadd fast float %119, %123
  %129 = fadd fast float %128, %112
  %130 = fmul fast float %125, %66
  %131 = fmul fast float %127, %66
  %132 = fmul fast float %129, %66
  %133 = add i32 %32, 360
  %134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %133, i32 undef)  ; BufferLoad(srv,index,wot)
  %135 = extractvalue %dx.types.ResRet.i32 %134, 0
  %136 = extractvalue %dx.types.ResRet.i32 %134, 1
  %137 = extractvalue %dx.types.ResRet.i32 %134, 2
  %138 = extractvalue %dx.types.ResRet.i32 %134, 3
  %139 = bitcast i32 %135 to float
  %140 = bitcast i32 %136 to float
  %141 = bitcast i32 %137 to float
  %142 = bitcast i32 %138 to float
  %143 = call float @dx.op.dot3.f32(i32 55, float %80, float %82, float %84, float %80, float %82, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %144 = call float @dx.op.unary.f32(i32 25, float %143)  ; Rsqrt(value)
  %145 = fmul fast float %144, %80
  %146 = fmul fast float %144, %82
  %147 = fmul fast float %144, %84
  %148 = call float @dx.op.dot3.f32(i32 55, float %130, float %131, float %132, float %130, float %131, float %132)  ; Dot3(ax,ay,az,bx,by,bz)
  %149 = call float @dx.op.unary.f32(i32 25, float %148)  ; Rsqrt(value)
  %150 = fmul fast float %149, %130
  %151 = fmul fast float %149, %131
  %152 = fmul fast float %149, %132
  %153 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %154 = fmul fast float %153, %153
  %155 = fmul fast float %154, %141
  %156 = fadd fast float %155, %142
  %157 = call float @dx.op.unary.f32(i32 7, float %156)  ; Saturate(value)
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 3
  %160 = fmul fast float %159, %148
  %161 = fsub fast float %139, %160
  %162 = fmul fast float %161, %140
  %163 = call float @dx.op.unary.f32(i32 7, float %162)  ; Saturate(value)
  %164 = fmul fast float %163, %157
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 3
  %168 = fmul fast float %166, %71
  %169 = fmul fast float %167, %72
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = and i32 %171, 114688
  %173 = icmp ne i32 %172, 0
  %174 = select i1 %173, float %168, float 0.000000e+00
  %175 = select i1 %173, float %169, float 0.000000e+00
  %176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %27, float %174, float %175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = fmul fast float %177, 2.550000e+02
  %179 = fptoui float %178 to i32
  %180 = select i1 %173, i32 %179, i32 0
  %181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.i32 %181, 3
  %183 = and i32 %182, 3
  %184 = icmp ne i32 %183, 0
  %185 = and i32 %182, 4
  %186 = icmp ne i32 %185, 0
  %187 = and i1 %184, %186
  br i1 %187, label %188, label %197

; <label>:188                                     ; preds = %0
  %189 = fmul fast float %99, %72
  %190 = fmul fast float %98, %71
  %191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %190, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %192 = extractvalue %dx.types.ResRet.f32 %191, 0
  %193 = fsub fast float 1.000000e+00, %192
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 0
  %196 = fcmp fast olt float %193, %195
  br label %205

; <label>:197                                     ; preds = %0
  %198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.i32 %198, 3
  %200 = and i32 %199, 3
  %201 = icmp ne i32 %200, 0
  %202 = and i32 %199, 4
  %203 = icmp eq i32 %202, 0
  %204 = and i1 %201, %203
  br label %205

; <label>:205                                     ; preds = %197, %188
  %206 = phi i1 [ %196, %188 ], [ %204, %197 ]
  %207 = add i32 %32, 156
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = shl i32 %209, 4
  %211 = and i32 %210, 32752
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = lshr i32 %209, 7
  %214 = and i32 %213, 32752
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = lshr i32 %209, 22
  %217 = shl nuw nsw i32 %216, 5
  %218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %217)  ; LegacyF16ToF32(value)
  %219 = add i32 %32, 216
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = and i32 %221, 255
  %223 = uitofp i32 %222 to float
  %224 = fmul fast float %223, 0x3F70101020000000
  %225 = lshr i32 %221, 8
  %226 = and i32 %225, 255
  %227 = uitofp i32 %226 to float
  %228 = fmul fast float %227, 0x3F70101020000000
  %229 = lshr i32 %221, 16
  %230 = and i32 %229, 255
  %231 = uitofp i32 %230 to float
  %232 = fmul fast float %231, 0x3F70101020000000
  %233 = add i32 %32, 36
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %235, 65535
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %235, 16
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = add i32 %32, 288
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = and i32 %242, 65535
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %242, 16
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = fmul fast float %244, 0x3F50624DE0000000
  %248 = fmul fast float %246, 0x3F50624DE0000000
  %249 = add i32 %32, 172
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = shl i32 %251, 4
  %253 = and i32 %252, 32752
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = lshr i32 %251, 7
  %256 = and i32 %255, 32752
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %251, 22
  %259 = shl nuw nsw i32 %258, 5
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = add i32 %32, 232
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 255
  %265 = uitofp i32 %264 to float
  %266 = fmul fast float %265, 0x3F70101020000000
  %267 = lshr i32 %263, 8
  %268 = and i32 %267, 255
  %269 = uitofp i32 %268 to float
  %270 = fmul fast float %269, 0x3F70101020000000
  %271 = lshr i32 %263, 16
  %272 = and i32 %271, 255
  %273 = uitofp i32 %272 to float
  %274 = fmul fast float %273, 0x3F70101020000000
  %275 = add i32 %32, 52
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = and i32 %277, 65535
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %277, 16
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = add i32 %32, 304
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 65535
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %284, 16
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = fmul fast float %286, 0x3F50624DE0000000
  %290 = fmul fast float %288, 0x3F50624DE0000000
  %291 = add i32 %32, 188
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = shl i32 %293, 4
  %295 = and i32 %294, 32752
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = lshr i32 %293, 7
  %298 = and i32 %297, 32752
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %293, 22
  %301 = shl nuw nsw i32 %300, 5
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = add i32 %32, 248
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 255
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, 0x3F70101020000000
  %309 = lshr i32 %305, 8
  %310 = and i32 %309, 255
  %311 = uitofp i32 %310 to float
  %312 = fmul fast float %311, 0x3F70101020000000
  %313 = lshr i32 %305, 16
  %314 = and i32 %313, 255
  %315 = uitofp i32 %314 to float
  %316 = fmul fast float %315, 0x3F70101020000000
  %317 = add i32 %32, 68
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %319, 65535
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %319, 16
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = add i32 %32, 320
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %326, 65535
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %326, 16
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = fmul fast float %328, 0x3F50624DE0000000
  %332 = fmul fast float %330, 0x3F50624DE0000000
  %333 = add i32 %32, 204
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = shl i32 %335, 4
  %337 = and i32 %336, 32752
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = lshr i32 %335, 7
  %340 = and i32 %339, 32752
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %335, 22
  %343 = shl nuw nsw i32 %342, 5
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = add i32 %32, 264
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 255
  %349 = uitofp i32 %348 to float
  %350 = fmul fast float %349, 0x3F70101020000000
  %351 = lshr i32 %347, 8
  %352 = and i32 %351, 255
  %353 = uitofp i32 %352 to float
  %354 = fmul fast float %353, 0x3F70101020000000
  %355 = lshr i32 %347, 16
  %356 = and i32 %355, 255
  %357 = uitofp i32 %356 to float
  %358 = fmul fast float %357, 0x3F70101020000000
  %359 = add i32 %32, 84
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 65535
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %361, 16
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = add i32 %32, 336
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = and i32 %368, 65535
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = lshr i32 %368, 16
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = fmul fast float %370, 0x3F50624DE0000000
  %374 = fmul fast float %372, 0x3F50624DE0000000
  %375 = add i32 %32, 348
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = and i32 %377, 32
  %379 = icmp eq i32 %378, 0
  %380 = and i32 %377, 64
  %381 = icmp eq i32 %380, 0
  %382 = and i32 %377, 128
  %383 = icmp eq i32 %382, 0
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 2
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %401, label %388

; <label>:388                                     ; preds = %205
  %389 = add i32 %32, 520
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = add i32 %391, 0
  %393 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %392, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %394 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %393, %dx.types.Handle %68, float %59, float %60, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %395 = extractvalue %dx.types.ResRet.f32 %394, 0
  %396 = extractvalue %dx.types.ResRet.f32 %394, 1
  %397 = extractvalue %dx.types.ResRet.f32 %394, 2
  %398 = fmul fast float %395, %61
  %399 = fmul fast float %396, %62
  %400 = fmul fast float %397, %63
  br label %401

; <label>:401                                     ; preds = %388, %205
  %402 = phi float [ %63, %205 ], [ %400, %388 ]
  %403 = phi float [ %62, %205 ], [ %399, %388 ]
  %404 = phi float [ %61, %205 ], [ %398, %388 ]
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 2
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %428, label %409

; <label>:409                                     ; preds = %401
  %410 = add i32 %32, 44
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = and i32 %412, 1
  %414 = icmp ne i32 %413, 0
  %415 = select i1 %414, float %404, float 1.000000e+00
  %416 = add i32 %32, 60
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 1
  %420 = icmp ne i32 %419, 0
  %421 = select i1 %420, float %403, float 1.000000e+00
  %422 = add i32 %32, 76
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = and i32 %424, 1
  %426 = icmp ne i32 %425, 0
  %427 = select i1 %426, float %402, float 1.000000e+00
  br label %428

; <label>:428                                     ; preds = %409, %401
  %429 = phi float [ %402, %401 ], [ %427, %409 ]
  %430 = phi float [ %403, %401 ], [ %421, %409 ]
  %431 = phi float [ %404, %401 ], [ %415, %409 ]
  %432 = lshr i32 %406, 20
  %433 = and i32 %432, 3
  %434 = add nuw nsw i32 %433, 1
  %435 = add i32 %32, 24
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = add i32 %32, 28
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = or i32 %440, %437
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %954, label %443

; <label>:443                                     ; preds = %428
  %444 = and i32 %437, 262144
  %445 = icmp ne i32 %444, 0
  %446 = select i1 %445, float %34, float 1.000000e+00
  %447 = select i1 %445, float %35, float 0.000000e+00
  %448 = select i1 %445, float %36, float 0.000000e+00
  %449 = select i1 %445, float %37, float 1.000000e+00
  %450 = select i1 %445, float %38, float %59
  %451 = select i1 %445, float %39, float %60
  %452 = add i32 %32, 284
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = lshr i32 %454, 16
  %456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %455)  ; LegacyF16ToF32(value)
  %457 = fmul fast float %456, 0x3F50624DE0000000
  %458 = add i32 %32, 88
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = lshr i32 %460, 16
  %462 = and i32 %461, 255
  %463 = lshr i32 %460, 24
  %464 = add i32 %32, 292
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = and i32 %466, 65535
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = lshr i32 %466, 16
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = add i32 %32, 32
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = lshr i32 %473, 22
  %475 = shl nuw nsw i32 %474, 5
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = shl i32 %473, 4
  %478 = and i32 %477, 32752
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = lshr i32 %473, 7
  %481 = and i32 %480, 32752
  %482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %481)  ; LegacyF16ToF32(value)
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 3
  %485 = fmul fast float %484, 1.000000e+03
  %486 = fmul fast float %247, %485
  %487 = call float @dx.op.unary.f32(i32 22, float %486)  ; Frc(value)
  %488 = fadd fast float %487, %237
  %489 = fmul fast float %248, %485
  %490 = call float @dx.op.unary.f32(i32 22, float %489)  ; Frc(value)
  %491 = fadd fast float %490, %239
  %492 = fmul fast float %457, %485
  %493 = call float @dx.op.unary.f32(i32 22, float %492)  ; Frc(value)
  %494 = fmul fast float %493, 0x401921FB60000000
  %495 = fadd fast float %494, %476
  %496 = call float @dx.op.unary.f32(i32 13, float %495)  ; Sin(value)
  %497 = call float @dx.op.unary.f32(i32 12, float %495)  ; Cos(value)
  %498 = fsub fast float -0.000000e+00, %496
  %499 = fadd fast float %450, -5.000000e-01
  %500 = fadd fast float %451, -5.000000e-01
  %501 = fmul fast float %468, %499
  %502 = fmul fast float %470, %500
  %503 = fadd fast float %501, 5.000000e-01
  %504 = fadd fast float %502, 5.000000e-01
  %505 = fmul fast float %479, %503
  %506 = fmul fast float %482, %504
  %507 = fmul fast float %497, %505
  %508 = call float @dx.op.tertiary.f32(i32 46, float %498, float %506, float %507)  ; FMad(a,b,c)
  %509 = fmul fast float %496, %505
  %510 = call float @dx.op.tertiary.f32(i32 46, float %497, float %506, float %509)  ; FMad(a,b,c)
  %511 = fadd fast float %488, %508
  %512 = fadd fast float %491, %510
  %513 = icmp ugt i32 %462, 1
  %514 = icmp ugt i32 %460, 33554431
  %515 = or i1 %514, %513
  br i1 %515, label %516, label %541

; <label>:516                                     ; preds = %443
  %517 = add i32 %32, 228
  %518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.i32 %518, 0
  %520 = lshr i32 %519, 16
  %521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %520)  ; LegacyF16ToF32(value)
  %522 = fmul fast float %484, %521
  %523 = call float @dx.op.unary.f32(i32 22, float %522)  ; Frc(value)
  %524 = mul nuw nsw i32 %462, %463
  %525 = uitofp i32 %524 to float
  %526 = fmul fast float %523, %525
  %527 = call float @dx.op.unary.f32(i32 27, float %526)  ; Round_ni(value)
  %528 = fptoui float %527 to i32
  %529 = urem i32 %528, %462
  %530 = udiv i32 %528, %463
  %531 = call float @dx.op.unary.f32(i32 22, float %511)  ; Frc(value)
  %532 = call float @dx.op.unary.f32(i32 22, float %512)  ; Frc(value)
  %533 = uitofp i32 %529 to float
  %534 = uitofp i32 %530 to float
  %535 = fadd fast float %531, %533
  %536 = fadd fast float %532, %534
  %537 = uitofp i32 %462 to float
  %538 = uitofp i32 %463 to float
  %539 = fdiv fast float %535, %537
  %540 = fdiv fast float %536, %538
  br label %541

; <label>:541                                     ; preds = %516, %443
  %542 = phi float [ %539, %516 ], [ %511, %443 ]
  %543 = phi float [ %540, %516 ], [ %512, %443 ]
  %544 = and i32 %437, 16
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %742, label %546

; <label>:546                                     ; preds = %541
  %547 = add i32 %32, 408
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = add i32 %549, 0
  %551 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %550, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %552 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %551, %dx.types.Handle %67, float %542, float %543, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %553 = extractvalue %dx.types.ResRet.f32 %552, 0
  %554 = extractvalue %dx.types.ResRet.f32 %552, 1
  %555 = extractvalue %dx.types.ResRet.f32 %552, 2
  %556 = extractvalue %dx.types.ResRet.f32 %552, 3
  %557 = and i32 %460, 255
  %558 = uitofp i32 %557 to float
  %559 = lshr i32 %460, 8
  %560 = and i32 %559, 255
  %561 = uitofp i32 %560 to float
  %562 = fmul fast float %556, %558
  %563 = fadd fast float %562, %561
  %564 = fmul fast float %563, 0x3F70101000000000
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = and i32 %566, 512
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %577, label %569

; <label>:569                                     ; preds = %546
  %570 = add i32 %32, 488
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = add i32 %572, 0
  %574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %575 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %574, %dx.types.Handle %68, float %542, float %543, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %576 = extractvalue %dx.types.ResRet.f32 %575, 0
  br label %577

; <label>:577                                     ; preds = %569, %546
  %578 = phi float [ %576, %569 ], [ 1.000000e+00, %546 ]
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = and i32 %580, 33554432
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %689, label %583

; <label>:583                                     ; preds = %577
  %584 = add i32 %32, 224
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = and i32 %586, 65535
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = lshr i32 %586, 16
  %590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %589)  ; LegacyF16ToF32(value)
  %591 = add i32 %32, 228
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = and i32 %593, 65535
  %595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %594)  ; LegacyF16ToF32(value)
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = lshr i32 %597, 24
  %599 = uitofp i32 %598 to float
  %600 = fmul fast float %599, 0x3F70101020000000
  %601 = and i32 %597, 255
  %602 = uitofp i32 %601 to float
  %603 = fmul fast float %602, 0x3F70101020000000
  %604 = lshr i32 %597, 8
  %605 = and i32 %604, 255
  %606 = uitofp i32 %605 to float
  %607 = fmul fast float %606, 0x3F70101020000000
  %608 = lshr i32 %597, 16
  %609 = and i32 %608, 255
  %610 = uitofp i32 %609 to float
  %611 = fmul fast float %610, 0x3F70101020000000
  %612 = add i32 %32, 220
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = lshr i32 %614, 24
  %616 = uitofp i32 %615 to float
  %617 = fmul fast float %616, 0x3F70101020000000
  %618 = and i32 %614, 255
  %619 = uitofp i32 %618 to float
  %620 = fmul fast float %619, 0x3F70101020000000
  %621 = lshr i32 %614, 8
  %622 = and i32 %621, 255
  %623 = uitofp i32 %622 to float
  %624 = fmul fast float %623, 0x3F70101020000000
  %625 = lshr i32 %614, 16
  %626 = and i32 %625, 255
  %627 = uitofp i32 %626 to float
  %628 = fmul fast float %627, 0x3F70101020000000
  %629 = bitcast float %553 to i32
  %630 = ashr i32 %629, 1
  %631 = sub nsw i32 1597463174, %630
  %632 = bitcast i32 %631 to float
  %633 = fmul fast float %553, 5.000000e-01
  %634 = fmul fast float %632, %632
  %635 = fmul fast float %634, %633
  %636 = fsub fast float 1.500000e+00, %635
  %637 = fmul fast float %632, %553
  %638 = fmul fast float %637, %636
  %639 = bitcast float %554 to i32
  %640 = ashr i32 %639, 1
  %641 = sub nsw i32 1597463174, %640
  %642 = bitcast i32 %641 to float
  %643 = fmul fast float %554, 5.000000e-01
  %644 = fmul fast float %642, %642
  %645 = fmul fast float %644, %643
  %646 = fsub fast float 1.500000e+00, %645
  %647 = fmul fast float %642, %554
  %648 = fmul fast float %647, %646
  %649 = bitcast float %555 to i32
  %650 = ashr i32 %649, 1
  %651 = sub nsw i32 1597463174, %650
  %652 = bitcast i32 %651 to float
  %653 = fmul fast float %555, 5.000000e-01
  %654 = fmul fast float %652, %652
  %655 = fmul fast float %654, %653
  %656 = fsub fast float 1.500000e+00, %655
  %657 = fmul fast float %652, %555
  %658 = fmul fast float %657, %656
  %659 = fsub fast float %638, %620
  %660 = fsub fast float %648, %624
  %661 = fsub fast float %658, %628
  %662 = fmul fast float %659, %588
  %663 = fmul fast float %660, %590
  %664 = fmul fast float %661, %595
  %665 = fadd fast float %662, %603
  %666 = fadd fast float %663, %607
  %667 = fadd fast float %664, %611
  %668 = call float @dx.op.unary.f32(i32 7, float %665)  ; Saturate(value)
  %669 = call float @dx.op.unary.f32(i32 7, float %666)  ; Saturate(value)
  %670 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  %671 = fmul fast float %668, %668
  %672 = fmul fast float %669, %669
  %673 = fmul fast float %670, %670
  %674 = fsub fast float %671, %553
  %675 = fsub fast float %672, %554
  %676 = fsub fast float %673, %555
  %677 = fmul fast float %674, %578
  %678 = fmul fast float %675, %578
  %679 = fmul fast float %676, %578
  %680 = fadd fast float %677, %553
  %681 = fadd fast float %678, %554
  %682 = fadd fast float %679, %555
  %683 = fadd fast float %600, %564
  %684 = fsub fast float %683, %617
  %685 = call float @dx.op.unary.f32(i32 7, float %684)  ; Saturate(value)
  %686 = fsub fast float %685, %564
  %687 = fmul fast float %686, %578
  %688 = fadd fast float %687, %564
  br label %742

; <label>:689                                     ; preds = %577
  %690 = and i32 %580, 134217728
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %726, label %692

; <label>:692                                     ; preds = %689
  %693 = call float @dx.op.unary.f32(i32 24, float %224)  ; Sqrt(value)
  %694 = call float @dx.op.unary.f32(i32 24, float %228)  ; Sqrt(value)
  %695 = call float @dx.op.unary.f32(i32 24, float %232)  ; Sqrt(value)
  %696 = fadd fast float %693, -5.000000e-01
  %697 = fadd fast float %694, -5.000000e-01
  %698 = fadd fast float %695, -5.000000e-01
  %699 = fmul fast float %696, %578
  %700 = fmul fast float %697, %578
  %701 = fmul fast float %698, %578
  %702 = fadd fast float %699, 5.000000e-01
  %703 = fadd fast float %700, 5.000000e-01
  %704 = fadd fast float %701, 5.000000e-01
  %705 = call float @dx.op.unary.f32(i32 24, float %553)  ; Sqrt(value)
  %706 = call float @dx.op.unary.f32(i32 24, float %554)  ; Sqrt(value)
  %707 = call float @dx.op.unary.f32(i32 24, float %555)  ; Sqrt(value)
  %708 = fmul fast float %702, 2.000000e+00
  %709 = fsub fast float 1.000000e+00, %708
  %710 = fmul fast float %709, %705
  %711 = fadd fast float %710, %708
  %712 = fmul fast float %711, %705
  %713 = fmul fast float %703, 2.000000e+00
  %714 = fsub fast float 1.000000e+00, %713
  %715 = fmul fast float %714, %706
  %716 = fadd fast float %715, %713
  %717 = fmul fast float %716, %706
  %718 = fmul fast float %704, 2.000000e+00
  %719 = fsub fast float 1.000000e+00, %718
  %720 = fmul fast float %719, %707
  %721 = fadd fast float %720, %718
  %722 = fmul fast float %721, %707
  %723 = fmul fast float %712, %712
  %724 = fmul fast float %717, %717
  %725 = fmul fast float %722, %722
  br label %742

; <label>:726                                     ; preds = %689
  %727 = fmul fast float %224, %224
  %728 = fmul fast float %228, %228
  %729 = fmul fast float %232, %232
  %730 = fadd fast float %727, -1.000000e+00
  %731 = fadd fast float %728, -1.000000e+00
  %732 = fadd fast float %729, -1.000000e+00
  %733 = fmul fast float %578, %730
  %734 = fmul fast float %578, %731
  %735 = fmul fast float %578, %732
  %736 = fadd fast float %733, 1.000000e+00
  %737 = fadd fast float %734, 1.000000e+00
  %738 = fadd fast float %735, 1.000000e+00
  %739 = fmul fast float %736, %553
  %740 = fmul fast float %737, %554
  %741 = fmul fast float %738, %555
  br label %742

; <label>:742                                     ; preds = %726, %692, %583, %541
  %743 = phi float [ %688, %583 ], [ %564, %692 ], [ %564, %726 ], [ 0x3FA23C0BE0000000, %541 ]
  %744 = phi float [ %680, %583 ], [ %723, %692 ], [ %739, %726 ], [ 1.000000e+00, %541 ]
  %745 = phi float [ %681, %583 ], [ %724, %692 ], [ %740, %726 ], [ 1.000000e+00, %541 ]
  %746 = phi float [ %682, %583 ], [ %725, %692 ], [ %741, %726 ], [ 1.000000e+00, %541 ]
  %747 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.i32 %747, 1
  %749 = and i32 %748, 1
  %750 = icmp ne i32 %749, 0
  %751 = add i32 %32, 356
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = and i32 %753, 32
  %755 = icmp ne i32 %754, 0
  %756 = and i1 %750, %755
  %757 = select i1 %756, float 1.000000e+00, float %744
  %758 = select i1 %756, float 0x3FD3333340000000, float %745
  %759 = select i1 %756, float 0x3FD3333340000000, float %746
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = and i32 %761, 32
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %836, label %764

; <label>:764                                     ; preds = %742
  %765 = add i32 %32, 92
  %766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %765, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = add i32 %32, 424
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %768, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = add i32 %770, 0
  %772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %771, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %773 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %772, %dx.types.Handle %67, float %542, float %543, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %774 = extractvalue %dx.types.ResRet.f32 %773, 0
  %775 = extractvalue %dx.types.ResRet.f32 %773, 1
  %776 = extractvalue %dx.types.ResRet.f32 %773, 2
  %777 = extractvalue %dx.types.ResRet.f32 %773, 3
  %778 = and i32 %767, 255
  %779 = uitofp i32 %778 to float
  %780 = lshr i32 %767, 8
  %781 = and i32 %780, 255
  %782 = uitofp i32 %781 to float
  %783 = lshr i32 %767, 16
  %784 = and i32 %783, 255
  %785 = uitofp i32 %784 to float
  %786 = fmul fast float %785, 0x3F70101000000000
  %787 = fmul fast float %774, %779
  %788 = fadd fast float %787, %782
  %789 = fmul fast float %788, 0x3F70101000000000
  %790 = fadd fast float %775, -5.000000e-01
  %791 = fadd fast float %777, -5.000000e-01
  %792 = fmul fast float %790, %786
  %793 = fmul fast float %791, %786
  %794 = fadd fast float %792, 5.000000e-01
  %795 = fadd fast float %793, 5.000000e-01
  %796 = fmul fast float %794, 2.000000e+00
  %797 = fadd fast float %796, -1.000000e+00
  %798 = fmul fast float %795, 2.000000e+00
  %799 = fadd fast float %798, -1.000000e+00
  %800 = fadd fast float %797, %799
  %801 = fmul fast float %800, 5.000000e-01
  %802 = fsub fast float %797, %799
  %803 = fmul fast float %802, 5.000000e-01
  %804 = call float @dx.op.unary.f32(i32 6, float %801)  ; FAbs(value)
  %805 = fsub fast float 1.000000e+00, %804
  %806 = call float @dx.op.unary.f32(i32 6, float %803)  ; FAbs(value)
  %807 = fsub fast float %805, %806
  %808 = call float @dx.op.dot3.f32(i32 55, float %801, float %803, float %807, float %801, float %803, float %807)  ; Dot3(ax,ay,az,bx,by,bz)
  %809 = call float @dx.op.unary.f32(i32 25, float %808)  ; Rsqrt(value)
  %810 = fmul fast float %801, %809
  %811 = fmul fast float %803, %809
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = and i32 %813, 67108864
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %832, label %816

; <label>:816                                     ; preds = %764
  %817 = add i32 %32, 280
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = and i32 %819, 65535
  %821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %820)  ; LegacyF16ToF32(value)
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = and i32 %823, 65535
  %825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %824)  ; LegacyF16ToF32(value)
  %826 = lshr i32 %819, 16
  %827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %826)  ; LegacyF16ToF32(value)
  %828 = fsub fast float %789, %827
  %829 = fmul fast float %828, %821
  %830 = fadd fast float %829, %825
  %831 = call float @dx.op.unary.f32(i32 7, float %830)  ; Saturate(value)
  br label %832

; <label>:832                                     ; preds = %816, %764
  %833 = phi float [ %831, %816 ], [ %789, %764 ]
  %834 = call float @dx.op.dot2.f32(i32 54, float %810, float %811, float %446, float %447)  ; Dot2(ax,ay,bx,by)
  %835 = call float @dx.op.dot2.f32(i32 54, float %810, float %811, float %448, float %449)  ; Dot2(ax,ay,bx,by)
  br label %836

; <label>:836                                     ; preds = %832, %742
  %837 = phi float [ %833, %832 ], [ 0x3FD6666660000000, %742 ]
  %838 = phi float [ %834, %832 ], [ 0.000000e+00, %742 ]
  %839 = phi float [ %835, %832 ], [ 0.000000e+00, %742 ]
  %840 = phi float [ %776, %832 ], [ 1.000000e+00, %742 ]
  %841 = add i32 %32, 160
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = lshr i32 %843, 22
  %845 = shl nuw nsw i32 %844, 5
  %846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %845)  ; LegacyF16ToF32(value)
  %847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %848 = extractvalue %dx.types.ResRet.i32 %847, 0
  %849 = and i32 %848, 64
  %850 = icmp eq i32 %849, 0
  br i1 %850, label %884, label %851

; <label>:851                                     ; preds = %836
  %852 = add i32 %32, 440
  %853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %852, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.i32 %853, 0
  %855 = add i32 %854, 0
  %856 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %855, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = and i32 %858, 131072
  %860 = icmp eq i32 %859, 0
  %861 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %856, %dx.types.Handle %67, float %542, float %543, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %862 = extractvalue %dx.types.ResRet.f32 %861, 0
  %863 = extractvalue %dx.types.ResRet.f32 %861, 1
  %864 = extractvalue %dx.types.ResRet.f32 %861, 2
  %865 = fmul fast float %862, %212
  %866 = fmul fast float %863, %215
  %867 = fmul fast float %864, %218
  br i1 %860, label %874, label %868

; <label>:868                                     ; preds = %851
  %869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %870 = extractvalue %dx.types.CBufRet.f32 %869, 0
  %871 = fmul fast float %870, %865
  %872 = fmul fast float %870, %866
  %873 = fmul fast float %870, %867
  br label %874

; <label>:874                                     ; preds = %868, %851
  %875 = phi float [ %871, %868 ], [ %865, %851 ]
  %876 = phi float [ %872, %868 ], [ %866, %851 ]
  %877 = phi float [ %873, %868 ], [ %867, %851 ]
  %878 = fmul fast float %875, %846
  %879 = select i1 %206, float %878, float %875
  %880 = call float @dx.op.dot3.f32(i32 55, float %879, float %876, float %877, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %881 = select i1 %206, float 0.000000e+00, float %875
  %882 = select i1 %206, float %880, float %876
  %883 = select i1 %206, float 0.000000e+00, float %877
  br label %884

; <label>:884                                     ; preds = %874, %836
  %885 = phi float [ %881, %874 ], [ 0.000000e+00, %836 ]
  %886 = phi float [ %882, %874 ], [ 0.000000e+00, %836 ]
  %887 = phi float [ %883, %874 ], [ 0.000000e+00, %836 ]
  %888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.i32 %888, 0
  %890 = and i32 %889, 10240
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %936, label %892

; <label>:892                                     ; preds = %884
  %893 = add i32 %32, 504
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = add i32 %895, 0
  %897 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %896, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %898 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %897, %dx.types.Handle %68, float %542, float %543, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %899 = extractvalue %dx.types.ResRet.f32 %898, 1
  %900 = extractvalue %dx.types.ResRet.f32 %898, 3
  %901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.i32 %901, 0
  %903 = and i32 %902, 1048576
  %904 = icmp ne i32 %903, 0
  %905 = and i32 %902, 8192
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %922, label %907

; <label>:907                                     ; preds = %892
  %908 = extractvalue %dx.types.ResRet.f32 %898, 2
  %909 = select i1 %904, float %908, float %899
  %910 = extractvalue %dx.types.ResRet.f32 %898, 0
  %911 = select i1 %904, float %910, float %899
  %912 = add i32 %32, 96
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = lshr i32 %914, 16
  %916 = and i32 %915, 255
  %917 = uitofp i32 %916 to float
  %918 = fmul fast float %917, 0x3F80101020000000
  %919 = fmul fast float %918, %911
  %920 = fmul fast float %918, %899
  %921 = fmul fast float %918, %909
  br label %922

; <label>:922                                     ; preds = %907, %892
  %923 = phi float [ %919, %907 ], [ 0.000000e+00, %892 ]
  %924 = phi float [ %920, %907 ], [ 0.000000e+00, %892 ]
  %925 = phi float [ %921, %907 ], [ 0.000000e+00, %892 ]
  %926 = and i32 %902, 2048
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %936, label %928

; <label>:928                                     ; preds = %922
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = shl i32 %930, 4
  %932 = and i32 %931, 32752
  %933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %932)  ; LegacyF16ToF32(value)
  %934 = fmul fast float %933, %900
  %935 = call float @dx.op.binary.f32(i32 35, float %934, float 0x3F70101020000000)  ; FMax(a,b)
  br label %936

; <label>:936                                     ; preds = %928, %922, %884
  %937 = phi float [ %923, %928 ], [ %923, %922 ], [ 0.000000e+00, %884 ]
  %938 = phi float [ %924, %928 ], [ %924, %922 ], [ 0.000000e+00, %884 ]
  %939 = phi float [ %925, %928 ], [ %925, %922 ], [ 0.000000e+00, %884 ]
  %940 = phi float [ %935, %928 ], [ 0x3F70101020000000, %922 ], [ 0x3F70101020000000, %884 ]
  %941 = add i32 %32, 96
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = and i32 %943, 255
  %945 = uitofp i32 %944 to float
  %946 = lshr i32 %943, 8
  %947 = and i32 %946, 255
  %948 = uitofp i32 %947 to float
  %949 = call float @dx.op.dot3.f32(i32 55, float %757, float %758, float %759, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %950 = fmul fast float %948, %949
  %951 = fadd fast float %950, %945
  %952 = fmul fast float %951, 0x3F70101020000000
  %953 = call float @dx.op.unary.f32(i32 7, float %952)  ; Saturate(value)
  br label %954

; <label>:954                                     ; preds = %936, %428
  %955 = phi float [ 0.000000e+00, %428 ], [ %838, %936 ]
  %956 = phi float [ 0.000000e+00, %428 ], [ %839, %936 ]
  %957 = phi float [ 0.000000e+00, %428 ], [ %757, %936 ]
  %958 = phi float [ 0.000000e+00, %428 ], [ %758, %936 ]
  %959 = phi float [ 0.000000e+00, %428 ], [ %759, %936 ]
  %960 = phi float [ 0.000000e+00, %428 ], [ %885, %936 ]
  %961 = phi float [ 0.000000e+00, %428 ], [ %886, %936 ]
  %962 = phi float [ 0.000000e+00, %428 ], [ %887, %936 ]
  %963 = phi float [ 0.000000e+00, %428 ], [ %937, %936 ]
  %964 = phi float [ 0.000000e+00, %428 ], [ %938, %936 ]
  %965 = phi float [ 0.000000e+00, %428 ], [ %939, %936 ]
  %966 = phi float [ 0.000000e+00, %428 ], [ %743, %936 ]
  %967 = phi float [ 0.000000e+00, %428 ], [ 1.000000e+00, %936 ]
  %968 = phi float [ 0.000000e+00, %428 ], [ %837, %936 ]
  %969 = phi float [ 0.000000e+00, %428 ], [ %840, %936 ]
  %970 = phi float [ 0.000000e+00, %428 ], [ %940, %936 ]
  %971 = phi float [ 0.000000e+00, %428 ], [ %953, %936 ]
  br i1 %379, label %1900, label %972

; <label>:972                                     ; preds = %954
  %973 = icmp ult i32 %434, 2
  %974 = add i32 %32, 40
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = add i32 %32, 44
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = or i32 %979, %976
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %1900, label %982

; <label>:982                                     ; preds = %972
  %983 = and i32 %976, 262144
  %984 = icmp ne i32 %983, 0
  %985 = select i1 %984, float %34, float 1.000000e+00
  %986 = select i1 %984, float %35, float 0.000000e+00
  %987 = select i1 %984, float %36, float 0.000000e+00
  %988 = select i1 %984, float %37, float 1.000000e+00
  %989 = select i1 %984, float %38, float %59
  %990 = select i1 %984, float %39, float %60
  %991 = add i32 %32, 300
  %992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %991, i32 undef)  ; BufferLoad(srv,index,wot)
  %993 = extractvalue %dx.types.ResRet.i32 %992, 0
  %994 = lshr i32 %993, 16
  %995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %994)  ; LegacyF16ToF32(value)
  %996 = fmul fast float %995, 0x3F50624DE0000000
  %997 = add i32 %32, 104
  %998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %997, i32 undef)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.i32 %998, 0
  %1000 = lshr i32 %999, 16
  %1001 = and i32 %1000, 255
  %1002 = lshr i32 %999, 24
  %1003 = add i32 %32, 308
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = and i32 %1005, 65535
  %1007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1006)  ; LegacyF16ToF32(value)
  %1008 = lshr i32 %1005, 16
  %1009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1008)  ; LegacyF16ToF32(value)
  %1010 = add i32 %32, 48
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = lshr i32 %1012, 22
  %1014 = shl nuw nsw i32 %1013, 5
  %1015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1014)  ; LegacyF16ToF32(value)
  %1016 = shl i32 %1012, 4
  %1017 = and i32 %1016, 32752
  %1018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1017)  ; LegacyF16ToF32(value)
  %1019 = lshr i32 %1012, 7
  %1020 = and i32 %1019, 32752
  %1021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1020)  ; LegacyF16ToF32(value)
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 3
  %1024 = fmul fast float %1023, 1.000000e+03
  %1025 = fmul fast float %289, %1024
  %1026 = call float @dx.op.unary.f32(i32 22, float %1025)  ; Frc(value)
  %1027 = fadd fast float %1026, %279
  %1028 = fmul fast float %290, %1024
  %1029 = call float @dx.op.unary.f32(i32 22, float %1028)  ; Frc(value)
  %1030 = fadd fast float %1029, %281
  %1031 = fmul fast float %996, %1024
  %1032 = call float @dx.op.unary.f32(i32 22, float %1031)  ; Frc(value)
  %1033 = fmul fast float %1032, 0x401921FB60000000
  %1034 = fadd fast float %1033, %1015
  %1035 = call float @dx.op.unary.f32(i32 13, float %1034)  ; Sin(value)
  %1036 = call float @dx.op.unary.f32(i32 12, float %1034)  ; Cos(value)
  %1037 = fsub fast float -0.000000e+00, %1035
  %1038 = fadd fast float %989, -5.000000e-01
  %1039 = fadd fast float %990, -5.000000e-01
  %1040 = fmul fast float %1007, %1038
  %1041 = fmul fast float %1009, %1039
  %1042 = fadd fast float %1040, 5.000000e-01
  %1043 = fadd fast float %1041, 5.000000e-01
  %1044 = fmul fast float %1018, %1042
  %1045 = fmul fast float %1021, %1043
  %1046 = fmul fast float %1036, %1044
  %1047 = call float @dx.op.tertiary.f32(i32 46, float %1037, float %1045, float %1046)  ; FMad(a,b,c)
  %1048 = fmul fast float %1035, %1044
  %1049 = call float @dx.op.tertiary.f32(i32 46, float %1036, float %1045, float %1048)  ; FMad(a,b,c)
  %1050 = fadd fast float %1027, %1047
  %1051 = fadd fast float %1030, %1049
  %1052 = icmp ugt i32 %1001, 1
  %1053 = icmp ugt i32 %999, 33554431
  %1054 = or i1 %1053, %1052
  br i1 %1054, label %1055, label %1080

; <label>:1055                                    ; preds = %982
  %1056 = add i32 %32, 244
  %1057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.i32 %1057, 0
  %1059 = lshr i32 %1058, 16
  %1060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1059)  ; LegacyF16ToF32(value)
  %1061 = fmul fast float %1023, %1060
  %1062 = call float @dx.op.unary.f32(i32 22, float %1061)  ; Frc(value)
  %1063 = mul nuw nsw i32 %1001, %1002
  %1064 = uitofp i32 %1063 to float
  %1065 = fmul fast float %1062, %1064
  %1066 = call float @dx.op.unary.f32(i32 27, float %1065)  ; Round_ni(value)
  %1067 = fptoui float %1066 to i32
  %1068 = urem i32 %1067, %1001
  %1069 = udiv i32 %1067, %1002
  %1070 = call float @dx.op.unary.f32(i32 22, float %1050)  ; Frc(value)
  %1071 = call float @dx.op.unary.f32(i32 22, float %1051)  ; Frc(value)
  %1072 = uitofp i32 %1068 to float
  %1073 = uitofp i32 %1069 to float
  %1074 = fadd fast float %1070, %1072
  %1075 = fadd fast float %1071, %1073
  %1076 = uitofp i32 %1001 to float
  %1077 = uitofp i32 %1002 to float
  %1078 = fdiv fast float %1074, %1076
  %1079 = fdiv fast float %1075, %1077
  br label %1080

; <label>:1080                                    ; preds = %1055, %982
  %1081 = phi float [ %1078, %1055 ], [ %1050, %982 ]
  %1082 = phi float [ %1079, %1055 ], [ %1051, %982 ]
  %1083 = and i32 %976, 16777216
  %1084 = icmp eq i32 %1083, 0
  br i1 %1084, label %1194, label %1085

; <label>:1085                                    ; preds = %1080
  %1086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1087 = extractvalue %dx.types.CBufRet.f32 %1086, 0
  %1088 = extractvalue %dx.types.CBufRet.f32 %1086, 1
  %1089 = extractvalue %dx.types.CBufRet.f32 %1086, 2
  %1090 = fadd fast float %1087, %130
  %1091 = fadd fast float %1088, %131
  %1092 = fadd fast float %1089, %132
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 0
  %1095 = call float @dx.op.unary.f32(i32 7, float %1094)  ; Saturate(value)
  %1096 = icmp eq i32 %33, 65535
  br i1 %1096, label %1191, label %1097

; <label>:1097                                    ; preds = %1085
  %1098 = lshr i32 %33, 1
  %1099 = shl i32 %1098, 2
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = and i32 %33, 1
  %1103 = icmp ne i32 %1102, 0
  %1104 = lshr i32 %1101, 16
  %1105 = and i32 %1101, 65535
  %1106 = select i1 %1103, i32 %1104, i32 %1105
  %1107 = icmp eq i32 %1106, 65535
  br i1 %1107, label %1187, label %1108

; <label>:1108                                    ; preds = %1097
  %1109 = mul nuw nsw i32 %1106, 40
  %1110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.f32 %1110, 0
  %1112 = extractvalue %dx.types.ResRet.f32 %1110, 1
  %1113 = extractvalue %dx.types.ResRet.f32 %1110, 2
  %1114 = add nuw nsw i32 %1109, 12
  %1115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.f32 %1115, 0
  %1117 = extractvalue %dx.types.ResRet.f32 %1115, 1
  %1118 = extractvalue %dx.types.ResRet.f32 %1115, 2
  %1119 = add nuw nsw i32 %1109, 24
  %1120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.ResRet.f32 %1120, 1
  %1123 = extractvalue %dx.types.ResRet.f32 %1120, 2
  %1124 = add nuw nsw i32 %1109, 36
  %1125 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1124, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 0
  %1127 = fsub fast float %1090, %1111
  %1128 = fsub fast float %1091, %1112
  %1129 = fsub fast float %1092, %1113
  %1130 = fmul fast float %1126, %1127
  %1131 = fmul fast float %1126, %1128
  %1132 = fmul fast float %1126, %1129
  %1133 = call float @dx.op.unary.f32(i32 27, float %1130)  ; Round_ni(value)
  %1134 = call float @dx.op.unary.f32(i32 27, float %1131)  ; Round_ni(value)
  %1135 = call float @dx.op.unary.f32(i32 27, float %1132)  ; Round_ni(value)
  %1136 = fadd fast float %1133, 5.000000e-01
  %1137 = fadd fast float %1134, 5.000000e-01
  %1138 = fadd fast float %1135, 5.000000e-01
  %1139 = fmul fast float %1136, %1116
  %1140 = fmul fast float %1137, %1117
  %1141 = fmul fast float %1138, %1118
  %1142 = shl i32 %33, 2
  %1143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = add i32 %1144, 0
  %1146 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1145, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1147 = call float @dx.op.unary.f32(i32 22, float %1139)  ; Frc(value)
  %1148 = call float @dx.op.unary.f32(i32 22, float %1140)  ; Frc(value)
  %1149 = call float @dx.op.unary.f32(i32 22, float %1141)  ; Frc(value)
  %1150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1146, %dx.types.Handle %27, float %1147, float %1148, float %1149, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1151 = extractvalue %dx.types.ResRet.f32 %1150, 0
  %1152 = extractvalue %dx.types.ResRet.f32 %1150, 1
  %1153 = extractvalue %dx.types.ResRet.f32 %1150, 2
  %1154 = fmul fast float %1151, 1.023000e+03
  %1155 = fmul fast float %1152, 1.023000e+03
  %1156 = fmul fast float %1153, 1.023000e+03
  %1157 = fadd fast float %1154, 5.000000e-01
  %1158 = fadd fast float %1155, 5.000000e-01
  %1159 = fadd fast float %1156, 5.000000e-01
  %1160 = call float @dx.op.unary.f32(i32 27, float %1157)  ; Round_ni(value)
  %1161 = call float @dx.op.unary.f32(i32 27, float %1158)  ; Round_ni(value)
  %1162 = call float @dx.op.unary.f32(i32 27, float %1159)  ; Round_ni(value)
  %1163 = fsub fast float %1130, %1133
  %1164 = fsub fast float %1131, %1134
  %1165 = fsub fast float %1132, %1135
  %1166 = fmul fast float %1163, 7.500000e-01
  %1167 = fmul fast float %1164, 7.500000e-01
  %1168 = fmul fast float %1165, 7.500000e-01
  %1169 = fadd fast float %1133, 1.250000e-01
  %1170 = fadd fast float %1169, %1166
  %1171 = fadd fast float %1170, %1160
  %1172 = fadd fast float %1134, 1.250000e-01
  %1173 = fadd fast float %1172, %1167
  %1174 = fadd fast float %1173, %1161
  %1175 = fadd fast float %1135, 1.250000e-01
  %1176 = fadd fast float %1175, %1168
  %1177 = fadd fast float %1176, %1162
  %1178 = fmul fast float %1171, %1121
  %1179 = fmul fast float %1174, %1122
  %1180 = fmul fast float %1177, %1123
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = add i32 %1182, 0
  %1184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1183, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1184, %dx.types.Handle %25, float %1178, float %1179, float %1180, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1186 = extractvalue %dx.types.ResRet.f32 %1185, 0
  br label %1187

; <label>:1187                                    ; preds = %1108, %1097
  %1188 = phi float [ %1186, %1108 ], [ -1.000000e+00, %1097 ]
  %1189 = fadd fast float %1188, %1095
  %1190 = call float @dx.op.unary.f32(i32 7, float %1189)  ; Saturate(value)
  br label %1191

; <label>:1191                                    ; preds = %1187, %1085
  %1192 = phi float [ %1190, %1187 ], [ %1095, %1085 ]
  %1193 = fmul fast float %1192, %431
  br label %1194

; <label>:1194                                    ; preds = %1191, %1080
  %1195 = phi float [ %1193, %1191 ], [ %431, %1080 ]
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = and i32 %1197, 256
  %1199 = icmp eq i32 %1198, 0
  br i1 %1199, label %1246, label %1200

; <label>:1200                                    ; preds = %1194
  %1201 = add i32 %32, 476
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = add i32 %1203, 0
  %1205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1204, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1206 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1205, %dx.types.Handle %68, float %1081, float %1082, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1207 = extractvalue %dx.types.ResRet.f32 %1206, 0
  %1208 = add i32 %32, 116
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = shl i32 %1210, 4
  %1212 = and i32 %1211, 32752
  %1213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1212)  ; LegacyF16ToF32(value)
  %1214 = lshr i32 %1210, 7
  %1215 = and i32 %1214, 32752
  %1216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1215)  ; LegacyF16ToF32(value)
  %1217 = fsub fast float 1.000000e+00, %1195
  %1218 = call float @dx.op.binary.f32(i32 35, float %1217, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1219 = bitcast float %1195 to i32
  %1220 = sitofp i32 %1219 to float
  %1221 = fadd fast float %1220, 0xC1CFBF8940000000
  %1222 = fmul fast float %1216, %1221
  %1223 = fadd fast float %1222, 0x41CFBF8940000000
  %1224 = fptosi float %1223 to i32
  %1225 = bitcast i32 %1224 to float
  %1226 = bitcast float %1218 to i32
  %1227 = sitofp i32 %1226 to float
  %1228 = fadd fast float %1227, 0xC1CFBF8940000000
  %1229 = fmul fast float %1228, %1216
  %1230 = fadd fast float %1229, 0x41CFBF8940000000
  %1231 = fptosi float %1230 to i32
  %1232 = bitcast i32 %1231 to float
  %1233 = fmul fast float %1225, %1213
  %1234 = fmul fast float %1232, %1213
  %1235 = fsub fast float %1218, %1233
  %1236 = fadd fast float %1234, %1218
  %1237 = call float @dx.op.unary.f32(i32 7, float %1235)  ; Saturate(value)
  %1238 = call float @dx.op.unary.f32(i32 7, float %1236)  ; Saturate(value)
  %1239 = fsub fast float %1207, %1237
  %1240 = fsub fast float %1238, %1237
  %1241 = bitcast float %1240 to i32
  %1242 = sub nsw i32 2129859010, %1241
  %1243 = bitcast i32 %1242 to float
  %1244 = fmul fast float %1243, %1239
  %1245 = call float @dx.op.unary.f32(i32 7, float %1244)  ; Saturate(value)
  br label %1246

; <label>:1246                                    ; preds = %1200, %1194
  %1247 = phi float [ %1245, %1200 ], [ %1195, %1194 ]
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = and i32 %1249, 128
  %1251 = icmp eq i32 %1250, 0
  br i1 %1251, label %1268, label %1252

; <label>:1252                                    ; preds = %1246
  %1253 = add i32 %32, 460
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  %1256 = add i32 %1255, 0
  %1257 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1256, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1258 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1257, %dx.types.Handle %68, float %1081, float %1082, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1259 = extractvalue %dx.types.ResRet.f32 %1258, 0
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = and i32 %1261, 524288
  %1263 = icmp ne i32 %1262, 0
  %1264 = fcmp fast ogt float %1259, 0x3FE0101020000000
  %1265 = select i1 %1264, float 1.000000e+00, float 0.000000e+00
  %1266 = select i1 %1263, float %1265, float %1259
  %1267 = fmul fast float %1266, %1247
  br label %1268

; <label>:1268                                    ; preds = %1252, %1246
  %1269 = phi float [ %1267, %1252 ], [ %1247, %1246 ]
  %1270 = fcmp fast ult float %1269, 0x3F70101020000000
  br i1 %1270, label %1900, label %1271

; <label>:1271                                    ; preds = %1268
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = and i32 %1273, 16
  %1275 = icmp eq i32 %1274, 0
  br i1 %1275, label %1474, label %1276

; <label>:1276                                    ; preds = %1271
  %1277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %997, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = add i32 %32, 412
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = add i32 %1281, 0
  %1283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1284 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1283, %dx.types.Handle %67, float %1081, float %1082, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = extractvalue %dx.types.ResRet.f32 %1284, 1
  %1287 = extractvalue %dx.types.ResRet.f32 %1284, 2
  %1288 = extractvalue %dx.types.ResRet.f32 %1284, 3
  %1289 = and i32 %1278, 255
  %1290 = uitofp i32 %1289 to float
  %1291 = lshr i32 %1278, 8
  %1292 = and i32 %1291, 255
  %1293 = uitofp i32 %1292 to float
  %1294 = fmul fast float %1288, %1290
  %1295 = fadd fast float %1294, %1293
  %1296 = fmul fast float %1295, 0x3F70101000000000
  %1297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.i32 %1297, 0
  %1299 = and i32 %1298, 512
  %1300 = icmp eq i32 %1299, 0
  br i1 %1300, label %1309, label %1301

; <label>:1301                                    ; preds = %1276
  %1302 = add i32 %32, 492
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = add i32 %1304, 0
  %1306 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1305, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1307 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1306, %dx.types.Handle %68, float %1081, float %1082, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1308 = extractvalue %dx.types.ResRet.f32 %1307, 0
  br label %1309

; <label>:1309                                    ; preds = %1301, %1276
  %1310 = phi float [ %1308, %1301 ], [ 1.000000e+00, %1276 ]
  %1311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.i32 %1311, 0
  %1313 = and i32 %1312, 33554432
  %1314 = icmp eq i32 %1313, 0
  br i1 %1314, label %1421, label %1315

; <label>:1315                                    ; preds = %1309
  %1316 = add i32 %32, 240
  %1317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1318 = extractvalue %dx.types.ResRet.i32 %1317, 0
  %1319 = and i32 %1318, 65535
  %1320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1319)  ; LegacyF16ToF32(value)
  %1321 = lshr i32 %1318, 16
  %1322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1321)  ; LegacyF16ToF32(value)
  %1323 = add i32 %32, 244
  %1324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.i32 %1324, 0
  %1326 = and i32 %1325, 65535
  %1327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1326)  ; LegacyF16ToF32(value)
  %1328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.i32 %1328, 0
  %1330 = lshr i32 %1329, 24
  %1331 = uitofp i32 %1330 to float
  %1332 = fmul fast float %1331, 0x3F70101020000000
  %1333 = and i32 %1329, 255
  %1334 = uitofp i32 %1333 to float
  %1335 = fmul fast float %1334, 0x3F70101020000000
  %1336 = lshr i32 %1329, 8
  %1337 = and i32 %1336, 255
  %1338 = uitofp i32 %1337 to float
  %1339 = fmul fast float %1338, 0x3F70101020000000
  %1340 = lshr i32 %1329, 16
  %1341 = and i32 %1340, 255
  %1342 = uitofp i32 %1341 to float
  %1343 = fmul fast float %1342, 0x3F70101020000000
  %1344 = add i32 %32, 236
  %1345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1344, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.i32 %1345, 0
  %1347 = lshr i32 %1346, 24
  %1348 = uitofp i32 %1347 to float
  %1349 = fmul fast float %1348, 0x3F70101020000000
  %1350 = and i32 %1346, 255
  %1351 = uitofp i32 %1350 to float
  %1352 = fmul fast float %1351, 0x3F70101020000000
  %1353 = lshr i32 %1346, 8
  %1354 = and i32 %1353, 255
  %1355 = uitofp i32 %1354 to float
  %1356 = fmul fast float %1355, 0x3F70101020000000
  %1357 = lshr i32 %1346, 16
  %1358 = and i32 %1357, 255
  %1359 = uitofp i32 %1358 to float
  %1360 = fmul fast float %1359, 0x3F70101020000000
  %1361 = bitcast float %1285 to i32
  %1362 = ashr i32 %1361, 1
  %1363 = sub nsw i32 1597463174, %1362
  %1364 = bitcast i32 %1363 to float
  %1365 = fmul fast float %1285, 5.000000e-01
  %1366 = fmul fast float %1364, %1364
  %1367 = fmul fast float %1366, %1365
  %1368 = fsub fast float 1.500000e+00, %1367
  %1369 = fmul fast float %1364, %1285
  %1370 = fmul fast float %1369, %1368
  %1371 = bitcast float %1286 to i32
  %1372 = ashr i32 %1371, 1
  %1373 = sub nsw i32 1597463174, %1372
  %1374 = bitcast i32 %1373 to float
  %1375 = fmul fast float %1286, 5.000000e-01
  %1376 = fmul fast float %1374, %1374
  %1377 = fmul fast float %1376, %1375
  %1378 = fsub fast float 1.500000e+00, %1377
  %1379 = fmul fast float %1374, %1286
  %1380 = fmul fast float %1379, %1378
  %1381 = bitcast float %1287 to i32
  %1382 = ashr i32 %1381, 1
  %1383 = sub nsw i32 1597463174, %1382
  %1384 = bitcast i32 %1383 to float
  %1385 = fmul fast float %1287, 5.000000e-01
  %1386 = fmul fast float %1384, %1384
  %1387 = fmul fast float %1386, %1385
  %1388 = fsub fast float 1.500000e+00, %1387
  %1389 = fmul fast float %1384, %1287
  %1390 = fmul fast float %1389, %1388
  %1391 = fsub fast float %1370, %1352
  %1392 = fsub fast float %1380, %1356
  %1393 = fsub fast float %1390, %1360
  %1394 = fmul fast float %1391, %1320
  %1395 = fmul fast float %1392, %1322
  %1396 = fmul fast float %1393, %1327
  %1397 = fadd fast float %1394, %1335
  %1398 = fadd fast float %1395, %1339
  %1399 = fadd fast float %1396, %1343
  %1400 = call float @dx.op.unary.f32(i32 7, float %1397)  ; Saturate(value)
  %1401 = call float @dx.op.unary.f32(i32 7, float %1398)  ; Saturate(value)
  %1402 = call float @dx.op.unary.f32(i32 7, float %1399)  ; Saturate(value)
  %1403 = fmul fast float %1400, %1400
  %1404 = fmul fast float %1401, %1401
  %1405 = fmul fast float %1402, %1402
  %1406 = fsub fast float %1403, %1285
  %1407 = fsub fast float %1404, %1286
  %1408 = fsub fast float %1405, %1287
  %1409 = fmul fast float %1406, %1310
  %1410 = fmul fast float %1407, %1310
  %1411 = fmul fast float %1408, %1310
  %1412 = fadd fast float %1409, %1285
  %1413 = fadd fast float %1410, %1286
  %1414 = fadd fast float %1411, %1287
  %1415 = fadd fast float %1332, %1296
  %1416 = fsub fast float %1415, %1349
  %1417 = call float @dx.op.unary.f32(i32 7, float %1416)  ; Saturate(value)
  %1418 = fsub fast float %1417, %1296
  %1419 = fmul fast float %1418, %1310
  %1420 = fadd fast float %1419, %1296
  br label %1474

; <label>:1421                                    ; preds = %1309
  %1422 = and i32 %1312, 134217728
  %1423 = icmp eq i32 %1422, 0
  br i1 %1423, label %1458, label %1424

; <label>:1424                                    ; preds = %1421
  %1425 = call float @dx.op.unary.f32(i32 24, float %266)  ; Sqrt(value)
  %1426 = call float @dx.op.unary.f32(i32 24, float %270)  ; Sqrt(value)
  %1427 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %1428 = fadd fast float %1425, -5.000000e-01
  %1429 = fadd fast float %1426, -5.000000e-01
  %1430 = fadd fast float %1427, -5.000000e-01
  %1431 = fmul fast float %1428, %1310
  %1432 = fmul fast float %1429, %1310
  %1433 = fmul fast float %1430, %1310
  %1434 = fadd fast float %1431, 5.000000e-01
  %1435 = fadd fast float %1432, 5.000000e-01
  %1436 = fadd fast float %1433, 5.000000e-01
  %1437 = call float @dx.op.unary.f32(i32 24, float %1285)  ; Sqrt(value)
  %1438 = call float @dx.op.unary.f32(i32 24, float %1286)  ; Sqrt(value)
  %1439 = call float @dx.op.unary.f32(i32 24, float %1287)  ; Sqrt(value)
  %1440 = fmul fast float %1434, 2.000000e+00
  %1441 = fsub fast float 1.000000e+00, %1440
  %1442 = fmul fast float %1441, %1437
  %1443 = fadd fast float %1442, %1440
  %1444 = fmul fast float %1443, %1437
  %1445 = fmul fast float %1435, 2.000000e+00
  %1446 = fsub fast float 1.000000e+00, %1445
  %1447 = fmul fast float %1446, %1438
  %1448 = fadd fast float %1447, %1445
  %1449 = fmul fast float %1448, %1438
  %1450 = fmul fast float %1436, 2.000000e+00
  %1451 = fsub fast float 1.000000e+00, %1450
  %1452 = fmul fast float %1451, %1439
  %1453 = fadd fast float %1452, %1450
  %1454 = fmul fast float %1453, %1439
  %1455 = fmul fast float %1444, %1444
  %1456 = fmul fast float %1449, %1449
  %1457 = fmul fast float %1454, %1454
  br label %1474

; <label>:1458                                    ; preds = %1421
  %1459 = fmul fast float %266, %266
  %1460 = fmul fast float %270, %270
  %1461 = fmul fast float %274, %274
  %1462 = fadd fast float %1459, -1.000000e+00
  %1463 = fadd fast float %1460, -1.000000e+00
  %1464 = fadd fast float %1461, -1.000000e+00
  %1465 = fmul fast float %1310, %1462
  %1466 = fmul fast float %1310, %1463
  %1467 = fmul fast float %1310, %1464
  %1468 = fadd fast float %1465, 1.000000e+00
  %1469 = fadd fast float %1466, 1.000000e+00
  %1470 = fadd fast float %1467, 1.000000e+00
  %1471 = fmul fast float %1468, %1285
  %1472 = fmul fast float %1469, %1286
  %1473 = fmul fast float %1470, %1287
  br label %1474

; <label>:1474                                    ; preds = %1458, %1424, %1315, %1271
  %1475 = phi float [ %1420, %1315 ], [ %1296, %1424 ], [ %1296, %1458 ], [ 0x3FA23C0BE0000000, %1271 ]
  %1476 = phi float [ %1412, %1315 ], [ %1455, %1424 ], [ %1471, %1458 ], [ 1.000000e+00, %1271 ]
  %1477 = phi float [ %1413, %1315 ], [ %1456, %1424 ], [ %1472, %1458 ], [ 1.000000e+00, %1271 ]
  %1478 = phi float [ %1414, %1315 ], [ %1457, %1424 ], [ %1473, %1458 ], [ 1.000000e+00, %1271 ]
  %1479 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1480 = extractvalue %dx.types.CBufRet.i32 %1479, 1
  %1481 = and i32 %1480, 1
  %1482 = icmp ne i32 %1481, 0
  %1483 = add i32 %32, 356
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = and i32 %1485, 32
  %1487 = icmp ne i32 %1486, 0
  %1488 = and i1 %1482, %1487
  %1489 = select i1 %1488, float 1.000000e+00, float %1476
  %1490 = select i1 %1488, float 0x3FD3333340000000, float %1477
  %1491 = select i1 %1488, float 0x3FD3333340000000, float %1478
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = and i32 %1493, 32
  %1495 = icmp eq i32 %1494, 0
  br i1 %1495, label %1568, label %1496

; <label>:1496                                    ; preds = %1474
  %1497 = add i32 %32, 108
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = add i32 %32, 428
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1500, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = add i32 %1502, 0
  %1504 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1503, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1505 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1504, %dx.types.Handle %67, float %1081, float %1082, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1506 = extractvalue %dx.types.ResRet.f32 %1505, 0
  %1507 = extractvalue %dx.types.ResRet.f32 %1505, 1
  %1508 = extractvalue %dx.types.ResRet.f32 %1505, 2
  %1509 = extractvalue %dx.types.ResRet.f32 %1505, 3
  %1510 = and i32 %1499, 255
  %1511 = uitofp i32 %1510 to float
  %1512 = lshr i32 %1499, 8
  %1513 = and i32 %1512, 255
  %1514 = uitofp i32 %1513 to float
  %1515 = lshr i32 %1499, 16
  %1516 = and i32 %1515, 255
  %1517 = uitofp i32 %1516 to float
  %1518 = fmul fast float %1517, 0x3F70101000000000
  %1519 = fmul fast float %1506, %1511
  %1520 = fadd fast float %1519, %1514
  %1521 = fmul fast float %1520, 0x3F70101000000000
  %1522 = fadd fast float %1507, -5.000000e-01
  %1523 = fadd fast float %1509, -5.000000e-01
  %1524 = fmul fast float %1522, %1518
  %1525 = fmul fast float %1523, %1518
  %1526 = fadd fast float %1524, 5.000000e-01
  %1527 = fadd fast float %1525, 5.000000e-01
  %1528 = fmul fast float %1526, 2.000000e+00
  %1529 = fadd fast float %1528, -1.000000e+00
  %1530 = fmul fast float %1527, 2.000000e+00
  %1531 = fadd fast float %1530, -1.000000e+00
  %1532 = fadd fast float %1529, %1531
  %1533 = fmul fast float %1532, 5.000000e-01
  %1534 = fsub fast float %1529, %1531
  %1535 = fmul fast float %1534, 5.000000e-01
  %1536 = call float @dx.op.unary.f32(i32 6, float %1533)  ; FAbs(value)
  %1537 = fsub fast float 1.000000e+00, %1536
  %1538 = call float @dx.op.unary.f32(i32 6, float %1535)  ; FAbs(value)
  %1539 = fsub fast float %1537, %1538
  %1540 = call float @dx.op.dot3.f32(i32 55, float %1533, float %1535, float %1539, float %1533, float %1535, float %1539)  ; Dot3(ax,ay,az,bx,by,bz)
  %1541 = call float @dx.op.unary.f32(i32 25, float %1540)  ; Rsqrt(value)
  %1542 = fmul fast float %1533, %1541
  %1543 = fmul fast float %1535, %1541
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = and i32 %1545, 67108864
  %1547 = icmp eq i32 %1546, 0
  br i1 %1547, label %1564, label %1548

; <label>:1548                                    ; preds = %1496
  %1549 = add i32 %32, 296
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1549, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = and i32 %1551, 65535
  %1553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1552)  ; LegacyF16ToF32(value)
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %991, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = and i32 %1555, 65535
  %1557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1556)  ; LegacyF16ToF32(value)
  %1558 = lshr i32 %1551, 16
  %1559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1558)  ; LegacyF16ToF32(value)
  %1560 = fsub fast float %1521, %1559
  %1561 = fmul fast float %1560, %1553
  %1562 = fadd fast float %1561, %1557
  %1563 = call float @dx.op.unary.f32(i32 7, float %1562)  ; Saturate(value)
  br label %1564

; <label>:1564                                    ; preds = %1548, %1496
  %1565 = phi float [ %1563, %1548 ], [ %1521, %1496 ]
  %1566 = call float @dx.op.dot2.f32(i32 54, float %1542, float %1543, float %985, float %986)  ; Dot2(ax,ay,bx,by)
  %1567 = call float @dx.op.dot2.f32(i32 54, float %1542, float %1543, float %987, float %988)  ; Dot2(ax,ay,bx,by)
  br label %1568

; <label>:1568                                    ; preds = %1564, %1474
  %1569 = phi float [ %1565, %1564 ], [ 0x3FD6666660000000, %1474 ]
  %1570 = phi float [ %1566, %1564 ], [ 0.000000e+00, %1474 ]
  %1571 = phi float [ %1567, %1564 ], [ 0.000000e+00, %1474 ]
  %1572 = phi float [ %1508, %1564 ], [ 1.000000e+00, %1474 ]
  %1573 = add i32 %32, 176
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1573, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = lshr i32 %1575, 22
  %1577 = shl nuw nsw i32 %1576, 5
  %1578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1577)  ; LegacyF16ToF32(value)
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = and i32 %1580, 64
  %1582 = icmp eq i32 %1581, 0
  br i1 %1582, label %1616, label %1583

; <label>:1583                                    ; preds = %1568
  %1584 = add i32 %32, 444
  %1585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1584, i32 undef)  ; BufferLoad(srv,index,wot)
  %1586 = extractvalue %dx.types.ResRet.i32 %1585, 0
  %1587 = add i32 %1586, 0
  %1588 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1587, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.i32 %1589, 0
  %1591 = and i32 %1590, 131072
  %1592 = icmp eq i32 %1591, 0
  %1593 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1588, %dx.types.Handle %67, float %1081, float %1082, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1594 = extractvalue %dx.types.ResRet.f32 %1593, 0
  %1595 = extractvalue %dx.types.ResRet.f32 %1593, 1
  %1596 = extractvalue %dx.types.ResRet.f32 %1593, 2
  %1597 = fmul fast float %1594, %254
  %1598 = fmul fast float %1595, %257
  %1599 = fmul fast float %1596, %260
  br i1 %1592, label %1606, label %1600

; <label>:1600                                    ; preds = %1583
  %1601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1602 = extractvalue %dx.types.CBufRet.f32 %1601, 0
  %1603 = fmul fast float %1602, %1597
  %1604 = fmul fast float %1602, %1598
  %1605 = fmul fast float %1602, %1599
  br label %1606

; <label>:1606                                    ; preds = %1600, %1583
  %1607 = phi float [ %1603, %1600 ], [ %1597, %1583 ]
  %1608 = phi float [ %1604, %1600 ], [ %1598, %1583 ]
  %1609 = phi float [ %1605, %1600 ], [ %1599, %1583 ]
  %1610 = fmul fast float %1607, %1578
  %1611 = select i1 %206, float %1610, float %1607
  %1612 = call float @dx.op.dot3.f32(i32 55, float %1611, float %1608, float %1609, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1613 = select i1 %206, float 0.000000e+00, float %1607
  %1614 = select i1 %206, float %1612, float %1608
  %1615 = select i1 %206, float 0.000000e+00, float %1609
  br label %1616

; <label>:1616                                    ; preds = %1606, %1568
  %1617 = phi float [ %1613, %1606 ], [ 0.000000e+00, %1568 ]
  %1618 = phi float [ %1614, %1606 ], [ 0.000000e+00, %1568 ]
  %1619 = phi float [ %1615, %1606 ], [ 0.000000e+00, %1568 ]
  %1620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1621 = extractvalue %dx.types.ResRet.i32 %1620, 0
  %1622 = and i32 %1621, 10240
  %1623 = icmp eq i32 %1622, 0
  br i1 %1623, label %1668, label %1624

; <label>:1624                                    ; preds = %1616
  %1625 = add i32 %32, 508
  %1626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1625, i32 undef)  ; BufferLoad(srv,index,wot)
  %1627 = extractvalue %dx.types.ResRet.i32 %1626, 0
  %1628 = add i32 %1627, 0
  %1629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1628, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1630 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1629, %dx.types.Handle %68, float %1081, float %1082, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1631 = extractvalue %dx.types.ResRet.f32 %1630, 1
  %1632 = extractvalue %dx.types.ResRet.f32 %1630, 3
  %1633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1634 = extractvalue %dx.types.ResRet.i32 %1633, 0
  %1635 = and i32 %1634, 1048576
  %1636 = icmp ne i32 %1635, 0
  %1637 = and i32 %1634, 8192
  %1638 = icmp eq i32 %1637, 0
  br i1 %1638, label %1654, label %1639

; <label>:1639                                    ; preds = %1624
  %1640 = extractvalue %dx.types.ResRet.f32 %1630, 2
  %1641 = select i1 %1636, float %1640, float %1631
  %1642 = extractvalue %dx.types.ResRet.f32 %1630, 0
  %1643 = select i1 %1636, float %1642, float %1631
  %1644 = add i32 %32, 112
  %1645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1644, i32 undef)  ; BufferLoad(srv,index,wot)
  %1646 = extractvalue %dx.types.ResRet.i32 %1645, 0
  %1647 = lshr i32 %1646, 16
  %1648 = and i32 %1647, 255
  %1649 = uitofp i32 %1648 to float
  %1650 = fmul fast float %1649, 0x3F80101020000000
  %1651 = fmul fast float %1650, %1643
  %1652 = fmul fast float %1650, %1631
  %1653 = fmul fast float %1650, %1641
  br label %1654

; <label>:1654                                    ; preds = %1639, %1624
  %1655 = phi float [ %1651, %1639 ], [ 0.000000e+00, %1624 ]
  %1656 = phi float [ %1652, %1639 ], [ 0.000000e+00, %1624 ]
  %1657 = phi float [ %1653, %1639 ], [ 0.000000e+00, %1624 ]
  %1658 = and i32 %1634, 2048
  %1659 = icmp eq i32 %1658, 0
  br i1 %1659, label %1668, label %1660

; <label>:1660                                    ; preds = %1654
  %1661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1573, i32 undef)  ; BufferLoad(srv,index,wot)
  %1662 = extractvalue %dx.types.ResRet.i32 %1661, 0
  %1663 = shl i32 %1662, 4
  %1664 = and i32 %1663, 32752
  %1665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1664)  ; LegacyF16ToF32(value)
  %1666 = fmul fast float %1665, %1632
  %1667 = call float @dx.op.binary.f32(i32 35, float %1666, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1668

; <label>:1668                                    ; preds = %1660, %1654, %1616
  %1669 = phi float [ %1655, %1660 ], [ %1655, %1654 ], [ 0.000000e+00, %1616 ]
  %1670 = phi float [ %1656, %1660 ], [ %1656, %1654 ], [ 0.000000e+00, %1616 ]
  %1671 = phi float [ %1657, %1660 ], [ %1657, %1654 ], [ 0.000000e+00, %1616 ]
  %1672 = phi float [ %1667, %1660 ], [ 0x3F70101020000000, %1654 ], [ 0x3F70101020000000, %1616 ]
  %1673 = add i32 %32, 112
  %1674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1673, i32 undef)  ; BufferLoad(srv,index,wot)
  %1675 = extractvalue %dx.types.ResRet.i32 %1674, 0
  %1676 = and i32 %1675, 255
  %1677 = uitofp i32 %1676 to float
  %1678 = lshr i32 %1675, 8
  %1679 = and i32 %1678, 255
  %1680 = uitofp i32 %1679 to float
  %1681 = call float @dx.op.dot3.f32(i32 55, float %1489, float %1490, float %1491, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1682 = fmul fast float %1680, %1681
  %1683 = fadd fast float %1682, %1677
  %1684 = fmul fast float %1683, 0x3F70101020000000
  %1685 = call float @dx.op.unary.f32(i32 7, float %1684)  ; Saturate(value)
  br i1 %973, label %1686, label %1694

; <label>:1686                                    ; preds = %1668
  %1687 = fsub fast float 1.000000e+00, %1269
  %1688 = fmul fast float %1687, %957
  %1689 = fmul fast float %1687, %958
  %1690 = fmul fast float %1687, %959
  %1691 = fmul fast float %1687, %960
  %1692 = fmul fast float %1687, %961
  %1693 = fmul fast float %1687, %962
  br label %1694

; <label>:1694                                    ; preds = %1686, %1668
  %1695 = phi float [ %1688, %1686 ], [ %957, %1668 ]
  %1696 = phi float [ %1689, %1686 ], [ %958, %1668 ]
  %1697 = phi float [ %1690, %1686 ], [ %959, %1668 ]
  %1698 = phi float [ %1691, %1686 ], [ %960, %1668 ]
  %1699 = phi float [ %1692, %1686 ], [ %961, %1668 ]
  %1700 = phi float [ %1693, %1686 ], [ %962, %1668 ]
  %1701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1702 = extractvalue %dx.types.ResRet.i32 %1701, 0
  %1703 = and i32 %1702, 3
  %1704 = icmp eq i32 %1703, 3
  br i1 %1704, label %1783, label %1705

; <label>:1705                                    ; preds = %1694
  %1706 = and i32 %1702, 16
  %1707 = icmp ne i32 %1706, 0
  %1708 = select i1 %1707, float %1269, float 0.000000e+00
  %1709 = icmp eq i32 %1703, 0
  br i1 %1709, label %1710, label %1738

; <label>:1710                                    ; preds = %1705
  %1711 = and i32 %1702, 64
  %1712 = icmp ne i32 %1711, 0
  %1713 = select i1 %1712, float %1269, float 0.000000e+00
  %1714 = fsub fast float %1489, %1695
  %1715 = fsub fast float %1490, %1696
  %1716 = fsub fast float %1491, %1697
  %1717 = fmul fast float %1708, %1714
  %1718 = fmul fast float %1708, %1715
  %1719 = fmul fast float %1708, %1716
  %1720 = fadd fast float %1717, %1695
  %1721 = fadd fast float %1718, %1696
  %1722 = fadd fast float %1719, %1697
  %1723 = fsub fast float %1475, %966
  %1724 = fmul fast float %1708, %1723
  %1725 = fadd fast float %1724, %966
  %1726 = fsub fast float %1617, %1698
  %1727 = fsub fast float %1618, %1699
  %1728 = fsub fast float %1619, %1700
  %1729 = fmul fast float %1713, %1726
  %1730 = fmul fast float %1713, %1727
  %1731 = fmul fast float %1713, %1728
  %1732 = fadd fast float %1729, %1698
  %1733 = fadd fast float %1730, %1699
  %1734 = fadd fast float %1731, %1700
  %1735 = fsub fast float %1685, %971
  %1736 = fmul fast float %1708, %1735
  %1737 = fadd fast float %1736, %971
  br label %1783

; <label>:1738                                    ; preds = %1705
  %1739 = icmp eq i32 %1703, 1
  br i1 %1739, label %1740, label %1753

; <label>:1740                                    ; preds = %1738
  %1741 = fadd fast float %1489, -1.000000e+00
  %1742 = fadd fast float %1490, -1.000000e+00
  %1743 = fadd fast float %1491, -1.000000e+00
  %1744 = fmul fast float %1708, %1741
  %1745 = fmul fast float %1708, %1742
  %1746 = fmul fast float %1708, %1743
  %1747 = fadd fast float %1744, 1.000000e+00
  %1748 = fadd fast float %1745, 1.000000e+00
  %1749 = fadd fast float %1746, 1.000000e+00
  %1750 = fmul fast float %1747, %1695
  %1751 = fmul fast float %1748, %1696
  %1752 = fmul fast float %1749, %1697
  br label %1783

; <label>:1753                                    ; preds = %1738
  %1754 = icmp eq i32 %1703, 2
  br i1 %1754, label %1755, label %1783

; <label>:1755                                    ; preds = %1753
  %1756 = call float @dx.op.unary.f32(i32 24, float %1489)  ; Sqrt(value)
  %1757 = call float @dx.op.unary.f32(i32 24, float %1490)  ; Sqrt(value)
  %1758 = call float @dx.op.unary.f32(i32 24, float %1491)  ; Sqrt(value)
  %1759 = fadd fast float %1756, -5.000000e-01
  %1760 = fadd fast float %1757, -5.000000e-01
  %1761 = fadd fast float %1758, -5.000000e-01
  %1762 = fmul fast float %1759, %1708
  %1763 = fmul fast float %1760, %1708
  %1764 = fmul fast float %1761, %1708
  %1765 = fadd fast float %1762, 5.000000e-01
  %1766 = fadd fast float %1763, 5.000000e-01
  %1767 = fadd fast float %1764, 5.000000e-01
  %1768 = fmul fast float %1765, 2.000000e+00
  %1769 = fsub fast float 1.000000e+00, %1768
  %1770 = fmul fast float %1769, %1695
  %1771 = fadd fast float %1770, %1768
  %1772 = fmul fast float %1771, %1695
  %1773 = fmul fast float %1766, 2.000000e+00
  %1774 = fsub fast float 1.000000e+00, %1773
  %1775 = fmul fast float %1774, %1696
  %1776 = fadd fast float %1775, %1773
  %1777 = fmul fast float %1776, %1696
  %1778 = fmul fast float %1767, 2.000000e+00
  %1779 = fsub fast float 1.000000e+00, %1778
  %1780 = fmul fast float %1779, %1697
  %1781 = fadd fast float %1780, %1778
  %1782 = fmul fast float %1781, %1697
  br label %1783

; <label>:1783                                    ; preds = %1755, %1753, %1740, %1710, %1694
  %1784 = phi float [ %1695, %1694 ], [ %1772, %1755 ], [ %1695, %1753 ], [ %1750, %1740 ], [ %1720, %1710 ]
  %1785 = phi float [ %1696, %1694 ], [ %1777, %1755 ], [ %1696, %1753 ], [ %1751, %1740 ], [ %1721, %1710 ]
  %1786 = phi float [ %1697, %1694 ], [ %1782, %1755 ], [ %1697, %1753 ], [ %1752, %1740 ], [ %1722, %1710 ]
  %1787 = phi float [ %1698, %1694 ], [ %1698, %1755 ], [ %1698, %1753 ], [ %1698, %1740 ], [ %1732, %1710 ]
  %1788 = phi float [ %1699, %1694 ], [ %1699, %1755 ], [ %1699, %1753 ], [ %1699, %1740 ], [ %1733, %1710 ]
  %1789 = phi float [ %1700, %1694 ], [ %1700, %1755 ], [ %1700, %1753 ], [ %1700, %1740 ], [ %1734, %1710 ]
  %1790 = phi float [ %966, %1694 ], [ %966, %1755 ], [ %966, %1753 ], [ %966, %1740 ], [ %1725, %1710 ]
  %1791 = phi float [ %971, %1694 ], [ %971, %1755 ], [ %971, %1753 ], [ %971, %1740 ], [ %1737, %1710 ]
  %1792 = and i32 %1702, 12
  %1793 = icmp eq i32 %1792, 12
  br i1 %1793, label %1900, label %1794

; <label>:1794                                    ; preds = %1783
  %1795 = and i32 %1702, 2097184
  %1796 = icmp eq i32 %1795, 2097184
  %1797 = select i1 %1796, float %1269, float 0.000000e+00
  %1798 = and i32 %1702, 4194336
  %1799 = icmp eq i32 %1798, 4194336
  %1800 = select i1 %1799, float %1269, float 0.000000e+00
  %1801 = and i32 %1702, 8388640
  %1802 = icmp eq i32 %1801, 8388640
  %1803 = select i1 %1802, float %1269, float 0.000000e+00
  %1804 = and i32 %1702, 2048
  %1805 = icmp ne i32 %1804, 0
  %1806 = select i1 %1805, float %1269, float 0.000000e+00
  %1807 = and i32 %1702, 8192
  %1808 = icmp ne i32 %1807, 0
  %1809 = select i1 %1808, float %1269, float 0.000000e+00
  %1810 = icmp eq i32 %1792, 0
  br i1 %1810, label %1811, label %1836

; <label>:1811                                    ; preds = %1794
  %1812 = fsub fast float %1570, %955
  %1813 = fsub fast float %1571, %956
  %1814 = fmul fast float %1797, %1812
  %1815 = fmul fast float %1797, %1813
  %1816 = fadd fast float %1814, %955
  %1817 = fadd fast float %1815, %956
  %1818 = fsub fast float %1572, %969
  %1819 = fmul fast float %1800, %1818
  %1820 = fadd fast float %1819, %969
  %1821 = fsub fast float %1569, %968
  %1822 = fmul fast float %1803, %1821
  %1823 = fadd fast float %1822, %968
  %1824 = fsub fast float %1672, %970
  %1825 = fmul fast float %1806, %1824
  %1826 = fadd fast float %1825, %970
  %1827 = fsub fast float %1669, %963
  %1828 = fsub fast float %1670, %964
  %1829 = fsub fast float %1671, %965
  %1830 = fmul fast float %1809, %1827
  %1831 = fmul fast float %1809, %1828
  %1832 = fmul fast float %1809, %1829
  %1833 = fadd fast float %1830, %963
  %1834 = fadd fast float %1831, %964
  %1835 = fadd fast float %1832, %965
  br label %1900

; <label>:1836                                    ; preds = %1794
  %1837 = icmp eq i32 %1792, 4
  br i1 %1837, label %1838, label %1878

; <label>:1838                                    ; preds = %1836
  %1839 = fmul fast float %1797, %1570
  %1840 = fmul fast float %1797, %1571
  %1841 = fadd fast float %1839, %955
  %1842 = fadd fast float %1840, %956
  %1843 = call float @dx.op.binary.f32(i32 36, float %969, float %1572)  ; FMin(a,b)
  %1844 = fsub fast float %1843, %969
  %1845 = fmul fast float %1844, %1800
  %1846 = fadd fast float %1845, %969
  %1847 = fadd fast float %1569, %968
  %1848 = fmul fast float %1847, 0x3FF337FAE0000000
  %1849 = fmul fast float %968, %968
  %1850 = fmul fast float %1569, %1569
  %1851 = fadd fast float %1850, %1849
  %1852 = fmul fast float %1851, 0x3FE5152B00000000
  %1853 = fmul fast float %968, 0xBFCC1F85E0000000
  %1854 = fmul fast float %1853, %1569
  %1855 = fadd fast float %1854, 0xBFE1363700000000
  %1856 = fadd fast float %1855, %1848
  %1857 = fsub fast float %1856, %1852
  %1858 = fmul fast float %1847, 0x3FBA6F0D00000000
  %1859 = fmul fast float %1851, 0x3FD0432880000000
  %1860 = fmul fast float %968, 0xBFEF110800000000
  %1861 = fmul fast float %1860, %1569
  %1862 = fadd fast float %1861, 1.000000e+00
  %1863 = fsub fast float %1862, %1858
  %1864 = fadd fast float %1863, %1859
  %1865 = fdiv fast float %1857, %1864
  %1866 = call float @dx.op.unary.f32(i32 7, float %1865)  ; Saturate(value)
  %1867 = fsub fast float %1866, %968
  %1868 = fmul fast float %1867, %1803
  %1869 = fadd fast float %1868, %968
  %1870 = fmul fast float %1806, %1672
  %1871 = fadd fast float %1870, %970
  %1872 = fmul fast float %1809, %1669
  %1873 = fmul fast float %1809, %1670
  %1874 = fmul fast float %1809, %1671
  %1875 = fadd fast float %1872, %963
  %1876 = fadd fast float %1873, %964
  %1877 = fadd fast float %1874, %965
  br label %1900

; <label>:1878                                    ; preds = %1836
  %1879 = icmp eq i32 %1792, 8
  br i1 %1879, label %1880, label %1900

; <label>:1880                                    ; preds = %1878
  %1881 = fmul fast float %1797, %1570
  %1882 = fmul fast float %1797, %1571
  %1883 = fadd fast float %1881, %955
  %1884 = fadd fast float %1882, %956
  %1885 = call float @dx.op.binary.f32(i32 36, float %969, float %1572)  ; FMin(a,b)
  %1886 = fsub fast float %1885, %969
  %1887 = fmul fast float %1886, %1800
  %1888 = fadd fast float %1887, %969
  %1889 = fsub fast float %1569, %968
  %1890 = fmul fast float %1803, %1889
  %1891 = fadd fast float %1890, %968
  %1892 = fmul fast float %1806, %1672
  %1893 = fadd fast float %1892, %970
  %1894 = fmul fast float %1809, %1669
  %1895 = fmul fast float %1809, %1670
  %1896 = fmul fast float %1809, %1671
  %1897 = fadd fast float %1894, %963
  %1898 = fadd fast float %1895, %964
  %1899 = fadd fast float %1896, %965
  br label %1900

; <label>:1900                                    ; preds = %1880, %1878, %1838, %1811, %1783, %1268, %972, %954
  %1901 = phi float [ %955, %1783 ], [ %955, %1268 ], [ %955, %954 ], [ %1883, %1880 ], [ %955, %1878 ], [ %1841, %1838 ], [ %1816, %1811 ], [ %955, %972 ]
  %1902 = phi float [ %956, %1783 ], [ %956, %1268 ], [ %956, %954 ], [ %1884, %1880 ], [ %956, %1878 ], [ %1842, %1838 ], [ %1817, %1811 ], [ %956, %972 ]
  %1903 = phi float [ %1784, %1783 ], [ %957, %1268 ], [ %957, %954 ], [ %1784, %1880 ], [ %1784, %1878 ], [ %1784, %1838 ], [ %1784, %1811 ], [ %957, %972 ]
  %1904 = phi float [ %1785, %1783 ], [ %958, %1268 ], [ %958, %954 ], [ %1785, %1880 ], [ %1785, %1878 ], [ %1785, %1838 ], [ %1785, %1811 ], [ %958, %972 ]
  %1905 = phi float [ %1786, %1783 ], [ %959, %1268 ], [ %959, %954 ], [ %1786, %1880 ], [ %1786, %1878 ], [ %1786, %1838 ], [ %1786, %1811 ], [ %959, %972 ]
  %1906 = phi float [ %1787, %1783 ], [ %960, %1268 ], [ %960, %954 ], [ %1787, %1880 ], [ %1787, %1878 ], [ %1787, %1838 ], [ %1787, %1811 ], [ %960, %972 ]
  %1907 = phi float [ %1788, %1783 ], [ %961, %1268 ], [ %961, %954 ], [ %1788, %1880 ], [ %1788, %1878 ], [ %1788, %1838 ], [ %1788, %1811 ], [ %961, %972 ]
  %1908 = phi float [ %1789, %1783 ], [ %962, %1268 ], [ %962, %954 ], [ %1789, %1880 ], [ %1789, %1878 ], [ %1789, %1838 ], [ %1789, %1811 ], [ %962, %972 ]
  %1909 = phi float [ %963, %1783 ], [ %963, %1268 ], [ %963, %954 ], [ %1897, %1880 ], [ %963, %1878 ], [ %1875, %1838 ], [ %1833, %1811 ], [ %963, %972 ]
  %1910 = phi float [ %964, %1783 ], [ %964, %1268 ], [ %964, %954 ], [ %1898, %1880 ], [ %964, %1878 ], [ %1876, %1838 ], [ %1834, %1811 ], [ %964, %972 ]
  %1911 = phi float [ %965, %1783 ], [ %965, %1268 ], [ %965, %954 ], [ %1899, %1880 ], [ %965, %1878 ], [ %1877, %1838 ], [ %1835, %1811 ], [ %965, %972 ]
  %1912 = phi float [ %1790, %1783 ], [ %966, %1268 ], [ %966, %954 ], [ %1790, %1880 ], [ %1790, %1878 ], [ %1790, %1838 ], [ %1790, %1811 ], [ %966, %972 ]
  %1913 = phi float [ %968, %1783 ], [ %968, %1268 ], [ %968, %954 ], [ %1891, %1880 ], [ %968, %1878 ], [ %1869, %1838 ], [ %1823, %1811 ], [ %968, %972 ]
  %1914 = phi float [ %969, %1783 ], [ %969, %1268 ], [ %969, %954 ], [ %1888, %1880 ], [ %969, %1878 ], [ %1846, %1838 ], [ %1820, %1811 ], [ %969, %972 ]
  %1915 = phi float [ %970, %1783 ], [ %970, %1268 ], [ %970, %954 ], [ %1893, %1880 ], [ %970, %1878 ], [ %1871, %1838 ], [ %1826, %1811 ], [ %970, %972 ]
  %1916 = phi float [ %1791, %1783 ], [ %971, %1268 ], [ %971, %954 ], [ %1791, %1880 ], [ %1791, %1878 ], [ %1791, %1838 ], [ %1791, %1811 ], [ %971, %972 ]
  br i1 %381, label %2845, label %1917

; <label>:1917                                    ; preds = %1900
  %1918 = icmp ult i32 %434, 3
  %1919 = add i32 %32, 56
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = add i32 %32, 60
  %1923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1924 = extractvalue %dx.types.ResRet.i32 %1923, 0
  %1925 = or i32 %1924, %1921
  %1926 = icmp eq i32 %1925, 0
  br i1 %1926, label %2845, label %1927

; <label>:1927                                    ; preds = %1917
  %1928 = and i32 %1921, 262144
  %1929 = icmp ne i32 %1928, 0
  %1930 = select i1 %1929, float %34, float 1.000000e+00
  %1931 = select i1 %1929, float %35, float 0.000000e+00
  %1932 = select i1 %1929, float %36, float 0.000000e+00
  %1933 = select i1 %1929, float %37, float 1.000000e+00
  %1934 = select i1 %1929, float %38, float %59
  %1935 = select i1 %1929, float %39, float %60
  %1936 = add i32 %32, 316
  %1937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.i32 %1937, 0
  %1939 = lshr i32 %1938, 16
  %1940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1939)  ; LegacyF16ToF32(value)
  %1941 = fmul fast float %1940, 0x3F50624DE0000000
  %1942 = add i32 %32, 120
  %1943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1944 = extractvalue %dx.types.ResRet.i32 %1943, 0
  %1945 = lshr i32 %1944, 16
  %1946 = and i32 %1945, 255
  %1947 = lshr i32 %1944, 24
  %1948 = add i32 %32, 324
  %1949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1948, i32 undef)  ; BufferLoad(srv,index,wot)
  %1950 = extractvalue %dx.types.ResRet.i32 %1949, 0
  %1951 = and i32 %1950, 65535
  %1952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1951)  ; LegacyF16ToF32(value)
  %1953 = lshr i32 %1950, 16
  %1954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1953)  ; LegacyF16ToF32(value)
  %1955 = add i32 %32, 64
  %1956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1955, i32 undef)  ; BufferLoad(srv,index,wot)
  %1957 = extractvalue %dx.types.ResRet.i32 %1956, 0
  %1958 = lshr i32 %1957, 22
  %1959 = shl nuw nsw i32 %1958, 5
  %1960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1959)  ; LegacyF16ToF32(value)
  %1961 = shl i32 %1957, 4
  %1962 = and i32 %1961, 32752
  %1963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1962)  ; LegacyF16ToF32(value)
  %1964 = lshr i32 %1957, 7
  %1965 = and i32 %1964, 32752
  %1966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1965)  ; LegacyF16ToF32(value)
  %1967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1968 = extractvalue %dx.types.CBufRet.f32 %1967, 3
  %1969 = fmul fast float %1968, 1.000000e+03
  %1970 = fmul fast float %331, %1969
  %1971 = call float @dx.op.unary.f32(i32 22, float %1970)  ; Frc(value)
  %1972 = fadd fast float %1971, %321
  %1973 = fmul fast float %332, %1969
  %1974 = call float @dx.op.unary.f32(i32 22, float %1973)  ; Frc(value)
  %1975 = fadd fast float %1974, %323
  %1976 = fmul fast float %1941, %1969
  %1977 = call float @dx.op.unary.f32(i32 22, float %1976)  ; Frc(value)
  %1978 = fmul fast float %1977, 0x401921FB60000000
  %1979 = fadd fast float %1978, %1960
  %1980 = call float @dx.op.unary.f32(i32 13, float %1979)  ; Sin(value)
  %1981 = call float @dx.op.unary.f32(i32 12, float %1979)  ; Cos(value)
  %1982 = fsub fast float -0.000000e+00, %1980
  %1983 = fadd fast float %1934, -5.000000e-01
  %1984 = fadd fast float %1935, -5.000000e-01
  %1985 = fmul fast float %1952, %1983
  %1986 = fmul fast float %1954, %1984
  %1987 = fadd fast float %1985, 5.000000e-01
  %1988 = fadd fast float %1986, 5.000000e-01
  %1989 = fmul fast float %1963, %1987
  %1990 = fmul fast float %1966, %1988
  %1991 = fmul fast float %1981, %1989
  %1992 = call float @dx.op.tertiary.f32(i32 46, float %1982, float %1990, float %1991)  ; FMad(a,b,c)
  %1993 = fmul fast float %1980, %1989
  %1994 = call float @dx.op.tertiary.f32(i32 46, float %1981, float %1990, float %1993)  ; FMad(a,b,c)
  %1995 = fadd fast float %1972, %1992
  %1996 = fadd fast float %1975, %1994
  %1997 = icmp ugt i32 %1946, 1
  %1998 = icmp ugt i32 %1944, 33554431
  %1999 = or i1 %1998, %1997
  br i1 %1999, label %2000, label %2025

; <label>:2000                                    ; preds = %1927
  %2001 = add i32 %32, 260
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = lshr i32 %2003, 16
  %2005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2004)  ; LegacyF16ToF32(value)
  %2006 = fmul fast float %1968, %2005
  %2007 = call float @dx.op.unary.f32(i32 22, float %2006)  ; Frc(value)
  %2008 = mul nuw nsw i32 %1946, %1947
  %2009 = uitofp i32 %2008 to float
  %2010 = fmul fast float %2007, %2009
  %2011 = call float @dx.op.unary.f32(i32 27, float %2010)  ; Round_ni(value)
  %2012 = fptoui float %2011 to i32
  %2013 = urem i32 %2012, %1946
  %2014 = udiv i32 %2012, %1947
  %2015 = call float @dx.op.unary.f32(i32 22, float %1995)  ; Frc(value)
  %2016 = call float @dx.op.unary.f32(i32 22, float %1996)  ; Frc(value)
  %2017 = uitofp i32 %2013 to float
  %2018 = uitofp i32 %2014 to float
  %2019 = fadd fast float %2015, %2017
  %2020 = fadd fast float %2016, %2018
  %2021 = uitofp i32 %1946 to float
  %2022 = uitofp i32 %1947 to float
  %2023 = fdiv fast float %2019, %2021
  %2024 = fdiv fast float %2020, %2022
  br label %2025

; <label>:2025                                    ; preds = %2000, %1927
  %2026 = phi float [ %2023, %2000 ], [ %1995, %1927 ]
  %2027 = phi float [ %2024, %2000 ], [ %1996, %1927 ]
  %2028 = and i32 %1921, 16777216
  %2029 = icmp eq i32 %2028, 0
  br i1 %2029, label %2139, label %2030

; <label>:2030                                    ; preds = %2025
  %2031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2032 = extractvalue %dx.types.CBufRet.f32 %2031, 0
  %2033 = extractvalue %dx.types.CBufRet.f32 %2031, 1
  %2034 = extractvalue %dx.types.CBufRet.f32 %2031, 2
  %2035 = fadd fast float %2032, %130
  %2036 = fadd fast float %2033, %131
  %2037 = fadd fast float %2034, %132
  %2038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2039 = extractvalue %dx.types.CBufRet.f32 %2038, 0
  %2040 = call float @dx.op.unary.f32(i32 7, float %2039)  ; Saturate(value)
  %2041 = icmp eq i32 %33, 65535
  br i1 %2041, label %2136, label %2042

; <label>:2042                                    ; preds = %2030
  %2043 = lshr i32 %33, 1
  %2044 = shl i32 %2043, 2
  %2045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2046 = extractvalue %dx.types.ResRet.i32 %2045, 0
  %2047 = and i32 %33, 1
  %2048 = icmp ne i32 %2047, 0
  %2049 = lshr i32 %2046, 16
  %2050 = and i32 %2046, 65535
  %2051 = select i1 %2048, i32 %2049, i32 %2050
  %2052 = icmp eq i32 %2051, 65535
  br i1 %2052, label %2132, label %2053

; <label>:2053                                    ; preds = %2042
  %2054 = mul nuw nsw i32 %2051, 40
  %2055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.f32 %2055, 0
  %2057 = extractvalue %dx.types.ResRet.f32 %2055, 1
  %2058 = extractvalue %dx.types.ResRet.f32 %2055, 2
  %2059 = add nuw nsw i32 %2054, 12
  %2060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2059, i32 undef)  ; BufferLoad(srv,index,wot)
  %2061 = extractvalue %dx.types.ResRet.f32 %2060, 0
  %2062 = extractvalue %dx.types.ResRet.f32 %2060, 1
  %2063 = extractvalue %dx.types.ResRet.f32 %2060, 2
  %2064 = add nuw nsw i32 %2054, 24
  %2065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2064, i32 undef)  ; BufferLoad(srv,index,wot)
  %2066 = extractvalue %dx.types.ResRet.f32 %2065, 0
  %2067 = extractvalue %dx.types.ResRet.f32 %2065, 1
  %2068 = extractvalue %dx.types.ResRet.f32 %2065, 2
  %2069 = add nuw nsw i32 %2054, 36
  %2070 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2069, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.f32 %2070, 0
  %2072 = fsub fast float %2035, %2056
  %2073 = fsub fast float %2036, %2057
  %2074 = fsub fast float %2037, %2058
  %2075 = fmul fast float %2071, %2072
  %2076 = fmul fast float %2071, %2073
  %2077 = fmul fast float %2071, %2074
  %2078 = call float @dx.op.unary.f32(i32 27, float %2075)  ; Round_ni(value)
  %2079 = call float @dx.op.unary.f32(i32 27, float %2076)  ; Round_ni(value)
  %2080 = call float @dx.op.unary.f32(i32 27, float %2077)  ; Round_ni(value)
  %2081 = fadd fast float %2078, 5.000000e-01
  %2082 = fadd fast float %2079, 5.000000e-01
  %2083 = fadd fast float %2080, 5.000000e-01
  %2084 = fmul fast float %2081, %2061
  %2085 = fmul fast float %2082, %2062
  %2086 = fmul fast float %2083, %2063
  %2087 = shl i32 %33, 2
  %2088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2089 = extractvalue %dx.types.ResRet.i32 %2088, 0
  %2090 = add i32 %2089, 0
  %2091 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2090, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2092 = call float @dx.op.unary.f32(i32 22, float %2084)  ; Frc(value)
  %2093 = call float @dx.op.unary.f32(i32 22, float %2085)  ; Frc(value)
  %2094 = call float @dx.op.unary.f32(i32 22, float %2086)  ; Frc(value)
  %2095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2091, %dx.types.Handle %27, float %2092, float %2093, float %2094, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2096 = extractvalue %dx.types.ResRet.f32 %2095, 0
  %2097 = extractvalue %dx.types.ResRet.f32 %2095, 1
  %2098 = extractvalue %dx.types.ResRet.f32 %2095, 2
  %2099 = fmul fast float %2096, 1.023000e+03
  %2100 = fmul fast float %2097, 1.023000e+03
  %2101 = fmul fast float %2098, 1.023000e+03
  %2102 = fadd fast float %2099, 5.000000e-01
  %2103 = fadd fast float %2100, 5.000000e-01
  %2104 = fadd fast float %2101, 5.000000e-01
  %2105 = call float @dx.op.unary.f32(i32 27, float %2102)  ; Round_ni(value)
  %2106 = call float @dx.op.unary.f32(i32 27, float %2103)  ; Round_ni(value)
  %2107 = call float @dx.op.unary.f32(i32 27, float %2104)  ; Round_ni(value)
  %2108 = fsub fast float %2075, %2078
  %2109 = fsub fast float %2076, %2079
  %2110 = fsub fast float %2077, %2080
  %2111 = fmul fast float %2108, 7.500000e-01
  %2112 = fmul fast float %2109, 7.500000e-01
  %2113 = fmul fast float %2110, 7.500000e-01
  %2114 = fadd fast float %2078, 1.250000e-01
  %2115 = fadd fast float %2114, %2111
  %2116 = fadd fast float %2115, %2105
  %2117 = fadd fast float %2079, 1.250000e-01
  %2118 = fadd fast float %2117, %2112
  %2119 = fadd fast float %2118, %2106
  %2120 = fadd fast float %2080, 1.250000e-01
  %2121 = fadd fast float %2120, %2113
  %2122 = fadd fast float %2121, %2107
  %2123 = fmul fast float %2116, %2066
  %2124 = fmul fast float %2119, %2067
  %2125 = fmul fast float %2122, %2068
  %2126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2127 = extractvalue %dx.types.ResRet.i32 %2126, 0
  %2128 = add i32 %2127, 0
  %2129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2128, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2129, %dx.types.Handle %25, float %2123, float %2124, float %2125, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2131 = extractvalue %dx.types.ResRet.f32 %2130, 0
  br label %2132

; <label>:2132                                    ; preds = %2053, %2042
  %2133 = phi float [ %2131, %2053 ], [ -1.000000e+00, %2042 ]
  %2134 = fadd fast float %2133, %2040
  %2135 = call float @dx.op.unary.f32(i32 7, float %2134)  ; Saturate(value)
  br label %2136

; <label>:2136                                    ; preds = %2132, %2030
  %2137 = phi float [ %2135, %2132 ], [ %2040, %2030 ]
  %2138 = fmul fast float %2137, %430
  br label %2139

; <label>:2139                                    ; preds = %2136, %2025
  %2140 = phi float [ %2138, %2136 ], [ %430, %2025 ]
  %2141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.i32 %2141, 0
  %2143 = and i32 %2142, 256
  %2144 = icmp eq i32 %2143, 0
  br i1 %2144, label %2191, label %2145

; <label>:2145                                    ; preds = %2139
  %2146 = add i32 %32, 480
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2146, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = add i32 %2148, 0
  %2150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2149, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2151 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2150, %dx.types.Handle %68, float %2026, float %2027, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2152 = extractvalue %dx.types.ResRet.f32 %2151, 0
  %2153 = add i32 %32, 132
  %2154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = shl i32 %2155, 4
  %2157 = and i32 %2156, 32752
  %2158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2157)  ; LegacyF16ToF32(value)
  %2159 = lshr i32 %2155, 7
  %2160 = and i32 %2159, 32752
  %2161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2160)  ; LegacyF16ToF32(value)
  %2162 = fsub fast float 1.000000e+00, %2140
  %2163 = call float @dx.op.binary.f32(i32 35, float %2162, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2164 = bitcast float %2140 to i32
  %2165 = sitofp i32 %2164 to float
  %2166 = fadd fast float %2165, 0xC1CFBF8940000000
  %2167 = fmul fast float %2161, %2166
  %2168 = fadd fast float %2167, 0x41CFBF8940000000
  %2169 = fptosi float %2168 to i32
  %2170 = bitcast i32 %2169 to float
  %2171 = bitcast float %2163 to i32
  %2172 = sitofp i32 %2171 to float
  %2173 = fadd fast float %2172, 0xC1CFBF8940000000
  %2174 = fmul fast float %2173, %2161
  %2175 = fadd fast float %2174, 0x41CFBF8940000000
  %2176 = fptosi float %2175 to i32
  %2177 = bitcast i32 %2176 to float
  %2178 = fmul fast float %2170, %2158
  %2179 = fmul fast float %2177, %2158
  %2180 = fsub fast float %2163, %2178
  %2181 = fadd fast float %2179, %2163
  %2182 = call float @dx.op.unary.f32(i32 7, float %2180)  ; Saturate(value)
  %2183 = call float @dx.op.unary.f32(i32 7, float %2181)  ; Saturate(value)
  %2184 = fsub fast float %2152, %2182
  %2185 = fsub fast float %2183, %2182
  %2186 = bitcast float %2185 to i32
  %2187 = sub nsw i32 2129859010, %2186
  %2188 = bitcast i32 %2187 to float
  %2189 = fmul fast float %2188, %2184
  %2190 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  br label %2191

; <label>:2191                                    ; preds = %2145, %2139
  %2192 = phi float [ %2190, %2145 ], [ %2140, %2139 ]
  %2193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2194 = extractvalue %dx.types.ResRet.i32 %2193, 0
  %2195 = and i32 %2194, 128
  %2196 = icmp eq i32 %2195, 0
  br i1 %2196, label %2213, label %2197

; <label>:2197                                    ; preds = %2191
  %2198 = add i32 %32, 464
  %2199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2198, i32 undef)  ; BufferLoad(srv,index,wot)
  %2200 = extractvalue %dx.types.ResRet.i32 %2199, 0
  %2201 = add i32 %2200, 0
  %2202 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2201, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2203 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2202, %dx.types.Handle %68, float %2026, float %2027, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2204 = extractvalue %dx.types.ResRet.f32 %2203, 0
  %2205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2206 = extractvalue %dx.types.ResRet.i32 %2205, 0
  %2207 = and i32 %2206, 524288
  %2208 = icmp ne i32 %2207, 0
  %2209 = fcmp fast ogt float %2204, 0x3FE0101020000000
  %2210 = select i1 %2209, float 1.000000e+00, float 0.000000e+00
  %2211 = select i1 %2208, float %2210, float %2204
  %2212 = fmul fast float %2211, %2192
  br label %2213

; <label>:2213                                    ; preds = %2197, %2191
  %2214 = phi float [ %2212, %2197 ], [ %2192, %2191 ]
  %2215 = fcmp fast ult float %2214, 0x3F70101020000000
  br i1 %2215, label %2845, label %2216

; <label>:2216                                    ; preds = %2213
  %2217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.i32 %2217, 0
  %2219 = and i32 %2218, 16
  %2220 = icmp eq i32 %2219, 0
  br i1 %2220, label %2419, label %2221

; <label>:2221                                    ; preds = %2216
  %2222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1942, i32 undef)  ; BufferLoad(srv,index,wot)
  %2223 = extractvalue %dx.types.ResRet.i32 %2222, 0
  %2224 = add i32 %32, 416
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = add i32 %2226, 0
  %2228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2227, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2229 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2228, %dx.types.Handle %67, float %2026, float %2027, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2230 = extractvalue %dx.types.ResRet.f32 %2229, 0
  %2231 = extractvalue %dx.types.ResRet.f32 %2229, 1
  %2232 = extractvalue %dx.types.ResRet.f32 %2229, 2
  %2233 = extractvalue %dx.types.ResRet.f32 %2229, 3
  %2234 = and i32 %2223, 255
  %2235 = uitofp i32 %2234 to float
  %2236 = lshr i32 %2223, 8
  %2237 = and i32 %2236, 255
  %2238 = uitofp i32 %2237 to float
  %2239 = fmul fast float %2233, %2235
  %2240 = fadd fast float %2239, %2238
  %2241 = fmul fast float %2240, 0x3F70101000000000
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = and i32 %2243, 512
  %2245 = icmp eq i32 %2244, 0
  br i1 %2245, label %2254, label %2246

; <label>:2246                                    ; preds = %2221
  %2247 = add i32 %32, 496
  %2248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2247, i32 undef)  ; BufferLoad(srv,index,wot)
  %2249 = extractvalue %dx.types.ResRet.i32 %2248, 0
  %2250 = add i32 %2249, 0
  %2251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2250, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2252 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2251, %dx.types.Handle %68, float %2026, float %2027, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2253 = extractvalue %dx.types.ResRet.f32 %2252, 0
  br label %2254

; <label>:2254                                    ; preds = %2246, %2221
  %2255 = phi float [ %2253, %2246 ], [ 1.000000e+00, %2221 ]
  %2256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.i32 %2256, 0
  %2258 = and i32 %2257, 33554432
  %2259 = icmp eq i32 %2258, 0
  br i1 %2259, label %2366, label %2260

; <label>:2260                                    ; preds = %2254
  %2261 = add i32 %32, 256
  %2262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2263 = extractvalue %dx.types.ResRet.i32 %2262, 0
  %2264 = and i32 %2263, 65535
  %2265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2264)  ; LegacyF16ToF32(value)
  %2266 = lshr i32 %2263, 16
  %2267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2266)  ; LegacyF16ToF32(value)
  %2268 = add i32 %32, 260
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = and i32 %2270, 65535
  %2272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2271)  ; LegacyF16ToF32(value)
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = lshr i32 %2274, 24
  %2276 = uitofp i32 %2275 to float
  %2277 = fmul fast float %2276, 0x3F70101020000000
  %2278 = and i32 %2274, 255
  %2279 = uitofp i32 %2278 to float
  %2280 = fmul fast float %2279, 0x3F70101020000000
  %2281 = lshr i32 %2274, 8
  %2282 = and i32 %2281, 255
  %2283 = uitofp i32 %2282 to float
  %2284 = fmul fast float %2283, 0x3F70101020000000
  %2285 = lshr i32 %2274, 16
  %2286 = and i32 %2285, 255
  %2287 = uitofp i32 %2286 to float
  %2288 = fmul fast float %2287, 0x3F70101020000000
  %2289 = add i32 %32, 252
  %2290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2289, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = lshr i32 %2291, 24
  %2293 = uitofp i32 %2292 to float
  %2294 = fmul fast float %2293, 0x3F70101020000000
  %2295 = and i32 %2291, 255
  %2296 = uitofp i32 %2295 to float
  %2297 = fmul fast float %2296, 0x3F70101020000000
  %2298 = lshr i32 %2291, 8
  %2299 = and i32 %2298, 255
  %2300 = uitofp i32 %2299 to float
  %2301 = fmul fast float %2300, 0x3F70101020000000
  %2302 = lshr i32 %2291, 16
  %2303 = and i32 %2302, 255
  %2304 = uitofp i32 %2303 to float
  %2305 = fmul fast float %2304, 0x3F70101020000000
  %2306 = bitcast float %2230 to i32
  %2307 = ashr i32 %2306, 1
  %2308 = sub nsw i32 1597463174, %2307
  %2309 = bitcast i32 %2308 to float
  %2310 = fmul fast float %2230, 5.000000e-01
  %2311 = fmul fast float %2309, %2309
  %2312 = fmul fast float %2311, %2310
  %2313 = fsub fast float 1.500000e+00, %2312
  %2314 = fmul fast float %2309, %2230
  %2315 = fmul fast float %2314, %2313
  %2316 = bitcast float %2231 to i32
  %2317 = ashr i32 %2316, 1
  %2318 = sub nsw i32 1597463174, %2317
  %2319 = bitcast i32 %2318 to float
  %2320 = fmul fast float %2231, 5.000000e-01
  %2321 = fmul fast float %2319, %2319
  %2322 = fmul fast float %2321, %2320
  %2323 = fsub fast float 1.500000e+00, %2322
  %2324 = fmul fast float %2319, %2231
  %2325 = fmul fast float %2324, %2323
  %2326 = bitcast float %2232 to i32
  %2327 = ashr i32 %2326, 1
  %2328 = sub nsw i32 1597463174, %2327
  %2329 = bitcast i32 %2328 to float
  %2330 = fmul fast float %2232, 5.000000e-01
  %2331 = fmul fast float %2329, %2329
  %2332 = fmul fast float %2331, %2330
  %2333 = fsub fast float 1.500000e+00, %2332
  %2334 = fmul fast float %2329, %2232
  %2335 = fmul fast float %2334, %2333
  %2336 = fsub fast float %2315, %2297
  %2337 = fsub fast float %2325, %2301
  %2338 = fsub fast float %2335, %2305
  %2339 = fmul fast float %2336, %2265
  %2340 = fmul fast float %2337, %2267
  %2341 = fmul fast float %2338, %2272
  %2342 = fadd fast float %2339, %2280
  %2343 = fadd fast float %2340, %2284
  %2344 = fadd fast float %2341, %2288
  %2345 = call float @dx.op.unary.f32(i32 7, float %2342)  ; Saturate(value)
  %2346 = call float @dx.op.unary.f32(i32 7, float %2343)  ; Saturate(value)
  %2347 = call float @dx.op.unary.f32(i32 7, float %2344)  ; Saturate(value)
  %2348 = fmul fast float %2345, %2345
  %2349 = fmul fast float %2346, %2346
  %2350 = fmul fast float %2347, %2347
  %2351 = fsub fast float %2348, %2230
  %2352 = fsub fast float %2349, %2231
  %2353 = fsub fast float %2350, %2232
  %2354 = fmul fast float %2351, %2255
  %2355 = fmul fast float %2352, %2255
  %2356 = fmul fast float %2353, %2255
  %2357 = fadd fast float %2354, %2230
  %2358 = fadd fast float %2355, %2231
  %2359 = fadd fast float %2356, %2232
  %2360 = fadd fast float %2277, %2241
  %2361 = fsub fast float %2360, %2294
  %2362 = call float @dx.op.unary.f32(i32 7, float %2361)  ; Saturate(value)
  %2363 = fsub fast float %2362, %2241
  %2364 = fmul fast float %2363, %2255
  %2365 = fadd fast float %2364, %2241
  br label %2419

; <label>:2366                                    ; preds = %2254
  %2367 = and i32 %2257, 134217728
  %2368 = icmp eq i32 %2367, 0
  br i1 %2368, label %2403, label %2369

; <label>:2369                                    ; preds = %2366
  %2370 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %2371 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %2372 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %2373 = fadd fast float %2370, -5.000000e-01
  %2374 = fadd fast float %2371, -5.000000e-01
  %2375 = fadd fast float %2372, -5.000000e-01
  %2376 = fmul fast float %2373, %2255
  %2377 = fmul fast float %2374, %2255
  %2378 = fmul fast float %2375, %2255
  %2379 = fadd fast float %2376, 5.000000e-01
  %2380 = fadd fast float %2377, 5.000000e-01
  %2381 = fadd fast float %2378, 5.000000e-01
  %2382 = call float @dx.op.unary.f32(i32 24, float %2230)  ; Sqrt(value)
  %2383 = call float @dx.op.unary.f32(i32 24, float %2231)  ; Sqrt(value)
  %2384 = call float @dx.op.unary.f32(i32 24, float %2232)  ; Sqrt(value)
  %2385 = fmul fast float %2379, 2.000000e+00
  %2386 = fsub fast float 1.000000e+00, %2385
  %2387 = fmul fast float %2386, %2382
  %2388 = fadd fast float %2387, %2385
  %2389 = fmul fast float %2388, %2382
  %2390 = fmul fast float %2380, 2.000000e+00
  %2391 = fsub fast float 1.000000e+00, %2390
  %2392 = fmul fast float %2391, %2383
  %2393 = fadd fast float %2392, %2390
  %2394 = fmul fast float %2393, %2383
  %2395 = fmul fast float %2381, 2.000000e+00
  %2396 = fsub fast float 1.000000e+00, %2395
  %2397 = fmul fast float %2396, %2384
  %2398 = fadd fast float %2397, %2395
  %2399 = fmul fast float %2398, %2384
  %2400 = fmul fast float %2389, %2389
  %2401 = fmul fast float %2394, %2394
  %2402 = fmul fast float %2399, %2399
  br label %2419

; <label>:2403                                    ; preds = %2366
  %2404 = fmul fast float %308, %308
  %2405 = fmul fast float %312, %312
  %2406 = fmul fast float %316, %316
  %2407 = fadd fast float %2404, -1.000000e+00
  %2408 = fadd fast float %2405, -1.000000e+00
  %2409 = fadd fast float %2406, -1.000000e+00
  %2410 = fmul fast float %2255, %2407
  %2411 = fmul fast float %2255, %2408
  %2412 = fmul fast float %2255, %2409
  %2413 = fadd fast float %2410, 1.000000e+00
  %2414 = fadd fast float %2411, 1.000000e+00
  %2415 = fadd fast float %2412, 1.000000e+00
  %2416 = fmul fast float %2413, %2230
  %2417 = fmul fast float %2414, %2231
  %2418 = fmul fast float %2415, %2232
  br label %2419

; <label>:2419                                    ; preds = %2403, %2369, %2260, %2216
  %2420 = phi float [ %2365, %2260 ], [ %2241, %2369 ], [ %2241, %2403 ], [ 0x3FA23C0BE0000000, %2216 ]
  %2421 = phi float [ %2357, %2260 ], [ %2400, %2369 ], [ %2416, %2403 ], [ 1.000000e+00, %2216 ]
  %2422 = phi float [ %2358, %2260 ], [ %2401, %2369 ], [ %2417, %2403 ], [ 1.000000e+00, %2216 ]
  %2423 = phi float [ %2359, %2260 ], [ %2402, %2369 ], [ %2418, %2403 ], [ 1.000000e+00, %2216 ]
  %2424 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2425 = extractvalue %dx.types.CBufRet.i32 %2424, 1
  %2426 = and i32 %2425, 1
  %2427 = icmp ne i32 %2426, 0
  %2428 = add i32 %32, 356
  %2429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2428, i32 undef)  ; BufferLoad(srv,index,wot)
  %2430 = extractvalue %dx.types.ResRet.i32 %2429, 0
  %2431 = and i32 %2430, 32
  %2432 = icmp ne i32 %2431, 0
  %2433 = and i1 %2427, %2432
  %2434 = select i1 %2433, float 1.000000e+00, float %2421
  %2435 = select i1 %2433, float 0x3FD3333340000000, float %2422
  %2436 = select i1 %2433, float 0x3FD3333340000000, float %2423
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = and i32 %2438, 32
  %2440 = icmp eq i32 %2439, 0
  br i1 %2440, label %2513, label %2441

; <label>:2441                                    ; preds = %2419
  %2442 = add i32 %32, 124
  %2443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2442, i32 undef)  ; BufferLoad(srv,index,wot)
  %2444 = extractvalue %dx.types.ResRet.i32 %2443, 0
  %2445 = add i32 %32, 432
  %2446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2445, i32 undef)  ; BufferLoad(srv,index,wot)
  %2447 = extractvalue %dx.types.ResRet.i32 %2446, 0
  %2448 = add i32 %2447, 0
  %2449 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2448, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2450 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2449, %dx.types.Handle %67, float %2026, float %2027, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2451 = extractvalue %dx.types.ResRet.f32 %2450, 0
  %2452 = extractvalue %dx.types.ResRet.f32 %2450, 1
  %2453 = extractvalue %dx.types.ResRet.f32 %2450, 2
  %2454 = extractvalue %dx.types.ResRet.f32 %2450, 3
  %2455 = and i32 %2444, 255
  %2456 = uitofp i32 %2455 to float
  %2457 = lshr i32 %2444, 8
  %2458 = and i32 %2457, 255
  %2459 = uitofp i32 %2458 to float
  %2460 = lshr i32 %2444, 16
  %2461 = and i32 %2460, 255
  %2462 = uitofp i32 %2461 to float
  %2463 = fmul fast float %2462, 0x3F70101000000000
  %2464 = fmul fast float %2451, %2456
  %2465 = fadd fast float %2464, %2459
  %2466 = fmul fast float %2465, 0x3F70101000000000
  %2467 = fadd fast float %2452, -5.000000e-01
  %2468 = fadd fast float %2454, -5.000000e-01
  %2469 = fmul fast float %2467, %2463
  %2470 = fmul fast float %2468, %2463
  %2471 = fadd fast float %2469, 5.000000e-01
  %2472 = fadd fast float %2470, 5.000000e-01
  %2473 = fmul fast float %2471, 2.000000e+00
  %2474 = fadd fast float %2473, -1.000000e+00
  %2475 = fmul fast float %2472, 2.000000e+00
  %2476 = fadd fast float %2475, -1.000000e+00
  %2477 = fadd fast float %2474, %2476
  %2478 = fmul fast float %2477, 5.000000e-01
  %2479 = fsub fast float %2474, %2476
  %2480 = fmul fast float %2479, 5.000000e-01
  %2481 = call float @dx.op.unary.f32(i32 6, float %2478)  ; FAbs(value)
  %2482 = fsub fast float 1.000000e+00, %2481
  %2483 = call float @dx.op.unary.f32(i32 6, float %2480)  ; FAbs(value)
  %2484 = fsub fast float %2482, %2483
  %2485 = call float @dx.op.dot3.f32(i32 55, float %2478, float %2480, float %2484, float %2478, float %2480, float %2484)  ; Dot3(ax,ay,az,bx,by,bz)
  %2486 = call float @dx.op.unary.f32(i32 25, float %2485)  ; Rsqrt(value)
  %2487 = fmul fast float %2478, %2486
  %2488 = fmul fast float %2480, %2486
  %2489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2490 = extractvalue %dx.types.ResRet.i32 %2489, 0
  %2491 = and i32 %2490, 67108864
  %2492 = icmp eq i32 %2491, 0
  br i1 %2492, label %2509, label %2493

; <label>:2493                                    ; preds = %2441
  %2494 = add i32 %32, 312
  %2495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2494, i32 undef)  ; BufferLoad(srv,index,wot)
  %2496 = extractvalue %dx.types.ResRet.i32 %2495, 0
  %2497 = and i32 %2496, 65535
  %2498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2497)  ; LegacyF16ToF32(value)
  %2499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1936, i32 undef)  ; BufferLoad(srv,index,wot)
  %2500 = extractvalue %dx.types.ResRet.i32 %2499, 0
  %2501 = and i32 %2500, 65535
  %2502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2501)  ; LegacyF16ToF32(value)
  %2503 = lshr i32 %2496, 16
  %2504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2503)  ; LegacyF16ToF32(value)
  %2505 = fsub fast float %2466, %2504
  %2506 = fmul fast float %2505, %2498
  %2507 = fadd fast float %2506, %2502
  %2508 = call float @dx.op.unary.f32(i32 7, float %2507)  ; Saturate(value)
  br label %2509

; <label>:2509                                    ; preds = %2493, %2441
  %2510 = phi float [ %2508, %2493 ], [ %2466, %2441 ]
  %2511 = call float @dx.op.dot2.f32(i32 54, float %2487, float %2488, float %1930, float %1931)  ; Dot2(ax,ay,bx,by)
  %2512 = call float @dx.op.dot2.f32(i32 54, float %2487, float %2488, float %1932, float %1933)  ; Dot2(ax,ay,bx,by)
  br label %2513

; <label>:2513                                    ; preds = %2509, %2419
  %2514 = phi float [ %2510, %2509 ], [ 0x3FD6666660000000, %2419 ]
  %2515 = phi float [ %2511, %2509 ], [ 0.000000e+00, %2419 ]
  %2516 = phi float [ %2512, %2509 ], [ 0.000000e+00, %2419 ]
  %2517 = phi float [ %2453, %2509 ], [ 1.000000e+00, %2419 ]
  %2518 = add i32 %32, 192
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = lshr i32 %2520, 22
  %2522 = shl nuw nsw i32 %2521, 5
  %2523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2522)  ; LegacyF16ToF32(value)
  %2524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2525 = extractvalue %dx.types.ResRet.i32 %2524, 0
  %2526 = and i32 %2525, 64
  %2527 = icmp eq i32 %2526, 0
  br i1 %2527, label %2561, label %2528

; <label>:2528                                    ; preds = %2513
  %2529 = add i32 %32, 448
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = add i32 %2531, 0
  %2533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2535 = extractvalue %dx.types.ResRet.i32 %2534, 0
  %2536 = and i32 %2535, 131072
  %2537 = icmp eq i32 %2536, 0
  %2538 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2533, %dx.types.Handle %67, float %2026, float %2027, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2539 = extractvalue %dx.types.ResRet.f32 %2538, 0
  %2540 = extractvalue %dx.types.ResRet.f32 %2538, 1
  %2541 = extractvalue %dx.types.ResRet.f32 %2538, 2
  %2542 = fmul fast float %2539, %296
  %2543 = fmul fast float %2540, %299
  %2544 = fmul fast float %2541, %302
  br i1 %2537, label %2551, label %2545

; <label>:2545                                    ; preds = %2528
  %2546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2547 = extractvalue %dx.types.CBufRet.f32 %2546, 0
  %2548 = fmul fast float %2547, %2542
  %2549 = fmul fast float %2547, %2543
  %2550 = fmul fast float %2547, %2544
  br label %2551

; <label>:2551                                    ; preds = %2545, %2528
  %2552 = phi float [ %2548, %2545 ], [ %2542, %2528 ]
  %2553 = phi float [ %2549, %2545 ], [ %2543, %2528 ]
  %2554 = phi float [ %2550, %2545 ], [ %2544, %2528 ]
  %2555 = fmul fast float %2552, %2523
  %2556 = select i1 %206, float %2555, float %2552
  %2557 = call float @dx.op.dot3.f32(i32 55, float %2556, float %2553, float %2554, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2558 = select i1 %206, float 0.000000e+00, float %2552
  %2559 = select i1 %206, float %2557, float %2553
  %2560 = select i1 %206, float 0.000000e+00, float %2554
  br label %2561

; <label>:2561                                    ; preds = %2551, %2513
  %2562 = phi float [ %2558, %2551 ], [ 0.000000e+00, %2513 ]
  %2563 = phi float [ %2559, %2551 ], [ 0.000000e+00, %2513 ]
  %2564 = phi float [ %2560, %2551 ], [ 0.000000e+00, %2513 ]
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = and i32 %2566, 10240
  %2568 = icmp eq i32 %2567, 0
  br i1 %2568, label %2613, label %2569

; <label>:2569                                    ; preds = %2561
  %2570 = add i32 %32, 512
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2570, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = add i32 %2572, 0
  %2574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2575 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2574, %dx.types.Handle %68, float %2026, float %2027, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2576 = extractvalue %dx.types.ResRet.f32 %2575, 1
  %2577 = extractvalue %dx.types.ResRet.f32 %2575, 3
  %2578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2579 = extractvalue %dx.types.ResRet.i32 %2578, 0
  %2580 = and i32 %2579, 1048576
  %2581 = icmp ne i32 %2580, 0
  %2582 = and i32 %2579, 8192
  %2583 = icmp eq i32 %2582, 0
  br i1 %2583, label %2599, label %2584

; <label>:2584                                    ; preds = %2569
  %2585 = extractvalue %dx.types.ResRet.f32 %2575, 2
  %2586 = select i1 %2581, float %2585, float %2576
  %2587 = extractvalue %dx.types.ResRet.f32 %2575, 0
  %2588 = select i1 %2581, float %2587, float %2576
  %2589 = add i32 %32, 128
  %2590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2589, i32 undef)  ; BufferLoad(srv,index,wot)
  %2591 = extractvalue %dx.types.ResRet.i32 %2590, 0
  %2592 = lshr i32 %2591, 16
  %2593 = and i32 %2592, 255
  %2594 = uitofp i32 %2593 to float
  %2595 = fmul fast float %2594, 0x3F80101020000000
  %2596 = fmul fast float %2595, %2588
  %2597 = fmul fast float %2595, %2576
  %2598 = fmul fast float %2595, %2586
  br label %2599

; <label>:2599                                    ; preds = %2584, %2569
  %2600 = phi float [ %2596, %2584 ], [ 0.000000e+00, %2569 ]
  %2601 = phi float [ %2597, %2584 ], [ 0.000000e+00, %2569 ]
  %2602 = phi float [ %2598, %2584 ], [ 0.000000e+00, %2569 ]
  %2603 = and i32 %2579, 2048
  %2604 = icmp eq i32 %2603, 0
  br i1 %2604, label %2613, label %2605

; <label>:2605                                    ; preds = %2599
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = shl i32 %2607, 4
  %2609 = and i32 %2608, 32752
  %2610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2609)  ; LegacyF16ToF32(value)
  %2611 = fmul fast float %2610, %2577
  %2612 = call float @dx.op.binary.f32(i32 35, float %2611, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2613

; <label>:2613                                    ; preds = %2605, %2599, %2561
  %2614 = phi float [ %2600, %2605 ], [ %2600, %2599 ], [ 0.000000e+00, %2561 ]
  %2615 = phi float [ %2601, %2605 ], [ %2601, %2599 ], [ 0.000000e+00, %2561 ]
  %2616 = phi float [ %2602, %2605 ], [ %2602, %2599 ], [ 0.000000e+00, %2561 ]
  %2617 = phi float [ %2612, %2605 ], [ 0x3F70101020000000, %2599 ], [ 0x3F70101020000000, %2561 ]
  %2618 = add i32 %32, 128
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = and i32 %2620, 255
  %2622 = uitofp i32 %2621 to float
  %2623 = lshr i32 %2620, 8
  %2624 = and i32 %2623, 255
  %2625 = uitofp i32 %2624 to float
  %2626 = call float @dx.op.dot3.f32(i32 55, float %2434, float %2435, float %2436, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2627 = fmul fast float %2625, %2626
  %2628 = fadd fast float %2627, %2622
  %2629 = fmul fast float %2628, 0x3F70101020000000
  %2630 = call float @dx.op.unary.f32(i32 7, float %2629)  ; Saturate(value)
  br i1 %1918, label %2631, label %2639

; <label>:2631                                    ; preds = %2613
  %2632 = fsub fast float 1.000000e+00, %2214
  %2633 = fmul fast float %2632, %1903
  %2634 = fmul fast float %2632, %1904
  %2635 = fmul fast float %2632, %1905
  %2636 = fmul fast float %2632, %1906
  %2637 = fmul fast float %2632, %1907
  %2638 = fmul fast float %2632, %1908
  br label %2639

; <label>:2639                                    ; preds = %2631, %2613
  %2640 = phi float [ %2633, %2631 ], [ %1903, %2613 ]
  %2641 = phi float [ %2634, %2631 ], [ %1904, %2613 ]
  %2642 = phi float [ %2635, %2631 ], [ %1905, %2613 ]
  %2643 = phi float [ %2636, %2631 ], [ %1906, %2613 ]
  %2644 = phi float [ %2637, %2631 ], [ %1907, %2613 ]
  %2645 = phi float [ %2638, %2631 ], [ %1908, %2613 ]
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = and i32 %2647, 3
  %2649 = icmp eq i32 %2648, 3
  br i1 %2649, label %2728, label %2650

; <label>:2650                                    ; preds = %2639
  %2651 = and i32 %2647, 16
  %2652 = icmp ne i32 %2651, 0
  %2653 = select i1 %2652, float %2214, float 0.000000e+00
  %2654 = icmp eq i32 %2648, 0
  br i1 %2654, label %2655, label %2683

; <label>:2655                                    ; preds = %2650
  %2656 = and i32 %2647, 64
  %2657 = icmp ne i32 %2656, 0
  %2658 = select i1 %2657, float %2214, float 0.000000e+00
  %2659 = fsub fast float %2434, %2640
  %2660 = fsub fast float %2435, %2641
  %2661 = fsub fast float %2436, %2642
  %2662 = fmul fast float %2653, %2659
  %2663 = fmul fast float %2653, %2660
  %2664 = fmul fast float %2653, %2661
  %2665 = fadd fast float %2662, %2640
  %2666 = fadd fast float %2663, %2641
  %2667 = fadd fast float %2664, %2642
  %2668 = fsub fast float %2420, %1912
  %2669 = fmul fast float %2653, %2668
  %2670 = fadd fast float %2669, %1912
  %2671 = fsub fast float %2562, %2643
  %2672 = fsub fast float %2563, %2644
  %2673 = fsub fast float %2564, %2645
  %2674 = fmul fast float %2658, %2671
  %2675 = fmul fast float %2658, %2672
  %2676 = fmul fast float %2658, %2673
  %2677 = fadd fast float %2674, %2643
  %2678 = fadd fast float %2675, %2644
  %2679 = fadd fast float %2676, %2645
  %2680 = fsub fast float %2630, %1916
  %2681 = fmul fast float %2653, %2680
  %2682 = fadd fast float %2681, %1916
  br label %2728

; <label>:2683                                    ; preds = %2650
  %2684 = icmp eq i32 %2648, 1
  br i1 %2684, label %2685, label %2698

; <label>:2685                                    ; preds = %2683
  %2686 = fadd fast float %2434, -1.000000e+00
  %2687 = fadd fast float %2435, -1.000000e+00
  %2688 = fadd fast float %2436, -1.000000e+00
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
  %2701 = call float @dx.op.unary.f32(i32 24, float %2434)  ; Sqrt(value)
  %2702 = call float @dx.op.unary.f32(i32 24, float %2435)  ; Sqrt(value)
  %2703 = call float @dx.op.unary.f32(i32 24, float %2436)  ; Sqrt(value)
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
  %2735 = phi float [ %1912, %2639 ], [ %1912, %2700 ], [ %1912, %2698 ], [ %1912, %2685 ], [ %2670, %2655 ]
  %2736 = phi float [ %1916, %2639 ], [ %1916, %2700 ], [ %1916, %2698 ], [ %1916, %2685 ], [ %2682, %2655 ]
  %2737 = and i32 %2647, 12
  %2738 = icmp eq i32 %2737, 12
  br i1 %2738, label %2845, label %2739

; <label>:2739                                    ; preds = %2728
  %2740 = and i32 %2647, 2097184
  %2741 = icmp eq i32 %2740, 2097184
  %2742 = select i1 %2741, float %2214, float 0.000000e+00
  %2743 = and i32 %2647, 4194336
  %2744 = icmp eq i32 %2743, 4194336
  %2745 = select i1 %2744, float %2214, float 0.000000e+00
  %2746 = and i32 %2647, 8388640
  %2747 = icmp eq i32 %2746, 8388640
  %2748 = select i1 %2747, float %2214, float 0.000000e+00
  %2749 = and i32 %2647, 2048
  %2750 = icmp ne i32 %2749, 0
  %2751 = select i1 %2750, float %2214, float 0.000000e+00
  %2752 = and i32 %2647, 8192
  %2753 = icmp ne i32 %2752, 0
  %2754 = select i1 %2753, float %2214, float 0.000000e+00
  %2755 = icmp eq i32 %2737, 0
  br i1 %2755, label %2756, label %2781

; <label>:2756                                    ; preds = %2739
  %2757 = fsub fast float %2515, %1901
  %2758 = fsub fast float %2516, %1902
  %2759 = fmul fast float %2742, %2757
  %2760 = fmul fast float %2742, %2758
  %2761 = fadd fast float %2759, %1901
  %2762 = fadd fast float %2760, %1902
  %2763 = fsub fast float %2517, %1914
  %2764 = fmul fast float %2745, %2763
  %2765 = fadd fast float %2764, %1914
  %2766 = fsub fast float %2514, %1913
  %2767 = fmul fast float %2748, %2766
  %2768 = fadd fast float %2767, %1913
  %2769 = fsub fast float %2617, %1915
  %2770 = fmul fast float %2751, %2769
  %2771 = fadd fast float %2770, %1915
  %2772 = fsub fast float %2614, %1909
  %2773 = fsub fast float %2615, %1910
  %2774 = fsub fast float %2616, %1911
  %2775 = fmul fast float %2754, %2772
  %2776 = fmul fast float %2754, %2773
  %2777 = fmul fast float %2754, %2774
  %2778 = fadd fast float %2775, %1909
  %2779 = fadd fast float %2776, %1910
  %2780 = fadd fast float %2777, %1911
  br label %2845

; <label>:2781                                    ; preds = %2739
  %2782 = icmp eq i32 %2737, 4
  br i1 %2782, label %2783, label %2823

; <label>:2783                                    ; preds = %2781
  %2784 = fmul fast float %2742, %2515
  %2785 = fmul fast float %2742, %2516
  %2786 = fadd fast float %2784, %1901
  %2787 = fadd fast float %2785, %1902
  %2788 = call float @dx.op.binary.f32(i32 36, float %1914, float %2517)  ; FMin(a,b)
  %2789 = fsub fast float %2788, %1914
  %2790 = fmul fast float %2789, %2745
  %2791 = fadd fast float %2790, %1914
  %2792 = fadd fast float %2514, %1913
  %2793 = fmul fast float %2792, 0x3FF337FAE0000000
  %2794 = fmul fast float %1913, %1913
  %2795 = fmul fast float %2514, %2514
  %2796 = fadd fast float %2795, %2794
  %2797 = fmul fast float %2796, 0x3FE5152B00000000
  %2798 = fmul fast float %1913, 0xBFCC1F85E0000000
  %2799 = fmul fast float %2798, %2514
  %2800 = fadd fast float %2799, 0xBFE1363700000000
  %2801 = fadd fast float %2800, %2793
  %2802 = fsub fast float %2801, %2797
  %2803 = fmul fast float %2792, 0x3FBA6F0D00000000
  %2804 = fmul fast float %2796, 0x3FD0432880000000
  %2805 = fmul fast float %1913, 0xBFEF110800000000
  %2806 = fmul fast float %2805, %2514
  %2807 = fadd fast float %2806, 1.000000e+00
  %2808 = fsub fast float %2807, %2803
  %2809 = fadd fast float %2808, %2804
  %2810 = fdiv fast float %2802, %2809
  %2811 = call float @dx.op.unary.f32(i32 7, float %2810)  ; Saturate(value)
  %2812 = fsub fast float %2811, %1913
  %2813 = fmul fast float %2812, %2748
  %2814 = fadd fast float %2813, %1913
  %2815 = fmul fast float %2751, %2617
  %2816 = fadd fast float %2815, %1915
  %2817 = fmul fast float %2754, %2614
  %2818 = fmul fast float %2754, %2615
  %2819 = fmul fast float %2754, %2616
  %2820 = fadd fast float %2817, %1909
  %2821 = fadd fast float %2818, %1910
  %2822 = fadd fast float %2819, %1911
  br label %2845

; <label>:2823                                    ; preds = %2781
  %2824 = icmp eq i32 %2737, 8
  br i1 %2824, label %2825, label %2845

; <label>:2825                                    ; preds = %2823
  %2826 = fmul fast float %2742, %2515
  %2827 = fmul fast float %2742, %2516
  %2828 = fadd fast float %2826, %1901
  %2829 = fadd fast float %2827, %1902
  %2830 = call float @dx.op.binary.f32(i32 36, float %1914, float %2517)  ; FMin(a,b)
  %2831 = fsub fast float %2830, %1914
  %2832 = fmul fast float %2831, %2745
  %2833 = fadd fast float %2832, %1914
  %2834 = fsub fast float %2514, %1913
  %2835 = fmul fast float %2748, %2834
  %2836 = fadd fast float %2835, %1913
  %2837 = fmul fast float %2751, %2617
  %2838 = fadd fast float %2837, %1915
  %2839 = fmul fast float %2754, %2614
  %2840 = fmul fast float %2754, %2615
  %2841 = fmul fast float %2754, %2616
  %2842 = fadd fast float %2839, %1909
  %2843 = fadd fast float %2840, %1910
  %2844 = fadd fast float %2841, %1911
  br label %2845

; <label>:2845                                    ; preds = %2825, %2823, %2783, %2756, %2728, %2213, %1917, %1900
  %2846 = phi float [ %1901, %2728 ], [ %1901, %2213 ], [ %1901, %1900 ], [ %2828, %2825 ], [ %1901, %2823 ], [ %2786, %2783 ], [ %2761, %2756 ], [ %1901, %1917 ]
  %2847 = phi float [ %1902, %2728 ], [ %1902, %2213 ], [ %1902, %1900 ], [ %2829, %2825 ], [ %1902, %2823 ], [ %2787, %2783 ], [ %2762, %2756 ], [ %1902, %1917 ]
  %2848 = phi float [ %2729, %2728 ], [ %1903, %2213 ], [ %1903, %1900 ], [ %2729, %2825 ], [ %2729, %2823 ], [ %2729, %2783 ], [ %2729, %2756 ], [ %1903, %1917 ]
  %2849 = phi float [ %2730, %2728 ], [ %1904, %2213 ], [ %1904, %1900 ], [ %2730, %2825 ], [ %2730, %2823 ], [ %2730, %2783 ], [ %2730, %2756 ], [ %1904, %1917 ]
  %2850 = phi float [ %2731, %2728 ], [ %1905, %2213 ], [ %1905, %1900 ], [ %2731, %2825 ], [ %2731, %2823 ], [ %2731, %2783 ], [ %2731, %2756 ], [ %1905, %1917 ]
  %2851 = phi float [ %2732, %2728 ], [ %1906, %2213 ], [ %1906, %1900 ], [ %2732, %2825 ], [ %2732, %2823 ], [ %2732, %2783 ], [ %2732, %2756 ], [ %1906, %1917 ]
  %2852 = phi float [ %2733, %2728 ], [ %1907, %2213 ], [ %1907, %1900 ], [ %2733, %2825 ], [ %2733, %2823 ], [ %2733, %2783 ], [ %2733, %2756 ], [ %1907, %1917 ]
  %2853 = phi float [ %2734, %2728 ], [ %1908, %2213 ], [ %1908, %1900 ], [ %2734, %2825 ], [ %2734, %2823 ], [ %2734, %2783 ], [ %2734, %2756 ], [ %1908, %1917 ]
  %2854 = phi float [ %1909, %2728 ], [ %1909, %2213 ], [ %1909, %1900 ], [ %2842, %2825 ], [ %1909, %2823 ], [ %2820, %2783 ], [ %2778, %2756 ], [ %1909, %1917 ]
  %2855 = phi float [ %1910, %2728 ], [ %1910, %2213 ], [ %1910, %1900 ], [ %2843, %2825 ], [ %1910, %2823 ], [ %2821, %2783 ], [ %2779, %2756 ], [ %1910, %1917 ]
  %2856 = phi float [ %1911, %2728 ], [ %1911, %2213 ], [ %1911, %1900 ], [ %2844, %2825 ], [ %1911, %2823 ], [ %2822, %2783 ], [ %2780, %2756 ], [ %1911, %1917 ]
  %2857 = phi float [ %2735, %2728 ], [ %1912, %2213 ], [ %1912, %1900 ], [ %2735, %2825 ], [ %2735, %2823 ], [ %2735, %2783 ], [ %2735, %2756 ], [ %1912, %1917 ]
  %2858 = phi float [ %1913, %2728 ], [ %1913, %2213 ], [ %1913, %1900 ], [ %2836, %2825 ], [ %1913, %2823 ], [ %2814, %2783 ], [ %2768, %2756 ], [ %1913, %1917 ]
  %2859 = phi float [ %1914, %2728 ], [ %1914, %2213 ], [ %1914, %1900 ], [ %2833, %2825 ], [ %1914, %2823 ], [ %2791, %2783 ], [ %2765, %2756 ], [ %1914, %1917 ]
  %2860 = phi float [ %1915, %2728 ], [ %1915, %2213 ], [ %1915, %1900 ], [ %2838, %2825 ], [ %1915, %2823 ], [ %2816, %2783 ], [ %2771, %2756 ], [ %1915, %1917 ]
  %2861 = phi float [ %2736, %2728 ], [ %1916, %2213 ], [ %1916, %1900 ], [ %2736, %2825 ], [ %2736, %2823 ], [ %2736, %2783 ], [ %2736, %2756 ], [ %1916, %1917 ]
  br i1 %383, label %3790, label %2862

; <label>:2862                                    ; preds = %2845
  %2863 = icmp ult i32 %434, 4
  %2864 = add i32 %32, 72
  %2865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2866 = extractvalue %dx.types.ResRet.i32 %2865, 0
  %2867 = add i32 %32, 76
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = or i32 %2869, %2866
  %2871 = icmp eq i32 %2870, 0
  br i1 %2871, label %3790, label %2872

; <label>:2872                                    ; preds = %2862
  %2873 = and i32 %2866, 262144
  %2874 = icmp ne i32 %2873, 0
  %2875 = select i1 %2874, float %34, float 1.000000e+00
  %2876 = select i1 %2874, float %35, float 0.000000e+00
  %2877 = select i1 %2874, float %36, float 0.000000e+00
  %2878 = select i1 %2874, float %37, float 1.000000e+00
  %2879 = select i1 %2874, float %38, float %59
  %2880 = select i1 %2874, float %39, float %60
  %2881 = add i32 %32, 332
  %2882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2883 = extractvalue %dx.types.ResRet.i32 %2882, 0
  %2884 = lshr i32 %2883, 16
  %2885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2884)  ; LegacyF16ToF32(value)
  %2886 = fmul fast float %2885, 0x3F50624DE0000000
  %2887 = add i32 %32, 136
  %2888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2889 = extractvalue %dx.types.ResRet.i32 %2888, 0
  %2890 = lshr i32 %2889, 16
  %2891 = and i32 %2890, 255
  %2892 = lshr i32 %2889, 24
  %2893 = add i32 %32, 340
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = and i32 %2895, 65535
  %2897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2896)  ; LegacyF16ToF32(value)
  %2898 = lshr i32 %2895, 16
  %2899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2898)  ; LegacyF16ToF32(value)
  %2900 = add i32 %32, 80
  %2901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %2902 = extractvalue %dx.types.ResRet.i32 %2901, 0
  %2903 = lshr i32 %2902, 22
  %2904 = shl nuw nsw i32 %2903, 5
  %2905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2904)  ; LegacyF16ToF32(value)
  %2906 = shl i32 %2902, 4
  %2907 = and i32 %2906, 32752
  %2908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2907)  ; LegacyF16ToF32(value)
  %2909 = lshr i32 %2902, 7
  %2910 = and i32 %2909, 32752
  %2911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2910)  ; LegacyF16ToF32(value)
  %2912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2913 = extractvalue %dx.types.CBufRet.f32 %2912, 3
  %2914 = fmul fast float %2913, 1.000000e+03
  %2915 = fmul fast float %373, %2914
  %2916 = call float @dx.op.unary.f32(i32 22, float %2915)  ; Frc(value)
  %2917 = fadd fast float %2916, %363
  %2918 = fmul fast float %374, %2914
  %2919 = call float @dx.op.unary.f32(i32 22, float %2918)  ; Frc(value)
  %2920 = fadd fast float %2919, %365
  %2921 = fmul fast float %2886, %2914
  %2922 = call float @dx.op.unary.f32(i32 22, float %2921)  ; Frc(value)
  %2923 = fmul fast float %2922, 0x401921FB60000000
  %2924 = fadd fast float %2923, %2905
  %2925 = call float @dx.op.unary.f32(i32 13, float %2924)  ; Sin(value)
  %2926 = call float @dx.op.unary.f32(i32 12, float %2924)  ; Cos(value)
  %2927 = fsub fast float -0.000000e+00, %2925
  %2928 = fadd fast float %2879, -5.000000e-01
  %2929 = fadd fast float %2880, -5.000000e-01
  %2930 = fmul fast float %2897, %2928
  %2931 = fmul fast float %2899, %2929
  %2932 = fadd fast float %2930, 5.000000e-01
  %2933 = fadd fast float %2931, 5.000000e-01
  %2934 = fmul fast float %2908, %2932
  %2935 = fmul fast float %2911, %2933
  %2936 = fmul fast float %2926, %2934
  %2937 = call float @dx.op.tertiary.f32(i32 46, float %2927, float %2935, float %2936)  ; FMad(a,b,c)
  %2938 = fmul fast float %2925, %2934
  %2939 = call float @dx.op.tertiary.f32(i32 46, float %2926, float %2935, float %2938)  ; FMad(a,b,c)
  %2940 = fadd fast float %2917, %2937
  %2941 = fadd fast float %2920, %2939
  %2942 = icmp ugt i32 %2891, 1
  %2943 = icmp ugt i32 %2889, 33554431
  %2944 = or i1 %2943, %2942
  br i1 %2944, label %2945, label %2970

; <label>:2945                                    ; preds = %2872
  %2946 = add i32 %32, 276
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2946, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = lshr i32 %2948, 16
  %2950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2949)  ; LegacyF16ToF32(value)
  %2951 = fmul fast float %2913, %2950
  %2952 = call float @dx.op.unary.f32(i32 22, float %2951)  ; Frc(value)
  %2953 = mul nuw nsw i32 %2891, %2892
  %2954 = uitofp i32 %2953 to float
  %2955 = fmul fast float %2952, %2954
  %2956 = call float @dx.op.unary.f32(i32 27, float %2955)  ; Round_ni(value)
  %2957 = fptoui float %2956 to i32
  %2958 = urem i32 %2957, %2891
  %2959 = udiv i32 %2957, %2892
  %2960 = call float @dx.op.unary.f32(i32 22, float %2940)  ; Frc(value)
  %2961 = call float @dx.op.unary.f32(i32 22, float %2941)  ; Frc(value)
  %2962 = uitofp i32 %2958 to float
  %2963 = uitofp i32 %2959 to float
  %2964 = fadd fast float %2960, %2962
  %2965 = fadd fast float %2961, %2963
  %2966 = uitofp i32 %2891 to float
  %2967 = uitofp i32 %2892 to float
  %2968 = fdiv fast float %2964, %2966
  %2969 = fdiv fast float %2965, %2967
  br label %2970

; <label>:2970                                    ; preds = %2945, %2872
  %2971 = phi float [ %2968, %2945 ], [ %2940, %2872 ]
  %2972 = phi float [ %2969, %2945 ], [ %2941, %2872 ]
  %2973 = and i32 %2866, 16777216
  %2974 = icmp eq i32 %2973, 0
  br i1 %2974, label %3084, label %2975

; <label>:2975                                    ; preds = %2970
  %2976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2977 = extractvalue %dx.types.CBufRet.f32 %2976, 0
  %2978 = extractvalue %dx.types.CBufRet.f32 %2976, 1
  %2979 = extractvalue %dx.types.CBufRet.f32 %2976, 2
  %2980 = fadd fast float %2977, %130
  %2981 = fadd fast float %2978, %131
  %2982 = fadd fast float %2979, %132
  %2983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2984 = extractvalue %dx.types.CBufRet.f32 %2983, 0
  %2985 = call float @dx.op.unary.f32(i32 7, float %2984)  ; Saturate(value)
  %2986 = icmp eq i32 %33, 65535
  br i1 %2986, label %3081, label %2987

; <label>:2987                                    ; preds = %2975
  %2988 = lshr i32 %33, 1
  %2989 = shl i32 %2988, 2
  %2990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2989, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.i32 %2990, 0
  %2992 = and i32 %33, 1
  %2993 = icmp ne i32 %2992, 0
  %2994 = lshr i32 %2991, 16
  %2995 = and i32 %2991, 65535
  %2996 = select i1 %2993, i32 %2994, i32 %2995
  %2997 = icmp eq i32 %2996, 65535
  br i1 %2997, label %3077, label %2998

; <label>:2998                                    ; preds = %2987
  %2999 = mul nuw nsw i32 %2996, 40
  %3000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2999, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.f32 %3000, 0
  %3002 = extractvalue %dx.types.ResRet.f32 %3000, 1
  %3003 = extractvalue %dx.types.ResRet.f32 %3000, 2
  %3004 = add nuw nsw i32 %2999, 12
  %3005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3006 = extractvalue %dx.types.ResRet.f32 %3005, 0
  %3007 = extractvalue %dx.types.ResRet.f32 %3005, 1
  %3008 = extractvalue %dx.types.ResRet.f32 %3005, 2
  %3009 = add nuw nsw i32 %2999, 24
  %3010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %3009, i32 undef)  ; BufferLoad(srv,index,wot)
  %3011 = extractvalue %dx.types.ResRet.f32 %3010, 0
  %3012 = extractvalue %dx.types.ResRet.f32 %3010, 1
  %3013 = extractvalue %dx.types.ResRet.f32 %3010, 2
  %3014 = add nuw nsw i32 %2999, 36
  %3015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %3014, i32 undef)  ; BufferLoad(srv,index,wot)
  %3016 = extractvalue %dx.types.ResRet.f32 %3015, 0
  %3017 = fsub fast float %2980, %3001
  %3018 = fsub fast float %2981, %3002
  %3019 = fsub fast float %2982, %3003
  %3020 = fmul fast float %3016, %3017
  %3021 = fmul fast float %3016, %3018
  %3022 = fmul fast float %3016, %3019
  %3023 = call float @dx.op.unary.f32(i32 27, float %3020)  ; Round_ni(value)
  %3024 = call float @dx.op.unary.f32(i32 27, float %3021)  ; Round_ni(value)
  %3025 = call float @dx.op.unary.f32(i32 27, float %3022)  ; Round_ni(value)
  %3026 = fadd fast float %3023, 5.000000e-01
  %3027 = fadd fast float %3024, 5.000000e-01
  %3028 = fadd fast float %3025, 5.000000e-01
  %3029 = fmul fast float %3026, %3006
  %3030 = fmul fast float %3027, %3007
  %3031 = fmul fast float %3028, %3008
  %3032 = shl i32 %33, 2
  %3033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3032, i32 undef)  ; BufferLoad(srv,index,wot)
  %3034 = extractvalue %dx.types.ResRet.i32 %3033, 0
  %3035 = add i32 %3034, 0
  %3036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3035, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3037 = call float @dx.op.unary.f32(i32 22, float %3029)  ; Frc(value)
  %3038 = call float @dx.op.unary.f32(i32 22, float %3030)  ; Frc(value)
  %3039 = call float @dx.op.unary.f32(i32 22, float %3031)  ; Frc(value)
  %3040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3036, %dx.types.Handle %27, float %3037, float %3038, float %3039, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3041 = extractvalue %dx.types.ResRet.f32 %3040, 0
  %3042 = extractvalue %dx.types.ResRet.f32 %3040, 1
  %3043 = extractvalue %dx.types.ResRet.f32 %3040, 2
  %3044 = fmul fast float %3041, 1.023000e+03
  %3045 = fmul fast float %3042, 1.023000e+03
  %3046 = fmul fast float %3043, 1.023000e+03
  %3047 = fadd fast float %3044, 5.000000e-01
  %3048 = fadd fast float %3045, 5.000000e-01
  %3049 = fadd fast float %3046, 5.000000e-01
  %3050 = call float @dx.op.unary.f32(i32 27, float %3047)  ; Round_ni(value)
  %3051 = call float @dx.op.unary.f32(i32 27, float %3048)  ; Round_ni(value)
  %3052 = call float @dx.op.unary.f32(i32 27, float %3049)  ; Round_ni(value)
  %3053 = fsub fast float %3020, %3023
  %3054 = fsub fast float %3021, %3024
  %3055 = fsub fast float %3022, %3025
  %3056 = fmul fast float %3053, 7.500000e-01
  %3057 = fmul fast float %3054, 7.500000e-01
  %3058 = fmul fast float %3055, 7.500000e-01
  %3059 = fadd fast float %3023, 1.250000e-01
  %3060 = fadd fast float %3059, %3056
  %3061 = fadd fast float %3060, %3050
  %3062 = fadd fast float %3024, 1.250000e-01
  %3063 = fadd fast float %3062, %3057
  %3064 = fadd fast float %3063, %3051
  %3065 = fadd fast float %3025, 1.250000e-01
  %3066 = fadd fast float %3065, %3058
  %3067 = fadd fast float %3066, %3052
  %3068 = fmul fast float %3061, %3011
  %3069 = fmul fast float %3064, %3012
  %3070 = fmul fast float %3067, %3013
  %3071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3032, i32 undef)  ; BufferLoad(srv,index,wot)
  %3072 = extractvalue %dx.types.ResRet.i32 %3071, 0
  %3073 = add i32 %3072, 0
  %3074 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3073, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3074, %dx.types.Handle %25, float %3068, float %3069, float %3070, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3076 = extractvalue %dx.types.ResRet.f32 %3075, 0
  br label %3077

; <label>:3077                                    ; preds = %2998, %2987
  %3078 = phi float [ %3076, %2998 ], [ -1.000000e+00, %2987 ]
  %3079 = fadd fast float %3078, %2985
  %3080 = call float @dx.op.unary.f32(i32 7, float %3079)  ; Saturate(value)
  br label %3081

; <label>:3081                                    ; preds = %3077, %2975
  %3082 = phi float [ %3080, %3077 ], [ %2985, %2975 ]
  %3083 = fmul fast float %3082, %429
  br label %3084

; <label>:3084                                    ; preds = %3081, %2970
  %3085 = phi float [ %3083, %3081 ], [ %429, %2970 ]
  %3086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3087 = extractvalue %dx.types.ResRet.i32 %3086, 0
  %3088 = and i32 %3087, 256
  %3089 = icmp eq i32 %3088, 0
  br i1 %3089, label %3136, label %3090

; <label>:3090                                    ; preds = %3084
  %3091 = add i32 %32, 484
  %3092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3091, i32 undef)  ; BufferLoad(srv,index,wot)
  %3093 = extractvalue %dx.types.ResRet.i32 %3092, 0
  %3094 = add i32 %3093, 0
  %3095 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3094, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3096 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3095, %dx.types.Handle %68, float %2971, float %2972, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3097 = extractvalue %dx.types.ResRet.f32 %3096, 0
  %3098 = add i32 %32, 148
  %3099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3098, i32 undef)  ; BufferLoad(srv,index,wot)
  %3100 = extractvalue %dx.types.ResRet.i32 %3099, 0
  %3101 = shl i32 %3100, 4
  %3102 = and i32 %3101, 32752
  %3103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3102)  ; LegacyF16ToF32(value)
  %3104 = lshr i32 %3100, 7
  %3105 = and i32 %3104, 32752
  %3106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3105)  ; LegacyF16ToF32(value)
  %3107 = fsub fast float 1.000000e+00, %3085
  %3108 = call float @dx.op.binary.f32(i32 35, float %3107, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3109 = bitcast float %3085 to i32
  %3110 = sitofp i32 %3109 to float
  %3111 = fadd fast float %3110, 0xC1CFBF8940000000
  %3112 = fmul fast float %3106, %3111
  %3113 = fadd fast float %3112, 0x41CFBF8940000000
  %3114 = fptosi float %3113 to i32
  %3115 = bitcast i32 %3114 to float
  %3116 = bitcast float %3108 to i32
  %3117 = sitofp i32 %3116 to float
  %3118 = fadd fast float %3117, 0xC1CFBF8940000000
  %3119 = fmul fast float %3118, %3106
  %3120 = fadd fast float %3119, 0x41CFBF8940000000
  %3121 = fptosi float %3120 to i32
  %3122 = bitcast i32 %3121 to float
  %3123 = fmul fast float %3115, %3103
  %3124 = fmul fast float %3122, %3103
  %3125 = fsub fast float %3108, %3123
  %3126 = fadd fast float %3124, %3108
  %3127 = call float @dx.op.unary.f32(i32 7, float %3125)  ; Saturate(value)
  %3128 = call float @dx.op.unary.f32(i32 7, float %3126)  ; Saturate(value)
  %3129 = fsub fast float %3097, %3127
  %3130 = fsub fast float %3128, %3127
  %3131 = bitcast float %3130 to i32
  %3132 = sub nsw i32 2129859010, %3131
  %3133 = bitcast i32 %3132 to float
  %3134 = fmul fast float %3133, %3129
  %3135 = call float @dx.op.unary.f32(i32 7, float %3134)  ; Saturate(value)
  br label %3136

; <label>:3136                                    ; preds = %3090, %3084
  %3137 = phi float [ %3135, %3090 ], [ %3085, %3084 ]
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = and i32 %3139, 128
  %3141 = icmp eq i32 %3140, 0
  br i1 %3141, label %3158, label %3142

; <label>:3142                                    ; preds = %3136
  %3143 = add i32 %32, 468
  %3144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3143, i32 undef)  ; BufferLoad(srv,index,wot)
  %3145 = extractvalue %dx.types.ResRet.i32 %3144, 0
  %3146 = add i32 %3145, 0
  %3147 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3146, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3148 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3147, %dx.types.Handle %68, float %2971, float %2972, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3149 = extractvalue %dx.types.ResRet.f32 %3148, 0
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = and i32 %3151, 524288
  %3153 = icmp ne i32 %3152, 0
  %3154 = fcmp fast ogt float %3149, 0x3FE0101020000000
  %3155 = select i1 %3154, float 1.000000e+00, float 0.000000e+00
  %3156 = select i1 %3153, float %3155, float %3149
  %3157 = fmul fast float %3156, %3137
  br label %3158

; <label>:3158                                    ; preds = %3142, %3136
  %3159 = phi float [ %3157, %3142 ], [ %3137, %3136 ]
  %3160 = fcmp fast ult float %3159, 0x3F70101020000000
  br i1 %3160, label %3790, label %3161

; <label>:3161                                    ; preds = %3158
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = and i32 %3163, 16
  %3165 = icmp eq i32 %3164, 0
  br i1 %3165, label %3364, label %3166

; <label>:3166                                    ; preds = %3161
  %3167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2887, i32 undef)  ; BufferLoad(srv,index,wot)
  %3168 = extractvalue %dx.types.ResRet.i32 %3167, 0
  %3169 = add i32 %32, 420
  %3170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3169, i32 undef)  ; BufferLoad(srv,index,wot)
  %3171 = extractvalue %dx.types.ResRet.i32 %3170, 0
  %3172 = add i32 %3171, 0
  %3173 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3172, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3174 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3173, %dx.types.Handle %67, float %2971, float %2972, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3175 = extractvalue %dx.types.ResRet.f32 %3174, 0
  %3176 = extractvalue %dx.types.ResRet.f32 %3174, 1
  %3177 = extractvalue %dx.types.ResRet.f32 %3174, 2
  %3178 = extractvalue %dx.types.ResRet.f32 %3174, 3
  %3179 = and i32 %3168, 255
  %3180 = uitofp i32 %3179 to float
  %3181 = lshr i32 %3168, 8
  %3182 = and i32 %3181, 255
  %3183 = uitofp i32 %3182 to float
  %3184 = fmul fast float %3178, %3180
  %3185 = fadd fast float %3184, %3183
  %3186 = fmul fast float %3185, 0x3F70101000000000
  %3187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3188 = extractvalue %dx.types.ResRet.i32 %3187, 0
  %3189 = and i32 %3188, 512
  %3190 = icmp eq i32 %3189, 0
  br i1 %3190, label %3199, label %3191

; <label>:3191                                    ; preds = %3166
  %3192 = add i32 %32, 500
  %3193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3192, i32 undef)  ; BufferLoad(srv,index,wot)
  %3194 = extractvalue %dx.types.ResRet.i32 %3193, 0
  %3195 = add i32 %3194, 0
  %3196 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3195, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3197 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3196, %dx.types.Handle %68, float %2971, float %2972, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3198 = extractvalue %dx.types.ResRet.f32 %3197, 0
  br label %3199

; <label>:3199                                    ; preds = %3191, %3166
  %3200 = phi float [ %3198, %3191 ], [ 1.000000e+00, %3166 ]
  %3201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3202 = extractvalue %dx.types.ResRet.i32 %3201, 0
  %3203 = and i32 %3202, 33554432
  %3204 = icmp eq i32 %3203, 0
  br i1 %3204, label %3311, label %3205

; <label>:3205                                    ; preds = %3199
  %3206 = add i32 %32, 272
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3206, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = and i32 %3208, 65535
  %3210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3209)  ; LegacyF16ToF32(value)
  %3211 = lshr i32 %3208, 16
  %3212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3211)  ; LegacyF16ToF32(value)
  %3213 = add i32 %32, 276
  %3214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3213, i32 undef)  ; BufferLoad(srv,index,wot)
  %3215 = extractvalue %dx.types.ResRet.i32 %3214, 0
  %3216 = and i32 %3215, 65535
  %3217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3216)  ; LegacyF16ToF32(value)
  %3218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %3219 = extractvalue %dx.types.ResRet.i32 %3218, 0
  %3220 = lshr i32 %3219, 24
  %3221 = uitofp i32 %3220 to float
  %3222 = fmul fast float %3221, 0x3F70101020000000
  %3223 = and i32 %3219, 255
  %3224 = uitofp i32 %3223 to float
  %3225 = fmul fast float %3224, 0x3F70101020000000
  %3226 = lshr i32 %3219, 8
  %3227 = and i32 %3226, 255
  %3228 = uitofp i32 %3227 to float
  %3229 = fmul fast float %3228, 0x3F70101020000000
  %3230 = lshr i32 %3219, 16
  %3231 = and i32 %3230, 255
  %3232 = uitofp i32 %3231 to float
  %3233 = fmul fast float %3232, 0x3F70101020000000
  %3234 = add i32 %32, 268
  %3235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3234, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.i32 %3235, 0
  %3237 = lshr i32 %3236, 24
  %3238 = uitofp i32 %3237 to float
  %3239 = fmul fast float %3238, 0x3F70101020000000
  %3240 = and i32 %3236, 255
  %3241 = uitofp i32 %3240 to float
  %3242 = fmul fast float %3241, 0x3F70101020000000
  %3243 = lshr i32 %3236, 8
  %3244 = and i32 %3243, 255
  %3245 = uitofp i32 %3244 to float
  %3246 = fmul fast float %3245, 0x3F70101020000000
  %3247 = lshr i32 %3236, 16
  %3248 = and i32 %3247, 255
  %3249 = uitofp i32 %3248 to float
  %3250 = fmul fast float %3249, 0x3F70101020000000
  %3251 = bitcast float %3175 to i32
  %3252 = ashr i32 %3251, 1
  %3253 = sub nsw i32 1597463174, %3252
  %3254 = bitcast i32 %3253 to float
  %3255 = fmul fast float %3175, 5.000000e-01
  %3256 = fmul fast float %3254, %3254
  %3257 = fmul fast float %3256, %3255
  %3258 = fsub fast float 1.500000e+00, %3257
  %3259 = fmul fast float %3254, %3175
  %3260 = fmul fast float %3259, %3258
  %3261 = bitcast float %3176 to i32
  %3262 = ashr i32 %3261, 1
  %3263 = sub nsw i32 1597463174, %3262
  %3264 = bitcast i32 %3263 to float
  %3265 = fmul fast float %3176, 5.000000e-01
  %3266 = fmul fast float %3264, %3264
  %3267 = fmul fast float %3266, %3265
  %3268 = fsub fast float 1.500000e+00, %3267
  %3269 = fmul fast float %3264, %3176
  %3270 = fmul fast float %3269, %3268
  %3271 = bitcast float %3177 to i32
  %3272 = ashr i32 %3271, 1
  %3273 = sub nsw i32 1597463174, %3272
  %3274 = bitcast i32 %3273 to float
  %3275 = fmul fast float %3177, 5.000000e-01
  %3276 = fmul fast float %3274, %3274
  %3277 = fmul fast float %3276, %3275
  %3278 = fsub fast float 1.500000e+00, %3277
  %3279 = fmul fast float %3274, %3177
  %3280 = fmul fast float %3279, %3278
  %3281 = fsub fast float %3260, %3242
  %3282 = fsub fast float %3270, %3246
  %3283 = fsub fast float %3280, %3250
  %3284 = fmul fast float %3281, %3210
  %3285 = fmul fast float %3282, %3212
  %3286 = fmul fast float %3283, %3217
  %3287 = fadd fast float %3284, %3225
  %3288 = fadd fast float %3285, %3229
  %3289 = fadd fast float %3286, %3233
  %3290 = call float @dx.op.unary.f32(i32 7, float %3287)  ; Saturate(value)
  %3291 = call float @dx.op.unary.f32(i32 7, float %3288)  ; Saturate(value)
  %3292 = call float @dx.op.unary.f32(i32 7, float %3289)  ; Saturate(value)
  %3293 = fmul fast float %3290, %3290
  %3294 = fmul fast float %3291, %3291
  %3295 = fmul fast float %3292, %3292
  %3296 = fsub fast float %3293, %3175
  %3297 = fsub fast float %3294, %3176
  %3298 = fsub fast float %3295, %3177
  %3299 = fmul fast float %3296, %3200
  %3300 = fmul fast float %3297, %3200
  %3301 = fmul fast float %3298, %3200
  %3302 = fadd fast float %3299, %3175
  %3303 = fadd fast float %3300, %3176
  %3304 = fadd fast float %3301, %3177
  %3305 = fadd fast float %3222, %3186
  %3306 = fsub fast float %3305, %3239
  %3307 = call float @dx.op.unary.f32(i32 7, float %3306)  ; Saturate(value)
  %3308 = fsub fast float %3307, %3186
  %3309 = fmul fast float %3308, %3200
  %3310 = fadd fast float %3309, %3186
  br label %3364

; <label>:3311                                    ; preds = %3199
  %3312 = and i32 %3202, 134217728
  %3313 = icmp eq i32 %3312, 0
  br i1 %3313, label %3348, label %3314

; <label>:3314                                    ; preds = %3311
  %3315 = call float @dx.op.unary.f32(i32 24, float %350)  ; Sqrt(value)
  %3316 = call float @dx.op.unary.f32(i32 24, float %354)  ; Sqrt(value)
  %3317 = call float @dx.op.unary.f32(i32 24, float %358)  ; Sqrt(value)
  %3318 = fadd fast float %3315, -5.000000e-01
  %3319 = fadd fast float %3316, -5.000000e-01
  %3320 = fadd fast float %3317, -5.000000e-01
  %3321 = fmul fast float %3318, %3200
  %3322 = fmul fast float %3319, %3200
  %3323 = fmul fast float %3320, %3200
  %3324 = fadd fast float %3321, 5.000000e-01
  %3325 = fadd fast float %3322, 5.000000e-01
  %3326 = fadd fast float %3323, 5.000000e-01
  %3327 = call float @dx.op.unary.f32(i32 24, float %3175)  ; Sqrt(value)
  %3328 = call float @dx.op.unary.f32(i32 24, float %3176)  ; Sqrt(value)
  %3329 = call float @dx.op.unary.f32(i32 24, float %3177)  ; Sqrt(value)
  %3330 = fmul fast float %3324, 2.000000e+00
  %3331 = fsub fast float 1.000000e+00, %3330
  %3332 = fmul fast float %3331, %3327
  %3333 = fadd fast float %3332, %3330
  %3334 = fmul fast float %3333, %3327
  %3335 = fmul fast float %3325, 2.000000e+00
  %3336 = fsub fast float 1.000000e+00, %3335
  %3337 = fmul fast float %3336, %3328
  %3338 = fadd fast float %3337, %3335
  %3339 = fmul fast float %3338, %3328
  %3340 = fmul fast float %3326, 2.000000e+00
  %3341 = fsub fast float 1.000000e+00, %3340
  %3342 = fmul fast float %3341, %3329
  %3343 = fadd fast float %3342, %3340
  %3344 = fmul fast float %3343, %3329
  %3345 = fmul fast float %3334, %3334
  %3346 = fmul fast float %3339, %3339
  %3347 = fmul fast float %3344, %3344
  br label %3364

; <label>:3348                                    ; preds = %3311
  %3349 = fmul fast float %350, %350
  %3350 = fmul fast float %354, %354
  %3351 = fmul fast float %358, %358
  %3352 = fadd fast float %3349, -1.000000e+00
  %3353 = fadd fast float %3350, -1.000000e+00
  %3354 = fadd fast float %3351, -1.000000e+00
  %3355 = fmul fast float %3200, %3352
  %3356 = fmul fast float %3200, %3353
  %3357 = fmul fast float %3200, %3354
  %3358 = fadd fast float %3355, 1.000000e+00
  %3359 = fadd fast float %3356, 1.000000e+00
  %3360 = fadd fast float %3357, 1.000000e+00
  %3361 = fmul fast float %3358, %3175
  %3362 = fmul fast float %3359, %3176
  %3363 = fmul fast float %3360, %3177
  br label %3364

; <label>:3364                                    ; preds = %3348, %3314, %3205, %3161
  %3365 = phi float [ %3310, %3205 ], [ %3186, %3314 ], [ %3186, %3348 ], [ 0x3FA23C0BE0000000, %3161 ]
  %3366 = phi float [ %3302, %3205 ], [ %3345, %3314 ], [ %3361, %3348 ], [ 1.000000e+00, %3161 ]
  %3367 = phi float [ %3303, %3205 ], [ %3346, %3314 ], [ %3362, %3348 ], [ 1.000000e+00, %3161 ]
  %3368 = phi float [ %3304, %3205 ], [ %3347, %3314 ], [ %3363, %3348 ], [ 1.000000e+00, %3161 ]
  %3369 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3370 = extractvalue %dx.types.CBufRet.i32 %3369, 1
  %3371 = and i32 %3370, 1
  %3372 = icmp ne i32 %3371, 0
  %3373 = add i32 %32, 356
  %3374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3375 = extractvalue %dx.types.ResRet.i32 %3374, 0
  %3376 = and i32 %3375, 32
  %3377 = icmp ne i32 %3376, 0
  %3378 = and i1 %3372, %3377
  %3379 = select i1 %3378, float 1.000000e+00, float %3366
  %3380 = select i1 %3378, float 0x3FD3333340000000, float %3367
  %3381 = select i1 %3378, float 0x3FD3333340000000, float %3368
  %3382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3383 = extractvalue %dx.types.ResRet.i32 %3382, 0
  %3384 = and i32 %3383, 32
  %3385 = icmp eq i32 %3384, 0
  br i1 %3385, label %3458, label %3386

; <label>:3386                                    ; preds = %3364
  %3387 = add i32 %32, 140
  %3388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3389 = extractvalue %dx.types.ResRet.i32 %3388, 0
  %3390 = add i32 %32, 436
  %3391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3390, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.i32 %3391, 0
  %3393 = add i32 %3392, 0
  %3394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3393, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3395 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3394, %dx.types.Handle %67, float %2971, float %2972, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3396 = extractvalue %dx.types.ResRet.f32 %3395, 0
  %3397 = extractvalue %dx.types.ResRet.f32 %3395, 1
  %3398 = extractvalue %dx.types.ResRet.f32 %3395, 2
  %3399 = extractvalue %dx.types.ResRet.f32 %3395, 3
  %3400 = and i32 %3389, 255
  %3401 = uitofp i32 %3400 to float
  %3402 = lshr i32 %3389, 8
  %3403 = and i32 %3402, 255
  %3404 = uitofp i32 %3403 to float
  %3405 = lshr i32 %3389, 16
  %3406 = and i32 %3405, 255
  %3407 = uitofp i32 %3406 to float
  %3408 = fmul fast float %3407, 0x3F70101000000000
  %3409 = fmul fast float %3396, %3401
  %3410 = fadd fast float %3409, %3404
  %3411 = fmul fast float %3410, 0x3F70101000000000
  %3412 = fadd fast float %3397, -5.000000e-01
  %3413 = fadd fast float %3399, -5.000000e-01
  %3414 = fmul fast float %3412, %3408
  %3415 = fmul fast float %3413, %3408
  %3416 = fadd fast float %3414, 5.000000e-01
  %3417 = fadd fast float %3415, 5.000000e-01
  %3418 = fmul fast float %3416, 2.000000e+00
  %3419 = fadd fast float %3418, -1.000000e+00
  %3420 = fmul fast float %3417, 2.000000e+00
  %3421 = fadd fast float %3420, -1.000000e+00
  %3422 = fadd fast float %3419, %3421
  %3423 = fmul fast float %3422, 5.000000e-01
  %3424 = fsub fast float %3419, %3421
  %3425 = fmul fast float %3424, 5.000000e-01
  %3426 = call float @dx.op.unary.f32(i32 6, float %3423)  ; FAbs(value)
  %3427 = fsub fast float 1.000000e+00, %3426
  %3428 = call float @dx.op.unary.f32(i32 6, float %3425)  ; FAbs(value)
  %3429 = fsub fast float %3427, %3428
  %3430 = call float @dx.op.dot3.f32(i32 55, float %3423, float %3425, float %3429, float %3423, float %3425, float %3429)  ; Dot3(ax,ay,az,bx,by,bz)
  %3431 = call float @dx.op.unary.f32(i32 25, float %3430)  ; Rsqrt(value)
  %3432 = fmul fast float %3423, %3431
  %3433 = fmul fast float %3425, %3431
  %3434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3435 = extractvalue %dx.types.ResRet.i32 %3434, 0
  %3436 = and i32 %3435, 67108864
  %3437 = icmp eq i32 %3436, 0
  br i1 %3437, label %3454, label %3438

; <label>:3438                                    ; preds = %3386
  %3439 = add i32 %32, 328
  %3440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.i32 %3440, 0
  %3442 = and i32 %3441, 65535
  %3443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3442)  ; LegacyF16ToF32(value)
  %3444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2881, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.i32 %3444, 0
  %3446 = and i32 %3445, 65535
  %3447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3446)  ; LegacyF16ToF32(value)
  %3448 = lshr i32 %3441, 16
  %3449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3448)  ; LegacyF16ToF32(value)
  %3450 = fsub fast float %3411, %3449
  %3451 = fmul fast float %3450, %3443
  %3452 = fadd fast float %3451, %3447
  %3453 = call float @dx.op.unary.f32(i32 7, float %3452)  ; Saturate(value)
  br label %3454

; <label>:3454                                    ; preds = %3438, %3386
  %3455 = phi float [ %3453, %3438 ], [ %3411, %3386 ]
  %3456 = call float @dx.op.dot2.f32(i32 54, float %3432, float %3433, float %2875, float %2876)  ; Dot2(ax,ay,bx,by)
  %3457 = call float @dx.op.dot2.f32(i32 54, float %3432, float %3433, float %2877, float %2878)  ; Dot2(ax,ay,bx,by)
  br label %3458

; <label>:3458                                    ; preds = %3454, %3364
  %3459 = phi float [ %3455, %3454 ], [ 0x3FD6666660000000, %3364 ]
  %3460 = phi float [ %3456, %3454 ], [ 0.000000e+00, %3364 ]
  %3461 = phi float [ %3457, %3454 ], [ 0.000000e+00, %3364 ]
  %3462 = phi float [ %3398, %3454 ], [ 1.000000e+00, %3364 ]
  %3463 = add i32 %32, 208
  %3464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3463, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.i32 %3464, 0
  %3466 = lshr i32 %3465, 22
  %3467 = shl nuw nsw i32 %3466, 5
  %3468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3467)  ; LegacyF16ToF32(value)
  %3469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.i32 %3469, 0
  %3471 = and i32 %3470, 64
  %3472 = icmp eq i32 %3471, 0
  br i1 %3472, label %3506, label %3473

; <label>:3473                                    ; preds = %3458
  %3474 = add i32 %32, 452
  %3475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3474, i32 undef)  ; BufferLoad(srv,index,wot)
  %3476 = extractvalue %dx.types.ResRet.i32 %3475, 0
  %3477 = add i32 %3476, 0
  %3478 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3477, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.i32 %3479, 0
  %3481 = and i32 %3480, 131072
  %3482 = icmp eq i32 %3481, 0
  %3483 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3478, %dx.types.Handle %67, float %2971, float %2972, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3484 = extractvalue %dx.types.ResRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.ResRet.f32 %3483, 1
  %3486 = extractvalue %dx.types.ResRet.f32 %3483, 2
  %3487 = fmul fast float %3484, %338
  %3488 = fmul fast float %3485, %341
  %3489 = fmul fast float %3486, %344
  br i1 %3482, label %3496, label %3490

; <label>:3490                                    ; preds = %3473
  %3491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3492 = extractvalue %dx.types.CBufRet.f32 %3491, 0
  %3493 = fmul fast float %3492, %3487
  %3494 = fmul fast float %3492, %3488
  %3495 = fmul fast float %3492, %3489
  br label %3496

; <label>:3496                                    ; preds = %3490, %3473
  %3497 = phi float [ %3493, %3490 ], [ %3487, %3473 ]
  %3498 = phi float [ %3494, %3490 ], [ %3488, %3473 ]
  %3499 = phi float [ %3495, %3490 ], [ %3489, %3473 ]
  %3500 = fmul fast float %3497, %3468
  %3501 = select i1 %206, float %3500, float %3497
  %3502 = call float @dx.op.dot3.f32(i32 55, float %3501, float %3498, float %3499, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3503 = select i1 %206, float 0.000000e+00, float %3497
  %3504 = select i1 %206, float %3502, float %3498
  %3505 = select i1 %206, float 0.000000e+00, float %3499
  br label %3506

; <label>:3506                                    ; preds = %3496, %3458
  %3507 = phi float [ %3503, %3496 ], [ 0.000000e+00, %3458 ]
  %3508 = phi float [ %3504, %3496 ], [ 0.000000e+00, %3458 ]
  %3509 = phi float [ %3505, %3496 ], [ 0.000000e+00, %3458 ]
  %3510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3511 = extractvalue %dx.types.ResRet.i32 %3510, 0
  %3512 = and i32 %3511, 10240
  %3513 = icmp eq i32 %3512, 0
  br i1 %3513, label %3558, label %3514

; <label>:3514                                    ; preds = %3506
  %3515 = add i32 %32, 516
  %3516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3515, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.i32 %3516, 0
  %3518 = add i32 %3517, 0
  %3519 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3518, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3520 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3519, %dx.types.Handle %68, float %2971, float %2972, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3521 = extractvalue %dx.types.ResRet.f32 %3520, 1
  %3522 = extractvalue %dx.types.ResRet.f32 %3520, 3
  %3523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3524 = extractvalue %dx.types.ResRet.i32 %3523, 0
  %3525 = and i32 %3524, 1048576
  %3526 = icmp ne i32 %3525, 0
  %3527 = and i32 %3524, 8192
  %3528 = icmp eq i32 %3527, 0
  br i1 %3528, label %3544, label %3529

; <label>:3529                                    ; preds = %3514
  %3530 = extractvalue %dx.types.ResRet.f32 %3520, 2
  %3531 = select i1 %3526, float %3530, float %3521
  %3532 = extractvalue %dx.types.ResRet.f32 %3520, 0
  %3533 = select i1 %3526, float %3532, float %3521
  %3534 = add i32 %32, 144
  %3535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.i32 %3535, 0
  %3537 = lshr i32 %3536, 16
  %3538 = and i32 %3537, 255
  %3539 = uitofp i32 %3538 to float
  %3540 = fmul fast float %3539, 0x3F80101020000000
  %3541 = fmul fast float %3540, %3533
  %3542 = fmul fast float %3540, %3521
  %3543 = fmul fast float %3540, %3531
  br label %3544

; <label>:3544                                    ; preds = %3529, %3514
  %3545 = phi float [ %3541, %3529 ], [ 0.000000e+00, %3514 ]
  %3546 = phi float [ %3542, %3529 ], [ 0.000000e+00, %3514 ]
  %3547 = phi float [ %3543, %3529 ], [ 0.000000e+00, %3514 ]
  %3548 = and i32 %3524, 2048
  %3549 = icmp eq i32 %3548, 0
  br i1 %3549, label %3558, label %3550

; <label>:3550                                    ; preds = %3544
  %3551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3463, i32 undef)  ; BufferLoad(srv,index,wot)
  %3552 = extractvalue %dx.types.ResRet.i32 %3551, 0
  %3553 = shl i32 %3552, 4
  %3554 = and i32 %3553, 32752
  %3555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3554)  ; LegacyF16ToF32(value)
  %3556 = fmul fast float %3555, %3522
  %3557 = call float @dx.op.binary.f32(i32 35, float %3556, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3558

; <label>:3558                                    ; preds = %3550, %3544, %3506
  %3559 = phi float [ %3545, %3550 ], [ %3545, %3544 ], [ 0.000000e+00, %3506 ]
  %3560 = phi float [ %3546, %3550 ], [ %3546, %3544 ], [ 0.000000e+00, %3506 ]
  %3561 = phi float [ %3547, %3550 ], [ %3547, %3544 ], [ 0.000000e+00, %3506 ]
  %3562 = phi float [ %3557, %3550 ], [ 0x3F70101020000000, %3544 ], [ 0x3F70101020000000, %3506 ]
  %3563 = add i32 %32, 144
  %3564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3563, i32 undef)  ; BufferLoad(srv,index,wot)
  %3565 = extractvalue %dx.types.ResRet.i32 %3564, 0
  %3566 = and i32 %3565, 255
  %3567 = uitofp i32 %3566 to float
  %3568 = lshr i32 %3565, 8
  %3569 = and i32 %3568, 255
  %3570 = uitofp i32 %3569 to float
  %3571 = call float @dx.op.dot3.f32(i32 55, float %3379, float %3380, float %3381, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3572 = fmul fast float %3570, %3571
  %3573 = fadd fast float %3572, %3567
  %3574 = fmul fast float %3573, 0x3F70101020000000
  %3575 = call float @dx.op.unary.f32(i32 7, float %3574)  ; Saturate(value)
  br i1 %2863, label %3576, label %3584

; <label>:3576                                    ; preds = %3558
  %3577 = fsub fast float 1.000000e+00, %3159
  %3578 = fmul fast float %3577, %2848
  %3579 = fmul fast float %3577, %2849
  %3580 = fmul fast float %3577, %2850
  %3581 = fmul fast float %3577, %2851
  %3582 = fmul fast float %3577, %2852
  %3583 = fmul fast float %3577, %2853
  br label %3584

; <label>:3584                                    ; preds = %3576, %3558
  %3585 = phi float [ %3578, %3576 ], [ %2848, %3558 ]
  %3586 = phi float [ %3579, %3576 ], [ %2849, %3558 ]
  %3587 = phi float [ %3580, %3576 ], [ %2850, %3558 ]
  %3588 = phi float [ %3581, %3576 ], [ %2851, %3558 ]
  %3589 = phi float [ %3582, %3576 ], [ %2852, %3558 ]
  %3590 = phi float [ %3583, %3576 ], [ %2853, %3558 ]
  %3591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.i32 %3591, 0
  %3593 = and i32 %3592, 3
  %3594 = icmp eq i32 %3593, 3
  br i1 %3594, label %3673, label %3595

; <label>:3595                                    ; preds = %3584
  %3596 = and i32 %3592, 16
  %3597 = icmp ne i32 %3596, 0
  %3598 = select i1 %3597, float %3159, float 0.000000e+00
  %3599 = icmp eq i32 %3593, 0
  br i1 %3599, label %3600, label %3628

; <label>:3600                                    ; preds = %3595
  %3601 = and i32 %3592, 64
  %3602 = icmp ne i32 %3601, 0
  %3603 = select i1 %3602, float %3159, float 0.000000e+00
  %3604 = fsub fast float %3379, %3585
  %3605 = fsub fast float %3380, %3586
  %3606 = fsub fast float %3381, %3587
  %3607 = fmul fast float %3598, %3604
  %3608 = fmul fast float %3598, %3605
  %3609 = fmul fast float %3598, %3606
  %3610 = fadd fast float %3607, %3585
  %3611 = fadd fast float %3608, %3586
  %3612 = fadd fast float %3609, %3587
  %3613 = fsub fast float %3365, %2857
  %3614 = fmul fast float %3598, %3613
  %3615 = fadd fast float %3614, %2857
  %3616 = fsub fast float %3507, %3588
  %3617 = fsub fast float %3508, %3589
  %3618 = fsub fast float %3509, %3590
  %3619 = fmul fast float %3603, %3616
  %3620 = fmul fast float %3603, %3617
  %3621 = fmul fast float %3603, %3618
  %3622 = fadd fast float %3619, %3588
  %3623 = fadd fast float %3620, %3589
  %3624 = fadd fast float %3621, %3590
  %3625 = fsub fast float %3575, %2861
  %3626 = fmul fast float %3598, %3625
  %3627 = fadd fast float %3626, %2861
  br label %3673

; <label>:3628                                    ; preds = %3595
  %3629 = icmp eq i32 %3593, 1
  br i1 %3629, label %3630, label %3643

; <label>:3630                                    ; preds = %3628
  %3631 = fadd fast float %3379, -1.000000e+00
  %3632 = fadd fast float %3380, -1.000000e+00
  %3633 = fadd fast float %3381, -1.000000e+00
  %3634 = fmul fast float %3598, %3631
  %3635 = fmul fast float %3598, %3632
  %3636 = fmul fast float %3598, %3633
  %3637 = fadd fast float %3634, 1.000000e+00
  %3638 = fadd fast float %3635, 1.000000e+00
  %3639 = fadd fast float %3636, 1.000000e+00
  %3640 = fmul fast float %3637, %3585
  %3641 = fmul fast float %3638, %3586
  %3642 = fmul fast float %3639, %3587
  br label %3673

; <label>:3643                                    ; preds = %3628
  %3644 = icmp eq i32 %3593, 2
  br i1 %3644, label %3645, label %3673

; <label>:3645                                    ; preds = %3643
  %3646 = call float @dx.op.unary.f32(i32 24, float %3379)  ; Sqrt(value)
  %3647 = call float @dx.op.unary.f32(i32 24, float %3380)  ; Sqrt(value)
  %3648 = call float @dx.op.unary.f32(i32 24, float %3381)  ; Sqrt(value)
  %3649 = fadd fast float %3646, -5.000000e-01
  %3650 = fadd fast float %3647, -5.000000e-01
  %3651 = fadd fast float %3648, -5.000000e-01
  %3652 = fmul fast float %3649, %3598
  %3653 = fmul fast float %3650, %3598
  %3654 = fmul fast float %3651, %3598
  %3655 = fadd fast float %3652, 5.000000e-01
  %3656 = fadd fast float %3653, 5.000000e-01
  %3657 = fadd fast float %3654, 5.000000e-01
  %3658 = fmul fast float %3655, 2.000000e+00
  %3659 = fsub fast float 1.000000e+00, %3658
  %3660 = fmul fast float %3659, %3585
  %3661 = fadd fast float %3660, %3658
  %3662 = fmul fast float %3661, %3585
  %3663 = fmul fast float %3656, 2.000000e+00
  %3664 = fsub fast float 1.000000e+00, %3663
  %3665 = fmul fast float %3664, %3586
  %3666 = fadd fast float %3665, %3663
  %3667 = fmul fast float %3666, %3586
  %3668 = fmul fast float %3657, 2.000000e+00
  %3669 = fsub fast float 1.000000e+00, %3668
  %3670 = fmul fast float %3669, %3587
  %3671 = fadd fast float %3670, %3668
  %3672 = fmul fast float %3671, %3587
  br label %3673

; <label>:3673                                    ; preds = %3645, %3643, %3630, %3600, %3584
  %3674 = phi float [ %3585, %3584 ], [ %3662, %3645 ], [ %3585, %3643 ], [ %3640, %3630 ], [ %3610, %3600 ]
  %3675 = phi float [ %3586, %3584 ], [ %3667, %3645 ], [ %3586, %3643 ], [ %3641, %3630 ], [ %3611, %3600 ]
  %3676 = phi float [ %3587, %3584 ], [ %3672, %3645 ], [ %3587, %3643 ], [ %3642, %3630 ], [ %3612, %3600 ]
  %3677 = phi float [ %3588, %3584 ], [ %3588, %3645 ], [ %3588, %3643 ], [ %3588, %3630 ], [ %3622, %3600 ]
  %3678 = phi float [ %3589, %3584 ], [ %3589, %3645 ], [ %3589, %3643 ], [ %3589, %3630 ], [ %3623, %3600 ]
  %3679 = phi float [ %3590, %3584 ], [ %3590, %3645 ], [ %3590, %3643 ], [ %3590, %3630 ], [ %3624, %3600 ]
  %3680 = phi float [ %2857, %3584 ], [ %2857, %3645 ], [ %2857, %3643 ], [ %2857, %3630 ], [ %3615, %3600 ]
  %3681 = phi float [ %2861, %3584 ], [ %2861, %3645 ], [ %2861, %3643 ], [ %2861, %3630 ], [ %3627, %3600 ]
  %3682 = and i32 %3592, 12
  %3683 = icmp eq i32 %3682, 12
  br i1 %3683, label %3790, label %3684

; <label>:3684                                    ; preds = %3673
  %3685 = and i32 %3592, 2097184
  %3686 = icmp eq i32 %3685, 2097184
  %3687 = select i1 %3686, float %3159, float 0.000000e+00
  %3688 = and i32 %3592, 4194336
  %3689 = icmp eq i32 %3688, 4194336
  %3690 = select i1 %3689, float %3159, float 0.000000e+00
  %3691 = and i32 %3592, 8388640
  %3692 = icmp eq i32 %3691, 8388640
  %3693 = select i1 %3692, float %3159, float 0.000000e+00
  %3694 = and i32 %3592, 2048
  %3695 = icmp ne i32 %3694, 0
  %3696 = select i1 %3695, float %3159, float 0.000000e+00
  %3697 = and i32 %3592, 8192
  %3698 = icmp ne i32 %3697, 0
  %3699 = select i1 %3698, float %3159, float 0.000000e+00
  %3700 = icmp eq i32 %3682, 0
  br i1 %3700, label %3701, label %3726

; <label>:3701                                    ; preds = %3684
  %3702 = fsub fast float %3460, %2846
  %3703 = fsub fast float %3461, %2847
  %3704 = fmul fast float %3687, %3702
  %3705 = fmul fast float %3687, %3703
  %3706 = fadd fast float %3704, %2846
  %3707 = fadd fast float %3705, %2847
  %3708 = fsub fast float %3462, %2859
  %3709 = fmul fast float %3690, %3708
  %3710 = fadd fast float %3709, %2859
  %3711 = fsub fast float %3459, %2858
  %3712 = fmul fast float %3693, %3711
  %3713 = fadd fast float %3712, %2858
  %3714 = fsub fast float %3562, %2860
  %3715 = fmul fast float %3696, %3714
  %3716 = fadd fast float %3715, %2860
  %3717 = fsub fast float %3559, %2854
  %3718 = fsub fast float %3560, %2855
  %3719 = fsub fast float %3561, %2856
  %3720 = fmul fast float %3699, %3717
  %3721 = fmul fast float %3699, %3718
  %3722 = fmul fast float %3699, %3719
  %3723 = fadd fast float %3720, %2854
  %3724 = fadd fast float %3721, %2855
  %3725 = fadd fast float %3722, %2856
  br label %3790

; <label>:3726                                    ; preds = %3684
  %3727 = icmp eq i32 %3682, 4
  br i1 %3727, label %3728, label %3768

; <label>:3728                                    ; preds = %3726
  %3729 = fmul fast float %3687, %3460
  %3730 = fmul fast float %3687, %3461
  %3731 = fadd fast float %3729, %2846
  %3732 = fadd fast float %3730, %2847
  %3733 = call float @dx.op.binary.f32(i32 36, float %2859, float %3462)  ; FMin(a,b)
  %3734 = fsub fast float %3733, %2859
  %3735 = fmul fast float %3734, %3690
  %3736 = fadd fast float %3735, %2859
  %3737 = fadd fast float %3459, %2858
  %3738 = fmul fast float %3737, 0x3FF337FAE0000000
  %3739 = fmul fast float %2858, %2858
  %3740 = fmul fast float %3459, %3459
  %3741 = fadd fast float %3740, %3739
  %3742 = fmul fast float %3741, 0x3FE5152B00000000
  %3743 = fmul fast float %2858, 0xBFCC1F85E0000000
  %3744 = fmul fast float %3743, %3459
  %3745 = fadd fast float %3744, 0xBFE1363700000000
  %3746 = fadd fast float %3745, %3738
  %3747 = fsub fast float %3746, %3742
  %3748 = fmul fast float %3737, 0x3FBA6F0D00000000
  %3749 = fmul fast float %3741, 0x3FD0432880000000
  %3750 = fmul fast float %2858, 0xBFEF110800000000
  %3751 = fmul fast float %3750, %3459
  %3752 = fadd fast float %3751, 1.000000e+00
  %3753 = fsub fast float %3752, %3748
  %3754 = fadd fast float %3753, %3749
  %3755 = fdiv fast float %3747, %3754
  %3756 = call float @dx.op.unary.f32(i32 7, float %3755)  ; Saturate(value)
  %3757 = fsub fast float %3756, %2858
  %3758 = fmul fast float %3757, %3693
  %3759 = fadd fast float %3758, %2858
  %3760 = fmul fast float %3696, %3562
  %3761 = fadd fast float %3760, %2860
  %3762 = fmul fast float %3699, %3559
  %3763 = fmul fast float %3699, %3560
  %3764 = fmul fast float %3699, %3561
  %3765 = fadd fast float %3762, %2854
  %3766 = fadd fast float %3763, %2855
  %3767 = fadd fast float %3764, %2856
  br label %3790

; <label>:3768                                    ; preds = %3726
  %3769 = icmp eq i32 %3682, 8
  br i1 %3769, label %3770, label %3790

; <label>:3770                                    ; preds = %3768
  %3771 = fmul fast float %3687, %3460
  %3772 = fmul fast float %3687, %3461
  %3773 = fadd fast float %3771, %2846
  %3774 = fadd fast float %3772, %2847
  %3775 = call float @dx.op.binary.f32(i32 36, float %2859, float %3462)  ; FMin(a,b)
  %3776 = fsub fast float %3775, %2859
  %3777 = fmul fast float %3776, %3690
  %3778 = fadd fast float %3777, %2859
  %3779 = fsub fast float %3459, %2858
  %3780 = fmul fast float %3693, %3779
  %3781 = fadd fast float %3780, %2858
  %3782 = fmul fast float %3696, %3562
  %3783 = fadd fast float %3782, %2860
  %3784 = fmul fast float %3699, %3559
  %3785 = fmul fast float %3699, %3560
  %3786 = fmul fast float %3699, %3561
  %3787 = fadd fast float %3784, %2854
  %3788 = fadd fast float %3785, %2855
  %3789 = fadd fast float %3786, %2856
  br label %3790

; <label>:3790                                    ; preds = %3770, %3768, %3728, %3701, %3673, %3158, %2862, %2845
  %3791 = phi float [ %2846, %3673 ], [ %2846, %3158 ], [ %2846, %2845 ], [ %2846, %2862 ], [ %3706, %3701 ], [ %3731, %3728 ], [ %2846, %3768 ], [ %3773, %3770 ]
  %3792 = phi float [ %2847, %3673 ], [ %2847, %3158 ], [ %2847, %2845 ], [ %2847, %2862 ], [ %3707, %3701 ], [ %3732, %3728 ], [ %2847, %3768 ], [ %3774, %3770 ]
  %3793 = phi float [ %3674, %3673 ], [ %2848, %3158 ], [ %2848, %2845 ], [ %2848, %2862 ], [ %3674, %3701 ], [ %3674, %3728 ], [ %3674, %3768 ], [ %3674, %3770 ]
  %3794 = phi float [ %3675, %3673 ], [ %2849, %3158 ], [ %2849, %2845 ], [ %2849, %2862 ], [ %3675, %3701 ], [ %3675, %3728 ], [ %3675, %3768 ], [ %3675, %3770 ]
  %3795 = phi float [ %3676, %3673 ], [ %2850, %3158 ], [ %2850, %2845 ], [ %2850, %2862 ], [ %3676, %3701 ], [ %3676, %3728 ], [ %3676, %3768 ], [ %3676, %3770 ]
  %3796 = phi float [ %3677, %3673 ], [ %2851, %3158 ], [ %2851, %2845 ], [ %2851, %2862 ], [ %3677, %3701 ], [ %3677, %3728 ], [ %3677, %3768 ], [ %3677, %3770 ]
  %3797 = phi float [ %3678, %3673 ], [ %2852, %3158 ], [ %2852, %2845 ], [ %2852, %2862 ], [ %3678, %3701 ], [ %3678, %3728 ], [ %3678, %3768 ], [ %3678, %3770 ]
  %3798 = phi float [ %3679, %3673 ], [ %2853, %3158 ], [ %2853, %2845 ], [ %2853, %2862 ], [ %3679, %3701 ], [ %3679, %3728 ], [ %3679, %3768 ], [ %3679, %3770 ]
  %3799 = phi float [ %2854, %3673 ], [ %2854, %3158 ], [ %2854, %2845 ], [ %2854, %2862 ], [ %3723, %3701 ], [ %3765, %3728 ], [ %2854, %3768 ], [ %3787, %3770 ]
  %3800 = phi float [ %2855, %3673 ], [ %2855, %3158 ], [ %2855, %2845 ], [ %2855, %2862 ], [ %3724, %3701 ], [ %3766, %3728 ], [ %2855, %3768 ], [ %3788, %3770 ]
  %3801 = phi float [ %2856, %3673 ], [ %2856, %3158 ], [ %2856, %2845 ], [ %2856, %2862 ], [ %3725, %3701 ], [ %3767, %3728 ], [ %2856, %3768 ], [ %3789, %3770 ]
  %3802 = phi float [ %3680, %3673 ], [ %2857, %3158 ], [ %2857, %2845 ], [ %2857, %2862 ], [ %3680, %3701 ], [ %3680, %3728 ], [ %3680, %3768 ], [ %3680, %3770 ]
  %3803 = phi float [ %2858, %3673 ], [ %2858, %3158 ], [ %2858, %2845 ], [ %2858, %2862 ], [ %3713, %3701 ], [ %3759, %3728 ], [ %2858, %3768 ], [ %3781, %3770 ]
  %3804 = phi float [ %2859, %3673 ], [ %2859, %3158 ], [ %2859, %2845 ], [ %2859, %2862 ], [ %3710, %3701 ], [ %3736, %3728 ], [ %2859, %3768 ], [ %3778, %3770 ]
  %3805 = phi float [ %2860, %3673 ], [ %2860, %3158 ], [ %2860, %2845 ], [ %2860, %2862 ], [ %3716, %3701 ], [ %3761, %3728 ], [ %2860, %3768 ], [ %3783, %3770 ]
  %3806 = phi float [ %3681, %3673 ], [ %2861, %3158 ], [ %2861, %2845 ], [ %2861, %2862 ], [ %3681, %3701 ], [ %3681, %3728 ], [ %3681, %3768 ], [ %3681, %3770 ]
  %3807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3808 = extractvalue %dx.types.CBufRet.f32 %3807, 0
  %3809 = call float @dx.op.dot2.f32(i32 54, float %3791, float %3792, float %3791, float %3792)  ; Dot2(ax,ay,bx,by)
  %3810 = fmul fast float %3809, 0x3FE3333340000000
  %3811 = fsub fast float 1.000000e+00, %3810
  %3812 = call float @dx.op.dot3.f32(i32 55, float %3791, float %3792, float %3811, float %3791, float %3792, float %3811)  ; Dot3(ax,ay,az,bx,by,bz)
  %3813 = call float @dx.op.unary.f32(i32 25, float %3812)  ; Rsqrt(value)
  %3814 = fmul fast float %3813, %3791
  %3815 = fmul fast float %3813, %3792
  %3816 = fmul fast float %3811, %3813
  %3817 = fmul fast float %3816, %80
  %3818 = fmul fast float %3816, %82
  %3819 = fmul fast float %3816, %84
  %3820 = fmul fast float %3814, %52
  %3821 = fmul fast float %3814, %53
  %3822 = fmul fast float %3814, %54
  %3823 = fadd fast float %3817, %3820
  %3824 = fadd fast float %3818, %3821
  %3825 = fadd fast float %3819, %3822
  %3826 = fmul fast float %94, %3815
  %3827 = fmul fast float %95, %3815
  %3828 = fmul fast float %96, %3815
  %3829 = fadd fast float %3823, %3826
  %3830 = fadd fast float %3824, %3827
  %3831 = fadd fast float %3825, %3828
  %3832 = call float @dx.op.dot3.f32(i32 55, float %3829, float %3830, float %3831, float %3829, float %3830, float %3831)  ; Dot3(ax,ay,az,bx,by,bz)
  %3833 = call float @dx.op.unary.f32(i32 25, float %3832)  ; Rsqrt(value)
  %3834 = fmul fast float %3829, %3833
  %3835 = fmul fast float %3830, %3833
  %3836 = fmul fast float %3831, %3833
  %3837 = add i32 %32, 392
  %3838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3837, i32 undef)  ; BufferLoad(srv,index,wot)
  %3839 = extractvalue %dx.types.ResRet.i32 %3838, 0
  %3840 = extractvalue %dx.types.ResRet.i32 %3838, 1
  %3841 = extractvalue %dx.types.ResRet.i32 %3838, 2
  %3842 = extractvalue %dx.types.ResRet.i32 %3838, 3
  %3843 = bitcast i32 %3839 to float
  %3844 = bitcast i32 %3840 to float
  %3845 = bitcast i32 %3841 to float
  %3846 = bitcast i32 %3842 to float
  %3847 = fsub fast float %3793, %3843
  %3848 = fsub fast float %3794, %3844
  %3849 = fsub fast float %3795, %3845
  %3850 = fmul fast float %3847, %164
  %3851 = fmul fast float %3848, %164
  %3852 = fmul fast float %3849, %164
  %3853 = fadd fast float %3850, %3843
  %3854 = fadd fast float %3851, %3844
  %3855 = fadd fast float %3852, %3845
  %3856 = fsub fast float %967, %3846
  %3857 = fmul fast float %3856, %164
  %3858 = fadd fast float %3857, %3846
  %3859 = fadd fast float %3802, 0xBFB99999A0000000
  %3860 = call float @dx.op.unary.f32(i32 7, float %3859)  ; Saturate(value)
  %3861 = fmul fast float %3860, 0x3FF1C71C80000000
  %3862 = call float @dx.op.binary.f32(i32 36, float %3802, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3863 = fsub fast float 1.000000e+00, %3861
  %3864 = call float @dx.op.unary.f32(i32 7, float %3863)  ; Saturate(value)
  %3865 = fmul fast float %3853, %3864
  %3866 = fmul fast float %3854, %3864
  %3867 = fmul fast float %3855, %3864
  %3868 = call float @dx.op.unary.f32(i32 7, float %3865)  ; Saturate(value)
  %3869 = call float @dx.op.unary.f32(i32 7, float %3866)  ; Saturate(value)
  %3870 = call float @dx.op.unary.f32(i32 7, float %3867)  ; Saturate(value)
  %3871 = fmul fast float %3853, %3861
  %3872 = fmul fast float %3854, %3861
  %3873 = fmul fast float %3855, %3861
  %3874 = fadd fast float %3871, %3862
  %3875 = fadd fast float %3872, %3862
  %3876 = fadd fast float %3873, %3862
  %3877 = call float @dx.op.unary.f32(i32 7, float %3874)  ; Saturate(value)
  %3878 = call float @dx.op.unary.f32(i32 7, float %3875)  ; Saturate(value)
  %3879 = call float @dx.op.unary.f32(i32 7, float %3876)  ; Saturate(value)
  %3880 = call float @dx.op.unary.f32(i32 7, float %3803)  ; Saturate(value)
  %3881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3882 = extractvalue %dx.types.ResRet.i32 %3881, 0
  %3883 = and i32 %3882, 1
  %3884 = icmp eq i32 %3883, 0
  br i1 %3884, label %3899, label %3885

; <label>:3885                                    ; preds = %3790
  %3886 = call float @dx.op.binary.f32(i32 35, float %3869, float %3870)  ; FMax(a,b)
  %3887 = call float @dx.op.binary.f32(i32 35, float %3868, float %3886)  ; FMax(a,b)
  %3888 = fcmp fast ogt float %3887, 0.000000e+00
  %3889 = bitcast float %3887 to i32
  %3890 = sub nsw i32 2129859010, %3889
  %3891 = bitcast i32 %3890 to float
  %3892 = select i1 %3888, float %3891, float 0.000000e+00
  %3893 = fmul fast float %3868, %3799
  %3894 = fmul fast float %3869, %3800
  %3895 = fmul fast float %3870, %3801
  %3896 = fmul fast float %3893, %3892
  %3897 = fmul fast float %3894, %3892
  %3898 = fmul fast float %3895, %3892
  br label %3899

; <label>:3899                                    ; preds = %3885, %3790
  %3900 = phi float [ %3896, %3885 ], [ %3799, %3790 ]
  %3901 = phi float [ %3897, %3885 ], [ %3800, %3790 ]
  %3902 = phi float [ %3898, %3885 ], [ %3801, %3790 ]
  %3903 = fadd fast float %3868, 0xBFD51EB860000000
  %3904 = fadd fast float %3869, 0xBFD51EB860000000
  %3905 = fadd fast float %3870, 0xBFD51EB860000000
  %3906 = fmul fast float %3903, %3903
  %3907 = fmul fast float %3904, %3904
  %3908 = fmul fast float %3905, %3905
  %3909 = fmul fast float %3906, %3906
  %3910 = fmul fast float %3909, 1.000000e+02
  %3911 = fmul fast float %3907, %3907
  %3912 = fmul fast float %3911, 1.000000e+02
  %3913 = fmul fast float %3908, %3908
  %3914 = fmul fast float %3913, 1.000000e+02
  %3915 = fadd fast float %3910, 3.500000e+00
  %3916 = fadd fast float %3912, 3.500000e+00
  %3917 = fadd fast float %3914, 3.500000e+00
  %3918 = call float @dx.op.binary.f32(i32 35, float %3900, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3919 = call float @dx.op.binary.f32(i32 35, float %3901, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3920 = call float @dx.op.binary.f32(i32 35, float %3902, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3921 = fdiv fast float %3915, %3918
  %3922 = fdiv fast float %3916, %3919
  %3923 = fdiv fast float %3917, %3920
  %3924 = fmul fast float %3805, 0xBFF7154760000000
  %3925 = fmul fast float %3924, %3921
  %3926 = call float @dx.op.unary.f32(i32 21, float %3925)  ; Exp(value)
  %3927 = fmul fast float %3926, 2.500000e-01
  %3928 = fmul fast float %3805, 0xBFDEC709E0000000
  %3929 = fmul fast float %3928, %3921
  %3930 = call float @dx.op.unary.f32(i32 21, float %3929)  ; Exp(value)
  %3931 = fmul fast float %3930, 7.500000e-01
  %3932 = fmul fast float %3924, %3922
  %3933 = call float @dx.op.unary.f32(i32 21, float %3932)  ; Exp(value)
  %3934 = fmul fast float %3933, 2.500000e-01
  %3935 = fmul fast float %3928, %3922
  %3936 = call float @dx.op.unary.f32(i32 21, float %3935)  ; Exp(value)
  %3937 = fmul fast float %3936, 7.500000e-01
  %3938 = fmul fast float %3924, %3923
  %3939 = call float @dx.op.unary.f32(i32 21, float %3938)  ; Exp(value)
  %3940 = fmul fast float %3939, 2.500000e-01
  %3941 = fmul fast float %3928, %3923
  %3942 = call float @dx.op.unary.f32(i32 21, float %3941)  ; Exp(value)
  %3943 = fmul fast float %3942, 7.500000e-01
  %3944 = fadd fast float %3927, %3931
  %3945 = fadd fast float %3934, %3937
  %3946 = fadd fast float %3940, %3943
  %3947 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3948 = extractvalue %dx.types.CBufRet.i32 %3947, 3
  %3949 = and i32 %3948, 8
  %3950 = icmp ne i32 %3949, 0
  %3951 = call float @dx.op.binary.f32(i32 35, float %3868, float %3853)  ; FMax(a,b)
  %3952 = call float @dx.op.binary.f32(i32 35, float %3869, float %3853)  ; FMax(a,b)
  %3953 = call float @dx.op.binary.f32(i32 35, float %3870, float %3853)  ; FMax(a,b)
  %3954 = call float @dx.op.dot3.f32(i32 55, float %3868, float %3869, float %3870, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3955 = select i1 %206, float %3853, float %3868
  %3956 = select i1 %206, float %3954, float %3869
  %3957 = select i1 %206, float 1.000000e+00, float %3870
  %3958 = select i1 %3950, float %3951, float %3955
  %3959 = select i1 %3950, float %3952, float %3956
  %3960 = select i1 %3950, float %3953, float %3957
  %3961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3962 = extractvalue %dx.types.CBufRet.f32 %3961, 0
  %3963 = extractvalue %dx.types.CBufRet.f32 %3961, 1
  %3964 = extractvalue %dx.types.CBufRet.f32 %3961, 2
  %3965 = fadd fast float %3962, %130
  %3966 = fadd fast float %3963, %131
  %3967 = fadd fast float %3964, %132
  %3968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3969 = extractvalue %dx.types.CBufRet.f32 %3968, 0
  %3970 = extractvalue %dx.types.CBufRet.f32 %3968, 1
  %3971 = fsub fast float %3965, %3969
  %3972 = fsub fast float %3966, %3970
  %3973 = fmul fast float %3971, %3971
  %3974 = fmul fast float %3972, %3972
  %3975 = fadd fast float %3973, %3974
  %3976 = call float @dx.op.unary.f32(i32 24, float %3975)  ; Sqrt(value)
  %3977 = extractvalue %dx.types.CBufRet.f32 %3968, 2
  %3978 = fcmp fast olt float %3976, %3977
  br i1 %3978, label %3979, label %4046

; <label>:3979                                    ; preds = %3899
  %3980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3981 = extractvalue %dx.types.CBufRet.f32 %3980, 0
  %3982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3983 = extractvalue %dx.types.CBufRet.f32 %3982, 0
  %3984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3985 = extractvalue %dx.types.CBufRet.f32 %3984, 0
  %3986 = extractvalue %dx.types.CBufRet.f32 %3980, 1
  %3987 = extractvalue %dx.types.CBufRet.f32 %3982, 1
  %3988 = extractvalue %dx.types.CBufRet.f32 %3984, 1
  %3989 = extractvalue %dx.types.CBufRet.f32 %3980, 3
  %3990 = extractvalue %dx.types.CBufRet.f32 %3982, 3
  %3991 = extractvalue %dx.types.CBufRet.f32 %3984, 3
  %3992 = fadd fast float %3989, %3965
  %3993 = fadd fast float %3990, %3966
  %3994 = fadd fast float %3991, %3967
  %3995 = fmul fast float %3992, %3981
  %3996 = call float @dx.op.tertiary.f32(i32 46, float %3993, float %3983, float %3995)  ; FMad(a,b,c)
  %3997 = call float @dx.op.tertiary.f32(i32 46, float %3994, float %3985, float %3996)  ; FMad(a,b,c)
  %3998 = fmul fast float %3992, %3986
  %3999 = call float @dx.op.tertiary.f32(i32 46, float %3993, float %3987, float %3998)  ; FMad(a,b,c)
  %4000 = call float @dx.op.tertiary.f32(i32 46, float %3994, float %3988, float %3999)  ; FMad(a,b,c)
  %4001 = fsub fast float %3997, %3989
  %4002 = fsub fast float %4000, %3990
  %4003 = fsub fast float %4001, %3969
  %4004 = fadd fast float %4003, %3977
  %4005 = fsub fast float %4002, %3970
  %4006 = fadd fast float %4005, %3977
  %4007 = extractvalue %dx.types.CBufRet.f32 %3968, 3
  %4008 = fmul fast float %4004, %4007
  %4009 = fmul fast float %4006, %4007
  %4010 = call float @dx.op.unary.f32(i32 7, float %4008)  ; Saturate(value)
  %4011 = call float @dx.op.unary.f32(i32 7, float %4009)  ; Saturate(value)
  %4012 = fsub fast float 1.000000e+00, %4010
  %4013 = fsub fast float 1.000000e+00, %4011
  %4014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %4012, float %4013, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4015 = extractvalue %dx.types.ResRet.f32 %4014, 0
  %4016 = fcmp fast ugt float %4015, 0.000000e+00
  br i1 %4016, label %4017, label %4320

; <label>:4017                                    ; preds = %3979
  %4018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4019 = extractvalue %dx.types.CBufRet.f32 %4018, 2
  %4020 = fmul fast float %4019, %4015
  %4021 = extractvalue %dx.types.CBufRet.f32 %4018, 3
  %4022 = fadd fast float %4021, %4020
  %4023 = extractvalue %dx.types.CBufRet.f32 %3984, 2
  %4024 = fadd fast float %4022, %3991
  %4025 = fmul fast float %3997, %3985
  %4026 = call float @dx.op.tertiary.f32(i32 46, float %4000, float %3988, float %4025)  ; FMad(a,b,c)
  %4027 = call float @dx.op.tertiary.f32(i32 46, float %4024, float %4023, float %4026)  ; FMad(a,b,c)
  %4028 = fsub fast float %4027, %3991
  %4029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4030 = extractvalue %dx.types.CBufRet.f32 %4029, 2
  %4031 = fsub fast float %4028, %4030
  %4032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %26, float %4012, float %4013, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4033 = extractvalue %dx.types.ResRet.f32 %4032, 0
  %4034 = extractvalue %dx.types.ResRet.f32 %4032, 1
  %4035 = extractvalue %dx.types.ResRet.f32 %4032, 2
  %4036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %26, float %4012, float %4013, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4037 = extractvalue %dx.types.ResRet.f32 %4036, 0
  %4038 = extractvalue %dx.types.ResRet.f32 %4036, 1
  %4039 = extractvalue %dx.types.ResRet.f32 %4036, 2
  %4040 = fadd fast float %4037, %4033
  %4041 = fmul fast float %4040, 0x3F847AE140000000
  %4042 = fadd fast float %4038, %4034
  %4043 = fmul fast float %4042, 0x3F847AE140000000
  %4044 = fadd fast float %4039, %4035
  %4045 = fmul fast float %4044, 0x3F847AE140000000
  br label %4320

; <label>:4046                                    ; preds = %3899
  %4047 = and i32 %180, 1
  %4048 = icmp eq i32 %4047, 0
  br i1 %4048, label %4320, label %4049

; <label>:4049                                    ; preds = %4046
  %4050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4051 = extractvalue %dx.types.CBufRet.f32 %4050, 0
  %4052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4053 = extractvalue %dx.types.CBufRet.f32 %4052, 0
  %4054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4055 = extractvalue %dx.types.CBufRet.f32 %4054, 0
  %4056 = extractvalue %dx.types.CBufRet.f32 %4050, 1
  %4057 = extractvalue %dx.types.CBufRet.f32 %4052, 1
  %4058 = extractvalue %dx.types.CBufRet.f32 %4054, 1
  %4059 = extractvalue %dx.types.CBufRet.f32 %4050, 3
  %4060 = extractvalue %dx.types.CBufRet.f32 %4052, 3
  %4061 = extractvalue %dx.types.CBufRet.f32 %4054, 3
  %4062 = fadd fast float %4059, %3965
  %4063 = fadd fast float %4060, %3966
  %4064 = fadd fast float %4061, %3967
  %4065 = fmul fast float %4062, %4051
  %4066 = call float @dx.op.tertiary.f32(i32 46, float %4063, float %4053, float %4065)  ; FMad(a,b,c)
  %4067 = call float @dx.op.tertiary.f32(i32 46, float %4064, float %4055, float %4066)  ; FMad(a,b,c)
  %4068 = fmul fast float %4062, %4056
  %4069 = call float @dx.op.tertiary.f32(i32 46, float %4063, float %4057, float %4068)  ; FMad(a,b,c)
  %4070 = call float @dx.op.tertiary.f32(i32 46, float %4064, float %4058, float %4069)  ; FMad(a,b,c)
  %4071 = fsub fast float %4067, %4059
  %4072 = fsub fast float %4070, %4060
  %4073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4074 = extractvalue %dx.types.CBufRet.f32 %4073, 0
  %4075 = extractvalue %dx.types.CBufRet.f32 %4073, 1
  %4076 = extractvalue %dx.types.CBufRet.f32 %4073, 2
  %4077 = extractvalue %dx.types.CBufRet.f32 %4073, 3
  %4078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4079 = extractvalue %dx.types.CBufRet.f32 %4078, 3
  %4080 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4081 = extractvalue %dx.types.CBufRet.i32 %4080, 0
  %4082 = extractvalue %dx.types.CBufRet.i32 %4080, 1
  %4083 = udiv i32 %4082, %4081
  %4084 = fsub fast float %4071, %4074
  %4085 = fsub fast float %4072, %4075
  %4086 = call float @dx.op.binary.f32(i32 35, float %4084, float 0.000000e+00)  ; FMax(a,b)
  %4087 = call float @dx.op.binary.f32(i32 35, float %4085, float 0.000000e+00)  ; FMax(a,b)
  %4088 = call float @dx.op.binary.f32(i32 36, float %4086, float %4076)  ; FMin(a,b)
  %4089 = call float @dx.op.binary.f32(i32 36, float %4087, float %4077)  ; FMin(a,b)
  %4090 = add i32 %4081, -1
  %4091 = add i32 %4083, -1
  %4092 = fmul fast float %4088, %4079
  %4093 = fmul fast float %4089, %4079
  %4094 = fptoui float %4092 to i32
  %4095 = fptoui float %4093 to i32
  %4096 = call i32 @dx.op.binary.i32(i32 40, i32 %4094, i32 %4090)  ; UMin(a,b)
  %4097 = call i32 @dx.op.binary.i32(i32 40, i32 %4095, i32 %4091)  ; UMin(a,b)
  %4098 = mul i32 %4097, %4081
  %4099 = add i32 %4098, %4096
  %4100 = shl i32 %4099, 2
  %4101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4100, i32 undef)  ; BufferLoad(srv,index,wot)
  %4102 = extractvalue %dx.types.ResRet.i32 %4101, 0
  %4103 = icmp eq i32 %4102, -1
  br i1 %4103, label %4320, label %4104

; <label>:4104                                    ; preds = %4049
  %4105 = mul i32 %4102, 148
  %4106 = add i32 %4105, 4
  %4107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4106, i32 undef)  ; BufferLoad(srv,index,wot)
  %4108 = extractvalue %dx.types.ResRet.f32 %4107, 0
  %4109 = add i32 %4105, 8
  %4110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4109, i32 undef)  ; BufferLoad(srv,index,wot)
  %4111 = extractvalue %dx.types.ResRet.f32 %4110, 0
  %4112 = add i32 %4105, 36
  %4113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4112, i32 undef)  ; BufferLoad(srv,index,wot)
  %4114 = extractvalue %dx.types.ResRet.f32 %4113, 0
  %4115 = add i32 %4105, 60
  %4116 = add i32 %4105, 92
  %4117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4116, i32 undef)  ; BufferLoad(srv,index,wot)
  %4118 = extractvalue %dx.types.ResRet.i32 %4117, 0
  %4119 = add i32 %4105, 116
  %4120 = fsub fast float %4071, %4108
  %4121 = fsub fast float %4072, %4111
  %4122 = fmul fast float %4079, %4120
  %4123 = fmul fast float %4079, %4121
  %4124 = call float @dx.op.unary.f32(i32 7, float %4122)  ; Saturate(value)
  %4125 = call float @dx.op.unary.f32(i32 7, float %4123)  ; Saturate(value)
  %4126 = fsub fast float 1.000000e+00, %4125
  %4127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4128 = extractvalue %dx.types.CBufRet.f32 %4127, 2
  %4129 = call float @dx.op.unary.f32(i32 83, float %4124)  ; DerivCoarseX(value)
  %4130 = call float @dx.op.unary.f32(i32 83, float %4126)  ; DerivCoarseX(value)
  %4131 = call float @dx.op.unary.f32(i32 84, float %4124)  ; DerivCoarseY(value)
  %4132 = call float @dx.op.unary.f32(i32 84, float %4126)  ; DerivCoarseY(value)
  %4133 = fmul fast float %4129, %4128
  %4134 = fmul fast float %4130, %4128
  %4135 = fmul fast float %4131, %4128
  %4136 = fmul fast float %4132, %4128
  %4137 = call float @dx.op.dot2.f32(i32 54, float %4135, float %4136, float %4135, float %4136)  ; Dot2(ax,ay,bx,by)
  %4138 = call float @dx.op.dot2.f32(i32 54, float %4133, float %4134, float %4133, float %4134)  ; Dot2(ax,ay,bx,by)
  %4139 = call float @dx.op.binary.f32(i32 35, float %4138, float %4137)  ; FMax(a,b)
  %4140 = call float @dx.op.unary.f32(i32 23, float %4139)  ; Log(value)
  %4141 = fmul fast float %4140, 5.000000e-01
  %4142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4143 = extractvalue %dx.types.CBufRet.f32 %4142, 1
  %4144 = fadd fast float %4143, %4141
  %4145 = call float @dx.op.binary.f32(i32 35, float %4144, float 0.000000e+00)  ; FMax(a,b)
  %4146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4147 = extractvalue %dx.types.CBufRet.f32 %4146, 3
  %4148 = fadd fast float %4147, %4145
  %4149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4150 = extractvalue %dx.types.CBufRet.f32 %4149, 3
  %4151 = fadd fast float %4148, %4150
  %4152 = add i32 %4118, 0
  %4153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4152, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4154 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4153, i32 0)  ; GetDimensions(handle,mipLevel)
  %4155 = extractvalue %dx.types.Dimensions %4154, 0
  %4156 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4155)  ; FirstbitLo(value)
  %4157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.i32 %4157, 1
  %4159 = sub nsw i32 %4158, %4156
  %4160 = sitofp i32 %4159 to float
  %4161 = fsub fast float %4151, %4160
  %4162 = call float @dx.op.binary.f32(i32 35, float %4161, float 0.000000e+00)  ; FMax(a,b)
  %4163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4153, %dx.types.Handle %24, float %4124, float %4126, float %4114, float undef, i32 0, i32 0, i32 undef, float %4162)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4164 = extractvalue %dx.types.ResRet.f32 %4163, 0
  %4165 = fcmp ule float %4164, 0x3FE0101020000000
  %4166 = extractvalue %dx.types.CBufRet.i32 %4157, 0
  %4167 = and i32 %4166, 128
  %4168 = icmp ne i32 %4167, 0
  %4169 = and i1 %4165, %4168
  br i1 %4169, label %4320, label %4170

; <label>:4170                                    ; preds = %4104
  %4171 = add i32 %4105, 20
  %4172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4171, i32 undef)  ; BufferLoad(srv,index,wot)
  %4173 = extractvalue %dx.types.ResRet.f32 %4172, 0
  %4174 = add i32 %4105, 24
  %4175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4174, i32 undef)  ; BufferLoad(srv,index,wot)
  %4176 = extractvalue %dx.types.ResRet.f32 %4175, 0
  %4177 = add i32 %4105, 40
  %4178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4177, i32 undef)  ; BufferLoad(srv,index,wot)
  %4179 = extractvalue %dx.types.ResRet.f32 %4178, 0
  %4180 = add i32 %4105, 96
  %4181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4180, i32 undef)  ; BufferLoad(srv,index,wot)
  %4182 = extractvalue %dx.types.ResRet.i32 %4181, 0
  %4183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4184 = extractvalue %dx.types.CBufRet.f32 %4183, 2
  %4185 = fmul fast float %4184, %4124
  %4186 = fmul fast float %4184, %4126
  %4187 = extractvalue %dx.types.CBufRet.f32 %4183, 3
  %4188 = fadd fast float %4185, %4187
  %4189 = fadd fast float %4186, %4187
  %4190 = add i32 %4182, 0
  %4191 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4190, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4192 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4191, i32 0)  ; GetDimensions(handle,mipLevel)
  %4193 = extractvalue %dx.types.Dimensions %4192, 0
  %4194 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4193)  ; FirstbitLo(value)
  %4195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4196 = extractvalue %dx.types.CBufRet.i32 %4195, 1
  %4197 = sub nsw i32 %4196, %4194
  %4198 = sitofp i32 %4197 to float
  %4199 = fsub fast float %4148, %4198
  %4200 = call float @dx.op.binary.f32(i32 35, float %4199, float 0.000000e+00)  ; FMax(a,b)
  %4201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4191, %dx.types.Handle %24, float %4188, float %4189, float %4179, float undef, i32 0, i32 0, i32 undef, float %4200)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4202 = extractvalue %dx.types.ResRet.f32 %4201, 0
  %4203 = fmul fast float %4202, %4173
  %4204 = fadd fast float %4203, %4176
  %4205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4206 = extractvalue %dx.types.CBufRet.f32 %4205, 0
  %4207 = extractvalue %dx.types.CBufRet.f32 %4205, 1
  %4208 = extractvalue %dx.types.CBufRet.f32 %4205, 2
  %4209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4210 = extractvalue %dx.types.CBufRet.f32 %4209, 3
  %4211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4212 = extractvalue %dx.types.CBufRet.f32 %4211, 3
  %4213 = extractvalue %dx.types.CBufRet.f32 %4205, 3
  %4214 = fadd fast float %4210, %4071
  %4215 = fadd fast float %4212, %4072
  %4216 = fadd fast float %4204, %4213
  %4217 = fmul fast float %4214, %4206
  %4218 = call float @dx.op.tertiary.f32(i32 46, float %4215, float %4207, float %4217)  ; FMad(a,b,c)
  %4219 = call float @dx.op.tertiary.f32(i32 46, float %4216, float %4208, float %4218)  ; FMad(a,b,c)
  %4220 = fsub fast float %4219, %4213
  %4221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4222 = extractvalue %dx.types.CBufRet.f32 %4221, 2
  %4223 = fsub fast float %4220, %4222
  %4224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.i32 %4224, 0
  %4226 = call i32 @dx.op.binary.i32(i32 40, i32 %4102, i32 %4225)  ; UMin(a,b)
  %4227 = mul i32 %4226, 36
  %4228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4227, i32 undef)  ; BufferLoad(srv,index,wot)
  %4229 = extractvalue %dx.types.ResRet.i32 %4228, 0
  %4230 = add i32 %4227, 4
  %4231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4232 = extractvalue %dx.types.CBufRet.f32 %4231, 0
  %4233 = fmul fast float %4232, %4124
  %4234 = fmul fast float %4232, %4126
  %4235 = extractvalue %dx.types.CBufRet.f32 %4231, 1
  %4236 = fadd fast float %4233, %4235
  %4237 = fadd fast float %4234, %4235
  %4238 = icmp eq i32 %4229, 0
  br i1 %4238, label %4307, label %4239

; <label>:4239                                    ; preds = %4170
  br label %4240

; <label>:4240                                    ; preds = %4297, %4239
  %4241 = phi float [ %4298, %4297 ], [ 0.000000e+00, %4239 ]
  %4242 = phi float [ %4299, %4297 ], [ 0.000000e+00, %4239 ]
  %4243 = phi float [ %4300, %4297 ], [ 0.000000e+00, %4239 ]
  %4244 = phi float [ %4301, %4297 ], [ 0.000000e+00, %4239 ]
  %4245 = phi float [ %4302, %4297 ], [ 0.000000e+00, %4239 ]
  %4246 = phi float [ %4303, %4297 ], [ 0.000000e+00, %4239 ]
  %4247 = phi i32 [ %4304, %4297 ], [ 0, %4239 ]
  %4248 = shl i32 %4247, 2
  %4249 = add i32 %4115, %4248
  %4250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4249, i32 undef)  ; BufferLoad(srv,index,wot)
  %4251 = extractvalue %dx.types.ResRet.f32 %4250, 0
  %4252 = add i32 %4119, %4248
  %4253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4252, i32 undef)  ; BufferLoad(srv,index,wot)
  %4254 = extractvalue %dx.types.ResRet.i32 %4253, 0
  %4255 = add i32 %4254, 0
  %4256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4255, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4257 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4256, i32 0)  ; GetDimensions(handle,mipLevel)
  %4258 = extractvalue %dx.types.Dimensions %4257, 0
  %4259 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4258)  ; FirstbitLo(value)
  %4260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4261 = extractvalue %dx.types.CBufRet.i32 %4260, 1
  %4262 = sub nsw i32 %4261, %4259
  %4263 = sitofp i32 %4262 to float
  %4264 = fsub fast float %4148, %4263
  %4265 = call float @dx.op.binary.f32(i32 35, float %4264, float 0.000000e+00)  ; FMax(a,b)
  %4266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4256, %dx.types.Handle %24, float %4236, float %4237, float %4251, float undef, i32 0, i32 0, i32 undef, float %4265)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4267 = extractvalue %dx.types.ResRet.f32 %4266, 0
  %4268 = fcmp fast ogt float %4267, 0.000000e+00
  br i1 %4268, label %4269, label %4297

; <label>:4269                                    ; preds = %4240
  %4270 = add i32 %4230, %4248
  %4271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4270, i32 undef)  ; BufferLoad(srv,index,wot)
  %4272 = extractvalue %dx.types.ResRet.i32 %4271, 0
  %4273 = and i32 %4272, 32767
  %4274 = mul nuw nsw i32 %4273, 928
  %4275 = add nuw nsw i32 %4274, 48
  %4276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4275, i32 undef)  ; BufferLoad(srv,index,wot)
  %4277 = extractvalue %dx.types.ResRet.f32 %4276, 0
  %4278 = extractvalue %dx.types.ResRet.f32 %4276, 1
  %4279 = extractvalue %dx.types.ResRet.f32 %4276, 2
  %4280 = add nuw nsw i32 %4274, 60
  %4281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4280, i32 undef)  ; BufferLoad(srv,index,wot)
  %4282 = extractvalue %dx.types.ResRet.f32 %4281, 0
  %4283 = extractvalue %dx.types.ResRet.f32 %4281, 1
  %4284 = extractvalue %dx.types.ResRet.f32 %4281, 2
  %4285 = fmul fast float %4277, %4267
  %4286 = fmul fast float %4278, %4267
  %4287 = fmul fast float %4279, %4267
  %4288 = fadd fast float %4285, %4241
  %4289 = fadd fast float %4286, %4242
  %4290 = fadd fast float %4287, %4243
  %4291 = fmul fast float %4282, %4267
  %4292 = fmul fast float %4283, %4267
  %4293 = fmul fast float %4284, %4267
  %4294 = fadd fast float %4291, %4244
  %4295 = fadd fast float %4292, %4245
  %4296 = fadd fast float %4293, %4246
  br label %4297

; <label>:4297                                    ; preds = %4269, %4240
  %4298 = phi float [ %4288, %4269 ], [ %4241, %4240 ]
  %4299 = phi float [ %4289, %4269 ], [ %4242, %4240 ]
  %4300 = phi float [ %4290, %4269 ], [ %4243, %4240 ]
  %4301 = phi float [ %4294, %4269 ], [ %4244, %4240 ]
  %4302 = phi float [ %4295, %4269 ], [ %4245, %4240 ]
  %4303 = phi float [ %4296, %4269 ], [ %4246, %4240 ]
  %4304 = add nuw i32 %4247, 1
  %4305 = icmp eq i32 %4304, %4229
  br i1 %4305, label %4306, label %4240

; <label>:4306                                    ; preds = %4297
  br label %4307

; <label>:4307                                    ; preds = %4306, %4170
  %4308 = phi float [ 0.000000e+00, %4170 ], [ %4298, %4306 ]
  %4309 = phi float [ 0.000000e+00, %4170 ], [ %4299, %4306 ]
  %4310 = phi float [ 0.000000e+00, %4170 ], [ %4300, %4306 ]
  %4311 = phi float [ 0.000000e+00, %4170 ], [ %4301, %4306 ]
  %4312 = phi float [ 0.000000e+00, %4170 ], [ %4302, %4306 ]
  %4313 = phi float [ 0.000000e+00, %4170 ], [ %4303, %4306 ]
  %4314 = fadd fast float %4311, %4308
  %4315 = fmul fast float %4314, 0x3F847AE140000000
  %4316 = fadd fast float %4312, %4309
  %4317 = fmul fast float %4316, 0x3F847AE140000000
  %4318 = fadd fast float %4313, %4310
  %4319 = fmul fast float %4318, 0x3F847AE140000000
  br label %4320

; <label>:4320                                    ; preds = %4307, %4104, %4049, %4046, %4017, %3979
  %4321 = phi float [ %4031, %4017 ], [ -1.310720e+05, %3979 ], [ %4223, %4307 ], [ -1.310720e+05, %4049 ], [ -1.310720e+05, %4104 ], [ -1.310720e+05, %4046 ]
  %4322 = phi float [ %4041, %4017 ], [ 0.000000e+00, %3979 ], [ %4315, %4307 ], [ 0.000000e+00, %4049 ], [ 0.000000e+00, %4104 ], [ 0.000000e+00, %4046 ]
  %4323 = phi float [ %4043, %4017 ], [ 0.000000e+00, %3979 ], [ %4317, %4307 ], [ 0.000000e+00, %4049 ], [ 0.000000e+00, %4104 ], [ 0.000000e+00, %4046 ]
  %4324 = phi float [ %4045, %4017 ], [ 0.000000e+00, %3979 ], [ %4319, %4307 ], [ 0.000000e+00, %4049 ], [ 0.000000e+00, %4104 ], [ 0.000000e+00, %4046 ]
  %4325 = phi i1 [ true, %4017 ], [ false, %3979 ], [ true, %4307 ], [ false, %4049 ], [ false, %4104 ], [ false, %4046 ]
  %4326 = and i32 %180, 3
  %4327 = icmp eq i32 %4326, 1
  %4328 = select i1 %4327, float 1.000000e+00, float 0.000000e+00
  %4329 = fsub fast float %4321, %132
  %4330 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4331 = select i1 %4325, float %4330, float 1.000000e+00
  %4332 = fmul fast float %4331, %4328
  %4333 = icmp eq i32 %4326, 3
  %4334 = select i1 %4333, float 1.000000e+00, float %4332
  %4335 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4334)  ; FMax(a,b)
  %4336 = call float @dx.op.unary.f32(i32 7, float %4335)  ; Saturate(value)
  %4337 = fcmp fast une float %4336, 0.000000e+00
  %4338 = fsub fast float -0.000000e+00, %150
  %4339 = fsub fast float -0.000000e+00, %151
  %4340 = fsub fast float -0.000000e+00, %152
  br i1 %4337, label %4341, label %4503

; <label>:4341                                    ; preds = %4320
  %4342 = call float @dx.op.dot3.f32(i32 55, float %4338, float %4339, float %4340, float %80, float %82, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %4343 = fmul fast float %4336, 2.500000e+00
  %4344 = call float @dx.op.unary.f32(i32 7, float %4343)  ; Saturate(value)
  %4345 = fmul fast float %4336, 0x4013FFFFE0000000
  %4346 = fadd fast float %4345, 0xBFFFFFFFE0000000
  %4347 = call float @dx.op.unary.f32(i32 7, float %4346)  ; Saturate(value)
  %4348 = fmul fast float %4336, 0x4004000020000000
  %4349 = fadd fast float %4348, 0xBFF8000040000000
  %4350 = call float @dx.op.unary.f32(i32 7, float %4349)  ; Saturate(value)
  %4351 = call float @dx.op.unary.f32(i32 7, float %4344)  ; Saturate(value)
  %4352 = fmul fast float %3859, 1.000000e+01
  %4353 = call float @dx.op.unary.f32(i32 7, float %4352)  ; Saturate(value)
  %4354 = fmul fast float %4353, 2.000000e+00
  %4355 = fsub fast float 3.000000e+00, %4354
  %4356 = fmul fast float %4353, %4353
  %4357 = fmul fast float %4356, %4355
  %4358 = fsub fast float 1.000000e+00, %4357
  %4359 = fsub fast float 0x3FE3333340000000, %3880
  %4360 = fmul fast float %4359, 0x400AAAAAA0000000
  %4361 = call float @dx.op.unary.f32(i32 7, float %4360)  ; Saturate(value)
  %4362 = fmul fast float %4358, %4361
  %4363 = fmul fast float %3958, 0x3FEA2B8620000000
  %4364 = fmul fast float %3959, 0x3FEA2B8620000000
  %4365 = fmul fast float %3960, 0x3FEA2B8620000000
  %4366 = fadd fast float %4363, 0x3FC81DFBA0000000
  %4367 = fmul fast float %4366, %3958
  %4368 = fadd fast float %4367, 0x3F910E6020000000
  %4369 = fadd fast float %4364, 0x3FC81DFBA0000000
  %4370 = fmul fast float %4369, %3959
  %4371 = fadd fast float %4370, 0x3F910E6020000000
  %4372 = fadd fast float %4365, 0x3FC81DFBA0000000
  %4373 = fmul fast float %4372, %3960
  %4374 = fadd fast float %4373, 0x3F910E6020000000
  %4375 = call float @dx.op.unary.f32(i32 7, float %4368)  ; Saturate(value)
  %4376 = call float @dx.op.unary.f32(i32 7, float %4371)  ; Saturate(value)
  %4377 = call float @dx.op.unary.f32(i32 7, float %4374)  ; Saturate(value)
  %4378 = fsub fast float %4375, %3958
  %4379 = fsub fast float %4376, %3959
  %4380 = fsub fast float %4377, %3960
  %4381 = fmul fast float %4378, %4351
  %4382 = fmul fast float %4381, %4362
  %4383 = fmul fast float %4379, %4351
  %4384 = fmul fast float %4383, %4362
  %4385 = fmul fast float %4380, %4351
  %4386 = fmul fast float %4385, %4362
  %4387 = fadd fast float %4382, %3958
  %4388 = fadd fast float %4384, %3959
  %4389 = fadd fast float %4386, %3960
  %4390 = fmul fast float %3804, %3804
  %4391 = fmul fast float %4390, %4390
  %4392 = fadd fast float %4347, 1.000000e+00
  %4393 = fsub fast float %4392, %4362
  %4394 = call float @dx.op.unary.f32(i32 7, float %4393)  ; Saturate(value)
  %4395 = call float @dx.op.dot3.f32(i32 55, float %80, float %82, float %84, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4396 = call float @dx.op.unary.f32(i32 7, float %4395)  ; Saturate(value)
  %4397 = fsub fast float 1.000000e+00, %4391
  %4398 = call float @dx.op.binary.f32(i32 36, float %4394, float %4397)  ; FMin(a,b)
  %4399 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4400 = call float @dx.op.binary.f32(i32 35, float %4398, float %4399)  ; FMax(a,b)
  %4401 = fadd fast float %4396, 0xBFE4CCCCC0000000
  %4402 = fmul fast float %4401, 0x4006DB6DA0000000
  %4403 = call float @dx.op.unary.f32(i32 7, float %4402)  ; Saturate(value)
  %4404 = fmul fast float %4403, 2.000000e+00
  %4405 = fsub fast float 3.000000e+00, %4404
  %4406 = bitcast float %3877 to i32
  %4407 = ashr i32 %4406, 1
  %4408 = add nsw i32 %4407, 532487669
  %4409 = bitcast i32 %4408 to float
  %4410 = fsub fast float 1.000000e+00, %4409
  %4411 = bitcast float %4410 to i32
  %4412 = sub nsw i32 2129859010, %4411
  %4413 = bitcast i32 %4412 to float
  %4414 = fmul fast float %4413, 2.000000e+00
  %4415 = bitcast float %3878 to i32
  %4416 = ashr i32 %4415, 1
  %4417 = add nsw i32 %4416, 532487669
  %4418 = bitcast i32 %4417 to float
  %4419 = fsub fast float 1.000000e+00, %4418
  %4420 = bitcast float %4419 to i32
  %4421 = sub nsw i32 2129859010, %4420
  %4422 = bitcast i32 %4421 to float
  %4423 = fmul fast float %4422, 2.000000e+00
  %4424 = bitcast float %3879 to i32
  %4425 = ashr i32 %4424, 1
  %4426 = add nsw i32 %4425, 532487669
  %4427 = bitcast i32 %4426 to float
  %4428 = fsub fast float 1.000000e+00, %4427
  %4429 = bitcast float %4428 to i32
  %4430 = sub nsw i32 2129859010, %4429
  %4431 = bitcast i32 %4430 to float
  %4432 = fmul fast float %4431, 2.000000e+00
  %4433 = fsub fast float 0x4002A9FBE0000000, %4414
  %4434 = fadd fast float %4414, 0x3FD54FDF00000000
  %4435 = bitcast float %4434 to i32
  %4436 = sub nsw i32 2129859010, %4435
  %4437 = bitcast i32 %4436 to float
  %4438 = fmul fast float %4437, %4433
  %4439 = fmul fast float %4438, %4438
  %4440 = fsub fast float 0x4002A9FBE0000000, %4423
  %4441 = fadd fast float %4423, 0x3FD54FDF00000000
  %4442 = bitcast float %4441 to i32
  %4443 = sub nsw i32 2129859010, %4442
  %4444 = bitcast i32 %4443 to float
  %4445 = fmul fast float %4444, %4440
  %4446 = fmul fast float %4445, %4445
  %4447 = fsub fast float 0x4002A9FBE0000000, %4432
  %4448 = fadd fast float %4432, 0x3FD54FDF00000000
  %4449 = bitcast float %4448 to i32
  %4450 = sub nsw i32 2129859010, %4449
  %4451 = bitcast i32 %4450 to float
  %4452 = fmul fast float %4451, %4447
  %4453 = fmul fast float %4452, %4452
  %4454 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4439)  ; FMax(a,b)
  %4455 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4446)  ; FMax(a,b)
  %4456 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4453)  ; FMax(a,b)
  %4457 = fsub fast float 1.000000e+00, %4342
  %4458 = fadd fast float %4457, %4358
  %4459 = call float @dx.op.unary.f32(i32 7, float %4458)  ; Saturate(value)
  %4460 = fsub fast float 1.000000e+00, %4334
  %4461 = fmul fast float %4400, %4460
  %4462 = fmul fast float %4403, %4403
  %4463 = fmul fast float %4462, %4461
  %4464 = fmul fast float %4463, %4405
  %4465 = fmul fast float %4460, 0xBFE99999A0000000
  %4466 = fmul fast float %4465, %4351
  %4467 = fmul fast float %4466, %4362
  %4468 = fadd fast float %4467, 1.000000e+00
  %4469 = fadd fast float %3880, -1.000000e+00
  %4470 = fmul fast float %4468, %4469
  %4471 = fadd fast float %4470, 1.000000e+00
  %4472 = fsub fast float %4454, %3877
  %4473 = fsub fast float %4455, %3878
  %4474 = fsub fast float %4456, %3879
  %4475 = fmul fast float %4464, %4472
  %4476 = fmul fast float %4464, %4473
  %4477 = fmul fast float %4464, %4474
  %4478 = fadd fast float %4475, %3877
  %4479 = fadd fast float %4476, %3878
  %4480 = fadd fast float %4477, %3879
  %4481 = fsub fast float %80, %3834
  %4482 = fsub fast float %82, %3835
  %4483 = fsub fast float %84, %3836
  %4484 = fmul fast float %4464, %4481
  %4485 = fmul fast float %4464, %4482
  %4486 = fmul fast float %4464, %4483
  %4487 = fadd fast float %4484, %3834
  %4488 = fadd fast float %4485, %3835
  %4489 = fadd fast float %4486, %3836
  %4490 = fmul fast float %4464, %4459
  %4491 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4492 = fsub fast float 1.000000e+00, %4491
  %4493 = fmul fast float %4490, %4492
  %4494 = fadd fast float %4493, %4491
  %4495 = fsub fast float 1.000000e+00, %3804
  %4496 = fmul fast float %4464, %4495
  %4497 = fadd fast float %4496, %3804
  %4498 = call float @dx.op.dot3.f32(i32 55, float %4487, float %4488, float %4489, float %4487, float %4488, float %4489)  ; Dot3(ax,ay,az,bx,by,bz)
  %4499 = call float @dx.op.unary.f32(i32 25, float %4498)  ; Rsqrt(value)
  %4500 = fmul fast float %4487, %4499
  %4501 = fmul fast float %4488, %4499
  %4502 = fmul fast float %4489, %4499
  br label %4503

; <label>:4503                                    ; preds = %4341, %4320
  %4504 = phi float [ %4387, %4341 ], [ %3958, %4320 ]
  %4505 = phi float [ %4388, %4341 ], [ %3959, %4320 ]
  %4506 = phi float [ %4389, %4341 ], [ %3960, %4320 ]
  %4507 = phi float [ %4500, %4341 ], [ %3834, %4320 ]
  %4508 = phi float [ %4501, %4341 ], [ %3835, %4320 ]
  %4509 = phi float [ %4502, %4341 ], [ %3836, %4320 ]
  %4510 = phi float [ %4478, %4341 ], [ %3877, %4320 ]
  %4511 = phi float [ %4479, %4341 ], [ %3878, %4320 ]
  %4512 = phi float [ %4480, %4341 ], [ %3879, %4320 ]
  %4513 = phi float [ %4494, %4341 ], [ %3880, %4320 ]
  %4514 = phi float [ %4497, %4341 ], [ %3804, %4320 ]
  %4515 = select i1 %206, float 0.000000e+00, float %4512
  %4516 = call float @dx.op.dot3.f32(i32 55, float %4507, float %4508, float %4509, float %4338, float %4339, float %4340)  ; Dot3(ax,ay,az,bx,by,bz)
  %4517 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4518 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %4507, float %4508, float %4509)  ; Dot3(ax,ay,az,bx,by,bz)
  %4519 = fmul fast float %4518, 2.000000e+00
  %4520 = fmul fast float %4519, %4507
  %4521 = fmul fast float %4519, %4508
  %4522 = fmul fast float %4519, %4509
  %4523 = fsub fast float %150, %4520
  %4524 = fsub fast float %151, %4521
  %4525 = fsub fast float %152, %4522
  %4526 = call float @dx.op.binary.f32(i32 36, float %4514, float 1.000000e+00)  ; FMin(a,b)
  %4527 = fsub fast float 1.000000e+00, %4514
  %4528 = bitcast float %4527 to i32
  %4529 = sub nsw i32 2129859010, %4528
  %4530 = bitcast i32 %4529 to float
  %4531 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %48)  ; FMax(a,b)
  %4532 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %4533 = fcmp fast oeq float %4532, 0.000000e+00
  %4534 = fcmp fast oeq float %4531, 0.000000e+00
  %4535 = or i1 %4534, %4533
  br i1 %4535, label %4565, label %4536

; <label>:4536                                    ; preds = %4503
  %4537 = fsub fast float -0.000000e+00, %51
  %4538 = fsub fast float -0.000000e+00, %49
  %4539 = call float @dx.op.unary.f32(i32 24, float %4532)  ; Sqrt(value)
  %4540 = fdiv fast float %4539, %4531
  %4541 = fcmp fast ogt float %4540, 0x3FFB6F8900000000
  %4542 = select i1 %4541, float 0x3FFB6F8900000000, float %4540
  %4543 = fmul fast float %4542, 0x3FE8A23460000000
  %4544 = call float @dx.op.unary.f32(i32 7, float %4543)  ; Saturate(value)
  %4545 = call float @dx.op.binary.f32(i32 35, float %4542, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4546 = fmul fast float %4544, %4531
  %4547 = fmul fast float %4545, 0x3FF279A740000000
  %4548 = fadd fast float %4547, -1.000000e+00
  %4549 = call float @dx.op.dot3.f32(i32 55, float %4537, float %4538, float %50, float %4537, float %4538, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %4550 = call float @dx.op.unary.f32(i32 25, float %4549)  ; Rsqrt(value)
  %4551 = fmul fast float %4550, %4537
  %4552 = fmul fast float %4550, %4538
  %4553 = fmul fast float %4550, %50
  %4554 = fmul fast float %4548, %4548
  %4555 = fsub fast float 1.000000e+00, %4554
  %4556 = fmul fast float %4545, 0x40005F8BE0000000
  %4557 = fsub fast float 0x400C5BF8A0000000, %4556
  %4558 = fdiv fast float %4546, %4557
  %4559 = fmul fast float %4558, 0x3FEE31C3C0000000
  %4560 = fmul fast float %4559, %4555
  %4561 = fmul fast float %4545, 0x3FDACB7480000000
  %4562 = fadd fast float %4561, 0xBFD7347680000000
  %4563 = fmul fast float %4562, %4558
  %4564 = fmul fast float %4563, %4555
  br label %4565

; <label>:4565                                    ; preds = %4536, %4503
  %4566 = phi float [ %4551, %4536 ], [ 0.000000e+00, %4503 ]
  %4567 = phi float [ %4552, %4536 ], [ 0.000000e+00, %4503 ]
  %4568 = phi float [ %4553, %4536 ], [ 0.000000e+00, %4503 ]
  %4569 = phi float [ %4560, %4536 ], [ 0.000000e+00, %4503 ]
  %4570 = phi float [ %4564, %4536 ], [ 0.000000e+00, %4503 ]
  %4571 = call float @dx.op.dot3.f32(i32 55, float %4566, float %4567, float %4568, float %4507, float %4508, float %4509)  ; Dot3(ax,ay,az,bx,by,bz)
  %4572 = fmul fast float %4571, 0x3FDF454380000000
  %4573 = fmul fast float %4571, %4571
  %4574 = fmul fast float %4573, 0x3FEE471020000000
  %4575 = fadd fast float %4574, 0xBFD42F6020000000
  %4576 = fmul fast float %4531, 0x3FD20DD760000000
  %4577 = fmul fast float %4575, %4570
  %4578 = fadd fast float %4577, %4576
  %4579 = fmul fast float %4572, %4569
  %4580 = fadd fast float %4578, %4579
  %4581 = fsub fast float %4578, %4579
  %4582 = call float @dx.op.dot3.f32(i32 55, float %4566, float %4567, float %4568, float %4523, float %4524, float %4525)  ; Dot3(ax,ay,az,bx,by,bz)
  %4583 = fmul fast float %4582, 0x3FDF454380000000
  %4584 = fmul fast float %4582, %4582
  %4585 = fmul fast float %4584, 0x3FEE471020000000
  %4586 = fadd fast float %4585, 0xBFD42F6020000000
  %4587 = call float @dx.op.dot3.f32(i32 55, float %4531, float %4569, float %4570, float 0x3FD20DD760000000, float %4583, float %4586)  ; Dot3(ax,ay,az,bx,by,bz)
  %4588 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %44)  ; FMax(a,b)
  %4589 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float %45, float %46, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %4590 = fcmp fast oeq float %4589, 0.000000e+00
  %4591 = fcmp fast oeq float %4588, 0.000000e+00
  %4592 = or i1 %4591, %4590
  br i1 %4592, label %4622, label %4593

; <label>:4593                                    ; preds = %4565
  %4594 = fsub fast float -0.000000e+00, %47
  %4595 = fsub fast float -0.000000e+00, %45
  %4596 = call float @dx.op.unary.f32(i32 24, float %4589)  ; Sqrt(value)
  %4597 = fdiv fast float %4596, %4588
  %4598 = fcmp fast ogt float %4597, 0x3FFB6F8900000000
  %4599 = select i1 %4598, float 0x3FFB6F8900000000, float %4597
  %4600 = fmul fast float %4599, 0x3FE8A23460000000
  %4601 = call float @dx.op.unary.f32(i32 7, float %4600)  ; Saturate(value)
  %4602 = call float @dx.op.binary.f32(i32 35, float %4599, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4603 = fmul fast float %4601, %4588
  %4604 = fmul fast float %4602, 0x3FF279A740000000
  %4605 = fadd fast float %4604, -1.000000e+00
  %4606 = call float @dx.op.dot3.f32(i32 55, float %4594, float %4595, float %46, float %4594, float %4595, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %4607 = call float @dx.op.unary.f32(i32 25, float %4606)  ; Rsqrt(value)
  %4608 = fmul fast float %4607, %4594
  %4609 = fmul fast float %4607, %4595
  %4610 = fmul fast float %4607, %46
  %4611 = fmul fast float %4605, %4605
  %4612 = fsub fast float 1.000000e+00, %4611
  %4613 = fmul fast float %4602, 0x40005F8BE0000000
  %4614 = fsub fast float 0x400C5BF8A0000000, %4613
  %4615 = fdiv fast float %4603, %4614
  %4616 = fmul fast float %4615, 0x3FEE31C3C0000000
  %4617 = fmul fast float %4616, %4612
  %4618 = fmul fast float %4602, 0x3FDACB7480000000
  %4619 = fadd fast float %4618, 0xBFD7347680000000
  %4620 = fmul fast float %4619, %4615
  %4621 = fmul fast float %4620, %4612
  br label %4622

; <label>:4622                                    ; preds = %4593, %4565
  %4623 = phi float [ %4608, %4593 ], [ 0.000000e+00, %4565 ]
  %4624 = phi float [ %4609, %4593 ], [ 0.000000e+00, %4565 ]
  %4625 = phi float [ %4610, %4593 ], [ 0.000000e+00, %4565 ]
  %4626 = phi float [ %4617, %4593 ], [ 0.000000e+00, %4565 ]
  %4627 = phi float [ %4621, %4593 ], [ 0.000000e+00, %4565 ]
  %4628 = call float @dx.op.dot3.f32(i32 55, float %4623, float %4624, float %4625, float %4507, float %4508, float %4509)  ; Dot3(ax,ay,az,bx,by,bz)
  %4629 = fmul fast float %4628, 0x3FDF454380000000
  %4630 = fmul fast float %4628, %4628
  %4631 = fmul fast float %4630, 0x3FEE471020000000
  %4632 = fadd fast float %4631, 0xBFD42F6020000000
  %4633 = fmul fast float %4588, 0x3FD20DD760000000
  %4634 = fmul fast float %4632, %4627
  %4635 = fadd fast float %4634, %4633
  %4636 = fmul fast float %4629, %4626
  %4637 = fadd fast float %4635, %4636
  %4638 = fsub fast float %4635, %4636
  %4639 = call float @dx.op.dot3.f32(i32 55, float %4623, float %4624, float %4625, float %4523, float %4524, float %4525)  ; Dot3(ax,ay,az,bx,by,bz)
  %4640 = fmul fast float %4639, 0x3FDF454380000000
  %4641 = fmul fast float %4639, %4639
  %4642 = fmul fast float %4641, 0x3FEE471020000000
  %4643 = fadd fast float %4642, 0xBFD42F6020000000
  %4644 = call float @dx.op.dot3.f32(i32 55, float %4588, float %4626, float %4627, float 0x3FD20DD760000000, float %4640, float %4643)  ; Dot3(ax,ay,az,bx,by,bz)
  %4645 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %40)  ; FMax(a,b)
  %4646 = call float @dx.op.dot3.f32(i32 55, float %41, float %42, float %43, float %41, float %42, float %43)  ; Dot3(ax,ay,az,bx,by,bz)
  %4647 = fcmp fast oeq float %4646, 0.000000e+00
  %4648 = fcmp fast oeq float %4645, 0.000000e+00
  %4649 = or i1 %4648, %4647
  br i1 %4649, label %4679, label %4650

; <label>:4650                                    ; preds = %4622
  %4651 = fsub fast float -0.000000e+00, %43
  %4652 = fsub fast float -0.000000e+00, %41
  %4653 = call float @dx.op.unary.f32(i32 24, float %4646)  ; Sqrt(value)
  %4654 = fdiv fast float %4653, %4645
  %4655 = fcmp fast ogt float %4654, 0x3FFB6F8900000000
  %4656 = select i1 %4655, float 0x3FFB6F8900000000, float %4654
  %4657 = fmul fast float %4656, 0x3FE8A23460000000
  %4658 = call float @dx.op.unary.f32(i32 7, float %4657)  ; Saturate(value)
  %4659 = call float @dx.op.binary.f32(i32 35, float %4656, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4660 = fmul fast float %4658, %4645
  %4661 = fmul fast float %4659, 0x3FF279A740000000
  %4662 = fadd fast float %4661, -1.000000e+00
  %4663 = call float @dx.op.dot3.f32(i32 55, float %4651, float %4652, float %42, float %4651, float %4652, float %42)  ; Dot3(ax,ay,az,bx,by,bz)
  %4664 = call float @dx.op.unary.f32(i32 25, float %4663)  ; Rsqrt(value)
  %4665 = fmul fast float %4664, %4651
  %4666 = fmul fast float %4664, %4652
  %4667 = fmul fast float %4664, %42
  %4668 = fmul fast float %4662, %4662
  %4669 = fsub fast float 1.000000e+00, %4668
  %4670 = fmul fast float %4659, 0x40005F8BE0000000
  %4671 = fsub fast float 0x400C5BF8A0000000, %4670
  %4672 = fdiv fast float %4660, %4671
  %4673 = fmul fast float %4672, 0x3FEE31C3C0000000
  %4674 = fmul fast float %4673, %4669
  %4675 = fmul fast float %4659, 0x3FDACB7480000000
  %4676 = fadd fast float %4675, 0xBFD7347680000000
  %4677 = fmul fast float %4676, %4672
  %4678 = fmul fast float %4677, %4669
  br label %4679

; <label>:4679                                    ; preds = %4650, %4622
  %4680 = phi float [ %4665, %4650 ], [ 0.000000e+00, %4622 ]
  %4681 = phi float [ %4666, %4650 ], [ 0.000000e+00, %4622 ]
  %4682 = phi float [ %4667, %4650 ], [ 0.000000e+00, %4622 ]
  %4683 = phi float [ %4674, %4650 ], [ 0.000000e+00, %4622 ]
  %4684 = phi float [ %4678, %4650 ], [ 0.000000e+00, %4622 ]
  %4685 = call float @dx.op.dot3.f32(i32 55, float %4680, float %4681, float %4682, float %4507, float %4508, float %4509)  ; Dot3(ax,ay,az,bx,by,bz)
  %4686 = fmul fast float %4685, 0x3FDF454380000000
  %4687 = fmul fast float %4685, %4685
  %4688 = fmul fast float %4687, 0x3FEE471020000000
  %4689 = fadd fast float %4688, 0xBFD42F6020000000
  %4690 = fmul fast float %4645, 0x3FD20DD760000000
  %4691 = fmul fast float %4689, %4684
  %4692 = fadd fast float %4691, %4690
  %4693 = fmul fast float %4686, %4683
  %4694 = fadd fast float %4692, %4693
  %4695 = fsub fast float %4692, %4693
  %4696 = call float @dx.op.dot3.f32(i32 55, float %4680, float %4681, float %4682, float %4523, float %4524, float %4525)  ; Dot3(ax,ay,az,bx,by,bz)
  %4697 = fmul fast float %4696, 0x3FDF454380000000
  %4698 = fmul fast float %4696, %4696
  %4699 = fmul fast float %4698, 0x3FEE471020000000
  %4700 = fadd fast float %4699, 0xBFD42F6020000000
  %4701 = call float @dx.op.dot3.f32(i32 55, float %4645, float %4683, float %4684, float 0x3FD20DD760000000, float %4697, float %4700)  ; Dot3(ax,ay,az,bx,by,bz)
  %4702 = call float @dx.op.binary.f32(i32 35, float %4580, float 0.000000e+00)  ; FMax(a,b)
  %4703 = call float @dx.op.binary.f32(i32 35, float %4637, float 0.000000e+00)  ; FMax(a,b)
  %4704 = call float @dx.op.binary.f32(i32 35, float %4694, float 0.000000e+00)  ; FMax(a,b)
  %4705 = call float @dx.op.binary.f32(i32 35, float %4581, float 0.000000e+00)  ; FMax(a,b)
  %4706 = call float @dx.op.binary.f32(i32 35, float %4638, float 0.000000e+00)  ; FMax(a,b)
  %4707 = call float @dx.op.binary.f32(i32 35, float %4695, float 0.000000e+00)  ; FMax(a,b)
  %4708 = call float @dx.op.binary.f32(i32 35, float %4587, float 0.000000e+00)  ; FMax(a,b)
  %4709 = call float @dx.op.binary.f32(i32 35, float %4644, float 0.000000e+00)  ; FMax(a,b)
  %4710 = call float @dx.op.binary.f32(i32 35, float %4701, float 0.000000e+00)  ; FMax(a,b)
  %4711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4712 = extractvalue %dx.types.CBufRet.f32 %4711, 0
  %4713 = call float @dx.op.binary.f32(i32 36, float %4504, float %4712)  ; FMin(a,b)
  %4714 = fsub fast float 1.000000e+00, %4526
  %4715 = fmul fast float %4713, %4714
  %4716 = fsub fast float 1.000000e+00, %4715
  %4717 = bitcast float %4716 to i32
  %4718 = sub nsw i32 2129859010, %4717
  %4719 = bitcast i32 %4718 to float
  %4720 = call float @dx.op.binary.f32(i32 36, float %4505, float %4712)  ; FMin(a,b)
  %4721 = fmul fast float %4720, %4714
  %4722 = fsub fast float 1.000000e+00, %4721
  %4723 = bitcast float %4722 to i32
  %4724 = sub nsw i32 2129859010, %4723
  %4725 = bitcast i32 %4724 to float
  %4726 = call float @dx.op.binary.f32(i32 36, float %4506, float %4712)  ; FMin(a,b)
  %4727 = fmul fast float %4726, %4714
  %4728 = fsub fast float 1.000000e+00, %4727
  %4729 = bitcast float %4728 to i32
  %4730 = sub nsw i32 2129859010, %4729
  %4731 = bitcast i32 %4730 to float
  %4732 = fmul fast float %4702, %4526
  %4733 = fmul fast float %4732, %4719
  %4734 = fmul fast float %4703, %4526
  %4735 = fmul fast float %4734, %4725
  %4736 = fmul fast float %4704, %4526
  %4737 = fmul fast float %4736, %4731
  %4738 = call float @dx.op.binary.f32(i32 36, float %4510, float %4712)  ; FMin(a,b)
  %4739 = fmul fast float %4738, %4714
  %4740 = fsub fast float 1.000000e+00, %4739
  %4741 = bitcast float %4740 to i32
  %4742 = sub nsw i32 2129859010, %4741
  %4743 = bitcast i32 %4742 to float
  %4744 = call float @dx.op.binary.f32(i32 36, float %4511, float %4712)  ; FMin(a,b)
  %4745 = fmul fast float %4744, %4714
  %4746 = fsub fast float 1.000000e+00, %4745
  %4747 = bitcast float %4746 to i32
  %4748 = sub nsw i32 2129859010, %4747
  %4749 = bitcast i32 %4748 to float
  %4750 = call float @dx.op.binary.f32(i32 36, float %4515, float %4712)  ; FMin(a,b)
  %4751 = fmul fast float %4750, %4714
  %4752 = fsub fast float 1.000000e+00, %4751
  %4753 = bitcast float %4752 to i32
  %4754 = sub nsw i32 2129859010, %4753
  %4755 = bitcast i32 %4754 to float
  %4756 = fmul fast float %4708, %4526
  %4757 = fmul fast float %4756, %4743
  %4758 = fmul fast float %4709, %4526
  %4759 = fmul fast float %4758, %4749
  %4760 = fmul fast float %4710, %4526
  %4761 = fmul fast float %4760, %4755
  %4762 = call float @dx.op.dot3.f32(i32 55, float %4733, float %4735, float %4737, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4763 = select i1 %206, float 0.000000e+00, float %4733
  %4764 = select i1 %206, float %4762, float %4735
  %4765 = select i1 %206, float 0.000000e+00, float %4737
  %4766 = call float @dx.op.dot3.f32(i32 55, float %4705, float %4706, float %4707, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4767 = select i1 %206, float 0.000000e+00, float %4705
  %4768 = select i1 %206, float %4766, float %4706
  %4769 = select i1 %206, float 0.000000e+00, float %4707
  %4770 = call float @dx.op.dot3.f32(i32 55, float %4757, float %4759, float %4761, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4771 = select i1 %206, float 0.000000e+00, float %4757
  %4772 = select i1 %206, float %4770, float %4759
  %4773 = select i1 %206, float 0.000000e+00, float %4761
  %4774 = fmul fast float %4517, 9.843750e-01
  %4775 = fmul fast float %4513, 9.843750e-01
  %4776 = fadd fast float %4774, 7.812500e-03
  %4777 = fadd fast float %4775, 7.812500e-03
  %4778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %4776, float %4777, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4779 = extractvalue %dx.types.ResRet.f32 %4778, 2
  %4780 = extractvalue %dx.types.ResRet.f32 %4778, 3
  %4781 = fmul fast float %4779, %4510
  %4782 = fmul fast float %4779, %4511
  %4783 = fmul fast float %4779, %4515
  %4784 = fadd fast float %4781, %4780
  %4785 = fadd fast float %4782, %4780
  %4786 = fadd fast float %4783, %4780
  %4787 = call float @dx.op.binary.f32(i32 35, float %4785, float %4786)  ; FMax(a,b)
  %4788 = call float @dx.op.binary.f32(i32 35, float %4784, float %4787)  ; FMax(a,b)
  %4789 = fsub fast float 1.000000e+00, %4788
  %4790 = fmul fast float %4784, %4771
  %4791 = fmul fast float %4785, %4772
  %4792 = fmul fast float %4786, %4773
  %4793 = fadd fast float %4790, %3796
  %4794 = fmul fast float %4793, %3858
  %4795 = fadd fast float %4791, %3797
  %4796 = fmul fast float %4795, %3858
  %4797 = fadd fast float %4792, %3798
  %4798 = fmul fast float %4797, %3858
  %4799 = fmul fast float %4789, %4765
  %4800 = fmul fast float %4789, %4764
  %4801 = fmul fast float %4789, %4763
  %4802 = fmul fast float %4789, %3946
  %4803 = fadd fast float %4802, -1.000000e+00
  %4804 = fmul fast float %4803, %3858
  %4805 = fadd fast float %4804, 1.000000e+00
  %4806 = fmul fast float %4789, %3945
  %4807 = fadd fast float %4806, -1.000000e+00
  %4808 = fmul fast float %4807, %3858
  %4809 = fadd fast float %4808, 1.000000e+00
  %4810 = fmul fast float %4789, %3944
  %4811 = fadd fast float %4810, -1.000000e+00
  %4812 = fmul fast float %4811, %3858
  %4813 = fadd fast float %4812, 1.000000e+00
  %4814 = fmul fast float %4813, %4767
  %4815 = fmul fast float %4809, %4768
  %4816 = fmul fast float %4805, %4769
  %4817 = fadd fast float %4814, %4801
  %4818 = fmul fast float %4817, %3858
  %4819 = fadd fast float %4815, %4800
  %4820 = fmul fast float %4819, %3858
  %4821 = fadd fast float %4816, %4799
  %4822 = fmul fast float %4821, %3858
  %4823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4824 = extractvalue %dx.types.CBufRet.f32 %4823, 3
  %4825 = fcmp fast oeq float %4824, 0.000000e+00
  br i1 %4825, label %5011, label %4826

; <label>:4826                                    ; preds = %4679
  %4827 = extractvalue %dx.types.CBufRet.f32 %4823, 0
  %4828 = extractvalue %dx.types.CBufRet.f32 %4823, 1
  %4829 = extractvalue %dx.types.CBufRet.f32 %4823, 2
  %4830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4831 = extractvalue %dx.types.CBufRet.f32 %4830, 0
  %4832 = extractvalue %dx.types.CBufRet.f32 %4830, 1
  %4833 = extractvalue %dx.types.CBufRet.f32 %4830, 2
  %4834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4835 = extractvalue %dx.types.CBufRet.f32 %4834, 0
  %4836 = extractvalue %dx.types.CBufRet.f32 %4834, 1
  %4837 = call float @dx.op.dot3.f32(i32 55, float %4831, float %4832, float %4833, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4838 = select i1 %206, float %4835, float %4831
  %4839 = select i1 %206, float %4837, float %4832
  %4840 = select i1 %206, float %4836, float %4833
  %4841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4842 = extractvalue %dx.types.CBufRet.f32 %4841, 1
  %4843 = fcmp fast une float %4842, 0.000000e+00
  br i1 %4843, label %4844, label %4861

; <label>:4844                                    ; preds = %4826
  %4845 = fptoui float %71 to i32
  %4846 = fptoui float %72 to i32
  %4847 = lshr i32 %4845, 4
  %4848 = lshr i32 %4846, 4
  %4849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4850 = extractvalue %dx.types.CBufRet.f32 %4849, 0
  %4851 = fptoui float %4850 to i32
  %4852 = add i32 %4851, 15
  %4853 = lshr i32 %4852, 4
  %4854 = mul i32 %4853, %4848
  %4855 = add i32 %4854, %4847
  %4856 = shl i32 %4855, 3
  %4857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4856, i32 undef)  ; BufferLoad(srv,index,wot)
  %4858 = extractvalue %dx.types.ResRet.i32 %4857, 0
  %4859 = and i32 %4858, -268435456
  %4860 = icmp eq i32 %4859, -1342177280
  br i1 %4860, label %4871, label %4861

; <label>:4861                                    ; preds = %4844, %4826
  %4862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4863 = extractvalue %dx.types.CBufRet.f32 %4862, 2
  %4864 = extractvalue %dx.types.CBufRet.f32 %4862, 3
  %4865 = fmul fast float %4863, %71
  %4866 = fmul fast float %4864, %72
  %4867 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %27, float %4865, float %4866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4868 = extractvalue %dx.types.ResRet.f32 %4867, 0
  %4869 = extractvalue %dx.types.ResRet.f32 %4867, 1
  %4870 = extractvalue %dx.types.ResRet.f32 %4867, 2
  br label %4871

; <label>:4871                                    ; preds = %4861, %4844
  %4872 = phi float [ %4868, %4861 ], [ 0.000000e+00, %4844 ]
  %4873 = phi float [ %4869, %4861 ], [ 0.000000e+00, %4844 ]
  %4874 = phi float [ %4870, %4861 ], [ 0.000000e+00, %4844 ]
  %4875 = call float @dx.op.binary.f32(i32 36, float %4873, float %4874)  ; FMin(a,b)
  %4876 = call float @dx.op.binary.f32(i32 36, float %4872, float %4875)  ; FMin(a,b)
  %4877 = fcmp fast ogt float %4876, 0.000000e+00
  br i1 %4877, label %4878, label %5011, !dx.controlflow.hints !71

; <label>:4878                                    ; preds = %4871
  %4879 = fmul fast float %4872, %4838
  %4880 = fmul fast float %4873, %4839
  %4881 = fmul fast float %4874, %4840
  %4882 = fsub fast float %4827, %150
  %4883 = fsub fast float %4828, %151
  %4884 = fsub fast float %4829, %152
  %4885 = call float @dx.op.dot3.f32(i32 55, float %4882, float %4883, float %4884, float %4882, float %4883, float %4884)  ; Dot3(ax,ay,az,bx,by,bz)
  %4886 = call float @dx.op.unary.f32(i32 25, float %4885)  ; Rsqrt(value)
  %4887 = fmul fast float %4886, %4882
  %4888 = fmul fast float %4886, %4883
  %4889 = fmul fast float %4886, %4884
  %4890 = call float @dx.op.dot3.f32(i32 55, float %4827, float %4828, float %4829, float %4507, float %4508, float %4509)  ; Dot3(ax,ay,az,bx,by,bz)
  %4891 = call float @dx.op.dot3.f32(i32 55, float %4338, float %4339, float %4340, float %4887, float %4888, float %4889)  ; Dot3(ax,ay,az,bx,by,bz)
  %4892 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4893 = fmul fast float %4892, %4892
  %4894 = fmul fast float %4893, %4530
  %4895 = call float @dx.op.unary.f32(i32 7, float %4894)  ; Saturate(value)
  %4896 = fmul fast float %4895, %4892
  %4897 = call float @dx.op.dot3.f32(i32 55, float %4507, float %4508, float %4509, float %4887, float %4888, float %4889)  ; Dot3(ax,ay,az,bx,by,bz)
  %4898 = fmul fast float %4897, %4897
  %4899 = call float @dx.op.unary.f32(i32 6, float %4890)  ; FAbs(value)
  %4900 = fsub fast float 1.000000e+00, %4513
  %4901 = call float @dx.op.binary.f32(i32 35, float %4900, float 0x3F847AE140000000)  ; FMax(a,b)
  %4902 = fmul fast float %4901, %4901
  %4903 = fmul fast float %4902, %4902
  %4904 = fsub fast float 1.000000e+00, %4903
  %4905 = fmul fast float %4517, %4517
  %4906 = fmul fast float %4905, %4904
  %4907 = fadd fast float %4906, %4903
  %4908 = bitcast float %4907 to i32
  %4909 = ashr i32 %4908, 1
  %4910 = add nsw i32 %4909, 532487669
  %4911 = bitcast i32 %4910 to float
  %4912 = fadd fast float %4911, %4517
  %4913 = fmul fast float %4903, %4898
  %4914 = fsub fast float 1.000000e+00, %4898
  %4915 = fadd fast float %4914, %4913
  %4916 = fmul fast float %4899, %4899
  %4917 = fmul fast float %4916, %4904
  %4918 = fadd fast float %4917, %4903
  %4919 = bitcast float %4918 to i32
  %4920 = ashr i32 %4919, 1
  %4921 = add nsw i32 %4920, 532487669
  %4922 = bitcast i32 %4921 to float
  %4923 = fadd fast float %4922, %4899
  %4924 = fmul fast float %4915, %4915
  %4925 = fmul fast float %4924, %4912
  %4926 = fmul fast float %4925, %4923
  %4927 = fdiv fast float 0x3FF0A00000000000, %4926
  %4928 = fmul fast float %4927, %4903
  %4929 = call float @dx.op.unary.f32(i32 6, float %4891)  ; FAbs(value)
  %4930 = fsub fast float 1.000000e+00, %4929
  %4931 = bitcast float %4930 to i32
  %4932 = sitofp i32 %4931 to float
  %4933 = fmul fast float %4932, 5.000000e+00
  %4934 = fadd fast float %4933, 0xC1EFBF8940000000
  %4935 = fptosi float %4934 to i32
  %4936 = bitcast i32 %4935 to float
  %4937 = fsub fast float 1.000000e+00, %4510
  %4938 = fsub fast float 1.000000e+00, %4511
  %4939 = fsub fast float 1.000000e+00, %4515
  %4940 = fmul fast float %4936, %4937
  %4941 = fmul fast float %4936, %4938
  %4942 = fmul fast float %4936, %4939
  %4943 = fadd fast float %4940, %4510
  %4944 = fadd fast float %4941, %4511
  %4945 = fadd fast float %4942, %4515
  %4946 = fmul fast float %4890, 9.843750e-01
  %4947 = fadd fast float %4946, 7.812500e-03
  %4948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %4947, float %4777, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4949 = extractvalue %dx.types.ResRet.f32 %4948, 2
  %4950 = extractvalue %dx.types.ResRet.f32 %4948, 3
  %4951 = fmul fast float %4949, %4510
  %4952 = fmul fast float %4949, %4511
  %4953 = fmul fast float %4949, %4515
  %4954 = fadd fast float %4951, %4950
  %4955 = fadd fast float %4952, %4950
  %4956 = fadd fast float %4953, %4950
  %4957 = call float @dx.op.binary.f32(i32 35, float %4955, float %4956)  ; FMax(a,b)
  %4958 = call float @dx.op.binary.f32(i32 35, float %4954, float %4957)  ; FMax(a,b)
  %4959 = fsub fast float 1.000000e+00, %4958
  %4960 = fsub fast float -0.000000e+00, %4507
  %4961 = fsub fast float -0.000000e+00, %4508
  %4962 = fsub fast float -0.000000e+00, %4509
  %4963 = call float @dx.op.dot3.f32(i32 55, float %4827, float %4828, float %4829, float %4960, float %4961, float %4962)  ; Dot3(ax,ay,az,bx,by,bz)
  %4964 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  %4965 = fmul fast float %4964, 9.843750e-01
  %4966 = fadd fast float %4965, 7.812500e-03
  %4967 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %4966, float %4777, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4968 = extractvalue %dx.types.ResRet.f32 %4967, 2
  %4969 = extractvalue %dx.types.ResRet.f32 %4967, 3
  %4970 = fmul fast float %4968, %4510
  %4971 = fmul fast float %4968, %4511
  %4972 = fmul fast float %4968, %4515
  %4973 = fadd fast float %4970, %4969
  %4974 = fadd fast float %4971, %4969
  %4975 = fadd fast float %4972, %4969
  %4976 = call float @dx.op.binary.f32(i32 35, float %4974, float %4975)  ; FMax(a,b)
  %4977 = call float @dx.op.binary.f32(i32 35, float %4973, float %4976)  ; FMax(a,b)
  %4978 = fsub fast float 1.000000e+00, %4977
  %4979 = fmul fast float %4978, %4964
  %4980 = fmul fast float %4979, %3944
  %4981 = fmul fast float %4979, %3945
  %4982 = fmul fast float %4979, %3946
  %4983 = fmul fast float %4959, %4896
  %4984 = fadd fast float %4980, %4983
  %4985 = fadd fast float %4981, %4983
  %4986 = fadd fast float %4982, %4983
  %4987 = fmul fast float %4984, %4879
  %4988 = fmul fast float %4985, %4880
  %4989 = fmul fast float %4986, %4881
  %4990 = fmul fast float %4896, %4879
  %4991 = fmul fast float %4990, %4928
  %4992 = fmul fast float %4991, %4943
  %4993 = fmul fast float %4896, %4880
  %4994 = fmul fast float %4993, %4928
  %4995 = fmul fast float %4994, %4944
  %4996 = fmul fast float %4896, %4881
  %4997 = fmul fast float %4996, %4928
  %4998 = fmul fast float %4997, %4945
  %4999 = fadd fast float %4987, %4817
  %5000 = fmul fast float %4999, %3858
  %5001 = fadd fast float %4988, %4819
  %5002 = fmul fast float %5001, %3858
  %5003 = fadd fast float %4989, %4821
  %5004 = fmul fast float %5003, %3858
  %5005 = fadd fast float %4992, %4793
  %5006 = fmul fast float %5005, %3858
  %5007 = fadd fast float %4995, %4795
  %5008 = fmul fast float %5007, %3858
  %5009 = fadd fast float %4998, %4797
  %5010 = fmul fast float %5009, %3858
  br label %5011

; <label>:5011                                    ; preds = %4878, %4871, %4679
  %5012 = phi float [ %4794, %4679 ], [ %4794, %4871 ], [ %5006, %4878 ]
  %5013 = phi float [ %4796, %4679 ], [ %4796, %4871 ], [ %5008, %4878 ]
  %5014 = phi float [ %4798, %4679 ], [ %4798, %4871 ], [ %5010, %4878 ]
  %5015 = phi float [ %4818, %4679 ], [ %4818, %4871 ], [ %5000, %4878 ]
  %5016 = phi float [ %4820, %4679 ], [ %4820, %4871 ], [ %5002, %4878 ]
  %5017 = phi float [ %4822, %4679 ], [ %4822, %4871 ], [ %5004, %4878 ]
  %5018 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5019 = extractvalue %dx.types.CBufRet.i32 %5018, 0
  %5020 = icmp eq i32 %5019, 0
  br i1 %5020, label %5414, label %5021

; <label>:5021                                    ; preds = %5011
  %5022 = fptoui float %71 to i32
  %5023 = fptoui float %72 to i32
  %5024 = lshr i32 %5022, 4
  %5025 = lshr i32 %5023, 4
  %5026 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5027 = extractvalue %dx.types.CBufRet.i32 %5026, 0
  %5028 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5025, i32 %5027, i32 %5024)  ; UMad(a,b,c)
  %5029 = add nsw i32 %5019, -1
  %5030 = call i32 @dx.op.binary.i32(i32 37, i32 %5029, i32 0)  ; IMax(a,b)
  %5031 = call float @dx.op.binary.f32(i32 35, float %66, float 0.000000e+00)  ; FMax(a,b)
  %5032 = fptoui float %5031 to i32
  %5033 = lshr i32 %5032, 5
  %5034 = call i32 @dx.op.binary.i32(i32 40, i32 %5033, i32 8191)  ; UMin(a,b)
  %5035 = shl i32 %5034, 2
  %5036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5035, i32 undef)  ; BufferLoad(srv,index,wot)
  %5037 = extractvalue %dx.types.ResRet.i32 %5036, 0
  %5038 = lshr i32 %5037, 16
  %5039 = and i32 %5037, 65535
  %5040 = lshr i32 %5037, 21
  %5041 = lshr i32 %5039, 5
  %5042 = call i32 @dx.op.binary.i32(i32 40, i32 %5041, i32 %5030)  ; UMin(a,b)
  %5043 = icmp ugt i32 %5040, %5042
  br i1 %5043, label %5414, label %5044

; <label>:5044                                    ; preds = %5021
  br label %5045

; <label>:5045                                    ; preds = %5404, %5044
  %5046 = phi i32 [ %5411, %5404 ], [ %5040, %5044 ]
  %5047 = phi float [ %5405, %5404 ], [ %5012, %5044 ]
  %5048 = phi float [ %5406, %5404 ], [ %5013, %5044 ]
  %5049 = phi float [ %5407, %5404 ], [ %5014, %5044 ]
  %5050 = phi float [ %5408, %5404 ], [ %5015, %5044 ]
  %5051 = phi float [ %5409, %5404 ], [ %5016, %5044 ]
  %5052 = phi float [ %5410, %5404 ], [ %5017, %5044 ]
  %5053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5054 = extractvalue %dx.types.CBufRet.i32 %5053, 0
  %5055 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5028, i32 %5054, i32 %5046)  ; UMad(a,b,c)
  %5056 = shl i32 %5055, 2
  %5057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5056, i32 undef)  ; BufferLoad(srv,index,wot)
  %5058 = extractvalue %dx.types.ResRet.i32 %5057, 0
  %5059 = shl i32 %5046, 5
  %5060 = sub nsw i32 %5038, %5059
  %5061 = call i32 @dx.op.binary.i32(i32 37, i32 %5060, i32 0)  ; IMax(a,b)
  %5062 = call i32 @dx.op.binary.i32(i32 38, i32 %5061, i32 31)  ; IMin(a,b)
  %5063 = sub nsw i32 1, %5038
  %5064 = add nsw i32 %5063, %5039
  %5065 = call i32 @dx.op.binary.i32(i32 37, i32 %5064, i32 0)  ; IMax(a,b)
  %5066 = call i32 @dx.op.binary.i32(i32 38, i32 %5065, i32 32)  ; IMin(a,b)
  %5067 = and i32 %5066, 31
  %5068 = shl i32 -1, %5067
  %5069 = xor i32 %5068, -1
  %5070 = and i32 %5062, 31
  %5071 = shl i32 %5069, %5070
  %5072 = icmp eq i32 %5066, 32
  %5073 = select i1 %5072, i32 -1, i32 %5071
  %5074 = and i32 %5073, %5058
  %5075 = icmp eq i32 %5074, 0
  br i1 %5075, label %5404, label %5076

; <label>:5076                                    ; preds = %5045
  br label %5077

; <label>:5077                                    ; preds = %5157, %5076
  %5078 = phi i32 [ %5089, %5157 ], [ %5074, %5076 ]
  %5079 = phi float [ %5158, %5157 ], [ %5047, %5076 ]
  %5080 = phi float [ %5159, %5157 ], [ %5048, %5076 ]
  %5081 = phi float [ %5160, %5157 ], [ %5049, %5076 ]
  %5082 = phi float [ %5161, %5157 ], [ %5050, %5076 ]
  %5083 = phi float [ %5162, %5157 ], [ %5051, %5076 ]
  %5084 = phi float [ %5163, %5157 ], [ %5052, %5076 ]
  %5085 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5078)  ; FirstbitLo(value)
  %5086 = add i32 %5085, %5059
  %5087 = and i32 %5085, 31
  %5088 = shl i32 1, %5087
  %5089 = xor i32 %5088, %5078
  %5090 = mul i32 %5086, 112
  %5091 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5090, i32 undef)  ; BufferLoad(srv,index,wot)
  %5092 = extractvalue %dx.types.ResRet.f32 %5091, 0
  %5093 = extractvalue %dx.types.ResRet.f32 %5091, 1
  %5094 = extractvalue %dx.types.ResRet.f32 %5091, 2
  %5095 = or i32 %5090, 12
  %5096 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5095, i32 undef)  ; BufferLoad(srv,index,wot)
  %5097 = extractvalue %dx.types.ResRet.f32 %5096, 0
  %5098 = add i32 %5090, 44
  %5099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5098, i32 undef)  ; BufferLoad(srv,index,wot)
  %5100 = extractvalue %dx.types.ResRet.f32 %5099, 0
  %5101 = add i32 %5090, 48
  %5102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5101, i32 undef)  ; BufferLoad(srv,index,wot)
  %5103 = extractvalue %dx.types.ResRet.f32 %5102, 0
  %5104 = extractvalue %dx.types.ResRet.f32 %5102, 1
  %5105 = extractvalue %dx.types.ResRet.f32 %5102, 2
  %5106 = add i32 %5090, 80
  %5107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5106, i32 undef)  ; BufferLoad(srv,index,wot)
  %5108 = extractvalue %dx.types.ResRet.f32 %5107, 1
  %5109 = extractvalue %dx.types.ResRet.f32 %5107, 2
  %5110 = call float @dx.op.dot3.f32(i32 55, float %5092, float %5093, float %5094, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5111 = select i1 %206, float %5108, float %5092
  %5112 = select i1 %206, float %5110, float %5093
  %5113 = select i1 %206, float %5109, float %5094
  %5114 = fsub fast float %5103, %130
  %5115 = fsub fast float %5104, %131
  %5116 = fsub fast float %5105, %132
  %5117 = call float @dx.op.dot3.f32(i32 55, float %5114, float %5115, float %5116, float %5114, float %5115, float %5116)  ; Dot3(ax,ay,az,bx,by,bz)
  %5118 = call float @dx.op.unary.f32(i32 24, float %5117)  ; Sqrt(value)
  %5119 = fdiv fast float 1.000000e+00, %5118
  %5120 = fmul fast float %5119, %5114
  %5121 = fmul fast float %5119, %5115
  %5122 = fmul fast float %5119, %5116
  %5123 = fadd fast float %5118, %5097
  %5124 = fdiv fast float 1.000000e+00, %5123
  %5125 = fmul float %5100, %5124
  %5126 = fmul float %5125, %5125
  %5127 = call float @dx.op.unary.f32(i32 7, float %5126)  ; Saturate(value)
  %5128 = and i32 %5088, %5074
  %5129 = icmp eq i32 %5128, 0
  br i1 %5129, label %5152, label %5130, !dx.controlflow.hints !72

; <label>:5130                                    ; preds = %5077
  %5131 = lshr i32 %5022, 5
  %5132 = lshr i32 %5023, 5
  %5133 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %5131, i32 %5132, i32 %5086, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5134 = extractvalue %dx.types.ResRet.i32 %5133, 0
  %5135 = and i32 %5134, 3
  %5136 = icmp eq i32 %5135, 0
  %5137 = select i1 %5136, float 1.000000e+00, float 0.000000e+00
  %5138 = icmp eq i32 %5135, 3
  br i1 %5138, label %5139, label %5152

; <label>:5139                                    ; preds = %5130
  %5140 = lshr i32 %5134, 10
  %5141 = and i32 %5140, 8160
  %5142 = and i32 %5023, 31
  %5143 = or i32 %5141, %5142
  %5144 = lshr i32 %5134, 1
  %5145 = and i32 %5144, 16352
  %5146 = and i32 %5022, 31
  %5147 = or i32 %5145, %5146
  %5148 = lshr i32 %5134, 23
  %5149 = and i32 %5148, 255
  %5150 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %5147, i32 %5143, i32 %5149, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5151 = extractvalue %dx.types.ResRet.f32 %5150, 0
  br label %5152

; <label>:5152                                    ; preds = %5139, %5130, %5077
  %5153 = phi float [ %5151, %5139 ], [ %5137, %5130 ], [ 0.000000e+00, %5077 ]
  %5154 = call float @dx.op.binary.f32(i32 36, float %5153, float %5153)  ; FMin(a,b)
  %5155 = call float @dx.op.binary.f32(i32 36, float %5153, float %5154)  ; FMin(a,b)
  %5156 = fcmp fast ogt float %5155, 0.000000e+00
  br i1 %5156, label %5165, label %5157, !dx.controlflow.hints !73

; <label>:5157                                    ; preds = %5226, %5152
  %5158 = phi float [ %5079, %5152 ], [ %5400, %5226 ]
  %5159 = phi float [ %5080, %5152 ], [ %5401, %5226 ]
  %5160 = phi float [ %5081, %5152 ], [ %5402, %5226 ]
  %5161 = phi float [ %5082, %5152 ], [ %5388, %5226 ]
  %5162 = phi float [ %5083, %5152 ], [ %5389, %5226 ]
  %5163 = phi float [ %5084, %5152 ], [ %5390, %5226 ]
  %5164 = icmp eq i32 %5078, %5088
  br i1 %5164, label %5403, label %5077

; <label>:5165                                    ; preds = %5152
  %5166 = fmul fast float %5153, %5111
  %5167 = fmul fast float %5153, %5112
  %5168 = fmul fast float %5153, %5113
  %5169 = fsub fast float %5105, %4321
  %5170 = fcmp fast ogt float %5169, 0.000000e+00
  %5171 = fsub fast float %132, %4321
  %5172 = fcmp fast ogt float %5171, 0.000000e+00
  %5173 = xor i1 %5172, %5170
  %5174 = fsub fast float %4321, %5105
  %5175 = fmul fast float %5174, 2.000000e+00
  %5176 = fadd fast float %5175, %5105
  %5177 = select i1 %5173, float %5105, float %5176
  %5178 = fsub fast float %5177, %132
  %5179 = call float @dx.op.dot3.f32(i32 55, float %5114, float %5115, float %5178, float %5114, float %5115, float %5178)  ; Dot3(ax,ay,az,bx,by,bz)
  %5180 = call float @dx.op.unary.f32(i32 25, float %5179)  ; Rsqrt(value)
  %5181 = fmul fast float %5180, %5114
  %5182 = fmul fast float %5180, %5115
  %5183 = fmul fast float %5180, %5178
  %5184 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4329)  ; Dot3(ax,ay,az,bx,by,bz)
  %5185 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5181, float %5182, float %5183)  ; Dot3(ax,ay,az,bx,by,bz)
  %5186 = fdiv fast float 1.000000e+00, %5185
  %5187 = fmul fast float %5186, %5184
  %5188 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5171, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5189 = fcmp fast ogt float %5188, 0.000000e+00
  %5190 = fcmp fast olt float %5188, 0.000000e+00
  %5191 = zext i1 %5189 to i32
  %5192 = zext i1 %5190 to i32
  %5193 = sub nsw i32 %5191, %5192
  %5194 = sitofp i32 %5193 to float
  %5195 = fsub fast float %5177, %4321
  %5196 = call float @dx.op.dot3.f32(i32 55, float %5114, float %5115, float %5195, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5197 = fcmp fast ogt float %5196, 0.000000e+00
  %5198 = fcmp fast olt float %5196, 0.000000e+00
  %5199 = zext i1 %5197 to i32
  %5200 = zext i1 %5198 to i32
  %5201 = sub nsw i32 %5199, %5200
  %5202 = sitofp i32 %5201 to float
  %5203 = fcmp fast une float %5194, %5202
  br i1 %5203, label %5204, label %5214

; <label>:5204                                    ; preds = %5165
  %5205 = fmul fast float %5187, %5183
  %5206 = fmul fast float %5187, %5182
  %5207 = fmul fast float %5187, %5181
  %5208 = fmul fast float %5207, %5207
  %5209 = fmul fast float %5206, %5206
  %5210 = fadd fast float %5208, %5209
  %5211 = fmul fast float %5205, %5205
  %5212 = fadd fast float %5210, %5211
  %5213 = call float @dx.op.unary.f32(i32 24, float %5212)  ; Sqrt(value)
  br label %5226

; <label>:5214                                    ; preds = %5165
  %5215 = icmp slt i32 %5193, 0
  br i1 %5215, label %5216, label %5226

; <label>:5216                                    ; preds = %5214
  %5217 = fsub fast float %130, %5103
  %5218 = fsub fast float %131, %5104
  %5219 = fsub fast float %132, %5177
  %5220 = fmul fast float %5217, %5217
  %5221 = fmul fast float %5218, %5218
  %5222 = fadd fast float %5220, %5221
  %5223 = fmul fast float %5219, %5219
  %5224 = fadd fast float %5222, %5223
  %5225 = call float @dx.op.unary.f32(i32 24, float %5224)  ; Sqrt(value)
  br label %5226

; <label>:5226                                    ; preds = %5216, %5214, %5204
  %5227 = phi float [ %5213, %5204 ], [ %5225, %5216 ], [ 0.000000e+00, %5214 ]
  %5228 = and i1 %5172, %5170
  %5229 = fsub fast float -0.000000e+00, %5227
  %5230 = select i1 %5228, float -0.000000e+00, float %5229
  %5231 = fmul fast float %4322, 0x3FF7154760000000
  %5232 = fmul fast float %5231, %5230
  %5233 = fmul fast float %4323, 0x3FF7154760000000
  %5234 = fmul fast float %5233, %5230
  %5235 = fmul fast float %4324, 0x3FF7154760000000
  %5236 = fmul fast float %5235, %5230
  %5237 = call float @dx.op.unary.f32(i32 21, float %5232)  ; Exp(value)
  %5238 = call float @dx.op.unary.f32(i32 21, float %5234)  ; Exp(value)
  %5239 = call float @dx.op.unary.f32(i32 21, float %5236)  ; Exp(value)
  %5240 = call float @dx.op.unary.f32(i32 7, float %5237)  ; Saturate(value)
  %5241 = call float @dx.op.unary.f32(i32 7, float %5238)  ; Saturate(value)
  %5242 = call float @dx.op.unary.f32(i32 7, float %5239)  ; Saturate(value)
  %5243 = fmul fast float %5166, %5240
  %5244 = fmul fast float %5167, %5241
  %5245 = fmul fast float %5168, %5242
  %5246 = fsub fast float %5120, %150
  %5247 = fsub fast float %5121, %151
  %5248 = fsub fast float %5122, %152
  %5249 = call float @dx.op.dot3.f32(i32 55, float %5246, float %5247, float %5248, float %5246, float %5247, float %5248)  ; Dot3(ax,ay,az,bx,by,bz)
  %5250 = call float @dx.op.unary.f32(i32 25, float %5249)  ; Rsqrt(value)
  %5251 = fmul fast float %5250, %5246
  %5252 = fmul fast float %5250, %5247
  %5253 = fmul fast float %5250, %5248
  %5254 = call float @dx.op.dot3.f32(i32 55, float %5120, float %5121, float %5122, float %4507, float %4508, float %4509)  ; Dot3(ax,ay,az,bx,by,bz)
  %5255 = call float @dx.op.dot3.f32(i32 55, float %4338, float %4339, float %4340, float %5251, float %5252, float %5253)  ; Dot3(ax,ay,az,bx,by,bz)
  %5256 = call float @dx.op.unary.f32(i32 7, float %5254)  ; Saturate(value)
  %5257 = fmul fast float %5256, %5127
  %5258 = fmul fast float %5256, %5256
  %5259 = fmul fast float %5258, %4530
  %5260 = call float @dx.op.unary.f32(i32 7, float %5259)  ; Saturate(value)
  %5261 = fmul fast float %5257, %5260
  %5262 = bitcast float %5117 to i32
  %5263 = ashr i32 %5262, 1
  %5264 = sub nsw i32 1597463007, %5263
  %5265 = bitcast i32 %5264 to float
  %5266 = fmul fast float %5265, %5114
  %5267 = fmul fast float %5265, %5115
  %5268 = fmul fast float %5265, %5116
  %5269 = fsub fast float %5266, %150
  %5270 = fsub fast float %5267, %151
  %5271 = fsub fast float %5268, %152
  %5272 = call float @dx.op.dot3.f32(i32 55, float %5269, float %5270, float %5271, float %5269, float %5270, float %5271)  ; Dot3(ax,ay,az,bx,by,bz)
  %5273 = call float @dx.op.unary.f32(i32 25, float %5272)  ; Rsqrt(value)
  %5274 = fmul fast float %5269, %5273
  %5275 = fmul fast float %5270, %5273
  %5276 = fmul fast float %5271, %5273
  %5277 = call float @dx.op.dot3.f32(i32 55, float %4507, float %4508, float %4509, float %5274, float %5275, float %5276)  ; Dot3(ax,ay,az,bx,by,bz)
  %5278 = fmul fast float %5277, %5277
  %5279 = call float @dx.op.unary.f32(i32 6, float %5254)  ; FAbs(value)
  %5280 = fsub fast float 1.000000e+00, %4513
  %5281 = call float @dx.op.binary.f32(i32 35, float %5280, float 0x3F847AE140000000)  ; FMax(a,b)
  %5282 = fmul fast float %5281, %5281
  %5283 = fmul fast float %5282, %5282
  %5284 = fsub fast float 1.000000e+00, %5283
  %5285 = fmul fast float %4517, %4517
  %5286 = fmul fast float %5285, %5284
  %5287 = fadd fast float %5286, %5283
  %5288 = bitcast float %5287 to i32
  %5289 = ashr i32 %5288, 1
  %5290 = add nsw i32 %5289, 532487669
  %5291 = bitcast i32 %5290 to float
  %5292 = fadd fast float %5291, %4517
  %5293 = fmul fast float %5283, %5278
  %5294 = fsub fast float 1.000000e+00, %5278
  %5295 = fadd fast float %5294, %5293
  %5296 = fmul fast float %5279, %5279
  %5297 = fmul fast float %5296, %5284
  %5298 = fadd fast float %5297, %5283
  %5299 = bitcast float %5298 to i32
  %5300 = ashr i32 %5299, 1
  %5301 = add nsw i32 %5300, 532487669
  %5302 = bitcast i32 %5301 to float
  %5303 = fadd fast float %5302, %5279
  %5304 = fmul fast float %5295, %5295
  %5305 = fmul fast float %5304, %5292
  %5306 = fmul fast float %5305, %5303
  %5307 = fdiv fast float 1.000000e+00, %5306
  %5308 = bitcast float %5283 to i32
  %5309 = sitofp i32 %5308 to float
  %5310 = fmul fast float %5309, 0x3FE7F73180000000
  %5311 = fadd fast float %5310, 0x41AFE27C40000000
  %5312 = fptosi float %5311 to i32
  %5313 = bitcast i32 %5312 to float
  %5314 = fmul fast float %5100, 0x3FD80E9D60000000
  %5315 = fmul fast float %5314, %5265
  %5316 = fadd fast float %5313, %5315
  %5317 = bitcast float %5316 to i32
  %5318 = sub nsw i32 2129859010, %5317
  %5319 = bitcast i32 %5318 to float
  %5320 = fmul fast float %5283, %5307
  %5321 = fmul fast float %5320, %5313
  %5322 = fmul fast float %5321, %5319
  %5323 = call float @dx.op.unary.f32(i32 6, float %5255)  ; FAbs(value)
  %5324 = fsub fast float 1.000000e+00, %5323
  %5325 = bitcast float %5324 to i32
  %5326 = sitofp i32 %5325 to float
  %5327 = fmul fast float %5326, 5.000000e+00
  %5328 = fadd fast float %5327, 0xC1EFBF8940000000
  %5329 = fptosi float %5328 to i32
  %5330 = bitcast i32 %5329 to float
  %5331 = fsub fast float 1.000000e+00, %4510
  %5332 = fsub fast float 1.000000e+00, %4511
  %5333 = fsub fast float 1.000000e+00, %4515
  %5334 = fmul fast float %5330, %5331
  %5335 = fmul fast float %5330, %5332
  %5336 = fmul fast float %5330, %5333
  %5337 = fadd fast float %5334, %4510
  %5338 = fadd fast float %5335, %4511
  %5339 = fadd fast float %5336, %4515
  %5340 = fmul fast float %5254, 9.843750e-01
  %5341 = fadd fast float %5340, 7.812500e-03
  %5342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %5341, float %4777, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5343 = extractvalue %dx.types.ResRet.f32 %5342, 2
  %5344 = extractvalue %dx.types.ResRet.f32 %5342, 3
  %5345 = fmul fast float %5343, %4510
  %5346 = fmul fast float %5343, %4511
  %5347 = fmul fast float %5343, %4515
  %5348 = fadd fast float %5345, %5344
  %5349 = fadd fast float %5346, %5344
  %5350 = fadd fast float %5347, %5344
  %5351 = call float @dx.op.binary.f32(i32 35, float %5349, float %5350)  ; FMax(a,b)
  %5352 = call float @dx.op.binary.f32(i32 35, float %5348, float %5351)  ; FMax(a,b)
  %5353 = fsub fast float 1.000000e+00, %5352
  %5354 = fsub fast float -0.000000e+00, %4507
  %5355 = fsub fast float -0.000000e+00, %4508
  %5356 = fsub fast float -0.000000e+00, %4509
  %5357 = call float @dx.op.dot3.f32(i32 55, float %5120, float %5121, float %5122, float %5354, float %5355, float %5356)  ; Dot3(ax,ay,az,bx,by,bz)
  %5358 = call float @dx.op.unary.f32(i32 7, float %5357)  ; Saturate(value)
  %5359 = fmul fast float %5358, %5127
  %5360 = fmul fast float %5358, 9.843750e-01
  %5361 = fadd fast float %5360, 7.812500e-03
  %5362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %5361, float %4777, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5363 = extractvalue %dx.types.ResRet.f32 %5362, 2
  %5364 = extractvalue %dx.types.ResRet.f32 %5362, 3
  %5365 = fmul fast float %5363, %4510
  %5366 = fmul fast float %5363, %4511
  %5367 = fmul fast float %5363, %4515
  %5368 = fadd fast float %5365, %5364
  %5369 = fadd fast float %5366, %5364
  %5370 = fadd fast float %5367, %5364
  %5371 = call float @dx.op.binary.f32(i32 35, float %5369, float %5370)  ; FMax(a,b)
  %5372 = call float @dx.op.binary.f32(i32 35, float %5368, float %5371)  ; FMax(a,b)
  %5373 = fsub fast float 1.000000e+00, %5372
  %5374 = fmul fast float %5359, %5373
  %5375 = fmul fast float %5374, %3944
  %5376 = fmul fast float %5374, %3945
  %5377 = fmul fast float %5374, %3946
  %5378 = fmul fast float %5353, %5261
  %5379 = fadd fast float %5375, %5378
  %5380 = fadd fast float %5376, %5378
  %5381 = fadd fast float %5377, %5378
  %5382 = fmul fast float %5243, %3858
  %5383 = fmul fast float %5382, %5379
  %5384 = fmul fast float %5244, %3858
  %5385 = fmul fast float %5384, %5380
  %5386 = fmul fast float %5245, %3858
  %5387 = fmul fast float %5386, %5381
  %5388 = fadd fast float %5383, %5082
  %5389 = fadd fast float %5385, %5083
  %5390 = fadd fast float %5387, %5084
  %5391 = fmul fast float %5382, %5261
  %5392 = fmul fast float %5391, %5337
  %5393 = fmul fast float %5392, %5322
  %5394 = fmul fast float %5384, %5261
  %5395 = fmul fast float %5394, %5338
  %5396 = fmul fast float %5395, %5322
  %5397 = fmul fast float %5386, %5261
  %5398 = fmul fast float %5397, %5339
  %5399 = fmul fast float %5398, %5322
  %5400 = fadd fast float %5393, %5079
  %5401 = fadd fast float %5396, %5080
  %5402 = fadd fast float %5399, %5081
  br label %5157

; <label>:5403                                    ; preds = %5157
  br label %5404

; <label>:5404                                    ; preds = %5403, %5045
  %5405 = phi float [ %5047, %5045 ], [ %5158, %5403 ]
  %5406 = phi float [ %5048, %5045 ], [ %5159, %5403 ]
  %5407 = phi float [ %5049, %5045 ], [ %5160, %5403 ]
  %5408 = phi float [ %5050, %5045 ], [ %5161, %5403 ]
  %5409 = phi float [ %5051, %5045 ], [ %5162, %5403 ]
  %5410 = phi float [ %5052, %5045 ], [ %5163, %5403 ]
  %5411 = add i32 %5046, 1
  %5412 = icmp ugt i32 %5411, %5042
  br i1 %5412, label %5413, label %5045

; <label>:5413                                    ; preds = %5404
  br label %5414

; <label>:5414                                    ; preds = %5413, %5021, %5011
  %5415 = phi float [ %5012, %5011 ], [ %5012, %5021 ], [ %5405, %5413 ]
  %5416 = phi float [ %5013, %5011 ], [ %5013, %5021 ], [ %5406, %5413 ]
  %5417 = phi float [ %5014, %5011 ], [ %5014, %5021 ], [ %5407, %5413 ]
  %5418 = phi float [ %5015, %5011 ], [ %5015, %5021 ], [ %5408, %5413 ]
  %5419 = phi float [ %5016, %5011 ], [ %5016, %5021 ], [ %5409, %5413 ]
  %5420 = phi float [ %5017, %5011 ], [ %5017, %5021 ], [ %5410, %5413 ]
  %5421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3837, i32 undef)  ; BufferLoad(srv,index,wot)
  %5422 = extractvalue %dx.types.ResRet.i32 %5421, 3
  %5423 = bitcast i32 %5422 to float
  %5424 = fsub fast float 1.000000e+00, %5423
  %5425 = fmul fast float %5424, %164
  %5426 = fadd fast float %5425, %5423
  %5427 = call float @dx.op.unary.f32(i32 24, float %4504)  ; Sqrt(value)
  %5428 = call float @dx.op.unary.f32(i32 24, float %4505)  ; Sqrt(value)
  %5429 = call float @dx.op.unary.f32(i32 24, float %4506)  ; Sqrt(value)
  %5430 = fmul fast float %5427, %5418
  %5431 = fmul fast float %5428, %5419
  %5432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5433 = extractvalue %dx.types.CBufRet.f32 %5432, 0
  br i1 %206, label %5434, label %5464

; <label>:5434                                    ; preds = %5414
  %5435 = fadd fast float %5420, %3808
  %5436 = fmul fast float %5435, %3806
  %5437 = fsub fast float 1.000000e+00, %3806
  %5438 = call float @dx.op.unary.f32(i32 7, float %5437)  ; Saturate(value)
  %5439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5440 = extractvalue %dx.types.CBufRet.f32 %5439, 3
  %5441 = fmul fast float %5440, %5438
  %5442 = fadd fast float %5441, %5436
  %5443 = fsub fast float 1.000000e+00, %4517
  %5444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5445 = extractvalue %dx.types.CBufRet.f32 %5444, 0
  %5446 = fmul fast float %5445, %5443
  %5447 = fsub fast float %5442, %5446
  %5448 = fadd fast float %5431, %5430
  %5449 = fmul fast float %5433, %5448
  %5450 = extractvalue %dx.types.CBufRet.f32 %5439, 1
  %5451 = fsub fast float %5447, %5450
  %5452 = extractvalue %dx.types.CBufRet.f32 %5439, 2
  %5453 = fmul fast float %5451, %5452
  %5454 = call float @dx.op.unary.f32(i32 7, float %5453)  ; Saturate(value)
  %5455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5456 = extractvalue %dx.types.CBufRet.f32 %5455, 0
  %5457 = fsub fast float %5454, %5456
  %5458 = fmul fast float %5457, 1.000000e+01
  %5459 = call float @dx.op.unary.f32(i32 7, float %5458)  ; Saturate(value)
  %5460 = fsub fast float 1.000000e+00, %5426
  %5461 = fmul fast float %5459, %5460
  %5462 = fadd fast float %5461, %5426
  %5463 = fmul fast float %5462, %5454
  br label %5480

; <label>:5464                                    ; preds = %5414
  %5465 = fmul fast float %5429, %5420
  %5466 = fmul fast float %5433, %5430
  %5467 = fmul fast float %5433, %5431
  %5468 = fmul fast float %5465, %5433
  %5469 = add i32 %32, 356
  %5470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %5469, i32 undef)  ; BufferLoad(srv,index,wot)
  %5471 = extractvalue %dx.types.ResRet.i32 %5470, 0
  %5472 = and i32 %5471, 32
  %5473 = icmp eq i32 %5472, 0
  br i1 %5473, label %5480, label %5474

; <label>:5474                                    ; preds = %5464
  %5475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5476 = extractvalue %dx.types.CBufRet.f32 %5475, 0
  %5477 = fmul fast float %5476, 0x3FE99999A0000000
  %5478 = fadd fast float %5476, %5466
  %5479 = fadd fast float %5477, %5468
  br label %5480

; <label>:5480                                    ; preds = %5474, %5464, %5434
  %5481 = phi float [ %5449, %5434 ], [ %5478, %5474 ], [ %5466, %5464 ]
  %5482 = phi float [ %5463, %5434 ], [ %5467, %5474 ], [ %5467, %5464 ]
  %5483 = phi float [ %5462, %5434 ], [ %5479, %5474 ], [ %5468, %5464 ]
  %5484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5485 = extractvalue %dx.types.CBufRet.f32 %5484, 0
  %5486 = fmul fast float %5485, %5416
  %5487 = fmul fast float %5485, %5417
  %5488 = fadd fast float %5416, %5415
  %5489 = select i1 %206, float %5488, float %5415
  %5490 = fmul float %5489, %5485
  %5491 = select i1 %206, float 0.000000e+00, float %5486
  %5492 = select i1 %206, float 0.000000e+00, float %5487
  %5493 = fmul fast float %5481, %5427
  %5494 = fmul fast float %5482, %5428
  %5495 = fmul fast float %5483, %5429
  %5496 = fadd fast float %5490, %5493
  %5497 = fadd fast float %5491, %5494
  %5498 = fadd fast float %5492, %5495
  %5499 = select i1 %206, float %5482, float %5497
  %5500 = select i1 %206, float %5483, float %5498
  %5501 = call float @dx.op.binary.f32(i32 36, float %5496, float 3.225500e+04)  ; FMin(a,b)
  %5502 = call float @dx.op.binary.f32(i32 36, float %5499, float 3.225500e+04)  ; FMin(a,b)
  %5503 = call float @dx.op.binary.f32(i32 36, float %5500, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5501)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5502)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5503)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!43 = !{[47 x i32] [i32 45, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7]}
!44 = !{void ()* @ps_main, !"ps_main", !45, !4, !70}
!45 = !{!46, !68, null}
!46 = !{!47, !50, !52, !54, !56, !58, !59, !60, !61, !62, !63, !65, !67}
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
!58 = !{i32 5, !"SH_RED", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 5, i8 0, !57}
!59 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 6, i8 0, !57}
!60 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 7, i8 0, !57}
!61 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !48, i8 2, i32 1, i8 2, i32 8, i8 0, !53}
!62 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 9, i8 0, !57}
!63 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !48, i8 1, i32 1, i8 4, i32 10, i8 0, !64}
!64 = !{i32 3, i32 5}
!65 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !48, i8 1, i32 1, i8 1, i32 11, i8 0, !66}
!66 = !{i32 3, i32 1}
!67 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !48, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!68 = !{!69}
!69 = !{i32 0, !"SV_Target", i8 9, i8 16, !48, i8 0, i32 1, i8 4, i32 0, i8 0, !57}
!70 = !{i32 0, i64 24}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}

