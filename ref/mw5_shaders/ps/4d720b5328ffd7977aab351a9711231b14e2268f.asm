;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float    y  
; TEXCOORDS                0   xyzw        2     NONE   float   xyzw
; LMAPCOORDS               0   xyz         3     NONE   float   xyz 
; NORMAL                   0   xyz         4     NONE   float   xyz 
; TANGENT                  0   xyzw        5     NONE   float   xyzw
; NORMAL_TRANSFORM         1   xyzw        6     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           7     NONE    uint   x   
; TRANSIENT_INDEX          0    y          7     NONE    uint    y  
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 0dca31b1f31f901af671225203a6ebb2
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
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; NORMAL_TRANSFORM         1                 linear       
; MATERIAL_DATA_OFFSET     0        nointerpolation       
; TRANSIENT_INDEX          0        nointerpolation       
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
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32          3d      T2      t0,space7unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture     f32     2darray      T5     t16,space2     1
;                                   texture     f32          3d      T6     t15,space2     1
;                                   texture     f32          2d      T7     t14,space2     1
;                                   texture     f32          2d      T8     t13,space2     1
;                                   texture     u32          2d      T9     t17,space2     1
;                                   texture     f32          3d     T10     t18,space2     1
;                                   texture     f32     2darray     T11     t23,space2     1
;                                   texture     f32     2darray     T12     t24,space2     1
;                                   texture     f32     2darray     T13     t25,space2     1
;                                   texture    byte         r/o     T14     t66,space1     1
;                                   texture    byte         r/o     T15     t16,space1     1
;                                   texture    byte         r/o     T16     t17,space1     1
;                                   texture     f32          2d     T17     t69,space2     1
;                                   texture    byte         r/o     T18     t49,space1     1
;                                   texture    byte         r/o     T19     t50,space1     1
;                                   texture    byte         r/o     T20     t51,space1     1
;                                   texture    byte         r/o     T21     t52,space1     1
;                                   texture     f32          2d     T22     t58,space2     1
;                                   texture     f32          2d     T23     t57,space2     1
;                                   texture    byte         r/o     T24     t69,space1     1
;                                   texture     f32          2d     T25     t34,space2     1
;                                   texture    byte         r/o     T26     t68,space1     1
;                                   texture     f32          2d     T27      t0,space2     1
;
;
; ViewId state:
;
; Number of inputs: 30, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 }
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
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 0
  %59 = fmul fast float %58, %52
  %60 = fmul fast float %58, %53
  %61 = fmul fast float %42, %39
  %62 = fmul fast float %43, %38
  %63 = fsub fast float %61, %62
  %64 = fmul fast float %43, %37
  %65 = fmul fast float %41, %39
  %66 = fsub fast float %64, %65
  %67 = fmul fast float %41, %38
  %68 = fmul fast float %42, %37
  %69 = fsub fast float %67, %68
  %70 = fmul fast float %63, %40
  %71 = fmul fast float %66, %40
  %72 = fmul fast float %69, %40
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 3
  %76 = fmul fast float %74, 2.000000e+00
  %77 = fmul fast float %76, %59
  %78 = fmul fast float %75, 2.000000e+00
  %79 = fmul fast float %78, %60
  %80 = fsub fast float 1.000000e+00, %77
  %81 = fsub fast float 1.000000e+00, %79
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %85 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %86 = fmul fast float %80, %83
  %87 = fmul fast float %80, %84
  %88 = fmul fast float %80, %85
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 1
  %92 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %93 = fmul fast float %81, %90
  %94 = fmul fast float %81, %91
  %95 = fmul fast float %81, %92
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 1
  %99 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %100 = fadd fast float %93, %97
  %101 = fadd fast float %100, %86
  %102 = fadd fast float %94, %98
  %103 = fadd fast float %102, %87
  %104 = fadd fast float %95, %99
  %105 = fadd fast float %104, %88
  %106 = fmul fast float %101, %54
  %107 = fmul fast float %103, %54
  %108 = fmul fast float %105, %54
  %109 = fadd fast float %46, 5.000000e-01
  %110 = fptoui float %109 to i32
  %111 = shl i32 %110, 3
  %112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %111, i32 undef)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.i32 %112, 0
  %114 = or i32 %111, 4
  %115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %114, i32 undef)  ; BufferLoad(srv,index,wot)
  %116 = extractvalue %dx.types.ResRet.i32 %115, 0
  %117 = and i32 %113, 8191
  %118 = lshr i32 %113, 13
  %119 = and i32 %118, 8191
  %120 = lshr i32 %113, 26
  %121 = and i32 %116, 65535
  %122 = lshr i32 %116, 16
  %123 = uitofp i32 %121 to float
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %126 = uitofp i32 %122 to float
  %127 = uitofp i32 %117 to float
  %128 = fmul fast float %125, %127
  %129 = uitofp i32 %119 to float
  %130 = fmul fast float %125, %129
  %131 = fmul fast float %125, %44
  %132 = fmul fast float %131, %123
  %133 = fmul fast float %125, %45
  %134 = fmul fast float %133, %126
  %135 = fadd fast float %132, %128
  %136 = fadd fast float %130, %134
  %137 = uitofp i32 %120 to float
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 3
  %141 = fmul fast float %139, %59
  %142 = fmul fast float %140, %60
  %143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %144 = extractvalue %dx.types.ResRet.i32 %143, 0
  %145 = and i32 %144, 114688
  %146 = icmp ne i32 %145, 0
  %147 = select i1 %146, float %141, float 0.000000e+00
  %148 = select i1 %146, float %142, float 0.000000e+00
  %149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %147, float %148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %150 = extractvalue %dx.types.ResRet.f32 %149, 0
  %151 = fmul fast float %150, 2.550000e+02
  %152 = fptoui float %151 to i32
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.i32 %154, 3
  %156 = and i32 %155, 3
  %157 = icmp ne i32 %156, 0
  %158 = and i32 %155, 4
  %159 = icmp ne i32 %158, 0
  %160 = and i1 %157, %159
  br i1 %160, label %161, label %172

; <label>:161                                     ; preds = %0
  %162 = extractvalue %dx.types.CBufRet.f32 %153, 3
  %163 = fmul fast float %162, %60
  %164 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %165 = fmul fast float %164, %59
  %166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %27, float %165, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = fsub fast float 1.000000e+00, %167
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %171 = fcmp fast olt float %168, %170
  br label %175

; <label>:172                                     ; preds = %0
  %173 = icmp eq i32 %158, 0
  %174 = and i1 %157, %173
  br label %175

; <label>:175                                     ; preds = %172, %161
  %176 = phi i1 [ %171, %161 ], [ %174, %172 ]
  %177 = add i32 %32, 92
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = shl i32 %179, 4
  %181 = and i32 %180, 32752
  %182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %181)  ; LegacyF16ToF32(value)
  %183 = lshr i32 %179, 7
  %184 = and i32 %183, 32752
  %185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %184)  ; LegacyF16ToF32(value)
  %186 = lshr i32 %179, 22
  %187 = shl nuw nsw i32 %186, 5
  %188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %187)  ; LegacyF16ToF32(value)
  %189 = add i32 %32, 120
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = and i32 %191, 255
  %193 = uitofp i32 %192 to float
  %194 = fmul fast float %193, 0x3F70101020000000
  %195 = lshr i32 %191, 8
  %196 = and i32 %195, 255
  %197 = uitofp i32 %196 to float
  %198 = fmul fast float %197, 0x3F70101020000000
  %199 = lshr i32 %191, 16
  %200 = and i32 %199, 255
  %201 = uitofp i32 %200 to float
  %202 = fmul fast float %201, 0x3F70101020000000
  %203 = add i32 %32, 36
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = add i32 %32, 160
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = add i32 %32, 108
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = shl i32 %211, 4
  %213 = and i32 %212, 32752
  %214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %213)  ; LegacyF16ToF32(value)
  %215 = lshr i32 %211, 7
  %216 = and i32 %215, 32752
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = lshr i32 %211, 22
  %219 = shl nuw nsw i32 %218, 5
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = add i32 %32, 136
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = and i32 %223, 255
  %225 = uitofp i32 %224 to float
  %226 = fmul fast float %225, 0x3F70101020000000
  %227 = lshr i32 %223, 8
  %228 = and i32 %227, 255
  %229 = uitofp i32 %228 to float
  %230 = fmul fast float %229, 0x3F70101020000000
  %231 = lshr i32 %223, 16
  %232 = and i32 %231, 255
  %233 = uitofp i32 %232 to float
  %234 = fmul fast float %233, 0x3F70101020000000
  %235 = add i32 %32, 52
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = and i32 %237, 65535
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = lshr i32 %237, 16
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = add i32 %32, 176
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = and i32 %244, 65535
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = lshr i32 %244, 16
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = fmul fast float %246, 0x3F50624DE0000000
  %250 = fmul fast float %248, 0x3F50624DE0000000
  %251 = add i32 %32, 188
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = lshr i32 %253, 20
  %255 = and i32 %254, 3
  %256 = add nuw nsw i32 %255, 1
  %257 = add i32 %32, 24
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = add i32 %32, 28
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = or i32 %262, %259
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %725, label %265

; <label>:265                                     ; preds = %175
  %266 = lshr i32 %208, 16
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = fmul fast float %267, 0x3F50624DE0000000
  %269 = and i32 %208, 65535
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = fmul fast float %270, 0x3F50624DE0000000
  %272 = lshr i32 %205, 16
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = and i32 %205, 65535
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = add i32 %32, 156
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = lshr i32 %278, 16
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = fmul fast float %280, 0x3F50624DE0000000
  %282 = add i32 %32, 56
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = lshr i32 %284, 16
  %286 = and i32 %285, 255
  %287 = lshr i32 %284, 24
  %288 = add i32 %32, 164
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 65535
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %290, 16
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = add i32 %32, 32
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = lshr i32 %297, 22
  %299 = shl nuw nsw i32 %298, 5
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = shl i32 %297, 4
  %302 = and i32 %301, 32752
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %297, 7
  %305 = and i32 %304, 32752
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 3
  %309 = fmul fast float %308, 1.000000e+03
  %310 = fmul fast float %271, %309
  %311 = call float @dx.op.unary.f32(i32 22, float %310)  ; Frc(value)
  %312 = fadd fast float %311, %275
  %313 = fmul fast float %268, %309
  %314 = call float @dx.op.unary.f32(i32 22, float %313)  ; Frc(value)
  %315 = fadd fast float %314, %273
  %316 = fmul fast float %281, %309
  %317 = call float @dx.op.unary.f32(i32 22, float %316)  ; Frc(value)
  %318 = fmul fast float %317, 0x401921FB60000000
  %319 = fadd fast float %318, %300
  %320 = call float @dx.op.unary.f32(i32 13, float %319)  ; Sin(value)
  %321 = call float @dx.op.unary.f32(i32 12, float %319)  ; Cos(value)
  %322 = fsub fast float -0.000000e+00, %320
  %323 = fadd fast float %47, -5.000000e-01
  %324 = fadd fast float %48, -5.000000e-01
  %325 = fmul fast float %292, %323
  %326 = fmul fast float %294, %324
  %327 = fadd fast float %325, 5.000000e-01
  %328 = fadd fast float %326, 5.000000e-01
  %329 = fmul fast float %303, %327
  %330 = fmul fast float %306, %328
  %331 = fmul fast float %321, %329
  %332 = call float @dx.op.tertiary.f32(i32 46, float %322, float %330, float %331)  ; FMad(a,b,c)
  %333 = fmul fast float %320, %329
  %334 = call float @dx.op.tertiary.f32(i32 46, float %321, float %330, float %333)  ; FMad(a,b,c)
  %335 = fadd fast float %312, %332
  %336 = fadd fast float %315, %334
  %337 = icmp ugt i32 %286, 1
  %338 = icmp ugt i32 %284, 33554431
  %339 = or i1 %338, %337
  br i1 %339, label %340, label %365

; <label>:340                                     ; preds = %265
  %341 = add i32 %32, 132
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = lshr i32 %343, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = fmul fast float %308, %345
  %347 = call float @dx.op.unary.f32(i32 22, float %346)  ; Frc(value)
  %348 = mul nuw nsw i32 %286, %287
  %349 = uitofp i32 %348 to float
  %350 = fmul fast float %347, %349
  %351 = call float @dx.op.unary.f32(i32 27, float %350)  ; Round_ni(value)
  %352 = fptoui float %351 to i32
  %353 = urem i32 %352, %286
  %354 = udiv i32 %352, %287
  %355 = call float @dx.op.unary.f32(i32 22, float %335)  ; Frc(value)
  %356 = call float @dx.op.unary.f32(i32 22, float %336)  ; Frc(value)
  %357 = uitofp i32 %353 to float
  %358 = uitofp i32 %354 to float
  %359 = fadd fast float %355, %357
  %360 = fadd fast float %356, %358
  %361 = uitofp i32 %286 to float
  %362 = uitofp i32 %287 to float
  %363 = fdiv fast float %359, %361
  %364 = fdiv fast float %360, %362
  br label %365

; <label>:365                                     ; preds = %340, %265
  %366 = phi float [ %363, %340 ], [ %335, %265 ]
  %367 = phi float [ %364, %340 ], [ %336, %265 ]
  %368 = and i32 %259, 16
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %566, label %370

; <label>:370                                     ; preds = %365
  %371 = add i32 %32, 200
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = add i32 %373, 0
  %375 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %374, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %376 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %375, %dx.types.Handle %55, float %366, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %377 = extractvalue %dx.types.ResRet.f32 %376, 0
  %378 = extractvalue %dx.types.ResRet.f32 %376, 1
  %379 = extractvalue %dx.types.ResRet.f32 %376, 2
  %380 = extractvalue %dx.types.ResRet.f32 %376, 3
  %381 = and i32 %284, 255
  %382 = uitofp i32 %381 to float
  %383 = lshr i32 %284, 8
  %384 = and i32 %383, 255
  %385 = uitofp i32 %384 to float
  %386 = fmul fast float %380, %382
  %387 = fadd fast float %386, %385
  %388 = fmul fast float %387, 0x3F70101000000000
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 512
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %401, label %393

; <label>:393                                     ; preds = %370
  %394 = add i32 %32, 240
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = add i32 %396, 0
  %398 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %397, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %399 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %398, %dx.types.Handle %56, float %366, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %400 = extractvalue %dx.types.ResRet.f32 %399, 0
  br label %401

; <label>:401                                     ; preds = %393, %370
  %402 = phi float [ %400, %393 ], [ 1.000000e+00, %370 ]
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 33554432
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %513, label %407

; <label>:407                                     ; preds = %401
  %408 = add i32 %32, 128
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 65535
  %412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %411)  ; LegacyF16ToF32(value)
  %413 = lshr i32 %410, 16
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = add i32 %32, 132
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 65535
  %419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %418)  ; LegacyF16ToF32(value)
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = lshr i32 %421, 24
  %423 = uitofp i32 %422 to float
  %424 = fmul fast float %423, 0x3F70101020000000
  %425 = and i32 %421, 255
  %426 = uitofp i32 %425 to float
  %427 = fmul fast float %426, 0x3F70101020000000
  %428 = lshr i32 %421, 8
  %429 = and i32 %428, 255
  %430 = uitofp i32 %429 to float
  %431 = fmul fast float %430, 0x3F70101020000000
  %432 = lshr i32 %421, 16
  %433 = and i32 %432, 255
  %434 = uitofp i32 %433 to float
  %435 = fmul fast float %434, 0x3F70101020000000
  %436 = add i32 %32, 124
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = lshr i32 %438, 24
  %440 = uitofp i32 %439 to float
  %441 = fmul fast float %440, 0x3F70101020000000
  %442 = and i32 %438, 255
  %443 = uitofp i32 %442 to float
  %444 = fmul fast float %443, 0x3F70101020000000
  %445 = lshr i32 %438, 8
  %446 = and i32 %445, 255
  %447 = uitofp i32 %446 to float
  %448 = fmul fast float %447, 0x3F70101020000000
  %449 = lshr i32 %438, 16
  %450 = and i32 %449, 255
  %451 = uitofp i32 %450 to float
  %452 = fmul fast float %451, 0x3F70101020000000
  %453 = bitcast float %377 to i32
  %454 = ashr i32 %453, 1
  %455 = sub nsw i32 1597463174, %454
  %456 = bitcast i32 %455 to float
  %457 = fmul fast float %377, 5.000000e-01
  %458 = fmul fast float %456, %456
  %459 = fmul fast float %458, %457
  %460 = fsub fast float 1.500000e+00, %459
  %461 = fmul fast float %456, %377
  %462 = fmul fast float %461, %460
  %463 = bitcast float %378 to i32
  %464 = ashr i32 %463, 1
  %465 = sub nsw i32 1597463174, %464
  %466 = bitcast i32 %465 to float
  %467 = fmul fast float %378, 5.000000e-01
  %468 = fmul fast float %466, %466
  %469 = fmul fast float %468, %467
  %470 = fsub fast float 1.500000e+00, %469
  %471 = fmul fast float %466, %378
  %472 = fmul fast float %471, %470
  %473 = bitcast float %379 to i32
  %474 = ashr i32 %473, 1
  %475 = sub nsw i32 1597463174, %474
  %476 = bitcast i32 %475 to float
  %477 = fmul fast float %379, 5.000000e-01
  %478 = fmul fast float %476, %476
  %479 = fmul fast float %478, %477
  %480 = fsub fast float 1.500000e+00, %479
  %481 = fmul fast float %476, %379
  %482 = fmul fast float %481, %480
  %483 = fsub fast float %462, %444
  %484 = fsub fast float %472, %448
  %485 = fsub fast float %482, %452
  %486 = fmul fast float %483, %412
  %487 = fmul fast float %484, %414
  %488 = fmul fast float %485, %419
  %489 = fadd fast float %486, %427
  %490 = fadd fast float %487, %431
  %491 = fadd fast float %488, %435
  %492 = call float @dx.op.unary.f32(i32 7, float %489)  ; Saturate(value)
  %493 = call float @dx.op.unary.f32(i32 7, float %490)  ; Saturate(value)
  %494 = call float @dx.op.unary.f32(i32 7, float %491)  ; Saturate(value)
  %495 = fmul fast float %492, %492
  %496 = fmul fast float %493, %493
  %497 = fmul fast float %494, %494
  %498 = fsub fast float %495, %377
  %499 = fsub fast float %496, %378
  %500 = fsub fast float %497, %379
  %501 = fmul fast float %498, %402
  %502 = fmul fast float %499, %402
  %503 = fmul fast float %500, %402
  %504 = fadd fast float %501, %377
  %505 = fadd fast float %502, %378
  %506 = fadd fast float %503, %379
  %507 = fadd fast float %424, %388
  %508 = fsub fast float %507, %441
  %509 = call float @dx.op.unary.f32(i32 7, float %508)  ; Saturate(value)
  %510 = fsub fast float %509, %388
  %511 = fmul fast float %510, %402
  %512 = fadd fast float %511, %388
  br label %566

; <label>:513                                     ; preds = %401
  %514 = and i32 %404, 134217728
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %550, label %516

; <label>:516                                     ; preds = %513
  %517 = call float @dx.op.unary.f32(i32 24, float %194)  ; Sqrt(value)
  %518 = call float @dx.op.unary.f32(i32 24, float %198)  ; Sqrt(value)
  %519 = call float @dx.op.unary.f32(i32 24, float %202)  ; Sqrt(value)
  %520 = fadd fast float %517, -5.000000e-01
  %521 = fadd fast float %518, -5.000000e-01
  %522 = fadd fast float %519, -5.000000e-01
  %523 = fmul fast float %520, %402
  %524 = fmul fast float %521, %402
  %525 = fmul fast float %522, %402
  %526 = fadd fast float %523, 5.000000e-01
  %527 = fadd fast float %524, 5.000000e-01
  %528 = fadd fast float %525, 5.000000e-01
  %529 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %530 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %531 = call float @dx.op.unary.f32(i32 24, float %379)  ; Sqrt(value)
  %532 = fmul fast float %526, 2.000000e+00
  %533 = fsub fast float 1.000000e+00, %532
  %534 = fmul fast float %533, %529
  %535 = fadd fast float %534, %532
  %536 = fmul fast float %535, %529
  %537 = fmul fast float %527, 2.000000e+00
  %538 = fsub fast float 1.000000e+00, %537
  %539 = fmul fast float %538, %530
  %540 = fadd fast float %539, %537
  %541 = fmul fast float %540, %530
  %542 = fmul fast float %528, 2.000000e+00
  %543 = fsub fast float 1.000000e+00, %542
  %544 = fmul fast float %543, %531
  %545 = fadd fast float %544, %542
  %546 = fmul fast float %545, %531
  %547 = fmul fast float %536, %536
  %548 = fmul fast float %541, %541
  %549 = fmul fast float %546, %546
  br label %566

; <label>:550                                     ; preds = %513
  %551 = fmul fast float %194, %194
  %552 = fmul fast float %198, %198
  %553 = fmul fast float %202, %202
  %554 = fadd fast float %551, -1.000000e+00
  %555 = fadd fast float %552, -1.000000e+00
  %556 = fadd fast float %553, -1.000000e+00
  %557 = fmul fast float %402, %554
  %558 = fmul fast float %402, %555
  %559 = fmul fast float %402, %556
  %560 = fadd fast float %557, 1.000000e+00
  %561 = fadd fast float %558, 1.000000e+00
  %562 = fadd fast float %559, 1.000000e+00
  %563 = fmul fast float %560, %377
  %564 = fmul fast float %561, %378
  %565 = fmul fast float %562, %379
  br label %566

; <label>:566                                     ; preds = %550, %516, %407, %365
  %567 = phi float [ %512, %407 ], [ %388, %516 ], [ %388, %550 ], [ 0x3FA23C0BE0000000, %365 ]
  %568 = phi float [ %504, %407 ], [ %547, %516 ], [ %563, %550 ], [ 1.000000e+00, %365 ]
  %569 = phi float [ %505, %407 ], [ %548, %516 ], [ %564, %550 ], [ 1.000000e+00, %365 ]
  %570 = phi float [ %506, %407 ], [ %549, %516 ], [ %565, %550 ], [ 1.000000e+00, %365 ]
  %571 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.i32 %571, 1
  %573 = and i32 %572, 1
  %574 = icmp ne i32 %573, 0
  %575 = add i32 %32, 196
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = and i32 %577, 32
  %579 = icmp ne i32 %578, 0
  %580 = and i1 %574, %579
  %581 = select i1 %580, float 1.000000e+00, float %568
  %582 = select i1 %580, float 0x3FD3333340000000, float %569
  %583 = select i1 %580, float 0x3FD3333340000000, float %570
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = and i32 %585, 32
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %660, label %588

; <label>:588                                     ; preds = %566
  %589 = add i32 %32, 60
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = add i32 %32, 208
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = add i32 %594, 0
  %596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %596, %dx.types.Handle %55, float %366, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  %599 = extractvalue %dx.types.ResRet.f32 %597, 1
  %600 = extractvalue %dx.types.ResRet.f32 %597, 2
  %601 = extractvalue %dx.types.ResRet.f32 %597, 3
  %602 = and i32 %591, 255
  %603 = uitofp i32 %602 to float
  %604 = lshr i32 %591, 8
  %605 = and i32 %604, 255
  %606 = uitofp i32 %605 to float
  %607 = lshr i32 %591, 16
  %608 = and i32 %607, 255
  %609 = uitofp i32 %608 to float
  %610 = fmul fast float %609, 0x3F70101000000000
  %611 = fmul fast float %598, %603
  %612 = fadd fast float %611, %606
  %613 = fmul fast float %612, 0x3F70101000000000
  %614 = fadd fast float %599, -5.000000e-01
  %615 = fadd fast float %601, -5.000000e-01
  %616 = fmul fast float %614, %610
  %617 = fmul fast float %615, %610
  %618 = fadd fast float %616, 5.000000e-01
  %619 = fadd fast float %617, 5.000000e-01
  %620 = fmul fast float %618, 2.000000e+00
  %621 = fadd fast float %620, -1.000000e+00
  %622 = fmul fast float %619, 2.000000e+00
  %623 = fadd fast float %622, -1.000000e+00
  %624 = fadd fast float %621, %623
  %625 = fmul fast float %624, 5.000000e-01
  %626 = fsub fast float %621, %623
  %627 = fmul fast float %626, 5.000000e-01
  %628 = call float @dx.op.unary.f32(i32 6, float %625)  ; FAbs(value)
  %629 = fsub fast float 1.000000e+00, %628
  %630 = call float @dx.op.unary.f32(i32 6, float %627)  ; FAbs(value)
  %631 = fsub fast float %629, %630
  %632 = call float @dx.op.dot3.f32(i32 55, float %625, float %627, float %631, float %625, float %627, float %631)  ; Dot3(ax,ay,az,bx,by,bz)
  %633 = call float @dx.op.unary.f32(i32 25, float %632)  ; Rsqrt(value)
  %634 = fmul fast float %625, %633
  %635 = fmul fast float %627, %633
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = and i32 %637, 67108864
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %656, label %640

; <label>:640                                     ; preds = %588
  %641 = add i32 %32, 152
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = and i32 %643, 65535
  %645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %644)  ; LegacyF16ToF32(value)
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = and i32 %647, 65535
  %649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %648)  ; LegacyF16ToF32(value)
  %650 = lshr i32 %643, 16
  %651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %650)  ; LegacyF16ToF32(value)
  %652 = fsub fast float %613, %651
  %653 = fmul fast float %652, %645
  %654 = fadd fast float %653, %649
  %655 = call float @dx.op.unary.f32(i32 7, float %654)  ; Saturate(value)
  br label %656

; <label>:656                                     ; preds = %640, %588
  %657 = phi float [ %655, %640 ], [ %613, %588 ]
  %658 = call float @dx.op.dot2.f32(i32 54, float %634, float %635, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %659 = call float @dx.op.dot2.f32(i32 54, float %634, float %635, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %660

; <label>:660                                     ; preds = %656, %566
  %661 = phi float [ %657, %656 ], [ 0x3FD6666660000000, %566 ]
  %662 = phi float [ %658, %656 ], [ 0.000000e+00, %566 ]
  %663 = phi float [ %659, %656 ], [ 0.000000e+00, %566 ]
  %664 = phi float [ %600, %656 ], [ 1.000000e+00, %566 ]
  %665 = add i32 %32, 96
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = lshr i32 %667, 22
  %669 = shl nuw nsw i32 %668, 5
  %670 = call float @dx.op.legacyF16ToF32(i32 131, i32 %669)  ; LegacyF16ToF32(value)
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = and i32 %672, 64
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %708, label %675

; <label>:675                                     ; preds = %660
  %676 = add i32 %32, 216
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %676, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = add i32 %678, 0
  %680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %679, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = and i32 %682, 131072
  %684 = icmp eq i32 %683, 0
  %685 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %680, %dx.types.Handle %55, float %366, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %686 = extractvalue %dx.types.ResRet.f32 %685, 0
  %687 = extractvalue %dx.types.ResRet.f32 %685, 1
  %688 = extractvalue %dx.types.ResRet.f32 %685, 2
  %689 = fmul fast float %686, %182
  %690 = fmul fast float %687, %185
  %691 = fmul fast float %688, %188
  br i1 %684, label %698, label %692

; <label>:692                                     ; preds = %675
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 0
  %695 = fmul fast float %694, %689
  %696 = fmul fast float %694, %690
  %697 = fmul fast float %694, %691
  br label %698

; <label>:698                                     ; preds = %692, %675
  %699 = phi float [ %695, %692 ], [ %689, %675 ]
  %700 = phi float [ %696, %692 ], [ %690, %675 ]
  %701 = phi float [ %697, %692 ], [ %691, %675 ]
  %702 = fmul fast float %699, %670
  %703 = select i1 %176, float %702, float %699
  %704 = call float @dx.op.dot3.f32(i32 55, float %703, float %700, float %701, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %705 = select i1 %176, float 0.000000e+00, float %699
  %706 = select i1 %176, float %704, float %700
  %707 = select i1 %176, float 0.000000e+00, float %701
  br label %708

; <label>:708                                     ; preds = %698, %660
  %709 = phi float [ %705, %698 ], [ 0.000000e+00, %660 ]
  %710 = phi float [ %706, %698 ], [ 0.000000e+00, %660 ]
  %711 = phi float [ %707, %698 ], [ 0.000000e+00, %660 ]
  %712 = add i32 %32, 64
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = and i32 %714, 255
  %716 = uitofp i32 %715 to float
  %717 = lshr i32 %714, 8
  %718 = and i32 %717, 255
  %719 = uitofp i32 %718 to float
  %720 = call float @dx.op.dot3.f32(i32 55, float %581, float %582, float %583, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %721 = fmul fast float %719, %720
  %722 = fadd fast float %721, %716
  %723 = fmul fast float %722, 0x3F70101020000000
  %724 = call float @dx.op.unary.f32(i32 7, float %723)  ; Saturate(value)
  br label %725

; <label>:725                                     ; preds = %708, %175
  %726 = phi float [ %662, %708 ], [ 0.000000e+00, %175 ]
  %727 = phi float [ %663, %708 ], [ 0.000000e+00, %175 ]
  %728 = phi float [ %581, %708 ], [ 0.000000e+00, %175 ]
  %729 = phi float [ %582, %708 ], [ 0.000000e+00, %175 ]
  %730 = phi float [ %583, %708 ], [ 0.000000e+00, %175 ]
  %731 = phi float [ %709, %708 ], [ 0.000000e+00, %175 ]
  %732 = phi float [ %710, %708 ], [ 0.000000e+00, %175 ]
  %733 = phi float [ %711, %708 ], [ 0.000000e+00, %175 ]
  %734 = phi float [ %567, %708 ], [ 0.000000e+00, %175 ]
  %735 = phi float [ 1.000000e+00, %708 ], [ 0.000000e+00, %175 ]
  %736 = phi float [ %661, %708 ], [ 0.000000e+00, %175 ]
  %737 = phi float [ %664, %708 ], [ 0.000000e+00, %175 ]
  %738 = phi float [ %724, %708 ], [ 0.000000e+00, %175 ]
  %739 = icmp ult i32 %256, 2
  %740 = add i32 %32, 40
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = add i32 %32, 44
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = or i32 %745, %742
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %1571, label %748

; <label>:748                                     ; preds = %725
  %749 = add i32 %32, 172
  %750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %749, i32 undef)  ; BufferLoad(srv,index,wot)
  %751 = extractvalue %dx.types.ResRet.i32 %750, 0
  %752 = lshr i32 %751, 16
  %753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %752)  ; LegacyF16ToF32(value)
  %754 = fmul fast float %753, 0x3F50624DE0000000
  %755 = add i32 %32, 72
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %755, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = lshr i32 %757, 16
  %759 = and i32 %758, 255
  %760 = lshr i32 %757, 24
  %761 = add i32 %32, 180
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = and i32 %763, 65535
  %765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %764)  ; LegacyF16ToF32(value)
  %766 = lshr i32 %763, 16
  %767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %766)  ; LegacyF16ToF32(value)
  %768 = add i32 %32, 48
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %768, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = lshr i32 %770, 22
  %772 = shl nuw nsw i32 %771, 5
  %773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %772)  ; LegacyF16ToF32(value)
  %774 = shl i32 %770, 4
  %775 = and i32 %774, 32752
  %776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %775)  ; LegacyF16ToF32(value)
  %777 = lshr i32 %770, 7
  %778 = and i32 %777, 32752
  %779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %778)  ; LegacyF16ToF32(value)
  %780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %781 = extractvalue %dx.types.CBufRet.f32 %780, 3
  %782 = fmul fast float %781, 1.000000e+03
  %783 = fmul fast float %249, %782
  %784 = call float @dx.op.unary.f32(i32 22, float %783)  ; Frc(value)
  %785 = fadd fast float %784, %239
  %786 = fmul fast float %250, %782
  %787 = call float @dx.op.unary.f32(i32 22, float %786)  ; Frc(value)
  %788 = fadd fast float %787, %241
  %789 = fmul fast float %754, %782
  %790 = call float @dx.op.unary.f32(i32 22, float %789)  ; Frc(value)
  %791 = fmul fast float %790, 0x401921FB60000000
  %792 = fadd fast float %791, %773
  %793 = call float @dx.op.unary.f32(i32 13, float %792)  ; Sin(value)
  %794 = call float @dx.op.unary.f32(i32 12, float %792)  ; Cos(value)
  %795 = fsub fast float -0.000000e+00, %793
  %796 = fadd fast float %49, -5.000000e-01
  %797 = fadd fast float %50, -5.000000e-01
  %798 = fmul fast float %765, %796
  %799 = fmul fast float %767, %797
  %800 = fadd fast float %798, 5.000000e-01
  %801 = fadd fast float %799, 5.000000e-01
  %802 = fmul fast float %776, %800
  %803 = fmul fast float %779, %801
  %804 = fmul fast float %794, %802
  %805 = call float @dx.op.tertiary.f32(i32 46, float %795, float %803, float %804)  ; FMad(a,b,c)
  %806 = fmul fast float %793, %802
  %807 = call float @dx.op.tertiary.f32(i32 46, float %794, float %803, float %806)  ; FMad(a,b,c)
  %808 = fadd fast float %785, %805
  %809 = fadd fast float %788, %807
  %810 = icmp ugt i32 %759, 1
  %811 = icmp ugt i32 %757, 33554431
  %812 = or i1 %811, %810
  br i1 %812, label %813, label %838

; <label>:813                                     ; preds = %748
  %814 = add i32 %32, 148
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = lshr i32 %816, 16
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = fmul fast float %781, %818
  %820 = call float @dx.op.unary.f32(i32 22, float %819)  ; Frc(value)
  %821 = mul nuw nsw i32 %759, %760
  %822 = uitofp i32 %821 to float
  %823 = fmul fast float %820, %822
  %824 = call float @dx.op.unary.f32(i32 27, float %823)  ; Round_ni(value)
  %825 = fptoui float %824 to i32
  %826 = urem i32 %825, %759
  %827 = udiv i32 %825, %760
  %828 = call float @dx.op.unary.f32(i32 22, float %808)  ; Frc(value)
  %829 = call float @dx.op.unary.f32(i32 22, float %809)  ; Frc(value)
  %830 = uitofp i32 %826 to float
  %831 = uitofp i32 %827 to float
  %832 = fadd fast float %828, %830
  %833 = fadd fast float %829, %831
  %834 = uitofp i32 %759 to float
  %835 = uitofp i32 %760 to float
  %836 = fdiv fast float %832, %834
  %837 = fdiv fast float %833, %835
  br label %838

; <label>:838                                     ; preds = %813, %748
  %839 = phi float [ %836, %813 ], [ %808, %748 ]
  %840 = phi float [ %837, %813 ], [ %809, %748 ]
  %841 = and i32 %742, 16777216
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %952, label %843

; <label>:843                                     ; preds = %838
  %844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %845 = extractvalue %dx.types.CBufRet.f32 %844, 0
  %846 = extractvalue %dx.types.CBufRet.f32 %844, 1
  %847 = extractvalue %dx.types.CBufRet.f32 %844, 2
  %848 = fadd fast float %845, %106
  %849 = fadd fast float %846, %107
  %850 = fadd fast float %847, %108
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 0
  %853 = call float @dx.op.unary.f32(i32 7, float %852)  ; Saturate(value)
  %854 = icmp eq i32 %31, 65535
  br i1 %854, label %949, label %855

; <label>:855                                     ; preds = %843
  %856 = lshr i32 %31, 1
  %857 = shl i32 %856, 2
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = and i32 %31, 1
  %861 = icmp ne i32 %860, 0
  %862 = lshr i32 %859, 16
  %863 = and i32 %859, 65535
  %864 = select i1 %861, i32 %862, i32 %863
  %865 = icmp eq i32 %864, 65535
  br i1 %865, label %945, label %866

; <label>:866                                     ; preds = %855
  %867 = mul nuw nsw i32 %864, 40
  %868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.f32 %868, 0
  %870 = extractvalue %dx.types.ResRet.f32 %868, 1
  %871 = extractvalue %dx.types.ResRet.f32 %868, 2
  %872 = add nuw nsw i32 %867, 12
  %873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.f32 %873, 0
  %875 = extractvalue %dx.types.ResRet.f32 %873, 1
  %876 = extractvalue %dx.types.ResRet.f32 %873, 2
  %877 = add nuw nsw i32 %867, 24
  %878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %877, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.f32 %878, 0
  %880 = extractvalue %dx.types.ResRet.f32 %878, 1
  %881 = extractvalue %dx.types.ResRet.f32 %878, 2
  %882 = add nuw nsw i32 %867, 36
  %883 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.f32 %883, 0
  %885 = fsub fast float %848, %869
  %886 = fsub fast float %849, %870
  %887 = fsub fast float %850, %871
  %888 = fmul fast float %884, %885
  %889 = fmul fast float %884, %886
  %890 = fmul fast float %884, %887
  %891 = call float @dx.op.unary.f32(i32 27, float %888)  ; Round_ni(value)
  %892 = call float @dx.op.unary.f32(i32 27, float %889)  ; Round_ni(value)
  %893 = call float @dx.op.unary.f32(i32 27, float %890)  ; Round_ni(value)
  %894 = fadd fast float %891, 5.000000e-01
  %895 = fadd fast float %892, 5.000000e-01
  %896 = fadd fast float %893, 5.000000e-01
  %897 = fmul fast float %894, %874
  %898 = fmul fast float %895, %875
  %899 = fmul fast float %896, %876
  %900 = shl i32 %31, 2
  %901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.i32 %901, 0
  %903 = add i32 %902, 0
  %904 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %903, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %905 = call float @dx.op.unary.f32(i32 22, float %897)  ; Frc(value)
  %906 = call float @dx.op.unary.f32(i32 22, float %898)  ; Frc(value)
  %907 = call float @dx.op.unary.f32(i32 22, float %899)  ; Frc(value)
  %908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %904, %dx.types.Handle %28, float %905, float %906, float %907, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %909 = extractvalue %dx.types.ResRet.f32 %908, 0
  %910 = extractvalue %dx.types.ResRet.f32 %908, 1
  %911 = extractvalue %dx.types.ResRet.f32 %908, 2
  %912 = fmul fast float %909, 1.023000e+03
  %913 = fmul fast float %910, 1.023000e+03
  %914 = fmul fast float %911, 1.023000e+03
  %915 = fadd fast float %912, 5.000000e-01
  %916 = fadd fast float %913, 5.000000e-01
  %917 = fadd fast float %914, 5.000000e-01
  %918 = call float @dx.op.unary.f32(i32 27, float %915)  ; Round_ni(value)
  %919 = call float @dx.op.unary.f32(i32 27, float %916)  ; Round_ni(value)
  %920 = call float @dx.op.unary.f32(i32 27, float %917)  ; Round_ni(value)
  %921 = fsub fast float %888, %891
  %922 = fsub fast float %889, %892
  %923 = fsub fast float %890, %893
  %924 = fmul fast float %921, 7.500000e-01
  %925 = fmul fast float %922, 7.500000e-01
  %926 = fmul fast float %923, 7.500000e-01
  %927 = fadd fast float %891, 1.250000e-01
  %928 = fadd fast float %927, %924
  %929 = fadd fast float %928, %918
  %930 = fadd fast float %892, 1.250000e-01
  %931 = fadd fast float %930, %925
  %932 = fadd fast float %931, %919
  %933 = fadd fast float %893, 1.250000e-01
  %934 = fadd fast float %933, %926
  %935 = fadd fast float %934, %920
  %936 = fmul fast float %929, %879
  %937 = fmul fast float %932, %880
  %938 = fmul fast float %935, %881
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = add i32 %940, 0
  %942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %941, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %942, %dx.types.Handle %26, float %936, float %937, float %938, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %944 = extractvalue %dx.types.ResRet.f32 %943, 0
  br label %945

; <label>:945                                     ; preds = %866, %855
  %946 = phi float [ %944, %866 ], [ -1.000000e+00, %855 ]
  %947 = fadd fast float %946, %853
  %948 = call float @dx.op.unary.f32(i32 7, float %947)  ; Saturate(value)
  br label %949

; <label>:949                                     ; preds = %945, %843
  %950 = phi float [ %948, %945 ], [ %853, %843 ]
  %951 = fmul fast float %950, %51
  br label %952

; <label>:952                                     ; preds = %949, %838
  %953 = phi float [ %951, %949 ], [ %51, %838 ]
  %954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %955 = extractvalue %dx.types.ResRet.i32 %954, 0
  %956 = and i32 %955, 256
  %957 = icmp eq i32 %956, 0
  br i1 %957, label %1004, label %958

; <label>:958                                     ; preds = %952
  %959 = add i32 %32, 236
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = add i32 %961, 0
  %963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %962, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %964 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %963, %dx.types.Handle %56, float %839, float %840, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %965 = extractvalue %dx.types.ResRet.f32 %964, 0
  %966 = add i32 %32, 84
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = shl i32 %968, 4
  %970 = and i32 %969, 32752
  %971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %970)  ; LegacyF16ToF32(value)
  %972 = lshr i32 %968, 7
  %973 = and i32 %972, 32752
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = fsub fast float 1.000000e+00, %953
  %976 = call float @dx.op.binary.f32(i32 35, float %975, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %977 = bitcast float %953 to i32
  %978 = sitofp i32 %977 to float
  %979 = fadd fast float %978, 0xC1CFBF8940000000
  %980 = fmul fast float %974, %979
  %981 = fadd fast float %980, 0x41CFBF8940000000
  %982 = fptosi float %981 to i32
  %983 = bitcast i32 %982 to float
  %984 = bitcast float %976 to i32
  %985 = sitofp i32 %984 to float
  %986 = fadd fast float %985, 0xC1CFBF8940000000
  %987 = fmul fast float %986, %974
  %988 = fadd fast float %987, 0x41CFBF8940000000
  %989 = fptosi float %988 to i32
  %990 = bitcast i32 %989 to float
  %991 = fmul fast float %983, %971
  %992 = fmul fast float %990, %971
  %993 = fsub fast float %976, %991
  %994 = fadd fast float %992, %976
  %995 = call float @dx.op.unary.f32(i32 7, float %993)  ; Saturate(value)
  %996 = call float @dx.op.unary.f32(i32 7, float %994)  ; Saturate(value)
  %997 = fsub fast float %965, %995
  %998 = fsub fast float %996, %995
  %999 = bitcast float %998 to i32
  %1000 = sub nsw i32 2129859010, %999
  %1001 = bitcast i32 %1000 to float
  %1002 = fmul fast float %1001, %997
  %1003 = call float @dx.op.unary.f32(i32 7, float %1002)  ; Saturate(value)
  br label %1004

; <label>:1004                                    ; preds = %958, %952
  %1005 = phi float [ %1003, %958 ], [ %953, %952 ]
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = and i32 %1007, 128
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1026, label %1010

; <label>:1010                                    ; preds = %1004
  %1011 = add i32 %32, 228
  %1012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.i32 %1012, 0
  %1014 = add i32 %1013, 0
  %1015 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1014, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1016 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1015, %dx.types.Handle %56, float %839, float %840, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1017 = extractvalue %dx.types.ResRet.f32 %1016, 0
  %1018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.i32 %1018, 0
  %1020 = and i32 %1019, 524288
  %1021 = icmp ne i32 %1020, 0
  %1022 = fcmp fast ogt float %1017, 0x3FE0101020000000
  %1023 = select i1 %1022, float 1.000000e+00, float 0.000000e+00
  %1024 = select i1 %1021, float %1023, float %1017
  %1025 = fmul fast float %1024, %1005
  br label %1026

; <label>:1026                                    ; preds = %1010, %1004
  %1027 = phi float [ %1025, %1010 ], [ %1005, %1004 ]
  %1028 = fcmp fast ult float %1027, 0x3F70101020000000
  br i1 %1028, label %1571, label %1029

; <label>:1029                                    ; preds = %1026
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = and i32 %1031, 16
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1232, label %1034

; <label>:1034                                    ; preds = %1029
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %755, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = add i32 %32, 204
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = add i32 %1039, 0
  %1041 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1040, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1042 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1041, %dx.types.Handle %55, float %839, float %840, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1043 = extractvalue %dx.types.ResRet.f32 %1042, 0
  %1044 = extractvalue %dx.types.ResRet.f32 %1042, 1
  %1045 = extractvalue %dx.types.ResRet.f32 %1042, 2
  %1046 = extractvalue %dx.types.ResRet.f32 %1042, 3
  %1047 = and i32 %1036, 255
  %1048 = uitofp i32 %1047 to float
  %1049 = lshr i32 %1036, 8
  %1050 = and i32 %1049, 255
  %1051 = uitofp i32 %1050 to float
  %1052 = fmul fast float %1046, %1048
  %1053 = fadd fast float %1052, %1051
  %1054 = fmul fast float %1053, 0x3F70101000000000
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = and i32 %1056, 512
  %1058 = icmp eq i32 %1057, 0
  br i1 %1058, label %1067, label %1059

; <label>:1059                                    ; preds = %1034
  %1060 = add i32 %32, 244
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = add i32 %1062, 0
  %1064 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1063, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1065 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1064, %dx.types.Handle %56, float %839, float %840, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1066 = extractvalue %dx.types.ResRet.f32 %1065, 0
  br label %1067

; <label>:1067                                    ; preds = %1059, %1034
  %1068 = phi float [ %1066, %1059 ], [ 1.000000e+00, %1034 ]
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = and i32 %1070, 33554432
  %1072 = icmp eq i32 %1071, 0
  br i1 %1072, label %1179, label %1073

; <label>:1073                                    ; preds = %1067
  %1074 = add i32 %32, 144
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = and i32 %1076, 65535
  %1078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1077)  ; LegacyF16ToF32(value)
  %1079 = lshr i32 %1076, 16
  %1080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1079)  ; LegacyF16ToF32(value)
  %1081 = add i32 %32, 148
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = and i32 %1083, 65535
  %1085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1084)  ; LegacyF16ToF32(value)
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = lshr i32 %1087, 24
  %1089 = uitofp i32 %1088 to float
  %1090 = fmul fast float %1089, 0x3F70101020000000
  %1091 = and i32 %1087, 255
  %1092 = uitofp i32 %1091 to float
  %1093 = fmul fast float %1092, 0x3F70101020000000
  %1094 = lshr i32 %1087, 8
  %1095 = and i32 %1094, 255
  %1096 = uitofp i32 %1095 to float
  %1097 = fmul fast float %1096, 0x3F70101020000000
  %1098 = lshr i32 %1087, 16
  %1099 = and i32 %1098, 255
  %1100 = uitofp i32 %1099 to float
  %1101 = fmul fast float %1100, 0x3F70101020000000
  %1102 = add i32 %32, 140
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = lshr i32 %1104, 24
  %1106 = uitofp i32 %1105 to float
  %1107 = fmul fast float %1106, 0x3F70101020000000
  %1108 = and i32 %1104, 255
  %1109 = uitofp i32 %1108 to float
  %1110 = fmul fast float %1109, 0x3F70101020000000
  %1111 = lshr i32 %1104, 8
  %1112 = and i32 %1111, 255
  %1113 = uitofp i32 %1112 to float
  %1114 = fmul fast float %1113, 0x3F70101020000000
  %1115 = lshr i32 %1104, 16
  %1116 = and i32 %1115, 255
  %1117 = uitofp i32 %1116 to float
  %1118 = fmul fast float %1117, 0x3F70101020000000
  %1119 = bitcast float %1043 to i32
  %1120 = ashr i32 %1119, 1
  %1121 = sub nsw i32 1597463174, %1120
  %1122 = bitcast i32 %1121 to float
  %1123 = fmul fast float %1043, 5.000000e-01
  %1124 = fmul fast float %1122, %1122
  %1125 = fmul fast float %1124, %1123
  %1126 = fsub fast float 1.500000e+00, %1125
  %1127 = fmul fast float %1122, %1043
  %1128 = fmul fast float %1127, %1126
  %1129 = bitcast float %1044 to i32
  %1130 = ashr i32 %1129, 1
  %1131 = sub nsw i32 1597463174, %1130
  %1132 = bitcast i32 %1131 to float
  %1133 = fmul fast float %1044, 5.000000e-01
  %1134 = fmul fast float %1132, %1132
  %1135 = fmul fast float %1134, %1133
  %1136 = fsub fast float 1.500000e+00, %1135
  %1137 = fmul fast float %1132, %1044
  %1138 = fmul fast float %1137, %1136
  %1139 = bitcast float %1045 to i32
  %1140 = ashr i32 %1139, 1
  %1141 = sub nsw i32 1597463174, %1140
  %1142 = bitcast i32 %1141 to float
  %1143 = fmul fast float %1045, 5.000000e-01
  %1144 = fmul fast float %1142, %1142
  %1145 = fmul fast float %1144, %1143
  %1146 = fsub fast float 1.500000e+00, %1145
  %1147 = fmul fast float %1142, %1045
  %1148 = fmul fast float %1147, %1146
  %1149 = fsub fast float %1128, %1110
  %1150 = fsub fast float %1138, %1114
  %1151 = fsub fast float %1148, %1118
  %1152 = fmul fast float %1149, %1078
  %1153 = fmul fast float %1150, %1080
  %1154 = fmul fast float %1151, %1085
  %1155 = fadd fast float %1152, %1093
  %1156 = fadd fast float %1153, %1097
  %1157 = fadd fast float %1154, %1101
  %1158 = call float @dx.op.unary.f32(i32 7, float %1155)  ; Saturate(value)
  %1159 = call float @dx.op.unary.f32(i32 7, float %1156)  ; Saturate(value)
  %1160 = call float @dx.op.unary.f32(i32 7, float %1157)  ; Saturate(value)
  %1161 = fmul fast float %1158, %1158
  %1162 = fmul fast float %1159, %1159
  %1163 = fmul fast float %1160, %1160
  %1164 = fsub fast float %1161, %1043
  %1165 = fsub fast float %1162, %1044
  %1166 = fsub fast float %1163, %1045
  %1167 = fmul fast float %1164, %1068
  %1168 = fmul fast float %1165, %1068
  %1169 = fmul fast float %1166, %1068
  %1170 = fadd fast float %1167, %1043
  %1171 = fadd fast float %1168, %1044
  %1172 = fadd fast float %1169, %1045
  %1173 = fadd fast float %1090, %1054
  %1174 = fsub fast float %1173, %1107
  %1175 = call float @dx.op.unary.f32(i32 7, float %1174)  ; Saturate(value)
  %1176 = fsub fast float %1175, %1054
  %1177 = fmul fast float %1176, %1068
  %1178 = fadd fast float %1177, %1054
  br label %1232

; <label>:1179                                    ; preds = %1067
  %1180 = and i32 %1070, 134217728
  %1181 = icmp eq i32 %1180, 0
  br i1 %1181, label %1216, label %1182

; <label>:1182                                    ; preds = %1179
  %1183 = call float @dx.op.unary.f32(i32 24, float %226)  ; Sqrt(value)
  %1184 = call float @dx.op.unary.f32(i32 24, float %230)  ; Sqrt(value)
  %1185 = call float @dx.op.unary.f32(i32 24, float %234)  ; Sqrt(value)
  %1186 = fadd fast float %1183, -5.000000e-01
  %1187 = fadd fast float %1184, -5.000000e-01
  %1188 = fadd fast float %1185, -5.000000e-01
  %1189 = fmul fast float %1186, %1068
  %1190 = fmul fast float %1187, %1068
  %1191 = fmul fast float %1188, %1068
  %1192 = fadd fast float %1189, 5.000000e-01
  %1193 = fadd fast float %1190, 5.000000e-01
  %1194 = fadd fast float %1191, 5.000000e-01
  %1195 = call float @dx.op.unary.f32(i32 24, float %1043)  ; Sqrt(value)
  %1196 = call float @dx.op.unary.f32(i32 24, float %1044)  ; Sqrt(value)
  %1197 = call float @dx.op.unary.f32(i32 24, float %1045)  ; Sqrt(value)
  %1198 = fmul fast float %1192, 2.000000e+00
  %1199 = fsub fast float 1.000000e+00, %1198
  %1200 = fmul fast float %1199, %1195
  %1201 = fadd fast float %1200, %1198
  %1202 = fmul fast float %1201, %1195
  %1203 = fmul fast float %1193, 2.000000e+00
  %1204 = fsub fast float 1.000000e+00, %1203
  %1205 = fmul fast float %1204, %1196
  %1206 = fadd fast float %1205, %1203
  %1207 = fmul fast float %1206, %1196
  %1208 = fmul fast float %1194, 2.000000e+00
  %1209 = fsub fast float 1.000000e+00, %1208
  %1210 = fmul fast float %1209, %1197
  %1211 = fadd fast float %1210, %1208
  %1212 = fmul fast float %1211, %1197
  %1213 = fmul fast float %1202, %1202
  %1214 = fmul fast float %1207, %1207
  %1215 = fmul fast float %1212, %1212
  br label %1232

; <label>:1216                                    ; preds = %1179
  %1217 = fmul fast float %226, %226
  %1218 = fmul fast float %230, %230
  %1219 = fmul fast float %234, %234
  %1220 = fadd fast float %1217, -1.000000e+00
  %1221 = fadd fast float %1218, -1.000000e+00
  %1222 = fadd fast float %1219, -1.000000e+00
  %1223 = fmul fast float %1068, %1220
  %1224 = fmul fast float %1068, %1221
  %1225 = fmul fast float %1068, %1222
  %1226 = fadd fast float %1223, 1.000000e+00
  %1227 = fadd fast float %1224, 1.000000e+00
  %1228 = fadd fast float %1225, 1.000000e+00
  %1229 = fmul fast float %1226, %1043
  %1230 = fmul fast float %1227, %1044
  %1231 = fmul fast float %1228, %1045
  br label %1232

; <label>:1232                                    ; preds = %1216, %1182, %1073, %1029
  %1233 = phi float [ %1178, %1073 ], [ %1054, %1182 ], [ %1054, %1216 ], [ 0x3FA23C0BE0000000, %1029 ]
  %1234 = phi float [ %1170, %1073 ], [ %1213, %1182 ], [ %1229, %1216 ], [ 1.000000e+00, %1029 ]
  %1235 = phi float [ %1171, %1073 ], [ %1214, %1182 ], [ %1230, %1216 ], [ 1.000000e+00, %1029 ]
  %1236 = phi float [ %1172, %1073 ], [ %1215, %1182 ], [ %1231, %1216 ], [ 1.000000e+00, %1029 ]
  %1237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1238 = extractvalue %dx.types.CBufRet.i32 %1237, 1
  %1239 = and i32 %1238, 1
  %1240 = icmp ne i32 %1239, 0
  %1241 = add i32 %32, 196
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = and i32 %1243, 32
  %1245 = icmp ne i32 %1244, 0
  %1246 = and i1 %1240, %1245
  %1247 = select i1 %1246, float 1.000000e+00, float %1234
  %1248 = select i1 %1246, float 0x3FD3333340000000, float %1235
  %1249 = select i1 %1246, float 0x3FD3333340000000, float %1236
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = and i32 %1251, 32
  %1253 = icmp eq i32 %1252, 0
  br i1 %1253, label %1326, label %1254

; <label>:1254                                    ; preds = %1232
  %1255 = add i32 %32, 76
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = add i32 %32, 212
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = add i32 %1260, 0
  %1262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1263 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1262, %dx.types.Handle %55, float %839, float %840, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.ResRet.f32 %1263, 1
  %1266 = extractvalue %dx.types.ResRet.f32 %1263, 2
  %1267 = extractvalue %dx.types.ResRet.f32 %1263, 3
  %1268 = and i32 %1257, 255
  %1269 = uitofp i32 %1268 to float
  %1270 = lshr i32 %1257, 8
  %1271 = and i32 %1270, 255
  %1272 = uitofp i32 %1271 to float
  %1273 = lshr i32 %1257, 16
  %1274 = and i32 %1273, 255
  %1275 = uitofp i32 %1274 to float
  %1276 = fmul fast float %1275, 0x3F70101000000000
  %1277 = fmul fast float %1264, %1269
  %1278 = fadd fast float %1277, %1272
  %1279 = fmul fast float %1278, 0x3F70101000000000
  %1280 = fadd fast float %1265, -5.000000e-01
  %1281 = fadd fast float %1267, -5.000000e-01
  %1282 = fmul fast float %1280, %1276
  %1283 = fmul fast float %1281, %1276
  %1284 = fadd fast float %1282, 5.000000e-01
  %1285 = fadd fast float %1283, 5.000000e-01
  %1286 = fmul fast float %1284, 2.000000e+00
  %1287 = fadd fast float %1286, -1.000000e+00
  %1288 = fmul fast float %1285, 2.000000e+00
  %1289 = fadd fast float %1288, -1.000000e+00
  %1290 = fadd fast float %1287, %1289
  %1291 = fmul fast float %1290, 5.000000e-01
  %1292 = fsub fast float %1287, %1289
  %1293 = fmul fast float %1292, 5.000000e-01
  %1294 = call float @dx.op.unary.f32(i32 6, float %1291)  ; FAbs(value)
  %1295 = fsub fast float 1.000000e+00, %1294
  %1296 = call float @dx.op.unary.f32(i32 6, float %1293)  ; FAbs(value)
  %1297 = fsub fast float %1295, %1296
  %1298 = call float @dx.op.dot3.f32(i32 55, float %1291, float %1293, float %1297, float %1291, float %1293, float %1297)  ; Dot3(ax,ay,az,bx,by,bz)
  %1299 = call float @dx.op.unary.f32(i32 25, float %1298)  ; Rsqrt(value)
  %1300 = fmul fast float %1291, %1299
  %1301 = fmul fast float %1293, %1299
  %1302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.i32 %1302, 0
  %1304 = and i32 %1303, 67108864
  %1305 = icmp eq i32 %1304, 0
  br i1 %1305, label %1322, label %1306

; <label>:1306                                    ; preds = %1254
  %1307 = add i32 %32, 168
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1307, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = and i32 %1309, 65535
  %1311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1310)  ; LegacyF16ToF32(value)
  %1312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = and i32 %1313, 65535
  %1315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1314)  ; LegacyF16ToF32(value)
  %1316 = lshr i32 %1309, 16
  %1317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1316)  ; LegacyF16ToF32(value)
  %1318 = fsub fast float %1279, %1317
  %1319 = fmul fast float %1318, %1311
  %1320 = fadd fast float %1319, %1315
  %1321 = call float @dx.op.unary.f32(i32 7, float %1320)  ; Saturate(value)
  br label %1322

; <label>:1322                                    ; preds = %1306, %1254
  %1323 = phi float [ %1321, %1306 ], [ %1279, %1254 ]
  %1324 = call float @dx.op.dot2.f32(i32 54, float %1300, float %1301, float %33, float %34)  ; Dot2(ax,ay,bx,by)
  %1325 = call float @dx.op.dot2.f32(i32 54, float %1300, float %1301, float %35, float %36)  ; Dot2(ax,ay,bx,by)
  br label %1326

; <label>:1326                                    ; preds = %1322, %1232
  %1327 = phi float [ %1323, %1322 ], [ 0x3FD6666660000000, %1232 ]
  %1328 = phi float [ %1324, %1322 ], [ 0.000000e+00, %1232 ]
  %1329 = phi float [ %1325, %1322 ], [ 0.000000e+00, %1232 ]
  %1330 = phi float [ %1266, %1322 ], [ 1.000000e+00, %1232 ]
  %1331 = add i32 %32, 112
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = lshr i32 %1333, 22
  %1335 = shl nuw nsw i32 %1334, 5
  %1336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1335)  ; LegacyF16ToF32(value)
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = and i32 %1338, 64
  %1340 = icmp eq i32 %1339, 0
  br i1 %1340, label %1374, label %1341

; <label>:1341                                    ; preds = %1326
  %1342 = add i32 %32, 220
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1342, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = add i32 %1344, 0
  %1346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1345, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.i32 %1347, 0
  %1349 = and i32 %1348, 131072
  %1350 = icmp eq i32 %1349, 0
  %1351 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1346, %dx.types.Handle %55, float %839, float %840, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1352 = extractvalue %dx.types.ResRet.f32 %1351, 0
  %1353 = extractvalue %dx.types.ResRet.f32 %1351, 1
  %1354 = extractvalue %dx.types.ResRet.f32 %1351, 2
  %1355 = fmul fast float %1352, %214
  %1356 = fmul fast float %1353, %217
  %1357 = fmul fast float %1354, %220
  br i1 %1350, label %1364, label %1358

; <label>:1358                                    ; preds = %1341
  %1359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1360 = extractvalue %dx.types.CBufRet.f32 %1359, 0
  %1361 = fmul fast float %1360, %1355
  %1362 = fmul fast float %1360, %1356
  %1363 = fmul fast float %1360, %1357
  br label %1364

; <label>:1364                                    ; preds = %1358, %1341
  %1365 = phi float [ %1361, %1358 ], [ %1355, %1341 ]
  %1366 = phi float [ %1362, %1358 ], [ %1356, %1341 ]
  %1367 = phi float [ %1363, %1358 ], [ %1357, %1341 ]
  %1368 = fmul fast float %1365, %1336
  %1369 = select i1 %176, float %1368, float %1365
  %1370 = call float @dx.op.dot3.f32(i32 55, float %1369, float %1366, float %1367, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1371 = select i1 %176, float 0.000000e+00, float %1365
  %1372 = select i1 %176, float %1370, float %1366
  %1373 = select i1 %176, float 0.000000e+00, float %1367
  br label %1374

; <label>:1374                                    ; preds = %1364, %1326
  %1375 = phi float [ %1371, %1364 ], [ 0.000000e+00, %1326 ]
  %1376 = phi float [ %1372, %1364 ], [ 0.000000e+00, %1326 ]
  %1377 = phi float [ %1373, %1364 ], [ 0.000000e+00, %1326 ]
  %1378 = add i32 %32, 80
  %1379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1378, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.i32 %1379, 0
  %1381 = and i32 %1380, 255
  %1382 = uitofp i32 %1381 to float
  %1383 = lshr i32 %1380, 8
  %1384 = and i32 %1383, 255
  %1385 = uitofp i32 %1384 to float
  %1386 = call float @dx.op.dot3.f32(i32 55, float %1247, float %1248, float %1249, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1387 = fmul fast float %1385, %1386
  %1388 = fadd fast float %1387, %1382
  %1389 = fmul fast float %1388, 0x3F70101020000000
  %1390 = call float @dx.op.unary.f32(i32 7, float %1389)  ; Saturate(value)
  br i1 %739, label %1391, label %1399

; <label>:1391                                    ; preds = %1374
  %1392 = fsub fast float 1.000000e+00, %1027
  %1393 = fmul fast float %1392, %728
  %1394 = fmul fast float %1392, %729
  %1395 = fmul fast float %1392, %730
  %1396 = fmul fast float %1392, %731
  %1397 = fmul fast float %1392, %732
  %1398 = fmul fast float %1392, %733
  br label %1399

; <label>:1399                                    ; preds = %1391, %1374
  %1400 = phi float [ %1393, %1391 ], [ %728, %1374 ]
  %1401 = phi float [ %1394, %1391 ], [ %729, %1374 ]
  %1402 = phi float [ %1395, %1391 ], [ %730, %1374 ]
  %1403 = phi float [ %1396, %1391 ], [ %731, %1374 ]
  %1404 = phi float [ %1397, %1391 ], [ %732, %1374 ]
  %1405 = phi float [ %1398, %1391 ], [ %733, %1374 ]
  %1406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.i32 %1406, 0
  %1408 = and i32 %1407, 3
  %1409 = icmp eq i32 %1408, 3
  br i1 %1409, label %1488, label %1410

; <label>:1410                                    ; preds = %1399
  %1411 = and i32 %1407, 16
  %1412 = icmp ne i32 %1411, 0
  %1413 = select i1 %1412, float %1027, float 0.000000e+00
  %1414 = icmp eq i32 %1408, 0
  br i1 %1414, label %1415, label %1443

; <label>:1415                                    ; preds = %1410
  %1416 = and i32 %1407, 64
  %1417 = icmp ne i32 %1416, 0
  %1418 = select i1 %1417, float %1027, float 0.000000e+00
  %1419 = fsub fast float %1247, %1400
  %1420 = fsub fast float %1248, %1401
  %1421 = fsub fast float %1249, %1402
  %1422 = fmul fast float %1413, %1419
  %1423 = fmul fast float %1413, %1420
  %1424 = fmul fast float %1413, %1421
  %1425 = fadd fast float %1422, %1400
  %1426 = fadd fast float %1423, %1401
  %1427 = fadd fast float %1424, %1402
  %1428 = fsub fast float %1233, %734
  %1429 = fmul fast float %1413, %1428
  %1430 = fadd fast float %1429, %734
  %1431 = fsub fast float %1375, %1403
  %1432 = fsub fast float %1376, %1404
  %1433 = fsub fast float %1377, %1405
  %1434 = fmul fast float %1418, %1431
  %1435 = fmul fast float %1418, %1432
  %1436 = fmul fast float %1418, %1433
  %1437 = fadd fast float %1434, %1403
  %1438 = fadd fast float %1435, %1404
  %1439 = fadd fast float %1436, %1405
  %1440 = fsub fast float %1390, %738
  %1441 = fmul fast float %1413, %1440
  %1442 = fadd fast float %1441, %738
  br label %1488

; <label>:1443                                    ; preds = %1410
  %1444 = icmp eq i32 %1408, 1
  br i1 %1444, label %1445, label %1458

; <label>:1445                                    ; preds = %1443
  %1446 = fadd fast float %1247, -1.000000e+00
  %1447 = fadd fast float %1248, -1.000000e+00
  %1448 = fadd fast float %1249, -1.000000e+00
  %1449 = fmul fast float %1413, %1446
  %1450 = fmul fast float %1413, %1447
  %1451 = fmul fast float %1413, %1448
  %1452 = fadd fast float %1449, 1.000000e+00
  %1453 = fadd fast float %1450, 1.000000e+00
  %1454 = fadd fast float %1451, 1.000000e+00
  %1455 = fmul fast float %1452, %1400
  %1456 = fmul fast float %1453, %1401
  %1457 = fmul fast float %1454, %1402
  br label %1488

; <label>:1458                                    ; preds = %1443
  %1459 = icmp eq i32 %1408, 2
  br i1 %1459, label %1460, label %1488

; <label>:1460                                    ; preds = %1458
  %1461 = call float @dx.op.unary.f32(i32 24, float %1247)  ; Sqrt(value)
  %1462 = call float @dx.op.unary.f32(i32 24, float %1248)  ; Sqrt(value)
  %1463 = call float @dx.op.unary.f32(i32 24, float %1249)  ; Sqrt(value)
  %1464 = fadd fast float %1461, -5.000000e-01
  %1465 = fadd fast float %1462, -5.000000e-01
  %1466 = fadd fast float %1463, -5.000000e-01
  %1467 = fmul fast float %1464, %1413
  %1468 = fmul fast float %1465, %1413
  %1469 = fmul fast float %1466, %1413
  %1470 = fadd fast float %1467, 5.000000e-01
  %1471 = fadd fast float %1468, 5.000000e-01
  %1472 = fadd fast float %1469, 5.000000e-01
  %1473 = fmul fast float %1470, 2.000000e+00
  %1474 = fsub fast float 1.000000e+00, %1473
  %1475 = fmul fast float %1474, %1400
  %1476 = fadd fast float %1475, %1473
  %1477 = fmul fast float %1476, %1400
  %1478 = fmul fast float %1471, 2.000000e+00
  %1479 = fsub fast float 1.000000e+00, %1478
  %1480 = fmul fast float %1479, %1401
  %1481 = fadd fast float %1480, %1478
  %1482 = fmul fast float %1481, %1401
  %1483 = fmul fast float %1472, 2.000000e+00
  %1484 = fsub fast float 1.000000e+00, %1483
  %1485 = fmul fast float %1484, %1402
  %1486 = fadd fast float %1485, %1483
  %1487 = fmul fast float %1486, %1402
  br label %1488

; <label>:1488                                    ; preds = %1460, %1458, %1445, %1415, %1399
  %1489 = phi float [ %1400, %1399 ], [ %1477, %1460 ], [ %1400, %1458 ], [ %1455, %1445 ], [ %1425, %1415 ]
  %1490 = phi float [ %1401, %1399 ], [ %1482, %1460 ], [ %1401, %1458 ], [ %1456, %1445 ], [ %1426, %1415 ]
  %1491 = phi float [ %1402, %1399 ], [ %1487, %1460 ], [ %1402, %1458 ], [ %1457, %1445 ], [ %1427, %1415 ]
  %1492 = phi float [ %1403, %1399 ], [ %1403, %1460 ], [ %1403, %1458 ], [ %1403, %1445 ], [ %1437, %1415 ]
  %1493 = phi float [ %1404, %1399 ], [ %1404, %1460 ], [ %1404, %1458 ], [ %1404, %1445 ], [ %1438, %1415 ]
  %1494 = phi float [ %1405, %1399 ], [ %1405, %1460 ], [ %1405, %1458 ], [ %1405, %1445 ], [ %1439, %1415 ]
  %1495 = phi float [ %734, %1399 ], [ %734, %1460 ], [ %734, %1458 ], [ %734, %1445 ], [ %1430, %1415 ]
  %1496 = phi float [ %738, %1399 ], [ %738, %1460 ], [ %738, %1458 ], [ %738, %1445 ], [ %1442, %1415 ]
  %1497 = and i32 %1407, 12
  %1498 = icmp eq i32 %1497, 12
  br i1 %1498, label %1571, label %1499

; <label>:1499                                    ; preds = %1488
  %1500 = and i32 %1407, 2097184
  %1501 = icmp eq i32 %1500, 2097184
  %1502 = select i1 %1501, float %1027, float 0.000000e+00
  %1503 = and i32 %1407, 4194336
  %1504 = icmp eq i32 %1503, 4194336
  %1505 = select i1 %1504, float %1027, float 0.000000e+00
  %1506 = and i32 %1407, 8388640
  %1507 = icmp eq i32 %1506, 8388640
  %1508 = select i1 %1507, float %1027, float 0.000000e+00
  %1509 = icmp eq i32 %1497, 0
  br i1 %1509, label %1510, label %1523

; <label>:1510                                    ; preds = %1499
  %1511 = fsub fast float %1328, %726
  %1512 = fsub fast float %1329, %727
  %1513 = fmul fast float %1502, %1511
  %1514 = fmul fast float %1502, %1512
  %1515 = fadd fast float %1513, %726
  %1516 = fadd fast float %1514, %727
  %1517 = fsub fast float %1330, %737
  %1518 = fmul fast float %1505, %1517
  %1519 = fadd fast float %1518, %737
  %1520 = fsub fast float %1327, %736
  %1521 = fmul fast float %1508, %1520
  %1522 = fadd fast float %1521, %736
  br label %1571

; <label>:1523                                    ; preds = %1499
  %1524 = icmp eq i32 %1497, 4
  br i1 %1524, label %1525, label %1557

; <label>:1525                                    ; preds = %1523
  %1526 = fmul fast float %1502, %1328
  %1527 = fmul fast float %1502, %1329
  %1528 = fadd fast float %1526, %726
  %1529 = fadd fast float %1527, %727
  %1530 = call float @dx.op.binary.f32(i32 36, float %737, float %1330)  ; FMin(a,b)
  %1531 = fsub fast float %1530, %737
  %1532 = fmul fast float %1531, %1505
  %1533 = fadd fast float %1532, %737
  %1534 = fadd fast float %1327, %736
  %1535 = fmul fast float %1534, 0x3FF337FAE0000000
  %1536 = fmul fast float %736, %736
  %1537 = fmul fast float %1327, %1327
  %1538 = fadd fast float %1537, %1536
  %1539 = fmul fast float %1538, 0x3FE5152B00000000
  %1540 = fmul fast float %736, 0xBFCC1F85E0000000
  %1541 = fmul fast float %1540, %1327
  %1542 = fadd fast float %1541, 0xBFE1363700000000
  %1543 = fadd fast float %1542, %1535
  %1544 = fsub fast float %1543, %1539
  %1545 = fmul fast float %1534, 0x3FBA6F0D00000000
  %1546 = fmul fast float %1538, 0x3FD0432880000000
  %1547 = fmul fast float %736, 0xBFEF110800000000
  %1548 = fmul fast float %1547, %1327
  %1549 = fadd fast float %1548, 1.000000e+00
  %1550 = fsub fast float %1549, %1545
  %1551 = fadd fast float %1550, %1546
  %1552 = fdiv fast float %1544, %1551
  %1553 = call float @dx.op.unary.f32(i32 7, float %1552)  ; Saturate(value)
  %1554 = fsub fast float %1553, %736
  %1555 = fmul fast float %1554, %1508
  %1556 = fadd fast float %1555, %736
  br label %1571

; <label>:1557                                    ; preds = %1523
  %1558 = icmp eq i32 %1497, 8
  br i1 %1558, label %1559, label %1571

; <label>:1559                                    ; preds = %1557
  %1560 = fmul fast float %1502, %1328
  %1561 = fmul fast float %1502, %1329
  %1562 = fadd fast float %1560, %726
  %1563 = fadd fast float %1561, %727
  %1564 = call float @dx.op.binary.f32(i32 36, float %737, float %1330)  ; FMin(a,b)
  %1565 = fsub fast float %1564, %737
  %1566 = fmul fast float %1565, %1505
  %1567 = fadd fast float %1566, %737
  %1568 = fsub fast float %1327, %736
  %1569 = fmul fast float %1508, %1568
  %1570 = fadd fast float %1569, %736
  br label %1571

; <label>:1571                                    ; preds = %1559, %1557, %1525, %1510, %1488, %1026, %725
  %1572 = phi float [ %726, %1488 ], [ %726, %1026 ], [ %726, %725 ], [ %1515, %1510 ], [ %1528, %1525 ], [ %726, %1557 ], [ %1562, %1559 ]
  %1573 = phi float [ %727, %1488 ], [ %727, %1026 ], [ %727, %725 ], [ %1516, %1510 ], [ %1529, %1525 ], [ %727, %1557 ], [ %1563, %1559 ]
  %1574 = phi float [ %1489, %1488 ], [ %728, %1026 ], [ %728, %725 ], [ %1489, %1510 ], [ %1489, %1525 ], [ %1489, %1557 ], [ %1489, %1559 ]
  %1575 = phi float [ %1490, %1488 ], [ %729, %1026 ], [ %729, %725 ], [ %1490, %1510 ], [ %1490, %1525 ], [ %1490, %1557 ], [ %1490, %1559 ]
  %1576 = phi float [ %1491, %1488 ], [ %730, %1026 ], [ %730, %725 ], [ %1491, %1510 ], [ %1491, %1525 ], [ %1491, %1557 ], [ %1491, %1559 ]
  %1577 = phi float [ %1492, %1488 ], [ %731, %1026 ], [ %731, %725 ], [ %1492, %1510 ], [ %1492, %1525 ], [ %1492, %1557 ], [ %1492, %1559 ]
  %1578 = phi float [ %1493, %1488 ], [ %732, %1026 ], [ %732, %725 ], [ %1493, %1510 ], [ %1493, %1525 ], [ %1493, %1557 ], [ %1493, %1559 ]
  %1579 = phi float [ %1494, %1488 ], [ %733, %1026 ], [ %733, %725 ], [ %1494, %1510 ], [ %1494, %1525 ], [ %1494, %1557 ], [ %1494, %1559 ]
  %1580 = phi float [ %1495, %1488 ], [ %734, %1026 ], [ %734, %725 ], [ %1495, %1510 ], [ %1495, %1525 ], [ %1495, %1557 ], [ %1495, %1559 ]
  %1581 = phi float [ %736, %1488 ], [ %736, %1026 ], [ %736, %725 ], [ %1522, %1510 ], [ %1556, %1525 ], [ %736, %1557 ], [ %1570, %1559 ]
  %1582 = phi float [ %737, %1488 ], [ %737, %1026 ], [ %737, %725 ], [ %1519, %1510 ], [ %1533, %1525 ], [ %737, %1557 ], [ %1567, %1559 ]
  %1583 = phi float [ %1496, %1488 ], [ %738, %1026 ], [ %738, %725 ], [ %1496, %1510 ], [ %1496, %1525 ], [ %1496, %1557 ], [ %1496, %1559 ]
  %1584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1585 = extractvalue %dx.types.CBufRet.f32 %1584, 0
  %1586 = call float @dx.op.dot2.f32(i32 54, float %1572, float %1573, float %1572, float %1573)  ; Dot2(ax,ay,bx,by)
  %1587 = fmul fast float %1586, 0x3FE3333340000000
  %1588 = fsub fast float 1.000000e+00, %1587
  %1589 = call float @dx.op.dot3.f32(i32 55, float %1572, float %1573, float %1588, float %1572, float %1573, float %1588)  ; Dot3(ax,ay,az,bx,by,bz)
  %1590 = call float @dx.op.unary.f32(i32 25, float %1589)  ; Rsqrt(value)
  %1591 = fmul fast float %1590, %1572
  %1592 = fmul fast float %1590, %1573
  %1593 = fmul fast float %1588, %1590
  %1594 = fmul fast float %1593, %41
  %1595 = fmul fast float %1593, %42
  %1596 = fmul fast float %1593, %43
  %1597 = fmul fast float %1591, %37
  %1598 = fmul fast float %1591, %38
  %1599 = fmul fast float %1591, %39
  %1600 = fadd fast float %1594, %1597
  %1601 = fadd fast float %1595, %1598
  %1602 = fadd fast float %1596, %1599
  %1603 = fmul fast float %1592, %70
  %1604 = fmul fast float %1592, %71
  %1605 = fmul fast float %1592, %72
  %1606 = fadd fast float %1600, %1603
  %1607 = fadd fast float %1601, %1604
  %1608 = fadd fast float %1602, %1605
  %1609 = call float @dx.op.dot3.f32(i32 55, float %1606, float %1607, float %1608, float %1606, float %1607, float %1608)  ; Dot3(ax,ay,az,bx,by,bz)
  %1610 = call float @dx.op.unary.f32(i32 25, float %1609)  ; Rsqrt(value)
  %1611 = fmul fast float %1606, %1610
  %1612 = fmul fast float %1607, %1610
  %1613 = fmul fast float %1608, %1610
  %1614 = call float @dx.op.unary.f32(i32 83, float %106)  ; DerivCoarseX(value)
  %1615 = call float @dx.op.unary.f32(i32 83, float %107)  ; DerivCoarseX(value)
  %1616 = call float @dx.op.unary.f32(i32 83, float %108)  ; DerivCoarseX(value)
  %1617 = call float @dx.op.unary.f32(i32 84, float %106)  ; DerivCoarseY(value)
  %1618 = call float @dx.op.unary.f32(i32 84, float %107)  ; DerivCoarseY(value)
  %1619 = call float @dx.op.unary.f32(i32 84, float %108)  ; DerivCoarseY(value)
  %1620 = fadd fast float %1614, %106
  %1621 = fadd fast float %1615, %107
  %1622 = fadd fast float %1616, %108
  %1623 = fadd fast float %1617, %106
  %1624 = fadd fast float %1618, %107
  %1625 = fadd fast float %1619, %108
  %1626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1626, 0
  %1628 = extractvalue %dx.types.CBufRet.f32 %1626, 1
  %1629 = extractvalue %dx.types.CBufRet.f32 %1626, 2
  %1630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1631 = extractvalue %dx.types.CBufRet.f32 %1630, 2
  %1632 = extractvalue %dx.types.CBufRet.f32 %1630, 3
  %1633 = fmul fast float %1627, %59
  %1634 = fmul fast float %1633, %1631
  %1635 = fmul fast float %1628, %60
  %1636 = fmul fast float %1635, %1632
  %1637 = fptoui float %1634 to i32
  %1638 = fptoui float %1636 to i32
  %1639 = fadd fast float %1627, -1.000000e+00
  %1640 = fadd fast float %1628, -1.000000e+00
  %1641 = fptoui float %1639 to i32
  %1642 = fptoui float %1640 to i32
  %1643 = call i32 @dx.op.binary.i32(i32 40, i32 %1637, i32 %1641)  ; UMin(a,b)
  %1644 = call i32 @dx.op.binary.i32(i32 40, i32 %1638, i32 %1642)  ; UMin(a,b)
  %1645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.f32 %1645, 2
  %1647 = extractvalue %dx.types.CBufRet.f32 %1645, 3
  %1648 = fmul fast float %1646, %54
  %1649 = fsub fast float %1648, %1647
  %1650 = fadd fast float %1629, -1.000000e+00
  %1651 = call float @dx.op.binary.f32(i32 36, float %1649, float %1650)  ; FMin(a,b)
  %1652 = fptoui float %1651 to i32
  %1653 = fptoui float %1627 to i32
  %1654 = fptoui float %1628 to i32
  %1655 = mul i32 %1652, %1654
  %1656 = add i32 %1655, %1644
  %1657 = mul i32 %1656, %1653
  %1658 = add i32 %1657, %1643
  %1659 = shl i32 %1658, 2
  %1660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1659, i32 undef)  ; BufferLoad(srv,index,wot)
  %1661 = extractvalue %dx.types.ResRet.i32 %1660, 0
  %1662 = and i32 %1661, 1023
  %1663 = lshr i32 %1661, 10
  %1664 = icmp eq i32 %1662, 0
  br i1 %1664, label %2090, label %1665

; <label>:1665                                    ; preds = %1571
  %1666 = and i32 %1661, 1023
  br label %1667

; <label>:1667                                    ; preds = %1793, %1665
  %1668 = phi float [ %1794, %1793 ], [ 0.000000e+00, %1665 ]
  %1669 = phi float [ %1795, %1793 ], [ %1585, %1665 ]
  %1670 = phi float [ %1796, %1793 ], [ %1583, %1665 ]
  %1671 = phi float [ %1797, %1793 ], [ 0.000000e+00, %1665 ]
  %1672 = phi float [ %1798, %1793 ], [ 0.000000e+00, %1665 ]
  %1673 = phi float [ %1799, %1793 ], [ %1577, %1665 ]
  %1674 = phi float [ %1800, %1793 ], [ %1578, %1665 ]
  %1675 = phi float [ %1801, %1793 ], [ %1579, %1665 ]
  %1676 = phi float [ %1802, %1793 ], [ %1611, %1665 ]
  %1677 = phi float [ %1803, %1793 ], [ %1612, %1665 ]
  %1678 = phi float [ %1804, %1793 ], [ %1613, %1665 ]
  %1679 = phi float [ %1805, %1793 ], [ %1582, %1665 ]
  %1680 = phi float [ %1806, %1793 ], [ %1581, %1665 ]
  %1681 = phi float [ %1807, %1793 ], [ 0.000000e+00, %1665 ]
  %1682 = phi float [ %1808, %1793 ], [ %1580, %1665 ]
  %1683 = phi float [ %1809, %1793 ], [ %1574, %1665 ]
  %1684 = phi float [ %1810, %1793 ], [ %1575, %1665 ]
  %1685 = phi float [ %1811, %1793 ], [ %1576, %1665 ]
  %1686 = phi i32 [ %1743, %1793 ], [ 0, %1665 ]
  %1687 = add nuw nsw i32 %1686, %1663
  %1688 = shl i32 %1687, 2
  %1689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1688, i32 undef)  ; BufferLoad(srv,index,wot)
  %1690 = extractvalue %dx.types.ResRet.i32 %1689, 0
  %1691 = shl i32 %1690, 8
  %1692 = or i32 %1691, 48
  %1693 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.f32 %1693, 0
  %1695 = extractvalue %dx.types.ResRet.f32 %1693, 1
  %1696 = extractvalue %dx.types.ResRet.f32 %1693, 2
  %1697 = extractvalue %dx.types.ResRet.f32 %1693, 3
  %1698 = or i32 %1691, 64
  %1699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %1698, i32 undef)  ; BufferLoad(srv,index,wot)
  %1700 = extractvalue %dx.types.ResRet.i32 %1699, 0
  %1701 = extractvalue %dx.types.ResRet.i32 %1699, 1
  %1702 = or i32 %1691, 80
  %1703 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1702, i32 undef)  ; BufferLoad(srv,index,wot)
  %1704 = extractvalue %dx.types.ResRet.f32 %1703, 2
  %1705 = extractvalue %dx.types.ResRet.f32 %1703, 3
  %1706 = or i32 %1691, 96
  %1707 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1706, i32 undef)  ; BufferLoad(srv,index,wot)
  %1708 = extractvalue %dx.types.ResRet.f32 %1707, 0
  %1709 = extractvalue %dx.types.ResRet.f32 %1707, 1
  %1710 = extractvalue %dx.types.ResRet.f32 %1707, 2
  %1711 = extractvalue %dx.types.ResRet.f32 %1707, 3
  %1712 = or i32 %1691, 112
  %1713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1712, i32 undef)  ; BufferLoad(srv,index,wot)
  %1714 = extractvalue %dx.types.ResRet.f32 %1713, 2
  %1715 = or i32 %1691, 128
  %1716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1715, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.f32 %1716, 0
  %1718 = extractvalue %dx.types.ResRet.f32 %1716, 1
  %1719 = extractvalue %dx.types.ResRet.f32 %1716, 2
  %1720 = extractvalue %dx.types.ResRet.f32 %1716, 3
  %1721 = or i32 %1691, 144
  %1722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1721, i32 undef)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.f32 %1722, 0
  %1724 = extractvalue %dx.types.ResRet.f32 %1722, 1
  %1725 = extractvalue %dx.types.ResRet.f32 %1722, 2
  %1726 = extractvalue %dx.types.ResRet.f32 %1722, 3
  %1727 = or i32 %1691, 160
  %1728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1727, i32 undef)  ; BufferLoad(srv,index,wot)
  %1729 = extractvalue %dx.types.ResRet.f32 %1728, 0
  %1730 = extractvalue %dx.types.ResRet.f32 %1728, 1
  %1731 = extractvalue %dx.types.ResRet.f32 %1728, 2
  %1732 = extractvalue %dx.types.ResRet.f32 %1728, 3
  %1733 = or i32 %1691, 192
  %1734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %1735 = extractvalue %dx.types.ResRet.i32 %1734, 0
  %1736 = or i32 %1691, 208
  %1737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.f32 %1737, 0
  %1739 = or i32 %1691, 248
  %1740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.f32 %1740, 0
  %1742 = extractvalue %dx.types.ResRet.f32 %1740, 1
  %1743 = add nuw nsw i32 %1686, 1
  %1744 = bitcast float %1697 to i32
  %1745 = and i32 %1744, 2560
  %1746 = icmp eq i32 %1745, 0
  %1747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.f32 %1747, 0
  %1749 = extractvalue %dx.types.ResRet.f32 %1747, 1
  %1750 = extractvalue %dx.types.ResRet.f32 %1747, 2
  %1751 = extractvalue %dx.types.ResRet.f32 %1747, 3
  %1752 = call float @dx.op.dot4.f32(i32 56, float %1748, float %1749, float %1750, float %1751, float %106, float %107, float %108, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1753 = or i32 %1691, 16
  %1754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1755 = extractvalue %dx.types.ResRet.f32 %1754, 0
  %1756 = extractvalue %dx.types.ResRet.f32 %1754, 1
  %1757 = extractvalue %dx.types.ResRet.f32 %1754, 2
  %1758 = extractvalue %dx.types.ResRet.f32 %1754, 3
  %1759 = call float @dx.op.dot4.f32(i32 56, float %1755, float %1756, float %1757, float %1758, float %106, float %107, float %108, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1760 = or i32 %1691, 32
  %1761 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.f32 %1761, 0
  %1763 = extractvalue %dx.types.ResRet.f32 %1761, 1
  %1764 = extractvalue %dx.types.ResRet.f32 %1761, 2
  %1765 = extractvalue %dx.types.ResRet.f32 %1761, 3
  %1766 = call float @dx.op.dot4.f32(i32 56, float %1762, float %1763, float %1764, float %1765, float %106, float %107, float %108, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1767 = call float @dx.op.unary.f32(i32 27, float %1752)  ; Round_ni(value)
  %1768 = call float @dx.op.unary.f32(i32 6, float %1767)  ; FAbs(value)
  %1769 = call float @dx.op.unary.f32(i32 27, float %1759)  ; Round_ni(value)
  %1770 = call float @dx.op.unary.f32(i32 6, float %1769)  ; FAbs(value)
  %1771 = call float @dx.op.unary.f32(i32 6, float %1766)  ; FAbs(value)
  %1772 = call float @dx.op.unary.f32(i32 27, float %1771)  ; Round_ni(value)
  %1773 = fadd fast float %1770, %1768
  %1774 = fadd fast float %1773, %1772
  %1775 = fcmp fast oeq float %1774, 0.000000e+00
  %1776 = call float @dx.op.dot4.f32(i32 56, float %1748, float %1749, float %1750, float %1751, float %1620, float %1621, float %1622, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1777 = call float @dx.op.dot4.f32(i32 56, float %1755, float %1756, float %1757, float %1758, float %1620, float %1621, float %1622, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1778 = call float @dx.op.dot4.f32(i32 56, float %1748, float %1749, float %1750, float %1751, float %1623, float %1624, float %1625, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1779 = call float @dx.op.dot4.f32(i32 56, float %1755, float %1756, float %1757, float %1758, float %1623, float %1624, float %1625, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1780 = fsub fast float %1776, %1752
  %1781 = fsub fast float %1778, %1752
  %1782 = fsub fast float %1777, %1759
  %1783 = fsub fast float %1779, %1759
  %1784 = call float @dx.op.dot3.f32(i32 55, float %1694, float %1695, float %1696, float %41, float %42, float %43)  ; Dot3(ax,ay,az,bx,by,bz)
  %1785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1786 = extractvalue %dx.types.CBufRet.f32 %1785, 2
  %1787 = fadd fast float %1786, %1784
  %1788 = call float @dx.op.unary.f32(i32 7, float %1787)  ; Saturate(value)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1785, 0
  %1790 = fcmp fast ogt float %1788, %1789
  %1791 = and i1 %1775, %1790
  %1792 = and i1 %1746, %1791
  br i1 %1792, label %1813, label %1793

; <label>:1793                                    ; preds = %2076, %1894, %1813, %1667
  %1794 = phi float [ %1668, %1813 ], [ %1897, %1894 ], [ %1897, %2076 ], [ %1668, %1667 ]
  %1795 = phi float [ %1669, %1813 ], [ %1669, %1894 ], [ %2051, %2076 ], [ %1669, %1667 ]
  %1796 = phi float [ %1670, %1813 ], [ %1670, %1894 ], [ %2049, %2076 ], [ %1670, %1667 ]
  %1797 = phi float [ %1671, %1813 ], [ %1671, %1894 ], [ %2021, %2076 ], [ %1671, %1667 ]
  %1798 = phi float [ %1672, %1813 ], [ %1672, %1894 ], [ %2019, %2076 ], [ %1672, %1667 ]
  %1799 = phi float [ %1673, %1813 ], [ %1673, %1894 ], [ %2086, %2076 ], [ %1673, %1667 ]
  %1800 = phi float [ %1674, %1813 ], [ %1674, %1894 ], [ %2087, %2076 ], [ %1674, %1667 ]
  %1801 = phi float [ %1675, %1813 ], [ %1675, %1894 ], [ %2088, %2076 ], [ %1675, %1667 ]
  %1802 = phi float [ %1676, %1813 ], [ %1676, %1894 ], [ %2000, %2076 ], [ %1676, %1667 ]
  %1803 = phi float [ %1677, %1813 ], [ %1677, %1894 ], [ %2001, %2076 ], [ %1677, %1667 ]
  %1804 = phi float [ %1678, %1813 ], [ %1678, %1894 ], [ %2002, %2076 ], [ %1678, %1667 ]
  %1805 = phi float [ %1679, %1813 ], [ %1679, %1894 ], [ %2029, %2076 ], [ %1679, %1667 ]
  %1806 = phi float [ %1680, %1813 ], [ %1680, %1894 ], [ %2026, %2076 ], [ %1680, %1667 ]
  %1807 = phi float [ %1681, %1813 ], [ %1681, %1894 ], [ %2023, %2076 ], [ %1681, %1667 ]
  %1808 = phi float [ %1682, %1813 ], [ %1682, %1894 ], [ %2017, %2076 ], [ %1682, %1667 ]
  %1809 = phi float [ %1683, %1813 ], [ %1683, %1894 ], [ %2012, %2076 ], [ %1683, %1667 ]
  %1810 = phi float [ %1684, %1813 ], [ %1684, %1894 ], [ %2013, %2076 ], [ %1684, %1667 ]
  %1811 = phi float [ %1685, %1813 ], [ %1685, %1894 ], [ %2014, %2076 ], [ %1685, %1667 ]
  %1812 = icmp eq i32 %1743, %1666
  br i1 %1812, label %2089, label %1667

; <label>:1813                                    ; preds = %1667
  %1814 = extractvalue %dx.types.ResRet.f32 %1713, 3
  %1815 = extractvalue %dx.types.ResRet.f32 %1713, 1
  %1816 = extractvalue %dx.types.ResRet.f32 %1713, 0
  %1817 = extractvalue %dx.types.ResRet.f32 %1703, 1
  %1818 = extractvalue %dx.types.ResRet.f32 %1703, 0
  %1819 = extractvalue %dx.types.ResRet.i32 %1699, 3
  %1820 = extractvalue %dx.types.ResRet.i32 %1699, 2
  %1821 = add i32 %1819, 0
  %1822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1821, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1823 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1824 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1822, %dx.types.Handle %1823, float %1752, float %1759, float undef, float undef, i32 0, i32 0, i32 undef, float %1780, float %1782, float undef, float %1781, float %1783, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1825 = extractvalue %dx.types.ResRet.f32 %1824, 0
  %1826 = fmul fast float %1825, %1818
  %1827 = fadd fast float %1826, %1817
  %1828 = call float @dx.op.unary.f32(i32 7, float %1827)  ; Saturate(value)
  %1829 = fmul fast float %1752, %1708
  %1830 = call float @dx.op.tertiary.f32(i32 46, float %1709, float %1759, float %1829)  ; FMad(a,b,c)
  %1831 = fadd fast float %1830, %1816
  %1832 = fmul fast float %1752, %1710
  %1833 = call float @dx.op.tertiary.f32(i32 46, float %1711, float %1759, float %1832)  ; FMad(a,b,c)
  %1834 = fadd fast float %1833, %1815
  %1835 = fmul fast float %1780, %1708
  %1836 = call float @dx.op.tertiary.f32(i32 46, float %1709, float %1782, float %1835)  ; FMad(a,b,c)
  %1837 = fmul fast float %1780, %1710
  %1838 = call float @dx.op.tertiary.f32(i32 46, float %1711, float %1782, float %1837)  ; FMad(a,b,c)
  %1839 = fmul fast float %1781, %1708
  %1840 = call float @dx.op.tertiary.f32(i32 46, float %1709, float %1783, float %1839)  ; FMad(a,b,c)
  %1841 = fmul fast float %1781, %1710
  %1842 = call float @dx.op.tertiary.f32(i32 46, float %1711, float %1783, float %1841)  ; FMad(a,b,c)
  %1843 = add i32 %1820, 0
  %1844 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1843, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1845 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1844, %dx.types.Handle %1823, float %1831, float %1834, float undef, float undef, i32 0, i32 0, i32 undef, float %1836, float %1838, float undef, float %1840, float %1842, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1846 = extractvalue %dx.types.ResRet.f32 %1845, 0
  %1847 = and i32 %1744, 1024
  %1848 = icmp ne i32 %1847, 0
  %1849 = fcmp fast ogt float %1846, 0x3FE0101020000000
  %1850 = uitofp i1 %1849 to float
  %1851 = select i1 %1848, float %1850, float %1846
  %1852 = and i32 %1744, 8192
  %1853 = icmp ne i32 %1852, 0
  %1854 = select i1 %1853, float %1814, float 1.000000e+00
  %1855 = fmul fast float %1752, 2.000000e+00
  %1856 = fadd fast float %1855, -1.000000e+00
  %1857 = call float @dx.op.unary.f32(i32 6, float %1856)  ; FAbs(value)
  %1858 = fmul fast float %1857, %1741
  %1859 = fsub fast float %1858, %1741
  %1860 = call float @dx.op.unary.f32(i32 7, float %1859)  ; Saturate(value)
  %1861 = fmul fast float %1759, 2.000000e+00
  %1862 = fadd fast float %1861, -1.000000e+00
  %1863 = call float @dx.op.unary.f32(i32 6, float %1862)  ; FAbs(value)
  %1864 = fmul fast float %1863, %1742
  %1865 = fsub fast float %1864, %1742
  %1866 = call float @dx.op.unary.f32(i32 7, float %1865)  ; Saturate(value)
  %1867 = fmul fast float %1771, %1704
  %1868 = fsub fast float %1867, %1704
  %1869 = call float @dx.op.unary.f32(i32 7, float %1868)  ; Saturate(value)
  %1870 = fmul fast float %1828, %1854
  %1871 = fmul fast float %1870, %1825
  %1872 = fmul fast float %1871, %1860
  %1873 = fmul fast float %1872, %1851
  %1874 = fmul fast float %1873, %1866
  %1875 = fmul fast float %1874, %1869
  %1876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1877 = extractvalue %dx.types.CBufRet.f32 %1876, 1
  %1878 = extractvalue %dx.types.CBufRet.f32 %1876, 0
  %1879 = fsub fast float %1788, %1878
  %1880 = fmul fast float %1879, %1877
  %1881 = call float @dx.op.unary.f32(i32 7, float %1880)  ; Saturate(value)
  %1882 = fmul fast float %1875, %1705
  %1883 = fadd fast float %1875, %1705
  %1884 = fmul fast float %1883, %1714
  %1885 = fsub fast float %1884, %1714
  %1886 = call float @dx.op.unary.f32(i32 7, float %1885)  ; Saturate(value)
  %1887 = and i32 %1744, 128
  %1888 = icmp ne i32 %1887, 0
  %1889 = select i1 %1888, float %1886, float %1882
  %1890 = fmul fast float %1889, %1881
  %1891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1892 = extractvalue %dx.types.CBufRet.f32 %1891, 0
  %1893 = fcmp fast ugt float %1890, %1892
  br i1 %1893, label %1894, label %1793

; <label>:1894                                    ; preds = %1813
  %1895 = select i1 %1853, float %1890, float 0.000000e+00
  %1896 = fadd fast float %1895, %1668
  %1897 = call float @dx.op.unary.f32(i32 7, float %1896)  ; Saturate(value)
  br i1 %1853, label %1793, label %1898

; <label>:1898                                    ; preds = %1894
  %1899 = and i32 %1744, 4
  %1900 = and i32 %1744, 8
  %1901 = add i32 %1700, 0
  %1902 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1901, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1903 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1904 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1902, %dx.types.Handle %1903, float %1831, float %1834, float undef, float undef, i32 0, i32 0, i32 undef, float %1836, float %1838, float undef, float %1840, float %1842, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1905 = extractvalue %dx.types.ResRet.f32 %1904, 0
  %1906 = extractvalue %dx.types.ResRet.f32 %1904, 1
  %1907 = extractvalue %dx.types.ResRet.f32 %1904, 2
  %1908 = extractvalue %dx.types.ResRet.f32 %1904, 3
  %1909 = bitcast float %1726 to i32
  %1910 = and i32 %1909, 255
  %1911 = uitofp i32 %1910 to float
  %1912 = lshr i32 %1909, 8
  %1913 = and i32 %1912, 255
  %1914 = uitofp i32 %1913 to float
  %1915 = fmul fast float %1908, %1911
  %1916 = fadd fast float %1915, %1914
  %1917 = fmul fast float %1916, 0x3F70101000000000
  %1918 = add i32 %1701, 0
  %1919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1918, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1920 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1919, %dx.types.Handle %1903, float %1831, float %1834, float undef, float undef, i32 0, i32 0, i32 undef, float %1836, float %1838, float undef, float %1840, float %1842, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1921 = extractvalue %dx.types.ResRet.f32 %1920, 0
  %1922 = extractvalue %dx.types.ResRet.f32 %1920, 1
  %1923 = extractvalue %dx.types.ResRet.f32 %1920, 2
  %1924 = extractvalue %dx.types.ResRet.f32 %1920, 3
  %1925 = bitcast float %1720 to i32
  %1926 = and i32 %1925, 255
  %1927 = uitofp i32 %1926 to float
  %1928 = lshr i32 %1925, 8
  %1929 = and i32 %1928, 255
  %1930 = uitofp i32 %1929 to float
  %1931 = lshr i32 %1925, 16
  %1932 = and i32 %1931, 255
  %1933 = uitofp i32 %1932 to float
  %1934 = fmul fast float %1933, 0x3F70101000000000
  %1935 = fmul fast float %1921, %1927
  %1936 = fadd fast float %1935, %1930
  %1937 = fmul fast float %1936, 0x3F70101000000000
  %1938 = fadd fast float %1922, -5.000000e-01
  %1939 = fadd fast float %1924, -5.000000e-01
  %1940 = fmul fast float %1938, %1934
  %1941 = fmul fast float %1939, %1934
  %1942 = fadd fast float %1940, 5.000000e-01
  %1943 = fadd fast float %1941, 5.000000e-01
  %1944 = fmul fast float %1905, %1729
  %1945 = fmul fast float %1906, %1730
  %1946 = fmul fast float %1907, %1731
  %1947 = fmul fast float %1942, 2.000000e+00
  %1948 = fadd fast float %1947, -1.000000e+00
  %1949 = fmul fast float %1943, 2.000000e+00
  %1950 = fadd fast float %1949, -1.000000e+00
  %1951 = fadd fast float %1948, %1950
  %1952 = fmul fast float %1951, 5.000000e-01
  %1953 = fsub fast float %1948, %1950
  %1954 = fmul fast float %1953, 5.000000e-01
  %1955 = call float @dx.op.unary.f32(i32 6, float %1952)  ; FAbs(value)
  %1956 = fsub fast float 1.000000e+00, %1955
  %1957 = call float @dx.op.unary.f32(i32 6, float %1954)  ; FAbs(value)
  %1958 = fsub fast float %1956, %1957
  %1959 = call float @dx.op.dot3.f32(i32 55, float %1952, float %1954, float %1958, float %1952, float %1954, float %1958)  ; Dot3(ax,ay,az,bx,by,bz)
  %1960 = call float @dx.op.unary.f32(i32 25, float %1959)  ; Rsqrt(value)
  %1961 = fmul fast float %1952, %1960
  %1962 = fmul fast float %1954, %1960
  %1963 = fmul fast float %1960, %1958
  %1964 = fmul fast float %1963, %1694
  %1965 = fmul fast float %1963, %1695
  %1966 = fmul fast float %1963, %1696
  %1967 = fmul fast float %1961, %1717
  %1968 = fmul fast float %1961, %1718
  %1969 = fmul fast float %1961, %1719
  %1970 = fadd fast float %1967, %1964
  %1971 = fadd fast float %1968, %1965
  %1972 = fadd fast float %1969, %1966
  %1973 = fmul fast float %1962, %1723
  %1974 = fmul fast float %1962, %1724
  %1975 = fmul fast float %1962, %1725
  %1976 = fadd fast float %1970, %1973
  %1977 = fadd fast float %1971, %1974
  %1978 = fadd fast float %1972, %1975
  %1979 = call float @dx.op.dot3.f32(i32 55, float %1976, float %1977, float %1978, float %1976, float %1977, float %1978)  ; Dot3(ax,ay,az,bx,by,bz)
  %1980 = call float @dx.op.unary.f32(i32 25, float %1979)  ; Rsqrt(value)
  %1981 = fmul fast float %1976, %1980
  %1982 = fmul fast float %1977, %1980
  %1983 = fmul fast float %1978, %1980
  %1984 = icmp ne i32 %1900, 0
  %1985 = select i1 %1984, float 1.000000e+00, float 0.000000e+00
  %1986 = fmul fast float %1890, %1985
  %1987 = and i32 %1744, 1
  %1988 = icmp eq i32 %1987, 0
  br i1 %1988, label %1989, label %1993

; <label>:1989                                    ; preds = %1898
  %1990 = fsub fast float %1981, %1676
  %1991 = fsub fast float %1982, %1677
  %1992 = fsub fast float %1983, %1678
  br label %1993

; <label>:1993                                    ; preds = %1989, %1898
  %1994 = phi float [ %1990, %1989 ], [ %1981, %1898 ]
  %1995 = phi float [ %1991, %1989 ], [ %1982, %1898 ]
  %1996 = phi float [ %1992, %1989 ], [ %1983, %1898 ]
  %1997 = fmul float %1996, %1986
  %1998 = fmul float %1995, %1986
  %1999 = fmul float %1994, %1986
  %2000 = fadd fast float %1999, %1676
  %2001 = fadd fast float %1998, %1677
  %2002 = fadd fast float %1997, %1678
  %2003 = icmp ne i32 %1899, 0
  %2004 = select i1 %2003, float 1.000000e+00, float 0.000000e+00
  %2005 = fmul fast float %1890, %2004
  %2006 = fsub fast float %1944, %1683
  %2007 = fsub fast float %1945, %1684
  %2008 = fsub fast float %1946, %1685
  %2009 = fmul fast float %2006, %2005
  %2010 = fmul fast float %2007, %2005
  %2011 = fmul fast float %2008, %2005
  %2012 = fadd fast float %2009, %1683
  %2013 = fadd fast float %2010, %1684
  %2014 = fadd fast float %2011, %1685
  %2015 = fsub fast float %1917, %1682
  %2016 = fmul fast float %2015, %2005
  %2017 = fadd fast float %2016, %1682
  %2018 = fmul fast float %2005, %1672
  %2019 = fsub fast float %1672, %2018
  %2020 = fmul fast float %2005, %1671
  %2021 = fsub fast float %1671, %2020
  %2022 = fadd fast float %1890, %1681
  %2023 = call float @dx.op.unary.f32(i32 7, float %2022)  ; Saturate(value)
  %2024 = fsub fast float %1937, %1680
  %2025 = fmul fast float %2024, %1986
  %2026 = fadd fast float %2025, %1680
  %2027 = fsub fast float %1923, %1679
  %2028 = fmul fast float %2027, %1986
  %2029 = fadd fast float %2028, %1679
  %2030 = call float @dx.op.dot3.f32(i32 55, float %1944, float %1945, float %1946, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2032 = extractvalue %dx.types.CBufRet.f32 %2031, 0
  %2033 = extractvalue %dx.types.CBufRet.f32 %2031, 1
  %2034 = fmul fast float %2033, %2030
  %2035 = fadd fast float %2034, %2032
  %2036 = call float @dx.op.unary.f32(i32 7, float %2035)  ; Saturate(value)
  %2037 = bitcast float %1732 to i32
  %2038 = and i32 %2037, 65535
  %2039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2038)  ; LegacyF16ToF32(value)
  %2040 = lshr i32 %2037, 16
  %2041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2040)  ; LegacyF16ToF32(value)
  %2042 = fcmp fast oge float %2039, 0.000000e+00
  %2043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2044 = extractvalue %dx.types.CBufRet.f32 %2043, 0
  %2045 = select i1 %2042, float %2039, float %2044
  %2046 = fadd fast float %2045, %2041
  %2047 = fsub fast float %2036, %1670
  %2048 = fmul fast float %2047, %1890
  %2049 = fadd fast float %2048, %1670
  %2050 = fmul fast float %2046, %1890
  %2051 = call float @dx.op.binary.f32(i32 35, float %1669, float %2050)  ; FMax(a,b)
  %2052 = and i32 %1744, 16
  %2053 = icmp eq i32 %2052, 0
  br i1 %2053, label %2076, label %2054

; <label>:2054                                    ; preds = %1993
  %2055 = bitcast float %1738 to i32
  %2056 = add i32 %1735, 0
  %2057 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2056, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2058 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2057, %dx.types.Handle %1903, float %1831, float %1834, float undef, float undef, i32 0, i32 0, i32 undef, float %1836, float %1838, float undef, float %1840, float %1842, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2059 = extractvalue %dx.types.ResRet.f32 %2058, 0
  %2060 = extractvalue %dx.types.ResRet.f32 %2058, 1
  %2061 = extractvalue %dx.types.ResRet.f32 %2058, 2
  %2062 = and i32 %2055, 65535
  %2063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2062)  ; LegacyF16ToF32(value)
  %2064 = fmul fast float %2059, %1729
  %2065 = fmul fast float %2060, %1730
  %2066 = fmul fast float %2061, %1731
  %2067 = and i32 %1744, 16384
  %2068 = icmp ne i32 %2067, 0
  %2069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2070 = extractvalue %dx.types.CBufRet.f32 %2069, 0
  %2071 = select i1 %2068, float %2070, float 1.000000e+00
  %2072 = fmul fast float %2071, %2063
  %2073 = fmul fast float %2064, %2072
  %2074 = fmul fast float %2065, %2072
  %2075 = fmul fast float %2066, %2072
  br label %2076

; <label>:2076                                    ; preds = %2054, %1993
  %2077 = phi float [ %2073, %2054 ], [ 0.000000e+00, %1993 ]
  %2078 = phi float [ %2074, %2054 ], [ 0.000000e+00, %1993 ]
  %2079 = phi float [ %2075, %2054 ], [ 0.000000e+00, %1993 ]
  %2080 = fsub fast float %2077, %1673
  %2081 = fsub fast float %2078, %1674
  %2082 = fsub fast float %2079, %1675
  %2083 = fmul fast float %2080, %1890
  %2084 = fmul fast float %2081, %1890
  %2085 = fmul fast float %2082, %1890
  %2086 = fadd fast float %2083, %1673
  %2087 = fadd fast float %2084, %1674
  %2088 = fadd fast float %2085, %1675
  br label %1793

; <label>:2089                                    ; preds = %1793
  br label %2090

; <label>:2090                                    ; preds = %2089, %1571
  %2091 = phi float [ 0.000000e+00, %1571 ], [ %1794, %2089 ]
  %2092 = phi float [ %1585, %1571 ], [ %1795, %2089 ]
  %2093 = phi float [ %1583, %1571 ], [ %1796, %2089 ]
  %2094 = phi float [ 0.000000e+00, %1571 ], [ %1797, %2089 ]
  %2095 = phi float [ 0.000000e+00, %1571 ], [ %1798, %2089 ]
  %2096 = phi float [ %1577, %1571 ], [ %1799, %2089 ]
  %2097 = phi float [ %1578, %1571 ], [ %1800, %2089 ]
  %2098 = phi float [ %1579, %1571 ], [ %1801, %2089 ]
  %2099 = phi float [ %1611, %1571 ], [ %1802, %2089 ]
  %2100 = phi float [ %1612, %1571 ], [ %1803, %2089 ]
  %2101 = phi float [ %1613, %1571 ], [ %1804, %2089 ]
  %2102 = phi float [ %1582, %1571 ], [ %1805, %2089 ]
  %2103 = phi float [ %1581, %1571 ], [ %1806, %2089 ]
  %2104 = phi float [ 0.000000e+00, %1571 ], [ %1807, %2089 ]
  %2105 = phi float [ %1580, %1571 ], [ %1808, %2089 ]
  %2106 = phi float [ %1574, %1571 ], [ %1809, %2089 ]
  %2107 = phi float [ %1575, %1571 ], [ %1810, %2089 ]
  %2108 = phi float [ %1576, %1571 ], [ %1811, %2089 ]
  %2109 = call float @dx.op.dot3.f32(i32 55, float %2099, float %2100, float %2101, float %2099, float %2100, float %2101)  ; Dot3(ax,ay,az,bx,by,bz)
  %2110 = call float @dx.op.unary.f32(i32 25, float %2109)  ; Rsqrt(value)
  %2111 = fmul fast float %2110, %2099
  %2112 = fmul fast float %2110, %2100
  %2113 = fmul fast float %2110, %2101
  %2114 = fadd fast float %2104, %735
  %2115 = call float @dx.op.unary.f32(i32 7, float %2114)  ; Saturate(value)
  %2116 = call float @dx.op.dot3.f32(i32 55, float %2111, float %2112, float %2113, float %2111, float %2112, float %2113)  ; Dot3(ax,ay,az,bx,by,bz)
  %2117 = call float @dx.op.unary.f32(i32 25, float %2116)  ; Rsqrt(value)
  %2118 = fmul fast float %2117, %2111
  %2119 = fmul fast float %2117, %2112
  %2120 = fmul fast float %2117, %2113
  %2121 = fadd fast float %2105, 0xBFB99999A0000000
  %2122 = call float @dx.op.unary.f32(i32 7, float %2121)  ; Saturate(value)
  %2123 = fmul fast float %2122, 0x3FF1C71C80000000
  %2124 = call float @dx.op.binary.f32(i32 36, float %2105, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2125 = fsub fast float 1.000000e+00, %2123
  %2126 = call float @dx.op.unary.f32(i32 7, float %2125)  ; Saturate(value)
  %2127 = fmul fast float %2126, %2106
  %2128 = fmul fast float %2126, %2107
  %2129 = fmul fast float %2126, %2108
  %2130 = call float @dx.op.unary.f32(i32 7, float %2127)  ; Saturate(value)
  %2131 = call float @dx.op.unary.f32(i32 7, float %2128)  ; Saturate(value)
  %2132 = call float @dx.op.unary.f32(i32 7, float %2129)  ; Saturate(value)
  %2133 = fmul fast float %2123, %2106
  %2134 = fmul fast float %2123, %2107
  %2135 = fmul fast float %2123, %2108
  %2136 = fadd fast float %2133, %2124
  %2137 = fadd fast float %2134, %2124
  %2138 = fadd fast float %2135, %2124
  %2139 = call float @dx.op.unary.f32(i32 7, float %2136)  ; Saturate(value)
  %2140 = call float @dx.op.unary.f32(i32 7, float %2137)  ; Saturate(value)
  %2141 = call float @dx.op.unary.f32(i32 7, float %2138)  ; Saturate(value)
  %2142 = call float @dx.op.unary.f32(i32 7, float %2103)  ; Saturate(value)
  %2143 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2144 = extractvalue %dx.types.CBufRet.i32 %2143, 3
  %2145 = and i32 %2144, 8
  %2146 = icmp ne i32 %2145, 0
  %2147 = call float @dx.op.binary.f32(i32 35, float %2130, float %2106)  ; FMax(a,b)
  %2148 = call float @dx.op.binary.f32(i32 35, float %2131, float %2106)  ; FMax(a,b)
  %2149 = call float @dx.op.binary.f32(i32 35, float %2132, float %2106)  ; FMax(a,b)
  %2150 = call float @dx.op.dot3.f32(i32 55, float %2130, float %2131, float %2132, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2151 = select i1 %176, float %2106, float %2130
  %2152 = select i1 %176, float %2150, float %2131
  %2153 = select i1 %176, float 1.000000e+00, float %2132
  %2154 = select i1 %2146, float %2147, float %2151
  %2155 = select i1 %2146, float %2148, float %2152
  %2156 = select i1 %2146, float %2149, float %2153
  %2157 = and i32 %152, 3
  %2158 = select i1 %146, i32 %2157, i32 0
  %2159 = icmp eq i32 %2158, 1
  br i1 %2159, label %2160, label %2236

; <label>:2160                                    ; preds = %2090
  %2161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2162 = extractvalue %dx.types.CBufRet.f32 %2161, 0
  %2163 = extractvalue %dx.types.CBufRet.f32 %2161, 1
  %2164 = fadd fast float %2162, %106
  %2165 = fadd fast float %2163, %107
  %2166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2167 = extractvalue %dx.types.CBufRet.f32 %2166, 0
  %2168 = extractvalue %dx.types.CBufRet.f32 %2166, 1
  %2169 = fsub fast float %2164, %2167
  %2170 = fsub fast float %2165, %2168
  %2171 = fmul fast float %2169, %2169
  %2172 = fmul fast float %2170, %2170
  %2173 = fadd fast float %2171, %2172
  %2174 = call float @dx.op.unary.f32(i32 24, float %2173)  ; Sqrt(value)
  %2175 = extractvalue %dx.types.CBufRet.f32 %2166, 2
  %2176 = fcmp fast olt float %2174, %2175
  br i1 %2176, label %2177, label %2230

; <label>:2177                                    ; preds = %2160
  %2178 = extractvalue %dx.types.CBufRet.f32 %2161, 2
  %2179 = fadd fast float %2178, %108
  %2180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2181 = extractvalue %dx.types.CBufRet.f32 %2180, 0
  %2182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2183 = extractvalue %dx.types.CBufRet.f32 %2182, 0
  %2184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2185 = extractvalue %dx.types.CBufRet.f32 %2184, 0
  %2186 = extractvalue %dx.types.CBufRet.f32 %2180, 1
  %2187 = extractvalue %dx.types.CBufRet.f32 %2182, 1
  %2188 = extractvalue %dx.types.CBufRet.f32 %2184, 1
  %2189 = extractvalue %dx.types.CBufRet.f32 %2180, 3
  %2190 = extractvalue %dx.types.CBufRet.f32 %2182, 3
  %2191 = extractvalue %dx.types.CBufRet.f32 %2184, 3
  %2192 = fadd fast float %2189, %2164
  %2193 = fadd fast float %2190, %2165
  %2194 = fadd fast float %2179, %2191
  %2195 = fmul fast float %2192, %2181
  %2196 = call float @dx.op.tertiary.f32(i32 46, float %2193, float %2183, float %2195)  ; FMad(a,b,c)
  %2197 = call float @dx.op.tertiary.f32(i32 46, float %2194, float %2185, float %2196)  ; FMad(a,b,c)
  %2198 = fmul fast float %2192, %2186
  %2199 = call float @dx.op.tertiary.f32(i32 46, float %2193, float %2187, float %2198)  ; FMad(a,b,c)
  %2200 = call float @dx.op.tertiary.f32(i32 46, float %2194, float %2188, float %2199)  ; FMad(a,b,c)
  %2201 = fsub fast float %2197, %2189
  %2202 = fsub fast float %2200, %2190
  %2203 = fsub fast float %2201, %2167
  %2204 = fadd fast float %2203, %2175
  %2205 = fsub fast float %2202, %2168
  %2206 = fadd fast float %2205, %2175
  %2207 = extractvalue %dx.types.CBufRet.f32 %2166, 3
  %2208 = fmul fast float %2204, %2207
  %2209 = fmul fast float %2206, %2207
  %2210 = call float @dx.op.unary.f32(i32 7, float %2208)  ; Saturate(value)
  %2211 = call float @dx.op.unary.f32(i32 7, float %2209)  ; Saturate(value)
  %2212 = fsub fast float 1.000000e+00, %2210
  %2213 = fsub fast float 1.000000e+00, %2211
  %2214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %27, float %2212, float %2213, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2215 = extractvalue %dx.types.ResRet.f32 %2214, 0
  %2216 = fcmp fast ugt float %2215, 0.000000e+00
  br i1 %2216, label %2217, label %2230

; <label>:2217                                    ; preds = %2177
  %2218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2219 = extractvalue %dx.types.CBufRet.f32 %2218, 2
  %2220 = fmul fast float %2219, %2215
  %2221 = extractvalue %dx.types.CBufRet.f32 %2218, 3
  %2222 = fadd fast float %2221, %2220
  %2223 = extractvalue %dx.types.CBufRet.f32 %2184, 2
  %2224 = fadd fast float %2222, %2191
  %2225 = fmul fast float %2197, %2185
  %2226 = call float @dx.op.tertiary.f32(i32 46, float %2200, float %2188, float %2225)  ; FMad(a,b,c)
  %2227 = call float @dx.op.tertiary.f32(i32 46, float %2224, float %2223, float %2226)  ; FMad(a,b,c)
  %2228 = fsub fast float %2227, %2191
  %2229 = fsub fast float %2228, %2178
  br label %2230

; <label>:2230                                    ; preds = %2217, %2177, %2160
  %2231 = phi i1 [ true, %2217 ], [ false, %2177 ], [ false, %2160 ]
  %2232 = phi float [ %2229, %2217 ], [ -1.310720e+05, %2177 ], [ -1.310720e+05, %2160 ]
  %2233 = fsub fast float %2232, %108
  %2234 = call float @dx.op.unary.f32(i32 7, float %2233)  ; Saturate(value)
  %2235 = select i1 %2231, float %2234, float 1.000000e+00
  br label %2236

; <label>:2236                                    ; preds = %2230, %2090
  %2237 = phi float [ %2235, %2230 ], [ 0.000000e+00, %2090 ]
  %2238 = icmp eq i32 %2158, 3
  %2239 = select i1 %2238, float 1.000000e+00, float %2237
  %2240 = call float @dx.op.binary.f32(i32 35, float %2091, float %2239)  ; FMax(a,b)
  %2241 = call float @dx.op.unary.f32(i32 7, float %2240)  ; Saturate(value)
  %2242 = fcmp fast une float %2241, 0.000000e+00
  %2243 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %2244 = call float @dx.op.unary.f32(i32 25, float %2243)  ; Rsqrt(value)
  br i1 %2242, label %2252, label %2245

; <label>:2245                                    ; preds = %2236
  %2246 = fmul fast float %2244, %106
  %2247 = fmul fast float %2244, %107
  %2248 = fmul fast float %2244, %108
  %2249 = fsub fast float -0.000000e+00, %2246
  %2250 = fsub fast float -0.000000e+00, %2247
  %2251 = fsub fast float -0.000000e+00, %2248
  br label %2420

; <label>:2252                                    ; preds = %2236
  %2253 = fmul fast float %106, %2244
  %2254 = fsub fast float -0.000000e+00, %2253
  %2255 = fmul fast float %107, %2244
  %2256 = fsub fast float -0.000000e+00, %2255
  %2257 = fmul fast float %108, %2244
  %2258 = fsub fast float -0.000000e+00, %2257
  %2259 = call float @dx.op.dot3.f32(i32 55, float %2254, float %2256, float %2258, float %41, float %42, float %43)  ; Dot3(ax,ay,az,bx,by,bz)
  %2260 = fmul fast float %2241, 2.500000e+00
  %2261 = call float @dx.op.unary.f32(i32 7, float %2260)  ; Saturate(value)
  %2262 = fmul fast float %2241, 0x4013FFFFE0000000
  %2263 = fadd fast float %2262, 0xBFFFFFFFE0000000
  %2264 = call float @dx.op.unary.f32(i32 7, float %2263)  ; Saturate(value)
  %2265 = fmul fast float %2241, 0x4004000020000000
  %2266 = fadd fast float %2265, 0xBFF8000040000000
  %2267 = call float @dx.op.unary.f32(i32 7, float %2266)  ; Saturate(value)
  %2268 = call float @dx.op.unary.f32(i32 7, float %2261)  ; Saturate(value)
  %2269 = fmul fast float %2121, 1.000000e+01
  %2270 = call float @dx.op.unary.f32(i32 7, float %2269)  ; Saturate(value)
  %2271 = fmul fast float %2270, 2.000000e+00
  %2272 = fsub fast float 3.000000e+00, %2271
  %2273 = fmul fast float %2270, %2270
  %2274 = fmul fast float %2273, %2272
  %2275 = fsub fast float 1.000000e+00, %2274
  %2276 = fsub fast float 0x3FE3333340000000, %2142
  %2277 = fmul fast float %2276, 0x400AAAAAA0000000
  %2278 = call float @dx.op.unary.f32(i32 7, float %2277)  ; Saturate(value)
  %2279 = fmul fast float %2275, %2278
  %2280 = fmul fast float %2154, 0x3FEA2B8620000000
  %2281 = fmul fast float %2155, 0x3FEA2B8620000000
  %2282 = fmul fast float %2156, 0x3FEA2B8620000000
  %2283 = fadd fast float %2280, 0x3FC81DFBA0000000
  %2284 = fmul fast float %2283, %2154
  %2285 = fadd fast float %2284, 0x3F910E6020000000
  %2286 = fadd fast float %2281, 0x3FC81DFBA0000000
  %2287 = fmul fast float %2286, %2155
  %2288 = fadd fast float %2287, 0x3F910E6020000000
  %2289 = fadd fast float %2282, 0x3FC81DFBA0000000
  %2290 = fmul fast float %2289, %2156
  %2291 = fadd fast float %2290, 0x3F910E6020000000
  %2292 = call float @dx.op.unary.f32(i32 7, float %2285)  ; Saturate(value)
  %2293 = call float @dx.op.unary.f32(i32 7, float %2288)  ; Saturate(value)
  %2294 = call float @dx.op.unary.f32(i32 7, float %2291)  ; Saturate(value)
  %2295 = fsub fast float %2292, %2154
  %2296 = fsub fast float %2293, %2155
  %2297 = fsub fast float %2294, %2156
  %2298 = fmul fast float %2295, %2268
  %2299 = fmul fast float %2298, %2279
  %2300 = fmul fast float %2296, %2268
  %2301 = fmul fast float %2300, %2279
  %2302 = fmul fast float %2297, %2268
  %2303 = fmul fast float %2302, %2279
  %2304 = fadd fast float %2299, %2154
  %2305 = fadd fast float %2301, %2155
  %2306 = fadd fast float %2303, %2156
  %2307 = fmul fast float %2102, %2102
  %2308 = fmul fast float %2307, %2307
  %2309 = fadd fast float %2264, 1.000000e+00
  %2310 = fsub fast float %2309, %2279
  %2311 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  %2312 = call float @dx.op.dot3.f32(i32 55, float %41, float %42, float %43, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2313 = call float @dx.op.unary.f32(i32 7, float %2312)  ; Saturate(value)
  %2314 = fsub fast float 1.000000e+00, %2308
  %2315 = call float @dx.op.binary.f32(i32 36, float %2311, float %2314)  ; FMin(a,b)
  %2316 = call float @dx.op.unary.f32(i32 7, float %2267)  ; Saturate(value)
  %2317 = call float @dx.op.binary.f32(i32 35, float %2315, float %2316)  ; FMax(a,b)
  %2318 = fadd fast float %2313, 0xBFE4CCCCC0000000
  %2319 = fmul fast float %2318, 0x4006DB6DA0000000
  %2320 = call float @dx.op.unary.f32(i32 7, float %2319)  ; Saturate(value)
  %2321 = fmul fast float %2320, 2.000000e+00
  %2322 = fsub fast float 3.000000e+00, %2321
  %2323 = bitcast float %2139 to i32
  %2324 = ashr i32 %2323, 1
  %2325 = add nsw i32 %2324, 532487669
  %2326 = bitcast i32 %2325 to float
  %2327 = fsub fast float 1.000000e+00, %2326
  %2328 = bitcast float %2327 to i32
  %2329 = sub nsw i32 2129859010, %2328
  %2330 = bitcast i32 %2329 to float
  %2331 = fmul fast float %2330, 2.000000e+00
  %2332 = bitcast float %2140 to i32
  %2333 = ashr i32 %2332, 1
  %2334 = add nsw i32 %2333, 532487669
  %2335 = bitcast i32 %2334 to float
  %2336 = fsub fast float 1.000000e+00, %2335
  %2337 = bitcast float %2336 to i32
  %2338 = sub nsw i32 2129859010, %2337
  %2339 = bitcast i32 %2338 to float
  %2340 = fmul fast float %2339, 2.000000e+00
  %2341 = bitcast float %2141 to i32
  %2342 = ashr i32 %2341, 1
  %2343 = add nsw i32 %2342, 532487669
  %2344 = bitcast i32 %2343 to float
  %2345 = fsub fast float 1.000000e+00, %2344
  %2346 = bitcast float %2345 to i32
  %2347 = sub nsw i32 2129859010, %2346
  %2348 = bitcast i32 %2347 to float
  %2349 = fmul fast float %2348, 2.000000e+00
  %2350 = fsub fast float 0x4002A9FBE0000000, %2331
  %2351 = fadd fast float %2331, 0x3FD54FDF00000000
  %2352 = bitcast float %2351 to i32
  %2353 = sub nsw i32 2129859010, %2352
  %2354 = bitcast i32 %2353 to float
  %2355 = fmul fast float %2354, %2350
  %2356 = fmul fast float %2355, %2355
  %2357 = fsub fast float 0x4002A9FBE0000000, %2340
  %2358 = fadd fast float %2340, 0x3FD54FDF00000000
  %2359 = bitcast float %2358 to i32
  %2360 = sub nsw i32 2129859010, %2359
  %2361 = bitcast i32 %2360 to float
  %2362 = fmul fast float %2361, %2357
  %2363 = fmul fast float %2362, %2362
  %2364 = fsub fast float 0x4002A9FBE0000000, %2349
  %2365 = fadd fast float %2349, 0x3FD54FDF00000000
  %2366 = bitcast float %2365 to i32
  %2367 = sub nsw i32 2129859010, %2366
  %2368 = bitcast i32 %2367 to float
  %2369 = fmul fast float %2368, %2364
  %2370 = fmul fast float %2369, %2369
  %2371 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2356)  ; FMax(a,b)
  %2372 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2363)  ; FMax(a,b)
  %2373 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2370)  ; FMax(a,b)
  %2374 = fsub fast float 1.000000e+00, %2259
  %2375 = fadd fast float %2374, %2275
  %2376 = call float @dx.op.unary.f32(i32 7, float %2375)  ; Saturate(value)
  %2377 = fsub fast float 1.000000e+00, %2239
  %2378 = fmul fast float %2317, %2377
  %2379 = fmul fast float %2320, %2320
  %2380 = fmul fast float %2379, %2378
  %2381 = fmul fast float %2380, %2322
  %2382 = fmul fast float %2377, 0xBFE99999A0000000
  %2383 = fmul fast float %2382, %2268
  %2384 = fmul fast float %2383, %2279
  %2385 = fadd fast float %2384, 1.000000e+00
  %2386 = fadd fast float %2142, -1.000000e+00
  %2387 = fmul fast float %2385, %2386
  %2388 = fadd fast float %2387, 1.000000e+00
  %2389 = fsub fast float %2371, %2139
  %2390 = fsub fast float %2372, %2140
  %2391 = fsub fast float %2373, %2141
  %2392 = fmul fast float %2381, %2389
  %2393 = fmul fast float %2381, %2390
  %2394 = fmul fast float %2381, %2391
  %2395 = fadd fast float %2392, %2139
  %2396 = fadd fast float %2393, %2140
  %2397 = fadd fast float %2394, %2141
  %2398 = fsub fast float %41, %2118
  %2399 = fsub fast float %42, %2119
  %2400 = fsub fast float %43, %2120
  %2401 = fmul fast float %2381, %2398
  %2402 = fmul fast float %2381, %2399
  %2403 = fmul fast float %2381, %2400
  %2404 = fadd fast float %2401, %2118
  %2405 = fadd fast float %2402, %2119
  %2406 = fadd fast float %2403, %2120
  %2407 = fmul fast float %2381, %2376
  %2408 = call float @dx.op.unary.f32(i32 7, float %2388)  ; Saturate(value)
  %2409 = fsub fast float 1.000000e+00, %2408
  %2410 = fmul fast float %2407, %2409
  %2411 = fadd fast float %2410, %2408
  %2412 = fsub fast float 1.000000e+00, %2102
  %2413 = fmul fast float %2381, %2412
  %2414 = fadd fast float %2413, %2102
  %2415 = call float @dx.op.dot3.f32(i32 55, float %2404, float %2405, float %2406, float %2404, float %2405, float %2406)  ; Dot3(ax,ay,az,bx,by,bz)
  %2416 = call float @dx.op.unary.f32(i32 25, float %2415)  ; Rsqrt(value)
  %2417 = fmul fast float %2404, %2416
  %2418 = fmul fast float %2405, %2416
  %2419 = fmul fast float %2406, %2416
  br label %2420

; <label>:2420                                    ; preds = %2252, %2245
  %2421 = phi float [ %2251, %2245 ], [ %2258, %2252 ]
  %2422 = phi float [ %2250, %2245 ], [ %2256, %2252 ]
  %2423 = phi float [ %2249, %2245 ], [ %2254, %2252 ]
  %2424 = phi float [ %2248, %2245 ], [ %2257, %2252 ]
  %2425 = phi float [ %2247, %2245 ], [ %2255, %2252 ]
  %2426 = phi float [ %2246, %2245 ], [ %2253, %2252 ]
  %2427 = phi float [ %2139, %2245 ], [ %2395, %2252 ]
  %2428 = phi float [ %2140, %2245 ], [ %2396, %2252 ]
  %2429 = phi float [ %2141, %2245 ], [ %2397, %2252 ]
  %2430 = phi float [ %2154, %2245 ], [ %2304, %2252 ]
  %2431 = phi float [ %2155, %2245 ], [ %2305, %2252 ]
  %2432 = phi float [ %2156, %2245 ], [ %2306, %2252 ]
  %2433 = phi float [ %2118, %2245 ], [ %2417, %2252 ]
  %2434 = phi float [ %2119, %2245 ], [ %2418, %2252 ]
  %2435 = phi float [ %2120, %2245 ], [ %2419, %2252 ]
  %2436 = phi float [ %2142, %2245 ], [ %2411, %2252 ]
  %2437 = phi float [ %2102, %2245 ], [ %2414, %2252 ]
  %2438 = select i1 %176, float 0.000000e+00, float %2429
  %2439 = call float @dx.op.dot3.f32(i32 55, float %2433, float %2434, float %2435, float %2423, float %2422, float %2421)  ; Dot3(ax,ay,az,bx,by,bz)
  %2440 = call float @dx.op.unary.f32(i32 7, float %2439)  ; Saturate(value)
  %2441 = call float @dx.op.dot3.f32(i32 55, float %2426, float %2425, float %2424, float %2433, float %2434, float %2435)  ; Dot3(ax,ay,az,bx,by,bz)
  %2442 = fmul fast float %2441, 2.000000e+00
  %2443 = fmul fast float %2442, %2433
  %2444 = fmul fast float %2442, %2434
  %2445 = fmul fast float %2442, %2435
  %2446 = fsub fast float %2426, %2443
  %2447 = fsub fast float %2425, %2444
  %2448 = fsub fast float %2424, %2445
  %2449 = call float @dx.op.binary.f32(i32 36, float %2437, float 1.000000e+00)  ; FMin(a,b)
  %2450 = fsub fast float 1.000000e+00, %2437
  %2451 = bitcast float %2450 to i32
  %2452 = sub nsw i32 2129859010, %2451
  %2453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2454 = extractvalue %dx.types.CBufRet.f32 %2453, 0
  %2455 = extractvalue %dx.types.CBufRet.f32 %2453, 1
  %2456 = fadd fast float %2454, %106
  %2457 = fadd fast float %2455, %107
  %2458 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2459 = extractvalue %dx.types.CBufRet.i32 %2458, 0
  %2460 = icmp eq i32 %2459, 1
  br i1 %2460, label %2461, label %2496

; <label>:2461                                    ; preds = %2420
  %2462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2463 = extractvalue %dx.types.CBufRet.f32 %2462, 0
  %2464 = extractvalue %dx.types.CBufRet.f32 %2462, 1
  %2465 = fsub fast float %2456, %2463
  %2466 = fsub fast float %2457, %2464
  %2467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2468 = extractvalue %dx.types.CBufRet.f32 %2467, 0
  %2469 = extractvalue %dx.types.CBufRet.f32 %2467, 1
  %2470 = fmul fast float %2465, %2468
  %2471 = fmul fast float %2466, %2469
  %2472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %27, float %2470, float %2471, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2473 = extractvalue %dx.types.ResRet.f32 %2472, 0
  %2474 = fcmp fast ogt float %2473, 0.000000e+00
  %2475 = extractvalue %dx.types.CBufRet.i32 %2458, 3
  %2476 = icmp ne i32 %2475, 0
  %2477 = and i1 %2474, %2476
  br i1 %2477, label %2478, label %2496, !dx.controlflow.hints !68

; <label>:2478                                    ; preds = %2461
  %2479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2480 = extractvalue %dx.types.CBufRet.f32 %2479, 0
  %2481 = extractvalue %dx.types.CBufRet.f32 %2479, 1
  %2482 = fsub fast float %2456, %2480
  %2483 = fsub fast float %2457, %2481
  %2484 = fmul fast float %2482, %2482
  %2485 = fmul fast float %2483, %2483
  %2486 = fadd fast float %2484, %2485
  %2487 = uitofp i32 %2475 to float
  %2488 = fmul fast float %2487, %2487
  %2489 = fcmp fast ogt float %2486, %2488
  br i1 %2489, label %2496, label %2490

; <label>:2490                                    ; preds = %2478
  %2491 = call float @dx.op.unary.f32(i32 24, float %2486)  ; Sqrt(value)
  %2492 = fsub fast float %2487, %2491
  %2493 = fmul fast float %2492, 0x3F75555560000000
  %2494 = call float @dx.op.unary.f32(i32 7, float %2493)  ; Saturate(value)
  %2495 = call float @dx.op.binary.f32(i32 36, float %2494, float %2473)  ; FMin(a,b)
  br label %2496

; <label>:2496                                    ; preds = %2490, %2478, %2461, %2420
  %2497 = phi float [ 1.000000e+00, %2420 ], [ %2495, %2490 ], [ %2473, %2461 ], [ 0.000000e+00, %2478 ]
  %2498 = fcmp fast ogt float %2497, 0.000000e+00
  br i1 %2498, label %2499, label %2597, !dx.controlflow.hints !69

; <label>:2499                                    ; preds = %2496
  %2500 = fadd fast float %137, 5.000000e-01
  %2501 = call float @dx.op.unary.f32(i32 27, float %2500)  ; Round_ni(value)
  %2502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %27, float %135, float %136, float %2501, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2503 = extractvalue %dx.types.ResRet.f32 %2502, 0
  %2504 = extractvalue %dx.types.ResRet.f32 %2502, 1
  %2505 = extractvalue %dx.types.ResRet.f32 %2502, 2
  %2506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2507 = extractvalue %dx.types.CBufRet.f32 %2506, 3
  %2508 = fmul fast float %2507, %2503
  %2509 = fmul fast float %2507, %2504
  %2510 = fmul fast float %2507, %2505
  %2511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %27, float %135, float %136, float %2501, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2512 = extractvalue %dx.types.ResRet.f32 %2511, 0
  %2513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %27, float %135, float %136, float %2501, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2514 = extractvalue %dx.types.ResRet.f32 %2513, 0
  %2515 = extractvalue %dx.types.ResRet.f32 %2513, 1
  %2516 = fmul fast float %2514, 2.000000e+00
  %2517 = fmul fast float %2515, 2.000000e+00
  %2518 = fadd fast float %2516, -1.000000e+00
  %2519 = fadd fast float %2517, -1.000000e+00
  %2520 = fadd fast float %2518, %2519
  %2521 = fmul fast float %2520, 5.000000e-01
  %2522 = fsub fast float %2518, %2519
  %2523 = fmul fast float %2522, 5.000000e-01
  %2524 = call float @dx.op.unary.f32(i32 6, float %2521)  ; FAbs(value)
  %2525 = fsub fast float 1.000000e+00, %2524
  %2526 = call float @dx.op.unary.f32(i32 6, float %2523)  ; FAbs(value)
  %2527 = fsub fast float %2525, %2526
  %2528 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2527)  ; FMax(a,b)
  %2529 = call float @dx.op.dot3.f32(i32 55, float %2521, float %2523, float %2528, float %2521, float %2523, float %2528)  ; Dot3(ax,ay,az,bx,by,bz)
  %2530 = bitcast float %2529 to i32
  %2531 = ashr i32 %2530, 1
  %2532 = sub nsw i32 1597250115, %2531
  %2533 = bitcast i32 %2532 to float
  %2534 = fmul fast float %2533, %2521
  %2535 = fmul fast float %2533, %2523
  %2536 = fmul fast float %2533, %2528
  %2537 = fsub fast float 1.000000e+00, %2512
  %2538 = fdiv fast float %2537, %2536
  %2539 = fmul fast float %2536, %41
  %2540 = fmul fast float %2536, %42
  %2541 = fmul fast float %2536, %43
  %2542 = fmul fast float %2534, %37
  %2543 = fmul fast float %2534, %38
  %2544 = fmul fast float %2534, %39
  %2545 = fadd fast float %2539, %2542
  %2546 = fadd fast float %2540, %2543
  %2547 = fadd fast float %2541, %2544
  %2548 = fmul fast float %2535, %70
  %2549 = fmul fast float %2535, %71
  %2550 = fmul fast float %2535, %72
  %2551 = fadd fast float %2545, %2548
  %2552 = fadd fast float %2546, %2549
  %2553 = fadd fast float %2547, %2550
  %2554 = call float @dx.op.dot3.f32(i32 55, float %2551, float %2552, float %2553, float %2551, float %2552, float %2553)  ; Dot3(ax,ay,az,bx,by,bz)
  %2555 = call float @dx.op.unary.f32(i32 25, float %2554)  ; Rsqrt(value)
  %2556 = fmul fast float %2551, %2555
  %2557 = fmul fast float %2552, %2555
  %2558 = fmul fast float %2553, %2555
  %2559 = call float @dx.op.dot3.f32(i32 55, float %2433, float %2434, float %2435, float %2433, float %2434, float %2435)  ; Dot3(ax,ay,az,bx,by,bz)
  %2560 = call float @dx.op.unary.f32(i32 7, float %2559)  ; Saturate(value)
  %2561 = fmul fast float %2560, 5.000000e-01
  %2562 = fadd fast float %2561, 5.000000e-01
  %2563 = fmul fast float %2562, %2512
  %2564 = call float @dx.op.dot3.f32(i32 55, float %2433, float %2434, float %2435, float %2556, float %2557, float %2558)  ; Dot3(ax,ay,az,bx,by,bz)
  %2565 = call float @dx.op.unary.f32(i32 7, float %2564)  ; Saturate(value)
  %2566 = fmul fast float %2565, %2538
  %2567 = fadd fast float %2563, %2566
  %2568 = fsub fast float 5.000000e-01, %2561
  %2569 = fmul fast float %2568, %2430
  %2570 = fmul fast float %2568, %2431
  %2571 = fmul fast float %2568, %2432
  %2572 = fadd fast float %2567, %2569
  %2573 = fmul fast float %2572, %2508
  %2574 = fadd fast float %2567, %2570
  %2575 = fmul fast float %2574, %2509
  %2576 = fadd fast float %2567, %2571
  %2577 = fmul fast float %2576, %2510
  %2578 = call float @dx.op.dot3.f32(i32 55, float %2446, float %2447, float %2448, float %2433, float %2434, float %2435)  ; Dot3(ax,ay,az,bx,by,bz)
  %2579 = call float @dx.op.unary.f32(i32 7, float %2578)  ; Saturate(value)
  %2580 = fmul fast float %2579, 5.000000e-01
  %2581 = fadd fast float %2580, 5.000000e-01
  %2582 = fmul fast float %2581, %2512
  %2583 = call float @dx.op.dot3.f32(i32 55, float %2446, float %2447, float %2448, float %2556, float %2557, float %2558)  ; Dot3(ax,ay,az,bx,by,bz)
  %2584 = call float @dx.op.unary.f32(i32 7, float %2583)  ; Saturate(value)
  %2585 = fmul fast float %2584, %2538
  %2586 = fadd fast float %2582, %2585
  %2587 = fsub fast float 5.000000e-01, %2580
  %2588 = fmul fast float %2587, %2430
  %2589 = fmul fast float %2587, %2431
  %2590 = fmul fast float %2587, %2432
  %2591 = fadd fast float %2586, %2588
  %2592 = fmul fast float %2591, %2508
  %2593 = fadd fast float %2586, %2589
  %2594 = fmul fast float %2593, %2509
  %2595 = fadd fast float %2586, %2590
  %2596 = fmul fast float %2595, %2510
  br label %2597

; <label>:2597                                    ; preds = %2499, %2496
  %2598 = phi float [ %2592, %2499 ], [ 0.000000e+00, %2496 ]
  %2599 = phi float [ %2594, %2499 ], [ 0.000000e+00, %2496 ]
  %2600 = phi float [ %2596, %2499 ], [ 0.000000e+00, %2496 ]
  %2601 = phi float [ %2573, %2499 ], [ 0.000000e+00, %2496 ]
  %2602 = phi float [ %2575, %2499 ], [ 0.000000e+00, %2496 ]
  %2603 = phi float [ %2577, %2499 ], [ 0.000000e+00, %2496 ]
  %2604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2605 = extractvalue %dx.types.CBufRet.f32 %2604, 0
  %2606 = fcmp fast ogt float %2605, 0.000000e+00
  %2607 = and i1 %2498, %2606
  br i1 %2607, label %2608, label %2812, !dx.controlflow.hints !70

; <label>:2608                                    ; preds = %2597
  %2609 = extractvalue %dx.types.CBufRet.f32 %2453, 2
  %2610 = fadd fast float %2609, %108
  %2611 = fmul fast float %2433, 3.200000e+01
  %2612 = fmul fast float %2434, 3.200000e+01
  %2613 = fadd fast float %2456, %2611
  %2614 = fadd fast float %2457, %2612
  %2615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2616 = extractvalue %dx.types.CBufRet.f32 %2615, 0
  %2617 = extractvalue %dx.types.CBufRet.f32 %2615, 1
  %2618 = fsub fast float %2613, %2616
  %2619 = fsub fast float %2614, %2617
  %2620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2621 = extractvalue %dx.types.CBufRet.f32 %2620, 0
  %2622 = extractvalue %dx.types.CBufRet.f32 %2620, 1
  %2623 = fmul fast float %2618, %2621
  %2624 = fmul fast float %2619, %2622
  %2625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2626 = extractvalue %dx.types.CBufRet.f32 %2625, 0
  %2627 = extractvalue %dx.types.CBufRet.f32 %2625, 1
  %2628 = fsub fast float %2456, %2626
  %2629 = fsub fast float %2457, %2627
  %2630 = fmul fast float %2628, %2628
  %2631 = fmul fast float %2629, %2629
  %2632 = fadd fast float %2630, %2631
  %2633 = call float @dx.op.unary.f32(i32 24, float %2632)  ; Sqrt(value)
  %2634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2635 = extractvalue %dx.types.CBufRet.f32 %2634, 0
  %2636 = extractvalue %dx.types.CBufRet.f32 %2634, 1
  %2637 = fsub fast float %2633, %2635
  %2638 = fdiv fast float %2637, %2636
  %2639 = call float @dx.op.unary.f32(i32 7, float %2638)  ; Saturate(value)
  %2640 = fmul fast float %2639, 2.000000e+00
  %2641 = fsub fast float 3.000000e+00, %2640
  %2642 = fmul fast float %2639, %2639
  %2643 = fmul fast float %2642, %2641
  %2644 = fcmp fast oge float %2623, 0.000000e+00
  %2645 = fcmp fast ole float %2623, 1.000000e+00
  %2646 = and i1 %2645, %2644
  %2647 = fcmp fast oge float %2624, 0.000000e+00
  %2648 = and i1 %2647, %2646
  %2649 = fcmp fast ole float %2624, 1.000000e+00
  %2650 = and i1 %2649, %2648
  %2651 = fcmp fast ogt float %2643, 0.000000e+00
  %2652 = and i1 %2651, %2650
  br i1 %2652, label %2653, label %2776, !dx.controlflow.hints !71

; <label>:2653                                    ; preds = %2608
  %2654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2655 = extractvalue %dx.types.CBufRet.f32 %2654, 2
  %2656 = extractvalue %dx.types.CBufRet.f32 %2654, 3
  %2657 = fmul fast float %2655, %2623
  %2658 = fmul fast float %2656, %2624
  %2659 = call float @dx.op.unary.f32(i32 27, float %2657)  ; Round_ni(value)
  %2660 = call float @dx.op.unary.f32(i32 27, float %2658)  ; Round_ni(value)
  %2661 = fptosi float %2659 to i32
  %2662 = fptosi float %2660 to i32
  %2663 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %2661, i32 %2662, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2664 = extractvalue %dx.types.ResRet.i32 %2663, 0
  %2665 = lshr i32 %2664, 16
  %2666 = icmp eq i32 %2665, 65535
  br i1 %2666, label %2776, label %2667

; <label>:2667                                    ; preds = %2653
  %2668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2669 = extractvalue %dx.types.CBufRet.f32 %2668, 0
  %2670 = fmul fast float %2669, %2623
  %2671 = extractvalue %dx.types.CBufRet.f32 %2668, 1
  %2672 = fadd fast float %2670, %2671
  %2673 = extractvalue %dx.types.CBufRet.f32 %2668, 2
  %2674 = fmul fast float %2673, %2624
  %2675 = extractvalue %dx.types.CBufRet.f32 %2668, 3
  %2676 = fadd fast float %2674, %2675
  %2677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %27, float %2672, float %2676, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2678 = extractvalue %dx.types.ResRet.f32 %2677, 0
  %2679 = extractvalue %dx.types.ResRet.f32 %2677, 1
  %2680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2681 = extractvalue %dx.types.CBufRet.f32 %2680, 1
  %2682 = extractvalue %dx.types.CBufRet.f32 %2680, 0
  %2683 = fsub fast float %2681, %2682
  %2684 = fmul fast float %2683, %2678
  %2685 = fadd fast float %2684, %2682
  %2686 = extractvalue %dx.types.CBufRet.f32 %2680, 3
  %2687 = extractvalue %dx.types.CBufRet.f32 %2680, 2
  %2688 = fsub fast float %2686, %2687
  %2689 = fmul fast float %2688, %2679
  %2690 = fadd fast float %2689, %2687
  %2691 = fsub fast float %2610, %2685
  %2692 = fsub fast float %2690, %2685
  %2693 = fdiv fast float %2691, %2692
  %2694 = call float @dx.op.unary.f32(i32 7, float %2693)  ; Saturate(value)
  %2695 = extractvalue %dx.types.CBufRet.f32 %2604, 1
  %2696 = extractvalue %dx.types.CBufRet.f32 %2654, 0
  %2697 = extractvalue %dx.types.CBufRet.f32 %2654, 1
  %2698 = fmul fast float %2696, %2623
  %2699 = fmul fast float %2697, %2624
  %2700 = fmul fast float %2698, 1.250000e-01
  %2701 = fmul fast float %2699, 1.250000e-01
  %2702 = call float @dx.op.unary.f32(i32 27, float %2700)  ; Round_ni(value)
  %2703 = call float @dx.op.unary.f32(i32 27, float %2701)  ; Round_ni(value)
  %2704 = fmul fast float %2702, 8.000000e+00
  %2705 = fmul fast float %2703, 8.000000e+00
  %2706 = fsub fast float %2698, %2704
  %2707 = fsub fast float %2699, %2705
  %2708 = fadd fast float %2706, 5.000000e-01
  %2709 = fadd fast float %2707, 5.000000e-01
  %2710 = and i32 %2665, 255
  %2711 = lshr i32 %2664, 24
  %2712 = mul nuw nsw i32 %2710, 9
  %2713 = uitofp i32 %2712 to float
  %2714 = mul nuw nsw i32 %2711, 9
  %2715 = uitofp i32 %2714 to float
  %2716 = fadd fast float %2708, %2713
  %2717 = fadd fast float %2709, %2715
  %2718 = fdiv fast float %2716, %2605
  %2719 = fdiv fast float %2717, %2695
  %2720 = fmul fast float %2694, 4.375000e-01
  %2721 = fadd fast float %2720, 3.125000e-02
  %2722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %27, float %2718, float %2719, float %2721, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2723 = extractvalue %dx.types.ResRet.f32 %2722, 0
  %2724 = extractvalue %dx.types.ResRet.f32 %2722, 1
  %2725 = extractvalue %dx.types.ResRet.f32 %2722, 2
  %2726 = fadd fast float %2720, 5.312500e-01
  %2727 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %27, float %2718, float %2719, float %2726, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2728 = extractvalue %dx.types.ResRet.f32 %2727, 0
  %2729 = extractvalue %dx.types.ResRet.f32 %2727, 1
  %2730 = extractvalue %dx.types.ResRet.f32 %2727, 2
  %2731 = fmul fast float %2728, 2.000000e+00
  %2732 = fmul fast float %2729, 2.000000e+00
  %2733 = fmul fast float %2730, 2.000000e+00
  %2734 = fadd fast float %2731, -1.000000e+00
  %2735 = fadd fast float %2732, -1.000000e+00
  %2736 = fadd fast float %2733, -1.000000e+00
  %2737 = fmul fast float %2734, %2734
  %2738 = fmul fast float %2735, %2735
  %2739 = fadd fast float %2737, %2738
  %2740 = fmul fast float %2736, %2736
  %2741 = fadd fast float %2739, %2740
  %2742 = call float @dx.op.unary.f32(i32 24, float %2741)  ; Sqrt(value)
  %2743 = fcmp fast ogt float %2742, 0.000000e+00
  br i1 %2743, label %2744, label %2748

; <label>:2744                                    ; preds = %2667
  %2745 = fdiv fast float %2734, %2742
  %2746 = fdiv fast float %2735, %2742
  %2747 = fdiv fast float %2736, %2742
  br label %2748

; <label>:2748                                    ; preds = %2744, %2667
  %2749 = phi float [ %2745, %2744 ], [ 0.000000e+00, %2667 ]
  %2750 = phi float [ %2746, %2744 ], [ 0.000000e+00, %2667 ]
  %2751 = phi float [ %2747, %2744 ], [ 0.000000e+00, %2667 ]
  %2752 = call float @dx.op.dot3.f32(i32 55, float %2749, float %2750, float %2751, float %2433, float %2434, float %2435)  ; Dot3(ax,ay,az,bx,by,bz)
  %2753 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2752)  ; FMax(a,b)
  %2754 = fmul fast float %2753, 0x400C5BF8A0000000
  %2755 = fmul fast float %2723, %2643
  %2756 = fmul fast float %2755, %2754
  %2757 = fmul fast float %2724, %2643
  %2758 = fmul fast float %2757, %2754
  %2759 = fmul fast float %2725, %2643
  %2760 = fmul fast float %2759, %2754
  %2761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2762 = extractvalue %dx.types.CBufRet.f32 %2761, 3
  %2763 = fmul fast float %2756, %2762
  %2764 = fmul fast float %2758, %2762
  %2765 = fmul fast float %2760, %2762
  %2766 = fcmp fast ogt float %2610, %2690
  br i1 %2766, label %2767, label %2776

; <label>:2767                                    ; preds = %2748
  %2768 = fmul fast float %2692, 0x3FC24924A0000000
  %2769 = fsub fast float %2610, %2690
  %2770 = fdiv fast float %2769, %2768
  %2771 = call float @dx.op.unary.f32(i32 7, float %2770)  ; Saturate(value)
  %2772 = fsub fast float 1.000000e+00, %2771
  %2773 = fmul fast float %2772, %2763
  %2774 = fmul fast float %2772, %2764
  %2775 = fmul fast float %2772, %2765
  br label %2776

; <label>:2776                                    ; preds = %2767, %2748, %2653, %2608
  %2777 = phi float [ %2775, %2767 ], [ %2765, %2748 ], [ 0.000000e+00, %2653 ], [ 0.000000e+00, %2608 ]
  %2778 = phi float [ %2774, %2767 ], [ %2764, %2748 ], [ 0.000000e+00, %2653 ], [ 0.000000e+00, %2608 ]
  %2779 = phi float [ %2773, %2767 ], [ %2763, %2748 ], [ 0.000000e+00, %2653 ], [ 0.000000e+00, %2608 ]
  %2780 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2779)  ; FMax(a,b)
  %2781 = fmul fast float %2780, 0x3FD20DD760000000
  %2782 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2446, float %2447, float %2448)  ; Dot3(ax,ay,az,bx,by,bz)
  %2783 = fmul fast float %2782, 0x3FDF454380000000
  %2784 = fmul fast float %2782, %2782
  %2785 = fmul fast float %2784, 0x3FEE471020000000
  %2786 = fadd fast float %2785, 0xBFD42F6020000000
  %2787 = call float @dx.op.dot3.f32(i32 55, float %2780, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2783, float %2786)  ; Dot3(ax,ay,az,bx,by,bz)
  %2788 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2778)  ; FMax(a,b)
  %2789 = fmul fast float %2788, 0x3FD20DD760000000
  %2790 = call float @dx.op.dot3.f32(i32 55, float %2788, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2783, float %2786)  ; Dot3(ax,ay,az,bx,by,bz)
  %2791 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2777)  ; FMax(a,b)
  %2792 = fmul fast float %2791, 0x3FD20DD760000000
  %2793 = call float @dx.op.dot3.f32(i32 55, float %2791, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2783, float %2786)  ; Dot3(ax,ay,az,bx,by,bz)
  %2794 = call float @dx.op.binary.f32(i32 35, float %2781, float 0.000000e+00)  ; FMax(a,b)
  %2795 = call float @dx.op.binary.f32(i32 35, float %2789, float 0.000000e+00)  ; FMax(a,b)
  %2796 = call float @dx.op.binary.f32(i32 35, float %2792, float 0.000000e+00)  ; FMax(a,b)
  %2797 = call float @dx.op.binary.f32(i32 35, float %2787, float 0.000000e+00)  ; FMax(a,b)
  %2798 = call float @dx.op.binary.f32(i32 35, float %2790, float 0.000000e+00)  ; FMax(a,b)
  %2799 = call float @dx.op.binary.f32(i32 35, float %2793, float 0.000000e+00)  ; FMax(a,b)
  %2800 = fmul fast float %2794, %2497
  %2801 = fmul fast float %2795, %2497
  %2802 = fmul fast float %2796, %2497
  %2803 = fadd fast float %2800, %2601
  %2804 = fadd fast float %2801, %2602
  %2805 = fadd fast float %2802, %2603
  %2806 = fmul fast float %2797, %2497
  %2807 = fmul fast float %2798, %2497
  %2808 = fmul fast float %2799, %2497
  %2809 = fadd fast float %2806, %2598
  %2810 = fadd fast float %2807, %2599
  %2811 = fadd fast float %2808, %2600
  br label %2812

; <label>:2812                                    ; preds = %2776, %2597
  %2813 = phi float [ %2809, %2776 ], [ %2598, %2597 ]
  %2814 = phi float [ %2810, %2776 ], [ %2599, %2597 ]
  %2815 = phi float [ %2811, %2776 ], [ %2600, %2597 ]
  %2816 = phi float [ %2803, %2776 ], [ %2601, %2597 ]
  %2817 = phi float [ %2804, %2776 ], [ %2602, %2597 ]
  %2818 = phi float [ %2805, %2776 ], [ %2603, %2597 ]
  %2819 = fcmp fast olt float %2497, 1.000000e+00
  br i1 %2819, label %2820, label %3638, !dx.controlflow.hints !72

; <label>:2820                                    ; preds = %2812
  %2821 = extractvalue %dx.types.CBufRet.f32 %2453, 2
  %2822 = fadd fast float %2821, %108
  %2823 = fmul fast float %2433, 3.200000e+01
  %2824 = fmul fast float %2434, 3.200000e+01
  %2825 = fadd fast float %2456, %2823
  %2826 = fadd fast float %2457, %2824
  %2827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2828 = extractvalue %dx.types.CBufRet.f32 %2827, 0
  %2829 = extractvalue %dx.types.CBufRet.f32 %2827, 1
  %2830 = fsub fast float %2825, %2828
  %2831 = fsub fast float %2826, %2829
  %2832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2833 = extractvalue %dx.types.CBufRet.f32 %2832, 0
  %2834 = extractvalue %dx.types.CBufRet.f32 %2832, 1
  %2835 = fmul fast float %2830, %2833
  %2836 = fmul fast float %2831, %2834
  %2837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2838 = extractvalue %dx.types.CBufRet.f32 %2837, 0
  %2839 = fmul fast float %2835, %2838
  %2840 = extractvalue %dx.types.CBufRet.f32 %2837, 1
  %2841 = fadd fast float %2839, %2840
  %2842 = extractvalue %dx.types.CBufRet.f32 %2837, 2
  %2843 = fmul fast float %2842, %2836
  %2844 = extractvalue %dx.types.CBufRet.f32 %2837, 3
  %2845 = fadd fast float %2843, %2844
  %2846 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %27, float %2841, float %2845, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2847 = extractvalue %dx.types.ResRet.f32 %2846, 0
  %2848 = extractvalue %dx.types.ResRet.f32 %2846, 1
  %2849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2850 = extractvalue %dx.types.CBufRet.f32 %2849, 1
  %2851 = extractvalue %dx.types.CBufRet.f32 %2849, 0
  %2852 = fsub fast float %2850, %2851
  %2853 = fmul fast float %2852, %2847
  %2854 = fadd fast float %2853, %2851
  %2855 = extractvalue %dx.types.CBufRet.f32 %2849, 3
  %2856 = extractvalue %dx.types.CBufRet.f32 %2849, 2
  %2857 = fsub fast float %2855, %2856
  %2858 = fmul fast float %2857, %2848
  %2859 = fadd fast float %2858, %2856
  %2860 = fsub fast float %2822, %2854
  %2861 = fsub fast float %2859, %2854
  %2862 = fdiv fast float %2860, %2861
  %2863 = call float @dx.op.unary.f32(i32 7, float %2862)  ; Saturate(value)
  %2864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2865 = extractvalue %dx.types.CBufRet.f32 %2864, 0
  %2866 = fmul fast float %2865, %2863
  %2867 = extractvalue %dx.types.CBufRet.f32 %2864, 1
  %2868 = fadd fast float %2866, %2867
  %2869 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %27, float %2841, float %2845, float %2868, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2870 = extractvalue %dx.types.ResRet.f32 %2869, 0
  %2871 = extractvalue %dx.types.ResRet.f32 %2869, 1
  %2872 = extractvalue %dx.types.ResRet.f32 %2869, 2
  %2873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2874 = extractvalue %dx.types.CBufRet.f32 %2873, 0
  %2875 = extractvalue %dx.types.CBufRet.f32 %2873, 1
  %2876 = extractvalue %dx.types.CBufRet.f32 %2873, 2
  %2877 = fmul fast float %2874, %2870
  %2878 = fmul fast float %2875, %2871
  %2879 = fmul fast float %2876, %2872
  %2880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2881 = extractvalue %dx.types.CBufRet.f32 %2880, 0
  %2882 = extractvalue %dx.types.CBufRet.f32 %2880, 1
  %2883 = extractvalue %dx.types.CBufRet.f32 %2880, 2
  %2884 = fadd fast float %2877, %2881
  %2885 = fadd fast float %2878, %2882
  %2886 = fadd fast float %2879, %2883
  %2887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2888 = extractvalue %dx.types.CBufRet.f32 %2887, 0
  %2889 = fmul fast float %2888, %2835
  %2890 = extractvalue %dx.types.CBufRet.f32 %2887, 1
  %2891 = fadd fast float %2889, %2890
  %2892 = extractvalue %dx.types.CBufRet.f32 %2887, 2
  %2893 = fmul fast float %2892, %2836
  %2894 = extractvalue %dx.types.CBufRet.f32 %2887, 3
  %2895 = fadd fast float %2893, %2894
  %2896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2897 = extractvalue %dx.types.CBufRet.f32 %2896, 0
  %2898 = extractvalue %dx.types.CBufRet.f32 %2896, 1
  %2899 = extractvalue %dx.types.CBufRet.f32 %2896, 2
  %2900 = extractvalue %dx.types.CBufRet.f32 %2896, 3
  %2901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2902 = extractvalue %dx.types.CBufRet.f32 %2901, 0
  %2903 = extractvalue %dx.types.CBufRet.f32 %2901, 1
  %2904 = extractvalue %dx.types.CBufRet.f32 %2901, 2
  %2905 = extractvalue %dx.types.CBufRet.f32 %2901, 3
  %2906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %27, float %2891, float %2895, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2907 = extractvalue %dx.types.ResRet.f32 %2906, 0
  %2908 = extractvalue %dx.types.ResRet.f32 %2906, 1
  %2909 = extractvalue %dx.types.ResRet.f32 %2906, 2
  %2910 = extractvalue %dx.types.ResRet.f32 %2906, 3
  %2911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %27, float %2891, float %2895, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2912 = extractvalue %dx.types.ResRet.f32 %2911, 0
  %2913 = extractvalue %dx.types.ResRet.f32 %2911, 1
  %2914 = extractvalue %dx.types.ResRet.f32 %2911, 2
  %2915 = extractvalue %dx.types.ResRet.f32 %2911, 3
  %2916 = fmul fast float %2907, %2884
  %2917 = fmul fast float %2912, %2884
  %2918 = fmul fast float %2914, %2884
  %2919 = fmul fast float %2910, %2884
  %2920 = fadd fast float %2916, %2897
  %2921 = fadd fast float %2917, %2898
  %2922 = fadd fast float %2918, %2899
  %2923 = fadd fast float %2919, %2900
  %2924 = fmul fast float %2908, %2884
  %2925 = fmul fast float %2913, %2884
  %2926 = fadd fast float %2924, %2902
  %2927 = fadd fast float %2925, %2903
  %2928 = fmul fast float %2909, %2884
  %2929 = fmul fast float %2915, %2884
  %2930 = fadd fast float %2928, %2904
  %2931 = fadd fast float %2929, %2905
  %2932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %27, float %2891, float %2895, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2933 = extractvalue %dx.types.ResRet.f32 %2932, 0
  %2934 = extractvalue %dx.types.ResRet.f32 %2932, 1
  %2935 = extractvalue %dx.types.ResRet.f32 %2932, 2
  %2936 = extractvalue %dx.types.ResRet.f32 %2932, 3
  %2937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %27, float %2891, float %2895, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2938 = extractvalue %dx.types.ResRet.f32 %2937, 0
  %2939 = extractvalue %dx.types.ResRet.f32 %2937, 1
  %2940 = extractvalue %dx.types.ResRet.f32 %2937, 2
  %2941 = extractvalue %dx.types.ResRet.f32 %2937, 3
  %2942 = fmul fast float %2933, %2885
  %2943 = fmul fast float %2938, %2885
  %2944 = fmul fast float %2940, %2885
  %2945 = fmul fast float %2936, %2885
  %2946 = fadd fast float %2920, %2942
  %2947 = fadd fast float %2921, %2943
  %2948 = fadd fast float %2922, %2944
  %2949 = fadd fast float %2923, %2945
  %2950 = fmul fast float %2934, %2885
  %2951 = fmul fast float %2939, %2885
  %2952 = fadd fast float %2926, %2950
  %2953 = fadd fast float %2927, %2951
  %2954 = fmul fast float %2935, %2885
  %2955 = fmul fast float %2941, %2885
  %2956 = fadd fast float %2930, %2954
  %2957 = fadd fast float %2931, %2955
  %2958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %27, float %2891, float %2895, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2959 = extractvalue %dx.types.ResRet.f32 %2958, 0
  %2960 = extractvalue %dx.types.ResRet.f32 %2958, 1
  %2961 = extractvalue %dx.types.ResRet.f32 %2958, 2
  %2962 = extractvalue %dx.types.ResRet.f32 %2958, 3
  %2963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %27, float %2891, float %2895, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2964 = extractvalue %dx.types.ResRet.f32 %2963, 0
  %2965 = extractvalue %dx.types.ResRet.f32 %2963, 1
  %2966 = extractvalue %dx.types.ResRet.f32 %2963, 2
  %2967 = extractvalue %dx.types.ResRet.f32 %2963, 3
  %2968 = fmul fast float %2959, %2886
  %2969 = fmul fast float %2964, %2886
  %2970 = fmul fast float %2966, %2886
  %2971 = fmul fast float %2962, %2886
  %2972 = fadd fast float %2946, %2968
  %2973 = fadd fast float %2947, %2969
  %2974 = fadd fast float %2948, %2970
  %2975 = fadd fast float %2949, %2971
  %2976 = fmul fast float %2960, %2886
  %2977 = fmul fast float %2965, %2886
  %2978 = fadd fast float %2952, %2976
  %2979 = fadd fast float %2953, %2977
  %2980 = fmul fast float %2961, %2886
  %2981 = fmul fast float %2967, %2886
  %2982 = fadd fast float %2956, %2980
  %2983 = fadd fast float %2957, %2981
  %2984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2985 = extractvalue %dx.types.CBufRet.f32 %2984, 0
  %2986 = fsub fast float %2456, %2985
  %2987 = fsub fast float %2828, %2456
  %2988 = call float @dx.op.binary.f32(i32 35, float %2987, float %2986)  ; FMax(a,b)
  %2989 = extractvalue %dx.types.CBufRet.f32 %2984, 1
  %2990 = fsub fast float %2457, %2989
  %2991 = fsub fast float %2829, %2457
  %2992 = call float @dx.op.binary.f32(i32 35, float %2991, float %2990)  ; FMax(a,b)
  %2993 = call float @dx.op.binary.f32(i32 35, float %2988, float %2992)  ; FMax(a,b)
  %2994 = extractvalue %dx.types.CBufRet.f32 %2832, 3
  %2995 = fmul fast float %2994, %2993
  %2996 = call float @dx.op.unary.f32(i32 7, float %2995)  ; Saturate(value)
  %2997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2998 = extractvalue %dx.types.CBufRet.f32 %2997, 0
  %2999 = extractvalue %dx.types.CBufRet.f32 %2997, 1
  %3000 = extractvalue %dx.types.CBufRet.f32 %2997, 2
  %3001 = extractvalue %dx.types.CBufRet.f32 %2997, 3
  %3002 = fsub fast float %2998, %2972
  %3003 = fsub fast float %2999, %2973
  %3004 = fsub fast float %3000, %2974
  %3005 = fsub fast float %3001, %2975
  %3006 = fmul fast float %3002, %2996
  %3007 = fmul fast float %3003, %2996
  %3008 = fmul fast float %3004, %2996
  %3009 = fmul fast float %3005, %2996
  %3010 = fadd fast float %3006, %2972
  %3011 = fadd fast float %3007, %2973
  %3012 = fadd fast float %3008, %2974
  %3013 = fadd fast float %3009, %2975
  %3014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3015 = extractvalue %dx.types.CBufRet.f32 %3014, 0
  %3016 = extractvalue %dx.types.CBufRet.f32 %3014, 1
  %3017 = fsub fast float %3015, %2978
  %3018 = fsub fast float %3016, %2979
  %3019 = fmul fast float %3017, %2996
  %3020 = fmul fast float %3018, %2996
  %3021 = fadd fast float %3019, %2978
  %3022 = fadd fast float %3020, %2979
  %3023 = extractvalue %dx.types.CBufRet.f32 %3014, 2
  %3024 = extractvalue %dx.types.CBufRet.f32 %3014, 3
  %3025 = fsub fast float %3023, %2982
  %3026 = fsub fast float %3024, %2983
  %3027 = fmul fast float %3025, %2996
  %3028 = fmul fast float %3026, %2996
  %3029 = fadd fast float %3027, %2982
  %3030 = fadd fast float %3028, %2983
  %3031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3032 = extractvalue %dx.types.CBufRet.f32 %3031, 0
  %3033 = fmul fast float %3032, %3010
  %3034 = fmul fast float %3032, %3011
  %3035 = fmul fast float %3032, %3012
  %3036 = fmul fast float %3032, %3013
  %3037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3038 = extractvalue %dx.types.CBufRet.f32 %3037, 0
  %3039 = fmul fast float %3038, %3021
  %3040 = fmul fast float %3038, %3022
  %3041 = fadd fast float %3039, %3033
  %3042 = fadd fast float %3040, %3035
  %3043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3044 = extractvalue %dx.types.CBufRet.f32 %3043, 0
  %3045 = fmul fast float %3044, %3029
  %3046 = fmul fast float %3044, %3030
  %3047 = fadd fast float %3041, %3045
  %3048 = fadd fast float %3042, %3046
  %3049 = extractvalue %dx.types.CBufRet.f32 %3031, 1
  %3050 = fmul fast float %3049, %3010
  %3051 = fmul fast float %3049, %3011
  %3052 = fmul fast float %3049, %3012
  %3053 = fmul fast float %3049, %3013
  %3054 = extractvalue %dx.types.CBufRet.f32 %3037, 1
  %3055 = fmul fast float %3054, %3021
  %3056 = fmul fast float %3054, %3022
  %3057 = fadd fast float %3055, %3050
  %3058 = fadd fast float %3056, %3052
  %3059 = extractvalue %dx.types.CBufRet.f32 %3043, 1
  %3060 = fmul fast float %3059, %3029
  %3061 = fmul fast float %3059, %3030
  %3062 = fadd fast float %3057, %3060
  %3063 = fadd fast float %3058, %3061
  %3064 = extractvalue %dx.types.CBufRet.f32 %3031, 2
  %3065 = fmul fast float %3064, %3010
  %3066 = fmul fast float %3064, %3011
  %3067 = fmul fast float %3064, %3012
  %3068 = fmul fast float %3064, %3013
  %3069 = extractvalue %dx.types.CBufRet.f32 %3037, 2
  %3070 = fmul fast float %3069, %3021
  %3071 = fmul fast float %3069, %3022
  %3072 = fadd fast float %3070, %3065
  %3073 = fadd fast float %3071, %3067
  %3074 = extractvalue %dx.types.CBufRet.f32 %3043, 2
  %3075 = fmul fast float %3074, %3029
  %3076 = fmul fast float %3074, %3030
  %3077 = fadd fast float %3072, %3075
  %3078 = fadd fast float %3073, %3076
  %3079 = fmul fast float %3066, %3066
  %3080 = fmul fast float %3078, %3078
  %3081 = fmul fast float %3068, %3068
  %3082 = fadd fast float %3081, %3079
  %3083 = fadd fast float %3082, %3080
  %3084 = call float @dx.op.unary.f32(i32 24, float %3083)  ; Sqrt(value)
  %3085 = fcmp fast ugt float %3084, 0.000000e+00
  br i1 %3085, label %3086, label %3101

; <label>:3086                                    ; preds = %2820
  %3087 = fsub fast float -0.000000e+00, %3068
  %3088 = fdiv fast float %3087, %3084
  %3089 = fsub fast float -0.000000e+00, %3066
  %3090 = fdiv fast float %3089, %3084
  %3091 = fdiv fast float %3078, %3084
  %3092 = fmul fast float %3077, 0x3FE279A760000000
  %3093 = fmul fast float %3090, %3066
  %3094 = fmul fast float %3091, %3078
  %3095 = fmul fast float %3088, %3068
  %3096 = fadd fast float %3093, %3095
  %3097 = fsub fast float %3096, %3094
  %3098 = call float @dx.op.unary.f32(i32 6, float %3097)  ; FAbs(value)
  %3099 = fadd fast float %3098, 0x3DDB7CDFE0000000
  %3100 = fdiv fast float %3092, %3099
  br label %3101

; <label>:3101                                    ; preds = %3086, %2820
  %3102 = phi float [ %3100, %3086 ], [ 1.000000e+00, %2820 ]
  %3103 = fmul fast float %3051, %3051
  %3104 = fmul fast float %3063, %3063
  %3105 = fmul fast float %3053, %3053
  %3106 = fadd fast float %3105, %3103
  %3107 = fadd fast float %3106, %3104
  %3108 = call float @dx.op.unary.f32(i32 24, float %3107)  ; Sqrt(value)
  %3109 = fcmp fast ugt float %3108, 0.000000e+00
  br i1 %3109, label %3110, label %3125

; <label>:3110                                    ; preds = %3101
  %3111 = fsub fast float -0.000000e+00, %3053
  %3112 = fdiv fast float %3111, %3108
  %3113 = fsub fast float -0.000000e+00, %3051
  %3114 = fdiv fast float %3113, %3108
  %3115 = fdiv fast float %3063, %3108
  %3116 = fmul fast float %3062, 0x3FE279A760000000
  %3117 = fmul fast float %3114, %3051
  %3118 = fmul fast float %3115, %3063
  %3119 = fmul fast float %3112, %3053
  %3120 = fadd fast float %3117, %3119
  %3121 = fsub fast float %3120, %3118
  %3122 = call float @dx.op.unary.f32(i32 6, float %3121)  ; FAbs(value)
  %3123 = fadd fast float %3122, 0x3DDB7CDFE0000000
  %3124 = fdiv fast float %3116, %3123
  br label %3125

; <label>:3125                                    ; preds = %3110, %3101
  %3126 = phi float [ %3124, %3110 ], [ 1.000000e+00, %3101 ]
  %3127 = call float @dx.op.binary.f32(i32 36, float %3126, float %3102)  ; FMin(a,b)
  %3128 = fmul fast float %3034, %3034
  %3129 = fmul fast float %3048, %3048
  %3130 = fmul fast float %3036, %3036
  %3131 = fadd fast float %3130, %3128
  %3132 = fadd fast float %3131, %3129
  %3133 = call float @dx.op.unary.f32(i32 24, float %3132)  ; Sqrt(value)
  %3134 = fcmp fast ugt float %3133, 0.000000e+00
  br i1 %3134, label %3135, label %3150

; <label>:3135                                    ; preds = %3125
  %3136 = fsub fast float -0.000000e+00, %3036
  %3137 = fdiv fast float %3136, %3133
  %3138 = fsub fast float -0.000000e+00, %3034
  %3139 = fdiv fast float %3138, %3133
  %3140 = fdiv fast float %3048, %3133
  %3141 = fmul fast float %3047, 0x3FE279A760000000
  %3142 = fmul fast float %3139, %3034
  %3143 = fmul fast float %3140, %3048
  %3144 = fmul fast float %3137, %3036
  %3145 = fadd fast float %3142, %3144
  %3146 = fsub fast float %3145, %3143
  %3147 = call float @dx.op.unary.f32(i32 6, float %3146)  ; FAbs(value)
  %3148 = fadd fast float %3147, 0x3DDB7CDFE0000000
  %3149 = fdiv fast float %3141, %3148
  br label %3150

; <label>:3150                                    ; preds = %3135, %3125
  %3151 = phi float [ %3149, %3135 ], [ 1.000000e+00, %3125 ]
  %3152 = call float @dx.op.binary.f32(i32 36, float %3151, float %3127)  ; FMin(a,b)
  %3153 = call float @dx.op.unary.f32(i32 7, float %3152)  ; Saturate(value)
  %3154 = fcmp fast olt float %3153, 1.000000e+00
  br i1 %3154, label %3155, label %3165

; <label>:3155                                    ; preds = %3150
  %3156 = fmul fast float %3153, %3034
  %3157 = fmul fast float %3153, %3048
  %3158 = fmul fast float %3153, %3036
  %3159 = fmul fast float %3153, %3051
  %3160 = fmul fast float %3153, %3063
  %3161 = fmul fast float %3153, %3053
  %3162 = fmul fast float %3153, %3066
  %3163 = fmul fast float %3153, %3078
  %3164 = fmul fast float %3153, %3068
  br label %3165

; <label>:3165                                    ; preds = %3155, %3150
  %3166 = phi float [ %3162, %3155 ], [ %3066, %3150 ]
  %3167 = phi float [ %3163, %3155 ], [ %3078, %3150 ]
  %3168 = phi float [ %3164, %3155 ], [ %3068, %3150 ]
  %3169 = phi float [ %3159, %3155 ], [ %3051, %3150 ]
  %3170 = phi float [ %3160, %3155 ], [ %3063, %3150 ]
  %3171 = phi float [ %3161, %3155 ], [ %3053, %3150 ]
  %3172 = phi float [ %3156, %3155 ], [ %3034, %3150 ]
  %3173 = phi float [ %3157, %3155 ], [ %3048, %3150 ]
  %3174 = phi float [ %3158, %3155 ], [ %3036, %3150 ]
  %3175 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3047)  ; FMax(a,b)
  %3176 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3062)  ; FMax(a,b)
  %3177 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3077)  ; FMax(a,b)
  %3178 = fcmp fast oge float %2835, 0.000000e+00
  %3179 = and i1 %3178, %2606
  %3180 = fcmp fast ole float %2835, 1.000000e+00
  %3181 = and i1 %3180, %3179
  %3182 = fcmp fast oge float %2836, 0.000000e+00
  %3183 = and i1 %3182, %3181
  %3184 = fcmp fast ole float %2836, 1.000000e+00
  %3185 = and i1 %3184, %3183
  br i1 %3185, label %3186, label %3331, !dx.controlflow.hints !73

; <label>:3186                                    ; preds = %3165
  %3187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3188 = extractvalue %dx.types.CBufRet.f32 %3187, 2
  %3189 = extractvalue %dx.types.CBufRet.f32 %3187, 3
  %3190 = fmul fast float %3188, %2835
  %3191 = fmul fast float %3189, %2836
  %3192 = call float @dx.op.unary.f32(i32 27, float %3190)  ; Round_ni(value)
  %3193 = call float @dx.op.unary.f32(i32 27, float %3191)  ; Round_ni(value)
  %3194 = fptosi float %3192 to i32
  %3195 = fptosi float %3193 to i32
  %3196 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %3194, i32 %3195, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3197 = extractvalue %dx.types.ResRet.i32 %3196, 0
  %3198 = and i32 %3197, 65535
  %3199 = lshr i32 %3197, 16
  %3200 = icmp eq i32 %3198, 65535
  br i1 %3200, label %3237, label %3201

; <label>:3201                                    ; preds = %3186
  %3202 = extractvalue %dx.types.CBufRet.f32 %2604, 1
  %3203 = extractvalue %dx.types.CBufRet.f32 %3187, 0
  %3204 = extractvalue %dx.types.CBufRet.f32 %3187, 1
  %3205 = fmul fast float %3203, %2835
  %3206 = fmul fast float %3204, %2836
  %3207 = fmul fast float %3205, 1.250000e-01
  %3208 = fmul fast float %3206, 1.250000e-01
  %3209 = call float @dx.op.unary.f32(i32 27, float %3207)  ; Round_ni(value)
  %3210 = call float @dx.op.unary.f32(i32 27, float %3208)  ; Round_ni(value)
  %3211 = fmul fast float %3209, 8.000000e+00
  %3212 = fmul fast float %3210, 8.000000e+00
  %3213 = and i32 %3197, 255
  %3214 = lshr i32 %3197, 8
  %3215 = and i32 %3214, 255
  %3216 = mul nuw nsw i32 %3213, 9
  %3217 = uitofp i32 %3216 to float
  %3218 = mul nuw nsw i32 %3215, 9
  %3219 = uitofp i32 %3218 to float
  %3220 = fadd fast float %3217, 5.000000e-01
  %3221 = fadd fast float %3220, %3205
  %3222 = fsub fast float %3221, %3211
  %3223 = fadd fast float %3219, 5.000000e-01
  %3224 = fadd fast float %3223, %3206
  %3225 = fsub fast float %3224, %3212
  %3226 = fdiv fast float %3222, %2605
  %3227 = fdiv fast float %3225, %3202
  %3228 = fmul fast float %2863, 4.375000e-01
  %3229 = fadd fast float %3228, 3.125000e-02
  %3230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %27, float %3226, float %3227, float %3229, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3231 = extractvalue %dx.types.ResRet.f32 %3230, 0
  %3232 = extractvalue %dx.types.ResRet.f32 %3230, 1
  %3233 = extractvalue %dx.types.ResRet.f32 %3230, 2
  %3234 = fadd fast float %3231, %3175
  %3235 = fadd fast float %3232, %3176
  %3236 = fadd fast float %3233, %3177
  br label %3237

; <label>:3237                                    ; preds = %3201, %3186
  %3238 = phi float [ %3236, %3201 ], [ %3177, %3186 ]
  %3239 = phi float [ %3235, %3201 ], [ %3176, %3186 ]
  %3240 = phi float [ %3234, %3201 ], [ %3175, %3186 ]
  %3241 = icmp eq i32 %3199, 65535
  br i1 %3241, label %3331, label %3242

; <label>:3242                                    ; preds = %3237
  %3243 = extractvalue %dx.types.CBufRet.f32 %2604, 1
  %3244 = extractvalue %dx.types.CBufRet.f32 %3187, 0
  %3245 = extractvalue %dx.types.CBufRet.f32 %3187, 1
  %3246 = fmul fast float %3244, %2835
  %3247 = fmul fast float %3245, %2836
  %3248 = fmul fast float %3246, 1.250000e-01
  %3249 = fmul fast float %3247, 1.250000e-01
  %3250 = call float @dx.op.unary.f32(i32 27, float %3248)  ; Round_ni(value)
  %3251 = call float @dx.op.unary.f32(i32 27, float %3249)  ; Round_ni(value)
  %3252 = fmul fast float %3250, 8.000000e+00
  %3253 = fmul fast float %3251, 8.000000e+00
  %3254 = fsub fast float %3246, %3252
  %3255 = fsub fast float %3247, %3253
  %3256 = fadd fast float %3254, 5.000000e-01
  %3257 = fadd fast float %3255, 5.000000e-01
  %3258 = and i32 %3199, 255
  %3259 = lshr i32 %3197, 24
  %3260 = mul nuw nsw i32 %3258, 9
  %3261 = uitofp i32 %3260 to float
  %3262 = mul nuw nsw i32 %3259, 9
  %3263 = uitofp i32 %3262 to float
  %3264 = fadd fast float %3256, %3261
  %3265 = fadd fast float %3257, %3263
  %3266 = fdiv fast float %3264, %2605
  %3267 = fdiv fast float %3265, %3243
  %3268 = fmul fast float %2863, 4.375000e-01
  %3269 = fadd fast float %3268, 3.125000e-02
  %3270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %27, float %3266, float %3267, float %3269, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3271 = extractvalue %dx.types.ResRet.f32 %3270, 0
  %3272 = extractvalue %dx.types.ResRet.f32 %3270, 1
  %3273 = extractvalue %dx.types.ResRet.f32 %3270, 2
  %3274 = fadd fast float %3268, 5.312500e-01
  %3275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %27, float %3266, float %3267, float %3274, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3276 = extractvalue %dx.types.ResRet.f32 %3275, 0
  %3277 = extractvalue %dx.types.ResRet.f32 %3275, 1
  %3278 = extractvalue %dx.types.ResRet.f32 %3275, 2
  %3279 = fmul fast float %3276, 2.000000e+00
  %3280 = fmul fast float %3277, 2.000000e+00
  %3281 = fmul fast float %3278, 2.000000e+00
  %3282 = fadd fast float %3279, -1.000000e+00
  %3283 = fadd fast float %3280, -1.000000e+00
  %3284 = fadd fast float %3281, -1.000000e+00
  %3285 = fmul fast float %3282, %3282
  %3286 = fmul fast float %3283, %3283
  %3287 = fadd fast float %3285, %3286
  %3288 = fmul fast float %3284, %3284
  %3289 = fadd fast float %3287, %3288
  %3290 = call float @dx.op.unary.f32(i32 24, float %3289)  ; Sqrt(value)
  %3291 = fcmp fast ogt float %3290, 0.000000e+00
  br i1 %3291, label %3292, label %3296

; <label>:3292                                    ; preds = %3242
  %3293 = fdiv fast float %3282, %3290
  %3294 = fdiv fast float %3283, %3290
  %3295 = fdiv fast float %3284, %3290
  br label %3296

; <label>:3296                                    ; preds = %3292, %3242
  %3297 = phi float [ %3293, %3292 ], [ 0.000000e+00, %3242 ]
  %3298 = phi float [ %3294, %3292 ], [ 0.000000e+00, %3242 ]
  %3299 = phi float [ %3295, %3292 ], [ 0.000000e+00, %3242 ]
  %3300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3301 = extractvalue %dx.types.CBufRet.f32 %3300, 0
  %3302 = extractvalue %dx.types.CBufRet.f32 %3300, 1
  %3303 = fsub fast float %2456, %3301
  %3304 = fsub fast float %2457, %3302
  %3305 = fmul fast float %3303, %3303
  %3306 = fmul fast float %3304, %3304
  %3307 = fadd fast float %3305, %3306
  %3308 = call float @dx.op.unary.f32(i32 24, float %3307)  ; Sqrt(value)
  %3309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3310 = extractvalue %dx.types.CBufRet.f32 %3309, 0
  %3311 = extractvalue %dx.types.CBufRet.f32 %3309, 1
  %3312 = fsub fast float %3308, %3310
  %3313 = fdiv fast float %3312, %3311
  %3314 = call float @dx.op.unary.f32(i32 7, float %3313)  ; Saturate(value)
  %3315 = fmul fast float %3314, 2.000000e+00
  %3316 = fsub fast float 3.000000e+00, %3315
  %3317 = fmul fast float %3314, %3314
  %3318 = fmul fast float %3317, %3316
  %3319 = call float @dx.op.dot3.f32(i32 55, float %3297, float %3298, float %3299, float %2433, float %2434, float %2435)  ; Dot3(ax,ay,az,bx,by,bz)
  %3320 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3319)  ; FMax(a,b)
  %3321 = fmul fast float %3320, 0x400C5BF8A0000000
  %3322 = fmul fast float %3318, %3271
  %3323 = fmul fast float %3322, %3321
  %3324 = fadd fast float %3323, %3240
  %3325 = fmul fast float %3318, %3272
  %3326 = fmul fast float %3325, %3321
  %3327 = fadd fast float %3326, %3239
  %3328 = fmul fast float %3318, %3273
  %3329 = fmul fast float %3328, %3321
  %3330 = fadd fast float %3329, %3238
  br label %3331

; <label>:3331                                    ; preds = %3296, %3237, %3165
  %3332 = phi float [ %3330, %3296 ], [ %3238, %3237 ], [ %3177, %3165 ]
  %3333 = phi float [ %3327, %3296 ], [ %3239, %3237 ], [ %3176, %3165 ]
  %3334 = phi float [ %3324, %3296 ], [ %3240, %3237 ], [ %3175, %3165 ]
  %3335 = fcmp fast ogt float %2822, %2859
  %3336 = and i1 %3178, %3335
  %3337 = and i1 %3180, %3336
  %3338 = and i1 %3182, %3337
  %3339 = and i1 %3184, %3338
  br i1 %3339, label %3340, label %3397, !dx.controlflow.hints !74

; <label>:3340                                    ; preds = %3331
  %3341 = fmul fast float %2861, 0x3FC24924A0000000
  %3342 = fsub fast float %2822, %2859
  %3343 = fdiv fast float %3342, %3341
  %3344 = call float @dx.op.unary.f32(i32 7, float %3343)  ; Saturate(value)
  %3345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3346 = extractvalue %dx.types.CBufRet.f32 %3345, 0
  %3347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3348 = extractvalue %dx.types.CBufRet.f32 %3347, 0
  %3349 = extractvalue %dx.types.CBufRet.f32 %3347, 1
  %3350 = extractvalue %dx.types.CBufRet.f32 %3347, 2
  %3351 = fsub fast float %3346, %3334
  %3352 = fsub fast float %3348, %3172
  %3353 = fsub fast float %3349, %3173
  %3354 = fsub fast float %3350, %3174
  %3355 = fmul fast float %3351, %3344
  %3356 = fmul fast float %3352, %3344
  %3357 = fmul fast float %3353, %3344
  %3358 = fmul fast float %3354, %3344
  %3359 = fadd fast float %3355, %3334
  %3360 = fadd fast float %3356, %3172
  %3361 = fadd fast float %3357, %3173
  %3362 = fadd fast float %3358, %3174
  %3363 = extractvalue %dx.types.CBufRet.f32 %3345, 1
  %3364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3365 = extractvalue %dx.types.CBufRet.f32 %3364, 0
  %3366 = extractvalue %dx.types.CBufRet.f32 %3364, 1
  %3367 = extractvalue %dx.types.CBufRet.f32 %3364, 2
  %3368 = fsub fast float %3363, %3333
  %3369 = fsub fast float %3365, %3169
  %3370 = fsub fast float %3366, %3170
  %3371 = fsub fast float %3367, %3171
  %3372 = fmul fast float %3368, %3344
  %3373 = fmul fast float %3369, %3344
  %3374 = fmul fast float %3370, %3344
  %3375 = fmul fast float %3371, %3344
  %3376 = fadd fast float %3372, %3333
  %3377 = fadd fast float %3373, %3169
  %3378 = fadd fast float %3374, %3170
  %3379 = fadd fast float %3375, %3171
  %3380 = extractvalue %dx.types.CBufRet.f32 %3345, 2
  %3381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3382 = extractvalue %dx.types.CBufRet.f32 %3381, 0
  %3383 = extractvalue %dx.types.CBufRet.f32 %3381, 1
  %3384 = extractvalue %dx.types.CBufRet.f32 %3381, 2
  %3385 = fsub fast float %3380, %3332
  %3386 = fsub fast float %3382, %3166
  %3387 = fsub fast float %3383, %3167
  %3388 = fsub fast float %3384, %3168
  %3389 = fmul fast float %3385, %3344
  %3390 = fmul fast float %3386, %3344
  %3391 = fmul fast float %3387, %3344
  %3392 = fmul fast float %3388, %3344
  %3393 = fadd fast float %3389, %3332
  %3394 = fadd fast float %3390, %3166
  %3395 = fadd fast float %3391, %3167
  %3396 = fadd fast float %3392, %3168
  br label %3397

; <label>:3397                                    ; preds = %3340, %3331
  %3398 = phi float [ %3393, %3340 ], [ %3332, %3331 ]
  %3399 = phi float [ %3394, %3340 ], [ %3166, %3331 ]
  %3400 = phi float [ %3395, %3340 ], [ %3167, %3331 ]
  %3401 = phi float [ %3396, %3340 ], [ %3168, %3331 ]
  %3402 = phi float [ %3376, %3340 ], [ %3333, %3331 ]
  %3403 = phi float [ %3377, %3340 ], [ %3169, %3331 ]
  %3404 = phi float [ %3378, %3340 ], [ %3170, %3331 ]
  %3405 = phi float [ %3379, %3340 ], [ %3171, %3331 ]
  %3406 = phi float [ %3359, %3340 ], [ %3334, %3331 ]
  %3407 = phi float [ %3360, %3340 ], [ %3172, %3331 ]
  %3408 = phi float [ %3361, %3340 ], [ %3173, %3331 ]
  %3409 = phi float [ %3362, %3340 ], [ %3174, %3331 ]
  %3410 = extractvalue %dx.types.CBufRet.f32 %2984, 3
  %3411 = fmul fast float %3410, %3406
  %3412 = fmul fast float %3410, %3402
  %3413 = fmul fast float %3410, %3398
  %3414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3415 = extractvalue %dx.types.CBufRet.f32 %3414, 3
  %3416 = fmul fast float %3411, %3415
  %3417 = fmul fast float %3412, %3415
  %3418 = fmul fast float %3413, %3415
  %3419 = fmul fast float %3407, 1.500000e+00
  %3420 = fmul fast float %3419, %3410
  %3421 = fmul fast float %3420, %3415
  %3422 = fmul fast float %3408, 1.500000e+00
  %3423 = fmul fast float %3422, %3410
  %3424 = fmul fast float %3423, %3415
  %3425 = fmul fast float %3409, 1.500000e+00
  %3426 = fmul fast float %3425, %3410
  %3427 = fmul fast float %3426, %3415
  %3428 = fmul fast float %3403, 1.500000e+00
  %3429 = fmul fast float %3428, %3410
  %3430 = fmul fast float %3429, %3415
  %3431 = fmul fast float %3404, 1.500000e+00
  %3432 = fmul fast float %3431, %3410
  %3433 = fmul fast float %3432, %3415
  %3434 = fmul fast float %3405, 1.500000e+00
  %3435 = fmul fast float %3434, %3410
  %3436 = fmul fast float %3435, %3415
  %3437 = fmul fast float %3399, 1.500000e+00
  %3438 = fmul fast float %3437, %3410
  %3439 = fmul fast float %3438, %3415
  %3440 = fmul fast float %3400, 1.500000e+00
  %3441 = fmul fast float %3440, %3410
  %3442 = fmul fast float %3441, %3415
  %3443 = fmul fast float %3401, 1.500000e+00
  %3444 = fmul fast float %3443, %3410
  %3445 = fmul fast float %3444, %3415
  %3446 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3416)  ; FMax(a,b)
  %3447 = call float @dx.op.dot3.f32(i32 55, float %3421, float %3424, float %3427, float %3421, float %3424, float %3427)  ; Dot3(ax,ay,az,bx,by,bz)
  %3448 = fcmp fast oeq float %3447, 0.000000e+00
  %3449 = fcmp fast oeq float %3446, 0.000000e+00
  %3450 = or i1 %3449, %3448
  br i1 %3450, label %3480, label %3451

; <label>:3451                                    ; preds = %3397
  %3452 = fsub fast float -0.000000e+00, %3427
  %3453 = fsub fast float -0.000000e+00, %3421
  %3454 = call float @dx.op.unary.f32(i32 24, float %3447)  ; Sqrt(value)
  %3455 = fdiv fast float %3454, %3446
  %3456 = fcmp fast ogt float %3455, 0x3FFB6F8900000000
  %3457 = select i1 %3456, float 0x3FFB6F8900000000, float %3455
  %3458 = fmul fast float %3457, 0x3FE8A23460000000
  %3459 = call float @dx.op.unary.f32(i32 7, float %3458)  ; Saturate(value)
  %3460 = call float @dx.op.binary.f32(i32 35, float %3457, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3461 = fmul fast float %3459, %3446
  %3462 = fmul fast float %3460, 0x3FF279A740000000
  %3463 = fadd fast float %3462, -1.000000e+00
  %3464 = call float @dx.op.dot3.f32(i32 55, float %3452, float %3453, float %3424, float %3452, float %3453, float %3424)  ; Dot3(ax,ay,az,bx,by,bz)
  %3465 = call float @dx.op.unary.f32(i32 25, float %3464)  ; Rsqrt(value)
  %3466 = fmul fast float %3465, %3452
  %3467 = fmul fast float %3465, %3453
  %3468 = fmul fast float %3465, %3424
  %3469 = fmul fast float %3463, %3463
  %3470 = fsub fast float 1.000000e+00, %3469
  %3471 = fmul fast float %3460, 0x40005F8BE0000000
  %3472 = fsub fast float 0x400C5BF8A0000000, %3471
  %3473 = fdiv fast float %3461, %3472
  %3474 = fmul fast float %3473, 0x3FEE31C3C0000000
  %3475 = fmul fast float %3474, %3470
  %3476 = fmul fast float %3460, 0x3FDACB7480000000
  %3477 = fadd fast float %3476, 0xBFD7347680000000
  %3478 = fmul fast float %3477, %3473
  %3479 = fmul fast float %3478, %3470
  br label %3480

; <label>:3480                                    ; preds = %3451, %3397
  %3481 = phi float [ %3466, %3451 ], [ 0.000000e+00, %3397 ]
  %3482 = phi float [ %3467, %3451 ], [ 0.000000e+00, %3397 ]
  %3483 = phi float [ %3468, %3451 ], [ 0.000000e+00, %3397 ]
  %3484 = phi float [ %3475, %3451 ], [ 0.000000e+00, %3397 ]
  %3485 = phi float [ %3479, %3451 ], [ 0.000000e+00, %3397 ]
  %3486 = call float @dx.op.dot3.f32(i32 55, float %3481, float %3482, float %3483, float %2433, float %2434, float %2435)  ; Dot3(ax,ay,az,bx,by,bz)
  %3487 = fmul fast float %3486, %3486
  %3488 = fmul fast float %3487, 0x3FEE471020000000
  %3489 = fadd fast float %3488, 0xBFD42F6020000000
  %3490 = fmul fast float %3446, 0x3FD20DD760000000
  %3491 = fmul fast float %3489, %3485
  %3492 = fmul fast float %3484, 0x3FDF454380000000
  %3493 = fmul fast float %3492, %3486
  %3494 = fadd fast float %3493, %3490
  %3495 = fadd fast float %3494, %3491
  %3496 = call float @dx.op.dot3.f32(i32 55, float %3481, float %3482, float %3483, float %2446, float %2447, float %2448)  ; Dot3(ax,ay,az,bx,by,bz)
  %3497 = fmul fast float %3496, 0x3FDF454380000000
  %3498 = fmul fast float %3496, %3496
  %3499 = fmul fast float %3498, 0x3FEE471020000000
  %3500 = fadd fast float %3499, 0xBFD42F6020000000
  %3501 = call float @dx.op.dot3.f32(i32 55, float %3446, float %3484, float %3485, float 0x3FD20DD760000000, float %3497, float %3500)  ; Dot3(ax,ay,az,bx,by,bz)
  %3502 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3417)  ; FMax(a,b)
  %3503 = call float @dx.op.dot3.f32(i32 55, float %3430, float %3433, float %3436, float %3430, float %3433, float %3436)  ; Dot3(ax,ay,az,bx,by,bz)
  %3504 = fcmp fast oeq float %3503, 0.000000e+00
  %3505 = fcmp fast oeq float %3502, 0.000000e+00
  %3506 = or i1 %3505, %3504
  br i1 %3506, label %3536, label %3507

; <label>:3507                                    ; preds = %3480
  %3508 = fsub fast float -0.000000e+00, %3436
  %3509 = fsub fast float -0.000000e+00, %3430
  %3510 = call float @dx.op.unary.f32(i32 24, float %3503)  ; Sqrt(value)
  %3511 = fdiv fast float %3510, %3502
  %3512 = fcmp fast ogt float %3511, 0x3FFB6F8900000000
  %3513 = select i1 %3512, float 0x3FFB6F8900000000, float %3511
  %3514 = fmul fast float %3513, 0x3FE8A23460000000
  %3515 = call float @dx.op.unary.f32(i32 7, float %3514)  ; Saturate(value)
  %3516 = call float @dx.op.binary.f32(i32 35, float %3513, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3517 = fmul fast float %3515, %3502
  %3518 = fmul fast float %3516, 0x3FF279A740000000
  %3519 = fadd fast float %3518, -1.000000e+00
  %3520 = call float @dx.op.dot3.f32(i32 55, float %3508, float %3509, float %3433, float %3508, float %3509, float %3433)  ; Dot3(ax,ay,az,bx,by,bz)
  %3521 = call float @dx.op.unary.f32(i32 25, float %3520)  ; Rsqrt(value)
  %3522 = fmul fast float %3521, %3508
  %3523 = fmul fast float %3521, %3509
  %3524 = fmul fast float %3521, %3433
  %3525 = fmul fast float %3519, %3519
  %3526 = fsub fast float 1.000000e+00, %3525
  %3527 = fmul fast float %3516, 0x40005F8BE0000000
  %3528 = fsub fast float 0x400C5BF8A0000000, %3527
  %3529 = fdiv fast float %3517, %3528
  %3530 = fmul fast float %3529, 0x3FEE31C3C0000000
  %3531 = fmul fast float %3530, %3526
  %3532 = fmul fast float %3516, 0x3FDACB7480000000
  %3533 = fadd fast float %3532, 0xBFD7347680000000
  %3534 = fmul fast float %3533, %3529
  %3535 = fmul fast float %3534, %3526
  br label %3536

; <label>:3536                                    ; preds = %3507, %3480
  %3537 = phi float [ %3522, %3507 ], [ 0.000000e+00, %3480 ]
  %3538 = phi float [ %3523, %3507 ], [ 0.000000e+00, %3480 ]
  %3539 = phi float [ %3524, %3507 ], [ 0.000000e+00, %3480 ]
  %3540 = phi float [ %3531, %3507 ], [ 0.000000e+00, %3480 ]
  %3541 = phi float [ %3535, %3507 ], [ 0.000000e+00, %3480 ]
  %3542 = call float @dx.op.dot3.f32(i32 55, float %3537, float %3538, float %3539, float %2433, float %2434, float %2435)  ; Dot3(ax,ay,az,bx,by,bz)
  %3543 = fmul fast float %3542, %3542
  %3544 = fmul fast float %3543, 0x3FEE471020000000
  %3545 = fadd fast float %3544, 0xBFD42F6020000000
  %3546 = fmul fast float %3502, 0x3FD20DD760000000
  %3547 = fmul fast float %3545, %3541
  %3548 = fmul fast float %3540, 0x3FDF454380000000
  %3549 = fmul fast float %3548, %3542
  %3550 = fadd fast float %3549, %3546
  %3551 = fadd fast float %3550, %3547
  %3552 = call float @dx.op.dot3.f32(i32 55, float %3537, float %3538, float %3539, float %2446, float %2447, float %2448)  ; Dot3(ax,ay,az,bx,by,bz)
  %3553 = fmul fast float %3552, 0x3FDF454380000000
  %3554 = fmul fast float %3552, %3552
  %3555 = fmul fast float %3554, 0x3FEE471020000000
  %3556 = fadd fast float %3555, 0xBFD42F6020000000
  %3557 = call float @dx.op.dot3.f32(i32 55, float %3502, float %3540, float %3541, float 0x3FD20DD760000000, float %3553, float %3556)  ; Dot3(ax,ay,az,bx,by,bz)
  %3558 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3418)  ; FMax(a,b)
  %3559 = call float @dx.op.dot3.f32(i32 55, float %3439, float %3442, float %3445, float %3439, float %3442, float %3445)  ; Dot3(ax,ay,az,bx,by,bz)
  %3560 = fcmp fast oeq float %3559, 0.000000e+00
  %3561 = fcmp fast oeq float %3558, 0.000000e+00
  %3562 = or i1 %3561, %3560
  br i1 %3562, label %3592, label %3563

; <label>:3563                                    ; preds = %3536
  %3564 = fsub fast float -0.000000e+00, %3445
  %3565 = fsub fast float -0.000000e+00, %3439
  %3566 = call float @dx.op.unary.f32(i32 24, float %3559)  ; Sqrt(value)
  %3567 = fdiv fast float %3566, %3558
  %3568 = fcmp fast ogt float %3567, 0x3FFB6F8900000000
  %3569 = select i1 %3568, float 0x3FFB6F8900000000, float %3567
  %3570 = fmul fast float %3569, 0x3FE8A23460000000
  %3571 = call float @dx.op.unary.f32(i32 7, float %3570)  ; Saturate(value)
  %3572 = call float @dx.op.binary.f32(i32 35, float %3569, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3573 = fmul fast float %3571, %3558
  %3574 = fmul fast float %3572, 0x3FF279A740000000
  %3575 = fadd fast float %3574, -1.000000e+00
  %3576 = call float @dx.op.dot3.f32(i32 55, float %3564, float %3565, float %3442, float %3564, float %3565, float %3442)  ; Dot3(ax,ay,az,bx,by,bz)
  %3577 = call float @dx.op.unary.f32(i32 25, float %3576)  ; Rsqrt(value)
  %3578 = fmul fast float %3577, %3564
  %3579 = fmul fast float %3577, %3565
  %3580 = fmul fast float %3577, %3442
  %3581 = fmul fast float %3575, %3575
  %3582 = fsub fast float 1.000000e+00, %3581
  %3583 = fmul fast float %3572, 0x40005F8BE0000000
  %3584 = fsub fast float 0x400C5BF8A0000000, %3583
  %3585 = fdiv fast float %3573, %3584
  %3586 = fmul fast float %3585, 0x3FEE31C3C0000000
  %3587 = fmul fast float %3586, %3582
  %3588 = fmul fast float %3572, 0x3FDACB7480000000
  %3589 = fadd fast float %3588, 0xBFD7347680000000
  %3590 = fmul fast float %3589, %3585
  %3591 = fmul fast float %3590, %3582
  br label %3592

; <label>:3592                                    ; preds = %3563, %3536
  %3593 = phi float [ %3578, %3563 ], [ 0.000000e+00, %3536 ]
  %3594 = phi float [ %3579, %3563 ], [ 0.000000e+00, %3536 ]
  %3595 = phi float [ %3580, %3563 ], [ 0.000000e+00, %3536 ]
  %3596 = phi float [ %3587, %3563 ], [ 0.000000e+00, %3536 ]
  %3597 = phi float [ %3591, %3563 ], [ 0.000000e+00, %3536 ]
  %3598 = call float @dx.op.dot3.f32(i32 55, float %3593, float %3594, float %3595, float %2433, float %2434, float %2435)  ; Dot3(ax,ay,az,bx,by,bz)
  %3599 = fmul fast float %3598, %3598
  %3600 = fmul fast float %3599, 0x3FEE471020000000
  %3601 = fadd fast float %3600, 0xBFD42F6020000000
  %3602 = fmul fast float %3558, 0x3FD20DD760000000
  %3603 = fmul fast float %3601, %3597
  %3604 = fmul fast float %3596, 0x3FDF454380000000
  %3605 = fmul fast float %3604, %3598
  %3606 = fadd fast float %3605, %3602
  %3607 = fadd fast float %3606, %3603
  %3608 = call float @dx.op.dot3.f32(i32 55, float %3593, float %3594, float %3595, float %2446, float %2447, float %2448)  ; Dot3(ax,ay,az,bx,by,bz)
  %3609 = fmul fast float %3608, 0x3FDF454380000000
  %3610 = fmul fast float %3608, %3608
  %3611 = fmul fast float %3610, 0x3FEE471020000000
  %3612 = fadd fast float %3611, 0xBFD42F6020000000
  %3613 = call float @dx.op.dot3.f32(i32 55, float %3558, float %3596, float %3597, float 0x3FD20DD760000000, float %3609, float %3612)  ; Dot3(ax,ay,az,bx,by,bz)
  %3614 = call float @dx.op.binary.f32(i32 35, float %3495, float 0.000000e+00)  ; FMax(a,b)
  %3615 = call float @dx.op.binary.f32(i32 35, float %3551, float 0.000000e+00)  ; FMax(a,b)
  %3616 = call float @dx.op.binary.f32(i32 35, float %3607, float 0.000000e+00)  ; FMax(a,b)
  %3617 = call float @dx.op.binary.f32(i32 35, float %3501, float 0.000000e+00)  ; FMax(a,b)
  %3618 = call float @dx.op.binary.f32(i32 35, float %3557, float 0.000000e+00)  ; FMax(a,b)
  %3619 = call float @dx.op.binary.f32(i32 35, float %3613, float 0.000000e+00)  ; FMax(a,b)
  %3620 = fsub fast float %2816, %3614
  %3621 = fsub fast float %2817, %3615
  %3622 = fsub fast float %2818, %3616
  %3623 = fmul fast float %3620, %2497
  %3624 = fmul fast float %3621, %2497
  %3625 = fmul fast float %3622, %2497
  %3626 = fadd fast float %3623, %3614
  %3627 = fadd fast float %3624, %3615
  %3628 = fadd fast float %3625, %3616
  %3629 = fsub fast float %2813, %3617
  %3630 = fsub fast float %2814, %3618
  %3631 = fsub fast float %2815, %3619
  %3632 = fmul fast float %3629, %2497
  %3633 = fmul fast float %3630, %2497
  %3634 = fmul fast float %3631, %2497
  %3635 = fadd fast float %3632, %3617
  %3636 = fadd fast float %3633, %3618
  %3637 = fadd fast float %3634, %3619
  br label %3638

; <label>:3638                                    ; preds = %3592, %2812
  %3639 = phi float [ %3635, %3592 ], [ %2813, %2812 ]
  %3640 = phi float [ %3636, %3592 ], [ %2814, %2812 ]
  %3641 = phi float [ %3637, %3592 ], [ %2815, %2812 ]
  %3642 = phi float [ %3626, %3592 ], [ %2816, %2812 ]
  %3643 = phi float [ %3627, %3592 ], [ %2817, %2812 ]
  %3644 = phi float [ %3628, %3592 ], [ %2818, %2812 ]
  %3645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3646 = extractvalue %dx.types.CBufRet.f32 %3645, 0
  %3647 = call float @dx.op.binary.f32(i32 36, float %2430, float %3646)  ; FMin(a,b)
  %3648 = fsub fast float 1.000000e+00, %2449
  %3649 = fmul fast float %3647, %3648
  %3650 = fsub fast float 1.000000e+00, %3649
  %3651 = bitcast float %3650 to i32
  %3652 = sub nsw i32 2129859010, %3651
  %3653 = bitcast i32 %3652 to float
  %3654 = call float @dx.op.binary.f32(i32 36, float %2431, float %3646)  ; FMin(a,b)
  %3655 = fmul fast float %3654, %3648
  %3656 = fsub fast float 1.000000e+00, %3655
  %3657 = bitcast float %3656 to i32
  %3658 = sub nsw i32 2129859010, %3657
  %3659 = bitcast i32 %3658 to float
  %3660 = call float @dx.op.binary.f32(i32 36, float %2432, float %3646)  ; FMin(a,b)
  %3661 = fmul fast float %3660, %3648
  %3662 = fsub fast float 1.000000e+00, %3661
  %3663 = bitcast float %3662 to i32
  %3664 = sub nsw i32 2129859010, %3663
  %3665 = bitcast i32 %3664 to float
  %3666 = fmul fast float %3642, %2449
  %3667 = fmul fast float %3666, %3653
  %3668 = fmul fast float %3643, %2449
  %3669 = fmul fast float %3668, %3659
  %3670 = fmul fast float %3644, %2449
  %3671 = fmul fast float %3670, %3665
  %3672 = call float @dx.op.binary.f32(i32 36, float %2427, float %3646)  ; FMin(a,b)
  %3673 = fmul fast float %3672, %3648
  %3674 = fsub fast float 1.000000e+00, %3673
  %3675 = bitcast float %3674 to i32
  %3676 = sub nsw i32 2129859010, %3675
  %3677 = bitcast i32 %3676 to float
  %3678 = call float @dx.op.binary.f32(i32 36, float %2428, float %3646)  ; FMin(a,b)
  %3679 = fmul fast float %3678, %3648
  %3680 = fsub fast float 1.000000e+00, %3679
  %3681 = bitcast float %3680 to i32
  %3682 = sub nsw i32 2129859010, %3681
  %3683 = bitcast i32 %3682 to float
  %3684 = call float @dx.op.binary.f32(i32 36, float %2438, float %3646)  ; FMin(a,b)
  %3685 = fmul fast float %3684, %3648
  %3686 = fsub fast float 1.000000e+00, %3685
  %3687 = bitcast float %3686 to i32
  %3688 = sub nsw i32 2129859010, %3687
  %3689 = bitcast i32 %3688 to float
  %3690 = fmul fast float %3639, %2449
  %3691 = fmul fast float %3690, %3677
  %3692 = fmul fast float %3640, %2449
  %3693 = fmul fast float %3692, %3683
  %3694 = fmul fast float %3641, %2449
  %3695 = fmul fast float %3694, %3689
  %3696 = call float @dx.op.dot3.f32(i32 55, float %3667, float %3669, float %3671, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3697 = select i1 %176, float 0.000000e+00, float %3667
  %3698 = select i1 %176, float %3696, float %3669
  %3699 = select i1 %176, float 0.000000e+00, float %3671
  %3700 = call float @dx.op.dot3.f32(i32 55, float %3691, float %3693, float %3695, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3701 = select i1 %176, float 0.000000e+00, float %3691
  %3702 = select i1 %176, float %3700, float %3693
  %3703 = select i1 %176, float 0.000000e+00, float %3695
  %3704 = fmul fast float %2440, 9.843750e-01
  %3705 = fmul fast float %2436, 9.843750e-01
  %3706 = fadd fast float %3704, 7.812500e-03
  %3707 = fadd fast float %3705, 7.812500e-03
  %3708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %27, float %3706, float %3707, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3709 = extractvalue %dx.types.ResRet.f32 %3708, 2
  %3710 = extractvalue %dx.types.ResRet.f32 %3708, 3
  %3711 = fmul fast float %3709, %2427
  %3712 = fmul fast float %3709, %2428
  %3713 = fmul fast float %3709, %2438
  %3714 = fadd fast float %3711, %3710
  %3715 = fadd fast float %3712, %3710
  %3716 = fadd fast float %3713, %3710
  %3717 = fcmp fast ogt float %2095, 0.000000e+00
  br i1 %3717, label %3718, label %3744

; <label>:3718                                    ; preds = %3638
  %3719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %27, float %2095, float %2440, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3720 = extractvalue %dx.types.ResRet.f32 %3719, 0
  %3721 = extractvalue %dx.types.ResRet.f32 %3719, 1
  %3722 = extractvalue %dx.types.ResRet.f32 %3719, 2
  %3723 = fadd fast float %3720, -5.000000e-01
  %3724 = fadd fast float %3721, -5.000000e-01
  %3725 = fadd fast float %3722, -5.000000e-01
  %3726 = fsub fast float 1.000000e+00, %2427
  %3727 = fsub fast float 1.000000e+00, %2428
  %3728 = fsub fast float 1.000000e+00, %2438
  %3729 = fmul fast float %2427, 4.000000e+00
  %3730 = fmul fast float %3729, %3726
  %3731 = fmul fast float %3730, %3723
  %3732 = fmul fast float %2428, 4.000000e+00
  %3733 = fmul fast float %3732, %3727
  %3734 = fmul fast float %3733, %3724
  %3735 = fmul fast float %2438, 4.000000e+00
  %3736 = fmul fast float %3735, %3728
  %3737 = fmul fast float %3736, %3725
  %3738 = fadd fast float %3731, %3714
  %3739 = fadd fast float %3734, %3715
  %3740 = fadd fast float %3737, %3716
  %3741 = call float @dx.op.unary.f32(i32 7, float %3738)  ; Saturate(value)
  %3742 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  %3743 = call float @dx.op.unary.f32(i32 7, float %3740)  ; Saturate(value)
  br label %3744

; <label>:3744                                    ; preds = %3718, %3638
  %3745 = phi float [ %3741, %3718 ], [ %3714, %3638 ]
  %3746 = phi float [ %3742, %3718 ], [ %3715, %3638 ]
  %3747 = phi float [ %3743, %3718 ], [ %3716, %3638 ]
  %3748 = call float @dx.op.binary.f32(i32 35, float %3746, float %3747)  ; FMax(a,b)
  %3749 = call float @dx.op.binary.f32(i32 35, float %3745, float %3748)  ; FMax(a,b)
  %3750 = fsub fast float 1.000000e+00, %3749
  %3751 = fmul fast float %3750, %3697
  %3752 = fmul fast float %3750, %3698
  %3753 = fmul fast float %3750, %3699
  %3754 = call float @dx.op.dot3.f32(i32 55, float %2430, float %2431, float %2432, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3755 = fcmp fast ogt float %3754, 0x3E7FF19E20000000
  %3756 = fdiv fast float 1.000000e+00, %3754
  %3757 = select i1 %3755, float %3756, float 0.000000e+00
  %3758 = fmul fast float %3757, %2430
  %3759 = fmul fast float %3757, %2431
  %3760 = fmul fast float %3757, %2432
  %3761 = fadd fast float %3758, -1.000000e+00
  %3762 = fadd fast float %3759, -1.000000e+00
  %3763 = fadd fast float %3760, -1.000000e+00
  %3764 = fmul fast float %3761, 5.000000e-01
  %3765 = fmul fast float %3762, 5.000000e-01
  %3766 = fmul fast float %3763, 5.000000e-01
  %3767 = fadd fast float %3764, 1.000000e+00
  %3768 = fadd fast float %3765, 1.000000e+00
  %3769 = fadd fast float %3766, 1.000000e+00
  %3770 = fmul fast float %3745, %3701
  %3771 = fmul fast float %3746, %3702
  %3772 = fmul fast float %3747, %3703
  %3773 = fsub fast float 1.000000e+00, %2440
  %3774 = bitcast float %3773 to i32
  %3775 = sitofp i32 %3774 to float
  %3776 = fmul fast float %3775, 5.000000e+00
  %3777 = fadd fast float %3776, 0xC1EFBF8940000000
  %3778 = fptosi float %3777 to i32
  %3779 = bitcast i32 %3778 to float
  %3780 = fmul fast float %3779, %2094
  %3781 = fmul fast float %3697, %3780
  %3782 = fmul fast float %3781, %3750
  %3783 = fmul fast float %3782, %3767
  %3784 = fmul fast float %3698, %3780
  %3785 = fmul fast float %3784, %3750
  %3786 = fmul fast float %3785, %3768
  %3787 = fmul fast float %3699, %3780
  %3788 = fmul fast float %3787, %3750
  %3789 = fmul fast float %3788, %3769
  %3790 = fmul fast float %3751, %2115
  %3791 = fmul fast float %3752, %2115
  %3792 = fmul fast float %3753, %2115
  %3793 = fadd fast float %3770, %2096
  %3794 = fadd fast float %3793, %3783
  %3795 = fmul fast float %3794, %2115
  %3796 = fadd fast float %3771, %2097
  %3797 = fadd fast float %3796, %3786
  %3798 = fmul fast float %3797, %2115
  %3799 = fadd fast float %3772, %2098
  %3800 = fadd fast float %3799, %3789
  %3801 = fmul fast float %3800, %2115
  %3802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3803 = extractvalue %dx.types.CBufRet.f32 %3802, 3
  %3804 = fcmp fast oeq float %3803, 0.000000e+00
  br i1 %3804, label %4033, label %3805

; <label>:3805                                    ; preds = %3744
  %3806 = extractvalue %dx.types.CBufRet.f32 %3802, 0
  %3807 = extractvalue %dx.types.CBufRet.f32 %3802, 1
  %3808 = extractvalue %dx.types.CBufRet.f32 %3802, 2
  %3809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3810 = extractvalue %dx.types.CBufRet.f32 %3809, 0
  %3811 = extractvalue %dx.types.CBufRet.f32 %3809, 1
  %3812 = extractvalue %dx.types.CBufRet.f32 %3809, 2
  %3813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3814 = extractvalue %dx.types.CBufRet.f32 %3813, 0
  %3815 = extractvalue %dx.types.CBufRet.f32 %3813, 1
  %3816 = call float @dx.op.dot3.f32(i32 55, float %3810, float %3811, float %3812, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3817 = select i1 %176, float %3814, float %3810
  %3818 = select i1 %176, float %3816, float %3811
  %3819 = select i1 %176, float %3815, float %3812
  %3820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3821 = extractvalue %dx.types.CBufRet.f32 %3820, 1
  %3822 = fcmp fast une float %3821, 0.000000e+00
  br i1 %3822, label %3823, label %3840

; <label>:3823                                    ; preds = %3805
  %3824 = fptoui float %59 to i32
  %3825 = fptoui float %60 to i32
  %3826 = lshr i32 %3824, 4
  %3827 = lshr i32 %3825, 4
  %3828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3829 = extractvalue %dx.types.CBufRet.f32 %3828, 0
  %3830 = fptoui float %3829 to i32
  %3831 = add i32 %3830, 15
  %3832 = lshr i32 %3831, 4
  %3833 = mul i32 %3832, %3827
  %3834 = add i32 %3833, %3826
  %3835 = shl i32 %3834, 3
  %3836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3835, i32 undef)  ; BufferLoad(srv,index,wot)
  %3837 = extractvalue %dx.types.ResRet.i32 %3836, 0
  %3838 = and i32 %3837, -268435456
  %3839 = icmp eq i32 %3838, -1342177280
  br i1 %3839, label %3850, label %3840

; <label>:3840                                    ; preds = %3823, %3805
  %3841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3842 = extractvalue %dx.types.CBufRet.f32 %3841, 2
  %3843 = extractvalue %dx.types.CBufRet.f32 %3841, 3
  %3844 = fmul fast float %3842, %59
  %3845 = fmul fast float %3843, %60
  %3846 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %28, float %3844, float %3845, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3847 = extractvalue %dx.types.ResRet.f32 %3846, 0
  %3848 = extractvalue %dx.types.ResRet.f32 %3846, 1
  %3849 = extractvalue %dx.types.ResRet.f32 %3846, 2
  br label %3850

; <label>:3850                                    ; preds = %3840, %3823
  %3851 = phi float [ %3847, %3840 ], [ 0.000000e+00, %3823 ]
  %3852 = phi float [ %3848, %3840 ], [ 0.000000e+00, %3823 ]
  %3853 = phi float [ %3849, %3840 ], [ 0.000000e+00, %3823 ]
  %3854 = call float @dx.op.binary.f32(i32 36, float %3852, float %3853)  ; FMin(a,b)
  %3855 = call float @dx.op.binary.f32(i32 36, float %3851, float %3854)  ; FMin(a,b)
  %3856 = fcmp fast ogt float %3855, 0.000000e+00
  br i1 %3856, label %3857, label %4033, !dx.controlflow.hints !75

; <label>:3857                                    ; preds = %3850
  %3858 = fmul fast float %3851, %3817
  %3859 = fmul fast float %3852, %3818
  %3860 = fmul fast float %3853, %3819
  %3861 = fsub fast float %3806, %2426
  %3862 = fsub fast float %3807, %2425
  %3863 = fsub fast float %3808, %2424
  %3864 = call float @dx.op.dot3.f32(i32 55, float %3861, float %3862, float %3863, float %3861, float %3862, float %3863)  ; Dot3(ax,ay,az,bx,by,bz)
  %3865 = call float @dx.op.unary.f32(i32 25, float %3864)  ; Rsqrt(value)
  %3866 = fmul fast float %3865, %3861
  %3867 = fmul fast float %3865, %3862
  %3868 = fmul fast float %3865, %3863
  %3869 = call float @dx.op.dot3.f32(i32 55, float %3806, float %3807, float %3808, float %2433, float %2434, float %2435)  ; Dot3(ax,ay,az,bx,by,bz)
  %3870 = call float @dx.op.dot3.f32(i32 55, float %2423, float %2422, float %2421, float %3866, float %3867, float %3868)  ; Dot3(ax,ay,az,bx,by,bz)
  %3871 = call float @dx.op.unary.f32(i32 7, float %3869)  ; Saturate(value)
  %3872 = bitcast i32 %2452 to float
  %3873 = fmul fast float %3871, %3871
  %3874 = fmul fast float %3873, %3872
  %3875 = call float @dx.op.unary.f32(i32 7, float %3874)  ; Saturate(value)
  %3876 = fmul fast float %3875, %3871
  %3877 = call float @dx.op.dot3.f32(i32 55, float %2433, float %2434, float %2435, float %3866, float %3867, float %3868)  ; Dot3(ax,ay,az,bx,by,bz)
  %3878 = fmul fast float %3877, %3877
  %3879 = call float @dx.op.unary.f32(i32 6, float %3869)  ; FAbs(value)
  %3880 = fsub fast float 1.000000e+00, %2436
  %3881 = call float @dx.op.binary.f32(i32 35, float %3880, float 0x3F847AE140000000)  ; FMax(a,b)
  %3882 = fmul fast float %3881, %3881
  %3883 = fmul fast float %3882, %3882
  %3884 = fsub fast float 1.000000e+00, %3883
  %3885 = fmul fast float %2440, %2440
  %3886 = fmul fast float %3885, %3884
  %3887 = fadd fast float %3886, %3883
  %3888 = bitcast float %3887 to i32
  %3889 = ashr i32 %3888, 1
  %3890 = add nsw i32 %3889, 532487669
  %3891 = bitcast i32 %3890 to float
  %3892 = fadd fast float %3891, %2440
  %3893 = fmul fast float %3883, %3878
  %3894 = fsub fast float 1.000000e+00, %3878
  %3895 = fadd fast float %3894, %3893
  %3896 = fmul fast float %3879, %3879
  %3897 = fmul fast float %3896, %3884
  %3898 = fadd fast float %3897, %3883
  %3899 = bitcast float %3898 to i32
  %3900 = ashr i32 %3899, 1
  %3901 = add nsw i32 %3900, 532487669
  %3902 = bitcast i32 %3901 to float
  %3903 = fadd fast float %3902, %3879
  %3904 = fmul fast float %3895, %3895
  %3905 = fmul fast float %3904, %3892
  %3906 = fmul fast float %3905, %3903
  %3907 = fdiv fast float 0x3FF0A00000000000, %3906
  %3908 = fmul fast float %3907, %3883
  %3909 = call float @dx.op.unary.f32(i32 6, float %3870)  ; FAbs(value)
  %3910 = fsub fast float 1.000000e+00, %3909
  %3911 = bitcast float %3910 to i32
  %3912 = sitofp i32 %3911 to float
  %3913 = fmul fast float %3912, 5.000000e+00
  %3914 = fadd fast float %3913, 0xC1EFBF8940000000
  %3915 = fptosi float %3914 to i32
  %3916 = bitcast i32 %3915 to float
  %3917 = fsub fast float 1.000000e+00, %2427
  %3918 = fsub fast float 1.000000e+00, %2428
  %3919 = fsub fast float 1.000000e+00, %2438
  %3920 = fmul fast float %3916, %3917
  %3921 = fmul fast float %3916, %3918
  %3922 = fmul fast float %3916, %3919
  %3923 = fadd fast float %3920, %2427
  %3924 = fadd fast float %3921, %2428
  %3925 = fadd fast float %3922, %2438
  br i1 %3717, label %3926, label %3949

; <label>:3926                                    ; preds = %3857
  %3927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %27, float %2095, float %3909, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3928 = extractvalue %dx.types.ResRet.f32 %3927, 0
  %3929 = extractvalue %dx.types.ResRet.f32 %3927, 1
  %3930 = extractvalue %dx.types.ResRet.f32 %3927, 2
  %3931 = fadd fast float %3928, -5.000000e-01
  %3932 = fadd fast float %3929, -5.000000e-01
  %3933 = fadd fast float %3930, -5.000000e-01
  %3934 = fmul fast float %2427, 4.000000e+00
  %3935 = fmul fast float %3934, %3917
  %3936 = fmul fast float %3935, %3931
  %3937 = fmul fast float %2428, 4.000000e+00
  %3938 = fmul fast float %3937, %3918
  %3939 = fmul fast float %3938, %3932
  %3940 = fmul fast float %2438, 4.000000e+00
  %3941 = fmul fast float %3940, %3919
  %3942 = fmul fast float %3941, %3933
  %3943 = fadd fast float %3936, %3923
  %3944 = fadd fast float %3939, %3924
  %3945 = fadd fast float %3942, %3925
  %3946 = call float @dx.op.unary.f32(i32 7, float %3943)  ; Saturate(value)
  %3947 = call float @dx.op.unary.f32(i32 7, float %3944)  ; Saturate(value)
  %3948 = call float @dx.op.unary.f32(i32 7, float %3945)  ; Saturate(value)
  br label %3949

; <label>:3949                                    ; preds = %3926, %3857
  %3950 = phi float [ %3946, %3926 ], [ %3923, %3857 ]
  %3951 = phi float [ %3947, %3926 ], [ %3924, %3857 ]
  %3952 = phi float [ %3948, %3926 ], [ %3925, %3857 ]
  %3953 = fmul fast float %3869, 9.843750e-01
  %3954 = fadd fast float %3953, 7.812500e-03
  %3955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %27, float %3954, float %3707, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3956 = extractvalue %dx.types.ResRet.f32 %3955, 2
  %3957 = extractvalue %dx.types.ResRet.f32 %3955, 3
  %3958 = fmul fast float %3956, %2427
  %3959 = fmul fast float %3956, %2428
  %3960 = fmul fast float %3956, %2438
  %3961 = fadd fast float %3958, %3957
  %3962 = fadd fast float %3959, %3957
  %3963 = fadd fast float %3960, %3957
  br i1 %3717, label %3964, label %3987

; <label>:3964                                    ; preds = %3949
  %3965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %27, float %2095, float %3869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3966 = extractvalue %dx.types.ResRet.f32 %3965, 0
  %3967 = extractvalue %dx.types.ResRet.f32 %3965, 1
  %3968 = extractvalue %dx.types.ResRet.f32 %3965, 2
  %3969 = fadd fast float %3966, -5.000000e-01
  %3970 = fadd fast float %3967, -5.000000e-01
  %3971 = fadd fast float %3968, -5.000000e-01
  %3972 = fmul fast float %2427, 4.000000e+00
  %3973 = fmul fast float %3972, %3917
  %3974 = fmul fast float %3973, %3969
  %3975 = fmul fast float %2428, 4.000000e+00
  %3976 = fmul fast float %3975, %3918
  %3977 = fmul fast float %3976, %3970
  %3978 = fmul fast float %2438, 4.000000e+00
  %3979 = fmul fast float %3978, %3919
  %3980 = fmul fast float %3979, %3971
  %3981 = fadd fast float %3974, %3961
  %3982 = fadd fast float %3977, %3962
  %3983 = fadd fast float %3980, %3963
  %3984 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  %3985 = call float @dx.op.unary.f32(i32 7, float %3982)  ; Saturate(value)
  %3986 = call float @dx.op.unary.f32(i32 7, float %3983)  ; Saturate(value)
  br label %3987

; <label>:3987                                    ; preds = %3964, %3949
  %3988 = phi float [ %3984, %3964 ], [ %3961, %3949 ]
  %3989 = phi float [ %3985, %3964 ], [ %3962, %3949 ]
  %3990 = phi float [ %3986, %3964 ], [ %3963, %3949 ]
  %3991 = call float @dx.op.binary.f32(i32 35, float %3989, float %3990)  ; FMax(a,b)
  %3992 = call float @dx.op.binary.f32(i32 35, float %3988, float %3991)  ; FMax(a,b)
  %3993 = fsub fast float 1.000000e+00, %3992
  %3994 = fmul fast float %3950, %3908
  %3995 = fmul fast float %3951, %3908
  %3996 = fmul fast float %3952, %3908
  %3997 = fsub fast float 1.000000e+00, %3870
  %3998 = bitcast float %3997 to i32
  %3999 = sitofp i32 %3998 to float
  %4000 = fmul fast float %3999, 5.000000e+00
  %4001 = fadd fast float %4000, 0xC1EFBF8940000000
  %4002 = fptosi float %4001 to i32
  %4003 = bitcast i32 %4002 to float
  %4004 = fmul fast float %4003, %2094
  %4005 = fmul fast float %3993, %4004
  %4006 = fmul fast float %4005, %3767
  %4007 = fmul fast float %4005, %3768
  %4008 = fmul fast float %4005, %3769
  %4009 = fadd fast float %4006, %3994
  %4010 = fadd fast float %4007, %3995
  %4011 = fadd fast float %4008, %3996
  %4012 = fmul fast float %3876, %3858
  %4013 = fmul fast float %4012, %3993
  %4014 = fmul fast float %3876, %3859
  %4015 = fmul fast float %4014, %3993
  %4016 = fmul fast float %3876, %3860
  %4017 = fmul fast float %4016, %3993
  %4018 = fmul fast float %4012, %4009
  %4019 = fmul fast float %4014, %4010
  %4020 = fmul fast float %4016, %4011
  %4021 = fadd fast float %4013, %3751
  %4022 = fmul fast float %4021, %2115
  %4023 = fadd fast float %4015, %3752
  %4024 = fmul fast float %4023, %2115
  %4025 = fadd fast float %4017, %3753
  %4026 = fmul fast float %4025, %2115
  %4027 = fadd fast float %4018, %3794
  %4028 = fmul fast float %4027, %2115
  %4029 = fadd fast float %4019, %3797
  %4030 = fmul fast float %4029, %2115
  %4031 = fadd fast float %4020, %3800
  %4032 = fmul fast float %4031, %2115
  br label %4033

; <label>:4033                                    ; preds = %3987, %3850, %3744
  %4034 = phi float [ %3795, %3744 ], [ %3795, %3850 ], [ %4028, %3987 ]
  %4035 = phi float [ %3798, %3744 ], [ %3798, %3850 ], [ %4030, %3987 ]
  %4036 = phi float [ %3801, %3744 ], [ %3801, %3850 ], [ %4032, %3987 ]
  %4037 = phi float [ %3790, %3744 ], [ %3790, %3850 ], [ %4022, %3987 ]
  %4038 = phi float [ %3791, %3744 ], [ %3791, %3850 ], [ %4024, %3987 ]
  %4039 = phi float [ %3792, %3744 ], [ %3792, %3850 ], [ %4026, %3987 ]
  %4040 = call float @dx.op.unary.f32(i32 24, float %2430)  ; Sqrt(value)
  %4041 = call float @dx.op.unary.f32(i32 24, float %2431)  ; Sqrt(value)
  %4042 = call float @dx.op.unary.f32(i32 24, float %2432)  ; Sqrt(value)
  %4043 = fmul fast float %4040, %4037
  %4044 = fmul fast float %4041, %4038
  %4045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4046 = extractvalue %dx.types.CBufRet.f32 %4045, 0
  br i1 %176, label %4047, label %4067

; <label>:4047                                    ; preds = %4033
  %4048 = fadd fast float %4039, %2092
  %4049 = fmul fast float %4048, %2093
  %4050 = fsub fast float 1.000000e+00, %2093
  %4051 = call float @dx.op.unary.f32(i32 7, float %4050)  ; Saturate(value)
  %4052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4053 = extractvalue %dx.types.CBufRet.f32 %4052, 3
  %4054 = fmul fast float %4053, %4051
  %4055 = fadd fast float %4054, %4049
  %4056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4057 = extractvalue %dx.types.CBufRet.f32 %4056, 0
  %4058 = fmul fast float %4057, %3773
  %4059 = fsub fast float %4055, %4058
  %4060 = fadd fast float %4044, %4043
  %4061 = fmul fast float %4046, %4060
  %4062 = extractvalue %dx.types.CBufRet.f32 %4052, 1
  %4063 = fsub fast float %4059, %4062
  %4064 = extractvalue %dx.types.CBufRet.f32 %4052, 2
  %4065 = fmul fast float %4063, %4064
  %4066 = call float @dx.op.unary.f32(i32 7, float %4065)  ; Saturate(value)
  br label %4083

; <label>:4067                                    ; preds = %4033
  %4068 = fmul fast float %4042, %4039
  %4069 = fmul fast float %4046, %4043
  %4070 = fmul fast float %4046, %4044
  %4071 = fmul fast float %4068, %4046
  %4072 = add i32 %32, 196
  %4073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4072, i32 undef)  ; BufferLoad(srv,index,wot)
  %4074 = extractvalue %dx.types.ResRet.i32 %4073, 0
  %4075 = and i32 %4074, 32
  %4076 = icmp eq i32 %4075, 0
  br i1 %4076, label %4083, label %4077

; <label>:4077                                    ; preds = %4067
  %4078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4079 = extractvalue %dx.types.CBufRet.f32 %4078, 0
  %4080 = fmul fast float %4079, 0x3FE99999A0000000
  %4081 = fadd fast float %4079, %4069
  %4082 = fadd fast float %4080, %4071
  br label %4083

; <label>:4083                                    ; preds = %4077, %4067, %4047
  %4084 = phi float [ %4061, %4047 ], [ %4081, %4077 ], [ %4069, %4067 ]
  %4085 = phi float [ %4066, %4047 ], [ %4070, %4077 ], [ %4070, %4067 ]
  %4086 = phi float [ 1.000000e+00, %4047 ], [ %4082, %4077 ], [ %4071, %4067 ]
  %4087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4088 = extractvalue %dx.types.CBufRet.f32 %4087, 0
  %4089 = fmul fast float %4088, %4035
  %4090 = fmul fast float %4088, %4036
  %4091 = fadd fast float %4035, %4034
  %4092 = select i1 %176, float %4091, float %4034
  %4093 = fmul float %4092, %4088
  %4094 = select i1 %176, float 0.000000e+00, float %4089
  %4095 = select i1 %176, float 0.000000e+00, float %4090
  %4096 = fmul fast float %4084, %4040
  %4097 = fmul fast float %4085, %4041
  %4098 = fmul fast float %4086, %4042
  %4099 = fadd fast float %4093, %4096
  %4100 = fadd fast float %4094, %4097
  %4101 = fadd fast float %4095, %4098
  %4102 = select i1 %176, float %4085, float %4100
  %4103 = select i1 %176, float %4086, float %4101
  %4104 = call float @dx.op.binary.f32(i32 36, float %4099, float 3.225500e+04)  ; FMin(a,b)
  %4105 = call float @dx.op.binary.f32(i32 36, float %4102, float 3.225500e+04)  ; FMin(a,b)
  %4106 = call float @dx.op.binary.f32(i32 36, float %4103, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4104)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4105)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4106)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

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
!dx.viewIdState = !{!44}
!dx.entryPoints = !{!45}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !36, !39}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !17}
!17 = !{i32 0, i32 5}
!18 = !{i32 10, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 23, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 24, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 25, i32 1, i32 7, i32 0, !7}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 66, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!36 = !{!37, !38}
!37 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!38 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!39 = !{!40, !41, !42, !43}
!40 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!41 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!42 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!43 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!44 = !{[32 x i32] [i32 30, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!45 = !{void ()* @ps_main, !"ps_main", !46, !4, !67}
!46 = !{!47, !65, null}
!47 = !{!48, !51, !53, !55, !57, !58, !59, !61, !63, !64}
!48 = !{i32 0, !"SV_Position", i8 9, i8 3, !49, i8 4, i32 1, i8 4, i32 0, i8 0, !50}
!49 = !{i32 0}
!50 = !{i32 3, i32 11}
!51 = !{i32 1, !"COLOR", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 1, i8 0, !52}
!52 = !{i32 3, i32 2}
!53 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 2, i8 0, !54}
!54 = !{i32 3, i32 15}
!55 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !49, i8 2, i32 1, i8 3, i32 3, i8 0, !56}
!56 = !{i32 3, i32 7}
!57 = !{i32 4, !"NORMAL", i8 9, i8 0, !49, i8 2, i32 1, i8 3, i32 4, i8 0, !56}
!58 = !{i32 5, !"TANGENT", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 5, i8 0, !54}
!59 = !{i32 6, !"NORMAL_TRANSFORM", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 6, i8 0, !54}
!60 = !{i32 1}
!61 = !{i32 7, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !49, i8 1, i32 1, i8 1, i32 7, i8 0, !62}
!62 = !{i32 3, i32 1}
!63 = !{i32 8, !"TRANSIENT_INDEX", i8 5, i8 0, !49, i8 1, i32 1, i8 1, i32 7, i8 1, !62}
!64 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !49, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!65 = !{!66}
!66 = !{i32 0, !"SV_Target", i8 9, i8 16, !49, i8 0, i32 1, i8 4, i32 0, i8 0, !54}
!67 = !{i32 0, i64 24}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}

